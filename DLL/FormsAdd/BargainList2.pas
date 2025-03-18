unit BargainList2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Default,
  Dialogs, StdCtrls, ExtCtrls, ImageList, ImgList, DB,  DBClient, ADODB, Menus, ComObj,
  cxGraphics, cxControls, cxLookAndFeels, dxScrollbarAnnotations, cxButtons,   dxSkinOffice2019White,
  cxLookAndFeelPainters, cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, cxDBData, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridBandedTableView, cxGridDBBandedTableView, cxClasses, cxGridLevel, cxGrid, cxCurrencyEdit, cxContainer, cxTextEdit,
  cxMaskEdit, cxDropDownEdit, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, dxBar, cxLabel, cxPropertiesStore, cxPC, dxSkinDarkSide,
  cxGroupBox, cxColorComboBox,  dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom,
  dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMetropolis, dxSkinMetropolisDark, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue,
  dxSkinOffice2010Silver, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinPumpkin, dxSkinSeven,
  dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus, dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008, dxSkinTheAsphaltWorld,
  dxSkinsDefaultPainters, dxSkinValentine, dxSkinVS2010, dxSkinWhiteprint, dxSkinXmas2008Blue, dxSkinscxPCPainter, cxNavigator, dxBarBuiltInMenu,
  dxSkinsdxBarPainter, dxSkinOffice2016Colorful, dxSkinOffice2016Dark, dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light,  cxImageList, cxCheckBox, cxRadioGroup, cxButtonEdit, cxGridDBTableView, dxDateRanges, dxSkinOffice2019Colorful,
  cxDataControllerConditionalFormattingRulesManagerDialog, dxSkinTheBezier, dxSkinBasic, dxSkinOffice2019Black, dxSkinOffice2019DarkGray,
  dxSkinWXI;


type
  TfmBargainList2 = class(TForm)
    Panel1: TPanel;
    Splitter1: TSplitter;
    Panel2: TPanel;
    Panel3: TPanel;
    Splitter2: TSplitter;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    cxGrid1DBBandedTableView1: TcxGridDBBandedTableView;
    Client_Contract: TClientDataSet;
    DS_Contract: TDataSource;
    Client_Contractglobal_id: TIntegerField;
    Client_Contractbargain_id: TIntegerField;
    Client_Contractshaping_rate_id: TIntegerField;
    Client_Contractcontract_id: TIntegerField;
    Client_Contractcontract_cod: TStringField;
    Client_Contractfirm_customer_name: TStringField;
    Client_Contractfirm_self_name: TStringField;
    cxGrid4: TcxGrid;
    cxGridDBBandedTableView2: TcxGridDBBandedTableView;
    cxGridLevel3: TcxGridLevel;
    cxGrid3: TcxGrid;
    cxGrid3DBBandedTableView1: TcxGridDBBandedTableView;
    cxGridLevel2: TcxGridLevel;
    ClientDS_ListRate: TClientDataSet;
    AutoIncField2: TAutoIncField;
    DS_ListRate: TDataSource;
    ClientDS_Fact: TClientDataSet;
    ClientDS_Factfact_id: TIntegerField;
    ClientDS_Factnum_document: TStringField;
    ClientDS_Factnum_document_pref: TStringField;
    ClientDS_Factnum_vagon: TIntegerField;
    ClientDS_Factnum_konten: TStringField;
    ClientDS_Factdate_from_to: TDateTimeField;
    ClientDS_Factdatpr: TDateTimeField;
    ClientDS_Facttype_kontener_name: TStringField;
    ClientDS_Factfact_rate: TCurrencyField;
    ClientDS_Factfact_sum: TCurrencyField;
    DS_Fact: TDataSource;
    ClientDS_ListRaterate_id: TIntegerField;
    ClientDS_ListRatetype_rate: TIntegerField;
    ClientDS_ListRateweight: TCurrencyField;
    ClientDS_ListRaterate_val: TCurrencyField;
    ClientDS_ListRateset_one: TBooleanField;
    ClientDS_ListRatetype_tools_id: TIntegerField;
    ClientDS_ListRateattr_self: TIntegerField;
    cxGridDBBandedTableView2id: TcxGridDBBandedColumn;
    cxGridDBBandedTableView2lis_rate_id: TcxGridDBBandedColumn;
    cxGridDBBandedTableView2rate_id: TcxGridDBBandedColumn;
    cxGridDBBandedTableView2type_rate: TcxGridDBBandedColumn;
    cxGridDBBandedTableView2weight: TcxGridDBBandedColumn;
    cxGridDBBandedTableView2rate_val: TcxGridDBBandedColumn;
    cxGridDBBandedTableView2set_one: TcxGridDBBandedColumn;
    cxGridDBBandedTableView2type_tools_name: TcxGridDBBandedColumn;
    cxGridDBBandedTableView2attr_self_name: TcxGridDBBandedColumn;
    ClientDS_ListRatetype_tools_name: TStringField;
    ClientDS_ListRateattr_self_name: TStringField;
    ClientDS_ListRatefact_id: TIntegerField;
    ClientDS_Facttype_kontener: TIntegerField;
    ClientDS_Factattr_self: TIntegerField;
    ClientDS_Factattr_self_name: TStringField;
    Client_Contractcurrency_id: TIntegerField;
    Client_Contractbrief_name: TStringField;
    Client_Contracted_izm_id: TIntegerField;
    Client_Contracted_izm_name: TStringField;
    Client_Contracttype_calc_sum: TIntegerField;
    Client_Contracttype_calc_sum_name: TStringField;
    Client_Contractnds_id: TIntegerField;
    Client_Contractnds_name: TStringField;
    cxGrid1DBBandedTableView1global_id: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1bargain_id: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1shaping_rate_id: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1contract_id: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1contract_cod: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1firm_customer_name: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1firm_self_name: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1currency_id: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1brief_name: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1ed_izm_id: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1ed_izm_name: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1type_calc_sum: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1type_calc_sum_name: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1nds_id: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1nds_name: TcxGridDBBandedColumn;
    ClientDS_RateFact: TClientDataSet;
    IntegerField1: TIntegerField;
    DS_FactDetail: TDataSource;
    ClientDS_RateFactrate_id: TIntegerField;
    ClientDS_ListRatelist_rate_id: TIntegerField;
    dxBarManager1: TdxBarManager;
    dxBarManager1Bar1: TdxBar;
    dxBarPopupMenu1: TdxBarPopupMenu;
    dxBarButton1: TdxBarButton;
    dxBarSubItem1: TdxBarSubItem;
    dxBarButton2: TdxBarButton;
    dxBarButton3: TdxBarButton;
    dxBarPopupMenu2: TdxBarPopupMenu;
    dxBarButton6: TdxBarButton;
    dxBarSubItem2: TdxBarSubItem;
    dxBarButton7: TdxBarButton;
    dxBarButton8: TdxBarButton;
    dxBarPopupMenu3: TdxBarPopupMenu;
    dxBarButton11: TdxBarButton;
    dxBarSubItem3: TdxBarSubItem;
    dxBarButton12: TdxBarButton;
    dxBarButton13: TdxBarButton;
    dxBarButton16: TdxBarButton;
    dxBarButton17: TdxBarButton;
    Panel18: TPanel;
    dxBarButton18: TdxBarButton;
    dxBarSubItem5: TdxBarSubItem;
    dxBarSubItem6: TdxBarSubItem;
    dxBarSubItem7: TdxBarSubItem;
    dxBarSubItem8: TdxBarSubItem;
    dxBarSubItem9: TdxBarSubItem;
    dxBarSubItem10: TdxBarSubItem;
    dxBarSubItem11: TdxBarSubItem;
    dxBarSubItem12: TdxBarSubItem;
    dxBarSubItem13: TdxBarSubItem;
    dxBarSubItem14: TdxBarSubItem;
    dxBarSubItem15: TdxBarSubItem;
    dxBarSubItem16: TdxBarSubItem;
    dxBarSubItem17: TdxBarSubItem;
    dxBarSubItem18: TdxBarSubItem;
    dxBarSubItem19: TdxBarSubItem;
    dxBarSubItem37: TdxBarSubItem;
    ClientDS_Factcount_vagon: TIntegerField;
    ClientDS_Factcount_weight: TCurrencyField;
    cxGrid3DBBandedTableView1fact_id: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1date_from_to: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1datpr: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1num_vagon: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1num_konten: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1num_document_pref: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1num_document: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1type_kontener: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1type_kontener_name: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1attr_self: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1attr_self_name: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1count_vagon: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1count_weight: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1fact_rate: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1fact_sum: TcxGridDBBandedColumn;
    ClientDS_Factfact_weight: TCurrencyField;
    cxGrid3DBBandedTableView1fact_weight: TcxGridDBBandedColumn;
    ClientDS_RateFactcount_vagon: TIntegerField;
    ClientDS_RateFactcount_weight: TCurrencyField;
    ClientDS_RateFactfact_rate: TCurrencyField;
    ClientDS_RateFactfact_sum: TCurrencyField;
    dxBarButton21: TdxBarButton;
    Client_Contractcount_vagon: TIntegerField;
    Client_Contractcount_weight: TFloatField;
    Client_Contractfact_sum: TCurrencyField;
    Client_Contractfact_sum_USD: TCurrencyField;
    Client_Contractfact_sum_RUB: TCurrencyField;
    cxGrid1DBBandedTableView1count_vagon: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1count_weight: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1fact_sum: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1fact_sum_USD: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1fact_sum_RUB: TcxGridDBBandedColumn;
    dxBarButton22: TdxBarButton;
    dxBarButton23: TdxBarButton;
    cxGridDBBandedTableView2Column1: TcxGridDBBandedColumn;
    ClientDS_Facttype_list_rate: TIntegerField;
    ClientDS_RateFacttype_list_rate: TIntegerField;
    cxGrid3DBBandedTableView1type_list_rate: TcxGridDBBandedColumn;
    ClientDS_Factdisplay_type_kontener_name: TStringField;
    ClientDS_Factdisplay_attr_self_name: TStringField;
    cxPropertiesStore1: TcxPropertiesStore;
    dxBarButton19: TdxBarButton;
    cxPageControl1: TcxPageControl;
    cxTabSheet1: TcxTabSheet;
    ClientDS_Factnode_begin_name: TStringField;
    ClientDS_Factnode_end_name: TStringField;
    cxGrid3DBBandedTableView1node_begin_name: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1node_end_name: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1type_sps_name: TcxGridDBBandedColumn;
    Panel5: TPanel;
    cxLabel2: TcxLabel;
    Query_AttrSelf: TADOQuery;
    Query_TypeTools: TADOQuery;
    cxTabSheet2: TcxTabSheet;
    cxGrid2: TcxGrid;
    cxGridDBBandedTableView1: TcxGridDBBandedTableView;
    cxGridDBBandedTableView1fact_id: TcxGridDBBandedColumn;
    cxGridDBBandedTableView1date_from_to: TcxGridDBBandedColumn;
    cxGridDBBandedTableView1datpr: TcxGridDBBandedColumn;
    cxGridDBBandedTableView1num_vagon: TcxGridDBBandedColumn;
    cxGridDBBandedTableView1num_document_pref: TcxGridDBBandedColumn;
    cxGridDBBandedTableView1num_document: TcxGridDBBandedColumn;
    cxGridDBBandedTableView1fact_weight: TcxGridDBBandedColumn;
    cxGridDBBandedTableView1type_kontener: TcxGridDBBandedColumn;
    cxGridDBBandedTableView1type_kontener_name: TcxGridDBBandedColumn;
    cxGridDBBandedTableView1attr_self: TcxGridDBBandedColumn;
    cxGridDBBandedTableView1attr_self_name: TcxGridDBBandedColumn;
    cxGridLevel1: TcxGridLevel;
    dxBarPopupMenu4: TdxBarPopupMenu;
    dxBarSubItem24: TdxBarSubItem;
    dxBarButton24: TdxBarButton;
    dxBarButton25: TdxBarButton;
    dxBarButton26: TdxBarButton;
    dxBarButton27: TdxBarButton;
    dxBarButton28: TdxBarButton;
    dxBarSeparator1: TdxBarSeparator;
    dxBarButton29: TdxBarButton;
    dxBarButton30: TdxBarButton;
    dxBarButton31: TdxBarButton;
    dxBarButton32: TdxBarButton;
    dxBarSeparator2: TdxBarSeparator;
    Client_Contracted_izm_cod: TStringField;
    Client_Contractvid_send: TIntegerField;
    cxGrid1DBBandedTableView1vid_send: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1ed_izm_cod: TcxGridDBBandedColumn;
    dxBarSubItem62: TdxBarSubItem;
    ClientDS_Facttype_sps_name: TStringField;
    Client_Contractcontract_date: TDateField;
    cxGrid1DBBandedTableView1contract_date: TcxGridDBBandedColumn;
    dxBarSubItem63: TdxBarSubItem;
    dxBarButton4: TdxBarButton;
    ClientDS_Facttype_sps_id: TIntegerField;
    ClientDS_Factnode_begin_id: TIntegerField;
    ClientDS_Factnode_end_id: TIntegerField;
    dxBarButton5: TdxBarButton;
    dxBarButton9: TdxBarButton;
    dxBarButton10: TdxBarButton;
    ClientDS_Facttransport_pay: TCurrencyField;
    cxGrid3DBBandedTableView1transport_pay: TcxGridDBBandedColumn;
    ClientDS_Factnode_begin_cod: TStringField;
    ClientDS_Factnode_end_cod: TStringField;
    dxBarButton14: TdxBarButton;
    dxBarButton15: TdxBarButton;
    ClientDS_Factglobal_color: TIntegerField;
    cxGrid3DBBandedTableView1global_color: TcxGridDBBandedColumn;
    cxGridDBBandedTableView1global_color: TcxGridDBBandedColumn;
    dxBarButton20: TdxBarButton;
    dxBarButton33: TdxBarButton;
    dxBarButton34: TdxBarButton;
    dxBarSubItem65: TdxBarSubItem;
    dxBarButton35: TdxBarButton;
    cxGridDBBandedTableView2Column2: TcxGridDBBandedColumn;
    cxGridDBBandedTableView2Column3: TcxGridDBBandedColumn;
    dxBarSubItem66: TdxBarSubItem;
    ClientDS_FactkargoETSNG_name: TStringField;
    ClientDS_FactkargoETSNG_cod: TStringField;
    cxGrid3DBBandedTableView1kargoETSNG_name: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1node_begin_cod: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1node_end_cod: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1kargoETSNG_cod: TcxGridDBBandedColumn;
    cxPageControl2: TcxPageControl;
    cxTabSheet3: TcxTabSheet;
    cxTabSheet5: TcxTabSheet;
    Panel4: TPanel;
    Splitter3: TSplitter;
    cxGrid6: TcxGrid;
    cxGridDBBandedTableView4: TcxGridDBBandedTableView;
    cxGridLevel5: TcxGridLevel;
    ClientDS_Sum: TClientDataSet;
    DS_Sum: TDataSource;
    ClientDS_Sumsum_id: TIntegerField;
    ClientDS_Sumsum_caption: TStringField;
    cxGridDBBandedTableView4sum_id: TcxGridDBBandedColumn;
    cxGridDBBandedTableView4sum_caption: TcxGridDBBandedColumn;
    dxBarButton42: TdxBarButton;
    dxBarSubItem70: TdxBarSubItem;
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
    cxImageList1: TcxImageList;
    dxBarButton43: TdxBarButton;
    ClientDS_Factdistance: TIntegerField;
    dxBarButton44: TdxBarButton;
    cxGrid3DBBandedTableView1distance: TcxGridDBBandedColumn;
    ClientDS_Factset_not_delete: TBooleanField;
    cxGrid3DBBandedTableView1kargo_capacity: TcxGridDBBandedColumn;
    ClientDS_Factkargo_capacity: TCurrencyField;
    ClientDS_Factfact_users_comment: TStringField;
    cxGrid3DBBandedTableView1fact_users_comment: TcxGridDBBandedColumn;
    dxBarSubItem28: TdxBarSubItem;
    dxBarButton46: TdxBarButton;
    dxBarButton45: TdxBarButton;
    ClientDS_Factvagon_owner_contract_id: TIntegerField;
    ClientDS_Factvagon_owner: TStringField;
    ClientDS_Factvagon_owner_contract_cod: TStringField;
    cxGrid3DBBandedTableView1vagon_owner: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1vagon_owner_contract_cod: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1vagon_owner_contract_id: TcxGridDBBandedColumn;
    dxBarButton47: TdxBarButton;
    dxBarButton48: TdxBarButton;
    dxBarSubItem100: TdxBarSubItem;
    dxBarButton49: TdxBarButton;
    ClientDS_Factnode_pp_in_cod: TStringField;
    ClientDS_Factnode_pp_in_name: TStringField;
    ClientDS_Factnode_pp_out_cod: TStringField;
    ClientDS_Factnode_pp_out_name: TStringField;
    cxGrid3DBBandedTableView1node_pp_in_cod: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1node_pp_in_name: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1node_pp_out_cod: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1node_pp_out_name: TcxGridDBBandedColumn;
    dxBarSubItem107: TdxBarSubItem;
    Panel6: TPanel;
    cxGrid1DBBandedTableView1set_include_nds: TcxGridDBBandedColumn;
    Client_Contractset_include_nds: TBooleanField;
    ClientDS_Factnds_name: TStringField;
    cxGrid3DBBandedTableView1nds_name: TcxGridDBBandedColumn;
    Client_Contractnds_cod: TStringField;
    cxGrid1DBBandedTableView1nds_cod: TcxGridDBBandedColumn;
    Client_Contractservice_type: TIntegerField;
    Client_Contractservice_type_name: TStringField;
    cxGrid1DBBandedTableView1service_type: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1service_type_name: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1shaping_rate_type_id: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1shaping_rate_type_name: TcxGridDBBandedColumn;
    Client_Contractshaping_rate_type_id: TIntegerField;
    Client_Contractshaping_rate_type_name: TStringField;
    cxTabSheet4: TcxTabSheet;
    ClientDS_SumRate: TClientDataSet;
    DS_SumRate: TDataSource;
    ClientDS_SumRatecount_vagon: TIntegerField;
    ClientDS_SumRatecount_weight: TFloatField;
    ClientDS_SumRatefact_rate: TCurrencyField;
    ClientDS_SumRatefact_sum: TCurrencyField;
    ClientDS_SumRatefact_sum_RUB: TCurrencyField;
    ClientDS_SumRatefact_sum_notNDS_RUB: TCurrencyField;
    ClientDS_SumRatefact_sum_USD: TCurrencyField;
    ClientDS_SumRatefact_sum_notNDS_USD: TCurrencyField;
    ClientDS_SumRatends_name: TStringField;
    ClientDS_SumRaterw_id: TIntegerField;
    ClientDS_SumRaterate_id: TIntegerField;
    Client_Contractshaping_rate_round_weight: TIntegerField;
    Client_Contractshaping_rate_round_weight_name: TStringField;
    Client_Contractshaping_kargo_min_norm: TIntegerField;
    Client_Contractshaping_check_kargo_capacity: TBooleanField;
    Client_Contractvid_send_name: TStringField;
    cxGrid1DBBandedTableView1shaping_rate_round_weight: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1shaping_rate_round_weight_name: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1shaping_kargo_min_norm: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1shaping_check_kargo_capacity: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1vid_send_name: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView2: TcxGridDBBandedTableView;
    ClientDS_SumAbs: TClientDataSet;
    ClientDS_SumAbsid: TIntegerField;
    ClientDS_SumAbsshaping_rate_val: TCurrencyField;
    ClientDS_SumAbsshaping_rate_count: TCurrencyField;
    ClientDS_SumAbsed_izm_name: TStringField;
    ClientDS_SumAbsnds_name: TStringField;
    ClientDS_SumAbsfact_sum: TCurrencyField;
    DS_SumAbs: TDataSource;
    cxGrid3DBBandedTableView2id: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView2shaping_rate_val: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView2shaping_rate_count: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView2ed_izm_name: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView2nds_name: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView2fact_sum: TcxGridDBBandedColumn;
    Client_Contractshaping_rate_val: TCurrencyField;
    Client_Contractshaping_rate_count: TCurrencyField;
    Panel15: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label12: TLabel;
    Label14: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    cxCurrencyEdit4: TcxCurrencyEdit;
    cxCurrencyEdit5: TcxCurrencyEdit;
    cxLookupComboBox3: TcxLookupComboBox;
    cxLookupComboBox5: TcxLookupComboBox;
    cxCurrencyEdit6: TcxCurrencyEdit;
    cxLookupComboBox9: TcxLookupComboBox;
    cxCheckBox6: TcxCheckBox;
    cxButtonEdit15: TcxButtonEdit;
    cxButtonEdit1: TcxButtonEdit;
    cxButtonEdit17: TcxButtonEdit;
    cxCurrencyEdit1: TcxCurrencyEdit;
    cxCurrencyEdit2: TcxCurrencyEdit;
    cxCheckBox8: TcxCheckBox;
    cxRadioGroup1: TcxRadioGroup;
    Panel8: TPanel;
    cxRadioGroup2: TcxRadioGroup;
    cxCheckBox1: TcxCheckBox;
    cxCheckBox2: TcxCheckBox;
    cxTextEdit5: TcxTextEdit;
    cxCheckBox12: TcxCheckBox;
    cxCheckBox3: TcxCheckBox;
    cxRadioGroup3: TcxRadioGroup;
    cxGrid1DBBandedTableView1shaping_rate_val: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1shaping_rate_count: TcxGridDBBandedColumn;
    Client_Contractshaping_rate_sum: TCurrencyField;
    Client_Contractshaping_rate_NDS_sum: TCurrencyField;
    Client_Contractshaping_rate_notNDS_sum: TCurrencyField;
    cxGrid1DBBandedTableView1shaping_rate_sum: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1shaping_rate_NDS_sum: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1shaping_rate_notNDS_sum: TcxGridDBBandedColumn;
    Client_Contractexchange_USD_val: TCurrencyField;
    Client_Contractexchange_EUR_val: TCurrencyField;
    Client_Contractexchange_CHF_val: TCurrencyField;
    cxGrid1DBBandedTableView1exchange_USD_val: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1exchange_CHF_val: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1exchange_EUR_val: TcxGridDBBandedColumn;
    Query_NDS: TADOQuery;
    Query_Ed_Izm: TADOQuery;
    Query_Currency: TADOQuery;
    DS_Currency: TDataSource;
    DS_Ed_izm: TDataSource;
    DS_NDS: TDataSource;
    dxBarPopupMenu5: TdxBarPopupMenu;
    dxBarPopupMenu6: TdxBarPopupMenu;
    dxBarButton58: TdxBarButton;
    dxBarSubItem115: TdxBarSubItem;
    dxBarButton59: TdxBarButton;
    dxBarButton60: TdxBarButton;
    cxStyle2: TcxStyle;
    dxBarButton36: TdxBarButton;
    ClientDS_GridSum: TClientDataSet;
    IntegerField2: TIntegerField;
    CurrencyField1: TCurrencyField;
    CurrencyField2: TCurrencyField;
    ClientDS_GridSumcount_weight: TFloatField;
    ClientDS_GridSumcount_vagon: TIntegerField;
    dxBarSubItem104: TdxBarSubItem;
    cxGrid3DBBandedTableView1road_begin_name: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1road_end_name: TcxGridDBBandedColumn;
    ClientDS_Factroad_begin_name: TStringField;
    ClientDS_Factroad_end_name: TStringField;
    ClientDS_Factrod_vagon_cod: TStringField;
    cxGrid3DBBandedTableView1rod_vagon_cod: TcxGridDBBandedColumn;
    dxBarButton38: TdxBarButton;
    ClientDS_Factxml_reply_id: TIntegerField;
    cxGrid3DBBandedTableView1xml_reply_id: TcxGridDBBandedColumn;
    dxBarSubItem105: TdxBarSubItem;
    dxBarButton39: TdxBarButton;
    dxBarSubItem110: TdxBarSubItem;
    dxBarSubItem111: TdxBarSubItem;
    dxBarButton40: TdxBarButton;
    dxBarButton41: TdxBarButton;
    dxBarButton50: TdxBarButton;
    dxBarButton52: TdxBarButton;
    cxStyle_ColorWhite: TcxStyle;
    ClientDS_Factfirm_info_name: TStringField;
    cxGrid3DBBandedTableView1firm_info_name: TcxGridDBBandedColumn;
    cxButton1: TcxButton;
    cxButton3: TcxButton;
    Client_Contractbudget_name: TStringField;
    cxGrid1DBBandedTableView1budget_name: TcxGridDBBandedColumn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cxGrid1DBBandedTableView1FocusedRecordChanged(Sender: TcxCustomGridTableView; APrevFocusedRecord, AFocusedRecord: TcxCustomGridRecord; ANewItemRecordFocusingChanged: Boolean);
    procedure cxGrid1DBBandedTableView1FilterOnChanged(Sender: TObject);
    procedure cxGrid1DBBandedTableView1CustomDrawCell(Sender: TcxCustomGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
    procedure cxGrid1DBBandedTableView1CustomDrawColumnHeader(Sender: TcxGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxGridColumnHeaderViewInfo; var ADone: Boolean);
    procedure cxGrid1DBBandedTableView1FocusedItemChanged(Sender: TcxCustomGridTableView; APrevFocusedItem, AFocusedItem: TcxCustomGridTableItem);
    procedure cxGrid1DBBandedTableView1KeyPress(Sender: TObject; var Key: Char);
    procedure cxGridDBBandedTableView2CustomDrawCell(Sender: TcxCustomGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
    procedure cxGrid3DBBandedTableView1CustomDrawCell(Sender: TcxCustomGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
    procedure cxGrid3DBBandedTableView1KeyPress(Sender: TObject; var Key: Char);
    procedure dxBarButton1Click(Sender: TObject);
    procedure dxBarButton2Click(Sender: TObject);
    procedure dxBarButton3Click(Sender: TObject);
    procedure dxBarButton6Click(Sender: TObject);
    procedure dxBarButton7Click(Sender: TObject);
    procedure dxBarButton8Click(Sender: TObject);
    procedure dxBarButton11Click(Sender: TObject);
    procedure dxBarButton12Click(Sender: TObject);
    procedure dxBarButton13Click(Sender: TObject);
    procedure ClientDS_ListRateweightGetText(Sender: TField; var Text: string; DisplayText: Boolean);
    procedure cxGridDBBandedTableView2Editing(Sender: TcxCustomGridTableView; AItem: TcxCustomGridTableItem; var AAllow: Boolean);
    procedure ClientDS_ListRateAfterPost(DataSet: TDataSet);
    procedure dxBarButton17Click(Sender: TObject);
    procedure cxGrid3DBBandedTableView1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure dxBarButton16Click(Sender: TObject);
    procedure dxBarButton18Click(Sender: TObject);
    procedure dxBarButton21Click(Sender: TObject);
    procedure dxBarButton22Click(Sender: TObject);
    procedure dxBarButton23Click(Sender: TObject);
    procedure ClientDS_ListRateAfterDelete(DataSet: TDataSet);
    procedure FormDestroy(Sender: TObject);
    procedure cxGrid3DBBandedTableView1EditKeyDown(Sender: TcxCustomGridTableView; AItem: TcxCustomGridTableItem; AEdit: TcxCustomEdit; var Key: Word; Shift: TShiftState);
    procedure dxBarButton19Click(Sender: TObject);
    procedure cxPageControl1Change(Sender: TObject);
    procedure dxBarButton24Click(Sender: TObject);
    procedure cxGridDBBandedTableView1CustomDrawCell(Sender: TcxCustomGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
    procedure dxBarButton32Click(Sender: TObject);
    procedure dxBarButton29Click(Sender: TObject);
    procedure dxBarPopupMenu4Popup(Sender: TObject);
    procedure dxBarButton31Click(Sender: TObject);
    procedure dxBarButton30Click(Sender: TObject);
    procedure cxPageControl1DrawTabEx(AControl: TcxCustomTabControl; ATab: TcxTab; Font: TFont);
    procedure cxGrid3DBBandedTableView1count_vagonGetDisplayText(Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord; var AText: string);
    procedure dxBarSubItem6Popup(Sender: TObject);
    procedure dxBarSubItem19Popup(Sender: TObject);
    procedure dxBarPopupMenu3Popup(Sender: TObject);
    procedure dxBarSubItem15Popup(Sender: TObject);
    procedure dxBarSubItem17Popup(Sender: TObject);
    procedure dxBarSubItem14Popup(Sender: TObject);
    procedure dxBarSubItem13Popup(Sender: TObject);
    procedure dxBarSubItem11Popup(Sender: TObject);
    procedure dxBarSubItem12Popup(Sender: TObject);
    procedure dxBarSubItem7Popup(Sender: TObject);
    procedure dxBarSubItem8Popup(Sender: TObject);
    procedure dxBarSubItem9Popup(Sender: TObject);
    procedure dxBarSubItem10Popup(Sender: TObject);
    procedure dxBarSubItem62Popup(Sender: TObject);
    procedure dxBarButton9Click(Sender: TObject);
    procedure dxBarButton10Click(Sender: TObject);
    procedure dxBarButton14Click(Sender: TObject);
    procedure dxBarButton15Click(Sender: TObject);
    procedure dxBarButton20Click(Sender: TObject);
    procedure dxBarButton33Click(Sender: TObject);
    procedure dxBarButton35Click(Sender: TObject);
    procedure dxBarButton34Click(Sender: TObject);
    procedure dxBarSubItem66Popup(Sender: TObject);
    procedure dxBarButton42Click(Sender: TObject);
    procedure dxBarSubItem70Popup(Sender: TObject);
    procedure dxBarButton5Click(Sender: TObject);
    procedure dxBarButton4Click(Sender: TObject);
    procedure dxBarButton43Click(Sender: TObject);
    procedure dxBarButton44Click(Sender: TObject);
    procedure dxBarButton45Click(Sender: TObject);
    procedure dxBarButton47Click(Sender: TObject);
    procedure dxBarButton48Click(Sender: TObject);
    procedure dxBarButton49Click(Sender: TObject);
    procedure dxBarSubItem107Popup(Sender: TObject);
    procedure cxGridDBBandedTableView4CustomDrawCell(Sender: TcxCustomGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
    procedure cxGridDBBandedTableView4FocusedItemChanged(Sender: TcxCustomGridTableView; APrevFocusedItem,  AFocusedItem: TcxCustomGridTableItem);
    procedure cxGrid3DBBandedTableView2CustomDrawCell(Sender: TcxCustomGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
    procedure dxBarButton58Click(Sender: TObject);
    procedure dxBarButton59Click(Sender: TObject);
    procedure dxBarButton60Click(Sender: TObject);
    procedure cxGridDBBandedTableView4SelectionChanged(Sender: TcxCustomGridTableView);
    procedure dxBarButton36Click(Sender: TObject);
    procedure cxGrid3DBBandedTableView1DataControllerSummaryAfterSummary(ASender: TcxDataSummary);
    procedure cxGrid3DBBandedTableView1CustomDrawFooterCell(Sender: TcxGridTableView; ACanvas: TcxCanvas;  AViewInfo: TcxGridColumnHeaderViewInfo; var ADone: Boolean);
    procedure dxBarSubItem104Click(Sender: TObject);
    procedure dxBarButton38Click(Sender: TObject);
    procedure dxBarSubItem110Popup(Sender: TObject);
    procedure dxBarButton40Click(Sender: TObject);
    procedure dxBarButton41Click(Sender: TObject);
    procedure dxBarButton52Click(Sender: TObject);
    procedure dxBarButton50Click(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);

  private
    Fbargain_id    : integer;
    Frate_id       : integer;
    Ftype_tools_id : integer;
    Fattr_self     : integer;
    Fdate_period   : TDateTime;

    Fexchange_USD  : Double;
    Fexchange_CHF  : Double;
    Fexchange_EUR  : Double;

    Fusr_pwd : PUser_pwd;
    Fconnect : TADOConnection;

    Fset_calc_enabled : boolean;
    Fset_calc_hand    : boolean;

    FContractList        : TStringList;    // Список контрагентов
    FClientDS_RateType   : TClientDataSet; // Список типов ставок по контрагентам
    FClientDS_FactDetail : TClientDataSet; // Развернутый факт

    procedure SetBargainId(bargain_id: integer);

    procedure GetAvgExchange();

    procedure CreateClientRate(); // Создание шаблона для автоматического назначения ставок
    procedure CreateFactDetail(); // Создание шаблона для развернутого факта
    procedure CreateGridDetail();
    procedure CreateGridSum();
    procedure CreateSum();

    procedure CreateFooterSum();

    procedure UpdateClientRate();
    function  GetStringFind(fact_id: integer; rate_id: integer; rate_val: currency): string;
    procedure ChangeRate(fact_id: integer; rate_id: integer; fact_rate: currency); // Изменить ставку

    procedure RefreshListRate();

    procedure CalcFrahtSum(type_action: integer; str_fact_id: string); // Расчет ФК. (конкретной услуги) 0-Full, 1-Calc Field
    procedure CalcSum(rate_id: integer); // Расчет ФК. (всей карточки)

    procedure UpdateSumResult();
    procedure UpdateSum();

    procedure ClearListRate(rate_id: integer; type_tools_id: integer; attr_self_id: integer);
    procedure GetCalcListRateNew(rate_id: integer; type_calc: integer);

    procedure GetRateFromFact(rate_id: integer);
    procedure GetRateFromPlan(rate_id: integer);

    procedure FunctionRate1(Sender: TObject);
    procedure FunctionRate2(Sender: TObject);
    procedure FunctionRate3(Sender: TObject);
    procedure FunctionRate4(Sender: TObject);
    procedure FunctionRate9(Sender: TObject);
    procedure FunctionRate10(Sender: TObject);
    procedure FunctionRate11(Sender: TObject);
    procedure FunctionRate12(Sender: TObject);
    procedure FunctionRate13(Sender: TObject);
    procedure FunctionRate14(Sender: TObject);
    procedure FunctionRate15(Sender: TObject);
    procedure FunctionRate50(Sender: TObject);
    procedure FunctionRate51(Sender: TObject);
    procedure FunctionRate52(Sender: TObject);
    procedure FunctionRate53(Sender: TObject);
    procedure LoadRateExcel(Sender: TObject);
    procedure FunctionGridRate(Sender: TObject);
    procedure FunctionGridRateSablon(Sender: TObject);
    procedure FunctionGridRate4RoutePP(Sender: TObject);


    procedure AddNewBarButton(var BarSubItem: TdxBarSubItem; Caption: string; Tag: integer; ImageIndex: integer; onObject: TNotifyEvent; set_separator: boolean);
    procedure CreateBarButton(var BarSubItem: TdxBarSubItem; onObject: TNotifyEvent);

    procedure OnGetText_FactSum (Sender: TcxDataSummaryItem; const AValue: Variant; AIsFooter: Boolean; var AText: string);
    procedure OnGetText_FactRate(Sender: TcxDataSummaryItem; const AValue: Variant; AIsFooter: Boolean; var AText: string);
    procedure OnGetText_CountVagon(Sender: TcxDataSummaryItem; const AValue: Variant; AIsFooter: Boolean; var AText: string);
    procedure OnGetText_CountWeight(Sender: TcxDataSummaryItem; const AValue: Variant; AIsFooter: Boolean; var AText: string);
  public
    Frate_val_copy : Currency;
    constructor Create(AOwner: TApplication; connect: TADOConnection; usr_pwd: PUser_pwd); reintroduce;
  published
    property _SetBargainId: integer write SetBargainId;
    property _GetBargainId: integer read  Fbargain_id;
  end;

var
  fmBargainList2: TfmBargainList2;


function CreateWndBargainList2(AppHand: THandle; connect: TADOConnection; bargain_id: integer; usr_pwd: PUser_pwd): variant; export;

implementation
  uses Raznoe, BargainRate, FactCard, StrUtils, DateUtils, Other;

{$R *.dfm}


function CreateWndBargainList2(AppHand: THandle; connect: TADOConnection; bargain_id: integer; usr_pwd: PUser_pwd): variant; export;
begin
  Application.Handle := AppHand;
  try
    fmBargainList2 := TfmBargainList2.Create(Application, connect, usr_pwd);

    if bargain_id <> -9 then fmBargainList2._SetBargainId := bargain_id;
    if fmBargainList2.ShowModal = mrOk then result := VarArrayOf([fmBargainList2._GetBargainId, ''])
    else result := VarArrayOf([-9, '']);
  finally
    fmBargainList2.Free;
  end;
end;

constructor TfmBargainList2.Create(AOwner: TApplication; connect: TADOConnection; usr_pwd: PUser_pwd);
begin
  Screen.Cursor := crHourglass;
  inherited Create(AOwner);

  Fconnect       := connect;
  Fusr_pwd       := usr_pwd;
  Fbargain_id    := -9;
  Frate_id       := -9;
  Ftype_tools_id := -9;
  Fattr_self     := -9;
  Frate_val_copy := 0;
  Fdate_period   := Date;
  Fexchange_USD  := GetExchangeNew(1, StartOfAMonth(YearOf(Fdate_period), MonthOf(Fdate_period)), Fconnect);
  Fexchange_CHF  := GetExchangeNew(5, StartOfAMonth(YearOf(Fdate_period), MonthOf(Fdate_period)), Fconnect);
  Fexchange_EUR  := GetExchangeNew(6, StartOfAMonth(YearOf(Fdate_period), MonthOf(Fdate_period)), Fconnect);

  Fset_calc_enabled := False;
  Fset_calc_hand    := False;

  Client_Contract.CreateDataSet;
  Client_Contract.LogChanges := False;

  ClientDS_ListRate.CreateDataSet;
  ClientDS_ListRate.LogChanges := False;

  ClientDS_Fact.CreateDataSet;
  ClientDS_Fact.LogChanges := False;

  ClientDS_RateFact.CreateDataSet;
  ClientDS_RateFact.LogChanges := False;

  ClientDS_SumRate.CreateDataSet;
  ClientDS_SumRate.LogChanges := False;

  ClientDS_SumAbs.CreateDataSet;
  ClientDS_SumAbs.LogChanges := False;

  ClientDS_GridSum.CreateDataSet;
  ClientDS_GridSum.LogChanges := False;

  FContractList := TStringList.Create;

  Query_NDS.Connection := connect;
  Query_Ed_Izm.Connection := connect;
  Query_Currency.Connection := connect;
  Query_AttrSelf.Connection := connect;
  Query_TypeTools.Connection := connect;

  Query_AttrSelf.Open;
  Query_TypeTools.Open;
  Query_NDS.Open;
  Query_Ed_Izm.Open;
  Query_Currency.Open;

  StoreRegistryGrid(rgLoad, '\Software\Lis1\BargainList_Grids2', cxGrid1DBBandedTableView1);
  StoreRegistryGrid(rgLoad, '\Software\Lis1\BargainList_Grids2', cxGridDBBandedTableView2);
  StoreRegistryGrid(rgLoad, '\Software\Lis1\BargainList_Grids2', cxGrid3DBBandedTableView1);

  cxPageControl1.ActivePage := cxTabSheet1;
  cxPageControl2.ActivePage := cxTabSheet3;


  Panel4.Visible := True;
  Splitter3.Visible := True;

  Screen.Cursor := crDefault;
end;


procedure TfmBargainList2.cxButton1Click(Sender: TObject);
var
   sp_bargain_list_modify : TADOStoredProc;
                 ClientDS : TClientDataSet;
              Client_fact : TClientDataSet;
              Client_list : TClientDataSet;
                      res : integer;
          cnt_rate_delete : integer;
          set_rate_delete : boolean;
                Q_bargain : TADOQuery;
     sp_fact_by_rate_SAVE : TADOStoredProc;
          users_group_cod : string;
begin
  Client_fact := TClientDataSet.Create(nil);
  Client_list := TClientDataSet.Create(nil);

  Client_fact.Data := ClientDS_Fact.Data;
  Client_list.Data := ClientDS_ListRate.Data;

  Client_list.Filter   := '';
  Client_list.Filtered := False;
  Client_list.First;
  cnt_rate_delete := 0;
  while not Client_list.Eof do begin
    if Client_fact.Locate('type_kontener;attr_self', VarArrayOf([Client_list.FieldByName('type_tools_id').Value,Client_list.FieldByName('attr_self').Value]), []) = False then begin
      cnt_rate_delete := cnt_rate_delete + 1;
    end;
    Client_list.Next;
  end;

  Client_fact.Free;
  Client_list.Free;


  if cnt_rate_delete > 10 then begin
    res := Application.MessageBox('Удалить неиспользуемые ставки?', 'Внимание', MB_ICONQUESTION or MB_YESNOCANCEL);
    if res = ID_CANCEL then Exit;

    if res = ID_YES then set_rate_delete := True
    else set_rate_delete := False;

  end else begin
    set_rate_delete := False;
  end;


  ModalResult := mrOk;

  ClientDS := TClientDataSet.Create(nil);
  ClientDS.FieldDefs.Add('fact_id', ftInteger);
  ClientDS.FieldDefs.Add('type_kontener', ftInteger);
  ClientDS.FieldDefs.Add('attr_self', ftInteger);
  ClientDS.CreateDataSet;
  ClientDS.LogChanges := False;

  ClientDS_Fact.DisableControls;
  ClientDS_Fact.First;
  while not ClientDS_Fact.Eof do begin
    ClientDS.Append;
    ClientDS.FieldByName('fact_id'      ).Value := ClientDS_Fact.FieldByName('fact_id').Value;
    ClientDS.FieldByName('type_kontener').Value := ClientDS_Fact.FieldByName('type_kontener').Value;
    ClientDS.FieldByName('attr_self'    ).Value := ClientDS_Fact.FieldByName('attr_self').Value;
    ClientDS.Post;
    ClientDS_Fact.Next;
  end;
  ClientDS_Fact.EnableControls;

  ShowTextMessage('Сохранение списка ставок...', False);

  sp_bargain_list_modify := TADOStoredProc.Create(nil);
  sp_bargain_list_modify.CommandTimeout := 600;
  sp_bargain_list_modify.Connection := Fconnect;
  sp_bargain_list_modify.ProcedureName := 'sp_bargain_list_modify';
  sp_bargain_list_modify.Parameters.Refresh;

  sp_bargain_list_modify.Parameters.ParamByName('@bargain_id').Value := Fbargain_id;
  sp_bargain_list_modify.Parameters.ParamByName('@set_rate_delete').Value := set_rate_delete;
  sp_bargain_list_modify.Parameters.ParamByName('@rate_xml'  ).Value := DataXMLToSQL(ClientDS_ListRate);
  sp_bargain_list_modify.Parameters.ParamByName('@fact_xml'  ).Value := DataXMLToSQL(ClientDS);

  try
    sp_bargain_list_modify.ExecProc;
  except
  end;
  sp_bargain_list_modify.Free;


  users_group_cod := GetIDFromSQL('SELECT	inf_obj_cod as users_group_cod FROM	users INNER JOIN inf_obj on users.users_group_id = inf_obj.inf_obj_id WHERE users_name = system_user', Fconnect);

  Q_bargain := TADOQuery.Create(nil);
  Q_bargain.Connection := Fconnect;
  Q_bargain.SQL.Add('SELECT * FROM view_bargain WHERE bargain_id = ' + IntToStr(Fbargain_id));
  Q_bargain.Open;


  if (Q_bargain['date_period_finance']<>NULL) OR (Q_bargain.FieldByName('set_bargain_block').AsBoolean) then begin
    // Перевозка закрыта
    Application.MessageBox(PChar('Данные по фрахтовой карточке № '+Q_bargain.FieldByName('bargain_cod').AsString+' не будут сохранены! Перевозка закрыта в финансовом месяце'), 'Ошибка', MB_OK+MB_ICONWARNING);
//  end else if ((Q_bargain['agreement_id'] = NULL) AND (Q_bargain['agreement_note'] = NULL)) AND (Q_bargain['date_period'] >= EncodeDate(2009, 3, 1)) then begin
//    // Нет приложение && Перевозочный месяц от марта 2009
//    Application.MessageBox(PChar('Данные по фрахтовой карточке № '+Q_bargain.FieldByName('bargain_cod').AsString+' не будут сохранены! В перевозке не указано приложение'), 'Ошибка', MB_OK+MB_ICONWARNING);
//  end else if (Q_bargain['set_bargain_weight'] = NULL) AND (users_group_cod = '0') then begin
//    // (Признак "Вес в сводный отчет + только для СФХ)"
//    Application.MessageBox(PChar('Данные по фрахтовой карточке № '+Q_bargain.FieldByName('bargain_cod').AsString+' не будут сохранены! В перевозке не указан признак "Вес для сводного отчёта"'), 'Ошибка', MB_OK+MB_ICONWARNING);
  end else begin
    ModalResult := mrOk;

    ShowTextMessage('Сохранение фрахтовой карточки...', False);
    sp_fact_by_rate_SAVE := TADOStoredProc.Create(nil);
    sp_fact_by_rate_SAVE.Connection := Fconnect;
    sp_fact_by_rate_SAVE.ProcedureName := 'sp_fact_by_rate_SAVE';
    sp_fact_by_rate_SAVE.Parameters.Refresh;
    sp_fact_by_rate_SAVE.Parameters.ParamByName('@bargain_id').Value := Fbargain_id;
    try
      sp_fact_by_rate_SAVE.ExecProc;
    except
    end;
    sp_fact_by_rate_SAVE.Free;
  end;

  Q_bargain.Free;
  ShowTextMessage;


  ShowTextMessage;
  ClientDS.Free;

end;

procedure TfmBargainList2.cxGrid1DBBandedTableView1CustomDrawCell(Sender: TcxCustomGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
  if (AViewInfo.GridRecord.Values[cxGrid1DBBandedTableView1service_type.Index] = 0) then begin
    if (AViewInfo.Item.ID = cxGrid1DBBandedTableView1service_type_name.Index) or
       (AViewInfo.Item.ID = cxGrid1DBBandedTableView1fact_sum_RUB.Index) then begin
      ACanvas.Font.Color := clRed;
      ACanvas.Font.Style := [fsBold];
    end;
  end;

  if (AViewInfo.GridRecord.Values[cxGrid1DBBandedTableView1service_type.Index] = 1) then begin
    if (AViewInfo.Item.ID = cxGrid1DBBandedTableView1service_type_name.Index) or
       (AViewInfo.Item.ID = cxGrid1DBBandedTableView1fact_sum_RUB.Index) then begin
      ACanvas.Font.Color := clGreen;
      ACanvas.Font.Style := [fsBold];
    end;
  end;

	if AViewInfo.GridRecord.Selected or AViewInfo.GridRecord.Focused then begin
		ACanvas.Brush.Color := clNavy;
		ACanvas.Font.Color := clWhite;
		if AViewInfo.Focused then ACanvas.Brush.Color := clBlue;
	end;
end;

procedure TfmBargainList2.cxGrid1DBBandedTableView1CustomDrawColumnHeader(Sender: TcxGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxGridColumnHeaderViewInfo; var ADone: Boolean);
begin
  DrawcxGridColumnOnFocused(Sender, ACanvas, AViewInfo);
end;

procedure TfmBargainList2.cxGrid1DBBandedTableView1FilterOnChanged(Sender: TObject);
begin
  DrawcxGridColumnOnFiltered(Sender);
end;

procedure TfmBargainList2.cxGrid1DBBandedTableView1FocusedItemChanged(Sender: TcxCustomGridTableView; APrevFocusedItem, AFocusedItem: TcxCustomGridTableItem);
begin
	Sender.Painter.Invalidate;
end;


procedure TfmBargainList2.GetAvgExchange();
begin
  //---- курсы валют ----------
  cxButtonEdit15.Text := FormatFloat('0.0000', Fexchange_USD);
  cxButtonEdit1.Text :=  FormatFloat('0.0000', Fexchange_EUR);
  cxButtonEdit17.Text := FormatFloat('0.0000', Fexchange_CHF);
end;


procedure TfmBargainList2.cxGrid1DBBandedTableView1FocusedRecordChanged(Sender: TcxCustomGridTableView; APrevFocusedRecord, AFocusedRecord: TcxCustomGridRecord; ANewItemRecordFocusingChanged: Boolean);
var i : integer;
begin
  Frate_id := -9;

  cxTabSheet3.Caption := 'Ставки';
  cxLabel2.Caption := '';
  cxGrid3DBBandedTableView1fact_rate.Caption := 'Ставка';
  if (AFocusedRecord<>nil) AND ((cxGrid1DBBandedTableView1.GroupedColumnCount = 0) OR (AFocusedRecord.Level <> 0)) then begin

    // Выводим параметры расчета -------------

    cxRadioGroup2.ItemIndex := cxGrid1DBBandedTableView1shaping_rate_round_weight.DataBinding.Field.AsInteger;
    cxCheckBox2.Checked     := cxGrid1DBBandedTableView1shaping_check_kargo_capacity.DataBinding.Field.AsBoolean;
    cxCheckBox1.Checked     := iif(cxGrid1DBBandedTableView1shaping_kargo_min_norm.DataBinding.Field.IsNull, False, True);
    cxCheckBox6.Checked     := cxGrid1DBBandedTableView1set_include_nds.DataBinding.Field.AsBoolean;
    cxTextEdit5.EditValue   := iif(cxGrid1DBBandedTableView1shaping_kargo_min_norm.DataBinding.Field.IsNull, null, cxGrid1DBBandedTableView1shaping_kargo_min_norm.DataBinding.Field.Value);
    cxRadioGroup3.ItemIndex := cxGrid1DBBandedTableView1type_calc_sum.DataBinding.Field.AsInteger;
    cxRadioGroup1.ItemIndex := cxGrid1DBBandedTableView1vid_send.DataBinding.Field.AsInteger;

    cxCurrencyEdit4.EditValue := cxGrid1DBBandedTableView1shaping_rate_val.DataBinding.Field.Value;
    cxCurrencyEdit5.EditValue := cxGrid1DBBandedTableView1shaping_rate_count.DataBinding.Field.Value;
    cxCurrencyEdit6.EditValue := cxGrid1DBBandedTableView1shaping_rate_sum.DataBinding.Field.Value;
    cxCurrencyEdit2.EditValue := cxGrid1DBBandedTableView1shaping_rate_NDS_sum.DataBinding.Field.Value;
    cxCurrencyEdit1.EditValue := cxGrid1DBBandedTableView1shaping_rate_notNDS_sum.DataBinding.Field.Value;

    cxLookupComboBox3.EditValue := cxGrid1DBBandedTableView1ed_izm_id.DataBinding.Field.Value;
    cxLookupComboBox5.EditValue := cxGrid1DBBandedTableView1currency_id.DataBinding.Field.Value;
    cxLookupComboBox9.EditValue := cxGrid1DBBandedTableView1nds_id.DataBinding.Field.Value;

    if cxGrid1DBBandedTableView1exchange_USD_val.DataBinding.Field.IsNull then begin
      cxCheckBox8.Checked       := True;
      GetAvgExchange;
    end else begin
      cxCheckBox8.Checked       := False;
      cxButtonEdit15.EditValue  := cxGrid1DBBandedTableView1exchange_USD_val.DataBinding.Field.Value;
      cxButtonEdit1.EditValue   := cxGrid1DBBandedTableView1exchange_EUR_val.DataBinding.Field.Value;
      cxButtonEdit17.EditValue  := cxGrid1DBBandedTableView1exchange_CHF_val.DataBinding.Field.Value;
    end;

    //----------------------------------------

    Frate_id := cxGrid1DBBandedTableView1global_id.DataBinding.Field.AsInteger;
    cxLabel2.Caption := cxGrid1DBBandedTableView1firm_customer_name.DataBinding.Field.AsString +
                        ' Договор №' + cxGrid1DBBandedTableView1contract_cod.DataBinding.Field.AsString +
                        ' от ' + FormatDateTime('dd.mm.yyyy', cxGrid1DBBandedTableView1contract_date.DataBinding.Field.AsDateTime) +
                        '. НДС ' + cxGrid1DBBandedTableView1nds_name.DataBinding.Field.AsString;

    cxGrid3DBBandedTableView1fact_rate.Caption := 'Ставка, ' + cxGrid1DBBandedTableView1ed_izm_name.DataBinding.Field.AsString;

    if cxGrid1DBBandedTableView1type_calc_sum.DataBinding.Field.AsInteger = 0 then begin
      cxGrid3DBBandedTableView1fact_sum.Styles.Content := cxStyle_AgreeFact;
    end else begin
      cxGrid3DBBandedTableView1fact_sum.Styles.Content := cxStyle_AgreeFact;
    end;

    CreateFooterSum;

    if cxGrid1DBBandedTableView1service_type.DataBinding.Field.AsInteger = 0 then begin
      cxLabel2.Style.Font.Color := clRed;
      cxTabSheet1.Caption := 'Доход';
    end else begin
      cxLabel2.Style.Font.Color := clGreen;
      cxTabSheet1.Caption := 'Расход';
    end;

    // Смена названия колонок...
    if  (cxGrid1DBBandedTableView1vid_send.DataBinding.Field.AsInteger = 3) and
        (cxGrid1DBBandedTableView1ed_izm_cod.DataBinding.Field.AsString = '004') then begin
      cxGrid3DBBandedTableView1count_weight.Caption := 'Дни аренды';
    end else begin
      cxGrid3DBBandedTableView1count_weight.Caption := 'Р. вес';
    end;

    cxGrid3DBBandedTableView1fact_sum.Caption  := 'Сумма, ' + cxGrid1DBBandedTableView1brief_name.DataBinding.Field.AsString;
    cxGrid3DBBandedTableView2fact_sum.Caption  := 'Сумма, ' + cxGrid1DBBandedTableView1brief_name.DataBinding.Field.AsString;

    if cxGrid1DBBandedTableView1nds_cod.DataBinding.Field.IsNull then begin
      cxGrid3DBBandedTableView1fact_rate.Caption := 'Ставка';
      cxGrid3DBBandedTableView2shaping_rate_val.Caption := 'Ставка';
    end else begin
      if cxGrid1DBBandedTableView1set_include_nds.DataBinding.Field.AsBoolean then begin
        cxGrid3DBBandedTableView1fact_rate.Caption := 'Ставка, вкл. НДС';
        cxGrid3DBBandedTableView2shaping_rate_val.Caption := 'Ставка, вкл. НДС';
      end else begin
        cxGrid3DBBandedTableView1fact_rate.Caption := 'Ставка, без НДС';
        cxGrid3DBBandedTableView2shaping_rate_val.Caption := 'Ставка, без НДС';
      end;
    end;

    // Абсолютная величина
    if cxGrid1DBBandedTableView1shaping_rate_type_id.DataBinding.Field.AsInteger = 2 then begin
      cxGridLevel2.GridView := cxGrid3DBBandedTableView2;
    end else begin
      cxGridLevel2.GridView := cxGrid3DBBandedTableView1;
    end;


    for i:=0 to cxGridDBBandedTableView4.ColumnCount-1 do begin
      if cxGridDBBandedTableView4.Columns[i].Tag = Frate_id then cxGridDBBandedTableView4.Columns[i].Styles.Content := cxStyle2
      else cxGridDBBandedTableView4.Columns[i].Styles.Content := nil;
    end;


    for i:=0 to cxGridDBBandedTableView1.ColumnCount-1 do begin
      if cxGridDBBandedTableView1.Columns[i].Tag = Frate_id then cxGridDBBandedTableView1.Columns[i].Styles.Content := cxStyle2
      else
        if pos('fact_rate_', cxGridDBBandedTableView1.Columns[i].DataBinding.FieldName) <> 0 then cxGridDBBandedTableView1.Columns[i].Styles.Content := cxStyle_ClientFrahtCard_Rashod_RUB
        else cxGridDBBandedTableView1.Columns[i].Styles.Content := cxStyle_AgreeFact;
    end;



  end;
  RefreshListRate();
  UpdateSum;
  UpdateSumResult;
end;

procedure TfmBargainList2.cxGrid1DBBandedTableView1KeyPress(Sender: TObject; var Key: Char);
begin
  FilterColumnGridOnKeyPress(TcxGridDBBandedTableView(TcxGridSite(Sender).GridView), Key);
end;

procedure TfmBargainList2.cxGrid3DBBandedTableView1count_vagonGetDisplayText(Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord; var AText: string);
begin
  if ARecord.Values[Sender.Index] <> null then
    if ARecord.Values[Sender.Index] = 0 then
      AText := '';
end;

procedure TfmBargainList2.cxGrid3DBBandedTableView1CustomDrawCell(Sender: TcxCustomGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
//  if (cxGrid3DBBandedTableView1num_vagon.Index <> AViewInfo.Item.ID) then begin
//    if AViewInfo.GridRecord.Values[cxGrid3DBBandedTableView1count_vagon.Index] = 0 then begin
//      ACanvas.Font.Color := clGray;
//      ACanvas.Font.Style := [fsItalic];
//    end;
//  end;

  if  (cxGrid3DBBandedTableView1count_weight.Index <> AViewInfo.Item.ID) AND
      (cxGrid3DBBandedTableView1fact_rate.Index <> AViewInfo.Item.ID) AND
      (cxGrid3DBBandedTableView1count_vagon.Index <> AViewInfo.Item.ID) AND
      (cxGrid3DBBandedTableView1fact_sum.Index <> AViewInfo.Item.ID) then begin
    if (AViewInfo.GridRecord.Values[cxGrid3DBBandedTableView1global_color.Index]<>NULL) then
      ACanvas.Brush.Color := AViewInfo.GridRecord.Values[cxGrid3DBBandedTableView1global_color.Index];
  end;

	if AViewInfo.GridRecord.Selected or AViewInfo.GridRecord.Focused then begin
		ACanvas.Brush.Color := clNavy;
		ACanvas.Font.Color := clWhite;
		if AViewInfo.Focused then ACanvas.Brush.Color := clBlue;
	end;
end;

procedure TfmBargainList2.cxGrid3DBBandedTableView1CustomDrawFooterCell(Sender: TcxGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxGridColumnHeaderViewInfo; var ADone: Boolean);
begin
  if (TcxGridFooterCellViewInfo(AViewInfo).SummaryItem.Tag =-9) and (TcxGridFooterCellViewInfo(AViewInfo).SummaryItem.ItemLink = cxGrid3DBBandedTableView1fact_rate) then begin
    ACanvas.Brush.Style := bsSolid;
    ACanvas.Brush.Color := clBtnFace;
    ACanvas.Pen.Style := psSolid;
    ACanvas.Pen.Color := clBtnFace;
    ACanvas.Rectangle(AViewInfo.Bounds);

    ADone := True;
  end else begin
    if (TcxGridFooterCellViewInfo(AViewInfo).SummaryItem.Tag = -9) or (TcxGridFooterCellViewInfo(AViewInfo).SummaryItem.Tag = 0) then begin
      ACanvas.Font.Style := [fsBold];
    end;
  end;
end;

procedure TfmBargainList2.cxGrid3DBBandedTableView1DataControllerSummaryAfterSummary(ASender: TcxDataSummary);
var         i : integer;
     rate_val : Double;
rate_val_grid : Double;
     fact_sum : Double;
 fact_sum_all : Double;
 count_weight : Double;
 count_vagon  : integer;
 count_weight_all : Double;
 count_vagon_all  : integer;
begin
  if cxGrid1DBBandedTableView1type_calc_sum.DataBinding.Field.AsInteger = 1 then begin
    ClientDS_GridSum.EmptyDataSet;
    fact_sum_all := 0;
    count_weight_all := 0;
    count_vagon_all  := 0;

    ClientDS_SumRate.Filter   := 'rate_id=' + IntToStr(Frate_id);
    ClientDS_SumRate.Filtered := True;
    ClientDS_SumRate.First;
    while not ClientDS_SumRate.Eof do begin
      rate_val := ClientDS_SumRate.FieldByName('fact_rate').AsCurrency;
      fact_sum := 0;
      count_weight := 0;
      count_vagon  := 0;

      if cxGrid3DBBandedTableView1.Controller.SelectedRecordCount > 1 then begin
        for i:=0 to cxGrid3DBBandedTableView1.Controller.SelectedRecordCount - 1 do begin
          if cxGrid3DBBandedTableView1.Controller.SelectedRows[i].Values[cxGrid3DBBandedTableView1fact_rate.Index] <> null then
            if cxGrid3DBBandedTableView1.Controller.SelectedRows[i].Values[cxGrid3DBBandedTableView1fact_rate.Index] = rate_val then begin
              if cxGrid3DBBandedTableView1.Controller.SelectedRows[i].Values[cxGrid3DBBandedTableView1fact_sum.Index]<>null     then fact_sum     := fact_sum     + cxGrid3DBBandedTableView1.Controller.SelectedRows[i].Values[cxGrid3DBBandedTableView1fact_sum.Index];
              if cxGrid3DBBandedTableView1.Controller.SelectedRows[i].Values[cxGrid3DBBandedTableView1count_weight.Index]<>null then count_weight := count_weight + cxGrid3DBBandedTableView1.Controller.SelectedRows[i].Values[cxGrid3DBBandedTableView1count_weight.Index];
              if cxGrid3DBBandedTableView1.Controller.SelectedRows[i].Values[cxGrid3DBBandedTableView1count_vagon.Index]<>null  then count_vagon  := count_vagon  + cxGrid3DBBandedTableView1.Controller.SelectedRows[i].Values[cxGrid3DBBandedTableView1count_vagon.Index];
            end;
        end;
      end else begin
        for i:=0 to cxGrid3DBBandedTableView1.DataController.FilteredRecordCount - 1 do begin
          if cxGrid3DBBandedTableView1.DataController.Values[cxGrid3DBBandedTableView1.DataController.FilteredRecordIndex[i],cxGrid3DBBandedTableView1fact_rate.Index] <> null then
            rate_val_grid := cxGrid3DBBandedTableView1.DataController.Values[cxGrid3DBBandedTableView1.DataController.FilteredRecordIndex[i], cxGrid3DBBandedTableView1fact_rate.Index];
            if rate_val_grid = rate_val then begin
              if cxGrid3DBBandedTableView1.DataController.Values[cxGrid3DBBandedTableView1.DataController.FilteredRecordIndex[i],cxGrid3DBBandedTableView1fact_sum.Index] <> null then     fact_sum     := fact_sum     + cxGrid3DBBandedTableView1.DataController.Values[cxGrid3DBBandedTableView1.DataController.FilteredRecordIndex[i],cxGrid3DBBandedTableView1fact_sum.Index];
              if cxGrid3DBBandedTableView1.DataController.Values[cxGrid3DBBandedTableView1.DataController.FilteredRecordIndex[i],cxGrid3DBBandedTableView1count_weight.Index] <> null then count_weight := count_weight + cxGrid3DBBandedTableView1.DataController.Values[cxGrid3DBBandedTableView1.DataController.FilteredRecordIndex[i],cxGrid3DBBandedTableView1count_weight.Index];
              if cxGrid3DBBandedTableView1.DataController.Values[cxGrid3DBBandedTableView1.DataController.FilteredRecordIndex[i],cxGrid3DBBandedTableView1count_vagon.Index] <> null then  count_vagon  := count_vagon  + cxGrid3DBBandedTableView1.DataController.Values[cxGrid3DBBandedTableView1.DataController.FilteredRecordIndex[i],cxGrid3DBBandedTableView1count_vagon.Index];
            end;
        end;
      end;


      ClientDS_GridSum.Append;
      ClientDS_GridSum.FieldByName('rw_id'        ).Value := ClientDS_SumRate.FieldByName('rw_id').Value;
      ClientDS_GridSum.FieldByName('fact_rate'    ).Value := ClientDS_SumRate.FieldByName('fact_rate').Value;
      ClientDS_GridSum.FieldByName('fact_sum'     ).Value := fact_sum;
      ClientDS_GridSum.FieldByName('count_weight' ).Value := count_weight;
      ClientDS_GridSum.FieldByName('count_vagon'  ).Value := count_vagon;
      ClientDS_GridSum.Post;

      fact_sum_all := fact_sum_all + RoundCurr(fact_sum,-2);
      count_weight_all := count_weight_all + count_weight;
      count_vagon_all  := count_vagon_all  + count_vagon;

      ClientDS_SumRate.Next;
    end;

    ClientDS_GridSum.Append;
    ClientDS_GridSum.FieldByName('rw_id'        ).Value := -9;
    ClientDS_GridSum.FieldByName('fact_rate'    ).Value := null;
    ClientDS_GridSum.FieldByName('fact_sum'     ).Value := fact_sum_all;
    ClientDS_GridSum.FieldByName('count_weight' ).Value := count_weight_all;
    ClientDS_GridSum.FieldByName('count_vagon'  ).Value := count_vagon_all;
    ClientDS_GridSum.Post;
  end;
end;

procedure TfmBargainList2.cxGrid3DBBandedTableView1EditKeyDown(
  Sender: TcxCustomGridTableView; AItem: TcxCustomGridTableItem;
  AEdit: TcxCustomEdit; var Key: Word; Shift: TShiftState);
begin
  if Key = VK_UP     then Key := VK_RETURN;
  if Key = VK_DOWN   then Key := VK_RETURN;
end;

function  TfmBargainList2.GetStringFind(fact_id: integer; rate_id: integer; rate_val: currency): string;
var str_result : string;
             i : integer;
begin
  ClientDS_RateFact.Filter   := 'fact_id=' + IntToStr(fact_id);
  ClientDS_RateFact.Filtered := True;

  str_result := 'attr_self<>null and type_tools_id<>null and set_one = True';
  for i := 0 to FContractList.Count - 1 do begin
    if StrToInt(FContractList.Strings[i]) = rate_id then
      str_result := str_result + ' and rate_val_' + FContractList.Strings[i] + '=' + CurrToStr(rate_val)
    else begin
      if ClientDS_RateFact.Locate('fact_id;rate_id', VarArrayOf([fact_id, FContractList.Strings[i]]), []) then
        str_result := str_result + ' and rate_val_' + FContractList.Strings[i] + '=' + CurrToStr(ClientDS_RateFact.FieldByName('fact_rate').AsCurrency)
      else
        str_result := str_result + ' and rate_val_' + FContractList.Strings[i] + '=' + CurrToStr(0);
    end;
  end;

  ClientDS_RateFact.Filter   := '';
  ClientDS_RateFact.Filtered := False;

  Result := str_result;
end;

procedure TfmBargainList2.ChangeRate(fact_id: integer; rate_id: integer; fact_rate: currency); // Изменить ставку
var     i : integer;
      res : string;
    attr_self, type_tools_id : integer;
    old_attr_self, old_type_tools_id : integer;
    pos, pos_fact_id : integer;
begin
  Fset_calc_enabled := False;
  pos         := cxGrid3DBBandedTableView1.Controller.TopRowIndex;
  pos_fact_id := iif(cxGrid3DBBandedTableView1fact_id.DataBinding.Field.IsNull, -9, cxGrid3DBBandedTableView1fact_id.DataBinding.Field.Value);
  ClientDS_Fact.DisableControls;

  if ClientDS_Fact.FindKey([fact_id]) then begin
    old_type_tools_id := ClientDS_Fact.FieldByName('type_kontener').AsInteger;
    old_attr_self     := ClientDS_Fact.FieldByName('attr_self'    ).AsInteger;
  end else begin
    old_type_tools_id := -9;
    old_attr_self     := -9;
  end;


  // Поиск ставки
  res := GetStringFind(fact_id, rate_id, fact_rate);
  FClientDS_RateType.Filter   := res;
  FClientDS_RateType.Filtered := True;

  // Если ставка не найдена, то создаем новую
  if FClientDS_RateType.RecordCount = 0 then begin
    FClientDS_RateType.Filter   := '';
    FClientDS_RateType.Filtered := False;

    Query_AttrSelf.First;
    Query_TypeTools.First;

    attr_self     := -9;
    type_tools_id := -9;
    while (not Query_TypeTools.Eof) and (attr_self = -9) and (type_tools_id = -9) do begin
      Query_AttrSelf.First;
      while (not Query_AttrSelf.Eof) and (attr_self = -9) and (type_tools_id = -9) do begin
        if not FClientDS_RateType.Locate('type_tools_id;attr_self', VarArrayOf([Query_TypeTools.FieldByName('inf_obj_id').Value, Query_AttrSelf.FieldByName('attr_self').Value]), []) then begin
          attr_self     := Query_AttrSelf.FieldByName('attr_self').AsInteger;
          type_tools_id := Query_TypeTools.FieldByName('inf_obj_id').AsInteger;
        end;
        Query_AttrSelf.Next;
      end;
      Query_TypeTools.Next;
    end;


    //Добавление новой ставки
    Query_AttrSelf.Locate('attr_self', attr_self, []);
    Query_TypeTools.Locate('inf_obj_id', type_tools_id, []);

    ClientDS_ListRate.DisableControls;
    for i := 0 to FContractList.Count-1 do begin

      if rate_id <> StrToInt(FContractList.Strings[i]) then begin
        if ClientDS_RateFact.Locate('fact_id;rate_id', VarArrayOf([fact_id, FContractList.Strings[i]]), []) then begin
          if ClientDS_RateFact.FieldByName('fact_rate').AsCurrency <> 0 then begin
            ClientDS_ListRate.Append;
            ClientDS_ListRate.FieldByName('rate_id'         ).Value := StrToInt(FContractList.Strings[i]);
            ClientDS_ListRate.FieldByName('type_tools_id'   ).Value := type_tools_id;
            ClientDS_ListRate.FieldByName('attr_self'       ).Value := attr_self;
            ClientDS_ListRate.FieldByName('rate_val'        ).Value := ClientDS_RateFact.FieldByName('fact_rate').AsCurrency;
            ClientDS_ListRate.FieldByName('type_tools_name' ).Value := Query_TypeTools.FieldByName('inf_obj_name').AsString;
            ClientDS_ListRate.FieldByName('attr_self_name'  ).Value := Query_AttrSelf.FieldByName('attr_self_name').AsString;
            ClientDS_ListRate.FieldByName('weight'          ).Value := -9;
            ClientDS_ListRate.FieldByName('set_one'         ).Value := True;
            ClientDS_ListRate.Post;
          end;
        end;
      end else begin
        if fact_rate <> 0 then begin
          ClientDS_ListRate.Append;
          ClientDS_ListRate.FieldByName('rate_id'         ).Value := StrToInt(FContractList.Strings[i]);
          ClientDS_ListRate.FieldByName('type_tools_id'   ).Value := type_tools_id;
          ClientDS_ListRate.FieldByName('attr_self'       ).Value := attr_self;
          ClientDS_ListRate.FieldByName('rate_val'        ).Value := fact_rate;
          ClientDS_ListRate.FieldByName('type_tools_name' ).Value := Query_TypeTools.FieldByName('inf_obj_name').AsString;
          ClientDS_ListRate.FieldByName('attr_self_name'  ).Value := Query_AttrSelf.FieldByName('attr_self_name').AsString;
          ClientDS_ListRate.FieldByName('weight'          ).Value := -9;
          ClientDS_ListRate.FieldByName('set_one'         ).Value := True;
          ClientDS_ListRate.Post;
        end;
      end;


    end;
    ClientDS_ListRate.EnableControls;
  end else begin
    // Если ставка найдена
    type_tools_id := FClientDS_RateType.FieldByName('type_tools_id').AsInteger;
    attr_self     := FClientDS_RateType.FieldByName('attr_self'    ).AsInteger;
  end;

  Query_AttrSelf.Locate('attr_self', attr_self, []);
  Query_TypeTools.Locate('inf_obj_id', type_tools_id, []);

  if ClientDS_Fact.FindKey([fact_id]) then begin
    ClientDS_Fact.Edit;
    ClientDS_Fact.FieldByName('type_kontener'     ).Value := type_tools_id;
    ClientDS_Fact.FieldByName('attr_self'         ).Value := attr_self;
    ClientDS_Fact.FieldByName('type_kontener_name').Value := Query_TypeTools.FieldByName('inf_obj_name').AsString;
    ClientDS_Fact.FieldByName('attr_self_name'    ).Value := Query_AttrSelf.FieldByName('attr_self_name').AsString;
    ClientDS_Fact.FieldByName('display_type_kontener_name').Value := Query_TypeTools.FieldByName('inf_obj_name').AsString;
    ClientDS_Fact.FieldByName('display_attr_self_name'    ).Value := Query_AttrSelf.FieldByName('attr_self_name').AsString;
    ClientDS_Fact.Post;
  end;

  FClientDS_FactDetail.DisableControls;
  if FClientDS_FactDetail.FindKey([fact_id]) then begin
    FClientDS_FactDetail.Edit;
    FClientDS_FactDetail.FieldByName('type_kontener'     ).Value := type_tools_id;
    FClientDS_FactDetail.FieldByName('attr_self'         ).Value := attr_self;
    FClientDS_FactDetail.FieldByName('type_kontener_name').Value := Query_TypeTools.FieldByName('inf_obj_name').AsString;
    FClientDS_FactDetail.FieldByName('attr_self_name'    ).Value := Query_AttrSelf.FieldByName('attr_self_name').AsString;
    FClientDS_FactDetail.Post;
  end;
  FClientDS_FactDetail.EnableControls;

  if ClientDS_ListRate.Locate('fact_id;rate_id', VarArrayOf([fact_id, rate_id]), []) then begin
    ClientDS_ListRate.Delete;
  end;

  // Удаление старой ставки
  if not ClientDS_Fact.Locate('type_kontener;attr_self', VarArrayOf([old_type_tools_id,old_attr_self]), []) then begin
    ClientDS_ListRate.DisableControls;
    ClientDS_ListRate.Filter   := '';
    ClientDS_ListRate.Filtered := False;
    while ClientDS_ListRate.Locate('type_tools_id;attr_self;set_one', VarArrayOf([old_type_tools_id,old_attr_self,True]), []) do begin
      ClientDS_ListRate.Delete;
    end;
    ClientDS_ListRate.EnableControls;
  end;

  ClientDS_Fact.FindKey([pos_fact_id]);
  ClientDS_Fact.EnableControls;

  cxGrid3DBBandedTableView1.Controller.TopRowIndex := pos;
  UpdateClientRate;
  Fset_calc_enabled := True;
end;



procedure TfmBargainList2.cxGrid3DBBandedTableView1KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if Key = VK_RETURN then Key := VK_DOWN;
end;

procedure TfmBargainList2.cxGrid3DBBandedTableView1KeyPress(Sender: TObject; var Key: Char);
begin
  if cxGrid3DBBandedTableView1.Controller.FocusedColumn.Options.Editing = False then
    FilterColumnGridOnKeyPress(TcxGridDBBandedTableView(TcxGridSite(Sender).GridView), Key);
end;

procedure TfmBargainList2.OnGetText_FactSum(Sender: TcxDataSummaryItem; const AValue: Variant; AIsFooter: Boolean; var AText: string);
begin
  if ClientDS_GridSum.Locate('rw_id', Sender.Tag, []) then begin
    AText := FormatFloat('#,##0.00', ClientDS_GridSum.FieldByName('fact_sum').AsCurrency);
  end else begin
    AText := '';
  end;
end;

procedure TfmBargainList2.OnGetText_CountVagon(Sender: TcxDataSummaryItem; const AValue: Variant; AIsFooter: Boolean; var AText: string);
begin
  if ClientDS_GridSum.Locate('rw_id', Sender.Tag, []) then begin
    AText := FormatFloat('#,##0', ClientDS_GridSum.FieldByName('count_vagon').AsCurrency);
  end else begin
    AText := '';
  end;
end;

procedure TfmBargainList2.OnGetText_CountWeight(Sender: TcxDataSummaryItem; const AValue: Variant; AIsFooter: Boolean; var AText: string);
begin
  if ClientDS_GridSum.Locate('rw_id', Sender.Tag, []) then begin
    AText := FormatFloat('#,##0.000', ClientDS_GridSum.FieldByName('count_weight').AsCurrency);
  end else begin
    AText := '';
  end;
end;

procedure TfmBargainList2.OnGetText_FactRate(Sender: TcxDataSummaryItem; const AValue: Variant; AIsFooter: Boolean; var AText: string);
begin
  if ClientDS_GridSum.Locate('rw_id', Sender.Tag, []) then begin
    AText := FormatFloat('#,##0.00', ClientDS_GridSum.FieldByName('fact_rate').AsCurrency);
  end else begin
    AText := '';
  end;
end;


procedure TfmBargainList2.cxGrid3DBBandedTableView2CustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
	if AViewInfo.GridRecord.Selected or AViewInfo.GridRecord.Focused then begin
		ACanvas.Brush.Color := clNavy;
		ACanvas.Font.Color := clWhite;
		if AViewInfo.Focused then ACanvas.Brush.Color := clBlue;
	end;
end;

procedure TfmBargainList2.cxGridDBBandedTableView1CustomDrawCell(Sender: TcxCustomGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
	if AViewInfo.GridRecord.Selected or AViewInfo.GridRecord.Focused then begin
		ACanvas.Brush.Color := clNavy;
		ACanvas.Font.Color := clWhite;
		if AViewInfo.Focused then ACanvas.Brush.Color := clBlue;
	end;
end;

procedure TfmBargainList2.cxGridDBBandedTableView2CustomDrawCell(Sender: TcxCustomGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
	if AViewInfo.GridRecord.Selected or AViewInfo.GridRecord.Focused then begin
		ACanvas.Brush.Color := clNavy;
		ACanvas.Font.Color := clWhite;
		if AViewInfo.Focused then ACanvas.Brush.Color := clBlue;
	end;
end;

procedure TfmBargainList2.cxGridDBBandedTableView2Editing(Sender: TcxCustomGridTableView; AItem: TcxCustomGridTableItem; var AAllow: Boolean);
begin
  if (AItem.Index = TcxGridDBBandedTableView(Sender).GetColumnByFieldName('weight').Index) and TcxGridDBBandedTableView(Sender).GetColumnByFieldName('set_one').DataBinding.Field.AsBoolean then
    AAllow := False;
end;

procedure TfmBargainList2.cxGridDBBandedTableView4CustomDrawCell(Sender: TcxCustomGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
//  if cxGridDBBandedTableView4.Columns[AViewInfo.Item.ID].Tag = cxGrid1DBBandedTableView1global_id.DataBinding.Field.Value then begin
//    ACanvas.Font.Style  := [fsBold];
//    ACanvas.Brush.Color := RGB(255, 242, 204);
//  end else begin
//    ACanvas.Font.Style  := [];
//    ACanvas.Brush.Color := clWhite;
//  end;


	if AViewInfo.GridRecord.Selected or AViewInfo.GridRecord.Focused then begin
		ACanvas.Brush.Color := clNavy;
		ACanvas.Font.Color := clWhite;
		if AViewInfo.Focused then ACanvas.Brush.Color := clBlue;
	end;
end;

procedure TfmBargainList2.cxGridDBBandedTableView4FocusedItemChanged(Sender: TcxCustomGridTableView; APrevFocusedItem, AFocusedItem: TcxCustomGridTableItem);
var i : integer;
    rate_id : integer;
begin
  rate_id := -9;
  for i :=0 to cxGridDBBandedTableView4.ColumnCount-1 do begin
    if cxGridDBBandedTableView4.Columns[i].Focused then begin
      rate_id := cxGridDBBandedTableView4.Columns[i].Tag;
    end;
  end;

  if rate_id <> -9 then begin
    if rate_id <> Client_Contract.FieldByName('global_id').AsInteger then
      Client_Contract.Locate('global_id', rate_id, []);
  end;

  Sender.Painter.Invalidate;
end;

procedure TfmBargainList2.cxGridDBBandedTableView4SelectionChanged(Sender: TcxCustomGridTableView);
begin
//var i : integer;
//    rate_id : integer;
//begin
//  rate_id := -9;
//  for i :=0 to cxGridDBBandedTableView4.ColumnCount-1 do begin
//    if cxGridDBBandedTableView4.Columns[i].Focused then begin
//      rate_id := cxGridDBBandedTableView4.Columns[i].Tag;
//    end;
//  end;
//
//  if rate_id <> -9 then begin
//    if rate_id <> Client_Contract.FieldByName('global_id').AsInteger then
//      Client_Contract.Locate('global_id', rate_id, []);
//  end;

end;

procedure TfmBargainList2.cxPageControl1Change(Sender: TObject);
begin
  UpdateSum;
  UpdateSumResult;
end;

procedure TfmBargainList2.cxPageControl1DrawTabEx(AControl: TcxCustomTabControl; ATab: TcxTab; Font: TFont);
begin
  if ATab.Caption = 'Доход' then begin
    Font.Color := clRed;
    Font.Style := [fsBold];
  end else if ATab.Caption = 'Расход' then begin
    Font.Color := clGreen;
    Font.Style := [fsBold];
  end else begin
    Font.Color := clWindowText;
    Font.Style := [];
  end;
end;

procedure TfmBargainList2.dxBarButton10Click(Sender: TObject);
var Client_TransportPay : TClientDataSet;
    Q                   : TADOQuery;
    transport_pay       : Currency;
    pos1, pos_fact_id1  : integer;
    pos2, pos_fact_id2  : integer;
    num_rec             : integer;
begin
  Client_TransportPay := TClientDataSet.Create(nil);
  Client_TransportPay.FieldDefs.Add('transport_pay', ftCurrency);
  Client_TransportPay.FieldDefs.Add('type_kontener', ftInteger);
  Client_TransportPay.FieldDefs.Add('attr_self'    , ftInteger);
  Client_TransportPay.FieldDefs.Add('type_kontener_name', ftString, 200);
  Client_TransportPay.FieldDefs.Add('attr_self_name'    , ftString, 200);
  Client_TransportPay.CreateDataSet;
  Client_TransportPay.LogChanges := False;

  Q := TADOQuery.Create(nil);
  Q.Connection := Fconnect;
  Q.SQL.Add('SELECT * FROM');
  Q.SQL.Add('(SELECT inf_obj_id as type_kontener, inf_obj_name as type_kontener_name FROM inf_obj WHERE (type_inf_id = 220) AND dbo.GetInfObjVisible(str_group_visible) = 1) U1');
  Q.SQL.Add('CROSS JOIN');
  Q.SQL.Add('(SELECT attr_self, attr_self_name FROM view_attr_self) U2');
  Q.Open;


  pos1 := cxGrid3DBBandedTableView1.Controller.TopRowIndex;
  pos_fact_id1 := cxGrid3DBBandedTableView1fact_id.DataBinding.Field.Value;
  pos2 := cxGridDBBandedTableView1.Controller.TopRowIndex;
  pos_fact_id2 := cxGridDBBandedTableView1fact_id.DataBinding.Field.Value;
  ClientDS_Fact.DisableControls;
  FClientDS_FactDetail.DisableControls;

  Q.First;

  for num_rec := 0 to cxGrid3DBBandedTableView1.Controller.SelectedRecordCount - 1 do
    if ClientDS_Fact.Locate('fact_id', cxGrid3DBBandedTableView1.Controller.SelectedRows[num_rec].Values[cxGrid3DBBandedTableView1fact_id.Index], []) then begin

      transport_pay := ClientDS_Fact.FieldByName('transport_pay').AsCurrency;

      if not Client_TransportPay.Locate('transport_pay', transport_pay, []) then begin
        Client_TransportPay.Append;
        Client_TransportPay.FieldByName('transport_pay'     ).Value := transport_pay;
        Client_TransportPay.FieldByName('type_kontener'     ).Value := Q.FieldByName('type_kontener'     ).Value;
        Client_TransportPay.FieldByName('attr_self'         ).Value := Q.FieldByName('attr_self'         ).Value;
        Client_TransportPay.FieldByName('type_kontener_name').Value := Q.FieldByName('type_kontener_name').Value;
        Client_TransportPay.FieldByName('attr_self_name'    ).Value := Q.FieldByName('attr_self_name'    ).Value;
        Client_TransportPay.Post;
        Q.Next;
      end;

      ClientDS_Fact.Edit;
      ClientDS_Fact.FieldByName('type_kontener'             ).Value := Client_TransportPay.FieldByName('type_kontener'     ).Value;
      ClientDS_Fact.FieldByName('attr_self'                 ).Value := Client_TransportPay.FieldByName('attr_self'         ).Value;
      ClientDS_Fact.FieldByName('type_kontener_name'        ).Value := Client_TransportPay.FieldByName('type_kontener_name').Value;
      ClientDS_Fact.FieldByName('attr_self_name'            ).Value := Client_TransportPay.FieldByName('attr_self_name'    ).Value;
      ClientDS_Fact.FieldByName('display_type_kontener_name').Value := Client_TransportPay.FieldByName('type_kontener_name').Value;
      ClientDS_Fact.FieldByName('display_attr_self_name'    ).Value := Client_TransportPay.FieldByName('attr_self_name'    ).Value;
      ClientDS_Fact.Post;

      if FClientDS_FactDetail.FindKey([ClientDS_Fact.FieldByName('fact_id').AsInteger]) then begin
        FClientDS_FactDetail.Edit;
        FClientDS_FactDetail.FieldByName('type_kontener'     ).Value := Client_TransportPay.FieldByName('type_kontener'     ).Value;
        FClientDS_FactDetail.FieldByName('attr_self'         ).Value := Client_TransportPay.FieldByName('attr_self'         ).Value;
        FClientDS_FactDetail.FieldByName('type_kontener_name').Value := Client_TransportPay.FieldByName('type_kontener_name').Value;
        FClientDS_FactDetail.FieldByName('attr_self_name'    ).Value := Client_TransportPay.FieldByName('attr_self_name'    ).Value;
        FClientDS_FactDetail.Post;
      end;
    end;



  CalcFrahtSum(1, '');
  UpdateSum;
  UpdateSumResult;
  FClientDS_FactDetail.EnableControls;
  FClientDS_FactDetail.FindKey([pos_fact_id2]);
  cxGridDBBandedTableView1.Controller.TopRowIndex := pos2;

  ClientDS_Fact.EnableControls;
  ClientDS_Fact.FindKey([pos_fact_id1]);
  cxGrid3DBBandedTableView1.Controller.TopRowIndex := pos1;

  Q.Free;
  Client_TransportPay.Free;
end;

procedure TfmBargainList2.dxBarButton11Click(Sender: TObject);
begin
	PrintcxGrid(cxGrid3DBBandedTableView1);
end;

procedure TfmBargainList2.dxBarButton12Click(Sender: TObject);
begin
	SetdxDBGridColumns(cxGrid3DBBandedTableView1);
end;

procedure TfmBargainList2.dxBarButton13Click(Sender: TObject);
begin
	cxGrid3DBBandedTableView1.OptionsView.GroupByBox := not cxGrid3DBBandedTableView1.OptionsView.GroupByBox;
end;

procedure TfmBargainList2.dxBarButton14Click(Sender: TObject);
begin
  Frate_val_copy        := cxGridDBBandedTableView2rate_val.DataBinding.Field.AsCurrency;
  dxBarButton15.Caption := 'Вставить сумму (' + FormatFloat('#,##0.00',Frate_val_copy) + ')';
  dxBarButton15.Enabled := True;
end;

procedure TfmBargainList2.dxBarButton15Click(Sender: TObject);
begin
  ClientDS_ListRate.Edit;
  ClientDS_ListRate.FieldByName('rate_val').Value := Frate_val_copy;
  ClientDS_ListRate.Post;
end;

procedure TfmBargainList2.dxBarButton16Click(Sender: TObject);
var ClientDS: TClientDataSet;
begin
  ClientDS := TClientDataSet.Create(nil);
  ClientDS.Data := ClientDS_ListRate.Data;


  fmBargainRate := TfmBargainRate.Create(Application, Fconnect, Fusr_pwd);
  fmBargainRate._SetSelectParam  := False;

  ClientDS.Filter := '(type_tools_id<>null) and (attr_self<>null)';
  ClientDS.Filtered := True;

  ClientDS.Last;
  if not ClientDS.FieldByName('type_tools_id').IsNull then
    fmBargainRate._SetTypeKontener := ClientDS.FieldByName('type_tools_id').Value;

  if not ClientDS.FieldByName('attr_self').IsNull then
    fmBargainRate._SetAttrSelf     := ClientDS.FieldByName('attr_self').Value;

  if fmBargainRate.ShowModal = mrOk then begin

    if fmBargainRate._GetOneWeight = True then begin
      if ClientDS.Locate('rate_id;type_tools_id;attr_self', VarArrayOf([cxGrid1DBBandedTableView1global_id.DataBinding.Field.AsInteger, fmBargainRate._GetTypeKontener, fmBargainRate._GetAttrSelf]), []) then begin
        Application.MessageBox('Ставка уже добавлена!', 'Ошибка', MB_ICONSTOP or MB_OK);
        ClientDS.Free;
        Exit;
      end;
    end else begin
      if ClientDS.Locate('rate_id;type_tools_id;attr_self;weight', VarArrayOf([cxGrid1DBBandedTableView1global_id.DataBinding.Field.AsInteger, fmBargainRate._GetTypeKontener, fmBargainRate._GetAttrSelf, fmBargainRate._GetWeight]), []) then begin
        Application.MessageBox('Ставка уже добавлена!', 'Ошибка', MB_ICONSTOP or MB_OK);
        ClientDS.Free;
        Exit;
      end;
      if ClientDS.Locate('rate_id;type_tools_id;attr_self;set_one', VarArrayOf([cxGrid1DBBandedTableView1global_id.DataBinding.Field.AsInteger, fmBargainRate._GetTypeKontener, fmBargainRate._GetAttrSelf, True]), []) then begin
        Application.MessageBox('Ставка уже добавлена!', 'Ошибка', MB_ICONSTOP or MB_OK);
        ClientDS.Free;
        Exit;
      end;
    end;

    ClientDS_ListRate.Append;
    ClientDS_ListRate.FieldByName('list_rate_id'    ).Value := null;
    ClientDS_ListRate.FieldByName('rate_id'         ).Value := cxGrid1DBBandedTableView1global_id.DataBinding.Field.AsInteger;
    if cxGrid1DBBandedTableView1service_type.DataBinding.Field.AsInteger = 0 then
      ClientDS_ListRate.FieldByName('type_rate'       ).Value := 1
    else
      ClientDS_ListRate.FieldByName('type_rate'       ).Value := 2;

    ClientDS_ListRate.FieldByName('weight'          ).Value := fmBargainRate._GetWeight;
    ClientDS_ListRate.FieldByName('rate_val'        ).Value := fmBargainRate._GetRate;
    ClientDS_ListRate.FieldByName('set_one'         ).Value := fmBargainRate._GetOneWeight;
    ClientDS_ListRate.FieldByName('type_tools_id'   ).Value := fmBargainRate._GetTypeKontener;
    ClientDS_ListRate.FieldByName('attr_self'       ).Value := fmBargainRate._GetAttrSelf;
    ClientDS_ListRate.FieldByName('type_tools_name' ).Value := fmBargainRate._GetTypeKontenerName;
    ClientDS_ListRate.FieldByName('attr_self_name'  ).Value := fmBargainRate._GetAttrSelfName;
    ClientDS_ListRate.FieldByName('fact_id'         ).Value := null;
    ClientDS_ListRate.Post;
    UpdateClientRate;
  end;

  ClientDS.Free;
end;

procedure TfmBargainList2.dxBarButton17Click(Sender: TObject);
var i : integer;
begin
  fmBargainRate := TfmBargainRate.Create(Application, Fconnect, Fusr_pwd);
  fmBargainRate._SetSelectParam := False;
  fmBargainRate._SetReadOnly    := True;

  if ClientDS_ListRate.FieldByName('fact_id').IsNull then begin
    fmBargainRate._SetTypeKontener := ClientDS_ListRate.FieldByName('type_tools_id').Value;
    fmBargainRate._SetAttrSelf     := ClientDS_ListRate.FieldByName('attr_self'    ).Value;
    fmBargainRate._SetWeight       := ClientDS_ListRate.FieldByName('weight'       ).Value;
    fmBargainRate._SetOneWeight    := ClientDS_ListRate.FieldByName('set_one'      ).Value;
    fmBargainRate._SetRate         := ClientDS_ListRate.FieldByName('rate_val'     ).AsFloat;
  end else begin
    fmBargainRate._SetWeight       := ClientDS_ListRate.FieldByName('weight'  ).Value;
    fmBargainRate._SetOneWeight    := ClientDS_ListRate.FieldByName('set_one' ).Value;
    fmBargainRate._SetRate         := ClientDS_ListRate.FieldByName('rate_val').AsFloat;
    fmBargainRate._SetSelectLink   := False;
    fmBargainRate._SetSelectParam  := False;
  end;

  if fmBargainRate.ShowModal = mrOk then begin


    Fset_calc_enabled := False;
    ClientDS_ListRate.DisableControls;
    for i:=0 to cxGridDBBandedTableView2.Controller.SelectedRecordCount - 1 do begin
      if ClientDS_ListRate.Locate('id', cxGridDBBandedTableView2.Controller.SelectedRows[i].Values[cxGridDBBandedTableView2id.Index], []) then begin

        if (ClientDS_ListRate.FieldByName('set_one').Value = True) AND (ClientDS_ListRate.FieldByName('set_one').Value <> fmBargainRate._GetOneWeight)
            OR
           (ClientDS_ListRate.FieldByName('set_one').Value = False) AND (ClientDS_ListRate.FieldByName('weight').Value <> fmBargainRate._GetWeight) then begin
          Application.MessageBox('Нельзя изменять вес! Добавьте новую ставку.', 'Ошибка', MB_ICONSTOP or MB_OK);
        end else begin
          ClientDS_ListRate.Edit;
          ClientDS_ListRate.FieldByName('rate_val').Value := fmBargainRate._GetRate;
          ClientDS_ListRate.Post;
        end;

      end;
    end;
    ClientDS_ListRate.EnableControls;
    Fset_calc_enabled := True;
    CalcSum(cxGrid1DBBandedTableView1global_id.DataBinding.Field.AsInteger);
    UpdateSum;
    UpdateSumResult;
    UpdateClientRate;
  end;
end;

procedure TfmBargainList2.dxBarButton18Click(Sender: TObject);
var str_list_id : TStringList;
              i : integer;
begin
  if Application.MessageBox('Удалить выбранные ставки?', 'ВНИМАНИЕ',  MB_OKCANCEL) = IDOK then begin
    Screen.Cursor := crHourglass;

    Fset_calc_enabled := False;
    str_list_id := TStringList.Create;

    for i:=0 to cxGridDBBandedTableView2.Controller.SelectedRecordCount - 1 do
      str_list_id.Add(IntToStr(cxGridDBBandedTableView2.Controller.SelectedRows[i].Values[cxGridDBBandedTableView2id.Index]));

    ClientDS_ListRate.DisableControls;
    for i := 0 to str_list_id.Count - 1 do begin
      if ClientDS_ListRate.Locate('id', str_list_id.Strings[i], []) then
        ClientDS_ListRate.Delete;
    end;
    ClientDS_ListRate.EnableControls;

    str_list_id.Free;
    Fset_calc_enabled := True;

    CalcSum(cxGrid1DBBandedTableView1global_id.DataBinding.Field.AsInteger);
    UpdateSum;
    UpdateSumResult;
    UpdateClientRate;


    DS_ListRate.DataSet := nil;
    ClientDS_ListRate.First;
    DS_ListRate.DataSet := ClientDS_ListRate;


    Screen.Cursor := crDefault;
  end;
end;

procedure TfmBargainList2.dxBarButton19Click(Sender: TObject);
begin
  if ClientDS_Fact.RecordCount > 0 then begin
    fmFactCard := TfmFactCard.CreateDll(Application, Fusr_pwd);
    fmFactCard._UpdateFact(cxGrid3DBBandedTableView1fact_id.DataBinding.Field.AsInteger);
    fmFactCard._SetReadOnly := True;
    fmFactCard.ShowModal;
  end;
end;

procedure TfmBargainList2.dxBarButton1Click(Sender: TObject);
begin
	PrintcxGrid(cxGrid1DBBandedTableView1);
end;

procedure TfmBargainList2.dxBarButton20Click(Sender: TObject);
var ClientDS : TClientDataSet;
    rate_id  : integer;
begin
  ClientDS := TClientDataSet.Create(nil);
  ClientDS.Data := ClientDS_Fact.Data;

  Fset_calc_enabled := False;
  ClientDS_ListRate.DisableControls;

  rate_id := cxGrid1DBBandedTableView1global_id.DataBinding.Field.AsInteger;

  ClientDS.First;
  while not ClientDS.Eof do begin


    if not ClientDS_ListRate.Locate('rate_id;type_tools_id;attr_self', VarArrayOf([rate_id, ClientDS.FieldByName('type_kontener').Value, ClientDS.FieldByName('attr_self').Value]), []) then begin
      ClientDS_ListRate.Append;
      ClientDS_ListRate.FieldByName('list_rate_id'    ).Value := null;
      ClientDS_ListRate.FieldByName('rate_id'         ).Value := rate_id;
      if cxGrid1DBBandedTableView1service_type.DataBinding.Field.AsInteger = 0 then
        ClientDS_ListRate.FieldByName('type_rate'       ).Value := 1
      else
        ClientDS_ListRate.FieldByName('type_rate'       ).Value := 2;

      ClientDS_ListRate.FieldByName('weight'          ).Value := 0;
      ClientDS_ListRate.FieldByName('rate_val'        ).Value := 0;
      ClientDS_ListRate.FieldByName('set_one'         ).Value := True;
      ClientDS_ListRate.FieldByName('type_tools_id'   ).Value := ClientDS.FieldByName('type_kontener').Value;
      ClientDS_ListRate.FieldByName('attr_self'       ).Value := ClientDS.FieldByName('attr_self').Value;
      ClientDS_ListRate.FieldByName('type_tools_name' ).Value := ClientDS.FieldByName('type_kontener_name').Value;
      ClientDS_ListRate.FieldByName('attr_self_name'  ).Value := ClientDS.FieldByName('attr_self_name').Value;
      ClientDS_ListRate.FieldByName('fact_id'         ).Value := null;
      ClientDS_ListRate.Post;
    end;

    ClientDS.Next;
  end;

  ClientDS_ListRate.EnableControls;
  Fset_calc_enabled := True;
  CalcFrahtSum(1, '');
  UpdateSum;
  UpdateSumResult;


  ClientDS.Free;
end;

procedure TfmBargainList2.dxBarButton21Click(Sender: TObject);
begin
  CalcFrahtSum(1, '');
  UpdateSum;
  UpdateSumResult;
end;

procedure TfmBargainList2.dxBarButton22Click(Sender: TObject);
var i, pos1, pos_fact_id1 : integer;
    pos2, pos_fact_id2 : integer;
    array_fact_id : Variant;
    str_rate_value : string;
    rate_value : Double;
begin
  fmBargainRate := TfmBargainRate.Create(Application, Fconnect, Fusr_pwd);

  fmBargainRate._SetTypeKontener := cxGrid3DBBandedTableView1type_kontener.DataBinding.Field.AsInteger;
  fmBargainRate._SetAttrSelf     := cxGrid3DBBandedTableView1attr_self.DataBinding.Field.AsInteger;
  fmBargainRate._SetSelectRate   := False;
  fmBargainRate._SetSelectParam  := False;


  if fmBargainRate.ShowModal=mrOk then begin
    Fset_calc_enabled := False;

    array_fact_id := VarArrayCreate([0, cxGrid3DBBandedTableView1.Controller.SelectedRecordCount], varInteger);
    for i:=0 to cxGrid3DBBandedTableView1.Controller.SelectedRecordCount - 1 do
      array_fact_id[i] := cxGrid3DBBandedTableView1.Controller.SelectedRows[i].Values[cxGrid3DBBandedTableView1fact_id.Index];

    pos1 := cxGrid3DBBandedTableView1.Controller.TopRowIndex;
    pos_fact_id1 := cxGrid3DBBandedTableView1fact_id.DataBinding.Field.Value;
    pos2 := cxGridDBBandedTableView1.Controller.TopRowIndex;
    pos_fact_id2 := cxGridDBBandedTableView1fact_id.DataBinding.Field.Value;
    ClientDS_Fact.DisableControls;
    FClientDS_FactDetail.DisableControls;
    ClientDS_ListRate.DisableControls;

    for i:= VarArrayLowBound(array_fact_id, 1) to VarArrayHighBound(array_fact_id, 1)-1 do begin
      if ClientDS_Fact.FindKey([array_fact_id[i]]) then begin
        ClientDS_Fact.Edit;
        ClientDS_Fact.FieldByName('type_kontener'     ).Value := fmBargainRate._GetTypeKontener;
        ClientDS_Fact.FieldByName('attr_self'         ).Value := fmBargainRate._GetAttrSelf;
        ClientDS_Fact.FieldByName('type_kontener_name').Value := fmBargainRate._GetTypeKontenerName;
        ClientDS_Fact.FieldByName('attr_self_name'    ).Value := fmBargainRate._GetAttrSelfName;
        ClientDS_Fact.FieldByName('display_type_kontener_name').Value := fmBargainRate._GetTypeKontenerName;
        ClientDS_Fact.FieldByName('display_attr_self_name'    ).Value := fmBargainRate._GetAttrSelfName;
        ClientDS_Fact.Post;
      end;

      if FClientDS_FactDetail.FindKey([array_fact_id[i]]) then begin
        FClientDS_FactDetail.Edit;
        FClientDS_FactDetail.FieldByName('type_kontener'     ).Value := fmBargainRate._GetTypeKontener;
        FClientDS_FactDetail.FieldByName('attr_self'         ).Value := fmBargainRate._GetAttrSelf;
        FClientDS_FactDetail.FieldByName('type_kontener_name').Value := fmBargainRate._GetTypeKontenerName;
        FClientDS_FactDetail.FieldByName('attr_self_name'    ).Value := fmBargainRate._GetAttrSelfName;
        FClientDS_FactDetail.Post;
      end;

      if ClientDS_ListRate.Locate('fact_id;rate_id', VarArrayOf([array_fact_id[i] ,cxGrid1DBBandedTableView1global_id.DataBinding.Field.AsInteger]), []) then begin
        ClientDS_ListRate.Delete;
      end;
    end;

    ClientDS_ListRate.EnableControls;
    Fset_calc_enabled := True;
    CalcFrahtSum(1, '');
    UpdateSum;
    UpdateSumResult;
    FClientDS_FactDetail.EnableControls;
    FClientDS_FactDetail.FindKey([pos_fact_id2]);
    cxGridDBBandedTableView1.Controller.TopRowIndex := pos2;

    ClientDS_Fact.EnableControls;
    ClientDS_Fact.FindKey([pos_fact_id1]);
    cxGrid3DBBandedTableView1.Controller.TopRowIndex := pos1;
  end;
end;

procedure TfmBargainList2.dxBarButton23Click(Sender: TObject);
var i, pos, pos_fact_id : integer;
    array_fact_id : Variant;
    str_rate_value : string;
    rate_value : Double;
    str_fact_id : string;
begin
  if InputQuery('Ставка', 'Ставка', str_rate_value) then begin
    UpdateClientRate;

    str_rate_value := ReplaceStr(str_rate_value, '.', FormatSettings.DecimalSeparator);
    str_rate_value := ReplaceStr(str_rate_value, ',', FormatSettings.DecimalSeparator);
    if not TryStrToFloat(str_rate_value, rate_value) then begin
      Application.MessageBox(PChar(str_rate_value + ' не является числом.'), 'Ошибка', MB_ICONSTOP or MB_OK);
      Exit;
    end;

    str_fact_id   := '';
    array_fact_id := VarArrayCreate([0, cxGrid3DBBandedTableView1.Controller.SelectedRecordCount], varInteger);
    for i:=0 to cxGrid3DBBandedTableView1.Controller.SelectedRecordCount - 1 do begin
      array_fact_id[i] := cxGrid3DBBandedTableView1.Controller.SelectedRows[i].Values[cxGrid3DBBandedTableView1fact_id.Index];
      str_fact_id      := str_fact_id + ',' + IntToStr(cxGrid3DBBandedTableView1.Controller.SelectedRows[i].Values[cxGrid3DBBandedTableView1fact_id.Index]);
    end;
    Delete(str_fact_id, 1, 1);

    ClientDS_Fact.DisableControls;
    ClientDS_ListRate.DisableControls;
    FClientDS_FactDetail.DisableControls;
    for i:= VarArrayLowBound(array_fact_id, 1) to VarArrayHighBound(array_fact_id, 1)-1 do begin
      ChangeRate( array_fact_id[i],
                  cxGrid1DBBandedTableView1global_id.DataBinding.Field.AsInteger,
                  StrToCurr(str_rate_value));
      ShowTextMessage('Расчет ставки. ' + IntToStr(i) + ' из ' + IntToStr(VarArrayHighBound(array_fact_id, 1)) + ' вагонов...', False);
    end;
    ShowTextMessage;
    ClientDS_Fact.EnableControls;
    ClientDS_ListRate.EnableControls;
    FClientDS_FactDetail.EnableControls;


    CalcFrahtSum(1, str_fact_id);
    UpdateSum;
    UpdateSumResult;
  end;
end;

procedure TfmBargainList2.GetRateFromFact(rate_id: integer);
var  ClientDS : TClientDataSet;
begin
  UpdateClientRate;

  ClientDS := TClientDataSet.Create(nil);
  ClientDS.Data := ClientDS_Fact.Data;

  ClientDS_Fact.DisableControls;
  ClientDS_ListRate.DisableControls;
  FClientDS_FactDetail.DisableControls;

  ClientDS.First;
  while not ClientDS.Eof do begin
    ChangeRate( ClientDS.FieldByName('fact_id').AsInteger,
                rate_id,
                ClientDS.FieldByName('transport_pay').AsCurrency);

    ShowTextMessage('Расчет ставки. ' + IntToStr(ClientDS.RecNo) + ' из ' + IntToStr(ClientDS.RecordCount) + ' вагонов...', False);
    ClientDS.Next;
  end;
  ShowTextMessage;
  ClientDS_Fact.EnableControls;
  ClientDS_ListRate.EnableControls;
  FClientDS_FactDetail.EnableControls;

  ClientDS.Free;

  CalcFrahtSum(1, '');
  UpdateSum;
  UpdateSumResult;
end;

procedure TfmBargainList2.GetRateFromPlan(rate_id: integer);
var   ClientDS : TClientDataSet;
begin
  UpdateClientRate;

  ClientDS := TClientDataSet.Create(nil);
  ClientDS.Data := ClientDS_Fact.Data;

  Client_Contract.Locate('global_id', rate_id, []);

  ClientDS_Fact.DisableControls;
  ClientDS_ListRate.DisableControls;
  FClientDS_FactDetail.DisableControls;

  ClientDS.First;
  while not ClientDS.Eof do begin
    ChangeRate( ClientDS.FieldByName('fact_id').AsInteger,
                rate_id,
                Client_Contract.FieldByName('shaping_rate_val').AsCurrency);

    ShowTextMessage('Расчет ставки. ' + IntToStr(ClientDS.RecNo) + ' из ' + IntToStr(ClientDS.RecordCount) + ' вагонов...', False);
    ClientDS.Next;
  end;
  ShowTextMessage;
  ClientDS_Fact.EnableControls;
  ClientDS_ListRate.EnableControls;
  FClientDS_FactDetail.EnableControls;

  ClientDS.Free;

  CalcFrahtSum(1, '');
  UpdateSum;
  UpdateSumResult;

end;


procedure TfmBargainList2.dxBarButton24Click(Sender: TObject);
var i : integer;
begin
  case TControl(Sender).Tag of
    1:  begin
          for i := 0 to cxGridDBBandedTableView1.ColumnCount-1 do
            if Pos('count_vagon', cxGridDBBandedTableView1.Columns[i].DataBinding.FieldName) <> 0 then
              cxGridDBBandedTableView1.Columns[i].Visible := TdxBarButton(Sender).Down;
        end;
    2:  begin
          for i := 0 to cxGridDBBandedTableView1.ColumnCount-1 do
            if Pos('count_weight', cxGridDBBandedTableView1.Columns[i].DataBinding.FieldName) <> 0 then
              cxGridDBBandedTableView1.Columns[i].Visible := TdxBarButton(Sender).Down;
        end;
    3:  begin
          for i := 0 to cxGridDBBandedTableView1.ColumnCount-1 do
            if Pos('fact_rate', cxGridDBBandedTableView1.Columns[i].DataBinding.FieldName) <> 0 then
              cxGridDBBandedTableView1.Columns[i].Visible := TdxBarButton(Sender).Down;
        end;
    4:  begin
//          for i := 0 to cxGridDBBandedTableView1.ColumnCount-1 do
//            if Pos('fact_add_sum', cxGridDBBandedTableView1.Columns[i].DataBinding.FieldName) <> 0 then
//              cxGridDBBandedTableView1.Columns[i].Visible := TdxBarButton(Sender).Down;
        end;
    5:  begin
          for i := 0 to cxGridDBBandedTableView1.ColumnCount-1 do
            if Pos('fact_sum', cxGridDBBandedTableView1.Columns[i].DataBinding.FieldName) <> 0 then
              cxGridDBBandedTableView1.Columns[i].Visible := TdxBarButton(Sender).Down;
        end;
  end;
end;

procedure TfmBargainList2.dxBarButton29Click(Sender: TObject);
var i, pos, pos_fact_id : integer;
    array_fact_id : Variant;
    str_rate_value : string;
    str_fact_id : string;
    rate_value : Double;
    rate_id : integer;
begin
  if InputQuery('Ставка', 'Ставка', str_rate_value) then begin

    str_rate_value := ReplaceStr(str_rate_value, '.', FormatSettings.DecimalSeparator);
    str_rate_value := ReplaceStr(str_rate_value, ',', FormatSettings.DecimalSeparator);
    if not TryStrToFloat(str_rate_value, rate_value) then begin
      Application.MessageBox(PChar(str_rate_value + ' не является числом.'), 'Ошибка', MB_ICONSTOP or MB_OK);
      Exit;
    end;

    rate_id := -9;
    for i := 0 to cxGridDBBandedTableView1.ColumnCount - 1 do begin
      if cxGridDBBandedTableView1.Columns[i].Focused then begin
        if cxGridDBBandedTableView1.Columns[i].Tag <> 0 then begin
          rate_id := cxGridDBBandedTableView1.Columns[i].Tag;
        end;
      end;
    end;

    if rate_id <> -9 then begin

      str_fact_id := '';
      array_fact_id := VarArrayCreate([0, cxGridDBBandedTableView1.Controller.SelectedRecordCount], varInteger);
      for i:=0 to cxGridDBBandedTableView1.Controller.SelectedRecordCount - 1 do begin
        array_fact_id[i] := cxGridDBBandedTableView1.Controller.SelectedRows[i].Values[cxGridDBBandedTableView1fact_id.Index];
        str_fact_id      := str_fact_id + ',' + IntToStr(cxGridDBBandedTableView1.Controller.SelectedRows[i].Values[cxGridDBBandedTableView1fact_id.Index]);
      end;
      Delete(str_fact_id, 1, 1);

      ClientDS_Fact.DisableControls;
      ClientDS_ListRate.DisableControls;
      FClientDS_FactDetail.DisableControls;
      for i:= VarArrayLowBound(array_fact_id, 1) to VarArrayHighBound(array_fact_id, 1)-1 do begin
        ChangeRate( array_fact_id[i],
                    rate_id,
                    StrToCurr(str_rate_value));
        ShowTextMessage('Расчет ставки. ' + IntToStr(i) + ' из ' + IntToStr(VarArrayHighBound(array_fact_id, 1)) + ' вагонов...', False);
      end;
      ShowTextMessage;
      FClientDS_FactDetail.EnableControls;
      ClientDS_ListRate.EnableControls;
      ClientDS_Fact.EnableControls;

      CalcFrahtSum(1, str_fact_id);
      UpdateSum;
      UpdateSumResult;
    end;
  end;
end;

procedure TfmBargainList2.dxBarButton2Click(Sender: TObject);
begin
	SetdxDBGridColumns(cxGrid1DBBandedTableView1);
end;

procedure TfmBargainList2.dxBarButton30Click(Sender: TObject);
var i, pos, pos_fact_id : integer;
    array_fact_id : Variant;
begin
  fmBargainRate := TfmBargainRate.Create(Application, Fconnect, Fusr_pwd);

  fmBargainRate._SetTypeKontener := cxGridDBBandedTableView1type_kontener.DataBinding.Field.AsInteger;
  fmBargainRate._SetAttrSelf     := cxGridDBBandedTableView1attr_self.DataBinding.Field.AsInteger;
  fmBargainRate._SetSelectRate   := False;
  fmBargainRate._SetSelectParam  := False;

  if fmBargainRate.ShowModal=mrOk then begin
    array_fact_id := VarArrayCreate([0, cxGridDBBandedTableView1.Controller.SelectedRecordCount], varInteger);
    for i:=0 to cxGridDBBandedTableView1.Controller.SelectedRecordCount - 1 do
      array_fact_id[i] := cxGridDBBandedTableView1.Controller.SelectedRows[i].Values[cxGridDBBandedTableView1fact_id.Index];

    pos := cxGridDBBandedTableView1.Controller.TopRowIndex;
    pos_fact_id := cxGridDBBandedTableView1fact_id.DataBinding.Field.Value;
    ClientDS_Fact.DisableControls;
    ClientDS_ListRate.DisableControls;
    FClientDS_FactDetail.DisableControls;

    for i:= VarArrayLowBound(array_fact_id, 1) to VarArrayHighBound(array_fact_id, 1)-1 do begin
      if ClientDS_Fact.FindKey([array_fact_id[i]]) then begin
        ClientDS_Fact.Edit;
        ClientDS_Fact.FieldByName('type_kontener'     ).Value := fmBargainRate._GetTypeKontener;
        ClientDS_Fact.FieldByName('attr_self'         ).Value := fmBargainRate._GetAttrSelf;
        ClientDS_Fact.FieldByName('type_kontener_name').Value := fmBargainRate._GetTypeKontenerName;
        ClientDS_Fact.FieldByName('attr_self_name'    ).Value := fmBargainRate._GetAttrSelfName;
        ClientDS_Fact.FieldByName('display_type_kontener_name').Value := fmBargainRate._GetTypeKontenerName;
        ClientDS_Fact.FieldByName('display_attr_self_name'    ).Value := fmBargainRate._GetAttrSelfName;
        ClientDS_Fact.Post;
      end;


      if FClientDS_FactDetail.FindKey([array_fact_id[i]]) then begin
        FClientDS_FactDetail.Edit;
        FClientDS_FactDetail.FieldByName('type_kontener'     ).Value := fmBargainRate._GetTypeKontener;
        FClientDS_FactDetail.FieldByName('attr_self'         ).Value := fmBargainRate._GetAttrSelf;
        FClientDS_FactDetail.FieldByName('type_kontener_name').Value := fmBargainRate._GetTypeKontenerName;
        FClientDS_FactDetail.FieldByName('attr_self_name'    ).Value := fmBargainRate._GetAttrSelfName;
        FClientDS_FactDetail.Post;
      end;

//      if ClientDS_ListRate.Locate('fact_id;rate_id', VarArrayOf([array_fact_id[i] ,cxGrid1DBBandedTableView1global_id.DataBinding.Field.AsInteger]), []) then begin
//        ClientDS_ListRate.Delete;
//      end;
    end;

    CalcFrahtSum(1, '');
    UpdateSum;
    UpdateSumResult;
    FClientDS_FactDetail.EnableControls;
    ClientDS_ListRate.EnableControls;
    ClientDS_Fact.EnableControls;
    FClientDS_FactDetail.FindKey([pos_fact_id]);
    cxGridDBBandedTableView1.Controller.TopRowIndex := pos;
  end;
end;

procedure TfmBargainList2.dxBarButton31Click(Sender: TObject);
begin
  PrintcxGrid(cxGridDBBandedTableView1);
end;

procedure TfmBargainList2.dxBarButton32Click(Sender: TObject);
begin

  if FClientDS_FactDetail.RecordCount > 0 then begin
    fmFactCard := TfmFactCard.CreateDll(Application, Fusr_pwd);
    fmFactCard._UpdateFact(cxGridDBBandedTableView1fact_id.DataBinding.Field.AsInteger);
    fmFactCard._SetReadOnly := True;
    fmFactCard.ShowModal;
  end;
end;

procedure TfmBargainList2.dxBarButton33Click(Sender: TObject);
begin
  if dxBarButton33.Down then begin
    dxBarButton34.Visible := ivNever;
    Fset_calc_hand        := False;
    CalcFrahtSum(0, '');
    UpdateSum;
    UpdateSumResult;
  end else begin
    dxBarButton34.Visible := ivAlways;
    Fset_calc_hand        := True;
  end;
end;

procedure TfmBargainList2.dxBarButton34Click(Sender: TObject);
begin
  Fset_calc_hand := False;
  CalcFrahtSum(1, '');
  UpdateSum;
  UpdateSumResult;
  Fset_calc_hand := True;
end;

procedure TfmBargainList2.dxBarButton35Click(Sender: TObject);
var i : integer;
    str_rate_value : string;
    rate_value : Double;
begin
  if InputQuery('Значение', 'Значение', str_rate_value) then begin
    str_rate_value := ReplaceStr(str_rate_value, '.', FormatSettings.DecimalSeparator);
    str_rate_value := ReplaceStr(str_rate_value, ',', FormatSettings.DecimalSeparator);
    if not TryStrToFloat(str_rate_value, rate_value) then begin
      Application.MessageBox(PChar(str_rate_value + ' не является числом.'), 'Ошибка', MB_ICONSTOP or MB_OK);
      Exit;
    end;

    Fset_calc_enabled := False;
    ClientDS_ListRate.DisableControls;
    for i:=0 to cxGridDBBandedTableView2.Controller.SelectedRecordCount - 1 do begin
      if ClientDS_ListRate.Locate('id', cxGridDBBandedTableView2.Controller.SelectedRows[i].Values[cxGridDBBandedTableView2id.Index], []) then begin
        ClientDS_ListRate.Edit;
        ClientDS_ListRate.FieldByName('rate_val').Value := ClientDS_ListRate.FieldByName('rate_val').Value * rate_value;
        ClientDS_ListRate.Post;
      end;
    end;
    ClientDS_ListRate.EnableControls;
    Fset_calc_enabled := True;
    CalcSum(cxGrid1DBBandedTableView1global_id.DataBinding.Field.AsInteger);
    UpdateSum;
    UpdateSumResult;
  end;
end;


procedure TfmBargainList2.CreateFooterSum();
var i : integer;
    sum : TcxDataSummaryItem;
    ClientDS : TClientDataSet;
begin
  sum := cxGrid3DBBandedTableView1.DataController.Summary.FooterSummaryItems.ItemOfItemLink(cxGrid3DBBandedTableView1fact_sum);
  while sum<>nil do begin
    sum.Free;
    sum := nil;
    sum := cxGrid3DBBandedTableView1.DataController.Summary.FooterSummaryItems.ItemOfItemLink(cxGrid3DBBandedTableView1fact_sum);
  end;

  sum := cxGrid3DBBandedTableView1.DataController.Summary.FooterSummaryItems.ItemOfItemLink(cxGrid3DBBandedTableView1count_vagon);
  while sum<>nil do begin
    sum.Free;
    sum := nil;
    sum := cxGrid3DBBandedTableView1.DataController.Summary.FooterSummaryItems.ItemOfItemLink(cxGrid3DBBandedTableView1count_vagon);
  end;

  sum := cxGrid3DBBandedTableView1.DataController.Summary.FooterSummaryItems.ItemOfItemLink(cxGrid3DBBandedTableView1count_weight);
  while sum<>nil do begin
    sum.Free;
    sum := nil;
    sum := cxGrid3DBBandedTableView1.DataController.Summary.FooterSummaryItems.ItemOfItemLink(cxGrid3DBBandedTableView1count_weight);
  end;

  sum := cxGrid3DBBandedTableView1.DataController.Summary.FooterSummaryItems.ItemOfItemLink(cxGrid3DBBandedTableView1fact_rate);
  while sum<>nil do begin
    sum.Free;
    sum := nil;
    sum := cxGrid3DBBandedTableView1.DataController.Summary.FooterSummaryItems.ItemOfItemLink(cxGrid3DBBandedTableView1fact_rate);
  end;

  if cxGrid1DBBandedTableView1type_calc_sum.DataBinding.Field.AsInteger = 1 then begin
    sum := cxGrid3DBBandedTableView1.DataController.Summary.FooterSummaryItems.Add;
    TcxGridDBTableSummaryItem(sum).Column    := cxGrid3DBBandedTableView1fact_sum;
    TcxGridDBTableSummaryItem(sum).Kind      := skNone;
    TcxGridDBTableSummaryItem(sum).Position  := spFooter;
    TcxGridDBTableSummaryItem(sum).Tag       := -9;
    TcxGridDBTableSummaryItem(sum).OnGetText := OnGetText_FactSum;

    sum := cxGrid3DBBandedTableView1.DataController.Summary.FooterSummaryItems.Add;
    TcxGridDBTableSummaryItem(sum).Column    := cxGrid3DBBandedTableView1count_vagon;
    TcxGridDBTableSummaryItem(sum).Kind      := skNone;
    TcxGridDBTableSummaryItem(sum).Position  := spFooter;
    TcxGridDBTableSummaryItem(sum).Tag       := -9;
    TcxGridDBTableSummaryItem(sum).OnGetText := OnGetText_CountVagon;

    sum := cxGrid3DBBandedTableView1.DataController.Summary.FooterSummaryItems.Add;
    TcxGridDBTableSummaryItem(sum).Column    := cxGrid3DBBandedTableView1count_weight;
    TcxGridDBTableSummaryItem(sum).Kind      := skNone;
    TcxGridDBTableSummaryItem(sum).Position  := spFooter;
    TcxGridDBTableSummaryItem(sum).Tag       := -9;
    TcxGridDBTableSummaryItem(sum).OnGetText := OnGetText_CountWeight;

    sum := cxGrid3DBBandedTableView1.DataController.Summary.FooterSummaryItems.Add;
    TcxGridDBTableSummaryItem(sum).Column    := cxGrid3DBBandedTableView1fact_rate;
    TcxGridDBTableSummaryItem(sum).Kind      := skNone;
    TcxGridDBTableSummaryItem(sum).Position  := spFooter;
    TcxGridDBTableSummaryItem(sum).Tag       := -9;
    TcxGridDBTableSummaryItem(sum).OnGetText := OnGetText_FactRate;

    ClientDS := TClientDataSet.Create(nil);
    ClientDS.Data := ClientDS_SumRate.Data;

    ClientDS.Filter   := 'rate_id=' + IntToStr(Frate_id);
    ClientDS.Filtered := True;
    ClientDS.First;
    while not ClientDS.Eof do begin
      sum := cxGrid3DBBandedTableView1.DataController.Summary.FooterSummaryItems.Add;
      TcxGridDBTableSummaryItem(sum).Column    := cxGrid3DBBandedTableView1fact_sum;
      TcxGridDBTableSummaryItem(sum).Kind      := skNone;
      TcxGridDBTableSummaryItem(sum).Position  := spFooter;
      TcxGridDBTableSummaryItem(sum).Tag       := ClientDS.FieldByName('rw_id').AsInteger;
      TcxGridDBTableSummaryItem(sum).OnGetText := OnGetText_FactSum;

      sum := cxGrid3DBBandedTableView1.DataController.Summary.FooterSummaryItems.Add;
      TcxGridDBTableSummaryItem(sum).Column    := cxGrid3DBBandedTableView1fact_rate;
      TcxGridDBTableSummaryItem(sum).Kind      := skNone;
      TcxGridDBTableSummaryItem(sum).Position  := spFooter;
      TcxGridDBTableSummaryItem(sum).Tag       := ClientDS.FieldByName('rw_id').AsInteger;
      TcxGridDBTableSummaryItem(sum).OnGetText := OnGetText_FactRate;

      sum := cxGrid3DBBandedTableView1.DataController.Summary.FooterSummaryItems.Add;
      TcxGridDBTableSummaryItem(sum).Column    := cxGrid3DBBandedTableView1count_vagon;
      TcxGridDBTableSummaryItem(sum).Kind      := skNone;
      TcxGridDBTableSummaryItem(sum).Position  := spFooter;
      TcxGridDBTableSummaryItem(sum).Tag       := ClientDS.FieldByName('rw_id').AsInteger;
      TcxGridDBTableSummaryItem(sum).OnGetText := OnGetText_CountVagon;

      sum := cxGrid3DBBandedTableView1.DataController.Summary.FooterSummaryItems.Add;
      TcxGridDBTableSummaryItem(sum).Column    := cxGrid3DBBandedTableView1count_weight;
      TcxGridDBTableSummaryItem(sum).Kind      := skNone;
      TcxGridDBTableSummaryItem(sum).Position  := spFooter;
      TcxGridDBTableSummaryItem(sum).Tag       := ClientDS.FieldByName('rw_id').AsInteger;
      TcxGridDBTableSummaryItem(sum).OnGetText := OnGetText_CountWeight;

      ClientDS.Next;
    end;

    ClientDS.Free;

  end else begin
    sum := cxGrid3DBBandedTableView1.DataController.Summary.FooterSummaryItems.Add;
    TcxGridDBTableSummaryItem(sum).Column   := cxGrid3DBBandedTableView1fact_sum;
    TcxGridDBTableSummaryItem(sum).Kind     := skSum;
    TcxGridDBTableSummaryItem(sum).Position := spFooter;
    TcxGridDBTableSummaryItem(sum).Format   := '#,##0.00';
    TcxGridDBTableSummaryItem(sum).Tag      := -9;
  end;

  cxGrid3DBBandedTableView1.DataController.Summary.Recalculate;
end;

procedure TfmBargainList2.dxBarButton36Click(Sender: TObject);
var id : integer;
begin
  if Client_Contract.Locate('service_type', 0, []) then begin
    id := Client_Contract.FieldByName('global_id').AsInteger;
//    RefreshQueryGrid(cxGrid1DBBandedTableView1, 'global_id', id);
    if cxGrid1DBBandedTableView1.DataController.LocateByKey(id) = False then cxGrid1DBBandedTableView1.Controller.GoToFirst;;
    if cxGrid1DBBandedTableView1.Controller.FocusedRecord <> nil then  cxGrid1DBBandedTableView1.Controller.FocusedRecord.Selected := True;
  end;
end;

procedure TfmBargainList2.dxBarButton38Click(Sender: TObject);
type
  TFunc = function(date: TDateTime; var ClientDS: TClientDataSet; set_show_message: boolean): variant;
var
  FFunc    : TFunc;
  handle   : THandle;
  v        : Variant;
  ClientDS : TClientDataSet;
  Q        : TADOQuery;
  rate_id  : integer;
  i        : integer;
  str_koeff_value : string;
  koeff_value     : Double;
  rate_value      : Double;
  str_fact_id     : string;
  num_document    : string;

begin
  if InputQuery('Коэффициент', 'Коэффициент', str_koeff_value) then begin

    rate_id := cxGrid1DBBandedTableView1global_id.DataBinding.Field.AsInteger;

    UpdateClientRate;
    str_koeff_value := ReplaceStr(str_koeff_value, '.', FormatSettings.DecimalSeparator);
    str_koeff_value := ReplaceStr(str_koeff_value, ',', FormatSettings.DecimalSeparator);
    if not TryStrToFloat(str_koeff_value, koeff_value) then begin
      Application.MessageBox(PChar(str_koeff_value + ' не является числом.'), 'Ошибка', MB_ICONSTOP or MB_OK);
      Exit;
    end;

    ClientDS := TClientDataSet.Create(nil);
    ClientDS.FieldDefs.Add('fact_id'       , ftInteger);
    ClientDS.FieldDefs.Add('num_vagon'     , ftString, 20);
    ClientDS.FieldDefs.Add('vagon_count'   , ftInteger);
    ClientDS.FieldDefs.Add('rod_vagon_cod' , ftString, 20);
    ClientDS.FieldDefs.Add('node_begin_cod', ftString, 20);
    ClientDS.FieldDefs.Add('node_end_cod'  , ftString, 20);
    ClientDS.FieldDefs.Add('kargoETSNG_cod', ftString, 20);
    ClientDS.FieldDefs.Add('date_from_to'  , ftDate);
    ClientDS.FieldDefs.Add('transport_pay' , ftCurrency);
    ClientDS.FieldDefs.Add('fact_weight'   , ftFloat);
    ClientDS.FieldDefs.Add('rate_val'      , ftCurrency);
    ClientDS.FieldDefs.Add('set_route'     , ftBoolean);
    ClientDS.CreateDataSet;
    ClientDS.LogChanges := False;

    Q := TADOQuery.Create(nil);
    Q.Connection := Fconnect;


    for i:=0 to cxGrid3DBBandedTableView1.Controller.SelectedRecordCount - 1 do begin
      if cxGrid3DBBandedTableView1.Controller.SelectedRows[i].Values[cxGrid3DBBandedTableView1num_document_pref.Index] <> null then
        num_document := VarToStr(cxGrid3DBBandedTableView1.Controller.SelectedRows[i].Values[cxGrid3DBBandedTableView1num_document_pref.Index]) + VarToStr(cxGrid3DBBandedTableView1.Controller.SelectedRows[i].Values[cxGrid3DBBandedTableView1num_document.Index])
      else
        num_document := VarToStr(cxGrid3DBBandedTableView1.Controller.SelectedRows[i].Values[cxGrid3DBBandedTableView1num_document.Index]);

      Q.SQL.Clear;
      Q.SQL.Add('SELECT	count(distinct num_vagon) vagon_count, cast(max(case when isnull(inf_obj.inf_obj_cod,''0'') = ''5'' then 1 else 0 end) as bit) set_route');
      Q.SQL.Add('FROM	fact inner join users on fact.users_id =  users.users_id');
      Q.SQL.Add('left join inf_obj on fact.kateg_send = inf_obj.inf_obj_id');
      Q.SQL.Add('WHERE	users_group_id = (SELECT users_group_id FROM users WHERE users_name = system_user)');
      Q.SQL.Add('and (isnull(num_document_pref,'''') +num_document) = ''' + num_document + '''');
      Q.Open;

      ClientDS.Append;
      ClientDS.FieldByName('fact_id'        ).Value := cxGrid3DBBandedTableView1.Controller.SelectedRows[i].Values[cxGrid3DBBandedTableView1fact_id.Index];
      ClientDS.FieldByName('num_vagon'      ).Value := cxGrid3DBBandedTableView1.Controller.SelectedRows[i].Values[cxGrid3DBBandedTableView1num_vagon.Index];
      ClientDS.FieldByName('rod_vagon_cod'  ).Value := cxGrid3DBBandedTableView1.Controller.SelectedRows[i].Values[cxGrid3DBBandedTableView1rod_vagon_cod.Index];
      ClientDS.FieldByName('node_begin_cod' ).Value := cxGrid3DBBandedTableView1.Controller.SelectedRows[i].Values[cxGrid3DBBandedTableView1node_begin_cod.Index];
      ClientDS.FieldByName('node_end_cod'   ).Value := cxGrid3DBBandedTableView1.Controller.SelectedRows[i].Values[cxGrid3DBBandedTableView1node_end_cod.Index];
      ClientDS.FieldByName('kargoETSNG_cod' ).Value := cxGrid3DBBandedTableView1.Controller.SelectedRows[i].Values[cxGrid3DBBandedTableView1kargoETSNG_cod.Index];
      ClientDS.FieldByName('date_from_to'   ).Value := cxGrid3DBBandedTableView1.Controller.SelectedRows[i].Values[cxGrid3DBBandedTableView1date_from_to.Index];
      ClientDS.FieldByName('transport_pay'  ).Value := cxGrid3DBBandedTableView1.Controller.SelectedRows[i].Values[cxGrid3DBBandedTableView1transport_pay.Index];
      ClientDS.FieldByName('fact_weight'    ).Value := cxGrid3DBBandedTableView1.Controller.SelectedRows[i].Values[cxGrid3DBBandedTableView1fact_weight.Index];
      ClientDS.FieldByName('vagon_count'    ).Value := Q.FieldByName('vagon_count').AsInteger;
      ClientDS.FieldByName('set_route'      ).Value := Q.FieldByName('set_route').AsBoolean;
      ClientDS.Post;

      ShowTextMessage('Подготовка вагонов. ' + IntToStr(i) + ' из ' + IntToStr(cxGrid3DBBandedTableView1.Controller.SelectedRecordCount) + ' вагонов...', False);
    end;

    handle := LoadLibrary('ctm_tarif.dll');
    @FFunc := GetProcAddress(handle, 'GetCalcTariffCalculate2');
    v := FFunc(Date, ClientDS, True);
    FreeLibrary(handle);

    ClientDS_Fact.DisableControls;
    ClientDS_ListRate.DisableControls;
    FClientDS_FactDetail.DisableControls;

    str_fact_id := '';
    ClientDS.First;
    while not ClientDS.Eof do begin
      case TdxBarButton(Sender).Tag of
        0 : rate_value := RoundCurr((ClientDS.FieldByName('rate_val').AsCurrency * koeff_value - ClientDS.FieldByName('transport_pay').AsCurrency)*1.2, -2);
        1 : rate_value := RoundCurr((ClientDS.FieldByName('rate_val').AsCurrency * koeff_value - RoundCurr(ClientDS.FieldByName('transport_pay').AsCurrency - ClientDS.FieldByName('transport_pay').AsCurrency*20/120, -2))*1.2, -2);
      end;
      ChangeRate( ClientDS.FieldByName('fact_id').AsInteger,
                  rate_id,
                  rate_value);
      ClientDS.Next;

      str_fact_id      := str_fact_id + ',' + IntToStr(ClientDS.FieldByName('fact_id').AsInteger);
      ShowTextMessage('Расчет ставки. ' + IntToStr(ClientDS.RecNo) + ' из ' + IntToStr(ClientDS.RecordCount) + ' вагонов...', False);
    end;
    Delete(str_fact_id, 1, 1);

    ClientDS_Fact.EnableControls;
    ClientDS_ListRate.EnableControls;
    FClientDS_FactDetail.EnableControls;


    Q.Free;
    ClientDS.Free;

    CalcFrahtSum(1, str_fact_id);
    UpdateSum;
    UpdateSumResult;
  end;
end;

procedure TfmBargainList2.dxBarButton3Click(Sender: TObject);
begin
	cxGrid1DBBandedTableView1.OptionsView.GroupByBox := not cxGrid1DBBandedTableView1.OptionsView.GroupByBox;
end;

procedure TfmBargainList2.FunctionRate53(Sender: TObject);
begin
  if Application.MessageBox(PChar('Все старые ставки будут удалены!' + Chr(13) + 'Обновить ставки?'), 'Внимание', MB_OKCANCEL + MB_ICONWARNING) = ID_OK then begin
    if Client_Contract.Locate('global_id', (Sender as TdxBarButton).Tag, []) then begin
      ClearListRate(TdxBarButton(Sender).Tag, -9, -9);
      GetRateFromPlan(TdxBarButton(Sender).Tag);
    end;
  end;
end;


procedure TfmBargainList2.dxBarButton40Click(Sender: TObject);
begin
  if Application.MessageBox(PChar('Все старые ставки будут удалены!' + Chr(13) + 'Обновить ставки?'), 'Внимание', MB_OKCANCEL + MB_ICONWARNING) = ID_OK then begin
    if Client_Contract.Locate('global_id', cxGrid1DBBandedTableView1global_id.DataBinding.Field.AsInteger, []) then begin
      ClearListRate(cxGrid1DBBandedTableView1global_id.DataBinding.Field.AsInteger, -9, -9);
      GetRateFromPlan(cxGrid1DBBandedTableView1global_id.DataBinding.Field.AsInteger);
    end;
  end;
end;

procedure TfmBargainList2.dxBarButton41Click(Sender: TObject);
begin
  if Application.MessageBox(PChar('Все старые ставки будут удалены!' + Chr(13) + 'Обновить ставки?'), 'Внимание', MB_OKCANCEL + MB_ICONWARNING) = ID_OK then begin
    if Client_Contract.Locate('global_id', cxGrid1DBBandedTableView1global_id.DataBinding.Field.AsInteger, []) then begin
      ClearListRate(cxGrid1DBBandedTableView1global_id.DataBinding.Field.AsInteger, -9, -9);
      GetRateFromFact(cxGrid1DBBandedTableView1global_id.DataBinding.Field.AsInteger);
    end;
  end;
end;

procedure TfmBargainList2.dxBarButton42Click(Sender: TObject);
begin
  if dxBarButton42.Down then begin
    Panel4.Visible := True;
    Splitter3.Visible := True;
  end else begin
    Panel4.Visible := False;
    Splitter3.Visible := False;
  end;
end;

procedure TfmBargainList2.dxBarButton43Click(Sender: TObject);
var
  Client_Node_TypeSPS        : TClientDataSet;
  Q                          : TADOQuery;
  node_begin_id, node_end_id : Currency;
  type_sps_id                : integer;
  pos1, pos_fact_id1         : integer;
  pos2, pos_fact_id2         : integer;
  num_rec                    : integer;
begin
  Client_Node_TypeSPS := TClientDataSet.Create(nil);
  Client_Node_TypeSPS.FieldDefs.Add('node_begin_id', ftInteger);
  Client_Node_TypeSPS.FieldDefs.Add('node_end_id'  , ftInteger);
  Client_Node_TypeSPS.FieldDefs.Add('type_sps_id'  , ftInteger);
  Client_Node_TypeSPS.FieldDefs.Add('type_kontener', ftInteger);
  Client_Node_TypeSPS.FieldDefs.Add('attr_self'    , ftInteger);
  Client_Node_TypeSPS.FieldDefs.Add('type_kontener_name', ftString, 200);
  Client_Node_TypeSPS.FieldDefs.Add('attr_self_name'    , ftString, 200);
  Client_Node_TypeSPS.CreateDataSet;
  Client_Node_TypeSPS.LogChanges := False;

  Q := TADOQuery.Create(nil);
  Q.Connection := Fconnect;
  Q.SQL.Add('SELECT * FROM');
  Q.SQL.Add('(SELECT inf_obj_id as type_kontener, inf_obj_name as type_kontener_name FROM inf_obj WHERE (type_inf_id = 220)   AND dbo.GetInfObjVisible(str_group_visible) = 1) U1');
  Q.SQL.Add('CROSS JOIN');
  Q.SQL.Add('(SELECT attr_self, attr_self_name FROM view_attr_self) U2');
  Q.Open;

  pos1 := cxGrid3DBBandedTableView1.Controller.TopRowIndex;
  pos_fact_id1 := cxGrid3DBBandedTableView1fact_id.DataBinding.Field.Value;
  pos2 := cxGridDBBandedTableView1.Controller.TopRowIndex;
  pos_fact_id2 := cxGridDBBandedTableView1fact_id.DataBinding.Field.Value;
  ClientDS_Fact.DisableControls;
  FClientDS_FactDetail.DisableControls;

  Q.First;
  for num_rec := 0 to cxGrid3DBBandedTableView1.Controller.SelectedRecordCount - 1 do
    if ClientDS_Fact.Locate('fact_id', cxGrid3DBBandedTableView1.Controller.SelectedRows[num_rec].Values[cxGrid3DBBandedTableView1fact_id.Index], []) then begin

      node_begin_id := ClientDS_Fact.FieldByName('node_begin_id').AsInteger;
      node_end_id := ClientDS_Fact.FieldByName('node_end_id').AsInteger;
      type_sps_id := ClientDS_Fact.FieldByName('type_sps_id').AsInteger;

      if not Client_Node_TypeSPS.Locate('node_begin_id;node_end_id;type_sps_id', VarArrayOf([node_begin_id,node_end_id,type_sps_id]), []) then begin
        Client_Node_TypeSPS.Append;
        Client_Node_TypeSPS.FieldByName('node_begin_id'     ).Value := node_begin_id;
        Client_Node_TypeSPS.FieldByName('node_end_id'       ).Value := node_end_id;
        Client_Node_TypeSPS.FieldByName('type_sps_id'       ).Value := type_sps_id;
        Client_Node_TypeSPS.FieldByName('type_kontener'     ).Value := Q.FieldByName('type_kontener'     ).Value;
        Client_Node_TypeSPS.FieldByName('attr_self'         ).Value := Q.FieldByName('attr_self'         ).Value;
        Client_Node_TypeSPS.FieldByName('type_kontener_name').Value := Q.FieldByName('type_kontener_name').Value;
        Client_Node_TypeSPS.FieldByName('attr_self_name'    ).Value := Q.FieldByName('attr_self_name'    ).Value;
        Client_Node_TypeSPS.Post;
        Q.Next;
      end;

      ClientDS_Fact.Edit;
      ClientDS_Fact.FieldByName('type_kontener'             ).Value := Client_Node_TypeSPS.FieldByName('type_kontener'     ).Value;
      ClientDS_Fact.FieldByName('attr_self'                 ).Value := Client_Node_TypeSPS.FieldByName('attr_self'         ).Value;
      ClientDS_Fact.FieldByName('type_kontener_name'        ).Value := Client_Node_TypeSPS.FieldByName('type_kontener_name').Value;
      ClientDS_Fact.FieldByName('attr_self_name'            ).Value := Client_Node_TypeSPS.FieldByName('attr_self_name'    ).Value;
      ClientDS_Fact.FieldByName('display_type_kontener_name').Value := Client_Node_TypeSPS.FieldByName('type_kontener_name').Value;
      ClientDS_Fact.FieldByName('display_attr_self_name'    ).Value := Client_Node_TypeSPS.FieldByName('attr_self_name'    ).Value;
      ClientDS_Fact.Post;

      if FClientDS_FactDetail.FindKey([ClientDS_Fact.FieldByName('fact_id').AsInteger]) then begin
        FClientDS_FactDetail.Edit;
        FClientDS_FactDetail.FieldByName('type_kontener'     ).Value := Client_Node_TypeSPS.FieldByName('type_kontener'     ).Value;
        FClientDS_FactDetail.FieldByName('attr_self'         ).Value := Client_Node_TypeSPS.FieldByName('attr_self'         ).Value;
        FClientDS_FactDetail.FieldByName('type_kontener_name').Value := Client_Node_TypeSPS.FieldByName('type_kontener_name').Value;
        FClientDS_FactDetail.FieldByName('attr_self_name'    ).Value := Client_Node_TypeSPS.FieldByName('attr_self_name'    ).Value;
        FClientDS_FactDetail.Post;
      end;
    end;

  CalcFrahtSum(1, '');
  UpdateSum;
  UpdateSumResult;
  FClientDS_FactDetail.EnableControls;
  FClientDS_FactDetail.FindKey([pos_fact_id2]);
  cxGridDBBandedTableView1.Controller.TopRowIndex := pos2;

  ClientDS_Fact.EnableControls;
  ClientDS_Fact.FindKey([pos_fact_id1]);
  cxGrid3DBBandedTableView1.Controller.TopRowIndex := pos1;

  Q.Free;
  Client_Node_TypeSPS.Free;
end;

procedure TfmBargainList2.dxBarButton44Click(Sender: TObject);
var     ClientDS : TClientDataSet;
               i : integer;
  node_begin_cod : string;
    node_end_cod : string;
begin
  ClientDS := TClientDataSet.Create(nil);
  ClientDS.FieldDefs.Add('node_begin_cod',  ftString, 50); // станция отправления
  ClientDS.FieldDefs.Add('node_end_cod',    ftString, 50); // станция назначения
  ClientDS.FieldDefs.Add('node_add_cod',    ftString, 50); // станция дислокации (необязательно)
  ClientDS.FieldDefs.Add('land_id',         ftInteger  ); // Расчет расстояния по стране (-9: полное расстояние по всем странам)

  ClientDS.FieldDefs.Add('Distance',        ftInteger  ); // Расстояние (возвращаемый параметр)
  ClientDS.IndexFieldNames := 'node_begin_cod;node_end_cod';

  ClientDS.CreateDataSet;
  ClientDS.LogChanges := False;

  for i:=0 to cxGrid3DBBandedTableView1.Controller.SelectedRecordCount - 1 do begin
    node_begin_cod := VarToStr(cxGrid3DBBandedTableView1.Controller.SelectedRows[i].Values[cxGrid3DBBandedTableView1node_begin_cod.Index]);
    node_end_cod   := VarToStr(cxGrid3DBBandedTableView1.Controller.SelectedRows[i].Values[cxGrid3DBBandedTableView1node_end_cod.Index]);

    if (node_begin_cod <> '') and (node_end_cod <> '') then begin
      if not ClientDS.Locate('node_begin_cod;node_end_cod', VarArrayOf([node_begin_cod, node_end_cod]), []) then begin
        ClientDS.Append;
        ClientDS.FieldByName('node_begin_cod').AsString := node_begin_cod;
        ClientDS.FieldByName('node_end_cod'  ).AsString := node_end_cod;
        ClientDS.FieldByName('land_id'       ).AsInteger := -9;
        ClientDS.Post;
      end;
    end;
  end;

  ShowTextMessage('Расчет растояния...', False);
  GetCalcDistanceGroup(ClientDS);

  ClientDS_Fact.DisableControls;
  for i:=0 to cxGrid3DBBandedTableView1.Controller.SelectedRecordCount - 1 do begin

  if ClientDS_Fact.FindKey([cxGrid3DBBandedTableView1.Controller.SelectedRows[i].Values[cxGrid3DBBandedTableView1fact_id.Index]]) then begin
    if ClientDS.Locate('node_begin_cod;node_end_cod', VarArrayOf([ClientDS_Fact.FieldByName('node_begin_cod').AsString, ClientDS_Fact.FieldByName('node_end_cod').AsString]), []) then begin
      ClientDS_Fact.Edit;
      ClientDS_Fact.FieldByName('distance').Value := ClientDS.FieldByName('distance').Value;
      ClientDS_Fact.Post;
    end;
  end;

  end;
  ClientDS_Fact.EnableControls;

  ClientDS.Free;

  ShowTextMessage;
end;

procedure TfmBargainList2.dxBarButton45Click(Sender: TObject);
type
  TFunc = function(AppHand:THandle) : Variant;
var                List : TStringList;
                      i : integer;
cxGridDBBandedTableView : TcxGridDBBandedTableView;
                 FDic   : TFunc;
                 handle : THandle;
                 v      : Variant;
                 str    : string;
             field_name : string;
begin
  cxGridDBBandedTableView := cxGrid3DBBandedTableView1;

  handle := LoadLibrary('dictionary.dll');
  @FDic := GetProcAddress(handle, 'CreateWndChoose');
  v := FDic(Application.Handle);
  str := v[0];
  List := TStringList.Create;
  List.Text := str;
  FreeLibrary(handle);

  field_name := '';

  if Sender is TdxBarButton then
    case TdxBarButton(Sender).Tag of
      0 : begin
            field_name := 'num_vagon';
          end;
      1 : begin
            field_name := 'num_document';
            // Берем только номер накладной, последние 6 знаков.
            for i := 0 to List.Count - 1 do
              List.Strings[i] := Trim(Copy(List.Strings[i], Length(List.Strings[i]) - 5, 6));
          end;
    end;

  cxGridDBBandedTableView.DataController.DataSet.DisableControls;

  with cxGridDBBandedTableView.DataController.Filter do begin
    Clear;
    Options := Options + [fcoCaseInsensitive];
    Root.BoolOperatorKind := fboOr;
    BeginUpdate;
    for i := 0 to List.Count - 1 do if (Trim(List.Strings[i])<>'') then
      Root.AddItem(cxGridDBBandedTableView.GetColumnByFieldName(field_name), foEqual, Trim(List.Strings[i]),Trim(List.Strings[i]) );
    EndUpdate;
    Active := True;
  end;
  cxGridDBBandedTableView.DataController.DataSet.EnableControls;
  List.Free;
  Screen.Cursor := crDefault;
end;

procedure TfmBargainList2.dxBarButton47Click(Sender: TObject);
var
  Client_Node_TypeSPS        : TClientDataSet;
  Q                          : TADOQuery;
  node_begin_id, node_end_id : Currency;
  vagon_owner_contract_id    : integer;
  pos1, pos_fact_id1         : integer;
  pos2, pos_fact_id2         : integer;
  num_rec                    : integer;
begin
  Client_Node_TypeSPS := TClientDataSet.Create(nil);
  Client_Node_TypeSPS.FieldDefs.Add('node_begin_id', ftInteger);
  Client_Node_TypeSPS.FieldDefs.Add('node_end_id'  , ftInteger);
  Client_Node_TypeSPS.FieldDefs.Add('vagon_owner_contract_id', ftInteger);
  Client_Node_TypeSPS.FieldDefs.Add('type_kontener', ftInteger);
  Client_Node_TypeSPS.FieldDefs.Add('attr_self'    , ftInteger);
  Client_Node_TypeSPS.FieldDefs.Add('type_kontener_name', ftString, 200);
  Client_Node_TypeSPS.FieldDefs.Add('attr_self_name'    , ftString, 200);
  Client_Node_TypeSPS.CreateDataSet;
  Client_Node_TypeSPS.LogChanges := False;

  Q := TADOQuery.Create(nil);
  Q.Connection := Fconnect;
  Q.SQL.Add('SELECT * FROM');
  Q.SQL.Add('(SELECT inf_obj_id as type_kontener, inf_obj_name as type_kontener_name FROM inf_obj WHERE (type_inf_id = 220)  AND dbo.GetInfObjVisible(str_group_visible) = 1) U1');
  Q.SQL.Add('CROSS JOIN');
  Q.SQL.Add('(SELECT attr_self, attr_self_name FROM view_attr_self) U2');
  Q.Open;


  pos1 := cxGrid3DBBandedTableView1.Controller.TopRowIndex;
  pos_fact_id1 := cxGrid3DBBandedTableView1fact_id.DataBinding.Field.Value;
  pos2 := cxGridDBBandedTableView1.Controller.TopRowIndex;
  pos_fact_id2 := cxGridDBBandedTableView1fact_id.DataBinding.Field.Value;
  ClientDS_Fact.DisableControls;
  FClientDS_FactDetail.DisableControls;

  Q.First;
  for num_rec := 0 to cxGrid3DBBandedTableView1.Controller.SelectedRecordCount - 1 do
    if ClientDS_Fact.Locate('fact_id', cxGrid3DBBandedTableView1.Controller.SelectedRows[num_rec].Values[cxGrid3DBBandedTableView1fact_id.Index], []) then begin

      node_begin_id := ClientDS_Fact.FieldByName('node_begin_id').AsInteger;
      node_end_id := ClientDS_Fact.FieldByName('node_end_id').AsInteger;
      vagon_owner_contract_id := ClientDS_Fact.FieldByName('vagon_owner_contract_id').AsInteger;

      if not Client_Node_TypeSPS.Locate('node_begin_id;node_end_id;vagon_owner_contract_id', VarArrayOf([node_begin_id,node_end_id,vagon_owner_contract_id]), []) then begin
        Client_Node_TypeSPS.Append;
        Client_Node_TypeSPS.FieldByName('node_begin_id'     ).Value := node_begin_id;
        Client_Node_TypeSPS.FieldByName('node_end_id'       ).Value := node_end_id;
        Client_Node_TypeSPS.FieldByName('vagon_owner_contract_id' ).Value := vagon_owner_contract_id;
        Client_Node_TypeSPS.FieldByName('type_kontener'     ).Value := Q.FieldByName('type_kontener'     ).Value;
        Client_Node_TypeSPS.FieldByName('attr_self'         ).Value := Q.FieldByName('attr_self'         ).Value;
        Client_Node_TypeSPS.FieldByName('type_kontener_name').Value := Q.FieldByName('type_kontener_name').Value;
        Client_Node_TypeSPS.FieldByName('attr_self_name'    ).Value := Q.FieldByName('attr_self_name'    ).Value;
        Client_Node_TypeSPS.Post;
        Q.Next;
      end;

      ClientDS_Fact.Edit;
      ClientDS_Fact.FieldByName('type_kontener'             ).Value := Client_Node_TypeSPS.FieldByName('type_kontener'     ).Value;
      ClientDS_Fact.FieldByName('attr_self'                 ).Value := Client_Node_TypeSPS.FieldByName('attr_self'         ).Value;
      ClientDS_Fact.FieldByName('type_kontener_name'        ).Value := Client_Node_TypeSPS.FieldByName('type_kontener_name').Value;
      ClientDS_Fact.FieldByName('attr_self_name'            ).Value := Client_Node_TypeSPS.FieldByName('attr_self_name'    ).Value;
      ClientDS_Fact.FieldByName('display_type_kontener_name').Value := Client_Node_TypeSPS.FieldByName('type_kontener_name').Value;
      ClientDS_Fact.FieldByName('display_attr_self_name'    ).Value := Client_Node_TypeSPS.FieldByName('attr_self_name'    ).Value;
      ClientDS_Fact.Post;

      if FClientDS_FactDetail.FindKey([ClientDS_Fact.FieldByName('fact_id').AsInteger]) then begin
        FClientDS_FactDetail.Edit;
        FClientDS_FactDetail.FieldByName('type_kontener'     ).Value := Client_Node_TypeSPS.FieldByName('type_kontener'     ).Value;
        FClientDS_FactDetail.FieldByName('attr_self'         ).Value := Client_Node_TypeSPS.FieldByName('attr_self'         ).Value;
        FClientDS_FactDetail.FieldByName('type_kontener_name').Value := Client_Node_TypeSPS.FieldByName('type_kontener_name').Value;
        FClientDS_FactDetail.FieldByName('attr_self_name'    ).Value := Client_Node_TypeSPS.FieldByName('attr_self_name'    ).Value;
        FClientDS_FactDetail.Post;
      end;
    end;

  CalcFrahtSum(1, '');
  UpdateSum;
  UpdateSumResult;
  FClientDS_FactDetail.EnableControls;
  FClientDS_FactDetail.FindKey([pos_fact_id2]);
  cxGridDBBandedTableView1.Controller.TopRowIndex := pos2;

  ClientDS_Fact.EnableControls;
  ClientDS_Fact.FindKey([pos_fact_id1]);
  cxGrid3DBBandedTableView1.Controller.TopRowIndex := pos1;

  Q.Free;
  Client_Node_TypeSPS.Free;
end;

procedure TfmBargainList2.dxBarButton48Click(Sender: TObject);
var
  Client_TypeSPS             : TClientDataSet;
  Q                          : TADOQuery;
  vagon_owner_contract_id                : integer;
  pos1, pos_fact_id1         : integer;
  pos2, pos_fact_id2         : integer;
  num_rec                    : integer;
begin
  Client_TypeSPS := TClientDataSet.Create(nil);
  Client_TypeSPS.FieldDefs.Add('node_begin_id', ftInteger);
  Client_TypeSPS.FieldDefs.Add('node_end_id'  , ftInteger);
  Client_TypeSPS.FieldDefs.Add('vagon_owner_contract_id'  , ftInteger);
  Client_TypeSPS.FieldDefs.Add('type_kontener', ftInteger);
  Client_TypeSPS.FieldDefs.Add('attr_self'    , ftInteger);
  Client_TypeSPS.FieldDefs.Add('type_kontener_name', ftString, 200);
  Client_TypeSPS.FieldDefs.Add('attr_self_name'    , ftString, 200);
  Client_TypeSPS.CreateDataSet;
  Client_TypeSPS.LogChanges := False;

  Q := TADOQuery.Create(nil);
  Q.Connection := Fconnect;
  Q.SQL.Add('SELECT * FROM');
  Q.SQL.Add('(SELECT inf_obj_id as type_kontener, inf_obj_name as type_kontener_name FROM inf_obj WHERE (type_inf_id = 220)  AND dbo.GetInfObjVisible(str_group_visible) = 1) U1');
  Q.SQL.Add('CROSS JOIN');
  Q.SQL.Add('(SELECT attr_self, attr_self_name FROM view_attr_self) U2');
  Q.Open;


  pos1 := cxGrid3DBBandedTableView1.Controller.TopRowIndex;
  pos_fact_id1 := cxGrid3DBBandedTableView1fact_id.DataBinding.Field.Value;
  pos2 := cxGridDBBandedTableView1.Controller.TopRowIndex;
  pos_fact_id2 := cxGridDBBandedTableView1fact_id.DataBinding.Field.Value;
  ClientDS_Fact.DisableControls;
  FClientDS_FactDetail.DisableControls;

  Q.First;
  for num_rec := 0 to cxGrid3DBBandedTableView1.Controller.SelectedRecordCount - 1 do
    if ClientDS_Fact.Locate('fact_id', cxGrid3DBBandedTableView1.Controller.SelectedRows[num_rec].Values[cxGrid3DBBandedTableView1fact_id.Index], []) then begin

      vagon_owner_contract_id := ClientDS_Fact.FieldByName('vagon_owner_contract_id').AsInteger;

      if not Client_TypeSPS.Locate('vagon_owner_contract_id', VarArrayOf([vagon_owner_contract_id]), []) then begin
        Client_TypeSPS.Append;
        Client_TypeSPS.FieldByName('vagon_owner_contract_id'       ).Value := vagon_owner_contract_id;
        Client_TypeSPS.FieldByName('type_kontener'     ).Value := Q.FieldByName('type_kontener'     ).Value;
        Client_TypeSPS.FieldByName('attr_self'         ).Value := Q.FieldByName('attr_self'         ).Value;
        Client_TypeSPS.FieldByName('type_kontener_name').Value := Q.FieldByName('type_kontener_name').Value;
        Client_TypeSPS.FieldByName('attr_self_name'    ).Value := Q.FieldByName('attr_self_name'    ).Value;
        Client_TypeSPS.Post;
        Q.Next;
      end;

      ClientDS_Fact.Edit;
      ClientDS_Fact.FieldByName('type_kontener'             ).Value := Client_TypeSPS.FieldByName('type_kontener'     ).Value;
      ClientDS_Fact.FieldByName('attr_self'                 ).Value := Client_TypeSPS.FieldByName('attr_self'         ).Value;
      ClientDS_Fact.FieldByName('type_kontener_name'        ).Value := Client_TypeSPS.FieldByName('type_kontener_name').Value;
      ClientDS_Fact.FieldByName('attr_self_name'            ).Value := Client_TypeSPS.FieldByName('attr_self_name'    ).Value;
      ClientDS_Fact.FieldByName('display_type_kontener_name').Value := Client_TypeSPS.FieldByName('type_kontener_name').Value;
      ClientDS_Fact.FieldByName('display_attr_self_name'    ).Value := Client_TypeSPS.FieldByName('attr_self_name'    ).Value;
      ClientDS_Fact.Post;

      if FClientDS_FactDetail.FindKey([ClientDS_Fact.FieldByName('fact_id').AsInteger]) then begin
        FClientDS_FactDetail.Edit;
        FClientDS_FactDetail.FieldByName('type_kontener'     ).Value := Client_TypeSPS.FieldByName('type_kontener'     ).Value;
        FClientDS_FactDetail.FieldByName('attr_self'         ).Value := Client_TypeSPS.FieldByName('attr_self'         ).Value;
        FClientDS_FactDetail.FieldByName('type_kontener_name').Value := Client_TypeSPS.FieldByName('type_kontener_name').Value;
        FClientDS_FactDetail.FieldByName('attr_self_name'    ).Value := Client_TypeSPS.FieldByName('attr_self_name'    ).Value;
        FClientDS_FactDetail.Post;
      end;
    end;

  CalcFrahtSum(1, '');
  UpdateSum;
  UpdateSumResult;
  FClientDS_FactDetail.EnableControls;
  FClientDS_FactDetail.FindKey([pos_fact_id2]);
  cxGridDBBandedTableView1.Controller.TopRowIndex := pos2;

  ClientDS_Fact.EnableControls;
  ClientDS_Fact.FindKey([pos_fact_id1]);
  cxGrid3DBBandedTableView1.Controller.TopRowIndex := pos1;

  Q.Free;
  Client_TypeSPS.Free;
end;

procedure TfmBargainList2.dxBarButton49Click(Sender: TObject);
var     ClientDS : TClientDataSet;
     ClientDS_PP : TClientDataSet;
               i : integer;

        distance : integer;
  node_begin_cod : string;
    node_end_cod : string;
begin
  ClientDS := TClientDataSet.Create(nil);
  ClientDS.FieldDefs.Add('node_begin_cod',  ftString, 50); // станция отправления
  ClientDS.FieldDefs.Add('node_end_cod',    ftString, 50); // станция назначения
  ClientDS.FieldDefs.Add('distance',        ftInteger   ); // Расстояние
  ClientDS.FieldDefs.Add('node_pp_in_cod',  ftString, 50); // вх.станция пп (код)
  ClientDS.FieldDefs.Add('node_pp_in_name', ftString, 50); // вх.станция пп (наименование)
  ClientDS.FieldDefs.Add('node_pp_out_cod', ftString, 50); // вых.станция пп (код)
  ClientDS.FieldDefs.Add('node_pp_out_name',ftString, 50); // вых.станция пп (наименование)
  ClientDS.IndexFieldNames := 'node_begin_cod;node_end_cod';
  ClientDS.CreateDataSet;
  ClientDS.LogChanges := False;

  ClientDS_PP := TClientDataSet.Create(nil);
  ClientDS_PP.FieldDefs.Add('node_cod',   ftString, 50);
  ClientDS_PP.FieldDefs.Add('node_name',  ftString, 50);
  ClientDS_PP.FieldDefs.Add('distance',   ftInteger);
  ClientDS_PP.FieldDefs.Add('set_in_out', ftBoolean); // True - входящая, False - выходящая
  ClientDS_PP.CreateDataSet;
  ClientDS_PP.LogChanges := False;

  ShowTextMessage('Поиск погран переходов...', False);

  for i:=0 to cxGrid3DBBandedTableView1.Controller.SelectedRecordCount - 1 do begin
    node_begin_cod := VarToStr(cxGrid3DBBandedTableView1.Controller.SelectedRows[i].Values[cxGrid3DBBandedTableView1node_begin_cod.Index]);
    node_end_cod   := VarToStr(cxGrid3DBBandedTableView1.Controller.SelectedRows[i].Values[cxGrid3DBBandedTableView1node_end_cod.Index]);

    if (node_begin_cod <> '') and (node_end_cod <> '') then begin
      if not ClientDS.Locate('node_begin_cod;node_end_cod', VarArrayOf([node_begin_cod, node_end_cod]), []) then begin
        GetPPRoute(node_begin_cod, node_end_cod, ClientDS_PP, distance);

        ClientDS.Append;
        ClientDS.FieldByName('node_begin_cod').AsString  := node_begin_cod;
        ClientDS.FieldByName('node_end_cod'  ).AsString  := node_end_cod;
        ClientDS.FieldByName('distance'      ).AsInteger := distance;

        if (not ClientDS_PP.Eof) and (ClientDS_PP.FieldByName('set_in_out').AsBoolean = True) then begin
          // Есть вх. пп
          ClientDS.FieldByName('node_pp_in_cod' ).AsString := ClientDS_PP.FieldByName('node_cod' ).AsString;
          ClientDS.FieldByName('node_pp_in_name').AsString := ClientDS_PP.FieldByName('node_name').AsString;
          // Если обработали вх. пп, то сдвинем курсор на следующий пп - возможно еть и вых. пп
          ClientDS_PP.Next;
        end;
        if (not ClientDS_PP.Eof) and (ClientDS_PP.FieldByName('set_in_out').AsBoolean = False) then begin
          // Есть вых. пп
          ClientDS.FieldByName('node_pp_out_cod' ).AsString := ClientDS_PP.FieldByName('node_cod' ).AsString;
          ClientDS.FieldByName('node_pp_out_name').AsString := ClientDS_PP.FieldByName('node_name').AsString;
        end;

        ClientDS.Post;
      end;
    end;
  end;

  ClientDS_Fact.DisableControls;
  for i:=0 to cxGrid3DBBandedTableView1.Controller.SelectedRecordCount - 1 do begin
    if ClientDS_Fact.FindKey([cxGrid3DBBandedTableView1.Controller.SelectedRows[i].Values[cxGrid3DBBandedTableView1fact_id.Index]]) then begin
      if ClientDS.Locate('node_begin_cod;node_end_cod', VarArrayOf([ClientDS_Fact.FieldByName('node_begin_cod').AsString, ClientDS_Fact.FieldByName('node_end_cod').AsString]), []) then begin
        ClientDS_Fact.Edit;
        ClientDS_Fact.FieldByName('distance'        ).Value := ClientDS.FieldByName('distance'        ).Value;
        ClientDS_Fact.FieldByName('node_pp_in_cod'  ).Value := ClientDS.FieldByName('node_pp_in_cod'  ).Value;
        ClientDS_Fact.FieldByName('node_pp_in_name' ).Value := ClientDS.FieldByName('node_pp_in_name' ).Value;
        ClientDS_Fact.FieldByName('node_pp_out_cod' ).Value := ClientDS.FieldByName('node_pp_out_cod' ).Value;
        ClientDS_Fact.FieldByName('node_pp_out_name').Value := ClientDS.FieldByName('node_pp_out_name').Value;
        ClientDS_Fact.Post;
      end;
    end;
  end;
  ClientDS_Fact.EnableControls;

  ClientDS.Free;
  ClientDS_PP.Free;

  ShowTextMessage;
end;

procedure TfmBargainList2.dxBarButton4Click(Sender: TObject);
var
  Client_TypeSPS             : TClientDataSet;
  Q                          : TADOQuery;
  type_sps_id                : integer;
  pos1, pos_fact_id1         : integer;
  pos2, pos_fact_id2         : integer;
  num_rec                    : integer;
begin
  Client_TypeSPS := TClientDataSet.Create(nil);
  Client_TypeSPS.FieldDefs.Add('node_begin_id', ftInteger);
  Client_TypeSPS.FieldDefs.Add('node_end_id'  , ftInteger);
  Client_TypeSPS.FieldDefs.Add('type_sps_id'  , ftInteger);
  Client_TypeSPS.FieldDefs.Add('type_kontener', ftInteger);
  Client_TypeSPS.FieldDefs.Add('attr_self'    , ftInteger);
  Client_TypeSPS.FieldDefs.Add('type_kontener_name', ftString, 200);
  Client_TypeSPS.FieldDefs.Add('attr_self_name'    , ftString, 200);
  Client_TypeSPS.CreateDataSet;
  Client_TypeSPS.LogChanges := False;

  Q := TADOQuery.Create(nil);
  Q.Connection := Fconnect;
  Q.SQL.Add('SELECT * FROM');
  Q.SQL.Add('(SELECT inf_obj_id as type_kontener, inf_obj_name as type_kontener_name FROM inf_obj WHERE (type_inf_id = 220)  AND dbo.GetInfObjVisible(str_group_visible) = 1) U1');
  Q.SQL.Add('CROSS JOIN');
  Q.SQL.Add('(SELECT attr_self, attr_self_name FROM view_attr_self) U2');
  Q.Open;


  pos1 := cxGrid3DBBandedTableView1.Controller.TopRowIndex;
  pos_fact_id1 := cxGrid3DBBandedTableView1fact_id.DataBinding.Field.Value;
  pos2 := cxGridDBBandedTableView1.Controller.TopRowIndex;
  pos_fact_id2 := cxGridDBBandedTableView1fact_id.DataBinding.Field.Value;
  ClientDS_Fact.DisableControls;
  FClientDS_FactDetail.DisableControls;

  Q.First;
  for num_rec := 0 to cxGrid3DBBandedTableView1.Controller.SelectedRecordCount - 1 do
    if ClientDS_Fact.Locate('fact_id', cxGrid3DBBandedTableView1.Controller.SelectedRows[num_rec].Values[cxGrid3DBBandedTableView1fact_id.Index], []) then begin

      type_sps_id := ClientDS_Fact.FieldByName('type_sps_id').AsInteger;

      if not Client_TypeSPS.Locate('type_sps_id', VarArrayOf([type_sps_id]), []) then begin
        Client_TypeSPS.Append;
        Client_TypeSPS.FieldByName('type_sps_id'       ).Value := type_sps_id;
        Client_TypeSPS.FieldByName('type_kontener'     ).Value := Q.FieldByName('type_kontener'     ).Value;
        Client_TypeSPS.FieldByName('attr_self'         ).Value := Q.FieldByName('attr_self'         ).Value;
        Client_TypeSPS.FieldByName('type_kontener_name').Value := Q.FieldByName('type_kontener_name').Value;
        Client_TypeSPS.FieldByName('attr_self_name'    ).Value := Q.FieldByName('attr_self_name'    ).Value;
        Client_TypeSPS.Post;
        Q.Next;
      end;

      ClientDS_Fact.Edit;
      ClientDS_Fact.FieldByName('type_kontener'             ).Value := Client_TypeSPS.FieldByName('type_kontener'     ).Value;
      ClientDS_Fact.FieldByName('attr_self'                 ).Value := Client_TypeSPS.FieldByName('attr_self'         ).Value;
      ClientDS_Fact.FieldByName('type_kontener_name'        ).Value := Client_TypeSPS.FieldByName('type_kontener_name').Value;
      ClientDS_Fact.FieldByName('attr_self_name'            ).Value := Client_TypeSPS.FieldByName('attr_self_name'    ).Value;
      ClientDS_Fact.FieldByName('display_type_kontener_name').Value := Client_TypeSPS.FieldByName('type_kontener_name').Value;
      ClientDS_Fact.FieldByName('display_attr_self_name'    ).Value := Client_TypeSPS.FieldByName('attr_self_name'    ).Value;
      ClientDS_Fact.Post;

      if FClientDS_FactDetail.FindKey([ClientDS_Fact.FieldByName('fact_id').AsInteger]) then begin
        FClientDS_FactDetail.Edit;
        FClientDS_FactDetail.FieldByName('type_kontener'     ).Value := Client_TypeSPS.FieldByName('type_kontener'     ).Value;
        FClientDS_FactDetail.FieldByName('attr_self'         ).Value := Client_TypeSPS.FieldByName('attr_self'         ).Value;
        FClientDS_FactDetail.FieldByName('type_kontener_name').Value := Client_TypeSPS.FieldByName('type_kontener_name').Value;
        FClientDS_FactDetail.FieldByName('attr_self_name'    ).Value := Client_TypeSPS.FieldByName('attr_self_name'    ).Value;
        FClientDS_FactDetail.Post;
      end;
    end;

  CalcFrahtSum(1, '');
  UpdateSum;
  UpdateSumResult;
  FClientDS_FactDetail.EnableControls;
  FClientDS_FactDetail.FindKey([pos_fact_id2]);
  cxGridDBBandedTableView1.Controller.TopRowIndex := pos2;

  ClientDS_Fact.EnableControls;
  ClientDS_Fact.FindKey([pos_fact_id1]);
  cxGrid3DBBandedTableView1.Controller.TopRowIndex := pos1;

  Q.Free;
  Client_TypeSPS.Free;
end;

procedure TfmBargainList2.dxBarButton50Click(Sender: TObject);
type
  TFunc = function(AppHand:THandle; id:integer; type_doc_id:integer; caption: string; usr_pwd:PUser_pwd; flag: boolean):variant;
var
  FShablon  : TFunc;
  handle    : THandle;
  v         : Variant;
  doc_cod    : integer;
begin
  handle := LoadLibrary('dictionary.dll');
  @FShablon := GetProcAddress(handle,'CreateWndDocShablon');
  v := FShablon(Application.Handle, -8, 5, 'Сетки ставок', Fusr_pwd, True);
  doc_cod := v[2];
  FreeLibrary(handle);
  dxBarSubItem104.Tag := doc_cod;
  FunctionGridRate(Sender);
end;

procedure TfmBargainList2.dxBarButton52Click(Sender: TObject);
type
  TFunc = function (AppHand: THandle; usr_pwd: PUser_pwd; var ClientDS: TClientDataSet): variant;
var
  FFunc  : TFunc;
  handle : THandle;
  v      : Variant;
         ClientDS : TClientDataSet;
                Q : TADOQuery;
   kargoETSNG_cod : string;
      str_fact_id : string;
         i, row_0 : integer;
    array_fact_id : Variant;
begin
  Client_Contract.Locate('global_id', cxGrid1DBBandedTableView1global_id.DataBinding.Field.AsInteger, []);
  if Client_Contract.FieldByName('ed_izm_cod').AsString <> '002' then begin
    Application.MessageBox('Ставка должна быть указана «за вагон»!', 'Внимание', MB_ICONWARNING or MB_OK);
    Exit;
  end;

  if cxPageControl1.ActivePage <> cxTabSheet1 then begin
    Application.MessageBox('Перейдите на вкладку "Контрагент" и выберите вагоны!', 'Внимание', MB_ICONWARNING or MB_OK);
    Exit;
  end;

  ClientDS := TClientDataSet.Create(nil);
  ClientDS.FieldDefs.Add('fact_id'       , ftInteger);
  ClientDS.FieldDefs.Add('node_begin_cod', ftString, 20);
  ClientDS.FieldDefs.Add('node_end_cod'  , ftString, 20);
  ClientDS.FieldDefs.Add('kargoETSNG_cod', ftString, 20);
  ClientDS.FieldDefs.Add('fact_weight'   , ftFloat);
  ClientDS.FieldDefs.Add('date_from_to'  , ftDate);

  ClientDS.FieldDefs.Add('error_message' , ftString, 300);
  ClientDS.FieldDefs.Add('kargoGNG_cod'  , ftString, 20);
  ClientDS.FieldDefs.Add('otpr_name'     , ftString, 300);
  ClientDS.FieldDefs.Add('send_name'     , ftString, 300);
  ClientDS.FieldDefs.Add('ExitRoute_name', ftString, 300);
  ClientDS.FieldDefs.Add('cars_name'     , ftString, 300);
  ClientDS.FieldDefs.Add('owners_name'   , ftString, 300);
  ClientDS.FieldDefs.Add('distance'      , ftInteger);
  ClientDS.FieldDefs.Add('cars_gp'       , ftFloat);
  ClientDS.FieldDefs.Add('VagOtpr'       , ftFloat);
  ClientDS.FieldDefs.Add('TotalPriceWoNDS_own', ftCurrency);
  ClientDS.FieldDefs.Add('TotalPriceWoNDS_rzd', ftCurrency);
  ClientDS.FieldDefs.Add('TotalPrice_own', ftCurrency);
  ClientDS.FieldDefs.Add('TotalPrice_rzd', ftCurrency);
  ClientDS.FieldDefs.Add('koef'          , ftFloat);

  ClientDS.CreateDataSet;
  ClientDS.LogChanges := False;

  {программно выделяем последнюю строку для дальнейшей работы}
  cxGrid3DBBandedTableView1.DataController.FocusedRecordIndex := cxGrid3DBBandedTableView1.DataController.RecordCount - 1;
  cxGrid3DBBandedTableView1.DataController.SyncSelectionFocusedRecord;

  {проводим проверку кол-ва выделенных строк и если их нет выхрлим из процедуры}
  if cxGrid3DBBandedTableView1.Controller.SelectedRowCount = 0 then
    Application.MessageBox('Отсутствуют выбранные строки в таблице "Клиент" / "Подрядчик"!', 'Внимание', MB_OK)
  else begin
    kargoETSNG_cod := VarToStr(cxGrid3DBBandedTableView1.Controller.SelectedRows[0].Values[cxGrid3DBBandedTableView1kargoETSNG_cod.Index]);

    for i := 0 to cxGrid3DBBandedTableView1.Controller.SelectedRecordCount - 1 do begin

      if (kargoETSNG_cod <> VarToStr(cxGrid3DBBandedTableView1.Controller.SelectedRows[i].Values[cxGrid3DBBandedTableView1kargoETSNG_cod.Index])) then begin
        Application.MessageBox('В выбранных вагонах груз должен быть одинаковый!', 'Внимание', MB_ICONSTOP or MB_OK);
        Q.Free;
        ClientDS.Free;
        Exit;
      end else begin
        ClientDS.Append;
        ClientDS.FieldByName('fact_id'        ).Value := cxGrid3DBBandedTableView1.Controller.SelectedRows[i].Values[cxGrid3DBBandedTableView1fact_id.Index];
        ClientDS.FieldByName('node_begin_cod' ).Value := cxGrid3DBBandedTableView1.Controller.SelectedRows[i].Values[cxGrid3DBBandedTableView1node_begin_cod.Index];
        ClientDS.FieldByName('node_end_cod'   ).Value := cxGrid3DBBandedTableView1.Controller.SelectedRows[i].Values[cxGrid3DBBandedTableView1node_end_cod.Index];
        ClientDS.FieldByName('fact_weight'    ).Value := cxGrid3DBBandedTableView1.Controller.SelectedRows[i].Values[cxGrid3DBBandedTableView1fact_weight.Index];
        ClientDS.FieldByName('kargoETSNG_cod' ).Value := cxGrid3DBBandedTableView1.Controller.SelectedRows[i].Values[cxGrid3DBBandedTableView1kargoETSNG_cod.Index];
        ClientDS.FieldByName('date_from_to'   ).Value := cxGrid3DBBandedTableView1.Controller.SelectedRows[i].Values[cxGrid3DBBandedTableView1date_from_to.Index];
        ClientDS.Post;
      end;

    end;


    handle := LoadLibrary('ctm_tarif.dll');
    @FFunc := GetProcAddress(handle, 'CreateWndCalcParam');
    v := FFunc(Application.Handle, Fusr_pwd, ClientDS);
    FreeLibrary(handle);

    if v[0] = True then begin
      str_fact_id   := '';
      array_fact_id := VarArrayCreate([0, cxGrid3DBBandedTableView1.Controller.SelectedRecordCount], varInteger);
      for i:=0 to cxGrid3DBBandedTableView1.Controller.SelectedRecordCount - 1 do begin
        array_fact_id[i] := cxGrid3DBBandedTableView1.Controller.SelectedRows[i].Values[cxGrid3DBBandedTableView1fact_id.Index];
        str_fact_id      := str_fact_id + ',' + IntToStr(cxGrid3DBBandedTableView1.Controller.SelectedRows[i].Values[cxGrid3DBBandedTableView1fact_id.Index]);
      end;
      Delete(str_fact_id, 1, 1);

      ClientDS_Fact.DisableControls;
      ClientDS_ListRate.DisableControls;
      FClientDS_FactDetail.DisableControls;
      for i:= VarArrayLowBound(array_fact_id, 1) to VarArrayHighBound(array_fact_id, 1)-1 do begin

        if ClientDS.Locate('fact_id', array_fact_id[i], []) then begin
          ChangeRate( array_fact_id[i],
                      cxGrid1DBBandedTableView1global_id.DataBinding.Field.AsInteger,
                      ClientDS.FieldByName('TotalPrice_own').AsCurrency);
        end;
        ShowTextMessage('Расчет ставки. ' + IntToStr(i) + ' из ' + IntToStr(VarArrayHighBound(array_fact_id, 1)) + ' вагонов...', False);
      end;
      ShowTextMessage;
      ClientDS_Fact.EnableControls;
      ClientDS_ListRate.EnableControls;
      FClientDS_FactDetail.EnableControls;

      CalcFrahtSum(1, str_fact_id);
      UpdateSum;
      UpdateSumResult;
    end;


    ClientDS.Free;
    Q.Free;
  end;
end;

procedure TfmBargainList2.dxBarButton58Click(Sender: TObject);
begin
	PrintcxGrid(cxGridDBBandedTableView4);
end;

procedure TfmBargainList2.dxBarButton59Click(Sender: TObject);
begin
	SetdxDBGridColumns(cxGridDBBandedTableView4);
end;

procedure TfmBargainList2.dxBarButton5Click(Sender: TObject);
var
  Client_Node                : TClientDataSet;
  Q                          : TADOQuery;
  node_begin_id, node_end_id : Currency;
  pos1, pos_fact_id1         : integer;
  pos2, pos_fact_id2         : integer;
  num_rec                    : integer;
begin
  Client_Node := TClientDataSet.Create(nil);
  Client_Node.FieldDefs.Add('node_begin_id', ftInteger);
  Client_Node.FieldDefs.Add('node_end_id'  , ftInteger);
  Client_Node.FieldDefs.Add('type_sps_id'  , ftInteger);
  Client_Node.FieldDefs.Add('type_kontener', ftInteger);
  Client_Node.FieldDefs.Add('attr_self'    , ftInteger);
  Client_Node.FieldDefs.Add('type_kontener_name', ftString, 200);
  Client_Node.FieldDefs.Add('attr_self_name'    , ftString, 200);
  Client_Node.CreateDataSet;
  Client_Node.LogChanges := False;

  Q := TADOQuery.Create(nil);
  Q.Connection := Fconnect;
  Q.SQL.Add('SELECT * FROM');
  Q.SQL.Add('(SELECT inf_obj_id as type_kontener, inf_obj_name as type_kontener_name FROM inf_obj WHERE (type_inf_id = 220)  AND dbo.GetInfObjVisible(str_group_visible) = 1 ) U1');
  Q.SQL.Add('CROSS JOIN');
  Q.SQL.Add('(SELECT attr_self, attr_self_name FROM view_attr_self ) U2');
  Q.Open;

  pos1 := cxGrid3DBBandedTableView1.Controller.TopRowIndex;
  if not cxGrid3DBBandedTableView1fact_id.DataBinding.Field.IsNull then
    pos_fact_id1 := cxGrid3DBBandedTableView1fact_id.DataBinding.Field.Value
  else
    pos_fact_id1 := -9;

  pos2 := cxGridDBBandedTableView1.Controller.TopRowIndex;

  if not cxGridDBBandedTableView1fact_id.DataBinding.Field.IsNull then
    pos_fact_id2 := cxGridDBBandedTableView1fact_id.DataBinding.Field.Value
  else
    pos_fact_id2 := -9;
  ClientDS_Fact.DisableControls;
  FClientDS_FactDetail.DisableControls;

  Q.First;
  for num_rec := 0 to cxGrid3DBBandedTableView1.Controller.SelectedRecordCount - 1 do
    if ClientDS_Fact.Locate('fact_id', cxGrid3DBBandedTableView1.Controller.SelectedRows[num_rec].Values[cxGrid3DBBandedTableView1fact_id.Index], []) then begin

      node_begin_id := ClientDS_Fact.FieldByName('node_begin_id').AsInteger;
      node_end_id := ClientDS_Fact.FieldByName('node_end_id').AsInteger;

      if not Client_Node.Locate('node_begin_id;node_end_id', VarArrayOf([node_begin_id,node_end_id]), []) then begin
        // Пропустим уже занятые пары
        while ClientDS_ListRate.Locate('attr_self;type_tools_id', VarArrayOf([Q.FieldByName('attr_self').Value, Q.FieldByName('type_kontener').Value]), []) do
          Q.Next;

        Client_Node.Append;
        Client_Node.FieldByName('node_begin_id'     ).Value := node_begin_id;
        Client_Node.FieldByName('node_end_id'       ).Value := node_end_id;
        Client_Node.FieldByName('type_kontener'     ).Value := Q.FieldByName('type_kontener'     ).Value;
        Client_Node.FieldByName('attr_self'         ).Value := Q.FieldByName('attr_self'         ).Value;
        Client_Node.FieldByName('type_kontener_name').Value := Q.FieldByName('type_kontener_name').Value;
        Client_Node.FieldByName('attr_self_name'    ).Value := Q.FieldByName('attr_self_name'    ).Value;
        Client_Node.Post;
        Q.Next;
      end;

      ClientDS_Fact.Edit;
      ClientDS_Fact.FieldByName('type_kontener'             ).Value := Client_Node.FieldByName('type_kontener'     ).Value;
      ClientDS_Fact.FieldByName('attr_self'                 ).Value := Client_Node.FieldByName('attr_self'         ).Value;
      ClientDS_Fact.FieldByName('type_kontener_name'        ).Value := Client_Node.FieldByName('type_kontener_name').Value;
      ClientDS_Fact.FieldByName('attr_self_name'            ).Value := Client_Node.FieldByName('attr_self_name'    ).Value;
      ClientDS_Fact.FieldByName('display_type_kontener_name').Value := Client_Node.FieldByName('type_kontener_name').Value;
      ClientDS_Fact.FieldByName('display_attr_self_name'    ).Value := Client_Node.FieldByName('attr_self_name'    ).Value;
      ClientDS_Fact.Post;

      if FClientDS_FactDetail.FindKey([ClientDS_Fact.FieldByName('fact_id').AsInteger]) then begin
        FClientDS_FactDetail.Edit;
        FClientDS_FactDetail.FieldByName('type_kontener'     ).Value := Client_Node.FieldByName('type_kontener'     ).Value;
        FClientDS_FactDetail.FieldByName('attr_self'         ).Value := Client_Node.FieldByName('attr_self'         ).Value;
        FClientDS_FactDetail.FieldByName('type_kontener_name').Value := Client_Node.FieldByName('type_kontener_name').Value;
        FClientDS_FactDetail.FieldByName('attr_self_name'    ).Value := Client_Node.FieldByName('attr_self_name'    ).Value;
        FClientDS_FactDetail.Post;
      end;
    end;

  CalcFrahtSum(1, '');
  UpdateSum;
  UpdateSumResult;
  FClientDS_FactDetail.EnableControls;
  FClientDS_FactDetail.FindKey([pos_fact_id2]);
  cxGridDBBandedTableView1.Controller.TopRowIndex := pos2;

  ClientDS_Fact.EnableControls;
  ClientDS_Fact.FindKey([pos_fact_id1]);
  cxGrid3DBBandedTableView1.Controller.TopRowIndex := pos1;

  Q.Free;
  Client_Node.Free;
end;

procedure TfmBargainList2.UpdateSumResult();
var     sum_id : integer;
    comiss_RUB : Currency;
    comiss_USD : Currency;
      ClientDS : TClientDataSet;
begin
  if Fset_calc_enabled = True then begin

    ClientDS := TClientDataSet.Create(nil);
    ClientDS.Data := Client_Contract.Data;

    comiss_RUB := 0;
    comiss_USD := 0;

    ClientDS.First;
    while not ClientDS.Eof do begin
      if ClientDS.FieldByName('service_type').AsInteger = 0 then begin
        comiss_RUB := comiss_RUB + ClientDS.FieldByName('fact_sum_RUB').AsCurrency;
        comiss_USD := comiss_USD + ClientDS.FieldByName('fact_sum_USD').AsCurrency;
      end else begin
        comiss_RUB := comiss_RUB - (-1)*ClientDS.FieldByName('fact_sum_RUB').AsCurrency;
        comiss_USD := comiss_USD - (-1)*ClientDS.FieldByName('fact_sum_USD').AsCurrency;
      end;
      ClientDS.Next;
    end;

    sum_id := ClientDS_Sum.FieldByName('sum_id').AsInteger;
    ClientDS_Sum.DisableControls;

    ClientDS.First;
    while not ClientDS.Eof do begin
      if ClientDS_Sum.Locate('sum_id', 1, []) then begin
        ClientDS_Sum.Edit;
        ClientDS_Sum.FieldByName('contract_val_' + IntToStr(ClientDS.FieldByName('global_id').AsInteger)).Value := ClientDS.FieldByName('count_weight').Value;
        ClientDS_Sum.Post;
      end;

      if ClientDS_Sum.Locate('sum_id', 2, []) then begin
        ClientDS_Sum.Edit;
        ClientDS_Sum.FieldByName('contract_val_' + IntToStr(ClientDS.FieldByName('global_id').AsInteger)).Value := ClientDS.FieldByName('count_vagon').Value;
        ClientDS_Sum.Post;
      end;

      if ClientDS_Sum.Locate('sum_id', 3, []) then begin
        ClientDS_Sum.Edit;
        if ClientDS.FieldByName('service_type').AsInteger = 0 then
          ClientDS_Sum.FieldByName('contract_val_' + IntToStr(ClientDS.FieldByName('global_id').AsInteger)).Value := ClientDS.FieldByName('fact_sum_USD').Value
        else
          ClientDS_Sum.FieldByName('contract_val_' + IntToStr(ClientDS.FieldByName('global_id').AsInteger)).Value := (-1)*ClientDS.FieldByName('fact_sum_USD').Value;
        ClientDS_Sum.Post;
      end;

      if ClientDS_Sum.Locate('sum_id', 4, []) then begin
        ClientDS_Sum.Edit;
        if ClientDS.FieldByName('service_type').AsInteger = 0 then
          ClientDS_Sum.FieldByName('contract_val_' + IntToStr(ClientDS.FieldByName('global_id').AsInteger)).Value := ClientDS.FieldByName('fact_sum_RUB').Value
        else
          ClientDS_Sum.FieldByName('contract_val_' + IntToStr(ClientDS.FieldByName('global_id').AsInteger)).Value := (-1)*ClientDS.FieldByName('fact_sum_RUB').Value;
        ClientDS_Sum.Post;
      end;

      if StrToInt(FContractList.Strings[FContractList.Count-1]) = ClientDS.FieldByName('global_id').AsInteger then begin
        if ClientDS_Sum.Locate('sum_id', 5, []) then begin
          ClientDS_Sum.Edit;
          ClientDS_Sum.FieldByName('contract_val_' + IntToStr(ClientDS.FieldByName('global_id').AsInteger)).Value := comiss_USD;
          ClientDS_Sum.Post;
        end;

        if ClientDS_Sum.Locate('sum_id', 6, []) then begin
          ClientDS_Sum.Edit;
          ClientDS_Sum.FieldByName('contract_val_' + IntToStr(ClientDS.FieldByName('global_id').AsInteger)).Value := comiss_RUB;
          ClientDS_Sum.Post;
        end;
      end;


      ClientDS.Next;
    end;

    ClientDS_Sum.Locate('sum_id', sum_id, []);
    ClientDS_Sum.EnableControls;

    ClientDS.Free;
  end;
end;

procedure TfmBargainList2.dxBarButton60Click(Sender: TObject);
begin
	cxGridDBBandedTableView4.OptionsView.GroupByBox := not cxGridDBBandedTableView4.OptionsView.GroupByBox;
end;

procedure TfmBargainList2.dxBarButton6Click(Sender: TObject);
begin
	PrintcxGrid(cxGridDBBandedTableView2);
end;

procedure TfmBargainList2.dxBarButton7Click(Sender: TObject);
begin
	SetdxDBGridColumns(cxGridDBBandedTableView2);
end;

procedure TfmBargainList2.dxBarButton8Click(Sender: TObject);
begin
	cxGridDBBandedTableView2.OptionsView.GroupByBox := not cxGridDBBandedTableView2.OptionsView.GroupByBox;
end;

procedure TfmBargainList2.dxBarButton9Click(Sender: TObject);
var Client_NumDocument : TClientDataSet;
    num_document       : string;
    pos1, pos_fact_id1 : integer;
    pos2, pos_fact_id2 : integer;
    type_kontener      : integer;
    type_kontener_name : string;
    num_rec            : integer;
begin
  Client_NumDocument := TClientDataSet.Create(nil);
  Client_NumDocument.FieldDefs.Add('num_document' , ftString, 200);
  Client_NumDocument.FieldDefs.Add('cnt_vagon'    , ftInteger);
  Client_NumDocument.FieldDefs.Add('type_kontener', ftInteger);
  Client_NumDocument.FieldDefs.Add('attr_self'    , ftInteger);
  Client_NumDocument.FieldDefs.Add('type_kontener_name', ftString, 200);
  Client_NumDocument.FieldDefs.Add('attr_self_name'    , ftString, 200);
  Client_NumDocument.CreateDataSet;
  Client_NumDocument.LogChanges := False;

  fmBargainRate := TfmBargainRate.Create(Application, Fconnect, Fusr_pwd);
  fmBargainRate._SetTypeKontener := cxGrid3DBBandedTableView1type_kontener.DataBinding.Field.AsInteger;
  fmBargainRate._SetAttrSelf     := cxGrid3DBBandedTableView1attr_self.DataBinding.Field.AsInteger;
  fmBargainRate._SetSelectRate   := False;
  fmBargainRate._SetSelectParam  := False;
  fmBargainRate._SetSelectAttrSelf := False;


  if fmBargainRate.ShowModal=mrOk then begin
    type_kontener      := fmBargainRate._GetTypeKontener;
    type_kontener_name := fmBargainRate._GetTypeKontenerName;

    pos1 := cxGrid3DBBandedTableView1.Controller.TopRowIndex;
    pos_fact_id1 := cxGrid3DBBandedTableView1fact_id.DataBinding.Field.Value;
    pos2 := cxGridDBBandedTableView1.Controller.TopRowIndex;
    pos_fact_id2 := cxGridDBBandedTableView1fact_id.DataBinding.Field.Value;
    ClientDS_Fact.DisableControls;
    FClientDS_FactDetail.DisableControls;

      // Накладные
      for num_rec := 0 to cxGrid3DBBandedTableView1.Controller.SelectedRecordCount - 1 do
        if ClientDS_Fact.Locate('fact_id', cxGrid3DBBandedTableView1.Controller.SelectedRows[num_rec].Values[cxGrid3DBBandedTableView1fact_id.Index], []) then begin

          num_document := ClientDS_Fact.FieldByName('num_document').AsString;

          if not Client_NumDocument.Locate('num_document', num_document, []) then begin
            Client_NumDocument.Append;
            Client_NumDocument.FieldByName('num_document').Value := num_document;
            Client_NumDocument.FieldByName('cnt_vagon'   ).Value := 0;
            Client_NumDocument.Post;
          end;
        end;




    ClientDS_Fact.Filter   := '';
    ClientDS_Fact.Filtered := False;

    // Кол-во вагонов в накладной
    for num_rec := 0 to cxGrid3DBBandedTableView1.Controller.SelectedRecordCount - 1 do
      if ClientDS_Fact.Locate('fact_id', cxGrid3DBBandedTableView1.Controller.SelectedRows[num_rec].Values[cxGrid3DBBandedTableView1fact_id.Index], []) then begin
        num_document := ClientDS_Fact.FieldByName('num_document').AsString;

        if Client_NumDocument.Locate('num_document', num_document, []) then begin
          Client_NumDocument.Edit;
          Client_NumDocument.FieldByName('cnt_vagon').Value := Client_NumDocument.FieldByName('cnt_vagon').AsInteger + 1;
          Client_NumDocument.Post;
        end;
      end;


    // Определяем ставки
    Client_NumDocument.First;
    while not Client_NumDocument.Eof do begin

      Client_NumDocument.Edit;
      Client_NumDocument.FieldByName('type_kontener'     ).Value := type_kontener;
      Client_NumDocument.FieldByName('type_kontener_name').Value := type_kontener_name;

      // -------------- 1 вагон -----------------
      if Client_NumDocument.FieldByName('cnt_vagon').AsInteger = 1 then begin
        Query_AttrSelf.Locate('attr_self', 2, []);
        Client_NumDocument.FieldByName('attr_self'     ).Value := Query_AttrSelf.FieldByName('attr_self').Value;
        Client_NumDocument.FieldByName('attr_self_name').Value := Query_AttrSelf.FieldByName('attr_self_name').Value;
      end;
      // -------------- 2 вагон -----------------
      if Client_NumDocument.FieldByName('cnt_vagon').AsInteger = 2 then begin
        Query_AttrSelf.Locate('attr_self', 3, []);
        Client_NumDocument.FieldByName('attr_self'     ).Value := Query_AttrSelf.FieldByName('attr_self').Value;
        Client_NumDocument.FieldByName('attr_self_name').Value := Query_AttrSelf.FieldByName('attr_self_name').Value;
      end;
      // -------------- 3-5 вагон -----------------
      if (Client_NumDocument.FieldByName('cnt_vagon').AsInteger >= 3) AND (Client_NumDocument.FieldByName('cnt_vagon').AsInteger < 6) then begin
        Query_AttrSelf.Locate('attr_self', 4, []);
        Client_NumDocument.FieldByName('attr_self'     ).Value := Query_AttrSelf.FieldByName('attr_self').Value;
        Client_NumDocument.FieldByName('attr_self_name').Value := Query_AttrSelf.FieldByName('attr_self_name').Value;
      end;
      // -------------- 6-20 вагон -----------------
      if (Client_NumDocument.FieldByName('cnt_vagon').AsInteger >= 6) AND (Client_NumDocument.FieldByName('cnt_vagon').AsInteger <= 20) then begin
        Query_AttrSelf.Locate('attr_self', 5, []);
        Client_NumDocument.FieldByName('attr_self'     ).Value := Query_AttrSelf.FieldByName('attr_self').Value;
        Client_NumDocument.FieldByName('attr_self_name').Value := Query_AttrSelf.FieldByName('attr_self_name').Value;
      end;
      // -------------- свыше 20 вагон -----------------
      if (Client_NumDocument.FieldByName('cnt_vagon').AsInteger > 20) then begin
        Query_AttrSelf.Locate('attr_self', 6, []);
        Client_NumDocument.FieldByName('attr_self'     ).Value := Query_AttrSelf.FieldByName('attr_self').Value;
        Client_NumDocument.FieldByName('attr_self_name').Value := Query_AttrSelf.FieldByName('attr_self_name').Value;
      end;
      Client_NumDocument.Post;


      Client_NumDocument.Next;
    end;

    // Обновляем вагоны
    ClientDS_Fact.Filter   := '';
    ClientDS_Fact.Filtered := False;
    for num_rec := 0 to cxGrid3DBBandedTableView1.Controller.SelectedRecordCount - 1 do
      if ClientDS_Fact.Locate('fact_id', cxGrid3DBBandedTableView1.Controller.SelectedRows[num_rec].Values[cxGrid3DBBandedTableView1fact_id.Index], []) then begin
        if Client_NumDocument.Locate('num_document', ClientDS_Fact.FieldByName('num_document').Value, []) then begin
          ClientDS_Fact.Edit;
          ClientDS_Fact.FieldByName('type_kontener'             ).Value := Client_NumDocument.FieldByName('type_kontener'     ).Value;
          ClientDS_Fact.FieldByName('attr_self'                 ).Value := Client_NumDocument.FieldByName('attr_self'         ).Value;
          ClientDS_Fact.FieldByName('type_kontener_name'        ).Value := Client_NumDocument.FieldByName('type_kontener_name').Value;
          ClientDS_Fact.FieldByName('attr_self_name'            ).Value := Client_NumDocument.FieldByName('attr_self_name'    ).Value;
          ClientDS_Fact.FieldByName('display_type_kontener_name').Value := Client_NumDocument.FieldByName('type_kontener_name').Value;
          ClientDS_Fact.FieldByName('display_attr_self_name'    ).Value := Client_NumDocument.FieldByName('attr_self_name'    ).Value;
          ClientDS_Fact.Post;

          if FClientDS_FactDetail.FindKey([ClientDS_Fact.FieldByName('fact_id').AsInteger]) then begin
            FClientDS_FactDetail.Edit;
            FClientDS_FactDetail.FieldByName('type_kontener'     ).Value := Client_NumDocument.FieldByName('type_kontener'     ).Value;
            FClientDS_FactDetail.FieldByName('attr_self'         ).Value := Client_NumDocument.FieldByName('attr_self'         ).Value;
            FClientDS_FactDetail.FieldByName('type_kontener_name').Value := Client_NumDocument.FieldByName('type_kontener_name').Value;
            FClientDS_FactDetail.FieldByName('attr_self_name'    ).Value := Client_NumDocument.FieldByName('attr_self_name'    ).Value;
            FClientDS_FactDetail.Post;
          end;
        end;
      end;

    CalcFrahtSum(1, '');
    UpdateSum;
    UpdateSumResult;
    FClientDS_FactDetail.EnableControls;
    FClientDS_FactDetail.FindKey([pos_fact_id2]);
    cxGridDBBandedTableView1.Controller.TopRowIndex := pos2;

    ClientDS_Fact.EnableControls;
    ClientDS_Fact.FindKey([pos_fact_id1]);
    cxGrid3DBBandedTableView1.Controller.TopRowIndex := pos1;

  end;
  Client_NumDocument.Free;
end;

procedure TfmBargainList2.dxBarPopupMenu3Popup(Sender: TObject);
begin
  dxBarSeparator2.Caption := cxGrid1DBBandedTableView1firm_customer_name.DataBinding.Field.AsString;
end;

procedure TfmBargainList2.dxBarPopupMenu4Popup(Sender: TObject);
var            i : integer;
         rate_id : integer;
    firm_caption : string;
begin
  rate_id := -9;
  dxBarSeparator1.Visible := ivNever;
  dxBarButton29.Visible := ivNever;
  for i := 0 to cxGridDBBandedTableView1.ColumnCount - 1 do begin
    if cxGridDBBandedTableView1.Columns[i].Focused then begin
      if cxGridDBBandedTableView1.Columns[i].Tag <> 0 then begin
        rate_id := cxGridDBBandedTableView1.Columns[i].Tag;
        firm_caption := cxGridDBBandedTableView1.Columns[i].Position.Band.Caption;
        if Length(firm_caption) > 30 then firm_caption := LeftStr(firm_caption, 27) + '...';
        dxBarSeparator1.Caption := firm_caption;
        dxBarSeparator1.Visible := ivAlways;
        dxBarButton29.Visible := ivAlways;
      end;
    end;
  end;
end;


procedure TfmBargainList2.RefreshListRate();
var id: integer;
begin
  ClientDS_ListRate.DisableControls;
  id := ClientDS_ListRate.FieldByName('id').AsInteger;

  ClientDS_ListRate.Filtered := False;

  ClientDS_ListRate.Filter   := 'rate_id=' + IntToStr(Frate_id);
  if Ftype_tools_id <> -9 then ClientDS_ListRate.Filter := ClientDS_ListRate.Filter + ' and type_tools_id=' + IntToStr(Ftype_tools_id);
  if Fattr_self <> -9 then ClientDS_ListRate.Filter := ClientDS_ListRate.Filter + ' and attr_self=' + IntToStr(Fattr_self);

  ClientDS_ListRate.Filtered := True;

  ClientDS_ListRate.Locate('id', id, []);
  ClientDS_ListRate.EnableControls;

  ClientDS_SumRate.Filter := 'rate_id=' + IntToStr(Frate_id);
  ClientDS_SumRate.Filtered := True;
end;


procedure TfmBargainList2.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  FContractList.Free;
  Action := caFree;
end;

procedure TfmBargainList2.FormDestroy(Sender: TObject);
begin
  StoreRegistryGrid(rgSave, '\Software\Lis1\BargainList_Grids2', cxGrid1DBBandedTableView1);
  StoreRegistryGrid(rgSave, '\Software\Lis1\BargainList_Grids2', cxGridDBBandedTableView2);
  StoreRegistryGrid(rgSave, '\Software\Lis1\BargainList_Grids2', cxGrid3DBBandedTableView1);
end;

procedure TfmBargainList2.SetBargainId(bargain_id: integer);
var Q, Q2, Q3: TADOQuery;
    dt : TDateTime;
begin
  Screen.Cursor := crHourGlass;

  Fbargain_id := bargain_id;
  Fset_calc_enabled := False;

  Caption := 'Список ставок [№ записи перевозки: ' + IntToStr(bargain_id) + ']';

  Q := TADOQuery.Create(nil);
  Q.Connection := Fconnect;

  Q2 := TADOQuery.Create(nil);
  Q2.Connection := Fconnect;

  Q3 := TADOQuery.Create(nil);
  Q3.Connection := Fconnect;


  Q.SQL.Clear;
  Q.SQL.Add('SELECT * FROM view_bargain WHERE bargain_id = ' + IntToStr(Fbargain_id));
  Q.Open;
  Fdate_period  := Q.FieldByName('date_period').AsDateTime;
  Fexchange_USD := GetExchangeNew(1, StartOfAMonth(YearOf(Fdate_period), MonthOf(Fdate_period)), Fconnect);
  Fexchange_CHF := GetExchangeNew(5, StartOfAMonth(YearOf(Fdate_period), MonthOf(Fdate_period)), Fconnect);
  Fexchange_EUR := GetExchangeNew(6, StartOfAMonth(YearOf(Fdate_period), MonthOf(Fdate_period)), Fconnect);

  Q.SQL.Clear;
  Q.SQL.Add('SELECT * FROM view_shaping_rate WHERE bargain_id = ' + IntToStr(Fbargain_id) + ' ORDER BY service_type, shaping_rate_id');
  Q.Open;

  Q2.SQL.Clear;
  Q2.SQL.Add('SELECT * FROM view_bargain_fact WHERE set_main = 1 AND bargain_id = ' + IntToStr(Fbargain_id));
  Q2.Open;

  ClientDS_RateFact.DisableControls;
  while not Q.Eof do begin

    Client_Contract.Append;
    Client_Contract.FieldByName('global_id'              ).Value := Q.FieldByName('shaping_rate_id').Value;
    Client_Contract.FieldByName('bargain_id'             ).Value := Q.FieldByName('bargain_id').Value;
    Client_Contract.FieldByName('budget_name'            ).Value := Q.FieldByName('budget_name').Value;
    Client_Contract.FieldByName('shaping_rate_id'        ).Value := Q.FieldByName('shaping_rate_id').Value;
    Client_Contract.FieldByName('contract_id'            ).Value := Q.FieldByName('contract_agent_id').Value;
    Client_Contract.FieldByName('contract_cod'           ).Value := Q.FieldByName('contract_agent_cod').Value;
    Client_Contract.FieldByName('contract_date'          ).Value := Q.FieldByName('contract_agent_date_begin').Value;
    Client_Contract.FieldByName('firm_customer_name'     ).Value := Q.FieldByName('firm_agent_name').Value;
    Client_Contract.FieldByName('firm_self_name'         ).Value := Q.FieldByName('firm_self_agent_name').Value;
    Client_Contract.FieldByName('currency_id'            ).Value := Q.FieldByName('currency_id').Value;
    Client_Contract.FieldByName('brief_name'             ).Value := Q.FieldByName('brief_name').Value;
    Client_Contract.FieldByName('ed_izm_id'              ).Value := Q.FieldByName('ed_izm_id').Value;
    Client_Contract.FieldByName('ed_izm_cod'             ).Value := Q.FieldByName('ed_izm_cod').Value;
    Client_Contract.FieldByName('ed_izm_name'            ).Value := Q.FieldByName('ed_izm_name').Value;
    Client_Contract.FieldByName('vid_send'               ).Value := Q.FieldByName('vid_send').Value;
    case Q.FieldByName('vid_send').AsInteger of
      0: Client_Contract.FieldByName('vid_send_name' ).Value := 'Вагоны груж.';
      1: Client_Contract.FieldByName('vid_send_name' ).Value := 'Контейнеры';
      2: Client_Contract.FieldByName('vid_send_name' ).Value := 'Порожние ваг.';
      3: Client_Contract.FieldByName('vid_send_name' ).Value := 'Аренда';
    end;
    Client_Contract.FieldByName('type_calc_sum'          ).Value := Q.FieldByName('type_calc_sum').Value;
    Client_Contract.FieldByName('type_calc_sum_name'     ).Value := Q.FieldByName('type_calc_sum_name').Value;
    Client_Contract.FieldByName('nds_id'                 ).Value := Q.FieldByName('shaping_rate_nds_id').Value;
    Client_Contract.FieldByName('nds_cod'                ).Value := Q.FieldByName('shaping_rate_nds_cod').Value;
    Client_Contract.FieldByName('nds_name'               ).Value := Q.FieldByName('shaping_rate_nds_name').Value;
    Client_Contract.FieldByName('set_include_nds'        ).Value := Q.FieldByName('set_include_nds').Value;
    Client_Contract.FieldByName('service_type'           ).Value := Q.FieldByName('service_type').Value;
    Client_Contract.FieldByName('service_type_name'      ).Value := Q.FieldByName('service_type_name').Value;
    Client_Contract.FieldByName('shaping_rate_type_id'   ).Value := Q.FieldByName('shaping_rate_type_id').Value;
    Client_Contract.FieldByName('shaping_rate_type_name' ).Value := Q.FieldByName('shaping_rate_type_name').Value;

    Client_Contract.FieldByName('shaping_rate_round_weight'      ).Value := Q.FieldByName('shaping_rate_round_weight').Value;
    case Q.FieldByName('shaping_rate_round_weight').AsInteger of
      0: Client_Contract.FieldByName('shaping_rate_round_weight_name' ).Value := '10-01';
      1: Client_Contract.FieldByName('shaping_rate_round_weight_name' ).Value := 'ТП';
      2: Client_Contract.FieldByName('shaping_rate_round_weight_name' ).Value := 'Факт. вес';
      3: Client_Contract.FieldByName('shaping_rate_round_weight_name' ).Value := 'Полные тонны';
    end;
    Client_Contract.FieldByName('shaping_kargo_min_norm'         ).Value := Q.FieldByName('shaping_kargo_min_norm').Value;
    Client_Contract.FieldByName('shaping_check_kargo_capacity'   ).Value := Q.FieldByName('shaping_check_kargo_capacity').Value;

    Client_Contract.FieldByName('shaping_rate_val'        ).Value := Q.FieldByName('shaping_rate_val').Value;
    Client_Contract.FieldByName('shaping_rate_count'      ).Value := Q.FieldByName('shaping_rate_count').Value;
    Client_Contract.FieldByName('shaping_rate_sum'        ).Value := Q.FieldByName('shaping_rate_sum').Value;
    Client_Contract.FieldByName('shaping_rate_NDS_sum'    ).Value := Q.FieldByName('shaping_rate_NDS_sum').Value;
    Client_Contract.FieldByName('shaping_rate_notNDS_sum' ).Value := Q.FieldByName('shaping_rate_notNDS_sum').Value;
    Client_Contract.FieldByName('exchange_USD_val'        ).Value := Q.FieldByName('exchange_USD_val').Value;
    Client_Contract.FieldByName('exchange_CHF_val'        ).Value := Q.FieldByName('exchange_CHF_val').Value;
    Client_Contract.FieldByName('exchange_EUR_val'        ).Value := Q.FieldByName('exchange_EUR_val').Value;
    Client_Contract.Post;

    Q2.First;
    while not Q2.Eof do begin
      ClientDS_RateFact.Append;
      ClientDS_RateFact.FieldByName('rate_id'       ).Value := Q.FieldByName('shaping_rate_id').Value;
      ClientDS_RateFact.FieldByName('fact_id'       ).Value := Q2.FieldByName('fact_id').Value;
      ClientDS_RateFact.FieldByName('count_vagon'   ).Value := null;
      ClientDS_RateFact.FieldByName('count_weight'  ).Value := null;
      ClientDS_RateFact.FieldByName('fact_rate'     ).Value := null;
      ClientDS_RateFact.FieldByName('fact_sum'      ).Value := null;
      ClientDS_RateFact.Post;
      Q2.Next;
    end;

    Q.Next;
  end;

  ClientDS_RateFact.EnableControls;

  Q3.SQL.Clear;
  Q3.SQL.Add('SELECT * FROM view_bargain_list_rate WHERE rate_id in (SELECT shaping_rate_id FROM view_shaping_rate WHERE bargain_id = ' + IntToStr(Fbargain_id) + ')');
  Q3.Open;

  while not Q3.Eof do begin
    ClientDS_ListRate.Append;
    ClientDS_ListRate.FieldByName('list_rate_id'    ).Value := Q3.FieldByName('list_rate_id').Value;
    ClientDS_ListRate.FieldByName('rate_id'         ).Value := Q3.FieldByName('rate_id').Value;
    ClientDS_ListRate.FieldByName('type_rate'       ).Value := Q3.FieldByName('type_rate').Value;
    ClientDS_ListRate.FieldByName('weight'          ).Value := Q3.FieldByName('weight').Value;
    ClientDS_ListRate.FieldByName('rate_val'        ).Value := Q3.FieldByName('rate_val').Value;
    ClientDS_ListRate.FieldByName('set_one'         ).Value := Q3.FieldByName('set_one').Value;
    ClientDS_ListRate.FieldByName('type_tools_id'   ).Value := Q3.FieldByName('type_tools_id').Value;
    ClientDS_ListRate.FieldByName('attr_self'       ).Value := Q3.FieldByName('attr_self').Value;
    ClientDS_ListRate.FieldByName('type_tools_name' ).Value := Q3.FieldByName('type_tools_name').Value;
    ClientDS_ListRate.FieldByName('attr_self_name'  ).Value := Q3.FieldByName('attr_self_name').Value;
    ClientDS_ListRate.FieldByName('fact_id'         ).Value := Q3.FieldByName('fact_id').Value;
    ClientDS_ListRate.Post;
    Q3.Next;
  end;


  dt := Now;
  Q.SQL.Clear;
  Q.SQL.Add('SELECT view_bargain_fact.*, view_vagon_sps.type_sps_name, view_vagon_sps.type_sps_id, ');
  Q.SQL.Add('       view_vagon_owner.contract_id AS vagon_owner_contract_id, view_vagon_owner.firm_customer_name AS vagon_owner, view_vagon_owner.contract_cod AS vagon_owner_contract_cod, rod_vagon_cod');
  Q.SQL.Add('FROM   view_bargain_fact');
  Q.SQL.Add('       left join view_vagon_sps ON (view_bargain_fact.num_vagon = view_vagon_sps.num_vagon) AND (view_vagon_sps.users_group_id=' + IntToStr(Fusr_pwd^.user_group_id) + ')');
  Q.SQL.Add('       left join view_vagon ON (view_bargain_fact.num_vagon = view_vagon.num_vagon) AND (view_vagon.users_group_id = ' + IntToStr(Fusr_pwd^.user_group_id) + ')');
  Q.SQL.Add('	      left join view_vagon_owner ON view_vagon.vagon_id = view_vagon_owner.vagon_id AND view_bargain_fact.date_from_to BETWEEN view_vagon_owner.date_begin AND ISNULL(view_vagon_owner.date_end, view_bargain_fact.date_from_to + 1)');
  Q.SQL.Add('WHERE  set_main = 1 AND bargain_id = ' + IntToStr(Fbargain_id));
  Q.Open;

  ClientDS_Fact.DisableControls;
  while not Q.Eof do begin

    ClientDS_Fact.Append;
    ClientDS_Fact.FieldByName('fact_id'            ).Value := Q.FieldByName('fact_id').Value;
    ClientDS_Fact.FieldByName('num_document'       ).Value := Q.FieldByName('num_document').Value;
    ClientDS_Fact.FieldByName('num_document_pref'  ).Value := Q.FieldByName('num_document_pref').Value;
    ClientDS_Fact.FieldByName('num_vagon'          ).Value := Q.FieldByName('num_vagon').Value;
    ClientDS_Fact.FieldByName('num_konten'         ).Value := Q.FieldByName('num_konten').Value;
    ClientDS_Fact.FieldByName('date_from_to'       ).Value := Q.FieldByName('date_from_to').Value;
    ClientDS_Fact.FieldByName('datpr'              ).Value := Q.FieldByName('datpr').Value;
    ClientDS_Fact.FieldByName('type_kontener'      ).Value := Q.FieldByName('type_kontener').Value;
    ClientDS_Fact.FieldByName('type_kontener_name' ).Value := Q.FieldByName('type_kontener_name').Value;
    ClientDS_Fact.FieldByName('attr_self'          ).Value := Q.FieldByName('attr_self').Value;
    ClientDS_Fact.FieldByName('attr_self_name'     ).Value := Q.FieldByName('attr_self_name').Value;
    ClientDS_Fact.FieldByName('display_type_kontener_name' ).Value := Q.FieldByName('type_kontener_name').Value;
    ClientDS_Fact.FieldByName('display_attr_self_name'     ).Value := Q.FieldByName('attr_self_name').Value;
    ClientDS_Fact.FieldByName('fact_weight'        ).Value := Q.FieldByName('fact_weight').Value;
    ClientDS_Fact.FieldByName('node_begin_name'    ).Value := Q.FieldByName('node_begin_name').Value;
    ClientDS_Fact.FieldByName('node_end_name'      ).Value := Q.FieldByName('node_end_name').Value;
    ClientDS_Fact.FieldByName('node_begin_cod'     ).Value := Q.FieldByName('node_begin_cod').Value;
    ClientDS_Fact.FieldByName('node_end_cod'       ).Value := Q.FieldByName('node_end_cod').Value;
    ClientDS_Fact.FieldByName('kargoETSNG_name'    ).Value := Q.FieldByName('kargoETSNG_name').Value;
    ClientDS_Fact.FieldByName('kargoETSNG_cod'     ).Value := Q.FieldByName('kargoETSNG_cod').Value;
    ClientDS_Fact.FieldByName('type_sps_name'      ).Value := Q.FieldByName('type_sps_name').Value;
    ClientDS_Fact.FieldByName('type_sps_id'        ).Value := Q.FieldByName('type_sps_id').Value;
    ClientDS_Fact.FieldByName('node_begin_id'      ).Value := Q.FieldByName('node_begin_id').Value;
    ClientDS_Fact.FieldByName('node_end_id'        ).Value := Q.FieldByName('node_end_id').Value;
    ClientDS_Fact.FieldByName('transport_pay'      ).Value := Q.FieldByName('transport_pay').Value;
    ClientDS_Fact.FieldByName('global_color'       ).Value := Q.FieldByName('global_color').Value;
    ClientDS_Fact.FieldByName('kargo_capacity'     ).Value := Q.FieldByName('kargo_capacity').Value;
    ClientDS_Fact.FieldByName('fact_users_comment' ).Value := Q.FieldByName('fact_users_comment').Value;
    ClientDS_Fact.FieldByName('vagon_owner_contract_id' ).Value := Q.FieldByName('vagon_owner_contract_id').Value;
    ClientDS_Fact.FieldByName('vagon_owner'             ).Value := Q.FieldByName('vagon_owner').Value;
    ClientDS_Fact.FieldByName('vagon_owner_contract_cod').Value := Q.FieldByName('vagon_owner_contract_cod').Value;

    ClientDS_Fact.FieldByName('road_begin_name'     ).Value := Q.FieldByName('road_begin_name').Value;
    ClientDS_Fact.FieldByName('road_end_name'       ).Value := Q.FieldByName('road_end_name').Value;
    ClientDS_Fact.FieldByName('rod_vagon_cod'       ).Value := Q.FieldByName('rod_vagon_cod').Value;
    ClientDS_Fact.FieldByName('firm_info_name'      ).Value := Q.FieldByName('firm_info_name').Value;
    ClientDS_Fact.FieldByName('xml_reply_id'        ).Value := Q.FieldByName('xml_reply_id').Value;


    Q2.SQL.Clear;
    Q2.SQL.Add('select distance from view_fact_all where fact_id = ' + Q.FieldByName('fact_id').AsString);
    Q2.Open;
    ClientDS_Fact.FieldByName('distance'        ).Value := Q2.FieldByName('distance').Value;


    ClientDS_Fact.FieldByName('fact_rate'          ).Value := null;
    ClientDS_Fact.FieldByName('fact_sum'           ).Value := null;
    ClientDS_Fact.FieldByName('count_vagon'        ).Value := null;
    ClientDS_Fact.FieldByName('count_weight'       ).Value := null;
    ClientDS_Fact.Post;

    Q.Next();
  end;
  ClientDS_Fact.EnableControls;
//  ShowMessage('1:' + IntToStr(MilliSecondsBetween(Now, dt)));

  CreateClientRate;
  CreateFactDetail;
  CreateGridDetail;
  CreateSum;
  CreateGridSum;

  Client_Contract.First;

  Fset_calc_enabled := True;
  CalcFrahtSum(0, '');
  UpdateSum;
  UpdateSumResult;

  Client_Contract.First;
  cxGrid1DBBandedTableView1.Controller.GoToFirst;

  Q.Free;
  Q2.Free;
  Q3.Free;

  MonitorEventFormOpen('OPEN_FORM', self.Name, Fconnect, Fbargain_id);
  Screen.Cursor := crDefault;
end;


procedure TfmBargainList2.ClientDS_ListRateAfterDelete(DataSet: TDataSet);
begin
  CalcSum(cxGrid1DBBandedTableView1global_id.DataBinding.Field.AsInteger);
  UpdateSum;
  UpdateSumResult;
end;

procedure TfmBargainList2.ClientDS_ListRateAfterPost(DataSet: TDataSet);
begin
  CalcSum(cxGrid1DBBandedTableView1global_id.DataBinding.Field.AsInteger);
  UpdateSum;
  UpdateSumResult;
end;

procedure TfmBargainList2.ClientDS_ListRateweightGetText(Sender: TField; var Text: string; DisplayText: Boolean);
begin
  if ClientDS_ListRate.FieldByName('set_one').AsBoolean then begin
    Text := '(любой вес)';
  end else Text := TField(Sender).AsString;
end;

procedure TfmBargainList2.UpdateSum();
var pos, pos_fact_id : integer;
    rate_id : integer;
    i, fact_id : integer;
    nds_name : string;
begin
  // Обновление факта
  if (Fset_calc_enabled = True) and (Fset_calc_hand = False) then begin

    // -------- закладка контрагент ---------------
    if cxPageControl1.ActivePage = cxTabSheet1 then begin
      rate_id := cxGrid1DBBandedTableView1global_id.DataBinding.Field.AsInteger;
      nds_name:= cxGrid1DBBandedTableView1nds_name.DataBinding.Field.AsString;
      pos := cxGrid3DBBandedTableView1.Controller.TopRowIndex;
      pos_fact_id := iif(cxGrid3DBBandedTableView1fact_id.DataBinding.Field.IsNull, -9, cxGrid3DBBandedTableView1fact_id.DataBinding.Field.Value);

      ClientDS_Fact.DisableControls;
      ClientDS_Fact.First;

      while not ClientDS_Fact.Eof do
      begin
        if ClientDS_RateFact.FindKey([ClientDS_Fact.FieldByName('fact_id').Value, rate_id]) then begin
          ClientDS_Fact.Edit;
          ClientDS_Fact.FieldByName('count_vagon'   ).Value := ClientDS_RateFact.FieldByName('count_vagon').Value;
          ClientDS_Fact.FieldByName('count_weight'  ).Value := ClientDS_RateFact.FieldByName('count_weight').Value;
          ClientDS_Fact.FieldByName('fact_rate'     ).Value := ClientDS_RateFact.FieldByName('fact_rate').Value;
          ClientDS_Fact.FieldByName('fact_sum'      ).Value := ClientDS_RateFact.FieldByName('fact_sum').Value;
          ClientDS_Fact.FieldByName('type_list_rate').Value := ClientDS_RateFact.FieldByName('type_list_rate').Value;
          ClientDS_Fact.FieldByName('nds_name'      ).Value := nds_name;
          if ClientDS_Fact.FieldByName('type_list_rate').AsInteger = 2 then begin
            ClientDS_Fact.FieldByName('display_type_kontener_name').Value := null;
            ClientDS_Fact.FieldByName('display_attr_self_name'    ).Value := null;
          end else begin
            ClientDS_Fact.FieldByName('display_type_kontener_name').Value := ClientDS_Fact.FieldByName('type_kontener_name').Value;
            ClientDS_Fact.FieldByName('display_attr_self_name'    ).Value := ClientDS_Fact.FieldByName('attr_self_name'    ).Value;
          end;

          ClientDS_Fact.Post;
        end;
        ClientDS_Fact.Next
      end;


      ClientDS_Fact.FindKey([pos_fact_id]);
      ClientDS_Fact.EnableControls;
      cxGrid3DBBandedTableView1.Controller.TopRowIndex := pos;

      ClientDS_SumAbs.EmptyDataSet;
      ClientDS_SumAbs.Append;
      ClientDS_SumAbs.FieldByName('id'                 ).Value := 1;
      ClientDS_SumAbs.FieldByName('shaping_rate_val'   ).Value := Client_Contract.FieldByName('shaping_rate_val').Value;
      ClientDS_SumAbs.FieldByName('shaping_rate_count' ).Value := Client_Contract.FieldByName('shaping_rate_count').Value;
      ClientDS_SumAbs.FieldByName('ed_izm_name'        ).Value := Client_Contract.FieldByName('ed_izm_name').Value;
      ClientDS_SumAbs.FieldByName('nds_name'           ).Value := Client_Contract.FieldByName('nds_name').Value;
      if Client_Contract.FieldByName('service_type').AsInteger = 0 then
        ClientDS_SumAbs.FieldByName('fact_sum'           ).Value := Client_Contract.FieldByName('fact_sum').Value
      else
        ClientDS_SumAbs.FieldByName('fact_sum'           ).Value := (-1)*Client_Contract.FieldByName('fact_sum').Value;
      ClientDS_SumAbs.Post;
    end;

    // --------- закладка фрахтовая карточка ------------
    if cxPageControl1.ActivePage = cxTabSheet2 then begin
      FClientDS_FactDetail.DisableControls;
      pos := cxGridDBBandedTableView1.Controller.TopRowIndex;
      pos_fact_id := iif(cxGridDBBandedTableView1fact_id.DataBinding.Field.IsNull, -9, cxGridDBBandedTableView1fact_id.DataBinding.Field.Value);

      ClientDS_RateFact.First;

      FClientDS_FactDetail.First;
      while not FClientDS_FactDetail.Eof do begin
        fact_id := FClientDS_FactDetail.FieldByName('fact_id').AsInteger;

        FClientDS_FactDetail.Edit;

        for i := 0 to FContractList.Count - 1 do begin
          rate_id := StrToInt(FContractList.Strings[i]);
          if ClientDS_RateFact.FindKey([fact_id, rate_id]) then begin
            FClientDS_FactDetail.FieldByName('count_vagon_'  + IntToStr(rate_id)).Value := ClientDS_RateFact.FieldByName('count_vagon').Value;
            FClientDS_FactDetail.FieldByName('count_weight_' + IntToStr(rate_id)).Value := ClientDS_RateFact.FieldByName('count_weight').Value;
            FClientDS_FactDetail.FieldByName('fact_rate_'    + IntToStr(rate_id)).Value := ClientDS_RateFact.FieldByName('fact_rate').Value;
            FClientDS_FactDetail.FieldByName('fact_sum_'     + IntToStr(rate_id)).Value := ClientDS_RateFact.FieldByName('fact_sum').Value;
          end;
        end;

        FClientDS_FactDetail.Post;

        FClientDS_FactDetail.Next;
      end;

      FClientDS_FactDetail.FindKey([pos_fact_id]);
      FClientDS_FactDetail.EnableControls;
      cxGridDBBandedTableView1.Controller.TopRowIndex := pos;
    end;
  end;

  if (Fset_calc_enabled = True) and (Fset_calc_hand = True) then begin
    if cxPageControl1.ActivePage = cxTabSheet1 then begin
      rate_id := cxGrid1DBBandedTableView1global_id.DataBinding.Field.AsInteger;
      pos := cxGrid3DBBandedTableView1.Controller.TopRowIndex;
      pos_fact_id := iif(cxGrid3DBBandedTableView1fact_id.DataBinding.Field.IsNull, -9, cxGrid3DBBandedTableView1fact_id.DataBinding.Field.Value);

      ClientDS_Fact.DisableControls;
      ClientDS_Fact.First;
      while not ClientDS_Fact.Eof do begin

        if ClientDS_RateFact.FindKey([ClientDS_Fact.FieldByName('fact_id').Value, rate_id]) then begin
          ClientDS_Fact.Edit;
          ClientDS_Fact.FieldByName('count_vagon'   ).Value := null;
          ClientDS_Fact.FieldByName('count_weight'  ).Value := null;
          ClientDS_Fact.FieldByName('fact_rate'     ).Value := null;
          ClientDS_Fact.FieldByName('fact_sum'      ).Value := null;
          ClientDS_Fact.FieldByName('type_list_rate').Value := null;
          if ClientDS_Fact.FieldByName('type_list_rate').AsInteger = 2 then begin
            ClientDS_Fact.FieldByName('display_type_kontener_name').Value := null;
            ClientDS_Fact.FieldByName('display_attr_self_name'    ).Value := null;
          end else begin
            ClientDS_Fact.FieldByName('display_type_kontener_name').Value := ClientDS_Fact.FieldByName('type_kontener_name').Value;
            ClientDS_Fact.FieldByName('display_attr_self_name'    ).Value := ClientDS_Fact.FieldByName('attr_self_name'    ).Value;
          end;

          ClientDS_Fact.Post;
        end;

        ClientDS_Fact.Next;
      end;
      ClientDS_Fact.FindKey([pos_fact_id]);
      ClientDS_Fact.EnableControls;
      cxGrid3DBBandedTableView1.Controller.TopRowIndex := pos;
    end;

    if cxPageControl1.ActivePage = cxTabSheet2 then begin
      FClientDS_FactDetail.DisableControls;
      pos := cxGridDBBandedTableView1.Controller.TopRowIndex;
      pos_fact_id := iif(cxGridDBBandedTableView1fact_id.DataBinding.Field.IsNull, -9, cxGridDBBandedTableView1fact_id.DataBinding.Field.Value);

      ClientDS_RateFact.First;

      FClientDS_FactDetail.First;
      while not FClientDS_FactDetail.Eof do begin
        fact_id := FClientDS_FactDetail.FieldByName('fact_id').AsInteger;

        FClientDS_FactDetail.Edit;

        for i := 0 to FContractList.Count - 1 do begin
          rate_id := StrToInt(FContractList.Strings[i]);
          if ClientDS_RateFact.FindKey([fact_id, rate_id]) then begin
            FClientDS_FactDetail.FieldByName('count_vagon_'  + IntToStr(rate_id)).Value := null;
            FClientDS_FactDetail.FieldByName('count_weight_' + IntToStr(rate_id)).Value := null;
            FClientDS_FactDetail.FieldByName('fact_rate_'    + IntToStr(rate_id)).Value := null;
            FClientDS_FactDetail.FieldByName('fact_sum_'     + IntToStr(rate_id)).Value := null;
          end;
        end;

        FClientDS_FactDetail.Post;

        FClientDS_FactDetail.Next;
      end;

      FClientDS_FactDetail.FindKey([pos_fact_id]);
      FClientDS_FactDetail.EnableControls;
      cxGridDBBandedTableView1.Controller.TopRowIndex := pos;
    end;
  end;
end;

procedure TfmBargainList2.AddNewBarButton(var BarSubItem: TdxBarSubItem; Caption: string; Tag: integer; ImageIndex: integer; onObject: TNotifyEvent; set_separator: boolean);
var NewButton     : TdxBarButton;
begin
  NewButton             := TdxBarButton.Create(nil);
  NewButton.Caption     := Caption;
  NewButton.Tag         := Tag;
  NewButton.ImageIndex  := ImageIndex;
  NewButton.OnClick     := onObject;

  if not set_separator then
    BarSubItem.ItemLinks.Add(NewButton)
  else
    BarSubItem.ItemLinks.Add(NewButton).BeginGroup := True;
end;

procedure TfmBargainList2.CalcFrahtSum(type_action: integer; str_fact_id: string);
var sp_fact_by_rate_GET_2: TADOStoredProc;
    dt : TDateTime;
    records_cnt : integer;
    ClientDS    : TClientDataSet;
    pos, pos_contract_id, pos_fact_id : integer;
    contract_id : integer;
begin
  if (Fset_calc_enabled = True) AND (Fset_calc_hand = False) then begin
    ShowTextMessage('Расчет ФК...', False);
    dt := Now;
    sp_fact_by_rate_GET_2 := TADOStoredProc.Create(nil);
    sp_fact_by_rate_GET_2.Connection := Fconnect;
    sp_fact_by_rate_GET_2.ProcedureName := 'sp_fact_by_rate_GET_LL';
    sp_fact_by_rate_GET_2.Parameters.Refresh;
    sp_fact_by_rate_GET_2.Parameters.ParamByName('@bargain_id'  ).Value := Fbargain_id;
    sp_fact_by_rate_GET_2.Parameters.ParamByName('@type_result' ).Value := 3;

    if type_action = 1 then begin
      ClientDS := TClientDataSet.Create(nil);
      ClientDS.FieldDefs.Add('fact_id', ftInteger);
      ClientDS.FieldDefs.Add('type_kontener', ftInteger);
      ClientDS.FieldDefs.Add('attr_self', ftInteger);
      ClientDS.CreateDataSet;
      ClientDS.LogChanges := False;

      ClientDS_Fact.DisableControls;
      pos         := cxGrid3DBBandedTableView1.Controller.TopRowIndex;
      pos_fact_id := iif(cxGrid3DBBandedTableView1fact_id.DataBinding.Field.IsNull, -9, cxGrid3DBBandedTableView1fact_id.DataBinding.Field.Value);
      ClientDS_Fact.First;
      while not ClientDS_Fact.Eof do begin
        ClientDS.Append;
        ClientDS.FieldByName('fact_id'      ).Value := ClientDS_Fact.FieldByName('fact_id').Value;
        ClientDS.FieldByName('type_kontener').Value := ClientDS_Fact.FieldByName('type_kontener').Value;
        ClientDS.FieldByName('attr_self'    ).Value := ClientDS_Fact.FieldByName('attr_self').Value;
        ClientDS.Post;
        ClientDS_Fact.Next;
      end;
      ClientDS_Fact.FindKey([pos_fact_id]);
      ClientDS_Fact.EnableControls;
      cxGrid3DBBandedTableView1.Controller.TopRowIndex := pos;

      sp_fact_by_rate_GET_2.Parameters.ParamByName('@fact_xml'     ).Value := DataXMLToSQL(ClientDS);
      sp_fact_by_rate_GET_2.Parameters.ParamByName('@list_rate_xml').Value := DataXMLToSQL(ClientDS_ListRate);


      ClientDS.Free;
    end;

    sp_fact_by_rate_GET_2.Open;

    // Обновление данных BARGAIN\SHAPING_RATE
    Client_Contract.DisableControls;
    pos := cxGrid1DBBandedTableView1.Controller.TopRowIndex;
    pos_contract_id := iif(cxGrid1DBBandedTableView1global_id.DataBinding.Field.IsNull, -9, cxGrid1DBBandedTableView1global_id.DataBinding.Field.Value);
    sp_fact_by_rate_GET_2.First;
    while not sp_fact_by_rate_GET_2.Eof do begin
      if Client_Contract.FindKey([sp_fact_by_rate_GET_2.FieldByName('rate_id').Value]) then begin
        Client_Contract.Edit;

        Client_Contract.FieldByName('count_vagon'  ).Value := sp_fact_by_rate_GET_2.FieldByName('count_vagon').Value;
        Client_Contract.FieldByName('count_weight' ).Value := sp_fact_by_rate_GET_2.FieldByName('count_weight').Value;
        Client_Contract.FieldByName('shaping_rate_val'  ).Value := sp_fact_by_rate_GET_2.FieldByName('shaping_rate_val').Value;
        Client_Contract.FieldByName('shaping_rate_count').Value := sp_fact_by_rate_GET_2.FieldByName('shaping_rate_count').Value;
        if Client_Contract.FieldByName('service_type').AsInteger = 0 then begin
          Client_Contract.FieldByName('fact_sum'     ).Value := sp_fact_by_rate_GET_2.FieldByName('fact_sum').Value;
          Client_Contract.FieldByName('fact_sum_USD' ).Value := sp_fact_by_rate_GET_2.FieldByName('fact_sum_USD').Value;
          Client_Contract.FieldByName('fact_sum_RUB' ).Value := sp_fact_by_rate_GET_2.FieldByName('fact_sum_RUB').Value;
        end else begin
          Client_Contract.FieldByName('fact_sum'     ).Value := (-1)*sp_fact_by_rate_GET_2.FieldByName('fact_sum').Value;
          Client_Contract.FieldByName('fact_sum_USD' ).Value := (-1)*sp_fact_by_rate_GET_2.FieldByName('fact_sum_USD').Value;
          Client_Contract.FieldByName('fact_sum_RUB' ).Value := (-1)*sp_fact_by_rate_GET_2.FieldByName('fact_sum_RUB').Value;
        end;

        Client_Contract.Post;
      end;
      sp_fact_by_rate_GET_2.Next;
    end;
    Client_Contract.FindKey([pos_contract_id]);
    Client_Contract.EnableControls;

    cxGrid1DBBandedTableView1.Controller.TopRowIndex := pos;
    sp_fact_by_rate_GET_2.Recordset := sp_fact_by_rate_GET_2.NextRecordset(records_cnt);

    ClientDS_RateFact.XMLData := sp_fact_by_rate_GET_2.FieldByName('fact_xml').AsString;


    sp_fact_by_rate_GET_2.Recordset := sp_fact_by_rate_GET_2.NextRecordset(records_cnt);

    ClientDS_SumRate.XMLData :=  sp_fact_by_rate_GET_2.FieldByName('rate_xml').AsString;


    sp_fact_by_rate_GET_2.Free;

    ShowTextMessage();
  end;

  if (Fset_calc_enabled = True) AND (Fset_calc_hand = True) then begin
    Client_Contract.DisableControls;
    contract_id := Client_Contract.FieldByName('global_id').AsInteger;
    Client_Contract.First;
    while not Client_Contract.Eof do begin
      Client_Contract.Edit;
      Client_Contract.FieldByName('count_vagon'  ).Value := null;
      Client_Contract.FieldByName('count_weight' ).Value := null;
      Client_Contract.FieldByName('fact_sum'     ).Value := null;
      Client_Contract.FieldByName('fact_sum_USD' ).Value := null;
      Client_Contract.FieldByName('fact_sum_RUB' ).Value := null;
      Client_Contract.Post;

      Client_Contract.Next;
    end;
    Client_Contract.Locate('global_id', contract_id, []);
    Client_Contract.EnableControls;
  end;
end;

procedure TfmBargainList2.CalcSum(rate_id: integer);
var sp_fact_by_rate_GET_2: TADOStoredProc;
    records_cnt : integer;
    ClientDS : TClientDataSet;
    pos, pos_fact_id, contract_id : integer;
begin
  if (Fset_calc_enabled = True) and (Fset_calc_hand = False) then begin
    ClientDS := TClientDataSet.Create(nil);
    ClientDS.FieldDefs.Add('fact_id', ftInteger);
    ClientDS.FieldDefs.Add('type_kontener', ftInteger);
    ClientDS.FieldDefs.Add('attr_self', ftInteger);
    ClientDS.CreateDataSet;
    ClientDS.LogChanges := False;

    ClientDS_Fact.DisableControls;
    pos := cxGrid3DBBandedTableView1.Controller.TopRowIndex;
    pos_fact_id := cxGrid3DBBandedTableView1fact_id.DataBinding.Field.AsInteger;
    ClientDS_Fact.First;
    while not ClientDS_Fact.Eof do begin
      ClientDS.Append;
      ClientDS.FieldByName('fact_id'      ).Value := ClientDS_Fact.FieldByName('fact_id').Value;
      ClientDS.FieldByName('type_kontener').Value := ClientDS_Fact.FieldByName('type_kontener').Value;
      ClientDS.FieldByName('attr_self'    ).Value := ClientDS_Fact.FieldByName('attr_self').Value;
      ClientDS.Post;

      ClientDS_Fact.Next;
    end;
    ClientDS_Fact.FindKey([pos_fact_id]);
    cxGrid3DBBandedTableView1.Controller.TopRowIndex := pos;
    ClientDS_Fact.EnableControls;

    sp_fact_by_rate_GET_2 := TADOStoredProc.Create(nil);
    sp_fact_by_rate_GET_2.Connection := Fconnect;
    sp_fact_by_rate_GET_2.ProcedureName := 'sp_fact_by_rate_GET_LL';
    sp_fact_by_rate_GET_2.Parameters.Refresh;

    sp_fact_by_rate_GET_2.Parameters.ParamByName('@bargain_id'   ).Value := Fbargain_id;
    sp_fact_by_rate_GET_2.Parameters.ParamByName('@rate_id'      ).Value := rate_id;

    sp_fact_by_rate_GET_2.Parameters.ParamByName('@type_result'  ).Value := 4;

    sp_fact_by_rate_GET_2.Parameters.ParamByName('@list_rate_xml').Value := DataXMLToSQL(ClientDS_ListRate);
    sp_fact_by_rate_GET_2.Parameters.ParamByName('@fact_xml'     ).Value := DataXMLToSQL(ClientDS);

    sp_fact_by_rate_GET_2.Open;

    // Обновление данных
    ClientDS_RateFact.DisableControls;
    sp_fact_by_rate_GET_2.First;
    while not sp_fact_by_rate_GET_2.Eof do begin
      if ClientDS_RateFact.FindKey([sp_fact_by_rate_GET_2.FieldByName('fact_id').Value, sp_fact_by_rate_GET_2.FieldByName('rate_id').Value]) then begin
        ClientDS_RateFact.Edit;
        ClientDS_RateFact.FieldByName('count_vagon'   ).Value := sp_fact_by_rate_GET_2.FieldByName('count_vagon').Value;
        ClientDS_RateFact.FieldByName('count_weight'  ).Value := sp_fact_by_rate_GET_2.FieldByName('count_weight').Value;
        ClientDS_RateFact.FieldByName('fact_rate'     ).Value := sp_fact_by_rate_GET_2.FieldByName('fact_rate').Value;
        ClientDS_RateFact.FieldByName('fact_sum'      ).Value := sp_fact_by_rate_GET_2.FieldByName('fact_sum').Value;
        ClientDS_RateFact.FieldByName('type_list_rate').Value := sp_fact_by_rate_GET_2.FieldByName('type_list_rate').Value;
        ClientDS_RateFact.Post;
      end;
      sp_fact_by_rate_GET_2.Next;
    end;
    ClientDS_RateFact.EnableControls;

    Client_Contract.DisableControls;
    sp_fact_by_rate_GET_2.Recordset := sp_fact_by_rate_GET_2.NextRecordset(records_cnt);
    sp_fact_by_rate_GET_2.First;
    while not sp_fact_by_rate_GET_2.Eof do begin
      if Client_Contract.FindKey([sp_fact_by_rate_GET_2.FieldByName('rate_id').Value]) then begin
        Client_Contract.Edit;

        Client_Contract.FieldByName('count_vagon'  ).Value := sp_fact_by_rate_GET_2.FieldByName('count_vagon').Value;
        Client_Contract.FieldByName('count_weight' ).Value := sp_fact_by_rate_GET_2.FieldByName('count_weight').Value;
        Client_Contract.FieldByName('shaping_rate_val'  ).Value := sp_fact_by_rate_GET_2.FieldByName('shaping_rate_val').Value;
        Client_Contract.FieldByName('shaping_rate_count').Value := sp_fact_by_rate_GET_2.FieldByName('shaping_rate_count').Value;
        if Client_Contract.FieldByName('service_type').AsInteger = 0 then begin
          Client_Contract.FieldByName('fact_sum'     ).Value := sp_fact_by_rate_GET_2.FieldByName('fact_sum').Value;
          Client_Contract.FieldByName('fact_sum_USD' ).Value := sp_fact_by_rate_GET_2.FieldByName('fact_sum_USD').Value;
          Client_Contract.FieldByName('fact_sum_RUB' ).Value := sp_fact_by_rate_GET_2.FieldByName('fact_sum_RUB').Value;
        end else begin
          Client_Contract.FieldByName('fact_sum'     ).Value := (-1)*sp_fact_by_rate_GET_2.FieldByName('fact_sum').Value;
          Client_Contract.FieldByName('fact_sum_USD' ).Value := (-1)*sp_fact_by_rate_GET_2.FieldByName('fact_sum_USD').Value;
          Client_Contract.FieldByName('fact_sum_RUB' ).Value := (-1)*sp_fact_by_rate_GET_2.FieldByName('fact_sum_RUB').Value;
        end;


        Client_Contract.Post;
      end;
      sp_fact_by_rate_GET_2.Next;
    end;
    Client_Contract.EnableControls;


    ClientDS_SumRate.DisableControls;
    ClientDS_SumRate.Filter   := 'rate_id=' + IntToStr(rate_id);
    ClientDS_SumRate.Filtered := True;
    ClientDS_SumRate.First;
    while not ClientDS_SumRate.Eof do begin
      ClientDS_SumRate.Delete;
    end;
    ClientDS_SumRate.Filter   := '';
    ClientDS_SumRate.Filtered := False;


    sp_fact_by_rate_GET_2.Recordset := sp_fact_by_rate_GET_2.NextRecordset(records_cnt);
    sp_fact_by_rate_GET_2.First;
    while not sp_fact_by_rate_GET_2.Eof do begin

      ClientDS_SumRate.Append;
      ClientDS_SumRate.FieldByName('rw_id'               ).Value := sp_fact_by_rate_GET_2.FieldByName('rw_id').Value;
      ClientDS_SumRate.FieldByName('rate_id'             ).Value := sp_fact_by_rate_GET_2.FieldByName('rate_id').Value;
      ClientDS_SumRate.FieldByName('count_vagon'         ).Value := sp_fact_by_rate_GET_2.FieldByName('count_vagon').Value;
      ClientDS_SumRate.FieldByName('count_weight'        ).Value := sp_fact_by_rate_GET_2.FieldByName('count_weight').Value;
      ClientDS_SumRate.FieldByName('fact_rate'           ).Value := sp_fact_by_rate_GET_2.FieldByName('fact_rate').Value;
      ClientDS_SumRate.FieldByName('fact_sum'            ).Value := sp_fact_by_rate_GET_2.FieldByName('fact_sum').Value;
      ClientDS_SumRate.FieldByName('fact_sum_RUB'        ).Value := sp_fact_by_rate_GET_2.FieldByName('fact_sum_RUB').Value;
      ClientDS_SumRate.FieldByName('fact_sum_notNDS_RUB' ).Value := sp_fact_by_rate_GET_2.FieldByName('fact_sum_notNDS_RUB').Value;
      ClientDS_SumRate.FieldByName('fact_sum_USD'        ).Value := sp_fact_by_rate_GET_2.FieldByName('fact_sum_USD').Value;
      ClientDS_SumRate.FieldByName('fact_sum_notNDS_USD' ).Value := sp_fact_by_rate_GET_2.FieldByName('fact_sum_notNDS_USD').Value;
      ClientDS_SumRate.FieldByName('nds_name'            ).Value := sp_fact_by_rate_GET_2.FieldByName('nds_name').Value;
      ClientDS_SumRate.Post;

      sp_fact_by_rate_GET_2.Next;
    end;
    ClientDS_SumRate.EnableControls;




    ClientDS.Free;
    sp_fact_by_rate_GET_2.Free;
  end;

  if (Fset_calc_enabled = True) and (Fset_calc_hand = True) then begin
    Client_Contract.DisableControls;
    contract_id := Client_Contract.FieldByName('global_id').AsInteger;
    Client_Contract.First;
    while not Client_Contract.Eof do begin
      Client_Contract.Edit;
      Client_Contract.FieldByName('count_vagon'  ).Value := null;
      Client_Contract.FieldByName('count_weight' ).Value := null;
      Client_Contract.FieldByName('fact_sum'     ).Value := null;
      Client_Contract.FieldByName('fact_sum_USD' ).Value := null;
      Client_Contract.FieldByName('fact_sum_RUB' ).Value := null;
      Client_Contract.Post;

      Client_Contract.Next;
    end;
    Client_Contract.Locate('global_id', contract_id, []);
    Client_Contract.EnableControls;
  end;
end;

procedure TfmBargainList2.ClearListRate(rate_id: integer; type_tools_id: integer; attr_self_id: integer);
begin
  ClientDS_ListRate.DisableControls;
  ClientDS_ListRate.AfterPost := nil;
  ClientDS_ListRate.AfterDelete := nil;
  ClientDS_ListRate.Filter := '';
  ClientDS_ListRate.Filtered := False;


  ClientDS_ListRate.Filter := 'rate_id=' + IntToStr(rate_id);
  if type_tools_id <> -9 then
    ClientDS_ListRate.Filter := ClientDS_ListRate.Filter + ' AND type_tools_id=' + IntTostr(type_tools_id);
  if attr_self_id <> -9  then
    ClientDS_ListRate.Filter := ClientDS_ListRate.Filter + ' AND attr_self=' + IntTostr(attr_self_id);


  ClientDS_ListRate.Filtered := True;

  while not ClientDS_ListRate.Eof do
    ClientDS_ListRate.Delete;

  ClientDS_ListRate.AfterPost := ClientDS_ListRateAfterPost;
  ClientDS_ListRate.AfterDelete := ClientDS_ListRateAfterDelete;
  ClientDS_ListRate.EnableControls;

  RefreshListRate();
  CalcSum(rate_id);
  UpdateSum;
  UpdateSumResult;
end;


procedure TfmBargainList2.GetCalcListRateNew(rate_id: integer; type_calc: integer);
var
  sp_Bargain_List_Rate_Client : TADOStoredProc;
  percent : Currency;
  s : string;
  ClientDS : TClientDataSet;
begin
  percent := 0;
  case type_calc of
    1 : begin
          s := '0';
          if InputQuery('Введите процент', 'Введите процент', s) then begin
            try
              Percent := StrToCurr(s);
            except
              Application.MessageBox('Процент введен не правильно!', 'Внимание', MB_OK);
              exit;
            end;
          end else exit;
        end;
    3 : begin
          s := '18';
          if InputQuery('Введите процент', 'Введите процент', s) then begin
            try
              Percent := StrToCurr(s);
            except
              Application.MessageBox('Процент введен не правильно!', 'Внимание', MB_OK);
              exit;
            end;
          end else exit;
        end;
    9,10 :  begin
              s := '0,5';
              if InputQuery('Введите процент', 'Введите процент', s) then begin
                 try
                  Percent := StrToCurr(s);
                except
                  Application.MessageBox('Процент введен не правильно!', 'Внимание', MB_OK);
                  exit;
                end;
              end else exit;
            end;
  end;

  Screen.Cursor := crHourglass;
  ShowTextMessage('Расчет ставок...', False);

  ClientDS := TClientDataSet.Create(nil);
  ClientDS.FieldDefs.Add('fact_id', ftInteger);
  ClientDS.FieldDefs.Add('type_kontener', ftInteger);
  ClientDS.FieldDefs.Add('attr_self', ftInteger);
  ClientDS.CreateDataSet;
  ClientDS.LogChanges := False;

  ClientDS_Fact.DisableControls;
  ClientDS_Fact.First;
  while not ClientDS_Fact.Eof do begin
    ClientDS.Append;
    ClientDS.FieldByName('fact_id'      ).Value := ClientDS_Fact.FieldByName('fact_id').Value;
    ClientDS.FieldByName('type_kontener').Value := ClientDS_Fact.FieldByName('type_kontener').Value;
    ClientDS.FieldByName('attr_self'    ).Value := ClientDS_Fact.FieldByName('attr_self').Value;
    ClientDS.Post;
    ClientDS_Fact.Next;
  end;
  ClientDS_Fact.EnableControls;

  sp_Bargain_List_Rate_Client                 := TADOStoredProc.Create(nil);
  sp_Bargain_List_Rate_Client.CommandTimeout  := 100;
  sp_Bargain_List_Rate_Client.Connection      := Fconnect;
  sp_Bargain_List_Rate_Client.ProcedureName   := 'sp_Bargain_List_Rate_Client';
  sp_Bargain_List_Rate_Client.Close;
  sp_Bargain_List_Rate_Client.Parameters.Refresh;
  sp_Bargain_List_Rate_Client.Parameters.ParamByName('@rate_id'  ).Value := rate_id;
  sp_Bargain_List_Rate_Client.Parameters.ParamByName('@type_calc').Value := type_calc;
  if percent <> 0 then sp_Bargain_List_Rate_Client.Parameters.ParamByName('@percent').Value := Percent;

  sp_Bargain_List_Rate_Client.Parameters.ParamByName('@rate_xml'  ).Value := DataXMLToSQL(ClientDS_ListRate);
  sp_Bargain_List_Rate_Client.Parameters.ParamByName('@fact_xml'  ).Value := DataXMLToSQL(ClientDS);
  sp_Bargain_List_Rate_Client.Open;

  if sp_Bargain_List_Rate_Client.Parameters.ParamByName('@rate_id').Value = - 9 then begin
    Application.MessageBox('Не удалось обновить ставки', 'Ошибка', MB_OK + MB_ICONSTOP);
    sp_Bargain_List_Rate_Client.Free;
    Screen.Cursor := crDefault;
    exit;
  end;


  Fset_calc_enabled := False;
  ClientDS_ListRate.DisableControls;
  while not sp_Bargain_List_Rate_Client.Recordset.EOF do begin

    ClientDS_ListRate.Append;
    ClientDS_ListRate.FieldByName('rate_id').Value         := sp_Bargain_List_Rate_Client.FieldByName('rate_id').Value;
    ClientDS_ListRate.FieldByName('type_rate').Value       := sp_Bargain_List_Rate_Client.FieldByName('type_rate').Value;
    ClientDS_ListRate.FieldByName('type_tools_id').Value   := sp_Bargain_List_Rate_Client.FieldByName('type_tools_id').Value;
    ClientDS_ListRate.FieldByName('attr_self').Value       := sp_Bargain_List_Rate_Client.FieldByName('attr_self').Value;
    ClientDS_ListRate.FieldByName('weight').Value          := sp_Bargain_List_Rate_Client.FieldByName('weight').Value;
    ClientDS_ListRate.FieldByName('rate_val').Value        := RoundCurr(sp_Bargain_List_Rate_Client.FieldByName('rate_val').Value, -2);
    ClientDS_ListRate.FieldByName('set_one').Value         := sp_Bargain_List_Rate_Client.FieldByName('set_one').Value;

    if Query_TypeTools.Locate('inf_obj_id', sp_Bargain_List_Rate_Client.FieldByName('type_tools_id').Value, []) then
      ClientDS_ListRate.FieldByName('type_tools_name').Value := Query_TypeTools.FieldByName('inf_obj_name').Value;
    if Query_AttrSelf.Locate('attr_self', sp_Bargain_List_Rate_Client.FieldByName('attr_self').Value, []) then
      ClientDS_ListRate.FieldByName('attr_self_name').Value  := Query_AttrSelf.FieldByName('attr_self_name').Value;

    ClientDS_ListRate.Post;

    sp_Bargain_List_Rate_Client.Next;
  end;
  ClientDS_ListRate.EnableControls;

  ShowTextMessage;

  Fset_calc_enabled := True;
  CalcSum(rate_id);
  UpdateSum;
  UpdateSumResult;

  sp_Bargain_List_Rate_Client.Free;
  ClientDS.Free;
  Screen.Cursor := crDefault;
end;

//procedure TfmBargainList.GetCalcListRate(rate_id: integer; type_calc: integer);
//var sp_Bargain_List_Rate_Client1 : TADOStoredProc;
//    percent : Currency;
//          s : string;
//begin
//  percent := 0;
//  case type_calc of
//    1 : begin
//          s := InputBox('','Введите процент', '0');
//          if s <> '' then begin
//            try
//              Percent := StrToCurr(s);
//            except
//              Application.MessageBox('Процент введен не правильно!', 'Внимание', MB_OK);
//              exit;
//            end;
//          end else exit;
//        end;
//    3 : begin
//          s := InputBox('','Введите процент', '18');
//          if s <> '' then begin
//            try
//              Percent := StrToCurr(s);
//            except
//              Application.MessageBox('Процент введен не правильно!', 'Внимание', MB_OK);
//              exit;
//            end;
//          end else exit;
//        end;
//    9,10 :  begin
//              s := InputBox('','Введите процент', '0,5');
//              if s <> '' then begin
//                try
//                  Percent := StrToCurr(s);
//                except
//                  Application.MessageBox('Процент введен не правильно!', 'Внимание', MB_OK);
//                  exit;
//                end;
//              end else exit;
//            end;
//  end;
//
//  Screen.Cursor := crHourglass;
//
//  sp_Bargain_List_Rate_Client1                 := TADOStoredProc.Create(nil);
//  sp_Bargain_List_Rate_Client1.CommandTimeout  := 100;
//  sp_Bargain_List_Rate_Client1.Connection      := Fconnect;
//  sp_Bargain_List_Rate_Client1.ProcedureName   := 'sp_Bargain_List_Rate_Client1;1';
//  sp_Bargain_List_Rate_Client1.Close;
//  sp_Bargain_List_Rate_Client1.Parameters.Refresh;
//  sp_Bargain_List_Rate_Client1.Parameters.ParamByName('@rate_id'  ).Value := rate_id;
//  sp_Bargain_List_Rate_Client1.Parameters.ParamByName('@flag'     ).Value := type_calc;
//  if percent <> 0 then
//    sp_Bargain_List_Rate_Client1.Parameters.ParamByName('@percent').Value := Percent;
//  sp_Bargain_List_Rate_Client1.Open;
//
//  if sp_Bargain_List_Rate_Client1.Parameters.ParamByName('@rate_id').Value = - 9 then begin
//    Application.MessageBox('Не удалось обновить ставки', 'Ошибка', MB_OK + MB_ICONSTOP);
//    sp_Bargain_List_Rate_Client1.Free;
//    Screen.Cursor := crDefault;
//    exit;
//  end;
//
//
//  ClientDS_ListRate.DisableControls;
//  while not sp_Bargain_List_Rate_Client1.Recordset.EOF do begin
//
//    ClientDS_ListRate.Append;
//    ClientDS_ListRate.FieldByName('rate_id').Value         := sp_Bargain_List_Rate_Client1.FieldByName('rate_id').Value;
//    ClientDS_ListRate.FieldByName('type_rate').Value       := sp_Bargain_List_Rate_Client1.FieldByName('type_rate').Value;
//    ClientDS_ListRate.FieldByName('type_tools_id').Value   := sp_Bargain_List_Rate_Client1.FieldByName('type_tools_id').Value;
//    ClientDS_ListRate.FieldByName('attr_self').Value       := sp_Bargain_List_Rate_Client1.FieldByName('attr_self').Value;
//    ClientDS_ListRate.FieldByName('weight').Value          := sp_Bargain_List_Rate_Client1.FieldByName('weight').Value;
//    ClientDS_ListRate.FieldByName('rate_val').Value        := RoundCurr(sp_Bargain_List_Rate_Client1.FieldByName('rate_val').Value, -2);
//    ClientDS_ListRate.FieldByName('set_one').Value         := sp_Bargain_List_Rate_Client1.FieldByName('set_one').Value;
//
//    if Query_TypeTools.Locate('inf_obj_id', sp_Bargain_List_Rate_Client1.FieldByName('type_tools_id').Value, []) then
//      ClientDS_ListRate.FieldByName('type_tools_name').Value := Query_TypeTools.FieldByName('inf_obj_name').Value;
//    if Query_AttrSelf.Locate('attr_self', sp_Bargain_List_Rate_Client1.FieldByName('attr_self').Value, []) then
//      ClientDS_ListRate.FieldByName('attr_self_name').Value  := Query_AttrSelf.FieldByName('attr_self_name').Value;
//
//    ClientDS_ListRate.Post;
//
//    sp_Bargain_List_Rate_Client1.Next;
//  end;
//  ClientDS_ListRate.EnableControls;
//
//  sp_Bargain_List_Rate_Client1.Free;
//  Screen.Cursor := crDefault;
//end;

procedure TfmBargainList2.FunctionRate1(Sender: TObject);
begin
  if Application.MessageBox(PChar('Все старые ставки будут удалены!' + Chr(13) + 'Обновить ставки?'), 'Внимание', MB_OKCANCEL + MB_ICONWARNING) = ID_OK then begin
    if Client_Contract.Locate('global_id', (Sender as TdxBarButton).Tag, []) then begin
      ClearListRate((Sender as TdxBarButton).Tag, -9, -9);
      GetCalcListRateNew(TdxBarButton(Sender).Tag, 1);
    end;
  end;
end;

procedure TfmBargainList2.FunctionRate2(Sender: TObject);
begin
  if Application.MessageBox(PChar('Все старые ставки будут удалены!' + Chr(13) + 'Обновить ставки?'), 'Внимание', MB_OKCANCEL + MB_ICONWARNING) = ID_OK then begin
    if Client_Contract.Locate('global_id', (Sender as TdxBarButton).Tag, []) then begin
      ClearListRate((Sender as TdxBarButton).Tag, -9, -9);
      GetCalcListRateNew(TdxBarButton(Sender).Tag, 2);
    end;
  end;
end;

procedure TfmBargainList2.FunctionRate3(Sender: TObject);
begin
  if Application.MessageBox(PChar('Все старые ставки будут удалены!' + Chr(13) + 'Обновить ставки?'), 'Внимание', MB_OKCANCEL + MB_ICONWARNING) = ID_OK then begin
    if Client_Contract.Locate('global_id', (Sender as TdxBarButton).Tag, []) then begin
      ClearListRate((Sender as TdxBarButton).Tag, -9, -9);
      GetCalcListRateNew(TdxBarButton(Sender).Tag, 3);
    end;
  end;
end;

procedure TfmBargainList2.FunctionRate4(Sender: TObject);
begin
  if Application.MessageBox(PChar('Все старые ставки будут удалены!' + Chr(13) + 'Обновить ставки?'), 'Внимание', MB_OKCANCEL + MB_ICONWARNING) = ID_OK then begin
    if Client_Contract.Locate('global_id', (Sender as TdxBarButton).Tag, []) then begin
      ClearListRate((Sender as TdxBarButton).Tag, -9, -9);
      GetCalcListRateNew(TdxBarButton(Sender).Tag, 4);
    end;
  end;
end;

procedure TfmBargainList2.FunctionRate9(Sender: TObject);
begin
  if Application.MessageBox(PChar('Все старые ставки будут удалены!' + Chr(13) + 'Обновить ставки?'), 'Внимание', MB_OKCANCEL + MB_ICONWARNING) = ID_OK then begin
    if Client_Contract.Locate('global_id', (Sender as TdxBarButton).Tag, []) then begin
      ClearListRate((Sender as TdxBarButton).Tag, -9, -9);
      GetCalcListRateNew(TdxBarButton(Sender).Tag, 9);
    end;
  end;
end;

procedure TfmBargainList2.FunctionRate10(Sender: TObject);
begin
  if Application.MessageBox(PChar('Все старые ставки будут удалены!' + Chr(13) + 'Обновить ставки?'), 'Внимание', MB_OKCANCEL + MB_ICONWARNING) = ID_OK then begin
    if Client_Contract.Locate('global_id', (Sender as TdxBarButton).Tag, []) then begin
      ClearListRate((Sender as TdxBarButton).Tag, -9, -9);
      GetCalcListRateNew(TdxBarButton(Sender).Tag, 10);
    end;
  end;
end;

procedure TfmBargainList2.FunctionRate11(Sender: TObject);
begin
  if Application.MessageBox(PChar('Все старые ставки будут удалены!' + Chr(13) + 'Обновить ставки?'), 'Внимание', MB_OKCANCEL + MB_ICONWARNING) = ID_OK then begin
    if Client_Contract.Locate('global_id', (Sender as TdxBarButton).Tag, []) then begin
      ClearListRate((Sender as TdxBarButton).Tag, -9, -9);
      GetCalcListRateNew(TdxBarButton(Sender).Tag, 11);
    end;
  end;
end;

procedure TfmBargainList2.FunctionRate12(Sender: TObject);
begin
  if Application.MessageBox(PChar('Все старые ставки будут удалены!' + Chr(13) + 'Обновить ставки?'), 'Внимание', MB_OKCANCEL + MB_ICONWARNING) = ID_OK then begin
    if Client_Contract.Locate('global_id', (Sender as TdxBarButton).Tag, []) then begin
      ClearListRate((Sender as TdxBarButton).Tag, -9, -9);
      GetCalcListRateNew(TdxBarButton(Sender).Tag, 12);
    end;
  end;
end;

procedure TfmBargainList2.FunctionRate13(Sender: TObject);
begin
  if Application.MessageBox(PChar('Все старые ставки будут удалены!' + Chr(13) + 'Обновить ставки?'), 'Внимание', MB_OKCANCEL + MB_ICONWARNING) = ID_OK then begin
    if Client_Contract.Locate('global_id', (Sender as TdxBarButton).Tag, []) then begin
      ClearListRate((Sender as TdxBarButton).Tag, -9, -9);
      GetCalcListRateNew(TdxBarButton(Sender).Tag, 13);
    end;
  end;
end;

procedure TfmBargainList2.FunctionRate52(Sender: TObject);
begin
  if Application.MessageBox(PChar('Все старые ставки будут удалены!' + Chr(13) + 'Обновить ставки?'), 'Внимание', MB_OKCANCEL + MB_ICONWARNING) = ID_OK then begin
    if Client_Contract.Locate('global_id', (Sender as TdxBarButton).Tag, []) then begin
      ClearListRate(TdxBarButton(Sender).Tag, -9, -9);
      GetRateFromFact(TdxBarButton(Sender).Tag);
    end;
  end;
end;

procedure TfmBargainList2.FunctionRate14(Sender: TObject);
var from_global_id : integer;
    to_global_id   : integer;
    ClientDS       : TClientDataSet;
    array_rate_id  : Variant;
                 i : integer;
begin
  from_global_id := cxGrid1DBBandedTableView1global_id.DataBinding.Field.AsInteger;
  to_global_id   := (Sender as TdxBarButton).Tag;

  array_rate_id := VarArrayCreate([0, cxGridDBBandedTableView2.Controller.SelectedRecordCount], varInteger);
  for i:=0 to cxGridDBBandedTableView2.Controller.SelectedRecordCount - 1 do
      array_rate_id[i] := cxGridDBBandedTableView2.Controller.SelectedRows[i].Values[cxGridDBBandedTableView2id.Index];

  if Application.MessageBox(PChar('Скопировать выделенные ставки на контрагента ' + (Sender as TdxBarButton).Caption + '?'), 'Внимание', MB_ICONQUESTION or MB_OKCANCEL) = ID_OK then begin
    Client_Contract.Locate('global_id', to_global_id, []);

    ClientDS := TClientDataSet.Create(nil);
    ClientDS.Data := ClientDS_ListRate.Data;

    Fset_calc_enabled := False;
    ClientDS_ListRate.DisableControls;

    for i:= VarArrayLowBound(array_rate_id, 1) to VarArrayHighBound(array_rate_id, 1)-1 do begin
      if ClientDS.Locate('id', array_rate_id[i], []) then begin
        if not ClientDS_ListRate.Locate('rate_id;type_tools_id;attr_self;weight;set_one',
                VarArrayOf([to_global_id, ClientDS.FieldByName('type_tools_id').Value, ClientDS.FieldByName('attr_self').Value, ClientDS.FieldByName('weight').Value, ClientDS.FieldByName('set_one').Value]), []) then begin
          ClientDS_ListRate.Append;
          ClientDS_ListRate.FieldByName('rate_id'         ).Value := to_global_id;
          ClientDS_ListRate.FieldByName('type_tools_id'   ).Value := ClientDS.FieldByName('type_tools_id'   ).Value;
          ClientDS_ListRate.FieldByName('attr_self'       ).Value := ClientDS.FieldByName('attr_self'       ).Value;
          ClientDS_ListRate.FieldByName('rate_val'        ).Value := ClientDS.FieldByName('rate_val'        ).Value;
          ClientDS_ListRate.FieldByName('type_tools_name' ).Value := ClientDS.FieldByName('type_tools_name' ).Value;
          ClientDS_ListRate.FieldByName('attr_self_name'  ).Value := ClientDS.FieldByName('attr_self_name'  ).Value;
          ClientDS_ListRate.FieldByName('weight'          ).Value := ClientDS.FieldByName('weight'          ).Value;
          ClientDS_ListRate.FieldByName('set_one'         ).Value := ClientDS.FieldByName('set_one'         ).Value;
          ClientDS_ListRate.Post;
        end;
      end;
      ShowTextMessage('Перенос ставок. ' + IntToStr(i) + ' из ' + IntToStr(VarArrayHighBound(array_rate_id, 1)) + ' ...', False);
    end;

    ClientDS.Free;
    ShowTextMessage;
    ClientDS_ListRate.EnableControls;
    Fset_calc_enabled := True;
    CalcFrahtSum(1, '');
    UpdateSum;
    UpdateSumResult;
  end;
end;


procedure TfmBargainList2.FunctionRate15(Sender: TObject);
var from_global_id : integer;
    to_global_id   : integer;

    from_curr_id : integer;
    to_curr_id   : integer;

    exch_val : Double;

    ClientDS       : TClientDataSet;
    array_rate_id  : Variant;
                 i : integer;
                 Q : TADOQuery;
begin
  from_global_id := cxGrid1DBBandedTableView1global_id.DataBinding.Field.AsInteger;
  to_global_id   := (Sender as TdxBarButton).Tag;

  array_rate_id := VarArrayCreate([0, cxGridDBBandedTableView2.Controller.SelectedRecordCount], varInteger);
  for i:=0 to cxGridDBBandedTableView2.Controller.SelectedRecordCount - 1 do
      array_rate_id[i] := cxGridDBBandedTableView2.Controller.SelectedRows[i].Values[cxGridDBBandedTableView2id.Index];

  if Application.MessageBox(PChar('Скопировать выделенные ставки на контрагента ' + (Sender as TdxBarButton).Caption + '?'), 'Внимание', MB_ICONQUESTION or MB_OKCANCEL) = ID_OK then begin
    Client_Contract.Locate('global_id', from_global_id, []);
    from_curr_id := Client_Contract.FieldByName('currency_id').AsInteger;

    Client_Contract.Locate('global_id', to_global_id, []);
    to_curr_id := Client_Contract.FieldByName('currency_id').AsInteger;


    Q := TADOQuery.Create(nil);
    Q.Connection := Fconnect;
    Q.SQL.Add('SELECT	dbo.func_GetExchangeNew_Period(' + IntToStr(to_curr_id) + ', ' + IntToStr(from_curr_id) + ', exchange_USD_val, exchange_CHF_val, exchange_EUR_val, date_period, 0) as exch_val');
    Q.SQL.Add('FROM	view_bargain WHERE	bargain_id = ' + IntToStr(Fbargain_id));
    Q.Open;
    exch_val := Q.FieldByName('exch_val').AsFloat;


    ClientDS := TClientDataSet.Create(nil);
    ClientDS.Data := ClientDS_ListRate.Data;

    Fset_calc_enabled := False;
    ClientDS_ListRate.DisableControls;

    for i:= VarArrayLowBound(array_rate_id, 1) to VarArrayHighBound(array_rate_id, 1)-1 do begin
      if ClientDS.Locate('id', array_rate_id[i], []) then begin
        if not ClientDS_ListRate.Locate('rate_id;type_tools_id;attr_self;weight;set_one',
                VarArrayOf([to_global_id, ClientDS.FieldByName('type_tools_id').Value, ClientDS.FieldByName('attr_self').Value, ClientDS.FieldByName('weight').Value, ClientDS.FieldByName('set_one').Value]), []) then begin
          ClientDS_ListRate.Append;
          ClientDS_ListRate.FieldByName('rate_id'         ).Value := to_global_id;
          ClientDS_ListRate.FieldByName('type_tools_id'   ).Value := ClientDS.FieldByName('type_tools_id'   ).Value;
          ClientDS_ListRate.FieldByName('attr_self'       ).Value := ClientDS.FieldByName('attr_self'       ).Value;
          ClientDS_ListRate.FieldByName('rate_val'        ).Value := ClientDS.FieldByName('rate_val'        ).Value * exch_val;
          ClientDS_ListRate.FieldByName('type_tools_name' ).Value := ClientDS.FieldByName('type_tools_name' ).Value;
          ClientDS_ListRate.FieldByName('attr_self_name'  ).Value := ClientDS.FieldByName('attr_self_name'  ).Value;
          ClientDS_ListRate.FieldByName('weight'          ).Value := ClientDS.FieldByName('weight'          ).Value;
          ClientDS_ListRate.FieldByName('set_one'         ).Value := ClientDS.FieldByName('set_one'         ).Value;
          ClientDS_ListRate.Post;
        end;
      end;
      ShowTextMessage('Перенос ставок. ' + IntToStr(i) + ' из ' + IntToStr(VarArrayHighBound(array_rate_id, 1)) + ' ...', False);
    end;

    ClientDS.Free;
    ShowTextMessage;
    ClientDS_ListRate.EnableControls;
    Fset_calc_enabled := True;
    CalcFrahtSum(1, '');
    UpdateSum;
    UpdateSumResult;
    Q.Free;
  end;
end;


procedure TfmBargainList2.FunctionRate50(Sender: TObject);
var SP_Bargain_List_Rate_ModuleSum : TADOStoredProc;
    rate_id : integer;
    ClientDS : TClientDataSet;
begin
  if Application.MessageBox(PChar('Все старые ставки будут удалены!' + Chr(13) + 'Обновить ставки?'), 'Внимание', MB_OKCANCEL + MB_ICONWARNING) = ID_OK then begin
    if Client_Contract.Locate('global_id', (Sender as TdxBarButton).Tag, []) then begin
      rate_id := (Sender as TdxBarButton).Tag;
      ClearListRate(rate_id, -9, -9);

      ClientDS := TClientDataSet.Create(nil);
      ClientDS.FieldDefs.Add('fact_id', ftInteger);
      ClientDS.FieldDefs.Add('type_kontener', ftInteger);
      ClientDS.FieldDefs.Add('attr_self', ftInteger);
      ClientDS.CreateDataSet;
      ClientDS.LogChanges := False;

      ClientDS_Fact.DisableControls;
      ClientDS_Fact.First;
      while not ClientDS_Fact.Eof do begin
        ClientDS.Append;
        ClientDS.FieldByName('fact_id'      ).Value := ClientDS_Fact.FieldByName('fact_id').Value;
        ClientDS.FieldByName('type_kontener').Value := ClientDS_Fact.FieldByName('type_kontener').Value;
        ClientDS.FieldByName('attr_self'    ).Value := ClientDS_Fact.FieldByName('attr_self').Value;
        ClientDS.Post;
        ClientDS_Fact.Next;
      end;
      ClientDS_Fact.EnableControls;

      SP_Bargain_List_Rate_ModuleSum := TADOStoredProc.Create(nil);
      SP_Bargain_List_Rate_ModuleSum.Connection := Fconnect;
      SP_Bargain_List_Rate_ModuleSum.ProcedureName := 'SP_Bargain_List_Rate_ModuleSum';
      SP_Bargain_List_Rate_ModuleSum.Parameters.Refresh;
      SP_Bargain_List_Rate_ModuleSum.Parameters.ParamByName('@bargain_id').Value := Fbargain_id;
      SP_Bargain_List_Rate_ModuleSum.Parameters.ParamByName('@rate_id'   ).Value := rate_id;
      SP_Bargain_List_Rate_ModuleSum.Parameters.ParamByName('@fact_xml'  ).Value := DataXMLToSQL(ClientDS);
      SP_Bargain_List_Rate_ModuleSum.Open;

      while not SP_Bargain_List_Rate_ModuleSum.Eof do begin

        ClientDS_ListRate.Append;
        ClientDS_ListRate.FieldByName('rate_id'         ).Value:= rate_id;
        ClientDS_ListRate.FieldByName('type_rate'       ).Value:= 1;
        ClientDS_ListRate.FieldByName('type_tools_id'   ).Value:= SP_Bargain_List_Rate_ModuleSum.FieldByName('type_tools_id').Value;
        ClientDS_ListRate.FieldByName('attr_self'       ).Value:= SP_Bargain_List_Rate_ModuleSum.FieldByName('attr_self').Value;
        ClientDS_ListRate.FieldByName('type_tools_name' ).Value:= SP_Bargain_List_Rate_ModuleSum.FieldByName('type_tools_name').Value;
        ClientDS_ListRate.FieldByName('attr_self_name'  ).Value:= SP_Bargain_List_Rate_ModuleSum.FieldByName('attr_self_name').Value;
        ClientDS_ListRate.FieldByName('weight'          ).Value:= SP_Bargain_List_Rate_ModuleSum.FieldByName('weight').Value;
        ClientDS_ListRate.FieldByName('rate_val'        ).Value:= SP_Bargain_List_Rate_ModuleSum.FieldByName('rate_val').Value;
        ClientDS_ListRate.FieldByName('set_one'         ).Value:= False;
        ClientDS_ListRate.Post;

        SP_Bargain_List_Rate_ModuleSum.Next;
      end;

      ClientDS.Free;
      SP_Bargain_List_Rate_ModuleSum.Free;
    end;
  end;
end;


procedure TfmBargainList2.FunctionRate51(Sender: TObject);
type
  TFunc = function (AppHand: THandle; usr_pwd: PUser_pwd; var ClientDS: TClientDataSet): variant;
var
  FFunc  : TFunc;
  handle : THandle;
  v      : Variant;
       ClientDS : TClientDataSet;
              Q : TADOQuery;
 kargoETSNG_cod : string;
    str_fact_id : string;
              i : integer;
  array_fact_id : Variant;
     rate_value : Double;
begin
  Client_Contract.Locate('global_id', (Sender as TdxBarButton).Tag, []);
  if Client_Contract.FieldByName('ed_izm_cod').AsString <> '002' then begin
    Application.MessageBox('Ставка должна быть указана «за вагон»!', 'Внимание', MB_ICONWARNING or MB_OK);
    Exit;
  end;

  if cxPageControl1.ActivePage <> cxTabSheet1 then begin
    Application.MessageBox('Перейдите на вкладку "Контрагент" и выберите вагоны!', 'Внимание', MB_ICONWARNING or MB_OK);
    Exit;
  end;

  ClientDS := TClientDataSet.Create(nil);
  ClientDS.FieldDefs.Add('fact_id'       , ftInteger);
  ClientDS.FieldDefs.Add('node_begin_cod', ftString, 20);
  ClientDS.FieldDefs.Add('node_end_cod'  , ftString, 20);
  ClientDS.FieldDefs.Add('kargoETSNG_cod', ftString, 20);
  ClientDS.FieldDefs.Add('fact_weight'   , ftFloat);
  ClientDS.FieldDefs.Add('date_from_to'  , ftDate);

  ClientDS.FieldDefs.Add('error_message' , ftString, 300);
  ClientDS.FieldDefs.Add('kargoGNG_cod'  , ftString, 20);
  ClientDS.FieldDefs.Add('otpr_name'     , ftString, 300);
  ClientDS.FieldDefs.Add('send_name'     , ftString, 300);
  ClientDS.FieldDefs.Add('ExitRoute_name', ftString, 300);
  ClientDS.FieldDefs.Add('cars_name'     , ftString, 300);
  ClientDS.FieldDefs.Add('owners_name'   , ftString, 300);
  ClientDS.FieldDefs.Add('distance'      , ftInteger);
  ClientDS.FieldDefs.Add('cars_gp'       , ftFloat);
  ClientDS.FieldDefs.Add('VagOtpr'       , ftFloat);
  ClientDS.FieldDefs.Add('TotalPriceWoNDS_own', ftCurrency);
  ClientDS.FieldDefs.Add('TotalPriceWoNDS_rzd', ftCurrency);
  ClientDS.FieldDefs.Add('TotalPrice_own', ftCurrency);
  ClientDS.FieldDefs.Add('TotalPrice_rzd', ftCurrency);
  ClientDS.FieldDefs.Add('koef'          , ftFloat);

  ClientDS.CreateDataSet;
  ClientDS.LogChanges := False;

  {программно выделяем последнюю строку для дальнейшей работы}
  cxGrid3DBBandedTableView1.DataController.FocusedRecordIndex := cxGrid3DBBandedTableView1.DataController.RecordCount - 1;
  cxGrid3DBBandedTableView1.DataController.SyncSelectionFocusedRecord;

  {проводим проверку кол-ва выделенных строк и если их нет выхрлим из процедуры}
  if cxGrid3DBBandedTableView1.Controller.SelectedRowCount = 0 then
    Application.MessageBox('Отсутствуют выбранные строки в таблице "Клиент" / "Подрядчик"!', 'Внимание', MB_OK)
  else begin
    kargoETSNG_cod := VarToStr(cxGrid3DBBandedTableView1.Controller.SelectedRows[0].Values[cxGrid3DBBandedTableView1kargoETSNG_cod.Index]);

    for i := 0 to cxGrid3DBBandedTableView1.Controller.SelectedRecordCount - 1 do begin

      if (kargoETSNG_cod <> VarToStr(cxGrid3DBBandedTableView1.Controller.SelectedRows[i].Values[cxGrid3DBBandedTableView1kargoETSNG_cod.Index])) then begin
        Application.MessageBox('В выбранных вагонах груз должен быть одинаковый!', 'Внимание', MB_ICONSTOP or MB_OK);
        Q.Free;
        ClientDS.Free;
        Exit;
      end else begin
        ClientDS.Append;
        ClientDS.FieldByName('fact_id'        ).Value := cxGrid3DBBandedTableView1.Controller.SelectedRows[i].Values[cxGrid3DBBandedTableView1fact_id.Index];
        ClientDS.FieldByName('node_begin_cod' ).Value := cxGrid3DBBandedTableView1.Controller.SelectedRows[i].Values[cxGrid3DBBandedTableView1node_begin_cod.Index];
        ClientDS.FieldByName('node_end_cod'   ).Value := cxGrid3DBBandedTableView1.Controller.SelectedRows[i].Values[cxGrid3DBBandedTableView1node_end_cod.Index];
        ClientDS.FieldByName('fact_weight'    ).Value := cxGrid3DBBandedTableView1.Controller.SelectedRows[i].Values[cxGrid3DBBandedTableView1fact_weight.Index];
        ClientDS.FieldByName('kargoETSNG_cod' ).Value := cxGrid3DBBandedTableView1.Controller.SelectedRows[i].Values[cxGrid3DBBandedTableView1kargoETSNG_cod.Index];
        ClientDS.FieldByName('date_from_to'   ).Value := cxGrid3DBBandedTableView1.Controller.SelectedRows[i].Values[cxGrid3DBBandedTableView1date_from_to.Index];
        ClientDS.Post;
      end;

    end;


    handle := LoadLibrary('ctm_tarif.dll');
    @FFunc := GetProcAddress(handle, 'CreateWndCalcParam');
    v := FFunc(Application.Handle, Fusr_pwd, ClientDS);
    FreeLibrary(handle);

    if v[0] = True then begin
      str_fact_id   := '';
      array_fact_id := VarArrayCreate([0, cxGrid3DBBandedTableView1.Controller.SelectedRecordCount], varInteger);
      for i:=0 to cxGrid3DBBandedTableView1.Controller.SelectedRecordCount - 1 do begin
        array_fact_id[i] := cxGrid3DBBandedTableView1.Controller.SelectedRows[i].Values[cxGrid3DBBandedTableView1fact_id.Index];
        str_fact_id      := str_fact_id + ',' + IntToStr(cxGrid3DBBandedTableView1.Controller.SelectedRows[i].Values[cxGrid3DBBandedTableView1fact_id.Index]);
      end;
      Delete(str_fact_id, 1, 1);

      ClientDS_Fact.DisableControls;
      ClientDS_ListRate.DisableControls;
      FClientDS_FactDetail.DisableControls;
      for i:= VarArrayLowBound(array_fact_id, 1) to VarArrayHighBound(array_fact_id, 1)-1 do begin

        if ClientDS.Locate('fact_id', array_fact_id[i], []) then begin
          ChangeRate( array_fact_id[i],
                      cxGrid1DBBandedTableView1global_id.DataBinding.Field.AsInteger,
                      ClientDS.FieldByName('TotalPrice_own').AsCurrency);
        end;
        ShowTextMessage('Расчет ставки. ' + IntToStr(i) + ' из ' + IntToStr(VarArrayHighBound(array_fact_id, 1)) + ' вагонов...', False);
      end;
      ShowTextMessage;
      ClientDS_Fact.EnableControls;
      ClientDS_ListRate.EnableControls;
      FClientDS_FactDetail.EnableControls;

      CalcFrahtSum(1, str_fact_id);
      UpdateSum;
      UpdateSumResult;
    end;


    ClientDS.Free;
    Q.Free;
  end;
end;

procedure TfmBargainList2.FunctionGridRate4RoutePP(Sender: TObject);
var
  exWks, exApp, exWkb : variant;
  list                : TStringList;
  i, num_sheet        : integer;
  distance            : integer;
  rows                : integer;
  rate_val            : currency;
  rate_id             : integer;
  ClientDS            : TClientDataSet;
  ClientDS_tmp        : TClientDataSet;
  ClientDS_PP         : TClientDataSet;
  node_begin          : string;
  node_end            : string;
  Q_TypeTools         : TADOQuery;
  Q_AttrSelf          : TADOQuery;
begin
  if cxGrid3DBBandedTableView1.Controller.SelectedRecordCount = 0 then
    exit;

  Screen.Cursor := crHourglass;

  // Открытие Excel и создание списка Листов
  ShowTextMessage('Запуск Excel...', False);
  exApp := CreateOleObject('Excel.Application');
  exWkb := exApp.Workbooks.Open(GetDocBlob(Fconnect, TdxBarButton(Sender).ClickItemLink.Owner.Owner.Tag, 5), EmptyParam, True);
  exWkb := exApp.ActiveWorkbook;
  list := TStringList.Create;
  for i := 1 to exWkb.WorkSheets.count do begin
    list.Add(VarToStr(exWkb.WorkSheets[i].Name));
  end;
  ShowTextMessage;

  // ИД ставки (bargain_id или shaping_rate_id)
  rate_id := (Sender as TdxBarButton).Tag;

  // Инициализация "временных таблиц" (TClientDataSet)
  // ClientDS_Fact - копирование DS (только выделенных строк) - то с чем работаем
  ClientDS := TClientDataSet.Create(nil);
  ClientDS.Data := ClientDS_Fact.Data;
  ClientDS.LogChanges := False;

  // удаляем из ClientDS невыделенные строки
  for i := 0 to cxGrid3DBBandedTableView1.Controller.SelectedRecordCount - 1 do begin
    if ClientDS.Locate('fact_id', cxGrid3DBBandedTableView1.Controller.SelectedRows[i].Values[cxGrid3DBBandedTableView1fact_id.Index], []) then begin
      ClientDS.Edit;
      ClientDS.FieldByName('set_not_delete').Value := True;
      ClientDS.Post;
    end;
  end;
  ClientDS.First;
  while not ClientDS.Eof do begin
    if ClientDS.FieldByName('set_not_delete').AsBoolean = True then
      ClientDS.Next
    else
      ClientDS.Delete;
  end;

  ClientDS_tmp := TClientDataSet.Create(nil);
  ClientDS_tmp.FieldDefs.Add('type_kontener'    , ftInteger);
  ClientDS_tmp.FieldDefs.Add('attr_self'        , ftInteger);
  ClientDS_tmp.FieldDefs.Add('node_begin_cod'   , ftString, 50);
  ClientDS_tmp.FieldDefs.Add('node_end_cod'     , ftString, 50);
  ClientDS_tmp.FieldDefs.Add('distance'         , ftInteger);
  // поля только для отображения в гриде
  // поиск ставки происходит по первому ПП (по движению маршрута), код которого был найден в Excel
  ClientDS_tmp.FieldDefs.Add('node_pp_in_cod'   , ftString, 50); // вх.станция пп (код)
  ClientDS_tmp.FieldDefs.Add('node_pp_in_name'  , ftString, 50); // вх.станция пп (наименование)
  ClientDS_tmp.FieldDefs.Add('node_pp_out_cod'  , ftString, 50); // вых.станция пп (код)
  ClientDS_tmp.FieldDefs.Add('node_pp_out_name' , ftString, 50); // вых.станция пп (наименование)
  ClientDS_tmp.CreateDataSet;
  ClientDS_tmp.LogChanges := False;

  ClientDS_PP := TClientDataSet.Create(nil);
  ClientDS_PP.FieldDefs.Add('node_cod',   ftString, 50);
  ClientDS_PP.FieldDefs.Add('node_name',  ftString, 50);
  ClientDS_PP.FieldDefs.Add('distance',   ftInteger);
  ClientDS_PP.FieldDefs.Add('set_in_out', ftBoolean); // True - входящая, False - выходящая
  ClientDS_PP.CreateDataSet;
  ClientDS_PP.LogChanges := False;

  // Инициализация запросов
  Q_TypeTools := TADOQuery.Create(nil);
  Q_TypeTools.Connection := Fconnect;
  Q_TypeTools.SQL.Add('SELECT inf_obj_id, type_inf_id, inf_obj_name, inf_obj_cod FROM inf_obj WHERE (type_inf_id = 220)');
  Q_TypeTools.Open;

  Q_AttrSelf  := TADOQuery.Create(nil);
  Q_AttrSelf.Connection := Fconnect;
  Q_AttrSelf.SQL.Add('SELECT attr_self, attr_self_name FROM view_attr_self');
  Q_AttrSelf.Open;


  ClientDS_ListRate.DisableControls;

  // Создание Списка ставок
  ClientDS.First;
  while not ClientDS.Eof do begin
    if not ClientDS_tmp.Locate('type_kontener;attr_self;node_begin_cod;node_end_cod', VarArrayOf([ClientDS.FieldByName('type_kontener').Value, ClientDS.FieldByName('attr_self').Value, ClientDS.FieldByName('node_begin_cod').Value, ClientDS.FieldByName('node_end_cod').Value]), []) then begin
      ClientDS_tmp.Append;
      ClientDS_tmp.FieldByName('type_kontener'  ).Value := ClientDS.FieldByName('type_kontener').Value;
      ClientDS_tmp.FieldByName('attr_self'      ).Value := ClientDS.FieldByName('attr_self').Value;
      ClientDS_tmp.FieldByName('node_begin_cod' ).Value := ClientDS.FieldByName('node_begin_cod').Value;
      ClientDS_tmp.FieldByName('node_end_cod'   ).Value := ClientDS.FieldByName('node_end_cod').Value;
      ClientDS_tmp.Post;
    end;

    ClientDS.Next;
  end;

  // Расчет ПП и Поиск ставки
  ClientDS_tmp.First;
  while not ClientDS_tmp.Eof do begin
    ShowTextMessage('Загрузка ставок ' + IntToStr(ClientDS_tmp.RecNo) + ' из ' + IntToStr(ClientDS_tmp.RecordCount) + ' ...', False);
    // Расстояние из факта - посчитаем для каждорй записи свою ставку

    // расчет ПП и поиск первого ПП, который указывает на одну из закладок Excel
    node_begin := ClientDS_tmp.FieldByName('node_begin_cod').AsString;
    node_end   := ClientDS_tmp.FieldByName('node_end_cod').AsString;
    distance   := 0;

    GetPPRoute(node_begin, node_end, ClientDS_PP, distance);

    ClientDS_tmp.Edit;
    ClientDS_tmp.FieldByName('distance'      ).AsInteger := distance;

    if (not ClientDS_PP.Eof) and (ClientDS_PP.FieldByName('set_in_out').AsBoolean = True) then begin
      // Есть вх. пп
      ClientDS_tmp.FieldByName('node_pp_in_cod' ).AsString := ClientDS_PP.FieldByName('node_cod' ).AsString;
      ClientDS_tmp.FieldByName('node_pp_in_name').AsString := ClientDS_PP.FieldByName('node_name').AsString;
      // Если обработали вх. пп, то сдвинем курсор на следующий пп - возможно еть и вых. пп
      ClientDS_PP.Next;
    end;
    if (not ClientDS_PP.Eof) and (ClientDS_PP.FieldByName('set_in_out').AsBoolean = False) then begin
      // Есть вых. пп
      ClientDS_tmp.FieldByName('node_pp_out_cod' ).AsString := ClientDS_PP.FieldByName('node_cod' ).AsString;
      ClientDS_tmp.FieldByName('node_pp_out_name').AsString := ClientDS_PP.FieldByName('node_name').AsString;
    end;

    // Поиск нужной закладки
    num_sheet := -1;
    ClientDS_PP.First;
    while (num_sheet = -1) and (not ClientDS_PP.Eof) do begin
      num_sheet := list.IndexOf(ClientDS_PP.FieldByName('node_cod').AsString);
      ClientDS_PP.Next;
    end;
    ClientDS_tmp.Post;

    // Поиск ставки
    rate_val := 0;
    if (distance <> 0) and (num_sheet <> -1) then begin
      // выберем лист
      exWks := exWkb.WorkSheets[num_sheet + 1];
      // Находим ставку
      rows := 2;
      rate_val := 0;
      while True do begin
        if TVarData(exWks.Cells[rows, 1].Value).VType = varEmpty then break;

        if (exWks.Range['A'+IntToStr(rows)].Value <= distance)
            and (distance <= exWks.Range['B'+IntToStr(rows)].Value)
        then begin
          rate_val := exWks.Range['C'+IntToStr(rows)].Value;
          rate_val := RoundCurr(rate_val, -2);

          break;
        end;
        rows := rows + 1;
      end;
    end;


    if ClientDS_ListRate.Locate('set_one;rate_id;type_tools_id;attr_self', VarArrayOf([True, rate_id, ClientDS_tmp.FieldByName('type_kontener').Value, ClientDS_tmp.FieldByName('attr_self').Value]), []) then
      ClientDS_ListRate.Edit
    else
      ClientDS_ListRate.Append;

    ClientDS_ListRate.FieldByName('rate_id').Value         := rate_id;
    ClientDS_ListRate.FieldByName('type_rate').Value       := iif(rate_id = Fbargain_id, 1, 2);
    ClientDS_ListRate.FieldByName('type_tools_id').Value   := ClientDS_tmp.FieldByName('type_kontener').Value;
    ClientDS_ListRate.FieldByName('type_tools_name').Value := Q_TypeTools.Lookup('inf_obj_id', ClientDS_tmp.FieldByName('type_kontener').Value, 'inf_obj_name');
    ClientDS_ListRate.FieldByName('attr_self').Value       := ClientDS_tmp.FieldByName('attr_self').Value;
    ClientDS_ListRate.FieldByName('attr_self_name').Value  := Q_AttrSelf.Lookup('attr_self', ClientDS_tmp.FieldByName('attr_self').Value, 'attr_self_name');
    ClientDS_ListRate.FieldByName('weight').Value          := 0;
    ClientDS_ListRate.FieldByName('rate_val').Value        := rate_val;
    ClientDS_ListRate.FieldByName('set_one').Value         := True;
    ClientDS_ListRate.Post;

    ClientDS_tmp.Next
  end;

  // Проставим ПП и дистанцию
  ClientDS_Fact.DisableControls;
  for i:=0 to cxGrid3DBBandedTableView1.Controller.SelectedRecordCount - 1 do begin
    if ClientDS_Fact.FindKey([cxGrid3DBBandedTableView1.Controller.SelectedRows[i].Values[cxGrid3DBBandedTableView1fact_id.Index]]) then begin
      if ClientDS_tmp.Locate('node_begin_cod;node_end_cod', VarArrayOf([ClientDS_Fact.FieldByName('node_begin_cod').AsString, ClientDS_Fact.FieldByName('node_end_cod').AsString]), []) then begin
        ClientDS_Fact.Edit;
        ClientDS_Fact.FieldByName('distance'        ).Value := ClientDS_tmp.FieldByName('distance'        ).Value;
        ClientDS_Fact.FieldByName('node_pp_in_cod'  ).Value := ClientDS_tmp.FieldByName('node_pp_in_cod'  ).Value;
        ClientDS_Fact.FieldByName('node_pp_in_name' ).Value := ClientDS_tmp.FieldByName('node_pp_in_name' ).Value;
        ClientDS_Fact.FieldByName('node_pp_out_cod' ).Value := ClientDS_tmp.FieldByName('node_pp_out_cod' ).Value;
        ClientDS_Fact.FieldByName('node_pp_out_name').Value := ClientDS_tmp.FieldByName('node_pp_out_name').Value;
        ClientDS_Fact.Post;
      end;
    end;
  end;
  ClientDS_Fact.EnableControls;

  Q_TypeTools.Free;
  Q_AttrSelf.Free;

  exWks.Application.Quit;
  exWks := Null; exWkb := Null; exApp := Null;
  VarClear(exWks); VarClear(exWkb); VarClear(exApp);

  ClientDS.Free;
  ClientDS_tmp.Free;
  ClientDS_PP.Free;

  ClientDS_ListRate.EnableControls;
  Screen.Cursor := crDefault;
  ShowTextMessage;
end;

procedure TfmBargainList2.FunctionGridRate(Sender: TObject);
var
  exWks, exApp, exWkb : variant;
  list : TStringList;
  set_nds   : boolean;
  set_fact_len : boolean;
  set_prev_len : boolean;
  i     : integer;
  dist  : variant;
  rows  : integer;
  rate_val : currency;
  type_tools_id : integer;
  attr_self_id  : integer;
  rate_id : integer;
  ClientDS : TClientDataSet;
  ClientDS_tmp : TClientDataSet;
  node_begin, node_end : string;
  Q, Q_TypeTools, Q_AttrSelf : TADOQuery;
  num_rec : integer;
begin
  Screen.Cursor := crHourglass;
  try

    ShowTextMessage('Запуск Excel...', False);
    exApp := CreateOleObject('Excel.Application');
    exWkb := exApp.Workbooks.Open(GetDocBlob(Fconnect, TdxBarButton(Sender).ClickItemLink.Owner.Owner.Tag, 5), EmptyParam, True);
    exWkb := exApp.ActiveWorkbook;
    list := TStringList.Create;
    for i := 1 to exWkb.WorkSheets.count do begin
      list.Add(VarToStr(exWkb.WorkSheets[i].Name));
    end;
    ShowTextMessage;

    fmBargainRate := TfmBargainRate.Create(Application, Fconnect, Fusr_pwd);
    fmBargainRate._SetSelectRate := False;
    fmBargainRate._SetParamList  := list;
    fmBargainRate._SetAllRate    := True;
    fmBargainRate._SetDocCod     := TdxBarButton(Sender).ClickItemLink.Owner.Owner.Tag;


    if not (cxGrid3DBBandedTableView1.DataController.RecordCount = 0) then begin
      fmBargainRate.Height := fmBargainRate.Height - fmBargainRate.Panel2.Height;
      fmBargainRate.Panel2.Visible := False;
    end
    else begin
      if not ClientDS_ListRate.FieldByName('type_tools_id').IsNull then
        fmBargainRate._SetTypeKontener := ClientDS_ListRate.FieldByName('type_tools_id').Value;
      if not ClientDS_ListRate.FieldByName('attr_self'    ).IsNull then
        fmBargainRate._SetAttrSelf     := ClientDS_ListRate.FieldByName('attr_self'    ).Value;

      if not(cxGridDBBandedTableView2.DataController.RecordCount = 0) then begin
        fmBargainRate.cxLookupComboBox7.Enabled := False;
        fmBargainRate.cxLookupComboBox10.Enabled := False;
        fmBargainRate.cxCheckBox3.Checked := False;
        fmBargainRate.cxCheckBox3.Enabled := False;
      end;
    end;

    fmBargainRate.cxCheckBox3.Checked := cxGrid3DBBandedTableView1.DataController.RecordCount <> 0;
    fmBargainRate.cxCheckBox3.Enabled := cxGrid3DBBandedTableView1.DataController.RecordCount <> 0;

    if fmBargainRate.ShowModal = mrOk then begin
      rate_id := (Sender as TdxBarButton).Tag;

      ClientDS := TClientDataSet.Create(nil);
//      ClientDS.Close;
//      ClientDS.Fields.Clear;
//      ClientDS.FieldDefs.Clear;

//      for num_field:= 0 to ClientDS_Fact.FieldDefs.Count - 1 do begin
//        ClientDS.FieldDefs.Add(ClientDS_Fact.FieldDefs[num_field].Name,
//                               ClientDS_Fact.FieldDefs[num_field].DataType,
//                               ClientDS_Fact.FieldDefs[num_field].Size,
//                               ClientDS_Fact.FieldDefs[num_field].Required);
//      end;

      ClientDS.Data := ClientDS_Fact.Data;
//      ClientDS.CreateDataSet;
      ClientDS.LogChanges := False;



//      for num_rec := 0 to cxGrid3DBBandedTableView1.Controller.SelectedRecordCount - 1 do
//        if ClientDS_Fact.Locate('fact_id', cxGrid3DBBandedTableView1.Controller.SelectedRows[num_rec].Values[cxGrid3DBBandedTableView1fact_id.Index], []) then begin
//          ClientDS.Insert;
//          for num_field := 0 to ClientDS_Fact.FieldCount - 1 do
//            ClientDS.Fields[num_field].Value := ClientDS_Fact.Fields[num_field].Value;
//          ClientDS.Post;
//        end;

      // удаляем из ClientDS невыделенные строки
      for num_rec := 0 to cxGrid3DBBandedTableView1.Controller.SelectedRecordCount - 1 do begin
        if ClientDS.Locate('fact_id', cxGrid3DBBandedTableView1.Controller.SelectedRows[num_rec].Values[cxGrid3DBBandedTableView1fact_id.Index], []) then begin
          ClientDS.Edit;
          ClientDS.FieldByName('set_not_delete').Value := True;
          ClientDS.Post;
        end;
      end;

      ClientDS.First;
      while not ClientDS.Eof do begin
        if ClientDS.FieldByName('set_not_delete').AsBoolean = True then
          ClientDS.Next
        else
          ClientDS.Delete;
      end;


      exWks := exWkb.WorkSheets[fmBargainRate._GetParamId + 1];
      set_nds       := fmBargainRate._GetNDS;
      set_fact_len  := fmBargainRate._GetDistFact;
      set_prev_len  := fmBargainRate._GetDistPrev;
      type_tools_id := fmBargainRate._GetTypeKontener;
      attr_self_id  := fmBargainRate._GetAttrSelf;

      if (type_tools_id = -9) and (attr_self_id <> -9) then begin
        Application.MessageBox('Выберите "Род п/с, тип конт"!!!', 'ОШИБКА', MB_ICONSTOP or MB_OK);
        exApp.Quit;
        exWks := Null;
        VarClear(exWks);
        Exit;
      end;

      if (type_tools_id <> -9) and (attr_self_id = -9) then begin
        Application.MessageBox('Выберите "Тип ставки"!!!', 'ОШИБКА', MB_ICONSTOP or MB_OK);
        Exit;
      end;

    end else begin
      exApp.Quit;
      VarClear(exApp);
      Exit;
    end;
  except
    on E: Exception do begin
      Application.MessageBox(PChar('Ошибка при открытии файла.' + #10 + E.Message), 'Внимание', MB_OK);
      ShowTextMessage;
      exApp.Quit;
      VarClear(exApp);
      Exit;
    end;
  end;

  ClientDS_tmp := TClientDataSet.Create(nil);
  ClientDS_tmp.FieldDefs.Add('type_kontener', ftInteger);
  ClientDS_tmp.FieldDefs.Add('attr_self', ftInteger);
  ClientDS_tmp.FieldDefs.Add('node_begin_cod', ftString, 10);
  ClientDS_tmp.FieldDefs.Add('node_end_cod', ftString, 10);
  ClientDS_tmp.FieldDefs.Add('distance', ftInteger);
  ClientDS_tmp.CreateDataSet;
  ClientDS_tmp.LogChanges := False;


  Q_TypeTools := TADOQuery.Create(nil);
  Q_TypeTools.Connection := Fconnect;
  Q_TypeTools.SQL.Add('SELECT inf_obj_id, type_inf_id, inf_obj_name, inf_obj_cod FROM inf_obj WHERE ((type_inf_id = 220))');
  Q_TypeTools.Open;


  Q_AttrSelf  := TADOQuery.Create(nil);
  Q_AttrSelf.Connection := Fconnect;
  Q_AttrSelf.SQL.Add('SELECT attr_self, attr_self_name FROM view_attr_self');
  Q_AttrSelf.Open;


  Q := TADOQuery.Create(nil);
  Q.Connection := Fconnect;


  Screen.Cursor := crHourglass;

  if (not set_fact_len) and (not set_prev_len) then begin
    ShowTextMessage('Поиск ставки для перевозки ...', False);
    // Получаем расстояние - проверка расстояния
    Q.SQL.Clear;
    Q.SQL.Add('SELECT node_begin_cod, node_end_cod FROM view_bargain v (NOLOCK) WHERE bargain_id = ' + IntToStr(Fbargain_id));
    Q.Open;
    node_begin := Q.FieldByName('node_begin_cod').AsString;
    node_end   := Q.FieldByName('node_end_cod').AsString;
    Q.Close;

    dist := null;
    dist := GetCalcDistance(node_begin, node_end, -9, ''); //Fast(node_begin, node_end);//

    if dist = null then begin
      ShowTextMessage;
      Screen.Cursor := crDefault;
      Application.MessageBox('Не определено расстояние между станциями перевозки', 'Ставки ПГК', MB_OK + MB_ICONWARNING);
      exit;
    end;

    // Находим ставку (для перевозки)
    rows := 2;
    rate_val := 0;
    while True do begin
      if TVarData(exWks.Cells[rows, 1].Value).VType = varEmpty then break;

      if (exWks.Range['A'+IntToStr(rows)].Value <= dist)  and (dist <= exWks.Range['B'+IntToStr(rows)].Value)then begin

        rate_val := exWks.Range['C'+IntToStr(rows)].Value;
        rate_val := RoundCurr(rate_val, -2);
        if set_nds then
          rate_val := RoundCurr(rate_val * 1.18, -2);

        break;
      end;
      rows := rows + 1;
    end;
  end;

  // Удаляем лишнии ставки
  //ClearListRate(rate_id, type_tools_id, attr_self_id);
  ClientDS_ListRate.DisableControls;

  Q.Close;
  Q.SQL.Clear;


  if (type_tools_id <> -9) and (attr_self_id <> -9) then begin
    ClientDS.Filter   := 'type_kontener='+ IntToStr(type_tools_id) + ' AND attr_self=' + IntToStr(attr_self_id);
    ClientDS.Filtered := True;
  end;

  if set_fact_len then begin
    ClientDS.First;
    while not ClientDS.Eof do begin
      if not ClientDS_tmp.Locate('type_kontener;attr_self;node_begin_cod;node_end_cod', VarArrayOf([ClientDS.FieldByName('type_kontener').Value, ClientDS.FieldByName('attr_self').Value, ClientDS.FieldByName('node_begin_cod').Value, ClientDS.FieldByName('node_end_cod').Value]), []) then begin
        ClientDS_tmp.Append;
        ClientDS_tmp.FieldByName('type_kontener'  ).Value := ClientDS.FieldByName('type_kontener').Value;
        ClientDS_tmp.FieldByName('attr_self'      ).Value := ClientDS.FieldByName('attr_self').Value;
        ClientDS_tmp.FieldByName('node_begin_cod' ).Value := ClientDS.FieldByName('node_begin_cod').Value;
        ClientDS_tmp.FieldByName('node_end_cod'   ).Value := ClientDS.FieldByName('node_end_cod').Value;
        ClientDS_tmp.Post;
      end;

      ClientDS.Next;
    end;
  end
  else
    if set_prev_len then begin

//    Q.SQL.Add('CREATE TABLE #tmp (fact_id int, type_kontener int, attr_self int, node_begin_cod varchar(50), node_end_cod varchar(50))');
//    Q.SQL.Add('');
//    Q.SQL.Add('INSERT INTO #tmp');
//    Q.SQL.Add('EXEC [dbo].[sp_TypeRateFromPrevTrip_calc] @bargain_id = ' + IntToStr(Fbargain_id) + ', @type_calc = 1'); // для получения RS испольхуем тип = 1
//    Q.SQL.Add('');
//    Q.SQL.Add('SELECT type_kontener, attr_self, node_end_cod as node_begin_cod, node_begin_cod as node_end_cod'); // для расчета расстояния "переворачиваем" маршрут
//    Q.SQL.Add('FROM #tmp');
//    Q.SQL.Add('WHERE 1 = 1');
//    if (type_tools_id <> -9) and (attr_self_id <> -9) then begin
//      Q.SQL.Add('AND type_kontener = ' + IntToStr(type_tools_id));
//      Q.SQL.Add('AND attr_self     = ' + IntToStr(attr_self_id));
//    end;
//    Q.SQL.Add('GROUP BY type_kontener, attr_self, node_begin_cod, node_end_cod');
//    Q.SQL.Add('');
//    Q.SQL.Add('DROP TABLE #tmp');

    end
      else begin
        ClientDS.First;
        while not ClientDS.Eof do begin
          if not ClientDS_tmp.Locate('type_kontener;attr_self', VarArrayOf([ClientDS.FieldByName('type_kontener').Value, ClientDS.FieldByName('attr_self').Value]), []) then begin
            ClientDS_tmp.Append;
            ClientDS_tmp.FieldByName('type_kontener'  ).Value := ClientDS.FieldByName('type_kontener').Value;
            ClientDS_tmp.FieldByName('attr_self'      ).Value := ClientDS.FieldByName('attr_self').Value;
            ClientDS_tmp.Post;
          end;

          ClientDS.Next;
        end;
      end;

  if ClientDS_tmp.RecordCount = 0 then begin

    if (type_tools_id <> -9) AND (attr_self_id <> -9) then begin
      ClientDS_ListRate.Edit;
      ClientDS_ListRate.FieldByName('rate_id').Value        := rate_id;
      ClientDS_ListRate.FieldByName('type_rate').Value      := 1;
      ClientDS_ListRate.FieldByName('type_tools_id').Value  := type_tools_id;
      ClientDS_ListRate.FieldByName('attr_self').Value      := attr_self_id;

      if Q_TypeTools.Locate('inf_obj_id', type_tools_id, []) then
        ClientDS_ListRate.FieldByName('type_tools_name').Value:= Q_TypeTools.FieldByName('inf_obj_name').Value;
      if Q_AttrSelf.Locate('attr_self', attr_self_id, []) then
        ClientDS_ListRate.FieldByName('attr_self_name').Value := Q_AttrSelf.FieldByName('attr_self_name').Value;

      ClientDS_ListRate.FieldByName('weight'  ).Value         := -9;
      ClientDS_ListRate.FieldByName('rate_val').Value       := rate_val;
      ClientDS_ListRate.FieldByName('set_one' ).Value        := True;
      ClientDS_ListRate.Post;
    end;
  end else begin
    ClientDS_tmp.First;
    while not ClientDS_tmp.Eof do begin
      ShowTextMessage('Загрузка ставок ' + IntToStr(ClientDS_tmp.RecNo) + ' из ' + IntToStr(ClientDS_tmp.RecordCount) + ' ...', False);
      // Расстояние из факта - посчитаем для каждорй записи свою ставку
      if set_fact_len or set_prev_len then begin
        // Получаем расстояние - проверка расстояния
        node_begin := ClientDS_tmp.FieldByName('node_begin_cod').AsString;
        node_end   := ClientDS_tmp.FieldByName('node_end_cod').AsString;

        dist := null;
        dist := GetCalcDistance(node_begin, node_end, -9, ''); // Fast(node_begin, node_end);

        ClientDS_tmp.Edit;
        ClientDS_tmp.FieldByName('distance').Value := dist;
        ClientDS_tmp.Post;

        rate_val := 0;
        if dist <> null then begin
          // Находим ставку
          rows := 2;
          rate_val := 0;
          while True do begin
            if TVarData(exWks.Cells[rows, 1].Value).VType = varEmpty then break;

            if (exWks.Range['A'+IntToStr(rows)].Value <= dist)
                and (dist <= exWks.Range['B'+IntToStr(rows)].Value)
            then begin
              rate_val := exWks.Range['C'+IntToStr(rows)].Value;
              rate_val := RoundCurr(rate_val, -2);
              if set_nds then
                rate_val := RoundCurr(rate_val * 1.18, -2);

              break;
            end;
            rows := rows + 1;
          end;
        end;

      end;

      if ClientDS_ListRate.Locate('set_one;rate_id;type_tools_id;attr_self', VarArrayOf([True, rate_id, ClientDS_tmp.FieldByName('type_kontener').Value, ClientDS_tmp.FieldByName('attr_self').Value]), []) then
        ClientDS_ListRate.Edit
      else
        ClientDS_ListRate.Append;

      ClientDS_ListRate.FieldByName('rate_id').Value        := rate_id;
      ClientDS_ListRate.FieldByName('type_rate').Value      := 1;
      ClientDS_ListRate.FieldByName('type_tools_id').Value  := ClientDS_tmp.FieldByName('type_kontener').Value;
      ClientDS_ListRate.FieldByName('attr_self').Value      := ClientDS_tmp.FieldByName('attr_self').Value;

      if Q_TypeTools.Locate('inf_obj_id', ClientDS_tmp.FieldByName('type_kontener').Value, []) then
        ClientDS_ListRate.FieldByName('type_tools_name').Value:= Q_TypeTools.FieldByName('inf_obj_name').Value;
      if Q_AttrSelf.Locate('attr_self', ClientDS_tmp.FieldByName('attr_self').Value, []) then
        ClientDS_ListRate.FieldByName('attr_self_name').Value := Q_AttrSelf.FieldByName('attr_self_name').Value;

      ClientDS_ListRate.FieldByName('weight').Value         := 0;
      ClientDS_ListRate.FieldByName('rate_val').Value       := rate_val;
      ClientDS_ListRate.FieldByName('set_one').Value        := True;
      ClientDS_ListRate.Post;
      ClientDS_tmp.Next
    end;
  end;


  ClientDS_Fact.DisableControls;
  for i:=0 to cxGrid3DBBandedTableView1.Controller.SelectedRecordCount - 1 do begin
    if ClientDS_Fact.FindKey([cxGrid3DBBandedTableView1.Controller.SelectedRows[i].Values[cxGrid3DBBandedTableView1fact_id.Index]]) then begin
      if ClientDS_tmp.Locate('node_begin_cod;node_end_cod', VarArrayOf([ClientDS_Fact.FieldByName('node_begin_cod').AsString, ClientDS_Fact.FieldByName('node_end_cod').AsString]), []) then begin
        ClientDS_Fact.Edit;
        ClientDS_Fact.FieldByName('distance').Value := ClientDS_tmp.FieldByName('distance').Value;
        ClientDS_Fact.Post;
      end;
    end;
  end;
  ClientDS_Fact.EnableControls;



  Q_TypeTools.Free;
  Q_AttrSelf.Free;
  Q.Free;

  exWks.Application.Quit;
  exWks := Null;
  exWkb := Null;
  exApp := Null;
  VarClear(exWks);
  VarClear(exWkb);
  VarClear(exApp);
  ClientDS.Free;
  ClientDS_tmp.Free;
  ClientDS_ListRate.EnableControls;
  Screen.Cursor := crDefault;
  ShowTextMessage;
end;


procedure TfmBargainList2.CreateClientRate();
var          Q : TADOQuery;
       rate_id : integer;
 type_tools_id : integer;
     attr_self : integer;
             i : integer;
begin
  Q := TADOQuery.Create(nil);
  Q.Connection := Fconnect;

  // Создание ClientDS
  FClientDS_RateType := TClientDataSet.Create(nil);
  FClientDS_RateType.FieldDefs.Add('type_tools_id',ftInteger);
  FClientDS_RateType.FieldDefs.Add('attr_self',    ftInteger);
  FClientDS_RateType.FieldDefs.Add('set_one',      ftBoolean);

  Q.SQL.Clear;
  Q.SQL.Add('SELECT shaping_rate_id as rate_id FROM view_shaping_rate WHERE bargain_id = ' + IntToStr(Fbargain_id));
  Q.Open;

  while not Q.Eof do begin
    rate_id := Q.FieldByName('rate_id').AsInteger;

    FContractList.Add(IntToStr(rate_id));

    FClientDS_RateType.FieldDefs.Add('rate_val_' + IntToStr(rate_id), ftCurrency);
    Q.Next;
  end;

  FClientDS_RateType.CreateDataSet;
  FClientDS_RateType.LogChanges := False;


  // Добавить ставки
  Q.SQL.Clear;
  Q.SQL.Add('SELECT	bargain_list_rate.type_tools_id, bargain_list_rate.attr_self');
  Q.SQL.Add('FROM	  bargain_list_rate inner join shaping_rate on bargain_list_rate.rate_id = shaping_rate.shaping_rate_id');
  Q.SQL.Add('WHERE	bargain_id = ' + IntToStr(Fbargain_id));
  Q.Open;

  Q.First;
  while not Q.Eof do begin
    FClientDS_RateType.Append;
    FClientDS_RateType.FieldByName('type_tools_id' ).Value := Q.FieldByName('type_tools_id').Value;
    FClientDS_RateType.FieldByName('attr_self'     ).Value := Q.FieldByName('attr_self').Value;
    FClientDS_RateType.FieldByName('set_one'       ).Value := 1;

    for i := 0 to FContractList.Count - 1 do begin
      FClientDS_RateType.FieldByName('rate_val_' + FContractList.Strings[i]).Value := 0;
    end;

    FClientDS_RateType.Post;
    Q.Next;
  end;

  // Добавить значения
  Q.SQL.Clear;
  Q.SQL.Add('SELECT	bargain_list_rate.rate_id, bargain_list_rate.rate_val, bargain_list_rate.set_one,');
  Q.SQL.Add('		    bargain_list_rate.type_tools_id, bargain_list_rate.attr_self');
  Q.SQL.Add('FROM	  bargain_list_rate inner join shaping_rate on bargain_list_rate.rate_id = shaping_rate.shaping_rate_id');
  Q.SQL.Add('WHERE	bargain_id = ' + IntToStr(Fbargain_id));
  Q.Open;

  Q.First;
  while not Q.Eof do begin
    rate_id       := Q.FieldByName('rate_id'      ).AsInteger;
    type_tools_id := Q.FieldByName('type_tools_id').AsInteger;
    attr_self     := Q.FieldByName('attr_self'    ).AsInteger;

    if FClientDS_RateType.Locate('type_tools_id;attr_self', VarArrayOf([type_tools_id, attr_self]), []) then begin
      FClientDS_RateType.Edit;
      if Q.FieldByName('set_one').AsBoolean = False then FClientDS_RateType.FieldByName('set_one').Value := 0;
      FClientDS_RateType.FieldByName('rate_val_' + IntToStr(rate_id)).Value := Q.FieldByName('rate_val').AsCurrency;
      FClientDS_RateType.Post;
    end;

    Q.Next;
  end;

  Q.Free;
end;

procedure TfmBargainList2.CreateFactDetail();
var i : integer;
    Q : TADOQuery;
begin
  FClientDS_FactDetail := TClientDataSet.Create(nil);
  FClientDS_FactDetail.FieldDefs.Add('fact_id', ftInteger);
  FClientDS_FactDetail.FieldDefs.Add('date_from_to', ftDate);
  FClientDS_FactDetail.FieldDefs.Add('datpr', ftDate);
  FClientDS_FactDetail.FieldDefs.Add('num_vagon', ftInteger);
  FClientDS_FactDetail.FieldDefs.Add('num_document_pref', ftString, 3);
  FClientDS_FactDetail.FieldDefs.Add('num_document', ftString, 101);
  FClientDS_FactDetail.FieldDefs.Add('fact_weight', ftCurrency);
  FClientDS_FactDetail.FieldDefs.Add('type_kontener', ftInteger);
  FClientDS_FactDetail.FieldDefs.Add('type_kontener_name', ftString, 801);
  FClientDS_FactDetail.FieldDefs.Add('attr_self', ftInteger);
  FClientDS_FactDetail.FieldDefs.Add('attr_self_name', ftString, 50);
  FClientDS_FactDetail.FieldDefs.Add('global_color', ftInteger);
  for i := 0 to FContractList.Count - 1 do begin
    FClientDS_FactDetail.FieldDefs.Add('count_vagon_'  + FContractList.Strings[i], ftInteger);
    FClientDS_FactDetail.FieldDefs.Add('count_weight_' + FContractList.Strings[i], ftCurrency);
    FClientDS_FactDetail.FieldDefs.Add('fact_rate_'    + FContractList.Strings[i], ftCurrency);
    FClientDS_FactDetail.FieldDefs.Add('fact_sum_'     + FContractList.Strings[i], ftCurrency);
  end;
  FClientDS_FactDetail.CreateDataSet;
  FClientDS_FactDetail.LogChanges := False;
  FClientDS_FactDetail.IndexDefs.Add('ClientDS_Index1', 'fact_id', []);
  FClientDS_FactDetail.IndexName := 'ClientDS_Index1';

  Q := TADOQuery.Create(nil);
  Q.Connection := Fconnect;

  Q.SQL.Clear;
  Q.SQL.Add('SELECT * FROM view_bargain_fact WHERE set_main = 1 AND bargain_id = ' + IntToStr(Fbargain_id));
  Q.Open;
  while not Q.Eof do begin

    FClientDS_FactDetail.Append;
    FClientDS_FactDetail.FieldByName('fact_id'            ).Value := Q.FieldByName('fact_id').Value;
    FClientDS_FactDetail.FieldByName('num_document'       ).Value := Q.FieldByName('num_document').Value;
    FClientDS_FactDetail.FieldByName('num_document_pref'  ).Value := Q.FieldByName('num_document_pref').Value;
    FClientDS_FactDetail.FieldByName('num_vagon'          ).Value := Q.FieldByName('num_vagon').Value;
    FClientDS_FactDetail.FieldByName('date_from_to'       ).Value := Q.FieldByName('date_from_to').Value;
    FClientDS_FactDetail.FieldByName('datpr'              ).Value := Q.FieldByName('datpr').Value;
    FClientDS_FactDetail.FieldByName('type_kontener'      ).Value := Q.FieldByName('type_kontener').Value;
    FClientDS_FactDetail.FieldByName('type_kontener_name' ).Value := Q.FieldByName('type_kontener_name').Value;
    FClientDS_FactDetail.FieldByName('attr_self'          ).Value := Q.FieldByName('attr_self').Value;
    FClientDS_FactDetail.FieldByName('attr_self_name'     ).Value := Q.FieldByName('attr_self_name').Value;
    FClientDS_FactDetail.FieldByName('fact_weight'        ).Value := Q.FieldByName('fact_weight').Value;
    FClientDS_FactDetail.FieldByName('global_color'       ).Value := Q.FieldByName('global_color').Value;
    FClientDS_FactDetail.Post;

    Q.Next();
  end;

  DS_FactDetail.DataSet := FClientDS_FactDetail;
  Q.Free;
end;


procedure TfmBargainList2.CreateSum();
var i : integer;
begin
  ClientDS_Sum.Free;

  ClientDS_Sum := TClientDataSet.Create(nil);
  ClientDS_Sum.FieldDefs.Add('sum_id', ftInteger);
  ClientDS_Sum.FieldDefs.Add('sum_caption', ftString, 20);
  for i := 0 to FContractList.Count - 1 do begin
    ClientDS_Sum.FieldDefs.Add('contract_val_'  + FContractList.Strings[i], ftCurrency);
  end;
  ClientDS_Sum.CreateDataSet;
  ClientDS_Sum.LogChanges := False;

  ClientDS_Sum.Append;
  ClientDS_Sum.FieldByName('sum_id'     ).Value := 1;
  ClientDS_Sum.FieldByName('sum_caption').Value := 'Вес';
  ClientDS_Sum.Post;

  ClientDS_Sum.Append;
  ClientDS_Sum.FieldByName('sum_id'     ).Value := 2;
  ClientDS_Sum.FieldByName('sum_caption').Value := 'Кол-во ваг';
  ClientDS_Sum.Post;

  ClientDS_Sum.Append;
  ClientDS_Sum.FieldByName('sum_id'     ).Value := 3;
  ClientDS_Sum.FieldByName('sum_caption').Value := 'Сумма USD';
  ClientDS_Sum.Post;

  ClientDS_Sum.Append;
  ClientDS_Sum.FieldByName('sum_id'     ).Value := 4;
  ClientDS_Sum.FieldByName('sum_caption').Value := 'Сумма RUB';
  ClientDS_Sum.Post;

  ClientDS_Sum.Append;
  ClientDS_Sum.FieldByName('sum_id'     ).Value := 5;
  ClientDS_Sum.FieldByName('sum_caption').Value := 'Комиссия USD';
  ClientDS_Sum.Post;

  ClientDS_Sum.Append;
  ClientDS_Sum.FieldByName('sum_id'     ).Value := 6;
  ClientDS_Sum.FieldByName('sum_caption').Value := 'Комиссия RUB';
  ClientDS_Sum.Post;

  DS_Sum.DataSet := ClientDS_Sum;
end;

procedure TfmBargainList2.CreateGridDetail();
var        i : integer;
      column : TcxGridDBBandedColumn;
        band : TcxGridBand;
  set_arenda : boolean;
 ed_izm_name : string;
begin
  cxGridDBBandedTableView1.DataController.DataSource := nil;
  for i := 0 to FContractList.Count - 1 do begin

    band := cxGridDBBandedTableView1.Bands.Add;
    if Client_Contract.Locate('global_id', FContractList.Strings[i], []) then begin

      ed_izm_name := Client_Contract.FieldByName('ed_izm_name').AsString;

      if (Client_Contract.FieldByName('ed_izm_cod').AsString = '004') and
         (Client_Contract.FieldByName('vid_send').AsInteger = 3) then begin
        set_arenda := True;
      end else begin
        set_arenda := False;
      end;


      band.Caption := Client_Contract.FieldByName('firm_customer_name').AsString + ' (' + Client_Contract.FieldByName('brief_name').AsString + ', НДС-' + Client_Contract.FieldByName('nds_name').AsString + ')';
      band.Options.Moving := False;
      if Client_Contract.FieldByName('service_type').AsInteger = 0 then
        band.Styles.Header := cxStyle_Sum_Client
      else
        band.Styles.Header := cxStyle_Sum_Agent;
    end;

    column := cxGridDBBandedTableView1.CreateColumn;
    column.DataBinding.FieldName := 'count_vagon_' + FContractList.Strings[i];
    column.Caption  := 'Ваг.';
    column.Name     := 'cxGridDBBandedTableView1' + column.DataBinding.FieldName;
    column.Width    := 40;
    column.Tag      := StrToInt(FContractList.Strings[i]);
    column.HeaderAlignmentVert := vaTop;
    column.Position.BandIndex := band.Index;
    column.PropertiesClassName := 'TcxCurrencyEditProperties';
    TcxCurrencyEditProperties(column.Properties).DisplayFormat := '#,##0';
    column.Styles.Content := cxStyle_AgreeFact;
    column.Summary.FooterKind   := skSum;
    column.Summary.FooterFormat := '#,##0';
    column.Options.Moving := False;
    column.OnGetDisplayText := cxGrid3DBBandedTableView1count_vagonGetDisplayText;

    column := cxGridDBBandedTableView1.CreateColumn;
    column.DataBinding.FieldName := 'count_weight_' + FContractList.Strings[i];
    if set_arenda = False then
      column.Caption  := 'Р.вес'
    else
      column.Caption  := 'Дни аренды';
    column.Name     := 'cxGridDBBandedTableView1' + column.DataBinding.FieldName;
    column.Width    := 50;
    column.Tag      := StrToInt(FContractList.Strings[i]);
    column.HeaderAlignmentVert := vaTop;
    column.Position.BandIndex := band.Index;
    column.PropertiesClassName := 'TcxCurrencyEditProperties';
    TcxCurrencyEditProperties(column.Properties).DisplayFormat := '#,##0.000';
    column.Styles.Content := cxStyle_AgreeFact;
    column.Summary.FooterKind   := skSum;
    column.Summary.FooterFormat := '#,##0.000';
    column.Options.Moving := False;
    column.OnGetDisplayText := cxGrid3DBBandedTableView1count_vagonGetDisplayText;

    column := cxGridDBBandedTableView1.CreateColumn;
    column.DataBinding.FieldName := 'fact_rate_' + FContractList.Strings[i];
    column.Caption  := 'Ставка, ' + ed_izm_name;
    column.Name     := 'cxGridDBBandedTableView1' + column.DataBinding.FieldName;
    column.Width    := 50;
    column.Tag      := StrToInt(FContractList.Strings[i]);
    column.HeaderAlignmentVert := vaTop;
    column.Position.BandIndex := band.Index;
    column.PropertiesClassName := 'TcxCurrencyEditProperties';
    TcxCurrencyEditProperties(column.Properties).DisplayFormat := '#,##0.00';
    column.Styles.Content := cxStyle_ClientFrahtCard_Rashod_RUB;
    column.Options.Moving := False;
    column.OnGetDisplayText := cxGrid3DBBandedTableView1count_vagonGetDisplayText;

//    column := cxGridDBBandedTableView1.CreateColumn;
//    column.DataBinding.FieldName := 'fact_add_sum_' + FContractList.Strings[i];
//    column.Caption  := 'Доп. сбор';
//    column.Name     := 'cxGridDBBandedTableView1' + column.DataBinding.FieldName;
//    column.Width    := 60;
//    column.Tag      := StrToInt(FContractList.Strings[i]);
//    column.HeaderAlignmentVert := vaTop;
//    column.Position.BandIndex := band.Index;
//    column.PropertiesClassName := 'TcxCurrencyEditProperties';
//    TcxCurrencyEditProperties(column.Properties).DisplayFormat := '#,##0.00';
//    column.Styles.Content := cxStyle_AgreeFact;
//    column.Options.Moving := False;
//    column.OnGetDisplayText := cxGrid3DBBandedTableView1count_vagonGetDisplayText;

    column := cxGridDBBandedTableView1.CreateColumn;
    column.DataBinding.FieldName := 'fact_sum_' + FContractList.Strings[i];
    column.Caption  := 'Сумма, ' + Client_Contract.FieldByName('brief_name').AsString;
    column.Name     := 'cxGridDBBandedTableView1' + column.DataBinding.FieldName;
    column.Width    := 70;
    column.Tag      := StrToInt(FContractList.Strings[i]);
    column.HeaderAlignmentVert := vaTop;
    column.Position.BandIndex := band.Index;
    column.PropertiesClassName := 'TcxCurrencyEditProperties';
    TcxCurrencyEditProperties(column.Properties).DisplayFormat := '#,##0.00';
    column.Styles.Content := cxStyle_AgreeFact;
    column.Summary.FooterKind   := skSum;
    column.Summary.FooterFormat := '#,##0.00';
    column.Options.Moving := False;
    column.OnGetDisplayText := cxGrid3DBBandedTableView1count_vagonGetDisplayText;
  end;
  cxGridDBBandedTableView1.DataController.DataSource := DS_FactDetail;
end;


procedure TfmBargainList2.CreateGridSum();
var        i : integer;
      column : TcxGridDBBandedColumn;
begin
  cxGridDBBandedTableView1.DataController.DataSource := nil;
  for i := 0 to FContractList.Count - 1 do begin

    if Client_Contract.Locate('global_id', FContractList.Strings[i], []) then begin

      column := cxGridDBBandedTableView4.CreateColumn;
      column.DataBinding.FieldName := 'contract_val_' + FContractList.Strings[i];
      column.Caption  := Client_Contract.FieldByName('firm_customer_name').AsString + ' (' + Client_Contract.FieldByName('brief_name').AsString + ', НДС-' + Client_Contract.FieldByName('nds_name').AsString + ')';
      column.Name     := 'cxGridDBBandedTableView4' + column.DataBinding.FieldName;
      column.Width    := 100;
      column.Tag      := StrToInt(FContractList.Strings[i]);
      column.HeaderAlignmentVert := vaTop;
      column.PropertiesClassName := 'TcxCurrencyEditProperties';
      TcxCurrencyEditProperties(column.Properties).DisplayFormat := '#,##0.00';
      column.Options.Moving := False;

      if Client_Contract.FieldByName('service_type').AsInteger = 0 then
        column.Styles.Header := cxStyle_Sum_Client
      else
        column.Styles.Header := cxStyle_Sum_Agent;

    end;


  end;
  cxGridDBBandedTableView1.DataController.DataSource := DS_FactDetail;
end;

procedure TfmBargainList2.UpdateClientRate();
var    rate_id : integer;
 type_tools_id : integer;
     attr_self : integer;
             i : integer;
      ClientDS : TClientDataSet;
begin
  FClientDS_RateType.EmptyDataSet;
  FClientDS_RateType.Filter := '';
  FClientDS_RateType.Filtered := False;

  ClientDS := TClientDataSet.Create(nil);

  ClientDS.Data     := ClientDS_ListRate.Data;
  ClientDS.Filter   := '';
  ClientDS.Filtered := False;
  ClientDS.First;
  while not ClientDS.Eof do begin
    if not FClientDS_RateType.Locate('type_tools_id;attr_self', VarArrayOf([ClientDS.FieldByName('type_tools_id').Value, ClientDS.FieldByName('attr_self').Value]), []) then begin
      FClientDS_RateType.Append;
      FClientDS_RateType.FieldByName('type_tools_id' ).Value := ClientDS.FieldByName('type_tools_id').Value;
      FClientDS_RateType.FieldByName('attr_self'     ).Value := ClientDS.FieldByName('attr_self').Value;
      FClientDS_RateType.FieldByName('set_one'       ).Value := 1;

      for i := 0 to FContractList.Count - 1 do begin
        FClientDS_RateType.FieldByName('rate_val_' + FContractList.Strings[i]).Value := 0;
      end;

      FClientDS_RateType.Post;
    end;
    ClientDS.Next;
  end;


  ClientDS.First;
  while not ClientDS.Eof do begin

    rate_id       := ClientDS.FieldByName('rate_id'      ).AsInteger;
    type_tools_id := ClientDS.FieldByName('type_tools_id').AsInteger;
    attr_self     := ClientDS.FieldByName('attr_self'    ).AsInteger;

    if FClientDS_RateType.Locate('type_tools_id;attr_self', VarArrayOf([type_tools_id, attr_self]), []) then begin
      FClientDS_RateType.Edit;
      if ClientDS.FieldByName('set_one').AsBoolean = False then FClientDS_RateType.FieldByName('set_one').Value := 0;
      FClientDS_RateType.FieldByName('rate_val_' + IntToStr(rate_id)).Value := ClientDS.FieldByName('rate_val').AsCurrency;
      FClientDS_RateType.Post;
    end;

    ClientDS.Next;
  end;

  ClientDS.Free;
end;

procedure TfmBargainList2.LoadRateExcel(Sender: TObject);
var new_str, file_name  : string;
    exApp, exWkb, exWks : OleVariant;
    cnt, i, k, rate_id,
              type_rate : integer;
            OpenDialog1 : TOpenDialog;

          type_tools_id : integer;
              attr_self : integer;
        type_tools_name : string;
         attr_self_name : string;
begin
  rate_id := (Sender as TdxBarButton).Tag;

  OpenDialog1 := TOpenDialog.Create(nil);
  OpenDialog1.Filter      := 'Excel файлы|*.xls;*.xlsx';
  OpenDialog1.DefaultExt  := 'xls';
  if OpenDialog1.Execute then begin
    file_name := OpenDialog1.FileName;

    if not InputQuery('Номер строки для загрузки', 'Введите номер строки', new_str) then begin
      Application.MessageBox('НЕОБХОДИМ НОМЕР СТРОКИ!!!', 'ВНИМАНИЕ', MB_OK);
      Exit;
    end;
    ShowTextMessage('Запуск сервера автоматизации...', False);

    exApp := CreateOleObject('Excel.Application');
    exWkb := exApp.Workbooks.Open(file_name);
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

    fmBargainRate := TfmBargainRate.Create(Application, Fconnect, Fusr_pwd);

//    fmBargainRate._SetTypeKontener := cxGrid3DBBandedTableView1type_kontener.DataBinding.Field.AsInteger;
//    fmBargainRate._SetAttrSelf     := cxGrid3DBBandedTableView1attr_self.DataBinding.Field.AsInteger;
    fmBargainRate._SetSelectRate   := False;
    fmBargainRate._SetSelectParam  := False;

    if fmBargainRate.ShowModal=mrOk then begin
      type_tools_id  := fmBargainRate._GetTypeKontener;
      attr_self      := fmBargainRate._GetAttrSelf;
      type_tools_name:= fmBargainRate._GetTypeKontenerName;
      attr_self_name := fmBargainRate._GetAttrSelfName;
      i := StrToInt(new_str);
      for k:=0 to cnt-1 do begin
        ClientDS_ListRate.Append;
        ClientDS_ListRate.FieldValues['rate_id']        := rate_id;
        ClientDS_ListRate.FieldValues['type_rate']      := type_rate;
        ClientDS_ListRate.FieldValues['type_tools_id']  := type_tools_id;
        ClientDS_ListRate.FieldValues['attr_self']      := attr_self;
        ClientDS_ListRate.FieldValues['type_tools_name']:= type_tools_name;
        ClientDS_ListRate.FieldValues['attr_self_name'] := attr_self_name;
        ClientDS_ListRate.FieldValues['weight']         := exWks.Cells[i+k, 1].Value;
        ClientDS_ListRate.FieldValues['rate_val']       := exWks.Cells[i+k, 2].Value;
        ClientDS_ListRate.Post;
        ShowTextMessage('Осталось '+IntToStr(cnt-k)+' строк...', False);
      end;
    end;
    ShowTextMessage;
    exApp.Quit;
  end;
  OpenDialog1.Free;

end;

procedure TfmBargainList2.CreateBarButton(var BarSubItem: TdxBarSubItem; onObject: TNotifyEvent);
var ClientDS: TClientDataSet;
begin
  // Удаляем сами кнопки, а не только чистим список ссылок
  while BarSubItem.ItemLinks.Count > 0 do begin
    BarSubItem.ItemLinks[BarSubItem.ItemLinks.Count - 1].Item.Free;
  end;
//  BarSubItem.ItemLinks.Clear;

  ClientDS := TClientDataSet.Create(nil);
  ClientDS.Data := Client_Contract.Data;

  ClientDS.First;
  while not ClientDS.Eof do begin
    AddNewBarButton(BarSubItem, ClientDS.FieldByName('firm_customer_name').AsString, ClientDS.FieldByName('global_id').AsInteger, -1, onObject, (ClientDS.RecNo = 2));
    ClientDS.Next;
  end;
  ClientDS.Free;
end;

procedure TfmBargainList2.dxBarSubItem104Click(Sender: TObject);
begin
  CreateBarButton(TdxBarSubItem(Sender), FunctionGridRateSablon);
end;

procedure TfmBargainList2.FunctionGridRateSablon(Sender: TObject);
type
  TFunc = function(AppHand:THandle; id:integer; type_doc_id:integer; caption: string; usr_pwd:PUser_pwd; flag: boolean):variant;
var
  FShablon  : TFunc;
  handle    : THandle;
  v         : Variant;
  doc_cod    : integer;
begin
  handle := LoadLibrary('dictionary.dll');
  @FShablon := GetProcAddress(handle,'CreateWndDocShablon');
  v := FShablon(Application.Handle, -8, 5, 'Сетки ставок', Fusr_pwd, True);
  doc_cod := v[2];
  FreeLibrary(handle);
  dxBarSubItem104.Tag := doc_cod;
  FunctionGridRate(Sender);
end;

procedure TfmBargainList2.dxBarSubItem107Popup(Sender: TObject);
begin
   // Сетки с ПП
  CreateBarButton(TdxBarSubItem(Sender), FunctionGridRate4RoutePP);
end;

procedure TfmBargainList2.dxBarSubItem10Popup(Sender: TObject);
begin
  CreateBarButton(TdxBarSubItem(Sender), FunctionRate3);
end;

procedure TfmBargainList2.dxBarSubItem110Popup(Sender: TObject);
begin
  CreateBarButton(TdxBarSubItem(Sender), FunctionRate53);
end;

procedure TfmBargainList2.dxBarSubItem11Popup(Sender: TObject);
begin
  CreateBarButton(TdxBarSubItem(Sender), FunctionRate9);
end;

procedure TfmBargainList2.dxBarSubItem12Popup(Sender: TObject);
begin
  CreateBarButton(TdxBarSubItem(Sender), FunctionRate10);
end;

procedure TfmBargainList2.dxBarSubItem13Popup(Sender: TObject);
begin
  CreateBarButton(TdxBarSubItem(Sender), FunctionRate11);
end;

procedure TfmBargainList2.dxBarSubItem14Popup(Sender: TObject);
begin
  CreateBarButton(TdxBarSubItem(Sender), FunctionRate12);
end;

procedure TfmBargainList2.dxBarSubItem15Popup(Sender: TObject);
begin
  CreateBarButton(TdxBarSubItem(Sender), FunctionRate50);
end;

procedure TfmBargainList2.dxBarSubItem17Popup(Sender: TObject);
begin
  CreateBarButton(TdxBarSubItem(Sender), FunctionRate51);
end;

procedure TfmBargainList2.dxBarSubItem19Popup(Sender: TObject);
begin
   // Сетки
  CreateBarButton(TdxBarSubItem(Sender), FunctionGridRate);
end;

procedure TfmBargainList2.dxBarSubItem62Popup(Sender: TObject);
begin
  CreateBarButton(TdxBarSubItem(Sender), LoadRateExcel);
end;

procedure TfmBargainList2.dxBarSubItem66Popup(Sender: TObject);
begin
  CreateBarButton(TdxBarSubItem(Sender), FunctionRate14);
end;

procedure TfmBargainList2.dxBarSubItem6Popup(Sender: TObject);
begin
  CreateBarButton(TdxBarSubItem(Sender), FunctionRate52);
end;


procedure TfmBargainList2.dxBarSubItem70Popup(Sender: TObject);
begin
  CreateBarButton(TdxBarSubItem(Sender), FunctionRate15);
end;

procedure TfmBargainList2.dxBarSubItem7Popup(Sender: TObject);
begin
  CreateBarButton(TdxBarSubItem(Sender), FunctionRate1);
end;

procedure TfmBargainList2.dxBarSubItem8Popup(Sender: TObject);
begin
  CreateBarButton(TdxBarSubItem(Sender), FunctionRate2);
end;

procedure TfmBargainList2.dxBarSubItem9Popup(Sender: TObject);
begin
  CreateBarButton(TdxBarSubItem(Sender), FunctionRate4);
end;

end.

