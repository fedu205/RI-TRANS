unit ECPMain;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView, Default, StrUtils,
  cxGridBandedTableView, cxGridDBBandedTableView, cxClasses, dxBar, cxGridLevel,
  cxGrid, cxPropertiesStore, ADODB, ImgList, Raznoe, Period, Other, ExtCtrls,
  cxPC, cxContainer, cxTextEdit, cxMemo, DateUtils, dxSkinsCore, dxSkinBlack,
  dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom,
  dxSkinDarkSide, dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMetropolis,
  dxSkinMetropolisDark, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue,
  dxSkinOffice2010Silver, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray,
  dxSkinOffice2013White, dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic,
  dxSkinSharp, dxSkinSharpPlus, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinTheAsphaltWorld, dxSkinsDefaultPainters,
  dxSkinValentine, dxSkinVS2010, dxSkinWhiteprint, dxSkinXmas2008Blue,
  dxSkinscxPCPainter, cxNavigator, dxBarBuiltInMenu, dxSkinsdxBarPainter,
  dxSkinOffice2016Colorful, dxSkinOffice2016Dark, dxSkinVisualStudio2013Blue,
  dxSkinVisualStudio2013Dark, dxSkinVisualStudio2013Light, System.ImageList,
  dxSkinsForm, Vcl.XPMan, Vcl.StdCtrls, cxCalendar, Vcl.ComCtrls, dxCore,
  cxDateUtils, cxMaskEdit, cxDropDownEdit, Datasnap.DBClient, cxSplitter,
  cxCurrencyEdit, cxImageList, ComObj,
  cxDataControllerConditionalFormattingRulesManagerDialog, dxSkinTheBezier,
  dxDateRanges, dxSkinOffice2019Colorful, dxSkinBasic, dxSkinOffice2019Black,
  dxSkinOffice2019DarkGray, dxSkinOffice2019White, dxScrollbarAnnotations, dxSkinWXI;


