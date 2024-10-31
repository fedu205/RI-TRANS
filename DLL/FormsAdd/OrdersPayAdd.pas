unit OrdersPayAdd;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxContainer, cxEdit, cxDropDownEdit, cxCalendar, cxButtonEdit, cxTextEdit,
  cxMaskEdit, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, StdCtrls,
  ExtCtrls, Buttons, cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage,
  DB, cxDBData, DBClient, cxGridLevel, cxClasses, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid,
  cxCurrencyEdit, cxGridBandedTableView, cxGridDBBandedTableView, ADODB, cxPC,
  cxPropertiesStore, dxBar, cxGridCustomPopupMenu, cxGridPopupMenu, cxCheckBox,
  cxMemo, Default, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint,
  dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMetropolis,
  dxSkinMetropolisDark, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue,
  dxSkinOffice2010Silver, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray,
  dxSkinOffice2013White, dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic,
  dxSkinSharp, dxSkinSharpPlus, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinTheAsphaltWorld, dxSkinsDefaultPainters,
  dxSkinValentine, dxSkinVS2010, dxSkinWhiteprint, dxSkinXmas2008Blue,
  dxSkinscxPCPainter, dxBarBuiltInMenu, cxNavigator, ComCtrls, dxCore,
  cxDateUtils, dxSkinsdxBarPainter, dxSkinOffice2016Colorful,
  dxSkinOffice2016Dark, dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light,
  cxDataControllerConditionalFormattingRulesManagerDialog, dxSkinTheBezier, dxDateRanges;

