unit BAR525;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Buttons, ExtCtrls, DB, ADODB, StdCtrls, Mask, DBCtrls;

type
  TfrmActGuarniciones = class(TForm)
    Panel1: TPanel;
    btclose: TSpeedButton;
    btpost: TSpeedButton;
    Panel2: TPanel;
    Panel3: TPanel;
    QCategorias: TADOQuery;
    QCategoriasCategoriaID: TIntegerField;
    QCategoriasNombre: TWideStringField;
    dsCategorias: TDataSource;
    Label1: TLabel;
    DBEdit2: TDBEdit;
    QColor: TADOQuery;
    QColorColor: TWideStringField;
    QColorNombre: TWideStringField;
    dsColores: TDataSource;
    procedure btcloseClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btpostClick(Sender: TObject);
   
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    Grabo : Integer;
  end;

var
  frmActGuarniciones: TfrmActGuarniciones;

implementation

uses BAR04;

{$R *.dfm}

procedure TfrmActGuarniciones.btcloseClick(Sender: TObject);
begin
  QCategorias.Cancel;
  Grabo := 0;
  Close;
end;

procedure TfrmActGuarniciones.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if key = chr(vk_return) then
  begin
    perform(wm_nextdlgctl, 0, 0);
    key := #0;
  end;
end;

procedure TfrmActGuarniciones.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = vk_f1 then btcloseClick(Self);
  if key = vk_f2 then btpostClick(Self);
end;

procedure TfrmActGuarniciones.btpostClick(Sender: TObject);
begin
  QCategorias.Post;
  QCategorias.UpdateBatch;
  Grabo := 1;
  Close;
end;


procedure TfrmActGuarniciones.FormCreate(Sender: TObject);
begin
  btclose.Caption := 'F1'+#13+'SALIR';
  btpost.Caption  := 'F2'+#13+'GRABAR';

end;

end.
