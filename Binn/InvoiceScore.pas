unit InvoiceScore;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs, Default,
  cxPropertiesStore, StdCtrls, Buttons, ExtCtrls, ComCtrls, ToolWin, Variants,
  cxGridLevel, cxClasses, cxControls, cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, cxGridBandedTableView, cxGridDBBandedTableView, ADODB, cxStyles,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit,  cxCalendar,  cxContainer, cxLabel,
  cxLookAndFeelPainters, DateUtils, cxGraphics, cxCheckBox, StrUtils,
  cxLookAndFeels, cxPC, dxBar, cxDBData, DB, cxCurrencyEdit, ImgList, dxBarBuiltInMenu,
  cxNavigator, dxSkinsCore, dxSkinsDefaultPainters, dxSkinscxPCPainter,
  dxSkinsdxBarPainter, dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMetropolis, dxSkinMetropolisDark, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue,
  dxSkinOffice2010Silver, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinOffice2016Colorful, dxSkinOffice2016Dark,
  dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus, dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008,
  dxSkinTheAsphaltWorld, dxSkinValentine, dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark, dxSkinVisualStudio2013Light, dxSkinVS2010,
  dxSkinWhiteprint, dxSkinXmas2008Blue, System.ImageList, cxImageList,
  cxDataControllerConditionalFormattingRulesManagerDialog, EDOXMLInvoice, Xml.XMLDoc, Datasnap.DBClient, Vcl.FileCtrl, Winapi.ShellAPI, dxSkinTheBezier, dxDateRanges,
  dxSkinOffice2019Colorful, dxScrollbarAnnotations;

