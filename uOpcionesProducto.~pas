unit uOpcionesProducto;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Buttons, StdCtrls, ExtCtrls, DB, ADODB, DBTables;

type
  TfrmOpcionesProducto = class(TForm)
    ScrollBoxGuarniciones: TScrollBox;
    ScrollBoxTerminos: TScrollBox;
    btclose: TSpeedButton;
    btok: TSpeedButton;
    pnlGuarniciones: TPanel;
    pnlTerminos: TPanel;
    qryGuarniciones: TADOQuery;
    intgrfldGuarnicionesGuarnicionID: TIntegerField;
    strngfldGuarnicionesNombre: TStringField;
    qryTerminos: TADOQuery;
    qryTerminosTerminoID: TIntegerField;
    qryTerminosNombre: TStringField;
    lblProducto: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure pnlGuarnicionesClick(Sender: TObject);
    procedure pnlTerminosClick(Sender: TObject);
    procedure btcloseClick(Sender: TObject);
    procedure btokClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
  private
    TerminoNombreLegacy: string;
    SeleccionGuarnicionesCsv: string;
    TerminoIDInicial: Integer;
    procedure MostrarGuarniciones;
    procedure MostrarTerminos;
    procedure CargarGuarniciones;
    procedure CargarTerminos;
    procedure LimpiarScrollBox(AScroll: TScrollBox);
    procedure CrearOpcion(AParent: TScrollBox; AId: Integer; ATitulo: string;
      AX, AY: Integer; ATipo: string);
    procedure PanelOpcionClick(Sender: TObject);
    function ObtenerGuarnicionesSeleccionadas: string;
    function ObtenerTerminoSeleccionado: Integer;
    procedure ParseDatosDesdeCarga;
    procedure AplicarSeleccionGuarniciones(const IDsCsv: string);
    procedure AplicarSeleccionTermino(ID: Integer);
  public
    Acepto : integer;
    strnombreproducto: string;
    facturaid  : integer;
    productoid : integer;
    detalleid : integer;
    Registro: integer;
    { Desde BAR00 antes de ShowModal: }
    IncluirGuarnicion: Boolean;
    IncluirTermino: Boolean;
    { Contenido previo del detalle Factura_Items: }
    DatosGuarniciones: string;
    DatosTermino: string;
    procedure ConfigurarPorProducto;
    function GuarnicionesParaGuardar: string;
    function TerminoParaGuardar: string;

  end;

var
  frmOpcionesProducto: TfrmOpcionesProducto;

implementation

uses BAR04;

{$R *.dfm}

procedure TfrmOpcionesProducto.FormCreate(Sender: TObject);
begin
  pnlGuarniciones.Cursor := crHandPoint;
  pnlTerminos.Cursor := crHandPoint;
  IncluirGuarnicion := True;
  IncluirTermino := True;
  DatosGuarniciones := '';
  DatosTermino := '';
end;

procedure TfrmOpcionesProducto.MostrarGuarniciones;
begin
  if not IncluirGuarnicion then
    Exit;
  ScrollBoxGuarniciones.Visible := True;
  ScrollBoxTerminos.Visible := False;

  pnlGuarniciones.Color := clNavy;
  pnlGuarniciones.Font.Color := clWhite;
  pnlGuarniciones.Font.Style := [fsBold];
  pnlGuarniciones.BevelOuter := bvLowered;
  pnlGuarniciones.Cursor := crHandPoint;

  if pnlTerminos.Visible then
  begin
    pnlTerminos.Color := clBtnFace;
    pnlTerminos.Font.Color := clBlack;
    pnlTerminos.Font.Style := [];
    pnlTerminos.BevelOuter := bvRaised;
    pnlTerminos.Cursor := crHandPoint;
  end;
end;

procedure TfrmOpcionesProducto.MostrarTerminos;
begin
  if not IncluirTermino then
    Exit;
  ScrollBoxGuarniciones.Visible := False;
  ScrollBoxTerminos.Visible := True;

  pnlTerminos.Color := clNavy;
  pnlTerminos.Font.Color := clWhite;
  pnlTerminos.Font.Style := [fsBold];
  pnlTerminos.BevelOuter := bvLowered;
  pnlTerminos.Cursor := crHandPoint;

  if pnlGuarniciones.Visible then
  begin
    pnlGuarniciones.Color := clBtnFace;
    pnlGuarniciones.Font.Color := clBlack;
    pnlGuarniciones.Font.Style := [];
    pnlGuarniciones.BevelOuter := bvRaised;
    pnlGuarniciones.Cursor := crHandPoint;
  end;
