unit BAR55;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Buttons, Grids, DBGrids, StdCtrls, DB, ADODB, ExtCtrls;

type
  TfrmDividirPago = class(TForm)
    btclose: TSpeedButton;
    btcredito: TSpeedButton;
    btcash: TSpeedButton;
    bttarjeta: TSpeedButton;
    Panel1: TPanel;
    btPrior: TSpeedButton;
    btNext: TSpeedButton;
    QDetalle: TADOQuery;
    dsDetalle: TDataSource;
    QDetalleNombre: TWideStringField;
    QDetalleCantidad: TFloatField;
    QDetallePrecio: TBCDField;
    QDetalleItbis: TBooleanField;
    QDetalleDetalleID: TIntegerField;
    QDetalleIngrediente: TBooleanField;
    QDetalleCantidadIngredientes: TIntegerField;
    QDetalleValor: TFloatField;
    QDetalleTotalDescuento: TFloatField;
    DBGrid3: TDBGrid;
    QDetallediv_Pago: TIntegerField;
    btSeleccionar: TSpeedButton;
    btimprimir: TSpeedButton;
    btncf: TSpeedButton;
    DBGrid1: TDBGrid;
    qCuenta: TADOQuery;
    dsCuenta: TDataSource;
    qCuentadiv_Grupo: TWideStringField;
    qCuentaValor: TFloatField;
    qCuentaTotalDescuento: TFloatField;
    QDetallediv_Grupo: TWideStringField;
    QDetalleCajeroID: TIntegerField;
    QDetalleFacturaID: TIntegerField;
    QDetalleCajaID: TIntegerField;
    Memo1: TMemo;
    QFactura: TADOQuery;
    btDivision: TSpeedButton;
    btresta: TSpeedButton;
    QFacturaCajeroID: TIntegerField;
    QFacturaFacturaID: TIntegerField;
    QFacturaFecha: TDateTimeField;
    QFacturaExento: TBCDField;
    QFacturaGrabado: TBCDField;
    QFacturaItbis: TBCDField;
    QFacturaPropina: TBCDField;
    QFacturaTotal: TBCDField;
    QFacturaEstatus: TWideStringField;
    QFacturaSupervisorID: TIntegerField;
    QFacturaNombre: TWideStringField;
    QFacturaMesaID: TIntegerField;
    QFacturaHold: TBooleanField;
    QFacturaLlevar: TBooleanField;
    QFacturaCredito: TBooleanField;
    QFacturaPagado: TBCDField;
    QFacturaNCF: TWideStringField;
    QFacturaDescuento: TBCDField;
    QFacturaCuadrada: TBooleanField;
    QFacturaCajaID: TIntegerField;
    QFacturarnc: TWideStringField;
    QFacturaHora: TDateTimeField;
    QFacturaTipoNCF: TIntegerField;
    QFacturaConItbis: TBooleanField;
    QFacturaConPropina: TBooleanField;
    QFacturanota: TMemoField;
    QFacturaimprimeNCF: TBooleanField;
    QFacturaDecuentoGlobal: TBooleanField;
    QFacturaUnificada: TIntegerField;
    cmdSegregar: TSpeedButton;
    QFacturaemp_codigo: TIntegerField;
    QFacturaTipoeNCF: TIntegerField;
    QFacturasuc_codigo: TIntegerField;
    procedure btcloseClick(Sender: TObject);
    procedure btPriorClick(Sender: TObject);
    procedure btNextClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btcreditoClick(Sender: TObject);
    procedure btcashClick(Sender: TObject);
    procedure DBGrid3CellClick(Column: TColumn);
    procedure DBGrid3DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure btSeleccionarClick(Sender: TObject);
    procedure btncfClick(Sender: TObject);
    procedure btimprimirClick(Sender: TObject);
    procedure btDivisionClick(Sender: TObject);
    procedure dsDetalleDataChange(Sender: TObject; Field: TField);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure bttarjetaClick(Sender: TObject);
    procedure dsCuentaDataChange(Sender: TObject; Field: TField);
    procedure btrestaClick(Sender: TObject);
    procedure cmdSegregarClick(Sender: TObject);
  private
    qTemp : TADOQuery;
    vNombUsuario, vMesa, vArea : string;
    vRnc, vRazon_social ,lbrnc : string;
    FUltimaDivision: Boolean;
    function generarGrupo(vCajeroID,vFacturaID,vCajaID : integer):string;
    function CobrarDivision(vBtn: TSpeedButton; const div_grupo: string;
      vSubTotalDiv, vDescItems: double): Boolean;
    procedure ImprimirFacturaDivision(const AEsCopia: Boolean);
    procedure RefrescarGrillasDespuesCobro;
    procedure PreguntarEImprimirFacturaYCopia;
    Procedure ImpCuenta(div_grupo:string; vSubTotalCta ,vDescItems:double);
    procedure DividirItem(const FacturaID: Integer; const DetalleID: Integer);
    procedure RefrescarDetallePOS;
    procedure MoverItemsDivisionPorGrupo(const div_grupo: string;
      ACajeroNuevo, AFacturaNueva, AFacOrigen: Integer);
    procedure LimpiarGrupoDivisionCobrada(const div_grupo: string;
      ACajeroFac, AFacturaFac: Integer);
    procedure LimpiarTodasDivisionesMesa;
    procedure FinalizarDespuesCobro;
    procedure RefrescarDatosAlAbrir;
    procedure CargarNCFDesdePOS;
    function ResolverTipoNCF: Integer;
     function ValidarENCFDisponible(
      AEmp: Integer; ATipo: Integer;
      out AMsg: string;
      out ASiguienteCorrelativo: Int64
    ): Boolean;
  public
    Total, Monto, Devuelta : Double;
    Facturo ,vCajeroID ,vFacturaID ,vCajaID ,vTipoNCF: integer;
    vFacImpCajero, vFacImpFactura, vFacImpCaja: Integer;
  end;

var
  frmDividirPago: TfrmDividirPago;

implementation

uses BAR00, BAR04, BAR32, BAR16, BAR01, BAR28, BAR30, FacturacionElectronicaDGII_TLB,
  uContabilidadRestBar;

{$R *.dfm}

procedure TfrmDividirPago.RefrescarDetallePOS;
begin
  if not Assigned(frmPOS) then
    Exit;
  frmPOS.QDetalle.Active := False;
  frmPOS.QDetalle.Parameters.ParamByName('caj').Value  := vCajeroID;
  frmPOS.QDetalle.Parameters.ParamByName('fac').Value  := vFacturaID;
  frmPOS.QDetalle.Parameters.ParamByName('caja').Value := vCajaID;
  frmPOS.QDetalle.Open;
  if frmPOS.Totaliza then
    frmPOS.Totalizar;
end;

procedure TfrmDividirPago.MoverItemsDivisionPorGrupo(const div_grupo: string;
  ACajeroNuevo, AFacturaNueva, AFacOrigen: Integer);
begin
  if AFacOrigen <= 0 then
    AFacOrigen := vFacturaID;
  if (AFacturaNueva = AFacOrigen) and (ACajeroNuevo = vCajeroID) then
    Exit;

  dm.Query1.Close;
  dm.Query1.SQL.Text :=
    'UPDATE Factura_Items SET CajeroID = :cajN, FacturaID = :facN ' +
    'WHERE CajaID = :cajaO AND div_grupo = :grupo AND FacturaID = :facO';
  dm.Query1.Parameters.ParamByName('cajN').Value := ACajeroNuevo;
  dm.Query1.Parameters.ParamByName('facN').Value := AFacturaNueva;
  dm.Query1.Parameters.ParamByName('cajaO').Value := vCajaID;
  dm.Query1.Parameters.ParamByName('grupo').Value := div_grupo;
  dm.Query1.Parameters.ParamByName('facO').Value := AFacOrigen;
  dm.Query1.ExecSQL;
end;

procedure TfrmDividirPago.LimpiarGrupoDivisionCobrada(const div_grupo: string;
  ACajeroFac, AFacturaFac: Integer);
begin
  if Trim(div_grupo) = '' then
    Exit;
  dm.Query1.Close;
  dm.Query1.SQL.Text :=
    'UPDATE Factura_Items SET div_Grupo = NULL, div_Pago = 0 ' +
    'WHERE CajaID = :caja AND div_grupo = :grupo AND (' +
    '(CajeroID = :cajMesa AND FacturaID = :facMesa) OR ' +
    '(CajeroID = :cajFac AND FacturaID = :facFac))';
  dm.Query1.Parameters.ParamByName('caja').Value := vCajaID;
  dm.Query1.Parameters.ParamByName('grupo').Value := div_grupo;
  dm.Query1.Parameters.ParamByName('cajMesa').Value := vCajeroID;
  dm.Query1.Parameters.ParamByName('facMesa').Value := vFacturaID;
  dm.Query1.Parameters.ParamByName('cajFac').Value := ACajeroFac;
  dm.Query1.Parameters.ParamByName('facFac').Value := AFacturaFac;
  dm.Query1.ExecSQL;
end;

procedure TfrmDividirPago.LimpiarTodasDivisionesMesa;
begin
  { Ultima division cobrada: quitar grupos y dejar div_Pago=1 para que no
    reaparezcan en la grilla de abajo (suele filtrar div_Pago = 0). }
  dm.Query1.Close;
  dm.Query1.SQL.Text :=
    'UPDATE Factura_Items SET div_Grupo = NULL, div_Pago = 1 ' +
    'WHERE CajaID = :caja AND CajeroID = :caj AND FacturaID = :fac';
  dm.Query1.Parameters.ParamByName('caja').Value := vCajaID;
  dm.Query1.Parameters.ParamByName('caj').Value := vCajeroID;
  dm.Query1.Parameters.ParamByName('fac').Value := vFacturaID;
  dm.Query1.ExecSQL;
end;

procedure TfrmDividirPago.FinalizarDespuesCobro;
begin
  RefrescarGrillasDespuesCobro;
  if FUltimaDivision then
  begin
    // LimpiarTodasDivisionesMesa pone div_Grupo = NULL en todos los items,
    // lo que los hace reaparecer en QDetalle (filtra IS NULL) y genera una
    // fila "null" en qCuenta. Cerramos ambos grids para limpiar la pantalla.
    if QDetalle.Active then QDetalle.Close;
    if qCuenta.Active then qCuenta.Close;
    Facturo := 1;
  end
  else if qCuenta.IsEmpty and QDetalle.IsEmpty then
    Facturo := 1;
end;

procedure TfrmDividirPago.btcloseClick(Sender: TObject);
begin
  qTemp.Free;
  if (not qCuenta.Active  or (qCuenta.RecordCount  = 0)) and
     (not QDetalle.Active or (QDetalle.RecordCount = 0)) then
    Facturo := 1
  else
    Facturo := 0;
  RefrescarDetallePOS;
  Close;
