unit uContabilidadRestBar;

{ Integra CxC (movimientos) y ContDet_Facturas al facturar en RestBar.
  Logica alineada a SP_MOVIMIENTOSPIXEL / INTEGRARCUENTASCONTABLES,
  pero por factura (sin ejecutar esos SP batch). }

interface

uses
  SysUtils, Classes, ADODB, Dialogs;

{ Inserta movimiento CxC si es credito y aun no existe.
  Actualiza cli_balance con el pendiente (Total - abono). }
function IntegrarMovimientoCredito(AConnection: TADOConnection;
  AEmp, ASuc, AFacturaID, ACliente: Integer;
  AMonto: Currency; AFecha: TDateTime): Boolean;

{ Genera ContDet_Facturas para una sola factura. }
function IntegrarContabilidadFactura(AConnection: TADOConnection;
  AEmp, ASuc, AFacturaID: Integer): Boolean;

{ Post-facturacion: CxC si credito + contabilidad. No revierte la factura. }
function IntegrarPostFacturacion(AConnection: TADOConnection;
  AEmp, ASuc, AFacturaID: Integer; AEsCredito: Boolean): Boolean;

implementation

function QryFieldStr(Q: TADOQuery; const AName: string): string;
begin
  if Q.FindField(AName) <> nil then
    Result := Trim(Q.FieldByName(AName).AsString)
  else
    Result := '';
end;

function NextDetSecuencia(AConnection: TADOConnection;
  AEmp, ASuc, AFacturaID, ATipoFact: Integer): Integer;
var
  Q: TADOQuery;
begin
  Result := 1;
  Q := TADOQuery.Create(nil);
  try
    Q.Connection := AConnection;
    Q.SQL.Text :=
      'SELECT ISNULL(MAX(det_secuencia),0)+1 AS Sec FROM ContDet_Facturas ' +
      'WHERE emp_codigo = :emp AND suc_codigo = :suc AND fac_numero = :fac ' +
      'AND tfa_codigo = :tfa AND fac_forma = ''A''';
    Q.Parameters.ParamByName('emp').Value := AEmp;
    Q.Parameters.ParamByName('suc').Value := ASuc;
    Q.Parameters.ParamByName('fac').Value := AFacturaID;
    Q.Parameters.ParamByName('tfa').Value := ATipoFact;
    Q.Open;
    if not Q.IsEmpty then
      Result := Q.FieldByName('Sec').AsInteger;
  finally
    Q.Free;
  end;
end;

function CatNombre(AConnection: TADOConnection; AEmp: Integer;
  const ACuenta: string): string;
var
  Q: TADOQuery;
begin
  Result := '';
  if Trim(ACuenta) = '' then
    Exit;
  Q := TADOQuery.Create(nil);
  try
    Q.Connection := AConnection;
    Q.SQL.Text :=
      'SELECT cat_nombre FROM ContCatalogo ' +
      'WHERE cat_cuenta = :cta AND emp_codigo = :emp';
    Q.Parameters.ParamByName('cta').Value := ACuenta;
    Q.Parameters.ParamByName('emp').Value := AEmp;
    Q.Open;
    if not Q.IsEmpty then
      Result := Q.FieldByName('cat_nombre').AsString;
  finally
    Q.Free;
  end;
end;

procedure InsertContDet(AConnection: TADOConnection;
  AEmp, ASuc, ATipoFact, AFacturaID, ASec: Integer;
  const ANombre, AOrigen, ACuenta: string; AMonto: Currency);
var
  Q: TADOQuery;
