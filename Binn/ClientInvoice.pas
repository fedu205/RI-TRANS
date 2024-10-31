unit ClientInvoice;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs, Default,
  Db, ADODB, Menus, StdCtrls, ComCtrls, ToolWin, ExtCtrls, cxClasses, cxControls, cxGridCustomView, cxGraphics, DBClient,
  cxGridCustomTableView, cxGridTableView, cxGridBandedTableView, Variants, cxGridDBBandedTableView, cxGridLevel, cxGrid,
  cxPropertiesStore, cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, cxDBData, cxCurrencyEdit, cxContainer,
  cxLabel, cxSplitter, cxLookAndFeelPainters, cxButtons, cxGridDBTableView, cxMemo, dxBar, cxLookAndFeels, ImgList, DateUtils,
  cxDropDownEdit, cxCheckBox, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMetropolis, dxSkinMetropolisDark, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue,
  dxSkinOffice2010Silver, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic,
  dxSkinSharp, dxSkinSharpPlus, dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008, dxSkinTheAsphaltWorld, dxSkinsDefaultPainters,
  dxSkinValentine, dxSkinVS2010, dxSkinWhiteprint, dxSkinXmas2008Blue, dxSkinscxPCPainter, cxNavigator, dxSkinsdxBarPainter,
  dxSkinOffice2016Colorful, dxSkinOffice2016Dark, dxSkinVisualStudio2013Blue,
  dxSkinVisualStudio2013Dark, dxSkinVisualStudio2013Light, System.ImageList,
  cxCalendar, cxDataControllerConditionalFormattingRulesManagerDialog, dxDateRanges, dxSkinTheBezier, dxSkinOffice2019Colorful, dxScrollbarAnnotations, dxBarBuiltInMenu, cxPC;

