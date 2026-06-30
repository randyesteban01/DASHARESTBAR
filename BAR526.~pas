unit BAR526;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids, DBGrids, ExtCtrls, Buttons, DB, ADODB;

type
  TfrmTerminos = class(TForm)
    Panel1: TPanel;
    DBGrid1: TDBGrid;
    Memo1: TMemo;
    btclose: TSpeedButton;
    btedit: TSpeedButton;
    QCategorias: TADOQuery;
    QCategoriasCategoriaID: TIntegerField;
    QCategoriasNombre: TWideStringField;
    dsCategorias: TDataSource;
    btadd: TSpeedButton;
    procedure btcloseClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure bteditClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btaddClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmTerminos: TfrmTerminos;

implementation

uses BAR04, BAR12, BAR01,
  BAR525,
  BAR527;

{$R *.dfm}

procedure TfrmTerminos.btcloseClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmTerminos.FormCreate(Sender: TObject);
begin
  btclose.Caption := 'F1'+#13+'SALIR';
  btedit.Caption  := 'F2'+#13+'CAMBIAR';
end;

procedure TfrmTerminos.FormActivate(Sender: TObject);
begin
  if not QCategorias.Active then QCategorias.Open;
end;

procedure TfrmTerminos.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (ssAlt in Shift) and (key = vk_f4) then abort;
  if key = vk_f3 then btaddClick(Self);
  if key = vk_f1 then btcloseClick(Self);
  if key = vk_f2 then bteditClick(Self);
end;

procedure TfrmTerminos.bteditClick(Sender: TObject);
var
  t : TBookmark;
begin
  Application.CreateForm(tfrmActTerminos, frmActTerminos);
  frmActTerminos.QCategorias.Close;
  frmActTerminos.QCategorias.Parameters.ParamByName('cat').Value := QCategoriasCategoriaID.Value;
  frmActTerminos.QCategorias.Open;
  frmActTerminos.QCategorias.Edit;
  frmActTerminos.ShowModal;
  if frmActTerminos.Grabo = 1 then
  begin
    t := QCategorias.GetBookmark;
    QCategorias.Close;
    QCategorias.Open;
    QCategorias.GotoBookmark(t);
  end;
  frmActTerminos.Release;
end;

procedure TfrmTerminos.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  frmMain.Panel1.Enabled := true;
  Action := cafree;
end;

procedure TfrmTerminos.btaddClick(Sender: TObject);
var
  t : TBookmark;
begin
  Application.CreateForm(tfrmActTerminos, frmActTerminos);
  frmActTerminos.QCategorias.Parameters.ParamByName('cat').Value := -1;
  frmActTerminos.QCategorias.Open;
  frmActTerminos.QCategorias.Insert;
  frmActTerminos.ShowModal;
  if frmActTerminos.Grabo = 1 then
  begin
    t := QCategorias.GetBookmark;
    QCategorias.Close;
    QCategorias.Open;
    QCategorias.GotoBookmark(t);
  end;
  frmActTerminos.Release;
end;

end.