begin
  if (Trim(ACuenta) = '') or (AMonto = 0) then
    Exit;
  Q := TADOQuery.Create(nil);
  try
    Q.Connection := AConnection;
    Q.SQL.Text :=
      'INSERT INTO ContDet_Facturas ' +
      '(emp_codigo, suc_codigo, fac_forma, tfa_codigo, fac_numero, ' +
      ' det_secuencia, cat_nombre, det_monto, det_origen, cat_cuenta) ' +
      'VALUES (:emp, :suc, ''A'', :tfa, :fac, :sec, :nom, :monto, :ori, :cta)';
    Q.Parameters.ParamByName('emp').Value := AEmp;
    Q.Parameters.ParamByName('suc').Value := ASuc;
    Q.Parameters.ParamByName('tfa').Value := ATipoFact;
    Q.Parameters.ParamByName('fac').Value := AFacturaID;
    Q.Parameters.ParamByName('sec').Value := ASec;
    Q.Parameters.ParamByName('nom').Value := ANombre;
    Q.Parameters.ParamByName('monto').Value := AMonto;
    Q.Parameters.ParamByName('ori').Value := AOrigen;
    Q.Parameters.ParamByName('cta').Value := ACuenta;
    Q.ExecSQL;
  finally
    Q.Free;
  end;
end;

function IntegrarMovimientoCredito(AConnection: TADOConnection;
  AEmp, ASuc, AFacturaID, ACliente: Integer;
  AMonto: Currency; AFecha: TDateTime): Boolean;
var
  Q: TADOQuery;
  Tipom: Integer;
  TipoMov: string;
  SecMov: Integer;
  Abono: Currency;
  St: string;
  Vence: TDateTime;
  DiasVence: Integer;
  Pendiente: Currency;
