object frmUsuarios: TfrmUsuarios
  Left = 861
  Top = 127
  BorderIcons = []
  BorderStyle = bsSingle
  Caption = 'Usuarios'
  ClientHeight = 362
  ClientWidth = 529
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsMDIChild
  KeyPreview = True
  OldCreateOrder = False
  Position = poDefault
  Visible = True
  OnActivate = FormActivate
  OnClose = FormClose
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
  object btedit: TSpeedButton
    Left = 88
    Top = 8
    Width = 73
    Height = 73
    Caption = 'F2-CAMBIAR'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlue
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    Glyph.Data = {
      360C0000424D360C000000000000360000002800000020000000200000000100
      180000000000000C000000000000000000000000000000000000FFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9067
      60FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9067600000
      00906760906760FFFFFFFFFFFFFFFFFF906760FFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF906760000000FFC8
      CF000000000000906760906760906760906760906760FFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF906760000000FFC8CFFFC8
      CFFFC8CFCF9790000000000000906760000000906760906760FFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF906760000000FFC8CFFFC8CFCF97
      90CF9790906760906760000000000000906760000000906760906760FFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF906760000000FFC8CFCF9790CF97909067
      60906760000000000000906760906760906760906760000000906760906760FF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFF906760000000CF9790CF97909067609067600000
      00000000CF9790CF9790CF9790CF9790CF9790CF9790CF979000000000000090
      6760906760FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFF906760000000CF9790906760906760000000000000CF97
      90CF9790CF9790CF9790CF9790CF9790CF9790CF9790CF9790CF979000000000
      0000000000906760906760FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFF505050000000000000906760000000000000FFC8CFCF9790FFC8
      CFCF9790FFC8CFCF9790FFC8CFCF9790000000000000FFC8CFCF9790FFC8CF00
      0000906760000000000000906760906760FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFF906760000000000000000000000000000000FFC8CFFFC8CFFFC8CFFFC8
      CFFFC8CFFFC8CFFFC8CFFFC8CF000000CF979060302F000000FFC8CFFFC8CFFF
      C8CF000000906760CF9790000000000000906760906760906760FFFFFFFFFFFF
      9067600000000000000000000000004040406097FF000000000000FFC8CFFFC8
      CFFFC8CFFFC8CF000000000000000000CF979060302F000000FFC8CFFFC8CFFF
      C8CFFFC8CF000000906760CF9790CF9790000000000000906760FFFFFF906760
      000000000000FFC8CFFFFFFF0000009097FF6097FF6097FF6097FF000000FFC8
      CFFFFFFF000000CF9790000000000000CF979060302F000000FFFFFFFFC8CFFF
      FFFFFFC8CFFFFFFF000000906760CF9790000000906760FFFFFF000000000000
      FFFFFFFFC8CFFFFFFFFFC8CFFFFFFF0000000000000000000000000000000000
      0000000000000060302F000000000000CF979060302F000000FFC8CFFFFFFFFF
      C8CFFFFFFFFFC8CFFFFFFF000000000000906760906760FFFFFFFFFFFF000000
      FFC8CFFFFFFFFFC8CFFFFFFFFFC8CF00000000000000FFFF00FFFF0000006097
      FF00000060302F60302F000000000000CF979060302F000000FFFFFFFFC8CFFF
      FFFFFFC8CFFFFFFFFFC8CFFFFFFF000000906760906760906760FFFFFFFFFFFF
      000000FFC8CFFFFFFFFFC8CFFFFFFFFFC8CF00000000000000FFFF00FFFF0000
      006097FF000000000000FFFFFF000000CF979060302F000000FFC8CFFFFFFFFF
      C8CFFFFFFFFFC8CFFFFFFFFFC8CFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFF000000FFC8CFFFFFFFFFFFFFFFFFFF00000090FFFF00000000FFFF00FF
      FF0000006097FF000000FFFFFF000000CF979060302F000000FFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC8CFFFFFFF000000FFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFF000000FFC8CFFFFFFFFFFFFFFFFFFF00000090FFFF00000000FF
      FF00FFFF0000006097FF000000000000CF979060302F000000FFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFF000000000000FFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFF000000FFC8CFFFFFFFFFFFFFFFFFFF00000090FFFF0000
      0000FFFF00FFFF000000000000000000CF979060302F000000FFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFF000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFF000000FFC8CFFFFFFFFFC8CFFFFFFF00000090FF
      FF00000000FFFF00FFFF000000000000000000000000000000000000000000FF
      FFFF000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFC8CFFFFFFFFFFFFF0000000000
      0090FFFF00000000FFFF000000CF9790CF9790CF9790CF9790CF979000000000
      0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFC8CFFFFFFF000000CF97
      9000000090FFFF000000000000FF97FFFF97FFFF97FFFF97FFCF9790000000FF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFC8CF000000CF97
      9000000000000090FFFF000000000000000000000000000000000000000000FF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000000000CF97
      90CF979000000000000090FFFF00000000FFFF00FFFF0000006097FF000000FF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FF97
      FFCF979000000000000000000090FFFF00000000FFFF00FFFF00000000000000
      0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000
      00CF979000000000000000000000000090FFFF00000000FFFF00FFFF00000000
      0000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000
      00FF97FFCF9790FFFFFF50505050505000000090FFFF00000000FFFF00FFFF00
      0000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FF000000FF97FFFF97FF00000000000000000000000090FFFF00000000000000
      00A0000090000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFF00000000000000000050505040404000000000000090FFFF00000000
      00A00000CF000080000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFF1F201FA09F9FDFD8DFBFBFBF40404000000000000000000000
      00A0FFFFFF6067FF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFF000000DFD8DFFFFFFFDFD8DF505050000000FFFFFF00000000
      00A06067FF9097FF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFF1F201F1F201FBFBFBF909790404040000000FFFFFFFFFFFF00
      0000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFF00000000001F000000404040FFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
    Layout = blGlyphTop
    ParentFont = False
    OnClick = bteditClick
  end
  object btadd: TSpeedButton
    Left = 168
    Top = 8
    Width = 73
    Height = 73
    Caption = 'F3-NUEVO'
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
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9067
      60FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9067600000
      00906760906760FFFFFFFFFFFFFFFFFF906760FFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF906760000000FFC8
      CF000000000000906760906760906760906760906760FFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF906760000000FFC8CFFFC8
      CFFFC8CFCF9790000000000000906760000000906760906760FFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF906760000000FFC8CFFFC8CFCF97
      90CF9790906760906760000000000000906760000000906760906760FFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF906760000000FFC8CFCF9790CF97909067
      60906760000000000000906760906760906760906760000000906760906760FF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFF906760000000CF9790CF97909067609067600000
      00000000CF9790CF9790CF9790CF9790CF9790CF9790CF979000000000000090
      6760906760FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFF906760000000CF9790906760906760000000000000CF97
      90CF9790CF9790CF9790CF9790CF9790CF9790CF9790CF9790CF979000000000
      0000000000906760906760FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFF906760000000906760906760000000000000FFC8CFCF9790FFC8
      CFCF9790FFC8CFCF9790FFC8CFCF9790FFC8CFCF9790FFC8CFCF9790DFD8DF1F
      0000906760000000000000906760906760FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFF906760000000906760000000000000FFC8CFFFC8CFFFC8CFFFC8CFFFC8
      CFFFC8CFFFC8CFFFC8CFFFC8CFFFC8CFFFC8CFFFC8CFDFD8DFFFC8CFFFC8CFFF
      C8CF000000906760CF9790000000000000906760906760906760FFFFFFFFFFFF
      906760000000000000000000FFC8CFFFC8CFFFC8CFFFC8CFFFC8CFFFC8CFFFC8
      CFFFC8CFFFC8CFFFC8CFFFC8CFFFC8CFDFD8DFFFC8CFFFC8CFFFC8CFFFC8CFFF
      C8CFFFC8CF000000906760CF9790CF9790000000000000906760FFFFFF906760
      000000000000FFC8CFFFFFFFFFC8CFFFFFFFFFC8CFFFFFFFFFC8CFFFFFFFFFC8
      CFFFFFFFFFC8CFFFFFFFFFC8CFFFFFFFFFC8CFFFFFFFFFC8CFFFFFFFFFC8CFFF
      FFFFFFC8CFFFFFFF000000906760CF9790000000906760FFFFFF000000000000
      FFFFFFFFC8CFFFFFFFFFC8CFFFFFFFFFC8CFFFFFFFFFC8CFFFFFFFFFC8CFFFFF
      FFFFC8CFFFFFFFFFC8CFFFFFFFFFC8CFFFFFFFFFC8CFFFFFFFFFC8CFFFFFFFFF
      C8CFFFFFFFFFC8CFFFFFFF000000000000906760906760FFFFFFFFFFFF000000
      FFC8CFFFFFFFFFC8CFFFFFFFFFC8CFFFFFFFFFC8CFFFFFFFFFC8CFFFFFFFFFC8
      CFFFFFFFFFC8CFFFFFFFFFC8CFFFFFFFFFC8CFFFFFFFFFC8CFFFFFFFFFC8CFFF
      FFFFFFC8CFFFFFFFFFC8CFFFFFFF000000906760906760906760FFFFFFFFFFFF
      000000FFC8CFFFFFFFFFC8CFFFFFFFFFC8CFFFFFFFFFC8CFFFFFFFFFC8CFFFFF
      FFFFC8CFFFFFFFFFC8CFFFFFFFFFC8CFFFFFFFFFC8CFFFFFFFFFC8CFFFFFFFFF
      C8CFFFFFFFFFC8CFFFFFFFFFC8CFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFF000000FFC8CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC8CFFFFFFF000000FFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFF000000FFC8CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFF000000000000FFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFF000000FFC8CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFF000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFF000000FFC8CFFFFFFFFFC8CFFFFFFFFFC8CFFFFF
      FFFFC8CFFFFFFFFFC8CFFFFFFFFFC8CFFFFFFFFFC8CFFFFFFFFFC8CFFFFFFFFF
      FFFF000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFC8CFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00000000
      0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFC8CFFFFFFFFFC8CFFFFF
      FFFFC8CFFFFFFFFFC8CFFFFFFFFFC8CFFFFFFFFFC8CF000000000000FFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFC8CFFFFFFFFFC8
      CFFFFFFFFFC8CFFFFFFFFFC8CFFFFFFF000000000000FFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFC8CFFFC8
      CFFFC8CFFFC8CFFFC8CF000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFC8
      CFFFC8CF000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000
      00000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
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
    OnClick = btaddClick
  end
  object Panel1: TPanel
    Left = 0
    Top = 88
    Width = 529
    Height = 274
    Align = alBottom
    Anchors = [akLeft, akTop, akRight, akBottom]
    TabOrder = 0
    object DBGrid1: TDBGrid
      Left = 1
      Top = 1
      Width = 527
      Height = 272
      Align = alClient
      DataSource = dsUsuarios
      Options = [dgTitles, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
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
          FieldName = 'UsuarioID'
          Title.Alignment = taCenter
          Width = 52
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Nombre'
          Width = 250
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'Estatus'
          Title.Alignment = taCenter
          Width = 47
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Supervisor'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Cajero'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Camarero'
          Visible = True
        end>
    end
    object Memo1: TMemo
      Left = 80
      Top = 112
      Width = 369
      Height = 89
      Lines.Strings = (
        'Memo1')
      TabOrder = 1
      Visible = False
    end
  end
  object QUsuarios: TADOQuery
    Connection = DM.ADOBar
    Parameters = <>
    SQL.Strings = (
      'select'
      'UsuarioID, Nombre, Clave, Estatus, Supervisor, Cajero, Camarero'
      'from'
      'Usuarios'
      'order by'
      'UsuarioID')
    Left = 240
    Top = 152
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
  end
  object dsUsuarios: TDataSource
    DataSet = QUsuarios
    Left = 272
    Top = 152
  end
end
