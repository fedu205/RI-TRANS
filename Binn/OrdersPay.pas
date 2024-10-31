unit OrdersPay;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, dxBar, cxClasses, cxGraphics, cxControls, cxLookAndFeels, ShellApi,
  cxLookAndFeelPainters, cxPC, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, DB, cxDBData, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridBandedTableView, cxGridDBBandedTableView, cxGridLevel,
  cxGrid, ADODB, cxCurrencyEdit, cxPropertiesStore, ExtCtrls, cxContainer,
  cxLabel, DateUtils, cxCalendar, cxColorComboBox, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom,
  dxSkinDarkSide, dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMetropolis, dxSkinMetropolisDark, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue,
  dxSkinOffice2010Silver, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic,
  dxSkinSharp, dxSkinSharpPlus, dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008, dxSkinTheAsphaltWorld, dxSkinsDefaultPainters,
  dxSkinValentine, dxSkinVS2010, dxSkinWhiteprint, dxSkinXmas2008Blue, dxSkinscxPCPainter, dxBarBuiltInMenu, cxNavigator, dxSkinsdxBarPainter,
  Raznoe, Default, ImgList, dxSkinOffice2016Colorful, dxSkinOffice2016Dark,
  dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, System.ImageList, cxImageList,
  cxDataControllerConditionalFormattingRulesManagerDialog, dxSkinTheBezier,
  cxCustomPivotGrid, cxDBPivotGrid, cxCheckBox, Vcl.ComCtrls, dxmdaset,
  cxPivotGridCustomDataSet, cxPivotGridDrillDownDataSet, cxExportPivotGridLink, cxGridDBTableView, dxDateRanges, dxSkinOffice2019Colorful;

