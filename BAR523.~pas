unit BAR523;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Buttons, ExtCtrls, DB, ADODB, StdCtrls, Mask, DBCtrls;

type
  TfrmActSubCategoria = class(TForm)
    Panel1: TPanel;
    btclose: TSpeedButton;
    btpost: TSpeedButton;
    Panel2: TPanel;
    Panel3: TPanel;
    QSubCategorias: TADOQuery;
    QSubCategoriasCategoriaID: TIntegerField;
    QSubCategoriasNombre: TWideStringField;
    QSubCategoriasLinea1: TWideStringField;
    QSubCategoriasLinea2: TWideStringField;
    QSubCategoriasLinea3: TWideStringField;
    QSubCategoriasBgColor: TWideStringField;
    QSubCategoriasFgColor: TWideStringField;
    dsCategorias: TDataSource;
    Label1: TLabel;
    DBEdit2: TDBEdit;
    GroupBox1: TGroupBox;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    DBEdit7: TDBEdit;
    DBEdit8: TDBEdit;
    DBEdit9: TDBEdit;
    DBLookupComboBox3: TDBLookupComboBox;
    DBLookupComboBox4: TDBLookupComboBox;
    QColor: TADOQuery;
    QColorColor: TWideStringField;
    QColorNombre: TWideStringField;
    dsColores: TDataSource;
    pncat2: TPanel;
    lbcat1: TStaticText;
    Label5: TLabel;
    DBLookupComboBox1: TDBLookupComboBox;
    QCategoria: TADOQuery;
    QCategoriaCategoriaID: TIntegerField;
    QCategoriaNombre: TWideStringField;
    QCategoriaNombre1: TWideStringField;
    QCategoriatotal: TIntegerField;
    DataSource1: TDataSource;
    QSubCategoriasSubCategoriaID: TIntegerField;
    procedure btcloseClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btpostClick(Sender: TObject);
    procedure QSubCategoriasNewRecord(DataSet: TDataSet);
    procedure dsCategoriasDataChange(Sender: TObject; Field: TField);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    Grabo : Integer;
  end;

var
  frmActSubCategoria: TfrmActSubCategoria;

implementation

uses BAR04;

{$R *.dfm}

procedure TfrmActSubCategoria.btcloseClick(Sender: TObject);
begin
  QSubCategorias.Cancel;
  Grabo := 0;
  Close;
end;

procedure TfrmActSubCategoria.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if key = chr(vk_return) then
  begin
    perform(wm_nextdlgctl, 0, 0);
    key := #0;
  end;
end;

procedure TfrmActSubCategoria.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = vk_f1 then btcloseClick(Self);
  if key = vk_f2 then btpostClick(Self);
end;

procedure TfrmActSubCategoria.btpostClick(Sender: TObject);
begin
  QSubCategorias.Post;
  QSubCategorias.UpdateBatch;
  Grabo := 1;
  Close;
end;

procedure TfrmActSubCategoria.QSubCategoriasNewRecord(DataSet: TDataSet);
begin
  QSubCategoriasBgColor.Value := 'clBlue';
  QSubCategoriasFgColor.Value := 'clWhite';
end;

procedure TfrmActSubCategoria.dsCategoriasDataChange(Sender: TObject;
  Field: TField);
var
  BgColor, FgColor : Integer;
begin
  lbcat1.Caption := QSubCategoriasLinea1.AsString+#13+
                     QSubCategoriasLinea2.AsString+#13+
                     QSubCategoriasLinea3.AsString;
  
  lbcat1.Font.Color := clWhite;
  lbcat1.Color := clBlue;

  if not QSubCategoriasFgColor.IsNull then
  begin
    FgColor := StringToColor(QSubCategoriasFgColor.AsString);
    lbcat1.Font.Color := FgColor;
  end;
  if not QSubCategoriasBgColor.IsNull then
  begin
    BgColor := StringToColor(QSubCategoriasBgColor.AsString);
    lbcat1.Color := BgColor;
  end;
end;

procedure TfrmActSubCategoria.FormCreate(Sender: TObject);
begin
  btclose.Caption := 'F1'+#13+'SALIR';
  btpost.Caption  := 'F2'+#13+'GRABAR';
  QCategoria.Open;
  QColor.Open;
end;

end.