type
  TfmOrdersPayAdd = class(TForm)
    Panel6: TPanel;
    Label18: TLabel;
    cxLookupComboBox1: TcxLookupComboBox;
    cxButtonEdit13: TcxButtonEdit;
    cxButtonEdit14: TcxButtonEdit;
    Panel5: TPanel;
    BitBtn2: TBitBtn;
    BitBtn1: TBitBtn;
    Panel1: TPanel;
    Client_Detail: TClientDataSet;
    DS_Detail: TDataSource;
    Client_Detailid: TAutoIncField;
    Client_Detailorders_pay_detail_id: TIntegerField;
    Client_Detailorders_pay_id: TIntegerField;
    Client_Detailcontract_id: TIntegerField;
    Client_Detailclient_contract_cod: TStringField;
    Client_Detailclient_contract_date_begin: TDateField;
    Client_Detailclient_firm_self_id: TIntegerField;
    Client_Detailclient_firm_customer_id: TIntegerField;
    Client_Detailclient_firm_self_name: TStringField;
    Client_Detailclient_firm_customer_name: TStringField;
    Client_Detaildetail_pay_sum: TCurrencyField;
    Query_Agent: TADOQuery;
    DS_Agent: TDataSource;
    cxPageControl1: TcxPageControl;
    cxTabSheet1: TcxTabSheet;
    cxGrid1: TcxGrid;
    cxGrid1DBBandedTableView1: TcxGridDBBandedTableView;
    cxGrid1DBBandedTableView1id: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1orders_pay_detail_id: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1orders_pay_id: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1contract_id: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1client_contract_cod: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1client_contract_date_begin: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1client_firm_self_id: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1client_firm_customer_id: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1client_firm_self_name: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1client_firm_customer_name: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1detail_pay_sum: TcxGridDBBandedColumn;
    cxGrid1Level1: TcxGridLevel;
    Query_Currency: TADOQuery;
    DS_Currency: TDataSource;
    Panel2: TPanel;
    cxLookupComboBox3: TcxLookupComboBox;
    cxCurrencyEdit1: TcxCurrencyEdit;
    cxDateEdit2: TcxDateEdit;
    Label3: TLabel;
    Label2: TLabel;
    Label1: TLabel;
    Label21: TLabel;
    cxDateEdit1: TcxDateEdit;
    cxTextEdit1: TcxTextEdit;
    cxPropertiesStore1: TcxPropertiesStore;
    dxBarManager1: TdxBarManager;
    dxBarPopupMenu1: TdxBarPopupMenu;
    dxBarButton1: TdxBarButton;
    dxBarButton2: TdxBarButton;
    dxBarButton3: TdxBarButton;
    dxBarButton4: TdxBarButton;
    Label4: TLabel;
    cxDateEdit3: TcxDateEdit;
    Client_Detailset_plan_balance: TBooleanField;
    cxGrid1DBBandedTableView1set_plan_balance: TcxGridDBBandedColumn;
    cxTabSheet3: TcxTabSheet;
    cxMemo1: TcxMemo;
    Label5: TLabel;
    cxCurrencyEdit2: TcxCurrencyEdit;
    Client_Detailpayment_sum: TCurrencyField;
    cxGrid1DBBandedTableView1payment_sum: TcxGridDBBandedColumn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn1Click(Sender: TObject);
    procedure cxDateEdit1PropertiesEditValueChanged(Sender: TObject);
    procedure cxButtonEdit13PropertiesButtonClick(Sender: TObject;AButtonIndex: Integer);
    procedure dxBarButton1Click(Sender: TObject);
    procedure cxGrid1DBBandedTableView1client_contract_date_beginPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure dxBarButton2Click(Sender: TObject);
    procedure cxDateEdit3PropertiesEditValueChanged(Sender: TObject);
    procedure Client_DetailAfterPost(DataSet: TDataSet);
    procedure cxLookupComboBox1PropertiesEditValueChanged(Sender: TObject);
    procedure cxGrid1DBBandedTableView1payment_sumPropertiesEditValueChanged(Sender: TObject);
    procedure cxGrid1DBBandedTableView1detail_pay_sumPropertiesEditValueChanged(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    Forders_pay_id : integer;
    Fcontract_id   : integer;
    Fusr_pwd       : PUser_pwd;
    Fconnect       : TADOConnection;
    Fstr_bargain_add_id : string;
    procedure SetUpdate(orders_pay_id: integer);
    procedure SetBargainAddId(str_bargain_add_id: string);
    procedure SetReadOnly(value: boolean);
  public
    constructor Create(AOwner: TApplication; connect: TADOConnection; usr_pwd: PUser_pwd); reintroduce;
  published
    property _SetUpdate       : integer write SetUpdate;
    property _GetOrdersPayId  : integer read  Forders_pay_id;
    property _SetBargainAddId : string  write SetBargainAddId;
    property _SetReadOnly     : boolean write SetReadOnly;
  end;

var
  fmOrdersPayAdd: TfmOrdersPayAdd;

function CreateWndOrdersPayAdd(AppHand: THandle; connect: TADOConnection; orders_pay_id: integer; usr_pwd: PUser_pwd): variant; export;
function CreateWndOrdersPayCreate(AppHand: THandle; connect: TADOConnection; str_bargain_add_id: string; usr_pwd: PUser_pwd): variant; export;


implementation

uses Raznoe, Contract;

{$R *.dfm}

{ TfmOrdersPayAdd }

function CreateWndOrdersPayCreate(AppHand: THandle; connect: TADOConnection; str_bargain_add_id: string; usr_pwd: PUser_pwd): variant; export;
begin
  Application.Handle := AppHand;
  try
    fmOrdersPayAdd := TfmOrdersPayAdd.Create(Application, connect, usr_pwd);
    fmOrdersPayAdd._SetBargainAddId := str_bargain_add_id;

    //-- изменить по мере необходимости возвращаемых параметров
    if  fmOrdersPayAdd.ShowModal = mrOk then result := VarArrayOf([fmOrdersPayAdd._GetOrdersPayId, ''])
    else result := VarArrayOf([-9, '']);
  finally
    fmOrdersPayAdd.Free;
  end;
end;

function CreateWndOrdersPayAdd(AppHand: THandle; connect: TADOConnection; orders_pay_id: integer; usr_pwd: PUser_pwd): variant; export;
begin
  Application.Handle := AppHand;
  try
    fmOrdersPayAdd := TfmOrdersPayAdd.Create(Application, connect, usr_pwd);
    if orders_pay_id <> -9 then fmOrdersPayAdd._SetUpdate := orders_pay_id;

    //-- изменить по мере необходимости возвращаемых параметров
    if  fmOrdersPayAdd.ShowModal = mrOk then result := VarArrayOf([fmOrdersPayAdd._GetOrdersPayId, ''])
    else result := VarArrayOf([-9, '']);
  finally
    fmOrdersPayAdd.Free;
  end;
end;


constructor TfmOrdersPayAdd.Create(AOwner: TApplication; connect: TADOConnection; usr_pwd: PUser_pwd);
begin
  Screen.Cursor := crHourglass;
  inherited Create(AOwner);

  Fconnect := connect;
  Query_Agent.Connection := Fconnect;
  Query_Currency.Connection := Fconnect;


  Fusr_pwd := usr_pwd;
  Forders_pay_id := -9;
  Fcontract_id   := -9;
  Fstr_bargain_add_id := '';
  Client_Detail.CreateDataSet;
  Client_Detail.LogChanges := False;

  cxDateEdit3.Date := Date;
  Query_Agent.Parameters.ParamByName('date_current').Value := cxDateEdit1.Date;
  Query_Agent.Open;

  Query_Currency.Open;
  Query_Currency.Locate('currency_id',3,[]);
  cxLookupComboBox3.EditValue := Query_Currency.FieldByName('currency_id').Value;

  StoreRegistryGrid(rgLoad, '\Software\Lis1\OrdersPayAdd_Grids', cxGrid1DBBandedTableView1);

  Screen.Cursor := crDefault;
end;

procedure TfmOrdersPayAdd.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TfmOrdersPayAdd.FormDestroy(Sender: TObject);
begin
  StoreRegistryGrid(rgSave, '\Software\Lis1\OrdersPayAdd_Grids', cxGrid1DBBandedTableView1);
end;

procedure TfmOrdersPayAdd.SetBargainAddId(str_bargain_add_id: string);
var Q: TADOQuery;
begin
  Screen.Cursor := crHourGlass;

  Fstr_bargain_add_id := str_bargain_add_id;

  Q := TADOQuery.Create(nil);
  Q.Connection := Fconnect;
  Q.SQL.Add('SELECT view_shp_bargain_add.contract_id,');
  Q.SQL.Add('SUM(view_shp_bargain_add.add_sum) as add_sum,');
  Q.SQL.Add('view_shp_bargain_add.currency_id,');
  Q.SQL.Add('view_shp_bargain.contract_id        as client_contract_id,');
  Q.SQL.Add('view_shp_bargain.contract_cod       as client_contract_cod,');
  Q.SQL.Add('view_shp_bargain.date_begin         as client_contract_date_begin,');
  Q.SQL.Add('view_shp_bargain.firm_self          as client_firm_self_id,');
  Q.SQL.Add('view_shp_bargain.firm_customer      as client_firm_customer_id,');
  Q.SQL.Add('view_shp_bargain.firm_self_name     as client_firm_self_name,');
  Q.SQL.Add('view_shp_bargain.firm_customer_name as client_firm_customer_name');
  Q.SQL.Add('FROM	  view_shp_bargain_add');
  Q.SQL.Add('       INNER JOIN view_shp_bargain ON view_shp_bargain_add.bargain_id = view_shp_bargain.bargain_id');
  Q.SQL.Add('WHERE  bargain_add_id in (' + Fstr_bargain_add_id + ')');
  Q.SQL.Add('GROUP BY	view_shp_bargain.contract_id, view_shp_bargain.contract_cod, view_shp_bargain.date_begin,');
	Q.SQL.Add('		      view_shp_bargain.firm_self, view_shp_bargain.firm_customer, view_shp_bargain.firm_self_name,');
	Q.SQL.Add('     		view_shp_bargain.firm_customer_name, view_shp_bargain_add.contract_id, view_shp_bargain_add.currency_id');
  Q.Open;

  Fcontract_id := Q.FieldByName('contract_id').AsInteger;
  cxLookupComboBox1.EditValue := Fcontract_id;
  cxLookupComboBox1.Properties.ReadOnly := True;
  cxLookupComboBox1.Style.Color := clBtnFace;
  cxLookupComboBox1.Style.Font.Style := [fsBold];

  cxLookupComboBox3.EditValue := Q.FieldByName('currency_id').AsInteger;

  Q.First;
  while not Q.Eof do begin
    Client_Detail.Append;
    Client_Detail.FieldByName('orders_pay_detail_id'       ).Value := null;
    Client_Detail.FieldByName('orders_pay_id'              ).Value := null;
    Client_Detail.FieldByName('contract_id'                ).Value := Q.FieldByName('client_contract_id').Value;
    Client_Detail.FieldByName('client_contract_cod'        ).Value := Q.FieldByName('client_contract_cod').Value;
    Client_Detail.FieldByName('client_contract_date_begin' ).Value := Q.FieldByName('client_contract_date_begin').Value;
    Client_Detail.FieldByName('client_firm_self_id'        ).Value := Q.FieldByName('client_firm_self_id').Value;
    Client_Detail.FieldByName('client_firm_customer_id'    ).Value := Q.FieldByName('client_firm_customer_id').Value;
    Client_Detail.FieldByName('client_firm_self_name'      ).Value := Q.FieldByName('client_firm_self_name').Value;
    Client_Detail.FieldByName('client_firm_customer_name'  ).Value := Q.FieldByName('client_firm_customer_name').Value;
    Client_Detail.FieldByName('detail_pay_sum'             ).Value := Q.FieldByName('add_sum').Value;
    Client_Detail.FieldByName('set_plan_balance'           ).Value := False;
    Client_Detail.FieldByName('payment_sum'                ).Value := null;
    Client_Detail.Post;
    Q.Next;
  end;
  Q.Free;

  Screen.Cursor := crDefault;
end;

procedure TfmOrdersPayAdd.SetUpdate(orders_pay_id: integer);
var Q : TADOQuery;
begin
  Screen.Cursor := crHourGlass;

  Forders_pay_id := orders_pay_id;
  Q := TADOQuery.Create(nil);
  Q.Connection := Fconnect;
  Q.SQL.Add('SELECT * FROM view_orders_pay WHERE orders_pay_id = ' + IntToStr(Forders_pay_id));
  Q.Open;

  cxDateEdit1.EditValue := Q.FieldByName('orders_pay_date').Value;
  Fcontract_id := Q.FieldByName('contract_id').AsInteger;
  if not Query_Agent.Locate('contract_id', Fcontract_id, []) then begin
    Application.MessageBox('Договор прекратил своё действие!', 'Внимание', MB_OK);
    cxLookupComboBox1.EditValue := null;
    Fcontract_id := -9;
  end else
    cxLookupComboBox1.EditValue := Fcontract_id;

  cxCurrencyEdit1.EditValue := Q.FieldByName('orders_pay_sum').Value;
  cxCurrencyEdit2.EditValue := Q.FieldByName('orders_payment_sum').Value;
  cxLookupComboBox3.EditValue := Q.FieldByName('currency_id').Value;
  cxTextEdit1.EditValue := Q.FieldByName('invoice_cod').Value;
  cxDateEdit2.EditValue := Q.FieldByName('invoce_date').Value;
  cxDateEdit3.EditValue := Q.FieldByName('orders_date').Value;
  cxMemo1.EditValue := Q.FieldByName('orders_pay_comment').Value;


  Q.Close;
  Q.SQL.Clear;
  Q.SQL.Add('SELECT * FROM view_orders_pay_detail WHERE orders_pay_id = ' + IntToStr(Forders_pay_id));
  Q.Open;

  while not Q.Eof do begin
    Client_Detail.Append;
    Client_Detail.FieldByName('orders_pay_detail_id').Value := Q.FieldByName('orders_pay_detail_id').Value;
    Client_Detail.FieldByName('orders_pay_id').Value := Q.FieldByName('orders_pay_id').Value;
    Client_Detail.FieldByName('contract_id').Value := Q.FieldByName('contract_id').Value;
    Client_Detail.FieldByName('client_contract_cod').Value := Q.FieldByName('client_contract_cod').Value;
    Client_Detail.FieldByName('client_contract_date_begin').Value := Q.FieldByName('client_contract_date_begin').Value;
    Client_Detail.FieldByName('client_firm_self_id').Value := Q.FieldByName('client_firm_self_id').Value;
    Client_Detail.FieldByName('client_firm_customer_id').Value := Q.FieldByName('client_firm_customer_id').Value;
    Client_Detail.FieldByName('client_firm_self_name').Value := Q.FieldByName('client_firm_self_name').Value;
    Client_Detail.FieldByName('client_firm_customer_name').Value := Q.FieldByName('client_firm_customer_name').Value;
    Client_Detail.FieldByName('detail_pay_sum').Value := Q.FieldByName('detail_pay_sum').Value;
    Client_Detail.FieldByName('set_plan_balance').Value := Q.FieldByName('set_plan_balance').Value;
    Client_Detail.FieldByName('payment_sum').Value := Q.FieldByName('payment_sum').Value;
    Client_Detail.Post;
    Q.Next;
  end;

  Q.Free;

  Screen.Cursor := crDefault;
end;

procedure TfmOrdersPayAdd.cxButtonEdit13PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  fmContract := TfmContract.CreateDLL(Application, True, 1, Fusr_pwd, Fusr_pwd);
  if cxLookupComboBox1.EditValue <> null then fmContract._SetContractId := cxLookupComboBox1.EditValue;

  if fmContract.ShowModal=mrOk then begin
    Query_Agent.Close;
    Query_Agent.Open;
    if Query_Agent.Locate('contract_id', fmContract._GetContractId, []) then cxLookupComboBox1.EditValue := fmContract._GetContractId
    else begin
      Application.MessageBox('Выбранный договор в этом периоде не действует!', 'Внимание', MB_OK);
      cxLookupComboBox1.EditValue := null;
    end;
  end;

end;

procedure TfmOrdersPayAdd.cxDateEdit1PropertiesEditValueChanged(Sender: TObject);
var  contract_num : string;
                Q : TADOQuery;
begin
  Screen.Cursor := crHourGlass;
  contract_num := cxButtonEdit14.Text;

  Query_Agent.Close;
  Query_Agent.Parameters.ParamByName('date_current').Value := cxDateEdit1.EditValue;
  Query_Agent.Open;

  if Query_Agent.Locate('contract_id', Fcontract_id, []) then begin
    cxLookupComboBox1.EditValue := Query_Agent.FieldByName('contract_id').Value;
  end else begin
    if Fcontract_id <> -9 then
      Application.MessageBox(PChar('Договор №' + contract_num + ' прекратил своё действие!'), 'Внимание', MB_OK);
    cxLookupComboBox1.EditValue := null;
  end;

  Q := TADOQuery.Create(nil);
  Q.Connection := Fconnect;
  Client_Detail.First;
  while not Client_Detail.Eof do begin
    Q.SQL.Clear;
    Q.SQL.Add('SELECT * FROM view_contract WHERE type_contract=0 AND contract_id = ' + IntToStr(Client_Detail.FieldByName('contract_id').AsInteger));
    Q.SQL.Add('AND ' + DateToSQL(cxDateEdit1.EditValue) + '  BETWEEN (date_begin - (day(date_begin) - 1)) AND (dateadd(mm, 1, date_end) - day(dateadd(mm, 1, date_end)))');
    Q.Open;
    if Q.RecordCount = 0 then begin
      Application.MessageBox(PChar('Договор №' + Client_Detail.FieldByName('client_contract_cod').AsString + ' прекратил своё действие!'), 'Внимание', MB_OK);
      Client_Detail.Edit;
      Client_Detail.FieldByName('contract_id').Value := null;
      Client_Detail.FieldByName('client_contract_cod').Value := null;
      Client_Detail.FieldByName('client_contract_date_begin').Value := null;
      Client_Detail.FieldByName('client_firm_self_id').Value := null;
      Client_Detail.FieldByName('client_firm_customer_id').Value := null;
      Client_Detail.FieldByName('client_firm_self_name').Value := null;
      Client_Detail.FieldByName('client_firm_customer_name').Value := null;
      Client_Detail.Post;
    end;
    Client_Detail.Next;
  end;
  Q.Free;
  Screen.Cursor := crDefault;
end;


procedure TfmOrdersPayAdd.cxDateEdit3PropertiesEditValueChanged(Sender: TObject);
begin
  cxDateEdit1.EditValue := cxDateEdit3.EditValue;
end;

procedure TfmOrdersPayAdd.cxGrid1DBBandedTableView1client_contract_date_beginPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
var Q : TADOQuery;
begin
  fmContract := TfmContract.CreateDLL(Application, True, 0, Fusr_pwd, Fusr_pwd);
  if fmContract.ShowModal=mrOk then begin
    Q := TADOQuery.Create(nil);
    Q.Connection := Fconnect;
    Q.SQL.Add('SELECT * FROM view_contract WHERE type_contract=0 AND contract_id = ' + IntToStr(fmContract._GetContractId));
    Q.SQL.Add('AND ' + DateToSQL(cxDateEdit1.EditValue) + '  BETWEEN (date_begin - (day(date_begin) - 1)) AND (dateadd(mm, 1, date_end) - day(dateadd(mm, 1, date_end)))');
    Q.Open;

    if Q.RecordCount > 0 then begin
      Client_Detail.Edit;
      Client_Detail.FieldByName('contract_id').Value := Q.FieldByName('contract_id').Value;
      Client_Detail.FieldByName('client_contract_cod').Value := Q.FieldByName('contract_cod').Value;
      Client_Detail.FieldByName('client_contract_date_begin').Value := Q.FieldByName('date_begin').Value;
      Client_Detail.FieldByName('client_firm_self_id').Value := Q.FieldByName('firm_self').Value;
      Client_Detail.FieldByName('client_firm_customer_id').Value := Q.FieldByName('firm_customer').Value;
      Client_Detail.FieldByName('client_firm_self_name').Value := Q.FieldByName('firm_self_name').Value;
      Client_Detail.FieldByName('client_firm_customer_name').Value := Q.FieldByName('firm_customer_name').Value;
      Client_Detail.Post;
    end else begin
      Application.MessageBox('Выбранный договор в этом периоде не действует!', 'Внимание', MB_OK);
      Client_Detail.Edit;
      Client_Detail.FieldByName('contract_id').Value := null;
      Client_Detail.FieldByName('client_contract_cod').Value := null;
      Client_Detail.FieldByName('client_contract_date_begin').Value := null;
      Client_Detail.FieldByName('client_firm_self_id').Value := null;
      Client_Detail.FieldByName('client_firm_customer_id').Value := null;
      Client_Detail.FieldByName('client_firm_self_name').Value := null;
      Client_Detail.FieldByName('client_firm_customer_name').Value := null;
      Client_Detail.Post;
    end;
    Q.Free;
  end;
end;

procedure TfmOrdersPayAdd.cxGrid1DBBandedTableView1detail_pay_sumPropertiesEditValueChanged(Sender: TObject);
begin
  if Client_Detail.State = dsEdit then Client_Detail.Post;
end;

procedure TfmOrdersPayAdd.cxGrid1DBBandedTableView1payment_sumPropertiesEditValueChanged(Sender: TObject);
begin
  if Client_Detail.State = dsEdit then Client_Detail.Post;
end;

procedure TfmOrdersPayAdd.cxLookupComboBox1PropertiesEditValueChanged(
  Sender: TObject);
begin
  cxButtonEdit13.Text := '';
  cxButtonEdit14.Text := '';

  if Query_Agent.Active then begin
    Fcontract_id := iif(cxLookupComboBox1.EditValue = null, -9, cxLookupComboBox1.EditValue);

    if Query_Agent.Locate('contract_id', Fcontract_id, []) then begin
      cxButtonEdit13.Text         := Query_Agent.FieldByName('firm_self_name').AsString;
      cxButtonEdit14.Text         := Query_Agent.FieldByName('contract_cod'  ).AsString;
    end;
  end;
end;

procedure TfmOrdersPayAdd.dxBarButton1Click(Sender: TObject);
begin
  Client_Detail.Append;
  Client_Detail.FieldByName('set_plan_balance').Value := False;
  Client_Detail.Post;
end;

procedure TfmOrdersPayAdd.dxBarButton2Click(Sender: TObject);
begin
  Client_Detail.Delete;
end;

procedure TfmOrdersPayAdd.BitBtn1Click(Sender: TObject);
var SP_orders_pay_modify : TADOStoredProc;
begin
  if Client_Detail.State in [dsInsert,dsEdit] then
    Client_Detail.Post;

  ModalResult := mrOk;
  if cxDateEdit1.EditValue = null  then begin
    Application.MessageBox('Выберите дату планируемой оплаты!', 'Внимание', MB_ICONWARNING or MB_OK);
    ModalResult := mrNone;
    Exit;
  end;

  Fcontract_id := iif(cxLookupComboBox1.EditValue = null, -9, cxLookupComboBox1.EditValue);

  if Fcontract_id = -9 then begin
    Application.MessageBox('Выберите договор!', 'Внимание', MB_ICONWARNING or MB_OK);
    ModalResult := mrNone;
    Exit;
  end;

  Client_Detail.First;
  while not Client_Detail.Eof do begin
    if Client_Detail.FieldByName('contract_id').IsNull then begin
      Application.MessageBox('Выберите договор клиента!', 'Внимание', MB_ICONWARNING or MB_OK);
      ModalResult := mrNone;
      Exit;
    end;
    Client_Detail.Next;
  end;

  SP_orders_pay_modify := TADOStoredProc.Create(nil);
  SP_orders_pay_modify.Connection := Fconnect;
  SP_orders_pay_modify.ProcedureName := 'sp_orders_pay_modify';
  SP_orders_pay_modify.Parameters.Refresh;

  SP_orders_pay_modify.Parameters.ParamByName('@orders_pay_id'         ).Value := iif(Forders_pay_id = -9, null, Forders_pay_id);
  SP_orders_pay_modify.Parameters.ParamByName('@type_action'           ).Value := iif(Forders_pay_id = -9, 0, 1);
  SP_orders_pay_modify.Parameters.ParamByName('@contract_id'           ).Value := cxLookupComboBox1.EditValue;
  SP_orders_pay_modify.Parameters.ParamByName('@orders_pay_sum'        ).Value := cxCurrencyEdit1.EditValue;
  SP_orders_pay_modify.Parameters.ParamByName('@orders_payment_sum'    ).Value := cxCurrencyEdit2.EditValue;
  SP_orders_pay_modify.Parameters.ParamByName('@orders_pay_date'       ).Value := cxDateEdit1.EditValue;
  SP_orders_pay_modify.Parameters.ParamByName('@currency_id'           ).Value := cxLookupComboBox3.EditValue;
  SP_orders_pay_modify.Parameters.ParamByName('@invoice_cod'           ).Value := cxTextEdit1.EditValue;
  SP_orders_pay_modify.Parameters.ParamByName('@invoce_date'           ).Value := cxDateEdit2.EditValue;
  SP_orders_pay_modify.Parameters.ParamByName('@orders_date'           ).Value := cxDateEdit3.EditValue;
  SP_orders_pay_modify.Parameters.ParamByName('@orders_pay_comment'    ).Value := cxMemo1.EditValue;
  SP_orders_pay_modify.Parameters.ParamByName('@orders_pay_detail_xml' ).Value := DataXMLToSQL(Client_Detail);
  SP_orders_pay_modify.Parameters.ParamByName('@str_bargain_add_id'    ).Value := Fstr_bargain_add_id;

  try
    SP_orders_pay_modify.ExecProc;
    Forders_pay_id := SP_orders_pay_modify.Parameters.ParamByName('@orders_pay_id').Value;
  except
  end;
  SP_orders_pay_modify.Free;
end;

procedure TfmOrdersPayAdd.Client_DetailAfterPost(DataSet: TDataSet);
var i : integer;
    itogo1 : real;
    itogo2 : real;
begin
  i := cxGrid1DBBandedTableView1id.DataBinding.Field.AsInteger;
  cxGrid1DBBandedTableView1.BeginUpdate;
  Client_Detail.First;
  itogo1 := 0;
  itogo2 := 0;
  while not Client_Detail.Eof do begin
    itogo1 := itogo1 + Client_Detail.FieldByName('detail_pay_sum').AsCurrency;
    itogo2 := itogo2 + Client_Detail.FieldByName('payment_sum').AsCurrency;
    Client_Detail.Next;
  end;
  cxGrid1DBBandedTableView1.EndUpdate;
  Client_Detail.Locate('id', i, [loCaseInsensitive]);
  cxCurrencyEdit1.EditValue := itogo1;
  cxCurrencyEdit2.EditValue := itogo2;
end;

procedure TfmOrdersPayAdd.SetReadOnly(value: boolean);
begin
  if value = True then begin
    BitBtn1.Visible := False;
  end;
end;


end.