type
  TfmECPMain = class(TForm)
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    dxBarManager1: TdxBarManager;
    dxBarManager1Bar1: TdxBar;
    cxGrid1DBBandedTableView1: TcxGridDBBandedTableView;
    dxBarButton2: TdxBarButton;
    dxBarButton3: TdxBarButton;
    dxBarButton4: TdxBarButton;
    dxBarButton5: TdxBarButton;
    ADOEtran: TADOConnection;
    cxPropertiesStore1: TcxPropertiesStore;
    Query_ECP: TADOQuery;
    DS_ECP: TDataSource;
    dxBarButton7: TdxBarButton;
    dxBarSubItem2: TdxBarSubItem;
    dxBarButton8: TdxBarButton;
    dxBarButton9: TdxBarButton;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1: TcxStyle;
    dxBarPopupMenu1: TdxBarPopupMenu;
    dxBarButton10: TdxBarButton;
    dxBarButton11: TdxBarButton;
    dxBarSubItem3: TdxBarSubItem;
    dxBarButton12: TdxBarButton;
    dxBarButton13: TdxBarButton;
    dxBarButton14: TdxBarButton;
    dxBarButton15: TdxBarButton;
    cxGrid1DBBandedTableView1etran_ecp_id: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1etran_ecp_type_id: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1etran_ecp_type_name: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1date_send: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1users_owner_id: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1global_color: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1date_enter: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1invSenderName: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1invSenderOKPO: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1invRecipName: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1invRecipOKPO: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1invNumber: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1invSendKindName: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1invFRWSubCode: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1invFromStationName: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1invToStationName: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1invPayerName: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1freightName: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1FIO_users_create: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1FIO_users_send: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1set_error: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1num_vagon: TcxGridDBBandedColumn;
    dxBarButton16: TdxBarButton;
    cxGrid1DBBandedTableView1freightDangerName: TcxGridDBBandedColumn;
    Panel1: TPanel;
    Splitter1: TSplitter;
    cxPageControl1: TcxPageControl;
    cxTabSheet1: TcxTabSheet;
    cxMemo1: TcxMemo;
    dxBarButton17: TdxBarButton;
    cxGrid1DBBandedTableView1set_automat: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1set_warning: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1set_change_fields: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1set_check: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1check_begin: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1check_end: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1invoiceState: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1FIO_users_check_end: TcxGridDBBandedColumn;
    dxBarButton18: TdxBarButton;
    dxBarButton19: TdxBarButton;
    cxStyle2: TcxStyle;
    dxBarSubItem4: TdxBarSubItem;
    cxLookAndFeelController1: TcxLookAndFeelController;
    dxSkinController1: TdxSkinController;
    cxPageControl2: TcxPageControl;
    cxTabSheet2: TcxTabSheet;
    dxBarButton1: TdxBarButton;
    dxBarSubItem1: TdxBarSubItem;
    dxBarButton6: TdxBarButton;
    cxTabSheet3: TcxTabSheet;
    cxTabSheet4: TcxTabSheet;
    cxTabSheet5: TcxTabSheet;
    cxGrid2: TcxGrid;
    cxGrid2DBBandedTableView1: TcxGridDBBandedTableView;
    cxGrid2DBBandedTableView1num_vagon: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1rod_vagon: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1type_vagon: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1state_self: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1fact_weight: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1node_end_name: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1node_end_cod: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1kargoETSNG_name: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1kargoETSNG_cod: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1node_begin_name: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1node_begin_cod: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1road_begin_name: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1road_begin_cod: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1road_end_name: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1road_end_cod: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1date_otpr: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1index_train: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1num_train: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1date_operation: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1time_operation: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1node_operation_name: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1node_operation_cod: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1poluchgr: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1special_marks: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1type_park_vagon: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1type_sps_name: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1file_load_name: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1file_load_date: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1FIO_users: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1fact_track_id: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1global_color: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1cod_operation_train_name: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1cod_operation_vagon_name: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1cod_operation_vagon_name_full: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1cod_operation_train_name_full: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1cod_operation_vagon_cod: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1cod_operation_cod: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1type_park_vagon_name: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1model_name: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1firm_name: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1arenda_firm_name: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1date_query: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1datpr: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1date_operation_end: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1Round_day: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1comments: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1comment: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1vagon_id: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1comment1: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1comment2: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1comment3: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1comment4: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1comment5: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1comment6: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1comment7: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1next_date_repair: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1comment8: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1count_stay: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1node_registration_name: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1time_otpr: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1doc_number: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1node_end_road_name: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1node_begin_road_name: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1uchet_name: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1copper_calibration: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1okpo_grpol: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1okpo_grotpr: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1RW_grpol: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1RW_grotpr: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1DateLoading: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1RW_Rash: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1fact_track_trip_id: TcxGridDBBandedColumn;
    cxGrid2Level1: TcxGridLevel;
    cxGrid5: TcxGrid;
    cxGrid3DBBandedTableView1: TcxGridDBBandedTableView;
    cxGrid3DBBandedTableView1fact_track_trip_id: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1num_vagon: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1date_otpr: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1date_arrival: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1users_group_id: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1node_begin_cod: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1node_begin_name: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1node_end_cod: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1node_end_name: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1kargoETSNG_cod: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1kargoETSNG_name: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1fact_weight: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1min_date_operation: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1max_date_operation: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1set_recalc_trip: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1okpo_grotpr: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1doc_number: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1idReis: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1set_warning: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1instruction_cod: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1instruction_date: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1instruction_id: TcxGridDBBandedColumn;
    cxGridLevel3: TcxGridLevel;
    DS_ECP_Orders: TDataSource;
    cxGrid3: TcxGrid;
    cxGridDBBandedTableView1: TcxGridDBBandedTableView;
    cxGridDBBandedTableView1etran_ecp_id: TcxGridDBBandedColumn;
    cxGridDBBandedTableView1etran_ecp_type_id: TcxGridDBBandedColumn;
    cxGridDBBandedTableView1etran_ecp_type_name: TcxGridDBBandedColumn;
    cxGridDBBandedTableView1date_send: TcxGridDBBandedColumn;
    cxGridDBBandedTableView1users_owner_id: TcxGridDBBandedColumn;
    cxGridDBBandedTableView1global_color: TcxGridDBBandedColumn;
    cxGridDBBandedTableView1date_enter: TcxGridDBBandedColumn;
    cxGridDBBandedTableView1invSenderName: TcxGridDBBandedColumn;
    cxGridDBBandedTableView1invSenderOKPO: TcxGridDBBandedColumn;
    cxGridDBBandedTableView1invRecipName: TcxGridDBBandedColumn;
    cxGridDBBandedTableView1invRecipOKPO: TcxGridDBBandedColumn;
    cxGridDBBandedTableView1invNumber: TcxGridDBBandedColumn;
    cxGridDBBandedTableView1invSendKindName: TcxGridDBBandedColumn;
    cxGridDBBandedTableView1invFRWSubCode: TcxGridDBBandedColumn;
    cxGridDBBandedTableView1invFromStationName: TcxGridDBBandedColumn;
    cxGridDBBandedTableView1invToStationName: TcxGridDBBandedColumn;
    cxGridDBBandedTableView1invPayerName: TcxGridDBBandedColumn;
    cxGridDBBandedTableView1freightName: TcxGridDBBandedColumn;
    cxGridDBBandedTableView1FIO_users_create: TcxGridDBBandedColumn;
    cxGridDBBandedTableView1FIO_users_send: TcxGridDBBandedColumn;
    cxGridDBBandedTableView1set_error: TcxGridDBBandedColumn;
    cxGridDBBandedTableView1num_vagon: TcxGridDBBandedColumn;
    cxGridDBBandedTableView1freightDangerName: TcxGridDBBandedColumn;
    cxGridDBBandedTableView1set_automat: TcxGridDBBandedColumn;
    cxGridDBBandedTableView1set_warning: TcxGridDBBandedColumn;
    cxGridDBBandedTableView1set_change_fields: TcxGridDBBandedColumn;
    cxGridDBBandedTableView1set_check: TcxGridDBBandedColumn;
    cxGridDBBandedTableView1check_begin: TcxGridDBBandedColumn;
    cxGridDBBandedTableView1check_end: TcxGridDBBandedColumn;
    cxGridDBBandedTableView1invoiceState: TcxGridDBBandedColumn;
    cxGridDBBandedTableView1FIO_users_check_end: TcxGridDBBandedColumn;
    cxGridLevel1: TcxGridLevel;
    dxBarPopupMenu2: TdxBarPopupMenu;
    dxBarButton20: TdxBarButton;
    dxBarSubItem5: TdxBarSubItem;
    dxBarButton21: TdxBarButton;
    dxBarButton22: TdxBarButton;
    DS_History: TDataSource;
    DS_Trip1: TDataSource;
    dxBarDockControl1: TdxBarDockControl;
    dxBarDockControl2: TdxBarDockControl;
    dxBarManager1Bar2: TdxBar;
    dxBarManager1Bar3: TdxBar;
    dxBarSubItem6: TdxBarSubItem;
    dxBarButton24: TdxBarButton;
    dxBarButton25: TdxBarButton;
    dxBarButton26: TdxBarButton;
    dxBarSubItem7: TdxBarSubItem;
    dxBarButton27: TdxBarButton;
    dxBarButton28: TdxBarButton;
    dxBarButton29: TdxBarButton;
    cxImageList1: TcxImageList;
    dxBarButton30: TdxBarButton;
    dxBarButton31: TdxBarButton;
    dxBarButton32: TdxBarButton;
    dxBarButton33: TdxBarButton;
    cxGrid1DBBandedTableView1global_copy: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1trip_status: TcxGridDBBandedColumn;
    sp_etran_ecp_get: TADOStoredProc;
    cxGrid1DBBandedTableView1trip_date_arrival: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1set_arrival: TcxGridDBBandedColumn;
    cxStyle3: TcxStyle;
    Query_HistoryTrip: TADOQuery;
    Query_History: TADOQuery;
    dxBarPopupMenu3: TdxBarPopupMenu;
    dxBarButton34: TdxBarButton;
    dxBarSubItem8: TdxBarSubItem;
    dxBarButton35: TdxBarButton;
    dxBarButton36: TdxBarButton;
    dxBarPopupMenu4: TdxBarPopupMenu;
    dxBarButton37: TdxBarButton;
    dxBarSubItem9: TdxBarSubItem;
    dxBarButton38: TdxBarButton;
    dxBarButton39: TdxBarButton;
    cxGrid1DBBandedTableView1orders_type: TcxGridDBBandedColumn;
    cxGridDBBandedTableView1orders_type: TcxGridDBBandedColumn;
    dxBarSubItem10: TdxBarSubItem;
    dxBarButton23: TdxBarButton;
    dxBarButton40: TdxBarButton;
    Panel2: TPanel;
    cxSplitter1: TcxSplitter;
    cxPageControl4: TcxPageControl;
    cxTabSheet8: TcxTabSheet;
    cxTabSheet9: TcxTabSheet;
    cxTabSheet10: TcxTabSheet;
    cxTabSheet11: TcxTabSheet;
    cxGrid1DBBandedTableView1firm_customer_name: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1contract_cod: TcxGridDBBandedColumn;
    cxGridDBBandedTableView1firm_customer_name: TcxGridDBBandedColumn;
    cxGridDBBandedTableView1contract_cod: TcxGridDBBandedColumn;
    cxGridDBBandedTableView1status: TcxGridDBBandedColumn;
    dxBarButton41: TdxBarButton;
    cxGrid1DBBandedTableView1set_error_ecp: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1error_ecp: TcxGridDBBandedColumn;
    dxBarButton42: TdxBarButton;
    cxGrid7: TcxGrid;
    cxGridDBBandedTableView4: TcxGridDBBandedTableView;
    cxGrid1DBBandedTableView1id: TcxGridDBBandedColumn;
    cxGridDBBandedColumn95: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1freightCode: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1freightGNGCode: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1freightAdditional: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1freightWeight: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1freightAccidentCard: TcxGridDBBandedColumn;
    cxGridLevel5: TcxGridLevel;
    cxGrid10: TcxGrid;
    cxGridDBBandedTableView9: TcxGridDBBandedTableView;
    cxGridDBBandedTableView9id: TcxGridDBBandedColumn;
    cxGridDBBandedTableView9carNumber: TcxGridDBBandedColumn;
    cxGridDBBandedTableView9carOwnerOKPO: TcxGridDBBandedColumn;
    cxGridDBBandedTableView9carOwnerName: TcxGridDBBandedColumn;
    cxGridDBBandedTableView9carPriorFreightCode: TcxGridDBBandedColumn;
    cxGridDBBandedTableView9carPriorFreightName: TcxGridDBBandedColumn;
    cxGridLevel9: TcxGridLevel;
    cxGrid9: TcxGrid;
    cxGridDBBandedTableView8: TcxGridDBBandedTableView;
    cxGridDBBandedTableView8id: TcxGridDBBandedColumn;
    cxGridDBBandedTableView8distStationCode: TcxGridDBBandedColumn;
    cxGridDBBandedTableView8distMinWay: TcxGridDBBandedColumn;
    cxGridDBBandedTableView8distStationName: TcxGridDBBandedColumn;
    cxGridLevel8: TcxGridLevel;
    cxGrid8: TcxGrid;
    cxGridDBBandedTableView7: TcxGridDBBandedTableView;
    cxGridDBBandedTableView7id: TcxGridDBBandedColumn;
    cxGridDBBandedTableView7spcCustomText: TcxGridDBBandedColumn;
    cxGridDBBandedTableView7spcTranspClauseName: TcxGridDBBandedColumn;
    cxGridLevel7: TcxGridLevel;
    Query_invFreight: TADOQuery;
    DS_invFreight: TDataSource;
    Query_invCar: TADOQuery;
    DS_invCar: TDataSource;
    Query_invDistance: TADOQuery;
    DS_invDistance: TDataSource;
    Query_invSPC: TADOQuery;
    DS_invSPC: TDataSource;
    dxBarButton43: TdxBarButton;
    cxGrid1DBBandedTableView1OperDate: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1operOrgName: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1operPost: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1operPerson: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1operText: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1operResult: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1operRemark: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1operFactDate: TcxGridDBBandedColumn;
    cxStyle4: TcxStyle;
    dxBarButton44: TdxBarButton;
    cxGrid1DBBandedTableView1date_cancel: TcxGridDBBandedColumn;
    dxBarButton45: TdxBarButton;
    dxBarButton46: TdxBarButton;
    cxGrid1DBBandedTableView1invPayerCode: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1error_name: TcxGridDBBandedColumn;
    dxBarButton47: TdxBarButton;
    cxGrid1DBBandedTableView1distance: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1set_priority: TcxGridDBBandedColumn;
    cxGridDBBandedTableView1set_priority: TcxGridDBBandedColumn;
    dxBarButton48: TdxBarButton;
    dxBarSubItem11: TdxBarSubItem;
    cxTabSheet12: TcxTabSheet;
    cxGrid11: TcxGrid;
    cxGridDBBandedTableView5: TcxGridDBBandedTableView;
    cxGridDBBandedTableView5etran_ecp_id: TcxGridDBBandedColumn;
    cxGridDBBandedTableView5etran_ecp_type_id: TcxGridDBBandedColumn;
    cxGridDBBandedTableView5etran_ecp_type_name: TcxGridDBBandedColumn;
    cxGridDBBandedTableView5date_send: TcxGridDBBandedColumn;
    cxGridDBBandedTableView5users_owner_id: TcxGridDBBandedColumn;
    cxGridDBBandedTableView5global_color: TcxGridDBBandedColumn;
    cxGridDBBandedTableView5date_enter: TcxGridDBBandedColumn;
    cxGridDBBandedTableView5invSenderName: TcxGridDBBandedColumn;
    cxGridDBBandedTableView5invSenderOKPO: TcxGridDBBandedColumn;
    cxGridDBBandedTableView5invRecipName: TcxGridDBBandedColumn;
    cxGridDBBandedTableView5invRecipOKPO: TcxGridDBBandedColumn;
    cxGridDBBandedTableView5invNumber: TcxGridDBBandedColumn;
    cxGridDBBandedTableView5invSendKindName: TcxGridDBBandedColumn;
    cxGridDBBandedTableView5invFRWSubCode: TcxGridDBBandedColumn;
    cxGridDBBandedTableView5invFromStationName: TcxGridDBBandedColumn;
    cxGridDBBandedTableView5invToStationName: TcxGridDBBandedColumn;
    cxGridDBBandedTableView5invPayerName: TcxGridDBBandedColumn;
    cxGridDBBandedTableView5freightName: TcxGridDBBandedColumn;
    cxGridDBBandedTableView5FIO_users_create: TcxGridDBBandedColumn;
    cxGridDBBandedTableView5FIO_users_send: TcxGridDBBandedColumn;
    cxGridDBBandedTableView5set_error: TcxGridDBBandedColumn;
    cxGridDBBandedTableView5num_vagon: TcxGridDBBandedColumn;
    cxGridDBBandedTableView5freightDangerName: TcxGridDBBandedColumn;
    cxGridDBBandedTableView5set_automat: TcxGridDBBandedColumn;
    cxGridDBBandedTableView5set_warning: TcxGridDBBandedColumn;
    cxGridDBBandedTableView5set_change_fields: TcxGridDBBandedColumn;
    cxGridDBBandedTableView5set_check: TcxGridDBBandedColumn;
    cxGridDBBandedTableView5check_begin: TcxGridDBBandedColumn;
    cxGridDBBandedTableView5check_end: TcxGridDBBandedColumn;
    cxGridDBBandedTableView5invoiceState: TcxGridDBBandedColumn;
    cxGridDBBandedTableView5FIO_users_check_end: TcxGridDBBandedColumn;
    cxGridDBBandedTableView5orders_type: TcxGridDBBandedColumn;
    cxGridDBBandedTableView5firm_customer_name: TcxGridDBBandedColumn;
    cxGridDBBandedTableView5contract_cod: TcxGridDBBandedColumn;
    cxGridDBBandedTableView5status: TcxGridDBBandedColumn;
    cxGridDBBandedTableView5set_priority: TcxGridDBBandedColumn;
    cxGridLevel6: TcxGridLevel;
    Query_ECP_Archive: TADOQuery;
    DS_ECP_Archive: TDataSource;
    cxGridDBBandedTableView5comment: TcxGridDBBandedColumn;
    cxStyle5: TcxStyle;
    dxBarPopupMenu5: TdxBarPopupMenu;
    dxBarButton49: TdxBarButton;
    dxBarSubItem12: TdxBarSubItem;
    dxBarButton50: TdxBarButton;
    dxBarButton51: TdxBarButton;
    dxBarButton52: TdxBarButton;
    sp_etran_ecp_orders_get: TADOStoredProc;
    cxGridDBBandedTableView1distance: TcxGridDBBandedColumn;
    dxBarButton53: TdxBarButton;
    dxBarButton54: TdxBarButton;
    cxGrid1DBBandedTableView1cnt_vagon: TcxGridDBBandedColumn;
    dxBarButton55: TdxBarButton;
    dxBarButton56: TdxBarButton;
    cxGridDBBandedTableView1set_vagon_send: TcxGridDBBandedColumn;
    dxBarButton57: TdxBarButton;
    cxGridDBBandedTableView1trip_status: TcxGridDBBandedColumn;
    cxGridDBBandedTableView1trip_date_arrival: TcxGridDBBandedColumn;
    dxBarSubItem13: TdxBarSubItem;
    cxGrid1DBBandedTableView1comment: TcxGridDBBandedColumn;
    cxGridDBBandedTableView1comment: TcxGridDBBandedColumn;
    dxBarButton58: TdxBarButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure dxBarButton8Click(Sender: TObject);
    procedure dxBarButton9Click(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure dxBarButton7Click(Sender: TObject);
    procedure dxBarButton11Click(Sender: TObject);
    procedure dxBarButton14Click(Sender: TObject);
    procedure dxBarButton15Click(Sender: TObject);
    procedure dxBarButton2Click(Sender: TObject);
    procedure dxBarButton4Click(Sender: TObject);
    procedure cxGrid1DBBandedTableView1CustomDrawCell(
      Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
      AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
    procedure cxGrid1DBBandedTableView1CustomDrawColumnHeader(
      Sender: TcxGridTableView; ACanvas: TcxCanvas;
      AViewInfo: TcxGridColumnHeaderViewInfo; var ADone: Boolean);
    procedure cxGrid1DBBandedTableView1FocusedItemChanged(
      Sender: TcxCustomGridTableView; APrevFocusedItem,
      AFocusedItem: TcxCustomGridTableItem);
    procedure cxGrid1DBBandedTableView1KeyPress(Sender: TObject; var Key: Char);
    procedure dxBarButton3Click(Sender: TObject);
    procedure dxBarButton10Click(Sender: TObject);
    procedure ADOEtranExecuteComplete(Connection: TADOConnection;
      RecordsAffected: Integer; const Error: Error;
      var EventStatus: TEventStatus; const Command: _Command;
      const Recordset: _Recordset);
    procedure dxBarButton5Click(Sender: TObject);
    procedure dxBarButton16Click(Sender: TObject);
    procedure dxBarButton17Click(Sender: TObject);
    procedure dxBarButton18Click(Sender: TObject);
    procedure dxBarButton19Click(Sender: TObject);
    procedure dxBarButton1Click(Sender: TObject);
    procedure dxBarButton6Click(Sender: TObject);
    procedure cxGridDBBandedTableView1FilterOnChanged(Sender: TObject);
    procedure cxGridDBBandedTableView1CustomDrawCell(
      Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
      AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
    procedure cxGridDBBandedTableView1CustomDrawColumnHeader(
      Sender: TcxGridTableView; ACanvas: TcxCanvas;
      AViewInfo: TcxGridColumnHeaderViewInfo; var ADone: Boolean);
    procedure cxGridDBBandedTableView1FocusedItemChanged(
      Sender: TcxCustomGridTableView; APrevFocusedItem,
      AFocusedItem: TcxCustomGridTableItem);
    procedure cxGridDBBandedTableView1KeyPress(Sender: TObject; var Key: Char);
    procedure dxBarButton20Click(Sender: TObject);
    procedure dxBarButton21Click(Sender: TObject);
    procedure dxBarButton22Click(Sender: TObject);
    procedure dxBarButton28Click(Sender: TObject);
    procedure dxBarButton30Click(Sender: TObject);
    procedure dxBarButton31Click(Sender: TObject);
    procedure dxBarButton24Click(Sender: TObject);
    procedure dxBarButton32Click(Sender: TObject);
    procedure dxBarButton33Click(Sender: TObject);
    procedure dxBarButton26Click(Sender: TObject);
    procedure dxBarButton34Click(Sender: TObject);
    procedure dxBarButton35Click(Sender: TObject);
    procedure dxBarButton36Click(Sender: TObject);
    procedure dxBarButton37Click(Sender: TObject);
    procedure dxBarButton38Click(Sender: TObject);
    procedure dxBarButton39Click(Sender: TObject);
    procedure cxPageControl1Change(Sender: TObject);
    procedure cxGrid2DBBandedTableView1FilterOnChanged(Sender: TObject);
    procedure cxGrid2DBBandedTableView1CustomDrawCell(
      Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
      AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
    procedure cxGrid2DBBandedTableView1CustomDrawColumnHeader(
      Sender: TcxGridTableView; ACanvas: TcxCanvas;
      AViewInfo: TcxGridColumnHeaderViewInfo; var ADone: Boolean);
    procedure cxGrid2DBBandedTableView1FocusedItemChanged(
      Sender: TcxCustomGridTableView; APrevFocusedItem,
      AFocusedItem: TcxCustomGridTableItem);
    procedure cxGrid2DBBandedTableView1KeyPress(Sender: TObject; var Key: Char);
    procedure cxGrid3DBBandedTableView1FilterOnChanged(Sender: TObject);
    procedure cxGrid3DBBandedTableView1CustomDrawCell(
      Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
      AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
    procedure cxGrid3DBBandedTableView1CustomDrawColumnHeader(
      Sender: TcxGridTableView; ACanvas: TcxCanvas;
      AViewInfo: TcxGridColumnHeaderViewInfo; var ADone: Boolean);
    procedure cxGrid3DBBandedTableView1FocusedItemChanged(
      Sender: TcxCustomGridTableView; APrevFocusedItem,
      AFocusedItem: TcxCustomGridTableItem);
    procedure cxGrid3DBBandedTableView1KeyPress(Sender: TObject; var Key: Char);
    procedure dxBarButton40Click(Sender: TObject);
    procedure dxBarButton23Click(Sender: TObject);
    procedure dxBarButton41Click(Sender: TObject);
    procedure dxBarButton42Click(Sender: TObject);
    procedure cxPageControl4Change(Sender: TObject);
    procedure dxBarButton43Click(Sender: TObject);
    procedure dxBarButton44Click(Sender: TObject);
    procedure dxBarButton45Click(Sender: TObject);
    procedure dxBarButton46Click(Sender: TObject);
    procedure dxBarButton47Click(Sender: TObject);
    procedure dxBarButton48Click(Sender: TObject);
    procedure dxBarButton49Click(Sender: TObject);
    procedure dxBarButton50Click(Sender: TObject);
    procedure dxBarButton51Click(Sender: TObject);
    procedure dxBarButton52Click(Sender: TObject);
    procedure dxBarButton53Click(Sender: TObject);
    procedure dxBarButton54Click(Sender: TObject);
    procedure dxBarButton55Click(Sender: TObject);
    procedure dxBarButton56Click(Sender: TObject);
    procedure cxGridDBBandedTableView5CustomDrawCell(
      Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
      AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
    procedure cxGridDBBandedTableView5CustomDrawColumnHeader(
      Sender: TcxGridTableView; ACanvas: TcxCanvas;
      AViewInfo: TcxGridColumnHeaderViewInfo; var ADone: Boolean);
    procedure cxGridDBBandedTableView5FocusedItemChanged(
      Sender: TcxCustomGridTableView; APrevFocusedItem,
      AFocusedItem: TcxCustomGridTableItem);
    procedure cxGridDBBandedTableView5KeyPress(Sender: TObject; var Key: Char);
    procedure dxBarButton57Click(Sender: TObject);
    procedure cxGrid1DBBandedTableView1SelectionChanged(
      Sender: TcxCustomGridTableView);
    procedure cxPageControl2Change(Sender: TObject);
    procedure dxBarButton58Click(Sender: TObject);
  private
    Fusr_pwd         : PUser_pwd;
    Fusers_group_cod : string;
    Fdate1, Fdate2 : TDateTime;
    Fdate3, Fdate4 : TDateTime;
    Fdate5, Fdate6 : TDateTime;
    FIO_users : string;
    Fetran_ip : string;
    Fetran_port : string;

    procedure SetEcpId(etran_ecp_id: integer);
    procedure RefreshECP();
    procedure RefreshProcedure(id: integer);
    procedure RefreshProcedureDetail();
  public
    constructor Create(AOwner: TApplication; users_group_cod: string; usr_pwd: PUser_pwd);
  published
    property _SetFIOusers : string write FIO_users;
    property _SetEtranIP  : string write Fetran_ip;
    property _SetEtranPort: string write Fetran_port;
    property _SetEcpId    : integer write SetEcpId;
  end;

var
  fmECPMain: TfmECPMain;

function CreateWndEtranECP(AppHand: THandle; users_group_cod: string; usr_pwd: PUser_pwd; FIO_users: string; etran_ecp_id: integer): variant; export;

implementation

uses ECPInvoiceToViza, ECPInvoiceLoad, ECPQuery, ECPStatus, ECPInvAdd,
  ECPVagonHistory, ECPVagonMonitor, ECPVagonSeveral, ECPInvFreight;

{$R *.dfm}



function CreateWndEtranECP(AppHand: THandle; users_group_cod: string; usr_pwd: PUser_pwd; FIO_users: string; etran_ecp_id: integer): variant; export;
begin
  Application.Handle := AppHand;
  try
    fmECPMain := TfmECPMain.Create(Application, users_group_cod, usr_pwd);
    fmECPMain._SetFIOusers := FIO_users;

    if etran_ecp_id <> -9 then begin
      fmECPMain._SetEcpId := etran_ecp_id;
    end;

    //-- изменить по мере необходимости возвращаемых параметров
    if  fmECPMain.ShowModal = mrOk then result := VarArrayOf([-9, '']);
  finally
    fmECPMain.Free;
  end;
end;

procedure TfmECPMain.SetEcpId(etran_ecp_id: integer);
var Q : TADOQuery;
begin
  Screen.Cursor := crHourGlass;

  cxPageControl2.ActivePage := cxTabSheet3;

  Q := TADOQuery.Create(nil);
  Q.Connection := ADOEtran;
  Q.SQL.Add('SELECT * FROM view_etran_ecp WHERE etran_ecp_id = ' + IntToStr(etran_ecp_id));
  Q.Open;

  if Q.RecordCount > 0 then begin
    Fdate1 := Q.FieldByName('date_enter').AsDateTime - DayOf(Q.FieldByName('date_enter').AsDateTime) + 1;
    Fdate2 := IncMonth(Fdate1)-1;
    dxBarSubItem2.Caption := FormatDateTime('mmmm yyyy', Fdate1);

//    Query_ECP.Close;
//    Query_ECP.Parameters.ParamByName('date1').Value := Fdate1;
//    Query_ECP.Parameters.ParamByName('date2').Value := Fdate2;
//    Query_ECP.Open;

    sp_etran_ecp_get.Parameters.Refresh;
    sp_etran_ecp_get.Parameters.ParamByName('@date1').Value := Fdate1;
    sp_etran_ecp_get.Parameters.ParamByName('@date2').Value := Fdate2;
    sp_etran_ecp_get.Parameters.ParamByName('@set_order' ).Value := False;
    sp_etran_ecp_get.Parameters.ParamByName('@set_cancel').Value := dxBarButton43.Down;
    sp_etran_ecp_get.Open;


    sp_etran_ecp_orders_get.Parameters.Refresh;
    sp_etran_ecp_orders_get.Parameters.ParamByName('@date1').Value := Fdate1;
    sp_etran_ecp_orders_get.Parameters.ParamByName('@date2').Value := Fdate2;
    sp_etran_ecp_orders_get.Parameters.ParamByName('@set_order' ).Value := True;
    sp_etran_ecp_orders_get.Parameters.ParamByName('@set_cancel').Value := dxBarButton43.Down;
    sp_etran_ecp_orders_get.Open;


    Query_ECP_Archive.Close;
    Query_ECP_Archive.Parameters.ParamByName('date1').Value := Fdate1;
    Query_ECP_Archive.Parameters.ParamByName('date2').Value := Fdate2+1;
    Query_ECP_Archive.Open;


    if Q.FieldByName('set_orders').AsBoolean = True then begin
      cxPageControl2.ActivePage := cxTabSheet3;

      if cxGridDBBandedTableView1.DataController.LocateByKey(etran_ecp_id) = False then cxGridDBBandedTableView1.Controller.GoToFirst;
      if cxGridDBBandedTableView1.Controller.FocusedRecord <> nil then  cxGridDBBandedTableView1.Controller.FocusedRecord.Selected := True;
    end else begin
      cxPageControl2.ActivePage := cxTabSheet2;

      if cxGrid1DBBandedTableView1.DataController.LocateByKey(etran_ecp_id) = False then cxGrid1DBBandedTableView1.Controller.GoToFirst;
      if cxGrid1DBBandedTableView1.Controller.FocusedRecord <> nil then  cxGrid1DBBandedTableView1.Controller.FocusedRecord.Selected := True;
    end;

  end;

  Screen.Cursor := crDefault;
end;

procedure TfmECPMain.ADOEtranExecuteComplete(Connection: TADOConnection; RecordsAffected: Integer; const Error: Error; var EventStatus: TEventStatus; const Command: _Command; const Recordset: _Recordset);
begin
  if EventStatus = esErrorsOccured then begin
    Application.MessageBox(PWideChar(Error.Description), 'Внимание', MB_OK);
    ShowTextMessage('', True);
  end;
end;

constructor TfmECPMain.Create(AOwner: TApplication; users_group_cod: string; usr_pwd: PUser_pwd);
var   login : string;
    db_name : string;
          Q : TADOQuery;
    dt : TDateTime;
begin
  Screen.Cursor := -11;
  inherited Create(nil);

  WindowState := wsMaximized;

  Fusr_pwd := usr_pwd;
  Fusers_group_cod := users_group_cod;
  if Fusers_group_cod =  '0' then begin login := 'Etran_rtr'; db_name := 'lis_etran'; end;
//  if Fusers_group_cod =  '1' then begin login := 'Etran_KHT'; db_name := 'lis_etran'; end;
//  if Fusers_group_cod =  '3' then begin login := 'Etran_PRV'; db_name := 'lis_etran'; end;
//  if Fusers_group_cod =  '5' then begin login := 'Etran_STS'; db_name := 'lis_etran'; end;
//  if Fusers_group_cod =  '6' then begin login := 'Etran_KAZ'; db_name := 'lis_etran'; end;
//  if Fusers_group_cod =  '7' then begin login := 'Etran_RTR'; db_name := 'lis_etran'; end;
//  if Fusers_group_cod = '30' then begin login := 'Etran_SNN'; db_name := 'lis_etran'; end;
//  if Fusers_group_cod = '12' then begin login := 'Etran_HOL'; db_name := 'lis_etran'; end;
//  if Fusers_group_cod = '16' then begin login := 'Etran_ITL'; db_name := 'lis_itek_etran'; end;
//  if Fusers_group_cod = '18' then begin login := 'Etran_ILG'; db_name := 'lis_etran'; end;
//  if Fusers_group_cod = '27' then begin login := 'Etran_NGS'; db_name := 'lis_etran'; end;
//  if Fusers_group_cod = '35' then begin login := 'Etran_ULG'; db_name := 'lis_etran'; end;

//  if Fusers_group_cod =  '0' then begin Fetran_ip := '92.53.107.222'; Fetran_port := '7450'; end; // Совфрахт
//  if Fusers_group_cod = '35' then begin Fetran_ip := '92.53.107.222'; Fetran_port := '7450'; end; // Урал Логистика
//  if Fusers_group_cod = '18' then begin Fetran_ip := '92.53.107.222'; Fetran_port := '7450'; end; // Интерлогистика
//  if Fusers_group_cod = '12' then begin Fetran_ip := '92.53.107.222'; Fetran_port := '7450'; end; // Урал Логистика

  Fetran_ip := '92.53.107.222';
  Fetran_port := '7450';


  StoreRegistryGrid2(rgLoad,'\Software\Lis1\ECPEtran\MainGrids', cxGrid1DBBandedTableView1);
  StoreRegistryGrid2(rgLoad,'\Software\Lis1\ECPEtran\MainGrids', cxGridDBBandedTableView1);
//  StoreRegistryGrid(rgLoad,'\Software\Lis1\Etran\Inv_Grids', cxGrid1DBBandedTableView1);
//  StoreRegistryGrid(rgLoad,'\Software\Lis1\Etran\Clm_Grids', cxGridDBBandedTableView1);

  ADOEtran.Connected := False;
  ADOEtran.ConnectionString := 'Persist Security Info=True;Provider=SQLOLEDB.1;User ID='+login+';Password='+'etran'+';Initial Catalog='+db_name+';Data Source='+Fusr_pwd^.server+';';
  ADOEtran.Connected := True;

  dxBarSubItem2.Caption := StoreRegistryDate(rgLoad, '\Software\Lis1\DateTime\ECPMain', Fdate1, Fdate2);

  dt := Now;

  sp_etran_ecp_get.Parameters.Refresh;
  sp_etran_ecp_get.Parameters.ParamByName('@date1').Value := Fdate1;
  sp_etran_ecp_get.Parameters.ParamByName('@date2').Value := Fdate2+1;
  sp_etran_ecp_get.Parameters.ParamByName('@set_order').Value := False;
  sp_etran_ecp_get.Open;

//  sp_etran_ecp_orders_get.Parameters.Refresh;
//  sp_etran_ecp_orders_get.Parameters.ParamByName('@date1').Value := Fdate1;
//  sp_etran_ecp_orders_get.Parameters.ParamByName('@date2').Value := Fdate2;
//  sp_etran_ecp_orders_get.Parameters.ParamByName('@set_order').Value := True;
//  sp_etran_ecp_orders_get.Open;
//
  Query_ECP_Archive.Parameters.ParamByName('date1').Value := Fdate1;
  Query_ECP_Archive.Parameters.ParamByName('date2').Value := Fdate2+1;
  Query_ECP_Archive.Parameters.ParamByName('users_name').Value := login;
//  Query_ECP_Archive.Open;


//  cxTabSheet4.TabVisible := False;
//  cxTabSheet5.TabVisible := False;
  cxPageControl1.ActivePage := cxTabSheet1;

  Fdate3 := Date - DayOf(Date)+1;
  Fdate4 := IncMonth(Fdate3)-1;
  dxBarSubItem7.Caption := FormatDateTime('mmmm yyyy', Fdate3);

  Fdate5 := Date - DayOf(Date)+1;
  Fdate6 := IncMonth(Fdate5)-1;
  dxBarSubItem6.Caption := FormatDateTime('mmmm yyyy', Fdate5);


  Screen.Cursor := 0;
end;

procedure TfmECPMain.cxGrid1DBBandedTableView1CustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
  if (AViewInfo.GridRecord.Values[cxGrid1DBBandedTableView1date_send.Index] <> null) then begin
    ACanvas.Font.Color := clPurple; //clMoneyGreen - $00AF0AAA;
    ACanvas.Font.Style := [fsBold];
  end;

  if (AViewInfo.GridRecord.Values[cxGrid1DBBandedTableView1set_error.Index]<>NULL) AND (AViewInfo.GridRecord.Values[cxGrid1DBBandedTableView1set_error.Index]<>0) then ACanvas.Font.Color := clRed;

  if AViewInfo.GridRecord.Selected or AViewInfo.GridRecord.Focused then begin
    ACanvas.Brush.Color := clNavy;
    ACanvas.Font.Color  := clWhite;
//    if (AViewInfo.GridRecord.Values[cxGrid1DBBandedTableView1global_copy.Index]<>NULL)
//      AND (AViewInfo.GridRecord.Values[cxGrid1DBBandedTableView1global_copy.Index]<>0) then ACanvas.Font.Color := clRed
//    else ACanvas.Font.Color := clWhite;
    if AViewInfo.Focused then ACanvas.Brush.Color := clBlue;
  end;

end;

procedure TfmECPMain.cxGrid1DBBandedTableView1CustomDrawColumnHeader(
  Sender: TcxGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridColumnHeaderViewInfo; var ADone: Boolean);
begin
	if AViewInfo.Column.Focused then begin
    ACanvas.Brush.Color := clNavy;
    ACanvas.Font.Color := clWhite;
  end;

end;

procedure TfmECPMain.cxGrid1DBBandedTableView1FocusedItemChanged(
  Sender: TcxCustomGridTableView; APrevFocusedItem,
  AFocusedItem: TcxCustomGridTableItem);
begin
  Sender.Painter.Invalidate;
end;

procedure TfmECPMain.cxGrid1DBBandedTableView1KeyPress(Sender: TObject; var Key: Char);
begin
  FilterColumnGridOnKeyPress(cxGrid1DBBandedTableView1, Key);
end;

procedure TfmECPMain.cxGrid1DBBandedTableView1SelectionChanged(Sender: TcxCustomGridTableView);
begin
  RefreshProcedureDetail();
end;

procedure TfmECPMain.cxGrid2DBBandedTableView1CustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
	if AViewInfo.GridRecord.Selected or AViewInfo.GridRecord.Focused then begin
		ACanvas.Brush.Color := clNavy;
		ACanvas.Font.Color := clWhite;
		if AViewInfo.Focused then ACanvas.Brush.Color := clBlue;
	end;
end;

procedure TfmECPMain.cxGrid2DBBandedTableView1CustomDrawColumnHeader(
  Sender: TcxGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridColumnHeaderViewInfo; var ADone: Boolean);
begin
	if AViewInfo.Column.Focused then begin
		ACanvas.Brush.Color := clNavy;
		ACanvas.Font.Color := clWhite;
	end;
end;

procedure TfmECPMain.cxGrid2DBBandedTableView1FilterOnChanged(Sender: TObject);
begin
	DrawcxGridColumnOnFiltered(Sender);
end;

procedure TfmECPMain.cxGrid2DBBandedTableView1FocusedItemChanged(
  Sender: TcxCustomGridTableView; APrevFocusedItem,
  AFocusedItem: TcxCustomGridTableItem);
begin
	cxGrid2DBBandedTableView1.Painter.Invalidate;
end;

procedure TfmECPMain.cxGrid2DBBandedTableView1KeyPress(Sender: TObject;
  var Key: Char);
begin
	FilterColumnGridOnKeyPress(cxGrid2DBBandedTableView1, Key);
end;

procedure TfmECPMain.cxGrid3DBBandedTableView1CustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
	if AViewInfo.GridRecord.Selected or AViewInfo.GridRecord.Focused then begin
		ACanvas.Brush.Color := clNavy;
		ACanvas.Font.Color := clWhite;
		if AViewInfo.Focused then ACanvas.Brush.Color := clBlue;
	end;
end;

procedure TfmECPMain.cxGrid3DBBandedTableView1CustomDrawColumnHeader(
  Sender: TcxGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridColumnHeaderViewInfo; var ADone: Boolean);
begin
	if AViewInfo.Column.Focused then begin
		ACanvas.Brush.Color := clNavy;
		ACanvas.Font.Color := clWhite;
	end;
end;

procedure TfmECPMain.cxGrid3DBBandedTableView1FilterOnChanged(Sender: TObject);
begin
	DrawcxGridColumnOnFiltered(Sender);
end;

procedure TfmECPMain.cxGrid3DBBandedTableView1FocusedItemChanged(
  Sender: TcxCustomGridTableView; APrevFocusedItem,
  AFocusedItem: TcxCustomGridTableItem);
begin
	cxGrid3DBBandedTableView1.Painter.Invalidate;
end;

procedure TfmECPMain.cxGrid3DBBandedTableView1KeyPress(Sender: TObject;
  var Key: Char);
begin
	FilterColumnGridOnKeyPress(cxGrid3DBBandedTableView1, Key);
end;

procedure TfmECPMain.cxGridDBBandedTableView1CustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
	if AViewInfo.GridRecord.Selected or AViewInfo.GridRecord.Focused then begin
		ACanvas.Brush.Color := clNavy;
		ACanvas.Font.Color := clWhite;
		if AViewInfo.Focused then ACanvas.Brush.Color := clBlue;
	end;
end;

procedure TfmECPMain.cxGridDBBandedTableView1CustomDrawColumnHeader(
  Sender: TcxGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridColumnHeaderViewInfo; var ADone: Boolean);
begin
	if AViewInfo.Column.Focused then begin
		ACanvas.Brush.Color := clNavy;
		ACanvas.Font.Color := clWhite;
	end;
end;

procedure TfmECPMain.cxGridDBBandedTableView1FilterOnChanged(Sender: TObject);
begin
	DrawcxGridColumnOnFiltered(Sender);
end;

procedure TfmECPMain.cxGridDBBandedTableView1FocusedItemChanged(
  Sender: TcxCustomGridTableView; APrevFocusedItem,
  AFocusedItem: TcxCustomGridTableItem);
begin
	cxGridDBBandedTableView1.Painter.Invalidate;
end;

procedure TfmECPMain.cxGridDBBandedTableView1KeyPress(Sender: TObject;
  var Key: Char);
begin
	DrawcxGridColumnOnFiltered(Sender);	FilterColumnGridOnKeyPress(cxGridDBBandedTableView1, Key);
end;

procedure TfmECPMain.cxGridDBBandedTableView5CustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
	if AViewInfo.GridRecord.Selected or AViewInfo.GridRecord.Focused then begin
		ACanvas.Brush.Color := clNavy;
		ACanvas.Font.Color := clWhite;
		if AViewInfo.Focused then ACanvas.Brush.Color := clBlue;
	end;
end;

procedure TfmECPMain.cxGridDBBandedTableView5CustomDrawColumnHeader(
  Sender: TcxGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridColumnHeaderViewInfo; var ADone: Boolean);
begin
	if AViewInfo.Column.Focused then begin
		ACanvas.Brush.Color := clNavy;
		ACanvas.Font.Color := clWhite;
	end;
end;

procedure TfmECPMain.cxGridDBBandedTableView5FocusedItemChanged(
  Sender: TcxCustomGridTableView; APrevFocusedItem,
  AFocusedItem: TcxCustomGridTableItem);
begin
	cxGridDBBandedTableView5.Painter.Invalidate;
end;

procedure TfmECPMain.cxGridDBBandedTableView5KeyPress(Sender: TObject;
  var Key: Char);
begin
	FilterColumnGridOnKeyPress(cxGridDBBandedTableView5, Key);
end;

procedure TfmECPMain.cxPageControl1Change(Sender: TObject);
begin
  Query_History.Close;
  Query_HistoryTrip.Close;

  Screen.Cursor := crHourGlass;

  if cxPageControl1.ActivePage = cxTabSheet4 then begin
    // История вагона
    Query_History.Parameters.ParamByName('etran_ecp_id'  ).Value := cxGrid1DBBandedTableView1etran_ecp_id.DataBinding.Field.AsInteger;
    Query_History.Parameters.ParamByName('users_group_id').Value := Fusr_pwd.user_group_id;
    Query_History.Parameters.ParamByName('date_begin'    ).Value := Fdate3;
    Query_History.Parameters.ParamByName('date_end'      ).Value := Fdate4;
    Query_History.Open;
  end;
  if cxPageControl1.ActivePage = cxTabSheet5 then begin
    // История рейса
    Query_HistoryTrip.Parameters.ParamByName('etran_ecp_id'  ).Value := cxGrid1DBBandedTableView1etran_ecp_id.DataBinding.Field.AsInteger;
    Query_HistoryTrip.Parameters.ParamByName('users_group_id').Value := Fusr_pwd.user_group_id;
    Query_HistoryTrip.Parameters.ParamByName('date_begin'    ).Value := Fdate5;
    Query_HistoryTrip.Parameters.ParamByName('date_end'      ).Value := Fdate6;
    Query_HistoryTrip.Open;
  end;

  Screen.Cursor := crDefault;

end;

procedure TfmECPMain.cxPageControl2Change(Sender: TObject);
begin
  RefreshProcedure(-9);
end;

procedure TfmECPMain.cxPageControl4Change(Sender: TObject);
begin
  Query_invFreight.Close;
  Query_invCar.Close;
  Query_invDistance.Close;
  Query_invSPC.Close;

  if cxPageControl4.ActivePage = cxTabSheet8 then begin
    Query_invFreight.Parameters.ParamByName('etran_ecp_id').Value := cxGrid1DBBandedTableView1etran_ecp_id.DataBinding.Field.AsInteger;
    Query_invFreight.Open;
  end;

  if cxPageControl4.ActivePage = cxTabSheet9 then begin
    Query_invCar.Parameters.ParamByName('etran_ecp_id').Value := cxGrid1DBBandedTableView1etran_ecp_id.DataBinding.Field.AsInteger;
    Query_invCar.Open;
  end;

  if cxPageControl4.ActivePage = cxTabSheet10 then begin
    Query_invDistance.Parameters.ParamByName('etran_ecp_id').Value := cxGrid1DBBandedTableView1etran_ecp_id.DataBinding.Field.AsInteger;
    Query_invDistance.Open;
  end;

  if cxPageControl4.ActivePage = cxTabSheet11 then begin
    Query_invSPC.Parameters.ParamByName('etran_ecp_id').Value := cxGrid1DBBandedTableView1etran_ecp_id.DataBinding.Field.AsInteger;
    Query_invSPC.Open;
  end;
end;

procedure TfmECPMain.dxBarButton10Click(Sender: TObject);
var            id, i : integer;
 sp_etran_ecp_modify : TADOStoredProc;
begin
  if Application.MessageBox(PChar('Скопировать выделенные накладные?'),'Внимание',MB_OKCANCEL) = ID_OK then begin
      Screen.Cursor := -11;

      sp_etran_ecp_modify := TADOStoredProc.Create(nil);
      sp_etran_ecp_modify.Connection := ADOEtran;
      sp_etran_ecp_modify.ProcedureName := 'sp_etran_ecp_modify';

      for i := 0 to cxGrid1DBBandedTableView1.Controller.SelectedRowCount - 1 do begin
        sp_etran_ecp_modify.Parameters.Refresh;
        sp_etran_ecp_modify.Parameters.ParamByName('@etran_ecp_id'    ).Value := cxGrid1DBBandedTableView1.Controller.SelectedRows[i].Values[cxGrid1DBBandedTableView1etran_ecp_id.Index];
        sp_etran_ecp_modify.Parameters.ParamByName('@type_action'     ).Value := 5;
        sp_etran_ecp_modify.Parameters.ParamByName('@FIO_users_create').Value := FIO_users;
        try
          sp_etran_ecp_modify.ExecProc;
          id := sp_etran_ecp_modify.Parameters.ParamByName('@etran_ecp_id').Value;
          ShowTextMessage('Осталось '+IntToStr(cxGrid1DBBandedTableView1.Controller.SelectedRowCount - i)+' записей...', False);
        except
        end;
      end;


      RefreshProcedure(id);
      sp_etran_ecp_modify.Free;
      ShowTextMessage;
  end;
end;

procedure TfmECPMain.dxBarButton11Click(Sender: TObject);
begin
  PrintcxGrid(cxGrid1DBBandedTableView1);
end;

procedure TfmECPMain.dxBarButton14Click(Sender: TObject);
begin
  SetdxDBGridColumns(cxGrid1DBBandedTableView1);
end;

procedure TfmECPMain.dxBarButton15Click(Sender: TObject);
begin
  cxGrid1DBBandedTableView1.OptionsView.GroupByBox := not cxGrid1DBBandedTableView1.OptionsView.GroupByBox;
end;

procedure TfmECPMain.dxBarButton16Click(Sender: TObject);
var Q: TADOQuery;
begin
  if not cxGrid1DBBandedTableView1set_error.DataBinding.Field.IsNull then begin
    if cxGrid1DBBandedTableView1set_error.DataBinding.Field.AsBoolean = True then begin
      Q := TADOQuery.Create(nil);
      Q.Connection := ADOEtran;
      Q.SQL.Add('DECLARE @xml xml');
      Q.SQL.Add('SELECT @xml = etran_ecp_reply_xml FROM etran_ecp WHERE etran_ecp_id = ' + IntToStr(cxGrid1DBBandedTableView1etran_ecp_id.DataBinding.Field.AsInteger));
      Q.SQL.Add('');
      Q.SQL.Add('SELECT	ref.value(''(errorMessage/@value)[1]'',''varchar(800)'') as error_message');
      Q.SQL.Add('FROM	  @xml.nodes(''/error'') as node(ref)');
      Q.Open;
      Application.MessageBox(PChar(Q.FieldByName('error_message').AsString), 'Ошибка', MB_ICONSTOP or MB_OK);
      Q.Free;
    end;
  end;
end;

procedure TfmECPMain.dxBarButton17Click(Sender: TObject);
var sp_etran_ecp_modify: TADOStoredProc;
    id: integer;
begin
  if Application.MessageBox(PChar('Отправить накладную автоматически?'),'Внимание',MB_OKCANCEL) = ID_OK then begin
    sp_etran_ecp_modify := TADOStoredProc.Create(nil);
    sp_etran_ecp_modify.Connection := ADOEtran;
    sp_etran_ecp_modify.ProcedureName := 'sp_etran_ecp_modify';
    sp_etran_ecp_modify.Parameters.Refresh;

    sp_etran_ecp_modify.Parameters.ParamByName('@etran_ecp_id').Value := cxGrid1DBBandedTableView1etran_ecp_id.DataBinding.Field.Value;
    sp_etran_ecp_modify.Parameters.ParamByName('@type_action' ).Value := 6;
    try
      sp_etran_ecp_modify.ExecProc;
      id := sp_etran_ecp_modify.Parameters.ParamByName('@etran_ecp_id').Value;
    except
    end;
    RefreshProcedure(id);

    sp_etran_ecp_modify.Free;
  end;
end;

procedure TfmECPMain.dxBarButton18Click(Sender: TObject);
var sp_etran_ecp_modify : TADOStoredProc;
    i : integer;
begin
  if Application.MessageBox(PChar('Снять выделенные накладные с мониторинга?'),'Внимание',MB_OKCANCEL) = ID_OK then begin

    Screen.Cursor := crHourGlass;
    sp_etran_ecp_modify := TADOStoredProc.Create(nil);
    sp_etran_ecp_modify.Connection := fmECPMain.ADOEtran;
    sp_etran_ecp_modify.ProcedureName := 'sp_etran_ecp_modify';

    for i:=0 to cxGrid1DBBandedTableView1.Controller.SelectedRecordCount - 1 do begin
      sp_etran_ecp_modify.Parameters.Refresh;
      sp_etran_ecp_modify.Parameters.ParamByName('@etran_ecp_id').Value := cxGrid1DBBandedTableView1.Controller.SelectedRows[i].Values[cxGrid1DBBandedTableView1etran_ecp_id.Index];
      sp_etran_ecp_modify.Parameters.ParamByName('@type_action' ).Value := 8;
      sp_etran_ecp_modify.Parameters.ParamByName('@FIO_users_send').Value := FIO_users;
      sp_etran_ecp_modify.ExecProc;
      ShowTextMessage('Осталось '+ IntToStr(cxGrid1DBBandedTableView1.Controller.SelectedRowCount - i) + ' записей...', False);
    end;

    ShowTextMessage;
    sp_etran_ecp_modify.Free;

    Screen.Cursor := crDefault;

    RefreshProcedure(-9);
  end;
end;

procedure TfmECPMain.dxBarButton19Click(Sender: TObject);
var OpenDialog: TOpenDialog;
begin
  OpenDialog := TOpenDialog.Create(nil);
  OpenDialog.Filter := 'Excel файлы|*.xls';
  OpenDialog.DefaultExt := 'xls';
  if OpenDialog.Execute then begin
    fmECPInvoiceLoad := TfmECPInvoiceLoad.Create(nil);
    fmECPInvoiceLoad._SetFileName := OpenDialog.FileName;
    fmECPInvoiceLoad._SetFIOusers := FIO_users;
    if fmECPInvoiceLoad.ShowModal = mrOk then begin
      RefreshProcedure(-9);
    end;
  end;
  OpenDialog.Free;
end;

procedure TfmECPMain.dxBarButton1Click(Sender: TObject);
var                    Q : TADOQuery;
    sp_etran_ecp_ungroup : TADOStoredProc;
begin

  Q := TADOQuery.Create(nil);
  Q.Connection := ADOEtran;
  Q.SQL.Add('SELECT	cast(cast(etran_ecp_xml.query(''count(/invoiceDirectLoad/invCar)'') as varchar) as int) cnt_vagon ');
  Q.SQL.Add('FROM	ETRAN_ECP WHERE ETRAN_ECP_id = ' + IntToStr(cxGrid1DBBandedTableView1etran_ecp_id.DataBinding.Field.AsInteger));
  Q.Open;

  if Application.MessageBox(PChar('Внимание!'+#13+#10+
                                  'Данная накладная будет удалена, вместо удаленной накладной будет создано ' + IntToStr(Q.FieldByName('cnt_vagon').AsInteger) + ' накладных.'+#13+#10+
                                  'Продолжить?'), 'Внимание', MB_ICONQUESTION or MB_YESNO) = ID_YES then begin
    sp_etran_ecp_ungroup := TADOStoredProc.Create(nil);
    sp_etran_ecp_ungroup.Connection := ADOEtran;
    sp_etran_ecp_ungroup.ProcedureName := 'sp_etran_ecp_ungroup';
    sp_etran_ecp_ungroup.Parameters.Refresh;
    sp_etran_ecp_ungroup.Parameters.ParamByName('@etran_ecp_id'    ).Value := cxGrid1DBBandedTableView1etran_ecp_id.DataBinding.Field.AsInteger;
    sp_etran_ecp_ungroup.Parameters.ParamByName('@FIO_users_create').Value := FIO_users;
    sp_etran_ecp_ungroup.ExecProc;

    RefreshProcedure(sp_etran_ecp_ungroup.Parameters.ParamByName('@etran_ecp_id').Value);
  end;

  Q.Free;
end;

procedure TfmECPMain.dxBarButton20Click(Sender: TObject);
begin
	PrintcxGrid(cxGridDBBandedTableView1);
end;

procedure TfmECPMain.dxBarButton21Click(Sender: TObject);
begin
	SetdxDBGridColumns(cxGridDBBandedTableView1);
end;

procedure TfmECPMain.dxBarButton22Click(Sender: TObject);
begin
	cxGridDBBandedTableView1.OptionsView.GroupByBox := not cxGridDBBandedTableView1.OptionsView.GroupByBox;
end;

procedure TfmECPMain.dxBarButton23Click(Sender: TObject);
var
  invLoadClaim_Number : string;
  i : integer;
  sp_etran_ecp_group_modify : TADOStoredProc;
  etran_ecp_id_index   : integer;
  cxGridDBBanded       : TcxGridDBBandedTableView;
begin
  if TdxBarButton(Sender).ClickItemLink.Owner.Owner.Tag = 0 then begin
    cxGridDBBanded     := cxGrid1DBBandedTableView1;
    etran_ecp_id_index := cxGrid1DBBandedTableView1etran_ecp_id.Index;
  end else begin
    cxGridDBBanded     := cxGridDBBandedTableView1;
    etran_ecp_id_index := cxGridDBBandedTableView1etran_ecp_id.Index;
  end;

  if not InputQuery('Номер заявки', 'Номер заявки', invLoadClaim_Number) then
    Exit;

  Screen.Cursor := crHourGlass;

  sp_etran_ecp_group_modify := TADOStoredProc.Create(nil);
  sp_etran_ecp_group_modify.Connection := ADOEtran;
  sp_etran_ecp_group_modify.ProcedureName := 'sp_etran_ecp_group_modify';

  for i:=0 to cxGridDBBanded.Controller.SelectedRecordCount - 1 do begin
    sp_etran_ecp_group_modify.Parameters.Refresh;
    sp_etran_ecp_group_modify.Parameters.ParamByName('@etran_ecp_id'        ).Value := cxGridDBBanded.Controller.SelectedRows[i].Values[etran_ecp_id_index];
    sp_etran_ecp_group_modify.Parameters.ParamByName('@type_action'         ).Value := 10;
    sp_etran_ecp_group_modify.Parameters.ParamByName('@invLoadClaim_Number' ).Value := invLoadClaim_Number;
    sp_etran_ecp_group_modify.ExecProc;
    ShowTextMessage('Изменено ' + IntToStr(i) + ' накладных из ' + IntToStr(cxGridDBBanded.Controller.SelectedRecordCount) + '...', False);
  end;
  sp_etran_ecp_group_modify.Free;

  if TdxBarButton(Sender).ClickItemLink.Owner.Owner.Tag = 0 then
    RefreshProcedure(-9)
  else
    RefreshECP();

  ShowTextMessage();
  Screen.Cursor := crDefault;
end;

procedure TfmECPMain.dxBarButton24Click(Sender: TObject);
begin
  Screen.Cursor := crHourglass;

  if TControl(Sender).Tag = 1 then begin
    Fdate5 := IncMonth(Fdate5, 1);
  end;

  if TControl(Sender).Tag = 2 then begin
    Fdate6 := IncMonth(Fdate6, -1);
  end;

  Fdate6 := IncMonth(Fdate5, 1) - 1;
  dxBarSubItem6.Caption := FormatDateTime('mmmm yyyy', Fdate5);
  dxBarManager1Bar1.Reset;

  dxBarButton24.Caption := FormatDateTime('mmmm yyyy', IncMonth(Fdate5,-1));
  dxBarButton25.Caption := FormatDateTime('mmmm yyyy', IncMonth(Fdate5,1));

  Query_HistoryTrip.Close;
  Query_HistoryTrip.Parameters.ParamByName('date_begin'    ).Value := Fdate5;
  Query_HistoryTrip.Parameters.ParamByName('date_end'      ).Value := Fdate6;
  Query_HistoryTrip.Open;

  Screen.Cursor := crDefault;
end;

procedure TfmECPMain.dxBarButton26Click(Sender: TObject);
begin
  Screen.Cursor := crHourglass;

  if TControl(Sender).Tag = 1 then begin
    Fdate3 := IncMonth(Fdate3, 1);
  end;

  if TControl(Sender).Tag = 2 then begin
    Fdate3 := IncMonth(Fdate3, -1);
  end;

  Fdate4 := IncMonth(Fdate3, 1) - 1;
  dxBarSubItem7.Caption := FormatDateTime('mmmm yyyy', Fdate3);
  dxBarManager1Bar1.Reset;

  dxBarButton26.Caption := FormatDateTime('mmmm yyyy', IncMonth(Fdate3,-1));
  dxBarButton27.Caption := FormatDateTime('mmmm yyyy', IncMonth(Fdate3,1));

  Query_History.Close;
  Query_History.Parameters.ParamByName('date_begin' ).Value := Fdate3;
  Query_History.Parameters.ParamByName('date_end'   ).Value := Fdate4;
  Query_History.Open;

  Screen.Cursor := crDefault;
end;

procedure TfmECPMain.dxBarButton28Click(Sender: TObject);
begin
  Screen.Cursor := crHourglass;

  if TControl(Sender).Tag = 1 then begin
    Fdate1 := IncMonth(Fdate1, 1);
  end;

  if TControl(Sender).Tag = 2 then begin
    Fdate1 := IncMonth(Fdate1, -1);
  end;

  Fdate2 := IncMonth(Fdate1, 1) - 1;
  dxBarSubItem2.Caption := FormatDateTime('mmmm yyyy', Fdate1);
  dxBarManager1Bar1.Reset;

  dxBarButton28.Caption := FormatDateTime('mmmm yyyy', IncMonth(Fdate1,-1));
  dxBarButton29.Caption := FormatDateTime('mmmm yyyy', IncMonth(Fdate1,1));

//  Query_ECP.Close;
//  Query_ECP.Parameters.ParamByName('date1').Value := Fdate1;
//  Query_ECP.Parameters.ParamByName('date2').Value := Fdate2;
//  Query_ECP.Open;

  sp_etran_ecp_get.Close;
  sp_etran_ecp_get.Parameters.Refresh;
  sp_etran_ecp_get.Parameters.ParamByName('@date1').Value := Fdate1;
  sp_etran_ecp_get.Parameters.ParamByName('@date2').Value := Fdate2;
  sp_etran_ecp_get.Parameters.ParamByName('@set_order').Value := False;
  sp_etran_ecp_get.Open;

  sp_etran_ecp_orders_get.Close;
  sp_etran_ecp_orders_get.Parameters.Refresh;
  sp_etran_ecp_orders_get.Parameters.ParamByName('@date1').Value := Fdate1;
  sp_etran_ecp_orders_get.Parameters.ParamByName('@date2').Value := Fdate2;
  sp_etran_ecp_orders_get.Parameters.ParamByName('@set_order').Value := True;
  sp_etran_ecp_orders_get.Open;

  Query_ECP_Archive.Close;
  Query_ECP_Archive.Parameters.ParamByName('date1').Value := Fdate1;
  Query_ECP_Archive.Parameters.ParamByName('date2').Value := Fdate2+1;
  Query_ECP_Archive.Open;
  
  Screen.Cursor := crDefault;
end;

procedure TfmECPMain.dxBarButton2Click(Sender: TObject);
var sp_etran_ecp_lock	: TADOStoredProc;
begin

  if cxPageControl2.ActivePage = cxTabSheet3 then begin
    sp_etran_ecp_lock	:= TADOStoredProc.Create(nil);
    sp_etran_ecp_lock.Connection := ADOEtran;
    sp_etran_ecp_lock.ProcedureName := 'sp_etran_ecp_lock';
    sp_etran_ecp_lock.Parameters.Refresh;
    sp_etran_ecp_lock.Parameters.ParamByName('@etran_ecp_id').Value := cxGridDBBandedTableView1etran_ecp_id.DataBinding.Field.AsInteger;
    sp_etran_ecp_lock.Parameters.ParamByName('@type_action' ).Value := 0;
    try
      sp_etran_ecp_lock.ExecProc;

      fmECPInvoiceToViza := TfmECPInvoiceToViza.Create(Application, ADOEtran, Fusers_group_cod, Fusr_pwd);
      fmECPInvoiceToViza._SetFIOusers := FIO_users;
      fmECPInvoiceToViza._SetEtranIP  := Fetran_ip;
      fmECPInvoiceToViza._SetEtranPort:= Fetran_port;
      fmECPInvoiceToViza._SetUpdate   := cxGridDBBandedTableView1etran_ecp_id.DataBinding.Field.AsInteger;
      fmECPInvoiceToViza._SetSetOrders := True;

      if Fusr_pwd.user_func.Locate('func_name', 'set_etran_orders', [loCaseInsensitive]) then begin
        fmECPInvoiceToViza._SetOrdersAccept := True;
      end;

      if fmECPInvoiceToViza.ShowModal = mrOk then begin
        RefreshProcedure(fmECPInvoiceToViza._GetECPId);
      end;

      sp_etran_ecp_lock.Parameters.Refresh;
      sp_etran_ecp_lock.Parameters.ParamByName('@etran_ecp_id').Value := cxGridDBBandedTableView1etran_ecp_id.DataBinding.Field.AsInteger;
      sp_etran_ecp_lock.Parameters.ParamByName('@type_action' ).Value := 1;
      try
        sp_etran_ecp_lock.ExecProc;
      except
      end;

    except
    end;
    sp_etran_ecp_lock.Free;

  end else begin
    sp_etran_ecp_lock	:= TADOStoredProc.Create(nil);
    sp_etran_ecp_lock.Connection := ADOEtran;
    sp_etran_ecp_lock.ProcedureName := 'sp_etran_ecp_lock';
    sp_etran_ecp_lock.Parameters.Refresh;
    sp_etran_ecp_lock.Parameters.ParamByName('@etran_ecp_id').Value := cxGrid1DBBandedTableView1etran_ecp_id.DataBinding.Field.AsInteger;
    sp_etran_ecp_lock.Parameters.ParamByName('@type_action' ).Value := 0;
    try
      sp_etran_ecp_lock.ExecProc;

      fmECPInvoiceToViza := TfmECPInvoiceToViza.Create(Application, ADOEtran, Fusers_group_cod, Fusr_pwd);
      fmECPInvoiceToViza._SetFIOusers := FIO_users;
      fmECPInvoiceToViza._SetEtranIP  := Fetran_ip;
      fmECPInvoiceToViza._SetEtranPort:= Fetran_port;
      fmECPInvoiceToViza._SetUpdate   := cxGrid1DBBandedTableView1etran_ecp_id.DataBinding.Field.AsInteger;
      fmECPInvoiceToViza._SetSetOrders := False;

      if fmECPInvoiceToViza.ShowModal = mrOk then begin
        RefreshProcedure(fmECPInvoiceToViza._GetECPId);
      end;

      sp_etran_ecp_lock.Parameters.Refresh;
      sp_etran_ecp_lock.Parameters.ParamByName('@etran_ecp_id').Value := cxGrid1DBBandedTableView1etran_ecp_id.DataBinding.Field.AsInteger;
      sp_etran_ecp_lock.Parameters.ParamByName('@type_action' ).Value := 1;
      try
        sp_etran_ecp_lock.ExecProc;
      except
      end;

    except
    end;
    sp_etran_ecp_lock.Free;
  end;
end;

procedure TfmECPMain.dxBarButton30Click(Sender: TObject);
begin
  fmPeriod := TfmPeriod.Create(Application, Fdate5, Fdate6, 3);
  if fmPeriod.ShowModal=mrOK then begin
    Fdate5 := fmPeriod._GetMonth;
    Fdate6 := IncMonth(Fdate5, 1);
    dxBarSubItem6.Caption := FormatDateTime('mmmm yyyy', Fdate5);

    Screen.Cursor := crHourGlass;
    Query_HistoryTrip.Close;
    Query_HistoryTrip.Parameters.ParamByName('date_begin'    ).Value := Fdate5;
    Query_HistoryTrip.Parameters.ParamByName('date_end'      ).Value := Fdate6;
    Query_HistoryTrip.Open;
    Screen.Cursor := crDefault;
  end;
end;

procedure TfmECPMain.dxBarButton31Click(Sender: TObject);
begin
  fmPeriod := TfmPeriod.Create(Application, Fdate5, Fdate6, 2);
  if fmPeriod.ShowModal=mrOK then begin
    Fdate5 := fmPeriod._GetMonthBegin;
    Fdate6 := fmPeriod._GetMonthEnd;
    dxBarSubItem6.Caption := FormatDateTime('mmm yy', Fdate5) + ' - ' + FormatDateTime('mmm yy', Fdate6);

    Screen.Cursor := crHourGlass;
    Query_HistoryTrip.Close;
    Query_HistoryTrip.Parameters.ParamByName('date_begin'    ).Value := Fdate5;
    Query_HistoryTrip.Parameters.ParamByName('date_end'      ).Value := Fdate6;
    Query_HistoryTrip.Open;
    Screen.Cursor := crDefault;
  end;
end;

procedure TfmECPMain.dxBarButton32Click(Sender: TObject);
begin
  fmPeriod := TfmPeriod.Create(Application, Fdate3, Fdate4, 3);
  if fmPeriod.ShowModal=mrOK then begin
    Fdate3 := fmPeriod._GetMonth;
    Fdate4 := IncMonth(Fdate3, 1);
    dxBarSubItem7.Caption := FormatDateTime('mmmm yyyy', Fdate3);
    Screen.Cursor := crHourGlass;

    Query_History.Close;
    Query_History.Parameters.ParamByName('date_begin' ).Value := Fdate3;
    Query_History.Parameters.ParamByName('date_end'   ).Value := Fdate4;
    Query_History.Open;

    Screen.Cursor := crDefault;
  end;
end;

procedure TfmECPMain.dxBarButton33Click(Sender: TObject);
begin
  fmPeriod := TfmPeriod.Create(Application, Fdate3, Fdate4, 2);
  if fmPeriod.ShowModal=mrOK then begin
    Fdate3 := fmPeriod._GetMonthBegin;
    Fdate4 := fmPeriod._GetMonthEnd;
    dxBarSubItem7.Caption := FormatDateTime('mmm yy', Fdate3) + ' - ' + FormatDateTime('mmm yy', Fdate4);
    Screen.Cursor := crHourGlass;

    Query_History.Close;
    Query_History.Parameters.ParamByName('date_begin' ).Value := Fdate3;
    Query_History.Parameters.ParamByName('date_end'   ).Value := Fdate4;
    Query_History.Open;

    Screen.Cursor := crDefault;
  end;
end;

procedure TfmECPMain.dxBarButton34Click(Sender: TObject);
begin
	PrintcxGrid(cxGrid2DBBandedTableView1);
end;

procedure TfmECPMain.dxBarButton35Click(Sender: TObject);
begin
	SetdxDBGridColumns(cxGrid2DBBandedTableView1);
end;

procedure TfmECPMain.dxBarButton36Click(Sender: TObject);
begin
	DrawcxGridColumnOnFiltered(Sender);	cxGrid2DBBandedTableView1.OptionsView.GroupByBox := not cxGrid2DBBandedTableView1.OptionsView.GroupByBox;
end;

procedure TfmECPMain.dxBarButton37Click(Sender: TObject);
begin
	PrintcxGrid(cxGrid3DBBandedTableView1);
end;

procedure TfmECPMain.dxBarButton38Click(Sender: TObject);
begin
	SetdxDBGridColumns(cxGrid3DBBandedTableView1);
end;

procedure TfmECPMain.dxBarButton39Click(Sender: TObject);
begin
	cxGrid3DBBandedTableView1.OptionsView.GroupByBox := not cxGrid3DBBandedTableView1.OptionsView.GroupByBox;
end;

procedure TfmECPMain.dxBarButton3Click(Sender: TObject);
var                i : integer;
 sp_etran_ecp_modify : TADOStoredProc;
             comment : string;
begin
  if Application.MessageBox(PChar('Вы точно уверены, что хотите удалить выделенные накладные в архив?'),'Внимание',MB_OKCANCEL) = ID_OK then begin
      Screen.Cursor := -11;

      InputQuery('Удалить документ в архив', 'Основание:', comment);
      if comment = '' then begin
        Application.MessageBox('Введите основание.', 'Ошибка', MB_ICONSTOP or MB_OK);
        Exit;
      end;

      sp_etran_ecp_modify := TADOStoredProc.Create(nil);
      sp_etran_ecp_modify.Connection := ADOEtran;
      sp_etran_ecp_modify.ProcedureName := 'sp_etran_ecp_modify';

      if cxPageControl2.ActivePage = cxTabSheet3 then begin
        for i := 0 to cxGridDBBandedTableView1.Controller.SelectedRowCount - 1 do begin
          sp_etran_ecp_modify.Close;
          sp_etran_ecp_modify.Parameters.Refresh;
          sp_etran_ecp_modify.Parameters.ParamByName('@etran_ecp_id').Value := cxGridDBBandedTableView1.Controller.SelectedRows[i].Values[cxGridDBBandedTableView1etran_ecp_id.Index];
          sp_etran_ecp_modify.Parameters.ParamByName('@type_action' ).Value := 20;
          sp_etran_ecp_modify.Parameters.ParamByName('@set_archive' ).Value := 1;
          sp_etran_ecp_modify.Parameters.ParamByName('@comment'     ).Value := comment;

          try
            sp_etran_ecp_modify.ExecProc;
            ShowTextMessage('Осталось '+IntToStr(cxGridDBBandedTableView1.Controller.SelectedRowCount - i)+' записей...', False);
          except
          end;
        end;
        RefreshProcedure(-9);
      end else begin
        for i := 0 to cxGrid1DBBandedTableView1.Controller.SelectedRowCount - 1 do begin
          sp_etran_ecp_modify.Close;
          sp_etran_ecp_modify.Parameters.Refresh;
          sp_etran_ecp_modify.Parameters.ParamByName('@etran_ecp_id').Value := cxGrid1DBBandedTableView1.Controller.SelectedRows[i].Values[cxGrid1DBBandedTableView1etran_ecp_id.Index];
          sp_etran_ecp_modify.Parameters.ParamByName('@type_action' ).Value := 20;
          sp_etran_ecp_modify.Parameters.ParamByName('@set_archive' ).Value := 1;
          sp_etran_ecp_modify.Parameters.ParamByName('@comment'     ).Value := comment;

          try
            sp_etran_ecp_modify.ExecProc;
            ShowTextMessage('Осталось '+IntToStr(cxGrid1DBBandedTableView1.Controller.SelectedRowCount - i)+' записей...', False);
          except
          end;
        end;
        RefreshProcedure(-9);
      end;
      sp_etran_ecp_modify.Free;
      ShowTextMessage;
  end;
end;

procedure TfmECPMain.dxBarButton40Click(Sender: TObject);
var
  invLoadClaim_Number : string;
  i : integer;
  sp_etran_ecp_group_modify : TADOStoredProc;
  ClientDS : TClientDataSet;
  etran_ecp_id_index   : integer;
  cxGridDBBanded       : TcxGridDBBandedTableView;
begin
  if TdxBarButton(Sender).ClickItemLink.Owner.Owner.Tag = 0 then begin
    cxGridDBBanded     := cxGrid1DBBandedTableView1;
    etran_ecp_id_index := cxGrid1DBBandedTableView1etran_ecp_id.Index;
  end else begin
    cxGridDBBanded     := cxGridDBBandedTableView1;
    etran_ecp_id_index := cxGridDBBandedTableView1etran_ecp_id.Index;
  end;

  ClientDS := TClientDataSet.Create(nil);
  ClientDS.FieldDefs.Add('id', ftAutoInc);
  ClientDS.FieldDefs.Add('spcTranspClauseID', ftInteger);
  ClientDS.FieldDefs.Add('spcCustomText', ftString, 500);
  ClientDS.FieldDefs.Add('spcTranspClauseName', ftString, 500);
  ClientDS.FieldDefs.Add('spcNumber', ftString, 500);
  ClientDS.FieldDefs.Add('spcDate', ftDateTime);
  ClientDS.FieldDefs.Add('spcClaimNumber', ftString, 500);
  ClientDS.FieldDefs.Add('spcNumOtp', ftString, 500);
  ClientDS.CreateDataSet;
  ClientDS.LogChanges := False;


  fmECPInvAdd := TfmECPInvAdd.Create(nil, Fusr_pwd);
  fmECPInvAdd._SetInvSPC := True;
  fmECPInvAdd._SetClientDS := ClientDS;
  if fmECPInvAdd.ShowModal = mrOk then begin
    Screen.Cursor := crHourGlass;

    sp_etran_ecp_group_modify := TADOStoredProc.Create(nil);
    sp_etran_ecp_group_modify.Connection := ADOEtran;
    sp_etran_ecp_group_modify.ProcedureName := 'sp_etran_ecp_group_modify';

    for i:=0 to cxGridDBBanded.Controller.SelectedRecordCount - 1 do begin
      sp_etran_ecp_group_modify.Parameters.Refresh;
      sp_etran_ecp_group_modify.Parameters.ParamByName('@etran_ecp_id'        ).Value := cxGridDBBanded.Controller.SelectedRows[i].Values[etran_ecp_id_index];
      sp_etran_ecp_group_modify.Parameters.ParamByName('@type_action'         ).Value := 11;
      sp_etran_ecp_group_modify.Parameters.ParamByName('@spcTranspClauseID'   ).Value := ClientDS.FieldByName('spcTranspClauseID').Value;
      sp_etran_ecp_group_modify.Parameters.ParamByName('@spcCustomText'       ).Value := ClientDS.FieldByName('spcCustomText').Value;
      sp_etran_ecp_group_modify.Parameters.ParamByName('@spcTranspClauseName' ).Value := ClientDS.FieldByName('spcTranspClauseName').Value;
      sp_etran_ecp_group_modify.Parameters.ParamByName('@spcNumber'           ).Value := ClientDS.FieldByName('spcNumber').Value;
      sp_etran_ecp_group_modify.Parameters.ParamByName('@spcDate'             ).Value := FormatDateTime('dd.mm.yyyy', ClientDS.FieldByName('spcDate').AsDateTime);
      sp_etran_ecp_group_modify.ExecProc;
      ShowTextMessage('Изменено ' + IntToStr(i) + ' накладных из ' + IntToStr(cxGridDBBanded.Controller.SelectedRecordCount) + '...', False);
    end;
    sp_etran_ecp_group_modify.Free;


    if TdxBarButton(Sender).ClickItemLink.Owner.Owner.Tag = 0 then
      RefreshProcedure(-9)
    else
      RefreshECP();
    ShowTextMessage();
    Screen.Cursor := crDefault;
  end;

  ClientDS.Free;
end;

procedure TfmECPMain.dxBarButton41Click(Sender: TObject);
begin
  fmECPVagonHistory := TfmECPVagonHistory.Create(nil);
  fmECPVagonHistory._SetConnect(ADOEtran);
  fmECPVagonHistory.ShowModal;
end;

procedure TfmECPMain.dxBarButton42Click(Sender: TObject);
begin
  fmECPVagonMonitor := TfmECPVagonMonitor.Create(Application, ADOEtran);
  fmECPVagonMonitor.ShowModal;
end;

procedure TfmECPMain.dxBarButton43Click(Sender: TObject);
var values: int64;
begin
  Screen.Cursor := crHourglass;

  if dxBarButton43.Down then begin
    cxTabSheet2.Caption := 'Отклоненные заготовки';
  end else begin
    cxTabSheet2.Caption := 'Накладные';
  end;

  if cxGrid1DBBandedTableView1.GetColumnByFieldName('etran_ecp_id').DataBinding.Field.IsNull then values := 0
  else  values := StrToInt64(cxGrid1DBBandedTableView1.GetColumnByFieldName('etran_ecp_id').DataBinding.Field.AsString);

  sp_etran_ecp_get.Close;
  sp_etran_ecp_get.Parameters.Refresh;
  sp_etran_ecp_get.Parameters.ParamByName('@date1').Value := Fdate1;
  sp_etran_ecp_get.Parameters.ParamByName('@date2').Value := Fdate2;
  sp_etran_ecp_get.Parameters.ParamByName('@set_order' ).Value := False;
  sp_etran_ecp_get.Parameters.ParamByName('@set_cancel').Value := dxBarButton43.Down;
  sp_etran_ecp_get.Open;

  cxGrid1DBBandedTableView1.Controller.ClearSelection;
  if cxGrid1DBBandedTableView1.DataController.LocateByKey(values) = False then cxGrid1DBBandedTableView1.Controller.GoToFirst;
  if cxGrid1DBBandedTableView1.Controller.FocusedRecord <> nil then  cxGrid1DBBandedTableView1.Controller.FocusedRecord.Selected := True;

  Screen.Cursor := crDefault;
end;

procedure TfmECPMain.dxBarButton44Click(Sender: TObject);
var sp_etran_ecp_modify : TADOStoredProc;
    i : integer;
begin
  if Application.MessageBox(PChar('Установить дату проверки отклоненной заготовки?'),'Внимание',MB_OKCANCEL) = ID_OK then begin

    Screen.Cursor := crHourGlass;
    sp_etran_ecp_modify := TADOStoredProc.Create(nil);
    sp_etran_ecp_modify.Connection := fmECPMain.ADOEtran;
    sp_etran_ecp_modify.ProcedureName := 'sp_etran_ecp_modify';

    for i:=0 to cxGrid1DBBandedTableView1.Controller.SelectedRecordCount - 1 do begin
      sp_etran_ecp_modify.Parameters.Refresh;
      sp_etran_ecp_modify.Parameters.ParamByName('@etran_ecp_id').Value := cxGrid1DBBandedTableView1.Controller.SelectedRows[i].Values[cxGrid1DBBandedTableView1etran_ecp_id.Index];
      sp_etran_ecp_modify.Parameters.ParamByName('@type_action' ).Value := 9;
      sp_etran_ecp_modify.ExecProc;
      ShowTextMessage('Осталось '+ IntToStr(cxGrid1DBBandedTableView1.Controller.SelectedRowCount - i) + ' записей...', False);
    end;

    ShowTextMessage;
    sp_etran_ecp_modify.Free;

    Screen.Cursor := crDefault;

    RefreshProcedure(-9);
  end;
end;


procedure TfmECPMain.dxBarButton45Click(Sender: TObject);
var
  i : integer;
  sp_etran_ecp_modify : TADOStoredProc;
begin
  Screen.Cursor := crHourGlass;

  sp_etran_ecp_modify := TADOStoredProc.Create(nil);
  sp_etran_ecp_modify.Connection := ADOEtran;
  sp_etran_ecp_modify.ProcedureName := 'sp_etran_ecp_modify';

  for i:=0 to cxGridDBBandedTableView1.Controller.SelectedRecordCount - 1 do begin
    sp_etran_ecp_modify.Parameters.Refresh;
    sp_etran_ecp_modify.Parameters.ParamByName('@etran_ecp_id'        ).Value := cxGridDBBandedTableView1.Controller.SelectedRows[i].Values[cxGridDBBandedTableView1etran_ecp_id.Index];
    sp_etran_ecp_modify.Parameters.ParamByName('@type_action'         ).Value := 11;
    sp_etran_ecp_modify.ExecProc;
    ShowTextMessage('Согласовано ' + IntToStr(i) + ' накладных из ' + IntToStr(cxGridDBBandedTableView1.Controller.SelectedRecordCount) + '...', False);
  end;
  sp_etran_ecp_modify.Free;


  RefreshProcedure(-9);
  ShowTextMessage();
  Screen.Cursor := crDefault;
end;


procedure TfmECPMain.dxBarButton46Click(Sender: TObject);
var
  invLoadClaim_Number : string;
  i : integer;
  sp_etran_ecp_group_modify : TADOStoredProc;
  ClientDS : TClientDataSet;
  etran_ecp_id_index   : integer;
  cxGridDBBanded       : TcxGridDBBandedTableView;
begin
  if TdxBarButton(Sender).ClickItemLink.Owner.Owner.Tag = 0 then begin
    cxGridDBBanded     := cxGrid1DBBandedTableView1;
    etran_ecp_id_index := cxGrid1DBBandedTableView1etran_ecp_id.Index;
  end else begin
    cxGridDBBanded     := cxGridDBBandedTableView1;
    etran_ecp_id_index := cxGridDBBandedTableView1etran_ecp_id.Index;
  end;

  ClientDS := TClientDataSet.Create(nil);
  ClientDS.FieldDefs.Add('id', ftAutoInc);
  ClientDS.FieldDefs.Add('docTypeID', ftInteger);
  ClientDS.FieldDefs.Add('docTypeName', ftString, 500);
  ClientDS.FieldDefs.Add('docNumber', ftString, 500);
  ClientDS.FieldDefs.Add('docDate', ftDateTime);
  ClientDS.FieldDefs.Add('dayCount', ftInteger);
  ClientDS.CreateDataSet;
  ClientDS.LogChanges := False;


  fmECPInvAdd := TfmECPInvAdd.Create(nil, Fusr_pwd);
  fmECPInvAdd._SetInvDOC := True;
  fmECPInvAdd._SetClientDS := ClientDS;

  if fmECPInvAdd.ShowModal = mrOk then begin
    Screen.Cursor := crHourGlass;

    sp_etran_ecp_group_modify := TADOStoredProc.Create(nil);
    sp_etran_ecp_group_modify.Connection := ADOEtran;
    sp_etran_ecp_group_modify.ProcedureName := 'sp_etran_ecp_group_modify';

    for i:=0 to cxGridDBBanded.Controller.SelectedRecordCount - 1 do begin
      sp_etran_ecp_group_modify.Parameters.Refresh;
      sp_etran_ecp_group_modify.Parameters.ParamByName('@etran_ecp_id' ).Value := cxGridDBBanded.Controller.SelectedRows[i].Values[etran_ecp_id_index];
      sp_etran_ecp_group_modify.Parameters.ParamByName('@type_action'  ).Value := 12;
      sp_etran_ecp_group_modify.Parameters.ParamByName('@docTypeID'    ).Value := ClientDS.FieldByName('docTypeID').Value;
      sp_etran_ecp_group_modify.Parameters.ParamByName('@docTypeName'  ).Value := ClientDS.FieldByName('docTypeName').Value;
      sp_etran_ecp_group_modify.Parameters.ParamByName('@docNumber'    ).Value := ClientDS.FieldByName('docNumber').Value;
      sp_etran_ecp_group_modify.Parameters.ParamByName('@dayCount'     ).Value := ClientDS.FieldByName('dayCount').Value;
      sp_etran_ecp_group_modify.Parameters.ParamByName('@docDate'      ).Value := FormatDateTime('dd.mm.yyyy', ClientDS.FieldByName('docDate').AsDateTime);
      sp_etran_ecp_group_modify.ExecProc;
      ShowTextMessage('Изменено ' + IntToStr(i) + ' накладных из ' + IntToStr(cxGridDBBanded.Controller.SelectedRecordCount) + '...', False);
    end;
    sp_etran_ecp_group_modify.Free;


    if TdxBarButton(Sender).ClickItemLink.Owner.Owner.Tag = 0 then
      RefreshProcedure(-9)
    else
      RefreshECP();
    ShowTextMessage();
    Screen.Cursor := crDefault;
  end;

  ClientDS.Free;
end;

procedure TfmECPMain.dxBarButton47Click(Sender: TObject);
var str_query : string;
        Q, Q2 : TADOQuery;
  m : TStringList;
  v : Variant;
  i, doc_id : integer;
  sp_etran_ecp_modify : TADOStoredProc;

  etran_ecp_id_index   : integer;
  cxGridDBBanded       : TcxGridDBBandedTableView;

  str_error : string;
  set_error : boolean;
begin
  str_error := '';
  set_error := False;

  if TdxBarButton(Sender).ClickItemLink.Owner.Owner.Tag = 0 then begin
    cxGridDBBanded     := cxGrid1DBBandedTableView1;
    etran_ecp_id_index := cxGrid1DBBandedTableView1etran_ecp_id.Index;
  end else begin
    cxGridDBBanded     := cxGridDBBandedTableView1;
    etran_ecp_id_index := cxGridDBBandedTableView1etran_ecp_id.Index;
  end;


  if Fusers_group_cod = '12' then begin
    if Application.MessageBox(PChar('Вы точно уверены, что хотите ОТПРАВИТЬ и ПОДПИСАТЬ выделенные накладные?'),'Внимание',MB_OKCANCEL) = ID_OK then begin
      for i := 0 to cxGridDBBanded.Controller.SelectedRowCount - 1 do begin

        Q := TADOQuery.Create(nil);
        Q.Connection := ADOEtran;
        Q.SQL.Add('SELECT etran_ecp_xml, users_owner_id, invPayerCode, invSenderOKPO FROM etran_ecp inner join etran_global_id on etran_ecp.etran_ecp_id = etran_global_id.global_id WHERE etran_ecp_id = ' + IntToStr(cxGridDBBanded.Controller.SelectedRows[i].Values[etran_ecp_id_index]));
        Q.Open;

        sp_etran_ecp_modify := TADOStoredProc.Create(nil);
        sp_etran_ecp_modify.Connection := ADOEtran;
        sp_etran_ecp_modify.ProcedureName := 'sp_etran_ecp_modify';
        sp_etran_ecp_modify.Parameters.Refresh;
        sp_etran_ecp_modify.Parameters.ParamByName('@etran_ecp_id').Value := cxGridDBBanded.Controller.SelectedRows[i].Values[etran_ecp_id_index];
        sp_etran_ecp_modify.Parameters.ParamByName('@type_action' ).Value := 34;
        sp_etran_ecp_modify.Parameters.ParamByName('@date_send'   ).Value := Now;
        sp_etran_ecp_modify.Parameters.ParamByName('@etran_ecp_reply_xml' ).Value := Q.FieldByName('etran_ecp_xml').AsString;
        sp_etran_ecp_modify.Parameters.ParamByName('@FIO_users_send'      ).Value := FIO_users;
        sp_etran_ecp_modify.ExecProc;

        Q.Free;
        ShowTextMessage('Осталось '+IntToStr(cxGridDBBanded.Controller.SelectedRowCount - i)+' записей...', False);
      end;

      ShowTextMessage;
      RefreshProcedure(-9);
    end;
    Exit;
  end;


  if  Application.MessageBox(PChar('Вы точно уверены, что хотите ОТПРАВИТЬ выделенные накладные?'),'Внимание',MB_OKCANCEL) = ID_OK then begin
    for i := 0 to cxGridDBBanded.Controller.SelectedRowCount - 1 do begin

      Q2 := TADOQuery.Create(nil);
      Q2.Connection := ADOEtran;
      Q2.SQL.Add('SELECT TOP 1 x1.num_vagon, max(x1.date_send) as date_send FROM');
      Q2.SQL.Add('(	SELECT	etran_ecp_id, convert(datetime,convert(varchar,date_send,112)) date_send, T2.Loc.value(''(carNumber/@value)[1]'',''varchar(800)'') num_vagon');
      Q2.SQL.Add('	FROM	etran_ecp');
      Q2.SQL.Add('			CROSS APPLY etran_ecp_reply_xml.nodes(''/invoiceDirectLoadReply/invCar'') as T2(Loc)');
      Q2.SQL.Add('	WHERE	convert(datetime,convert(varchar,date_send,112)) > convert(datetime,convert(varchar,getdate(),112))-2');
      Q2.SQL.Add(') x1 inner join');
      Q2.SQL.Add('(	SELECT	T2.Loc.value(''(carNumber/@value)[1]'',''varchar(800)'') num_vagon');
      Q2.SQL.Add('	FROM	etran_ecp');
      Q2.SQL.Add('			CROSS APPLY etran_ecp_xml.nodes(''/invoiceDirectLoad/invCar'') as T2(Loc)');
      Q2.SQL.Add('	WHERE	etran_ecp.etran_ecp_id = ' + IntToStr(cxGridDBBanded.Controller.SelectedRows[i].Values[etran_ecp_id_index]));
      Q2.SQL.Add(') x2 on x1.num_vagon = x2.num_vagon');
      Q2.SQL.Add('GROUP BY x1.num_vagon');
      Q2.Open;

      if Q2.RecordCount > 0  then begin
        if Application.MessageBox(PChar('Вагон №' + Q2.FieldByName('num_vagon').AsString + ' был оформлен с использованием ЭЦП ' + Q2.FieldByName('date_send').AsString + '.' + #10 + 'Продолжить?'), 'Внимание', MB_ICONWARNING or MB_OKCANCEL) = ID_CANCEL then begin
          Q2.Free;
          Exit;
        end;
      end;

      Q2.SQL.Clear;
      Q2.SQL.Add('SELECT	DISTINCT T2.Loc.value(''(carPriorFreightCode/@value)[1]'',''varchar(800)'') num_vagon');
      Q2.SQL.Add('FROM	  etran_ecp');
      Q2.SQL.Add('        CROSS APPLY etran_ecp_xml.nodes(''/invoiceDirectLoad/invCar'') as T2(Loc)');
      Q2.SQL.Add('WHERE	etran_ecp.etran_ecp_id = ' + IntToStr(cxGridDBBanded.Controller.SelectedRows[i].Values[etran_ecp_id_index]));
      Q2.Open;

      if Q2.RecordCount > 1  then begin
        Application.MessageBox(PChar('В накладной присутствуют несколько ранее перевозимых грузов!.'), 'Внимание', MB_ICONWARNING or MB_OK);
        Q2.Free;
        Exit;
      end;
      Q2.Free;

      Q := TADOQuery.Create(nil);
      Q.Connection := ADOEtran;
      Q.SQL.Add('SELECT etran_ecp_xml, users_owner_id, invPayerCode, invSenderOKPO FROM etran_ecp inner join etran_global_id on etran_ecp.etran_ecp_id = etran_global_id.global_id WHERE etran_ecp_id = ' + IntToStr(cxGridDBBanded.Controller.SelectedRows[i].Values[etran_ecp_id_index]));
      Q.Open;

//      if (Fusers_group_cod = '35') or (Q.FieldByName('invSenderOKPO').AsString = '83298267') then begin
//        //ShowMessage('Урал-Логистика');
//        v := CreateWndSendDocs('172.25.45.4', '7400', Q.FieldByName('etran_ecp_xml').AsString);
//      end else if (Fusers_group_cod <> '18') then begin
//        //ShowMessage('Совфрахт');
//        v := CreateWndSendDocs('172.16.200.129', '7400', Q.FieldByName('etran_ecp_xml').AsString);
//      end else if (Fusers_group_cod = '18') then begin
//        //ShowMessage('Совфрахт');
//        v := CreateWndSendDocs('172.16.200.129', '7410', Q.FieldByName('etran_ecp_xml').AsString);
//      end;

      v := CreateWndSendDocs(Fetran_ip, Fetran_port, Q.FieldByName('etran_ecp_xml').AsString);

      if v[0] = True then begin
        // Накладная отправлена
        sp_etran_ecp_modify := TADOStoredProc.Create(nil);
        sp_etran_ecp_modify.Connection := ADOEtran;
        sp_etran_ecp_modify.ProcedureName := 'sp_etran_ecp_modify';
        sp_etran_ecp_modify.Parameters.Refresh;
        sp_etran_ecp_modify.Parameters.ParamByName('@etran_ecp_id').Value := cxGridDBBanded.Controller.SelectedRows[i].Values[etran_ecp_id_index];
        sp_etran_ecp_modify.Parameters.ParamByName('@type_action' ).Value := 3;
        sp_etran_ecp_modify.Parameters.ParamByName('@date_send'   ).Value := Now;
        sp_etran_ecp_modify.Parameters.ParamByName('@etran_ecp_reply_xml' ).Value := v[1];
        sp_etran_ecp_modify.Parameters.ParamByName('@FIO_users_send'      ).Value := FIO_users;
        sp_etran_ecp_modify.ExecProc;
        // Пытаемся подписать...

        Q.SQL.Clear;
        Q.SQL.Add('SELECT * FROM etran_ecp WHERE etran_ecp_id = ' + IntToStr(cxGridDBBanded.Controller.SelectedRows[i].Values[etran_ecp_id_index]));
        Q.Open;

        if Q.RecordCount > 0 then begin
          if not Q.FieldByName('invoiceID').IsNull then begin
            doc_id := Q.FieldByName('invoiceID').AsInteger;
            v := CreateWndGetECPSignAndSend(Fetran_ip, Fetran_port, doc_id, ADOEtran.ConnectionString);
            if v[0] = False then begin
              str_error := str_error + v[1] + #10;
              set_error := True;
            end;
          end;
        end;

      end else begin
        // Ошибка
        sp_etran_ecp_modify := TADOStoredProc.Create(nil);
        sp_etran_ecp_modify.Connection := ADOEtran;
        sp_etran_ecp_modify.ProcedureName := 'sp_etran_ecp_modify';
        sp_etran_ecp_modify.Parameters.Refresh;
        sp_etran_ecp_modify.Parameters.ParamByName('@etran_ecp_id').Value := cxGridDBBanded.Controller.SelectedRows[i].Values[etran_ecp_id_index];
        sp_etran_ecp_modify.Parameters.ParamByName('@type_action' ).Value := 3;
        sp_etran_ecp_modify.Parameters.ParamByName('@date_send'   ).Value := Now;
        sp_etran_ecp_modify.Parameters.ParamByName('@etran_ecp_reply_xml' ).Value := v[1];
        sp_etran_ecp_modify.Parameters.ParamByName('@FIO_users_send'      ).Value := FIO_users;
        sp_etran_ecp_modify.ExecProc;
      end;
      Q.Free;
      ShowTextMessage('Осталось '+IntToStr(cxGridDBBanded.Controller.SelectedRowCount - i)+' записей...', False);
    end;

    ShowTextMessage;
    RefreshProcedure(-9);
  end;

  if set_error then begin
    Application.MessageBox(PChar(str_error), 'Внимание', MB_ICONWARNING or MB_OK);
  end;

end;

procedure TfmECPMain.dxBarButton48Click(Sender: TObject);
var i : integer;
begin
  if dxBarButton48.Down then begin
    cxPageControl2.ActivePage := cxTabSheet3;

    cxGridDBBandedTableView1.OptionsCustomize.ColumnSorting := False;
    for i:=0 to cxGridDBBandedTableView1.ColumnCount-1 do begin
      cxGridDBBandedTableView1.Columns[i].SortOrder := soNone;
    end;
    cxGridDBBandedTableView1distance.SortOrder := soAscending;
    cxGridDBBandedTableView1set_priority.SortOrder := soDescending;

    cxGridDBBandedTableView1distance.Position.ColIndex := 1;
    cxGridDBBandedTableView1set_priority.Position.ColIndex := 2;

    cxGridDBBandedTableView1.DataController.Filter.Clear;
    cxGridDBBandedTableView1.DataController.Filter.Options := cxGridDBBandedTableView1.DataController.Filter.Options + [fcoCaseInsensitive];
    cxGridDBBandedTableView1.DataController.Filter.Root.BoolOperatorKind := fboAnd;
    cxGridDBBandedTableView1.DataController.Filter.Root.AddItem(cxGridDBBandedTableView1date_send, foEqual, null, 'Пусто');

  end else begin
    cxGridDBBandedTableView1.OptionsCustomize.ColumnSorting := True;
  end;
end;

procedure TfmECPMain.dxBarButton49Click(Sender: TObject);
begin
	PrintcxGrid(cxGridDBBandedTableView5);
end;

procedure TfmECPMain.RefreshECP();
var str_key : TStringList;
    i : integer;
    pos : integer;
begin
  str_key := TStringList.Create;
  pos := cxGrid3DBBandedTableView1.Controller.TopRowIndex;

  for i:=0 to cxGrid1DBBandedTableView1.Controller.SelectedRecordCount - 1 do begin
    str_key.Add(IntToStr(cxGrid1DBBandedTableView1.Controller.SelectedRows[i].Values[cxGrid1DBBandedTableView1etran_ecp_id.Index]));
  end;

  if cxGrid1DBBandedTableView1.GetColumnByFieldName('etran_ecp_id').DataBinding.Field = nil then exit;

  Screen.Cursor := crHourglass;
  cxGrid1DBBandedTableView1.DataController.DataSource.DataSet.Close;
  cxGrid1DBBandedTableView1.DataController.DataSource.DataSet.Open;
  cxGrid1DBBandedTableView1.Controller.ClearSelection;

  cxGrid1DBBandedTableView1.OnSelectionChanged := nil;

  for I := 0 to str_key.Count-1 do begin
    if cxGrid1DBBandedTableView1.DataController.LocateByKey(StrToInt(str_key.Strings[i])) then begin
      cxGrid1DBBandedTableView1.Controller.FocusedRecord.Selected := True;
    end;
  end;

  cxGrid1DBBandedTableView1.OnSelectionChanged := cxGrid1DBBandedTableView1SelectionChanged;
  cxGrid3DBBandedTableView1.Controller.TopRowIndex := pos;

  str_key.Free;

  Screen.Cursor := crDefault;
end;


procedure TfmECPMain.dxBarButton4Click(Sender: TObject);
begin
  RefreshProcedure(-9);
end;

procedure TfmECPMain.dxBarButton50Click(Sender: TObject);
begin
	SetdxDBGridColumns(cxGridDBBandedTableView5);
end;

procedure TfmECPMain.dxBarButton51Click(Sender: TObject);
begin
	cxGridDBBandedTableView5.OptionsView.GroupByBox := not cxGridDBBandedTableView5.OptionsView.GroupByBox;
end;

procedure TfmECPMain.dxBarButton52Click(Sender: TObject);
var                i : integer;
 sp_etran_ecp_modify : TADOStoredProc;
begin
  if Application.MessageBox(PChar('Вы точно уверены, что хотите удалить выделенные накладные?'),'Внимание',MB_OKCANCEL) = ID_OK then begin
      Screen.Cursor := -11;

      sp_etran_ecp_modify := TADOStoredProc.Create(nil);
      sp_etran_ecp_modify.Connection := ADOEtran;
      sp_etran_ecp_modify.ProcedureName := 'sp_etran_ecp_modify';

      for i := 0 to cxGridDBBandedTableView5.Controller.SelectedRowCount - 1 do begin
        sp_etran_ecp_modify.Close;
        sp_etran_ecp_modify.Parameters.Refresh;
        sp_etran_ecp_modify.Parameters.ParamByName('@etran_ecp_id').Value := cxGridDBBandedTableView5.Controller.SelectedRows[i].Values[cxGridDBBandedTableView5etran_ecp_id.Index];
        sp_etran_ecp_modify.Parameters.ParamByName('@type_action' ).Value := 2;
        try
          sp_etran_ecp_modify.ExecProc;
          ShowTextMessage('Осталось '+IntToStr(cxGridDBBandedTableView5.Controller.SelectedRowCount - i)+' записей...', False);
        except
        end;
      end;

      RefreshProcedure(-9);
      sp_etran_ecp_modify.Free;
      ShowTextMessage;
  end;
end;

procedure TfmECPMain.dxBarButton53Click(Sender: TObject);
var Q: TADOQuery;
    list_etran_ecp_id : array of string;
     str_etran_ecp_id : string;
           vagon_list : string;
begin
  fmECPVagonSeveral := TfmECPVagonSeveral.Create(Application);
  fmECPVagonSeveral._SetCaption := 'Список вагонов';
  if fmECPVagonSeveral.ShowModal = mrOk then begin
    vagon_list := fmECPVagonSeveral._GetVagonList;
    Application.MessageBox('Поиск накладных будет происходить в выбранном периоде.', 'Внимание', MB_ICONINFORMATION or MB_OK);

    Q := TADOQuery.Create(nil);
    Q.Connection := ADOEtran;
    Q.SQL.Add('SELECT	DISTINCT etran_ecp_id');
    Q.SQL.Add('FROM	  ETRAN_ECP_FACT');
    Q.SQL.Add('WHERE	etran_ecp_id in (');
    Q.SQL.Add('				    SELECT	etran_ecp_id');
    Q.SQL.Add('				    FROM	view_etran_ecp');
    Q.SQL.Add('				    WHERE	date_enter between ' + DateToSQL(Fdate1) + ' and ' + DateToSQL(Fdate2+1) + ')');
    Q.SQL.Add('		    and num_vagon in (SELECT cod FROM dbo.StrToTbl(''' + vagon_list + ''', default))');
    Q.Open;
    SetLength(list_etran_ecp_id, Q.RecordCount);
    while not Q.Eof do begin
      list_etran_ecp_id[Q.RecNo-1] := Q.FieldByName('etran_ecp_id').AsString;

      if Q.RecNo > 1 then str_etran_ecp_id := str_etran_ecp_id + ',';
      str_etran_ecp_id := str_etran_ecp_id + Q.FieldByName('etran_ecp_id').AsString;

      Q.Next;
    end;

    cxGrid1DBBandedTableView1.DataController.Filter.Clear;
    cxGrid1DBBandedTableView1.DataController.Filter.Options := cxGrid1DBBandedTableView1.DataController.Filter.Options + [fcoCaseInsensitive];
    cxGrid1DBBandedTableView1.DataController.Filter.Root.BoolOperatorKind := fboAnd;
    cxGrid1DBBandedTableView1.DataController.Filter.Root.AddItem(cxGrid1DBBandedTableView1etran_ecp_id, foInList, list_etran_ecp_id, str_etran_ecp_id);
    cxGrid1DBBandedTableView1.DataController.Filter.Active := True;

    Q.Free;
  end;
end;

procedure TfmECPMain.dxBarButton54Click(Sender: TObject);
var str_query : string;
        Q, Q2 : TADOQuery;
  m : TStringList;
  v : Variant;
  i : integer;
  sp_etran_ecp_modify : TADOStoredProc;

  etran_ecp_id_index   : integer;
  cxGridDBBanded       : TcxGridDBBandedTableView;
begin
  cxGridDBBanded     := cxGrid1DBBandedTableView1;
  etran_ecp_id_index := cxGrid1DBBandedTableView1etran_ecp_id.Index;

  if Fusers_group_cod = '12' then begin
    if Application.MessageBox(PChar('Вы точно уверены, что хотите ИСПОРТИТЬ выделенные накладные?'),'Внимание',MB_OKCANCEL) = ID_OK then begin
      for i := 0 to cxGridDBBanded.Controller.SelectedRowCount - 1 do begin

        Q := TADOQuery.Create(nil);
        Q.Connection := ADOEtran;
        Q.SQL.Add('SELECT etran_ecp_xml, users_owner_id, invPayerCode, invSenderOKPO FROM etran_ecp inner join etran_global_id on etran_ecp.etran_ecp_id = etran_global_id.global_id WHERE etran_ecp_id = ' + IntToStr(cxGridDBBanded.Controller.SelectedRows[i].Values[etran_ecp_id_index]));
        Q.Open;

        sp_etran_ecp_modify := TADOStoredProc.Create(nil);
        sp_etran_ecp_modify.Connection := ADOEtran;
        sp_etran_ecp_modify.ProcedureName := 'sp_etran_ecp_modify';
        sp_etran_ecp_modify.Parameters.Refresh;
        sp_etran_ecp_modify.Parameters.ParamByName('@etran_ecp_id').Value := cxGridDBBanded.Controller.SelectedRows[i].Values[etran_ecp_id_index];
        sp_etran_ecp_modify.Parameters.ParamByName('@type_action' ).Value := 35;
        sp_etran_ecp_modify.Parameters.ParamByName('@date_send'   ).Value := Now;
        sp_etran_ecp_modify.Parameters.ParamByName('@etran_ecp_reply_xml' ).Value := Q.FieldByName('etran_ecp_xml').AsString;
        sp_etran_ecp_modify.Parameters.ParamByName('@FIO_users_send'      ).Value := FIO_users;
        sp_etran_ecp_modify.ExecProc;

        Q.Free;
        ShowTextMessage('Осталось '+IntToStr(cxGridDBBanded.Controller.SelectedRowCount - i)+' записей...', False);
      end;

      ShowTextMessage;
      RefreshProcedure(-9);
    end;
    Exit;
  end;

  if Application.MessageBox(PChar('Вы точно уверены, что хотите ИСПОРТИТЬ выделенные накладные?'),'Внимание',MB_OKCANCEL) = ID_OK then begin
    for i := 0 to cxGridDBBanded.Controller.SelectedRowCount - 1 do begin
      Q := TADOQuery.Create(nil);
      Q.Connection := ADOEtran;
      Q.SQL.Add('SELECT etran_ecp_xml, users_owner_id, invPayerCode, invSenderOKPO, invoiceID FROM etran_ecp inner join etran_global_id on etran_ecp.etran_ecp_id = etran_global_id.global_id WHERE etran_ecp_id = ' + IntToStr(cxGridDBBanded.Controller.SelectedRows[i].Values[etran_ecp_id_index]));
      Q.Open;

//      if (Fusers_group_cod = '35') or (Q.FieldByName('invSenderOKPO').AsString = '83298267') then begin
//        //ShowMessage('Урал-Логистика');
//        v := CreateWndCancelDocs('172.25.45.4', '7400', Q.FieldByName('invoiceID').AsInteger);
//      end else if (Fusers_group_cod <> '18') then begin
//        //ShowMessage('Совфрахт');
//        v := CreateWndCancelDocs('172.16.200.129', '7400', Q.FieldByName('invoiceID').AsInteger);
//      end else if (Fusers_group_cod = '18') then begin
//        //ShowMessage('Интерлогистика');
//        v := CreateWndCancelDocs('172.16.200.129', '7410', Q.FieldByName('invoiceID').AsInteger);
//      end;
      v := CreateWndCancelDocs(Fetran_ip, Fetran_port, Q.FieldByName('invoiceID').AsInteger);

      sp_etran_ecp_modify := TADOStoredProc.Create(nil);
      sp_etran_ecp_modify.Connection := ADOEtran;
      sp_etran_ecp_modify.ProcedureName := 'sp_etran_ecp_modify';
      sp_etran_ecp_modify.Parameters.Refresh;
      sp_etran_ecp_modify.Parameters.ParamByName('@etran_ecp_id').Value := cxGridDBBanded.Controller.SelectedRows[i].Values[etran_ecp_id_index];
      sp_etran_ecp_modify.Parameters.ParamByName('@type_action' ).Value := 22;
      sp_etran_ecp_modify.Parameters.ParamByName('@date_send'   ).Value := Now;
      sp_etran_ecp_modify.Parameters.ParamByName('@etran_ecp_reply_xml').Value := v[1];
      sp_etran_ecp_modify.Parameters.ParamByName('@FIO_users_send'     ).Value := FIO_users;
      sp_etran_ecp_modify.ExecProc;

      Q.Free;
      ShowTextMessage('Осталось '+IntToStr(cxGridDBBanded.Controller.SelectedRowCount - i)+' записей...', False);
    end;

    ShowTextMessage;
    RefreshProcedure(-9);
  end;
end;

procedure TfmECPMain.dxBarButton55Click(Sender: TObject);
var                i : integer;
 sp_etran_ecp_modify : TADOStoredProc;
begin
  if Application.MessageBox(PChar('Вы точно уверены, что хотите восстановить выделенные накладные?'),'Внимание',MB_OKCANCEL) = ID_OK then begin
    Screen.Cursor := -11;

    sp_etran_ecp_modify := TADOStoredProc.Create(nil);
    sp_etran_ecp_modify.Connection := ADOEtran;
    sp_etran_ecp_modify.ProcedureName := 'sp_etran_ecp_modify';

    for i := 0 to cxGridDBBandedTableView5.Controller.SelectedRowCount - 1 do begin
      sp_etran_ecp_modify.Close;
      sp_etran_ecp_modify.Parameters.Refresh;
      sp_etran_ecp_modify.Parameters.ParamByName('@etran_ecp_id').Value := cxGridDBBandedTableView5.Controller.SelectedRows[i].Values[cxGridDBBandedTableView5etran_ecp_id.Index];
      sp_etran_ecp_modify.Parameters.ParamByName('@type_action' ).Value := 20;
      sp_etran_ecp_modify.Parameters.ParamByName('@set_archive' ).Value := 0;
      try
        sp_etran_ecp_modify.ExecProc;
        ShowTextMessage('Осталось '+IntToStr(cxGridDBBandedTableView5.Controller.SelectedRowCount - i)+' записей...', False);
      except
      end;
    end;

    RefreshProcedure(-9);
    sp_etran_ecp_modify.Free;
    ShowTextMessage;
  end;
end;

procedure TfmECPMain.dxBarButton56Click(Sender: TObject);
var
  i : integer;
  str_etran_ecp_id : string;
  sp_etran_ecp_group : TADOStoredProc;
begin
  Screen.Cursor := crHourGlass;

  str_etran_ecp_id := '';
  for i:=0 to cxGridDBBandedTableView1.Controller.SelectedRecordCount - 1 do
    str_etran_ecp_id := str_etran_ecp_id + ', ' + IntToStr(cxGridDBBandedTableView1.Controller.SelectedRows[i].Values[cxGridDBBandedTableView1etran_ecp_id.Index]);
  Delete(str_etran_ecp_id, 1, 2);

  sp_etran_ecp_group := TADOStoredProc.Create(nil);
  sp_etran_ecp_group.Connection := ADOEtran;
  sp_etran_ecp_group.ProcedureName := 'sp_etran_ecp_group';
  sp_etran_ecp_group.Parameters.Refresh;
  sp_etran_ecp_group.Parameters.ParamByName('@str_etran_ecp_id').Value := str_etran_ecp_id;
  sp_etran_ecp_group.ExecProc;

  str_etran_ecp_id := sp_etran_ecp_group.Parameters.ParamByName('@str_etran_ecp_id').Value;

  sp_etran_ecp_group.Free;


  RefreshProcedure(-9);
  ShowTextMessage();
  Screen.Cursor := crDefault;
end;

procedure TfmECPMain.dxBarButton57Click(Sender: TObject);
var
  invLoadClaim_Number : string;
  i : integer;
  sp_etran_ecp_group_modify : TADOStoredProc;
  etran_ecp_id_index   : integer;
  cxGridDBBanded       : TcxGridDBBandedTableView;
begin
  if TdxBarButton(Sender).ClickItemLink.Owner.Owner.Tag = 0 then begin
    cxGridDBBanded     := cxGrid1DBBandedTableView1;
    etran_ecp_id_index := cxGrid1DBBandedTableView1etran_ecp_id.Index;
  end else begin
    cxGridDBBanded     := cxGridDBBandedTableView1;
    etran_ecp_id_index := cxGridDBBandedTableView1etran_ecp_id.Index;
  end;

  fmECPInvFreight := TfmECPInvFreight.Create(nil, ADOEtran);
  fmECPInvFreight._SetGroupUpdate := True;
  if fmECPInvFreight.ShowModal = mrOk then begin


    Screen.Cursor := crHourGlass;

    sp_etran_ecp_group_modify := TADOStoredProc.Create(nil);
    sp_etran_ecp_group_modify.Connection := ADOEtran;
    sp_etran_ecp_group_modify.ProcedureName := 'sp_etran_ecp_group_modify';

    for i:=0 to cxGridDBBanded.Controller.SelectedRecordCount - 1 do begin
      sp_etran_ecp_group_modify.Parameters.Refresh;
      sp_etran_ecp_group_modify.Parameters.ParamByName('@etran_ecp_id'        ).Value := cxGridDBBanded.Controller.SelectedRows[i].Values[etran_ecp_id_index];
      sp_etran_ecp_group_modify.Parameters.ParamByName('@type_action'         ).Value := 14;

      sp_etran_ecp_group_modify.Parameters.ParamByName('@freightCode'               ).Value := fmECPInvFreight._Get_freightCode;
      sp_etran_ecp_group_modify.Parameters.ParamByName('@freightGNGID'              ).Value := fmECPInvFreight._Get_freightGNGID;
      sp_etran_ecp_group_modify.Parameters.ParamByName('@freightGNGID2001'          ).Value := fmECPInvFreight._Get_freightGNGID2001;
      sp_etran_ecp_group_modify.Parameters.ParamByName('@freightGNGCode'            ).Value := fmECPInvFreight._Get_freightGNGCode;
      sp_etran_ecp_group_modify.Parameters.ParamByName('@freightAdditional'         ).Value := fmECPInvFreight._Get_freightAdditional;
      sp_etran_ecp_group_modify.Parameters.ParamByName('@freightWeight'             ).Value := fmECPInvFreight._Get_freightWeight;
      sp_etran_ecp_group_modify.Parameters.ParamByName('@freightDangerSignID'       ).Value := fmECPInvFreight._Get_freightDangerSignID;
      sp_etran_ecp_group_modify.Parameters.ParamByName('@freightDangerID'           ).Value := fmECPInvFreight._Get_freightDangerID;
      sp_etran_ecp_group_modify.Parameters.ParamByName('@freightAccidentCardID'     ).Value := fmECPInvFreight._Get_freightAccidentCardID;
      sp_etran_ecp_group_modify.Parameters.ParamByName('@set_freightCode'           ).Value := fmECPInvFreight._GetSetFreightCode;
      sp_etran_ecp_group_modify.Parameters.ParamByName('@set_freightGNGID'          ).Value := fmECPInvFreight._GetSetFreightGNGID;
      sp_etran_ecp_group_modify.Parameters.ParamByName('@set_freightGNGID2001'      ).Value := fmECPInvFreight._GetSetFreightGNGID2001;
      sp_etran_ecp_group_modify.Parameters.ParamByName('@set_freightGNGCode'        ).Value := fmECPInvFreight._GetSetFreightGNGCode;
      sp_etran_ecp_group_modify.Parameters.ParamByName('@set_freightAdditional'     ).Value := fmECPInvFreight._GetSetFreightAdditional;
      sp_etran_ecp_group_modify.Parameters.ParamByName('@set_freightWeight'         ).Value := fmECPInvFreight._GetSetFreightWeight;
      sp_etran_ecp_group_modify.Parameters.ParamByName('@set_freightDangerSignID'   ).Value := fmECPInvFreight._GetSetFreightDangerSignID;
      sp_etran_ecp_group_modify.Parameters.ParamByName('@set_freightDangerID'       ).Value := fmECPInvFreight._GetSetFreightDangerID;
      sp_etran_ecp_group_modify.Parameters.ParamByName('@set_freightAccidentCardID' ).Value := fmECPInvFreight._GetSetFreightAccidentCardID;


      sp_etran_ecp_group_modify.ExecProc;
      ShowTextMessage('Изменено ' + IntToStr(i) + ' накладных из ' + IntToStr(cxGridDBBanded.Controller.SelectedRecordCount) + '...', False);
    end;
    sp_etran_ecp_group_modify.Free;
  end;


  if TdxBarButton(Sender).ClickItemLink.Owner.Owner.Tag = 0 then
    RefreshProcedure(-9)
  else
    RefreshECP();

  ShowTextMessage();
  Screen.Cursor := crDefault;
end;

procedure TfmECPMain.dxBarButton58Click(Sender: TObject);
var OpenDialog: TOpenDialog;
    new_str : string;
    exApp, exWkb, exWks : OleVariant;
    cnt, i, k, rate_id,
              type_rate : integer;
    sp_etran_ecp_cls_modify : TADOStoredProc;
    str_ecp_etran_id: string;
begin
  str_ecp_etran_id := '';
  for i:=0 to cxGrid1DBBandedTableView1.Controller.SelectedRecordCount - 1 do
    str_ecp_etran_id := str_ecp_etran_id + ',' + IntToStr(cxGrid1DBBandedTableView1.Controller.SelectedRows[i].Values[cxGrid1DBBandedTableView1etran_ecp_id.Index]);
  Delete(str_ecp_etran_id, 1, 1);

  OpenDialog := TOpenDialog.Create(nil);
  OpenDialog.Filter     := 'Excel файлы|*.xls;*.xlsx';
  OpenDialog.DefaultExt := 'xls';
  if OpenDialog.Execute then begin
    new_str := '4';
    if not InputQuery('Номер строки для загрузки', 'Введите номер строки', new_str) then begin
      Application.MessageBox('НЕОБХОДИМ НОМЕР СТРОКИ!!!', 'ВНИМАНИЕ', MB_OK);
      OpenDialog.Free;
      Exit;
    end;
    ShowTextMessage('Запуск сервера автоматизации...', False);

    exApp := CreateOleObject('Excel.Application');
    exWkb := exApp.Workbooks.Open(OpenDialog.FileName);
    exWkb := exApp.ActiveWorkbook;
    exWks := exWkb.WorkSheets[1];

    cnt := 0;
    i := StrToInt(new_str);
    while True do begin
      if TVarData(exWks.Cells[i, 1].Value).VType = varEmpty then
        break
      else cnt := cnt + 1;
      i := i + 1;
    end;
    ShowTextMessage('Осталось '+IntToStr(cnt)+' строк...', False);

    sp_etran_ecp_cls_modify := TADOStoredProc.Create(nil);
    sp_etran_ecp_cls_modify.Connection := ADOEtran;
    sp_etran_ecp_cls_modify.ProcedureName := 'sp_etran_ecp_cls_modify';

    i := StrToInt(new_str);
    for k:=0 to cnt-1 do begin

      sp_etran_ecp_cls_modify.Close;
      sp_etran_ecp_cls_modify.Parameters.Refresh;
      sp_etran_ecp_cls_modify.Parameters.ParamByName('@str_etran_ecp_id').Value := str_ecp_etran_id;
      sp_etran_ecp_cls_modify.Parameters.ParamByName('@carNumber'   ).Value := exWks.Cells[i + k, 2].Value; // Номер вагона
      sp_etran_ecp_cls_modify.Parameters.ParamByName('@sealMarks'   ).Value := exWks.Cells[i + k, 5].Value; // Контрольный знак
      sp_etran_ecp_cls_modify.Parameters.ParamByName('@sealTypeName').Value := exWks.Cells[i + k, 4].Value; // Тип;
      sp_etran_ecp_cls_modify.ExecProc;

      ShowTextMessage('Осталось '+IntToStr(cnt-k)+' строк...', False);
    end;

    sp_etran_ecp_cls_modify.Free;
    ShowTextMessage;
    exApp.Quit;
  end;
  OpenDialog.Free;
end;

procedure TfmECPMain.dxBarButton5Click(Sender: TObject);
var str_query : string;
        Q, Q2 : TADOQuery;
  m : TStringList;
  v : Variant;
  i : integer;
  sp_etran_ecp_modify : TADOStoredProc;

  etran_ecp_id_index   : integer;
  cxGridDBBanded       : TcxGridDBBandedTableView;
begin
  if TdxBarButton(Sender).ClickItemLink.Owner.Owner.Tag = 0 then begin
    cxGridDBBanded     := cxGrid1DBBandedTableView1;
    etran_ecp_id_index := cxGrid1DBBandedTableView1etran_ecp_id.Index;
  end else begin
    cxGridDBBanded     := cxGridDBBandedTableView1;
    etran_ecp_id_index := cxGridDBBandedTableView1etran_ecp_id.Index;
  end;


  if Fusers_group_cod = '12' then begin
    if Application.MessageBox(PChar('Вы точно уверены, что хотите ОТПРАВИТЬ выделенные накладные?'),'Внимание',MB_OKCANCEL) = ID_OK then begin
      for i := 0 to cxGridDBBanded.Controller.SelectedRowCount - 1 do begin

        Q := TADOQuery.Create(nil);
        Q.Connection := ADOEtran;
        Q.SQL.Add('SELECT etran_ecp_xml, users_owner_id, invPayerCode, invSenderOKPO FROM etran_ecp inner join etran_global_id on etran_ecp.etran_ecp_id = etran_global_id.global_id WHERE etran_ecp_id = ' + IntToStr(cxGridDBBanded.Controller.SelectedRows[i].Values[etran_ecp_id_index]));
        Q.Open;

        sp_etran_ecp_modify := TADOStoredProc.Create(nil);
        sp_etran_ecp_modify.Connection := ADOEtran;
        sp_etran_ecp_modify.ProcedureName := 'sp_etran_ecp_modify';
        sp_etran_ecp_modify.Parameters.Refresh;
        sp_etran_ecp_modify.Parameters.ParamByName('@etran_ecp_id').Value := cxGridDBBanded.Controller.SelectedRows[i].Values[etran_ecp_id_index];
        sp_etran_ecp_modify.Parameters.ParamByName('@type_action' ).Value := 33;
        sp_etran_ecp_modify.Parameters.ParamByName('@date_send'   ).Value := Now;
        sp_etran_ecp_modify.Parameters.ParamByName('@etran_ecp_reply_xml' ).Value := Q.FieldByName('etran_ecp_xml').AsString;
        sp_etran_ecp_modify.Parameters.ParamByName('@FIO_users_send'      ).Value := FIO_users;
        sp_etran_ecp_modify.ExecProc;

        Q.Free;
        ShowTextMessage('Осталось '+IntToStr(cxGridDBBanded.Controller.SelectedRowCount - i)+' записей...', False);
      end;

      ShowTextMessage;
      RefreshProcedure(-9);
    end;
    Exit;
  end;


  if Application.MessageBox(PChar('Вы точно уверены, что хотите ОТПРАВИТЬ выделенные накладные?'),'Внимание',MB_OKCANCEL) = ID_OK then begin
    for i := 0 to cxGridDBBanded.Controller.SelectedRowCount - 1 do begin
      Q2 := TADOQuery.Create(nil);
      Q2.Connection := ADOEtran;
      Q2.SQL.Add('SELECT TOP 1 x1.num_vagon, max(x1.date_send) as date_send FROM');
      Q2.SQL.Add('(	SELECT	etran_ecp_id, convert(datetime,convert(varchar,date_send,112)) date_send, T2.Loc.value(''(carNumber/@value)[1]'',''varchar(800)'') num_vagon');
      Q2.SQL.Add('	FROM	etran_ecp');
      Q2.SQL.Add('			CROSS APPLY etran_ecp_reply_xml.nodes(''/invoiceDirectLoadReply/invCar'') as T2(Loc)');
      Q2.SQL.Add('	WHERE	convert(datetime,convert(varchar,date_send,112)) > convert(datetime,convert(varchar,getdate(),112))-2');
      Q2.SQL.Add(') x1 inner join');
      Q2.SQL.Add('(	SELECT	T2.Loc.value(''(carNumber/@value)[1]'',''varchar(800)'') num_vagon');
      Q2.SQL.Add('	FROM	etran_ecp');
      Q2.SQL.Add('			CROSS APPLY etran_ecp_xml.nodes(''/invoiceDirectLoad/invCar'') as T2(Loc)');
      Q2.SQL.Add('	WHERE	etran_ecp.etran_ecp_id = ' + IntToStr(cxGridDBBanded.Controller.SelectedRows[i].Values[etran_ecp_id_index]));
      Q2.SQL.Add(') x2 on x1.num_vagon = x2.num_vagon');
      Q2.SQL.Add('GROUP BY x1.num_vagon');
      Q2.Open;

      if Q2.RecordCount > 0  then begin
        if Application.MessageBox(PChar('Вагон №' + Q2.FieldByName('num_vagon').AsString + ' был оформлен с использованием ЭЦП ' + Q2.FieldByName('date_send').AsString + '.' + #10 + 'Продолжить?'), 'Внимание', MB_ICONWARNING or MB_OKCANCEL) = ID_CANCEL then begin
          Q2.Free;
          Exit;
        end;
      end;

      Q2.SQL.Clear;
      Q2.SQL.Add('SELECT	DISTINCT T2.Loc.value(''(carPriorFreightCode/@value)[1]'',''varchar(800)'') num_vagon');
      Q2.SQL.Add('FROM	  etran_ecp');
      Q2.SQL.Add('        CROSS APPLY etran_ecp_xml.nodes(''/invoiceDirectLoad/invCar'') as T2(Loc)');
      Q2.SQL.Add('WHERE	etran_ecp.etran_ecp_id = ' + IntToStr(cxGridDBBanded.Controller.SelectedRows[i].Values[etran_ecp_id_index]));
      Q2.Open;

      if Q2.RecordCount > 1  then begin
        Application.MessageBox(PChar('В накладной присутствуют несколько ранее перевозимых грузов!.'), 'Внимание', MB_ICONWARNING or MB_OK);
        Q2.Free;
        Exit;
      end;
      Q2.Free;

      Q := TADOQuery.Create(nil);
      Q.Connection := ADOEtran;
      Q.SQL.Add('SELECT etran_ecp_xml, users_owner_id, invPayerCode, invSenderOKPO FROM etran_ecp inner join etran_global_id on etran_ecp.etran_ecp_id = etran_global_id.global_id WHERE etran_ecp_id = ' + IntToStr(cxGridDBBanded.Controller.SelectedRows[i].Values[etran_ecp_id_index]));
      Q.Open;

//      if (Fusers_group_cod = '35') or (Q.FieldByName('invSenderOKPO').AsString = '83298267') then begin
//        //ShowMessage('Урал-Логистика');
//        v := CreateWndSendDocs('172.25.45.4', '7400', Q.FieldByName('etran_ecp_xml').AsString);
//      end else if (Fusers_group_cod <> '18') then begin
//        //ShowMessage('Совфрахт');
//        v := CreateWndSendDocs('172.16.200.129', '7400', Q.FieldByName('etran_ecp_xml').AsString);
//      end else if (Fusers_group_cod = '18') then begin
//        //ShowMessage('Совфрахт');
//        v := CreateWndSendDocs('172.16.200.129', '7410', Q.FieldByName('etran_ecp_xml').AsString);
//      end;

      v := CreateWndSendDocs(Fetran_ip, Fetran_port, Q.FieldByName('etran_ecp_xml').AsString);

      if v[0] = True then begin
        sp_etran_ecp_modify := TADOStoredProc.Create(nil);
        sp_etran_ecp_modify.Connection := ADOEtran;
        sp_etran_ecp_modify.ProcedureName := 'sp_etran_ecp_modify';
        sp_etran_ecp_modify.Parameters.Refresh;
        sp_etran_ecp_modify.Parameters.ParamByName('@etran_ecp_id').Value := cxGridDBBanded.Controller.SelectedRows[i].Values[etran_ecp_id_index];
        sp_etran_ecp_modify.Parameters.ParamByName('@type_action' ).Value := 3;
        sp_etran_ecp_modify.Parameters.ParamByName('@date_send'   ).Value := Now;
        sp_etran_ecp_modify.Parameters.ParamByName('@etran_ecp_reply_xml' ).Value := v[1];
        sp_etran_ecp_modify.Parameters.ParamByName('@FIO_users_send'      ).Value := FIO_users;
        sp_etran_ecp_modify.ExecProc;
      end else begin
        sp_etran_ecp_modify := TADOStoredProc.Create(nil);
        sp_etran_ecp_modify.Connection := ADOEtran;
        sp_etran_ecp_modify.ProcedureName := 'sp_etran_ecp_modify';
        sp_etran_ecp_modify.Parameters.Refresh;
        sp_etran_ecp_modify.Parameters.ParamByName('@etran_ecp_id').Value := cxGridDBBanded.Controller.SelectedRows[i].Values[etran_ecp_id_index];
        sp_etran_ecp_modify.Parameters.ParamByName('@type_action' ).Value := 3;
        sp_etran_ecp_modify.Parameters.ParamByName('@date_send'   ).Value := Now;
        sp_etran_ecp_modify.Parameters.ParamByName('@etran_ecp_reply_xml' ).Value := v[1];
        sp_etran_ecp_modify.Parameters.ParamByName('@FIO_users_send'      ).Value := FIO_users;
        sp_etran_ecp_modify.ExecProc;
      end;
      Q.Free;
      ShowTextMessage('Осталось '+IntToStr(cxGridDBBanded.Controller.SelectedRowCount - i)+' записей...', False);
    end;

    ShowTextMessage;
    RefreshProcedure(-9);
  end;

end;

procedure TfmECPMain.dxBarButton6Click(Sender: TObject);
begin
  fmECPStatus := TfmECPStatus.Create(Application, Fetran_ip, Fetran_port);
  fmECPStatus.ShowModal;
end;

procedure TfmECPMain.dxBarButton7Click(Sender: TObject);
begin
  if cxPageControl2.ActivePage = cxTabSheet3 then begin
    fmECPInvoiceToViza := TfmECPInvoiceToViza.Create(Application, ADOEtran, Fusers_group_cod, Fusr_pwd);
    fmECPInvoiceToViza._SetInsertSPC := True;
    fmECPInvoiceToViza._SetFIOusers  := FIO_users;
    fmECPInvoiceToViza._SetEtranIP   := Fetran_ip;
    fmECPInvoiceToViza._SetEtranPort := Fetran_port;
    fmECPInvoiceToViza._SetSetOrders := True;
    if fmECPInvoiceToViza.ShowModal = mrOK then begin
      RefreshProcedure(fmECPInvoiceToViza._GetECPId);
    end;
  end else begin
    fmECPInvoiceToViza := TfmECPInvoiceToViza.Create(Application, ADOEtran, Fusers_group_cod, Fusr_pwd);
    fmECPInvoiceToViza._SetInsertSPC := True;
    fmECPInvoiceToViza._SetFIOusers  := FIO_users;
    fmECPInvoiceToViza._SetEtranIP   := Fetran_ip;
    fmECPInvoiceToViza._SetEtranPort := Fetran_port;
    fmECPInvoiceToViza._SetSetOrders := False;
    if fmECPInvoiceToViza.ShowModal = mrOK then begin
      RefreshProcedure(fmECPInvoiceToViza._GetECPId);
    end;
  end;
end;

procedure TfmECPMain.dxBarButton8Click(Sender: TObject);
begin
  fmPeriod := TfmPeriod.Create(Application, Fdate1, Fdate2, 1);
  if fmPeriod.ShowModal=mrOK then begin
    Fdate1 := fmPeriod._GetDateBegin;
    Fdate2 := fmPeriod._GetDateEnd;

    dxBarSubItem2.Caption := FormatDateTime('dd.mm.yy', Fdate1) + '-' + FormatDateTime('dd.mm.yy', Fdate2);

    RefreshProcedure(-9);
  end;
end;

procedure TfmECPMain.dxBarButton9Click(Sender: TObject);
begin
  fmPeriod := TfmPeriod.Create(Application, Fdate1, Fdate2, 2);
  if fmPeriod.ShowModal=mrOK then begin
    Fdate1 := fmPeriod._GetMonthBegin;
    Fdate2 := fmPeriod._GetMonthEnd;
    dxBarSubItem2.Caption := FormatDateTime('mmm yy', Fdate1) + ' - ' + FormatDateTime('mmm yy', Fdate2);

    RefreshProcedure(-9);
  end;
end;

procedure TfmECPMain.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TfmECPMain.FormDestroy(Sender: TObject);
begin
  StoreRegistryDate(rgSave, '\Software\Lis1\DateTime\ECPMain', Fdate1, Fdate2);
  StoreRegistryGrid2(rgSave,'\Software\Lis1\ECPEtran\MainGrids', cxGrid1DBBandedTableView1);
  StoreRegistryGrid2(rgSave,'\Software\Lis1\ECPEtran\MainGrids', cxGridDBBandedTableView1);
end;

procedure TfmECPMain.RefreshProcedureDetail();
var Q: TADOQuery;
  str : string;
begin
  cxMemo1.Lines.Clear;
  Query_History.Close;
  Query_HistoryTrip.Close;
  Query_invFreight.Close;
  Query_invCar.Close;
  Query_invDistance.Close;
  Query_invSPC.Close;

  if cxPageControl2.ActivePageIndex = 0 then
    if cxGrid1DBBandedTableView1etran_ecp_id.DataBinding.Field <> nil then
      if cxGrid1DBBandedTableView1etran_ecp_id.DataBinding.Field.Value <> null then begin

        if cxPageControl4.Visible then begin
          if cxPageControl4.ActivePage = cxTabSheet8 then begin
            Query_invFreight.Parameters.ParamByName('etran_ecp_id').Value := cxGrid1DBBandedTableView1etran_ecp_id.DataBinding.Field.AsInteger;
            Query_invFreight.Open;
          end;

          if cxPageControl4.ActivePage = cxTabSheet9 then begin
            Query_invCar.Parameters.ParamByName('etran_ecp_id').Value := cxGrid1DBBandedTableView1etran_ecp_id.DataBinding.Field.AsInteger;
            Query_invCar.Open;
          end;

          if cxPageControl4.ActivePage = cxTabSheet10 then begin
            Query_invDistance.Parameters.ParamByName('etran_ecp_id').Value := cxGrid1DBBandedTableView1etran_ecp_id.DataBinding.Field.AsInteger;
            Query_invDistance.Open;
          end;

          if cxPageControl4.ActivePage = cxTabSheet11 then begin
            Query_invSPC.Parameters.ParamByName('etran_ecp_id').Value := cxGrid1DBBandedTableView1etran_ecp_id.DataBinding.Field.AsInteger;
            Query_invSPC.Open;
          end;
        end;


        if cxPageControl1.ActivePage = cxTabSheet4 then begin
          // История вагона
          Query_History.Parameters.ParamByName('etran_ecp_id'  ).Value := cxGrid1DBBandedTableView1etran_ecp_id.DataBinding.Field.AsInteger;
          Query_History.Parameters.ParamByName('users_group_id').Value := Fusr_pwd.user_group_id;
          Query_History.Parameters.ParamByName('date_begin'    ).Value := Fdate3;
          Query_History.Parameters.ParamByName('date_end'      ).Value := Fdate4;
          Query_History.Open;
        end;

        if cxPageControl1.ActivePage = cxTabSheet5 then begin
          // История рейса
          Query_HistoryTrip.Parameters.ParamByName('etran_ecp_id'  ).Value := cxGrid1DBBandedTableView1etran_ecp_id.DataBinding.Field.AsInteger;
          Query_HistoryTrip.Parameters.ParamByName('users_group_id').Value := Fusr_pwd.user_group_id;
          Query_HistoryTrip.Parameters.ParamByName('date_begin'    ).Value := Fdate5;
          Query_HistoryTrip.Parameters.ParamByName('date_end'      ).Value := Fdate6;
          Query_HistoryTrip.Open;
        end;


        if not cxGrid1DBBandedTableView1set_error.DataBinding.Field.IsNull then begin
          if cxGrid1DBBandedTableView1set_error.DataBinding.Field.AsBoolean = True then begin
            Q := TADOQuery.Create(nil);
            Q.Connection := ADOEtran;
            Q.SQL.Add('DECLARE @xml xml');
            Q.SQL.Add('SELECT @xml = etran_ecp_reply_xml FROM etran_ecp WHERE etran_ecp_id = ' + IntToStr(cxGrid1DBBandedTableView1etran_ecp_id.DataBinding.Field.AsInteger));
            Q.SQL.Add('');
            Q.SQL.Add('SELECT	ref.value(''(errorMessage/@value)[1]'',''varchar(800)'') as error_message');
            Q.SQL.Add('FROM	  @xml.nodes(''/error'') as node(ref)');
            Q.Open;
            cxMemo1.Lines.Text := Q.FieldByName('error_message').AsString;
            Q.Free;
          end;
        end;

        if not cxGrid1DBBandedTableView1set_warning.DataBinding.Field.IsNull then begin
          if cxGrid1DBBandedTableView1set_warning.DataBinding.Field.AsBoolean = True then begin
            Q := TADOQuery.Create(nil);
            Q.Connection := ADOEtran;
            Q.SQL.Add('DECLARE @xml xml');
            Q.SQL.Add('SELECT @xml = etran_ecp_reply_xml FROM etran_ecp WHERE etran_ecp_id = ' + IntToStr(cxGrid1DBBandedTableView1etran_ecp_id.DataBinding.Field.AsInteger));
            Q.SQL.Add('');
            Q.SQL.Add('SELECT	ref.value(''(warning/@value)[1]'',''varchar(800)'') as warning');
            Q.SQL.Add('FROM	  @xml.nodes(''/invoiceDirectLoadReply'') as node(ref)');
            Q.Open;
            str := Q.FieldByName('warning').AsString;
            str := ReplaceStr(str, '(EarlyGoodsGNG.Get_FreightGNGLookupList_New)|to many rows', #10);
            cxMemo1.Lines.Text := str;
            Q.Free;
          end;
        end;
  end;
end;


procedure TfmECPMain.RefreshProcedure(id: integer);
var str_key : TStringList;
          i : integer;
        pos : integer;
begin
  Screen.Cursor := crHourGlass;

  if cxPageControl2.ActivePageIndex = 0 then begin

    str_key := TStringList.Create;
    pos := cxGrid3DBBandedTableView1.Controller.TopRowIndex;

    if id = -9 then begin
      for i:=0 to cxGrid1DBBandedTableView1.Controller.SelectedRecordCount - 1 do begin
        str_key.Add(IntToStr(cxGrid1DBBandedTableView1.Controller.SelectedRows[i].Values[cxGrid1DBBandedTableView1etran_ecp_id.Index]));
      end;
    end;

    cxGrid1DBBandedTableView1.OnSelectionChanged := nil;

    sp_etran_ecp_get.Close;
    sp_etran_ecp_get.Parameters.Refresh;
    sp_etran_ecp_get.Parameters.ParamByName('@date1').Value := Fdate1;
    sp_etran_ecp_get.Parameters.ParamByName('@date2').Value := Fdate2+1;
    sp_etran_ecp_get.Parameters.ParamByName('@set_order').Value := False;
    sp_etran_ecp_get.Parameters.ParamByName('@set_cancel').Value := dxBarButton43.Down;
    sp_etran_ecp_get.Open;

    if id <> -9 then begin
      cxGrid1DBBandedTableView1.Controller.ClearSelection;
      if cxGrid1DBBandedTableView1.DataController.LocateByKey(id) = False then cxGrid1DBBandedTableView1.Controller.GoToFirst;;
      if cxGrid1DBBandedTableView1.Controller.FocusedRecord <> nil then  cxGrid1DBBandedTableView1.Controller.FocusedRecord.Selected := True;
    end;



    for i := 0 to str_key.Count-1 do begin
      if cxGrid1DBBandedTableView1.DataController.LocateByKey(StrToInt(str_key.Strings[i])) then begin
        cxGrid1DBBandedTableView1.Controller.FocusedRecord.Selected := True;
      end;
    end;
    cxGrid1DBBandedTableView1.OnSelectionChanged := cxGrid1DBBandedTableView1SelectionChanged;
    cxGrid3DBBandedTableView1.Controller.TopRowIndex := pos;

    str_key.Free;

    cxGrid1DBBandedTableView1SelectionChanged(nil);
  end;

  if cxPageControl2.ActivePageIndex = 1 then begin
    sp_etran_ecp_orders_get.Close;
    sp_etran_ecp_orders_get.Parameters.Refresh;
    sp_etran_ecp_orders_get.Parameters.ParamByName('@date1').Value := Fdate1;
    sp_etran_ecp_orders_get.Parameters.ParamByName('@date2').Value := Fdate2+1;
    sp_etran_ecp_orders_get.Parameters.ParamByName('@set_order').Value := True;
    sp_etran_ecp_orders_get.Open;
  end;

  if cxPageControl2.ActivePageIndex = 2 then begin
    Query_ECP_Archive.Close;
    Query_ECP_Archive.Parameters.ParamByName('date1').Value := Fdate1;
    Query_ECP_Archive.Parameters.ParamByName('date2').Value := Fdate2+1;
    Query_ECP_Archive.Open;
  end;

  Screen.Cursor := crDefault;
end;

end.
