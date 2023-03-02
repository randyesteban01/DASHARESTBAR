unit BAR70;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Printers, StdCtrls, Buttons;

type
  TFrmSeleccionarImpresora = class(TForm)
    btclose: TSpeedButton;
    btaceptar: TSpeedButton;
    ComboBox1: TComboBox;
    procedure FormCreate(Sender: TObject);
    procedure ListBox1DblClick(Sender: TObject);
    procedure btaceptarClick(Sender: TObject);
    procedure btcloseClick(Sender: TObject);
    function GetDefaultPrinter: string;
  private
    { Private declarations }
  public
     Acepto : Integer;

    { Public declarations }
  end;

var
  FrmSeleccionarImpresora: TFrmSeleccionarImpresora;

implementation

{$R *.dfm}

procedure TFrmSeleccionarImpresora.FormCreate(Sender: TObject);
var i,x: integer;
begin
ComboBox1.Clear;
for i := 0 to Printer.Printers.Count - 1 do 
ComboBox1.Text := GetDefaultPrinter;
end;

function TFrmSeleccionarImpresora.GetDefaultPrinter: string;
var
  ResStr: array[0..255] of Char;
begin
  GetProfileString('Windows', 'device', '', ResStr, 255);
  Result := StrPas(ResStr);
end;

procedure TFrmSeleccionarImpresora.ListBox1DblClick(Sender: TObject);
begin
btaceptarClick(self);
end;

procedure TFrmSeleccionarImpresora.btaceptarClick(Sender: TObject);
begin
  Acepto := 1;
  Close;
end;

procedure TFrmSeleccionarImpresora.btcloseClick(Sender: TObject);
begin
  Acepto := 0;
  Close;
end;

end.
