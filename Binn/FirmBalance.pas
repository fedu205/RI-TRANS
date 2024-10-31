unit FirmBalance;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs, Default,
  ComCtrls, Menus, StdCtrls, ExtCtrls, Db, ADODB, DBClient, Variants,
  cxGridCustomTableView, cxGridTableView, cxGridBandedTableView, cxGridDBBandedTableView, cxClasses, cxControls, cxGridCustomView, cxGridLevel, cxGrid,
  cxPropertiesStore, cxStyles, cxCustomData, cxGraphics, cxFilter, cxData, cxDataStorage, cxEdit, cxDBData, cxContainer, cxLabel, cxLookAndFeelPainters,
  cxButtons, cxCurrencyEdit, cxCalendar, dxBar, cxPC, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxCheckComboBox, dxBarExtItems, cxLookAndFeels, cxSplitter,
  dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
  dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMetropolis, dxSkinMetropolisDark, dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013DarkGray,
  dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus, dxSkinSilver,
  dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008, dxSkinTheAsphaltWorld, dxSkinsDefaultPainters, dxSkinValentine, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue, dxSkinscxPCPainter, dxBarBuiltInMenu, cxNavigator, cxCheckBox, dxSkinsdxBarPainter, dxSkinOffice2016Colorful, dxSkinOffice2016Dark,
  dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark, dxSkinVisualStudio2013Light, cxTLExportLink, cxDataControllerConditionalFormattingRulesManagerDialog,
  dxSkinTheBezier, dxDateRanges, dxSkinOffice2019Colorful, dxScrollbarAnnotations, cxTL, cxTLdxBarBuiltInMenu, cxInplaceContainer, cxTLData, cxDBTL,
  cxBarEditItem, dxSkinBasic, dxSkinOffice2019Black, dxSkinOffice2019DarkGray, dxSkinOffice2019White;

