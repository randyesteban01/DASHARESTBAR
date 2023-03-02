object DM: TDM
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Left = 639
  Top = 263
  Height = 258
  Width = 418
  object ADOBar: TADOConnection
    IsolationLevel = ilReadCommitted
    LoginPrompt = False
    Mode = cmShareDenyNone
    Provider = 'SQLOLEDB.1'
    AfterConnect = ADOBarAfterConnect
    BeforeConnect = ADOBarBeforeConnect
    Left = 344
    Top = 152
  end
  object Query1: TADOQuery
    Connection = ADOBar
    CursorType = ctStatic
    Parameters = <>
    Left = 280
    Top = 152
  end
  object QEmpresa: TADOQuery
    Connection = ADOBar
    CursorType = ctStatic
    AfterOpen = QEmpresaAfterOpen
    Parameters = <>
    SQL.Strings = (
      
        'select CASE WHEN P.par_itbisincluido = '#39'True'#39' then '#39'S'#39' else '#39'N'#39' ' +
        'end PrecioIncluyeItbis,'
      
        'e.emp_codigo EmpresaId, emp_nombre Nombre, emp_rnc RNC, emp_dire' +
        'ccion Direccion, emp_telefono Telefono, emp_fax Fax,'
      
        'emp_web Website, emp_email Correo, p.par_tkmensaje1 Mensaje1, p.' +
        'par_itbis Itbis, p.RestBar_PropLegal Propina,'
      
        '(select mon_relacionpesocompra from Moneda where emp_codigo = e.' +
        'emp_codigo and mon_sigla = '#39'US$'#39') TasaUS,'
      
        '(select mon_relacionpesocompra from Moneda where emp_codigo = e.' +
        'emp_codigo and mon_sigla = '#39'EU$'#39') TasaEU, cast('#39'1900-01-01'#39' as d' +
        'atetime) Fecha,'
      
        'cast(NULL as varchar(255)) Mensaje2, cast(NULL as varchar(255)) ' +
        'Mensaje3, cast(NULL as varchar(255)) Mensaje4, cast(NULL as varc' +
        'har(255)) Mensaje5, cast(NULL as varchar(255)) Mensaje6, cast(NU' +
        'LL as varchar(255)) Mensaje7, cast(NULL as varchar(255)) Mensaje' +
        '8, cast(NULL as varchar(255)) Mensaje9, '
      
        'cast(NULL as varchar(255)) Mensaje10, cast(NULL as varchar(255))' +
        ' Mensaje11, cast(NULL as varchar(255)) Mensaje12, cast(NULL as v' +
        'archar(255)) Mensaje13, cast(NULL as varchar(255)) Mensaje14, ca' +
        'st(NULL as varchar(255)) Mensaje15, cast(NULL as varchar(255)) M' +
        'ensaje16, cast(NULL as varchar(255)) Mensaje17, '
      
        'cast(NULL as varchar(255)) Mensaje18, cast(NULL as varchar(255))' +
        ' Mensaje19, cast(NULL as varchar(255)) Mensaje20, cast(NULL as v' +
        'archar(255)) Mensaje21, cast(NULL as varchar(255)) Mensaje22, ca' +
        'st(NULL as varchar(255)) Mensaje23, cast(NULL as varchar(255)) M' +
        'ensaje24, cast(NULL as varchar(255)) Mensaje25, '
      
        'cast(NULL as varchar(255)) Mensaje26, cast(NULL as varchar(255))' +
        ' Mensaje27, cast(NULL as varchar(255)) Mensaje28, cast(NULL as v' +
        'archar(255)) Mensaje29, cast(NULL as varchar(255)) Mensaje30, ca' +
        'st(NULL as varchar(255)) Mensaje31, cast(NULL as varchar(255)) M' +
        'ensaje32, cast(NULL as varchar(255)) Mensaje33,'
      
        'cast(NULL as varchar(255)) Mensaje34, cast(NULL as varchar(255))' +
        ' Mensaje35, cast(NULL as varchar(255)) Mensaje36, cast(NULL as v' +
        'archar(255)) Mensaje37, cast(NULL as varchar(255)) Mensaje38, ca' +
        'st(NULL as varchar(255)) Mensaje39, cast(NULL as varchar(255)) M' +
        'ensaje40, cast(NULL as varchar(255)) cortapapel'
      'from Empresas E'
      'inner join parametros p on e.emp_codigo = p.emp_codigo'
      ' ')
    Left = 24
    Top = 8
    object QEmpresaEmpresaID: TAutoIncField
      FieldName = 'EmpresaID'
      ReadOnly = True
    end
    object QEmpresaNombre: TWideStringField
      FieldName = 'Nombre'
      Size = 255
    end
    object QEmpresaRNC: TWideStringField
      FieldName = 'RNC'
      Size = 255
    end
    object QEmpresaDireccion: TWideStringField
      FieldName = 'Direccion'
      Size = 255
    end
    object QEmpresaTelefono: TWideStringField
      FieldName = 'Telefono'
      Size = 255
    end
    object QEmpresaFax: TWideStringField
      FieldName = 'Fax'
      Size = 255
    end
    object QEmpresaWebsite: TWideStringField
      FieldName = 'Website'
      Size = 255
    end
    object QEmpresaCorreo: TWideStringField
      FieldName = 'Correo'
      Size = 255
    end
    object QEmpresaMensaje1: TWideStringField
      FieldName = 'Mensaje1'
      Size = 255
    end
    object QEmpresaMensaje2: TWideStringField
      FieldName = 'Mensaje2'
      Size = 255
    end
    object QEmpresaMensaje3: TWideStringField
      FieldName = 'Mensaje3'
      Size = 255
    end
    object QEmpresaMensaje4: TWideStringField
      FieldName = 'Mensaje4'
      Size = 255
    end
    object QEmpresaItbis: TBCDField
      FieldName = 'Itbis'
      Precision = 19
    end
    object QEmpresaPropina: TBCDField
      FieldName = 'Propina'
      MaxValue = 100.000000000000000000
      Precision = 19
      Size = 18
    end
    object QEmpresaTasaUS: TBCDField
      FieldName = 'TasaUS'
      Precision = 19
    end
    object QEmpresaTasaEU: TBCDField
      FieldName = 'TasaEU'
      Precision = 19
    end
    object QEmpresaFecha: TDateTimeField
      FieldName = 'Fecha'
    end
    object QEmpresaMensaje5: TWideStringField
      FieldName = 'Mensaje5'
      Size = 255
    end
    object QEmpresaMensaje6: TWideStringField
      FieldName = 'Mensaje6'
      Size = 255
    end
    object QEmpresaMensaje7: TWideStringField
      FieldName = 'Mensaje7'
      Size = 255
    end
    object QEmpresaMensaje8: TWideStringField
      FieldName = 'Mensaje8'
      Size = 255
    end
    object QEmpresaMensaje9: TWideStringField
      FieldName = 'Mensaje9'
      Size = 255
    end
    object QEmpresaMensaje10: TWideStringField
      FieldName = 'Mensaje10'
      Size = 255
    end
    object QEmpresaMensaje11: TWideStringField
      FieldName = 'Mensaje11'
      Size = 255
    end
    object QEmpresaMensaje12: TWideStringField
      FieldName = 'Mensaje12'
      Size = 255
    end
    object QEmpresaMensaje13: TWideStringField
      FieldName = 'Mensaje13'
      Size = 255
    end
    object QEmpresaMensaje14: TWideStringField
      FieldName = 'Mensaje14'
      Size = 255
    end
    object QEmpresaMensaje15: TWideStringField
      FieldName = 'Mensaje15'
      Size = 255
    end
    object QEmpresaMensaje16: TWideStringField
      FieldName = 'Mensaje16'
      Size = 255
    end
    object QEmpresaMensaje17: TWideStringField
      FieldName = 'Mensaje17'
      Size = 255
    end
    object QEmpresaMensaje18: TWideStringField
      FieldName = 'Mensaje18'
      Size = 255
    end
    object QEmpresaMensaje19: TWideStringField
      FieldName = 'Mensaje19'
      Size = 255
    end
    object QEmpresaMensaje20: TWideStringField
      FieldName = 'Mensaje20'
      Size = 255
    end
    object QEmpresaMensaje21: TWideStringField
      FieldName = 'Mensaje21'
      Size = 255
    end
    object QEmpresaMensaje22: TWideStringField
      FieldName = 'Mensaje22'
      Size = 255
    end
    object QEmpresaMensaje23: TWideStringField
      FieldName = 'Mensaje23'
      Size = 255
    end
    object QEmpresaMensaje24: TWideStringField
      FieldName = 'Mensaje24'
      Size = 255
    end
    object QEmpresaMensaje25: TWideStringField
      FieldName = 'Mensaje25'
      Size = 255
    end
    object QEmpresaMensaje26: TWideStringField
      FieldName = 'Mensaje26'
      Size = 255
    end
    object QEmpresaMensaje27: TWideStringField
      FieldName = 'Mensaje27'
      Size = 255
    end
    object QEmpresaMensaje28: TWideStringField
      FieldName = 'Mensaje28'
      Size = 255
    end
    object QEmpresaMensaje29: TWideStringField
      FieldName = 'Mensaje29'
      Size = 255
    end
    object QEmpresaMensaje30: TWideStringField
      FieldName = 'Mensaje30'
      Size = 255
    end
    object QEmpresaMensaje31: TWideStringField
      FieldName = 'Mensaje31'
      Size = 255
    end
    object QEmpresaMensaje32: TWideStringField
      FieldName = 'Mensaje32'
      Size = 255
    end
    object QEmpresaMensaje33: TWideStringField
      FieldName = 'Mensaje33'
      Size = 255
    end
    object QEmpresaMensaje34: TWideStringField
      FieldName = 'Mensaje34'
      Size = 255
    end
    object QEmpresaMensaje35: TWideStringField
      FieldName = 'Mensaje35'
      Size = 255
    end
    object QEmpresaMensaje36: TWideStringField
      FieldName = 'Mensaje36'
      Size = 255
    end
    object QEmpresaMensaje37: TWideStringField
      FieldName = 'Mensaje37'
      Size = 255
    end
    object QEmpresaMensaje38: TWideStringField
      FieldName = 'Mensaje38'
      Size = 255
    end
    object QEmpresaMensaje39: TWideStringField
      FieldName = 'Mensaje39'
      Size = 255
    end
    object QEmpresaMensaje40: TWideStringField
      FieldName = 'Mensaje40'
      Size = 255
    end
    object QEmpresaCortapapel: TWideStringField
      FieldName = 'Cortapapel'
      Size = 150
    end
    object QEmpresaPrecioIncluyeItbis: TStringField
      FieldName = 'PrecioIncluyeItbis'
      Size = 1
    end
  end
  object dsEmpresa: TDataSource
    DataSet = QEmpresa
    Left = 88
    Top = 8
  end
  object adoMultiUso: TADOQuery
    Connection = ADOBar
    CursorType = ctStatic
    Parameters = <>
    Left = 160
    Top = 8
  end
  object QParametros: TADOQuery
    Connection = ADOBar
    CursorType = ctStatic
    DataSource = dsEmpresa
    Parameters = <
      item
        Name = 'EMPRESAID'
        DataType = ftInteger
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      'select  *'
      'from '
      'PARAMETROS'
      'WHERE'
      'EMP_CODIGO = :EMPRESAID')
    Left = 24
    Top = 56
    object QParametrosEMP_CODIGO: TIntegerField
      FieldName = 'EMP_CODIGO'
    end
    object QParametrosPAR_ALMACENVENTA: TIntegerField
      FieldName = 'PAR_ALMACENVENTA'
    end
    object QParametrosPAR_CODIGOCLIENTE: TStringField
      FieldName = 'PAR_CODIGOCLIENTE'
      Size = 1
    end
    object QParametrosPAR_CODIGOPRODUCTO: TStringField
      FieldName = 'PAR_CODIGOPRODUCTO'
      Size = 1
    end
    object QParametrosPAR_FACFORMA: TStringField
      FieldName = 'PAR_FACFORMA'
      Size = 1
    end
    object QParametrosPAR_FORMATODES: TIntegerField
      FieldName = 'PAR_FORMATODES'
    end
    object QParametrosPAR_FORMATODEV: TIntegerField
      FieldName = 'PAR_FORMATODEV'
    end
    object QParametrosPAR_FORMATONC: TIntegerField
      FieldName = 'PAR_FORMATONC'
    end
    object QParametrosPAR_FORMATOND: TIntegerField
      FieldName = 'PAR_FORMATOND'
    end
    object QParametrosPAR_FORMATORC: TIntegerField
      FieldName = 'PAR_FORMATORC'
    end
    object QParametrosPAR_FORMATORI: TIntegerField
      FieldName = 'PAR_FORMATORI'
    end
    object QParametrosPAR_ITBIS: TBCDField
      FieldName = 'PAR_ITBIS'
      Precision = 15
      Size = 2
    end
    object QParametrosPAR_MOVNDE: TIntegerField
      FieldName = 'PAR_MOVNDE'
    end
    object QParametrosPAR_TFACODIGO: TIntegerField
      FieldName = 'PAR_TFACODIGO'
    end
    object QParametrosPAR_TIPOPRECIO: TStringField
      FieldName = 'PAR_TIPOPRECIO'
      Size = 7
    end
    object QParametrosPAR_CONTROLAMAXIMO: TStringField
      FieldName = 'PAR_CONTROLAMAXIMO'
      Size = 5
    end
    object QParametrosPAR_CONTROLAMINIMO: TStringField
      FieldName = 'PAR_CONTROLAMINIMO'
      Size = 5
    end
    object QParametrosPAR_DEBAJOCOSTO: TStringField
      FieldName = 'PAR_DEBAJOCOSTO'
      Size = 5
    end
    object QParametrosPAR_COMBOCOTIZACION: TStringField
      FieldName = 'PAR_COMBOCOTIZACION'
      Size = 5
    end
    object QParametrosPAR_COMBOIMPDETALLE: TStringField
      FieldName = 'PAR_COMBOIMPDETALLE'
      Size = 5
    end
    object QParametrosPAR_COMBOREBAJA: TStringField
      FieldName = 'PAR_COMBOREBAJA'
      Size = 5
    end
    object QParametrosPAR_VENDIGITOSLOTE: TIntegerField
      FieldName = 'PAR_VENDIGITOSLOTE'
    end
    object QParametrosPAR_VENPERMITIR: TStringField
      FieldName = 'PAR_VENPERMITIR'
      Size = 5
    end
    object QParametrosPAR_VENVERIFICA: TStringField
      FieldName = 'PAR_VENVERIFICA'
      Size = 1
    end
    object QParametrosPAR_CONTEOLIMPIA: TStringField
      FieldName = 'PAR_CONTEOLIMPIA'
      Size = 1
    end
    object QParametrosPAR_PREDESCGLOBAL: TStringField
      FieldName = 'PAR_PREDESCGLOBAL'
      Size = 5
    end
    object QParametrosPAR_PREDESCRIP1: TStringField
      FieldName = 'PAR_PREDESCRIP1'
      Size = 10
    end
    object QParametrosPAR_PREDESCRIP2: TStringField
      FieldName = 'PAR_PREDESCRIP2'
      Size = 18
    end
    object QParametrosPAR_PREDESCRIP3: TStringField
      FieldName = 'PAR_PREDESCRIP3'
      Size = 10
    end
    object QParametrosPAR_PREDESCRIP4: TStringField
      FieldName = 'PAR_PREDESCRIP4'
      Size = 10
    end
    object QParametrosPAR_FACANULA: TStringField
      FieldName = 'PAR_FACANULA'
      Size = 5
    end
    object QParametrosPAR_FACDIASANULA: TIntegerField
      FieldName = 'PAR_FACDIASANULA'
    end
    object QParametrosPAR_FACDIASMODIFICA: TIntegerField
      FieldName = 'PAR_FACDIASMODIFICA'
    end
    object QParametrosPAR_FACDISPONIBLE: TStringField
      FieldName = 'PAR_FACDISPONIBLE'
      Size = 5
    end
    object QParametrosPAR_FACMODIFICA: TStringField
      FieldName = 'PAR_FACMODIFICA'
      Size = 5
    end
    object QParametrosPAR_FACSELPRECIO: TStringField
      FieldName = 'PAR_FACSELPRECIO'
      Size = 5
    end
    object QParametrosPAR_FACTEMPORAL: TStringField
      FieldName = 'PAR_FACTEMPORAL'
      Size = 5
    end
    object QParametrosPAR_DEVDIAS: TIntegerField
      FieldName = 'PAR_DEVDIAS'
    end
    object QParametrosPAR_DEVEFECTIVO: TStringField
      FieldName = 'PAR_DEVEFECTIVO'
      Size = 5
    end
    object QParametrosPAR_FORMATOCUADRE: TIntegerField
      FieldName = 'PAR_FORMATOCUADRE'
    end
    object QParametrosPAR_AHORA1: TDateTimeField
      FieldName = 'PAR_AHORA1'
    end
    object QParametrosPAR_AHORA2: TDateTimeField
      FieldName = 'PAR_AHORA2'
    end
    object QParametrosPAR_BHORA1: TDateTimeField
      FieldName = 'PAR_BHORA1'
    end
    object QParametrosPAR_BHORA2: TDateTimeField
      FieldName = 'PAR_BHORA2'
    end
    object QParametrosPAR_FACMODPRECIO: TStringField
      FieldName = 'PAR_FACMODPRECIO'
      Size = 5
    end
    object QParametrosPAR_FORMATOCON: TIntegerField
      FieldName = 'PAR_FORMATOCON'
    end
    object QParametrosPAR_CAJA: TStringField
      FieldName = 'PAR_CAJA'
      Size = 1
    end
    object QParametrosPAR_IMPCODIGOBARRA: TStringField
      FieldName = 'PAR_IMPCODIGOBARRA'
      Size = 5
    end
    object QParametrosCPA_CODIGOCLIENTE: TIntegerField
      FieldName = 'CPA_CODIGOCLIENTE'
    end
    object QParametrosPAR_LIMITEINICIAL: TBCDField
      FieldName = 'PAR_LIMITEINICIAL'
      Precision = 15
      Size = 2
    end
    object QParametrosPAR_MOVCK: TIntegerField
      FieldName = 'PAR_MOVCK'
    end
    object QParametrosPAR_MOVCARGO: TIntegerField
      FieldName = 'PAR_MOVCARGO'
    end
    object QParametrosPAR_PRECIOLETRA_0: TStringField
      FieldName = 'PAR_PRECIOLETRA_0'
      Size = 1
    end
    object QParametrosPAR_PRECIOLETRA_1: TStringField
      FieldName = 'PAR_PRECIOLETRA_1'
      Size = 1
    end
    object QParametrosPAR_PRECIOLETRA_2: TStringField
      FieldName = 'PAR_PRECIOLETRA_2'
      Size = 1
    end
    object QParametrosPAR_PRECIOLETRA_3: TStringField
      FieldName = 'PAR_PRECIOLETRA_3'
      Size = 1
    end
    object QParametrosPAR_PRECIOLETRA_4: TStringField
      FieldName = 'PAR_PRECIOLETRA_4'
      Size = 1
    end
    object QParametrosPAR_PRECIOLETRA_5: TStringField
      FieldName = 'PAR_PRECIOLETRA_5'
      Size = 1
    end
    object QParametrosPAR_PRECIOLETRA_6: TStringField
      FieldName = 'PAR_PRECIOLETRA_6'
      Size = 1
    end
    object QParametrosPAR_PRECIOLETRA_7: TStringField
      FieldName = 'PAR_PRECIOLETRA_7'
      Size = 1
    end
    object QParametrosPAR_PRECIOLETRA_8: TStringField
      FieldName = 'PAR_PRECIOLETRA_8'
      Size = 1
    end
    object QParametrosPAR_PRECIOLETRA_9: TStringField
      FieldName = 'PAR_PRECIOLETRA_9'
      Size = 1
    end
    object QParametrosPAR_NUEVOUSADO: TStringField
      FieldName = 'PAR_NUEVOUSADO'
      Size = 5
    end
    object QParametrosPAR_TEXTOBARRA1: TStringField
      FieldName = 'PAR_TEXTOBARRA1'
      Size = 60
    end
    object QParametrosPAR_TEXTOBARRA2: TStringField
      FieldName = 'PAR_TEXTOBARRA2'
      Size = 60
    end
    object QParametrosPAR_TEXTOBARRA3: TStringField
      FieldName = 'PAR_TEXTOBARRA3'
      Size = 60
    end
    object QParametrosPAR_TEXTOBARRA4: TStringField
      FieldName = 'PAR_TEXTOBARRA4'
      Size = 60
    end
    object QParametrosPAR_TEXTOBARRA5: TStringField
      FieldName = 'PAR_TEXTOBARRA5'
      Size = 60
    end
    object QParametrosPAR_OPC5TALINEA: TStringField
      FieldName = 'PAR_OPC5TALINEA'
    end
    object QParametrosPAR_TEXTOBARRA6: TStringField
      FieldName = 'PAR_TEXTOBARRA6'
      Size = 60
    end
    object QParametrosPAR_OPC1RALINEA: TStringField
      FieldName = 'PAR_OPC1RALINEA'
    end
    object QParametrosPAR_PREGUNTAPEQ: TStringField
      FieldName = 'PAR_PREGUNTAPEQ'
      Size = 5
    end
    object QParametrosPAR_IGUALAREF: TStringField
      FieldName = 'PAR_IGUALAREF'
      Size = 1
    end
    object QParametrosPAR_ITBISDEFECTO: TStringField
      FieldName = 'PAR_ITBISDEFECTO'
      Size = 1
    end
    object QParametrosPAR_FPADESEM: TIntegerField
      FieldName = 'PAR_FPADESEM'
    end
    object QParametrosPAR_FACBAJARLINEA: TStringField
      FieldName = 'PAR_FACBAJARLINEA'
      Size = 5
    end
    object QParametrosPAR_FACTOTALIZAPIE: TStringField
      FieldName = 'PAR_FACTOTALIZAPIE'
      Size = 5
    end
    object QParametrosPAR_FACREPITEPROD: TStringField
      FieldName = 'PAR_FACREPITEPROD'
      Size = 5
    end
    object QParametrosPAR_DEBAJOPRECIO: TStringField
      FieldName = 'PAR_DEBAJOPRECIO'
      Size = 5
    end
    object QParametrosPAR_FACCONITBIS: TStringField
      FieldName = 'PAR_FACCONITBIS'
      Size = 5
    end
    object QParametrosPAR_FACESCALA: TStringField
      FieldName = 'PAR_FACESCALA'
      Size = 5
    end
    object QParametrosPAR_FACMEDIDA: TStringField
      FieldName = 'PAR_FACMEDIDA'
      Size = 5
    end
    object QParametrosPAR_PRECIOEMP: TStringField
      FieldName = 'PAR_PRECIOEMP'
      Size = 7
    end
    object QParametrosPAR_PRECIOUND: TStringField
      FieldName = 'PAR_PRECIOUND'
      Size = 7
    end
    object QParametrosPAR_FISICOSOLOLLENO: TStringField
      FieldName = 'PAR_FISICOSOLOLLENO'
      Size = 5
    end
    object QParametrosPAR_DEVFORMA: TStringField
      FieldName = 'PAR_DEVFORMA'
      Size = 1
    end
    object QParametrosPAR_FORMATOCOT: TIntegerField
      FieldName = 'PAR_FORMATOCOT'
    end
    object QParametrosPAR_INVMOSTRARVENCE: TStringField
      FieldName = 'PAR_INVMOSTRARVENCE'
      Size = 5
    end
    object QParametrosPAR_VERIMAGEN: TStringField
      FieldName = 'PAR_VERIMAGEN'
      Size = 5
    end
    object QParametrosPAR_TKMENSAJE1: TStringField
      FieldName = 'PAR_TKMENSAJE1'
      Size = 40
    end
    object QParametrosPAR_TKMENSAJE2: TStringField
      FieldName = 'PAR_TKMENSAJE2'
      Size = 40
    end
    object QParametrosPAR_TKMENSAJE3: TStringField
      FieldName = 'PAR_TKMENSAJE3'
      Size = 40
    end
    object QParametrosPAR_TKMENSAJE4: TStringField
      FieldName = 'PAR_TKMENSAJE4'
      Size = 40
    end
    object QParametrosPAR_TKCLAVEDELETE: TStringField
      FieldName = 'PAR_TKCLAVEDELETE'
      Size = 30
    end
    object QParametrosPAR_TKCLAVEMODIFICA: TStringField
      FieldName = 'PAR_TKCLAVEMODIFICA'
      Size = 30
    end
    object QParametrosPAR_COMBINAORIGINAL: TStringField
      FieldName = 'PAR_COMBINAORIGINAL'
      Size = 30
    end
    object QParametrosPAR_COMBINAFABRIC: TStringField
      FieldName = 'PAR_COMBINAFABRIC'
      Size = 30
    end
    object QParametrosPAR_TKCLAVECREDITO: TStringField
      FieldName = 'PAR_TKCLAVECREDITO'
      Size = 30
    end
    object QParametrosPAR_TKCLAVECANCELA: TStringField
      FieldName = 'PAR_TKCLAVECANCELA'
      Size = 30
    end
    object QParametrosPAR_INVEMPRESA: TIntegerField
      FieldName = 'PAR_INVEMPRESA'
    end
    object QParametrosPAR_INVALMACEN: TIntegerField
      FieldName = 'PAR_INVALMACEN'
    end
    object QParametrosMON_CODIGO: TIntegerField
      FieldName = 'MON_CODIGO'
    end
    object QParametrosPAR_SOLGENERACHEQUE: TStringField
      FieldName = 'PAR_SOLGENERACHEQUE'
      Size = 5
    end
    object QParametrospar_invprecioconduce: TStringField
      FieldName = 'par_invprecioconduce'
      Size = 5
    end
    object QParametrospar_mailservidor: TStringField
      FieldName = 'par_mailservidor'
      Size = 60
    end
    object QParametrospar_mailcorreo: TStringField
      FieldName = 'par_mailcorreo'
      Size = 60
    end
    object QParametrospar_mailusuario: TStringField
      FieldName = 'par_mailusuario'
      Size = 60
    end
    object QParametrospar_mailclave: TStringField
      FieldName = 'par_mailclave'
      Size = 60
    end
    object QParametrospar_mailpuerto: TStringField
      FieldName = 'par_mailpuerto'
      Size = 60
    end
    object QParametrospar_itbisincluido: TStringField
      FieldName = 'par_itbisincluido'
      Size = 5
    end
    object QParametroscaj_codigo: TIntegerField
      FieldName = 'caj_codigo'
    end
    object QParametrospar_domicilio: TStringField
      FieldName = 'par_domicilio'
      Size = 5
    end
    object QParametrospar_monto_domicilio: TBCDField
      FieldName = 'par_monto_domicilio'
      Precision = 15
      Size = 2
    end
    object QParametrospar_copias_domicilio: TIntegerField
      FieldName = 'par_copias_domicilio'
    end
    object QParametrospar_beneficio: TBCDField
      FieldName = 'par_beneficio'
      Precision = 15
      Size = 2
    end
    object QParametrospar_tkclavereimprime: TStringField
      FieldName = 'par_tkclavereimprime'
      Size = 30
    end
    object QParametrospar_igualartelefonocliente: TStringField
      FieldName = 'par_igualartelefonocliente'
      Size = 5
    end
    object QParametrospar_valor_punto: TBCDField
      FieldName = 'par_valor_punto'
      Precision = 15
      Size = 2
    end
    object QParametrospar_punto_principal: TBCDField
      FieldName = 'par_punto_principal'
      Precision = 15
      Size = 2
    end
    object QParametrospar_punto_depen: TBCDField
      FieldName = 'par_punto_depen'
      Precision = 15
      Size = 2
    end
    object QParametrospar_redondeo: TStringField
      FieldName = 'par_redondeo'
      Size = 5
    end
    object QParametrospar_barra_header: TMemoField
      FieldName = 'par_barra_header'
      BlobType = ftMemo
    end
    object QParametrospar_fac_preimpresa: TStringField
      FieldName = 'par_fac_preimpresa'
      Size = 5
    end
    object QParametrospar_preciound_m: TStringField
      FieldName = 'par_preciound_m'
      Size = 7
    end
    object QParametrospar_precioemp_m: TStringField
      FieldName = 'par_precioemp_m'
      Size = 7
    end
    object QParametrospar_fac_oferta: TStringField
      FieldName = 'par_fac_oferta'
      Size = 5
    end
    object QParametrospar_nombre_familia: TStringField
      FieldName = 'par_nombre_familia'
      Size = 15
    end
    object QParametrospar_nombre_depto: TStringField
      FieldName = 'par_nombre_depto'
      Size = 15
    end
    object QParametrospar_nombre_color: TStringField
      FieldName = 'par_nombre_color'
      Size = 15
    end
    object QParametrospar_nombre_marca: TStringField
      FieldName = 'par_nombre_marca'
      Size = 15
    end
    object QParametrospar_inv_compra_centro_costo: TStringField
      FieldName = 'par_inv_compra_centro_costo'
      Size = 5
    end
    object QParametrospar_imprime_logo: TStringField
      FieldName = 'par_imprime_logo'
      Size = 5
    end
    object QParametrospar_arch_copiar_colector: TStringField
      FieldName = 'par_arch_copiar_colector'
      Size = 50
    end
    object QParametrospar_arch_recibe_colector: TStringField
      FieldName = 'par_arch_recibe_colector'
      Size = 50
    end
    object QParametrospar_delimitador_envia: TStringField
      FieldName = 'par_delimitador_envia'
      Size = 1
    end
    object QParametrospar_delimitador_recibe: TStringField
      FieldName = 'par_delimitador_recibe'
      Size = 1
    end
    object QParametrospar_modifica_fecha_factura: TStringField
      FieldName = 'par_modifica_fecha_factura'
      Size = 5
    end
    object QParametrospar_pago_mayor_balance: TStringField
      FieldName = 'par_pago_mayor_balance'
      Size = 5
    end
    object QParametrospar_nota_orden_servicio: TMemoField
      FieldName = 'par_nota_orden_servicio'
      BlobType = ftMemo
    end
    object QParametrospar_controlar: TStringField
      FieldName = 'par_controlar'
      Size = 5
    end
    object QParametrospar_formato_preimpreso: TStringField
      FieldName = 'par_formato_preimpreso'
    end
    object QParametrospar_usuario_cuadra: TStringField
      FieldName = 'par_usuario_cuadra'
      Size = 5
    end
    object QParametrospar_inv_entrada_modifica_precio: TStringField
      FieldName = 'par_inv_entrada_modifica_precio'
      Size = 5
    end
    object QParametrospar_movtk: TStringField
      FieldName = 'par_movtk'
      Size = 3
    end
    object QParametrospar_visualizadesc: TStringField
      FieldName = 'par_visualizadesc'
      Size = 5
    end
    object QParametrospar_visualiza_selectivo: TStringField
      FieldName = 'par_visualiza_selectivo'
      Size = 5
    end
    object QParametrospar_cantidad_primero: TStringField
      FieldName = 'par_cantidad_primero'
      Size = 50
    end
    object QParametrospar_busqueda_porciento: TStringField
      FieldName = 'par_busqueda_porciento'
      Size = 5
    end
    object QParametrospar_busqueda_cxp: TStringField
      FieldName = 'par_busqueda_cxp'
      Size = 10
    end
    object QParametrospar_moneda_local: TIntegerField
      FieldName = 'par_moneda_local'
    end
    object QParametrospar_envio: TMemoField
      FieldName = 'par_envio'
      BlobType = ftMemo
    end
    object QParametrospar_nota_cotizacion: TMemoField
      FieldName = 'par_nota_cotizacion'
      BlobType = ftMemo
    end
    object QParametrospar_almacendevolucion: TIntegerField
      FieldName = 'par_almacendevolucion'
    end
    object QParametrospar_boletos_monto: TBCDField
      FieldName = 'par_boletos_monto'
      Precision = 15
      Size = 2
    end
    object QParametrospar_boletos_cantidad: TIntegerField
      FieldName = 'par_boletos_cantidad'
    end
    object QParametrospar_ticket_itbis: TStringField
      FieldName = 'par_ticket_itbis'
      Size = 5
    end
    object QParametrospar_ftp_site: TStringField
      FieldName = 'par_ftp_site'
      Size = 50
    end
    object QParametrospar_ftp_usuario: TStringField
      FieldName = 'par_ftp_usuario'
      Size = 50
    end
    object QParametrospar_ftp_password: TStringField
      FieldName = 'par_ftp_password'
      Size = 50
    end
    object QParametrospar_ftp_ruta: TStringField
      FieldName = 'par_ftp_ruta'
      Size = 50
    end
    object QParametrospar_empresa_1: TIntegerField
      FieldName = 'par_empresa_1'
    end
    object QParametrospar_empresa_2: TIntegerField
      FieldName = 'par_empresa_2'
    end
    object QParametrospar_porciento_empresa_1: TBCDField
      FieldName = 'par_porciento_empresa_1'
      Precision = 19
    end
    object QParametrospar_porciento_empresa_2: TBCDField
      FieldName = 'par_porciento_empresa_2'
      Precision = 19
    end
    object QParametrospar_empresa_porciento_comprobante: TIntegerField
      FieldName = 'par_empresa_porciento_comprobante'
    end
    object QParametrospar_dividir_facturacion: TStringField
      FieldName = 'par_dividir_facturacion'
      Size = 5
    end
    object QParametrospar_modifica_precio_automatico: TStringField
      FieldName = 'par_modifica_precio_automatico'
      Size = 5
    end
    object QParametrospar_inv_forma_inventario: TStringField
      FieldName = 'par_inv_forma_inventario'
      Size = 1
    end
    object QParametrospar_visualizar_cant_empaque: TStringField
      FieldName = 'par_visualizar_cant_empaque'
      Size = 5
    end
    object QParametrospar_imprimir_calculo_empaque: TStringField
      FieldName = 'par_imprimir_calculo_empaque'
      Size = 5
    end
    object QParametrospar_inv_transferencia_auto: TStringField
      FieldName = 'par_inv_transferencia_auto'
      Size = 5
    end
    object QParametrospar_boletos_monto_patrocinador: TBCDField
      FieldName = 'par_boletos_monto_patrocinador'
      Precision = 15
      Size = 2
    end
    object QParametrospar_boletos_cantidad_patrocinador: TIntegerField
      FieldName = 'par_boletos_cantidad_patrocinador'
    end
    object QParametrospar_busqueda_dejar_ultimo: TStringField
      FieldName = 'par_busqueda_dejar_ultimo'
      Size = 5
    end
    object QParametrospar_compras_visualiza_diferencia: TStringField
      FieldName = 'par_compras_visualiza_diferencia'
      Size = 5
    end
    object QParametrospar_genera_puntos_credito: TStringField
      FieldName = 'par_genera_puntos_credito'
      Size = 5
    end
    object QParametrospar_inv_unidad_medida: TStringField
      FieldName = 'par_inv_unidad_medida'
      Size = 5
    end
    object QParametrospar_numerofactura_tipo: TStringField
      FieldName = 'par_numerofactura_tipo'
      Size = 5
    end
    object QParametrospar_facturarcero: TStringField
      FieldName = 'par_facturarcero'
      Size = 5
    end
    object QParametrospar_textobarra7: TStringField
      FieldName = 'par_textobarra7'
      Size = 60
    end
    object QParametrospar_opc6talinea: TStringField
      FieldName = 'par_opc6talinea'
    end
    object QParametrospar_opc7malinea: TStringField
      FieldName = 'par_opc7malinea'
    end
    object QParametrosIdioma: TStringField
      FieldName = 'Idioma'
      Size = 1
    end
    object QParametrospar_compras_valores_aut: TStringField
      FieldName = 'par_compras_valores_aut'
      Size = 5
    end
    object QParametrospar_aplica_desc_por_rango_venta: TStringField
      FieldName = 'par_aplica_desc_por_rango_venta'
      Size = 5
    end
    object QParametrospar_inv_imprime_comentario: TStringField
      FieldName = 'par_inv_imprime_comentario'
      Size = 5
    end
    object QParametrospar_periodo_caducidad: TStringField
      FieldName = 'par_periodo_caducidad'
    end
    object QParametrospar_cantidad_caducidad: TIntegerField
      FieldName = 'par_cantidad_caducidad'
    end
    object QParametrospar_imprimir_sin_detalle_RI: TStringField
      FieldName = 'par_imprimir_sin_detalle_RI'
      Size = 5
    end
    object QParametroscot_dias_valides: TIntegerField
      FieldName = 'cot_dias_valides'
    end
    object QParametrospar_validar_serie_en_inventario: TStringField
      FieldName = 'par_validar_serie_en_inventario'
      Size = 5
    end
    object QParametrospar_impresora_boleto: TStringField
      FieldName = 'par_impresora_boleto'
    end
    object QParametrosPAR_SUC_NCF: TIntegerField
      FieldName = 'PAR_SUC_NCF'
    end
    object QParametrospar_busq_incrementada: TBooleanField
      FieldName = 'par_busq_incrementada'
    end
    object QParametrospar_busq_por_referencia: TBooleanField
      FieldName = 'par_busq_por_referencia'
    end
    object QParametrospar_envio_maxivo_fact: TBooleanField
      FieldName = 'par_envio_maxivo_fact'
    end
    object QParametrosPAR_MORA_DIAS_GRACIA: TIntegerField
      FieldName = 'PAR_MORA_DIAS_GRACIA'
    end
    object QParametrosPAR_MORA_PORC: TCurrencyField
      FieldName = 'PAR_MORA_PORC'
    end
    object QParametrosPAR_MORA_DIAS_APLICAR: TIntegerField
      FieldName = 'PAR_MORA_DIAS_APLICAR'
    end
    object QParametrosPAR_CODIGO_ABRE_CAJA: TStringField
      FieldName = 'PAR_CODIGO_ABRE_CAJA'
    end
    object QParametrospar_imprimir_con_detalle_prod: TBooleanField
      FieldName = 'par_imprimir_con_detalle_prod'
    end
    object QParametrospar_cotizacion_notif: TBooleanField
      FieldName = 'par_cotizacion_notif'
    end
    object QParametrosPar_Envio_Rec_Estadocta: TBooleanField
      FieldName = 'Par_Envio_Rec_Estadocta'
    end
    object QParametrosPar_Envio_Rec_Correo: TBooleanField
      FieldName = 'Par_Envio_Rec_Correo'
    end
    object QParametrosPar_Envio_Conduce_Correo: TBooleanField
      FieldName = 'Par_Envio_Conduce_Correo'
    end
    object QParametrosPar_Envio_Cotiz_Correo: TBooleanField
      FieldName = 'Par_Envio_Cotiz_Correo'
    end
    object QParametrospar_treporte_peso: TIntegerField
      FieldName = 'par_treporte_peso'
    end
    object QParametrosPAR_IMPCODBARRAFAM: TBooleanField
      FieldName = 'PAR_IMPCODBARRAFAM'
    end
    object QParametrospar_banca_apuestas: TBooleanField
      FieldName = 'par_banca_apuestas'
    end
    object QParametrosRestBar_FactConItbis: TBooleanField
      FieldName = 'RestBar_FactConItbis'
    end
  end
end
