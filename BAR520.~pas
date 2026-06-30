unit BAR520;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DBCtrls, ComCtrls, Buttons, Grids, DBGrids, DB, ADODB,
  IBCustomDataSet;

type
  TfrmDev = class(TForm)
    btclose: TSpeedButton;
    btrefresh: TSpeedButton;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    fecha1: TDateTimePicker;
    fecha2: TDateTimePicker;
    GroupBox2: TGroupBox;
    ckCajero: TCheckBox;
    DBLookupComboBox1: TDBLookupComboBox;
    QFactura: TADOQuery;
    QFacturaFecha: TDateTimeField;
    QFacturaCajaID: TIntegerField;
    QFacturaCajeroID: TIntegerField;
    QFacturaFacturaID: TIntegerField;
    QFacturaEstatus: TWideStringField;
    QFacturaNCF: TWideStringField;
    QFacturaItbis: TBCDField;
    QFacturaPropina: TBCDField;
    QFacturaDescuento: TBCDField;
    QFacturaTotal: TBCDField;
    QFacturaCliente: TWideStringField;
    dsFactura: TDataSource;
    Query1: TADOQuery;
    QCajeros: TADOQuery;
    dsCajeros: TDataSource;
    DBGrid1: TDBGrid;
    Memo1: TMemo;
    QFacturausu_nombre: TStringField;
    btaceptar: TSpeedButton;
    QDevolucion: TADOQuery;
    QDevolucionDEV_DESCUENTO: TFloatField;
    QDevolucionDEV_DEVDINERO: TIBStringField;
    QDevolucionDEV_FECHA: TDateTimeField;
    QDevolucionDEV_ITBIS: TFloatField;
    QDevolucionDEV_NUMERO: TIntegerField;
    QDevolucionDEV_STATUS: TIBStringField;
    QDevolucionDEV_TOTAL: TFloatField;
    QDevolucionEMP_CODIGO: TIntegerField;
    QDevolucionFAC_FORMA: TIBStringField;
    QDevolucionFAC_NUMERO: TIntegerField;
    QDevolucionTFA_CODIGO: TIntegerField;
    QDevolucionUSU_CODIGO: TIntegerField;
    QDevolucionVEN_CODIGO: TIntegerField;
    QDevolucionCLI_CODIGO: TIntegerField;
    QDevolucionCAJ_CODIGO: TIntegerField;
    QDevolucionDEV_PORCCOMISION: TFloatField;
    QDevolucionDEV_COMISION: TFloatField;
    QDevolucionDEV_NOMBRE: TIBStringField;
    QDevolucionBAN_CODIGO: TIntegerField;
    QDevolucionCHE_NUMERO: TIntegerField;
    QDevoluciondev_conitbis: TStringField;
    QDevolucionsuc_codigo: TIntegerField;
    QDevoluciondev_selectivo_ad: TBCDField;
    QDevoluciondev_selectivo_con: TBCDField;
    QDevolucionSubTotal: TFloatField;
    QDevolucionNCF: TStringField;
    QDevolucionticket_caja: TIntegerField;
    QDevolucionticket_cajero: TIntegerField;
    QDevolucionticket_numero: TIntegerField;
    QDevolucionticket_fecha: TDateTimeField;
    QDevolucionmot_codigo: TIntegerField;
    QDevoluciondev_fecha_factura: TDateTimeField;
    QDevolucionDEV_RECARGO: TCurrencyField;
    QDevolucionTDesc_gral: TCurrencyField;
    QDevolucioncTDescuentogral: TCurrencyField;
    QDevolucionporc_desc_gral: TCurrencyField;
    QDevolucionDEV_TASA: TCurrencyField;
    QDevolucionDEV_HORA: TStringField;
    QDetalleFac: TADOQuery;
    QDetalleFacProductoID: TIntegerField;
    QDetalleFacNombre: TWideStringField;
    QDetalleFacPrecio: TBCDField;
    QDetalleFacItbis: TBooleanField;
    QDetalleFacDetalleID: TIntegerField;
    QDetalleFacConItbis: TStringField;
    QDetalleFacValor: TFloatField;
    QDetalleFacCantidad: TFloatField;
    QDetalleFacFacturaID: TIntegerField;
    QDetalleFacIngrediente: TBooleanField;
    QDetalleFacCantidadIngredientes: TIntegerField;
    QDetalleFacDescuento: TBCDField;
    QDetalleFacCajeroID: TIntegerField;
    QDetalleFacVisualizar: TBooleanField;
    QDetalleFacImprimir: TBooleanField;
    QDetalleFacCajaID: TIntegerField;
    QDetalleFacCosto: TBCDField;
    QDetalleFacTotalDescuento: TFloatField;
    QDetalleFacSubTotal: TCurrencyField;
    QDetalleFacMontoItbis: TCurrencyField;
    QDetalleFacTotalItbis: TCurrencyField;
    QDetalle: TADOQuery;
    QDetalleEMP_CODIGO: TIntegerField;
    QDetalleDEV_NUMERO: TIntegerField;
    QDetalleDET_SECUENCIA: TIntegerField;
    QDetallePRO_CODIGO: TIntegerField;
    QDetalleFAM_CODIGO: TIntegerField;
    QDetalleDEV_COSTO: TFloatField;
    QDetalleDEV_PRECIO: TFloatField;
    QDetallePRO_NOMBRE: TIBStringField;
    QDetalleDEV_CANTIDAD: TFloatField;
    QDetalleDEP_CODIGO: TIntegerField;
    QDetalleDEV_TOPECANTIDAD: TFloatField;
    QDetalleDEV_CONITBIS: TIBStringField;
    QDetalleDEV_DESCUENTO: TFloatField;
    QDetalleDEV_ITBIS: TFloatField;
    QDetalleDEV_CANTFACTURADA: TFloatField;
    FloatField1: TFloatField;
    QDetalleCalcDesc: TFloatField;
    QDetallePrecioItbis: TFloatField;
    QDetalleCalcItbis: TFloatField;
    QDetalleDevuelta: TFloatField;
    QDetallePRO_RORIGINAL: TIBStringField;
    QDetallePRO_RFABRIC: TIBStringField;
    QDetallePRO_SERVICIO: TIBStringField;
    QDetalleMAR_CODIGO: TIntegerField;
    QDetalleVEN_CODIGO: TIntegerField;
    QDetalleDET_COMISION: TFloatField;
    QDetalleDET_ESCALA: TIBStringField;
    QDetalleDET_MEDIDA: TIBStringField;
    QDetalleNeto: TFloatField;
    QDetallesuc_codigo: TIntegerField;
    QDetalledet_lote: TIntegerField;
    QDetalledet_fechavence: TDateTimeField;
    QDetalledet_cant_oferta: TBCDField;
    QDetalledet_selectivo_ad: TBCDField;
    QDetalledet_selectivo_con: TBCDField;
    QDetallealm_codigo: TIntegerField;
    QDetalleDEV_RECARGO: TCurrencyField;
    QDetalleCalcRecargo: TCurrencyField;
    QDetallerecargo: TCurrencyField;
    CurrencyField1: TCurrencyField;
    QDetalleTotalPrecio: TCurrencyField;
    QDetalleCalcItbis2: TCurrencyField;
    QCajerosUsuarioID: TIntegerField;
    QCajerosNombre: TStringField;
    procedure FormActivate(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btrefreshClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btcloseClick(Sender: TObject);
    procedure ckCajeroClick(Sender: TObject);
    procedure aplicadevolucion();
    procedure QDevolucionBeforePost(DataSet: TDataSet);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmDev: TfrmDev;

implementation
 uses  BAR00, BAR04;

{$R *.dfm}

procedure TfrmDev.FormActivate(Sender: TObject);
begin
 if not QFactura.Active then
  begin
    btrefreshClick(Self);

    QCajeros.Open;
    DBLookupComboBox1.KeyValue := QCajerosUsuarioID.Value;
  end;
end;

procedure TfrmDev.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if (ssAlt in Shift) and (key = vk_f4) then abort;
  if key = vk_f1 then btcloseClick(Self);
  if key = vk_f2 then btrefreshClick(Self);
end;

procedure TfrmDev.btrefreshClick(Sender: TObject);
begin
  QFactura.Close;
  QFactura.SQL := Memo1.Lines;
   if ckCajero.Checked then
     QFactura.SQL.Add('and f.cajeroID = '+IntToStr(DBLookupComboBox1.KeyValue));
     
  QFactura.SQL.Add('order by f.FacturaID');


  QFactura.Parameters.ParamByName('fec1').DataType := ftDateTime;
  QFactura.Parameters.ParamByName('fec2').DataType := ftDateTime;
  QFactura.Parameters.ParamByName('fec1').Value := fecha1.DateTime;
  QFactura.Parameters.ParamByName('fec2').Value := fecha2.DateTime;
  
  QFactura.Open;
  DBGrid1.SetFocus;
end;

procedure TfrmDev.FormCreate(Sender: TObject);
begin
Memo1.Lines := QFactura.SQL;

  btclose.Caption    := 'F1'+#13+'SALIR';
  btrefresh.Caption  := 'F2'+#13+'CONSULTAR';
  fecha1.Date := date;
  fecha2.Date := date;

  QCajeros.Close;
  QCajeros.Open;
end;

procedure TfrmDev.btcloseClick(Sender: TObject);
begin
Close;
end;

procedure TfrmDev.ckCajeroClick(Sender: TObject);
begin
 // Verifica si el checkbox está marcado
  if ckCajero.Checked then
    // Habilita el DBLookupComboBox si el checkbox está marcado
    DBLookupComboBox1.Enabled := True
  else
    // Deshabilita el DBLookupComboBox si el checkbox no está marcado
    DBLookupComboBox1.Enabled := False;
end;

procedure TfrmDev.aplicadevolucion();
begin
 //verificando si el cierre se hizo para esta fecha
  dm.Query1.Close;
  dm.Query1.SQL.Clear;
  dm.Query1.SQL.Add('select cie_fecha from cierre');
  dm.Query1.SQL.Add('where emp_codigo = :emp');
  dm.Query1.SQL.Add('and cie_fecha = :fec');
  dm.Query1.Parameters.ParamByName('emp').Value := DM.QEmpresaEmpresaID.Value;
  dm.Query1.Parameters.ParamByName('fec').Value    := QFacturaFecha.Value;
  dm.Query1.Open;
  if dm.Query1.RecordCount > 0 then
  begin
    MessageDlg('LA DEVOLUCION NO PUEDE REALIZARSE, DEBIDO A QUE ESTE'+#13+
               'DIA FUE CERRADO.',mtError,[mbok],0);
    DBGrid1.setfocus;
  end
  else
  begin
      QDevolucionTFA_CODIGO.value := QFacturaFacturaID.Value;

          QDevolucion.Post;
          QDevolucion.UpdateBatch;
         
          //grabando detalle
          QDetalle.disablecontrols;
          QDetalleFac.first;
          while not QDetalleFac.eof do
          begin
            QDetalle.edit;
            QDetalleDEV_NUMERO.value    := QDevolucionDEV_NUMERO.value;
            QDetallesuc_codigo.Value    := QDevolucionsuc_codigo.Value;
            QDetallealm_codigo.Value    := DM.QParametrospar_almacendevolucion.Value;
            QDetalle.post;
            QDetalle.next;
          end;
          QDetalle.enablecontrols;
          QDetalle.UpdateBatch;


          dm.Query1.close;
          dm.Query1.sql.clear;
          dm.Query1.sql.add('execute pr_graba_dev :emp, :suc, :num, :act, :alm');
          dm.Query1.Parameters.parambyname('emp').Value :=DM.QEmpresaEmpresaID.Value;
          dm.Query1.Parameters.parambyname('num').Value := QDevolucionDEV_NUMERO.value;
          dm.Query1.Parameters.parambyname('suc').Value := QDevolucionsuc_codigo.value;

  end;
  
end;
procedure TfrmDev.QDevolucionBeforePost(DataSet: TDataSet);
begin
  if QDevolucion.State = dsinsert then
  begin
    dm.Query1.close;
    dm.Query1.sql.clear;
    dm.Query1.sql.add('select isnull(max(dev_numero),0) as maximo');
    dm.Query1.sql.add('from devolucion');
    dm.Query1.sql.add('where emp_codigo = :emp');
    dm.Query1.sql.add('and suc_codigo = :suc');
    dm.Query1.Parameters.parambyname('emp').Value := DM.QEmpresaEmpresaID.Value;
    dm.Query1.Parameters.parambyname('suc').Value := QDevolucionsuc_codigo.Value;
    dm.Query1.open;
    QDevolucionDEV_NUMERO.value := dm.Query1.fieldbyname('maximo').asinteger + 1;
  end;

    QDevolucionticket_caja.Clear;
    QDevolucionticket_cajero.Clear;
    QDevolucionticket_numero.Clear;
    QDevolucionticket_fecha.Clear;
    QDevolucionTFA_CODIGO.Clear;
    QDevolucionFAC_FORMA.Clear;
    QDevolucionFAC_NUMERO.Clear;

   QDevolucionDEV_HORA.Value := TimeToStr(Time);

end;

end.
