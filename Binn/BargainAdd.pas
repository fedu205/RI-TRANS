unit BargainAdd;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, DateUtils, XMLDoc,
  Dialogs, cxGraphics, Menus, cxLookAndFeelPainters, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, DB, cxDBData, dxBar, cxClasses, Buttons, cxGridLevel, cxGridCustomTableView,
  cxGridTableView, cxGridBandedTableView, cxGridDBBandedTableView, cxControls, cxGridCustomView,
  cxGrid, cxSplitter, cxCheckBox, StdCtrls, cxButtons, cxButtonEdit, cxDropDownEdit, cxTextEdit, DSIntf,
  cxMaskEdit, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, cxContainer, cxLabel, ExtCtrls, Default,
  cxCurrencyEdit, cxPropertiesStore, ADODB, cxGroupBox, cxCalendar, DBClient, cxGridDBTableView, cxPC,
  cxRichEdit, cxMemo, cxRadioGroup, ComCtrls, cxLookAndFeels, StrUtils, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel,
  dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMetropolis, dxSkinMetropolisDark, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinPumpkin,
  dxSkinSeven, dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus, dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008,
  dxSkinTheAsphaltWorld, dxSkinsDefaultPainters, dxSkinValentine, dxSkinVS2010, dxSkinWhiteprint, dxSkinXmas2008Blue, dxSkinscxPCPainter,
  dxBarBuiltInMenu, cxNavigator, dxSkinsdxBarPainter, dxSkinOffice2016Colorful,
  dxSkinOffice2016Dark, dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, dxSkinTheBezier, dxDateRanges, cxDataControllerConditionalFormattingRulesManagerDialog;