end;

procedure TfrmOpcionesProducto.LimpiarScrollBox(AScroll: TScrollBox);
var
  i: Integer;
begin
  for i := AScroll.ControlCount - 1 downto 0 do
    AScroll.Controls[i].Free;
end;

procedure TfrmOpcionesProducto.CrearOpcion(AParent: TScrollBox; AId: Integer;
  ATitulo: string; AX, AY: Integer; ATipo: string);
var
  P: TPanel;
  L: TLabel;
begin
  P := TPanel.Create(Self);
  P.Parent := AParent;
  P.Width := 130;
  P.Height := 72;
  P.Left := AX;
  P.Top := AY;
  P.Caption := '';
  P.Tag := AId;
  P.Hint := ATipo;
  P.Color := clWhite;
  P.BevelOuter := bvRaised;
  P.Cursor := crHandPoint;
  P.ParentColor := False;
  P.ParentFont := False;
  P.Font.Name := 'Tahoma';
  P.Font.Size := 9;
  P.Font.Style := [fsBold];
  P.OnClick := PanelOpcionClick;

  L := TLabel.Create(P);
  L.Parent := P;
  L.Caption := ATitulo;
  L.AutoSize := False;
  L.Left := 5;
  L.Top := 6;
  L.Width := P.Width - 10;
  L.Height := P.Height - 12;
  L.Alignment := taCenter;
  L.Layout := tlCenter;
  L.WordWrap := True;
  L.Transparent := True;
  L.Cursor := crHandPoint;
  L.OnClick := PanelOpcionClick;
end;

procedure TfrmOpcionesProducto.PanelOpcionClick(Sender: TObject);
var
  P: TPanel;
  i: Integer;
begin
  if Sender is TLabel then
    P := TPanel(TLabel(Sender).Parent)
  else
    P := TPanel(Sender);

  if P.Hint = 'GUARNICION' then
  begin
    if P.Color = clMoneyGreen then
      P.Color := clWhite
    else
      P.Color := clMoneyGreen;
  end
  else if P.Hint = 'TERMINO' then
  begin
    for i := 0 to ScrollBoxTerminos.ControlCount - 1 do
      if ScrollBoxTerminos.Controls[i] is TPanel then
        TPanel(ScrollBoxTerminos.Controls[i]).Color := clWhite;

    P.Color := clYellow;
  end;
end;

procedure TfrmOpcionesProducto.ParseDatosDesdeCarga;
var
  p: Integer;
  gs, ts: string;
  ti: Integer;
  comb: string;
begin
  SeleccionGuarnicionesCsv := '';
  TerminoIDInicial := 0;
  TerminoNombreLegacy := '';

  comb := Trim(DatosTermino);

  { Columna dedicada guarniciones (IDs separados por coma) }
  if Trim(DatosGuarniciones) <> '' then
  begin
    SeleccionGuarnicionesCsv := Trim(DatosGuarniciones);
    if comb = '' then
      Exit;
    if TryStrToInt(comb, ti) then
      TerminoIDInicial := ti
    else
      TerminoNombreLegacy := comb;
    Exit;
  end;

  { Migración: antes todo iba en termino_coccion (ej. 1,2,3|5 o solo una parte) }
  if comb = '' then
    Exit;

  p := Pos('|', comb);
  if p > 0 then
  begin
    gs := Trim(Copy(comb, 1, p - 1));
    ts := Trim(Copy(comb, p + 1, MaxInt));
    SeleccionGuarnicionesCsv := gs;
    if ts <> '' then
    begin
      if not TryStrToInt(ts, ti) then
        TerminoNombreLegacy := ts
      else
        TerminoIDInicial := ti;
    end;
    Exit;
  end;

  if Pos(',', comb) > 0 then
  begin
    SeleccionGuarnicionesCsv := comb;
    Exit;
  end;

  if TryStrToInt(comb, ti) then
    TerminoIDInicial := ti
  else
    TerminoNombreLegacy := comb;
end;

procedure TfrmOpcionesProducto.AplicarSeleccionGuarniciones(const IDsCsv: string);
var
  s, part: string;
  p, id, j: Integer;
