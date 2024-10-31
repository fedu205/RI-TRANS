unit Acts;

interface

uses
  Windows,  Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Default,
  Dialogs, DB, ImageList, ExtCtrls, StdCtrls, ComObj, StrUtils,ImgList, ADODB,
  cxGraphics, cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit,
  cxDBData, cxPropertiesStore,  dxBar, cxClasses, cxGridLevel, cxControls, cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridBandedTableView, cxGridDBBandedTableView, cxGrid, dxStatusBar, cxCurrencyEdit,  cxPC, cxCalendar, cxLabel, cxBarEditItem,
  cxCheckBox, cxDBLookupComboBox, cxColorComboBox, cxLookAndFeels, cxLookAndFeelPainters, dxSkinsCore, dxSkinBlack, dxSkinBlue,
  dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle,
  dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMetropolis, dxSkinMetropolisDark, dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013DarkGray,
  dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus, dxSkinSilver,
  dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008, dxSkinTheAsphaltWorld, dxSkinsDefaultPainters, dxSkinValentine, dxSkinVS2010,
  dxSkinWhiteprint, dxSkinXmas2008Blue, dxSkinscxPCPainter, cxNavigator, dxBarBuiltInMenu, dxSkinsdxBarPainter, DBClient,
  dxSkinOffice2016Colorful, dxSkinOffice2016Dark, dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark, dxSkinVisualStudio2013Light,
  cxGridDBTableView, cxImageList, cxDataControllerConditionalFormattingRulesManagerDialog, dxSkinTheBezier, dxDateRanges,
  dxSkinOffice2019Colorful, dxScrollbarAnnotations, dxSkinBasic, dxSkinOffice2019Black, dxSkinOffice2019DarkGray, dxSkinOffice2019White;

