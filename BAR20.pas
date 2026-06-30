unit BAR20;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Buttons, ExtCtrls, DB, ADODB, StdCtrls, Mask, DBCtrls, DIMime;

type
  TfrmActUsuario = class(TForm)
    Panel1: TPanel;
    btclose: TSpeedButton;
    btpost: TSpeedButton;
    Panel2: TPanel;
    Panel3: TPanel;
    QUsuarios: TADOQuery;
    dsUsuarios: TDataSource;
    Label1: TLabel;
    DBEdit2: TDBEdit;
    DBEdit1: TDBEdit;
    DBCheckBox3: TDBCheckBox;
    DBCheckBox1: TDBCheckBox;
    DBCheckBox2: TDBCheckBox;
    QUsuariosUsuarioID: TAutoIncField;
    QUsuariosNombre: TWideStringField;
    QUsuariosSupervisor: TBooleanField;
    QUsuariosCajero: TBooleanField;
    QUsuariosCamarero: TBooleanField;
    dsTarjetaUsu: TDataSource;
    DBCheckBox4: TDBCheckBox;
    QUsuariosusu_logueoautomatico: TBooleanField;
    QUsuariosusu_status: TStringField;
    Label2: TLabel;
    DBCheckBox5: TDBCheckBox;
    QUsuariosusu_cajerocuadrar: TBooleanField;
    procedure btcloseClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btpostClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure QUsuariosNewRecord(DataSet: TDataSet);
    procedure QUsuariosBeforePost(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
    Grabo : Integer;
  end;

var
  frmActUsuario: TfrmActUsuario;

implementation

uses BAR04;

{$R *.dfm}

procedure TfrmActUsuario.btcloseClick(Sender: TObject);
begin
  QUsuarios.Cancel;
  Grabo := 0;
  Close;
end;

procedure TfrmActUsuario.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if key = chr(vk_return) then
  begin
    perform(wm_nextdlgctl, 0, 0);
    key := #0;
  end;
end;

procedure TfrmActUsuario.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = vk_f1 then btcloseClick(Self);
  if key = vk_f2 then btpostClick(Self);
end;

procedure TfrmActUsuario.btpostClick(Sender: TObject);
begin
  QUsuarios.Post;
  QUsuarios.UpdateBatch;
  Grabo := 1;
  Close;
end;

procedure TfrmActUsuario.FormCreate(Sender: TObject);
begin
  btclose.Caption := 'F1'+#13+'SALIR';
  btpost.Caption  := 'F2'+#13+'GRABAR';
end;

procedure TfrmActUsuario.QUsuariosNewRecord(DataSet: TDataSet);
begin
  QUsuariosSupervisor.Value := False;
  QUsuariosCajero.Value := False;
  QUsuariosCamarero.Value := False;
  QUsuariosusu_status.Value := 'ACT';
end;

procedure TfrmActUsuario.QUsuariosBeforePost(DataSet: TDataSet);
begin
  {if QUsuarios.State in[dsInsert,dsEdit] then
    QUsuariosClave.Value := MimeEncodeString(QUsuariosClave.Value);}
end;

end.
