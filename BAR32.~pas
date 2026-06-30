unit BAR32;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Buttons, StdCtrls, ExtCtrls, DB,DIMime, ADODB, Grids, DBGrids, ToolWin, ComCtrls;


type
  TfrmNombreCliente = class(TForm)
    ToolBar1: TToolBar;
    btsalir: TSpeedButton;
    Edit1: TEdit;
    DBGrid1: TDBGrid;
    DBGrid2: TDBGrid;
    dsClientes: TDataSource;
    QClientes: TADOQuery;
    QClientesemp_codigo: TIntegerField;
    QClientescli_codigo: TIntegerField;
    QClientescli_nombre: TStringField;
    QClientescli_rnc: TStringField;
    QClientescli_cedula: TStringField;
    QClientescli_limite: TBCDField;
    QClientescli_balance: TBCDField;
    QClientesemp_numero: TIntegerField;
    QClientescli_direccion: TStringField;
    QClientescli_localidad: TStringField;
    QClientestfa_codigo: TIntegerField;
    QClientescli_facturarbce: TStringField;
    QClientescli_facturarvencida: TStringField;
    QClientesAumento: TBCDField;
    btaceptar: TSpeedButton;
    procedure FormCreate(Sender: TObject); 
    procedure btsalirClick(Sender: TObject);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBGrid2KeyPress(Sender: TObject; var Key: Char);
    procedure FormActivate(Sender: TObject);
    procedure btaceptarClick(Sender: TObject);


  private
    { Private declarations }
  public
    { Public declarations }
    Acepto : integer;
    seleccion : integer;
    total : double;
    procedure grabarcredito();
  end;

var
  frmNombreCliente: TfrmNombreCliente;

implementation

uses BAR04, BAR14, BAR01, BAR00;

{$R *.dfm}

procedure TfrmNombreCliente.FormCreate(Sender: TObject);
begin
  seleccion := 0;
end;


procedure TfrmNombreCliente.btsalirClick(Sender: TObject);
begin
  seleccion := 0;
  Close;
end;

procedure TfrmNombreCliente.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then
  begin
    QClientes.Close;
    QClientes.SQL.Clear;
    QClientes.SQL.Add('select');
    QClientes.SQL.Add('distinct emp_codigo, cli_codigo, cli_nombre, cli_rnc, cli_cedula, cli_direccion,cli_localidad,');
    QClientes.SQL.Add('isnull(cli_limite,0) as cli_limite, cli_balance, emp_numero, cli_telefono, tfa_codigo,');
    QClientes.SQL.Add('cli_facturarbce, cli_facturarvencida, Aumento');
    QClientes.SQL.Add('from clientes');
    QClientes.SQL.Add('where cli_nombre+isnull(cli_referencia,'+QuotedStr('')+')+isnull(cli_telefono,'+QuotedStr('')+') like '+QuotedStr('%'+Edit1.Text+'%'));
    QClientes.SQL.Add('and cli_status = '+QuotedStr('ACT'));
    QClientes.SQL.Add('order by cli_nombre');
    QClientes.Open;
    DBGrid1.SetFocus;

    key := #0;
  end;
end;

procedure TfrmNombreCliente.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
 if key = vk_escape then btsalirClick(Self);
end;

procedure TfrmNombreCliente.grabarcredito() ;
var
  autorizar : boolean;
begin
   if QClientes.RecordCount > 0 then
    begin
      autorizar := false;
      if total > (QClientescli_limite.Value - QClientescli_balance.Value) then
        autorizar := true
      else if StrToFloat(format('%10.2F',[QClientescli_balance.Value])) > 0  then
      begin
        if QClientescli_facturarbce.AsString <> 'S' then
          autorizar := true
        else
        begin
          dm.Query1.Close;
          dm.Query1.SQL.Clear;
          dm.Query1.SQL.Add('select * from PR_BUSCA_VENCIDO (:emp, :cli, :fec)');
          dm.Query1.Parameters.ParamByName('emp').Value := QClientesemp_codigo.Value;
          dm.Query1.Parameters.ParamByName('cli').Value := QClientescli_codigo.Value;
          dm.Query1.Parameters.ParamByName('fec').Value := Date;
          dm.Query1.Open;

          if (QClientescli_facturarvencida.AsString <> 'S') and (dm.Query1.FieldByName('vencido').asstring = 'S') then
            autorizar := true
        end;
      end;

      if autorizar then
      begin
        MessageDlg('FAVOR COMUNICARSE CON EL DEPARTAMENTO DE CREDITO',mtError,[mbok],0);
        Application.CreateForm(tfrmAcceso, frmAcceso);
       // frmAcceso.lbtitulo.Caption := 'Digite la clave del Supervisor';
        frmAcceso.ShowModal;

        dm.Query1.Close;
        dm.Query1.SQL.Clear;
        dm.Query1.SQL.Add('select u.usu_Clave, u.usu_supervisor, usu_status Estatus');
        dm.Query1.SQL.Add('from  usuarios u');
        dm.Query1.SQL.Add('where u.usu_Clave = :cla');
        dm.Query1.Parameters.parambyname('cla').Value := MimeEncodeString(frmAcceso.edclave.Text);
        dm.Query1.Open;
        if dm.Query1.RecordCount = 0 then
        begin
          MessageDlg('ESTA CLAVE NO ES VALIDA, PRESIONE [ENTER] PARA SALIR',mtError,[mbok],0);
          DBGrid1.SetFocus;
        end
        else if dm.Query1.FieldbyName('Estatus').AsString <> 'ACT' then
        begin
          MessageDlg('ESTE USUARIO NO ESTA ACTIVO',mtError,[mbok],0);
        end
        else if not dm.Query1.FieldbyName('usu_supervisor').AsBoolean  then
        begin
          MessageDlg('ESTE SUPERVISOR NO TIENE ACCESO A AUTORIZAR CREDITO',mtError,[mbok],0);
          DBGrid1.SetFocus;
        end
        else
        begin
          seleccion := 1;
          close;
        end;
        frmAcceso.Release;
      end
      else
      begin
        seleccion := 1;
        close;
      end;
  end;
  end;

procedure TfrmNombreCliente.DBGrid2KeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then
begin
 grabarcredito();
 end;
end;

procedure TfrmNombreCliente.FormActivate(Sender: TObject);
begin
  Edit1.Enabled := frmPOS.SeleccionCliente = 0;
end;

procedure TfrmNombreCliente.btaceptarClick(Sender: TObject);
begin
grabarcredito();
end;

end.