begin
  Result := False;
  if (AConnection = nil) or (AFacturaID <= 0) or (ACliente <= 0) then
    Exit;

  Q := TADOQuery.Create(nil);
  try
    Q.Connection := AConnection;

    { Idempotencia: ya existe movimiento con mov_numero = FacturaID }
    Q.Close;
    Q.SQL.Text :=
      'SELECT COUNT(*) AS Cnt FROM Movimientos ' +
      'WHERE emp_codigo = :emp AND suc_codigo = :suc ' +
      'AND cli_codigo = :cli AND mov_numero = :num';
    Q.Parameters.ParamByName('emp').Value := AEmp;
    Q.Parameters.ParamByName('suc').Value := ASuc;
    Q.Parameters.ParamByName('cli').Value := ACliente;
    Q.Parameters.ParamByName('num').Value := AFacturaID;
    Q.Open;
    if Q.FieldByName('Cnt').AsInteger > 0 then
    begin
      Result := True;
      Exit;
    end;

    Tipom := 0;
    Q.Close;
    Q.SQL.Text :=
      'SELECT tfa_actbalance, tmo_codigo, tfa_nombre, tfa_codigo ' +
      'FROM tiposfactura WHERE emp_codigo = :emp AND tfa_codigo = 2';
    Q.Parameters.ParamByName('emp').Value := AEmp;
    Q.Open;
    if Q.IsEmpty then
      raise Exception.Create('No existe tiposfactura tfa_codigo=2 para la empresa.');
    Tipom := Q.FieldByName('tmo_codigo').AsInteger;

    TipoMov := '';
    Q.Close;
    Q.SQL.Text :=
      'SELECT tmo_siglas FROM tiposmov ' +
      'WHERE emp_codigo = :emp AND tmo_codigo = :tmo';
    Q.Parameters.ParamByName('emp').Value := AEmp;
    Q.Parameters.ParamByName('tmo').Value := Tipom;
    Q.Open;
    if Q.IsEmpty then
      raise Exception.Create('No existe tiposmov para tmo_codigo=' + IntToStr(Tipom));
    TipoMov := Trim(Q.FieldByName('tmo_siglas').AsString);

    Q.Close;
    Q.SQL.Text :=
      'SELECT ISNULL(MAX(mov_secuencia),0) AS MaxSec FROM movimientos ' +
      'WHERE emp_codigo = :emp';
    Q.Parameters.ParamByName('emp').Value := AEmp;
    Q.Open;
    SecMov := Q.FieldByName('MaxSec').AsInteger + 1;

    Q.Close;
    Q.SQL.Text :=
      'SELECT ISNULL(SUM(ISNULL(monto,0)-ISNULL(devuelta,0)),0) AS Abono ' +
      'FROM RestBar_Factura_Forma_Pago ' +
      'WHERE emp_codigo = :emp AND suc_codigo = :suc AND facturaid = :fac ' +
      'AND forma <> ''Credito''';
    Q.Parameters.ParamByName('emp').Value := AEmp;
    Q.Parameters.ParamByName('suc').Value := ASuc;
    Q.Parameters.ParamByName('fac').Value := AFacturaID;
    Q.Open;
    Abono := Q.FieldByName('Abono').AsCurrency;

    if (AMonto - Abono) > 0 then
      St := 'PEN'
    else
      St := 'PAG';

    DiasVence := 30;
    Q.Close;
    Q.SQL.Text :=
      'SELECT cpa_dias FROM condiciones ' +
      'WHERE emp_codigo = :emp AND cpa_codigo IN ' +
      '(SELECT cpa_codigo FROM clientes WHERE emp_codigo = :emp2 AND cli_codigo = :cli)';
    Q.Parameters.ParamByName('emp').Value := AEmp;
    Q.Parameters.ParamByName('emp2').Value := AEmp;
    Q.Parameters.ParamByName('cli').Value := ACliente;
    Q.Open;
    if (not Q.IsEmpty) and (Q.FieldByName('cpa_dias').AsInteger > 0) then
      DiasVence := Q.FieldByName('cpa_dias').AsInteger;
    Vence := AFecha + DiasVence;

    Q.Close;
    Q.SQL.Text :=
      'INSERT INTO movimientos ' +
      '(emp_codigo, suc_codigo, mov_tipo, mov_numero, mov_secuencia, fac_forma, ' +
      ' tfa_codigo, mov_fecha, mov_monto, mov_abono, mov_status, cli_codigo, ' +
      ' mov_fechavence, mov_tasa, mon_codigo, mov_interes) ' +
      'VALUES (:emp, :suc, :tipo, :num, :sec, ''A'', 2, :fecha, :monto, :abono, ' +
      ' :st, :cli, :vence, 1, 1, 0)';
    Q.Parameters.ParamByName('emp').Value := AEmp;
    Q.Parameters.ParamByName('suc').Value := ASuc;
    Q.Parameters.ParamByName('tipo').Value := TipoMov;
    Q.Parameters.ParamByName('num').Value := AFacturaID;
    Q.Parameters.ParamByName('sec').Value := SecMov;
    Q.Parameters.ParamByName('fecha').Value := AFecha;
    Q.Parameters.ParamByName('monto').Value := AMonto;
    Q.Parameters.ParamByName('abono').Value := Abono;
    Q.Parameters.ParamByName('st').Value := St;
    Q.Parameters.ParamByName('cli').Value := ACliente;
    Q.Parameters.ParamByName('vence').Value := Vence;
    Q.ExecSQL;

    Pendiente := AMonto - Abono;
    if Pendiente > 0 then
    begin
      Q.Close;
      Q.SQL.Text :=
        'UPDATE clientes SET cli_balance = ISNULL(cli_balance,0) + :monto ' +
        'WHERE cli_codigo = :cli AND emp_codigo = :emp';
      Q.Parameters.ParamByName('monto').Value := Pendiente;
      Q.Parameters.ParamByName('cli').Value := ACliente;
      Q.Parameters.ParamByName('emp').Value := AEmp;
      Q.ExecSQL;
    end;

    Result := True;
  finally
    Q.Free;
  end;
end;

function IntegrarContabilidadNoFamilia(AConnection: TADOConnection;
  AEmp, ASuc, AFacturaID: Integer): Boolean;
var
  Q, QPago: TADOQuery;
  Credito: Boolean;
  TipoFactura: Integer;
  TfaActBalance: string;
  CatCuenta, CatItbis, CatPropina, CatDesc, CatInvent, CatCosto: string;
  CatNombreStr, CliCuenta: string;
  Costo, Monto, Total, Itbis, Propina, Exento, Grabado, Descuento: Currency;
  Cliente, Sec: Integer;
  ForMonto: Currency;
