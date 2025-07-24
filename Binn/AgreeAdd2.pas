unit AgreeAdd2;

interface

uses
  Windows, Messages, SysUtils, Forms, Dialogs, Variants, Classes, Graphics, Default,
  Controls, StdCtrls, ExtCtrls, DB, ADODB, Buttons, ImageList, ImgList, Menus, DBClient,
  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint,
  dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,  dxSkinGlassOceans,
  dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMetropolis, dxSkinMetropolisDark,
  dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver,
  dxSkinOffice2010Black, dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray, dxSkinOffice2013White,
  dxSkinOffice2016Colorful, dxSkinOffice2016Dark, dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus, dxSkinSilver,
  dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008, dxSkinTheAsphaltWorld, dxSkinsDefaultPainters, dxSkinValentine, dxSkinVisualStudio2013Blue,
  dxSkinVisualStudio2013Dark, dxSkinVisualStudio2013Light, dxSkinVS2010, dxSkinWhiteprint, dxSkinXmas2008Blue, cxCurrencyEdit, cxDropDownEdit,
  cxButtonEdit, cxTextEdit, cxMaskEdit, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, cxLabel, cxGroupBox, dxSkinscxPCPainter,
  dxBarBuiltInMenu, cxPC, cxCheckBox,  cxButtons, cxClasses, cxPropertiesStore, dxScreenTip, dxCustomHint, cxHint, cxStyles, cxCustomData,
  cxFilter, cxData, cxDataStorage, cxNavigator, cxDBData, cxGridLevel, cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, cxGridBandedTableView, cxGridDBBandedTableView, dxSkinsdxBarPainter, dxBar, cxMemo, cxRadioGroup, dxSkinTheBezier,
  dxDateRanges, dxScrollbarAnnotations, cxCalendar, dxCoreGraphics;

