object frmFormaBuscaProducto: TfrmFormaBuscaProducto
  Left = 305
  Top = 335
  BorderIcons = []
  BorderStyle = bsSingle
  Caption = 'Busqueda de Productos'
  ClientHeight = 91
  ClientWidth = 323
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  OnKeyDown = FormKeyDown
  PixelsPerInch = 96
  TextHeight = 13
  object btcodigo: TSpeedButton
    Left = 8
    Top = 8
    Width = 97
    Height = 73
    Caption = 'F1 - CODIGO'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
    OnClick = btcodigoClick
  end
  object btnombre: TSpeedButton
    Left = 112
    Top = 8
    Width = 97
    Height = 73
    Caption = 'F2 - NOMBRE'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
    OnClick = btnombreClick
  end
  object btcat: TSpeedButton
    Left = 216
    Top = 8
    Width = 97
    Height = 73
    Caption = 'F3 - CATEGORIA'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
    OnClick = btcatClick
  end
end
