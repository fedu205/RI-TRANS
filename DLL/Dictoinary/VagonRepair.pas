unit VagonRepair;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Default,
  Dialogs, ImgList, StdCtrls, ExtCtrls, DB, ComObj, DateUtils, StrUtils, ImageList, DBClient, Registry,
  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, cxDBData,
  cxPropertiesStore, dxBar, cxGridCustomView,cxGridCustomTableView, cxGridTableView, cxGridBandedTableView, cxGridDBBandedTableView, cxClasses,
  cxGridLevel, cxGrid, ADODB, cxColorComboBox, cxCalendar,  cxCurrencyEdit, cxLocalization, cxCheckBox, cxPC, cxDropDownEdit, cxGridExportLink,
  cxLabel, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
  dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMetropolis, dxSkinMetropolisDark, dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013DarkGray,
  dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus, dxSkinSilver,
  dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008, dxSkinTheAsphaltWorld, dxSkinsDefaultPainters, dxSkinValentine, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue, dxSkinscxPCPainter, dxBarBuiltInMenu, cxNavigator, dxSkinsdxBarPainter, dxSkinsForm, dxSkinOffice2016Colorful,
  dxSkinOffice2016Dark, dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark, dxSkinVisualStudio2013Light, cxImageList,
  dxSkinTheBezier, cxCustomPivotGrid, cxDBPivotGrid, dxDateRanges, Winapi.ShellAPI, cxExportPivotGridLink, cxPivotGridCustomDataSet,
  cxPivotGridDrillDownDataSet, dxScrollbarAnnotations, dxCore;

