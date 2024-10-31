unit VagonArenda;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Default,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage,
  cxEdit, DB, cxDBData, cxPropertiesStore, dxBar, cxClasses, ADODB, cxGridLevel, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridBandedTableView, cxGridDBBandedTableView, cxGrid, StdCtrls, ExtCtrls, cxCurrencyEdit, cxColorComboBox,
  ComObj, ComCtrls, StrUtils, cxCheckBox, cxCalendar, cxContainer, cxTextEdit, cxMaskEdit, cxDropDownEdit, DateUtils, Menus,
  cxCheckComboBox, cxButtons, cxButtonEdit, cxPC, ImgList, cxGridDBDataDefinitions, cxNavigator, dxBarBuiltInMenu, dxCore, cxDateUtils,
  dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMetropolis, dxSkinMetropolisDark, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue,
  dxSkinOffice2010Silver, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinPumpkin, dxSkinSeven,
  dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus, dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008, dxSkinTheAsphaltWorld,
  dxSkinsDefaultPainters, dxSkinValentine, dxSkinVS2010, dxSkinWhiteprint, dxSkinXmas2008Blue, dxSkinscxPCPainter, dxSkinsdxBarPainter,
  dxColorEdit, dxSkinOffice2016Colorful, dxSkinOffice2016Dark, dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, DBClient, System.ImageList, cxImageList, dxSkinTheBezier, dxDateRanges, dxSkinOffice2019Colorful,
  dxScrollbarAnnotations;