begin
  s := Trim(IDsCsv);
  if s = '' then
    Exit;
  s := s + ',';
  while s <> '' do
  begin
    p := Pos(',', s);
    if p = 0 then
      Break;
    part := Trim(Copy(s, 1, p - 1));
    Delete(s, 1, p);
    if part = '' then
      Continue;
    if not TryStrToInt(part, id) then
      Continue;
    for j := 0 to ScrollBoxGuarniciones.ControlCount - 1 do
      if ScrollBoxGuarniciones.Controls[j] is TPanel then
        if TPanel(ScrollBoxGuarniciones.Controls[j]).Tag = id then
          TPanel(ScrollBoxGuarniciones.Controls[j]).Color := clMoneyGreen;
  end;
end;

procedure TfrmOpcionesProducto.AplicarSeleccionTermino(ID: Integer);
var
  i, j, k: Integer;
  P: TPanel;
  L: TLabel;
  cap: string;
begin
  if ID > 0 then
  begin
    for i := 0 to ScrollBoxTerminos.ControlCount - 1 do
      if ScrollBoxTerminos.Controls[i] is TPanel then
      begin
        P := TPanel(ScrollBoxTerminos.Controls[i]);
        if P.Tag = ID then
        begin
          for k := 0 to ScrollBoxTerminos.ControlCount - 1 do
            if ScrollBoxTerminos.Controls[k] is TPanel then
              TPanel(ScrollBoxTerminos.Controls[k]).Color := clWhite;
          P.Color := clYellow;
          Exit;
        end;
      end;
    Exit;
  end;
  if TerminoNombreLegacy = '' then
    Exit;
  cap := UpperCase(Trim(TerminoNombreLegacy));
  for i := 0 to ScrollBoxTerminos.ControlCount - 1 do
    if ScrollBoxTerminos.Controls[i] is TPanel then
    begin
      P := TPanel(ScrollBoxTerminos.Controls[i]);
      for j := 0 to P.ControlCount - 1 do
        if P.Controls[j] is TLabel then
        begin
          L := TLabel(P.Controls[j]);
          if UpperCase(Trim(L.Caption)) = cap then
          begin
            for k := 0 to ScrollBoxTerminos.ControlCount - 1 do
              if ScrollBoxTerminos.Controls[k] is TPanel then
                TPanel(ScrollBoxTerminos.Controls[k]).Color := clWhite;
            P.Color := clYellow;
            Exit;
          end;
        end;
    end;
end;

procedure TfrmOpcionesProducto.ConfigurarPorProducto;
begin
  Registro := 0;
  ParseDatosDesdeCarga;
  lblProducto.Caption := strnombreproducto;

  pnlGuarniciones.Visible := IncluirGuarnicion;
  pnlTerminos.Visible := IncluirTermino;

  if IncluirGuarnicion then
    CargarGuarniciones
  else
    LimpiarScrollBox(ScrollBoxGuarniciones);

  if IncluirTermino then
    CargarTerminos
  else
    LimpiarScrollBox(ScrollBoxTerminos);

  AplicarSeleccionGuarniciones(SeleccionGuarnicionesCsv);
  AplicarSeleccionTermino(TerminoIDInicial);

  if IncluirGuarnicion and IncluirTermino then
    MostrarGuarniciones
  else if IncluirGuarnicion then
    MostrarGuarniciones
  else if IncluirTermino then
    MostrarTerminos;
end;

function TfrmOpcionesProducto.GuarnicionesParaGuardar: string;
begin
  if IncluirGuarnicion then
    Result := Trim(ObtenerGuarnicionesSeleccionadas)
  else
    Result := '';
end;

function TfrmOpcionesProducto.TerminoParaGuardar: string;
var
  tid: Integer;
begin
  Result := '';
  if not IncluirTermino then
    Exit;
  tid := ObtenerTerminoSeleccionado;
  if tid > 0 then
    Result := IntToStr(tid);
end;

procedure TfrmOpcionesProducto.CargarGuarniciones;
var
  x, y, col: Integer;
