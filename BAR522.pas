unit BAR522;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids, DBGrids, ExtCtrls, Buttons, DB, ADODB;

type
  TfrmSubCategorias = class(TForm)
    btclose: TSpeedButton;
    btedit: TSpeedButton;
    Panel1: TPanel;
    DBGrid1: TDBGrid;
    Memo1: TMemo;
    QSubCategorias: TADOQuery;
    QSubCategoriasNombre: TWideStringField;
    QSubCategoriasLinea1: TWideStringField;
    QSubCategoriasLinea2: TWideStringField;
    QSubCategoriasLinea3: TWideStringField;
    QSubCategoriasBgColor: TWideStringField;
    QSubCategoriasFgColor: TWideStringField;
    dsSubCategorias: TDataSource;
    btadd: TSpeedButton;
    QSubCategoriasSubCategoriaID: TIntegerField;
    QSubCategoriasCategoria: TStringField;
    procedure btcloseClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure btaddClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure bteditClick(Sender: TObject);
 
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmSubCategorias: TfrmSubCategorias;

implementation

uses BAR523, BAR01, BAR12;

{$R *.dfm}

procedure TfrmSubCategorias.btcloseClick(Sender: TObject);
begin
Close;
end;

procedure TfrmSubCategorias.FormCreate(Sender: TObject);
begin
  btclose.Caption := 'F1'+#13+'SALIR';
  btedit.Caption  := 'F2'+#13+'CAMBIAR';
end;

procedure TfrmSubCategorias.FormActivate(Sender: TObject);
begin
if not QSubCategorias.Active then QSubCategorias.Open;
end;

procedure TfrmSubCategorias.btaddClick(Sender: TObject);
var
  t : TBookmark;
begin
  Application.CreateForm(tfrmActSubCategoria, frmActSubCategoria);
  frmActSubCategoria.QSubCategorias.Parameters.ParamByName('cat').Value := -1;
  frmActSubCategoria.QSubCategorias.Open;
  frmActSubCategoria.QSubCategorias.Insert;
  frmActSubCategoria.ShowModal;
  if frmActSubCategoria.Grabo = 1 then
  begin
    t := QSubCategorias.GetBookmark;
    QSubCategorias.Close;
    QSubCategorias.Open;
    QSubCategorias.GotoBookmark(t);
  end;
  frmActSubCategoria.Release;
end;


procedure TfrmSubCategorias.FormClose(Sender: TObject;

  var Action: TCloseAction);
begin
  frmMain.Panel1.Enabled := true;
  Action := cafree;
end;

procedure TfrmSubCategorias.bteditClick(Sender: TObject);
var
  t : TBookmark;
begin
  Application.CreateForm(tfrmActSubCategoria, frmActSubCategoria);
  frmActSubCategoria.QSubCategorias.Close;
  frmActSubCategoria.QSubCategorias.Parameters.ParamByName('cat').Value := QSubCategoriasSubCategoriaID.Value;
  frmActSubCategoria.QSubCategorias.Open;
  frmActSubCategoria.QSubCategorias.Edit;
  frmActSubCategoria.ShowModal;
  if frmActSubCategoria.Grabo = 1 then
  begin
    t := QSubCategorias.GetBookmark;
    QSubCategorias.Close;
    QSubCategorias.Open;
    QSubCategorias.GotoBookmark(t);
  end;
  frmActSubCategoria.Release;
end;



end.