type
  TfmAgreeAdd2 = class(TForm)
    cxGroupBox2: TcxGroupBox;
    cxLabel2: TcxLabel;
    cxLabel3: TcxLabel;
    cxLabel12: TcxLabel;
    cxLookupComboBox1: TcxLookupComboBox;
    cxButtonEdit13: TcxButtonEdit;
    cxButtonEdit14: TcxButtonEdit;
    Panel5: TPanel;
    cxPropertiesStore1: TcxPropertiesStore;
    DS_Client: TDataSource;
    Query_Client: TADOQuery;
    DS_FiveDaysZFTO: TDataSource;
    Query_FiveDaysZFTO: TADOQuery;
    cxTextEdit13: TcxTextEdit;
    Query_Currency: TADOQuery;
    DS_Currency: TDataSource;
    cxLabel4: TcxLabel;
    cxComboBox1: TcxComboBox;
    cxComboBox2: TcxComboBox;
    cxComboBox3: TcxComboBox;
    cxComboBox4: TcxComboBox;
    cxComboBox5: TcxComboBox;
    cxComboBox6: TcxComboBox;
    cxGroupBox3: TcxGroupBox;
    cxGroupBox4: TcxGroupBox;
    dxScreenTipRepository: TdxScreenTipRepository;
    stError: TdxScreenTip;
    stWarning: TdxScreenTip;
    stInfo: TdxScreenTip;
    stCustom: TdxScreenTip;
    cxHintStyleController1: TcxHintStyleController;
    cxButtonEdit2: TcxButtonEdit;
    cxButtonEdit3: TcxButtonEdit;
    cxButtonEdit4: TcxButtonEdit;
    cxButtonEdit1: TcxButtonEdit;
    cxButtonEdit5: TcxButtonEdit;
    cxButtonEdit6: TcxButtonEdit;
    cxTextEdit14: TcxTextEdit;
    cxButtonEdit11: TcxButtonEdit;
    cxButtonEdit12: TcxButtonEdit;
    cxTextEdit16: TcxTextEdit;
    cxButtonEdit8: TcxButtonEdit;
    cxButtonEdit7: TcxButtonEdit;
    cxCheckBox4: TcxCheckBox;
    cxCheckBox3: TcxCheckBox;
    cxLookupComboBox5: TcxLookupComboBox;
    cxLabel5: TcxLabel;
    cxLabel6: TcxLabel;
    cxLabel7: TcxLabel;
    cxLabel8: TcxLabel;
    cxLabel9: TcxLabel;
    cxLabel10: TcxLabel;
    cxPageControl1: TcxPageControl;
    cxTabSheet1: TcxTabSheet;
    cxTabSheet2: TcxTabSheet;
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    cxGroupBox5: TcxGroupBox;
    DS_TypeBargain: TDataSource;
    Query_TypeBargain: TADOQuery;
    Query_Custom: TADOQuery;
    DS_Custom: TDataSource;
    cxGrid1: TcxGrid;
    cxGrid1Level1: TcxGridLevel;
    ClientDS_ShapingRate: TClientDataSet;
    ClientDS_ShapingRateid: TAutoIncField;
    ClientDS_ShapingRateshaping_rate_id: TIntegerField;
    ClientDS_ShapingRatecontract_agent_id: TIntegerField;
    ClientDS_ShapingRatefirm_self_name: TStringField;
    ClientDS_ShapingRatefirm_customer_name: TStringField;
    ClientDS_ShapingRatecontract_cod: TStringField;
    ClientDS_ShapingRatecontract_date_begin: TDateField;
    ClientDS_ShapingRateed_izm_id: TIntegerField;
    ClientDS_ShapingRateed_izm_name: TStringField;
    ClientDS_ShapingRatecurrency_id: TIntegerField;
    ClientDS_ShapingRatebrief_name: TStringField;
    ClientDS_ShapingRateshaping_rate_val: TCurrencyField;
    ClientDS_ShapingRatenode_begin_id: TIntegerField;
    ClientDS_ShapingRatenode_begin_name: TStringField;
    ClientDS_ShapingRatenode_begin_cod: TStringField;
    ClientDS_ShapingRatenode_end_id: TIntegerField;
    ClientDS_ShapingRatenode_end_cod: TStringField;
    ClientDS_ShapingRatenode_end_name: TStringField;
    ClientDS_ShapingRatestate_begin_id: TIntegerField;
    ClientDS_ShapingRatestate_begin_name: TStringField;
    ClientDS_ShapingRatestate_end_id: TIntegerField;
    ClientDS_ShapingRatestate_end_name: TStringField;
    ClientDS_ShapingRatenode_border_in: TIntegerField;
    ClientDS_ShapingRatenode_border_in_cod: TStringField;
    ClientDS_ShapingRatenode_border_in_name: TStringField;
    ClientDS_ShapingRatenode_border_out: TIntegerField;
    ClientDS_ShapingRatenode_border_out_cod: TStringField;
    ClientDS_ShapingRatenode_border_out_name: TStringField;
    ClientDS_ShapingRateroad_begin_id: TIntegerField;
    ClientDS_ShapingRateroad_begin_name: TStringField;
    ClientDS_ShapingRateroad_end_id: TIntegerField;
    ClientDS_ShapingRateroad_end_name: TStringField;
    ClientDS_ShapingRateshaping_rate_round_weight: TIntegerField;
    ClientDS_ShapingRateshaping_check_kargo_capacity: TBooleanField;
    ClientDS_ShapingRateshaping_kargo_min_norm: TCurrencyField;
    ClientDS_ShapingRateshaping_rate_round_sum: TBooleanField;
    ClientDS_ShapingRatekargoETSNG_id: TIntegerField;
    ClientDS_ShapingRatekargoETSNG_cod: TStringField;
    ClientDS_ShapingRatekargoETSNG_name: TStringField;
    ClientDS_ShapingRatekargoGNG_id: TIntegerField;
    ClientDS_ShapingRatekargoGNG_cod: TStringField;
    ClientDS_ShapingRatekargoGNG_name: TStringField;
    ClientDS_ShapingRatekargoETSNG_add_id: TIntegerField;
    ClientDS_ShapingRatekargoETSNG_add_cod: TStringField;
    ClientDS_ShapingRatekargoETSNG_add_name: TStringField;
    ClientDS_ShapingRateagreement_id: TIntegerField;
    ClientDS_ShapingRateagreement_name: TStringField;
    ClientDS_ShapingRateset_return: TBooleanField;
    ClientDS_ShapingRatereturn_id: TIntegerField;
    ClientDS_ShapingRatereturn_name: TStringField;
    ClientDS_ShapingRateexchange_USD_val: TCurrencyField;
    ClientDS_ShapingRateexchange_EUR_val: TCurrencyField;
    ClientDS_ShapingRateexchange_CHF_val: TCurrencyField;
    ClientDS_ShapingRateset_self_rate: TBooleanField;
    ClientDS_ShapingRateshaping_rate_nds_id: TIntegerField;
    ClientDS_ShapingRateshaping_rate_nds_name: TStringField;
    ClientDS_ShapingRatebudget_id: TIntegerField;
    ClientDS_ShapingRatebudget_name: TStringField;
    ClientDS_ShapingRatetype_calc_sum: TIntegerField;
    ClientDS_ShapingRateset_include_nds: TBooleanField;
    DS_ShapingRate: TDataSource;
    cxButton2: TcxButton;
    dxBarManager1: TdxBarManager;
    dxBarPopupMenu1: TdxBarPopupMenu;
    dxBarButton1: TdxBarButton;
    dxBarSubItem1: TdxBarSubItem;
    dxBarButton2: TdxBarButton;
    dxBarButton3: TdxBarButton;
    dxBarButton4: TdxBarButton;
    dxBarButton5: TdxBarButton;
    ClientDS_ShapingRatedate_period: TDateField;
    ClientDS_ShapingRateservice_type: TIntegerField;
    ClientDS_ShapingRateservice_type_name: TStringField;
    ClientDS_ShapingRateshaping_rate_type_id: TIntegerField;
    ClientDS_ShapingRateshaping_rate_type_name: TStringField;
    ClientDS_ShapingRateshaping_rate_count: TFloatField;
    ClientDS_ShapingRateshaping_rate_sum: TFloatField;
    ClientDS_ShapingRateshaping_rate_NDS_sum: TFloatField;
    ClientDS_ShapingRateshaping_rate_notNDS_sum: TFloatField;
    ClientDS_ShapingRatebudget_cod: TStringField;
    ClientDS_ShapingRatekargoETSNG_group_name: TStringField;
    dxBarButton6: TdxBarButton;
    ClientDS_ShapingRateset_transport_pay: TBooleanField;
    ClientDS_ShapingRatevid_send: TIntegerField;
    ClientDS_ShapingRateshaping_rate_acts_note: TStringField;
    ClientDS_ShapingRateshaping_rate_note: TStringField;
    ClientDS_ShapingRateservice_kind_id: TIntegerField;
    ClientDS_ShapingRateservice_kind: TStringField;
    ClientDS_ShapingRateservice_kind_inv: TStringField;
    ClientDS_ShapingRateservice_kind_rep_id: TIntegerField;
    ClientDS_ShapingRateservice_kind_rep: TStringField;
    ClientDS_ShapingRateservice_kind_rep_inv: TStringField;
    cxGrid1DBBandedTableView1: TcxGridDBBandedTableView;
    cxGrid1DBBandedTableView1id: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1firm_self_name: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1firm_customer_name: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1contract_cod: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1contract_date_begin: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1ed_izm_name: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1brief_name: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1shaping_rate_val: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1node_begin_cod: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1node_begin_name: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1node_end_cod: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1node_end_name: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1state_begin_name: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1state_end_name: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1node_border_in_cod: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1node_border_in_name: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1node_border_out_cod: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1node_border_out_name: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1road_begin_name: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1road_end_name: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1kargoETSNG_cod: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1kargoETSNG_name: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1kargoETSNG_group_name: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1kargoGNG_cod: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1kargoGNG_name: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1kargoETSNG_add_cod: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1kargoETSNG_add_name: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1agreement_name: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1set_return: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1return_name: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1exchange_USD_val: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1exchange_EUR_val: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1exchange_CHF_val: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1set_self_rate: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1shaping_rate_nds_name: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1budget_cod: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1budget_name: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1set_include_nds: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1date_period: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1date_service: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1date_finace: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1service_type: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1service_type_name: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1shaping_rate_type_name: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1shaping_rate_count: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1shaping_rate_sum: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1shaping_rate_NDS_sum: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1shaping_rate_notNDS_sum: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1vid_send: TcxGridDBBandedColumn;
    ClientDS_ShapingRatedate_period_service: TDateTimeField;
    ClientDS_ShapingRatedate_period_finance: TDateTimeField;
    ClientDS_ShapingRateshaping_rate_sum_RUB: TCurrencyField;
    ClientDS_ShapingRateshaping_rate_sum_USD: TCurrencyField;
    ClientDS_ShapingRateshaping_rate_sum_CHF: TCurrencyField;
    ClientDS_ShapingRateshaping_rate_sum_EUR: TCurrencyField;
    ClientDS_ShapingRateshaping_rate_NDS_sum_RUB: TCurrencyField;
    ClientDS_ShapingRateshaping_rate_NDS_sum_USD: TCurrencyField;
    ClientDS_ShapingRateshaping_rate_NDS_sum_CHF: TCurrencyField;
    ClientDS_ShapingRateshaping_rate_NDS_sum_EUR: TCurrencyField;
    ClientDS_ShapingRateshaping_rate_notNDS_sum_RUB: TCurrencyField;
    ClientDS_ShapingRateshaping_rate_notNDS_sum_USD: TCurrencyField;
    ClientDS_ShapingRateshaping_rate_notNDS_sum_CHF: TCurrencyField;
    ClientDS_ShapingRateshaping_rate_notNDS_sum_EUR: TCurrencyField;
    cxGrid1DBBandedTableView1shaping_rate_sum_RUB: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1shaping_rate_sum_USD: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1shaping_rate_sum_CHF: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1shaping_rate_sum_EUR: TcxGridDBBandedColumn;
    cxGroupBox6: TcxGroupBox;
    cxCurrencyEdit2: TcxCurrencyEdit;
    Label23: TLabel;
    Label21: TLabel;
    cxCurrencyEdit4: TcxCurrencyEdit;
    cxCurrencyEdit1: TcxCurrencyEdit;
    Label19: TLabel;
    Label2: TLabel;
    Label17: TLabel;
    Label13: TLabel;
    cxCurrencyEdit16: TcxCurrencyEdit;
    cxCurrencyEdit15: TcxCurrencyEdit;
    cxCurrencyEdit3: TcxCurrencyEdit;
    Label16: TLabel;
    Label7: TLabel;
    Label22: TLabel;
    ClientDS_ShapingRateed_izm_cod: TStringField;
    cxMemo1: TcxMemo;
    dxBarButton7: TdxBarButton;
    ClientDS_ShapingRatefive_days_zfto_id: TIntegerField;
    ClientDS_ShapingRatefive_days_zfto_name: TStringField;
    cxGrid1DBBandedTableView1five_days_zfto_name: TcxGridDBBandedColumn;
    Panel4: TPanel;
    cxRadioGroup1: TcxRadioGroup;
    cxGroupBox1: TcxGroupBox;
    cxLabel13: TcxLabel;
    cxLabel15: TcxLabel;
    cxButtonEdit15: TcxButtonEdit;
    cxButtonEdit16: TcxButtonEdit;
    cxLookupComboBox6: TcxLookupComboBox;
    cxLabel1: TcxLabel;
    cxLookupComboBox2: TcxLookupComboBox;
    cxLookupComboBox3: TcxLookupComboBox;
    Label4: TLabel;
    Label5: TLabel;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    cxLabel14: TcxLabel;
    cxLabel16: TcxLabel;
    cxLabel17: TcxLabel;
    cxGrid1DBBandedTableView1shaping_rate_id: TcxGridDBBandedColumn;
    dxBarButton8: TdxBarButton;
    ClientDS_ShapingRateagreement_note: TStringField;
    cxLabel18: TcxLabel;
    cxCheckBox1: TcxCheckBox;
    ClientDS_ShapingRateset_round_notNDS_sum: TBooleanField;
    cxLookupComboBox4: TcxLookupComboBox;
    Query_RodVagon: TADOQuery;
    DS_RodVagon: TDataSource;
    cxButton1: TcxButton;
    cxButton3: TcxButton;
    ClientDS_ShapingRateshaping_rate_fee: TCurrencyField;
    cxGrid1DBBandedTableView1shaping_rate_notNDS_sum_RUB: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1shaping_rate_notNDS_sum_USD: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1shaping_rate_notNDS_sum_EUR: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1shaping_rate_notNDS_sum_CHF: TcxGridDBBandedColumn;
    cxTextEdit9: TcxTextEdit;
    cxTextEdit10: TcxTextEdit;
    cxGrid1DBBandedTableView1date_period_finance: TcxGridDBBandedColumn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cxComboBox1PropertiesChange(Sender: TObject);
    procedure cxLookupComboBox1PropertiesValidate(Sender: TObject; var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
    procedure cxButtonEdit2PropertiesButtonClick(Sender: TObject;AButtonIndex: Integer);
    procedure cxButtonEdit1PropertiesButtonClick(Sender: TObject;AButtonIndex: Integer);
    procedure cxButtonEdit5PropertiesButtonClick(Sender: TObject;AButtonIndex: Integer);
    procedure cxCheckBox4PropertiesEditValueChanged(Sender: TObject);
    procedure cxCheckBox3PropertiesEditValueChanged(Sender: TObject);
    procedure cxButtonEdit11PropertiesButtonClick(Sender: TObject;AButtonIndex: Integer);
    procedure cxButtonEdit8PropertiesButtonClick(Sender: TObject;AButtonIndex: Integer);
    procedure cxLookupComboBox2PropertiesValidate(Sender: TObject;var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
    procedure cxButtonEdit5PropertiesValidate(Sender: TObject;var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
    procedure cxLookupComboBox2PropertiesChange(Sender: TObject);
    procedure cxGrid1DBBandedTableView1CustomDrawCell(Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
    procedure cxGrid1DBBandedTableView1CustomDrawColumnHeader(Sender: TcxGridTableView; ACanvas: TcxCanvas;AViewInfo: TcxGridColumnHeaderViewInfo; var ADone: Boolean);
    procedure cxGrid1DBBandedTableView1FocusedItemChanged(Sender: TcxCustomGridTableView; APrevFocusedItem,AFocusedItem: TcxCustomGridTableItem);
    procedure cxGrid1DBBandedTableView1KeyPress(Sender: TObject; var Key: Char);
    procedure dxBarButton1Click(Sender: TObject);
    procedure dxBarButton2Click(Sender: TObject);
    procedure dxBarButton3Click(Sender: TObject);
    procedure dxBarButton4Click(Sender: TObject);
    procedure dxBarButton5Click(Sender: TObject);
    procedure dxBarButton6Click(Sender: TObject);
    procedure cxLookupComboBox3PropertiesEditValueChanged(Sender: TObject);
    procedure cxComboBox3PropertiesChange(Sender: TObject);
    procedure cxLookupComboBox6PropertiesValidate(Sender: TObject;var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
    procedure cxLookupComboBox6PropertiesChange(Sender: TObject);
    procedure cxButtonEdit14PropertiesButtonClick(Sender: TObject;AButtonIndex: Integer);
    procedure cxButtonEdit16PropertiesButtonClick(Sender: TObject;AButtonIndex: Integer);
    procedure cxButtonEdit15PropertiesButtonClick(Sender: TObject;AButtonIndex: Integer);
    procedure dxBarButton8Click(Sender: TObject);
    procedure dxBarButton7Click(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure cxCheckBox1PropertiesEditValueChanged(Sender: TObject);
    procedure cxLookupComboBox4PropertiesChange(Sender: TObject);
    procedure cxLookupComboBox4PropertiesValidate(Sender: TObject; var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
    procedure cxButton1Click(Sender: TObject);
    procedure cxLookupComboBox1PropertiesEditValueChanged(Sender: TObject);
    procedure cxGrid1DBBandedTableView1DataControllerFilterChanged(Sender: TObject);
  private

    Fbargain_id        : integer;     // Номер записи перевозки (-9 = Новая перевозка)
    Fdate_period       : TDateTime;   // Текущий период
    FkargoETSNG_add_id : integer;
    Fnode_begin_id     : integer;
    Fnode_end_id       : integer;
    Fstate_begin_id    : integer;
    Fstate_end_id      : integer;
    FkargoETSNG_id     : integer;
    FkargoGNG_id       : integer;
    Fsender_id         : integer;
    Freceiver_id       : integer;
//    Frod_vagon_id      : integer;
    Forders_agree_id   : integer;
    // Запущена как DLL
    Fset_run_dll : boolean;
    Fconnect     : TADOConnection;
    Fusr_pwd_lis : PUser_pwd;

    // Параметры необходимые для расчета № перевозки
    Fbargain_num_save : integer;
    Fcontract_id_save : integer;
    Fdate_period_save : TDateTime;
    Fbargain_cod_save : string;
    Fset_copy         : boolean;           // True - Перевозка скопированна и открыта на редактирование 1-ый раз

    procedure SetInsert(value: boolean);
    procedure SetUpdate(bargain_id: integer);

    function  GetDatePeriod(): variant;              // Получить дату перевозки
    procedure SetDatePeriod(date_period: variant);   // Установить дату перевозки
    function  GetDateService(): variant;             // Получить дату оказания услуги
    procedure SetDateService(date_service: variant); // Установить дату оказания услуги
    procedure SetDateFinance(date_finance: variant);
    function  GetDateFinance(): variant;

    property _GetDatePeriod : variant read  GetDatePeriod;  // Получить дату перевозки
    property _SetDatePeriod : variant write SetDatePeriod;  // Установить дату перевозки
    property _GetDateService: variant read  GetDateService; // Получить дату оказания услуги
    property _SetDateService: variant write SetDateService; // Установить дату оказания услуги
    property _SetDateFinance: variant write SetDateFinance;
    property _GetDateFinance: variant read  GetDateFinance;

    procedure ChangeNumBargain(check_change: boolean); // Изменить № перевозки
    function  CheckValidate(ACustomEdit: TcxCustomMaskEdit): boolean;
    function  FindInfObj(caption_name: string; table_name: string; set_cod: boolean; var id: integer; var cod: string; var name: string): boolean;
    function  FindNode(caption_name: string): variant;
    procedure SetKargoEmptyAdd(set_enable: boolean);

    procedure SetUpdateShapingRate(shaping_rate_id : integer);

    procedure ChangeAddContract();
    procedure ChangeAddKargoETSNG();
    procedure ChangeAddKargoETSNGAdd();
    procedure ChangeAddKargoGNG();
    procedure ChangeAddNodeBegin();
    procedure ChangeAddNodeEnd();
    procedure ChangeAddStateBegin();
    procedure ChangeAddStateEnd();
    procedure ChangeAddDatePeriod();
    procedure ChangeAddDateService();
    procedure ChangeFiveDaysZFTO();

    procedure CalcShapingRate(id: integer);
    procedure CalcSum();
    procedure SetInsertFromOrders(orders_agree_id: integer);
    procedure LockInputData(set_enable: boolean);
  public
    constructor Create(AOwner: TApplication);
    constructor CreateDLL(AOwner: TApplication; usr_pwd_lis: PUser_pwd);
  published
    property _SetInsert    : boolean write SetInsert;
    property _SetUpdate    : integer write SetUpdate;
    property _GetBargainId : integer read  Fbargain_id;
    property _SetUpdateShapingRate : integer write SetUpdateShapingRate;
    property _SetInsertFromOrders  : integer write SetInsertFromOrders;
  end;

var
  fmAgreeAdd2: TfmAgreeAdd2;

implementation
  uses main, Raznoe, Filter, ShapeRateAdd2, Contract, Firm, DateUtils ;
{$R *.dfm}



constructor TfmAgreeAdd2.CreateDLL(AOwner: TApplication; usr_pwd_lis: PUser_pwd);
begin
  Screen.Cursor := crHourglass;
  inherited Create(AOwner);

  Fset_run_dll  := True;
  Fusr_pwd_lis  := usr_pwd_lis;

  Fconnect := TADOConnection.Create(nil);
  Fconnect.ConnectionString := 'Persist Security Info=True;Provider=SQLOLEDB.1;User ID='+Fusr_pwd_lis^.user_name+';Password='+Fusr_pwd_lis^.user_pass+';Initial Catalog='+Fusr_pwd_lis^.catalog+';Data Source='+Fusr_pwd_lis^.server+';';
  Fconnect.KeepConnection   := False;
  Fconnect.LoginPrompt      := False;

  Query_FiveDaysZFTO.Connection := Fconnect;
  Query_FiveDaysZFTO.Open;
  Query_Currency.Connection := Fconnect;
  Query_Currency.Open;
  Query_TypeBargain.Connection := Fconnect;
  Query_TypeBargain.Open;
  Query_Custom.Connection := Fconnect;
  Query_Custom.Open;
  Query_RodVagon.Connection := Fconnect;
  Query_RodVagon.Open;

  ClientDS_ShapingRate.CreateDataSet;
  ClientDS_ShapingRate.LogChanges := False;

  cxPageControl1.ActivePageIndex := 0;

  StoreRegistryGrid(rgLoad, '\Software\Lis1\AgreeAdd_Grids', cxGrid1DBBandedTableView1);

  Screen.Cursor := crDefault;
end;

constructor TfmAgreeAdd2.Create(AOwner: TApplication);
var i : integer;
begin
  Screen.Cursor := crHourglass;
  inherited Create(AOwner);

  Fset_run_dll  := False;

  Query_FiveDaysZFTO.Open;
  Query_Currency.Open;
  Query_TypeBargain.Open;
  Query_Custom.Open;
  Query_RodVagon.Open;

  Fconnect := fmMain.Lis;

  //------------------------------------
  if LisCheck(Fconnect.ConnectionString) then begin
    for i:=2001 to YearOf(Date) + 1 do begin
      cxComboBox2.Properties.Items.Insert(0, IntToStr(i));
      cxComboBox4.Properties.Items.Insert(0, IntToStr(i));
      cxComboBox6.Properties.Items.Insert(0, IntToStr(i));
    end;
  end;
  // -------------------------------------

  ClientDS_ShapingRate.CreateDataSet;
  ClientDS_ShapingRate.LogChanges := False;

  cxPageControl1.ActivePageIndex := 0;

  StoreRegistryGrid(rgLoad, '\Software\Lis1\AgreeAdd_Grids', cxGrid1DBBandedTableView1);

  Screen.Cursor := crDefault;
end;

procedure TfmAgreeAdd2.SetInsert(value: boolean);

begin
  Screen.Cursor := crHourglass;
  // Установить параметры по умолчанию
  //   Дата, Пятидневка, № перевозки
  _SetDatePeriod  := Date;
  _SetDateService := Date;

  Fbargain_id    := -9;
  Fdate_period   := _GetDatePeriod;
  Fset_copy      := False;
  Fbargain_num_save := -9;
  Fcontract_id_save := -9;
  Fdate_period_save := _GetDatePeriod;
  Fbargain_cod_save := '';
  FkargoETSNG_add_id:= -9;
  Fnode_begin_id    := -9;
  Fnode_end_id      := -9;
  Fstate_begin_id   := -9;
  Fstate_end_id     := -9;
  FkargoETSNG_id    := -9;
  FkargoGNG_id      := -9;
  Fsender_id        := -9;
  Freceiver_id      := -9;
//  Frod_vagon_id     := -9;
  Forders_agree_id  := -9;

  Query_Client.Close;
  Query_Client.Parameters.ParamByName('date_current').Value := _GetDatePeriod;
  Query_Client.Parameters.ParamByName('type_contract').Value := 0; // Только Клиенты
  Query_Client.Open;

  //
  ClientDS_ShapingRate.Append();
  ClientDS_ShapingRate.FieldByName('ed_izm_id'                    ).Value := 158712;
  ClientDS_ShapingRate.FieldByName('ed_izm_cod'                   ).Value := '000';
  ClientDS_ShapingRate.FieldByName('ed_izm_name'                  ).Value := 'тонна';
  ClientDS_ShapingRate.FieldByName('currency_id'                  ).Value := 3;
  ClientDS_ShapingRate.FieldByName('brief_name'                   ).Value := 'RUB';
  ClientDS_ShapingRate.FieldByName('shaping_rate_round_weight'    ).Value := 0;
  ClientDS_ShapingRate.FieldByName('shaping_check_kargo_capacity' ).Value := False;
  ClientDS_ShapingRate.FieldByName('shaping_rate_round_sum'       ).Value := False;
  ClientDS_ShapingRate.FieldByName('set_return'                   ).Value := False;
  ClientDS_ShapingRate.FieldByName('return_id'                    ).Value := False;
  ClientDS_ShapingRate.FieldByName('set_self_rate'                ).Value := True;
  ClientDS_ShapingRate.FieldByName('shaping_rate_nds_id'          ).Value := 523380;
  ClientDS_ShapingRate.FieldByName('shaping_rate_nds_name'        ).Value := 'Без НДС';
  ClientDS_ShapingRate.FieldByName('type_calc_sum'                ).Value := 0;
  ClientDS_ShapingRate.FieldByName('set_include_nds'              ).Value := True;
  ClientDS_ShapingRate.FieldByName('service_type'                 ).Value := 0;
  ClientDS_ShapingRate.FieldByName('service_type_name'            ).Value := 'Доход';
  ClientDS_ShapingRate.FieldByName('shaping_rate_type_id'         ).Value := 1;
  ClientDS_ShapingRate.FieldByName('shaping_rate_type_name'       ).Value := 'за вагон/контейнер';
  ClientDS_ShapingRate.FieldByName('set_transport_pay'            ).Value := False;
  ClientDS_ShapingRate.FieldByName('vid_send'                     ).Value := 0;
  ClientDS_ShapingRate.FieldByName('shaping_rate_val'             ).Value := 0;
  ClientDS_ShapingRate.FieldByName('shaping_rate_count'           ).Value := 0;
  ClientDS_ShapingRate.FieldByName('shaping_rate_sum'             ).Value := 0;
  ClientDS_ShapingRate.FieldByName('shaping_rate_NDS_sum'         ).Value := 0;
  ClientDS_ShapingRate.FieldByName('shaping_rate_notNDS_sum'      ).Value := 0;
  ClientDS_ShapingRate.Post();

  CalcShapingRate(ClientDS_ShapingRate.FieldByName('id').AsInteger);
  CalcSum;

  Screen.Cursor := crDefault;
end;

procedure TfmAgreeAdd2.SetInsertFromOrders(orders_agree_id: integer);
var                      Q : TADOQuery;
       SP_orders_agree_GET : TADOStoredProc;
  SP_orders_agree_rail_GET : TADOStoredProc;
begin
  Screen.Cursor := crHourGlass;
  //LockInputData(False); //закрытие всех полей для ввода
  //BitBtn1.Enabled := False; //закрываем кнопку что бы нельзя было сохранить перевозку

  Fbargain_id      := -9;
  Forders_agree_id := orders_agree_id;

  SP_orders_agree_GET := TADOStoredProc.Create(nil);
  SP_orders_agree_GET.Connection := Fconnect;
  SP_orders_agree_GET.ProcedureName := 'sp_orders_agree_GET';
  SP_orders_agree_GET.Parameters.Refresh;
  SP_orders_agree_GET.Parameters.ParamByName('@orders_agree_id').Value := Forders_agree_id;
  SP_orders_agree_GET.Open;

  // Договор
  //cxLookupComboBox1.EditValue := SP_get.FieldByName('contract_id').Value;
//  Query_Client.Close;
//  Query_Client.Parameters.ParamByName('date_current').Value := Now;
//  Query_Client.Open;
//  Query_Client.Locate('contract_id', SP_get.FieldByName('contract_id').AsInteger,[]);
  //  Тип перевозки
  //cxLookupComboBox2.EditValue := SP_get.FieldByName('type_bargain_id').Value;
  //  Месяц перевозки
  cxComboBox1.ItemIndex := StrToInt(FormatDateTime('m', SP_orders_agree_GET.FieldByName('date_period').AsDateTime)) - 1;
  cxComboBox2.ItemIndex := cxComboBox2.Properties.Items.IndexOf(FormatDateTime('yyyy', SP_orders_agree_GET.FieldByName('date_period').AsDateTime));

  cxComboBox3.ItemIndex := StrToInt(FormatDateTime('m', SP_orders_agree_GET.FieldByName('date_period').AsDateTime)) - 1;
  cxComboBox4.ItemIndex := cxComboBox4.Properties.Items.IndexOf(FormatDateTime('yyyy', SP_orders_agree_GET.FieldByName('date_period').AsDateTime));

  FkargoGNG_id      := iif(SP_orders_agree_GET.FieldByName('kargoGNG_id').IsNull,       -9, SP_orders_agree_GET.FieldByName('kargoGNG_id').AsInteger);
  FkargoETSNG_id    := iif(SP_orders_agree_GET.FieldByName('kargoETSNG_id').IsNull,     -9, SP_orders_agree_GET.FieldByName('kargoETSNG_id').AsInteger);
  FkargoETSNG_add_id:= iif(SP_orders_agree_GET.FieldByName('kargoETSNG_add_id').IsNull, -9, SP_orders_agree_GET.FieldByName('kargoETSNG_add_id').AsInteger);
  Fstate_begin_id   := iif(SP_orders_agree_GET.FieldByName('state_begin_id').IsNull,    -9, SP_orders_agree_GET.FieldByName('state_begin_id').AsInteger);
  Fstate_end_id     := iif(SP_orders_agree_GET.FieldByName('state_end_id').IsNull,      -9, SP_orders_agree_GET.FieldByName('state_end_id').AsInteger);
  Fnode_begin_id    := iif(SP_orders_agree_GET.FieldByName('node_begin_id').IsNull,     -9, SP_orders_agree_GET.FieldByName('node_begin_id').AsInteger);
  Fnode_end_id      := iif(SP_orders_agree_GET.FieldByName('node_end_id').IsNull,       -9, SP_orders_agree_GET.FieldByName('node_end_id').AsInteger);
  Fsender_id        := iif(SP_orders_agree_GET.FieldByName('node_end_id').IsNull,       -9, SP_orders_agree_GET.FieldByName('firm_sender_id').AsInteger);
  Freceiver_id      := iif(SP_orders_agree_GET.FieldByName('node_end_id').IsNull,       -9, SP_orders_agree_GET.FieldByName('firm_reciever_id').AsInteger);

  cxButtonEdit1.EditValue  := SP_orders_agree_GET.FieldByName('state_begin_name').Value;
  cxButtonEdit4.EditValue  := SP_orders_agree_GET.FieldByName('state_end_name').Value;
  cxButtonEdit2.EditValue  := SP_orders_agree_GET.FieldByName('node_begin_name').Value;
  cxTextEdit9.EditValue    := SP_orders_agree_GET.FieldByName('node_begin_cod').Value;
  cxButtonEdit3.EditValue  := SP_orders_agree_GET.FieldByName('node_end_name').Value;
  cxTextEdit10.EditValue   := SP_orders_agree_GET.FieldByName('node_end_cod').Value;
  cxButtonEdit5.EditValue  := SP_orders_agree_GET.FieldByName('kargoETSNG_name').Value;
  cxButtonEdit6.EditValue  := SP_orders_agree_GET.FieldByName('kargoETSNG_cod').Value;
  cxTextEdit14.EditValue   := SP_orders_agree_GET.FieldByName('kargoETSNG_group_name').Value;
  cxButtonEdit11.EditValue := SP_orders_agree_GET.FieldByName('kargoETSNG_add_name').Value;
  cxButtonEdit12.EditValue := SP_orders_agree_GET.FieldByName('kargoETSNG_add_cod').Value;
  cxTextEdit16.EditValue   := SP_orders_agree_GET.FieldByName('kargoETSNG_add_group_name').Value;
  cxButtonEdit15.EditValue := SP_orders_agree_GET.FieldByName('firm_sender_name').Value;
  cxButtonEdit16.EditValue := SP_orders_agree_GET.FieldByName('firm_reciever_name').Value;

  cxCheckBox4.Checked      := iif(SP_orders_agree_GET.FieldByName('kargoGNG_id').IsNull, False, True);
  cxButtonEdit8.EditValue  := SP_orders_agree_GET.FieldByName('kargoGNG_name').Value;
  cxButtonEdit7.EditValue  := SP_orders_agree_GET.FieldByName('kargoGNG_cod').Value;

  cxLookupComboBox3.EditValue := SP_orders_agree_GET.FieldByName('currency_id').Value;

  cxLookupComboBox1.EditValue := SP_orders_agree_GET.FieldByName('contract_id').Value;
  cxLookupComboBox1.Text      := SP_orders_agree_GET.FieldByName('firm_customer_name').AsString;

  cxCurrencyEdit3.EditValue  := SP_orders_agree_GET.FieldByName('count_weight').Value;
  cxCurrencyEdit15.EditValue := SP_orders_agree_GET.FieldByName('count_vagon').Value;
  cxCurrencyEdit16.EditValue := SP_orders_agree_GET.FieldByName('count_day_vagon').Value;

  cxCurrencyEdit1.EditValue := SP_orders_agree_GET.FieldByName('orders_client_sum').Value;
  cxCurrencyEdit4.EditValue := SP_orders_agree_GET.FieldByName('orders_agent_sum').Value;
  cxCurrencyEdit2.EditValue := SP_orders_agree_GET.FieldByName('orders_comiss_sum').Value;

  cxMemo1.Lines.Text := SP_orders_agree_GET.FieldByName('comment').AsString;

  Q := TADOQuery.Create(nil);
  Q.Connection := Fconnect;
  Q.SQL.Text := 'SELECT c.type_plan_client_id, c.type_plan_client_name, c.rod_vagon_id, c.rod_vagon_name, c.rate_nds_id, c.rate_nds_name ' +
      //'orders_agree_id, o.plan_client_rate_id,a.rod_vagon_id, a.rod_vagon_name, a.rate_nds_id, a.rate_nds_name ' +
  'FROM view_orders_agree_rail o ' +
  'LEFT JOIN view_plan_client_rate_rights c ON c.plan_client_rate_id = o.plan_client_rate_id ' +
  //'LEFT JOIN view_plan_agent_rate a ON a.plan_agent_rate_id = o.plan_client_rate_id ' +
  'WHERE service_type = 0 AND orders_agree_id = ' + IntToStr(Forders_agree_id);
   Q.Open;
  //заполняем тип перевозки и род вагона
  //Для вставки "тип перевозки", "род вагона" недостаточно оформить заявку в которой все заполнить необходимо обязательно
  //добавить "ставку по клиенту", а в ней заполнить закладку "Ставки подрядчиков" тогда гаранторована 100% заполняемость перевозки
  cxLookupComboBox2.EditValue := Q.FieldByName('type_plan_client_id').Value;//тип перевозки
  cxLookupComboBox4.EditValue := Q.FieldByName('rod_vagon_id').Value;//род вагона

  //  Добавить подрядчиков...
  SP_orders_agree_rail_GET := TADOStoredProc.Create(nil);
  SP_orders_agree_rail_GET.Connection := Fconnect;
  SP_orders_agree_rail_GET.ProcedureName := 'sp_orders_agree_rail_GET';
  SP_orders_agree_rail_GET.Parameters.Refresh;
  SP_orders_agree_rail_GET.Parameters.ParamByName('@orders_agree_id').Value := Forders_agree_id;
  SP_orders_agree_rail_GET.Open;
  while not SP_orders_agree_rail_GET.Eof do begin

      ClientDS_ShapingRate.Append;
//******************************************************************************************************************************

      ClientDS_ShapingRate.FieldByName('shaping_rate_nds_id'   ).Value := Q.FieldByName('rate_nds_id').Value;
      ClientDS_ShapingRate.FieldByName('shaping_rate_nds_name' ).Value := Q.FieldByName('rate_nds_name').Value;

      ClientDS_ShapingRate.FieldByName('contract_agent_id'     ).Value := SP_orders_agree_rail_GET.FieldByName('contract_id').Value;
      ClientDS_ShapingRate.FieldByName('contract_cod'          ).Value := SP_orders_agree_rail_GET.FieldByName('contract_cod').Value;
      ClientDS_ShapingRate.FieldByName('contract_date_begin'   ).Value := SP_orders_agree_rail_GET.FieldByName('date_begin').Value;
      ClientDS_ShapingRate.FieldByName('firm_self_name'        ).Value := SP_orders_agree_rail_GET.FieldByName('firm_self_name').Value;
      ClientDS_ShapingRate.FieldByName('firm_customer_name'    ).Value := SP_orders_agree_rail_GET.FieldByName('firm_customer_name').Value;

      ClientDS_ShapingRate.FieldByName('ed_izm_id'             ).Value := SP_orders_agree_rail_GET.FieldByName('ed_izm_id').Value;
      ClientDS_ShapingRate.FieldByName('ed_izm_cod'            ).Value := SP_orders_agree_rail_GET.FieldByName('ed_izm_cod').Value;
      ClientDS_ShapingRate.FieldByName('ed_izm_name'           ).Value := SP_orders_agree_rail_GET.FieldByName('ed_izm_name').Value;
      ClientDS_ShapingRate.FieldByName('currency_id'           ).Value := SP_orders_agree_rail_GET.FieldByName('currency_id').Value;
      ClientDS_ShapingRate.FieldByName('brief_name'            ).Value := SP_orders_agree_rail_GET.FieldByName('brief_name').Value;

      ClientDS_ShapingRate.FieldByName('node_begin_id'         ).Value := SP_orders_agree_rail_GET.FieldByName('node_begin_id').Value;
      ClientDS_ShapingRate.FieldByName('node_begin_cod'        ).Value := SP_orders_agree_rail_GET.FieldByName('node_begin_cod').Value;
      ClientDS_ShapingRate.FieldByName('node_begin_name'       ).Value := SP_orders_agree_rail_GET.FieldByName('node_begin_name').Value;
      ClientDS_ShapingRate.FieldByName('node_end_id'           ).Value := SP_orders_agree_rail_GET.FieldByName('node_end_id').Value;
      ClientDS_ShapingRate.FieldByName('node_end_cod'          ).Value := SP_orders_agree_rail_GET.FieldByName('node_end_cod').Value;
      ClientDS_ShapingRate.FieldByName('node_end_name'         ).Value := SP_orders_agree_rail_GET.FieldByName('node_end_name').Value;
      ClientDS_ShapingRate.FieldByName('state_begin_id'        ).Value := SP_orders_agree_rail_GET.FieldByName('state_begin_id').Value;
      ClientDS_ShapingRate.FieldByName('state_begin_name'      ).Value := SP_orders_agree_rail_GET.FieldByName('state_begin_name').Value;
      ClientDS_ShapingRate.FieldByName('state_end_id'          ).Value := SP_orders_agree_rail_GET.FieldByName('state_end_id').Value;
      ClientDS_ShapingRate.FieldByName('state_end_name'        ).Value := SP_orders_agree_rail_GET.FieldByName('state_end_name').Value;
      ClientDS_ShapingRate.FieldByName('shaping_rate_round_weight').Value := 0;
      ClientDS_ShapingRate.FieldByName('kargoETSNG_id'         ).Value := SP_orders_agree_rail_GET.FieldByName('kargoETSNG_id').Value;
      ClientDS_ShapingRate.FieldByName('kargoETSNG_cod'        ).Value := SP_orders_agree_rail_GET.FieldByName('kargoETSNG_cod').Value;
      ClientDS_ShapingRate.FieldByName('kargoETSNG_name'       ).Value := SP_orders_agree_rail_GET.FieldByName('kargoETSNG_name').Value;
      ClientDS_ShapingRate.FieldByName('kargoETSNG_group_name' ).Value := SP_orders_agree_rail_GET.FieldByName('group_name').Value;
      ClientDS_ShapingRate.FieldByName('kargoGNG_id'           ).Value := SP_orders_agree_rail_GET.FieldByName('kargoGNG_id').Value;
      ClientDS_ShapingRate.FieldByName('kargoGNG_cod'          ).Value := SP_orders_agree_rail_GET.FieldByName('kargoGNG_cod').Value;
      ClientDS_ShapingRate.FieldByName('kargoGNG_name'         ).Value := SP_orders_agree_rail_GET.FieldByName('kargoGNG_name').Value;
      ClientDS_ShapingRate.FieldByName('kargoETSNG_add_id'     ).Value := SP_orders_agree_rail_GET.FieldByName('kargoETSNG_add_id').Value;
      ClientDS_ShapingRate.FieldByName('kargoETSNG_add_cod'    ).Value := SP_orders_agree_rail_GET.FieldByName('kargoETSNG_add_cod').Value;
      ClientDS_ShapingRate.FieldByName('kargoETSNG_add_name'   ).Value := SP_orders_agree_rail_GET.FieldByName('kargoETSNG_add_name').Value;
      ClientDS_ShapingRate.FieldByName('set_return'            ).Value := False;
      ClientDS_ShapingRate.FieldByName('set_self_rate'         ).Value := False;
      ClientDS_ShapingRate.FieldByName('budget_id'             ).Value := SP_orders_agree_rail_GET.FieldByName('budget_id').Value;
      ClientDS_ShapingRate.FieldByName('budget_cod'            ).Value := SP_orders_agree_rail_GET.FieldByName('budget_cod').Value;
      ClientDS_ShapingRate.FieldByName('budget_name'           ).Value := SP_orders_agree_rail_GET.FieldByName('budget_name').Value;
      ClientDS_ShapingRate.FieldByName('set_include_nds'       ).Value := False;
      ClientDS_ShapingRate.FieldByName('date_period'           ).Value := SP_orders_agree_rail_GET.FieldByName('date_period').Value;
      ClientDS_ShapingRate.FieldByName('date_period_service'   ).Value := SP_orders_agree_rail_GET.FieldByName('date_period').Value;
      ClientDS_ShapingRate.FieldByName('date_period_finance'   ).Value := SP_orders_agree_rail_GET.FieldByName('date_period').Value;
      ClientDS_ShapingRate.FieldByName('service_type'          ).Value := SP_orders_agree_rail_GET.FieldByName('service_type').Value;
      ClientDS_ShapingRate.FieldByName('service_type_name'     ).Value := SP_orders_agree_rail_GET.FieldByName('service_type_name').Value;
      ClientDS_ShapingRate.FieldByName('shaping_rate_val'      ).Value := SP_orders_agree_rail_GET.FieldByName('add_rate').Value;
      ClientDS_ShapingRate.FieldByName('shaping_rate_count'    ).Value := SP_orders_agree_rail_GET.FieldByName('add_count').Value;
      ClientDS_ShapingRate.FieldByName('shaping_rate_notNDS_sum').Value := SP_orders_agree_rail_GET.FieldByName('add_sum').Value;
      ClientDS_ShapingRate.FieldByName('vid_send'              ).Value := 0;
      ClientDS_ShapingRate.FieldByName('agreement_note'        ).Value := SP_orders_agree_rail_GET.FieldByName('comment').Value;
      ClientDS_ShapingRate.FieldByName('shaping_rate_sum_RUB'  ).Value := SP_orders_agree_rail_GET.FieldByName('add_sum').Value;
      ClientDS_ShapingRate.Post;
    SP_orders_agree_rail_GET.Next;
  end;

  Q.Free;
  SP_orders_agree_GET.Free;
  SP_orders_agree_rail_GET.Free;

  Screen.Cursor := crDefault;
end;

procedure TfmAgreeAdd2.SetUpdateShapingRate(shaping_rate_id: integer);
var Q: TADOQuery;
begin

  Q := TADOQuery.Create(nil);
  Q.Connection := Fconnect;
  Q.SQL.Add('SELECT * FROM view_shaping_rate WHERE shaping_rate_id = ' + IntToStr(shaping_rate_id));
  Q.Open;

  _SetUpdate := Q.FieldByName('bargain_id').AsInteger;

  Q.Free;

  if ClientDS_ShapingRate.Locate('shaping_rate_id', shaping_rate_id, []) then begin
    ChangeAddDatePeriod;
    ChangeAddDateService;

    fmShapeRateAdd2 := TfmShapeRateAdd2.Create(Application, cxGrid1DBBandedTableView1service_type.DataBinding.Field.AsInteger);
    fmShapeRateAdd2._SetClientAdd   := ClientDS_ShapingRate;
    fmShapeRateAdd2._SetUpdate      := cxGrid1DBBandedTableView1id.DataBinding.Field.AsInteger;
    if _GetDateFinance <> null then
      fmShapeRateAdd2._SetDateFinance := _GetDateFinance;

    if fmShapeRateAdd2.ShowModal = mrOk then begin
      CalcShapingRate(fmShapeRateAdd2._GetAddId);
      CalcSum;
    end else exit;
  end;
end;

procedure TfmAgreeAdd2.SetUpdate(bargain_id: integer);
var Q: TADOQuery;
    sp_shaping_rate_get : TADOStoredProc;
begin
  Screen.Cursor := crHourglass;
  Fbargain_id   := bargain_id;

  Caption := 'Параметры перевозки [' + IntToStr(Fbargain_id) + ']';

  Q := TADOQuery.Create(nil);
  Q.Connection := Fconnect;
  Q.SQL.Add('SELECT * FROM view_bargain WHERE bargain_id = ' + IntToStr(Fbargain_id));
  Q.Open;

  _SetDatePeriod  := Q.FieldByName('date_period').Value;
  _SetDateService := Q.FieldByName('date_period_service').Value;
  _SetDateFinance := Q.FieldByName('date_period_finance').Value;

  Query_Client.Connection := Fconnect;
  Query_Client.Close;
  Query_Client.Parameters.ParamByName('date_current').Value  := _GetDatePeriod;
  Query_Client.Parameters.ParamByName('type_contract').Value := 0; // Только Клиенты
  Query_Client.Open;

  Fset_copy := Q.FieldByName('global_copy').AsBoolean;
  cxLookupComboBox1.EditValue := Q.FieldByName('contract_id').Value;

  cxLookupComboBox2.EditValue := Q.FieldByName('vid_transfer').Value;
  cxCheckBox1.Checked         := iif(Q.FieldByName('five_days_zfto_id').IsNull, False, True);
  cxLookupComboBox6.EditValue := Q.FieldByName('five_days_zfto_id').Value;
  cxLookupComboBox3.EditValue := Q.FieldByName('currency_id').Value;

  Fstate_begin_id         := iif(Q.FieldByName('state_begin_id').IsNull, -9, Q.FieldByName('state_begin_id').Value);
  cxButtonEdit1.EditValue := iif(Q.FieldByName('state_begin_id').IsNull, null, Q.FieldByName('state_begin_name').Value);
  Fstate_end_id           := iif(Q.FieldByName('state_end_id').IsNull, -9, Q.FieldByName('state_end_id').Value);
  cxButtonEdit4.EditValue := iif(Q.FieldByName('state_end_id').IsNull, null, Q.FieldByName('state_end_name').Value);


  Fnode_begin_id          := iif(Q.FieldByName('node_begin_id').IsNull,   -9, Q.FieldByName('node_begin_id').Value);
  cxButtonEdit2.EditValue := iif(Q.FieldByName('node_begin_id').IsNull, null, Q.FieldByName('node_begin_name').Value);
  cxTextEdit9.EditValue   := iif(Q.FieldByName('node_begin_id').IsNull, null, Q.FieldByName('node_begin_cod').Value);

  Fnode_end_id            := iif(Q.FieldByName('node_end_id').IsNull,   -9, Q.FieldByName('node_end_id').Value);
  cxButtonEdit3.EditValue := iif(Q.FieldByName('node_end_id').IsNull, null, Q.FieldByName('node_end_name').Value);
  cxTextEdit10.EditValue  := iif(Q.FieldByName('node_end_id').IsNull, null, Q.FieldByName('node_end_cod').Value);


  FkargoETSNG_id          := iif(Q.FieldByName('kargoETSNG_id').IsNull,   -9, Q.FieldByName('kargoETSNG_id').Value);
  cxButtonEdit5.EditValue := iif(Q.FieldByName('kargoETSNG_id').IsNull, null, Q.FieldByName('kargoETSNG_name').Value);
  cxButtonEdit6.EditValue := iif(Q.FieldByName('kargoETSNG_id').IsNull, null, Q.FieldByName('kargoETSNG_cod').Value);
  cxTextEdit14.EditValue  := iif(Q.FieldByName('kargoETSNG_id').IsNull, null, Q.FieldByName('kargoETSNG_group_name').Value);

  if Q.FieldByName('kargoETSNG_group_cod').AsString = '9' then begin
    SetKargoEmptyAdd(True);
    FkargoETSNG_add_id      := iif(Q.FieldByName('kargoETSNG_add_id').IsNull,   -9, Q.FieldByName('kargoETSNG_add_id').Value);
    cxButtonEdit11.EditValue:= iif(Q.FieldByName('kargoETSNG_add_id').IsNull, null, Q.FieldByName('kargoETSNG_add_name').Value);
    cxButtonEdit12.EditValue:= iif(Q.FieldByName('kargoETSNG_add_id').IsNull, null, Q.FieldByName('kargoETSNG_add_cod').Value);
    cxTextEdit16.EditValue  := iif(Q.FieldByName('kargoETSNG_add_id').IsNull, null, Q.FieldByName('kargoETSNG_add_group_name').Value);
  end else begin
    SetKargoEmptyAdd(False);
    FkargoETSNG_add_id      := -9;
    cxButtonEdit11.EditValue := null;
    cxButtonEdit12.EditValue := null;
    cxTextEdit16.EditValue  := null;
  end;

  cxCheckBox4.Checked         := iif(Q.FieldByName('kargoGNG_id').IsNull,False, True);
  FkargoGNG_id                := iif(Q.FieldByName('kargoGNG_id').IsNull,   -9, Q.FieldByName('kargoGNG_id').Value);
  cxButtonEdit8.EditValue     := iif(Q.FieldByName('kargoGNG_id').IsNull, null, Q.FieldByName('kargoGNG_name').Value);
  cxButtonEdit7.EditValue     := iif(Q.FieldByName('kargoGNG_id').IsNull, null, Q.FieldByName('kargoGNG_cod').Value);

  Fsender_id                  := iif(Q.FieldByName('sender_id').IsNull,   -9, Q.FieldByName('sender_id').Value);
  cxButtonEdit15.EditValue    := iif(Q.FieldByName('sender_id').IsNull, null, Q.FieldByName('sender_name').Value);

  Freceiver_id                := iif(Q.FieldByName('receiver_id').IsNull,   -9, Q.FieldByName('receiver_id').Value);
  cxButtonEdit16.EditValue    := iif(Q.FieldByName('receiver_id').IsNull, null, Q.FieldByName('receiver_name').Value);

//  Frod_vagon_id               := iif(Q.FieldByName('rod_vagon_id').IsNull,   -9, Q.FieldByName('rod_vagon_id').Value);
  cxLookupComboBox4.EditValue := Q.FieldByName('rod_vagon_id').Value;

  cxRadioGroup1.ItemIndex     := Q.FieldByName('our_rate_vid_send').AsInteger;

  cxCheckBox3.Checked         := iif(Q.FieldByName('custom_id').IsNull,False, True);
  cxLookupComboBox5.EditValue := iif(Q.FieldByName('custom_id').IsNull, null, Q.FieldByName('custom_id').Value);

  if not Q.FieldByName('set_bargain_weight').IsNull then begin
    SpeedButton1.Down := Q.FieldByName('set_bargain_weight').AsBoolean;
    SpeedButton2.Down := not Q.FieldByName('set_bargain_weight').AsBoolean;
  end;

  cxMemo1.EditValue := Q.FieldByName('bargain_note').Value;

  if Fset_copy then
    ChangeNumBargain(True)
  else
    cxTextEdit13.Text := Q.FieldByName('bargain_cod').AsString;


  sp_shaping_rate_get := TADOStoredProc.Create(nil);
  sp_shaping_rate_get.Connection := Fconnect;
  sp_shaping_rate_get.ProcedureName := 'sp_shaping_rate_get';
  sp_shaping_rate_get.Parameters.Refresh;
  sp_shaping_rate_get.Parameters.ParamByName('@bargain_id').Value := Fbargain_id;
  sp_shaping_rate_get.Open;


  while not sp_shaping_rate_get.Eof do begin
    ClientDS_ShapingRate.Append;
    ClientDS_ShapingRate.FieldByName('shaping_rate_id'              ).Value := sp_shaping_rate_get.FieldByName('shaping_rate_id').Value;
    ClientDS_ShapingRate.FieldByName('contract_agent_id'            ).Value := sp_shaping_rate_get.FieldByName('contract_agent_id').Value;
    ClientDS_ShapingRate.FieldByName('firm_self_name'               ).Value := sp_shaping_rate_get.FieldByName('firm_self_name').Value;
    ClientDS_ShapingRate.FieldByName('firm_customer_name'           ).Value := sp_shaping_rate_get.FieldByName('firm_customer_name').Value;
    ClientDS_ShapingRate.FieldByName('contract_cod'                 ).Value := sp_shaping_rate_get.FieldByName('contract_cod').Value;
    ClientDS_ShapingRate.FieldByName('contract_date_begin'          ).Value := sp_shaping_rate_get.FieldByName('contract_date_begin').Value;
    ClientDS_ShapingRate.FieldByName('ed_izm_id'                    ).Value := sp_shaping_rate_get.FieldByName('ed_izm_id').Value;
    ClientDS_ShapingRate.FieldByName('ed_izm_cod'                   ).Value := sp_shaping_rate_get.FieldByName('ed_izm_cod').Value;
    ClientDS_ShapingRate.FieldByName('ed_izm_name'                  ).Value := sp_shaping_rate_get.FieldByName('ed_izm_name').Value;
    ClientDS_ShapingRate.FieldByName('currency_id'                  ).Value := sp_shaping_rate_get.FieldByName('currency_id').Value;
    ClientDS_ShapingRate.FieldByName('brief_name'                   ).Value := sp_shaping_rate_get.FieldByName('brief_name').Value;
    ClientDS_ShapingRate.FieldByName('shaping_rate_val'             ).Value := sp_shaping_rate_get.FieldByName('shaping_rate_val').Value;
    ClientDS_ShapingRate.FieldByName('node_begin_id'                ).Value := sp_shaping_rate_get.FieldByName('node_begin_id').Value;
    ClientDS_ShapingRate.FieldByName('node_begin_cod'               ).Value := sp_shaping_rate_get.FieldByName('node_begin_cod').Value;
    ClientDS_ShapingRate.FieldByName('node_begin_name'              ).Value := sp_shaping_rate_get.FieldByName('node_begin_name').Value;
    ClientDS_ShapingRate.FieldByName('node_end_id'                  ).Value := sp_shaping_rate_get.FieldByName('node_end_id').Value;
    ClientDS_ShapingRate.FieldByName('node_end_cod'                 ).Value := sp_shaping_rate_get.FieldByName('node_end_cod').Value;
    ClientDS_ShapingRate.FieldByName('node_end_name'                ).Value := sp_shaping_rate_get.FieldByName('node_end_name').Value;
    ClientDS_ShapingRate.FieldByName('state_begin_id'               ).Value := sp_shaping_rate_get.FieldByName('state_begin_id').Value;
    ClientDS_ShapingRate.FieldByName('state_begin_name'             ).Value := sp_shaping_rate_get.FieldByName('state_begin_name').Value;
    ClientDS_ShapingRate.FieldByName('state_end_id'                 ).Value := sp_shaping_rate_get.FieldByName('state_end_id').Value;
    ClientDS_ShapingRate.FieldByName('state_end_name'               ).Value := sp_shaping_rate_get.FieldByName('state_end_name').Value;
    ClientDS_ShapingRate.FieldByName('node_border_in'               ).Value := sp_shaping_rate_get.FieldByName('node_border_in').Value;
    ClientDS_ShapingRate.FieldByName('node_border_in_cod'           ).Value := sp_shaping_rate_get.FieldByName('node_border_in_cod').Value;
    ClientDS_ShapingRate.FieldByName('node_border_out'              ).Value := sp_shaping_rate_get.FieldByName('node_border_out').Value;
    ClientDS_ShapingRate.FieldByName('node_border_in_name'          ).Value := sp_shaping_rate_get.FieldByName('node_border_in_name').Value;
    ClientDS_ShapingRate.FieldByName('node_border_out_cod'          ).Value := sp_shaping_rate_get.FieldByName('node_border_out_cod').Value;
    ClientDS_ShapingRate.FieldByName('node_border_out_name'         ).Value := sp_shaping_rate_get.FieldByName('node_border_out_name').Value;
    ClientDS_ShapingRate.FieldByName('road_begin_id'                ).Value := sp_shaping_rate_get.FieldByName('road_begin_id').Value;
    ClientDS_ShapingRate.FieldByName('road_begin_name'              ).Value := sp_shaping_rate_get.FieldByName('road_begin_name').Value;
    ClientDS_ShapingRate.FieldByName('road_end_id'                  ).Value := sp_shaping_rate_get.FieldByName('road_end_id').Value;
    ClientDS_ShapingRate.FieldByName('road_end_name'                ).Value := sp_shaping_rate_get.FieldByName('road_end_name').Value;
    ClientDS_ShapingRate.FieldByName('shaping_rate_round_weight'    ).Value := sp_shaping_rate_get.FieldByName('shaping_rate_round_weight').Value;
    ClientDS_ShapingRate.FieldByName('shaping_check_kargo_capacity' ).Value := sp_shaping_rate_get.FieldByName('shaping_check_kargo_capacity').Value;
    ClientDS_ShapingRate.FieldByName('shaping_kargo_min_norm'       ).Value := sp_shaping_rate_get.FieldByName('shaping_kargo_min_norm').Value;
    ClientDS_ShapingRate.FieldByName('shaping_rate_round_sum'       ).Value := sp_shaping_rate_get.FieldByName('shaping_rate_round_sum').Value;
    ClientDS_ShapingRate.FieldByName('kargoETSNG_id'                ).Value := sp_shaping_rate_get.FieldByName('kargoETSNG_id').Value;
    ClientDS_ShapingRate.FieldByName('kargoETSNG_cod'               ).Value := sp_shaping_rate_get.FieldByName('kargoETSNG_cod').Value;
    ClientDS_ShapingRate.FieldByName('kargoETSNG_name'              ).Value := sp_shaping_rate_get.FieldByName('kargoETSNG_name').Value;
    ClientDS_ShapingRate.FieldByName('kargoETSNG_group_name'        ).Value := sp_shaping_rate_get.FieldByName('kargoETSNG_group_name').Value;
    ClientDS_ShapingRate.FieldByName('kargoGNG_id'                  ).Value := sp_shaping_rate_get.FieldByName('kargoGNG_id').Value;
    ClientDS_ShapingRate.FieldByName('kargoGNG_cod'                 ).Value := sp_shaping_rate_get.FieldByName('kargoGNG_cod').Value;
    ClientDS_ShapingRate.FieldByName('kargoGNG_name'                ).Value := sp_shaping_rate_get.FieldByName('kargoGNG_name').Value;
    ClientDS_ShapingRate.FieldByName('kargoETSNG_add_id'            ).Value := sp_shaping_rate_get.FieldByName('kargoETSNG_add_id').Value;
    ClientDS_ShapingRate.FieldByName('kargoETSNG_add_cod'           ).Value := sp_shaping_rate_get.FieldByName('kargoETSNG_add_cod').Value;
    ClientDS_ShapingRate.FieldByName('kargoETSNG_add_name'          ).Value := sp_shaping_rate_get.FieldByName('kargoETSNG_add_name').Value;
    ClientDS_ShapingRate.FieldByName('agreement_id'                 ).Value := sp_shaping_rate_get.FieldByName('agreement_id').Value;
    ClientDS_ShapingRate.FieldByName('agreement_name'               ).Value := sp_shaping_rate_get.FieldByName('agreement_name').Value;
    ClientDS_ShapingRate.FieldByName('agreement_note'               ).Value := sp_shaping_rate_get.FieldByName('agreement_note').Value;
    ClientDS_ShapingRate.FieldByName('set_return'                   ).Value := sp_shaping_rate_get.FieldByName('set_return').Value;
    ClientDS_ShapingRate.FieldByName('return_id'                    ).Value := sp_shaping_rate_get.FieldByName('return_id').Value;
    ClientDS_ShapingRate.FieldByName('return_name'                  ).Value := sp_shaping_rate_get.FieldByName('return_name').Value;
    ClientDS_ShapingRate.FieldByName('exchange_USD_val'             ).Value := sp_shaping_rate_get.FieldByName('exchange_USD_val').Value;
    ClientDS_ShapingRate.FieldByName('exchange_EUR_val'             ).Value := sp_shaping_rate_get.FieldByName('exchange_EUR_val').Value;
    ClientDS_ShapingRate.FieldByName('exchange_CHF_val'             ).Value := sp_shaping_rate_get.FieldByName('exchange_CHF_val').Value;
    ClientDS_ShapingRate.FieldByName('set_self_rate'                ).Value := sp_shaping_rate_get.FieldByName('set_self_rate').Value;
    ClientDS_ShapingRate.FieldByName('shaping_rate_nds_id'          ).Value := sp_shaping_rate_get.FieldByName('shaping_rate_nds_id').Value;
    ClientDS_ShapingRate.FieldByName('shaping_rate_nds_name'        ).Value := sp_shaping_rate_get.FieldByName('shaping_rate_nds_name').Value;
    ClientDS_ShapingRate.FieldByName('budget_id'                    ).Value := sp_shaping_rate_get.FieldByName('budget_id').Value;
    ClientDS_ShapingRate.FieldByName('budget_cod'                   ).Value := sp_shaping_rate_get.FieldByName('budget_cod').Value;
    ClientDS_ShapingRate.FieldByName('budget_name'                  ).Value := sp_shaping_rate_get.FieldByName('budget_name').Value;
    ClientDS_ShapingRate.FieldByName('type_calc_sum'                ).Value := sp_shaping_rate_get.FieldByName('type_calc_sum').Value;
    ClientDS_ShapingRate.FieldByName('set_include_nds'              ).Value := sp_shaping_rate_get.FieldByName('set_include_nds').Value;
    ClientDS_ShapingRate.FieldByName('date_period'                  ).Value := iif(sp_shaping_rate_get.FieldByName('date_period').IsNull, _GetDatePeriod, sp_shaping_rate_get.FieldByName('date_period').Value);
    ClientDS_ShapingRate.FieldByName('date_period_service'          ).Value := iif(sp_shaping_rate_get.FieldByName('date_period_service').IsNull, _GetDateService, sp_shaping_rate_get.FieldByName('date_period_service').Value);
    ClientDS_ShapingRate.FieldByName('date_period_finance'          ).Value := sp_shaping_rate_get.FieldByName('date_period_finance').Value;
    ClientDS_ShapingRate.FieldByName('service_type'                 ).Value := sp_shaping_rate_get.FieldByName('service_type').Value;
    ClientDS_ShapingRate.FieldByName('service_type_name'            ).Value := sp_shaping_rate_get.FieldByName('service_type_name').Value;
    ClientDS_ShapingRate.FieldByName('shaping_rate_type_id'         ).Value := sp_shaping_rate_get.FieldByName('shaping_rate_type_id').Value;
    ClientDS_ShapingRate.FieldByName('shaping_rate_type_name'       ).Value := sp_shaping_rate_get.FieldByName('shaping_rate_type_name').Value;
    ClientDS_ShapingRate.FieldByName('shaping_rate_count'           ).Value := sp_shaping_rate_get.FieldByName('shaping_rate_count').Value;
    ClientDS_ShapingRate.FieldByName('shaping_rate_sum'             ).Value := sp_shaping_rate_get.FieldByName('shaping_rate_sum').Value;
    ClientDS_ShapingRate.FieldByName('shaping_rate_fee'             ).Value := sp_shaping_rate_get.FieldByName('shaping_rate_fee').Value;
    ClientDS_ShapingRate.FieldByName('shaping_rate_NDS_sum'         ).Value := sp_shaping_rate_get.FieldByName('shaping_rate_NDS_sum').Value;
    ClientDS_ShapingRate.FieldByName('shaping_rate_notNDS_sum'      ).Value := sp_shaping_rate_get.FieldByName('shaping_rate_notNDS_sum').Value;
    ClientDS_ShapingRate.FieldByName('set_transport_pay'            ).Value := sp_shaping_rate_get.FieldByName('set_transport_pay').Value;
    ClientDS_ShapingRate.FieldByName('vid_send'                     ).Value := sp_shaping_rate_get.FieldByName('vid_send').Value;
    ClientDS_ShapingRate.FieldByName('shaping_rate_acts_note'       ).Value := sp_shaping_rate_get.FieldByName('shaping_rate_acts_note').Value;
    ClientDS_ShapingRate.FieldByName('shaping_rate_note'            ).Value := sp_shaping_rate_get.FieldByName('shaping_rate_note').Value;
    ClientDS_ShapingRate.FieldByName('service_kind_id'              ).Value := sp_shaping_rate_get.FieldByName('service_kind_id').Value;
    ClientDS_ShapingRate.FieldByName('service_kind'                 ).Value := sp_shaping_rate_get.FieldByName('service_kind').Value;
    ClientDS_ShapingRate.FieldByName('service_kind_inv'             ).Value := sp_shaping_rate_get.FieldByName('service_kind_inv').Value;
    ClientDS_ShapingRate.FieldByName('service_kind_rep_id'          ).Value := sp_shaping_rate_get.FieldByName('service_kind_rep_id').Value;
    ClientDS_ShapingRate.FieldByName('service_kind_rep'             ).Value := sp_shaping_rate_get.FieldByName('service_kind_rep').Value;
    ClientDS_ShapingRate.FieldByName('service_kind_rep_inv'         ).Value := sp_shaping_rate_get.FieldByName('service_kind_rep_inv').Value;
    ClientDS_ShapingRate.FieldByName('five_days_zfto_id'            ).Value := sp_shaping_rate_get.FieldByName('five_days_zfto_id').Value;
    ClientDS_ShapingRate.FieldByName('five_days_zfto_name'          ).Value := sp_shaping_rate_get.FieldByName('five_days_zfto_name').Value;
    ClientDS_ShapingRate.FieldByName('set_round_notNDS_sum'         ).Value := sp_shaping_rate_get.FieldByName('set_round_notNDS_sum').Value;
    ClientDS_ShapingRate.Post;
    CalcShapingRate(ClientDS_ShapingRate.FieldByName('id').AsInteger);

    sp_shaping_rate_get.Next;
  end;

  CalcSum;

  cxCurrencyEdit3.EditValue  := Q.FieldByName('quantity').Value;
  cxCurrencyEdit15.EditValue := Q.FieldByName('quantity_units').Value;
//  cxCurrencyEdit16.EditValue := Q.FieldByName('').Value;


  sp_shaping_rate_get.Free;
  Q.Free;
  Screen.Cursor := crDefault;
end;


procedure TfmAgreeAdd2.SetDatePeriod(date_period: variant);
begin
  cxComboBox1.Properties.OnChange := nil;
  cxComboBox2.Properties.OnChange := nil;

  if date_period <> null then begin
    cxComboBox1.ItemIndex := StrToInt(FormatDateTime('m', date_period))-1;
    cxComboBox2.ItemIndex := cxComboBox2.Properties.Items.IndexOf(FormatDateTime('yyyy', date_period));
  end else begin
    cxComboBox1.ItemIndex := -1;
    cxComboBox2.ItemIndex := -1;
  end;

  Fdate_period := _GetDatePeriod;

  cxComboBox1.Properties.OnChange := cxComboBox1PropertiesChange;
  cxComboBox2.Properties.OnChange := cxComboBox1PropertiesChange;
end;

function TfmAgreeAdd2.GetDatePeriod(): variant;
begin
  if (cxComboBox1.ItemIndex = -1) or (cxComboBox2.ItemIndex = -1) then
    Result := null
  else
    Result := EncodeDate(StrToInt(cxComboBox2.Text), cxComboBox1.ItemIndex+1, 15);
end;


procedure TfmAgreeAdd2.SetDateService(date_service: variant);
begin
  if date_service <> null then begin
    cxComboBox3.ItemIndex := StrToInt(FormatDateTime('m', date_service))-1;
    cxComboBox4.ItemIndex := cxComboBox4.Properties.Items.IndexOf(FormatDateTime('yyyy', date_service));
  end else begin
    cxComboBox3.ItemIndex := -1;
    cxComboBox4.ItemIndex := -1;
  end;
end;

procedure TfmAgreeAdd2.SetDateFinance(date_finance: variant);
begin
  if date_finance <> null then begin
    cxComboBox5.ItemIndex := StrToInt(FormatDateTime('m', date_finance))-1;
    cxComboBox6.ItemIndex := cxComboBox4.Properties.Items.IndexOf(FormatDateTime('yyyy', date_finance));
  end else begin
    cxComboBox5.ItemIndex := -1;
    cxComboBox6.ItemIndex := -1;
  end;
end;

function TfmAgreeAdd2.GetDateService(): variant;
begin
  if (cxComboBox3.ItemIndex = -1) or (cxComboBox2.ItemIndex = -1) then
    Result := null
  else
    Result := EncodeDate(StrToInt(cxComboBox4.Text), cxComboBox3.ItemIndex+1, 15);
end;

procedure TfmAgreeAdd2.LockInputData(set_enable: boolean);
begin
  if not set_enable then begin

    cxTextEdit13.Enabled   := False;

    cxButtonEdit1.Enabled  := False;
    cxButtonEdit2.Enabled  := False;
    cxButtonEdit3.Enabled  := False;
    cxButtonEdit4.Enabled  := False;
    cxButtonEdit5.Enabled  := False;
    cxButtonEdit6.Enabled  := False;
    cxButtonEdit15.Enabled := False;
    cxButtonEdit16.Enabled := False;

    cxComboBox1.Enabled   := False;
    cxComboBox2.Enabled   := False;
    cxComboBox3.Enabled   := False;
    cxComboBox4.Enabled   := False;

    cxLookupComboBox1.Enabled := False;
    cxLookupComboBox2.Enabled := False;
    cxLookupComboBox3.Enabled := False;
    cxLookupComboBox4.Enabled := False;

    cxRadioGroup1.Enabled := False;

    cxCheckBox1.Enabled   := False;
    cxCheckBox3.Enabled   := False;
    cxCheckBox4.Enabled   := False;

    cxgrid1.Enabled       := False;
    cxMemo1.Enabled       := False;
  end else begin
    cxTextEdit13.Enabled   := True;

    cxButtonEdit1.Enabled  := True;
    cxButtonEdit2.Enabled  := True;
    cxButtonEdit3.Enabled  := True;
    cxButtonEdit4.Enabled  := True;
    cxButtonEdit5.Enabled  := True;
    cxButtonEdit6.Enabled  := True;
    cxButtonEdit15.Enabled := True;
    cxButtonEdit16.Enabled := True;

    cxComboBox1.Enabled   := True;
    cxComboBox2.Enabled   := True;
    cxComboBox3.Enabled   := True;
    cxComboBox4.Enabled   := True;

    cxLookupComboBox1.Enabled := True;
    cxLookupComboBox2.Enabled := True;
    cxLookupComboBox3.Enabled := True;
    cxLookupComboBox4.Enabled := True;

    cxRadioGroup1.Enabled := True;

    cxCheckBox1.Enabled   := True;
    cxCheckBox3.Enabled   := True;
    cxCheckBox4.Enabled   := True;

    cxgrid1.Enabled       := True;
    cxMemo1.Enabled       := True;
  end;
end;

function  TfmAgreeAdd2.GetDateFinance(): variant;
begin
  if (cxComboBox5.ItemIndex = -1) or (cxComboBox6.ItemIndex = -1) then
    Result := null
  else
    Result := EncodeDate(StrToInt(cxComboBox6.Text), cxComboBox5.ItemIndex+1, 15);
end;

function TfmAgreeAdd2.FindInfObj(caption_name: string; table_name: string; set_cod: boolean; var id: integer; var cod: string; var name: string): boolean;
var   Q : TADOQuery;
    res : boolean;
begin
  table_name := LowerCase(table_name);

  Q := TADOQuery.Create(nil);
  Q.Connection := Fconnect;
  Q.SQL.Add('SELECT *');
  Q.SQL.Add('FROM ' + table_name);
  Q.SQL.Add('WHERE (LEFT(' + DateToSQL(_GetDatePeriod) + ', 6) BETWEEN convert(varchar(6), date_begin, 112) AND convert(varchar(6), date_end, 112) OR date_end is null)');
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

  Result := res;
end;

function TfmAgreeAdd2.FindNode(caption_name: string): variant;
var new_str : string;
    Q : TADOQuery;
    v : variant;
begin
  Screen.Cursor := crHourglass;
  Q := TADOQuery.Create(nil);
  Q.Connection := Fconnect;
  Q.SQL.Add('SELECT inf_obj_id, inf_obj_name, inf_obj_cod, state_name, state_id, state_cod, road_name');
  Q.SQL.Add('FROM view_inf_obj_NODE');
  Q.SQL.Add('WHERE (LEFT(' + DateToSQL(_GetDatePeriod) + ', 8) BETWEEN convert(varchar(6), date_begin, 112) AND convert(varchar(6), date_end, 112) OR date_end is null)');
  Q.Open;
  fmFilter := TfmFilter.Create(0, Q, 'inf_obj_id', 'inf_obj_cod', 'inf_obj_name');
  fmFilter._SetNodeChoose := True;
  v := VarArrayCreate([0, 6], varVariant);
  if fmFilter.ShowModal = mrOk then begin
    v[0] := fmFilter.GetId;
    v[1] := fmFilter.GetName;
    v[2] := fmFilter.GetCod;
    v[3] := fmFilter.GetStateName;
    v[4] := fmFilter.GetRoadName;
    v[5] := fmFilter.GetStateCod;
    v[6] := fmFilter.GetStateId;
  end else
    v[0] := -9;

  Q.Free;
  Screen.Cursor := crDefault;

  Result := v;
end;

procedure TfmAgreeAdd2.cxButton1Click(Sender: TObject);
var display_value : variant;
    error_text    : TCaption;
    set_error     : boolean;
    Q             : TADOQuery;
    sp_bargain_modify : TADOStoredProc;

    cnt_serv_all,
    cnt_serv_valid : integer;
begin
  ModalResult := mrNone;

  // Расчитать План

  // Проверка на заполнение полей перевозки
  if CheckValidate(cxLookupComboBox1) = True then Exit; // Проверить клиента
  if CheckValidate(cxLookupComboBox2) = True then Exit; // Проверить тип перевозки
  if CheckValidate(cxButtonEdit5)     = True then Exit; // Проверить груз
  //if CheckValidate(cxLookupComboBox4) = True then Exit; // Проверить род вагона

  if ClientDS_ShapingRate.RecordCount = 0 then begin
    Application.MessageBox('Не указаны услуги!!!', 'Внимание', MB_OK+MB_ICONWARNING);
    ModalResult := mrNone;
    exit;
  end;

  // проверим Доходные услуги: Договор в услуге должен совпадать с договором в Перевозке
  ClientDS_ShapingRate.DisableControls;

  ClientDS_ShapingRate.Filter := 'service_type = 0';
  ClientDS_ShapingRate.Filtered := True;
  cnt_serv_all := ClientDS_ShapingRate.RecordCount;

  ClientDS_ShapingRate.Filter := 'service_type = 0 and contract_agent_id = ' + IntToStr(cxLookupComboBox1.EditValue);
  ClientDS_ShapingRate.Filtered := True;
  cnt_serv_valid := ClientDS_ShapingRate.RecordCount;

  ClientDS_ShapingRate.Filtered := False;
  ClientDS_ShapingRate.EnableControls;
  if cnt_serv_all <> cnt_serv_valid then begin
    Application.MessageBox('Договор в части доходных услуг не совпадает с договором Клиента в перевозке!!!', 'Внимание', MB_OK + MB_ICONERROR);
    ModalResult := mrNone;

    if Application.MessageBox('Установить договор в доходных услугах равным договору Клиента?', 'Внимание', MB_YESNO + MB_ICONQUESTION) = ID_YES then begin
      ChangeAddContract;
    end;

    exit;
  end;


  if Fbargain_id <> -9 then begin
    Q := TADOQuery.Create(nil);
    Q.Connection := Fconnect;
    Q.SQL.Add('SELECT * FROM view_bargain WHERE bargain_id = ' + IntToStr(Fbargain_id));
    Q.Open;

    if not Q.FieldByName('date_period_finance').IsNull then begin
      Application.MessageBox('Перевозка закрыта в фин. месяце.', 'Внимание', MB_OK+MB_ICONERROR);
      ModalResult := mrNone;
      Q.Free;
      exit;
    end;
    // -------- заблокировано ------------
    if Q.FieldByName('set_bargain_block').AsBoolean then begin
      Application.MessageBox('Перевозка заблокирована.', 'Внимание', MB_OK+MB_ICONERROR);
      ModalResult := mrNone;
      Q.Free;
      exit;
    end;
    // ------- за собой тянет удаляющее приложение ---------
    if (Q.FieldByName('bargain_correct_type').AsInteger = 2) and (Q.FieldByName('date_period').AsDateTime <> _GetDatePeriod) then begin
      if Application.MessageBox('Был изменен месяц перевозки "корректирующего" приложения' + #13#10 + 'Месяц перевозки "удаляющего" приложения, так же будет изменен!!!' + #13#10 + 'Продолжить?', 'Внимание', MB_YESNO + MB_ICONQUESTION) = IDNO then begin
        ModalResult := mrNone;
        Q.Free;
        exit;
      end;
    end;

    Q.Free;
  end;

  // !!! Проверка на группу груза !!!
  // Проверка на корректное заполенение группы груза и вида отправки

  // Проверка на закрытые договоры (Для бухгалтерии)

  // Сохраняем перевозку
  sp_bargain_modify := TADOStoredProc.Create(nil);
  sp_bargain_modify.Connection := Fconnect;
  sp_bargain_modify.ProcedureName := 'sp_bargain_modify';
  sp_bargain_modify.Parameters.Refresh;
  sp_bargain_modify.Parameters.ParamByName('@bargain_id'          ).Value := iif(Fbargain_id=-9, null, Fbargain_id);
  sp_bargain_modify.Parameters.ParamByName('@type_action'         ).Value := iif(Fbargain_id=-9, 0, 1);
  sp_bargain_modify.Parameters.ParamByName('@contract_id'         ).Value := cxLookupComboBox1.EditValue;
  sp_bargain_modify.Parameters.ParamByName('@bargain_cod'         ).Value := cxTextEdit13.EditValue;
  sp_bargain_modify.Parameters.ParamByName('@bargain_num'         ).Value := iif(Fbargain_num_save=-9, null, Fbargain_num_save);
  sp_bargain_modify.Parameters.ParamByName('@type_bargain_id'     ).Value := cxLookupComboBox2.EditValue;
  sp_bargain_modify.Parameters.ParamByName('@date_period'         ).Value := _GetDatePeriod;
  sp_bargain_modify.Parameters.ParamByName('@state_begin_id'      ).Value := iif(Fstate_begin_id=-9, null, Fstate_begin_id);
  sp_bargain_modify.Parameters.ParamByName('@state_end_id'        ).Value := iif(Fstate_end_id=-9, null, Fstate_end_id);
  sp_bargain_modify.Parameters.ParamByName('@node_begin_id'       ).Value := iif(Fnode_begin_id=-9, null, Fnode_begin_id);
  sp_bargain_modify.Parameters.ParamByName('@node_end_id'         ).Value := iif(Fnode_end_id=-9, null, Fnode_end_id);
  sp_bargain_modify.Parameters.ParamByName('@currency_id'         ).Value := cxLookupComboBox3.EditValue;
  sp_bargain_modify.Parameters.ParamByName('@kargoETSNG_id'       ).Value := iif(FkargoETSNG_id=-9, null, FkargoETSNG_id);
  sp_bargain_modify.Parameters.ParamByName('@kargoGNG_id'         ).Value := iif(FkargoGNG_id=-9, null, FkargoGNG_id);
  sp_bargain_modify.Parameters.ParamByName('@custom_id'           ).Value := iif(cxCheckBox3.Checked, cxLookupComboBox5.EditValue, null);
  sp_bargain_modify.Parameters.ParamByName('@bargain_sum'         ).Value := cxCurrencyEdit1.EditValue;
  sp_bargain_modify.Parameters.ParamByName('@bargain_comiss'      ).Value := cxCurrencyEdit2.EditValue;
  sp_bargain_modify.Parameters.ParamByName('@bargain_note'        ).Value := iif(cxMemo1.Lines.Text <> '', cxMemo1.Lines.Text, null);;
  sp_bargain_modify.Parameters.ParamByName('@kargoETSNG_add_id'   ).Value := iif(FkargoETSNG_add_id=-9, null, FkargoETSNG_add_id);
  sp_bargain_modify.Parameters.ParamByName('@date_period_service' ).Value := _GetDateService;
  sp_bargain_modify.Parameters.ParamByName('@five_days_zfto_id'   ).Value := cxLookupComboBox6.EditValue;
  sp_bargain_modify.Parameters.ParamByName('@our_rate_vid_send'   ).Value := cxRadioGroup1.ItemIndex;
  sp_bargain_modify.Parameters.ParamByName('@quantity'            ).Value := cxCurrencyEdit3.EditValue;
  sp_bargain_modify.Parameters.ParamByName('@quantity_units'      ).Value := cxCurrencyEdit15.EditValue;
  sp_bargain_modify.Parameters.ParamByName('@set_bargain_weight'  ).Value := iif(not SpeedButton1.Down and not SpeedButton2.Down, null, SpeedButton1.Down); // Если ничего не выбрано, то null... В случае выбора указываем Да или Нет
  sp_bargain_modify.Parameters.ParamByName('@sender_id'           ).Value := iif(Fsender_id=-9, null, Fsender_id);
  sp_bargain_modify.Parameters.ParamByName('@receiver_id'         ).Value := iif(Freceiver_id=-9, null, Freceiver_id);
  sp_bargain_modify.Parameters.ParamByName('@rod_vagon_id'        ).Value := cxLookupComboBox4.EditValue; //iif(Frod_vagon_id=-9, null, Frod_vagon_id);
  sp_bargain_modify.Parameters.ParamByName('@orders_agree_id'     ).Value := iif(Forders_agree_id=-9, null, Forders_agree_id);
  sp_bargain_modify.Parameters.ParamByName('@shaping_rate_xml'    ).Value := DataXMLToSQL(ClientDS_ShapingRate);
  sp_bargain_modify.ExecProc;

  Fbargain_id := sp_bargain_modify.Parameters.ParamByName('@bargain_id').Value;

  sp_bargain_modify.Free;

  ModalResult := mrOk;
end;

procedure TfmAgreeAdd2.cxButtonEdit11PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
var
  id  : integer;
  cod : string;
  name: string;
  Q   : TADOQuery;
begin
  case AButtonIndex of
    0 : begin
          case TcxButtonEdit(Sender).Tag of
            0:  if FindInfObj('Шаблон поиска груза по наименованию:', 'inf_obj_etsng', False, id, cod, name) then begin
                  FkargoETSNG_add_id := id;
                  cxButtonEdit11.EditValue := name;
                  cxButtonEdit12.EditValue := cod;
                  Q := TADOQuery.Create(nil);
                  Q.Connection := Fconnect;
                  Q.SQL.Add('SELECT * FROM view_kargoETSNG  WHERE inf_obj_id = ' + IntToStr(id));
                  Q.Open;
                  cxTextEdit16.EditValue  := Q.FieldByName('group_name').Value;
                  Q.Free;
                  ChangeAddKargoETSNGAdd;
                end;
            1:  if FindInfObj('Шаблон поиска груза по наименованию:', 'inf_obj_etsng', True, id, cod, name) then begin
                  FkargoETSNG_add_id := id;
                  cxButtonEdit11.EditValue := name;
                  cxButtonEdit12.EditValue := cod;
                  Q := TADOQuery.Create(nil);
                  Q.Connection := Fconnect;
                  Q.SQL.Add('SELECT * FROM view_kargoETSNG  WHERE inf_obj_id = ' + IntToStr(id));
                  Q.Open;
                  cxTextEdit16.EditValue  := Q.FieldByName('group_name').Value;
                  Q.Free;
                  ChangeAddKargoETSNGAdd;
                end;
          end;
        end;
    1 : begin
          FkargoETSNG_add_id := -9;
          cxButtonEdit11.EditValue:= null;
          cxButtonEdit12.EditValue:= null;
          cxTextEdit16.EditValue  := null;
          ChangeAddKargoETSNGAdd;
        end;
  end;

end;

procedure TfmAgreeAdd2.cxButtonEdit14PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  fmContract := TfmContract.Create(Application, True, 0);
  fmContract.Visible := False;
  if cxLookupComboBox1.EditValue <> null then
    fmContract._SetContractId := cxLookupComboBox1.EditValue;

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

procedure TfmAgreeAdd2.cxButtonEdit15PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
var _fmFirm : TfmFirm;
begin
  case AButtonIndex of
    0 : begin
      _fmFirm := TfmFirm.Create(Application, True, 2, 0, usr_pwd);
      _fmFirm._LocateFirmId := Fsender_id;
      if _fmFirm.ShowModal = mrOk then begin
        Fsender_id               := _fmFirm._GetFirmId;
        cxButtonEdit15.EditValue := _fmFirm._GetFirmName;
      end;
    end;
    1 : begin
        Fsender_id               := -9;
        cxButtonEdit15.EditValue := null;
    end;
  end;
end;

procedure TfmAgreeAdd2.cxButtonEdit16PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
var _fmFirm : TfmFirm;
begin
  case AButtonIndex of
    0 : begin
      _fmFirm := TfmFirm.Create(Application, True, 2, 0, usr_pwd);
      _fmFirm._LocateFirmId := Freceiver_id;
      if _fmFirm.ShowModal = mrOk then begin
        Freceiver_id             := _fmFirm._GetFirmId;
        cxButtonEdit16.EditValue := _fmFirm._GetFirmName;
      end;
    end;
    1 : begin
        Freceiver_id             := -9;
        cxButtonEdit16.EditValue := null;
    end;
  end;
end;

procedure TfmAgreeAdd2.cxButtonEdit1PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
var
  id  : integer;
  cod : string;
  name: string;
begin
  case AButtonIndex of
    0 : begin
          case TcxButtonEdit(Sender).Tag of
            1 : begin // Страна отправления
                  if FindInfObj('Шаблон поиска страны по названию:', 'inf_obj_state', False, id, cod, name) then begin
                    Fstate_begin_id    := id;
                    cxButtonEdit1.Text := name;
                    ChangeAddStateBegin;
                  end;
                end;
            4 : begin // Страна назначения
                  if FindInfObj('Шаблон поиска страны по названию:', 'inf_obj_state', False, id, cod, name) then begin
                    Fstate_end_id      := id;
                    cxButtonEdit4.Text := name;
                    ChangeAddStateEnd;
                  end;
                end;
          end;
        end;
    1 : case TcxButtonEdit(Sender).Tag of
          1 : begin
                Fstate_begin_id    := -9;
                cxButtonEdit1.Text := '';
                ChangeAddStateBegin;
              end;
          4 : begin
                Fstate_end_id      := -9;
                cxButtonEdit4.Text := '';
                ChangeAddStateEnd;
              end;
        end;
  end;
end;

procedure TfmAgreeAdd2.cxButtonEdit2PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
var v : variant;
begin
  case AButtonIndex of
    0 : case TcxButtonEdit(Sender).Tag of
          2 : begin // Станция отправления
                v := FindNode('Ж/д Cтанции отправления');
                if v[0] <> -9 then begin
                  Fnode_begin_id := v[0];
                  cxButtonEdit2.EditValue := v[1];
                  cxTextEdit9.EditValue   := v[2];
                  cxButtonEdit1.EditValue := v[3];
                  Fstate_begin_id := v[6];

                  ChangeAddNodeBegin;
                  ChangeAddStateBegin;
                end;
              end;

          3 : begin
                // Станция назначения
                v := FindNode('Ж/д Cтанции назначения');
                if v[0] <> -9 then begin
                  Fnode_end_id := v[0];
                  cxButtonEdit3.EditValue := v[1];
                  cxTextEdit10.EditValue  := v[2];
                  cxButtonEdit4.EditValue := v[3];
                  Fstate_end_id := v[6];

                  ChangeAddNodeEnd;
                  ChangeAddStateEnd;
                end;
              end;
        end;

    1 : case TcxButtonEdit(Sender).Tag of
          2 : begin
                Fnode_begin_id := -9;
                cxButtonEdit2.EditValue := null;
                cxTextEdit9.EditValue   := null;
                cxButtonEdit1.EditValue := null;
                Fstate_begin_id := -9;

                ChangeAddNodeBegin;
                ChangeAddStateBegin;
              end;
          3 : begin
                Fnode_end_id := -9;
                cxButtonEdit3.EditValue := null;
                cxTextEdit10.EditValue  := null;
                cxButtonEdit4.EditValue := null;
                Fstate_end_id := -9;

                ChangeAddNodeEnd;
                ChangeAddStateEnd;
              end;
        end;
  end;
end;

procedure TfmAgreeAdd2.cxButtonEdit5PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
var
  id  : integer;
  cod : string;
  name: string;
  Q   : TADOQuery;
begin
  case AButtonIndex of
    0 : begin
          case TcxButtonEdit(Sender).Tag of
            0:  if FindInfObj('Шаблон поиска груза по наименованию:', 'inf_obj_etsng', False, id, cod, name) then begin
                  FkargoETSNG_id := id;
                  cxButtonEdit5.EditValue := name;
                  cxButtonEdit6.EditValue := cod;
                  Q := TADOQuery.Create(nil);
                  Q.Connection := Fconnect;
                  Q.SQL.Add('SELECT * FROM view_kargoETSNG  WHERE inf_obj_id = ' + IntToStr(id));
                  Q.Open;
                  cxTextEdit14.EditValue  := Q.FieldByName('group_name').Value;

                  if Q.FieldByName('group_cod').AsString = '9' then
                    SetKargoEmptyAdd(True)
                  else
                    SetKargoEmptyAdd(False);

                  Q.Free;

                  ChangeAddKargoETSNG;
                end;
            1:  if FindInfObj('Шаблон поиска груза по коду:', 'inf_obj_etsng', True, id, cod, name) then begin
                  FkargoETSNG_id := id;
                  cxButtonEdit5.EditValue := name;
                  cxButtonEdit6.EditValue := cod;
                  Q := TADOQuery.Create(nil);
                  Q.Connection := Fconnect;
                  Q.SQL.Add('SELECT * FROM view_kargoETSNG  WHERE inf_obj_id = ' + IntToStr(id));
                  Q.Open;
                  cxTextEdit14.EditValue  := Q.FieldByName('group_name').Value;

                  if Q.FieldByName('group_cod').AsString = '9' then
                    SetKargoEmptyAdd(True)
                  else
                    SetKargoEmptyAdd(False);

                  Q.Free;
                  ChangeAddKargoETSNG;
                end;
          end;
        end;
    1 : begin
          if FkargoETSNG_id <> -9 then begin
            if Application.MessageBox('Заменить груз ЕТСНГ данными из Факта?', 'Внимание', MB_YESNO or MB_ICONQUESTION) = ID_NO then
              exit;
          end;

          Q := TADOQuery.Create(nil);
          Q.Connection := Fconnect;
          Q.SQL.Add('SELECT TOP 1 fact.kargoETSNG_id, view_kargoETSNG.inf_obj_cod, view_kargoETSNG.inf_obj_name, view_kargoETSNG.group_id, view_kargoETSNG.group_name, view_kargoETSNG.group_cod');
          Q.SQL.Add('FROM   fact');
          Q.SQL.Add('       inner join view_kargoETSNG ON fact.kargoETSNG_id = view_kargoETSNG.inf_obj_id');
          Q.SQL.Add('WHERE set_main = 1 and bargain_id = ' + IntToStr(Fbargain_id));
          Q.SQL.Add('ORDER BY fact_id');
          Q.Open;

          if Q.Eof then begin
            // Нет данных в вагонах - все очищаем
            FkargoETSNG_id           := -9;
            cxButtonEdit5.EditValue  := null;
            cxButtonEdit6.EditValue  := null;
            cxTextEdit14.EditValue   := null;
            SetKargoEmptyAdd(False);
          end else begin
            FkargoETSNG_id           := Q.FieldByName('kargoETSNG_id').asInteger;
            cxButtonEdit5.EditValue  := Q.FieldByName('inf_obj_name').Value;
            cxButtonEdit6.EditValue  := Q.FieldByName('inf_obj_cod').Value;
            cxTextEdit14.EditValue   := Q.FieldByName('group_name').Value;
            if Q.FieldByName('group_cod').AsString = '9' then
              SetKargoEmptyAdd(True)
            else
              SetKargoEmptyAdd(False);
          end;
          ChangeAddKargoETSNG;
          Q.Free;
        end;
    2 : begin
          FkargoETSNG_id := -9;
          cxButtonEdit5.EditValue := null;
          cxButtonEdit6.EditValue := null;
          cxTextEdit14.EditValue  := null;
          SetKargoEmptyAdd(False);
          ChangeAddKargoETSNG;
        end;
  end;
  cxButtonEdit5.ValidateEdit;
end;


procedure TfmAgreeAdd2.cxButtonEdit8PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
var
  id  : integer;
  cod : string;
  name: string;
  Q   : TADOQuery;
begin
  case AButtonIndex of
    0 : begin
          case TcxButtonEdit(Sender).Tag of
            0:  if FindInfObj('Шаблон поиска груза по наименованию:', 'inf_obj_gng', False, id, cod, name) then begin
                  FkargoGNG_id := id;
                  cxButtonEdit8.EditValue := name;
                  cxButtonEdit7.EditValue := cod;
                  ChangeAddKargoGNG;
                end;
            1:  if FindInfObj('Шаблон поиска груза по коду:', 'inf_obj_gng', True, id, cod, name) then begin
                  FkargoGNG_id := id;
                  cxButtonEdit8.EditValue := name;
                  cxButtonEdit7.EditValue := cod;
                  ChangeAddKargoGNG;
                end;
          end;
        end;
    1 : begin
          if FkargoGNG_id <> -9 then begin
            if Application.MessageBox('Заменить груз ГНГ данными из Факта?', 'Внимание', MB_YESNO or MB_ICONQUESTION) = ID_NO then
              exit;
          end;

          Q := TADOQuery.Create(nil);
          Q.Connection := Fconnect;
          Q.SQL.Add('SELECT TOP 1 fact.kargoGNG_id, inf_obj_GNG.inf_obj_cod, inf_obj_GNG.inf_obj_name');
          Q.SQL.Add('FROM   fact');
          Q.SQL.Add('       inner join inf_obj_GNG ON fact.kargoGNG_id = inf_obj_GNG.inf_obj_id');
          Q.SQL.Add('WHERE set_main = 1 and bargain_id = ' + IntToStr(Fbargain_id));
          Q.SQL.Add('ORDER BY fact_id');
          Q.Open;

          if Q.Eof then begin
            // Нет данных в вагонах - все очищаем
            FkargoGNG_id := -9;
            cxButtonEdit8.EditValue  := null;
            cxButtonEdit7.EditValue  := null;
          end else begin
            FkargoGNG_id             := Q.FieldByName('kargoGNG_id').asInteger;
            cxButtonEdit8.EditValue  := Q.FieldByName('inf_obj_name').Value;
            cxButtonEdit7.EditValue  := Q.FieldByName('inf_obj_cod').Value;
          end;
          Q.Free;

          ChangeAddKargoGNG;
        end;
    2 : begin
          FkargoGNG_id := -9;
          cxButtonEdit8.EditValue := null;
          cxButtonEdit7.EditValue := null;
          ChangeAddKargoGNG;
        end;
  end;
end;

procedure TfmAgreeAdd2.SetKargoEmptyAdd(set_enable: boolean);
begin
  if not set_enable then begin
    FkargoETSNG_add_id  := -9;
    cxButtonEdit11.EditValue := null;
    cxButtonEdit12.EditValue := null;
    cxTextEdit16.EditValue   := null;
    cxButtonEdit11.Enabled  := False;
    cxButtonEdit12.Enabled  := False;
    cxTextEdit16.Enabled    := False;
  end else begin
    cxButtonEdit11.Enabled  := True;
    cxButtonEdit12.Enabled  := True;
    cxTextEdit16.Enabled    := True;
  end;
end;


procedure TfmAgreeAdd2.cxCheckBox1PropertiesEditValueChanged(Sender: TObject);
begin
  cxLookupComboBox6.Enabled   := cxCheckBox1.Checked;
  cxLookupComboBox6.EditValue := null;
end;

procedure TfmAgreeAdd2.cxCheckBox3PropertiesEditValueChanged(Sender: TObject);
begin
  cxLookupComboBox5.Enabled   := cxCheckBox3.Checked;
  cxLookupComboBox5.EditValue := null;
end;

procedure TfmAgreeAdd2.cxCheckBox4PropertiesEditValueChanged(Sender: TObject);
begin
  cxButtonEdit8.Enabled := cxCheckBox4.Checked;
  cxButtonEdit7.Enabled := cxCheckBox4.Checked;
  cxButtonEdit8.EditValue := null;
  cxButtonEdit7.EditValue := null;
  FkargoGNG_id := -9;
end;

function TfmAgreeAdd2.CheckValidate(ACustomEdit: TcxCustomMaskEdit): boolean;
var display_value : variant;
    error_text    : TCaption;
    set_error     : boolean;
begin
  ACustomEdit.Properties.ValidateDisplayValue(display_value, error_text, set_error, ACustomEdit);
  if set_error = True then begin
    Application.MessageBox(PChar(error_text), 'Ошибка!', MB_ICONERROR or MB_OK);
    ACustomEdit.ValidateEdit;
    ACustomEdit.SetFocus;
  end;

  Result := set_error;
end;

procedure TfmAgreeAdd2.ChangeNumBargain(check_change: boolean);
begin
  if check_change then begin
    cxTextEdit13.EditValue := GetCodByFirm(Fconnect, -9, Query_client.FieldByName('firm_self').AsInteger, 1, _GetDatePeriod, Fbargain_num_save);
  end else begin
    Fbargain_num_save := -9;
    cxTextEdit13.EditValue := Fbargain_cod_save;
  end;
end;

procedure TfmAgreeAdd2.cxComboBox1PropertiesChange(Sender: TObject);
var contract_id       : integer;
    five_days_zfto_id : integer;
begin
  // Установить Месяц оказания услуги, (Если менялся Месяц перевозки пользователем)
  if Sender <> nil then begin
    _SetDateService := _GetDatePeriod;
  end;

  // Проверить договор
  cxLookupComboBox1.Properties.OnEditValueChanged := nil;

  if cxLookupComboBox1.EditValue <> null then contract_id := cxLookupComboBox1.EditValue;
  Query_Client.Close;
  Query_Client.Parameters.ParamByName('date_current').Value  := _GetDatePeriod;
  Query_Client.Parameters.ParamByName('type_contract').Value := 0;
  Query_Client.Open;
  if Query_Client.Locate('contract_id', contract_id, []) then
    cxLookupComboBox1.EditValue := contract_id
  else
    cxLookupComboBox1.EditValue := null;

  cxLookupComboBox1.Properties.OnEditValueChanged := cxLookupComboBox1PropertiesEditValueChanged;

  // Проверить номер перевозки
  if Fdate_period <> _GetDatePeriod then begin

    // Перевозка уже создана (update)
    if Fbargain_id <> -9 then begin
      if  YearOf(Fdate_period_save) <> YearOf(_GetDatePeriod)  then
        ChangeNumBargain(True)
      else if Fset_copy then
        ChangeNumBargain(True)
      else
        ChangeNumBargain(False);

    // Новая перевозка (insert)
    end else
      ChangeNumBargain(True);
  end;
  Fdate_period := _GetDatePeriod;

  // Изменить средние курсы
  // !!!Курс меняется у услуги!!!

  // Проверить пятидневки ЦФТО
  if cxLookupComboBox6.EditValue <> null then five_days_zfto_id := cxLookupComboBox6.EditValue;
  Query_FiveDaysZFTO.Close;
  Query_FiveDaysZFTO.Parameters.ParamByName('str_date').Value := _GetDatePeriod;
  Query_FiveDaysZFTO.Open;
  if Query_FiveDaysZFTO.Locate('inf_obj_id', five_days_zfto_id, []) then cxLookupComboBox6.EditValue := five_days_zfto_id
  else cxLookupComboBox6.EditValue := null;

  ChangeAddDatePeriod;
end;

procedure TfmAgreeAdd2.cxComboBox3PropertiesChange(Sender: TObject);
begin
  ChangeAddDateService;
end;

procedure TfmAgreeAdd2.cxGrid1DBBandedTableView1CustomDrawCell(Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
  if  (AViewInfo.GridRecord.Values[cxGrid1DBBandedTableView1date_period_finance.Index] <> NULL) then begin
    ACanvas.Font.Color := clPurple;
    ACanvas.Font.Style := [fsBold];
  end;

  if (AViewInfo.GridRecord.Values[cxGrid1DBBandedTableView1service_type.Index] = 0) then begin
    if  (AViewInfo.Item.ID = cxGrid1DBBandedTableView1service_type_name.Index) or
        (AViewInfo.Item.ID = cxGrid1DBBandedTableView1shaping_rate_sum.Index) or
        (AViewInfo.Item.ID = cxGrid1DBBandedTableView1shaping_rate_NDS_sum.Index) or
        (AViewInfo.Item.ID = cxGrid1DBBandedTableView1shaping_rate_notNDS_sum.Index) or
        (AViewInfo.Item.ID = cxGrid1DBBandedTableView1shaping_rate_sum_USD.Index) or
        (AViewInfo.Item.ID = cxGrid1DBBandedTableView1shaping_rate_sum_RUB.Index) or
        (AViewInfo.Item.ID = cxGrid1DBBandedTableView1shaping_rate_sum_CHF.Index) or
        (AViewInfo.Item.ID = cxGrid1DBBandedTableView1shaping_rate_sum_EUR.Index) or
        (AViewInfo.Item.ID = cxGrid1DBBandedTableView1shaping_rate_notNDS_sum_USD.Index) or
        (AViewInfo.Item.ID = cxGrid1DBBandedTableView1shaping_rate_notNDS_sum_RUB.Index) or
        (AViewInfo.Item.ID = cxGrid1DBBandedTableView1shaping_rate_notNDS_sum_CHF.Index) or
        (AViewInfo.Item.ID = cxGrid1DBBandedTableView1shaping_rate_notNDS_sum_EUR.Index) then begin
      ACanvas.Font.Color := clRed;
      ACanvas.Font.Style := [fsBold];
    end;
  end;

  if (AViewInfo.GridRecord.Values[cxGrid1DBBandedTableView1service_type.Index] = 1) then begin
    if  (AViewInfo.Item.ID = cxGrid1DBBandedTableView1service_type_name.Index) or
        (AViewInfo.Item.ID = cxGrid1DBBandedTableView1shaping_rate_sum.Index) or
        (AViewInfo.Item.ID = cxGrid1DBBandedTableView1shaping_rate_NDS_sum.Index) or
        (AViewInfo.Item.ID = cxGrid1DBBandedTableView1shaping_rate_notNDS_sum.Index) or
        (AViewInfo.Item.ID = cxGrid1DBBandedTableView1shaping_rate_sum_USD.Index) or
        (AViewInfo.Item.ID = cxGrid1DBBandedTableView1shaping_rate_sum_RUB.Index) or
        (AViewInfo.Item.ID = cxGrid1DBBandedTableView1shaping_rate_sum_CHF.Index) or
        (AViewInfo.Item.ID = cxGrid1DBBandedTableView1shaping_rate_sum_EUR.Index) or
        (AViewInfo.Item.ID = cxGrid1DBBandedTableView1shaping_rate_notNDS_sum_USD.Index) or
        (AViewInfo.Item.ID = cxGrid1DBBandedTableView1shaping_rate_notNDS_sum_RUB.Index) or
        (AViewInfo.Item.ID = cxGrid1DBBandedTableView1shaping_rate_notNDS_sum_CHF.Index) or
        (AViewInfo.Item.ID = cxGrid1DBBandedTableView1shaping_rate_notNDS_sum_EUR.Index) then begin
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

procedure TfmAgreeAdd2.cxGrid1DBBandedTableView1CustomDrawColumnHeader(Sender: TcxGridTableView; ACanvas: TcxCanvas;AViewInfo: TcxGridColumnHeaderViewInfo; var ADone: Boolean);
begin
  DrawcxGridColumnOnFocused(Sender, ACanvas, AViewInfo);
end;

procedure TfmAgreeAdd2.cxGrid1DBBandedTableView1DataControllerFilterChanged(Sender: TObject);
begin
  DrawcxGridColumnOnFiltered(Sender);
end;

procedure TfmAgreeAdd2.cxGrid1DBBandedTableView1FocusedItemChanged(Sender: TcxCustomGridTableView; APrevFocusedItem,AFocusedItem: TcxCustomGridTableItem);
begin
	Sender.Painter.Invalidate;
end;

procedure TfmAgreeAdd2.cxGrid1DBBandedTableView1KeyPress(Sender: TObject; var Key: Char);
begin
  FilterColumnGridOnKeyPress(TcxGridDBBandedTableView(TcxGridSite(Sender).GridView), Key);
end;

procedure TfmAgreeAdd2.cxLookupComboBox1PropertiesEditValueChanged(Sender: TObject);
var contract_id  : integer;
begin
  cxButtonEdit13.EditValue := '';
  cxButtonEdit14.EditValue := '';

  if Query_Client.Active then begin
    contract_id := iif(cxLookupComboBox1.EditValue = null, -9, cxLookupComboBox1.EditValue);

   if (contract_id = Fcontract_id_save) AND (Fcontract_id_save <> -9) AND (FormatDateTime('yyyy', _GetDatePeriod) = FormatDateTime('yyyy', Fdate_period_save)) then begin
      cxTextEdit13.EditValue := Fbargain_cod_save;
      Fbargain_num_save := -9;
   end else
      ChangeNumBargain(True);

    if Query_Client.Locate('contract_id', contract_id, []) then begin
      cxButtonEdit13.EditValue    := Query_Client.FieldByName('firm_self_name').AsString;
      cxButtonEdit14.EditValue    := Query_Client.FieldByName('contract_cod'  ).AsString + ' от ' + FormatDateTime('dd.mm.yyyyг.', Query_Client.FieldByName('date_begin').AsDateTime);
      cxLookupComboBox3.EditValue := Query_Client.FieldByName('currency_id'   ).AsString;
    end;

    cxLookupComboBox1.ValidateEdit;
    ChangeAddContract;
  end;

end;

procedure TfmAgreeAdd2.cxLookupComboBox1PropertiesValidate(Sender: TObject; var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
begin
  Error     := (cxLookupComboBox1.EditValue = null);
  ErrorText := 'Выберите клиента!';
end;

procedure TfmAgreeAdd2.cxLookupComboBox2PropertiesChange(Sender: TObject);
begin
  cxLookupComboBox2.ValidateEdit;
end;

procedure TfmAgreeAdd2.cxLookupComboBox2PropertiesValidate(Sender: TObject; var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
begin
  Error     := (cxLookupComboBox2.EditValue = null);
  ErrorText := 'Выберите тип перевозки!';
end;

procedure TfmAgreeAdd2.cxLookupComboBox3PropertiesEditValueChanged(Sender: TObject);
begin
  Label19.Caption := cxLookupComboBox3.Text;
  Label21.Caption := cxLookupComboBox3.Text;
  Label23.Caption := cxLookupComboBox3.Text;

  CalcSum;
end;

procedure TfmAgreeAdd2.cxLookupComboBox4PropertiesChange(Sender: TObject);
begin
  cxLookupComboBox4.ValidateEdit;
end;

procedure TfmAgreeAdd2.cxLookupComboBox4PropertiesValidate(Sender: TObject; var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
begin
  Error     := (cxLookupComboBox4.EditValue = null);
  ErrorText := 'Выберите род вагона!';
end;

procedure TfmAgreeAdd2.cxButtonEdit5PropertiesValidate(Sender: TObject; var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
begin
  Error     := (FkargoETSNG_id = -9);
  ErrorText := 'Выберите груз!';
end;


procedure TfmAgreeAdd2.cxLookupComboBox6PropertiesChange(Sender: TObject);
begin
  ChangeFiveDaysZFTO();
end;

procedure TfmAgreeAdd2.cxLookupComboBox6PropertiesValidate(Sender: TObject; var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
begin
//  Error     := (cxLookupComboBox2.EditValue = null);
//  ErrorText := 'Выберите пятидневку ЦФТО!';
end;

procedure TfmAgreeAdd2.dxBarButton1Click(Sender: TObject);
begin
	PrintcxGrid(cxGrid1DBBandedTableView1);
end;

procedure TfmAgreeAdd2.dxBarButton2Click(Sender: TObject);
begin
	SetdxDBGridColumns(cxGrid1DBBandedTableView1);
end;

procedure TfmAgreeAdd2.dxBarButton3Click(Sender: TObject);
begin
	cxGrid1DBBandedTableView1.OptionsView.GroupByBox := not cxGrid1DBBandedTableView1.OptionsView.GroupByBox;
end;

procedure TfmAgreeAdd2.dxBarButton4Click(Sender: TObject);
begin
  if CheckValidate(cxLookupComboBox1) = True then Exit; // Проверить клиента

  fmShapeRateAdd2 := TfmShapeRateAdd2.Create(Application, 0);
  fmShapeRateAdd2._SetDatePeriod      := _GetDatePeriod;
  fmShapeRateAdd2._SetDateService     := _GetDateService;
  fmShapeRateAdd2._SetContractId      := cxLookupComboBox1.EditValue;
  fmShapeRateAdd2._SetNodeBeginId     := Fnode_begin_id;
  fmShapeRateAdd2._SetNodeEndId       := Fnode_end_id;
  fmShapeRateAdd2._SetStateBeginId    := Fstate_begin_id;
  fmShapeRateAdd2._SetStateEndId      := Fstate_end_id;
  fmShapeRateAdd2._SetKargoETSNGId    := FkargoETSNG_id;
  fmShapeRateAdd2._SetKargoETSNGAddId := FkargoETSNG_add_id;
  fmShapeRateAdd2._SetKargoGNGId      := FkargoGNG_id;

  fmShapeRateAdd2._SetClientAdd := ClientDS_ShapingRate;
  if fmShapeRateAdd2.ShowModal = mrOk then begin
    CalcShapingRate(fmShapeRateAdd2._GetAddId);
    CalcSum;
  end;
end;

procedure TfmAgreeAdd2.dxBarButton5Click(Sender: TObject);
begin
  fmShapeRateAdd2 := TfmShapeRateAdd2.Create(Application, 1);
  fmShapeRateAdd2._SetDatePeriod      := _GetDatePeriod;
  fmShapeRateAdd2._SetDateService     := _GetDateService;
  fmShapeRateAdd2._SetNodeBeginId     := Fnode_begin_id;
  fmShapeRateAdd2._SetNodeEndId       := Fnode_end_id;
  fmShapeRateAdd2._SetStateBeginId    := Fstate_begin_id;
  fmShapeRateAdd2._SetStateEndId      := Fstate_end_id;
  fmShapeRateAdd2._SetKargoETSNGId    := FkargoETSNG_id;
  fmShapeRateAdd2._SetKargoETSNGAddId := FkargoETSNG_add_id;
  fmShapeRateAdd2._SetKargoGNGId      := FkargoGNG_id;

  fmShapeRateAdd2._SetClientAdd := ClientDS_ShapingRate;
  if fmShapeRateAdd2.ShowModal = mrOk then begin
    CalcShapingRate(fmShapeRateAdd2._GetAddId);
    CalcSum;
  end;
end;

procedure TfmAgreeAdd2.dxBarButton6Click(Sender: TObject);
begin
  if CheckValidate(cxLookupComboBox1) = True then Exit; // Проверить клиента

  ChangeAddDatePeriod;
  ChangeAddDateService;

  fmShapeRateAdd2 := TfmShapeRateAdd2.Create(Application, cxGrid1DBBandedTableView1service_type.DataBinding.Field.AsInteger);
  fmShapeRateAdd2._SetClientAdd   := ClientDS_ShapingRate;
  fmShapeRateAdd2._SetUpdate      := cxGrid1DBBandedTableView1id.DataBinding.Field.AsInteger;
  if _GetDateFinance <> null then
    fmShapeRateAdd2._SetDateFinance := _GetDateFinance;

  if fmShapeRateAdd2.ShowModal = mrOk then begin
    CalcShapingRate(fmShapeRateAdd2._GetAddId);
    CalcSum;
  end;
end;

procedure TfmAgreeAdd2.dxBarButton7Click(Sender: TObject);
var arr     : Array of Variant;
    i       : integer;
    id : integer;
begin
  if ClientDS_ShapingRate.RecordCount = 0 then exit;

  Screen.Cursor := crHourglass;
  ClientDS_ShapingRate.DisableControls;
//  ClientDS_ShapingRate.AutoCalcFields := False;
//
//  id := ClientDS_ShapingRate.FieldByName('id').AsInteger;
//  // Сдвигаем поля
//  ClientDS_ShapingRate.Last;
//  while ClientDS_ShapingRate.FieldByName('id').AsInteger > id do begin
//    ClientDS_ShapingRate.Edit;
//    ClientDS_ShapingRate.FieldByName('id').AsInteger := ClientDS_ShapingRate.FieldByName('id').AsInteger + 1;
//    ClientDS_ShapingRate.Post;
//    ClientDS_ShapingRate.Prior;
//  end;

  SetLength(arr, ClientDS_ShapingRate.FieldCount);
  for i := 0 to ClientDS_ShapingRate.FieldCount - 1 do begin
    arr[i] := ClientDS_ShapingRate.Fields.Fields[i].Value;
  end;

  ClientDS_ShapingRate.Append;
  for i := 0 to ClientDS_ShapingRate.FieldCount - 1 do begin
    ClientDS_ShapingRate.Fields.Fields[i].Value := arr[i];
  end;
  ClientDS_ShapingRate.FieldByName('shaping_rate_id').Value := NULL;
  ClientDS_ShapingRate.Post;

  ClientDS_ShapingRate.EnableControls;

  cxGrid1DBBandedTableView1.Controller.ClearSelection;
  CalcShapingRate(ClientDS_ShapingRate.FieldByName('id').AsInteger);
  CalcSum;
  Screen.Cursor := crDefault;
end;

procedure TfmAgreeAdd2.dxBarButton8Click(Sender: TObject);
begin
  ClientDS_ShapingRate.Delete;
  CalcSum;
end;

procedure TfmAgreeAdd2.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if Fset_run_dll then begin
   Fconnect.Close;
   Fconnect.Free;
  end;
  Action := caFree;
end;

procedure TfmAgreeAdd2.FormDestroy(Sender: TObject);
begin
  StoreRegistryGrid(rgSave, '\Software\Lis1\AgreeAdd_Grids', cxGrid1DBBandedTableView1);
end;

procedure TfmAgreeAdd2.CalcShapingRate(id: integer);
var sp_shaping_rate_CALC: TADOStoredProc;
    koef : integer;
begin
  if ClientDS_ShapingRate.Locate('id', id, []) then begin

    sp_shaping_rate_CALC := TADOStoredProc.Create(nil);
    sp_shaping_rate_CALC.Connection := Fconnect;
    sp_shaping_rate_CALC.ProcedureName := 'sp_shaping_rate_CALC';
    sp_shaping_rate_CALC.Parameters.Refresh;
    sp_shaping_rate_CALC.Parameters.ParamByName('@currency_id'          ).Value := ClientDS_ShapingRate.FieldByName('currency_id').Value;
    sp_shaping_rate_CALC.Parameters.ParamByName('@shaping_rate_val'     ).Value := ClientDS_ShapingRate.FieldByName('shaping_rate_val').Value;
    sp_shaping_rate_CALC.Parameters.ParamByName('@shaping_rate_count'   ).Value := ClientDS_ShapingRate.FieldByName('shaping_rate_count').Value;
    sp_shaping_rate_CALC.Parameters.ParamByName('@shaping_rate_nds_id'  ).Value := ClientDS_ShapingRate.FieldByName('shaping_rate_nds_id').Value;
    sp_shaping_rate_CALC.Parameters.ParamByName('@set_include_nds'      ).Value := ClientDS_ShapingRate.FieldByName('set_include_nds').Value;
    sp_shaping_rate_CALC.Parameters.ParamByName('@set_hand_edit'        ).Value := False;
    sp_shaping_rate_CALC.Parameters.ParamByName('@shaping_rate_notNDS_sum').Value := ClientDS_ShapingRate.FieldByName('shaping_rate_notNDS_sum').Value;
    sp_shaping_rate_CALC.Parameters.ParamByName('@shaping_rate_NDS_sum'   ).Value := ClientDS_ShapingRate.FieldByName('shaping_rate_NDS_sum').Value;
    sp_shaping_rate_CALC.Parameters.ParamByName('@shaping_rate_sum'       ).Value := ClientDS_ShapingRate.FieldByName('shaping_rate_sum').Value;

    if ClientDS_ShapingRate.FieldByName('exchange_USD_val').IsNull then begin
      sp_shaping_rate_CALC.Parameters.ParamByName('@exchange_USD_val'     ).Value := FormatFloat('0.0000', GetExchangeNew( 1, StartOfAMonth(YearOf(_GetDatePeriod), MonthOf(_GetDatePeriod)), Fconnect));
      sp_shaping_rate_CALC.Parameters.ParamByName('@exchange_CHF_val'     ).Value := FormatFloat('0.0000', GetExchangeNew( 5, StartOfAMonth(YearOf(_GetDatePeriod), MonthOf(_GetDatePeriod)), Fconnect));
      sp_shaping_rate_CALC.Parameters.ParamByName('@exchange_EUR_val'     ).Value := FormatFloat('0.0000', GetExchangeNew( 6, StartOfAMonth(YearOf(_GetDatePeriod), MonthOf(_GetDatePeriod)), Fconnect));
    end else begin
      sp_shaping_rate_CALC.Parameters.ParamByName('@exchange_USD_val'     ).Value := ClientDS_ShapingRate.FieldByName('exchange_USD_val').Value;
      sp_shaping_rate_CALC.Parameters.ParamByName('@exchange_CHF_val'     ).Value := ClientDS_ShapingRate.FieldByName('exchange_CHF_val').Value;
      sp_shaping_rate_CALC.Parameters.ParamByName('@exchange_EUR_val'     ).Value := ClientDS_ShapingRate.FieldByName('exchange_EUR_val').Value;
    end;

    try
      sp_shaping_rate_CALC.ExecProc;
    except
    end;

    if ClientDS_ShapingRate.FieldByName('service_type').Value = 0 then
      koef := 1
    else
      koef := -1;

    ClientDS_ShapingRate.Edit;
    ClientDS_ShapingRate.FieldByName('shaping_rate_sum'           ).Value := koef * sp_shaping_rate_CALC.Parameters.ParamByName('@shaping_rate_sum').Value;
    ClientDS_ShapingRate.FieldByName('shaping_rate_NDS_sum'       ).Value := koef * sp_shaping_rate_CALC.Parameters.ParamByName('@shaping_rate_NDS_sum').Value;
    ClientDS_ShapingRate.FieldByName('shaping_rate_notNDS_sum'    ).Value := koef * sp_shaping_rate_CALC.Parameters.ParamByName('@shaping_rate_notNDS_sum').Value;
    ClientDS_ShapingRate.FieldByName('shaping_rate_sum_RUB'       ).Value := koef * sp_shaping_rate_CALC.Parameters.ParamByName('@shaping_rate_sum_RUB').Value;
    ClientDS_ShapingRate.FieldByName('shaping_rate_NDS_sum_RUB'   ).Value := koef * sp_shaping_rate_CALC.Parameters.ParamByName('@shaping_rate_NDS_sum_RUB').Value;
    ClientDS_ShapingRate.FieldByName('shaping_rate_notNDS_sum_RUB').Value := koef * sp_shaping_rate_CALC.Parameters.ParamByName('@shaping_rate_notNDS_sum_RUB').Value;
    ClientDS_ShapingRate.FieldByName('shaping_rate_sum_USD'       ).Value := koef * sp_shaping_rate_CALC.Parameters.ParamByName('@shaping_rate_sum_USD').Value;
    ClientDS_ShapingRate.FieldByName('shaping_rate_NDS_sum_USD'   ).Value := koef * sp_shaping_rate_CALC.Parameters.ParamByName('@shaping_rate_NDS_sum_USD').Value;
    ClientDS_ShapingRate.FieldByName('shaping_rate_notNDS_sum_USD').Value := koef * sp_shaping_rate_CALC.Parameters.ParamByName('@shaping_rate_notNDS_sum_USD').Value;
    ClientDS_ShapingRate.FieldByName('shaping_rate_sum_CHF'       ).Value := koef * sp_shaping_rate_CALC.Parameters.ParamByName('@shaping_rate_sum_CHF').Value;
    ClientDS_ShapingRate.FieldByName('shaping_rate_NDS_sum_CHF'   ).Value := koef * sp_shaping_rate_CALC.Parameters.ParamByName('@shaping_rate_NDS_sum_CHF').Value;
    ClientDS_ShapingRate.FieldByName('shaping_rate_notNDS_sum_CHF').Value := koef * sp_shaping_rate_CALC.Parameters.ParamByName('@shaping_rate_notNDS_sum_CHF').Value;
    ClientDS_ShapingRate.FieldByName('shaping_rate_sum_EUR'       ).Value := koef * sp_shaping_rate_CALC.Parameters.ParamByName('@shaping_rate_sum_EUR').Value;
    ClientDS_ShapingRate.FieldByName('shaping_rate_NDS_sum_EUR'   ).Value := koef * sp_shaping_rate_CALC.Parameters.ParamByName('@shaping_rate_NDS_sum_EUR').Value;
    ClientDS_ShapingRate.FieldByName('shaping_rate_notNDS_sum_EUR').Value := koef * sp_shaping_rate_CALC.Parameters.ParamByName('@shaping_rate_notNDS_sum_EUR').Value;
    ClientDS_ShapingRate.Post;

    sp_shaping_rate_CALC.Free;
  end;
end;

procedure TfmAgreeAdd2.CalcSum();
var ClientDS_temp: TClientDataSet;
    sum_client : currency;
    sum_agent  : currency;
    field_name : string;
    id         : integer;
    count_vagon  : integer;
    count_weight : Double;
    count_day    : integer;
begin
  sum_client := 0;
  sum_agent  := 0;

  if cxLookupComboBox3.EditValue = null then Exit;


  case cxLookupComboBox3.EditValue of
     1: field_name := 'shaping_rate_notNDS_sum_USD';
     3: field_name := 'shaping_rate_notNDS_sum_RUB';
     5: field_name := 'shaping_rate_notNDS_sum_CHF';
     6: field_name := 'shaping_rate_notNDS_sum_EUR';
    else field_name := '';
  end;

  if field_name = '' then begin
    Application.MessageBox('Выберите валюту перевозки!', 'Внимание', MB_ICONWARNING or MB_OK);
    Exit;
  end;

  count_vagon  := 0;
  count_weight := 0;
  count_day    := 0;

  ClientDS_temp := TClientDataSet.Create(nil);
  ClientDS_temp.Data := ClientDS_ShapingRate.Data;
  ClientDS_temp.First;
  while not ClientDS_temp.Eof do begin
    if ClientDS_temp.FieldByName('service_type').AsInteger = 0 then sum_client := sum_client + ClientDS_temp.FieldByName(field_name).AsCurrency;
    if ClientDS_temp.FieldByName('service_type').AsInteger = 1 then sum_agent  := sum_agent  + ClientDS_temp.FieldByName(field_name).AsCurrency;

    if ClientDS_temp.FieldByName('ed_izm_cod').AsString = '000' then begin
      if count_weight < ClientDS_temp.FieldByName('shaping_rate_count').Value then count_weight := ClientDS_temp.FieldByName('shaping_rate_count').Value;
    end;

    if (ClientDS_temp.FieldByName('ed_izm_cod').AsString = '001') or (ClientDS_temp.FieldByName('ed_izm_cod').AsString = '002') or (ClientDS_temp.FieldByName('ed_izm_cod').AsString = '003') then begin
      if count_vagon < ClientDS_temp.FieldByName('shaping_rate_count').Value then count_vagon := ClientDS_temp.FieldByName('shaping_rate_count').Value;
    end;

    if ClientDS_temp.FieldByName('ed_izm_cod').AsString = '004' then begin
      if count_day < ClientDS_temp.FieldByName('shaping_rate_count').Value then count_day := ClientDS_temp.FieldByName('shaping_rate_count').Value;
    end;


    ClientDS_temp.Next;
  end;
  ClientDS_temp.Free;

  sum_agent := sum_agent * (-1);

  cxCurrencyEdit1.EditValue := sum_client;
  cxCurrencyEdit4.EditValue := sum_agent;
  cxCurrencyEdit2.EditValue := sum_client - sum_agent;

  cxCurrencyEdit3.EditValue  := count_weight;
  cxCurrencyEdit15.EditValue := count_vagon;
  cxCurrencyEdit16.EditValue := count_day;

   if cxLookupComboBox3.EditValue <> null then begin
    cxGrid1DBBandedTableView1shaping_rate_sum_USD.Visible := False;
    cxGrid1DBBandedTableView1shaping_rate_sum_RUB.Visible := False;
    cxGrid1DBBandedTableView1shaping_rate_sum_CHF.Visible := False;
    cxGrid1DBBandedTableView1shaping_rate_sum_EUR.Visible := False;

    cxGrid1DBBandedTableView1shaping_rate_notNDS_sum_USD.Visible := False;
    cxGrid1DBBandedTableView1shaping_rate_notNDS_sum_RUB.Visible := False;
    cxGrid1DBBandedTableView1shaping_rate_notNDS_sum_CHF.Visible := False;
    cxGrid1DBBandedTableView1shaping_rate_notNDS_sum_EUR.Visible := False;

    case cxLookupComboBox3.EditValue of
      1: begin
//            cxGrid1DBBandedTableView1brief_name_alt.Styles.Content := fmMain.cxStyle_Sum_USD;
            cxGrid1DBBandedTableView1shaping_rate_notNDS_sum_USD.Visible := True;
            cxGrid1DBBandedTableView1shaping_rate_notNDS_sum_USD.Position.ColIndex := 2;
         end;
      3: begin
//          cxGrid1DBBandedTableView1brief_name_alt.Styles.Content := fmMain.cxStyle_Sum_RUB;
          cxGrid1DBBandedTableView1shaping_rate_notNDS_sum_RUB.Visible := True;
          cxGrid1DBBandedTableView1shaping_rate_notNDS_sum_RUB.Position.ColIndex := 2;
         end;
      5: begin
//          cxGrid1DBBandedTableView1brief_name_alt.Styles.Content := fmMain.cxStyle_Sum_CHF;
          cxGrid1DBBandedTableView1shaping_rate_notNDS_sum_CHF.Visible := True;
          cxGrid1DBBandedTableView1shaping_rate_notNDS_sum_CHF.Position.ColIndex := 2;
         end;
      6: begin
//          cxGrid1DBBandedTableView1brief_name_alt.Styles.Content := fmMain.cxStyle_Sum_EUR;
          cxGrid1DBBandedTableView1shaping_rate_notNDS_sum_EUR.Visible := True;
          cxGrid1DBBandedTableView1shaping_rate_notNDS_sum_EUR.Position.ColIndex := 2;
         end;
    end;

//    ClientDS_Add.DisableControls;
//    id := ClientDS_Add.FieldByName('id').AsInteger;
//    ClientDS_Add.First;
//    while not ClientDS_Add.Eof do begin
//      ClientDS_Add.Edit;
//      ClientDS_Add.FieldByName('brief_name_alt').Value := cxLookupComboBox3.Text;
//      ClientDS_Add.Post;
//
//      ClientDS_Add.Next;
//    end;
//    ClientDS_Add.Locate('id', id, []);
//    ClientDS_Add.EnableControls;
  end;
end;

procedure TfmAgreeAdd2.ChangeAddContract();
var    contract_id : integer;
   shaping_rate_id : integer;
        set_change : boolean;
begin
  contract_id     := iif(cxLookupComboBox1.EditValue = null, -9, cxLookupComboBox1.EditValue);
  shaping_rate_id := ClientDS_ShapingRate.FieldByName('id').AsInteger;

  ClientDS_ShapingRate.DisableControls;
  ClientDS_ShapingRate.First;
  Query_Client.Locate('contract_id', contract_id, []);
  while not ClientDS_ShapingRate.Eof do begin

    if ClientDS_ShapingRate.FieldByName('service_type').AsInteger = 0 then begin

      ClientDS_ShapingRate.Edit;
      if contract_id = -9 then begin
        ClientDS_ShapingRate.FieldByName('contract_agent_id'          ).Value := null;
        ClientDS_ShapingRate.FieldByName('contract_cod'               ).Value := null;
        ClientDS_ShapingRate.FieldByName('firm_self_name'             ).Value := null;
        ClientDS_ShapingRate.FieldByName('firm_customer_name'         ).Value := null;
      end else begin
        ClientDS_ShapingRate.FieldByName('contract_agent_id'          ).Value := Query_Client.FieldByName('contract_id').Value;
        ClientDS_ShapingRate.FieldByName('contract_cod'               ).Value := Query_Client.FieldByName('contract_cod').Value;
        ClientDS_ShapingRate.FieldByName('firm_self_name'             ).Value := Query_Client.FieldByName('firm_self_name').Value;
        ClientDS_ShapingRate.FieldByName('firm_customer_name'         ).Value := Query_Client.FieldByName('firm_customer_name').Value;
      end;

      ClientDS_ShapingRate.Post;

    end;

    ClientDS_ShapingRate.Next;
  end;

  ClientDS_ShapingRate.Locate('id', shaping_rate_id, []);
  ClientDS_ShapingRate.EnableControls;
end;

procedure TfmAgreeAdd2.ChangeAddKargoETSNG();
var shaping_rate_id : integer;
begin
  shaping_rate_id := ClientDS_ShapingRate.FieldByName('id').AsInteger;

  ClientDS_ShapingRate.DisableControls;
  ClientDS_ShapingRate.First;
  while not ClientDS_ShapingRate.Eof do begin
    ClientDS_ShapingRate.Edit;
    ClientDS_ShapingRate.FieldByName('kargoETSNG_id'        ).Value := iif(FkargoETSNG_id=-9, null, FkargoETSNG_id);
    ClientDS_ShapingRate.FieldByName('kargoETSNG_cod'       ).Value := iif(FkargoETSNG_id=-9, null, cxButtonEdit6.EditValue);
    ClientDS_ShapingRate.FieldByName('kargoETSNG_name'      ).Value := iif(FkargoETSNG_id=-9, null, cxButtonEdit5.EditValue);
    ClientDS_ShapingRate.FieldByName('kargoETSNG_group_name').Value := iif(FkargoETSNG_id=-9, null, cxTextEdit14.EditValue);
    ClientDS_ShapingRate.Post;

    ClientDS_ShapingRate.Next;
  end;

  ClientDS_ShapingRate.Locate('id', shaping_rate_id, []);
  ClientDS_ShapingRate.EnableControls;
end;

procedure TfmAgreeAdd2.ChangeAddKargoETSNGAdd();
var shaping_rate_id : integer;
begin
  shaping_rate_id := ClientDS_ShapingRate.FieldByName('id').AsInteger;

  ClientDS_ShapingRate.DisableControls;
  ClientDS_ShapingRate.First;
  while not ClientDS_ShapingRate.Eof do begin
    ClientDS_ShapingRate.Edit;
    ClientDS_ShapingRate.FieldByName('kargoETSNG_add_id'   ).Value := iif(FkargoETSNG_add_id=-9, null, FkargoETSNG_add_id);
    ClientDS_ShapingRate.FieldByName('kargoETSNG_add_cod'  ).Value := iif(FkargoETSNG_add_id=-9, null, cxButtonEdit12.EditValue);
    ClientDS_ShapingRate.FieldByName('kargoETSNG_add_name' ).Value := iif(FkargoETSNG_add_id=-9, null, cxButtonEdit11.EditValue);
    ClientDS_ShapingRate.Post;

    ClientDS_ShapingRate.Next;
  end;

  ClientDS_ShapingRate.Locate('id', shaping_rate_id, []);
  ClientDS_ShapingRate.EnableControls;
end;

procedure TfmAgreeAdd2.ChangeAddKargoGNG();
var shaping_rate_id : integer;
begin
  shaping_rate_id := ClientDS_ShapingRate.FieldByName('id').AsInteger;

  ClientDS_ShapingRate.DisableControls;
  ClientDS_ShapingRate.First;
  while not ClientDS_ShapingRate.Eof do begin
    ClientDS_ShapingRate.Edit;
    ClientDS_ShapingRate.FieldByName('kargoGNG_id'   ).Value := iif(FkargoGNG_id=-9, null, FkargoGNG_id);
    ClientDS_ShapingRate.FieldByName('kargoGNG_cod'  ).Value := iif(FkargoGNG_id=-9, null, cxButtonEdit7.EditValue);
    ClientDS_ShapingRate.FieldByName('kargoGNG_name' ).Value := iif(FkargoGNG_id=-9, null, cxButtonEdit8.EditValue);
    ClientDS_ShapingRate.Post;

    ClientDS_ShapingRate.Next;
  end;

  ClientDS_ShapingRate.Locate('id', shaping_rate_id, []);
  ClientDS_ShapingRate.EnableControls;
end;

procedure TfmAgreeAdd2.ChangeAddNodeBegin();
var shaping_rate_id : integer;
begin
  shaping_rate_id := ClientDS_ShapingRate.FieldByName('id').AsInteger;

  ClientDS_ShapingRate.DisableControls;
  ClientDS_ShapingRate.First;
  while not ClientDS_ShapingRate.Eof do begin
    ClientDS_ShapingRate.Edit;
    ClientDS_ShapingRate.FieldByName('node_begin_id'   ).Value := iif(Fnode_begin_id=-9, null, Fnode_begin_id);
    ClientDS_ShapingRate.FieldByName('node_begin_cod'  ).Value := iif(Fnode_begin_id=-9, null, cxTextEdit9.EditValue);
    ClientDS_ShapingRate.FieldByName('node_begin_name' ).Value := iif(Fnode_begin_id=-9, null, cxButtonEdit2.EditValue);
    ClientDS_ShapingRate.Post;

    ClientDS_ShapingRate.Next;
  end;

  ClientDS_ShapingRate.Locate('id', shaping_rate_id, []);
  ClientDS_ShapingRate.EnableControls;
end;

procedure TfmAgreeAdd2.ChangeAddNodeEnd();
var shaping_rate_id : integer;
begin
  shaping_rate_id := ClientDS_ShapingRate.FieldByName('id').AsInteger;

  ClientDS_ShapingRate.DisableControls;
  ClientDS_ShapingRate.First;
  while not ClientDS_ShapingRate.Eof do begin
    ClientDS_ShapingRate.Edit;
    ClientDS_ShapingRate.FieldByName('node_end_id'   ).Value := iif(Fnode_end_id=-9, null, Fnode_end_id);
    ClientDS_ShapingRate.FieldByName('node_end_cod'  ).Value := iif(Fnode_end_id=-9, null, cxTextEdit10.EditValue);
    ClientDS_ShapingRate.FieldByName('node_end_name' ).Value := iif(Fnode_end_id=-9, null, cxButtonEdit3.EditValue);
    ClientDS_ShapingRate.Post;

    ClientDS_ShapingRate.Next;
  end;

  ClientDS_ShapingRate.Locate('id', shaping_rate_id, []);
  ClientDS_ShapingRate.EnableControls;
end;

procedure TfmAgreeAdd2.ChangeAddStateBegin();
var shaping_rate_id : integer;
begin
  shaping_rate_id := ClientDS_ShapingRate.FieldByName('id').AsInteger;

  ClientDS_ShapingRate.DisableControls;
  ClientDS_ShapingRate.First;
  while not ClientDS_ShapingRate.Eof do begin
    ClientDS_ShapingRate.Edit;
    ClientDS_ShapingRate.FieldByName('state_begin_id'   ).Value := iif(Fstate_begin_id=-9, null, Fstate_begin_id);
    ClientDS_ShapingRate.FieldByName('state_begin_name' ).Value := iif(Fstate_begin_id=-9, null, cxButtonEdit1.EditValue);
    ClientDS_ShapingRate.Post;

    ClientDS_ShapingRate.Next;
  end;

  ClientDS_ShapingRate.Locate('id', shaping_rate_id, []);
  ClientDS_ShapingRate.EnableControls;
end;

procedure TfmAgreeAdd2.ChangeAddStateEnd();
var shaping_rate_id : integer;
begin
  shaping_rate_id := ClientDS_ShapingRate.FieldByName('id').AsInteger;

  ClientDS_ShapingRate.DisableControls;
  ClientDS_ShapingRate.First;
  while not ClientDS_ShapingRate.Eof do begin
    ClientDS_ShapingRate.Edit;
    ClientDS_ShapingRate.FieldByName('state_end_id'   ).Value := iif(Fstate_end_id=-9, null, Fstate_end_id);
    ClientDS_ShapingRate.FieldByName('state_end_name' ).Value := iif(Fstate_end_id=-9, null, cxButtonEdit4.EditValue);
    ClientDS_ShapingRate.Post;

    ClientDS_ShapingRate.Next;
  end;

  ClientDS_ShapingRate.Locate('id', shaping_rate_id, []);
  ClientDS_ShapingRate.EnableControls;
end;


procedure TfmAgreeAdd2.ChangeAddDatePeriod();
var shaping_rate_id : integer;
begin
  shaping_rate_id := ClientDS_ShapingRate.FieldByName('id').AsInteger;

  ClientDS_ShapingRate.DisableControls;
  ClientDS_ShapingRate.First;
  while not ClientDS_ShapingRate.Eof do begin
    ClientDS_ShapingRate.Edit;
    ClientDS_ShapingRate.FieldByName('date_period').Value := _GetDatePeriod;
    ClientDS_ShapingRate.Post;

    ClientDS_ShapingRate.Next;
  end;

  ClientDS_ShapingRate.Locate('id', shaping_rate_id, []);
  ClientDS_ShapingRate.EnableControls;

end;

procedure TfmAgreeAdd2.ChangeAddDateService();
var shaping_rate_id : integer;
begin
  shaping_rate_id := ClientDS_ShapingRate.FieldByName('id').AsInteger;

  ClientDS_ShapingRate.DisableControls;
  ClientDS_ShapingRate.First;
  while not ClientDS_ShapingRate.Eof do begin
    ClientDS_ShapingRate.Edit;
    ClientDS_ShapingRate.FieldByName('date_period_service').Value := _GetDateService;
    ClientDS_ShapingRate.Post;

    ClientDS_ShapingRate.Next;
  end;

  ClientDS_ShapingRate.Locate('id', shaping_rate_id, []);
  ClientDS_ShapingRate.EnableControls;
end;

procedure TfmAgreeAdd2.ChangeFiveDaysZFTO();
var shaping_rate_id : integer;
begin
  shaping_rate_id := ClientDS_ShapingRate.FieldByName('id').AsInteger;

  ClientDS_ShapingRate.DisableControls;
  ClientDS_ShapingRate.First;
  while not ClientDS_ShapingRate.Eof do begin
    ClientDS_ShapingRate.Edit;
    ClientDS_ShapingRate.FieldByName('five_days_zfto_id'  ).Value := cxLookupComboBox6.EditValue;
    ClientDS_ShapingRate.FieldByName('five_days_zfto_name').Value := cxLookupComboBox6.Text;
    ClientDS_ShapingRate.Post;

    ClientDS_ShapingRate.Next;
  end;

  ClientDS_ShapingRate.Locate('id', shaping_rate_id, []);
  ClientDS_ShapingRate.EnableControls;
end;

end.

