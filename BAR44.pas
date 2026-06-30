unit BAR44;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Buttons, ExtCtrls, StdCtrls, Mask, DBCtrls, DB, ADODB;

type
  TfrmActRNC = class(TForm)
    Panel1: TPanel;
    btclose: TSpeedButton;
    btpost: TSpeedButton;
    Panel2: TPanel;
    Label6: TLabel;
    DBEdit1: TDBEdit;
    Label1: TLabel;
    DBEdit2: TDBEdit;
    Label7: TLabel;
    DBEdit3: TDBEdit;
    QRNC: TADOQuery;
    QRNCrnc_cedula: TWideStringField;
    QRNCrazon_social: TWideStringField;
    QRNCnombre_comercial: TWideStringField;
    dsRNC: TDataSource;
    procedure FormCreate(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure btpostClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btcloseClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmActRNC: TfrmActRNC;

implementation

uses BAR04, uConsultaRNCDGII;

{$R *.dfm}

procedure TfrmActRNC.FormCreate(Sender: TObject);
begin
  btclose.Caption := 'F1'+#13+'SALIR';
  btpost.Caption  := 'F2'+#13+'GRABAR';
end;

procedure TfrmActRNC.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if key = chr(vk_return) then
  begin
    perform(wm_nextdlgctl, 0, 0);
    key := #0;
  end;
end;

procedure TfrmActRNC.btpostClick(Sender: TObject);
var
  RncNorm, Nombre, Mensaje: string;
begin
  if QRNC.State in [dsInsert, dsEdit] then
  begin
    RncNorm := NormalizarRNC(QRNCrnc_cedula.AsString);
    if RncNorm <> '' then
      QRNCrnc_cedula.AsString := RncNorm;

    if Length(RncNorm) >= 9 then
    begin
      if ConsultarRNCClienteDGIIEx(DM.ADOBar, RncNorm, DM.QEmpresaRNC.AsString,
        DM.QEmpresaEmpresaID.AsInteger, False, RncNorm, Nombre, Mensaje) then
      begin
        QRNCrnc_cedula.AsString := RncNorm;
        QRNCrazon_social.AsString := Nombre;
        QRNCnombre_comercial.AsString := Nombre;
      end
      else if Trim(Mensaje) <> '' then
        ShowMessage(Mensaje);
    end;
  end;

  QRNC.Post;
  QRNC.UpdateBatch;
  Close;
end;

procedure TfrmActRNC.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = vk_f1 then btcloseClick(Self);
  if key = vk_f2 then btpostClick(Self);
end;

procedure TfrmActRNC.btcloseClick(Sender: TObject);
begin
  Close;
end;

end.