type
  TfmOrdersPay = class(TForm)
    dxBarManager1: TdxBarManager;
    dxBarManager1Bar1: TdxBar;
    dxBarButton1: TdxBarButton;
    dxBarButton2: TdxBarButton;
    dxBarButton3: TdxBarButton;
    dxBarButton4: TdxBarButton;
    dxBarButton5: TdxBarButton;
    dxBarSubItem1: TdxBarSubItem;
    cxPageControl1: TcxPageControl;
    cxTabSheet1: TcxTabSheet;
    cxTabSheet2: TcxTabSheet;
    dxBarButton6: TdxBarButton;
    dxBarButton7: TdxBarButton;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    cxGrid1DBBandedTableView1: TcxGridDBBandedTableView;
    Query_OrdersPay: TADOQuery;
    DS_OrdersPay: TDataSource;
    cxGrid1DBBandedTableView1orders_pay_id: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1contract_id: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1contract_cod: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1firm_self: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1date_begin: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1type_contract: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1firm_customer: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1firm_self_name: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1firm_customer_name: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1users_owner_id: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1FIO_users_owner: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1date_enter: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1global_color: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1orders_pay_sum: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1orders_pay_date: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1currency_id: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1brief_name: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1invoice_cod: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1invoce_date: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1orders_pay_comment: TcxGridDBBandedColumn;
    cxPropertiesStore1: TcxPropertiesStore;
    Panel1: TPanel;
    Splitter1: TSplitter;
    dxBarPopupMenu1: TdxBarPopupMenu;
    dxBarButton8: TdxBarButton;
    dxBarSubItem2: TdxBarSubItem;
    dxBarButton9: TdxBarButton;
    dxBarButton10: TdxBarButton;
    dxBarButton11: TdxBarButton;
    dxBarButton12: TdxBarButton;
    Query_OrdersPaySum: TADOQuery;
    DS_OrdersPaySum: TDataSource;
    dxBarSubItem3: TdxBarSubItem;
    dxBarPopupMenu3: TdxBarPopupMenu;
    dxBarSubItem4: TdxBarSubItem;
    dxBarButton14: TdxBarButton;
    dxBarButton13: TdxBarButton;
    cxGrid1DBBandedTableView1orders_date: TcxGridDBBandedColumn;
    dxBarSubItem5: TdxBarSubItem;
    dxBarButton16: TdxBarButton;
    dxBarButton15: TdxBarButton;
    cxGrid1DBBandedTableView1global_copy: TcxGridDBBandedColumn;
    dxBarButton_FilterRecords1: TdxBarButton;
    dxBarButton_FilterRecords2: TdxBarButton;
    dxBarButton_FilterRecords3: TdxBarButton;
    cxGrid1DBBandedTableView1orders_payment_sum: TcxGridDBBandedColumn;
    cxPageControl2: TcxPageControl;
    cxImageList1: TcxImageList;
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
    cxStyle1: TcxStyle;
    cxStyle_BlueBold: TcxStyle;
    cxGrid1DBBandedTableView1docs_id: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1docs_status_name: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1docs_date_agree: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1process_step_name: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1docs_payment_sum: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1docs_payment_date: TcxGridDBBandedColumn;
    dxBarButton17: TdxBarButton;
    cxDBPivotGrid1: TcxDBPivotGrid;
    cxDBPivotGrid1orders_pay_detail_id: TcxDBPivotGridField;
    cxDBPivotGrid1orders_pay_id: TcxDBPivotGridField;
    cxDBPivotGrid1agent_firm_customer_name: TcxDBPivotGridField;
    cxDBPivotGrid1agent_contract_cod: TcxDBPivotGridField;
    cxDBPivotGrid1orders_pay_date: TcxDBPivotGridField;
    cxDBPivotGrid1detail_pay_sum: TcxDBPivotGridField;
    cxDBPivotGrid1brief_name: TcxDBPivotGridField;
    cxDBPivotGrid1client_contract_cod: TcxDBPivotGridField;
    cxDBPivotGrid1client_contract_date_begin: TcxDBPivotGridField;
    cxDBPivotGrid1client_firm_customer_name: TcxDBPivotGridField;
    cxDBPivotGrid1client_firm_self_name: TcxDBPivotGridField;
    cxDBPivotGrid1agetn_contract_date_begin: TcxDBPivotGridField;
    cxDBPivotGrid1agent_firm_self_name: TcxDBPivotGridField;
    cxDBPivotGrid1set_plan_balance: TcxDBPivotGridField;
    cxDBPivotGrid1global_color: TcxDBPivotGridField;
    cxDBPivotGrid1note: TcxDBPivotGridField;
    cxDBPivotGrid1payment_sum: TcxDBPivotGridField;
    cxTabSheet5: TcxTabSheet;
    DS_ShpBargainAdd: TDataSource;
    dxBarPopupMenu4: TdxBarPopupMenu;
    cxGrid1DBBandedTableView1bargain_id: TcxGridDBBandedColumn;
    cxGrid7: TcxGrid;
    cxGrid7DBBandedTableView1: TcxGridDBBandedTableView;
    cxGrid7DBBandedTableView1bargain_add_id: TcxGridDBBandedColumn;
    cxGrid7DBBandedTableView1bargain_id: TcxGridDBBandedColumn;
    cxGrid7DBBandedTableView1agent_id: TcxGridDBBandedColumn;
    cxGrid7DBBandedTableView1agent_name: TcxGridDBBandedColumn;
    cxGrid7DBBandedTableView1currency_id: TcxGridDBBandedColumn;
    cxGrid7DBBandedTableView1brief_name: TcxGridDBBandedColumn;
    cxGrid7DBBandedTableView1type_nds_id: TcxGridDBBandedColumn;
    cxGrid7DBBandedTableView1type_nds_name: TcxGridDBBandedColumn;
    cxGrid7DBBandedTableView1set_include_nds: TcxGridDBBandedColumn;
    cxGrid7DBBandedTableView1date_period: TcxGridDBBandedColumn;
    cxGrid7DBBandedTableView1add_count: TcxGridDBBandedColumn;
    cxGrid7DBBandedTableView1add_rate: TcxGridDBBandedColumn;
    cxGrid7DBBandedTableView1ed_izm_id: TcxGridDBBandedColumn;
    cxGrid7DBBandedTableView1ed_izm_name: TcxGridDBBandedColumn;
    cxGrid7DBBandedTableView1contract_id: TcxGridDBBandedColumn;
    cxGrid7DBBandedTableView1contract_cod: TcxGridDBBandedColumn;
    cxGrid7DBBandedTableView1firm_self: TcxGridDBBandedColumn;
    cxGrid7DBBandedTableView1type_contract: TcxGridDBBandedColumn;
    cxGrid7DBBandedTableView1firm_customer: TcxGridDBBandedColumn;
    cxGrid7DBBandedTableView1firm_self_name: TcxGridDBBandedColumn;
    cxGrid7DBBandedTableView1firm_customer_name: TcxGridDBBandedColumn;
    cxGrid7DBBandedTableView1add_sum: TcxGridDBBandedColumn;
    cxGrid7DBBandedTableView1add_NDS_sum: TcxGridDBBandedColumn;
    cxGrid7DBBandedTableView1add_notNDS_sum: TcxGridDBBandedColumn;
    cxGrid7DBBandedTableView1add_sum_RUB: TcxGridDBBandedColumn;
    cxGrid7DBBandedTableView1add_NDS_sum_RUB: TcxGridDBBandedColumn;
    cxGrid7DBBandedTableView1add_notNDS_sum_RUB: TcxGridDBBandedColumn;
    cxGrid7DBBandedTableView1exchange_USD_val: TcxGridDBBandedColumn;
    cxGrid7DBBandedTableView1exchange_EUR_val: TcxGridDBBandedColumn;
    cxGrid7DBBandedTableView1exchange_CHF_val: TcxGridDBBandedColumn;
    cxGrid7DBBandedTableView1service_kind_id: TcxGridDBBandedColumn;
    cxGrid7DBBandedTableView1service_kind_rep_id: TcxGridDBBandedColumn;
    cxGrid7DBBandedTableView1acts_note: TcxGridDBBandedColumn;
    cxGrid7DBBandedTableView1budget_id: TcxGridDBBandedColumn;
    cxGrid7DBBandedTableView1budget_cod: TcxGridDBBandedColumn;
    cxGrid7DBBandedTableView1budget_name: TcxGridDBBandedColumn;
    cxGrid7DBBandedTableView1service_type_name: TcxGridDBBandedColumn;
    cxGrid7DBBandedTableView1budget_parent_name: TcxGridDBBandedColumn;
    cxGrid7DBBandedTableView1budget_parent_cod: TcxGridDBBandedColumn;
    cxGrid7DBBandedTableView1service_type: TcxGridDBBandedColumn;
    cxGrid7DBBandedTableView1balance_type_name: TcxGridDBBandedColumn;
    cxGrid7DBBandedTableView1type_exchange_name: TcxGridDBBandedColumn;
    cxGrid7DBBandedTableView1invoice_score_id: TcxGridDBBandedColumn;
    cxGrid7DBBandedTableView1score_cod: TcxGridDBBandedColumn;
    cxGrid7DBBandedTableView1score_date: TcxGridDBBandedColumn;
    cxGrid7DBBandedTableView1score_sum: TcxGridDBBandedColumn;
    cxGrid7DBBandedTableView1note: TcxGridDBBandedColumn;
    cxGrid7DBBandedTableView1ship_name: TcxGridDBBandedColumn;
    cxGrid7DBBandedTableView1vessel_trip_id: TcxGridDBBandedColumn;
    cxGrid7DBBandedTableView1vessel_trip_num: TcxGridDBBandedColumn;
    cxGrid7DBBandedTableView1vessel_date_begin: TcxGridDBBandedColumn;
    cxGrid7DBBandedTableView1vessel_date_end: TcxGridDBBandedColumn;
    cxGrid7DBBandedTableView1vessel_node_begin_name: TcxGridDBBandedColumn;
    cxGrid7DBBandedTableView1vessel_node_end_name: TcxGridDBBandedColumn;
    cxGrid7DBBandedTableView1docs_id: TcxGridDBBandedColumn;
    cxGrid7DBBandedTableView1docs_status_name: TcxGridDBBandedColumn;
    cxGrid7DBBandedTableView1docs_date_agree: TcxGridDBBandedColumn;
    cxGrid7DBBandedTableView1process_step_name: TcxGridDBBandedColumn;
    cxGrid7DBBandedTableView1rec_num: TcxGridDBBandedColumn;
    cxGrid7DBBandedTableView1subdivision_name: TcxGridDBBandedColumn;
    cxGrid7Level1: TcxGridLevel;
    dxBarButton18: TdxBarButton;
    dxBarSubItem6: TdxBarSubItem;
    dxBarButton19: TdxBarButton;
    dxBarButton20: TdxBarButton;
    PageControl3: TPageControl;
    TabSheet1: TTabSheet;
    Splitter2: TSplitter;
    DS_Pivot: TDataSource;
    dxBarPopupMenu5: TdxBarPopupMenu;
    cxGrid4: TcxGrid;
    cxGrid4DBBandedTableView1: TcxGridDBBandedTableView;
    cxGrid4DBBandedTableView1bargain_add_id: TcxGridDBBandedColumn;
    cxGrid4DBBandedTableView1bargain_id: TcxGridDBBandedColumn;
    cxGrid4DBBandedTableView1agent_id: TcxGridDBBandedColumn;
    cxGrid4DBBandedTableView1agent_name: TcxGridDBBandedColumn;
    cxGrid4DBBandedTableView1currency_id: TcxGridDBBandedColumn;
    cxGrid4DBBandedTableView1brief_name: TcxGridDBBandedColumn;
    cxGrid4DBBandedTableView1type_nds_id: TcxGridDBBandedColumn;
    cxGrid4DBBandedTableView1type_nds_name: TcxGridDBBandedColumn;
    cxGrid4DBBandedTableView1set_include_nds: TcxGridDBBandedColumn;
    cxGrid4DBBandedTableView1date_period: TcxGridDBBandedColumn;
    cxGrid4DBBandedTableView1date_period_finance: TcxGridDBBandedColumn;
    cxGrid4DBBandedTableView1date_period_service: TcxGridDBBandedColumn;
    cxGrid4DBBandedTableView1add_count: TcxGridDBBandedColumn;
    cxGrid4DBBandedTableView1add_rate: TcxGridDBBandedColumn;
    cxGrid4DBBandedTableView1ed_izm_id: TcxGridDBBandedColumn;
    cxGrid4DBBandedTableView1ed_izm_name: TcxGridDBBandedColumn;
    cxGrid4DBBandedTableView1contract_id: TcxGridDBBandedColumn;
    cxGrid4DBBandedTableView1contract_cod: TcxGridDBBandedColumn;
    cxGrid4DBBandedTableView1firm_self: TcxGridDBBandedColumn;
    cxGrid4DBBandedTableView1type_contract: TcxGridDBBandedColumn;
    cxGrid4DBBandedTableView1firm_customer: TcxGridDBBandedColumn;
    cxGrid4DBBandedTableView1firm_self_name: TcxGridDBBandedColumn;
    cxGrid4DBBandedTableView1firm_customer_name: TcxGridDBBandedColumn;
    cxGrid4DBBandedTableView1add_sum: TcxGridDBBandedColumn;
    cxGrid4DBBandedTableView1add_NDS_sum: TcxGridDBBandedColumn;
    cxGrid4DBBandedTableView1add_notNDS_sum: TcxGridDBBandedColumn;
    cxGrid4DBBandedTableView1add_sum_RUB: TcxGridDBBandedColumn;
    cxGrid4DBBandedTableView1add_NDS_sum_RUB: TcxGridDBBandedColumn;
    cxGrid4DBBandedTableView1add_notNDS_sum_RUB: TcxGridDBBandedColumn;
    cxGrid4DBBandedTableView1exchange_USD_val: TcxGridDBBandedColumn;
    cxGrid4DBBandedTableView1exchange_EUR_val: TcxGridDBBandedColumn;
    cxGrid4DBBandedTableView1exchange_CHF_val: TcxGridDBBandedColumn;
    cxGrid4DBBandedTableView1service_kind_id: TcxGridDBBandedColumn;
    cxGrid4DBBandedTableView1service_kind_rep_id: TcxGridDBBandedColumn;
    cxGrid4DBBandedTableView1acts_note: TcxGridDBBandedColumn;
    cxGrid4DBBandedTableView1budget_id: TcxGridDBBandedColumn;
    cxGrid4DBBandedTableView1budget_cod: TcxGridDBBandedColumn;
    cxGrid4DBBandedTableView1budget_name: TcxGridDBBandedColumn;
    cxGrid4DBBandedTableView1service_type_name: TcxGridDBBandedColumn;
    cxGrid4DBBandedTableView1budget_parent_name: TcxGridDBBandedColumn;
    cxGrid4DBBandedTableView1budget_parent_cod: TcxGridDBBandedColumn;
    cxGrid4DBBandedTableView1service_type: TcxGridDBBandedColumn;
    cxGrid4DBBandedTableView1balance_type_name: TcxGridDBBandedColumn;
    cxGrid4DBBandedTableView1type_exchange_name: TcxGridDBBandedColumn;
    cxGrid4DBBandedTableView1invoice_score_id: TcxGridDBBandedColumn;
    cxGrid4DBBandedTableView1score_cod: TcxGridDBBandedColumn;
    cxGrid4DBBandedTableView1score_date: TcxGridDBBandedColumn;
    cxGrid4DBBandedTableView1score_sum: TcxGridDBBandedColumn;
    cxGrid4DBBandedTableView1note: TcxGridDBBandedColumn;
    cxGrid4DBBandedTableView1ship_name: TcxGridDBBandedColumn;
    cxGrid4DBBandedTableView1vessel_trip_id: TcxGridDBBandedColumn;
    cxGrid4DBBandedTableView1vessel_trip_num: TcxGridDBBandedColumn;
    cxGrid4DBBandedTableView1vessel_date_begin: TcxGridDBBandedColumn;
    cxGrid4DBBandedTableView1vessel_date_end: TcxGridDBBandedColumn;
    cxGrid4DBBandedTableView1vessel_node_begin_name: TcxGridDBBandedColumn;
    cxGrid4DBBandedTableView1vessel_node_end_name: TcxGridDBBandedColumn;
    cxGrid4DBBandedTableView1docs_id: TcxGridDBBandedColumn;
    cxGrid4DBBandedTableView1docs_status_name: TcxGridDBBandedColumn;
    cxGrid4DBBandedTableView1docs_date_agree: TcxGridDBBandedColumn;
    cxGrid4DBBandedTableView1process_step_name: TcxGridDBBandedColumn;
    cxGrid4DBBandedTableView1rec_num: TcxGridDBBandedColumn;
    cxGrid4DBBandedTableView1subdivision_name: TcxGridDBBandedColumn;
    cxGrid4Level1: TcxGridLevel;
    dxBarButton21: TdxBarButton;
    dxBarSubItem7: TdxBarSubItem;
    dxBarButton22: TdxBarButton;
    dxBarButton23: TdxBarButton;
    dxBarButton24: TdxBarButton;
    dxBarButton25: TdxBarButton;
    dxBarButton26: TdxBarButton;
    dxBarButton27: TdxBarButton;
    dxBarButton28: TdxBarButton;
    cxDBPivotGrid1bargain_id: TcxDBPivotGridField;
    dxBarButton29: TdxBarButton;
    Query_ShpBargainAdd: TADOQuery;
    cxGrid7DBBandedTableView1bargain_cod: TcxGridDBBandedColumn;
    cxGrid7DBBandedTableView1client_firm_customer_name: TcxGridDBBandedColumn;
    cxGrid7DBBandedTableView1client_contract_id: TcxGridDBBandedColumn;
    cxGrid7DBBandedTableView1client_contract_cod: TcxGridDBBandedColumn;
    dxBarButton30: TdxBarButton;
    cxPivotGridDrillDownDataSet1: TcxPivotGridDrillDownDataSet;
    cxDBPivotGrid1bargain_add_id: TcxDBPivotGridField;
    cxDBPivotGrid1agent_name: TcxDBPivotGridField;
    cxDBPivotGrid1brief_name_service: TcxDBPivotGridField;
    cxDBPivotGrid1type_nds_name: TcxDBPivotGridField;
    cxDBPivotGrid1firm_customer_name: TcxDBPivotGridField;
    cxDBPivotGrid1firm_self_name: TcxDBPivotGridField;
    cxDBPivotGrid1service_type_name: TcxDBPivotGridField;
    cxDBPivotGrid1budget_name: TcxDBPivotGridField;
    cxDBPivotGrid1add_rate: TcxDBPivotGridField;
    cxDBPivotGrid1add_count: TcxDBPivotGridField;
    cxDBPivotGrid1ed_izm_name: TcxDBPivotGridField;
    cxDBPivotGrid1add_notNDS_sum: TcxDBPivotGridField;
    cxDBPivotGrid1set_include_nds: TcxDBPivotGridField;
    cxDBPivotGrid1add_NDS_sum: TcxDBPivotGridField;
    cxDBPivotGrid1add_sum: TcxDBPivotGridField;
    cxDBPivotGrid1add_sum_RUB: TcxDBPivotGridField;
    cxDBPivotGrid1budget_cod: TcxDBPivotGridField;
    cxDBPivotGrid1budget_parent_name: TcxDBPivotGridField;
    cxDBPivotGrid1add_NDS_sum_RUB: TcxDBPivotGridField;
    cxDBPivotGrid1add_notNDS_sum_RUB: TcxDBPivotGridField;
    cxDBPivotGrid1balance_type_name: TcxDBPivotGridField;
    cxDBPivotGrid1type_exchange_name: TcxDBPivotGridField;
    cxDBPivotGrid1score_cod: TcxDBPivotGridField;
    cxDBPivotGrid1score_date: TcxDBPivotGridField;
    cxDBPivotGrid1score_sum: TcxDBPivotGridField;
    cxDBPivotGrid1ship_name: TcxDBPivotGridField;
    cxDBPivotGrid1vessel_trip_num: TcxDBPivotGridField;
    cxDBPivotGrid1vessel_date_begin: TcxDBPivotGridField;
    cxDBPivotGrid1vessel_date_end: TcxDBPivotGridField;
    cxDBPivotGrid1vessel_node_begin_name: TcxDBPivotGridField;
    cxDBPivotGrid1vessel_node_end_name: TcxDBPivotGridField;
    cxDBPivotGrid1docs_id: TcxDBPivotGridField;
    cxDBPivotGrid1docs_status_name: TcxDBPivotGridField;
    cxDBPivotGrid1docs_date_agree: TcxDBPivotGridField;
    cxDBPivotGrid1process_step_name: TcxDBPivotGridField;
    cxDBPivotGrid1subdivision_name: TcxDBPivotGridField;
    cxDBPivotGrid1contract_cod: TcxDBPivotGridField;
    cxDBPivotGrid1bargain_cod: TcxDBPivotGridField;
    cxGrid4DBBandedTableView1bargain_cod: TcxGridDBBandedColumn;
    dxBarPopupMenu2: TdxBarPopupMenu;
    dxBarButton31: TdxBarButton;
    dxBarButton32: TdxBarButton;
    dxBarSubItem8: TdxBarSubItem;
    dxBarButton33: TdxBarButton;
    dxBarButton34: TdxBarButton;
    dxBarButton35: TdxBarButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure dxBarButton1Click(Sender: TObject);
    procedure dxBarButton2Click(Sender: TObject);
    procedure cxGrid1DBBandedTableView1CustomDrawCell(Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
    procedure cxGrid1DBBandedTableView1CustomDrawColumnHeader(Sender: TcxGridTableView; ACanvas: TcxCanvas;AViewInfo: TcxGridColumnHeaderViewInfo; var ADone: Boolean);
    procedure cxGridDBBandedTableView1FocusedItemChanged(Sender: TcxCustomGridTableView; APrevFocusedItem,AFocusedItem: TcxCustomGridTableItem);
    procedure cxGrid1DBBandedTableView1DataControllerFilterChanged(Sender: TObject);
    procedure cxGrid1DBBandedTableView1KeyPress(Sender: TObject; var Key: Char);
    procedure dxBarButton4Click(Sender: TObject);
    procedure dxBarButton6Click(Sender: TObject);
    procedure dxBarButton7Click(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure dxBarButton3Click(Sender: TObject);
    procedure dxBarButton8Click(Sender: TObject);
    procedure dxBarButton15Click(Sender: TObject);
    procedure dxBarButton16Click(Sender: TObject);
    procedure dxBarSubItem5Popup(Sender: TObject);
    procedure dxBarButton100Click(Sender: TObject);
    procedure dxBarButton_FilterRecords1Click(Sender: TObject);
    procedure dxBarButton9Click(Sender: TObject);
    procedure dxBarButton_FilterRecords3Click(Sender: TObject);
    procedure dxBarButton11Click(Sender: TObject);
    procedure dxBarButton12Click(Sender: TObject);
    procedure dxBarButton5Click(Sender: TObject);
    procedure dxBarButton17Click(Sender: TObject);
    procedure cxGrid1DBBandedTableView1SelectionChanged(Sender: TcxCustomGridTableView);
    procedure cxGrid7DBBandedTableView1CustomDrawCell(Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
    procedure cxGrid7DBBandedTableView1CustomDrawColumnHeader(Sender: TcxGridTableView; ACanvas: TcxCanvas;AViewInfo: TcxGridColumnHeaderViewInfo; var ADone: Boolean);
    procedure cxGrid7DBBandedTableView1FocusedItemChanged(Sender: TcxCustomGridTableView; APrevFocusedItem,AFocusedItem: TcxCustomGridTableItem);
    procedure cxGrid7DBBandedTableView1KeyPress(Sender: TObject; var Key: Char);
    procedure cxGrid7DBBandedTableView1DataControllerFilterChanged(Sender: TObject);
    procedure cxDBPivotGrid1SelectionChanged(Sender: TObject);
    procedure cxPageControl1Change(Sender: TObject);
    procedure cxGrid4DBBandedTableView1DataControllerFilterChanged(Sender: TObject);
    procedure cxGrid4DBBandedTableView1CustomDrawCell(Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
    procedure cxGrid4DBBandedTableView1CustomDrawColumnHeader(Sender: TcxGridTableView; ACanvas: TcxCanvas;AViewInfo: TcxGridColumnHeaderViewInfo; var ADone: Boolean);
    procedure cxGrid4DBBandedTableView1FocusedItemChanged(Sender: TcxCustomGridTableView; APrevFocusedItem,AFocusedItem: TcxCustomGridTableItem);
    procedure cxGrid4DBBandedTableView1KeyPress(Sender: TObject; var Key: Char);
    procedure dxBarButton24Click(Sender: TObject);
    procedure dxBarButton25Click(Sender: TObject);
    procedure dxBarButton26Click(Sender: TObject);
    procedure dxBarButton27Click(Sender: TObject);
    procedure dxBarButton19Click(Sender: TObject);
    procedure dxBarButton20Click(Sender: TObject);
    procedure dxBarButton22Click(Sender: TObject);
    procedure dxBarButton23Click(Sender: TObject);
    procedure dxBarButton31Click(Sender: TObject);
    procedure dxBarButton33Click(Sender: TObject);

  private
    Fdate1, Fdate2 : TDateTime;

    Fcontract_id   : integer;
    Fdocs_id       : integer;
    Forders_pay_id : integer;

    // Запущена как DLL
    Fset_run_dll  : boolean;
    Fconnect      : TADOConnection;
    Fusr_pwd      : PUser_pwd;

    procedure LocateOrderdPayID(orders_pay_id: integer);
    procedure LocateOrderdPayDetailID(orders_pay_detail_id: integer);
  public
    constructor Create(AOwner: TApplication; flag: boolean); reintroduce;
    constructor CreateDLL(AOwner: TApplication; usr_pwd: PUser_pwd);
  published
    property _LocateOrderdPayID       : integer write LocateOrderdPayID;
    property _LocateOrderdPayDetailID : integer write LocateOrderdPayDetailID;
    property _GetContractId  : integer read  Fcontract_id;
    property _GetDocsId      : integer read  Fdocs_id;
    property _GetOrdersPayId : integer read  Forders_pay_id;
  end;

var
  fmOrdersPay: TfmOrdersPay;

implementation

uses main, Period, Other, FirmBalance;

{$R *.dfm}


constructor TfmOrdersPay.CreateDLL(AOwner: TApplication; usr_pwd: PUser_pwd);
begin
  Screen.Cursor := crHourglass;
  inherited Create(AOwner);
  dxBarSubItem1.Caption := StoreRegistryDate(rgLoad, '\Software\Lis1\DateTime\OrdersPay', Fdate1, Fdate2);

  Fset_run_dll := True;
  Fusr_pwd     := usr_pwd;

  Fcontract_id   := -9;
  Fdocs_id       := -9;
  Forders_pay_id := -9;

  cxGrid1DBBandedTableView1.OnDblClick := dxBarButton5Click;

  dxBarButton1.Visible  := ivNever;
  dxBarButton2.Visible  := ivNever;
  dxBarButton3.Visible  := ivNever;
  dxBarButton16.Visible := ivNever;
  dxBarSubItem5.Visible := ivNever;

  Fconnect := TADOConnection.Create(nil);
  Fconnect.ConnectionString := 'Persist Security Info=True;Provider=SQLOLEDB.1;User ID='+Fusr_pwd^.user_name+';Password='+Fusr_pwd^.user_pass+';Initial Catalog='+Fusr_pwd^.catalog+';Data Source='+Fusr_pwd^.server+';';
  Fconnect.KeepConnection   := False;
  Fconnect.LoginPrompt      := False;
  Fconnect.Open;
  Query_OrdersPay.Connection       := Fconnect;
  Query_OrdersPaySum.Connection    := Fconnect;
  Query_ShpBargainAdd.Connection   := Fconnect;

  Query_OrdersPay.Parameters.ParamByName('date_begin').Value := Fdate1;
  Query_OrdersPay.Parameters.ParamByName('date_end').Value := Fdate2;
  Query_OrdersPay.Open;

  cxGrid1DBBandedTableView1SelectionChanged(nil);

//  Query_OrdersPaySum.Parameters.ParamByName('date_begin').Value := Fdate1;
//  Query_OrdersPaySum.Parameters.ParamByName('date_end').Value := Fdate2;
//  Query_OrdersPaySum.Open;

  FormStyle   := fsNormal;
  WindowState := wsMaximized;
  dxBarButton5.Visible  := ivAlways;

  cxPageControl1.ActivePage := cxTabSheet1;
  cxPageControl2.ActivePage := cxTabSheet5;
  cxTabSheet2.TabVisible    := False;

  StoreRegistryGrid(rgLoad, '\Software\Lis1\OrdersPay_Grids', cxGrid1DBBandedTableView1);
  StoreRegistryGrid(rgLoad, '\Software\Lis1\OrdersPay_Grids', cxGrid4DBBandedTableView1);
  StoreRegistryGrid(rgLoad, '\Software\Lis1\OrdersPay_Grids', cxGrid7DBBandedTableView1);

  Screen.Cursor := crDefault;
end;

constructor TfmOrdersPay.Create(AOwner: TApplication; flag: boolean);
begin
  Screen.Cursor := crHourglass;
  inherited Create(AOwner);
  dxBarSubItem1.Caption := StoreRegistryDate(rgLoad, '\Software\Lis1\DateTime\OrdersPay', Fdate1, Fdate2);

  Fset_run_dll := False;
  Fcontract_id   := -9;
  Fdocs_id       := -9;
  Forders_pay_id := -9;

  cxPageControl1.ActivePage := cxTabSheet1;
  cxPageControl2.ActivePage := cxTabSheet5;

  Query_OrdersPay.Parameters.ParamByName('date_begin').Value := Fdate1;
  Query_OrdersPay.Parameters.ParamByName('date_end').Value := Fdate2;
  Query_OrdersPay.Open;

  cxGrid1DBBandedTableView1SelectionChanged(nil);

  StoreRegistryGrid(rgLoad, '\Software\Lis1\OrdersPay_Grids', cxGrid1DBBandedTableView1);
  StoreRegistryGrid(rgLoad, '\Software\Lis1\OrdersPay_Grids', cxGrid4DBBandedTableView1);
  StoreRegistryGrid(rgLoad, '\Software\Lis1\OrdersPay_Grids', cxGrid7DBBandedTableView1);

  MonitorEventFormOpen('OPEN_FORM', self.Name, fmMain.Lis, -9);

  if flag then begin
    FormStyle   := fsNormal;
    WindowState := wsMaximized;
    dxBarButton5.Visible  := ivAlways;
  end else begin
    FormStyle   := fsMDIChild;
    WindowState := wsMaximized;
    dxBarButton5.Visible  := ivNever;
  end;

  Screen.Cursor := crDefault;
end;

procedure TfmOrdersPay.cxDBPivotGrid1SelectionChanged(Sender: TObject);
begin
//  SP_shp_bargain_add_GET2.Parameters.Refresh;
//  cxGrid1DBBandedTableView1bargain_id.DataBinding.Field.Value
//  SP_shp_bargain_add_GET2.Parameters.ParamByName('@bargain_id' ).Value := cxDBPivotGrid1bargain_id.DataBinding.Field.Value;
//  SP_shp_bargain_add_GET2.Parameters.ParamByName('@currency_id').Value := 3;
//  SP_shp_bargain_add_GET2.Parameters.ParamByName('@type_result').Value := 1;
//  SP_shp_bargain_add_GET2.Open;
end;

procedure TfmOrdersPay.cxGrid1DBBandedTableView1CustomDrawCell(Sender: TcxCustomGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
  if (AViewInfo.GridRecord.Values[cxGrid1DBBandedTableView1global_color.Index]<>NULL) then
    ACanvas.Brush.Color := AViewInfo.GridRecord.Values[cxGrid1DBBandedTableView1global_color.Index];

  if (AViewInfo.GridRecord.Values[cxGrid1DBBandedTableView1global_copy.Index]<>NULL) then
    if (AViewInfo.GridRecord.Values[cxGrid1DBBandedTableView1global_copy.Index] = True) then
      ACanvas.Font.Color := clRed;


  if AViewInfo.GridRecord.Selected or AViewInfo.GridRecord.Focused then begin
    ACanvas.Brush.Color := clNavy;
    ACanvas.Font.Color := clWhite;
    if AViewInfo.Focused then ACanvas.Brush.Color := clBlue;
  end;
end;

procedure TfmOrdersPay.cxGrid1DBBandedTableView1CustomDrawColumnHeader(Sender: TcxGridTableView; ACanvas: TcxCanvas;AViewInfo: TcxGridColumnHeaderViewInfo; var ADone: Boolean);
begin
  if AViewInfo.Column.Focused then begin
    ACanvas.Brush.Color := clNavy;
    ACanvas.Font.Color := clWhite;
  end;
end;

procedure TfmOrdersPay.cxGrid1DBBandedTableView1DataControllerFilterChanged(Sender: TObject);
begin
  DrawcxGridColumnOnFiltered(Sender);
end;

procedure TfmOrdersPay.cxGrid1DBBandedTableView1KeyPress(Sender: TObject; var Key: Char);
begin
  FilterColumnGridOnKeyPress(cxGrid1DBBandedTableView1, Key);
end;

procedure TfmOrdersPay.cxGrid1DBBandedTableView1SelectionChanged(Sender: TcxCustomGridTableView);
begin
  if (cxGrid1DBBandedTableView1.GroupedColumnCount = 0) AND (cxGrid1DBBandedTableView1.Controller.FocusedRow <> nil) AND (not cxGrid1DBBandedTableView1orders_pay_id.DataBinding.Field.IsNull) then begin
    Query_ShpBargainAdd.Close;
    Query_ShpBargainAdd.Parameters.ParamByName('orders_pay_id').Value := Query_OrdersPay.FieldByName('orders_pay_id').Value;
    Query_ShpBargainAdd.Open;
  end;
end;

procedure TfmOrdersPay.cxGrid4DBBandedTableView1CustomDrawCell(Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
  if (AViewInfo.GridRecord.Values[cxGrid4DBBandedTableView1service_type.Index] = 0) then begin
    if (AViewInfo.Item.ID = cxGrid4DBBandedTableView1service_type_name.Index) then begin
      ACanvas.Font.Color := clRed;
      ACanvas.Font.Style := [fsBold];
    end;

    if (AViewInfo.Item.ID = cxGrid4DBBandedTableView1add_sum.Index) OR
       (AViewInfo.Item.ID = cxGrid4DBBandedTableView1add_NDS_sum.Index) OR
       (AViewInfo.Item.ID = cxGrid4DBBandedTableView1add_notNDS_sum.Index) OR
       (AViewInfo.Item.ID = cxGrid4DBBandedTableView1add_sum_RUB.Index)
    then begin
      ACanvas.Font.Color := clRed;
    end;
  end;

  if (AViewInfo.GridRecord.Values[cxGrid4DBBandedTableView1service_type.Index] = 1) then begin
    if (AViewInfo.Item.ID = cxGrid4DBBandedTableView1service_type_name.Index) then begin
      ACanvas.Font.Color := clGreen;
      ACanvas.Font.Style := [fsBold];
    end;

    if (AViewInfo.Item.ID = cxGrid4DBBandedTableView1add_sum.Index) OR
       (AViewInfo.Item.ID = cxGrid4DBBandedTableView1add_NDS_sum.Index) OR
       (AViewInfo.Item.ID = cxGrid4DBBandedTableView1add_notNDS_sum.Index) OR
       (AViewInfo.Item.ID = cxGrid4DBBandedTableView1add_sum_RUB.Index)
    then begin
      ACanvas.Font.Color := clGreen;
    end;
  end;

	if AViewInfo.GridRecord.Selected or AViewInfo.GridRecord.Focused then begin
		ACanvas.Brush.Color := clNavy;
		ACanvas.Font.Color := clWhite;
		if AViewInfo.Focused then ACanvas.Brush.Color := clBlue;
	end;
end;

procedure TfmOrdersPay.cxGrid4DBBandedTableView1CustomDrawColumnHeader(Sender: TcxGridTableView; ACanvas: TcxCanvas;AViewInfo: TcxGridColumnHeaderViewInfo; var ADone: Boolean);
begin
	if AViewInfo.Column.Focused then begin
		ACanvas.Brush.Color := clNavy;
		ACanvas.Font.Color := clWhite;
	end;
end;

procedure TfmOrdersPay.cxGrid4DBBandedTableView1DataControllerFilterChanged(Sender: TObject);
begin
  DrawcxGridColumnOnFiltered(Sender);
end;

procedure TfmOrdersPay.cxGrid4DBBandedTableView1FocusedItemChanged(Sender: TcxCustomGridTableView; APrevFocusedItem,AFocusedItem: TcxCustomGridTableItem);
begin
	cxGrid4DBBandedTableView1.Painter.Invalidate;
end;

procedure TfmOrdersPay.cxGrid4DBBandedTableView1KeyPress(Sender: TObject;var Key: Char);
begin
  FilterColumnGridOnKeyPress(cxGrid4DBBandedTableView1, Key);
end;

procedure TfmOrdersPay.cxGrid7DBBandedTableView1CustomDrawCell(Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
  if (AViewInfo.GridRecord.Values[cxGrid7DBBandedTableView1service_type.Index] = 0) then begin
    if (AViewInfo.Item.ID = cxGrid7DBBandedTableView1service_type_name.Index) then begin
      ACanvas.Font.Color := clRed;
      ACanvas.Font.Style := [fsBold];
    end;

    if (AViewInfo.Item.ID = cxGrid7DBBandedTableView1add_sum.Index) OR
       (AViewInfo.Item.ID = cxGrid7DBBandedTableView1add_NDS_sum.Index) OR
       (AViewInfo.Item.ID = cxGrid7DBBandedTableView1add_notNDS_sum.Index) OR
       (AViewInfo.Item.ID = cxGrid7DBBandedTableView1add_sum_RUB.Index)
    then begin
      ACanvas.Font.Color := clRed;
    end;
  end;

  if (AViewInfo.GridRecord.Values[cxGrid7DBBandedTableView1service_type.Index] = 1) then begin
    if (AViewInfo.Item.ID = cxGrid7DBBandedTableView1service_type_name.Index) then begin
      ACanvas.Font.Color := clGreen;
      ACanvas.Font.Style := [fsBold];
    end;

    if (AViewInfo.Item.ID = cxGrid7DBBandedTableView1add_sum.Index) OR
       (AViewInfo.Item.ID = cxGrid7DBBandedTableView1add_NDS_sum.Index) OR
       (AViewInfo.Item.ID = cxGrid7DBBandedTableView1add_notNDS_sum.Index) OR
       (AViewInfo.Item.ID = cxGrid7DBBandedTableView1add_sum_RUB.Index)
    then begin
      ACanvas.Font.Color := clGreen;
    end;
  end;

	if AViewInfo.GridRecord.Selected or AViewInfo.GridRecord.Focused then begin
		ACanvas.Brush.Color := clNavy;
		ACanvas.Font.Color := clWhite;
		if AViewInfo.Focused then ACanvas.Brush.Color := clBlue;
	end;
end;

procedure TfmOrdersPay.cxGrid7DBBandedTableView1CustomDrawColumnHeader(Sender: TcxGridTableView; ACanvas: TcxCanvas;AViewInfo: TcxGridColumnHeaderViewInfo; var ADone: Boolean);
begin
	if AViewInfo.Column.Focused then begin
		ACanvas.Brush.Color := clNavy;
		ACanvas.Font.Color := clWhite;
	end;
end;

procedure TfmOrdersPay.cxGrid7DBBandedTableView1DataControllerFilterChanged(Sender: TObject);
begin
  DrawcxGridColumnOnFiltered(Sender);
end;

procedure TfmOrdersPay.cxGrid7DBBandedTableView1FocusedItemChanged(Sender: TcxCustomGridTableView; APrevFocusedItem,AFocusedItem: TcxCustomGridTableItem);
begin
  Sender.Painter.Invalidate;
end;

procedure TfmOrdersPay.cxGrid7DBBandedTableView1KeyPress(Sender: TObject;var Key: Char);
begin
  FilterColumnGridOnKeyPress(cxGrid7DBBandedTableView1, Key);
end;

procedure TfmOrdersPay.cxGridDBBandedTableView1FocusedItemChanged(Sender: TcxCustomGridTableView; APrevFocusedItem,AFocusedItem: TcxCustomGridTableItem);
begin
  Sender.Painter.Invalidate;
end;

procedure TfmOrdersPay.cxPageControl1Change(Sender: TObject);
begin
  Screen.Cursor := crHourGlass;

  Query_OrdersPay.Close;
  Query_OrdersPaySum.Close;

  if cxPageControl1.ActivePageIndex = 0 then begin
    Query_OrdersPay.Parameters.ParamByName('date_begin').Value := Fdate1;
    Query_OrdersPay.Parameters.ParamByName('date_end').Value   := Fdate2;
    Query_OrdersPay.Open;
  end;

  if cxPageControl1.ActivePageIndex = 1 then begin
    Query_OrdersPaySum.Parameters.ParamByName('date_begin').Value := Fdate1;
    Query_OrdersPaySum.Parameters.ParamByName('date_end').Value   := Fdate2;
    Query_OrdersPaySum.Open;
  end;

  Screen.Cursor := crDefault;
end;

procedure TfmOrdersPay.dxBarButton100Click(Sender: TObject);
var SP_orders_pay_modify : TADOStoredProc;
                       i : integer;
begin
  Screen.Cursor := crHourGlass;
  SP_orders_pay_modify := TADOStoredProc.Create(nil);
  SP_orders_pay_modify.Connection    := fmMain.Lis;
  SP_orders_pay_modify.ProcedureName := 'sp_orders_pay_modify';
  SP_orders_pay_modify.Parameters.Refresh;
  SP_orders_pay_modify.Parameters.ParamByName('@orders_pay_id').Value := cxGrid1DBBandedTableView1orders_pay_id.DataBinding.Field.AsInteger;
  SP_orders_pay_modify.Parameters.ParamByName('@type_action'  ).Value := 3;

  try
    SP_orders_pay_modify.ExecProc;
  except
  end;

  RefreshQueryGrid(cxGrid1DBBandedTableView1, 'orders_pay_id', SP_orders_pay_modify.Parameters.ParamByName('@orders_pay_id').Value);
  SP_orders_pay_modify.Free;
  Screen.Cursor := crDefault;
end;

procedure TfmOrdersPay.dxBarButton11Click(Sender: TObject);
begin
  case TdxBarButton(Sender).ClickItemLink.Owner.Owner.Tag of
    0: SetdxDBGridColumns(cxGrid1DBBandedTableView1);
  end;
end;

procedure TfmOrdersPay.dxBarButton12Click(Sender: TObject);
begin
case TdxBarButton(Sender).ClickItemLink.Owner.Owner.Tag of
    0: cxGrid1DBBandedTableView1.OptionsView.GroupByBox := not cxGrid1DBBandedTableView1.OptionsView.GroupByBox;
  end;
end;

procedure TfmOrdersPay.dxBarButton15Click(Sender: TObject);
var str_contract_id : string;
                  i : integer;
begin
  str_contract_id := '';
  for i:=0 to cxGrid1DBBandedTableView1.Controller.SelectedRecordCount - 1 do begin
    cxGrid1DBBandedTableView1.Controller.SelectedRows[i].Focused := True;
    if TControl(Sender).Tag = 0 then
      str_contract_id := str_contract_id + ', ' + IntToStr(cxGrid7DBBandedTableView1client_contract_id.DataBinding.Field.AsInteger)
    else
      str_contract_id := str_contract_id + ', ' + IntToStr(cxGrid1DBBandedTableView1contract_id.DataBinding.Field.AsInteger);
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

procedure TfmOrdersPay.dxBarButton16Click(Sender: TObject);
begin
  //PrintReportPlanClient(cxGridDBBandedTableView2contract_id.DataBinding.Field.AsInteger, Fdate1, Fdate2, fmMain.Lis);
end;

procedure TfmOrdersPay.dxBarButton17Click(Sender: TObject);
var                i : integer;
  str_bargain_add_id : string;
begin
//переход на форму сделки закладка услуги
  if Query_ShpBargainAdd.RecordCount > 0 then begin
    str_bargain_add_id := '';
    Query_ShpBargainAdd.first;
    while not Query_ShpBargainAdd.Eof do begin
      str_bargain_add_id := Query_ShpBargainAdd.FieldByName('bargain_add_id').AsString + ',' + str_bargain_add_id;
      Query_ShpBargainAdd.Next;
    end;
    Query_ShpBargainAdd.first;

    str_bargain_add_id := Copy(str_bargain_add_id, 1, Length(str_bargain_add_id) - 1);

//    fmShpAgree := TfmShpAgree.Create(Application, False);
//    fmShpAgree._FindServiceId := str_bargain_add_id;//cxGrid1DBBandedTableView1orders_pay_id.DataBinding.Field.AsInteger;
  end;
end;

procedure TfmOrdersPay.dxBarButton19Click(Sender: TObject);
begin
  SetdxDBGridColumns(cxGrid7DBBandedTableView1);
end;

procedure TfmOrdersPay.dxBarButton1Click(Sender: TObject);
type
  TFunc = function(AppHand: THandle; connect: TADOConnection; orders_pay_id: integer; usr_pwd: PUser_pwd): Variant;
var   FOrdersPayAdd : TFunc;
      handle        : THandle;
      v             : Variant;
begin
  handle := LoadLibrary('FormsAdd.dll');
  @FOrdersPayAdd := GetProcAddress(handle,'CreateWndOrdersPayAdd');
  v := FOrdersPayAdd(Application.Handle, fmMain.Lis, -9, usr_pwd);
  FreeLibrary(handle);

  if v[0] <> -9 then begin
    RefreshQueryGrid(cxGrid1DBBandedTableView1, 'orders_pay_id', v[0]);
  end;
end;

procedure TfmOrdersPay.dxBarButton20Click(Sender: TObject);
begin
  cxGrid7DBBandedTableView1.OptionsView.GroupByBox := not cxGrid7DBBandedTableView1.OptionsView.GroupByBox;
end;

procedure TfmOrdersPay.dxBarButton22Click(Sender: TObject);
begin
  SetdxDBGridColumns(cxGrid4DBBandedTableView1);
end;

procedure TfmOrdersPay.dxBarButton23Click(Sender: TObject);
begin
  cxGrid4DBBandedTableView1.OptionsView.GroupByBox := not cxGrid4DBBandedTableView1.OptionsView.GroupByBox;
end;

procedure TfmOrdersPay.dxBarButton24Click(Sender: TObject);
begin
  FiltercxGrid4ListID(cxGrid4DBBandedTableView1);
end;

procedure TfmOrdersPay.dxBarButton25Click(Sender: TObject);
begin
  cxGrid4DBBandedTableView1.Filtering.ColumnFilteredItemsList := not dxBarButton25.Down;
end;

procedure TfmOrdersPay.dxBarButton26Click(Sender: TObject);
begin
  FiltercxGrid4ListID(cxGrid7DBBandedTableView1);
end;

procedure TfmOrdersPay.dxBarButton27Click(Sender: TObject);
begin
  cxGrid7DBBandedTableView1.Filtering.ColumnFilteredItemsList := not dxBarButton27.Down;
end;

procedure TfmOrdersPay.dxBarButton2Click(Sender: TObject);
type
  TFunc = function(AppHand: THandle; connect: TADOConnection; orders_pay_id: integer; usr_pwd: PUser_pwd): Variant;
var   FOrdersPayAdd : TFunc;
      handle        : THandle;
      v             : Variant;
begin
  handle := LoadLibrary('FormsAdd.dll');
  @FOrdersPayAdd := GetProcAddress(handle,'CreateWndOrdersPayAdd');
  if cxPageControl1.ActivePage = cxTabSheet1 then
    v := FOrdersPayAdd(Application.Handle, fmMain.Lis, cxGrid1DBBandedTableView1orders_pay_id.DataBinding.Field.AsInteger, usr_pwd)
  else
    v := FOrdersPayAdd(Application.Handle, fmMain.Lis, Query_OrdersPaySum.FieldByName('orders_pay_id').AsInteger, usr_pwd);
  FreeLibrary(handle);

  if v[0] <> -9 then begin
    if cxPageControl1.ActivePage = cxTabSheet1 then
      RefreshQueryGrid(cxGrid1DBBandedTableView1, 'orders_pay_id', v[0])
    else
      //RefreshQueryGrid(cxpivotGridDBBandedTableView2, 'orders_pay_id', v[0]);
  end;
end;

procedure TfmOrdersPay.dxBarButton31Click(Sender: TObject);
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

procedure TfmOrdersPay.dxBarButton33Click(Sender: TObject);
begin
  UsersSettingModify(TComponent(Sender).Tag, TForm(self).Name, TcxControl(cxDBPivotGrid1), fmMain.Lis);
end;

procedure TfmOrdersPay.dxBarButton3Click(Sender: TObject);
var SP_orders_pay_modify : TADOStoredProc;
                       i : integer;
begin
  if Application.MessageBox('УДАЛИТЬ ВЫБРАННЫЕ ЗАЯВКИ?', 'ВНИМАНИЕ', MB_ICONWARNING or MB_OKCANCEL) = ID_OK then begin
    Screen.Cursor := crHourGlass;

    SP_orders_pay_modify := TADOStoredProc.Create(nil);
    SP_orders_pay_modify.Connection    := fmMain.Lis;
    SP_orders_pay_modify.ProcedureName := 'sp_orders_pay_modify';
    for i:=0 to cxGrid1DBBandedTableView1.Controller.SelectedRecordCount - 1 do begin
      ShowTextMessage('Осталось ' + IntToStr(cxGrid1DBBandedTableView1.Controller.SelectedRecordCount - i)+ '...',False);
      SP_orders_pay_modify.Parameters.Refresh;
      SP_orders_pay_modify.Parameters.ParamByName('@orders_pay_id').Value := cxGrid1DBBandedTableView1.Controller.SelectedRows[i].Values[cxGrid1DBBandedTableView1orders_pay_id.Index];
      SP_orders_pay_modify.Parameters.ParamByName('@type_action'    ).Value := 2;

      try
        SP_orders_pay_modify.ExecProc;
      except
      end;

    end;
    SP_orders_pay_modify.Free;
    ShowTextMessage();
    RefreshQueryGrid(cxGrid1DBBandedTableView1, 'orders_pay_id');

    Screen.Cursor := crDefault;
  end;

end;

procedure TfmOrdersPay.dxBarButton4Click(Sender: TObject);
begin
  RefreshQueryGrid(cxGrid1DBBandedTableView1, 'orders_pay_id');
//  RefreshQueryGrid(cxGridDBBandedTableView2, 'orders_pay_detail_id');
end;

procedure TfmOrdersPay.dxBarButton5Click(Sender: TObject);
begin
  Fcontract_id   := cxGrid1DBBandedTableView1contract_id.DataBinding.Field.AsInteger;
  Forders_pay_id := cxGrid1DBBandedTableView1orders_pay_id.DataBinding.Field.AsInteger;
  if cxGrid1DBBandedTableView1docs_id.DataBinding.Field.IsNull then
    Fdocs_id := -9
  else
    Fdocs_id := cxGrid1DBBandedTableView1docs_id.DataBinding.Field.AsInteger;

  ModalResult := mrOk;
end;

procedure TfmOrdersPay.dxBarButton6Click(Sender: TObject);
begin
  fmPeriod := TfmPeriod.Create(Application, Fdate1, Fdate2, 3);
  if fmPeriod.ShowModal=mrOK then begin
    Fdate1 := fmPeriod._GetMonth;
    Fdate2 := IncMonth(Fdate1, 1);
    dxBarSubItem1.Caption := FormatDateTime('mmmm yyyy', Fdate1);

    Query_OrdersPay.Close;
    Query_OrdersPay.Parameters.ParamByName('date_begin').Value := Fdate1;
    Query_OrdersPay.Parameters.ParamByName('date_end').Value := Fdate2;
    Query_OrdersPay.Open;

    Query_OrdersPaySum.Close;
    Query_OrdersPaySum.Parameters.ParamByName('date_begin').Value := Fdate1;
    Query_OrdersPaySum.Parameters.ParamByName('date_end').Value := Fdate2;
    Query_OrdersPaySum.Open;


  end;
end;

procedure TfmOrdersPay.dxBarButton7Click(Sender: TObject);
begin
  fmPeriod := TfmPeriod.Create(Application, Fdate1, Fdate2, 2);
  if fmPeriod.ShowModal=mrOK then begin
    Fdate1 := fmPeriod._GetMonthBegin;
    Fdate2 := fmPeriod._GetMonthEnd;
    dxBarSubItem1.Caption := FormatDateTime('mmm yy', Fdate1) + ' - ' + FormatDateTime('mmm yy', Fdate2);

    Query_OrdersPay.Close;
    Query_OrdersPay.Parameters.ParamByName('date_begin').Value := Fdate1;
    Query_OrdersPay.Parameters.ParamByName('date_end').Value := Fdate2;
    Query_OrdersPay.Open;

    Query_OrdersPaySum.Close;
    Query_OrdersPaySum.Parameters.ParamByName('date_begin').Value := Fdate1;
    Query_OrdersPaySum.Parameters.ParamByName('date_end').Value := Fdate2;
    Query_OrdersPaySum.Open;
  end;
end;

procedure TfmOrdersPay.dxBarButton8Click(Sender: TObject);
begin
  case TdxBarButton(Sender).ClickItemLink.Owner.Owner.Tag of
    0: PrintcxGrid(cxGrid1DBBandedTableView1);
    3: PrintcxGrid(cxGrid7DBBandedTableView1);
    4: PrintcxGrid(cxGrid4DBBandedTableView1);
  end;
end;

procedure TfmOrdersPay.dxBarButton9Click(Sender: TObject);
begin
  case TdxBarButton(Sender).ClickItemLink.Owner.Owner.Tag of
    0: begin
         SetRecordColor('orders_pay_id', cxGrid1DBBandedTableView1, 'ORDERS_PAY', Boolean(TControl(Sender).Tag));
         RefreshQueryGrid(cxGrid1DBBandedTableView1, 'orders_pay_id');
       end;
    1: begin
//         SetRecordColor('orders_pay_detail_id', cxGridDBBandedTableView1, 'ORDERS_PAY_DETAIL', Boolean(TControl(Sender).Tag));
//         RefreshQueryGrid(cxGridDBBandedTableView1, 'orders_pay_detail_id');
//         RefreshQueryGrid(cxGridDBBandedTableView2, 'orders_pay_detail_id');
       end;
    2: begin
//         SetRecordColor('orders_pay_detail_id', cxGridDBBandedTableView2, 'ORDERS_PAY_DETAIL', Boolean(TControl(Sender).Tag));
//         RefreshQueryGrid(cxGridDBBandedTableView2, 'orders_pay_detail_id');
       end;
  end
end;

{$REGION 'Фильтр по всем записям'}
procedure TfmOrdersPay.dxBarButton_FilterRecords1Click(Sender: TObject);
begin
  cxGrid1DBBandedTableView1.Filtering.ColumnFilteredItemsList := not dxBarButton_FilterRecords1.Down;
end;

procedure TfmOrdersPay.dxBarButton_FilterRecords3Click(Sender: TObject);
begin
//  cxGridDBBandedTableView2.Filtering.ColumnFilteredItemsList := not dxBarButton_FilterRecords3.Down;
end;
{$ENDREGION 'Фильтр по всем записям'}

procedure TfmOrdersPay.dxBarSubItem5Popup(Sender: TObject);
begin
  if cxPageControl1.ActivePage = cxTabSheet2 then
    dxBarButton16.Enabled := True
  else
    dxBarButton16.Enabled := False;
  
end;

procedure TfmOrdersPay.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if Fset_run_dll then Fconnect.Free;
  Action := caFree;
end;

procedure TfmOrdersPay.FormDestroy(Sender: TObject);
begin
  StoreRegistryDate(rgSave, '\Software\Lis1\DateTime\OrdersPay', Fdate1, Fdate2);
  StoreRegistryGrid(rgSave, '\Software\Lis1\OrdersPay_Grids', cxGrid1DBBandedTableView1);
  StoreRegistryGrid(rgSave, '\Software\Lis1\OrdersPay_Grids', cxGrid4DBBandedTableView1);
  StoreRegistryGrid(rgSave, '\Software\Lis1\OrdersPay_Grids', cxGrid7DBBandedTableView1);
end;

procedure TfmOrdersPay.LocateOrderdPayID(orders_pay_id: integer);
var Q: TADOQuery;
begin
  Screen.Cursor := crHourGlass;

  Q := TADOQuery.Create(nil);
  Q.Connection := fmMain.Lis;
  Q.SQL.Add('SELECT * FROM view_orders_pay WHERE orders_pay_id = ' + IntToStr(orders_pay_id));
  Q.Open;

  if Q.RecordCount > 0 then begin
    Fdate1 := Q.FieldByName('date_enter').AsDateTime;
    Fdate1 := Fdate1 - DayOf(Fdate1) + 1;
    Fdate2 := IncMonth(Fdate1, 1);
    dxBarSubItem1.Caption := FormatDateTime('mmmm yyyy', Fdate1);

    Query_OrdersPay.Close;
    Query_OrdersPay.Parameters.ParamByName('date_begin').Value := Fdate1;
    Query_OrdersPay.Parameters.ParamByName('date_end').Value := Fdate2;
    Query_OrdersPay.Open;

    Query_OrdersPaySum.Close;
    Query_OrdersPaySum.Parameters.ParamByName('date_begin').Value := Fdate1;
    Query_OrdersPaySum.Parameters.ParamByName('date_end').Value := Fdate2;
    Query_OrdersPaySum.Open;

    Query_OrdersPay.Locate('orders_pay_id', orders_pay_id, [loCaseInsensitive]);
    if cxGrid1DBBandedTableView1.Controller.FocusedRecord <> nil then  cxGrid1DBBandedTableView1.Controller.FocusedRecord.Selected := True;
  end else begin
    Application.MessageBox('Заявка не найдена.', 'Сообщение', MB_ICONINFORMATION or MB_OK);
  end;

  Q.Free;
  Screen.Cursor := crDefault;
end;

procedure TfmOrdersPay.LocateOrderdPayDetailID(orders_pay_detail_id: integer);
var Q: TADOQuery;
begin
  Screen.Cursor := crHourGlass;

  Q := TADOQuery.Create(nil);
  Q.Connection := fmMain.Lis;
  Q.SQL.Add('SELECT * FROM view_orders_pay_detail WHERE orders_pay_detail_id = ' + IntToStr(orders_pay_detail_id));
  Q.Open;

  if Q.RecordCount > 0 then begin
    Fdate1 := Q.FieldByName('date_enter').AsDateTime;
    Fdate1 := Fdate1 - DayOf(Fdate1) + 1;
    Fdate2 := IncMonth(Fdate1, 1);
    dxBarSubItem1.Caption := FormatDateTime('mmmm yyyy', Fdate1);

    Query_OrdersPay.Close;
    Query_OrdersPay.Parameters.ParamByName('date_begin').Value := Fdate1;
    Query_OrdersPay.Parameters.ParamByName('date_end').Value := Fdate2;
    Query_OrdersPay.Open;

    Query_OrdersPaySum.Close;
    Query_OrdersPaySum.Parameters.ParamByName('date_begin').Value := Fdate1;
    Query_OrdersPaySum.Parameters.ParamByName('date_end').Value := Fdate2;
    Query_OrdersPaySum.Open;

    Query_OrdersPay.Locate('orders_pay_id', Q.FieldByName('orders_pay_id').AsInteger, [loCaseInsensitive]);
    if cxGrid1DBBandedTableView1.Controller.FocusedRecord <> nil then  cxGrid1DBBandedTableView1.Controller.FocusedRecord.Selected := True;
  end else begin
    Application.MessageBox('Заявка не найдена.', 'Сообщение', MB_ICONINFORMATION or MB_OK);
  end;

  Q.Free;
  Screen.Cursor := crDefault;
end;

end.

