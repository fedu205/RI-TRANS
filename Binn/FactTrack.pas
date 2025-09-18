unit FactTrack;

interface
  uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Default,
  Dialogs, ComCtrls, cxStyles, cxCustomData, cxGraphics, cxFilter, cxData, cxDataStorage, cxEdit,
  cxGridLevel, cxClasses, cxControls, cxGridCustomView, cxGridCustomTableView, cxGridTableView, cxGridBandedTableView,
  cxGridDBBandedTableView, cxGrid, cxPropertiesStore, Menus, ADODB,
  cxButtons, cxLookAndFeels, cxColorComboBox, cxBarEditItem, DateUtils,
  cxCurrencyEdit, DBClient, cxContainer, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxGroupBox,
  dxStatusBar, dxBar, dxBarExtItems, DB, cxDBData, ExtCtrls,
  cxLookAndFeelPainters, StdCtrls, cxCalendar, ActiveX, cxCheckBox,
  cxCheckComboBox, cxPC, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMetropolis, dxSkinMetropolisDark, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue,
  dxSkinOffice2010Silver, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic,
  dxSkinSharp, dxSkinSharpPlus, dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008, dxSkinTheAsphaltWorld, dxSkinsDefaultPainters,
  dxSkinValentine, dxSkinVS2010, dxSkinWhiteprint, dxSkinXmas2008Blue, dxSkinscxPCPainter, dxBarBuiltInMenu, cxNavigator, dxCore, cxDateUtils,
  dxSkinsdxBarPainter, dxSkinOffice2016Colorful, dxSkinOffice2016Dark,
  dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, strutils, Clipbrd, dxColorEdit, cxLabel, cxMemo,
  cxButtonEdit, cxDataControllerConditionalFormattingRulesManagerDialog, dxSkinTheBezier, dxDateRanges, dxSkinOffice2019Colorful, cxImageComboBox,
  dxScrollbarAnnotations, dxSkinWXI, dxSkinBasic, dxSkinOffice2019Black, dxSkinOffice2019DarkGray, dxSkinOffice2019White;


type
  TfmFactTrack = class(TForm)
    DS_TrackVagon: TDataSource;
    cxPropertiesStore1: TcxPropertiesStore;
    dxBarManager1: TdxBarManager;
    dxBarManager1Bar1: TdxBar;
    dxBarSubItem2: TdxBarSubItem;
    N12: TdxBarButton;
    dxBarButton_Refresh: TdxBarButton;
    dxBarButton3: TdxBarButton;
    Popup_TrackVagon: TdxBarPopupMenu;
    N3: TdxBarButton;
    Excel3: TdxBarButton;
    N2: TdxBarButton;
    N4: TdxBarButton;
    N1: TdxBarSubItem;
    N82: TdxBarButton;
    N83: TdxBarButton;
    N14: TdxBarButton;
    N74: TdxBarButton;
    N10: TdxBarSubItem;
    cxGrid1: TcxGrid;
    cxGrid1DBBandedTableView1: TcxGridDBBandedTableView;
    cxGrid1DBBandedTableView1num_vagon: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1fact_weight: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1node_end_name: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1node_end_cod: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1kargoETSNG_name: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1kargoETSNG_cod: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1node_begin_name: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1node_begin_cod: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1road_begin_name: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1date_otpr: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1index_train: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1num_train: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1date_operation: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1time_operation: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1node_operation_name: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1node_operation_cod: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1FIO_users: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1fact_track_id: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1global_color: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1date_query: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1date_arrival: TcxGridDBBandedColumn;
    cxGrid1Level1: TcxGridLevel;
    dxBarButton9: TdxBarButton;
    cxGrid1DBBandedTableView1comment: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1vagon_id: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1comment1: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1comment2: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1comment3: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1comment4: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1comment5: TcxGridDBBandedColumn;
    dxBarButton10: TdxBarButton;
    cxGrid1DBBandedTableView1comment6: TcxGridDBBandedColumn;
    dxBarButton7: TdxBarButton;
    cxGrid1DBBandedTableView1comment7: TcxGridDBBandedColumn;
    dxBarButton11: TdxBarButton;
    dxBarButton12: TdxBarButton;
    cxGrid1DBBandedTableView1comment8: TcxGridDBBandedColumn;
    dxBarSubItem3: TdxBarSubItem;
    dxBarButton14: TdxBarButton;
    cxGrid1DBBandedTableView1node_end_road_name: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1doc_number: TcxGridDBBandedColumn;
    DS_History: TDataSource;
    Splitter1: TSplitter;
    dxBarButton_History: TdxBarButton;
    cxGrid1DBBandedTableView1node_begin_road_name: TcxGridDBBandedColumn;
    dxBarButton17: TdxBarButton;
    dxBarSubItem4: TdxBarSubItem;
    dxBarButton_UpdateInfo: TdxBarButton;
    Query_FactTrack: TADOQuery;
    cxGrid1DBBandedTableView1model_name: TcxGridDBBandedColumn;
    dxBarButton_Edit: TdxBarButton;
    cxGrid1DBBandedTableView1copper_calibration: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1fact_track_trip_id: TcxGridDBBandedColumn;
    dxBarButton4: TdxBarButton;
    dxBarButton5: TdxBarButton;
    cxGrid1DBBandedTableView1set_archive: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1grpol_okpo: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1grotpr_okpo: TcxGridDBBandedColumn;
    dxBarButton13: TdxBarButton;
    dxBarButton16: TdxBarButton;
    cxGrid1DBBandedTableView1comment9: TcxGridDBBandedColumn;
    dxBarButton18: TdxBarButton;
    dxBarButton19: TdxBarButton;
    dxBarButton20: TdxBarButton;
    dxBarButton21: TdxBarButton;
    dxBarButton22: TdxBarButton;
    dxBarButton23: TdxBarButton;
    dxBarButton24: TdxBarButton;
    cxPageControl1: TcxPageControl;
    cxTabSheet1: TcxTabSheet;
    cxTabSheet2: TcxTabSheet;
    Query_Trip: TADOQuery;
    DS_Trip: TDataSource;
    Popup_TrackTrip: TdxBarPopupMenu;
    dxBarSubItem7: TdxBarSubItem;
    dxBarButton45: TdxBarButton;
    dxBarButton46: TdxBarButton;
    dxBarButton47: TdxBarButton;
    dxBarSubItem5: TdxBarSubItem;
    dxBarButton27: TdxBarButton;
    dxBarButton28: TdxBarButton;
    dxBarButton29: TdxBarButton;
    cxGrid1DBBandedTableView1comment10: TcxGridDBBandedColumn;
    dxBarButton30: TdxBarButton;
    dxBarButton31: TdxBarButton;
    dxBarButton32: TdxBarButton;
    dxBarButton33: TdxBarButton;
    dxBarButton34: TdxBarButton;
    dxBarButton35: TdxBarButton;
    dxBarButton36: TdxBarButton;
    dxBarButton37: TdxBarButton;
    cxPageControl2: TcxPageControl;
    cxTabSheet3: TcxTabSheet;
    cxTabSheet4: TcxTabSheet;
    cxGrid2: TcxGrid;
    cxGrid2DBBandedTableView1: TcxGridDBBandedTableView;
    cxGrid2DBBandedTableView1num_vagon: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1fact_weight: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1node_end_name: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1node_end_cod: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1kargoETSNG_name: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1kargoETSNG_cod: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1node_begin_name: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1node_begin_cod: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1road_begin_name: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1road_end_name: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1date_otpr: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1index_train: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1num_train: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1date_operation: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1time_operation: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1node_operation_name: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1node_operation_cod: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1FIO_users: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1fact_track_id: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1global_color: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1cod_operation_vagon_name: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1cod_operation_vagon_name_full: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1cod_operation_vagon_cod: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1cod_operation_cod: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1model_name: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1arenda_firm_name: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1date_query: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1datpr: TcxGridDBBandedColumn;
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
    cxGrid2DBBandedTableView1time_otpr: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1doc_number: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1node_end_road_name: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1node_begin_road_name: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1uchet_name: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1copper_calibration: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1grpol_okpo: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1grotpr_okpo: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1fact_track_trip_id: TcxGridDBBandedColumn;
    cxGrid2Level1: TcxGridLevel;
    Query_HistoryTrip: TADOQuery;
    DS_HistoryTrip: TDataSource;
    cxGrid5: TcxGrid;
    cxGrid3DBBandedTableView1: TcxGridDBBandedTableView;
    cxGridLevel3: TcxGridLevel;
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
    cxGrid3DBBandedTableView1grotpr_okpo: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1doc_number: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1idReis: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1set_warning: TcxGridDBBandedColumn;
    cxGrid3: TcxGrid;
    cxGridDBBandedTableView1: TcxGridDBBandedTableView;
    cxGridDBBandedTableView1fact_track_trip_id: TcxGridDBBandedColumn;
    cxGridDBBandedTableView1num_vagon: TcxGridDBBandedColumn;
    cxGridDBBandedTableView1date_otpr: TcxGridDBBandedColumn;
    cxGridDBBandedTableView1date_arrival: TcxGridDBBandedColumn;
    cxGridDBBandedTableView1users_group_id: TcxGridDBBandedColumn;
    cxGridDBBandedTableView1node_begin_cod: TcxGridDBBandedColumn;
    cxGridDBBandedTableView1node_begin_name: TcxGridDBBandedColumn;
    cxGridDBBandedTableView1node_end_cod: TcxGridDBBandedColumn;
    cxGridDBBandedTableView1node_end_name: TcxGridDBBandedColumn;
    cxGridDBBandedTableView1kargoETSNG_cod: TcxGridDBBandedColumn;
    cxGridDBBandedTableView1kargoETSNG_name: TcxGridDBBandedColumn;
    cxGridDBBandedTableView1fact_weight: TcxGridDBBandedColumn;
    cxGridDBBandedTableView1min_date_operation: TcxGridDBBandedColumn;
    cxGridDBBandedTableView1max_date_operation: TcxGridDBBandedColumn;
    cxGridDBBandedTableView1note: TcxGridDBBandedColumn;
    cxGridDBBandedTableView1vagon_id: TcxGridDBBandedColumn;
    cxGridDBBandedTableView1next_date_repair: TcxGridDBBandedColumn;
    cxGridDBBandedTableView1model_name: TcxGridDBBandedColumn;
    cxGridDBBandedTableView1uchet_name: TcxGridDBBandedColumn;
    cxGridDBBandedTableView1copper_calibration: TcxGridDBBandedColumn;
    cxGridDBBandedTableView1capacity: TcxGridDBBandedColumn;
    cxGridDBBandedTableView1grotpr_okpo: TcxGridDBBandedColumn;
    cxGridDBBandedTableView1doc_number: TcxGridDBBandedColumn;
    cxGridDBBandedTableView1set_warning: TcxGridDBBandedColumn;
    cxGridLevel1: TcxGridLevel;
    dxBarPopupMenu3: TdxBarPopupMenu;
    dxBarButton40: TdxBarButton;
    dxBarButton41: TdxBarButton;
    dxBarButton42: TdxBarButton;
    Query_History: TADOQuery;
    dxBarButton43: TdxBarButton;
    dxBarButton54: TdxBarButton;
    cxGrid1DBBandedTableView1comment11: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1instruction_cod: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1instruction_date: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1instruction_id: TcxGridDBBandedColumn;
    dxBarButton61: TdxBarButton;
    ClientDataSet1: TClientDataSet;
    ClientDataSet1node_begin_id: TIntegerField;
    ClientDataSet1node_begin_cod: TStringField;
    ClientDataSet1node_begin_name: TStringField;
    dxBarButton62: TdxBarButton;
    cxGrid1DBBandedTableView1comment12: TcxGridDBBandedColumn;
    dxBarButton25: TdxBarButton;
    dxBarSubItem9: TdxBarSubItem;
    dxBarButton26: TdxBarButton;
    dxBarButton64: TdxBarButton;
    dxBarButton65: TdxBarButton;
    cxGridDBBandedTableView1etran_ecp_id: TcxGridDBBandedColumn;
    cxGridDBBandedTableView1etran_comment: TcxGridDBBandedColumn;
    dxBarButton66: TdxBarButton;
    dxBarButton67: TdxBarButton;
    dxBarManager1Bar2: TdxBar;
    dxBarManager1Bar3: TdxBar;
    dxBarButton38: TdxBarButton;
    dxBarButton39: TdxBarButton;
    dxBarSubItem8: TdxBarSubItem;
    dxBarButton49: TdxBarButton;
    dxBarSubItem10: TdxBarSubItem;
    dxBarButton50: TdxBarButton;
    dxBarDockControl1: TdxBarDockControl;
    dxBarButton51: TdxBarButton;
    dxBarButton52: TdxBarButton;
    dxBarDockControl2: TdxBarDockControl;
    dxBarButton53: TdxBarButton;
    dxBarButton68: TdxBarButton;
    dxBarPopupMenu2: TdxBarPopupMenu;
    dxBarSubItem13: TdxBarSubItem;
    dxBarButton86: TdxBarButton;
    dxBarButton87: TdxBarButton;
    cxGrid2DBBandedTableView1etran_ecp_id: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1etran_comment: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1etran_comment: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1etran_ecp_id: TcxGridDBBandedColumn;
    dxBarButton69: TdxBarButton;
    dxBarButton70: TdxBarButton;
    dxBarButton71: TdxBarButton;
    dxBarButton72: TdxBarButton;
    dxBarButton73: TdxBarButton;
    cxGrid1DBBandedTableView1client_firm_customer_name: TcxGridDBBandedColumn;
    dxBarButton74: TdxBarButton;
    dxBarButton75: TdxBarButton;
    dxBarButton76: TdxBarButton;
    dxBarButton77: TdxBarButton;
    cxGrid1DBBandedTableView1color: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1comment13: TcxGridDBBandedColumn;
    dxBarButton78: TdxBarButton;
    dxBarButton79: TdxBarButton;
    SP_fact_track_stat_get: TADOStoredProc;
    dxBarButton801: TdxBarButton;
    dxBarSubItem12: TdxBarSubItem;
    dxBarButton98: TdxBarButton;
    dxBarButton89: TdxBarButton;
    dxBarButton90: TdxBarButton;
    dxBarButton91: TdxBarButton;
    dxBarButton92: TdxBarButton;
    dxBarButton96: TdxBarButton;
    Panel1: TPanel;
    cxTextEdit13: TcxTextEdit;
    cxTextEdit1: TcxTextEdit;
    cxTextEdit2: TcxTextEdit;
    cxTextEdit3: TcxTextEdit;
    cxTextEdit4: TcxTextEdit;
    cxTextEdit5: TcxTextEdit;
    cxTextEdit7: TcxTextEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    cxTextEdit8: TcxTextEdit;
    Label9: TLabel;
    dxBarButton97: TdxBarButton;
    dxBarButton99: TdxBarButton;
    cxGrid1DBBandedTableView1set_on_run: TcxGridDBBandedColumn;
    dxBarButton100: TdxBarButton;
    dxBarButton102: TdxBarButton;
    dxBarSubItem16: TdxBarSubItem;
    cxGridDBBandedTableView1status_trip: TcxGridDBBandedColumn;
    dxBarSubItem17: TdxBarSubItem;
    dxBarButton104: TdxBarButton;
    cxTextEdit6: TcxTextEdit;
    Label4: TLabel;
    cxGrid2DBBandedTableView1client_firm_customer_name: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1comment9: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1comment10: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1comment11: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1comment12: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1comment13: TcxGridDBBandedColumn;
    dxBarButton57: TdxBarButton;
    cxGrid1DBBandedTableView1IsEmpty: TcxGridDBBandedColumn;
    dxBarButton15: TdxBarButton;
    dxBarButton58: TdxBarButton;
    cxGridDBBandedTableView1grotpr_name: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1grotpr_name: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1grpol_name: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1grotpr_name: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1grpol_name: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1grotpr_name: TcxGridDBBandedColumn;
    dxBarButton59: TdxBarButton;

cxGrid1DBBandedTableView1set_sanctions_vagon: TcxGridDBBandedColumn;
    Label10: TLabel;
    cxTextEdit9: TcxTextEdit;
    dxBarButton63: TdxBarButton;
    dxBarButton105: TdxBarButton;
    dxBarButton106: TdxBarButton;
    dxBarButton107: TdxBarButton;
    dxBarButton108: TdxBarButton;
    dxBarButton109: TdxBarButton;
    dxBarButton110: TdxBarButton;
    dxBarButton111: TdxBarButton;
    dxBarSubItem6: TdxBarSubItem;
    dxBarButton120: TdxBarButton;
    dxBarButton121: TdxBarButton;
    cxGrid2DBBandedTableView1set_archive: TcxGridDBBandedColumn;
    cxGridDBBandedTableView1next_type_repair_name: TcxGridDBBandedColumn;
    dxBarButton114: TdxBarButton;
    cxGrid1DBBandedTableView1comment14: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1vagon_owner_comment: TcxGridDBBandedColumn;
    dxBarButton48: TdxBarButton;
    cxGrid1DBBandedTableView1last_depot_repair_date: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1last_capital_repair_date: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1set_control_repair: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1vid_next_repair: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1distance_node_end: TcxGridDBBandedColumn;
    Panel2: TPanel;
    Label20: TLabel;
    Label11: TLabel;
    cxGridDBBandedTableView1etran_date_ready: TcxGridDBBandedColumn;
    cxGridDBBandedTableView1etran_date_delivery: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1OwnerOkpoName: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1ArendOkpoName: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1time_otpr: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1type_park_name: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1broken_name: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1prev_kargoETSNG_cod: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1prev_kargoETSNG_name: TcxGridDBBandedColumn;
    dxBarButton115: TdxBarButton;
    cxGrid2DBBandedTableView1type_park_name: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1date_arrival: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1road_operation_name: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1firm_customer_name: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1comment14: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1capacity: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1node_begin_name_etr: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1node_end_name_etr: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1num_document_etr: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1claim_num_etr: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1etran_oper_date: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1etran_oper_result: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1payer_cod: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1date_build: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1volume: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1type_park_cod: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1rod_vagon_name: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1color: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1milage_rest_calc: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1set_on_run: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1set_sanctions_vagon: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1IsEmpty: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1vagon_owner_comment: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1last_depot_repair_date: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1last_capital_repair_date: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1last_depot_repair_depo: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1last_capital_repair_depo: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1defect_cod: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1defect_name: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1set_control_repair: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1vid_next_repair: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1days_route: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1days_route_end: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1days_free: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1distance_node_end: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1date_arrival_plan: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1set_arrival: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1vagon_status: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1date_otpr_zd: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1transport_pay: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1brief_name: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1tracking_type: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1gu12_cod: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1factory_cod: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1factory_name: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1vid_next_repair_name: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1operator_rzd_okpo: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1operator_rzd_name: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1OwnerOkpoName: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1ArendOkpoName: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1broken_name: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1prev_kargoETSNG_cod: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1prev_kargoETSNG_name: TcxGridDBBandedColumn;
    dxBarButton116: TdxBarButton;
    dxBarButton103: TdxBarButton;
    dxBarButton117: TdxBarButton;
    SP_StayByNode: TADOStoredProc;
    DS_StayByNode: TDataSource;
    cxTabSheet5: TcxTabSheet;
    cxGrid12: TcxGrid;
    cxGrid12DBBandedTableView1: TcxGridDBBandedTableView;
    cxGrid12DBBandedTableView1fact_track_trip_id: TcxGridDBBandedColumn;
    cxGrid12DBBandedTableView1num_vagon: TcxGridDBBandedColumn;
    cxGrid12DBBandedTableView1doc_number: TcxGridDBBandedColumn;
    cxGrid12DBBandedTableView1date_otpr: TcxGridDBBandedColumn;
    cxGrid12DBBandedTableView1date_arrival: TcxGridDBBandedColumn;
    cxGrid12DBBandedTableView1node_begin_name: TcxGridDBBandedColumn;
    cxGrid12DBBandedTableView1node_end_name: TcxGridDBBandedColumn;
    cxGrid12DBBandedTableView1kargoETSNG_name: TcxGridDBBandedColumn;
    cxGrid12DBBandedTableView1fact_weight: TcxGridDBBandedColumn;
    cxGrid12DBBandedTableView1days_stay_end: TcxGridDBBandedColumn;
    cxGrid12Level1: TcxGridLevel;
    Popup_StayNode: TdxBarPopupMenu;
    Query_History2: TADOQuery;
    cxGrid12DBBandedTableView1set_archive: TcxGridDBBandedColumn;
    cxGrid12DBBandedTableView1date_arrival_1: TcxGridDBBandedColumn;
    cxGrid12DBBandedTableView1date_otpr_1: TcxGridDBBandedColumn;
    cxGrid12DBBandedTableView1days_stay_begin: TcxGridDBBandedColumn;
    dxBarButton2: TdxBarButton;
    cxGrid1DBBandedTableView1rod_vagon_cod: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1rod_vagon_name: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1grpol_tgnl: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1grotpr_tgnl: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1kargoGNG_cod: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1kargoGNG_name: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1milage_load: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1milage_empty: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1milage_sum: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1milage_norm: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1cod_operation_vagon_name: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1num_vagon_train: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1broken_num: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1num_way: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1date_norm_delivery: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1distance_node_begin: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1distance: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1days_free_detail: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1file_load_name: TcxGridDBBandedColumn;
    cxGrid12DBBandedTableView1Column1: TcxGridDBBandedColumn;
    cxGrid12DBBandedTableView1Column2: TcxGridDBBandedColumn;
    cxGrid12DBBandedTableView1Column3: TcxGridDBBandedColumn;
    cxGrid12DBBandedTableView1Column4: TcxGridDBBandedColumn;
    cxGrid12DBBandedTableView1Column5: TcxGridDBBandedColumn;
    cxGrid12DBBandedTableView1Column6: TcxGridDBBandedColumn;
    cxGrid12DBBandedTableView1Column7: TcxGridDBBandedColumn;
    cxGrid12DBBandedTableView1Column8: TcxGridDBBandedColumn;
    cxGrid12DBBandedTableView1comment6: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1file_load_name: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1Column1: TcxGridDBBandedColumn;
    cxGrid12DBBandedTableView1node_end_name_1: TcxGridDBBandedColumn;
    cxGrid12DBBandedTableView1firm_customer_name: TcxGridDBBandedColumn;
    cxGrid12DBBandedTableView1contract_cod: TcxGridDBBandedColumn;
    cxGrid12DBBandedTableView1contract_agree_cod: TcxGridDBBandedColumn;
    cxGrid12DBBandedTableView1contract_agree_date: TcxGridDBBandedColumn;
    cxGrid12DBBandedTableView1Column10: TcxGridDBBandedColumn;

    procedure N4Click(Sender: TObject);
    procedure N2Click(Sender: TObject);
    procedure cxGrid1DBBandedTableView1FocusedItemChanged(Sender: TcxCustomGridTableView; APrevFocusedItem, AFocusedItem: TcxCustomGridTableItem);
    procedure cxGrid1DBBandedTableView1CustomDrawColumnHeader(Sender: TcxGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxGridColumnHeaderViewInfo; var ADone: Boolean);
    procedure MenuItem8Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure N14Click(Sender: TObject);
    procedure N74Click(Sender: TObject);
    procedure ToolButton12Click(Sender: TObject);
    procedure cxGrid1DBBandedTableView1DataControllerFilterChanged(Sender: TObject);
    procedure l(Sender: TcxCustomGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
    procedure Action_DeleteExecute(Sender: TObject);
    procedure N82Click(Sender: TObject);
    procedure Action_RefreshExecute(Sender: TObject);
    procedure Excel3Click(Sender: TObject);
    procedure N12Click(Sender: TObject);
    procedure Action_FindExecute(Sender: TObject);
    procedure cxGrid1DBBandedTableView1CustomDrawCell(Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
    procedure cxGrid1DBBandedTableView1KeyPress(Sender: TObject; var Key: Char);
    procedure dxBarButton9Click(Sender: TObject);
    procedure dxBarButton10Click(Sender: TObject);
    procedure dxBarButton7Click(Sender: TObject);
    procedure dxBarButton12Click(Sender: TObject);
    procedure dxBarButton14Click(Sender: TObject);
    procedure dxBarButton_HistoryClick(Sender: TObject);
    procedure Popup_TrackVagonPopup(Sender: TObject);
    procedure dxBarButton_SelectClick(Sender: TObject);
    procedure dxBarButton17Click(Sender: TObject);
    procedure dxBarButton_UpdateInfoClick(Sender: TObject);
    procedure cxGrid2DBBandedTableView1CustomDrawCell(Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;      AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
    procedure cxGrid1DBBandedTableView1CellDblClick(Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;   AShift: TShiftState; var AHandled: Boolean);
    procedure dxBarButton_EditClick(Sender: TObject);
    procedure dxBarButton_FilterRecords1Click(Sender: TObject);
    procedure dxBarButton4Click(Sender: TObject);
    procedure dxBarButton13Click(Sender: TObject);
    procedure dxBarButton16Click(Sender: TObject);
    procedure dxBarButton18Click(Sender: TObject);
    procedure dxBarButton19Click(Sender: TObject);
    procedure dxBarButton20Click(Sender: TObject);
    procedure dxBarButton21Click(Sender: TObject);
    procedure dxBarButton23Click(Sender: TObject);
    procedure cxGridDBBandedTableView1CustomDrawCell(Sender: TcxCustomGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
    procedure dxBarButton45Click(Sender: TObject);
    procedure dxBarButton46Click(Sender: TObject);
    procedure dxBarButton47Click(Sender: TObject);
    procedure cxGridDBBandedTableView1FocusedRecordChanged(Sender: TcxCustomGridTableView; APrevFocusedRecord, AFocusedRecord: TcxCustomGridRecord; ANewItemRecordFocusingChanged: Boolean);
    procedure dxBarButton28Click(Sender: TObject);
    procedure dxBarButton29Click(Sender: TObject);
    procedure dxBarButton30Click(Sender: TObject);
    procedure dxBarButton31Click(Sender: TObject);
    procedure dxBarButton32Click(Sender: TObject);
    procedure dxBarButton33Click(Sender: TObject);
    procedure dxBarButton37Click(Sender: TObject);
    procedure dxBarButton40Click(Sender: TObject);
    procedure Popup_HistoryPopup(Sender: TObject);
    procedure dxBarButton54Click(Sender: TObject);
    procedure dxBarButton61Click(Sender: TObject);
    procedure dxBarButton62Click(Sender: TObject);
    procedure dxBarButton63Click(Sender: TObject);
    procedure dxBarButton25Click(Sender: TObject);
    procedure dxBarButton64Click(Sender: TObject);
    procedure dxBarButton65Click(Sender: TObject);
    procedure cxPageControl2Change(Sender: TObject);
    procedure dxBarButton53Click(Sender: TObject);
    procedure dxBarButton51Click(Sender: TObject);
    procedure dxBarButton52Click(Sender: TObject);
    procedure dxBarButton38Click(Sender: TObject);
    procedure dxBarButton68Click(Sender: TObject);
    procedure dxBarButton49Click(Sender: TObject);
    procedure dxBarButton86Click(Sender: TObject);
    procedure dxBarButton87Click(Sender: TObject);
    procedure dxBarButton66Click(Sender: TObject);
    procedure dxBarButton67Click(Sender: TObject);
    procedure dxBarButton69Click(Sender: TObject);
    procedure dxBarButton70Click(Sender: TObject);
    procedure dxBarButton71Click(Sender: TObject);
    procedure dxBarButton72Click(Sender: TObject);
    procedure dxBarButton73Click(Sender: TObject);
    procedure dxBarButton74Click(Sender: TObject);
    procedure dxBarButton75Click(Sender: TObject);
    procedure dxBarButton76Click(Sender: TObject);
    procedure dxBarButton78Click(Sender: TObject);
    procedure dxBarButton90Click(Sender: TObject);
    procedure dxBarButton89Click(Sender: TObject);
    procedure dxBarButton91Click(Sender: TObject);
    procedure dxBarButton92Click(Sender: TObject);
    procedure dxBarButton96Click(Sender: TObject);
    procedure dxBarButton97Click(Sender: TObject);

    procedure cxGrid1DBBandedTableView1SelectionChanged(Sender: TcxCustomGridTableView);
    procedure dxBarButton99Click(Sender: TObject);
    procedure dxBarButton100Click(Sender: TObject);
    procedure dxBarButton102Click(Sender: TObject);
    procedure dxBarButton104Click(Sender: TObject);
    procedure dxBarButton15Click(Sender: TObject);
    procedure dxBarButton59Click(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure dxBarButton105Click(Sender: TObject);
    procedure dxBarButton107Click(Sender: TObject);
    procedure dxBarButton110Click(Sender: TObject);
    procedure dxBarButton111Click(Sender: TObject);
    procedure cxGrid3DBBandedTableView1CustomDrawCell(Sender: TcxCustomGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
    procedure dxBarButton120Click(Sender: TObject);
    procedure dxBarButton114Click(Sender: TObject);
    procedure dxBarButton48Click(Sender: TObject);
    procedure dxBarButton115Click(Sender: TObject);
    procedure dxBarButton116Click(Sender: TObject);
    procedure dxBarButton103Click(Sender: TObject);
    procedure dxBarButton117Click(Sender: TObject);
    procedure cxGrid12DBBandedTableView1SelectionChanged(Sender: TcxCustomGridTableView);
    procedure dxBarButton2Click(Sender: TObject);
    procedure cxGrid12DBBandedTableView1CustomDrawCell(Sender: TcxCustomGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);


  private
    FVagonSQL      : string;
    FQuerySettings : Variant;
    Ffact_track_id : integer;

    Ftime_start: TDateTime;
    Fstr_trip_id: string;

    Fdate_history1 : TDateTime;
    Fdate_history2 : TDateTime;

    Fdate_trip1 : TDateTime;
    Fdate_trip2 : TDateTime;
    Ftype_view  : integer;

    FClientDS_model_vagon_kargoETSNG_cod : TClientDataSet;

    procedure SetVagonSQL(value: Variant);
    procedure SetVagonTransport(value: Variant);

    procedure StartFactTrackSaveProcess(xml_str: WideString; date_query: TDateTime; format_file: integer);
    function  NodeSearchCod(connect : TADOConnection; ClientDS: TClientDataSet; type_inf_id: integer; date_from_to: TDateTime; var inf_obj_cod: string; var inf_obj_name: string): boolean;
    function  RoadSearchCod(connect : TADOConnection; ClientDS: TClientDataSet; type_inf_id: integer; date_from_to: TDateTime; var inf_obj_cod: string; var inf_obj_name: string): boolean;
    function  KargoSearchCod(connect : TADOConnection; ClientDS: TClientDataSet; type_inf_id: integer; date_from_to: TDateTime; var inf_obj_cod: string; var inf_obj_name: string): boolean;
    procedure ExcludeSwitchVagon(cxGridDB : TcxGridDBBandedTableView; cxGridDBColumnIndex, type_action : integer; ObjectButton : TObject);//процедура исключения / включения вагонов из рейса / в рейс и пересчет рейса
    procedure TripRecalc(cxGridDB : TcxGridDBBandedTableView; cxGridDBColumnIndex : integer);//пересчет рейсов

    procedure StatusLoadDisl();
  public
    property _GetFactTrackID: integer read Ffact_track_id;
    constructor Create(AOwner : TApplication; flag: boolean; type_view: integer);
  published
    property _GetVagonSQL: variant read FQuerySettings;
    property _GetStrTrip_id: string read Fstr_trip_id;

    property _SetVagonSQL : Variant write SetVagonSQL;
    property _SetVagonTransport : Variant write SetVagonTransport;
    property _GetTypeView : integer read Ftype_view;
  end;

var
  fmFactTrack: TfmFactTrack;

implementation
  uses Raznoe, Registry, Other, ComObj, Main, Period, FactTrackAdd, Filter,  Agree2;
{$R *.dfm}

{ TfmFactTrack }
constructor TfmFactTrack.Create(AOwner: TApplication; flag: boolean; type_view: integer);
begin
  Screen.Cursor := crHourglass;
  inherited Create(AOwner);

  Ftype_view := type_view;

  case Ftype_view of
    1 : Caption := 'Дислокация вагонов (рейсы)';
    2 : Caption := 'Дислокация вагонов (простои на станциях)';
  end;

  if not LisCheck1(fmMain.Lis.ConnectionString) then begin
    fmMain.Lis.Connected := False;
    fmMain.Lis.ConnectionString := 'Persist Security Info=True;Provider=DB.1;User ID='+usr_pwd^.user_name+';Password='+usr_pwd^.user_pass+';Initial Catalog='+usr_pwd^.catalog+';Data Source='+usr_pwd^.server+';';
    Sleep(20000);
  end;

  if flag then begin
    Visible := False;
    dxBarButton100.Visible := ivAlways;
    FormStyle := fsNormal;
    WindowState := wsMaximized;
  end else begin
    FormStyle := fsMDIChild;
    WindowState := wsMaximized;
  end;

  StoreRegistryGrid(rgLoad,'\Software\Lis1\FactTrack_Grids', cxGrid1DBBandedTableView1, 3);
  StoreRegistryGrid(rgLoad,'\Software\Lis1\FactTrack_Grids', cxGrid2DBBandedTableView1);
  StoreRegistryGrid(rgLoad,'\Software\Lis1\FactTrack_Grids', cxGrid3DBBandedTableView1, 3);
  StoreRegistryGrid(rgLoad,'\Software\Lis1\FactTrack_Grids', cxGridDBBandedTableView1);
  StoreRegistryGrid(rgLoad,'\Software\Lis1\FactTrack_Grids', cxGrid12DBBandedTableView1);

  Fdate_history1 := IncMonth(Date, -1);
  Fdate_history2 := Date;
  dxBarSubItem8.Caption := FormatDateTime('dd.mm.yy', Fdate_history1) + ' - ' + FormatDateTime('dd.mm.yy', Fdate_history2);

  Fdate_trip1 := IncMonth(Date, -1);
  Fdate_trip2 := Date;
  dxBarSubItem10.Caption := FormatDateTime('dd.mm.yy', Fdate_trip1) + ' - ' + FormatDateTime('dd.mm.yy', Fdate_trip2);

  cxPageControl1.HideTabs := True;
  ClientDataSet1.CreateDataSet;
  SetUsersModuleRights(self, fmMain.Lis);
  cxPageControl2.ActivePageIndex := 0;


  //создаем клиент дата сед для хранения моделей вагонов и грузов которые они могут перевозить
  if Assigned(FClientDS_model_vagon_kargoETSNG_cod) = False then begin
    FClientDS_model_vagon_kargoETSNG_cod := TClientDataSet.Create(nil);
    FClientDS_model_vagon_kargoETSNG_cod.FieldDefs.Add('model_vagon', ftstring, 20);
    FClientDS_model_vagon_kargoETSNG_cod.FieldDefs.Add('kargoETSNG_cod', ftInteger);
    FClientDS_model_vagon_kargoETSNG_cod.CreateDataSet;
    FClientDS_model_vagon_kargoETSNG_cod.LogChanges := False;
  end else
    FClientDS_model_vagon_kargoETSNG_cod.EmptyDataSet;

  StatusLoadDisl();
  MonitorEventFormOpen('OPEN_FORM', self.Name, fmMain.Lis, -9);
  Screen.Cursor := crDefault;
end;


procedure TfmFactTrack.StatusLoadDisl();
var Q: TADOQuery;
begin
  Q := TADOQuery.Create(nil);
  Q.Connection := fmMain.Lis;
  Q.SQL.Add('SELECT');
  Q.SQL.Add('(SELECT max(query_date)  FROM FACT_TRACK_QUERY) dt_ok,');
  Q.SQL.Add('(SELECT top 1 query_rows_count FROM FACT_TRACK_QUERY WHERE query_date = (SELECT max(query_date) FROM FACT_TRACK_QUERY)) cnt_vag,');
  Q.SQL.Add('(SELECT max(query_date)  FROM FACT_TRACK_QUERY_ERROR) dt_err,');
  Q.SQL.Add('(SELECT count(1) FROM FACT_TRACK_QUERY_ERROR WHERE query_date > (SELECT max(query_date) FROM FACT_TRACK_QUERY)) cnt_error');
  Q.Open;

  if Q.FieldByName('dt_ok').AsDateTime > Q.FieldByName('dt_err').AsDateTime then begin
//    Label11.Font.Color := clWindowText;
    Label11.Caption := 'Последняя загрузка ' + FormatDateTime('dd.mm.yy hh:MM:ss', Q.FieldByName('dt_ok').AsDateTime) + ' вагонов загружено ' + Q.FieldByName('cnt_vag').AsString + '.'
  end else begin
//    Label11.Font.Color := clMaroon;
    Label11.Caption  := 'Дислокация не загружена! Поставщик не отвечает. Кол-во попыток получить дисл. ' + Q.FieldByName('cnt_error').AsString + '. ' +
                        'Последняя загрузка ' + FormatDateTime('dd.mm.yy hh:MM:ss', Q.FieldByName('dt_ok').AsDateTime) + ' вагонов загружено ' + Q.FieldByName('cnt_vag').AsString + '.'
  end;

  Q.Free;

end;

procedure TfmFactTrack.Action_DeleteExecute(Sender: TObject);
var i : integer;
   SP : TADOStoredProc;
begin
  if Application.MessageBox('Вы точно уверены?', 'Внимание', MB_OKCANCEL) = IDOK then begin
    Screen.Cursor := -11;

    SP := TADOStoredProc.Create(nil);
    SP.Connection := fmMain.Lis;
    SP.ProcedureName := 'sp_fact_track_delete;1';
    SP.Parameters.Refresh;

    for i := 0 to cxGrid1DBBandedTableView1.Controller.SelectedRowCount - 1 do begin
      SP.Close;
      SP.Parameters.ParamByName('@fact_track_id').Value := cxGrid1DBBandedTableView1.Controller.SelectedRows[i].Values[cxGrid1DBBandedTableView1.GetColumnByFieldName('fact_track_id').Index];
      SP.Parameters.ParamByName('@type_track').Value := 0;
        try
          SP.ExecProc;
          ShowTextMessage('Осталось ' + IntToStr(cxGrid1DBBandedTableView1.Controller.SelectedRowCount - i) + ' записей...', False);
        except
        end;
    end;

    SP.Free;
    ShowTextMessage;
    RefreshQueryGrid(cxGrid1DBBandedTableView1, 'fact_track_id', cxGrid1DBBandedTableView1fact_track_id.DataBinding.Field.AsInteger);
  end;
end;

function TfmFactTrack.NodeSearchCod(connect : TADOConnection; ClientDS: TClientDataSet; type_inf_id: integer; date_from_to: TDateTime; var inf_obj_cod: string; var inf_obj_name: string): boolean;
var SP_inf_obj_search_cod : TADOStoredProc;
                        Q : TADOQuery;
begin
  if ClientDS.Locate('search_cod', inf_obj_cod, []) = False then begin
    SP_inf_obj_search_cod := TADOStoredProc.Create(nil);
    SP_inf_obj_search_cod.Connection := connect;
    SP_inf_obj_search_cod.ProcedureName := 'sp_inf_obj_search_cod';
    SP_inf_obj_search_cod.Parameters.Refresh;
    SP_inf_obj_search_cod.Parameters.ParamByName('@inf_obj_cod'  ).Value := inf_obj_cod;
    SP_inf_obj_search_cod.Parameters.ParamByName('@inf_obj_id'   ).Value := -9;
    SP_inf_obj_search_cod.Parameters.ParamByName('@type_inf_id'  ).Value := 16;
    SP_inf_obj_search_cod.Parameters.ParamByName('@date_from_to' ).Value := DateOf(date_from_to);
    SP_inf_obj_search_cod.Parameters.ParamByName('@inf_obj_name' ).Value := null;
    SP_inf_obj_search_cod.ExecProc;

    ClientDS.Append;
    ClientDS.FieldByName('node_id'   ).Value := SP_inf_obj_search_cod.Parameters.ParamByName('@inf_obj_id'  ).Value;
    ClientDS.FieldByName('search_cod').Value := inf_obj_cod;
    ClientDS.FieldByName('node_cod'  ).Value := SP_inf_obj_search_cod.Parameters.ParamByName('@inf_obj_cod' ).Value;
    ClientDS.FieldByName('node_name' ).Value := SP_inf_obj_search_cod.Parameters.ParamByName('@inf_obj_name').Value;
    ClientDS.Post;

    Q := TADOQuery.Create(nil);
    Q.Connection := connect;
    Q.SQL.Add('SELECT top 1 inf_obj_road.inf_obj_name, inf_obj_road.inf_obj_cod');
	  Q.SQL.Add('FROM	  inf_obj_road');
    Q.SQL.Add('       inner join inf_obj_node on inf_obj_road.inf_obj_id = inf_obj_node.road_id');
	  Q.SQL.Add('WHERE	inf_obj_node.inf_obj_id = ' + IntToStr(SP_inf_obj_search_cod.Parameters.ParamByName('@inf_obj_id'  ).Value));
    Q.Open;

    ClientDS.Locate('search_cod', inf_obj_cod, []);
    ClientDS.Edit;
    ClientDS.FieldByName('road_cod' ).Value := Q.FieldByName('inf_obj_cod' ).Value;
    ClientDS.FieldByName('road_name').Value := Q.FieldByName('inf_obj_name').Value;
    ClientDS.Post;

    Q.Free;

    SP_inf_obj_search_cod.Free;
  end;


  if ClientDS.Locate('search_cod', inf_obj_cod, []) then begin
    if type_inf_id = 16 then begin
      inf_obj_cod  := ClientDS.FieldByName('node_cod' ).AsString;
      inf_obj_name := ClientDS.FieldByName('node_name').AsString;
    end;

    if type_inf_id = 17 then begin
      inf_obj_cod  := ClientDS.FieldByName('road_cod').AsString;
      inf_obj_name := ClientDS.FieldByName('road_name').AsString;
    end;

    Result := True;
  end else begin
    inf_obj_name := '';
    Result := False;
  end;
end;


function TfmFactTrack.RoadSearchCod(connect : TADOConnection; ClientDS: TClientDataSet; type_inf_id: integer; date_from_to: TDateTime; var inf_obj_cod: string; var inf_obj_name: string): boolean;
var SP_inf_obj_search_cod : TADOStoredProc;
begin
  if ClientDS.Locate('search_cod', inf_obj_cod, []) = False then begin
    SP_inf_obj_search_cod := TADOStoredProc.Create(nil);
    SP_inf_obj_search_cod.Connection := connect;
    SP_inf_obj_search_cod.ProcedureName := 'sp_inf_obj_search_cod';
    SP_inf_obj_search_cod.Parameters.Refresh;
    SP_inf_obj_search_cod.Parameters.ParamByName('@inf_obj_cod'  ).Value := inf_obj_cod;
    SP_inf_obj_search_cod.Parameters.ParamByName('@inf_obj_id'   ).Value := -9;
    SP_inf_obj_search_cod.Parameters.ParamByName('@type_inf_id'  ).Value := 13;
    SP_inf_obj_search_cod.Parameters.ParamByName('@date_from_to' ).Value := DateOf(date_from_to);
    SP_inf_obj_search_cod.Parameters.ParamByName('@inf_obj_name' ).Value := null;
    SP_inf_obj_search_cod.ExecProc;

    ClientDS.Append;
    ClientDS.FieldByName('road_id'   ).Value := SP_inf_obj_search_cod.Parameters.ParamByName('@inf_obj_id'  ).Value;
    ClientDS.FieldByName('search_cod').Value := inf_obj_cod;
    ClientDS.FieldByName('road_cod'  ).Value := SP_inf_obj_search_cod.Parameters.ParamByName('@inf_obj_cod' ).Value;
    ClientDS.FieldByName('road_name' ).Value := SP_inf_obj_search_cod.Parameters.ParamByName('@inf_obj_name').Value;
    ClientDS.Post;

    SP_inf_obj_search_cod.Free;
  end;


  if ClientDS.Locate('search_cod', inf_obj_cod, []) then begin
    inf_obj_cod  := ClientDS.FieldByName('road_cod').AsString;
    inf_obj_name := ClientDS.FieldByName('road_name').AsString;
    Result := True;
  end else begin
    inf_obj_name := '';
    Result := False;
  end;
end;


function TfmFactTrack.KargoSearchCod(connect : TADOConnection; ClientDS: TClientDataSet; type_inf_id: integer; date_from_to: TDateTime; var inf_obj_cod: string; var inf_obj_name: string): boolean;
var SP_inf_obj_search_cod : TADOStoredProc;
begin
  if ClientDS.Locate('search_cod', inf_obj_cod, []) = False then begin
    SP_inf_obj_search_cod := TADOStoredProc.Create(nil);
    SP_inf_obj_search_cod.Connection := connect;
    SP_inf_obj_search_cod.ProcedureName := 'sp_inf_obj_search_cod';
    SP_inf_obj_search_cod.Parameters.Refresh;
    SP_inf_obj_search_cod.Parameters.ParamByName('@inf_obj_cod'  ).Value := inf_obj_cod;
    SP_inf_obj_search_cod.Parameters.ParamByName('@inf_obj_id'   ).Value := -9;
    SP_inf_obj_search_cod.Parameters.ParamByName('@type_inf_id'  ).Value := 10;
    SP_inf_obj_search_cod.Parameters.ParamByName('@date_from_to' ).Value := DateOf(date_from_to);
    SP_inf_obj_search_cod.Parameters.ParamByName('@inf_obj_name' ).Value := null;
    SP_inf_obj_search_cod.ExecProc;

    ClientDS.Append;
    ClientDS.FieldByName('kargo_id'  ).Value := SP_inf_obj_search_cod.Parameters.ParamByName('@inf_obj_id'  ).Value;
    ClientDS.FieldByName('search_cod').Value := inf_obj_cod;
    ClientDS.FieldByName('kargo_cod' ).Value := SP_inf_obj_search_cod.Parameters.ParamByName('@inf_obj_cod' ).Value;
    ClientDS.FieldByName('kargo_name').Value := SP_inf_obj_search_cod.Parameters.ParamByName('@inf_obj_name').Value;
    ClientDS.Post;

    SP_inf_obj_search_cod.Free;
  end;


  if ClientDS.Locate('search_cod', inf_obj_cod, []) then begin
    inf_obj_cod  := ClientDS.FieldByName('kargo_cod' ).AsString;
    inf_obj_name := ClientDS.FieldByName('kargo_name').AsString;
    Result := True;
  end else begin
    inf_obj_name := '';
    Result := False;
  end;
end;


procedure TfmFactTrack.Action_FindExecute(Sender: TObject);
var S: Variant;
begin
  S := ShowFactTrackVagonDlg(Application.Handle, usr_pwd, Ftype_view);
  _SetVagonSQL := S;
end;

procedure TfmFactTrack.dxBarButton17Click(Sender: TObject);
type
  TFunc = function(AppHand:THandle) : Variant;
var                List : TStringList;
                      i : integer;
cxGridDBBandedTableView : TcxGridDBBandedTableView;
                 FDic   : TFunc;
                 handle : THandle;
                 v      : Variant;
                 str    : string;
begin
  case cxPageControl1.ActivePageIndex of
    0 : cxGridDBBandedTableView := cxGrid1DBBandedTableView1;
    1 : cxGridDBBandedTableView := cxGridDBBandedTableView1;
  end;

  handle := LoadLibrary('dictionary.dll');
  @FDic := GetProcAddress(handle, 'CreateWndChoose');
  v := FDic(Application.Handle);
  str := v[0];
  List := TStringList.Create;
  List.Text := str;
  FreeLibrary(handle);

  cxGridDBBandedTableView.DataController.DataSet.DisableControls;

  with cxGridDBBandedTableView.DataController.Filter do begin
    Clear;
    Options := Options + [fcoCaseInsensitive];
    Root.BoolOperatorKind := fboOr;
    BeginUpdate;
    for i := 0 to List.Count - 1 do if (Trim(List.Strings[i])<>'') then
      Root.AddItem(cxGridDBBandedTableView.GetColumnByFieldName('num_vagon'), foEqual, Trim(List.Strings[i]),Trim(List.Strings[i]) );
    EndUpdate;
    Active := True;
  end;
  cxGridDBBandedTableView.DataController.DataSet.EnableControls;

  List.Free;
  Screen.Cursor := crDefault;
end;

procedure TfmFactTrack.dxBarButton_EditClick(Sender: TObject);
begin
  if (not SP_fact_track_stat_get.Eof) or (not Query_FactTrack.Eof) then begin
    fmFactTrackAdd := TfmFactTrackAdd.Create(Application, fmMain.Lis.ConnectionString);
    fmFactTrackAdd._SetNumVagon := cxGrid1DBBandedTableView1num_vagon.DataBinding.Field.AsInteger;
    fmFactTrackAdd._SetDateQuery := Date;
    fmFactTrackAdd._SetUpdate := 0;
    if fmFactTrackAdd.ShowModal=mrOk then dxBarButton_Refresh.Click;
  end;
end;

{$REGION 'Фильтр по всем записям'}
procedure TfmFactTrack.dxBarButton_FilterRecords1Click(Sender: TObject);
begin

end;
{$ENDREGION 'Фильтр по всем записям'}

procedure TfmFactTrack.dxBarButton_UpdateInfoClick(Sender: TObject);
var SP : TADOStoredProc;
     i : integer;
begin
  if cxGrid1DBBandedTableView1.Controller.SelectedRecordCount = 0 then
    Exit;

  //Обновить информацию
  ShowTextMessage('Обновление информации ...', False);
  SP := TADOStoredProc.Create(nil);
  try
    SP.Connection := fmMain.Lis;
    SP.ProcedureName := 'sp_fact_track_modify';
    SP.Parameters.Refresh;

    for i := 0 to cxGrid1DBBandedTableView1.Controller.SelectedRecordCount - 1 do begin
      SP.Close;
      SP.Parameters.ParamByName('@fact_track_id').Value := cxGrid1DBBandedTableView1.Controller.SelectedRows[i].Values[cxGrid1DBBandedTableView1fact_track_id.Index];
      SP.Parameters.ParamByName('@type_action').Value := TComponent(Sender).tag;
      SP.ExecProc;
      ShowTextMessage('Осталось '+IntToStr(cxGrid1DBBandedTableView1.Controller.SelectedRecordCount - i)+' записей...', False);
    end;
    ShowTextMessage('Обновление информации ...', False);
    dxBarButton_Refresh.Click;
    ShowTextMessage('', True);
  finally
    SP.Free;
    ShowTextMessage('', True);
  end;
end;

procedure TfmFactTrack.Action_RefreshExecute(Sender: TObject);
begin
  StatusLoadDisl();

  case cxPageControl1.ActivePageIndex of
    0 : RefreshQueryGrid(cxGrid1DBBandedTableView1, 'fact_track_id', cxGrid1DBBandedTableView1fact_track_id.DataBinding.Field.AsInteger);
    1 : RefreshQueryGrid(cxGridDBBandedTableView1, 'fact_track_trip_id');
    2 : RefreshQueryGrid(cxGrid12DBBandedTableView1, 'fact_track_trip_id');
  end;
end;

procedure TfmFactTrack.l(Sender: TcxCustomGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
  if (AViewInfo.GridRecord.Values[cxGrid1DBBandedTableView1global_color.Index]<>NULL) then ACanvas.Brush.Color := AViewInfo.GridRecord.Values[cxGrid1DBBandedTableView1global_color.Index];
end;

procedure TfmFactTrack.MenuItem8Click(Sender: TObject);
begin
  SetRecordColor('fact_track_id', cxGrid1DBBandedTableView1, 'fact_track_kont', TMenuItem(Sender).Tag=1);
  RefreshQueryGrid(cxGrid1DBBandedTableView1, 'fact_track_id', cxGrid1DBBandedTableView1fact_track_id.DataBinding.Field.AsInteger);
end;

procedure TfmFactTrack.dxBarButton14Click(Sender: TObject);
begin
  cxGrid1DBBandedTableView1.Painter.Invalidate;
end;

procedure TfmFactTrack.dxBarButton15Click(Sender: TObject);
var        Q : TADOQuery;
           i : integer;
     distance: integer;
begin
  if cxGrid1DBBandedTableView1.Controller.SelectedRecordCount = 0 then
    Exit;
  //Обновить информацию
  ShowTextMessage('Обновление информации ...', False);
  try
    Q := TADOQuery.Create(nil);
    Q.Connection := fmMain.Lis;
    //1 - пройденное; 2- оставшееся
    case TComponent(Sender).Tag of
     1: Q.SQL.Add('UPDATE FACT_TRACK_STAT SET [distance1] =:distance WHERE fact_track_id =:fact_track_id');
     2: Q.SQL.Add('UPDATE FACT_TRACK_STAT SET [distance2] =:distance WHERE fact_track_id =:fact_track_id');
    end;

    for i := 0 to cxGrid1DBBandedTableView1.Controller.SelectedRecordCount - 1 do begin
    //1 - пройденное; 2- оставшееся
    case TComponent(Sender).Tag of
     1: distance := GetCalcDistanceDB(VarToStr(cxGrid1DBBandedTableView1.Controller.SelectedRows[i].Values[cxGrid1DBBandedTableView1node_begin_cod.Index]), VarToStr(cxGrid1DBBandedTableView1.Controller.SelectedRows[i].Values[cxGrid1DBBandedTableView1node_operation_cod.Index]), fmMain.Lis, False, Date);
     2: distance := GetCalcDistanceDB(VarToStr(cxGrid1DBBandedTableView1.Controller.SelectedRows[i].Values[cxGrid1DBBandedTableView1node_operation_cod.Index]), VarToStr(cxGrid1DBBandedTableView1.Controller.SelectedRows[i].Values[cxGrid1DBBandedTableView1node_end_cod.Index]), fmMain.Lis, False, Date);
    end;
     ShowTextMessage('Обновление информации ...', False);
     // последние данные исползуется табличка [dbo].[FACT_TRACK_STAT]
     if distance <> -9 then begin
       ShowTextMessage('Расчитано расстояние: ' + IntToStr(distance), False);
       if (FQuerySettings[0] = 0) or (FQuerySettings[0] = 1) or (FQuerySettings[0] = 2)  then begin
         Q.Close;
         Q.Parameters.ParamByName('distance').Value := distance;
         Q.Parameters.ParamByName('fact_track_id').Value := cxGrid1DBBandedTableView1.Controller.SelectedRows[i].Values[cxGrid1DBBandedTableView1fact_track_id.Index];
         Q.ExecSQL;
       end;
     end;
     ShowTextMessage('Осталось '+IntToStr(cxGrid1DBBandedTableView1.Controller.SelectedRecordCount - i)+' записей...', False);
    end;
    ShowTextMessage('Обновление информации ...', False);
    dxBarButton_Refresh.Click;
    ShowTextMessage('', True);
  finally
    Q.Free;
    ShowTextMessage('', True);
  end;
end;

procedure TfmFactTrack.dxBarButton16Click(Sender: TObject);
var       line_cnt, i : integer;
  exApp, exWks, exWkb : Variant;
          Query_Model : TADOQuery;
begin
  Screen.Cursor := crHourglass;

  ShowTextMessage('Запуск Excel...', False);
  exApp := CreateOleObject('Excel.Application');
  exWkb := exApp.Workbooks.Add(GetDocBlob(fmMain.Lis, 230));
  exWkb := exApp.ActiveWorkbook;
  exWks := exWkb.WorkSheets[1];

  line_cnt := 3;
  for i:=0 to cxGrid1DBBandedTableView1.Controller.SelectedRecordCount - 1 do begin
      exWks.Rows[IntToStr(line_cnt + 1)].Insert;
      exWks.Rows[IntToStr(line_cnt    )].Copy;
      exWks.Rows[IntToStr(line_cnt + 1)].PasteSpecial(1);

      exWks.Range['C'+IntToStr(line_cnt)].Value := VarToStr(cxGrid1DBBandedTableView1.Controller.SelectedRows[i].Values[cxGrid1DBBandedTableView1num_vagon.Index]);
      exWks.Range['D'+IntToStr(line_cnt)].Value := VarToStr(cxGrid1DBBandedTableView1.Controller.SelectedRows[i].Values[cxGrid1DBBandedTableView1copper_calibration.Index]);
      exWks.Range['P'+IntToStr(line_cnt)].Value := VarToStr(cxGrid1DBBandedTableView1.Controller.SelectedRows[i].Values[cxGrid1DBBandedTableView1kargoETSNG_cod.Index]);
      exWks.Range['Q'+IntToStr(line_cnt)].Value := VarToStr(cxGrid1DBBandedTableView1.Controller.SelectedRows[i].Values[cxGrid1DBBandedTableView1kargoETSNG_name.Index]);
      exWks.Range['S'+IntToStr(line_cnt)].Value := VarToStr(cxGrid1DBBandedTableView1.Controller.SelectedRows[i].Values[cxGrid1DBBandedTableView1node_begin_name.Index]);
      exWks.Range['T'+IntToStr(line_cnt)].Value := VarToStr(cxGrid1DBBandedTableView1.Controller.SelectedRows[i].Values[cxGrid1DBBandedTableView1node_end_name.Index]);

//      exWks.Range['E'+IntToStr(line_cnt)].Value := cxGrid1DBBandedTableView1.Controller.SelectedRows[i].Values[cxGrid1DBBandedTableView1date_build.Index];
//      exWks.Range['N'+IntToStr(line_cnt)].Value := cxGrid1DBBandedTableView1.Controller.SelectedRows[i].Values[cxGrid1DBBandedTableView1capacity.Index];
//      exWks.Range['F'+IntToStr(line_cnt)].Value := VarToStr(cxGrid1DBBandedTableView1.Controller.SelectedRows[i].Values[cxGrid1DBBandedTableView1factory_cod.Index]);
//      exWks.Range['G'+IntToStr(line_cnt)].Value := VarToStr(cxGrid1DBBandedTableView1.Controller.SelectedRows[i].Values[cxGrid1DBBandedTableView1factory_name.Index]);
      exWks.Range['O'+IntToStr(line_cnt)].Value := VarToStr(cxGrid1DBBandedTableView1.Controller.SelectedRows[i].Values[cxGrid1DBBandedTableView1model_name.Index]);
      exWks.Range['H'+IntToStr(line_cnt)].Value := cxGrid1DBBandedTableView1.Controller.SelectedRows[i].Values[cxGrid1DBBandedTableView1last_depot_repair_date.Index];   //Дата последнего ДР
      exWks.Range['I'+IntToStr(line_cnt)].Value := '';    // (Код) Место Деп.ремонта
//      exWks.Range['J'+IntToStr(line_cnt)].Value := VarToStr(cxGrid1DBBandedTableView1.Controller.SelectedRows[i].Values[cxGrid1DBBandedTableView1last_depot_repair_depo.Index]);   // Место деп. ремонта
      exWks.Range['K'+IntToStr(line_cnt)].Value := cxGrid1DBBandedTableView1.Controller.SelectedRows[i].Values[cxGrid1DBBandedTableView1last_capital_repair_date.Index]; // Дата Кап.ремонта
      exWks.Range['L'+IntToStr(line_cnt)].Value := '';   // (Код) Место Кап.ремонта
//      exWks.Range['M'+IntToStr(line_cnt)].Value := VarToStr(cxGrid1DBBandedTableView1.Controller.SelectedRows[i].Values[cxGrid1DBBandedTableView1last_capital_repair_depo.Index]); // (Код) Место Кап.ремонта

      ShowTextMessage('Идет формирование отчета. Обработано '+IntToStr(i)+' из '+IntToStr(cxGrid1DBBandedTableView1.Controller.SelectedRecordCount) + #13#10+ 'Подождите пожалуйста...', False);
      line_cnt := line_cnt + 1;
  end;
  exWks.Rows[IntToStr(line_cnt)].Delete;

  exApp.CutCopyMode := False;
  exWks.Range['A1'].Select;

  ShowTextMessage;
  exApp.Visible := True;
  VarClear(exWks); VarClear(exWkb); VarClear(exApp);
  Screen.Cursor := crDefault;
end;

procedure TfmFactTrack.cxGrid12DBBandedTableView1CustomDrawCell(Sender: TcxCustomGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
  if AViewInfo.GridRecord.Selected or AViewInfo.GridRecord.Focused then begin
    ACanvas.Brush.Color := clNavy;
    ACanvas.Font.Color := clWhite;
    if AViewInfo.Focused then ACanvas.Brush.Color := clBlue;
  end;
end;

procedure TfmFactTrack.cxGrid12DBBandedTableView1SelectionChanged(Sender: TcxCustomGridTableView);
begin
  cxPageControl2Change(cxPageControl2);
end;

procedure TfmFactTrack.cxGrid1DBBandedTableView1CellDblClick(Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;  AShift: TShiftState; var AHandled: Boolean);
begin
  dxBarButton_Edit.Click;
end;

procedure TfmFactTrack.cxGrid1DBBandedTableView1CustomDrawCell(Sender: TcxCustomGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
var date_query: TDate;
begin
//  if not dxBarButton14.Down then begin
//    if (AViewInfo.GridRecord.Values[cxGrid1DBBandedTableView1global_color.Index]<>NULL) then
//      ACanvas.Brush.Color := AViewInfo.GridRecord.Values[cxGrid1DBBandedTableView1global_color.Index];
//  end else begin
//    if (AViewInfo.GridRecord.Values[cxGrid1DBBandedTableView1days_free.Index] >= 3) AND
//       (AViewInfo.GridRecord.Values[cxGrid1DBBandedTableView1days_free.Index] <= 9) then
//          ACanvas.Brush.Color := $00B0FFFB
//      else if (AViewInfo.GridRecord.Values[cxGrid1DBBandedTableView1days_free.Index] >= 10) then
//        ACanvas.Brush.Color := $008080FF;
//    if (AViewInfo.GridRecord.Values[cxGrid1DBBandedTableView1cod_operation_vagon_cod.Index] = '92') OR
//       (AViewInfo.GridRecord.Values[cxGrid1DBBandedTableView1cod_operation_vagon_cod.Index] = '06') then
//       ACanvas.Font.Style := [fsBold];
//  end;



//  //красим ремонт  //не используется
//  if not dxBarButton22.Down then begin
//    if (AViewInfo.GridRecord.Values[cxGrid1DBBandedTableView1global_color.Index] <> NULL) then
//      ACanvas.Brush.Color := AViewInfo.GridRecord.Values[cxGrid1DBBandedTableView1global_color.Index];
//    end else begin
//    if AViewInfo.GridRecord.Values[cxGrid1DBBandedTableView1milage_rest.Index] <> NULL then
//      if //(AViewInfo.GridRecord.Values[cxGrid1DBBandedTableView1milage_rest.Index] <= 10000)
//      (AViewInfo.GridRecord.Values[cxGrid1DBBandedTableView1milage_rest.Index] <= 5000)  then begin
//        ACanvas.Brush.Color := $00FFD2D2;
//        AViewInfo.GridRecord.Values[cxGrid1DBBandedTableView1color.Index] := $00FFD2D2;
//        ACanvas.Font.Style := [fsBold];
//      end;
//
//    if AViewInfo.GridRecord.Values[cxGrid1DBBandedTableView1next_date_repair.Index] <> NULL then
//      if  (DaysBetween(date,AViewInfo.GridRecord.Values[cxGrid1DBBandedTableView1next_date_repair.Index]) <= 30) then begin
//        ACanvas.Brush.Color := $00FFD2D2;
//        AViewInfo.GridRecord.Values[cxGrid1DBBandedTableView1color.Index] := $00FFD2D2;
//        ACanvas.Font.Style := [fsBold];
//      end;
//  end;



//  //1 Порожние, погрузка на экспорт запрещена  светло-фиолетовый
//  if not dxBarButton90.Down then begin
//    if (AViewInfo.GridRecord.Values[cxGrid1DBBandedTableView1global_color.Index]<>NULL) then
//      ACanvas.Brush.Color := AViewInfo.GridRecord.Values[cxGrid1DBBandedTableView1global_color.Index];
//  end else begin
//    if((AViewInfo.GridRecord.Values[cxGrid1DBBandedTableView1rod_vagon_name.Index] = 'хоппер-цементовоз') or
//       (AViewInfo.GridRecord.Values[cxGrid1DBBandedTableView1rod_vagon_name.Index] = 'полувагон') or
//       (AViewInfo.GridRecord.Values[cxGrid1DBBandedTableView1rod_vagon_name.Index] = 'цистерна') ) and
//       (AViewInfo.GridRecord.Values[cxGrid1DBBandedTableView1next_date_repair.Index] <= Date + 30) and
//       (AViewInfo.GridRecord.Values[cxGrid1DBBandedTableView1next_date_repair.Index] >= Date + 15) and
//       (AViewInfo.GridRecord.Values[cxGrid1DBBandedTableView1fact_weight.Index] = 0) then begin
//      ACanvas.Brush.Color := $00FFD2D2;
//    end;
//
//    if((AViewInfo.GridRecord.Values[cxGrid1DBBandedTableView1rod_vagon_name.Index] = 'полувагон') or
//       (AViewInfo.GridRecord.Values[cxGrid1DBBandedTableView1rod_vagon_name.Index] = 'цистерна')) and
//       (AViewInfo.GridRecord.Values[cxGrid1DBBandedTableView1milage_rest.Index] <= 5000) and
//       (AViewInfo.GridRecord.Values[cxGrid1DBBandedTableView1milage_rest.Index] >= 1500) and
//       (AViewInfo.GridRecord.Values[cxGrid1DBBandedTableView1milage_rest.Index] <> NULL) and
//       (AViewInfo.GridRecord.Values[cxGrid1DBBandedTableView1fact_weight.Index] = 0) then begin
//      ACanvas.Brush.Color := $00FFD2D2;
//    end;
//  end;



//  //2 Порожние, погрузка по РФ запрещена светло-фиолетовый
//  if not dxBarButton99.Down then begin
//    if (AViewInfo.GridRecord.Values[cxGrid1DBBandedTableView1global_color.Index]<>NULL) then
//      ACanvas.Brush.Color := AViewInfo.GridRecord.Values[cxGrid1DBBandedTableView1global_color.Index];
//  end else begin
//    if ((AViewInfo.GridRecord.Values[cxGrid1DBBandedTableView1rod_vagon_name.Index] = 'хоппер-цементовоз') or
//       (AViewInfo.GridRecord.Values[cxGrid1DBBandedTableView1rod_vagon_name.Index] = 'полувагон') or
//       (AViewInfo.GridRecord.Values[cxGrid1DBBandedTableView1rod_vagon_name.Index] = 'цистерна')  or
//       (AViewInfo.GridRecord.Values[cxGrid1DBBandedTableView1rod_vagon_name.Index] = 'крытый')) and
//       (AViewInfo.GridRecord.Values[cxGrid1DBBandedTableView1next_date_repair.Index] < Date + 15) and
//       (AViewInfo.GridRecord.Values[cxGrid1DBBandedTableView1fact_weight.Index] = 0) then begin
//      ACanvas.Brush.Color := $00FFD2D2;
//    end;
//
//    if ((AViewInfo.GridRecord.Values[cxGrid1DBBandedTableView1rod_vagon_name.Index] = 'полувагон') or
//       (AViewInfo.GridRecord.Values[cxGrid1DBBandedTableView1rod_vagon_name.Index] = 'цистерна')  or
//       (AViewInfo.GridRecord.Values[cxGrid1DBBandedTableView1rod_vagon_name.Index] = 'крытый')) and
//       (AViewInfo.GridRecord.Values[cxGrid1DBBandedTableView1milage_rest.Index] < 1500) and
//       (AViewInfo.GridRecord.Values[cxGrid1DBBandedTableView1milage_rest.Index] <> Null) and
//       (AViewInfo.GridRecord.Values[cxGrid1DBBandedTableView1fact_weight.Index] = 0) then begin
//      ACanvas.Brush.Color := $00FFD2D2;
//    end;
//  end;



//  //3 Порожние, необходимо срочно погрузить   оранжевый
//  if not dxBarButton89.Down then begin
//    if (AViewInfo.GridRecord.Values[cxGrid1DBBandedTableView1global_color.Index]<>NULL) then
//      ACanvas.Brush.Color := AViewInfo.GridRecord.Values[cxGrid1DBBandedTableView1global_color.Index];
//    end else begin
//    if (AViewInfo.GridRecord.Values[cxGrid1DBBandedTableView1next_date_repair.Index] <= Date + 41) and
//       (AViewInfo.GridRecord.Values[cxGrid1DBBandedTableView1next_date_repair.Index] >= Date + 31) and
//       (AViewInfo.GridRecord.Values[cxGrid1DBBandedTableView1fact_weight.Index] = 0) then begin
//      ACanvas.Brush.Color := $0053A9FF;
//    end;
//  end;



//  {4 Груженые, необходимо отправить в ремонт синий $00FFC142}
//  if not dxBarButton96.Down then begin
//    if (AViewInfo.GridRecord.Values[cxGrid1DBBandedTableView1global_color.Index] <> NULL) then
//      ACanvas.Brush.Color := AViewInfo.GridRecord.Values[cxGrid1DBBandedTableView1global_color.Index];
//  end else begin
//    if (AViewInfo.GridRecord.Values[cxGrid1DBBandedTableView1milage_rest.Index] <= 5000) then begin
//      ACanvas.Brush.Color := $00FFC142;
//    end;
//  end;



  //5 Запрет курсирования все кроме тех у кого "технического паспорта" сиреневый  00B366FF
  if not dxBarButton91.Down then begin
    if (AViewInfo.GridRecord.Values[cxGrid1DBBandedTableView1global_color.Index] <> NULL) then
      ACanvas.Brush.Color := AViewInfo.GridRecord.Values[cxGrid1DBBandedTableView1global_color.Index];
  end else begin
//    if (AViewInfo.GridRecord.Values[cxGrid1DBBandedTableView1quality_mark_name.Index] <> 'Наличие технического паспорта') then begin
//      ACanvas.Brush.Color := $00B366FF;
//    end;
  end;

  //6 Санкционный запрет Санкции <> пусто темно - зеленый болотный  $00808040
  if not dxBarButton102.Down then begin
    if (AViewInfo.GridRecord.Values[cxGrid1DBBandedTableView1global_color.Index] <> NULL) then
      ACanvas.Brush.Color := AViewInfo.GridRecord.Values[cxGrid1DBBandedTableView1global_color.Index];
  end else begin

  end;


  if not dxBarButton77.Down then begin
    if (AViewInfo.GridRecord.Values[cxGrid1DBBandedTableView1global_color.Index] <> NULL) then ACanvas.Brush.Color := AViewInfo.GridRecord.Values[cxGrid1DBBandedTableView1global_color.Index];
  end else begin
    if AViewInfo.GridRecord.Values[cxGrid1DBBandedTableView1date_query.Index] <> NULL then
      date_query := AViewInfo.GridRecord.Values[cxGrid1DBBandedTableView1date_query.Index];
      if  date_query < Trunc(Date) then begin
        ACanvas.Brush.Color := $00E6E6E6;
        AViewInfo.GridRecord.Values[cxGrid1DBBandedTableView1color.Index] := $00E6E6E6;
        ACanvas.Font.Style := [fsBold];
        ACanvas.Font.Color := clBtnShadow;
      end;
  end;


  AViewInfo.GridRecord.Values[cxGrid1DBBandedTableView1color.Index] := ACanvas.Brush.Color;


  if AViewInfo.GridRecord.Selected or AViewInfo.GridRecord.Focused then begin
    ACanvas.Brush.Color := clNavy;
    ACanvas.Font.Color := clWhite;
    if AViewInfo.Focused then ACanvas.Brush.Color := clBlue;
  end;
end;

procedure TfmFactTrack.cxGrid1DBBandedTableView1CustomDrawColumnHeader(Sender: TcxGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxGridColumnHeaderViewInfo; var ADone: Boolean);
begin
  DrawcxGridColumnOnFocused(Sender, ACanvas, AViewInfo);
end;

procedure TfmFactTrack.cxGrid1DBBandedTableView1DataControllerFilterChanged(Sender: TObject);
begin
  DrawcxGridColumnOnFiltered(Sender);
end;

procedure TfmFactTrack.cxGrid1DBBandedTableView1FocusedItemChanged(Sender: TcxCustomGridTableView; APrevFocusedItem, AFocusedItem: TcxCustomGridTableItem);
begin
  Sender.Painter.Invalidate;
end;

procedure TfmFactTrack.cxGrid1DBBandedTableView1KeyPress(Sender: TObject; var Key: Char);
begin
  FilterColumnGridOnKeyPress(TcxGridDBBandedTableView(TcxGridSite(Sender).GridView), Key);
end;

procedure TfmFactTrack.cxGrid1DBBandedTableView1SelectionChanged(Sender: TcxCustomGridTableView);
begin
  if (cxGridDBBandedTableView1.GroupedColumnCount = 0) then begin
    cxPageControl2Change(cxPageControl2);

  end;


//  Query_History.Close;
//  Query_HistoryTrip.Close;
//  if (dxBarButton_History.Down) and (cxGrid1DBBandedTableView1.Controller.SelectedRecordCount > 0) and (cxGrid1DBBandedTableView1.GroupedColumnCount = 0)  then begin
//    Screen.Cursor := crHourGlass;
//
//    if cxPageControl2.ActivePage = cxTabSheet3 then begin
//      // История вагона
//      Query_History.Parameters.ParamByName('num_vagon'     ).Value := cxGrid1DBBandedTableView1num_vagon.DataBinding.Field.AsInteger;
//      Query_History.Parameters.ParamByName('users_group_id').Value := usr_pwd.user_group_id;
//      Query_History.Parameters.ParamByName('date_begin'    ).Value := Fdate_history1;
//      Query_History.Parameters.ParamByName('date_end'      ).Value := Fdate_history2;
//      Query_History.Parameters.ParamByName('set_group'     ).Value := iif(dxBarButton115.Down, 1, 0);
//      Query_History.Open;
//    end else begin
//      // История рейса
//      Query_HistoryTrip.Parameters.ParamByName('num_vagon'     ).Value := cxGrid1DBBandedTableView1num_vagon.DataBinding.Field.AsInteger;
//      Query_HistoryTrip.Parameters.ParamByName('users_group_id').Value := usr_pwd.user_group_id;
//      Query_HistoryTrip.Parameters.ParamByName('date_begin1'    ).Value := Fdate_trip1;
//      Query_HistoryTrip.Parameters.ParamByName('date_end1'      ).Value := Fdate_trip2;
//      Query_HistoryTrip.Parameters.ParamByName('date_begin2'    ).Value := Fdate_trip1;
//      Query_HistoryTrip.Parameters.ParamByName('date_end2'      ).Value := Fdate_trip2;
//      Query_HistoryTrip.Open;
//    end;
//
//    Screen.Cursor := crDefault;
//  end;
end;



procedure TfmFactTrack.cxGrid2DBBandedTableView1CustomDrawCell(Sender: TcxCustomGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
  if AViewInfo.GridRecord.Selected or AViewInfo.GridRecord.Focused then begin
    ACanvas.Brush.Color := clNavy;
    ACanvas.Font.Color := clWhite;
    if AViewInfo.Focused then ACanvas.Brush.Color := clBlue;
  end;
end;

procedure TfmFactTrack.cxGrid3DBBandedTableView1CustomDrawCell(Sender: TcxCustomGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
  if AViewInfo.GridRecord.Selected or AViewInfo.GridRecord.Focused then begin
    ACanvas.Brush.Color := clNavy;
    ACanvas.Font.Color := clWhite;
    if AViewInfo.Focused then ACanvas.Brush.Color := clBlue;
  end;
end;

procedure TfmFactTrack.cxGridDBBandedTableView1CustomDrawCell(Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
  if (AViewInfo.GridRecord.Values[cxGridDBBandedTableView1set_warning.Index] <> NULL) then begin
    if (AViewInfo.GridRecord.Values[cxGridDBBandedTableView1set_warning.Index] = True) then begin
      ACanvas.Font.Color := clRed;
    end;
  end;

	if AViewInfo.GridRecord.Selected or AViewInfo.GridRecord.Focused then begin
		ACanvas.Brush.Color := clNavy;
		ACanvas.Font.Color := clWhite;
		if AViewInfo.Focused then ACanvas.Brush.Color := clBlue;
	end;
end;

procedure TfmFactTrack.cxGridDBBandedTableView1FocusedRecordChanged(Sender: TcxCustomGridTableView; APrevFocusedRecord,AFocusedRecord: TcxCustomGridRecord; ANewItemRecordFocusingChanged: Boolean);
begin
  if (cxGridDBBandedTableView1.GroupedColumnCount = 0) then begin
    cxPageControl2Change(cxPageControl2);
  end;
end;


procedure TfmFactTrack.dxBarButton100Click(Sender: TObject);
begin
  Fstr_trip_id := cx_GetSelectedValues(cxGrid3, 'fact_track_trip_id');
  ModalResult  := mrOk;
end;


procedure TfmFactTrack.dxBarButton10Click(Sender: TObject);
type
  TFunc = function(AppHand: THandle; f: boolean; usr_pwd: PUser_pwd; str_vagon_id :string; type_action: integer) : variant;
var
  FDic   : TFunc;
  handle : THandle;
  v      : Variant;
  str_vagon_id : string;
begin
  str_vagon_id := cx_GetSelectedValues(cxGrid1, 'vagon_id');
  if str_vagon_id = '' then begin
    Application.MessageBox(PChar('Действие с КОММЕНТАРИЕМ невозможно.' + #10#13 + 'Вагон отсутствует в справочнике!'), 'Вниамние!', MB_ICONERROR + MB_OK);
    Exit;
  end;

  handle := LoadLibrary('dictionary.dll');
  @FDic := GetProcAddress(handle, 'CreateWndVagonCommentAdd');
  v := FDic(Application.Handle, False, usr_pwd, str_vagon_id, 0);
  FreeLibrary(handle);
  if Application.MessageBox(PChar('Обновить информацию?'), 'Вниамние!', MB_YESNO + MB_DEFBUTTON2) = IDYES then
    RefreshQueryGrid(cxGrid1DBBandedTableView1, 'fact_track_id', cxGrid1DBBandedTableView1fact_track_id.DataBinding.Field.AsInteger);
end;

procedure TfmFactTrack.dxBarButton110Click(Sender: TObject);
var OpenDialog1  : TOpenDialog;
    i            : integer;
    exApp        : OleVariant;
    exWkb        : OleVariant;
    exWks        : OleVariant;
    fList, fFact : TcxFilterCriteriaItemList;
    num_vagon    : integer;
    date_from    : TDate;
    date_to      : TDate;

    FView        : TcxGridDBBandedTableView;
begin
  case cxPageControl1.ActivePageIndex of
    0 : FView := cxGrid1DBBandedTableView1;
    1 : FView := cxGridDBBandedTableView1;
    2 : FView := cxGrid12DBBandedTableView1;
  end;

  OpenDialog1 := TOpenDialog.Create(nil);
  OpenDialog1.Filter := 'Файлы Excel|*.xls;*.xlsx';
  OpenDialog1.DefaultExt := 'xls';
  OpenDialog1.Options := OpenDialog1.Options + [ofFileMustExist];
  if OpenDialog1.Execute then begin
    ShowTextMessage('Запуск сервера автоматизации...',False);
    exApp := CreateOleObject('Excel.Application');
    exWkb := exApp.Workbooks.Open(OpenDialog1.FileName);
    exWkb := exApp.ActiveWorkbook;
    exWks := exWkb.WorkSheets[1];

    with FView.DataController.Filter do begin
      BeginUpdate;
      Clear;
      Root.BoolOperatorKind := fboAnd;
      fList := Root.AddItemList(fboOr);
      i := 2;
      while (TVarData(exWks.Cells[i, 1].Value).VType <> varEmpty) do begin
        try
          fFact := fList.AddItemList(fboAnd);

          num_vagon := exWks.Cells[i, 1].Value;
          fFact.AddItem(FView.GetColumnByFieldName('num_vagon'), foEqual, num_vagon, IntToStr(num_vagon));

          if (TVarData(exWks.Cells[i, 2].Value).VType <> varEmpty) then begin
            date_from := exWks.Cells[i, 2].Value;
            fFact.AddItem(FView.GetColumnByFieldName('date_otpr'), foGreaterEqual, date_from, DateToStr(date_from));
          end;

          if (TVarData(exWks.Cells[i, 3].Value).VType <> varEmpty) then begin
            date_to := exWks.Cells[i, 3].Value;
            fFact.AddItem(FView.GetColumnByFieldName('date_otpr'), foLessEqual, date_to, DateToStr(date_to));
          end;
        finally
        end;

        ShowTextMessage('Обработано ' + IntToStr(i - 1) + ' строк...', False);
        inc(i);
      end;
      EndUpdate;
      Active := True;
    end;

    exWkb.Saved := True;
    exApp.Quit;
    VarClear(exWkb); VarClear(exApp); VarClear(exWks);
    ShowTextMessage;
  end;
  OpenDialog1.Free;
end;

procedure TfmFactTrack.dxBarButton111Click(Sender: TObject);
var i : integer;
  str : string;
begin
 str := '';
 for i:= 0 to cxGrid1DBBandedTableView1.ColumnCount -1 do begin
  Str := Str + cxGrid1DBBandedTableView1.Columns[i].Caption + ':' + cxGrid1DBBandedTableView1.Columns[i].DataBinding.FieldName + #13;
 end;
 Application.MessageBox(PChar(Str), 'Инфо', MB_ICONSTOP or MB_OK);
end;


procedure TfmFactTrack.dxBarButton70Click(Sender: TObject);
type
  TFunc = function(AppHand: THandle; users_group_cod: string; usr_pwd: PUser_pwd; FIO_users: string; etran_ecp_id: integer; ClientDS_param: TClientDataSet): variant;
var
           FEtran : TFunc;
           handle : THandle;
                v : variant;
            Query : TADOQuery;
  users_group_cod : string;
        FIO_users : string;
         ClientDS : TClientDataSet;
                i : integer;
        str_error : string;
begin
  Query := TADOQuery.Create(nil);
  Query.Connection := fmMain.Lis;

  ClientDS := TClientDataSet.Create(nil);
  ClientDS.FieldDefs.Add('num_vagon',      ftInteger);
  ClientDS.FieldDefs.Add('node_end_cod',   ftString, 50);
  ClientDS.FieldDefs.Add('kargoETSNG_cod', ftString, 50);
  ClientDS.FieldDefs.Add('fact_track_trip_id', ftInteger);
  ClientDS.FieldDefs.Add('index_train',    ftString, 20);
  ClientDS.CreateDataSet;
  ClientDS.LogChanges := False;

  for i:=0 to cxGrid1DBBandedTableView1.Controller.SelectedRecordCount - 1 do begin
    Query.SQL.Clear;
    Query.SQL.Add('SELECT	top 1 *');
    Query.SQL.Add('FROM	fact_track_trip');
    Query.SQL.Add('WHERE	num_vagon =' + IntToStr(cxGrid1DBBandedTableView1.Controller.SelectedRows[i].Values[cxGrid1DBBandedTableView1num_vagon.Index]));
//    Query.SQL.Add('		and users_group_id =' + IntToStr(usr_pwd.user_group_id));
    Query.SQL.Add('		and isnull(fact_weight,0) > 0');
    Query.SQL.Add('		and kargoETSNG_cod is not null');
    Query.SQL.Add('ORDER BY date_otpr DESC');
    Query.Open;

    if not ClientDS.Locate('fact_track_trip_id', cxGrid1DBBandedTableView1.Controller.SelectedRows[i].Values[cxGrid1DBBandedTableView1fact_track_trip_id.Index], []) then begin
      ClientDS.Append;
      ClientDS.FieldByName('fact_track_trip_id').Value := cxGrid1DBBandedTableView1.Controller.SelectedRows[i].Values[cxGrid1DBBandedTableView1fact_track_trip_id.Index];
      ClientDS.FieldByName('num_vagon'         ).Value := cxGrid1DBBandedTableView1.Controller.SelectedRows[i].Values[cxGrid1DBBandedTableView1num_vagon.Index];
      ClientDS.FieldByName('node_end_cod'      ).Value := cxGrid1DBBandedTableView1.Controller.SelectedRows[i].Values[cxGrid1DBBandedTableView1node_end_cod.Index];
      ClientDS.FieldByName('index_train'       ).Value := cxGrid1DBBandedTableView1.Controller.SelectedRows[i].Values[cxGrid1DBBandedTableView1index_train.Index];
      if Query.RecordCount > 0 then ClientDS.FieldByName('kargoETSNG_cod').Value := Query.FieldByName('kargoETSNG_cod').AsString;
      ClientDS.Post;
    end;
  end;

  Screen.Cursor := crHourglass;


  Query.SQL.Clear;
  Query.SQL.Add('SELECT	inf_obj_cod as users_group_cod, FIO_users');
  Query.SQL.Add('FROM	  users INNER JOIN inf_obj on users.users_group_id = inf_obj.inf_obj_id');
  Query.SQL.Add('WHERE	users_name = system_user');
  Query.Open;
  users_group_cod := Query.FieldByName('users_group_cod').AsString;
  FIO_users       := Query.FieldByName('FIO_users').AsString;
  Query.Free;

  Screen.Cursor := crdefault;

  try
    handle := LoadLibrary('etranECP.dll');

    if handle <> 0 then begin
      @FEtran := GetProcAddress(handle, 'CreateWndEtranECPInvoiceToViza');

      if @FEtran <> nil then
        v := FEtran(Application.Handle, users_group_cod, usr_pwd, FIO_users, -9, ClientDS)
      else begin
        str_error := IntToStr(GetLastError) + ':' + SysErrorMessage(GetLastError);
        Application.MessageBox(PChar('Не найдена функция CreateWndEtranECPInvoiceToViza!' + #10 + str_error), 'ОШИБКА', MB_ICONSTOP or MB_OK);
      end;
    end else begin
      str_error := IntToStr(GetLastError) + ':' + SysErrorMessage(GetLastError);
      Application.MessageBox(PChar('Не найдена EtranECP.dll!' + #10 + str_error), 'ОШИБКА', MB_ICONSTOP or MB_OK);
    end;

    FreeLibrary(handle);

  except
    on E: Exception do begin
      Application.MessageBox(PChar('Ошибка EtranECP.dll!' + #10 + E.Message), 'ОШИБКА', MB_ICONSTOP or MB_OK);
    end;
  end;



  if v[0] <> -9 then
    if Application.MessageBox(PChar('Обновить информацию?'), 'Вниамние!', MB_YESNO + MB_DEFBUTTON2) = IDYES then
      RefreshQueryGrid(cxGrid1DBBandedTableView1, 'fact_track_id');

  ClientDS.Free;
end;

procedure TfmFactTrack.dxBarButton71Click(Sender: TObject);
type
  TFunc = function(AppHand: THandle; users_group_cod: string; usr_pwd: PUser_pwd; FIO_users: string; etran_ecp_id: integer; ClientDS_param: TClientDataSet): variant;
var
           FEtran : TFunc;
           handle : THandle;
                v : variant;
            Query : TADOQuery;
  users_group_cod : string;
        FIO_users : string;
         ClientDS : TClientDataSet;
                i : integer;
begin
//  if cxGrid1DBBandedTableView1etran_ecp_id.DataBinding.Field.IsNull then begin
//    Application.MessageBox(PChar('Заготовка не найдена!'), 'ОШИБКА', MB_ICONSTOP or MB_OK);
//    Exit;
//  end;
//
//  Screen.Cursor := crHourglass;
//
//  Query := TADOQuery.Create(nil);
//  Query.Connection := fmMain.Lis;
//  Query.SQL.Add('SELECT	inf_obj_cod as users_group_cod, FIO_users');
//  Query.SQL.Add('FROM	  users INNER JOIN inf_obj on users.users_group_id = inf_obj.inf_obj_id');
//  Query.SQL.Add('WHERE	users_name = system_user');
//  Query.Open;
//  users_group_cod := Query.FieldByName('users_group_cod').AsString;
//  FIO_users       := Query.FieldByName('FIO_users').AsString;
//  Query.Free;
//
//  Screen.Cursor := crdefault;
//
//  handle := LoadLibrary('etranECP.dll');
//  @FEtran := GetProcAddress(handle, 'CreateWndEtranECPInvoiceToViza');
//  v := FEtran(Application.Handle, users_group_cod, usr_pwd, FIO_users, cxGrid1DBBandedTableView1etran_ecp_id.DataBinding.Field.AsInteger, nil);
//  FreeLibrary(handle);
//
//  if v[0] <> -9 then
//    RefreshQueryGrid(cxGrid1DBBandedTableView1, 'fact_track_id');
end;


procedure TfmFactTrack.dxBarButton97Click(Sender: TObject);
var   exWks, exApp  : Variant;
      row_0,k       : integer;
      SP            : TADOStoredProc;
    FStrFacttrackId : string;
begin
  FStrFacttrackId := cx_GetSelectedValues(cxGrid1,'fact_track_id');

  ShowTextMessage('Запуск Excel...', False);
  exApp := CreateOleObject('Excel.Application');
  exApp.Application.EnableEvents := False;
  exApp.ScreenUpdating := False;
  exApp.Workbooks.Add(GetDocBlob(fmMain.Lis, 393, 9, True));
  exWks := exApp.ActiveWorkbook.WorkSheets[1];

  ShowTextMessage('Запрос данных с сервера...', False);
  SP := TADOStoredProc.Create(nil);
  SP.Connection := fmMain.Lis;
  SP.ProcedureName := 'sp_Report_fact_track';
  SP.CommandTimeout := 600;
  SP.Parameters.Refresh;
  SP.Parameters.ParamByName('@type_report'      ).Value := 393;
  SP.Parameters.ParamByName('@str_fact_track_id').Value := FStrFacttrackId;
  SP.Parameters.ParamByName('@users_group_id').Value := usr_pwd.user_group_id;
  SP.Open;

  row_0 := 2;
  k := 1;
  SP.First;
  while not SP.EOF do begin
    exWks.Range['A' + IntToStr(row_0)].Value := k;
    exWks.Range['B' + IntToStr(row_0)].Value := SP.FieldByName('num_vagon').AsString;
    exWks.Range['D' + IntToStr(row_0)].Value := SP.FieldByName('registry_station_name').AsString;
    exWks.Range['E' + IntToStr(row_0)].Value := SP.FieldByName('registry_road').AsString;
    exWks.Range['G' + IntToStr(row_0)].Value := SP.FieldByName('date_otpr').AsDateTime;
    exWks.Range['H' + IntToStr(row_0)].Value := SP.FieldByName('date_otpr').AsDateTime;
    exWks.Range['I' + IntToStr(row_0)].Value := SP.FieldByName('node_begin_name').AsString;
    k:= k+1;
    ShowTextMessage('Осталось: ' + IntToStr(SP.RecordCount - SP.RecNo) + 'строк.' , False);
    SP.Next;

    if not SP.Eof then begin
      xCopyRow(exApp,row_0 + 1,row_0 +1);
      inc(row_0);
    end;
  end;

  exApp.Rows[IntToStr(row_0 + 1) + ':' + IntToStr(row_0 + 1)].Select;
  exApp.Selection.Delete;
  exApp.ScreenUpdating := True;

  exApp.Visible := True;
  exApp.Range['A1'].Select;
  VarClear(exWks); VarClear(exApp);
  SP.Free;
  ModalResult:= mrNone;
  ShowTextMessage('', True);
  Screen.Cursor := crDefault;
end;




procedure TfmFactTrack.dxBarButton72Click(Sender: TObject);
type
  TFunc = function(users_group_cod: string; usr_pwd: PUser_pwd; etran_ecp_id: integer): variant;
var
           FEtran : TFunc;
           handle : THandle;
                v : variant;
            Query : TADOQuery;
  users_group_cod : string;
        FIO_users : string;
         ClientDS : TClientDataSet;
                i : integer;
begin
//  if cxGrid1DBBandedTableView1etran_ecp_id.DataBinding.Field.IsNull then begin
//    Application.MessageBox(PChar('Заготовка не найдена!'), 'ОШИБКА', MB_ICONSTOP or MB_OK);
//    Exit;
//  end;
//
//  Screen.Cursor := crHourglass;
//
//  Query := TADOQuery.Create(nil);
//  Query.Connection := fmMain.Lis;
//  Query.SQL.Add('SELECT	inf_obj_cod as users_group_cod, FIO_users');
//  Query.SQL.Add('FROM	  users INNER JOIN inf_obj on users.users_group_id = inf_obj.inf_obj_id');
//  Query.SQL.Add('WHERE	users_name = system_user');
//  Query.Open;
//  users_group_cod := Query.FieldByName('users_group_cod').AsString;
//  FIO_users       := Query.FieldByName('FIO_users').AsString;
//  Query.Free;
//
//  Screen.Cursor := crdefault;
//
//  handle := LoadLibrary('etranECP.dll');
//  @FEtran := GetProcAddress(handle, 'CreateWndEtranECPInvoiceDelete');
//  v := FEtran(users_group_cod, usr_pwd, cxGrid1DBBandedTableView1etran_ecp_id.DataBinding.Field.AsInteger);
//  FreeLibrary(handle);
//
//  if v[0] <> -9 then
//    if Application.MessageBox(PChar('Обновить информацию?'), 'Вниамние!', MB_YESNO + MB_DEFBUTTON2) = IDYES then
//      RefreshQueryGrid(cxGrid1DBBandedTableView1, 'fact_track_id');
end;

procedure TfmFactTrack.dxBarButton73Click(Sender: TObject);
type
  TFunc = function(AHandle: THandle; users_group_cod: string; usr_pwd: PUser_pwd; FIO_users: string; etran_ecp_id: integer) : variant;
var
           FEtran : TFunc;
           handle : THandle;
                v : variant;
            Query : TADOQuery;
  users_group_cod : string;
        FIO_users : string;
begin
//  Screen.Cursor := crHourglass;
//
//  Query := TADOQuery.Create(nil);
//  Query.Connection := fmMain.Lis;
//  Query.SQL.Add('SELECT	inf_obj_cod as users_group_cod, FIO_users');
//  Query.SQL.Add('FROM	  users INNER JOIN inf_obj on users.users_group_id = inf_obj.inf_obj_id');
//  Query.SQL.Add('WHERE	users_name = system_user');
//  Query.Open;
//  users_group_cod := Query.FieldByName('users_group_cod').AsString;
//  FIO_users       := Query.FieldByName('FIO_users').AsString;
//  Query.Free;
//
//  Screen.Cursor := crdefault;
//
//  handle := LoadLibrary('etranECP.dll');
//  @FEtran := GetProcAddress(handle, 'CreateWndEtranECP');
//  v := FEtran(Application.Handle, users_group_cod, usr_pwd, FIO_users, cxGrid1DBBandedTableView1etran_ecp_id.DataBinding.Field.AsInteger);
//  FreeLibrary(handle);
end;

procedure TfmFactTrack.dxBarButton74Click(Sender: TObject);
begin
 FiltercxGridByFocusedValue(cxGrid1DBBandedTableView1);
end;

procedure TfmFactTrack.dxBarButton75Click(Sender: TObject);
begin
 FiltercxGridByFocusedValue(cxGrid2DBBandedTableView1);
end;

procedure TfmFactTrack.dxBarButton76Click(Sender: TObject);
begin
  cxGrid1DBBandedTableView1.Filtering.RunCustomizeDialog(nil);
end;

procedure TfmFactTrack.dxBarButton7Click(Sender: TObject);
type
  TFunc = function(AppHand: THandle; f: boolean; usr_pwd: PUser_pwd; str_num_vagon: string) : variant;
var
  FDic   : TFunc;
  handle : THandle;
  v      : Variant;
  str_num_vagon : string;
  i : integer;

  FView  : TcxGridDBBandedTableView;
begin
  FView := TcxGridDBBandedTableView(TcxGridSite(ActiveControl).GridView);

  str_num_vagon := '';
  for i := 0 to FView.Controller.SelectedRecordCount - 1 do begin
    if i > 0 then str_num_vagon := str_num_vagon + ',';
    str_num_vagon := str_num_vagon + VarToStr(FView.Controller.SelectedRecords[i].Values[FView.GetColumnByFieldName('num_vagon').Index]);
  end;

  if str_num_vagon <> '' then begin
    handle := LoadLibrary('dictionary.dll');
    @FDic := GetProcAddress(handle, 'CreateWndVagonLocate');
    v := FDic(Application.Handle, False, usr_pwd, str_num_vagon);
    FreeLibrary(handle);
  end;
end;

procedure TfmFactTrack.dxBarButton114Click(Sender: TObject);
type
  TFunc =  function(AppHandle: THandle; flag: boolean; connect :TADOConnection; DS:TClientDataSet = nil): variant;
var
  FVagonTMC : TFunc;
     handle : THandle;
          v : Variant;
   ClientDS : TClientDataSet;
begin

  ClientDS := TClientDataSet.Create(nil);
  ClientDS.FieldDefs.Add('num_vagon', ftInteger);
  ClientDS.FieldDefs.Add('vagon_id' , ftInteger);
  ClientDS.FieldDefs.Add('IsEmpty'  , ftBoolean);
  ClientDS.FieldDefs.Add('firm_name', ftString, 200);
  ClientDS.CreateDataSet;
  ClientDS.LogChanges := False;
  ClientDS.Append;
  ClientDS.FieldByName('num_vagon').Value := cxGrid1DBBandedTableView1num_vagon.DataBinding.Field.Value;
  ClientDS.FieldByName('vagon_id' ).Value := cxGrid1DBBandedTableView1vagon_id.DataBinding.Field.Value;
  ClientDS.FieldByName('IsEmpty'  ).Value := cxGrid1DBBandedTableView1IsEmpty.DataBinding.Field.Value;
//  ClientDS.FieldByName('firm_name').Value := cxGrid1DBBandedTableView1firm_name.DataBinding.Field.Value;
  ClientDS.Post;

  handle := LoadLibrary('dictionary.dll');
  @FVagonTMC := GetProcAddress(handle, 'CreateWndVagonTMCAdd');
  v := FVagonTMC(Application.Handle, False, fmMain.Lis, ClientDS);
  FreeLibrary(handle);
  ClientDS.Free;
end;

procedure TfmFactTrack.dxBarButton115Click(Sender: TObject);
begin
  cxPageControl2Change(nil);
end;

procedure TfmFactTrack.dxBarButton116Click(Sender: TObject);
var sp_fact_track_query_modify: TADOStoredProc;
                    i : integer;
           str1, str2 : TStringList;
           cnt_record : integer;
           cnt_column : integer;
           array_data : Variant;
  exApp, exWks, exWkb : Variant;
  range, cell1, cell2 : Variant;
        range_caption : Variant;
         range_footer : Variant;
             str_list : TStringList;
         Client_Vagon : TClientDataSet;
             file_pos : integer;
                  str : string;
begin
//  ShowTextMessage('Подготовка данных...', False);
//  sp_fact_track_query_modify := TADOStoredProc.Create(nil);
//  sp_fact_track_query_modify.Connection := fmMain.Lis;
//  sp_fact_track_query_modify.ProcedureName := 'sp_fact_track_query_modify';
//  sp_fact_track_query_modify.CommandTimeout := 300;
//  sp_fact_track_query_modify.Parameters.Refresh;
//  sp_fact_track_query_modify.Parameters.ParamByName('@query_id'   ).Value := cxGrid1DBBandedTableView1query_id.DataBinding.Field.AsInteger;
//  sp_fact_track_query_modify.Parameters.ParamByName('@type_action').Value := 10;
//  sp_fact_track_query_modify.Open;
//
////  str1 := TStringList.Create;
////  str2 := TStringList.Create;
////  for i:=0 to sp_fact_track_query_modify.FieldCount-1 do begin
////
////    str1.Add('array_data[1, ' + IntToStr(i+1) + '] := ''' + sp_fact_track_query_modify.FieldDefs[i].Name + ''';');
////    str2.Add('array_data[sp_fact_track_query_modify.RecNo+1, ' + IntToStr(i+1) + '] := Q.FieldByName(''' + sp_fact_track_query_modify.FieldDefs[i].Name + ''').Value;');
////  end;
////
////  str1.SaveToFile('d:\www\1.txt');
////  str2.SaveToFile('d:\www\2.txt');
//
//  exApp := CreateOleObject('Excel.Application');
//  exWkb := exApp.Workbooks.Add;
//  exWkb := exApp.ActiveWorkbook;
//  exWks := exWkb.WorkSheets[1];
//
//
//  cnt_record := sp_fact_track_query_modify.RecordCount;
//  cnt_column := 95;
//  array_data := VarArrayCreate([1, cnt_record+4, 1, cnt_column+1], varVariant);
//
//  array_data[1, 1] := 'Период';
//  array_data[1, 2] := 'ДатаДислокации';
//  array_data[1, 3] := 'ДатаДобавления';
//  array_data[1, 4] := 'ДатаОтправления';
//  array_data[1, 5] := 'ДатаПоследнегоДеповскогоРемонта';
//  array_data[1, 6] := 'ДатаСледующегоРемонта';
//  array_data[1, 7] := 'ДатаПоследнегоКапитальногоРемонта';
//  array_data[1, 8] := 'ДатаПостройки';
//  array_data[1, 9] := 'ОриентировочнаяДатаПрибытия';
//  array_data[1, 10] := 'ДатаОконСлужбы';
//  array_data[1, 11] := 'ДатаРегистрации';
//  array_data[1, 12] := 'ПробегТекДата';
//  array_data[1, 13] := 'ПробегОстДата';
//  array_data[1, 14] := 'ДатаОтправленияПоДаннымЖД';
//  array_data[1, 15] := 'ДатаПостановки';
//  array_data[1, 16] := 'НомерВагона';
//  array_data[1, 17] := 'ВесГруза';
//  array_data[1, 18] := 'Грузоподъемность';
//  array_data[1, 19] := 'ДнейДоКонцаМаршрута';
//  array_data[1, 20] := 'ДнейМаршрута';
//  array_data[1, 21] := 'ДниБезДвижения';
//  array_data[1, 22] := 'ДолготаСтанцииДислокации';
//  array_data[1, 23] := 'ДолготаСтанцииНазначения';
//  array_data[1, 24] := 'ДолготаСтанцииОтправления';
//  array_data[1, 25] := 'Тара';
//  array_data[1, 26] := 'ШиротаСтанцииДислокации';
//  array_data[1, 27] := 'ШиротаСтанцииНазначения';
//  array_data[1, 28] := 'ШиротаСтанцииОтправления';
//  array_data[1, 29] := 'ТарифСумма';
//  array_data[1, 30] := 'ВидСледующегоРемонта';
//  array_data[1, 31] := 'Группа';
//  array_data[1, 32] := 'ИДВагона';
//  array_data[1, 33] := 'СтоитНаСлежении';
//  array_data[1, 34] := 'Груженый';
//  array_data[1, 35] := 'ДатаДислокацииUNIX';
//  array_data[1, 36] := 'ИДГруппы';
//  array_data[1, 37] := 'ИДОперации';
//  array_data[1, 38] := 'ИндексПоезда';
//  array_data[1, 39] := 'КодДорогиДислокации';
//  array_data[1, 40] := 'КодДорогиНазначения';
//  array_data[1, 41] := 'КодДорогиОтправления';
//  array_data[1, 42] := 'КодЕТСНГ';
//  array_data[1, 43] := 'КодСтанцииДислокации';
//  array_data[1, 44] := 'КодСтанцииНазначения';
//  array_data[1, 45] := 'КодСтанцииОтправления';
//  array_data[1, 46] := 'Модель';
//  array_data[1, 47] := 'НаименованиеОперации';
//  array_data[1, 48] := 'НаименованиеСтанцииДислокации';
//  array_data[1, 49] := 'НаименованиеСтанцииНазначения';
//  array_data[1, 50] := 'НаименованиеСтанцииОтправления';
//  array_data[1, 51] := 'НаПостоянномСлежении';
//  array_data[1, 52] := 'НомерПоезда';
//  array_data[1, 53] := 'Прибыл';
//  array_data[1, 54] := 'РасстояниеОсталось';
//  array_data[1, 55] := 'Сломан';
//  array_data[1, 56] := 'Состояние';
//  array_data[1, 57] := 'Тип';
//  array_data[1, 58] := 'КодОперации';
//  array_data[1, 59] := 'НаименованиеГруза';
//  array_data[1, 60] := 'НомерНакладной';
//  array_data[1, 61] := 'ОКПОГрузополучателя';
//  array_data[1, 62] := 'ОКПОГрузоотправителя';
//  array_data[1, 63] := 'Грузоотправитель';
//  array_data[1, 64] := 'КодДепоПоступленияВРемонт';
//  array_data[1, 65] := 'НаименованиеДепоПоступленияВРемонт';
//  array_data[1, 66] := 'КодДепоВыходаИзРемонта';
//  array_data[1, 67] := 'НаименованиеДепоВыходаИзРемонта';
//  array_data[1, 68] := 'КодНеисправности';
//  array_data[1, 69] := 'НаименованиеНеисправности';
//  array_data[1, 70] := 'ДатаПокиданияСтОтправкиUNIX';
//  array_data[1, 71] := 'ДатаФактическогПрибытияНаСтНазначенияUNIX';
//  array_data[1, 72] := 'ДатаФактическогПрибытияНаСтНазначения';
//  array_data[1, 73] := 'ДатаОтправкиСоВременем';
//  array_data[1, 74] := 'Грузополучатель';
//  array_data[1, 75] := 'ТарифВалюта';
//  array_data[1, 76] := 'СобственникНаим';
//  array_data[1, 77] := 'АрендаторНаим';
//  array_data[1, 78] := 'ТипСлежения';
//  array_data[1, 79] := 'НомерПлатформы';
//  array_data[1, 80] := 'ОбъемКузова';
//  array_data[1, 81] := 'ВагонТипПолн';
//  array_data[1, 82] := 'ВагонРод';
//  array_data[1, 83] := 'ДепоПоследнегоДеповскогоРемонта';
//  array_data[1, 84] := 'ДепоПоследнегоКапитальногоРемонта';
//  array_data[1, 85] := 'ГУ12';
//  array_data[1, 86] := 'ПробегТекКм';
//  array_data[1, 87] := 'ПробегОстКм';
//  array_data[1, 88] := 'КонтрольРемонтаПоПробегу';
//  array_data[1, 89] := 'ВагонТипСокр';
//  array_data[1, 90] := 'НомерКонтейнера';
//  array_data[1, 91] := 'ТипКонтейнера';
//  array_data[1, 92] := 'НаименованиеОперацииАнгл';
//  array_data[1, 93] := 'КодОперацииАнгл';
//  array_data[1, 94] := 'НаименованиеСтанцииДислокацииАнг';
//  array_data[1, 95] := 'НаименованиеСтанцииНазначенияАнг';
//  array_data[1, 96] := 'НаименованиеСтанцииОтправленияАнг';
//
//  while not sp_fact_track_query_modify.Eof do begin
//    array_data[sp_fact_track_query_modify.RecNo+1, 1] := sp_fact_track_query_modify.FieldByName('Период').Value;
//    array_data[sp_fact_track_query_modify.RecNo+1, 2] := sp_fact_track_query_modify.FieldByName('ДатаДислокации').Value;
//    array_data[sp_fact_track_query_modify.RecNo+1, 3] := sp_fact_track_query_modify.FieldByName('ДатаДобавления').Value;
//    array_data[sp_fact_track_query_modify.RecNo+1, 4] := sp_fact_track_query_modify.FieldByName('ДатаОтправления').Value;
//    array_data[sp_fact_track_query_modify.RecNo+1, 5] := sp_fact_track_query_modify.FieldByName('ДатаПоследнегоДеповскогоРемонта').Value;
//    array_data[sp_fact_track_query_modify.RecNo+1, 6] := sp_fact_track_query_modify.FieldByName('ДатаСледующегоРемонта').Value;
//    array_data[sp_fact_track_query_modify.RecNo+1, 7] := sp_fact_track_query_modify.FieldByName('ДатаПоследнегоКапитальногоРемонта').Value;
//    array_data[sp_fact_track_query_modify.RecNo+1, 8] := sp_fact_track_query_modify.FieldByName('ДатаПостройки').Value;
//    array_data[sp_fact_track_query_modify.RecNo+1, 9] := sp_fact_track_query_modify.FieldByName('ОриентировочнаяДатаПрибытия').Value;
//    array_data[sp_fact_track_query_modify.RecNo+1, 10] := sp_fact_track_query_modify.FieldByName('ДатаОконСлужбы').Value;
//    array_data[sp_fact_track_query_modify.RecNo+1, 11] := sp_fact_track_query_modify.FieldByName('ДатаРегистрации').Value;
//    array_data[sp_fact_track_query_modify.RecNo+1, 12] := sp_fact_track_query_modify.FieldByName('ПробегТекДата').Value;
//    array_data[sp_fact_track_query_modify.RecNo+1, 13] := sp_fact_track_query_modify.FieldByName('ПробегОстДата').Value;
//    array_data[sp_fact_track_query_modify.RecNo+1, 14] := sp_fact_track_query_modify.FieldByName('ДатаОтправленияПоДаннымЖД').Value;
//    array_data[sp_fact_track_query_modify.RecNo+1, 15] := sp_fact_track_query_modify.FieldByName('ДатаПостановки').Value;
//    array_data[sp_fact_track_query_modify.RecNo+1, 16] := sp_fact_track_query_modify.FieldByName('НомерВагона').Value;
//    array_data[sp_fact_track_query_modify.RecNo+1, 17] := sp_fact_track_query_modify.FieldByName('ВесГруза').Value;
//    array_data[sp_fact_track_query_modify.RecNo+1, 18] := sp_fact_track_query_modify.FieldByName('Грузоподъемность').Value;
//    array_data[sp_fact_track_query_modify.RecNo+1, 19] := sp_fact_track_query_modify.FieldByName('ДнейДоКонцаМаршрута').Value;
//    array_data[sp_fact_track_query_modify.RecNo+1, 20] := sp_fact_track_query_modify.FieldByName('ДнейМаршрута').Value;
//    array_data[sp_fact_track_query_modify.RecNo+1, 21] := sp_fact_track_query_modify.FieldByName('ДниБезДвижения').Value;
//    array_data[sp_fact_track_query_modify.RecNo+1, 22] := sp_fact_track_query_modify.FieldByName('ДолготаСтанцииДислокации').Value;
//    array_data[sp_fact_track_query_modify.RecNo+1, 23] := sp_fact_track_query_modify.FieldByName('ДолготаСтанцииНазначения').Value;
//    array_data[sp_fact_track_query_modify.RecNo+1, 24] := sp_fact_track_query_modify.FieldByName('ДолготаСтанцииОтправления').Value;
//    array_data[sp_fact_track_query_modify.RecNo+1, 25] := sp_fact_track_query_modify.FieldByName('Тара').Value;
//    array_data[sp_fact_track_query_modify.RecNo+1, 26] := sp_fact_track_query_modify.FieldByName('ШиротаСтанцииДислокации').Value;
//    array_data[sp_fact_track_query_modify.RecNo+1, 27] := sp_fact_track_query_modify.FieldByName('ШиротаСтанцииНазначения').Value;
//    array_data[sp_fact_track_query_modify.RecNo+1, 28] := sp_fact_track_query_modify.FieldByName('ШиротаСтанцииОтправления').Value;
//    array_data[sp_fact_track_query_modify.RecNo+1, 29] := sp_fact_track_query_modify.FieldByName('ТарифСумма').Value;
//    array_data[sp_fact_track_query_modify.RecNo+1, 30] := sp_fact_track_query_modify.FieldByName('ВидСледующегоРемонта').Value;
//    array_data[sp_fact_track_query_modify.RecNo+1, 31] := sp_fact_track_query_modify.FieldByName('Группа').Value;
//    array_data[sp_fact_track_query_modify.RecNo+1, 32] := sp_fact_track_query_modify.FieldByName('ИДВагона').Value;
//    array_data[sp_fact_track_query_modify.RecNo+1, 33] := sp_fact_track_query_modify.FieldByName('СтоитНаСлежении').Value;
//    array_data[sp_fact_track_query_modify.RecNo+1, 34] := sp_fact_track_query_modify.FieldByName('Груженый').Value;
//    array_data[sp_fact_track_query_modify.RecNo+1, 35] := sp_fact_track_query_modify.FieldByName('ДатаДислокацииUNIX').Value;
//    array_data[sp_fact_track_query_modify.RecNo+1, 36] := sp_fact_track_query_modify.FieldByName('ИДГруппы').Value;
//    array_data[sp_fact_track_query_modify.RecNo+1, 37] := sp_fact_track_query_modify.FieldByName('ИДОперации').Value;
//    array_data[sp_fact_track_query_modify.RecNo+1, 38] := sp_fact_track_query_modify.FieldByName('ИндексПоезда').Value;
//    array_data[sp_fact_track_query_modify.RecNo+1, 39] := sp_fact_track_query_modify.FieldByName('КодДорогиДислокации').Value;
//    array_data[sp_fact_track_query_modify.RecNo+1, 40] := sp_fact_track_query_modify.FieldByName('КодДорогиНазначения').Value;
//    array_data[sp_fact_track_query_modify.RecNo+1, 41] := sp_fact_track_query_modify.FieldByName('КодДорогиОтправления').Value;
//    array_data[sp_fact_track_query_modify.RecNo+1, 42] := sp_fact_track_query_modify.FieldByName('КодЕТСНГ').Value;
//    array_data[sp_fact_track_query_modify.RecNo+1, 43] := sp_fact_track_query_modify.FieldByName('КодСтанцииДислокации').Value;
//    array_data[sp_fact_track_query_modify.RecNo+1, 44] := sp_fact_track_query_modify.FieldByName('КодСтанцииНазначения').Value;
//    array_data[sp_fact_track_query_modify.RecNo+1, 45] := sp_fact_track_query_modify.FieldByName('КодСтанцииОтправления').Value;
//    array_data[sp_fact_track_query_modify.RecNo+1, 46] := sp_fact_track_query_modify.FieldByName('Модель').Value;
//    array_data[sp_fact_track_query_modify.RecNo+1, 47] := sp_fact_track_query_modify.FieldByName('НаименованиеОперации').Value;
//    array_data[sp_fact_track_query_modify.RecNo+1, 48] := sp_fact_track_query_modify.FieldByName('НаименованиеСтанцииДислокации').Value;
//    array_data[sp_fact_track_query_modify.RecNo+1, 49] := sp_fact_track_query_modify.FieldByName('НаименованиеСтанцииНазначения').Value;
//    array_data[sp_fact_track_query_modify.RecNo+1, 50] := sp_fact_track_query_modify.FieldByName('НаименованиеСтанцииОтправления').Value;
//    array_data[sp_fact_track_query_modify.RecNo+1, 51] := sp_fact_track_query_modify.FieldByName('НаПостоянномСлежении').Value;
//    array_data[sp_fact_track_query_modify.RecNo+1, 52] := sp_fact_track_query_modify.FieldByName('НомерПоезда').Value;
//    array_data[sp_fact_track_query_modify.RecNo+1, 53] := sp_fact_track_query_modify.FieldByName('Прибыл').Value;
//    array_data[sp_fact_track_query_modify.RecNo+1, 54] := sp_fact_track_query_modify.FieldByName('РасстояниеОсталось').Value;
//    array_data[sp_fact_track_query_modify.RecNo+1, 55] := sp_fact_track_query_modify.FieldByName('Сломан').Value;
//    array_data[sp_fact_track_query_modify.RecNo+1, 56] := sp_fact_track_query_modify.FieldByName('Состояние').Value;
//    array_data[sp_fact_track_query_modify.RecNo+1, 57] := sp_fact_track_query_modify.FieldByName('Тип').Value;
//    array_data[sp_fact_track_query_modify.RecNo+1, 58] := sp_fact_track_query_modify.FieldByName('КодОперации').Value;
//    array_data[sp_fact_track_query_modify.RecNo+1, 59] := sp_fact_track_query_modify.FieldByName('НаименованиеГруза').Value;
//    array_data[sp_fact_track_query_modify.RecNo+1, 60] := sp_fact_track_query_modify.FieldByName('НомерНакладной').Value;
//    array_data[sp_fact_track_query_modify.RecNo+1, 61] := sp_fact_track_query_modify.FieldByName('ОКПОГрузополучателя').Value;
//    array_data[sp_fact_track_query_modify.RecNo+1, 62] := sp_fact_track_query_modify.FieldByName('ОКПОГрузоотправителя').Value;
//    array_data[sp_fact_track_query_modify.RecNo+1, 63] := sp_fact_track_query_modify.FieldByName('Грузоотправитель').Value;
//    array_data[sp_fact_track_query_modify.RecNo+1, 64] := sp_fact_track_query_modify.FieldByName('КодДепоПоступленияВРемонт').Value;
//    array_data[sp_fact_track_query_modify.RecNo+1, 65] := sp_fact_track_query_modify.FieldByName('НаименованиеДепоПоступленияВРемонт').Value;
//    array_data[sp_fact_track_query_modify.RecNo+1, 66] := sp_fact_track_query_modify.FieldByName('КодДепоВыходаИзРемонта').Value;
//    array_data[sp_fact_track_query_modify.RecNo+1, 67] := sp_fact_track_query_modify.FieldByName('НаименованиеДепоВыходаИзРемонта').Value;
//    array_data[sp_fact_track_query_modify.RecNo+1, 68] := sp_fact_track_query_modify.FieldByName('КодНеисправности').Value;
//    array_data[sp_fact_track_query_modify.RecNo+1, 69] := sp_fact_track_query_modify.FieldByName('НаименованиеНеисправности').Value;
//    array_data[sp_fact_track_query_modify.RecNo+1, 70] := sp_fact_track_query_modify.FieldByName('ДатаПокиданияСтОтправкиUNIX').Value;
//    array_data[sp_fact_track_query_modify.RecNo+1, 71] := sp_fact_track_query_modify.FieldByName('ДатаФактическогПрибытияНаСтНазначенияUNIX').Value;
//    array_data[sp_fact_track_query_modify.RecNo+1, 72] := sp_fact_track_query_modify.FieldByName('ДатаФактическогПрибытияНаСтНазначения').Value;
//    array_data[sp_fact_track_query_modify.RecNo+1, 73] := sp_fact_track_query_modify.FieldByName('ДатаОтправкиСоВременем').Value;
//    array_data[sp_fact_track_query_modify.RecNo+1, 74] := sp_fact_track_query_modify.FieldByName('Грузополучатель').Value;
//    array_data[sp_fact_track_query_modify.RecNo+1, 75] := sp_fact_track_query_modify.FieldByName('ТарифВалюта').Value;
//    array_data[sp_fact_track_query_modify.RecNo+1, 76] := sp_fact_track_query_modify.FieldByName('СобственникНаим').Value;
//    array_data[sp_fact_track_query_modify.RecNo+1, 77] := sp_fact_track_query_modify.FieldByName('АрендаторНаим').Value;
//    array_data[sp_fact_track_query_modify.RecNo+1, 78] := sp_fact_track_query_modify.FieldByName('ТипСлежения').Value;
//    array_data[sp_fact_track_query_modify.RecNo+1, 79] := sp_fact_track_query_modify.FieldByName('НомерПлатформы').Value;
//    array_data[sp_fact_track_query_modify.RecNo+1, 80] := sp_fact_track_query_modify.FieldByName('ОбъемКузова').Value;
//    array_data[sp_fact_track_query_modify.RecNo+1, 81] := sp_fact_track_query_modify.FieldByName('ВагонТипПолн').Value;
//    array_data[sp_fact_track_query_modify.RecNo+1, 82] := sp_fact_track_query_modify.FieldByName('ВагонРод').Value;
//    array_data[sp_fact_track_query_modify.RecNo+1, 83] := sp_fact_track_query_modify.FieldByName('ДепоПоследнегоДеповскогоРемонта').Value;
//    array_data[sp_fact_track_query_modify.RecNo+1, 84] := sp_fact_track_query_modify.FieldByName('ДепоПоследнегоКапитальногоРемонта').Value;
//    array_data[sp_fact_track_query_modify.RecNo+1, 85] := sp_fact_track_query_modify.FieldByName('ГУ12').Value;
//    array_data[sp_fact_track_query_modify.RecNo+1, 86] := sp_fact_track_query_modify.FieldByName('ПробегТекКм').Value;
//    array_data[sp_fact_track_query_modify.RecNo+1, 87] := sp_fact_track_query_modify.FieldByName('ПробегОстКм').Value;
//    array_data[sp_fact_track_query_modify.RecNo+1, 88] := sp_fact_track_query_modify.FieldByName('КонтрольРемонтаПоПробегу').Value;
//    array_data[sp_fact_track_query_modify.RecNo+1, 89] := sp_fact_track_query_modify.FieldByName('ВагонТипСокр').Value;
//    array_data[sp_fact_track_query_modify.RecNo+1, 90] := sp_fact_track_query_modify.FieldByName('НомерКонтейнера').Value;
//    array_data[sp_fact_track_query_modify.RecNo+1, 91] := sp_fact_track_query_modify.FieldByName('ТипКонтейнера').Value;
//    array_data[sp_fact_track_query_modify.RecNo+1, 92] := sp_fact_track_query_modify.FieldByName('НаименованиеОперацииАнгл').Value;
//    array_data[sp_fact_track_query_modify.RecNo+1, 93] := sp_fact_track_query_modify.FieldByName('КодОперацииАнгл').Value;
//    array_data[sp_fact_track_query_modify.RecNo+1, 94] := sp_fact_track_query_modify.FieldByName('НаименованиеСтанцииДислокацииАнг').Value;
//    array_data[sp_fact_track_query_modify.RecNo+1, 95] := sp_fact_track_query_modify.FieldByName('НаименованиеСтанцииНазначенияАнг').Value;
//    array_data[sp_fact_track_query_modify.RecNo+1, 96] := sp_fact_track_query_modify.FieldByName('НаименованиеСтанцииОтправленияАнг').Value;
//
//    sp_fact_track_query_modify.Next;
//  end;
//
//  ShowTextMessage('Вывод в Excel...', False);
//
//  // Левая верхняя ячейка области, в которую будем выводить данные
//  cell1 := exWks.Cells[3, 2];
//  // Правая нижняя ячейка области, в которую будем выводить данные
//  cell2 := exWks.Cells[3 + cnt_record - 1, 2 + cnt_column - 1];
//  // Область, в которую будем выводить данные
//  range := exWks.Range[cell1, cell2];
//
//  // Область заголовка
//  cell1 := exWks.Cells[3, 2];
//  cell2 := exWks.Cells[3, 2 + cnt_column - 1];
//  range_caption := exWks.Range[cell1, cell2];
//
//  // Область итогов
//  cell1 := exWks.Cells[3 + cnt_record - 1, 2];
//  cell2 := exWks.Cells[3 + cnt_record - 1, 2 + cnt_column - 1];
//  range_footer := exWks.Range[cell1, cell2];
//
//  // Вывод данных
//  range.Value := array_data;
//
//  exWks.Cells[4 + cnt_record - 2, 2].Value := '=COUNTA(R[-1]C:R[-' + IntToStr(cnt_record-2) + ']C)';
//
//  VarClear(array_data);
//
//  ShowTextMessage('Печать таблицы в Excel...' + #10 + 'Форматирование таблицы...', False);
//  exApp.ActiveWindow.DisplayGridlines := False;
//
//  range.Columns[1].NumberFormat := 'ДД'+FormatSettings.DateSeparator+'ММ'+FormatSettings.DateSeparator+'ГГГГ ч:мм';
//  range.Columns[2].NumberFormat := 'ДД'+FormatSettings.DateSeparator+'ММ'+FormatSettings.DateSeparator+'ГГГГ ч:мм';
//  range.Columns[3].NumberFormat := 'ДД'+FormatSettings.DateSeparator+'ММ'+FormatSettings.DateSeparator+'ГГГГ ч:мм';
//  range.Columns[4].NumberFormat := 'ДД'+FormatSettings.DateSeparator+'ММ'+FormatSettings.DateSeparator+'ГГГГ ч:мм';
//  range.Columns[5].NumberFormat := 'ДД'+FormatSettings.DateSeparator+'ММ'+FormatSettings.DateSeparator+'ГГГГ';
//  range.Columns[6].NumberFormat := 'ДД'+FormatSettings.DateSeparator+'ММ'+FormatSettings.DateSeparator+'ГГГГ';
//  range.Columns[7].NumberFormat := 'ДД'+FormatSettings.DateSeparator+'ММ'+FormatSettings.DateSeparator+'ГГГГ';
//  range.Columns[8].NumberFormat := 'ДД'+FormatSettings.DateSeparator+'ММ'+FormatSettings.DateSeparator+'ГГГГ';
//  range.Columns[9].NumberFormat := 'ДД'+FormatSettings.DateSeparator+'ММ'+FormatSettings.DateSeparator+'ГГГГ';
//  range.Columns[10].NumberFormat := 'ДД'+FormatSettings.DateSeparator+'ММ'+FormatSettings.DateSeparator+'ГГГГ';
//  range.Columns[11].NumberFormat := 'ДД'+FormatSettings.DateSeparator+'ММ'+FormatSettings.DateSeparator+'ГГГГ';
//  range.Columns[12].NumberFormat := 'ДД'+FormatSettings.DateSeparator+'ММ'+FormatSettings.DateSeparator+'ГГГГ';
//  range.Columns[13].NumberFormat := 'ДД'+FormatSettings.DateSeparator+'ММ'+FormatSettings.DateSeparator+'ГГГГ';
//  range.Columns[14].NumberFormat := 'ДД'+FormatSettings.DateSeparator+'ММ'+FormatSettings.DateSeparator+'ГГГГ ч:мм';
//  range.Columns[15].NumberFormat := 'ДД'+FormatSettings.DateSeparator+'ММ'+FormatSettings.DateSeparator+'ГГГГ ч:мм';
//
//
//  range.Columns[17].NumberFormat := '# ##0,00';
//  range.Columns[18].NumberFormat := '# ##0';
//  range.Columns[19].NumberFormat := '# ##0';
//  range.Columns[20].NumberFormat := '# ##0';
//  range.Columns[21].NumberFormat := '# ##0,00';
//  range.Columns[22].NumberFormat := '# ##0,00';
//  range.Columns[23].NumberFormat := '# ##0,00';
//  range.Columns[24].NumberFormat := '# ##0,00';
//  range.Columns[25].NumberFormat := '# ##0,00';
//  range.Columns[26].NumberFormat := '# ##0,00';
//  range.Columns[27].NumberFormat := '# ##0,00';
//  range.Columns[28].NumberFormat := '# ##0,00';
//
//  range.Borders[7].LineStyle := 1;
//  range.Borders[8].LineStyle := 1;
//  range.Borders[9].LineStyle := 1;
//  range.Borders[10].LineStyle := 1;
//  range.Borders[11].LineStyle := 1;
//  range.Borders[12].LineStyle := 1;
//
//  range.Borders[7].Color := $C0C0C0;
//  range.Borders[8].Color := $C0C0C0;
//  range.Borders[9].Color := $C0C0C0;
//  range.Borders[10].Color := $C0C0C0;
//  range.Borders[11].Color := $C0C0C0;
//  range.Borders[12].Color := $C0C0C0;
//
//  range_caption.Interior.Color := $CCFFCC;
//  range_caption.Borders[7].Color := $000000;
//  range_caption.Borders[8].Color := $000000;
//  range_caption.Borders[9].Color := $000000;
//  range_caption.Borders[10].Color := $000000;
//  range_caption.Borders[11].Color := $000000;
//  range_caption.Borders[12].Color := $000000;
//
//  range_footer.Interior.Color := $CCFFCC;
//  range_footer.Borders[7].Color := $000000;
//  range_footer.Borders[8].Color := $000000;
//  range_footer.Borders[9].Color := $000000;
//  range_footer.Borders[10].Color := $000000;
//  range_footer.Borders[11].Color := $000000;
//  range_footer.Borders[12].Color := $000000;
//
//
//  exWks.Cells.Font.Size := 8;
//  exWks.Cells.Font.Name := 'MS Sans Serif';
//  exWks.Cells.Rows.AutoFit;
//
//  range.WrapText := False;
//
//  exWks.Range['A1'].Select;
//  exApp.Visible := True;
//  exWks := Null; exWkb := Null; exApp := Null;
//  VarClear(exWks); VarClear(exWkb); VarClear(exApp);
//
//
//  sp_fact_track_query_modify.Free;
//  ShowTextMessage;
end;

procedure TfmFactTrack.dxBarButton86Click(Sender: TObject);
begin
	SetdxDBGridColumns(cxGrid2DBBandedTableView1);
end;

procedure TfmFactTrack.dxBarButton87Click(Sender: TObject);
begin
	cxGrid2DBBandedTableView1.OptionsView.GroupByBox := not cxGrid2DBBandedTableView1.OptionsView.GroupByBox;
end;

procedure TfmFactTrack.dxBarButton102Click(Sender: TObject);
begin
  cxGrid1DBBandedTableView1.Painter.Invalidate;
end;

procedure TfmFactTrack.dxBarButton103Click(Sender: TObject);
var               index_train : string;
 node_begin_cod, node_end_cod : string;
           fact_track_trip_id : integer;
                            Q : TADOQuery;
                     ClientDS : TClientDataSet;
                         rAtl : variant; //RailAtlas_TLB.IApplication;
                 Object_CLSID : TGUID;
   node_cod  : string;
   xml_cod   : string;
   where_cod : string;
begin
// Первая строка в Client_Records станция отправления
// Последняя строка в Client_Records станция назначения

  try
    rAtl := CreateOleObject('RailAtlas.Application');
//    Object_CLSID:= RailAtlas_TLB.CLASS_Application;
//    rAtl := CreateComObject(Object_CLSID) as RailAtlas_TLB.IApplication;

    // ----- полный маршрут -------------
    node_begin_cod := cxGrid1DBBandedTableView1node_begin_cod.DataBinding.Field.AsString;
    node_end_cod := cxGrid1DBBandedTableView1node_end_cod.DataBinding.Field.AsString;
    rAtl.RouteColor(node_begin_cod, '', node_end_cod, '', '#0000FF');


    // ----- маршрут до станции операции -------------
    ClientDS := TClientDataSet.Create(nil);
    ClientDS.FieldDefs.Add('node_cod',  ftString, 255); // код станции - ОБЯЗАТЕЛЬНОЕ поле
    ClientDS.FieldDefs.Add('color',     ftString, 255); // цвет станции на карте (#15F110, #FFFFFF и т.д...) - необязательное
    ClientDS.FieldDefs.Add('text',      ftString, 255); // Комментарий для станции - необязательное
    ClientDS.FieldDefs.Add('set_where', ftBoolean);     // Признак где сейчас вагон - необязательное
    ClientDS.CreateDataSet;

    ClientDS.Append;
    ClientDS['node_cod'] := cxGrid1DBBandedTableView1node_begin_cod.DataBinding.Field.AsString;
    ClientDS.Post;

    Q := TADOQuery.Create(nil);
    Q.Connection := fmMain.Lis;
    Q.SQL.Add('SELECT node_operation_cod FROM fact_track_vagon WHERE fact_track_trip_id=' + IntToStr(cxGrid1DBBandedTableView1fact_track_trip_id.DataBinding.Field.AsInteger) );
    Q.SQL.Add('ORDER BY date_operation');
    Q.Open;
    while not Q.Eof do begin
      if not ClientDS.Locate('node_cod', Q.FieldByName('node_operation_cod').AsString, []) then begin
        ClientDS.Append;
        ClientDS['node_cod'] := Q.FieldByName('node_operation_cod').AsString;
        ClientDS['color'] := '#FF0000';
        Q.Next;
        if Q.Eof then ClientDS['set_where'] := True;
        ClientDS.Post;

      end else
        Q.Next;
    end;


    if ClientDS.RecordCount >= 2 then begin
      where_cod := '';
      xml_cod := '<?xml version=''1.0''?><ra:Information xmlns:ra=''http://rail.ctm.ru/RailAtlas/2006'' addnames=''0''><ra:layername>Дислокация</ra:layername> '+
                    '<ra:link><ra:mode>1</ra:mode><ra:color>#FF0000</ra:color> <ra:FromToFlags>1</ra:FromToFlags></ra:link>';
      ClientDS.First;
      while not ClientDS.Eof do begin
        xml_cod := xml_cod + '<ra:info>';
        if not ClientDS.FieldByName('color').IsNull then begin
          xml_cod := xml_cod + '<ra:color>' + ClientDS.FieldByName('color').AsString + '</ra:color>';
        end;
        if not ClientDS.FieldByName('node_cod').IsNull then begin
          xml_cod := xml_cod + '<ra:code>' + ClientDS.FieldByName('node_cod').AsString + '</ra:code>';
          // показать иконку вагона в месте нахождения
          if (not ClientDS.FieldByName('set_where').IsNull) and  (ClientDS.FieldByName('set_where').AsBoolean) then
            where_cod := ClientDS.FieldByName('node_cod').AsString;
        end;
        if not ClientDS.FieldByName('text').IsNull then begin
          xml_cod := xml_cod + '<ra:text>' + ClientDS.FieldByName('text').AsString + '</ra:text>';
        end;
        xml_cod := xml_cod + '</ra:info>';
        ClientDS.Next;
      end;

      if where_cod <> '' then
        rAtl.ShowStationByCode(where_cod, '');

      rAtl.SetUserDataXml(xml_cod);
      rAtl.ShowAllUserData;
    end;

    ClientDS.Close;
    ClientDS.Free;


    rAtl.ShowStationByCode(cxGrid1DBBandedTableView1node_operation_cod.DataBinding.Field.AsString, '');
    rAtl.ShowAllUserData;


  except
    on E:Exception do
      Application.MessageBox(PChar(E.Message), 'Ошибка', MB_OK);
  end;

  rAtl := null;
end;

procedure TfmFactTrack.dxBarButton117Click(Sender: TObject);
var      rAtl : variant;  //RailAtlas_TLB.IApplication;
 Object_CLSID : TGUID;
           SP : TADOStoredProc;
begin
  try
    rAtl := CreateOleObject('RailAtlas.Application');
//    Object_CLSID:= RailAtlas_TLB.CLASS_Application;
//    rAtl := CreateComObject(Object_CLSID) as RailAtlas_TLB.IApplication;
    rAtl.ClearAllUserData;
  except
    on E:Exception do
      Application.MessageBox(PChar(E.Message), 'Ошибка', MB_OK);
  end;

  SP := TADOStoredProc.Create(nil);
  SP.Connection := fmMain.Lis;
  SP.ProcedureName := 'sp_fact_track_stat_GET';
  SP.Parameters.Refresh;

  SP.Parameters.ParamByName('@num_vagon'  ).Value := cxGrid1DBBandedTableView1num_vagon.DataBinding.Field.AsString;
  SP.Parameters.ParamByName('@date_begin' ).Value := Now - 61;
  SP.Parameters.ParamByName('@date_last'  ).Value := Now;
  SP.Parameters.ParamByName('@period_type').Value := 5;
  SP.Open;
  while not SP.Eof do begin

    if SP.FieldByName('fact_weight').AsInteger <= 0 then
      rAtl.RouteColor(SP.FieldByName('node_begin_cod').AsString, '', SP.FieldByName('node_end_cod').AsString, '', '#FF0000')
    else
      rAtl.RouteColor(SP.FieldByName('node_begin_cod').AsString, '', SP.FieldByName('node_end_cod').AsString, '', '#00FF00');

    SP.Next;
  end;
  rAtl.ShowAllUserData;
  rAtl := null;

  SP.Free;
end;

procedure TfmFactTrack.dxBarButton104Click(Sender: TObject);
var S: Variant;
begin
  S := ShowFactTrackTripDlg(Application.Handle, usr_pwd, 1);
  _SetVagonTransport := S;
end;

procedure TfmFactTrack.dxBarButton105Click(Sender: TObject);
begin
  UsersSettingModify(TComponent(Sender).Tag, TForm(self).Name, TcxControl(cxGrid1DBBandedTableView1), fmMain.Lis);
end;

procedure TfmFactTrack.dxBarButton107Click(Sender: TObject);
begin
  UsersSettingModify(TComponent(Sender).Tag, TForm(self).Name, TcxControl(cxGridDBBandedTableView1), fmMain.Lis);
end;

procedure TfmFactTrack.dxBarButton89Click(Sender: TObject);
begin
  cxGrid1DBBandedTableView1.Painter.Invalidate;
end;

procedure TfmFactTrack.dxBarButton90Click(Sender: TObject);
begin
  cxGrid1DBBandedTableView1.Painter.Invalidate;
end;

procedure TfmFactTrack.dxBarButton99Click(Sender: TObject);
begin
  cxGrid1DBBandedTableView1.Painter.Invalidate;
end;

procedure TfmFactTrack.dxBarButton91Click(Sender: TObject);
begin
  cxGrid1DBBandedTableView1.Painter.Invalidate;
end;

procedure TfmFactTrack.dxBarButton96Click(Sender: TObject);
begin
  cxGrid1DBBandedTableView1.Painter.Invalidate;
end;


procedure TfmFactTrack.dxBarButton92Click(Sender: TObject);
begin
  if dxBarButton92.Down then
    Panel1.Visible := True
  else
    Panel1.Visible := False;
end;


procedure TfmFactTrack.dxBarButton9Click(Sender: TObject);
var   str_fact_track_id      : string;
      Sp_Fact_Track_Stay_Get : TADOStoredProc;
      exWks, exApp           : Variant;
      row_insert             : integer;
      date1,date2            : TDateTime;
      Reg                    : TRegistry;
begin
  str_fact_track_id := cx_GetSelectedValues(cxGrid1, 'fact_track_id');

  if str_fact_track_id = '' then exit;

  Screen.Cursor := crHourglass;
  ShowTextMessage('Запуск Excel...', False);
  exApp := CreateOleObject('Excel.Application');
  exApp.Workbooks.Add(GetDocBlob(fmMain.Lis, 112)); // 'Простой вагонов.xls'
  exWks := exApp.ActiveWorkbook.WorkSheets[1];

  row_insert := 4;

  Sp_Fact_Track_Stay_Get := TADOStoredProc.Create(nil);
  Sp_Fact_Track_Stay_Get.Connection := fmMain.Lis;
  Sp_Fact_Track_Stay_Get.ProcedureName := 'sp_fact_track_stay_get';
  Sp_Fact_Track_Stay_Get.Parameters.Refresh;
  Sp_Fact_Track_Stay_Get.Parameters.ParamByName('@str_fact_track_id').Value := str_fact_track_id;
  Sp_Fact_Track_Stay_Get.Open;
  Sp_Fact_Track_Stay_Get.First;

  while not Sp_Fact_Track_Stay_Get.Eof do begin
      exWks.Range['B'+IntToStr(row_insert)].Value := Sp_Fact_Track_Stay_Get.RecNo;
      exWks.Range['C'+IntToStr(row_insert)].Value := Sp_Fact_Track_Stay_Get.FieldByName('num_vagon').AsString;
      exWks.Range['D'+IntToStr(row_insert)].Value := Sp_Fact_Track_Stay_Get.FieldByName('date_otpr').AsString;
      exWks.Range['E'+IntToStr(row_insert)].Value := Sp_Fact_Track_Stay_Get.FieldByName('node_begin_name').AsString;
      exWks.Range['F'+IntToStr(row_insert)].Value := Sp_Fact_Track_Stay_Get.FieldByName('node_end_name').AsString;
      exWks.Range['G'+IntToStr(row_insert)].Value := Sp_Fact_Track_Stay_Get.FieldByName('stay_count').AsString;
      exWks.Range['H'+IntToStr(row_insert)].Value := Sp_Fact_Track_Stay_Get.FieldByName('node_operation_name').AsString;
      Sp_Fact_Track_Stay_Get.Next;
      if not Sp_Fact_Track_Stay_Get.Eof then begin
        xCopyRow(exApp,row_insert + 1,row_insert +1);
        inc(row_insert);
      end;
      ShowTextMessage('Идет формирование отчета по простою. Обработано '+IntToStr(row_insert - 4)+' из '+IntToStr(Sp_Fact_Track_Stay_Get.RecordCount)+#13#10+ 'Подождите пожалуйста...', False);
  end;

  exApp.Rows[IntToStr(row_insert + 1) + ':' + IntToStr(row_insert + 1)].Select;
  exApp.Selection.Delete;

  exWks.PageSetup.PrintArea := exWks.Range['A1:G'+IntToStr(row_insert)].Address;
  exApp.Range['A1'].Select;
  exApp.Visible := True;

  Sp_Fact_Track_Stay_Get.Free;
  exApp := Null;  exWks := Null;
  ShowTextMessage('', True);
  Screen.Cursor := crDefault;

end;

procedure TfmFactTrack.dxBarButton_SelectClick(Sender: TObject);
begin
  Ffact_track_id := cxGrid1DBBandedTableView1fact_track_id.DataBinding.Field.AsInteger;
  ModalResult := mrOk;
end;

{$REGION 'Печать таблицы в Excel'}
procedure TfmFactTrack.Excel3Click(Sender: TObject);
begin
  case TdxBarButton(Sender).ClickItemLink.Owner.Owner.Tag of
    1 : PrintcxGrid(cxGrid1DBBandedTableView1);
    2 : PrintcxGrid(cxGrid2DBBandedTableView1);
    3 : PrintcxGrid(cxGrid3DBBandedTableView1);
    4 : PrintcxGrid(cxGridDBBandedTableView1);
    5 : PrintcxGrid(cxGrid12DBBandedTableView1);
  end;
end;
{$ENDREGION 'Печать таблицы в Excel'}

procedure TfmFactTrack.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
  FClientDS_model_vagon_kargoETSNG_cod.Free;
end;

procedure TfmFactTrack.FormDestroy(Sender: TObject);
begin
  StoreRegistryGrid(rgSave,'\Software\Lis1\FactTrack_Grids', cxGrid1DBBandedTableView1, 3);
  StoreRegistryGrid(rgSave,'\Software\Lis1\FactTrack_Grids', cxGrid2DBBandedTableView1);
  StoreRegistryGrid(rgSave,'\Software\Lis1\FactTrack_Grids', cxGrid3DBBandedTableView1);
  StoreRegistryGrid(rgSave,'\Software\Lis1\FactTrack_Grids', cxGridDBBandedTableView1);
  StoreRegistryGrid(rgSave,'\Software\Lis1\FactTrack_Grids', cxGrid12DBBandedTableView1);


  RestoreGroupedColumns(cxGrid1DBBandedTableView1);
  RestoreGroupedColumns(cxGrid3DBBandedTableView1);
end;

procedure TfmFactTrack.N2Click(Sender: TObject);
begin
  RailAtlas_ShowRoute(fmMain.Lis,  cxGrid1DBBandedTableView1node_begin_cod.DataBinding.Field.AsString,  cxGrid1DBBandedTableView1node_end_cod.DataBinding.Field.AsString);
end;

procedure TfmFactTrack.N4Click(Sender: TObject);
begin
  RailAtlas_ShowRoute(fmMain.Lis,  cxGrid1DBBandedTableView1node_operation_cod.DataBinding.Field.AsString, '');
end;

procedure TfmFactTrack.dxBarButton62Click(Sender: TObject);
var ClientDS : TClientDataSet;
begin
  ClientDS := TClientDataSet.Create(nil);
  ClientDS.FieldDefs.Add('node_cod',  ftString, 255); // код станции - ОБЯЗАТЕЛЬНОЕ поле
  ClientDS.FieldDefs.Add('color',ftString, 255);  // цвет станции на карте (#15F110, #FFFFFF и т.д...) - необязательное
  ClientDS.FieldDefs.Add('text',  ftString, 255); // Комментарий для станции - необязательное
  ClientDS.FieldDefs.Add('set_where',  ftBoolean); // Признак где сейчас вагон - необязательное
  ClientDS.CreateDataSet;

  ClientDS.Edit;
  ClientDS.FieldByName('node_cod' ).Value := cxGrid1DBBandedTableView1node_begin_cod.DataBinding.Field.AsString;
  ClientDS.FieldByName('color'    ).Value := '#FFFFFF';
  ClientDS.FieldByName('text'     ).Value := cxGrid1DBBandedTableView1num_vagon.DataBinding.Field.AsString;
  //ClientDS.FieldByName('set_where').Value := Q.FieldByName('firm_self_name').Value;
  ClientDS.Post;
  ClientDS.Next;

  ClientDS.Append;
  ClientDS.Edit;
  ClientDS.FieldByName('node_cod' ).Value := cxGrid1DBBandedTableView1node_operation_cod.DataBinding.Field.AsString;
  //ClientDS.FieldByName('color'    ).Value := '#15F110';
  ClientDS.FieldByName('text'     ).Value := cxGrid1DBBandedTableView1num_vagon.DataBinding.Field.AsString;
  ClientDS.FieldByName('set_where').Value := True;
  ClientDS.Post;
  ClientDS.Next;

  ClientDS.Append;
  ClientDS.Edit;
  ClientDS.FieldByName('node_cod' ).Value := cxGrid1DBBandedTableView1node_end_cod.DataBinding.Field.AsString;
  ClientDS.FieldByName('color'    ).Value := '#15F110';
  ClientDS.FieldByName('text'     ).Value := cxGrid1DBBandedTableView1num_vagon.DataBinding.Field.AsString;
  //ClientDS.FieldByName('set_where').Value := Q.FieldByName('firm_self_name').Value;
  ClientDS.Post;

  ShowRouteRailAtlas(ClientDS);
end;

procedure TfmFactTrack.N14Click(Sender: TObject);
begin
   SetdxDBGridColumns(cxGrid1DBBandedTableView1);
end;

procedure TfmFactTrack.N74Click(Sender: TObject);
begin
  cxGrid1DBBandedTableView1.OptionsView.GroupByBox := not cxGrid1DBBandedTableView1.OptionsView.GroupByBox;
end;

procedure TfmFactTrack.N82Click(Sender: TObject);
begin
  SetRecordColor('fact_track_id', cxGrid1DBBandedTableView1, 'fact_track_vagon', TMenuItem(Sender).Tag=1);
  RefreshQueryGrid(cxGrid1DBBandedTableView1, 'fact_track_id', cxGrid1DBBandedTableView1fact_track_id.DataBinding.Field.AsInteger);
end;

procedure TfmFactTrack.Popup_HistoryPopup(Sender: TObject);
begin
  dxBarManager1.Tag := TdxBarPopupMenu(Sender).Tag;
end;

procedure TfmFactTrack.Popup_TrackVagonPopup(Sender: TObject);
begin
  if cxGrid1DBBandedTableView1.ViewData.RowCount <> 0 then begin
    dxBarManager1.Tag := TdxBarPopupMenu(Sender).Tag;
    dxBarButton20.Caption := 'Разрешенный груз для модели ' + VarToStr(cxGrid1DBBandedTableView1.Controller.FocusedRow.Values[cxGrid1DBBandedTableView1.GetColumnByFieldName('model_name').Index]);

    if (cxGrid1DBBandedTableView1.VisibleColumns[cxGrid1DBBandedTableView1.Controller.FocusedItemIndex].Tag > 90)  and
       (cxGrid1DBBandedTableView1.VisibleColumns[cxGrid1DBBandedTableView1.Controller.FocusedItemIndex].Tag < 120) then begin
      dxBarButton30.Enabled := True;
      dxBarButton30.Caption :=  'История Комментария: '+
                                 cxGrid1DBBandedTableView1.VisibleColumns[cxGrid1DBBandedTableView1.Controller.FocusedItemIndex].Caption
    end else begin
      dxBarButton30.Enabled := False;
      dxBarButton30.Caption :=  'История Комментария: ';
    end;
  end;
end;

procedure TfmFactTrack.ToolButton12Click(Sender: TObject);
begin
  Close;
end;


procedure TfmFactTrack.SetVagonTransport(Value: Variant);
var exWks, exApp, exWkb : variant;
              FClientDS : TClientDataSet;
                      d : TDateTime;
                      i : integer;
begin
  d := Now;
  FQuerySettings := Value;

  if FQuerySettings[0] = '' then exit;

  if FQuerySettings[1] <> '' then
    dxBarButton104Click(nil);

  if (FQuerySettings[0] <> '') then begin
    Screen.Cursor := crHourglass;
    Query_FactTrack.Close;
    Query_Trip.Close;
    SP_fact_track_stat_get.Close;

{ЖЖЖЖЖЖЖЖЖЖЖЖЖЖЖЖЖЖЖЖЖЖЖЖЖЖЖЖЖЖЖЖЖЖЖЖЖЖЖЖЖЖЖЖЖЖЖЖЖЖЖЖЖЖЖЖЖЖЖЖЖЖЖЖЖЖЖЖЖЖЖЖЖЖЖЖЖЖ}
    //проверяем заполненн CDS если он пустой заполняем
    if FClientDS_model_vagon_kargoETSNG_cod.RecordCount <= 0 then begin
      //создаем и откоывыаем excel файл
      exApp := CreateOleObject('Excel.Application');
      exWkb := exApp.Workbooks.Open(GetDocBlob(sp_fact_track_stat_get.Connection, 261), EmptyParam, True);
      exWkb := exApp.ActiveWorkbook;
      exWks := exWkb.WorkSheets[1];
      FClientDS_model_vagon_kargoETSNG_cod.EmptyDataSet;

      for i := 3 to 1048576 do begin
        if Length(VarToStr(exWks.Cells[i,2])) > 0{) or (exWks.Cells[i,2] <> ''))} then begin
          FClientDS_model_vagon_kargoETSNG_cod.Append;
          //модель вагонов
          FClientDS_model_vagon_kargoETSNG_cod.FieldByName('model_vagon'   ).Value := exWks.Cells[i,2];
          //код груза ЕТСНГ
          FClientDS_model_vagon_kargoETSNG_cod.FieldByName('kargoETSNG_cod').Value := exWks.Cells[i,3];
          FClientDS_model_vagon_kargoETSNG_cod.Post;

        end else break;
      end;
      exApp.Workbooks.Close; //закрываем открытую книгу чтобы процесс не висел в памяти и диспетчере задач
      exWks := Null; exWkb := Null; exApp := Null;
      VarClear(exWks); VarClear(exWkb); VarClear(exApp);
    end;
{ЖЖЖЖЖЖЖЖЖЖЖЖЖЖЖЖЖЖЖЖЖЖЖЖЖЖЖЖЖЖЖЖЖЖЖЖЖЖЖЖЖЖЖЖЖЖЖЖЖЖЖЖЖЖЖЖЖЖЖЖЖЖЖЖЖЖЖЖЖЖЖЖЖЖЖЖЖЖ}

    cxPageControl1.ActivePage := cxTabSheet1;
    fmMain.dxStatusBar1.Panels[3].Text := '';
    Repaint;

    FClientDS := TClientDataSet.Create(nil);

    if Assigned(FClientDS) then begin
      sp_fact_track_stat_get.ProcedureName := 'sp_fact_track_trip_stat_get';
      //SP_fact_track_stat_get.ProcedureName := '__sp_fact_track_trip_stat_get_malkin_22022018';

      SP_fact_track_stat_get.Parameters.Refresh;
      FClientDS.XMLData := FQuerySettings[0];

      //проверяем заполненность полей

      //модели вагонов и коды грузов в формате xml
      SP_fact_track_stat_get.Parameters.ParamByName('@vagon_model_kargoETSNG_cod' ).Value := DataXMLToSQL(FClientDS_model_vagon_kargoETSNG_cod);

      //группа пользователя
      SP_fact_track_stat_get.Parameters.ParamByName('@users_group_id'    ).Value := FClientDS.FieldByName('users_group_id').Value;

      //маршрут станция назначения
      SP_fact_track_stat_get.Parameters.ParamByName('@node_end_cod'      ).Value := iif(FClientDS.FieldByName('node_end_cod').AsString   = '', Null, FClientDS.FieldByName('node_end_cod').AsString);

      //груз ЕТСНГ
      SP_fact_track_stat_get.Parameters.ParamByName('@kargoETSNG_cod'    ).Value := iif(FClientDS.FieldByName('kargoETSNG_cod').AsString = '', Null, FClientDS.FieldByName('kargoETSNG_cod').AsString);
      //Исключаемый груз ЕТСНГ
      SP_fact_track_stat_get.Parameters.ParamByName('@not_kargoETSNG_cod').Value := iif(FClientDS.FieldByName('not_kargoETSNG_cod').AsString = '', Null, FClientDS.FieldByName('not_kargoETSNG_cod').AsString);

      //кол - во вагонов
      SP_fact_track_stat_get.Parameters.ParamByName('@count_vagon'    ).Value := FClientDS.FieldByName('count_vagon').Value;

      //Тариф с превышенем и без
      SP_fact_track_stat_get.Parameters.ParamByName('@rate_excess'    ).Value := FClientDS.FieldByName('rate_excess').Value;
      SP_fact_track_stat_get.Parameters.ParamByName('@rate_not_excess').Value := FClientDS.FieldByName('rate_not_excess').Value;

      //Тип перевозки по РФ и Экспорт
      SP_fact_track_stat_get.Parameters.ParamByName('@type_transport_rus'   ).Value := FClientDS.FieldByName('type_transport_rus').Value;
      SP_fact_track_stat_get.Parameters.ParamByName('@type_transport_export').Value := FClientDS.FieldByName('type_transport_export').Value;

      //Санкционные вагоны отображать или нет
      SP_fact_track_stat_get.Parameters.ParamByName('@set_sanctions'        ).Value := FClientDS.FieldByName('set_sanctions').Value;

      //Тип парка вагона
      SP_fact_track_stat_get.Parameters.ParamByName('@work_park_vagon'      ).Value := FClientDS.FieldByName('work_park_vagon').Value;
      SP_fact_track_stat_get.Parameters.ParamByName('@not_work_park_vagon'  ).Value := FClientDS.FieldByName('not_work_park_vagon').Value;

//      тип парка: «Собственный», «Арендованный», «Лизинговый», «Привлеченный»
//                4824860,        4824861,      4824864,        4824866
      SP_fact_track_stat_get.Parameters.ParamByName('@type_park_id'         ).Value := FClientDS.FieldByName('type_park_id').Value;


      DS_TrackVagon.DataSet := SP_fact_track_stat_get;
      SP_fact_track_stat_get.Prepared := True;
      SP_fact_track_stat_get.Open;

      //проверяем и если необходимо расчитываем растояния от
      SP_fact_track_stat_get.First;
      while not SP_fact_track_stat_get.Eof do begin
        if (SP_fact_track_stat_get.FieldByName('distance12').Value = Null) and
          (SP_fact_track_stat_get.FieldByName('node_begin_cod').AsString <> '000000') and
          (SP_fact_track_stat_get.FieldByName('node_end_cod').AsString <> '000000')then begin
          GetCalcDistanceDB(SP_fact_track_stat_get.FieldByName('node_begin_cod').AsString, SP_fact_track_stat_get.FieldByName('node_end_cod').AsString, fmMain.Lis, False, Date);
          GetCalcDistanceDB(SP_fact_track_stat_get.FieldByName('node_end_cod').AsString, FClientDS.FieldByName('node_end_cod').AsString, fmMain.Lis, False, Date);
        end;
        SP_fact_track_stat_get.Next;
      end;
      RefreshQueryGrid(cxGrid1DBBandedTableView1, 'fact_track_id', cxGrid1DBBandedTableView1fact_track_id.DataBinding.Field.AsInteger);
      SP_fact_track_stat_get.First;
    end;
  end;

  Caption := 'Поиск вагонов под перевозку';
  fmMain.dxStatusBar1.Panels[3].Text := IntToStr(SecondsBetween(now, d)) + ' сек.';
  Screen.Cursor := crDefault;
end;


procedure TfmFactTrack.SetVagonSQL(Value: Variant);
var        d : TDateTime;
  FClientDS  : TClientDataSet;
begin
  FQuerySettings := Value;
  dxBarButton24.Visible := ivAlways;
  d := Now;

  if FQuerySettings[0] = -9 then exit;


  if (FQuerySettings[1] <> '') then begin
    dxBarButton_Edit.Enabled := True;
    dxBarSubItem3.Enabled := True;
    dxBarButton17.Enabled := True;

    Query_FactTrack.Close;
    Query_Trip.Close;
    SP_fact_track_stat_get.Close;

    cxPageControl1.ActivePage := cxTabSheet1;
    fmMain.dxStatusBar1.Panels[3].Text := '';
    Screen.Cursor := crHourglass;
    Repaint;

    FClientDS := TClientDataSet.Create(nil);

    if Assigned(FClientDS) then  begin
      sp_fact_track_stat_get.ProcedureName := 'sp_fact_track_stat_get';
      SP_fact_track_stat_get.Parameters.Refresh;
      FClientDS.XMLData := FQuerySettings[1];

      SP_fact_track_stat_get.Parameters.ParamByName('@period_type'    ).Value := FClientDS.FieldByName('period_type'   ).Value;
      SP_fact_track_stat_get.Parameters.ParamByName('@date_begin'     ).Value := FClientDS.FieldByName('date_begin'    ).Value;
      SP_fact_track_stat_get.Parameters.ParamByName('@date_last'      ).Value := FClientDS.FieldByName('date_last'     ).Value;
      SP_fact_track_stat_get.Parameters.ParamByName('@users_group_id' ).Value := FClientDS.FieldByName('users_group_id').Value;
      SP_fact_track_stat_get.Parameters.ParamByName('@set_arenda'     ).Value := FClientDS.FieldByName('set_arenda'    ).Value;
      SP_fact_track_stat_get.Parameters.ParamByName('@set_archiv'     ).Value := FClientDS.FieldByName('set_archiv'    ).Value;
      SP_fact_track_stat_get.Parameters.ParamByName('@vagon_dic'      ).Value := FClientDS.FieldByName('vagon_dic'     ).Value;
      SP_fact_track_stat_get.Parameters.ParamByName('@type_park_id'   ).Value := FClientDS.FieldByName('type_park_id'  ).Value;
      SP_fact_track_stat_get.Parameters.ParamByName('@num_vagon'      ).Value := iif(FClientDS.FieldByName('num_vagon').AsString = '', Null, FClientDS.FieldByName('num_vagon').AsString);
      SP_fact_track_stat_get.Parameters.ParamByName('@count_stay'     ).Value := FClientDS.FieldByName('count_stay'   ).Value;
      SP_fact_track_stat_get.Parameters.ParamByName('@count_stay_id'  ).Value := FClientDS.FieldByName('count_stay_id').Value;
      SP_fact_track_stat_get.Parameters.ParamByName('@type_park_vagon').Value := FClientDS.FieldByName('type_park_vagon').Value;
      SP_fact_track_stat_get.Parameters.ParamByName('@cod_operation_vagon_cod').Value  := FClientDS.FieldByName('cod_operation_vagon_cod').Value;
      SP_fact_track_stat_get.Parameters.ParamByName('@cod_operation_vagon_name').Value := FClientDS.FieldByName('cod_operation_vagon_name').Value;
      SP_fact_track_stat_get.Parameters.ParamByName('@file_load_name').Value := FClientDS.FieldByName('file_load_name').Value;
      SP_fact_track_stat_get.Parameters.ParamByName('@node_begin_cod').Value := iif(FClientDS.FieldByName('node_begin_cod').AsString = '', Null, FClientDS.FieldByName('node_begin_cod').AsString);
      SP_fact_track_stat_get.Parameters.ParamByName('@node_end_cod').Value   := iif(FClientDS.FieldByName('node_end_cod').AsString   = '', Null, FClientDS.FieldByName('node_end_cod').AsString);
      SP_fact_track_stat_get.Parameters.ParamByName('@kargoETSNG_cod').Value := iif(FClientDS.FieldByName('kargoETSNG_cod').AsString = '', Null, FClientDS.FieldByName('kargoETSNG_cod').AsString);

      DS_TrackVagon.DataSet := sp_fact_track_stat_get;
      SP_fact_track_stat_get.Prepared := True;

//      SP_fact_track_stat_get.SaveToFile('d:\www\track.xml', pfXML);

      case FQuerySettings[0] of
        // основная информация
        0,1,2,3,4 :
            begin
              SP_fact_track_stat_get.Open;
            end;

        5 : begin
              SP_fact_track_stat_get.Open;

              dxBarButton_Edit.Enabled := False;
              dxBarSubItem3.Enabled := False;
//              dxBarButton17.Enabled := False;

              cxPageControl1.ActivePage := cxTabSheet2;
              DS_Trip.DataSet := sp_fact_track_stat_get;
            end;
        // простои на станциях
        6 : begin
              dxBarButton_Edit.Enabled := False;
              dxBarSubItem3.Enabled := False;
              dxBarButton17.Enabled := False;

              cxPageControl1.ActivePage := cxTabSheet5;

              SP_StayByNode.Close;
              SP_StayByNode.Parameters.Refresh;
              SP_StayByNode.Parameters.ParamByName('@type_action'   ).Value := 1;
              SP_StayByNode.Parameters.ParamByName('@str_num_vagon' ).Value := iif(FClientDS.FieldByName('num_vagon').AsString = '', Null, FClientDS.FieldByName('num_vagon').AsString);
              SP_StayByNode.Parameters.ParamByName('@date1'         ).Value := FClientDS.FieldByName('date_begin').Value;
              SP_StayByNode.Parameters.ParamByName('@date2'         ).Value := FClientDS.FieldByName('date_last').Value;
              SP_StayByNode.Parameters.ParamByName('@node_begin_cod').Value := iif(FClientDS.FieldByName('node_begin_cod').AsString = '', Null, FClientDS.FieldByName('node_begin_cod').AsString);
              SP_StayByNode.Parameters.ParamByName('@node_end_cod'  ).Value := iif(FClientDS.FieldByName('node_end_cod').AsString   = '', Null, FClientDS.FieldByName('node_end_cod').AsString);
              SP_StayByNode.Parameters.ParamByName('@kargoETSNG_cod').Value := iif(FClientDS.FieldByName('kargoETSNG_cod').AsString = '', Null, FClientDS.FieldByName('kargoETSNG_cod').AsString);
              SP_StayByNode.Parameters.ParamByName('@set_archive'   ).Value := FClientDS.FieldByName('set_archiv').AsBoolean;
              SP_StayByNode.Open;
            end;
      end;
    end;

  end;

  Screen.Cursor := crDefault;
  fmMain.dxStatusBar1.Panels[3].Text := 'Выполнение запроса: ' + IntToStr(SecondsBetween(now, d)) + ' сек.';
end;

procedure TfmFactTrack.N12Click(Sender: TObject);
var exWks, exApp       : Variant;
    i, row_0, distance : integer;
    show_distance      : boolean;
    ClientDS_distance, ClientDS  : TClientDataSet;
    d                  : TDateTime;
    Q                  : TADOQuery;
begin
  Screen.Cursor := crHourglass;
  fmMain.dxStatusBar1.Panels[3].Text := '';
  d := NOW;

  show_distance := False;
  if Application.MessageBox('Заполнять расстояние?','Внимание', MB_YESNO) = ID_YES then show_distance := True;

  ShowTextMessage('Запуск Excel...', False);
  exApp := CreateOleObject('Excel.Application');
  exApp.Workbooks.Add(GetDocBlob(fmMain.Lis, 44)); // 'Слежение вагонов.xls'
  exWks := exApp.ActiveWorkbook.WorkSheets[1];

  row_0 := 4;
  //Ранее перевозимый груз
  Q := TADOQuery.Create(nil);
  Q.Connection := fmMain.Lis;
  Q.SQL.Add('SELECT TOP 1 kargoETSNG_name FROM FACT_TRACK_TRIP WITH(NOLOCK)');
  Q.SQL.Add(' WHERE num_vagon = :num_vagon');
  Q.SQL.Add(' AND users_group_id = :users_group_id');
  Q.SQL.Add(' AND date_otpr < :date_otpr');
  Q.SQL.Add(' AND fact_weight > 0 ORDER BY date_otpr DESC');

  ShowTextMessage('Вывод в Excel...', False);
  for i:=0 to cxGrid1DBBandedTableView1.Controller.SelectedRecordCount - 1 do begin
    exWks.Range['A' + IntToStr(row_0)].Value := cxGrid1DBBandedTableView1.Controller.SelectedRows[i].Values[cxGrid1DBBandedTableView1num_vagon.Index];
    exWks.Range['B' + IntToStr(row_0)].Value := VarToStr(cxGrid1DBBandedTableView1.Controller.SelectedRows[i].Values[cxGrid1DBBandedTableView1node_end_name.Index]);

    exWks.Range['C' + IntToStr(row_0)].Value := DateOf(cxGrid1DBBandedTableView1.Controller.SelectedRows[i].Values[cxGrid1DBBandedTableView1date_operation.Index]);
    exWks.Range['D' + IntToStr(row_0)].Value := VarToStr(cxGrid1DBBandedTableView1.Controller.SelectedRows[i].Values[cxGrid1DBBandedTableView1time_operation.Index]);
    if VarToStr(cxGrid1DBBandedTableView1.Controller.SelectedRows[i].Values[cxGrid1DBBandedTableView1node_operation_name.Index]) = '' then
      exWks.Range['E' + IntToStr(row_0)].Value := VarToStr(cxGrid1DBBandedTableView1.Controller.SelectedRows[i].Values[cxGrid1DBBandedTableView1node_operation_cod.Index])
    else exWks.Range['E' + IntToStr(row_0)].Value := VarToStr(cxGrid1DBBandedTableView1.Controller.SelectedRows[i].Values[cxGrid1DBBandedTableView1node_operation_name.Index]);
//    exWks.Range['F' + IntToStr(row_0)].Value := VarToStr(cxGrid1DBBandedTableView1.Controller.SelectedRows[i].Values[cxGrid1DBBandedTableView1road_operation_name.Index]);
//    exWks.Range['G' + IntToStr(row_0)].Value := VarToStr(cxGrid1DBBandedTableView1.Controller.SelectedRows[i].Values[cxGrid1DBBandedTableView1road_end_name.Index]);
    exWks.Range['H' + IntToStr(row_0)].Value := VarToStr(cxGrid1DBBandedTableView1.Controller.SelectedRows[i].Values[cxGrid1DBBandedTableView1index_train.Index]);
    exWks.Range['I' + IntToStr(row_0)].Value := VarToStr(cxGrid1DBBandedTableView1.Controller.SelectedRows[i].Values[cxGrid1DBBandedTableView1num_train.Index]);
    exWks.Range['J' + IntToStr(row_0)].Value := VarToStr(cxGrid1DBBandedTableView1.Controller.SelectedRows[i].Values[cxGrid1DBBandedTableView1kargoETSNG_name.Index]);

    if not VarIsNull(cxGrid1DBBandedTableView1.Controller.SelectedRows[i].Values[cxGrid1DBBandedTableView1fact_weight.Index]) then  begin
     exWks.Range['K' + IntToStr(row_0)].Value := double(cxGrid1DBBandedTableView1.Controller.SelectedRows[i].Values[cxGrid1DBBandedTableView1fact_weight.Index]);
    end;

//    exWks.Range['L' + IntToStr(row_0)].Value := VarToStr(cxGrid1DBBandedTableView1.Controller.SelectedRows[i].Values[cxGrid1DBBandedTableView1poluchgr.Index]);
    exWks.Range['M' + IntToStr(row_0)].Value := VarToStr(cxGrid1DBBandedTableView1.Controller.SelectedRows[i].Values[cxGrid1DBBandedTableView1node_begin_name.Index]);
    if not VarIsNull(cxGrid1DBBandedTableView1.Controller.SelectedRows[i].Values[cxGrid1DBBandedTableView1date_otpr.Index]) then  begin
      exWks.Range['N' + IntToStr(row_0)].Value := DateOf(cxGrid1DBBandedTableView1.Controller.SelectedRows[i].Values[cxGrid1DBBandedTableView1date_otpr.Index]);
      exWks.Range['O' + IntToStr(row_0)].Value := VarToStr(cxGrid1DBBandedTableView1.Controller.SelectedRows[i].Values[cxGrid1DBBandedTableView1time_otpr.Index]);
    end;

    exWks.Range['P' + IntToStr(row_0)].Value := VarToStr(cxGrid1DBBandedTableView1.Controller.SelectedRows[i].Values[cxGrid1DBBandedTableView1doc_number.Index]);
//    exWks.Range['V' + IntToStr(row_0)].Value := VarToStr(cxGrid1DBBandedTableView1.Controller.SelectedRows[i].Values[cxGrid1DBBandedTableView1type_park_name.Index]);

    exWks.Range['Q'+IntToStr(row_0)].Value := 0;
    exWks.Range['R'+IntToStr(row_0)].Value := 0;


    if show_distance then begin
//      //пройденное растояние
//      if not VarIsNull(cxGrid1DBBandedTableView1.Controller.SelectedRows[i].Values[cxGrid1DBBandedTableView1distance1.Index]) then
//       exWks.Range['Q'+IntToStr(row_0)].Value := double(cxGrid1DBBandedTableView1.Controller.SelectedRows[i].Values[cxGrid1DBBandedTableView1distance1.Index])
//      else
//       exWks.Range['Q'+IntToStr(row_0)].Value := GetCalcDistanceDB(VarToStr(cxGrid1DBBandedTableView1.Controller.SelectedRows[i].Values[cxGrid1DBBandedTableView1node_begin_cod.Index]), VarToStr(cxGrid1DBBandedTableView1.Controller.SelectedRows[i].Values[cxGrid1DBBandedTableView1node_operation_cod.Index]), fmMain.Lis, False, Date);

//      //оставшееся растояние
//      if not VarIsNull(cxGrid1DBBandedTableView1.Controller.SelectedRows[i].Values[cxGrid1DBBandedTableView1distance2.Index]) then
//       exWks.Range['R'+IntToStr(row_0)].Value := double(cxGrid1DBBandedTableView1.Controller.SelectedRows[i].Values[cxGrid1DBBandedTableView1distance2.Index])
//      else
//       exWks.Range['R'+IntToStr(row_0)].Value := GetCalcDistanceDB(VarToStr(cxGrid1DBBandedTableView1.Controller.SelectedRows[i].Values[cxGrid1DBBandedTableView1node_operation_cod.Index]), VarToStr(cxGrid1DBBandedTableView1.Controller.SelectedRows[i].Values[cxGrid1DBBandedTableView1node_end_cod.Index]), fmMain.Lis, False, Date);
    end;

//    exWks.Range['S' + IntToStr(row_0)].Value := VarToStr(cxGrid1DBBandedTableView1.Controller.SelectedRows[i].Values[cxGrid1DBBandedTableView1cod_operation_vagon_cod.Index]);
//    exWks.Range['T' + IntToStr(row_0)].Value := VarToStr(cxGrid1DBBandedTableView1.Controller.SelectedRows[i].Values[cxGrid1DBBandedTableView1cod_operation_vagon_name_full.Index]);
    exWks.Range['U' + IntToStr(row_0)].Value := String(' ');

    Q.Close;
    Q.Parameters.ParamByName('num_vagon').Value      := cxGrid1DBBandedTableView1.Controller.SelectedRows[i].Values[cxGrid1DBBandedTableView1num_vagon.Index];
    Q.Parameters.ParamByName('users_group_id').Value := usr_pwd.user_group_id;
    Q.Parameters.ParamByName('date_otpr').Value      := cxGrid1DBBandedTableView1.Controller.SelectedRows[i].Values[cxGrid1DBBandedTableView1date_otpr.Index];
    Q.Open;

    if Q.RecordCount > 0 then
       exWks.Range['W' + IntToStr(row_0)].Value := Q.FieldByName('kargoETSNG_name').AsString;

    row_0 := row_0  + 1;
    ShowTextMessage('Осталось ' + IntToStr(cxGrid1DBBandedTableView1.Controller.SelectedRecordCount - i) + ' вагонов...', False);
  end;

  exWks.Range['A2'].Value := 'Количество вагонов/контейнеров: ' + IntToStr(cxGrid1DBBandedTableView1.Controller.SelectedRecordCount);
  exWks.Range['A4:W' + IntToStr(row_0-1)].Borders[1].LineStyle := 1;
  exWks.Range['A4:W' + IntToStr(row_0-1)].Borders[2].LineStyle := 1;
  exWks.Range['A4:W' + IntToStr(row_0-1)].Borders[9].LineStyle := 1;

  exWks.PageSetup.PrintArea := exWks.Range['A1:W'+IntToStr(row_0)].Address;
  exApp.Range['A1'].Select;
  exApp.Visible := True;

  exApp := Null;
  exWks := Null;

  ShowTextMessage('', True);
  fmMain.dxStatusBar1.Panels[3].Text := IntToStr(SecondsBetween(now, d)) + ' сек.';
  Screen.Cursor := crDefault;
end;

procedure TfmFactTrack.dxBarButton12Click(Sender: TObject);
type
  TFunc = function(AppHand: THandle; f: boolean; usr_pwd: PUser_pwd; str_vagon_id: string; type_action: integer) : variant;
var
  FDic   : TFunc;
  handle : THandle;
  v      : Variant;
  str_vagon_id : string;
begin
  str_vagon_id := cx_GetSelectedValues(cxGrid1, 'vagon_id');
  if str_vagon_id = '' then begin
    Application.MessageBox(PChar('Действие с КОММЕНТАРИЕМ невозможно.' + #10#13 + 'Вагон отсутствует в справочнике!'), 'Вниамние!', MB_ICONERROR + MB_OK);
    Exit;
  end;

  handle := LoadLibrary('dictionary.dll');
  @FDic := GetProcAddress(handle, 'CreateWndVagonCommentAdd');
  v := FDic(Application.Handle, False, usr_pwd, str_vagon_id, TComponent(Sender).Tag);
  FreeLibrary(handle);
  if Application.MessageBox(PChar('Обновить информацию?'), 'Вниамние!', MB_YESNO + MB_DEFBUTTON2) = IDYES then
    RefreshQueryGrid(cxGrid1DBBandedTableView1, 'fact_track_id', cxGrid1DBBandedTableView1fact_track_id.DataBinding.Field.AsInteger);
end;

procedure TfmFactTrack.dxBarButton13Click(Sender: TObject);
var   exWks, exApp  : Variant;
      i, row_0, id,
      row_insert,k  : integer;
      SP            : TADOStoredProc;
      num_vagon     : string;
    start_num_vagon : integer;
    end_num_vagon   : integer;
    ClientDS        : TClientDataSet;
    login           : string;
    db_name         : string;
    ADOEtran        : TADOConnection;
    show_distance   : boolean;
    FStrFacttrackId : string;
begin

  FStrFacttrackId := cx_GetSelectedValues(cxGrid1,'fact_track_id');

  show_distance := False;
  if Application.MessageBox('Заполнять расстояние?','Внимание', MB_YESNO) = ID_YES then show_distance := True;

  ShowTextMessage('Запуск Excel...', False);
  exApp := CreateOleObject('Excel.Application');
  exApp.Application.EnableEvents := False;
  exApp.ScreenUpdating := False;
  exApp.Workbooks.Add(GetDocBlob(fmMain.Lis, 225, 9, True));
  exWks := exApp.ActiveWorkbook.WorkSheets[1];

  ShowTextMessage('Запрос данных с сервера...', False);
  SP := TADOStoredProc.Create(nil);
  SP.Connection := fmMain.Lis;
  SP.ProcedureName := 'sp_Report_fact_track';
  SP.CommandTimeout := 600;
  SP.Parameters.Refresh;
  SP.Parameters.ParamByName('@type_report'      ).Value := 225;
  SP.Parameters.ParamByName('@str_fact_track_id').Value := FStrFacttrackId;
  SP.Parameters.ParamByName('@users_group_id').Value := usr_pwd.user_group_id;
  SP.Open;

  row_0 := 4;
  exWks.Range['C1'].Value := Date;
  exWks.Range['B2'].Value := 'Количество вагонов/контейнеров:' + IntToStr(SP.RecordCount);
  SP.First;
  while not SP.EOF do begin
    exWks.Range['B' + IntToStr(row_0)].Value := SP.FieldByName('num_vagon').AsString;
    exWks.Range['C' + IntToStr(row_0)].Value := SP.FieldByName('capacity').AsString;
    exWks.Range['D' + IntToStr(row_0)].Value := SP.FieldByName('tara_min').AsString;
    exWks.Range['E' + IntToStr(row_0)].Value := SP.FieldByName('copper_calibration').AsString;
    exWks.Range['F' + IntToStr(row_0)].Value := SP.FieldByName('model_name').AsString;
    //exWks.Range['G' + IntToStr(row_0)].Value := SP.FieldByName('').AsString;
    exWks.Range['H' + IntToStr(row_0)].Value := SP.FieldByName('milage_rest').AsString;
    exWks.Range['I' + IntToStr(row_0)].Value := SP.FieldByName('next_date_repair').AsString;
    exWks.Range['J' + IntToStr(row_0)].Value := SP.FieldByName('grpor').AsString;
    exWks.Range['K' + IntToStr(row_0)].Value := SP.FieldByName('node_end_name').AsString;
    exWks.Range['L' + IntToStr(row_0)].Value := SP.FieldByName('date_operation').AsString;
    exWks.Range['M' + IntToStr(row_0)].Value := SP.FieldByName('time_operation').AsString;
    exWks.Range['N' + IntToStr(row_0)].Value := SP.FieldByName('node_operation_name').AsString;
    exWks.Range['O' + IntToStr(row_0)].Value := SP.FieldByName('road_begin_name').AsString;
    exWks.Range['P' + IntToStr(row_0)].Value := SP.FieldByName('road_end_name').AsString;
    exWks.Range['Q' + IntToStr(row_0)].Value := SP.FieldByName('index_train').AsString;
    exWks.Range['R' + IntToStr(row_0)].Value := SP.FieldByName('num_train').AsString;

    exWks.Range['S' + IntToStr(row_0)].Value := SP.FieldByName('kargoETSNG_name').AsString;
    exWks.Range['T' + IntToStr(row_0)].Value := SP.FieldByName('comment6').AsString;
    exWks.Range['U' + IntToStr(row_0)].Value := SP.FieldByName('fact_weight').AsString;
    exWks.Range['V' + IntToStr(row_0)].Value := SP.FieldByName('RW_grpol').AsString;
    exWks.Range['W' + IntToStr(row_0)].Value := SP.FieldByName('grpol_okpo').AsString;
    exWks.Range['X' + IntToStr(row_0)].Value := SP.FieldByName('node_begin_name').AsString;
    exWks.Range['Y' + IntToStr(row_0)].Value := SP.FieldByName('date_otpr').AsString;
    exWks.Range['Z' + IntToStr(row_0)].Value := SP.FieldByName('time_otpr').AsString;
    exWks.Range['AA' + IntToStr(row_0)].Value := SP.FieldByName('doc_number').AsString;
    exWks.Range['AD' + IntToStr(row_0)].Value := SP.FieldByName('cod_operation_cod').AsString;
    exWks.Range['AE' + IntToStr(row_0)].Value := SP.FieldByName('cod_operation_vagon_name_full').AsString;
    exWks.Range['AF' + IntToStr(row_0)].Value := SP.FieldByName('cod_operation_train_name_full').AsString;
    exWks.Range['AG' + IntToStr(row_0)].Value := SP.FieldByName('type_park_vagon_name').AsString;
    exWks.Range['AH' + IntToStr(row_0)].Value := SP.FieldByName('date_build').AsString;
    exWks.Range['AI' + IntToStr(row_0)].Value := SP.FieldByName('year_build').AsString;
    exWks.Range['AJ' + IntToStr(row_0)].Value := SP.FieldByName('registry_station_name').AsString;
    exWks.Range['AK' + IntToStr(row_0)].Value := SP.FieldByName('date_registration').AsString;
    exWks.Range['AL' + IntToStr(row_0)].Value := SP.FieldByName('next_date_registration').AsString;
    exWks.Range['AM' + IntToStr(row_0)].Value := SP.FieldByName('count_day_to_next_registration').AsString;

    if  show_distance Then begin
      //пройденное растояние
      if not SP.FieldByName('distance1').IsNull then
       exWks.Range['AB'+IntToStr(row_0)].Value := SP.FieldByName('distance1').AsInteger
      else
       exWks.Range['AB'+IntToStr(row_0)].Value := GetCalcDistanceDB(SP.FieldByName('node_begin_cod').AsString,SP.FieldByName('node_operation_cod').AsString, fmMain.Lis, False, Date);

      //оставшееся растояние
      if not SP.FieldByName('distance2').IsNull then
       exWks.Range['AC'+IntToStr(row_0)].Value := SP.FieldByName('distance2').AsInteger
      else
       exWks.Range['AC'+IntToStr(row_0)].Value := GetCalcDistanceDB(SP.FieldByName('node_operation_cod').AsString,SP.FieldByName('node_end_cod').AsString, fmMain.Lis, False, Date);
    end;

    ShowTextMessage('Осталось: ' + IntToStr(SP.RecordCount - SP.RecNo) + 'строк.' , False);

    SP.Next;

    if not SP.Eof then begin
      xCopyRow(exApp,row_0 + 1,row_0 +1);
      inc(row_0);
    end;
  end;

  exApp.Rows[IntToStr(row_0 + 1) + ':' + IntToStr(row_0 + 1)].Select;
  exApp.Selection.Delete;
  exApp.ScreenUpdating := True;

  exApp.Visible := True;
  exApp.Range['A1'].Select;
  VarClear(exWks); VarClear(exApp);
  SP.Free;
  ModalResult:= mrNone;
  ShowTextMessage('', True);
  Screen.Cursor := crDefault;
end;

procedure TfmFactTrack.dxBarButton20Click(Sender: TObject);
begin
  AllowableKargo(cxGrid1DBBandedTableView1, fmMain.Lis);
end;

procedure TfmFactTrack.dxBarButton30Click(Sender: TObject);
var Q : TADOQuery;
vagon_comment_type_cod : integer;
begin
  vagon_comment_type_cod := cxGrid1DBBandedTableView1.VisibleColumns[cxGrid1DBBandedTableView1.Controller.FocusedItemIndex].Tag - 90;
  if not ((vagon_comment_type_cod > 0) and (vagon_comment_type_cod < 20))
    or VarIsNull(cxGrid1DBBandedTableView1vagon_id.DataBinding.Field.Value) then exit;

  Screen.Cursor := crHourGlass;
  Q := TADOQuery.Create(nil);
  Q.Connection := fmMain.Lis;
  if vagon_comment_type_cod = 13 then begin
    Q.SQL.Add('DECLARE @vagon_id int = :vagon_id');
    Q.SQL.Add('SELECT vagon_comment_id, (fio_users + '', '' + CONVERT(nvarchar(8), c.date_begin, 4) + '' : '' + inf_obj_name) AS vagon_comment');
    Q.SQL.Add('INTO #comm13 FROM view_vagon_comment c');
    Q.SQL.Add('LEFT JOIN inf_obj i ON inf_obj_id = CONVERT(int, vagon_comment)');
    Q.SQL.Add('WHERE vagon_id = @vagon_id AND vagon_comment_type_id = 1385291 AND CHARINDEX ('' '', vagon_comment) = 0');
    Q.SQL.Add('SELECT c.vagon_comment_id, date_begin, date_end, FIO_users, vagon_comment_type_name,');
    Q.SQL.Add('iif(c13.vagon_comment IS NULL OR c13.vagon_comment = '''', c.vagon_comment, c13.vagon_comment) AS vagon_comment');
    Q.SQL.Add('FROM view_vagon_comment c');
    Q.SQL.Add('LEFT JOIN #comm13 c13 ON c13.vagon_comment_id = c.vagon_comment_id');
    Q.SQL.Add('WHERE (vagon_id = @vagon_id) AND vagon_comment_type_id = 1385291');
    Q.SQL.Add('ORDER BY date_begin DESC   DROP TABLE #comm13');
    Q.Parameters.ParamByName('vagon_id').Value := cxGrid1DBBandedTableView1vagon_id.DataBinding.Field.Value;
  end else begin
    Q.SQL.Add('SELECT vagon_comment_id, vagon_comment, date_begin, date_end, FIO_users, vagon_comment_type_name');
    Q.SQL.Add('FROM view_vagon_comment WHERE (vagon_id =:vagon_id) AND (vagon_comment_type_cod = :vagon_comment_type_cod) ORDER BY date_begin DESC');
    Q.Parameters.ParamByName('vagon_id').Value := cxGrid1DBBandedTableView1vagon_id.DataBinding.Field.Value;
    Q.Parameters.ParamByName('vagon_comment_type_cod').Value := IntToStr(vagon_comment_type_cod);
  end;
  Q.Open;

  fmFilter := TfmFilter.Create(0, Q, 'vagon_comment_id', 'vagon_comment', 'vagon_comment');
  fmFilter._SetVagonComment := True;
  fmFilter.ShowModal;
  Q.Free;
  fmFilter.Free;
end;

procedure TfmFactTrack.dxBarButton31Click(Sender: TObject);
var exWks, exApp       : Variant;
    i, row_0, distance : integer;
    show_distance      : boolean;
    ClientDS_distance, ClientDS  : TClientDataSet;
    d                  : TDateTime;
    Q                  : TADOQuery;
    date_query         : TDateTime;
    date_otpr          : TDateTime;
begin
  Screen.Cursor := crHourglass;
  fmMain.dxStatusBar1.Panels[3].Text := '';
  d := NOW;
  Q := TADOQuery.Create(nil);
  Q.Connection := fmMain.Lis;

  show_distance := False;
  if Application.MessageBox('Заполнять расстояние?','Внимание', MB_YESNO) = ID_YES then show_distance := True;

  ShowTextMessage('Запуск Excel...', False);
  exApp := CreateOleObject('Excel.Application');
  exApp.Workbooks.Add(GetDocBlob(fmMain.Lis, 316)); // 'Слежение вагонов.xls'
  exWks := exApp.ActiveWorkbook.WorkSheets[1];

  row_0 := 4;

  ShowTextMessage('Вывод в Excel...', False);
  for i:=0 to cxGrid1DBBandedTableView1.Controller.SelectedRecordCount - 1 do begin
    exWks.Range['A' + IntToStr(row_0)].Value := cxGrid1DBBandedTableView1.Controller.SelectedRows[i].Values[cxGrid1DBBandedTableView1num_vagon.Index];
    exWks.Range['B' + IntToStr(row_0)].Value := VarToStr(cxGrid1DBBandedTableView1.Controller.SelectedRows[i].Values[cxGrid1DBBandedTableView1node_end_name.Index]);

    exWks.Range['C' + IntToStr(row_0)].Value := DateOf(cxGrid1DBBandedTableView1.Controller.SelectedRows[i].Values[cxGrid1DBBandedTableView1date_operation.Index]);
    exWks.Range['D' + IntToStr(row_0)].Value := VarToStr(cxGrid1DBBandedTableView1.Controller.SelectedRows[i].Values[cxGrid1DBBandedTableView1time_operation.Index]);
    exWks.Range['E' + IntToStr(row_0)].Value := VarToStr(cxGrid1DBBandedTableView1.Controller.SelectedRows[i].Values[cxGrid1DBBandedTableView1node_operation_name.Index]);
    exWks.Range['F' + IntToStr(row_0)].Value := VarToStr(cxGrid1DBBandedTableView1.Controller.SelectedRows[i].Values[cxGrid1DBBandedTableView1road_begin_name.Index]);
//    exWks.Range['G' + IntToStr(row_0)].Value := VarToStr(cxGrid1DBBandedTableView1.Controller.SelectedRows[i].Values[cxGrid1DBBandedTableView1road_end_name.Index]);
    exWks.Range['H' + IntToStr(row_0)].Value := VarToStr(cxGrid1DBBandedTableView1.Controller.SelectedRows[i].Values[cxGrid1DBBandedTableView1index_train.Index]);
    exWks.Range['I' + IntToStr(row_0)].Value := VarToStr(cxGrid1DBBandedTableView1.Controller.SelectedRows[i].Values[cxGrid1DBBandedTableView1num_train.Index]);
    exWks.Range['J' + IntToStr(row_0)].Value := VarToStr(cxGrid1DBBandedTableView1.Controller.SelectedRows[i].Values[cxGrid1DBBandedTableView1kargoETSNG_name.Index]);
    exWks.Range['K' + IntToStr(row_0)].Value := cxGrid1DBBandedTableView1.Controller.SelectedRows[i].Values[cxGrid1DBBandedTableView1fact_weight.Index];
//    exWks.Range['L' + IntToStr(row_0)].Value := VarToStr(cxGrid1DBBandedTableView1.Controller.SelectedRows[i].Values[cxGrid1DBBandedTableView1poluchgr.Index]);
    exWks.Range['M' + IntToStr(row_0)].Value := VarToStr(cxGrid1DBBandedTableView1.Controller.SelectedRows[i].Values[cxGrid1DBBandedTableView1node_begin_name.Index]);
    if not VarIsNull(cxGrid1DBBandedTableView1.Controller.SelectedRows[i].Values[cxGrid1DBBandedTableView1date_otpr.Index]) then  begin
      exWks.Range['N' + IntToStr(row_0)].Value := DateOf(cxGrid1DBBandedTableView1.Controller.SelectedRows[i].Values[cxGrid1DBBandedTableView1date_otpr.Index]);
      exWks.Range['O' + IntToStr(row_0)].Value := VarToStr(cxGrid1DBBandedTableView1.Controller.SelectedRows[i].Values[cxGrid1DBBandedTableView1time_otpr.Index]);
    end;

    exWks.Range['P' + IntToStr(row_0)].Value := VarToStr(cxGrid1DBBandedTableView1.Controller.SelectedRows[i].Values[cxGrid1DBBandedTableView1doc_number.Index]);
//    exWks.Range['V' + IntToStr(row_0)].Value := VarToStr(cxGrid1DBBandedTableView1.Controller.SelectedRows[i].Values[cxGrid1DBBandedTableView1type_park_name.Index]);

    exWks.Range['Q'+IntToStr(row_0)].Value := 0;
    exWks.Range['R'+IntToStr(row_0)].Value := 0;

    if show_distance then begin
//      //пройденное растояние
//      if not VarIsNull(cxGrid1DBBandedTableView1.Controller.SelectedRows[i].Values[cxGrid1DBBandedTableView1distance1.Index]) then
//       exWks.Range['Q'+IntToStr(row_0)].Value := double(cxGrid1DBBandedTableView1.Controller.SelectedRows[i].Values[cxGrid1DBBandedTableView1distance1.Index])
//      else
//       exWks.Range['Q'+IntToStr(row_0)].Value := GetCalcDistanceDB(VarToStr(cxGrid1DBBandedTableView1.Controller.SelectedRows[i].Values[cxGrid1DBBandedTableView1node_begin_cod.Index]), VarToStr(cxGrid1DBBandedTableView1.Controller.SelectedRows[i].Values[cxGrid1DBBandedTableView1node_operation_cod.Index]), fmMain.Lis, False, Date);
//
//      //оставшееся растояние
//      if not VarIsNull(cxGrid1DBBandedTableView1.Controller.SelectedRows[i].Values[cxGrid1DBBandedTableView1distance2.Index]) then
//       exWks.Range['R'+IntToStr(row_0)].Value := double(cxGrid1DBBandedTableView1.Controller.SelectedRows[i].Values[cxGrid1DBBandedTableView1distance2.Index])
//      else
//       exWks.Range['R'+IntToStr(row_0)].Value := GetCalcDistanceDB(VarToStr(cxGrid1DBBandedTableView1.Controller.SelectedRows[i].Values[cxGrid1DBBandedTableView1node_operation_cod.Index]), VarToStr(cxGrid1DBBandedTableView1.Controller.SelectedRows[i].Values[cxGrid1DBBandedTableView1node_end_cod.Index]), fmMain.Lis, False, Date);
    end;

//    exWks.Range['S' + IntToStr(row_0)].Value := VarToStr(cxGrid1DBBandedTableView1.Controller.SelectedRows[i].Values[cxGrid1DBBandedTableView1cod_operation_vagon_cod.Index]);
//    exWks.Range['T' + IntToStr(row_0)].Value := VarToStr(cxGrid1DBBandedTableView1.Controller.SelectedRows[i].Values[cxGrid1DBBandedTableView1cod_operation_vagon_name_full.Index]);
    exWks.Range['U' + IntToStr(row_0)].Value := String(' ');

//    exWks.Range['W' + IntToStr(row_0)].Value := VarToStr(cxGrid1DBBandedTableView1.Controller.SelectedRows[i].Values[cxGrid1DBBandedTableView1milage_rest.Index]);
//    exWks.Range['X' + IntToStr(row_0)].Value := VarToStr(cxGrid1DBBandedTableView1.Controller.SelectedRows[i].Values[cxGrid1DBBandedTableView1next_date_repair.Index]);

    exWks.Range['Y' + IntToStr(row_0)].Value := VarToStr(cxGrid1DBBandedTableView1.Controller.SelectedRows[i].Values[cxGrid1DBBandedTableView1comment6.Index]);
    exWks.Range['Z' + IntToStr(row_0)].Value := VarToStr(cxGrid1DBBandedTableView1.Controller.SelectedRows[i].Values[cxGrid1DBBandedTableView1comment1.Index]);

//    exWks.Range['AA' + IntToStr(row_0)].Value := VarToStr(cxGrid1DBBandedTableView1.Controller.SelectedRows[i].Values[cxGrid1DBBandedTableView1firm_name.Index]);
//    exWks.Range['AB' + IntToStr(row_0)].Value := VarToStr(cxGrid1DBBandedTableView1.Controller.SelectedRows[i].Values[cxGrid1DBBandedTableView1days_free.Index]);
    exWks.Range['AC' + IntToStr(row_0)].Value := VarToStr(cxGrid1DBBandedTableView1.Controller.SelectedRows[i].Values[cxGrid1DBBandedTableView1model_name.Index]);

    Q.Close;
    Q.SQL.Clear;
    Q.SQL.Add(' SELECT p.date_build, p.factory, p.vagon_load, p.vagon_model, p.factory_name ');
    Q.SQL.Add(' FROM fact_param p WITH (NOLOCK) WHERE ');
    Q.SQL.Add(' fact_param_id = (SELECT MAX(fact_param_id) FROM fact_param WITH (NOLOCK) WHERE  num_vagon = ' +  VarToStr(cxGrid1DBBandedTableView1.Controller.SelectedRows[i].Values[cxGrid1DBBandedTableView1num_vagon.Index])+ ' )');
    Q.Open;

    if Q.RecordCount > 0 then begin
      exWks.Range['AD'+IntToStr(row_0)].Value  := Q.FieldByName('date_build').AsString;
      exWks.Range['AN'+IntToStr(row_0)].Value := Q.FieldByName('vagon_load').AsString;
      exWks.Range['AF'+IntToStr(row_0)].Value := Q.FieldByName('factory').AsString;
      exWks.Range['AE'+IntToStr(row_0)].Value := Q.FieldByName('factory_name').AsString;
    end;

    Q.Close;
    Q.SQL.Clear;
    Q.SQL.Add(' SELECT ft.date_last_depo_place, ft.date_cap_place, ft.last_depo_place, ft.last_depo_place_name, ft.last_cap_place, ft.last_cap_place_name ');
    Q.SQL.Add(' FROM view_fact_tech ft WITH (NOLOCK) WHERE ');
    Q.SQL.Add(' fact_tech_id = (SELECT MAX(fact_tech_id) FROM fact_tech WITH (NOLOCK) WHERE  num_vagon = ' +  VarToStr(cxGrid1DBBandedTableView1.Controller.SelectedRows[i].Values[cxGrid1DBBandedTableView1num_vagon.Index])+ ' )');
    Q.Open;

    if Q.RecordCount > 0 then begin
     exWks.Range['AG'+IntToStr(row_0)].Value := Q.FieldByName('date_last_depo_place').AsString; // Дата деп.ремонта
     exWks.Range['AI'+IntToStr(row_0)].Value := Q.FieldByName('last_depo_place').AsString; // (Код) Место Деп.ремонта
     exWks.Range['AH'+IntToStr(row_0)].Value := Q.FieldByName('last_depo_place_name').AsString; // Место деп. ремонта
     exWks.Range['AJ'+IntToStr(row_0)].Value := Q.FieldByName('date_cap_place').AsString; // Дата Кап.ремонта
     exWks.Range['AL'+IntToStr(row_0)].Value := Q.FieldByName('last_cap_place').AsString; // (Код) Место Кап.ремонта
     exWks.Range['AK'+IntToStr(row_0)].Value := Q.FieldByName('last_cap_place_name').AsString;
    end;

    exWks.Range['AM' + IntToStr(row_0)].Value := VarToStr(cxGrid1DBBandedTableView1.Controller.SelectedRows[i].Values[cxGrid1DBBandedTableView1copper_calibration.Index]);

    row_0 := row_0  + 1;
    ShowTextMessage('Осталось ' + IntToStr(cxGrid1DBBandedTableView1.Controller.SelectedRecordCount - i) + ' вагонов...', False);
  end;

  exWks.Range['A2'].Value := 'Количество вагонов/контейнеров: ' + IntToStr(cxGrid1DBBandedTableView1.Controller.SelectedRecordCount);
  exWks.Range['A4:AN' + IntToStr(row_0-1)].Borders[1].LineStyle := 1;
  exWks.Range['A4:AN' + IntToStr(row_0-1)].Borders[2].LineStyle := 1;
  exWks.Range['A4:AN' + IntToStr(row_0-1)].Borders[9].LineStyle := 1;

  exWks.PageSetup.PrintArea := exWks.Range['A1:U'+IntToStr(row_0)].Address;
  exApp.Range['A1'].Select;
  exApp.Visible := True;

  exApp := Null;
  exWks := Null;

  ShowTextMessage('', True);
  fmMain.dxStatusBar1.Panels[3].Text := IntToStr(SecondsBetween(now, d)) + ' сек.';
  Screen.Cursor := crDefault;
end;

procedure TfmFactTrack.dxBarButton32Click(Sender: TObject);
var i : integer;
   SP : TADOStoredProc;
begin
  SP := TADOStoredProc.Create(nil);
  SP.Connection := fmMain.Lis;
  SP.ProcedureName := 'sp_vagon_repair_fact_modify';

  if Application.MessageBox('Вы точно уверены?', 'Внимание', MB_OKCANCEL) = IDOK then begin
    Screen.Cursor := -11;
    for i := 0 to cxGrid1DBBandedTableView1.Controller.SelectedRowCount - 1 do begin
      Screen.Cursor := crHourglass;
      SP.Parameters.Refresh;
      SP.Parameters.ParamByName('@type_action').Value := TComponent(Sender).Tag;
      SP.Parameters.ParamByName('@fact_track_trip_id').Value := cxGrid1DBBandedTableView1.Controller.SelectedRows[i].Values[cxGrid1DBBandedTableView1.GetColumnByFieldName('fact_track_trip_id').Index];
      try
       SP.ExecProc;
      except
      end;
      Screen.Cursor := crDefault;
    end;
    ShowTextMessage;
  end;
end;

procedure TfmFactTrack.dxBarButton33Click(Sender: TObject);
var exWks, exApp       : Variant;
    i, row_0, distance : integer;
    show_distance      : boolean;
    ClientDS_distance, ClientDS  : TClientDataSet;
    d                  : TDateTime;
    Q                  : TADOQuery;
    date_query         : TDateTime;
    date_otpr          : TDateTime;
begin
  Screen.Cursor := crHourglass;
  fmMain.dxStatusBar1.Panels[3].Text := '';
  d := NOW;
  Q := TADOQuery.Create(nil);
  Q.Connection := fmMain.Lis;

  show_distance := False;
  if Application.MessageBox('Заполнять расстояние?','Внимание', MB_YESNO) = ID_YES then show_distance := True;

  ShowTextMessage('Запуск Excel...', False);
  exApp := CreateOleObject('Excel.Application');
  exApp.Workbooks.Add(GetDocBlob(fmMain.Lis, 329));
  exWks := exApp.ActiveWorkbook.WorkSheets[1];

  row_0 := 5;

  ShowTextMessage('Вывод в Excel...', False);
  for i:=0 to cxGrid1DBBandedTableView1.Controller.SelectedRecordCount - 1 do begin
//    exWks.Range['D' + IntToStr(row_0)].Value := VarToStr(cxGrid1DBBandedTableView1.Controller.SelectedRows[i].Values[cxGrid1DBBandedTableView1days_free.Index]);
    exWks.Range['E' + IntToStr(row_0)].Value := VarToStr(cxGrid1DBBandedTableView1.Controller.SelectedRows[i].Values[cxGrid1DBBandedTableView1num_vagon.Index]);
    exWks.Range['F' + IntToStr(row_0)].Value := VarToStr(cxGrid1DBBandedTableView1.Controller.SelectedRows[i].Values[cxGrid1DBBandedTableView1node_end_name.Index]);

    exWks.Range['G' + IntToStr(row_0)].Value := DateOf(cxGrid1DBBandedTableView1.Controller.SelectedRows[i].Values[cxGrid1DBBandedTableView1date_operation.Index]);
    exWks.Range['H' + IntToStr(row_0)].Value := VarToStr(cxGrid1DBBandedTableView1.Controller.SelectedRows[i].Values[cxGrid1DBBandedTableView1time_operation.Index]);
    exWks.Range['I' + IntToStr(row_0)].Value := VarToStr(cxGrid1DBBandedTableView1.Controller.SelectedRows[i].Values[cxGrid1DBBandedTableView1node_operation_name.Index]);
    exWks.Range['J' + IntToStr(row_0)].Value := VarToStr(cxGrid1DBBandedTableView1.Controller.SelectedRows[i].Values[cxGrid1DBBandedTableView1road_begin_name.Index]);
//    exWks.Range['K' + IntToStr(row_0)].Value := VarToStr(cxGrid1DBBandedTableView1.Controller.SelectedRows[i].Values[cxGrid1DBBandedTableView1road_end_name.Index]);
    exWks.Range['L' + IntToStr(row_0)].Value := VarToStr(cxGrid1DBBandedTableView1.Controller.SelectedRows[i].Values[cxGrid1DBBandedTableView1index_train.Index]);
    exWks.Range['M' + IntToStr(row_0)].Value := VarToStr(cxGrid1DBBandedTableView1.Controller.SelectedRows[i].Values[cxGrid1DBBandedTableView1num_train.Index]);
    exWks.Range['N' + IntToStr(row_0)].Value := VarToStr(cxGrid1DBBandedTableView1.Controller.SelectedRows[i].Values[cxGrid1DBBandedTableView1kargoETSNG_name.Index]);
    exWks.Range['O' + IntToStr(row_0)].Value := cxGrid1DBBandedTableView1.Controller.SelectedRows[i].Values[cxGrid1DBBandedTableView1fact_weight.Index];
//    exWks.Range['P' + IntToStr(row_0)].Value := VarToStr(cxGrid1DBBandedTableView1.Controller.SelectedRows[i].Values[cxGrid1DBBandedTableView1poluchgr.Index]);
    exWks.Range['Q' + IntToStr(row_0)].Value := VarToStr(cxGrid1DBBandedTableView1.Controller.SelectedRows[i].Values[cxGrid1DBBandedTableView1node_begin_name.Index]);
    if not VarIsNull(cxGrid1DBBandedTableView1.Controller.SelectedRows[i].Values[cxGrid1DBBandedTableView1date_otpr.Index]) then  begin
      exWks.Range['R' + IntToStr(row_0)].Value := DateOf(cxGrid1DBBandedTableView1.Controller.SelectedRows[i].Values[cxGrid1DBBandedTableView1date_otpr.Index]);
      exWks.Range['S' + IntToStr(row_0)].Value := VarToStr(cxGrid1DBBandedTableView1.Controller.SelectedRows[i].Values[cxGrid1DBBandedTableView1time_otpr.Index]);
    end;


    exWks.Range['T' + IntToStr(row_0)].Value := VarToStr(cxGrid1DBBandedTableView1.Controller.SelectedRows[i].Values[cxGrid1DBBandedTableView1doc_number.Index]);
//    exWks.Range['Z' + IntToStr(row_0)].Value := VarToStr(cxGrid1DBBandedTableView1.Controller.SelectedRows[i].Values[cxGrid1DBBandedTableView1type_park_name.Index]);

    exWks.Range['U'+IntToStr(row_0)].Value := 0;
    exWks.Range['V'+IntToStr(row_0)].Value := 0;

//    exWks.Range['W' + IntToStr(row_0)].Value := VarToStr(cxGrid1DBBandedTableView1.Controller.SelectedRows[i].Values[cxGrid1DBBandedTableView1cod_operation_vagon_cod.Index]);
//    exWks.Range['X' + IntToStr(row_0)].Value := VarToStr(cxGrid1DBBandedTableView1.Controller.SelectedRows[i].Values[cxGrid1DBBandedTableView1cod_operation_vagon_name_full.Index]);
    exWks.Range['Y' + IntToStr(row_0)].Value := String(' ');

    if show_distance then begin
//      //пройденное растояние
//      if not VarIsNull(cxGrid1DBBandedTableView1.Controller.SelectedRows[i].Values[cxGrid1DBBandedTableView1distance1.Index]) then
//       exWks.Range['U'+IntToStr(row_0)].Value := double(cxGrid1DBBandedTableView1.Controller.SelectedRows[i].Values[cxGrid1DBBandedTableView1distance1.Index])
//      else
//       exWks.Range['U'+IntToStr(row_0)].Value := GetCalcDistanceDB(VarToStr(cxGrid1DBBandedTableView1.Controller.SelectedRows[i].Values[cxGrid1DBBandedTableView1node_begin_cod.Index]), VarToStr(cxGrid1DBBandedTableView1.Controller.SelectedRows[i].Values[cxGrid1DBBandedTableView1node_operation_cod.Index]), fmMain.Lis, False, Date);
//
//      //оставшееся растояние
//      if not VarIsNull(cxGrid1DBBandedTableView1.Controller.SelectedRows[i].Values[cxGrid1DBBandedTableView1distance2.Index]) then
//       exWks.Range['V'+IntToStr(row_0)].Value := double(cxGrid1DBBandedTableView1.Controller.SelectedRows[i].Values[cxGrid1DBBandedTableView1distance2.Index])
//      else
//       exWks.Range['V'+IntToStr(row_0)].Value := GetCalcDistanceDB(VarToStr(cxGrid1DBBandedTableView1.Controller.SelectedRows[i].Values[cxGrid1DBBandedTableView1node_operation_cod.Index]), VarToStr(cxGrid1DBBandedTableView1.Controller.SelectedRows[i].Values[cxGrid1DBBandedTableView1node_end_cod.Index]), fmMain.Lis, False, Date);
    end;

    exWks.Range['AJ' + IntToStr(row_0)].Value := VarToStr(cxGrid1DBBandedTableView1.Controller.SelectedRows[i].Values[cxGrid1DBBandedTableView1copper_calibration.Index]);

    Q.Close;
    Q.SQL.Clear;
    Q.SQL.Add(' SELECT p.date_build, p.factory, p.vagon_load, p.vagon_model, p.factory_name ');
    Q.SQL.Add(' FROM fact_param p WITH (NOLOCK) WHERE ');
    Q.SQL.Add(' fact_param_id = (SELECT MAX(fact_param_id) FROM fact_param WITH (NOLOCK) WHERE  num_vagon = ' +  VarToStr(cxGrid1DBBandedTableView1.Controller.SelectedRows[i].Values[cxGrid1DBBandedTableView1num_vagon.Index])+ ' )');
    Q.Open;

    if Q.RecordCount > 0 then begin
      exWks.Range['AA'+IntToStr(row_0)].Value  := Q.FieldByName('date_build').AsString;
      exWks.Range['AK'+IntToStr(row_0)].Value := Q.FieldByName('vagon_load').AsString;
      exWks.Range['AC'+IntToStr(row_0)].Value := Q.FieldByName('factory').AsString;
      exWks.Range['AB'+IntToStr(row_0)].Value := Q.FieldByName('factory_name').AsString;
      exWks.Range['C'+IntToStr(row_0)].Value  := Q.FieldByName('vagon_model').AsString;
    end;

    Q.Close;
    Q.SQL.Clear;
    Q.SQL.Add(' SELECT ft.date_last_depo_place, ft.date_cap_place, ft.last_depo_place, ft.last_depo_place_name, ft.last_cap_place, ft.last_cap_place_name ');
    Q.SQL.Add(' FROM view_fact_tech ft WITH (NOLOCK) WHERE ');
    Q.SQL.Add(' fact_tech_id = (SELECT MAX(fact_tech_id) FROM fact_tech WITH (NOLOCK) WHERE  num_vagon = ' +  VarToStr(cxGrid1DBBandedTableView1.Controller.SelectedRows[i].Values[cxGrid1DBBandedTableView1num_vagon.Index])+ ' )');
    Q.Open;

    if Q.RecordCount > 0 then begin
     exWks.Range['AD'+IntToStr(row_0)].Value := Q.FieldByName('date_last_depo_place').AsString; // Дата деп.ремонта
     exWks.Range['AF'+IntToStr(row_0)].Value := Q.FieldByName('last_depo_place').AsString; // (Код) Место Деп.ремонта
     exWks.Range['AE'+IntToStr(row_0)].Value := Q.FieldByName('last_depo_place_name').AsString; // Место деп. ремонта
     exWks.Range['AG'+IntToStr(row_0)].Value := Q.FieldByName('date_cap_place').AsString; // Дата Кап.ремонта
     exWks.Range['AI'+IntToStr(row_0)].Value := Q.FieldByName('last_cap_place').AsString; // (Код) Место Кап.ремонта
     exWks.Range['AH'+IntToStr(row_0)].Value := Q.FieldByName('last_cap_place_name').AsString;
    end;

    date_query := cxGrid1DBBandedTableView1.Controller.SelectedRows[i].Values[cxGrid1DBBandedTableView1date_query.Index];

    Q.Close;
    Q.SQL.Clear;
    Q.SQL.Add('SELECT c.vagon_comment FROM dbo.view_vagon_comment c WITH (NOLOCK) WHERE (c.vagon_id = '+  VarToStr(cxGrid1DBBandedTableView1.Controller.SelectedRows[i].Values[cxGrid1DBBandedTableView1vagon_id.Index])+ ') AND (vagon_comment_type_cod = ''6'')  AND ( '+DateToSQL(date_query) + '  BETWEEN c.date_begin AND ISNULL(c.date_end + 0.999 , '+DateToSQL(date_query) + '))');
    Q.Open;

    if Q.RecordCount > 0 then begin
      exWks.Range['B'+IntToStr(row_0)].Value := Q.FieldByName('vagon_comment').AsString;
    end;

    if not VarIsNull(cxGrid1DBBandedTableView1.Controller.SelectedRows[i].Values[cxGrid1DBBandedTableView1date_otpr.Index]) then  begin
     date_otpr := cxGrid1DBBandedTableView1.Controller.SelectedRows[i].Values[cxGrid1DBBandedTableView1date_otpr.Index];
    end else begin
     date_otpr := date_query;
    end;

    Q.Close;
    Q.SQL.Clear;
    Q.SQL.Add('SELECT etran_date_expire FROM view_fact_all WHERE num_vagon = ' +  VarToStr(cxGrid1DBBandedTableView1.Controller.SelectedRows[i].Values[cxGrid1DBBandedTableView1num_vagon.Index]));
    Q.SQL.Add(' AND date_from_to = CONVERT(date,' +DateToSQL(date_otpr) + ')');
    Q.Open;

//    exWks.Range['AL'+IntToStr(row_0)].Value := cxGrid1DBBandedTableView1.Controller.SelectedRows[i].Values[cxGrid1DBBandedTableView1milage_rest.Index];

    if Q.RecordCount > 0 then begin
      exWks.Range['AM'+IntToStr(row_0)].Value := Q.FieldByName('etran_date_expire').AsString;
    end;

    //Ранее перевозимый груз
    Q.Close;
    Q.SQL.Clear;
    Q.SQL.Add('SELECT TOP 1 kargoETSNG_name FROM FACT_TRACK_TRIP WITH(NOLOCK)');
    Q.SQL.Add(' WHERE num_vagon = :num_vagon');
    Q.SQL.Add(' AND users_group_id = :users_group_id');
    Q.SQL.Add(' AND date_otpr < :date_otpr');
    Q.SQL.Add(' AND fact_weight > 0 ORDER BY date_otpr DESC');
    Q.Parameters.ParamByName('num_vagon').Value      := cxGrid1DBBandedTableView1.Controller.SelectedRows[i].Values[cxGrid1DBBandedTableView1num_vagon.Index];
    Q.Parameters.ParamByName('users_group_id').Value := usr_pwd.user_group_id;
    Q.Parameters.ParamByName('date_otpr').Value      := cxGrid1DBBandedTableView1.Controller.SelectedRows[i].Values[cxGrid1DBBandedTableView1date_otpr.Index];
    Q.Open;

    if Q.RecordCount > 0 then begin
      exWks.Range['AN'+IntToStr(row_0)].Value := Q.FieldByName('kargoETSNG_name').AsString;
    end;

//    exWks.Range['AO'+IntToStr(row_0)].Value :=  VarToStr(cxGrid1DBBandedTableView1.Controller.SelectedRows[i].Values[cxGrid1DBBandedTableView1next_date_repair.Index]);

    row_0 := row_0  + 1;
    ShowTextMessage('Осталось ' + IntToStr(cxGrid1DBBandedTableView1.Controller.SelectedRecordCount - i) + ' вагонов...', False);
  end;

  exWks.Range['B3'].Value := 'Количество вагонов/контейнеров: ' + IntToStr(cxGrid1DBBandedTableView1.Controller.SelectedRecordCount);
  exWks.Range['A4:AO' + IntToStr(row_0-1)].Borders[1].LineStyle := 1;
  exWks.Range['A4:AO' + IntToStr(row_0-1)].Borders[2].LineStyle := 1;
  exWks.Range['A4:AO' + IntToStr(row_0-1)].Borders[9].LineStyle := 1;

  exWks.PageSetup.PrintArea := exWks.Range['A1:AO'+IntToStr(row_0)].Address;
  exApp.Range['A1'].Select;
  exApp.Visible := True;

  exApp := Null;
  exWks := Null;

  ShowTextMessage('', True);
  fmMain.dxStatusBar1.Panels[3].Text := IntToStr(SecondsBetween(now, d)) + ' сек.';
  Screen.Cursor := crDefault;
end;


procedure TfmFactTrack.dxBarButton38Click(Sender: TObject);
begin
  Screen.Cursor := crHourglass;

  if TControl(Sender).Tag = 1 then begin
    Fdate_history1 := IncMonth(Fdate_history1, 1);
    Fdate_history2 := IncMonth(Fdate_history2 + 1, 1) - 1;
    // +1 день и -1 день мы делаем, для того чтобы последний день месяца, так и остался последним днем
  end;

  if TControl(Sender).Tag = 2 then begin
    Fdate_history1 := IncMonth(Fdate_history1, -1);
    Fdate_history2 := IncMonth(Fdate_history2 + 1, -1) - 1;
    // +1 день и -1 день мы делаем, для того чтобы последний день месяца, так и остался последним днем
  end;

  if Fdate_history1 = IncMonth(Fdate_history2 + 1, -1) then
    // ровно один месяц
    dxBarSubItem8.Caption := FormatDateTime('mmmm yyyy', Fdate_history1)
  else
    dxBarSubItem8.Caption := FormatDateTime('dd.mm.yy', Fdate_history1) + ' - ' + FormatDateTime('dd.mm.yy', Fdate_history2);
  dxBarManager1Bar1.Reset;

  Query_History.Close;
  Query_History.Parameters.ParamByName('date_begin' ).Value := Fdate_history1;
  Query_History.Parameters.ParamByName('date_end'   ).Value := Fdate_history2;
  Query_History.Open;

  Screen.Cursor := crDefault;
end;

procedure TfmFactTrack.dxBarButton_HistoryClick(Sender: TObject);
begin
  if dxBarButton_History.Down then begin
    cxPageControl2.Visible  := True;
    Splitter1.Visible       := True;
    cxPageControl2Change(nil);
  end else begin
    cxPageControl2.Visible := False;
    Splitter1.Visible      := False;
  end;
end;

procedure TfmFactTrack.dxBarButton40Click(Sender: TObject);
var i : integer;
   SP : TADOStoredProc;
begin
  SP := TADOStoredProc.Create(nil);
  SP.Connection := fmMain.Lis;
  SP.ProcedureName := 'sp_fact_track_reps_modify';

  if Application.MessageBox('Вы точно уверены?', 'Внимание', MB_OKCANCEL) = IDOK then begin
    Screen.Cursor := -11;
    for i := 0 to cxGrid3DBBandedTableView1.Controller.SelectedRowCount - 1 do begin
      Screen.Cursor := crHourglass;
      SP.Parameters.Refresh;
      SP.Parameters.ParamByName('@type_action').Value := 0;
      SP.Parameters.ParamByName('@rec_type').Value := TComponent(Sender).Tag;
      SP.Parameters.ParamByName('@fact_track_trip_id').Value := cxGrid3DBBandedTableView1.Controller.SelectedRows[i].Values[cxGrid3DBBandedTableView1.GetColumnByFieldName('fact_track_trip _id').Index];
      try
       SP.ExecProc;
      except
      end;
      Screen.Cursor := crDefault;
    end;
    ShowTextMessage;
  end;
end;

procedure TfmFactTrack.dxBarButton45Click(Sender: TObject);
begin
	SetdxDBGridColumns(cxGridDBBandedTableView1);
end;

procedure TfmFactTrack.dxBarButton46Click(Sender: TObject);
begin
	cxGridDBBandedTableView1.OptionsView.GroupByBox := not cxGridDBBandedTableView1.OptionsView.GroupByBox;
end;

procedure TfmFactTrack.dxBarButton47Click(Sender: TObject);
begin
	FiltercxGrid4ListID(cxGridDBBandedTableView1);
end;

procedure TfmFactTrack.dxBarButton48Click(Sender: TObject);
var s: string;
i : integer;
         ClientDS : TClientDataSet;
begin
  ClientDS := TClientDataSet.Create(nil);
  ClientDS.FieldDefs.Add('id',   ftAutoInc);
  ClientDS.FieldDefs.Add('column_name1',   ftString, 50);
  ClientDS.FieldDefs.Add('field_name1', ftString, 50);
  ClientDS.FieldDefs.Add('column_name2',   ftString, 50);
  ClientDS.FieldDefs.Add('field_name2', ftString, 50);
  ClientDS.CreateDataSet;
  ClientDS.LogChanges := False;


  for i := 0 to cxGrid1DBBandedTableView1.ColumnCount-1 do begin
    ClientDS.Append;
    ClientDS.FieldByName('column_name1').Value := cxGrid1DBBandedTableView1.Columns[i].Caption;
    ClientDS.FieldByName('field_name1' ).Value := cxGrid1DBBandedTableView1.Columns[i].DataBinding.FieldName;
    ClientDS.Post;
  end;


  for i := 0 to cxGrid2DBBandedTableView1.ColumnCount-1 do begin
    if ClientDS.Locate('field_name1', cxGrid2DBBandedTableView1.Columns[i].DataBinding.FieldName, []) then begin
      ClientDS.Edit;
      ClientDS.FieldByName('column_name2').Value := cxGrid2DBBandedTableView1.Columns[i].Caption;
      ClientDS.FieldByName('field_name2' ).Value := cxGrid2DBBandedTableView1.Columns[i].DataBinding.FieldName;
      ClientDS.Post;
    end else begin
      ClientDS.Append;
      ClientDS.FieldByName('column_name2').Value := cxGrid2DBBandedTableView1.Columns[i].Caption;
      ClientDS.FieldByName('field_name2' ).Value := cxGrid2DBBandedTableView1.Columns[i].DataBinding.FieldName;
      ClientDS.Post;
    end;
  end;

  ClientDS.SaveToFile('c:\projects\1.xml', dfXML);
  ShowMessage('ok');


//  s := '';
//  for i := 0 to cxGrid2DBBandedTableView1.ColumnCount-1 do begin
//    s := s + cxGrid2DBBandedTableView1.Columns[i].DataBinding.FieldName + #10;
//  end;
//  ShowMessage(s);



end;

procedure TfmFactTrack.dxBarButton49Click(Sender: TObject);
begin
  Screen.Cursor := crHourglass;

  if TControl(Sender).Tag = 1 then begin
    Fdate_trip1 := IncMonth(Fdate_trip1, 1);
    Fdate_trip2 := IncMonth(Fdate_trip2 + 1, 1) - 1;
    // +1 день и -1 день мы делаем, для того чтобы последний день месяца, так и остался последним днем
  end;

  if TControl(Sender).Tag = 2 then begin
    Fdate_trip1 := IncMonth(Fdate_trip1, -1);
    Fdate_trip2 := IncMonth(Fdate_trip2 + 1, -1) - 1;
    // +1 день и -1 день мы делаем, для того чтобы последний день месяца, так и остался последним днем
  end;

  if Fdate_trip1 = IncMonth(Fdate_trip2 + 1, -1) then
    // ровно один месяц
    dxBarSubItem10.Caption := FormatDateTime('mmmm yyyy', Fdate_trip1)
  else
    dxBarSubItem10.Caption := FormatDateTime('dd.mm.yy', Fdate_trip1) + ' - ' + FormatDateTime('dd.mm.yy', Fdate_trip2);
  dxBarManager1Bar1.Reset;


  Query_HistoryTrip.Close;
  Query_HistoryTrip.Parameters.ParamByName('date_begin1'    ).Value := Fdate_trip1;
  Query_HistoryTrip.Parameters.ParamByName('date_end1'      ).Value := Fdate_trip2;
  Query_HistoryTrip.Parameters.ParamByName('date_begin2'    ).Value := Fdate_trip1;
  Query_HistoryTrip.Parameters.ParamByName('date_end2'      ).Value := Fdate_trip2;
  Query_HistoryTrip.Open;

  Screen.Cursor := crDefault;
end;


procedure TfmFactTrack.ExcludeSwitchVagon(cxGridDB : TcxGridDBBandedTableView; cxGridDBColumnIndex, type_action : integer; ObjectButton : TObject);
var       i : integer;
         SP : TADOStoredProc;
        str,
   str_type : PChar;
begin
  {удаление вагона в архив и его возврат}
  if cxGridDB.Controller.SelectedRecordCount = 0 then
    Exit;

  {для формирования информационного сообщения}
  if (TComponent(ObjectButton).Tag = 1) OR (TComponent(ObjectButton).Tag = 11) then
    {убрать в архив}
    str := 'перенесены в архив!'
  else
    str := 'извлечены из архива!';

  if (TComponent(ObjectButton).Tag = 1) OR (TComponent(ObjectButton).Tag = 0) then
    str_type := 'вагоны'
  else
    str_type := 'записи';


  if Application.MessageBox(PChar('Все выбранные ' + str_type + ' будут '+ str + #10#13 + 'Вы уверены, что хотите это сделать?'), 'Внимание', MB_ICONQUESTION + MB_OKCANCEL) = IDOK then begin
    Screen.Cursor := crHourglass;

    //Обновить информацию
    ShowTextMessage('Обновление информации ...', False);
    SP := TADOStoredProc.Create(nil);
    try
      SP.Connection := fmMain.Lis;
      SP.ProcedureName := 'sp_fact_track_modify';
      SP.Parameters.Refresh;

      for i := 0 to cxGridDB.Controller.SelectedRecordCount - 1 do begin
        SP.Close;
        SP.Parameters.ParamByName('@type_action').Value     := type_action;

        if (TComponent(ObjectButton).Tag = 1) OR (TComponent(ObjectButton).Tag = 0) then
          SP.Parameters.ParamByName('@num_vagon').Value     := cxGridDB.Controller.SelectedRows[i].Values[cxGridDBColumnIndex]//cxGrid1DBBandedTableView1num_vagon.Index
        else
          SP.Parameters.ParamByName('@fact_track_id').Value := cxGridDB.Controller.SelectedRows[i].Values[cxGridDBColumnIndex];//cxGrid1DBBandedTableView1fact_track_id.Index

        SP.Parameters.ParamByName('@set_archive').Value     := TComponent(ObjectButton).Tag;
        SP.ExecProc;
        ShowTextMessage('Осталось ' + IntToStr(cxGridDB.Controller.SelectedRecordCount - i) + ' записей...', False);
      end;
      ShowTextMessage('Обновление информации ...', False);
      //dxBarButton_Refresh.Click;
      ShowTextMessage('', True);
    finally
      SP.Free;
      ShowTextMessage('', True);
      Screen.Cursor := crDefault;
    end;
  end;
end;

procedure TfmFactTrack.TripRecalc(cxGridDB : TcxGridDBBandedTableView; cxGridDBColumnIndex : integer);
var  i : integer;
    SP : TADOStoredProc;
begin
  //пересчет рейсов
  if cxGridDB.Controller.SelectedRecordCount = 0 then
    Exit;

  if cxGridDB.Controller.SelectedRecordCount > 50 then begin
    Application.MessageBox('Выбрано больше 50 вагонов, пересчет запрещен!', 'ВНИМАНИЕ', MB_ICONINFORMATION);
    Exit;
  end;

  Screen.Cursor := crHourglass;

  //Обновить информацию
  ShowTextMessage('Обновление информации ...', False);
  SP := TADOStoredProc.Create(nil);
  try
    SP.Connection := fmMain.Lis;
    SP.ProcedureName := 'sp_fact_track_trip_recalc_full';
    SP.Parameters.Refresh;

    for i := 0 to cxGridDB.Controller.SelectedRecordCount - 1 do begin
      SP.Close;
      SP.Parameters.ParamByName('@num_vagon').Value := cxGridDB.Controller.SelectedRows[i].Values[cxGridDBColumnIndex];//cxGrid1DBBandedTableView1num_vagon.Index
      SP.Parameters.ParamByName('@users_group_id').Value := usr_pwd.user_group_id;
      SP.ExecProc;
      ShowTextMessage('Осталось ' + IntToStr(cxGridDB.Controller.SelectedRecordCount - i) + ' записей...', False);
    end;
    ShowTextMessage('Обновление информации ...', False);
    //dxBarButton_Refresh.Click;
    ShowTextMessage('', True);
  finally
    SP.Free;
    ShowTextMessage('', True);
    Screen.Cursor := crDefault;
  end;
end;

procedure TfmFactTrack.dxBarButton4Click(Sender: TObject);
begin
  {(Убрать / вернуть) (вагон) (в / из) архив-а (дислокация)}
  ExcludeSwitchVagon(cxGrid1DBBandedTableView1, cxGrid1DBBandedTableView1num_vagon.Index, 4, Sender);

  {Пересчет рейсов (дислокация)}
  TripRecalc(cxGrid1DBBandedTableView1, cxGrid1DBBandedTableView1num_vagon.Index);

  dxBarButton_Refresh.Click;
end;

procedure TfmFactTrack.dxBarButton120Click(Sender: TObject);
begin
  {Убрать / вернуть запись в / из архив-а (история вагона)}
  ExcludeSwitchVagon(cxGrid2DBBandedTableView1, cxGrid2DBBandedTableView1fact_track_id.Index, 5, Sender);

  {Пересчет рейсов (история вагона)}
  TripRecalc(cxGrid2DBBandedTableView1, cxGrid2DBBandedTableView1num_vagon.Index);

  dxBarButton_Refresh.Click;
end;

procedure TfmFactTrack.dxBarButton78Click(Sender: TObject);
begin
  {Убрать / вернуть вагон в / из архив-а (рейсы)}
  ExcludeSwitchVagon(cxGridDBBandedTableView1, cxGridDBBandedTableView1num_vagon.Index, 4, Sender);

  {Пересчет рейсов (рейсы)}
  TripRecalc(cxGridDBBandedTableView1, cxGridDBBandedTableView1num_vagon.Index);

  dxBarButton_Refresh.Click;
end;


procedure TfmFactTrack.dxBarButton18Click(Sender: TObject);
begin
  {Пересчет рейсов (дислокация)}
  TripRecalc(cxGrid1DBBandedTableView1, cxGrid1DBBandedTableView1num_vagon.Index);

  dxBarButton_Refresh.Click;
end;

procedure TfmFactTrack.dxBarButton37Click(Sender: TObject);
begin
  {Пересчет рейсов (рейсы)}
  TripRecalc(cxGridDBBandedTableView1, cxGridDBBandedTableView1num_vagon.Index);

  dxBarButton_Refresh.Click;
end;




procedure TfmFactTrack.dxBarButton51Click(Sender: TObject);
begin
  fmPeriod := TfmPeriod.Create(Application, Fdate_history1, Fdate_history2, 3);
  if fmPeriod.ShowModal=mrOK then begin
    Fdate_history1 := fmPeriod._GetMonth;
    Fdate_history2 := IncMonth(Fdate_history1, 1);
    dxBarSubItem8.Caption := FormatDateTime('mmmm yyyy', Fdate_history1);
    Screen.Cursor := crHourGlass;

    Query_History.Close;
    Query_History.Parameters.ParamByName('date_begin' ).Value := Fdate_history1;
    Query_History.Parameters.ParamByName('date_end'   ).Value := Fdate_history2;
    Query_History.Open;

    Screen.Cursor := crDefault;
  end;
end;

procedure TfmFactTrack.dxBarButton52Click(Sender: TObject);
begin
  fmPeriod := TfmPeriod.Create(Application, Fdate_history1, Fdate_history2, 1);
  if fmPeriod.ShowModal=mrOK then begin
    Fdate_history1 := fmPeriod._GetDateBegin;
    Fdate_history2 := fmPeriod._GetDateEnd;
    dxBarSubItem8.Caption := FormatDateTime('dd.mm.yy', Fdate_history1) + ' - ' + FormatDateTime('dd.mm.yy', Fdate_history2);
    Screen.Cursor := crHourGlass;

    Query_History.Close;
    Query_History.Parameters.ParamByName('date_begin' ).Value := Fdate_history1;
    Query_History.Parameters.ParamByName('date_end'   ).Value := Fdate_history2;
    Query_History.Open;

    Screen.Cursor := crDefault;
  end;
end;

procedure TfmFactTrack.dxBarButton53Click(Sender: TObject);
begin
  fmPeriod := TfmPeriod.Create(Application, Fdate_trip1, Fdate_trip2, 3);
  if fmPeriod.ShowModal=mrOK then begin
    Fdate_trip1 := fmPeriod._GetMonth;
    Fdate_trip2 := IncMonth(Fdate_trip1, 1);
    dxBarSubItem10.Caption := FormatDateTime('mmmm yyyy', Fdate_trip1);

    Screen.Cursor := crHourGlass;
    Query_HistoryTrip.Close;
    Query_HistoryTrip.Parameters.ParamByName('date_begin1'    ).Value := Fdate_trip1;
    Query_HistoryTrip.Parameters.ParamByName('date_end1'      ).Value := Fdate_trip2;
    Query_HistoryTrip.Parameters.ParamByName('date_begin2'    ).Value := Fdate_trip1;
    Query_HistoryTrip.Parameters.ParamByName('date_end2'      ).Value := Fdate_trip2;
    Query_HistoryTrip.Open;
    Screen.Cursor := crDefault;
  end;
end;

procedure TfmFactTrack.dxBarButton54Click(Sender: TObject);
var exWks, exApp       : Variant;
    i, row_0           : integer;
    show_distance      : boolean;
    d                  : TDateTime;
    Q_NSI              : TADOQuery;
    str_num_vagon      : string;

begin
  Screen.Cursor := crHourglass;
  fmMain.dxStatusBar1.Panels[3].Text := '';
  d := NOW;

  show_distance := False;
  if Application.MessageBox('Заполнять расстояние?','Внимание', MB_YESNO) = ID_YES then show_distance := True;

  ShowTextMessage('Запуск Excel...', False);
  exApp := CreateOleObject('Excel.Application');
  exApp.Workbooks.Add(GetDocBlob(fmMain.Lis, 361));
  exWks := exApp.ActiveWorkbook.WorkSheets[1];

  row_0 := 5;

  case cxPageControl1.ActivePageIndex of
    0 : begin
          str_num_vagon := '-9';
          for i:= 0 to cxGrid1DBBandedTableView1.Controller.SelectedRecordCount - 1 do begin
            str_num_vagon := str_num_vagon + ',';
            str_num_vagon := str_num_vagon + VarToStr(cxGrid1DBBandedTableView1.Controller.SelectedRows[i].Values[cxGrid1DBBandedTableView1num_vagon.Index]);
          end;

          Q_NSI := TADOQuery.Create(nil);
          Q_NSI.Connection := fmMain.Lis;
          Q_NSI.SQL.Add('SELECT VAGON_NSI.* ');
          Q_NSI.SQL.Add('FROM VAGON_NSI');
          Q_NSI.SQL.Add('JOIN GLOBAL_ID ON VAGON_NSI.vagon_id = GLOBAL_ID.global_id');
          Q_NSI.SQL.Add('JOIN USERS ON GLOBAL_ID.users_owner = USERS.users_id AND USERS.users_group_id = ' + IntToStr(usr_pwd.user_group_id));
          Q_NSI.SQL.Add('WHERE VAGON_NSI.carNumber IN (' + str_num_vagon + ')');
          Q_NSI.Open;

          ShowTextMessage('Вывод в Excel...', False);
          for i := 0 to cxGrid1DBBandedTableView1.Controller.SelectedRecordCount - 1 do begin
            exWks.Range['B' + IntToStr(row_0)].Value := cxGrid1DBBandedTableView1.Controller.SelectedRows[i].Values[cxGrid1DBBandedTableView1num_vagon.Index];

            exWks.Range['D' + IntToStr(row_0)].Value := VarToStr(cxGrid1DBBandedTableView1.Controller.SelectedRows[i].Values[cxGrid1DBBandedTableView1node_begin_name.Index]);
            exWks.Range['E' + IntToStr(row_0)].Value := VarToStr(cxGrid1DBBandedTableView1.Controller.SelectedRows[i].Values[cxGrid1DBBandedTableView1road_begin_name.Index]);
            exWks.Range['F' + IntToStr(row_0)].Value := VarToStr(cxGrid1DBBandedTableView1.Controller.SelectedRows[i].Values[cxGrid1DBBandedTableView1node_operation_name.Index]);
//            exWks.Range['G' + IntToStr(row_0)].Value := VarToStr(cxGrid1DBBandedTableView1.Controller.SelectedRows[i].Values[cxGrid1DBBandedTableView1road_operation_name.Index]);
            //Растояние оставшееся
//            if show_distance then
//              if not VarIsNull(cxGrid1DBBandedTableView1.Controller.SelectedRows[i].Values[cxGrid1DBBandedTableView1distance2.Index]) then
//                exWks.Range['H'+IntToStr(row_0)].Value := double(cxGrid1DBBandedTableView1.Controller.SelectedRows[i].Values[cxGrid1DBBandedTableView1distance2.Index])
//              else
//                exWks.Range['H'+IntToStr(row_0)].Value := GetCalcDistanceDB(VarToStr(cxGrid1DBBandedTableView1.Controller.SelectedRows[i].Values[cxGrid1DBBandedTableView1node_operation_cod.Index]), VarToStr(cxGrid1DBBandedTableView1.Controller.SelectedRows[i].Values[cxGrid1DBBandedTableView1node_end_cod.Index]), fmMain.Lis, False, Date);

            exWks.Range['I' + IntToStr(row_0)].Value := VarToStr(cxGrid1DBBandedTableView1.Controller.SelectedRows[i].Values[cxGrid1DBBandedTableView1node_end_name.Index]);
//            exWks.Range['J' + IntToStr(row_0)].Value := VarToStr(cxGrid1DBBandedTableView1.Controller.SelectedRows[i].Values[cxGrid1DBBandedTableView1poluchgr.Index]);
//            exWks.Range['K' + IntToStr(row_0)].Value := VarToStr(cxGrid1DBBandedTableView1.Controller.SelectedRows[i].Values[cxGrid1DBBandedTableView1road_end_name.Index]);
            exWks.Range['L' + IntToStr(row_0)].Value := VarToStr(cxGrid1DBBandedTableView1.Controller.SelectedRows[i].Values[cxGrid1DBBandedTableView1date_query.Index]);
            exWks.Range['M' + IntToStr(row_0)].Value := VarToStr(cxGrid1DBBandedTableView1.Controller.SelectedRows[i].Values[cxGrid1DBBandedTableView1kargoETSNG_name.Index]);
            exWks.Range['N' + IntToStr(row_0)].Value := VarToStr(cxGrid1DBBandedTableView1.Controller.SelectedRows[i].Values[cxGrid1DBBandedTableView1fact_weight.Index]);
//            exWks.Range['O' + IntToStr(row_0)].Value := VarToStr(cxGrid1DBBandedTableView1.Controller.SelectedRows[i].Values[cxGrid1DBBandedTableView1cod_operation_vagon_name.Index]);
            exWks.Range['P' + IntToStr(row_0)].Value := VarToStr(cxGrid1DBBandedTableView1.Controller.SelectedRows[i].Values[cxGrid1DBBandedTableView1num_train.Index]);
            exWks.Range['Q' + IntToStr(row_0)].Value := VarToStr(cxGrid1DBBandedTableView1.Controller.SelectedRows[i].Values[cxGrid1DBBandedTableView1index_train.Index]);
            exWks.Range['R' + IntToStr(row_0)].Value := VarToStr(cxGrid1DBBandedTableView1.Controller.SelectedRows[i].Values[cxGrid1DBBandedTableView1doc_number.Index]);

            //НСИ
            if Q_NSI.Locate('num_vagon', cxGrid1DBBandedTableView1.Controller.SelectedRows[i].Values[cxGrid1DBBandedTableView1num_vagon.Index] , []) then begin
              exWks.Range['C' + IntToStr(row_0)].Value := OleVariant(iif(VarIsNull(Q_NSI.FieldByName('carTypeName').Value), '', Q_NSI.FieldByName('carTypeName').Value));
              exWks.Range['S' + IntToStr(row_0)].Value := OleVariant(iif(VarIsNull(Q_NSI.FieldByName('carOwnerName').Value), '', Q_NSI.FieldByName('carOwnerName').Value));
              exWks.Range['T' + IntToStr(row_0)].Value := OleVariant(iif(VarIsNull(Q_NSI.FieldByName('carArendatorName').Value), '', Q_NSI.FieldByName('carArendatorName').Value));
              exWks.Range['U' + IntToStr(row_0)].Value := OleVariant(iif(VarIsNull(Q_NSI.FieldByName('carTrustedOperator').Value), '', Q_NSI.FieldByName('carTrustedOperator').Value));
              exWks.Range['W' + IntToStr(row_0)].Value := OleVariant(iif(VarIsNull(Q_NSI.FieldByName('carTonnage').Value), '', Q_NSI.FieldByName('carTonnage').Value));
              exWks.Range['X' + IntToStr(row_0)].Value := OleVariant(iif(VarIsNull(Q_NSI.FieldByName('carTrustedOperator').Value), '', Q_NSI.FieldByName('carTrustedOperator').Value));
              exWks.Range['Y' + IntToStr(row_0)].Value := OleVariant(iif(VarIsNull(Q_NSI.FieldByName('carModel').Value), '', Q_NSI.FieldByName('carModel').Value));
              exWks.Range['AA' + IntToStr(row_0)].Value := OleVariant(iif(VarIsNull(Q_NSI.FieldByName('carTypeRepair').Value), '', Q_NSI.FieldByName('carTypeRepair').Value));
              exWks.Range['AB' + IntToStr(row_0)].Value := OleVariant(iif(VarIsNull(Q_NSI.FieldByName('carNextRepair').Value), '', Q_NSI.FieldByName('carNextRepair').Value));
              //exWks.Range['AC' + IntToStr(row_0)].Value := OleVariant(iif(VarIsNull(Q_NSI.FieldByName('carModel').Value), '', Q_NSI.FieldByName('carModel').Value));
              exWks.Range['AD' + IntToStr(row_0)].Value := OleVariant(iif(VarIsNull(Q_NSI.FieldByName('carISKLDate').Value), '', Q_NSI.FieldByName('carISKLDate').Value));
            end;

            row_0 := row_0  + 1;
            ShowTextMessage('Осталось ' + IntToStr(cxGrid1DBBandedTableView1.Controller.SelectedRecordCount - i) + ' вагонов...', False);
          end;

          Q_NSI.Free;
        end;
    1 : begin
          str_num_vagon := '-9';
          for i:= 0 to cxGridDBBandedTableView1.Controller.SelectedRecordCount - 1 do begin
            str_num_vagon := str_num_vagon + ',';
            str_num_vagon := str_num_vagon + VarToStr(cxGridDBBandedTableView1.Controller.SelectedRows[i].Values[cxGridDBBandedTableView1num_vagon.Index]);
          end;

          Q_NSI := TADOQuery.Create(nil);
          Q_NSI.Connection := fmMain.Lis;
          Q_NSI.SQL.Add('SELECT VAGON_NSI.* ');
          Q_NSI.SQL.Add('FROM VAGON_NSI');
          Q_NSI.SQL.Add('JOIN GLOBAL_ID ON VAGON_NSI.vagon_id = GLOBAL_ID.global_id');
          Q_NSI.SQL.Add('JOIN USERS ON GLOBAL_ID.users_owner = USERS.users_id AND USERS.users_group_id = ' + IntToStr(usr_pwd.user_group_id));
          Q_NSI.SQL.Add('WHERE VAGON_NSI.carNumber IN (' + str_num_vagon + ')');
          Q_NSI.Open;

          ShowTextMessage('Вывод в Excel...', False);
          for i:=0 to cxGridDBBandedTableView1.Controller.SelectedRecordCount - 1 do begin
            exWks.Range['B' + IntToStr(row_0)].Value := cxGridDBBandedTableView1.Controller.SelectedRows[i].Values[cxGridDBBandedTableView1num_vagon.Index];
            exWks.Range['D' + IntToStr(row_0)].Value := VarToStr(cxGridDBBandedTableView1.Controller.SelectedRows[i].Values[cxGridDBBandedTableView1node_begin_name.Index]);
            exWks.Range['I' + IntToStr(row_0)].Value := VarToStr(cxGridDBBandedTableView1.Controller.SelectedRows[i].Values[cxGridDBBandedTableView1node_end_name.Index]);
            exWks.Range['M' + IntToStr(row_0)].Value := VarToStr(cxGridDBBandedTableView1.Controller.SelectedRows[i].Values[cxGridDBBandedTableView1kargoETSNG_name.Index]);
            exWks.Range['N' + IntToStr(row_0)].Value := VarToStr(cxGridDBBandedTableView1.Controller.SelectedRows[i].Values[cxGridDBBandedTableView1fact_weight.Index]);
            exWks.Range['R' + IntToStr(row_0)].Value := VarToStr(cxGridDBBandedTableView1.Controller.SelectedRows[i].Values[cxGridDBBandedTableView1doc_number.Index]);

            //НСИ
            if Q_NSI.Locate('num_vagon', cxGridDBBandedTableView1.Controller.SelectedRows[i].Values[cxGrid1DBBandedTableView1num_vagon.Index] , []) then begin
              exWks.Range['C' + IntToStr(row_0)].Value := OleVariant(iif(VarIsNull(Q_NSI.FieldByName('carTypeName').Value), '', Q_NSI.FieldByName('carTypeName').Value));
              exWks.Range['S' + IntToStr(row_0)].Value := OleVariant(iif(VarIsNull(Q_NSI.FieldByName('carOwnerName').Value), '', Q_NSI.FieldByName('carOwnerName').Value));
              exWks.Range['T' + IntToStr(row_0)].Value := OleVariant(iif(VarIsNull(Q_NSI.FieldByName('carArendatorName').Value), '', Q_NSI.FieldByName('carArendatorName').Value));
              exWks.Range['U' + IntToStr(row_0)].Value := OleVariant(iif(VarIsNull(Q_NSI.FieldByName('carTrustedOperator').Value), '', Q_NSI.FieldByName('carTrustedOperator').Value));
              exWks.Range['W' + IntToStr(row_0)].Value := OleVariant(iif(VarIsNull(Q_NSI.FieldByName('carTonnage').Value), '', Q_NSI.FieldByName('carTonnage').Value));
              exWks.Range['X' + IntToStr(row_0)].Value := OleVariant(iif(VarIsNull(Q_NSI.FieldByName('carTrustedOperator').Value), '', Q_NSI.FieldByName('carTrustedOperator').Value));
              exWks.Range['Y' + IntToStr(row_0)].Value := OleVariant(iif(VarIsNull(Q_NSI.FieldByName('carModel').Value), '', Q_NSI.FieldByName('carModel').Value));
              exWks.Range['AA' + IntToStr(row_0)].Value := OleVariant(iif(VarIsNull(Q_NSI.FieldByName('carTypeRepair').Value), '', Q_NSI.FieldByName('carTypeRepair').Value));
              exWks.Range['AB' + IntToStr(row_0)].Value := OleVariant(iif(VarIsNull(Q_NSI.FieldByName('carNextRepair').Value), '', Q_NSI.FieldByName('carNextRepair').Value));
              //exWks.Range['AC' + IntToStr(row_0)].Value := OleVariant(iif(VarIsNull(Q_NSI.FieldByName('carModel').Value), '', Q_NSI.FieldByName('carModel').Value));
              exWks.Range['AD' + IntToStr(row_0)].Value := OleVariant(iif(VarIsNull(Q_NSI.FieldByName('carISKLDate').Value), '', Q_NSI.FieldByName('carISKLDate').Value));
            end;

            row_0 := row_0  + 1;
            ShowTextMessage('Осталось ' + IntToStr(cxGridDBBandedTableView1.Controller.SelectedRecordCount - i) + ' вагонов...', False);
          end;

          Q_NSI.Free;
        end;
  end;

  exWks.Range['B3'].Value := 'Количество вагонов/контейнеров: ' + IntToStr(cxGrid1DBBandedTableView1.Controller.SelectedRecordCount);
  exWks.Range['A4:AG' + IntToStr(row_0-1)].Borders[1].LineStyle := 1;
  exWks.Range['A4:AG' + IntToStr(row_0-1)].Borders[2].LineStyle := 1;
  exWks.Range['A4:AG' + IntToStr(row_0-1)].Borders[9].LineStyle := 1;

  exWks.PageSetup.PrintArea := exWks.Range['A1:AL'+IntToStr(row_0)].Address;
  exApp.Range['A1'].Select;
  exApp.Visible := True;

  exApp := Null;
  exWks := Null;

  ShowTextMessage('', True);
  fmMain.dxStatusBar1.Panels[3].Text := IntToStr(SecondsBetween(now, d)) + ' сек.';
  Screen.Cursor := crDefault;
end;

procedure TfmFactTrack.StartFactTrackSaveProcess(xml_str: WideString; date_query: TDateTime; format_file: integer);
var           ClientDS : TClientDataSet;
        ClientDS_Vagon : TClientDataSet;
         ClientDS_Node : TClientDataSet;
         ClientDS_Road : TClientDataSet;
        ClientDS_Kargo : TClientDataSet;
                     i : integer;
           inf_obj_cod : string;
          inf_obj_name : string;
  SP_fact_track_modify : TADOStoredProc;
               connect : TADOConnection;
begin
  try
    connect := TADOConnection.Create(nil);
    connect.ConnectionString := fmMain.Lis.ConnectionString;
    connect.KeepConnection   := False;
    connect.LoginPrompt      := False;
    connect.Open;

    SP_fact_track_modify := TADOStoredProc.Create(nil);
    SP_fact_track_modify.Connection := connect;
    SP_fact_track_modify.CommandTimeout := 600;
    SP_fact_track_modify.ProcedureName := 'sp_fact_track_modify';

    ClientDS_Node := TClientDataSet.Create(nil);
    ClientDS_Node.FieldDefs.Add('node_id'   ,ftInteger);
    ClientDS_Node.FieldDefs.Add('search_cod',ftString,   6);
    ClientDS_Node.FieldDefs.Add('node_cod'  ,ftString,   6);
    ClientDS_Node.FieldDefs.Add('node_name' ,ftString, 100);
    ClientDS_Node.FieldDefs.Add('road_cod'  ,ftString,   6);
    ClientDS_Node.FieldDefs.Add('road_name' ,ftString, 100);
    ClientDS_Node.CreateDataSet;
    ClientDS_Node.LogChanges := False;

    ClientDS_Road := TClientDataSet.Create(nil);
    ClientDS_Road.FieldDefs.Add('road_id'   ,ftInteger);
    ClientDS_Road.FieldDefs.Add('search_cod',ftString,   6);
    ClientDS_Road.FieldDefs.Add('road_cod'  ,ftString,   6);
    ClientDS_Road.FieldDefs.Add('road_name' ,ftString, 100);
    ClientDS_Road.CreateDataSet;
    ClientDS_Road.LogChanges := False;

    ClientDS_Kargo := TClientDataSet.Create(nil);
    ClientDS_Kargo.FieldDefs.Add('kargo_id'   ,ftInteger);
    ClientDS_Kargo.FieldDefs.Add('search_cod' ,ftString,   6);
    ClientDS_Kargo.FieldDefs.Add('kargo_cod'  ,ftString,   6);
    ClientDS_Kargo.FieldDefs.Add('kargo_name' ,ftString, 100);
    ClientDS_Kargo.CreateDataSet;
    ClientDS_Kargo.LogChanges := False;


    ClientDS := TClientDataSet.Create(nil);
    ClientDS.XMLData := xml_str;
    ClientDS.LogChanges := False;

    ClientDS_Vagon := TClientDataSet.Create(nil);
    ClientDS_Vagon.FieldDefs.Add('num_vagon',           ftString, 9);
    ClientDS_Vagon.FieldDefs.Add('rod_vagon',           ftString, 3);
    ClientDS_Vagon.FieldDefs.Add('type_vagon',          ftString, 5);
    ClientDS_Vagon.FieldDefs.Add('state_self',          ftString, 3);
    ClientDS_Vagon.FieldDefs.Add('fact_weight',         ftFloat);
    ClientDS_Vagon.FieldDefs.Add('node_end_cod',        ftString, 7);
    ClientDS_Vagon.FieldDefs.Add('node_begin_cod',      ftString, 7);
    ClientDS_Vagon.FieldDefs.Add('kargoETSNG_cod',      ftString, 6);
    ClientDS_Vagon.FieldDefs.Add('poluchgr',            ftString, 5);
    ClientDS_Vagon.FieldDefs.Add('special_marks',       ftString, 4);
    ClientDS_Vagon.FieldDefs.Add('comment',             ftString, 7);
    ClientDS_Vagon.FieldDefs.Add('type_park_vagon',     ftString, 3);
    ClientDS_Vagon.FieldDefs.Add('cod_operation_cod',   ftString, 5);
    ClientDS_Vagon.FieldDefs.Add('node_operation_cod',  ftString, 7);
    ClientDS_Vagon.FieldDefs.Add('road_begin_cod',      ftString, 3);
    ClientDS_Vagon.FieldDefs.Add('road_end_cod',        ftString, 3);
    ClientDS_Vagon.FieldDefs.Add('index_train',         ftString, 14);
    ClientDS_Vagon.FieldDefs.Add('num_train',           ftString, 5);
    ClientDS_Vagon.FieldDefs.Add('file_load_name',      ftString, 201);
    ClientDS_Vagon.FieldDefs.Add('doc_number',          ftString, 256);
    ClientDS_Vagon.FieldDefs.Add('fact_track_id',       ftInteger);
    ClientDS_Vagon.FieldDefs.Add('is_saved',            ftBoolean);
    ClientDS_Vagon.FieldDefs.Add('is_updated',          ftBoolean);
    ClientDS_Vagon.FieldDefs.Add('error_text',          ftString, 256);
    ClientDS_Vagon.FieldDefs.Add('date_otpr',           ftDateTime);
    ClientDS_Vagon.FieldDefs.Add('date_operation',      ftDateTime);
    ClientDS_Vagon.FieldDefs.Add('vagon_id',            ftInteger);
    ClientDS_Vagon.FieldDefs.Add('vagon_owner_name',    ftString, 151);

    ClientDS_Vagon.FieldDefs.Add('node_begin_name',     ftString, 100); //  16
    ClientDS_Vagon.FieldDefs.Add('node_begin_road_cod', ftString, 50);  //  17
    ClientDS_Vagon.FieldDefs.Add('node_begin_road_name',ftString, 255); //  17
    ClientDS_Vagon.FieldDefs.Add('node_end_name',       ftString, 100); //  16
    ClientDS_Vagon.FieldDefs.Add('node_end_road_cod',   ftString, 50);  //  17
    ClientDS_Vagon.FieldDefs.Add('node_end_road_name',  ftString, 255); //  17
    ClientDS_Vagon.FieldDefs.Add('node_operation_name', ftString, 100); //  16
    ClientDS_Vagon.FieldDefs.Add('road_operation_cod',  ftString, 50);  //  17
    ClientDS_Vagon.FieldDefs.Add('road_operation_name', ftString, 255); //  17
    ClientDS_Vagon.FieldDefs.Add('road_begin_name',     ftString, 255); //  13
    ClientDS_Vagon.FieldDefs.Add('road_end_name',       ftString, 255); //  13
    ClientDS_Vagon.FieldDefs.Add('kargoETSNG_name',     ftString, 255); //  10

    ClientDS_Vagon.FieldDefs.Add('grpol_okpo',          ftString, 10);
    ClientDS_Vagon.FieldDefs.Add('grotpr_okpo',         ftString, 10);
    ClientDS_Vagon.FieldDefs.Add('RW_grpol',            ftString, 4);
    ClientDS_Vagon.FieldDefs.Add('RW_grotpr',           ftString, 4);
    ClientDS_Vagon.FieldDefs.Add('DateLoading',         ftDateTime);
    ClientDS_Vagon.FieldDefs.Add('RW_Rash',             ftString, 3);

    ClientDS_Vagon.FieldDefs.Add('idReis',           ftString, 50);
    ClientDS_Vagon.FieldDefs.Add('DatePrib',         ftDateTime);
    ClientDS_Vagon.FieldDefs.Add('DateVygr',         ftDateTime);



    ClientDS_Vagon.CreateDataSet;
    ClientDS_Vagon.LogChanges := False;

  //  ShowTextMessage('Подготовка данных...', False);
    ClientDS.First;
    while not ClientDS.Eof do begin
      ClientDS_Vagon.Append;

      {$REGION 'Добавляем основные данные'}
      ClientDS_Vagon.FieldByName('num_vagon'          ).Value := ClientDS.FieldByName('num_vagon'         ).Value;
      ClientDS_Vagon.FieldByName('rod_vagon'          ).Value := ClientDS.FieldByName('rod_vagon'         ).Value;
      ClientDS_Vagon.FieldByName('type_vagon'         ).Value := ClientDS.FieldByName('type_vagon'        ).Value;
      ClientDS_Vagon.FieldByName('state_self'         ).Value := ClientDS.FieldByName('state_self'        ).Value;
      ClientDS_Vagon.FieldByName('fact_weight'        ).Value := ClientDS.FieldByName('fact_weight'       ).Value;
      ClientDS_Vagon.FieldByName('node_end_cod'       ).Value := ClientDS.FieldByName('node_end_cod'      ).Value;
      ClientDS_Vagon.FieldByName('node_begin_cod'     ).Value := ClientDS.FieldByName('node_begin_cod'    ).Value;
      ClientDS_Vagon.FieldByName('kargoETSNG_cod'     ).Value := ClientDS.FieldByName('kargoETSNG_cod'    ).Value;
      ClientDS_Vagon.FieldByName('poluchgr'           ).Value := ClientDS.FieldByName('poluchgr'          ).Value;
      ClientDS_Vagon.FieldByName('special_marks'      ).Value := ClientDS.FieldByName('special_marks'     ).Value;
      ClientDS_Vagon.FieldByName('comment'            ).Value := ClientDS.FieldByName('comment'           ).Value;
      ClientDS_Vagon.FieldByName('type_park_vagon'    ).Value := ClientDS.FieldByName('type_park_vagon'   ).Value;
      ClientDS_Vagon.FieldByName('cod_operation_cod'  ).Value := ClientDS.FieldByName('cod_operation_cod' ).Value;
      ClientDS_Vagon.FieldByName('node_operation_cod' ).Value := ClientDS.FieldByName('node_operation_cod').Value;
      ClientDS_Vagon.FieldByName('road_begin_cod'     ).Value := ClientDS.FieldByName('road_begin_cod'    ).Value;
      ClientDS_Vagon.FieldByName('road_end_cod'       ).Value := ClientDS.FieldByName('road_end_cod'      ).Value;
      ClientDS_Vagon.FieldByName('index_train'        ).Value := ClientDS.FieldByName('index_train'       ).Value;
      ClientDS_Vagon.FieldByName('num_train'          ).Value := ClientDS.FieldByName('num_train'         ).Value;
      ClientDS_Vagon.FieldByName('file_load_name'     ).Value := ClientDS.FieldByName('file_load_name'    ).Value;
      ClientDS_Vagon.FieldByName('doc_number'         ).Value := ClientDS.FieldByName('doc_number'        ).Value;
      ClientDS_Vagon.FieldByName('fact_track_id'      ).Value := ClientDS.FieldByName('fact_track_id'     ).Value;
      ClientDS_Vagon.FieldByName('is_saved'           ).Value := ClientDS.FieldByName('is_saved'          ).Value;
      ClientDS_Vagon.FieldByName('is_updated'         ).Value := ClientDS.FieldByName('is_updated'        ).Value;
      ClientDS_Vagon.FieldByName('date_otpr'          ).Value := ClientDS.FieldByName('date_otpr'         ).Value;
      ClientDS_Vagon.FieldByName('date_operation'     ).Value := ClientDS.FieldByName('date_operation'    ).Value;
      ClientDS_Vagon.FieldByName('vagon_id'           ).Value := ClientDS.FieldByName('vagon_id'          ).Value;
      ClientDS_Vagon.FieldByName('vagon_owner_name'   ).Value := ClientDS.FieldByName('vagon_owner_name'  ).Value;

      ClientDS_Vagon.FieldByName('grpol_okpo'         ).Value := ClientDS.FieldByName('grpol_okpo'  ).Value;
      ClientDS_Vagon.FieldByName('grotpr_okpo'        ).Value := ClientDS.FieldByName('grotpr_okpo'  ).Value;
      ClientDS_Vagon.FieldByName('RW_grpol'           ).Value := ClientDS.FieldByName('RW_grpol'  ).Value;
      ClientDS_Vagon.FieldByName('RW_grotpr'          ).Value := ClientDS.FieldByName('RW_grotpr'  ).Value;
      ClientDS_Vagon.FieldByName('DateLoading'        ).Value := ClientDS.FieldByName('DateLoading'  ).Value;
      ClientDS_Vagon.FieldByName('RW_Rash'            ).Value := ClientDS.FieldByName('RW_Rash'  ).Value;
      ClientDS_Vagon.FieldByName('idReis'             ).Value := ClientDS.FieldByName('idReis'  ).Value;
      ClientDS_Vagon.FieldByName('DatePrib'           ).Value := ClientDS.FieldByName('DatePrib'  ).Value;
      ClientDS_Vagon.FieldByName('DateVygr'           ).Value := ClientDS.FieldByName('DateVygr'  ).Value;

      {$ENDREGION}

      {$REGION 'Поиск станции и дороги отправления'}
      if not ClientDS_Vagon.FieldByName('node_begin_cod').IsNull then begin
        if StrToIntDef(ClientDS_Vagon.FieldByName('node_begin_cod').AsString,0) <> 0 then begin
          inf_obj_cod  := ClientDS_Vagon.FieldByName('node_begin_cod').AsString;
          inf_obj_name := '';
          if NodeSearchCod(connect, ClientDS_Node, 16, date_query, inf_obj_cod, inf_obj_name) then begin
            ClientDS_Vagon.FieldByName('node_begin_cod' ).Value := inf_obj_cod;
            ClientDS_Vagon.FieldByName('node_begin_name').Value := inf_obj_name;
          end;

          inf_obj_cod  := ClientDS_Vagon.FieldByName('node_begin_cod').AsString;
          inf_obj_name := '';
          if NodeSearchCod(connect, ClientDS_Node, 17, date_query, inf_obj_cod, inf_obj_name) then begin
            ClientDS_Vagon.FieldByName('node_begin_road_cod' ).Value := inf_obj_cod;
            ClientDS_Vagon.FieldByName('node_begin_road_name').Value := inf_obj_name;
          end;
        end else begin
          ClientDS_Vagon.FieldByName('node_begin_cod' ).Value := null;
          ClientDS_Vagon.FieldByName('node_begin_name').Value := null;
          ClientDS_Vagon.FieldByName('node_begin_road_cod' ).Value := null;
          ClientDS_Vagon.FieldByName('node_begin_road_name').Value := null;
        end;
      end;
      {$ENDREGION}

      {$REGION 'Поиск станции и дороги назначения'}
      if not ClientDS_Vagon.FieldByName('node_end_cod').IsNull then begin
        if StrToIntDef(ClientDS_Vagon.FieldByName('node_end_cod').AsString,0) <> 0 then begin
          inf_obj_cod  := ClientDS_Vagon.FieldByName('node_end_cod').AsString;
          inf_obj_name := '';
          if NodeSearchCod(connect, ClientDS_Node, 16, date_query, inf_obj_cod, inf_obj_name) then begin
            ClientDS_Vagon.FieldByName('node_end_cod' ).Value := inf_obj_cod;
            ClientDS_Vagon.FieldByName('node_end_name').Value := inf_obj_name;
          end;

          inf_obj_cod  := ClientDS_Vagon.FieldByName('node_end_cod').AsString;
          inf_obj_name := '';
          if NodeSearchCod(connect, ClientDS_Node, 17, date_query, inf_obj_cod, inf_obj_name) then begin
            ClientDS_Vagon.FieldByName('node_end_road_cod' ).Value := inf_obj_cod;
            ClientDS_Vagon.FieldByName('node_end_road_name').Value := inf_obj_name;
          end;
        end else begin
          ClientDS_Vagon.FieldByName('node_end_cod' ).Value := null;
          ClientDS_Vagon.FieldByName('node_end_name').Value := null;
          ClientDS_Vagon.FieldByName('node_end_road_cod' ).Value := null;
          ClientDS_Vagon.FieldByName('node_end_road_name').Value := null;
        end;
      end;
      {$ENDREGION}

      {$REGION 'Поиск станции и дороги операции'}
      if not ClientDS_Vagon.FieldByName('node_operation_cod').IsNull then begin
        if StrToIntDef(ClientDS_Vagon.FieldByName('node_operation_cod').AsString,0) <> 0 then begin
          inf_obj_cod  := ClientDS_Vagon.FieldByName('node_operation_cod').AsString;
          inf_obj_name := '';
          if NodeSearchCod(connect, ClientDS_Node, 16, date_query, inf_obj_cod, inf_obj_name) then begin
            ClientDS_Vagon.FieldByName('node_operation_cod' ).Value := inf_obj_cod;
            ClientDS_Vagon.FieldByName('node_operation_name').Value := inf_obj_name;
          end;

          inf_obj_cod  := ClientDS_Vagon.FieldByName('node_operation_cod').AsString;
          inf_obj_name := '';
          if NodeSearchCod(connect, ClientDS_Node, 17, date_query, inf_obj_cod, inf_obj_name) then begin
            ClientDS_Vagon.FieldByName('road_operation_cod' ).Value := inf_obj_cod;
            ClientDS_Vagon.FieldByName('road_operation_name').Value := inf_obj_name;
          end;
        end else begin
          ClientDS_Vagon.FieldByName('node_operation_cod' ).Value := null;
          ClientDS_Vagon.FieldByName('node_operation_name').Value := null;
          ClientDS_Vagon.FieldByName('road_operation_cod' ).Value := null;
          ClientDS_Vagon.FieldByName('road_operation_name').Value := null;
        end;
      end;
      {$ENDREGION}

      {$REGION 'Поиск дороги сдачи'}
      if not ClientDS_Vagon.FieldByName('road_begin_cod').IsNull then begin
        inf_obj_cod  := ClientDS_Vagon.FieldByName('road_begin_cod').AsString;
        inf_obj_name := '';
        if RoadSearchCod(connect, ClientDS_Road, 13, date_query, inf_obj_cod, inf_obj_name) then begin
          ClientDS_Vagon.FieldByName('road_begin_cod' ).Value := inf_obj_cod;
          ClientDS_Vagon.FieldByName('road_begin_name').Value := inf_obj_name;
        end;
      end;
      {$ENDREGION}

      {$REGION 'Поиск дороги приема'}
      if not ClientDS_Vagon.FieldByName('road_end_cod').IsNull then begin
        inf_obj_cod  := ClientDS_Vagon.FieldByName('road_end_cod').AsString;
        inf_obj_name := '';
        if RoadSearchCod(connect, ClientDS_Road, 13, date_query, inf_obj_cod, inf_obj_name) then begin
          ClientDS_Vagon.FieldByName('road_end_cod' ).Value := inf_obj_cod;
          ClientDS_Vagon.FieldByName('road_end_name').Value := inf_obj_name;
        end;
      end;
      {$ENDREGION}

      {$REGION 'Поиск груза'}
      if not ClientDS_Vagon.FieldByName('kargoETSNG_cod').IsNull then begin
        inf_obj_cod  := ClientDS_Vagon.FieldByName('kargoETSNG_cod').AsString;
        inf_obj_name := '';
        if KargoSearchCod(connect, ClientDS_Kargo, 10, date_query, inf_obj_cod, inf_obj_name) then begin
          ClientDS_Vagon.FieldByName('kargoETSNG_cod' ).Value := inf_obj_cod;
          ClientDS_Vagon.FieldByName('kargoETSNG_name').Value := inf_obj_name;
        end;
      end;
      {$ENDREGION}

      ClientDS_Vagon.Post;
      ClientDS.Next;
       //if (ClientDS.RecNo mod 100) = 0 then  MonitorProgress(0, ClientDS.RecordCount,  'Вагонов', ClientDS.RecNo);
       ShowTextMessage('Поиск станций. Осталось ' + IntToStr(ClientDS.RecordCount - ClientDS.RecNo) + '.', False);
    end;

    ClientDS_Vagon.First;
    SP_fact_track_modify.Parameters.Refresh;
    while not ClientDS_Vagon.Eof do begin
      for i := 0 to SP_fact_track_modify.Parameters.Count - 1 do begin
        SP_fact_track_modify.Parameters.Items[i].Value := NULL;
      end;

      SP_fact_track_modify.Parameters.ParamByName('@fact_track_id'      ).Value := -9;
      SP_fact_track_modify.Parameters.ParamByName('@type_action'        ).Value := 0;
      SP_fact_track_modify.Parameters.ParamByName('@format_file'        ).Value := format_file;
      SP_fact_track_modify.Parameters.ParamByName('@num_vagon'          ).Value := ClientDS_Vagon.FieldByName('num_vagon').Value;
      SP_fact_track_modify.Parameters.ParamByName('@rod_vagon'          ).Value := ClientDS_Vagon.FieldByName('rod_vagon').Value;
      SP_fact_track_modify.Parameters.ParamByName('@type_vagon'         ).Value := ClientDS_Vagon.FieldByName('type_vagon').Value;
      SP_fact_track_modify.Parameters.ParamByName('@date_otpr'          ).Value := ClientDS_Vagon.FieldByName('date_otpr').Value;
      SP_fact_track_modify.Parameters.ParamByName('@state_self'         ).Value := ClientDS_Vagon.FieldByName('state_self').Value;
      SP_fact_track_modify.Parameters.ParamByName('@fact_weight'        ).Value := ClientDS_Vagon.FieldByName('fact_weight').Value;
      SP_fact_track_modify.Parameters.ParamByName('@node_end_cod'       ).Value := ClientDS_Vagon.FieldByName('node_end_cod').Value;
      SP_fact_track_modify.Parameters.ParamByName('@kargoETSNG_cod'     ).Value := ClientDS_Vagon.FieldByName('kargoETSNG_cod').Value;
      SP_fact_track_modify.Parameters.ParamByName('@poluchgr'           ).Value := ClientDS_Vagon.FieldByName('poluchgr').Value;
      SP_fact_track_modify.Parameters.ParamByName('@special_marks'      ).Value := ClientDS_Vagon.FieldByName('special_marks').Value;
      SP_fact_track_modify.Parameters.ParamByName('@comment'            ).Value := ClientDS_Vagon.FieldByName('comment').Value;
      SP_fact_track_modify.Parameters.ParamByName('@type_park_vagon'    ).Value := ClientDS_Vagon.FieldByName('type_park_vagon').Value;
      SP_fact_track_modify.Parameters.ParamByName('@node_begin_cod'     ).Value := ClientDS_Vagon.FieldByName('node_begin_cod').Value;
      SP_fact_track_modify.Parameters.ParamByName('@cod_operation_cod'  ).Value := ClientDS_Vagon.FieldByName('cod_operation_cod').Value;
      SP_fact_track_modify.Parameters.ParamByName('@date_operation'     ).Value := ClientDS_Vagon.FieldByName('date_operation').Value;
      SP_fact_track_modify.Parameters.ParamByName('@node_operation_cod' ).Value := ClientDS_Vagon.FieldByName('node_operation_cod').Value;
      SP_fact_track_modify.Parameters.ParamByName('@road_begin_cod'     ).Value := ClientDS_Vagon.FieldByName('road_begin_cod').Value;
      SP_fact_track_modify.Parameters.ParamByName('@road_end_cod'       ).Value := ClientDS_Vagon.FieldByName('road_end_cod').Value;
      SP_fact_track_modify.Parameters.ParamByName('@index_train'        ).Value := ClientDS_Vagon.FieldByName('index_train').Value;
      SP_fact_track_modify.Parameters.ParamByName('@num_train'          ).Value := ClientDS_Vagon.FieldByName('num_train').Value;
      SP_fact_track_modify.Parameters.ParamByName('@doc_number'         ).Value := ClientDS_Vagon.FieldByName('doc_number').Value;
      SP_fact_track_modify.Parameters.ParamByName('@vagon_id'           ).Value := ClientDS_Vagon.FieldByName('vagon_id').Value;
      SP_fact_track_modify.Parameters.ParamByName('@vagon_owner_name'   ).Value := ClientDS_Vagon.FieldByName('vagon_owner_name').Value;
      SP_fact_track_modify.Parameters.ParamByName('@file_load_name'     ).Value := ClientDS_Vagon.FieldByName('file_load_name').Value;
      SP_fact_track_modify.Parameters.ParamByName('@date_query'         ).Value := date_query;
      SP_fact_track_modify.Parameters.ParamByName('@node_begin_name'     ).Value := ClientDS_Vagon.FieldByName('node_begin_name').Value;
      SP_fact_track_modify.Parameters.ParamByName('@node_begin_road_cod' ).Value := ClientDS_Vagon.FieldByName('node_begin_road_cod').Value;
      SP_fact_track_modify.Parameters.ParamByName('@node_begin_road_name').Value := ClientDS_Vagon.FieldByName('node_begin_road_name').Value;
      SP_fact_track_modify.Parameters.ParamByName('@node_end_name'       ).Value := ClientDS_Vagon.FieldByName('node_end_name').Value;
      SP_fact_track_modify.Parameters.ParamByName('@node_end_road_cod'   ).Value := ClientDS_Vagon.FieldByName('node_end_road_cod').Value;
      SP_fact_track_modify.Parameters.ParamByName('@node_end_road_name'  ).Value := ClientDS_Vagon.FieldByName('node_end_road_name').Value;
      SP_fact_track_modify.Parameters.ParamByName('@node_operation_name' ).Value := ClientDS_Vagon.FieldByName('node_operation_name').Value;
      SP_fact_track_modify.Parameters.ParamByName('@road_operation_cod'  ).Value := ClientDS_Vagon.FieldByName('road_operation_cod').Value;
      SP_fact_track_modify.Parameters.ParamByName('@road_operation_name' ).Value := ClientDS_Vagon.FieldByName('road_operation_name').Value;
      SP_fact_track_modify.Parameters.ParamByName('@road_begin_name'     ).Value := ClientDS_Vagon.FieldByName('road_begin_name').Value;
      SP_fact_track_modify.Parameters.ParamByName('@road_end_name'       ).Value := ClientDS_Vagon.FieldByName('road_end_name').Value;
      SP_fact_track_modify.Parameters.ParamByName('@kargoETSNG_name'     ).Value := ClientDS_Vagon.FieldByName('kargoETSNG_name').Value;
      SP_fact_track_modify.Parameters.ParamByName('@users_id'            ).Value := usr_pwd.users_id;
      SP_fact_track_modify.Parameters.ParamByName('@files_id'            ).Value := null;

      SP_fact_track_modify.Parameters.ParamByName('@grpol_okpo'          ).Value := ClientDS_Vagon.FieldByName('grpol_okpo').Value;
      SP_fact_track_modify.Parameters.ParamByName('@grotpr_okpo'         ).Value := ClientDS_Vagon.FieldByName('grotpr_okpo').Value;
      SP_fact_track_modify.Parameters.ParamByName('@RW_grpol'            ).Value := ClientDS_Vagon.FieldByName('RW_grpol').Value;
      SP_fact_track_modify.Parameters.ParamByName('@RW_grotpr'           ).Value := ClientDS_Vagon.FieldByName('RW_grotpr').Value;
      SP_fact_track_modify.Parameters.ParamByName('@DateLoading'         ).Value := ClientDS_Vagon.FieldByName('DateLoading').Value;
      SP_fact_track_modify.Parameters.ParamByName('@RW_Rash'             ).Value := ClientDS_Vagon.FieldByName('RW_Rash').Value;
      SP_fact_track_modify.Parameters.ParamByName('@idReis'              ).Value := ClientDS_Vagon.FieldByName('idReis').Value;
      SP_fact_track_modify.Parameters.ParamByName('@DatePrib'            ).Value := ClientDS_Vagon.FieldByName('DatePrib').Value;
      SP_fact_track_modify.Parameters.ParamByName('@DateVygr'            ).Value := ClientDS_Vagon.FieldByName('DateVygr').Value;


      SP_fact_track_modify.ExecProc;

      ClientDS_Vagon.Next;
      ShowTextMessage('Сохранение вагонов. Осталось ' + IntToStr(ClientDS_Vagon.RecordCount - ClientDS_Vagon.RecNo) + '.', False);


    end;
  except
    on E: Exception do begin
      Application.MessageBox(PChar(E.Message), 'Ошибка', MB_OK);
    end;
  end;

  ShowTextMessage();
  SP_fact_track_modify.Free;
  ClientDS.Free;
  ClientDS_Node.Free;
  ClientDS_Vagon.Free;
  ClientDS_Road.Free;
  ClientDS_Kargo.Free;
end;

procedure TfmFactTrack.dxBarButton59Click(Sender: TObject);
var             Query : TADOQuery;
   SP_fact_track_stat : TADOStoredProc;
begin
  if Application.MessageBox(PChar('Будет обновлена последняя загрузка данных дислокации.' +#13#10 + 'Выполнение процедуры займет 5-7 мин.' +
                                   #13#10 + 'Вы уверены?'), 'Внимание', MB_ICONINFORMATION or MB_OKCANCEL) = mrOk then begin

    sp_fact_track_STAT := TADOStoredProc.Create(nil);
    sp_fact_track_STAT.Connection := fmMain.Lis;
    sp_fact_track_STAT.CommandTimeout := 600;
    sp_fact_track_STAT.ProcedureName := 'sp_fact_track_STAT';
    sp_fact_track_STAT.Parameters.Refresh;
    sp_fact_track_STAT.ExecProc;
    sp_fact_track_STAT.Free;

    Action_RefreshExecute(nil);
    Application.MessageBox('Выполнение процедуры завершено.','Внимание', MB_ICONINFORMATION or MB_OK);
  end;

end;

procedure TfmFactTrack.dxBarButton61Click(Sender: TObject);
var exWks, exApp       : Variant;
    i, row_0, distance : integer;
    show_distance      : boolean;
    ClientDS_distance, ClientDS  : TClientDataSet;
    d                  : TDateTime;
    node_begin_name,  node_begin_cod  :string;
    node_begin_name2, node_begin_cod2 :string;
    node_begin_name3, node_begin_cod3 :string;
begin

  node_begin_name  := '';
  node_begin_cod   := '';
  node_begin_name2 := '';
  node_begin_cod2  := '';
  node_begin_name3 := '';
  node_begin_cod3  := '';

  if FindInInfObjNode(ClientDataSet1,'NODE_BEGIN' ,True, True, NOW , fmMain.Lis) then begin
   node_begin_name := ClientDataSet1.FieldByName('node_begin_name').AsString;
   node_begin_cod := ClientDataSet1.FieldByName('node_begin_cod').AsString;
  end else exit;

  if Application.MessageBox('Выбарть станцию № 2?','Внимание', MB_YESNO) = ID_YES then begin
    if FindInInfObjNode(ClientDataSet1,'NODE_BEGIN' ,True, True, NOW , fmMain.Lis) then begin
     node_begin_name2 := ClientDataSet1.FieldByName('node_begin_name').AsString;
     node_begin_cod2 := ClientDataSet1.FieldByName('node_begin_cod').AsString;
    end else exit;
  end;

  if Application.MessageBox('Выбарть станцию № 3?','Внимание', MB_YESNO) = ID_YES then begin
    if FindInInfObjNode(ClientDataSet1,'NODE_BEGIN' ,True, True, NOW , fmMain.Lis) then begin
     node_begin_name3 := ClientDataSet1.FieldByName('node_begin_name').AsString;
     node_begin_cod3 := ClientDataSet1.FieldByName('node_begin_cod').AsString;
    end else exit;
  end;

  Screen.Cursor := crHourglass;
  fmMain.dxStatusBar1.Panels[3].Text := '';
  d := NOW;

  show_distance := True;
  ShowTextMessage('Запуск Excel...', False);
  exApp := CreateOleObject('Excel.Application');
  exApp.Workbooks.Add(GetDocBlob(fmMain.Lis, 382)); // Прогноз прибытия
  exWks := exApp.ActiveWorkbook.WorkSheets[1];

  row_0 := 4;

  ShowTextMessage('Вывод в Excel...', False);
  for i:=0 to cxGrid1DBBandedTableView1.Controller.SelectedRecordCount - 1 do begin
    exWks.Range['A' + IntToStr(row_0)].Value := cxGrid1DBBandedTableView1.Controller.SelectedRows[i].Values[cxGrid1DBBandedTableView1num_vagon.Index];
    exWks.Range['B' + IntToStr(row_0)].Value := VarToStr(cxGrid1DBBandedTableView1.Controller.SelectedRows[i].Values[cxGrid1DBBandedTableView1node_end_name.Index]);

    exWks.Range['C' + IntToStr(row_0)].Value := DateOf(cxGrid1DBBandedTableView1.Controller.SelectedRows[i].Values[cxGrid1DBBandedTableView1date_operation.Index]);
    exWks.Range['D' + IntToStr(row_0)].Value := VarToStr(cxGrid1DBBandedTableView1.Controller.SelectedRows[i].Values[cxGrid1DBBandedTableView1time_operation.Index]);
    if VarToStr(cxGrid1DBBandedTableView1.Controller.SelectedRows[i].Values[cxGrid1DBBandedTableView1node_operation_name.Index]) = '' then
      exWks.Range['E' + IntToStr(row_0)].Value := VarToStr(cxGrid1DBBandedTableView1.Controller.SelectedRows[i].Values[cxGrid1DBBandedTableView1node_operation_cod.Index])
    else exWks.Range['E' + IntToStr(row_0)].Value := VarToStr(cxGrid1DBBandedTableView1.Controller.SelectedRows[i].Values[cxGrid1DBBandedTableView1node_operation_name.Index]);
    exWks.Range['F' + IntToStr(row_0)].Value := VarToStr(cxGrid1DBBandedTableView1.Controller.SelectedRows[i].Values[cxGrid1DBBandedTableView1road_begin_name.Index]);
//    exWks.Range['G' + IntToStr(row_0)].Value := VarToStr(cxGrid1DBBandedTableView1.Controller.SelectedRows[i].Values[cxGrid1DBBandedTableView1road_end_name.Index]);
    exWks.Range['H' + IntToStr(row_0)].Value := VarToStr(cxGrid1DBBandedTableView1.Controller.SelectedRows[i].Values[cxGrid1DBBandedTableView1index_train.Index]);
    exWks.Range['I' + IntToStr(row_0)].Value := VarToStr(cxGrid1DBBandedTableView1.Controller.SelectedRows[i].Values[cxGrid1DBBandedTableView1num_train.Index]);
    exWks.Range['J' + IntToStr(row_0)].Value := VarToStr(cxGrid1DBBandedTableView1.Controller.SelectedRows[i].Values[cxGrid1DBBandedTableView1kargoETSNG_name.Index]);
    if not VarIsNull(cxGrid1DBBandedTableView1.Controller.SelectedRows[i].Values[cxGrid1DBBandedTableView1fact_weight.Index]) then
     exWks.Range['K' + IntToStr(row_0)].Value := double(cxGrid1DBBandedTableView1.Controller.SelectedRows[i].Values[cxGrid1DBBandedTableView1fact_weight.Index]);

//    exWks.Range['L' + IntToStr(row_0)].Value := VarToStr(cxGrid1DBBandedTableView1.Controller.SelectedRows[i].Values[cxGrid1DBBandedTableView1poluchgr.Index]);
    exWks.Range['M' + IntToStr(row_0)].Value := VarToStr(cxGrid1DBBandedTableView1.Controller.SelectedRows[i].Values[cxGrid1DBBandedTableView1node_begin_name.Index]);
    if not VarIsNull(cxGrid1DBBandedTableView1.Controller.SelectedRows[i].Values[cxGrid1DBBandedTableView1date_otpr.Index]) then  begin
      exWks.Range['N' + IntToStr(row_0)].Value := DateOf(cxGrid1DBBandedTableView1.Controller.SelectedRows[i].Values[cxGrid1DBBandedTableView1date_otpr.Index]);
      exWks.Range['O' + IntToStr(row_0)].Value := VarToStr(cxGrid1DBBandedTableView1.Controller.SelectedRows[i].Values[cxGrid1DBBandedTableView1time_otpr.Index]);
    end;

    exWks.Range['P' + IntToStr(row_0)].Value := VarToStr(cxGrid1DBBandedTableView1.Controller.SelectedRows[i].Values[cxGrid1DBBandedTableView1doc_number.Index]);

    exWks.Range['Q'+IntToStr(row_0)].Value := 0;
    exWks.Range['R'+IntToStr(row_0)].Value := 0;

    //тарифное растояние
    exWks.Range['Q'+IntToStr(row_0)].Value := GetCalcDistanceDB(VarToStr(cxGrid1DBBandedTableView1.Controller.SelectedRows[i].Values[cxGrid1DBBandedTableView1node_begin_cod.Index]), VarToStr(cxGrid1DBBandedTableView1.Controller.SelectedRows[i].Values[cxGrid1DBBandedTableView1node_end_cod.Index]), fmMain.Lis, False, Date);

    //пройденное растояние
//    if not VarIsNull(cxGrid1DBBandedTableView1.Controller.SelectedRows[i].Values[cxGrid1DBBandedTableView1distance1.Index]) then
//     exWks.Range['R'+IntToStr(row_0)].Value := double(cxGrid1DBBandedTableView1.Controller.SelectedRows[i].Values[cxGrid1DBBandedTableView1distance1.Index])
//    else
//     exWks.Range['R'+IntToStr(row_0)].Value := GetCalcDistanceDB(VarToStr(cxGrid1DBBandedTableView1.Controller.SelectedRows[i].Values[cxGrid1DBBandedTableView1node_begin_cod.Index]), VarToStr(cxGrid1DBBandedTableView1.Controller.SelectedRows[i].Values[cxGrid1DBBandedTableView1node_operation_cod.Index]), fmMain.Lis, False, Date);

    //оставшееся растояние
//    if not VarIsNull(cxGrid1DBBandedTableView1.Controller.SelectedRows[i].Values[cxGrid1DBBandedTableView1distance2.Index]) then
//     exWks.Range['S'+IntToStr(row_0)].Value := double(cxGrid1DBBandedTableView1.Controller.SelectedRows[i].Values[cxGrid1DBBandedTableView1distance2.Index])
//    else
//     exWks.Range['S'+IntToStr(row_0)].Value := GetCalcDistanceDB(VarToStr(cxGrid1DBBandedTableView1.Controller.SelectedRows[i].Values[cxGrid1DBBandedTableView1node_operation_cod.Index]), VarToStr(cxGrid1DBBandedTableView1.Controller.SelectedRows[i].Values[cxGrid1DBBandedTableView1node_end_cod.Index]), fmMain.Lis, False, Date);

//    exWks.Range['T' + IntToStr(row_0)].Value := VarToStr(cxGrid1DBBandedTableView1.Controller.SelectedRows[i].Values[cxGrid1DBBandedTableView1cod_operation_vagon_cod.Index]);
//    exWks.Range['U' + IntToStr(row_0)].Value := VarToStr(cxGrid1DBBandedTableView1.Controller.SelectedRows[i].Values[cxGrid1DBBandedTableView1cod_operation_vagon_name_full.Index]);

//    exWks.Range['W' + IntToStr(row_0)].Value := VarToStr(cxGrid1DBBandedTableView1.Controller.SelectedRows[i].Values[cxGrid1DBBandedTableView1type_park_name.Index]);

    exWks.Range['X' + IntToStr(row_0)].Value := node_begin_name;
    exWks.Range['Y' + IntToStr(row_0)].Value := GetCalcDistanceDB(VarToStr(cxGrid1DBBandedTableView1.Controller.SelectedRows[i].Values[cxGrid1DBBandedTableView1node_end_cod.Index]), node_begin_cod, fmMain.Lis, False, Date);
    if node_begin_cod2 <> '' then begin
     exWks.Range['AB' + IntToStr(row_0)].Value := node_begin_name2;
     exWks.Range['AC' + IntToStr(row_0)].Value := GetCalcDistanceDB(VarToStr(cxGrid1DBBandedTableView1.Controller.SelectedRows[i].Values[cxGrid1DBBandedTableView1node_end_cod.Index]), node_begin_cod2, fmMain.Lis, False, Date);
    end;

    if node_begin_cod3 <> '' then begin
     exWks.Range['AF' + IntToStr(row_0)].Value := node_begin_name3;
     exWks.Range['AG' + IntToStr(row_0)].Value := GetCalcDistanceDB(VarToStr(cxGrid1DBBandedTableView1.Controller.SelectedRows[i].Values[cxGrid1DBBandedTableView1node_end_cod.Index]), node_begin_cod3, fmMain.Lis, False, Date);
    end;

    row_0 := row_0  + 1;
    ShowTextMessage('Осталось ' + IntToStr(cxGrid1DBBandedTableView1.Controller.SelectedRecordCount - i) + ' вагонов...', False);
  end;

  exWks.Range['A2'].Value := 'Количество вагонов/контейнеров: ' + IntToStr(cxGrid1DBBandedTableView1.Controller.SelectedRecordCount);
  exWks.Range['A4:AI' + IntToStr(row_0-1)].Borders[1].LineStyle := 1;
  exWks.Range['A4:AI' + IntToStr(row_0-1)].Borders[2].LineStyle := 1;
  exWks.Range['A4:AI' + IntToStr(row_0-1)].Borders[9].LineStyle := 1;

  exWks.PageSetup.PrintArea := exWks.Range['A1:AH'+IntToStr(row_0)].Address;
  exApp.Range['A1'].Select;
  exApp.Visible := True;

  exApp := Null;
  exWks := Null;

  ShowTextMessage('', True);
  fmMain.dxStatusBar1.Panels[3].Text := IntToStr(SecondsBetween(now, d)) + ' сек.';
  Screen.Cursor := crDefault;
end;


procedure TfmFactTrack.dxBarButton63Click(Sender: TObject);
var
    i, row_0, distance : integer;
    ClientDS  : TClientDataSet;
begin
  Screen.Cursor := crHourglass;


  if Application.MessageBox('Расчитать не расчитанные растояния?','Внимание', MB_YESNO) = ID_YES then begin
    ClientDS := TClientDataSet.Create(nil);
    ClientDS.FieldDefs.Add('node_begin_cod',  ftString, 50); // станция отправления
    ClientDS.FieldDefs.Add('node_end_cod',    ftString, 50); // станция назначения
    ClientDS.FieldDefs.Add('node_add_cod',    ftString, 50); // станция дислокации (необязательно)
    ClientDS.FieldDefs.Add('land_id',         ftInteger  ); // Расчет расстояния по стране (-9: полное расстояние по всем странам)

    ClientDS.FieldDefs.Add('Distance',        ftInteger  ); // Расстояние (возвращаемый параметр)
    ClientDS.IndexFieldNames := 'node_begin_cod;node_end_cod';

    ClientDS.CreateDataSet;
    ClientDS.LogChanges := False;
    ClientDS.DisableControls;
    cxGrid1DBBandedTableView1.DataController.BeginFullUpdate;
    sp_fact_track_stat_get.First;
    While not sp_fact_track_stat_get.EOF do begin
       if sp_fact_track_stat_get.FieldByName('distance1').Value = -9 then begin
           if (sp_fact_track_stat_get.FieldByName('node_begin_cod').AsString <> '')
            and (sp_fact_track_stat_get.FieldByName('node_operation_cod').AsString <> '')  then begin
              if not ClientDS.Locate('node_begin_cod;node_end_cod', VarArrayOf([sp_fact_track_stat_get.FieldByName('node_begin_cod').AsString, sp_fact_track_stat_get.FieldByName('node_operation_cod').AsString]), []) then begin
                 ClientDS.Append;
                 ClientDS.FieldByName('node_begin_cod').AsString := sp_fact_track_stat_get.FieldByName('node_begin_cod').AsString;
                 ClientDS.FieldByName('node_end_cod').AsString   := sp_fact_track_stat_get.FieldByName('node_operation_cod').AsString;
                 ClientDS.FieldByName('land_id').AsInteger := -9;
                 ClientDS.Post;
                 ShowTextMessage('Поиск нерасчитанных. Найдено ' + IntToStr(ClientDS.RecordCount) + ' нерасчитанных из ' + IntToStr(sp_fact_track_stat_get.RecordCount*2) , False);
              end;
           end;
       end;

       if sp_fact_track_stat_get.FieldByName('distance2').Value = -9 then begin
         if (sp_fact_track_stat_get.FieldByName('node_operation_cod').AsString <> '')
          and (sp_fact_track_stat_get.FieldByName('node_end_cod').AsString <> '')  then begin
            if not ClientDS.Locate('node_begin_cod;node_end_cod', VarArrayOf([sp_fact_track_stat_get.FieldByName('node_operation_cod').AsString, sp_fact_track_stat_get.FieldByName('node_end_cod').AsString]), []) then begin
               ClientDS.Append;
               ClientDS.FieldByName('node_begin_cod').AsString := sp_fact_track_stat_get.FieldByName('node_operation_cod').AsString;
               ClientDS.FieldByName('node_end_cod').AsString   := sp_fact_track_stat_get.FieldByName('node_end_cod').AsString;
               ClientDS.FieldByName('land_id').AsInteger := -9;
               ClientDS.Post;
               ShowTextMessage('Поиск нерасчитанных. Найдено ' + IntToStr(ClientDS.RecordCount) + ' нерасчитанных из ' + IntToStr(sp_fact_track_stat_get.RecordCount*2) , False);
            end;
         end;
       end;
       sp_fact_track_stat_get.Next;
    end;
    cxGrid1DBBandedTableView1.DataController.EndFullUpdate;

    ClientDS.First;
    while not ClientDS.EOF do begin
     distance := GetCalcDistanceDB(ClientDS.FieldByName('node_begin_cod').AsString,ClientDS.FieldByName('node_end_cod').AsString, fmMain.Lis, False, Date);
     ShowTextMessage('Расчет расстояний. Осталось ' + IntToStr(ClientDS.RecordCount - ClientDS.RecNo) + ' вагонов...', False);
     ClientDS.Next;
    end;

    ShowTextMessage();
    if Application.MessageBox(PChar('Обновить информацию?'), 'Вниамние!', MB_YESNO + MB_DEFBUTTON2) = IDYES then
     RefreshQueryGrid(cxGrid1DBBandedTableView1, 'fact_track_id', cxGrid1DBBandedTableView1fact_track_id.DataBinding.Field.AsInteger);
  end;

  Screen.Cursor := crDefault;
end;

procedure TfmFactTrack.dxBarButton64Click(Sender: TObject);
var str_num_vagon : string;
    i : integer;
    clboard : TClipboard;
begin
  str_num_vagon := '';

  for i := 0 to cxGrid1DBBandedTableView1.Controller.SelectedRecordCount - 1 do begin
    str_num_vagon := str_num_vagon + VarToStr(cxGrid1DBBandedTableView1.Controller.SelectedRecords[i].Values[cxGrid1DBBandedTableView1num_vagon.Index]);
    str_num_vagon := str_num_vagon + #13#10;
  end;

  clboard := TClipboard.Create;
  clboard.AsText := str_num_vagon;
  clboard.Free;

end;

procedure TfmFactTrack.dxBarButton65Click(Sender: TObject);
type
  TFunc = function(AppHand: THandle; users_group_cod: string; usr_pwd: PUser_pwd; FIO_users: string; etran_ecp_id: integer; ClientDS_param: TClientDataSet): variant;
var
           FEtran : TFunc;
           handle : THandle;
                v : variant;
            Query : TADOQuery;
  users_group_cod : string;
        FIO_users : string;
         ClientDS : TClientDataSet;
                i : integer;
begin
  Query := TADOQuery.Create(nil);
  Query.Connection := fmMain.Lis;

  ClientDS := TClientDataSet.Create(nil);
  ClientDS.FieldDefs.Add('num_vagon',      ftInteger);
  ClientDS.FieldDefs.Add('node_end_cod',   ftString, 50);
  ClientDS.FieldDefs.Add('kargoETSNG_cod', ftString, 50);
  ClientDS.FieldDefs.Add('index_train',    ftString, 50);
  ClientDS.FieldDefs.Add('fact_track_trip_id', ftInteger);
  ClientDS.CreateDataSet;
  ClientDS.LogChanges := False;

  for i:=0 to cxGridDBBandedTableView1.Controller.SelectedRecordCount - 1 do begin



    if cxGridDBBandedTableView1.Controller.SelectedRows[i].Values[cxGridDBBandedTableView1etran_ecp_id.Index] = null then begin


      Query.SQL.Clear;
      Query.SQL.Add('SELECT	top 1 *');
      Query.SQL.Add('FROM	fact_track_trip');
      Query.SQL.Add('WHERE	num_vagon =' + IntToStr(cxGridDBBandedTableView1.Controller.SelectedRows[i].Values[cxGridDBBandedTableView1num_vagon.Index]));
//      Query.SQL.Add('		and users_group_id =' + IntToStr(usr_pwd.user_group_id));
      Query.SQL.Add('		and isnull(fact_weight,0) > 0');
      Query.SQL.Add('		and kargoETSNG_cod is not null');
      Query.SQL.Add('ORDER BY date_otpr DESC');
      Query.Open;

      ClientDS.Append;
      ClientDS.FieldByName('fact_track_trip_id').Value := cxGridDBBandedTableView1.Controller.SelectedRows[i].Values[cxGridDBBandedTableView1fact_track_trip_id.Index];
      ClientDS.FieldByName('num_vagon'         ).Value := cxGridDBBandedTableView1.Controller.SelectedRows[i].Values[cxGridDBBandedTableView1num_vagon.Index];
      ClientDS.FieldByName('node_end_cod'      ).Value := cxGridDBBandedTableView1.Controller.SelectedRows[i].Values[cxGridDBBandedTableView1node_end_cod.Index];
      ClientDS.FieldByName('index_train'       ).Value := null;
      if Query.RecordCount > 0 then ClientDS.FieldByName('kargoETSNG_cod').Value := Query.FieldByName('kargoETSNG_cod').AsString;
      ClientDS.Post;
    end else begin
      Application.MessageBox(PChar('Заготовка на вагон №' + VarToStr(cxGridDBBandedTableView1.Controller.SelectedRows[i].Values[cxGridDBBandedTableView1num_vagon.Index]) + ' уже создана!'), 'Внимание', MB_ICONWARNING or MB_OK);
    end;
  end;

  Screen.Cursor := crHourglass;


  Query.SQL.Clear;
  Query.SQL.Add('SELECT	inf_obj_cod as users_group_cod, FIO_users');
  Query.SQL.Add('FROM	  users INNER JOIN inf_obj on users.users_group_id = inf_obj.inf_obj_id');
  Query.SQL.Add('WHERE	users_name = system_user');
  Query.Open;
  users_group_cod := Query.FieldByName('users_group_cod').AsString;
  FIO_users       := Query.FieldByName('FIO_users').AsString;
  Query.Free;

  Screen.Cursor := crdefault;

  handle := LoadLibrary('etranECP.dll');
  @FEtran := GetProcAddress(handle, 'CreateWndEtranECPInvoiceToViza');
  v := FEtran(Application.Handle, users_group_cod, usr_pwd, FIO_users, -9, ClientDS);
  FreeLibrary(handle);

  if v[0] <> -9 then
    RefreshQueryGrid(cxGridDBBandedTableView1, 'fact_track_trip_id');

  ClientDS.Free;
end;


procedure TfmFactTrack.dxBarButton66Click(Sender: TObject);
type
  TFunc = function(AppHand: THandle; users_group_cod: string; usr_pwd: PUser_pwd; FIO_users: string; etran_ecp_id: integer; ClientDS_param: TClientDataSet): variant;
var
           FEtran : TFunc;
           handle : THandle;
                v : variant;
            Query : TADOQuery;
  users_group_cod : string;
        FIO_users : string;
         ClientDS : TClientDataSet;
                i : integer;
begin
  if cxGridDBBandedTableView1etran_ecp_id.DataBinding.Field.IsNull then begin
    Application.MessageBox(PChar('Заготовка не найдена!'), 'ОШИБКА', MB_ICONSTOP or MB_OK);
    Exit;
  end;

  Screen.Cursor := crHourglass;

  Query := TADOQuery.Create(nil);
  Query.Connection := fmMain.Lis;
  Query.SQL.Add('SELECT	inf_obj_cod as users_group_cod, FIO_users');
  Query.SQL.Add('FROM	  users INNER JOIN inf_obj on users.users_group_id = inf_obj.inf_obj_id');
  Query.SQL.Add('WHERE	users_name = system_user');
  Query.Open;
  users_group_cod := Query.FieldByName('users_group_cod').AsString;
  FIO_users       := Query.FieldByName('FIO_users').AsString;
  Query.Free;

  Screen.Cursor := crdefault;

  handle := LoadLibrary('etranECP.dll');
  @FEtran := GetProcAddress(handle, 'CreateWndEtranECPInvoiceToViza');
  v := FEtran(Application.Handle, users_group_cod, usr_pwd, FIO_users, cxGridDBBandedTableView1etran_ecp_id.DataBinding.Field.AsInteger, nil);
  FreeLibrary(handle);

  if v[0] <> -9 then
    RefreshQueryGrid(cxGridDBBandedTableView1, 'fact_track_trip_id');
end;

procedure TfmFactTrack.dxBarButton67Click(Sender: TObject);
type
  TFunc = function(users_group_cod: string; usr_pwd: PUser_pwd; etran_ecp_id: integer): variant;
var
           FEtran : TFunc;
           handle : THandle;
                v : variant;
            Query : TADOQuery;
  users_group_cod : string;
        FIO_users : string;
         ClientDS : TClientDataSet;
                i : integer;
begin
  if cxGridDBBandedTableView1etran_ecp_id.DataBinding.Field.IsNull then begin
    Application.MessageBox(PChar('Заготовка не найдена!'), 'ОШИБКА', MB_ICONSTOP or MB_OK);
    Exit;
  end;

  Screen.Cursor := crHourglass;

  Query := TADOQuery.Create(nil);
  Query.Connection := fmMain.Lis;
  Query.SQL.Add('SELECT	inf_obj_cod as users_group_cod, FIO_users');
  Query.SQL.Add('FROM	  users INNER JOIN inf_obj on users.users_group_id = inf_obj.inf_obj_id');
  Query.SQL.Add('WHERE	users_name = system_user');
  Query.Open;
  users_group_cod := Query.FieldByName('users_group_cod').AsString;
  FIO_users       := Query.FieldByName('FIO_users').AsString;
  Query.Free;

  Screen.Cursor := crdefault;

  handle := LoadLibrary('etranECP.dll');
  @FEtran := GetProcAddress(handle, 'CreateWndEtranECPInvoiceDelete');
  v := FEtran(users_group_cod, usr_pwd, cxGridDBBandedTableView1etran_ecp_id.DataBinding.Field.AsInteger);
  FreeLibrary(handle);

  RefreshQueryGrid(cxGridDBBandedTableView1, 'fact_track_trip_id');
end;

procedure TfmFactTrack.dxBarButton68Click(Sender: TObject);
begin
  fmPeriod := TfmPeriod.Create(Application, Fdate_trip1, Fdate_trip2, 1);
  if fmPeriod.ShowModal=mrOK then begin
    Fdate_trip1 := fmPeriod._GetDateBegin;
    Fdate_trip2 := fmPeriod._GetDateEnd;
    dxBarSubItem10.Caption := FormatDateTime('dd.mm.yy', Fdate_trip1) + ' - ' + FormatDateTime('dd.mm.yy', Fdate_trip2);

    Screen.Cursor := crHourGlass;
    Query_HistoryTrip.Close;
    Query_HistoryTrip.Parameters.ParamByName('date_begin1'    ).Value := Fdate_trip1;
    Query_HistoryTrip.Parameters.ParamByName('date_end1'      ).Value := Fdate_trip2;
    Query_HistoryTrip.Parameters.ParamByName('date_begin2'    ).Value := Fdate_trip1;
    Query_HistoryTrip.Parameters.ParamByName('date_end2'      ).Value := Fdate_trip2;
    Query_HistoryTrip.Open;
    Screen.Cursor := crDefault;
  end;
end;

procedure TfmFactTrack.dxBarButton69Click(Sender: TObject);
type
  TFunc = function(AHandle: THandle; users_group_cod: string; usr_pwd: PUser_pwd; FIO_users: string; etran_ecp_id: integer) : variant;
var
           FEtran : TFunc;
           handle : THandle;
                v : variant;
            Query : TADOQuery;
  users_group_cod : string;
        FIO_users : string;
begin
  Screen.Cursor := crHourglass;

  Query := TADOQuery.Create(nil);
  Query.Connection := fmMain.Lis;
  Query.SQL.Add('SELECT	inf_obj_cod as users_group_cod, FIO_users');
  Query.SQL.Add('FROM	  users INNER JOIN inf_obj on users.users_group_id = inf_obj.inf_obj_id');
  Query.SQL.Add('WHERE	users_name = system_user');
  Query.Open;
  users_group_cod := Query.FieldByName('users_group_cod').AsString;
  FIO_users       := Query.FieldByName('FIO_users').AsString;
  Query.Free;

  Screen.Cursor := crdefault;

  handle := LoadLibrary('etranECP.dll');
  @FEtran := GetProcAddress(handle, 'CreateWndEtranECP');
  v := FEtran(Application.Handle, users_group_cod, usr_pwd, FIO_users, cxGridDBBandedTableView1etran_ecp_id.DataBinding.Field.AsInteger);
  FreeLibrary(handle);
end;

procedure TfmFactTrack.dxBarButton21Click(Sender: TObject);
var Q :TADOQuery;
    i :integer;
begin
  // Заглушка - данный пунт меню не работает для рейсов
  if cxPageControl1.ActivePageIndex <> 0 then exit;

  Screen.Cursor := crHourglass;
  Q := TADOQuery.Create(nil);
  Q.Connection := fmMain.Lis;
  Q.SQL.Text :=  'SELECT p.num_vagon, p.milage_passed, p.milage_rest ' +
            'FROM fact_milage p WITH (NOLOCK)  '+
            'JOIN (SELECT num_vagon,max(file_load_date)as last_load  FROM fact_milage WITH (NOLOCK) WHERE (users_group_id =:users_group_id) GROUP BY num_vagon) last '+
            'ON (last.last_load = p.file_load_date) AND (last.num_vagon = p.num_vagon) ';
  Q.Parameters.ParamByName('users_group_id').Value := usr_pwd.user_group_id;
  Q.CacheSize := 10000;
  Q.CursorLocation := clUseClient;
  Q.AutoCalcFields := False;
  Q.Open;

  cxGrid1DBBandedTableView1.DataController.BeginFullUpdate;
  for i := 0 to cxGrid1DBBandedTableView1.Controller.SelectedRecordCount - 1 do begin
   //Показываем пробег, только для вагонов на пробеге.
   if cxGrid1DBBandedTableView1.Controller.SelectedRows[i].Values[cxGrid1DBBandedTableView1set_on_run.Index] then begin
     if Q.Locate('num_vagon',cxGrid1DBBandedTableView1.Controller.SelectedRows[i].Values[cxGrid1DBBandedTableView1num_vagon.Index],[loPartialKey]) then begin
//       cxGrid1DBBandedTableView1.Controller.SelectedRows[i].Values[cxGrid1DBBandedTableView1milage_passed.Index] := Q.FieldByName('milage_passed').Value;
//       cxGrid1DBBandedTableView1.Controller.SelectedRows[i].Values[cxGrid1DBBandedTableView1milage_rest.Index] := Q.FieldByName('milage_rest').Value;
     end;
   end;
    ShowTextMessage('Осталось '+IntToStr(cxGrid1DBBandedTableView1.Controller.SelectedRecordCount - i)+' записей...', False);
  end;
  cxGrid1DBBandedTableView1.DataController.EndFullUpdate;

  ShowTextMessage('', True);
  Screen.Cursor := crDefault;
end;

procedure TfmFactTrack.dxBarButton23Click(Sender: TObject);
var Q :TADOQuery;
    i :integer;
    str_num_vagon : string;
begin
  // Заглушка - данный пунт меню не работает для рейсов
  if cxPageControl1.ActivePageIndex <> 0 then exit;

  str_num_vagon := cx_GetSelectedValues(cxGrid1,'num_vagon');

  Q := TADOQuery.Create(nil);
  Q.Connection := fmMain.Lis;
  Q.SQL.Text :=  'SELECT p.num_vagon, p.date_registration, p.quality_mark_name, p.exception_reason_name ' +
            'FROM view_fact_param p ' +
            'JOIN (SELECT num_vagon,max(file_load_date)as last_load  FROM FACT_PARAM GROUP BY num_vagon) last ' +
            'ON (last.last_load = p.file_load_date) AND (last.num_vagon = p.num_vagon) ' +
            'AND (users_group_id =:users_group_id) AND p.num_vagon in ('+ str_num_vagon +')';

  Q.Parameters.ParamByName('users_group_id').Value := usr_pwd.user_group_id;
  Q.CacheSize := 10000;
  Q.CursorLocation := clUseClient;
  Q.AutoCalcFields := False;
  Q.Open;

  cxGrid1DBBandedTableView1.DataController.BeginFullUpdate;
  for i := 0 to cxGrid1DBBandedTableView1.Controller.SelectedRecordCount - 1 do begin
    if Q.Locate('num_vagon',cxGrid1DBBandedTableView1.Controller.SelectedRows[i].Values[cxGrid1DBBandedTableView1num_vagon.Index],[loPartialKey]) then begin
//      cxGrid1DBBandedTableView1.Controller.SelectedRows[i].Values[cxGrid1DBBandedTableView1quality_mark_name.Index]     := Q.FieldByName('quality_mark_name').Value;
//      cxGrid1DBBandedTableView1.Controller.SelectedRows[i].Values[cxGrid1DBBandedTableView1exception_reason_name.Index] := Q.FieldByName('exception_reason_name').Value;
//      cxGrid1DBBandedTableView1.Controller.SelectedRows[i].Values[cxGrid1DBBandedTableView1date_registration.Index]     := Q.FieldByName('date_registration').Value;
    end;
    ShowTextMessage('Осталось '+IntToStr(cxGrid1DBBandedTableView1.Controller.SelectedRecordCount - i)+' записей...', False);
  end;
  cxGrid1DBBandedTableView1.DataController.EndFullUpdate;

  ShowTextMessage('', True);
end;

procedure TfmFactTrack.dxBarButton25Click(Sender: TObject);
var i : integer;
   SP : TADOStoredProc;
   str_msg : string;
   str_vagon_id : string;
begin
  str_msg := 'Снять со Слежения выбранные вагоны?';

  if Application.MessageBox(pwidechar(str_msg), 'Внимание', MB_OKCANCEL) = ID_OK then begin
    Screen.Cursor := crHourglass;

    str_vagon_id := '';
    for i := 0 to cxGrid1DBBandedTableView1.Controller.SelectedRowCount - 1 do begin
      if i > 0 then str_vagon_id := str_vagon_id + ',';
      str_vagon_id := str_vagon_id + VarToStr(cxGrid1DBBandedTableView1.Controller.SelectedRows[i].Values[cxGrid1DBBandedTableView1vagon_id.Index]);
    end;

    if str_vagon_id = '' then begin
      Application.MessageBox(PChar('Действие со Слежением невозможно.' + #10 + 'Вагон отсутствует в справочнике!'), 'Вниамние!', MB_ICONERROR + MB_OK);
      Exit;
    end;

    SP := TADOStoredProc.Create(nil);
    SP.Connection := fmMain.Lis;
    SP.ProcedureName := 'sp_vagon_owner_modify';
    SP.CommandTimeout := 300;
    SP.Parameters.Refresh;
    SP.Close;
    SP.Parameters.Refresh;
    SP.Parameters.ParamByName('@type_action').Value  := 6; // Групповое закрытие текущего владельца (вагона)
    SP.Parameters.ParamByName('@date_end').Value     := Date;
    SP.Parameters.ParamByName('@str_vagon_id').Value := str_vagon_id;
    try
      SP.ExecProc;
      Application.MessageBox('Вагоны сняты со Слежения', 'Внимание' , MB_OK + MB_ICONINFORMATION);
    except on E: Exception do
      Application.MessageBox(PChar(E.Message),'ВНИМАНИЕ!!!' , MB_OK + MB_ICONERROR);
    end;

    SP.Free;
//    RefreshQueryGrid(cxGrid1DBBandedTableView1, 'fact_track_id');
    Screen.Cursor := crDefault;
  end;
end;

procedure TfmFactTrack.dxBarButton28Click(Sender: TObject);
var      SP : TADOStoredProc;
          i : integer;
 bargain_id : integer;
   _fmAgree2 : TfmAgree2;
begin
  bargain_id := -9;
  if Application.MessageBox('Скопировать рейсы в факт перевозки?', 'Внимание', MB_OKCANCEL) = IDOK then begin

    if TComponent(Sender).Tag = 1 then begin

     _fmAgree2 := TfmAgree2.Create(Application, True);
     _fmAgree2._SetTypeOpenForm := 1;
     if _fmAgree2.ShowModal = mrOk then begin
      bargain_id := _fmAgree2.SP_Agree.FieldByName('bargain_id').AsInteger;
     end else exit;

     _fmAgree2.Free;
    end;

    ShowTextMessage('Обновление информации ...', False);
    SP := TADOStoredProc.Create(nil);
    try
      SP.Connection := fmMain.Lis;
      SP.ProcedureName := 'sp_fact_insert_from_fact_track';
      SP.Parameters.Refresh;
      for i := 0 to cxGridDBBandedTableView1.Controller.SelectedRecordCount - 1 do begin
        SP.Close;
        SP.Parameters.ParamByName('@fact_track_id').Value := cxGridDBBandedTableView1.Controller.SelectedRows[i].Values[cxGridDBBandedTableView1fact_track_trip_id.Index];
        SP.Parameters.ParamByName('@bargain_id').Value    := iif(bargain_id = -9, null, bargain_id);
        SP.Parameters.ParamByName('@type_action').Value   := 4;
        SP.ExecProc;
        ShowTextMessage('Осталось '+IntToStr(cxGridDBBandedTableView1.Controller.SelectedRecordCount - i)+' записей...', False);
      end;
      ShowTextMessage('Обновление информации ...', False);
      ShowTextMessage('', True);
    finally
      SP.Free;
      ShowTextMessage('', True);
    end;
    Application.MessageBox('Выбранные записи скопированны в факт!', 'ВНИМАНИЕ', MB_OK);
  end;
end;

procedure TfmFactTrack.dxBarButton19Click(Sender: TObject);
 var     SP : TADOStoredProc;
          i : integer;
 bargain_id : integer;
   _fmAgree2 :  TfmAgree2;
begin
  bargain_id := -9;
  if Application.MessageBox('Скопировать вагоны в факт?', 'Внимание', MB_OKCANCEL) = IDOK then begin

 if TComponent(Sender).Tag = 1 then begin
   _fmAgree2 := TfmAgree2.Create(Application, True);
   _fmAgree2._SetTypeOpenForm := 1;
   if _fmAgree2.ShowModal = mrOk then begin
    bargain_id := _fmAgree2.SP_Agree.FieldByName('bargain_id').AsInteger;
   end else exit;

   _fmAgree2.Free;
  end;

  ShowTextMessage('Обновление информации ...', False);
  SP := TADOStoredProc.Create(nil);
    try
      SP.Connection := fmMain.Lis;
      SP.ProcedureName := 'sp_fact_insert_from_fact_track';
      SP.Parameters.Refresh;
      for i := 0 to cxGrid1DBBandedTableView1.Controller.SelectedRecordCount - 1 do begin
        SP.Close;
        SP.Parameters.ParamByName('@fact_track_id').Value := cxGrid1DBBandedTableView1.Controller.SelectedRows[i].Values[cxGrid1DBBandedTableView1fact_track_id.Index];
        SP.Parameters.ParamByName('@bargain_id').Value    := iif(bargain_id = -9, null, bargain_id);
        SP.Parameters.ParamByName('@type_action').Value   := 3;
        SP.ExecProc;
        ShowTextMessage('Осталось '+IntToStr(cxGrid1DBBandedTableView1.Controller.SelectedRecordCount - i)+' записей...', False);
      end;
      ShowTextMessage('Обновление информации ...', False);
      ShowTextMessage('', True);
    finally
      SP.Free;
      ShowTextMessage('', True);
    end;
    Application.MessageBox('Выбранные записи скопированны в факт!', 'ВНИМАНИЕ', MB_OK);
  end;
end;


procedure TfmFactTrack.dxBarButton29Click(Sender: TObject);
var       i : Integer;
  FClientDS : TClientDataSet;
      s, ss : String;
begin
//  if cxPageControl1.ActivePageIndex = 0 then
//    Application.MessageBox(PChar(Query_FactTrack.SQL.Text), 'SQL Запрос...', MB_OK) else
//    Application.MessageBox(PChar(Query_Trip.SQL.Text), 'SQL Запрос...', MB_OK);

  FClientDS := TClientDataSet.Create(nil);
  if Assigned(FClientDS) then begin
    if AnsiUpperCase(SP_fact_track_stat_get.ProcedureName) = AnsiUpperCase('sp_fact_track_stat_get') then
      FClientDS.XMLData := FQuerySettings[1]
    else
      FClientDS.XMLData := FQuerySettings[0];

    for i := 0 to FClientDS.Fields.Count - 1 do begin

      if (FClientDS.FieldList.Fields[i].DataType = ftDate) then
        s := s + #10#13 + '@' + FClientDS.FieldList.Fields[i].FieldName+#9#9+' = '+#9+
      iif(FClientDS.Fields.Fields[i].Value = Null,'Null,', '''' + FormatDateTime('yyyymmdd', FClientDS.Fields.Fields[i].AsDateTime) + ''',')

      else

      if (FClientDS.FieldList.Fields[i].DataType in [ftString, ftBlob]) then
        s := s + #10#13 + '@' + FClientDS.FieldList.Fields[i].FieldName+#9#9+' = '+#9+
      iif((FClientDS.Fields.Fields[i].Value = Null) or (FClientDS.Fields.Fields[i].AsString = ''),'Null,',
      '''' + FClientDS.Fields.Fields[i].AsString + ''',')

      else

        s := s + #10#13 + '@' + FClientDS.FieldList.Fields[i].FieldName+#9#9+' = '+#9+
      iif((FClientDS.Fields.Fields[i].Value = Null) or (FClientDS.Fields.Fields[i].AsString = ''),'Null,',
      FClientDS.Fields.Fields[i].AsString + ',');
    end;
    //s := FQuerySettings[1] + #10#13#10#13 + 'EXEC sp_fact_track_STAT_get ' + #10#13 + s;
    s := 'EXEC ' + SP_fact_track_stat_get.ProcedureName + #10 + copy(s, 0, Length(s) - 1);
  end;

  Application.MessageBox(PChar(s), 'SQL Запрос ...', MB_OK);
  FClientDS.Free;
end;

procedure TfmFactTrack.dxBarButton2Click(Sender: TObject);
type
  TFunc = function(AHandle: THandle; connect: TADOConnection; FIO_users: string; reference_id: integer; str_vagons: string) : variant;
var
           FEtran : TFunc;
           handle : THandle;
                v : variant;
            Query : TADOQuery;
  users_group_cod : string;
        FIO_users : string;
                i : integer;
     str_num_vagon : string;
begin
  str_num_vagon := '';
  for i:=0 to cxGrid1DBBandedTableView1.Controller.SelectedRowCount - 1 do begin
    str_num_vagon := str_num_vagon + ',' + IntToStr(cxGrid1DBBandedTableView1.Controller.SelectedRows[i].Values[cxGrid1DBBandedTableView1num_vagon.Index]);
  end;
  Delete(str_num_vagon, 1, 1);

    Screen.Cursor := crHourglass;

  Query := TADOQuery.Create(nil);
  Query.Connection := fmMain.Lis;
  Query.SQL.Add('SELECT	inf_obj_cod as users_group_cod, FIO_users');
  Query.SQL.Add('FROM	  users INNER JOIN inf_obj on users.users_group_id = inf_obj.inf_obj_id');
  Query.SQL.Add('WHERE	users_name = system_user');
  Query.Open;
  users_group_cod := Query.FieldByName('users_group_cod').AsString;
  FIO_users       := Query.FieldByName('FIO_users').AsString;
  Query.Free;

  Screen.Cursor := crdefault;

  handle := LoadLibrary('etranECP.dll');
  @FEtran := GetProcAddress(handle, 'CreateWndEtranInformVagons');
  v := FEtran(Forms.Application.Handle, fmMain.Lis, FIO_users, 14, str_num_vagon);
  FreeLibrary(handle);
end;

procedure TfmFactTrack.cxPageControl2Change(Sender: TObject);
begin
  Query_History.Close;
  Query_HistoryTrip.Close;

  if (dxBarButton_History.Down) then begin
    Screen.Cursor := crHourGlass;

    case cxPageControl1.ActivePageIndex of
      // основная информация
      0 : begin
            if cxPageControl2.ActivePage = cxTabSheet3 then begin
              // История вагона
              Query_History.Parameters.ParamByName('num_vagon'     ).Value := cxGrid1DBBandedTableView1num_vagon.DataBinding.Field.AsInteger;
              Query_History.Parameters.ParamByName('users_group_id').Value := usr_pwd.user_group_id;
              Query_History.Parameters.ParamByName('date_begin'    ).Value := Fdate_history1;
              Query_History.Parameters.ParamByName('date_end'      ).Value := Fdate_history2;
//              Query_History.Parameters.ParamByName('set_group'     ).Value := iif(dxBarButton115.Down, 1, 0);
              Query_History.Open;
            end else begin
              // История рейса
              Query_HistoryTrip.Parameters.ParamByName('num_vagon'     ).Value := cxGrid1DBBandedTableView1num_vagon.DataBinding.Field.AsInteger;
              Query_HistoryTrip.Parameters.ParamByName('users_group_id').Value := usr_pwd.user_group_id;
              Query_HistoryTrip.Parameters.ParamByName('date_begin'    ).Value := Fdate_trip1;
              Query_HistoryTrip.Parameters.ParamByName('date_end'      ).Value := Fdate_trip2;
              Query_HistoryTrip.Open;
            end;
          end;

      // рейсы
      1 : begin
            if cxPageControl2.ActivePage = cxTabSheet3 then begin
              // История: вагон
              Query_History.Parameters.ParamByName('num_vagon'     ).Value := cxGridDBBandedTableView1num_vagon.DataBinding.Field.AsInteger;
              Query_History.Parameters.ParamByName('users_group_id').Value := usr_pwd.user_group_id;
              Query_History.Parameters.ParamByName('date_begin'    ).Value := Fdate_history1;
              Query_History.Parameters.ParamByName('date_end'      ).Value := Fdate_history2;
//              Query_History.Parameters.ParamByName('set_group'     ).Value := iif(dxBarButton115.Down, 1, 0);
              Query_History.Open;
            end else begin
              // История: рейс
              Query_HistoryTrip.Parameters.ParamByName('num_vagon'     ).Value := cxGridDBBandedTableView1num_vagon.DataBinding.Field.AsInteger;
              Query_HistoryTrip.Parameters.ParamByName('users_group_id').Value := usr_pwd.user_group_id;
              Query_HistoryTrip.Parameters.ParamByName('date_begin1'    ).Value := Fdate_trip1;
              Query_HistoryTrip.Parameters.ParamByName('date_end1'      ).Value := Fdate_trip2;
              Query_HistoryTrip.Parameters.ParamByName('date_begin2'    ).Value := Fdate_trip1;
              Query_HistoryTrip.Parameters.ParamByName('date_end2'      ).Value := Fdate_trip2;
              Query_HistoryTrip.Open;
            end;
          end;

      // простои на станциях
      2 : begin
            if cxPageControl2.ActivePage = cxTabSheet3 then begin
              // История: вагон
              Query_History.Parameters.ParamByName('num_vagon'     ).Value := cxGrid12DBBandedTableView1num_vagon.DataBinding.Field.AsInteger;
              Query_History.Parameters.ParamByName('users_group_id').Value := usr_pwd.user_group_id;
              Query_History.Parameters.ParamByName('date_begin'    ).Value := Fdate_history1;
              Query_History.Parameters.ParamByName('date_end'      ).Value := Fdate_history2;
              Query_History.Parameters.ParamByName('set_group'     ).Value := iif(dxBarButton115.Down, 1, 0);
              Query_History.Open;
            end else begin
              // История: рейс
              Query_HistoryTrip.Parameters.ParamByName('num_vagon'     ).Value := cxGrid12DBBandedTableView1num_vagon.DataBinding.Field.AsInteger;
              Query_HistoryTrip.Parameters.ParamByName('users_group_id').Value := usr_pwd.user_group_id;
              Query_HistoryTrip.Parameters.ParamByName('date_begin1'    ).Value := Fdate_trip1;
              Query_HistoryTrip.Parameters.ParamByName('date_end1'      ).Value := Fdate_trip2;
              Query_HistoryTrip.Parameters.ParamByName('date_begin2'    ).Value := Fdate_trip1;
              Query_HistoryTrip.Parameters.ParamByName('date_end2'      ).Value := Fdate_trip2;
              Query_HistoryTrip.Open;
            end;
          end;


    end;

    Screen.Cursor := crDefault;
  end;
end;

end.