type
  TfmInvoiceScore = class(TForm)
    cxPropertiesStore1: TcxPropertiesStore;
    Query_InvoiceScore: TADOQuery;
    DS_InvoiceScore: TDataSource;
    cxPageControl1: TcxPageControl;
    cxTabSheet1: TcxTabSheet;
    cxGrid1: TcxGrid;
    cxGrid1DBBandedTableView1: TcxGridDBBandedTableView;
    cxGrid1DBBandedTableView1invoice_score_id: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1score_cod: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1score_date: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1contract_id: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1contract_cod: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1firm_self_name: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1firm_customer_name: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1firm_customer_address: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1firm_customer_name_full: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1curator_FIO_users: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1firm_customer_region_name: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1date_begin: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1brief_name: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1score_period_date_month: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1score_period_date_year: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1score_period_date: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1exchange_val_EUR: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1exchange_val_USD: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1score_sum: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1score_pay: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1FIO_users: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1global_color: TcxGridDBBandedColumn;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1DBBandedTableView1currency_id: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1global_copy: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1score_comment: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1set_return: TcxGridDBBandedColumn;
    Panel3: TPanel;
    Splitter3: TSplitter;
    GroupBox5: TGroupBox;
    GroupBox3: TGroupBox;
    Splitter4: TSplitter;
    cxGrid6: TcxGrid;
    cxGrid6DBBandedTableView1: TcxGridDBBandedTableView;
    cxGrid1DBBandedTableView1acts_id: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1acts_num: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1acts_cod: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1acts_type_id: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1acts_type_cod: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1acts_type_name: TcxGridDBBandedColumn;
    cxGridDBBandedColumn1: TcxGridDBBandedColumn;
    cxGridDBBandedColumn2: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1contract_date_begin: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1firm_customer_id: TcxGridDBBandedColumn;
    cxGridDBBandedColumn3: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1firm_self_id: TcxGridDBBandedColumn;
    cxGridDBBandedColumn4: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1date_period: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1date_period_name: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1date_enter: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1users_owner: TcxGridDBBandedColumn;
    cxGridDBBandedColumn5: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1users_group_id: TcxGridDBBandedColumn;
    cxGridDBBandedColumn6: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1acts_date: TcxGridDBBandedColumn;
    cxGridDBBandedColumn7: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1date_end: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1self_director: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1self_basis: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1customer_director: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1customer_basis: TcxGridDBBandedColumn;
    cxGrid6Level1: TcxGridLevel;
    Query_Acts: TADOQuery;
    DS_Acts: TDataSource;
    Query_Bargain: TADOQuery;
    DS_Bargain: TDataSource;
    cxGrid7: TcxGrid;
    cxGrid7DBBandedTableView1: TcxGridDBBandedTableView;
    cxGrid1DBBandedTableView1bargain_id: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1bargain_cod: TcxGridDBBandedColumn;
    cxGridDBBandedColumn8: TcxGridDBBandedColumn;
    cxGridDBBandedColumn9: TcxGridDBBandedColumn;
    cxGridDBBandedColumn10: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1node_begin_name: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1node_end_name: TcxGridDBBandedColumn;
    cxGridDBBandedColumn11: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1kargoETSNG_name: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1kargoETSNG_group_name: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1vid_transfer_name: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1bargain_nds_name: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1our_rate_val: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1ed_izm_name: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1fact_weight: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1amount_fact: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1amount_units_fact: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1bargain_sum_fact: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1bargain_sum_fact_USD: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1bargain_comiss_USD: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1bargain_sum_fact_RUB: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1bargain_comiss_RUB: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1state_begin_name: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1state_end_name: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1date_modify: TcxGridDBBandedColumn;
    cxGridDBBandedColumn13: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1date_period_month: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1date_period_year: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1date_period_finance_name: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1set_bargain_block: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1bargain_correct_group: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1bargain_correct_type_name: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1bargain_note: TcxGridDBBandedColumn;
    cxGridDBBandedColumn14: TcxGridDBBandedColumn;
    cxGridDBBandedColumn15: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1date_period_finance: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1bargain_num: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1ed_izm_cod: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1our_rate_vid_send: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1our_rate_comiss_val: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1vid_transfer_cod: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1users_owner_id: TcxGridDBBandedColumn;
    cxGridDBBandedColumn16: TcxGridDBBandedColumn;
    cxGridDBBandedColumn18: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1bargain_correct_type: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1bargain_rights: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1agreement_describe: TcxGridDBBandedColumn;
    cxGrid7DBBandedTableView1global_color: TcxGridDBBandedColumn;
    cxGrid7Level1: TcxGridLevel;
    cxGrid1DBBandedTableView1set_clearing: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1docs_status_name: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1docs_status_cod: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1parent_id: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1set_correct: TcxGridDBBandedColumn;
    cxGrid6DBBandedTableView1acts_sum: TcxGridDBBandedColumn;
    cxGrid6DBBandedTableView1brief_name: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1exchange_val_CHF: TcxGridDBBandedColumn;
    dxBarManager1: TdxBarManager;
    Popup_Client: TdxBarPopupMenu;
    N1: TdxBarButton;
    N2: TdxBarButton;
    N23: TdxBarButton;
    N29: TdxBarButton;
    N4: TdxBarButton;
    Excel1: TdxBarButton;
    N7: TdxBarButton;
    N8: TdxBarButton;
    N10: TdxBarButton;
    N11: TdxBarButton;
    N6: TdxBarSubItem;
    N58: TdxBarButton;
    N59: TdxBarButton;
    PopupMenu_Acts: TdxBarPopupMenu;
    N24: TdxBarButton;
    MenuItem5: TdxBarSubItem;
    PopupMenu_Bargain: TdxBarPopupMenu;
    N3: TdxBarButton;
    N14: TdxBarButton;
    MenuItem24: TdxBarSubItem;
    dxBarManager1Bar1: TdxBar;
    dxBarButton1: TdxBarButton;
    dxBarSubItem1: TdxBarSubItem;
    dxBarButton2: TdxBarButton;
    dxBarSubItem2: TdxBarSubItem;
    dxBarButton_FilterRecords1: TdxBarButton;
    dxBarButton_FilterRecords2: TdxBarButton;
    dxBarButton_FilterRecords3: TdxBarButton;
    cxImageList1: TcxImageList;
    dxBarButton3: TdxBarButton;
    cxGrid1DBBandedTableView1docs_id: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1score_firm_self_name_full: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1firm_customer_inn_kpp: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1score_sum_nds: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1nds_name: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1score_firm_customer_name_full: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1firm_director_name: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1firm_buh_name: TcxGridDBBandedColumn;
    dxBarButton5: TdxBarButton;
    cxTabSheet2: TcxTabSheet;
    cxGrid2: TcxGrid;
    cxGrid2DBBandedTableView1: TcxGridDBBandedTableView;
    cxGrid2DBBandedTableView1invoice_score_id: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1parent_id: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1score_cod: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1score_date: TcxGridDBBandedColumn;
    cxGridDBBandedColumn21: TcxGridDBBandedColumn;
    cxGridDBBandedColumn22: TcxGridDBBandedColumn;
    cxGridDBBandedColumn23: TcxGridDBBandedColumn;
    cxGridDBBandedColumn24: TcxGridDBBandedColumn;
    cxGridDBBandedColumn30: TcxGridDBBandedColumn;
    cxGridDBBandedColumn31: TcxGridDBBandedColumn;
    cxGridDBBandedColumn32: TcxGridDBBandedColumn;
    cxGridDBBandedColumn33: TcxGridDBBandedColumn;
    cxGridDBBandedColumn34: TcxGridDBBandedColumn;
    cxGridDBBandedColumn38: TcxGridDBBandedColumn;
    cxGridDBBandedColumn42: TcxGridDBBandedColumn;
    cxGridDBBandedColumn45: TcxGridDBBandedColumn;
    cxGridDBBandedColumn46: TcxGridDBBandedColumn;
    cxGridDBBandedColumn49: TcxGridDBBandedColumn;
    cxGridDBBandedColumn53: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1nds_name: TcxGridDBBandedColumn;
    cxGrid2Level1: TcxGridLevel;
    Query_InvTable: TADOQuery;
    DS_InvTable: TDataSource;
    dxBarPopupMenu1: TdxBarPopupMenu;
    cxGrid2DBBandedTableView1invoice_score_table_id: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1name_service: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1service_cod: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1cost_without_nds: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1nds_cod: TcxGridDBBandedColumn;
    dxBarSubItem3: TdxBarSubItem;
    cxGrid1DBBandedTableView1set_1c: TcxGridDBBandedColumn;
    dxBarSubItem4: TdxBarSubItem;
    dxBarButton4: TdxBarButton;
    dxBarButton6: TdxBarButton;
    dxBarButton7: TdxBarButton;
    dxBarButton8: TdxBarButton;
    dxBarButton9: TdxBarButton;
    dxBarButton10: TdxBarButton;
    cxGrid1DBBandedTableView1set_universal_trans_doc: TcxGridDBBandedColumn;
    dxBarButton12: TdxBarButton;
    dxBarButton11: TdxBarButton;
    cxGrid1DBBandedTableView1set_avance: TcxGridDBBandedColumn;
    dxBarButton14: TdxBarButton;
    dxBarButton15: TdxBarButton;
    dxBarButton16: TdxBarButton;
    dxBarButton17: TdxBarButton;
    procedure cxGrid6DBBandedTableView1DblClick(Sender: TObject);
    procedure N14Click(Sender: TObject);
    procedure cxGrid7DBBandedTableView1CustomDrawCell(Sender: TcxCustomGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
    procedure cxGrid1DBBandedTableView1FocusedRecordChanged(Sender: TcxCustomGridTableView; APrevFocusedRecord,AFocusedRecord: TcxCustomGridRecord;ANewItemRecordFocusingChanged: Boolean);
    procedure N23Click(Sender: TObject);
    procedure cxGrid1DBBandedTableView1KeyPress(Sender: TObject; var Key: Char);
    procedure cxGrid6DBBandedTableView1CustomDrawCell(Sender: TcxCustomGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
    procedure cxGrid1DBBandedTableView1CustomDrawColumnHeader(Sender: TcxGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxGridColumnHeaderViewInfo; var ADone: Boolean);
    procedure cxPageControl1Change(Sender: TObject);
    procedure cxGrid1DBBandedTableView1FocusedItemChanged(Sender: TcxCustomGridTableView; APrevFocusedItem,  AFocusedItem: TcxCustomGridTableItem);
    procedure cxGrid1DBBandedTableView1DataControllerFilterChanged( Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure N1Click(Sender: TObject);
    procedure N10Click(Sender: TObject);
    procedure N11Click(Sender: TObject);
    procedure N7Click(Sender: TObject);
    procedure cxGrid1DBBandedTableView1CustomDrawCell(Sender: TcxCustomGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
    procedure N2Click(Sender: TObject);
    procedure N4Click(Sender: TObject);
    procedure Excel1Click(Sender: TObject);
    procedure dxBarButton1Click(Sender: TObject);
    procedure N58Click(Sender: TObject);
    procedure N59Click(Sender: TObject);
    procedure dxBarButton2Click(Sender: TObject);
    procedure dxBarButton_FilterRecords1Click(Sender: TObject);
    procedure dxBarButton_FilterRecords2Click(Sender: TObject);
    procedure dxBarButton_FilterRecords3Click(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure dxBarButton3Click(Sender: TObject);
    procedure cxGrid2DBBandedTableView1CustomDrawCell(Sender: TcxCustomGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
    procedure dxBarButton7Click(Sender: TObject);
    procedure dxBarButton6Click(Sender: TObject);
    procedure dxBarButton4Click(Sender: TObject);
    procedure dxBarButton9Click(Sender: TObject);
    procedure dxBarButton10Click(Sender: TObject);
    procedure dxBarButton11Click(Sender: TObject);
    procedure dxBarButton14Click(Sender: TObject);
    procedure dxBarButton15Click(Sender: TObject);
    procedure dxBarButton16Click(Sender: TObject);
    procedure dxBarButton17Click(Sender: TObject);
  private
    Fdate1, Fdate2      : TDateTime;
    FcxGridView         : TcxGridDBBandedTableView;
    Fconnect            : TADOConnection;
    Fdocs_id            : integer;
    Fusr_pwd_lis        : PUser_pwd;
    Finvoice_score_id   : integer;
    Fstr_invoice_score_id : string;
    Fcontract_id        : integer;
    Fset_run_dll        : boolean;
    procedure SetContractId(contract_id: integer);
  public
    Ftype_score         : integer;
    constructor Create(AOwner: TApplication; flag: boolean; type_contract: integer);
    constructor CreateDLL(AOwner: TApplication; flag: boolean; type_contract: integer; usr_pwd_lis: PUser_pwd);
  published
    property _GetInvoiceScoreId    : integer read Finvoice_score_id;
    property _GetStrInvoiceScoreId : string  read Fstr_invoice_score_id;
    property _GetContractId        : integer read Fcontract_id;
    property _SetContractId        : integer write SetContractId;
    property _GetDocsId            : integer read Fdocs_id;
  end;

var
  fmInvoiceScore: TfmInvoiceScore;

implementation
    uses Main, Period, InvoiceScoreAdd, Other, ComObj, cxGridDBDataDefinitions, Raznoe, InvoiceScoreCorrAdd, Filter, InvoiceScoreReserve, EDOXMLUniTrDoc820;
{$R *.DFM}


constructor TfmInvoiceScore.CreateDLL(AOwner: TApplication; flag: boolean; type_contract: integer; usr_pwd_lis: PUser_pwd);
begin
  Screen.Cursor := crHourglass;
  inherited Create(AOwner);

  FormStyle := fsNormal;
  Visible := False;

  Fset_run_dll := True;

  Finvoice_score_id     := -9;
  Fcontract_id          := -9;
  Fdocs_id              := -9;
  Fstr_invoice_score_id := '';

  Fusr_pwd_lis  := usr_pwd_lis;
  Fconnect := TADOConnection.Create(nil);
  Fconnect.ConnectionString := 'Persist Security Info=True;Provider=SQLOLEDB.1;User ID='+Fusr_pwd_lis^.user_name+';Password='+Fusr_pwd_lis^.user_pass+';Initial Catalog='+Fusr_pwd_lis^.catalog+';Data Source='+Fusr_pwd_lis^.server+';';
  Fconnect.KeepConnection   := False;
  Fconnect.LoginPrompt      := False;

  Query_InvoiceScore.Connection := Fconnect;
  Query_Acts.Connection := Fconnect;
  Query_Bargain.Connection := Fconnect;

  Ftype_score := type_contract;

  dxBarSubItem1.Caption := StoreRegistryDate(rgLoad, '\Software\Lis1\DateTime\InvoiceScore', Fdate1, Fdate2);

  FcxGridView :=  cxGrid1DBBandedTableView1;

  case type_contract of
    0 : begin
        Caption := 'Счёт-фактура Клиента';
        cxTabSheet1.Caption := 'Клиент';
        end;
    2 : begin
        Caption := 'Счёт-фактура Подрядчика';
        cxTabSheet1.Caption := 'Подрядчик';
        cxGrid1DBBandedTableView1firm_customer_name.Caption := 'Подрядчик';

        dxBarButton14.Visible := ivNever; // Реестр номеров
        end;
  end;

  StoreRegistryGrid(rgLoad,'\Software\Lis1\InvoiceScore_Grids', cxGrid1DBBandedTableView1);
  StoreRegistryGrid(rgLoad,'\Software\Lis1\InvoiceScore_Grids', cxGrid2DBBandedTableView1);
  StoreRegistryGrid(rgLoad,'\Software\Lis1\InvoiceScore_Grids', cxGrid6DBBandedTableView1);
  StoreRegistryGrid(rgLoad,'\Software\Lis1\InvoiceScore_Grids', cxGrid7DBBandedTableView1);
  cxPageControl1.OnChange(cxPageControl1);

  SetUsersModuleRights(self, Fconnect);


  if flag then begin
    FormStyle := fsNormal;
    Visible := False;
    dxBarButton3.Visible := ivAlways;
    WindowState := wsMaximized;
    cxGrid1DBBandedTableView1.OnDblClick := dxBarButton3Click;

    dxBarButton14.Visible := ivNever; // Реестр номеров
  end else Formstyle := fsMDIChild;

  N1.Enabled := False;
  N2.Enabled := False;
  N4.Enabled := False;
  N23.Enabled := False;
  N29.Enabled := False;
  N24.Enabled := False;
  N3.Enabled := False;
  N14.Enabled := False;
  dxBarButton2.Enabled := False;


  Screen.Cursor := crDefault;
end;

constructor TfmInvoiceScore.Create(AOwner: TApplication; flag: boolean; type_contract: integer);
begin
  Screen.Cursor := crHourglass;
  inherited Create(AOwner);
  Formstyle := fsMDIChild;

  Fconnect := fmMain.Lis;

  Fset_run_dll := False;

  Ftype_score := type_contract;
  Finvoice_score_id     := -9;
  Fcontract_id          := -9;
  Fdocs_id              := -9;
  Fstr_invoice_score_id := '';

  dxBarSubItem1.Caption := StoreRegistryDate(rgLoad, '\Software\Lis1\DateTime\InvoiceScore', Fdate1, Fdate2);

  FcxGridView :=  cxGrid1DBBandedTableView1;

  case type_contract of
    0 : begin
        Caption := 'Счёт-фактура Клиента';
        cxTabSheet1.Caption := 'Клиент';
        end;
    2 : begin
        Caption := 'Счёт-фактура Подрядчика';
        cxTabSheet1.Caption := 'Подрядчик';
        cxGrid1DBBandedTableView1firm_customer_name.Caption := 'Подрядчик';
        end;
  end;

  StoreRegistryGrid(rgLoad,'\Software\Lis1\InvoiceScore_Grids', cxGrid1DBBandedTableView1);
  StoreRegistryGrid(rgLoad,'\Software\Lis1\InvoiceScore_Grids', cxGrid2DBBandedTableView1);
  StoreRegistryGrid(rgLoad,'\Software\Lis1\InvoiceScore_Grids', cxGrid6DBBandedTableView1);
  StoreRegistryGrid(rgLoad,'\Software\Lis1\InvoiceScore_Grids', cxGrid7DBBandedTableView1);

  cxPageControl1.OnChange := nil;
  cxPageControl1.ActivePageIndex := 0;
  cxPageControl1.OnChange := cxPageControl1Change;
  cxPageControl1.OnChange(cxPageControl1);

  SetUsersModuleRights(self, Fconnect);

  if flag then begin
    FormStyle := fsNormal;
    Visible := False;
    dxBarButton3.Visible := ivAlways;
    WindowState := wsMaximized;
    cxGrid1DBBandedTableView1.OnDblClick := dxBarButton3Click;
  end else Formstyle := fsMDIChild;

  N2.Enabled := usr_pwd.user_func.Locate('func_name', 'set_invoice_score_modify', [loCaseInsensitive]);
  N4.Enabled := usr_pwd.user_func.Locate('func_name', 'set_invoice_score_modify', [loCaseInsensitive]);

  MonitorEventFormOpen('OPEN_FORM', self.Name, fmMain.Lis, -9);

  Screen.Cursor := crDefault;
end;

procedure TfmInvoiceScore.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TfmInvoiceScore.FormDestroy(Sender: TObject);
begin
  RestoreGroupedColumns(cxGrid1DBBandedTableView1);
  StoreRegistryDate(rgSave, '\Software\Lis1\DateTime\InvoiceScore', Fdate1, Fdate2);

  StoreRegistryGrid(rgSave,'\Software\Lis1\InvoiceScore_Grids', cxGrid1DBBandedTableView1);
  StoreRegistryGrid(rgSave,'\Software\Lis1\InvoiceScore_Grids', cxGrid2DBBandedTableView1);
  StoreRegistryGrid(rgSave,'\Software\Lis1\InvoiceScore_Grids', cxGrid6DBBandedTableView1);
  StoreRegistryGrid(rgSave,'\Software\Lis1\InvoiceScore_Grids', cxGrid7DBBandedTableView1);
end;

procedure TfmInvoiceScore.N1Click(Sender: TObject);
begin
  fmInvoiceScoreAdd := TfmInvoiceScoreAdd.Create(Application, True, Ftype_score);
  if fmInvoiceScoreAdd.ShowModal = mrOk then
    RefreshQueryGrid(FcxGridView, 'invoice_score_id', fmInvoiceScoreAdd._GetInvoiceScoreID);
end;

procedure TfmInvoiceScore.N10Click(Sender: TObject);
begin
  case TdxBarButton(Sender).ClickItemLink.Owner.Owner.Tag of
    1 : SetdxDBGridColumns(cxGrid1DBBandedTableView1);
    2 : SetdxDBGridColumns(cxGrid2DBBandedTableView1);
    6 : SetdxDBGridColumns(cxGrid6DBBandedTableView1);
    7 : SetdxDBGridColumns(cxGrid7DBBandedTableView1);
  end;
end;

procedure TfmInvoiceScore.N11Click(Sender: TObject);
begin
  case TdxBarButton(Sender).ClickItemLink.Owner.Owner.Tag of
    1 : cxGrid1DBBandedTableView1.OptionsView.GroupByBox := not cxGrid1DBBandedTableView1.OptionsView.GroupByBox;
    2 : cxGrid2DBBandedTableView1.OptionsView.GroupByBox := not cxGrid2DBBandedTableView1.OptionsView.GroupByBox;
    6 : cxGrid6DBBandedTableView1.OptionsView.GroupByBox := not cxGrid6DBBandedTableView1.OptionsView.GroupByBox;
    7 : cxGrid7DBBandedTableView1.OptionsView.GroupByBox := not cxGrid7DBBandedTableView1.OptionsView.GroupByBox;
  end;
end;

procedure TfmInvoiceScore.N7Click(Sender: TObject);
begin
  if cxGrid1DBBandedTableView1.Controller.SelectedRowCount = 0 then begin
    Application.MessageBox('НЕТ ВЫДЕЛЕННЫХ СТРОК','ВНИМАНИЕ',MB_OK);
    Exit;
  end;
  SetRecordColor('invoice_score_id', cxGrid1DBBandedTableView1, 'INVOICE_SCORE', (TdxBarItem(Sender).Tag=1));
  RefreshQueryGrid(FcxGridView, 'invoice_score_id', FcxGridView.Columns[0].DataBinding.Field.AsInteger);
end;

procedure TfmInvoiceScore.cxGrid1DBBandedTableView1CustomDrawCell(Sender: TcxCustomGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
  if (AViewInfo.GridRecord.Values[cxGrid1DBBandedTableView1global_color.Index]<>NULL) then ACanvas.Brush.Color := AViewInfo.GridRecord.Values[cxGrid1DBBandedTableView1global_color.Index];
  if AViewInfo.GridRecord.Focused then begin
    ACanvas.Brush.Color := clNavy;
    ACanvas.Font.Color := clWhite;
  end;

  if (AViewInfo.GridRecord.Values[cxGrid1DBBandedTableView1set_return.Index]) then ACanvas.Font.Color := clBlue;
  if (AViewInfo.GridRecord.Values[cxGrid1DBBandedTableView1set_clearing.Index]) then ACanvas.Font.Color := clBlue;

  if (AViewInfo.GridRecord.Values[cxGrid1DBBandedTableView1global_copy.Index]<>NULL)
      AND (AViewInfo.GridRecord.Values[cxGrid1DBBandedTableView1global_copy.Index]<>0) then ACanvas.Font.Color := clRed;

  if AViewInfo.GridRecord.Focused OR AViewInfo.GridRecord.Selected then  ACanvas.Brush.Color := clNavy;
  if AViewInfo.Focused then ACanvas.Brush.Color := clBlue;
end;

procedure TfmInvoiceScore.cxGrid1DBBandedTableView1CustomDrawColumnHeader(Sender: TcxGridTableView; ACanvas: TcxCanvas;  AViewInfo: TcxGridColumnHeaderViewInfo; var ADone: Boolean);
begin
  DrawcxGridColumnOnFocused(Sender, ACanvas, AViewInfo);
end;

procedure TfmInvoiceScore.cxGrid1DBBandedTableView1DataControllerFilterChanged(Sender: TObject);
begin
  DrawcxGridColumnOnFiltered(Sender);
end;

procedure TfmInvoiceScore.cxGrid1DBBandedTableView1FocusedItemChanged(Sender: TcxCustomGridTableView; APrevFocusedItem, AFocusedItem: TcxCustomGridTableItem);
begin
  Sender.Painter.Invalidate;
end;

procedure TfmInvoiceScore.cxGrid1DBBandedTableView1FocusedRecordChanged(Sender: TcxCustomGridTableView; APrevFocusedRecord,AFocusedRecord: TcxCustomGridRecord; ANewItemRecordFocusingChanged: Boolean);
begin
  if (AFocusedRecord <> nil) AND ((cxGrid1DBBandedTableView1.GroupedColumnCount = 0) OR (AFocusedRecord.Level <> 0)) then begin
    Screen.Cursor := crHourglass;

    Query_Acts.Close;
    Query_Acts.Parameters.ParamByName('invoice_score_id').Value := cxGrid1DBBandedTableView1invoice_score_id.DataBinding.Field.AsInteger;
    Query_Acts.Open;
    Query_Bargain.Close;
    Query_Bargain.Parameters.ParamByName('invoice_score_id').Value := cxGrid1DBBandedTableView1invoice_score_id.DataBinding.Field.AsInteger;
    Query_Bargain.Open;

    Screen.Cursor := crDefault;
  end;
end;

procedure TfmInvoiceScore.cxGrid1DBBandedTableView1KeyPress(Sender: TObject; var Key: Char);
begin
  FilterColumnGridOnKeyPress(TcxGridDBBandedTableView(TcxGridSite(Sender).GridView), Key);
end;

procedure TfmInvoiceScore.cxGrid2DBBandedTableView1CustomDrawCell(Sender: TcxCustomGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
  if AViewInfo.GridRecord.Focused then begin
    ACanvas.Brush.Color := clNavy;
    ACanvas.Font.Color := clWhite;
  end;

  if (AViewInfo.GridRecord.Values[cxGridDBBandedColumn45.Index]) then ACanvas.Font.Color := clBlue;
  if (AViewInfo.GridRecord.Values[cxGridDBBandedColumn46.Index]) then ACanvas.Font.Color := clBlue;

  if AViewInfo.GridRecord.Focused OR AViewInfo.GridRecord.Selected then  ACanvas.Brush.Color := clNavy;
  if AViewInfo.Focused then ACanvas.Brush.Color := clBlue;
end;

procedure TfmInvoiceScore.cxGrid6DBBandedTableView1CustomDrawCell(Sender: TcxCustomGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
  if AViewInfo.GridRecord.Focused then begin
    ACanvas.Brush.Color := clNavy;
    ACanvas.Font.Color := clWhite;
  end;
  if AViewInfo.GridRecord.Focused OR AViewInfo.GridRecord.Selected then  ACanvas.Brush.Color := clNavy;
  if AViewInfo.Focused then ACanvas.Brush.Color := clBlue;
end;

procedure TfmInvoiceScore.cxGrid6DBBandedTableView1DblClick(Sender: TObject);
begin
  if Query_Acts.RecordCount <= 0 then
    exit;

  GetActsView(cxGrid1DBBandedTableView1acts_id.DataBinding.Field.AsInteger, Fconnect, Fset_run_dll, Self);
end;

procedure TfmInvoiceScore.cxGrid7DBBandedTableView1CustomDrawCell(Sender: TcxCustomGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
  if (AViewInfo.GridRecord.Values[cxGridDBBandedColumn16.Index] = 3) then ACanvas.Font.Color := clBlue
  else if (AViewInfo.GridRecord.Values[cxGridDBBandedColumn16.Index] <> 3) then ACanvas.Font.Color := clBlack;

  if (AViewInfo.GridRecord.Values[cxGridDBBandedColumn18.Index]<>NULL)
      AND (AViewInfo.GridRecord.Values[cxGridDBBandedColumn18.Index]<>0) then ACanvas.Font.Color := clRed;

  if (AViewInfo.GridRecord.Values[cxGrid7DBBandedTableView1global_color.Index]<>NULL) then ACanvas.Brush.Color := AViewInfo.GridRecord.Values[cxGrid7DBBandedTableView1global_color.Index];

  if (AViewInfo.GridRecord.Values[cxGrid1DBBandedTableView1set_bargain_block.Index]) then begin
    ACanvas.Font.Color := clPurple; //clMoneyGreen - $00AF0AAA;
    ACanvas.Font.Style := [fsBold];
  end;

  if AViewInfo.GridRecord.Selected or AViewInfo.GridRecord.Focused then begin
    ACanvas.Brush.Color := clNavy;
    if (AViewInfo.GridRecord.Values[cxGridDBBandedColumn18.Index]<>NULL)
      AND (AViewInfo.GridRecord.Values[cxGridDBBandedColumn18.Index]<>0) then ACanvas.Font.Color := clRed
    else ACanvas.Font.Color := clWhite;
    if AViewInfo.Focused then ACanvas.Brush.Color := clBlue;
  end;

end;

procedure TfmInvoiceScore.cxPageControl1Change(Sender: TObject);
var
  key_val  : Variant;
begin
  Screen.Cursor := crHourglass;
  // Запоминаем значение ключа
  if not FcxGridView.DataController.DataSet.IsEmpty then key_val := FcxGridView.DataController.GetKeyFieldsValues;

  case cxPageControl1.ActivePageIndex of
    0 : begin
          FcxGridView :=  cxGrid1DBBandedTableView1;
          Query_InvoiceScore.Close;
          Query_InvoiceScore.Parameters.ParamByName('date1').Value := Fdate1;
          Query_InvoiceScore.Parameters.ParamByName('date2').Value := Fdate2;
          Query_InvoiceScore.Parameters.ParamByName('type_invoice_score').Value := Ftype_score;
          Query_InvoiceScore.Open;
        end;
    1 : begin
          if not Query_InvoiceScore.Active then begin
            Query_InvoiceScore.Close;
            Query_InvoiceScore.Parameters.ParamByName('date1').Value := Fdate1;
            Query_InvoiceScore.Parameters.ParamByName('date2').Value := Fdate2;
            Query_InvoiceScore.Parameters.ParamByName('type_invoice_score').Value := Ftype_score;
            Query_InvoiceScore.Open;
          end;
          FcxGridView :=  cxGrid2DBBandedTableView1;
          Query_InvTable.Close;
          Query_InvTable.Parameters.ParamByName('date1').Value := Fdate1;
          Query_InvTable.Parameters.ParamByName('date2').Value := Fdate2;
          Query_InvTable.Parameters.ParamByName('type_invoice_score').Value := Ftype_score;
          Query_InvTable.Open;
        end;
  end;

  // Пытаемся восстановить запись на прежнее место
  if FcxGridView.DataController.LocateByKey(key_val) = False then FcxGridView.Controller.GoToFirst;
  if FcxGridView.Controller.FocusedRecord <> nil then FcxGridView.Controller.FocusedRecord.Selected := True;

  Screen.Cursor := crDefault;
end;


procedure TfmInvoiceScore.dxBarButton10Click(Sender: TObject);
var str_acts_id : string;
          Q : TADOQuery;
          List : TStringList;
          i : integer;
begin
  if not InputQuery('Номер записи Акта', 'Номер записи документа:', str_acts_id) then begin
    Exit;
  end;

  Q := TADOQuery.Create(nil);
  Q.Connection := fmMain.Lis;
  List := TStringList.Create;
  List.CommaText := str_acts_id;
  List.Delimiter := ',';
  for i := 0 to List.Count - 1 do if (Trim(List.Strings[i])<>'') then begin
   Q.Close;
   Q.SQL.Clear;
   Q.SQL.Add('SELECT 1 FROM ACTS WITH (NOLOCK) WHERE acts_id = ' + Trim(List.Strings[i]));
   Q.Open;

   if Q.RecordCount = 0 then begin
     Application.MessageBox(PChar('Не найден акт с № записи ' + Trim(List.Strings[i])), 'Внимание', MB_OK);
     break;
   end;

  fmInvoiceScoreAdd := TfmInvoiceScoreAdd.Create(Application, True, Ftype_score);
  fmInvoiceScoreAdd._InsertInvoiceScoreByActs := StrToInt(List.Strings[i]);
  if fmInvoiceScoreAdd.ShowModal = mrOk then
    RefreshQueryGrid(FcxGridView, 'invoice_score_id', fmInvoiceScoreAdd._GetInvoiceScoreID);

  end;
end;

procedure TfmInvoiceScore.dxBarButton11Click(Sender: TObject);
var                  Q : TADOQuery;
        str_bargain_id ,
  str_invoice_score_id : string;
begin
  str_bargain_id := '';
  str_invoice_score_id := '';

  case cxPageControl1.ActivePageIndex of
    0 : str_invoice_score_id := GetStrId(cxGrid1DBBandedTableView1invoice_score_id, ',');
    1 : str_invoice_score_id := GetStrId(cxGrid2DBBandedTableView1invoice_score_id, ',');
  end;

  Q := TADOQuery.Create(nil);
  Q.Connection := Fconnect;
  Q.CommandTimeout := 100;
  Q.SQL.Text := 'SELECT DISTINCT vb.bargain_id ' +
	  'FROM ACTS_INVOICE_SCORE ais ' +
	  'JOIN (SELECT DISTINCT cod AS invoice_score_id FROM dbo.StrToTbl(''' + str_invoice_score_id + ''', default)) i ON i.invoice_score_id = ais.invoice_score_id ' +
	  'JOIN acts_bargain ab ON ab.acts_id = ais.acts_id AND ab.type_acts = 0 ' +
	  'JOIN view_bargain vb ON vb.bargain_id = ab.bargain_id ';
  Q.Open;
  Q.First;
  while not Q.Eof do begin
    str_bargain_id := Q.FieldByName('bargain_id').AsString + ',' + str_bargain_id;
    Q.Next;
  end;
  Q.Free;
  PrintFactByAgreeNew(str_bargain_id, Fconnect, usr_pwd);
end;

procedure TfmInvoiceScore.dxBarButton14Click(Sender: TObject);
var i : integer;
begin
  for i:=0 to fmMain.MDIChildCount-1 do
    if (fmMain.MDIChildren[i].ClassName = 'TfmInvoiceScoreReserve') then begin
      fmMain.MDIChildren[i].Show;
      Exit
    end;
  fmInvoiceScoreReserve := TfmInvoiceScoreReserve.Create(Application, False);
  fmInvoiceScoreReserve._SetConnection := Fconnect;
end;

procedure TfmInvoiceScore.dxBarButton15Click(Sender: TObject);
var date1 : TDateTime;
       SP : TADOStoredProc;
        i : integer;
begin
  if cxPageControl1.ActivePageIndex <> 0 then begin
    Application.MessageBox('Данное действие выполняется с закладки "Клиент"', 'Внимание', MB_OK);
    Exit;
  end;

  fmPeriod := TfmPeriod.Create(Application, Fdate1, Fdate2, 3);
  if fmPeriod.ShowModal=mrOK then begin
    Screen.Cursor := crHourglass;
    date1 := fmPeriod._GetMonth;

    SP := TADOStoredProc.Create(self);
    SP.Connection := Fconnect;
    SP.ProcedureName := 'sp_invoice_score_modify';
    SP.CommandTimeout := 300;
    SP.Parameters.Refresh;
    for i:=0 to cxGrid1DBBandedTableView1.Controller.SelectedRowCount - 1 do begin
      ShowTextMessage('Осталось ' + IntToStr(cxGrid1DBBandedTableView1.Controller.SelectedRowCount - i) + ' строк...', False);
      SP.Close;
      SP.Parameters.ParamByName('@type_action'      ).Value := 5;
      SP.Parameters.ParamByName('@invoice_score_id' ).Value := cxGrid1DBBandedTableView1.Controller.SelectedRows[i].Values[cxGrid1DBBandedTableView1invoice_score_id.Index];
      SP.Parameters.ParamByName('@score_period_date').Value := EncodeDate(YearOf(date1) , MonthOf(date1), 15);
      SP.ExecProc;
    end;

    SP.Free;
    RefreshQueryGrid(cxGrid1DBBandedTableView1, 'invoice_score_id', cxGrid1DBBandedTableView1invoice_score_id.DataBinding.Field.AsInteger);
    ShowTextMessage();

    Screen.Cursor := crDefault;
  end;
end;

procedure TfmInvoiceScore.dxBarButton16Click(Sender: TObject);
type
  TFunc = function(AppHand: THandle; users_group_cod: string; global_id: integer; DocumentType: string; data_xml: TArray<Byte>; data_size: integer; ClientDS: TClientDataSet): variant;
  TFuncPdf = procedure(users_group_cod: string; print_form_id: integer; path : string);
var
  // Генерация печатной формы  --------------
  FPrintForm  : TFunc;
  FPrintFormPdf  : TFuncPdf;
  handle      : THandle;
  v           : Variant;
  mem_bytes   : TBytesStream;
  ClientDS    : TClientDataSet;

  save_path   : string;
  // ----------------------------------------
  sp_acts_modify : TADOStoredProc;

var doc                                 : EDOXMLUniTrDoc820.IXMLФайл;
    xml                                 : TXMLDocument;
    i                                   : integer;

    _fmInvoiceScore                     : TfmInvoiceScore;

    invoice_score_id                    : integer;

    set_print_comment                   : boolean;
    set_print_empty_ed_izm              : boolean;
    set_not_print_ed_izm                : boolean;
    set_print_contract                  : boolean;
    set_type_total                      : boolean;

    Query, Q_Nakl                       : TADOQuery;
    Query_tmp                           : TADOQuery;
    SP_Table                            : TADOStoredProc;
    Q_NDS                               : TADOQuery;

    score_sum, score_nds, score_sum_all, score_cnt : Currency;

    _GUID                               : TGUID;

    _SL                                 : TStringList;
    _tmp_date                           : TDateTime;
    pp_num, pp_date, str_nakl           : string;
    folder_name                         : string;

begin
  if cxGrid1DBBandedTableView1.Controller.SelectedRowCount = 0 then begin
    Exit;
  end;

  invoice_score_id := FcxGridView.GetColumnByFieldName('invoice_score_id').DataBinding.Field.AsInteger;

  // Заполнение данных
  Query := TADOQuery.Create(nil);
  Query.Connection := fmMain.Lis;
  Query.SQL.Add('SELECT * ');
  Query.SQL.Add(', acts_id = (SELECT TOP 1 acts_id FROM acts WHERE global_id = invoice_score_id)');
  Query.SQL.Add(', acts_date = (SELECT TOP 1 acts_date FROM acts WHERE global_id = invoice_score_id)');
  Query.SQL.Add(', self_edo_id = (SELECT TOP 1 edo_id FROM firm WHERE firm.firm_id = firm_self)');
  Query.SQL.Add(', customer_edo_id = (SELECT TOP 1 edo_id FROM firm WHERE firm.firm_id = firm_customer)');
  Query.SQL.Add('FROM view_invoice_score WHERE invoice_score_id = ' + IntToStr(invoice_score_id));
  Query.Open;

  Q_Nakl := TADOQuery.Create(nil);
  Q_Nakl.Connection := fmMain.Lis;
  Q_Nakl.SQL.Add('SELECT DISTINCT num_document_pref, num_document');
  Q_Nakl.SQL.Add('FROM FACT ');
  Q_Nakl.SQL.Add('WHERE bargain_id IN (SELECT bargain_id FROM INVOICE_SCORE_TABLE WHERE invoice_score_id = :invoice_score_id)');
  Q_Nakl.SQL.Add('AND set_main = 1');

  if Query.FieldByName('self_edo_id').AsString = '' then begin
    Application.MessageBox('Отсутсвует идентификатор ЭДО Собственной организации'#10'Формирование счет-фактуры невозможно', 'Винмание', MB_OK or MB_ICONERROR);
    Query.Free;
    exit;
  end;
  if Query.FieldByName('customer_edo_id').AsString = '' then begin
    Application.MessageBox('Отсутсвует идентификатор ЭДО Контрагента'#10'Формирование счет-фактуры невозможно', 'Винмание', MB_OK or MB_ICONERROR);
    Query.Free;
    exit;
  end;

  set_print_contract     := Query.FieldByName('set_print_contract').AsBoolean or Query.FieldByName('set_print_contract_full').AsBoolean;
  set_print_comment      := Query.FieldByName('set_print_comment').AsBoolean;
  set_not_print_ed_izm   := Query.FieldByName('set_not_print_ed_izm').AsBoolean;
  set_type_total         := Query.FieldByName('set_type_total').AsBoolean;


  doc := EDOXMLUniTrDoc820.NewФайл;

  // Файл.СвУчДокОбор
  // идентификаторы участников ЭДО - надо будет брать из списка участников
  doc.СвУчДокОбор.ИдОтпр := Query.FieldByName('self_edo_id').AsString;
  doc.СвУчДокОбор.ИдПол  := Query.FieldByName('customer_edo_id').AsString;
  doc.СвУчДокОбор.СвОЭДОтпр.НаимОрг := 'ЗАО "ПФ "СКБ Контур"';
  doc.СвУчДокОбор.СвОЭДОтпр.ИННЮЛ   := '6663003127';
  doc.СвУчДокОбор.СвОЭДОтпр.ИдЭДО   := '2BM';

  // Файл
  CreateGUID(_GUID);
  doc.ИдФайл := 'ON_NSCHFDOPPR_' + doc.СвУчДокОбор.ИдПол + '_' + doc.СвУчДокОбор.ИдОтпр + '_' + FormatDateTime('yyyymmdd', Date) + '_' + Copy(GUIDToString(_GUID), 2, 36);
  doc.ВерсФорм := '5.01';
  doc.ВерсПрог := 'LIS 4.0';

  // Файл.Документ
  doc.Документ.КНД := '1115131';
  if Query.FieldByName('type_universal_trans_doc').AsInteger = 2 then begin
    doc.Документ.Функция := 'ДОП';
    doc.Документ.ПоФактХЖ := 'Документ об отгрузке товаров (выполнении работ), передаче имущественных прав (документ об оказании услуг)';
    doc.Документ.НаимДокОпр := 'Документ об отгрузке товаров (выполнении работ), передаче имущественных прав (документ об оказании услуг)';
  end else begin
    doc.Документ.Функция := 'СЧФДОП';
    doc.Документ.ПоФактХЖ := 'Документ об отгрузке товаров (выполнении работ), передаче имущественных прав (документ об оказании услуг)';
    doc.Документ.НаимДокОпр := 'Счет-фактура и документ об отгрузке товаров (выполнении работ), передаче имущественных прав (документ об оказании услуг)';
  end;
  doc.Документ.ДатаИнфПр := FormatDateTime('dd.mm.yyyy', Now);
  doc.Документ.ВремИнфПр := FormatDateTime('hh.nn.ss', Now);
  doc.Документ.НаимЭконСубСост := Query.FieldByName('firm_self_name_full').AsString + ' ' + Query.FieldByName('firm_self_inn_kpp').AsString;

  // Файл.Документ.СвСчФакт
  doc.Документ.СвСчФакт.НомерСчФ := Query.FieldByName('score_cod').AsString;
  doc.Документ.СвСчФакт.ДатаСчФ  := FormatDateTime('dd.mm.yyyy', Query.FieldByName('score_date').AsDateTime);
  doc.Документ.СвСчФакт.КодОКВ   := Query.FieldByName('currency_cod').AsString;
  if not Query.FieldByName('correction_cod').IsNull then begin
    doc.Документ.СвСчФакт.ИспрСчФ.НомИспрСчФ  := Query.FieldByName('correction_cod').AsInteger;
    doc.Документ.СвСчФакт.ИспрСчФ.ДатаИспрСчФ := FormatDateTime('dd.mm.yyyy', Query.FieldByName('correction_date').AsDateTime);
  end;

  with doc.Документ.СвСчФакт.СвПрод.Add do begin
    ИдСв.СвЮЛУч.НаимОрг := Query.FieldByName('score_firm_self_name_full').AsString;
    ИдСв.СвЮЛУч.ИННЮЛ   := LeftStr(Query.FieldByName('score_firm_self_inn_kpp').AsString, Pos('/', Query.FieldByName('score_firm_self_inn_kpp').AsString) - 1);
    ИдСв.СвЮЛУч.КПП     := RightStr(Query.FieldByName('score_firm_self_inn_kpp').AsString, Length(Query.FieldByName('score_firm_self_inn_kpp').AsString) - Pos('/', Query.FieldByName('score_firm_self_inn_kpp').AsString));
    Адрес.АдрИнф.КодСтр := '643';
    Адрес.АдрИнф.АдрТекст := Query.FieldByName('score_firm_self_address').AsString;
  end;

  //  Номера ПП - попробуем раздербанить
  _SL := TStringList.Create;
  _SL.LineBreak := ';';
  _SL.Text := ReplaceStr(ReplaceStr(ReplaceStr(Query.FieldByName('score_pay').AsString, ',', ';'), #10, ';'), #13, ';');
  for i := 0 to _SL.Count - 1 do begin
    if pos('от', _SL.Strings[i]) > 0 then begin
      pp_num  := LeftStr(_SL.Strings[i], Pos('от', _SL.Strings[i]) - 1);
      pp_num  := Trim(ReplaceStr(pp_num, '№', ''));
      pp_date := RightStr(_SL.Strings[i], Length(_SL.Strings[i]) - Pos('от', _SL.Strings[i]) - 1);
      pp_date := Trim(ReplaceStr(pp_date, 'г.', ''));
      pp_date := Trim(ReplaceStr(pp_date, 'г', ''));
      if TryStrToDate(pp_date, _tmp_date) then
        pp_date := FormatDateTime('dd.mm.yyyy', _tmp_date);

      with doc.Документ.СвСчФакт.СвПРД.Add do begin
        НомерПРД := pp_num;
        ДатаПРД  := pp_date;
      end;
    end;
  end;
  _SL.Free;

 with doc.Документ.СвСчФакт.СвПокуп.Add do begin
    ИдСв.СвЮЛУч.НаимОрг := Query.FieldByName('score_firm_customer_name_full').AsString;
    ИдСв.СвЮЛУч.ИННЮЛ   := LeftStr(Query.FieldByName('score_firm_customer_inn_kpp').AsString, Pos('/', Query.FieldByName('score_firm_customer_inn_kpp').AsString) - 1);
    ИдСв.СвЮЛУч.КПП     := RightStr(Query.FieldByName('score_firm_customer_inn_kpp').AsString, Length(Query.FieldByName('score_firm_customer_inn_kpp').AsString) - Pos('/', Query.FieldByName('score_firm_customer_inn_kpp').AsString));
    // адрес у нас не формализован - выгружаем в поле иностранного адреса
    Адрес.АдрИнф.КодСтр := '643';
    Адрес.АдрИнф.АдрТекст := Query.FieldByName('score_firm_customer_address').AsString;
  end;

  if (Query.FieldByName('score_ID_state_contract').AsString <> '' ) then
    doc.Документ.СвСчФакт.ДопСвФХЖ1.ИдГосКон := Query.FieldByName('score_ID_state_contract').AsString;


  doc.Документ.СвСчФакт.ДопСвФХЖ1.НаимОКВ := 'Российский рубль';

  // Примечание
  if set_print_contract then
    with doc.Документ.СвСчФакт.ИнфПолФХЖ1.Add do begin
      Идентиф := 'Договор';
      Значен := Query.FieldByName('score_contract_name').AsString;
    end;
  if set_print_comment then
    with doc.Документ.СвСчФакт.ИнфПолФХЖ1.Add do begin
      Идентиф := 'Примечание';
      Значен := Query.FieldByName('score_comment').AsString;
    end;

  // Файл.Документ.ТаблСчФакт
  SP_Table := TADOStoredProc.Create(nil);
  SP_Table.Connection := fmMain.Lis;
  SP_Table.ProcedureName := 'sp_invoice_score_table_get';
  SP_Table.Parameters.Refresh;
  SP_Table.Parameters.ParamByName('@invoice_score_id').Value := invoice_score_id;
  SP_Table.Open;

  Q_NDS := TADOQuery.Create(nil);
  Q_NDS.Connection := fmMain.Lis;
  Q_NDS.SQL.Clear;
  Q_NDS.SQL.Add('SELECT * FROM inf_obj WHERE type_inf_id = -12');
  Q_NDS.Open;

  score_sum := 0; score_nds := 0; score_sum_all := 0; score_cnt := 0;
  while not SP_Table.Eof do begin

    if(LisCheck(Fconnect.ConnectionString)) then begin
      with doc.Документ.ТаблСчФакт.СведТов.Add do begin
        НомСтр      := SP_Table.RecNo;
        НаимТов     := SP_Table.FieldByName('name_service').AsString;
        //ДефОКЕИ_Тов := '-';

        if (not SP_Table.FieldByName('cost_without_nds').IsNull)  then // не пусто
          СтТовБезНДС := ReplaceStr(FormatCurr('0.00', SP_Table.FieldByName('cost_without_nds').AsFloat), ',', '.');

        НалСт       := VarToStr(Q_NDS.Lookup('inf_obj_id', SP_Table.FieldByName('tax_rate_id').AsInteger, 'inf_obj_name'));
        СтТовУчНал  := ReplaceStr(FormatCurr('0.00', SP_Table.FieldByName('cost_with_nds').AsFloat), ',', '.');


        if (not SP_Table.FieldByName('ed_izm_cod').IsNull) and (not set_not_print_ed_izm) then begin
          ОКЕИ_Тов := SP_Table.FieldByName('ed_izm_cod').AsString;
        end;

        if (not SP_Table.FieldByName('quantity').IsNull) and (not set_not_print_ed_izm) then begin // не пусто и нет принудительной печати пустоты
          КолТов := ReplaceStr(FormatCurr('0.000', SP_Table.FieldByName('quantity').AsFloat), ',', '.');
          score_cnt := score_cnt + SP_Table.FieldByName('quantity').AsFloat;
        end;

        if (not SP_Table.FieldByName('price_ed_izm').IsNull) and (not set_not_print_ed_izm) then // не пусто и нет принудительной печати пустоты
          ЦенаТов := ReplaceStr(FormatCurr('0.00', SP_Table.FieldByName('price_ed_izm').AsFloat), ',', '.');

        if SP_Table.FieldByName('aktciz').IsNull then
          Акциз.БезАкциз := 'без акциза'
        else
          Акциз.СумАкциз := ReplaceStr(FormatCurr('0.00', SP_Table.FieldByName('aktciz').AsFloat), ',', '.');

        if (SP_Table.FieldByName('tax_sum').AsFloat = 0) and (Q_NDS.Lookup('inf_obj_id', SP_Table.FieldByName('tax_rate_id').AsInteger, 'inf_obj_cod') = null)  then
          СумНал.БезНДС := 'без НДС'
        else
          СумНал.СумНал := ReplaceStr(FormatCurr('0.00', SP_Table.FieldByName('tax_sum').AsFloat), ',', '.');

        if (not SP_Table.FieldByName('ed_izm_cod').IsNull) and (not set_not_print_ed_izm) then begin
          ДопСведТов.НаимЕдИзм := SP_Table.FieldByName('ed_izm_name').AsString;
        end;
      end;
    end;

    score_sum := score_sum + SP_Table.FieldByName('cost_without_nds').AsFloat;
    score_nds := score_nds + SP_Table.FieldByName('tax_sum').AsFloat;
    score_sum_all := score_sum_all + SP_Table.FieldByName('cost_with_nds').AsFloat;


    SP_Table.Next;
  end;

  SP_Table.First;



//  if not SP_Table.FieldByName('bargain_nds_cod').IsNull then
//    ВсегоОпл.СумНалВсего.СумНал := ReplaceStr(FormatCurr('0.00', acts_sum_nds) , ',', '.')
//  else
//    ВсегоОпл.СумНалВсего.БезНДС := 'без НДС';


  if set_type_total then begin
    Q_NDS.Locate('inf_obj_id', SP_Table.FieldByName('tax_rate_id').AsInteger, []);
    score_nds := RoundCurr(Q_NDS.FieldByName('inf_obj_cod').AsInteger/100 * score_sum, -2);
    score_sum_all := score_sum + score_nds;
  end;

  if score_sum <> 0 then
    doc.Документ.ТаблСчФакт.ВсегоОпл.СтТовБезНДСВсего   := ReplaceStr(FormatCurr('0.00', score_sum)    , ',', '.');
  if score_sum_all <> 0 then
    doc.Документ.ТаблСчФакт.ВсегоОпл.СтТовУчНалВсего    := ReplaceStr(FormatCurr('0.00', score_sum_all), ',', '.');

  doc.Документ.ТаблСчФакт.ВсегоОпл.СумНалВсего.СумНал := ReplaceStr(FormatCurr('0.00', score_nds)    , ',', '.');
  doc.Документ.ТаблСчФакт.ВсегоОпл.КолНеттоВс := ReplaceStr(FormatCurr('0.00', score_cnt), ',', '.');


  doc.Документ.СвПродПер.СвПер.СодОпер := 'Товар (груз) передал / услуги, результаты работ, права сдал';
  doc.Документ.СвПродПер.СвПер.ДатаПер := FormatDateTime('dd.mm.yyyy', Query.FieldByName('acts_date').AsDateTime);
  with doc.Документ.СвПродПер.СвПер.ОснПер.Add do begin
    НаимОсн  := 'Договор';
    НомОсн   := Query.FieldByName('contract_cod').AsString;
    ДатаОсн  := FormatDateTime('dd.mm.yyyy', Query.FieldByName('contract_date_begin').AsDateTime);
    ДопСвОсн := Query.FieldByName('score_comment').AsString;
  end;

  if not Query.FieldByName('firm_director_id').IsNull then begin
    Query_tmp := TADOQuery.Create(nil);
    Query_tmp.Connection := fmMain.Lis;
    Query_tmp.SQL.Add('SELECT	type_contact_name, firm_contact_comment, family, first_name, last_name, isnull(set_edo_sign,0) set_edo_sign, firm_inn');
    Query_tmp.SQL.Add('FROM	  view_firm_contact');
    Query_tmp.SQL.Add('WHERE	firm_contact_id = ' + Query.FieldByName('firm_director_id').AsString);
    Query_tmp.Open;

    if(Query_tmp.FieldByName('firm_contact_comment').AsString = '') or
      (Query_tmp.FieldByName('type_contact_name').AsString = '') or
      (Query_tmp.FieldByName('family').AsString = '') or
      (Query_tmp.FieldByName('first_name').AsString = '') or
      (Query_tmp.FieldByName('last_name').AsString = '') then begin

      Application.MessageBox('У подписанта отсутствует ЭЦП.','ВНИМАНИЕ',MB_OK);
      Query_tmp.Free;
      Exit;
    end;

    if Query_tmp.FieldByName('set_edo_sign').AsBoolean then begin
      with doc.Документ.СвПродПер.СвПер.СвЛицПер.РабОргПрод do begin
        Должность    := Query_tmp.FieldByName('type_contact_name').AsString;
        ОснПолн      := Query_tmp.FieldByName('firm_contact_comment').AsString;
        ФИО.Фамилия  := Query_tmp.FieldByName('family').AsString;
        ФИО.Имя      := Query_tmp.FieldByName('first_name').AsString;
        ФИО.Отчество := Query_tmp.FieldByName('last_name').AsString;
      end;

      with doc.Документ.Подписант.Add do begin
        ОблПолн         := '6';
        Статус          := '1';
        ОснПолн         := Query_tmp.FieldByName('firm_contact_comment').AsString;

        ЮЛ.ИННЮЛ        := Query_tmp.FieldByName('firm_inn').AsString;//'7702059030';
        ЮЛ.Должн        := Query_tmp.FieldByName('type_contact_name').AsString;
        ЮЛ.ФИО.Фамилия  := Query_tmp.FieldByName('family').AsString;
        ЮЛ.ФИО.Имя      := Query_tmp.FieldByName('first_name').AsString;
        ЮЛ.ФИО.Отчество := Query_tmp.FieldByName('last_name').AsString;
      end;
    end;


    Query_tmp.Free;
  end;

  Q_Nakl.Close;
  Q_Nakl.Parameters.ParamByName('invoice_score_id').Value := Query.FieldByName('invoice_score_id').AsInteger;
  Q_Nakl.Open;
  str_nakl := '';
  while not Q_Nakl.Eof do begin
    if str_nakl <> '' then str_nakl := str_nakl + ', ';
    str_nakl := str_nakl + Q_Nakl.FieldByName('num_document_pref').AsString + Q_Nakl.FieldByName('num_document').AsString;
    Q_Nakl.Next;
  end;
  if str_nakl <> '' then begin
    if Q_Nakl.RecordCount = 1 then str_nakl := 'ж/д накладная №' + str_nakl
    else str_nakl := 'ж/д накладные №№ ' + str_nakl;
    doc.Документ.СвПродПер.СвПер.ТранГруз.СвТранГруз := str_nakl;
  end;
  Q_Nakl.Free;

//  Query_tmp := TADOQuery.Create(nil);
//  Query_tmp.Connection := fmMain.Lis;
//  Query_tmp.SQL.Add('SELECT	type_contact_name, firm_contact_comment, family, first_name, last_name, isnull(set_edo_sign,0) set_edo_sign');
//  Query_tmp.SQL.Add('FROM	  view_firm_contact');
//  Query_tmp.SQL.Add('WHERE	firm_contact_id = ' + Query.FieldByName('firm_director_id').AsString);
//  Query_tmp.Open;
//
//  if  (Query_tmp.FieldByName('firm_contact_comment').AsString = '') or
//      (Query_tmp.FieldByName('type_contact_name').AsString = '') or
//      (Query_tmp.FieldByName('family').AsString = '') or
//      (Query_tmp.FieldByName('first_name').AsString = '') or
//      (Query_tmp.FieldByName('last_name').AsString = '') then begin
//
//      Application.MessageBox('У подписанта отсутствует ЭЦП.','ВНИМАНИЕ',MB_OK);
//      Query_tmp.Free;
//      Exit;
//  end;
//
//
//  if (Query_tmp.FieldByName('firm_contact_comment').AsString = '') or
//     (Query_tmp.FieldByName('type_contact_name').AsString = '') or
//     (Query_tmp.FieldByName('family').AsString = '') or
//     (Query_tmp.FieldByName('first_name').AsString = '') or
//     (Query_tmp.FieldByName('last_name').AsString = '') then begin
//
//    Application.MessageBox('У подписанта отсутствует ЭЦП.','ВНИМАНИЕ',MB_OK);
//    Query_tmp.Free;
//    Exit;
//  end;
//
//  with doc.Документ.Подписант.Add do begin
//    ОблПолн         := '6';
//    Статус          := '1';
//    ОснПолн         := Query_tmp.FieldByName('firm_contact_comment').AsString;
//
//    ЮЛ.ИННЮЛ        := '7702059030';
//    ЮЛ.Должн        := Query_tmp.FieldByName('type_contact_name').AsString;
//    ЮЛ.ФИО.Фамилия  := Query_tmp.FieldByName('family').AsString;
//    ЮЛ.ФИО.Имя      := Query_tmp.FieldByName('first_name').AsString;
//    ЮЛ.ФИО.Отчество := Query_tmp.FieldByName('last_name').AsString;
//  end;
//  Query_tmp.Free;

    // Файл.Документ.Подписант
//  with doc.Документ.Подписант.Add do begin
//    ОблПолн         := '6';
//    Статус          := '1';
//    ОснПолн         := 'Должностные обязанности';
//
//    ЮЛ.ИННЮЛ        := '7702059030';
//    ЮЛ.Должн        := 'Генеральный директор';
//    ЮЛ.ФИО.Фамилия  := 'Пурим';
//    ЮЛ.ФИО.Имя      := 'Дмитрий';
//    ЮЛ.ФИО.Отчество := 'Юрьевич';
//  end;


  // сохранение файла
  xml := doc.OwnerDocument as TXMLDocument;
  xml.Active := True;

  xml.Version := '1.0';
  xml.Encoding := 'windows-1251';

  // Генерация Диадок (получение данных)
    //!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
    mem_bytes := TBytesStream.Create;
    xml.SaveToStream(mem_bytes);
    //!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!

    // Пользователь
    Query_tmp := TADOQuery.Create(nil);
    Query_tmp.Connection := fmMain.Lis;
    Query_tmp.SQL.Add('SELECT	users.FIO_users, inf_obj.inf_obj_cod as users_group_cod');
    Query_tmp.SQL.Add('FROM	  users INNER JOIN inf_obj on users.users_group_id = inf_obj.inf_obj_id');
    Query_tmp.SQL.Add('WHERE	users_name = system_user');
    Query_tmp.Open;

    ClientDS := TClientDataSet.Create(nil);
    ClientDS.FieldDefs.Add('contract_id',   ftInteger);
    ClientDS.FieldDefs.Add('contract_cod', ftString, 50);
    ClientDS.FieldDefs.Add('contract_date',   ftDateTime);
    ClientDS.FieldDefs.Add('firm_customer_name', ftString, 50);
    ClientDS.FieldDefs.Add('firm_self_name', ftString, 50);
    ClientDS.FieldDefs.Add('document_cod', ftString, 50);
    ClientDS.FieldDefs.Add('documen_date',   ftDateTime);
    ClientDS.FieldDefs.Add('document_sum',   ftCurrency);
    ClientDS.FieldDefs.Add('document_nds_sum',   ftCurrency);
    ClientDS.FieldDefs.Add('document_nds_type', ftString, 50);
    ClientDS.FieldDefs.Add('FIO_users', ftString, 50);
    ClientDS.FieldDefs.Add('file_name', ftString, 300);
    ClientDS.CreateDataSet;
    ClientDS.LogChanges := False;

    // заполним структуру
    ClientDS.Append;
    ClientDS.FieldByName('contract_id'        ).Value := Query.FieldByName('contract_id').Value;
    ClientDS.FieldByName('contract_cod'       ).Value := Query.FieldByName('contract_cod').Value;
    ClientDS.FieldByName('contract_date'      ).Value := Query.FieldByName('contract_date_begin').Value;
    ClientDS.FieldByName('firm_customer_name' ).Value := Query.FieldByName('firm_customer_name_short').Value;
    ClientDS.FieldByName('firm_self_name'     ).Value := Query.FieldByName('firm_self_name_short').Value;
    ClientDS.FieldByName('document_cod'       ).Value := Query.FieldByName('score_cod').Value;
    ClientDS.FieldByName('documen_date'       ).Value := Query.FieldByName('score_date').Value;
    ClientDS.FieldByName('document_sum'       ).Value := score_sum_all;
    ClientDS.FieldByName('document_nds_sum'   ).Value := score_nds;
    ClientDS.FieldByName('document_nds_type'  ).Value := Q_NDS.Lookup('inf_obj_id', SP_Table.FieldByName('tax_rate_id').AsInteger, 'inf_obj_name');
    ClientDS.FieldByName('FIO_users'          ).Value := Query_tmp.FieldByName('FIO_users').Value;
    ClientDS.FieldByName('file_name'          ).Value := doc.ИдФайл + '.xml';
    ClientDS.Post;

    // Сгенирить форму
    handle := LoadLibrary('work_edo.dll');
    @FPrintForm := GetProcAddress(handle, 'CreateWndGeneratePrintForm');
    v := FPrintForm(Application.Handle, Query_tmp.FieldByName('users_group_cod').AsString, Query.FieldByName('invoice_score_id').AsInteger, 'UniversalTransferDocument', mem_bytes.Bytes, mem_bytes.Size, ClientDS);
    FreeLibrary(handle);

//    ShowMessage(IntToStr(v[0]));
    // Сохранение и отображение
    if v[0] <> -9 then begin
      if not Query.FieldByName('acts_id').IsNull then begin
        // имидж с-ф может отсутсвовать (для старых с-ф)
        sp_acts_modify := TADOStoredProc.Create(nil);
        sp_acts_modify.Connection := fmMain.Lis;
        sp_acts_modify.ProcedureName := 'sp_acts_modify';
        sp_acts_modify.Parameters.Refresh;

        sp_acts_modify.Parameters.ParamByName('@type_action').Value := 8;
        sp_acts_modify.Parameters.ParamByName('@acts_id').Value := Query.FieldByName('acts_id').AsInteger; // ссылку на ЭДО сохраняем в имидже с-ф (таблица Акты)
        sp_acts_modify.Parameters.ParamByName('@edo_doc_id').Value := v[0];

        try
          sp_acts_modify.ExecProc;
        except
        end;

        sp_acts_modify.Free;
      end;

      // Сохранение на диске
      save_path := StoreRegistryString(rgLoad, '\Software\Lis1\Path', 'UPDPath', '');
      if SelectDirectory('Путь для сохранения', '', save_path) then begin
        StoreRegistryString(rgSave, '\Software\Lis1\Path', 'UPDPath', save_path);

        folder_name := Query.FieldByName('score_cod').AsString;
        folder_name := ReplaceStr(folder_name,'\',' ');
        folder_name := ReplaceStr(folder_name,'/',' ');
        folder_name := ReplaceStr(folder_name,':',' ');
        folder_name := ReplaceStr(folder_name,'*',' ');
        folder_name := ReplaceStr(folder_name,'?',' ');
        folder_name := ReplaceStr(folder_name,'<',' ');
        folder_name := ReplaceStr(folder_name,'>',' ');
        folder_name := ReplaceStr(folder_name,'|',' ');
        folder_name := ReplaceStr(folder_name,'"',' ');

        save_path := save_path + '\' + folder_name + '\';
        ForceDirectories(save_path);

        // Сохранение pdf
        handle := LoadLibrary('work_edo.dll');
        @FPrintFormPdf := GetProcAddress(handle, 'CreateWndDocumentPdfSave2Path');
        FPrintFormPdf(Query_tmp.FieldByName('users_group_cod').AsString, v[0], save_path);
        FreeLibrary(handle);

        // Сохранение pdf
        handle := LoadLibrary('work_edo.dll');
        @FPrintFormPdf := GetProcAddress(handle, 'CreateWndDocumentXmlSave2Path');
        FPrintFormPdf(Query_tmp.FieldByName('users_group_cod').AsString, v[0], save_path);
        FreeLibrary(handle);

        ShellExecute(HWND(nil), 'explore', PChar(save_path), nil, nil, SW_RESTORE);
      end;
    end;

    Query_tmp.Free;
    ClientDS.Free;
  // Генерация Диадок (получение данных)

  xml.Active := False;

  Q_NDS.Free;
  SP_Table.Free;
  Query.Free;
end;

procedure TfmInvoiceScore.dxBarButton17Click(Sender: TObject);
type
  TFunc = function(AppHand: THandle; users_group_cod: string; global_id: integer; DocumentType: string; data_xml: TArray<Byte>; data_size: integer; ClientDS: TClientDataSet): variant;
  TFuncPdf = procedure(users_group_cod: string; print_form_id: integer; path : string);
var
  // Генерация печатной формы  --------------
  FPrintForm  : TFunc;
  FPrintFormPdf  : TFuncPdf;
  handle      : THandle;
  v           : Variant;
  mem_bytes   : TBytesStream;
  ClientDS    : TClientDataSet;

  save_path   : string;
  // ----------------------------------------
  sp_acts_modify : TADOStoredProc;

var doc                                 : EDOXMLInvoice.IXMLФайл;
    xml                                 : TXMLDocument;
    i                                   : integer;

    _fmInvoiceScore                     : TfmInvoiceScore;

    invoice_score_id                    : integer;

    set_print_comment                   : boolean;
    set_print_empty_ed_izm              : boolean;
    set_not_print_ed_izm                : boolean;
    set_print_contract                  : boolean;
    set_type_total                      : boolean;

    Query                               : TADOQuery;
    Query_tmp                           : TADOQuery;
    SP_Table                            : TADOStoredProc;
    Q_NDS                               : TADOQuery;

    score_sum, score_nds, score_sum_all : Currency;

    _GUID                               : TGUID;

    _SL                                 : TStringList;
    _tmp_date                           : TDateTime;
    pp_num, pp_date                     : string;
begin
  if cxGrid1DBBandedTableView1.Controller.SelectedRowCount = 0 then begin
    Exit;
  end;

  invoice_score_id := FcxGridView.GetColumnByFieldName('invoice_score_id').DataBinding.Field.AsInteger;

  // Заполнение данных
  Query := TADOQuery.Create(nil);
  Query.Connection := fmMain.Lis;
  Query.SQL.Add('SELECT * ');
  Query.SQL.Add(', acts_id = (SELECT TOP 1 acts_id FROM acts WHERE global_id = invoice_score_id)');
  Query.SQL.Add(', self_edo_id = (SELECT TOP 1 edo_id FROM firm WHERE firm.firm_id = firm_self)');
  Query.SQL.Add(', customer_edo_id = (SELECT TOP 1 edo_id FROM firm WHERE firm.firm_id = firm_customer)');
  Query.SQL.Add('FROM view_invoice_score WHERE invoice_score_id = ' + IntToStr(invoice_score_id));
  Query.Open;

  if Query.FieldByName('self_edo_id').AsString = '' then begin
    Application.MessageBox('Отсутсвует идентификатор ЭДО Собственной организации'#10'Формирование счет-фактуры невозможно', 'Винмание', MB_OK or MB_ICONERROR);
    Query.Free;
    exit;
  end;
  if Query.FieldByName('customer_edo_id').AsString = '' then begin
    Application.MessageBox('Отсутсвует идентификатор ЭДО Контрагента'#10'Формирование счет-фактуры невозможно', 'Винмание', MB_OK or MB_ICONERROR);
    Query.Free;
    exit;
  end;

  set_print_contract     := Query.FieldByName('set_print_contract').AsBoolean or Query.FieldByName('set_print_contract_full').AsBoolean;
  set_print_comment      := Query.FieldByName('set_print_comment').AsBoolean;
  set_not_print_ed_izm   := Query.FieldByName('set_not_print_ed_izm').AsBoolean;
  set_type_total         := Query.FieldByName('set_type_total').AsBoolean;

  doc := EDOXMLInvoice.NewФайл;

  // Файл.СвУчДокОбор
  // идентификаторы участников ЭДО - надо будет брать из списка участников
  doc.СвУчДокОбор.ИдОтпр := Query.FieldByName('self_edo_id').AsString;
  doc.СвУчДокОбор.ИдПол  := Query.FieldByName('customer_edo_id').AsString;
  doc.СвУчДокОбор.СвОЭДОтпр.НаимОрг := 'ЗАО "ПФ "СКБ Контур"';
  doc.СвУчДокОбор.СвОЭДОтпр.ИННЮЛ   := '6663003127';
  doc.СвУчДокОбор.СвОЭДОтпр.ИдЭДО   := '2BM';

  // Файл
  CreateGUID(_GUID);
  doc.ИдФайл := 'ON_NSCHFDOPPR_' + doc.СвУчДокОбор.ИдПол + '_' + doc.СвУчДокОбор.ИдОтпр + '_' + FormatDateTime('yyyymmdd', Date) + '_' + Copy(GUIDToString(_GUID), 2, 36);
  doc.ВерсФорм := '5.01';
  doc.ВерсПрог := 'LIS 2.174';

  // Файл.Документ
  doc.Документ.КНД := '1115131';
  doc.Документ.Функция := 'СЧФ';
  doc.Документ.ДатаИнфПр := FormatDateTime('dd.mm.yyyy', Now);
  doc.Документ.ВремИнфПр := FormatDateTime('hh.nn.ss', Now);
  doc.Документ.НаимЭконСубСост := Query.FieldByName('firm_self_name_full').AsString + ' ' + Query.FieldByName('firm_self_inn_kpp').AsString;
  // Файл.Документ.СвСчФакт
  doc.Документ.СвСчФакт.НомерСчФ := Query.FieldByName('score_cod').AsString;
  doc.Документ.СвСчФакт.ДатаСчФ  := FormatDateTime('dd.mm.yyyy', Query.FieldByName('score_date').AsDateTime);
  doc.Документ.СвСчФакт.КодОКВ   := Query.FieldByName('currency_cod').AsString;
  if not Query.FieldByName('correction_cod').IsNull then begin
    doc.Документ.СвСчФакт.ИспрСчФ.НомИспрСчФ  := Query.FieldByName('correction_cod').AsInteger;
    doc.Документ.СвСчФакт.ИспрСчФ.ДатаИспрСчФ := FormatDateTime('dd.mm.yyyy', Query.FieldByName('correction_date').AsDateTime);
  end;
  doc.Документ.СвСчФакт.СвПрод.ИдСв.СвЮЛУч.НаимОрг := Query.FieldByName('score_firm_self_name_full').AsString;
  doc.Документ.СвСчФакт.СвПрод.ИдСв.СвЮЛУч.ИННЮЛ   := LeftStr(Query.FieldByName('score_firm_self_inn_kpp').AsString, Pos('/', Query.FieldByName('score_firm_self_inn_kpp').AsString) - 1);
  doc.Документ.СвСчФакт.СвПрод.ИдСв.СвЮЛУч.КПП     := RightStr(Query.FieldByName('score_firm_self_inn_kpp').AsString, Length(Query.FieldByName('score_firm_self_inn_kpp').AsString) - Pos('/', Query.FieldByName('score_firm_self_inn_kpp').AsString));
  // адрес у нас не формализован - выгружаем в поле иностранного адреса
  doc.Документ.СвСчФакт.СвПрод.Адрес.АдрИнф.КодСтр := '643';
  doc.Документ.СвСчФакт.СвПрод.Адрес.АдрИнф.АдрТекст := Query.FieldByName('score_firm_self_address').AsString;

//  if Query.FieldByName('score_firm_sender_name').AsString = 'он же' then
//    doc.Документ.СвСчФакт.ГрузОт.ОнЖе := 'он же'
//  else if ReplaceStr(Query.FieldByName('score_firm_sender_name').AsString, '-', '') <> '' then
//    doc.Документ.СвСчФакт.ГрузОт.ГрузОтпр.НаимГОП.НаимОрг := Query.FieldByName('score_firm_sender_name').AsString;
//
//  if ReplaceStr(Query.FieldByName('score_firm_reciver_name').AsString, '-', '') <> '' then
//    doc.Документ.СвСчФакт.ГрузПолуч.НаимГОП.НаимОрг := Query.FieldByName('score_firm_reciver_name').AsString;

  //  Номера ПП - попробуем раздербанить
  _SL := TStringList.Create;
  _SL.LineBreak := ';';
  _SL.Text := ReplaceStr(ReplaceStr(ReplaceStr(Query.FieldByName('score_pay').AsString, ',', ';'), #10, ';'), #13, ';');
  for i := 0 to _SL.Count - 1 do begin
    if pos('от', _SL.Strings[i]) > 0 then begin
      pp_num  := LeftStr(_SL.Strings[i], Pos('от', _SL.Strings[i]) - 1);
      pp_num  := Trim(ReplaceStr(pp_num, '№', ''));
      pp_date := RightStr(_SL.Strings[i], Length(_SL.Strings[i]) - Pos('от', _SL.Strings[i]) - 1);
      pp_date := Trim(ReplaceStr(pp_date, 'г.', ''));
      pp_date := Trim(ReplaceStr(pp_date, 'г', ''));
      if TryStrToDate(pp_date, _tmp_date) then
        pp_date := FormatDateTime('dd.mm.yyyy', _tmp_date);

      with doc.Документ.СвСчФакт.СвПРД.Add do begin
        НомерПРД := pp_num;
        ДатаПРД  := pp_date;
      end;
    end;
  end;
  _SL.Free;

  doc.Документ.СвСчФакт.СвПокуп.ИдСв.СвЮЛУч.НаимОрг := Query.FieldByName('score_firm_customer_name_full').AsString;
  doc.Документ.СвСчФакт.СвПокуп.ИдСв.СвЮЛУч.ИННЮЛ   := LeftStr(Query.FieldByName('score_firm_customer_inn_kpp').AsString, Pos('/', Query.FieldByName('score_firm_self_inn_kpp').AsString) - 1);
  doc.Документ.СвСчФакт.СвПокуп.ИдСв.СвЮЛУч.КПП     := RightStr(Query.FieldByName('score_firm_customer_inn_kpp').AsString, Length(Query.FieldByName('score_firm_self_inn_kpp').AsString) - Pos('/', Query.FieldByName('score_firm_self_inn_kpp').AsString));
  // адрес у нас не формализован - выгружаем в поле иностранного адреса
  doc.Документ.СвСчФакт.СвПокуп.Адрес.АдрИнф.КодСтр := '643';
  doc.Документ.СвСчФакт.СвПокуп.Адрес.АдрИнф.АдрТекст := Query.FieldByName('score_firm_customer_address').AsString;

  // Примечание
  if set_print_contract then
    with doc.Документ.СвСчФакт.ИнфПолФХЖ1.Add do begin
      Идентиф := 'Договор';
      Значен := Query.FieldByName('score_contract_name').AsString;
    end;
  if set_print_comment then
    with doc.Документ.СвСчФакт.ИнфПолФХЖ1.Add do begin
      Идентиф := 'Примечание';
      Значен := Query.FieldByName('score_comment').AsString;
    end;

  // Файл.Документ.ТаблСчФакт
  SP_Table := TADOStoredProc.Create(nil);
  SP_Table.Connection := fmMain.Lis;
  SP_Table.ProcedureName := 'sp_invoice_score_table_get';
  SP_Table.Parameters.Refresh;
  SP_Table.Parameters.ParamByName('@invoice_score_id').Value := invoice_score_id;
  SP_Table.Open;

  Q_NDS := TADOQuery.Create(nil);
  Q_NDS.Connection := fmMain.Lis;
  Q_NDS.SQL.Clear;
  Q_NDS.SQL.Add('SELECT * FROM inf_obj WHERE type_inf_id = -12');
  Q_NDS.Open;

  score_sum := 0; score_nds := 0; score_sum_all := 0;
  while not SP_Table.Eof do begin

    if(LisCheck(Fconnect.ConnectionString)) then begin
      with doc.Документ.ТаблСчФакт.СведТов.Add do begin
        НомСтр := SP_Table.RecNo;
        НаимТов := SP_Table.FieldByName('name_service').AsString;
        if (not SP_Table.FieldByName('ed_izm_cod').IsNull) and (not set_not_print_ed_izm) then
          ОКЕИ_Тов := SP_Table.FieldByName('ed_izm_cod').AsString;
        if (not SP_Table.FieldByName('quantity').IsNull) and (not set_not_print_ed_izm) then // не пусто и нет принудительной печати пустоты
          КолТов := ReplaceStr(FormatCurr('0.000', SP_Table.FieldByName('quantity').AsFloat), ',', '.');
        if (not SP_Table.FieldByName('price_ed_izm').IsNull) and (not set_not_print_ed_izm) then // не пусто и нет принудительной печати пустоты
          ЦенаТов := ReplaceStr(FormatCurr('0.00', SP_Table.FieldByName('price_ed_izm').AsFloat), ',', '.');
        if (not SP_Table.FieldByName('cost_without_nds').IsNull)  then // не пусто
          СтТовБезНДС := ReplaceStr(FormatCurr('0.00', SP_Table.FieldByName('cost_without_nds').AsFloat), ',', '.');
        НалСт := Q_NDS.Lookup('inf_obj_id', SP_Table.FieldByName('tax_rate_id').AsInteger, 'inf_obj_name');
        СтТовУчНал := ReplaceStr(FormatCurr('0.00', SP_Table.FieldByName('cost_with_nds').AsFloat), ',', '.');
        if SP_Table.FieldByName('aktciz').IsNull then
          Акциз.БезАкциз := 'без акциза'
        else
          Акциз.СумАкциз := ReplaceStr(FormatCurr('0.00', SP_Table.FieldByName('aktciz').AsFloat), ',', '.');
        if (SP_Table.FieldByName('tax_sum').AsFloat = 0) and (Q_NDS.Lookup('inf_obj_id', SP_Table.FieldByName('tax_rate_id').AsInteger, 'inf_obj_cod') = null)  then
          СумНал.БезНДС := 'без НДС'
        else
          СумНал.СумНал := ReplaceStr(FormatCurr('0.00', SP_Table.FieldByName('tax_sum').AsFloat), ',', '.');

        if (not SP_Table.FieldByName('ed_izm_cod').IsNull) and (not set_not_print_ed_izm) then
          ДопСведТов.НаимЕдИзм := SP_Table.FieldByName('ed_izm_name').Value;
    end;

    end;

    score_sum := score_sum + SP_Table.FieldByName('cost_without_nds').AsFloat;
    score_nds := score_nds + SP_Table.FieldByName('tax_sum').AsFloat;
    score_sum_all := score_sum_all + SP_Table.FieldByName('cost_with_nds').AsFloat;

    SP_Table.Next;
  end;

  SP_Table.First;

  if set_type_total then begin
    Q_NDS.Locate('inf_obj_id', SP_Table.FieldByName('tax_rate_id').AsInteger, []);
    score_nds := RoundCurr(Q_NDS.FieldByName('inf_obj_cod').AsInteger/100 * score_sum, -2);
    score_sum_all := score_sum + score_nds;
  end;

  if score_sum <> 0 then
    doc.Документ.ТаблСчФакт.ВсегоОпл.СтТовБезНДСВсего   := ReplaceStr(FormatCurr('0.00', score_sum)    , ',', '.');
  if score_sum_all <> 0 then
    doc.Документ.ТаблСчФакт.ВсегоОпл.СтТовУчНалВсего    := ReplaceStr(FormatCurr('0.00', score_sum_all), ',', '.');

//  if score_nds <> 0 then
    doc.Документ.ТаблСчФакт.ВсегоОпл.СумНалВсего.СумНал := ReplaceStr(FormatCurr('0.00', score_nds)    , ',', '.');



  Query_tmp := TADOQuery.Create(nil);
  Query_tmp.Connection := fmMain.Lis;
  Query_tmp.SQL.Add('SELECT	type_contact_name, firm_contact_comment, family, first_name, last_name, isnull(set_edo_sign,0) set_edo_sign');
  Query_tmp.SQL.Add('FROM	  view_firm_contact');
  Query_tmp.SQL.Add('WHERE	firm_contact_id = ' + Query.FieldByName('firm_director_id').AsString);
  Query_tmp.Open;

  if  (Query_tmp.FieldByName('firm_contact_comment').AsString = '') or
      (Query_tmp.FieldByName('type_contact_name').AsString = '') or
      (Query_tmp.FieldByName('family').AsString = '') or
      (Query_tmp.FieldByName('first_name').AsString = '') or
      (Query_tmp.FieldByName('last_name').AsString = '') then begin

      Application.MessageBox('У подписанта отсутствует ЭЦП.','ВНИМАНИЕ',MB_OK);
      Query_tmp.Free;
      Exit;
  end;


  if (Query_tmp.FieldByName('firm_contact_comment').AsString = '') or
     (Query_tmp.FieldByName('type_contact_name').AsString = '') or
     (Query_tmp.FieldByName('family').AsString = '') or
     (Query_tmp.FieldByName('first_name').AsString = '') or
     (Query_tmp.FieldByName('last_name').AsString = '') then begin

    Application.MessageBox('У подписанта отсутствует ЭЦП.','ВНИМАНИЕ',MB_OK);
    Query_tmp.Free;
    Exit;
  end;

  with doc.Документ.Подписант.Add do begin
    ОблПолн         := '6';
    Статус          := '1';
    ОснПолн         := Query_tmp.FieldByName('firm_contact_comment').AsString;

    ЮЛ.ИННЮЛ        := '7702059030';
    ЮЛ.Должн        := Query_tmp.FieldByName('type_contact_name').AsString;
    ЮЛ.ФИО.Фамилия  := Query_tmp.FieldByName('family').AsString;
    ЮЛ.ФИО.Имя      := Query_tmp.FieldByName('first_name').AsString;
    ЮЛ.ФИО.Отчество := Query_tmp.FieldByName('last_name').AsString;
  end;
  Query_tmp.Free;

    // Файл.Документ.Подписант
//  with doc.Документ.Подписант.Add do begin
//    ОблПолн         := '6';
//    Статус          := '1';
//    ОснПолн         := 'Должностные обязанности';
//
//    ЮЛ.ИННЮЛ        := '7702059030';
//    ЮЛ.Должн        := 'Генеральный директор';
//    ЮЛ.ФИО.Фамилия  := 'Пурим';
//    ЮЛ.ФИО.Имя      := 'Дмитрий';
//    ЮЛ.ФИО.Отчество := 'Юрьевич';
//  end;

  // сохранение файла
  xml := doc.OwnerDocument as TXMLDocument;
  xml.Active := True;

  xml.Version := '1.0';
  xml.Encoding := 'windows-1251';

  // Генерация Диадок (получение данных)
    //!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
    mem_bytes := TBytesStream.Create;
    xml.SaveToStream(mem_bytes);
    //!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!

    // Пользователь
    Query_tmp := TADOQuery.Create(nil);
    Query_tmp.Connection := fmMain.Lis;
    Query_tmp.SQL.Add('SELECT	users.FIO_users, inf_obj.inf_obj_cod as users_group_cod');
    Query_tmp.SQL.Add('FROM	  users INNER JOIN inf_obj on users.users_group_id = inf_obj.inf_obj_id');
    Query_tmp.SQL.Add('WHERE	users_name = system_user');
    Query_tmp.Open;

    ClientDS := TClientDataSet.Create(nil);
    ClientDS.FieldDefs.Add('contract_id',   ftInteger);
    ClientDS.FieldDefs.Add('contract_cod', ftString, 50);
    ClientDS.FieldDefs.Add('contract_date',   ftDateTime);
    ClientDS.FieldDefs.Add('firm_customer_name', ftString, 50);
    ClientDS.FieldDefs.Add('firm_self_name', ftString, 50);
    ClientDS.FieldDefs.Add('document_cod', ftString, 50);
    ClientDS.FieldDefs.Add('documen_date',   ftDateTime);
    ClientDS.FieldDefs.Add('document_sum',   ftCurrency);
    ClientDS.FieldDefs.Add('document_nds_sum',   ftCurrency);
    ClientDS.FieldDefs.Add('document_nds_type', ftString, 50);
    ClientDS.FieldDefs.Add('FIO_users', ftString, 50);
    ClientDS.FieldDefs.Add('file_name', ftString, 300);
    ClientDS.CreateDataSet;
    ClientDS.LogChanges := False;

    // заполним структуру
    ClientDS.Append;
    ClientDS.FieldByName('contract_id'        ).Value := Query.FieldByName('contract_id').Value;
    ClientDS.FieldByName('contract_cod'       ).Value := Query.FieldByName('contract_cod').Value;
    ClientDS.FieldByName('contract_date'      ).Value := Query.FieldByName('contract_date_begin').Value;
    ClientDS.FieldByName('firm_customer_name' ).Value := Query.FieldByName('firm_customer_name_short').Value;
    ClientDS.FieldByName('firm_self_name'     ).Value := Query.FieldByName('firm_self_name_short').Value;
    ClientDS.FieldByName('document_cod'       ).Value := Query.FieldByName('score_cod').Value;
    ClientDS.FieldByName('documen_date'       ).Value := Query.FieldByName('score_date').Value;
    ClientDS.FieldByName('document_sum'       ).Value := score_sum_all;
    ClientDS.FieldByName('document_nds_sum'   ).Value := score_nds;
    ClientDS.FieldByName('document_nds_type'  ).Value := Q_NDS.Lookup('inf_obj_id', SP_Table.FieldByName('tax_rate_id').AsInteger, 'inf_obj_name');
    ClientDS.FieldByName('FIO_users'          ).Value := Query_tmp.FieldByName('FIO_users').Value;
    ClientDS.FieldByName('file_name'          ).Value := doc.ИдФайл + '.xml';
    ClientDS.Post;

    // Сгенирить форму
    handle := LoadLibrary('work_edo.dll');
    @FPrintForm := GetProcAddress(handle, 'CreateWndGeneratePrintForm');
    v := FPrintForm(Application.Handle, Query_tmp.FieldByName('users_group_cod').AsString, Query.FieldByName('invoice_score_id').AsInteger, 'Invoice', mem_bytes.Bytes, mem_bytes.Size, ClientDS);
    FreeLibrary(handle);

//    ShowMessage(IntToStr(v[0]));
    // Сохранение и отображение
    if v[0] <> -9 then begin
      if not Query.FieldByName('acts_id').IsNull then begin
        // имидж с-ф может отсутсвовать (для старых с-ф)
        sp_acts_modify := TADOStoredProc.Create(nil);
        sp_acts_modify.Connection := fmMain.Lis;
        sp_acts_modify.ProcedureName := 'sp_acts_modify';
        sp_acts_modify.Parameters.Refresh;

        sp_acts_modify.Parameters.ParamByName('@type_action').Value := 8;
        sp_acts_modify.Parameters.ParamByName('@acts_id').Value := Query.FieldByName('acts_id').AsInteger; // ссылку на ЭДО сохраняем в имидже с-ф (таблица Акты)
        sp_acts_modify.Parameters.ParamByName('@edo_doc_id').Value := v[0];

        try
          sp_acts_modify.ExecProc;
        except
        end;

        sp_acts_modify.Free;
      end;

      // Сохранение на диске
      if SelectDirectory('Путь для сохранения', '', save_path) then begin
        // Сохранение pdf
        handle := LoadLibrary('work_edo.dll');
        @FPrintFormPdf := GetProcAddress(handle, 'CreateWndDocumentPdfSave2Path');
        FPrintFormPdf(Query_tmp.FieldByName('users_group_cod').AsString, v[0], save_path);
        FreeLibrary(handle);

        // Сохранение pdf
        handle := LoadLibrary('work_edo.dll');
        @FPrintFormPdf := GetProcAddress(handle, 'CreateWndDocumentXmlSave2Path');
        FPrintFormPdf(Query_tmp.FieldByName('users_group_cod').AsString, v[0], save_path);
        FreeLibrary(handle);

        ShellExecute(HWND(nil), 'explore', PChar(save_path), nil, nil, SW_RESTORE);
      end;
    end;

    Query_tmp.Free;
    ClientDS.Free;
  // Генерация Диадок (получение данных)

  xml.Active := False;

  Q_NDS.Free;
  SP_Table.Free;
  Query.Free;
end;

procedure TfmInvoiceScore.dxBarButton1Click(Sender: TObject);
begin
  RefreshQueryGrid(FcxGridView, FcxGridView.DataController.KeyFieldNames);
end;

procedure TfmInvoiceScore.dxBarButton2Click(Sender: TObject);
var str_invoice_score_id: string;
    i                   : integer;
begin
  if (cxPageControl1.ActivePageIndex = 0) then begin
    str_invoice_score_id := '';
    for i:=0 to cxGrid1DBBandedTableView1.Controller.SelectedRecordCount - 1 do
      str_invoice_score_id := str_invoice_score_id + ', ' + IntToStr(cxGrid1DBBandedTableView1.Controller.SelectedRows[i].Values[cxGrid1DBBandedTableView1invoice_score_id.Index]);
    Delete(str_invoice_score_id, 1, 2);

    PrintInvoiceScore(str_invoice_score_id, Ftype_score, TComponent(Sender).Tag, Fconnect);
  end;
end;

procedure TfmInvoiceScore.dxBarButton3Click(Sender: TObject);
begin
  Fcontract_id      := cxGrid1DBBandedTableView1contract_id.DataBinding.Field.AsInteger;
  Finvoice_score_id := cxGrid1DBBandedTableView1invoice_score_id.DataBinding.Field.AsInteger;

  if cxGrid1DBBandedTableView1docs_id.DataBinding.Field.IsNull then
    Fdocs_id := -9
  else
    Fdocs_id := cxGrid1DBBandedTableView1docs_id.DataBinding.Field.AsInteger;

  Fstr_invoice_score_id := cx_GetSelectedValues(cxGrid1, 'invoice_score_id');
  ModalResult := mrOk;
end;

procedure TfmInvoiceScore.dxBarButton4Click(Sender: TObject);
var Fcompany_cod : integer;
               Q : TADOQuery;
begin
  Q := TADOQuery.Create(nil);
  Q.Connection := fmMain.Lis;
  Q.SQL.Text :=  'SELECT c1sf.invoice_score_id,  c1sf.c1_doc_cod as score_cod, c1sf.c1_doc_date as score_period, c1sf.c1_firm_name as score_customer FROM [Lis_1C].[dbo].[C1_INVOICE_SCORE] c1sf ' +
                 ' LEFT OUTER JOIN [dbo].[INVOICE_SCORE] isc ON isc.score_date = c1sf.c1_doc_date AND isc.score_cod collate Cyrillic_General_CI_AS = c1sf.c1_doc_cod collate Cyrillic_General_CI_AS ' +
                 ' WHERE (isc.invoice_score_id IS NULL) AND (c1sf.set_del IS NULL) AND (c1_doc_date BETWEEN :date1 AND :date2) ORDER BY c1_doc_date';

  Q.Parameters.ParamByName('date1').Value := StrToDate(FormatDateTime('dd'+ FormatSettings.DateSeparator +'mm'+ FormatSettings.DateSeparator +'yyyy',Fdate1));
  Q.Parameters.ParamByName('date2').Value := StrToDate(FormatDateTime('dd'+ FormatSettings.DateSeparator +'mm'+ FormatSettings.DateSeparator +'yyyy',Fdate2));
  Q.Open;

  fmFilter := TfmFilter.Create(0, Q, 'invoice_score_id', 'score_cod', 'score_customer');
  fmFilter._SetInviceScoreChoose := True;
  fmFilter.Caption := 'Счета-фактуры 1C, которых нет в LIS.';
  fmFilter.ShowModal;
end;

procedure TfmInvoiceScore.dxBarButton6Click(Sender: TObject);
var Fcompany_cod : integer;
               Q : TADOQuery;
begin
  Q := TADOQuery.Create(nil);
  Q.Connection := fmMain.Lis;
  Q.SQL.Text :=  'SELECT isc.invoice_score_id, isc.score_cod, isc.score_date as score_period ,isc.score_firm_customer_name_full as score_customer FROM  [dbo].[INVOICE_SCORE] isc ' +
                 ' LEFT OUTER JOIN [Lis_1C].[dbo].[C1_INVOICE_SCORE] c1sf ON isc.score_date = c1sf.c1_doc_date AND isc.score_cod collate Cyrillic_General_CI_AS = c1sf.c1_doc_cod collate Cyrillic_General_CI_AS ' +
                 ' WHERE (c1sf.invoice_score_id IS NULL) AND (isc.score_date BETWEEN :date1 AND :date2) ORDER BY score_date';

  Q.Parameters.ParamByName('date1').Value := StrToDate(FormatDateTime('dd'+ FormatSettings.DateSeparator +'mm'+ FormatSettings.DateSeparator +'yyyy',Fdate1));
  Q.Parameters.ParamByName('date2').Value := StrToDate(FormatDateTime('dd'+ FormatSettings.DateSeparator +'mm'+ FormatSettings.DateSeparator +'yyyy',Fdate2));
  Q.Open;

  fmFilter := TfmFilter.Create(0, Q, 'invoice_score_id', 'score_cod', 'score_customer');
  fmFilter._SetInviceScoreChoose := True;
  fmFilter.Caption := 'Счета-фактуры LIS, которых нет в 1С.';
  fmFilter.ShowModal;
end;

procedure TfmInvoiceScore.dxBarButton7Click(Sender: TObject);
var   SP : TADOStoredProc;
   login : string;
 db_name : string;
 connect_lis_1c : TADOConnection;
begin
  Screen.Cursor := crHourglass;
  ShowTextMessage('Обновление списка счетов-фактур 1С.', False);
  db_name     := 'lis_1c';
  login       := 'lis_1c_sfh';

  connect_lis_1c := TADOConnection.Create(nil);
  connect_lis_1c.ConnectionString := 'Persist Security Info=True;Provider=SQLOLEDB.1;User ID='+login+';Password='+'lis_1c'+';Initial Catalog='+db_name+';Data Source=' + usr_pwd^.server+';';
  connect_lis_1c.ConnectionTimeout := 600;
  connect_lis_1c.CommandTimeout    := 600;
  connect_lis_1c.KeepConnection   := False;
  connect_lis_1c.LoginPrompt      := False;
  connect_lis_1c.Connected        := True;

  SP := TADOStoredProc.Create(nil);
  SP.Connection := connect_lis_1c;
  SP.ProcedureName := 'sp_get_SF_from_1c';
  SP.Parameters.Refresh;
  SP.Parameters.ParamByName('@date_begin').Value := Fdate1;
  SP.Parameters.ParamByName('@date_end').Value   := Fdate2;
  SP.Parameters.ParamByName('@c1_company_GUID').Value := '397f6074-70d0-4dea-bceb-8713e3987eb5';
  try
    SP.ExecProc
  except
    Application.MessageBox('Ошибка обновления сф из 1С!','Ошибка!',MB_OKCANCEL);
    SP.Free;
    ShowTextMessage('', True);
    Screen.Cursor := crDefault;
  end;
  RefreshQueryGrid(FcxGridView, FcxGridView.DataController.KeyFieldNames);
  SP.Free;
  ShowTextMessage('', True);
  Screen.Cursor := crDefault;
end;

procedure TfmInvoiceScore.dxBarButton9Click(Sender: TObject);
begin
  Screen.Cursor := crHourglass;

  if TControl(Sender).Tag = 1 then begin
    Fdate1 := StartOfTheMonth(IncMonth(Fdate1, 1));
  end;

  if TControl(Sender).Tag = 2 then begin
    Fdate1 := StartOfTheMonth(IncMonth(Fdate1, -1));
  end;

  Fdate2 := IncMonth(Fdate1, 1) - 1;
  dxBarSubItem1.Caption := FormatDateTime('mmmm yyyy', Fdate1);

  TADOQuery(FcxGridView.DataController.DataSet).Close;
  TADOQuery(FcxGridView.DataController.DataSet).Parameters.ParamByName('date1').Value := Fdate1;
  TADOQuery(FcxGridView.DataController.DataSet).Parameters.ParamByName('date2').Value := Fdate2;
  TADOQuery(FcxGridView.DataController.DataSet).Open;

  RefreshQueryGrid(FcxGridView, FcxGridView.DataController.KeyFieldNames);

  Screen.Cursor := crDefault;
end;

procedure TfmInvoiceScore.N23Click(Sender: TObject);
var
   invoice_score_id      : Integer;
   SP_Invoice_Score_Copy : TADOStoredProc;
begin
  if cxGrid1DBBandedTableView1.Controller.SelectedRowCount = 0 then begin
    Application.MessageBox('НЕТ ВЫДЕЛЕННЫХ СТРОК', 'ВНИМАНИЕ', MB_OK);
    Exit;
  end;

  invoice_score_id := cxGrid1DBBandedTableView1invoice_score_id.DataBinding.Field.AsInteger;
  SP_Invoice_Score_Copy := TADOStoredProc.Create(self);
  SP_Invoice_Score_Copy.Connection := Fconnect;
  SP_Invoice_Score_Copy.ProcedureName := 'SP_Invoice_Score_Copy';
  SP_Invoice_Score_Copy.Parameters.Refresh;

  SP_Invoice_Score_Copy.Close;
  SP_Invoice_Score_Copy.Parameters.ParamByName('@invoice_score_id').Value := invoice_score_id;
  SP_Invoice_Score_Copy.Parameters.ParamByName('@set_correct').Value := (TComponent(Sender).Tag = 1);
  SP_Invoice_Score_Copy.Parameters.ParamByName('@set_nocopy_acts').Value := (TComponent(Sender).Tag = 100);
  try
    SP_Invoice_Score_Copy.ExecProc;
    invoice_score_id := sp_invoice_score_COPY.Parameters.ParamByName('@invoice_score_id').Value;
    RefreshQueryGrid(FcxGridView, 'invoice_score_id', invoice_score_id);
  except
  end;

  SP_Invoice_Score_Copy.Free;
end;

procedure TfmInvoiceScore.N2Click(Sender: TObject);
begin
  if cxGrid1DBBandedTableView1.Controller.SelectedRowCount = 0 then begin
    Application.MessageBox('НЕТ ВЫДЕЛЕННЫХ СТРОК', 'ВНИМАНИЕ', MB_OK);
    Exit;
  end;

  if FcxGridView.GetColumnByFieldName('parent_id').DataBinding.Field.IsNull then begin
    fmInvoiceScoreAdd := TfmInvoiceScoreAdd.Create(Application, False, Ftype_score);
    fmInvoiceScoreAdd._UpdateInvoiceScore := FcxGridView.GetColumnByFieldName('invoice_score_id').DataBinding.Field.AsInteger;
    if (fmInvoiceScoreAdd.ShowModal = mrOk) then
      RefreshQueryGrid(FcxGridView, 'invoice_score_id', fmInvoiceScoreAdd._GetInvoiceScoreID);
  end else begin
    fmInvoiceScoreCorrAdd := TfmInvoiceScoreCorrAdd.Create(Application, False, Ftype_score);
    fmInvoiceScoreCorrAdd._UpdateInvoiceScore := FcxGridView.GetColumnByFieldName('invoice_score_id').DataBinding.Field.AsInteger;
    if (fmInvoiceScoreCorrAdd.ShowModal = mrOk) then
      RefreshQueryGrid(FcxGridView, 'invoice_score_id', fmInvoiceScoreCorrAdd._GetInvoiceScoreID);
  end;
end;

procedure TfmInvoiceScore.N14Click(Sender: TObject);
var str_bargain_id : string;
    i : integer;
begin
  if cxGrid7DBBandedTableView1.Controller.SelectedRowCount < 1 then exit;

  str_bargain_id := '';
  for i:=0 to cxGrid7DBBandedTableView1.Controller.SelectedRecordCount - 1 do
    str_bargain_id := str_bargain_id + ', ' + IntToStr(cxGrid7DBBandedTableView1.Controller.SelectedRows[i].Values[cxGrid1DBBandedTableView1bargain_id.Index]);
  Delete(str_bargain_id, 1, 2);

  PrintFrahtCardWeight_Multi2(Fconnect, str_bargain_id);
end;

procedure TfmInvoiceScore.N4Click(Sender: TObject);
var                     i : integer;
  SP_Invoice_Score_Modify : TADOStoredProc;
begin
  if cxGrid1DBBandedTableView1.Controller.SelectedRowCount = 0 then begin
    Application.MessageBox('НЕТ ВЫДЕЛЕННЫХ СТРОК','ВНИМАНИЕ',MB_OK);
    Exit;
  end;

  if Application.MessageBox('Вы точно уверены, что хотите удалить счёт-фактуру?', 'Внимание', MB_OKCANCEL) = ID_OK then begin
    SP_Invoice_Score_Modify := TADOStoredProc.Create(self);
    SP_Invoice_Score_Modify.Connection := Fconnect;
    SP_Invoice_Score_Modify.ProcedureName := 'SP_Invoice_Score_Modify';
    SP_Invoice_Score_Modify.Parameters.Refresh;

    for i := 0 to cxGrid1DBBandedTableView1.Controller.SelectedRowCount - 1 do begin
      ShowTextMessage('Осталось ' + IntToStr(cxGrid1DBBandedTableView1.Controller.SelectedRowCount - i) + '...',False);
      SP_Invoice_Score_Modify.Close;
      SP_Invoice_Score_Modify.Parameters.ParamByName('@type_action').Value := 2;
      SP_Invoice_Score_Modify.Parameters.ParamByName('@invoice_score_id').Value := cxGrid1DBBandedTableView1.Controller.SelectedRows[i].Values[cxGrid1DBBandedTableView1invoice_score_id.Index];
      SP_Invoice_Score_Modify.ExecProc;
      if SP_Invoice_Score_Modify.Parameters.ParamByName('@invoice_score_id').Value = -9 then
        Application.MessageBox('Ошибка при удалении счёт-фактуры...', 'Ошибочка', MB_OK);
    end;
    ShowTextMessage();
    RefreshQueryGrid(FcxGridView, 'invoice_score_id');
    SP_Invoice_Score_Modify.Free;
  end;
end;

procedure TfmInvoiceScore.N58Click(Sender: TObject);
begin
  fmPeriod := TfmPeriod.Create(Application, Fdate1, Fdate2, 3);
  if fmPeriod.ShowModal=mrOK then begin
    Screen.Cursor := crHourglass;
    Fdate1 := fmPeriod._GetMonth;
    Fdate2 := IncMonth(Fdate1, 1) - 1;
    dxBarSubItem1.Caption := FormatDateTime('mmmm yyyy', Fdate1);

    TADOQuery(FcxGridView.DataController.DataSet).Close;
    TADOQuery(FcxGridView.DataController.DataSet).Parameters.ParamByName('date1').Value := Fdate1;
    TADOQuery(FcxGridView.DataController.DataSet).Parameters.ParamByName('date2').Value := Fdate2;
    TADOQuery(FcxGridView.DataController.DataSet).Open;

    RefreshQueryGrid(FcxGridView, FcxGridView.DataController.KeyFieldNames);
    Screen.Cursor := crDefault;
  end;
end;

procedure TfmInvoiceScore.N59Click(Sender: TObject);
begin
  fmPeriod := TfmPeriod.Create(Application, Fdate1, Fdate2, 2);
  if fmPeriod.ShowModal=mrOK then begin
    Screen.Cursor := crHourglass;
    Fdate1 := fmPeriod._GetMonthBegin;
    Fdate2 := fmPeriod._GetMonthEnd;
    dxBarSubItem1.Caption := FormatDateTime('mmm yy', Fdate1) + ' - ' + FormatDateTime('mmm yy', Fdate2);

    TADOQuery(FcxGridView.DataController.DataSet).Close;
    TADOQuery(FcxGridView.DataController.DataSet).Parameters.ParamByName('date1').Value := Fdate1;
    TADOQuery(FcxGridView.DataController.DataSet).Parameters.ParamByName('date2').Value := Fdate2;
    TADOQuery(FcxGridView.DataController.DataSet).Open;

    RefreshQueryGrid(FcxGridView, FcxGridView.DataController.KeyFieldNames);
    Screen.Cursor := crDefault;
  end;

end;

procedure TfmInvoiceScore.SetContractId(contract_id: integer);
var Q: TADOQuery;
begin
  Q := TADOQuery.Create(nil);
  Q.Connection := Fconnect;
  Q.SQL.Add('SELECT * FROM view_contract WHERE contract_id = ' + IntToStr(contract_id));
  Q.Open;


  cxGrid1DBBandedTableView1.DataController.Filter.Clear;
  cxGrid1DBBandedTableView1.DataController.Filter.Options := cxGrid1DBBandedTableView1.DataController.Filter.Options + [fcoCaseInsensitive];
  cxGrid1DBBandedTableView1.DataController.Filter.Root.BoolOperatorKind := fboAnd;

  cxGrid1DBBandedTableView1.DataController.Filter.Root.AddItem(cxGrid1DBBandedTableView1contract_cod, foLike, '%' + Q.FieldByName('contract_cod').AsString + '%', '[' + Q.FieldByName('contract_cod').AsString + ']');
  cxGrid1DBBandedTableView1.DataController.Filter.Root.AddItem(cxGrid1DBBandedTableView1firm_customer_name, foLike, '%' + Q.FieldByName('firm_customer_name').AsString + '%', '[' + Q.FieldByName('firm_customer_name').AsString + ']');

  cxGrid1DBBandedTableView1.DataController.Filter.Active := True;

  Q.Free;
end;

{$REGION 'PrintcxGrid'}
procedure TfmInvoiceScore.Excel1Click(Sender: TObject);
begin
  case TdxBarManager(TdxBarButton(Sender).GetParentComponent).Tag of
    1 : PrintcxGrid(cxGrid1DBBandedTableView1);
    2 : PrintcxGrid(cxGrid2DBBandedTableView1);
	  6 : PrintcxGrid(cxGrid6DBBandedTableView1);
    7 :	PrintcxGrid(cxGrid7DBBandedTableView1);
  end;
end;
{$ENDREGION 'PrintcxGrid'}

{$REGION 'Фильтр по всем записям'}
procedure TfmInvoiceScore.dxBarButton_FilterRecords1Click(Sender: TObject);
begin
  FcxGridView.Filtering.ColumnFilteredItemsList := not dxBarButton_FilterRecords1.Down;
end;

procedure TfmInvoiceScore.dxBarButton_FilterRecords2Click(Sender: TObject);
begin
  cxGrid6DBBandedTableView1.Filtering.ColumnFilteredItemsList := not dxBarButton_FilterRecords2.Down;
end;

procedure TfmInvoiceScore.dxBarButton_FilterRecords3Click(Sender: TObject);
begin
  cxGrid7DBBandedTableView1.Filtering.ColumnFilteredItemsList := not dxBarButton_FilterRecords3.Down;
end;
{$ENDREGION 'Фильтр по всем записям'}

end.