type
  TfmFirmBalance = class(TForm)
    dxBarManager1: TdxBarManager;
    dxBarManager1Bar1: TdxBar;
    dxBarButton1: TdxBarButton;
    dxBarSubItem1: TdxBarSubItem;
    dxBarButton4: TdxBarButton;
    dxBarButton5: TdxBarButton;
    Client_Balance: TClientDataSet;
    DS_Balance: TDataSource;
    Client_Balancecontract_id: TIntegerField;
    Client_Balancecontract_cod: TStringField;
    Client_Balancefirm_customer_name: TStringField;
    Client_Balancefirm_self: TIntegerField;
    Client_Balancefirm_customer: TIntegerField;
    Client_Balancefirm_self_name: TStringField;
    Client_Balancebrief_name: TStringField;
    Client_Balancecurrency_id: TIntegerField;
    Client_Balancecontract_date_begin: TDateTimeField;
    cxPageControl1: TcxPageControl;
    cxTabSheet1: TcxTabSheet;
    cxTabSheet2: TcxTabSheet;
    cxGrid1: TcxGrid;
    cxGrid1DBBandedTableView1: TcxGridDBBandedTableView;
    cxGrid1Level1: TcxGridLevel;
    Client_Error: TClientDataSet;
    IntegerField1: TIntegerField;
    StringField1: TStringField;
    IntegerField2: TIntegerField;
    StringField2: TStringField;
    StringField3: TStringField;
    IntegerField3: TIntegerField;
    StringField4: TStringField;
    StringField5: TStringField;
    DS_Error: TDataSource;
    Client_Errorcomment: TStringField;
    cxGrid2: TcxGrid;
    cxGridDBBandedTableView1: TcxGridDBBandedTableView;
    cxGridDBBandedTableView1contract_id: TcxGridDBBandedColumn;
    cxGridDBBandedTableView1contract_cod: TcxGridDBBandedColumn;
    cxGridDBBandedTableView1firm_customer_name: TcxGridDBBandedColumn;
    cxGridDBBandedTableView1firm_self_name: TcxGridDBBandedColumn;
    cxGridDBBandedTableView1comment: TcxGridDBBandedColumn;
    cxGridDBBandedTableView1firm_customer: TcxGridDBBandedColumn;
    cxGridDBBandedTableView1firm_customer_name_short: TcxGridDBBandedColumn;
    cxGridDBBandedTableView1firm_self: TcxGridDBBandedColumn;
    cxGridDBBandedTableView1firm_self_name_short: TcxGridDBBandedColumn;
    cxGridLevel1: TcxGridLevel;
    Query_Firm: TADOQuery;
    DS_Firm: TDataSource;
    cxPropertiesStore1: TcxPropertiesStore;
    cxGrid1DBBandedTableView1contract_id: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1contract_cod: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1contract_date_begin: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1firm_customer: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1firm_customer_name: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1firm_self: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1firm_self_name: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1brief_name: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1currency_id: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1out_balance_begin: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1out_balance_plan: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1out_balance_fact: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1out_balance_pay: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1out_balance_end: TcxGridDBBandedColumn;
    dxBarSubItem5: TdxBarSubItem;
    Client_Errorcontract_date_begin: TDateField;
    cxGrid1DBBandedTableView1set_credit: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1sum_credit: TcxGridDBBandedColumn;
    Panel2: TPanel;
    GroupBox2: TGroupBox;
    Splitter1: TSplitter;
    DS_BalanceDetailPlan: TDataSource;
    dxBarButton2: TdxBarButton;
    Client_Balanceset_credit: TBooleanField;
    Client_Balancesum_credit: TCurrencyField;
    dxBarPopupMenu1: TdxBarPopupMenu;
    dxBarPopupMenu2: TdxBarPopupMenu;
    dxBarPopupMenu3: TdxBarPopupMenu;
    dxBarButton3: TdxBarButton;
    dxBarSubItem2: TdxBarSubItem;
    dxBarButton6: TdxBarButton;
    dxBarButton7: TdxBarButton;
    dxBarSubItem3: TdxBarSubItem;
    dxBarSubItem4: TdxBarSubItem;
    dxBarButton8: TdxBarButton;
    Panel4: TPanel;
    DS_invoice_balance_bargain: TDataSource;
    dxBarPopupMenu4: TdxBarPopupMenu;
    dxBarSubItem6: TdxBarSubItem;
    Panel6: TPanel;
    DS_invoice_balance_pay: TDataSource;
    cxSplitter2: TcxSplitter;
    cxPageControl2: TcxPageControl;
    cxTabSheet3: TcxTabSheet;
    cxGrid4: TcxGrid;
    cxGridDBBandedTableView2: TcxGridDBBandedTableView;
    cxGridDBBandedTableView2bargain_id: TcxGridDBBandedColumn;
    cxGridDBBandedTableView2bargain_cod: TcxGridDBBandedColumn;
    cxGridDBBandedTableView2date_period_name: TcxGridDBBandedColumn;
    cxGridDBBandedTableView2bargain_sum: TcxGridDBBandedColumn;
    cxGridDBBandedTableView2date_period_finance_name: TcxGridDBBandedColumn;
    cxGridDBBandedTableView2bargain_correct_group: TcxGridDBBandedColumn;
    cxGridDBBandedTableView2bargain_correct_type_name: TcxGridDBBandedColumn;
    cxGridDBBandedTableView2set_return: TcxGridDBBandedColumn;
    cxGridDBBandedTableView2text_reason: TcxGridDBBandedColumn;
    cxGridDBBandedTableView2bargain_sum_not_balance: TcxGridDBBandedColumn;
    cxGridDBBandedTableView2set_bargain_type: TcxGridDBBandedColumn;
    cxGridLevel2: TcxGridLevel;
    cxTabSheet4: TcxTabSheet;
    cxGrid5: TcxGrid;
    cxGridDBBandedTableView3: TcxGridDBBandedTableView;
    cxGridDBBandedTableView3global_id: TcxGridDBBandedColumn;
    cxGridDBBandedTableView3balance_sum: TcxGridDBBandedColumn;
    cxGridDBBandedTableView3pay_date: TcxGridDBBandedColumn;
    cxGridDBBandedTableView3pay_cod: TcxGridDBBandedColumn;
    cxGridLevel3: TcxGridLevel;
    cxTabSheet5: TcxTabSheet;
    cxGrid6: TcxGrid;
    cxGridDBBandedTableView4: TcxGridDBBandedTableView;
    cxGridDBBandedTableView4global_id: TcxGridDBBandedColumn;
    cxGridDBBandedTableView4plan_sum: TcxGridDBBandedColumn;
    cxGridDBBandedTableView4plan_date: TcxGridDBBandedColumn;
    cxGridDBBandedTableView4type_plan: TcxGridDBBandedColumn;
    cxGridLevel4: TcxGridLevel;
    DS_invoice_balance_plan: TDataSource;
    dxBarButton9: TdxBarButton;
    dxBarPopupMenu5: TdxBarPopupMenu;
    dxBarPopupMenu6: TdxBarPopupMenu;
    dxBarSubItem7: TdxBarSubItem;
    dxBarSubItem8: TdxBarSubItem;
    dxBarButton10: TdxBarButton;
    dxBarButton11: TdxBarButton;
    dxBarButton12: TdxBarButton;
    cxGridDBBandedTableView4type_plan_cod: TcxGridDBBandedColumn;
    cxGridDBBandedTableView2bargain_sum_fact_USD: TcxGridDBBandedColumn;
    cxGridDBBandedTableView2brief_name: TcxGridDBBandedColumn;
    cxGridDBBandedTableView2bargain_sum_fact_RUB: TcxGridDBBandedColumn;
    dxBarButton13: TdxBarButton;
    Client_Balanceset_return: TBooleanField;
    cxGrid1DBBandedTableView1set_return: TcxGridDBBandedColumn;
    Client_Errorset_return: TBooleanField;
    cxGridDBBandedTableView1set_return: TcxGridDBBandedColumn;
    dxBarButton_FilterRecords1: TdxBarButton;
    dxBarButton_FilterRecords2: TdxBarButton;
    dxBarButton_FilterRecords3: TdxBarButton;
    dxBarButton_FilterRecords4: TdxBarButton;
    dxBarButton_FilterRecords5: TdxBarButton;
    dxBarButton_FilterRecords6: TdxBarButton;
    dxBarButton14: TdxBarButton;
    Client_Balancenote_credit: TStringField;
    Client_Balancedelta_sum: TCurrencyField;
    cxGrid1DBBandedTableView1note_credit: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1delta_sum: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1delta_percent: TcxGridDBBandedColumn;
    cxTabSheet6: TcxTabSheet;
    DS_invoice_balance_Acts: TDataSource;
    cxGrid7: TcxGrid;
    cxGridDBBandedTableView5: TcxGridDBBandedTableView;
    cxGridDBBandedTableView5acts_id: TcxGridDBBandedColumn;
    cxGridDBBandedTableView5acts_cod: TcxGridDBBandedColumn;
    cxGridDBBandedTableView5acts_type_name: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1date_period_name: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1date_enter: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1FIO_users: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1acts_date: TcxGridDBBandedColumn;
    cxGridDBBandedTableView5date_begin: TcxGridDBBandedColumn;
    cxGridDBBandedTableView5date_end: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1acts_sum: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1acts_brief_name: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1docs_id: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1docs_status_name: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1process_step_name: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1acts_comment: TcxGridDBBandedColumn;
    cxGridLevel5: TcxGridLevel;
    cxPageControl3: TcxPageControl;
    cxTabSheet7: TcxTabSheet;
    cxGrid3: TcxGrid;
    cxGrid3DBBandedTableView1: TcxGridDBBandedTableView;
    cxGrid3DBBandedTableView1balance_id: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1balance_date: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1balance_fact_begin: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1balance_fact_fact: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1balance_fact_pay: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1balance_fact_end: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1balance_fact_plan: TcxGridDBBandedColumn;
    cxGrid3Level1: TcxGridLevel;
    cxTabSheet8: TcxTabSheet;
    cxGrid8: TcxGrid;
    cxGridDBBandedTableView6: TcxGridDBBandedTableView;
    cxGridDBBandedTableView6balance_id: TcxGridDBBandedColumn;
    cxGridDBBandedTableView6balance_date: TcxGridDBBandedColumn;
    cxGridDBBandedTableView6balance_plan_begin: TcxGridDBBandedColumn;
    cxGridDBBandedTableView6balance_plan_pay: TcxGridDBBandedColumn;
    cxGridDBBandedTableView6balance_plan_end: TcxGridDBBandedColumn;
    cxGridDBBandedTableView6balance_plan_plan: TcxGridDBBandedColumn;
    cxGridLevel6: TcxGridLevel;
    cxGridDBBandedTableView6set_balance_plan: TcxGridDBBandedColumn;
    dxBarPopupMenu7: TdxBarPopupMenu;
    dxBarSubItem9: TdxBarSubItem;
    ClientDS_BalanceDetailPlan: TClientDataSet;
    ClientDS_BalanceDetailPlanbalance_id: TIntegerField;
    ClientDS_BalanceDetailPlanbalance_date: TDateField;
    ClientDS_BalanceDetailPlanset_balance_plan: TBooleanField;
    cxGrid1DBBandedTableView1balance_date_begin: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1date_finance_close: TcxGridDBBandedColumn;
    ClientDS_BalanceDetailPlanbalance_plan_begin: TCurrencyField;
    ClientDS_BalanceDetailPlanbalance_plan_plan: TCurrencyField;
    ClientDS_BalanceDetailPlanbalance_plan_pay: TCurrencyField;
    ClientDS_BalanceDetailPlanbalance_plan_end: TCurrencyField;
    ClientDS_BalanceDetailFact: TClientDataSet;
    IntegerField4: TIntegerField;
    DateField1: TDateField;
    DS_BalanceDetailFact: TDataSource;
    ClientDS_BalanceDetailFactbalance_fact_begin: TCurrencyField;
    ClientDS_BalanceDetailFactbalance_fact_fact: TCurrencyField;
    ClientDS_BalanceDetailFactbalance_fact_pay: TCurrencyField;
    ClientDS_BalanceDetailFactbalance_fact_plan: TCurrencyField;
    ClientDS_BalanceDetailFactbalance_fact_end: TCurrencyField;
    Client_Balanceout_balance_begin: TCurrencyField;
    Client_Balanceout_balance_plan_begin: TCurrencyField;
    Client_Balanceout_balance_plan: TCurrencyField;
    Client_Balanceout_balance_fact: TCurrencyField;
    Client_Balanceout_balance_pay: TCurrencyField;
    Client_Balanceout_balance_end: TCurrencyField;
    Client_Balanceout_balance_plan_end: TCurrencyField;
    cxGrid1DBBandedTableView1out_balance_plan_begin: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1out_balance_plan_end: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1date_begin: TcxGridDBBandedColumn;
    Client_Balancedate_finance_close: TStringField;
    Client_Balancebalance_date_begin: TStringField;
    Client_Balancedate_begin: TStringField;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1: TcxStyle;
    cxGridDBBandedTableView2bargain_note: TcxGridDBBandedColumn;
    cxGridDBBandedTableView3pay_comment: TcxGridDBBandedColumn;
    cxGridDBBandedTableView4payment_sum: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1balance_fact_invoice: TcxGridDBBandedColumn;
    cxTabSheet9: TcxTabSheet;
    cxGrid9: TcxGrid;
    cxGridDBBandedTableView7: TcxGridDBBandedTableView;
    cxGridLevel7: TcxGridLevel;
    cxGridDBBandedTableView7bargain_note: TcxGridDBBandedColumn;
    cxGridDBBandedTableView7shaping_rate_id: TcxGridDBBandedColumn;
    cxGridDBBandedTableView7bargain_cod: TcxGridDBBandedColumn;
    cxGridDBBandedTableView7date_balance: TcxGridDBBandedColumn;
    cxGridDBBandedTableView7bargain_sum: TcxGridDBBandedColumn;
    cxGridDBBandedTableView7date_period_finance: TcxGridDBBandedColumn;
    cxGridDBBandedTableView7text_reason: TcxGridDBBandedColumn;
    cxGridDBBandedTableView7bargain_sum_not_balance: TcxGridDBBandedColumn;
    DS_invoice_balance_bargain_add: TDataSource;
    dxBarPopupMenu8: TdxBarPopupMenu;
    dxBarButton21: TdxBarButton;
    dxBarSubItem10: TdxBarSubItem;
    dxBarButton22: TdxBarButton;
    dxBarButton23: TdxBarButton;
    dxBarButton15: TdxBarButton;
    dxBarButton16: TdxBarButton;
    Client_Balancebalance_type: TIntegerField;
    Client_Balancebalance_type_name: TStringField;
    Client_Errorbalance_type: TIntegerField;
    Client_Errorbalance_type_name: TStringField;
    cxGrid1DBBandedTableView1balance_type: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1balance_type_name: TcxGridDBBandedColumn;
    cxGridDBBandedTableView1balance_type_name: TcxGridDBBandedColumn;
    cxGridDBBandedTableView1balance_type: TcxGridDBBandedColumn;
    Client_Balancedelta_percent: TCurrencyField;
    cxGrid3DBBandedTableView1balance_fact_bp: TcxGridDBBandedColumn;
    ClientDS_BalanceDetailFactbalance_fact_bp: TCurrencyField;
    cxGridDBBandedTableView3pay_note: TcxGridDBBandedColumn;
    cxGridDBBandedTableView3pay_num: TcxGridDBBandedColumn;
    cxGridDBBandedTableView3first_pay: TcxGridDBBandedColumn;
    cxGridDBBandedTableView3nds_sum: TcxGridDBBandedColumn;
    cxGridDBBandedTableView3type_nds_name: TcxGridDBBandedColumn;
    cxGridDBBandedTableView3incomming_cod: TcxGridDBBandedColumn;
    cxTabSheet10: TcxTabSheet;
    cxDBTreeList1: TcxDBTreeList;
    DS_BalanceDetail: TDataSource;
    SP_BalanceDetail: TADOStoredProc;
    cxDBTreeList1balance_id: TcxDBTreeListColumn;
    cxDBTreeList1balance_date: TcxDBTreeListColumn;
    cxDBTreeList1balance_parent_id: TcxDBTreeListColumn;
    cxDBTreeList1nds_id: TcxDBTreeListColumn;
    cxDBTreeList1nds_name: TcxDBTreeListColumn;
    cxDBTreeList1balance_fact_begin: TcxDBTreeListColumn;
    cxDBTreeList1balance_fact_fact: TcxDBTreeListColumn;
    cxDBTreeList1balance_fact_pay: TcxDBTreeListColumn;
    cxDBTreeList1balance_fact_plan: TcxDBTreeListColumn;
    cxDBTreeList1balance_fact_end: TcxDBTreeListColumn;
    cxDBTreeList1balance_plan_begin: TcxDBTreeListColumn;
    cxDBTreeList1balance_plan_plan: TcxDBTreeListColumn;
    cxDBTreeList1balance_plan_pay: TcxDBTreeListColumn;
    cxDBTreeList1balance_plan_end: TcxDBTreeListColumn;
    cxDBTreeList1set_balance_plan: TcxDBTreeListColumn;
    cxDBTreeList1balance_fact_bp: TcxDBTreeListColumn;
    dxBarPopupMenu9: TdxBarPopupMenu;
    dxBarButton17: TdxBarButton;
    cxBarEditItem1: TcxBarEditItem;
    dxBarButton18: TdxBarButton;
    dxBarButton19: TdxBarButton;
    dxBarButton20: TdxBarButton;
    dxBarButton24: TdxBarButton;
    dxBarButton25: TdxBarButton;
    cxDBTreeList1set_close_contract: TcxDBTreeListColumn;
    dxBarButton26: TdxBarButton;
    dxBarButton27: TdxBarButton;
    cxGridDBBandedTableView7set_bargain_type: TcxGridDBBandedColumn;
    procedure cxGrid1DBBandedTableView1DataControllerFilterChanged(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure dxBarButton5Click(Sender: TObject);
    procedure dxBarButton4Click(Sender: TObject);
    procedure cxGrid1DBBandedTableView1KeyPress(Sender: TObject; var Key: Char);
    procedure cxGrid1DBBandedTableView1FocusedItemChanged(Sender: TcxCustomGridTableView; APrevFocusedItem,  AFocusedItem: TcxCustomGridTableItem);
    procedure cxGrid1DBBandedTableView1CustomDrawColumnHeader(Sender: TcxGridTableView; ACanvas: TcxCanvas;  AViewInfo: TcxGridColumnHeaderViewInfo; var ADone: Boolean);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cxGrid1DBBandedTableView1FocusedRecordChanged(Sender: TcxCustomGridTableView; APrevFocusedRecord, AFocusedRecord: TcxCustomGridRecord; ANewItemRecordFocusingChanged: Boolean);
    procedure dxBarButton2Click(Sender: TObject);
    procedure dxBarButton3Click(Sender: TObject);
    procedure dxBarButton6Click(Sender: TObject);
    procedure dxBarButton7Click(Sender: TObject);
    procedure dxBarButton8Click(Sender: TObject);
    procedure cxGrid3DBBandedTableView1FocusedRecordChanged(Sender: TcxCustomGridTableView; APrevFocusedRecord, AFocusedRecord: TcxCustomGridRecord; ANewItemRecordFocusingChanged: Boolean);
    procedure cxGrid3DBBandedTableView1CustomDrawCell(Sender: TcxCustomGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
    procedure cxGridDBBandedTableView2CustomDrawCell(Sender: TcxCustomGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
    procedure cxGrid1DBBandedTableView1CustomDrawCell(Sender: TcxCustomGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
    procedure cxGridDBBandedTableView3CustomDrawCell(Sender: TcxCustomGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
    procedure cxPageControl2Change(Sender: TObject);
    procedure cxPageControl1DrawTabEx(AControl: TcxCustomTabControl; ATab: TcxTab; Font: TFont);
    procedure dxBarButton9Click(Sender: TObject);
    procedure dxBarPopupMenu6Popup(Sender: TObject);
    procedure dxBarButton11Click(Sender: TObject);
    procedure dxBarButton12Click(Sender: TObject);
    procedure dxBarButton13Click(Sender: TObject);
    procedure dxBarButton_FilterRecords1Click(Sender: TObject);
    procedure dxBarButton_FilterRecords2Click(Sender: TObject);
    procedure dxBarButton_FilterRecords3Click(Sender: TObject);
    procedure dxBarButton_FilterRecords4Click(Sender: TObject);
    procedure dxBarButton_FilterRecords5Click(Sender: TObject);
    procedure dxBarButton_FilterRecords6Click(Sender: TObject);
    procedure dxBarButton14Click(Sender: TObject);
    procedure cxGridDBBandedTableView6CustomDrawCell(Sender: TcxCustomGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
    procedure cxGridDBBandedTableView6FocusedRecordChanged(Sender: TcxCustomGridTableView; APrevFocusedRecord, AFocusedRecord: TcxCustomGridRecord;   ANewItemRecordFocusingChanged: Boolean);
    procedure cxPageControl3Change(Sender: TObject);
    procedure dxBarButton21Click(Sender: TObject);
    procedure dxBarButton22Click(Sender: TObject);
    procedure dxBarButton23Click(Sender: TObject);
    procedure cxGridDBBandedTableView7CustomDrawCell(Sender: TcxCustomGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
    procedure dxBarButton16Click(Sender: TObject);
    procedure cxGrid1DBBandedTableView1SelectionChanged(Sender: TcxCustomGridTableView);
    procedure cxDBTreeList1SelectionChanged(Sender: TObject);
    procedure dxBarButton17Click(Sender: TObject);
    procedure dxBarButton24Click(Sender: TObject);
    procedure dxBarButton19Click(Sender: TObject);
    procedure dxBarButton26Click(Sender: TObject);
    procedure dxBarButton27Click(Sender: TObject);
  private
    Fdate1, Fdate2  : TDateTime;
    Ftype_balance   : integer;
    Fset_calc       : boolean;
    Fset_balance_bargain : boolean;

    FSP_invoice_balance_bargain : TADOStoredProc;
    FSP_invoice_balance_bargain_add : TADOStoredProc;
    FSP_invoice_balance_pay : TADOStoredProc;
    FSP_invoice_balance_plan : TADOStoredProc;
    FSP_invoice_balance_acts : TADOStoredProc;

    procedure RefreshBalance();

    procedure RefreshDetail();
    procedure RefreshDetailFull();
  public
    constructor Create(AOwner: TApplication; type_balance: byte; flag: boolean);
    procedure   _SetBalance(date_begin: TDateTime; date_end: TDateTime; str_contract_id: string);
    procedure   SetShowPlan(set_show: boolean);
    procedure   SetShowActs(set_show: boolean);
    procedure   SetShowPay(set_show: boolean);
    procedure   SetShowBargain(set_show: boolean);
    property    _GetTypeBalance : integer read  Ftype_balance;
  published
    property _SetShowPlan    : boolean write SetShowPlan;
    property _SetShowPay     : boolean write SetShowPay;
    property _SetShowBargain : boolean write SetShowBargain;
    property _SetShowActs    : boolean write SetShowActs;
  end;

var
  fmFirmBalance: TfmFirmBalance;

implementation
     uses Main, Raznoe, Other, Period, DateUtils, ShellApi, Pay, ContractAdd, PlanClient, OrdersPay, Agree2;
{$R *.DFM}

constructor TfmFirmBalance.Create(AOwner: TApplication; type_balance: byte; flag: boolean);
var Q: TADOQuery;
begin
  Screen.Cursor := crHourglass;
  inherited Create(AOwner);

  Ftype_balance := type_balance;
  Fset_calc     := True;

  cxTabSheet3.TabVisible  := False;
  cxTabSheet9.PageIndex   := 0;
  Fset_balance_bargain    := True;

//  Q := TADOQuery.Create(nil);
//  Q.Connection := fmMain.Lis;
//  Q.SQL.Add('SELECT * FROM view_users WHERE users_name = system_user');
//  Q.Open;
//  if  (Q.FieldByName('users_group_cod').AsString = '8') OR  // Совфрахт-Морские перевозки
//      (Q.FieldByName('users_group_cod').AsString = '1') OR  // Коксохимтранс
//      (Q.FieldByName('users_group_cod').AsString = '28') OR // Совфрахт-Ямал
//      (Q.FieldByName('users_group_cod').AsString = '29') OR // МТС
//      (Q.FieldByName('users_group_cod').AsString = '9') OR // Сотра-Логистика
//      (Q.FieldByName('users_group_cod').AsString = '32') OR // СовфрахтШиппинг
//      (Q.FieldByName('users_group_cod').AsString = '40') OR //
//      (Q.FieldByName('users_group_cod').AsString = '33')    // МА
//  then begin
//    cxTabSheet3.TabVisible := False;
//    cxTabSheet9.PageIndex  := 0;
//    Fset_balance_bargain := False
//  end else begin
//    cxTabSheet9.TabVisible := False;
//    cxTabSheet3.PageIndex  := 0;
//    Fset_balance_bargain := True;
//  end;
//  Q.Free;

  Client_Balance.CreateDataSet;
  Client_Balance.LogChanges := False;

  Client_Error.CreateDataSet;
  Client_Error.LogChanges := False;

  dxBarSubItem5.Caption := StoreRegistryDate(rgLoad, '\Software\Lis1\DateTime\FirmBalance', Fdate1, Fdate2);
  StoreRegistryGrid(rgLoad,'\Software\Lis1\FirmBalance_Grids', cxGrid1DBBandedTableView1);
  StoreRegistryGrid(rgLoad,'\Software\Lis1\FirmBalance_Grids', cxGridDBBandedTableView1);
  StoreRegistryGrid(rgLoad,'\Software\Lis1\FirmBalance_Grids', cxGrid3DBBandedTableView1);
  StoreRegistryGrid(rgLoad,'\Software\Lis1\FirmBalance_Grids', cxGridDBBandedTableView2);

  ClientDS_BalanceDetailPlan.CreateDataSet;
  ClientDS_BalanceDetailPlan.LogChanges := False;
  ClientDS_BalanceDetailFact.CreateDataSet;
  ClientDS_BalanceDetailFact.LogChanges := False;

  // заполняем ComboBox с договорами
  Query_Firm.Connection := fmMain.Lis;
  Query_Firm.Parameters.ParamByName('type_contract').Value := Ftype_balance;
  Query_Firm.Open;
  SetDataForCheckBox(Query_Firm, TcxCheckComboBoxProperties(cxBarEditItem1.Properties));

  // ----------------------------
  FSP_invoice_balance_bargain := TADOStoredProc.Create(nil);
  FSP_invoice_balance_bargain.Connection := fmMain.Lis;
  DS_invoice_balance_bargain.DataSet := FSP_invoice_balance_bargain;

  FSP_invoice_balance_bargain_add := TADOStoredProc.Create(nil);
  FSP_invoice_balance_bargain_add.Connection := fmMain.Lis;
  DS_invoice_balance_bargain_add.DataSet := FSP_invoice_balance_bargain_add;

  FSP_invoice_balance_pay := TADOStoredProc.Create(nil);
  FSP_invoice_balance_pay.Connection := fmMain.Lis;
  DS_invoice_balance_pay.DataSet := FSP_invoice_balance_pay;

  FSP_invoice_balance_plan := TADOStoredProc.Create(nil);
  FSP_invoice_balance_plan.Connection := fmMain.Lis;
  DS_invoice_balance_plan.DataSet := FSP_invoice_balance_plan;

  FSP_invoice_balance_acts := TADOStoredProc.Create(nil);
  FSP_invoice_balance_acts.Connection := fmMain.Lis;
  DS_invoice_balance_Acts.DataSet := FSP_invoice_balance_acts;


  case Ftype_balance of
      0 : begin
            Caption := 'Баланс клиентов';
            cxGridDBBandedTableView1firm_customer_name.Caption := 'Клиент';
            cxGridDBBandedTableView2bargain_sum.DataBinding.FieldName := 'bargain_sum';
            cxGridDBBandedTableView2bargain_sum_not_balance.DataBinding.FieldName := 'bargain_sum_not_balance';
            dxBarButton13.Enabled := True;
          end;
      1 : begin
            Caption := 'Баланс подрядчиков';
            cxGridDBBandedTableView1firm_customer_name.Caption := 'Подрядчик';
            dxBarButton13.Enabled := False;
            cxTabSheet8.TabVisible := False;
          end;
    end;

  if Fset_balance_bargain = False then begin
    case Ftype_balance of
      0 : begin
            FSP_invoice_balance_bargain_add.ProcedureName := 'sp_shp_invoice_balance_GET_new';
            FSP_invoice_balance_bargain.ProcedureName := 'sp_shp_invoice_balance_GET_new';
            FSP_invoice_balance_pay.ProcedureName := 'sp_shp_invoice_balance_GET_new';
            FSP_invoice_balance_plan.ProcedureName := 'sp_shp_invoice_balance_GET_new';
            FSP_invoice_balance_acts.ProcedureName := 'sp_shp_invoice_balance_GET_new';
          end;
      1 : begin
            FSP_invoice_balance_bargain_add.ProcedureName := 'sp_shp_invoice_balance_GET_new';
            FSP_invoice_balance_bargain.ProcedureName := 'sp_shp_invoice_balance_GET_new';
            FSP_invoice_balance_pay.ProcedureName := 'sp_shp_invoice_balance_GET_new';
            FSP_invoice_balance_plan.ProcedureName := 'sp_shp_invoice_balance_GET_new';
            FSP_invoice_balance_acts.ProcedureName := 'sp_shp_invoice_balance_GET_new';
          end;
    end;
  end else begin
    case Ftype_balance of
      0 : begin
            FSP_invoice_balance_bargain_add.ProcedureName := 'SP_invoice_balance_GET_new';
            FSP_invoice_balance_bargain.ProcedureName := 'SP_invoice_balance_GET_new';
            FSP_invoice_balance_pay.ProcedureName := 'SP_invoice_balance_GET_new';
            FSP_invoice_balance_plan.ProcedureName := 'SP_invoice_balance_GET_new';
            FSP_invoice_balance_acts.ProcedureName := 'SP_invoice_balance_GET_new';
          end;
      1 : begin
            FSP_invoice_balance_bargain_add.ProcedureName := 'SP_invoice_balance_GET_new';
            FSP_invoice_balance_bargain.ProcedureName := 'SP_invoice_balance_GET_new';
            FSP_invoice_balance_pay.ProcedureName := 'SP_invoice_balance_GET_new';
            FSP_invoice_balance_plan.ProcedureName := 'SP_invoice_balance_GET_new';
            FSP_invoice_balance_acts.ProcedureName := 'SP_invoice_balance_GET_new';
          end;
    end;
  end;

  cxPageControl1.ActivePageIndex := 0;
  cxPageControl2.ActivePageIndex := 0;
  MonitorEventFormOpen('OPEN_FORM', self.Name, fmMain.Lis, -9);

  Screen.Cursor := crDefault;
end;

procedure TfmFirmBalance.cxDBTreeList1SelectionChanged(Sender: TObject);
begin
  if (dxBarButton2.Down) then begin
    RefreshDetailFull;
  end;
end;

procedure TfmFirmBalance.cxGrid1DBBandedTableView1CustomDrawCell(Sender: TcxCustomGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
  if (cxGrid1DBBandedTableView1delta_sum.Index = AViewInfo.Item.ID) then begin
    ACanvas.Font.Style := [fsBold];
    if AViewInfo.GridRecord.Values[cxGrid1DBBandedTableView1delta_sum.Index] < 0 then
      ACanvas.Font.Color := clRed
    else
      ACanvas.Font.Color := clGreen;
  end;

  if AViewInfo.GridRecord.Selected or AViewInfo.GridRecord.Focused then begin
    ACanvas.Brush.Color := clNavy;
    ACanvas.Font.Color := clWhite;
    if AViewInfo.Focused then ACanvas.Brush.Color := clBlue;
  end;
end;

procedure TfmFirmBalance.cxGrid1DBBandedTableView1CustomDrawColumnHeader(Sender: TcxGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxGridColumnHeaderViewInfo; var ADone: Boolean);
begin
  DrawcxGridColumnOnFocused(Sender, ACanvas, AViewInfo);
end;

procedure TfmFirmBalance.cxGrid1DBBandedTableView1DataControllerFilterChanged(Sender: TObject);
begin
  DrawcxGridColumnOnFiltered(Sender);
end;

procedure TfmFirmBalance.cxGrid1DBBandedTableView1FocusedItemChanged(Sender: TcxCustomGridTableView; APrevFocusedItem, AFocusedItem: TcxCustomGridTableItem);
begin
  Sender.Painter.Invalidate;
end;

procedure TfmFirmBalance.cxGrid1DBBandedTableView1FocusedRecordChanged(Sender: TcxCustomGridTableView; APrevFocusedRecord, AFocusedRecord: TcxCustomGridRecord; ANewItemRecordFocusingChanged: Boolean);
begin
  Screen.Cursor := crHourGlass;
  GroupBox2.Caption := 'Детализация баланса';
  if Fset_calc then
    if (dxBarButton2.Down) AND (AFocusedRecord<>nil) AND ((cxGrid1DBBandedTableView1.GroupedColumnCount = 0) OR (AFocusedRecord.Level <> 0)) then begin
      if AFocusedRecord.Values[cxGrid1DBBandedTableView1contract_id.Index] <> null then begin
        RefreshDetail();
      end;
    end;
  Screen.Cursor := crDefault;
end;

procedure TfmFirmBalance.cxGrid1DBBandedTableView1KeyPress(Sender: TObject; var Key: Char);
begin
  FilterColumnGridOnKeyPress(TcxGridDBBandedTableView(TcxGridSite(Sender).GridView), Key);
end;

procedure TfmFirmBalance.cxGrid1DBBandedTableView1SelectionChanged(Sender: TcxCustomGridTableView);
begin
  Screen.Cursor := crHourGlass;
  GroupBox2.Caption := 'Детализация баланса';
  ClientDS_BalanceDetailFact.EmptyDataSet;
  ClientDS_BalanceDetailPlan.EmptyDataSet;
  if Fset_calc then
    if (dxBarButton2.Down) then begin
      if not cxGrid1DBBandedTableView1contract_id.DataBinding.Field.IsNull then begin
        RefreshDetail();
      end;
    end;
  Screen.Cursor := crDefault;
end;

procedure TfmFirmBalance.cxGrid3DBBandedTableView1CustomDrawCell(Sender: TcxCustomGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
  if AViewInfo.GridRecord.Selected or AViewInfo.GridRecord.Focused then begin
    ACanvas.Brush.Color := clNavy;
    ACanvas.Font.Color := clWhite;
    if AViewInfo.Focused then ACanvas.Brush.Color := clBlue;
  end;
end;

procedure TfmFirmBalance.cxGrid3DBBandedTableView1FocusedRecordChanged(Sender: TcxCustomGridTableView; APrevFocusedRecord, AFocusedRecord: TcxCustomGridRecord; ANewItemRecordFocusingChanged: Boolean);
begin
  if (dxBarButton2.Down) AND (AFocusedRecord<>nil) AND ((cxGrid1DBBandedTableView1.GroupedColumnCount = 0) OR (AFocusedRecord.Level <> 0)) then begin
    RefreshDetailFull;
  end;
end;

procedure TfmFirmBalance.cxGridDBBandedTableView2CustomDrawCell(Sender: TcxCustomGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
  if not (AViewInfo.GridRecord.Values[cxGridDBBandedTableView2set_bargain_type.Index]) then begin
    ACanvas.Font.Color := clGrayText;
  end;

  if AViewInfo.GridRecord.Selected or AViewInfo.GridRecord.Focused then begin
    ACanvas.Brush.Color := clNavy;
    ACanvas.Font.Color := clWhite;
    if AViewInfo.Focused then ACanvas.Brush.Color := clBlue;
  end;
end;

procedure TfmFirmBalance.cxGridDBBandedTableView3CustomDrawCell(Sender: TcxCustomGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
  if AViewInfo.GridRecord.Selected or AViewInfo.GridRecord.Focused then begin
    ACanvas.Brush.Color := clNavy;
    ACanvas.Font.Color := clWhite;
    if AViewInfo.Focused then ACanvas.Brush.Color := clBlue;
  end;
end;

procedure TfmFirmBalance.cxGridDBBandedTableView6CustomDrawCell(Sender: TcxCustomGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
  if (AViewInfo.GridRecord.Values[cxGridDBBandedTableView6set_balance_plan.Index] = True) then ACanvas.Font.Style := [fsBold]
  else ACanvas.Font.Color := clGray;

  if AViewInfo.GridRecord.Selected or AViewInfo.GridRecord.Focused then begin
    ACanvas.Brush.Color := clNavy;
    ACanvas.Font.Color := clWhite;
    if AViewInfo.Focused then ACanvas.Brush.Color := clBlue;
  end;
end;

procedure TfmFirmBalance.cxGridDBBandedTableView6FocusedRecordChanged(Sender: TcxCustomGridTableView; APrevFocusedRecord, AFocusedRecord: TcxCustomGridRecord; ANewItemRecordFocusingChanged: Boolean);
begin
  if (dxBarButton2.Down) AND (AFocusedRecord<>nil) AND ((cxGridDBBandedTableView6.GroupedColumnCount = 0) OR (AFocusedRecord.Level <> 0)) then begin
    RefreshDetailFull;
  end;
end;

procedure TfmFirmBalance.cxGridDBBandedTableView7CustomDrawCell(Sender: TcxCustomGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
  if not (AViewInfo.GridRecord.Values[cxGridDBBandedTableView7set_bargain_type.Index]) then begin
    ACanvas.Font.Color := clGrayText;
  end;


	if AViewInfo.GridRecord.Selected or AViewInfo.GridRecord.Focused then begin
		ACanvas.Brush.Color := clNavy;
		ACanvas.Font.Color := clWhite;
		if AViewInfo.Focused then ACanvas.Brush.Color := clBlue;
	end;
end;

procedure TfmFirmBalance.cxPageControl1DrawTabEx(AControl: TcxCustomTabControl; ATab: TcxTab; Font: TFont);
begin
  if Client_Error.Active then
    if (Client_Error.RecordCount > 0) and (ATab.Index = 1) then Font.Style := [fsBold];
end;

procedure TfmFirmBalance.cxPageControl2Change(Sender: TObject);
begin
  RefreshDetailFull;
end;

procedure TfmFirmBalance.cxPageControl3Change(Sender: TObject);
begin
  RefreshDetailFull;
end;

procedure TfmFirmBalance.RefreshDetail();
var                    cnt : integer;
    SP_invoice_balance_GET : TADOStoredProc;
begin

  Screen.Cursor := crHourGlass;
  SP_BalanceDetail.Close;
  if cxGrid1DBBandedTableView1contract_id.DataBinding.Field.Value <> null then begin
    SP_BalanceDetail.Parameters.Refresh;
    SP_BalanceDetail.Parameters.ParamByName('@contract_id' ).Value := cxGrid1DBBandedTableView1contract_id.DataBinding.Field.Value;
    SP_BalanceDetail.Parameters.ParamByName('@date_begin'  ).Value := Fdate1;
    SP_BalanceDetail.Parameters.ParamByName('@date_end'    ).Value := Fdate2;
    SP_BalanceDetail.Parameters.ParamByName('@type_result' ).Value := 1;
    case Ftype_balance of
      0:  SP_BalanceDetail.Parameters.ParamByName('@service_type').Value := 0;
      1:  SP_BalanceDetail.Parameters.ParamByName('@service_type').Value := 1;
    end;
    SP_BalanceDetail.Parameters.ParamByName('@set_return'  ).Value := cxGrid1DBBandedTableView1set_return.DataBinding.Field.Value;
    SP_BalanceDetail.Parameters.ParamByName('@balance_type').Value := cxGrid1DBBandedTableView1balance_type.DataBinding.Field.Value;
    SP_BalanceDetail.Open;
  end;
  Screen.Cursor := crDefault;


//  Screen.Cursor := crHourGlass;
//  if cxGrid1DBBandedTableView1contract_id.DataBinding.Field.Value <> null then begin
//
//    SP_invoice_balance_GET := TADOStoredProc.Create(nil);
//    SP_invoice_balance_GET.Connection := fmMain.Lis;
////    //SP_invoice_balance_GET.ProcedureName := 'sp_invoice_balance_GET_new';
//
//    case Ftype_balance of
//      0:  SP_invoice_balance_GET.ProcedureName := 'sp_invoice_balance_GET_new';
//      1:  SP_invoice_balance_GET.ProcedureName := 'sp_invoice_balance_GET_agent';
//    end;
//    SP_invoice_balance_GET.Parameters.Refresh;
//    SP_invoice_balance_GET.Parameters.ParamByName('@contract_id' ).Value := cxGrid1DBBandedTableView1contract_id.DataBinding.Field.Value;
//    SP_invoice_balance_GET.Parameters.ParamByName('@date_begin'  ).Value := Fdate1;
//    SP_invoice_balance_GET.Parameters.ParamByName('@date_end'    ).Value := Fdate2;
//    SP_invoice_balance_GET.Parameters.ParamByName('@type_result' ).Value := 1;
//    SP_invoice_balance_GET.Parameters.ParamByName('@set_return'  ).Value := cxGrid1DBBandedTableView1set_return.DataBinding.Field.Value;
//    SP_invoice_balance_GET.Parameters.ParamByName('@balance_type').Value := cxGrid1DBBandedTableView1balance_type.DataBinding.Field.Value;
//    SP_invoice_balance_GET.Open;
//
//////    ShowMessage(SP_invoice_balance_GET.Parameters.ParamByName('@str_message').Value);
////
////    cxGrid3DBBandedTableView1.Controller.GoToFirst;
////    if cxGrid3DBBandedTableView1.Controller.FocusedRecord <> nil then  cxGrid3DBBandedTableView1.Controller.FocusedRecord.Selected := True;
////
////    cxGridDBBandedTableView6.Controller.GoToFirst;
////    if cxGridDBBandedTableView6.Controller.FocusedRecord <> nil then  cxGridDBBandedTableView6.Controller.FocusedRecord.Selected := True;
////
//    GroupBox2.Caption := 'Детализация баланса:  ' + VarToStr(cxGrid1DBBandedTableView1firm_customer_name.DataBinding.Field.Value) + '  (' + VarToStr(cxGrid1DBBandedTableView1brief_name.DataBinding.Field.Value) + ')';
//  end;
//  Screen.Cursor := crDefault;
end;

procedure TfmFirmBalance.RefreshDetailFull();
var balance_date: TDateTime;
    sp_name: string;
begin
  Screen.Cursor := crHourGlass;
  if FSP_invoice_balance_bargain <> nil then begin
    FSP_invoice_balance_bargain.Close;
    FSP_invoice_balance_bargain_add.Close;
    FSP_invoice_balance_pay.Close;
    FSP_invoice_balance_plan.Close;
    FSP_invoice_balance_acts.Close;
    if Fset_calc then
      if (not cxGrid1DBBandedTableView1contract_id.DataBinding.Field.IsNull) then begin

//        if  cxPageControl3.ActivePage = cxTabSheet7 then begin
//          if (not cxGrid3DBBandedTableView1balance_date.DataBinding.Field.IsNull) then balance_date := cxGrid3DBBandedTableView1balance_date.DataBinding.Field.Value
//          else exit;
//        end;
//
//        if  cxPageControl3.ActivePage = cxTabSheet8 then begin
//          if (not cxGridDBBandedTableView6balance_date.DataBinding.Field.IsNull) then balance_date := cxGridDBBandedTableView6balance_date.DataBinding.Field.Value
//          else exit;
//        end;

        if (not cxDBTreeList1balance_date.DataBinding.Field.IsNull) then
          balance_date := cxDBTreeList1balance_date.DataBinding.Field.Value
        else
          exit;


        if cxPageControl2.ActivePage = cxTabSheet3 then begin
          sp_name := FSP_invoice_balance_bargain.ProcedureName;
          FSP_invoice_balance_bargain.Free;
          FSP_invoice_balance_bargain := TADOStoredProc.Create(nil);
          FSP_invoice_balance_bargain.Connection := fmMain.Lis;
          FSP_invoice_balance_bargain.ProcedureName := sp_name;
          FSP_invoice_balance_bargain.Parameters.Refresh;
          FSP_invoice_balance_bargain.Parameters.ParamByName('@contract_id' ).Value := cxGrid1DBBandedTableView1contract_id.DataBinding.Field.AsInteger;
          FSP_invoice_balance_bargain.Parameters.ParamByName('@date_begin'  ).Value := balance_date;
          FSP_invoice_balance_bargain.Parameters.ParamByName('@date_end'    ).Value := balance_date;
          FSP_invoice_balance_bargain.Parameters.ParamByName('@type_result' ).Value := 4;
          FSP_invoice_balance_bargain.Parameters.ParamByName('@set_return'  ).Value := cxGrid1DBBandedTableView1set_return.DataBinding.Field.Value;
          FSP_invoice_balance_bargain.Parameters.ParamByName('@balance_type').Value := cxGrid1DBBandedTableView1balance_type.DataBinding.Field.Value;
          case Ftype_balance of
            0:  FSP_invoice_balance_bargain.Parameters.ParamByName('@service_type').Value := 0;
            1:  FSP_invoice_balance_bargain.Parameters.ParamByName('@service_type').Value := 1;
          end;
          try
            FSP_invoice_balance_bargain.Open;
            DS_invoice_balance_bargain.DataSet := FSP_invoice_balance_bargain;
          except
          end;
        end;

        if cxPageControl2.ActivePage = cxTabSheet9 then begin
          sp_name := FSP_invoice_balance_bargain_add.ProcedureName;
          FSP_invoice_balance_bargain_add.Free;
          FSP_invoice_balance_bargain_add := TADOStoredProc.Create(nil);
          FSP_invoice_balance_bargain_add.Connection := fmMain.Lis;
          FSP_invoice_balance_bargain_add.ProcedureName := sp_name;
          FSP_invoice_balance_bargain_add.Parameters.Refresh;
          FSP_invoice_balance_bargain_add.Parameters.ParamByName('@contract_id' ).Value := cxGrid1DBBandedTableView1contract_id.DataBinding.Field.AsInteger;
          FSP_invoice_balance_bargain_add.Parameters.ParamByName('@date_begin'  ).Value := balance_date;
          FSP_invoice_balance_bargain_add.Parameters.ParamByName('@date_end'    ).Value := balance_date;
          FSP_invoice_balance_bargain_add.Parameters.ParamByName('@type_result' ).Value := 6;
          FSP_invoice_balance_bargain_add.Parameters.ParamByName('@balance_type').Value := cxGrid1DBBandedTableView1balance_type.DataBinding.Field.Value;
          case Ftype_balance of
            0:  FSP_invoice_balance_bargain_add.Parameters.ParamByName('@service_type').Value := 0;
            1:  FSP_invoice_balance_bargain_add.Parameters.ParamByName('@service_type').Value := 1;
          end;
          try
            FSP_invoice_balance_bargain_add.Open;
            DS_invoice_balance_bargain_add.DataSet := FSP_invoice_balance_bargain_add;
          except
          end;
        end;

        if cxPageControl2.ActivePage = cxTabSheet4 then begin
          sp_name := FSP_invoice_balance_pay.ProcedureName;
          FSP_invoice_balance_pay.Free;
          FSP_invoice_balance_pay := TADOStoredProc.Create(nil);
          FSP_invoice_balance_pay.Connection := fmMain.Lis;
          FSP_invoice_balance_pay.ProcedureName := sp_name;
          FSP_invoice_balance_pay.Parameters.Refresh;
          FSP_invoice_balance_pay.Parameters.ParamByName('@contract_id' ).Value := cxGrid1DBBandedTableView1contract_id.DataBinding.Field.AsInteger;
          FSP_invoice_balance_pay.Parameters.ParamByName('@date_begin'  ).Value := balance_date;
          FSP_invoice_balance_pay.Parameters.ParamByName('@date_end'    ).Value := balance_date;
          FSP_invoice_balance_pay.Parameters.ParamByName('@type_result' ).Value := 3;
          FSP_invoice_balance_pay.Parameters.ParamByName('@set_return'  ).Value := cxGrid1DBBandedTableView1set_return.DataBinding.Field.Value;
          FSP_invoice_balance_pay.Parameters.ParamByName('@balance_type').Value := cxGrid1DBBandedTableView1balance_type.DataBinding.Field.Value;
          case Ftype_balance of
            0:  FSP_invoice_balance_pay.Parameters.ParamByName('@service_type').Value := 0;
            1:  FSP_invoice_balance_pay.Parameters.ParamByName('@service_type').Value := 1;
          end;
          try
            FSP_invoice_balance_pay.Open;
            DS_invoice_balance_pay.DataSet := FSP_invoice_balance_pay;
          except
          end;
        end;

        if cxPageControl2.ActivePage = cxTabSheet5 then begin
          sp_name := FSP_invoice_balance_plan.ProcedureName;
          FSP_invoice_balance_plan.Free;
          FSP_invoice_balance_plan := TADOStoredProc.Create(nil);
          FSP_invoice_balance_plan.Connection := fmMain.Lis;
          FSP_invoice_balance_plan.ProcedureName := sp_name;
          FSP_invoice_balance_plan.Parameters.Refresh;
          FSP_invoice_balance_plan.Parameters.ParamByName('@contract_id' ).Value := cxGrid1DBBandedTableView1contract_id.DataBinding.Field.AsInteger;
          FSP_invoice_balance_plan.Parameters.ParamByName('@date_begin'  ).Value := balance_date;
          FSP_invoice_balance_plan.Parameters.ParamByName('@date_end'    ).Value := balance_date;
          FSP_invoice_balance_plan.Parameters.ParamByName('@type_result' ).Value := 0;
          FSP_invoice_balance_plan.Parameters.ParamByName('@set_return'  ).Value := cxGrid1DBBandedTableView1set_return.DataBinding.Field.Value;
          FSP_invoice_balance_plan.Parameters.ParamByName('@balance_type').Value := cxGrid1DBBandedTableView1balance_type.DataBinding.Field.Value;
          case Ftype_balance of
            0:  FSP_invoice_balance_plan.Parameters.ParamByName('@service_type').Value := 0;
            1:  FSP_invoice_balance_plan.Parameters.ParamByName('@service_type').Value := 1;
          end;
          try
            FSP_invoice_balance_plan.Open;
            DS_invoice_balance_plan.DataSet := FSP_invoice_balance_plan;
          except
          end;
        end;

        if cxPageControl2.ActivePage = cxTabSheet6 then begin
          sp_name := FSP_invoice_balance_acts.ProcedureName;
          FSP_invoice_balance_acts.Free;
          FSP_invoice_balance_acts := TADOStoredProc.Create(nil);
          FSP_invoice_balance_acts.Connection := fmMain.Lis;
          FSP_invoice_balance_acts.ProcedureName := sp_name;
          FSP_invoice_balance_acts.Parameters.Refresh;
          FSP_invoice_balance_acts.Parameters.ParamByName('@contract_id' ).Value := cxGrid1DBBandedTableView1contract_id.DataBinding.Field.AsInteger;
          FSP_invoice_balance_acts.Parameters.ParamByName('@date_begin'  ).Value := balance_date;
          FSP_invoice_balance_acts.Parameters.ParamByName('@date_end'    ).Value := balance_date;
          FSP_invoice_balance_acts.Parameters.ParamByName('@type_result' ).Value := 5;
          FSP_invoice_balance_acts.Parameters.ParamByName('@set_return'  ).Value := cxGrid1DBBandedTableView1set_return.DataBinding.Field.Value;
          FSP_invoice_balance_acts.Parameters.ParamByName('@balance_type').Value := cxGrid1DBBandedTableView1balance_type.DataBinding.Field.Value;
          case Ftype_balance of
            0:  FSP_invoice_balance_acts.Parameters.ParamByName('@service_type').Value := 0;
            1:  FSP_invoice_balance_acts.Parameters.ParamByName('@service_type').Value := 1;
          end;
          try
            FSP_invoice_balance_acts.Open;
            DS_invoice_balance_acts.DataSet := FSP_invoice_balance_acts;
          except
          end;
        end;
      end;
  end;
  Screen.Cursor := crDefault;
end;

procedure TfmFirmBalance.RefreshBalance();
var          Query : TADOQuery;
    SP_balance_GET : TADOStoredProc;
   str_contract_id : string;
               i,k : integer;
      date1, date2 : TDateTime;
        set_return : boolean;
  cnt_balance_type : integer;
      balance_type : integer;
 balance_type_name : string;
       currency_id : integer;
           AStates : TcxCheckStates;
begin
  Client_Balance.EmptyDataSet;
  Client_Error.EmptyDataSet;

   if cxBarEditItem1.Caption = '(Выберите договоры)' then
    exit;

  Fset_calc := False;
  Screen.Cursor := crHourglass;

  date1 := StartOfTheMonth(Date);
  date2 := EndOfTheMonth(Date);

  date1 := Fdate1;
  date2 := Fdate2;

//  cxGrid1DBBandedTableView1.GetColumnByFieldName('out_balance_begin'    ).Caption := '(1) На начало (' + DateToStr(date1) + ')';
//  cxGrid1DBBandedTableView1.GetColumnByFieldName('out_balance_end'      ).Caption := '(5) Баланс факт (' + DateToStr(date2) + ')';
//  cxGrid1DBBandedTableView1.GetColumnByFieldName('out_balance_plan_end' ).Caption := '(6) Баланс план (' + DateToStr(date2) + ')';

  SP_balance_GET := TADOStoredProc.Create(nil);
  SP_balance_GET.Connection := fmMain.Lis;
  if Fset_balance_bargain then begin
    cnt_balance_type := 1;
    case Ftype_balance of
      0:  SP_balance_GET.ProcedureName    := 'sp_invoice_balance_GET_new';
      1:  SP_balance_GET.ProcedureName    := 'sp_invoice_balance_GET_agent';
    end;
  end else begin
    cnt_balance_type := 2;
    case Ftype_balance of
      0:  SP_balance_GET.ProcedureName    := 'sp_shp_invoice_balance_GET_new';
      1:  SP_balance_GET.ProcedureName    := 'sp_shp_invoice_balance_GET_new';
    end;
  end;
  SP_balance_GET.Parameters.Refresh;

  // заполняем строку для id договоров
  CalculateCheckStates(cxBarEditItem1.EditValue, TcxCheckComboBoxProperties(cxBarEditItem1.Properties).Items,
                       TcxCheckComboBoxProperties(cxBarEditItem1.Properties).EditValueFormat , AStates);
  str_contract_id := '';
  for i:=0 to TcxCheckComboBoxProperties(cxBarEditItem1.Properties).Items.Count -  1 do begin
    if AStates[i] = cbsChecked then
      str_contract_id := str_contract_id + ',' + IntToStr(TcxCheckComboBoxProperties(cxBarEditItem1.Properties).Items[i].Tag)
  end;
  Delete(str_contract_id, 1, 1);

  Query := TADOQuery.Create(nil);
  Query.Connection := fmMain.Lis;
  if str_contract_id <> '' then
    Query.SQL.Add('SELECT * FROM view_contract_rights WHERE contract_id in (' + str_contract_id + ')')
  else
    Query.SQL.Add('SELECT * FROM view_contract_rights WHERE 1=0');
  Query.Open;
  Client_Balance.DisableControls;



  while not Query.Eof do begin
    ShowTextMessage('Построение баланса. Осталось ' + IntToStr(Query.RecordCount - Query.RecNo) + ' из ' + IntToStr(Query.RecordCount) + '.' +  #10#13 +
                    Query.FieldByName('firm_customer_name').AsString + ' (' + Query.FieldByName('contract_cod').AsString + ')', False);

    for i := 0 to 1 do begin
      if i = 0 then set_return := False;
      if i = 1 then set_return := True;

      for k := 0 to cnt_balance_type-1 do begin

        if k = 0 then begin
          balance_type := 0;
          balance_type_name := 'Основной';
          currency_id  := iif(Query.FieldByName('currency_id').Value = null, 3, Query.FieldByName('currency_id').AsInteger);
        end;

        if k = 1 then begin
          balance_type := 1;
          balance_type_name := 'Вознаграждение';
          currency_id  := 3; //RUB
        end;

        SP_balance_GET.Parameters.Refresh;
        SP_balance_GET.Parameters.ParamByName('@contract_id' ).Value := Query.FieldByName('contract_id').Value;
        SP_balance_GET.Parameters.ParamByName('@date_begin'  ).Value := date1;
        SP_balance_GET.Parameters.ParamByName('@date_end'    ).Value := date2;
        SP_balance_GET.Parameters.ParamByName('@type_result' ).Value := 10;
        SP_balance_GET.Parameters.ParamByName('@currency_id' ).Value := currency_id;
        SP_balance_GET.Parameters.ParamByName('@set_return'  ).Value := set_return;
        SP_balance_GET.Parameters.ParamByName('@balance_type').Value := balance_type;
        if Fset_balance_bargain = False then begin
          case Ftype_balance of
            0:  SP_balance_GET.Parameters.ParamByName('@service_type').Value := 0;
            1:  SP_balance_GET.Parameters.ParamByName('@service_type').Value := 1;
          end;
        end;



        try
          SP_balance_GET.ExecProc;
          if SP_balance_GET.Parameters.ParamByName('@str_error').Value <> null then begin
            Client_Error.Append;
            Client_Error.FieldByName('contract_id'          ).Value := Query.FieldByName('contract_id').Value;
            Client_Error.FieldByName('contract_cod'         ).Value := Query.FieldByName('contract_cod').Value;
            Client_Error.FieldByName('contract_date_begin'  ).Value := Query.FieldByName('date_begin').Value;
            Client_Error.FieldByName('firm_customer'        ).Value := Query.FieldByName('firm_customer').Value;
            Client_Error.FieldByName('firm_customer_name'   ).Value := Query.FieldByName('firm_customer_name').Value;
            Client_Error.FieldByName('firm_self'            ).Value := Query.FieldByName('firm_self').Value;
            Client_Error.FieldByName('firm_self_name'       ).Value := Query.FieldByName('firm_self_name').Value;
            Client_Error.FieldByName('comment'              ).Value := SP_balance_GET.Parameters.ParamByName('@str_error').Value;
            Client_Error.FieldByName('set_return'           ).Value := set_return;
            Client_Error.FieldByName('balance_type'         ).Value := balance_type;
            Client_Error.FieldByName('balance_type_name'    ).Value := balance_type_name;
            Client_Error.Post;
          end else begin
            Client_Balance.Append;
            Client_Balance.FieldByName('contract_id'          ).Value := Query.FieldByName('contract_id').Value;
            Client_Balance.FieldByName('contract_cod'         ).Value := Query.FieldByName('contract_cod').Value;
            Client_Balance.FieldByName('contract_date_begin'  ).Value := Query.FieldByName('date_begin').Value;
            Client_Balance.FieldByName('firm_customer'        ).Value := Query.FieldByName('firm_customer').Value;
            Client_Balance.FieldByName('firm_customer_name'   ).Value := Query.FieldByName('firm_customer_name').Value;
            Client_Balance.FieldByName('firm_self'            ).Value := Query.FieldByName('firm_self').Value;
            Client_Balance.FieldByName('firm_self_name'       ).Value := Query.FieldByName('firm_self_name').Value;
            Client_Balance.FieldByName('brief_name'           ).Value := Query.FieldByName('brief_name').Value;
            Client_Balance.FieldByName('currency_id'          ).Value := Query.FieldByName('currency_id').Value;
            Client_Balance.FieldByName('set_credit'           ).Value := Query.FieldByName('set_credit').Value;
            Client_Balance.FieldByName('sum_credit'           ).Value := Query.FieldByName('sum_credit').Value;
            Client_Balance.FieldByName('note_credit'          ).Value := Query.FieldByName('note_credit').Value;

            if not Query.FieldByName('date_finance_close').IsNull then
              Client_Balance.FieldByName('date_finance_close'   ).Value := FormatDateTime('mmmm yyyy', Query.FieldByName('date_finance_close').Value);
            if SP_balance_GET.Parameters.ParamByName('@date_begin').Value <> null then
              Client_Balance.FieldByName('date_begin'           ).Value := FormatDateTime('mmmm yyyy', SP_balance_GET.Parameters.ParamByName('@date_begin').Value);
            if SP_balance_GET.Parameters.ParamByName('@balance_date_begin').Value <> null then
              Client_Balance.FieldByName('balance_date_begin'   ).Value := FormatDateTime('mmmm yyyy', SP_balance_GET.Parameters.ParamByName('@balance_date_begin').Value);

            Client_Balance.FieldByName('out_balance_begin'     ).Value := SP_balance_GET.Parameters.ParamByName('@out_balance_begin').Value;
            Client_Balance.FieldByName('out_balance_end'       ).Value := SP_balance_GET.Parameters.ParamByName('@out_balance_end').Value;
            Client_Balance.FieldByName('out_balance_plan'      ).Value := SP_balance_GET.Parameters.ParamByName('@out_balance_plan').Value;
            Client_Balance.FieldByName('out_balance_fact'      ).Value := SP_balance_GET.Parameters.ParamByName('@out_balance_fact').Value;
            Client_Balance.FieldByName('out_balance_pay'       ).Value := SP_balance_GET.Parameters.ParamByName('@out_balance_pay').Value;
            Client_Balance.FieldByName('out_balance_plan_begin').Value := SP_balance_GET.Parameters.ParamByName('@out_balance_plan_begin').Value;
            Client_Balance.FieldByName('out_balance_plan_end'  ).Value := SP_balance_GET.Parameters.ParamByName('@out_balance_plan_end').Value;

            Client_Balance.FieldByName('delta_sum').Value :=
              SP_balance_GET.Parameters.ParamByName('@out_balance_end').Value -
              SP_balance_GET.Parameters.ParamByName('@out_balance_plan_end').Value;

//            if (Client_Balance.FieldByName('delta_sum').AsCurrency < 0) and (Query.FieldByName('sum_credit').AsCurrency > 0) then
//              Client_Balance.FieldByName('delta_percent').Value := abs(Round(Client_Balance.FieldByName('delta_sum').AsCurrency/Query.FieldByName('sum_credit').AsCurrency*100))
//            else
              Client_Balance.FieldByName('delta_percent').Value := null;


            Client_Balance.FieldByName('balance_type'     ).Value := balance_type;
            Client_Balance.FieldByName('balance_type_name').Value := balance_type_name;
            Client_Balance.FieldByName('set_return'       ).Value := set_return;
            Client_Balance.Post;
          end;

        except
          on E: Exception do begin
            Client_Error.Append;
            Client_Error.FieldByName('contract_id'          ).Value := Query.FieldByName('contract_id').Value;
            Client_Error.FieldByName('contract_cod'         ).Value := Query.FieldByName('contract_cod').Value;
            Client_Error.FieldByName('contract_date_begin'  ).Value := Query.FieldByName('date_begin').Value;
            Client_Error.FieldByName('firm_customer'        ).Value := Query.FieldByName('firm_customer').Value;
            Client_Error.FieldByName('firm_customer_name'   ).Value := Query.FieldByName('firm_customer_name').Value;
            Client_Error.FieldByName('firm_self'            ).Value := Query.FieldByName('firm_self').Value;
            Client_Error.FieldByName('firm_self_name'       ).Value := Query.FieldByName('firm_self_name').Value;
            Client_Error.FieldByName('comment'              ).Value := e.Message;
            Client_Error.FieldByName('set_return'           ).Value := set_return;
            Client_Error.FieldByName('balance_type'         ).Value := balance_type;
            Client_Error.FieldByName('balance_type_name'    ).Value := balance_type_name;
            Client_Error.Post;
          end;
        end;
      end;
    end;

    Query.Next;
  end;
  Client_Balance.EnableControls;
  Query.Free;
  SP_balance_GET.Free;
  ShowTextMessage;
  Screen.Cursor := crDefault;
  Fset_calc := True;
  cxPageControl1.Repaint;

  cxGrid1DBBandedTableView1.Controller.GoToFirst;
  if cxGrid1DBBandedTableView1.Controller.FocusedRecord <> nil then  cxGrid1DBBandedTableView1.Controller.FocusedRecord.Selected := True;

  if dxBarButton2.Down then RefreshDetail;
end;

procedure TfmFirmBalance.dxBarButton11Click(Sender: TObject);
var i : integer;
begin
  if not cxGridDBBandedTableView4global_id.DataBinding.Field.IsNull then begin
    for i:=0 to fmMain.MDIChildCount-1 Do
      if (fmMain.MDIChildren[i].ClassName = 'TfmPlanClient') then begin
        fmMain.MDIChildren[i].Free;
        Break;
      end;
    fmPlanClient := TfmPlanClient.Create(Application, False, 0);
    fmPlanClient._LocatePlanClientID := cxGridDBBandedTableView4global_id.DataBinding.Field.AsInteger;
  end;
end;

procedure TfmFirmBalance.dxBarButton12Click(Sender: TObject);
var i : integer;
begin
  if not cxGridDBBandedTableView4global_id.DataBinding.Field.IsNull then begin
    for i:=0 to fmMain.MDIChildCount-1 Do
      if (fmMain.MDIChildren[i].ClassName = 'TfmOrdersPay') then begin
        fmMain.MDIChildren[i].Free;
        Break;
      end;
    fmOrdersPay := TfmOrdersPay.Create(Application, False);
    if Ftype_balance = 0 then fmOrdersPay._LocateOrderdPayDetailID := cxGridDBBandedTableView4global_id.DataBinding.Field.AsInteger;
    if Ftype_balance = 1 then fmOrdersPay._LocateOrderdPayID := cxGridDBBandedTableView4global_id.DataBinding.Field.AsInteger;
  end;
end;

procedure TfmFirmBalance.dxBarButton13Click(Sender: TObject);
begin
  PrintReportPlanClient(cxGrid1DBBandedTableView1contract_id.DataBinding.Field.AsInteger, Fdate1, Fdate2, fmMain.Lis);
end;

procedure TfmFirmBalance.dxBarButton14Click(Sender: TObject);
var str_selected_contract_id : string;
begin
  Screen.Cursor := crHourGlass;
//  str_selected_contract_id := GetDataFromCheckBox(cxBarEditItem1, False);

  if dxBarButton14.Down then begin
    Query_Firm.Close;
    Query_Firm.SQL[4] := 'AND date_end >= GETDATE()-31';
    Query_Firm.Open;
  end else begin
    Query_Firm.Close;
    Query_Firm.SQL[4] := '';
    Query_Firm.Open;
  end;

  SetDataForCheckBox(Query_Firm, TcxCheckComboBoxProperties(cxBarEditItem1.Properties));
  Screen.Cursor := crDefault;
end;

procedure TfmFirmBalance.dxBarButton16Click(Sender: TObject);
begin
  Screen.Cursor := crHourglass;
  if TControl(Sender).Tag = 1 then begin
    Fdate1 := IncMonth(Fdate1, -1);
  end;

  if TControl(Sender).Tag = 2 then begin
    Fdate1 := IncMonth(Fdate1, 1);
  end;

  Fdate2 := IncMonth(Fdate1, 1) - 1;
  dxBarSubItem5.Caption := FormatDateTime('mmmm yyyy', Fdate1);

  Query_Firm.Close;
  Query_Firm.Parameters.ParamByName('type_contract').Value := Ftype_balance;
  Query_Firm.Open;
  SetDataForCheckBox(Query_Firm, TcxCheckComboBoxProperties(cxBarEditItem1.Properties));

  RefreshBalance;
  dxBarButton2Click(nil);

  Screen.Cursor := crDefault;
end;

procedure TfmFirmBalance.dxBarButton17Click(Sender: TObject);
var tmp_path, file_name : string;
               arr_temp : array[0..1023] of Char;
begin
  SetString(tmp_path, arr_temp, GetTempPath(1023, arr_temp));
  DeleteFileFromDir(tmp_path);
  repeat
    file_name := 'xls_' + IntToStr(GetTickCount) + '.xls';
  until not FileExists(tmp_path + file_name);

  cxExportTLToExcel(tmp_path + file_name, cxDBTreeList1);
  ShellExecute(HWND(nil), 'open', PChar(tmp_path + file_name), nil, nil, SW_SHOWNORMAL);
end;

procedure TfmFirmBalance.dxBarButton19Click(Sender: TObject);
var    i : integer;
       v : variant;
 AStates : TcxCheckStates;
begin
  Screen.Cursor := crHourglass;

  dxBarManager1.BeginUpdate;
  TcxCheckComboBoxProperties(cxBarEditItem1.Properties).Items.BeginUpdate;

  SetLength(AStates, TcxCheckComboBoxProperties(cxBarEditItem1.Properties).Items.Count);

  case TControl(Sender).Tag of
    0: for i := 0 to TcxCheckComboBoxProperties(cxBarEditItem1.Properties).Items.Count - 1 do
        AStates[i] := cbsChecked;
    1: for i := 0 to TcxCheckComboBoxProperties(cxBarEditItem1.Properties).Items.Count - 1 do
        AStates[i] := cbsUnchecked;
  end;
  v := cxCheckBox.CalculateCheckStatesValue(AStates, TcxCheckComboBoxProperties(cxBarEditItem1.Properties).Items,
                                            TcxCheckComboBoxProperties(cxBarEditItem1.Properties).EditValueFormat);
  cxBarEditItem1.EditValue := v;

  TcxCheckComboBoxProperties(cxBarEditItem1.Properties).Items.EndUpdate;
  dxBarManager1.EndUpdate;

  Screen.Cursor := crDefault;
end;

procedure TfmFirmBalance.dxBarButton21Click(Sender: TObject);
begin
	PrintcxGrid(cxGridDBBandedTableView7);
end;

procedure TfmFirmBalance.dxBarButton22Click(Sender: TObject);
begin
	SetdxDBGridColumns(cxGridDBBandedTableView7);
end;

procedure TfmFirmBalance.dxBarButton23Click(Sender: TObject);
begin
	cxGridDBBandedTableView7.OptionsView.GroupByBox := not cxGridDBBandedTableView7.OptionsView.GroupByBox;
end;

procedure TfmFirmBalance.dxBarButton24Click(Sender: TObject);
begin
  RefreshBalance;
end;

procedure TfmFirmBalance.dxBarButton26Click(Sender: TObject);
var sp_contract_modify: TADOStoredProc;
    balance_id : integer;
begin
  sp_contract_modify := TADOStoredProc.Create(nil);
  sp_contract_modify.Connection := fmMain.Lis;
  sp_contract_modify.ProcedureName := 'sp_contract_modify';
  sp_contract_modify.Parameters.Refresh;
  sp_contract_modify.Parameters.ParamByName('@contract_id').Value := cxGrid1DBBandedTableView1contract_id.DataBinding.Field.AsInteger;
  sp_contract_modify.Parameters.ParamByName('@type_action').Value := '11';
  sp_contract_modify.Parameters.ParamByName('@date_finance_close').Value := EncodeDate(YearOf(cxDBTreeList1balance_date.DataBinding.Field.AsDateTime), MonthOf(cxDBTreeList1balance_date.DataBinding.Field.AsDateTime), 1);
  sp_contract_modify.ExecProc;
  sp_contract_modify.Free;

  balance_id := cxDBTreeList1balance_id.DataBinding.Field.AsInteger;

  RefreshDetail;

  SP_BalanceDetail.Locate('balance_id', balance_id, []);
end;

procedure TfmFirmBalance.dxBarButton27Click(Sender: TObject);
var sp_contract_modify: TADOStoredProc;
    balance_id : integer;
begin
  sp_contract_modify := TADOStoredProc.Create(nil);
  sp_contract_modify.Connection := fmMain.Lis;
  sp_contract_modify.ProcedureName := 'sp_contract_modify';
  sp_contract_modify.Parameters.Refresh;
  sp_contract_modify.Parameters.ParamByName('@contract_id').Value := cxGrid1DBBandedTableView1contract_id.DataBinding.Field.AsInteger;
  sp_contract_modify.Parameters.ParamByName('@type_action').Value := '12';
  sp_contract_modify.Parameters.ParamByName('@date_finance_close').Value := EncodeDate(YearOf(cxDBTreeList1balance_date.DataBinding.Field.AsDateTime), MonthOf(cxDBTreeList1balance_date.DataBinding.Field.AsDateTime), 1);
  sp_contract_modify.ExecProc;
  sp_contract_modify.Free;

  balance_id := cxDBTreeList1balance_id.DataBinding.Field.AsInteger;

  RefreshDetail;

  SP_BalanceDetail.Locate('balance_id', balance_id, []);
end;

procedure TfmFirmBalance.dxBarButton2Click(Sender: TObject);
begin
  Panel2.Visible    := dxBarButton2.Down;
  GroupBox2.Visible := dxBarButton2.Down;
  Splitter1.Visible := dxBarButton2.Down;
  if dxBarButton2.Down then RefreshDetail;
end;

procedure TfmFirmBalance.dxBarButton3Click(Sender: TObject);
begin
  case TdxBarButton(Sender).ClickItemLink.Owner.Owner.Tag of
    0: PrintcxGrid (cxGrid1DBBandedTableView1);
    1: PrintcxGrid(cxGrid3DBBandedTableView1);
    2: PrintcxGrid(cxGridDBBandedTableView1);
    4: PrintcxGrid(cxGridDBBandedTableView2);
    5: PrintcxGrid(cxGridDBBandedTableView3);
    6: PrintcxGrid(cxGridDBBandedTableView4);
    7: PrintcxGrid(cxGridDBBandedTableView6);
  end;
end;

procedure TfmFirmBalance.dxBarButton4Click(Sender: TObject);
var str_selected_contract_id : string;
begin
  fmPeriod := TfmPeriod.Create(Application, Fdate1, Fdate2, 3);
  if fmPeriod.ShowModal=mrOK then begin
    Screen.Cursor := crHourglass;
    Fdate1 := fmPeriod._GetMonth;
    Fdate2 := IncMonth(Fdate1, 1) - 1;
    dxBarSubItem5.Caption := FormatDateTime('mmmm yyyy', Fdate1);

//    str_selected_contract_id := GetDataFromCheckBox(cxCheckComboBox1,False);

    Query_Firm.Close;
    Query_Firm.Parameters.ParamByName('type_contract').Value := Ftype_balance;
    Query_Firm.Open;
    SetDataForCheckBox(Query_Firm, TcxCheckComboBoxProperties(cxBarEditItem1.Properties));

    RefreshBalance;
    dxBarButton2Click(nil);
    Screen.Cursor := crDefault;
  end;
end;

procedure TfmFirmBalance.dxBarButton5Click(Sender: TObject);
var str_selected_contract_id : string;
begin
  fmPeriod := TfmPeriod.Create(Application, Fdate1, Fdate2, 2);
  if fmPeriod.ShowModal=mrOK then begin
    Screen.Cursor := crHourglass;
    Fdate1 := fmPeriod._GetMonthBegin;
    Fdate2 := fmPeriod._GetMonthEnd;
    dxBarSubItem5.Caption := FormatDateTime('mmm yy', Fdate1) + ' - ' + FormatDateTime('mmm yy', Fdate2);

//    str_selected_contract_id := GetDataFromCheckBox(cxCheckComboBox1,False);

    Query_Firm.Close;
    Query_Firm.Parameters.ParamByName('type_contract').Value := Ftype_balance;
    Query_Firm.Open;
    SetDataForCheckBox(Query_Firm, TcxCheckComboBoxProperties(cxBarEditItem1.Properties));

    RefreshBalance;
    Screen.Cursor := crDefault;
  end;end;

procedure TfmFirmBalance.dxBarButton6Click(Sender: TObject);
begin
  case TdxBarButton(Sender).ClickItemLink.Owner.Owner.Tag of
    0 : SetdxDBGridColumns(cxGrid1DBBandedTableView1);
    1 : SetdxDBGridColumns(cxGrid3DBBandedTableView1);
    2 : SetdxDBGridColumns(cxGridDBBandedTableView1);
    4 : SetdxDBGridColumns(cxGridDBBandedTableView2);
    5 : SetdxDBGridColumns(cxGridDBBandedTableView3);
    6 : SetdxDBGridColumns(cxGridDBBandedTableView4);
    7 : SetdxDBGridColumns(cxGridDBBandedTableView6);
  end;
end;

procedure TfmFirmBalance.dxBarButton7Click(Sender: TObject);
begin
  case TdxBarButton(Sender).ClickItemLink.Owner.Owner.Tag of
    0 : cxGrid1DBBandedTableView1.OptionsView.GroupByBox := not cxGrid1DBBandedTableView1.OptionsView.GroupByBox;
    1 : cxGrid3DBBandedTableView1.OptionsView.GroupByBox := not cxGrid3DBBandedTableView1.OptionsView.GroupByBox;
    2 : cxGridDBBandedTableView1.OptionsView.GroupByBox  := not cxGridDBBandedTableView1.OptionsView.GroupByBox;
    4 : cxGridDBBandedTableView2.OptionsView.GroupByBox  := not cxGridDBBandedTableView2.OptionsView.GroupByBox;
    5 : cxGridDBBandedTableView3.OptionsView.GroupByBox  := not cxGridDBBandedTableView3.OptionsView.GroupByBox;
    6 : cxGridDBBandedTableView4.OptionsView.GroupByBox  := not cxGridDBBandedTableView4.OptionsView.GroupByBox;
    7 : cxGridDBBandedTableView6.OptionsView.GroupByBox  := not cxGridDBBandedTableView6.OptionsView.GroupByBox;
  end;
end;

procedure TfmFirmBalance.dxBarButton8Click(Sender: TObject);
begin
  case TdxBarButton(Sender).ClickItemLink.Owner.Owner.Tag of
    0 : if cxGrid1DBBandedTableView1contract_id.DataBinding.Field.Value <> null then begin
          fmContractAdd := TfmContractAdd.Create(Application, 0);
          fmContractAdd._SetUpdate := cxGrid1DBBandedTableView1contract_id.DataBinding.Field.Value;
          if fmContractAdd.ShowModal=mrOK then RefreshBalance;
        end;
    2 : if cxGridDBBandedTableView1contract_id.DataBinding.Field.Value <> null then begin
          fmContractAdd := TfmContractAdd.Create(Application, 0);
          fmContractAdd._SetUpdate := cxGridDBBandedTableView1contract_id.DataBinding.Field.Value;
          if fmContractAdd.ShowModal=mrOK then RefreshBalance;
        end;
  end;
end;

procedure TfmFirmBalance.dxBarButton9Click(Sender: TObject);
var i : integer;
begin
  if not cxGridDBBandedTableView2bargain_id.DataBinding.Field.IsNull then begin
    for i:=0 to fmMain.MDIChildCount-1 Do
      if (fmMain.MDIChildren[i].ClassName = 'TfmAgree2') then begin
        fmMain.MDIChildren[i].Free;
        Break;
      end;
    fmAgree2 := TfmAgree2.Create(Application, False);
    fmAgree2._LocateBargainID := cxGridDBBandedTableView2bargain_id.DataBinding.Field.Value;
  end;
end;

procedure TfmFirmBalance.dxBarButton_FilterRecords1Click(Sender: TObject);
begin
  cxGrid1DBBandedTableView1.Filtering.ColumnFilteredItemsList := not dxBarButton_FilterRecords1.Down;
end;

procedure TfmFirmBalance.dxBarButton_FilterRecords2Click(Sender: TObject);
begin
  cxGrid3DBBandedTableView1.Filtering.ColumnFilteredItemsList := not dxBarButton_FilterRecords2.Down;
end;

procedure TfmFirmBalance.dxBarButton_FilterRecords3Click(Sender: TObject);
begin
  cxGridDBBandedTableView1.Filtering.ColumnFilteredItemsList := not dxBarButton_FilterRecords3.Down;
end;

procedure TfmFirmBalance.dxBarButton_FilterRecords4Click(Sender: TObject);
begin
  cxGridDBBandedTableView2.Filtering.ColumnFilteredItemsList := not dxBarButton_FilterRecords4.Down;
end;

procedure TfmFirmBalance.dxBarButton_FilterRecords5Click(Sender: TObject);
begin
  cxGridDBBandedTableView3.Filtering.ColumnFilteredItemsList := not dxBarButton_FilterRecords5.Down;
end;

procedure TfmFirmBalance.dxBarButton_FilterRecords6Click(Sender: TObject);
begin
  cxGridDBBandedTableView4.Filtering.ColumnFilteredItemsList := not dxBarButton_FilterRecords6.Down;
end;

procedure TfmFirmBalance.dxBarPopupMenu6Popup(Sender: TObject);
begin
  dxBarButton11.Enabled := False;
  dxBarButton12.Enabled := False;
  if not cxGridDBBandedTableView4type_plan_cod.DataBinding.Field.IsNull then begin
    if cxGridDBBandedTableView4type_plan_cod.DataBinding.Field.AsInteger = 0 then dxBarButton11.Enabled := True;
    if cxGridDBBandedTableView4type_plan_cod.DataBinding.Field.AsInteger = 1 then dxBarButton12.Enabled := True;
  end;
end;

procedure TfmFirmBalance.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  FSP_invoice_balance_bargain.Free;
  FSP_invoice_balance_bargain_add.Free;
  FSP_invoice_balance_pay.Free;
  FSP_invoice_balance_plan.Free;
  FSP_invoice_balance_acts.Free;

  Action := caFree;
end;

procedure TfmFirmBalance.FormDestroy(Sender: TObject);
begin
  RestoreGroupedColumns(cxGrid1DBBandedTableView1);

  StoreRegistryDate(rgSave, '\Software\LIS1\DateTime\FirmBalance', Fdate1, Fdate2);
  StoreRegistryGrid(rgSave, '\Software\Lis1\FirmBalance_Grids', cxGrid1DBBandedTableView1);
  StoreRegistryGrid(rgSave, '\Software\Lis1\FirmBalance_Grids', cxGrid1DBBandedTableView1);
  StoreRegistryGrid(rgSave, '\Software\Lis1\FirmBalance_Grids', cxGrid3DBBandedTableView1);
  StoreRegistryGrid(rgSave, '\Software\Lis1\FirmBalance_Grids', cxGridDBBandedTableView2);
end;

procedure TfmFirmBalance._SetBalance(date_begin: TDateTime; date_end: TDateTime; str_contract_id: string);
begin
  Screen.Cursor := crHourglass;
  Fdate1 := date_begin;
  Fdate2 := date_end;

  Fdate1 := Fdate1 - DayOf(Fdate1) + 1;
  Fdate2 := IncMonth(Fdate2,1) - DayOf(IncMonth(Fdate2,1));

  if MonthOf(Fdate1) <> MonthOf(Fdate2) then
    dxBarSubItem5.Caption := FormatDateTime('mmm yy', Fdate1) + ' - ' + FormatDateTime('mmm yy', Fdate2)
  else
    dxBarSubItem5.Caption := FormatDateTime('mmmm yyyy', Fdate1);

  Query_Firm.Close;
  Query_Firm.Parameters.ParamByName('type_contract').Value := Ftype_balance;
  Query_Firm.Open;
  SetDataForCheckBox(Query_Firm, TcxCheckComboBoxProperties(cxBarEditItem1.Properties));

  RefreshBalance;
  dxBarButton2.Down := True;
  dxBarButton2Click(nil);

  Screen.Cursor := crDefault;
end;

procedure TfmFirmBalance.SetShowPlan(set_show: boolean);
begin
  if set_show then cxPageControl2.ActivePage := cxTabSheet5;
end;

procedure TfmFirmBalance.SetShowPay(set_show: boolean);
begin
  if set_show then cxPageControl2.ActivePage := cxTabSheet4;
end;

procedure TfmFirmBalance.SetShowBargain(set_show: boolean);
begin
  if set_show then cxPageControl2.ActivePage := cxTabSheet3;
end;

procedure TfmFirmBalance.SetShowActs(set_show: boolean);
begin
  if set_show then cxPageControl2.ActivePage := cxTabSheet6;
end;

end.