type

  TfmVagonArenda = class(TForm)
    cxGrid1: TcxGrid;
    cxGrid1DBBandedTableView1: TcxGridDBBandedTableView;
    cxGrid1Level1: TcxGridLevel;
    DS_VagonArenda: TDataSource;
    dxBarManager1: TdxBarManager;
    dxBarManager1Bar1: TdxBar;
    dxBarButton1: TdxBarButton;
    dxBarButton2: TdxBarButton;
    dxBarButton3: TdxBarButton;
    dxBarButton9: TdxBarButton;
    dxBarButton4: TdxBarButton;
    dxBarButton5: TdxBarButton;
    dxBarButton6: TdxBarButton;
    dxBarButton7: TdxBarButton;
    dxBarButton8: TdxBarButton;
    dxBarButton10: TdxBarButton;
    dxBarButton11: TdxBarButton;
    cxPropertiesStore1: TcxPropertiesStore;
    dxBarPopupMenu1: TdxBarPopupMenu;
    dxBarSubItem2: TdxBarSubItem;
    dxBarButton12: TdxBarButton;
    dxBarSubItem1: TdxBarSubItem;
    dxBarButton_Rent: TdxBarButton;
    dxBarButton14: TdxBarButton;
    dxBarButton_FilterRecords1: TdxBarButton;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet3: TTabSheet;
    cxGrid1DBBandedTableView1vagon_arenda_id: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1vagon_id: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1contract_id: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1rate_val: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1type_arenda: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1num_vagon: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1contract_cod: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1firm_self_name_short: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1date_begin_arenda: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1firm_id: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1firm_name_short: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1brief_name: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1FIO_users_owner: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1users_group_id: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1date_end_arenda: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1comment: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1global_color: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1vagon_days: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1sum_arenda_period: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1days_owner: TcxGridDBBandedColumn;
    dxBarButton15: TdxBarButton;
    dxBarButton17: TdxBarButton;
    dxBarButton18: TdxBarButton;
    dxBarButton20: TdxBarButton;
    dxBarButton21: TdxBarButton;
    dxBarButton22: TdxBarButton;
    cxGrid1DBBandedTableView1act_begin_cod: TcxGridDBBandedColumn;
    dxBarButton23: TdxBarButton;
    cxGrid1DBBandedTableView1act_begin_date: TcxGridDBBandedColumn;
    dxBarButton24: TdxBarButton;
    dxBarSubItem3: TdxBarSubItem;
    dxBarButton25: TdxBarButton;
    dxBarButton26: TdxBarButton;
    dxBarButton27: TdxBarButton;
    dxBarPopupMenu2: TdxBarPopupMenu;
    dxBarButton28: TdxBarButton;
    dxBarButton29: TdxBarButton;
    dxBarButton30: TdxBarButton;
    Panel2: TPanel;
    Query_Tech: TADOQuery;
    DS_Tech: TDataSource;
    Splitter1: TSplitter;
    GroupBox2: TGroupBox;
    dxBarPopupMenu3: TdxBarPopupMenu;
    dxBarButton32: TdxBarButton;
    dxBarSubItem4: TdxBarSubItem;
    dxBarButton33: TdxBarButton;
    dxBarButton34: TdxBarButton;
    dxBarButton35: TdxBarButton;
    dxBarSubItem5: TdxBarSubItem;
    dxBarButton36: TdxBarButton;
    dxBarButton37: TdxBarButton;
    cxGrid1DBBandedTableView1act_end_cod: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1act_end_date: TcxGridDBBandedColumn;
    SP_VagonArenda: TADOStoredProc;
    Query_VagonArendaActs: TADOQuery;
    cxButtonEdit2: TcxButtonEdit;
    cxButton1: TcxButton;
    cxPageControl1: TcxPageControl;
    cxTabSheet1: TcxTabSheet;
    cxTabSheet2: TcxTabSheet;
    cxTabSheet3: TcxTabSheet;
    Panel1: TPanel;
    Label31: TLabel;
    Label30: TLabel;
    cxDateEdit1: TcxDateEdit;
    cxDateEdit2: TcxDateEdit;
    cxGrid3: TcxGrid;
    cxGrid3DBBandedTableView1: TcxGridDBBandedTableView;
    cxGrid1DBBandedTableView1fact_tech_id: TcxGridDBBandedColumn;
    cxGridDBBandedColumn1: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1block_p: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1type_repair: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1depo: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1num_notice_23: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1road: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1station_detaching: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1date_breakage: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1breakage: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1date_build: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1last_depo_place: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1date_last_depo_place: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1last_cap_place: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1date_cap_place: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1num_notice_36: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1date_repare_begin: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1date_repare_end: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1modernization: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1file_load_name: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1file_load_date: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1users_id: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1road_name: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1station_detaching_name: TcxGridDBBandedColumn;
    cxGridDBBandedColumn2: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1global_color: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1date_breakage_t: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1date_repare_begin_t: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1date_repare_end_t: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1file_load_date_t: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1depo_name: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1last_depo_place_name: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1last_cap_place_name: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1FIO_users: TcxGridDBBandedColumn;
    cxGridDBBandedColumn4: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1model_name: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1firm_name: TcxGridDBBandedColumn;
    cxGridDBBandedColumn5: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1set_self_cost: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1breakage_type: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1set_weight: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1type_park_name: TcxGridDBBandedColumn;
    cxGridDBBandedColumn6: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1comment6: TcxGridDBBandedColumn;
    cxGrid3Level1: TcxGridLevel;
    Panel3: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    cxDateEdit3: TcxDateEdit;
    cxDateEdit4: TcxDateEdit;
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
    Query_History: TADOQuery;
    DS_History: TDataSource;
    DS_VagonRepair: TDataSource;
    cxGrid1DBBandedTableView1vagon_days_repair: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1vagon_days_total: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1breakage_name: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1sum_arenda_with_nds: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1sum_arenda_without_nds: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1rod_vagon_name: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1type_park_name1: TcxGridDBBandedColumn;
    dxBarPopupMenu4: TdxBarPopupMenu;
    dxBarButton19: TdxBarButton;
    dxBarButton38: TdxBarButton;
    dxBarButton41: TdxBarButton;
    dxBarButton40: TdxBarButton;
    cxImageList1: TcxImageList;
    cxGrid1DBBandedTableView1sum_arenda_all_days: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1type_arenda_repair_name: TcxGridDBBandedColumn;
    cxGrid4: TcxGrid;
    cxGrid4DBBandedTableView1: TcxGridDBBandedTableView;
    cxGrid4DBBandedTableView1vagon_repair_fact_id: TcxGridDBBandedColumn;
    cxGrid4DBBandedTableView1vagon_id: TcxGridDBBandedColumn;
    cxGrid4DBBandedTableView1num_vagon: TcxGridDBBandedColumn;
    cxGrid4DBBandedTableView1date_begin_repair: TcxGridDBBandedColumn;
    cxGrid4DBBandedTableView1date_end_repair: TcxGridDBBandedColumn;
    cxGrid4DBBandedTableView1breakage_name: TcxGridDBBandedColumn;
    cxGrid4DBBandedTableView1users_id: TcxGridDBBandedColumn;
    cxGrid4DBBandedTableView1FIO_users: TcxGridDBBandedColumn;
    cxGrid4DBBandedTableView1users_group_id: TcxGridDBBandedColumn;
    cxGrid4DBBandedTableView1owner_name: TcxGridDBBandedColumn;
    cxGrid4DBBandedTableView1days_repair: TcxGridDBBandedColumn;
    cxGrid4DBBandedTableView1set_arenda: TcxGridDBBandedColumn;
    cxGrid4DBBandedTableView1set_subarenda: TcxGridDBBandedColumn;
    cxGrid4DBBandedTableView1set_cheked: TcxGridDBBandedColumn;
    cxGrid4DBBandedTableView1comment: TcxGridDBBandedColumn;
    cxGrid4DBBandedTableView1firm_arenda: TcxGridDBBandedColumn;
    cxGrid4DBBandedTableView1type_arenda_repair_name: TcxGridDBBandedColumn;
    cxGrid4DBBandedTableView1firm_sarenda: TcxGridDBBandedColumn;
    cxGrid4DBBandedTableView1type_sarenda_repair_name: TcxGridDBBandedColumn;
    cxGrid4DBBandedTableView1date_period: TcxGridDBBandedColumn;
    cxGrid4DBBandedTableView1date_last_update: TcxGridDBBandedColumn;
    cxGrid4DBBandedTableView1date_otpr: TcxGridDBBandedColumn;
    cxGrid4DBBandedTableView1date_arrival: TcxGridDBBandedColumn;
    cxGrid4DBBandedTableView1node_end_name: TcxGridDBBandedColumn;
    cxGrid4DBBandedTableView1date_breakage: TcxGridDBBandedColumn;
    cxGrid4DBBandedTableView1station_detaching_name: TcxGridDBBandedColumn;
    cxGrid4DBBandedTableView1type_repair_name: TcxGridDBBandedColumn;
    cxGrid4DBBandedTableView1depo_name: TcxGridDBBandedColumn;
    cxGrid4DBBandedTableView1date_repair_end: TcxGridDBBandedColumn;
    cxGrid4Level1: TcxGridLevel;
    SP_VagonArendaView: TADOStoredProc;
    dxBarButton60: TdxBarButton;
    dxBarButton61: TdxBarButton;
    TabSheet2: TTabSheet;
    cxGrid1DBBandedTableView1date_arenda_close_name: TcxGridDBBandedColumn;
    dxBarButton43: TdxBarButton;
    cxGrid1DBBandedTableView1type_contract: TcxGridDBBandedColumn;
    cxTabSheet4: TcxTabSheet;
    cxGrid5: TcxGrid;
    cxGrid5DBBandedTableView1: TcxGridDBBandedTableView;
    cxGrid5Level1: TcxGridLevel;
    Query_Rates: TADOQuery;
    DS_Rate: TDataSource;
    cxGrid5DBBandedTableView1vagon_arenda_rate_id: TcxGridDBBandedColumn;
    cxGrid5DBBandedTableView1vagon_arenda_id: TcxGridDBBandedColumn;
    cxGrid5DBBandedTableView1dt_begin: TcxGridDBBandedColumn;
    cxGrid5DBBandedTableView1dt_end: TcxGridDBBandedColumn;
    cxGrid5DBBandedTableView1rate_val: TcxGridDBBandedColumn;
    cxGrid5DBBandedTableView1currency_id: TcxGridDBBandedColumn;
    cxGrid5DBBandedTableView1currency_nm: TcxGridDBBandedColumn;
    cxGrid5DBBandedTableView1type_rate_id: TcxGridDBBandedColumn;
    cxGrid5DBBandedTableView1type_rate_nm: TcxGridDBBandedColumn;
    cxGrid5DBBandedTableView1type_nds_id: TcxGridDBBandedColumn;
    cxGrid5DBBandedTableView1type_nds_nm: TcxGridDBBandedColumn;
    dxBarPopupMenu5: TdxBarPopupMenu;
    dxBarButton39: TdxBarButton;
    dxBarButton42: TdxBarButton;
    cxGrid5DBBandedTableView1dt_diff: TcxGridDBBandedColumn;
    cxGrid5DBBandedTableView1rate_val_nds: TcxGridDBBandedColumn;
    dxBarButton62: TdxBarButton;
    dxBarButton44: TdxBarButton;
    dxBarButton45: TdxBarButton;
    dxBarSubItem6: TdxBarSubItem;
    dxBarSubItem7: TdxBarSubItem;
    dxBarButton46: TdxBarButton;
    dxBarButton47: TdxBarButton;
    TabSheet4: TTabSheet;
    dxBarButton16: TdxBarButton;
    cxGrid1DBBandedTableView1node_begin_name: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1node_end_name: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1balance_cost_without_nds: TcxGridDBBandedColumn;
    dxBarSubItem9: TdxBarSubItem;
    dxBarButton48: TdxBarButton;
    OpenDialog1: TOpenDialog;
    dxBarButton49: TdxBarButton;
    dxBarButton50: TdxBarButton;
    dxBarButton51: TdxBarButton;
    dxBarSubItem10: TdxBarSubItem;
    dxBarButton52: TdxBarButton;
    dxBarButton53: TdxBarButton;
    dxBarButton54: TdxBarButton;
    dxBarButton55: TdxBarButton;
    dxBarButton56: TdxBarButton;
    dxBarButton57: TdxBarButton;
    cxGrid1DBBandedTableView1type_contract_name: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1date_begin_m: TcxGridDBBandedColumn;
    dxBarButton59: TdxBarButton;
    dxBarButton63: TdxBarButton;
    dxBarButton64: TdxBarButton;
    dxBarButton65: TdxBarButton;
    cxGrid1DBBandedTableView1act_begin_id: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1act_end_id: TcxGridDBBandedColumn;
    dxBarButton66: TdxBarButton;
    cxGrid1DBBandedTableView1date_enter: TcxGridDBBandedColumn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure dxBarButton11Click(Sender: TObject);
    procedure dxBarButton9Click(Sender: TObject);
    procedure dxBarButton7Click(Sender: TObject);
    procedure dxBarButton8Click(Sender: TObject);
    procedure dxBarButton1Click(Sender: TObject);
    procedure dxBarButton2Click(Sender: TObject);
    procedure dxBarButton3Click(Sender: TObject);
    procedure cxGrid1DBBandedTableView1CustomDrawCell(Sender: TcxCustomGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
    procedure dxBarButton4Click(Sender: TObject);
    procedure dxBarButton12Click(Sender: TObject);
    procedure cxGrid1DBBandedTableView1DataControllerFilterChanged(Sender: TObject);
    procedure cxGrid1DBBandedTableView1FocusedItemChanged(Sender: TcxCustomGridTableView; APrevFocusedItem, AFocusedItem: TcxCustomGridTableItem);
    procedure dxBarButton10Click(Sender: TObject);
    procedure cxGrid1DBBandedTableView1KeyPress(Sender: TObject; var Key: Char);
    procedure dxBarButton_RentClick(Sender: TObject);
    procedure dxBarButton14Click(Sender: TObject);
    procedure dxBarButton_FilterRecords1Click(Sender: TObject);
    procedure PageControl1Change(Sender: TObject);
    procedure dxBarButton18Click(Sender: TObject);
    procedure dxBarButton20Click(Sender: TObject);
    procedure dxBarButton25Click(Sender: TObject);
    procedure dxBarButton27Click(Sender: TObject);
    procedure cxButtonEdit2PropertiesButtonClick(Sender: TObject;AButtonIndex: Integer);
    procedure cxButton1Click(Sender: TObject);
    procedure cxGrid1DBBandedTableView1CustomDrawColumnHeader(Sender: TcxGridTableView; ACanvas: TcxCanvas;AViewInfo: TcxGridColumnHeaderViewInfo; var ADone: Boolean);
    procedure dxBarButton28Click(Sender: TObject);
    procedure dxBarButton29Click(Sender: TObject);
    procedure dxBarButton19Click(Sender: TObject);
    procedure dxBarButton39Click(Sender: TObject);
    procedure dxBarButton41Click(Sender: TObject);
    procedure cxGrid1DBBandedTableView1TcxGridDBDataControllerTcxDataSummaryFooterSummaryItems8GetText(Sender: TcxDataSummaryItem; const AValue: Variant; AIsFooter: Boolean;var AText: string);
    procedure cxGrid4DBBandedTableView1DblClick(Sender: TObject);
    procedure dxBarButton30Click(Sender: TObject);
    procedure dxBarButton60Click(Sender: TObject);
    procedure dxBarButton5Click(Sender: TObject);
    procedure dxBarButton43Click(Sender: TObject);
    procedure dxBarButton42Click(Sender: TObject);
    procedure dxBarPopupMenu5Popup(Sender: TObject);
    procedure dxBarButton44Click(Sender: TObject);
    procedure dxBarButton23Click(Sender: TObject);
    procedure dxBarButton24Click(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure dxBarButton48Click(Sender: TObject);
    procedure dxBarButton49Click(Sender: TObject);
    procedure dxBarButton56Click(Sender: TObject);
    procedure dxBarButton59Click(Sender: TObject);
    procedure dxBarButton65Click(Sender: TObject);
    procedure cxGrid1DBBandedTableView1SelectionChanged(Sender: TcxCustomGridTableView);
    procedure cxPageControl1Change(Sender: TObject);
  private
    Fdate1, Fdate2       : TDateTime;
    Fstr_vagon_arenda_id : string;
    Fstr_num_vagon       : string;
    Fstr_acts_id         : string;
    Fusr_pwd             : PUser_pwd;
    Fcnt_select          : integer;

    Fset_run_dll         : boolean;
    Fusr_pwd_lis         : PUser_pwd;
    Fconnect             : TADOConnection;
    Ftype_period         : integer;

    procedure SetContractID(contract_id: integer);
    procedure SetActBeginDate(act_date_begin: TDateTime);
    procedure SetActEndDate(act_end_begin: TDateTime);
    procedure SetMonthPeriod(date1: TDateTime);
  public
    constructor Create(Aowner: TApplication; flag: boolean);
    constructor CreateDLL(Aowner: TApplication; flag: boolean; usr_pwd_lis: PUser_pwd);
  published
    property _str_vagon_arenda_id : string read Fstr_vagon_arenda_id;
    property _str_num_vagon : string read Fstr_num_vagon;
    property _date_begin : TDateTime read Fdate1;
    property _date_end : TDateTime read Fdate2;
    property set_date_begin : TDateTime write Fdate1;
    property set_date_end : TDateTime write Fdate2;
    property _GetCountVagon : integer read Fcnt_select;
    property _SetContractID   : integer write SetContractID;
    property _SetActBeginDate : TDateTime write SetActBeginDate;
    property _SetActEndDate   : TDateTime write SetActEndDate;
    property _SetMonthPeriod  : TDateTime write SetMonthPeriod;
  end;

var
  fmVagonArenda: TfmVagonArenda;

implementation

uses Raznoe, Main, Period, Other, VagonArendaRepairAdd, FactTrack, FactTech,
    VagonArendaAdd, ContractAdd, VagonArendaRateAdd, Filter, Agree2;

{$R *.dfm}

constructor TfmVagonArenda.CreateDLL(Aowner: TApplication; flag: boolean; usr_pwd_lis: PUser_pwd);
begin
  Screen.Cursor := crHourglass;
  inherited Create(AOwner);

  Fset_run_dll := True;
  Fusr_pwd_lis := usr_pwd_lis;
  Fusr_pwd     := usr_pwd_lis;
  Fcnt_select  := 0;

  Fconnect := TADOConnection.Create(nil);
  Fconnect.ConnectionString := 'Persist Security Info=True;Provider=SQLOLEDB.1;User ID='+Fusr_pwd_lis^.user_name+';Password='+Fusr_pwd_lis^.user_pass+';Initial Catalog='+Fusr_pwd_lis^.catalog+';Data Source='+Fusr_pwd_lis^.server+';';
  Fconnect.KeepConnection   := False;
  Fconnect.LoginPrompt      := False;
  Fconnect.Open;

  dxBarManager1.ImageOptions.Images := cxImageList1;
  dxBarButton1.Enabled := False;
  dxBarButton2.Enabled := False;
  dxBarButton3.Enabled := False;
  dxBarButton14.Enabled := False;
  dxBarButton27.Enabled := False;
  dxBarButton38.Enabled := False;
  dxBarButton19.Enabled := False;
  dxBarButton12.Enabled := False;
  dxBarButton18.Enabled := False;
  dxBarButton20.Enabled := False;
  dxBarButton44.Enabled := False;
  dxBarButton45.Enabled := False;
  dxBarButton62.Enabled := False;

  Query_Tech.Connection := Fconnect;
  Query_VagonArendaActs.Connection := Fconnect;
  Query_History.Connection := Fconnect;
  SP_VagonArenda.Connection := Fconnect;
  Query_Rates.Connection := Fconnect;
  SP_VagonArendaView.Connection := Fconnect;

  dxBarSubItem3.Caption := StoreRegistryDate(rgLoad, '\Software\Lis1\DateTime\VagonArenda', Fdate1, Fdate2);
  Ftype_period := 3;

  Fstr_vagon_arenda_id := '';
  Fstr_num_vagon := '';
  Fstr_acts_id := '-9';

  PageControl1.OnChange := nil;
  cxDateEdit1.EditValue := StartOfTheYear(Fdate1);
  cxDateEdit2.EditValue := Fdate1;
  cxDateEdit3.EditValue := Fdate1 - 30;
  cxDateEdit4.EditValue := Fdate1 + 1;

  PageControl1.ActivePageIndex := 3;
  PageControl1.OnChange := PageControl1Change;
  PageControl1Change(nil);

  if flag then begin
    FormStyle := fsNormal;
    dxBarButton10.Visible := ivAlways;
  end else begin
    FormStyle := fsMDIChild;
    WindowState := wsMaximized;
  end;

  StoreRegistryGrid(rgLoad, '\Software\Lis1\VagonArenda_Grids', cxGrid5DBBandedTableView1);
  StoreRegistryGrid(rgLoad, '\Software\Lis1\VagonArenda_Grids', cxGrid1DBBandedTableView1);
  StoreRegistryGrid(rgLoad, '\Software\Lis1\VagonArenda_Grids', cxGrid2DBBandedTableView1);
  StoreRegistryGrid(rgLoad, '\Software\Lis1\VagonArenda_Grids', cxGrid3DBBandedTableView1);
  StoreRegistryGrid(rgLoad, '\Software\Lis1\VagonArenda_Grids', cxGrid4DBBandedTableView1);

  MonitorEventFormOpen('OPEN_FORM', self.Name, fmMain.Lis, -9);
  Screen.Cursor := crDefault;
end;

constructor TfmVagonArenda.Create(Aowner: TApplication; flag:boolean);
begin
  Screen.Cursor := crHourglass;
  inherited Create(AOwner);

  Fusr_pwd := usr_pwd;
  Fcnt_select := 0;
  Fset_run_dll := False;

  dxBarSubItem3.Caption := StoreRegistryDate(rgLoad, '\Software\Lis1\DateTime\VagonArenda', Fdate1, Fdate2);
  Ftype_period := 3;

  Fstr_vagon_arenda_id := '';
  Fstr_num_vagon := '';
  Fstr_acts_id := '-9';

  cxDateEdit1.EditValue := StartOfTheYear(Fdate1);
  cxDateEdit2.EditValue := Fdate1;
  cxDateEdit3.EditValue := Fdate1 - 30;
  cxDateEdit4.EditValue := Fdate1 + 1;

  PageControl1.OnChange := nil;
  PageControl1.ActivePageIndex := 0;
  PageControl1.OnChange := PageControl1Change;
  PageControl1Change(nil);

  if flag then begin
    FormStyle := fsNormal;
    dxBarButton10.Visible := ivAlways;
  end else begin
    FormStyle := fsMDIChild;
    WindowState := wsMaximized;
  end;

  StoreRegistryGrid(rgLoad, '\Software\Lis1\VagonArenda_Grids', cxGrid5DBBandedTableView1);
  StoreRegistryGrid(rgLoad, '\Software\Lis1\VagonArenda_Grids', cxGrid1DBBandedTableView1);
  StoreRegistryGrid(rgLoad, '\Software\Lis1\VagonArenda_Grids', cxGrid2DBBandedTableView1);
  StoreRegistryGrid(rgLoad, '\Software\Lis1\VagonArenda_Grids', cxGrid3DBBandedTableView1);
  StoreRegistryGrid(rgLoad, '\Software\Lis1\VagonArenda_Grids', cxGrid4DBBandedTableView1);

  MonitorEventFormOpen('OPEN_FORM', self.Name, fmMain.Lis, -9);
  Screen.Cursor := crDefault;
end;


procedure TfmVagonArenda.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TfmVagonArenda.FormDestroy(Sender: TObject);
begin
  StoreRegistryDate(rgSave, '\Software\Lis1\DateTime\VagonArenda', Fdate1, Fdate2);

  StoreRegistryGrid(rgSave, '\Software\Lis1\VagonArenda_Grids', cxGrid5DBBandedTableView1);
  StoreRegistryGrid(rgSave, '\Software\Lis1\VagonArenda_Grids', cxGrid1DBBandedTableView1);
  StoreRegistryGrid(rgSave, '\Software\Lis1\VagonArenda_Grids', cxGrid2DBBandedTableView1);
  StoreRegistryGrid(rgSave, '\Software\Lis1\VagonArenda_Grids', cxGrid3DBBandedTableView1);
  StoreRegistryGrid(rgSave, '\Software\Lis1\VagonArenda_Grids', cxGrid4DBBandedTableView1);
end;

procedure TfmVagonArenda.PageControl1Change(Sender: TObject);
var d : TDateTime;
begin
  Screen.Cursor := crHourglass;

  d := Now;
  case PageControl1.ActivePageIndex of
    0 : begin
          Caption := 'Аренда вагонов';
          cxGrid1DBBandedTableView1firm_name_short.Caption := 'Арендодатель';

          cxGrid1DBBandedTableView1firm_name_short.Visible := True;
          cxGrid1DBBandedTableView1days_owner.Visible := False;
          cxGrid1DBBandedTableView1brief_name.Visible := True;
          cxGrid1DBBandedTableView1rate_val.Visible := True;
          cxGrid1DBBandedTableView1sum_arenda_period.Visible := True;

          dxBarButton15.Visible := ivNever;
          dxBarButton17.Visible := ivAlways;
          dxBarButton21.Visible := ivNever;
          dxBarButton22.Visible := ivNever;
        end;

    1 : begin
          Caption := 'Субаренда вагонов';
          cxGrid1DBBandedTableView1firm_name_short.Caption := 'Субарендатор';

          cxGrid1DBBandedTableView1days_owner.Visible := False;
          cxGrid1DBBandedTableView1firm_name_short.Visible := True;
          cxGrid1DBBandedTableView1brief_name.Visible := True;
          cxGrid1DBBandedTableView1rate_val.Visible := True;
          cxGrid1DBBandedTableView1sum_arenda_period.Visible := True;
          cxGrid1DBBandedTableView1contract_cod.Visible := True;
          cxGrid1DBBandedTableView1firm_self_name_short.Visible := True;

          dxBarButton15.Visible := ivAlways;
          dxBarButton17.Visible := ivNever;
          dxBarButton21.Visible := ivAlways;
          dxBarButton22.Visible := ivAlways;
        end;

    2 : begin
          Caption := 'Краткосрочная аренда';
          cxGrid1DBBandedTableView1firm_name_short.Caption := 'Арендодатель';

          dxBarButton15.Visible := ivNever;
          dxBarButton17.Visible := ivNever;
          dxBarButton21.Visible := ivNever;
          dxBarButton22.Visible := ivNever;
        end;

    3 : begin
          Caption := 'Краткосрочная субаренда';
          cxGrid1DBBandedTableView1firm_name_short.Caption := 'Субарендатор';

          dxBarButton15.Visible := ivNever;
          dxBarButton17.Visible := ivNever;
          dxBarButton21.Visible := ivNever;
          dxBarButton22.Visible := ivNever;
        end;
  end;

  cxGrid1DBBandedTableView1.OnSelectionChanged := nil;

  SP_VagonArenda.Close;
  SP_VagonArenda.CommandTimeout := 600;
  SP_VagonArenda.Parameters.Refresh;
  SP_VagonArenda.Parameters.ParamByName('@date1'         ).Value := Fdate1;
  SP_VagonArenda.Parameters.ParamByName('@date2'         ).Value := Fdate2;
  SP_VagonArenda.Parameters.ParamByName('@users_group_id').Value := Fusr_pwd.user_group_id;
  SP_VagonArenda.Parameters.ParamByName('@type_arenda'   ).Value := PageControl1.ActivePageIndex;
  SP_VagonArenda.Parameters.ParamByName('@acts_id'       ).Value := -9;
  SP_VagonArenda.Parameters.ParamByName('@set_fact_rate' ).Value := Ord(dxBarButton56.Down);
  if Fstr_acts_id <> '-9' then begin
    SP_VagonArenda.Parameters.ParamByName('@str_acts_id').Value   := Fstr_acts_id;
    SP_VagonArenda.Parameters.ParamByName('@set_view_acts').Value := 1;
  end;
  SP_VagonArenda.Open;

  cxGrid1DBBandedTableView1.OnSelectionChanged := cxGrid1DBBandedTableView1SelectionChanged;
  cxGrid1DBBandedTableView1SelectionChanged(cxGrid1DBBandedTableView1);

  fmMain.dxStatusBar1.Panels[3].Text := IntToStr(SecondsBetween(now, d)) + ' сек.';

  Screen.Cursor := crDefault;
end;

procedure TfmVagonArenda.dxBarButton27Click(Sender: TObject);
type
  TFunc = function(AppHand: THandle; conn: TADOConnection; type_acts: integer; type_arenda: integer; flag: boolean; dtbegin: TDateTime; dtend: TDateTime; type_period: integer; usr_pwd_lis: PUser_pwd) : Variant;
var
  FVagonArendaActs : TFunc;
  handle  : THandle;
  v       : Variant;
begin
  handle := LoadLibrary('user.dll');
  @FVagonArendaActs := GetProcAddress(handle, 'CreateWndVagonArendaActsNew');
  v := FVagonArendaActs(Application.Handle, fmMain.Lis, 0, PageControl1.ActivePageIndex, False, Fdate1, Fdate2, Ftype_period, Fusr_pwd);
  FreeLibrary(handle);
  RefreshQueryGrid(cxGrid1DBBandedTableView1, 'vagon_arenda_id');
end;

procedure TfmVagonArenda.dxBarButton28Click(Sender: TObject);
begin
  fmVagonArendaRepairAdd := TfmVagonArendaRepairAdd.Create(Application);
  fmVagonArendaRepairAdd.cxMemo2.Text := cxGrid1DBBandedTableView1num_vagon.DataBinding.Field.AsString;
  if fmVagonArendaRepairAdd.ShowModal = mrOk then
    RefreshQueryGrid(cxGrid4DBBandedTableView1, 'vagon_repair_fact_id',fmVagonArendaRepairAdd._Fvagon_repair_fact_id);
    RefreshQueryGrid(cxGrid1DBBandedTableView1, 'vagon_arenda_id',cxGrid1DBBandedTableView1vagon_arenda_id.DataBinding.Field.AsInteger);
end;

procedure TfmVagonArenda.dxBarButton29Click(Sender: TObject);
begin
  fmVagonArendaRepairAdd := TfmVagonArendaRepairAdd.Create(Application);
    fmVagonArendaRepairAdd._SetUpdate := cxGrid4DBBandedTableView1vagon_repair_fact_id.DataBinding.Field.AsInteger;
  if fmVagonArendaRepairAdd.ShowModal = mrOk then
  RefreshQueryGrid(cxGrid4DBBandedTableView1, 'vagon_repair_fact_id', fmVagonArendaRepairAdd._Fvagon_repair_fact_id);
  RefreshQueryGrid(cxGrid1DBBandedTableView1, 'vagon_arenda_id',cxGrid1DBBandedTableView1vagon_arenda_id.DataBinding.Field.AsInteger);
end;

procedure TfmVagonArenda.dxBarButton30Click(Sender: TObject);
var i : integer;
SP            : TADOStoredProc;
begin
  SP := TADOStoredProc.Create(nil);
  SP.Connection := fmMain.Lis;
  SP.ProcedureName := 'sp_vagon_repair_fact_modify;1';
  SP.Parameters.Refresh;

  if Application.MessageBox('Вы точно уверены?', 'Внимание', MB_OKCANCEL) = IDOK then begin
    Screen.Cursor := -11;
    for i := 0 to cxGrid4DBBandedTableView1.Controller.SelectedRowCount - 1 do begin
      SP.Close;
      SP.Parameters.Refresh;
      SP.Parameters.ParamByName('@vagon_repair_fact_id').Value := cxGrid4DBBandedTableView1.Controller.SelectedRows[i].Values[cxGrid4DBBandedTableView1.GetColumnByFieldName('vagon_repair_fact_id').Index];
      SP.Parameters.ParamByName('@type_action').Value  := 2;
        try
          SP.ExecProc;
          ShowTextMessage('Осталось ' + IntToStr(cxGrid1DBBandedTableView1.Controller.SelectedRowCount - i) + ' записей...', False);
          if SP.Parameters.ParamByName('@vagon_repair_fact_id').Value = -9 then Application.MessageBox('Нельзя удалить ремонт','Внимание',MB_OK);
        except
        end;
    end;
    ShowTextMessage;
    RefreshQueryGrid(cxGrid1DBBandedTableView1, 'vagon_arenda_id',cxGrid1DBBandedTableView1vagon_arenda_id.DataBinding.Field.AsInteger);
  end;
end;

procedure TfmVagonArenda.dxBarButton39Click(Sender: TObject);
begin
  fmVagonArendaAdd := TfmVagonArendaAdd.Create(Application, PageControl1.ActivePageIndex);
  fmVagonArendaAdd.SetPeriod(Fdate1, Fdate2, Ftype_period);
  fmVagonArendaAdd._SetUpdate := cxGrid1DBBandedTableView1vagon_arenda_id.DataBinding.Field.AsInteger;
  fmVagonArendaAdd.dxBarButton4Click(nil);
  if fmVagonArendaAdd.ShowModal = mrOk then
    RefreshQueryGrid(cxGrid1DBBandedTableView1, 'vagon_arenda_id', fmVagonArendaAdd._GetVagonId);
end;

procedure TfmVagonArenda.dxBarButton42Click(Sender: TObject);
begin
  fmVagonArendaAdd := TfmVagonArendaAdd.Create(Application, PageControl1.ActivePageIndex);
  fmVagonArendaAdd.SetPeriod(Fdate1, Fdate2, Ftype_period);
  fmVagonArendaAdd._SetUpdate := cxGrid1DBBandedTableView1vagon_arenda_id.DataBinding.Field.AsInteger;
  fmVagonArendaAdd.ClientDS_Rate.Locate('vagon_arenda_rate_id', cxGrid5DBBandedTableView1vagon_arenda_rate_id.DataBinding.Field.AsInteger, []);
  fmVagonArendaAdd.dxBarButton5Click(nil);
  if fmVagonArendaAdd.ShowModal = mrOk then
    RefreshQueryGrid(cxGrid1DBBandedTableView1, 'vagon_arenda_id', fmVagonArendaAdd._GetVagonId);
end;

procedure TfmVagonArenda.cxButton1Click(Sender: TObject);
begin
  PageControl1Change(nil);
end;

procedure TfmVagonArenda.cxButtonEdit2PropertiesButtonClick(Sender: TObject;AButtonIndex: Integer);
type
  TFunc = function(AppHand: THandle; conn: TADOConnection; type_acts: integer; type_arenda: integer; flag: boolean; dtbegin: TDateTime; dtend: TDateTime; type_period: integer; usr_pwd_lis: PUser_pwd) : Variant;
var
  FVagonArendaActs : TFunc;
  handle  : THandle;
  v       : Variant;
begin
  case AButtonIndex of
    0 : begin
          handle := LoadLibrary('user.dll');
          @FVagonArendaActs := GetProcAddress(handle, 'CreateWndVagonArendaActsNew');
          v := FVagonArendaActs(Application.Handle, fmMain.Lis, -9, PageControl1.ActivePageIndex, True, Fdate1, Fdate2, Ftype_period, Fusr_pwd);
          FreeLibrary(handle);

          if v[0]<>-9 then begin
            Fstr_acts_id := Fstr_acts_id + ',' + VarToStr(v[3]);
            if cxButtonEdit2.Text = '' then
              cxButtonEdit2.Text := VarToStr(v[4])
            else
              cxButtonEdit2.Text  := cxButtonEdit2.Text + ', ' + VarToStr(v[4]);

            PageControl1Change(nil);
          end;
        end;
    1 : begin
          cxButtonEdit2.Tag  := 0;
          cxButtonEdit2.EditValue := NULL;
          Fstr_acts_id := '-9';
          PageControl1Change(nil);
        end;
    end;
end;

procedure TfmVagonArenda.cxGrid1DBBandedTableView1CustomDrawCell(Sender: TcxCustomGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
  if (Sender = cxGrid1DBBandedTableView1)  then
    if (AViewInfo.GridRecord.Values[cxGrid1DBBandedTableView1global_color.Index]<>NULL) then
      ACanvas.Brush.Color := AViewInfo.GridRecord.Values[cxGrid1DBBandedTableView1global_color.Index];

  if (Sender = cxGrid3DBBandedTableView1) then
    if (AViewInfo.GridRecord.Values[cxGrid3DBBandedTableView1global_color.Index]<>NULL) then
      ACanvas.Brush.Color := AViewInfo.GridRecord.Values[cxGrid3DBBandedTableView1global_color.Index];

  if (AViewInfo.GridRecord.Selected) or (AViewInfo.GridRecord.Focused) then begin
    ACanvas.Brush.Color := clNavy;
    ACanvas.Font.Color := clWhite;
    if AViewInfo.Focused then ACanvas.Brush.Color := clBlue;
  end;
  if (Sender = cxGrid4DBBandedTableView1)  then
    if (AViewInfo.GridRecord.Values[cxGrid4DBBandedTableView1set_cheked.Index]= 0) then begin
      ACanvas.Font.Color := clGray;
      ACanvas.Font.Style := [fsItalic];
    end;
end;

procedure TfmVagonArenda.cxGrid1DBBandedTableView1CustomDrawColumnHeader(Sender: TcxGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxGridColumnHeaderViewInfo; var ADone: Boolean);
begin
  DrawcxGridColumnOnFocused(Sender, ACanvas, AViewInfo);
end;

procedure TfmVagonArenda.cxGrid1DBBandedTableView1DataControllerFilterChanged(Sender: TObject);
begin
  DrawcxGridColumnOnFiltered(Sender);
end;

procedure TfmVagonArenda.cxGrid1DBBandedTableView1FocusedItemChanged(Sender: TcxCustomGridTableView; APrevFocusedItem, AFocusedItem: TcxCustomGridTableItem);
begin
  Sender.Painter.Invalidate;
end;


procedure TfmVagonArenda.cxGrid1DBBandedTableView1KeyPress(Sender: TObject;  var Key: Char);
begin
  FilterColumnGridOnKeyPress(TcxGridDBBandedTableView(TcxGridSite(Sender).GridView), Key);
end;

procedure TfmVagonArenda.cxGrid1DBBandedTableView1SelectionChanged(Sender: TcxCustomGridTableView);
begin
  Screen.Cursor := crHourGlass;

  Query_Tech.Close;
  Query_History.Close;
  Query_Rates.Close;

  if Assigned(cxGrid1DBBandedTableView1vagon_id.DataBinding.Field) then
    case cxPageControl1.ActivePageIndex of
      0 : begin
            if cxGrid1DBBandedTableView1vagon_id.DataBinding.Field.Value <> Null then begin
              Query_Tech.Parameters.ParamByName('date1').Value := cxDateEdit1.EditValue;
              Query_Tech.Parameters.ParamByName('date2').Value := cxDateEdit2.EditValue;
              Query_Tech.Parameters.ParamByName('vagon_id').Value := cxGrid1DBBandedTableView1vagon_id.DataBinding.Field.AsInteger;
              Query_Tech.Open;
            end;
          end;

      1 : begin
            Query_History.Parameters.ParamByName('date_date_query_begin').Value := cxDateEdit3.EditValue;
            Query_History.Parameters.ParamByName('date_date_query_end'  ).Value := cxDateEdit4.EditValue;
            Query_History.Parameters.ParamByName('num_vagon'            ).Value := cxGrid1DBBandedTableView1num_vagon.DataBinding.Field.AsInteger;
            Query_History.Parameters.ParamByName('users_group_id'       ).Value := Fusr_pwd.user_group_id;
            Query_History.Open;
          end;

      2 : begin
            SP_VagonArendaView.Close;
            SP_VagonArendaView.Parameters.Refresh;
            SP_VagonArendaView.Parameters.ParamByName('@set_view_arenda_repair').Value := 1;
            SP_VagonArendaView.Parameters.ParamByName('@date1'      ).Value := Fdate1;
            SP_VagonArendaView.Parameters.ParamByName('@date2'      ).Value := Fdate2;
            SP_VagonArendaView.Parameters.ParamByName('@vagon_id'   ).Value := cxGrid1DBBandedTableView1vagon_id.DataBinding.Field.AsInteger;
            SP_VagonArendaView.Parameters.ParamByName('@type_arenda').Value := PageControl1.ActivePageIndex;
            SP_VagonArendaView.Open;
          end;

      3 : begin
            Query_Rates.Parameters.ParamByName('vagon_arenda_id').Value := cxGrid1DBBandedTableView1vagon_arenda_id.DataBinding.Field.AsInteger;
            Query_Rates.Parameters.ParamByName('dt').Value := FDate2;
            Query_Rates.Open;
          end;
      end;

   Screen.Cursor := crDefault;
end;

procedure TfmVagonArenda.cxGrid1DBBandedTableView1TcxGridDBDataControllerTcxDataSummaryFooterSummaryItems8GetText(Sender: TcxDataSummaryItem; const AValue: Variant; AIsFooter: Boolean;var AText: string);
begin
//   // ------ "Сумма по плану"/"Кол-во вагонов"  ----  Чистов
//   if (cxGrid1DBBandedTableView1.DataController.Summary.FooterSummaryValues[9] = null) OR
//      (cxGrid1DBBandedTableView1.DataController.Summary.FooterSummaryValues[2] = null) then exit
//   else
//     AText := FormatFloat('# ##0.00', cxGrid1DBBandedTableView1.DataController.Summary.FooterSummaryValues[9] /
//                                             cxGrid1DBBandedTableView1.DataController.Summary.FooterSummaryValues[2] /
//                                        (Fdate2-Fdate1+1));

   //-------- Задание Раевского
   //Итог Сумма без НДС/Итог Кол-во дней
   if (cxGrid1DBBandedTableView1.DataController.Summary.FooterSummaryValues[5] <> 0) then exit
   else
     AText := FormatFloat('# ##0.00', cxGrid1DBBandedTableView1.DataController.Summary.FooterSummaryValues[0] /
                                      cxGrid1DBBandedTableView1.DataController.Summary.FooterSummaryValues[5]);
end;

procedure TfmVagonArenda.cxGrid4DBBandedTableView1DblClick(Sender: TObject);
begin
  fmVagonArendaRepairAdd := TfmVagonArendaRepairAdd.Create(Application);
  fmVagonArendaRepairAdd._SetUpdate := cxGrid4DBBandedTableView1vagon_repair_fact_id.DataBinding.Field.AsInteger;
  if fmVagonArendaRepairAdd.ShowModal = mrOk then
    RefreshQueryGrid(cxGrid4DBBandedTableView1, 'vagon_repair_fact_id', fmVagonArendaRepairAdd._Fvagon_repair_fact_id);
end;

procedure TfmVagonArenda.cxPageControl1Change(Sender: TObject);
begin
  cxGrid1DBBandedTableView1SelectionChanged(cxGrid1DBBandedTableView1);
end;

procedure TfmVagonArenda.dxBarButton11Click(Sender: TObject);
begin
  fmPeriod := TfmPeriod.Create(Application, Fdate1, Fdate1, 3);
  if fmPeriod.ShowModal = mrOk then begin
    Fdate1 := fmPeriod._GetMonth;
    Fdate2 := IncMonth(Fdate1, 1) - 1;
    dxBarSubItem3.Caption := FormatDateTime('mmmm yyyy', Fdate1);

    PageControl1Change(nil);
    cxDateEdit1.EditValue := StartOfTheYear(Fdate1);
    cxDateEdit2.EditValue := Fdate1;
    cxDateEdit3.EditValue := Fdate1 - 30;
    cxDateEdit4.EditValue := Fdate1 + 1;
    Ftype_period := 3;
  end;
end;

procedure TfmVagonArenda.dxBarButton25Click(Sender: TObject);
begin
  fmPeriod := TfmPeriod.Create(Application, Fdate1, Fdate1, 1);
  if fmPeriod.ShowModal = mrOk then begin
    Fdate1 := fmPeriod._GetDateBegin;
    Fdate2 := fmPeriod._GetDateEnd;
    dxBarSubItem3.Caption := FormatDateTime('dd.mm.yy', Fdate1) + ' - ' + FormatDateTime('dd.mm.yy', Fdate2);

    PageControl1Change(nil);
    cxDateEdit1.EditValue := StartOfTheYear(Fdate1);
    cxDateEdit2.EditValue := Fdate1;
    cxDateEdit3.EditValue := Fdate1 - 30;
    cxDateEdit4.EditValue := Fdate1 + 1;
    Ftype_period := 1;
  end;
end;

procedure TfmVagonArenda.dxBarButton12Click(Sender: TObject);
var i : integer;
begin
  if cxGrid1DBBandedTableView1.Controller.SelectedRecordCount > 0 then begin
    Fstr_vagon_arenda_id := '';
    Fstr_num_vagon := '';
    for i:=0 to cxGrid1DBBandedTableView1.Controller.SelectedRowCount - 1 do begin
      Fstr_vagon_arenda_id := Fstr_vagon_arenda_id + ',' + VarToStr(cxGrid1DBBandedTableView1.Controller.SelectedRows[i].Values[cxGrid1DBBandedTableView1vagon_arenda_id.Index]);
      Fstr_num_vagon := Fstr_num_vagon + ',' + VarToStr(cxGrid1DBBandedTableView1.Controller.SelectedRows[i].Values[cxGrid1DBBandedTableView1num_vagon.Index]);
    end;
    Delete(Fstr_vagon_arenda_id, 1, 1);
    Delete(Fstr_num_vagon, 1, 1);

    fmVagonArendaAdd := TfmVagonArendaAdd.Create(Application, PageControl1.ActivePageIndex);
    fmVagonArendaAdd.SetPeriod(Fdate1, Fdate2, Ftype_period);
    fmVagonArendaAdd._SetGroupUpdate := Fstr_vagon_arenda_id;
    if fmVagonArendaAdd.ShowModal = mrOk then
      RefreshQueryGrid(cxGrid1DBBandedTableView1, 'vagon_arenda_id', fmVagonArendaAdd._GetVagonId);
  end;
end;

procedure TfmVagonArenda.dxBarButton44Click(Sender: TObject);
var             i : integer;
  vagon_arenda_id : integer;
              SP : TADOStoredProc;
begin
   { Групповое добавление,изменение ставки }

  if cxGrid1DBBandedTableView1.Controller.SelectedRecordCount > 0 then begin
    Fstr_vagon_arenda_id := '';
    vagon_arenda_id := cxGrid1DBBandedTableView1.DataController.DataSource.DataSet.FieldByName('vagon_arenda_id').Value;
    for i := 0 to cxGrid1DBBandedTableView1.Controller.SelectedRowCount - 1 do begin
      Fstr_vagon_arenda_id := Fstr_vagon_arenda_id + ',' + VarToStr(cxGrid1DBBandedTableView1.Controller.SelectedRows[i].Values[cxGrid1DBBandedTableView1vagon_arenda_id.Index]);
      Fstr_num_vagon := Fstr_num_vagon + ',' + VarToStr(cxGrid1DBBandedTableView1.Controller.SelectedRows[i].Values[cxGrid1DBBandedTableView1num_vagon.Index]);
    end;
    Delete(Fstr_vagon_arenda_id, 1, 1);
    Delete(Fstr_num_vagon, 1, 1);

    fmVagonArendaRateAdd := TfmVagonArendaRateAdd.Create(Application);
    case TdxBarButton(Sender).Tag of
      0    : fmVagonArendaRateAdd._SetGroupAddRate := Fstr_vagon_arenda_id;
      1, 2 : fmVagonArendaRateAdd._SetGroupUpdateRate := Fstr_vagon_arenda_id;
      3    : fmVagonArendaRateAdd._SetDelLast := Fstr_vagon_arenda_id;
    end;

    if fmVagonArendaRateAdd.ShowModal = mrOk then begin
      try
        try
          SP := TADOStoredProc.Create(nil);
          SP.Connection := fmMain.Lis;
          SP.ProcedureName := 'sp_vagon_arenda_group_rate_modify;1';
          SP.Parameters.Refresh;
          with fmVagonArendaRateAdd do begin
            SP.Parameters.ParamByName('@type_action'        ).Value := TdxBarButton(Sender).Tag;
            SP.Parameters.ParamByName('@str_vagon_arenda_id').Value := Fstr_vagon_arenda_id;
            SP.Parameters.ParamByName('@date_begin'         ).Value := cxDateEdit1.EditValue;
            SP.Parameters.ParamByName('@date_end'           ).Value := cxDateEdit5.EditValue;
            if cxCheckBox1.Checked or (TdxBarButton(Sender).Tag = 0) then begin
              SP.Parameters.ParamByName('@rat_val'    ).Value := cxCurrencyEdit1.EditValue;
              SP.Parameters.ParamByName('@currency_id').Value := cxLookupComboBox1.EditValue;
            end;
            if cxCheckBox2.Checked or (TdxBarButton(Sender).Tag = 0) then
              SP.Parameters.ParamByName('@type_rate_id').Value := cxLookupComboBox2.EditValue;
            if cxCheckBox3.Checked or (TdxBarButton(Sender).Tag = 0) then
              SP.Parameters.ParamByName('@type_nds_id').Value := cxLookupComboBox7.EditValue;
            SP.Parameters.ParamByName('@reserved_for_update').Value := 0;
          end;
          SP.ExecProc;
        except
        end;
      finally
        SP.Free;
      end;
      RefreshQueryGrid(cxGrid1DBBandedTableView1, 'vagon_arenda_id', vagon_arenda_id);
    end;
    fmVagonArendaRateAdd.Free;
  end;
end;

procedure TfmVagonArenda.dxBarButton48Click(Sender: TObject);
var
  exApp, exWkb, exWks : Variant;
             ClientDS : TClientDataSet;
                   SP : TADOStoredProc;
  vagon_arenda_id, i, n, fields_begin : integer;
begin
  // Загрузка из Excel

  OpenDialog1.Filter := 'Файлы Excel|*.xls;*.xlsx';
  OpenDialog1.DefaultExt := 'xls;xlsx';

  if OpenDialog1.Execute(Self.Handle) then begin
    try
      try

        exApp := CreateOleObject('Excel.Application');
        exApp.Visible := False;
        exApp.DisplayAlerts := False;
        exWkb := exApp.Workbooks.Open(OpenDialog1.FileName);
        exWks := exWkb.Sheets[1];
        exWks.Activate;

        ClientDS := TClientDataSet.Create(nil);

        ClientDS.FieldDefs.Add('num_vagon', ftInteger);
        ClientDS.FieldDefs.Add('nds', ftInteger);
        ClientDS.FieldDefs.Add('sum_with_nds', ftCurrency);
        ClientDS.FieldDefs.Add('act_begin_code', ftString, 50);
        ClientDS.FieldDefs.Add('act_begin_date', ftDateTime);
        ClientDS.FieldDefs.Add('node_begin', ftString, 50);
        ClientDS.FieldDefs.Add('act_end_code', ftString, 50);
        ClientDS.FieldDefs.Add('act_end_date', ftDateTime);
        ClientDS.FieldDefs.Add('node_end', ftString, 50);
        ClientDS.FieldDefs.Add('currency_id', ftInteger);
        ClientDS.FieldDefs.Add('rate_without_nds', ftCurrency);
        ClientDS.FieldDefs.Add('rate_type', ftString, 50);
        ClientDS.FieldDefs.Add('sum_balans_without_nds', ftCurrency);
        ClientDS.FieldDefs.Add('contract_id', ftInteger);

        ClientDS.CreateDataSet;
        ClientDS.LogChanges := False;

        i := 5;             // Из шаблона загрузки "Номер вагона"
        fields_begin := 2;  // Начало полей

        while TVarData(exWks.Cells.Item[i, fields_begin].Value).VType <> varEmpty do begin
          ClientDS.Append;
          for n := 0 to ClientDS.FieldCount - 1 do begin
            ClientDS.Fields[n].Value := iif(VarToStr(exWks.Cells.Item[i, n + fields_begin].Value) = '', null, exWks.Cells.Item[i, n + fields_begin].Value);
          end;
          ClientDS.Post;
          Inc(i);
        end;

      except
        on E : Exception do
        begin
          Application.MessageBox(PChar('Ошибка загрузки Excel: ' + E.Message), PChar('Ошибка'), MB_OK + MB_ICONERROR);
        end;
      end;

      Screen.Cursor := crHourglass;

      SP := TADOStoredProc.Create(nil);
      SP.Connection := fmMain.Lis;
      SP.CommandTimeout := 150;
      SP.ProcedureName := 'sp_vagon_arenda_modify';
      SP.Parameters.Refresh;

      SP.Parameters.ParamByName('@vagon_arenda_id'  ).Value := -9;
      SP.Parameters.ParamByName('@type_arenda'      ).Value := PageControl1.ActivePageIndex;
      SP.Parameters.ParamByName('@type_action'      ).Value := 4;
      SP.Parameters.ParamByName('@arenda_str_xml'   ).Value := DataXMLToSQL(ClientDS);

      SP.ExecProc;
      vagon_arenda_id := SP.Parameters.ParamByName('@vagon_arenda_id').Value;
      RefreshQueryGrid(cxGrid1DBBandedTableView1, 'vagon_arenda_id', vagon_arenda_id);

      ShowMessage('Загрузка завершена.');

      Screen.Cursor := crDefault;

    finally
      SP.Free;
      ClientDS.Free;

      if not VarIsEmpty(exWks) then
        exWks := Unassigned;

      if not VarIsEmpty(exWkb) then
        exWkb := Unassigned;

      if not VarIsEmpty(exApp) then begin
        exApp.Quit;
        exApp := Unassigned;
      end;
    end;
  end;
end;

procedure TfmVagonArenda.dxBarButton49Click(Sender: TObject);
var i : integer;
   SP : TADOStoredProc;
begin
  SP := TADOStoredProc.Create(nil);
  SP.Connection := fmMain.Lis;
  SP.ProcedureName := 'sp_vagon_repair_fact_modify';
  SP.Parameters.Refresh;

  if Application.MessageBox('Вы точно уверены?', 'Внимание', MB_OKCANCEL) = IDOK then begin
    Screen.Cursor := crHourglass;
    for i := 0 to cxGrid1DBBandedTableView1.Controller.SelectedRowCount - 1 do begin
      Screen.Cursor := crHourglass;
      SP.Parameters.ParamByName('@type_action').Value := TComponent(Sender).Tag;
      SP.Parameters.ParamByName('@fact_tech_id').Value := cxGrid1DBBandedTableView1.Controller.SelectedRows[i].Values[cxGrid1DBBandedTableView1.GetColumnByFieldName('fact_tech_id').Index];
      try
       SP.ExecProc;
      except
      end;
    end;
    Screen.Cursor := crDefault;
    ShowTextMessage;
  end;

  SP.Free;
end;

procedure TfmVagonArenda.dxBarButton1Click(Sender: TObject);
begin
  fmVagonArendaAdd := TfmVagonArendaAdd.Create(Application, PageControl1.ActivePageIndex);
  fmVagonArendaAdd.SetPeriod(Fdate1, Fdate2, Ftype_period);
  fmVagonArendaAdd._SetInsert := 0;
  if fmVagonArendaAdd.ShowModal = mrOk then
    RefreshQueryGrid(cxGrid1DBBandedTableView1, 'vagon_arenda_id', fmVagonArendaAdd._GetVagonId);
end;

procedure TfmVagonArenda.dxBarButton2Click(Sender: TObject);
begin
  if Fset_run_dll then
    dxBarButton10Click(nil)
  else
    if cxGrid1DBBandedTableView1.Controller.SelectedRecordCount > 0 then begin
      fmVagonArendaAdd := TfmVagonArendaAdd.Create(Application, PageControl1.ActivePageIndex);
      fmVagonArendaAdd.SetPeriod(Fdate1, Fdate2, Ftype_period);
      fmVagonArendaAdd._SetUpdate := cxGrid1DBBandedTableView1vagon_arenda_id.DataBinding.Field.AsInteger;
      if fmVagonArendaAdd.ShowModal = mrOk then
        RefreshQueryGrid(cxGrid1DBBandedTableView1, 'vagon_arenda_id', fmVagonArendaAdd._GetVagonId);
    end;
end;

procedure TfmVagonArenda.dxBarButton20Click(Sender: TObject);
var QuerySettings : Variant;
                i : integer;
    str_num_vagon : string;
               qs : TStringList;
begin

  str_num_vagon := cx_GetSelectedValues(cxGrid1, 'num_vagon');
  if str_num_vagon = '' then
    Exit;

  str_num_vagon := ReplaceStr(str_num_vagon,',,',',');

  qs := TStringList.Create;
  qs.Add('SELECT fact_track_trip.*,');
  qs.Add('view_vagon_owner_new.comments, view_vagon_owner_new.note, view_vagon_owner_new.vagon_id,');
  qs.Add('view_vagon_owner_new.next_date_repair, view_vagon_owner_new.model_name, view_vagon_owner_new.volume, view_vagon_owner_new.uchet_name,');
  qs.Add('view_vagon_owner_new.copper_calibration, view_vagon_owner_new.capacity,');
  qs.Add('instruction.instruction_cod, instruction.instruction_date');
  qs.Add('FROM   fact_track_trip');
  qs.Add('LEFT JOIN view_vagon_owner_new WITH (NOLOCK)');
  qs.Add('ON (view_vagon_owner_new.num_vagon = fact_track_trip.num_vagon)');
  qs.Add('AND view_vagon_owner_new.users_group_id = ' + IntToStr(Fusr_pwd.user_group_id));
  qs.Add('AND (' + DateToSQL(IncDay(Fdate2, 1)) + ' BETWEEN view_vagon_owner_new.date_begin AND ISNULL(view_vagon_owner_new.date_end, ' +  DateToSQL(IncDay(Fdate2, 1)) + ')) ');
  qs.Add('INNER JOIN (SELECT DISTINCT cod FROM dbo.StrToTbl(''' + str_num_vagon + ''','','')) sv ON sv.cod = fact_track_trip.num_vagon');
  qs.Add('LEFT JOIN instruction ON fact_track_trip.instruction_id = instruction.instruction_id');
  qs.Add('WHERE  (fact_track_trip.date_otpr BETWEEN ' + DateToSQL(Fdate1) + ' AND ' + DateToSQL(IncDay(Fdate2, 1)) + ') ');
  qs.Add('       AND (fact_track_trip.users_group_id = ' + IntToStr(Fusr_pwd.user_group_id) + ') ');

  QuerySettings :=  VarArrayOf([5, qs.Text, '']);

  qs.Free;

  Screen.Cursor := crHourglass;

  for i:=0 to MDIChildCount-1 Do
    if (MDIChildren[i].ClassName='TfmFactTrack') then
      MDIChildren[i].Free;
  fmFactTrack := TfmFactTrack.Create(Application, False, 0);
  fmFactTrack._SetVagonSQL := QuerySettings;
  Screen.Cursor := crDefault;
end;

procedure TfmVagonArenda.dxBarButton3Click(Sender: TObject);
var i : integer;
   SP : TADOStoredProc;
begin
  if dxBarButton56.Down then begin
    Application.MessageBox(PChar('В режиме отображения всех фактических ставок аренды удаление записей - НЕВОЗМОЖНО!' + #10#13 + 'Переключитесь в обычный режим просмотра.'), 'Внимание', MB_OK);
    Exit;
  end;


  if Application.MessageBox('Вы точно уверены, что хотите удалить?', 'Внимание', MB_OKCANCEL) = ID_OK then begin
    Screen.Cursor := crHourglass;

    SP := TADOStoredProc.Create(nil);
    SP.Connection := fmMain.Lis;
    case PageControl1.ActivePageIndex of
      0,1,2,3 : SP.ProcedureName := 'dbo.sp_vagon_arenda_modify';
      //2 : SP.ProcedureName := 'sp_vagon_arenda_repair_modify;1';
    end;

    SP.Parameters.Refresh;
    for i := 0 to cxGrid1DBBandedTableView1.Controller.SelectedRowCount - 1 do begin
      SP.Close;
      SP.Parameters.Refresh;
      SP.Parameters.ParamByName('@type_action').Value := 2;
      case PageControl1.ActivePageIndex of
        0,1,2,3 : SP.Parameters.ParamByName('@vagon_arenda_id').Value := cxGrid1DBBandedTableView1.Controller.SelectedRows[i].Values[cxGrid1DBBandedTableView1vagon_arenda_id.Index];
        //2 : SP.Parameters.ParamByName('@vagon_arenda_repair_id').Value := cxGrid1DBBandedTableView1.Controller.SelectedRows[i].Values[cxGrid1DBBandedTableView1vagon_arenda_id.Index];
      end;

      SP.Parameters.ParamByName('@type_arenda').Value := PageControl1.ActivePageIndex;
      try
        SP.ExecProc;
      except
      end;
      ShowTextMessage('Осталось ' + IntToStr(cxGrid1DBBandedTableView1.Controller.SelectedRowCount - i) + ' записей...', False);
    end;
    ShowTextMessage;

    RefreshQueryGrid(cxGrid1DBBandedTableView1, 'vagon_arenda_id');
    Screen.Cursor := crDefault;
  end;
end;

procedure TfmVagonArenda.dxBarButton41Click(Sender: TObject);
begin
  Screen.Cursor := crHourglass;

  if TControl(Sender).Tag = 1 then begin
    Fdate1 := StartOfTheMonth(IncMonth(Fdate1, 1));
  end;

  if TControl(Sender).Tag = 2 then begin
    Fdate1 := StartOfTheMonth(IncMonth(Fdate1, -1));
  end;

  Fdate2 := IncMonth(Fdate1, 1) - 1;
  dxBarSubItem3.Caption := FormatDateTime('mmmm yyyy', Fdate1);
  dxBarManager1Bar1.Reset;

  PageControl1Change(nil);

  Screen.Cursor := crDefault;
end;


procedure TfmVagonArenda.dxBarButton43Click(Sender: TObject);
begin
  if not SP_VagonArenda.Eof then begin
    fmContractAdd := TfmContractAdd.Create(Application, cxGrid1DBBandedTableView1type_contract.DataBinding.Field.AsInteger);
    fmContractAdd._SetUpdate := cxGrid1DBBandedTableView1contract_id.DataBinding.Field.AsInteger;
    if fmContractAdd.ShowModal=mrOK then
      RefreshQueryGrid(cxGrid1DBBandedTableView1, 'vagon_arenda_id', cxGrid1DBBandedTableView1vagon_arenda_id.DataBinding.Field.AsInteger);
  end;
end;

procedure TfmVagonArenda.dxBarButton4Click(Sender: TObject);
begin
  case TdxBarButton(Sender).ClickItemLink.Owner.Owner.Tag of
    1 : PrintcxGrid(cxGrid1DBBandedTableView1);
    2 : PrintcxGrid(cxGrid2DBBandedTableView1);
    3 : PrintcxGrid(cxGrid3DBBandedTableView1);
    4 : PrintcxGrid(cxGrid4DBBandedTableView1);
    5 : PrintcxGrid(cxGrid5DBBandedTableView1);
  end;
end;

procedure TfmVagonArenda.dxBarButton56Click(Sender: TObject);
begin
  PageControl1Change(nil);
end;

procedure TfmVagonArenda.dxBarButton59Click(Sender: TObject);
begin
  UsersSettingModify(TComponent(Sender).Tag, TForm(self).Name, TcxControl(cxGrid1DBBandedTableView1), fmMain.Lis);
end;

procedure TfmVagonArenda.dxBarButton5Click(Sender: TObject);
begin
  SetRecordColor('vagon_arenda_id', cxGrid1DBBandedTableView1, 'VAGON_ARENDA2', (TMenuItem(Sender).Tag=0));
  RefreshQueryGrid(cxGrid1DBBandedTableView1, 'vagon_arenda_id', cxGrid1DBBandedTableView1vagon_arenda_id.DataBinding.Field.AsInteger);
end;

procedure TfmVagonArenda.dxBarButton60Click(Sender: TObject);
var i : integer;
   SP : TADOStoredProc;
begin
  SP := TADOStoredProc.Create(nil);
  SP.Connection := fmMain.Lis;
  SP.ProcedureName := 'sp_vagon_repair_fact_modify;1';
  SP.Parameters.Refresh;

  if Application.MessageBox('Вы точно уверены?', 'Внимание', MB_OKCANCEL) = IDOK then begin
    Screen.Cursor := -11;
    for i := 0 to cxGrid4DBBandedTableView1.Controller.SelectedRowCount - 1 do begin
      SP.Close;
      SP.Parameters.Refresh;
      SP.Parameters.ParamByName('@vagon_repair_fact_id').Value := cxGrid4DBBandedTableView1.Controller.SelectedRows[i].Values[cxGrid4DBBandedTableView1.GetColumnByFieldName('vagon_repair_fact_id').Index];
      SP.Parameters.ParamByName('@type_action').Value  := TComponent(Sender).Tag;

        try
          SP.ExecProc;
          ShowTextMessage('Осталось ' + IntToStr(cxGrid4DBBandedTableView1.Controller.SelectedRowCount - i) + ' записей...', False);
          if SP.Parameters.ParamByName('@vagon_repair_fact_id').Value = -9 then Application.MessageBox('Ошибка при обновлении!','Внимание',MB_OK);
        except
        end;
    end;
    ShowTextMessage;
    RefreshQueryGrid(cxGrid4DBBandedTableView1, 'vagon_repair_fact_id');
    RefreshQueryGrid(cxGrid1DBBandedTableView1, 'vagon_arenda_id',cxGrid1DBBandedTableView1vagon_arenda_id.DataBinding.Field.AsInteger);
  end;
end;

procedure TfmVagonArenda.dxBarButton65Click(Sender: TObject);
var                 Q : TADOQuery;
             i, recNo : integer;
            sl_act_id : TStringList;
         cxGridColumn : TcxGridDBBandedColumn;
        str_expeditor : array [1..2] of string;
           array_data,
       retActSettings,
  exApp, exWkb, exWks,
  cell1, cell2, range : Variant;
begin
//выгрузка в Excel актов ввода / вывода
  if cxGrid1DBBandedTableView1.Controller.SelectedRowCount < 1 then
    Exit;

  sl_act_id := TStringList.Create;
  sl_act_id.Duplicates := dupIgnore;

  if TComponent(Sender).Tag = 0 then
    cxGridColumn := cxGrid1DBBandedTableView1act_begin_id
  else
    cxGridColumn := cxGrid1DBBandedTableView1act_end_id;

  //заполняем sl_act_id уникальными id
  for i := 0 to TcxGridDBBandedTableView(cxGridColumn.GridView).Controller.SelectedRowCount -1 do begin
      if TcxGridDBBandedTableView(cxGridColumn.GridView).Controller.SelectedRows[i].Values[cxGridColumn.Index] <> null then
        sl_act_id.Add(VarToStr(TcxGridDBBandedTableView(cxGridColumn.GridView).Controller.SelectedRows[i].Values[cxGridColumn.Index]));
  end;

  Q := TADOQuery.Create(nil);
  Q.Connection := fmMain.Lis;
  Q.SQL.Text := 'SELECT a.vagon_arenda_acts_cod, a.vagon_arenda_date, v.contract_cod, v.contract_date_begin, v.firm_name_short, v.firm_self_name_short, ' +
  'v.num_vagon, v.rod_vagon_name, v.node_begin_name, v.node_end_name '+
  'FROM vagon_arenda_acts a ';

  try

    if TComponent(Sender).Tag = 0 then
      Q.SQL.Add('LEFT JOIN view_vagon_arenda2_upd v ON v.contract_id = a.contract_id AND act_begin_id = vagon_arenda_acts_id WHERE vagon_arenda_acts_id = :acts_id')
    else
      Q.SQL.Add('LEFT JOIN view_vagon_arenda2_upd v ON v.contract_id = a.contract_id AND act_end_id   = vagon_arenda_acts_id WHERE vagon_arenda_acts_id = :acts_id');

    for i := 0 to sl_act_id.Count - 1 do begin

      retActSettings := SaveActsBeginArenda(fmMain.Lis, Fusr_pwd, sl_act_id.Strings[i], 55, 1, 0);
      if retActSettings[0] = -9 then
        exit;

      Screen.Cursor := crHourglass;

      ShowTextMessage('Формирование отчёта...', False);

      ShowTextMessage('Запуск Excel ...', False);

      Q.Close;
      Q.Parameters.ParamByName('acts_id').Value := sl_act_id.Strings[i];
      Q.Open;
      Q.First;

      //array_data := VarArrayCreate([1, cnt_record, 0, cnt_column], varVariant);
      array_data := VarArrayCreate([1, Q.RecordCount, 0, 5], varVariant);

      exApp := CreateOleObject('Excel.Application');
      exWkb := exApp.Workbooks.Add(GetDocBlob(fmMain.Lis, 55));
      exWkb := exApp.ActiveWorkbook;
      exWks := exWkb.WorkSheets[1];

      // Заполняем шапку и подписи
      exWks.Range['B2'].Value := 'Акт № ' + Q.FieldByName('vagon_arenda_acts_cod').AsString;
      if TComponent(Sender).Tag = 0 then
        exWks.Range['B4'].Value := exWks.Range['B4'].Value + VarToStr(retActSettings[3][1]) + ' г. по ' + VarToStr(retActSettings[3][2]) + ' г.'
      else begin
        exWks.Range['B4'].Value := 'приема-передачи вагонов из аренды за период с ' + VarToStr(retActSettings[3][1]) + ' г. по ' + VarToStr(retActSettings[3][2]) + ' г.';
        exWks.Range['G18'].Value:= 'Дата передачи из аренды';
      end;

      exWks.Range['B5'].Value := exWks.Range['B5'].Value + Q.FieldByName('contract_cod').AsString + FormatDateTime(' от dd.mm.yyyy г.', Q.FieldByName('contract_date_begin').AsDateTime);

      exWks.Range['H7'].Value := FormatDateTime('''"''dd''"'' mmmm yyyy г.', Q.FieldByName('vagon_arenda_date').AsDateTime);

      exWks.Range['B9'].Value := '        ' + VarToStr(retActSettings[12][1]) + ', именуемое в дальнейшем "Исполнитель", в лице ' +
                                 VarToStr(retActSettings[4][2]) + ', с одной стороны, ' + Q.FieldByName('firm_name_short').AsString +
                                 ', именуемое в дальнейшем "Заказчик", в лице ' + VarToStr(retActSettings[5][2]) +
                                 ', с другой стороны, и вместе в дальнейшем именуемые "Стороны", составили настоящий Акт о нижеследующем: ';

      recNo := 1;
      while not Q.eof do begin
        array_data[recNo, 0] := recNo;
        array_data[recNo, 1] := Q.FieldByName('num_vagon'        ).Value;
        array_data[recNo, 2] := Q.FieldByName('rod_vagon_name'   ).Value;
        if TComponent(Sender).Tag = 0 then
          array_data[recNo, 3] := Q.FieldByName('node_begin_name').Value
        else
          array_data[recNo, 3] := Q.FieldByName('node_end_name'  ).Value;
        array_data[recNo, 4] := Q.FieldByName('vagon_arenda_date').Value;

        inc(recNo);

        Q.Next;
      end;

      //exWks.Rows[IntToStr(18 + recNo)].Delete;

      // Левая верхняя ячейка области, в которую будем выводить данные
      cell1 := exWks.Cells[19, 3];
      // Правая нижняя ячейка области, в которую будем выводить данные
      cell2 := exWks.Cells[Q.RecordCount + 18, 7];
      // Область, в которую будем выводить данные
      range := exWks.Range[cell1, cell2];
      // Вывод данных
      range.Value := array_data;
      //очищаем массив
      VarClear(array_data);

      {устанавливаем черное выделение границ области данны}
      exWks.Range['C19:G' + IntToStr(recNo + 17)].Borders[1].LineStyle := 1;
      exWks.Range['C19:G' + IntToStr(recNo + 17)].Borders[2].LineStyle := 1;
      exWks.Range['C19:G' + IntToStr(recNo + 17)].Borders[3].LineStyle := 1;
      exWks.Range['C19:G' + IntToStr(recNo + 17)].Borders[4].LineStyle := 1;

      recNo := recNo + 19;

      exWks.Range['B' + IntToStr(recNo)].Value     := '          Общее количество Вагонов, передаваемых в аренду составляет «' + IntToStr(Q.RecordCount) + '» единица(-ы).';

      exWks.Range['B' + IntToStr(recNo + 1) + ':H' + IntToStr(recNo + 2)].Merge;
      exWks.Range['B' + IntToStr(recNo + 1) + ':H' + IntToStr(recNo + 2)].WrapText := True;
      exWks.Range['B' + IntToStr(recNo + 1)].Value := '          Вагоны технически исправны, соответствуют требованиям ПТЭ и могут следовать по железнодорожным путям общего пользования с установленной скоростью.';

      exWks.Range['B' + IntToStr(recNo + 4)].Font.Bold := True;
      exWks.Range['B' + IntToStr(recNo + 4)].Font.Size := 11;
      exWks.Range['B' + IntToStr(recNo + 4)].Value     := 'от ' + VarToStr(retActSettings[12][1]);

      exWks.Range['B' + IntToStr(recNo + 5) + ':E' + IntToStr(recNo + 7)].Merge;
      exWks.Range['B' + IntToStr(recNo + 5) + ':E' + IntToStr(recNo + 7)].WrapText  := True;
      exWks.Range['B' + IntToStr(recNo + 5) + ':E' + IntToStr(recNo + 7)].Font.Bold := True;
      exWks.Range['B' + IntToStr(recNo + 5) + ':E' + IntToStr(recNo + 7)].Font.Size := 11;
      exWks.Range['B' + IntToStr(recNo + 5)].Value := VarToStr(retActSettings[4][2]);

      exWks.Range['B' + IntToStr(recNo + 8)].Font.Bold := True;
      exWks.Range['B' + IntToStr(recNo + 8)].Font.Size := 11;
      exWks.Range['B' + IntToStr(recNo + 8)].Value     := '_____________/' + copy(VarToStr(retActSettings[13][1]), 1, Pos('(', VarToStr(retActSettings[13][1])) - 1) + '/';

      exWks.Range['F' + IntToStr(recNo + 4)].Font.Bold := True;
      exWks.Range['F' + IntToStr(recNo + 4)].Font.Size := 11;
      exWks.Cells[recNo + 4, 6].HorizontalAlignment := 2;
      exWks.Range['F' + IntToStr(recNo + 4)].Value := 'от ' + Q.FieldByName('firm_name_short').AsString;

      exWks.Range['F' + IntToStr(recNo + 5) + ':H' + IntToStr(recNo + 7)].Merge;
      exWks.Range['F' + IntToStr(recNo + 5) + ':H' + IntToStr(recNo + 7)].WrapText  := True;
      exWks.Range['F' + IntToStr(recNo + 5) + ':H' + IntToStr(recNo + 7)].Font.Bold := True;
      exWks.Range['F' + IntToStr(recNo + 5) + ':H' + IntToStr(recNo + 7)].Font.Size := 11;
      exWks.Cells[recNo + 5, 6].HorizontalAlignment := 2;
      exWks.Range['F' + IntToStr(recNo + 5)].Value := VarToStr(retActSettings[5][2]);

      exWks.Range['F' + IntToStr(recNo + 8)].Font.Bold := True;
      exWks.Range['F' + IntToStr(recNo + 8)].Font.Size := 11;
      exWks.Cells[recNo + 8, 6].HorizontalAlignment := 2;
      exWks.Range['F' + IntToStr(recNo + 8)].Value := '_____________/' + copy(VarToStr(retActSettings[13][7]), 1, Pos('(', VarToStr(retActSettings[13][7])) - 1) + '/';

      exWks.Select;
      exWks.Range['A1'].Select;
      exApp.Visible := True;
      VarClear(exWks); VarClear(exWkb); VarClear(exApp);
    end;
  finally
    Q.Free;
    ShowTextMessage('', True);
    sl_act_id.Free;
    Screen.Cursor := crDefault;
  end;
end;

procedure TfmVagonArenda.dxBarButton7Click(Sender: TObject);
begin
  case TdxBarButton(Sender).ClickItemLink.Owner.Owner.Tag of
    1 : SetdxDBGridColumns(cxGrid1DBBandedTableView1);
    2 : SetdxDBGridColumns(cxGrid2DBBandedTableView1);
    3 : SetdxDBGridColumns(cxGrid3DBBandedTableView1);
    4 : SetdxDBGridColumns(cxGrid4DBBandedTableView1);
  end;
end;

procedure TfmVagonArenda.dxBarButton8Click(Sender: TObject);
begin
  case TdxBarButton(Sender).ClickItemLink.Owner.Owner.Tag of
    1 : cxGrid1DBBandedTableView1.OptionsView.GroupByBox := not cxGrid1DBBandedTableView1.OptionsView.GroupByBox;
    2 : cxGrid2DBBandedTableView1.OptionsView.GroupByBox := not cxGrid2DBBandedTableView1.OptionsView.GroupByBox;
    3 : cxGrid3DBBandedTableView1.OptionsView.GroupByBox := not cxGrid3DBBandedTableView1.OptionsView.GroupByBox;
    4 : cxGrid4DBBandedTableView1.OptionsView.GroupByBox := not cxGrid3DBBandedTableView1.OptionsView.GroupByBox;
  end;
end;

procedure TfmVagonArenda.dxBarButton9Click(Sender: TObject);
begin
  PageControl1Change(nil);
end;

{$REGION 'Фильтр по всем записям'}
procedure TfmVagonArenda.dxBarButton_FilterRecords1Click(Sender: TObject);
begin
  cxGrid1DBBandedTableView1.Filtering.ColumnFilteredItemsList := not dxBarButton_FilterRecords1.Down;
end;
{$ENDREGION 'Фильтр по всем записям'}

procedure TfmVagonArenda.dxBarButton_RentClick(Sender: TObject);
begin
  //SetReportArenda(fmMain.Lis, usr_pwd);
end;

procedure TfmVagonArenda.dxBarPopupMenu5Popup(Sender: TObject);
begin
  if Query_Rates.Active then
    if Query_Rates.RecordCount > 0 then
      dxBarButton42.Enabled := True
    else
      dxBarButton42.Enabled := False
  else
    dxBarButton42.Enabled := False;
end;

procedure TfmVagonArenda.dxBarButton10Click(Sender: TObject);
begin
  Fcnt_select := cxGrid1DBBandedTableView1.Controller.SelectedRecordCount;
  Fstr_vagon_arenda_id := cx_GetSelectedValues(cxGrid1, 'vagon_arenda_id');
  Fstr_num_vagon := cx_GetSelectedValues(cxGrid1, 'num_vagon');
  ModalResult := mrOk;
end;

procedure TfmVagonArenda.dxBarButton14Click(Sender: TObject);
type
  TFunc = function(AppHand:THandle) : Variant;
var List : TStringList;
       i : integer;
 cxGridDBBandedTableView : TcxGridDBBandedTableView;
  FDic   : TFunc;
  handle : THandle;
  v      : Variant;
  str    : string;
  aStr   : array of string;
begin

  cxGridDBBandedTableView := cxGrid1DBBandedTableView1;

  handle := LoadLibrary('dictionary.dll');
  @FDic := GetProcAddress(handle, 'CreateWndChoose');
  v := FDic(Application.Handle);
  str := v[0];
  FreeLibrary(handle);

  List := TStringList.Create;
  List.Text := str;
  SetLength(aStr, List.Count);
  str := '';
  for i := 0 to List.Count - 1 do
  begin
    aStr[i] := List[i];
    str := str  + List[i] + ', ';
  end;
  Delete(str, Length(str) - 1, 1);
  List.Free;

  Screen.Cursor := crHourglass;

  cxGridDBBandedTableView.DataController.DataSet.DisableControls;
  with cxGridDBBandedTableView.DataController.Filter do begin
    Clear;
    Options := Options + [fcoCaseInsensitive];
    Root.BoolOperatorKind := fboAnd;
    BeginUpdate;
    Root.AddItem(cxGridDBBandedTableView.GetColumnByFieldName('num_vagon'), foInList, aStr, str);
    EndUpdate;
    Active := True;
  end;
  cxGridDBBandedTableView.DataController.DataSet.EnableControls;

  Screen.Cursor := crDefault;
end;


procedure TfmVagonArenda.dxBarButton18Click(Sender: TObject);
var       SP : TADOStoredProc;
  SP_repairs : TADOStoredProc;
begin
  if Application.MessageBox('Загрузить информацию о ремонте из технического состояния?', 'Внимание', MB_OKCANCEL) = ID_OK then begin
    Screen.Cursor := crHourglass;

    SP := TADOStoredProc.Create(nil);
    SP.Connection := fmMain.Lis;
    SP.ProcedureName := 'sp_vagon_arenda_repair_load_from_tech;1';
    SP.Parameters.Refresh;
    SP.Parameters.ParamByName('@users_group_id').Value := Fusr_pwd.user_group_id;
    SP.Parameters.ParamByName('@date1'         ).Value := Fdate1;
    SP.Parameters.ParamByName('@date2'         ).Value := Fdate2;
    SP.Open;

    SP_repairs := TADOStoredProc.Create(nil);
    SP_repairs.Connection := fmMain.Lis;

    while not SP.Eof do begin
      SP_repairs.ProcedureName := 'sp_vagon_arenda_repair_modify;1';
      SP_repairs.Parameters.Refresh;

      SP_repairs.Parameters.ParamByName('@vagon_arenda_repair_id').Value   :=  -9;
      SP_repairs.Parameters.ParamByName('@type_action'           ).Value   :=  0;
      SP_repairs.Parameters.ParamByName('@str_num_vagon'         ).Value   :=  SP.FieldByName('num_vagon').AsString;

      if SP.FieldByName('date_repare_begin').IsNull then
        SP_repairs.Parameters.ParamByName('@date_begin').Value   :=  SP.FieldByName('date_breakage').Value
      else
        SP_repairs.Parameters.ParamByName('@date_begin').Value   :=  SP.FieldByName('date_repare_begin').Value;

      if SP.FieldByName('date_repare_end').IsNull then
        SP_repairs.Parameters.ParamByName('@date_end').Value   :=  Fdate2
      else
        SP_repairs.Parameters.ParamByName('@date_end').Value   :=  SP.FieldByName('date_repare_end').Value;

      SP_repairs.Parameters.ParamByName('@days'                  ).Value   :=  NULL;

      if SP.FieldByName('date_repare_begin').IsNull then
        SP_repairs.Parameters.ParamByName('@date_begin_owner').Value   :=  SP.FieldByName('date_breakage').Value
      else
        SP_repairs.Parameters.ParamByName('@date_begin_owner').Value   :=  SP.FieldByName('date_repare_begin').Value;

      if SP.FieldByName('date_repare_end').IsNull then
        SP_repairs.Parameters.ParamByName('@date_end_owner').Value   :=  Fdate2
      else
        SP_repairs.Parameters.ParamByName('@date_end_owner').Value   :=  SP.FieldByName('date_repare_end').Value;

      SP_repairs.Parameters.ParamByName('@days_owner'            ).Value   :=  NULL;

      SP_repairs.Parameters.ParamByName('@comments'              ).Value   :=  'Импорт из Тех. состояния';
      SP_repairs.Parameters.ParamByName('@not_view_in_act_arenda').Value   :=  False;

      SP_repairs.Parameters.ParamByName('@type_repair_name').Value   :=  SP.FieldByName('type_repair_name').Value;
      SP_repairs.Parameters.ParamByName('@breakage_name').Value      :=  SP.FieldByName('breakage_name').Value;

      try
        SP_repairs.ExecProc;
      except
      end;
      ShowTextMessage('Осталось ' + IntToStr(SP.RecordCount - SP.RecNo) + ' записей из ' + InttoStr(SP.RecordCount), False);
      SP.Next;
    end;
    ShowTextMessage;

    dxBarButton9Click(self);
    Screen.Cursor := crDefault;
  end;
end;

procedure TfmVagonArenda.dxBarButton19Click(Sender: TObject);
var                SP : TADOStoredProc;
  str_vagon_arenda_id : string;
           bargain_id : integer;
                    Q : TADOQuery;
         _contract_id : integer;
begin
  Screen.Cursor := crHourGlass;

  str_vagon_arenda_id := cx_GetSelectedValues(cxGrid1, 'vagon_arenda_id');
  if str_vagon_arenda_id = '' then
    str_vagon_arenda_id := '-9';

  Q := TADOQuery.Create(Self);
  Q.Connection := fmMain.Lis;
  Q.SQL.Add('SELECT contract_id, firm_customer_name, firm_self_name, contract_cod, currency_id, note, firm_self, ''Клиент'' as type_contract_name');
  Q.SQL.Add('FROM view_contract_rights');
  Q.SQL.Add('WHERE type_contract = 0 AND date_end >= GETDATE() - 31');
  Q.SQL.Add('ORDER BY firm_customer_name, type_contract, contract_cod');
  Q.Open;
  fmFilter := TfmFilter.Create(0, Q, 'contract_id', 'contract_cod', 'firm_customer_name');
  fmFilter._SetContract4ScoreInvoice := True;
  fmFilter._SelectIndexColumn := 1;
  if fmFilter.ShowModal = mrOk then begin
    _contract_id := fmFilter.GetId;

    SP := TADOStoredProc.Create(nil);
    SP.Connection := fmMain.Lis;
    SP.CommandTimeout := 600;
    SP.ProcedureName := 'sp_vagon_arenda_to_bargain';
    SP.Parameters.Refresh;
    SP.Parameters.ParamByName('@type_arenda'        ).Value := PageControl1.ActivePageIndex;
    SP.Parameters.ParamByName('@contract_id'        ).Value := _contract_id;
    SP.Parameters.ParamByName('@date_begin'         ).Value := Fdate1;
    SP.Parameters.ParamByName('@date_end'           ).Value := Fdate2;
    SP.Parameters.ParamByName('@str_vagon_arenda_id').Value := str_vagon_arenda_id;

    try
      SP.ExecProc;
      bargain_id := SP.Parameters.ParamByName('@bargain_id').Value;
      SP.Free;

      OpenAgree4List(Fdate1, Fdate1, False, IntToStr(bargain_id));
    except
      SP.Free;
    end;
  end;

  Q.Free;
  Screen.Cursor := crDefault;
end;

procedure TfmVagonArenda.dxBarButton23Click(Sender: TObject);
var   exWks, exApp           : Variant;
      row_insert,rate_nds    : integer;
      date1,date2            : TDateTime;
      SP                     : TADOStoredProc;
      sum, sum_nds, sum_not_nds: Extended;
      sum_print,sum_nds_print,sum_not_nds_print,nds_print : string;
begin
 // Showmessage('п' + CHR(39) + 'ять');
 // exit;
  date1 := StartOfTheMonth(Date);
  date2 := EndOfTheMonth(Date);

  fmPeriod := TfmPeriod.Create(Application, date1, date2, 3);
  if fmPeriod.ShowModal=mrOK then begin
    Screen.Cursor := crHourglass;
    date1 := fmPeriod._GetMonth;
    date2 := IncMonth(date1) - 1;;
  end else exit;

  Screen.Cursor := crHourglass;
  ShowTextMessage('Запуск Excel...', False);
  exApp := CreateOleObject('Excel.Application');
  exApp.Workbooks.Add(GetDocBlob(fmMain.Lis,TComponent(Sender).Tag));
  exWks := exApp.ActiveWorkbook.WorkSheets[1];

  exWks.Range['B4'].Value := ' За период: ' + DateToStr(date1) + ' - ' + DateToStr(date2);
  row_insert := 7;

  SP := TADOStoredProc.Create(nil);
  SP.Connection := fmMain.Lis;
  SP.ProcedureName := 'sp_vagon_arenda_act_new';
  SP.Parameters.Refresh;
  SP.Parameters.ParamByName('@subarenda_contract_id').Value := -9;
  SP.Parameters.ParamByName('@date_begin').Value     := date1;
  SP.Parameters.ParamByName('@date_end').Value       := date2;
  SP.Parameters.ParamByName('@type_report').Value    := 125;
  SP.Parameters.ParamByName('@users_group_id').Value := Self.Fusr_pwd.user_group_id;

  SP.Open;
  SP.First;

  while not SP.Eof do begin
    exWks.Range['B'+IntToStr(row_insert)].Value := SP.FieldByName('firm_name_short').Value;
    exWks.Range['C'+IntToStr(row_insert)].Value := SP.FieldByName('rate_val').Value;
    exWks.Range['D'+IntToStr(row_insert)].Value := SP.FieldByName('count_total').Value;
    exWks.Range['E'+IntToStr(row_insert)].Value := SP.FieldByName('firm_name_short_s').Value;
    exWks.Range['F'+IntToStr(row_insert)].Value := SP.FieldByName('rate_val_s').Value;
    exWks.Range['G'+IntToStr(row_insert)].Value := SP.FieldByName('count_s').Value;
    SP.Next;
    if not SP.Eof then begin
      xCopyRow(exApp,row_insert + 1,row_insert +1);
      inc(row_insert);
    end;
  end;

  exApp.Rows[IntToStr(row_insert + 1) + ':' + IntToStr(row_insert + 1)].Select;
  exApp.Selection.Delete;

  exWks.Range['D'+IntToStr(row_insert+1)].Value := SP.FieldByName('count_all').Value;
  exApp.Range['A1'].Select;
  exApp.Visible := True;

  SP.Free;
  exApp := Null;  exWks := Null;
  ShowTextMessage('', True);
  Screen.Cursor := crDefault;
  VarClear(exWks); VarClear(exApp);
end;


procedure TfmVagonArenda.dxBarButton24Click(Sender: TObject);
var   exWks, exApp           : Variant;
      row_insert,rate_nds    : integer;
      date1,date2            : TDateTime;
      SP                     : TADOStoredProc;
      Q,Q1                   : TADOQuery;
      sum, sum_nds, sum_not_nds: Extended;
      sum_print,sum_nds_print,sum_not_nds_print,nds_print : string;
      num_vagon,firm_name_short,sfirm_name_short     : string;
      start_num_vagon : integer;
begin
  date1 := StartOfTheMonth(Date);
  date2 := EndOfTheMonth(Date);

  fmPeriod := TfmPeriod.Create(Application, date1, date2, 3);
  if fmPeriod.ShowModal=mrOK then begin
    Screen.Cursor := crHourglass;
    date1 := fmPeriod._GetMonth;
    date2 := IncMonth(date1) - 1;;
  end else exit;

  Screen.Cursor := crHourglass;
  ShowTextMessage('Запуск Excel...', False);
  exApp := CreateOleObject('Excel.Application');
  exApp.Workbooks.Add(GetDocBlob(fmMain.Lis,TComponent(Sender).Tag));
  exWks := exApp.ActiveWorkbook.WorkSheets[1];

  exWks.Range['B2'].Value := ' За период: ' + DateToStr(date1) + ' - ' + DateToStr(date2);
  row_insert := 6;
  num_vagon := '';

  SP := TADOStoredProc.Create(nil);
  SP.Connection := fmMain.Lis;
  SP.ProcedureName := 'sp_vagon_arenda_act_new';
  SP.Parameters.Refresh;
  SP.Parameters.ParamByName('@subarenda_contract_id').Value := -9;
  SP.Parameters.ParamByName('@date_begin').Value     := date1;
  SP.Parameters.ParamByName('@date_end').Value       := date2;
  SP.Parameters.ParamByName('@type_report').Value    := 126;
  SP.Parameters.ParamByName('@users_group_id').Value := Fusr_pwd.user_group_id;
  SP.Open;
  SP.First;

  while not SP.Eof do begin
    if num_vagon <> SP.FieldByName('num_vagon').AsString then begin
      if (num_vagon <> '') and (start_num_vagon < (row_insert - 1)) then begin
        exApp.DisplayAlerts := False;

        exWks.Range[exWks.cells[start_num_vagon, 2], exWks.cells[row_insert - 1, 2]].Merge;
        exWks.Range[exWks.cells[start_num_vagon, 3], exWks.cells[row_insert - 1, 3]].Merge;
        exWks.Range[exWks.cells[start_num_vagon, 4], exWks.cells[row_insert - 1, 4]].Merge;
        exWks.Range[exWks.cells[start_num_vagon, 5], exWks.cells[row_insert - 1, 5]].Merge;
        exWks.Range[exWks.cells[start_num_vagon, 6], exWks.cells[row_insert - 1, 6]].Merge;
        exWks.Range[exWks.cells[start_num_vagon, 7], exWks.cells[row_insert - 1, 7]].Merge;
        exWks.Range[exWks.cells[start_num_vagon, 8], exWks.cells[row_insert - 1, 8]].Merge;
        exWks.Range[exWks.cells[start_num_vagon, 9], exWks.cells[row_insert - 1, 9]].Merge;
        exWks.Range[exWks.cells[start_num_vagon, 10], exWks.cells[row_insert - 1, 10]].Merge;
        exWks.Range[exWks.cells[start_num_vagon, 11], exWks.cells[row_insert - 1, 11]].Merge;

        exWks.cells[start_num_vagon, 2].VerticalAlignment := -4108;
        exWks.cells[start_num_vagon, 3].VerticalAlignment := -4108;
        exWks.cells[start_num_vagon, 4].VerticalAlignment := -4108;
        exWks.cells[start_num_vagon, 5].VerticalAlignment := -4108;
        exWks.cells[start_num_vagon, 6].VerticalAlignment := -4108;
        exWks.cells[start_num_vagon, 7].VerticalAlignment := -4108;
        exWks.cells[start_num_vagon, 8].VerticalAlignment := -4108;
        exWks.cells[start_num_vagon, 9].VerticalAlignment := -4108;
        exWks.cells[start_num_vagon, 10].VerticalAlignment := -4108;
        exWks.cells[start_num_vagon, 11].VerticalAlignment := -4108;

        exWks.Range['U'+IntToStr(row_insert-1)].Formula := '= H'+IntToStr(row_insert-2)+ '-Q' +IntToStr(row_insert-1);

        if sfirm_name_short = SP.FieldByName('sfirm_name_short').AsString then begin

          exWks.Range[exWks.cells[start_num_vagon, 12], exWks.cells[row_insert - 1, 12]].Merge;
          exWks.Range[exWks.cells[start_num_vagon, 13], exWks.cells[row_insert - 1, 13]].Merge;
          exWks.Range[exWks.cells[start_num_vagon, 14], exWks.cells[row_insert - 1, 14]].Merge;
          exWks.Range[exWks.cells[start_num_vagon, 15], exWks.cells[row_insert - 1, 15]].Merge;
          exWks.Range[exWks.cells[start_num_vagon, 16], exWks.cells[row_insert - 1, 16]].Merge;
          exWks.Range[exWks.cells[start_num_vagon, 17], exWks.cells[row_insert - 1, 17]].Merge;
          exWks.Range[exWks.cells[start_num_vagon, 18], exWks.cells[row_insert - 1, 18]].Merge;
          exWks.Range[exWks.cells[start_num_vagon, 19], exWks.cells[row_insert - 1, 19]].Merge;
          exWks.Range[exWks.cells[start_num_vagon, 20], exWks.cells[row_insert - 1, 20]].Merge;

          exWks.cells[start_num_vagon, 12].VerticalAlignment := -4108;
          exWks.cells[start_num_vagon, 13].VerticalAlignment := -4108;
          exWks.cells[start_num_vagon, 14].VerticalAlignment := -4108;
          exWks.cells[start_num_vagon, 15].VerticalAlignment := -4108;
          exWks.cells[start_num_vagon, 16].VerticalAlignment := -4108;
          exWks.cells[start_num_vagon, 17].VerticalAlignment := -4108;
          exWks.cells[start_num_vagon, 18].VerticalAlignment := -4108;
          exWks.cells[start_num_vagon, 19].VerticalAlignment := -4108;
          exWks.cells[start_num_vagon, 20].VerticalAlignment := -4108;
        end;

        exApp.DisplayAlerts := True;
      end;
      num_vagon := SP.FieldByName('num_vagon').AsString;
      sfirm_name_short := SP.FieldByName('sfirm_name_short').AsString;
      start_num_vagon := row_insert;
    end;



    exWks.Range['B'+IntToStr(row_insert)].Value := SP.FieldByName('num_vagon').Value;
    exWks.Range['C'+IntToStr(row_insert)].Value := SP.FieldByName('firm_name_short').Value;
    exWks.Range['D'+IntToStr(row_insert)].Value := SP.FieldByName('contract_cod').Value;
    exWks.Range['E'+IntToStr(row_insert)].Value := SP.FieldByName('date_begin').Value;
    exWks.Range['F'+IntToStr(row_insert)].Value := SP.FieldByName('count_day').Value;
    exWks.Range['G'+IntToStr(row_insert)].Value := SP.FieldByName('scount_day_r').Value;

    exWks.Range['I'+IntToStr(row_insert)].Value := SP.FieldByName('rate_val').Value;
    exWks.Range['J'+IntToStr(row_insert)].Value := SP.FieldByName('type_nds_cod').Value;
    //exWks.Range['I'+IntToStr(row_insert)].Value := SP.FieldByName('').Value;
    exWks.Range['L'+IntToStr(row_insert)].Value := SP.FieldByName('sfirm_name_short').Value;
    exWks.Range['M'+IntToStr(row_insert)].Value := SP.FieldByName('scontract_cod').Value;
    exWks.Range['N'+IntToStr(row_insert)].Value := SP.FieldByName('sdate_begin').Value;
    exWks.Range['O'+IntToStr(row_insert)].Value := SP.FieldByName('scount_day').Value;
    exWks.Range['P'+IntToStr(row_insert)].Value := SP.FieldByName('count_day_r').Value;


    exWks.Range['R'+IntToStr(row_insert)].Value := SP.FieldByName('srate_val').Value;
    exWks.Range['S'+IntToStr(row_insert)].Value := SP.FieldByName('stype_nds_cod').Value;
    //exWks.Range['P'+IntToStr(row_insert)].Value := SP.FieldByName('').Value;
    //exWks.Range['Q'+IntToStr(row_insert)].Value := SP.FieldByName('').Value;
    exWks.Range['V'+IntToStr(row_insert)].Value := SP.FieldByName('days_repair').Value;
    exWks.Range['W'+IntToStr(row_insert)].Value := SP.FieldByName('type_repair_name').Value;
    exWks.Range['X'+IntToStr(row_insert)].Value := SP.FieldByName('fact_sum_repair').Value;
    exWks.Range['Y'+IntToStr(row_insert)].Value := SP.FieldByName('agent_act_date').Value;

    //exWks.Range['U'+IntToStr(row_insert)].Value := (SP.FieldByName('scount_day').Value - SP.FieldByName('count_day_r').Value) - (SP.FieldByName('count_day').Value - SP.FieldByName('scount_day_r').Value);

    SP.Next;
    if not SP.Eof then begin
      xCopyRow(exApp,row_insert + 1,row_insert +1);
      inc(row_insert);
    end;
  end;

  exApp.Rows[IntToStr(row_insert + 1) + ':' + IntToStr(row_insert + 1)].Select;
  exApp.Selection.Delete;

  //exWks.Range['D'+IntToStr(row_insert+1)].Value := SP.FieldByName('count_all').Value;
  exApp.Range['A1'].Select;
  exApp.Visible := True;

  Q.Free;
  Q1.Free;
  SP.Free;
  exApp := Null;  exWks := Null;
  ShowTextMessage('', True);
  Screen.Cursor := crDefault;
  VarClear(exWks); VarClear(exApp);
end;



procedure TfmVagonArenda.SetActBeginDate(act_date_begin: TDateTime);
begin
//  cxGrid1DBBandedTableView1.DataController.Filter.Clear;
  cxGrid1DBBandedTableView1.DataController.Filter.Options := cxGrid1DBBandedTableView1.DataController.Filter.Options + [fcoCaseInsensitive];
  cxGrid1DBBandedTableView1.DataController.Filter.Root.BoolOperatorKind := fboAnd;
  cxGrid1DBBandedTableView1.DataController.Filter.Root.AddItem(cxGrid1DBBandedTableView1act_begin_date, foLike, '%' + DateToStr(act_date_begin) + '%', '[' + DateToStr(act_date_begin) + ']');
  cxGrid1DBBandedTableView1.DataController.Filter.Active := True;
end;

procedure TfmVagonArenda.SetMonthPeriod(date1: TDateTime);
begin
  Fdate1 := StartOfTheMonth(date1);
  Fdate2 := IncMonth(Fdate1, 1) - 1;
  dxBarSubItem3.Caption := FormatDateTime('mmmm yyyy', Fdate1);
  PageControl1.ActivePageIndex := 0;
  PageControl1Change(nil);
  cxDateEdit1.EditValue := StartOfTheYear(Fdate1);
  cxDateEdit2.EditValue := Fdate1;
  cxDateEdit3.EditValue := Fdate1 - 30;
  cxDateEdit4.EditValue := Fdate1 + 1;
  Ftype_period := 3;
end;

procedure TfmVagonArenda.SetActEndDate(act_end_begin: TDateTime);
begin
//  cxGrid1DBBandedTableView1.DataController.Filter.Clear;
  cxGrid1DBBandedTableView1.DataController.Filter.Options := cxGrid1DBBandedTableView1.DataController.Filter.Options + [fcoCaseInsensitive];
  cxGrid1DBBandedTableView1.DataController.Filter.Root.BoolOperatorKind := fboAnd;
  cxGrid1DBBandedTableView1.DataController.Filter.Root.AddItem(cxGrid1DBBandedTableView1act_begin_date, foLike, '%' + DateToStr(act_end_begin) + '%', '[' + DateToStr(act_end_begin) + ']');
  cxGrid1DBBandedTableView1.DataController.Filter.Active := True;
end;

procedure TfmVagonArenda.SetContractID(contract_id: integer);
var Q : TADOQuery;
begin
  Q := TADOQuery.Create(nil);
  Q.Connection := Fconnect;
  Q.SQL.Add('SELECT contract_cod FROM view_contract WHERE contract_id = ' + IntToStr(contract_id));
  Q.Open;

//  cxGrid1DBBandedTableView1.DataController.Filter.Clear;
  cxGrid1DBBandedTableView1.DataController.Filter.Options := cxGrid1DBBandedTableView1.DataController.Filter.Options + [fcoCaseInsensitive];
  cxGrid1DBBandedTableView1.DataController.Filter.Root.BoolOperatorKind := fboAnd;
  cxGrid1DBBandedTableView1.DataController.Filter.Root.AddItem(cxGrid1DBBandedTableView1contract_cod, foLike, '%' + Q.FieldByName('contract_cod').AsString + '%', '[' + Q.FieldByName('contract_cod').AsString + ']');
  cxGrid1DBBandedTableView1.DataController.Filter.Active := True;

  Q.Free;
end;


end.