begin
  LimpiarScrollBox(ScrollBoxGuarniciones);

  qryGuarniciones.Close;
  qryGuarniciones.Open;

  x := 10;
  y := 10;
  col := 0;

  while not qryGuarniciones.Eof do
  begin
    CrearOpcion(
      ScrollBoxGuarniciones,
      intgrfldGuarnicionesGuarnicionID.Value,
      strngfldGuarnicionesNombre.Value,
      x,
      y,
      'GUARNICION'
    );

    Inc(col);
    x := x + 140;

    if col = 3 then
    begin
      col := 0;
      x := 10;
      y := y + 90;
    end;

    qryGuarniciones.Next;
  end;
end;

procedure TfrmOpcionesProducto.CargarTerminos;
var
  x, y, col: Integer;
begin
  LimpiarScrollBox(ScrollBoxTerminos);

  qryTerminos.Close;
  qryTerminos.Open;

  x := 10;
  y := 10;
  col := 0;

  while not qryTerminos.Eof do
  begin
    CrearOpcion(
      ScrollBoxTerminos,
      qryTerminosTerminoID.Value,
      qryTerminosNombre.Value,
      x,
      y,
      'TERMINO'
    );

    Inc(col);
    x := x + 140;

    if col = 3 then
    begin
      col := 0;
      x := 10;
      y := y + 90;
    end;

    qryTerminos.Next;
  end;
end;

function TfrmOpcionesProducto.ObtenerGuarnicionesSeleccionadas: string;
var
  i: Integer;
begin
  Result := '';

  for i := 0 to ScrollBoxGuarniciones.ControlCount - 1 do
    if ScrollBoxGuarniciones.Controls[i] is TPanel then
      if TPanel(ScrollBoxGuarniciones.Controls[i]).Color = clMoneyGreen then
      begin
        if Result <> '' then
          Result := Result + ',';
        Result := Result + IntToStr(TPanel(ScrollBoxGuarniciones.Controls[i]).Tag);
      end;
end;

function TfrmOpcionesProducto.ObtenerTerminoSeleccionado: Integer;
var
  i: Integer;
begin
  Result := 0;

  for i := 0 to ScrollBoxTerminos.ControlCount - 1 do
    if ScrollBoxTerminos.Controls[i] is TPanel then
      if TPanel(ScrollBoxTerminos.Controls[i]).Color = clYellow then
      begin
        Result := TPanel(ScrollBoxTerminos.Controls[i]).Tag;
        Exit;
      end;
end;

procedure TfrmOpcionesProducto.pnlGuarnicionesClick(Sender: TObject);
begin
  if not pnlGuarniciones.Visible then
    Exit;
  MostrarGuarniciones;
end;

procedure TfrmOpcionesProducto.pnlTerminosClick(Sender: TObject);
begin
  if not pnlTerminos.Visible then
    Exit;
  MostrarTerminos;
end;

procedure TfrmOpcionesProducto.btcloseClick(Sender: TObject);
begin
  Registro := 0;
  Close;
end;

procedure TfrmOpcionesProducto.btokClick(Sender: TObject);
begin
   { Tomar la selección REAL del usuario y persistirla }
  DatosGuarniciones := GuarnicionesParaGuardar;
  DatosTermino := TerminoParaGuardar;
  
if facturaid>0 then
begin
    dm.Query1.Close;
    dm.Query1.SQL.Clear;
    dm.Query1.SQL.Add('UPDATE Factura_Items SET guarniciones = :guarniciones, incluye_guarnicion= 1, ' );
    dm.Query1.SQL.Add(' incluye_termino = 1, termino_coccion= :termino_coccion ');
    dm.Query1.SQL.Add('WHERE FacturaID = :facturaid ');
    dm.Query1.SQL.Add('AND DetalleID = :detalleid ');
    dm.Query1.SQL.Add('AND ProductoID = :productoid ');

    dm.Query1.Parameters.ParamByName('guarniciones').Value := DatosGuarniciones;
    dm.Query1.Parameters.ParamByName('termino_coccion').Value := DatosTermino;
    dm.Query1.Parameters.ParamByName('facturaid').Value := facturaid;
    dm.Query1.Parameters.ParamByName('detalleid').Value := detalleid;
    dm.Query1.Parameters.ParamByName('productoid').Value := productoid;
    dm.Query1.ExecSQL;
end;

  Registro := 1;
  Close;
end;

procedure TfrmOpcionesProducto.FormActivate(Sender: TObject);
begin
lblproducto.Caption:= strnombreproducto;
end;

end.

