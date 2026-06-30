unit BAR521;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Buttons, DB, ADODB, DBCtrls;

type
  TfrmSeleccionarmesero = class(TForm)
    cmbMesero: TDBLookupComboBox;
    QMeseros: TADOQuery;
    QMeserosven_nombre: TStringField;
    QMeserosven_codigo: TIntegerField;
    dsMeseros: TDataSource;
    btpost: TSpeedButton;
    btclose: TSpeedButton;
    procedure FormCreate(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btcloseClick(Sender: TObject);
    procedure btpostClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    Registro : Integer;
    mesero : Integer;
    NMesero: String;
    facturaid:Integer;
  end;

var
  frmSeleccionarmesero: TfrmSeleccionarmesero;

implementation

uses BAR01, BAR00, BAR04;

{$R *.dfm}

procedure TfrmSeleccionarmesero.FormCreate(Sender: TObject);
begin

  QMeseros.Open;
  cmbMesero.KeyValue := frmMain.usuario;
  mesero :=     cmbMesero.KeyValue;

  if  (mesero>0) then
  begin
    cmbMesero.KeyValue := mesero;
  end;


end;

procedure TfrmSeleccionarmesero.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
 if (ssAlt in Shift) and (key = vk_f4) then abort;
  if key = vk_f1 then btcloseClick(Self);
  if key = vk_f2 then btpostClick(Self);
end;

procedure TfrmSeleccionarmesero.btcloseClick(Sender: TObject);
begin
Close;
end;


procedure TfrmSeleccionarmesero.btpostClick(Sender: TObject);
begin
if facturaid>0 then
begin
    dm.Query1.Close;
    dm.Query1.SQL.Clear;
    dm.Query1.SQL.Add('UPDATE Factura_RestBar SET mese_codigo = :mese_codigo');
    dm.Query1.SQL.Add('WHERE FacturaID = :facturaid ');

    dm.Query1.Parameters.ParamByName('mese_codigo').Value := cmbMesero.KeyValue;
    dm.Query1.Parameters.ParamByName('facturaid').Value := facturaid;
    dm.Query1.ExecSQL;
end;
    mesero := cmbMesero.KeyValue;
    NMesero := cmbMesero.Text;

    Registro := 1;
    close;
end;

end.