end;

procedure TfrmDividirPago.btPriorClick(Sender: TObject);
begin
  QDetalle.DisableControls;
  if not QDetalle.Bof then
  begin
    QDetalle.Prior;
    while (QDetalleIngrediente.Value) and (Not QDetalle.Bof) do
    begin
      QDetalle.Prior;
      DBGrid3CellClick(nil);
    end;
  end;
  QDetalle.EnableControls;
end;

procedure TfrmDividirPago.btNextClick(Sender: TObject);
begin
  QDetalle.DisableControls;
  if not QDetalle.Eof then
  begin
    QDetalle.Next;
    while QDetalleIngrediente.Value do
    begin
      if Not QDetalle.Eof then
      begin
        QDetalle.Next;
        DBGrid3CellClick(nil);
      end
      else
      begin
        if QDetalleIngrediente.Value then
        begin
          btNextClick(Self);
        end;
      end;
    end;
  end;
  QDetalle.EnableControls;
end;

procedure TfrmDividirPago.CargarNCFDesdePOS;
begin
  if not Assigned(frmPOS) then
    Exit;
  if frmPOS.TipoNCF > 0 then
    vTipoNCF := frmPOS.TipoNCF
  else if frmPOS.QFactura.Active and (frmPOS.QFacturaTipoNCF.Value > 0) then
    vTipoNCF := frmPOS.QFacturaTipoNCF.Value;
  if Trim(vRazon_social) = '' then
    vRazon_social := frmPOS.razon_social;
  if Trim(vRazon_social) = '' then
    vRazon_social := frmPOS.QFacturaNombre.AsString;
  if Trim(vRnc) = '' then
    vRnc := frmPOS.rnc;
  if Trim(vRnc) = '' then
    vRnc := frmPOS.QFacturarnc.AsString;
end;

function TfrmDividirPago.ResolverTipoNCF: Integer;
begin
  if vTipoNCF > 0 then
    Result := vTipoNCF
  else if Assigned(frmPOS) then
  begin
    if frmPOS.TipoNCF > 0 then
      Result := frmPOS.TipoNCF
    else if frmPOS.QFactura.Active and (frmPOS.QFacturaTipoNCF.Value > 0) then
      Result := frmPOS.QFacturaTipoNCF.Value
    else
      Result := 1;
  end
  else
    Result := 1;
  vTipoNCF := Result;
end;

procedure TfrmDividirPago.RefrescarDatosAlAbrir;
begin
  CargarNCFDesdePOS;
  if (vFacturaID <= 0) and Assigned(frmPOS) then
  begin
    vFacturaID := frmPOS.QFacturaFacturaID.Value;
    vCajaID    := frmPOS.QFacturaCajaID.Value;
    vCajeroID  := frmPOS.QFacturaCajeroID.Value;
  end;

  QDetalle.Close;
  QDetalle.Parameters.ParamByName('caj').Value  := vCajeroID;
  QDetalle.Parameters.ParamByName('fac').Value  := vFacturaID;
  QDetalle.Parameters.ParamByName('caja').Value := vCajaID;
  QDetalle.Open;

  if QDetalle.IsEmpty and Assigned(frmPOS) and frmPOS.QDetalle.Active and
     (frmPOS.QDetalle.RecordCount > 0) then
  begin
    vCajeroID  := frmPOS.QDetalleCajeroID.Value;
    vFacturaID := frmPOS.QDetalleFacturaID.Value;
    vCajaID    := frmPOS.QDetalleCajaID.Value;
    QDetalle.Close;
    QDetalle.Parameters.ParamByName('caj').Value  := vCajeroID;
    QDetalle.Parameters.ParamByName('fac').Value  := vFacturaID;
    QDetalle.Parameters.ParamByName('caja').Value := vCajaID;
    QDetalle.Open;
  end;

  qCuenta.Close;
  if qCuenta.Parameters.FindParam('caj') <> nil then
  begin
    qCuenta.Parameters.ParamByName('caj').Value  := vCajeroID;
    qCuenta.Parameters.ParamByName('fac').Value  := vFacturaID;
    qCuenta.Parameters.ParamByName('caja').Value := vCajaID;
  end;
  qCuenta.Open;
end;

procedure TfrmDividirPago.FormShow(Sender: TObject);
begin
  RefrescarDatosAlAbrir;
end;

procedure TfrmDividirPago.FormCreate(Sender: TObject);
begin
  Facturo := 0;
  vTipoNCF := 0;
  vRnc := '';
  vRazon_social := '';
  FUltimaDivision := False;
  vFacImpCajero := 0;
  vFacImpFactura := 0;
  vFacImpCaja := 0;
  qTemp := TADOQuery.Create(Self);
  qTemp.Connection := QDetalle.Connection;
  btclose.Caption       := 'F1'+#13+'SALIR';
  btSeleccionar.Caption := 'F10'+#13+'SELECCIONAR';

  btcash.Caption        := 'F4'+#13+'CASH';
  bttarjeta.Caption     := 'F5'+#13+'TARJETA';
  btcredito.Caption     := 'F6'+#13+'CREDITO';
  btimprimir.Caption    := 'F8'+#13+'CUENTA';
  btDivision.Caption    := 'F9'+#13+'CREAR'+#13+'DIVISION';
  btresta.Caption       := 'ELIMINAR'+#13+'DIVISION';
  QFactura.Active       := True;
  qCuenta.Active        := True;

//Usuario
  qTemp.close;
  qTemp.SQL.clear;
  qTemp.SQL.add('select usu_nombre Nombre from usuarios');
  qTemp.SQL.add('where usu_codigo = :usu');
  qTemp.Parameters.parambyname('usu').Value := frmMain.Usuario;
  qTemp.open;
  if qTemp.IsEmpty then
     vNombUsuario := ''
  else
    vNombUsuario := qTemp.fieldbyname('Nombre').asstring;

//mesa
  if not frmPOS.QFacturamesaid.IsNull then
  begin
    qTemp.Close;
    qTemp.SQL.Clear;
    qTemp.SQL.Add('select m.MesaID, m.Nombre, a.Nombre as Area, m.Estatus');
    qTemp.SQL.Add('from Mesas m, Areas a');
    qTemp.SQL.Add('where m.AreaID = a.AreaID');
    qTemp.SQL.Add('and m.mesaid = :cod');
    qTemp.SQL.Add('order by m.MesaID');
    qTemp.Parameters.ParamByName('cod').Value := frmPOS.QFacturamesaid.Value;
    qTemp.Open;
    if qTemp.IsEmpty then
       begin
        vMesa := '';
        vArea := '';
       end
    else begin
      vMesa := qTemp.fieldbyname('Nombre').asstring;
      vArea := qTemp.fieldbyname('Area').asstring;
    end;
  end;

qTemp.close;
end;

procedure TfrmDividirPago.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = vk_f1 then btcloseClick(Self);
  if key = vk_f4 then btcashClick(Self);
  if key = vk_f5 then bttarjetaClick(Self);
  if key = vk_f6 then btcreditoClick(Self);
  if key = vk_f7 then btncfClick(Self);
  if key = vk_f8 then btimprimirClick(Self);
  if key = vk_f9 then btDivisionClick(Self);
  if key = vk_f10 then btSeleccionarClick(Self);
//  if key = vk_f10 then btaceptarClick(Self);
  if key = vk_f11 then btPriorClick(Self);
  if key = vk_f12 then btNextClick(Self);
end;

procedure TfrmDividirPago.btcreditoClick(Sender: TObject);
begin
  if QDetalle.RecordCount <> 0 then
  begin
    MessageDlg('Debe terminar la division de la cuenta antes de proceder al pago.', mtError, [mbOK], 0);
    Exit;
  end;
  if qCuenta.IsEmpty then Exit;

  if CobrarDivision(TSpeedButton(Sender), qCuentadiv_Grupo.Value,
    qCuentaValor.Value, qCuentaTotalDescuento.Value) then
  begin
    FinalizarDespuesCobro;
    PreguntarEImprimirFacturaYCopia;
  end;
end;


function TfrmDividirPago.ValidarENCFDisponible(
  AEmp: Integer; ATipo: Integer;
  out AMsg: string;
  out ASiguienteCorrelativo: Int64  // opcional, informativo
): Boolean;
var
  Q: TADOQuery;
  desde, ultima, cantidad, hasta, siguiente: Int64;
  vence: TDateTime;
  activa: Boolean;
begin
  Result := False;
  AMsg := '';
  ASiguienteCorrelativo := 0;

  Q := dm.Query1; // reutiliza tu query
  Q.Close;
  Q.SQL.Clear;
  Q.SQL.Add('SELECT s.Secuencia_Inicial_DGII, s.Ultima_secuencia_DGII, ');
  Q.SQL.Add('     CONVERT(datetime, s.FechaVencimientoSecuenciaDGII, 120) AS FechaVencimientoSecuenciaDGII, s.Activa, s.Cantidad');
  Q.SQL.Add('FROM SecuenciaDGII s');
  Q.SQL.Add('JOIN TipoNCF t ON t.emp_codigo = s.emp_codigo AND s.Tipo = t.cod_dgii');
  Q.SQL.Add('WHERE s.emp_codigo = :emp AND t.tip_codigo = :tip');
  Q.Parameters.ParamByName('emp').Value := AEmp;
  Q.Parameters.ParamByName('tip').Value := ATipo;

  Q.Open;

  if Q.Eof then
  begin
    AMsg := 'SECUENCIA_NO_CONFIGURADA';
    Exit;
  end;

  desde    := Q.FieldByName('Secuencia_Inicial_DGII').AsInteger;
  ultima   := Q.FieldByName('Ultima_secuencia_DGII').AsInteger;
  cantidad := Q.FieldByName('Cantidad').AsInteger;

  if not Q.FieldByName('FechaVencimientoSecuenciaDGII').IsNull then
  begin
    vence := Q.FieldByName('FechaVencimientoSecuenciaDGII').AsDateTime;
    if Now > vence then
    begin
      AMsg := 'La secuencia est� vencida.';
      Exit;
    end;
  end;


  if not Q.FieldByName('Activa').IsNull then
  activa := Q.FieldByName('Activa').AsBoolean
  else
    activa := False; // por defecto

  hasta     := desde + cantidad - 1;
  siguiente := ultima + 1;

  if activa = False then
  begin
    AMsg := 'SECUENCIA_INACTIVA';
    Exit;
  end;

  if siguiente > hasta then
  begin
    AMsg := 'SECUENCIA_AGOTADA';
    Exit;
  end;

  // Hay secuencia v�lida y disponible (sin reservar)
  ASiguienteCorrelativo := siguiente;
  Result := True;
