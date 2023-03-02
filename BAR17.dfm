object frmDevuelta: TfrmDevuelta
  Left = 280
  Top = 187
  BorderIcons = []
  BorderStyle = bsSingle
  Caption = 'Devuelta'
  ClientHeight = 214
  ClientWidth = 436
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 24
    Top = 121
    Width = 385
    Height = 39
    Alignment = taCenter
    AutoSize = False
    Caption = '20 Segs. para SALIR'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -32
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object lbdevuelta: TStaticText
    Left = 0
    Top = 0
    Width = 436
    Height = 113
    Align = alTop
    Alignment = taCenter
    AutoSize = False
    Caption = 'MONTO A DEVOLVER'
    Color = clBlue
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -37
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
    TabOrder = 0
  end
  object Button1: TButton
    Left = 64
    Top = 164
    Width = 337
    Height = 49
    Caption = 'PRESIONE ENTER PARA SALIR'
    Font.Charset = ANSI_CHARSET
    Font.Color = clNavy
    Font.Height = -21
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
    OnClick = Button1Click
  end
  object Timer1: TTimer
    OnTimer = Timer1Timer
    Left = 40
    Top = 128
  end
end