type
  TfmActs = class(TForm)
    cxGrid1: TcxGrid;
    cxGrid1DBBandedTableView1: TcxGridDBBandedTableView;
    cxGrid1Level1: TcxGridLevel;
    dxBarManager1: TdxBarManager;
    dxBarManager1Bar1: TdxBar;
    dxBarSubItem1: TdxBarSubItem;
    dxBarButton2: TdxBarButton;
    dxBarButton3: TdxBarButton;
    dxBarButton5: TdxBarButton;
    dxBarButton6: TdxBarButton;
    dxBarButton15: TdxBarButton;
    dxBarSubItem5: TdxBarSubItem;
    dxBarButton16: TdxBarButton;
    dxBarButton17: TdxBarButton;
    dxBarButton18: TdxBarButton;
    dxBarButton19: TdxBarButton;
    dxBarButton23: TdxBarButton;
    dxBarPopupMenu1: TdxBarPopupMenu;
    Query_Acts: TADOQuery;
    DS_Acts: TDataSource;
    cxPropertiesStore1: TcxPropertiesStore;
    cxGrid1DBBandedTableView1acts_id: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1acts_cod: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1acts_type_id: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1acts_type_name: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1acts_type_cod: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1contract_id: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1contract_cod: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1contract_date_begin: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1firm_customer_name: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1firm_self_name: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1date_modify: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1users_owner: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1FIO_users: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1global_color: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1date_period: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1acts_date: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1date_begin: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1date_end: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1self_director: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1self_basis: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1customer_director: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1customer_basis: TcxGridDBBandedColumn;
    Panel3: TPanel;
    GroupBox5: TGroupBox;
    Query_Agree: TADOQuery;
    DS_Agree: TDataSource;
    Query_Invoice_Score: TADOQuery;
    DS_Invoice_Score: TDataSource;
    cxGrid2: TcxGrid;
    cxGrid2DBBandedTableView1: TcxGridDBBandedTableView;
    cxGrid2DBBandedTableView1invoice_score_id: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1score_cod: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1score_date: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1contract_id: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1contract_cod: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1firm_self_name: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1firm_customer_name: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1firm_customer_address: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1firm_customer_name_full: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1FIO_users_owner: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1firm_customer_region_name: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1date_begin: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1brief_name: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1score_period_date_month: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1score_period_date_year: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1score_period_date: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1exchange_val_EUR: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1exchange_val_USD: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1score_sum: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1score_pay: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1score_sign: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1FIO_users: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1global_color: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1currency_id: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1global_copy: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1score_comment: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1set_return: TcxGridDBBandedColumn;
    cxGrid2Level1: TcxGridLevel;
    dxBarPopupMenu_Agree: TdxBarPopupMenu;
    dxBarPopupMenu_Invoice_Score: TdxBarPopupMenu;
    dxBarSubItem2: TdxBarSubItem;
    dxBarSubItem3: TdxBarSubItem;
    Splitter2: TSplitter;
    Splitter4: TSplitter;
    dxBarButton11: TdxBarButton;
    dxBarButton12: TdxBarButton;
    dxBarSubItem4: TdxBarSubItem;
    dxBarButton4: TdxBarButton;
    dxBarSeparator1: TdxBarSeparator;
    cxGrid1DBBandedTableView1acts_sum: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1acts_currency_id: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1acts_currency_cod: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1acts_brief_name: TcxGridDBBandedColumn;
    dxBarButton7: TdxBarButton;
    dxBarButton8: TdxBarButton;
    dxBarButton9: TdxBarButton;
    dxBarButton10: TdxBarButton;
    cxGrid2DBBandedTableView1type_invoice_score: TcxGridDBBandedColumn;
    dxBarSubItem6: TdxBarSubItem;
    cxGrid1DBBandedTableView1contract_agent_id: TcxGridDBBandedColumn;
    dxBarButton22: TdxBarButton;
    dxBarButton24: TdxBarButton;
    cxGrid1DBBandedTableView1docs_status_name: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1docs_id: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1process_step_name: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1acts_comment: TcxGridDBBandedColumn;
    cxPageControl1: TcxPageControl;
    cxTabSheet1: TcxTabSheet;
    cxTabSheet2: TcxTabSheet;
    cxGrid3: TcxGrid;
    cxGrid3DBBandedTableView1: TcxGridDBBandedTableView;
    cxGrid3DBBandedTableView1bargain_id: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1bargain_cod: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1firm_customer_name: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1firm_self_name: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1FIO_users_owner: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1node_begin_name: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1node_end_name: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1brief_name: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1kargoETSNG_name: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1kargoETSNG_group_name: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1vid_transfer_name: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1bargain_nds_name: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1our_rate_val: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1ed_izm_name: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1fact_weight: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1amount_fact: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1amount_units_fact: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1bargain_sum_fact: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1bargain_sum_fact_USD: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1bargain_comiss_USD: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1bargain_sum_fact_RUB: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1bargain_comiss_RUB: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1state_begin_name: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1state_end_name: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1date_modify: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1contract_cod: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1date_period_month: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1date_period_year: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1date_period_finance_name: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1set_bargain_block: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1bargain_correct_group: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1bargain_correct_type_name: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1bargain_note: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1contract_id: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1date_period: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1date_period_finance: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1vid_transfer_cod: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1users_owner_id: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1bargain_correct_type: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1bargain_rights: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1agreement_describe: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1global_color: TcxGridDBBandedColumn;
    cxGrid3Level1: TcxGridLevel;
    cxGrid4: TcxGrid;
    cxGrid4DBBandedTableView1: TcxGridDBBandedTableView;
    cxGrid4DBBandedTableView1fact_repair_id: TcxGridDBBandedColumn;
    cxGrid4DBBandedTableView1score_cod: TcxGridDBBandedColumn;
    cxGrid4DBBandedTableView1score_date: TcxGridDBBandedColumn;
    cxGrid4DBBandedTableView1act_cod: TcxGridDBBandedColumn;
    cxGrid4DBBandedTableView1contract_id: TcxGridDBBandedColumn;
    cxGrid4DBBandedTableView1fact_repair_table_id: TcxGridDBBandedColumn;
    cxGrid4DBBandedTableView1service_id: TcxGridDBBandedColumn;
    cxGrid4DBBandedTableView1detail_num: TcxGridDBBandedColumn;
    cxGrid4DBBandedTableView1act_breakage_date: TcxGridDBBandedColumn;
    cxGrid4DBBandedTableView1detail_status_id: TcxGridDBBandedColumn;
    cxGrid4DBBandedTableView1primary_docs: TcxGridDBBandedColumn;
    cxGrid4DBBandedTableView1primary_docs2: TcxGridDBBandedColumn;
    cxGrid4DBBandedTableView1vagon_id: TcxGridDBBandedColumn;
    cxGrid4DBBandedTableView1rate: TcxGridDBBandedColumn;
    cxGrid4DBBandedTableView1act_date: TcxGridDBBandedColumn;
    cxGrid4DBBandedTableView1quantity: TcxGridDBBandedColumn;
    cxGrid4DBBandedTableView1rate_nds: TcxGridDBBandedColumn;
    cxGrid4DBBandedTableView1num_vagon: TcxGridDBBandedColumn;
    cxGrid4DBBandedTableView1owner_name: TcxGridDBBandedColumn;
    cxGrid4DBBandedTableView1sum: TcxGridDBBandedColumn;
    cxGrid4DBBandedTableView1sum_nds: TcxGridDBBandedColumn;
    cxGrid4DBBandedTableView1sum_total: TcxGridDBBandedColumn;
    cxGrid4DBBandedTableVew1users_owner: TcxGridDBBandedColumn;
    cxGrid4DBBandedTableView1global_color: TcxGridDBBandedColumn;
    cxGrid4DBBandedTableView1FIO_users: TcxGridDBBandedColumn;
    cxGrid4DBBandedTableView1contract_cod: TcxGridDBBandedColumn;
    cxGrid4DBBandedTableView1users_group_id: TcxGridDBBandedColumn;
    cxGrid4DBBandedTableView1firm_customer_name_short: TcxGridDBBandedColumn;
    cxGrid4DBBandedTableView1depo_name: TcxGridDBBandedColumn;
    cxGrid4DBBandedTableView1depo_cod: TcxGridDBBandedColumn;
    cxGrid4DBBandedTableView1node_name: TcxGridDBBandedColumn;
    cxGrid4DBBandedTableView1node_cod: TcxGridDBBandedColumn;
    cxGrid4DBBandedTableView1service_name: TcxGridDBBandedColumn;
    cxGrid4DBBandedTableView1detail_name: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1detail_status_name: TcxGridDBBandedColumn;
    cxGrid4DBBandedTableView1set_vu1920: TcxGridDBBandedColumn;
    cxGrid4DBBandedTableView1set_vu22: TcxGridDBBandedColumn;
    cxGrid4DBBandedTableView1set_vu23: TcxGridDBBandedColumn;
    cxGrid4DBBandedTableView1set_vu36: TcxGridDBBandedColumn;
    cxGrid4DBBandedTableView1set_rd: TcxGridDBBandedColumn;
    cxGrid4DBBandedTableView1set_abu: TcxGridDBBandedColumn;
    cxGrid4DBBandedTableView1set_vu41: TcxGridDBBandedColumn;
    cxGrid4DBBandedTableView1set_act_original: TcxGridDBBandedColumn;
    cxGrid4DBBandedTableView1set_score_original: TcxGridDBBandedColumn;
    cxGrid4DBBandedTableView1type_mh1_name: TcxGridDBBandedColumn;
    cxGrid4DBBandedTableView1type_mh2_name: TcxGridDBBandedColumn;
    cxGrid4DBBandedTableView1date_vu36: TcxGridDBBandedColumn;
    cxGrid4DBBandedTableView1date_build: TcxGridDBBandedColumn;
    cxGrid4DBBandedTableView1date_vu23: TcxGridDBBandedColumn;
    cxGrid4DBBandedTableView1arenda_firm_name: TcxGridDBBandedColumn;
    cxGrid4DBBandedTableView1detail_status_name_buh: TcxGridDBBandedColumn;
    cxGrid4DBBandedTableView1set_zdinv: TcxGridDBBandedColumn;
    cxGrid4DBBandedTableView1detail_date_begin: TcxGridDBBandedColumn;
    cxGrid4DBBandedTableView1detail_date_end: TcxGridDBBandedColumn;
    cxGrid4DBBandedTableView1relation_table_id: TcxGridDBBandedColumn;
    cxGrid4DBBandedTableView1width_truck: TcxGridDBBandedColumn;
    cxGrid4DBBandedTableView1date_modify: TcxGridDBBandedColumn;
    cxGrid4DBBandedTableView1repair_order: TcxGridDBBandedColumn;
    cxGrid4DBBandedTableView1pretenzia_num: TcxGridDBBandedColumn;
    cxGrid4DBBandedTableView1pay_num: TcxGridDBBandedColumn;
    cxGrid4DBBandedTableView1cost_firm_customer_name_short: TcxGridDBBandedColumn;
    cxGrid4DBBandedTableView1cost_contract_cod: TcxGridDBBandedColumn;
    cxGrid4DBBandedTableView1cost_acts_cod: TcxGridDBBandedColumn;
    cxGrid4DBBandedTableView1cost_acts_date: TcxGridDBBandedColumn;
    cxGrid4DBBandedTableView1cost_contract_id: TcxGridDBBandedColumn;
    cxGrid4DBBandedTableView1cost_acts_id: TcxGridDBBandedColumn;
    cxGrid4DBBandedTableView1comis: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1users_color: TcxGridDBBandedColumn;
    cxGrid4DBBandedTableView1date_vagon_depot_arrival: TcxGridDBBandedColumn;
    cxGrid4DBBandedTableView1comis_pct: TcxGridDBBandedColumn;
    cxGrid4DBBandedTableView1doc_original_date: TcxGridDBBandedColumn;
    cxGrid4DBBandedTableView1comment: TcxGridDBBandedColumn;
    cxGrid4DBBandedTableView1cnt_global_doc: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1service_sf_name: TcxGridDBBandedColumn;
    cxGrid4Level1: TcxGridLevel;
    Query_VagonRepairTable: TADOQuery;
    DS_VagonRepairTable: TDataSource;
    cxGrid1DBBandedTableView1firm_self_id: TcxGridDBBandedColumn;
    dxBarLargeButton1: TdxBarLargeButton;
    cxGrid2DBBandedTableView1parent_id: TcxGridDBBandedColumn;
    dxBarButton25: TdxBarButton;
    dxBarButton28: TdxBarButton;
    dxBarButton29: TdxBarButton;
    cxGrid1DBBandedTableView1edo_doc_id: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1edo_date: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1edo_FIO_users: TcxGridDBBandedColumn;
    dxBarButton30: TdxBarButton;
    dxBarButton31: TdxBarButton;
    dxBarButton32: TdxBarButton;
    cxImageList1: TcxImageList;
    cxGrid1DBBandedTableView1doc_id: TcxGridDBBandedColumn;
    dxBarSubItem7: TdxBarSubItem;
    dxBarButton33: TdxBarButton;
    cxTabSheet3: TcxTabSheet;
    cxGrid5Level1: TcxGridLevel;
    cxGrid5: TcxGrid;
    Query_DocDetail: TADOQuery;
    DS_DocDetail: TDataSource;
    cxGrid5DBBandedTableView1: TcxGridDBBandedTableView;
    cxGrid5DBBandedTableView1doc_detail_id: TcxGridDBBandedColumn;
    cxGrid5DBBandedTableView1doc_id: TcxGridDBBandedColumn;
    cxGrid5DBBandedTableView1files_type_id: TcxGridDBBandedColumn;
    cxGrid5DBBandedTableView1files_type_name: TcxGridDBBandedColumn;
    cxGrid5DBBandedTableView1files_type_cod: TcxGridDBBandedColumn;
    cxGrid5DBBandedTableView1files_name: TcxGridDBBandedColumn;
    cxGrid5DBBandedTableView1files_date: TcxGridDBBandedColumn;
    cxGrid5DBBandedTableView1set_main: TcxGridDBBandedColumn;
    cxGrid5DBBandedTableView1date_enter: TcxGridDBBandedColumn;
    cxGrid5DBBandedTableView1users_name: TcxGridDBBandedColumn;
    cxGrid5DBBandedTableView1FIO_users: TcxGridDBBandedColumn;
    dxBarPopupMenu2: TdxBarPopupMenu;
    dxBarSubItem8: TdxBarSubItem;
    dxBarButton34: TdxBarButton;
    cxGrid1DBBandedTableView1doc_type_describe: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1doc_type_cod: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1edo_docs_id: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1edo_status_name: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1docs_date_agree: TcxGridDBBandedColumn;
    cxGrid5DBBandedTableView1comment: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1edo_date_sign: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1edo_date_enter: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1edo_date_send: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1edo_date_deliver: TcxGridDBBandedColumn;
    dxBarButton38: TdxBarButton;
    dxBarSubItem9: TdxBarSubItem;
    dxBarButton39: TdxBarButton;
    dxBarButton40: TdxBarButton;
    cxTabSheet4: TcxTabSheet;
    SP_shp_bargain_add_GET: TADOStoredProc;
    DS_BargainAdd: TDataSource;
    cxGrid6: TcxGrid;
    cxGrid6DBBandedTableView1: TcxGridDBBandedTableView;
    cxGrid6DBBandedTableView1bargain_add_id: TcxGridDBBandedColumn;
    cxGrid6DBBandedTableView1bargain_id: TcxGridDBBandedColumn;
    cxGrid6DBBandedTableView1agent_name: TcxGridDBBandedColumn;
    cxGrid6DBBandedTableView1currency_id: TcxGridDBBandedColumn;
    cxGrid6DBBandedTableView1brief_name: TcxGridDBBandedColumn;
    cxGrid6DBBandedTableView1type_nds_name: TcxGridDBBandedColumn;
    cxGrid6DBBandedTableView1set_include_nds: TcxGridDBBandedColumn;
    cxGrid6DBBandedTableView1date_period: TcxGridDBBandedColumn;
    cxGrid6DBBandedTableView1date_period_finance: TcxGridDBBandedColumn;
    cxGrid6DBBandedTableView1date_period_service: TcxGridDBBandedColumn;
    cxGrid6DBBandedTableView1add_count: TcxGridDBBandedColumn;
    cxGrid6DBBandedTableView1add_rate: TcxGridDBBandedColumn;
    cxGrid6DBBandedTableView1ed_izm_name: TcxGridDBBandedColumn;
    cxGrid6DBBandedTableView1contract_cod: TcxGridDBBandedColumn;
    cxGrid6DBBandedTableView1firm_customer_name: TcxGridDBBandedColumn;
    cxGrid6DBBandedTableView1add_sum: TcxGridDBBandedColumn;
    cxGrid6DBBandedTableView1add_NDS_sum: TcxGridDBBandedColumn;
    cxGrid6DBBandedTableView1add_notNDS_sum: TcxGridDBBandedColumn;
    cxGrid6DBBandedTableView1add_sum_RUB: TcxGridDBBandedColumn;
    cxGrid6DBBandedTableView1add_NDS_sum_RUB: TcxGridDBBandedColumn;
    cxGrid6DBBandedTableView1add_notNDS_sum_RUB: TcxGridDBBandedColumn;
    cxGrid6DBBandedTableView1budget_cod: TcxGridDBBandedColumn;
    cxGrid6DBBandedTableView1budget_name: TcxGridDBBandedColumn;
    cxGrid6DBBandedTableView1budget_type_name: TcxGridDBBandedColumn;
    cxGrid6DBBandedTableView1budget_parent_name: TcxGridDBBandedColumn;
    cxGrid6DBBandedTableView1balance_type_name: TcxGridDBBandedColumn;
    cxGrid6DBBandedTableView1type_exchange_name: TcxGridDBBandedColumn;
    cxGrid6DBBandedTableView1note: TcxGridDBBandedColumn;
    cxGrid6Level1: TcxGridLevel;
    dxBarPopupMenu4: TdxBarPopupMenu;
    dxBarSubItem11: TdxBarSubItem;
    cxGrid1DBBandedTableView1sum_calc_weight: TcxGridDBBandedColumn;
    cxGrid6DBBandedTableView1firm_self_name: TcxGridDBBandedColumn;
    procedure dxBarButton7Click(Sender: TObject);
    procedure dxBarSubItem4Popup(Sender: TObject);
    procedure dxBarButton12Click(Sender: TObject);
    procedure cxGrid3DBBandedTableView1DblClick(Sender: TObject);
    procedure cxGrid3DBBandedTableView1CustomDrawCell(Sender: TcxCustomGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
    procedure cxGrid2DBBandedTableView1CustomDrawCell(Sender: TcxCustomGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
    procedure cxGrid1DBBandedTableView1FocusedRecordChanged(Sender: TcxCustomGridTableView; APrevFocusedRecord, AFocusedRecord: TcxCustomGridRecord; ANewItemRecordFocusingChanged: Boolean);
    procedure dxBarPopupMenu1Popup(Sender: TObject);
    procedure dxBarButton15Click(Sender: TObject);
    procedure dxBarButton5Click(Sender: TObject);
    procedure cxGrid1DBBandedTableView1DblClick(Sender: TObject);
    procedure dxBarButton19Click(Sender: TObject);
    procedure dxBarButton18Click(Sender: TObject);
    procedure dxBarButton16Click(Sender: TObject);
    procedure dxBarButton6Click(Sender: TObject);
    procedure dxBarButton23Click(Sender: TObject);
    procedure dxBarButton2Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cxGrid1DBBandedTableView1KeyPress(Sender: TObject; var Key: Char);
    procedure cxGrid1DBBandedTableView1FocusedItemChanged(Sender: TcxCustomGridTableView; APrevFocusedItem, AFocusedItem: TcxCustomGridTableItem);
    procedure cxGrid1DBBandedTableView1CustomDrawColumnHeader(Sender: TcxGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxGridColumnHeaderViewInfo; var ADone: Boolean);
    procedure cxGrid1DBBandedTableView1CustomDrawCell(Sender: TcxCustomGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
    procedure cxGrid1DBBandedTableView1DataControllerFilterChanged(Sender: TObject);
    procedure OnMenuUsersClick(Sender: TObject);
    procedure dxBarButton8Click(Sender: TObject);
    procedure dxBarButton9Click(Sender: TObject);
    procedure dxBarButton10Click(Sender: TObject);
    procedure dxBarButton22Click(Sender: TObject);
    procedure cxPageControl1Change(Sender: TObject);
    procedure dxBarLargeButton1Click(Sender: TObject);
    procedure dxBarButton25Click(Sender: TObject);
    procedure dxBarButton29Click(Sender: TObject);
    procedure dxBarButton30Click(Sender: TObject);
    procedure dxBarButton32Click(Sender: TObject);
    procedure cxGrid5DBBandedTableView1CustomDrawCell(Sender: TcxCustomGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
    procedure dxBarButton35Click(Sender: TObject);
    procedure dxBarButton34Click(Sender: TObject);
    procedure dxBarButton38Click(Sender: TObject);
    procedure dxBarButton39Click(Sender: TObject);
    procedure dxBarButton40Click(Sender: TObject);
    procedure cxGrid6DBBandedTableView1CustomDrawCell(Sender: TcxCustomGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
    procedure FormDestroy(Sender: TObject);
  private
    Fdate1, Fdate2   : TDateTime;
    Factive_users_id : integer;
    Fset_all_acts    : boolean; // показывать все или только те на основании которых можно построить Сч-Ф (список типов предоставлен Заказчиком)
    Fstr_doc_id      : string;

    // Запущена как DLL
    Fset_run_dll : boolean;
    Fconnect     : TADOConnection;
    Fusr_pwd_docs: PUser_pwd;
    Fusr_pwd_lis : PUser_pwd;

    procedure SetPeriod(date_from, date_to : TDate);

    function GetActsID       : integer;
    function GetDocsID       : integer;
    function GetActsCod      : string;
    function GetActsTypeCod  : string;
    function GetStrActsID    : string;
    function GetContractID   : integer;
    function GetFirmSelfID   : integer;
    function GetContractAgentID   : integer;
    procedure SetActsID(acts_id: integer);
  public
    constructor Create(AOwner: TApplication; set_mdichild: Boolean = True);
    constructor CreateDLL(AOwner: TApplication; set_mdichild: Boolean; usr_pwd_lis: PUser_pwd; usr_pwd_docs: PUser_pwd);

    procedure FindActs(acts_id : integer);
    procedure _SetFilterActs(users_id: integer; date_from, date_to: TDate; str_acts_id: string; contract_id: integer; set_all_acts: boolean);
    procedure _SetFilterActs4TypeCod(str_type_cod : string);
  published
    property _SetActsID       : integer write SetActsID;
    property _GetActsID       : integer read GetActsID;
    property _GetDocsID       : integer read GetDocsID;
    property _GetActsCod      : string  read GetActsCod;
    property _GetActsTypeCod  : string  read GetActsTypeCod;
    property _GetStrActsID    : string  read GetStrActsID;
    property _GetStrDocID     : string  read Fstr_doc_id;
    property _GetContractID   : integer read GetContractID;
    property _GetFirmSelfID   : integer read GetFirmSelfID;
    property _GetContractAgentID   : integer read GetContractAgentID;
  end;

var
  fmActs: TfmActs;

implementation
  uses Main, AgreeAdd2, Period, cxGridDBDataDefinitions, InvoiceScoreAdd, Raznoe, InvoiceScore, InvoiceScoreCorrAdd, Other,
       DateUtils, Shellapi, Registry;

{$R *.dfm}

constructor TfmActs.CreateDLL(AOwner: TApplication; set_mdichild: Boolean; usr_pwd_lis: PUser_pwd; usr_pwd_docs: PUser_pwd);
begin
  Screen.Cursor := crHourglass;
  inherited Create(AOwner);

  Fset_run_dll  := True;
  Fusr_pwd_docs := usr_pwd_docs;
  Fusr_pwd_lis  := usr_pwd_lis;
  Fconnect := TADOConnection.Create(nil);
  Fconnect.ConnectionString := 'Persist Security Info=True;Provider=SQLOLEDB.1;User ID='+Fusr_pwd_lis^.user_name+';Password='+Fusr_pwd_lis^.user_pass+';Initial Catalog='+Fusr_pwd_lis^.catalog+';Data Source='+Fusr_pwd_lis^.server+';';
  Fconnect.KeepConnection   := False;
  Fconnect.LoginPrompt      := False;
  Fconnect.OnExecuteComplete := fmMain.LisExecuteComplete;

  Query_Acts.Connection          := Fconnect;
  Query_Invoice_Score.Connection := Fconnect;
  Query_Agree.Connection         := Fconnect;
  Query_VagonRepairTable.Connection := Fconnect;
  SP_shp_bargain_add_GET.Connection := Fconnect;


  if set_mdichild then begin
    FormStyle := fsMDIChild;
    WindowState := wsMaximized;
  end else begin
    FormStyle := fsNormal;
    Visible := True;
    WindowState := wsMaximized;
    Visible := False;
    dxBarButton7.Visible := ivAlways;
  end;

  StoreRegistryGrid(rgLoad, '\Software\Lis1\Acts_Grids\Acts',          cxGrid1DBBandedTableView1);
  StoreRegistryGrid(rgLoad, '\Software\Lis1\Acts_Grids\Invoice_score', cxGrid2DBBandedTableView1);
  StoreRegistryGrid(rgLoad, '\Software\Lis1\Acts_Grids\Agree',         cxGrid3DBBandedTableView1);
  StoreRegistryGrid(rgLoad, '\Software\Lis1\Acts_Grids\Repair',        cxGrid4DBBandedTableView1);
  StoreRegistryGrid(rgLoad, '\Software\Lis1\Acts_Grids\Docs',          cxGrid5DBBandedTableView1);
  StoreRegistryGrid(rgLoad, '\Software\Lis1\Acts_Grids\Service',       cxGrid6DBBandedTableView1);

  LoadRegistryDate_('\Software\LIS1\DateTime\Acts', Fdate1, Fdate2);

  cxPageControl1.OnChange := nil;
  cxPageControl1.ActivePage := cxTabSheet1;
  cxPageControl1.OnChange := cxPageControl1Change;

  Factive_users_id := Fusr_pwd_lis^.users_id;
  Fset_all_acts    := True;
  SetPeriod(Fdate1, Fdate2);

  MonitorEventFormOpen('OPEN_FORM', self.Name, Fconnect, -9);

  Screen.Cursor := crDefault;
end;


constructor TfmActs.Create(AOwner: TApplication; set_mdichild: Boolean = True);
begin
  Screen.Cursor := crHourglass;
  inherited Create(AOwner);

  Fset_run_dll := False;
  Fconnect     := fmMain.Lis;

  if set_mdichild then begin
    FormStyle := fsMDIChild;
    WindowState := wsMaximized;
  end else begin
    FormStyle := fsNormal;
//    Visible := True;
//    WindowState := wsMaximized;
//    Visible := False;
    dxBarButton7.Visible := ivAlways;
  end;

  StoreRegistryGrid(rgLoad, '\Software\Lis1\Acts_Grids\Acts',          cxGrid1DBBandedTableView1);
  StoreRegistryGrid(rgLoad, '\Software\Lis1\Acts_Grids\Invoice_score', cxGrid2DBBandedTableView1);
  StoreRegistryGrid(rgLoad, '\Software\Lis1\Acts_Grids\Agree',         cxGrid3DBBandedTableView1);
  StoreRegistryGrid(rgLoad, '\Software\Lis1\Acts_Grids\Repair',        cxGrid4DBBandedTableView1);


  LoadRegistryDate_('\Software\LIS1\DateTime\Acts', Fdate1, Fdate2);

  cxPageControl1.OnChange := nil;
  cxPageControl1.ActivePage := cxTabSheet1;
  cxPageControl1.OnChange := cxPageControl1Change;

  Factive_users_id := usr_pwd^.users_id;
  Fset_all_acts    := True;

  // Если set_mdichild = False ( не устанавливаем период, т.к. следующей операцией подет фильтрация и пересчет  данных )
  if set_mdichild then SetPeriod(Fdate1, Fdate2);

  SetUsersModuleRights(self, fmMain.Lis);
  MonitorEventFormOpen('OPEN_FORM', self.Name, Fconnect, -9);
  Screen.Cursor := crDefault;
end;

procedure TfmActs.FindActs(acts_id : integer);
var
  Query : TADOQuery;
begin
  Query := TADOQuery.Create(nil);
  Query.Connection := Fconnect;
  Query.SQL.Add('SELECT acts_date FROM view_acts WHERE acts_id = ' + IntToStr(acts_id));
  Query.Open;
  if not Query.Eof then begin
    Fdate1 := StartOfTheMonth(Query.FieldByName('acts_date').AsDateTime);
    Fdate2 := EndOfTheMonth(Query.FieldByName('acts_date').AsDateTime);
  end;
  Query.Free;

  Factive_users_id := -9;
  SetPeriod(Fdate1, Fdate2);

  cxGrid1DBBandedTableView1.DataController.LocateByKey(acts_id);
  if cxGrid1DBBandedTableView1.Controller.FocusedRecord <> nil then cxGrid1DBBandedTableView1.Controller.FocusedRecord.Selected := True;
end;

procedure TfmActs.SetPeriod(date_from, date_to : TDate);
var key_val : integer;
begin
  Fdate1 := date_from;
  Fdate2 := date_to;

  Screen.Cursor := crHourglass;

  // Запоминаем значение ключа (если его нам не передали)
  key_val := -9;
  if (not cxGrid1DBBandedTableView1.DataController.DataSet.IsEmpty) then
    key_val := cxGrid1DBBandedTableView1.DataController.GetKeyFieldsValues;

  Query_Acts.Close;
  Query_Acts.Parameters.ParamByName('date_from').Value    := Fdate1;
  Query_Acts.Parameters.ParamByName('date_to').Value      := Fdate2;
  Query_Acts.Parameters.ParamByName('users_owner').Value  := Factive_users_id;
  Query_Acts.Parameters.ParamByName('set_all_acts').Value := Fset_all_acts;
  Query_Acts.Open;

  // Пытаемся восстановить запись на прежнее место (или на переданное значение)
  if cxGrid1DBBandedTableView1.DataController.LocateByKey(key_val) = False then cxGrid1DBBandedTableView1.Controller.GoToFirst;
  if cxGrid1DBBandedTableView1.Controller.FocusedRecord <> nil then  cxGrid1DBBandedTableView1.Controller.FocusedRecord.Selected := True;

  dxBarSubItem1.Caption := PeriodToStr(Fdate1, Fdate2, True);

  Screen.Cursor := crDefault;
end;

procedure TfmActs.cxGrid1DBBandedTableView1CustomDrawCell(Sender: TcxCustomGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
  if (AViewInfo.GridRecord.Values[cxGrid1DBBandedTableView1global_color.Index]<>NULL) then
    ACanvas.Brush.Color := AViewInfo.GridRecord.Values[cxGrid1DBBandedTableView1global_color.Index];

  if AViewInfo.GridRecord.Selected or AViewInfo.GridRecord.Focused then begin
    ACanvas.Brush.Color := clNavy;
    ACanvas.Font.Color := clWhite;
    if AViewInfo.Focused then ACanvas.Brush.Color := clBlue;
  end;

end;

procedure TfmActs.cxGrid1DBBandedTableView1DataControllerFilterChanged(Sender: TObject);
begin
  DrawcxGridColumnOnFiltered(Sender);
end;

procedure TfmActs.cxGrid1DBBandedTableView1DblClick(Sender: TObject);
begin
  if dxBarButton7.Visible = ivAlways then
    dxBarButton7.Click // Если в режиме выбора = Выбор
  else
    dxBarButton5.Click; // иначе = Печать
end;

procedure TfmActs.cxGrid1DBBandedTableView1FocusedItemChanged(Sender: TcxCustomGridTableView; APrevFocusedItem, AFocusedItem: TcxCustomGridTableItem);
begin
  Sender.Painter.Invalidate;
end;

procedure TfmActs.cxGrid1DBBandedTableView1FocusedRecordChanged(Sender: TcxCustomGridTableView; APrevFocusedRecord, AFocusedRecord: TcxCustomGridRecord; ANewItemRecordFocusingChanged: Boolean);
begin
  Screen.Cursor := crHourglass;

  if (AFocusedRecord = nil) then begin
    Query_Agree.Close;
    Query_Invoice_Score.Close;
    Query_DocDetail.Close;
    SP_shp_bargain_add_GET.Close;
  end;

  if (AFocusedRecord <> nil) then begin
    cxPageControl1Change(cxPageControl1);

    Query_Invoice_Score.Close;
    Query_Invoice_Score.Parameters.ParamByName('acts_id').Value := cxGrid1DBBandedTableView1acts_id.DataBinding.Field.AsInteger;
    Query_Invoice_Score.Open;
  end;

  Screen.Cursor := crDefault;
end;

procedure TfmActs.cxGrid1DBBandedTableView1KeyPress(Sender: TObject; var Key: Char);
begin
  FilterColumnGridOnKeyPress(TcxGridDBBandedTableView(TcxGridSite(Sender).GridView), Key);
end;



//-------------------------------------------------------------------
procedure TfmActs.cxGrid1DBBandedTableView1CustomDrawColumnHeader(Sender: TcxGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxGridColumnHeaderViewInfo; var ADone: Boolean);
begin
  DrawcxGridColumnOnFocused(Sender, ACanvas, AViewInfo);
end;

procedure TfmActs.cxGrid2DBBandedTableView1CustomDrawCell(Sender: TcxCustomGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
  if AViewInfo.GridRecord.Focused then begin
    ACanvas.Brush.Color := clNavy;
    ACanvas.Font.Color := clWhite;
  end;
  if AViewInfo.GridRecord.Focused OR AViewInfo.GridRecord.Selected then  ACanvas.Brush.Color := clNavy;
  if AViewInfo.Focused then ACanvas.Brush.Color := clBlue;
end;

//--------------------------------------------------------------------------------


procedure TfmActs.cxGrid3DBBandedTableView1CustomDrawCell(Sender: TcxCustomGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
  if (AViewInfo.GridRecord.Values[cxGrid3DBBandedTableView1global_color.Index]<>NULL) then ACanvas.Brush.Color := AViewInfo.GridRecord.Values[cxGrid3DBBandedTableView1global_color.Index];

  if (AViewInfo.GridRecord.Values[cxGrid3DBBandedTableView1set_bargain_block.Index]) then begin
    ACanvas.Font.Color := clPurple; //clMoneyGreen - $00AF0AAA;
    ACanvas.Font.Style := [fsBold];
  end;

  if AViewInfo.GridRecord.Selected or AViewInfo.GridRecord.Focused then begin
    ACanvas.Brush.Color := clNavy;
    ACanvas.Font.Color := clWhite;
    if AViewInfo.Focused then ACanvas.Brush.Color := clBlue;
  end;

end;

procedure TfmActs.cxPageControl1Change(Sender: TObject);
begin
  Screen.Cursor := crHourglass;
    case cxPageControl1.ActivePageIndex of
      0 : begin
            Query_Agree.Close;
            Query_Agree.Parameters.ParamByName('acts_id').Value := cxGrid1DBBandedTableView1acts_id.DataBinding.Field.AsInteger;
            Query_Agree.Open;
          end;
      1 : begin
            Query_VagonRepairTable.Close;
            Query_VagonRepairTable.Parameters.ParamByName('acts_id').Value := cxGrid1DBBandedTableView1acts_id.DataBinding.Field.AsInteger;
            Query_VagonRepairTable.Open;
          end;
      2 : begin
            if not cxGrid1DBBandedTableView1doc_id.DataBinding.Field.IsNull then begin
              Query_DocDetail.Close;
              Query_DocDetail.Parameters.ParamByName('doc_id').Value := cxGrid1DBBandedTableView1doc_id.DataBinding.Field.AsInteger;
              Query_DocDetail.Open;
            end;
          end;
      3 : begin
            SP_shp_bargain_add_GET.Close;
            SP_shp_bargain_add_GET.Parameters.Refresh;
            SP_shp_bargain_add_GET.Parameters.ParamByName('@acts_id'    ).Value := cxGrid1DBBandedTableView1acts_id.DataBinding.Field.AsInteger;
            SP_shp_bargain_add_GET.Parameters.ParamByName('@type_result').Value := 1;
            SP_shp_bargain_add_GET.Open;
          end;
    end;
  Screen.Cursor := crDefault;
end;

procedure TfmActs.cxGrid3DBBandedTableView1DblClick(Sender: TObject);
begin
  fmAgreeAdd2 := TfmAgreeAdd2.Create(Application);
  fmAgreeAdd2._SetUpdate := cxGrid3DBBandedTableView1bargain_id.DataBinding.Field.AsInteger;
  fmAgreeAdd2.cxButton1.Visible := False;
  if fmAgreeAdd2.ShowModal = mrOk then
    RefreshQueryGrid(cxGrid3DBBandedTableView1, 'bargain_id', fmAgreeAdd2._GetBargainId);
end;

procedure TfmActs.cxGrid5DBBandedTableView1CustomDrawCell(Sender: TcxCustomGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
	if AViewInfo.GridRecord.Selected or AViewInfo.GridRecord.Focused then begin
		ACanvas.Brush.Color := clNavy;
		ACanvas.Font.Color := clWhite;
		if AViewInfo.Focused then ACanvas.Brush.Color := clBlue;
	end;
end;

procedure TfmActs.cxGrid6DBBandedTableView1CustomDrawCell(Sender: TcxCustomGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
	if AViewInfo.GridRecord.Selected or AViewInfo.GridRecord.Focused then begin
		ACanvas.Brush.Color := clNavy;
		ACanvas.Font.Color := clWhite;
		if AViewInfo.Focused then ACanvas.Brush.Color := clBlue;
	end;
end;

procedure TfmActs.dxBarButton12Click(Sender: TObject);
var           i : integer;
 str_bargain_id : string;
begin
  if cxGrid3DBBandedTableView1.Controller.SelectedRowCount < 1 then exit;

  str_bargain_id := '';
  for i:=0 to cxGrid3DBBandedTableView1.Controller.SelectedRecordCount - 1 do
    str_bargain_id := str_bargain_id + ', ' + IntToStr(cxGrid3DBBandedTableView1.Controller.SelectedRows[i].Values[cxGrid3DBBandedTableView1bargain_id.Index]);
  Delete(str_bargain_id, 1, 2);

  PrintFrahtCardWeight_Multi2(fmMain.Lis, str_bargain_id);

end;

procedure TfmActs.dxBarButton15Click(Sender: TObject);
var  SP : TADOStoredProc;
begin
  if Query_Acts.Eof then
    exit;

  if (Application.MessageBox(PChar('Удалить акт № ' + cxGrid1DBBandedTableView1acts_cod.DataBinding.Field.AsString + ' ?'), 'Акты', MB_YESNO or MB_ICONQUESTION) = mrNo) then
    exit;

  SP := TADOStoredProc.Create(nil);
  SP.Connection := Fconnect;
  SP.ProcedureName := 'sp_acts_modify';
  SP.Parameters.Refresh;

  SP.Parameters.ParamByName('@type_action').Value := 2;
  SP.Parameters.ParamByName('@acts_id').Value     := cxGrid1DBBandedTableView1acts_id.DataBinding.Field.Value;

  try
    SP.ExecProc;
  except
  end;

  SP.Free;

  dxBarButton23.Click;
end;

procedure TfmActs.dxBarButton16Click(Sender: TObject);
begin
  SetRecordColor('acts_id', cxGrid1DBBandedTableView1, 'ACTS', TComponent(Sender).Tag = 1);
  RefreshQueryGrid(cxGrid1DBBandedTableView1, cxGrid1DBBandedTableView1.DataController.KeyFieldNames);
end;

procedure TfmActs.dxBarButton22Click(Sender: TObject);
type
  TFunc = function(AppHand: THandle; usr_pwd: PUser_pwd; acts_id: integer; type_action: integer; set_readonly: boolean; bargain_id: integer): Variant;
var   FActAdd : TFunc;
       handle : THandle;
            v : Variant;
begin
  v := VarArrayOf([-9]);

  if (Tcomponent(Sender).Tag = 0) then begin
    handle := LoadLibrary('user.dll');
    @FActAdd := GetProcAddress(handle, 'CreateWndActAdd');
    v := FActAdd(Application.Handle, usr_pwd, -9, 0, False, -9);
    FreeLibrary(handle);
  end else begin
    // Только для внешних Актов кнопкa  "Изменить"
    if (cxGrid1DBBandedTableView1acts_type_cod.DataBinding.Field.AsInteger < 0 ) then begin
      handle := LoadLibrary('user.dll');
      @FActAdd := GetProcAddress(handle, 'CreateWndActAdd');
      v := FActAdd(Application.Handle, usr_pwd, cxGrid1DBBandedTableView1acts_id.DataBinding.Field.AsInteger, 1, False, -9);
      FreeLibrary(handle);
    end else
      Application.MessageBox('Для изменения Акта, его необходимо переформировать заново.', 'Внимание', MB_OK);
  end;

  if v[0] <> -9 then
    RefreshQueryGrid(cxGrid1DBBandedTableView1, 'acts_id', v[0]);
end;

procedure TfmActs.dxBarButton23Click(Sender: TObject);
begin
  RefreshQueryGrid(cxGrid1DBBandedTableView1, cxGrid1DBBandedTableView1.DataController.KeyFieldNames);
end;

procedure TfmActs.dxBarButton25Click(Sender: TObject);
var             Q : TADOQuery;
      str_acts_id : string;
                i : integer;
         ClientDS : TClientDataSet;
  users_group_cod : string;
begin
  str_acts_id := '';
  for i:=0 to cxGrid1DBBandedTableView1.Controller.SelectedRecordCount - 1 do
    str_acts_id := str_acts_id + ',' + IntToStr(cxGrid1DBBandedTableView1.Controller.SelectedRows[i].Values[cxGrid1DBBandedTableView1acts_id.Index]);
  Delete(str_acts_id, 1, 1);

  Q := TADOQuery.Create(nil);
  Q.Connection := fmMain.Lis;
  Q.SQL.Add('SELECT	count(DISTINCT contract_id) cnt_contract,');
  Q.SQL.Add('sum(case when acts_type_cod = ''-99'' then 1 else 0 end) cnt_invoice_score,');
  Q.SQL.Add('sum(case when docs_id is not null then 1 else 0 end) cnt_docs_run,');
  Q.SQL.Add('count(DISTINCT	case when doc_id is not null then 1 else 0 end) cnt_acts_ecp');
  Q.SQL.Add('FROM	view_acts');
  Q.SQL.Add('WHERE	acts_id in (' + str_acts_id + ')');
  Q.Open;


  if Q.FieldByName('cnt_contract').AsInteger > 1 then begin
    Application.MessageBox('Невозможен запуск в Документооборот.' + #10#13 +
                           'У выбранных актов должен быть один договор.', 'Внимание!', MB_ICONSTOP + MB_OK);
    Q.Free;
    Exit;
  end;

  if Q.FieldByName('cnt_invoice_score').AsInteger > 0 then begin
    Application.MessageBox('Невозможен запуск в Документооборот.' + #10#13 +
                           'В выбранных документах содержится "Счет-фактура".', 'Внимание!', MB_ICONSTOP + MB_OK);
    Q.Free;
    Exit;
  end;

  if Q.FieldByName('cnt_docs_run').AsInteger > 0 then begin
    Application.MessageBox('Невозможен запуск в Документооборот.' + #10#13 +
                           'В выбранных документах содержатся уже запущенные акты.', 'Внимание!', MB_ICONSTOP + MB_OK);
    Q.Free;
    Exit;
  end;

  if Q.FieldByName('cnt_acts_ecp').AsInteger > 1 then begin
    Application.MessageBox('Невозможен запуск в Документооборот.' + #10#13 +
                           'Выбраны обычные акты и акты ЭЦП!', 'Внимание!', MB_ICONSTOP + MB_OK);
    Q.Free;
    Exit;
  end;


  Q.SQL.Clear;
  Q.SQL.Add('SELECT	inf_obj_cod as users_group_cod');
  Q.SQL.Add('FROM	  users INNER JOIN inf_obj on users.users_group_id = inf_obj.inf_obj_id');
  Q.SQL.Add('WHERE	users_name = system_user');
  Q.Open;

  users_group_cod := Q.FieldByName('users_group_cod').AsString;

  ClientDS := TClientDataSet.Create(nil);
  ClientDS.FieldDefs.Add('id', ftAutoInc);
  ClientDS.FieldDefs.Add('doc_type_cod', ftString, 10);
  ClientDS.FieldDefs.Add('database_cod', ftString, 10);
  ClientDS.FieldDefs.Add('users_group_cod', ftString, 10);
  ClientDS.FieldDefs.Add('acts_id', ftInteger);
  ClientDS.FieldDefs.Add('bargain_id', ftInteger);

  ClientDS.FieldDefs.Add('contract_id', ftInteger);
  ClientDS.FieldDefs.Add('contract_cod', ftString, 50);
  ClientDS.FieldDefs.Add('date_begin', ftDate);
  ClientDS.FieldDefs.Add('type_contract', ftInteger);
  ClientDS.FieldDefs.Add('firm_self_id', ftInteger);
  ClientDS.FieldDefs.Add('firm_self_name', ftString, 200);
  ClientDS.FieldDefs.Add('firm_customer_id', ftInteger);
  ClientDS.FieldDefs.Add('firm_customer_name', ftString, 200);
  ClientDS.FieldDefs.Add('currency_id', ftInteger);
  ClientDS.FieldDefs.Add('brief_name', ftString, 10);
  ClientDS.FieldDefs.Add('curator_FIO_users', ftString, 50);
  ClientDS.FieldDefs.Add('note', ftString, 400);
  ClientDS.FieldDefs.Add('docs_act_id', ftInteger);
  ClientDS.FieldDefs.Add('act_cod', ftString, 50);
  ClientDS.FieldDefs.Add('act_date', ftDate);
  ClientDS.FieldDefs.Add('docs_id', ftInteger);
  ClientDS.FieldDefs.Add('set_invoice_score', ftBoolean);
  ClientDS.FieldDefs.Add('comment', ftString, 400);
  ClientDS.FieldDefs.Add('invoice_id', ftInteger);
  ClientDS.FieldDefs.Add('global_id', ftInteger);


  ClientDS.CreateDataSet;
  ClientDS.LogChanges := False;

  Q.SQL.Clear;
  Q.SQL.Add('SELECT	view_acts.acts_cod, view_acts.acts_date, view_acts.acts_id, view_acts.acts_comment, view_acts.acts_id, view_acts.doc_id, view_contract.*');
  Q.SQL.Add('FROM	view_acts inner join view_contract on view_acts.contract_id = view_contract.contract_id');
  Q.SQL.Add('WHERE	acts_id in (' + str_acts_id + ')');
  Q.Open;

  Q.First;
  while not Q.Eof do begin
    ClientDS.Append;
    if Q.FieldByName('doc_id').IsNull then begin
      ClientDS.FieldByName('doc_type_cod'      ).Value := '20'; // Акт
      ClientDS.FieldByName('database_cod'      ).Value := '0';  // База Lis
      ClientDS.FieldByName('users_group_cod'   ).Value := users_group_cod;
      ClientDS.FieldByName('contract_id'       ).Value := Q.FieldByName('contract_id').Value;
      ClientDS.FieldByName('contract_cod'      ).Value := Q.FieldByName('contract_cod').Value;
      ClientDS.FieldByName('date_begin'        ).Value := Q.FieldByName('date_begin').Value;
      ClientDS.FieldByName('type_contract'     ).Value := Q.FieldByName('type_contract').Value;
      ClientDS.FieldByName('firm_self_id'      ).Value := Q.FieldByName('firm_self').Value;
      ClientDS.FieldByName('firm_self_name'    ).Value := Q.FieldByName('firm_self_name').Value;
      ClientDS.FieldByName('firm_customer_id'  ).Value := Q.FieldByName('firm_customer').Value;
      ClientDS.FieldByName('firm_customer_name').Value := Q.FieldByName('firm_customer_name').Value;
      ClientDS.FieldByName('currency_id'       ).Value := Q.FieldByName('currency_id').Value;
      ClientDS.FieldByName('brief_name'        ).Value := Q.FieldByName('brief_name').Value;
      ClientDS.FieldByName('curator_FIO_users' ).Value := Q.FieldByName('curator_FIO_users').Value;
      ClientDS.FieldByName('note'              ).Value := Q.FieldByName('note').Value;
      ClientDS.FieldByName('docs_act_id'       ).Value := null;
      ClientDS.FieldByName('act_cod'           ).Value := Q.FieldByName('acts_cod').Value;
      ClientDS.FieldByName('act_date'          ).Value := Q.FieldByName('acts_date').Value;
      ClientDS.FieldByName('docs_id'           ).Value := null;
      ClientDS.FieldByName('set_invoice_score' ).Value := null;
      ClientDS.FieldByName('acts_id'           ).Value := Q.FieldByName('acts_id').Value;
      ClientDS.FieldByName('comment'           ).Value := Q.FieldByName('acts_comment').Value;
      ClientDS.FieldByName('bargain_id'        ).Value := null;
      ClientDS.FieldByName('invoice_id'        ).Value := Q.FieldByName('acts_id').Value;
    end else begin
      ClientDS.FieldByName('doc_type_cod'      ).Value := '100'; // Акт ЭЦП
      ClientDS.FieldByName('database_cod'      ).Value := '0';  // База Lis
      ClientDS.FieldByName('users_group_cod'   ).Value := users_group_cod;
      ClientDS.FieldByName('contract_id'       ).Value := Q.FieldByName('contract_id').Value;
      ClientDS.FieldByName('global_id'         ).Value := Q.FieldByName('doc_id').Value;
    end;


    ClientDS.Post;
    Q.Next;
  end;

  if DocsRun(ClientDS, usr_pwd, users_group_cod) = mrOk then begin
    RefreshQueryGrid(cxGrid1DBBandedTableView1, cxGrid1DBBandedTableView1.DataController.KeyFieldNames);
    cxPageControl1Change(nil);
  end;

  Q.Free;
  ClientDS.Free;
end;


procedure TfmActs.dxBarButton2Click(Sender: TObject);
begin
  fmPeriod := TfmPeriod.Create(Application, Fdate1, Fdate2, TdxBarButton(Sender).Tag);
  if fmPeriod.ShowModal = mrOk then begin
    case TdxBarButton(Sender).Tag of
      3: SetPeriod(fmPeriod._GetMonth, IncMonth(fmPeriod._GetMonth) - 1);
      2: SetPeriod(fmPeriod._GetMonthBegin, fmPeriod._GetMonthEnd);
    end;
  end;
end;

procedure TfmActs.dxBarButton30Click(Sender: TObject);
type
  TFuncPdf = procedure(users_group_cod: string; print_form_id: integer);
var
  // Генерация печатной формы  --------------
  FPrintFormPdf  : TFuncPdf;
  handle         : THandle;

  Query_tmp      : TADOQuery;
  proc_name      : string;
begin
  // Проверка, а есть ли документ?
  if cxGrid1DBBandedTableView1edo_doc_id.DataBinding.Field.IsNull then
    exit;

  proc_name := iif(TComponent(Sender).Tag = 0, 'CreateWndDocumentPdfShow', 'CreateWndDocumentXmlShow');

  Query_tmp := TADOQuery.Create(nil);
  Query_tmp.Connection := fmMain.Lis;
  Query_tmp.SQL.Add('SELECT	users.FIO_users, inf_obj.inf_obj_cod as users_group_cod');
  Query_tmp.SQL.Add('FROM	  users INNER JOIN inf_obj on users.users_group_id = inf_obj.inf_obj_id');
  Query_tmp.SQL.Add('WHERE	users_name = system_user');
  Query_tmp.Open;

  // Открыть pdf
  handle := LoadLibrary('work_edo.dll');
  @FPrintFormPdf := GetProcAddress(handle, PWideChar(proc_name));
  FPrintFormPdf(Query_tmp.FieldByName('users_group_cod').AsString, cxGrid1DBBandedTableView1edo_doc_id.DataBinding.Field.AsInteger);
  FreeLibrary(handle);

  Query_tmp.Free;
end;

procedure TfmActs.dxBarButton32Click(Sender: TObject);
type
  TFunc = function(users_group_cod: string; DocumentType: string; data_xml: TArray<Byte>; data_size: integer; lis_id: integer; contract_inn: string; ClientDS: TClientDataSet): variant;
var
  FFirm  : TFunc;
  handle : THandle;
  v      : Variant;
  Q      : TADOQuery;
  files_type_id : integer;
  doc_detail_id : integer;
  sp_BLOB_DETAIL_modify : TADOStoredProc;
  mem_bytes : TStringStream;
  doc_id : integer;
  acts_id : integer;
  ClientDS : TClientDataSet;
  sp_global_edo_link_modify : TADOStoredProc;

begin
  if cxGrid1DBBandedTableView1doc_type_cod.DataBinding.Field.AsString <> '18' then begin
    Application.MessageBox('Данный акт не может быть отправлен в Диадок!', 'Внимание!', MB_ICONWARNING or MB_OK);
    Exit;
  end;

  if not cxGrid1DBBandedTableView1edo_docs_id.DataBinding.Field.IsNull then begin
    Application.MessageBox('Акт уже отправлен в Диадок!', 'Внимание!', MB_ICONWARNING or MB_OK);
    Exit;
  end;

  if Application.MessageBox('Подписать и отправить Акт?', 'Внимание!', MB_ICONQUESTION or MB_OKCANCEL or MB_DEFBUTTON2) <> ID_OK then begin
    Exit;
  end;


  doc_id  := cxGrid1DBBandedTableView1doc_id.DataBinding.Field.AsInteger;
  acts_id := cxGrid1DBBandedTableView1acts_id.DataBinding.Field.AsInteger;
  ClientDS := TClientDataSet.Create(nil);
  ClientDS.FieldDefs.Add('FileName',        ftString, 500);
  ClientDS.FieldDefs.Add('DocumentDate',    ftDateTime);
  ClientDS.FieldDefs.Add('DocumentNumber',  ftString, 500);
  ClientDS.FieldDefs.Add('ContractDocumentNumber', ftString, 50);
  ClientDS.FieldDefs.Add('ContractDocumentDate',   ftDateTime);
  ClientDS.FieldDefs.Add('total',   ftCurrency);
  ClientDS.FieldDefs.Add('vat',     ftCurrency);
  ClientDS.CreateDataSet;
  ClientDS.LogChanges := False;

  // Запросить pdf форму
  Q := TADOQuery.Create(nil);
  Q.Connection := FConnect;
  Q.SQL.Add('SELECT inf_obj_id FROM inf_obj WHERE type_inf_id = 151 AND inf_obj_cod = ''02'''); // Формат XML
  Q.Open;
  files_type_id := Q.FieldByName('inf_obj_id').AsInteger;

  Q.SQL.Clear;
  Q.SQL.Add('SELECT * FROM view_doc_blob_detail WHERE doc_id = ' + IntToStr(doc_id) + ' AND files_type_id = ' + IntToStr(files_type_id));
  Q.Open;

  doc_detail_id := Q.FieldByName('doc_detail_id').AsInteger;


  sp_BLOB_DETAIL_modify := TADOStoredProc.Create(nil);
  sp_BLOB_DETAIL_modify.Connection := FConnect;
  sp_BLOB_DETAIL_modify.ProcedureName := 'sp_BLOB_DETAIL_modify';
  sp_BLOB_DETAIL_modify.Parameters.Refresh;
  sp_BLOB_DETAIL_modify.Parameters.ParamByName('@doc_detail_id').Value := doc_detail_id;
  sp_BLOB_DETAIL_modify.Parameters.ParamByName('@type_action'  ).Value := 10;
  sp_BLOB_DETAIL_modify.Open;
  mem_bytes := TStringStream.Create(TArray<Byte>(LZHUnPack(sp_BLOB_DETAIL_modify.FieldByName('doc_image').AsBytes)));


  Q.SQL.Clear;
  Q.SQL.Add('SELECT * FROM view_acts WHERE acts_id = ' + IntToStr(acts_id));
  Q.Open;

  ClientDS.Append;
  ClientDS.FieldByName('FileName'               ).Value := sp_BLOB_DETAIL_modify.FieldByName('files_name').Value;
  ClientDS.FieldByName('DocumentDate'           ).Value := Q.FieldByName('acts_date').Value;
  ClientDS.FieldByName('DocumentNumber'         ).Value := Q.FieldByName('acts_cod').Value;
  ClientDS.FieldByName('ContractDocumentNumber' ).Value := Q.FieldByName('contract_cod').Value;
  ClientDS.FieldByName('ContractDocumentDate'   ).Value := Q.FieldByName('contract_date_begin').Value;
  ClientDS.FieldByName('total'                  ).Value := Q.FieldByName('acts_sum').Value;
  ClientDS.FieldByName('vat'                    ).Value := null;
  ClientDS.Post;


  handle := LoadLibrary('work_edo.dll');
  @FFirm := GetProcAddress(handle, 'CreateWndSendDocumnet');
  v := FFirm('100', 'XmlAcceptanceCertificate', mem_bytes.Bytes, mem_bytes.Size, doc_id, '9687524981', ClientDS);
  FreeLibrary(handle);

  mem_bytes.Free;
  sp_BLOB_DETAIL_modify.Free;
  Q.Free;

  if v[0] <> -9 then begin
    sp_global_edo_link_modify := TADOStoredProc.Create(nil);
    sp_global_edo_link_modify.Connection := fmMain.Lis;
    sp_global_edo_link_modify.ProcedureName := 'sp_global_edo_link_modify';
    sp_global_edo_link_modify.Parameters.Refresh;
    sp_global_edo_link_modify.Parameters.ParamByName('@global_id'  ).Value := doc_id;
    sp_global_edo_link_modify.Parameters.ParamByName('@edo_docs_id').Value := v[0];
    sp_global_edo_link_modify.ExecProc;
    sp_global_edo_link_modify.Free;

    Application.MessageBox('Документ успешно отправлен!', 'Внимание', MB_ICONINFORMATION or MB_OK);
    RefreshQueryGrid(cxGrid1DBBandedTableView1, cxGrid1DBBandedTableView1.DataController.KeyFieldNames);
  end else begin
    Application.MessageBox('Ошибка при отправлении документа!', 'Внимание', MB_ICONERROR or MB_OK);
  end;
end;

procedure TfmActs.dxBarButton34Click(Sender: TObject);
begin
  if not cxGrid5DBBandedTableView1doc_detail_id.DataBinding.Field.IsNull then begin
    GetDocBlobDetailView(cxGrid5DBBandedTableView1doc_detail_id.DataBinding.Field.AsInteger, nil, '', Fconnect);
  end else begin
    Application.MessageBox('НЕТ ФАЙЛА К ДАННОЙ ЗАПИСИ', 'ВНИМАНИЕ', MB_OK);
  end;


end;

procedure TfmActs.dxBarButton35Click(Sender: TObject);
begin
	PrintcxGrid(cxGrid5DBBandedTableView1);
end;

procedure TfmActs.dxBarButton38Click(Sender: TObject);
var    folder: string;
    FileName : string;
          SP : TADOStoredProc;
           i : integer;
           s : TArray<Byte>;
   num_write : Cardinal;
       hFile : THandle;
begin
  folder := BrowseDialog('Выбор каталога:');
  if folder <> '' then begin
    if Application.MessageBox(PChar('Сохранить ' + IntToStr(cxGrid1DBBandedTableView1.Controller.SelectedRecordCount) + ' файлов?'), 'ВНИМАНИЕ', MB_ICONWARNING or MB_YESNO) = ID_YES then begin
      SP := TADOStoredProc.Create(nil);
      SP.Connection := fmMain.Lis;
      SP.ProcedureName := 'sp_acts_modify';
      for i:=0 to cxGrid1DBBandedTableView1.Controller.SelectedRecordCount - 1 do begin

        SP.Close;
        SP.Parameters.Refresh;
        SP.Parameters.ParamByName('@acts_id'    ).Value := cxGrid1DBBandedTableView1.Controller.SelectedRows[i].Values[cxGrid1DBBandedTableView1acts_id.Index];
        SP.Parameters.ParamByName('@type_action').Value := 10;
        SP.Open;
        s := LZHUnPack(SP.FieldByName('acts_image').AsBytes);

        // Имя всегда формируем заново - дабы сохранилось все красиво
        FileName := CalcActsFileName(cxGrid1DBBandedTableView1.Controller.SelectedRows[i].Values[cxGrid1DBBandedTableView1acts_id.Index], False, fmMain.Lis);
        FileName := folder + '\' + FileName;

        hFile:=CreateFile(PChar(FileName), Generic_Write, 0, nil, Create_Always, File_Attribute_Normal, 0);
        WriteFile(hFile, PAnsiChar(s)^, Length(s), num_write, nil);
        CloseHandle(hFile);
//        FileSetAttr(FileName, SysUtils.faReadOnly);
        ShowTextMessage('Осталось ' + IntToStr(cxGrid1DBBandedTableView1.Controller.SelectedRecordCount - i) + ' файлов...',False);
      end;
      ShellExecute(HWND(nil), 'open', PChar(folder), nil, PChar(folder), SW_SHOWNORMAL);
      SP.Free;
      ShowTextMessage;
    end;
  end;
end;

procedure TfmActs.dxBarButton39Click(Sender: TObject);
var exWks, exApp  : Variant;
    Q             : TADOQuery;
    row_0         : integer;
    str_acts_id   : string;
begin
  Screen.Cursor := crHourglass;

  str_acts_id := cx_GetSelectedValues(cxGrid1, 'acts_id');

  Q := TADOQuery.Create(nil);
  Q.Connection := fmMain.Lis;
  Q.SQL.Add('SELECT firm_customer_name, contract_cod, acts_cod, acts_date, acts_sum, score_cod, score_date ');
  Q.SQL.Add('FROM view_acts a ');
  Q.SQL.Add('LEFT OUTER JOIN acts_invoice_score ais ON ais.acts_id = a.acts_id ');
  Q.SQL.Add('LEFT OUTER JOIN invoice_score isc ON isc.invoice_score_id = ais.invoice_score_id ');
  Q.SQL.Add('WHERE a.acts_id in (' + str_acts_id + ')');
  Q.Open;

  ShowTextMessage('Запуск Excel...', False);
  exApp := CreateOleObject('Excel.Application');
  exApp.Workbooks.Add(GetDocBlob(fmMain.Lis, 383));
  exWks := exApp.ActiveWorkbook.WorkSheets[1];

  row_0 := 5;

  while not Q.Eof do begin
    exWks.Rows[IntToStr(row_0 + 1)].Insert;
    exWks.Rows[IntToStr(row_0)].Copy;
    exWks.Rows[IntToStr(row_0 + 1)].PasteSpecial(1);

    exWks.Range['B' + IntToStr(row_0)].Value := Q.RecNo;
    exWks.Range['C' + IntToStr(row_0)].Value := Q.FieldByName('firm_customer_name').AsString;
    exWks.Range['D' + IntToStr(row_0)].Value := Q.FieldByName('contract_cod').AsString;
    exWks.Range['E' + IntToStr(row_0)].Value := Q.FieldByName('acts_date').Value;
    exWks.Range['F' + IntToStr(row_0)].Value := Q.FieldByName('acts_cod').AsString;
    exWks.Range['G' + IntToStr(row_0)].Value := Q.FieldByName('score_date').Value;
    exWks.Range['H' + IntToStr(row_0)].Value := Q.FieldByName('score_cod').AsString;
    exWks.Range['I' + IntToStr(row_0)].Value := Q.FieldByName('acts_sum').Value;
    Q.Next;
    row_0 := row_0  + 1;
    ShowTextMessage('Осталось ' + IntToStr(Q.RecordCount - Q.RecNo) + ' вагонов...', False);
  end;

  exWks.Rows[IntToStr(row_0)].Delete;
  exWks.Rows[IntToStr(row_0)].Delete;
  Q.Free;
  exWks.Range['A1'].Select;
  exWks.PageSetup.PrintArea := exWks.Range['A1:I'+IntToStr(row_0)].Address;
  exApp.Visible := True;

  exApp := Null;
  exWks := Null;

  ShowTextMessage('', True);
  Screen.Cursor := crDefault;
end;


procedure TfmActs.dxBarButton40Click(Sender: TObject);
begin
  if Query_Acts.RecordCount <= 0 then begin
    Application.MessageBox('Нет выделенных записей.', 'Внимание', MB_OK + MB_ICONWARNING);
    exit;
  end;

  CreateInvoiceScoreUPDFromActs(fmMain.Lis, cxGrid1DBBandedTableView1acts_id.DataBinding.Field.AsInteger, cxGrid1DBBandedTableView1acts_type_cod.DataBinding.Field.AsString);
end;

procedure TfmActs.dxBarButton29Click(Sender: TObject);
begin
  Screen.Cursor := crHourglass;

  if TControl(Sender).Tag = 1 then begin
    Fdate1 := IncMonth(Fdate1, -1);
  end;

  if TControl(Sender).Tag = 2 then begin
    Fdate1 := IncMonth(Fdate1, 1);
  end;

  SetPeriod(Fdate1, IncMonth(Fdate1) - 1);

  Screen.Cursor := crDefault;
end;

procedure TfmActs.dxBarButton5Click(Sender: TObject);
begin
  if Query_Acts.RecordCount <= 0 then begin
    Application.MessageBox('Нет выделенных записей.', 'Внимание', MB_OK + MB_ICONWARNING);
    exit;
  end;

  GetActsView(cxGrid1DBBandedTableView1acts_id.DataBinding.Field.AsInteger, Fconnect, Fset_run_dll, Self);
end;

procedure TfmActs.dxBarPopupMenu1Popup(Sender: TObject);
var Query_Users : TADOQuery;
begin
   //Проверяем, открывать кнопку удаления или нет
  Query_Users := TADOQuery.Create(nil);
  Query_Users.Connection := Fconnect;
  Query_Users.SQL.Add('SELECT users_detail_id AS users_id');
  Query_Users.SQL.Add('FROM view_users_users');
  Query_Users.SQL.Add('WHERE users_master_id = (SELECT TOP 1 users_id FROM view_users WHERE users_name = system_user)');
  Query_Users.SQL.Add('AND rights = 0');
  Query_Users.SQL.Add('UNION ALL');
  Query_Users.SQL.Add('SELECT users_id FROM view_users WHERE users_name = system_user');
  Query_Users.Open;
  dxBarButton15.Enabled := Query_Users.Locate('users_id', cxGrid1DBBandedTableView1users_owner.DataBinding.Field.AsInteger, []);
  Query_Users.Free;

  if not cxGrid1DBBandedTableView1acts_type_cod.DataBinding.Field.IsNull then begin
    dxBarButton24.Enabled := (cxGrid1DBBandedTableView1acts_type_cod.DataBinding.Field.AsInteger < 0);
    dxBarLargeButton1.Enabled := (cxGrid1DBBandedTableView1acts_type_cod.DataBinding.Field.AsInteger > 0);
  end;

  // Проверка, а есть ли документ ЭДО?
  dxBarButton30.Enabled := not cxGrid1DBBandedTableView1edo_doc_id.DataBinding.Field.IsNull;
  dxBarButton31.Enabled := not cxGrid1DBBandedTableView1edo_doc_id.DataBinding.Field.IsNull;

end;

procedure TfmActs.dxBarSubItem4Popup(Sender: TObject);
var   i, cnt : integer;
  bar_button : TdxBarButton;
           Q : TADOQuery;
begin
  Screen.Cursor := crHourglass;

  dxBarButton4.Down := (-9 = Factive_users_id);

  cnt := dxBarSubItem4.ItemLinks.Count;
  for i := 2 to cnt-1 do dxBarSubItem4.ItemLinks.Items[cnt-i+1].Destroy;

  Q := TADOQuery.Create(nil);
  Q.Connection := Fconnect;
  Q.SQL.Add('SELECT DISTINCT users_owner, FIO_users FROM view_acts_rights');
  Q.SQL.Add('WHERE acts_date between ' + DateToSQL(Fdate1) + ' AND ' + DateToSQL(Fdate2));
  Q.SQL.Add('ORDER BY FIO_users');
  Q.Open;

  while not Q.Eof do begin
    bar_button := TdxBarButton.Create(nil);
    bar_button.ImageIndex  := 39;
    bar_button.Caption     := Q.FieldByName('FIO_users').AsString;
    bar_button.Tag         := Q.FieldByName('users_owner').AsInteger;
    bar_button.ButtonStyle := bsChecked;
    bar_button.OnClick     := OnMenuUsersClick;
    bar_button.Down        := (bar_button.Tag = Factive_users_id);
    
    with dxBarSubItem4.ItemLinks.Add do begin
      Index := 1 + Q.RecNo;
      Item := bar_button;
    end;
    Q.Next;
  end;

  Q.Free;
  Screen.Cursor := crDefault;
end;

procedure TfmActs.OnMenuUsersClick(Sender: TObject);
begin
  Screen.Cursor := crHourglass;

  Factive_users_id := TdxBarItem(Sender).Tag;
  SetPeriod(Fdate1, Fdate2);
  Caption := 'Акты (' + TdxBarItem(Sender).Caption + ')';

  Screen.Cursor := crDefault;
end;

procedure TfmActs.dxBarButton6Click(Sender: TObject);
begin
  case TdxBar(TdxBarItemLink(TdxBarButton(Sender).ClickItemLink).Owner.Owner).Tag of
    10: PrintcxGrid(cxGrid1DBBandedTableView1);
    11: PrintcxGrid(cxGrid2DBBandedTableView1);
    12: PrintcxGrid(cxGrid3DBBandedTableView1);
    15: PrintcxGrid(cxGrid5DBBandedTableView1);
    16: PrintcxGrid(cxGrid6DBBandedTableView1);
  end;
end;

procedure TfmActs.dxBarButton7Click(Sender: TObject);
var             i : integer;
  str_contract_id : string;
begin
  // Проверка на одинаковый контракт
  str_contract_id := cx_GetSelectedValues(cxGrid1, 'contract_id');
  str_contract_id := GetIDFromSQL('SELECT DISTINCT * FROM dbo.StrToTbl(''' + str_contract_id + ''', DEFAULT)', Fconnect);
  if Pos(',', str_contract_id) > 0 then begin
    Application.MessageBox('Можно выбирать акты только по одному договору', 'Внимание', MB_OK or MB_ICONERROR);
    Exit;
  end;

  Fstr_doc_id := '';
  for i:=0 to cxGrid1DBBandedTableView1.Controller.SelectedRecordCount - 1 do
    if cxGrid1DBBandedTableView1.Controller.SelectedRows[i].Values[cxGrid1DBBandedTableView1doc_id.Index] <> null then
      Fstr_doc_id := Fstr_doc_id + ',' + IntToStr(cxGrid1DBBandedTableView1.Controller.SelectedRows[i].Values[cxGrid1DBBandedTableView1doc_id.Index]);
  if Length(Fstr_doc_id) > 1 then
    Delete(Fstr_doc_id, 1, 1);

  ModalResult := mrOk;
  CloseModal;
end;

procedure TfmActs.dxBarButton8Click(Sender: TObject);
var
  str_bargain_id : string;
  acts_date : TDate;
begin
  if Query_Acts.Eof then
    exit;

  acts_date := cxGrid1DBBandedTableView1acts_date.DataBinding.Field.AsDateTime;
  str_bargain_id := cx_GetSelectedValues(cxGrid3, 'bargain_id');

  OpenAgree4List(acts_date, acts_date, False, str_bargain_id);
end;

procedure TfmActs.dxBarButton9Click(Sender: TObject);
var _fmInvoiceScoreAdd : TfmInvoiceScoreAdd;
    _fmInvoiceScoreCorrAdd : TfmInvoiceScoreCorrAdd;
begin
  if cxGrid2DBBandedTableView1invoice_score_id.DataBinding.Field.IsNull then exit;

  if cxGrid2DBBandedTableView1parent_id.DataBinding.Field.IsNull then begin
    _fmInvoiceScoreAdd := TfmInvoiceScoreAdd.Create(Application, False, cxGrid2DBBandedTableView1type_invoice_score.DataBinding.Field.AsInteger);
    _fmInvoiceScoreAdd._UpdateInvoiceScore := cxGrid2DBBandedTableView1invoice_score_id.DataBinding.Field.AsInteger;
    if (_fmInvoiceScoreAdd.ShowModal = mrOk) then
      RefreshQueryGrid(cxGrid2DBBandedTableView1, 'invoice_score_id', _fmInvoiceScoreAdd._GetInvoiceScoreID);
    _fmInvoiceScoreAdd.Free;
  end else begin
    _fmInvoiceScoreCorrAdd := TfmInvoiceScoreCorrAdd.Create(Application, False, cxGrid2DBBandedTableView1type_invoice_score.DataBinding.Field.AsInteger);
    _fmInvoiceScoreCorrAdd._UpdateInvoiceScore := cxGrid2DBBandedTableView1invoice_score_id.DataBinding.Field.AsInteger;
    if (_fmInvoiceScoreCorrAdd.ShowModal = mrOk) then
      RefreshQueryGrid(cxGrid2DBBandedTableView1, 'invoice_score_id', _fmInvoiceScoreCorrAdd._GetInvoiceScoreID);
    _fmInvoiceScoreCorrAdd.Free;
  end;
end;

procedure TfmActs.dxBarLargeButton1Click(Sender: TObject);
type
  TFunc1 = function(AppHand: THandle; usr_pwd: PUser_pwd; acts_id: integer; type_action: integer; set_readonly: boolean; bargain_id: integer): Variant;
  TFunc2 = function(AppHand: THandle; usr_pwd: PUser_pwd; acts_type_cod, parent_acts_id: integer; str_bargain_id: string; date_begin, date_end: TDate; contract_id, contract_agent_id: integer; set_sign: integer; mask_checked: word; acts_comment: string; set_readonly : boolean) : Variant;
var
  FActAdd        : TFunc1;
  FActSettings   : TFunc2;
  handle         : THandle;
begin
  if cxGrid1DBBandedTableView1acts_id.DataBinding.Field.IsNull then
    exit;

  if cxGrid1DBBandedTableView1acts_type_cod.DataBinding.Field.AsInteger < 0 then begin
    handle := LoadLibrary('user.dll');
    @FActAdd := GetProcAddress(handle, 'CreateWndActAdd');
    FActAdd(Application.Handle, usr_pwd, cxGrid1DBBandedTableView1acts_id.DataBinding.Field.AsInteger, 1, True, -9);
    FreeLibrary(handle);
  end else begin
    handle := LoadLibrary('user.dll');
    @FActSettings := GetProcAddress(handle, 'CreateWndActSettings');
    FActSettings(Application.Handle, usr_pwd,
        cxGrid1DBBandedTableView1acts_type_cod.DataBinding.Field.AsInteger,
        cxGrid1DBBandedTableView1acts_id.DataBinding.Field.AsInteger,
        '-9',
        cxGrid1DBBandedTableView1date_begin.DataBinding.Field.AsDateTime,
        cxGrid1DBBandedTableView1date_end.DataBinding.Field.AsDateTime,
        cxGrid1DBBandedTableView1contract_id.DataBinding.Field.AsInteger,
        cxGrid1DBBandedTableView1contract_agent_id.DataBinding.Field.AsInteger,
        1,
        $FFFF,
        cxGrid1DBBandedTableView1acts_comment.DataBinding.Field.AsString,
        True);
    FreeLibrary(handle);
  end;
end;

procedure TfmActs.dxBarButton10Click(Sender: TObject);
var i : integer;
    bln : boolean;
begin
  bln := False;
  for i:=0 to fmMain.MDIChildCount-1 do
    if (fmMain.MDIChildren[i].ClassName = 'TfmInvoiceScore') then begin
      fmInvoiceScore := TfmInvoiceScore(fmMain.MDIChildren[i]);
      bln := True;
    end;

  if not bln then
    fmInvoiceScore := TfmInvoiceScore.Create(Application, False, cxGrid2DBBandedTableView1type_invoice_score.DataBinding.Field.AsInteger);

  fmInvoiceScore.Show;
end;


procedure TfmActs.dxBarButton18Click(Sender: TObject);
begin
  case TdxBar(TdxBarItemLink(TdxBarButton(Sender).ClickItemLink).Owner.Owner).Tag of
    10: SetdxDBGridColumns(cxGrid1DBBandedTableView1);
    11: SetdxDBGridColumns(cxGrid2DBBandedTableView1);
    12: SetdxDBGridColumns(cxGrid3DBBandedTableView1);
    15: SetdxDBGridColumns(cxGrid5DBBandedTableView1);
    16: SetdxDBGridColumns(cxGrid6DBBandedTableView1);
  end;
end;

procedure TfmActs.dxBarButton19Click(Sender: TObject);
begin
  case TdxBar(TdxBarItemLink(TdxBarButton(Sender).ClickItemLink).Owner.Owner).Tag of
    10: cxGrid1DBBandedTableView1.OptionsView.GroupByBox := not cxGrid1DBBandedTableView1.OptionsView.GroupByBox;
    11: cxGrid2DBBandedTableView1.OptionsView.GroupByBox := not cxGrid2DBBandedTableView1.OptionsView.GroupByBox;
    12: cxGrid3DBBandedTableView1.OptionsView.GroupByBox := not cxGrid3DBBandedTableView1.OptionsView.GroupByBox;
    15: cxGrid5DBBandedTableView1.OptionsView.GroupByBox := not cxGrid5DBBandedTableView1.OptionsView.GroupByBox;
    16: cxGrid6DBBandedTableView1.OptionsView.GroupByBox := not cxGrid6DBBandedTableView1.OptionsView.GroupByBox;
  end;
end;

procedure TfmActs.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TfmActs.FormDestroy(Sender: TObject);
begin
  SavePositionForm(self, '\Software\Lis1\DateTime\Acts', Fdate1, Fdate2);

  StoreRegistryGrid(rgSave,'\Software\Lis1\Acts_Grids\Acts',          cxGrid1DBBandedTableView1);
  StoreRegistryGrid(rgSave,'\Software\Lis1\Acts_Grids\Invoice_score', cxGrid2DBBandedTableView1);
  StoreRegistryGrid(rgSave,'\Software\Lis1\Acts_Grids\Agree',         cxGrid3DBBandedTableView1);
  StoreRegistryGrid(rgSave,'\Software\Lis1\Acts_Grids\Repair',        cxGrid4DBBandedTableView1);
  StoreRegistryGrid(rgSave,'\Software\Lis1\Acts_Grids\Docs',          cxGrid5DBBandedTableView1);
  StoreRegistryGrid(rgSave,'\Software\Lis1\Acts_Grids\Service',       cxGrid6DBBandedTableView1);

end;

procedure TfmActs._SetFilterActs4TypeCod(str_type_cod : string);
var   i : integer;
  _list : array of string;
begin
  with cxGrid1DBBandedTableView1.DataController.Filter do begin
    Clear;
    Options := Options + [fcoCaseInsensitive];
    Root.BoolOperatorKind := fboAnd;
    SetLength(_list, Length(str_type_cod) - Length( ReplaceStr(str_type_cod, ',', '')) + 1);
    _list[0] := str_type_cod;
    for i := 1 to High(_list) do begin
      _list[i] := RightStr(_list[i-1], length(_list[i-1]) - pos(',', _list[i-1]));
      _list[i-1] := LeftStr(_list[i-1], pos(',', _list[i-1]) - 1);
    end;
    Root.AddItem(cxGrid1DBBandedTableView1acts_type_cod, foInList, _list, str_type_cod);
    Active := True;
  end;
end;

procedure TfmActs._SetFilterActs(users_id: integer; date_from, date_to: TDate; str_acts_id: string; contract_id: integer; set_all_acts: boolean);
var
  Query        : TADOQuery;
  i            : integer;
  str_find_act : string;
begin
  if str_acts_id <> '' then begin
    // передан список актов, пересчитываем параметры дат
    Query := TADOQuery.Create(nil);
    Query.Connection := Fconnect;
    Query.SQL.Add('SELECT min(acts_date) as date_from, max(acts_date) as date_to FROM view_acts WHERE acts_id in (' + str_acts_id + ')');
    Query.Open;
    date_from := StartOfTheMonth(Query.FieldByName('date_from').AsDateTime);
    date_to   := EndOfTheMonth(Query.FieldByName('date_to').AsDateTime);
    Query.Free;
  end;

  Factive_users_id := users_id;
  Fset_all_acts    := set_all_acts;
  SetPeriod(date_from, date_to);

  if contract_id <> -9 then begin
    // Создаем фильтр по номеру записи договора
    with cxGrid1DBBandedTableView1.DataController.Filter do begin
      Clear;
      Options := Options + [fcoCaseInsensitive];
      Root.BoolOperatorKind := fboAnd;
      Root.AddItem(cxGrid1DBBandedTableView1contract_id, foEqual, contract_id, IntToStr(contract_id));
      Active := True;
    end;
  end;

  if str_acts_id <> '' then begin
    cxGrid1DBBandedTableView1.Controller.ClearSelection;
    // передан список актов, выделяем акты
    for i := 0 to cxGrid1DBBandedTableView1.ViewData.RowCount - 1 do begin
      str_find_act := ',' + VarToStr(cxGrid1DBBandedTableView1.ViewData.Rows[i].Values[cxGrid1DBBandedTableView1acts_id.Index]) + ',';
      // на первый акт в списке фокусируемся, т.к. может так получиться,
      // что акт сфокусируемый по умолчанию, не входит в список,
      // а по окраске строки его будет нельзя отличить от выделенных
      // и визуально будет казаться, что выделено (напимер) 2 акта, хотя реально выбран только 1 
      if Pos(str_find_act, ',' + str_acts_id + ',') = 1 then
        cxGrid1DBBandedTableView1.ViewData.Rows[i].Focused := True;
      if Pos(str_find_act, ',' + str_acts_id + ',') > 0 then
        cxGrid1DBBandedTableView1.ViewData.Rows[i].Selected := True;
    end;
  end;
end;

function TfmActs.GetDocsID       : integer;
begin
  if cxGrid1DBBandedTableView1.Controller.SelectedRowCount > 0 then
    if cxGrid1DBBandedTableView1.Controller.SelectedRows[0].Values[cxGrid1DBBandedTableView1docs_id.Index] <> null then
      Result := cxGrid1DBBandedTableView1.Controller.SelectedRows[0].Values[cxGrid1DBBandedTableView1docs_id.Index]
    else
      Result := -9
  else
    if not cxGrid1DBBandedTableView1docs_id.DataBinding.Field.IsNull then
      Result := cxGrid1DBBandedTableView1docs_id.DataBinding.Field.AsInteger
    else
      Result := -9;
end;


function TfmActs.GetActsID       : integer;
begin
  if cxGrid1DBBandedTableView1.Controller.SelectedRowCount > 0 then
    Result := cxGrid1DBBandedTableView1.Controller.SelectedRows[0].Values[cxGrid1DBBandedTableView1acts_id.Index]
  else
    Result := cxGrid1DBBandedTableView1acts_id.DataBinding.Field.AsInteger;
end;

function TfmActs.GetActsCod       : string;
begin
  if cxGrid1DBBandedTableView1.Controller.SelectedRowCount > 0 then
    Result := VarToStr(cxGrid1DBBandedTableView1.Controller.SelectedRows[0].Values[cxGrid1DBBandedTableView1acts_cod.Index])
  else
    Result := cxGrid1DBBandedTableView1acts_cod.DataBinding.Field.AsString;
end;

function TfmActs.GetActsTypeCod       : string;
begin
  if cxGrid1DBBandedTableView1.Controller.SelectedRowCount > 0 then
    Result := VarToStr(cxGrid1DBBandedTableView1.Controller.SelectedRows[0].Values[cxGrid1DBBandedTableView1acts_type_cod.Index])
  else
    Result := cxGrid1DBBandedTableView1acts_type_cod.DataBinding.Field.AsString;
end;


function TfmActs.GetStrActsID;
begin
  Result := cx_GetSelectedValues(cxGrid1, 'acts_id');
end;


function TfmActs.GetContractID   : integer;
begin
  if cxGrid1DBBandedTableView1.Controller.SelectedRowCount > 0 then
    Result := cxGrid1DBBandedTableView1.Controller.SelectedRows[0].Values[cxGrid1DBBandedTableView1contract_id.Index]
  else
    Result := cxGrid1DBBandedTableView1contract_id.DataBinding.Field.AsInteger;
end;

function TfmActs.GetFirmSelfID : integer;
begin
  if cxGrid1DBBandedTableView1.Controller.SelectedRowCount > 0 then
    Result := cxGrid1DBBandedTableView1.Controller.SelectedRows[0].Values[cxGrid1DBBandedTableView1firm_self_id.Index]
  else
    Result := cxGrid1DBBandedTableView1firm_self_id.DataBinding.Field.AsInteger;
end;

function TfmActs.GetContractAgentID   : integer;
var ret : Variant;
begin
  if cxGrid1DBBandedTableView1.Controller.SelectedRowCount > 0 then
    ret := cxGrid1DBBandedTableView1.Controller.SelectedRows[0].Values[cxGrid1DBBandedTableView1contract_agent_id.Index]
  else
    ret := cxGrid1DBBandedTableView1contract_agent_id.DataBinding.Field.Value;

  if ret = null then
    Result := -9
  else
    Result := ret;
end;


procedure TfmActs.SetActsID(acts_id: integer);
begin
  if acts_id <> -9 then FindActs(acts_id);
end;

end.