begin
  Result := False;
  Q := TADOQuery.Create(nil);
  QPago := TADOQuery.Create(nil);
  try
    Q.Connection := AConnection;
    QPago.Connection := AConnection;

    Q.SQL.Text :=
      'SELECT FacturaID, Exento, Grabado, Itbis, Propina, Total, Credito, ' +
      'Descuento, SUC_CODIGO, EMP_CODIGO, cli_codigo ' +
      'FROM Factura_RestBar ' +
      'WHERE EMP_CODIGO = :emp AND SUC_CODIGO = :suc AND FacturaID = :fac';
    Q.Parameters.ParamByName('emp').Value := AEmp;
    Q.Parameters.ParamByName('suc').Value := ASuc;
    Q.Parameters.ParamByName('fac').Value := AFacturaID;
    Q.Open;
    if Q.IsEmpty then
      Exit;

    Exento := Q.FieldByName('Exento').AsCurrency;
    Grabado := Q.FieldByName('Grabado').AsCurrency;
    Itbis := Q.FieldByName('Itbis').AsCurrency;
    Propina := Q.FieldByName('Propina').AsCurrency;
    Total := Q.FieldByName('Total').AsCurrency;
    Descuento := Q.FieldByName('Descuento').AsCurrency;
    Credito := Q.FieldByName('Credito').AsBoolean;
    Cliente := Q.FieldByName('cli_codigo').AsInteger;
    if Credito then
      TipoFactura := 2
    else
      TipoFactura := 1;

    Q.Close;
    Q.SQL.Text :=
      'DELETE FROM ContDet_Facturas ' +
      'WHERE emp_codigo = :emp AND suc_codigo = :suc AND fac_numero = :fac ' +
      'AND tfa_codigo = :tfa AND fac_forma = ''A''';
    Q.Parameters.ParamByName('emp').Value := AEmp;
    Q.Parameters.ParamByName('suc').Value := ASuc;
    Q.Parameters.ParamByName('fac').Value := AFacturaID;
    Q.Parameters.ParamByName('tfa').Value := TipoFactura;
    Q.ExecSQL;

    CatItbis := '';
    CatPropina := '';
    CatDesc := '';
    CatInvent := '';
    CatCosto := '';
    Q.Close;
    Q.SQL.Text :=
      'SELECT PAR_CTAITBIS, par_ctaproplegvent, PAR_CTADESC, ' +
      'PAR_CTAINVENT, PAR_CTACOSTO FROM ContParametros';
    Q.Open;
    if not Q.IsEmpty then
    begin
      CatItbis := QryFieldStr(Q, 'PAR_CTAITBIS');
      CatPropina := QryFieldStr(Q, 'par_ctaproplegvent');
      CatDesc := QryFieldStr(Q, 'PAR_CTADESC');
      CatInvent := QryFieldStr(Q, 'PAR_CTAINVENT');
      if CatInvent = '' then
        CatInvent := QryFieldStr(Q, 'PAR_CTAINVEnT');
      CatCosto := QryFieldStr(Q, 'PAR_CTACOSTO');
    end;

    CatCuenta := '';
    TfaActBalance := '';
    Q.Close;
    Q.SQL.Text :=
      'SELECT cat_cuenta, tfa_actbalance FROM tiposfactura ' +
      'WHERE emp_codigo = :emp AND tfa_codigo = :tfa';
    Q.Parameters.ParamByName('emp').Value := AEmp;
    Q.Parameters.ParamByName('tfa').Value := TipoFactura;
    Q.Open;
    if not Q.IsEmpty then
    begin
      CatCuenta := Trim(Q.FieldByName('cat_cuenta').AsString);
      TfaActBalance := Trim(Q.FieldByName('tfa_actbalance').AsString);
    end;

    Costo := 0;
    Q.Close;
    Q.SQL.Text :=
      'SELECT SUM(ISNULL(P.pro_costo, I.Costo) * I.Cantidad) AS Costo ' +
      'FROM Factura_Items I LEFT JOIN Productos P ON I.ProductoID = P.pro_codigo ' +
      'WHERE I.FacturaID = :fac AND I.EMP_CODIGO = :emp';
    Q.Parameters.ParamByName('fac').Value := AFacturaID;
    Q.Parameters.ParamByName('emp').Value := AEmp;
    Q.Open;
    if not Q.IsEmpty then
      Costo := Q.FieldByName('Costo').AsCurrency;

    { Misma formula del SP }
    Monto := Grabado + Exento - Itbis - Propina + Descuento;

    Sec := 1;
    CatNombreStr := CatNombre(AConnection, AEmp, CatCuenta);
    InsertContDet(AConnection, AEmp, ASuc, TipoFactura, AFacturaID, Sec,
      CatNombreStr, 'Credito', CatCuenta, Monto);

    if Itbis > 0 then
    begin
      Sec := NextDetSecuencia(AConnection, AEmp, ASuc, AFacturaID, TipoFactura);
      CatNombreStr := CatNombre(AConnection, AEmp, CatItbis);
      InsertContDet(AConnection, AEmp, ASuc, TipoFactura, AFacturaID, Sec,
        CatNombreStr, 'Credito', CatItbis, Itbis);
    end;

    if Propina > 0 then
    begin
      Sec := NextDetSecuencia(AConnection, AEmp, ASuc, AFacturaID, TipoFactura);
      CatNombreStr := CatNombre(AConnection, AEmp, CatPropina);
      InsertContDet(AConnection, AEmp, ASuc, TipoFactura, AFacturaID, Sec,
        CatNombreStr, 'Credito', CatPropina, Propina);
    end;

    if Descuento > 0 then
    begin
      Sec := NextDetSecuencia(AConnection, AEmp, ASuc, AFacturaID, TipoFactura);
      CatNombreStr := CatNombre(AConnection, AEmp, CatDesc);
      InsertContDet(AConnection, AEmp, ASuc, TipoFactura, AFacturaID, Sec,
        CatNombreStr, 'Debito', CatDesc, Descuento);
    end;

    if Costo > 0 then
    begin
      Sec := NextDetSecuencia(AConnection, AEmp, ASuc, AFacturaID, TipoFactura);
      CatNombreStr := CatNombre(AConnection, AEmp, CatInvent);
      InsertContDet(AConnection, AEmp, ASuc, TipoFactura, AFacturaID, Sec,
        CatNombreStr, 'Credito', CatInvent, Costo);

      Sec := NextDetSecuencia(AConnection, AEmp, ASuc, AFacturaID, TipoFactura);
      CatNombreStr := CatNombre(AConnection, AEmp, CatCosto);
      InsertContDet(AConnection, AEmp, ASuc, TipoFactura, AFacturaID, Sec,
        CatNombreStr, 'Debito', CatCosto, Costo);
    end;

    if CompareText(TfaActBalance, 'True') <> 0 then
    begin
      QPago.Close;
      QPago.SQL.Text :=
        'SELECT fp.cat_cuenta, a.Monto ' +
        'FROM RestBar_Factura_Forma_Pago a ' +
        'INNER JOIN FormasPago fp ON a.emp_codigo = fp.emp_codigo ' +
        'AND a.Forma = fp.fpa_nombre ' +
        'WHERE a.emp_codigo = :emp AND a.FacturaID = :fac AND a.suc_codigo = :suc';
      QPago.Parameters.ParamByName('emp').Value := AEmp;
      QPago.Parameters.ParamByName('fac').Value := AFacturaID;
      QPago.Parameters.ParamByName('suc').Value := ASuc;
      QPago.Open;
      while not QPago.Eof do
      begin
        CatCuenta := Trim(QPago.FieldByName('cat_cuenta').AsString);
        ForMonto := QPago.FieldByName('Monto').AsCurrency;
        if ForMonto > 0 then
        begin
          Sec := NextDetSecuencia(AConnection, AEmp, ASuc, AFacturaID, TipoFactura);
          CatNombreStr := CatNombre(AConnection, AEmp, CatCuenta);
          InsertContDet(AConnection, AEmp, ASuc, TipoFactura, AFacturaID, Sec,
            CatNombreStr, 'Debito', CatCuenta, ForMonto);
        end;
        QPago.Next;
      end;
    end
    else
    begin
      CliCuenta := '';
      Q.Close;
      Q.SQL.Text :=
        'SELECT cli_cuenta FROM Clientes WHERE cli_codigo = :cli';
      Q.Parameters.ParamByName('cli').Value := Cliente;
      Q.Open;
      if not Q.IsEmpty then
        CliCuenta := Trim(Q.FieldByName('cli_cuenta').AsString);
      Sec := NextDetSecuencia(AConnection, AEmp, ASuc, AFacturaID, TipoFactura);
      CatNombreStr := CatNombre(AConnection, AEmp, CliCuenta);
      InsertContDet(AConnection, AEmp, ASuc, TipoFactura, AFacturaID, Sec,
        CatNombreStr, 'Debito', CliCuenta, Total);
    end;

    Result := True;
  finally
    QPago.Free;
    Q.Free;
  end;