type
  TfmBargainAdd = class(TForm)
    Panel1: TPanel;
    Panel6: TPanel;
    Label4: TLabel;
    Label18: TLabel;
    Label27: TLabel;
    Label20: TLabel;
    Label3: TLabel;
    cxLookupComboBox1: TcxLookupComboBox;
    cxLookupComboBox2: TcxLookupComboBox;
    cxComboBox1: TcxComboBox;
    cxComboBox2: TcxComboBox;
    cxButtonEdit13: TcxButtonEdit;
    cxButtonEdit14: TcxButtonEdit;
    GroupBox4: TGroupBox;
    GroupBox1: TGroupBox;
    Label11: TLabel;
    Label14: TLabel;
    cxCheckBox4: TcxCheckBox;
    cxButtonEdit5: TcxButtonEdit;
    cxButtonEdit6: TcxButtonEdit;
    cxButtonEdit7: TcxButtonEdit;
    cxButtonEdit8: TcxButtonEdit;
    cxTextEdit14: TcxTextEdit;
    cxButtonEdit11: TcxButtonEdit;
    cxButtonEdit12: TcxButtonEdit;
    cxTextEdit16: TcxTextEdit;
    Panel2: TPanel;
    Panel3: TPanel;
    cxLabel1: TcxLabel;
    cxGrid1: TcxGrid;
    cxGrid1DBBandedTableView1: TcxGridDBBandedTableView;
    cxGrid1Level1: TcxGridLevel;
    Panel4: TPanel;
    cxLabel2: TcxLabel;
    cxSplitter1: TcxSplitter;
    Panel5: TPanel;
    BitBtn2: TBitBtn;
    BitBtn1: TBitBtn;
    dxBarManager1: TdxBarManager;
    Panel7: TPanel;
    cxPropertiesStore1: TcxPropertiesStore;
    Query_Client: TADOQuery;
    DS_Client: TDataSource;
    Query_TypeBargain: TADOQuery;
    DS_TypeBargain: TDataSource;
    Panel9: TPanel;
    DS_Currency: TDataSource;
    Query_Currency: TADOQuery;
    ClientDS_BargainRail: TClientDataSet;
    ClientDS_BargainRailid: TAutoIncField;
    ClientDS_Bargain: TClientDataSet;
    AutoIncField1: TAutoIncField;
    ClientDS_Bargaincontract_id: TIntegerField;
    ClientDS_Bargaintype_bargain_id: TIntegerField;
    ClientDS_Bargaincurrency_id: TIntegerField;
    ClientDS_BargainkargoGNG_id: TIntegerField;
    ClientDS_BargainkargoGNG_cod: TStringField;
    ClientDS_BargainkargoGNG_name: TStringField;
    ClientDS_BargainkargoETSNG_id: TIntegerField;
    ClientDS_BargainkargoETSNG_cod: TStringField;
    ClientDS_BargainkargoETSNG_name: TStringField;
    ClientDS_BargainkargoETSNG_add_id: TIntegerField;
    ClientDS_BargainkargoETSNG_add_name: TStringField;
    ClientDS_BargainkargoETSNG_add_cod: TStringField;
    ClientDS_BargainkargoETSNG_group_name: TStringField;
    ClientDS_Bargainstate_begin_id: TIntegerField;
    ClientDS_Bargainstate_begin_name: TStringField;
    ClientDS_Bargainstate_end_id: TIntegerField;
    ClientDS_Bargainstate_end_name: TStringField;
    ClientDS_Bargainnode_begin_id: TIntegerField;
    ClientDS_Bargainnode_begin_cod: TStringField;
    ClientDS_Bargainnode_begin_name: TStringField;
    ClientDS_Bargainnode_end_id: TIntegerField;
    ClientDS_Bargainnode_end_cod: TStringField;
    ClientDS_Bargainnode_end_name: TStringField;
    DS_RateClient: TDataSource;
    ClientDS_RateClient: TClientDataSet;
    CurrencyField1: TCurrencyField;
    CurrencyField2: TCurrencyField;
    CurrencyField3: TCurrencyField;
    StringField2: TStringField;
    StringField11: TStringField;
    StringField13: TStringField;
    ClientDS_RateClientfirm_customer_name: TStringField;
    ClientDS_RateClientrate_id: TIntegerField;
    ClientDS_RateClientcontract_cod: TStringField;
    ClientDS_RateCliented_izm_name: TStringField;
    ClientDS_RateClientbrief_name: TStringField;
    cxGrid1DBBandedTableView1rate_id: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1contract_cod: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1firm_customer_name: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1add_count: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1ed_izm_name: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1add_sum: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1brief_name: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1node_begin_name: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1node_end_name: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1kargoETSNG_name: TcxGridDBBandedColumn;
    dxBarPopupMenu1: TdxBarPopupMenu;
    dxBarButton7: TdxBarButton;
    dxBarButton8: TdxBarButton;
    dxBarButton9: TdxBarButton;
    DS_RateAgent: TDataSource;
    ClientDS_RateAgent: TClientDataSet;
    IntegerField1: TIntegerField;
    StringField1: TStringField;
    StringField3: TStringField;
    CurrencyField4: TCurrencyField;
    StringField4: TStringField;
    CurrencyField5: TCurrencyField;
    CurrencyField6: TCurrencyField;
    StringField5: TStringField;
    StringField6: TStringField;
    StringField7: TStringField;
    StringField8: TStringField;
    cxGrid2: TcxGrid;
    cxGrid2DBBandedTableView1: TcxGridDBBandedTableView;
    cxGrid2DBBandedTableView1rate_id: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1contract_cod: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1firm_customer_name: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1add_count: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1ed_izm_name: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1add_sum: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1brief_name: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1node_begin_name: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1node_end_name: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1kargoETSNG_name: TcxGridDBBandedColumn;
    cxGridLevel1: TcxGridLevel;
    dxBarPopupMenu2: TdxBarPopupMenu;
    ClientDS_RateAgentcontract_set: TIntegerField;
    ClientDS_RateClientcontract_set: TIntegerField;
    cxGrid1DBBandedTableView1contract_set: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1contract_set: TcxGridDBBandedColumn;
    ClientDS_Bargain_AddDistance: TClientDataSet;
    ClientDS_Bargain_AddDistanceid: TAutoIncField;
    ClientDS_Bargain_AddDistancedistance_num: TIntegerField;
    ClientDS_Bargain_AddDistancenode_id: TIntegerField;
    ClientDS_Bargain_AddDistancenode_name: TStringField;
    ClientDS_Bargain_AddDistancenode_cod: TStringField;
    ClientDS_Bargain_AddDistancenode_type_id: TIntegerField;
    ClientDS_Bargain_AddDistancenode_type_name: TStringField;
    ClientDS_Bargain_AddPayers: TClientDataSet;
    AutoIncField4: TAutoIncField;
    ClientDS_Bargain_AddPayersfirm_id: TIntegerField;
    ClientDS_Bargain_AddPayersstate_id: TIntegerField;
    ClientDS_Bargain_AddPayersfirm_name: TStringField;
    ClientDS_Bargain_AddPayersstate_name: TStringField;
    ClientDS_RateClientadd_sum_alt: TCurrencyField;
    ClientDS_RateAgentadd_sum_alt: TCurrencyField;
    cxGrid1DBBandedTableView1add_sum_alt: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1add_sum_alt: TcxGridDBBandedColumn;
    ClientDS_RateAgenttype_add_name: TStringField;
    ClientDS_RateClienttype_add_name: TStringField;
    cxGrid1DBBandedTableView1type_add_name: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1type_add_name: TcxGridDBBandedColumn;
    dxBarButton1: TdxBarButton;
    cxPageControl1: TcxPageControl;
    cxTabSheet1: TcxTabSheet;
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
    ClientDS_Bargain_AddDistanceglobal_id: TIntegerField;
    ClientDS_Bargain_AddDistanceadd_distance_id: TIntegerField;
    ClientDS_Bargain_AddPayersglobal_id: TIntegerField;
    ClientDS_Bargain_AddPayersadd_payers_id: TIntegerField;
    Label6: TLabel;
    cxComboBox3: TcxComboBox;
    cxComboBox4: TcxComboBox;
    Label10: TLabel;
    cxLookupComboBox4: TcxLookupComboBox;
    BitBtn4: TBitBtn;
    Query_Agreement: TADOQuery;
    DS_Agreement: TDataSource;
    ClientDS_BargainRailbargain_rail_id: TIntegerField;
    ClientDS_BargainRailbargain_add_id: TIntegerField;
    ClientDS_BargainRailcalc_round_weight: TIntegerField;
    ClientDS_BargainRailcalc_kargo_min_norm: TCurrencyField;
    ClientDS_BargainRailcalc_set_grp: TBooleanField;
    ClientDS_BargainRailkargoETSNG_id: TIntegerField;
    ClientDS_BargainRailkargoETSNG_cod: TStringField;
    ClientDS_BargainRailkargoETSNG_name: TStringField;
    ClientDS_BargainRailkargoETSNG_add_id: TIntegerField;
    ClientDS_BargainRailkargoETSNG_add_cod: TStringField;
    ClientDS_BargainRailkargoETSNG_add_name: TStringField;
    ClientDS_BargainRailkargoGNG_id: TIntegerField;
    ClientDS_BargainRailkargoGNG_cod: TStringField;
    ClientDS_BargainRailkargoGNG_name: TStringField;
    ClientDS_BargainRailstate_begin_id: TIntegerField;
    ClientDS_BargainRailstate_begin_cod: TStringField;
    ClientDS_BargainRailstate_begin_name: TStringField;
    ClientDS_BargainRailstate_end_id: TIntegerField;
    ClientDS_BargainRailstate_end_name: TStringField;
    ClientDS_BargainRailstate_end_cod: TStringField;
    ClientDS_BargainRailnode_begin_id: TIntegerField;
    ClientDS_BargainRailnode_begin_cod: TStringField;
    ClientDS_BargainRailnode_begin_name: TStringField;
    ClientDS_BargainRailnode_end_id: TIntegerField;
    ClientDS_BargainRailnode_end_cod: TStringField;
    ClientDS_BargainRailnode_end_name: TStringField;
    ClientDS_BargainRailcit_id: TIntegerField;
    ClientDS_BargainRailtype_kontener_id: TIntegerField;
    ClientDS_BargainRailset_attr_self: TBooleanField;
    ClientDS_BargainRailcount_vagon: TCurrencyField;
    ClientDS_BargainRailcount_weight: TCurrencyField;
    ClientDS_BargainRailcount_day_vagon: TCurrencyField;
    ClientDS_BargainRailtelegram_num: TStringField;
    ClientDS_BargainRailpay_other_road: TStringField;
    ClientDS_BargainAdd: TClientDataSet;
    ClientDS_BargainFact: TClientDataSet;
    AutoIncField3: TAutoIncField;
    ClientDS_BargainFactbargain_fact_id: TIntegerField;
    ClientDS_BargainFactfact_id: TIntegerField;
    ClientDS_BargainFactbargain_add_id: TIntegerField;
    ClientDS_BargainFactfact_rate_not_nds: TCurrencyField;
    ClientDS_BargainFactfact_rate: TCurrencyField;
    ClientDS_BargainFactfact_count: TCurrencyField;
    ClientDS_BargainFactfact_sum: TCurrencyField;
    ClientDS_BargainRailfirm_sender_id: TIntegerField;
    ClientDS_BargainRailfirm_sender_name: TStringField;
    ClientDS_BargainRailfirm_reciever_id: TIntegerField;
    ClientDS_BargainRailfirm_reciever_name: TStringField;
    ClientDS_Bargaindate_period: TDateField;
    ClientDS_BargainRailkargoETSNG_group_name: TStringField;
    ClientDS_Fact: TClientDataSet;
    ClientDS_Factfact_id: TIntegerField;
    ClientDS_Factbargain_id: TIntegerField;
    ClientDS_Factnum_document: TStringField;
    ClientDS_Factnum_document_pref: TStringField;
    ClientDS_Factnum_vagon: TIntegerField;
    ClientDS_Factnum_konten: TStringField;
    ClientDS_Factsub_cod_self: TStringField;
    ClientDS_Factdate_from_to: TDateTimeField;
    ClientDS_Factdatpr: TDateTimeField;
    ClientDS_Facttype_kontener_name: TStringField;
    ClientDS_Factfact_weight: TCurrencyField;
    ClientDS_Factcalc_weight: TCurrencyField;
    ClientDS_Facttransport_pay: TCurrencyField;
    ClientDS_Factnds: TCurrencyField;
    ClientDS_Factfirm_info_name: TStringField;
    ClientDS_Factcalc_weight_check: TBooleanField;
    ClientDS_Factxml_reply_id: TIntegerField;
    ClientDS_Factfolder: TStringField;
    ClientDS_Factfact_etran_comment: TStringField;
    ClientDS_Factfact_users_comment: TStringField;
    ClientDS_Factglobal_color: TIntegerField;
    ClientDS_Factdate_ready: TDateTimeField;
    ClientDS_Factnode_begin_name: TStringField;
    ClientDS_Factnode_end_name: TStringField;
    ClientDS_Factdate_delivery: TDateTimeField;
    ClientDS_Factetran_owner_name: TStringField;
    ClientDS_Factbargain_new_id: TIntegerField;
    ClientDS_BargainFactadd_id: TIntegerField;
    ClientDS_BargainRailadd_id: TIntegerField;
    Label12: TLabel;
    cxTextEdit13: TcxTextEdit;
    ClientDS_Bargain_AddDistanceadd_id: TIntegerField;
    ClientDS_Bargain_AddPayers_add_id: TIntegerField;
    ClientDS_BargainAddadd_id: TAutoIncField;
    ClientDS_BargainAddbargain_add_id: TIntegerField;
    ClientDS_BargainAddbargain_id: TIntegerField;
    ClientDS_BargainAddtype_add_id: TIntegerField;
    ClientDS_BargainAddcontract_id: TIntegerField;
    ClientDS_BargainAddcurrency_id: TIntegerField;
    ClientDS_BargainAddtype_nds_id: TIntegerField;
    ClientDS_BargainAdded_izm_id: TIntegerField;
    ClientDS_BargainAddservice_id: TIntegerField;
    ClientDS_BargainAddadd_sum: TCurrencyField;
    ClientDS_BargainAddadd_count: TCurrencyField;
    ClientDS_BargainAddcomment: TStringField;
    ClientDS_BargainAddtype_contract: TIntegerField;
    ClientDS_BargainAddcontract_set: TIntegerField;
    ClientDS_BargainAddset_include_nds: TBooleanField;
    ClientDS_BargainAddtype_nds_cod: TStringField;
    ClientDS_BargainAdded_izm_cod: TStringField;
    ClientDS_BargainAddexchange_USD_val: TCurrencyField;
    ClientDS_BargainAddexchange_EUR_val: TCurrencyField;
    ClientDS_BargainAddexchange_CHF_val: TCurrencyField;
    ClientDS_BargainFacttype_vagon_id: TIntegerField;
    ClientDS_BargainFacttype_send_id: TIntegerField;
    ClientDS_BargainFacttype_send_name: TStringField;
    ClientDS_BargainFacttype_vagon_name: TStringField;
    ClientDS_BargainRate: TClientDataSet;
    AutoIncField2: TAutoIncField;
    ClientDS_BargainRatebargain_rate_id: TIntegerField;
    ClientDS_BargainRatebargain_add_id: TIntegerField;
    ClientDS_BargainRatetype_vagon_id: TIntegerField;
    ClientDS_BargainRatetype_vagon_name: TStringField;
    ClientDS_BargainRatetype_send_id: TIntegerField;
    ClientDS_BargainRatetype_send_name: TStringField;
    ClientDS_BargainRateweight: TCurrencyField;
    ClientDS_BargainRaterate_val: TCurrencyField;
    ClientDS_BargainRateset_one: TBooleanField;
    ClientDS_BargainRateadd_id: TIntegerField;
    ClientDS_BargainFactset_main: TIntegerField;
    ClientDS_BargainAddcontract_cod: TStringField;
    ClientDS_BargainAdded_izm_name: TStringField;
    ClientDS_BargainAddfirm_customer_name: TStringField;
    ClientDS_BargainAddtype_add_name: TStringField;
    ClientDS_BargainAddbrief_name: TStringField;
    ClientDS_BargainAddadd_sum_alt: TCurrencyField;
    ClientDS_BargainAddbrief_name_alt: TStringField;
    dxBarButton2: TdxBarButton;
    ClientDS_Bargaincount_day_vagon: TCurrencyField;
    ClientDS_Bargaincount_vagon: TCurrencyField;
    ClientDS_Bargaincount_weight: TCurrencyField;
    ClientDS_BargainRailset_list_rate: TBooleanField;
    ClientDS_BargainAddtype_exchange_id: TIntegerField;
    ClientDS_BargainFactexchange_date: TDateField;
    ClientDS_BargainAddtype_calc_id: TIntegerField;
    ClientDS_BargainAddadd_rate: TCurrencyField;
    dxBarButton3: TdxBarButton;
    ClientDS_Factset_main: TBooleanField;
    dxBarButton4: TdxBarButton;
    ClientDS_Factkargo_capacity: TCurrencyField;
    ClientDS_BargainAddtype_calc_name: TStringField;
    ClientDS_RateClienttype_calc_name: TStringField;
    ClientDS_RateAgenttype_calc_name: TStringField;
    cxGrid1DBBandedTableView1type_calc_name: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1type_calc_name: TcxGridDBBandedColumn;
    dxBarButton5: TdxBarButton;
    dxBarButton6: TdxBarButton;
    cxCurrencyEdit1: TcxCurrencyEdit;
    cxCurrencyEdit15: TcxCurrencyEdit;
    cxCurrencyEdit16: TcxCurrencyEdit;
    cxCurrencyEdit2: TcxCurrencyEdit;
    cxCurrencyEdit3: TcxCurrencyEdit;
    cxCurrencyEdit4: TcxCurrencyEdit;
    cxLookupComboBox3: TcxLookupComboBox;
    Label13: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label19: TLabel;
    Label2: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    Label7: TLabel;
    cxGroupBox5: TcxGroupBox;
    cxGrid3: TcxGrid;
    cxGridDBBandedTableView1: TcxGridDBBandedTableView;
    cxGrid1DBBandedTableView1id: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1add_distance_id: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1distance_num: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1node_id: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1node_name: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1node_cod: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1node_type_id: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1node_type_name: TcxGridDBBandedColumn;
    cxGridLevel2: TcxGridLevel;
    cxGridDBBandedTableView1state_name: TcxGridDBBandedColumn;
    cxGridDBBandedTableView1state_id: TcxGridDBBandedColumn;
    cxGridDBBandedTableView1road_name: TcxGridDBBandedColumn;
    cxGridDBBandedTableView1road_id: TcxGridDBBandedColumn;
    dxBarPopupMenu3: TdxBarPopupMenu;
    dxBarButton10: TdxBarButton;
    dxBarButton11: TdxBarButton;
    dxBarButton12: TdxBarButton;
    dxBarButton13: TdxBarButton;
    ClientDS_Bargain_AddDistancestate_id: TIntegerField;
    ClientDS_Bargain_AddDistancestate_name: TStringField;
    ClientDS_Bargain_AddDistanceroad_id: TIntegerField;
    ClientDS_Bargain_AddDistanceroad_name: TStringField;
    ClientDS_Distance: TClientDataSet;
    AutoIncField5: TAutoIncField;
    IntegerField3: TIntegerField;
    IntegerField4: TIntegerField;
    IntegerField5: TIntegerField;
    StringField9: TStringField;
    StringField10: TStringField;
    IntegerField6: TIntegerField;
    StringField12: TStringField;
    IntegerField7: TIntegerField;
    IntegerField8: TIntegerField;
    StringField14: TStringField;
    IntegerField9: TIntegerField;
    StringField15: TStringField;
    DS_Distance: TDataSource;
    dxBarSubItem1: TdxBarSubItem;
    dxBarSubItem2: TdxBarSubItem;
    ClientDS_Distancenode_type_cod: TStringField;
    ClientDS_BargainAdddate_period: TDateTimeField;
    ClientDS_BargainAdddate_period_finance: TDateTimeField;
    ClientDS_BargainAdddate_period_service: TDateTimeField;
    ClientDS_BargainAddservice_kind_id: TIntegerField;
    ClientDS_BargainAddservice_kind: TStringField;
    ClientDS_BargainAddservice_kind_inv: TStringField;
    ClientDS_BargainAddservice_kind_rep_id: TIntegerField;
    ClientDS_BargainAddservice_kind_rep: TStringField;
    ClientDS_BargainAddservice_kind_rep_inv: TStringField;
    procedure FormDestroy(Sender: TObject);
    procedure cxGrid1DBBandedTableView1CustomDrawCell(Sender: TcxCustomGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
    procedure cxGrid2DBBandedTableView1CustomDrawCell(Sender: TcxCustomGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
    procedure dxBarButton1Click(Sender: TObject);
    procedure cxCurrencyEdit14PropertiesEditValueChanged(Sender: TObject);
    procedure cxLookupComboBox3PropertiesEditValueChanged(Sender: TObject);
    procedure cxGrid2DBBandedTableView1FocusedItemChanged(Sender: TcxCustomGridTableView; APrevFocusedItem, AFocusedItem: TcxCustomGridTableItem);
    procedure cxGrid1DBBandedTableView1FocusedItemChanged(Sender: TcxCustomGridTableView; APrevFocusedItem, AFocusedItem: TcxCustomGridTableItem);
    procedure cxGrid2DBBandedTableView1CustomDrawColumnHeader(Sender: TcxGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxGridColumnHeaderViewInfo; var ADone: Boolean);
    procedure dxBarButton9Click(Sender: TObject);
    procedure dxBarButton8Click(Sender: TObject);
    procedure dxBarButton7Click(Sender: TObject);
    procedure cxButtonEdit14PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure cxCheckBox4PropertiesEditValueChanged(Sender: TObject);
    procedure cxButtonEdit8PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure cxButtonEdit11PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure cxButtonEdit5PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure cxLookupComboBox1PropertiesChange(Sender: TObject);
    procedure cxComboBox1PropertiesChange(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure dxBarButton2Click(Sender: TObject);
    procedure dxBarButton3Click(Sender: TObject);
    procedure dxBarButton4Click(Sender: TObject);
    procedure dxBarButton5Click(Sender: TObject);
    procedure dxBarButton6Click(Sender: TObject);
    procedure dxBarButton10Click(Sender: TObject);
    procedure cxGrid1DBBandedTableView1node_namePropertiesButtonClick(
      Sender: TObject; AButtonIndex: Integer);
    procedure cxGrid1DBBandedTableView1node_codPropertiesButtonClick(
      Sender: TObject; AButtonIndex: Integer);
    procedure cxGrid1DBBandedTableView1node_type_namePropertiesButtonClick(
      Sender: TObject; AButtonIndex: Integer);
    procedure cxGridDBBandedTableView1state_namePropertiesButtonClick(
      Sender: TObject; AButtonIndex: Integer);
    procedure cxGridDBBandedTableView1road_namePropertiesButtonClick(
      Sender: TObject; AButtonIndex: Integer);
  private
    Ftype_action: integer;
    Fset_calc_enabled : boolean; // Автоматический расчет разрешен


    Fbargain_id       : integer;
    Fcontract_id      : integer;
    Fagreement_id     : integer;
    Fdate_period      : integer;
    FkargoGNG_id      : integer;
    FkargoETSNG_id    : integer;
    FkargoETSNG_add_id: integer;
    Ftype_bargain_id  : integer;
    Fcurrency_id      : integer;

    Fset_run_dll  : boolean; // Запущена как DLL
    Fconnect      : TADOConnection;
    Fusr_pwd_lis  : PUser_pwd;
    Fusr_pwd_docs : PUser_pwd;
    Fschedule_id  : integer;

    procedure BargainToClientDS();
    procedure SetInsert(bargain_id: integer);
    procedure SetUpdate(bargain_id: integer);
    procedure SetKargoAdd(set_kargo_add: boolean);
    procedure SetDatePeriod(date_period: TDateTime);
    function  GetDatePeriod(): TDateTime;
    procedure SetDatePeriodService(date_period_service: TDateTime);
    function  GetDatePeriodService(): TDateTime;
    function  GetDatePeriodFirst(): TDateTime;
    function  GetDatePeriodLast (): TDateTime;
    function  FindInfObj(caption_name: string; table_name: string; set_cod: boolean; var id: integer; var cod: string; var name: string): boolean;
    procedure RefreshClientDS_Rate();
    procedure CalcSum();
    procedure LocateBargainAdd(bargain_add_id: integer);
    procedure ShowBargainAdd(bargain_add_id: integer);
    function  SaveBargain(): boolean;
    procedure CopyAdd(add_id: integer; type_contract: integer);

  public
    constructor Create(AOwner: TApplication); reintroduce;
  published
    property _SetInsert    : integer   write SetInsert;
    property _SetUpdate    : integer   write SetUpdate;
    property _SetKargoAdd  : boolean   write SetKargoAdd;
    property _LocateBargainAdd : integer   write LocateBargainAdd;
    property _ShowBargainAdd   : integer   write ShowBargainAdd;

    property _DatePeriod            : TDateTime read GetDatePeriod write SetDatePeriod;
    property _DatePeriodService     : TDateTime read GetDatePeriodService write SetDatePeriodService;
    property _GetBargainID          : integer   read Fbargain_id;
    property _GetDatePeriodFirst    : TDateTime read GetDatePeriodFirst;
    property _GetDatePeriodLast     : TDateTime read GetDatePeriodLast;

  end;

var
  fmBargainAdd: TfmBargainAdd;

implementation

uses main, Contract, Filter, Raznoe, OrdersAgreeRailAdd, Other, BargainRailAdd,
  BargainContAdd, BargainShipAdd;

{$R *.dfm}

////////////////////////////////////////////////////////////////////////////////
// ОПИСАНИЕ ClientDataSet на форме
//ClientDS_Fact: TClientDataSet;			          // Список вагонов привязанных к перевозки
//
//ClientDS_Bargain: TClientDataSet;		          // Временный Client для передачи всех параметров в дочерние формы
//
//ClientDS_BargainAdd: TClientDataSet;		      // Услуги 				                    (Primary Key = add_id)
//ClientDS_BargainRail: TClientDataSet;		      // ЖД состовляющая услуги		          (Primary Key = id, Foreign key = add_id)
//ClientDS_BargainFact: TClientDataSet;		      // Ставка по вагонам в услуге		      (Primary Key = id, Foreign key = add_id)
//ClientDS_Bargain_AddDistance: TClientDataSet; // Дистанция 	  (привязка к услугам)	(Primary Key = id, Foreign key = add_id)
//ClientDS_Bargain_AddPayers: TClientDataSet;	  // Платильщики	(привязка к услугам)	(Primary Key = id, Foreign key = add_id)
//
//Временные Client'ы для отображения
//ClientDS_RateClient: TClientDataSet;
//ClientDS_RateAgent: TClientDataSet;
//
//Документооборот
//ClientDS_ScheduleHistory: TClientDataSet;
////////////////////////////////////////////////////////////////////////////////


constructor TfmBargainAdd.Create(AOwner: TApplication);
begin
  Screen.Cursor := crHourglass;
  inherited Create(AOwner);

  Fset_calc_enabled := False;

  Fset_run_dll := False;
  Fconnect     := fmMain.Lis;
  Fusr_pwd_docs:= usr_pwd_docs;
  Fusr_pwd_lis := usr_pwd;

  Ftype_action      := 0;

  Fbargain_id       := -9;
  Fcontract_id      := -9;
  Fagreement_id     := -9;
  Fdate_period      := -9;
  FkargoGNG_id      := -9;
  FkargoETSNG_id    := -9;
  FkargoETSNG_add_id:= -9;
  Ftype_bargain_id  := -9;
  Fcurrency_id      := -9;

  _DatePeriod       := Date;
  _DatePeriodService:= Date;
  
  Query_TypeBargain.Open;
  Query_Currency.Open;

  ClientDS_BargainRail.CreateDataSet;
  ClientDS_BargainRate.CreateDataSet;
  ClientDS_BargainAdd.CreateDataSet;
  ClientDS_Bargain_AddDistance.CreateDataSet;
  ClientDS_Bargain_AddPayers.CreateDataSet;
  ClientDS_BargainFact.CreateDataSet;
  ClientDS_Bargain.CreateDataSet;
  ClientDS_Fact.CreateDataSet;
  ClientDS_RateClient.CreateDataSet;
  ClientDS_RateAgent.CreateDataSet;
  ClientDS_Distance.CreateDataSet;

  ClientDS_BargainRail.LogChanges := False;
  ClientDS_BargainRate.LogChanges := False;
  ClientDS_BargainAdd.LogChanges := False;
  ClientDS_Bargain_AddDistance.LogChanges := False;
  ClientDS_Bargain_AddPayers.LogChanges := False;
  ClientDS_BargainFact.LogChanges := False;
  ClientDS_Bargain.LogChanges := False;
  ClientDS_Fact.LogChanges := False;
  ClientDS_RateClient.LogChanges := False;
  ClientDS_RateAgent.LogChanges := False;
  ClientDS_Distance.LogChanges := False;


  cxPageControl1.ActivePageIndex := 0;
  cxLookupComboBox3.EditValue := Query_Currency.FieldByName('currency_id').Value;
  cxLookupComboBox2.EditValue := Query_TypeBargain.FieldByName('inf_obj_id').Value;

  StoreRegistryGrid(rgLoad,'\Software\Lis1\BargainAdd_Grids', cxGrid1DBBandedTableView1);
  StoreRegistryGrid(rgLoad,'\Software\Lis1\BargainAdd_Grids', cxGrid2DBBandedTableView1);

  MonitorEventFormOpen('OPEN_FORM', self.Name, fmMain.Lis, -9);

  Fset_calc_enabled := True;
  Screen.Cursor := crDefault;
end;

procedure TfmBargainAdd.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if Fset_run_dll then Fconnect.Free;
  Action := caFree;
end;

procedure TfmBargainAdd.FormDestroy(Sender: TObject);
begin
  StoreRegistryGrid(rgSave,'\Software\Lis1\BargainAdd_Grids', cxGrid1DBBandedTableView1);
  StoreRegistryGrid(rgSave,'\Software\Lis1\BargainAdd_Grids', cxGrid2DBBandedTableView1);
end;

procedure TfmBargainAdd.SetInsert(bargain_id:  integer);
var Q: TADOQuery;
begin
  Q := TADOQuery.Create(nil);
  Q.Connection := fmMain.Lis;
  Q.SQL.Add('SELECT TOP 1 * FROM inf_obj WHERE type_inf_id = -102 AND inf_obj_cod = ''3''');
  Q.Open;

  ClientDS_Distance.Append;
  ClientDS_Distance.FieldByName('distance_num'    ).Value := 1;
  ClientDS_Distance.FieldByName('node_type_id'    ).Value := Q.FieldByName('inf_obj_id').Value;
  ClientDS_Distance.FieldByName('node_type_cod'   ).Value := Q.FieldByName('inf_obj_cod').Value;
  ClientDS_Distance.FieldByName('node_type_name'  ).Value := Q.FieldByName('inf_obj_name').Value;
  ClientDS_Distance.FieldByName('global_id'       ).Value := -9;
  ClientDS_Distance.Post;

  Q.SQL.Clear;
  Q.SQL.Add('SELECT TOP 1 * FROM inf_obj WHERE type_inf_id = -102 AND inf_obj_cod = ''4''');
  Q.Open;

  ClientDS_Distance.Append;
  ClientDS_Distance.FieldByName('distance_num'    ).Value := 2;
  ClientDS_Distance.FieldByName('node_type_id'    ).Value := Q.FieldByName('inf_obj_id').Value;
  ClientDS_Distance.FieldByName('node_type_cod'   ).Value := Q.FieldByName('inf_obj_cod').Value;
  ClientDS_Distance.FieldByName('node_type_name'  ).Value := Q.FieldByName('inf_obj_name').Value;
  ClientDS_Distance.FieldByName('global_id'       ).Value := -9;
  ClientDS_Distance.Post;

  Q.Free;

end;

procedure TfmBargainAdd.SetUpdate(bargain_id:  integer);
var      Q : TADOQuery;
    SP_get : TADOStoredProc;
         i : integer;
begin
  Screen.Cursor := crHourGlass;
  Fset_calc_enabled := False;
  ShowTextMessage('Загрузка перевозки...', False);

  Ftype_action := 1;
  Fbargain_id  := bargain_id;

  Q := TADOQuery.Create(nil);
  Q.Connection := Fconnect;

  SP_get := TADOStoredProc.Create(nil);
  SP_get.Connection := Fconnect;
  SP_get.ProcedureName := 'sp_bargain_new_GET';
  SP_get.Parameters.Refresh;
  SP_get.Parameters.ParamByName('@bargain_id').Value := Fbargain_id;
  SP_get.Open;



  Caption := Caption + ' [№ записи ' + IntToStr(Fbargain_id) + ']';

  Fcontract_id       := iif(SP_get.FieldByName('contract_id').IsNull,       -9, SP_get.FieldByName('contract_id').AsInteger);
  Fagreement_id      := iif(SP_get.FieldByName('agreement_id').IsNull,      -9, SP_get.FieldByName('agreement_id').AsInteger);
  FkargoGNG_id       := iif(SP_get.FieldByName('kargoGNG_id').IsNull,       -9, SP_get.FieldByName('kargoGNG_id').AsInteger);
  FkargoETSNG_id     := iif(SP_get.FieldByName('kargoETSNG_id').IsNull,     -9, SP_get.FieldByName('kargoETSNG_id').AsInteger);
  FkargoETSNG_add_id := iif(SP_get.FieldByName('kargoETSNG_add_id').IsNull, -9, SP_get.FieldByName('kargoETSNG_add_id').AsInteger);
  Ftype_bargain_id   := iif(SP_get.FieldByName('type_bargain_id').IsNull,   -9, SP_get.FieldByName('type_bargain_id').AsInteger);
  Fcurrency_id       := iif(SP_get.FieldByName('currency_id').IsNull,       -9, SP_get.FieldByName('currency_id').AsInteger);
  _DatePeriod        := SP_get.FieldByName('date_period').Value;
  _DatePeriodService := SP_get.FieldByName('date_period_service').Value;


  cxLookupComboBox1.EditValue := SP_get.FieldByName('contract_id').Value;
  cxLookupComboBox2.EditValue := SP_get.FieldByName('type_bargain_id').Value;
  cxLookupComboBox3.EditValue := SP_get.FieldByName('currency_id').Value;
  cxLookupComboBox4.EditValue := SP_get.FieldByName('agreement_id').Value;

  if SP_get.FieldByName('global_copy').IsNull then
    cxTextEdit13.EditValue := SP_get.FieldByName('bargain_cod').Value
  else
    cxTextEdit13.EditValue := '';


  cxButtonEdit5.EditValue  := SP_get.FieldByName('kargoETSNG_name').Value;
  cxButtonEdit6.EditValue  := SP_get.FieldByName('kargoETSNG_cod').Value;
  cxTextEdit14.EditValue   := SP_get.FieldByName('kargoETSNG_group_name').Value;

  _SetKargoAdd := iif(SP_get.FieldByName('kargoETSNG_group_cod').AsString = '9', True, False);
  cxButtonEdit11.EditValue := iif(SP_get.FieldByName('kargoETSNG_add_id').Value = null, null, SP_get.FieldByName('kargoETSNG_add_name').Value);
  cxButtonEdit12.EditValue := iif(SP_get.FieldByName('kargoETSNG_add_id').Value = null, null, SP_get.FieldByName('kargoETSNG_add_cod').Value);
  cxTextEdit16.EditValue   := iif(SP_get.FieldByName('kargoETSNG_add_id').Value = null, null, SP_get.FieldByName('kargoETSNG_add_group_name').Value);

  cxCheckBox4.Checked := iif(SP_get.FieldByName('kargoGNG_id').Value = null, False, True);
  cxButtonEdit8.EditValue := iif(SP_get.FieldByName('kargoGNG_id').Value = null, null, SP_get.FieldByName('kargoGNG_name').Value);
  cxButtonEdit7.EditValue := iif(SP_get.FieldByName('kargoGNG_id').Value = null, null, SP_get.FieldByName('kargoGNG_cod').Value);

  cxCurrencyEdit15.EditValue := SP_get.FieldByName('count_vagon').Value;
  cxCurrencyEdit3.EditValue  := SP_get.FieldByName('count_weight').Value;
  cxCurrencyEdit16.EditValue := SP_get.FieldByName('count_day_vagon').Value;


  Q.SQL.Clear();
  Q.SQL.Add('SELECT * FROM view_bargain_fact WHERE set_main = 1 AND bargain_new_id = ' + IntToStr(Fbargain_id) + ' ORDER BY fact_id');
  Q.Open;
  ShowTextMessage('Загрузка вагонов...', False);
  while not Q.Eof do begin
    ClientDS_Fact.Append();
    ClientDS_Fact.FieldByName('fact_id'           ).Value := Q.FieldByName('fact_id').Value;
    ClientDS_Fact.FieldByName('bargain_id'        ).Value := Q.FieldByName('bargain_id').Value;
    ClientDS_Fact.FieldByName('num_document'      ).Value := Q.FieldByName('num_document').Value;
    ClientDS_Fact.FieldByName('num_document_pref' ).Value := Q.FieldByName('num_document_pref').Value;
    ClientDS_Fact.FieldByName('num_vagon'         ).Value := Q.FieldByName('num_vagon').Value;
    ClientDS_Fact.FieldByName('num_konten'        ).Value := Q.FieldByName('num_konten').Value;
    ClientDS_Fact.FieldByName('sub_cod_self'      ).Value := Q.FieldByName('sub_cod_self').Value;
    ClientDS_Fact.FieldByName('date_from_to'      ).Value := Q.FieldByName('date_from_to').Value;
    ClientDS_Fact.FieldByName('datpr'             ).Value := Q.FieldByName('datpr').Value;
    ClientDS_Fact.FieldByName('type_kontener_name').Value := Q.FieldByName('type_kontener_name').Value;
    ClientDS_Fact.FieldByName('fact_weight'       ).Value := Q.FieldByName('fact_weight').Value;
    ClientDS_Fact.FieldByName('calc_weight'       ).Value := Q.FieldByName('calc_weight').Value;
    ClientDS_Fact.FieldByName('kargo_capacity'    ).Value := Q.FieldByName('kargo_capacity').Value;
    ClientDS_Fact.FieldByName('transport_pay'     ).Value := Q.FieldByName('transport_pay').Value;
    ClientDS_Fact.FieldByName('nds'               ).Value := Q.FieldByName('nds').Value;
    ClientDS_Fact.FieldByName('firm_info_name'    ).Value := Q.FieldByName('firm_info_name').Value;
    ClientDS_Fact.FieldByName('calc_weight_check' ).Value := Q.FieldByName('calc_weight_check').Value;
    ClientDS_Fact.FieldByName('xml_reply_id'      ).Value := Q.FieldByName('xml_reply_id').Value;
    ClientDS_Fact.FieldByName('folder'            ).Value := Q.FieldByName('folder').Value;
    ClientDS_Fact.FieldByName('fact_etran_comment').Value := Q.FieldByName('fact_etran_comment').Value;
    ClientDS_Fact.FieldByName('fact_users_comment').Value := Q.FieldByName('fact_users_comment').Value;
    ClientDS_Fact.FieldByName('global_color'      ).Value := Q.FieldByName('global_color').Value;
    ClientDS_Fact.FieldByName('date_ready'        ).Value := Q.FieldByName('date_ready').Value;
    ClientDS_Fact.FieldByName('node_begin_name'   ).Value := Q.FieldByName('node_begin_name').Value;
    ClientDS_Fact.FieldByName('node_end_name'     ).Value := Q.FieldByName('node_end_name').Value;
    ClientDS_Fact.FieldByName('date_delivery'     ).Value := Q.FieldByName('date_delivery').Value;
    ClientDS_Fact.FieldByName('etran_owner_name'  ).Value := Q.FieldByName('etran_owner_name').Value;
    ClientDS_Fact.FieldByName('bargain_new_id'    ).Value := Q.FieldByName('bargain_new_id').Value;
    ClientDS_Fact.FieldByName('set_main'          ).Value := Q.FieldByName('set_main').Value;
    ClientDS_Fact.Post();
    Q.Next();
  end;

  Q.SQL.Clear();
  Q.SQL.Add('SELECT * FROM view_bargain_new_add WHERE bargain_id = ' + IntToStr(Fbargain_id));
  Q.Open;
  ShowTextMessage('Загрузка услуг...', False);
  while not Q.Eof do begin
    ClientDS_BargainAdd.Append;
    ClientDS_BargainAdd.FieldByName('bargain_add_id'     ).Value := Q.FieldByName('bargain_add_id'   ).Value;
    ClientDS_BargainAdd.FieldByName('bargain_id'         ).Value := Q.FieldByName('bargain_id'       ).Value;
    ClientDS_BargainAdd.FieldByName('type_add_id'        ).Value := Q.FieldByName('type_add_id'      ).Value;
    ClientDS_BargainAdd.FieldByName('type_add_name'      ).Value := Q.FieldByName('type_add_name'    ).Value;
    ClientDS_BargainAdd.FieldByName('contract_id'        ).Value := Q.FieldByName('contract_id'      ).Value;
    ClientDS_BargainAdd.FieldByName('service_id'         ).Value := Q.FieldByName('service_id'       ).Value;
    ClientDS_BargainAdd.FieldByName('type_contract'      ).Value := Q.FieldByName('type_contract'    ).Value;
    ClientDS_BargainAdd.FieldByName('contract_set'       ).Value := Q.FieldByName('contract_set'     ).Value;
    ClientDS_BargainAdd.FieldByName('currency_id'        ).Value := Q.FieldByName('currency_id'      ).Value;
    ClientDS_BargainAdd.FieldByName('brief_name'         ).Value := Q.FieldByName('brief_name'       ).Value;
    ClientDS_BargainAdd.FieldByName('type_nds_id'        ).Value := Q.FieldByName('type_nds_id'      ).Value;
    ClientDS_BargainAdd.FieldByName('ed_izm_id'          ).Value := Q.FieldByName('ed_izm_id'        ).Value;
    ClientDS_BargainAdd.FieldByName('type_nds_cod'       ).Value := Q.FieldByName('type_nds_cod'     ).Value;
    ClientDS_BargainAdd.FieldByName('ed_izm_cod'         ).Value := Q.FieldByName('ed_izm_cod'       ).Value;
    ClientDS_BargainAdd.FieldByName('set_include_nds'    ).Value := Q.FieldByName('set_include_nds'  ).Value;
    ClientDS_BargainAdd.FieldByName('type_exchange_id'   ).Value := Q.FieldByName('type_exchange_id' ).Value;
    ClientDS_BargainAdd.FieldByName('add_rate'           ).Value := Q.FieldByName('add_rate'         ).Value;
    ClientDS_BargainAdd.FieldByName('add_count'          ).Value := Q.FieldByName('add_count'        ).Value;
    ClientDS_BargainAdd.FieldByName('type_calc_id'       ).Value := Q.FieldByName('type_calc_id'     ).Value;
    ClientDS_BargainAdd.FieldByName('type_calc_name'     ).Value := Q.FieldByName('type_calc_name'   ).Value;
    ClientDS_BargainAdd.FieldByName('exchange_USD_val'   ).Value := Q.FieldByName('exchange_USD_val' ).Value;
    ClientDS_BargainAdd.FieldByName('exchange_EUR_val'   ).Value := Q.FieldByName('exchange_EUR_val' ).Value;
    ClientDS_BargainAdd.FieldByName('exchange_CHF_val'   ).Value := Q.FieldByName('exchange_CHF_val' ).Value;
    ClientDS_BargainAdd.FieldByName('comment'            ).Value := Q.FieldByName('comment'          ).Value;
    ClientDS_BargainAdd.FieldByName('contract_cod'       ).Value := Q.FieldByName('contract_cod'     ).Value;
    ClientDS_BargainAdd.FieldByName('ed_izm_name'        ).Value := Q.FieldByName('ed_izm_name'      ).Value;
    ClientDS_BargainAdd.FieldByName('firm_customer_name' ).Value := Q.FieldByName('firm_customer_name').Value;
    ClientDS_BargainAdd.FieldByName('date_period'        ).Value := Q.FieldByName('date_period').Value;
    ClientDS_BargainAdd.FieldByName('date_period_finance').Value := Q.FieldByName('date_period_finance').Value;
    ClientDS_BargainAdd.FieldByName('date_period_service').Value := Q.FieldByName('date_period_service').Value;
    ClientDS_BargainAdd.FieldByName('service_kind_id'    ).Value := Q.FieldByName('service_kind_id').Value;
    ClientDS_BargainAdd.FieldByName('service_kind'       ).Value := Q.FieldByName('service_kind').Value;
    ClientDS_BargainAdd.FieldByName('service_kind_inv'   ).Value := Q.FieldByName('service_kind_inv').Value;
    ClientDS_BargainAdd.FieldByName('service_kind_rep_id').Value := Q.FieldByName('service_kind_rep_id').Value;
    ClientDS_BargainAdd.FieldByName('service_kind_rep'   ).Value := Q.FieldByName('service_kind_rep').Value;
    ClientDS_BargainAdd.FieldByName('service_kind_rep_inv').Value:= Q.FieldByName('service_kind_rep_inv').Value;
    ClientDS_BargainAdd.Post;
    Q.Next;
  end;


  Q.SQL.Clear();
  Q.SQL.Add('SELECT * FROM view_bargain_new_fact WHERE bargain_id = ' + IntToStr(Fbargain_id));
  Q.Open;
  ShowTextMessage('Загрузка ставок...', False);
  while not Q.Eof do begin
    ClientDS_BargainFact.Append;
    ClientDS_BargainAdd.FindKey([Q.FieldByName('bargain_add_id').Value]);
    ClientDS_BargainFact.FieldByName('add_id'           ).Value := ClientDS_BargainAdd.FieldByName('add_id').Value;
    ClientDS_BargainFact.FieldByName('bargain_fact_id'  ).Value := Q.FieldByName('bargain_fact_id'  ).Value;
    ClientDS_BargainFact.FieldByName('bargain_add_id'   ).Value := Q.FieldByName('bargain_add_id'   ).Value;
    ClientDS_BargainFact.FieldByName('fact_id'          ).Value := Q.FieldByName('fact_id'          ).Value;
    ClientDS_BargainFact.FieldByName('fact_rate_not_nds').Value := Q.FieldByName('fact_rate_not_nds').Value;
    ClientDS_BargainFact.FieldByName('fact_rate'        ).Value := Q.FieldByName('fact_rate'        ).Value;
    ClientDS_BargainFact.FieldByName('fact_count'       ).Value := Q.FieldByName('fact_count'       ).Value;
    ClientDS_BargainFact.FieldByName('fact_sum'         ).Value := Q.FieldByName('fact_sum'         ).Value;
    ClientDS_BargainFact.FieldByName('set_main'         ).Value := Ord(Q.FieldByName('set_main').AsBoolean);
    ClientDS_BargainFact.FieldByName('type_vagon_id'    ).Value := Q.FieldByName('type_vagon_id'    ).Value;
    ClientDS_BargainFact.FieldByName('type_vagon_name'  ).Value := Q.FieldByName('type_vagon_name'  ).Value;
    ClientDS_BargainFact.FieldByName('type_send_id'     ).Value := Q.FieldByName('type_send_id'     ).Value;
    ClientDS_BargainFact.FieldByName('type_send_name'   ).Value := Q.FieldByName('type_send_name'   ).Value;
    ClientDS_BargainFact.FieldByName('exchange_date'    ).Value := Q.FieldByName('exchange_date'    ).Value;
    ClientDS_BargainFact.Post;

    Q.Next;
  end;


  Q.SQL.Clear();
  Q.SQL.Add('SELECT * FROM view_bargain_new_rate WHERE bargain_id = ' + IntToStr(Fbargain_id));
  Q.Open;
  ShowTextMessage('Загрузка ставок...', False);
  while not Q.Eof do begin
    ClientDS_BargainRate.Append;
    ClientDS_BargainAdd.FindKey([Q.FieldByName('bargain_add_id').Value]);
    ClientDS_BargainRate.FieldByName('add_id'           ).Value := ClientDS_BargainAdd.FieldByName('add_id').Value;
    ClientDS_BargainRate.FieldByName('bargain_rate_id'  ).Value := Q.FieldByName('bargain_rate_id').Value;
    ClientDS_BargainRate.FieldByName('bargain_add_id'   ).Value := Q.FieldByName('bargain_add_id' ).Value;
    ClientDS_BargainRate.FieldByName('weight'           ).Value := Q.FieldByName('weight'         ).Value;
    ClientDS_BargainRate.FieldByName('rate_val'         ).Value := Q.FieldByName('rate_val'       ).Value;
    ClientDS_BargainRate.FieldByName('set_one'          ).Value := Q.FieldByName('set_one'        ).Value;
    ClientDS_BargainRate.FieldByName('type_vagon_id'    ).Value := Q.FieldByName('type_vagon_id'  ).Value;
    ClientDS_BargainRate.FieldByName('type_vagon_name'  ).Value := Q.FieldByName('type_vagon_name').Value;
    ClientDS_BargainRate.FieldByName('type_send_id'     ).Value := Q.FieldByName('type_send_id'   ).Value;
    ClientDS_BargainRate.FieldByName('type_send_name'   ).Value := Q.FieldByName('type_send_name' ).Value;
    ClientDS_BargainRate.Post;

    Q.Next;
  end;

  Q.SQL.Clear();
  Q.SQL.Add('SELECT * FROM view_bargain_new_rail WHERE bargain_id = ' + IntToStr(Fbargain_id));
  Q.Open;
  ShowTextMessage('Загрузка ж/д услуг...', False);
  while not Q.Eof do begin
    ClientDS_BargainRail.Append;
    ClientDS_BargainRail.FieldByName('add_id'               ).Value := ClientDS_BargainAdd.Lookup('bargain_add_id', Q.FieldByName('bargain_add_id').Value, 'add_id');
    ClientDS_BargainRail.FieldByName('bargain_rail_id'      ).Value := Q.FieldByName('bargain_rail_id'      ).Value;
    ClientDS_BargainRail.FieldByName('bargain_add_id'       ).Value := Q.FieldByName('bargain_add_id'       ).Value;
    ClientDS_BargainRail.FieldByName('calc_round_weight'    ).Value := Q.FieldByName('calc_round_weight'    ).Value;
    ClientDS_BargainRail.FieldByName('calc_kargo_min_norm'  ).Value := Q.FieldByName('calc_kargo_min_norm'  ).Value;
    ClientDS_BargainRail.FieldByName('calc_set_grp'         ).Value := Q.FieldByName('calc_set_grp'         ).Value;
    ClientDS_BargainRail.FieldByName('kargoETSNG_id'        ).Value := Q.FieldByName('kargoETSNG_id'        ).Value;
    ClientDS_BargainRail.FieldByName('kargoETSNG_cod'       ).Value := Q.FieldByName('kargoETSNG_cod'       ).Value;
    ClientDS_BargainRail.FieldByName('kargoETSNG_name'      ).Value := Q.FieldByName('kargoETSNG_name'      ).Value;
    ClientDS_BargainRail.FieldByName('kargoETSNG_group_name').Value := Q.FieldByName('kargoETSNG_group_name').Value;
    ClientDS_BargainRail.FieldByName('kargoETSNG_add_id'    ).Value := Q.FieldByName('kargoETSNG_add_id'    ).Value;
    ClientDS_BargainRail.FieldByName('kargoETSNG_add_cod'   ).Value := Q.FieldByName('kargoETSNG_add_cod'   ).Value;
    ClientDS_BargainRail.FieldByName('kargoETSNG_add_name'  ).Value := Q.FieldByName('kargoETSNG_add_name'  ).Value;
    ClientDS_BargainRail.FieldByName('kargoGNG_id'          ).Value := Q.FieldByName('kargoGNG_id'          ).Value;
    ClientDS_BargainRail.FieldByName('kargoGNG_cod'         ).Value := Q.FieldByName('kargoGNG_cod'         ).Value;
    ClientDS_BargainRail.FieldByName('kargoGNG_name'        ).Value := Q.FieldByName('kargoGNG_name'        ).Value;
    ClientDS_BargainRail.FieldByName('state_begin_id'       ).Value := Q.FieldByName('state_begin_id'       ).Value;
    ClientDS_BargainRail.FieldByName('state_begin_name'     ).Value := Q.FieldByName('state_begin_name'     ).Value;
    ClientDS_BargainRail.FieldByName('state_end_id'         ).Value := Q.FieldByName('state_end_id'         ).Value;
    ClientDS_BargainRail.FieldByName('state_end_name'       ).Value := Q.FieldByName('state_end_name'       ).Value;
    ClientDS_BargainRail.FieldByName('node_begin_id'        ).Value := Q.FieldByName('node_begin_id'        ).Value;
    ClientDS_BargainRail.FieldByName('node_begin_cod'       ).Value := Q.FieldByName('node_begin_cod'       ).Value;
    ClientDS_BargainRail.FieldByName('node_begin_name'      ).Value := Q.FieldByName('node_begin_name'      ).Value;
    ClientDS_BargainRail.FieldByName('node_end_id'          ).Value := Q.FieldByName('node_end_id'          ).Value;
    ClientDS_BargainRail.FieldByName('node_end_cod'         ).Value := Q.FieldByName('node_end_cod'         ).Value;
    ClientDS_BargainRail.FieldByName('node_end_name'        ).Value := Q.FieldByName('node_end_name'        ).Value;
    ClientDS_BargainRail.FieldByName('cit_id'               ).Value := Q.FieldByName('cit_id'               ).Value;
    ClientDS_BargainRail.FieldByName('type_kontener_id'     ).Value := Q.FieldByName('type_kontener_id'     ).Value;
    ClientDS_BargainRail.FieldByName('set_attr_self'        ).Value := Q.FieldByName('set_attr_self'        ).Value;
    ClientDS_BargainRail.FieldByName('firm_sender_id'       ).Value := Q.FieldByName('firm_sender_id'       ).Value;
    ClientDS_BargainRail.FieldByName('firm_sender_name'     ).Value := Q.FieldByName('firm_sender_name'     ).Value;
    ClientDS_BargainRail.FieldByName('firm_reciever_id'     ).Value := Q.FieldByName('firm_reciever_id'     ).Value;
    ClientDS_BargainRail.FieldByName('firm_reciever_name'   ).Value := Q.FieldByName('firm_reciever_name'   ).Value;
    ClientDS_BargainRail.FieldByName('set_list_rate'        ).Value := Q.FieldByName('set_list_rate'        ).Value;
    ClientDS_BargainRail.Post;
    Q.Next;
  end;

  Q.Close();
  Q.SQL.Clear();
  Q.SQL.Add('SELECT * FROM view_add_distance WHERE global_id in (SELECT bargain_add_id FROM view_bargain_new_add WHERE bargain_id = ' + IntToStr(Fbargain_id) + ')');
  Q.Open;
  while not Q.Eof do begin
    ClientDS_Bargain_AddDistance.Append;
    ClientDS_Bargain_AddDistance.FieldByName('add_id'         ).Value := ClientDS_BargainAdd.Lookup('bargain_add_id', Q.FieldByName('global_id').Value, 'add_id');
    ClientDS_Bargain_AddDistance.FieldByName('add_distance_id').Value := Q.FieldByName('add_distance_id').Value;
    ClientDS_Bargain_AddDistance.FieldByName('global_id'      ).Value := Q.FieldByName('global_id').Value;
    ClientDS_Bargain_AddDistance.FieldByName('distance_num'   ).Value := Q.FieldByName('distance_num').Value;
    ClientDS_Bargain_AddDistance.FieldByName('node_id'        ).Value := Q.FieldByName('node_id').Value;
    ClientDS_Bargain_AddDistance.FieldByName('node_cod'       ).Value := Q.FieldByName('node_cod').Value;
    ClientDS_Bargain_AddDistance.FieldByName('node_name'      ).Value := Q.FieldByName('node_name').Value;
    ClientDS_Bargain_AddDistance.FieldByName('node_type_id'   ).Value := Q.FieldByName('node_type_id').Value;
    ClientDS_Bargain_AddDistance.FieldByName('node_type_name' ).Value := Q.FieldByName('node_type_name').Value;
    ClientDS_Bargain_AddDistance.Post;

    Q.Next;
  end;

  Q.Close();
  Q.SQL.Clear();
  Q.SQL.Add('SELECT * FROM view_add_payers WHERE global_id in (SELECT bargain_add_id FROM view_bargain_new_add WHERE bargain_id = ' + IntToStr(Fbargain_id) + ')');
  Q.Open;

  while not Q.Eof do begin
    ClientDS_Bargain_AddPayers.Append;
    ClientDS_Bargain_AddPayers.FieldByName('add_id'       ).Value := ClientDS_BargainAdd.Lookup('bargain_add_id', Q.FieldByName('global_id').Value, 'add_id');
    ClientDS_Bargain_AddPayers.FieldByName('add_payers_id').Value := Q.FieldByName('add_payers_id').Value;
    ClientDS_Bargain_AddPayers.FieldByName('global_id'    ).Value := Q.FieldByName('global_id').Value;
    ClientDS_Bargain_AddPayers.FieldByName('firm_id'      ).Value := Q.FieldByName('firm_id').Value;
    ClientDS_Bargain_AddPayers.FieldByName('firm_name'    ).Value := Q.FieldByName('firm_name').Value;
    ClientDS_Bargain_AddPayers.FieldByName('state_id'     ).Value := Q.FieldByName('state_id').Value;
    ClientDS_Bargain_AddPayers.FieldByName('state_name'   ).Value := Q.FieldByName('state_name').Value;
    ClientDS_Bargain_AddPayers.Post;

    Q.Next;
  end;

  Q.Close();
  Q.SQL.Clear();
  Q.SQL.Add('SELECT * FROM view_add_distance WHERE global_id = ' + IntToStr(Fbargain_id));
  Q.Open;

  while not Q.Eof do begin
    ClientDS_Distance.Append;
    ClientDS_Distance.FieldByName('add_distance_id' ).Value := Q.FieldByName('add_distance_id').Value;
    ClientDS_Distance.FieldByName('distance_num'    ).Value := Q.FieldByName('distance_num').Value;
    ClientDS_Distance.FieldByName('node_id'         ).Value := Q.FieldByName('node_id').Value;
    ClientDS_Distance.FieldByName('node_name'       ).Value := Q.FieldByName('node_name').Value;
    ClientDS_Distance.FieldByName('node_cod'        ).Value := Q.FieldByName('node_cod').Value;
    ClientDS_Distance.FieldByName('node_type_id'    ).Value := Q.FieldByName('node_type_id').Value;
    ClientDS_Distance.FieldByName('node_type_cod'   ).Value := Q.FieldByName('node_type_cod').Value;
    ClientDS_Distance.FieldByName('node_type_name'  ).Value := Q.FieldByName('node_type_name').Value;
    ClientDS_Distance.FieldByName('global_id'       ).Value := Q.FieldByName('global_id').Value;
    ClientDS_Distance.FieldByName('state_id'        ).Value := Q.FieldByName('state_id').Value;
    ClientDS_Distance.FieldByName('state_name'      ).Value := Q.FieldByName('state_name').Value;
    ClientDS_Distance.FieldByName('road_id'         ).Value := Q.FieldByName('road_id').Value;
    ClientDS_Distance.FieldByName('road_name'       ).Value := Q.FieldByName('road_name').Value;
    ClientDS_Distance.Post;

    Q.Next;
  end;

  Fset_calc_enabled := True;
  CalcSum();

  Q.Free;
  SP_get.Close;

  ShowTextMessage();

  MonitorEventFormOpen('UPDATE_FORM', self.Name, fmMain.Lis, Fbargain_id);

  Screen.Cursor := crDefault;
end;

procedure TfmBargainAdd.SetDatePeriod(date_period: TDateTime);
begin
  cxComboBox1.Properties.OnChange := nil;
  cxComboBox2.Properties.OnChange := nil;

  cxComboBox1.ItemIndex := StrToInt(FormatDateTime('m', date_period))-1;
  cxComboBox2.ItemIndex := cxComboBox2.Properties.Items.IndexOf(FormatDateTime('yyyy', date_period));

  cxComboBox1.Properties.OnChange := cxComboBox1PropertiesChange;
  cxComboBox2.Properties.OnChange := cxComboBox1PropertiesChange;
  cxComboBox1PropertiesChange(nil);
end;

procedure TfmBargainAdd.SetDatePeriodService(date_period_service: TDateTime);
begin
  cxComboBox3.ItemIndex := StrToInt(FormatDateTime('m', date_period_service))-1;
  cxComboBox4.ItemIndex := cxComboBox4.Properties.Items.IndexOf(FormatDateTime('yyyy', date_period_service));
end;

function  TfmBargainAdd.GetDatePeriod(): TDateTime;
begin
  Result := StrToDate('15' + FormatSettings.DateSeparator + IntToStr(cxComboBox1.ItemIndex+1) + FormatSettings.DateSeparator + cxComboBox2.Text);
end;

function  TfmBargainAdd.GetDatePeriodService(): TDateTime;
begin
  Result := StrToDate('15' + FormatSettings.DateSeparator + IntToStr(cxComboBox3.ItemIndex+1) + FormatSettings.DateSeparator + cxComboBox4.Text);
end;

function  TfmBargainAdd.GetDatePeriodFirst(): TDateTime;
begin
  Result := _DatePeriod - (DayOf(_DatePeriod) - 1);
end;

function  TfmBargainAdd.GetDatePeriodLast(): TDateTime;
begin
  Result := IncMonth(_GetDatePeriodFirst,1) - 1;
end;

procedure TfmBargainAdd.BargainToClientDS();
begin
  Fcontract_id     := iif(cxLookupComboBox1.EditValue = null, -9, cxLookupComboBox1.EditValue);
  Ftype_bargain_id := iif(cxLookupComboBox2.EditValue = null, -9, cxLookupComboBox2.EditValue);
  Fcurrency_id     := iif(cxLookupComboBox3.EditValue = null, -9, cxLookupComboBox3.EditValue);
  Fagreement_id    := iif(cxLookupComboBox4.EditValue = null, -9, cxLookupComboBox4.EditValue);

  ClientDS_Bargain.First;
  ClientDS_Bargain.Edit;

  ClientDS_Bargain.FieldByName('contract_id'          ).Value := iif(Fcontract_id = -9,       null, Fcontract_id);
  ClientDS_Bargain.FieldByName('type_bargain_id'      ).Value := iif(Ftype_bargain_id = -9,   null, Ftype_bargain_id);
  ClientDS_Bargain.FieldByName('currency_id'          ).Value := iif(Fcurrency_id = -9,       null, Fcurrency_id);
  ClientDS_Bargain.FieldByName('date_period'          ).Value := _DatePeriod;
  ClientDS_Bargain.FieldByName('kargoGNG_id'          ).Value := iif(FkargoGNG_id = -9,       null, FkargoGNG_id);
  ClientDS_Bargain.FieldByName('kargoGNG_cod'         ).Value := cxButtonEdit7.EditValue;
  ClientDS_Bargain.FieldByName('kargoGNG_name'        ).Value := cxButtonEdit8.EditValue;
  ClientDS_Bargain.FieldByName('kargoETSNG_id'        ).Value := iif(FkargoETSNG_id = -9,     null, FkargoETSNG_id);
  ClientDS_Bargain.FieldByName('kargoETSNG_cod'       ).Value := cxButtonEdit6.EditValue;
  ClientDS_Bargain.FieldByName('kargoETSNG_name'      ).Value := cxButtonEdit5.EditValue;
  ClientDS_Bargain.FieldByName('kargoETSNG_group_name').Value := cxTextEdit14.EditValue;
  ClientDS_Bargain.FieldByName('kargoETSNG_add_id'    ).Value := iif(FkargoETSNG_add_id = -9, null, FkargoETSNG_add_id);
  ClientDS_Bargain.FieldByName('kargoETSNG_add_cod'   ).Value := cxButtonEdit12.EditValue;
  ClientDS_Bargain.FieldByName('kargoETSNG_add_name'  ).Value := cxButtonEdit11.EditValue;
//  ClientDS_Bargain.FieldByName('state_begin_id'       ).Value := iif(Fstate_begin_id = -9,    null, Fstate_begin_id);
//  ClientDS_Bargain.FieldByName('state_end_id'         ).Value := iif(Fstate_end_id = -9,      null, Fstate_end_id);
//  ClientDS_Bargain.FieldByName('state_end_name'       ).Value := cxButtonEdit4.EditValue;
//  ClientDS_Bargain.FieldByName('node_begin_id'        ).Value := iif(Fnode_begin_id = -9,     null, Fnode_begin_id);
//  ClientDS_Bargain.FieldByName('node_begin_cod'       ).Value := cxButtonEdit9.EditValue;
//  ClientDS_Bargain.FieldByName('node_begin_name'      ).Value := cxButtonEdit2.EditValue;
//  ClientDS_Bargain.FieldByName('node_end_id'          ).Value := iif(Fnode_end_id = -9,       null, Fnode_end_id);
//  ClientDS_Bargain.FieldByName('node_end_cod'         ).Value := cxButtonEdit10.EditValue;
//  ClientDS_Bargain.FieldByName('node_end_name'        ).Value := cxButtonEdit3.EditValue;
  ClientDS_Bargain.FieldByName('count_day_vagon'      ).Value := cxCurrencyEdit16.EditValue;
  ClientDS_Bargain.FieldByName('count_vagon'          ).Value := cxCurrencyEdit15.EditValue;
  ClientDS_Bargain.FieldByName('count_weight'         ).Value := cxCurrencyEdit3.EditValue;

  ClientDS_Bargain.Post;
end;

procedure TfmBargainAdd.cxButtonEdit11PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
var
  id  : integer;
  cod : string;
  name: string;
  res : boolean;
  Q   : TADOQuery;
begin
  case AButtonIndex of
    0:  begin
          if TControl(Sender).Tag = 0 then res := FindInfObj('Шаблон поиска груза ЕТСНГ по названию:', 'inf_obj_etsng', False, id, cod, name)
          else res := FindInfObj('Шаблон поиска груза ЕТСНГ по коду:', 'inf_obj_etsng', True, id, cod, name);
          if res then begin
            FkargoETSNG_add_id := id;
            cxButtonEdit11.Text:= name;
            cxButtonEdit12.Text:= cod;

            Q := TADOQuery.Create(nil);
            Q.Connection := Fconnect;
            Q.SQL.Add('SELECT group_id, group_name, group_cod FROM view_kargoETSNG WHERE inf_obj_id='+IntToStr(FkargoETSNG_add_id));
            Q.Open;
            cxTextEdit16.Text := iif(Q.FieldByName('group_id').Value = null, '', Q.FieldByName('group_name').Value);
            Q.Free;
          end;
        end;
    1:  begin
          FkargoETSNG_add_id := -9;
          cxButtonEdit11.Text:= '';
          cxButtonEdit12.Text:= '';
          cxTextEdit16.Text  := ''; 
        end;
  end;
end;

procedure TfmBargainAdd.cxButtonEdit14PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  fmContract := TfmContract.Create(Application, True, 0);
  fmContract.cxTabSheet2.Visible := False;
  fmContract.Visible := False;
  if cxLookupComboBox1.EditValue <> null then fmContract._SetContractId := cxLookupComboBox1.EditValue;
  if fmContract.ShowModal=mrOk then begin
    Query_Client.Close;
    Query_Client.Open;
    if Query_Client.Locate('contract_id', fmContract._GetContractId, []) then cxLookupComboBox1.EditValue := fmContract._GetContractId
    else begin
      Application.MessageBox('Выбранный договор в этом периоде не действует!', 'Внимание', MB_OK);
      cxLookupComboBox1.EditValue := null;
    end;
  end;
end;

procedure TfmBargainAdd.cxButtonEdit5PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
var
  id  : integer;
  cod : string;
  name: string;
  res : boolean;
  Q   : TADOQuery;
begin
  case AButtonIndex of
    0:  begin
          if TControl(Sender).Tag = 0 then res := FindInfObj('Шаблон поиска груза ЕТСНГ по названию:', 'inf_obj_etsng', False, id, cod, name)
          else res := FindInfObj('Шаблон поиска груза ЕТСНГ по коду:', 'inf_obj_etsng', True, id, cod, name);
          if res then begin
            FkargoETSNG_id     := id;
            cxButtonEdit5.Text := name;
            cxButtonEdit6.Text := cod;
            Q := TADOQuery.Create(nil);
            Q.Connection := Fconnect;
            Q.SQL.Add('SELECT group_id, group_name, group_cod FROM view_kargoETSNG WHERE inf_obj_id='+IntToStr(FkargoETSNG_id));
            Q.Open;
            cxTextEdit14.Text := iif(Q.FieldByName('group_id').Value = null, '', Q.FieldByName('group_name').Value);
            if Q.FieldByName('group_cod').AsString = '9' then _SetKargoAdd := True
            else _SetKargoAdd := False;
            Q.Free;
          end;
        end;
    1:  begin
          FkargoETSNG_id     := -9;
          cxButtonEdit5.Text := '';
          cxButtonEdit6.Text := '';
          cxTextEdit14.Text  := ''; 
          _SetKargoAdd := False;
        end;
  end;
end;

procedure TfmBargainAdd.cxButtonEdit8PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
var
  id  : integer;
  cod : string;
  name: string;
  res : boolean;
begin
  case AButtonIndex of
    0:  begin
          if TControl(Sender).Tag = 0 then res := FindInfObj('Шаблон поиска груза ГНГ по названию:', 'inf_obj_GNG', False, id, cod, name)
          else res := FindInfObj('Шаблон поиска груза ГНГ по коду:', 'inf_obj_GNG', True, id, cod, name);
          if res then begin
            FkargoGNG_id       := id;
            cxButtonEdit8.Text := name;
            cxButtonEdit7.Text := cod;
          end;
        end;
    1:  begin
          FkargoGNG_id       := -9;
          cxButtonEdit8.Text := '';
          cxButtonEdit7.Text := '';
        end;
  end;
end;

function TfmBargainAdd.FindInfObj(caption_name: string; table_name: string; set_cod: boolean; var id: integer; var cod: string; var name: string): boolean;
var new_str : string;
    Q : TADOQuery;
    res : boolean;
begin
  table_name := LowerCase(table_name);

  if InputQuery('Поиск', caption_name, new_str) then begin
    Q := TADOQuery.Create(nil);
    Q.Connection := Fconnect;
    Q.SQL.Add('SELECT inf_obj_id, inf_obj_name, inf_obj_cod');
    Q.SQL.Add('FROM ' + table_name);
    Q.SQL.Add('WHERE (' + iif(set_cod, 'inf_obj_cod', 'inf_obj_name') + ' LIKE ''%' + new_str + '%'')');
    Q.SQL.Add('AND (LEFT(' + DateToSQL(_GetDatePeriodFirst) + ', 6) BETWEEN convert(varchar(6), date_begin, 112) AND convert(varchar(6), date_end, 112) OR date_end is null)');
    if (table_name = 'inf_obj') or (table_name = 'inf_obj_etsng') then
      Q.SQL.Add('AND (dbo.GetInfObjVisible(str_group_visible) = 1)');
    Q.SQL.Add('ORDER BY inf_obj_name');
    Q.Open;
    fmFilter := TfmFilter.Create(0, Q, 'inf_obj_id', 'inf_obj_cod', 'inf_obj_name');
    if fmFilter.ShowModal=mrOk then begin
      id  := fmFilter.GetId;
      cod := fmFilter.GetCod;
      name:= fmFilter.GetName;
      res := True;
    end else res := False;
    Q.Free;
  end else res := False;

  Result := res;
end;

procedure TfmBargainAdd.cxCheckBox4PropertiesEditValueChanged(Sender: TObject);
begin
  if cxCheckBox4.Checked then begin
    cxButtonEdit8.Enabled := True;
    cxButtonEdit7.Enabled := True;
    cxButtonEdit8.Style.Color := clWhite;
    cxButtonEdit7.Style.Color := clWhite;
  end else begin
    cxButtonEdit8.Enabled := False;
    cxButtonEdit7.Enabled := False;
    cxButtonEdit8.Style.Color := clBtnFace;
    cxButtonEdit7.Style.Color := clBtnFace;
    FkargoGNG_id := -9;
  end;
end;

procedure TfmBargainAdd.cxComboBox1PropertiesChange(Sender: TObject);
var contract_id : integer;
begin
  // Проверяем договор *договор должен быть действителен в текущем периоде.
  contract_id := iif(cxLookupComboBox1.EditValue = null, -9, cxLookupComboBox1.EditValue);
  Query_Client.Close;
  Query_Client.Parameters.ParamByName('date_current').Value := _DatePeriod;
  Query_Client.Open;
  if Query_Client.Locate('contract_id', contract_id, []) then begin
    cxLookupComboBox3.EditValue := contract_id;
  end else begin
    cxLookupComboBox3.EditValue := null;
  end;

//  Проверить справочную информацию
//  FkargoGNG_id      := -9;
//  FkargoETSNG_id    := -9;
//  FkargoETSNG_add_id:= -9;
//  Fstate_begin_id   := -9;
//  Fstate_end_id     := -9;
//  Fnode_begin_id    := -9;
//  Fnode_end_id      := -9;
end;

procedure TfmBargainAdd.cxCurrencyEdit14PropertiesEditValueChanged(Sender: TObject);
begin
  CalcSum();
end;

procedure TfmBargainAdd.cxGrid1DBBandedTableView1CustomDrawCell(Sender: TcxCustomGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
  if AViewInfo.GridRecord.Selected or AViewInfo.GridRecord.Focused then begin
    ACanvas.Brush.Color := clNavy;
    ACanvas.Font.Color := clWhite;
    if AViewInfo.Focused then ACanvas.Brush.Color := clBlue;
  end;
end;

procedure TfmBargainAdd.cxGrid1DBBandedTableView1FocusedItemChanged(Sender: TcxCustomGridTableView; APrevFocusedItem, AFocusedItem: TcxCustomGridTableItem);
begin
  cxGrid1DBBandedTableView1.Painter.Invalidate;
end;

procedure TfmBargainAdd.cxGrid1DBBandedTableView1node_codPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
var
  id  : integer;
  cod : string;
  name: string;
    Q : TADOQuery;
begin
  case AButtonIndex of
    0:  begin
          if FindInfObj('Шаблон поиска станции по коду:', 'inf_obj_node', True, id, cod, name) then begin
            Q := TADOQuery.Create(nil);
            Q.Connection := fmMain.Lis;
            Q.SQL.Add('SELECT inf_obj_road.inf_obj_id as road_id, inf_obj_road.inf_obj_name_full as road_name,');
            Q.SQL.Add('       inf_obj_state.inf_obj_id as state_id, inf_obj_state.inf_obj_name as state_name');
            Q.SQL.Add('FROM	inf_obj_node ');
            Q.SQL.Add('     left join  inf_obj_road on inf_obj_node.road_id = inf_obj_road.inf_obj_id');
            Q.SQL.Add('     left join  inf_obj_state on inf_obj_node.state_id = inf_obj_state.inf_obj_id');
            Q.SQL.Add('WHERE	inf_obj_node.inf_obj_id = ' + IntToStr(id));
            Q.Open;

            ClientDS_Distance.Edit;
            ClientDS_Distance.FieldByName('node_id'  ).Value := id;
            ClientDS_Distance.FieldByName('node_cod' ).Value := cod;
            ClientDS_Distance.FieldByName('node_name').Value := name;
            ClientDS_Distance.FieldByName('road_id'   ).Value := Q.FieldByName('road_id').Value;
            ClientDS_Distance.FieldByName('road_name' ).Value := Q.FieldByName('road_name').Value;
            ClientDS_Distance.FieldByName('state_id'  ).Value := Q.FieldByName('state_id').Value;
            ClientDS_Distance.FieldByName('state_name').Value := Q.FieldByName('state_name').Value;

            ClientDS_Distance.Post;
          end;
        end;
    1:  begin
          ClientDS_Distance.Edit;
          ClientDS_Distance.FieldByName('node_id'  ).Value := null;
          ClientDS_Distance.FieldByName('node_cod' ).Value := null;
          ClientDS_Distance.FieldByName('node_name').Value := null;
          ClientDS_Distance.Post;
        end;
  end;
end;

procedure TfmBargainAdd.cxGrid1DBBandedTableView1node_namePropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
var
  id  : integer;
  cod : string;
  name: string;
    Q : TADOQuery;
begin
  case AButtonIndex of
    0:  begin
          if FindInfObj('Шаблон поиска станции по названию:', 'inf_obj_node', False, id, cod, name) then begin
            Q := TADOQuery.Create(nil);
            Q.Connection := fmMain.Lis;
            Q.SQL.Add('SELECT inf_obj_road.inf_obj_id as road_id, inf_obj_road.inf_obj_name_full as road_name,');
            Q.SQL.Add('       inf_obj_state.inf_obj_id as state_id, inf_obj_state.inf_obj_name as state_name');
            Q.SQL.Add('FROM	inf_obj_node ');
            Q.SQL.Add('     left join  inf_obj_road on inf_obj_node.road_id = inf_obj_road.inf_obj_id');
            Q.SQL.Add('     left join  inf_obj_state on inf_obj_node.state_id = inf_obj_state.inf_obj_id');
            Q.SQL.Add('WHERE	inf_obj_node.inf_obj_id = ' + IntToStr(id));
            Q.Open;

            ClientDS_Distance.Edit;
            ClientDS_Distance.FieldByName('node_id'  ).Value := id;
            ClientDS_Distance.FieldByName('node_cod' ).Value := cod;
            ClientDS_Distance.FieldByName('node_name').Value := name;

            ClientDS_Distance.FieldByName('road_id'   ).Value := Q.FieldByName('road_id').Value;
            ClientDS_Distance.FieldByName('road_name' ).Value := Q.FieldByName('road_name').Value;
            ClientDS_Distance.FieldByName('state_id'  ).Value := Q.FieldByName('state_id').Value;
            ClientDS_Distance.FieldByName('state_name').Value := Q.FieldByName('state_name').Value;
            ClientDS_Distance.Post;



            Q.Free;
          end;
        end;
    1:  begin
          ClientDS_Distance.Edit;
          ClientDS_Distance.FieldByName('node_id'  ).Value := null;
          ClientDS_Distance.FieldByName('node_cod' ).Value := null;
          ClientDS_Distance.FieldByName('node_name').Value := null;
          ClientDS_Distance.Post;
        end;
  end;
end;

procedure TfmBargainAdd.cxGrid1DBBandedTableView1node_type_namePropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
var  Q : TADOQuery;
begin
  case AButtonIndex of
    0:  begin
          Q := TADOQuery.Create(nil);
          Q.Connection := Fconnect;
          Q.SQL.Add('SELECT inf_obj_id, inf_obj_name, inf_obj_cod FROM inf_obj WHERE type_inf_id = -102 ORDER BY inf_obj_name');
          Q.Open;
          fmFilter := TfmFilter.Create(0, Q, 'inf_obj_id', 'inf_obj_cod', 'inf_obj_name');
          if fmFilter.ShowModal=mrOk then begin
            ClientDS_Distance.Edit;
            ClientDS_Distance.FieldByName('node_type_id'  ).Value := fmFilter.GetId;
            ClientDS_Distance.FieldByName('node_type_cod' ).Value := fmFilter.GetCod;
            ClientDS_Distance.FieldByName('node_type_name').Value := fmFilter.GetName;
            ClientDS_Distance.Post;
          end;
          Q.Free;
        end;
    1:  begin
          ClientDS_Distance.Edit;
          ClientDS_Distance.FieldByName('node_type_id'  ).Value := null;
          ClientDS_Distance.FieldByName('node_type_cod' ).Value := null;
          ClientDS_Distance.FieldByName('node_type_name').Value := null;
          ClientDS_Distance.Post;
        end;
  end;
end;

procedure TfmBargainAdd.cxGrid2DBBandedTableView1CustomDrawCell(Sender: TcxCustomGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
  if AViewInfo.GridRecord.Selected or AViewInfo.GridRecord.Focused then begin
    ACanvas.Brush.Color := clNavy;
    ACanvas.Font.Color := clWhite;
    if AViewInfo.Focused then ACanvas.Brush.Color := clBlue;
  end;
end;

procedure TfmBargainAdd.cxGrid2DBBandedTableView1CustomDrawColumnHeader(Sender: TcxGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxGridColumnHeaderViewInfo; var ADone: Boolean);
begin
  if AViewInfo.Column.Focused then begin
    ACanvas.Brush.Color := clNavy;
    ACanvas.Font.Color := clWhite;
  end;
end;

procedure TfmBargainAdd.cxGrid2DBBandedTableView1FocusedItemChanged(Sender: TcxCustomGridTableView; APrevFocusedItem, AFocusedItem: TcxCustomGridTableItem);
begin
  cxGrid2DBBandedTableView1.Painter.Invalidate;
end;

procedure TfmBargainAdd.cxGridDBBandedTableView1road_namePropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
var
  id  : integer;
  cod : string;
  name: string;
begin
  case AButtonIndex of
    0:  begin
          if FindInfObj('Шаблон поиска дороги по названию:', 'inf_obj_road', True, id, cod, name) then begin
            ClientDS_Distance.Edit;
            ClientDS_Distance.FieldByName('road_id'  ).Value := id;
            ClientDS_Distance.FieldByName('road_name').Value := name;
            ClientDS_Distance.Post;
          end;
        end;
    1:  begin
          ClientDS_Distance.Edit;
          ClientDS_Distance.FieldByName('road_id'  ).Value := null;
          ClientDS_Distance.FieldByName('road_name').Value := null;
          ClientDS_Distance.Post;
        end;
  end;
end;

procedure TfmBargainAdd.cxGridDBBandedTableView1state_namePropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
var
  id  : integer;
  cod : string;
  name: string;
begin
  case AButtonIndex of
    0:  begin
          if FindInfObj('Шаблон поиска страны по названию:', 'inf_obj_state', True, id, cod, name) then begin
            ClientDS_Distance.Edit;
            ClientDS_Distance.FieldByName('state_id'  ).Value := id;
            ClientDS_Distance.FieldByName('state_name').Value := name;
            ClientDS_Distance.Post;
          end;
        end;
    1:  begin
          ClientDS_Distance.Edit;
          ClientDS_Distance.FieldByName('state_id'  ).Value := null;
          ClientDS_Distance.FieldByName('state_name').Value := null;
          ClientDS_Distance.Post;
        end;
  end;
end;

procedure TfmBargainAdd.dxBarButton10Click(Sender: TObject);
var max_num: integer;
begin
  ClientDS_Distance.First;
  max_num := ClientDS_Distance.FieldByName('distance_num').AsInteger;
  while not ClientDS_Distance.Eof do begin
    if max_num < ClientDS_Distance.FieldByName('distance_num').AsInteger then
      max_num := ClientDS_Distance.FieldByName('distance_num').AsInteger;
    ClientDS_Distance.Next;
  end;
  max_num := max_num + 1;

  ClientDS_Distance.Append;
  ClientDS_Distance.FieldByName('distance_num').Value := max_num;
  ClientDS_Distance.Post;
end;

procedure TfmBargainAdd.dxBarButton1Click(Sender: TObject);
begin
  case TdxBarButton(Sender).ClickItemLink.Owner.Owner.Tag of
    0: PrintcxGrid(cxGrid1DBBandedTableView1);
    1: PrintcxGrid(cxGrid2DBBandedTableView1);
  end;
end;

procedure TfmBargainAdd.dxBarButton2Click(Sender: TObject);
begin
  BargainToClientDS();
  if ClientDS_Bargain.FieldByName('contract_id').IsNull then begin
    Application.MessageBox('Выберите договор.', 'Внимание.', MB_ICONWARNING or MB_OK);
    Exit;
  end;


  if Fset_run_dll then fmBargainRailAdd := TfmBargainRailAdd.CreateDLL(Application, TdxBarButton(Sender).ClickItemLink.Owner.Owner.Tag, Fusr_pwd_lis, Fusr_pwd_docs)
  else fmBargainRailAdd := TfmBargainRailAdd.Create(Application, TdxBarButton(Sender).ClickItemLink.Owner.Owner.Tag);

  fmBargainRailAdd._SetClientDistance   := ClientDS_Bargain_AddDistance;
  fmBargainRailAdd._SetClientPayers     := ClientDS_Bargain_AddPayers;
  fmBargainRailAdd._SetClientBargainRail:= ClientDS_BargainRail;
  fmBargainRailAdd._SetClientBargainRate:= ClientDS_BargainRate;
  fmBargainRailAdd._SetClientBargainFact:= ClientDS_BargainFact;
  fmBargainRailAdd._SetClientBargainAdd := ClientDS_BargainAdd;
  fmBargainRailAdd._SetClientBargain    := ClientDS_Bargain;
  fmBargainRailAdd._SetClientFact       := ClientDS_Fact;
  fmBargainRailAdd._SetInsert           := -9;
  fmBargainRailAdd._SetTypeCalcAdd      := 2;

  if fmBargainRailAdd.ShowModal = mrOk then begin
    ShowTextMessage('Обновление данных', False);
    CalcSum();
    ShowTextMessage;
  end;
end;

procedure TfmBargainAdd.dxBarButton3Click(Sender: TObject);
begin
  BargainToClientDS();
  if ClientDS_Bargain.FieldByName('contract_id').IsNull then begin
    Application.MessageBox('Выберите договор.', 'Внимание.', MB_ICONWARNING or MB_OK);
    Exit;
  end;


  if Fset_run_dll then fmBargainRailAdd := TfmBargainRailAdd.CreateDLL(Application, TdxBarButton(Sender).ClickItemLink.Owner.Owner.Tag, Fusr_pwd_lis, Fusr_pwd_docs)
  else fmBargainRailAdd := TfmBargainRailAdd.Create(Application, TdxBarButton(Sender).ClickItemLink.Owner.Owner.Tag);

  fmBargainRailAdd._SetClientDistance   := ClientDS_Bargain_AddDistance;
  fmBargainRailAdd._SetClientPayers     := ClientDS_Bargain_AddPayers;
  fmBargainRailAdd._SetClientBargainRail:= ClientDS_BargainRail;
  fmBargainRailAdd._SetClientBargainRate:= ClientDS_BargainRate;
  fmBargainRailAdd._SetClientBargainFact:= ClientDS_BargainFact;
  fmBargainRailAdd._SetClientBargainAdd := ClientDS_BargainAdd;
  fmBargainRailAdd._SetClientBargain    := ClientDS_Bargain;
  fmBargainRailAdd._SetClientFact       := ClientDS_Fact;
  fmBargainRailAdd._SetInsert           := -9;
  fmBargainRailAdd._SetTypeCalcAdd      := 1;

  if fmBargainRailAdd.ShowModal = mrOk then begin
    ShowTextMessage('Обновление данных', False);
    CalcSum();
    ShowTextMessage;
  end;
end;

procedure TfmBargainAdd.dxBarButton4Click(Sender: TObject);
var add_id: integer;
begin
  if not cxGrid1DBBandedTableView1rate_id.DataBinding.Field.IsNull then
    add_id := cxGrid1DBBandedTableView1rate_id.DataBinding.Field.Value
  else
    add_id := -9;

  CopyAdd(add_id, 1);
end;

procedure TfmBargainAdd.dxBarButton5Click(Sender: TObject);
begin
  BargainToClientDS();
  if ClientDS_Bargain.FieldByName('contract_id').IsNull then begin
    Application.MessageBox('Выберите договор.', 'Внимание.', MB_ICONWARNING or MB_OK);
    Exit;
  end;

  fmBargainContAdd := TfmBargainContAdd.Create(Application, TdxBarButton(Sender).ClickItemLink.Owner.Owner.Tag);

  if fmBargainContAdd.ShowModal = mrOk then begin
    ShowTextMessage('Обновление данных', False);
    CalcSum();
    ShowTextMessage;
  end;
end;

procedure TfmBargainAdd.dxBarButton6Click(Sender: TObject);
begin
  BargainToClientDS();
  if ClientDS_Bargain.FieldByName('contract_id').IsNull then begin
    Application.MessageBox('Выберите договор.', 'Внимание.', MB_ICONWARNING or MB_OK);
    Exit;
  end;

  fmBargainShipAdd := TfmBargainShipAdd.Create(Application, TdxBarButton(Sender).ClickItemLink.Owner.Owner.Tag);

  if fmBargainShipAdd.ShowModal = mrOk then begin
    ShowTextMessage('Обновление данных', False);
    CalcSum();
    ShowTextMessage;
  end;
end;

procedure TfmBargainAdd.CopyAdd(add_id: integer; type_contract: integer);
var Client_Temp : TClientDataSet;
             id : integer;
              Q : TADOQuery;
begin
  if ClientDS_BargainAdd.Locate('add_id', add_id, []) then begin
    Client_Temp := TClientDataSet.Create(nil);
    Client_Temp.XMLData := ClientDS_BargainAdd.XMLData;
    Client_Temp.Locate('add_id', add_id, []);

    ClientDS_BargainAdd.Append();
    ClientDS_BargainAdd.FieldByName('bargain_add_id'      ).Value := null;
    ClientDS_BargainAdd.FieldByName('bargain_id'          ).Value := Client_Temp.FieldByName('bargain_id'          ).Value;
    ClientDS_BargainAdd.FieldByName('type_add_id'         ).Value := Client_Temp.FieldByName('type_add_id'         ).Value;

    Q := TADOQuery.Create(nil);
    Q.Connection := fmMain.Lis;
    if type_contract = 0 then
      Q.SQL.Add('SELECT top 1 * FROM view_contract_rights WHERE contract_id = ' + IntToStr(cxLookupComboBox1.EditValue))
    else
      Q.SQL.Add('SELECT top 1 * FROM view_contract_rights WHERE isnull(contract_set,0) = 1');
    Q.Open;

    ClientDS_BargainAdd.FieldByName('contract_id'         ).Value := Q.FieldByName('contract_id').Value;
    ClientDS_BargainAdd.FieldByName('type_contract'       ).Value := Q.FieldByName('type_contract').Value;
    ClientDS_BargainAdd.FieldByName('contract_set'        ).Value := Q.FieldByName('contract_set').Value;
    ClientDS_BargainAdd.FieldByName('firm_customer_name'  ).Value := Q.FieldByName('firm_customer_name').Value;
    ClientDS_BargainAdd.FieldByName('contract_cod'        ).Value := Q.FieldByName('contract_cod').Value;

    ClientDS_BargainAdd.FieldByName('currency_id'         ).Value := Client_Temp.FieldByName('currency_id'         ).Value;
    ClientDS_BargainAdd.FieldByName('type_nds_id'         ).Value := Client_Temp.FieldByName('type_nds_id'         ).Value;
    ClientDS_BargainAdd.FieldByName('ed_izm_id'           ).Value := Client_Temp.FieldByName('ed_izm_id'           ).Value;
    ClientDS_BargainAdd.FieldByName('type_nds_cod'        ).Value := Client_Temp.FieldByName('type_nds_cod'        ).Value;
    ClientDS_BargainAdd.FieldByName('ed_izm_cod'          ).Value := Client_Temp.FieldByName('ed_izm_cod'          ).Value;
    ClientDS_BargainAdd.FieldByName('set_include_nds'     ).Value := Client_Temp.FieldByName('set_include_nds'     ).Value;
    ClientDS_BargainAdd.FieldByName('exchange_USD_val'    ).Value := Client_Temp.FieldByName('exchange_USD_val'    ).Value;
    ClientDS_BargainAdd.FieldByName('exchange_EUR_val'    ).Value := Client_Temp.FieldByName('exchange_EUR_val'    ).Value;
    ClientDS_BargainAdd.FieldByName('exchange_CHF_val'    ).Value := Client_Temp.FieldByName('exchange_CHF_val'    ).Value;
    ClientDS_BargainAdd.FieldByName('comment'             ).Value := Client_Temp.FieldByName('comment'             ).Value;
    ClientDS_BargainAdd.FieldByName('ed_izm_name'         ).Value := Client_Temp.FieldByName('ed_izm_name'         ).Value;
    ClientDS_BargainAdd.FieldByName('type_add_name'       ).Value := Client_Temp.FieldByName('type_add_name'       ).Value;
    ClientDS_BargainAdd.FieldByName('brief_name'          ).Value := Client_Temp.FieldByName('brief_name'          ).Value;
    ClientDS_BargainAdd.FieldByName('type_exchange_id'    ).Value := Client_Temp.FieldByName('type_exchange_id'    ).Value;
    ClientDS_BargainAdd.FieldByName('type_calc_id'        ).Value := Client_Temp.FieldByName('type_calc_id'        ).Value;
    ClientDS_BargainAdd.FieldByName('add_rate'            ).Value := Client_Temp.FieldByName('add_rate'            ).Value;
    ClientDS_BargainAdd.FieldByName('add_count'           ).Value := Client_Temp.FieldByName('add_count'           ).Value;
    ClientDS_BargainAdd.Post;

    id := ClientDS_BargainAdd.FieldByName('add_id').AsInteger;
    Client_Temp.XMLData := ClientDS_BargainRail.XMLData;
    Client_Temp.Locate('add_id', add_id, []);

    ClientDS_BargainRail.Append();
    ClientDS_BargainRail.FieldByName('add_id'               ).Value := id;
    ClientDS_BargainRail.FieldByName('bargain_rail_id'      ).Value := null;
    ClientDS_BargainRail.FieldByName('bargain_add_id'       ).Value := null;
    ClientDS_BargainRail.FieldByName('calc_round_weight'    ).Value := Client_Temp.FieldByName('calc_round_weight'    ).Value;
    ClientDS_BargainRail.FieldByName('calc_kargo_min_norm'  ).Value := Client_Temp.FieldByName('calc_kargo_min_norm'  ).Value;
    ClientDS_BargainRail.FieldByName('calc_set_grp'         ).Value := Client_Temp.FieldByName('calc_set_grp'         ).Value;
    ClientDS_BargainRail.FieldByName('kargoETSNG_id'        ).Value := Client_Temp.FieldByName('kargoETSNG_id'        ).Value;
    ClientDS_BargainRail.FieldByName('kargoETSNG_cod'       ).Value := Client_Temp.FieldByName('kargoETSNG_cod'       ).Value;
    ClientDS_BargainRail.FieldByName('kargoETSNG_name'      ).Value := Client_Temp.FieldByName('kargoETSNG_name'      ).Value;
    ClientDS_BargainRail.FieldByName('kargoETSNG_group_name').Value := Client_Temp.FieldByName('kargoETSNG_group_name').Value;
    ClientDS_BargainRail.FieldByName('kargoGNG_id'          ).Value := Client_Temp.FieldByName('kargoGNG_id'          ).Value;
    ClientDS_BargainRail.FieldByName('kargoGNG_cod'         ).Value := Client_Temp.FieldByName('kargoGNG_cod'         ).Value;
    ClientDS_BargainRail.FieldByName('kargoGNG_name'        ).Value := Client_Temp.FieldByName('kargoGNG_name'        ).Value;
    ClientDS_BargainRail.FieldByName('state_begin_id'       ).Value := Client_Temp.FieldByName('state_begin_id'       ).Value;
    ClientDS_BargainRail.FieldByName('state_begin_name'     ).Value := Client_Temp.FieldByName('state_begin_name'     ).Value;
    ClientDS_BargainRail.FieldByName('state_end_id'         ).Value := Client_Temp.FieldByName('state_end_id'         ).Value;
    ClientDS_BargainRail.FieldByName('state_end_name'       ).Value := Client_Temp.FieldByName('state_end_name'       ).Value;
    ClientDS_BargainRail.FieldByName('node_begin_id'        ).Value := Client_Temp.FieldByName('node_begin_id'        ).Value;
    ClientDS_BargainRail.FieldByName('node_begin_cod'       ).Value := Client_Temp.FieldByName('node_begin_cod'       ).Value;
    ClientDS_BargainRail.FieldByName('node_begin_name'      ).Value := Client_Temp.FieldByName('node_begin_name'      ).Value;
    ClientDS_BargainRail.FieldByName('node_end_id'          ).Value := Client_Temp.FieldByName('node_end_id'          ).Value;
    ClientDS_BargainRail.FieldByName('node_end_cod'         ).Value := Client_Temp.FieldByName('node_end_cod'         ).Value;
    ClientDS_BargainRail.FieldByName('node_end_name'        ).Value := Client_Temp.FieldByName('node_end_name'        ).Value;
    ClientDS_BargainRail.FieldByName('cit_id'               ).Value := Client_Temp.FieldByName('cit_id').Value;
    ClientDS_BargainRail.FieldByName('type_kontener_id'     ).Value := Client_Temp.FieldByName('type_kontener_id').Value;
    ClientDS_BargainRail.FieldByName('set_attr_self'        ).Value := Client_Temp.FieldByName('set_attr_self').Value;
    ClientDS_BargainRail.FieldByName('telegram_num'         ).Value := Client_Temp.FieldByName('telegram_num').Value;
    ClientDS_BargainRail.FieldByName('pay_other_road'       ).Value := Client_Temp.FieldByName('pay_other_road').Value;
    ClientDS_BargainRail.FieldByName('firm_sender_id'       ).Value := Client_Temp.FieldByName('firm_sender_id').Value;
    ClientDS_BargainRail.FieldByName('firm_sender_name'     ).Value := Client_Temp.FieldByName('firm_sender_name').Value;
    ClientDS_BargainRail.FieldByName('firm_reciever_id'     ).Value := Client_Temp.FieldByName('firm_reciever_id').Value;
    ClientDS_BargainRail.FieldByName('firm_reciever_name'   ).Value := Client_Temp.FieldByName('firm_reciever_name').Value;
    ClientDS_BargainRail.FieldByName('kargoETSNG_group_name').Value := Client_Temp.FieldByName('kargoETSNG_group_name').Value;
    ClientDS_BargainRail.FieldByName('set_list_rate'        ).Value := Client_Temp.FieldByName('set_list_rate').Value;
    ClientDS_BargainRail.Post;


    Client_Temp.XMLData := ClientDS_BargainFact.XMLData;
    Client_Temp.Filter   := 'add_id=' + IntToStr(add_id);
    Client_Temp.Filtered := True;

    Client_Temp.First;
    while not Client_Temp.Eof do begin
      ClientDS_BargainFact.Append;
      ClientDS_BargainFact.FieldByName('add_id'           ).Value := id;
      ClientDS_BargainFact.FieldByName('bargain_fact_id'  ).Value := null;
      ClientDS_BargainFact.FieldByName('bargain_add_id'   ).Value := null;
      ClientDS_BargainFact.FieldByName('fact_id'          ).Value := Client_Temp.FieldByName('fact_id').Value;
      ClientDS_BargainFact.FieldByName('fact_rate_not_nds').Value := Client_Temp.FieldByName('fact_rate_not_nds').Value;
      ClientDS_BargainFact.FieldByName('fact_rate'        ).Value := Client_Temp.FieldByName('fact_rate').Value;
      ClientDS_BargainFact.FieldByName('fact_count'       ).Value := Client_Temp.FieldByName('fact_count').Value;
      ClientDS_BargainFact.FieldByName('fact_sum'         ).Value := Client_Temp.FieldByName('fact_sum').Value;
      ClientDS_BargainFact.FieldByName('type_vagon_id'    ).Value := Client_Temp.FieldByName('type_vagon_id').Value;
      ClientDS_BargainFact.FieldByName('type_send_id'     ).Value := Client_Temp.FieldByName('type_send_id').Value;
      ClientDS_BargainFact.FieldByName('type_vagon_name'  ).Value := Client_Temp.FieldByName('type_vagon_name').Value;
      ClientDS_BargainFact.FieldByName('type_send_name'   ).Value := Client_Temp.FieldByName('type_send_name').Value;
      ClientDS_BargainFact.FieldByName('set_main'         ).Value := Client_Temp.FieldByName('set_main').Value;
      ClientDS_BargainFact.FieldByName('exchange_date'    ).Value := Client_Temp.FieldByName('exchange_date').Value;
      ClientDS_BargainFact.Post;
      Client_Temp.Next;
    end;
    Client_Temp.Free;


    ShowTextMessage('Обновление данных', False);
    cxCurrencyEdit1.EditValue := null;
    cxCurrencyEdit4.EditValue := null;
    cxCurrencyEdit2.EditValue := null;
    CalcSum();
    ShowTextMessage;
  end;
end;


procedure TfmBargainAdd.dxBarButton7Click(Sender: TObject);
begin
  BargainToClientDS();
  if ClientDS_Bargain.FieldByName('contract_id').IsNull then begin
    Application.MessageBox('Выберите договор.', 'Внимание.', MB_ICONWARNING or MB_OK);
    Exit;
  end;


  if Fset_run_dll then fmBargainRailAdd := TfmBargainRailAdd.CreateDLL(Application, TdxBarButton(Sender).ClickItemLink.Owner.Owner.Tag, Fusr_pwd_lis, Fusr_pwd_docs)
  else fmBargainRailAdd := TfmBargainRailAdd.Create(Application, TdxBarButton(Sender).ClickItemLink.Owner.Owner.Tag);

  fmBargainRailAdd._SetClientDistance   := ClientDS_Bargain_AddDistance;
  fmBargainRailAdd._SetClientPayers     := ClientDS_Bargain_AddPayers;
  fmBargainRailAdd._SetClientBargainRail:= ClientDS_BargainRail;
  fmBargainRailAdd._SetClientBargainRate:= ClientDS_BargainRate;
  fmBargainRailAdd._SetClientBargainFact:= ClientDS_BargainFact;
  fmBargainRailAdd._SetClientBargainAdd := ClientDS_BargainAdd;
  fmBargainRailAdd._SetClientBargain    := ClientDS_Bargain;
  fmBargainRailAdd._SetClientFact       := ClientDS_Fact;
  fmBargainRailAdd._SetClientBargainDistance := ClientDS_Distance;
  fmBargainRailAdd._SetInsert           := -9;
  fmBargainRailAdd._SetTypeCalcAdd      := 0;


  if fmBargainRailAdd.ShowModal = mrOk then begin
    ShowTextMessage('Обновление данных', False);
    CalcSum();
    ShowTextMessage;
  end;
end;

procedure TfmBargainAdd.dxBarButton8Click(Sender: TObject);
var type_contract : integer;
           add_id : integer;
begin
  BargainToClientDS();
  if ClientDS_Bargain.FieldByName('contract_id').IsNull then begin
    Application.MessageBox('Выберите договор.', 'Внимание.', MB_ICONWARNING or MB_OK);
    Exit;
  end;


  if TControl(Sender).ClassNameIs('TdxBarButton') then
    type_contract := TdxBarButton(Sender).ClickItemLink.Owner.Owner.Tag
  else
    type_contract := TControl(Sender).Parent.Tag;

  if type_contract = 0 then add_id := cxGrid1DBBandedTableView1rate_id.DataBinding.Field.AsInteger
  else add_id := cxGrid2DBBandedTableView1rate_id.DataBinding.Field.AsInteger;



  if Fset_run_dll then fmBargainRailAdd := TfmBargainRailAdd.CreateDLL(Application, TdxBarButton(Sender).ClickItemLink.Owner.Owner.Tag, Fusr_pwd_lis, Fusr_pwd_docs)
  else fmBargainRailAdd := TfmBargainRailAdd.Create(Application, type_contract);

  fmBargainRailAdd._SetClientDistance   := ClientDS_Bargain_AddDistance;
  fmBargainRailAdd._SetClientPayers     := ClientDS_Bargain_AddPayers;
  fmBargainRailAdd._SetClientBargainRail:= ClientDS_BargainRail;
  fmBargainRailAdd._SetClientBargainRate:= ClientDS_BargainRate;
  fmBargainRailAdd._SetClientBargainFact:= ClientDS_BargainFact;
  fmBargainRailAdd._SetClientBargainAdd := ClientDS_BargainAdd;
  fmBargainRailAdd._SetClientBargain    := ClientDS_Bargain;
  fmBargainRailAdd._SetClientFact       := ClientDS_Fact;
  fmBargainRailAdd._SetUpdate           := add_id;

  if fmBargainRailAdd.ShowModal = mrOk then begin
    ShowTextMessage('Обновление данных', False);
    CalcSum();
    ShowTextMessage;
  end;
end;

procedure TfmBargainAdd.dxBarButton9Click(Sender: TObject);
var add_id: integer;
begin
  if Application.MessageBox(PChar('Вы точно уверены, что хотите удалить услугу?'),'Внимание',MB_ICONWARNING or MB_OKCANCEL) = ID_OK then begin
    if TdxBarButton(Sender).ClickItemLink.Owner.Owner.Tag = 0 then
      add_id := cxGrid1DBBandedTableView1rate_id.DataBinding.Field.AsInteger
    else
      add_id := cxGrid2DBBandedTableView1rate_id.DataBinding.Field.AsInteger;

    if ClientDS_BargainAdd.Locate('add_id', add_id, []) then begin
      ClientDS_BargainAdd.Delete;
    end;

    RefreshClientDS_Rate();
  end;
end;


function TfmBargainAdd.SaveBargain(): boolean;
var SP_bargain_new_modify: TADOStoredProc;
    res : boolean;
    ClientDS_add_temp : TClientDataSet;
    ClientDS_rail_temp : TClientDataSet;
    ClientDS_rate_temp : TClientDataSet;
    ClientDS_fact_add_temp : TClientDataSet;
    t : TDateTime;
begin

  ClientDS_add_temp := TClientDataSet.Create(nil);
  ClientDS_add_temp.FieldDefs.Add('add_id', ftInteger);
  ClientDS_add_temp.FieldDefs.Add('bargain_add_id', ftInteger);
  ClientDS_add_temp.FieldDefs.Add('type_add_id', ftInteger);
  ClientDS_add_temp.FieldDefs.Add('contract_id', ftInteger);
  ClientDS_add_temp.FieldDefs.Add('currency_id', ftInteger);
  ClientDS_add_temp.FieldDefs.Add('type_nds_id', ftInteger);
  ClientDS_add_temp.FieldDefs.Add('ed_izm_id', ftInteger);
  ClientDS_add_temp.FieldDefs.Add('service_id', ftInteger);
  ClientDS_add_temp.FieldDefs.Add('exchange_USD_val', ftCurrency);
  ClientDS_add_temp.FieldDefs.Add('exchange_EUR_val', ftCurrency);
  ClientDS_add_temp.FieldDefs.Add('exchange_CHF_val', ftCurrency);
  ClientDS_add_temp.FieldDefs.Add('type_exchange_id', ftInteger);
  ClientDS_add_temp.FieldDefs.Add('add_rate', ftCurrency);
  ClientDS_add_temp.FieldDefs.Add('add_count', ftCurrency);
  ClientDS_add_temp.FieldDefs.Add('type_calc_id', ftInteger);
  ClientDS_add_temp.FieldDefs.Add('set_include_nds', ftBoolean);
  ClientDS_add_temp.FieldDefs.Add('comment', ftString, 300);
  ClientDS_add_temp.FieldDefs.Add('date_period', ftDate);
  ClientDS_add_temp.FieldDefs.Add('date_period_finance', ftDate);
  ClientDS_add_temp.FieldDefs.Add('date_period_service', ftDate);
  ClientDS_add_temp.FieldDefs.Add('service_kind_id', ftInteger);
  ClientDS_add_temp.FieldDefs.Add('service_kind_rep_id', ftInteger);
  ClientDS_add_temp.CreateDataSet;
  ClientDS_add_temp.LogChanges := False;

  ClientDS_rail_temp := TClientDataSet.Create(nil);
  ClientDS_rail_temp.FieldDefs.Add('id', ftInteger);
  ClientDS_rail_temp.FieldDefs.Add('add_id', ftInteger);
  ClientDS_rail_temp.FieldDefs.Add('bargain_rail_id', ftInteger);
  ClientDS_rail_temp.FieldDefs.Add('bargain_add_id', ftInteger);
  ClientDS_rail_temp.FieldDefs.Add('calc_round_weight', ftInteger);
  ClientDS_rail_temp.FieldDefs.Add('calc_kargo_min_norm', ftCurrency);
  ClientDS_rail_temp.FieldDefs.Add('calc_set_grp', ftBoolean);
  ClientDS_rail_temp.FieldDefs.Add('kargoETSNG_id', ftInteger);
  ClientDS_rail_temp.FieldDefs.Add('kargoETSNG_add_id', ftInteger);
  ClientDS_rail_temp.FieldDefs.Add('kargoGNG_id', ftInteger);
  ClientDS_rail_temp.FieldDefs.Add('state_begin_id', ftInteger);
  ClientDS_rail_temp.FieldDefs.Add('state_end_id', ftInteger);
  ClientDS_rail_temp.FieldDefs.Add('node_begin_id', ftInteger);
  ClientDS_rail_temp.FieldDefs.Add('node_end_id', ftInteger);
  ClientDS_rail_temp.FieldDefs.Add('cit_id', ftInteger);
  ClientDS_rail_temp.FieldDefs.Add('type_kontener_id', ftInteger);
  ClientDS_rail_temp.FieldDefs.Add('set_attr_self', ftBoolean);
  ClientDS_rail_temp.FieldDefs.Add('telegram_num', ftString, 200);
  ClientDS_rail_temp.FieldDefs.Add('pay_other_road', ftString, 200);
  ClientDS_rail_temp.FieldDefs.Add('firm_sender_id', ftInteger);
  ClientDS_rail_temp.FieldDefs.Add('firm_reciever_id', ftInteger);
  ClientDS_rail_temp.FieldDefs.Add('set_list_rate', ftBoolean);
  ClientDS_rail_temp.CreateDataSet;
  ClientDS_rail_temp.LogChanges := False;

  ClientDS_rate_temp := TClientDataSet.Create(nil);
  ClientDS_rate_temp.FieldDefs.Add('id', ftInteger);
  ClientDS_rate_temp.FieldDefs.Add('add_id', ftInteger);
  ClientDS_rate_temp.FieldDefs.Add('bargain_rate_id', ftInteger);
  ClientDS_rate_temp.FieldDefs.Add('bargain_add_id', ftInteger);
  ClientDS_rate_temp.FieldDefs.Add('type_vagon_id', ftInteger);
  ClientDS_rate_temp.FieldDefs.Add('type_send_id', ftInteger);
  ClientDS_rate_temp.FieldDefs.Add('weight', ftCurrency);
  ClientDS_rate_temp.FieldDefs.Add('rate_val', ftCurrency);
  ClientDS_rate_temp.FieldDefs.Add('set_one', ftBoolean);
  ClientDS_rate_temp.CreateDataSet;
  ClientDS_rate_temp.LogChanges := False;

  ClientDS_fact_add_temp := TClientDataSet.Create(nil);
  ClientDS_fact_add_temp.FieldDefs.Add('id', ftInteger);
  ClientDS_fact_add_temp.FieldDefs.Add('add_id', ftInteger);
  ClientDS_fact_add_temp.FieldDefs.Add('bargain_fact_id', ftInteger);
  ClientDS_fact_add_temp.FieldDefs.Add('fact_id', ftInteger);
  ClientDS_fact_add_temp.FieldDefs.Add('bargain_add_id', ftInteger);
  ClientDS_fact_add_temp.FieldDefs.Add('type_vagon_id', ftInteger);
  ClientDS_fact_add_temp.FieldDefs.Add('type_send_id', ftInteger);
  ClientDS_fact_add_temp.FieldDefs.Add('fact_rate_not_nds', ftCurrency);
  ClientDS_fact_add_temp.FieldDefs.Add('fact_rate', ftCurrency);
  ClientDS_fact_add_temp.FieldDefs.Add('fact_count', ftCurrency);
  ClientDS_fact_add_temp.FieldDefs.Add('fact_sum', ftCurrency);
  ClientDS_fact_add_temp.FieldDefs.Add('set_main', ftBoolean);
  ClientDS_fact_add_temp.FieldDefs.Add('exchange_date', ftDate);
  ClientDS_fact_add_temp.CreateDataSet;
  ClientDS_fact_add_temp.LogChanges := False;


  ClientDS_BargainAdd.DisableControls;
  ClientDS_BargainAdd.First;
  while not ClientDS_BargainAdd.Eof do begin

    ClientDS_add_temp.Append;
    ClientDS_add_temp.FieldByName('add_id'           ).Value :=  ClientDS_BargainAdd.FieldByName('add_id'           ).Value;
    ClientDS_add_temp.FieldByName('bargain_add_id'   ).Value :=  ClientDS_BargainAdd.FieldByName('bargain_add_id'   ).Value;
    ClientDS_add_temp.FieldByName('type_add_id'      ).Value :=  ClientDS_BargainAdd.FieldByName('type_add_id'      ).Value;
    ClientDS_add_temp.FieldByName('contract_id'      ).Value :=  ClientDS_BargainAdd.FieldByName('contract_id'      ).Value;
    ClientDS_add_temp.FieldByName('currency_id'      ).Value :=  ClientDS_BargainAdd.FieldByName('currency_id'      ).Value;
    ClientDS_add_temp.FieldByName('type_nds_id'      ).Value :=  ClientDS_BargainAdd.FieldByName('type_nds_id'      ).Value;
    ClientDS_add_temp.FieldByName('ed_izm_id'        ).Value :=  ClientDS_BargainAdd.FieldByName('ed_izm_id'        ).Value;
    ClientDS_add_temp.FieldByName('service_id'       ).Value :=  ClientDS_BargainAdd.FieldByName('service_id'       ).Value;
    ClientDS_add_temp.FieldByName('exchange_USD_val' ).Value :=  ClientDS_BargainAdd.FieldByName('exchange_USD_val' ).Value;
    ClientDS_add_temp.FieldByName('exchange_EUR_val' ).Value :=  ClientDS_BargainAdd.FieldByName('exchange_EUR_val' ).Value;
    ClientDS_add_temp.FieldByName('exchange_CHF_val' ).Value :=  ClientDS_BargainAdd.FieldByName('exchange_CHF_val' ).Value;
    ClientDS_add_temp.FieldByName('type_exchange_id' ).Value :=  ClientDS_BargainAdd.FieldByName('type_exchange_id' ).Value;
    ClientDS_add_temp.FieldByName('add_rate'         ).Value :=  ClientDS_BargainAdd.FieldByName('add_rate'         ).Value;
    ClientDS_add_temp.FieldByName('add_count'        ).Value :=  ClientDS_BargainAdd.FieldByName('add_count'        ).Value;
    ClientDS_add_temp.FieldByName('type_calc_id'     ).Value :=  ClientDS_BargainAdd.FieldByName('type_calc_id'     ).Value;
    ClientDS_add_temp.FieldByName('set_include_nds'  ).Value :=  ClientDS_BargainAdd.FieldByName('set_include_nds'  ).Value;
    ClientDS_add_temp.FieldByName('comment'          ).Value :=  ClientDS_BargainAdd.FieldByName('comment'          ).Value;
    ClientDS_add_temp.FieldByName('date_period'        ).Value := ClientDS_BargainAdd.FieldByName('date_period').Value;
    ClientDS_add_temp.FieldByName('date_period_finance').Value := ClientDS_BargainAdd.FieldByName('date_period_finance').Value;
    ClientDS_add_temp.FieldByName('date_period_service').Value := ClientDS_BargainAdd.FieldByName('date_period_service').Value;
    ClientDS_add_temp.FieldByName('service_kind_id'    ).Value := ClientDS_BargainAdd.FieldByName('service_kind_id').Value;
    ClientDS_add_temp.FieldByName('service_kind_rep_id').Value := ClientDS_BargainAdd.FieldByName('service_kind_rep_id').Value;
    ClientDS_add_temp.Post;

    ClientDS_BargainAdd.Next;
  end;
  ClientDS_BargainAdd.EnableControls;

  ClientDS_BargainRail.DisableControls;
  ClientDS_BargainRail.First;
  while not ClientDS_BargainRail.Eof do begin

    ClientDS_rail_temp.Append;
    ClientDS_rail_temp.FieldByName('id'                  ).Value :=  ClientDS_BargainRail.FieldByName('id').Value;
    ClientDS_rail_temp.FieldByName('add_id'              ).Value :=  ClientDS_BargainRail.FieldByName('add_id').Value;
    ClientDS_rail_temp.FieldByName('bargain_rail_id'     ).Value :=  ClientDS_BargainRail.FieldByName('bargain_rail_id').Value;
    ClientDS_rail_temp.FieldByName('bargain_add_id'      ).Value :=  ClientDS_BargainRail.FieldByName('bargain_add_id').Value;
    ClientDS_rail_temp.FieldByName('calc_round_weight'   ).Value :=  ClientDS_BargainRail.FieldByName('calc_round_weight').Value;
    ClientDS_rail_temp.FieldByName('calc_kargo_min_norm' ).Value :=  ClientDS_BargainRail.FieldByName('calc_kargo_min_norm').Value;
    ClientDS_rail_temp.FieldByName('calc_set_grp'        ).Value :=  ClientDS_BargainRail.FieldByName('calc_set_grp').Value;
    ClientDS_rail_temp.FieldByName('kargoETSNG_id'       ).Value :=  ClientDS_BargainRail.FieldByName('kargoETSNG_id').Value;
    ClientDS_rail_temp.FieldByName('kargoETSNG_add_id'   ).Value :=  ClientDS_BargainRail.FieldByName('kargoETSNG_add_id').Value;
    ClientDS_rail_temp.FieldByName('kargoGNG_id'         ).Value :=  ClientDS_BargainRail.FieldByName('kargoGNG_id').Value;
    ClientDS_rail_temp.FieldByName('state_begin_id'      ).Value :=  ClientDS_BargainRail.FieldByName('state_begin_id').Value;
    ClientDS_rail_temp.FieldByName('state_end_id'        ).Value :=  ClientDS_BargainRail.FieldByName('state_end_id').Value;
    ClientDS_rail_temp.FieldByName('node_begin_id'       ).Value :=  ClientDS_BargainRail.FieldByName('node_begin_id').Value;
    ClientDS_rail_temp.FieldByName('node_end_id'         ).Value :=  ClientDS_BargainRail.FieldByName('node_end_id').Value;
    ClientDS_rail_temp.FieldByName('cit_id'              ).Value :=  ClientDS_BargainRail.FieldByName('cit_id').Value;
    ClientDS_rail_temp.FieldByName('type_kontener_id'    ).Value :=  ClientDS_BargainRail.FieldByName('type_kontener_id').Value;
    ClientDS_rail_temp.FieldByName('set_attr_self'       ).Value :=  ClientDS_BargainRail.FieldByName('set_attr_self').Value;
    ClientDS_rail_temp.FieldByName('telegram_num'        ).Value :=  ClientDS_BargainRail.FieldByName('telegram_num').Value;
    ClientDS_rail_temp.FieldByName('pay_other_road'      ).Value :=  ClientDS_BargainRail.FieldByName('pay_other_road').Value;
    ClientDS_rail_temp.FieldByName('firm_sender_id'      ).Value :=  ClientDS_BargainRail.FieldByName('firm_sender_id').Value;
    ClientDS_rail_temp.FieldByName('firm_reciever_id'    ).Value :=  ClientDS_BargainRail.FieldByName('firm_reciever_id').Value;
    ClientDS_rail_temp.FieldByName('set_list_rate'       ).Value :=  ClientDS_BargainRail.FieldByName('set_list_rate').Value;
    ClientDS_rail_temp.Post;

    ClientDS_BargainRail.Next;
  end;
  ClientDS_BargainRail.EnableControls;


  ClientDS_BargainRate.DisableControls;
  ClientDS_BargainRate.First;
  while not ClientDS_BargainRate.Eof do begin

    ClientDS_rate_temp.Append;
    ClientDS_rate_temp.FieldByName('id'              ).Value :=  ClientDS_BargainRate.FieldByName('id').Value;
    ClientDS_rate_temp.FieldByName('add_id'          ).Value :=  ClientDS_BargainRate.FieldByName('add_id').Value;
    ClientDS_rate_temp.FieldByName('bargain_rate_id' ).Value :=  ClientDS_BargainRate.FieldByName('bargain_rate_id').Value;
    ClientDS_rate_temp.FieldByName('bargain_add_id'  ).Value :=  ClientDS_BargainRate.FieldByName('bargain_add_id').Value;
    ClientDS_rate_temp.FieldByName('type_vagon_id'   ).Value :=  ClientDS_BargainRate.FieldByName('type_vagon_id').Value;
    ClientDS_rate_temp.FieldByName('type_send_id'    ).Value :=  ClientDS_BargainRate.FieldByName('type_send_id').Value;
    ClientDS_rate_temp.FieldByName('weight'          ).Value :=  ClientDS_BargainRate.FieldByName('weight').Value;
    ClientDS_rate_temp.FieldByName('rate_val'        ).Value :=  ClientDS_BargainRate.FieldByName('rate_val').Value;
    ClientDS_rate_temp.FieldByName('set_one'         ).Value :=  ClientDS_BargainRate.FieldByName('set_one').Value;
    ClientDS_rate_temp.Post;

    ClientDS_BargainRate.Next;
  end;
  ClientDS_BargainRate.EnableControls;

  ClientDS_BargainFact.DisableControls;
  ClientDS_BargainFact.First;
  while not ClientDS_BargainFact.Eof do begin

    ClientDS_fact_add_temp.Append;
    ClientDS_fact_add_temp.FieldByName('id'              ).Value := ClientDS_BargainFact.FieldByName('id'              ).Value;
    ClientDS_fact_add_temp.FieldByName('add_id'          ).Value := ClientDS_BargainFact.FieldByName('add_id'          ).Value;
    ClientDS_fact_add_temp.FieldByName('bargain_fact_id' ).Value := ClientDS_BargainFact.FieldByName('bargain_fact_id' ).Value;
    ClientDS_fact_add_temp.FieldByName('fact_id'         ).Value := ClientDS_BargainFact.FieldByName('fact_id'         ).Value;
    ClientDS_fact_add_temp.FieldByName('bargain_add_id'  ).Value := ClientDS_BargainFact.FieldByName('bargain_add_id'  ).Value;
    ClientDS_fact_add_temp.FieldByName('type_vagon_id'   ).Value := ClientDS_BargainFact.FieldByName('type_vagon_id'   ).Value;
    ClientDS_fact_add_temp.FieldByName('type_send_id'    ).Value := ClientDS_BargainFact.FieldByName('type_send_id'    ).Value;
    ClientDS_fact_add_temp.FieldByName('fact_rate_not_nds').Value:= ClientDS_BargainFact.FieldByName('fact_rate_not_nds').Value;
    ClientDS_fact_add_temp.FieldByName('fact_rate'        ).Value:= ClientDS_BargainFact.FieldByName('fact_rate'       ).Value;
    ClientDS_fact_add_temp.FieldByName('fact_count'       ).Value:= ClientDS_BargainFact.FieldByName('fact_count'      ).Value;
    ClientDS_fact_add_temp.FieldByName('fact_sum'         ).Value:= ClientDS_BargainFact.FieldByName('fact_sum'        ).Value;
    ClientDS_fact_add_temp.FieldByName('set_main'        ).Value := ClientDS_BargainFact.FieldByName('set_main'        ).Value;
    ClientDS_fact_add_temp.FieldByName('exchange_date'   ).Value := ClientDS_BargainFact.FieldByName('exchange_date'   ).Value;
    ClientDS_fact_add_temp.Post;

    ClientDS_BargainFact.Next;
  end;
  ClientDS_BargainFact.EnableControls;


  SP_bargain_new_modify := TADOStoredProc.Create(nil);
  SP_bargain_new_modify.Connection := Fconnect;
  SP_bargain_new_modify.ProcedureName := 'sp_bargain_new_modify';
  SP_bargain_new_modify.Parameters.Refresh;
  SP_bargain_new_modify.Parameters.ParamByName('@bargain_id'         ).Value := iif(Fbargain_id = -9,        null, Fbargain_id);
  SP_bargain_new_modify.Parameters.ParamByName('@type_action'        ).Value := Ftype_action;
  SP_bargain_new_modify.Parameters.ParamByName('@bargain_cod'        ).Value := iif(cxTextEdit13.Text = '',  null, cxTextEdit13.Text);
  SP_bargain_new_modify.Parameters.ParamByName('@contract_id'        ).Value := iif(Fcontract_id = -9,       null, Fcontract_id);
  SP_bargain_new_modify.Parameters.ParamByName('@type_bargain_id'    ).Value := iif(Ftype_bargain_id = -9,   null, Ftype_bargain_id);
  SP_bargain_new_modify.Parameters.ParamByName('@currency_id'        ).Value := iif(Fcurrency_id = -9,       null, Fcurrency_id);
  SP_bargain_new_modify.Parameters.ParamByName('@agreement_id'       ).Value := iif(Fagreement_id = -9,       null, Fagreement_id);
  SP_bargain_new_modify.Parameters.ParamByName('@date_period'        ).Value := _DatePeriod;
  SP_bargain_new_modify.Parameters.ParamByName('@date_period_service').Value := _DatePeriodService;
  SP_bargain_new_modify.Parameters.ParamByName('@kargoGNG_id'        ).Value := iif(FkargoGNG_id = -9,       null, FkargoGNG_id);
  SP_bargain_new_modify.Parameters.ParamByName('@kargoETSNG_id'      ).Value := iif(FkargoETSNG_id = -9,     null, FkargoETSNG_id);
  SP_bargain_new_modify.Parameters.ParamByName('@kargoETSNG_add_id'  ).Value := iif(FkargoETSNG_add_id = -9, null, FkargoETSNG_add_id);
  SP_bargain_new_modify.Parameters.ParamByName('@count_day_vagon'    ).Value := null;
  SP_bargain_new_modify.Parameters.ParamByName('@count_vagon'        ).Value := null;
  SP_bargain_new_modify.Parameters.ParamByName('@count_weight'       ).Value := null;

  SP_bargain_new_modify.Parameters.ParamByName('@bargain_add_xml'         ).Value := DataXMLToSQL(ClientDS_add_temp);
  SP_bargain_new_modify.Parameters.ParamByName('@bargain_fact_add_xml'    ).Value := DataXMLToSQL(ClientDS_fact_add_temp);
  SP_bargain_new_modify.Parameters.ParamByName('@bargain_rail_xml'        ).Value := DataXMLToSQL(ClientDS_rail_temp);
  SP_bargain_new_modify.Parameters.ParamByName('@bargain_rate_xml'        ).Value := DataXMLToSQL(ClientDS_rate_temp);

  SP_bargain_new_modify.Parameters.ParamByName('@bargain_distance_xml'    ).Value := DataXMLToSQL(ClientDS_Distance);
  SP_bargain_new_modify.Parameters.ParamByName('@bargain_add_distance_xml').Value := DataXMLToSQL(ClientDS_Bargain_AddDistance);
  SP_bargain_new_modify.Parameters.ParamByName('@bargain_add_payers_xml'  ).Value := DataXMLToSQL(ClientDS_Bargain_AddPayers);

  ClientDS_add_temp.Free;
  ClientDS_fact_add_temp.Free;
  ClientDS_rail_temp.Free;
  ClientDS_rate_temp.Free;

  try
    res := True;
//    t := Now;
    SP_bargain_new_modify.ExecProc;
//    ShowMessage(IntToStr(DateUtils.MilliSecondsBetween(Now, t))+'ms');
    Fbargain_id := SP_bargain_new_modify.Parameters.ParamByName('@bargain_id').Value;
  except
    res := False;
    SP_bargain_new_modify.Free;
    Exit;
  end;

  SP_bargain_new_modify.Free;

  Result := res;
end;


procedure TfmBargainAdd.BitBtn1Click(Sender: TObject);
begin
  Fcontract_id     := iif(cxLookupComboBox1.EditValue = null, -9, cxLookupComboBox1.EditValue);
  Ftype_bargain_id := iif(cxLookupComboBox2.EditValue = null, -9, cxLookupComboBox2.EditValue);
  Fcurrency_id     := iif(cxLookupComboBox3.EditValue = null, -9, cxLookupComboBox3.EditValue);
  Fagreement_id    := iif(cxLookupComboBox4.EditValue = null, -9, cxLookupComboBox4.EditValue);

  if Fcontract_id = -9 then begin
    Application.MessageBox('Выберите договор.', 'Ошибка', MB_OK);
    ModalResult := mrNone;
    Exit;
  end;

  if Fcurrency_id = -9 then begin
    Application.MessageBox('Выберите валюту.', 'Ошибка', MB_OK);
    ModalResult := mrNone;
    Exit;
  end;

  if FkargoETSNG_id = -9 then begin
    Application.MessageBox('Выберите груз.', 'Ошибка', MB_OK);
    ModalResult := mrNone;
    Exit;
  end;


  if SaveBargain() then ModalResult := mrOk
  else ModalResult := mrNone;
end;

procedure TfmBargainAdd.CalcSum();
var SP_bargain_new_add_CALC : TADOStoredProc;
          ClientDS_add_temp : TClientDataSet;
         ClientDS_rail_temp : TClientDataSet;
         ClientDS_rate_temp : TClientDataSet;
     ClientDS_fact_add_temp : TClientDataSet;
         ClientDS_fact_temp : TClientDataSet;
                string_save : TStringList;
begin
  if Fset_calc_enabled = True then begin
    cxCurrencyEdit1.EditValue := null;
    cxCurrencyEdit4.EditValue := null;
    cxCurrencyEdit2.EditValue := null;


    Fcurrency_id := iif(cxLookupComboBox3.EditValue = null, -9, cxLookupComboBox3.EditValue);

    ClientDS_add_temp := TClientDataSet.Create(nil);
    ClientDS_add_temp.FieldDefs.Add('add_id', ftInteger);
    ClientDS_add_temp.FieldDefs.Add('type_nds_cod', ftString, 20);
    ClientDS_add_temp.FieldDefs.Add('ed_izm_cod', ftString, 20);
    ClientDS_add_temp.FieldDefs.Add('set_include_nds', ftBoolean);
    ClientDS_add_temp.FieldDefs.Add('contract_id', ftInteger);
    ClientDS_add_temp.FieldDefs.Add('currency_id', ftInteger);
    ClientDS_add_temp.FieldDefs.Add('exchange_USD_val', ftCurrency);
    ClientDS_add_temp.FieldDefs.Add('exchange_EUR_val', ftCurrency);
    ClientDS_add_temp.FieldDefs.Add('exchange_CHF_val', ftCurrency);
    ClientDS_add_temp.FieldDefs.Add('type_exchange_id', ftInteger);
    ClientDS_add_temp.FieldDefs.Add('type_calc_id', ftInteger);
    ClientDS_add_temp.FieldDefs.Add('add_rate', ftCurrency);
    ClientDS_add_temp.FieldDefs.Add('add_count', ftCurrency);
    ClientDS_add_temp.CreateDataSet;
    ClientDS_add_temp.LogChanges := False;

    ClientDS_rail_temp := TClientDataSet.Create(nil);
    ClientDS_rail_temp.FieldDefs.Add('add_id', ftInteger);
    ClientDS_rail_temp.FieldDefs.Add('calc_round_weight', ftInteger);
    ClientDS_rail_temp.FieldDefs.Add('calc_kargo_min_norm', ftCurrency);
    ClientDS_rail_temp.FieldDefs.Add('calc_set_grp', ftBoolean);
    ClientDS_rail_temp.FieldDefs.Add('set_list_rate', ftBoolean);
    ClientDS_rail_temp.CreateDataSet;
    ClientDS_rail_temp.LogChanges := False;

    ClientDS_rate_temp := TClientDataSet.Create(nil);
    ClientDS_rate_temp.FieldDefs.Add('add_id', ftInteger);
    ClientDS_rate_temp.FieldDefs.Add('type_vagon_id', ftInteger);
    ClientDS_rate_temp.FieldDefs.Add('type_send_id', ftInteger);
    ClientDS_rate_temp.FieldDefs.Add('weight', ftCurrency);
    ClientDS_rate_temp.FieldDefs.Add('rate_val', ftCurrency);
    ClientDS_rate_temp.FieldDefs.Add('set_one', ftBoolean);
    ClientDS_rate_temp.CreateDataSet;
    ClientDS_rate_temp.LogChanges := False;

    ClientDS_fact_add_temp := TClientDataSet.Create(nil);
    ClientDS_fact_add_temp.FieldDefs.Add('add_id', ftInteger); // add_id
    ClientDS_fact_add_temp.FieldDefs.Add('fact_id', ftInteger); // fact_id
    ClientDS_fact_add_temp.FieldDefs.Add('type_vagon_id', ftInteger); // type_vagon_id
    ClientDS_fact_add_temp.FieldDefs.Add('type_send_id', ftInteger); // type_send_id
    ClientDS_fact_add_temp.FieldDefs.Add('fact_rate_not_nds', ftCurrency); // fact_rate_not_nds
    ClientDS_fact_add_temp.FieldDefs.Add('fact_rate', ftCurrency); // fact_rate
    ClientDS_fact_add_temp.FieldDefs.Add('fact_count', ftCurrency); // fact_count
    ClientDS_fact_add_temp.FieldDefs.Add('fact_sum', ftCurrency); // fact_sum
    ClientDS_fact_add_temp.FieldDefs.Add('set_main', ftBoolean); // set_main
    ClientDS_fact_add_temp.FieldDefs.Add('exchange_date', ftDate); // exchange_date
    ClientDS_fact_add_temp.CreateDataSet;
    ClientDS_fact_add_temp.LogChanges := False;

    ClientDS_fact_temp := TClientDataSet.Create(nil);
    ClientDS_fact_temp.FieldDefs.Add('fact_id', ftInteger);
    ClientDS_fact_temp.FieldDefs.Add('fact_weight', ftCurrency);
    ClientDS_fact_temp.FieldDefs.Add('calc_weight', ftCurrency);
    ClientDS_fact_temp.FieldDefs.Add('calc_weight_check', ftBoolean);
    ClientDS_fact_temp.FieldDefs.Add('kargo_capacity', ftCurrency);
    ClientDS_fact_temp.CreateDataSet;
    ClientDS_fact_temp.LogChanges := False;

    ClientDS_BargainAdd.DisableControls;
    ClientDS_BargainAdd.First;
    while not ClientDS_BargainAdd.Eof do begin

      ClientDS_add_temp.Append;
      ClientDS_add_temp.FieldByName('add_id'           ).Value :=  ClientDS_BargainAdd.FieldByName('add_id'           ).Value;
      ClientDS_add_temp.FieldByName('set_include_nds'  ).Value :=  ClientDS_BargainAdd.FieldByName('set_include_nds'  ).Value;
      ClientDS_add_temp.FieldByName('contract_id'      ).Value :=  ClientDS_BargainAdd.FieldByName('contract_id'      ).Value;
      ClientDS_add_temp.FieldByName('currency_id'      ).Value :=  ClientDS_BargainAdd.FieldByName('currency_id'      ).Value;
      ClientDS_add_temp.FieldByName('type_nds_cod'     ).Value :=  ClientDS_BargainAdd.FieldByName('type_nds_cod'     ).Value;
      ClientDS_add_temp.FieldByName('ed_izm_cod'       ).Value :=  ClientDS_BargainAdd.FieldByName('ed_izm_cod'       ).Value;
      ClientDS_add_temp.FieldByName('exchange_USD_val' ).Value :=  ClientDS_BargainAdd.FieldByName('exchange_USD_val' ).Value;
      ClientDS_add_temp.FieldByName('exchange_EUR_val' ).Value :=  ClientDS_BargainAdd.FieldByName('exchange_EUR_val' ).Value;
      ClientDS_add_temp.FieldByName('exchange_CHF_val' ).Value :=  ClientDS_BargainAdd.FieldByName('exchange_CHF_val' ).Value;
      ClientDS_add_temp.FieldByName('type_exchange_id' ).Value :=  ClientDS_BargainAdd.FieldByName('type_exchange_id' ).Value;
      ClientDS_add_temp.FieldByName('add_rate'         ).Value :=  ClientDS_BargainAdd.FieldByName('add_rate'         ).Value;
      ClientDS_add_temp.FieldByName('type_calc_id'     ).Value :=  ClientDS_BargainAdd.FieldByName('type_calc_id'     ).Value;
      ClientDS_add_temp.FieldByName('add_count'        ).Value :=  ClientDS_BargainAdd.FieldByName('add_count'        ).Value;
      ClientDS_add_temp.Post;

      ClientDS_BargainAdd.Next;
    end;
    ClientDS_BargainAdd.EnableControls;

    ClientDS_BargainRail.DisableControls;
    ClientDS_BargainRail.First;
    while not ClientDS_BargainRail.Eof do begin

      ClientDS_rail_temp.Append;
      ClientDS_rail_temp.FieldByName('add_id'              ).Value :=  ClientDS_BargainRail.FieldByName('add_id').Value;
      ClientDS_rail_temp.FieldByName('calc_round_weight'   ).Value :=  ClientDS_BargainRail.FieldByName('calc_round_weight').Value;
      ClientDS_rail_temp.FieldByName('calc_kargo_min_norm' ).Value :=  ClientDS_BargainRail.FieldByName('calc_kargo_min_norm').Value;
      ClientDS_rail_temp.FieldByName('calc_set_grp'        ).Value :=  ClientDS_BargainRail.FieldByName('calc_set_grp').Value;
      ClientDS_rail_temp.FieldByName('set_list_rate'       ).Value :=  ClientDS_BargainRail.FieldByName('set_list_rate').Value;
      ClientDS_rail_temp.Post;

      ClientDS_BargainRail.Next;
    end;
    ClientDS_BargainRail.EnableControls;


    ClientDS_BargainRate.DisableControls;
    ClientDS_BargainRate.First;
    while not ClientDS_BargainRate.Eof do begin

      ClientDS_rate_temp.Append;
      ClientDS_rate_temp.FieldByName('add_id'          ).Value :=  ClientDS_BargainRate.FieldByName('add_id').Value;
      ClientDS_rate_temp.FieldByName('type_vagon_id'   ).Value :=  ClientDS_BargainRate.FieldByName('type_vagon_id').Value;
      ClientDS_rate_temp.FieldByName('type_send_id'    ).Value :=  ClientDS_BargainRate.FieldByName('type_send_id').Value;
      ClientDS_rate_temp.FieldByName('weight'          ).Value :=  ClientDS_BargainRate.FieldByName('weight').Value;
      ClientDS_rate_temp.FieldByName('rate_val'        ).Value :=  ClientDS_BargainRate.FieldByName('rate_val').Value;
      ClientDS_rate_temp.FieldByName('set_one'         ).Value :=  ClientDS_BargainRate.FieldByName('set_one').Value;
      ClientDS_rate_temp.Post;

      ClientDS_BargainRate.Next;
    end;
    ClientDS_BargainRate.EnableControls;


    ClientDS_Fact.DisableControls;
    ClientDS_Fact.First;
    while not ClientDS_Fact.Eof do begin
      ClientDS_fact_temp.AppendRecord([
              ClientDS_Fact.FieldByName('fact_id').Value,
              ClientDS_Fact.FieldByName('fact_weight').Value,
              ClientDS_Fact.FieldByName('calc_weight').Value,
              ClientDS_Fact.FieldByName('calc_weight_check').Value,
              ClientDS_Fact.FieldByName('kargo_capacity').Value
          ]);
       ClientDS_Fact.Next;
    end;
    ClientDS_Fact.EnableControls;


    ClientDS_BargainFact.DisableControls;
    ClientDS_BargainFact.First;
    while not ClientDS_BargainFact.Eof do begin

      ClientDS_fact_add_temp.Append;
      ClientDS_fact_add_temp.FieldByName('add_id'          ).Value := ClientDS_BargainFact.FieldByName('add_id'          ).Value;
      ClientDS_fact_add_temp.FieldByName('fact_id'         ).Value := ClientDS_BargainFact.FieldByName('fact_id'         ).Value;
      ClientDS_fact_add_temp.FieldByName('type_vagon_id'   ).Value := ClientDS_BargainFact.FieldByName('type_vagon_id'   ).Value;
      ClientDS_fact_add_temp.FieldByName('type_send_id'    ).Value := ClientDS_BargainFact.FieldByName('type_send_id'    ).Value;
      ClientDS_fact_add_temp.FieldByName('fact_rate_not_nds').Value := ClientDS_BargainFact.FieldByName('fact_rate_not_nds').Value;
      ClientDS_fact_add_temp.FieldByName('fact_rate'        ).Value := ClientDS_BargainFact.FieldByName('fact_rate').Value;
      ClientDS_fact_add_temp.FieldByName('fact_count'       ).Value := ClientDS_BargainFact.FieldByName('fact_count').Value;
      ClientDS_fact_add_temp.FieldByName('fact_sum'         ).Value := ClientDS_BargainFact.FieldByName('fact_sum').Value;
      ClientDS_fact_add_temp.FieldByName('set_main'        ).Value := ClientDS_BargainFact.FieldByName('set_main'   ).Value;
      ClientDS_fact_add_temp.FieldByName('exchange_date'   ).Value := ClientDS_BargainFact.FieldByName('exchange_date').Value;
      ClientDS_fact_add_temp.Post;

      ClientDS_BargainFact.Next;
    end;
    ClientDS_BargainFact.EnableControls;

    SP_bargain_new_add_CALC := TADOStoredProc.Create(nil);
    SP_bargain_new_add_CALC.Connection := Fconnect;
    SP_bargain_new_add_CALC.ProcedureName := 'sp_bargain_new_add_CALC_2';
    SP_bargain_new_add_CALC.Parameters.Refresh;
    SP_bargain_new_add_CALC.Parameters.ParamByName('@set_out_param_bargain').Value := True;
    SP_bargain_new_add_CALC.Parameters.ParamByName('@set_result_add'       ).Value := True;
    SP_bargain_new_add_CALC.Parameters.ParamByName('@set_result_vagon'     ).Value := False;
    SP_bargain_new_add_CALC.Parameters.ParamByName('@currency_bargain_id'         ).Value := iif(Fcurrency_id = -9, null, Fcurrency_id);

    SP_bargain_new_add_CALC.Parameters.ParamByName('@bargain_add_xml'     ).Value := DataXMLToSQL(ClientDS_add_temp);
    SP_bargain_new_add_CALC.Parameters.ParamByName('@bargain_rail_xml'    ).Value := DataXMLToSQL(ClientDS_rail_temp);
    SP_bargain_new_add_CALC.Parameters.ParamByName('@bargain_fact_xml'    ).Value := DataXMLToSQL(ClientDS_fact_temp);
    SP_bargain_new_add_CALC.Parameters.ParamByName('@bargain_fact_add_xml').Value := DataXMLToSQL(ClientDS_fact_add_temp); // ClientDS_BargainFact
    SP_bargain_new_add_CALC.Parameters.ParamByName('@bargain_rate_xml'    ).Value := DataXMLToSQL(ClientDS_rate_temp);
    SP_bargain_new_add_CALC.Open;

  //  string_save := TStringList.Create;
  //  string_save.Add('DECLARE @out_count_vagon			money');
  //	string_save.Add('DECLARE @out_count_weight		money');
  //	string_save.Add('DECLARE @out_count_day_vagon	money');
  //	string_save.Add('DECLARE @out_count					  money');
  //	string_save.Add('DECLARE @out_sum					    money');
  //	string_save.Add('DECLARE @out_sum_alt				  money');
  //	string_save.Add('DECLARE @out_client_sum			money');
  //	string_save.Add('DECLARE @out_agent_sum				money');
  //	string_save.Add('DECLARE @out_comiss_sum			money');
  //  string_save.Add('exec sp_bargain_new_add_CALC_2');
  //  string_save.Add('@bargain_id = null,');
  //	string_save.Add('@set_out_param_bargain = 1,');
  //	string_save.Add('@out_count_vagon = @out_count_vagon OUTPUT,');
  //	string_save.Add('@out_count_weight = @out_count_weight OUTPUT,');
  //	string_save.Add('@out_count_day_vagon = @out_count_day_vagon OUTPUT,');
  //	string_save.Add('@out_count = @out_count OUTPUT,');
  //	string_save.Add('@out_sum = @out_sum OUTPUT,');
  //	string_save.Add('@out_sum_alt = @out_sum_alt OUTPUT,');
  //	string_save.Add('@out_client_sum = @out_client_sum OUTPUT,');
  //	string_save.Add('@out_agent_sum = @out_agent_sum OUTPUT,');
  //	string_save.Add('@out_comiss_sum = @out_comiss_sum OUTPUT,');
  //	string_save.Add('@set_result_add = 1,');
  //	string_save.Add('@set_result_vagon = 0,');
  //	string_save.Add('@bargain_correct_type = null,');
  //	string_save.Add('@bargain_calc_round_weight = ' + IntToStr(cxRadioGroup2.ItemIndex) + ',');
  //	string_save.Add('@bargain_calc_kargo_min_norm  = 0,');
  //	string_save.Add('@bargain_calc_set_grp = ' + IntToStr(Ord(cxCheckBox5.Checked)) + ',' );
  //	string_save.Add('@currency_alt_id = ' + iif(Fcurrency_id = -9, 'null', IntToStr(Fcurrency_id)) + ',');
  //	string_save.Add('@bargain_add_xml =''' + DataXMLToSQL(ClientDS_add_temp) + ''',');
  //	string_save.Add('@bargain_rail_xml=''' +DataXMLToSQL(ClientDS_rail_temp) + ''',');
  //	string_save.Add('@bargain_rate_xml=''' +DataXMLToSQL(ClientDS_rate_temp) + ''',');
  //	string_save.Add('@bargain_fact_xml=''' +DataXMLToSQL(ClientDS_Fact_temp) + ''',');
  //	string_save.Add('@bargain_fact_add_xml=''' +DataXMLToSQL(ClientDS_fact_add_temp)+ '''');
  //  string_save.SaveToFile('d:\calc.txt');
  //  string_save.Free;

    ClientDS_add_temp.Free;
    ClientDS_rate_temp.Free;
    ClientDS_rail_temp.Free;
    ClientDS_fact_add_temp.Free;
    ClientDS_fact_temp.Free;

    ClientDS_BargainAdd.DisableControls;
    SP_bargain_new_add_CALC.First;
    while not SP_bargain_new_add_CALC.Eof do begin
      if ClientDS_BargainAdd.Locate('add_id', SP_bargain_new_add_CALC.FieldByName('add_id').Value,[]) then begin
        ClientDS_BargainAdd.Edit;
        ClientDS_BargainAdd.FieldByName('add_count'   ).Value := SP_bargain_new_add_CALC.FieldByName('add_count').Value;
        ClientDS_BargainAdd.FieldByName('add_sum'     ).Value := SP_bargain_new_add_CALC.FieldByName('add_sum').Value;
        ClientDS_BargainAdd.FieldByName('add_sum_alt' ).Value := SP_bargain_new_add_CALC.FieldByName('add_sum_alt').Value;
        ClientDS_BargainAdd.Post;
      end;
      SP_bargain_new_add_CALC.Next;
    end;
    ClientDS_BargainAdd.EnableControls;

    cxCurrencyEdit3.EditValue  := SP_bargain_new_add_CALC.Parameters.ParamByName('@out_count_vagon').Value;
    cxCurrencyEdit15.EditValue := SP_bargain_new_add_CALC.Parameters.ParamByName('@out_count_weight').Value;
    cxCurrencyEdit16.EditValue := SP_bargain_new_add_CALC.Parameters.ParamByName('@out_count_day_vagon').Value;

    cxCurrencyEdit1.EditValue  := SP_bargain_new_add_CALC.Parameters.ParamByName('@bargain_client_sum').Value;
    cxCurrencyEdit4.EditValue  := SP_bargain_new_add_CALC.Parameters.ParamByName('@bargain_agent_sum').Value;
    cxCurrencyEdit2.EditValue  := SP_bargain_new_add_CALC.Parameters.ParamByName('@bargain_comiss_sum').Value;

    RefreshClientDS_Rate();
  end;
end;

procedure TfmBargainAdd.cxLookupComboBox1PropertiesChange(Sender: TObject);
var contract_id  : integer;
    agreement_id : integer;
begin
  cxButtonEdit13.Text := '';
  cxButtonEdit14.Text := '';

  if Query_Client.Active then begin
    contract_id := iif(cxLookupComboBox1.EditValue = null, -9, cxLookupComboBox1.EditValue);

    if Query_Client.Locate('contract_id', contract_id, []) then begin
      cxButtonEdit13.Text         := Query_Client.FieldByName('firm_self_name').AsString;
      cxButtonEdit14.Text         := Query_Client.FieldByName('contract_cod'  ).AsString;
      cxLookupComboBox3.EditValue := Query_Client.FieldByName('currency_id'   ).AsString;
    end;

    // Проверка приложения к договору
    agreement_id := iif(cxLookupComboBox4.EditValue = null, -9, cxLookupComboBox4.EditValue);
    Query_Agreement.Close;
    Query_Agreement.Parameters.ParamByName('contract_id').Value := contract_id;
    Query_Agreement.Open;
    if Query_Agreement.Locate('agreement_id', agreement_id, []) then
      cxLookupComboBox4.EditValue := Query_Agreement.FieldByName('agreement_id').Value
    else
      cxLookupComboBox4.EditValue := null; 
  end;
end;

procedure TfmBargainAdd.cxLookupComboBox3PropertiesEditValueChanged(Sender: TObject);
begin
  Label19.Caption := cxLookupComboBox3.Text;
  Label21.Caption := cxLookupComboBox3.Text;
  Label23.Caption := cxLookupComboBox3.Text;
  cxGrid1DBBandedTableView1add_sum_alt.Caption := 'Сумма, ' + cxLookupComboBox3.Text;
  cxGrid2DBBandedTableView1add_sum_alt.Caption := 'Сумма, ' + cxLookupComboBox3.Text;

  if cxLookupComboBox3.EditValue = 3 then begin
    cxGrid1DBBandedTableView1add_sum_alt.Styles.Content    := cxStyle_Sum_RUB;
    cxGrid2DBBandedTableView1add_sum_alt.Styles.Content    := cxStyle_Sum_RUB;
  end;

  if cxLookupComboBox3.EditValue = 1 then begin
    cxGrid1DBBandedTableView1add_sum_alt.Styles.Content    := cxStyle_Sum_USD;
    cxGrid2DBBandedTableView1add_sum_alt.Styles.Content    := cxStyle_Sum_USD;
  end;

  if cxLookupComboBox3.EditValue = 6 then begin
    cxGrid1DBBandedTableView1add_sum_alt.Styles.Content    := cxStyle_Sum_EUR;
    cxGrid2DBBandedTableView1add_sum_alt.Styles.Content    := cxStyle_Sum_EUR;
  end;

  if cxLookupComboBox3.EditValue = 5 then begin
    cxGrid1DBBandedTableView1add_sum_alt.Styles.Content    := cxStyle_Sum_CHF;
    cxGrid2DBBandedTableView1add_sum_alt.Styles.Content    := cxStyle_Sum_CHF;
  end;

  CalcSum();
end;

procedure TfmBargainAdd.SetKargoAdd(set_kargo_add: boolean);
begin
  if set_kargo_add = True then begin
    Label14.Enabled         := True;
    cxButtonEdit11.Enabled  := True;
    cxButtonEdit12.Enabled  := True;
    cxTextEdit16.Enabled    := True;

  end else begin
    FkargoETSNG_add_id  := -9;
    cxButtonEdit11.Text := '';
    cxButtonEdit12.Text := '';
    cxTextEdit16.Text   := '';
    
    Label14.Enabled         := False;
    cxButtonEdit11.Enabled  := False;
    cxButtonEdit12.Enabled  := False;
    cxTextEdit16.Enabled    := False;
  end;
end;

procedure TfmBargainAdd.RefreshClientDS_Rate();
begin
  if (ClientDS_RateClient.Active) and (ClientDS_RateAgent.Active) then begin

    ClientDS_RateClient.EmptyDataSet;
    ClientDS_RateAgent.EmptyDataSet;

    ClientDS_BargainAdd.First;
    while not ClientDS_BargainAdd.Eof do begin


      if ClientDS_BargainAdd.FieldByName('type_contract').AsInteger = 0 then begin
        ClientDS_RateClient.Append;
        ClientDS_RateClient.FieldByName('rate_id'           ).Value := ClientDS_BargainAdd.FieldByName('add_id').Value;
        ClientDS_RateClient.FieldByName('contract_cod'      ).Value := ClientDS_BargainAdd.FieldByName('contract_cod').Value;
        ClientDS_RateClient.FieldByName('contract_set'      ).Value := ClientDS_BargainAdd.FieldByName('contract_set').Value;
        ClientDS_RateClient.FieldByName('firm_customer_name').Value := ClientDS_BargainAdd.FieldByName('firm_customer_name').Value;
        ClientDS_RateClient.FieldByName('ed_izm_name'       ).Value := ClientDS_BargainAdd.FieldByName('ed_izm_name').Value;
        ClientDS_RateClient.FieldByName('add_count'         ).Value := ClientDS_BargainAdd.FieldByName('add_count').Value;
        ClientDS_RateClient.FieldByName('add_sum'           ).Value := ClientDS_BargainAdd.FieldByName('add_sum').Value;
        ClientDS_RateClient.FieldByName('type_add_name'     ).Value := ClientDS_BargainAdd.FieldByName('type_add_name').Value;
        ClientDS_RateClient.FieldByName('brief_name'        ).Value := ClientDS_BargainAdd.FieldByName('brief_name').Value;
        ClientDS_RateClient.FieldByName('add_sum_alt'       ).Value := ClientDS_BargainAdd.FieldByName('add_sum_alt').Value;
        ClientDS_RateClient.FieldByName('type_calc_name'    ).Value := ClientDS_BargainAdd.FieldByName('type_calc_name').Value;

        if (ClientDS_BargainRail.Locate('add_id', ClientDS_BargainAdd.FieldByName('add_id').Value, [])) then begin
          ClientDS_RateClient.FieldByName('node_begin_name'   ).Value := ClientDS_BargainRail.FieldByName('node_begin_name').Value;
          ClientDS_RateClient.FieldByName('node_end_name'     ).Value := ClientDS_BargainRail.FieldByName('node_end_name').Value;
          ClientDS_RateClient.FieldByName('kargoETSNG_name'   ).Value := ClientDS_BargainRail.FieldByName('kargoETSNG_name').Value;
        end;
        ClientDS_RateClient.Post;
      end else begin
        ClientDS_RateAgent.Append;
        ClientDS_RateAgent.FieldByName('rate_id'           ).Value := ClientDS_BargainAdd.FieldByName('add_id').Value;
        ClientDS_RateAgent.FieldByName('contract_cod'      ).Value := ClientDS_BargainAdd.FieldByName('contract_cod').Value;
        ClientDS_RateAgent.FieldByName('contract_set'      ).Value := ClientDS_BargainAdd.FieldByName('contract_set').Value;
        ClientDS_RateAgent.FieldByName('firm_customer_name').Value := ClientDS_BargainAdd.FieldByName('firm_customer_name').Value;
        ClientDS_RateAgent.FieldByName('ed_izm_name'       ).Value := ClientDS_BargainAdd.FieldByName('ed_izm_name').Value;
        ClientDS_RateAgent.FieldByName('add_count'         ).Value := ClientDS_BargainAdd.FieldByName('add_count').Value;
        ClientDS_RateAgent.FieldByName('add_sum'           ).Value := ClientDS_BargainAdd.FieldByName('add_sum').Value;
        ClientDS_RateAgent.FieldByName('type_add_name'     ).Value := ClientDS_BargainAdd.FieldByName('type_add_name').Value;
        ClientDS_RateAgent.FieldByName('brief_name'        ).Value := ClientDS_BargainAdd.FieldByName('brief_name').Value;
        ClientDS_RateAgent.FieldByName('add_sum_alt'       ).Value := ClientDS_BargainAdd.FieldByName('add_sum_alt').Value;
        ClientDS_RateAgent.FieldByName('type_calc_name'    ).Value := ClientDS_BargainAdd.FieldByName('type_calc_name').Value;

        if (ClientDS_BargainRail.Locate('add_id', ClientDS_BargainAdd.FieldByName('add_id').Value, [])) then begin
          ClientDS_RateAgent.FieldByName('node_begin_name'   ).Value := ClientDS_BargainRail.FieldByName('node_begin_name').Value;
          ClientDS_RateAgent.FieldByName('node_end_name'     ).Value := ClientDS_BargainRail.FieldByName('node_end_name').Value;
          ClientDS_RateAgent.FieldByName('kargoETSNG_name'   ).Value := ClientDS_BargainRail.FieldByName('kargoETSNG_name').Value;
        end;
        ClientDS_RateAgent.Post;
      end;

      ClientDS_BargainAdd.Next;
    end;
  end;
end;

procedure TfmBargainAdd.LocateBargainAdd(bargain_add_id: integer);
begin
  if ClientDS_BargainAdd.Locate('bargain_add_id', bargain_add_id, []) then begin
    if ClientDS_BargainAdd.FieldByName('type_contract').AsInteger = 0 then begin
        if cxGrid1DBBandedTableView1.DataController.LocateByKey(ClientDS_BargainAdd.FieldByName('add_id').Value) = False then cxGrid1DBBandedTableView1.Controller.GoToFirst;
        if cxGrid1DBBandedTableView1.Controller.FocusedRecord <> nil then  cxGrid1DBBandedTableView1.Controller.FocusedRecord.Selected := True;
    end else begin
        if cxGrid2DBBandedTableView1.DataController.LocateByKey(ClientDS_BargainAdd.FieldByName('add_id').Value) = False then cxGrid2DBBandedTableView1.Controller.GoToFirst;
        if cxGrid2DBBandedTableView1.Controller.FocusedRecord <> nil then  cxGrid2DBBandedTableView1.Controller.FocusedRecord.Selected := True;
    end;
  end;
end;

procedure TfmBargainAdd.ShowBargainAdd(bargain_add_id: integer);
var type_contract : integer;
           add_id : integer;
begin
  BargainToClientDS();
  if ClientDS_Bargain.FieldByName('contract_id').IsNull then begin
    Application.MessageBox('Выберите договор.', 'Внимание.', MB_ICONWARNING or MB_OK);
    Exit;
  end;

  if ClientDS_BargainAdd.Locate('bargain_add_id', bargain_add_id, []) then begin
    add_id := ClientDS_BargainAdd.FieldByName('add_id').Value;
    type_contract := ClientDS_BargainAdd.FieldByName('type_contract').AsInteger;
  end else begin
    Exit;
  end;

  fmBargainRailAdd := TfmBargainRailAdd.Create(Application, type_contract);
  fmBargainRailAdd._SetClientDistance   := ClientDS_Bargain_AddDistance;
  fmBargainRailAdd._SetClientPayers     := ClientDS_Bargain_AddPayers;
  fmBargainRailAdd._SetClientBargainRail:= ClientDS_BargainRail;
  fmBargainRailAdd._SetClientBargainRate:= ClientDS_BargainRate;
  fmBargainRailAdd._SetClientBargainFact:= ClientDS_BargainFact;
  fmBargainRailAdd._SetClientBargainAdd := ClientDS_BargainAdd;
  fmBargainRailAdd._SetClientBargain    := ClientDS_Bargain;
  fmBargainRailAdd._SetClientFact       := ClientDS_Fact;
  fmBargainRailAdd._SetUpdate           := add_id;

  if fmBargainRailAdd.ShowModal = mrOk then begin
    ShowTextMessage('Обновление данных', False);
    CalcSum();
    ShowTextMessage;
  end;
end;

end.
