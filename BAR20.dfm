object frmActUsuario: TfrmActUsuario
  Left = 901
  Top = 155
  BorderIcons = []
  BorderStyle = bsSingle
  Caption = 'Actualizando Usuario'
  ClientHeight = 453
  ClientWidth = 337
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poOwnerFormCenter
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  OnKeyPress = FormKeyPress
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 337
    Height = 89
    Align = alTop
    BevelInner = bvRaised
    BevelOuter = bvLowered
    TabOrder = 0
    object btclose: TSpeedButton
      Left = 8
      Top = 8
      Width = 73
      Height = 73
      Caption = 'F1-SALIR'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlue
      Font.Height = -13
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
    object btpost: TSpeedButton
      Left = 88
      Top = 8
      Width = 73
      Height = 73
      Caption = 'F2-GRABAR'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlue
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      Glyph.Data = {
        360C0000424D360C000000000000360000002800000020000000200000000100
        180000000000000C000000000000000000000000000000000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFF000000707770707770FFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFF0000000000001F201F000000707770707770FFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000
        00000000A09F9FA09F9F1F201F1F201F000000707770707770FFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000000000A09F
        9F000000FFFFFFFFFFFF5050501F201F1F201F000000707770707770FFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000000000A09F9FA09F9FFFFF
        FF000000BFBFBF5050505050505050501F201F1F201F000000707770707770FF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFF000000000000A09F9FA09F9FFFFFFFFFFFFFBFBF
        BFBFBFBF000000BFBFBF5050505050505050501F201F1F201F00000070777070
        7770FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFF000000000000A09F9FA09F9FFFFFFFFFFFFFBFBFBFBFBFBFBFBF
        BFBFBFBFBFBFBF000000BFBFBF5050505050505050501F201F1F201F00000070
        7770707770FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        000000000000A09F9F000000FFFFFFFFFFFF0000001F201FBFBFBFBFBFBFBFBF
        BFBFBFBFBFBFBFBFBFBF0000005050505050505050505050501F201F1F201F00
        0000707770707770FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000
        A09F9FA09F9FFFFFFF000000BFBFBFBFBFBF1F201F0000001F201FBFBFBFBFBF
        BFBFBFBF0000000000005050505050505050505050505050505050501F201F1F
        201F000000707770707770FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000
        FFFFFFFFFFFF505050A09F9F000000BFBFBFBFBFBF1F201F505050BFBFBF0000
        00000000505050505050505050505050505050BFBFBF5050505050505050501F
        201F1F201F000000707770707770FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000
        505050505050505050505050A09F9F000000BFBFBFBFBFBF0000000000005050
        50505050505050505050505050BFBFBFBFBFBF000000BFBFBF50505050505050
        50501F201F1F201F000000707770707770FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        000000505050505050505050505050A09F9F0000000000005050505050505050
        50505050505050BFBFBFBFBFBF000000000000FFFFFF000000BFBFBF50505050
        50505050501F201F1F201F000000707770707770FFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFF0000005050505050505050505050505050505050505050505050505050
        50BFBFBFBFBFBF000000000000FFFFFFFFFFFFFFFFFFFFFFFF000000BFBFBF50
        50505050505050501F201F1F201F000000707770707770FFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFF000000505050505050505050505050505050505050BFBFBFBFBF
        BF000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000BF
        BFBF5050505050505050501F201F000000707770707770707770FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFF000000505050505050505050505050BFBFBF0000000000
        00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00
        0000BFBFBF505050505050505050000000707770707770707770FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFF0000005050505050501F201F000000FFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF302FFF
        302F000000BFBFBF000000000000707770707770707770707770FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000005050505050501F201F000000FFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF302FFF302FFF302FFF
        302F000000000000707770707770707770707770FFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000005050505050501F201F0000
        00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF302FFF302FFF302FFF302F00000000
        0000707770707770707770707770FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000005050505050501F20
        1F000000FFFFFFFFFFFF0000A00000900000A0FF302F00000000000070777070
        7770707770707770FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000005050505050
        501F201F0000000000A00000900000A000000000000070777070777070777070
        7770FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000005050
        505050501F201F000000000000000000707770707770707770707770FFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000
        00505050000000000000707770707770707770707770FFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FF000000FFFFFFFFFFFF707770707770FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
      Layout = blGlyphTop
      ParentFont = False
      OnClick = btpostClick
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 89
    Width = 337
    Height = 364
    Align = alClient
    BevelInner = bvRaised
    BevelOuter = bvLowered
    TabOrder = 1
    object Panel3: TPanel
      Left = 2
      Top = -3
      Width = 333
      Height = 365
      Align = alBottom
      Anchors = [akLeft, akTop, akRight, akBottom]
      TabOrder = 0
      object Label1: TLabel
        Left = 16
        Top = 16
        Width = 124
        Height = 13
        Caption = 'NOMBRE DEL USUARIO'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label2: TLabel
        Left = 16
        Top = 56
        Width = 120
        Height = 13
        Caption = 'CLAVE DE SEGURIDAD'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label3: TLabel
        Left = 16
        Top = 104
        Width = 122
        Height = 13
        Caption = 'TARJETA DE USUARIO'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label4: TLabel
        Left = 16
        Top = 152
        Width = 141
        Height = 13
        Caption = 'TARJETA DE SUPERVISOR'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object SpeedButton1: TSpeedButton
        Left = 290
        Top = 120
        Width = 23
        Height = 21
        Glyph.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF000000000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF0000000000FF00FF00FF00FF00FF00FF00FF00
          FF002900DD002900DF0000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF0008002C002100B60000000000FF00FF00FF00FF00FF00
          FF002900DE002900DF001200640000000000FF00FF00FF00FF00FF00FF00FF00
          FF00000000001D009D002900DF0019008600FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF002900DE002900DF000000000000000000FF00FF00FF00FF000000
          00002500C8002900DF0000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF002900DF002900DF000000000000000000000000002500
          C8002900DF0000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF002900DF002700D600000000002500C7002900
          DF0000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF002900DE002900DF002900DF000000
          0000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00000000002800D8002900DF002900DF000000
          000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00000000002500C8002900DF00000000002900DF002900
          DF000400140000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00000000002500C8002900DF0000000000FF00FF00FF00FF002900
          DF002900DF0011005A000000000000000000FF00FF00FF00FF00FF00FF00FF00
          FF00000000002400C7002900DF0009002F00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF002900DF002200BB0000000000FF00FF00FF00FF00FF00FF00FF00
          FF002800D8002900DF0019008700FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF002900DC00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF002900DF002300BE0000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
        OnClick = SpeedButton1Click
      end
      object SpeedButton2: TSpeedButton
        Left = 290
        Top = 168
        Width = 23
        Height = 21
        Glyph.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF000000000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF0000000000FF00FF00FF00FF00FF00FF00FF00
          FF002900DD002900DF0000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF0008002C002100B60000000000FF00FF00FF00FF00FF00
          FF002900DE002900DF001200640000000000FF00FF00FF00FF00FF00FF00FF00
          FF00000000001D009D002900DF0019008600FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF002900DE002900DF000000000000000000FF00FF00FF00FF000000
          00002500C8002900DF0000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF002900DF002900DF000000000000000000000000002500
          C8002900DF0000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF002900DF002700D600000000002500C7002900
          DF0000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF002900DE002900DF002900DF000000
          0000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00000000002800D8002900DF002900DF000000
          000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00000000002500C8002900DF00000000002900DF002900
          DF000400140000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00000000002500C8002900DF0000000000FF00FF00FF00FF002900
          DF002900DF0011005A000000000000000000FF00FF00FF00FF00FF00FF00FF00
          FF00000000002400C7002900DF0009002F00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF002900DF002200BB0000000000FF00FF00FF00FF00FF00FF00FF00
          FF002800D8002900DF0019008700FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF002900DC00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF002900DF002300BE0000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
        OnClick = SpeedButton2Click
      end
      object DBEdit2: TDBEdit
        Left = 16
        Top = 32
        Width = 273
        Height = 21
        BevelKind = bkFlat
        BorderStyle = bsNone
        DataField = 'Nombre'
        DataSource = dsUsuarios
        TabOrder = 0
      end
      object DBEdit1: TDBEdit
        Left = 16
        Top = 72
        Width = 273
        Height = 21
        BevelKind = bkFlat
        BorderStyle = bsNone
        CharCase = ecUpperCase
        DataField = 'Clave'
        DataSource = dsUsuarios
        PasswordChar = '*'
        TabOrder = 1
      end
      object DBCheckBox3: TDBCheckBox
        Left = 16
        Top = 200
        Width = 193
        Height = 17
        Caption = 'TRABAJA COMO SUPERVISOR'
        DataField = 'Supervisor'
        DataSource = dsUsuarios
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 2
        ValueChecked = 'True'
        ValueUnchecked = 'False'
      end
      object DBCheckBox1: TDBCheckBox
        Left = 16
        Top = 216
        Width = 193
        Height = 17
        Caption = 'TRABAJA COMO CAJERO'
        DataField = 'Cajero'
        DataSource = dsUsuarios
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 3
        ValueChecked = 'True'
        ValueUnchecked = 'False'
      end
      object DBCheckBox2: TDBCheckBox
        Left = 16
        Top = 232
        Width = 193
        Height = 17
        Caption = 'TRABAJA COMO CAMARERO'
        DataField = 'Camarero'
        DataSource = dsUsuarios
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 4
        ValueChecked = 'True'
        ValueUnchecked = 'False'
      end
      object DBLookupComboBox1: TDBLookupComboBox
        Left = 16
        Top = 120
        Width = 273
        Height = 21
        DataField = 'tarjetaUsuarioID'
        DataSource = dsUsuarios
        KeyField = 'TarjetaID'
        ListField = 'TarjetaID'
        ListSource = dsTarjetaUsu
        TabOrder = 5
      end
      object DBLookupComboBox2: TDBLookupComboBox
        Left = 16
        Top = 168
        Width = 273
        Height = 21
        DataField = 'tarjetaSupervisorID'
        DataSource = dsUsuarios
        KeyField = 'TarjetaID'
        ListField = 'TarjetaID'
        ListSource = dsTarjetaSuper
        TabOrder = 6
      end
    end
  end
  object QUsuarios: TADOQuery
    Connection = DM.ADOBar
    CursorType = ctStatic
    BeforePost = QUsuariosBeforePost
    OnNewRecord = QUsuariosNewRecord
    Parameters = <
      item
        Name = 'usu'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = Null
      end>
    SQL.Strings = (
      'select'
      'UsuarioID, Nombre, Clave, Estatus, Supervisor, Cajero, Camarero,'
      'tarjetaUsuarioID, tarjetaSupervisorID'
      'from'
      'Usuarios'
      'where'
      'UsuarioID = :usu'
      'order by'
      'UsuarioID')
    Left = 216
    Top = 296
    object QUsuariosUsuarioID: TAutoIncField
      FieldName = 'UsuarioID'
      ReadOnly = True
    end
    object QUsuariosNombre: TWideStringField
      FieldName = 'Nombre'
      Size = 255
    end
    object QUsuariosClave: TWideStringField
      FieldName = 'Clave'
      Size = 255
    end
    object QUsuariosEstatus: TWideStringField
      FieldName = 'Estatus'
      Size = 255
    end
    object QUsuariosSupervisor: TBooleanField
      FieldName = 'Supervisor'
    end
    object QUsuariosCajero: TBooleanField
      FieldName = 'Cajero'
    end
    object QUsuariosCamarero: TBooleanField
      FieldName = 'Camarero'
    end
    object QUsuariostarjetaUsuarioID: TWideStringField
      FieldName = 'tarjetaUsuarioID'
      Size = 255
    end
    object QUsuariostarjetaSupervisorID: TWideStringField
      FieldName = 'tarjetaSupervisorID'
      Size = 255
    end
  end
  object dsUsuarios: TDataSource
    DataSet = QUsuarios
    Left = 248
    Top = 296
  end
  object QTarjetaUsu: TADOQuery
    Connection = DM.ADOBar
    Parameters = <>
    SQL.Strings = (
      'select'
      'TarjetaID'
      'from'
      'tarjetas'
      'where'
      'SUBSTRING (tarjetaID,1, 4) = '#39'1000'#39
      'order by'
      'TarjetaID')
    Left = 216
    Top = 328
    object QTarjetaUsuTarjetaID: TWideStringField
      FieldName = 'TarjetaID'
      Size = 255
    end
  end
  object dsTarjetaUsu: TDataSource
    DataSet = QTarjetaUsu
    Left = 248
    Top = 328
  end
  object QTarjetaSuper: TADOQuery
    Connection = DM.ADOBar
    Parameters = <>
    SQL.Strings = (
      'select'
      'TarjetaID'
      'from'
      'tarjetas'
      'where'
      'SUBSTRING (tarjetaID,1, 4) = '#39'1001'#39
      'order by'
      'TarjetaID')
    Left = 216
    Top = 360
    object QTarjetaSuperTarjetaID: TWideStringField
      FieldName = 'TarjetaID'
      Size = 255
    end
  end
  object dsTarjetaSuper: TDataSource
    DataSet = QTarjetaSuper
    Left = 248
    Top = 360
  end
end