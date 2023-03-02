program DashaRestbar;

uses
  Forms,
  BAR00 in 'BAR00.pas' {frmPOS},
  BAR02 in 'BAR02.pas' {frmOpciones},
  BAR01 in 'BAR01.pas' {frmMain},
  BAR03 in 'BAR03.pas' {frmConfirm},
  BAR04 in 'BAR04.pas' {DM: TDataModule},
  BAR05 in 'BAR05.pas' {frmProductos},
  BAR06 in 'BAR06.pas' {frmFormaBuscaProducto},
  BAR07 in 'BAR07.pas' {frmActProducto},
  BAR08 in 'BAR08.pas' {frmSeleccionaCategoria},
  BAR09 in 'BAR09.pas' {frmBuscarProducto},
  BAR10 in 'BAR10.pas' {frmIngredientes},
  BAR11 in 'BAR11.pas' {frmCategorias},
  BAR12 in 'BAR12.pas' {frmActCategoria},
  BAR13 in 'BAR13.pas' {frmOferta},
  BAR14 in 'BAR14.pas' {frmAcceso},
  BAR52 in 'BAR52.pas' {frmUnifMesa},
  BAR17 in 'BAR17.pas' {frmDevuelta},
  BAR18 in 'BAR18.pas' {frmSeleccionMesa},
  BAR19 in 'BAR19.pas' {frmUsuarios},
  BAR20 in 'BAR20.pas' {frmActUsuario},
  BAR21 in 'BAR21.pas' {frmAreas},
  BAR22 in 'BAR22.pas' {frmActAreas},
  BAR23 in 'BAR23.pas' {frmMesas},
  BAR24 in 'BAR24.pas' {frmActMesas},
  BAR25 in 'BAR25.pas' {frmEmpresa},
  BAR26 in 'BAR26.pas' {frmActEmpresa},
  BAR67 in 'BAR67.pas' {frmConsVentasMod},
  BAR28 in 'BAR28.pas' {frmNCF},
  BAR29 in 'BAR29.pas' {frmBuscaRNC},
  BAR30 in 'BAR30.pas' {frmTarjeta},
  BAR31 in 'BAR31.pas' {frmReimpresion},
  BAR32 in 'BAR32.pas' {frmNombreCliente},
  BAR33 in 'BAR33.pas' {frmTeclado},
  BAR34 in 'BAR34.pas' {frmDescuento},
  BAR35 in 'BAR35.pas' {RVentas: TQuickRep},
  BAR36 in 'BAR36.pas' {RVentasProductos: TQuickRep},
  BAR37 in 'BAR37.pas' {frmCuadre},
  BAR38 in 'BAR38.pas' {frmBuscaFactura},
  BAR39 in 'BAR39.pas' {frmImpuestos},
  BAR40 in 'BAR40.pas' {frmDesembolso},
  BAR41 in 'BAR41.pas' {frmCombinado},
  BAR42 in 'BAR42.pas' {frmCheque},
  BAR43 in 'BAR43.pas' {frmBono},
  BAR44 in 'BAR44.pas' {frmActRNC},
  BAR45 in 'BAR45.pas' {frmConsDev},
  BAR46 in 'BAR46.pas' {frmBuscaNC},
  BAR50 in 'BAR50.pas' {frmActImpresoraRemota},
  BAR51 in 'BAR51.pas' {frmImpresoraRemota},
  BAR15 in 'BAR15.pas' {frmHold},
  BAR16 in 'BAR16.pas' {frmCash},
  BAR54 in 'BAR54.pas' {RProductos: TQuickRep},
  BAR55 in 'BAR55.pas' {frmDividirPago},
  BAR56 in 'BAR56.pas' {frmProveedores},
  BAR57 in 'BAR57.pas' {frmActProveedores},
  BAR58 in 'BAR58.pas' {frmEntradas},
  BAR59 in 'BAR59.pas' {frmSalidas},
  BAR60 in 'BAR60.pas' {frmActSalidas},
  BAR61 in 'BAR61.pas' {frmActEntradas},
  BAR62 in 'BAR62.pas' {frmBuscarProveedor},
  BAR63 in 'BAR63.pas' {frmClientes},
  BAR64 in 'BAR64.pas' {frmActClientes},
  BAR65 in 'BAR65.pas' {frmConsultaEnttrada},
  BAR66 in 'BAR66.pas' {rEntradas: TQuickRep},
  BAR27 in 'BAR27.pas' {frmConsVentas},
  BAR68 in 'BAR68.pas' {FrmHabitaciones},
  BAR69 in 'BAR69.pas' {DM_Update: TDataModule},
  BAR70 in 'BAR70.pas' {FrmSeleccionarImpresora},
  BAR71 in 'BAR71.pas' {frmCierreJornadaFiscal},
  BAR511 in 'BAR511.pas' {frmConfImpFiscal};

{$R *.res}

begin
  Application.Initialize;
  Application.Title := 'DASHA';
  Application.CreateForm(TDM, DM);
  Application.CreateForm(TfrmMain, frmMain);
  Application.CreateForm(TfrmHold, frmHold);
  Application.CreateForm(TfrmCash, frmCash);
  Application.CreateForm(TDM_Update, DM_Update);
  Application.Run;
end.
