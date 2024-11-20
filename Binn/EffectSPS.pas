unit EffectSPS;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Default,
  Dialogs, DB, DBClient, cxGraphics, cxControls, cxLookAndFeels, ComObj,
  cxLookAndFeelPainters, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, cxDBData, cxGridCustomTableView, cxGridTableView,
  cxGridBandedTableView, cxGridDBBandedTableView, cxGridCustomView, cxClasses,
  cxGridLevel, cxGrid, dxBar, ExtCtrls, StdCtrls, StrUtils, cxCurrencyEdit,
  cxContainer, cxTextEdit, cxMemo, cxLabel, ADODB, cxCalendar, cxPC, cxCheckBox, cxRichEdit, cxColorComboBox, Menus, cxButtons,
  cxCustomPivotGrid, cxDBPivotGrid, dxmdaset, cxPivotGridCustomDataSet, cxPivotGridDrillDownDataSet,
  dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel,
  dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
  dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMetropolis, dxSkinMetropolisDark, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013DarkGray,
  dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinPumpkin, dxSkinSeven,
  dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus, dxSkinSilver,
  dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008, dxSkinTheAsphaltWorld,
  dxSkinsDefaultPainters, dxSkinValentine, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue, dxSkinscxPCPainter, dxBarBuiltInMenu, cxNavigator,
  dxSkinsdxBarPainter, dxSkinOffice2016Colorful, dxSkinOffice2016Dark, dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, dxSkinTheBezier, cxDataControllerConditionalFormattingRulesManagerDialog, dxDateRanges, cxPropertiesStore, cxPivotGrid,
  dxSkinOffice2019Colorful, dxScrollbarAnnotations, dxSkinOffice2019Black,
  dxSkinBasic, dxSkinOffice2019DarkGray, dxSkinOffice2019White, dxSkinWXI;

