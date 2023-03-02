object frmTeclado: TfrmTeclado
  Left = 65
  Top = 198
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Teclado'
  ClientHeight = 422
  ClientWidth = 935
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  OnKeyDown = FormKeyDown
  PixelsPerInch = 96
  TextHeight = 13
  object btclose: TSpeedButton
    Left = 8
    Top = 8
    Width = 73
    Height = 73
    Caption = 'SALIR'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    Glyph.Data = {
      360C0000424D360C000000000000360000002800000020000000200000000100
      180000000000000C000000000000000000000000000000000000FFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFF000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FF000000007F7F007F7F007F7F000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000
      00007F7F00FF0000000000FF00007F7F000000FFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000007F
      7F00FF0000000000FFFF00000000FF00007F7F000000FFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000007F7F00FF
      0000000000FFFF00FFFF00FFFF00000000FF00007F7F000000FFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000007F7F00FF000000
      0000FFFF00FFFF00FFFF00FFFF00FFFF00000000FF00007F7F000000FFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000007F7F00FF0000000000FF
      FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00000000FF00007F7F000000FF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000007F7F00FF0000000000FFFF00FF
      FF00FFFF00FFFFFFFFFF00FFFF00FFFF00FFFF00FFFF00000000FF00007F7F00
      0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFF000000007F7F00FF0000000000FFFF00FFFF00FF
      FF00FFFFFFFFFF7F0000FFFFFF00FFFF00FFFF00FFFF00FFFF00000000FF0000
      7F7F000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFF000000007F7F00FF0000000000FFFF00FFFF00FFFF00FF
      FFFFFFFF7F00007F00007F0000FFFFFF00FFFF00FFFF00FFFF00FFFF00000000
      FF00007F7F000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFF000000007F7F00FF0000000000FFFF00FFFF00FFFF00FFFFFFFF
      FF7F00007F00007F00007F00007F0000FFFFFF00FFFF00FFFF00FFFF00FFFF00
      000000FF00007F7F000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFF000000007F7F00FF0000000000FFFF00FFFF00FFFF00FFFFFFFFFF7F00
      007F00007F00007F00007F00007F00007F0000FFFFFF00FFFF00FFFF00FFFF00
      FFFF00000000FF00007F7F000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      000000007F7F00FF0000000000FFFF00FFFF00FFFF00FFFFFFFFFF7F00007F00
      007F00007F00007F00007F00007F00007F00007F0000FFFFFF00FFFF00FFFF00
      FFFF00FFFF00000000FF00007F7F000000FFFFFFFFFFFFFFFFFFFFFFFF000000
      007F7F00FF0000000000FFFF00FFFF00FFFF00FFFF00FFFF7F00007F00007F00
      007F00007F00007F00007F00007F00007F00007F00007F000000FFFF00FFFF00
      FFFF00FFFF00FFFF00000000FF00007F7F000000FFFFFFFFFFFF000000007F7F
      00FF0000000000FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
      FF00FFFF7F00007F00007F000000FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
      FFFF00FFFF00FFFF00FFFF00000000FF00007F7F000000FFFFFF00000000FF00
      00000000FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
      FF00FFFF7F00007F00007F000000FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
      FFFF00FFFF00FFFF00FFFF00FFFF00000000FF00000000FFFFFF00000000FF00
      007F7F00000000FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
      FF00FFFF7F00007F00007F000000FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
      FFFF00FFFF00FFFF00FFFF000000007F7F00FF00000000FFFFFFFFFFFF000000
      00FF00007F7F00000000FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
      FF00FFFF7F00007F00007F000000FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
      FFFF00FFFF00FFFF000000007F7F00FF00000000FFFFFFFFFFFFFFFFFFFFFFFF
      00000000FF00007F7F00000000FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
      FF00FFFF7F00007F00007F000000FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
      FFFF00FFFF000000007F7F00FF00000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFF00000000FF00007F7F00000000FFFF00FFFF00FFFF00FFFF00FFFF00FF
      FF00FFFF7F00007F00007F000000FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
      FFFF000000007F7F00FF00000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFF00000000FF00007F7F00000000FFFF00FFFF00FFFF00FFFF00FF
      FF00FFFF7F00007F00007F000000FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
      0000007F7F00FF00000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFF00000000FF00007F7F00000000FFFF00FFFF00FFFF00FF
      FF00FFFF7F00007F00007F000000FFFF00FFFF00FFFF00FFFF00FFFF00000000
      7F7F00FF00000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFF00000000FF00007F7F00000000FFFF00FFFF00FF
      FF00FFFF7F00007F00007F000000FFFF00FFFF00FFFF00FFFF000000007F7F00
      FF00000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00000000FF00007F7F00000000FFFF00FF
      FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF000000007F7F00FF0000
      0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00000000FF00007F7F00000000FF
      FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF000000007F7F00FF00000000FF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00000000FF00007F7F0000
      0000FFFF00FFFF00FFFF00FFFF00FFFF000000007F7F00FF00000000FFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00000000FF00007F
      7F00000000FFFF00FFFF00FFFF000000007F7F00FF00000000FFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00000000FF
      00007F7F00000000FFFF000000007F7F00FF00000000FFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000
      0000FF00007F7F000000007F7F00FF00000000FFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FF00000000FF0000FF0000FF00000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFF000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
    Layout = blGlyphTop
    ParentFont = False
    OnClick = btcloseClick
  end
  object BitBtn1: TSpeedButton
    Left = 64
    Top = 144
    Width = 49
    Height = 49
    Caption = '1'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    OnClick = BitBtn1Click
  end
  object BitBtn2: TSpeedButton
    Left = 120
    Top = 144
    Width = 49
    Height = 49
    Caption = '2'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    OnClick = BitBtn2Click
  end
  object BitBtn3: TSpeedButton
    Left = 176
    Top = 144
    Width = 49
    Height = 49
    Caption = '3'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    OnClick = BitBtn3Click
  end
  object BitBtn4: TSpeedButton
    Left = 232
    Top = 144
    Width = 49
    Height = 49
    Caption = '4'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    OnClick = BitBtn4Click
  end
  object BitBtn5: TSpeedButton
    Left = 288
    Top = 144
    Width = 49
    Height = 49
    Caption = '5'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    OnClick = BitBtn5Click
  end
  object BitBtn6: TSpeedButton
    Left = 344
    Top = 144
    Width = 49
    Height = 49
    Caption = '6'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    OnClick = BitBtn6Click
  end
  object BitBtn7: TSpeedButton
    Left = 400
    Top = 144
    Width = 49
    Height = 49
    Caption = '7'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    OnClick = BitBtn7Click
  end
  object BitBtn8: TSpeedButton
    Left = 456
    Top = 144
    Width = 49
    Height = 49
    Caption = '8'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    OnClick = BitBtn8Click
  end
  object BitBtn9: TSpeedButton
    Left = 512
    Top = 144
    Width = 49
    Height = 49
    Caption = '9'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    OnClick = BitBtn9Click
  end
  object BitBtn10: TSpeedButton
    Left = 568
    Top = 144
    Width = 49
    Height = 49
    Caption = '0'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    OnClick = BitBtn10Click
  end
  object BitBtn11: TSpeedButton
    Left = 624
    Top = 144
    Width = 49
    Height = 49
    Caption = '_'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    OnClick = BitBtn11Click
  end
  object BitBtn12: TSpeedButton
    Left = 680
    Top = 144
    Width = 49
    Height = 49
    Caption = '+'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    OnClick = BitBtn12Click
  end
  object BitBtn13: TSpeedButton
    Left = 736
    Top = 144
    Width = 121
    Height = 49
    Caption = '<--- Backspace'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    OnClick = BitBtn13Click
  end
  object BitBtn14: TSpeedButton
    Left = 96
    Top = 200
    Width = 49
    Height = 49
    Caption = 'Q'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    OnClick = BitBtn14Click
  end
  object BitBtn15: TSpeedButton
    Left = 152
    Top = 200
    Width = 49
    Height = 49
    Caption = 'W'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    OnClick = BitBtn15Click
  end
  object BitBtn16: TSpeedButton
    Left = 208
    Top = 200
    Width = 49
    Height = 49
    Caption = 'E'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    OnClick = BitBtn16Click
  end
  object BitBtn17: TSpeedButton
    Left = 264
    Top = 200
    Width = 49
    Height = 49
    Caption = 'R'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    OnClick = BitBtn17Click
  end
  object BitBtn18: TSpeedButton
    Left = 320
    Top = 200
    Width = 49
    Height = 49
    Caption = 'T'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    OnClick = BitBtn18Click
  end
  object BitBtn19: TSpeedButton
    Left = 376
    Top = 200
    Width = 49
    Height = 49
    Caption = 'Y'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    OnClick = BitBtn19Click
  end
  object BitBtn20: TSpeedButton
    Left = 432
    Top = 200
    Width = 49
    Height = 49
    Caption = 'U'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    OnClick = BitBtn20Click
  end
  object BitBtn21: TSpeedButton
    Left = 488
    Top = 200
    Width = 49
    Height = 49
    Caption = 'I'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    OnClick = BitBtn21Click
  end
  object BitBtn22: TSpeedButton
    Left = 544
    Top = 200
    Width = 49
    Height = 49
    Caption = 'O'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    OnClick = BitBtn22Click
  end
  object BitBtn23: TSpeedButton
    Left = 600
    Top = 200
    Width = 49
    Height = 49
    Caption = 'P'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    OnClick = BitBtn23Click
  end
  object BitBtn24: TSpeedButton
    Left = 656
    Top = 200
    Width = 49
    Height = 49
    Caption = '{'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    OnClick = BitBtn24Click
  end
  object BitBtn25: TSpeedButton
    Left = 712
    Top = 200
    Width = 49
    Height = 49
    Caption = '}'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    OnClick = BitBtn25Click
  end
  object BitBtn26: TSpeedButton
    Left = 768
    Top = 200
    Width = 89
    Height = 49
    Caption = '~'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    OnClick = BitBtn26Click
  end
  object BitBtn27: TSpeedButton
    Left = 112
    Top = 256
    Width = 49
    Height = 49
    Caption = 'A'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    OnClick = BitBtn27Click
  end
  object BitBtn28: TSpeedButton
    Left = 168
    Top = 256
    Width = 49
    Height = 49
    Caption = 'S'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    OnClick = BitBtn28Click
  end
  object BitBtn29: TSpeedButton
    Left = 224
    Top = 256
    Width = 49
    Height = 49
    Caption = 'D'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    OnClick = BitBtn29Click
  end
  object BitBtn30: TSpeedButton
    Left = 280
    Top = 256
    Width = 49
    Height = 49
    Caption = 'F'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    OnClick = BitBtn30Click
  end
  object BitBtn31: TSpeedButton
    Left = 336
    Top = 256
    Width = 49
    Height = 49
    Caption = 'G'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    OnClick = BitBtn31Click
  end
  object BitBtn32: TSpeedButton
    Left = 392
    Top = 256
    Width = 49
    Height = 49
    Caption = 'H'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    OnClick = BitBtn32Click
  end
  object BitBtn33: TSpeedButton
    Left = 448
    Top = 256
    Width = 49
    Height = 49
    Caption = 'J'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    OnClick = BitBtn33Click
  end
  object BitBtn34: TSpeedButton
    Left = 504
    Top = 256
    Width = 49
    Height = 49
    Caption = 'K'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    OnClick = BitBtn34Click
  end
  object BitBtn35: TSpeedButton
    Left = 560
    Top = 256
    Width = 49
    Height = 49
    Caption = 'L'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    OnClick = BitBtn35Click
  end
  object BitBtn36: TSpeedButton
    Left = 616
    Top = 256
    Width = 49
    Height = 49
    Caption = ':'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    OnClick = BitBtn36Click
  end
  object BitBtn37: TSpeedButton
    Left = 672
    Top = 256
    Width = 49
    Height = 49
    Caption = '"'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    OnClick = BitBtn37Click
  end
  object BitBtn38: TSpeedButton
    Left = 728
    Top = 256
    Width = 129
    Height = 49
    Caption = 'Enter'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object bttecla: TSpeedButton
    Left = 8
    Top = 144
    Width = 49
    Height = 49
    Caption = '~'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    OnClick = btteclaClick
  end
  object BitBtn40: TSpeedButton
    Left = 8
    Top = 200
    Width = 81
    Height = 49
    Caption = 'Tab'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object btcaps: TSpeedButton
    Left = 8
    Top = 256
    Width = 97
    Height = 49
    Caption = 'Caps'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object btshift1: TSpeedButton
    Left = 8
    Top = 312
    Width = 121
    Height = 49
    Caption = 'Shift'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object BitBtn43: TSpeedButton
    Left = 136
    Top = 312
    Width = 49
    Height = 49
    Caption = 'Z'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    OnClick = BitBtn43Click
  end
  object BitBtn44: TSpeedButton
    Left = 192
    Top = 312
    Width = 49
    Height = 49
    Caption = 'X'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    OnClick = BitBtn44Click
  end
  object BitBtn45: TSpeedButton
    Left = 248
    Top = 312
    Width = 49
    Height = 49
    Caption = 'C'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    OnClick = BitBtn45Click
  end
  object BitBtn46: TSpeedButton
    Left = 304
    Top = 312
    Width = 49
    Height = 49
    Caption = 'V'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    OnClick = BitBtn46Click
  end
  object BitBtn47: TSpeedButton
    Left = 360
    Top = 312
    Width = 49
    Height = 49
    Caption = 'B'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    OnClick = BitBtn47Click
  end
  object BitBtn48: TSpeedButton
    Left = 416
    Top = 312
    Width = 49
    Height = 49
    Caption = 'N'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    OnClick = BitBtn48Click
  end
  object BitBtn49: TSpeedButton
    Left = 472
    Top = 312
    Width = 49
    Height = 49
    Caption = 'M'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    OnClick = BitBtn49Click
  end
  object BitBtn50: TSpeedButton
    Left = 528
    Top = 312
    Width = 49
    Height = 49
    Caption = '<'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    OnClick = BitBtn50Click
  end
  object BitBtn51: TSpeedButton
    Left = 584
    Top = 312
    Width = 49
    Height = 49
    Caption = '>'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    OnClick = BitBtn51Click
  end
  object BitBtn52: TSpeedButton
    Left = 640
    Top = 312
    Width = 49
    Height = 49
    Caption = '?'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    OnClick = BitBtn52Click
  end
  object btshift2: TSpeedButton
    Left = 696
    Top = 312
    Width = 89
    Height = 49
    Caption = 'Shift'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object BitBtn54: TSpeedButton
    Left = 8
    Top = 368
    Width = 121
    Height = 49
    Caption = 'Ctrl'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object BitBtn55: TSpeedButton
    Left = 224
    Top = 368
    Width = 401
    Height = 49
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    OnClick = BitBtn55Click
  end
  object BitBtn56: TSpeedButton
    Left = 792
    Top = 312
    Width = 65
    Height = 49
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    Glyph.Data = {
      F6000000424DF600000000000000760000002800000010000000100000000100
      04000000000080000000120B0000120B00001000000010000000000000000000
      8000008000000080800080000000800080008080000080808000C0C0C0000000
      FF00C0C0C00000FFFF00FF000000C0C0C000FFFF0000FFFFFF00DADA0000000A
      DADAADAD0DADAD0DADADDADA0ADADA0ADADAADAD0DADAD0DADADDADA0ADADA0A
      DADAADAD0DADAD0DADADDADA0ADADA0ADADA00000DADAD00000DD0DADADADADA
      D0DAAD0DADADADAD0DADDAD0DADADAD0DADAADAD0DADAD0DADADDADAD0DAD0DA
      DADAADADAD0D0DADADADDADADAD0DADADADAADADADADADADADAD}
    ParentFont = False
  end
  object BitBtn57: TSpeedButton
    Left = 720
    Top = 368
    Width = 65
    Height = 49
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    Glyph.Data = {
      F6000000424DF600000000000000760000002800000010000000100000000100
      04000000000080000000120B0000120B00001000000010000000000000000000
      8000008000000080800080000000800080008080000080808000C0C0C0000000
      FF00C0C0C00000FFFF00FF000000C0C0C000FFFF0000FFFFFF00DADADAD0DADA
      DADAADADAD00ADADADADDADAD0D0DADADADAADAD0DA0ADADADADDAD0DAD00000
      000AAD0DADADADADAD0DD0DADADADADADA0A0DADADADADADAD0DD0DADADADADA
      DA0AAD0DADADADADAD0DDAD0DAD00000000AADAD0DA0ADADADADDADAD0D0DADA
      DADAADADAD00ADADADADDADADAD0DADADADAADADADADADADADAD}
    ParentFont = False
    OnClick = BitBtn57Click
  end
  object BitBtn58: TSpeedButton
    Left = 792
    Top = 368
    Width = 65
    Height = 49
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    Glyph.Data = {
      F6000000424DF600000000000000760000002800000010000000100000000100
      04000000000080000000120B0000120B00001000000010000000000000000000
      8000008000000080800080000000800080008080000080808000C0C0C0000000
      FF00C0C0C00000FFFF00FF000000C0C0C000FFFF0000FFFFFF00DADADAD0DADA
      DADAADADAD0D0DADADADDADAD0DAD0DADADAADAD0DADAD0DADADDAD0DADADAD0
      DADAAD0DADADADAD0DADD0DADADADADAD0DA00000DADAD00000DDADA0ADADA0A
      DADAADAD0DADAD0DADADDADA0ADADA0ADADAADAD0DADAD0DADADDADA0ADADA0A
      DADAADAD0DADAD0DADADDADA0000000ADADAADADADADADADADAD}
    ParentFont = False
  end
  object BitBtn59: TSpeedButton
    Left = 864
    Top = 368
    Width = 65
    Height = 49
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    Glyph.Data = {
      F6000000424DF600000000000000760000002800000010000000100000000100
      04000000000080000000120B0000120B00001000000000000000000000000000
      8000008000000080800080000000800080008080000080808000C0C0C0000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00888888888888
      8888888888880888888888888888008888888888888808088888888888880880
      8888800000000888088880888888888880888088888888888808808888888888
      8880808888888888880880888888888880888000000008880888888888880880
      8888888888880808888888888888008888888888888808888888}
    ParentFont = False
    OnClick = BitBtn59Click
  end
  object BitBtn60: TSpeedButton
    Left = 864
    Top = 312
    Width = 65
    Height = 49
    Caption = 'End'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    OnClick = BitBtn60Click
  end
  object BitBtn61: TSpeedButton
    Left = 864
    Top = 256
    Width = 65
    Height = 49
    Caption = 'Page Dn'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object BitBtn62: TSpeedButton
    Left = 864
    Top = 200
    Width = 65
    Height = 49
    Caption = 'Page Up'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object BitBtn63: TSpeedButton
    Left = 864
    Top = 144
    Width = 65
    Height = 49
    Caption = 'Home'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    OnClick = BitBtn63Click
  end
  object BitBtn64: TSpeedButton
    Left = 8
    Top = 88
    Width = 57
    Height = 49
    Caption = 'Esc'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    OnClick = BitBtn64Click
  end
  object BitBtn65: TSpeedButton
    Left = 72
    Top = 88
    Width = 49
    Height = 49
    Caption = 'F1'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object BitBtn66: TSpeedButton
    Left = 128
    Top = 88
    Width = 49
    Height = 49
    Caption = 'F2'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object BitBtn67: TSpeedButton
    Left = 184
    Top = 88
    Width = 49
    Height = 49
    Caption = 'F3'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object BitBtn68: TSpeedButton
    Left = 240
    Top = 88
    Width = 49
    Height = 49
    Caption = 'F4'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object BitBtn69: TSpeedButton
    Left = 296
    Top = 88
    Width = 49
    Height = 49
    Caption = 'F5'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object BitBtn70: TSpeedButton
    Left = 352
    Top = 88
    Width = 49
    Height = 49
    Caption = 'F6'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object BitBtn71: TSpeedButton
    Left = 408
    Top = 88
    Width = 49
    Height = 49
    Caption = 'F7'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object BitBtn72: TSpeedButton
    Left = 464
    Top = 88
    Width = 49
    Height = 49
    Caption = 'F8'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object BitBtn73: TSpeedButton
    Left = 520
    Top = 88
    Width = 49
    Height = 49
    Caption = 'F9'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object BitBtn74: TSpeedButton
    Left = 576
    Top = 88
    Width = 49
    Height = 49
    Caption = 'F10'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object BitBtn75: TSpeedButton
    Left = 632
    Top = 88
    Width = 49
    Height = 49
    Caption = 'F11'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object BitBtn76: TSpeedButton
    Left = 688
    Top = 88
    Width = 49
    Height = 49
    Caption = 'F12'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object BitBtn77: TSpeedButton
    Left = 744
    Top = 88
    Width = 49
    Height = 49
    Caption = 'Num Lk'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object BitBtn78: TSpeedButton
    Left = 800
    Top = 88
    Width = 57
    Height = 49
    Caption = 'Prn Scrn'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object BitBtn79: TSpeedButton
    Left = 864
    Top = 88
    Width = 65
    Height = 49
    Caption = 'Delete'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    OnClick = BitBtn79Click
  end
  object BitBtn80: TSpeedButton
    Left = 136
    Top = 368
    Width = 81
    Height = 49
    Caption = 'Alt'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object BitBtn81: TSpeedButton
    Left = 632
    Top = 368
    Width = 81
    Height = 49
    Caption = 'Alt'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object btaceptar: TSpeedButton
    Left = 88
    Top = 8
    Width = 73
    Height = 73
    Caption = 'ACEPTAR'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    Glyph.Data = {
      360C0000424D360C000000000000360000002800000020000000200000000100
      180000000000000C000000000000000000000000000000000000FFFFFFFFFFFF
      FFFFFFFFFFFF0000000000000000007077707077707077707077707077707077
      70707770707770707770707770707770000000000000000000707770FFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFF0000000000DF0000800000007077707077707077707077707077
      7070777070777070777000000000000070777070777070777000000070777070
      7770FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFF0000000000DF0000CF000090000080000000FFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFF000000000000707770707770DFD8DFDFD8DF70777000000070777070
      7770707770FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFF0000000000DF0000CF000090000080000000FFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFF000000707770DFD8DFDFD8DFDFD8DFDFD8DF70777000000070777000
      0000000000000000707770707770FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      0000000000DF0000CF0000DF0000DF000080000080000000FFFFFFFFFFFFFFFF
      FFFFFFFF000000FFFFFFDFD8DF000000DFD8DFDFD8DF70777000000000000070
      7770707770707770000000707770707770FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      0000000000DF0000CF0000DF0000DF000080000080000000FFFFFFFFFFFFFFFF
      FFFFFFFF000000FFFFFF707770DFD8DF000000DFD8DF707770000000707770DF
      D8DFDFD8DF707770000000707770707770707770FFFFFFFFFFFFFFFFFF000000
      0000DF0000CFCFC8FF6067FF0000DF0000CF000090000080000000FFFFFFFFFF
      FFFFFFFF000000FFFFFF000000DFD8DFDFD8DFDFD8DF707770000000DFD8DFDF
      D8DFDFD8DF707770000000707770707770707770707770FFFFFFFFFFFF000000
      0000DF0000CFCFC8FF6067FF0000DF0000CF000090000080000000FFFFFFFFFF
      FFFFFFFF000000FFFFFFDFD8DFDFD8DFFFFFFFFFFFFF707770000000000000DF
      D8DFDFD8DF7077700000007077707077707077707077707077700000000000DF
      0000CFCFC8FF6067FF6067FF0000000000DF0000CF000090000080000000FFFF
      FFFFFFFF000000FFFFFFFFFFFFFFFFFF707770707770707770000000DFD8DF00
      0000DFD8DF707770000000707770707770707770FFFFFFFFFFFF0000006067FF
      6067FF6067FFCFC8FF000000FFFFFF0000000000DF000080000080000000FFFF
      FFFFFFFF000000FFFFFF707770707770BFBFBFBFBFBF707770000000DFD8DFDF
      D8DFDFD8DF707770000000707770FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000
      6067FF6067FF6067FF000000FFFFFF0000000000DF0000CF0000900000800000
      00FFFFFF000000707770BFBFBFBFBFBFDFD8DFBFBFBF707770000000DFD8DFFF
      FFFFFFFFFF707770000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      000000000000000000FFFFFFFFFFFFFFFFFF0000000000DF0000800000800000
      00FFFFFF000000FFFFFFDFD8DFDFD8DFDFD8DFBFBFBF707770000000FFFFFF70
      7770707770707770000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000000000DF0000CF0000900000
      80000000000000BFBFBFDFD8DFDFD8DFDFD8DFBFBFBF707770000000707770DF
      D8DFDFD8DF707770000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000000000DF0000800000
      80000000000000BFBFBFDFD8DFDFD8DFDFD8DFBFBFBF707770000000DFD8DFDF
      D8DFDFD8DF707770000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000000000DF0000CF0000
      90000080000000BFBFBFBFBFBFDFD8DFDFD8DFBFBFBF707770000000DFD8DFDF
      D8DFDFD8DF707770000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000000000DF0000
      80000080000000BFBFBFBFBFBFDFD8DFDFD8DFBFBFBF707770000000DFD8DFFF
      FFFFFFFFFF707770000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000000000DF0000
      CFCFC8FF6067FF000000DFD8DFDFD8DFFFFFFFFFFFFF707770000000FFFFFF70
      7770707770707770000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000CFC8
      FF6067FF6067FF000000FFFFFFFFFFFF707770707770707770000000707770BF
      BFBFBFBFBF707770000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000006067
      FF6067FF000000FFFFFF707770707770DFD8DFDFD8DF707770000000BFBFBFBF
      BFBFBFBFBF707770000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000
      00000000000000707770DFD8DFDFD8DFDFD8DFDFD8DF707770000000BFBFBFBF
      BFBFBFBFBF707770000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFF000000FFFFFFDFD8DFDFD8DF000000DFD8DF707770000000BFBFBF70
      7770707770707770000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFF000000FFFFFF000000DFD8DF707770DFD8DF707770000000707770DF
      D8DFDFD8DF707770000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFF000000FFFFFFDFD8DF000000DFD8DFDFD8DF707770000000DFD8DFDF
      D8DFDFD8DF707770000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFF000000FFFFFFDFD8DFDFD8DFDFD8DFDFD8DF707770000000DFD8DF00
      0000DFD8DF707770000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFF000000FFFFFFDFD8DFDFD8DFFFFFFFFFFFFF000000000000DFD8DF70
      7770DFD8DF707770000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFF000000FFFFFFFFFFFFFFFFFF000000000000FFFFFFDFD8DF000000DF
      D8DFDFD8DF707770000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFF000000FFFFFF000000000000FFFFFF000000FFFFFFDFD8DFDFD8DFDF
      D8DFDFD8DF707770000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFF000000000000FFFFFFFFFFFFFFFFFF000000FFFFFFDFD8DFDFD8DFFF
      FFFFFFFFFF000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFF00
      0000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFF000000000000FF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000000000FFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
    Layout = blGlyphTop
    ParentFont = False
    OnClick = btaceptarClick
  end
  object edteclado: TEdit
    Left = 240
    Top = 9
    Width = 689
    Height = 72
    BevelKind = bkFlat
    BorderStyle = bsNone
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -48
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
  end
end