type
  TfmVagonRepair = class(TForm)
    dxBarManager1: TdxBarManager;
    cxPropertiesStore1: TcxPropertiesStore;
    dxBarManager1Bar1: TdxBar;
    dxBarButton1: TdxBarButton;
    dxBarButton2: TdxBarButton;
    dxBarButton3: TdxBarButton;
    dxBarButton4: TdxBarButton;
    dxBarSubItem1: TdxBarSubItem;
    dxBarButton7: TdxBarButton;
    dxBarButton8: TdxBarButton;
    dxBarButton_Refresh: TdxBarButton;
    dxBarPopupMenu1: TdxBarPopupMenu;
    Query_VagonRepairTable: TADOQuery;
    DS_VagonRepairTable: TDataSource;
    cxImageList1: TcxImageList;
    ADOVagonRepair: TADOConnection;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle_Bold: TcxStyle;
    cxStyle_AgreeFactInc_Between: TcxStyle;
    cxStyle_AgreeFactInc_Sum: TcxStyle;
    cxStyle_AgreeFactInc_AddProfit: TcxStyle;
    cxStyle_ClientFrahtCard_Rashod: TcxStyle;
    cxStyle_ClientFrahtCard_Profitt: TcxStyle;
    cxStyle_AgreeFact: TcxStyle;
    cxStyle_Agree_bargain_cod: TcxStyle;
    cxStyle_Orders_cod: TcxStyle;
    cxStyle_BoldBlue: TcxStyle;
    cxStyle_ClientFrahtCard_Rashod_RUB: TcxStyle;
    cxStyle_BalanceOrders: TcxStyle;
    cxStyle_Comiss_USD: TcxStyle;
    cxStyle_Comiss_RUB: TcxStyle;
    cxStyle_Sum_USD: TcxStyle;
    cxStyle_Sum_RUB: TcxStyle;
    cxStyle_Sum_EUR: TcxStyle;
    cxStyle_Sum_CHF: TcxStyle;
    cxStyle_Sum_Client: TcxStyle;
    cxStyle_Sum_Agent: TcxStyle;
    cxStyle_Sum_Comiss: TcxStyle;
    cxStyle_ID: TcxStyle;
    cxStyle_Docs_Status: TcxStyle;
    dxBarSubItem2: TdxBarSubItem;
    dxBarButton13: TdxBarButton;
    dxBarSubItem3: TdxBarSubItem;
    dxBarButton14: TdxBarButton;
    cxLocalizer1: TcxLocalizer;
    cxPageControl1: TcxPageControl;
    cxTabSheet1: TcxTabSheet;
    cxTabSheet2: TcxTabSheet;
    DS_VagonRepair: TDataSource;
    VagonRepair: TADOQuery;
    dxBarPopupMenu2: TdxBarPopupMenu;
    dxBarSubItem4: TdxBarSubItem;
    dxBarButton11: TdxBarButton;
    dxBarButton12: TdxBarButton;
    dxBarButton17: TdxBarButton;
    dxBarButton18: TdxBarButton;
    dxBarButton19: TdxBarButton;
    dxBarButton20: TdxBarButton;
    dxBarButton21: TdxBarButton;
    dxBarButton22: TdxBarButton;
    dxBarButton23: TdxBarButton;
    dxBarButton24: TdxBarButton;
    dxBarButton25: TdxBarButton;
    dxBarButton26: TdxBarButton;
    dxBarButton27: TdxBarButton;
    dxBarButton28: TdxBarButton;
    dxBarButton_SetDateVagonDepotArrival: TdxBarButton;
    dxBarSubItem5: TdxBarSubItem;
    dxBarButton_ClearDateVagonDepotArrival: TdxBarButton;
    dxBarButton9: TdxBarButton;
    dxBarButton29: TdxBarButton;
    dxBarButton30: TdxBarButton;
    dxBarButton31: TdxBarButton;
    dxBarButton32: TdxBarButton;
    dxBarButton33: TdxBarButton;
    dxBarButton34: TdxBarButton;
    dxBarButton35: TdxBarButton;
    dxBarButton36: TdxBarButton;
    dxBarButton37: TdxBarButton;
    dxBarButton38: TdxBarButton;
    dxBarButton40: TdxBarButton;
    dxBarButton41: TdxBarButton;
    dxBarButton42: TdxBarButton;
    dxBarButton43: TdxBarButton;
    dxBarButton44: TdxBarButton;
    dxBarSubItem6: TdxBarSubItem;
    dxBarButton45: TdxBarButton;
    dxBarButton46: TdxBarButton;
    dxBarButton47: TdxBarButton;
    dxBarButton48: TdxBarButton;
    dxBarButton49: TdxBarButton;
    dxBarButton50: TdxBarButton;
    dxBarButton51: TdxBarButton;
    dxSkinController1: TdxSkinController;
    cxLookAndFeelController1: TcxLookAndFeelController;
    dxBarButton52: TdxBarButton;
    dxBarButton53: TdxBarButton;
    dxBarButton54: TdxBarButton;
    cxTabSheet3: TcxTabSheet;
    cxGrid1: TcxGrid;
    cxGrid1DBBandedTableView1: TcxGridDBBandedTableView;
    cxGrid1DBBandedTableView1fact_repair_id: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1score_cod: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1score_date: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1act_cod: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1contract_id: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1fact_repair_table_id: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1detail_num: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1act_breakage_date: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1primary_docs: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1primary_docs2: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1vagon_id: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1rate: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1act_date: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1quantity: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1rate_nds: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1num_vagon: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1owner_name: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1sum: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1sum_nds: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1sum_total: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1global_color: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1FIO_users: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1contract_cod: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1firm_customer_name_short: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1depo_name: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1depo_cod: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1node_name: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1node_cod: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1service_name: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1detail_name: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1detail_status_name: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1type_mh1_name: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1type_mh2_name: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1date_vu36: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1date_vu23: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1detail_status_name_buh: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1detail_date_begin: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1detail_date_end: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1relation_table_id: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1width_truck: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1date_modify: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1repair_order: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1pretenzia_num: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1pay_num: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1cost_firm_customer_name_short: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1cost_contract_cod: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1cost_acts_cod: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1acts_date: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1cost_contract_id: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1cost_acts_id: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1comis: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1users_color: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1date_vagon_depot_arrival: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1comis_pct: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1comment: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1cnt_global_doc: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1service_sf_name: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1comment3: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1model_name: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1rod_vagon_name: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1set_self_cost: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1detail_sf_name: TcxGridDBBandedColumn;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1DBBandedTableView1type_fact_repair_name: TcxGridDBBandedColumn;
    cxGrid2: TcxGrid;
    cxGrid2DBBandedTableView1: TcxGridDBBandedTableView;
    cxGrid2DBBandedTableView1fact_repair_id: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1score_cod: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1score_date: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1act_cod: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1act_date: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1contract_id: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1set_block: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1sum_total: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1sum_nds: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1contract_cod: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1firm_customer_name_short: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1depo_name: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1node_name: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1FIO_users: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1global_color: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1set_repair_detail: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1cnt_global_doc: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1users_color: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1set_repair_sale: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1kargoETSNG_name: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1firm_self_name_short: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1depo_id: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1comment: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1set_not_check: TcxGridDBBandedColumn;
    cxGrid2Level1: TcxGridLevel;
    cxGrid1DBBandedTableView1type_fact_repair: TcxGridDBBandedColumn;
    dxBarButton56: TdxBarButton;
    dxBarButton57: TdxBarButton;
    dxBarButton58: TdxBarButton;
    Splitter4: TSplitter;
    GroupBox5: TGroupBox;
    Query_Acts: TADOQuery;
    DS_Acts: TDataSource;
    cxGrid3: TcxGrid;
    cxGrid3DBBandedTableView1: TcxGridDBBandedTableView;
    cxGrid3DBBandedTableView1acts_id: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1acts_cod: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1acts_type_id: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1acts_type_cod: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1acts_type_name: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1contract_id: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1contract_cod: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1contract_date_begin: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1firm_customer_name: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1firm_self_name: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1date_period_name: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1date_modify: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1users_owner: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1FIO_users: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1global_color: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1acts_date: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1date_begin: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1date_end: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1self_director: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1self_basis: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1customer_director: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1customer_basis: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1acts_sum: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1acts_currency_id: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1acts_currency_cod: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1acts_brief_name: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1contract_agent_id: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1docs_id: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1docs_status_name: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1process_step_name: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1docs_date_agree: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1acts_comment: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1firm_self_id: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1edo_doc_id: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1edo_date: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1edo_FIO_users: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1doc_id: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1doc_type_describe: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1doc_type_cod: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1edo_docs_id: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1edo_status_name: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1edo_date_sign: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1edo_date_enter: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1edo_date_send: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1edo_date_deliver: TcxGridDBBandedColumn;
    cxGrid3Level1: TcxGridLevel;
    dxBarPopupMenu3: TdxBarPopupMenu;
    dxBarButton59: TdxBarButton;
    dxBarButton61: TdxBarButton;
    dxBarButton60: TdxBarButton;
    dxBarButton62: TdxBarButton;
    dxBarButton63: TdxBarButton;
    dxBarButton64: TdxBarButton;
    dxBarButton65: TdxBarButton;
    dxBarButton66: TdxBarButton;
    dxBarButton67: TdxBarButton;
    dxBarButton68: TdxBarButton;
    dxBarButton69: TdxBarButton;
    dxBarButton70: TdxBarButton;
    dxBarButton71: TdxBarButton;
    dxBarButton72: TdxBarButton;
    dxBarButton73: TdxBarButton;
    dxBarSubItem7: TdxBarSubItem;
    dxBarButton74: TdxBarButton;
    dxBarButton75: TdxBarButton;
    dxBarButton76: TdxBarButton;
    dxBarButton77: TdxBarButton;
    dxBarButton78: TdxBarButton;
    dxBarButton79: TdxBarButton;
    dxBarButton80: TdxBarButton;
    cxGrid1DBBandedTableView1date_period_finance: TcxGridDBBandedColumn;
    cxStyle1: TcxStyle;
    cxGrid1DBBandedTableView1type_park_name: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1budget_name: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1budget_name: TcxGridDBBandedColumn;
    dxBarButton81: TdxBarButton;
    cxImageList2: TcxImageList;
    dxBarButton82: TdxBarButton;
    cxGrid1DBBandedTableView1set_cost_price: TcxGridDBBandedColumn;
    dxBarButton83: TdxBarButton;
    dxBarButton84: TdxBarButton;
    cxTabSheet4: TcxTabSheet;
    cxDBPivotGrid1: TcxDBPivotGrid;
    DS_VagonRepairAnalis: TDataSource;
    Query_VagonRepairAnalis: TADOQuery;
    cxDBPivotGrid1num_vagon: TcxDBPivotGridField;
    cxDBPivotGrid1rod_vagon_name: TcxDBPivotGridField;
    cxDBPivotGrid1sum: TcxDBPivotGridField;
    cxDBPivotGrid1sum_total: TcxDBPivotGridField;
    cxDBPivotGrid1sum_nds: TcxDBPivotGridField;
    cxDBPivotGrid1service_name: TcxDBPivotGridField;
    cxDBPivotGrid1set_cost_price: TcxDBPivotGridField;
    cxDBPivotGrid1cost_firm_customer_name: TcxDBPivotGridField;
    cxDBPivotGrid1type_park_name: TcxDBPivotGridField;
    cxDBPivotGrid1rate_nds_name: TcxDBPivotGridField;
    cxDBPivotGrid1depo_name: TcxDBPivotGridField;
    cxDBPivotGrid1node_name: TcxDBPivotGridField;
    cxDBPivotGrid1detail_name: TcxDBPivotGridField;
    cxDBPivotGrid1firm_customer_name: TcxDBPivotGridField;
    cxDBPivotGrid1cost_contract_cod: TcxDBPivotGridField;
    cxDBPivotGrid1comis: TcxDBPivotGridField;
    cxDBPivotGrid1set_self_cost: TcxDBPivotGridField;
    cxDBPivotGrid1service_sf_name: TcxDBPivotGridField;
    cxDBPivotGrid1model_name: TcxDBPivotGridField;
    dxBarButton85: TdxBarButton;
    dxBarButton86: TdxBarButton;
    dxBarButton87: TdxBarButton;
    dxBarButton88: TdxBarButton;
    cxDBPivotGrid1detail_num: TcxDBPivotGridField;
    cxDBPivotGrid1act_breakage_date: TcxDBPivotGridField;
    cxDBPivotGrid1primary_docs: TcxDBPivotGridField;
    cxDBPivotGrid1rate: TcxDBPivotGridField;
    cxDBPivotGrid1rate_nds: TcxDBPivotGridField;
    cxDBPivotGrid1detail_status_name: TcxDBPivotGridField;
    cxDBPivotGrid1date_vu36: TcxDBPivotGridField;
    cxDBPivotGrid1type_mh1_name: TcxDBPivotGridField;
    cxDBPivotGrid1type_mh2_name: TcxDBPivotGridField;
    cxDBPivotGrid1date_vu23: TcxDBPivotGridField;
    cxDBPivotGrid1detail_status_name_buh: TcxDBPivotGridField;
    cxDBPivotGrid1detail_date_begin: TcxDBPivotGridField;
    cxDBPivotGrid1detail_date_end: TcxDBPivotGridField;
    cxDBPivotGrid1date_modify: TcxDBPivotGridField;
    cxDBPivotGrid1width_truck: TcxDBPivotGridField;
    cxDBPivotGrid1score_cod: TcxDBPivotGridField;
    cxDBPivotGrid1score_date: TcxDBPivotGridField;
    cxDBPivotGrid1act_cod: TcxDBPivotGridField;
    cxDBPivotGrid1act_date: TcxDBPivotGridField;
    cxDBPivotGrid1set_block: TcxDBPivotGridField;
    cxDBPivotGrid1set_score_original: TcxDBPivotGridField;
    cxDBPivotGrid1set_act_original: TcxDBPivotGridField;
    cxDBPivotGrid1FIO_users: TcxDBPivotGridField;
    cxDBPivotGrid1contract_cod: TcxDBPivotGridField;
    cxDBPivotGrid1firm_customer_name_short: TcxDBPivotGridField;
    cxDBPivotGrid1pay_num: TcxDBPivotGridField;
    cxDBPivotGrid1pretenzia_num: TcxDBPivotGridField;
    cxDBPivotGrid1cost_firm_customer_name_short: TcxDBPivotGridField;
    cxDBPivotGrid1acts_num: TcxDBPivotGridField;
    cxDBPivotGrid1cost_acts_cod: TcxDBPivotGridField;
    cxDBPivotGrid1cost_acts_date: TcxDBPivotGridField;
    cxDBPivotGrid1date_vagon_depot_arrival: TcxDBPivotGridField;
    cxDBPivotGrid1comis_pct: TcxDBPivotGridField;
    cxDBPivotGrid1firm_self_name_short: TcxDBPivotGridField;
    cxDBPivotGrid1doc_original_date: TcxDBPivotGridField;
    cxDBPivotGrid1primary_docs2: TcxDBPivotGridField;
    cxDBPivotGrid1comment: TcxDBPivotGridField;
    cxDBPivotGrid1quantity: TcxDBPivotGridField;
    cxDBPivotGrid1comment3: TcxDBPivotGridField;
    cxDBPivotGrid1detail_sf_name: TcxDBPivotGridField;
    cxDBPivotGrid1type_fact_repair: TcxDBPivotGridField;
    cxDBPivotGrid1type_fact_repair_name: TcxDBPivotGridField;
    cxDBPivotGrid1date_period_finance: TcxDBPivotGridField;
    cxDBPivotGrid1budget_name: TcxDBPivotGridField;
    cxDBPivotGrid1bargain_date_period: TcxDBPivotGridField;
    cxDBPivotGrid1owner_name: TcxDBPivotGridField;
    dxBarPopupMenu4: TdxBarPopupMenu;
    dxBarButton89: TdxBarButton;
    dxBarButton90: TdxBarButton;
    dxBarButton91: TdxBarButton;
    cxGrid1DBBandedTableView1bargain_date_period: TcxGridDBBandedColumn;
    dxBarButton92: TdxBarButton;
    dxBarButton93: TdxBarButton;
    dxBarButton94: TdxBarButton;
    dxBarSubItem8: TdxBarSubItem;
    cxStyle_ColorWhite: TcxStyle;
    cxGrid1DBBandedTableView1owner_self_name: TcxGridDBBandedColumn;
    procedure dxBarButton1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure dxBarButton2Click(Sender: TObject);
    procedure dxBarButton4Click(Sender: TObject);
    procedure dxBarButton7Click(Sender: TObject);
    procedure dxBarButton8Click(Sender: TObject);
    procedure dxBarButton10Click(Sender: TObject);
    procedure dxBarButton3Click(Sender: TObject);
    procedure cxGrid1DBBandedTableView1CustomDrawCell(Sender: TcxCustomGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
    procedure cxGrid1DBBandedTableView1FocusedItemChanged(Sender: TcxCustomGridTableView; APrevFocusedItem, AFocusedItem: TcxCustomGridTableItem);
    procedure dxBarButton_RefreshClick(Sender: TObject);
    procedure dxBarButton13Click(Sender: TObject);
    procedure cxGrid2DBBandedTableView1DblClick(Sender: TObject);
    procedure dxBarButton11Click(Sender: TObject);
    procedure cxGrid2DBBandedTableView1CustomDrawCell(Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
    procedure cxGrid2DBBandedTableView1DataControllerFilterChanged(Sender: TObject);
    procedure cxPageControl1Change(Sender: TObject);
    procedure dxBarButton17Click(Sender: TObject);
    procedure dxBarButton18Click(Sender: TObject);
    procedure cxGrid2DBBandedTableView1KeyPress(Sender: TObject; var Key: Char);
    procedure dxBarButton14Click(Sender: TObject);
    procedure dxBarSubItem3Popup(Sender: TObject);
    procedure dxBarButton20Click(Sender: TObject);
    procedure dxBarButton21Click(Sender: TObject);
    procedure dxBarButton19Click(Sender: TObject);
    procedure dxBarButton22Click(Sender: TObject);
    procedure dxBarButton23Click(Sender: TObject);
    procedure dxBarButton24Click(Sender: TObject);
    procedure dxBarButton25Click(Sender: TObject);
    procedure dxBarButton26Click(Sender: TObject);
    procedure dxBarButton28Click(Sender: TObject);
    procedure dxBarButton_SetDateVagonDepotArrivalClick(Sender: TObject);
    procedure dxBarButton_ClearDateVagonDepotArrivalClick(Sender: TObject);
    procedure dxBarButton9Click(Sender: TObject);
    procedure dxBarButton29Click(Sender: TObject);
    procedure dxBarButton30Click(Sender: TObject);
    procedure dxBarButton31Click(Sender: TObject);
    procedure dxBarButton32Click(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure dxBarButton37Click(Sender: TObject);
    procedure dxBarButton38Click(Sender: TObject);
    procedure dxBarButton40Click(Sender: TObject);
    procedure dxBarButton42Click(Sender: TObject);
    procedure dxBarButton43Click(Sender: TObject);
    procedure dxBarButton45Click(Sender: TObject);
    procedure dxBarPopupMenu2Popup(Sender: TObject);
    procedure dxBarButton47Click(Sender: TObject);
    procedure dxBarButton52Click(Sender: TObject);
    procedure dxBarButton54Click(Sender: TObject);
    procedure dxBarButton57Click(Sender: TObject);
    procedure dxBarButton58Click(Sender: TObject);
    procedure cxGrid3DBBandedTableView1CustomDrawCell(Sender: TcxCustomGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
    procedure dxBarButton59Click(Sender: TObject);
    procedure dxBarButton61Click(Sender: TObject);
    procedure dxBarButton62Click(Sender: TObject);
    procedure dxBarButton64Click(Sender: TObject);
    procedure dxBarButton79Click(Sender: TObject);
    procedure dxBarButton82Click(Sender: TObject);
    procedure dxBarButton81Click(Sender: TObject);
    procedure dxBarButton83Click(Sender: TObject);
    procedure dxBarButton85Click(Sender: TObject);
    procedure dxBarButton88Click(Sender: TObject);
    procedure dxBarButton89Click(Sender: TObject);
    procedure dxBarButton91Click(Sender: TObject);
    procedure dxBarButton92Click(Sender: TObject);
    procedure dxBarButton93Click(Sender: TObject);
    procedure dxBarButton94Click(Sender: TObject);
    procedure cxGrid1DBBandedTableView1SelectionChanged(Sender: TcxCustomGridTableView);
    procedure cxGrid2DBBandedTableView1CustomDrawColumnHeader(Sender: TcxGridTableView; ACanvas: TcxCanvas;
      AViewInfo: TcxGridColumnHeaderViewInfo; var ADone: Boolean);
  private
    Fdate1     : TDateTime;
    Fdate2     : TDateTime;
    Fvagon_id  : integer;
    Fvagon_num : integer;
    Fusr_pwd   : PUser_pwd;
    Ftype_fact_repair : integer;
    Ffact_repair_id : integer;

    procedure SetFactRepairID(fact_repair_id: integer);
    function DocsView(ClientDS_param: TClientDataSet): variant;
  public
    constructor Create(App: TApplication; flag: boolean; usr_pwd: PUser_pwd);
    constructor Create4Analis(App: TApplication; flag: boolean; usr_pwd: PUser_pwd; date_from, date_to: TDate);
  published
    property _GetVagonId  : integer read Fvagon_id;
    property _GetVagonNum : integer read Fvagon_num;
    property _SetFactRepairID : integer write SetFactRepairID;
  end;

function CreateWndVagonRepair(AppHand: THandle; flag: boolean; usr_pwd:PUser_pwd) : variant; export;
function CreateWndVagonRepairFind(AppHand: THandle; flag: boolean; usr_pwd: PUser_pwd; fact_repair_id: integer) : variant; export;
function CreateWndVagonRepairAnalis(AppHand: THandle; flag: boolean; usr_pwd:PUser_pwd; date_from, date_to: TDate) : variant; export;

var
  fmVagonRepair: TfmVagonRepair;

implementation
   uses VagonAdd, Other, Period, VagonRepairAdd, Filter, Raznoe, Dict, VagonChoose, Agree2;
{$R *.dfm}


function TfmVagonRepair.DocsView(ClientDS_param: TClientDataSet): variant;
type
  TFunc = function(AppHand: THandle; usr_pwd: PUser_pwd): Variant;
  TFuncDocs = function(AppHand: THandle; usr_pwd_lis: PUser_pwd; usr_pwd_docs: PUser_pwd; usr_pwd_edo: PUser_pwd; ClientDS_param: TClientDataSet): variant;
var
 FPass        : TFunc;
  FDocs        : TFuncDocs;
  handle       : THandle;
  v            : Variant;
  registry     : TRegistry;
  connect      : TADOConnection;
  usr_pwd_docs : PUser_pwd;
  ClientDS     : TClientDataSet;
  server, catalog, users_name, users_pass : string;

  path_docs    : string;
  Q            : TADOQuery;
begin
  registry := TRegistry.Create;
  registry.RootKey := HKEY_CURRENT_USER;
  registry.OpenKey('\Software\LIS_Docs', True);
  server  := '10.10.101.28';//registry.ReadString('Data Source');
  catalog := registry.ReadString('Initial Catalog');
  users_name := registry.ReadString('User ID');
  path_docs  := registry.ReadString('Path Docs');
  users_pass := Fusr_pwd.user_pass;
  registry.Free;

  if path_docs = '' then begin
    Application.MessageBox('Документооборот не установлен!', 'Внимание!', MB_ICONSTOP or MB_OK);
    Exit;
  end;

  if (server = '') or (catalog = '') or (users_name = '') then begin
    Application.MessageBox('Запустите Документооборот!', 'Внимание!', MB_ICONSTOP or MB_OK);
    Exit;
  end;

  new(usr_pwd_docs);
  usr_pwd_docs.users_id  := -9;

  ClientDS := TClientDataSet.Create(nil);
  ClientDS.FieldDefs.Add('func_name', ftString, 100);
  ClientDS.CreateDataSet;
  ClientDS.LogChanges := False;

  try
    connect := TADOConnection.Create(nil);
    connect.KeepConnection := False;
    connect.LoginPrompt    := False;
    connect.ConnectionString  := 'Persist Security Info=True;Provider=SQLOLEDB.1;User ID='+users_name+';Password='+users_pass+';Initial Catalog='+catalog+';Data Source='+server+';';
    connect.Open;

    Q := TADOQuery.Create(nil);
    Q.Connection := connect;
    Q.SQL.Add('SELECT * FROM users WHERE users_name=''' + users_name + ''' AND date_end is null');
    Q.Open;

    if Q.RecordCount > 0 then begin
      usr_pwd_docs.users_id := Q.FieldByName('users_id').AsInteger;
      usr_pwd_docs.user_cod := Q.FieldByName('users_cod').AsString;
      usr_pwd_docs.user_name := users_name;
      usr_pwd_docs.user_pass := users_pass;
      usr_pwd_docs.server    := server;
      usr_pwd_docs.session   := -9;
      usr_pwd_docs.catalog   := catalog;

        // Пользовательские функции
      Q.Close;
      Q.SQL.Clear;
      Q.SQL.Add('SELECT	inf_obj_name as func_name');
      Q.SQL.Add('FROM	  users_functions inner join inf_obj on users_functions.functions_id = inf_obj.inf_obj_id');
      Q.SQL.Add('WHERE	type_inf_id = 4');
      Q.SQL.Add('AND    users_id = ' + IntToStr(usr_pwd_docs.users_id));
      Q.Open;
      Q.First;
      while not Q.Eof do begin
        ClientDS.Append;
        ClientDS.FieldByName('func_name').AsString := Q.FieldByName('func_name').AsString;
        ClientDS.Post;
        Q.Next;
      end;

      usr_pwd_docs.user_func := TClientDataSet.Create(nil);
      usr_pwd_docs.user_func.Data := ClientDS.Data;
    end;
    Q.Free;
    connect.Free;
    ClientDS.Free;
  except
  end;

  if usr_pwd_docs.users_id = -9 then begin
    handle := LoadLibrary(PWideChar(path_docs + 'pass_DV.dll'));
    @FPass := GetProcAddress(handle, 'CreateWndPassword');
    v := FPass(Application.Handle, nil);
    FreeLibrary(handle);

    if (not VarIsNull(v)) and (v[0] <> -9) then begin
      usr_pwd_docs.users_id  := v[0];
      usr_pwd_docs.user_name := v[1];
      usr_pwd_docs.user_pass := v[2];
      usr_pwd_docs.server    := v[3];
      usr_pwd_docs.session   := v[4];
      usr_pwd_docs.user_cod  := v[5];
      usr_pwd_docs.catalog   := v[6];
      if not Assigned(usr_pwd_docs.user_func) then
        usr_pwd_docs.user_func := TClientDataSet.Create(nil);
      usr_pwd_docs.user_func.Data := v[7];
    end;
  end;

  if usr_pwd_docs.users_id = -9 then begin
    Application.MessageBox('Не удалось подключится к Документообороту!', 'Внимание!', MB_ICONSTOP or MB_OK);
    usr_pwd_docs.user_func.Free;
    dispose(usr_pwd_docs);
    Exit;
  end;

  handle := LoadLibrary(PWideChar(path_docs + 'Dictionary.dll'));
  @FDocs := GetProcAddress(handle, 'CreateWndDocsView');
  Result := FDocs(Application.Handle, Fusr_pwd, usr_pwd_docs, nil, ClientDS_param);
  FreeLibrary(handle);
  usr_pwd_docs.user_func.Free;
  Dispose(usr_pwd_docs);
end;

function CreateWndVagonRepair(AppHand: THandle; flag: boolean; usr_pwd:PUser_pwd) : variant; export;
var i : integer;
begin
   Application.Handle := AppHand;
   fmVagonRepair := TfmVagonRepair.Create(Application, flag, usr_pwd);
   with fmVagonRepair do
    try
      if ShowModal=mrOK then result := VarArrayOf([fmVagonRepair._GetVagonId, fmVagonRepair._GetVagonNum])
      else result := VarArrayOf([-9, '']);
    finally
      Free;
   end;
end;

function CreateWndVagonRepairFind(AppHand: THandle; flag: boolean; usr_pwd: PUser_pwd; fact_repair_id: integer) : variant; export;
var i : integer;
begin
   Application.Handle := AppHand;
   fmVagonRepair := TfmVagonRepair.Create(Application, flag, usr_pwd);
   fmVagonRepair._SetFactRepairID := fact_repair_id;
   with fmVagonRepair do
    try
      if ShowModal=mrOK then result := VarArrayOf([fmVagonRepair._GetVagonId, fmVagonRepair._GetVagonNum])
      else result := VarArrayOf([-9, '']);
    finally
      Free;
   end;
end;

function CreateWndVagonRepairAnalis(AppHand: THandle; flag: boolean; usr_pwd:PUser_pwd; date_from, date_to: TDate) : variant; export;
var i : integer;
begin
   Application.Handle := AppHand;
   fmVagonRepair := TfmVagonRepair.Create4Analis(Application, flag, usr_pwd, date_from, date_to);
   with fmVagonRepair do
    try
      if ShowModal=mrOK then result := VarArrayOf([fmVagonRepair._GetVagonId, fmVagonRepair._GetVagonNum])
      else result := VarArrayOf([-9, '']);
    finally
      Free;
   end;
end;

constructor TfmVagonRepair.Create(App: TApplication; flag: boolean; usr_pwd: PUser_pwd);
begin
  Screen.Cursor := crHourglass;
  inherited Create(App);

  cxLocalizer1.Locale := 1049;
  ADOVagonRepair.Connected := False;
  ADOVagonRepair.ConnectionString := 'Persist Security Info=True;Provider=SQLOLEDB.1;User ID='+usr_pwd^.user_name+';Password='+usr_pwd^.user_pass+';Initial Catalog='+usr_pwd^.catalog+';Data Source='+usr_pwd^.server+';';
  ADOVagonRepair.Connected := True;

  dxBarSubItem2.Caption := StoreRegistryDate(rgLoad, '\Software\Lis1\DateTime\VagonRepair', Fdate1, Fdate2);
  Fusr_pwd := usr_pwd;
  cxPageControl1.ActivePage := cxTabSheet1;
  cxPageControl1Change(cxPageControl1);

  StoreRegistryGrid(rgLoad, '\Software\Lis1\Repair_Grids', cxGrid1DBBandedTableView1);
  StoreRegistryGrid(rgLoad, '\Software\Lis1\Repair_Grids', cxGrid2DBBandedTableView1);
  StoreRegistryGrid(rgLoad, '\Software\Lis1\Repair_Grids', cxGrid3DBBandedTableView1);

  if  usr_pwd.user_func.Locate('func_name', 'set_repair_modify', [loCaseInsensitive]) then begin
    dxBarButton3.Enabled  := True;
    dxBarButton18.Enabled := True;
    dxBarButton33.Enabled := True;
    dxBarButton35.Enabled := True;
    dxBarButton65.Enabled := True;
    dxBarButton66.Enabled := True;
    dxBarButton67.Enabled := True;
    dxBarButton68.Enabled := True;
    dxBarButton70.Enabled := True;
    dxBarButton71.Enabled := True;
    dxBarButton72.Enabled := True;
    dxBarButton73.Enabled := True;
  end;

  SetUsersModuleRights(self, ADOVagonRepair);

  MonitorEventFormOpen('OPEN_FORM', self.Name, ADOVagonRepair, -9);
  Screen.Cursor := crDefault;
end;

constructor TfmVagonRepair.Create4Analis(App: TApplication; flag: boolean; usr_pwd: PUser_pwd; date_from, date_to: TDate);
begin
  Screen.Cursor := crHourglass;
  inherited Create(App);

  cxLocalizer1.Locale := 1049;
  ADOVagonRepair.Connected := False;
  ADOVagonRepair.ConnectionString := 'Persist Security Info=True;Provider=SQLOLEDB.1;User ID='+usr_pwd^.user_name+';Password='+usr_pwd^.user_pass+';Initial Catalog='+usr_pwd^.catalog+';Data Source='+usr_pwd^.server+';';
  ADOVagonRepair.Connected := True;

  Fusr_pwd := usr_pwd;

  StoreRegistryGrid(rgLoad, '\Software\Lis1\Repair_Grids', cxGrid1DBBandedTableView1);
  StoreRegistryGrid(rgLoad, '\Software\Lis1\Repair_Grids', cxGrid2DBBandedTableView1);
  StoreRegistryGrid(rgLoad, '\Software\Lis1\Repair_Grids', cxGrid3DBBandedTableView1);

  if  usr_pwd.user_func.Locate('func_name', 'set_repair_modify', [loCaseInsensitive]) then begin
    dxBarButton3.Enabled  := True;
    dxBarButton18.Enabled := True;
    dxBarButton33.Enabled := True;
    dxBarButton35.Enabled := True;
    dxBarButton65.Enabled := True;
    dxBarButton66.Enabled := True;
    dxBarButton67.Enabled := True;
    dxBarButton68.Enabled := True;
    dxBarButton70.Enabled := True;
    dxBarButton71.Enabled := True;
    dxBarButton72.Enabled := True;
    dxBarButton73.Enabled := True;
  end;

  Fdate1 := date_from;
  Fdate2 := date_to;
  dxBarSubItem2.Caption := PeriodToStr(Fdate1, Fdate2, True);
  cxPageControl1.ActivePage := cxTabSheet4;
//  cxDBPivotGrid1set_cost_price.Filter.Values.Add(False);
  with cxDBPivotGrid1.DataController.Filter do begin
    Clear;
    Options := Options + [fcoCaseInsensitive];
    Root.BoolOperatorKind := fboAnd;
    Root.AddItem(cxDBPivotGrid1set_cost_price, foEqual, True, 'Да');
    Active := True;
  end;

  cxPageControl1Change(cxPageControl1);

  SetUsersModuleRights(self, ADOVagonRepair);

  MonitorEventFormOpen('OPEN_FORM', self.Name, ADOVagonRepair, -9);
  Screen.Cursor := crDefault;
end;

procedure TfmVagonRepair.cxGrid1DBBandedTableView1FocusedItemChanged(Sender: TcxCustomGridTableView; APrevFocusedItem, AFocusedItem: TcxCustomGridTableItem);
begin
  Sender.Painter.Invalidate;
end;

procedure TfmVagonRepair.dxBarButton19Click(Sender: TObject);
begin
  cxGrid2DBBandedTableView1.Painter.Invalidate;
end;

procedure TfmVagonRepair.cxGrid1DBBandedTableView1SelectionChanged(Sender: TcxCustomGridTableView);
begin
  if cxGrid1DBBandedTableView1.Controller.SelectedRowCount <> 0 then begin
    Screen.Cursor := crHourglass;
    Query_Acts.Close;
    Query_Acts.Parameters.ParamByName('fact_repair_table_id').Value := cxGrid1DBBandedTableView1fact_repair_table_id.DataBinding.Field.AsInteger;
    Query_Acts.Open;
    Screen.Cursor := crDefault;
  end;
end;

procedure TfmVagonRepair.cxGrid2DBBandedTableView1CustomDrawCell(Sender: TcxCustomGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
  if dxBarButton19.Down then
    if (AViewInfo.GridRecord.Values[cxGrid2DBBandedTableView1users_color.Index]<>NULL) then
      ACanvas.Brush.Color := AViewInfo.GridRecord.Values[cxGrid2DBBandedTableView1users_color.Index];

  if AViewInfo.GridRecord.Selected or AViewInfo.GridRecord.Focused then begin
    ACanvas.Brush.Color := clNavy;
    ACanvas.Font.Color := clWhite;
    if AViewInfo.Focused then ACanvas.Brush.Color := clBlue;
  end;
end;

procedure TfmVagonRepair.cxGrid2DBBandedTableView1CustomDrawColumnHeader(Sender: TcxGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxGridColumnHeaderViewInfo; var ADone: Boolean);
begin
  DrawcxGridColumnOnFocused(Sender, ACanvas, AViewInfo);
end;

procedure TfmVagonRepair.cxGrid1DBBandedTableView1CustomDrawCell(Sender: TcxCustomGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
  if dxBarButton19.Down
  and Assigned(TcxGridDBBandedTableView(Sender).GetColumnByFieldName('users_color'))
  and (AViewInfo.GridRecord.Values[TcxGridDBBandedTableView(Sender).GetColumnByFieldName('users_color').Index]<>NULL) then
    ACanvas.Brush.Color := AViewInfo.GridRecord.Values[TcxGridDBBandedTableView(Sender).GetColumnByFieldName('users_color').Index];

  if AViewInfo.GridRecord.Selected or AViewInfo.GridRecord.Focused then begin
    ACanvas.Brush.Color := clNavy;
    ACanvas.Font.Color := clWhite;
    if AViewInfo.Focused then ACanvas.Brush.Color := clBlue;
  end;
end;

procedure TfmVagonRepair.cxGrid2DBBandedTableView1DataControllerFilterChanged(Sender: TObject);
begin
  DrawcxGridColumnOnFiltered(Sender);
end;

procedure TfmVagonRepair.cxGrid2DBBandedTableView1DblClick(Sender: TObject);
begin
  fmVagonRepairAdd := TfmVagonRepairAdd.Create(Application, Fusr_pwd, Ftype_fact_repair);
  fmVagonRepairAdd._SetUpdate := cxGrid2DBBandedTableView1fact_repair_id.DataBinding.Field.AsInteger;
  if fmVagonRepairAdd.ShowModal = mrOk then RefreshQueryGrid(cxGrid2DBBandedTableView1, 'fact_repair_id', cxGrid2DBBandedTableView1fact_repair_id.DataBinding.Field.AsInteger);
end;

procedure TfmVagonRepair.cxGrid2DBBandedTableView1KeyPress(Sender: TObject;   var Key: Char);
begin
  FilterColumnGridOnKeyPress(TcxGridDBBandedTableView(TcxGridSite(Sender).GridView), Key);
end;

procedure TfmVagonRepair.cxGrid3DBBandedTableView1CustomDrawCell(Sender: TcxCustomGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
  if AViewInfo.GridRecord.Selected or AViewInfo.GridRecord.Focused then begin
    ACanvas.Brush.Color := clNavy;
    ACanvas.Font.Color := clWhite;
    if AViewInfo.Focused then ACanvas.Brush.Color := clBlue;
  end;
end;

procedure TfmVagonRepair.cxPageControl1Change(Sender: TObject);
var i : integer;
    d : TDateTime;
begin
  Screen.Cursor := crHourglass;
  Ftype_fact_repair := cxPageControl1.ActivePage.TabIndex;
  d := Now;
  case cxPageControl1.ActivePage.TabIndex of
    0,1 : begin
          if Ftype_fact_repair = 0 then begin
            cxGrid2.Parent := cxTabSheet1;
            cxGrid2DBBandedTableView1firm_customer_name_short.Caption := 'Клиент';
          end else begin
           cxGrid2.Parent := cxTabSheet2;
           cxGrid2DBBandedTableView1firm_customer_name_short.Caption := 'Подрядчик';
          end;
          DS_VagonRepair.DataSet := Nil;
          VagonRepair.Close;
          VagonRepair.Parameters.ParamByName('date1').Value := Fdate1;
          VagonRepair.Parameters.ParamByName('date2').Value := Fdate2;
          VagonRepair.Parameters.ParamByName('users_group_id').Value := Fusr_pwd.user_group_id;
          VagonRepair.Parameters.ParamByName('type_fact_repair').Value := Ftype_fact_repair;
          VagonRepair.Open;
          DS_VagonRepair.DataSet := VagonRepair;

          dxBarButton17.Enabled := True;
          dxBarButton29.Enabled := True;
          dxBarButton43.Enabled := False;
          dxBarButton88.Enabled := True;
        end;
    2 : begin
          cxGrid1DBBandedTableView1.DataController.BeginFULLUpdate;
          DS_VagonRepairTable.DataSet := nil;
          Query_VagonRepairTable.Close;
          Query_VagonRepairTable.Parameters.ParamByName('date1').Value := Fdate1;
          Query_VagonRepairTable.Parameters.ParamByName('date2').Value := Fdate2;
          Query_VagonRepairTable.Parameters.ParamByName('users_group_id').Value := Fusr_pwd.user_group_id;
          Query_VagonRepairTable.Open;
          DS_VagonRepairTable.DataSet := Query_VagonRepairTable;
          cxGrid1DBBandedTableView1.DataController.EndFullUpdate;

          dxBarButton17.Enabled := False;
          dxBarButton29.Enabled := False;
          dxBarButton43.Enabled := True;
          dxBarButton88.Enabled := False;
        end;
    3 : begin
          cxDBPivotGrid1.DataController.DataSet.DisableControls;

          Query_VagonRepairAnalis.Close;
          Query_VagonRepairAnalis.Parameters.ParamByName('date1').Value := Fdate1;
          Query_VagonRepairAnalis.Parameters.ParamByName('date2').Value := Fdate2;
          Query_VagonRepairAnalis.Parameters.ParamByName('users_group_id').Value := Fusr_pwd.user_group_id;
          Query_VagonRepairAnalis.Open;

          cxDBPivotGrid1.DataController.DataSet.EnableControls;

          dxBarButton17.Enabled := False;
          dxBarButton29.Enabled := False;
          dxBarButton43.Enabled := False;
          dxBarButton88.Enabled := False;
        end;
  end;
  dxBarSubItem2.Hint := IntToStr(SecondsBetween(now, d)) + 'сек.)';
  Screen.Cursor := crDefault;
end;

procedure TfmVagonRepair.dxBarButton10Click(Sender: TObject);
begin
  ModalResult := mrOk;
end;

procedure TfmVagonRepair.dxBarButton13Click(Sender: TObject);
begin
  fmPeriod := TfmPeriod.Create(Application, Fdate1, Fdate2,TComponent(Sender).Tag);
  if fmPeriod.ShowModal = mrOK then begin
    Fdate1 := fmPeriod._GetDateBegin;
    Fdate2 := fmPeriod._GetDateEnd;
    cxPageControl1Change(cxPageControl1);

    dxBarSubItem2.Caption := PeriodToStr(Fdate1, Fdate2, True);
  end;
end;

procedure TfmVagonRepair.dxBarButton52Click(Sender: TObject);
begin
  fmPeriod := TfmPeriod.Create(Application, Fdate1, Fdate1, 3);
  if fmPeriod.ShowModal = mrOk then begin
    Fdate1 := fmPeriod._GetMonth;
    Fdate2 := IncMonth(Fdate1, 1)-1;
    dxBarSubItem2.Caption := FormatDateTime('mmmm yyyy', Fdate1);
    cxPageControl1Change(cxPageControl1);
  end;
end;

procedure TfmVagonRepair.dxBarButton54Click(Sender: TObject);
begin
  Screen.Cursor := crHourglass;
  if TControl(Sender).Tag = 1 then begin
    Fdate1 := IncMonth(Fdate1, -1);
  end;

  if TControl(Sender).Tag = 2 then begin
    Fdate1 := IncMonth(Fdate1, 1);
  end;

  Fdate1 := StartOfTheMonth(Fdate1);
  Fdate2 := IncMonth(Fdate1, 1) - 1;
  dxBarSubItem2.Caption := FormatDateTime('mmmm yyyy', Fdate1);
  cxPageControl1Change(cxPageControl1);

  Screen.Cursor := crDefault;
end;


procedure TfmVagonRepair.dxBarButton17Click(Sender: TObject);
type
  TFunc = function(AppHand:THandle; global_id:integer; caption: string; usr_pwd:PUser_pwd):variant;
var
  FShablon  : TFunc;
  handle    : THandle;
  v         : Variant;
begin
   handle := LoadLibrary('dictionary.dll');
   @FShablon := GetProcAddress(handle,'CreateWndDocBlob');
    case cxPageControl1.ActivePage.TabIndex of
      0,1 : v := FShablon(Application.Handle, cxGrid2DBBandedTableView1fact_repair_id.DataBinding.Field.AsInteger, 'Документы связанные с карточкой ремонта ', Fusr_pwd);
      2 : v := FShablon(Application.Handle, cxGrid1DBBandedTableView1fact_repair_id.DataBinding.Field.AsInteger, 'Документы связанные с карточкой ремонта ', Fusr_pwd);
    end;
   FreeLibrary(handle);
  // RefreshQueryGrid(cxGrid2DBBandedTableView1, 'firm_id');
end;

procedure TfmVagonRepair.dxBarButton30Click(Sender: TObject);
var
  retActSettings           : Variant;
  exApp, exWkb, exWks      : Variant;
  Q,Q1                     : TADOQuery;
  monitor_report_id        : integer;
  row_0                    : integer;
  cod_shablon              : integer;
  cost_contract_id         : integer;
  cost_contract_cod        : string;
  cost_firm_name           : string;
  firm_self_name_short     : string;
  cost_contract_date       : TDate;
  str_fact_repair_table_id : string;
  acts_id, num_vagon, vagon_count, k  : integer;
  sum_total_comis, comis_pct,sum_nds_comis,sum_comis : Double;
  contract_agent_id        : integer;
  I: Integer;
begin
  cod_shablon := 182;
  cost_contract_id := cxGrid1DBBandedTableView1cost_contract_id.DataBinding.Field.AsInteger;
  contract_agent_id := cxGrid1DBBandedTableView1contract_id.DataBinding.Field.AsInteger;
  str_fact_repair_table_id := cx_GetSelectedValues(cxGrid1, 'fact_repair_table_id');
  if str_fact_repair_table_id = '' then exit;

  Q := TADOQuery.Create(nil);
  Q.Connection := ADOVagonRepair;
  Q.SQL.Add('SELECT DISTINCT cost_contract_id FROM view_fact_repair_table WHERE fact_repair_table_id in (' + str_fact_repair_table_id + ')');
  Q.Open;

  if Q.RecordCount > 1 then begin
    Application.MessageBox('Выбраны строки с разными контрагентами!','Ошибка',MB_OK);
    exit;
  end;

  retActSettings := SaveActsBegin(ADOVagonRepair, Fusr_pwd, '-9', cod_shablon, 1, 0, cost_contract_id,contract_agent_id);

  // --- данные контракта подрядчика -----
  Q.Close;
  Q.SQL.Clear;
  Q.SQL.Add('SELECT contract_cod, date_begin, firm_customer_name_short ');
  Q.SQL.Add('FROM view_contract WHERE contract_id = ' + IntToStr(cost_contract_id));
  Q.Open;

  cost_contract_cod  := Q.FieldByName('contract_cod').AsString;
  cost_contract_date := Q.FieldByName('date_begin').AsDateTime;
  cost_firm_name     := Q.FieldByName('firm_customer_name_short').AsString;
  firm_self_name_short := VarToStr(retActSettings[12][1]);
//  SaveActsBegin(ADOVagonRepair, Fusr_pwd, '-9', cod_shablon, 1, False, cost_contract_id);

  if retActSettings[0] = -9 then
    exit;

  exApp := CreateOleObject('Excel.Application');
  exApp.Workbooks.Add(GetDocBlob(ADOVagonRepair, cod_shablon, 9, True)); // 'Отчет_перевыставление_расходов.xls'
  exWks := exApp.ActiveWorkbook.WorkSheets[1];

  exWks.Range['O4'].Value := retActSettings[3][0];
  exWks.Range['B7'].Value := '  Настоящий отчет составлен на предмет того, что ' + firm_self_name_short + ' согласно договору  ' + cost_contract_cod + ' от ' + DateToStr(cost_contract_date) +  'г., произвело следующие расходы в пользу компании '  + cost_firm_name + ' за период с '+ DateToStr(retActSettings[3][1]) +' по ' + DateToStr(retActSettings[3][2]) + ' согласно нижеприведенного реестра: ';

  exWks.Range['C36'].Value := firm_self_name_short;

  // Подписанты
  if retActSettings[13][2] = False then
    exWks.Rows['37:37'].ClearContents
  else begin
    exWks.Range['B37'].Value := retActSettings[14][1];
    exWks.Range['I37'].Value := retActSettings[13][1];
  end;
//  if retActSettings[13][5] = False then
//    exWks.Rows['37:37'].ClearContents
//  else
//    exWks.Range['I37'].Value := retActSettings[13][4];
  if retActSettings[13][8] = False then
    exWks.Rows['43:43'].ClearContents
  else begin
    exWks.Range['B43'].Value := retActSettings[14][7];
    exWks.Range['I43'].Value := retActSettings[13][7];
  end;
//  if retActSettings[13][11] = False then
//    exWks.Rows['37:37'].ClearContents
//  else
//    exWks.Range['I37'].Value := retActSettings[13][10];


  row_0 := 13;



  Q.Close;
  Q.SQL.Clear;
  Q.SQL.Add('SELECT * FROM view_fact_repair_table WHERE fact_repair_table_id in (' + str_fact_repair_table_id + ') ORDER BY num_vagon');
  Q.Open;


   comis_pct       := 0;
   sum_nds_comis   := 0;
   sum_comis       := 0;
   sum_total_comis :=0;
   num_vagon   := 0;
   vagon_count := 0;
   k := 0;
  while not Q.EOF do begin
    if  num_vagon <> Q.FieldByName('num_vagon').Value then inc(vagon_count);
    num_vagon := Q.FieldByName('num_vagon').AsInteger;
    exWks.Range['B' + IntToStr(row_0)].Value := Q.RecNo;
    if not Q.FieldByName('service_sf_name').IsNull then
     exWks.Range['C' + IntToStr(row_0)].Value := Q.FieldByName('service_name').AsString + ' (' + Trim(Q.FieldByName('service_sf_name').AsString) + ')'
    else
     exWks.Range['C' + IntToStr(row_0)].Value := Q.FieldByName('service_name').AsString;

    exWks.Range['D' + IntToStr(row_0)].Value := Q.FieldByName('num_vagon').Value;
    exWks.Range['E' + IntToStr(row_0)].Value := 'руб.';
    exWks.Range['F' + IntToStr(row_0)].Value := Q.FieldByName('rate').Value;
    exWks.Range['G' + IntToStr(row_0)].Value := Q.FieldByName('sum').Value;
    exWks.Range['H' + IntToStr(row_0)].Value := Q.FieldByName('sum_nds').Value;
    exWks.Range['I' + IntToStr(row_0)].Value := Q.FieldByName('sum_total').Value;
    exWks.Range['J' + IntToStr(row_0)].Value := Q.FieldByName('firm_customer_name_short').AsString;
    exWks.Range['K' + IntToStr(row_0)].Value := Q.FieldByName('contract_cod').AsString;
    exWks.Range['L' + IntToStr(row_0)].Value := 'Акт';
    exWks.Range['M' + IntToStr(row_0)].Value := Q.FieldByName('act_cod').AsString;
    exWks.Range['N' + IntToStr(row_0)].Value := Q.FieldByName('act_date').Value;
    exWks.Range['O' + IntToStr(row_0)].Value := Q.FieldByName('score_cod').AsString;
    exWks.Range['P' + IntToStr(row_0)].Value := Q.FieldByName('score_date').Value;
    sum_total_comis := sum_total_comis + Q.FieldByName('comis').AsFloat;
    comis_pct := comis_pct + Q.FieldByName('comis_pct').AsFloat;
    sum_nds_comis   := sum_nds_comis   + Q.FieldByName('sum_nds').AsFloat;
    sum_comis := sum_comis + Q.FieldByName('sum').AsFloat;
    inc(k);
    Q.Next;

    if not Q.Eof then begin
      xCopyRow(exApp,row_0 + 1,row_0 +1);
      inc(row_0);
    end;
  end;

  exApp.Rows[IntToStr(row_0 + 1) + ':' + IntToStr(row_0 + 1)].Select;
  exApp.Selection.Delete;

  //exWks.Range['A1'].Select;


  exWks.Range['B' + IntToStr(row_0 + 4)].Value := GetSumScript_RUS(FloatToStr(exWks.Range['I' + IntToStr(row_0 + 1)].Value), 3) + ', в т.ч. НДС ' + FloatToStr(exWks.Range['H' + IntToStr(row_0 + 1)].Value) + ' руб.' ;
  exWks.Range['B' + IntToStr(row_0 + 6)].Value := 'В соответствии с договором  ' + cost_contract_cod + ' от ' + DateToStr(cost_contract_date) +  'г. вознаграждение ' + firm_self_name_short + ' составило:';
  //Вознаграждение

  Q.Close;
  Q.SQL.Clear;
  Q.SQL.Add('EXEC dbo.sp_fact_repair_act_comis @str_fact_repair_table_id = :str_fact_repair_table_id');
  Q.Parameters.ParamByName('str_fact_repair_table_id').Value := str_fact_repair_table_id;
  Q.Open;

//  exWks.Range['F' + IntToStr(row_0 + 9)].Value := Q.FieldByName('vagon_count').Value;
  exWks.Range['C' + IntToStr(row_0 + 9)].Value := Q.FieldByName('detail_sf_name').AsString;
  exWks.Range['F' + IntToStr(row_0 + 9)].Value := Q.FieldByName('comis_pct').AsString;
  exWks.Range['G' + IntToStr(row_0 + 9)].Value := Q.FieldByName('comis_sum_with_out_nds').Value;
  exWks.Range['H' + IntToStr(row_0 + 9)].Value := Q.FieldByName('sum_nds').Value;
  exWks.Range['I' + IntToStr(row_0 + 9)].Value := Q.FieldByName('comis_sum').Value;

  exWks.Range['B' + IntToStr(row_0 + 12)].Value := 'ИТОГО вознаграждение : ' + GetSumScript_RUS(FloatToStr(exWks.Range['I' + IntToStr(row_0 + 9)].Value), 3) + ', в т.ч. НДС ' + FloatToStr(exWks.Range['H' + IntToStr(row_0 + 9)].Value) + ' руб.' ;


  exWks.Range['B' + IntToStr(row_0 + 15)].Value := 'при предоставлении ' + firm_self_name_short + ' оправдательных документов ';
  exWks.Range['C' + IntToStr(row_0 + 27)].Value := cost_firm_name;

  exWks.Range['B' + IntToStr(row_0 + 29)].Value         := retActSettings[5][0];
  exWks.Range['I' + IntToStr(row_0 + 29)].Value         := retActSettings[5][1];

  SaveActsEnd(ADOVagonRepair, exWks, retActSettings, str_fact_repair_table_id, exWks.Range['I' + IntToStr(row_0 + 1)].Value );
  acts_id := retActSettings[1][0];

  for i := 0 to cxGrid1DBBandedTableView1.Controller.SelectedRecordCount - 1 do
  begin
    Q.Close;
    Q.SQL.Clear;
    Q.SQL.Add(' UPDATE fact_repair_table ');
    Q.SQL.Add(' SET cost_acts_id = ' + IntToStr(acts_id));
    Q.SQL.Add(' WHERE fact_repair_table_id = ' + IntToStr(cxGrid1DBBandedTableView1.Controller.SelectedRows[i].Values[cxGrid1DBBandedTableView1fact_repair_table_id .Index]));
    Q.ExecSQL;
  end;

  RefreshQueryGrid(cxGrid1DBBandedTableView1, 'fact_repair_table_id', cxGrid1DBBandedTableView1fact_repair_table_id.DataBinding.Field.AsInteger );

  Screen.Cursor := crDefault;
  ShowTextMessage('', True);
//  exApp.Visible := True;
  VarClear(exWks); VarClear(exWkb); VarClear(exApp);
end;

procedure TfmVagonRepair.dxBarButton32Click(Sender: TObject);
var
  retActSettings           : Variant;
  exApp, exWkb, exWks      : Variant;
  Q,Q1                     : TADOQuery;
  monitor_report_id        : integer;
  row_0                    : integer;
  cod_shablon              : integer;
  cost_contract_id         : integer;
  cost_contract_cod        : string;
  cost_firm_name, firm_self_name_short,type_firm_customer_name,type_firm_self_name : string;
  cost_contract_date       : TDate;
  str_fact_repair_table_id : string;
  acts_id, num_vagon, vagon_count, k  : integer;
  sum_total_comis, comis_pct,sum_nds_comis,sum_comis : Double;
begin
  cod_shablon := TComponent(Sender).Tag;
  cost_contract_id := cxGrid1DBBandedTableView1cost_contract_id.DataBinding.Field.AsInteger;
  str_fact_repair_table_id := cx_GetSelectedValues(cxGrid1, 'fact_repair_table_id');
  if str_fact_repair_table_id = '' then exit;

  Q := TADOQuery.Create(nil);
  Q.Connection := ADOVagonRepair;
  Q.SQL.Add('SELECT DISTINCT cost_contract_id FROM view_fact_repair_table WHERE fact_repair_table_id in (' + str_fact_repair_table_id + ')');
  Q.Open;

  if Q.RecordCount > 1 then begin
    Application.MessageBox('Выбраны строки с разными контрагентами!','Ошибка',MB_OK);
    exit;
  end;

  retActSettings := SaveActsBegin(ADOVagonRepair, Fusr_pwd, '-9', cod_shablon, 1, 0, cost_contract_id);
  if retActSettings[0] = -9 then
    exit;

  // --- данные контракта подрядчика -----
  Q.Close;
  Q.SQL.Clear;
  Q.SQL.Add('SELECT contract_cod, date_begin, firm_customer_name_short, firm_self_name_short,type_firm_self_name,type_firm_customer_name ');
  Q.SQL.Add('FROM view_contract WHERE contract_id = ' + IntToStr(cost_contract_id));
  Q.Open;

  cost_contract_cod  := Q.FieldByName('contract_cod').AsString;
  cost_contract_date := Q.FieldByName('date_begin').AsDateTime;
  cost_firm_name     := Q.FieldByName('firm_customer_name_short').AsString;
//  firm_self_name_short := Q.FieldByName('firm_self_name_short').AsString;
  firm_self_name_short := VarToStr(retActSettings[12][1]);
  type_firm_customer_name:= Q.FieldByName('type_firm_customer_name').AsString;
  type_firm_self_name:= Q.FieldByName('type_firm_self_name').AsString;

  exApp := CreateOleObject('Excel.Application');
  exApp.Workbooks.Add(GetDocBlob(ADOVagonRepair, cod_shablon, 9, True)); // 'Акт_перевыставление_расходов.xls'
  exWks := exApp.ActiveWorkbook.WorkSheets[1];

  exWks.Range['N3'].Value := retActSettings[3][0];
  exWks.Range['B2'].Value := 'по  договору ' + cost_contract_cod + ' от ' + DateToStr(cost_contract_date) +  ' г. между ' + firm_self_name_short + ' и  ' + cost_firm_name;

  exWks.Range['B6'].Value := firm_self_name_short + ', именуемое в дальнейшем "'+type_firm_self_name+'", в лице ' + VarToStr(retActSettings[4][2]) + ', с одной стороны, и ' + cost_firm_name + ', именуемое в дальнейшем "'+ type_firm_customer_name +'", в лице '+ VarToStr(retActSettings[5][2]) + ', с другой стороны, составили настоящий Акт о нижеследующем:';
  exWks.Range['B8'].Value := 'За период с ' + FormatDateTime('dd.mm.yyyy', retActSettings[3][1]) + 'г. по ' + FormatDateTime('dd.mm.yyyy', retActSettings[3][2]) + 'г..: ' + type_firm_self_name + ' оказал услуги, указанные ниже, в соответствии с договором ' + cost_contract_cod + ' от ' + DateToStr(cost_contract_date) +  ' г.';

  exWks.Range['B12'].Value := retActSettings[3][0];
  exWks.Range['H12'].Value := cost_contract_cod + ' от ' + DateToStr(cost_contract_date);

  // Подписанты
  exWks.Range['B20'].Value := retActSettings[14][1];
  if retActSettings[13][2] = True then exWks.Range['F20'].Value := retActSettings[13][1];
  exWks.Range['B22'].Value := retActSettings[14][4];
  if retActSettings[13][5] = True then exWks.Range['F22'].Value := retActSettings[13][4];
  exWks.Range['H20'].Value := retActSettings[14][7];
  if retActSettings[13][8] = True then exWks.Range['M20'].Value := retActSettings[13][7];
  exWks.Range['H22'].Value := retActSettings[14][10];
  if retActSettings[13][11] = True then exWks.Range['M22'].Value := retActSettings[13][10];

  Q.Close;
  Q.SQL.Clear;
  Q.SQL.Add('EXEC dbo.sp_fact_repair_act_comis @str_fact_repair_table_id = :str_fact_repair_table_id');
  Q.Parameters.ParamByName('str_fact_repair_table_id').Value := str_fact_repair_table_id;
  Q.Open;

  if cod_shablon = 195 then
    exWks.Range['D12'].Value := Q.FieldByName('detail_sf_name').AsString;
  // у акта 392 фиксированная услуга в шаблоне
  exWks.Range['J12'].Value := Q.FieldByName('vagon_count').Value;
  exWks.Range['K12'].Value := Q.FieldByName('comis_pct').Value;
  exWks.Range['M12'].Value := Q.FieldByName('comis_sum_with_out_nds').Value;
  exWks.Range['N12'].Value := Q.FieldByName('sum_nds').Value;
  exWks.Range['O12'].Value := Q.FieldByName('comis_sum').Value;
  exWks.Range['L12'].Value := Q.FieldByName('rate_nds').Value;
  exWks.Range['B15'].Value := 'Вышеперечисленные услуги выполнены полностью и в срок. "' + type_firm_customer_name + '"  претензий по объему, качеству и срокам оказания услуг не имеет.';
  exWks.Range['B16'].Value := 'Настоящий Акт составлен в двух экземплярах (для каждой из Сторон) и является неотъемлемой частью договора №' + cost_contract_cod + ' от ' + DateToStr(cost_contract_date) + ' г.';
  exWks.Range['B18'].Value :=  firm_self_name_short;
  exWks.Range['H18'].Value :=  cost_firm_name;

//  exWks.Range['B20'].Value := retActSettings[4][0];
//  exWks.Range['H20'].Value := retActSettings[5][0];

  SaveActsEnd(ADOVagonRepair, exWks, retActSettings, str_fact_repair_table_id, exWks.Range['O13'].Value);

  Screen.Cursor := crDefault;
  ShowTextMessage('', True);
//  exApp.Visible := True;
  VarClear(exWks); VarClear(exWkb); VarClear(exApp);
end;

procedure TfmVagonRepair.dxBarButton3Click(Sender: TObject);
var i : integer;
   SP : TADOStoredProc;
   Q  : TADOQuery;
begin

  if cxGrid2DBBandedTableView1set_block.DataBinding.Field.AsBoolean then begin
    Application.MessageBox('Невозможно удалить. Карточка заблокирована.', 'Внимание', MB_OK);
    exit;
  end;

  if Application.MessageBox('Вы точно уверены, что хотите удалить?', 'Внимание', MB_OKCANCEL) = ID_OK then begin
    Screen.Cursor := crHourglass;

    SP := TADOStoredProc.Create(nil);
    SP.Connection := ADOVagonRepair;

    Q := TADOQuery.Create(nil);
    Q.Connection := ADOVagonRepair;
    Q.SQL.Add('SELECT fact_repair_table_id, service_id, relation_table_id,fact_repair_id FROM fact_repair_table WHERE fact_repair_id  = :fact_repair_id');

    for i := 0 to cxGrid2DBBandedTableView1.Controller.SelectedRowCount - 1 do begin

      //Удалим строчки
      Q.Close;
      Q.Parameters.ParamByName('fact_repair_id').Value := cxGrid2DBBandedTableView1.Controller.SelectedRows[i].Values[cxGrid2DBBandedTableView1fact_repair_id.Index];
      Q.Open;
      SP.Close;
      SP.ProcedureName := 'sp_fact_repair_table_modify';

      while not Q.Eof do begin
        SP.Parameters.Refresh;
        SP.Parameters.ParamByName('@type_action').Value := 2;
        SP.Parameters.ParamByName('@fact_repair_table_id').Value := Q.FieldByName('fact_repair_table_id').Value;
        SP.Parameters.ParamByName('@fact_repair_id').Value       := Q.FieldByName('fact_repair_id').Value;
        SP.Parameters.ParamByName('@service_id').Value           := Q.FieldByName('service_id').Value;
        SP.Parameters.ParamByName('@relation_table_id').Value    := Q.FieldByName('relation_table_id').Value;
        SP.ExecProc;
        Q.Next;
        ShowTextMessage('Удаление строк. Осталось ' + IntToStr(Q.RecordCount - Q.RecNo) + ' записей...', False);
      end;

      SP.Close;
      SP.ProcedureName := 'sp_fact_repair_modify;1';
      SP.Parameters.Refresh;
      SP.Parameters.ParamByName('@type_action').Value := 2;
      SP.Parameters.ParamByName('@fact_repair_id').Value := cxGrid2DBBandedTableView1.Controller.SelectedRows[i].Values[cxGrid2DBBandedTableView1fact_repair_id.Index];
      try
        SP.ExecProc;
      except on E: Exception do begin
        Application.MessageBox(PChar(E.Message),'ВНИМАНИЕ!!!' , MB_OKCANCEL + MB_ICONERROR);
        Screen.Cursor := crDefault;
      end;
      end;
      ShowTextMessage('Осталось ' + IntToStr(cxGrid2DBBandedTableView1.Controller.SelectedRowCount - i) + ' записей...', False);
    end;
    ShowTextMessage;

    RefreshQueryGrid(cxGrid2DBBandedTableView1, 'fact_repair_id');
    Screen.Cursor := crDefault;
  end;
end;

procedure TfmVagonRepair.dxBarButton40Click(Sender: TObject);
var                i : integer;
                   Q : TADOQuery;
begin
    Screen.Cursor := crHourglass;
    Q := TADOQuery.Create(nil);
    Q.Connection := ADOVagonRepair;
    Q.SQL.Add('UPDATE fact_repair_table SET set_self_cost =:set_self_cost WHERE fact_repair_table_id =:fact_repair_table_id');
    for i := 0 to cxGrid1DBBandedTableView1.Controller.SelectedRecordCount - 1 do begin
      Q.Close;
      Q.Parameters.ParamByName('set_self_cost').Value := TComponent(Sender).Tag;
      Q.Parameters.ParamByName('fact_repair_table_id').Value := cxGrid1DBBandedTableView1.Controller.SelectedRows[i].Values[cxGrid1DBBandedTableView1fact_repair_table_id.Index];
      Q.ExecSQL;
      ShowTextMessage('Осталось '+IntToStr(cxGrid1DBBandedTableView1.Controller.SelectedRowCount - i)+' строк...', False);
    end;
    ShowTextMessage;
    RefreshQueryGrid(cxGrid1DBBandedTableView1, 'fact_repair_table_id', cxGrid1DBBandedTableView1fact_repair_table_id.DataBinding.Field.AsInteger );
    Q.Free;
    Screen.Cursor := crDefault;
end;

procedure TfmVagonRepair.dxBarButton42Click(Sender: TObject);
var                i : integer;
             detail_sf_id : integer;
                   Q : TADOQuery;
str_cost_contract_id : string;
begin
  fmDict := TfmDict.Create(Application, True, Fusr_pwd);
  detail_sf_id := -9;
  if fmDict.ShowModal=mrOk then
    detail_sf_id := fmDict._GetInfObjId;

  Screen.Cursor := crHourglass;
  Q := TADOQuery.Create(nil);
  Q.Connection := ADOVagonRepair;
  Q.SQL.Clear;
  Q.SQL.Add('UPDATE fact_repair_table SET detail_sf_id =:detail_sf_id WHERE fact_repair_table_id =:fact_repair_table_id');

  if  detail_sf_id <> -9 then begin
    for i := 0 to cxGrid1DBBandedTableView1.Controller.SelectedRecordCount - 1 do begin
      Q.Close;
      Q.Parameters.ParamByName('detail_sf_id').Value := detail_sf_id;
      Q.Parameters.ParamByName('fact_repair_table_id').Value := cxGrid1DBBandedTableView1.Controller.SelectedRows[i].Values[cxGrid1DBBandedTableView1fact_repair_table_id.Index];
      Q.ExecSQL;
      ShowTextMessage('Осталось '+IntToStr(cxGrid1DBBandedTableView1.Controller.SelectedRowCount - i)+' строк...', False);
    end;
    ShowTextMessage;
    RefreshQueryGrid(cxGrid1DBBandedTableView1, 'fact_repair_table_id', cxGrid1DBBandedTableView1fact_repair_table_id.DataBinding.Field.AsInteger);
    Screen.Cursor := crDefault;
  end;
end;

procedure TfmVagonRepair.dxBarButton43Click(Sender: TObject);
var List : TStringList;
       i : integer;
begin
  fmVagonChoose:= TfmVagonChoose.Create(Application);
  if fmVagonChoose.ShowModal=mrOK then begin
    Screen.Cursor := crHourglass;
    List := TStringList.Create;
    List.Text := fmVagonChoose._GetStrVagonNum;
    cxGrid1DBBandedTableView1.DataController.DataSet.DisableControls;

    with cxGrid1DBBandedTableView1.DataController.Filter do begin
      Clear;
      Options := Options + [fcoCaseInsensitive];
      Root.BoolOperatorKind := fboOr;
      BeginUpdate;
      for i := 0 to List.Count - 1 do if (Trim(List.Strings[i])<>'') then
        Root.AddItem(cxGrid1DBBandedTableView1.GetColumnByFieldName('num_vagon'), foEqual, Trim(List.Strings[i]),Trim(List.Strings[i]) );
      EndUpdate;
      Active := True;
    end;
    cxGrid1DBBandedTableView1.DataController.DataSet.EnableControls;
    List.Free;
    Screen.Cursor := crDefault;
  end;
end;

procedure TfmVagonRepair.dxBarPopupMenu2Popup(Sender: TObject);
begin
  if not Fusr_pwd.user_func.Locate('func_name', 'set_repair_block', [loCaseInsensitive]) then begin
    dxBarButton45.Enabled:= False;
    dxBarButton46.Enabled:= False;
  end else begin
    dxBarButton45.Enabled:= True;
    dxBarButton46.Enabled:= True;
  end;
end;
procedure TfmVagonRepair.dxBarButton45Click(Sender: TObject);
var i : integer;
   SP : TADOStoredProc;
begin
  if not  Fusr_pwd.user_func.Locate('func_name', 'set_repair_modify', [loCaseInsensitive]) then begin
    Application.MessageBox('Недостаточно прав!', 'Внимание', MB_OKCANCEL);
    exit;
  end;
  Screen.Cursor := crHourglass;
  SP := TADOStoredProc.Create(nil);
  SP.Connection := ADOVagonRepair;
  SP.ProcedureName := 'sp_fact_repair_modify;1';
  SP.Parameters.Refresh;
  for i := 0 to cxGrid2DBBandedTableView1.Controller.SelectedRowCount - 1 do begin
    SP.Close;
    SP.Parameters.Refresh;
    SP.Parameters.ParamByName('@type_action').Value := 4;
    SP.Parameters.ParamByName('@fact_repair_id').Value := cxGrid2DBBandedTableView1.Controller.SelectedRows[i].Values[cxGrid2DBBandedTableView1fact_repair_id.Index];
    SP.Parameters.ParamByName('@set_block').Value := TComponent(Sender).Tag;
    try
      SP.ExecProc;
    except
    end;
    ShowTextMessage('Осталось ' + IntToStr(cxGrid2DBBandedTableView1.Controller.SelectedRowCount - i) + ' записей...', False);
  end;
  ShowTextMessage;
  RefreshQueryGrid(cxGrid2DBBandedTableView1, 'fact_repair_id');
  Screen.Cursor := crDefault;
end;

procedure TfmVagonRepair.dxBarButton47Click(Sender: TObject);
var str_fact_repair_table_id: string;
begin
  if VarIsNull(cxGrid1DBBandedTableView1fact_repair_table_id.DataBinding.Field.Value) then exit;

  str_fact_repair_table_id := cx_GetSelectedValues(cxGrid1,'fact_repair_table_id');
  if str_fact_repair_table_id = ''  then exit;

  fmVagonRepairAdd := TfmVagonRepairAdd.Create(Application, Fusr_pwd, Ftype_fact_repair);
  fmVagonRepairAdd._SetCreateByStr := str_fact_repair_table_id;
  if fmVagonRepairAdd.ShowModal = mrOk then
    RefreshQueryGrid(cxGrid1DBBandedTableView1, 'fact_repair_id',fmVagonRepairAdd._GetFact_repair_id);
    Query_VagonRepairTable.Locate('fact_repair_id',fmVagonRepairAdd._GetFact_repair_id,[]);
end;

procedure TfmVagonRepair.dxBarButton4Click(Sender: TObject);
begin
  case TdxBarButton(Sender).ClickItemLink.Owner.Owner.Tag of
    0 : PrintcxGrid(cxGrid1DBBandedTableView1);
    1 : PrintcxGrid(cxGrid2DBBandedTableView1);//ExportGridToExcel('C:\1.xls', cxGrid1, False, True); //PrintcxGrid(cxGrid2DBBandedTableView1);
  end;
end;

procedure TfmVagonRepair.dxBarButton11Click(Sender: TObject);
begin
  case TdxBarButton(Sender).ClickItemLink.Owner.Owner.Tag of
    0 : begin
          SetRecordUsersColor('fact_repair_id', cxGrid2DBBandedTableView1, 'FACT_REPAIR', TComponent(Sender).Tag = 1);
          RefreshQueryGrid(cxGrid2DBBandedTableView1, 'fact_repair_id', cxGrid2DBBandedTableView1fact_repair_id.DataBinding.Field.AsInteger);
        end;
    1 : begin
          SetRecordUsersColor('fact_repair_table_id', cxGrid1DBBandedTableView1, 'FACT_REPAIR_TABLE', TComponent(Sender).Tag = 1);
          RefreshQueryGrid(cxGrid1DBBandedTableView1, 'fact_repair_table_id', cxGrid1DBBandedTableView1fact_repair_table_id.DataBinding.Field.AsInteger );
        end;
    3 : begin
          SetRecordUsersColor('acts_id', cxGrid1DBBandedTableView1, 'ACTS', TComponent(Sender).Tag = 1);
          RefreshQueryGrid(cxGrid3DBBandedTableView1, 'acts_id', cxGrid3DBBandedTableView1acts_id.DataBinding.Field.AsInteger );
        end;
  end;
end;

procedure TfmVagonRepair.dxBarButton79Click(Sender: TObject);
 var
  exApp, exWkb, exWks      : Variant;
  row_0                    : integer;
  SP                       : TADOStoredProc;
begin
  Screen.Cursor := crHourglass;
  SP := TADOStoredProc.Create(nil);
  SP.Connection := ADOVagonRepair;
  SP.ProcedureName := 'sp_fact_repair_reports';
  SP.Parameters.Refresh;
  SP.Parameters.ParamByName('@type_report').Value := Tcomponent(Sender).Tag;
  SP.Parameters.ParamByName('@date_begin').Value := Fdate1;
  SP.Parameters.ParamByName('@date_end').Value   := Fdate2;
  SP.Parameters.ParamByName('@users_group_id').Value  := Fusr_pwd.user_group_id;
  SP.Open;
  Screen.Cursor := crDefault;
  if SP.RecordCount = 0 then exit;

  exApp := CreateOleObject('Excel.Application');
  exApp.Workbooks.Add(GetDocBlob(ADOVagonRepair, 402, 9, True));
  exWks := exApp.ActiveWorkbook.WorkSheets[1];

  exWks.Range['C4'].Value := dxBarSubItem2.Caption;
  if Tcomponent(Sender).Tag = 0 then
  exWks.Range['C5'].Value := 'Клиенты';
  if Tcomponent(Sender).Tag = 1 then
  exWks.Range['C5'].Value := 'Подрядчики';

  row_0 := 8;

  while not SP.EOF do begin
    exWks.Range['B' + IntToStr(row_0)].Value := SP.FieldByName('firm_customer_name_short').AsString;
    exWks.Range['C' + IntToStr(row_0)].Value := SP.FieldByName('contract_cod').AsString;
    exWks.Range['D' + IntToStr(row_0)].Value := SP.FieldByName('type_contract_name').AsString;
    exWks.Range['E' + IntToStr(row_0)].Value := SP.FieldByName('sum_total').Value;
    exWks.Range['F' + IntToStr(row_0)].Value := SP.FieldByName('agent_sum_fact_RUB').Value;
    exWks.Range['G' + IntToStr(row_0)].Value := SP.FieldByName('delta').Value;
    SP.Next;
    if not SP.Eof then begin
      xCopyRow(exApp,row_0 + 1,row_0 +1);
      inc(row_0);
    end;
    ShowTextMessage('Осталось ' + IntToStr(SP.RecordCount - row_0 + 8) + ' записей...', False);
  end;

  exApp.Rows[IntToStr(row_0 + 1) + ':' + IntToStr(row_0 + 1)].Select;
  exApp.Selection.Delete;

  exWks.Range['A1'].Select;
  exApp.Visible := True;
  Screen.Cursor := crDefault;
  ShowTextMessage('', True);
  VarClear(exWks); VarClear(exWkb); VarClear(exApp);
end;

procedure TfmVagonRepair.dxBarButton7Click(Sender: TObject);
begin
  case TdxBarButton(Sender).ClickItemLink.Owner.Owner.Tag of
    0 : SetdxDBGridColumns(cxGrid1DBBandedTableView1);
    1 : SetdxDBGridColumns(cxGrid2DBBandedTableView1);
    3 : SetdxDBGridColumns(cxGrid3DBBandedTableView1);
  end;
end;

procedure TfmVagonRepair.dxBarButton81Click(Sender: TObject);
var Q : TADOQuery;
    i : integer;
begin
  Q := TADOQuery.Create(nil);
  Q.Connection := fmVagonRepair.ADOVagonRepair;

  Q.SQL.Add('SELECT  b.budget_id, b.budget_name, b.budget_cod FROM view_shp_budget_rights b JOIN view_shp_budget_rights pb ON pb.budget_id = b.budget_parent_id AND pb.budget_cod = ''6754191''');
  Q.Open;
  fmFilter := TfmFilter.Create(0, Q, 'budget_id', 'budget_id', 'budget_name');
  if fmFilter.ShowModal = mrOk then begin
   Q.SQL.Clear;
   Q.SQL.Add('UPDATE fact_repair SET budget_id =:budget_id WHERE fact_repair_id =:fact_repair_id');
   for i := 0 to cxGrid2DBBandedTableView1.Controller.SelectedRecordCount - 1 do begin
    Q.Close;
    Q.Parameters.ParamByName('budget_id').Value := fmFilter.GetId;
    Q.Parameters.ParamByName('fact_repair_id').Value := cxGrid2DBBandedTableView1.Controller.SelectedRows[i].Values[cxGrid2DBBandedTableView1fact_repair_id.Index];
    Q.ExecSQL;
    ShowTextMessage('Осталось '+IntToStr(cxGrid2DBBandedTableView1.Controller.SelectedRowCount - i)+' строк...', False);
   end;
   ShowTextMessage;
   RefreshQueryGrid(cxGrid2DBBandedTableView1, 'fact_repair_id', cxGrid2DBBandedTableView1fact_repair_id.DataBinding.Field.AsInteger);
   Screen.Cursor := crDefault;
  end;
  Q.Close;
  Q.Free;
end;

procedure TfmVagonRepair.dxBarButton82Click(Sender: TObject);
var    i : integer;
 depo_id : integer;
       Q : TADOQuery;
begin
  fmDict := TfmDict.Create(Application, True, Fusr_pwd);
  depo_id := -9;
  if fmDict.ShowModal=mrOk then
    depo_id := fmDict._GetInfObjId;

  Screen.Cursor := crHourglass;
  Q := TADOQuery.Create(nil);
  Q.Connection := ADOVagonRepair;
  Q.SQL.Clear;
  Q.SQL.Add('UPDATE fact_repair SET depo_id =:depo_id WHERE fact_repair_id =:fact_repair_id');

  if  depo_id <> -9 then begin
    for i := 0 to cxGrid2DBBandedTableView1.Controller.SelectedRecordCount - 1 do begin
      Q.Close;
      Q.Parameters.ParamByName('depo_id').Value := depo_id;
      Q.Parameters.ParamByName('fact_repair_id').Value := cxGrid2DBBandedTableView1.Controller.SelectedRows[i].Values[cxGrid2DBBandedTableView1fact_repair_id.Index];
      Q.ExecSQL;
      ShowTextMessage('Осталось '+IntToStr(cxGrid2DBBandedTableView1.Controller.SelectedRowCount - i)+' строк...', False);
    end;
    ShowTextMessage;
    RefreshQueryGrid(cxGrid2DBBandedTableView1, 'fact_repair_id', cxGrid2DBBandedTableView1fact_repair_id.DataBinding.Field.AsInteger);
    Screen.Cursor := crDefault;
  end;
end;

procedure TfmVagonRepair.dxBarButton83Click(Sender: TObject);
var                i : integer;
                   Q : TADOQuery;
begin
    Screen.Cursor := crHourglass;
    Q := TADOQuery.Create(nil);
    Q.Connection := ADOVagonRepair;
    Q.SQL.Add('UPDATE fact_repair_table SET set_cost_price = :set_cost_price WHERE fact_repair_table_id = :fact_repair_table_id');
    for i := 0 to cxGrid1DBBandedTableView1.Controller.SelectedRecordCount - 1 do begin
      Q.Close;
      Q.Parameters.ParamByName('set_cost_price').Value := (TComponent(Sender).Tag = 1);
      Q.Parameters.ParamByName('fact_repair_table_id').Value := cxGrid1DBBandedTableView1.Controller.SelectedRows[i].Values[cxGrid1DBBandedTableView1fact_repair_table_id.Index];
      Q.ExecSQL;
      ShowTextMessage('Осталось '+IntToStr(cxGrid1DBBandedTableView1.Controller.SelectedRowCount - i)+' строк...', False);
    end;
    ShowTextMessage;
    RefreshQueryGrid(cxGrid1DBBandedTableView1, 'fact_repair_table_id', cxGrid1DBBandedTableView1fact_repair_table_id.DataBinding.Field.AsInteger );
    Q.Free;
    Screen.Cursor := crDefault;
end;

procedure TfmVagonRepair.dxBarButton85Click(Sender: TObject);
begin
 UsersSettingModify(TComponent(Sender).Tag, TForm(self).Name, TcxControl(cxGrid1DBBandedTableView1), ADOVagonRepair);
end;

procedure TfmVagonRepair.dxBarButton88Click(Sender: TObject);
var i : integer;
 sl_fact_repair_id  :TStringList;
begin
  sl_fact_repair_id := TStringList.Create;
  for i := 0 to cxGrid2DBBandedTableView1.Controller.SelectedRowCount -1 do begin
    sl_fact_repair_id.Add(VarToStr(cxGrid2DBBandedTableView1.Controller.SelectedRows[i].Values[cxGrid2DBBandedTableView1fact_repair_id.Index]));
  end;

  for i := 0 to sl_fact_repair_id.Count - 1 do begin
   VagonRepair.Locate('fact_repair_id',StrToInt(sl_fact_repair_id.Strings[i]),[]);
   dxBarButton14Click(Sender);
  end;
end;

procedure TfmVagonRepair.dxBarButton89Click(Sender: TObject);
var
  tmp_path, file_name : string;
begin
  tmp_path := ExtractFilePath(ParamStr(0)) + 'Temp' + '\';

  DeleteFileFromDir();
  repeat
    file_name := 'xls_' + IntToStr(GetTickCount) + '.xls';
  until not FileExists(tmp_path + file_name);

  if TControl(Sender).Tag = 1 then
    cxExportPivotGridToExcel(tmp_path + file_name, cxDBPivotGrid1, True)
  else
    cxExportPivotGridToExcel(tmp_path + file_name, cxDBPivotGrid1, False);

  ShellExecute(HWND(nil), 'open', PChar(file_name), nil, PChar(tmp_path), SW_SHOWNORMAL);
end;

procedure TfmVagonRepair.dxBarButton8Click(Sender: TObject);
begin
  case TdxBarButton(Sender).ClickItemLink.Owner.Owner.Tag of
    0 : cxGrid1DBBandedTableView1.OptionsView.GroupByBox := not cxGrid1DBBandedTableView1.OptionsView.GroupByBox;
    1 : cxGrid2DBBandedTableView1.OptionsView.GroupByBox := not cxGrid2DBBandedTableView1.OptionsView.GroupByBox;
    3 : cxGrid3DBBandedTableView1.OptionsView.GroupByBox := not cxGrid3DBBandedTableView1.OptionsView.GroupByBox;
  end;
end;

procedure TfmVagonRepair.dxBarButton_RefreshClick(Sender: TObject);
begin
  case cxPageControl1.ActivePage.TabIndex of
    0,1 : RefreshQueryGrid(cxGrid2DBBandedTableView1, 'fact_repair_id', cxGrid2DBBandedTableView1fact_repair_id.DataBinding.Field.AsInteger);
    2 : RefreshQueryGrid(cxGrid1DBBandedTableView1, 'fact_repair_table_id', cxGrid1DBBandedTableView1fact_repair_table_id.DataBinding.Field.AsInteger);
  end;
end;

procedure TfmVagonRepair.dxBarButton_ClearDateVagonDepotArrivalClick(Sender: TObject);
var
  SP_Update: TADOStoredProc;
  i: integer;
begin
  if cxGrid1DBBandedTableView1.Controller.SelectedRecordCount < 1 then Exit;

  SP_Update := TADOStoredProc.Create(nil);
  try
    SP_Update.Connection := ADOVagonRepair;
    SP_Update.ProcedureName := 'sp_fact_repair_table_modify';
    SP_Update.Parameters.Refresh;

    for i := 0 to cxGrid1DBBandedTableView1.Controller.SelectedRecordCount - 1 do begin
      ShowTextMessage(Format('Обновление дат. %d из %d', [i,
        cxGrid1DBBandedTableView1.Controller.SelectedRecordCount]), False);

      SP_Update.Parameters.ParamByName('@type_action').Value := 3; //Установить дату прибытия в депо
      SP_Update.Parameters.ParamByName('@fact_repair_table_id').Value :=
        cxGrid1DBBandedTableView1.DataController.Values[cxGrid1DBBandedTableView1.Controller.SelectedRecords[i].RecordIndex,
          cxGrid1DBBandedTableView1fact_repair_table_id.Index];
      SP_Update.Parameters.ParamByName('@date_vagon_depot_arrival').Value := NULL;

      SP_Update.ExecProc;
    end;
  finally
    SP_Update.Free;
    dxBarButton_Refresh.Click;
    ShowTextMessage;
  end;
end;

procedure TfmVagonRepair.dxBarButton_SetDateVagonDepotArrivalClick(Sender: TObject);
type
  TFunc = function(AppHand: THandle; usr_pwd: PUser_pwd): variant;
var
  FFactTrack: TFunc;
  handle: THandle;
  res: variant;
  i: integer;
  SP, SP_Update: TADOStoredProc;
  Q: TADOQuery;
  node_cod_idx, act_date_idx, num_vagon_idx, r_idx: integer;
  num_vagon: string;
  do_all: boolean;

  procedure _UpdateDate(to_date: variant);
  begin
    SP_Update.Parameters.ParamByName('@type_action').Value := 3; //Установить дату прибытия в депо
    SP_Update.Parameters.ParamByName('@fact_repair_table_id').Value :=
      cxGrid1DBBandedTableView1.DataController.Values[r_idx, cxGrid1DBBandedTableView1fact_repair_table_id.Index];
    SP_Update.Parameters.ParamByName('@date_vagon_depot_arrival').Value := to_date;

    SP_Update.ExecProc;
  end;

begin
  if cxGrid1DBBandedTableView1.Controller.SelectedRecordCount < 1 then Exit;

  node_cod_idx := cxGrid1DBBandedTableView1node_cod.Index;
  act_date_idx := cxGrid1DBBandedTableView1act_date.Index;
  num_vagon_idx := cxGrid1DBBandedTableView1num_vagon.Index;
  do_all := False;

  SP := TADOStoredProc.Create(nil);
  SP_Update := TADOStoredProc.Create(nil);
  cxGrid1DBBandedTableView1.BeginUpdate;
  try
    SP.Connection := ADOVagonRepair;
    SP.ProcedureName := 'sp_fact_repair_get_vagon_depot_arrival_date';
    SP.Parameters.Refresh;

    SP_Update.Connection := ADOVagonRepair;
    SP_Update.ProcedureName := 'sp_fact_repair_table_modify';
    SP_Update.Parameters.Refresh;

    for i := 0 to cxGrid1DBBandedTableView1.Controller.SelectedRecordCount - 1 do begin
      ShowTextMessage(Format('Обновление дат. %d из %d', [i,
        cxGrid1DBBandedTableView1.Controller.SelectedRecordCount]), False);
      r_idx := cxGrid1DBBandedTableView1.Controller.SelectedRecords[i].RecordIndex;

      if SP.Active then
        SP.Close;

      SP.Parameters.ParamByName('@num_vagon').Value := cxGrid1DBBandedTableView1.DataController.Values[r_idx, num_vagon_idx];
      SP.Parameters.ParamByName('@from_date').Value := cxGrid1DBBandedTableView1.DataController.Values[r_idx, act_date_idx];
      SP.Parameters.ParamByName('@node_repair_cod').Value := cxGrid1DBBandedTableView1.DataController.Values[r_idx, node_cod_idx];

      SP.Open;
      //Если дат нет
      num_vagon := VarToStr(cxGrid1DBBandedTableView1.DataController.Values[r_idx, num_vagon_idx]);
      if SP.IsEmpty then begin
        //Если это последний вагон в списке (или всего 1 вагон), тогда просто сообщим о том что дата не найдена
        if i = (cxGrid1DBBandedTableView1.Controller.SelectedRecordCount - 1) then
          Application.MessageBox(PChar(
            'По вагону №' + num_vagon + ' не найдено ни одной даты.'), 'Внимание!', MB_OK + MB_ICONWARNING + MB_TOPMOST + MB_APPLMODAL)

        //Если вагонов больше, то спросим нужно ли продолжать и если нет, тогда выйдем из цикла.
        else if not do_all then begin
          case MessageDlg( 'По вагону №' + num_vagon + ' не найдено ни одной даты.' +#13#10
              + 'Продолжать выполнение?', mtConfirmation, [mbYes, mbYesToAll ,mbCancel], 0) of
            mrYes: Continue;
            mrYesToAll: begin do_all := True; Continue; end;
            mrCancel: Break;
          end;
        end else
          Continue;
      //Если дат больше 1
      end else if SP.RecordCount > 1 then begin
        case Application.MessageBox(PChar(
            'По вагону №' + num_vagon + ' надено более одной даты.' +#13#10
            + 'Выбрать из списка?' +#13#10
            + '(Да - выбрать дату; Нет - пропустить вагон; Отмена - завершить выполнение)'
          ), 'Уточнение', MB_YESNOCANCEL + MB_ICONQUESTION + MB_TOPMOST + MB_APPLMODAL) of
          ID_YES:begin
            //Выбрать из списка дислокаций.
            Application.MessageBox('Функция в разработке.', 'Внимание', MB_OK + MB_ICONWARNING);
          end;
          ID_NO: Continue;
          ID_CANCEL: Break;
        end;
      //Если дата 1
      end else
        //Выполним обновление
        _UpdateDate(SP['date_pr']);
    end;
  finally
    SP_Update.Free;
    SP.Free;
    cxGrid1DBBandedTableView1.EndUpdate;
    dxBarButton_Refresh.Click;
    ShowTextMessage;
  end;
end;

procedure TfmVagonRepair.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TfmVagonRepair.FormDestroy(Sender: TObject);
begin
  StoreRegistryDate(rgSave, '\Software\Lis1\DateTime\VagonRepair', Fdate1, Fdate2);
  StoreRegistryGrid(rgSave, '\Software\Lis1\Repair_Grids', cxGrid1DBBandedTableView1);
  StoreRegistryGrid(rgSave, '\Software\Lis1\Repair_Grids', cxGrid2DBBandedTableView1);
  StoreRegistryGrid(rgSave, '\Software\Lis1\Repair_Grids', cxGrid3DBBandedTableView1);
end;

procedure TfmVagonRepair.dxBarButton18Click(Sender: TObject);
var     i : integer;
  comment : string;
        Q : TADOQuery;
  detail_date_end : TDateTime;
       id :integer;

begin
  Screen.Cursor := crHourglass;

 if TdxBarButton(Sender).Tag in [0, 1, 2] then begin
   comment := InputBox('', 'Введите комментарий', '');
   if (comment = '') then begin
     Screen.Cursor := crDefault;
     Exit;
   end;
 end;

 //detail_date_end:=  EncodeDate(1900, 1, 13);

 if TdxBarButton(Sender).Tag in [3,7] then begin
   fmPeriod := TfmPeriod.Create(Application, Date, Date, 5);
   if fmPeriod.ShowModal = mrOK then begin
    detail_date_end := fmPeriod._GetDateBegin;
   end else begin
     Screen.Cursor := crDefault;
     Exit;
   end;
 end;

 if TdxBarButton(Sender).Tag in [5, 6] then begin
  id := -9;
  Q := TADOQuery.Create(nil);
  Q.Connection := ADOVagonRepair;

  Q.SQL.Clear;
  Q.SQL.Add('SELECT  * FROM inf_obj WITH (NOLOCK) WHERE (type_inf_id = 37)  ORDER BY inf_obj_cod');
  Q.Open;
  fmFilter := TfmFilter.Create(0, Q, 'inf_obj_id', 'inf_obj_name', 'inf_obj_name');
  if fmFilter.ShowModal = mrOk then
    id := fmFilter.GetId;
  Q.Free;
 end;

  if TdxBarButton(Sender).Tag in [9] then begin
  id := -9;
  Q := TADOQuery.Create(nil);
  Q.Connection := ADOVagonRepair;

  Q.SQL.Clear;
  Q.SQL.Add('SELECT * FROM view_vagon WHERE users_group_id = ' + IntToStr(Fusr_pwd.user_group_id));
  Q.Open;
  fmFilter := TfmFilter.Create(0, Q, 'vagon_id', 'num_vagon', 'num_vagon');
  if fmFilter.ShowModal = mrOk then
    id := fmFilter.GetId;
  Q.Free;
 end;

  comment := Trim(comment);
  Q := TADOQuery.Create(nil);
  Q.Connection := ADOVagonRepair;

  case TdxBarButton(Sender).Tag of
    0 : if comment = '' then Q.SQL.Add('UPDATE fact_repair_table SET primary_docs = NULL WHERE fact_repair_table_id = :fact_repair_table_id')
        else Q.SQL.Add('UPDATE fact_repair_table SET primary_docs = ' + StrToSQL(comment) + ' WHERE fact_repair_table_id = :fact_repair_table_id');
    1 : if comment = '' then Q.SQL.Add('UPDATE fact_repair_table SET primary_docs2 = NULL WHERE fact_repair_table_id = :fact_repair_table_id')
        else Q.SQL.Add('UPDATE fact_repair_table SET primary_docs2 = ' + StrToSQL(comment) + ' WHERE fact_repair_table_id = :fact_repair_table_id');
    2 : if comment = '' then Q.SQL.Add('UPDATE fact_repair_table SET pay_num = NULL WHERE fact_repair_table_id = :fact_repair_table_id')
        else Q.SQL.Add('UPDATE fact_repair_table SET pay_num = ' + StrToSQL(comment) + ' WHERE fact_repair_table_id = :fact_repair_table_id');
    3 : Q.SQL.Add('UPDATE fact_repair_table SET detail_date_end = ' + DateToSQL(detail_date_end) + ' WHERE fact_repair_table_id = :fact_repair_table_id');
    4 : Q.SQL.Add('UPDATE fact_repair_table SET detail_date_end = NULL WHERE fact_repair_table_id = :fact_repair_table_id');
    5 : if id <> -9 then Q.SQL.Add('UPDATE fact_repair_table SET [type_mh1_id] = ' + IntToStr(id) + ' WHERE fact_repair_table_id = :fact_repair_table_id');
    6 : if id <> -9 then Q.SQL.Add('UPDATE fact_repair_table SET [type_mh2_id] = ' + IntToStr(id) + ' WHERE fact_repair_table_id = :fact_repair_table_id');
    7 : Q.SQL.Add('UPDATE fact_repair_table SET detail_date_begin = ' + DateToSQL(detail_date_end) + ' WHERE fact_repair_table_id = :fact_repair_table_id');
    8 : Q.SQL.Add('UPDATE fact_repair_table SET detail_date_begin = NULL WHERE fact_repair_table_id = :fact_repair_table_id');
    9 : if id <> -9 then Q.SQL.Add('UPDATE fact_repair_table SET vagon_id = ' + IntToStr(id) + ' WHERE fact_repair_table_id = :fact_repair_table_id');
    10 : Q.SQL.Add('UPDATE fact_repair_table SET vagon_id = NULL WHERE fact_repair_table_id = :fact_repair_table_id');
  end;

  for i := 0 to cxGrid1DBBandedTableView1.Controller.SelectedRecordCount - 1 do begin
    Q.Close;
    Q.Parameters.ParamByName('fact_repair_table_id').Value := cxGrid1DBBandedTableView1.Controller.SelectedRows[i].Values[cxGrid1DBBandedTableView1fact_repair_table_id.Index];
    Q.ExecSQL;
    ShowTextMessage('Осталось '+IntToStr(cxGrid1DBBandedTableView1.Controller.SelectedRowCount - i)+' строк...', False);
  end;

  ShowTextMessage;
  if Application.MessageBox('Обновить информацию?', 'Внимание', MB_YESNO) = IDYES then
   dxBarButton_RefreshClick(nil);
   //RefreshQueryGrid(cxGrid1DBBandedTableView1, 'fact_repair_table_id', cxGrid1DBBandedTableView1fact_repair_table_id.DataBinding.Field.AsInteger );
  Screen.Cursor := crDefault;
end;

procedure TfmVagonRepair.dxBarButton14Click(Sender: TObject);
var exWks, exApp          : Variant;
  i, row_0, service_cod   : integer;
                     SP   : TADOStoredProc;
                BarCode   : TmyBarCode;
                RS        : _Recordset;
                k         : integer;
  detail_rate,sum_total   : Double;
  str_fact_repair_table_id: string;
  score_cod               : string;
  acts_comment            : string;
  acts_cod                : string;
  acts_date               : TDate;
  start_score_cod         : integer;
  retActSettings          : Variant;
  acts_id                 : integer;
  Q                       : TADOQuery;
  contract_id             : integer;
begin
  Screen.Cursor := crHourglass;
  acts_id := -9;

  if  cxPageControl1.ActivePage <> cxTabSheet3 then begin
    acts_comment   := cxGrid2DBBandedTableView1act_cod.DataBinding.Field.AsString + ';' + FormatDateTime('dd.mm.yyyy', cxGrid2DBBandedTableView1act_date.DataBinding.Field.AsDateTime);
    if TComponent(Sender).tag = 1 then begin
     acts_cod       := cxGrid2DBBandedTableView1act_cod.DataBinding.Field.AsString;
     acts_date      := cxGrid2DBBandedTableView1act_date.DataBinding.Field.AsDateTime;
    end;
    if TComponent(Sender).tag = 2 then begin
     acts_cod       := cxGrid2DBBandedTableView1score_cod.DataBinding.Field.AsString;
     acts_date      := cxGrid2DBBandedTableView1score_date.DataBinding.Field.AsDateTime;
    end;
    contract_id    :=  cxGrid2DBBandedTableView1contract_id.DataBinding.Field.Asinteger;
  end else begin
    acts_comment   := cxGrid1DBBandedTableView1act_cod.DataBinding.Field.AsString + ';' + FormatDateTime('dd.mm.yyyy', cxGrid1DBBandedTableView1act_date.DataBinding.Field.AsDateTime);
    if TComponent(Sender).tag = 1 then begin
     acts_cod       := cxGrid1DBBandedTableView1act_cod.DataBinding.Field.AsString;
     acts_date      := cxGrid1DBBandedTableView1act_date.DataBinding.Field.AsDateTime;
    end;
    if TComponent(Sender).tag = 2 then begin
     acts_cod       := cxGrid1DBBandedTableView1score_cod.DataBinding.Field.AsString;
     acts_date      := cxGrid1DBBandedTableView1score_date.DataBinding.Field.AsDateTime;
    end;
    contract_id    :=  cxGrid1DBBandedTableView1contract_id.DataBinding.Field.Asinteger;
  end;

  Q := TADOQuery.Create(nil);
  Q.Connection := ADOVagonRepair;
  Q.SQL.Add('SELECT TOP 1 acts_id, docs_status_cod, docs_id FROM view_acts WHIT (NOLOCK) WHERE acts_cod = :acts_cod AND acts_date = :acts_date AND contract_id = :contract_id');
  Q.Parameters.ParamByName('acts_cod').Value := acts_cod;
  Q.Parameters.ParamByName('acts_date').Value := acts_date;
  Q.Parameters.ParamByName('contract_id').Value := contract_id;
  Q.Open;

  if Q.RecordCount > 0 then begin
    if (Q.FieldByName('docs_status_cod').Value = '1') or (Q.FieldByName('docs_status_cod').Value = '2') then begin
     Application.MessageBox(PWideChar(Pchar('Служебная записка находится на согласовании. Редактирование запрещено!' + #10 + '№ записи LIS-Docs ' + Q.FieldByName('docs_id').AsString)), 'Внимание', MB_OK or MB_ICONERROR);
     Q.Free;
     Screen.Cursor := crDefault;
     exit;
    end;
   acts_id :=  Q.FieldByName('acts_id').AsInteger;
  end;

  exApp := CreateOleObject('Excel.Application');
  exApp.Workbooks.Add(GetDocBlob(ADOVagonRepair, 127, 9, True)); // 'СлужебнаяЗаписка_Ремонт.xls'
  exWks := exApp.ActiveWorkbook.WorkSheets[1];

  SP := TADOStoredProc.Create(nil);
  SP.Connection := ADOVagonRepair;
  SP.ProcedureName := 'sp_fact_repair_print_note';
  SP.Parameters.Refresh;
  exWks.Range['A1'].ClearComments;



  if  cxPageControl1.ActivePage <> cxTabSheet3 then begin  // Служебная записка по карточке целиком
    exWks.Range['G2'].Value := 'ВНИМАНИЮ Главного бухгалтера ' + cxGrid2DBBandedTableView1firm_self_name_short.DataBinding.Field.AsString;
    exWks.Range['B5'].Value := 'в ' + cxGrid2DBBandedTableView1firm_customer_name_short.DataBinding.Field.AsString + ' по договору № ' + cxGrid2DBBandedTableView1contract_cod.DataBinding.Field.AsString;
    exWks.Range['B7'].Value := '    В соответствии с Актом выполненных работ № ' + cxGrid2DBBandedTableView1act_cod.DataBinding.Field.AsString + ' от ' + FormatDateTime('dd.mm.yyyy',cxGrid2DBBandedTableView1act_date.DataBinding.Field.AsDateTime) + ' г. на сумму ' + cxGrid2DBBandedTableView1sum_total.DataBinding.Field.AsString + ' рублей';
    SP.Parameters.ParamByName('@fact_repair_id').Value := cxGrid2DBBandedTableView1fact_repair_id.DataBinding.Field.AsInteger;
    BarCode.global_id := cxGrid2DBBandedTableView1fact_repair_id.DataBinding.Field.AsInteger;
    SP.Parameters.ParamByName('@type_note').Value := 0;
    exWks.Range['A1'].AddComment('№ зписи карточки = ' + cxGrid2DBBandedTableView1fact_repair_id.DataBinding.Field.AsString);
    SP.Parameters.ParamByName('@str_fact_repair_table_id').Value := NULL;
  end else begin  // Служебная записка по строкам
    str_fact_repair_table_id := cx_GetSelectedValues(cxGrid1, 'fact_repair_table_id');

    if str_fact_repair_table_id = '' then exit;
    SP.Parameters.ParamByName('@type_note').Value := 1;
    SP.Parameters.ParamByName('@str_fact_repair_table_id').Value := str_fact_repair_table_id;
    exWks.Range['G2'].Value := 'ВНИМАНИЮ Главного бухгалтера ' + cxGrid1DBBandedTableView1firm_customer_name_short.DataBinding.Field.AsString;
    exWks.Range['A1'].AddComment('№ зписей строк = ' + str_fact_repair_table_id);
    exWks.Range['B5'].Value := 'в ' + cxGrid1DBBandedTableView1firm_customer_name_short.DataBinding.Field.AsString + ' по договору № ' + cxGrid1DBBandedTableView1contract_cod.DataBinding.Field.AsString;
    exWks.Range['B7'].Value := '    В соответствии с Актом выполненных работ № ' + cxGrid1DBBandedTableView1act_cod.DataBinding.Field.AsString + ' от ' + FormatDateTime('dd.mm.yyyy',cxGrid1DBBandedTableView1act_date.DataBinding.Field.AsDateTime) + ' г.';
    BarCode.global_id := cxGrid1DBBandedTableView1fact_repair_id.DataBinding.Field.AsInteger;
  end;
  exWks.Range['A1'].Comment.Visible := False;

  if Fusr_pwd.user_group_id <> 158706 then begin
    exWks.Range['G44'].Value := '';
    exWks.DrawingObjects.Delete;
  end;

  SP.Open;
  sum_total := 0;
  row_0 := 12;
  // Снятие номерных деталей
  if SP.RecordCount <> 0 then begin
      while not SP.Eof do begin
        exWks.Range['B' + IntToStr(row_0)].Value := SP.FieldByName('detail_name').AsString;
        exWks.Range['C' + IntToStr(row_0)].Value := SP.FieldByName('detail_num').AsString;
        exWks.Range['D' + IntToStr(row_0)].Value := SP.FieldByName('detail_status_name_buh').AsString;
        exWks.Range['F' + IntToStr(row_0)].Value := iif(VarIsNull(SP.FieldByName('quantity').Value),1,SP.FieldByName('quantity').Value);
        exWks.Range['G' + IntToStr(row_0)].Value := SP.FieldByName('detail_status_name').AsString;

        SP.Next;
        if not SP.Eof then begin
          xCopyRow(exApp,row_0 + 1,row_0 +1);
          inc(row_0);
        end;
      end;
      exApp.Rows[IntToStr(row_0 + 1) + ':' + IntToStr(row_0 + 1)].Select;
      exApp.Selection.Delete;
  end else begin
    exApp.Rows[IntToStr(row_0) + ':' + IntToStr(row_0)].Select;
    exApp.Selection.Delete;
  end;

  row_0 := row_0 + 4;

  // Снятие неномерных деталей
  k := 2;

  RS := SP.NextRecordset(k);
  if  RS.RecordCount<> 0 then begin
    while not RS.Eof do begin
      exWks.Range['B' + IntToStr(row_0)].Value := RS.Fields['detail_name'].Value;
      if not VarIsNull(RS.Fields['quantity'].Value) then
        exWks.Range['C' + IntToStr(row_0)].Value := Real(RS.Fields['quantity'].Value);
        exWks.Range['H' + IntToStr(row_0)].Value := iif(VarIsNull(RS.Fields['quantity'].Value),1,RS.Fields['quantity'].Value);
      //exWks.Range['D' + IntToStr(row_0)].Value := RS.Fields['rate'].Value;
        exWks.Range['F' + IntToStr(row_0)].Value := OleVariant('ЗЧ снятые (непригодные)');

      detail_rate := 0;

      if RS.Fields['detail_cod'].Value = '70' then detail_rate := 4383.167;
      if RS.Fields['detail_cod'].Value = '71' then detail_rate := 5320.63;
      if RS.Fields['detail_cod'].Value = '72' then detail_rate := 5543.073;
      if RS.Fields['detail_cod'].Value = '73' then detail_rate := 4851.693;
      if RS.Fields['detail_cod'].Value = '74' then detail_rate := 5777.38;
      if RS.Fields['detail_cod'].Value = '75' then detail_rate := 4073.68;
      if RS.Fields['detail_cod'].Value = '76' then detail_rate := 6842.773;
      if RS.Fields['detail_cod'].Value = '77' then detail_rate := 1667.90;
      if RS.Fields['detail_cod'].Value = '78' then detail_rate := 1522.17;
      if RS.Fields['detail_cod'].Value = '79' then detail_rate := 3903.51;
      if RS.Fields['detail_cod'].Value = '799' then detail_rate := 4748.8;

      exWks.Range['D' + IntToStr(row_0)].Value := detail_rate;

     RS.MoveNext;
     if not RS.Eof then begin
        xCopyRow(exApp,row_0 + 1,row_0 +1);
        inc(row_0);
      end;
    end;
      exApp.Rows[IntToStr(row_0 + 1) + ':' + IntToStr(row_0 + 1)].Select;
      exApp.Selection.Delete;
  end else begin
    exApp.Rows[IntToStr(row_0) + ':' + IntToStr(row_0)].Select;
    exApp.Selection.Delete;
  end;
  row_0 := row_0 + 4;
  //Установка
  k := 3;
  RS := SP.NextRecordset(k);
  if  RS.RecordCount<> 0 then begin
    while not RS.Eof do begin
      exWks.Range['B' + IntToStr(row_0)].Value := RS.Fields['detail_name'].Value;
      exWks.Range['C' + IntToStr(row_0)].Value := RS.Fields['detail_num'].Value;
      if RS.Fields['cost_depo'].Value <> 1 then begin
        exWks.Range['D' + IntToStr(row_0)].Value := 'з/ч Урал Логистика';
        exWks.Range['E' + IntToStr(row_0)].Value := RS.Fields['detail_status_name_buh'].Value;
      end else begin
        exWks.Range['D' + IntToStr(row_0)].Value := 'з/ч Депо';
        exWks.Range['E' + IntToStr(row_0)].Value := '----';
      end;

      exWks.Range['F' + IntToStr(row_0)].Value := iif(VarIsNull(RS.Fields['quantity'].Value),1,RS.Fields['quantity'].Value);

     RS.MoveNext;
     if not RS.Eof then begin
        xCopyRow(exApp,row_0 + 1,row_0 +1);
        inc(row_0);
      end;
    end;
      exApp.Rows[IntToStr(row_0 + 1) + ':' + IntToStr(row_0 + 1)].Select;
      exApp.Selection.Delete;
  end else begin
    exApp.Rows[IntToStr(row_0) + ':' + IntToStr(row_0)].Select;
    exApp.Selection.Delete;
  end;

  row_0 := row_0 + 4;
  score_cod := '';
  start_score_cod := 0;
  // Затраты по собственным нуждам
  k := 4;
  RS := SP.NextRecordset(k);
  if  RS.RecordCount<> 0 then begin
    while not RS.Eof do begin
    if score_cod <> RS.Fields['score_cod'].Value then begin
      if (score_cod <> '') and (start_score_cod < (row_0 - 1)) then begin
        exApp.DisplayAlerts := False;
        Excel_MergeCells(exWks, 'G', 'G', start_score_cod, row_0-1, -4108);
        Excel_MergeCells(exWks, 'H', 'H', start_score_cod, row_0-1, -4108);
        Excel_MergeCells(exWks, 'I', 'I', start_score_cod, row_0-1, -4108);
        Excel_MergeCells(exWks, 'J', 'J', start_score_cod, row_0-1, -4108);
        exApp.DisplayAlerts := True;
      end;
      score_cod := RS.Fields['score_cod'].Value;
      start_score_cod := row_0;
    end;
     exWks.Range['B' + IntToStr(row_0)].Value := RS.Fields['service_name'].Value;
     exWks.Range['C' + IntToStr(row_0)].Value := RS.Fields['sum'].Value;
     exWks.Range['E' + IntToStr(row_0)].Value := RS.Fields['sum_total'].Value;
   //  sum_total := sum_total + RS.Fields['sum_total'].Value;
     exWks.Range['D' + IntToStr(row_0)].Value := RS.Fields['sum_nds'].Value;
     exWks.Range['F' + IntToStr(row_0)].Value := RS.Fields['rate_nds_name'].Value;
     exWks.Range['G' + IntToStr(row_0)].Value := RS.Fields['score_cod'].Value;

     exWks.Range['H' + IntToStr(row_0)].Value := RS.Fields['score_sum'].Value;
     exWks.Range['I' + IntToStr(row_0)].Value := RS.Fields['score_sum_nds'].Value;
     exWks.Range['J' + IntToStr(row_0)].Value := RS.Fields['score_sum_total'].Value;

     RS.MoveNext;
     if not RS.Eof then begin
        xCopyRow(exApp,row_0 + 1,row_0 +1);
        inc(row_0);
      end;
    end;
        exApp.DisplayAlerts := False;
        Excel_MergeCells(exWks, 'G', 'G', start_score_cod, row_0, -4108);
        Excel_MergeCells(exWks, 'H', 'H', start_score_cod, row_0, -4108);
        Excel_MergeCells(exWks, 'I', 'I', start_score_cod, row_0, -4108);
        Excel_MergeCells(exWks, 'J', 'J', start_score_cod, row_0, -4108);
        exApp.DisplayAlerts := True;
      exApp.Rows[IntToStr(row_0 + 1) + ':' + IntToStr(row_0 + 1)].Select;
      exApp.Selection.Delete;
  end else begin
    exApp.Rows[IntToStr(row_0) + ':' + IntToStr(row_0)].Select;
    exApp.Selection.Delete;
  end;

  row_0 := row_0 + 5;

  score_cod := '';
  start_score_cod := row_0;

  //Затраты в пользу третьих лиц
  k := 5;
  RS := SP.NextRecordset(k);
  if  RS.RecordCount<> 0 then
    while not RS.Eof do begin
    if score_cod <> Trim(RS.Fields['score_cod'].Value) then begin
      //if (score_cod <> '') and (start_score_cod < (row_0)) then begin
      if (score_cod <> '')  then begin
        exApp.DisplayAlerts := False;
        Excel_MergeCells(exWks, 'I', 'I', start_score_cod, row_0-1, -4108);
        Excel_MergeCells(exWks, 'J', 'J', start_score_cod, row_0-1, -4108);
        Excel_MergeCells(exWks, 'K', 'K', start_score_cod, row_0-1, -4108);
        Excel_MergeCells(exWks, 'L', 'L', start_score_cod, row_0-1, -4108);
        exApp.DisplayAlerts := True;
      end;
      score_cod := RS.Fields['score_cod'].Value;
      score_cod := Trim(score_cod);
      start_score_cod := row_0;
    end;

     exWks.Range['B' + IntToStr(row_0)].Value := RS.Fields['service_name'].Value;
     exWks.Range['C' + IntToStr(row_0)].Value := RS.Fields['sum'].Value;
     exWks.Range['D' + IntToStr(row_0)].Value := RS.Fields['sum_nds'].Value;
     exWks.Range['E' + IntToStr(row_0)].Value := RS.Fields['sum_total'].Value;
     exWks.Range['F' + IntToStr(row_0)].Value := RS.Fields['cost_firm_customer_name_short'].Value;
     exWks.Range['G' + IntToStr(row_0)].Value := RS.Fields['cost_contract_cod'].Value;
     exWks.Range['H' + IntToStr(row_0)].Value := RS.Fields['rate_nds_name'].Value;
     exWks.Range['I' + IntToStr(row_0)].Value := RS.Fields['score_cod'].Value;

     exWks.Range['J' + IntToStr(row_0)].Value := RS.Fields['score_sum'].Value;
     exWks.Range['K' + IntToStr(row_0)].Value := RS.Fields['score_sum_nds'].Value;
     exWks.Range['L' + IntToStr(row_0)].Value := RS.Fields['score_sum_total'].Value;

    // sum_total := sum_total + RS.Fields['sum_total'].Value;
     RS.MoveNext;
     if not RS.Eof then begin
        xCopyRow(exApp,row_0 + 1,row_0 +1);
        inc(row_0);
      end;
    end;
    exApp.DisplayAlerts := False;
    Excel_MergeCells(exWks, 'I', 'I', start_score_cod, row_0, -4108);
    Excel_MergeCells(exWks, 'J', 'J', start_score_cod, row_0, -4108);
    Excel_MergeCells(exWks, 'K', 'K', start_score_cod, row_0, -4108);
    Excel_MergeCells(exWks, 'L', 'L', start_score_cod, row_0, -4108);
    exApp.DisplayAlerts := True;

  exApp.Rows[IntToStr(row_0 + 1) + ':' + IntToStr(row_0 + 1)].Select;
  exApp.Selection.Delete;

  row_0 := row_0 + 5;

  score_cod := '';
  start_score_cod := row_0;
  //Затраты всего
  k := 6;
  RS := SP.NextRecordset(k);
  if  RS.RecordCount<> 0 then
    while not RS.Eof do begin
     exWks.Range['B' + IntToStr(row_0)].Value := RS.Fields['score_cod'].Value;
     exWks.Range['C' + IntToStr(row_0)].Value := RS.Fields['sum'].Value;
     exWks.Range['D' + IntToStr(row_0)].Value := RS.Fields['sum_nds'].Value;
     exWks.Range['E' + IntToStr(row_0)].Value := RS.Fields['sum_total'].Value;
     exWks.Range['F' + IntToStr(row_0)].Value := RS.Fields['firm_customer_name_short'].Value;
     exWks.Range['G' + IntToStr(row_0)].Value := RS.Fields['contract_cod'].Value;
     exWks.Range['H' + IntToStr(row_0)].Value := RS.Fields['rate_nds_name'].Value;

     sum_total := sum_total + RS.Fields['sum_total'].Value;
     str_fact_repair_table_id := RS.Fields['str_fact_repair_table_id'].Value;
     RS.MoveNext;
     if not RS.Eof then begin
        xCopyRow(exApp,row_0 + 1,row_0 +1);
        inc(row_0);
      end;
    end;

  exApp.Rows[IntToStr(row_0 + 1) + ':' + IntToStr(row_0 + 1)].Select;
  exApp.Selection.Delete;

  //exWks.Range['B' + IntToStr(row_0 + 7)].Value := 'В бухгалтерском учете ' + cxGrid2DBBandedTableView1firm_self_name_short.DataBinding.Field.AsString + ' отражено.';

  if  cxPageControl1.ActivePage = cxTabSheet3 then
    exWks.Range['B7'].Value := '    В соответствии с Актом выполненных работ № ' + cxGrid1DBBandedTableView1act_cod.DataBinding.Field.AsString + ' от ' + FormatDateTime('dd.mm.yyyy',cxGrid1DBBandedTableView1act_date.DataBinding.Field.AsDateTime) + ' г. на сумму ' + FloatToStr(sum_total)+ ' рублей';

 if  cxPageControl1.ActivePage <> cxTabSheet3 then
   exWks.Range['B' + IntToStr(row_0 + 4)].Value   := cxGrid2DBBandedTableView1act_date.DataBinding.Field.AsDateTime
 else
   exWks.Range['B' + IntToStr(row_0 + 4)].Value := cxGrid1DBBandedTableView1act_date.DataBinding.Field.AsDateTime;

  // Структура ответа retActSettings
  // [0] = флаг (-9 = не формируем акт) = acts_type_cod
  // [1] = ID (array: [0] = acts_id, [1] = parent_acts_id)
  // [2] = acts_cod
  // [3] = даты (array: [0] = acts_date, [1] = date_begin, [2] = date_end)
  // [4] = подписанты self (array: [0] = self_director; [1] = self_basis; [2] = текст а акт; [3]-[5] = ... (eng); [6] = банковские реквизиты)
  // [5] = подписанты customer (array: ...)
  // [6] = Галочки (array: [0] = set_addvagon; [1] = set_exchange; [2] = set_addsign; [3] = set_copyreport;
  //                       [4] = set_routefromfact; [5] = set_kargofromfact; [6] = set_weightfromfact;
  //                       [7] = other_exchange_id - альтернативная валюта; [8] = set_scorezftofromfactinc;
  //                       [9] = set_printcomment; [10] - set_ppfromfact; [11] = set_recalc_distance)
  // Пересчет расстояний (настройка не сохраняется в базе, и при каждом новом формировани Акта сброшена)
  // [7] = валюта (array: [0] = currency_id; [1] = brief_name)
  // [8] = contract_id
  // [9] = contract_agent_id
  // [10] = видимость колонок (строка)
  // [11] = примечание
  // [12] = firm_self (array: [0] = firm_self_id, [1] = firm_self_name_short, [2] = firm_self_name_eng)
  // [13] = подписанты (array: [0] = self_dir_id, [1] = self_dir_name, [2] = set_print_self_dir,
  //                           [3] = self_buh_id, [4] = self_buh_name, [5] = set_print_self_buh,
  //                           [6]-[11] = customet_...)
  // [14] = должности (array: [0] = self_type_dir_id, [1] = self_type_dir, [2] = self_type_dir_eng,
  //                           [3] = self_type_buh_id, [4] = self_type_buh, [5] = self_type_buh_eng,
  //                           [6]-[11] = customet_...)
  // [15] = Список @str_zfto_score_id (заполняется только для отчетов на возмещение и только в процессе построения отчета - из формы параметров всегда возвращается пустое)
  // [16] = Доп. СОглашение
  retActSettings := VarArrayOf([
     { [0]}   127,
     { [1]}   VarArrayOf([acts_id,-9]),
     { [2]}   acts_cod,
     { [3]}   VarArrayOf([acts_date,acts_date,acts_date]),
     { [4]}   VarArrayOf([NULL,NULL,NULL,NULL,NULL,NULL,NULL]),
     { [5]}   VarArrayOf([NULL,NULL,NULL,NULL,NULL,NULL,NULL]),
     { [6]}   VarArrayOf([False, False, False, False, False, False, False, False, False, False, False,False,False]),
     { [7]}   VarArrayOf([3,'RUB']),
     { [8]}   contract_id,
     { [9]}   NULL,
     {[10]}   NULL,
     {[11]}   NULL,
     {[12]}   VarArrayOf([NULL,NULL,NULL]),
     {[13]}   VarArrayOf([NULL,NULL,False,NULL,NULL,False,NULL,NULL,False,NULL,NULL,False]),
     {[14]}   VarArrayOf([NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL]),
     {[15]}   NULL,
     {[16]}   NULL
      ]);

  SaveActsEnd(ADOVagonRepair, exWks, retActSettings, str_fact_repair_table_id, sum_total);
  acts_id := retActSettings[1][0];
  Application.MessageBox(PWideChar('Создан акт № записи :' + IntToStr(acts_id)), 'Внимание', MB_OK);

  //exWks.PageSetup.PrintArea := exWks.Range['A1:F'+IntToStr(row_0 + 10)].Address;
  //  exApp.Visible := True;
  //  exApp.Range['A1'].Select;
  VarClear(exWks); VarClear(exApp);
  SP.Free;
  RS.Close;
  Q.Free;
//  ShowTextMessage('', True);
  Screen.Cursor := crDefault;
end;

procedure TfmVagonRepair.dxBarSubItem3Popup(Sender: TObject);
begin
  if (cxPageControl1.ActivePage <> cxTabSheet1) and (cxPageControl1.ActivePage <> cxTabSheet2) then begin
   // dxBarButton14.Enabled := False;
    dxBarButton20.Enabled := False;
    dxBarButton21.Enabled := False;
    dxBarButton23.Enabled := True;
    dxBarButton30.Enabled := True;
    dxBarButton28.Enabled := False;
    dxBarButton22.Enabled := False;
  end else begin
   // dxBarButton14.Enabled := True;
    dxBarButton20.Enabled := True;
    dxBarButton21.Enabled := True;
    dxBarButton23.Enabled := False;
    dxBarButton30.Enabled := False;
    dxBarButton28.Enabled := True;
    dxBarButton22.Enabled := True;
  end;
end;

procedure TfmVagonRepair.dxBarButton20Click(Sender: TObject);
var exWks, exApp        : Variant;
  i, row_0, service_cod : integer;
                      Q : TADOQuery;
                BarCode : TmyBarCode;
begin
  Screen.Cursor := crHourglass;

 // ShowTextMessage('Запуск Excel...', False);
  exApp := CreateOleObject('Excel.Application');
  exApp.Workbooks.Add(GetDocBlob(ADOVagonRepair, 128, 9, True)); // 'СлужебнаяЗаписка_Ремонт.xls'
  exWks := exApp.ActiveWorkbook.WorkSheets[1];

  Q := TADOQuery.Create(nil);
  Q.Connection := ADOVagonRepair;
  Q.SQL.Add('SELECT * FROM view_fact_repair_table WHERE fact_repair_id = ' + cxGrid2DBBandedTableView1fact_repair_id.DataBinding.Field.AsString);

  Q.Open;
  exWks.Range['D3'].Value := Q.FieldByName('score_cod').AsString;
  exWks.Range['F3'].Value := Q.FieldByName('score_date').AsString;
  exWks.Range['D4'].Value := Q.FieldByName('act_cod').AsString;
  exWks.Range['F4'].Value := Q.FieldByName('act_date').AsString;
  exWks.Range['D5'].Value := Q.FieldByName('firm_customer_name_short').AsString;
  exWks.Range['D6'].Value := Q.FieldByName('contract_cod').AsString;
  exWks.Range['D7'].Value := Q.FieldByName('node_name').AsString;
  exWks.Range['B15'].Value := Q.FieldByName('FIO_users').AsString;

  row_0 := 10;

  while not Q.EOF do begin
    exWks.Range['B' + IntToStr(row_0)].Value := Q.FieldByName('num_vagon').AsString;
    exWks.Range['C' + IntToStr(row_0)].Value := Q.FieldByName('service_name').AsString;
    exWks.Range['D' + IntToStr(row_0)].Value := Q.FieldByName('detail_name').AsString;
    exWks.Range['E' + IntToStr(row_0)].Value := Q.FieldByName('detail_status_name').AsString;
    exWks.Range['F' + IntToStr(row_0)].Value := Q.FieldByName('detail_status_name_buh').AsString;
    exWks.Range['G' + IntToStr(row_0)].Value := Q.FieldByName('detail_num').AsString;
    exWks.Range['H' + IntToStr(row_0)].Value := Q.FieldByName('act_breakage_date').AsString;
    exWks.Range['I' + IntToStr(row_0)].Value := Q.FieldByName('primary_docs').AsString;
    exWks.Range['J' + IntToStr(row_0)].Value := Q.FieldByName('rate').Value;
    exWks.Range['K' + IntToStr(row_0)].Value := Q.FieldByName('quantity').Value;
    exWks.Range['L' + IntToStr(row_0)].Value := Q.FieldByName('sum').Value;
    exWks.Range['M' + IntToStr(row_0)].Value := Q.FieldByName('sum_nds').Value;
    exWks.Range['N' + IntToStr(row_0)].Value := Q.FieldByName('sum_total').Value;
    exWks.Range['O' + IntToStr(row_0)].Value := Q.FieldByName('date_modify').AsString;
    Q.Next;

    if not Q.Eof then begin
      xCopyRow(exApp,row_0 + 1,row_0 +1);
      inc(row_0);
    end;
  end;

  exApp.Rows[IntToStr(row_0 + 1) + ':' + IntToStr(row_0 + 1)].Select;
  exApp.Selection.Delete;

    // Добавляем в CA ШК
  BarCode.object_id := 114; // Ремонт вагонов
  BarCode.date      := DATE;
  BarCode.user_id   := Fusr_pwd.users_id;
  BarCode.global_id := VagonRepair.FieldByName('fact_repair_id').AsInteger;
  PrintBarCode2of5(BarCode, exWks, NULL,ADOVagonRepair);

  exApp.Visible := True;
  exApp.Range['A1'].Select;
  VarClear(exWks); VarClear(exApp);
  Q.Free;
//  ShowTextMessage('', True);
  Screen.Cursor := crDefault;
end;

procedure TfmVagonRepair.dxBarButton21Click(Sender: TObject);
var exWks, exApp        : Variant;
  i, row_0, service_cod : integer;
                     SP : TADOStoredProc;
                BarCode : TmyBarCode;
                date1   : TDateTime;
begin
  Screen.Cursor := crHourglass;

  date1 := Date;
  fmPeriod := TfmPeriod.Create(Application, date1, date1, 5);
  if fmPeriod.ShowModal=mrOK then begin
    date1 := fmPeriod._GetDateBegin;
  end else exit;

  ShowTextMessage('Запуск Excel...', False);
  exApp := CreateOleObject('Excel.Application');
  exApp.Workbooks.Add(GetDocBlob(ADOVagonRepair, 130, 9, True)); // 'Акт сверки МЦ'
  exWks := exApp.ActiveWorkbook.WorkSheets[1];

  SP := TADOStoredProc.Create(nil);
  SP.Connection := ADOVagonRepair;
  SP.ProcedureName := 'sp_fact_repair_act';
  SP.Parameters.Refresh;
  SP.Parameters.ParamByName('@date_begin').Value := date1;
  SP.Parameters.ParamByName('@depo_id').Value    := cxGrid2DBBandedTableView1depo_id.DataBinding.Field.AsInteger;

  SP.Open;
  exWks.Range['C5'].Value  := date1;
  exWks.Range['G4'].Value  := 'находящихся на хранении у ' + SP.FieldByName('depo_name_eng').AsString;
  exWks.Range['J9'].Value  := 'По данным ' + SP.FieldByName('depo_name_eng').AsString;
  exWks.Range['J14'].Value := SP.FieldByName('depo_name_eng').AsString;
  exWks.Range['B7'].Value  := '    Настоящий Акт составлен в том, что по состоянию на '+ DateToStr(date1) +' г. у ' + SP.FieldByName('depo_name_eng').AsString + ' находятся на хранении следующие материальные ценности собственности ООО "_________":';
  row_0 := 11;

  while not SP.EOF do begin
    exWks.Range['B' + IntToStr(row_0)].Value := SP.RecNo;
    exWks.Range['C' + IntToStr(row_0)].Value := SP.FieldByName('detail_name').AsString;
    exWks.Range['D' + IntToStr(row_0)].Value := SP.FieldByName('num_vagon').AsString;
    exWks.Range['E' + IntToStr(row_0)].Value := SP.FieldByName('detail_num').AsString;
    exWks.Range['F' + IntToStr(row_0)].Value := SP.FieldByName('width_truck').AsString;
    exWks.Range['G' + IntToStr(row_0)].Value := SP.FieldByName('detail_status_name').AsString;
    exWks.Range['I' + IntToStr(row_0)].Value := SP.FieldByName('sum_quantity').AsFloat;
    SP.Next;
    if not SP.Eof then begin
      xCopyRow(exApp,row_0 + 1,row_0 +1);
      inc(row_0);
    end;
  end;

  exApp.Rows[IntToStr(row_0 + 1) + ':' + IntToStr(row_0 + 1)].Select;
  exApp.Selection.Delete;

//  // Добавляем в CA ШК
  BarCode.object_id := 114; // Ремонт вагонов
  BarCode.date      := DATE;
  BarCode.user_id   := Fusr_pwd.users_id;
  BarCode.global_id := VagonRepair.FieldByName('fact_repair_id').AsInteger;
  PrintBarCode2of5(BarCode, exWks, NULL,ADOVagonRepair);

  exApp.Visible := True;
  exApp.Range['A1'].Select;
  VarClear(exWks); VarClear(exApp);
  SP.Free;
  ShowTextMessage('', True);

  Screen.Cursor := crDefault;
end;

procedure TfmVagonRepair.dxBarButton22Click(Sender: TObject);
begin
  fmVagonRepairAdd := TfmVagonRepairAdd.Create(Application, Fusr_pwd, cxGrid1DBBandedTableView1type_fact_repair.DataBinding.Field.AsInteger);
  fmVagonRepairAdd._SetUpdate := cxGrid1DBBandedTableView1fact_repair_id.DataBinding.Field.AsInteger;
  fmVagonRepairAdd._Set_fact_repair_table_id := cxGrid1DBBandedTableView1fact_repair_table_id.DataBinding.Field.AsInteger;
  if fmVagonRepairAdd.ShowModal = mrOk then
   if Application.MessageBox(PChar('Обновить информацию?'), 'Вниамние!', MB_YESNO + MB_DEFBUTTON2) = IDYES then
    dxBarButton_RefreshClick(nil);
    //RefreshQueryGrid(cxGrid1DBBandedTableView1, 'fact_repair_table_id', cxGrid1DBBandedTableView1fact_repair_table_id.DataBinding.Field.AsInteger);
end;

procedure TfmVagonRepair.dxBarButton1Click(Sender: TObject);
begin
  fmVagonRepairAdd := TfmVagonRepairAdd.Create(Application, Fusr_pwd, Ftype_fact_repair);

  if fmVagonRepairAdd.ShowModal = mrOk then
   if Application.MessageBox(PChar('Обновить информацию?'), 'Вниамние!', MB_YESNO + MB_DEFBUTTON2) = IDYES then
    dxBarButton_RefreshClick(nil);
     //RefreshQueryGrid(cxGrid1DBBandedTableView1, 'fact_repair_table_id');
end;

procedure TfmVagonRepair.dxBarButton2Click(Sender: TObject);
begin
  fmVagonRepairAdd := TfmVagonRepairAdd.Create(Application, Fusr_pwd, Ftype_fact_repair);
  fmVagonRepairAdd._SetUpdate := cxGrid2DBBandedTableView1fact_repair_id.DataBinding.Field.AsInteger;
  if fmVagonRepairAdd.ShowModal = mrOk then
   if Application.MessageBox(PChar('Обновить информацию?'), 'Вниамние!', MB_YESNO + MB_DEFBUTTON2) = IDYES then
    dxBarButton_RefreshClick(nil);
    //RefreshQueryGrid(cxGrid1DBBandedTableView1, 'fact_repair_id', cxGrid1DBBandedTableView1fact_repair_id.DataBinding.Field.AsInteger);
end;

procedure TfmVagonRepair.dxBarButton24Click(Sender: TObject);
var                i : integer;
             comment : string;
                   Q : TADOQuery;
str_cost_contract_id : string;
begin
  Q := TADOQuery.Create(nil);
  Q.Connection := ADOVagonRepair;

  Q.SQL.Clear;
  Q.SQL.Add('SELECT *, case when type_contract = 0 then ''Клиент'' when type_contract = 1 then ''Подрядчик'' END as type_contract_name FROM view_contract_rights WHERE (type_contract in (0,1)) AND (date_end >= GETDATE()) ORDER BY firm_customer_name');
  Q.Open;
  fmFilter := TfmFilter.Create(0, Q, 'contract_id', 'contract_cod', 'firm_customer_name');
  fmFilter._SetContract4ScoreInvoice := True;

  Q.Free;

  Q := TADOQuery.Create(nil);
  Q.Connection := ADOVagonRepair;

  if fmFilter.ShowModal = mrOk then begin
    str_cost_contract_id := IntToStr(fmFilter.GetId);
    Screen.Cursor := crHourglass;
    for i := 0 to cxGrid1DBBandedTableView1.Controller.SelectedRecordCount - 1 do begin
      Q.SQL.Clear;
      Q.SQL.Add('UPDATE fact_repair_table SET cost_contract_id = ' + QuotedStr(str_cost_contract_id)  + ' WHERE fact_repair_table_id = ' + IntToStr(cxGrid1DBBandedTableView1.Controller.SelectedRows[i].Values[cxGrid1DBBandedTableView1fact_repair_table_id.Index])) ;
      Q.ExecSQL;
      ShowTextMessage('Осталось '+IntToStr(cxGrid1DBBandedTableView1.Controller.SelectedRowCount - i)+' строк...', False);
    end;
    ShowTextMessage;
    RefreshQueryGrid(cxGrid1DBBandedTableView1, 'fact_repair_table_id', cxGrid1DBBandedTableView1fact_repair_table_id.DataBinding.Field.AsInteger );
    Screen.Cursor := crDefault;
  end;
end;

procedure TfmVagonRepair.dxBarButton25Click(Sender: TObject);
//var file_name : string;
//            Q : TADOQuery;
begin
  if VarIsNull(cxGrid1DBBandedTableView1cost_acts_id.DataBinding.Field.Value) then begin
    exit;
  end;

//  file_name := 'Act_133' + '_' + FormatDateTime('yyyymmddhhnnss', Now) + '.xls';
//
//  Q := TADOQuery.Create(nil);
//  Q.Connection := ADOVagonRepair;
//  Q.SQL.Add('SELECT acts_image FROM view_acts WHERE acts_id=' + IntToStr(cxGrid1DBBandedTableView1cost_acts_id.DataBinding.Field.AsInteger));
//  Q.Open;
//  LoadFileFromDB(file_name, Q.FieldByName('acts_image'), False);
//
//  Q.Free;

  GetActsView(cxGrid1DBBandedTableView1cost_acts_id.DataBinding.Field.AsInteger, ADOVagonRepair, True, Self);
end;

procedure TfmVagonRepair.dxBarButton23Click(Sender: TObject);
var
  retActSettings           : Variant;
  exApp, exWkb, exWks      : Variant;
  Q,Q1                     : TADOQuery;
  monitor_report_id        : integer;
  row_0                    : integer;
  cod_shablon              : integer;
  cost_contract_id         : integer;
  cost_contract_cod        : string;
  cost_firm_name           : string;
  firm_self_name_short     : string;
  cost_contract_date       : TDate;
  str_fact_repair_table_id : string;
  acts_id                  : integer;
  contract_agent_id        : integer;
  i                        : integer;
begin
  cod_shablon := 133;
  cost_contract_id  := cxGrid1DBBandedTableView1cost_contract_id.DataBinding.Field.AsInteger;
  contract_agent_id := cxGrid1DBBandedTableView1contract_id.DataBinding.Field.AsInteger;
  str_fact_repair_table_id := cx_GetSelectedValues(cxGrid1, 'fact_repair_table_id');
  if str_fact_repair_table_id = '' then exit;

  Q := TADOQuery.Create(nil);
  Q.Connection := ADOVagonRepair;
  Q.SQL.Add('SELECT DISTINCT cost_contract_id FROM view_fact_repair_table WHERE fact_repair_table_id in (' + str_fact_repair_table_id + ')');
  Q.Open;

  if Q.RecordCount > 1 then begin
    Application.MessageBox('Выбраны строки с разными контрагентами!','Ошибка',MB_OK);
    exit;
  end;

  retActSettings := SaveActsBegin(ADOVagonRepair, Fusr_pwd, '-9', cod_shablon, 1, 0, cost_contract_id, contract_agent_id);
  if retActSettings[0] = -9 then
    exit;

  // --- данные контракта подрядчика -----
  Q.Close;
  Q.SQL.Clear;
  Q.SQL.Add('SELECT contract_cod, date_begin, firm_customer_name_full ');
  Q.SQL.Add('FROM view_contract WHERE contract_id = ' + IntToStr(cost_contract_id));
  Q.Open;

  cost_contract_cod  := Q.FieldByName('contract_cod').AsString;
  cost_contract_date := Q.FieldByName('date_begin').AsDateTime;
  cost_firm_name     := Q.FieldByName('firm_customer_name_full').AsString;
  firm_self_name_short := VarToStr(retActSettings[12][1]);

  exApp := CreateOleObject('Excel.Application');
  exApp.Workbooks.Add(GetDocBlob(ADOVagonRepair, 133, 9, True)); // 'Отчет_перевыставление_расходов.xls'
  exWks := exApp.ActiveWorkbook.WorkSheets[1];

  exWks.Range['O4'].Value := retActSettings[3][0];
  exWks.Range['B7'].Value := '  Настоящий отчет составлен на предмет того, что ' + firm_self_name_short + ' согласно договору  ' + cost_contract_cod + ' от ' + DateToStr(cost_contract_date) +  'г., произвело следующие расходы в пользу компании '  + cost_firm_name + ' за период с '+ DateToStr(retActSettings[3][1]) +' по ' + DateToStr(retActSettings[3][2]) + ' согласно нижеприведенного реестра: ';
  exWks.Range['C33'].Value := cost_firm_name;

  exWks.Range['C28'].Value := firm_self_name_short;
  exWks.Range['C20'].Value := 'при предоставлении ' + firm_self_name_short + ' оправдательных документов ';

  // Подписанты
  if retActSettings[13][2] = False then
    exWks.Rows['29:29'].ClearContents
  else begin
    exWks.Range['B29'].Value := retActSettings[14][1];
    exWks.Range['I29'].Value := retActSettings[13][1];
  end;
//  if retActSettings[13][5] = False then
//    exWks.Rows['37:37'].ClearContents
//  else
//    exWks.Range['I37'].Value := retActSettings[13][4];
  if retActSettings[13][8] = False then
    exWks.Rows['35:35'].ClearContents
  else begin
    exWks.Range['B35'].Value := retActSettings[14][7];
    exWks.Range['I35'].Value := retActSettings[13][7];
  end;
//  if retActSettings[13][11] = False then
//    exWks.Rows['37:37'].ClearContents
//  else
//    exWks.Range['I37'].Value := retActSettings[13][10];

  row_0 := 13;

  Q.Close;
  Q.SQL.Clear;
  Q.SQL.Add('SELECT * FROM view_fact_repair_table WHERE fact_repair_table_id in (' + str_fact_repair_table_id + ')');
  Q.Open;

  while not Q.EOF do begin
    exWks.Range['B' + IntToStr(row_0)].Value := Q.RecNo;
    if not Q.FieldByName('service_sf_name').IsNull then
     exWks.Range['C' + IntToStr(row_0)].Value := Q.FieldByName('service_name').AsString + ' (' + Trim(Q.FieldByName('service_sf_name').AsString) + ')'
    else
     exWks.Range['C' + IntToStr(row_0)].Value := Q.FieldByName('service_name').AsString;
    //exWks.Range['C' + IntToStr(row_0)].Value := Q.FieldByName('service_name').Value;

    exWks.Range['D' + IntToStr(row_0)].Value := Q.FieldByName('num_vagon').Value;
    exWks.Range['E' + IntToStr(row_0)].Value := 'руб.';
    exWks.Range['F' + IntToStr(row_0)].Value := Q.FieldByName('rate').Value;
    exWks.Range['G' + IntToStr(row_0)].Value := Q.FieldByName('sum').Value;
    exWks.Range['H' + IntToStr(row_0)].Value := Q.FieldByName('sum_nds').Value;
    exWks.Range['I' + IntToStr(row_0)].Value := Q.FieldByName('sum_total').Value;
    exWks.Range['J' + IntToStr(row_0)].Value := Q.FieldByName('firm_customer_name_short').AsString;
    exWks.Range['K' + IntToStr(row_0)].Value := Q.FieldByName('contract_cod').AsString;
    exWks.Range['L' + IntToStr(row_0)].Value := 'Акт';
    exWks.Range['M' + IntToStr(row_0)].Value := Q.FieldByName('act_cod').AsString;
    exWks.Range['N' + IntToStr(row_0)].Value := Q.FieldByName('act_date').Value;
    exWks.Range['O' + IntToStr(row_0)].Value := Q.FieldByName('score_cod').AsString;
    exWks.Range['P' + IntToStr(row_0)].Value := Q.FieldByName('score_date').Value;
    Q.Next;

    if not Q.Eof then begin
      xCopyRow(exApp,row_0 + 1,row_0 +1);
      inc(row_0);
    end;
  end;

  exApp.Rows[IntToStr(row_0 + 1) + ':' + IntToStr(row_0 + 1)].Select;
  exApp.Selection.Delete;

  exWks.Range['A1'].Select;


  exWks.Range['B' + IntToStr(row_0 + 4)].Value := GetSumScript_RUS(FloatToStr(exWks.Range['I' + IntToStr(row_0 + 1)].Value), 3) + ', в т.ч. НДС ' + FloatToStr(exWks.Range['H' + IntToStr(row_0 + 1)].Value) + ' руб.' ;

  SaveActsEnd(ADOVagonRepair, exWks, retActSettings, str_fact_repair_table_id , exWks.Range['I' + IntToStr(row_0 + 1)].Value );
  acts_id := retActSettings[1][0];


  for i := 0 to cxGrid1DBBandedTableView1.Controller.SelectedRecordCount - 1 do
  begin
    Q.Close;
    Q.SQL.Clear;
    Q.SQL.Add(' UPDATE fact_repair_table ');
    Q.SQL.Add(' SET cost_acts_id = ' + IntToStr(acts_id));
    Q.SQL.Add(' WHERE fact_repair_table_id = ' + IntToStr(cxGrid1DBBandedTableView1.Controller.SelectedRows[i].Values[cxGrid1DBBandedTableView1fact_repair_table_id .Index]));
    Q.ExecSQL;
  end;

  RefreshQueryGrid(cxGrid1DBBandedTableView1, 'fact_repair_table_id', cxGrid1DBBandedTableView1fact_repair_table_id.DataBinding.Field.AsInteger );

  Screen.Cursor := crDefault;
  ShowTextMessage('', True);
//  exApp.Visible := True;
  VarClear(exWks); VarClear(exWkb); VarClear(exApp);
end;

procedure TfmVagonRepair.dxBarButton26Click(Sender: TObject);
var exWks, exApp         : Variant;
i, Blok_start,row_insert : integer;
                     SP  : TADOStoredProc;
                BarCode  : TmyBarCode;
          date1,date2    : TDateTime;
     firm_customer_name  : string;
begin
  Screen.Cursor := crHourglass;
  date1 := Date;
  fmPeriod := TfmPeriod.Create(Application, date1, date1,1);
  if fmPeriod.ShowModal=mrOK then begin
    date1 := fmPeriod._GetDateBegin;
    date2 := fmPeriod._GetDateEnd;
  end else exit;

  ShowTextMessage('Запуск Excel...', False);
  exApp := CreateOleObject('Excel.Application');
  exApp.Workbooks.Add(GetDocBlob(ADOVagonRepair, 134, 9, True)); // 'Справка о затратах на ремонт'
  exWks := exApp.ActiveWorkbook.WorkSheets[1];
 // exApp.Visible := True;

  exWks.Range['C4'].Value  := DateToStr(date1) +' - ' + DateToStr(date2);

  SP := TADOStoredProc.Create(nil);
  SP.Connection := ADOVagonRepair;
  SP.ProcedureName := 'sp_fact_repair_cost_note';
  SP.Parameters.Refresh;
  SP.Parameters.ParamByName('@date1').Value := date1;
  SP.Parameters.ParamByName('@date2').Value := date2;
  SP.Open;

  Blok_start := 7;
  row_insert := 0;

  firm_customer_name := SP.FieldByName('firm_customer_name_short').Value;
  while not SP.EOF do begin
    if  SP.RecNo = 1 then begin
      exWks.Range['B'+IntToStr(Blok_start + row_insert)].Value := firm_customer_name;
      inc(row_insert);
    end;

    if  SP.FieldByName('firm_customer_name_short').Value <> firm_customer_name then begin
       exApp.Rows[IntToStr(Blok_start +row_insert) + ':' + IntToStr(Blok_start+row_insert+1)].Select;
       exApp.Selection.Delete;

       exApp.Rows[IntToStr(Blok_start + row_insert) + ':' + IntToStr(Blok_start + row_insert + 2)].Select;
       exApp.Selection.Copy;
       exApp.Rows[IntToStr(Blok_start + row_insert) + ':' + IntToStr(Blok_start + row_insert + 2)].Select;
       exApp.Selection.Insert(-4121);
       exApp.CutCopyMode := False;
       exApp.Range['A1'].Select;

       firm_customer_name := SP.FieldByName('firm_customer_name_short').Value;
       exWks.Range['B'+IntToStr(Blok_start + row_insert)].Value := firm_customer_name;
       Blok_start := Blok_start + row_insert+1;
       row_insert := 0;
    end;

    exWks.Range['B'+IntToStr(Blok_start + row_insert)].Value := SP.FieldByName('service_name').AsString;
    exWks.Range['C'+IntToStr(Blok_start + row_insert)].Value := SP.FieldByName('quantity').Value;
    exWks.Range['D'+IntToStr(Blok_start + row_insert)].Value := SP.FieldByName('sum_nds').Value;
    exWks.Range['E'+IntToStr(Blok_start + row_insert)].Value := SP.FieldByName('sum').Value;
    exWks.Range['F'+IntToStr(Blok_start + row_insert)].Value := SP.FieldByName('sum_total').Value;

    exWks.Range['G'+IntToStr(Blok_start + row_insert)].Value := SP.FieldByName('cost_quantity').Value;
    exWks.Range['H'+IntToStr(Blok_start + row_insert)].Value := SP.FieldByName('cost_sum_nds').Value;
    exWks.Range['I'+IntToStr(Blok_start + row_insert)].Value := SP.FieldByName('cost_sum').Value;
    exWks.Range['J'+IntToStr(Blok_start + row_insert)].Value := SP.FieldByName('cost_sum_total').Value;
    exWks.Range['K'+IntToStr(Blok_start + row_insert)].Value := SP.FieldByName('cost_firm_customer_name_short').AsString;

    exWks.Range['L'+IntToStr(Blok_start + row_insert)].Value := SP.FieldByName('free_quantity').Value;
    exWks.Range['M'+IntToStr(Blok_start + row_insert)].Value := SP.FieldByName('free_sum_nds').Value;
    exWks.Range['N'+IntToStr(Blok_start + row_insert)].Value := SP.FieldByName('free_sum').Value;
    exWks.Range['O'+IntToStr(Blok_start + row_insert)].Value := SP.FieldByName('free_sum_total').Value;

    SP.Next;
    inc(row_insert);
    if not SP.Eof then begin
      xCopyRow(exApp,Blok_start + row_insert,Blok_start + row_insert);
    end;
  end;
  exApp.Rows[IntToStr(Blok_start + row_insert) + ':' + IntToStr(Blok_start + row_insert+3)].Select;
  exApp.Selection.Delete;

  exApp.Visible := True;
  exApp.Range['A1'].Select;
  VarClear(exWks); VarClear(exApp);
  SP.Free;
  ShowTextMessage('', True);
  Screen.Cursor := crDefault;
end;

procedure TfmVagonRepair.dxBarButton28Click(Sender: TObject);
var exWks, exApp        : Variant;
  i, row_0, service_cod : integer;
                     SP : TADOStoredProc;
                BarCode : TmyBarCode;
         date1, date2   : TDateTime;
         RS             : _Recordset;
begin
  fmPeriod := TfmPeriod.Create(Application, StartOfTheMonth(Fdate1), EndOfTheMonth(Fdate1),1);
  if fmPeriod.ShowModal=mrOK then begin
    date1 := fmPeriod._GetDateBegin;
    date2 := fmPeriod._GetDateEnd;
  end else exit;

  SP := TADOStoredProc.Create(nil);
  SP.Connection := ADOVagonRepair;
  SP.ProcedureName := 'sp_fact_repair_depo_act_revise';
  SP.Parameters.Refresh;
  SP.Parameters.ParamByName('@date1').Value := date1;
  SP.Parameters.ParamByName('@date2').Value := date2;
  SP.Parameters.ParamByName('@contract_id').Value    := cxGrid2DBBandedTableView1contract_id.DataBinding.Field.AsInteger;

  SP.Open;
  Screen.Cursor := crHourglass;

  ShowTextMessage('Запуск Excel...', False);
  exApp := CreateOleObject('Excel.Application');
  exApp.Workbooks.Add(GetDocBlob(ADOVagonRepair, 138, 9, True)); // 'Акт сверки взаиморасчетов депо'
  exWks := exApp.ActiveWorkbook.WorkSheets[1];


  exWks.Range['B2'].Value  := 'между ' + SP.FieldByName('firm_self_name_short').AsString + ' и ' + SP.FieldByName('firm_customer_name_short').AsString;
  exWks.Range['B3'].Value  :=  'Договор № ' + SP.FieldByName('contract_cod').AsString + ' от ' + SP.FieldByName('contract_date_begin').AsString + ' г.';
  exWks.Range['H5'].Value  := DateToStr(date2) + 'г.';
  exWks.Range['B6'].Value  := SP.FieldByName('firm_self_name_short').AsString + ', именуемое в дальнейшем "ЗАКАЗЧИК", в лице Управляющего директора Решетнёвой Н.А., действующего на основании Доверенности ' + SP.FieldByName('base_self').AsString + ', с одной стороны, и ' + SP.FieldByName('firm_customer_name_short').AsString + ', в лице _______________________________, действующего на основании_______, именуемое в дальнейшем "ПОДРЯДЧИК", с другой стороны, составили настоящий Акт сверки расчетов за период с ' + DateToStr(date1) + 'г. по ' + DateToStr(date2) + 'г.';
  exWks.Range['E11'].Value  := 'По данным ' + SP.FieldByName('firm_self_name_short').AsString;
  exWks.Range['G11'].Value  := 'По данным ' + SP.FieldByName('firm_customer_name_short').AsString;


  //exWks.Range['F9'].Value  := SP.FieldByName('sum_balance_begin').Value;
  row_0 := 14;

  while not SP.EOF do begin
    exWks.Range['B' + IntToStr(row_0)].Value := SP.FieldByName('doc_name').AsString;
    exWks.Range['C' + IntToStr(row_0)].Value := SP.FieldByName('doc_cod').AsString;
    exWks.Range['D' + IntToStr(row_0)].Value := SP.FieldByName('doc_date').AsString;
    exWks.Range['E' + IntToStr(row_0)].Value := SP.FieldByName('sum_debet').AsString;
    exWks.Range['F' + IntToStr(row_0)].Value := SP.FieldByName('sum_kredit').AsString;
    SP.Next;
    if not SP.Eof then begin
      xCopyRow(exApp,row_0 + 1,row_0 +1);
      inc(row_0);
    end;
  end;

  exApp.Rows[IntToStr(row_0 + 1) + ':' + IntToStr(row_0 + 1)].Select;
  exApp.Selection.Delete;

  exWks.Range['E' + IntToStr(row_0 + 2)].Value := SP.FieldByName('sum_nds_debet').AsString;
  exWks.Range['F' + IntToStr(row_0 + 2)].Value := SP.FieldByName('sum_nds_kredit').AsString;

  exWks.Range['B' + IntToStr(row_0 + 8)].Value := SP.FieldByName('firm_self_name_short').AsString;
  exWks.Range['F' + IntToStr(row_0 + 8)].Value := SP.FieldByName('firm_customer_name_short').AsString;

  exWks.Range['C' + IntToStr(row_0 + 10)].Value := SP.FieldByName('director_name_self').AsString;
  exWks.Range['C' + IntToStr(row_0 + 12)].Value := SP.FieldByName('account_name_self').AsString;

  i := 2;
  RS := SP.NextRecordset(i);
  if RS.Fields['sum_balance_begin'].Value < 0 then
    exWks.Range['B8'].Value  := '1. По Договору № ' + SP.FieldByName('contract_cod').AsString + ' от ' + SP.FieldByName('contract_date_begin').AsString + ' г., задолженность "ЗАКАЗЧИКА" перед "ПОДРЯДЧИКОМ" в части оказанных услуг по состоянию на ' + DateToStr(date1) + ' г. составляет:'
  else exWks.Range['B8'].Value  := '1. По Договору № ' + SP.FieldByName('contract_cod').AsString + ' от ' + SP.FieldByName('contract_date_begin').AsString + ' г., задолженность "ПОДРЯДЧИКА" перед "ЗАКАЗЧИКОМ" в части оказанных услуг по состоянию на ' + DateToStr(date1) + ' г. составляет:';
    exWks.Range['F9'].Value  := Abs(RS.Fields['sum_balance_begin'].Value);

  if (RS.Fields['sum_balance_begin'].Value + SP.FieldByName('sum_nds_debet').AsFloat - SP.FieldByName('sum_nds_kredit').AsFloat) < 0 then
    exWks.Range['B' + IntToStr(row_0 + 4)].Value := '2. По Договору № ' + SP.FieldByName('contract_cod').AsString + ' от ' + SP.FieldByName('contract_date_begin').AsString + ' г., задолженность "ЗАКАЗЧИКА" перед "ПОДРЯДЧИКОМ" в части оказанных услуг по состоянию на ' + DateToStr(date2) + ' г. составляет:'
  else
    exWks.Range['B' + IntToStr(row_0 + 4)].Value := '2. По Договору № ' + SP.FieldByName('contract_cod').AsString + ' от ' + SP.FieldByName('contract_date_begin').AsString + ' г., задолженность "ПОДРЯДЧИКА" перед "ЗАКАЗЧИКОМ" в части оказанных услуг по состоянию на ' + DateToStr(date2) + ' г. составляет:';

  exWks.Range['F' + IntToStr(row_0 + 5)].Value := Abs(RS.Fields['sum_balance_begin'].Value + SP.FieldByName('sum_nds_debet').AsFloat - SP.FieldByName('sum_nds_kredit').AsFloat);
  // Добавляем в CA ШК
  BarCode.object_id := 138; // Ремонт вагонов
  BarCode.date      := DATE;
  BarCode.user_id   := Fusr_pwd.users_id;
  BarCode.global_id := VagonRepair.FieldByName('fact_repair_id').AsInteger;
  PrintBarCode2of5(BarCode, exWks, NULL,ADOVagonRepair);

  exApp.Visible := True;
  exApp.Range['A1'].Select;
  VarClear(exWks); VarClear(exApp);
  SP.Free;
  ShowTextMessage('', True);
  Screen.Cursor := crDefault;
end;

//создать перевозку
procedure TfmVagonRepair.dxBarButton29Click(Sender: TObject);
var       SP : TADOStoredProc;
           Q : TADOQuery;
 contract_id : integer;
           i : integer;
 bargain_date_period : TDateTime;
begin
  if Application.MessageBox('Создать перевозки по выделенным записям?','Внимание!', MB_YESNO+MB_ICONWARNING) = ID_YES then begin

    fmPeriod := TfmPeriod.Create(Application, Fdate1, Fdate1, 3);
    if fmPeriod.ShowModal = mrOk then begin
      bargain_date_period := IncDay(fmPeriod._GetMonth, 14);
    end;

    for i := 0 to cxGrid2DBBandedTableView1.Controller.SelectedRowCount - 1 do begin
      Screen.Cursor := crHourglass;
      //Выбор контрагента
      contract_id := -9;
      Q := TADOQuery.Create(Self);
      Q.Connection := ADOVagonRepair;
      Q.SQL.Add('SELECT contract_id, firm_customer_name, firm_self_name, contract_cod, currency_id, note');
      Q.SQL.Add(' , type_contract_name = CASE type_contract WHEN 0 THEN ''Клиент'' WHEN 1 THEN ''Агент'' WHEN 2 THEN ''Администрация'' ELSE ''---'' END');
      Q.SQL.Add('FROM view_contract_rights');
//      Q.SQL.Add('WHERE contract_id in (SELECT cost_contract_id FROM fact_repair_table WHERE fact_repair_id = ' + VarToStr(cxGrid2DBBandedTableView1.Controller.SelectedRows[i].Values[cxGrid2DBBandedTableView1fact_repair_id.Index])+')');
      Q.SQL.Add(' ORDER BY firm_customer_name, type_contract, contract_cod');
      Q.Open;

      fmFilter := TfmFilter.Create(0, Q, 'contract_id', 'contract_cod', 'firm_customer_name');
      fmFilter._SetContract4ScoreInvoice := True;
      fmFilter._SelectIndexColumn := 1;
      if fmFilter.ShowModal = mrOk then begin
       contract_id :=  fmFilter.GetId
      end else begin
       Q.Free;
       Screen.Cursor := crDefault;
       exit;
      end;
      Q.Free;

      if contract_id = -9 then exit;
      SP := TADOStoredProc.Create(nil);
      SP.Connection := fmVagonRepair.ADOVagonRepair;
      SP.ProcedureName := 'sp_bargain_insert_from_repair;1';
      SP.Parameters.Refresh;

      SP.Parameters.ParamByName('@fact_repair_id'     ).Value   :=  VarToStr(cxGrid2DBBandedTableView1.Controller.SelectedRows[i].Values[cxGrid2DBBandedTableView1fact_repair_id.Index]);
      SP.Parameters.ParamByName('@p_bargain_id'       ).Value   :=  -9;
      SP.Parameters.ParamByName('@client_contract_id' ).Value   :=  contract_id;
      SP.Parameters.ParamByName('@bargain_date_period').Value   :=  bargain_date_period;

      try
        SP.ExecProc;
        Application.MessageBox(PWideChar('Создана перевозка № записи ' + VarToStr(SP.Parameters.ParamByName('@p_bargain_id').Value)) ,'Внимание', MB_OK);
      except
        on E: Exception do begin
        Application.MessageBox(PChar(E.Message),'Внимание', MB_OK);
        Screen.Cursor := crDefault;
        end;
      end;
    end;
    RefreshQueryGrid(cxGrid2DBBandedTableView1, 'fact_repair_id',SP.Parameters.ParamByName('@fact_repair_id').Value);
    SP.Free;
  end;

  Screen.Cursor := crDefault;
end;

procedure TfmVagonRepair.dxBarButton31Click(Sender: TObject);
var
                      SP : TADOStoredProc;
str_fact_repair_table_id : string;
                       Q : TADOQuery;
             contract_id : integer;
          set_one_to_one : integer;
                        i: integer;
     bargain_date_period : TDateTime;
begin

  str_fact_repair_table_id := cx_GetSelectedValues(cxGrid1, 'fact_repair_table_id');
  if str_fact_repair_table_id = '' then exit;

  fmPeriod := TfmPeriod.Create(Application, Fdate1, Fdate1, 3);
  if fmPeriod.ShowModal = mrOk then begin
    bargain_date_period := IncDay(fmPeriod._GetMonth, 14);
  end;

  set_one_to_one := 0;
  if TdxBar(TdxBarItemLink(TdxBarButton(Sender).ClickItemLink).Owner.Owner).Tag = 99 Then begin
    set_one_to_one := 1;
  end;

  //Выбор контрагента
  contract_id := -9;
  Q := TADOQuery.Create(Self);
  Q.Connection := ADOVagonRepair;

  if TComponent(Sender).Tag <> 5 then begin
   Q.SQL.Add('SELECT contract_id, firm_customer_name, firm_self_name, contract_cod, currency_id, note');
   Q.SQL.Add(' , type_contract_name = CASE type_contract WHEN 0 THEN ''Клиент'' WHEN 1 THEN ''Агент'' WHEN 2 THEN ''Администрация'' ELSE ''---'' END');
   Q.SQL.Add('FROM view_contract_rights');
//   Q.SQL.Add('WHERE contract_id in (SELECT cost_contract_id FROM fact_repair_table WHERE fact_repair_table_id in ('+str_fact_repair_table_id+'))');
   Q.SQL.Add('ORDER BY firm_customer_name, type_contract, contract_cod');
  end;

  //Реализация ЛОМ
  if TComponent(Sender).Tag = 5 then begin
   Q.SQL.Add('SELECT contract_id, firm_customer_name, firm_self_name, contract_cod, currency_id, note');
   Q.SQL.Add(' , type_contract_name = CASE type_contract WHEN 0 THEN ''Клиент'' WHEN 1 THEN ''Агент'' WHEN 2 THEN ''Администрация'' ELSE ''---'' END');
   Q.SQL.Add('FROM view_contract_rights');
 //  Q.SQL.Add('WHERE type_contract = 0 AND contract_id in (SELECT contract_id FROM view_fact_repair_table WHERE fact_repair_table_id in ('+str_fact_repair_table_id+'))');
   Q.SQL.Add('ORDER BY firm_customer_name, type_contract, contract_cod');
  end;

  Q.Open;
  fmFilter := TfmFilter.Create(0, Q, 'contract_id', 'contract_cod', 'firm_customer_name');
  fmFilter._SetContract4ScoreInvoice := True;
  fmFilter._SelectIndexColumn := 1;
  if fmFilter.ShowModal = mrOk then begin
    contract_id :=  fmFilter.GetId
  end;
  Q.Free;

  if contract_id = -9 then exit;

  Screen.Cursor := crHourglass;
  if Application.MessageBox('Создать перевозку?','Внимание!', MB_YESNO+MB_ICONWARNING) = ID_YES then begin

    SP := TADOStoredProc.Create(nil);
    SP.Connection := fmVagonRepair.ADOVagonRepair;
    SP.ProcedureName := 'sp_bargain_insert_from_repair;1';
    SP.CommandTimeout := 600;

    if set_one_to_one = 0 then begin
      SP.Parameters.Refresh;
      SP.Parameters.ParamByName('@fact_repair_id'          ).Value   :=  -9;
      SP.Parameters.ParamByName('@p_bargain_id'            ).Value   :=  -9;
      SP.Parameters.ParamByName('@str_fact_repair_table_id').Value   :=  str_fact_repair_table_id;
      SP.Parameters.ParamByName('@type_action'             ).Value   :=  TComponent(Sender).Tag;
      SP.Parameters.ParamByName('@client_contract_id'      ).Value   :=  contract_id;
      SP.Parameters.ParamByName('@set_one_to_one'          ).Value   :=  0;
      SP.Parameters.ParamByName('@bargain_date_period').Value        :=  bargain_date_period;

      try
        SP.ExecProc;
        Application.MessageBox(PWideChar('Создана перевозка № записи ' + VarToStr(SP.Parameters.ParamByName('@p_bargain_id').Value)) ,'Внимание', MB_OK);
      except
        on E: Exception do begin
          Application.MessageBox(PChar(E.Message),'Внимание', MB_OK);
          Screen.Cursor := crDefault;
        end;
      end;
    end else begin
      for i := 0 to cxGrid1DBBandedTableView1.Controller.SelectedRecordCount - 1 do begin
        str_fact_repair_table_id := IntToStr(cxGrid1DBBandedTableView1.Controller.SelectedRows[i].Values[cxGrid1DBBandedTableView1fact_repair_table_id.Index]);
        SP.Parameters.Refresh;
        SP.Parameters.ParamByName('@fact_repair_id'          ).Value   :=  -9;
        SP.Parameters.ParamByName('@p_bargain_id'            ).Value   :=  -9;
        SP.Parameters.ParamByName('@str_fact_repair_table_id').Value   :=  str_fact_repair_table_id;
        SP.Parameters.ParamByName('@type_action'             ).Value   :=  TComponent(Sender).Tag;
        SP.Parameters.ParamByName('@client_contract_id'      ).Value   :=  contract_id;
        SP.Parameters.ParamByName('@set_one_to_one'          ).Value   :=  0;
        try
          SP.ExecProc;
          Application.MessageBox(PWideChar('Создана перевозка № записи ' + VarToStr(SP.Parameters.ParamByName('@p_bargain_id').Value)) ,'Внимание', MB_OK);
          ShowTextMessage('Создана перевозка № записи ' + VarToStr(SP.Parameters.ParamByName('@p_bargain_id').Value), False);
        except
          on E: Exception do begin
            Application.MessageBox(PChar(E.Message),'Внимание', MB_OK);
            Screen.Cursor := crDefault;
          end;
        end;
      end;
    end;

    RefreshQueryGrid(cxGrid2DBBandedTableView1, 'fact_repair_id',SP.Parameters.ParamByName('@fact_repair_id').Value);
    SP.Free;
  end;
  Screen.Cursor := crDefault;
end;

procedure TfmVagonRepair.dxBarButton91Click(Sender: TObject);
var                i : integer;
             comment : string;
                Q,Q1 : TADOQuery;
str_cost_contract_id : string;
begin
  Q := TADOQuery.Create(nil);
  Q.Connection := ADOVagonRepair;
  Q1 := TADOQuery.Create(nil);
  Q1.Connection := ADOVagonRepair;
  Screen.Cursor := crHourglass;
  for i := 0 to cxGrid1DBBandedTableView1.Controller.SelectedRecordCount - 1 do begin
   Q1.Close;
   Q1.SQL.Clear;
   Q1.SQL.Add('SELECT dbo.func_GetVagonRepairCostContract(:vagon_id, :date_begin) as cost_contract_id');
   Q1.Parameters.ParamByName('vagon_id').Value   := cxGrid1DBBandedTableView1.Controller.SelectedRows[i].Values[cxGrid1DBBandedTableView1vagon_id.Index];
   Q1.Parameters.ParamByName('date_begin').Value := cxGrid1DBBandedTableView1.Controller.SelectedRows[i].Values[cxGrid1DBBandedTableView1date_vu36.Index];
   Q1.Open;
   if not Q1.FieldByName('cost_contract_id').IsNull then begin
     str_cost_contract_id := Q1.FieldByName('cost_contract_id').AsString;
     Q.Close;
     Q.SQL.Clear;
     Q.SQL.Add('UPDATE fact_repair_table SET cost_contract_id = ' + QuotedStr(str_cost_contract_id)  + ' WHERE fact_repair_table_id = ' + IntToStr(cxGrid1DBBandedTableView1.Controller.SelectedRows[i].Values[cxGrid1DBBandedTableView1fact_repair_table_id.Index])) ;
     Q.ExecSQL;
   end;
     ShowTextMessage('Осталось '+IntToStr(cxGrid1DBBandedTableView1.Controller.SelectedRowCount - i)+' строк...', False);
  end;
  ShowTextMessage;
  RefreshQueryGrid(cxGrid1DBBandedTableView1, 'fact_repair_table_id', cxGrid1DBBandedTableView1fact_repair_table_id.DataBinding.Field.AsInteger );
  Screen.Cursor := crDefault;
end;

procedure TfmVagonRepair.dxBarButton92Click(Sender: TObject);
var str_bargain_id : string;
begin
  str_bargain_id := cx_GetSelectedValues(cxGrid1, 'repair_table_bargain_id');
  if str_bargain_id <> '' then begin
    fmAgree2 := TfmAgree2.CreateDLL(Application, True, Fusr_pwd);
    fmAgree2._LocateStrBargainID := str_bargain_id;
    fmAgree2.ShowModal;
  end;
end;

procedure TfmVagonRepair.dxBarButton93Click(Sender: TObject);
begin
  cxPageControl1.ActivePage := cxTabSheet3;
  FiltercxGrid4ListID(cxGrid1DBBandedTableView1, 'fact_repair_id', cxGrid2DBBandedTableView1fact_repair_id.DataBinding.Field.AsString);
end;

procedure TfmVagonRepair.dxBarButton94Click(Sender: TObject);
var  SP : TADOStoredProc;
begin
  if Query_Acts.Eof then
    exit;

  if (Application.MessageBox(PChar('Удалить акт № ' + cxGrid3DBBandedTableView1acts_cod.DataBinding.Field.AsString + ' ?'), 'Акты', MB_YESNO or MB_ICONQUESTION) = mrNo) then
    exit;

  Screen.Cursor := crHourglass;

  SP := TADOStoredProc.Create(nil);
  SP.Connection := ADOVagonRepair;
  SP.ProcedureName := 'sp_acts_modify';
  SP.Parameters.Refresh;

  SP.Parameters.ParamByName('@type_action').Value := 2;
  SP.Parameters.ParamByName('@acts_id').Value     := cxGrid3DBBandedTableView1acts_id.DataBinding.Field.Value;
  SP.ExecProc;

  SP.Free;
  Screen.Cursor := crDefault;

  RefreshQueryGrid(cxGrid3DBBandedTableView1, 'acts_id');
end;

procedure TfmVagonRepair.dxBarButton9Click(Sender: TObject);
var SP : TADOStoredProc;
begin
  Screen.Cursor := crHourglass;
  if Application.MessageBox('Копировать карточку ремонта?.','Внимание!', MB_YESNO+MB_ICONWARNING) = ID_YES then begin
    SP := TADOStoredProc.Create(nil);
    SP.Connection := fmVagonRepair.ADOVagonRepair;
    SP.ProcedureName := 'sp_fact_repair_modify;1';
    SP.Parameters.Refresh;

    SP.Parameters.ParamByName('@fact_repair_id'     ).Value   :=  cxGrid2DBBandedTableView1fact_repair_id.DataBinding.Field.AsInteger;
    SP.Parameters.ParamByName('@type_action'        ).Value   :=  3;
    SP.ExecProc;

    RefreshQueryGrid(cxGrid2DBBandedTableView1, 'fact_repair_id', SP.Parameters.ParamByName('@fact_repair_id').Value);
    SP.Free;
  end;
  Screen.Cursor := crDefault;
end;

procedure TfmVagonRepair.dxBarButton37Click(Sender: TObject);
var                i : integer;
       service_sf_id : integer;
                   Q : TADOQuery;
str_cost_contract_id : string;
begin
  fmDict := TfmDict.Create(Application, True, Fusr_pwd);
  service_sf_id := -9;
  if fmDict.ShowModal=mrOk then
    service_sf_id := fmDict._GetInfObjId
  else
    Exit;

  Q := TADOQuery.Create(nil);
  Q.Connection := ADOVagonRepair;

  if  service_sf_id <> -9 then begin
    Screen.Cursor := crHourglass;
    for i := 0 to cxGrid1DBBandedTableView1.Controller.SelectedRecordCount - 1 do begin
      Q.SQL.Clear;
      Q.SQL.Add('UPDATE fact_repair_table SET service_sf_id = ' + QuotedStr(IntToStr(service_sf_id))  + ' WHERE fact_repair_table_id = ' + IntToStr(cxGrid1DBBandedTableView1.Controller.SelectedRows[i].Values[cxGrid1DBBandedTableView1fact_repair_table_id.Index])) ;
      Q.ExecSQL;
      ShowTextMessage('Осталось '+IntToStr(cxGrid1DBBandedTableView1.Controller.SelectedRowCount - i)+' строк...', False);
    end;
    ShowTextMessage;
    RefreshQueryGrid(cxGrid1DBBandedTableView1, 'fact_repair_table_id', cxGrid1DBBandedTableView1fact_repair_table_id.DataBinding.Field.AsInteger);
    Screen.Cursor := crDefault;
  end;
end;

procedure TfmVagonRepair.dxBarButton57Click(Sender: TObject);
var i : integer;
    Q : TADOQuery;
begin
  Q := TADOQuery.Create(nil);
  Q.Connection := ADOVagonRepair;

  Screen.Cursor := crHourglass;
  for i := 0 to cxGrid1DBBandedTableView1.Controller.SelectedRecordCount - 1 do begin
    Q.SQL.Clear;
    Q.SQL.Add('UPDATE fact_repair_table SET service_sf_id = NULL WHERE fact_repair_table_id = ' + IntToStr(cxGrid1DBBandedTableView1.Controller.SelectedRows[i].Values[cxGrid1DBBandedTableView1fact_repair_table_id.Index])) ;
    Q.ExecSQL;
    ShowTextMessage('Осталось '+IntToStr(cxGrid1DBBandedTableView1.Controller.SelectedRowCount - i)+' строк...', False);
  end;
  Q.Free;
  ShowTextMessage;
  RefreshQueryGrid(cxGrid1DBBandedTableView1, 'fact_repair_table_id', cxGrid1DBBandedTableView1fact_repair_table_id.DataBinding.Field.AsInteger);
end;

procedure TfmVagonRepair.dxBarButton58Click(Sender: TObject);
var i : integer;
    Q : TADOQuery;
begin
  Q := TADOQuery.Create(nil);
  Q.Connection := ADOVagonRepair;
  Screen.Cursor := crHourglass;
  for i := 0 to cxGrid1DBBandedTableView1.Controller.SelectedRecordCount - 1 do begin
    Q.SQL.Clear;
    Q.SQL.Add('UPDATE fact_repair_table SET detail_sf_id = NULL WHERE fact_repair_table_id = ' + IntToStr(cxGrid1DBBandedTableView1.Controller.SelectedRows[i].Values[cxGrid1DBBandedTableView1fact_repair_table_id.Index])) ;
    Q.ExecSQL;
    ShowTextMessage('Осталось '+IntToStr(cxGrid1DBBandedTableView1.Controller.SelectedRowCount - i)+' строк...', False);
  end;
  Q.Free;
  ShowTextMessage;
  RefreshQueryGrid(cxGrid1DBBandedTableView1, 'fact_repair_table_id', cxGrid1DBBandedTableView1fact_repair_table_id.DataBinding.Field.AsInteger);
end;

procedure TfmVagonRepair.dxBarButton59Click(Sender: TObject);
begin
  if Query_Acts.RecordCount <= 0 then begin
    Application.MessageBox('Нет выделенных записей.', 'Внимание', MB_OK + MB_ICONWARNING);
    exit;
  end;

  GetActsView(cxGrid3DBBandedTableView1acts_id.DataBinding.Field.AsInteger, ADOVagonRepair, True, Self);
end;

procedure TfmVagonRepair.dxBarButton61Click(Sender: TObject);
var      Q : TADOQuery;
  ClientDS : TClientDataSet;
 users_group_cod : string;
  str_temp : string;
   num_rec : integer;

  function ActsValid: boolean;
  var contract_id : integer;
                i : integer;
  begin
    Result := True;
    contract_id := 0;
    with cxGrid3DBBandedTableView1 do begin
      BeginUpdate;
      with DataController do begin
        BeginLocate;

        for i := 0 to Controller.SelectedRecordCount - 1 do begin
          DataSource.DataSet.Locate(KeyFieldNames, GetRecordId(Controller.SelectedRecords[i].RecordIndex), []);

          if DataSource.DataSet.FieldByName('acts_type_cod').Value = -99 then begin
            Result := False;
            Application.MessageBox('Невозможен запуск в Документооборот.' + #10#13 +
                                   'В выбранных документах содержится "Счет-фактура".', 'Внимание!', MB_ICONSTOP + MB_OK);
            Break;
          end;

          if contract_id = 0 then
            contract_id := DataSource.DataSet.FieldByName('contract_id').AsInteger
          else
            if contract_id <> DataSource.DataSet.FieldByName('contract_id').AsInteger then begin
              Result := False;
              Application.MessageBox('Невозможен запуск в Документооборот.' + #10#13 +
                                     'У выбранных актов должен быть один договор.', 'Внимание!', MB_ICONSTOP + MB_OK);
              Break;
            end;

          if not DataSource.DataSet.FieldByName('docs_id').IsNull then begin
            Result := False;
            Application.MessageBox('Невозможен запуск в Документооборот.' + #10#13 +
                                   'В выбранных документах содержится уже запущенные акты.', 'Внимание!', MB_ICONSTOP + MB_OK);
            Break;
          end;
        end;

        EndLocate;
      end;
      EndUpdate;
    end;
  end;

begin

  if ActsValid then begin
    Q := TADOQuery.Create(nil);
    Q.Connection := ADOVagonRepair;
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
    Q.SQL.Add('SELECT * FROM view_contract WHERE contract_id = ' + cxGrid3DBBandedTableView1contract_id.DataBinding.Field.AsString);
    Q.Open;

    with cxGrid3DBBandedTableView1 do begin
      BeginUpdate;
      with DataController do begin
        BeginLocate;
        for num_rec := 0 to Controller.SelectedRecordCount - 1 do begin
          DataSource.DataSet.Locate(KeyFieldNames, GetRecordId(Controller.SelectedRecords[num_rec].RecordIndex), []);

          ClientDS.Append;
          ClientDS.FieldByName('doc_type_cod'      ).Value := '20'; // Акт
          ClientDS.FieldByName('database_cod'      ).Value := '0';  // База Lis
          ClientDS.FieldByName('users_group_cod'   ).Value := users_group_cod;
          ClientDS.FieldByName('contract_id'       ).Value := Q.FieldByName('contract_id').Value;
          ClientDS.FieldByName('contract_cod'      ).Value := Q.FieldByName('contract_cod').AsString;
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
          ClientDS.FieldByName('act_cod'           ).Value := cxGrid3DBBandedTableView1acts_cod.DataBinding.Field.AsString;
          ClientDS.FieldByName('act_date'          ).Value := cxGrid1DBBandedTableView1acts_date.DataBinding.Field.Value;
          ClientDS.FieldByName('docs_id'           ).Value := null;
          ClientDS.FieldByName('set_invoice_score' ).Value := null;
          ClientDS.FieldByName('acts_id'           ).Value := cxGrid3DBBandedTableView1acts_id.DataBinding.Field.Value;
          ClientDS.FieldByName('comment'           ).Value := cxGrid3DBBandedTableView1acts_comment.DataBinding.Field.Value;
          ClientDS.FieldByName('bargain_id'        ).Value := NULL;
          ClientDS.FieldByName('invoice_id'        ).Value := cxGrid3DBBandedTableView1acts_id.DataBinding.Field.Value;
          ClientDS.Post;
        end;
        EndLocate;
      end;
      EndUpdate;
    end;

    if DocsRun(ClientDS, Fusr_pwd, users_group_cod) = mrOk then begin
      RefreshQueryGrid(cxGrid3DBBandedTableView1, cxGrid3DBBandedTableView1.DataController.KeyFieldNames);
    end;

    Q.Free;
    ClientDS.Free;
  end;
end;

procedure TfmVagonRepair.dxBarButton62Click(Sender: TObject);
var
  ClientDS : TClientDataSet;
  users_group_cod : string;
  Q : TADOQuery;
  str_temp : string;
  num_rec: integer;
begin

  if not cxGrid3DBBandedTableView1docs_id.DataBinding.Field.IsNull then begin
    Q := TADOQuery.Create(nil);
    Q.Connection := ADOVagonRepair;
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

    ClientDS.CreateDataSet;
    ClientDS.LogChanges := False;

    Q.SQL.Clear;
    Q.SQL.Add('SELECT * FROM view_contract WHERE contract_id = ' + cxGrid3DBBandedTableView1contract_id.DataBinding.Field.AsString);
    Q.Open;

    with cxGrid3DBBandedTableView1 do begin
      BeginUpdate;
      with DataController do begin
        BeginLocate;
        for num_rec := 0 to Controller.SelectedRecordCount - 1 do begin
          DataSource.DataSet.Locate(KeyFieldNames, GetRecordId(Controller.SelectedRecords[num_rec].RecordIndex), []);

          ClientDS.Append;
          ClientDS.FieldByName('doc_type_cod'      ).Value := '20'; // Акт
          ClientDS.FieldByName('database_cod'      ).Value := '0';  // База Lis
          ClientDS.FieldByName('users_group_cod'   ).Value := users_group_cod;
          ClientDS.FieldByName('contract_id'       ).Value := NULL;
          ClientDS.FieldByName('contract_cod'      ).Value := NULL;
          ClientDS.FieldByName('date_begin'        ).Value := NULL;
          ClientDS.FieldByName('type_contract'     ).Value := NULL;
          ClientDS.FieldByName('firm_self_id'      ).Value := NULL;
          ClientDS.FieldByName('firm_self_name'    ).Value := NULL;
          ClientDS.FieldByName('firm_customer_id'  ).Value := NULL;
          ClientDS.FieldByName('firm_customer_name').Value := NULL;
          ClientDS.FieldByName('currency_id'       ).Value := NULL;
          ClientDS.FieldByName('brief_name'        ).Value := NULL;
          ClientDS.FieldByName('curator_FIO_users' ).Value := NULL;
          ClientDS.FieldByName('note'              ).Value := NULL;
          ClientDS.FieldByName('docs_act_id'       ).Value := NULL;
          ClientDS.FieldByName('act_cod'           ).Value := NULL;
          ClientDS.FieldByName('act_date'          ).Value := NULL;
          ClientDS.FieldByName('docs_id'           ).Value := cxGrid3DBBandedTableView1docs_id.DataBinding.Field.Value;
          ClientDS.FieldByName('set_invoice_score' ).Value := NULL;
          ClientDS.FieldByName('acts_id'           ).Value := NULL;
          ClientDS.FieldByName('comment'           ).Value := NULL;
          ClientDS.FieldByName('bargain_id'        ).Value := NULL;
          ClientDS.FieldByName('invoice_id'        ).Value := NULL;
          ClientDS.Post;
        end;
        EndLocate;
      end;
      EndUpdate;
    end;

    if DocsView(ClientDS) = mrOk then begin
      RefreshQueryGrid(cxGrid3DBBandedTableView1, cxGrid3DBBandedTableView1.DataController.KeyFieldNames);
    end;

    Q.Free;
    ClientDS.Free;
  end;
end;

procedure TfmVagonRepair.dxBarButton64Click(Sender: TObject);
var     i : integer;
       SP : TADOStoredProc;
   comment: string;
begin

  if cxGrid2DBBandedTableView1set_block.DataBinding.Field.AsBoolean then begin
    Application.MessageBox('Невозможно обновить. Карточка заблокирована.', 'Внимание', MB_OK);
    exit;
  end;

  comment := InputBox('','Введите комментарий', '');
  if (comment = '') then begin
    Screen.Cursor := crDefault;
    Exit;
  end;

  Screen.Cursor := crHourglass;

  SP := TADOStoredProc.Create(nil);
  SP.Connection := ADOVagonRepair;
  SP.ProcedureName := 'sp_fact_repair_modify;1';
  SP.Parameters.Refresh;
  for i := 0 to cxGrid2DBBandedTableView1.Controller.SelectedRowCount - 1 do begin
    SP.Close;
    SP.Parameters.Refresh;
    SP.Parameters.ParamByName('@type_action').Value := 5;
    SP.Parameters.ParamByName('@fact_repair_id').Value := cxGrid2DBBandedTableView1.Controller.SelectedRows[i].Values[cxGrid2DBBandedTableView1fact_repair_id.Index];
    SP.Parameters.ParamByName('@comment').Value := iif(comment = '', NULL, comment);
    try
      SP.ExecProc;
    except on E: Exception do begin
      Application.MessageBox(PChar(E.Message),'ВНИМАНИЕ!!!' , MB_OKCANCEL + MB_ICONERROR);
      Screen.Cursor := crDefault;
    end;
    end;
    ShowTextMessage('Осталось ' + IntToStr(cxGrid2DBBandedTableView1.Controller.SelectedRowCount - i) + ' записей...', False);
  end;
  ShowTextMessage;

  RefreshQueryGrid(cxGrid2DBBandedTableView1, 'fact_repair_id');

  Screen.Cursor := crDefault;
end;

procedure TfmVagonRepair.dxBarButton38Click(Sender: TObject);
 var
  retActSettings           : Variant;
  exApp, exWkb, exWks      : Variant;
 // exAppR, exWkbR, exWksR   : Variant;
  Q,Q1                     : TADOQuery;
  monitor_report_id        : integer;
  row_0                    : integer;
  cod_shablon              : integer;
  cost_contract_id         : integer;
  cost_contract_cod        : string;
  cost_firm_name           : string;
  cost_contract_date       : TDate;
  str_fact_repair_table_id : string;
  acts_id                  : integer;
  contract_agent_id        : integer;
  str_self,str_customer,str_kg    :string;
  str_grotpr,str_grpol,str_self_sing,str_post,str_payer   :string;
  firm_self_id,firm_customer_id,rate,i : integer;
  width : Extended;
  act_sum, quantity,t,kg : Currency;
begin
  if cxPageControl1.ActivePageIndex <> 2 then begin
    Application.MessageBox('Отчёт формируется с закладки "Развёрнутая информация"', 'Внимание', MB_OK);
    Exit;
  end;

  cod_shablon := TComponent(Sender).Tag;
  quantity := 0;
  cost_contract_id  := cxGrid1DBBandedTableView1cost_contract_id.DataBinding.Field.AsInteger;
  contract_agent_id := cxGrid1DBBandedTableView1contract_id.DataBinding.Field.AsInteger;
  str_fact_repair_table_id := cx_GetSelectedValues(cxGrid1, 'fact_repair_table_id');
  if str_fact_repair_table_id = '' then exit;

  Q := TADOQuery.Create(nil);
  Q.Connection := ADOVagonRepair;
  Q.SQL.Add('SELECT DISTINCT contract_id FROM view_fact_repair_table WHERE fact_repair_table_id in (' + str_fact_repair_table_id + ')');
  Q.Open;

  if Q.RecordCount > 1 then begin
    Application.MessageBox('Выбраны строки с разными контрагентами!','Ошибка',MB_OK);
    exit;
  end;

  retActSettings := SaveActsBegin(ADOVagonRepair, Fusr_pwd, '-9', cod_shablon, 1, 0, contract_agent_id);
  if retActSettings[0] = -9 then
    exit;

  // --- данные контракта подрядчика -----
  Q.Close;
  Q.SQL.Clear;
  Q.SQL.Add('SELECT contract_cod, date_begin, firm_customer_name_full,firm_self,firm_customer,firm_customer,firm_customer_name_eng,grpol_name, payer_name ');
  Q.SQL.Add('FROM view_contract WHERE contract_id = ' + IntToStr(contract_agent_id));
  Q.Open;

  cost_contract_cod  := Q.FieldByName('contract_cod').AsString;
  cost_contract_date := Q.FieldByName('date_begin').AsDateTime;
  cost_firm_name     := Q.FieldByName('firm_customer_name_full').AsString;
  firm_self_id       := Q.FieldByName('firm_self').AsInteger;
  firm_self_id       := retActSettings[12][0];
  firm_customer_id   := Q.FieldByName('firm_customer').AsInteger;
  str_payer          := Q.FieldByName('payer_name').AsString;
  str_customer       := Q.FieldByName('firm_customer_name_eng').AsString;

  exApp := CreateOleObject('Excel.Application');
  exApp.Workbooks.Add(GetDocBlob(ADOVagonRepair, cod_shablon, 9, True)); // 'торг 12'
  exWks := exApp.ActiveWorkbook.WorkSheets[1];

  Q.Close;
  Q.SQL.Clear;
  Q.SQL.Add(' DECLARE @date datetime, @firm_id int ');
  Q.SQL.Add(' SELECT @date = :date ');
  Q.SQL.Add(' SELECT @firm_id = :firm_id ');
  Q.SQL.Add(' SELECT firm_name_full + '', ИНН '' + ISNULL(inn,'''') + '' КПП '' + ISNULL(kpp,'''')+ '',Адрес местонахождения:  ''+ ISNULL(fc.firm_contact_name,'''') + '', телефон: ''');
  Q.SQL.Add(' + ISNULL((SELECT TOP 1 firm_contact_telefon FROM view_firm_contact WHERE firm_id = f.firm_id  AND firm_contact_telefon is not NULL) ,'''') + '', ''+ ISNULL(fc1.firm_contact_name,'''') as firm_self');
  Q.SQL.Add(' , cod_okpo ');
  Q.SQL.Add(' FROM dbo.view_firm f ');
  Q.SQL.Add(' LEFT OUTER JOIN view_firm_contact fc ON fc.firm_id = f.firm_id AND fc.type_contact_cod =''11'' AND @date BETWEEN fc.date_begin AND ISNULL(fc.date_end,@date) ');
  Q.SQL.Add(' LEFT OUTER JOIN view_firm_contact fc1 ON fc1.firm_id = f.firm_id AND fc1.type_contact_cod =''01'' AND @date BETWEEN fc1.date_begin AND ISNULL(fc1.date_end,@date)  ');
  Q.SQL.Add(' WHERE f.firm_id = @firm_id ORDER BY fc1.date_begin desc ');

  Q.Close;
  Q.Parameters.ParamByName('firm_id').Value := firm_customer_id;
  Q.Parameters.ParamByName('date').Value := retActSettings[3][0];
  Q.Open;
  if Q.RecordCount > 0 then begin
    str_customer := Q.FieldByName('firm_self').AsString;
    exWks.Range['AN11'].Value := Q.FieldByName('cod_okpo').AsString;
  end;

  Q.Close;
  Q.Parameters.ParamByName('firm_id').Value := firm_self_id;
  Q.Parameters.ParamByName('date').Value := retActSettings[3][0];
  Q.Open;
  if Q.RecordCount > 0 then str_self := Q.FieldByName('firm_self').AsString;
  exWks.Range['AN4'].Value := Q.FieldByName('cod_okpo').AsString;
  exWks.Range['AN9'].Value := Q.FieldByName('cod_okpo').AsString;


  exWks.Range['L17'].Value := OleVariant(retActSettings[2]);
  exWks.Range['P17'].Value := OleVariant(retActSettings[3][0]);
//  if TComponent(Sender).Tag = 404 then
//   exWks.Range['AN11'].Value := Q.FieldByName('cod_okpo').AsString;



  str_self     := StringReplace(str_self, #10, ' ', [rfReplaceAll]);
  str_customer := StringReplace(str_customer, #10, ' ', [rfReplaceAll]);


  row_0 := 23;
  Q.Close;
  Q.SQL.Clear;
  Q.SQL.Add('SELECT * FROM view_fact_repair_table WHERE fact_repair_table_id in (' + str_fact_repair_table_id + ')');
  Q.Open;

  while not Q.EOF do begin
    exWks.Range['B' + IntToStr(row_0)].Value  := Q.RecNo;
    exWks.Range['X' + IntToStr(row_0)].Value  := Q.FieldByName('quantity').Value;
    exWks.Range['Z' + IntToStr(row_0)].Value  := Q.FieldByName('rate').Value;
    exWks.Range['AC' + IntToStr(row_0)].Value := Q.FieldByName('sum').Value;
    exWks.Range['AJ' + IntToStr(row_0)].Value := Q.FieldByName('sum_nds').Value;
    exWks.Range['AM' + IntToStr(row_0)].Value := Q.FieldByName('sum_total').Value;
    exWks.Range['AH' + IntToStr(row_0)].Value := Q.FieldByName('rate_nds_name').AsString;
    quantity := quantity + Q.FieldByName('quantity').AsFloat;

    case TComponent(Sender).Tag of
    306:begin
          exWks.Range['C' + IntToStr(row_0)].Value := OleVariant(Q.FieldByName('detail_name').AsString + iif(not Q.FieldByName('detail_num').IsNull,' № ' + Q.FieldByName('detail_num').AsString,''));
        end;
    404:begin
          exWks.Range['C' + IntToStr(row_0)].Value := OleVariant(Q.FieldByName('detail_name').AsString + iif(not Q.FieldByName('detail_num').IsNull,' № ' + Q.FieldByName('detail_num').AsString,''));
          exWks.Range['I' + IntToStr(row_0)].Value := OleVariant('т');
          exWks.Range['M' + IntToStr(row_0)].Value := OleVariant('168');

          if  Q.FieldByName('rate_nds_name').AsString = 'НДС исчисляется налоговым агентом' then begin
            exWks.Range['AJ' + IntToStr(row_0)].Value := OleVariant('-');
            exWks.Range['AM' + IntToStr(row_0)].Value := OleVariant('-');
          end;

        end;
    253:begin
          exWks.Range['C' + IntToStr(row_0)].Value := Q.FieldByName('detail_sf_name').AsString + ' № ' + Q.FieldByName('detail_num').AsString + ' с вагона № ' + Q.FieldByName('num_vagon').AsString;
        end;
    375:begin
          exWks.Range['C' + IntToStr(row_0)].Value := Q.FieldByName('detail_sf_name').AsString + ' № ' + Q.FieldByName('detail_num').AsString;
        end;
    308,309:begin
          exWks.Range['C' + IntToStr(row_0)].Value := Q.FieldByName('detail_name').AsString + ' № ' + Q.FieldByName('detail_num').AsString + ' с вагона № ' + Q.FieldByName('num_vagon').AsString;
        end;
    end;
    Q.Next;
    if not Q.Eof then begin
      xCopyRow(exApp,row_0 + 1,row_0 +1);
      inc(row_0);
    end;
  end;

  exApp.Rows[IntToStr(row_0 + 1) + ':' + IntToStr(row_0 + 1)].Select;
  exApp.Selection.Delete;

  str_post := str_self;

  case TComponent(Sender).Tag of
  253:begin
    str_grotpr :=  str_post;
    str_grpol  :=  VarToStr(Q.FieldByName('depo_name_eng').Value);
    str_payer  :=  str_payer;
  end;

  306,375:begin
     str_grotpr := VarToStr(Q.FieldByName('depo_name_eng').Value);
     str_grpol  := str_customer;
     str_payer  := str_customer;
  end;

  308:begin
     str_grotpr := VarToStr(Q.FieldByName('depo_name_eng').Value);
     str_grpol  := VarToStr(Q.FieldByName('depo_name_eng').Value);
     str_payer  := str_customer;
  end;

  309:begin
     str_grotpr := str_post;
     str_grpol  := str_customer;
     str_payer  := str_customer;
  end;

  404:begin
     exWks.Range['AN13'].Value := OleVariant(cost_contract_cod);
     exWks.Range['AN15'].Value := OleVariant(cost_contract_date);

     str_grotpr := VarToStr(Q.FieldByName('depo_name_eng').Value);
     str_grpol  := VarToStr(Q.FieldByName('depo_name_eng').Value);
     str_payer  := str_customer;
     if quantity > 0 then begin
      t := Int(quantity);
      kg :=Frac(quantity)*1000;
      if (t = 0) and (kg <> 0) then
       exWks.Range['S' + IntToStr(row_0 + 5)].Value := ReplaceStr(ReplaceStr(ReplaceStr(GetSumScript_RUS(CurrToStr(kg), 3),'рубля 00 коп.','килограммa'),'рублей 00 коп.','килограмм'),'рубль 00 коп.','килограмм');
      if (t <> 0) and (kg = 0) then
       exWks.Range['S' + IntToStr(row_0 + 5)].Value := ReplaceStr(ReplaceStr(ReplaceStr(ReplaceStr(ReplaceStr(GetSumScript_RUS(CurrToStr(t), 3),'рубля 00 коп.','тонны'),'рублей 00 коп.','тонн'),'рубль 00 коп.','тонна'),'Один','Одна'),'Два','Две');
      if (t <> 0) and (kg <> 0) then begin
       str_kg :=  ReplaceStr(ReplaceStr(ReplaceStr(GetSumScript_RUS(CurrToStr(kg), 3),'рубля 00 коп.','килограммa'),'рублей 00 коп.','килограмм'),'рубль 00 коп.','килограмм');
       str_kg[1] := AnsiLowerCase(str_kg[1])[1];
       exWks.Range['S' + IntToStr(row_0 + 5)].Value := ReplaceStr(ReplaceStr(ReplaceStr(ReplaceStr(ReplaceStr(GetSumScript_RUS(CurrToStr(t), 3),'рубля 00 коп.','тонны'),'рублей 00 коп.','тонн'),'рубль 00 коп.','тонна'),'Один','Одна'),'Два','Две') + ' ' + str_kg;
      end;
    end;
  end;

  end;
  //Грузоотправитель
  exWks.Range['D3'].Value := OleVariant(str_grotpr);

  //Грузополучатель
  exWks.Range['D8'].Value := OleVariant(str_grpol);

  //Поставщик  всегда СФХ
  exWks.Range['D10'].Value := OleVariant(str_post);

   //Плательщик
  exWks.Range['D12'].Value := OleVariant(str_payer);

    // Автоподбор по высоте
  AutoFitMergeCell(exWks.Range['D3']);
  AutoFitMergeCell(exWks.Range['D8']);
  AutoFitMergeCell(exWks.Range['D10']);
  AutoFitMergeCell(exWks.Range['D12']);

  //Основание
  exWks.Range['D14'].Value := 'Договор № '+ cost_contract_cod + ' от '+ DateToStr(cost_contract_date);
  exWks.Range['AN13'].Value := cost_contract_cod;
  exWks.Range['AN15'].Value := DateToStr(cost_contract_date);


  exWks.Range['A1'].Select;
  exWks.Range['H' + IntToStr(row_0+23)].Value := OleVariant(retActSettings[3][0]);

  exWks.Range['F' + IntToStr(row_0 + 4)].Value := ReplaceStr(GetSumScript_RUS(IntToStr(Q.RecNo), -9),'и 00/100','');
  if (Q.FieldByName('rate_nds_name').AsString = 'НДС исчисляется налоговым агентом') and (TComponent(Sender).Tag = 404) then begin
    exWks.Range['B' + IntToStr(row_0 + 14)].Value := GetSumScript_RUS(FloatToStr(exWks.Range['AC' + IntToStr(row_0 + 1)].Value), 3);
    act_sum := exWks.Range['AC' + IntToStr(row_0 + 1)].Value;

    exWks.Range['AJ' + IntToStr(row_0+1)].Value := OleVariant('-');
    exWks.Range['AM' + IntToStr(row_0+1)].Value := OleVariant('-');
    exWks.Range['AJ' + IntToStr(row_0+2)].Value := OleVariant('-');
    exWks.Range['AM' + IntToStr(row_0+2)].Value := OleVariant('-');
  end else begin
   exWks.Range['B' + IntToStr(row_0 + 14)].Value := GetSumScript_RUS(FloatToStr(exWks.Range['AM' + IntToStr(row_0 + 1)].Value), 3);
   act_sum := exWks.Range['AM' + IntToStr(row_0 + 1)].Value;
   if exWks.Range['AJ' + IntToStr(row_0 + 1)].Value > 0 then
    exWks.Range['B' + IntToStr(row_0 + 14)].Value := exWks.Range['B' + IntToStr(row_0 + 14)].Value + ', в т.ч. НДС ' + GetSumScript_RUS(FloatToStr(exWks.Range['AJ' + IntToStr(row_0 + 1)].Value), 3);
  end;

  //Должность и доверенность собственная
  exWks.Range['E' + IntToStr(row_0 + 16)].Value := retActSettings[4][0] + ' ' + retActSettings[4][1];
  exWks.Range['E' + IntToStr(row_0 + 19)].Value := retActSettings[4][0] + ' ' + retActSettings[4][1];

  exWks.Range['K' + IntToStr(row_0 + 16)].Value := retActSettings[13][1];
  exWks.Range['K' + IntToStr(row_0 + 18)].Value := retActSettings[13][1];
  exWks.Range['K' + IntToStr(row_0 + 20)].Value := retActSettings[13][1];


  //------ сохранение Акта --------------
  SaveActsEnd(ADOVagonRepair, exWks, retActSettings, str_fact_repair_table_id , act_sum);
  acts_id := retActSettings[1][0];
  // ------------------------------------

  for i := 0 to cxGrid1DBBandedTableView1.Controller.SelectedRecordCount - 1 do
  begin
    Q.Close;
    Q.SQL.Clear;
    Q.SQL.Add(' UPDATE fact_repair_table ');
    Q.SQL.Add(' SET cost_acts_id = ' + IntToStr(acts_id));
    Q.SQL.Add(' WHERE fact_repair_table_id = ' + IntToStr(cxGrid1DBBandedTableView1.Controller.SelectedRows[i].Values[cxGrid1DBBandedTableView1fact_repair_table_id .Index]));
    Q.ExecSQL;
  end;

  RefreshQueryGrid(cxGrid1DBBandedTableView1, 'fact_repair_table_id', cxGrid1DBBandedTableView1fact_repair_table_id.DataBinding.Field.AsInteger );

  Screen.Cursor := crDefault;
  ShowTextMessage('', True);
//  exApp.Visible := True;
  VarClear(exWks); VarClear(exWkb); VarClear(exApp);
end;

procedure TfmVagonRepair.SetFactRepairID(fact_repair_id: integer);
var Q: TADOQuery;
begin
  if not VagonRepair.Locate('fact_repair_id', fact_repair_id, []) then begin
    Q := TADOQuery.Create(nil);
    Q.Connection := ADOVagonRepair;
    Q.SQL.Add('SELECT * FROM view_fact_repair WHERE fact_repair_id = ' + IntToStr(fact_repair_id));
    Q.Open;

    Fdate1 := Q.FieldByName('score_date').AsDateTime - 1;
    Fdate2 := Q.FieldByName('score_date').AsDateTime + 1;
    Ftype_fact_repair := Q.FieldByName('type_fact_repair').AsInteger;
    cxPageControl1.ActivePageIndex := Ftype_fact_repair;
    cxPageControl1Change(cxPageControl1);
    dxBarSubItem2.Caption := PeriodToStr(Fdate1, Fdate2, True);
  end;

  if cxGrid2DBBandedTableView1.DataController.LocateByKey(fact_repair_id) = False then cxGrid2DBBandedTableView1.Controller.GoToFirst;
  if cxGrid2DBBandedTableView1.Controller.FocusedRecord <> nil then  cxGrid2DBBandedTableView1.Controller.FocusedRecord.Selected := True;
  cxGrid2DBBandedTableView1DblClick(nil);
end;

end.
