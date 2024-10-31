unit PlanClient;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Default,
  Dialogs, cxLabel, cxStyles, cxCustomData, cxGraphics, cxFilter, cxData, cxDataStorage,
  cxEdit, DB, cxDBData, cxGridLevel, cxClasses, cxControls, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridBandedTableView, cxGridDBBandedTableView, cxGrid, ImgList, ADODB, cxPropertiesStore,
  dxBar, cxBarEditItem, cxCurrencyEdit, cxPC, cxButtonEdit, StdCtrls, cxContainer, cxTextEdit, cxMaskEdit,
  cxDropDownEdit, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, ExtCtrls, cxCheckBox, ComObj, DateUtils,
  cxLookAndFeels, cxLookAndFeelPainters, cxCalendar, DBClient, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee,
  dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMetropolis, dxSkinMetropolisDark, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinPumpkin,
  dxSkinSeven, dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus, dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008,
  dxSkinTheAsphaltWorld, dxSkinsDefaultPainters, dxSkinValentine, dxSkinVS2010, dxSkinWhiteprint, dxSkinXmas2008Blue, dxSkinscxPCPainter,
  dxBarBuiltInMenu, cxNavigator, dxSkinsdxBarPainter, dxSkinOffice2016Colorful,
  dxSkinOffice2016Dark, dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, System.ImageList, cxImageList, cxGridDBDataDefinitions,
  cxColorComboBox, cxDataControllerConditionalFormattingRulesManagerDialog,
  dxDockControl, dxSkinTheBezier, cxGridExportLink, ShellApi, dxDateRanges, StrUtils, dxSkinOffice2019Colorful, dxColorEdit;