end;

function IntegrarContabilidadFactura(AConnection: TADOConnection;
  AEmp, ASuc, AFacturaID: Integer): Boolean;
var
  Q: TADOQuery;
  IsPorFamilia: Boolean;
begin
  Result := False;
  if (AConnection = nil) or (AFacturaID <= 0) then
    Exit;

  Q := TADOQuery.Create(nil);
  try
    Q.Connection := AConnection;
    IsPorFamilia := False;
    Q.SQL.Text :=
      'SELECT CAST(ISNULL(par_codifica_venta_familia,0) AS INT) AS PorFam ' +
      'FROM ContParametros';
    try
      Q.Open;
      if not Q.IsEmpty then
        IsPorFamilia := Q.FieldByName('PorFam').AsInteger = 1;
    except
      IsPorFamilia := False;
    end;

    if IsPorFamilia then
    begin
      Q.Close;
      Q.SQL.Text :=
        'EXEC SP_RECALCULARCUENTASCONTABLESFAMILIA :fac, :emp, :suc';
      Q.Parameters.ParamByName('fac').Value := AFacturaID;
      Q.Parameters.ParamByName('emp').Value := AEmp;
      Q.Parameters.ParamByName('suc').Value := ASuc;
      Q.ExecSQL;
      Result := True;
    end
    else
      Result := IntegrarContabilidadNoFamilia(AConnection, AEmp, ASuc, AFacturaID);
  finally
    Q.Free;
  end;
