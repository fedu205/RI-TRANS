unit Pay;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ExtCtrls, ComCtrls, ToolWin, Db, ADODB, Variants, DateUtils,
  cxPropertiesStore, cxClasses, cxControls, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridBandedTableView,
  cxGridDBBandedTableView, cxGridLevel, cxGrid, Buttons, Menus, cxGraphics,
  cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, cxDBData,
  cxCalendar, cxCurrencyEdit, cxContainer, cxLabel, cxCheckBox, StrUtils,
  cxLookAndFeelPainters,   cxButtons, cxPC, dxGDIPlusClasses, dxBar,
  cxLookAndFeels, ComObj, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMetropolis, dxSkinMetropolisDark, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue,
  dxSkinOffice2010Silver, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic,
  dxSkinSharp, dxSkinSharpPlus, dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008, dxSkinTheAsphaltWorld, dxSkinsDefaultPainters,
  dxSkinValentine, dxSkinVS2010, dxSkinWhiteprint, dxSkinXmas2008Blue, dxSkinscxPCPainter, cxNavigator, dxSkinsdxBarPainter,
  dxSkinOffice2016Colorful, dxSkinOffice2016Dark, dxSkinVisualStudio2013Blue,
  dxSkinVisualStudio2013Dark, dxSkinVisualStudio2013Light, cxDataControllerConditionalFormattingRulesManagerDialog, dxDateRanges, dxSkinTheBezier,
  dxSkinOffice2019Colorful, dxScrollbarAnnotations;