type
  TfmClientInvoice = class(TForm)
    Query_ClientInvoice: TADOQuery;
    DS_ClientInvoice: TDataSource;
    Query_Bargain: TADOQuery;
    DS_Bargain: TDataSource;
    Query_Subject: TADOQuery;
    DS_Subject: TDataSource;
    cxPropertiesStore1: TcxPropertiesStore;
    dxBarManager1: TdxBarManager;
    dxBarManager1Bar1: TdxBar;
    dxBarSubItem1: TdxBarSubItem;
    dxBarButton2: TdxBarButton;
    dxBarButton3: TdxBarButton;
    dxBarButton6: TdxBarButton;
    dxBarButton15: TdxBarButton;
    dxBarSubItem5: TdxBarSubItem;
    dxBarButton16: TdxBarButton;
    dxBarButton17: TdxBarButton;
    dxBarButton18: TdxBarButton;
    dxBarButton19: TdxBarButton;
    dxBarButton23: TdxBarButton;
    dxBarButton1: TdxBarButton;
    dxBarSubItem2: TdxBarSubItem;
    dxBarSubItem3: TdxBarSubItem;
    Popup_Invoice: TdxBarPopupMenu;
    N1: TdxBarButton;
    N4: TdxBarButton;
    N12: TdxBarButton;
    N2: TdxBarButton;
    N18: TdxBarButton;
    N24: TdxBarButton;
    N25: TdxBarButton;
    N21: TdxBarButton;
    N17: TdxBarButton;
    N16: TdxBarSubItem;
    N6: TdxBarButton;
    N7: TdxBarButton;
    Excel2: TdxBarButton;
    Popup_Agree: TdxBarPopupMenu;
    N9: TdxBarButton;
    N10: TdxBarButton;
    dxBarButton4: TdxBarButton;
    dxBarSubItem4: TdxBarSubItem;
    dxBarButton8: TdxBarButton;
    dxBarSeparator1: TdxBarSeparator;
    dxBarButton10: TdxBarButton;
    dxBarSubItem6: TdxBarSubItem;
    dxBarButton9: TdxBarButton;
    dxBarButton13: TdxBarButton;
    Splitter2: TSplitter;
    dxBarButton_FilterRecords1: TdxBarButton;
    Popup_Pay: TdxBarPopupMenu;
    Query_Pay: TADOQuery;
    DS_Pay: TDataSource;
    dxBarButton14: TdxBarButton;
    dxBarButton20: TdxBarButton;
    dxBarButton21: TdxBarButton;
    dxBarButton22: TdxBarButton;
    dxBarButton24: TdxBarButton;
    cxPageControl1: TcxPageControl;
    cxTabSheet1: TcxTabSheet;
    cxGrid5: TcxGrid;
    cxGrid5DBBandedTableView1: TcxGridDBBandedTableView;
    cxGrid5DBBandedTableView1invoice_table_id: TcxGridDBBandedColumn;
    cxGrid5DBBandedTableView1invoice_id: TcxGridDBBandedColumn;
    cxGrid5DBBandedTableView1subject_invoice: TcxGridDBBandedColumn;
    cxGrid5DBBandedTableView1subject_set: TcxGridDBBandedColumn;
    cxGrid5DBBandedTableView1subject_rate: TcxGridDBBandedColumn;
    cxGrid5DBBandedTableView1subject_weight: TcxGridDBBandedColumn;
    cxGrid5DBBandedTableView1subject_ed_izm_name: TcxGridDBBandedColumn;
    cxGrid5DBBandedTableView1subject_nds_name: TcxGridDBBandedColumn;
    cxGrid5DBBandedTableView1subject_sum: TcxGridDBBandedColumn;
    cxGrid5DBBandedTableView1subject_sum_nds: TcxGridDBBandedColumn;
    cxGrid5DBBandedTableView1subject_sum_total: TcxGridDBBandedColumn;
    cxGrid5Level1: TcxGridLevel;
    cxTabSheet2: TcxTabSheet;
    cxGrid3: TcxGrid;
    cxGrid3DBBandedTableView1: TcxGridDBBandedTableView;
    cxGrid3DBBandedTableView1pay_inv_id: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1pay_id: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1inv_id: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1pay_inv_sum: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1pay_inv_brief_name: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1inv_brief_name: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1inv_currency_id: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1pay_firm_self_name: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1pay_currency_id: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1pay_brief_name: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1pay_cod: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1invoice_cod: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1invoice_date: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1invoice_sum: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1exchange_USD_val: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1exchange_EUR_val: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1exchange_CHF_val: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1inv_sum_income: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1pay_sum_income: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1inv_firm_customer_name_short: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1rest_invoice_sum: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1pay_rest: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1pay_sum_inv: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1inv_sum_pay: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1pay_sum: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1pay_inv_currency_id: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1pay_inv_date: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1pay_date: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1pay_firm_customer_name_short: TcxGridDBBandedColumn;
    cxGrid3Level1: TcxGridLevel;
    cxTabSheet3: TcxTabSheet;
    cxGrid2: TcxGrid;
    cxGrid2DBBandedTableView1: TcxGridDBBandedTableView;
    cxGrid2DBBandedTableView1bargain_id: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1bargain_cod: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1brief_name: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1FIO_users_owner: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1node_begin_name: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1node_end_name: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1kargoETSNG_name: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1ed_izm_name: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1amount_fact: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1amount_units_fact: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1bargain_sum_fact: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1bargain_sum_fact_USD: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1bargain_comiss_USD: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1invoice_id: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1quantity: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1quantity_units: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1bargain_sum: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1invoice_bargain_id: TcxGridDBBandedColumn;
    cxGrid2Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    cxGrid1DBBandedTableView1: TcxGridDBBandedTableView;
    cxGrid1DBBandedTableView1invoice_id: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1invoice_cod: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1invoice_date: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1invoice_sum: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1brief_name: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1contract_id: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1firm_customer_name: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1users_owner_id: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1FIO_users_owner: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1header_description: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1header_name: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1header_address: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1header_bank: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1firm_self_name: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1contract_cod: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1currency_id: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1string_bottom_id: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1global_color: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1global_copy: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1firm_self_name_short: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1firm_customer_name_short: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1header_language_id: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1header_language_name: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1header_language_cod: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1firm_customer: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1firm_customer_name_full: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1docs_id: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1docs_status_name: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1docs_date_agree: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1cnt_global_doc: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1rest_invoice_sum: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1inv_sum_pay: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1comment: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1print_form_name: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1print_form_cod: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1nds_in_sum: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1bank_firm_contact_name: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1plan_pay_date: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1FIO_users_modify: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1date_modify: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1invoice_status_name: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1firm_self: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1type_contract: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1date_begin: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1type_invoice: TcxGridDBBandedColumn;
    cxGrid1Level1: TcxGridLevel;
    procedure dxBarButton23Click(Sender: TObject);
    procedure dxBarButton2Click(Sender: TObject);
    procedure dxBarSubItem4Popup(Sender: TObject);
    procedure cxGrid1DBBandedTableView1KeyPress(Sender: TObject; var Key: Char);
    procedure ToolButton24Click(Sender: TObject);
    procedure Excel2Click(Sender: TObject);
    procedure cxGrid1DBBandedTableView1FocusedItemChanged(Sender: TcxCustomGridTableView; APrevFocusedItem, AFocusedItem: TcxCustomGridTableItem);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure N1Click(Sender: TObject);
    procedure N2Click(Sender: TObject);
    procedure Popup_InvoicePopup(Sender: TObject);
    procedure N4Click(Sender: TObject);
    procedure N7Click(Sender: TObject);
    procedure N6Click(Sender: TObject);
    procedure N9Click(Sender: TObject);
    procedure N10Click(Sender: TObject);
    procedure N11Click(Sender: TObject);
    procedure OnMenuUsersClick(Sender:TObject);
    procedure ToolButton8Click(Sender: TObject);
    procedure N12Click(Sender: TObject);
    procedure N21Click(Sender: TObject);
    procedure cxGrid1DBBandedTableView1FocusedRecordChanged(Sender: TcxCustomGridTableView; APrevFocusedRecord, AFocusedRecord: TcxCustomGridRecord; ANewItemRecordFocusingChanged: Boolean);
    procedure cxGrid1DBBandedTableView1DataControllerFilterChanged( Sender: TObject);
    procedure cxGrid1DBBandedTableView1CustomDrawCell(Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
    procedure N18Click(Sender: TObject);
    procedure N24Click(Sender: TObject);
    procedure dxBarButton_FilterRecords1Click(Sender: TObject);
    procedure dxBarButton14Click(Sender: TObject);
    procedure dxBarButton3Click(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure dxBarButton4Click(Sender: TObject);
    procedure PrintInvoice(invoice_id: integer;var tmp_path: string; connect: TADOConnection);
    procedure dxBarButton22Click(Sender: TObject);
    procedure dxBarButton24Click(Sender: TObject);
    procedure cxGrid1DBBandedTableView1CustomDrawColumnHeader(Sender: TcxGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxGridColumnHeaderViewInfo;     var ADone: Boolean);
    procedure cxPageControl1Change(Sender: TObject);
  private
    Fdate1, Fdate2   : TDateTime;
    Factive_users_id : integer;
    Finvoice_id      : integer;
    Finvoice_cod     : string;
    Ftype_invoice    : integer;
    Fcontract_id     : integer;
    FCaption         : string;
    Fstr_invoice_id  : string;

    // Запущена как DLL
    Fset_run_dll  : boolean;
    Fconnect      : TADOConnection;
    Fusr_pwd_docs : PUser_pwd;
    Fusr_pwd_lis  : PUser_pwd;
    Fdocs_id      : integer;

    procedure SetUsers(users_id: integer);
    procedure SetTypeInvoice(value: integer);
    procedure SetContractId(contract_id: integer);
    procedure SetBargainId(bargain_id: integer);
  public
    constructor Create(AOwner: TApplication; action: boolean);
    constructor CreateDLL(AOwner: TApplication; action: boolean; usr_pwd_lis: PUser_pwd; usr_pwd_docs: PUser_pwd);

  published
    procedure SetPeriod (date1, date2: TDate);

    property _SetUsers        : integer write SetUsers;
    property _TypeInvoice     : integer read  Ftype_invoice write SetTypeInvoice;
    property _GetInvoiceId    : integer read  Finvoice_id;
    property _GetStrInvoiceId : string read  Fstr_invoice_id;
    property _GetInvoiceCod   : string read  Finvoice_cod;
    property _GetContractId : integer read  Fcontract_id;
    property _GetDocsId     : integer read  Fdocs_id;
    property _SetContractId : integer write SetContractId;
    property _SetBargainId  : integer write SetBargainId;
  end;

var
  fmClientInvoice: TfmClientInvoice;

procedure PrintInvoiceSFH_RUS(invoice_id: integer; connect: TADOConnection; var tmp_path : string); // форма "01"
procedure PrintInvoiceSFH_RUS_WITHOUT_NDS(invoice_id: integer; connect: TADOConnection; var tmp_path : string);        // форма "02"
procedure PrintInvoiceSFH_RUS_WITH_NDS(invoice_id: integer; connect: TADOConnection; var tmp_path : string);           // форма "03"
procedure PrintInvoiceSFH_RUS_MA(invoice_id: integer; connect: TADOConnection; var tmp_path : string);                 // форма "04"
procedure PrintInvoiceSFH_RUS_PTA(invoice_id: integer; connect: TADOConnection; var tmp_path : string);                 // форма "04"
procedure PrintInvoiceSFH_ENG(invoice_id: integer; connect: TADOConnection; var tmp_path : string);                    // форма английская


implementation
     uses Main, Raznoe, ClientInvoiceAdd, PayAdd, Period, Other, ComObj, ShellApi,
          cxGridDBDataDefinitions, Pay, PayInvoiceAdd, Agree2;
{$R *.DFM}

constructor TfmClientInvoice.CreateDLL(AOwner: TApplication; action: boolean; usr_pwd_lis: PUser_pwd; usr_pwd_docs: PUser_pwd);
begin
  Screen.Cursor := crHourglass;
  inherited Create(AOwner);

  Fcontract_id := -9;
  Finvoice_id  := -9;
  Finvoice_cod := '';
  Fstr_invoice_id := '';

  N1.Enabled := False;
  N2.Enabled := False;
  N4.Enabled := False;
  N6.Enabled := False;
  N7.Enabled := False;
  N12.Enabled := False;
  N9.Enabled := False;
  N10.Enabled := False;

  Fset_run_dll  := True;
  Fusr_pwd_docs := usr_pwd_docs;
  Fusr_pwd_lis  := usr_pwd_lis;

  StoreRegistryGrid(rgLoad,'\Software\Lis1\ClientInvoice_Grids', cxGrid1DBBandedTableView1);
  StoreRegistryGrid(rgLoad,'\Software\Lis1\ClientInvoice_Grids', cxGrid2DBBandedTableView1);
  StoreRegistryGrid(rgLoad,'\Software\Lis1\ClientInvoice_Grids', cxGrid3DBBandedTableView1);
  StoreRegistryGrid(rgLoad,'\Software\Lis1\ClientInvoice_Grids', cxGrid5DBBandedTableView1);
  dxBarSubItem1.Caption := StoreRegistryDate(rgLoad, '\Software\Lis1\DateTime\ClientInvoice', Fdate1, Fdate2);

  Fconnect := TADOConnection.Create(nil);
  Fconnect.ConnectionString := 'Persist Security Info=True;Provider=SQLOLEDB.1;User ID='+Fusr_pwd_lis^.user_name+';Password='+Fusr_pwd_lis^.user_pass+';Initial Catalog='+Fusr_pwd_lis^.catalog+';Data Source='+Fusr_pwd_lis^.server+';';
  Fconnect.KeepConnection   := False;
  Fconnect.LoginPrompt      := False;

  Query_ClientInvoice.Connection := Fconnect;
  Query_Subject.Connection := Fconnect;
  Query_Bargain.Connection := Fconnect;
  Query_Pay.Connection     := Fconnect;

  if action then begin
    FormStyle := fsNormal;
    Position := poScreenCenter;
    Caption := 'Выберите счёт !';
    dxBarButton10.Visible := ivAlways;
    cxGrid1DBBandedTableView1.OnDblClick := ToolButton8Click;
  end else
    FormStyle := fsMDIChild;

  Factive_users_id := Fusr_pwd_lis^.users_id;

  dxBarButton4Click(nil);

  Screen.Cursor := crDefault;
end;

constructor TfmClientInvoice.Create(AOwner : TApplication; action:boolean);
begin
  Screen.Cursor := crHourglass;
  inherited Create(AOwner);

  Fset_run_dll := False;
  Fconnect     := fmMain.Lis;
  Fusr_pwd_lis := usr_pwd;

  dxBarSubItem1.Caption := StoreRegistryDate(rgLoad, '\Software\Lis1\DateTime\ClientInvoice', Fdate1, Fdate2);
  StoreRegistryGrid(rgLoad,'\Software\Lis1\ClientInvoice_Grids', cxGrid1DBBandedTableView1);
  StoreRegistryGrid(rgLoad,'\Software\Lis1\ClientInvoice_Grids', cxGrid2DBBandedTableView1);
  StoreRegistryGrid(rgLoad,'\Software\Lis1\ClientInvoice_Grids', cxGrid3DBBandedTableView1);
  StoreRegistryGrid(rgLoad,'\Software\Lis1\ClientInvoice_Grids', cxGrid5DBBandedTableView1);

  if action then begin
    FormStyle := fsNormal;
    Position := poScreenCenter;
    Caption := 'Выберите счёт !';
    dxBarButton10.Visible := ivAlways;
  end else
    FormStyle := fsMDIChild;

  cxGrid1DBBandedTableView1invoice_sum.Styles.Content := fmMain.cxStyle_Bold;
  cxGrid3DBBandedTableView1pay_sum_income.Styles.Content := fmMain.cxStyle_Bold;

  Factive_users_id := Fusr_pwd_lis^.users_id;

  cxPageControl1.ActivePageIndex := 0;
  dxBarButton4Click(nil);

  MonitorEventFormOpen('OPEN_FORM', self.Name, fmMain.Lis, -9);

  Screen.Cursor := crDefault;
end;

procedure TfmClientInvoice.SetTypeInvoice(value: integer);
begin
  Ftype_invoice := value;
  case Ftype_invoice of
    0: begin // Клиент,Администрация
         Self.Caption := 'Счета клиентам';
         cxGrid1DBBandedTableView1firm_customer_name.Caption := 'Клиент';
         cxGrid3DBBandedTableView1pay_firm_self_name.Caption := 'Клиент';
       end;
    1: begin // Подрядчик
         Self.Caption := 'Счета подрядчиков';
         cxGrid1DBBandedTableView1firm_customer_name.Caption := 'Подрядчик';
         cxGrid3DBBandedTableView1pay_firm_self_name.Caption := 'Подрядчик';
       end;
    2: begin // Клиент,Администрация
         Self.Caption := 'Счета администрации';
         cxGrid1DBBandedTableView1firm_customer_name.Caption := 'Клиент';
         cxGrid3DBBandedTableView1pay_firm_self_name.Caption := 'Клиент';
       end;
  end;

  FCaption := self.Caption;

  // Открываем рекордсеты
  Screen.Cursor := crHourglass;

  Query_ClientInvoice.Close;
  Query_ClientInvoice.Parameters.ParamByName('invoice_date1').Value  := Fdate1;
  Query_ClientInvoice.Parameters.ParamByName('invoice_date2').Value  := Fdate2;
  Query_ClientInvoice.Parameters.ParamByName('users_owner_id').Value := Fusr_pwd_lis^.users_id;
  Query_ClientInvoice.Parameters.ParamByName('type_invoice').Value  := Ftype_invoice;
  Query_ClientInvoice.Open;

  Screen.Cursor := crDefault;
end;

procedure TfmClientInvoice.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TfmClientInvoice.N1Click(Sender: TObject);
begin
  fmClientInvoiceAdd := TfmClientInvoiceAdd.Create(Application);
  fmClientInvoiceAdd._TypeInvoice := Ftype_invoice;
  fmClientInvoiceAdd._SetInsert := -9;
  if fmClientInvoiceAdd.ShowModal = mrOk then RefreshQueryGrid(cxGrid1DBBandedTableView1, 'invoice_id', fmClientInvoiceAdd._GetInvoiceId);
end;

procedure TfmClientInvoice.N2Click(Sender: TObject);
var i : integer;
   SP : TADOStoredProc;
begin
  if Application.MessageBox('Вы точно уверены, что хотите удалить счёт?', 'Внимание', MB_OKCANCEL OR MB_ICONEXCLAMATION) = IDOK then begin
    Screen.Cursor := crHourglass;

    SP := TADOStoredProc.Create(nil);
    SP.Connection := Fconnect;
    SP.ProcedureName := 'sp_invoice_modify;1';


    for i := 0 to cxGrid1DBBandedTableView1.Controller.SelectedRowCount - 1 do begin
      SP.Close;
      SP.Parameters.Refresh;
      SP.Parameters.ParamByName('@type_action').Value := 2;
      SP.Parameters.ParamByName('@invoice_id' ).Value := cxGrid1DBBandedTableView1.Controller.SelectedRows[i].Values[cxGrid1DBBandedTableView1invoice_id.Index];
      try
        SP.ExecProc;
      except
      end;
      ShowTextMessage('Осталось '+IntToStr(cxGrid1DBBandedTableView1.Controller.SelectedRowCount - i) + ' строк...', False);
    end;

    RefreshQueryGrid(cxGrid1DBBandedTableView1, 'invoice_id');
    SP.Free;
    ShowTextMessage;

    Screen.Cursor := crDefault;
  end;
end;

procedure TfmClientInvoice.Popup_InvoicePopup(Sender: TObject);
begin
  if (Query_ClientInvoice.RecordCount = 0) then N2.Enabled := False
  else N2.Enabled := True;
end;



procedure TfmClientInvoice.N4Click(Sender: TObject);
begin
  fmClientInvoiceAdd := TfmClientInvoiceAdd.Create(Application);
  fmClientInvoiceAdd._TypeInvoice := Ftype_invoice;
  fmClientInvoiceAdd._SetUpdate := cxGrid1DBBandedTableView1invoice_id.DataBinding.Field.AsInteger;
  if fmClientInvoiceAdd.ShowModal = mrOk then RefreshQueryGrid(cxGrid1DBBandedTableView1, 'invoice_id', fmClientInvoiceAdd._GetInvoiceId);
end;

procedure TfmClientInvoice.N9Click(Sender: TObject);
var         i, bargain_id : integer;
  SP_InvoiceBargainInsert : TADOStoredProc;
  _fmAgree2 :  TfmAgree2;
begin
  _fmAgree2 := TfmAgree2.Create(Application, True);
  if _fmAgree2.ShowModal = mrOk then begin
    bargain_id := _fmAgree2.SP_Agree.FieldByName('bargain_id').AsInteger;

    SP_InvoiceBargainInsert := TADOStoredProc.Create(nil);
    SP_InvoiceBargainInsert.Connection := Fconnect;
    SP_InvoiceBargainInsert.ProcedureName := 'sp_invoice_bargain_insert';

    for i:=0 to cxGrid1DBBandedTableView1.Controller.SelectedRecordCount - 1 do begin
      SP_InvoiceBargainInsert.Close;
      SP_InvoiceBargainInsert.Parameters.Refresh;
      SP_InvoiceBargainInsert.Parameters.ParamByName('@invoice_id').Value            := cxGrid1DBBandedTableView1invoice_id.DataBinding.Field.AsInteger;
      SP_InvoiceBargainInsert.Parameters.ParamByName('@bargain_id').Value            := _fmAgree2.cxGrid1DBBandedTableView1.Controller.SelectedRows[i].Values[_fmAgree2.cxGrid1DBBandedTableView1bargain_id.Index];
      SP_InvoiceBargainInsert.Parameters.ParamByName('@current_quantity').Value      := _fmAgree2.cxGrid1DBBandedTableView1.Controller.SelectedRows[i].Values[_fmAgree2.cxGrid1DBBandedTableView1quantity.Index];
      SP_InvoiceBargainInsert.Parameters.ParamByName('@current_quantity_units').Value:= _fmAgree2.cxGrid1DBBandedTableView1.Controller.SelectedRows[i].Values[_fmAgree2.cxGrid1DBBandedTableView1quantity_units.Index];
      SP_InvoiceBargainInsert.Parameters.ParamByName('@current_bargain_sum').Value   := _fmAgree2.cxGrid1DBBandedTableView1.Controller.SelectedRows[i].Values[_fmAgree2.cxGrid1DBBandedTableView1bargain_sum.Index];
      try
        SP_InvoiceBargainInsert.ExecProc;
      except
      end;

      if SP_InvoiceBargainInsert.Parameters.ParamByName('@invoice_bargain_id').Value = -9 then Application.MessageBox('Невозможно привязать перевозку к счёту.', 'Внимание', MB_OK+MB_ICONERROR);
    end;
    SP_InvoiceBargainInsert.Free;

    Query_Bargain.Close;
    Query_Bargain.Open;
    Screen.Cursor := crDefault;
  end;
end;

procedure TfmClientInvoice.N10Click(Sender: TObject);
var               i : integer;
 sp_invoice_bargain_delete : TADOStoredProc;
begin
  if Application.MessageBox('ВЫ ТОЧНО УВЕРЕНЫ, ЧТО ХОТИТЕ УДАЛИТЬ ПЕРЕВОЗКУ?', 'Внимание', MB_OKCANCEL) = IDOK then begin

    sp_invoice_bargain_delete := TADOStoredProc.Create(nil);
    sp_invoice_bargain_delete.Connection := Fconnect;
    sp_invoice_bargain_delete.ProcedureName := 'sp_invoice_bargain_delete';

    for i:=0 to cxGrid2DBBandedTableView1.Controller.SelectedRecordCount - 1 do begin
      sp_invoice_bargain_delete.Close;
      sp_invoice_bargain_delete.Parameters.Refresh;
      sp_invoice_bargain_delete.Parameters.ParamByName('@invoice_bargain_id').Value := cxGrid2DBBandedTableView1.Controller.SelectedRows[i].Values[cxGrid2DBBandedTableView1invoice_bargain_id.Index];
      try
        sp_invoice_bargain_delete.ExecProc;
      except
      end;

      if sp_invoice_bargain_delete.Parameters.ParamByName('@invoice_bargain_id').Value = -9 then Application.MessageBox('Невозможно отвязать перевозку от счёта.', 'Внимание', MB_OK+MB_ICONERROR);
    end;
    sp_invoice_bargain_delete.Free;

    Query_Bargain.Close;
    Query_Bargain.Open;
    Screen.Cursor := crDefault;
  end;
end;

procedure TfmClientInvoice.N11Click(Sender: TObject);
var tmp_path : string;
begin
  if Query_ClientInvoice.RecordCount = 0 then begin
    Application.MessageBox(PChar('Не выбран счет'), 'Ошибка', MB_OK or MB_ICONERROR);
    exit;
  end;
  tmp_path := '';
  case Ftype_invoice of
    // --- Клиент ---
    0 : begin
        case cxGrid1DBBandedTableView1header_language_cod.DataBinding.Field.AsInteger of
          0 : begin
                // -------- основная форма счёта -----------
                if (cxGrid1DBBandedTableView1print_form_cod.DataBinding.Field.AsString = '01')
                or (cxGrid1DBBandedTableView1print_form_cod.DataBinding.Field.AsString = '05') then
                  PrintInvoiceSFH_RUS(cxGrid1DBBandedTableView1invoice_id.DataBinding.Field.Value, Fconnect, tmp_path);
                // ------- форма печати -БЕЗ НДС -----------
                if cxGrid1DBBandedTableView1print_form_cod.DataBinding.Field.AsString = '02' then
                  PrintInvoiceSFH_RUS_WITHOUT_NDS(cxGrid1DBBandedTableView1invoice_id.DataBinding.Field.Value, Fconnect, tmp_path);
                // ------- форма печати с НДС --------------
                if cxGrid1DBBandedTableView1print_form_cod.DataBinding.Field.AsString = '03' then
                  PrintInvoiceSFH_RUS_WITH_NDS(cxGrid1DBBandedTableView1invoice_id.DataBinding.Field.Value, Fconnect, tmp_path);
                    // ------- форма МА --------------
                if cxGrid1DBBandedTableView1print_form_cod.DataBinding.Field.AsString = '04' then
                  PrintInvoiceSFH_RUS_MA(cxGrid1DBBandedTableView1invoice_id.DataBinding.Field.Value, Fconnect, tmp_path);
                    // ------- форма ПТА --------------
                if cxGrid1DBBandedTableView1print_form_cod.DataBinding.Field.AsString = '06' then
                  PrintInvoiceSFH_RUS_PTA(cxGrid1DBBandedTableView1invoice_id.DataBinding.Field.Value, Fconnect, tmp_path);
              end;

          1 : PrintInvoiceSFH_ENG(cxGrid1DBBandedTableView1invoice_id.DataBinding.Field.Value, Fconnect, tmp_path);

          else PrintInvoiceSFH_RUS(cxGrid1DBBandedTableView1invoice_id.DataBinding.Field.Value, Fconnect, tmp_path);
        end;
       end;

    // ---- Подрядчик ---
    1 : begin
          PrintInvoiceSFH_RUS(cxGrid1DBBandedTableView1invoice_id.DataBinding.Field.Value, Fconnect, tmp_path);
        end;

    // ---- Администрация ---
    2 : begin
          case cxGrid1DBBandedTableView1header_language_cod.DataBinding.Field.AsInteger of
            0 : PrintInvoiceSFH_RUS(cxGrid1DBBandedTableView1invoice_id.DataBinding.Field.Value, Fconnect, tmp_path);
            1 : PrintInvoiceSFH_ENG(cxGrid1DBBandedTableView1invoice_id.DataBinding.Field.Value, Fconnect, tmp_path);
          end;
        end;
  end;
end;

procedure TfmClientInvoice.PrintInvoice(invoice_id: integer; var tmp_path: string; connect: TADOConnection);
var  Q : TADOQuery;
begin
  Q :=  TADOQuery.Create(nil);
  Q.Connection := connect;
  Q.SQL.Add('SELECT print_form_cod, header_language_cod, type_invoice FROM view_invoice WHERE invoice_id = ' + IntToStr(invoice_id));
  Q.Open;

   case Q.FieldByName('type_invoice').AsInteger of
    // --- Клиент ---
    0 : begin
        case Q.FieldByName('header_language_cod').AsInteger of
          0 : begin
                //-------- основная форма счёта -----------
                if (Q.FieldByName('print_form_cod').AsString = '01') or (Q.FieldByName('print_form_cod').AsString = '05') then
                  PrintInvoiceSFH_RUS(invoice_id, connect, tmp_path);
                //------- форма печати -БЕЗ НДС -----------
                if Q.FieldByName('print_form_cod').AsString = '02' then
                  PrintInvoiceSFH_RUS_WITHOUT_NDS(invoice_id, connect, tmp_path);
                //------- форма печати с НДС --------------
                if Q.FieldByName('print_form_cod').AsString = '03' then
                  PrintInvoiceSFH_RUS_WITH_NDS(invoice_id, connect, tmp_path);
                //------- форма МА
                if Q.FieldByName('print_form_cod').AsString = '04' then
                  PrintInvoiceSFH_RUS_MA(invoice_id, connect, tmp_path);
                //------- форма ПТА
                if Q.FieldByName('print_form_cod').AsString = '06' then
                  PrintInvoiceSFH_RUS_PTA(invoice_id, connect, tmp_path);
              end;
          1 : PrintInvoiceSFH_ENG(invoice_id, connect, tmp_path);
          else PrintInvoiceSFH_RUS(invoice_id, connect, tmp_path);
        end;
       end;
    // ---- Подрядчик ---
    1 : begin
          PrintInvoiceSFH_RUS(invoice_id, connect, tmp_path);
        end;
    // ---- Администрация ---
    2 : begin
          case Q.FieldByName('header_language_cod').AsInteger of
            0 : PrintInvoiceSFH_RUS(invoice_id, connect, tmp_path);
            1 : PrintInvoiceSFH_ENG(invoice_id, connect, tmp_path);
          end;
        end;
  end;
end;

{$REGION 'Печатная форма счета основная - "01"'}
procedure PrintInvoiceSFH_RUS(invoice_id: integer; connect: TADOConnection;var tmp_path: string);
var exApp, exWkb, exWks    : Variant;
    Q_Subject              : TADOQuery;
    _sum, _sum_nds         : currency;
    BarCode                : TmyBarCode;
    Q                      : TADOQuery;
    firm_customer_address  : string;
    firm_customer_bank     : string;
    Query_ClientInvoice    : TADOQuery;
begin
  Screen.Cursor := crHourglass;
  ShowTextMessage('Запуск сервера автоматизации Excel...', False);


  Query_ClientInvoice :=  TADOQuery.Create(nil);
  Query_ClientInvoice.Connection := connect;
  Query_ClientInvoice.SQL.Add('SELECT *,');
  Query_ClientInvoice.SQL.Add('case when exists(SELECT	1 FROM	view_invoice_header_rights vh WHERE	invoice_date BETWEEN date_begin AND ISNULL(date_end, invoice_date + 1) AND vh.invoice_header_id = view_invoice.invoice_header_id) then 1 else 0 end set_header_correct');
  Query_ClientInvoice.SQL.Add('FROM view_invoice WHERE invoice_id = ' + IntToStr(invoice_id));
  Query_ClientInvoice.Open;

  exApp := CreateOleObject('Excel.Application');
  exWkb := exApp.Workbooks.Add(GetDocBlob(connect, 330, 9, True)); // 'InvoiceSFH_RUS.xls'
  exWkb := exApp.ActiveWorkbook;
  exWks := exWkb.WorkSheets[1];
  exApp.Application.EnableEvents := False;
  exApp.ScreenUpdating := False;
  try
    exApp.PrintCommunication := False;
  except
  end;


  Q := TADOQuery.Create(nil);
  Q.Connection := connect;
  Q.SQL.Add('SELECT TOP 1 firm_contact_name FROM view_firm_contact');
  Q.SQL.Add('WHERE firm_id = ' + Query_ClientInvoice.FieldByName('firm_customer').AsString);
  Q.SQL.Add('AND type_contact_cod = ''11'''); // Юр. адрес
  Q.SQL.Add('AND ' + DateToSQL(Query_ClientInvoice.FieldByName('invoice_date').AsDateTime) + ' BETWEEN date_begin AND ISNULL(date_end, ' + DateToSQL(Query_ClientInvoice.FieldByName('invoice_date').AsDateTime) + ')');
  Q.Open;
  firm_customer_address := Q.FieldByName('firm_contact_name').AsString;
//  Q.Close;
//  Q.SQL.Strings[2] := 'AND type_contact_cod = ''01''';  // Банковские реквизиты
//  Q.Open;
//  firm_customer_bank := StringReplace(Q.FieldByName('firm_contact_name').AsString, Char(13), '', [rfReplaceAll]);
//  Q.Close;

  case Query_ClientInvoice.FieldByName('type_invoice').AsInteger of
    // ------- Клиент и Администрация -----------
    0,2 :begin
      if Query_ClientInvoice.FieldByName('set_header_correct').Value = 1 then begin
        exWks.Range['D1'].Value  := StringReplace(Query_ClientInvoice.FieldByName('header_name').AsString, Char(13), '', [rfReplaceAll]);
        exWks.Range['D2'].Value  := StringReplace(Query_ClientInvoice.FieldByName('header_address').AsString, Char(13), '', [rfReplaceAll]);
        exWks.Range['D3'].Value  := StringReplace(Query_ClientInvoice.FieldByName('header_bank').AsString, Char(13), '', [rfReplaceAll]);
      end else begin
        exWks.Range['D1'].Value  := '';
        exWks.Range['D2'].Value  := '';
        exWks.Range['D3'].Value  := '';
      end;

      exWks.Range['E16'].Value := Query_ClientInvoice.FieldByName('firm_customer_name_full').AsString;

      exWks.Range['E18'].Value := firm_customer_address;
      //exWks.Range['E19'].Value := firm_customer_bank;
      exWks.Range['E19'].Value := Query_ClientInvoice.FieldByName('bank_firm_contact_name').AsString;

      exWks.Range['H13'].Value := Query_ClientInvoice.FieldByName('invoice_cod').AsString;
      exWks.Range['K14'].Value := Query_ClientInvoice.FieldByName('invoice_date').AsDateTime;
      exWks.Range['L17'].Value := Query_ClientInvoice.FieldByName('brief_name').AsString;

      //Литвяк 04.12.2015
      if Query_ClientInvoice.FieldByName('nds_in_sum').value then
       exWks.Range['J20'].Value := 'Цена за ед., в т.ч. НДС'
      else
        exWks.Range['J20'].Value := 'Цена за ед., без НДС';

      // Подписанты
      if not Query_ClientInvoice.FieldByName('firm_director_id').IsNull then begin
        Q.SQL.Clear;
        Q.SQL.Add('SELECT * FROM view_firm_contact WHERE firm_contact_id = ' + Query_ClientInvoice.FieldByName('firm_director_id').AsString);
        Q.Open;
//        if Trim(Q.FieldByName('type_contact_name').AsString) <> '' then
//          exWks.Range['C34'].Value := Q.FieldByName('type_contact_name').AsString;

        exWks.Range['J34'].Value := '(' + Q.FieldByName('firm_contact_name').AsString + ')';
        exWks.Range['J35'].Value := Q.FieldByName('firm_contact_comment').AsString;
        Q.Close;
      end;
      if not Query_ClientInvoice.FieldByName('firm_buh_id').IsNull then begin
        Q.SQL.Clear;
        Q.SQL.Add('SELECT * FROM view_firm_contact WHERE firm_contact_id = ' + Query_ClientInvoice.FieldByName('firm_buh_id').AsString);
        Q.Open;
        if Trim(Q.FieldByName('type_contact_name').AsString) <> '' then
          exWks.Range['C37'].Value := Q.FieldByName('type_contact_name').AsString;
        exWks.Range['J37'].Value := '(' + Q.FieldByName('firm_contact_name').AsString + ')';
        exWks.Range['J38'].Value := Q.FieldByName('firm_contact_comment').AsString;
        Q.Close;
      end;

    end;
    // ------ Подрядчик --------------
    1 : begin
      exWks.Range['D1'].Value := Query_ClientInvoice.FieldByName('firm_customer_name_full').AsString;
      exWks.Range['D2'].Value := firm_customer_address;
      exWks.Range['D3'].Value := firm_customer_bank;

      if Query_ClientInvoice.FieldByName('set_header_correct').Value = 1 then begin
        exWks.Range['E16'].Value  := Query_ClientInvoice.FieldByName('header_name').AsString;
        exWks.Range['E18'].Value  := Query_ClientInvoice.FieldByName('header_address').AsString;
        exWks.Range['E19'].Value  := StringReplace(Query_ClientInvoice.FieldByName('header_bank').AsString, Char(13), '', [rfReplaceAll]);
      end else begin
        exWks.Range['E16'].Value  := '';
        exWks.Range['E18'].Value  := '';
        exWks.Range['E19'].Value  := '';
      end;

      exWks.Range['H13'].Value := Query_ClientInvoice.FieldByName('invoice_cod').AsString;
      exWks.Range['K14'].Value := Query_ClientInvoice.FieldByName('invoice_date').AsDateTime;
      exWks.Range['L17'].Value := Query_ClientInvoice.FieldByName('brief_name').AsString;
    end;
  end;

  // -------- копирование строк ---------
  ShowTextMessage('Запрос к базе данных...', False);
  Q_Subject := TADOQuery.Create(nil);
  Q_Subject.Connection := connect;
  Q_Subject.SQL.Add('SELECT * FROM view_invoice_table WHERE invoice_id='+IntToStr(invoice_id));
  Q_Subject.Open;
  Q_Subject.Next;
  while not Q_Subject.Eof do begin
    exWks.Rows['23'].Insert;
    exWks.Rows['22'].Copy;
    exWks.Rows['23'].PasteSpecial(1);
    exWks.Range['B23'].Value := Q_Subject.RecordCount-Q_Subject.RecNo+2;
    Q_Subject.Next;
  end;


  // ------------ основной цикл -------------
  ShowTextMessage('Формирование печатной формы ...', False);
  _sum := 0;
  _sum_nds := 0;
  Q_Subject.First;
  while not Q_Subject.Eof do begin
    _sum := _sum + Q_Subject.FieldByName('subject_sum').AsCurrency;
    _sum_nds   := _sum_nds + Q_Subject.FieldByName('subject_sum_nds').AsCurrency;

    exWks.Range['C'+IntToStr(21+Q_Subject.RecNo)].Value := StringReplace(Q_Subject.FieldByName('subject_invoice').AsString, Char(13), '', [rfReplaceAll]);
    exWks.Range['I'+IntToStr(21+Q_Subject.RecNo)].Value := Q_subject.FieldByName('subject_ed_izm_name').AsString;
    exWks.Range['H'+IntToStr(21+Q_Subject.RecNo)].Value := Q_Subject.FieldByName('subject_weight').Value;
//    if (not Q_Subject.FieldByName('subject_set').AsBoolean) then begin
//      exWks.Range['J'+IntToStr(21+Q_Subject.RecNo)].Value := RoundCurr(Q_Subject.FieldByName('subject_sum').AsCurrency / iif(Q_Subject.FieldByName('subject_weight').AsCurrency=0, 1, Q_Subject.FieldByName('subject_weight').AsCurrency), -2);
//      exWks.Range['N'+IntToStr(21+Q_Subject.RecNo)].Value := Q_Subject.FieldByName('subject_sum_total').AsCurrency;
//    end else begin
//      exWks.Range['J'+IntToStr(21+Q_Subject.RecNo)].Value := Q_Subject['subject_rate'];
//      exWks.Range['N'+IntToStr(21+Q_Subject.RecNo)].Value := Q_Subject.FieldByName('subject_sum_total').AsCurrency;
//    end;

    exWks.Range['J'+IntToStr(21+Q_Subject.RecNo)].Value := Q_Subject.FieldByName('subject_rate').Value;
    exWks.Range['N'+IntToStr(21+Q_Subject.RecNo)].Value := Q_Subject.FieldByName('subject_sum_total').AsCurrency;
    exWks.Range['K'+IntToStr(21+Q_Subject.RecNo)].Value := exWks.Range['N'+IntToStr(21+Q_Subject.RecNo)].Value - iif(Q_Subject.FieldByName('subject_sum_nds').isnull, 0, Q_Subject.FieldByName('subject_sum_nds').AsCurrency);
    exWks.Range['M'+IntToStr(21+Q_Subject.RecNo)].Value := Q_Subject.FieldByName('subject_sum_nds').AsCurrency;

    exWks.Range['L'+IntToStr(21+Q_Subject.RecNo)].Value := Q_Subject.FieldByName('subject_nds_name').AsString;

    AutoFitMergeCell(exWks.Range['C' + IntToStr(21+Q_Subject.RecNo)]);
    Q_Subject.Next;
  end;

  // ----- итоговые суммы --------
  exWks.Range['K'+IntToStr(25+Q_Subject.RecordCount)].Value := Query_ClientInvoice.FieldByName('invoice_sum').AsCurrency;
  exWks.Range['K'+IntToStr(24+Q_Subject.RecordCount)].Value := _sum_nds;
  exWks.Range['K'+IntToStr(23+Q_Subject.RecordCount)].Value := _sum;
 // exWks.Range['E'+IntToStr(26+Q_Subject.RecordCount)].Value := GetSumScript_RUS(FormatFloat('0.00', Query_ClientInvoice.FieldByName('invoice_sum').AsCurrency), Query_ClientInvoice.FieldByName('currency_id').AsInteger);
  exWks.Range['E'+IntToStr(26+Q_Subject.RecordCount)].Value := GetSumScript_RUS(Query_ClientInvoice.FieldByName('invoice_sum').AsString, Query_ClientInvoice.FieldByName('currency_id').AsInteger);

  // ------- доп. информация -------------
  if Query_ClientInvoice['string_bottom_id']<>null then begin
    Q.Close;
    Q.SQL.Clear;
    Q.SQL.Add('SELECT inf_obj_name FROM inf_obj WHERE inf_obj_id='+IntToStr(Query_ClientInvoice.FieldByName('string_bottom_id').AsInteger));
    Q.Open;

    exWks.Range['B'+IntToStr(28+Q_Subject.RecordCount)].Value := Q.FieldByName('inf_obj_name').AsString;
  end;
  Q_Subject.Free;

  //-------- Добавляем в CA ШК ----------
  BarCode.object_id := 28;
  BarCode.date      := Query_ClientInvoice.FieldByName('invoice_date').AsDateTime;
  BarCode.global_id := invoice_id;
  BarCode.user_id   := Query_ClientInvoice.FieldByName('users_owner_id').AsInteger;
  PrintBarCode2of5(BarCode, exWks, NULL, connect);

  // Напечатаь основание счета
  if Query_ClientInvoice.FieldByName('set_print_note').AsBoolean then begin
    xCopyRow(exApp, 19, 19);
    exWks.Range['B20'].Value := 'Основание:';
    exWks.Range['E20'].Value := 'Договор № ' + Query_ClientInvoice.FieldByName('contract_cod').AsString + ' от ' + FormatDateTime('dd.mm.yyyy', Query_ClientInvoice.FieldByName('date_begin').AsDateTime);
  end;

  // Автоподбор по высоте
  AutoFitMergeCell(exWks.Range['D1']);
  AutoFitMergeCell(exWks.Range['D2']);
  AutoFitMergeCell(exWks.Range['D3']);

  AutoFitMergeCell(exWks.Range['E16']);
  AutoFitMergeCell(exWks.Range['E18']);
  AutoFitMergeCell(exWks.Range['E19']);

  // Для счета физ. лицу скроем строку с банковскими реквизитами покупателя
  if Query_ClientInvoice.FieldByName('print_form_cod').AsString = '05' then begin
    exWks.Rows[19].RowHeight := 0;
  end;

  exWks.Range['A1'].Select;

  exApp.Application.EnableEvents := True;
  exApp.ScreenUpdating := True;
  try
    exApp.PrintCommunication := True;
  except
  end;

  if tmp_path = '-9' then begin
    tmp_path := ExtractFilePath(ParamStr(0)) + 'Temp\';
    tmp_path := tmp_path + 'Invoice_' + Query_ClientInvoice.FieldByName('invoice_id').AsString + '_' + FormatDateTime('yyyymmddhhnnss', Now) + '.xls';
    exWks.Parent.SaveCopyAs(tmp_path);
    
    exWkb.Close(0);
    exApp.Quit;
    exWks := Null;
    VarClear(exWks);
  end else begin
    exApp.Visible := True;
  end;

  Query_ClientInvoice.Free;
  Q.Free;
  ShowTextMessage;
  exWks := Null;
  exWkb := Null;
  exApp := Null;
  Screen.Cursor := crDefault;
end;
{$ENDREGION 'Печатная форма счета основная 01'}

{$REGION 'Печатная форма счета ставка без НДС - "02"'}
procedure PrintInvoiceSFH_RUS_WITHOUT_NDS(invoice_id: integer; connect: TADOConnection; var tmp_path : string);
var exApp, exWkb, exWks    : Variant;
    _sum, _sum_nds         : currency;
    set_whithout_nds       : boolean;
    BarCode                : TmyBarCode;
    firm_customer_address  : string;
    firm_customer_bank     : string;
    Q_Subject              : TADOQuery;
    Q                      : TADOQuery;
    Query_ClientInvoice    : TADOQuery;
begin
  Screen.Cursor := crHourglass;
  ShowTextMessage('Запуск сервера автоматизации Excel...', False);

  Query_ClientInvoice :=  TADOQuery.Create(nil);
  Query_ClientInvoice.Connection := connect;
  Query_ClientInvoice.SQL.Add('SELECT *,');
  Query_ClientInvoice.SQL.Add('case when exists(SELECT	1 FROM	view_invoice_header_rights vh WHERE	invoice_date BETWEEN date_begin AND ISNULL(date_end, invoice_date + 1) AND vh.invoice_header_id = view_invoice.invoice_header_id) then 1 else 0 end set_header_correct');
  Query_ClientInvoice.SQL.Add('FROM view_invoice WHERE invoice_id = ' + IntToStr(invoice_id));
  Query_ClientInvoice.Open;

  exApp := CreateOleObject('Excel.Application');
  exWkb := exApp.Workbooks.Add(GetDocBlob(connect, 7, 9, True)); // 'InvoiceSFH_RUS_WITHOUT_NDS.xls'
  exWkb := exApp.ActiveWorkbook;
  exWks := exWkb.WorkSheets[1];

  Q := TADOQuery.Create(nil);
  Q.Connection := connect;
  Q.SQL.Add('SELECT TOP 1 firm_contact_name FROM view_firm_contact');
  Q.SQL.Add('WHERE firm_id = ' + Query_ClientInvoice.FieldByName('firm_customer').AsString);
  Q.SQL.Add('AND type_contact_cod = ''11'''); // Юр. адрес
  Q.SQL.Add('AND ' + DateToSQL(Query_ClientInvoice.FieldByName('invoice_date').AsDateTime) + ' BETWEEN date_begin AND ISNULL(date_end, ' + DateToSQL(Query_ClientInvoice.FieldByName('invoice_date').AsDateTime) + ')');
  Q.Open;
  firm_customer_address := Q.FieldByName('firm_contact_name').AsString;
//  Q.Close;
//  Q.SQL.Strings[2] := 'AND type_contact_cod = ''01''';  // Банковские реквизиты
//  Q.Open;
//  firm_customer_bank := StringReplace(Q.FieldByName('firm_contact_name').AsString, Char(13), '', [rfReplaceAll]);
//  Q.Close;

  case Query_ClientInvoice.FieldByName('type_invoice').AsInteger of
    // ------- Клиент и Администрация -----------
    0, 2 : begin
      if Query_ClientInvoice.FieldByName('set_header_correct').Value = 1 then begin
        exWks.Range['D1'].Value  := StringReplace(Query_ClientInvoice.FieldByName('header_name').AsString, Char(13), '', [rfReplaceAll]);
        exWks.Range['D2'].Value  := StringReplace(Query_ClientInvoice.FieldByName('header_address').AsString, Char(13), '', [rfReplaceAll]);
        exWks.Range['D3'].Value  := StringReplace(Query_ClientInvoice.FieldByName('header_bank').AsString, Char(13), '', [rfReplaceAll]);
      end else begin
        exWks.Range['D1'].Value  := '';
        exWks.Range['D2'].Value  := '';
        exWks.Range['D3'].Value  := '';
      end;

      exWks.Range['E16'].Value := Query_ClientInvoice.FieldByName('firm_customer_name_full').AsString;

      exWks.Range['E18'].Value := firm_customer_address;
      //exWks.Range['E19'].Value := firm_customer_bank;
      exWks.Range['E19'].Value := Query_ClientInvoice.FieldByName('bank_firm_contact_name').AsString;

      exWks.Range['H13'].Value := Query_ClientInvoice.FieldByName('invoice_cod').AsString;
      exWks.Range['K14'].Value := Query_ClientInvoice.FieldByName('invoice_date').AsDateTime;
      exWks.Range['K17'].Value := Query_ClientInvoice.FieldByName('brief_name').AsString;

      // Подписанты
      if not Query_ClientInvoice.FieldByName('firm_director_id').IsNull then begin
        Q.SQL.Clear;
        Q.SQL.Add('SELECT * FROM view_firm_contact WHERE firm_contact_id = ' + Query_ClientInvoice.FieldByName('firm_director_id').AsString);
        Q.Open;
//        if Trim(Q.FieldByName('type_contact_name').AsString) <> '' then
//          exWks.Range['C34'].Value := Q.FieldByName('type_contact_name').AsString;

        exWks.Range['J34'].Value := '(' + Q.FieldByName('firm_contact_name').AsString + ')';
        exWks.Range['J35'].Value := Q.FieldByName('firm_contact_comment').AsString;
        Q.Close;
      end;
      if not Query_ClientInvoice.FieldByName('firm_buh_id').IsNull then begin
        Q.SQL.Clear;
        Q.SQL.Add('SELECT * FROM view_firm_contact WHERE firm_contact_id = ' + Query_ClientInvoice.FieldByName('firm_buh_id').AsString);
        Q.Open;
        if Trim(Q.FieldByName('type_contact_name').AsString) <> '' then
          exWks.Range['C37'].Value := Q.FieldByName('type_contact_name').AsString;
        exWks.Range['J37'].Value := '(' + Q.FieldByName('firm_contact_name').AsString + ')';
        exWks.Range['J38'].Value := Q.FieldByName('firm_contact_comment').AsString;
        Q.Close;
      end;

    end;
    // ------ Подрядчик --------------
    1 : begin
      exWks.Range['D1'].Value := Query_ClientInvoice.FieldByName('firm_customer_name_full').AsString;
      exWks.Range['D2'].Value := firm_customer_address;
      exWks.Range['D3'].Value := firm_customer_bank;

      if Query_ClientInvoice.FieldByName('set_header_correct').Value = 1 then begin
        exWks.Range['E16'].Value  := Query_ClientInvoice.FieldByName('header_name').AsString;
        exWks.Range['E18'].Value  := Query_ClientInvoice.FieldByName('header_address').AsString;
        exWks.Range['E19'].Value  := StringReplace(Query_ClientInvoice.FieldByName('header_bank').AsString, Char(13), '', [rfReplaceAll]);
      end else begin
        exWks.Range['E16'].Value  := '';
        exWks.Range['E18'].Value  := '';
        exWks.Range['E19'].Value  := '';
      end;

      exWks.Range['H13'].Value := Query_ClientInvoice.FieldByName('invoice_cod').AsString;
      exWks.Range['K14'].Value := Query_ClientInvoice.FieldByName('invoice_date').AsDateTime;
      exWks.Range['K17'].Value := Query_ClientInvoice.FieldByName('brief_name').AsString;
    end;
  end;



  ShowTextMessage('Запрос к базе данных...', False);
  Q_Subject := TADOQuery.Create(nil);
  Q_Subject.Connection := connect;
  Q_Subject.SQL.Add('SELECT * FROM view_invoice_table WHERE invoice_id='+IntToStr(invoice_id));
  Q_Subject.Open;
  Q_Subject.Next;
  while not Q_Subject.Eof do begin
    exWks.Rows['23'].Insert;
    exWks.Rows['22'].Copy;
    exWks.Rows['23'].PasteSpecial(1);
    exWks.Range['B23'].Value := Q_Subject.RecordCount-Q_Subject.RecNo+2;
    Q_Subject.Next;
  end;

  // ------------ основной цикл -------------
  ShowTextMessage('Построение отчёта...', False);
  _sum := 0;
  _sum_nds := 0;
  set_whithout_nds := True;

  Q_Subject.First;
  while not Q_Subject.Eof do begin
    if not VarIsNull(Q_Subject.FieldByName('subject_nds').Value)then
      set_whithout_nds := False;

    _sum := _sum + Q_Subject.FieldByName('subject_sum').AsCurrency;
    _sum_nds   := _sum_nds + Q_Subject.FieldByName('subject_sum_nds').AsCurrency;

    exWks.Range['C'+IntToStr(21+Q_Subject.RecNo)].Value := StringReplace(Q_Subject.FieldByName('subject_invoice').AsString, Char(13), '', [rfReplaceAll]);
    exWks.Range['I'+IntToStr(21+Q_Subject.RecNo)].Value := Q_Subject.FieldByName('subject_ed_izm_name').AsString;

    exWks.Range['H'+IntToStr(21+Q_Subject.RecNo)].Value := Q_Subject.FieldByName('subject_weight').Value;
    if (not Q_Subject.FieldByName('subject_set').AsBoolean) then begin
      exWks.Range['J'+IntToStr(21+Q_Subject.RecNo)].Value := RoundCurr(Q_Subject.FieldByName('subject_sum').AsCurrency / Q_Subject.FieldByName('subject_weight').AsCurrency, -2);
      exWks.Range['K'+IntToStr(21+Q_Subject.RecNo)].Value := Q_Subject.FieldByName('subject_sum').AsCurrency;
    end else begin
      exWks.Range['J'+IntToStr(21+Q_Subject.RecNo)].Value := Q_Subject.FieldByName('subject_rate').Value;
      exWks.Range['K'+IntToStr(21+Q_Subject.RecNo)].Value := Q_Subject.FieldByName('subject_sum').AsCurrency;
    end;

    AutoFitMergeCell(exWks.Range['C' + IntToStr(21+Q_Subject.RecNo)]);
    Q_Subject.Next;
  end;


  if _sum_nds > 0 then
    exWks.Range['K'+IntToStr(24+Q_Subject.RecordCount)].Value := _sum_nds
  else exWks.Range['K'+IntToStr(24+Q_Subject.RecordCount)].Value := '' ;

  // -------- итоговая сумма ----------------
  exWks.Range['K'+IntToStr(25+Q_Subject.RecordCount)].Value := Query_ClientInvoice.FieldByName('invoice_sum').AsCurrency;
  exWks.Range['E'+IntToStr(26+Q_Subject.RecordCount)].Value := GetSumScript_RUS(FormatFloat('0.00', Query_ClientInvoice.FieldByName('invoice_sum').AsCurrency), Query_ClientInvoice.FieldByName('currency_id').AsInteger);

  if set_whithout_nds then begin
    exWks.Range['C'+IntToStr(24+Q_Subject.RecordCount)].Value := '';
    exWks.Range['K'+IntToStr(24+Q_Subject.RecordCount)].Value := '';
    exWks.Range['E'+IntToStr(24+Q_Subject.RecordCount)].Value := '                    НДС не облагается';
  end;

  // ------- доп.сведения ----------
  exWks.Rows[IntToStr(23+Q_Subject.RecordCount) + ':' + IntToStr(23+Q_Subject.RecordCount)].RowHeight := 0;
  if Query_ClientInvoice['string_bottom_id']<>null then begin
    Q.Close;
    Q.SQL.Clear;
    Q.SQL.Add('SELECT inf_obj_name FROM inf_obj WHERE inf_obj_id='+IntToStr(Query_ClientInvoice.FieldByName('string_bottom_id').AsInteger));
    Q.Open;

    exWks.Range['B'+IntToStr(28+Q_Subject.RecordCount)].Value := Q.FieldByName('inf_obj_name').AsString;
  end;
  Q.Free;
  Q_Subject.Free;

  //------- Добавляем в CA ШК ---------
  BarCode.object_id := 28; // Счет
  BarCode.date      := Query_ClientInvoice.FieldByName('invoice_date').AsDateTime;
  BarCode.global_id := invoice_id;
  BarCode.user_id   := Query_ClientInvoice.FieldByName('users_owner_id').AsInteger;
  PrintBarCode2of5(BarCode, exWks, NULL, connect);

  // Автоподбор по высоте
  AutoFitMergeCell(exWks.Range['D1']);
  AutoFitMergeCell(exWks.Range['D2']);
  AutoFitMergeCell(exWks.Range['D3']);

  AutoFitMergeCell(exWks.Range['E16']);
  AutoFitMergeCell(exWks.Range['E18']);
  AutoFitMergeCell(exWks.Range['E19']);

  exWks.Range['A1'].Select;
   if tmp_path = '-9' then begin
    tmp_path := ExtractFilePath(ParamStr(0)) + 'Temp\';
    tmp_path := tmp_path + 'Invoice_' + Query_ClientInvoice.FieldByName('invoice_id').AsString + '_' + FormatDateTime('yyyymmddhhnnss', Now) + '.xls';
    exWks.Parent.SaveCopyAs(tmp_path)
  end else exApp.Visible := True;

  Query_ClientInvoice.Free;

  ShowTextMessage;
  exApp.Visible := True;
  exWks := Null;
  exWkb := Null;
  exApp := Null;

  Screen.Cursor := crDefault;
end;
{$ENDREGION 'Печатная форма счета ставка без НДС - "02"'}

{$REGION 'Печатная форма счета ставка с НДС - "03"'}
procedure PrintInvoiceSFH_RUS_WITH_NDS(invoice_id: integer; connect: TADOConnection; var tmp_path : string);
var exApp, exWkb, exWks    : Variant;
    _sum, _sum_nds         : currency;
    BarCode                : TmyBarCode;
    firm_customer_address  : string;
    firm_customer_bank     : string;
    Query_ClientInvoice    : TADOQuery;
    Q                      : TADOQuery;
    Q_Subject              : TADOQuery;
begin
  Screen.Cursor := crHourglass;
  ShowTextMessage('Запуск сервера автоматизации Excel...', False);

  Query_ClientInvoice :=  TADOQuery.Create(nil);
  Query_ClientInvoice.Connection := connect;
  Query_ClientInvoice.SQL.Add('SELECT *,');
  Query_ClientInvoice.SQL.Add('case when exists(SELECT	1 FROM	view_invoice_header_rights vh WHERE	invoice_date BETWEEN date_begin AND ISNULL(date_end, invoice_date + 1) AND vh.invoice_header_id = view_invoice.invoice_header_id) then 1 else 0 end set_header_correct');
  Query_ClientInvoice.SQL.Add('FROM view_invoice WHERE invoice_id = ' + IntToStr(invoice_id));
  Query_ClientInvoice.Open;

  exApp := CreateOleObject('Excel.Application');
  exWkb := exApp.Workbooks.Add(GetDocBlob(connect, 6, 9, True)); // 'InvoiceSFH_RUS_WITH_NDS.xls'
  exWkb := exApp.ActiveWorkbook;
  exWks := exWkb.WorkSheets[1];

  Q := TADOQuery.Create(nil);
  Q.Connection := connect;
  Q.SQL.Add('SELECT TOP 1 firm_contact_name FROM view_firm_contact');
  Q.SQL.Add('WHERE firm_id = ' + Query_ClientInvoice.FieldByName('firm_customer').AsString);
  Q.SQL.Add('AND type_contact_cod = ''11'''); // Юр. адрес
  Q.SQL.Add('AND ' + DateToSQL(Query_ClientInvoice.FieldByName('invoice_date').AsDateTime) + ' BETWEEN date_begin AND ISNULL(date_end, ' + DateToSQL(Query_ClientInvoice.FieldByName('invoice_date').AsDateTime) + ')');
  Q.Open;
  firm_customer_address := Q.FieldByName('firm_contact_name').AsString;
//  Q.Close;
//  Q.SQL.Strings[2] := 'AND type_contact_cod = ''01''';  // Банковские реквизиты
//  Q.Open;
//  firm_customer_bank := StringReplace(Q.FieldByName('firm_contact_name').AsString, Char(13), '', [rfReplaceAll]);
//  Q.Close;

  case Query_ClientInvoice.FieldByName('type_invoice').AsInteger of
    // ------- Клиент и Администрация -----------
    0, 2 : begin
      if Query_ClientInvoice.FieldByName('set_header_correct').Value = 1 then begin
        exWks.Range['D1'].Value  := StringReplace(Query_ClientInvoice.FieldByName('header_name').AsString, Char(13), '', [rfReplaceAll]);
        exWks.Range['D2'].Value  := StringReplace(Query_ClientInvoice.FieldByName('header_address').AsString, Char(13), '', [rfReplaceAll]);
        exWks.Range['D3'].Value  := StringReplace(Query_ClientInvoice.FieldByName('header_bank').AsString, Char(13), '', [rfReplaceAll]);
      end else begin
        exWks.Range['D1'].Value  := '';
        exWks.Range['D2'].Value  := '';
        exWks.Range['D3'].Value  := '';
      end;

      exWks.Range['E16'].Value := Query_ClientInvoice.FieldByName('firm_customer_name_full').AsString;

      exWks.Range['E18'].Value := firm_customer_address;
      //exWks.Range['E19'].Value := firm_customer_bank;
      exWks.Range['E19'].Value := Query_ClientInvoice.FieldByName('bank_firm_contact_name').AsString;

      exWks.Range['H13'].Value := Query_ClientInvoice.FieldByName('invoice_cod').AsString;
      exWks.Range['K14'].Value := Query_ClientInvoice.FieldByName('invoice_date').AsDateTime;
      exWks.Range['K17'].Value := Query_ClientInvoice.FieldByName('brief_name').AsString;

      // Подписанты
      if not Query_ClientInvoice.FieldByName('firm_director_id').IsNull then begin
        Q.SQL.Clear;
        Q.SQL.Add('SELECT * FROM view_firm_contact WHERE firm_contact_id = ' + Query_ClientInvoice.FieldByName('firm_director_id').AsString);
        Q.Open;
//        if Trim(Q.FieldByName('type_contact_name').AsString) <> '' then
//          exWks.Range['C34'].Value := Q.FieldByName('type_contact_name').AsString;
        exWks.Range['J34'].Value := '(' + Q.FieldByName('firm_contact_name').AsString + ')';
        exWks.Range['J35'].Value := Q.FieldByName('firm_contact_comment').AsString;
        Q.Close;
      end;
      if not Query_ClientInvoice.FieldByName('firm_buh_id').IsNull then begin
        Q.SQL.Clear;
        Q.SQL.Add('SELECT * FROM view_firm_contact WHERE firm_contact_id = ' + Query_ClientInvoice.FieldByName('firm_buh_id').AsString);
        Q.Open;
        if Trim(Q.FieldByName('type_contact_name').AsString) <> '' then
          exWks.Range['C37'].Value := Q.FieldByName('type_contact_name').AsString;
        exWks.Range['J37'].Value := '(' + Q.FieldByName('firm_contact_name').AsString + ')';
        exWks.Range['J38'].Value := Q.FieldByName('firm_contact_comment').AsString;
        Q.Close;
      end;

    end;
    // ------ Подрядчик --------------
    1 : begin
      exWks.Range['D1'].Value := Query_ClientInvoice.FieldByName('firm_customer_name_full').AsString;
      exWks.Range['D2'].Value := firm_customer_address;
      exWks.Range['D3'].Value := firm_customer_bank;

      if Query_ClientInvoice.FieldByName('set_header_correct').Value = 1 then begin
        exWks.Range['E16'].Value  := Query_ClientInvoice.FieldByName('header_name').AsString;
        exWks.Range['E18'].Value  := Query_ClientInvoice.FieldByName('header_address').AsString;
        exWks.Range['E19'].Value  := StringReplace(Query_ClientInvoice.FieldByName('header_bank').AsString, Char(13), '', [rfReplaceAll]);
      end else begin
        exWks.Range['E16'].Value  := '';
        exWks.Range['E18'].Value  := '';
        exWks.Range['E19'].Value  := '';
      end;

      exWks.Range['H13'].Value := Query_ClientInvoice.FieldByName('invoice_cod').AsString;
      exWks.Range['K14'].Value := Query_ClientInvoice.FieldByName('invoice_date').AsDateTime;
      exWks.Range['K17'].Value := Query_ClientInvoice.FieldByName('brief_name').AsString;
    end;
  end;

  // ------- копирование строк ---------
  ShowTextMessage('Запрос к базе данных...', False);
  Q_Subject := TADOQuery.Create(nil);
  Q_Subject.Connection := connect;
  Q_Subject.SQL.Add('SELECT * FROM view_invoice_table WHERE invoice_id='+IntToStr(invoice_id));
  Q_Subject.Open;
  Q_Subject.Next;
  while not Q_Subject.Eof do begin
    exWks.Rows['23'].Insert;
    exWks.Rows['22'].Copy;
    exWks.Rows['23'].PasteSpecial(1);
    exWks.Range['B23'].Value := Q_Subject.RecordCount-Q_Subject.RecNo+2;
    Q_Subject.Next;
  end;

  // ----- основной цикл ------------
  ShowTextMessage('Построение отчёта...', False);
  _sum := 0;
  _sum_nds := 0;
  Q_Subject.First;
  while not Q_Subject.Eof do begin
    _sum := _sum + Q_Subject.FieldByName('subject_sum').AsCurrency;
    _sum_nds   := _sum_nds + Q_Subject.FieldByName('subject_sum_nds').AsCurrency;

    exWks.Range['C'+IntToStr(21+Q_Subject.RecNo)].Value := StringReplace(Q_Subject.FieldByName('subject_invoice').AsString, Char(13), '', [rfReplaceAll]);
    exWks.Range['I'+IntToStr(21+Q_Subject.RecNo)].Value := Q_subject.FieldByName('subject_ed_izm_name').AsString;
    exWks.Range['H'+IntToStr(21+Q_Subject.RecNo)].Value := Q_Subject.FieldByName('subject_weight').Value;
    if (not Q_Subject.FieldByName('subject_set').AsBoolean) then begin
      exWks.Range['J'+IntToStr(21+Q_Subject.RecNo)].Value := RoundCurr(Q_Subject.FieldByName('subject_sum').AsCurrency / Q_Subject.FieldByName('subject_weight').AsCurrency, -2);
      exWks.Range['K'+IntToStr(21+Q_Subject.RecNo)].Value := Q_Subject.FieldByName('subject_sum').AsCurrency;
    end else begin
      exWks.Range['J'+IntToStr(21+Q_Subject.RecNo)].Value := Q_Subject.FieldByName('subject_rate').Value;
      exWks.Range['K'+IntToStr(21+Q_Subject.RecNo)].Value := Q_Subject.FieldByName('subject_sum').AsCurrency;
    end;

    AutoFitMergeCell(exWks.Range['C' + IntToStr(21+Q_Subject.RecNo)]);
    Q_Subject.Next;
  end;


  // -------- итоговые суммы -------
  exWks.Range['K'+IntToStr(23+Q_Subject.RecordCount)].Value := _sum;
  exWks.Range['K'+IntToStr(24+Q_Subject.RecordCount)].Value := _sum_nds;
  exWks.Range['K'+IntToStr(25+Q_Subject.RecordCount)].Value := Query_ClientInvoice.FieldByName('invoice_sum').AsCurrency;

  exWks.Range['E'+IntToStr(26+Q_Subject.RecordCount)].Value := GetSumScript_RUS(FormatFloat('0.00', Query_ClientInvoice.FieldByName('invoice_sum').AsCurrency), Query_ClientInvoice.FieldByName('currency_id').AsInteger);

  if _sum_nds = 0 then begin
    exWks.Range['K'+IntToStr(24+Q_Subject.RecordCount)].Value := '';
    exWks.Range['E'+IntToStr(24+Q_Subject.RecordCount)].Value := '';
  end;

  // ------ доп.сведения ---------------
  if Query_ClientInvoice['string_bottom_id']<>null then begin
    Q.Close;
    Q.SQL.Clear;
    Q.SQL.Add('SELECT inf_obj_name FROM inf_obj WHERE inf_obj_id='+IntToStr(Query_ClientInvoice.FieldByName('string_bottom_id').AsInteger));
    Q.Open;

    exWks.Range['B'+IntToStr(28+Q_Subject.RecordCount)].Value := Q.FieldByName('inf_obj_name').AsString;
  end;
  Q_Subject.Free;
  Q.Free;

  // ---- Добавляем в CA ШК
  BarCode.object_id := 28; // Счет
  BarCode.date      := Query_ClientInvoice.FieldByName('invoice_date').AsDateTime;
  BarCode.global_id := invoice_id;
  BarCode.user_id   := Query_ClientInvoice.FieldByName('users_owner_id').AsInteger;
  PrintBarCode2of5(BarCode, exWks, NULL, connect);

  // Автоподбор по высоте
  AutoFitMergeCell(exWks.Range['D1']);
  AutoFitMergeCell(exWks.Range['D2']);
  AutoFitMergeCell(exWks.Range['D3']);

  AutoFitMergeCell(exWks.Range['E16']);
  AutoFitMergeCell(exWks.Range['E18']);
  AutoFitMergeCell(exWks.Range['E19']);

  exWks.Range['A1'].Select;
   if tmp_path = '-9' then begin
    tmp_path := ExtractFilePath(ParamStr(0)) + 'Temp\';
    tmp_path := tmp_path + 'Invoice_' + Query_ClientInvoice.FieldByName('invoice_id').AsString + '_' + FormatDateTime('yyyymmddhhnnss', Now) + '.xls';
    exWks.Parent.SaveCopyAs(tmp_path)
  end else exApp.Visible := True;

  Query_ClientInvoice.Free;
  Screen.Cursor := crDefault;
  ShowTextMessage;
  exApp.Visible := True;
  exWks := Null; exWkb := Null; exApp := Null;
end;
{$ENDREGION 'Печатная форма счета ставка с НДС - "03"'}

{$REGION 'Печатная форма МА - "04"'}
procedure PrintInvoiceSFH_RUS_MA(invoice_id: integer; connect: TADOConnection; var tmp_path : string);
var exApp, exWkb, exWks    : Variant;
    _sum, _sum_nds         : currency;
    BarCode                : TmyBarCode;
    firm_customer_address  : string;
    firm_customer_bank     : string;
    Query_ClientInvoice    : TADOQuery;
    Q                      : TADOQuery;
    Q_Subject              : TADOQuery;
begin
  Screen.Cursor := crHourglass;
  ShowTextMessage('Запуск сервера автоматизации Excel...', False);

  Query_ClientInvoice :=  TADOQuery.Create(nil);
  Query_ClientInvoice.Connection := connect;
  Query_ClientInvoice.SQL.Add('SELECT *,');
  Query_ClientInvoice.SQL.Add('case when exists(SELECT	1 FROM	view_invoice_header_rights vh WHERE	invoice_date BETWEEN date_begin AND ISNULL(date_end, invoice_date + 1) AND vh.invoice_header_id = view_invoice.invoice_header_id) then 1 else 0 end set_header_correct');
  Query_ClientInvoice.SQL.Add('FROM view_invoice WHERE invoice_id = ' + IntToStr(invoice_id));
  Query_ClientInvoice.Open;

  exApp := CreateOleObject('Excel.Application');
  exWkb := exApp.Workbooks.Add(GetDocBlob(connect, 370, 9, True)); // 'Счет МА'
  exWkb := exApp.ActiveWorkbook;
  exWks := exWkb.WorkSheets[1];

  Q := TADOQuery.Create(nil);
  Q.Connection := connect;
  Q.SQL.Add('SELECT TOP 1 firm_contact_name FROM view_firm_contact');
  Q.SQL.Add('WHERE firm_id = ' + Query_ClientInvoice.FieldByName('firm_customer').AsString);
  Q.SQL.Add('AND type_contact_cod = ''11'''); // Юр. адрес
  Q.SQL.Add('AND ' + DateToSQL(Query_ClientInvoice.FieldByName('invoice_date').AsDateTime) + ' BETWEEN date_begin AND ISNULL(date_end, ' + DateToSQL(Query_ClientInvoice.FieldByName('invoice_date').AsDateTime) + ')');
  Q.Open;
  firm_customer_address := Q.FieldByName('firm_contact_name').AsString;

  case Query_ClientInvoice.FieldByName('type_invoice').AsInteger of
    // ------- Клиент и Администрация -----------
    0, 2 : begin
     exWks.Range['C14'].Value := 'Счет № ' + Query_ClientInvoice.FieldByName('invoice_cod').AsString + ' от ' + FormatDateTime('dd.mm.yy', Query_ClientInvoice.FieldByName('invoice_date').Value) + 'г.';
     exWks.Range['H19'].Value := 'Валюта счета: '  + Query_ClientInvoice.FieldByName('brief_name').AsString;
     exWks.Range['C16'].Value := 'Согласно договору № : ' + Query_ClientInvoice.FieldByName('contract_cod').AsString + ' от ' + FormatDateTime('dd.mm.yy', Query_ClientInvoice.FieldByName('date_begin').Value) + 'г.';
     exWks.Range['C18'].Value := 'Плательщик: ' + Query_ClientInvoice.FieldByName('firm_customer_name_short').AsString;

      // Подписанты
      if not Query_ClientInvoice.FieldByName('firm_director_id').IsNull then begin
        Q.SQL.Clear;
        Q.SQL.Add('SELECT * FROM view_firm_contact WHERE firm_contact_id = ' + Query_ClientInvoice.FieldByName('firm_director_id').AsString);
        Q.Open;
        if Trim(Q.FieldByName('type_contact_name').AsString) <> '' then
          exWks.Range['C27'].Value := Q.FieldByName('type_contact_name').AsString;
        exWks.Range['H27'].Value := '(' + Q.FieldByName('firm_contact_name').AsString + ')';
        exWks.Range['H28'].Value := Q.FieldByName('firm_contact_comment').AsString;
        Q.Close;
      end;
      if not Query_ClientInvoice.FieldByName('firm_buh_id').IsNull then begin
        Q.SQL.Clear;
        Q.SQL.Add('SELECT * FROM view_firm_contact WHERE firm_contact_id = ' + Query_ClientInvoice.FieldByName('firm_buh_id').AsString);
        Q.Open;
        if Trim(Q.FieldByName('type_contact_name').AsString) <> '' then
          exWks.Range['C29'].Value := Q.FieldByName('type_contact_name').AsString;
        exWks.Range['H29'].Value := '(' + Q.FieldByName('firm_contact_name').AsString + ')';
        exWks.Range['H30'].Value := Q.FieldByName('firm_contact_comment').AsString;
        Q.Close;
      end;
    end;
  end;

  // ------- копирование строк ---------
  ShowTextMessage('Запрос к базе данных...', False);
  Q_Subject := TADOQuery.Create(nil);
  Q_Subject.Connection := connect;
  Q_Subject.SQL.Add('SELECT * FROM view_invoice_table WHERE invoice_id='+IntToStr(invoice_id));
  Q_Subject.Open;
  Q_Subject.Next;
  while not Q_Subject.Eof do begin
    exWks.Rows['22'].Insert;
    exWks.Rows['21'].Copy;
    exWks.Rows['22'].PasteSpecial(1);
    exWks.Range['C22'].Value := Q_Subject.RecordCount-Q_Subject.RecNo+2;
    Q_Subject.Next;
  end;

  // ----- основной цикл ------------
  ShowTextMessage('Построение отчёта...', False);
  _sum := 0;
  _sum_nds := 0;
  Q_Subject.First;
  while not Q_Subject.Eof do begin
    _sum := _sum + Q_Subject.FieldByName('subject_sum').AsCurrency;
    _sum_nds   := _sum_nds + Q_Subject.FieldByName('subject_sum_nds').AsCurrency;

    exWks.Range['D'+IntToStr(20+Q_Subject.RecNo)].Value := StringReplace(Q_Subject.FieldByName('subject_invoice').AsString, Char(13), '', [rfReplaceAll]);
    exWks.Range['E'+IntToStr(20+Q_Subject.RecNo)].Value := Q_subject.FieldByName('subject_ed_izm_name').AsString;
    exWks.Range['F'+IntToStr(20+Q_Subject.RecNo)].Value := Q_Subject.FieldByName('subject_weight').Value;
    if (not Q_Subject.FieldByName('subject_set').AsBoolean) then begin
      exWks.Range['G'+IntToStr(20+Q_Subject.RecNo)].Value := RoundCurr(Q_Subject.FieldByName('subject_sum').AsCurrency / Q_Subject.FieldByName('subject_weight').AsCurrency, -2);
      exWks.Range['H'+IntToStr(20+Q_Subject.RecNo)].Value := Q_Subject.FieldByName('subject_sum').AsCurrency;
    end else begin
      exWks.Range['G'+IntToStr(20+Q_Subject.RecNo)].Value := Q_Subject.FieldByName('subject_rate').Value;
      exWks.Range['H'+IntToStr(20+Q_Subject.RecNo)].Value := Q_Subject.FieldByName('subject_sum').AsCurrency;
    end;

    AutoFitMergeCell(exWks.Range['D' + IntToStr(20+Q_Subject.RecNo)]);
    Q_Subject.Next;
  end;

// -------- итоговые суммы -------
  exWks.Range['H'+IntToStr(21+Q_Subject.RecordCount)].Value := _sum;
  exWks.Range['H'+IntToStr(22+Q_Subject.RecordCount)].Value := _sum_nds;
  exWks.Range['H' + IntToStr(23 + Q_Subject.RecordCount)].Value := Query_ClientInvoice.FieldByName('invoice_sum').AsCurrency;
  exWks.Range['C' + IntToStr(24 + Q_Subject.RecordCount)].Value := 'Всего оказано услуг на сумму: ' + GetSumScript_RUS(FormatFloat('0.00', Query_ClientInvoice.FieldByName('invoice_sum').AsCurrency), Query_ClientInvoice.FieldByName('currency_id').AsInteger);

 if _sum_nds = 0 then begin
    exWks.Range['H'+IntToStr(22+Q_Subject.RecordCount)].Value := 'НДС не облагается';
    exWks.Range['G'+IntToStr(23+Q_Subject.RecordCount)].Value := 'Всего';
  end;

  // ---- Добавляем в CA ШК
  BarCode.object_id := 28; // Счет
  BarCode.date      := Query_ClientInvoice.FieldByName('invoice_date').AsDateTime;
  BarCode.global_id := invoice_id;
  BarCode.user_id   := Query_ClientInvoice.FieldByName('users_owner_id').AsInteger;
  PrintBarCode2of5(BarCode, exWks, NULL, connect);

  // Автоподбор по высоте
  AutoFitMergeCell(exWks.Range['E16']);
  AutoFitMergeCell(exWks.Range['E18']);
  AutoFitMergeCell(exWks.Range['E19']);

  exWks.Range['A1'].Select;
   if tmp_path = '-9' then begin
    tmp_path := ExtractFilePath(ParamStr(0)) + 'Temp\';
    tmp_path := tmp_path + 'Invoice_' + Query_ClientInvoice.FieldByName('invoice_id').AsString + '_' + FormatDateTime('yyyymmddhhnnss', Now) + '.xls';
    exWks.Parent.SaveCopyAs(tmp_path)
  end else exApp.Visible := True;

  Query_ClientInvoice.Free;
  Screen.Cursor := crDefault;
  ShowTextMessage;
  exApp.Visible := True;
  exWks := Null; exWkb := Null; exApp := Null;
end;
{$ENDREGION 'Печатная форма МА - "04"'}

procedure PrintInvoiceSFH_RUS_PTA(invoice_id: integer; connect: TADOConnection; var tmp_path : string);
var exApp, exWkb, exWks    : Variant;
    BarCode                : TmyBarCode;
    firm_customer_address  : string;
    firm_customer_inn      : string;
    firm_self_inn          : string;
    Query_ClientInvoice    : TADOQuery;
    Q_Subject              : TADOQuery;
    brief_name             : string;
    str_tmp                : string;

    row                    : integer;

    Q                      : TADOQuery;
begin
  Screen.Cursor := crHourglass;
  ShowTextMessage('Запуск сервера автоматизации Excel...', False);

  Query_ClientInvoice :=  TADOQuery.Create(nil);
  Query_ClientInvoice.Connection := connect;
  Query_ClientInvoice.SQL.Add('SELECT *,');
  Query_ClientInvoice.SQL.Add('case when exists(SELECT	1 FROM	view_invoice_header_rights vh WHERE	invoice_date BETWEEN date_begin AND ISNULL(date_end, invoice_date + 1) AND vh.invoice_header_id = view_invoice.invoice_header_id) then 1 else 0 end set_header_correct');
  Query_ClientInvoice.SQL.Add('FROM view_invoice WHERE invoice_id = ' + IntToStr(invoice_id));
  Query_ClientInvoice.Open;

  exApp := CreateOleObject('Excel.Application');
  exWkb := exApp.Workbooks.Add(GetDocBlob(connect, 432, 9, True)); // 'Счет ПТА'
  exWkb := exApp.ActiveWorkbook;
  exWks := exWkb.WorkSheets[1];

  // Адрес плательщика
  Q := TADOQuery.Create(nil);
  Q.Connection := connect;
  Q.SQL.Add('SELECT TOP 1 firm_contact_name ');
  Q.SQL.Add('FROM view_firm_contact');
  Q.SQL.Add('WHERE firm_id = ' + Query_ClientInvoice.FieldByName('firm_customer').AsString);
  Q.SQL.Add('AND type_contact_cod = ''11'''); // Юр. адрес
  Q.SQL.Add('AND ' + DateToSQL(Query_ClientInvoice.FieldByName('invoice_date').AsDateTime) + ' BETWEEN date_begin AND ISNULL(date_end, ' + DateToSQL(Query_ClientInvoice.FieldByName('invoice_date').AsDateTime) + ')');
  Q.Open;
  firm_customer_address := Q.FieldByName('firm_contact_name').AsString;
  Q.Close;
  Q.SQL.Clear;
  Q.SQL.Add('SELECT TOP 1 inn_kpp ');
  Q.SQL.Add('FROM view_firm');
  Q.SQL.Add('WHERE firm_id = :firm_id');
  Q.Parameters.ParamByName('firm_id').Value := Query_ClientInvoice.FieldByName('firm_customer').Value;
  Q.Open;
  firm_customer_inn := Q.FieldByName('inn_kpp').AsString;
  Q.Close;
  Q.Parameters.ParamByName('firm_id').Value := Query_ClientInvoice.FieldByName('firm_self').Value;
  Q.Open;
  firm_self_inn := Q.FieldByName('inn_kpp').AsString;
  Q.Close;

  exWks.Range['B2'].Value := 'Счет № ' + Query_ClientInvoice.FieldByName('invoice_cod').AsString + ' от ' + FormatDateTime('dd.mm.yy', Query_ClientInvoice.FieldByName('invoice_date').Value) + 'г.';

  exWks.Range['C4'].Value  := StringReplace(Query_ClientInvoice.FieldByName('header_name').AsString, Char(13), '', [rfReplaceAll]);
  exWks.Range['C5'].Value  := StringReplace(Query_ClientInvoice.FieldByName('header_address').AsString, Char(13), '', [rfReplaceAll]);
  exWks.Range['C6'].Value  := firm_self_inn;
  exWks.Range['C7'].Value  := StringReplace(Query_ClientInvoice.FieldByName('header_bank').AsString, Char(13), '', [rfReplaceAll]);
  AutoFitMergeCell(exWks.Range['C4']);
  AutoFitMergeCell(exWks.Range['C5']);
  AutoFitMergeCell(exWks.Range['C6']);
  AutoFitMergeCell(exWks.Range['C7']);

  exWks.Range['C9'].Value  := Query_ClientInvoice.FieldByName('firm_customer_name_full').AsString;
  exWks.Range['C10'].Value := firm_customer_address;
  exWks.Range['C11'].Value := firm_customer_inn;
  AutoFitMergeCell(exWks.Range['C9']);
  AutoFitMergeCell(exWks.Range['C10']);
  AutoFitMergeCell(exWks.Range['C11']);

  brief_name := 'руб.';
  if Query_ClientInvoice.FieldByName('currency_id').Value <> 3 then
    brief_name := Query_ClientInvoice.FieldByName('brief_name').AsString;

  exWks.Range['L17'].Value := 'Ставка по договору с НДС, '  + brief_name;
  exWks.Range['N17'].Value := 'Сумма налога, '  + brief_name;
  exWks.Range['O17'].Value := 'Итого с НДС, '  + brief_name;

  // Подписанты (снизу-вверх - для корректной работы в случае удаления строк не заполненного подписанта)
  if not Query_ClientInvoice.FieldByName('firm_buh_id').IsNull then begin
    Q.SQL.Clear;
    Q.SQL.Add('SELECT * FROM view_firm_contact WHERE firm_contact_id = ' + Query_ClientInvoice.FieldByName('firm_buh_id').AsString);
    Q.Open;
    exWks.Range['B26'].Value := Q.FieldByName('type_contact_name').AsString;
    exWks.Range['D26'].Value := '____________________________ ' + Q.FieldByName('firm_contact_name').AsString;
    exWks.Range['G27'].Value := Q.FieldByName('firm_contact_comment').AsString;
    Q.Close;
  end else begin
    exWks.Rows['26:28'].ClearContents;
  end;
  if not Query_ClientInvoice.FieldByName('firm_director_id').IsNull then begin
    Q.SQL.Clear;
    Q.SQL.Add('SELECT * FROM view_firm_contact WHERE firm_contact_id = ' + Query_ClientInvoice.FieldByName('firm_director_id').AsString);
    Q.Open;
    exWks.Range['B23'].Value := Q.FieldByName('type_contact_name').AsString;
    exWks.Range['D23'].Value := '____________________________ ' + Q.FieldByName('firm_contact_name').AsString;
    exWks.Range['G24'].Value := Q.FieldByName('firm_contact_comment').AsString;
    Q.Close;
  end else begin
    exWks.Rows['23:25'].ClearContents;
  end;
  Q.Free;

  ShowTextMessage('Запрос к базе данных...', False);
  Q_Subject := TADOQuery.Create(nil);
  Q_Subject.Connection := connect;
  Q_Subject.SQL.Add('SELECT * FROM view_invoice_table WHERE invoice_id='+IntToStr(invoice_id));
  Q_Subject.Open;

  ShowTextMessage('Построение отчёта...', False);
  Q_Subject.First;
  row := 17;
  while not Q_Subject.Eof do begin
    exWks.Rows[IntToStr(row + 1)].Insert;
    exWks.Rows[IntToStr(row + 0)].Copy;
    exWks.Rows[IntToStr(row + 1)].PasteSpecial(1);

    exWks.Range['B'+IntToStr(row)].Value := StringReplace(Q_Subject.FieldByName('subject_invoice').AsString, Char(13), '', [rfReplaceAll]);
    exWks.Range['J'+IntToStr(row)].Value := Q_Subject.FieldByName('subject_weight').Value;
    exWks.Range['L'+IntToStr(row)].Value := Q_Subject.FieldByName('subject_rate').Value;
    exWks.Range['M'+IntToStr(row)].Value := Q_Subject.FieldByName('subject_nds_name').AsString;
    exWks.Range['N'+IntToStr(row)].Value := Q_Subject.FieldByName('subject_sum_nds').Value;
    exWks.Range['O'+IntToStr(row)].Value := Q_Subject.FieldByName('subject_sum_total').Value;

    AutoFitMergeCell(exWks.Range['B'+IntToStr(row)]);
    inc(row);
    Q_Subject.Next;
  end;

  exWks.Rows[IntToStr(row)].Delete;
  if Q_Subject.RecordCount = 0 then begin
    exWks.Rows[IntToStr(row)].ClearContents;
    inc(row);
  end else begin
    exWks.Rows[IntToStr(row)].Delete;
  end;


  // -------- итоговые суммы -------
  Q_Subject.First;
  str_tmp := 'Итого к оплате: ' + FormatCurr('#,##0.00', exWks.Range['O' + IntToStr(row)].Value) + ' ' + brief_name;
  if not Q_Subject.FieldByName('subject_nds').IsNull then
    str_tmp := str_tmp + ', в т.ч. НДС ' + Q_Subject.FieldByName('subject_nds_name').AsString + ' - ' + FormatCurr('#,##0.00', exWks.Range['N' + IntToStr(row)].Value) + ' ' + brief_name;
  exWks.Range['B' + IntToStr(row + 1)].Value := str_tmp;

  // ---- Добавляем в CA ШК
  BarCode.object_id := 28; // Счет
  BarCode.date      := Query_ClientInvoice.FieldByName('invoice_date').AsDateTime;
  BarCode.global_id := invoice_id;
  BarCode.user_id   := Query_ClientInvoice.FieldByName('users_owner_id').AsInteger;
  PrintBarCode2of5(BarCode, exWks, NULL, connect);

  exWks.Range['A1'].Select;
  if tmp_path = '-9' then begin
    tmp_path := ExtractFilePath(ParamStr(0)) + 'Temp\';
    tmp_path := tmp_path + 'Invoice_' + Query_ClientInvoice.FieldByName('invoice_id').AsString + '_' + FormatDateTime('yyyymmddhhnnss', Now) + '.xls';
    exWks.Parent.SaveCopyAs(tmp_path)
  end else
    exApp.Visible := True;

  Query_ClientInvoice.Free;
  Screen.Cursor := crDefault;
  ShowTextMessage;
  exApp.Visible := True;
  exWks := Null; exWkb := Null; exApp := Null;
end;

{$REGION 'Печатная форма счета английская'}
procedure PrintInvoiceSFH_ENG(invoice_id: integer; connect: TADOConnection; var tmp_path : string);
var exApp, exWkb, exWks    : Variant;
    Q_Subject              : TADOQuery;
    _sum, _sum_nds         : currency;
    BarCode                : TmyBarCode;
    Q                      : TADOQuery;
    firm_customer_address  : string;
    firm_customer_bank     : string;
    Query_ClientInvoice : TADOQuery;
begin
  Screen.Cursor := crHourglass;

  Query_ClientInvoice :=  TADOQuery.Create(nil);
  Query_ClientInvoice.Connection := connect;
  Query_ClientInvoice.SQL.Add('SELECT *,');
  Query_ClientInvoice.SQL.Add('case when exists(SELECT	1 FROM	view_invoice_header_rights vh WHERE	invoice_date BETWEEN date_begin AND ISNULL(date_end, invoice_date + 1) AND vh.invoice_header_id = view_invoice.invoice_header_id) then 1 else 0 end set_header_correct');
  Query_ClientInvoice.SQL.Add('FROM view_invoice WHERE invoice_id = ' + IntToStr(invoice_id));
  Query_ClientInvoice.Open;

  ShowTextMessage('Запуск сервера автоматизации Excel...', False);
  exApp := CreateOleObject('Excel.Application');
  exWkb := exApp.Workbooks.Add(GetDocBlob(connect, 8, 9, True)); // 'InvoiceSFH_ENG.xls'
  exWkb := exApp.ActiveWorkbook;
  exWks := exWkb.WorkSheets[1];

  Q := TADOQuery.Create(nil);
  Q.Connection := connect;
  Q.SQL.Add('SELECT TOP 1 firm_contact_name FROM view_firm_contact');
  Q.SQL.Add('WHERE firm_id = ' + Query_ClientInvoice.FieldByName('firm_customer').AsString);
  Q.SQL.Add('AND type_contact_cod = ''11'''); // Юр. адрес
  Q.SQL.Add('AND ' + DateToSQL(Query_ClientInvoice.FieldByName('invoice_date').AsDateTime) + ' BETWEEN date_begin AND ISNULL(date_end, ' + DateToSQL(Query_ClientInvoice.FieldByName('invoice_date').AsDateTime) + ')');
  Q.Open;
  firm_customer_address := Q.FieldByName('firm_contact_name').AsString;
//  Q.Close;
//  Q.SQL.Strings[2] := 'AND type_contact_cod = ''01''';  // Банковские реквизиты
//  Q.Open;
//  firm_customer_bank := StringReplace(Q.FieldByName('firm_contact_name').AsString, Char(13), '', [rfReplaceAll]);
//  Q.Close;

  if Query_ClientInvoice.FieldByName('set_header_correct').Value = 1 then begin
    exWks.Range['D1'].Value := StringReplace(Query_ClientInvoice.FieldByName('header_name').AsString, Char(13), '', [rfReplaceAll]);
    exWks.Range['D2'].Value := StringReplace(Query_ClientInvoice.FieldByName('header_address').AsString, Char(13), '', [rfReplaceAll]);
    exWks.Range['D3'].Value := StringReplace(Query_ClientInvoice.FieldByName('header_bank').AsString, Char(13), '', [rfReplaceAll]);
  end else begin
    exWks.Range['D1'].Value := '';
    exWks.Range['D2'].Value := '';
    exWks.Range['D3'].Value := '';
  end;
  exWks.Range['H13'].Value := Query_ClientInvoice.FieldByName('invoice_cod').AsString;
  exWks.Range['N14'].Value := Query_ClientInvoice.FieldByName('invoice_date').AsDateTime;
  exWks.Range['E16'].Value := Query_ClientInvoice.FieldByName('firm_customer_name_short').AsString;
  exWks.Range['E18'].Value := firm_customer_address;
  //exWks.Range['E19'].Value := firm_customer_bank;
  exWks.Range['E19'].Value := Query_ClientInvoice.FieldByName('bank_firm_contact_name').AsString;
  exWks.Range['K17'].Value := Query_ClientInvoice.FieldByName('brief_name').AsString;

  // Подписанты
  if not Query_ClientInvoice.FieldByName('firm_director_id').IsNull then begin
    Q.SQL.Clear;
    Q.SQL.Add('SELECT * FROM view_firm_contact WHERE firm_contact_id = ' + Query_ClientInvoice.FieldByName('firm_director_id').AsString);
    Q.Open;
    if Q.FieldByName('type_contact_eng').AsString <> '' then
      exWks.Range['C33'].Value := Q.FieldByName('type_contact_eng').AsString
    else begin
      if Trim(Q.FieldByName('type_contact_name').AsString) <> '' then
        exWks.Range['C33'].Value := Q.FieldByName('type_contact_name').AsString;
    end;
    exWks.Range['J33'].Value := '(' + Q.FieldByName('firm_contact_name').AsString + ')';
    exWks.Range['J34'].Value := Q.FieldByName('firm_contact_comment').AsString;
    Q.Close;
  end;

  if not Query_ClientInvoice.FieldByName('firm_buh_id').IsNull then begin
    Q.SQL.Clear;
    Q.SQL.Add('SELECT * FROM view_firm_contact WHERE firm_contact_id = ' + Query_ClientInvoice.FieldByName('firm_buh_id').AsString);
    Q.Open;
    if Q.FieldByName('type_contact_eng').AsString <> '' then
      exWks.Range['C36'].Value := Q.FieldByName('type_contact_eng').AsString
    else begin
      if Trim(Q.FieldByName('type_contact_name').AsString) <> '' then
        exWks.Range['C36'].Value := Q.FieldByName('type_contact_name').AsString;
    end;
    exWks.Range['J36'].Value := '(' + Q.FieldByName('firm_contact_name').AsString + ')';
    exWks.Range['J37'].Value := Q.FieldByName('firm_contact_comment').AsString;
    Q.Close;
  end;

  Q.Free;

  ShowTextMessage('Запрос к базе данных...', False);
  Q_Subject := TADOQuery.Create(nil);
  Q_Subject.Connection := connect;
  Q_Subject.SQL.Add('SELECT * FROM view_invoice_table WHERE invoice_id='+IntToStr(invoice_id));
  Q_Subject.Open;
  Q_Subject.Next;
  while not Q_Subject.Eof do begin
    exWks.Rows['23'].Insert;
    exWks.Rows['22'].Copy;
    exWks.Rows['23'].PasteSpecial(1);
    exWks.Range['B23'].Value := Q_Subject.RecordCount-Q_Subject.RecNo+2;
    Q_Subject.Next;
  end;

  // ------- основной цикл ----------------
  ShowTextMessage('Построение отчёта...', False);
  _sum := 0;
  _sum_nds := 0;
  Q_Subject.First;
  while not Q_Subject.Eof do begin
    _sum := _sum + Q_Subject.FieldByName('subject_sum').AsCurrency;
    _sum_nds   := _sum_nds + Q_Subject.FieldByName('subject_sum_nds').AsCurrency;

    exWks.Range['C'+IntToStr(21+Q_Subject.RecNo)].Value := StringReplace(Q_Subject.FieldByName('subject_invoice').AsString, Char(13), '', [rfReplaceAll]);
    exWks.Range['I'+IntToStr(21+Q_Subject.RecNo)].Value := Q_subject.FieldByName('subject_ed_izm_name').AsString;
    exWks.Range['H'+IntToStr(21+Q_Subject.RecNo)].Value := Q_Subject.FieldByName('subject_weight').Value;

    exWks.Range['J'+IntToStr(21+Q_Subject.RecNo)].Value := Q_Subject.FieldByName('subject_rate').Value;  // цена с НДС
    exWks.Range['K'+IntToStr(21+Q_Subject.RecNo)].Value := Q_Subject.FieldByName('subject_sum').Value;  // цена без НДС
    exWks.Range['L'+IntToStr(21+Q_Subject.RecNo)].Value := Q_Subject.FieldByName('subject_nds_name').AsString;  // ставка НДС
    exWks.Range['M'+IntToStr(21+Q_Subject.RecNo)].Value := Q_Subject.FieldByName('subject_sum_nds').Value;  // сумма НДС

    exWks.Range['N'+IntToStr(21+Q_Subject.RecNo)].Value := Q_Subject.FieldByName('subject_sum_total').Value;   // всего


//    if (not Q_Subject.FieldByName('subject_set').AsBoolean) then begin
//      exWks.Range['J'+IntToStr(21+Q_Subject.RecNo)].Value := RoundCurr(Q_Subject.FieldByName('subject_sum').AsCurrency / Q_Subject.FieldByName('subject_weight').AsCurrency, -2);
//      exWks.Range['K'+IntToStr(21+Q_Subject.RecNo)].Value := Q_Subject.FieldByName('subject_sum').AsCurrency;
//    end else begin
//      exWks.Range['J'+IntToStr(21+Q_Subject.RecNo)].Value := Q_Subject.FieldByName('subject_rate').Value;
//      exWks.Range['K'+IntToStr(21+Q_Subject.RecNo)].Value := Q_Subject.FieldByName('subject_sum').AsCurrency;
//    end;

    AutoFitMergeCell(exWks.Range['C' + IntToStr(21+Q_Subject.RecNo)]);
    Q_Subject.Next;
  end;


  // ----- итоговые суммы --------
  exWks.Range['N'+IntToStr(25+Q_Subject.RecordCount)].Value := Query_ClientInvoice.FieldByName('invoice_sum').AsCurrency;
  exWks.Range['N'+IntToStr(24+Q_Subject.RecordCount)].Value := _sum_nds;
  exWks.Range['N'+IntToStr(23+Q_Subject.RecordCount)].Value := _sum;
  exWks.Range['E'+IntToStr(26+Q_Subject.RecordCount)].Value := GetSumScript_ENG(FormatFloat('0.00', Query_ClientInvoice.FieldByName('invoice_sum').AsCurrency), Query_ClientInvoice.FieldByName('currency_id').AsInteger);

  if Query_ClientInvoice['string_bottom_id']<>null then begin
    Q.Close;
    Q.SQL.Clear;
    Q.SQL.Add('SELECT inf_obj_name FROM inf_obj WHERE inf_obj_id='+IntToStr(Query_ClientInvoice.FieldByName('string_bottom_id').AsInteger));
    Q.Open;

    exWks.Range['B'+IntToStr(28+Q_Subject.RecordCount)].Value := Q.FieldByName('inf_obj_name').AsString;
  end;
  Q_Subject.Free;

  // Добавляем в CA ШК
  BarCode.object_id := 28; // Счет-фактура
  BarCode.date      := Query_ClientInvoice.FieldByName('invoice_date').AsDateTime;
  BarCode.global_id := invoice_id;
  BarCode.user_id   := Query_ClientInvoice.FieldByName('users_owner_id').AsInteger;
  PrintBarCode2of5(BarCode, exWks, NULL, connect);

  // Автоподбор по высоте
  AutoFitMergeCell(exWks.Range['D1']);
  AutoFitMergeCell(exWks.Range['D2']);
  AutoFitMergeCell(exWks.Range['D3']);

  AutoFitMergeCell(exWks.Range['E16']);
  AutoFitMergeCell(exWks.Range['E18']);
  AutoFitMergeCell(exWks.Range['E19']);

  exWks.Range['A1'].Select;

  if tmp_path = '-9' then begin
    tmp_path := ExtractFilePath(ParamStr(0)) + 'Temp\';
    tmp_path := tmp_path + 'Invoice_' + Query_ClientInvoice.FieldByName('invoice_id').AsString + '_' + FormatDateTime('yyyymmddhhnnss', Now) + '.xls';
    exWks.Parent.SaveCopyAs(tmp_path)
  end else exApp.Visible := True;
//  exWks.PrintPreview;
//  exWkb.Saved := True;
//  exWkb.Close;
//  exApp.Quit;

  Query_ClientInvoice.Free;
  Screen.Cursor := crDefault;
  ShowTextMessage;
  exApp.Visible := True;
  exWks := Null; exWkb := Null; exApp := Null;
end;
{$ENDREGION 'Печатная форма счета английская'}

procedure TfmClientInvoice.ToolButton8Click(Sender: TObject);
var i : integer;
begin
  Finvoice_id := cxGrid1DBBandedTableView1invoice_id.DataBinding.Field.AsInteger;
  Finvoice_cod := cxGrid1DBBandedTableView1invoice_cod.DataBinding.Field.AsString;
  Fcontract_id:= cxGrid1DBBandedTableView1contract_id.DataBinding.Field.AsInteger;
  if cxGrid1DBBandedTableView1docs_id.DataBinding.Field.IsNull then
    Fdocs_id := -9
  else
    Fdocs_id := cxGrid1DBBandedTableView1docs_id.DataBinding.Field.AsInteger;


  Fstr_invoice_id := '';
  for i:=0 to cxGrid1DBBandedTableView1.Controller.SelectedRecordCount - 1 do
    Fstr_invoice_id := Fstr_invoice_id + ', ' + IntToStr(cxGrid1DBBandedTableView1.Controller.SelectedRows[i].Values[cxGrid1DBBandedTableView1invoice_id.Index]);
  if Fstr_invoice_id <> '' then Delete(Fstr_invoice_id, 1, 2);

  ModalResult := mrOk;
end;

procedure TfmClientInvoice.N12Click(Sender: TObject);
var id : integer;
    SP : TADOStoredProc;
begin
  Screen.Cursor := crHourglass;

  SP := TADOStoredProc.Create(nil);
  SP.Connection := Fconnect;
  SP.ProcedureName := 'sp_invoice_modify;1';
  SP.Parameters.Refresh;

  SP.Parameters.ParamByName('@type_action').Value := 3;
  SP.Parameters.ParamByName('@invoice_id').Value := cxGrid1DBBandedTableView1invoice_id.DataBinding.Field.AsInteger;;
  SP.ExecProc;
  id := SP.Parameters.ParamByName('@invoice_id').Value;

  if id <> -9 then RefreshQueryGrid(cxGrid1DBBandedTableView1, 'invoice_id',  SP.Parameters.ParamByName('@invoice_id').Value)
  else Application.MessageBox('Ошибка при копировании счёта.', 'Внимание', MB_OK);

  SP.Free;

  Screen.Cursor := crDefault;
end;

procedure TfmClientInvoice.N21Click(Sender: TObject);
begin
  SetdxDBGridColumns(cxGrid1DBBandedTableView1);
end;

procedure TfmClientInvoice.ToolButton24Click(Sender: TObject);
type
  TFunc = function(AppHand:THandle; global_id:integer; caption: string; usr_pwd:PUser_pwd):variant;
var
  FShablon  : TFunc;
  handle    : THandle;
  v         : Variant;
begin
   handle := LoadLibrary('dictionary.dll');
   @FShablon := GetProcAddress(handle,'CreateWndDocBlob');
   v := FShablon(Application.Handle, cxGrid1DBBandedTableView1invoice_id.DataBinding.Field.AsInteger, 'Документы связанные со счетом № '+cxGrid1DBBandedTableView1invoice_cod.DataBinding.Field.AsString + ' [' + cxGrid1DBBandedTableView1invoice_id.DataBinding.Field.AsString + ']', Fusr_pwd_lis);
   FreeLibrary(handle);
end;

procedure TfmClientInvoice.cxGrid1DBBandedTableView1FocusedItemChanged(Sender: TcxCustomGridTableView; APrevFocusedItem, AFocusedItem: TcxCustomGridTableItem);
begin
  Sender.Painter.Invalidate;
end;

procedure TfmClientInvoice.cxGrid1DBBandedTableView1FocusedRecordChanged(Sender: TcxCustomGridTableView; APrevFocusedRecord, AFocusedRecord: TcxCustomGridRecord;  ANewItemRecordFocusingChanged: Boolean);
begin
  Screen.Cursor := crHourglass;
  Query_Pay.Close;
  Query_Subject.Close;
  Query_Bargain.Close;
  if AFocusedRecord <> nil then begin
    if dxBarButton4.Down AND (cxPageControl1.ActivePageIndex = 1) then begin
      Query_Pay.Parameters.ParamByName('invoice_id').Value := AFocusedRecord.Values[cxGrid1DBBandedTableView1invoice_id.Index];
      Query_Pay.Open;
    end;
    if dxBarButton4.Down AND (cxPageControl1.ActivePageIndex = 2) then begin
      Query_Bargain.Parameters.ParamByName('invoice_id').Value := AFocusedRecord.Values[cxGrid1DBBandedTableView1invoice_id.Index];
      Query_Bargain.Open;
    end;
    if dxBarButton4.Down AND (cxPageControl1.ActivePageIndex = 0) then begin
      Query_Subject.Parameters.ParamByName('invoice_id').Value := AFocusedRecord.Values[cxGrid1DBBandedTableView1invoice_id.Index];
      Query_Subject.Open;
    end;
  end;

 Screen.Cursor := crDefault;
end;

procedure TfmClientInvoice.cxGrid1DBBandedTableView1KeyPress(Sender: TObject; var Key: Char);
begin
  FilterColumnGridOnKeyPress(TcxGridDBBandedTableView(TcxGridSite(Sender).GridView), Key);
end;

procedure TfmClientInvoice.cxPageControl1Change(Sender: TObject);
begin
  cxGrid1DBBandedTableView1FocusedRecordChanged(cxGrid1DBBandedTableView1, cxGrid1DBBandedTableView1.Controller.FocusedRecord, cxGrid1DBBandedTableView1.Controller.FocusedRecord, True);
end;

procedure TfmClientInvoice.dxBarButton22Click(Sender: TObject);
begin
  Screen.Cursor := crHourglass;
  if TControl(Sender).Tag = 1 then begin
    Fdate1 := IncMonth(Fdate1, -1);
  end;

  if TControl(Sender).Tag = 2 then begin
    Fdate1 := IncMonth(Fdate1, 1);
  end;

  Fdate2 := IncMonth(Fdate1, 1) - 1;
  dxBarSubItem1.Caption := FormatDateTime('mmmm yyyy', Fdate1);

  Query_ClientInvoice.Close;
  Query_ClientInvoice.Parameters.ParamByName('invoice_date1').Value := Fdate1;
  Query_ClientInvoice.Parameters.ParamByName('invoice_date2').Value := Fdate2;
  Query_ClientInvoice.Open;

  Screen.Cursor := crDefault;
end;

procedure TfmClientInvoice.dxBarButton23Click(Sender: TObject);
begin
  RefreshQueryGrid(cxGrid1DBBandedTableView1, 'invoice_id', cxGrid1DBBandedTableView1invoice_id.DataBinding.Field.AsInteger);
end;

procedure TfmClientInvoice.dxBarButton24Click(Sender: TObject);
var        ClientDS : TClientDataSet;
    users_group_cod : string;
                  Q : TADOQuery;
           str_temp : string;
begin
  Q := TADOQuery.Create(nil);
  Q.Connection := fmMain.Lis;
  Q.SQL.Add('SELECT	inf_obj_cod as users_group_cod');
  Q.SQL.Add('FROM	  users INNER JOIN inf_obj on users.users_group_id = inf_obj.inf_obj_id');
  Q.SQL.Add('WHERE	users_name = system_user');
  Q.Open;
  users_group_cod := Q.FieldByName('users_group_cod').AsString;

  Q.SQL.Clear;
  Q.SQL.Add('SELECT * FROM GLOBAL_DOCS_LINK WHERE global_id = ' + cxGrid1DBBandedTableView1invoice_id.DataBinding.Field.AsString);
  Q.Open;

  if not Q.FieldByName('docs_id').IsNull then begin
    Application.MessageBox('Документ уже запущен в документообороте!', 'Внимание', MB_ICONWARNING or MB_OK);
    Q.Free;
    Exit;
  end;

  ClientDS := TClientDataSet.Create(nil);
  ClientDS.FieldDefs.Add('id', ftAutoInc);
  ClientDS.FieldDefs.Add('doc_type_cod', ftString, 10);
  ClientDS.FieldDefs.Add('database_cod', ftString, 10);
  ClientDS.FieldDefs.Add('users_group_cod', ftString, 10);

  ClientDS.FieldDefs.Add('contract_id'       ,ftInteger);
  ClientDS.FieldDefs.Add('bargain_id'        ,ftInteger);
  ClientDS.FieldDefs.Add('contract_cod'      ,ftString, 200);
  ClientDS.FieldDefs.Add('date_begin'        ,ftDateTime);
  ClientDS.FieldDefs.Add('firm_self_id'      ,ftInteger);
  ClientDS.FieldDefs.Add('firm_self_name'    ,ftString, 200);
  ClientDS.FieldDefs.Add('firm_customer_id'  ,ftInteger);
  ClientDS.FieldDefs.Add('firm_customer_name',ftString, 200);
  ClientDS.FieldDefs.Add('pays_sum'          ,ftCurrency);
  ClientDS.FieldDefs.Add('pays_currency_id'  ,ftInteger);
  ClientDS.FieldDefs.Add('invoice_str'       ,ftString, 200);
  ClientDS.FieldDefs.Add('invoice_date'      ,ftDateTime);
  ClientDS.FieldDefs.Add('invoice_id'        ,ftInteger);
  ClientDS.FieldDefs.Add('global_id'         ,ftInteger);
  ClientDS.FieldDefs.Add('date_pays_exec'    ,ftDateTime);
  ClientDS.FieldDefs.Add('comment'           ,ftString, 1000);

  ClientDS.CreateDataSet;
  ClientDS.LogChanges := False;

  Q.SQL.Clear;
  Q.SQL.Add('SELECT * FROM view_invoice_table WHERE invoice_id = ' + cxGrid1DBBandedTableView1invoice_id.DataBinding.Field.AsString);
  Q.Open;
  str_temp := '';
  while not Q.Eof do begin
    if str_temp <> '' then str_temp := str_temp + #10;
    str_temp := str_temp + Q.FieldByName('subject_invoice').AsString;
    Q.Next;
  end;

  ClientDS.Append;
  ClientDS.FieldByName('doc_type_cod'      ).Value := '20'; // Счет
  ClientDS.FieldByName('database_cod'      ).Value := '0';  // База Lis
  ClientDS.FieldByName('users_group_cod'   ).Value := users_group_cod;
  ClientDS.FieldByName('contract_id'       ).Value := cxGrid1DBBandedTableView1contract_id.DataBinding.Field.Value;
  ClientDS.FieldByName('contract_cod'      ).Value := cxGrid1DBBandedTableView1contract_cod.DataBinding.Field.Value;
  ClientDS.FieldByName('date_begin'        ).Value := cxGrid1DBBandedTableView1date_begin.DataBinding.Field.Value;
  ClientDS.FieldByName('firm_self_id'      ).Value := cxGrid1DBBandedTableView1firm_self.DataBinding.Field.Value;
  ClientDS.FieldByName('firm_self_name'    ).Value := cxGrid1DBBandedTableView1firm_self_name.DataBinding.Field.Value;
  ClientDS.FieldByName('firm_customer_id'  ).Value := cxGrid1DBBandedTableView1firm_customer.DataBinding.Field.Value;
  ClientDS.FieldByName('firm_customer_name').Value := cxGrid1DBBandedTableView1firm_customer_name.DataBinding.Field.Value;
  ClientDS.FieldByName('pays_sum'          ).Value := cxGrid1DBBandedTableView1invoice_sum.DataBinding.Field.Value;
  ClientDS.FieldByName('pays_currency_id'  ).Value := cxGrid1DBBandedTableView1currency_id.DataBinding.Field.Value;
  ClientDS.FieldByName('invoice_str'       ).Value := cxGrid1DBBandedTableView1invoice_cod.DataBinding.Field.Value;
  ClientDS.FieldByName('invoice_date'      ).Value := cxGrid1DBBandedTableView1invoice_date.DataBinding.Field.Value;
  ClientDS.FieldByName('date_pays_exec'    ).Value := cxGrid1DBBandedTableView1plan_pay_date.DataBinding.Field.Value;
  ClientDS.FieldByName('invoice_id'        ).Value := cxGrid1DBBandedTableView1invoice_id.DataBinding.Field.Value;
  ClientDS.FieldByName('bargain_id'        ).Value := null;
  ClientDS.FieldByName('comment'           ).Value := str_temp;
  ClientDS.Post;

  if DocsRun(ClientDS, usr_pwd, users_group_cod) = mrOk then
    RefreshQueryGrid(cxGrid1DBBandedTableView1, 'invoice_id');

  Q.Free;
  ClientDS.Free;
end;

procedure TfmClientInvoice.dxBarButton2Click(Sender: TObject);
begin
  fmPeriod := TfmPeriod.Create(Application, Fdate1, Fdate2, 3);
  if fmPeriod.ShowModal=mrOK then begin
    Screen.Cursor := crHourglass;
    Fdate1 := fmPeriod._GetMonth;
    Fdate2 := IncMonth(Fdate1, 1) - 1;
    dxBarSubItem1.Caption := FormatDateTime('mmmm yyyy', Fdate1);

    Query_ClientInvoice.Close;
    Query_ClientInvoice.Parameters.ParamByName('invoice_date1').Value := Fdate1;
    Query_ClientInvoice.Parameters.ParamByName('invoice_date2').Value := Fdate2;
    Query_ClientInvoice.Open;
    Screen.Cursor := crDefault;
  end;

end;

procedure TfmClientInvoice.dxBarButton3Click(Sender: TObject);
begin
  fmPeriod := TfmPeriod.Create(Application, Fdate1, Fdate2, 2);
  if fmPeriod.ShowModal=mrOK then begin
    Screen.Cursor := crHourglass;
    Fdate1 := fmPeriod._GetMonthBegin;
    Fdate2 := fmPeriod._GetMonthEnd;
    dxBarSubItem1.Caption := FormatDateTime('mmm yy', Fdate1) + ' - ' + FormatDateTime('mmm yy', Fdate2);

    Query_ClientInvoice.Close;
    Query_ClientInvoice.Parameters.ParamByName('invoice_date1').Value := Fdate1;
    Query_ClientInvoice.Parameters.ParamByName('invoice_date2').Value := Fdate2;
    Query_ClientInvoice.Open;
    Screen.Cursor := crDefault;
  end;
end;

procedure TfmClientInvoice.dxBarButton4Click(Sender: TObject);
begin
  cxPageControl1.Visible := dxBarButton4.Down;
  Splitter2.Visible := dxBarButton4.Down;

  cxGrid1DBBandedTableView1FocusedRecordChanged(cxGrid1DBBandedTableView1, cxGrid1DBBandedTableView1.Controller.FocusedRecord, cxGrid1DBBandedTableView1.Controller.FocusedRecord, True);
end;

procedure TfmClientInvoice.Excel2Click(Sender: TObject);
begin
  PrintcxGrid(cxGrid3DBBandedTableView1);
end;

procedure TfmClientInvoice.FormDestroy(Sender: TObject);
begin
  RestoreGroupedColumns(cxGrid1DBBandedTableView1);
  StoreRegistryGrid(rgSave,'\Software\Lis1\ClientInvoice_Grids', cxGrid1DBBandedTableView1);
  StoreRegistryGrid(rgSave,'\Software\Lis1\ClientInvoice_Grids', cxGrid2DBBandedTableView1);
  StoreRegistryGrid(rgSave,'\Software\Lis1\ClientInvoice_Grids', cxGrid3DBBandedTableView1);
  StoreRegistryGrid(rgSave,'\Software\Lis1\ClientInvoice_Grids', cxGrid5DBBandedTableView1);
end;

procedure TfmClientInvoice.cxGrid1DBBandedTableView1DataControllerFilterChanged(Sender: TObject);
begin
  DrawcxGridColumnOnFiltered(Sender);
end;

procedure TfmClientInvoice.cxGrid1DBBandedTableView1CustomDrawCell(Sender: TcxCustomGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
  if (AViewInfo.GridRecord.Values[cxGrid1DBBandedTableView1global_copy.Index]<>NULL)
      AND (AViewInfo.GridRecord.Values[cxGrid1DBBandedTableView1global_copy.Index]<>0) then ACanvas.Font.Color := clRed;
  if (AViewInfo.GridRecord.Values[cxGrid1DBBandedTableView1global_color.Index]<>NULL) then ACanvas.Brush.Color := AViewInfo.GridRecord.Values[cxGrid1DBBandedTableView1global_color.Index];

  if AViewInfo.GridRecord.Selected or AViewInfo.GridRecord.Focused then begin
    ACanvas.Brush.Color := clNavy;
    ACanvas.Font.Color := clWhite;
    if AViewInfo.Focused then ACanvas.Brush.Color := clBlue;
  end;
end;

procedure TfmClientInvoice.cxGrid1DBBandedTableView1CustomDrawColumnHeader(Sender: TcxGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxGridColumnHeaderViewInfo;  var ADone: Boolean);
begin
  DrawcxGridColumnOnFocused(Sender, ACanvas, AViewInfo);
end;

procedure TfmClientInvoice.N18Click(Sender: TObject);
begin
  PrintcxGrid(cxGrid1DBBandedTableView1);
end;

procedure TfmClientInvoice.N24Click(Sender: TObject);
begin
  SetRecordColor('invoice_id', cxGrid1DBBandedTableView1, 'INVOICE', Boolean(TMenuItem(Sender).Tag));
  RefreshQueryGrid(cxGrid1DBBandedTableView1, 'invoice_id', cxGrid1DBBandedTableView1invoice_id.DataBinding.Field.AsInteger);
end;

procedure TfmClientInvoice.SetUsers(users_id: integer);
var i : integer;
begin
  Factive_users_id := users_id;
  dxBarSubItem4Popup(nil);
  for i := 0 to dxBarSubItem4.ItemLinks.Count -1 do begin
    if dxBarSubItem4.ItemLinks.Items[i].Item.Tag = Factive_users_id then begin
      OnMenuUsersClick(dxBarSubItem4.ItemLinks.Items[i].Item);
    end;
  end;
end;

procedure TfmClientInvoice.OnMenuUsersClick(Sender:TObject);
begin
  Screen.Cursor := crHourglass;

  Query_ClientInvoice.Close;
  Query_ClientInvoice.Parameters.ParamByName('users_owner_id').Value := TdxBarItem(Sender).Tag;
  Query_ClientInvoice.Open;

  Caption := FCaption + ' (' + TdxBarItem(Sender).Caption + ')';

  Screen.Cursor := crDefault;
end;

procedure TfmClientInvoice.dxBarSubItem4Popup(Sender: TObject);
var   i, cnt : integer;
  bar_button : TdxBarButton;
           Q : TADOQuery;
begin
  Screen.Cursor := crHourglass;

  cnt := dxBarSubItem4.ItemLinks.Count;
  for i := 2 to cnt-1 do dxBarSubItem4.ItemLinks.Items[cnt-i+1].Destroy;

  Q := TADOQuery.Create(nil);
  Q.Connection := Fconnect;
  Q.SQL.Add('SELECT DISTINCT users_owner_id, FIO_users_owner FROM dbo.view_invoice_rights');
  Q.SQL.Add('WHERE invoice_date between ' + DateToSQL(Fdate1) + ' and ' + DateToSQL(Fdate2));
  Q.SQL.Add('AND type_invoice = ' + IntToStr(Ftype_invoice));
  Q.SQL.Add('ORDER BY FIO_users_owner');
  Q.Open;

  while not Q.Eof do begin
    bar_button := TdxBarButton.Create(nil);
    bar_button.ImageIndex := 39;
    bar_button.Caption    := Q.FieldByName('FIO_users_owner').AsString;
    bar_button.Tag        := Q.FieldByName('users_owner_id').AsInteger;
    bar_button.OnClick    := OnMenuUsersClick;
    with dxBarSubItem4.ItemLinks.Add do begin
      Index := 1 + Q.RecNo;
      Item := bar_button;
    end;
    Q.Next;
  end;

  Q.Free;
  Screen.Cursor := crDefault;
end;

procedure TfmClientInvoice.SetBargainId(bargain_id: integer);
var              Q : TADOQuery;
    str_invoice_id : string;
begin
  Q := TADOQuery.Create(nil);
  Q.Connection := Fconnect;

  // 1. Получим список счетов (ID)
  Q.Close;
  Q.SQL.Clear;
  Q.SQL.Add('SELECT invoice_id FROM invoice_bargain WHERE bargain_id = ' + IntToStr(bargain_id));
  Q.Open;
  str_invoice_id := '';
  while not Q.Eof do begin
    if str_invoice_id <> '' then str_invoice_id := str_invoice_id + ',';
    str_invoice_id := str_invoice_id + Q.FieldByName('invoice_id').AsString;
    Q.Next;
  end;

  // 2. Высчитаем диапазон дат
  if str_invoice_id <> '' then begin
    // Если счетов нет, то и даты не меняем, не пересчитываем лишний раз
    Q.Close;
    Q.SQL.Clear;
    Q.SQL.Add('SELECT min(invoice_date) as invoice_date1, max(invoice_date) as invoice_date2 FROM invoice WHERE invoice_id IN (' + str_invoice_id + ')');
    Q.Open;

    Fdate1 := DateUtils.StartOfTheMonth(Q.FieldByName('invoice_date1').AsDateTime);
    Fdate2 := DateUtils.EndOfTheMonth(Q.FieldByName('invoice_date2').AsDateTime);

    dxBarSubItem1.Caption := PeriodToStr(Fdate1, Fdate2, True);
    Self.Caption := FCaption + ' (Все)';

    Query_ClientInvoice.Close;
    Query_ClientInvoice.Parameters.ParamByName('invoice_date1').Value := Fdate1;
    Query_ClientInvoice.Parameters.ParamByName('invoice_date2').Value := Fdate2;
    Query_ClientInvoice.Parameters.ParamByName('users_owner_id').Value := -9; // Для всех пользователей
    Query_ClientInvoice.Open;
  end;

  // 3. Накладываем фильтр
  // Если счетов нет, то выставляем фильтр таким образом, чтобы ничего не отобразилось
  if str_invoice_id = '' then str_invoice_id := '-9';
  FiltercxGrid4ListID(cxGrid1DBBandedTableView1, 'invoice_id', str_invoice_id);

  Q.Free;

end;

procedure TfmClientInvoice.SetContractId(contract_id: integer);
var Q : TADOQuery;
begin
  Q := TADOQuery.Create(nil);
  Q.Connection := Fconnect;
  Q.SQL.Add('SELECT * FROM view_contract WHERE contract_id = ' + IntToStr(contract_id));
  Q.Open;

  cxGrid1DBBandedTableView1.DataController.Filter.Clear;
  cxGrid1DBBandedTableView1.DataController.Filter.Options := cxGrid1DBBandedTableView1.DataController.Filter.Options + [fcoCaseInsensitive];
  cxGrid1DBBandedTableView1.DataController.Filter.Root.BoolOperatorKind := fboAnd;

  cxGrid1DBBandedTableView1.DataController.Filter.Root.AddItem(cxGrid1DBBandedTableView1contract_cod, foLike, '%' + Q.FieldByName('contract_cod').AsString + '%', '[' + Q.FieldByName('contract_cod').AsString + ']');
  cxGrid1DBBandedTableView1.DataController.Filter.Active := True;

  Q.Free;
end;

{$REGION 'Фильтр по всем записям'}
procedure TfmClientInvoice.dxBarButton_FilterRecords1Click(Sender: TObject);
begin
  cxGrid1DBBandedTableView1.Filtering.ColumnFilteredItemsList := not dxBarButton_FilterRecords1.Down;
end;
{$ENDREGION 'Фильтр по всем записям'}

{$REGION 'Оплата счета'}


procedure TfmClientInvoice.N7Click(Sender: TObject);
var SP_pay_invoice_modify :  TADOStoredProc;
begin
  Screen.Cursor := crHourglass;

  SP_pay_invoice_modify := TADOStoredProc.Create(nil);
  SP_pay_invoice_modify.Connection := fmMain.Lis;
  SP_pay_invoice_modify.ProcedureName := 'sp_pay_invoice_modify;1';
  SP_pay_invoice_modify.Parameters.Refresh;

  SP_pay_invoice_modify.Parameters.ParamByName('@pay_inv_id'  ).Value := cxGrid3DBBandedTableView1pay_inv_id.DataBinding.Field.Value;
  SP_pay_invoice_modify.Parameters.ParamByName('@type_action' ).Value := 2;
  SP_pay_invoice_modify.ExecProc;
  SP_pay_invoice_modify.Free;

  RefreshQueryGrid(cxGrid1DBBandedTableView1, 'invoice_id', cxGrid1DBBandedTableView1invoice_id.DataBinding.Field.AsInteger);
  Screen.Cursor := crDefault;
end;


procedure TfmClientInvoice.dxBarButton14Click(Sender: TObject);
begin
  if VarIsNull(cxGrid1DBBandedTableView1invoice_id.DataBinding.Field.Value) then begin
    Application.MessageBox('Не выбран счет.','Ошибка',MB_OK);
    exit;
  end;

  fmPayInvoiceAdd := TfmPayInvoiceAdd.Create(Application, Ftype_invoice);
  fmPayInvoiceAdd._SetInsert := cxGrid1DBBandedTableView1invoice_id.DataBinding.Field.AsInteger;
  if fmPayInvoiceAdd.ShowModal = mrOk then
    RefreshQueryGrid(cxGrid1DBBandedTableView1, 'invoice_id', cxGrid1DBBandedTableView1invoice_id.DataBinding.Field.AsInteger);

end;

procedure TfmClientInvoice.N6Click(Sender: TObject);
begin
  if VarIsNull(cxGrid3DBBandedTableView1pay_inv_id.DataBinding.Field.Value) then begin
    exit;
  end;

  fmPayInvoiceAdd := TfmPayInvoiceAdd.Create(Application, Ftype_invoice);
  fmPayInvoiceAdd._SetUpdate := cxGrid3DBBandedTableView1pay_inv_id.DataBinding.Field.AsInteger;
  if fmPayInvoiceAdd.ShowModal = mrOk then
    RefreshQueryGrid(cxGrid1DBBandedTableView1, 'invoice_id', cxGrid1DBBandedTableView1invoice_id.DataBinding.Field.AsInteger);

end;

{$ENDREGION 'Оплата счета'}

procedure TfmClientInvoice.SetPeriod (date1, date2: TDate);
begin
    Fdate1 := date1;
    Fdate2 := date2;

    dxBarSubItem1.Caption := FormatDateTime('dd.mm.yy', Fdate1) + ' - ' + FormatDateTime('dd.mm.yy', Fdate2);

    Query_ClientInvoice.Close;
    Query_ClientInvoice.Parameters.ParamByName('invoice_date1').Value := Fdate1;
    Query_ClientInvoice.Parameters.ParamByName('invoice_date2').Value := Fdate2;
    Query_ClientInvoice.Parameters.ParamByName('users_owner_id').Value := -9;
    Query_ClientInvoice.Open;

    Caption := FCaption + ' (Все)';

    Screen.Cursor := crDefault;
end;

end.


