object frmConsDev: TfrmConsDev
  Left = 206
  Top = 154
  BorderIcons = []
  BorderStyle = bsSingle
  Caption = 'Consulta de Devoluciones'
  ClientHeight = 481
  ClientWidth = 912
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  WindowState = wsMaximized
  OnActivate = FormActivate
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  PixelsPerInch = 96
  TextHeight = 13
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
  object btrefresh: TSpeedButton
    Left = 85
    Top = 8
    Width = 89
    Height = 73
    Caption = 'F2-CONSULTAR'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlue
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    Glyph.Data = {
      36080000424D3608000000000000360400002800000020000000200000000100
      0800000000000004000000000000000000000001000000000000000000000000
      80000080000000808000800000008000800080800000C0C0C000C0DCC000F0CA
      A6000020400000206000002080000020A0000020C0000020E000004000000040
      20000040400000406000004080000040A0000040C0000040E000006000000060
      20000060400000606000006080000060A0000060C0000060E000008000000080
      20000080400000806000008080000080A0000080C0000080E00000A0000000A0
      200000A0400000A0600000A0800000A0A00000A0C00000A0E00000C0000000C0
      200000C0400000C0600000C0800000C0A00000C0C00000C0E00000E0000000E0
      200000E0400000E0600000E0800000E0A00000E0C00000E0E000400000004000
      20004000400040006000400080004000A0004000C0004000E000402000004020
      20004020400040206000402080004020A0004020C0004020E000404000004040
      20004040400040406000404080004040A0004040C0004040E000406000004060
      20004060400040606000406080004060A0004060C0004060E000408000004080
      20004080400040806000408080004080A0004080C0004080E00040A0000040A0
      200040A0400040A0600040A0800040A0A00040A0C00040A0E00040C0000040C0
      200040C0400040C0600040C0800040C0A00040C0C00040C0E00040E0000040E0
      200040E0400040E0600040E0800040E0A00040E0C00040E0E000800000008000
      20008000400080006000800080008000A0008000C0008000E000802000008020
      20008020400080206000802080008020A0008020C0008020E000804000008040
      20008040400080406000804080008040A0008040C0008040E000806000008060
      20008060400080606000806080008060A0008060C0008060E000808000008080
      20008080400080806000808080008080A0008080C0008080E00080A0000080A0
      200080A0400080A0600080A0800080A0A00080A0C00080A0E00080C0000080C0
      200080C0400080C0600080C0800080C0A00080C0C00080C0E00080E0000080E0
      200080E0400080E0600080E0800080E0A00080E0C00080E0E000C0000000C000
      2000C0004000C0006000C0008000C000A000C000C000C000E000C0200000C020
      2000C0204000C0206000C0208000C020A000C020C000C020E000C0400000C040
      2000C0404000C0406000C0408000C040A000C040C000C040E000C0600000C060
      2000C0604000C0606000C0608000C060A000C060C000C060E000C0800000C080
      2000C0804000C0806000C0808000C080A000C080C000C080E000C0A00000C0A0
      2000C0A04000C0A06000C0A08000C0A0A000C0A0C000C0A0E000C0C00000C0C0
      2000C0C04000C0C06000C0C08000C0C0A000F0FBFF0040400000808080000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00FDFDFDFDFDFD
      FDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFD
      FDFDFDFDFDFDFDFDFD9B9B9B9B9B9B9B9B9B9B9B9BFDFDFDFDFDFDFDFDFDFDFD
      FDFDFDFDFDFDFDFD9B9B9B000000000000009B9B9B9B9BFDFDFDFDFDFDFDFDFD
      FDFDFDFDFDFD9B9B9B9B009BEDEDEDEDFF0700009B9B9BFDFDFDFDFDFDFDFDFD
      FDFDFDFDFD9B9B9B009B9B9BEDEDEDEDFFFFFF0700009BFDFDFDFDFDFDFDFDFD
      FDFDFDFD9B9B9B009B9B9B0000000000000007FFED009BFDFDFDFDFDFDFDFDFD
      FDFDFD9B9B9B009B9B009BFFFFFFFFFFFFFF9B00EDED00FDFDFDFDFDFDFDFDFD
      FDFDFD9B9B9B009B00FF079B00000000009B07FF00ED00FDFDFDFDFDFDFDFDFD
      FDFDFD9B9B9B0000FF009BEDEDEDEDEDFFED9B00FF9B00FDFDFDFDFDFDFDFDFD
      FDFD5B009B9B00FF0007EDEDEDEDEDFFEDEDED0000FF00FDFDFDFDFDFDFDFDFD
      FD5B00BFB69B00FF0000009BEDEDFFEDED9B009B00FF00FDFDFDFDFDFDFDFDFD
      5B00B6B6ADAD00FF009B9B9B00000000009B9B9B00FF00FDFDFDFDFDFDFDFD5B
      00B6ADAD009B9B00FF00009B9B9B9B9B9B9B0000FF00FDFDFDFDFDFDFDFD5B00
      ADAD0000BF9B9B0000FFFF00000000000000FFFF005B5BFDFDFDFDFDFD5B00AD
      0000BFBF9B9B9B00ED0000FFFFFFFFFFFFFF0000B640005B5B5BFDFD5B000000
      BFBFBF9B9B9B00EDEDFFED000000000000000040B6B6BF00005BFD5B0000F6F6
      F6F69B9B9B00009BFFED00F6F65BF6F6F6F6F6F640B6B6005BFD0000F6F6F6F6
      F6F69B9B00000000009BF65BF6F65BF6F6F6F6F6FF00005B5BFDFD00FFF6F6F6
      F6F6F600000000009BADF6F6ADF6F65BF6F6F6F6F6F6405B5B5BFDFD00FFFFF6
      FFF6FF000000009BFFF65BF6FFB6FFF6B6F6FFF6FFF6F600FDFDFDFDFD00FFFF
      F6FFF69B00009BFFADFFF65BF6FFF6FFF6FFF6FFF6FFF6F600FDFDFDFDFD00FF
      FFF6FFF6FFF65BF6FFB6FFF6B6F6FFF6FFF6FFF6FFF60000FDFDFDFDFDFDFD00
      FFFFF6FFF6FFF65BF6FFF6FFF6FFF6FFF6FFF6FF0000FDFDFDFDFDFDFDFDFDFD
      00FFFFFFFFFFFFFFB6FFFFFFFFFFFFFFFFF60000FDFDFDFDFDFDFDFDFDFDFDFD
      FD00FFFFF6FFF6FFF6FFF6FFF6FFF6FF0000FDFDFDFDFDFDFDFDFDFDFDFDFDFD
      FDFD00FFFFFFFFFFFFFFFFFFFFF60000FDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFD
      FDFDFD00FFFFF6FFF6FFF6FF0000FDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFD
      FDFDFDFD00FFFFFFFFF6000000FDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFD
      FDFDFDFDFD00FFFF0000FDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFD
      FDFDFDFDFDFD0000FDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFD
      FDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFD
      FDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFD}
    Layout = blGlyphTop
    ParentFont = False
    OnClick = btrefreshClick
  end
  object GroupBox1: TGroupBox
    Left = 184
    Top = 8
    Width = 249
    Height = 73
    Caption = 'Per'#237'odo'
    TabOrder = 0
    object Label1: TLabel
      Left = 16
      Top = 24
      Width = 31
      Height = 13
      Caption = 'Desde'
    end
    object Label2: TLabel
      Left = 16
      Top = 48
      Width = 28
      Height = 13
      Caption = 'Hasta'
    end
    object fecha1: TDateTimePicker
      Left = 56
      Top = 24
      Width = 89
      Height = 21
      Date = 40381.000000000000000000
      Time = 40381.000000000000000000
      TabOrder = 0
    end
    object fecha2: TDateTimePicker
      Left = 56
      Top = 48
      Width = 89
      Height = 21
      Date = 40381.000000000000000000
      Time = 40381.000000000000000000
      TabOrder = 1
    end
    object hora1: TDateTimePicker
      Left = 144
      Top = 24
      Width = 97
      Height = 21
      Date = 39236.289937789360000000
      Time = 39236.289937789360000000
      Kind = dtkTime
      TabOrder = 2
    end
    object hora2: TDateTimePicker
      Left = 144
      Top = 48
      Width = 97
      Height = 21
      Date = 39235.502322407410000000
      Time = 39235.502322407410000000
      Kind = dtkTime
      TabOrder = 3
    end
  end
  object GroupBox2: TGroupBox
    Left = 440
    Top = 8
    Width = 289
    Height = 73
    Caption = 'Filtro de Busqueda'
    TabOrder = 1
    object Label4: TLabel
      Left = 16
      Top = 48
      Width = 35
      Height = 13
      Caption = 'Estatus'
    end
    object ckCajero: TCheckBox
      Left = 16
      Top = 24
      Width = 57
      Height = 17
      Caption = 'Cajero'
      TabOrder = 0
    end
    object DBLookupComboBox1: TDBLookupComboBox
      Left = 80
      Top = 24
      Width = 201
      Height = 21
      KeyField = 'UsuarioID'
      ListField = 'Nombre'
      ListSource = dsCajeros
      TabOrder = 1
    end
    object cbestatus: TComboBox
      Left = 80
      Top = 44
      Width = 89
      Height = 21
      Style = csDropDownList
      ItemHeight = 13
      ItemIndex = 0
      TabOrder = 2
      Text = 'Todos'
      Items.Strings = (
        'Todos'
        'Anulados'
        'Emitidas')
    end
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 85
    Width = 912
    Height = 396
    Align = alBottom
    Anchors = [akLeft, akTop, akRight, akBottom]
    DataSource = dsDevolucion
    Options = [dgTitles, dgColLines, dgRowLines, dgTabs, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
    ReadOnly = True
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'DevolucionID'
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'NCF'
        Title.Alignment = taCenter
        Width = 123
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'NCF_Modifica'
        Title.Alignment = taCenter
        Width = 127
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Cliente'
        Title.Caption = 'Nombre del Cliente'
        Width = 167
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'Hora'
        Title.Alignment = taCenter
        Width = 113
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CajaID'
        Title.Alignment = taCenter
        Width = 40
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CajeroID'
        Title.Alignment = taCenter
        Width = 49
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'FacturaID'
        Title.Alignment = taCenter
        Width = 52
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Descuento'
        Title.Alignment = taCenter
        Width = 80
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Propina'
        Title.Alignment = taCenter
        Width = 80
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Itbis'
        Title.Alignment = taCenter
        Width = 80
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Total'
        Title.Alignment = taCenter
        Width = 80
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Estatus'
        Title.Alignment = taCenter
        Width = 43
        Visible = True
      end>
  end
  object Memo1: TMemo
    Left = 432
    Top = 176
    Width = 321
    Height = 57
    TabOrder = 3
    Visible = False
  end
  object QDevolucion: TADOQuery
    Connection = DM.ADOBar
    Parameters = <
      item
        Name = 'fec1'
        Attributes = [paNullable]
        DataType = ftDateTime
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = Null
      end
      item
        Name = 'fec2'
        Attributes = [paNullable]
        DataType = ftDateTime
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = Null
      end>
    SQL.Strings = (
      'select'
      
        'd.DevolucionID, d.Fecha, d.SupervisorID, d.CajaID, d.CajeroID, d' +
        '.FacturaID, d.Total,'
      
        'd.Estatus, d.NCF, d.Hora, d.Itbis, d.Propina, d.Descuento, d.NCF' +
        '_Modifica,'
      'f.Nombre as Cliente'
      'from'
      'Devolucion d, Factura f'
      'where'
      'd.CajaID = f.CajaID'
      'and d.CajeroID = f.CajeroID'
      'and d.FacturaID = f.FacturaID'
      'and d.hora between :fec1 and :fec2')
    Left = 288
    Top = 176
    object QDevolucionFecha: TDateTimeField
      FieldName = 'Fecha'
    end
    object QDevolucionSupervisorID: TIntegerField
      FieldName = 'SupervisorID'
    end
    object QDevolucionCajaID: TIntegerField
      FieldName = 'CajaID'
    end
    object QDevolucionCajeroID: TIntegerField
      FieldName = 'CajeroID'
    end
    object QDevolucionFacturaID: TIntegerField
      FieldName = 'FacturaID'
    end
    object QDevolucionEstatus: TWideStringField
      FieldName = 'Estatus'
      Size = 255
    end
    object QDevolucionNCF: TWideStringField
      FieldName = 'NCF'
      Size = 255
    end
    object QDevolucionHora: TDateTimeField
      FieldName = 'Hora'
    end
    object QDevolucionItbis: TBCDField
      FieldName = 'Itbis'
      currency = True
      Precision = 19
    end
    object QDevolucionPropina: TBCDField
      FieldName = 'Propina'
      currency = True
      Precision = 19
    end
    object QDevolucionDescuento: TBCDField
      FieldName = 'Descuento'
      currency = True
      Precision = 19
    end
    object QDevolucionTotal: TBCDField
      FieldName = 'Total'
      currency = True
      Precision = 19
    end
    object QDevolucionNCF_Modifica: TWideStringField
      FieldName = 'NCF_Modifica'
      Size = 255
    end
    object QDevolucionDevolucionID: TIntegerField
      FieldName = 'DevolucionID'
      DisplayFormat = '0000'
    end
    object QDevolucionCliente: TWideStringField
      FieldName = 'Cliente'
      Size = 255
    end
  end
  object dsDevolucion: TDataSource
    DataSet = QDevolucion
    Left = 320
    Top = 176
  end
  object QCajeros: TADOQuery
    Connection = DM.ADOBar
    Parameters = <>
    SQL.Strings = (
      'select'
      'UsuarioID, Nombre'
      'from'
      'Usuarios'
      'where'
      'Cajero = true'
      'order by'
      'Nombre')
    Left = 288
    Top = 240
    object QCajerosUsuarioID: TAutoIncField
      FieldName = 'UsuarioID'
      ReadOnly = True
    end
    object QCajerosNombre: TWideStringField
      FieldName = 'Nombre'
      Size = 255
    end
  end
  object dsCajeros: TDataSource
    DataSet = QCajeros
    Left = 320
    Top = 240
  end
  object Query1: TADOQuery
    Connection = DM.ADOBar
    Parameters = <>
    Left = 288
    Top = 208
  end
  object Timer1: TTimer
    OnTimer = Timer1Timer
    Left = 320
    Top = 208
  end
end