end;

procedure TfrmDividirPago.btcashClick(Sender: TObject);
begin
  if QDetalle.RecordCount <> 0 then
  begin
    MessageDlg('Debe terminar la division de la cuenta antes de proceder al pago.', mtError, [mbOK], 0);
    Exit;
  end;
  if qCuenta.IsEmpty then Exit;

  if CobrarDivision(btcash, qCuentadiv_Grupo.Value,
    qCuentaValor.Value, qCuentaTotalDescuento.Value) then
  begin
    FinalizarDespuesCobro;
    PreguntarEImprimirFacturaYCopia;
  end;
end;

procedure TfrmDividirPago.RefrescarGrillasDespuesCobro;
begin
  qCuenta.Close;
  if qCuenta.Parameters.FindParam('caj') <> nil then
  begin
    qCuenta.Parameters.ParamByName('caj').Value  := vCajeroID;
    qCuenta.Parameters.ParamByName('fac').Value  := vFacturaID;
    qCuenta.Parameters.ParamByName('caja').Value := vCajaID;
  end;
  qCuenta.Open;

  QDetalle.Close;
  QDetalle.Parameters.ParamByName('caj').Value  := vCajeroID;
  QDetalle.Parameters.ParamByName('fac').Value  := vFacturaID;
  QDetalle.Parameters.ParamByName('caja').Value := vCajaID;
  QDetalle.Open;

  RefrescarDetallePOS;
end;

