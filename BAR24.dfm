object frmActMesas: TfrmActMesas
  Left = 296
  Top = 213
  BorderIcons = []
  BorderStyle = bsSingle
  Caption = 'Actualizando Mesa'
  ClientHeight = 342
  ClientWidth = 312
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
    Width = 312
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
    Width = 312
    Height = 253
    Align = alClient
    BevelInner = bvRaised
    BevelOuter = bvLowered
    TabOrder = 1
    object Panel3: TPanel
      Left = 2
      Top = -3
      Width = 308
      Height = 254
      Align = alBottom
      Anchors = [akLeft, akTop, akRight, akBottom]
      TabOrder = 0
      object Label1: TLabel
        Left = 16
        Top = 16
        Width = 114
        Height = 13
        Caption = 'NOMBRE DE LA MESA'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label2: TLabel
        Left = 16
        Top = 64
        Width = 30
        Height = 13
        Caption = 'AREA'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object DBEdit2: TDBEdit
        Left = 16
        Top = 32
        Width = 273
        Height = 21
        BevelKind = bkFlat
        BorderStyle = bsNone
        CharCase = ecUpperCase
        DataField = 'Nombre'
        DataSource = dsMesas
        TabOrder = 0
      end
      object DBLookupComboBox1: TDBLookupComboBox
        Left = 16
        Top = 80
        Width = 273
        Height = 21
        DataField = 'AreaID'
        DataSource = dsMesas
        KeyField = 'AreaID'
        ListField = 'Nombre'
        ListSource = dsAreas
        TabOrder = 1
      end
      object DBRadioGroup1: TDBRadioGroup
        Left = 16
        Top = 120
        Width = 185
        Height = 105
        Caption = 'ESTATUS'
        DataField = 'Estatus'
        DataSource = dsMesas
        Items.Strings = (
          'Abierta'
          'Disponible')
        TabOrder = 2
        Values.Strings = (
          'ABI'
          'DISP')
      end
    end
  end
  object QMesas: TADOQuery
    Connection = DM.ADOBar
    OnNewRecord = QMesasNewRecord
    Parameters = <
      item
        Name = 'cod'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = Null
      end>
    SQL.Strings = (
      'select'
      'MesaID, Nombre, AreaID, Estatus'
      'from'
      'Mesas'
      'where'
      'MesaID = :cod'
      'order by'
      'MesaID')
    Left = 320
    Top = 208
    object QMesasMesaID: TIntegerField
      FieldName = 'MesaID'
    end
    object QMesasNombre: TWideStringField
      FieldName = 'Nombre'
      Size = 255
    end
    object QMesasAreaID: TIntegerField
      FieldName = 'AreaID'
    end
    object QMesasEstatus: TWideStringField
      FieldName = 'Estatus'
      Size = 255
    end
  end
  object dsMesas: TDataSource
    DataSet = QMesas
    Left = 352
    Top = 208
  end
  object QAreas: TADOQuery
    Connection = DM.ADOBar
    Parameters = <>
    SQL.Strings = (
      'select'
      'AreaID, Nombre'
      'from'
      'Areas'
      'order by Nombre')
    Left = 320
    Top = 241
    object QAreasAreaID: TAutoIncField
      FieldName = 'AreaID'
      ReadOnly = True
    end
    object QAreasNombre: TWideStringField
      FieldName = 'Nombre'
      Size = 255
    end
  end
  object dsAreas: TDataSource
    DataSet = QAreas
    Left = 352
    Top = 241
  end
end