type
  TfmEffectSPS = class(TForm)
    Client_EffectSPS: TClientDataSet;
    Client_EffectSPSid: TAutoIncField;
    Client_EffectSPSnode_begin_id: TIntegerField;
    Client_EffectSPSnode_begin_cod: TStringField;
    Client_EffectSPSnode_begin_name: TStringField;
    Client_EffectSPSnode_end_id: TIntegerField;
    Client_EffectSPSnode_end_cod: TStringField;
    Client_EffectSPSnode_end_name: TStringField;
    Client_EffectSPSspeed_avg: TIntegerField;
    Client_EffectSPSweight: TIntegerField;
    Client_EffectSPSkargoETSNG_id: TIntegerField;
    Client_EffectSPSkargoETSNG_cod: TStringField;
    Client_EffectSPSkargoETSNG_name: TStringField;
    Client_EffectSPSkargoGNG_id: TIntegerField;
    Client_EffectSPSkargoGNG_cod: TStringField;
    Client_EffectSPSkargoGNG_name: TStringField;
    Client_EffectSPStype_park_id: TIntegerField;
    Client_EffectSPStype_park_name: TStringField;
    Client_EffectSPSdays_load: TIntegerField;
    Client_EffectSPSdelivery_period: TIntegerField;
    Client_EffectSPSrate_agree: TIntegerField;
    Client_EffectSPSrate_type_id: TIntegerField;
    Client_EffectSPSrate_type_name: TStringField;
    Client_EffectSPSformula_id: TIntegerField;
    Client_EffectSPSformula_name: TStringField;
    Client_EffectSPSset_self_cost: TBooleanField;
    Client_EffectSPSset_vohr: TBooleanField;
    Client_EffectSPSsum_vohr: TCurrencyField;
    Client_EffectSPSdistance: TIntegerField;
    Client_EffectSPStime_way: TFloatField;
    Client_EffectSPStime_route: TFloatField;
    Client_EffectSPScount_repeat: TFloatField;
    Client_EffectSPSpercent_empty: TFloatField;
    Client_EffectSPStariff: TCurrencyField;
    Client_EffectSPStariff_not_nds: TCurrencyField;
    Client_EffectSPStariff_self: TCurrencyField;
    Client_EffectSPSprofit_vagon: TCurrencyField;
    Client_EffectSPSprofit_month: TCurrencyField;
    Client_EffectSPSprofit_day: TCurrencyField;
    DS_EffectSPS: TDataSource;
    dxBarManager1: TdxBarManager;
    Popup_EffectSPS: TdxBarPopupMenu;
    dxBarButton1: TdxBarButton;
    dxBarSubItem1: TdxBarSubItem;
    dxBarButton2: TdxBarButton;
    dxBarButton3: TdxBarButton;
    dxBarButton4: TdxBarButton;
    dxBarButton5: TdxBarButton;
    dxBarButton6: TdxBarButton;
    Client_EffectSPScount_vagon: TIntegerField;
    Client_EffectSPSrate_calc_value: TCurrencyField;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1: TcxStyle;
    Client_EffectSPStariff_self_not_nds: TCurrencyField;
    dxBarButton7: TdxBarButton;
    dxBarButton8: TdxBarButton;
    dxBarManager1Bar1: TdxBar;
    dxBarButton9: TdxBarButton;
    dxBarButton10: TdxBarButton;
    Client_EffectSPSkargoETSNG_add_id: TIntegerField;
    Client_EffectSPSkargoETSNG_add_cod: TStringField;
    Client_EffectSPSkargoETSNG_add_name: TStringField;
    dxBarButton11: TdxBarButton;
    SP_PlanProfit: TADOStoredProc;
    dxBarButton12: TdxBarButton;
    dxBarButton13: TdxBarButton;
    dxBarSubItem2: TdxBarSubItem;
    dxBarButton14: TdxBarButton;
    cxPageControl1: TcxPageControl;
    cxTabSheet1: TcxTabSheet;
    cxGrid1: TcxGrid;
    cxGrid1DBBandedTableView1: TcxGridDBBandedTableView;
    cxGrid1DBBandedTableView1id: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1node_begin_id: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1node_begin_cod: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1node_begin_name: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1node_end_id: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1node_end_cod: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1node_end_name: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1speed_avg: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1weight: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1kargoETSNG_id: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1kargoETSNG_cod: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1kargoETSNG_name: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1kargoGNG_id: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1kargoGNG_cod: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1kargoGNG_name: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1type_park_id: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1type_park_name: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1days_load: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1delivery_period: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1count_vagon: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1rate_agree: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1rate_type_id: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1rate_type_name: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1formula_id: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1formula_name: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1set_self_cost: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1rate_calc_value: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1set_vohr: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1sum_vohr: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1distance: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1time_way: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1time_route: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1count_repeat: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1percent_empty: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1tariff: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1tariff_not_nds: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1tariff_self: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1tariff_self_not_nds: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1profit_vagon: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1profit_month: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1profit_day: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1kargoETSNG_add_name: TcxGridDBBandedColumn;
    cxGrid1Level1: TcxGridLevel;
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label5: TLabel;
    cxCurrencyEdit1: TcxCurrencyEdit;
    cxCurrencyEdit2: TcxCurrencyEdit;
    cxCurrencyEdit3: TcxCurrencyEdit;
    cxCurrencyEdit4: TcxCurrencyEdit;
    cxCurrencyEdit5: TcxCurrencyEdit;
    cxCurrencyEdit6: TcxCurrencyEdit;
    cxCurrencyEdit7: TcxCurrencyEdit;
    cxCurrencyEdit8: TcxCurrencyEdit;
    cxCurrencyEdit9: TcxCurrencyEdit;
    cxCurrencyEdit10: TcxCurrencyEdit;
    cxCurrencyEdit11: TcxCurrencyEdit;
    cxCurrencyEdit12: TcxCurrencyEdit;
    cxRichEdit1: TcxRichEdit;
    cxTabSheet2: TcxTabSheet;
    dxBarDockControl1: TdxBarDockControl;
    dxBarManager1Bar2: TdxBar;
    dxBarDockControl2: TdxBarDockControl;
    cxGrid2: TcxGrid;
    cxGrid2DBBandedTableView1: TcxGridDBBandedTableView;
    cxGrid2DBBandedTableView1date_period: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1firm_customer_name: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1brief_name: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1node_begin_name: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1node_end_name: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1bargain_sum: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1kargoETSNG_name: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1kargoETSNG_cod: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1quantity: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1quantity_units: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1ed_izm_name: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1bargain_color: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1node_begin_cod: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1node_end_cod: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1bargain_comiss: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1bargain_group: TcxGridDBBandedColumn;
    cxGrid2Level1: TcxGridLevel;
    DS_PlanProfit: TDataSource;
    Popup_PlanProfit: TdxBarPopupMenu;
    dxBarSubItem3: TdxBarSubItem;
    dxBarSubItem4: TdxBarSubItem;
    dxBarButton15: TdxBarButton;
    dxBarButton16: TdxBarButton;
    cxGrid2DBBandedTableView1vagon_profit_days: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1time_trip: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1dohod_full: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1dohod_using: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1rashod_full_zfto: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1rashod_empty: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1vagon_profit_percent: TcxGridDBBandedColumn;
    dxBarButton17: TdxBarButton;
    Client_PlanProfit: TClientDataSet;
    Client_PlanProfitbargain_id: TIntegerField;
    Client_PlanProfitbargain_cod: TStringField;
    Client_PlanProfitfirm_customer_name: TStringField;
    Client_PlanProfitnode_begin_name: TStringField;
    Client_PlanProfitnode_end_name: TStringField;
    Client_PlanProfitnode_begin_cod: TStringField;
    Client_PlanProfitnode_end_cod: TStringField;
    Client_PlanProfitkargoETSNG_name: TStringField;
    Client_PlanProfitkargoETSNG_cod: TStringField;
    Client_PlanProfitour_rate_total_val: TFloatField;
    Client_PlanProfitbrief_name: TStringField;
    Client_PlanProfitquantity: TFloatField;
    Client_PlanProfitquantity_units: TIntegerField;
    Client_PlanProfited_izm_name: TStringField;
    Client_PlanProfited_izm_cod: TStringField;
    Client_PlanProfitcurrency_id: TIntegerField;
    Client_PlanProfitvagon_profit_days: TBCDField;
    Client_PlanProfitbargain_group: TStringField;
    Client_PlanProfitFIO_users_owner: TStringField;
    Client_PlanProfitbargain_sum: TFloatField;
    Client_PlanProfitbargain_comiss: TBCDField;
    cxGrid2DBBandedTableView1distance: TcxGridDBBandedColumn;
    Client_PlanProfitdistance: TIntegerField;
    Client_PlanProfitvagon_speed: TCurrencyField;
    cxGrid2DBBandedTableView1vagon_speed: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1time_load: TcxGridDBBandedColumn;
    Client_PlanProfittime_trip: TCurrencyField;
    Client_PlanProfitdohod_full: TCurrencyField;
    Client_PlanProfitrashod_full: TCurrencyField;
    Client_PlanProfitdohod_using: TCurrencyField;
    Client_PlanProfitrashod_empty: TCurrencyField;
    Client_PlanProfittime_load: TCurrencyField;
    Splitter1: TSplitter;
    cxGrid3: TcxGrid;
    cxGrid3DBBandedTableView1: TcxGridDBBandedTableView;
    cxGrid3DBBandedTableView1bargain_id: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1bargain_cod: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1our_rate_total_val: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1contract_id: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1contract_cod: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1date_period: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1firm_customer_name: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1firm_self_name: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1brief_name: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1users_owner_id: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1FIO_users_owner: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1node_begin_name: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1node_end_name: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1bargain_sum: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1kargoETSNG_name: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1kargoETSNG_cod: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1date_enter: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1vid_transfer_name: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1our_rate_val: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1our_rate_comiss_val: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1quantity: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1quantity_units: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1ed_izm_name: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1ed_izm_cod: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1amount_fact: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1amount_units_fact: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1bargain_sum_fact: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1bargain_sum_fact_USD: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1bargain_comiss_USD: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1bargain_comiss_real: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1global_color: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1currency_id: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1currency_val_USD: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1currency_val_EUR: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1currency_val_RUB: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1currency_val_CHF: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1node_begin_cod: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1node_end_cod: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1our_rate_vid_send: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1instruction_date: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1instruction_cod: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1bargain_comiss: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1bargain_close: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1bargain_note: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1firm_sender_name: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1five_days_zfto_name: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1state_begin_name: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1state_end_name: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1bargain_group: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1bargain_comiss_nds_name: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1bargain_comiss_nds_cod: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1cnt_global_doc: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1vagon_profit_days: TcxGridDBBandedColumn;
    cxGrid3Level1: TcxGridLevel;
    Query_Agree: TADOQuery;
    DS_Agree: TDataSource;
    Client_PlanProfitvagon_profit_days_calc: TCurrencyField;
    Client_PlanProfitcontract_id: TIntegerField;
    cxGrid2DBBandedTableView1contract_id: TcxGridDBBandedColumn;
    dxBarButton18: TdxBarButton;
    dxBarPopupMenu1: TdxBarPopupMenu;
    dxBarButton19: TdxBarButton;
    dxBarSubItem5: TdxBarSubItem;
    cxGrid2DBBandedTableView1rashod_inv_park: TcxGridDBBandedColumn;
    Client_PlanProfitrashod_inv_park: TCurrencyField;
    cxGrid2DBBandedTableView1our_rate_kargo_capacity: TcxGridDBBandedColumn;
    Client_PlanProfitour_rate_kargo_capacity: TCurrencyField;
    dxBarButton20: TdxBarButton;
    Client_PlanProfitvagon_profit_percent: TCurrencyField;
    cxGrid2DBBandedTableView1vagon_profit_days_calc: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1rashod_full: TcxGridDBBandedColumn;
    Client_PlanProfitrashod_full_zfto: TCurrencyField;
    cxTabSheet3: TcxTabSheet;
    SP_Profit2: TADOStoredProc;
    DS_Profit2: TDataSource;
    dxBarDockControl3: TdxBarDockControl;
    dxBarManager1Bar3: TdxBar;
    Panel2: TPanel;
    GroupBox1: TGroupBox;
    cxGrid6: TcxGrid;
    cxGrid6DBBandedTableView1: TcxGridDBBandedTableView;
    cxGrid6Level1: TcxGridLevel;
    Splitter3: TSplitter;
    SP_Profit2_Detail: TADOStoredProc;
    DS_Profit2_Detail: TDataSource;
    Popup_Profit2: TdxBarPopupMenu;
    Popup_Profit2_Detail: TdxBarPopupMenu;
    dxBarButton27: TdxBarButton;
    cxTabSheet4: TcxTabSheet;
    dxBarDockControl4: TdxBarDockControl;
    dxBarManager1Bar4: TdxBar;
    Panel3: TPanel;
    cxGrid8: TcxGrid;
    cxGrid8DBBandedTableView1: TcxGridDBBandedTableView;
    cxGrid8DBBandedTableView1bargain_id: TcxGridDBBandedColumn;
    cxGrid8DBBandedTableView1fact_id: TcxGridDBBandedColumn;
    cxGrid8DBBandedTableView1nvag: TcxGridDBBandedColumn;
    cxGrid8DBBandedTableView1dataot: TcxGridDBBandedColumn;
    cxGrid8DBBandedTableView1sto_name: TcxGridDBBandedColumn;
    cxGrid8DBBandedTableView1stn_name: TcxGridDBBandedColumn;
    cxGrid8DBBandedTableView1prev_datpr: TcxGridDBBandedColumn;
    cxGrid8DBBandedTableView1do_name: TcxGridDBBandedColumn;
    cxGrid8DBBandedTableView1fsd_name: TcxGridDBBandedColumn;
    cxGrid8DBBandedTableView1gruz: TcxGridDBBandedColumn;
    cxGrid8DBBandedTableView1gruz_name: TcxGridDBBandedColumn;
    cxGrid8DBBandedTableView1next_dataot: TcxGridDBBandedColumn;
    cxGrid8DBBandedTableView1next_stn_name: TcxGridDBBandedColumn;
    cxGrid8Level1: TcxGridLevel;
    SP_VagonMove: TADOStoredProc;
    DS_VagonMove: TDataSource;
    Popup_VagonMove: TdxBarPopupMenu;
    cxGrid8DBBandedTableView1vg: TcxGridDBBandedColumn;
    cxGrid8DBBandedTableView1datpr: TcxGridDBBandedColumn;
    cxGrid8DBBandedTableView1type_track: TcxGridDBBandedColumn;
    dxBarButton29: TdxBarButton;
    cxGrid8DBBandedTableView1cnt_days_load: TcxGridDBBandedColumn;
    cxGrid8DBBandedTableView1cnt_days_unload: TcxGridDBBandedColumn;
    cxGrid8DBBandedTableView1cnt_days_track: TcxGridDBBandedColumn;
    cxGrid8DBBandedTableView1firm_customer_name: TcxGridDBBandedColumn;
    cxTabSheet5: TcxTabSheet;
    SP_IndicatorJob: TADOStoredProc;
    DS_IndicatorJob: TDataSource;
    cxGrid5: TcxGrid;
    cxGrid5DBBandedTableView1: TcxGridDBBandedTableView;
    cxGrid5Level1: TcxGridLevel;
    cxGrid5DBBandedTableView1period_int: TcxGridDBBandedColumn;
    cxGrid5DBBandedTableView1period_name: TcxGridDBBandedColumn;
    cxGrid5DBBandedTableView1cnt_full: TcxGridDBBandedColumn;
    cxGrid5DBBandedTableView1cnt_empty: TcxGridDBBandedColumn;
    cxGrid5DBBandedTableView1lkr_full: TcxGridDBBandedColumn;
    cxGrid5DBBandedTableView1lkr_empty: TcxGridDBBandedColumn;
    cxGrid5DBBandedTableView1k_empty_lkr: TcxGridDBBandedColumn;
    cxGrid5DBBandedTableView1k_avg_lkr_full: TcxGridDBBandedColumn;
    cxGrid5DBBandedTableView1k_avg_lkr_empty: TcxGridDBBandedColumn;
    cxGrid5DBBandedTableView1k_turn_vagon: TcxGridDBBandedColumn;
    dxBarManager1Bar5: TdxBar;
    dxBarDockControl5: TdxBarDockControl;
    dxBarButton21: TdxBarButton;
    Popup_IndicatorJob: TdxBarPopupMenu;
    cxGrid8DBBandedTableView1next_type_track: TcxGridDBBandedColumn;
    cxGrid8DBBandedTableView1next_attr_track: TcxGridDBBandedColumn;
    cxGrid8DBBandedTableView1next_rashod: TcxGridDBBandedColumn;
    GroupBox2: TGroupBox;
    Splitter2: TSplitter;
    cxGrid7: TcxGrid;
    cxGrid7DBBandedTableView1: TcxGridDBBandedTableView;
    cxGrid7Level1: TcxGridLevel;
    cxGrid7DBBandedTableView1date_month: TcxGridDBBandedColumn;
    cxGrid7DBBandedTableView1cnt_full: TcxGridDBBandedColumn;
    cxGrid7DBBandedTableView1cnt_vagon: TcxGridDBBandedColumn;
    cxGrid7DBBandedTableView1turn_vagon: TcxGridDBBandedColumn;
    SP_IndicatorJobDetail: TADOStoredProc;
    DS_IndicatorJobDetail: TDataSource;
    cxGrid7DBBandedTableView1inc_cnt_full: TcxGridDBBandedColumn;
    cxGrid7DBBandedTableView1inc_cnt_vagon: TcxGridDBBandedColumn;
    cxGrid8DBBandedTableView1attr_track: TcxGridDBBandedColumn;
    cxPivotGridDrillDownDataSet1: TcxPivotGridDrillDownDataSet;
    cxGrid2DBBandedTableView1road_begin_name: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1road_end_name: TcxGridDBBandedColumn;
    Client_PlanProfitroad_begin_name: TStringField;
    Client_PlanProfitroad_end_name: TStringField;
    Client_PlanProfitnode_begin_DP: TStringField;
    Client_PlanProfitnode_end_DP: TStringField;
    Client_PlanProfitnode_begin_RegName: TStringField;
    Client_PlanProfitnode_end_RegName: TStringField;
    cxGrid2DBBandedTableView1node_begin_DP: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1node_begin_RegName: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1node_end_DP: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1node_end_RegName: TcxGridDBBandedColumn;
    Panel4: TPanel;
    dxBarButton23: TdxBarButton;
    cxLabel2: TcxLabel;
    cxLabel1: TcxLabel;
    cxLabel3: TcxLabel;
    cxLabel4: TcxLabel;
    cxLabel5: TcxLabel;
    cxLabel6: TcxLabel;
    cxGrid8DBBandedTableView1next_datpr: TcxGridDBBandedColumn;
    cxGrid8DBBandedTableView1next_next_dataot: TcxGridDBBandedColumn;
    cxGrid8DBBandedTableView1cnt_days_oborot: TcxGridDBBandedColumn;
    cxTabSheet6: TcxTabSheet;
    cxGrid8DBBandedTableView1length_way: TcxGridDBBandedColumn;
    cxGrid8DBBandedTableView1speed_avg: TcxGridDBBandedColumn;
    dxBarButton24: TdxBarButton;
    dxBarDockControl6: TdxBarDockControl;
    dxBarManager1Bar6: TdxBar;
    SP_Profit_AVG: TADOStoredProc;
    DS_Profit_AVG: TDataSource;
    cxGrid9: TcxGrid;
    cxGrid9DBBandedTableView1: TcxGridDBBandedTableView;
    cxGrid9DBBandedTableView1firm_customer_name: TcxGridDBBandedColumn;
    cxGrid9DBBandedTableView1date_period: TcxGridDBBandedColumn;
    cxGrid9DBBandedTableView1profit_days: TcxGridDBBandedColumn;
    cxGrid9Level1: TcxGridLevel;
    cxGrid9DBBandedTableView1profit_days_1: TcxGridDBBandedColumn;
    cxGrid9DBBandedTableView1profit_days_2: TcxGridDBBandedColumn;
    cxGrid10: TcxGrid;
    cxGrid10DBBandedTableView1: TcxGridDBBandedTableView;
    cxGrid10DBBandedTableView1bargain_id: TcxGridDBBandedColumn;
    cxGrid10DBBandedTableView1fact_id: TcxGridDBBandedColumn;
    cxGrid10DBBandedTableView1bargain_cod: TcxGridDBBandedColumn;
    cxGrid10DBBandedTableView1firm_customer_name: TcxGridDBBandedColumn;
    cxGrid10DBBandedTableView1nvag: TcxGridDBBandedColumn;
    cxGrid10DBBandedTableView1dataot: TcxGridDBBandedColumn;
    cxGrid10DBBandedTableView1datpr: TcxGridDBBandedColumn;
    cxGrid10DBBandedTableView1sto_name: TcxGridDBBandedColumn;
    cxGrid10DBBandedTableView1stn_name: TcxGridDBBandedColumn;
    cxGrid10DBBandedTableView1do: TcxGridDBBandedColumn;
    cxGrid10DBBandedTableView1fsd: TcxGridDBBandedColumn;
    cxGrid10DBBandedTableView1sum_dohod: TcxGridDBBandedColumn;
    cxGrid10DBBandedTableView1sum_rashod: TcxGridDBBandedColumn;
    cxGrid10DBBandedTableView1gruz_name: TcxGridDBBandedColumn;
    cxGrid10Level1: TcxGridLevel;
    Splitter4: TSplitter;
    SP_Profit_AVG_Detail: TADOStoredProc;
    DS_Profit_AVG_Detail: TDataSource;
    cxGrid9DBBandedTableView1contract_id: TcxGridDBBandedColumn;
    cxGrid9DBBandedTableView1contract_cod: TcxGridDBBandedColumn;
    cxGrid10DBBandedTableView1date_period: TcxGridDBBandedColumn;
    Popup_Profit_AVG_Detail: TdxBarPopupMenu;
    dxBarButton25: TdxBarButton;
    cxGrid8DBBandedTableView1ndnum: TcxGridDBBandedColumn;
    cxGrid8DBBandedTableView1next_stn: TcxGridDBBandedColumn;
    cxGrid8DBBandedTableView1stn: TcxGridDBBandedColumn;
    cxGrid8DBBandedTableView1sto: TcxGridDBBandedColumn;
    dxBarButton26: TdxBarButton;
    dxBarButton22: TdxBarButton;
    cxDBPivotGrid1: TcxDBPivotGrid;
    Splitter5: TSplitter;
    cxDBPivotGrid1nvag: TcxDBPivotGridField;
    cxDBPivotGrid1firm_customer_name: TcxDBPivotGridField;
    cxDBPivotGrid1sto_name: TcxDBPivotGridField;
    cxDBPivotGrid1stn_name: TcxDBPivotGridField;
    cxDBPivotGrid1do: TcxDBPivotGridField;
    cxDBPivotGrid1fsd: TcxDBPivotGridField;
    cxDBPivotGrid1sum_itog: TcxDBPivotGridField;
    cxDBPivotGrid1cnt_days: TcxDBPivotGridField;
    cxGrid11: TcxGrid;
    cxGrid11DBBandedTableView1: TcxGridDBBandedTableView;
    cxGrid11DBBandedTableView1bargain_id: TcxGridDBBandedColumn;
    cxGrid11DBBandedTableView1fact_id: TcxGridDBBandedColumn;
    cxGrid11DBBandedTableView1bargain_cod: TcxGridDBBandedColumn;
    cxGrid11DBBandedTableView1firm_customer_name: TcxGridDBBandedColumn;
    cxGrid11DBBandedTableView1nvag: TcxGridDBBandedColumn;
    cxGrid11DBBandedTableView1dataot: TcxGridDBBandedColumn;
    cxGrid11DBBandedTableView1datpr: TcxGridDBBandedColumn;
    cxGrid11DBBandedTableView1sto_name: TcxGridDBBandedColumn;
    cxGrid11DBBandedTableView1stn_name: TcxGridDBBandedColumn;
    cxGrid11DBBandedTableView1do: TcxGridDBBandedColumn;
    cxGrid11DBBandedTableView1fsd: TcxGridDBBandedColumn;
    cxGrid11DBBandedTableView1sum_dohod: TcxGridDBBandedColumn;
    cxGrid11DBBandedTableView1sum_rashod: TcxGridDBBandedColumn;
    cxGrid11DBBandedTableView1gruz_name: TcxGridDBBandedColumn;
    cxGrid11Level1: TcxGridLevel;
    Splitter6: TSplitter;
    cxPivotGridDrillDown1: TcxPivotGridDrillDownDataSet;
    DS_PivotGridDrillDown1: TDataSource;
    cxGrid6DBBandedTableView1nvag: TcxGridDBBandedColumn;
    cxGrid6DBBandedTableView1firm_customer_name: TcxGridDBBandedColumn;
    cxDBPivotGrid1profit_avg: TcxDBPivotGridField;
    cxGrid6DBBandedTableView1sto_name: TcxGridDBBandedColumn;
    cxGrid6DBBandedTableView1stn_name: TcxGridDBBandedColumn;
    cxGrid6DBBandedTableView1do_name: TcxGridDBBandedColumn;
    cxGrid6DBBandedTableView1fsd_name: TcxGridDBBandedColumn;
    cxGrid6DBBandedTableView1gruz_name: TcxGridDBBandedColumn;
    cxDBPivotGrid1gruz_name: TcxDBPivotGridField;
    Popup_Pivot: TdxBarPopupMenu;
    cxDBPivotGrid1cnt_vag: TcxDBPivotGridField;
    cxGrid6DBBandedTableView1profit_days: TcxGridDBBandedColumn;
    cxDBPivotGrid1Field1: TcxDBPivotGridField;
    cxGrid6DBBandedTableView1cnt_days: TcxGridDBBandedColumn;
    cxDBPivotGrid1cnt_days_avg: TcxDBPivotGridField;
    cxGrid6DBBandedTableView1sum_itog: TcxGridDBBandedColumn;
    cxPropertiesStore1: TcxPropertiesStore;
    cxDBPivotGrid1set_not_finish: TcxDBPivotGridField;
    dxBarButton28: TdxBarButton;
    dxBarButton30: TdxBarButton;
    dxBarSubItem6: TdxBarSubItem;
    SP_Profit_Pivot: TADOStoredProc;
    cxGrid8DBBandedTableView1etran_folder: TcxGridDBBandedColumn;
    cxGrid4: TcxGrid;
    cxGrid4DBBandedTableView1: TcxGridDBBandedTableView;
    cxGrid4DBBandedTableView1bargain_id: TcxGridDBBandedColumn;
    cxGrid4DBBandedTableView1fact_id: TcxGridDBBandedColumn;
    cxGrid4DBBandedTableView1num_track: TcxGridDBBandedColumn;
    cxGrid4DBBandedTableView1nvag: TcxGridDBBandedColumn;
    cxGrid4DBBandedTableView1firm_customer_name: TcxGridDBBandedColumn;
    cxGrid4DBBandedTableView1dataot: TcxGridDBBandedColumn;
    cxGrid4DBBandedTableView1sto_name: TcxGridDBBandedColumn;
    cxGrid4DBBandedTableView1stn_name: TcxGridDBBandedColumn;
    cxGrid4DBBandedTableView1datpr: TcxGridDBBandedColumn;
    cxGrid4DBBandedTableView1do: TcxGridDBBandedColumn;
    cxGrid4DBBandedTableView1fsd: TcxGridDBBandedColumn;
    cxGrid4DBBandedTableView1gruz: TcxGridDBBandedColumn;
    cxGrid4DBBandedTableView1gruz_name: TcxGridDBBandedColumn;
    cxGrid4DBBandedTableView1sum_itog: TcxGridDBBandedColumn;
    cxGrid4DBBandedTableView1cnt_days: TcxGridDBBandedColumn;
    cxGrid4DBBandedTableView1profit_days: TcxGridDBBandedColumn;
    cxGrid4DBBandedTableView1next_dataot: TcxGridDBBandedColumn;
    cxGrid4DBBandedTableView1next_datpr: TcxGridDBBandedColumn;
    cxGrid4DBBandedTableView1next_sto_name: TcxGridDBBandedColumn;
    cxGrid4DBBandedTableView1next_stn_name: TcxGridDBBandedColumn;
    cxGrid4DBBandedTableView1next_do: TcxGridDBBandedColumn;
    cxGrid4DBBandedTableView1next_gruz_name: TcxGridDBBandedColumn;
    cxGrid4DBBandedTableView1sum_dohod: TcxGridDBBandedColumn;
    cxGrid4DBBandedTableView1sum_rashod: TcxGridDBBandedColumn;
    cxGrid4DBBandedTableView1set_full_finance: TcxGridDBBandedColumn;
    cxGrid4Level1: TcxGridLevel;
    cxGrid4DBBandedTableView1set_sps: TcxGridDBBandedColumn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cxGrid1DBBandedTableView1FilterOnChanged(Sender: TObject);
    procedure cxGrid1DBBandedTableView1CustomDrawCell(Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
    procedure cxGrid1DBBandedTableView1CustomDrawColumnHeader(Sender: TcxGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxGridColumnHeaderViewInfo; var ADone: Boolean);
    procedure cxGrid1DBBandedTableView1FocusedItemChanged(Sender: TcxCustomGridTableView; APrevFocusedItem, AFocusedItem: TcxCustomGridTableItem);
    procedure cxGrid1DBBandedTableView1KeyPress(Sender: TObject; var Key: Char);
    procedure dxBarButton1Click(Sender: TObject);
    procedure dxBarButton2Click(Sender: TObject);
    procedure dxBarButton3Click(Sender: TObject);
    procedure dxBarButton4Click(Sender: TObject);
    procedure dxBarButton5Click(Sender: TObject);
    procedure dxBarButton6Click(Sender: TObject);
    procedure dxBarButton7Click(Sender: TObject);
    procedure dxBarButton8Click(Sender: TObject);
    procedure dxBarButton9Click(Sender: TObject);
    procedure dxBarButton10Click(Sender: TObject);
    procedure dxBarButton11Click(Sender: TObject);
    procedure dxBarButton12Click(Sender: TObject);
    procedure dxBarButton13Click(Sender: TObject);
    procedure dxBarButton14Click(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure cxPageControl1Change(Sender: TObject);
    procedure dxBarButton15Click(Sender: TObject);
    procedure dxBarButton16Click(Sender: TObject);
    procedure dxBarButton17Click(Sender: TObject);
    procedure dxBarButton18Click(Sender: TObject);
    procedure cxGrid2DBBandedTableView1FocusedRecordChanged(Sender: TcxCustomGridTableView; APrevFocusedRecord, AFocusedRecord: TcxCustomGridRecord;     ANewItemRecordFocusingChanged: Boolean);
    procedure dxBarButton19Click(Sender: TObject);
    procedure dxBarButton20Click(Sender: TObject);
    procedure cxGrid4DBBandedTableView1FocusedRecordChanged(Sender: TcxCustomGridTableView; APrevFocusedRecord, AFocusedRecord: TcxCustomGridRecord;    ANewItemRecordFocusingChanged: Boolean);
    procedure dxBarButton27Click(Sender: TObject);
    procedure cxGrid4DBBandedTableView1KeyPress(Sender: TObject; var Key: Char);
    procedure dxBarButton29Click(Sender: TObject);
    procedure cxGrid2DBBandedTableView1KeyPress(Sender: TObject; var Key: Char);
    procedure dxBarButton21Click(Sender: TObject);
    procedure cxGrid5DBBandedTableView1FocusedRecordChanged(Sender: TcxCustomGridTableView; APrevFocusedRecord, AFocusedRecord: TcxCustomGridRecord;    ANewItemRecordFocusingChanged: Boolean);
    procedure cxGrid4DBBandedTableView1TcxGridDBDataControllerTcxDataSummaryFooterSummaryItems4GetText(Sender: TcxDataSummaryItem;  const AValue: Variant; AIsFooter: Boolean; var AText: string);
    procedure dxBarButton23Click(Sender: TObject);
    procedure dxBarButton24Click(Sender: TObject);
    procedure cxGrid9DBBandedTableView1FocusedRecordChanged(Sender: TcxCustomGridTableView; APrevFocusedRecord, AFocusedRecord: TcxCustomGridRecord; ANewItemRecordFocusingChanged: Boolean);
    procedure dxBarButton26Click(Sender: TObject);
    procedure cxGrid9DBBandedTableView1KeyPress(Sender: TObject; var Key: Char);
    procedure cxDBPivotGrid1profit_avgCalculateCustomSummary(Sender: TcxPivotGridField; ASummary: TcxPivotGridCrossCellSummary);
    procedure cxDBPivotGrid1profit_avgGetDisplayText(Sender: TcxPivotGridField; ACell: TcxPivotGridDataCellViewInfo; var AText: string);
    procedure cxDBPivotGrid1CustomDrawCell(Sender: TcxCustomPivotGrid; ACanvas: TcxCanvas; AViewInfo: TcxPivotGridDataCellViewInfo; var ADone: Boolean);
    procedure cxDBPivotGrid1StylesGetContentStyle(Sender: TcxCustomPivotGrid; ACell: TcxPivotGridDataCellViewInfo; var AStyle: TcxStyle);
    procedure cxDBPivotGrid1CustomDrawRowHeader(Sender: TcxCustomPivotGrid; ACanvas: TcxCanvas; AViewInfo: TcxPivotGridHeaderCellViewInfo; var ADone: Boolean);
    procedure cxDBPivotGrid1SelectionChanged(Sender: TObject);
    procedure cxGrid6DBBandedTableView1TcxGridDBDataControllerTcxDataSummaryFooterSummaryItems2GetText(Sender: TcxDataSummaryItem; const AValue: Variant; AIsFooter: Boolean; var AText: string);
    procedure cxDBPivotGrid1StylesGetColumnHeaderStyle(Sender: TcxCustomPivotGrid; AItem: TcxPivotGridViewDataItem; var AStyle: TcxStyle);
    procedure dxBarButton28Click(Sender: TObject);
    procedure dxBarButton30Click(Sender: TObject);
  private
    Feffect_sps_id   : integer;
    Feffect_sps_name : string;
    Fdate11, Fdate12 : TDateTime;
    Fdate21, Fdate22 : TDateTime;
    Fdate31, Fdate32 : TDateTime;
    Fdate41, Fdate42 : TDateTime;
    Fdate51, Fdate52 : TDateTime;
    Fstr_nvag : string;
    Fconnect : TADOConnection;
    FSupportFont : TFont;

    procedure CalcSum();
    procedure CalcEmpty();
    procedure RefreshNode();
    procedure FillClientPlanProfit(SP: TADOStoredProc);
    function VagonSpeed(dist: currency) : currency;
  public
    constructor Create(AOwner: TApplication; flag: boolean; conn: TADOConnection); reintroduce;
  end;

var
  fmEffectSPS: TfmEffectSPS;

implementation

uses Main, Raznoe, EffectSPSAdd, TariffSupportFunctions, RailTariff_TLB, DateUtils,
    Other, AgreeAdd2, Filter, Agree2, Period, cxExportPivotGridLink, ShellApi;

{$R *.dfm}

const
  cxSelectedFontStylesMap: array[Boolean] of TFontStyles = ([], [fsBold]);

type
  TcxPivotGridViewDataItemAccess = class(TcxPivotGridViewDataItem);
  TcxPivotGridHeaderCellViewInfoAccess = class(TcxPivotGridHeaderCellViewInfo);
  TcxCustomPivotGridAccess = class(TcxCustomPivotGrid);


constructor TfmEffectSPS.Create(AOwner: TApplication; flag: boolean; conn: TADOConnection);
begin
  Fconnect := conn;

//  if GetUsersRights('set_EffectSPS', Fconnect) <> 0 then begin
//    Forms.Application.MessageBox('Доступ закрыт!', 'Ошибка', MB_ICONSTOP or MB_OK);
//    Close;
//    Exit;
//  end;

  Screen.Cursor := crHourglass;
  inherited Create(AOwner);

  FSupportFont := TFont.Create;

  Feffect_sps_id := -9;
  Feffect_sps_name := '';

  StoreRegistryGrid2(rgLoad, '\Software\Lis\EffectSPS_Grids', cxGrid1DBBandedTableView1);
  StoreRegistryGrid2(rgLoad, '\Software\Lis\EffectSPS_Grids', cxGrid2DBBandedTableView1);
  StoreRegistryGrid2(rgLoad, '\Software\Lis\EffectSPS_Grids', cxGrid3DBBandedTableView1);
  StoreRegistryGrid2(rgLoad, '\Software\Lis\EffectSPS_Grids', cxGrid4DBBandedTableView1);
  StoreRegistryGrid2(rgLoad, '\Software\Lis\EffectSPS_Grids', cxGrid6DBBandedTableView1);
  StoreRegistryGrid2(rgLoad, '\Software\Lis\EffectSPS_Grids', cxGrid8DBBandedTableView1);
  StoreRegistryGrid2(rgLoad, '\Software\Lis\EffectSPS_Grids', cxGrid5DBBandedTableView1);
  StoreRegistryGrid2(rgLoad, '\Software\Lis\EffectSPS_Grids', cxGrid10DBBandedTableView1);

  Query_Agree.Connection := Fconnect;
  SP_PlanProfit.Connection := Fconnect;
  SP_Profit2.Connection := Fconnect;
  SP_Profit2_Detail.Connection := Fconnect;
  SP_VagonMove.Connection := Fconnect;
  SP_IndicatorJob.Connection := Fconnect;
  SP_IndicatorJobDetail.Connection := Fconnect;
  SP_Profit_AVG.Connection := Fconnect;
  SP_Profit_AVG_Detail.Connection := Fconnect;

  Client_EffectSPS.CreateDataSet;
  Client_EffectSPS.LogChanges := False;
  Client_PlanProfit.CreateDataSet;
  Client_PlanProfit.LogChanges := False;

  dxBarSubItem4.Caption := StoreRegistryDate(rgLoad, '\Software\Lis\DateTime\EffectSPS', Fdate11, Fdate12, 'Fdate11', 'Fdate12');
  dxBarButton29.Caption := StoreRegistryDate(rgLoad, '\Software\Lis\DateTime\EffectSPS', Fdate21, Fdate22, 'Fdate21', 'Fdate22');
  dxBarButton25.Caption := StoreRegistryDate(rgLoad, '\Software\Lis\DateTime\EffectSPS', Fdate31, Fdate32, 'Fdate31', 'Fdate32');
  dxBarButton22.Caption := StoreRegistryDate(rgLoad, '\Software\Lis\DateTime\EffectSPS', Fdate41, Fdate42, 'Fdate41', 'Fdate42');
  dxBarButton21.Caption := StoreRegistryDate(rgLoad, '\Software\Lis\DateTime\EffectSPS', Fdate51, Fdate52, 'Fdate51', 'Fdate52');

  if flag then begin
    FormStyle   := fsNormal;
    WindowState := wsMaximized;
  end else begin
    FormStyle   := fsMDIChild;
    WindowState := wsMaximized;
  end;

  cxTabSheet6.TabVisible := False;
  cxPageControl1.ActivePageIndex := 0;
  cxPageControl1Change(cxPageControl1);

  MonitorEventFormOpen('OPEN_FORM', 'Эффективность перевозок в СПС', Fconnect, -9);

  Screen.Cursor := crDefault;
end;

procedure TfmEffectSPS.FormDestroy(Sender: TObject);
begin
//  StoreRegistryDate(rgSave, '\Software\Lis\DateTime\EffectSPS', Fdate11, Fdate12, 'Fdate11', 'Fdate12');
//  StoreRegistryDate(rgSave, '\Software\Lis\DateTime\EffectSPS', Fdate21, Fdate22, 'Fdate21', 'Fdate22');
//  StoreRegistryDate(rgSave, '\Software\Lis\DateTime\EffectSPS', Fdate31, Fdate32, 'Fdate31', 'Fdate32');
//  StoreRegistryDate(rgSave, '\Software\Lis\DateTime\EffectSPS', Fdate41, Fdate42, 'Fdate41', 'Fdate42');
//  StoreRegistryDate(rgSave, '\Software\Lis\DateTime\EffectSPS', Fdate51, Fdate52, 'Fdate51', 'Fdate52');

  StoreRegistryGrid2(rgSave, '\Software\Lis\EffectSPS_Grids', cxGrid1DBBandedTableView1);
  StoreRegistryGrid2(rgSave, '\Software\Lis\EffectSPS_Grids', cxGrid2DBBandedTableView1);
  StoreRegistryGrid2(rgSave, '\Software\Lis\EffectSPS_Grids', cxGrid3DBBandedTableView1);
  StoreRegistryGrid2(rgSave, '\Software\Lis\EffectSPS_Grids', cxGrid4DBBandedTableView1);
  StoreRegistryGrid2(rgSave, '\Software\Lis\EffectSPS_Grids', cxGrid6DBBandedTableView1);
  StoreRegistryGrid2(rgSave, '\Software\Lis\EffectSPS_Grids', cxGrid8DBBandedTableView1);
  StoreRegistryGrid2(rgSave, '\Software\Lis\EffectSPS_Grids', cxGrid5DBBandedTableView1);
  StoreRegistryGrid2(rgSave, '\Software\Lis\EffectSPS_Grids', cxGrid10DBBandedTableView1);
end;


procedure TfmEffectSPS.RefreshNode();
var id : integer;
begin
  id := Client_EffectSPS.FieldByName('id').AsInteger;
  cxRichEdit1.Lines.Clear;
  Client_EffectSPS.DisableControls;
  Client_EffectSPS.First;


  cxRichEdit1.Lines.Add('');
  cxRichEdit1.Lines.Strings[0] := 'Результат расчета';
  cxRichEdit1.Lines.Strings[1] := 'Общий маршрут: ';
  while not Client_EffectSPS.Eof do begin
    cxRichEdit1.Lines.Strings[1] := cxRichEdit1.Lines.Strings[1] + Client_EffectSPS.FieldByName('node_begin_name').AsString + ' -> ';
    Client_EffectSPS.Next;
  end;
  cxRichEdit1.Lines.Strings[1] := cxRichEdit1.Lines.Strings[1] + Client_EffectSPS.FieldByName('node_end_name').AsString;
  Client_EffectSPS.Locate('id', id, []);
  Client_EffectSPS.EnableControls;

 // RefreshQueryGrid(cxGrid1DBBandedTableView1, 'id', id);
end;

procedure TfmEffectSPS.CalcEmpty();
begin
  cxCurrencyEdit1.EditValue := null;
  cxCurrencyEdit2.EditValue := null;
  cxCurrencyEdit3.EditValue := null;
  cxCurrencyEdit4.EditValue := null;
  cxCurrencyEdit5.EditValue := null;
  cxCurrencyEdit6.EditValue := null;
  cxCurrencyEdit7.EditValue := null;
  cxCurrencyEdit8.EditValue := null;

  cxCurrencyEdit9.EditValue  := null;
  cxCurrencyEdit10.EditValue := null;
  cxCurrencyEdit11.EditValue := null;
  cxCurrencyEdit12.EditValue := null;
end;

procedure TfmEffectSPS.CalcSum();
var distance: integer;
    time_way: Currency;
    sum1, sum2 : Currency;
    sum3, sum4, sum5, sum6 : Currency;
    cnt_por : integer;
begin

  distance := 0;
  time_way := 0;
  sum1 := 0;
  sum2 := 0;
  cnt_por := 0;

  Client_EffectSPS.DisableControls;
  Client_EffectSPS.First;
  while not Client_EffectSPS.Eof do begin

    distance := distance + Client_EffectSPS.FieldByName('distance').AsInteger;
    time_way := time_way + Client_EffectSPS.FieldByName('time_way').AsFloat;
    sum1 := sum1 + Client_EffectSPS.FieldByName('profit_vagon').AsCurrency;
    sum2 := sum2 + Client_EffectSPS.FieldByName('profit_day').AsCurrency;

    sum3 := sum3 + Client_EffectSPS.FieldByName('tariff').AsCurrency;
    sum4 := sum4 + Client_EffectSPS.FieldByName('tariff_not_nds').AsCurrency;
    sum5 := sum5 + Client_EffectSPS.FieldByName('tariff_self').AsCurrency;
    sum6 := sum6 + Client_EffectSPS.FieldByName('tariff_self_not_nds').AsCurrency;
//    if Client_EffectSPS.FieldByName('kargoETSNG_name').AsString <> '' then begin
//      if cxMemo1.Lines.IndexOf(Client_EffectSPS.FieldByName('kargoETSNG_name').AsString) = -1 then
//        cxMemo1.Lines.Add(Client_EffectSPS.FieldByName('kargoETSNG_name').AsString);
//    end;

    if Client_EffectSPS.FieldByName('type_park_id').AsInteger = 1 then begin
       cnt_por := cnt_por + Client_EffectSPS.FieldByName('distance').AsInteger;
    end;

    Client_EffectSPS.Next;
  end;
  Client_EffectSPS.EnableControls;

  cxCurrencyEdit1.EditValue := distance;
  cxCurrencyEdit2.EditValue := time_way;
  cxCurrencyEdit3.EditValue := time_way;
  if time_way <> 0 then
    cxCurrencyEdit4.EditValue := RoundCurr(30/time_way, -1);
  if distance <> 0 then
    cxCurrencyEdit5.EditValue := RoundCurr(((cnt_por * 100.0) / distance),-1);
  cxCurrencyEdit6.EditValue := sum1;
  if time_way <> 0 then
    cxCurrencyEdit7.EditValue := RoundCurr(sum1/time_way*30,-2);
  if time_way <> 0 then
    cxCurrencyEdit8.EditValue := RoundCurr(sum1/time_way,-2);

  cxCurrencyEdit9.EditValue  := sum3;
  cxCurrencyEdit10.EditValue := sum4;
  cxCurrencyEdit11.EditValue := sum5;
  cxCurrencyEdit12.EditValue := sum6;
end;


procedure TfmEffectSPS.cxDBPivotGrid1CustomDrawCell(Sender: TcxCustomPivotGrid; ACanvas: TcxCanvas; AViewInfo: TcxPivotGridDataCellViewInfo; var ADone: Boolean);
begin
  if AViewInfo.Row.IsGrandTotal then begin
    ACanvas.FillRect(AViewInfo.Bounds, clBtnFace);

  //    FillTubeGradientRect (ACanvas.Handle, AViewInfo.Bounds, clYellow, clRed, 20, True);
  end;

  if (AViewInfo.DataField = cxDBPivotGrid1profit_avg) then begin
//      ACanvas.FillRect(AViewInfo.Bounds, $00D7C6FD);
//      ACanvas.Font.Color := clRed;
//      ACanvas.Font.Style := [fsBold];
//      ACanvas.DrawTexT('rrrrrrrr', AViewInfo.Bounds, cxSingleLine);
//      AViewInfo.Transparent := True;
  end;
end;

procedure TfmEffectSPS.cxDBPivotGrid1CustomDrawRowHeader(Sender: TcxCustomPivotGrid; ACanvas: TcxCanvas; AViewInfo: TcxPivotGridHeaderCellViewInfo; var ADone: Boolean);
var
             P : TPoint;
    AMin, AMax : Integer;
   AViewParams : TcxViewParams;
  FSupportFont : TFont;
begin
  FSupportFont := TFont.Create;
  P := Sender.ViewData.FocusedCell;
  with TcxPivotGridViewDataItemAccess(TcxPivotGridHeaderCellViewInfoAccess(AViewInfo).Data) do
  begin
    AMin := GetChildLeftVisibleIndex;
    AMax := GetChildRightVisibleIndex;
  end;

  FSupportFont.Style := cxSelectedFontStylesMap[(P.Y >= AMin) and (P.Y <= AMax)];
  AViewParams := AViewInfo.ViewParams;
  AViewParams.Font := FSupportFont;
  AViewInfo.ViewParams := AViewParams;
end;

procedure TfmEffectSPS.cxDBPivotGrid1profit_avgCalculateCustomSummary(Sender: TcxPivotGridField; ASummary: TcxPivotGridCrossCellSummary);
var  sum_itog, cnt_days : variant;
begin
    sum_itog := ASummary.Owner.GetSummaryByField(cxDBPivotGrid1sum_itog, stSum);
    cnt_days := ASummary.Owner.GetSummaryByField(cxDBPivotGrid1cnt_days, stSum);

   if (sum_itog <> null) and (cnt_days <> null) then
     ASummary.Custom :=  RoundCurr(sum_itog / cnt_days, -2)
   else
    ASummary.Custom := 0;
end;

procedure TfmEffectSPS.cxDBPivotGrid1profit_avgGetDisplayText(Sender: TcxPivotGridField; ACell: TcxPivotGridDataCellViewInfo; var AText: string);
begin
  inherited;
  AText := FormatFloat('#,##.00', ACell.CellSummary.Custom);
end;

procedure TfmEffectSPS.cxDBPivotGrid1SelectionChanged(Sender: TObject);
begin
  inherited;
  cxDBPivotGrid1.Invalidate;
end;

procedure TfmEffectSPS.cxDBPivotGrid1StylesGetColumnHeaderStyle(Sender: TcxCustomPivotGrid; AItem: TcxPivotGridViewDataItem; var AStyle: TcxStyle);
begin
  if AItem.Field = cxDBPivotGrid1profit_avg then
    AStyle := fmMain.cxStyle_AgreeFactInc_Sum;
end;

procedure TfmEffectSPS.cxDBPivotGrid1StylesGetContentStyle(Sender: TcxCustomPivotGrid; ACell: TcxPivotGridDataCellViewInfo; var AStyle: TcxStyle);
begin
  if (ACell.DataField = cxDBPivotGrid1profit_avg) then
    AStyle := fmMain.cxStyle_AgreeFactInc_Sum;

  if (ACell.Row.IsGrandTotal) then
    AStyle := fmMain.cxStyle_Bold;

end;

procedure TfmEffectSPS.cxGrid1DBBandedTableView1CustomDrawCell(Sender: TcxCustomGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
	if AViewInfo.GridRecord.Selected or AViewInfo.GridRecord.Focused then begin
		ACanvas.Brush.Color := clNavy;
		ACanvas.Font.Color := clWhite;
		if AViewInfo.Focused then ACanvas.Brush.Color := clBlue;
	end;
end;

procedure TfmEffectSPS.cxGrid1DBBandedTableView1CustomDrawColumnHeader(Sender: TcxGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxGridColumnHeaderViewInfo; var ADone: Boolean);
begin
  DrawcxGridColumnOnFocused(Sender, ACanvas, AViewInfo);
end;

procedure TfmEffectSPS.cxGrid1DBBandedTableView1FilterOnChanged(Sender: TObject);
begin
  DrawcxGridColumnOnFiltered(Sender);
end;

procedure TfmEffectSPS.cxGrid1DBBandedTableView1FocusedItemChanged(Sender: TcxCustomGridTableView; APrevFocusedItem, AFocusedItem: TcxCustomGridTableItem);
begin
	Sender.Painter.Invalidate;
end;

procedure TfmEffectSPS.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TfmEffectSPS.cxGrid1DBBandedTableView1KeyPress(Sender: TObject; var Key: Char);
begin
	FilterColumnGridOnKeyPress(TcxGridDBBandedTableView(TcxGridSite(Sender).GridView), Key);
end;

procedure TfmEffectSPS.cxGrid2DBBandedTableView1FocusedRecordChanged(Sender: TcxCustomGridTableView; APrevFocusedRecord, AFocusedRecord: TcxCustomGridRecord; ANewItemRecordFocusingChanged: Boolean);
begin
  Query_Agree.Close;

  if dxBarButton18.Down then begin
    Screen.Cursor := crHourglass;
    if (cxGrid2DBBandedTableView1bargain_group.DataBinding.Field.IsNull) then
      Query_Agree.SQL.Text := 'SELECT  * FROM view_bargain WHERE (bargain_group IS NULL) AND (node_begin_cod = :node_begin_cod) AND (node_end_cod = :node_end_cod) AND (contract_id = :contract_id)'
    else begin
      Query_Agree.SQL.Text := 'SELECT  * FROM view_bargain WHERE (bargain_group = :bargain_group) AND (node_begin_cod = :node_begin_cod) AND (node_end_cod = :node_end_cod) AND (contract_id = :contract_id)';
      Query_Agree.Parameters.ParamByName('bargain_group').Value  := cxGrid2DBBandedTableView1bargain_group.DataBinding.Field.AsString;
    end;
    Query_Agree.Parameters.ParamByName('node_begin_cod').Value := cxGrid2DBBandedTableView1node_begin_cod.DataBinding.Field.AsString;
    Query_Agree.Parameters.ParamByName('node_end_cod'  ).Value := cxGrid2DBBandedTableView1node_end_cod.DataBinding.Field.AsString;
    Query_Agree.Parameters.ParamByName('contract_id'   ).Value := cxGrid2DBBandedTableView1contract_id.DataBinding.Field.AsInteger;
    Query_Agree.Open;

    Screen.Cursor := crDefault;
  end;
end;

procedure TfmEffectSPS.cxGrid2DBBandedTableView1KeyPress(Sender: TObject; var Key: Char);
begin
	FilterColumnGridOnKeyPress(cxGrid2DBBandedTableView1, Key);
end;

procedure TfmEffectSPS.cxPageControl1Change(Sender: TObject);
begin
  case cxPageControl1.ActivePageIndex of
    0 : begin

        end;
    1 : begin
          Screen.Cursor := crHourglass;
          SP_PlanProfit.Close;
          SP_PlanProfit.Parameters.Refresh;
          SP_PlanProfit.Parameters.ParamByName('@date_begin').Value := Fdate11;
          SP_PlanProfit.Parameters.ParamByName('@date_end').Value   := Fdate12;
          SP_PlanProfit.Open;

          FillClientPlanProfit(SP_PlanProfit);
          Screen.Cursor := crDefault;
        end;

    2 : begin

        end;

  end;

  MonitorEventFormOpen('OPEN_FORM', Self.Caption + '/' + cxPageControl1.ActivePage.Caption, Fconnect, -9);
end;

procedure TfmEffectSPS.dxBarButton10Click(Sender: TObject);
begin
  case cxPageControl1.ActivePageIndex of
    0 : begin
          RefreshQueryGrid(cxGrid1DBBandedTableView1, 'id');
          RefreshNode;
        end;
    1 : begin
          Screen.Cursor := crHourglass;
          SP_PlanProfit.Close;
          SP_PlanProfit.Parameters.Refresh;
          SP_PlanProfit.Parameters.ParamByName('@date_begin').Value := Fdate11;
          SP_PlanProfit.Parameters.ParamByName('@date_end').Value   := Fdate12;
          SP_PlanProfit.Open;

          FillClientPlanProfit(SP_PlanProfit);
          Screen.Cursor := crDefault;
        end;
  end;
end;

procedure TfmEffectSPS.dxBarButton11Click(Sender: TObject);
var save_name : string;
           SP : TADOStoredProc;
begin
  save_name := Feffect_sps_name;
  if not InputQuery('', 'Введите название расчета', save_name) then exit;
  if save_name = '' then begin
    Forms.Application.MessageBox('Введите название расчета!', 'Ошибка', MB_ICONSTOP or MB_OK);
    exit;
  end;

  SP := TADOStoredProc.Create(nil);
  SP.Connection := Fconnect;
  SP.ProcedureName := 'sp_effect_sps_modify';
  SP.Parameters.Refresh;

  if (Feffect_sps_id = -9) OR (save_name <> Feffect_sps_name) then begin
    SP.Parameters.ParamByName('@effect_sps_id').Value := null;
    SP.Parameters.ParamByName('@type_action'     ).Value := 0;
  end else begin
    SP.Parameters.ParamByName('@effect_sps_id').Value := Feffect_sps_id;
    SP.Parameters.ParamByName('@type_action'  ).Value := 1;
  end;

  SP.Parameters.ParamByName('@effect_sps_name').Value := save_name;
  SP.Parameters.ParamByName('@effect_sps_xml' ).Value := Client_EffectSPS.XMLData;
  try
    SP.ExecProc;
    Feffect_sps_id := SP.Parameters.ParamByName('@effect_sps_id').Value;
    Feffect_sps_name := save_name;
    Caption := 'Расчет Эффективности перевозки грузов в собственном подвижном составе [' + Feffect_sps_name + ']';
  except

  end;
  SP.Free;
end;

procedure TfmEffectSPS.dxBarButton12Click(Sender: TObject);
var Q: TADOQuery;
begin
  Q := TADOQuery.Create(nil);
  Q.Connection := Fconnect;
  Q.SQL.Add('SELECT effect_sps_id id, effect_sps_name name, effect_sps_date cod FROM effect_sps WHERE users_id = (SELECT users_id FROM users WHERE users_name = system_user)');
  Q.Open;

  fmFilter := TfmFilter.Create(0, Q, 'id', 'cod', 'name');
  fmFilter._SetFileZFTO := True;
  if fmFilter.ShowModal = mrOk then begin
    Q.SQL.Clear;
    Q.SQL.Add('SELECT * FROM effect_sps WHERE effect_sps_id = ' + IntToStr(fmFilter.GetId));
    Q.Open;

    Client_EffectSPS.EmptyDataSet;
    Client_EffectSPS.XMLData := Q.FieldByName('effect_sps_xml').Value;
    Feffect_sps_id := Q.FieldByName('effect_sps_id').Value;
    Feffect_sps_name := Q.FieldByName('effect_sps_name').Value;
    Caption := 'Расчет Эффективности перевозки грузов в собственном подвижном составе [' + Feffect_sps_name + ']';

    CalcEmpty;
    RefreshNode;

    Client_EffectSPS.DisableControls;
    Client_EffectSPS.First;
    while not Client_EffectSPS.Eof do begin
      Client_EffectSPS.Edit;
      Client_EffectSPS.FieldByName('sum_vohr'            ).Value := null;
      Client_EffectSPS.FieldByName('distance'            ).Value := null;
      Client_EffectSPS.FieldByName('time_way'            ).Value := null;
      Client_EffectSPS.FieldByName('time_route'          ).Value := null;
      Client_EffectSPS.FieldByName('profit_vagon'        ).Value := null;
      Client_EffectSPS.FieldByName('profit_day'          ).Value := null;
      Client_EffectSPS.FieldByName('tariff'              ).Value := null;
      Client_EffectSPS.FieldByName('tariff_not_nds'      ).Value := null;
      Client_EffectSPS.FieldByName('tariff_self'         ).Value := null;
      Client_EffectSPS.FieldByName('tariff_self_not_nds' ).Value := null;
      Client_EffectSPS.FieldByName('delivery_period'     ).Value := null;
      Client_EffectSPS.Post;
      Client_EffectSPS.Next;
    end;
    Client_EffectSPS.EnableControls;

    if Forms.Application.MessageBox('Произвести расчет эффективности?', 'Пересчет', MB_ICONQUESTION or MB_OKCANCEL) = ID_OK then begin
      dxBarButton9Click(nil);
    end;
  end;
  Q.Free;
end;

procedure TfmEffectSPS.dxBarButton13Click(Sender: TObject);
var    exApp, exWks, exWkb  : Variant;
      rows,  i : integer;
begin
  Screen.Cursor := crHourglass;

  ShowTextMessage('Запуск Excel...', False);
  exApp := CreateOleObject('Excel.Application');
  exWkb := exApp.Workbooks.Add(ExtractFilePath(ParamStr(0)) + 'Эффективность перевозки.xlsx');
  exWks := exApp.ActiveWorkbook.WorkSheets[1];

  ShowTextMessage('Формирование отчета...', False);

  exWks.Range['B3'].Value := cxRichEdit1.Lines.Strings[1];

  exWks.Range['E6'].Value := cxCurrencyEdit1.EditValue;
  exWks.Range['E7'].Value := cxCurrencyEdit2.EditValue;
  exWks.Range['E8'].Value := cxCurrencyEdit3.EditValue;
  exWks.Range['E9'].Value := cxCurrencyEdit4.EditValue;

  exWks.Range['K6'].Value := cxCurrencyEdit5.EditValue;
  exWks.Range['K7'].Value := cxCurrencyEdit6.EditValue;
  exWks.Range['K8'].Value := cxCurrencyEdit7.EditValue;
  exWks.Range['K9'].Value := cxCurrencyEdit8.EditValue;

  exWks.Range['Q6'].Value := cxCurrencyEdit9.EditValue;
  exWks.Range['Q7'].Value := cxCurrencyEdit10.EditValue;
  exWks.Range['Q8'].Value := cxCurrencyEdit11.EditValue;
  exWks.Range['Q9'].Value := cxCurrencyEdit12.EditValue;

  rows := 13;
  DS_EffectSPS.DataSet := nil;
  Client_EffectSPS.First;
  while not Client_EffectSPS.Eof do begin
    exWks.Rows[IntToStr(rows+1)].Insert;
    exWks.Rows[IntToStr(rows)].Copy;
    exWks.Rows[IntToStr(rows+1)].PasteSpecial(1);

    exWks.Range[ 'B'+IntToStr(rows)].Value := Client_EffectSPS.FieldByName('node_begin_name').Value;
    exWks.Range[ 'C'+IntToStr(rows)].Value := Client_EffectSPS.FieldByName('node_end_name').Value;
    exWks.Range[ 'D'+IntToStr(rows)].Value := Client_EffectSPS.FieldByName('speed_avg').Value;
    exWks.Range[ 'E'+IntToStr(rows)].Value := Client_EffectSPS.FieldByName('weight').Value;
    exWks.Range[ 'F'+IntToStr(rows)].Value := Client_EffectSPS.FieldByName('kargoETSNG_name').Value;
    exWks.Range[ 'G'+IntToStr(rows)].Value := Client_EffectSPS.FieldByName('kargoGNG_name').Value;
    exWks.Range[ 'H'+IntToStr(rows)].Value := Client_EffectSPS.FieldByName('kargoETSNG_add_name').Value;
    exWks.Range[ 'I'+IntToStr(rows)].Value := Client_EffectSPS.FieldByName('type_park_name').Value;
    exWks.Range[ 'J'+IntToStr(rows)].Value := Client_EffectSPS.FieldByName('days_load').Value;
    exWks.Range[ 'K'+IntToStr(rows)].Value := Client_EffectSPS.FieldByName('delivery_period').Value;
    exWks.Range[ 'L'+IntToStr(rows)].Value := Client_EffectSPS.FieldByName('count_vagon').Value;
    exWks.Range[ 'M'+IntToStr(rows)].Value := Client_EffectSPS.FieldByName('rate_agree').Value;
    exWks.Range[ 'N'+IntToStr(rows)].Value := Client_EffectSPS.FieldByName('rate_type_name').Value;
    exWks.Range[ 'O'+IntToStr(rows)].Value := Client_EffectSPS.FieldByName('formula_name').Value;
    exWks.Range[ 'P'+IntToStr(rows)].Value := Client_EffectSPS.FieldByName('set_self_cost').Value;
    exWks.Range[ 'Q'+IntToStr(rows)].Value := Client_EffectSPS.FieldByName('rate_calc_value').Value;
    exWks.Range[ 'R'+IntToStr(rows)].Value := Client_EffectSPS.FieldByName('set_vohr').Value;
    exWks.Range[ 'S'+IntToStr(rows)].Value := Client_EffectSPS.FieldByName('sum_vohr').Value;
    exWks.Range[ 'T'+IntToStr(rows)].Value := Client_EffectSPS.FieldByName('distance').Value;
    exWks.Range[ 'U'+IntToStr(rows)].Value := Client_EffectSPS.FieldByName('time_way').Value;
    exWks.Range[ 'V'+IntToStr(rows)].Value := Client_EffectSPS.FieldByName('time_route').Value;
    exWks.Range[ 'W'+IntToStr(rows)].Value := Client_EffectSPS.FieldByName('tariff').Value;
    exWks.Range[ 'X'+IntToStr(rows)].Value := Client_EffectSPS.FieldByName('tariff_not_nds').Value;
    exWks.Range[ 'Y'+IntToStr(rows)].Value := Client_EffectSPS.FieldByName('tariff_self').Value;
    exWks.Range[ 'Z'+IntToStr(rows)].Value := Client_EffectSPS.FieldByName('tariff_self_not_nds').Value;
    exWks.Range['AA'+IntToStr(rows)].Value := Client_EffectSPS.FieldByName('profit_vagon').Value;
    exWks.Range['AB'+IntToStr(rows)].Value := Client_EffectSPS.FieldByName('profit_day').Value;

    rows := rows + 1;
    Client_EffectSPS.Next;
  end;
  DS_EffectSPS.DataSet := Client_EffectSPS;
  exWks.Rows[IntToStr(rows)].Delete;
  exWks.Rows[IntToStr(rows)].Delete;

//  exWks.PageSetup.PrintArea := exWks.Range['A1:J'+IntToStr(rows+2)].Address;
  exApp.CutCopyMode := False;

  ShowTextMessage;

  exApp.Visible := True;
  exWks := Null; exWkb := Null; exApp := Null;

  Screen.Cursor := crDefault;
end;

procedure TfmEffectSPS.dxBarButton14Click(Sender: TObject);
begin
  Client_EffectSPS.EmptyDataSet;
  CalcEmpty;
  RefreshNode;
  Feffect_sps_id := -9;
  Feffect_sps_name := '';
  Caption := 'Расчет Эффективности перевозки грузов в собственном подвижном составе';
end;

procedure TfmEffectSPS.dxBarButton15Click(Sender: TObject);
begin
  fmPeriod := TfmPeriod.Create(nil, Fdate11, Fdate12, 3);
  if fmPeriod.ShowModal=mrOK then begin
    Screen.Cursor := crHourglass;
    Fdate11 := fmPeriod._GetMonth;
    Fdate12 := IncMonth(Fdate11, 1) - 1;

    dxBarSubItem4.Caption := FormatDateTime('mmmm yyyy', Fdate11);

    SP_PlanProfit.Close;
    SP_PlanProfit.Parameters.ParamByName('@date_begin').Value := Fdate11;
    SP_PlanProfit.Parameters.ParamByName('@date_end'  ).Value := Fdate12;
    SP_PlanProfit.Open;

    FillClientPlanProfit(SP_PlanProfit);
    Screen.Cursor := crDefault;
  end;
end;

procedure TfmEffectSPS.dxBarButton16Click(Sender: TObject);
begin
  fmPeriod := TfmPeriod.Create(nil, Fdate11, Fdate12, 2);
  if fmPeriod.ShowModal=mrOK then begin
    Screen.Cursor := crHourglass;
    Fdate11 := fmPeriod._GetMonthBegin;
    Fdate12 := fmPeriod._GetMonthEnd;

    dxBarSubItem4.Caption := FormatDateTime('mmm yy', Fdate11) + ' - ' + FormatDateTime('mmm yy', Fdate12);

    SP_PlanProfit.Close;
    SP_PlanProfit.Parameters.ParamByName('@date_begin').Value := Fdate11;
    SP_PlanProfit.Parameters.ParamByName('@date_end'  ).Value := Fdate12;
    SP_PlanProfit.Open;

    FillClientPlanProfit(SP_PlanProfit);
    Screen.Cursor := crDefault;
  end;
end;

procedure TfmEffectSPS.dxBarButton17Click(Sender: TObject);
var RTXApplication : RailTariff_TLB.IApplication;
    RTXDocument    : RailTariff_TLB.IDocument;
    RTXResult      : RailTariff_TLB.IDocNode;
    RTXLandNode    : RailTariff_TLB.IDocNode;
    RTXTaxesNode   : RailTariff_TLB.IDocNode;
    price_sum      : currency;
    price_inv_sum  : currency;
    distance, i    : integer;
    days_run       : integer;
    days_dop       : integer;
    Q              : TADOQuery;
begin
  ShowTextMessage('Подключение к Rail-Tariff', False);
  try
    RTXApplication := RTXCreate2(CTM_Server, CTM_User, CTM_Password);
    RTXApplication.Initialize('');
  except
    RTXApplication := nil;
    exit;
  end;

  RTXDocument := RTXApplication.CreateDocument;

  Q := TADOQuery.Create(nil);
  Q.Connection := Fconnect;

  for i:=0 to cxGrid2DBBandedTableView1.Controller.SelectedRowCount - 1 do begin
    cxGrid2DBBandedTableView1.Controller.SelectedRows[i].Focused := True;
    ShowTextMessage('Расчет: ' + Client_PlanProfit.FieldByName('node_begin_name').AsString + ' - ' + Client_PlanProfit.FieldByName('node_end_name').AsString + '...' +
                    #13#10 + 'Осталось ' + IntToStr(cxGrid2DBBandedTableView1.Controller.SelectedRowCount - i) + ' записей...', False);

    // ------- инвертарный парк по России (гружёный) ------
    try
      (RTXDocument as IDocumentAttr).OnDate(Date);
      (RTXDocument as IDocumentAttr).FromStation(Client_PlanProfit.FieldByName('node_begin_cod'  ).AsString, 0);
      (RTXDocument as IDocumentAttr).ToStation  (Client_PlanProfit.FieldByName('node_end_cod').AsString, 0);

      (RTXDocument as IDocumentAttr).Send(1000, 2, 0, 2);
      Q.Close;
      Q.SQL.Clear;
      Q.SQL.Add('SELECT top 1 * FROM inf_obj_ETSNG WHERE inf_obj_cod = :inf_obj_cod');
      Q.Parameters.ParamByName('inf_obj_cod').Value := Client_PlanProfit.FieldByName('kargoETSNG_cod').AsString;
      Q.Open;
      (RTXDocument as IDocumentAttr5).FreightEx(Client_PlanProfit.FieldByName('kargoETSNG_cod').AsString, '', Q.FieldByName('kargoGNG_cod').AsString, iif(Client_PlanProfit.FieldByName('our_rate_kargo_capacity').AsInteger=0, 60, Client_PlanProfit.FieldByName('our_rate_kargo_capacity').AsInteger));
      (RTXDocument as IDocumentAttr).Wagon(21, 1, 1, iif(Client_PlanProfit.FieldByName('our_rate_kargo_capacity').AsInteger=0, 60, Client_PlanProfit.FieldByName('our_rate_kargo_capacity').AsInteger));

      RTXDocument.Calculate;

      days_run := (RTXDocument as IDocumentAttr26).GetRunDays(1);
      days_dop := (RTXDocument as IDocumentAttr26).GetDopDays(1);

      price_inv_sum := 0;
      RTXResult := RTXDocument.Result;
      RTXResult.AsTable.First;
      while not RTXResult.AsTable.EOF do begin
        if RTXResult.Value['LandId'] = 20 then begin
          price_inv_sum     := price_inv_sum     + RTXResult.Value['TotalPrice'];
        end;
        RTXResult.AsTable.Next;
      end;
    except
    end;


    // -------- возврат порожняка --------------
    try
      (RTXDocument as IDocumentAttr).OnDate(Date);
      (RTXDocument as IDocumentAttr).FromStation(Client_PlanProfit.FieldByName('node_end_cod'  ).AsString, 0);
      (RTXDocument as IDocumentAttr).ToStation  (Client_PlanProfit.FieldByName('node_begin_cod').AsString, 0);

      (RTXDocument as IDocumentAttr).Send(1000, 100, 0, 2);
      Q.Close;
      Q.SQL.Clear;
      Q.SQL.Add('SELECT top 1 * FROM inf_obj_ETSNG WHERE inf_obj_cod = :inf_obj_cod');
      Q.Parameters.ParamByName('inf_obj_cod').Value := '421034';
      Q.Open;
      (RTXDocument as IDocumentAttr5).FreightEx('421034', '', Q.FieldByName('kargoGNG_cod').AsString, 60);

      (RTXDocument as IDocumentAttr).Wagon(21, 1, 1, 68);
      (RTXDocument as IDocumentAttr8).EmptyWagonEx(21, 1, 1, Client_PlanProfit.FieldByName('kargoETSNG_cod').AsString, '', 4, 23);

      RTXDocument.Data.Value['CommonForCalc\ReqCurrencyCode'] := 810;
      (RTXDocument as IDocumentControl).DoCalcDistance;
      RTXDocument.Data.Value['Vagon\OwnerId'] := 2;
      (RTXDocument as IDocumentControl).DoCalcTariff;

      days_run := days_run + (RTXDocument as IDocumentAttr26).GetRunDays(1);
      days_dop := days_dop + (RTXDocument as IDocumentAttr26).GetDopDays(1);
      price_sum     := 0;
      distance      := 0;
      RTXResult := RTXDocument.Result;
      RTXResult.AsTable.First;
      while not RTXResult.AsTable.EOF do begin
        // ------- только по России ----------
        if RTXResult.Value['LandId'] = 20 then begin
          price_sum := price_sum + RTXResult.Value['TotalPrice'];
        end;
        distance      := distance      + RTXResult.Value['Distance'];
        RTXResult.AsTable.Next;
      end;
    except
//      ShowMessage('error');
    end;



    Client_PlanProfit.Edit;
    Client_PlanProfit['distance'] := distance;
//    Client_PlanProfit['vagon_speed'] := VagonSpeed(distance);
//    Client_PlanProfit['time_load'] := 6;
//    Client_PlanProfit['time_trip'] := 2 * (int(distance / Client_PlanProfit['vagon_speed'])+1);

    Client_PlanProfit['time_load'] := 6;    //days_dop;
    Client_PlanProfit['time_trip'] := days_run + days_dop;
    if days_run <> 0 then
      Client_PlanProfit['vagon_speed'] := Round(distance/days_run)
    else
      Client_PlanProfit['vagon_speed'] := 0;

    Client_PlanProfit['rashod_inv_park'] := price_inv_sum * Client_PlanProfit['quantity_units'];
    Client_PlanProfit['rashod_empty'] := price_sum * Client_PlanProfit['quantity_units'];


    if (Client_PlanProfit.FieldByName('rashod_inv_park').AsCurrency <> 0) then
      Client_PlanProfit['vagon_profit_percent'] :=
         ((Client_PlanProfit.FieldByName('rashod_full_zfto').AsCurrency + Client_PlanProfit.FieldByName('dohod_using').AsCurrency) /
          Client_PlanProfit.FieldByName('rashod_inv_park').AsCurrency - 1)*100;

    if (Client_PlanProfit.FieldByName('quantity_units').AsCurrency <> 0) then
      Client_PlanProfit['vagon_profit_days_calc'] :=
        (Client_PlanProfit.FieldByName('dohod_full').AsCurrency + Client_PlanProfit.FieldByName('dohod_using').AsCurrency -
         Client_PlanProfit.FieldByName('rashod_empty').AsCurrency - Client_PlanProfit.FieldByName('rashod_full').AsCurrency) /
         (Client_PlanProfit['quantity_units']) /
         (Client_PlanProfit['time_load'] + Client_PlanProfit['time_trip']);

    Client_PlanProfit.Post;


  end;
//  DS_PlanProfit.DataSet := Client_PlanProfit;

  Q.Free;
  RTXDocument := nil;
  RTXApplication := nil;
  ShowTextMessage();
end;

procedure TfmEffectSPS.dxBarButton18Click(Sender: TObject);
begin
  cxGrid3.Visible := dxBarButton18.Down;
  Splitter1.Visible := dxBarButton18.Down;
  if dxBarButton18.Down then
    cxGrid2DBBandedTableView1FocusedRecordChanged(TcxCustomGridTableView(cxGrid2DBBandedTableView1), nil, nil, False);
end;

procedure TfmEffectSPS.dxBarButton19Click(Sender: TObject);
var _fmAgreeAdd2 : TfmAgreeAdd2;
begin
  if not Query_Agree.Eof then begin
    _fmAgreeAdd2 := TfmAgreeAdd2.Create(nil);
    _fmAgreeAdd2._SetUpdate := cxGrid3DBBandedTableView1bargain_id.DataBinding.Field.AsInteger;
    if _fmAgreeAdd2.ShowModal=mrOk then begin
      dxBarButton10Click(dxBarButton10);
    end;
  end;

end;

procedure TfmEffectSPS.FillClientPlanProfit(SP : TADOStoredProc);
begin
  Client_PlanProfit.EmptyDataSet;
  DS_PlanProfit.DataSet := nil;
  SP.First;
  while not SP.Eof do begin
    ShowTextMessage('Осталось ' + IntToStr(SP.RecordCount - SP.RecNo), False);
    Client_PlanProfit.Append;
    Client_PlanProfit['firm_customer_name'] := SP['firm_customer_name'];
    Client_PlanProfit['node_begin_name'   ] := SP['node_begin_name'];
    Client_PlanProfit['node_end_name'     ] := SP['node_end_name'];
    Client_PlanProfit['road_begin_name'   ] := SP['road_begin_name'];
    Client_PlanProfit['road_end_name'     ] := SP['road_end_name'];
    Client_PlanProfit['node_begin_cod'    ] := SP['node_begin_cod'];
    Client_PlanProfit['node_end_cod'      ] := SP['node_end_cod'];
    Client_PlanProfit['kargoETSNG_name'   ] := SP['kargoETSNG_name'];
    Client_PlanProfit['kargoETSNG_cod'    ] := SP['kargoETSNG_cod'];
    Client_PlanProfit['bargain_group'     ] := SP['bargain_group'];
    Client_PlanProfit['quantity_units'    ] := SP['quantity_units'];
    Client_PlanProfit['vagon_profit_days' ] := SP['vagon_profit_days'];
    Client_PlanProfit['contract_id'       ] := SP['contract_id'];
    Client_PlanProfit['our_rate_kargo_capacity'] := SP['our_rate_kargo_capacity'];

    Client_PlanProfit['dohod_full'] := SP['dohod_full'];
    Client_PlanProfit['rashod_full'] := SP['rashod_full'];
    Client_PlanProfit['rashod_full_zfto'] := SP['rashod_full_zfto'];
    Client_PlanProfit['dohod_using'] := SP['dohod_using'];

    Client_PlanProfit['node_begin_DP'     ] := SP['node_begin_DP'];
    Client_PlanProfit['node_begin_RegName'] := SP['node_begin_RegName'];
    Client_PlanProfit['node_end_DP'       ] := SP['node_end_DP'];
    Client_PlanProfit['node_end_RegName'  ] := SP['node_end_RegName'];

    Client_PlanProfit.Post;
    SP.Next;
  end;
  DS_PlanProfit.DataSet := Client_PlanProfit;
  ShowTextMessage();
end;


function TfmEffectSPS.VagonSpeed(dist: currency) : currency;
begin
      if dist < 200 then
        result := 110
      else if (dist >= 200) and (dist < 600) then
        result := 160
      else if (dist >= 600) and (dist < 1000) then
        result := 240
      else if (dist >= 1000) and (dist < 2000) then
        result := 310
      else if (dist >= 2000) and (dist < 3000) then
        result := 330
      else if (dist >= 3000) and (dist < 5000) then
        result := 380
      else if (dist >= 5000) and (dist < 7000) then
        result := 400
      else if (dist >= 7000) then
        result := 420;
end;


procedure TfmEffectSPS.dxBarButton1Click(Sender: TObject);
var SaveDialog : TSaveDialog;
begin
  case TdxBarButton(Sender).ClickItemLink.Owner.Owner.Tag of
    0 : PrintcxGrid(cxGrid1DBBandedTableView1);
    2 : PrintcxGrid(cxGrid2DBBandedTableView1);
    3 : ;
    4 : PrintcxGrid(cxGrid4DBBandedTableView1);
    5 : PrintcxGrid(cxGrid5DBBandedTableView1);
    6 : PrintcxGrid(cxGrid6DBBandedTableView1);
    8 : PrintcxGrid(cxGrid8DBBandedTableView1);
   10 : PrintcxGrid(cxGrid10DBBandedTableView1);
   11 : begin
          SaveDialog := TSaveDialog.Create(Self);
          try
            SaveDialog.Options := [ofOverwritePrompt, ofHideReadOnly, ofPathMustExist];
            if SaveDialog.Execute then
              if SaveDialog.FileName <> '' then begin
                cxExportPivotGridDataToExcel(ChangeFileExt(SaveDialog.FileName, '.xlsx'), cxDBPivotGrid1);
                ShellExecute(HWND(nil), 'open', PChar(SaveDialog.FileName), nil, nil, SW_SHOWNORMAL);
              end;
          finally
            SaveDialog.Free;
          end;
        end;
  end;
end;

procedure TfmEffectSPS.dxBarButton28Click(Sender: TObject);
var i : integer;
begin
  for i:=0 to cxDBPivotGrid1.FieldCount -1 do
    cxDBPivotGrid1.Fields[i].Filter.Clear;
end;


procedure TfmEffectSPS.dxBarButton20Click(Sender: TObject);
var     Q : TADOQuery;
 _fmAgree2 : TfmAgree2;
   d1, d2 : TDateTime;
begin
  Screen.Cursor := crHourglass;

  Q := TADOQuery.Create(nil);
  Q.Connection := Fconnect;

  case TdxBarButton(Sender).ClickItemLink.Owner.Owner.Tag of
    2 : begin
        Q.SQL.Add('SELECT TOP 1 * FROM bargain WHERE bargain_group = :bargain_group ORDER BY bargain_id');
        Q.Parameters.ParamByName('bargain_group').Value := cxGrid2DBBandedTableView1bargain_group.DataBinding.Field.AsString;
        end;
//    6 : begin
//        Q.SQL.Add('SELECT TOP 1 * FROM bargain WHERE bargain_id = :bargain_id');
//        Q.Parameters.ParamByName('bargain_id').Value := cxGrid6DBBandedTableView1bargain_id.DataBinding.Field.AsString;
//        end;
  end;
  Q.Open;
  d1 := StrToDate('01' + FormatSettings.DateSeparator + FormatDateTime('m', Q.FieldByName('date_period').AsDatetime)+ FormatSettings.DateSeparator + FormatDateTime('yyyy', Q.FieldByName('date_period').AsDatetime));
  d2 := IncMonth(d1) -1;

  Screen.Cursor := crHourglass;

  _fmAgree2 := TfmAgree2.Create(nil, True);
//  _fmAgree2._SetAllBargain(Q.FieldByName('bargain_id').AsInteger, d1, d2);
  _fmAgree2.ShowModal;

  Q.Free;
end;

procedure TfmEffectSPS.dxBarButton21Click(Sender: TObject);
begin
  fmPeriod := TfmPeriod.Create(nil, Fdate51, Fdate52, 2);
  if fmPeriod.ShowModal=mrOK then begin
    Screen.Cursor := crHourglass;
    Fdate51 := fmPeriod._GetMonthBegin;
    Fdate52 := fmPeriod._GetMonthEnd;

    dxBarButton21.Caption := FormatDateTime('mmm yy', Fdate51) + ' - ' + FormatDateTime('mmm yy', Fdate52);

    SP_IndicatorJob.Close;
    SP_IndicatorJob.Parameters.Refresh;
    SP_IndicatorJob.Parameters.ParamByName('@type_action').Value := 0;
    SP_IndicatorJob.Parameters.ParamByName('@date1').Value := Fdate51;
    SP_IndicatorJob.Parameters.ParamByName('@date2').Value := Fdate52;
    SP_IndicatorJob.Open;

    Screen.Cursor := crDefault;
  end;
end;

procedure TfmEffectSPS.dxBarButton23Click(Sender: TObject);
begin
  Panel4.Visible := TdxBarButton(Sender).Down;
end;

procedure TfmEffectSPS.dxBarButton24Click(Sender: TObject);
var i : integer;
    Q : TADOQuery;
   SP : TADOStoredProc;
            dist : integer;
        days_way : integer;
       days_load : integer;
  days_way_empty : integer;
 days_load_empty : integer;

begin
      SP := TADOStoredProc.Create(nil);
      SP.Connection := Fconnect;
      SP.ProcedureName := 'sp_inf_obj_node_node_modify';


  Q := TADOQuery.Create(nil);
  Q.Connection := Fconnect;
  Q.SQL.Add('SELECT RIGHT(''000'' + convert(varchar, sto), 6) as sto, RIGHT(''000'' + convert(varchar, stn), 6) as stn FROM fact WHERE fact_id = :fact_id');

  for i:=0 to cxGrid8DBBandedTableView1.Controller.SelectedRowCount - 1 do begin
    Q.Close;
    Q.Parameters.ParamByName('fact_id').Value := cxGrid8DBBandedTableView1.Controller.SelectedRows[i].Values[cxGrid8DBBandedTableView1fact_id.Index];
    Q.Open;

        dist           := -9;
        days_way       := 0;
        days_load      := 0;
        days_way_empty := 0;
        days_load_empty:= 0;

    //RailCalcDistanceDays(Q.FieldByName('sto').AsString, RightStr('000'+Q.FieldByName('stn').AsString, 6), dist, days_way, days_load, days_way_empty, days_load_empty);

    SP.Parameters.Refresh;
    SP.Parameters.ParamByName('@type_action'     ).Value := 0;
    SP.Parameters.ParamByName('@node1_cod'       ).Value := Q.FieldByName('sto').Value;
    SP.Parameters.ParamByName('@node2_cod'       ).Value := Q.FieldByName('stn').Value;
    SP.Parameters.ParamByName('@length_way'      ).Value := dist;
    SP.Parameters.ParamByName('@days_way'        ).Value := days_way;
    SP.Parameters.ParamByName('@days_load'       ).Value := days_load;
    SP.Parameters.ParamByName('@days_way_empty'  ).Value := days_way_empty;
    SP.Parameters.ParamByName('@days_load_empty' ).Value := days_load_empty;
    SP.Parameters.ParamByName('@error_message'   ).Value := null;
    SP.ExecProc;
  end;

  RefreshQueryGrid(cxGrid8DBBandedTableView1, 'fact_id', cxGrid8DBBandedTableView1fact_id.DataBinding.Field.AsInteger);

  Q.Free;
  SP.Free;
end;

procedure TfmEffectSPS.dxBarButton26Click(Sender: TObject);
var i : integer;
begin
  Screen.Cursor := crHourglass;

  SP_Profit2.Close;
  SP_Profit2.Open;
  SP_Profit2_Detail.Recordset := SP_Profit2.NextRecordset(i);

  Screen.Cursor := crDefault;
end;

procedure TfmEffectSPS.cxGrid5DBBandedTableView1FocusedRecordChanged(Sender: TcxCustomGridTableView; APrevFocusedRecord,  AFocusedRecord: TcxCustomGridRecord; ANewItemRecordFocusingChanged: Boolean);
begin
  if (AFocusedRecord<>nil)  then begin
    Screen.Cursor := crHourglass;
    SP_IndicatorJobDetail.Close;
    SP_IndicatorJobDetail.Parameters.Refresh;
    SP_IndicatorJobDetail.Parameters.ParamByName('@type_action').Value := 1;
    SP_IndicatorJobDetail.Parameters.ParamByName('@date1').Value := StrToDateTime('01'+FormatSettings.DateSeparator+Copy(cxGrid5DBBandedTableView1period_int.DataBinding.Field.AsString, 5, 2)+FormatSettings.DateSeparator+Copy(cxGrid5DBBandedTableView1period_int.DataBinding.Field.AsString, 1, 4));
    SP_IndicatorJobDetail.Parameters.ParamByName('@date2').Value := StrToDateTime('01'+FormatSettings.DateSeparator+Copy(cxGrid5DBBandedTableView1period_int.DataBinding.Field.AsString, 5, 2)+FormatSettings.DateSeparator+Copy(cxGrid5DBBandedTableView1period_int.DataBinding.Field.AsString, 1, 4));
    SP_IndicatorJobDetail.Open;
    Screen.Cursor := crDefault;
  end;
end;


procedure TfmEffectSPS.cxGrid6DBBandedTableView1TcxGridDBDataControllerTcxDataSummaryFooterSummaryItems2GetText(Sender: TcxDataSummaryItem; const AValue: Variant; AIsFooter: Boolean;  var AText: string);
var _cnt_days, _sum_itog : currency;
begin
  if cxGrid6DBBandedTableView1.DataController.Summary.FooterSummaryValues[4] = null then _sum_itog := 0
  else _sum_itog := cxGrid6DBBandedTableView1.DataController.Summary.FooterSummaryValues[4];

  if (cxGrid6DBBandedTableView1.DataController.Summary.FooterSummaryValues[3] = null) OR
     (cxGrid6DBBandedTableView1.DataController.Summary.FooterSummaryValues[3] = 0) then begin
    _cnt_days := 1;
    _sum_itog := 0;
  end else
    _cnt_days := cxGrid6DBBandedTableView1.DataController.Summary.FooterSummaryValues[3];

  AText := FormatFloat('#,##0.00', _sum_itog / _cnt_days);

end;

procedure TfmEffectSPS.cxGrid4DBBandedTableView1FocusedRecordChanged(Sender: TcxCustomGridTableView; APrevFocusedRecord, AFocusedRecord: TcxCustomGridRecord; ANewItemRecordFocusingChanged: Boolean);
begin
//  Screen.Cursor := crHourglass;
//  SP_Profit2_Detail.Open;
//  SP_Profit2_Detail.Filter := 'nvag=' + IntToStr(cxGrid4DBBandedTableView1nvag.DataBinding.Field.AsInteger) +
//            ' AND dataot>=''' + DateToStr(cxGrid4DBBandedTableView1date_arrival_1.DataBinding.Field.AsDateTime) + '''' +
//            ' AND dataot<=''' + DateToStr(cxGrid4DBBandedTableView1date_arrival_empty.DataBinding.Field.AsDatetime) + '''';
//  SP_Profit2_Detail.Next;
//  Screen.Cursor := crDefault;

  Screen.Cursor := crHourglass;
  SP_Profit2_Detail.Open;
  SP_Profit2_Detail.Filter := 'nvag=' + IntToStr(cxGrid4DBBandedTableView1nvag.DataBinding.Field.AsInteger) + ' AND num_track=' + IntToStr(cxGrid4DBBandedTableView1num_track.DataBinding.Field.AsInteger);
  SP_Profit2_Detail.Next;
  Screen.Cursor := crDefault;
end;

procedure TfmEffectSPS.cxGrid4DBBandedTableView1KeyPress(Sender: TObject; var Key: Char);
begin
  FilterColumnGridOnKeyPress(cxGrid4DBBandedTableView1, Key);
end;

procedure TfmEffectSPS.cxGrid4DBBandedTableView1TcxGridDBDataControllerTcxDataSummaryFooterSummaryItems4GetText(Sender: TcxDataSummaryItem; const AValue: Variant; AIsFooter: Boolean; var AText: string);
var _cnt_days, _sum_itog : currency;
begin

  if cxGrid4DBBandedTableView1.DataController.Summary.FooterSummaryValues[2] = null then _sum_itog := 0
  else _sum_itog := cxGrid4DBBandedTableView1.DataController.Summary.FooterSummaryValues[2];

  if (cxGrid4DBBandedTableView1.DataController.Summary.FooterSummaryValues[6] = null) OR
     (cxGrid4DBBandedTableView1.DataController.Summary.FooterSummaryValues[6] = 0) then begin
    _cnt_days := 1;
    _sum_itog := 0;
  end else
    _cnt_days := cxGrid4DBBandedTableView1.DataController.Summary.FooterSummaryValues[6];

  AText := FormatFloat('#,##0.00', _sum_itog / _cnt_days);
end;

procedure TfmEffectSPS.cxGrid9DBBandedTableView1FocusedRecordChanged(Sender: TcxCustomGridTableView; APrevFocusedRecord, AFocusedRecord: TcxCustomGridRecord; ANewItemRecordFocusingChanged: Boolean);
begin
    Screen.Cursor := crHourglass;

    SP_Profit_AVG_Detail.Open;
    SP_Profit_AVG_Detail.Filter := 'contract_id=' + IntToStr(cxGrid9DBBandedTableView1contract_id.DataBinding.Field.AsInteger) +
                        ' AND date_period_month=' + FormatDateTime('m', cxGrid9DBBandedTableView1date_period.DataBinding.Field.AsDatetime) +
                        ' AND date_period_year='  + FormatDateTime('yyyy', cxGrid9DBBandedTableView1date_period.DataBinding.Field.AsDatetime);

    SP_Profit_AVG_Detail.Next;

    Screen.Cursor := crDefault;

end;

procedure TfmEffectSPS.cxGrid9DBBandedTableView1KeyPress(Sender: TObject; var Key: Char);
begin
  FilterColumnGridOnKeyPress(cxGrid9DBBandedTableView1, Key);
end;

procedure TfmEffectSPS.dxBarButton27Click(Sender: TObject);
var BargainList : TStringList;
begin
  Screen.Cursor := crHourglass;

  BargainList := TStringList.Create;
  cx_GetSelectedValues(BargainList, cxGrid6, 'bargain_id', False);

  //PrintFrahtCardWeight(BargainList, Fconnect, True);

  BargainList.Free;
end;


procedure TfmEffectSPS.dxBarButton29Click(Sender: TObject);
type
  TFunc = function(AHandle: THandle; conn: TADOConnection; flag: integer; param: variant) : variant;
var
 FVagonChoose : TFunc;
         hndl : THandle;
      v, v_in : variant;
            i : integer;
begin
  case cxPageControl1.ActivePageIndex of
    0 : ;
    1 : v_in := VarArrayOf([NULL, Fdate11, Fdate12, NULL, NULL, NULL, NULL, NULL, NULL, NULL]);
    2 : v_in := VarArrayOf([NULL, Fdate21, Fdate22, NULL, NULL, NULL, NULL, NULL, NULL, NULL]);
    3 : v_in := VarArrayOf([NULL, Fdate31, Fdate32, NULL, NULL, NULL, NULL, NULL, NULL, NULL]);
    4 : v_in := VarArrayOf([NULL, Fdate41, Fdate42, NULL, NULL, NULL, NULL, NULL, NULL, NULL]);
    5 : v_in := VarArrayOf([NULL, Fdate51, Fdate52, NULL, NULL, NULL, NULL, NULL, NULL, NULL]);
  end;

  hndl := LoadLibrary('dictionary.dll');
  @FVagonChoose := GetProcAddress(hndl, 'CreateWndVagonChoose');
  v := FVagonChoose(Forms.Application.Handle, Fconnect, TdxBarButton(Sender).Tag, v_in);  //
  FreeLibrary(hndl);
  //  v[0] - номера вагонов
  //  v[1] - дата начала
  //  v[2] - дата окончания
  //  v[3] - клиент
  //  v[4] - ст.отпр
  //  v[5] - ст.назн
  //  v[6] - груз
  //  v[7] - дорога отпр
  //  v[8] - дорога назн
  //  v[9] - признак этран или дислокация

  // ------ нажата кнопка Cancel
  if v[0] = null then begin
    Exit;
  end;

  Screen.Cursor := crHourglass;
  case cxPageControl1.ActivePageIndex of
    // ---- фактическая доходность ----------
    2 : begin
          dxBarButton29.Caption := PeriodToStr(v[1], v[2], True);
          Fdate21 := v[1];
          Fdate22 := v[2];

          SP_Profit2_Detail.Filter := '';

          SP_Profit2.Close;
          SP_Profit2.Parameters.Refresh;
          SP_Profit2.Parameters.ParamByName('@str_nvag'      ).Value := iif(v[0]='', null, v[0]);
          SP_Profit2.Parameters.ParamByName('@type_action'    ).Value := 0;
          SP_Profit2.Parameters.ParamByName('@date1'          ).Value := v[1];
          SP_Profit2.Parameters.ParamByName('@date2'          ).Value := v[2];
          SP_Profit2.Parameters.ParamByName('@str_contract_id').Value := v[3];
          SP_Profit2.Parameters.ParamByName('@node_begin_cod' ).Value := iif(v[4]='', null, v[4]);
          SP_Profit2.Parameters.ParamByName('@node_end_cod'   ).Value := iif(v[5]='', null, v[5]);
          SP_Profit2.Parameters.ParamByName('@road_begin_cod' ).Value := iif(v[7]='', null, v[7]);
          SP_Profit2.Parameters.ParamByName('@road_end_cod'   ).Value := iif(v[8]='', null, v[8]);
          SP_Profit2.Parameters.ParamByName('@kargoETSNG_cod' ).Value := iif(v[6]='', null, v[6]);
          SP_Profit2.Open;

          SP_Profit2_Detail.Recordset := SP_Profit2.NextRecordset(i);
          SP_Profit_Pivot.Recordset := SP_Profit2.NextRecordset(i);
        end;

    // ---- фактическая доходность (средняя) ----------
    3 : begin
          dxBarButton25.Caption := PeriodToStr(v[1], v[2], True);
          Fdate31 := v[1];
          Fdate32 := v[2];

          SP_Profit_AVG_Detail.Filter := '';

          SP_Profit_AVG.Close;
          SP_Profit_AVG.Parameters.Refresh;
          SP_Profit_AVG.Parameters.ParamByName('@str_nvag'       ).Value := iif(v[0]='', null, v[0]);
          SP_Profit_AVG.Parameters.ParamByName('@date1'          ).Value := v[1];
          SP_Profit_AVG.Parameters.ParamByName('@date2'          ).Value := v[2];
          SP_Profit_AVG.Parameters.ParamByName('@str_contract_id').Value := v[3];
          SP_Profit_AVG.Open;

          SP_Profit_AVG_Detail.Recordset := SP_Profit_AVG.NextRecordset(i);
        end;

    // ------- движение вагонов --------------
    4 : begin
          dxBarButton22.Caption := PeriodToStr(v[1], v[2], True);
          Fdate41 := v[1];
          Fdate42 := v[2];

          SP_VagonMove.Close;
          SP_VagonMove.Parameters.Refresh;
          SP_VagonMove.Parameters.ParamByName('@str_nvag').Value := iif(v[0]='', null, v[0]);
          SP_VagonMove.Parameters.ParamByName('@date1').Value := v[1];
          SP_VagonMove.Parameters.ParamByName('@date2').Value := v[2];
          SP_VagonMove.Parameters.ParamByName('@node_begin_cod').Value := iif(v[4]='', null, v[4]);
          SP_VagonMove.Parameters.ParamByName('@node_end_cod'  ).Value := iif(v[5]='', null, v[5]);
          SP_VagonMove.Parameters.ParamByName('@road_begin_cod').Value := iif(v[7]='', null, v[7]);
          SP_VagonMove.Parameters.ParamByName('@road_end_cod'  ).Value := iif(v[8]='', null, v[8]);
          SP_VagonMove.Parameters.ParamByName('@kargoETSNG_cod').Value := iif(v[6]='', null, v[6]);
          SP_VagonMove.Parameters.ParamByName('@etran_track'   ).Value := v[9];
          SP_VagonMove.Open;
        end;


  end;
  Screen.Cursor := crDefault;
end;


procedure TfmEffectSPS.dxBarButton2Click(Sender: TObject);
begin
	SetdxDBGridColumns(cxGrid1DBBandedTableView1);
end;


procedure TfmEffectSPS.dxBarButton30Click(Sender: TObject);
var        SP : TADOStoredProc;
 exWks, exApp : Variant;
     i, row_0 : integer;
     _sum_itog, _sum_days : currency;
begin
  Screen.Cursor := crHourglass;

  ShowTextMessage('Запуск Excel...', False);
  exApp := CreateOleObject('Excel.Application');
  exApp.Workbooks.Add(ExtractFilePath(ParamStr(0)) + 'Отчёт по доходности.xlsx');
  exWks := exApp.ActiveWorkbook.WorkSheets[1];

  if (MonthOf(Fdate21) = MonthOf(Fdate21)) then
    exWks.Range['B2'].Value := 'Отчёт по доходности за ' + FormatDateTime('mmmm yyyy г.', Fdate21)
  else
    exWks.Range['B2'].Value := 'Отчёт по доходности за период с ' + FormatDateTime('dd.mm.yyyy', Fdate21) + ' по ' + FormatDateTime('dd.mm.yyyy', Fdate22);


  row_0 := 5;
  _sum_itog := 0;
  _sum_days := 0;

  SP_Profit_Pivot.Open;
  SP_Profit_Pivot.First;
  while not SP_Profit_Pivot.Eof do begin
    exWks.Range['B' + IntToStr(row_0)].Value := SP_Profit_Pivot.FieldByName('firm_customer_name').AsString;
    exWks.Range['C' + IntToStr(row_0)].Value := SP_Profit_Pivot.FieldByName('profit_days').AsCurrency;
    exWks.Range['D' + IntToStr(row_0)].Value := SP_Profit_Pivot.FieldByName('cnt_days').AsCurrency;
    exWks.Range['E' + IntToStr(row_0)].Value := SP_Profit_Pivot.FieldByName('cnt_vag').AsInteger;

    _sum_itog := _sum_itog + SP_Profit_Pivot.FieldByName('sum_itog').AsCurrency;
    _sum_days := _sum_days + SP_Profit_Pivot.FieldByName('sum_days').AsCurrency;
    row_0 := row_0 + 1;
    SP_Profit_Pivot.Next;
  end;

    // -------- сетка на всю таблицу -----------
  exWks.Range['A5:'+'F'+IntToStr(row_0)].Borders[11].LineStyle := 1;  // vertical
  exWks.Range['B5:'+'E'+IntToStr(row_0+1)].Borders[12].LineStyle := 1;  // horizontal

  exWks.Range['B'+IntToStr(row_0)+':E'+IntToStr(row_0)].Interior.ColorIndex := 15;
  exWks.Range['B'+IntToStr(row_0)].Value := 'ИТОГО:';
  exWks.Range['C'+IntToStr(row_0)].Value := RoundCurr(_sum_itog / _sum_days, -2);
  exWks.Range['D'+IntToStr(row_0)].Value := RoundCurr(_sum_days / SP_Profit2.RecordCount, -1);
  exWks.Range['E'+IntToStr(row_0)].Value := '=SUM(E5:E' + IntToStr(row_0-1) + ')';

  exApp.Visible := True;

  exApp := Null;
  exWks := Null;
  ShowTextMessage();

  Screen.Cursor := crDefault;
end;

procedure TfmEffectSPS.dxBarButton3Click(Sender: TObject);
begin
	cxGrid1DBBandedTableView1.OptionsView.GroupByBox := not cxGrid1DBBandedTableView1.OptionsView.GroupByBox;
end;

procedure TfmEffectSPS.dxBarButton4Click(Sender: TObject);
begin
	FiltercxGrid4ListID(cxGrid1DBBandedTableView1);
end;

procedure TfmEffectSPS.dxBarButton5Click(Sender: TObject);
begin
	cxGrid1DBBandedTableView1.Filtering.ColumnFilteredItemsList := not dxBarButton5.Down;
end;

procedure TfmEffectSPS.dxBarButton6Click(Sender: TObject);
var      id : integer;
    save_id : integer;
begin
  fmEffectSPSAdd := TfmEffectSPSAdd.Create(Forms.Application, Fconnect);
  fmEffectSPSAdd._SetClientDS := Client_EffectSPS;

  DS_EffectSPS.DataSet := nil;
  Client_EffectSPS.DisableControls;
  save_id := Client_EffectSPS.FieldByName('id').AsInteger;
  Client_EffectSPS.First;
  id := Client_EffectSPS.FieldByName('id').AsInteger;
  while not Client_EffectSPS.Eof do begin
    if id < Client_EffectSPS.FieldByName('id').AsInteger then
      id := Client_EffectSPS.FieldByName('id').AsInteger;
    Client_EffectSPS.Next;
  end;
  Client_EffectSPS.Locate('id',save_id,[]);
  Client_EffectSPS.EnableControls;
  DS_EffectSPS.DataSet := Client_EffectSPS;


  fmEffectSPSAdd._SetInsert := id;

  if fmEffectSPSAdd.ShowModal = mrOk then begin
    RefreshQueryGrid(cxGrid1DBBandedTableView1, 'id');
    CalcEmpty;
    RefreshNode;
  end;
end;

procedure TfmEffectSPS.dxBarButton7Click(Sender: TObject);
begin
  fmEffectSPSAdd := TfmEffectSPSAdd.Create(Forms.Application, Fconnect);
  fmEffectSPSAdd._SetClientDS := Client_EffectSPS;
  fmEffectSPSAdd._SetUpdate   := cxGrid1DBBandedTableView1id.DataBinding.Field.Value;
  if fmEffectSPSAdd.ShowModal = mrOK then begin
    Client_EffectSPS.Locate('id', cxGrid1DBBandedTableView1id.DataBinding.Field.Value, []);
    Client_EffectSPS.Edit;
    Client_EffectSPS.FieldByName('distance'            ).Value := null;
    Client_EffectSPS.FieldByName('time_way'            ).Value := null;
    Client_EffectSPS.FieldByName('time_route'          ).Value := null;
    Client_EffectSPS.FieldByName('profit_vagon'        ).Value := null;
    Client_EffectSPS.FieldByName('profit_day'          ).Value := null;
    Client_EffectSPS.FieldByName('tariff'              ).Value := null;
    Client_EffectSPS.FieldByName('tariff_not_nds'      ).Value := null;
    Client_EffectSPS.FieldByName('tariff_self'         ).Value := null;
    Client_EffectSPS.FieldByName('tariff_self_not_nds' ).Value := null;
    Client_EffectSPS.FieldByName('delivery_period'     ).Value := null;
    Client_EffectSPS.Post;
    RefreshQueryGrid(cxGrid1DBBandedTableView1, 'id');
    RefreshNode;
    CalcEmpty;
  end;
end;

procedure TfmEffectSPS.dxBarButton8Click(Sender: TObject);
var prev_id : integer;
    next_id : integer;
         id : integer;
    node_id : integer;
    node_name, node_cod : string;
begin
  if Client_EffectSPS.RecordCount > 0 then begin
    id := cxGrid1DBBandedTableView1id.DataBinding.Field.AsInteger;

    Client_EffectSPS.DisableControls;
    prev_id := 0;
    next_id := -9;
    Client_EffectSPS.First;
    while not Client_EffectSPS.Eof do begin
      if (prev_id < Client_EffectSPS.FieldByName('id').AsInteger) AND
         (id > Client_EffectSPS.FieldByName('id').AsInteger) then begin
        prev_id := Client_EffectSPS.FieldByName('id').AsInteger;
      end;

      if (id < Client_EffectSPS.FieldByName('id').AsInteger) then begin
        if next_id = -9 then
          next_id := Client_EffectSPS.FieldByName('id').AsInteger;
        if (next_id > Client_EffectSPS.FieldByName('id').AsInteger) then
          next_id := Client_EffectSPS.FieldByName('id').AsInteger;
      end;
      Client_EffectSPS.Next;
    end;

    if (next_id > id) AND (prev_id <> 0) then begin
      Client_EffectSPS.Locate('id', prev_id, []);
      node_id   := Client_EffectSPS.FieldByName('node_end_id').Value;
      node_name := Client_EffectSPS.FieldByName('node_end_name').Value;
      node_cod  := Client_EffectSPS.FieldByName('node_end_cod').Value;

      Client_EffectSPS.Locate('id', next_id, []);
      Client_EffectSPS.Edit;
      Client_EffectSPS.FieldByName('node_begin_id'  ).Value := node_id;
      Client_EffectSPS.FieldByName('node_begin_name').Value := node_name;
      Client_EffectSPS.FieldByName('node_begin_cod' ).Value := node_cod;
      Client_EffectSPS.Post;
    end;

    Client_EffectSPS.Locate('id', id, []);
    Client_EffectSPS.Delete;
    Client_EffectSPS.EnableControls;
    CalcEmpty;
    RefreshQueryGrid(cxGrid1DBBandedTableView1, 'id');
    RefreshNode;
  end;
end;

procedure TfmEffectSPS.dxBarButton9Click(Sender: TObject);
var RTXApplication : RailTariff_TLB.IApplication;
    RTXDocument    : RailTariff_TLB.IDocument;
    RTXResult      : RailTariff_TLB.IDocNode;
    RTXLandNode    : RailTariff_TLB.IDocNode;
    RTXTaxesNode   : RailTariff_TLB.IDocNode;
    str_temp : string;
    delivery_period : integer;
    price_sum     : Currency;
    price_nds_sum : Currency;
    vohr_sum      : Currency;
    distance      : integer;
begin
  ShowTextMessage('Подключение к Rail-Tariff', False);
  try
    RTXApplication := RTXCreate2(CTM_Server, CTM_User, CTM_Password);
    RTXApplication.Initialize('');
  except
    RTXApplication := nil;
    exit;
  end;

  RTXDocument := RTXApplication.CreateDocument;

  Client_EffectSPS.DisableControls;
  Client_EffectSPS.First;
  while not Client_EffectSPS.Eof  do begin
    ShowTextMessage('Расчет: ' + Client_EffectSPS.FieldByName('node_begin_name').AsString + ' - ' + Client_EffectSPS.FieldByName('node_end_name').AsString + '...', False);

    try
      (RTXDocument as IDocumentAttr).OnDate(Date);

      (RTXDocument as IDocumentAttr).FromStation(Client_EffectSPS.FieldByName('node_begin_cod').AsString, 0);
      (RTXDocument as IDocumentAttr).ToStation  (Client_EffectSPS.FieldByName('node_end_cod'  ).AsString, 0);

      if Client_EffectSPS.FieldByName('type_park_id').AsInteger = 0 then begin
        (RTXDocument as IDocumentAttr).Send(1000, 1, 0, 2);
        (RTXDocument as IDocumentAttr5).FreightEx(Client_EffectSPS.FieldByName('kargoETSNG_cod').AsString, '', Client_EffectSPS.FieldByName('kargoGNG_cod').AsString, Client_EffectSPS.FieldByName('Weight').AsFloat);
        (RTXDocument as IDocumentAttr).Wagon(1, 1, Client_EffectSPS.FieldByName('count_vagon').AsInteger, 60);
      end else begin
        (RTXDocument as IDocumentAttr).Send(1000, 100, 0, 2);
        (RTXDocument as IDocumentAttr5).FreightEx(Client_EffectSPS.FieldByName('kargoETSNG_cod').AsString, '', Client_EffectSPS.FieldByName('kargoGNG_cod').AsString, Client_EffectSPS.FieldByName('Weight').AsFloat);
        (RTXDocument as IDocumentAttr).Wagon(1, 1, Client_EffectSPS.FieldByName('count_vagon').AsInteger, 60);
//        (RTXDocument as IDocumentAttr8).EmptyWagon(1, 1, Client_EffectSPS.FieldByName('count_vagon').AsInteger, '', 4, 23);
        if Client_EffectSPS.FieldByName('kargoETSNG_cod').AsString = '421034' then (RTXDocument as IDocumentAttr8).EmptyWagonEx( 1, 1, Client_EffectSPS.FieldByName('count_vagon').AsInteger, Client_EffectSPS.FieldByName('kargoETSNG_add_cod').AsString, '', 4, 23);
        if Client_EffectSPS.FieldByName('kargoETSNG_cod').AsString = '421049' then (RTXDocument as IDocumentAttr8).EmptyWagonEx(90, 1, Client_EffectSPS.FieldByName('count_vagon').AsInteger, Client_EffectSPS.FieldByName('kargoETSNG_add_cod').AsString, '', 4, 23);
        if Client_EffectSPS.FieldByName('kargoETSNG_cod').AsString = '421104' then (RTXDocument as IDocumentAttr8).EmptyWagonEx( 2, 1, Client_EffectSPS.FieldByName('count_vagon').AsInteger, Client_EffectSPS.FieldByName('kargoETSNG_add_cod').AsString, '', 4, 23);
      end;

      if Client_EffectSPS.FieldByName('set_vohr').AsBoolean = True then begin
        RTXDocument.Data.Value['Vagon\VCGuard'] := Client_EffectSPS.FieldByName('count_vagon').AsInteger;
        RTXDocument.Data.Node['LandTrf'].Value['GuardPrice\Enabled'] := True;
      end;

      RTXDocument.Data.Value['CommonForCalc\ReqCurrencyCode'] := 810;
      (RTXDocument as IDocumentControl).DoCalcDistance;

      RTXDocument.Data.Value['Vagon\OwnerId'] := 1;
      (RTXDocument as IDocumentControl).DoCalcTariff;

      price_sum     := 0;
      price_nds_sum := 0;
      distance      := 0;
      vohr_sum      := 0;
      RTXResult := RTXDocument.Result;
      RTXResult.AsTable.First;
      while not RTXResult.AsTable.EOF do begin
        price_sum     := price_sum     + RTXResult.Value['TotalPrice'];
        price_nds_sum := price_nds_sum + RTXResult.Value['TotalPriceWoNDS'];
        distance      := distance      + RTXResult.Value['Distance'];
        vohr_sum      := vohr_sum      + RTXResult.Value['GuardPrice'];
        RTXResult.AsTable.Next;
      end;
      Client_EffectSPS.Edit;
      Client_EffectSPS.FieldByName('tariff'        ).Value := price_sum;
      Client_EffectSPS.FieldByName('tariff_not_nds').Value := price_nds_sum;
      Client_EffectSPS.FieldByName('distance'      ).Value := distance;
      Client_EffectSPS.FieldByName('sum_vohr'      ).Value := vohr_sum;
      Client_EffectSPS.Post;


      RTXDocument.Data.Value['Vagon\OwnerId'] := 2;
      (RTXDocument as IDocumentControl).DoCalcTariff;

      price_sum     := 0;
      price_nds_sum := 0;
      RTXResult := RTXDocument.Result;
      RTXResult.AsTable.First;
      while not RTXResult.AsTable.EOF do begin
        price_sum     := price_sum     + RTXResult.Value['TotalPrice'];
        price_nds_sum := price_nds_sum + RTXResult.Value['TotalPriceWoNDS'];
        RTXResult.AsTable.Next;
      end;
      Client_EffectSPS.Edit;
      Client_EffectSPS.FieldByName('tariff_self'        ).Value := price_sum;
      Client_EffectSPS.FieldByName('tariff_self_not_nds').Value := price_nds_sum;
      Client_EffectSPS.Post;

      delivery_period := 0;
      RTXLandNode := RTXDocument.Data.Node['LandTrf'];
      RTXLandNode.AsTable.First;
      while not RTXLandNode.AsTable.EOF do begin
        RTXTaxesNode := RTXLandNode.Node['Taxes'];
        RTXTaxesNode.AsTable.First;
        while not RTXTaxesNode.AsTable.EOF do begin
          str_temp := VarToStr(RTXTaxesNode.Value['Description']);
          if Pos('Итого. Срок доставки ', str_temp) <> 0 then begin
            str_temp := RightStr(str_temp, Length(str_temp) - Pos('Итого. Срок доставки ', str_temp) - 20);
            str_temp := LeftStr(str_temp, Pos('сут.', str_temp)-2);

            delivery_period := delivery_period + StrToIntDef(str_temp, 0);
          end;
          RTXTaxesNode.AsTable.Next;
        end;
        RTXLandNode.AsTable.Next;
      end;

      Client_EffectSPS.Edit;
      Client_EffectSPS.FieldByName('delivery_period').Value := delivery_period;
      Client_EffectSPS.Post;
    except
      on E: Exception do begin
        Forms.Application.MessageBox(PChar(E.Message), 'Ошибка', MB_ICONSTOP or MB_OK);
      end;
    end;

    Client_EffectSPS.Next;
  end;


  RTXDocument := nil;
  RTXApplication := nil;


  Client_EffectSPS.First;
  while not Client_EffectSPS.Eof do begin
    Client_EffectSPS.Edit;
    if Client_EffectSPS.FieldByName('distance').AsFloat <> 0 then begin
      Client_EffectSPS.FieldByName('time_way'  ).Value := RoundCurr(Client_EffectSPS.FieldByName('distance').AsFloat / Client_EffectSPS.FieldByName('speed_avg').AsFloat + Client_EffectSPS.FieldByName('days_load').AsFloat, -2);
      Client_EffectSPS.FieldByName('time_route').Value := RoundCurr(Client_EffectSPS.FieldByName('distance').AsFloat / Client_EffectSPS.FieldByName('speed_avg').AsFloat + Client_EffectSPS.FieldByName('days_load').AsFloat, -2);
    end else begin
      Client_EffectSPS.FieldByName('time_way'  ).Value := 0;
      Client_EffectSPS.FieldByName('time_route').Value := 0;
    end;

    // Груженый
    if Client_EffectSPS.FieldByName('type_park_id').Value = 0 then begin
      // Тсобст
      if Client_EffectSPS.FieldByName('formula_id').AsInteger = 0 then begin
        if Client_EffectSPS.FieldByName('rate_type_id').AsInteger = 0 then
          Client_EffectSPS.FieldByName('profit_vagon').Value := RoundCurr(Client_EffectSPS.FieldByName('rate_agree').AsFloat * Client_EffectSPS.FieldByName('count_vagon').AsFloat,-2)
        else
          Client_EffectSPS.FieldByName('profit_vagon').Value := RoundCurr(Client_EffectSPS.FieldByName('rate_agree').AsFloat * Client_EffectSPS.FieldByName('weight').AsFloat,-2);

        if Client_EffectSPS.FieldByName('set_self_cost').AsBoolean = True then
           Client_EffectSPS.FieldByName('profit_vagon').Value := Client_EffectSPS.FieldByName('profit_vagon').Value - Client_EffectSPS.FieldByName('tariff_self_not_nds').AsFloat;

      end;

      // (Тржд-скидка%)-Тсобст
      if Client_EffectSPS.FieldByName('formula_id').AsInteger = 1 then begin
        Client_EffectSPS.FieldByName('profit_vagon').Value := RoundCurr((Client_EffectSPS.FieldByName('tariff_not_nds').Value - Client_EffectSPS.FieldByName('tariff_not_nds').Value * (Client_EffectSPS.FieldByName('rate_calc_value').Value/100)) - Client_EffectSPS.FieldByName('tariff_self_not_nds').Value, -2);
      end;
    end;

    // Порожний
    if Client_EffectSPS.FieldByName('type_park_id').Value = 1 then begin
      Client_EffectSPS.FieldByName('profit_vagon').Value := (-1) * Client_EffectSPS.FieldByName('tariff_self_not_nds').AsFloat;
    end;

    if Client_EffectSPS.FieldByName('time_way').AsFloat <> 0 then
        Client_EffectSPS.FieldByName('profit_day').Value := RoundCurr(Client_EffectSPS.FieldByName('profit_vagon').AsFloat / Client_EffectSPS.FieldByName('time_way').AsFloat, -2);

    Client_EffectSPS.Post;

    Client_EffectSPS.Next;
  end;

  Client_EffectSPS.EnableControls;
  CalcSum();
  RefreshQueryGrid(cxGrid1DBBandedTableView1, 'id');
  ShowTextMessage;
end;

end.