procedure TfrmDividirPago.PreguntarEImprimirFacturaYCopia;
begin
  if dm.QParametrospar_ImprimirFacturaRestBar.Value then
  begin
    if MessageDlg('Desea imprimir la factura?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
      ImprimirFacturaDivision(False);
  end
  else
    ImprimirFacturaDivision(False);

  if dm.QParametrospar_ImprimirCopiaRestBar.Value then
  begin
    if MessageDlg('Desea imprimir una copia?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
      ImprimirFacturaDivision(True);
  end;
end;

procedure TfrmDividirPago.DBGrid3CellClick(Column: TColumn);
begin
  if Column.FieldName = 'div_Pago' then
  begin
    QDetalle.Edit;
    if QDetalle.FindField('div_Pago').AsInteger = 1 then
       QDetalle.FindField('div_Pago').AsInteger := 0
    else
       QDetalle.FindField('div_Pago').AsInteger := 1;
    QDetalle.Post;
    DBGrid3.Refresh; // quiz�s m�s bien un Repaint.... pero en fin.
  end;
  DBGrid3.SelectedIndex :=0;
end;

procedure TfrmDividirPago.DBGrid3DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
var
  Check: Integer;
  R: TRect;
begin
  if Column.FieldName = 'div_Pago' then
  begin
    DBGrid3.Canvas.FillRect(Rect);
    Check := 0;
    if QDetalle.FindField('div_Pago').AsInteger = 1 then Check := DFCS_CHECKED;
    R:=Rect;
    InflateRect(R,-2,-2); //Disminuye el tama�o del CheckBox
    DrawFrameControl(DBGrid3.Canvas.Handle,R,DFC_BUTTON, DFCS_BUTTONCHECK or Check);
  end;
end;

procedure TfrmDividirPago.btSeleccionarClick(Sender: TObject);
begin
  DBGrid3CellClick(DBGrid3.Columns[3]);
end;

procedure TfrmDividirPago.btncfClick(Sender: TObject);
begin
  Application.CreateForm(TfrmNCF, frmNCF);
  frmNCF.ShowModal;
  if frmNCF.Acepto = 1 then
  begin
    vTipoNCF := frmNCF.Comprobante;
    vRazon_social := frmNCF.nombre;
    vRnc := frmNCF.rnc;
    frmNCF.Release;
{
    dm.Query1.Close;
    dm.Query1.SQL.Clear;
    dm.Query1.SQL.Add('select nombre from ncf where tipo = :cod');
    dm.Query1.Parameters.ParamByName('cod').Value := vTipoNCF;
    dm.Query1.Open;
    lbrnc := dm.Query1.FieldByName('nombre').AsString + #13 +
      vRazon_social + #13 + vRnc;  //}
  end;
end;

procedure TfrmDividirPago.btimprimirClick(Sender: TObject);
begin
if (QDetalle.RecordCount=0) then
begin
  if not qCuenta.IsEmpty then
     ImpCuenta(qCuentadiv_Grupo.Value,qCuentaValor.Value ,qCuentaTotalDescuento.Value);
end
else
begin
  MessageDlg('Debe terminar la division de la cuenta antes de proceder al pago.',mtError,[mbok],0);
end;
end;

function TfrmDividirPago.generarGrupo(vCajeroID, vFacturaID,
  vCajaID: integer): string;
var
  n: Integer;
begin
  n := 0;
  with qTemp, SQL do
  begin
    Close;
    Clear;
    Add('SELECT COUNT(DISTINCT div_Grupo) AS n FROM Factura_Items');
    Add('WHERE CajeroID  = '+IntToStr(vCajeroID));
    Add('  AND FacturaID = '+IntToStr(vFacturaID));
    Add('  AND CajaID    = '+IntToStr(vCajaID));
    Add('  AND div_Grupo IS NOT NULL AND RTRIM(div_Grupo) <> ''''');
    Open;
    if not IsEmpty then
      n := FieldByName('n').AsInteger;
    Close;
  end;
  Result := 'division-'+IntToStr(n + 1);
end;

procedure TfrmDividirPago.ImpCuenta(div_grupo: string; vSubTotalCta ,vDescItems:double);
var
  arch, ptocaja : textfile;
  s, s1, s2, s3, s4, s5, s6 : array[0..100] of char;
  a, NoDivision : integer;
  Puerto, lbItbis : String;
  TGrabado, TExento, TItbis,vMontoItbis ,vDescGlobal ,vTPropina ,vTotalFact
  ,vTDivDetalle ,vTFac ,vUsd ,vEur : Double;
begin
  NoDivision := StrToInt(copy(div_grupo,10,Length(div_grupo))); //NoDivision := StrToInt(copy(qCuentadiv_Grupo.AsString,10,Length(qCuentadiv_Grupo.AsString)));
  
  if not FileExists('puerto.ini') then
  begin
    assignfile(arch, 'puerto.ini');
    rewrite(arch);
    writeln(arch,'PRN');
  end
  else
  begin
    assignfile(arch, 'puerto.ini');
    reset(arch);
    readln(arch, Puerto);
  end;
  closefile(arch);

  assignfile(arch,'imp.bat');
  {I-}
  rewrite(arch);
  {I+}
  writeln(arch, 'type '+'fac.txt > '+Puerto);
  closefile(arch);

  assignfile(arch,'fac.txt');
  {I-}
  rewrite(arch);
  {I+}
  writeln(arch, dm.centro(dm.QEmpresaNombre.Value));
  memo1.Lines.Clear;
  memo1.Lines.Add(dm.QEmpresaDireccion.Value);
  for a := 0 to memo1.Lines.Count-1 do
  begin
    writeln(arch, dm.centro(memo1.lines[a]));
  end;
  writeln(arch, dm.centro(dm.QEmpresaTelefono.Value));
  writeln(arch, dm.centro('RNC:'+dm.QEmpresaRNC.Value));
  writeln(arch, ' ');

  writeln(arch, dm.centro('*** C U E N T A ***'));

  writeln(arch, ' ');
  writeln(arch, 'Fecha .: '+DateToStr(Date)+' Factura: '+formatfloat('0000000000',frmPOS.QFacturaFacturaID.value)+'-'+inttostr(NoDivision));
  writeln(arch, 'Caja ..: '+formatfloat('000',strtofloat('1'))+'        Hora ..: '+timetostr(Now));
  writeln(arch, 'Cajero : '+formatfloat('000',frmMain.Usuario)+' '+vNombUsuario);

//mesa
  writeln(arch, 'Mesa ..: '+vMesa+', '+vArea);

  frmPOS.QDetalle.DisableControls;
  frmPOS.QDetalle.First;
  while not frmPOS.QDetalle.eof do
  begin
{1} if frmPOS.QDetallediv_grupo.Value = div_grupo then
       begin
        s := '';
        FillChar(s, 5-length(format('%n',[frmPOS.QDetalleCantidad.value])),' ');
        //FillChar(s, 5-length('100'),' ');

        s1 := '';
        FillChar(s1, 10-length(trim(FORMAT('%n',[frmPOS.QDetalleValor.value]))), ' ');
        s2 := '';
        FillChar(s2, 22-length(copy(trim(frmPOS.QDetalleNombre.value),1,22)),' ');
        s3 := '';
        FillChar(s3, 8-length(trim(FORMAT('%n',[(frmPOS.QDetallePrecio.value)]))),' ');
        s4 := '';
        FillChar(s4, 8-length(trim(FORMAT('%n',[(frmPOS.QDetallePrecio.value ) * frmPOS.QDetalleCantidad.Value]))),' ');
        if frmPOS.QDetalleItbis.value and frmPos.ckItbis  then
           lbitbis := 'G'
        else
           lbitbis := 'E';

       IF frmPOS.QDetalleIngrediente.AsBoolean then begin //fernando
         IF frmPOS.QDetalleVisualizar.AsBoolean then
            writeln(arch, s+format('%n',[frmPOS.QDetalleCantidad.value])+' '+
                                        lbitbis+' '+copy(trim(frmPOS.QDetalleNombre.value),1,22)+s2+s1+format('%n',[frmPOS.QDetallePrecio.value]));
           end
       else begin
         writeln(arch, s+format('%n',[frmPOS.QDetalleCantidad.value])+' '+
                                     lbitbis+' '+copy(trim(frmPOS.QDetalleNombre.value),1,22)+s2+s1+format('%n',[frmPOS.QDetallePrecio.value]));
         if frmPOS.QDetalleItbis.Value and frmPos.ckItbis then
         begin
            TItbis  := TItbis+  frmPOS.QDetalleMontoItbis.Value;
            TGrabado := TGrabado + (frmPOS.QDetalleCantidad.Value * (frmPOS.QDetallePrecio.Value - frmPOS.QDetalleTotalDescuento.Value))
         end
         else
         begin
            TItbis:=0;
            TExento  := TExento  + (frmPOS.QDetalleCantidad.Value * (frmPOS.QDetallePrecio.Value  - frmPOS.QDetalleTotalDescuento.Value));
         end
         end;
       vTDivDetalle := vTDivDetalle + frmPOS.QDetalleValor.value;

    end;
    frmPOS.QDetalle.next;
  end;   //end if 1

  frmPOS.QDetalle.First;
  frmPOS.QDetalle.EnableControls;

  with qTemp,sql do
    begin
      Close;
      Clear;
      Add('select sum(Cantidad * Precio) as Valor from Factura_Items');
      Add('Where CajeroID  = '+IntToStr(vCajeroID));
      Add('  and FacturaID = '+IntToStr(vFacturaID));
      Add('  and CajaID    = '+IntToStr(vCajaID));
      Add('');
      Open;
      if not IsEmpty then begin
         vTFac := Fields[0].Value;
      Close;
    end;
{    if frmPOS.QFacturaDecuentoGlobal.Value then begin
       vDescuento := vSubTotalDiv * (frmPOS.QFacturaDescuento.Value / vSubTotalFact);
       vMontoItbis:= ((vSubTotalDiv - vDescuento) * dm.QEmpresaItbis.Value)/100.0;
       vTPropina  := ((vSubTotalDiv - vDescuento) * dm.QEmpresaPropina.Value)/100.0;
       end
    else begin
       vDescuento := vDescItems;
       vMontoItbis:= (TGrabado * dm.QEmpresaItbis.Value)/100.0;
       vTPropina  := ((TGrabado + TExento) * dm.QEmpresaPropina.Value)/100.0;
       end;
    vTotalFact := vSubTotalDiv+vMontoItbis+vTPropina+vDescuento;
}
    if frmPOS.QFacturaDecuentoGlobal.Value then begin
       vDescGlobal:= vSubTotalCta * (frmPOS.QFacturaDescuento.Value / vTFac);
       vMontoItbis:= TItbis;//((vSubTotalCta - vDescGlobal) * dm.QEmpresaItbis.Value)/100.0;
      // vTPropina  := ((vSubTotalCta - vDescGlobal) * dm.QEmpresaPropina.Value)/100.0;
       end
        else
        begin
        vDescGlobal:= vDescItems;
        vMontoItbis:= TItbis;//(TGrabado * dm.QEmpresaItbis.Value)/100.0;

    end;

      // end;

     if frmPOS.ckPropina then
        begin
        if frmPOS.QFacturaMesaID.Value > 0 then
          vTPropina  := ((TGrabado + TExento) * dm.QEmpresaPropina.Value)/100.0;
       end
       else
        vTPropina := 0;
        
    vTotalFact := vSubTotalCta+vMontoItbis+vTPropina+vDescGlobal;
    writeln(arch, '                       -----------------');

//------------formatos----------feramac ------
    s:= '';
    FillChar(s, 10-length(trim(FORMAT('%n',[vMontoItbis]))), ' ');
    s1:= '';
    FillChar(s1, 10-length(trim(FORMAT('%n',[vTotalFact]))), ' ');
    s2:= '';
    FillChar(s2, 10-length(trim(FORMAT('%n',[vTPropina]))), ' ');
    s3:= '';
    FillChar(s3, 10-length(trim(FORMAT('%n',[vDescGlobal]))), ' ');
    s4:= '';
    FillChar(s4, 10-length(trim(FORMAT('%n',[vSubTotalCta]))), ' ');
// -------------fin de los formatos -----------

    writeln(arch,'                   Sub-Total: '+s4+format('%n',[vSubTotalCta]));
    writeln(arch, ' ');
    writeln(arch,'                    Itbis   : '+s +format('%n',[vMontoItbis]));
    writeln(arch,'                    10% Ley : '+s2+format('%n',[vTPropina]));
    if (vDescGlobal > 0) then
    writeln(arch,'                   Descuento: '+s3+format('%n',[vDescGlobal]));
    writeln(arch, ' ');
    writeln(arch,'                   Total    : '+s1+format('%n',[vTotalFact]));
    writeln(arch, ' ');
    if dm.QEmpresaTasaUS.Value > 0 then
    begin
      vUsd := vTotalFact/dm.QEmpresaTasaUS.Value;
      s5:= '';
      FillChar(s5, 10-length(trim(FORMAT('%n',[vUsd]))), ' ');
      writeln(arch,'                    D�lares : '+s5+format('%n',[vUsd]));
    end;

    if dm.QEmpresaTasaEU.Value > 0 then
    begin
      vEur := vTotalFact/dm.QEmpresaTasaEU.Value;
      s6:= '';
      FillChar(s6, 10-length(trim(FORMAT('%n',[vEur]))), ' ');
      writeln(arch,'                    Euros   : '+s6+format('%n',[vEur]));
    end;

  writeln(arch, ' ');

  writeln(arch, dm.centro(dm.QEmpresaMensaje1.AsString));
  writeln(arch, dm.centro(dm.QEmpresaMensaje2.AsString));
  writeln(arch, dm.centro(dm.QEmpresaMensaje3.AsString));
  writeln(arch, dm.centro(dm.QEmpresaMensaje4.AsString));
  writeln(arch, ' ');
  writeln(arch, ' ');
  writeln(arch, ' ');
  writeln(arch, ' ');
  writeln(arch, ' ');
  writeln(arch, ' ');
  writeln(arch, ' ');
  writeln(arch, ' ');
  writeln(arch, ' ');
  //Corta el papel
  if not VarIsNull(dm.QEmpresaCortapapel.asString) then
    writeln(arch,dm.QEmpresaCortapapel.asString);
  closefile(Arch);
  winexec(pchar('imp.bat'),0);
  end; //end while
end;

procedure TfrmDividirPago.btDivisionClick(Sender: TObject);
var nombreGrupo : string;
begin
  if not QDetalle.IsEmpty then
     begin
       nombreGrupo := generarGrupo(QDetalle.Parameters.ParamByName('caj').Value,
                                   QDetalle.Parameters.ParamByName('fac').Value,
                                   QDetalle.Parameters.ParamByName('caja').Value);
       QDetalle.DisableControls;
       QDetalle.First;
       while not QDetalle.Eof do begin
       if QDetallediv_Pago.Value =1 then
          begin
            QDetalle.Edit;
            QDetallediv_Grupo.Value := nombreGrupo;
            QDetalle.Post;
          end;
          QDetalle.Next;
       end;
       QDetalle.First;
       QDetalle.EnableControls;
       QDetalle.UpdateBatch;
  end;
  QDetalle.Active := False;
  QDetalle.Active := True;
  qCuenta.Active  := False;
  qCuenta.Active  := True;
  frmPOS.QDetalle.Active := False;
    frmPOS.QDetalle.Parameters.ParamByName('caj').Value := vCajeroID;
    frmPOS.QDetalle.Parameters.ParamByName('fac').Value := vFacturaID;
    frmPOS.QDetalle.Parameters.ParamByName('caja').Value := vCajaID;
  frmPOS.QDetalle.Active := true;
  DBGrid1.SetFocus;
end;

procedure TfrmDividirPago.dsDetalleDataChange(Sender: TObject;
  Field: TField);
begin
  btDivision.Enabled := dsDetalle.DataSet.Active and not dsDetalle.DataSet.IsEmpty;
end;

procedure TfrmDividirPago.FormClose(Sender: TObject;
var Action: TCloseAction);
begin
  //qTemp.Free;
  //if qCuenta.RecordCount = 0 then Facturo := 1 ELSE Facturo:= 0;
end;


// --- Helpers ESC/POS ---
function ESC(const b: Byte): AnsiString;
begin
  Result := AnsiChar(#27) + AnsiChar(b);
end;

function GS(const b: Byte): AnsiString;
begin
  Result := AnsiChar(#29) + AnsiChar(b);
end;


function IntToBinRec(valor,digitos:integer):string;
 begin
  if digitos=0 then
   result:=''
  else
  begin
   if (valor AND (1 shl (digitos-1)))>0 then
    result:='1'+IntToBinRec(valor,digitos-1)
   else
    result:='0'+IntToBinRec(valor,digitos-1)
  end;
 end;



procedure WriteQR(var F: TextFile; const Data: AnsiString; ModuleSize: Byte = 6; ECLevel: Byte = 48);
var pL, pH: AnsiChar;
begin
  // centrar
  Write(F, ESC($61) + AnsiChar(#1));              // ESC a 1

  // modelo
  Write(F, GS($28) + 'k' + #04#00 + #49#65#50#00); // GS ( k 4 0 1 41 2 0
  // tama�o de m�dulo
  Write(F, GS($28) + 'k' + #03#00 + #49#67 + AnsiChar(ModuleSize));
  // nivel de correcci�n
  Write(F, GS($28) + 'k' + #03#00 + #49#69 + AnsiChar(ECLevel));

  // almacenar datos
  pL := AnsiChar((Length(Data)+3) and $FF);
  pH := AnsiChar((Length(Data)+3) shr 8);
  Write(F, GS($28) + 'k' + pL + pH + #49#80#48 + Data);

  // imprimir
  Write(F, GS($28) + 'k' + #03#00 + #49#81 + #48);

  // salto y volver a izquierda
  Writeln(F); Writeln(F);
  Write(F, ESC($61) + AnsiChar(#0));              // ESC a 0
end;


function TfrmDividirPago.CobrarDivision(vBtn: TSpeedButton; const div_grupo: string;
  vSubTotalDiv, vDescItems: double): Boolean;
  var
  arch, ptocaja : textfile;
  a : integer;
  s ,s1 ,s2 ,s3 ,s4 ,s5 ,s6 ,s7 ,s8 ,s9 : array[0..100] of char;
  Puerto ,lbitbis : string;
  vDescuento ,vSubTotalFact ,vMontoItbis ,vTPropina ,TItbis,TGrabado ,TExento ,vTotalFact
    ,MPagado ,vUsd ,vEur , vMonto ,vDevuelta: double;
  nuevoFac, tipoNcf: Integer;
  esUltimaDivision: Boolean;
    Servicio: FacturaElectronicaService;
   resultado: WideString;
   ok: Boolean;
   msg: string;
   prox: Int64;
   vl_emp_rnc:string;
   vl_cod_dgii:Integer;
   vl_tipoencf:Integer;
   vl_encf:string;

    qrURL, codSeg, fechaFirma, codDGII: String;
  aceptado   : Boolean;
   qrData: AnsiString;
  qrStr: string;
  qrBits: TBytes;
  qrW, qrH: Integer;
   encf: string;


begin
  Result := False;
  frmPOS.QDetalle.DisableControls;
  frmPOS.QDetalle.First;
  while not frmPOS.QDetalle.eof do
  begin
    if frmPOS.QDetallediv_grupo.Value = div_grupo then
       begin
       if frmPOS.QDetalleItbis.Value and frmPos.ckItbis  then
         begin
            TItbis  := TItbis+  frmPOS.QDetalleMontoItbis.Value;
            TGrabado := TGrabado + (frmPOS.QDetalleCantidad.Value * (frmPOS.QDetallePrecio.Value - frmPOS.QDetalleTotalDescuento.Value))
         end
         else
         begin
            TItbis:=0;
           TExento  := TExento  + (frmPOS.QDetalleCantidad.Value * (frmPOS.QDetallePrecio.Value - frmPOS.QDetalleTotalDescuento.Value));
         end
         end;

    frmPOS.QDetalle.Next;
  end;
  frmPOS.QDetalle.First;
  frmPOS.QDetalle.EnableControls;

  with qTemp,sql do
    begin
      Close;
      Clear;
      Add('select sum(Cantidad * Precio) as Valor from Factura_Items');
      Add('Where CajeroID  = '+IntToStr(vCajeroID));
      Add('  and FacturaID = '+IntToStr(vFacturaID));
      Add('  and CajaID    = '+IntToStr(vCajaID));
      Open;
      if not IsEmpty then
         vSubTotalFact := Fields[0].Value;
      Close;
    end;

    if frmPOS.QFacturaDecuentoGlobal.Value then begin
       vDescuento := vSubTotalDiv * (frmPOS.QFacturaDescuento.Value / vSubTotalFact);
       vMontoItbis:= TItbis;// ((vSubTotalDiv - vDescuento) * dm.QEmpresaItbis.Value)/100.0;
     //  vTPropina  := ((vSubTotalDiv - vDescuento) * dm.QEmpresaPropina.Value)/100.0;
       end
    else begin
       vDescuento := vDescItems;
        vMontoItbis:= TItbis;
     //  vMontoItbis:= (TGrabado * dm.QEmpresaItbis.Value)/100.0;
      // vTPropina  := ((TGrabado + TExento) * dm.QEmpresaPropina.Value)/100.0;
       end;

   if frmPOS.ckPropina then
        begin
        if frmPOS.QFacturaMesaID.Value > 0 then
          vTPropina  := ((TGrabado + TExento) * dm.QEmpresaPropina.Value)/100.0;
       end
       else
        vTPropina := 0;

    vTotalFact := vSubTotalDiv+vMontoItbis+vTPropina+vDescuento;

    If vBtn = btcash then
       begin
        Application.CreateForm(tfrmCash, frmCash);

        if frmPOS.ckItbis then frmCash.Total := qCuentaValor.Value + TItbis
        else
        frmCash.Total := qCuentaValor.Value;

        if frmPOS.ckPropina then frmCash.Total := frmCash.Total+ vTPropina;

        frmCash.Monto := 0;
        frmCash.Devuelta := frmCash.Total - frmCash.Monto;
        frmCash.lbdevuelta.Caption := 'PENDIENTE COBRAR'+#13+format('%n',[frmCash.Devuelta]);
        frmCash.ShowModal;
        if frmCash.Facturo = 1 then
           begin
            Facturo   := 1;
            vMonto    := frmCash.Monto;
            vDevuelta := frmCash.Devuelta;
           end;
      end;
    if vBtn = bttarjeta then
       begin
        Application.CreateForm(tfrmTarjeta, frmTarjeta);
        frmTarjeta.ShowModal;
        if frmTarjeta.Acepto = 1 then
           begin
            Facturo   := 1;
            if frmPOS.ckItbis then
            vMonto    := qCuentaValor.Value + TItbis
            else
            vMonto    := qCuentaValor.Value;

            if frmPOS.ckPropina then vMonto := vMonto+ vTPropina;

            vDevuelta := 0;
           end;
       end;
    if vBtn = btcredito then
       begin
        Application.CreateForm(tfrmNombreCliente, frmNombreCliente);
        frmNombreCliente.ShowModal;
        if frmNombreCliente.Acepto = 1 then
           begin
            Facturo   := 1;
            vMonto    := 0;
            vDevuelta := 0;
           end;
       end;

    if Facturo = 1 {(frmCash.Facturo = 1) or (frmTarjeta.Acepto = 1) or (frmNombreCliente.Acepto = 1)} then
    begin{1}
      CargarNCFDesdePOS;
      tipoNcf := ResolverTipoNCF;
      if dm.QParametrosUsa_FacturacionElectronica.Value and
         dm.QParametrosPAR_FE_DetenerFacturacion.Value then
      begin
        ok := ValidarENCFDisponible(
          DM.QEmpresaEmpresaID.Value, tipoNcf, msg, prox);
        if not ok then
        begin
          if Trim(msg) <> '' then
            ShowMessage('No hay comprobantes fiscales disponibles para esta factura.' + #13 + msg)
          else
            ShowMessage('No hay comprobantes fiscales disponibles para esta factura.');
          Exit;
        end;
      end;
      dm.Query1.Close;
      dm.Query1.SQL.Clear;
      dm.Query1.SQL.Add('select max(FacturaID) as maximo from Factura_RestBar');
      dm.Query1.SQL.Add('where CajaID = '+IntToStr(vCajaID));
      dm.Query1.Open;
      nuevoFac := dm.Query1.FieldByName('maximo').AsInteger + 1;
      esUltimaDivision := (qCuenta.RecordCount = 1);
      FUltimaDivision := esUltimaDivision;

      QFactura.Close;
      if esUltimaDivision then
      begin
        QFactura.Parameters.ParamByName('caj').Value  := vCajeroID;
        QFactura.Parameters.ParamByName('fac').Value  := vFacturaID;
        QFactura.Parameters.ParamByName('caja').Value := vCajaID;
        QFactura.Open;
        QFactura.Edit;
      end
      else
      begin
        QFactura.Parameters.ParamByName('caj').Value  := frmPOS.QFacturaCajeroID.Value;
        QFactura.Parameters.ParamByName('fac').Value  := -1;
        QFactura.Parameters.ParamByName('caja').Value := frmPOS.QFacturaCajaID.Value;
        QFactura.Open;
        QFactura.Append;
        QFacturaFacturaID.Value := nuevoFac;
        QFacturaCajeroID.Value  := frmMain.Usuario;
      end;

      QFacturanota.Value := trim(frmPOS.QFacturanota.AsString)
        +' | Cta.dividida ('+div_grupo+')';
      QFacturaUnificada.Clear;
      QFacturaemp_codigo.Value := frmPOS.QFacturaemp_codigo.Value;
      QFacturasuc_codigo.Value := frmPOS.QFacturasuc_codigo.Value;
      QFacturaHold.Value      := False;
      QFacturaEstatus.Value   := 'FAC';
      QFacturaTipoNCF.Value := tipoNcf;
      if tipoNcf = 1 then
        QFacturarnc.Clear
      else
        QFacturarnc.Value := vRnc;

      QFacturaNombre.Value    := vRazon_social;
      QFacturaHora.Value      := Now;
      QFacturaFecha.Value     := Date;
      QFacturaConItbis.Value   := frmPOS.QFacturaConItbis.Value;
      QFacturaConPropina.Value := frmPOS.QFacturaConPropina.Value;
      QFacturaimprimeNCF.Value := frmPOS.QFacturaimprimeNCF.Value;
      if QFacturaimprimeNCF.Value then
      begin
      frmPOS.qNCFAdm.Close;
      frmPOS.qNCFAdm.Parameters.ParamByName('tipo').Value := tipoNcf;
      frmPOS.qNCFAdm.Parameters.ParamByName('emp').Value  := DM.QEmpresaEmpresaID.Value;
      frmPOS.qNCFAdm.Open;
      if frmPOS.qNCFAdm.RecordCount > 0 then
      begin
        QFacturaNCF.Value := frmPOS.qNCFAdm.FieldByName('NCF').Value + FormatFloat('00000000', frmPOS.qNCFAdm.FieldByName('Sec').AsInteger);

      DM.ADOBar.Execute('update NCF set NCF_Secuencia = NCF_Secuencia + 1 where ncf_fijo = case when '+IntToStr(tipoNcf)+' = 1 then ''B02'''+
                                                                                            'when '+IntToStr(tipoNcf)+' = 2 then ''B01'''+
                                                                                            'when '+IntToStr(tipoNcf)+' = 3 then ''B15'''+
                                                                                            'when '+IntToStr(tipoNcf)+' = 4 then ''B14'' end '+
                                                                                            'and emp_codigo ='+IntToStr(DM.QEmpresaEmpresaID.Value));
      end;
      end;
      QFacturaExento.Value     := TExento;
      QFacturaGrabado.Value    := TGrabado;
      if frmPOS.ckItbis then
        QFacturaItbis.Value     := vMontoItbis else
        QFacturaItbis.Value     := 0;

     // QFacturaItbis.Value      := vMontoItbis;
      QFacturaPropina.Value    := vTPropina;
      QFacturaTotal.Value      := vTotalFact;
      QFacturaLlevar.Value     := frmPOS.QFacturaLlevar.Value;
      if vBtn = btcredito then
         begin
          QFacturaCredito.Value := True;
          QFacturaNombre.Value  := frmPOS.NombreCliente;//frmNombreCliente.edcliente.Text;
         end
      else
        QFacturaCredito.Value  := false;
      QFacturaPagado.Value     := vMonto;
      QFacturaDescuento.Value  := vDescuento;
      QFacturaCajaID.Value     := frmPOS.QFacturaCajaID.Value;
      QFacturamesaid.Value     := frmPOS.QFacturaMesaID.Value;
      QFacturaimprimeNCF.Value := frmPOS.QFacturaimprimeNCF.Value;
      QFacturaDecuentoGlobal.Value:= frmPOS.QFacturaDecuentoGlobal.Value;
      if qCuenta.RecordCount = 0 then begin
      QFacturaHold.Value    := False;
      QFacturaEstatus.Value := 'FAC';
      end;

      QFactura.Post;
      QFactura.UpdateBatch;

      if (vBtn = btcredito) and Assigned(frmNombreCliente) and
         (frmNombreCliente.Acepto = 1) then
      begin
        dm.Query1.Close;
        dm.Query1.SQL.Text :=
          'UPDATE Factura_RestBar SET CLI_CODIGO = :cli, mov_numero = :mov ' +
          'WHERE EMP_CODIGO = :emp AND SUC_CODIGO = :suc AND FacturaID = :fac ' +
          'AND CajeroID = :caj AND CajaID = :caja';
        dm.Query1.Parameters.ParamByName('cli').Value :=
          frmNombreCliente.QClientescli_codigo.Value;
        dm.Query1.Parameters.ParamByName('mov').Value := QFacturaFacturaID.Value;
        dm.Query1.Parameters.ParamByName('emp').Value := QFacturaemp_codigo.Value;
        dm.Query1.Parameters.ParamByName('suc').Value := QFacturasuc_codigo.Value;
        dm.Query1.Parameters.ParamByName('fac').Value := QFacturaFacturaID.Value;
        dm.Query1.Parameters.ParamByName('caj').Value := QFacturaCajeroID.Value;
        dm.Query1.Parameters.ParamByName('caja').Value := QFacturaCajaID.Value;
        dm.Query1.ExecSQL;
      end;

      if esUltimaDivision then
        LimpiarTodasDivisionesMesa
      else
      begin
        MoverItemsDivisionPorGrupo(div_grupo, QFacturaCajeroID.Value,
          QFacturaFacturaID.Value, vFacturaID);
        LimpiarGrupoDivisionCobrada(div_grupo, QFacturaCajeroID.Value,
          QFacturaFacturaID.Value);
      end;

      frmPOS.QForma.Close;
      frmPOS.QForma.Parameters.ParamByName('caj').Value  := QFacturaCajeroID.Value;
      frmPOS.QForma.Parameters.ParamByName('fac').Value  := QFacturaFacturaID.Value;
      frmPOS.QForma.Parameters.ParamByName('caja').Value := QFacturaCajaID.Value;
      frmPOS.QForma.Open;

      //Insertando Forma de Pago
      if vBtn = btcash then
         begin
          frmPOS.QForma.Insert;
          frmPOS.QFormaCajeroID.Value  := QFacturaCajeroID.Value;
          frmPOS.QFormaFacturaID.Value := QFacturaFacturaID.Value;
          frmPOS.QFormaCajaID.Value    := QFacturaCajaID.Value;
          frmPOS.QFormaDetalleID.Value := 1;
          frmPOS.QFormaMonto.Value     := vMonto;
          frmPOS.QFormaDevuelta.Value  := vDevuelta;
          frmPOS.QFormaForma.Value     := 'Efectivo';
          frmPOS.QForma.Post;
          frmPOS.QForma.UpdateBatch;
         end;

      if vBtn = bttarjeta then
         begin{1}
          frmPOS.QForma.Insert;
          frmPOS.QFormaCajeroID.Value  := QFacturaCajeroID.Value;
          frmPOS.QFormaFacturaID.Value := QFacturaFacturaID.Value;
          frmPOS.QFormaCajaID.Value    := QFacturaCajaID.Value;
          frmPOS.QFormaDetalleID.Value := 1;
          frmPOS.QFormaMonto.Value     := vMonto;
          frmPOS.QFormaDevuelta.Value  := vDevuelta;
          frmPOS.QFormaForma.Value     := 'Tarjeta';
          frmPOS.QFormaTipo_Tarjeta.Value   := frmTarjeta.ComboBox1.Text;
          frmPOS.QFormaAutorizacion.Value   := frmTarjeta.edautorizacion.Text;
          frmPOS.QFormaNumero_Tarjeta.Value := frmTarjeta.edtarjeta.Text;
          frmPOS.QFormaBanco.Value          := frmTarjeta.DBLookupComboBox1.Text;
          frmPOS.QForma.Post;
          frmPOS.QForma.UpdateBatch;
         end;

       if vBtn = btcredito then
         begin{1}
          frmPOS.QForma.Insert;
          frmPOS.QFormaCajeroID.Value  := QFacturaCajeroID.Value;
          frmPOS.QFormaFacturaID.Value := QFacturaFacturaID.Value;
          frmPOS.QFormaCajaID.Value    := QFacturaCajaID.Value;
          frmPOS.QFormaDetalleID.Value := 1;
          frmPOS.QFormaMonto.Value     := vMonto;
          frmPOS.QFormaDevuelta.Value  := vDevuelta;
          frmPOS.QFormaForma.Value     := 'Credito';
          frmPOS.QForma.Post;
          frmPOS.QForma.UpdateBatch;
         end;{1}
      MPagado  := vMonto;
      Devuelta := vDevuelta;

      IntegrarPostFacturacion(dm.ADOBar,
        QFacturaemp_codigo.Value, QFacturasuc_codigo.Value,
        QFacturaFacturaID.Value, vBtn = btcredito);

      if (qCuenta.RecordCount = 1) and (QDetalle.RecordCount = 0) then
      begin
        //Actualizando Mesa
        dm.Query1.Close;
        dm.Query1.SQL.Clear;
        dm.Query1.SQL.Add('update Mesas set alias='''', Estatus = :st where MesaID = :mesa');
        dm.Query1.Parameters.ParamByName('st').Value   := 'DISP';
        dm.Query1.Parameters.ParamByName('mesa').Value := QFacturaMesaID.Value;
        dm.Query1.ExecSQL;
      end;

    //Envio a DGII
   // Despu�s de QFactura.Post; y antes de "//Imprimiendo" / ImpTicket
      if dm.QParametrosUsa_FacturacionElectronica.Value then
      begin
            // eNCF opcional desde Factura_RestBar (puede ir vac�o)
            dm.Query1.Close;
            dm.Query1.SQL.Text :=
              'select eNCF from Factura_RestBar where EMP_CODIGO = :emp and SUC_CODIGO = :suc ' +
              'and FacturaID = :fac and CajeroID = :caj and CajaID = :caja';
            dm.Query1.Parameters.ParamByName('emp').Value := QFacturaemp_codigo.Value;
            dm.Query1.Parameters.ParamByName('suc').Value := QFacturaSUC_CODIGO.Value;
            dm.Query1.Parameters.ParamByName('fac').Value := QFacturaFacturaID.Value;
            dm.Query1.Parameters.ParamByName('caj').Value := QFacturaCajeroID.Value;
            dm.Query1.Parameters.ParamByName('caja').Value := QFacturaCajaID.Value;
            dm.Query1.Open;
            vl_encf := dm.Query1.FieldByName('eNCF').AsString;

            // cod_dgii (TipoeNCF) � mismo SELECT que en administrativo
            dm.Query1.Close;
            dm.Query1.SQL.Text :=
              'select cod_dgii from TipoNCF where tip_codigo = :tip and emp_codigo = :emp';
            dm.Query1.Parameters.ParamByName('tip').Value := QFacturaTipoNCF.Value;
            dm.Query1.Parameters.ParamByName('emp').Value := DM.QEmpresaEmpresaID.Value;
            dm.Query1.Open;
            vl_cod_dgii := dm.Query1.FieldByName('cod_dgii').AsInteger;



          try
            // emp_rnc
            dm.Query1.Close;
            dm.Query1.SQL.Text :=
              'select emp_rnc from empresas where emp_codigo = :emp';
            dm.Query1.Parameters.ParamByName('emp').Value := DM.QEmpresaEmpresaID.Value;
            dm.Query1.Open;
            vl_emp_rnc := dm.Query1.FieldByName('emp_rnc').AsString;
            Servicio := CoFacturaElectronicaService.Create;

            if dm.QParametrosintegracion_luganis.Value then
              ShowMessage('Integraci�n Luganis no est� implementada para RestBar en la DLL; use DGII.')
            else
            begin
              if (QFacturaTotal.Value <= 250000) and (vl_cod_dgii = 32) then
                resultado := Servicio.EnviarFacturaResumenResBar(
                  IntToStr(DM.QEmpresaEmpresaID.Value),
                  IntToStr(QFacturaSUC_CODIGO.Value),
                  IntToStr(QFacturaFacturaID.Value),
                  vl_emp_rnc,
                  vl_encf,
                  QFacturarnc.Value,
                  IntToStr(QFacturaCajeroID.Value),
                  IntToStr(QFacturaCajaID.Value),
                  IntToStr(vl_cod_dgii))
              else
                resultado := Servicio.EnviarFacturaElectronicaResBar(
                  IntToStr(DM.QEmpresaEmpresaID.Value),
                  IntToStr(QFacturaSUC_CODIGO.Value),
                  IntToStr(QFacturaFacturaID.Value),
                  vl_emp_rnc,
                  vl_encf,
                  QFacturarnc.Value,
                  IntToStr(QFacturaCajeroID.Value),
                  IntToStr(QFacturaCajaID.Value),
                  IntToStr(vl_cod_dgii));
            end;
          except
            on E: Exception do
              ; // log / ShowMessage(E.Message);
          end;
        end;

      vFacImpCajero  := QFacturaCajeroID.Value;
      vFacImpFactura := QFacturaFacturaID.Value;
      vFacImpCaja    := QFacturaCajaID.Value;

      Result := True;
      Exit;
    end;
  Result := False;
end;

procedure TfrmDividirPago.ImprimirFacturaDivision(const AEsCopia: Boolean);
  var
  arch, ptocaja : textfile;
  a : integer;
  s ,s1 ,s2 ,s3 ,s4 ,s5 ,s6 ,s7 ,s8 ,s9 : array[0..100] of char;
  Puerto ,lbitbis : string;
  vDescuento ,vMontoItbis ,vTPropina ,TGrabado ,TExento ,vTotalFact
    ,MPagado ,vUsd ,vEur , vMonto ,vDevuelta, vSubTotalDiv: double;
  encf: string;
  qrURL, codSeg, fechaFirma, codDGII: String;
  aceptado: Boolean;
  qrData: AnsiString;
begin
  if vFacImpFactura <= 0 then
    Exit;

  frmPOS.QFactura.Close;
  frmPOS.QFactura.Parameters.ParamByName('caj').Value  := vFacImpCajero;
  frmPOS.QFactura.Parameters.ParamByName('fac').Value  := vFacImpFactura;
  frmPOS.QFactura.Parameters.ParamByName('caja').Value := vFacImpCaja;
  frmPOS.QFactura.Open;
  if frmPOS.QFactura.IsEmpty then
    Exit;

  frmPOS.QForma.Close;
  frmPOS.QForma.Parameters.ParamByName('caj').Value  := vFacImpCajero;
  frmPOS.QForma.Parameters.ParamByName('fac').Value  := vFacImpFactura;
  frmPOS.QForma.Parameters.ParamByName('caja').Value := vFacImpCaja;
  frmPOS.QForma.Open;

  vMonto    := frmPOS.QFacturaPagado.Value;
  vDevuelta := 0;
  if frmPOS.QForma.RecordCount > 0 then
    vDevuelta := frmPOS.QFormaDevuelta.Value;
  vTotalFact := frmPOS.QFacturaTotal.Value;
  vDescuento := frmPOS.QFacturaDescuento.Value;
  vMontoItbis := frmPOS.QFacturaItbis.Value;
  vTPropina := frmPOS.QFacturaPropina.Value;
  TGrabado := frmPOS.QFacturaGrabado.Value;
  TExento := frmPOS.QFacturaExento.Value;
  MPagado := vMonto;
  vSubTotalDiv := TGrabado + TExento;
  Devuelta := vDevuelta;

//------------------la impresion de la fact----------------------------------------------------------
  if not FileExists('puerto.ini') then
  begin
    assignfile(arch, 'puerto.ini');
    rewrite(arch);
    writeln(arch,'PRN');
  end
  else
  begin
    assignfile(arch, 'puerto.ini');
    reset(arch);
    readln(arch, Puerto);
  end;
  closefile(arch);

  assignfile(arch,'imp.bat');
  {I-}
  rewrite(arch);
  {I+}
  writeln(arch, 'type '+'fac.txt > '+Puerto);
  closefile(arch);

  assignfile(arch,'fac.txt');
  {I-}
  rewrite(arch);
  {I+}
  writeln(arch, dm.centro(dm.QEmpresaNombre.Value));
  memo1.Lines.Clear;
  memo1.Lines.Add(dm.QEmpresaDireccion.Value);
  for a := 0 to memo1.Lines.Count-1 do
  begin
    writeln(arch, dm.centro(memo1.lines[a]));
  end;
  writeln(arch, dm.centro(dm.QEmpresaTelefono.Value));
  writeln(arch, dm.centro('RNC:'+dm.QEmpresaRNC.Value));
  writeln(arch, ' ');

{2}if not frmPOS.QFactura.IsEmpty then
  begin
    if AEsCopia then
    begin
      writeln(arch, ' ');
      writeln(arch, dm.centro('*** C O P I A ***'));
    end;
    if frmPOS.QFacturaCredito.Value then
       writeln(arch, dm.centro('* C R E D I T O *'))
    else
       writeln(arch, dm.centro('*** F A C T U R A ***'));
     if  dm.QParametrosUsa_FacturacionElectronica.Value  then
      begin
        dm.Query1.Close;
        dm.Query1.SQL.Clear;
        dm.Query1.SQL.Add('SELECT nombre_dgii FROM TipoNCF');
        dm.Query1.SQL.Add('WHERE cod_dgii = :cod_dgii');
        dm.Query1.Parameters.ParamByName('cod_dgii').Value := frmPOS.QFacturaTipoNCF.Value;
        dm.Query1.Open;

        writeln(arch, dm.centro(dm.Query1.FieldByName('nombre_dgii').AsString));
      end
      else
      begin
    dm.Query1.Close;
    dm.Query1.SQL.Clear;
    dm.Query1.SQL.Add('select tip_nombre Nombre from TipoNCF');
    dm.Query1.SQL.Add('where emp_codigo = :emp and tip_codigo = :tipo');
    dm.Query1.Parameters.ParamByName('emp').Value := DM.QEmpresaEmpresaID.Value;
    dm.Query1.Parameters.ParamByName('tipo').Value := frmPOS.QFacturaTipoNCF.Value;
    dm.Query1.Open;
    writeln(arch, dm.Centro(dm.Query1.FieldByName('Nombre').AsString));
    end;
    writeln(arch, ' ');
  dm.Query1.close;
  dm.Query1.SQL.clear;
  dm.Query1.SQL.add('select usu_nombre Nombre from usuarios');
  dm.Query1.SQL.add('where usu_codigo = :usu');
  dm.Query1.Parameters.parambyname('usu').Value := frmMain.Usuario;
  dm.Query1.open;

  writeln(arch, 'Fecha .: '+DateToStr(Date)+' Factura: '+formatfloat('0000000000',vFacImpFactura));
  writeln(arch, 'Caja ..: '+formatfloat('000',strtofloat('1'))+'        Hora ..: '+timetostr(Now));
  writeln(arch, 'Cajero : '+formatfloat('000',frmMain.Usuario)+' '+dm.query1.fieldbyname('Nombre').asstring);

  if not frmPOS.QFacturamesaid.IsNull then
  begin
    dm.Query1.Close;
    dm.Query1.SQL.Clear;
    dm.Query1.SQL.Add('select m.MesaID, m.Nombre, a.Nombre as Area, m.Estatus');
    dm.Query1.SQL.Add('from Mesas m, Areas a');
    dm.Query1.SQL.Add('where m.AreaID = a.AreaID');
    dm.Query1.SQL.Add('and m.mesaid = :cod');
    dm.Query1.SQL.Add('order by m.MesaID');
    dm.Query1.Parameters.ParamByName('cod').Value := frmPOS.QFacturamesaid.Value;
    dm.Query1.Open;
    writeln(arch, 'Mesa ..: '+dm.Query1.FieldByName('nombre').AsString+', '+dm.Query1.FieldByName('Area').AsString);
  end;

  if frmPOS.QFacturaNombre.Value <> '' then
  begin
    writeln(arch, 'Cliente: '+frmPOS.QFacturaNombre.Value);
    if Trim(frmPOS.QFacturarnc.Value) <> '' then
      writeln(arch, 'RNC ...: '+frmPOS.QFacturarnc.Value);
  end;

  if dm.QParametrosUsa_FacturacionElectronica.Value then
   begin
     dm.Query1.close;
        dm.Query1.sql.clear;
        dm.Query1.sql.add('select eNCF');
        dm.Query1.sql.add('from Factura_RestBar');
        dm.Query1.sql.add('where FacturaID = :FacturaID');
        dm.Query1.sql.add('and CajaID = :caja');
        dm.Query1.sql.add('and CajeroID = :cajero');

        dm.Query1.Parameters.parambyname('caja').Value   := vFacImpCaja;
        dm.Query1.Parameters.parambyname('cajero').Value   := vFacImpCajero;
        dm.Query1.Parameters.parambyname('FacturaID').Value := vFacImpFactura;

        dm.Query1.open;
        encf := dm.Query1.fieldbyname('eNCF').AsString;


     if Trim(encf) <> '' then
    begin
      writeln(arch, ' ');
      writeln(arch, 'eNCF: '+encf);
    end;

   //buscar vencimiento
        with dm.Query1 do
      begin
        Close;
        SQL.Clear;
        SQL.Add('SELECT TOP 1');
        SQL.Add('    FechaVencimientoSecuenciaDGII');
        SQL.Add('FROM SecuenciaDGII');
        SQL.Add('WHERE FechaVencimientoSecuenciaDGII IS NOT NULL');
        SQL.Add('  AND emp_codigo = :emp_codigo');
        SQL.Add('  AND tipo       = :tipo');
        SQL.Add('ORDER BY FechaVencimientoSecuenciaDGII');

        Parameters.ParamByName('emp_codigo').Value := frmPOS.QFacturaemp_codigo.Value;
        Parameters.ParamByName('tipo').Value       := frmPOS.QFacturaTipoeNCF.Value;
        Open;

        if not IsEmpty then
          Writeln(arch, 'Fecha Venc.: ' + FieldByName('FechaVencimientoSecuenciaDGII').AsString);
      end;
      end

   else
   begin

  if frmPOS.QFacturaNCF.Value <> '' then
    writeln(arch, 'NCF    : '+frmPOS.QFacturaNCF.Value);

  //buscar vencimiento
      with dm.Query1 do begin
      Close;
      sql.Clear;
      SQL.Add('select FechaVenc ');
      sql.Add('from NCF ');
      sql.Add('where VerificaVenc = 1');
      sql.Add('and NCF_Fijo   = LEFT(:NCF,3)');
      Parameters.ParamByName('NCF').Value        := frmPOS.QFacturaNCF.Text;
      Open;
      if not IsEmpty then
      writeln(arch,'Fecha Venc.: '+FieldByName('FechaVenc').text);
      end;
      writeln(arch,'');

   end;

  {if QFacturaNCF.Value <> '' then
    writeln(arch, 'NCF    : '+QFacturaNCF.Value);  }
    writeln(arch, '----------------------------------------');
    writeln(arch, 'CANT.       DESCRIPCION            TOTAL');
    writeln(arch, '----------------------------------------');
//---------------------------------------
    dm.Query1.Close;
    dm.Query1.SQL.Clear;
    dm.Query1.SQL.Add('Select Cantidad ,(Cantidad * Precio) as Valor ,Nombre ,Precio ,Itbis ,Ingrediente ,Visualizar ,Nombre  ');
    dm.Query1.SQL.Add('From Factura_Items');
    dm.Query1.SQL.Add('Where CajeroID = :cajeroid and FacturaID = :facturaid and CajaID = :cajaid');
    dm.Query1.SQL.Add('Order by DetalleID');
    dm.Query1.Parameters.ParamByName('cajeroid').Value  := vFacImpCajero;
    dm.Query1.Parameters.ParamByName('facturaid').Value := vFacImpFactura;
    dm.Query1.Parameters.ParamByName('cajaid').Value    := vFacImpCaja;
    dm.Query1.Open;
//---------------------------------------
    dm.Query1.First;
    while not dm.Query1.eof do
      begin {3}
            s := '';
            FillChar(s, 5-length(format('%n',[dm.Query1.FieldByName('Cantidad').AsFloat])),' ');
            s1 := '';
            FillChar(s1, 10-length(trim(FORMAT('%n',[dm.Query1.FieldByName('valor').AsFloat]))), ' ');
            s2 := '';
            FillChar(s2, 22-length(copy(trim(dm.Query1.FieldByName('Nombre').AsString),1,22)),' ');
            s3 := '';
            FillChar(s3, 8-length(trim(FORMAT('%n',[dm.Query1.FieldByName('Precio').AsFloat]))),' ');
            s4 := '';
            FillChar(s4, 8-length(trim(FORMAT('%n',[dm.Query1.FieldByName('Precio').AsFloat * dm.Query1.FieldByName('Cantidad').AsFloat]))),' ');

            if dm.Query1.FieldByName('Itbis').AsBoolean then
               lbitbis := 'G'
            else
               lbitbis := 'E';
            IF dm.Query1.FieldByName('Ingrediente').AsBoolean then begin {fernando}
               IF dm.Query1.FieldByName('Visualizar').AsBoolean then
                  writeln(arch, s+format('%n',[dm.Query1.FieldByName('Cantidad').AsFloat])+' '+
                  lbitbis+' '+copy(trim(dm.Query1.FieldByName('Nombre').asstring),1,22)+s2+s1+format('%n',[dm.Query1.FieldByName('Valor').AsFloat]));
               end
            else
              writeln(arch, s+format('%n',[dm.Query1.FieldByName('Cantidad').AsFloat])+' '+
              lbitbis+' '+copy(trim(dm.Query1.FieldByName('Nombre').asstring),1,22)+s2+s1+format('%n',[dm.Query1.FieldByName('Valor').AsFloat]));
            dm.Query1.next;
    end;{3}
        writeln(arch, '                       -----------------');
//        s := '';
//        FillChar(s, 10-length(trim(FORMAT('%n',[MontoItbis-TFac]))), ' ');
        s1:= '';
        FillChar(s1, 10-length(trim(FORMAT('%n',[MPagado]))), ' ');
        s2:= '';
        FillChar(s2, 10-length(trim(FORMAT('%n',[Devuelta]))), ' ');
        s3:= '';
        FillChar(s3, 10-length(trim(FORMAT('%n',[vMontoItbis]))), ' ');
        s4:= '';
        FillChar(s4, 10-length(trim(FORMAT('%n',[vTotalFact]))), ' ');
        s5:= '';
        FillChar(s5, 10-length(trim(FORMAT('%n',[vTPropina]))), ' ');
        s8:= '';
        FillChar(s8, 10-length(trim(FORMAT('%n',[vDescuento]))), ' ');
        s9:= '';
        FillChar(s9, 10-length(trim(FORMAT('%n',[vSubTotalDiv]))), ' ');

        writeln(arch,'                   Sub-Total: '+s9+format('%n',[vSubTotalDiv]));

            writeln(arch, ' ');
            writeln(arch,'                   Itbis    : '+s3+format('%n',[vMontoItbis]));
            writeln(arch,'                   10% Ley  : '+s5+format('%n',[vTPropina]));
            if (frmPOS.QFacturaDescuento.Value) > 0 then
                writeln(arch,'                   Descuento: '+s8+format('%n',[vDescuento]));
            writeln(arch, ' ');
            writeln(arch,'                   Total    : '+s4+format('%n',[vTotalFact]));
            writeln(arch,'                   Recibido : '+s1+format('%n',[MPagado]));
            writeln(arch,'                   Cambio   : '+s2+format('%n',[vDevuelta]));
            writeln(arch, ' ');
            writeln(arch, ' ');

            if dm.QEmpresaTasaUS.Value > 0 then
               begin
                vUsd := vTotalFact/dm.QEmpresaTasaUS.Value;
                s6:= '';
                FillChar(s6, 10-length(trim(FORMAT('%n',[vUsd]))), ' ');
                writeln(arch,'                    D�lares : '+s6+format('%n',[vUsd]));
               end;

            if dm.QEmpresaTasaEU.Value > 0 then
               begin
                vEur := vTotalFact/dm.QEmpresaTasaEU.Value;
                s7:= '';
                FillChar(s7, 10-length(trim(FORMAT('%n',[vEur]))), ' ');
                writeln(arch,'                    Euros   : '+s7+format('%n',[vEur]));
              end;
        if frmPOS.QFacturaCredito.Value then
           begin
            writeln(arch, ' ');
            writeln(arch, ' ');
            writeln(arch, '--------------------------');
            writeln(arch, 'Firma del Cliente');
            writeln(arch, ' ');
            writeln(arch, ' ');
            writeln(arch, ' ');
            writeln(arch, ' ');
            writeln(arch, '--------------------------');
            writeln(arch, 'Firma del Supervisor');
          end;

            writeln(arch, ' ');
            writeln(arch, dm.centro(dm.QEmpresaMensaje1.AsString));
            writeln(arch, dm.centro(dm.QEmpresaMensaje2.AsString));
            writeln(arch, dm.centro(dm.QEmpresaMensaje3.AsString));
            writeln(arch, dm.centro(dm.QEmpresaMensaje4.AsString));
            writeln(arch, ' ');
            writeln(arch, ' ');
            writeln(arch, ' ');

              // ===== QR e-CF (RestBar) =====
    if dm.QParametrosUsa_FacturacionElectronica.Value then
    begin
      dm.Query1.Close;
      dm.Query1.SQL.Clear;
      dm.Query1.SQL.Add('SELECT');
      dm.Query1.SQL.Add('    rb.eNCF,');
      dm.Query1.SQL.Add('    rb.codigoseguridad,');
      dm.Query1.SQL.Add('    rb.fechafirma,');
      dm.Query1.SQL.Add('    t.cod_dgii,');
      dm.Query1.SQL.Add('    ISNULL(rb.AceptadoDGII, 0) AS AceptadoDGII,');
      dm.Query1.SQL.Add('    dbo.fnGenerarUrlTimbre(');
      dm.Query1.SQL.Add('        1,');
      dm.Query1.SQL.Add('        e.emp_rnc,');
      dm.Query1.SQL.Add('        ISNULL(NULLIF(LTRIM(RTRIM(rb.rnc)), ''''), ''0''),');
      dm.Query1.SQL.Add('        ISNULL(rb.eNCF, ''''),');
      dm.Query1.SQL.Add('        ISNULL(rb.fechafirma, rb.Fecha),');
      dm.Query1.SQL.Add('        ISNULL(rb.DGII_MontoEnviado, 0),');
      dm.Query1.SQL.Add('        rb.fechafirma,');
      dm.Query1.SQL.Add('        ISNULL(rb.codigoseguridad, '''')');
      dm.Query1.SQL.Add('    ) AS UrlCodigoQR');
      dm.Query1.SQL.Add('FROM Factura_RestBar rb');
      dm.Query1.SQL.Add('INNER JOIN Empresas e ON e.emp_codigo = rb.EMP_CODIGO');
      dm.Query1.SQL.Add('LEFT JOIN TipoNCF t ON t.emp_codigo = rb.EMP_CODIGO AND t.tip_codigo = rb.TipoNCF');
      dm.Query1.SQL.Add('WHERE rb.EMP_CODIGO = :emp');
      dm.Query1.SQL.Add('  AND rb.SUC_CODIGO = :suc');
      dm.Query1.SQL.Add('  AND rb.FacturaID  = :ticket');
      dm.Query1.SQL.Add('  AND rb.CajeroID   = :usu');
      dm.Query1.SQL.Add('  AND rb.CajaID     = :caja');

      dm.Query1.Parameters.ParamByName('emp').Value    := DM.QEmpresaEmpresaID.Value;
      dm.Query1.Parameters.ParamByName('suc').Value    := frmPOS.QFacturasuc_codigo.Value;
      dm.Query1.Parameters.ParamByName('ticket').Value := vFacImpFactura;
      dm.Query1.Parameters.ParamByName('usu').Value    := vFacImpCajero;
      dm.Query1.Parameters.ParamByName('caja').Value   := vFacImpCaja;
      dm.Query1.Open;

      if not dm.Query1.IsEmpty then
      begin
        qrURL      := dm.Query1.FieldByName('UrlCodigoQR').AsString;
        codSeg     := dm.Query1.FieldByName('codigoseguridad').AsString;
        fechaFirma := dm.Query1.FieldByName('fechafirma').AsString;
        codDGII    := dm.Query1.FieldByName('cod_dgii').AsString;
        aceptado   := dm.Query1.FieldByName('AceptadoDGII').AsBoolean;

        // Mostrar QR aunque no est� aceptado
        if Trim(qrURL) <> '' then
        begin
          qrData := AnsiString(Trim(qrURL));
          WriteQR(arch, qrData, 6, 48);
          if Trim(fechaFirma) <> '' then
            Writeln(arch, 'Fecha firma: ' + fechaFirma);
          if Trim(codSeg) <> '' then
            Writeln(arch, 'Cod. seguridad: ' + codSeg);

        end;
      end;
    end;

            {writeln(arch, ' ');
            writeln(arch, ' ');
            writeln(arch, ' ');
            writeln(arch, ' ');
            writeln(arch, ' ');
            writeln(arch, ' ');        }
  //Corta el papel
  if not VarIsNull(dm.QEmpresaCortapapel.asString) then
    writeln(arch, dm.QEmpresaCortapapel.asString);
  closefile(Arch);
  winexec(pchar('imp.bat'), 0);
  end;
end;

procedure TfrmDividirPago.bttarjetaClick(Sender: TObject);
begin
  if QDetalle.RecordCount <> 0 then
  begin
    MessageDlg('Debe terminar la division de la cuenta antes de proceder al pago.', mtError, [mbOK], 0);
    Exit;
  end;
  if qCuenta.IsEmpty then Exit;

  if CobrarDivision(bttarjeta, qCuentadiv_Grupo.Value,
    qCuentaValor.Value, qCuentaTotalDescuento.Value) then
  begin
    FinalizarDespuesCobro;
    PreguntarEImprimirFacturaYCopia;
  end;
end;

procedure TfrmDividirPago.dsCuentaDataChange(Sender: TObject;
  Field: TField);
var hayDivisiones: Boolean;
begin
  hayDivisiones := dsCuenta.DataSet.Active and not dsCuenta.DataSet.IsEmpty;
  btcash.Enabled     := hayDivisiones;
  bttarjeta.Enabled  := hayDivisiones;
  btcredito.Enabled  := hayDivisiones;
  btimprimir.Enabled := hayDivisiones;
  btncf.Enabled      := hayDivisiones;
end;

procedure TfrmDividirPago.btrestaClick(Sender: TObject);
var nombreGrupo : string;
begin
  nombreGrupo := qCuentadiv_Grupo.AsString;
  if (not qCuenta.IsEmpty) and (MessageDlg('Confirma eliminara la DIVISION : [ [  '+nombreGrupo+'  ] ]',mtConfirmation ,mbOKCancel,0)= mrOK) then
     begin
      with qTemp,sql do
        begin
          Close;
          Clear;
          Add('update factura_items set div_Grupo = NULL, div_Pago= 0');
          Add('Where div_Grupo  = '+QuotedStr(nombreGrupo));
          Add('  and FacturaID = '+IntToStr(vFacturaID));
          ExecSQL;
        end;
      QDetalle.Active := false;
      QDetalle.Active := true;
      qCuenta.Active  := false;
      qCuenta.Active  := true;
      frmPOS.QDetalle.Active := false;
      frmPOS.QDetalle.Parameters.ParamByName('caj').Value := vCajeroID;
      frmPOS.QDetalle.Parameters.ParamByName('fac').Value := vFacturaID;
      frmPOS.QDetalle.Parameters.ParamByName('caja').Value := vCajaID;
      frmPOS.QDetalle.Active := true;  //}
    end;
end;

procedure TfrmDividirPago.DividirItem( const FacturaID: Integer; const DetalleID: Integer);
var
  i, cantidad: Integer;
begin
  QDetalle.DisableControls;
  try
     dm.Query1.Close;
     dm.Query1.SQL.Clear;
     dm.Query1.SQL.Add('EXEC DividirItem :detalleid, :facturaid');
     dm.Query1.Parameters.ParamByName('facturaid').Value := FacturaID;
     dm.Query1.Parameters.ParamByName('detalleid').Value := DetalleID;
     dm.Query1.ExecSQL;

     QDetalle.Close;
     QDetalle.Open

  finally
    QDetalle.EnableControls;
  end;
end;

procedure TfrmDividirPago.cmdSegregarClick(Sender: TObject);
begin
    DividirItem(QDetalleFacturaID.Value, QDetalleDetalleID.Value);
end;

end.