type
  TfmPlanClient = class(TForm)
    dxBarManager1: TdxBarManager;
    dxBarManager1Bar1: TdxBar;
    dxBarButton5: TdxBarButton;
    dxBarButton6: TdxBarButton;
    dxBarButton15: TdxBarButton;
    dxBarSubItem5: TdxBarSubItem;
    dxBarButton16: TdxBarButton;
    dxBarButton17: TdxBarButton;
    dxBarButton18: TdxBarButton;
    dxBarButton19: TdxBarButton;
    dxBarButton23: TdxBarButton;
    cxPropertiesStore1: TcxPropertiesStore;
    DS_PlanClient: TDataSource;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle_Bold: TcxStyle;
    dxBarButton1: TdxBarButton;
    dxBarButton2: TdxBarButton;
    dxBarPopup_PlanClient: TdxBarPopupMenu;
    dxBarButton4: TdxBarButton;
    dxBarSubItem2: TdxBarSubItem;
    dxBarButton7: TdxBarButton;
    cxPageControl1: TcxPageControl;
    cxTabSheet1: TcxTabSheet;
    cxGrid1: TcxGrid;
    cxGrid1DBBandedTableView1: TcxGridDBBandedTableView;
    cxGrid1DBBandedTableView1plan_client_id: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1plan_date: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1contract_cod: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1firm_customer_name_short: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1firm_customer: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1node_begin_name: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1node_end_name: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1kargoETSNG_name: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1plan_weight: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1plan_count: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1plan_rate: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1ed_izm_name: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1brief_name: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1plan_client_sum: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1plan_ZFTO_sum: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1FIO_users_owner: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1global_color: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1global_copy: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1ed_izm_id: TcxGridDBBandedColumn;
    cxGrid1Level1: TcxGridLevel;
    cxTabSheet3: TcxTabSheet;
    cxGrid3: TcxGrid;
    cxGrid3DBBandedTableView1: TcxGridDBBandedTableView;
    cxGrid3Level1: TcxGridLevel;
    dxBarPopup_PlanClientRate: TdxBarPopupMenu;
    dxBarButton8: TdxBarButton;
    dxBarButton9: TdxBarButton;
    dxBarButton10: TdxBarButton;
    cxGrid3DBBandedTableView1plan_client_rate_id: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1date_begin: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1date_end: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1contract_id: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1node_begin_id: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1node_end_id: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1kargoETSNG_id: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1plan_rate: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1currency_id: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1ed_izm_id: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1firm_self: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1contract_cod: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1firm_customer: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1firm_self_name: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1firm_customer_name: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1brief_name: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1currency_cod: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1ed_izm_mane: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1ed_izm_cod: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1node_begin_name: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1nod_end_name: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1kargoETSNG_name: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1global_color: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1set_first_plan: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1plan_client_rate_id: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1first_plan_rate: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1FIO_users_owner: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1type_rate_name: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1type_rate_name: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1type_plan_client_name: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1type_plan_client_name: TcxGridDBBandedColumn;
    dxBarButton11: TdxBarButton;
    GroupBox4: TGroupBox;
    cxGrid2: TcxGrid;
    cxGrid2DBBandedTableView1: TcxGridDBBandedTableView;
    cxGrid2DBBandedTableView1fact_id: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1bargain_id: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1firm_info_name: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1num_document_pref: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1num_document: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1num_vagon: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1num_konten: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1sub_cod_self: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1from_to: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1date_from_to: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1datpr: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1date_ready: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1date_delivery: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1fact_weight: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1calc_weight: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1kargo_capacity: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1transport_pay: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1kateg_send: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1nds: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1set_main: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1firm_info_id: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1xml_reply_id: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1fact_etran_comment: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1fact_users_comment: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1global_color: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1node_begin_name: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1node_end_name: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1etran_folder: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1etran_owner_name: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1quantity: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1add_collection: TcxGridDBBandedColumn;
    cxGrid2Level1: TcxGridLevel;
    Splitter1: TSplitter;
    Query_FactClient: TADOQuery;
    DS_FactClient: TDataSource;
    dxBarPopupMenu1: TdxBarPopupMenu;
    dxBarButton12: TdxBarButton;
    dxBarButton13: TdxBarButton;
    dxBarButton14: TdxBarButton;
    dxBarButton21: TdxBarButton;
    dxBarButton20: TdxBarButton;
    cxGrid1DBBandedTableView1contract_id: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1contract_agent_id: TcxGridDBBandedColumn;
    dxBarButton28: TdxBarButton;
    dxBarSubItem7: TdxBarSubItem;
    dxBarButton_FilterRecords2: TdxBarButton;
    dxBarButton29: TdxBarButton;
    dxBarButton30: TdxBarButton;
    dxBarButton31: TdxBarButton;
    cxGrid3DBBandedTableView1distance: TcxGridDBBandedColumn;
    dxBarDockControl1: TdxBarDockControl;
    dxBarManager1Bar2: TdxBar;
    dxBarDockControl2: TdxBarDockControl;
    dxBarSubItem1: TdxBarSubItem;
    dxBarButton34: TdxBarButton;
    dxBarSubItem3: TdxBarSubItem;
    cxGrid1DBBandedTableView1distance: TcxGridDBBandedColumn;
    cxTabSheet5: TcxTabSheet;
    cxGrid7: TcxGrid;
    cxGrid7DBBandedTableView1: TcxGridDBBandedTableView;
    cxGrid7DBBandedTableView1plan_client_rate_id: TcxGridDBBandedColumn;
    cxGrid7DBBandedTableView1date_begin: TcxGridDBBandedColumn;
    cxGrid7DBBandedTableView1date_end: TcxGridDBBandedColumn;
    cxGrid7DBBandedTableView1contract_id: TcxGridDBBandedColumn;
    cxGrid7DBBandedTableView1plan_rate: TcxGridDBBandedColumn;
    cxGrid7DBBandedTableView1contract_cod: TcxGridDBBandedColumn;
    cxGrid7DBBandedTableView1firm_self_name: TcxGridDBBandedColumn;
    cxGrid7DBBandedTableView1firm_customer_name: TcxGridDBBandedColumn;
    cxGrid7DBBandedTableView1brief_name: TcxGridDBBandedColumn;
    cxGrid7DBBandedTableView1ed_izm_name: TcxGridDBBandedColumn;
    cxGrid7DBBandedTableView1node_begin_name: TcxGridDBBandedColumn;
    cxGrid7DBBandedTableView1node_end_name: TcxGridDBBandedColumn;
    cxGrid7DBBandedTableView1kargoETSNG_name: TcxGridDBBandedColumn;
    cxGrid7DBBandedTableView1global_color: TcxGridDBBandedColumn;
    cxGrid7DBBandedTableView1FIO_users_owner: TcxGridDBBandedColumn;
    cxGrid7DBBandedTableView1type_rate_name: TcxGridDBBandedColumn;
    cxGrid7DBBandedTableView1type_plan_client_name: TcxGridDBBandedColumn;
    cxGrid7DBBandedTableView1distance: TcxGridDBBandedColumn;
    cxGrid7Level1: TcxGridLevel;
    dxBarManager1Bar5: TdxBar;
    dxBarDockControl5: TdxBarDockControl;
    DS_PlanClient_Rate1: TDataSource;
    cxGrid7DBBandedTableView1type_rate: TcxGridDBBandedColumn;
    SP_PlanClient: TADOStoredProc;
    Query_PlanClient_Rate1: TADOQuery;
    cxGrid7DBBandedTableView1rod_vagon_name: TcxGridDBBandedColumn;
    cxGrid7DBBandedTableView1group_vagon_name: TcxGridDBBandedColumn;
    cxGrid7DBBandedTableView1owner_name: TcxGridDBBandedColumn;
    cxGrid7DBBandedTableView1node_border_full_name: TcxGridDBBandedColumn;
    cxGrid7DBBandedTableView1node_border_empty_name: TcxGridDBBandedColumn;
    cxGrid7DBBandedTableView1dual_oper_name: TcxGridDBBandedColumn;
    cxGrid7DBBandedTableView1rate_nds_name: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1rate_nds_name: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1rate_nds_name: TcxGridDBBandedColumn;
    dxBarButton38: TdxBarButton;
    cxGrid7DBBandedTableView1budget_name: TcxGridDBBandedColumn;
    Splitter4: TSplitter;
    Query_AgentRate: TADOQuery;
    DS_AgentRate: TDataSource;
    cxPageControl2: TcxPageControl;
    cxTabSheet6: TcxTabSheet;
    cxTabSheet7: TcxTabSheet;
    cxTabSheet8: TcxTabSheet;
    cxGrid10: TcxGrid;
    cxGridDBBandedTableView2: TcxGridDBBandedTableView;
    cxGrid5DBBandedTableView1acts_id: TcxGridDBBandedColumn;
    cxGrid5DBBandedTableView1acts_cod: TcxGridDBBandedColumn;
    cxGrid5DBBandedTableView1acts_type_name: TcxGridDBBandedColumn;
    cxGrid5DBBandedTableView1acts_sum: TcxGridDBBandedColumn;
    cxGrid5DBBandedTableView1acts_currency_cod: TcxGridDBBandedColumn;
    cxGrid5DBBandedTableView1FIO_users: TcxGridDBBandedColumn;
    cxGrid5DBBandedTableView1global_color: TcxGridDBBandedColumn;
    cxGrid10Level1: TcxGridLevel;
    cxGrid8: TcxGrid;
    cxGrid8DBBandedTableView1: TcxGridDBBandedTableView;
    cxGrid8DBBandedTableView1plan_agent_rate_id: TcxGridDBBandedColumn;
    cxGrid8DBBandedTableView1firm_customer_name: TcxGridDBBandedColumn;
    cxGrid8DBBandedTableView1contract_cod: TcxGridDBBandedColumn;
    cxGrid8DBBandedTableView1ed_izm_name: TcxGridDBBandedColumn;
    cxGrid8DBBandedTableView1shaping_rate_val: TcxGridDBBandedColumn;
    cxGrid8DBBandedTableView1budget_name: TcxGridDBBandedColumn;
    cxGrid8DBBandedTableView1brief_name: TcxGridDBBandedColumn;
    cxGrid8DBBandedTableView1rate_nds_name: TcxGridDBBandedColumn;
    cxGrid8DBBandedTableView1type_park_name: TcxGridDBBandedColumn;
    cxGrid8DBBandedTableView1rod_vagon_name: TcxGridDBBandedColumn;
    cxGrid8DBBandedTableView1set_find_contract: TcxGridDBBandedColumn;
    cxGrid8Level1: TcxGridLevel;
    cxGrid9: TcxGrid;
    cxGrid9DBBandedTableView1: TcxGridDBBandedTableView;
    cxGrid1DBBandedTableView1bargain_id: TcxGridDBBandedColumn;
    cxGrid9DBBandedTableView1bargain_cod: TcxGridDBBandedColumn;
    cxGrid9DBBandedTableView1firm_customer_name: TcxGridDBBandedColumn;
    cxGrid9DBBandedTableView1firm_self_name: TcxGridDBBandedColumn;
    cxGrid9DBBandedTableView1FIO_users_owner: TcxGridDBBandedColumn;
    cxGrid9DBBandedTableView1users_group_name: TcxGridDBBandedColumn;
    cxGrid9DBBandedTableView1node_begin_name: TcxGridDBBandedColumn;
    cxGrid9DBBandedTableView1node_end_name: TcxGridDBBandedColumn;
    cxGrid9DBBandedTableView1bargain_sum: TcxGridDBBandedColumn;
    cxGrid9DBBandedTableView1brief_name: TcxGridDBBandedColumn;
    cxGrid9DBBandedTableView1kargoETSNG_name: TcxGridDBBandedColumn;
    cxGrid9DBBandedTableView1kargoETSNG_group_name: TcxGridDBBandedColumn;
    cxGrid9DBBandedTableView1vid_transfer_name: TcxGridDBBandedColumn;
    cxGrid9DBBandedTableView1bargain_nds_name: TcxGridDBBandedColumn;
    cxGrid9DBBandedTableView1our_rate_val: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1quantity: TcxGridDBBandedColumn;
    cxGrid9DBBandedTableView1quantity_units: TcxGridDBBandedColumn;
    cxGrid9DBBandedTableView1ed_izm_name: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1fact_weight: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1amount_fact: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1amount_units_fact: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1bargain_sum_fact: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1bargain_sum_fact_USD: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1bargain_comiss_USD: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1bargain_sum_fact_RUB: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1bargain_comiss_RUB: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1bargain_comiss: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1state_begin_name: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1date_enter: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1state_end_name: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1date_modify: TcxGridDBBandedColumn;
    cxGrid9DBBandedTableView1contract_cod: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1set_bargain_block: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1bargain_correct_group: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1bargain_correct_type_name: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1bargain_note: TcxGridDBBandedColumn;
    cxGrid9DBBandedTableView1contract_id: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1date_period: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1date_period_finance: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1date_period_service: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1our_rate_vid_send: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1our_rate_comiss_val: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1vid_transfer_cod: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1users_owner_id: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1currency_id: TcxGridDBBandedColumn;
    cxGrid9DBBandedTableView1global_color: TcxGridDBBandedColumn;
    cxGrid9DBBandedTableView1global_copy: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1bargain_rights: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1agreement_describe: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1agreement_note: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1set_return: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1return_name: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1kargoETSNG_cod: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1day_rent: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1five_days_zfto_name: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1client_NDS_RUB: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1client_notNDS_RUB: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1comiss_notNDS_RUB: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1comiss_NDS_RUB: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1kargoGNG_name: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1road_begin_name: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1road_end_name: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1set_bargain_weight: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1FIO_users_modify: TcxGridDBBandedColumn;
    cxGrid9DBBandedTableView1budget_cod: TcxGridDBBandedColumn;
    cxGrid9DBBandedTableView1budget_name: TcxGridDBBandedColumn;
    cxGrid9DBBandedTableView1rod_vagon_name: TcxGridDBBandedColumn;
    cxGrid9Level1: TcxGridLevel;
    DS_Agree: TDataSource;
    Query_Agree: TADOQuery;
    dxBarPopupMenu6: TdxBarPopupMenu;
    dxBarButton40: TdxBarButton;
    dxBarButton41: TdxBarButton;
    dxBarButton42: TdxBarButton;
    cxGrid3DBBandedTableView1budget_name: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1budget_name: TcxGridDBBandedColumn;
    dxBarSubItem4: TdxBarSubItem;
    cxGrid7DBBandedTableView1set_calc_date_name: TcxGridDBBandedColumn;
    cxGrid7DBBandedTableView1five_days_zfto_type_name: TcxGridDBBandedColumn;
    cxGrid7DBBandedTableView1date_enter: TcxGridDBBandedColumn;
    cxGrid7DBBandedTableView1kateg_send_name: TcxGridDBBandedColumn;
    cxGrid7DBBandedTableView1Comment: TcxGridDBBandedColumn;
    dxBarSubItem6: TdxBarSubItem;
    DS_PlanClient_Rate: TDataSource;
    dxBarButton3: TdxBarButton;
    dxBarSeparator1: TdxBarSeparator;
    cxGrid8DBBandedTableView1type_calc_name: TcxGridDBBandedColumn;
    cxGrid8DBBandedTableView1type_rate_name: TcxGridDBBandedColumn;
    Query_PlanClient_Rate: TADOQuery;
    cxGrid8DBBandedTableView1els_cod: TcxGridDBBandedColumn;
    cxTabSheet4: TcxTabSheet;
    dxBarManager1Bar3: TdxBar;
    dxDockingManager1: TdxDockingManager;
    dxBarDockControl3: TdxBarDockControl;
    cxGrid4: TcxGrid;
    cxGrid4DBBandedTableView1: TcxGridDBBandedTableView;
    cxGrid4DBBandedTableView1fact_id: TcxGridDBBandedColumn;
    cxGrid4DBBandedTableView1bargain_id: TcxGridDBBandedColumn;
    cxGrid4DBBandedTableView1firm_info_name: TcxGridDBBandedColumn;
    cxGrid4DBBandedTableView1num_document_pref: TcxGridDBBandedColumn;
    cxGrid4DBBandedTableView1num_document: TcxGridDBBandedColumn;
    cxGrid4DBBandedTableView1num_vagon: TcxGridDBBandedColumn;
    cxGrid4DBBandedTableView1num_konten: TcxGridDBBandedColumn;
    cxGrid4DBBandedTableView1sub_cod_self: TcxGridDBBandedColumn;
    cxGrid4DBBandedTableView1from_to: TcxGridDBBandedColumn;
    cxGrid4DBBandedTableView1date_from_to: TcxGridDBBandedColumn;
    cxGrid4DBBandedTableView1datpr: TcxGridDBBandedColumn;
    cxGrid4DBBandedTableView1date_ready: TcxGridDBBandedColumn;
    cxGrid4DBBandedTableView1date_delivery: TcxGridDBBandedColumn;
    cxGrid4DBBandedTableView1fact_weight: TcxGridDBBandedColumn;
    cxGrid4DBBandedTableView1calc_weight: TcxGridDBBandedColumn;
    cxGrid4DBBandedTableView1kargo_capacity: TcxGridDBBandedColumn;
    cxGrid4DBBandedTableView1transport_pay: TcxGridDBBandedColumn;
    cxGrid4DBBandedTableView1kateg_send: TcxGridDBBandedColumn;
    cxGrid4DBBandedTableView1nds: TcxGridDBBandedColumn;
    cxGrid4DBBandedTableView1fact_etran_comment: TcxGridDBBandedColumn;
    cxGrid4DBBandedTableView1fact_users_comment: TcxGridDBBandedColumn;
    cxGrid4DBBandedTableView1global_color: TcxGridDBBandedColumn;
    cxGrid4DBBandedTableView1node_begin_name: TcxGridDBBandedColumn;
    cxGrid4DBBandedTableView1node_end_name: TcxGridDBBandedColumn;
    cxGrid4DBBandedTableView1etran_folder: TcxGridDBBandedColumn;
    cxGrid4DBBandedTableView1etran_owner_name: TcxGridDBBandedColumn;
    cxGrid4DBBandedTableView1quantity: TcxGridDBBandedColumn;
    cxGrid4DBBandedTableView1add_collection: TcxGridDBBandedColumn;
    cxGridLevel4: TcxGridLevel;
    DS_PlanClientDelail: TDataSource;
    SP_PlanClientDelail: TADOStoredProc;
    dxBarPopupMenu4: TdxBarPopupMenu;
    cxGrid4DBBandedTableView1firm_customer_name: TcxGridDBBandedColumn;
    cxGrid4DBBandedTableView1contract_cod: TcxGridDBBandedColumn;
    cxGrid4DBBandedTableView1plan_date: TcxGridDBBandedColumn;
    cxGrid4DBBandedTableView1kargoETSNG_name: TcxGridDBBandedColumn;
    cxGrid7DBBandedTableView1agreement_describe: TcxGridDBBandedColumn;
    cxGrid7DBBandedTableView1agreement_note: TcxGridDBBandedColumn;
    dxBarPopupMenu2: TdxBarPopupMenu;
    dxBarSubItem8: TdxBarSubItem;
    dxBarButton36: TdxBarButton;
    dxBarButton37: TdxBarButton;
    dxBarButton24: TdxBarButton;
    cxGrid7DBBandedTableView1type_bargain_date_name: TcxGridDBBandedColumn;
    cxGrid4DBBandedTableView1plan_rate: TcxGridDBBandedColumn;
    cxGrid4DBBandedTableView1ed_izm_name: TcxGridDBBandedColumn;
    cxGrid4DBBandedTableView1brief_name: TcxGridDBBandedColumn;
    cxGrid4DBBandedTableView1plan_client_sum_detail: TcxGridDBBandedColumn;
    cxGrid4DBBandedTableView1type_rate_name: TcxGridDBBandedColumn;
    cxGrid7DBBandedTableView1set_bargain_weight: TcxGridDBBandedColumn;
    cxGrid4DBBandedTableView1plan_client_id: TcxGridDBBandedColumn;
    dxBarButton25: TdxBarButton;
    cxGrid7DBBandedTableView1set_include_nds: TcxGridDBBandedColumn;
    dxBarButton26: TdxBarButton;
    dxBarSubItem9: TdxBarSubItem;
    dxBarButton27: TdxBarButton;
    dxBarButton32: TdxBarButton;
    dxBarButton33: TdxBarButton;
    dxBarButton35: TdxBarButton;
    cxGrid7DBBandedTableView1plan_rate_calc: TcxGridDBBandedColumn;
    dxBarButton39: TdxBarButton;
    dxBarButton44: TdxBarButton;
    cxGrid2DBBandedTableView1kargoETSNG_name: TcxGridDBBandedColumn;
    dxBarButton45: TdxBarButton;
    dxBarButton46: TdxBarButton;
    cxGrid2DBBandedTableView1Column1: TcxGridDBBandedColumn;
    dxBarSubItem10: TdxBarSubItem;
    dxBarButton47: TdxBarButton;
    dxBarSubItem11: TdxBarSubItem;
    dxBarSubItem12: TdxBarSubItem;
    dxBarSubItem13: TdxBarSubItem;
    procedure cxGrid3DBBandedTableView1DataControllerFilterChanged(Sender: TObject);
    procedure cxGrid1DBBandedTableView1KeyPress(Sender: TObject; var Key: Char);
    procedure dxBarButton5Click(Sender: TObject);
    procedure dxBarButton10Click(Sender: TObject);
    procedure dxBarButton9Click(Sender: TObject);
    procedure dxBarButton8Click(Sender: TObject);
    procedure dxBarButton15Click(Sender: TObject);
    procedure dxBarButton23Click(Sender: TObject);
    procedure dxBarButton16Click(Sender: TObject);
    procedure dxBarButton19Click(Sender: TObject);
    procedure dxBarButton18Click(Sender: TObject);
    procedure dxBarButton6Click(Sender: TObject);
    procedure cxGrid1DBBandedTableView1DataControllerFilterChanged(Sender: TObject);
    procedure cxGrid1DBBandedTableView1FocusedItemChanged(Sender: TcxCustomGridTableView; APrevFocusedItem, AFocusedItem: TcxCustomGridTableItem);
    procedure cxGrid1DBBandedTableView1CustomDrawColumnHeader(Sender: TcxGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxGridColumnHeaderViewInfo; var ADone: Boolean);
    procedure cxGrid1DBBandedTableView1CustomDrawCell(Sender: TcxCustomGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure dxBarButton7Click(Sender: TObject);
    procedure dxBarButton2Click(Sender: TObject);
    procedure dxBarButton1Click(Sender: TObject);
    procedure ADOConnExecuteComplete(Connection: TADOConnection; RecordsAffected: Integer; const Error: Error; var EventStatus: TEventStatus; const Command: _Command; const Recordset: _Recordset);
    procedure SetPeriod(date1, date2 : TDateTime);
    procedure dxBarButton11Click(Sender: TObject);
    procedure cxGrid1DBBandedTableView1FocusedRecordChanged(Sender: TcxCustomGridTableView; APrevFocusedRecord,  AFocusedRecord: TcxCustomGridRecord;    ANewItemRecordFocusingChanged: Boolean);
    procedure dxBarButton14Click(Sender: TObject);
    procedure dxBarButton21Click(Sender: TObject);
    procedure dxBarButton12Click(Sender: TObject);
    procedure dxBarButton13Click(Sender: TObject);
    procedure dxBarButton20Click(Sender: TObject);
    procedure cxPageControl1Change(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure dxBarButton_FilterRecords2Click(Sender: TObject);
    procedure dxBarButton30Click(Sender: TObject);
    procedure dxBarButton31Click(Sender: TObject);
    procedure cxGrid1Enter(Sender: TObject);
    procedure cxGrid1ActiveTabChanged(Sender: TcxCustomGrid; ALevel: TcxGridLevel);
    procedure dxBarSubItem5Popup(Sender: TObject);
    procedure dxBarButton34Click(Sender: TObject);
    procedure dxBarButton38Click(Sender: TObject);
    procedure cxGrid7DBBandedTableView1FocusedRecordChanged(Sender: TcxCustomGridTableView; APrevFocusedRecord, AFocusedRecord: TcxCustomGridRecord; ANewItemRecordFocusingChanged: Boolean);
    procedure cxPageControl2Change(Sender: TObject);
    procedure dxBarButton40Click(Sender: TObject);
    procedure dxBarButton41Click(Sender: TObject);
    procedure dxBarButton42Click(Sender: TObject);
    procedure dxBarSubItem6Popup(Sender: TObject);

    procedure OnMenuUsersClick(Sender:TObject);
    procedure dxBarButton36Click(Sender: TObject);
    procedure dxBarButton37Click(Sender: TObject);
    procedure dxBarButton24Click(Sender: TObject);
    procedure dxBarButton25Click(Sender: TObject);
    procedure dxBarButton26Click(Sender: TObject);
    procedure dxBarButton33Click(Sender: TObject);
    procedure dxBarButton27Click(Sender: TObject);
    procedure dxBarButton35Click(Sender: TObject);
    procedure dxBarButton39Click(Sender: TObject);
    procedure dxBarButton45Click(Sender: TObject);
    procedure dxBarButton46Click(Sender: TObject);
    procedure dxBarButton47Click(Sender: TObject);
  private
    Fdate1, Fdate2 : TDateTime;
    Ftype_rate     : integer;
    FView          : TcxGridDBBandedTableView;
    Fplan_client_rate_id : integer;
    Factive_users_id     : integer;

    procedure AddFact(cxGridView : TcxGridDBBandedTableView);
    procedure LocatePlanClientID(plan_client_id: integer);
  public
    constructor Create(AOwner: TApplication; flag: boolean; type_rate: integer);
  published
    property _AddFact : TcxGridDBBandedTableView write AddFact;
    property _LocatePlanClientID : integer write LocatePlanClientID;
    property _GetPlanClientRateId : integer read Fplan_client_rate_id;
  end;

var  fmPlanClient: TfmPlanClient;


implementation
   uses Main, Raznoe, Other, PlanClientAdd, Period, PlanClientRateAdd, Fact, FactCard, FirmBalance,
        PlanRateAgentAdd, Filter, FactTrack, PlanRateClientAdd, Agree2;
{$R *.dfm}

constructor TfmPlanClient.Create(AOwner: TApplication; flag: boolean; type_rate: integer);
begin
  Screen.Cursor := -11;

  inherited Create(AOwner);
  Ftype_rate := type_rate;

  WindowState := wsMaximized;

  Fplan_client_rate_id := -9;

  if flag then begin
    FormStyle := fsNormal;
    WindowState := wsMaximized;
    dxBarButton38.Visible := ivAlways;
    cxGrid7DBBandedTableView1.OnDblClick := dxBarButton38Click;
  end else begin
    FormStyle := fsMDIChild;
    WindowState := wsMaximized;
    dxBarButton38.Visible := ivNever;
  end;

  StoreRegistryGrid(rgLoad,'\Software\Lis1\PlanClient_Grids', cxGrid1DBBandedTableView1);
  StoreRegistryGrid(rgLoad,'\Software\Lis1\PlanClient_Grids', cxGrid2DBBandedTableView1);
  StoreRegistryGrid(rgLoad,'\Software\Lis1\PlanClient_Grids', cxGrid3DBBandedTableView1);
  StoreRegistryGrid(rgLoad,'\Software\Lis1\PlanClient_Grids', cxGrid7DBBandedTableView1);
  StoreRegistryGrid(rgLoad,'\Software\Lis1\PlanClient_Grids', cxGrid8DBBandedTableView1);
  StoreRegistryGrid(rgLoad,'\Software\Lis1\PlanClient_Grids', cxGrid9DBBandedTableView1);
  StoreRegistryGrid(rgLoad,'\Software\Lis1\PlanClient_Grids', cxGrid4DBBandedTableView1);

  LoadRegistryDate_('\Software\Lis1\DateTime\PlanClient', Fdate1, Fdate2);


  Factive_users_id := usr_pwd^.users_id;
  cxPageControl1.OnChange := nil;
  case Ftype_rate of
    0 : begin
          Caption := 'Факт отгрузки Клиентам';
          cxPageControl1.ActivePageIndex := 0;
          cxTabSheet5.TabVisible := False;
        end;

    1 : begin
          Caption := 'Ставки Клиентов';
          cxPageControl1.ActivePage := cxTabSheet5;
          cxTabSheet1.TabVisible := False;
          cxTabSheet3.TabVisible := False;
          cxTabSheet4.TabVisible := False;
          cxPageControl1.Properties.HideTabs := True;

          cxPageControl2.OnChange := nil;
          cxPageControl2.ActivePageIndex := 0;
          cxPageControl2.OnChange := cxPageControl2Change;
        end;
  end;
  cxPageControl1.OnChange := cxPageControl1Change;

  SetPeriod(Fdate1, Fdate2);

  MonitorEventFormOpen('OPEN_FORM', self.Name, fmMain.Lis, -9);
  Screen.Cursor := 0;
end;

procedure TfmPlanClient.FormDestroy(Sender: TObject);
begin
  StoreRegistryGrid(rgSave,'\Software\Lis1\PlanClient_Grids', cxGrid1DBBandedTableView1);
  StoreRegistryGrid(rgSave,'\Software\Lis1\PlanClient_Grids', cxGrid2DBBandedTableView1);
  StoreRegistryGrid(rgSave,'\Software\Lis1\PlanClient_Grids', cxGrid3DBBandedTableView1);
  StoreRegistryGrid(rgSave,'\Software\Lis1\PlanClient_Grids', cxGrid7DBBandedTableView1);
  StoreRegistryGrid(rgSave,'\Software\Lis1\PlanClient_Grids', cxGrid8DBBandedTableView1);
  StoreRegistryGrid(rgSave,'\Software\Lis1\PlanClient_Grids', cxGrid9DBBandedTableView1);
  StoreRegistryGrid(rgSave,'\Software\Lis1\PlanClient_Grids', cxGrid4DBBandedTableView1);

  SavePositionForm(self, '\Software\Lis1\DateTime\PlanClient', Fdate1, Fdate2);
end;

procedure TfmPlanClient.cxGrid1ActiveTabChanged(Sender: TcxCustomGrid; ALevel: TcxGridLevel);
begin
  cxGrid1Enter(Sender);
end;

procedure TfmPlanClient.cxGrid1DBBandedTableView1CustomDrawCell(Sender: TcxCustomGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
  if Assigned(TcxGridDBBandedTableView(Sender).GetColumnByFieldName('global_color')) then
    if (AViewInfo.GridRecord.Values[TcxGridDBBandedTableView(Sender).GetColumnByFieldName('global_color').Index] <> NULL) then
      ACanvas.Brush.Color := AViewInfo.GridRecord.Values[TcxGridDBBandedTableView(Sender).GetColumnByFieldName('global_color').Index];

  // Для таблицы Факт (Клиент)
  if Sender = cxGrid2DBBandedTableView1 then begin
    if (cxGrid2DBBandedTableView1etran_folder.Index = AViewInfo.Item.ID) then begin
      if AViewInfo.GridRecord.Values[cxGrid2DBBandedTableView1etran_folder.Index] <> 'Заготовка'       then ACanvas.Font.Style := [fsBold];
      if AViewInfo.GridRecord.Values[cxGrid2DBBandedTableView1etran_folder.Index] = 'Заготовка'        then ACanvas.Font.Color := clGray;
      if AViewInfo.GridRecord.Values[cxGrid2DBBandedTableView1etran_folder.Index] = 'Не действительны' then ACanvas.Font.Color := clRed;
    end;
  end;

  if AViewInfo.Focused then begin
    ACanvas.Font.Color := clWhite;
    ACanvas.Brush.Color := clBlue;
  end;
  if AViewInfo.GridRecord.Focused OR AViewInfo.GridRecord.Selected then begin
    ACanvas.Brush.Color := clNavy;
    ACanvas.Font.Color := clWhite;
  end;

  if AViewInfo.Focused then ACanvas.Brush.Color := clBlue;
end;

procedure TfmPlanClient.cxGrid1DBBandedTableView1CustomDrawColumnHeader(Sender: TcxGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxGridColumnHeaderViewInfo; var ADone: Boolean);
begin
  if AViewInfo.Column.Focused then begin
    ACanvas.Brush.Color := clNavy;
    ACanvas.Font.Color := clWhite;
  end;
end;

procedure TfmPlanClient.AddFact(cxGridView : TcxGridDBBandedTableView);
var i, set_main : integer;
    sp_fact_move_plan : TADOStoredProc;
begin
    Screen.Cursor := crHourglass;
    fmFact.Show;

    sp_fact_move_plan := TADOStoredProc.Create(nil);
    sp_fact_move_plan.Connection := fmMain.Lis;
    sp_fact_move_plan.ProcedureName := 'sp_fact_move_plan';
    sp_fact_move_plan.Parameters.Refresh;

    for i:=0 to cxGridView.Controller.SelectedRowCount - 1 do begin
      ShowTextMessage('Осталось '+IntToStr(cxGridView.Controller.SelectedRowCount - i)+' записей...', False);
      sp_fact_move_plan.Parameters.Refresh;

      sp_fact_move_plan.Close;
      sp_fact_move_plan.Parameters.Refresh;
      sp_fact_move_plan.Parameters.ParamByName('@fact_id'       ).Value := cxGridView.Controller.SelectedRows[i].Values[cxGridView.GetColumnByFieldName('fact_id').Index];
      sp_fact_move_plan.Parameters.ParamByName('@plan_client_id').Value := cxGrid1DBBandedTableView1plan_client_id.DataBinding.Field.AsInteger;
      sp_fact_move_plan.Parameters.ParamByName('@set_main'      ).Value := 1;
      try
        sp_fact_move_plan.ExecProc;
      except
      end;
    end;


    ShowTextMessage('Обновление данных', False);
    RefreshQueryGrid(cxGrid1DBBandedTableView1, 'plan_client_id');

    sp_fact_move_plan.Free;
    ShowTextMessage;
    Screen.Cursor := crDefault;
end;

procedure TfmPlanClient.cxGrid1DBBandedTableView1DataControllerFilterChanged(Sender: TObject);
begin
  DrawcxGridColumnOnFiltered(Sender);
end;

procedure TfmPlanClient.cxGrid1DBBandedTableView1FocusedItemChanged(Sender: TcxCustomGridTableView; APrevFocusedItem, AFocusedItem: TcxCustomGridTableItem);
begin
  Sender.Painter.Invalidate;
end;

procedure TfmPlanClient.cxGrid1DBBandedTableView1FocusedRecordChanged(
  Sender: TcxCustomGridTableView; APrevFocusedRecord,
  AFocusedRecord: TcxCustomGridRecord; ANewItemRecordFocusingChanged: Boolean);
begin
  Screen.Cursor := crHourGlass;

  if (dxBarButton11.Down) AND (AFocusedRecord<>nil) AND ((cxGrid1DBBandedTableView1.GroupedColumnCount = 0) OR (AFocusedRecord.Level <> 0)) then begin
    if (not Query_FactClient.Active)
    or (Query_FactClient.Parameters.ParamByName('plan_client_id').Value <> AFocusedRecord.Values[cxGrid1DBBandedTableView1plan_client_id.Index]) then begin
      Query_FactClient.Close;
      Query_FactClient.Parameters.ParamByName('plan_client_id').Value := AFocusedRecord.Values[cxGrid1DBBandedTableView1plan_client_id.Index];
      Query_FactClient.Open;
    end;
  end else begin
    Query_FactClient.Close;
  end;

  Screen.Cursor := crDefault;
end;


procedure TfmPlanClient.cxGrid1Enter(Sender: TObject);
begin
  FView := TcxGridDBBandedTableView(TcxGrid(Sender).ActiveView);
end;

procedure TfmPlanClient.cxGrid3DBBandedTableView1DataControllerFilterChanged(Sender: TObject);
begin
  DrawcxGridColumnOnFiltered(Sender);
end;

procedure TfmPlanClient.cxGrid7DBBandedTableView1FocusedRecordChanged(Sender: TcxCustomGridTableView; APrevFocusedRecord, AFocusedRecord: TcxCustomGridRecord; ANewItemRecordFocusingChanged: Boolean);
begin
  if (AFocusedRecord<>nil) AND ((cxGrid1DBBandedTableView1.GroupedColumnCount = 0) OR (AFocusedRecord.Level <> 0)) then begin
    cxPageControl2Change(nil);
  end;
end;

procedure TfmPlanClient.cxPageControl1Change(Sender: TObject);
begin
  Screen.Cursor := crHourGlass;

  case cxPageControl1.ActivePageIndex of
    0 : begin
          SP_PlanClient.DisableControls;
          SP_PlanClient.Close;
          SP_PlanClient.Parameters.Refresh;
          SP_PlanClient.Parameters.ParamByName('@type_rate').Value := Ftype_rate;
          SP_PlanClient.Parameters.ParamByName('@date1').Value := Fdate1;
          SP_PlanClient.Parameters.ParamByName('@date2').Value := Fdate2;
          SP_PlanClient.Open;
          SP_PlanClient.EnableControls;
        end;
    1 : begin
          Query_PlanClient_Rate.DisableControls;
          Query_PlanClient_Rate.Close;
          Query_PlanClient_Rate.Parameters.ParamByName('date1').Value := Fdate1;
          Query_PlanClient_Rate.Parameters.ParamByName('date2').Value := Fdate2;
          Query_PlanClient_Rate.Open;
          Query_PlanClient_Rate.EnableControls;
        end;
    2 : begin
          SP_PlanClientDelail.DisableControls;
          SP_PlanClientDelail.Close;
          SP_PlanClientDelail.Parameters.Refresh;
          SP_PlanClientDelail.Parameters.ParamByName('@type_rate').Value := 2;
          SP_PlanClientDelail.Parameters.ParamByName('@date1').Value := Fdate1;
          SP_PlanClientDelail.Parameters.ParamByName('@date2').Value := Fdate2;
          SP_PlanClientDelail.Open;
          SP_PlanClientDelail.EnableControls;
        end;
    3 : begin
          Query_PlanClient_Rate1.DisableControls;
          Query_PlanClient_Rate1.Close;
          Query_PlanClient_Rate1.Parameters.ParamByName('date1').Value := Fdate1;
          Query_PlanClient_Rate1.Parameters.ParamByName('date2').Value := Fdate2;
          Query_PlanClient_Rate1.Parameters.ParamByName('users_owner_id').Value := Factive_users_id;
          Query_PlanClient_Rate1.Open;
          Query_PlanClient_Rate1.EnableControls;
        end;
  end;

  Screen.Cursor := crDefault;
end;

procedure TfmPlanClient.cxPageControl2Change(Sender: TObject);
begin
  Screen.Cursor := crHourGlass;

  case cxPageControl2.ActivePageIndex of
    0 : begin
          Query_AgentRate.DisableControls;
          Query_AgentRate.Close;
          Query_AgentRate.Parameters.ParamByName('plan_client_rate_id').Value := cxGrid7DBBandedTableView1plan_client_rate_id.DataBinding.Field.Value;
          Query_AgentRate.Open;
          Query_AgentRate.EnableControls;
        end;
    1 : begin
//          Query_Agree.DisableControls;
//          Query_Agree.Close;
//          Query_Agree.Parameters.ParamByName('plan_client_rate_id').Value := cxGrid7DBBandedTableView1plan_client_rate_id.DataBinding.Field.Value;
//          Query_Agree.Open;
//          Query_Agree.EnableControls;
        end;
  end;
  Screen.Cursor := crDefault;
end;


procedure TfmPlanClient.dxBarButton10Click(Sender: TObject);
var  SP : TADOStoredProc;
      i : integer;
      _ActiveTableView : TcxGridDBBandedTableView;
begin
  if Application.MessageBox('Вы точно хотите удалить планируемую ставку?', 'Внимание', MB_OKCANCEL)=IDOK then begin
    Screen.Cursor := crHourglass;
    SP := TADOStoredProc.Create(nil);
    SP.Connection := fmMain.Lis;
    SP.ProcedureName := 'sp_plan_client_rate_modify';
    case cxPageControl1.ActivePageIndex of
      1 : _ActiveTableView := cxGrid3DBBandedTableView1;
      3 : _ActiveTableView := cxGrid7DBBandedTableView1;
    end;

    for i := 0 to _ActiveTableView.Controller.SelectedRowCount - 1 do begin
      SP.Parameters.Refresh;
      SP.Parameters.ParamByName('@type_action').Value    :=  2;
      SP.Parameters.ParamByName('@plan_client_rate_id').Value :=  _ActiveTableView.Controller.SelectedRows[i].Values[_ActiveTableView.GetColumnByFieldName('plan_client_rate_id').Index];
      SP.ExecProc;
    end;
    SP.Free;
    RefreshQueryGrid(_ActiveTableView, 'plan_client_rate_id');

    Screen.Cursor := crDefault;
  end;
end;

procedure TfmPlanClient.dxBarButton11Click(Sender: TObject);
begin
  GroupBox4.Visible := dxBarButton11.Down;
  Splitter1.Visible := dxBarButton11.Down;
  Query_FactClient.Close;
  if dxBarButton11.Down then begin
    Screen.Cursor := crHourglass;
    Query_FactClient.Parameters.ParamByName('plan_client_id').Value := cxGrid1DBBandedTableView1plan_client_id.DataBinding.Field.AsInteger;
    Query_FactClient.Open;
    Screen.Cursor := crDefault;
  end;
end;

procedure TfmPlanClient.dxBarButton12Click(Sender: TObject);
begin
  FindInEtranInvoice(fmMain.Lis, usr_pwd, cxGrid2DBBandedTableView1xml_reply_id.DataBinding.Field.AsInteger, cxGrid2DBBandedTableView1num_vagon.DataBinding.Field.AsInteger, cxGrid2DBBandedTableView1fact_id.DataBinding.Field.AsInteger);
end;

procedure TfmPlanClient.dxBarButton13Click(Sender: TObject);
begin
  if not Query_FactClient.Eof then begin
    fmFactCard := TfmFactCard.Create(Application, fmMain.Lis);
    fmFactCard._UpdateFact(Query_FactClient.FieldByName('fact_id').AsInteger);
    if fmFactCard.ShowModal = mrOk then RefreshQueryGrid(cxGrid2DBBandedTableView1,'fact_id');
  end;
end;

procedure TfmPlanClient.dxBarButton14Click(Sender: TObject);
var          i : integer;
      ClientDS : TClientDataSet;
begin
  if cxGrid1DBBandedTableView1plan_client_id.DataBinding.Field.IsNull then begin
    Application.MessageBox('Выберите документ (план) в который хотите добавить факт!', 'Внимание', MB_OK or MB_ICONERROR);
    exit;
  end;

  ClientDS := TClientDataSet.Create(nil);
  if ShowSearchFact(Application.Handle, usr_pwd, ClientDS, 0) then begin
    for i:=0 to fmMain.MDIChildCount-1 Do
      if (fmMain.MDIChildren[i].ClassName = 'TfmFact') then begin
        fmMain.MDIChildren[i].Free;
        break;
      end;
    fmFact := TfmFact.Create(self, True);
    fmFact._SetSQLFilter    := ClientDS;
    fmFact._SetPlanClientId := cxGrid1DBBandedTableView1plan_client_id.DataBinding.Field.Value;
    fmFact._SetPlanClient   := True;

//    fmFact.WindowState := wsNormal;
//    WindowState := wsNormal;
//    Height := fmMain.ClientHeight - fmMain.dxStatusBar1.Height - 30;
//    Top := 0; Left := 0;
//    Width := trunc((fmMain.ClientWidth/3)*2);
//
    fmFact.Height := Height;
    fmFact.Top := 0;
    fmFact.Left := 700; //Width - 1;
    fmFact.Width := trunc((fmMain.ClientWidth/3))-5;

    fmFact.Show;
  end;
  ClientDS.Free;
end;

procedure TfmPlanClient.dxBarButton15Click(Sender: TObject);
var  SP : TADOStoredProc;
      i : integer;
begin
  if cxGrid1DBBandedTableView1.Controller.SelectedRowCount = 0 then
    exit;

  if Application.MessageBox('Вы точно хотите удалить документ?', 'Внимание', MB_OKCANCEL)=IDOK then begin
    Screen.Cursor := crHourglass;
    SP := TADOStoredProc.Create(nil);
    SP.Connection := fmMain.Lis;
    SP.ProcedureName := 'sp_plan_client_modify';
    for i := 0 to cxGrid1DBBandedTableView1.Controller.SelectedRowCount - 1 do begin
      SP.Parameters.Refresh;
      SP.Parameters.ParamByName('@type_action').Value    :=  2;
      SP.Parameters.ParamByName('@plan_client_id').Value :=  cxGrid1DBBandedTableView1.Controller.SelectedRows[i].Values[cxGrid1DBBandedTableView1plan_client_id.Index];
      SP.ExecProc;
    end;
    SP.Free;
    RefreshQueryGrid(cxGrid1DBBandedTableView1,'plan_client_id');
    Screen.Cursor := crDefault;
  end;
end;

procedure TfmPlanClient.dxBarButton20Click(Sender: TObject);
var str_contract_id : string;
                  i : integer;
begin
  str_contract_id := '';
  for i:=0 to cxGrid1DBBandedTableView1.Controller.SelectedRecordCount - 1 do begin
    cxGrid1DBBandedTableView1.Controller.SelectedRows[i].Focused := True;
    if TControl(Sender).Tag = 0 then
      str_contract_id := str_contract_id + ', ' + IntToStr(cxGrid1DBBandedTableView1contract_id.DataBinding.Field.AsInteger)
    else
      str_contract_id := str_contract_id + ', ' + IntToStr(cxGrid1DBBandedTableView1contract_agent_id.DataBinding.Field.AsInteger);
  end;
  Delete(str_contract_id, 1, 2);

  for i:=0 to fmMain.MDIChildCount-1 do
    if (fmMain.MDIChildren[i].ClassName = 'TfmFirmBalance') then begin
      if TfmFirmBalance(fmMain.MDIChildren[i])._GetTypeBalance = TControl(Sender).Tag then begin
        fmMain.MDIChildren[i].Free;
        Break;
      end;
    end;

  fmFirmBalance := TfmFirmBalance.Create(Application, TControl(Sender).Tag, False);
  fmFirmBalance._SetBalance(Fdate1, Fdate2, str_contract_id);
  fmFirmBalance._SetShowPlan := True;
end;

procedure TfmPlanClient.dxBarButton21Click(Sender: TObject);
var                 i : integer;
    sp_fact_move_plan : TADOStoredProc;
begin
  if Application.MessageBox(PChar('Выделенный факт потеряет связь с планом!'), 'ВНИМАНИЕ', MB_OKCANCEL) = ID_OK then begin

    sp_fact_move_plan := TADOStoredProc.Create(nil);
    sp_fact_move_plan.Connection := fmMain.Lis;
    sp_fact_move_plan.ProcedureName := 'sp_fact_move_plan';
    sp_fact_move_plan.Parameters.Refresh;



    for i := 0 to cxGrid2DBBandedTableView1.Controller.SelectedRowCount - 1 do begin
      ShowTextMessage('Осталось '+IntToStr(cxGrid2DBBandedTableView1.Controller.SelectedRowCount - i)+' записей...', False);

      sp_fact_move_plan.Close;
      sp_fact_move_plan.Parameters.Refresh;
      sp_fact_move_plan.Parameters.ParamByName('@fact_id'       ).Value := cxGrid2DBBandedTableView1.Controller.SelectedRows[i].Values[cxGrid2DBBandedTableView1fact_id.Index];
      sp_fact_move_plan.Parameters.ParamByName('@plan_client_id').Value := null;
      try
        sp_fact_move_plan.ExecProc;
      except
      end;

    end;

    sp_fact_move_plan.Free;

    ShowTextMessage('Обновление данных...', False);
    RefreshQueryGrid(cxGrid1DBBandedTableView1, 'plan_client_id');

    if Assigned(fmFact) then begin
      fmFact.sp_fact_GET.Close;
      fmFact.sp_fact_GET.Open;
    end;

    ShowTextMessage;
    Screen.Cursor := crDefault;
  end;
end;

procedure TfmPlanClient.dxBarButton23Click(Sender: TObject);
begin
  cxPageControl1Change(nil);
end;

procedure TfmPlanClient.dxBarButton24Click(Sender: TObject);
begin
  fmPlanRateClientAdd := TfmPlanRateClientAdd.Create(Application, Ftype_rate);
//  fmPlanRateClientAdd._SetUpdate := cxGrid7DBBandedTableView1plan_client_rate_id.DataBinding.Field.AsInteger;
  fmPlanRateClientAdd._SetUpdatePlanAgent := cxGrid8DBBandedTableView1plan_agent_rate_id.DataBinding.Field.AsInteger;
  if fmPlanRateClientAdd.ShowModal = mrOk then begin
    RefreshQueryGrid(cxGrid7DBBandedTableView1, 'plan_client_rate_id', fmPlanRateClientAdd._GetPlanClientRateId);
  end;
end;

procedure TfmPlanClient.dxBarButton25Click(Sender: TObject);
var OpenDialog1 : TOpenDialog;
begin
  OpenDialog1 := TOpenDialog.Create(nil);
  OpenDialog1.Filter := 'Excel файлы|*.xls';
  OpenDialog1.DefaultExt := 'xls';
  if OpenDialog1.Execute then begin
    ExportGridToExcel(OpenDialog1.FileName, cxGrid4, False, False);
    ShellExecute(Application.Handle, 'open', PChar(OpenDialog1.FileName), nil, nil, SW_SHOWNORMAL);
  end;
  OpenDialog1.Free;
end;

procedure TfmPlanClient.dxBarButton26Click(Sender: TObject);
type
  TFunc = function(AppHand: THandle; connect: TADOConnection; str_form, str_global_id: string): variant;
var
  FDic   : TFunc;
  handle : THandle;
  v      : Variant;
begin
  handle := LoadLibrary('reports.dll');
  @FDic := GetProcAddress(handle, 'CreateWndMonitorEvent');
  v := FDic(Application.Handle, fmMain.Lis, 'СТАВКИ клиентов:', GetStrId(cxGrid7DBBandedTableView1plan_client_rate_id, ',') );
  FreeLibrary(handle);
end;

procedure TfmPlanClient.dxBarButton27Click(Sender: TObject);
var SP : TADOStoredProc;
     i : integer;
begin
  SP := TADOStoredProc.Create(nil);
  SP.Connection := fmMain.Lis;
  SP.ProcedureName := 'sp_plan_client_rate_modify';


  for i:=0 to cxGrid7DBBandedTableView1.Controller.SelectedRecordCount - 1 do begin
    SP.Parameters.Refresh;
    SP.Parameters.ParamByName('@type_action').Value :=  5;
    SP.Parameters.ParamByName('@set_bargain_weight' ).Value := TControl(Sender).Tag;
    SP.Parameters.ParamByName('@plan_client_rate_id').Value := cxGrid7DBBandedTableView1.Controller.SelectedRows[i].Values[cxGrid7DBBandedTableView1plan_client_rate_id.Index];
    SP.ExecProc;

    ShowTextMessage('Осталось '+ IntToStr(cxGrid7DBBandedTableView1.Controller.SelectedRowCount - i) + ' записей...', False);
  end;


  SP.Free;
  ShowTextMessage;
  RefreshQueryGrid(cxGrid7DBBandedTableView1, 'plan_client_rate_id');
end;

procedure TfmPlanClient.dxBarButton30Click(Sender: TObject);
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

procedure TfmPlanClient.dxBarButton1Click(Sender: TObject);
begin
  fmPlanClientAdd := TfmPlanClientAdd.Create(Application);
  if fmPlanClientAdd.ShowModal = mrOk then
    RefreshQueryGrid(cxGrid1DBBandedTableView1, 'plan_client_id', fmPlanClientAdd._GetPlanClientId);
end;

procedure TfmPlanClient.dxBarButton2Click(Sender: TObject);
begin
  if cxGrid1DBBandedTableView1plan_client_id.DataBinding.Field.IsNull then exit;

  fmPlanClientAdd := TfmPlanClientAdd.Create(Application);
  fmPlanClientAdd._SetUpdate := cxGrid1DBBandedTableView1plan_client_id.DataBinding.Field.AsInteger;
  if fmPlanClientAdd.ShowModal = mrOk then RefreshQueryGrid(cxGrid1DBBandedTableView1, 'plan_client_id', fmPlanClientAdd._GetPlanClientId);
end;

procedure TfmPlanClient.dxBarButton8Click(Sender: TObject);
var _ActiveTableView : TcxGridDBBandedTableView;
begin

  case cxPageControl1.ActivePageIndex of
    1 : begin
        fmPlanClientRateAdd := TfmPlanClientRateAdd.Create(Application, Ftype_rate);
        _ActiveTableView := cxGrid3DBBandedTableView1;
        if fmPlanClientRateAdd.ShowModal = mrOk then begin
         RefreshQueryGrid(_ActiveTableView, 'plan_client_rate_id', fmPlanClientRateAdd._GetPlanClientRateId);
        end;
       end;
    3 : begin
        fmPlanRateClientAdd := TfmPlanRateClientAdd.Create(Application, Ftype_rate);
       _ActiveTableView := cxGrid7DBBandedTableView1;
         if fmPlanRateClientAdd.ShowModal = mrOk then begin
         RefreshQueryGrid(_ActiveTableView, 'plan_client_rate_id', fmPlanRateClientAdd._GetPlanClientRateId);
        end;
       end;
  end;
end;

procedure TfmPlanClient.dxBarButton9Click(Sender: TObject);
var _ActiveTableView : TcxGridDBBandedTableView;
begin
  case cxPageControl1.ActivePageIndex of
    1 : begin
          fmPlanClientRateAdd := TfmPlanClientRateAdd.Create(Application, Ftype_rate);
          _ActiveTableView := cxGrid3DBBandedTableView1;
           fmPlanClientRateAdd._SetUpdate := _ActiveTableView.GetColumnByFieldName('plan_client_rate_id').DataBinding.Field.AsInteger;
          if fmPlanClientRateAdd.ShowModal = mrOk then begin
            RefreshQueryGrid(_ActiveTableView, 'plan_client_rate_id', fmPlanClientRateAdd._GetPlanClientRateId);
          end;
        end;
    3 : begin
          fmPlanRateClientAdd := TfmPlanRateClientAdd.Create(Application, Ftype_rate);
          _ActiveTableView := cxGrid7DBBandedTableView1;
          fmPlanRateClientAdd._SetUpdate := _ActiveTableView.GetColumnByFieldName('plan_client_rate_id').DataBinding.Field.AsInteger;
          if fmPlanRateClientAdd.ShowModal = mrOk then begin
            RefreshQueryGrid(_ActiveTableView, 'plan_client_rate_id', fmPlanRateClientAdd._GetPlanClientRateId);
          end;
        end;
  end;
end;

procedure TfmPlanClient.dxBarButton31Click(Sender: TObject);
var SP : TADOStoredProc;
    id : integer;
begin
  Screen.Cursor := crHourglass;
  if cxPageControl1.ActivePageIndex = 1 then begin //тк используется одно popup menu на 2 закладки
    SP := TADOStoredProc.Create(nil);
    SP.Connection := fmMain.Lis;
    SP.ProcedureName := 'sp_plan_client_rate_modify';

    SP.Parameters.Refresh;
    SP.Parameters.ParamByName('@type_action'        ).Value := 3;
    SP.Parameters.ParamByName('@plan_client_rate_id').Value := cxGrid3DBBandedTableView1plan_client_rate_id.DataBinding.Field.AsInteger;
    SP.ExecProc;
    id := SP.Parameters.ParamByName('@plan_client_rate_id').Value;
    SP.Free;
    if id <> -9 then
       RefreshQueryGrid(cxGrid3DBBandedTableView1, 'plan_client_rate_id', id)
    else
      Application.MessageBox(PChar('Ошибка при копировании.'), PChar('Внимание'), MB_ICONERROR + MB_OK);
  end;

  if cxPageControl1.ActivePageIndex = 3 then begin
    fmPlanRateClientAdd := TfmPlanRateClientAdd.Create(Application, 1);
    fmPlanRateClientAdd._SetCopy := cxGrid7DBBandedTableView1.GetColumnByFieldName('plan_client_rate_id').DataBinding.Field.AsInteger;
    if fmPlanRateClientAdd.ShowModal = mrOk then begin
      RefreshQueryGrid(cxGrid7DBBandedTableView1, 'plan_client_rate_id', fmPlanRateClientAdd._GetPlanClientRateId);
    end;
  end;

  Screen.Cursor := crDefault;
end;

procedure TfmPlanClient.dxBarButton33Click(Sender: TObject);
var date_close : TDateTime;
    SP : TADOStoredProc;
    i : integer;
begin
  date_close := Date;
  fmPeriod := TfmPeriod.Create(Application, date_close, date_close, 7);
  if fmPeriod.ShowModal = mrOk then begin

    SP := TADOStoredProc.Create(nil);
    SP.Connection := fmMain.Lis;
    SP.ProcedureName := 'sp_plan_client_rate_modify';


    for i:=0 to cxGrid7DBBandedTableView1.Controller.SelectedRecordCount - 1 do begin
      SP.Parameters.Refresh;
      SP.Parameters.ParamByName('@type_action').Value :=  4;
      SP.Parameters.ParamByName('@date_end'  ).Value := fmPeriod._GetDateBegin;
      SP.Parameters.ParamByName('@plan_client_rate_id').Value := cxGrid7DBBandedTableView1.Controller.SelectedRows[i].Values[cxGrid7DBBandedTableView1plan_client_rate_id.Index];
      SP.ExecProc;

      ShowTextMessage('Осталось '+ IntToStr(cxGrid7DBBandedTableView1.Controller.SelectedRowCount - i) + ' записей...', False);
    end;


    SP.Free;
    ShowTextMessage;
    RefreshQueryGrid(cxGrid7DBBandedTableView1, 'plan_client_rate_id');
  end;
end;

procedure TfmPlanClient.dxBarButton34Click(Sender: TObject);
var
  exApp, exWks, exWkb   : Variant;
  plan_date : TDate;
  Q : TADOQuery;
  row : integer;
  array_data : Variant;
begin
  plan_date := Date + 1;

  fmPeriod := TfmPeriod.Create(Application, plan_date, plan_date, 7);
  if fmPeriod.ShowModal <> mrOk then exit;

  plan_date := fmPeriod._GetDateBegin;

  Screen.Cursor := crHourglass;

  ShowTextMessage('Получение данных', False);

  // Формируем отчет за выбранный день
  Q := TADOQuery.Create(nil);
  Q.Connection := fmMain.Lis;
  Q.CommandTimeout := 300;
  Q.SQL.Add('SELECT pt.fact_track_trip_id, pt.Com6, pt.num_vagon,');
  Q.SQL.Add('  date_otpr = convert(datetime, convert(varchar(20), pt.date_otpr, 112), 112),');
  Q.SQL.Add('  date_arrival = convert(datetime, convert(varchar(20), pt.date_arrival, 112), 112),');
  Q.SQL.Add('  pt.node_begin_name, pt.node_end_name, pt.kargoETSNG_name, pt.fact_weight, pt.doc_number,');
  Q.SQL.Add('	 pt.capacity, pt.distance, pt.type_park_name, pt.rod_vagon_name,');
  Q.SQL.Add('	 pt.firm_customer_name, pt.contract_cod, pt.contract_date_begin,');
  Q.SQL.Add('	 plan_rate_rub = dbo.func_GetExchangeNew_Period(3, p.currency_id, NULL, NULL, NULL, p.plan_date, 1) * p.plan_rate,');
  Q.SQL.Add('	 plan_sum_rub  = dbo.func_GetExchangeNew_Period(3, p.currency_id, NULL, NULL, NULL, p.plan_date, 1) * p.plan_rate * CASE p.ed_izm_cod WHEN ''000'' THEN pt.fact_weight WHEN ''004'' THEN DATEDIFF(day, pt.date_otpr, pt.date_arrival) + 1 ELSE 1 END');
  Q.SQL.Add('FROM view_plan_agent p');
  Q.SQL.Add('JOIN view_plan_agent_trip pt');
  Q.SQL.Add('	 ON p.plan_agent_id = p.plan_agent_id');
  Q.SQL.Add('	 AND p.plan_date = ' + DateToSQL(plan_date) + '');
  Q.SQL.Add('ORDER BY pt.fact_track_trip_id');
  Q.Open;

  ShowTextMessage('Формирование отчета', False);

  array_data := VarArrayCreate([1, iif(Q.RecordCount = 0, 1, Q.RecordCount), 1, 18], varVariant);

  row := 1;
  while not Q.Eof do begin
    array_data[row,  1] := Q.FieldByName('Com6').AsString;
    array_data[row,  2] := Q.FieldByName('num_vagon').Value;
    array_data[row,  3] := Q.FieldByName('firm_customer_name').AsString;
    array_data[row,  4] := Q.FieldByName('date_otpr').Value;
    array_data[row,  5] := Q.FieldByName('date_arrival').Value;
    array_data[row,  6] := Q.FieldByName('node_begin_name').AsString;
    array_data[row,  7] := Q.FieldByName('node_end_name').AsString;
    array_data[row,  8] := Q.FieldByName('kargoETSNG_name').AsString;
    array_data[row,  9] := Q.FieldByName('fact_weight').AsFloat;
    array_data[row, 10] := Q.FieldByName('doc_number').AsString;
    array_data[row, 11] := Q.FieldByName('capacity').Value;
    array_data[row, 12] := Q.FieldByName('distance').Value;
    array_data[row, 13] := Q.FieldByName('type_park_name').AsString;
    array_data[row, 14] := Q.FieldByName('rod_vagon_name').AsString;
    array_data[row, 15] := Q.FieldByName('firm_customer_name').AsString;
    array_data[row, 16] := Q.FieldByName('contract_cod').AsString;
    array_data[row, 17] := Q.FieldByName('plan_rate_rub').Value;
    array_data[row, 18] := Q.FieldByName('plan_sum_rub').Value;
    inc(row);
    Q.Next;
  end;
  if row > 1 then dec(row);
  Q.Free;

  // Вывод данных
  ShowTextMessage('Вывод данных в Excel', False);

  exApp := CreateOleObject('Excel.Application');
  exWkb := exApp.Workbooks.Add(GetDocBlob(fmMain.Lis, 423, 9, True));
  exWks := exWkb.WorkSheets[2];

  exWks.Range[exWks.Cells[2, 1], exWks.Cells[row + 1, 18]].Value := array_data;
  VarClear(array_data);

  exWks := exWkb.WorkSheets[1];
  exWks.PivotTables[1].PivotCache.Refresh;

  exWks.Select;
  exWkb.Saved := True;
  exApp.CutCopyMode := False;
  exApp.Visible := True;

  exWks := Null;
  exWkb := Null;
  exApp := Null;

  ShowTextMessage;

  if (plan_date <> Fdate1) or (plan_date <> Fdate2) then
    SetPeriod(plan_date, plan_date);

  Screen.Cursor := crDefault;
end;

procedure TfmPlanClient.dxBarButton35Click(Sender: TObject);
type
  TFunc = function(AppHand:THandle; f:boolean; usr_pwd: PUser_pwd; budget_type_cod: string; budget_id: integer) : variant;
var
  FDic   : TFunc;
  handle : THandle;
  v      : Variant;
  SP     : TADOStoredProc;
  i      : integer;
begin
  handle := LoadLibrary('dictionary.dll');
  @FDic := GetProcAddress(handle, 'CreateWndDictService');
  v := FDic(Application.Handle, True, usr_pwd, '1', -9);
  FreeLibrary(handle);

  if v[0] <> -9 then begin
    SP := TADOStoredProc.Create(nil);
    SP.Connection := fmMain.Lis;
    SP.ProcedureName := 'sp_plan_client_rate_modify';


    for i:=0 to cxGrid7DBBandedTableView1.Controller.SelectedRecordCount - 1 do begin
      SP.Parameters.Refresh;
      SP.Parameters.ParamByName('@type_action').Value :=  6;
      SP.Parameters.ParamByName('@budget_id'  ).Value := v[0];
      SP.Parameters.ParamByName('@plan_client_rate_id').Value := cxGrid7DBBandedTableView1.Controller.SelectedRows[i].Values[cxGrid7DBBandedTableView1plan_client_rate_id.Index];
      SP.ExecProc;

      ShowTextMessage('Осталось '+ IntToStr(cxGrid7DBBandedTableView1.Controller.SelectedRowCount - i) + ' записей...', False);
    end;


    SP.Free;
    ShowTextMessage;
    RefreshQueryGrid(cxGrid7DBBandedTableView1, 'plan_client_rate_id');
  end;
end;

procedure TfmPlanClient.dxBarButton36Click(Sender: TObject);
begin
	SetdxDBGridColumns(cxGrid8DBBandedTableView1);
end;

procedure TfmPlanClient.dxBarButton37Click(Sender: TObject);
begin
	cxGrid8DBBandedTableView1.OptionsView.GroupByBox := not cxGrid8DBBandedTableView1.OptionsView.GroupByBox;
end;

procedure TfmPlanClient.dxBarButton38Click(Sender: TObject);
begin
  ModalResult := mrOk;

  if cxGrid7DBBandedTableView1plan_client_rate_id.DataBinding.Field <> nil then
    if not cxGrid7DBBandedTableView1plan_client_rate_id.DataBinding.Field.IsNull then
      Fplan_client_rate_id := cxGrid7DBBandedTableView1plan_client_rate_id.DataBinding.Field.AsInteger;
end;

procedure TfmPlanClient.dxBarButton39Click(Sender: TObject);
var
  v      : Variant;
  SP     : TADOStoredProc;
  i      : integer;
begin
    SP := TADOStoredProc.Create(nil);
    SP.Connection := fmMain.Lis;
    SP.ProcedureName := 'sp_plan_client_rate_modify';

    for i:=0 to cxGrid7DBBandedTableView1.Controller.SelectedRecordCount - 1 do begin
      SP.Parameters.Refresh;
      SP.Parameters.ParamByName('@type_action').Value :=  7;
      SP.Parameters.ParamByName('@type_bargain_date'  ).Value := TComponent(Sender).Tag;
      SP.Parameters.ParamByName('@plan_client_rate_id').Value := cxGrid7DBBandedTableView1.Controller.SelectedRows[i].Values[cxGrid7DBBandedTableView1plan_client_rate_id.Index];
      SP.ExecProc;

      ShowTextMessage('Осталось '+ IntToStr(cxGrid7DBBandedTableView1.Controller.SelectedRowCount - i) + ' записей...', False);
    end;

    SP.Free;
    ShowTextMessage;
    RefreshQueryGrid(cxGrid7DBBandedTableView1, 'plan_client_rate_id');
end;

procedure TfmPlanClient.dxBarButton40Click(Sender: TObject);
var i : integer;
begin
  if not cxGrid1DBBandedTableView1bargain_id.DataBinding.Field.IsNull then begin
    for i:=0 to fmMain.MDIChildCount-1 Do
      if (fmMain.MDIChildren[i].ClassName = 'TfmAgree2') then begin
        fmMain.MDIChildren[i].Free;
        Break;
      end;
    fmAgree2 := TfmAgree2.Create(Application, False);
    fmAgree2._LocateBargainID := cxGrid1DBBandedTableView1bargain_id.DataBinding.Field.Value;
  end;
end;

procedure TfmPlanClient.dxBarButton41Click(Sender: TObject);
type
  TFunc = function(AppHand : THandle; conn: TADOConnection; bargain_id: integer; usr_pwd: PUser_pwd): Variant;
var
  FBargainList : TFunc;
  handle       : THandle;
  v            : Variant;
begin
  handle := LoadLibrary('FormsAdd.dll');
  @FBargainList := GetProcAddress(handle,'CreateWndBargainList');
  v := FBargainList(Application.Handle, fmMain.Lis, cxGrid1DBBandedTableView1bargain_id.DataBinding.Field.AsInteger, usr_pwd);
  FreeLibrary(handle);
end;

procedure TfmPlanClient.dxBarButton42Click(Sender: TObject);
var str_bargain_id : string;
                 i : integer;
begin
  str_bargain_id := '';
  for i:=0 to cxGrid9DBBandedTableView1.Controller.SelectedRecordCount - 1 do
    str_bargain_id := str_bargain_id + ', ' + IntToStr(cxGrid9DBBandedTableView1.Controller.SelectedRows[i].Values[cxGrid1DBBandedTableView1bargain_id.Index]);
  Delete(str_bargain_id, 1, 2);
  Raznoe.PrintFrahtCardWeight_Multi2(fmMain.Lis, str_bargain_id);
end;

procedure TfmPlanClient.dxBarButton45Click(Sender: TObject);
type
  TFunc = function(AppHand : THandle; str_vagon_num : string) : Variant;
var
  FDic   : TFunc;
  handle : THandle;
  v      : Variant;
  str_vagon_num: string;
  cxGridDBBandedTableView : TcxGridDBBandedTableView;
begin
  handle := LoadLibrary('dictionary.dll');
  @FDic := GetProcAddress(handle, 'CreateWndChoose_Ext');
  v := FDic(Application.Handle, str_vagon_num);
  FreeLibrary(handle);

  cxGrid2DBBandedTableView1.DataController.DataSet.DisableControls;
  if v[1] = True then begin
    str_vagon_num := v[0];
    FiltercxGrid4ListID(cxGrid2DBBandedTableView1, 'num_vagon', AnsiReplaceStr(str_vagon_num, #13#10, ','));
  end else begin
    cxGrid2DBBandedTableView1.DataController.Filter.Clear;
  end;
  cxGrid2DBBandedTableView1.DataController.DataSet.EnableControls;
  VarClear(v);
end;

procedure TfmPlanClient.dxBarButton46Click(Sender: TObject);
type
  TFunc = function(AppHand : THandle; str_vagon_num : string) : Variant;
var
  FDic   : TFunc;
  handle : THandle;
  v      : Variant;
  str_vagon_num: string;
  cxGridDBBandedTableView : TcxGridDBBandedTableView;
begin
  handle := LoadLibrary('dictionary.dll');
  @FDic := GetProcAddress(handle, 'CreateWndChoose_Ext');
  v := FDic(Application.Handle, str_vagon_num);
  FreeLibrary(handle);

  cxGrid4DBBandedTableView1.DataController.DataSet.DisableControls;
  if v[1] = True then begin
    str_vagon_num := v[0];
    FiltercxGrid4ListID(cxGrid4DBBandedTableView1, 'num_vagon', AnsiReplaceStr(str_vagon_num, #13#10, ','));
  end else begin
    cxGrid4DBBandedTableView1.DataController.Filter.Clear;
  end;
  cxGrid4DBBandedTableView1.DataController.DataSet.EnableControls;
  VarClear(v);
end;

procedure TfmPlanClient.dxBarButton47Click(Sender: TObject);
var sp_fact_update : TADOStoredProc;
        fact_id, i : integer;
        cxGridView : TcxGridDBBandedTableView;
begin
  Screen.Cursor := crHourglass;

  sp_fact_update := TADOStoredProc.Create(nil);
  sp_fact_update.Connection := fmMain.Lis;
  sp_fact_update.ProcedureName := 'sp_fact_update';

  for i:=0 to FView.Controller.SelectedRowCount - 1 do begin
    fact_id := FView.Controller.SelectedRows[i].Values[FView.GetColumnByFieldName('fact_id').Index];
    ShowTextMessage('Осталось ' + IntToStr(FView.Controller.SelectedRowCount - i) + ' записей...', False);

    sp_fact_update.Parameters.Refresh;
    sp_fact_update.Parameters.ParamByName('@fact_id'            ).Value := fact_id;
    sp_fact_update.Parameters.ParamByName('@type_action'        ).Value := 1;
    sp_fact_update.Parameters.ParamByName('@type_info'          ).Value := 3;
    sp_fact_update.ExecProc;
  end;

  sp_fact_update.Free;
  RefreshQueryGrid(FView, 'fact_id');
  ShowTextMessage;

  Screen.Cursor := crDefault;
end;

procedure TfmPlanClient.dxBarSubItem5Popup(Sender: TObject);
begin
  dxBarButton_FilterRecords2.Down := not FView.Filtering.ColumnFilteredItemsList;
end;

procedure TfmPlanClient.dxBarSubItem6Popup(Sender: TObject);
var   i, cnt : integer;
  bar_button : TdxBarButton;
           Q : TADOQuery;
begin
  Screen.Cursor := crHourglass;

  cnt := dxBarSubItem6.ItemLinks.Count;
  for i := 2 to cnt-1 do dxBarSubItem6.ItemLinks.Items[cnt-i+1].Destroy;

  Q := TADOQuery.Create(nil);
  Q.Connection := fmMain.Lis;
  Q.SQL.Add('SELECT DISTINCT users_owner_id, FIO_users_owner FROM view_plan_client_rate_rights ');
  Q.SQL.Add('WHERE date_begin <= ' + DateToSQL(Fdate2) + ' AND date_end >= ' + DateToSQL(Fdate1));
  Q.SQL.Add('ORDER BY FIO_users_owner');
  Q.Open;

  while not Q.Eof do begin
    bar_button := TdxBarButton.Create(nil);
    bar_button.ImageIndex := 39;
    bar_button.Caption    := Q.FieldByName('FIO_users_owner').AsString;
    bar_button.Tag        := Q.FieldByName('users_owner_id').AsInteger;
    bar_button.OnClick    := OnMenuUsersClick;
    with dxBarSubItem6.ItemLinks.Add do begin
      Index := 1 + Q.RecNo;
      Item := bar_button;
    end;
    Q.Next;
  end;

  Q.Free;
  Screen.Cursor := crDefault;
end;

procedure TfmPlanClient.OnMenuUsersClick(Sender:TObject);
begin
  Screen.Cursor := crHourglass;

  Factive_users_id := TdxBarItem(Sender).Tag;
  Caption := 'Ставки по Клиентам (' + TdxBarItem(Sender).Caption + ')';

  Query_PlanClient_Rate1.Close;
  Query_PlanClient_Rate1.Parameters.ParamByName('users_owner_id').Value := Factive_users_id;
  Query_PlanClient_Rate1.Open;
//  RefreshQueryGrid(cxGrid7DBBandedTableView1, 'plan_client_rate_id');

  Screen.Cursor := crDefault;
end;

procedure TfmPlanClient.dxBarButton16Click(Sender: TObject);
var field_name, table_name : string;
begin
  field_name := FView.DataController.KeyFieldNames;
  table_name := Copy(field_name, 1, Length(field_name) - 3); // 'fact_id' --> 'fact'

  SetRecordColor(field_name, FView, table_name, TComponent(Sender).Tag = 1);
  RefreshQueryGrid(FView, field_name);
end;

procedure TfmPlanClient.dxBarButton7Click(Sender: TObject);
var  iTag : integer;
begin
  iTag := TdxBarButton(Sender).Tag;
  fmPeriod := TfmPeriod.Create(Application, Fdate1, Fdate2, iTag);
  if fmPeriod.ShowModal = mrOk then begin
    case iTag of
      3: SetPeriod(fmPeriod._GetMonth, IncMonth(fmPeriod._GetMonth) - 1);
//      2: SetPeriod(fmPeriod._GetMonthBegin, fmPeriod._GetMonthEnd);
      1: SetPeriod(fmPeriod._GetDateBegin, fmPeriod._GetDateEnd);
    end;
  end;
end;

procedure TfmPlanClient.dxBarButton6Click(Sender: TObject);
begin
  PrintcxGrid(FView);
end;

procedure TfmPlanClient.dxBarButton18Click(Sender: TObject);
begin
  SetdxDBGridColumns(FView);
end;

procedure TfmPlanClient.dxBarButton19Click(Sender: TObject);
begin
  FView.OptionsView.GroupByBox := not FView.OptionsView.GroupByBox;
end;

procedure TfmPlanClient.dxBarButton_FilterRecords2Click(Sender: TObject);
begin
  FView.Filtering.ColumnFilteredItemsList := not dxBarButton_FilterRecords2.Down;
end;

procedure TfmPlanClient.cxGrid1DBBandedTableView1KeyPress(Sender: TObject; var Key: Char);
begin
  FilterColumnGridOnKeyPress(FView, Key);
end;

procedure TfmPlanClient.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TfmPlanClient.SetPeriod(date1, date2: TDateTime);
var        key_val : integer;
  _ActiveTableView : TcxGridDBBandedTableView;
begin
  Fdate1 := date1;
  Fdate2 := date2;
  Screen.Cursor := crHourglass;

  case cxPageControl1.ActivePageIndex of
    0 : _ActiveTableView := cxGrid1DBBandedTableView1;
    1 : _ActiveTableView := cxGrid3DBBandedTableView1;
    2 : _ActiveTableView := cxGrid4DBBandedTableView1;
    3 : _ActiveTableView := cxGrid7DBBandedTableView1;
  end;

  // Запоминаем значение ключа (если его нам не передали)
  key_val := -9;
  if (not _ActiveTableView.DataController.DataSet.IsEmpty) then
    key_val := _ActiveTableView.DataController.GetKeyFieldsValues;

  cxPageControl1Change(nil);

  if (MonthOf(Fdate1) = MonthOf(Fdate2)) and (IncMonth(Fdate1) = IncDay(Fdate2)) then
    dxBarSubItem2.Caption := FormatDateTime('mmmm yyyy', Fdate1)
  else if (DateOf(Fdate1) = 1) and (DateOf(IncDay(Fdate2)) = 1) then
    dxBarSubItem2.Caption := FormatDateTime('mmm yy', Fdate1) + ' - ' + FormatDateTime('mmm yy', Fdate2)
  else if (Fdate1 = Fdate2)  then
    dxBarSubItem2.Caption := FormatDateTime('dd.mm.yyyy', Fdate1)
  else
    dxBarSubItem2.Caption := FormatDateTime('dd.mm.yy', Fdate1) + ' - ' + FormatDateTime('dd.mm.yy', Fdate2);

  // Пытаемся восстановить запись на прежнее место (или на переданное значение)
  if _ActiveTableView.DataController.LocateByKey(key_val) = False then _ActiveTableView.Controller.GoToFirst;
  if _ActiveTableView.Controller.FocusedRecord <> nil then _ActiveTableView.Controller.FocusedRecord.Selected := True;

  Screen.Cursor := crDefault;
end;

procedure TfmPlanClient.ADOConnExecuteComplete(Connection: TADOConnection; RecordsAffected: Integer; const Error: Error; var EventStatus: TEventStatus; const Command: _Command; const Recordset: _Recordset);
begin
  if EventStatus = esErrorsOccured then begin
    Application.MessageBox(PWideChar(error.Description), 'Внимание', MB_OK);
    ShowTextMessage('', True);
  end;
end;

procedure TfmPlanClient.dxBarButton5Click(Sender: TObject);
begin
  PrintReportPlanClient(cxGrid1DBBandedTableView1contract_id.DataBinding.Field.AsInteger, Fdate1, Fdate2, fmMain.Lis);
end;

procedure TfmPlanClient.LocatePlanClientID(plan_client_id: integer);
var Q: TADOQuery;
begin
  Screen.Cursor := crHourGlass;

  Q := TADOQuery.Create(nil);
  Q.Connection := fmMain.Lis;
  Q.SQL.Add('SELECT * FROM view_plan_client_rights WHERE plan_client_id = ' + IntToStr(plan_client_id));
  Q.Open;

  if Q.RecordCount > 0 then begin
    SetPeriod(Q.FieldByName('plan_date').AsDateTime, Q.FieldByName('plan_date').AsDateTime);
    SP_PlanClient.Locate('plan_client_id', plan_client_id, [loCaseInsensitive]);
    if cxGrid1DBBandedTableView1.Controller.FocusedRecord <> nil then  cxGrid1DBBandedTableView1.Controller.FocusedRecord.Selected := True;
  end else begin
    Application.MessageBox('План не найден.', 'Сообщение', MB_ICONINFORMATION or MB_OK);
  end;

  Q.Free;
  Screen.Cursor := crDefault;
end;


end.










