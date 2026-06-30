unit uConsultaRNCDGII;

interface

uses
  SysUtils, Classes, ADODB;

function NormalizarRNC(const ARnc: string): string;
function ConsultarRNCClienteDGII(AConnection: TADOConnection;
  const ARncCapturado, ARncEmisorCertificado: string; AEmpCodigo: Integer;
  var ARncNormalizado, ANombre, AMensaje: string): Boolean;
function ConsultarRNCClienteDGIIEx(AConnection: TADOConnection;
  const ARncCapturado, ARncEmisorCertificado: string; AEmpCodigo: Integer;
  AGuardarLocal: Boolean; var ARncNormalizado, ANombre,
  AMensaje: string): Boolean;

implementation

uses
  ComObj;

function NormalizarRNC(const ARnc: string): string;
var
  I: Integer;
begin
  Result := '';
  for I := 1 to Length(ARnc) do
    if ARnc[I] in ['0'..'9'] then
      Result := Result + ARnc[I];
end;

function UnescapeJsonString(const AValue: string): string;
var
  I: Integer;
  C: Char;
begin
  Result := '';
  I := 1;
  while I <= Length(AValue) do
  begin
    C := AValue[I];
    if (C = '\') and (I < Length(AValue)) then
    begin
      Inc(I);
      case AValue[I] of
        '"': Result := Result + '"';
        '\': Result := Result + '\';
        '/': Result := Result + '/';
        'b': Result := Result + #8;
        'f': Result := Result + #12;
        'n': Result := Result + #10;
        'r': Result := Result + #13;
        't': Result := Result + #9;
      else
        Result := Result + AValue[I];
      end;
    end
    else
      Result := Result + C;
    Inc(I);
  end;
end;

function JsonFindValueStart(const AJson, AKey: string; var APos: Integer): Boolean;
var
  P: Integer;
begin
  Result := False;
  P := Pos('"' + AKey + '"', AJson);
  if P = 0 then
    Exit;

  P := P + Length(AKey) + 2;
  while (P <= Length(AJson)) and (AJson[P] <> ':') do
    Inc(P);
  if P > Length(AJson) then
    Exit;

  Inc(P);
  while (P <= Length(AJson)) and (AJson[P] in [' ', #9, #10, #13]) do
    Inc(P);

  APos := P;
  Result := P <= Length(AJson);
end;

function JsonGetString(const AJson, AKey: string): string;
var
  P, Start: Integer;
  Escaped: Boolean;
begin
  Result := '';
  if not JsonFindValueStart(AJson, AKey, P) then
    Exit;
  if AJson[P] <> '"' then
    Exit;

  Inc(P);
  Start := P;
  Escaped := False;
  while P <= Length(AJson) do
  begin
    if (AJson[P] = '"') and not Escaped then
      Break;
    Escaped := (AJson[P] = '\') and not Escaped;
    if AJson[P] <> '\' then
      Escaped := False;
    Inc(P);
  end;

  if P <= Length(AJson) then
    Result := UnescapeJsonString(Copy(AJson, Start, P - Start));
end;

function JsonGetBoolean(const AJson, AKey: string): Boolean;
var
  P: Integer;
  V: string;
begin
  Result := False;
  if not JsonFindValueStart(AJson, AKey, P) then
    Exit;

  V := LowerCase(Copy(AJson, P, 5));
  Result := V = 'true';
end;

procedure LogConsultaDGII(const ARnc, AJson: string);
var
  F: TextFile;
  LogName: string;
begin
  LogName := ExtractFilePath(ParamStr(0)) + 'ConsultaRNC_DGII.log';
  AssignFile(F, LogName);
  if FileExists(LogName) then
    Append(F)
  else
    Rewrite(F);
  try
    Writeln(F, FormatDateTime('yyyy-mm-dd hh:nn:ss', Now) + ' RNC=' + ARnc);
    Writeln(F, AJson);
    Writeln(F, '---');
  finally
    CloseFile(F);
  end;
end;

function BuscarRNCLocal(AConnection: TADOConnection; const ARnc: string;
  var ANombre: string): Boolean;
var
  Q: TADOQuery;
begin
  Result := False;
  ANombre := '';
  Q := TADOQuery.Create(nil);
  try
    Q.Connection := AConnection;
    Q.SQL.Text :=
      'select top 1 razon_social from rnc where rnc_cedula = :rnc';
    Q.Parameters.ParamByName('rnc').Value := ARnc;
    Q.Open;
    if not Q.IsEmpty then
    begin
      ANombre := Trim(Q.FieldByName('razon_social').AsString);
      Result := ANombre <> '';
    end;
  finally
    Q.Free;
  end;
end;

procedure GuardarRNCLocal(AConnection: TADOConnection; const ARnc, ANombre: string);
var
  Q: TADOQuery;
begin
  Q := TADOQuery.Create(nil);
  try
    Q.Connection := AConnection;
    Q.SQL.Text := 'select top 1 rnc_cedula from rnc where rnc_cedula = :rnc';
    Q.Parameters.ParamByName('rnc').Value := ARnc;
    Q.Open;
    if not Q.IsEmpty then
      Exit;
    Q.Close;

    Q.SQL.Text :=
      'insert into rnc (rnc_cedula, razon_social, nombre_comercial) ' +
      'values (:rnc, :razon, :nombre)';
    Q.Parameters.ParamByName('rnc').Value := ARnc;
    Q.Parameters.ParamByName('razon').Value := ANombre;
    Q.Parameters.ParamByName('nombre').Value := ANombre;
    Q.ExecSQL;
  finally
    Q.Free;
  end;
end;

function ConsultarRNCClienteDGII(AConnection: TADOConnection;
  const ARncCapturado, ARncEmisorCertificado: string; AEmpCodigo: Integer;
  var ARncNormalizado, ANombre, AMensaje: string): Boolean;
begin
  Result := ConsultarRNCClienteDGIIEx(AConnection, ARncCapturado,
    ARncEmisorCertificado, AEmpCodigo, True, ARncNormalizado, ANombre,
    AMensaje);
end;

function ConsultarRNCClienteDGIIEx(AConnection: TADOConnection;
  const ARncCapturado, ARncEmisorCertificado: string; AEmpCodigo: Integer;
  AGuardarLocal: Boolean; var ARncNormalizado, ANombre,
  AMensaje: string): Boolean;
var
  Servicio: OleVariant;
  ResJSON: string;
  Encontrado, Ok: Boolean;
begin
  Result := False;
  ARncNormalizado := NormalizarRNC(ARncCapturado);
  ANombre := '';
  AMensaje := '';

  if Length(ARncNormalizado) < 9 then
  begin
    AMensaje := 'RNC vacío o inválido';
    Exit;
  end;

  if BuscarRNCLocal(AConnection, ARncNormalizado, ANombre) then
  begin
    Result := True;
    Exit;
  end;

  try
    Servicio := CreateOleObject('FacturacionElectronicaDGII.FacturaElectronicaService');
    ResJSON := Servicio.ConsultarDirectorioPorRnc(
      ARncNormalizado,
      '',
      NormalizarRNC(ARncEmisorCertificado),
      '',
      '',
      '',
      IntToStr(AEmpCodigo));
    LogConsultaDGII(ARncNormalizado, ResJSON);

    Ok := JsonGetBoolean(ResJSON, 'ok');
    Encontrado := JsonGetBoolean(ResJSON, 'encontrado');
    ANombre := Trim(JsonGetString(ResJSON, 'nombre'));
    AMensaje := Trim(JsonGetString(ResJSON, 'message'));

    if (ANombre = '') and (AMensaje <> '') and
      (Ok or Encontrado or SameText(AMensaje, 'DGII')) then
      ANombre := AMensaje;

    if ANombre <> '' then
    begin
      if AGuardarLocal then
        GuardarRNCLocal(AConnection, ARncNormalizado, ANombre);
      Result := True;
    end;
  except
    on E: Exception do
      AMensaje := E.Message;
  end;
end;

end.
