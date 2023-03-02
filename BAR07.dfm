object frmActProducto: TfrmActProducto
  Left = 429
  Top = 38
  BorderIcons = []
  BorderStyle = bsSingle
  Caption = 'Actualizando Producto'
  ClientHeight = 658
  ClientWidth = 791
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poOwnerFormCenter
  OnActivate = FormActivate
  OnClose = FormClose
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  OnKeyPress = FormKeyPress
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 791
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
    Width = 791
    Height = 569
    Align = alClient
    BevelInner = bvRaised
    BevelOuter = bvLowered
    TabOrder = 1
    object Label1: TLabel
      Left = 16
      Top = 56
      Width = 133
      Height = 13
      Caption = 'NOMBRE DEL PRODUCTO'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label5: TLabel
      Left = 16
      Top = 96
      Width = 65
      Height = 13
      Caption = 'CATEGORIA'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label6: TLabel
      Left = 16
      Top = 16
      Width = 103
      Height = 13
      Caption = 'CODIGO DE BARRA'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label7: TLabel
      Left = 16
      Top = 136
      Width = 105
      Height = 13
      Caption = 'COSTO DE COMPRA'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label8: TLabel
      Left = 16
      Top = 216
      Width = 94
      Height = 13
      Caption = 'PRECIO DE LISTA'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label9: TLabel
      Left = 16
      Top = 176
      Width = 125
      Height = 13
      Caption = 'MARGEN DE GANANCIA'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label10: TLabel
      Left = 16
      Top = 344
      Width = 66
      Height = 13
      Caption = 'PROVEEDOR'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label12: TLabel
      Left = 16
      Top = 256
      Width = 109
      Height = 13
      Caption = 'UNIDAD DE MEDIDA'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label15: TLabel
      Left = 16
      Top = 296
      Width = 65
      Height = 13
      Caption = 'EXISTENCIA'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label20: TLabel
      Left = 160
      Top = 296
      Width = 74
      Height = 13
      Caption = 'MONTO ITBIS'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label11: TLabel
      Left = 104
      Top = 98
      Width = 179
      Height = 13
      Caption = 'M'#225'ximo de producto por categor'#237'a 56'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label22: TLabel
      Left = 160
      Top = 136
      Width = 119
      Height = 13
      Caption = 'NO. DE ORDEN EN CAT.'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object GroupBox1: TGroupBox
      Left = 296
      Top = 8
      Width = 409
      Height = 241
      Caption = 'TOUCH SCREEN'
      TabOrder = 12
      object Label2: TLabel
        Left = 16
        Top = 32
        Width = 46
        Height = 13
        Caption = 'LINEA #1'
      end
      object Label3: TLabel
        Left = 16
        Top = 72
        Width = 46
        Height = 13
        Caption = 'LINEA #2'
      end
      object Label4: TLabel
        Left = 16
        Top = 112
        Width = 46
        Height = 13
        Caption = 'LINEA #3'
      end
      object Label13: TLabel
        Left = 16
        Top = 152
        Width = 90
        Height = 13
        Caption = 'COLOR DE FONDO'
      end
      object Label14: TLabel
        Left = 16
        Top = 192
        Width = 100
        Height = 13
        Caption = 'COLOR DE LA LETRA'
      end
      object btinsertaimg: TSpeedButton
        Left = 144
        Top = 144
        Width = 57
        Height = 49
        Caption = 'Insertar'
        Glyph.Data = {
          F6000000424DF600000000000000760000002800000010000000100000000100
          04000000000080000000120B0000120B00001000000010000000000000000000
          8000008000000080800080000000800080008080000080808000C0C0C0000000
          FF00C0C0C00000FFFF00FF000000C0C0C000FFFF0000FFFFFF00DADADADADADA
          DADAA000000000000000D077770770770880A007707707708800D0F077777708
          80F0A0BF077070880FB0D0FBF0770B00FBF0A0BFBF00BFBFBFB0D0FBFBFBFBFB
          FBF0A0BFBFBFBF7007B0D0FBFBFBFB0330F0A0BFBFBFBF0330B0D0FBFBFBFB70
          07F0A0BFBFBFBFBFBFB0D000000000000000ADADADADADADADAD}
        Layout = blGlyphTop
        OnClick = btinsertaimgClick
      end
      object bteliminaimg: TSpeedButton
        Left = 208
        Top = 144
        Width = 57
        Height = 49
        Caption = 'Eliminar'
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
        Layout = blGlyphTop
        OnClick = bteliminaimgClick
      end
      object Panel3: TPanel
        Left = 144
        Top = 16
        Width = 121
        Height = 121
        Caption = 'Imagen'
        TabOrder = 0
        object Image1: TImage
          Left = 8
          Top = 8
          Width = 105
          Height = 105
          Center = True
        end
      end
      object DBEdit7: TDBEdit
        Left = 16
        Top = 48
        Width = 113
        Height = 21
        BevelKind = bkFlat
        BorderStyle = bsNone
        CharCase = ecUpperCase
        DataField = 'Linea1'
        DataSource = dsProducto
        TabOrder = 1
      end
      object DBEdit8: TDBEdit
        Left = 16
        Top = 88
        Width = 113
        Height = 21
        BevelKind = bkFlat
        BorderStyle = bsNone
        CharCase = ecUpperCase
        DataField = 'Linea2'
        DataSource = dsProducto
        TabOrder = 2
      end
      object DBEdit9: TDBEdit
        Left = 16
        Top = 128
        Width = 113
        Height = 21
        BevelKind = bkFlat
        BorderStyle = bsNone
        CharCase = ecUpperCase
        DataField = 'Linea3'
        DataSource = dsProducto
        TabOrder = 3
      end
      object DBLookupComboBox3: TDBLookupComboBox
        Left = 16
        Top = 168
        Width = 113
        Height = 21
        DataField = 'BgColor'
        DataSource = dsProducto
        KeyField = 'Color'
        ListField = 'Nombre'
        ListSource = dsColores
        TabOrder = 4
      end
      object DBLookupComboBox4: TDBLookupComboBox
        Left = 16
        Top = 208
        Width = 113
        Height = 21
        DataField = 'FgColor'
        DataSource = dsProducto
        KeyField = 'Color'
        ListField = 'Nombre'
        ListSource = dsColores
        TabOrder = 5
      end
      object Panel17: TPanel
        Left = 269
        Top = 15
        Width = 81
        Height = 65
        BevelOuter = bvNone
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        TabOrder = 6
        object lbprod1: TStaticText
          Left = 0
          Top = 1
          Width = 81
          Height = 64
          Alignment = taCenter
          AutoSize = False
          Caption = 'lbprod1'
          TabOrder = 0
        end
      end
    end
    object DBCheckBox1: TDBCheckBox
      Left = 296
      Top = 328
      Width = 249
      Height = 17
      Caption = 'OCULTAR EN LA IMPRESION DE FACTURA'
      DataField = 'OcultarEnFactura'
      DataSource = dsProducto
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 13
      ValueChecked = 'True'
      ValueUnchecked = 'False'
    end
    object DBRadioGroup1: TDBRadioGroup
      Left = 296
      Top = 256
      Width = 409
      Height = 38
      Caption = 'ESTATUS'
      Columns = 2
      DataField = 'Estatus'
      DataSource = dsProducto
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      Items.Strings = (
        'ACTIVO'
        'INACTIVO')
      ParentFont = False
      TabOrder = 11
      Values.Strings = (
        'ACT'
        'INA')
    end
    object DBCheckBox2: TDBCheckBox
      Left = 296
      Top = 344
      Width = 145
      Height = 17
      Caption = 'IMPRESORA REMOTA'
      DataField = 'ImpresoraRemota'
      DataSource = dsProducto
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 14
      ValueChecked = 'True'
      ValueUnchecked = 'False'
    end
    object DBCheckBox3: TDBCheckBox
      Left = 296
      Top = 312
      Width = 281
      Height = 17
      Caption = 'DESABILITAR ITBIS PARA LLEVAR / DELIVERY'
      DataField = 'InactivaItbiEnLlevar'
      DataSource = dsProducto
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 15
      ValueChecked = 'True'
      ValueUnchecked = 'False'
    end
    object DBCheckBox4: TDBCheckBox
      Left = 296
      Top = 296
      Width = 57
      Height = 17
      Caption = 'ITBIS'
      DataField = 'Itbis'
      DataSource = dsProducto
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 16
      ValueChecked = 'True'
      ValueUnchecked = 'False'
    end
    object DBEdit1: TDBEdit
      Left = 16
      Top = 32
      Width = 273
      Height = 21
      BevelKind = bkFlat
      BorderStyle = bsNone
      CharCase = ecUpperCase
      DataField = 'Codigo'
      DataSource = dsProducto
      Enabled = False
      TabOrder = 0
    end
    object DBEdit2: TDBEdit
      Left = 16
      Top = 72
      Width = 273
      Height = 21
      BevelKind = bkFlat
      BorderStyle = bsNone
      CharCase = ecUpperCase
      DataField = 'Nombre'
      DataSource = dsProducto
      TabOrder = 1
    end
    object DBLookupComboBox1: TDBLookupComboBox
      Left = 16
      Top = 112
      Width = 273
      Height = 21
      DataField = 'CategoriaID'
      DataSource = dsProducto
      KeyField = 'CategoriaID'
      ListField = 'Nombre1'
      ListSource = dsCategorias
      TabOrder = 2
    end
    object DBLookupComboBox2: TDBLookupComboBox
      Left = 16
      Top = 360
      Width = 273
      Height = 21
      DataField = 'ProveedorID'
      DataSource = dsProducto
      Enabled = False
      KeyField = 'ProveedorID'
      ListField = 'Nombre'
      ListSource = dsProveedores
      TabOrder = 9
    end
    object DBEdit3: TDBEdit
      Left = 16
      Top = 152
      Width = 129
      Height = 21
      BevelKind = bkFlat
      BorderStyle = bsNone
      CharCase = ecUpperCase
      DataField = 'Costo'
      DataSource = dsProducto
      Enabled = False
      TabOrder = 3
    end
    object DBEdit4: TDBEdit
      Left = 16
      Top = 192
      Width = 129
      Height = 21
      BevelKind = bkFlat
      BorderStyle = bsNone
      CharCase = ecUpperCase
      DataField = 'Beneficio'
      DataSource = dsProducto
      Enabled = False
      TabOrder = 5
    end
    object DBEdit5: TDBEdit
      Left = 16
      Top = 232
      Width = 129
      Height = 21
      BevelKind = bkFlat
      BorderStyle = bsNone
      CharCase = ecUpperCase
      DataField = 'Precio'
      DataSource = dsProducto
      Enabled = False
      TabOrder = 6
    end
    object DBEdit10: TDBEdit
      Left = 16
      Top = 272
      Width = 129
      Height = 21
      BevelKind = bkFlat
      BorderStyle = bsNone
      CharCase = ecUpperCase
      DataField = 'Unidad'
      DataSource = dsProducto
      Enabled = False
      TabOrder = 7
    end
    object DBEdit11: TDBEdit
      Left = 16
      Top = 312
      Width = 129
      Height = 21
      BevelKind = bkFlat
      BorderStyle = bsNone
      CharCase = ecUpperCase
      DataField = 'Existencia'
      DataSource = dsProducto
      Enabled = False
      TabOrder = 8
    end
    object pageing: TPageControl
      Left = 2
      Top = 432
      Width = 787
      Height = 135
      ActivePage = TabSheet1
      Align = alBottom
      Anchors = [akLeft, akTop, akRight, akBottom]
      TabOrder = 10
      object TabSheet1: TTabSheet
        Caption = 'Ingredientes'
        object btinsert: TSpeedButton
          Left = 560
          Top = 8
          Width = 185
          Height = 22
          Caption = 'F3 - INSERTAR INGREDIENTE   '
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          OnClick = btinsertClick
        end
        object btedit: TSpeedButton
          Left = 560
          Top = 32
          Width = 185
          Height = 22
          Caption = 'F4 - MODIFICAR INGREDIENTE'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          OnClick = bteditClick
        end
        object btdelete: TSpeedButton
          Left = 560
          Top = 56
          Width = 185
          Height = 22
          Caption = 'F5 - ELIMIAR INGREDIENTE     '
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          OnClick = btdeleteClick
        end
        object DBGrid1: TDBGrid
          Left = 0
          Top = 0
          Width = 553
          Height = 107
          Align = alLeft
          DataSource = dsIngredientes
          Options = [dgTitles, dgColLines, dgRowLines, dgTabs, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
          ReadOnly = True
          TabOrder = 0
          TitleFont.Charset = ANSI_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = []
          Columns = <
            item
              Expanded = False
              FieldName = 'Codigo'
              Title.Alignment = taCenter
              Title.Caption = 'Codigo de Barra'
              Width = 92
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Nombre'
              Width = 221
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Cantidad'
              Title.Alignment = taCenter
              Width = 50
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Precio'
              Title.Alignment = taCenter
              Width = 62
              Visible = True
            end
            item
              Alignment = taCenter
              Expanded = False
              FieldName = 'Imprime'
              Title.Alignment = taCenter
              Title.Caption = 'Imprimir?'
              Width = 49
              Visible = True
            end
            item
              Alignment = taCenter
              Expanded = False
              FieldName = 'Visualizar'
              Title.Alignment = taCenter
              Title.Caption = 'Visualizar?'
              Visible = True
            end>
        end
      end
      object TabSheet2: TTabSheet
        Caption = 'Oferta'
        ImageIndex = 1
        DesignSize = (
          779
          107)
        object Label16: TLabel
          Left = 8
          Top = 16
          Width = 35
          Height = 13
          Caption = 'DESDE'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label17: TLabel
          Left = 112
          Top = 16
          Width = 38
          Height = 13
          Caption = 'HASTA'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label18: TLabel
          Left = 112
          Top = 64
          Width = 41
          Height = 13
          Caption = 'PRECIO'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label19: TLabel
          Left = 8
          Top = 64
          Width = 77
          Height = 13
          Caption = '%DESCUENTO'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object btinsertaoferta: TSpeedButton
          Left = 512
          Top = 8
          Width = 161
          Height = 22
          Caption = 'F6 - INSERTAR OFERTA   '
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          OnClick = btinsertaofertaClick
        end
        object btmodificaoferta: TSpeedButton
          Left = 512
          Top = 32
          Width = 161
          Height = 22
          Caption = 'F7 - MODIFICAR OFERTA'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          OnClick = btmodificaofertaClick
        end
        object bteliminaoferta: TSpeedButton
          Left = 512
          Top = 56
          Width = 161
          Height = 22
          Caption = 'F8 - ELIMIAR OFERTA      '
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          OnClick = bteliminaofertaClick
        end
        object DBEdit12: TDBEdit
          Left = 8
          Top = 32
          Width = 89
          Height = 21
          BevelKind = bkFlat
          BorderStyle = bsNone
          CharCase = ecUpperCase
          DataField = 'OfertaDesde'
          DataSource = dsProducto
          TabOrder = 0
        end
        object DBEdit13: TDBEdit
          Left = 112
          Top = 32
          Width = 89
          Height = 21
          BevelKind = bkFlat
          BorderStyle = bsNone
          CharCase = ecUpperCase
          DataField = 'OfertaHasta'
          DataSource = dsProducto
          TabOrder = 1
        end
        object DBEdit14: TDBEdit
          Left = 8
          Top = 80
          Width = 89
          Height = 21
          BevelKind = bkFlat
          BorderStyle = bsNone
          CharCase = ecUpperCase
          DataField = 'OfertaDescuento'
          DataSource = dsProducto
          TabOrder = 2
        end
        object DBEdit15: TDBEdit
          Left = 112
          Top = 80
          Width = 89
          Height = 21
          BevelKind = bkFlat
          BorderStyle = bsNone
          CharCase = ecUpperCase
          DataField = 'OfertaPrecio'
          DataSource = dsProducto
          TabOrder = 3
        end
        object DBGrid2: TDBGrid
          Left = 216
          Top = 0
          Width = 289
          Height = 107
          Anchors = [akLeft, akTop, akBottom]
          DataSource = dsOferta
          Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
          ReadOnly = True
          TabOrder = 4
          TitleFont.Charset = ANSI_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = []
          Columns = <
            item
              Expanded = False
              FieldName = 'CantidadVendida'
              Title.Alignment = taCenter
              Title.Caption = 'Cantidad Vendida'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'CantidadOferta'
              Title.Alignment = taCenter
              Title.Caption = 'Cantidad Oferta'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'PrecioOferta'
              Title.Alignment = taCenter
              Title.Caption = 'Precio Oferta'
              Width = 85
              Visible = True
            end>
        end
      end
    end
    object DBCheckBox5: TDBCheckBox
      Left = 296
      Top = 360
      Width = 169
      Height = 17
      Caption = 'ACTUALIZAR EXISTENCIA'
      DataField = 'ActualizarExistencia'
      DataSource = dsProducto
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 17
      ValueChecked = 'True'
      ValueUnchecked = 'False'
    end
    object GroupBox2: TGroupBox
      Left = 14
      Top = 385
      Width = 731
      Height = 42
      Caption = '[ Info. para la Comanda ]'
      Ctl3D = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 18
      object Label21: TLabel
        Left = 160
        Top = 19
        Width = 80
        Height = 13
        Caption = 'IMPRIMIR EN :'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object DBCheckBox6: TDBCheckBox
        Left = 8
        Top = 17
        Width = 148
        Height = 17
        Caption = 'IMPRIME EN COMANDA'
        DataField = 'ImpresoraRemota'
        DataSource = dsProducto
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
        ValueChecked = 'True'
        ValueUnchecked = 'False'
        OnClick = DBCheckBox6Click
      end
      object dblkcbImpresoraRemota: TDBLookupComboBox
        Left = 245
        Top = 16
        Width = 308
        Height = 19
        DataField = 'IDPrinter'
        DataSource = dsProducto
        KeyField = 'IDPrinter'
        ListField = 'nombre_printer;path_printer'
        ListSource = dsPrinter
        TabOrder = 1
      end
      object dbchkImpresoraRemota2: TDBCheckBox
        Left = 560
        Top = 17
        Width = 161
        Height = 17
        Caption = 'IMPRIME OTRO PRINTER'
        DataField = 'ImpresoraRemota2'
        DataSource = dsProducto
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 2
        ValueChecked = 'True'
        ValueUnchecked = 'False'
        OnClick = dbchkImpresoraRemota2Click
      end
    end
    object DBEdit16: TDBEdit
      Left = 160
      Top = 312
      Width = 129
      Height = 21
      BevelKind = bkFlat
      BorderStyle = bsNone
      CharCase = ecUpperCase
      DataField = 'MontoItbis'
      DataSource = dsProducto
      Enabled = False
      TabOrder = 19
    end
    object DBEdit6: TDBEdit
      Left = 160
      Top = 152
      Width = 129
      Height = 21
      Hint = 
        'Especifique el n'#250'mero de orden en que quiera que se visualiza el' +
        ' producto dentro de la Categor'#237'a'
      BevelKind = bkFlat
      BorderStyle = bsNone
      CharCase = ecUpperCase
      DataField = 'OrdenCategoria'
      DataSource = dsProducto
      ParentShowHint = False
      ShowHint = True
      TabOrder = 4
    end
  end
  object QCategoria: TADOQuery
    Connection = DM.ADOBar
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select'
      'CategoriaID, Nombre, Nombre +'#39'  [CANT. REG.: '#39
      
        ' + CAST((select count(*) from productos where Categorias.Categor' +
        'iaID=productos.CategoriaID)as varchar)+'#39'/56 ]'#39' as Nombre1'
      
        ',(select count(*) from productos where Categorias.CategoriaID=pr' +
        'oductos.CategoriaID) as total'
      ''
      'from'
      'Categorias'
      'order by'
      'CategoriaID')
    Left = 224
    Top = 309
    object QCategoriaCategoriaID: TIntegerField
      FieldName = 'CategoriaID'
    end
    object QCategoriaNombre: TWideStringField
      FieldName = 'Nombre'
      Size = 255
    end
    object QCategoriaNombre1: TWideStringField
      FieldName = 'Nombre1'
      ReadOnly = True
      Size = 301
    end
    object QCategoriatotal: TIntegerField
      FieldName = 'total'
      ReadOnly = True
    end
  end
  object dsCategorias: TDataSource
    DataSet = QCategoria
    Left = 256
    Top = 309
  end
  object QColor: TADOQuery
    Connection = DM.ADOBar
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select'
      'Color, Nombre'
      'from'
      'RestBar_Colores'
      'order by Nombre')
    Left = 224
    Top = 341
    object QColorColor: TWideStringField
      FieldName = 'Color'
      Size = 255
    end
    object QColorNombre: TWideStringField
      FieldName = 'Nombre'
      Size = 255
    end
  end
  object dsColores: TDataSource
    DataSet = QColor
    Left = 256
    Top = 341
  end
  object QProducto: TADOQuery
    Connection = DM.ADOBar
    CursorType = ctStatic
    LockType = ltBatchOptimistic
    BeforePost = QProductoBeforePost
    Parameters = <
      item
        Name = 'pro'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      
        'Select  pro_codigo ProductoID, pro_nombre Nombre, Linea1, Linea2' +
        ', Linea3, CategoriaID,'
      
        '          Imagen, BgColor, FgColor, pro_roriginal Codigo, pro_co' +
        'sto Costo, pro_precio1 Precio,'
      
        '          cast(case when pro_itbis = '#39'N'#39'  then 0 else 1 end as b' +
        'it) Itbis,'
      
        '          pro_beneficio Beneficio, ImpresoraRemota, OcultarEnFac' +
        'tura,'
      
        '          pro_status Estatus, sup_codigo ProveedorID, OfertaDesd' +
        'e, OfertaHasta,'
      '          OfertaPrecio, OfertaDescuento, InactivaItbiEnLlevar,'
      
        '         pro_unidad_medida Unidad, Impresora, pro_existencia Exi' +
        'stencia, '
      
        '         cast(case when pro_servicio = '#39'True'#39' then 0 else 1 end ' +
        'as bit) ActualizarExistencia, IDPrinter,'
      
        '         pro_montoitbis MontoItbis, OrdenCategoria, ImpresoraRem' +
        'ota2'
      'From Productos P'
      'Where Pro_Codigo = :pro')
    Left = 224
    Top = 277
    object QProductoProductoID: TAutoIncField
      FieldName = 'ProductoID'
      ReadOnly = True
    end
    object QProductoNombre: TWideStringField
      FieldName = 'Nombre'
      Size = 255
    end
    object QProductoLinea1: TWideStringField
      FieldName = 'Linea1'
      Size = 255
    end
    object QProductoLinea2: TWideStringField
      FieldName = 'Linea2'
      Size = 255
    end
    object QProductoLinea3: TWideStringField
      FieldName = 'Linea3'
      Size = 255
    end
    object QProductoCategoriaID: TIntegerField
      FieldName = 'CategoriaID'
    end
    object QProductoImagen: TWideStringField
      FieldName = 'Imagen'
      Size = 255
    end
    object QProductoBgColor: TWideStringField
      FieldName = 'BgColor'
      Size = 255
    end
    object QProductoFgColor: TWideStringField
      FieldName = 'FgColor'
      Size = 255
    end
    object QProductoCodigo: TWideStringField
      FieldName = 'Codigo'
      Size = 255
    end
    object QProductoCosto: TBCDField
      FieldName = 'Costo'
      Precision = 19
    end
    object QProductoPrecio: TFloatField
      FieldName = 'Precio'
    end
    object QProductoItbis: TBooleanField
      FieldName = 'Itbis'
    end
    object QProductoBeneficio: TBCDField
      FieldName = 'Beneficio'
      Precision = 19
    end
    object QProductoImpresoraRemota: TBooleanField
      FieldName = 'ImpresoraRemota'
    end
    object QProductoOcultarEnFactura: TBooleanField
      FieldName = 'OcultarEnFactura'
    end
    object QProductoEstatus: TWideStringField
      FieldName = 'Estatus'
      Size = 255
    end
    object QProductoProveedorID: TIntegerField
      FieldName = 'ProveedorID'
    end
    object QProductoOfertaDesde: TDateTimeField
      FieldName = 'OfertaDesde'
    end
    object QProductoOfertaHasta: TDateTimeField
      FieldName = 'OfertaHasta'
    end
    object QProductoOfertaPrecio: TFloatField
      FieldName = 'OfertaPrecio'
    end
    object QProductoOfertaDescuento: TBCDField
      FieldName = 'OfertaDescuento'
      Precision = 19
    end
    object QProductoInactivaItbiEnLlevar: TBooleanField
      FieldName = 'InactivaItbiEnLlevar'
    end
    object QProductoUnidad: TWideStringField
      FieldName = 'Unidad'
      Size = 255
    end
    object QProductoImpresora: TWideStringField
      FieldName = 'Impresora'
      Size = 255
    end
    object QProductoExistencia: TFloatField
      FieldName = 'Existencia'
    end
    object QProductoActualizarExistencia: TBooleanField
      FieldName = 'ActualizarExistencia'
    end
    object QProductoIDPrinter: TIntegerField
      FieldName = 'IDPrinter'
    end
    object QProductoMontoItbis: TFloatField
      FieldName = 'MontoItbis'
    end
    object QProductoOrdenCategoria: TIntegerField
      FieldName = 'OrdenCategoria'
    end
    object QProductoImpresoraRemota2: TBooleanField
      FieldName = 'ImpresoraRemota2'
    end
  end
  object dsProducto: TDataSource
    DataSet = QProducto
    OnStateChange = dsProductoStateChange
    OnDataChange = dsProductoDataChange
    Left = 256
    Top = 277
  end
  object QProveedor: TADOQuery
    Connection = DM.ADOBar
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select'
      'sup_codigo ProveedorID, sup_nombre Nombre'
      'from'
      'Proveedores'
      'order by'
      'sup_Nombre')
    Left = 224
    Top = 373
    object QProveedorProveedorID: TAutoIncField
      FieldName = 'ProveedorID'
      ReadOnly = True
    end
    object QProveedorNombre: TWideStringField
      FieldName = 'Nombre'
      Size = 255
    end
  end
  object dsProveedores: TDataSource
    DataSet = QProveedor
    Left = 256
    Top = 373
  end
  object QIngredientes: TADOQuery
    Connection = DM.ADOBar
    OnCalcFields = QIngredientesCalcFields
    DataSource = dsProducto
    Parameters = <
      item
        Name = 'ProductoID'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = Null
      end>
    SQL.Strings = (
      'select'
      'i.ProductoID, i.IngredienteID, i.ProductoIngrediente,'
      
        'i.Cantidad, i.Precio, i.Imprimir, p.pro_nombre Nombre, p.pro_ror' +
        'iginal Codigo,'
      'i.Visualizar'
      'from'
      'Ingredientes i, Productos p'
      'where'
      'p.Pro_codigo = i.ProductoIngrediente'
      'and i.ProductoID = :ProductoID'
      'order by'
      'i.IngredienteID'
      '')
    Left = 232
    Top = 593
    object QIngredientesProductoID: TIntegerField
      FieldName = 'ProductoID'
    end
    object QIngredientesIngredienteID: TIntegerField
      FieldName = 'IngredienteID'
    end
    object QIngredientesProductoIngrediente: TIntegerField
      FieldName = 'ProductoIngrediente'
    end
    object QIngredientesPrecio: TBCDField
      FieldName = 'Precio'
      currency = True
      Precision = 19
    end
    object QIngredientesImprimir: TBooleanField
      FieldName = 'Imprimir'
    end
    object QIngredientesNombre: TWideStringField
      FieldName = 'Nombre'
      Size = 255
    end
    object QIngredientesCodigo: TWideStringField
      FieldName = 'Codigo'
      Size = 255
    end
    object QIngredientesCantidad: TFloatField
      FieldName = 'Cantidad'
    end
    object QIngredientesImprime: TStringField
      DisplayWidth = 2
      FieldKind = fkCalculated
      FieldName = 'Imprime'
      Size = 2
      Calculated = True
    end
    object QIngredientesVisualizar: TBooleanField
      FieldName = 'Visualizar'
    end
  end
  object dsIngredientes: TDataSource
    DataSet = QIngredientes
    Left = 264
    Top = 593
  end
  object OpenPictureDialog1: TOpenPictureDialog
    Left = 440
    Top = 297
  end
  object QOferta: TADOQuery
    Connection = DM.ADOBar
    LockType = ltBatchOptimistic
    DataSource = dsProducto
    Parameters = <
      item
        Name = 'ProductoID'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = Null
      end>
    SQL.Strings = (
      'select'
      'ProductoID, OfertaID, CantidadVendida, CantidadOferta,'
      'PrecioOferta'
      'from'
      'RestBar_Ofertas'
      'where'
      'ProductoID = :ProductoID'
      'order by'
      'OfertaID')
    Left = 350
    Top = 601
    object QOfertaProductoID: TIntegerField
      FieldName = 'ProductoID'
    end
    object QOfertaCantidadVendida: TFloatField
      FieldName = 'CantidadVendida'
    end
    object QOfertaCantidadOferta: TFloatField
      FieldName = 'CantidadOferta'
    end
    object QOfertaPrecioOferta: TBCDField
      FieldName = 'PrecioOferta'
      currency = True
      Precision = 19
    end
    object QOfertaOfertaID: TIntegerField
      FieldName = 'OfertaID'
    end
  end
  object dsOferta: TDataSource
    DataSet = QOferta
    Left = 382
    Top = 601
  end
  object QPrinter_Remoto: TADOQuery
    Connection = DM.ADOBar
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'Select * From Printer_Remoto')
    Left = 224
    Top = 405
  end
  object dsPrinter: TDataSource
    AutoEdit = False
    DataSet = QPrinter_Remoto
    Left = 256
    Top = 405
  end
  object search: TQrySearchDlgADO
    AliasName = DM.ADOBar
    Left = 608
    Top = 249
  end
end
