object frmActImpresoraRemota: TfrmActImpresoraRemota
  Left = 425
  Top = 173
  ActiveControl = DBEdit2
  BorderIcons = []
  BorderStyle = bsSingle
  Caption = 'Impresoras'
  ClientHeight = 304
  ClientWidth = 431
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
    Width = 431
    Height = 89
    Align = alTop
    BevelInner = bvRaised
    BevelOuter = bvLowered
    TabOrder = 0
    object btclose: TSpeedButton
      Left = 8
      Top = 8
      Width = 79
      Height = 73
      Caption = 'F1-SALIR'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlue
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      Glyph.Data = {
        36100000424D3610000000000000360000002800000020000000200000000100
        2000000000000010000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000008E55
        551D824E4EC67F4C4CDD7F4A4A7E8848481A0000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000008F59
        5961C19999FFB28484FF895757FF7E4B4BFA844B4BAC88515144000000010000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000009358
        5862CDA5A5FFB58787FF9F6C6CFF9E6B6BFF8F5B5BFF804C4CFE7F4949D88048
        4871813F3F120000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000006E6E6E56686868FE666666FF646464FE646464F6606161E15D5A
        5AE0D1A8A8FFB78989FFA06D6DFF9F6C6CFFA06D6DFFA26F6FFF956262FF8451
        51FF764343F57C44449F874B4B36000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000696969CD828282FF6D6C6CFF777778FFACA7AAFFAEABAEFFA1A0
        A1FFD0A6A7FFB88A8AFFA06D6DFFA16E6EFFA16E6EFFA26F6FFFA16E6EFFA370
        70FF9E6B6BFF895656FF784444FE6E4141CB4541412E00000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000006B6B6BEA969696FF6F6D6EFF5F7D68FF63B079FF7DB78EFF8DB4
        98FFD3A7A9FFBB8C8DFFA26F6FFFA37070FFA37070FFA26F6FFFA26F6FFFA26F
        6FFFA26F6FFFA37070FFA47171FF845050FF3E4242E700000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000006B6B6BEA989898FF706D70FF4D825BFF1BB042FF1BAC41FF1EA4
        40FFDAAAAEFFBC908EFFA57272FFA57272FFA47171FFA47171FFA47171FFA370
        70FFA37070FFA26F6FFFA57171FF8B5858FF3E4242EA00000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000006F6F6FE89D9D9DFF716E71FF4C7E56FF19A238FF1C9F39FF1E9A
        39FFDCADB1FFBE9090FFA57272FFA67373FFA67373FFA67373FFA57272FFA572
        72FFA47171FFA47171FFA57171FF8D5A5AFF424646EA00000000000000000000
        0000000000000000000000000000000000000000000000000000008E00600083
        001E00000000717171E89F9F9FFF747173FF4A7853FF13972DFF15952EFF1B8E
        2EFFDDADB2FFBF9593FFA77474FFA87575FFA87575FFA77474FFA77474FFA774
        74FFA67373FFA57272FFA87474FF8D5B5BFF434747E800000000000000000000
        0000000000000000000000000000000000000000000000000000008C00820C92
        15DC008F001D818181EA9F9F9FFF757274FF47744DFF0D891FFF0F8822FF1882
        25FFE0B1B5FFC19697FFA97676FFAA7777FFAA7777FFA47272FFA57373FFA976
        76FFA87575FFA77474FFA87474FF8F5D5DFF454949E600000000000000000000
        0000000000000000000000000000000000000000000000000000008800823EC2
        6EFF099112DBA0B2A0F4AAAAAAFF767376FF437149FF067D13FF097C16FF1378
        1AFFE3B4B9FFC39897FFAC7878FFAC7878FFA57272FFA07070FFA37272FFA775
        75FFA97676FFA97676FFAB7777FF915F5FFF484C4CE600000000000000000000
        0000000000000000000000000000000000000000000000000000008400823DBF
        6DFF3EBE6CFF219928FDB7C8B7FF858385FF3F6A40FF006D00FF006D02FF0E69
        0BFFE4B5B9FFC59B9BFFAD7878FFA78888FF858585FF887B7BFFA27070FFA674
        74FFAA7777FFAA7777FFAB7777FF936161FF494D4DE600000000000000000178
        01A905860CB2048609B1048A09B1078E0AB208930BB507920FB6008100DD47E6
        7FFF45D978FF3FBD6EFF27A02CFFA1B2A0FF648871FF329F59FF339D59FF3D94
        5AFFE4B5B8FFC69B9BFFB48A8AFFB9BEBEFFC3C4C4FFABAFAFFFA27575FFAD79
        79FFAC7979FFAC7979FFAD7A7AFF966363FF4C4F4FE60000000000000000118C
        21EB3CC26FFF38BD68FF39BE6AFF3BBD6BFF3CBD6CFF3EBE6DFF3DBA6BFF41CB
        71FF4BE87FFF49DA7AFF42BC6FFF249E29FFA7CCBAFFB7FFFFFFAEFFFFFFAEFF
        FFFFE1B5B5FFC89D9DFFBD9898FFECEEEEFFF8F9F9FFC8CBCBFFAF7C7CFFB07C
        7CFFAE7B7BFFAD7A7AFFAD7A7AFF976666FF4E5252E600000000000000000E8C
        1FED4EE183FF3CD870FF3FDB73FF43DF77FF44E078FF48E47CFF4AE67EFF4BE6
        7FFF4CE680FF4EEA83FF4DDD7FFF45BC71FF25A62FFFC9F7E3FFCBFFFFFFC6FF
        FFFFE1B5B5FFCCA4A4FFB17B7BFFCFBDBDFFC6C2C2FFB69F9FFFB17C7CFFB07D
        7DFFB07D7DFFAF7C7CFFB07D7DFF996767FF515555E300000000000000000D8B
        1EEE5EE38EFF3CD770FF40D973FF43DC76FF46DF79FF48E17BFF4AE37DFF4CE5
        7FFF4FE882FF50E983FF54EF88FF51E182FF47BD73FF2CAE33FFD5F4E3FFE3FF
        FFFFE1B6B6FFCDA5A5FFB37F7FFFB37E7EFFB47E7EFFB37F7FFFB38080FFB27F
        7FFFB17E7EFFB07D7DFFB07D7DFF9B6969FF535757E200000000000000000E8D
        1FF16BE998FF3BD86FFF42DB75FF45DE78FF48E17BFF4AE37DFF4DE680FF4FE8
        82FF51EA84FF53EC86FF55EE88FF58F48CFF56E488FF4DC178FF4DB84DFFFEFF
        FFFFE4B9BAFFCFA7A7FFB58282FFB68383FFB58282FFB58282FFB48181FFB380
        80FFB38080FFB27F7FFFB38080FF9D6B6BFF545858E200000000000000000C8E
        1DF27BEBA3FF39DA6EFF41DD75FF44E078FF47E37CFF49E57DFF4CE881FF4EEA
        83FF54ED87FF56EF89FF58F18BFF5EF993FF5CED92FF31AF35FFE6F4E3FFFFFD
        F9FFE5BCBCFFD1ABABFFB78484FFB88585FFB78484FFB78484FFB68383FFB582
        82FFB48181FFB38080FFB38080FF9E6D6DFF575B5BE200000000000000000D8F
        1EF28EF0B2FF5CE088FF63E38DFF67E792FF6AE894FF6DEC97FF70ED9AFF75F1
        9EFF5CF08DFF59F38CFF5EF793FF63FD9AFF2FB334FFE6F6DFFFFFF8EFFFFFF7
        EDFFE6BDBDFFD1ADADFFB98686FFB98686FFB98686FFB88585FFB88585FFB784
        84FFB68383FFB48181FFB48181FFA06F6FFF595C5CE200000000000000001195
        25EF72F5A6FF74F0A2FF78F3A6FF7CF4A9FF7EF8ABFF83F9B1FF82FBADFF9FF8
        BEFF5AF28DFF5EF792FF64FF9BFF2AAC30FFBECBB9FFFFF9EAFFFFF4E4FFFFF4
        E4FFE9C1C1FFD3ADADFFBC8888FFBA8787FFBB8787FFBA8787FFB98686FFB885
        85FFB78484FFB68383FFB78484FFA17171FF5A5D5DE200000000000000000083
        00A1028F0BAE019306AE009407AF049B0BB2039D0AB2059D0AB2008700D97FF7
        A8FF5BF891FF64FF9BFF2EAF35FFA7B7A8FFB5ADA5FFFFF1DFFFFFEEDBFFFFEE
        DBFFEAC1C2FFD6B0B0FFBA8686FFD9A9A9FFD3A2A2FFC59191FFBD8888FFB782
        82FFB58282FFB68383FFB78484FFA37272FF5A5E5EDE00000000000000000000
        00000000000000000000000000000000000000000000000000000089008276FD
        A7FF63FE9AFF2AAB31FDC5D6C5FF8D8E8EFFB2A79CFFFFECD5FFFFE8D2FFFFE8
        D2FFECC4C4FFD6B1B1FFBB8686FFF4DCDCFFFFECECFFFFE7E7FFFDDCDCFFF7CE
        CEFFE9BBBBFFDCABABFFBC8989FFA47474FF5B5F5FDD00000000000000000000
        00000000000000000000000000000000000000000000000000000091008269FF
        A1FF0EA517D7ABBEABF3C4C4C4FF848586FFB1A498FFFFE8CCFFFFE5C9FFFFE5
        C9FFEEC5C6FFD6B3B3FFBD8787FFF0DADAFFFFEDEDFFFFE8E8FFFFE4E4FFFFE1
        E1FFFFDDDDFFFFDADAFFC18D8DFFA77676FF5D6161DD00000000000000000000
        0000000000000000000000000000000000000000000000000000009B008211A6
        1DD800A50019939393EAC1C1C1FF868789FFB1A292FFFFE3C3FFFFDFC0FFFFDF
        C0FFF1C8C9FFD8B6B6FFC08B8BFFEEDCDCFFFFF8F8FFFFF1F1FFFFE9E9FFFFE3
        E3FFFFDEDEFFFFD7D7FFBC8888FFA77878FF5E6161DD00000000000000000000
        0000000000000000000000000000000000000000000000000000009E005D0096
        001A000000008A8A8AE8C1C1C1FF88898BFFB3A28EFFFFDDB8FFFFDAB6FFFFDA
        B6FFF1C9CAFFD9B6B6FFC38E8EFFCAA3A3FFDDC0C0FFE4CACAFFEFD3D3FFFADE
        DEFFFFE4E4FFFFDBDBFFBB8686FFAA7979FF5F6363DD00000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000008C8C8CE8C3C3C3FF8B8C8EFFB8A18BFFFFDFB1FFFFDCAFFFFFDC
        AFFFF4CCCDFFDBB7B7FFC59191FFC59191FFC38F8FFFC08C8CFFBC8787FFB985
        85FFB78383FFBE8C8CFFBA8787FFAB7A7AFF616464DC00000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000008E8E8EE8C9C9C9FF8F9091FF837D79FF8D8378FF93887BFFA38C
        82FFFCD9D9FFE2C8C8FFCD9F9FFFC79494FFC59191FFC38F8FFFC18D8DFFBF8B
        8BFFBE8B8BFFBC8989FFBA8787FFAD7C7CFF616464D800000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000909090E8CACACAFF8F8F8FFF929293FF8F9091FF8C8D8EFF908B
        8BFFBC9999FFC39F9FFFCCA7A7FFD4AFAFFFD8AFAFFFD8ABABFFD6A7A7FFD4A3
        A3FFD0A0A0FFCE9C9CFFCC9797FFB07E7EFF636666D800000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000929292E7D6D6D6FFC0C0C0FFC0C0C0FFBEBEBEFFB7B7B7FFB4B4
        B4FFACB0B0FFA6A9A9FFA4A7A7FF9FA1A1FF999B9BFF969797FF989494FF9891
        91FF968C8CFF998A8AFF948383FF837B7BFF646666D800000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000097979782878888DC868787DC858686E1858686E1848585E18485
        85E1818282E7818282E7808181E77F7F7FE77E7F7FEC7C7D7DEC7C7D7DEC7B7C
        7CED7B7C7CF2787979F2777878E7717272DA7979795C00000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000}
      Layout = blGlyphTop
      ParentFont = False
      OnClick = btcloseClick
    end
    object btpost: TSpeedButton
      Left = 88
      Top = 8
      Width = 89
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
    Width = 431
    Height = 215
    Align = alClient
    BevelInner = bvRaised
    BevelOuter = bvLowered
    TabOrder = 1
    object Panel3: TPanel
      Left = 2
      Top = -3
      Width = 427
      Height = 216
      Align = alBottom
      Anchors = [akLeft, akTop, akRight, akBottom]
      TabOrder = 0
      object Label1: TLabel
        Left = 16
        Top = 50
        Width = 127
        Height = 13
        Caption = 'Descripci'#243'n del Printer'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label3: TLabel
        Left = 16
        Top = 8
        Width = 13
        Height = 13
        Caption = 'ID'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label2: TLabel
        Left = 16
        Top = 90
        Width = 137
        Height = 13
        Caption = 'Nombre de la Impresora'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label4: TLabel
        Left = 16
        Top = 135
        Width = 113
        Height = 13
        Caption = 'Path de la Ubicaci'#243'n'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object DBEdit2: TDBEdit
        Left = 16
        Top = 65
        Width = 273
        Height = 21
        BevelKind = bkFlat
        BorderStyle = bsNone
        CharCase = ecUpperCase
        DataField = 'Descripcion'
        DataSource = dsPrinter
        TabOrder = 0
      end
      object DBEdit3: TDBEdit
        Left = 16
        Top = 23
        Width = 97
        Height = 21
        TabStop = False
        BevelKind = bkFlat
        BorderStyle = bsNone
        CharCase = ecUpperCase
        DataField = 'IDPrinter'
        DataSource = dsPrinter
        Enabled = False
        TabOrder = 1
      end
      object DBEdit1: TDBEdit
        Left = 16
        Top = 105
        Width = 393
        Height = 21
        BevelKind = bkFlat
        BorderStyle = bsNone
        CharCase = ecUpperCase
        Ctl3D = False
        DataField = 'nombre_printer'
        DataSource = dsPrinter
        ParentCtl3D = False
        TabOrder = 2
      end
      object DBEdit4: TDBEdit
        Left = 16
        Top = 150
        Width = 393
        Height = 21
        BevelKind = bkFlat
        BorderStyle = bsNone
        CharCase = ecUpperCase
        Ctl3D = False
        DataField = 'path_printer'
        DataSource = dsPrinter
        ParentCtl3D = False
        TabOrder = 3
      end
    end
  end
  object QPrinter_Remoto: TADOQuery
    Connection = DM.ADOBar
    CursorType = ctStatic
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
      'Select IDPrinter,Descripcion,nombre_printer,path_printer'
      'From Printer_Remoto '
      'Where IDPrinter= :cod'
      'order by IDPrinter')
    Left = 296
    Top = 24
    object QPrinter_RemotoIDPrinter: TAutoIncField
      FieldName = 'IDPrinter'
      ReadOnly = True
    end
    object QPrinter_RemotoDescripcion: TWideStringField
      FieldName = 'Descripcion'
      Size = 50
    end
    object QPrinter_Remotopath_printer: TWideStringField
      FieldName = 'path_printer'
      Size = 100
    end
    object QPrinter_Remotonombre_printer: TWideStringField
      FieldName = 'nombre_printer'
      Size = 255
    end
  end
  object dsPrinter: TDataSource
    DataSet = QPrinter_Remoto
    Left = 328
    Top = 24
  end
end