type
  TfmPay = class(TForm)
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    cxGrid1DBBandedTableView1: TcxGridDBBandedTableView;
    cxPropertiesStore1: TcxPropertiesStore;
    Query_Pay: TADOQuery;
    DS_Pay: TDataSource;
    cxGrid1DBBandedTableView1pay_id: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1pay_date: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1pay_note: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1contract_cod: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1type_contract: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1firm_self_name: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1firm_customer_name: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1pay_sum: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1brief_name: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1pay_num: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1pay_cod: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1first_pay: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1type_pay: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1FIO_users: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1global_color: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1contract_id: TcxGridDBBandedColumn;
    Query_1c: TADOQuery;
    cxGrid1DBBandedTableView1nds_sum: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1type_nds_name: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1incomming_cod: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1set_return: TcxGridDBBandedColumn;
    dxBarManager1: TdxBarManager;
    dxBarManager1Bar1: TdxBar;
    dxBarSubItem1: TdxBarSubItem;
    dxBarButton2: TdxBarButton;
    dxBarButton3: TdxBarButton;
    Popup_Pay: TdxBarPopupMenu;
    N1: TdxBarButton;
    N2: TdxBarButton;
    N3: TdxBarButton;
    N14: TdxBarButton;
    Excel2: TdxBarButton;
    N7: TdxBarButton;
    N8: TdxBarButton;
    N10: TdxBarButton;
    N11: TdxBarButton;
    N4: TdxBarSubItem;
    dxBarButton1: TdxBarButton;
    dxBarButton4: TdxBarButton;
    dxBarButton5: TdxBarButton;
    dxBarButton6: TdxBarButton;
    cxGrid1DBBandedTableView1exchange_USD_val: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1exchange_EUR_val: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1exchange_CHF_val: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1set_plan: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1pay_rest: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1pay_sum_inv: TcxGridDBBandedColumn;
    GroupBox1: TGroupBox;
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
    Splitter2: TSplitter;
    dxBarButton7: TdxBarButton;
    DS_Pay_Invoice: TDataSource;
    Query_Pay_Invoice: TADOQuery;
    Popup_Pay_Invoice: TdxBarPopupMenu;
    dxBarSubItem2: TdxBarSubItem;
    dxBarButton_FilterRecords1: TdxBarButton;
    dxBarButton_FilterRecords2: TdxBarButton;
    dxBarSubItem3: TdxBarSubItem;
    dxBarButton11: TdxBarButton;
    cxGrid1DBBandedTableView1pay_comment: TcxGridDBBandedColumn;
    dxBarButton12: TdxBarButton;
    dxBarButton13: TdxBarButton;
    cxGrid1DBBandedTableView1exchange_CNY_val: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1set_load_1C: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1date_enter: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1firm_self: TcxGridDBBandedColumn;
    dxBarButton14: TdxBarButton;
    dxBarSubItem4: TdxBarSubItem;
    dxBarButton15: TdxBarButton;
    procedure dxBarButton2Click(Sender: TObject);
    procedure ToolButton18Click(Sender: TObject);
    procedure cxGrid1DBBandedTableView1KeyPress(Sender: TObject; var Key: Char);
    procedure ToolButton12Click(Sender: TObject);
    procedure cxGrid1DBBandedTableView1FocusedItemChanged(Sender: TcxCustomGridTableView; APrevFocusedItem, AFocusedItem: TcxCustomGridTableItem);
    procedure cxGrid1DBBandedTableView1CustomDrawColumnHeader(Sender: TcxGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxGridColumnHeaderViewInfo; var ADone: Boolean);
    procedure cxGrid1DBBandedTableView1DataControllerFilterChanged( Sender: TObject);
    procedure N14Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure N3Click(Sender: TObject);
    procedure N1Click(Sender: TObject);
    procedure N2Click(Sender: TObject);
    procedure N10Click(Sender: TObject);
    procedure cxGrid1DBBandedTableView1CustomDrawCell(Sender: TcxCustomGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
    procedure N7Click(Sender: TObject);
    procedure N11Click(Sender: TObject);
    procedure ToolButton16Click(Sender: TObject);
    procedure Excel1Click(Sender: TObject);
    procedure dxBarButton4Click(Sender: TObject);
    procedure dxBarButton7Click(Sender: TObject);
    procedure cxGrid1DBBandedTableView2FocusedRecordChanged(Sender: TcxCustomGridTableView; APrevFocusedRecord, AFocusedRecord: TcxCustomGridRecord; ANewItemRecordFocusingChanged: Boolean);
    procedure dxBarButton_FilterRecords1Click(Sender: TObject);
    procedure dxBarButton_FilterRecords2Click(Sender: TObject);
    procedure dxBarButton11Click(Sender: TObject);
    procedure dxBarButton13Click(Sender: TObject);
    procedure dxBarButton14Click(Sender: TObject);
    procedure dxBarButton15Click(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    Fdate1, Fdate2 : TDateTime;
    Fpay_id     : integer;
    Ftype_pay   : byte;

    function GetContractID   : integer;
    function GetFirmSelfID   : integer;
    function GetStrPayID     : string;
  public
    constructor Create(AOwner : Tapplication; type_pay: byte; flag: boolean);

    procedure _SetFilterPay(date_from, date_to: TDate; str_pays_id: string; contract_id: integer);
  published
    procedure SetPeriodCreate (date1, date2: TDate);

    property _GetPayId      : integer read Fpay_id;
    property _GetTypePay    : byte    read Ftype_pay;
    property _GetContractID : integer read GetContractID;
    property _GetFirmSelfID : integer read GetFirmSelfID;
    property _GetStrPayID   : string  read GetStrPayID;
  end;

var
  fmPay: TfmPay;

implementation
   uses Main, Period, Raznoe, PayAdd, Other, cxGridDBDataDefinitions, Default, Filter;
{$R *.DFM}

constructor TfmPay.Create(AOwner: Tapplication; type_pay: byte; flag: boolean);
begin
// type_pay   0-client, 1-agent, 2-rashod client

  Screen.Cursor := crHourglass;
  inherited Create(AOwner);
  Ftype_pay := type_pay;

  dxBarSubItem1.Caption := StoreRegistryDate(rgLoad, '\Software\Lis1\DateTime\Pay', Fdate1, Fdate2);

  case Ftype_pay of
    0 : Caption := 'Платежи клиентов';
    1 : Caption := 'Платежи подрядчиков';
    2 : Caption := 'Накладные расходы клиентов';
    3 : Caption := 'Платежи администрации';
  end;

  Query_Pay.Parameters.ParamByName('type_pay').Value := Ftype_pay;
  Query_Pay.Parameters.ParamByName('date1').Value := Fdate1;
  Query_Pay.Parameters.ParamByName('date2').Value := Fdate2;
  Query_Pay.Open;

  if flag then begin
    FormStyle := fsNormal;
    dxBarButton4.Visible := ivAlways;
    cxGrid1DBBandedTableView1.OnDblClick := dxBarButton4Click;
  end else begin
    FormStyle := fsMDIChild;
    WindowState := wsMaximized;
  end;

  StoreRegistryGrid(rgLoad,'\Software\Lis1\Pay_Grids', cxGrid1DBBandedTableView1);
  StoreRegistryGrid(rgLoad,'\Software\Lis1\Pay_Grids', cxGrid3DBBandedTableView1);

  SetUsersModuleRights(self, fmMain.Lis);
  MonitorEventFormOpen('OPEN_FORM', self.Name, fmMain.Lis, -9);

  Screen.Cursor := crDefault;
end;


procedure TfmPay.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TfmPay.FormDestroy(Sender: TObject);
begin
  StoreRegistryDate(rgSave, '\Software\Lis1\DateTime\Pay', Fdate1, Fdate2);
  StoreRegistryGrid(rgSave, '\Software\Lis1\Pay_Grids', cxGrid1DBBandedTableView1);
end;

procedure TfmPay._SetFilterPay(date_from, date_to: TDate; str_pays_id: string; contract_id: integer);
var
  Query        : TADOQuery;
  i            : integer;
  str_find_pay : string;
begin
  Screen.Cursor := crHourglass;

  if str_pays_id <> '' then begin
    // передан список платежей, пересчитываем параметры дат
    Query := TADOQuery.Create(nil);
    Query.Connection := fmMain.Lis;
    Query.SQL.Add('SELECT min(pay_date) as date_from, max(pay_date) as date_to FROM pay WHERE pay_id in (' + str_pays_id + ')');
    Query.Open;
    date_from := StartOfTheMonth(Query.FieldByName('date_from').AsDateTime);
    date_to   := EndOfTheMonth(Query.FieldByName('date_to').AsDateTime);
    Query.Free;
  end;

  Fdate1 := date_from;
  Fdate2 := date_to;

  dxBarSubItem1.Caption := FormatDateTime('mmm yy', Fdate1) + ' - ' + FormatDateTime('mmm yy', Fdate2);

  Query_Pay.Close;
  Query_Pay.Parameters.ParamByName('date1').Value := Fdate1;
  Query_Pay.Parameters.ParamByName('date2').Value := Fdate2;
  Query_Pay.Open;

  if contract_id <> -9 then begin
    // Создаем фильтр по номеру записи договора
    with cxGrid1DBBandedTableView1.DataController.Filter do begin
      Clear;
      Options := Options + [fcoCaseInsensitive];
      Root.BoolOperatorKind := fboAnd;
      Root.AddItem(cxGrid1DBBandedTableView1contract_id, foEqual, contract_id, IntToStr(contract_id));
      Active := True;
    end;
  end;

  if str_pays_id <> '' then begin
    cxGrid1DBBandedTableView1.Controller.ClearSelection;
    // передан список платежей, выделяем
    for i := 0 to cxGrid1DBBandedTableView1.ViewData.RowCount - 1 do begin
      str_find_pay := ',' + VarToStr(cxGrid1DBBandedTableView1.ViewData.Rows[i].Values[cxGrid1DBBandedTableView1pay_id.Index]) + ',';
      // на первый платеж в списке фокусируемся, т.к. может так получиться,
      // что платеж сфокусируемый по умолчанию, не входит в список,
      // а по окраске строки его будет нельзя отличить от выделенных
      // и визуально будет казаться, что выделено (напимер) 2 платежа, хотя реально выбран только 1
      if Pos(str_find_pay, ',' + str_pays_id + ',') = 1 then
        cxGrid1DBBandedTableView1.ViewData.Rows[i].Focused := True;
      if Pos(str_find_pay, ',' + str_pays_id + ',') > 0 then
        cxGrid1DBBandedTableView1.ViewData.Rows[i].Selected := True;
    end;
  end;

  Screen.Cursor := crDefault;
end;

function TfmPay.GetContractID   : integer;
begin
  if cxGrid1DBBandedTableView1.Controller.SelectedRowCount > 0 then
    Result := cxGrid1DBBandedTableView1.Controller.SelectedRows[0].Values[cxGrid1DBBandedTableView1contract_id.Index]
  else
    Result := cxGrid1DBBandedTableView1contract_id.DataBinding.Field.AsInteger;
end;

function TfmPay.GetFirmSelfID : integer;
begin
  if cxGrid1DBBandedTableView1.Controller.SelectedRowCount > 0 then
    Result := cxGrid1DBBandedTableView1.Controller.SelectedRows[0].Values[cxGrid1DBBandedTableView1firm_self.Index]
  else
    Result := cxGrid1DBBandedTableView1firm_self.DataBinding.Field.AsInteger;
end;

function TfmPay.GetStrPayID : string;
begin
  Result := cx_GetSelectedValues(cxGrid1, 'pay_id');
end;

procedure TfmPay.N1Click(Sender: TObject);
begin
  fmPayAdd := TfmPayAdd.Create(Application, Ftype_pay, True, False);
  fmPayAdd._SetInsert;
  if fmPayAdd.ShowModal = mrOk then RefreshQueryGrid(cxGrid1DBBandedTableView1, 'pay_id', fmPayAdd._GetPayId);
end;

procedure TfmPay.N2Click(Sender: TObject);
begin
  fmPayAdd := TfmPayAdd.Create(Application, Ftype_pay, False, False);
  fmPayAdd._SetUpdate := cxGrid1DBBandedTableView1.GetColumnByFieldName('pay_id').DataBinding.Field.AsInteger;
  if fmPayAdd.ShowModal = mrOk then
    RefreshQueryGrid(cxGrid1DBBandedTableView1, 'pay_id');
end;

procedure TfmPay.N3Click(Sender: TObject);
var          i : integer;
  SP_PayDelete : TADOStoredProc;
begin
  if Application.MessageBox('Вы уверены, что хотите удалить платёж?', 'Внимание', MB_OKCANCEL) = IDOK then begin
    Screen.Cursor := crHourglass;

    SP_PayDelete := TADOStoredProc.Create(nil);
    SP_PayDelete.Connection := fmMain.Lis;
    SP_PayDelete.ProcedureName := 'sp_pay_modify;1';
    SP_PayDelete.Parameters.Refresh;

    for i := 0 to cxGrid1DBBandedTableView1.Controller.SelectedRowCount - 1 do begin
      SP_PayDelete.Close;
      SP_PayDelete.Parameters.ParamByName('@type_action').Value := 2;
      SP_PayDelete.Parameters.ParamByName('@pay_id').Value := cxGrid1DBBandedTableView1.Controller.SelectedRows[i].Values[cxGrid1DBBandedTableView1.GetColumnByFieldName('pay_id').Index];
      try
        SP_PayDelete.ExecProc;
      except
      end;

      ShowTextMessage('Осталось '+IntToStr(cxGrid1DBBandedTableView1.Controller.SelectedRowCount - i)+' строк...', False);
    end;
    RefreshQueryGrid(cxGrid1DBBandedTableView1, 'pay_id');
    SP_PayDelete.Free;

    ShowTextMessage;
    
    Screen.Cursor := crDefault;
  end;
end;

procedure TfmPay.N10Click(Sender: TObject);
begin
  case TdxBarButton(Sender).ClickItemLink.Owner.Owner.Tag of
    1 : SetdxDBGridColumns(cxGrid1DBBandedTableView1);
    3 : SetdxDBGridColumns(cxGrid1DBBandedTableView1);
  end;
end;

procedure TfmPay.cxGrid1DBBandedTableView1CustomDrawCell(Sender: TcxCustomGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
  if (AViewInfo.GridRecord.Values[cxGrid1DBBandedTableView1.GetColumnByFieldName('global_color').Index]<>NULL) then
    ACanvas.Brush.Color := AViewInfo.GridRecord.Values[cxGrid1DBBandedTableView1.GetColumnByFieldName('global_color').Index];

  if AViewInfo.GridRecord.Selected then begin
    ACanvas.Brush.Color := clNavy;
    ACanvas.Font.Color := clWhite;
    if AViewInfo.Focused then ACanvas.Brush.Color := clBlue;
  end;
end;

procedure TfmPay.cxGrid1DBBandedTableView1CustomDrawColumnHeader(Sender: TcxGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxGridColumnHeaderViewInfo; var ADone: Boolean);
begin
  DrawcxGridColumnOnFocused(Sender, ACanvas, AViewInfo);
end;

procedure TfmPay.cxGrid1DBBandedTableView1DataControllerFilterChanged(Sender: TObject);
begin
  DrawcxGridColumnOnFiltered(Sender);
end;

procedure TfmPay.cxGrid1DBBandedTableView1FocusedItemChanged(Sender: TcxCustomGridTableView; APrevFocusedItem, AFocusedItem: TcxCustomGridTableItem);
begin
  Sender.Painter.Invalidate;
end;

procedure TfmPay.cxGrid1DBBandedTableView1KeyPress(Sender: TObject; var Key: Char);
begin
  FilterColumnGridOnKeyPress(TcxGridDBBandedTableView(TcxGridSite(Sender).GridView), Key);
end;

procedure TfmPay.dxBarButton11Click(Sender: TObject);
var  date1, date2 : TDateTime;
     Query : TADOQuery;
     contract_id : integer;
     i, line_cnt : integer;
     exApp, exWkb, exWks : variant;
begin
  fmPeriod := TfmPeriod.Create(Application, Fdate1, Fdate2, 1);
  if fmPeriod.ShowModal = mrOK then begin
    Screen.Cursor := crHourglass;
    date1 := fmPeriod._GetDateBegin;
    date2 := fmPeriod._GetDateEnd;
  end else exit;

//  fmContract := TfmContract.Create(Application, True, 0);
//  fmContract.cxPageControl1.ActivePageIndex := 1;
//  fmContract.Visible := False;
//
//  if fmContract.ShowModal=mrOk then begin
//    contract_id :=  fmContract._GetContractId;
//  end else exit;

  Query := TADOQuery.Create(nil);
  Query.Connection := fmMain.Lis;
  Query.SQL.Add('SELECT contract_id, contract_cod, firm_customer_name');
  Query.SQL.Add('FROM   view_contract_rights WHERE type_contract = 0');
  Query.SQL.Add('ORDER BY firm_customer_name');
  Query.Open;

  fmFilter := TfmFilter.Create(0, Query, 'contract_id', 'contract_cod', 'firm_customer_name');
  fmFilter._SetContractClient := True;
  if fmFilter.ShowModal = mrOk then begin
    contract_id := fmFilter.GetId;
  end else begin
    Query.Free;
    Exit;
  end;


  ShowTextMessage('Запуск Excel...', False);
  exApp := CreateOleObject('Excel.Application');
  exApp.Workbooks.Add(GetDocBlob(fmMain.Lis, 183, 9, True));
  exWks := exApp.ActiveWorkbook.WorkSheets[1];

  Query.SQL.Clear;
  Query.SQL.Add('SELECT * FROM view_contract WHERE contract_id = ' + IntToStr(contract_id));
  Query.Open;

  exWks.Range['E3'].Value := 'Организация: ' + Query.FieldByName('firm_customer_name').AsString;
  exWks.Range['E4'].Value := 'Договор № ' + Query.FieldByName('contract_cod').AsString + ' от ' + FormatDateTime('dd.mm.yyyy', Query.FieldByName('date_begin').AsDateTime);
  exWks.Range['C8'].Value := 'в период с ' + FormatDateTime('dd.mm.yyyy', date1) + ' по ' + FormatDateTime('dd.mm.yyyy', date2);


  Query.SQL.Clear;
  Query.SQL.Add('SELECT');
  Query.SQL.Add('	view_pay.firm_customer_name as pay_firm_name,');
  Query.SQL.Add('	view_pay.pay_comment,');
  Query.SQL.Add('	view_pay.pay_date,');
  Query.SQL.Add('	round(isnull(pay_sum * dbo.func_GetExchangeNew(3, view_pay.currency_id, view_pay.exchange_USD_val, view_pay.exchange_CHF_val, view_pay.exchange_EUR_val),0),2) as pay_sum,');
  Query.SQL.Add('	view_pay.currency_id,');
  Query.SQL.Add('	view_pay.exchange_USD_val');
  Query.SQL.Add('FROM	view_pay');
  Query.SQL.Add('		inner join pay_invoice on view_pay.pay_id = pay_invoice.pay_id');
  Query.SQL.Add('		inner join invoice_bargain on pay_invoice.inv_id = invoice_bargain.invoice_id');
  Query.SQL.Add('		inner join bargain on invoice_bargain.bargain_id = bargain.bargain_id');
  Query.SQL.Add('		inner join invoice on invoice_bargain.invoice_id = invoice.invoice_id');
  Query.SQL.Add('		inner join contract on invoice.contract_id = contract.contract_id');
  Query.SQL.Add('WHERE	contract.type_contract = 1 and ');
  Query.SQL.Add('bargain.contract_id = ' + IntToStr(contract_id) + ' and');
  Query.SQL.Add('pay_date between ' + DateToSQL(date1) + ' and ' + DateToSQL(date2));
  Query.Open;

  line_cnt := 14;
  while not Query.Eof do begin

    exWks.Rows[IntToStr(line_cnt  )].Copy;
    exWks.Rows[IntToStr(line_cnt+1)].Insert;

    exWks.Range['B' + IntToStr(line_cnt)].Value := Query.FieldByName('pay_firm_name').AsString;
    exWks.Range['D' + IntToStr(line_cnt)].Value := Query.FieldByName('pay_comment').AsString;
    exWks.Range['E' + IntToStr(line_cnt)].Value := Query.FieldByName('pay_date').AsDateTime;
    exWks.Range['F' + IntToStr(line_cnt)].Value := Query.FieldByName('pay_sum').AsCurrency;
    exWks.Range['H' + IntToStr(line_cnt)].Value := Query.FieldByName('exchange_USD_val').AsCurrency;

    line_cnt := line_cnt + 1;

    Query.Next;
  end;

  Query.Free;

  exWks.Rows[IntToStr(line_cnt)].Delete;
  exWks.Rows[IntToStr(line_cnt)].Delete;

  ShowTextMessage();
  exWks.Range['A1'].Select;
  exApp.CutCopyMode := False;
  exApp.Visible := True;
  exWks := Null; exWkb := Null; exApp := Null;
  VarClear(exWks); VarClear(exWkb); VarClear(exApp);
  Screen.Cursor := crDefault;
end;

procedure TfmPay.dxBarButton13Click(Sender: TObject);
begin
  Screen.Cursor := crHourglass;
  if TControl(Sender).Tag = 1 then begin
    Fdate1 := IncMonth(Fdate1, -1);
  end;

  if TControl(Sender).Tag = 2 then begin
    Fdate1 := IncMonth(Fdate1, 1);
  end;

  Fdate2 := IncMonth(Fdate1, 1) - 1;

  dxBarSubItem1.Caption := FormatDateTime('mmm yy', Fdate1) + ' - ' + FormatDateTime('mmm yy', Fdate2);

  Query_Pay.Close;
  Query_Pay.Parameters.ParamByName('date1').Value := Fdate1;
  Query_Pay.Parameters.ParamByName('date2').Value := Fdate2;
  Query_Pay.Open;

  Screen.Cursor := crDefault;
end;

procedure TfmPay.dxBarButton14Click(Sender: TObject);
var exWks, exApp  : Variant;
    count_str     : integer;
    OpenDialog1   : TOpenDialog;
    file_name     : string;
    SP            : TADOStoredProc;
    Q             : TADOQuery;
    pay_cod, s    : string;
    pay_date      : TDateTime;

begin
  OpenDialog1 := TOpenDialog.Create(nil);
  OpenDialog1.Filter      := 'Excel файлы|*.xls;*.xlsx';
  OpenDialog1.DefaultExt  := 'xls';
  if OpenDialog1.Execute then begin
    file_name := OpenDialog1.FileName;
  end;
  OpenDialog1.Free;
  try
    ShowTextMessage('Запуск Excel...', False);
    exApp := CreateOleObject('Excel.Application');
    exApp.Workbooks.Open(file_name);
    exWks := exApp.ActiveWorkbook.WorkSheets[1];

    SP := TADOStoredProc.Create(nil);
    SP.Connection := fmMain.Lis;
    SP.ProcedureName := 'sp_pay_modify';
    SP.Parameters.Refresh;
    count_str := 10;
    while not (TVarData(exWks.Cells[count_str,1].Value).VType = varEmpty) do begin
      ShowTextMessage('Обработано '+IntToStr(count_str - 10)+' платежей', False);

      s := exWks.Range['A' + IntToStr(count_str)].Value;
      if UpperCase(s) <> UpperCase('Итого') then begin
        s := ReplaceStr(s, 'Поступление на расчетный счет ', '');
        pay_cod := LeftStr(s, 11);
        s := ReplaceStr(s, pay_cod + ' от ', '');
        pay_date := EncodeDate(StrToInt(Copy(s, 7, 4)), StrToInt(Copy(s, 4, 2)), StrToInt(Copy(s, 1, 2)));

        Q := TADOQuery.Create(nil);
        Q.Connection := fmMain.Lis;
        Q.SQL.Add('SELECT	top 1 *');
        Q.SQL.Add('FROM 	view_contract');
        Q.SQL.Add('WHERE	isnull(firm_customer_inn,'''') = ' + StrToSQL(exWks.Range['H' + IntToStr(count_str)].Value));
        Q.SQL.Add('       and isnull(firm_customer_kpp,'''') = ' + StrToSQL(exWks.Range['I' + IntToStr(count_str)].Value));
        Q.SQL.Add('       and replace(firm_customer_name, '' '','''') = replace(' + StrToSQL(exWks.Range['G' + IntToStr(count_str)].Value) + ', '' '','''')');
        Q.SQL.Add('       and replace(contract_cod, '' '','''') = replace(' + StrToSQL(exWks.Range['L' + IntToStr(count_str)].Value) + ', '' '','''')');
        Q.SQL.Add('ORDER BY contract_id');
        Q.Open;
        if Q.RecordCount > 0 then begin

          SP.Parameters.ParamByName('@type_action'      ).Value := 0;
          SP.Parameters.ParamByName('@set_who_modify'   ).Value := 1;
          SP.Parameters.ParamByName('@incomming_cod'    ).Value := exWks.Range['E' + IntToStr(count_str)].Value;
          SP.Parameters.ParamByName('@contract_id'      ).Value := Q.FieldByName('contract_id').Value;
          SP.Parameters.ParamByName('@pay_cod'          ).Value := pay_cod;
          SP.Parameters.ParamByName('@pay_date'         ).Value := pay_date;
          SP.Parameters.ParamByName('@pay_sum'          ).Value := exWks.Range['O' + IntToStr(count_str)].Value;
          SP.Parameters.ParamByName('@currency_id'      ).Value := 3;
          if exWks.Range['M' + IntToStr(count_str)].Value = '0%'      then SP.Parameters.ParamByName('@type_nds_id').Value := 523379;
          if exWks.Range['M' + IntToStr(count_str)].Value = 'Без НДС' then SP.Parameters.ParamByName('@type_nds_id').Value := 523380;
          if exWks.Range['M' + IntToStr(count_str)].Value = '20%'     then begin
            SP.Parameters.ParamByName('@type_nds_id').Value := 966043;
            SP.Parameters.ParamByName('@nds_sum'    ).Value := RoundCurr(SP.Parameters.ParamByName('@pay_sum').Value*20/120, -2);
          end;
          SP.Parameters.ParamByName('@pay_note'         ).Value := exWks.Range['L' + IntToStr(count_str)].Value;
          SP.Parameters.ParamByName('@type_pay'         ).Value := 0;
          SP.Parameters.ParamByName('@file_load_name'   ).Value := file_name;
          SP.Parameters.ParamByName('@file_load_date'   ).Value := Date();

          try
            SP.ExecProc;
          except
            on E: Exception do
              Application.MessageBox(PChar(E.Message), 'Внимание', MB_OK);
          end;
        end;

        Q.Free;
      end;

      count_str := count_str + 1;
    end;
    ShowTextMessage;

  finally
    exApp.Quit;
    exWks := null;
    exWks := null;
  end;

  RefreshQueryGrid(cxGrid1DBBandedTableView1, 'pay_id');
end;

procedure TfmPay.dxBarButton15Click(Sender: TObject);
var exWks, exApp  : Variant;
    count_str     : integer;
    OpenDialog1   : TOpenDialog;
    file_name     : string;
    SP            : TADOStoredProc;
    Q             : TADOQuery;
    pay_cod, s    : string;
    pay_date      : TDateTime;
begin
  OpenDialog1 := TOpenDialog.Create(nil);
  OpenDialog1.Filter      := 'Excel файлы|*.xls;*.xlsx';
  OpenDialog1.DefaultExt  := 'xls';
  if OpenDialog1.Execute then begin
    file_name := OpenDialog1.FileName;
  end;
  OpenDialog1.Free;
  try
    ShowTextMessage('Запуск Excel...', False);
    exApp := CreateOleObject('Excel.Application');
    exApp.Workbooks.Open(file_name);
    exWks := exApp.ActiveWorkbook.WorkSheets[1];

    SP := TADOStoredProc.Create(nil);
    SP.Connection := fmMain.Lis;
    SP.ProcedureName := 'sp_pay_modify';
    SP.Parameters.Refresh;
    count_str := 10;
    while not (TVarData(exWks.Cells[count_str,1].Value).VType = varEmpty) do begin
      ShowTextMessage('Обработано '+IntToStr(count_str - 10)+' платежей', False);

      s := exWks.Range['A' + IntToStr(count_str)].Value;
      if UpperCase(s) <> UpperCase('Итого') then begin
        s := ReplaceStr(s, 'Списание с расчетного счета ', '');
        pay_cod := LeftStr(s, 11);
        s := ReplaceStr(s, pay_cod + ' от ', '');
        pay_date := EncodeDate(StrToInt(Copy(s, 7, 4)), StrToInt(Copy(s, 4, 2)), StrToInt(Copy(s, 1, 2)));

        Q := TADOQuery.Create(nil);
        Q.Connection := fmMain.Lis;
        Q.SQL.Add('SELECT	top 1 *');
        Q.SQL.Add('FROM 	view_contract');
        Q.SQL.Add('WHERE	isnull(firm_customer_inn,'''') = ' + StrToSQL(exWks.Range['I' + IntToStr(count_str)].Value));
        Q.SQL.Add('       and isnull(firm_customer_kpp,'''') = ' + StrToSQL(exWks.Range['J' + IntToStr(count_str)].Value));
        Q.SQL.Add('       and replace(firm_customer_name, '' '','''') = replace(' + StrToSQL(exWks.Range['K' + IntToStr(count_str)].Value) + ', '' '','''')');
        Q.SQL.Add('       and replace(contract_cod, '' '','''') = replace(' + StrToSQL( exWks.Range['M' + IntToStr(count_str)].Value) + ', '' '','''')');
        Q.SQL.Add('ORDER BY contract_id');
        Q.Open;
        if Q.RecordCount > 0 then begin

          SP.Parameters.ParamByName('@type_action'      ).Value := 0;
          SP.Parameters.ParamByName('@set_who_modify'   ).Value := 1;

          SP.Parameters.ParamByName('@incomming_cod'    ).Value := exWks.Range['F' + IntToStr(count_str)].Value;

          SP.Parameters.ParamByName('@contract_id'      ).Value := Q.FieldByName('contract_id').Value;
          SP.Parameters.ParamByName('@pay_cod'          ).Value := pay_cod;
          SP.Parameters.ParamByName('@pay_date'         ).Value := pay_date;
          SP.Parameters.ParamByName('@pay_sum'          ).Value := exWks.Range['Q' + IntToStr(count_str)].Value;
          SP.Parameters.ParamByName('@currency_id'      ).Value := 3;
          if exWks.Range['O' + IntToStr(count_str)].Value = '0%'      then SP.Parameters.ParamByName('@type_nds_id').Value := 523379;
          if exWks.Range['O' + IntToStr(count_str)].Value = 'Без НДС' then SP.Parameters.ParamByName('@type_nds_id').Value := 523380;
          if exWks.Range['O' + IntToStr(count_str)].Value = '20%'     then begin
            SP.Parameters.ParamByName('@type_nds_id').Value := 966043;
            SP.Parameters.ParamByName('@nds_sum'    ).Value := RoundCurr(SP.Parameters.ParamByName('@pay_sum').Value*20/120, -2);
          end;
          SP.Parameters.ParamByName('@pay_note'         ).Value := exWks.Range['P' + IntToStr(count_str)].Value;
          SP.Parameters.ParamByName('@type_pay'         ).Value := 1;
          SP.Parameters.ParamByName('@file_load_name'   ).Value := file_name;
          SP.Parameters.ParamByName('@file_load_date'   ).Value := Date();

          try
            SP.ExecProc;
          except
            on E: Exception do
              Application.MessageBox(PChar(E.Message), 'Внимание', MB_OK);
          end;
        end;

        Q.Free;
      end;

      count_str := count_str + 1;
    end;
    ShowTextMessage;

  finally
    exApp.Quit;
    exWks := null;
    exWks := null;
  end;

  RefreshQueryGrid(cxGrid1DBBandedTableView1, 'pay_id');
end;

procedure TfmPay.dxBarButton2Click(Sender: TObject);
begin
  fmPeriod := TfmPeriod.Create(Application, Fdate1, Fdate2, TComponent(Sender).Tag);
  if fmPeriod.ShowModal=mrOK then begin
    Screen.Cursor := crHourglass;
    case TComponent(Sender).Tag of
      3 : begin
            Fdate1 := fmPeriod._GetMonth;
            Fdate2 := IncMonth(Fdate1, 1) - 1;
            dxBarSubItem1.Caption := FormatDateTime('mmmm yyyy', Fdate1);
          end;
      2 : begin
            Fdate1 := fmPeriod._GetMonthBegin;
            Fdate2 := fmPeriod._GetMonthEnd;
            dxBarSubItem1.Caption := FormatDateTime('mmm yy', Fdate1) + ' - ' + FormatDateTime('mmm yy', Fdate2);
         end;
    end;

    Query_Pay.Close;
    Query_Pay.Parameters.ParamByName('date1').Value := Fdate1;
    Query_Pay.Parameters.ParamByName('date2').Value := Fdate2;
    Query_Pay.Open;

    Screen.Cursor := crDefault;
  end;
end;

procedure TfmPay.dxBarButton4Click(Sender: TObject);
begin
  Fpay_id := cxGrid1DBBandedTableView1pay_id.DataBinding.Field.AsInteger;
  ModalResult := mrOk;
end;

procedure TfmPay.dxBarButton7Click(Sender: TObject);
begin
  GroupBox1.Visible := dxBarButton7.Down;
  Splitter2.Visible := dxBarButton7.Down;
end;

procedure TfmPay.dxBarButton_FilterRecords1Click(Sender: TObject);
begin
  cxGrid1DBBandedTableView1.Filtering.ColumnFilteredItemsList := not dxBarButton_FilterRecords1.Down;
end;

procedure TfmPay.dxBarButton_FilterRecords2Click(Sender: TObject);
begin
  cxGrid3DBBandedTableView1.Filtering.ColumnFilteredItemsList := not dxBarButton_FilterRecords2.Down;
end;

procedure TfmPay.N7Click(Sender: TObject);
begin
  SetRecordColor('pay_id', cxGrid1DBBandedTableView1, 'pay', Boolean(TMenuItem(Sender).Tag));
  RefreshQueryGrid(cxGrid1DBBandedTableView1, 'pay_id');
end;

procedure TfmPay.N11Click(Sender: TObject);
begin
  case TdxBarButton(Sender).ClickItemLink.Owner.Owner.Tag of
    1 : cxGrid1DBBandedTableView1.OptionsView.GroupByBox := not cxGrid1DBBandedTableView1.OptionsView.GroupByBox;
    3 : cxGrid3DBBandedTableView1.OptionsView.GroupByBox := not cxGrid3DBBandedTableView1.OptionsView.GroupByBox;
  end;
end;

procedure TfmPay.N14Click(Sender: TObject);
var SP_PayModify : TADOStoredProc;
begin
  Screen.Cursor := crHourglass;
  SP_PayModify := TADOStoredProc.Create(nil);
  SP_PayModify.Connection := fmMain.Lis;
  SP_PayModify.ProcedureName := 'sp_pay_modify';
  SP_PayModify.Parameters.Refresh;
  SP_PayModify.Parameters.ParamByName('@pay_id').Value := cxGrid1DBBandedTableView1.GetColumnByFieldName('pay_id').DataBinding.Field.AsInteger;
  SP_PayModify.Parameters.ParamByName('@type_action').Value := 3;
  SP_PayModify.ExecProc;
  if SP_PayModify.Parameters.ParamByName('@pay_id').Value = -9 then Application.MessageBox('Неизвестная ошибка при копировании платежа', 'Внимание', MB_OK)
  else RefreshQueryGrid(cxGrid1DBBandedTableView1, 'pay_id', SP_PayModify.Parameters.ParamByName('@pay_id').Value);
  SP_PayModify.Free;
  Screen.Cursor := crDefault;
end;

procedure TfmPay.ToolButton12Click(Sender: TObject);
type
  TFunc = function(AppHand:THandle; global_id:integer; caption: string; usr_pwd:PUser_pwd):variant;
var
  FShablon  : TFunc;
  handle    : THandle;
  v         : Variant;
begin
   handle := LoadLibrary('dictionary.dll');
   @FShablon := GetProcAddress(handle,'CreateWndDocBlob');
   v := FShablon(Application.Handle, cxGrid1DBBandedTableView1pay_id.DataBinding.Field.AsInteger, 'Документы связанные с платежом № '+cxGrid1DBBandedTableView1pay_cod.DataBinding.Field.AsString, usr_pwd);
   FreeLibrary(handle);
end;

procedure TfmPay.ToolButton16Click(Sender: TObject);
begin
  RefreshQueryGrid(cxGrid1DBBandedTableView1, 'pay_id');
end;

procedure TfmPay.Excel1Click(Sender: TObject);
begin
  case TdxBarManager(TdxBarButton(Sender).GetParentComponent).Tag of
    1 : PrintcxGrid(cxGrid1DBBandedTableView1);
    3 : PrintcxGrid(cxGrid3DBBandedTableView1);
  end;
end;

//отчет о незагруженных платежах
procedure TfmPay.ToolButton18Click(Sender: TObject);
var Fcompany_cod : integer;
begin
//  case usr_pwd.user_group_id of
//    158706,1478822: Fcompany_cod := 8;
//    158705: Fcompany_cod := 4;
//    398912: Fcompany_cod := 5;
//    619087: Fcompany_cod := 14;
//  end;
//  Query_1c.Close;
//  Query_1c.Parameters.ParamByName('date1').Value := StrToDate(FormatDateTime('dd'+ FormatSettings.DateSeparator +'mm'+ FormatSettings.DateSeparator +'yyyy',Fdate1));
//  Query_1c.Parameters.ParamByName('date2').Value := StrToDate(FormatDateTime('dd'+ FormatSettings.DateSeparator +'mm'+ FormatSettings.DateSeparator +'yyyy',Fdate2));
//  Query_1c.Parameters.ParamByName('company_id').Value := Fcompany_cod;
//  Query_1c.Parameters.ParamByName('pay_lis_type').Value := Ftype_pay;
//  Query_1c.Open;
//
//  fmFilter := TfmFilter.Create(0, Query_1c, 'bind_pay_id', 'c1_doc_date', 'c1_firm_name');
//  fmFilter._SetGetPaysFrom1C := True;
//  fmFilter.ShowModal;
end;

procedure TfmPay.cxGrid1DBBandedTableView2FocusedRecordChanged(Sender: TcxCustomGridTableView; APrevFocusedRecord, AFocusedRecord: TcxCustomGridRecord; ANewItemRecordFocusingChanged: Boolean);
begin
  try
    if not Assigned(AFocusedRecord) then
      TcxGridDBBandedTableView(Sender).Controller.FocusRecord(1, True)
    else
      if (not VarIsNull(AFocusedRecord.Values[TcxGridDBBandedTableView(Sender).GetColumnByFieldName('pay_id').Index])) AND (dxBarButton7.Down) then begin
        Query_Pay_Invoice.Close;
        Query_Pay_Invoice.Parameters.ParamByName('pay_id').Value := AFocusedRecord.Values[TcxGridDBBandedTableView(Sender).GetColumnByFieldName('pay_id').Index];
        Query_Pay_Invoice.Open;
      end;
  except
  end;
end;

procedure TfmPay.SetPeriodCreate (date1, date2: TDate);
var Q : TADOQuery;
begin
  Screen.Cursor := crHourglass;

  Fdate1 := date1;
  Fdate2 := date2;

  Q := TADOQuery.Create(nil);
  Q.Connection := Query_Pay.Connection;
  Q.SQL.Add('SELECT date1 = MIN(pay_date), date2 = MAX(pay_date) ');
  Q.SQL.Add('FROM view_pay_rights ');
  Q.SQL.Add('WHERE type_pay = :type_pay AND :date1 <= date_enter AND date_enter < :date2 + 1');
  Q.Parameters.ParamByName('type_pay').Value := Ftype_pay;
  Q.Parameters.ParamByName('date1').Value := date1;
  Q.Parameters.ParamByName('date2').Value := date2;
  Q.Open;

  if not Q.FieldByName('date1').IsNull then begin
    Fdate1 := Q.FieldByName('date1').AsDateTime;
    Fdate2 := Q.FieldByName('date2').AsDateTime;
  end;

  dxBarSubItem1.Caption := FormatDateTime('dd.mm.yy', Fdate1) + ' - ' + FormatDateTime('dd.mm.yy', Fdate2);

  Query_Pay.Close;
  Query_Pay.Parameters.ParamByName('date1').Value := Fdate1;
  Query_Pay.Parameters.ParamByName('date2').Value := Fdate2;
  Query_Pay.Open;

  Q.Free;

  // Наложим фильтр по дате
  with cxGrid1DBBandedTableView1.DataController.Filter do begin
    BeginUpdate;

    Root.Clear;
    Root.AddItem(cxGrid1DBBandedTableView1.GetColumnByFieldName('date_enter'), foBetween, VarArrayOf([date1, date2]), DateToStr(date1) + ';' + DateToStr(date2));
    Active := True;

    EndUpdate;
  end;

  Screen.Cursor := crDefault;
end;

end.