end;

function IntegrarPostFacturacion(AConnection: TADOConnection;
  AEmp, ASuc, AFacturaID: Integer; AEsCredito: Boolean): Boolean;
var
  Q: TADOQuery;
  Cliente: Integer;
  Monto: Currency;
  Fecha: TDateTime;
  CreditoFac: Boolean;
begin
  Result := False;
  if (AConnection = nil) or (AFacturaID <= 0) then
    Exit;

  Q := TADOQuery.Create(nil);
  try
    Q.Connection := AConnection;
    Q.SQL.Text :=
      'SELECT ISNULL(cli_codigo,0) AS cli_codigo, Total, Fecha, Credito ' +
      'FROM Factura_RestBar ' +
      'WHERE EMP_CODIGO = :emp AND SUC_CODIGO = :suc AND FacturaID = :fac';
    Q.Parameters.ParamByName('emp').Value := AEmp;
    Q.Parameters.ParamByName('suc').Value := ASuc;
    Q.Parameters.ParamByName('fac').Value := AFacturaID;
    Q.Open;
    if Q.IsEmpty then
      Exit;

    Cliente := Q.FieldByName('cli_codigo').AsInteger;
    Monto := Q.FieldByName('Total').AsCurrency;
    Fecha := Q.FieldByName('Fecha').AsDateTime;
    CreditoFac := Q.FieldByName('Credito').AsBoolean or AEsCredito;

    try
      if CreditoFac and (Cliente > 0) then
        IntegrarMovimientoCredito(AConnection, AEmp, ASuc, AFacturaID,
          Cliente, Monto, Fecha);

      IntegrarContabilidadFactura(AConnection, AEmp, ASuc, AFacturaID);
      Result := True;
    except
      on E: Exception do
        ShowMessage('Factura guardada, pero fallo la integracion contable/CxC:' + #13 +
          E.Message);
    end;
  finally
    Q.Free;
  end;
end;

end.
