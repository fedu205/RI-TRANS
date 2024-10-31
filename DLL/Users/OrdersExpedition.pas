unit OrdersExpedition;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Default,
  Dialogs, cxGraphics, cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit,
  DB, cxDBData, cxPropertiesStore, ImgList, ADODB, dxBar, cxClasses, ExtCtrls, cxGridLevel,
  cxControls, cxGridCustomView, cxGridCustomTableView, cxGridTableView, cxGridBandedTableView,
  cxGridDBBandedTableView, cxGrid, dxStatusBar, cxCurrencyEdit, ComObj, StrUtils, cxPC, cxLookAndFeels, cxLookAndFeelPainters, dxSkinsCore,
  dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
  dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMetropolis, dxSkinMetropolisDark, dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013DarkGray,
  dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus, dxSkinSilver,
  dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008, dxSkinTheAsphaltWorld, dxSkinsDefaultPainters, dxSkinValentine, dxSkinVS2010,
  dxSkinWhiteprint, dxSkinXmas2008Blue, dxSkinsdxStatusBarPainter, dxSkinscxPCPainter, cxNavigator, dxBarBuiltInMenu, dxSkinsdxBarPainter,
  dxSkinOffice2016Colorful, dxSkinOffice2016Dark, dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark, dxSkinVisualStudio2013Light,
  System.ImageList, dxSkinTheBezier, cxDataControllerConditionalFormattingRulesManagerDialog, cxImageList, dxDateRanges, cxColorComboBox,
  dxSkinOffice2019Colorful;

type
  TfmOrdersExpedition = class(TForm)
    dxStatusBar1: TdxStatusBar;
    cxGrid1: TcxGrid;
    cxGrid1DBBandedTableView1: TcxGridDBBandedTableView;
    cxGrid1Level1: TcxGridLevel;
    dxBarManager1: TdxBarManager;
    dxBarManager1Bar1: TdxBar;
    dxBarSubItem3: TdxBarSubItem;
    dxBarButton2: TdxBarButton;
    dxBarButton3: TdxBarButton;
    dxBarButton5: TdxBarButton;
    dxBarButton6: TdxBarButton;
    dxBarButton7: TdxBarButton;
    dxBarButton8: TdxBarButton;
    dxBarButton15: TdxBarButton;
    dxBarSubItem5: TdxBarSubItem;
    dxBarButton16: TdxBarButton;
    dxBarButton17: TdxBarButton;
    dxBarButton18: TdxBarButton;
    dxBarButton19: TdxBarButton;
    dxBarButton23: TdxBarButton;
    dxBarPopupMenu1: TdxBarPopupMenu;
    ADOConnOrdersExpedition: TADOConnection;
    Query_OrdersExpedition: TADOQuery;
    DS_OrdersExpedition: TDataSource;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1: TcxStyle;
    cxStyle2: TcxStyle;
    cxStyle3: TcxStyle;
    cxStyle4: TcxStyle;
    cxPropertiesStore1: TcxPropertiesStore;
    cxGrid1DBBandedTableView1orders_expedition_id: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1orders_expedition_num: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1orders_expedition_date: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1contract_id: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1firm_sender: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1firm_reciever: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1notification_reciver: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1state_kargo: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1kargo_ready: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1vid_transport: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1node_end: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1insurance: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1kargo_ETSNG: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1marks: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1count_position: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1weight: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1volume: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1cost: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1cost_currency_id: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1size_paking: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1documents_need: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1special_remarks: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1sing_client: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1users_id: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1users_group_id: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1contract_cod: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1firm_customer_name_short: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1firm_self_name_short: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1brief_name: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1date_enter: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1global_color: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1orders_expedition_cod: TcxGridDBBandedColumn;
    dxBarButton1: TdxBarButton;
    cxGrid1DBBandedTableView1date_period_name: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1date_period: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1firm_customer_id: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1firm_self_id: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1FIO_users: TcxGridDBBandedColumn;
    cxTabControl1: TcxTabControl;
    cxGrid1DBBandedTableView1type_contract: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1type_orders_expedition: TcxGridDBBandedColumn;
    dxBarButton_FilterRecords1: TdxBarButton;
    dxBarSubItem2: TdxBarSubItem;
    dxBarButton4: TdxBarButton;
    cxImageList1: TcxImageList;
    dxBarButton9: TdxBarButton;
    dxBarButton123: TdxBarButton;
    dxBarButton117: TdxBarButton;
    procedure dxBarButton1Click(Sender: TObject);
    procedure dxBarButton8Click(Sender: TObject);
    procedure cxTabControl1Change(Sender: TObject);
    procedure dxBarButton15Click(Sender: TObject);
    procedure dxBarButton7Click(Sender: TObject);
    procedure cxGrid1DBBandedTableView1DblClick(Sender: TObject);
    procedure ADOConnOrdersExpeditionExecuteComplete(Connection: TADOConnection; RecordsAffected: Integer; const Error: Error; var EventStatus: TEventStatus; const Command: _Command; const Recordset: _Recordset);
    procedure dxBarButton19Click(Sender: TObject);
    procedure dxBarButton18Click(Sender: TObject);
    procedure dxBarButton16Click(Sender: TObject);
    procedure dxBarButton6Click(Sender: TObject);
    procedure dxBarButton5Click(Sender: TObject);
    procedure dxBarButton23Click(Sender: TObject);
    procedure dxBarButton2Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cxGrid1DBBandedTableView1KeyPress(Sender: TObject; var Key: Char);
    procedure cxGrid1DBBandedTableView1FocusedItemChanged(Sender: TcxCustomGridTableView; APrevFocusedItem, AFocusedItem: TcxCustomGridTableItem);
    procedure cxGrid1DBBandedTableView1CustomDrawColumnHeader(Sender: TcxGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxGridColumnHeaderViewInfo; var ADone: Boolean);
    procedure cxGrid1DBBandedTableView1CustomDrawCell(Sender: TcxCustomGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
    procedure cxGrid1DBBandedTableView1DataControllerFilterChanged(Sender: TObject);
    procedure dxBarButton_FilterRecords1Click(Sender: TObject);
    procedure dxBarButton123Click(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    Fusr_pwd   : PUser_pwd;

    Fdate1     : TDateTime;
    Fdate2     : TDateTime;
    Ftype_orders_expedition : integer;

    procedure SetPeriod(date_from, date_to : TDate; type_orders_expedition: integer);
  public
    constructor Create(AOwner: TApplication; usr_pwd: PUser_pwd);
  end;

var
  fmOrdersExpedition: TfmOrdersExpedition;

function CreateWndOrdersExpedition(AppHand: THandle; usr_pwd: PUser_pwd) : variant; export;

implementation
  uses Raznoe, Period, Other, OrdersExpeditionAdd;

{$R *.dfm}

function CreateWndOrdersExpedition(AppHand: THandle; usr_pwd: PUser_pwd) : variant;
begin
  Application.Handle := AppHand;
  try
    fmOrdersExpedition := TfmOrdersExpedition.Create(Application, usr_pwd);
    //-- изменить по мере необходимости возвращаемых параметров
    result := VarArrayOf([fmOrdersExpedition.ShowModal, -9]);
  finally
    fmOrdersExpedition.Free;
  end;
end;

constructor TfmOrdersExpedition.Create(AOwner: TApplication; usr_pwd: PUser_pwd);
begin
  Screen.Cursor := crHourglass;
  inherited Create(AOwner);

  WindowState := wsMaximized;

  StoreRegistryGrid(rgLoad, '\Software\Lis1\OrdersExpedition_Grids', cxGrid1DBBandedTableView1);

  Fusr_pwd := usr_pwd;
  ADOConnOrdersExpedition.Connected := False;
  ADOConnOrdersExpedition.ConnectionString := 'Persist Security Info=True;Provider=SQLOLEDB.1;User ID=' + usr_pwd^.user_name + ';Password=' + usr_pwd^.user_pass + ';Initial Catalog=' + usr_pwd^.catalog + ';Data Source=' + usr_pwd^.server + ';';
  ADOConnOrdersExpedition.Connected := True;

  dxBarSubItem3.Caption := StoreRegistryDate(rgLoad, '\Software\Lis1\DateTime\Agree', Fdate1, Fdate2);

  cxTabControl1.TabIndex := 0;

  SetPeriod(Fdate1, Fdate2, cxTabControl1.TabIndex);

  Screen.Cursor := crDefault;
end;

procedure TfmOrdersExpedition.ADOConnOrdersExpeditionExecuteComplete(Connection: TADOConnection; RecordsAffected: Integer; const Error: Error; var EventStatus: TEventStatus; const Command: _Command; const Recordset: _Recordset);
begin
  if EventStatus = esErrorsOccured then begin
    Application.MessageBox(PWideChar(error.Description), 'Внимание', MB_OK);
    ShowTextMessage('', True);
  end;
end;

procedure TfmOrdersExpedition.SetPeriod(date_from, date_to : TDate; type_orders_expedition: integer);
var
  key_val : integer;
begin
  Fdate1 := date_from;
  Fdate2 := date_to;
  Ftype_orders_expedition := type_orders_expedition;

  if ADOConnOrdersExpedition.Connected then begin
    Screen.Cursor := crHourglass;

    // Запоминаем значение ключа (если его нам не передали)
    key_val := -9;
    if (not cxGrid1DBBandedTableView1.DataController.DataSet.IsEmpty) then
      key_val := cxGrid1DBBandedTableView1.DataController.GetKeyFieldsValues;

    Query_OrdersExpedition.Close;
    Query_OrdersExpedition.Parameters.ParamByName('date_from'             ).Value := Fdate1;
    Query_OrdersExpedition.Parameters.ParamByName('date_to'               ).Value := Fdate2;
    Query_OrdersExpedition.Parameters.ParamByName('type_orders_expedition').Value := Ftype_orders_expedition;
    Query_OrdersExpedition.Open;

    // Пытаемся восстановить запись на прежнее место (или на переданное значение)
    if cxGrid1DBBandedTableView1.DataController.LocateByKey(key_val) = False then
      cxGrid1DBBandedTableView1.Controller.GoToFirst;

    if cxGrid1DBBandedTableView1.Controller.FocusedRecord <> nil then
      cxGrid1DBBandedTableView1.Controller.FocusedRecord.Selected := True;

    Screen.Cursor := crDefault;
  end;

  dxBarSubItem3.Caption := PeriodToStr(Fdate1, Fdate2, True);
end;

procedure TfmOrdersExpedition.cxGrid1DBBandedTableView1CustomDrawCell(Sender: TcxCustomGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
  if (AViewInfo.GridRecord.Values[cxGrid1DBBandedTableView1global_color.Index]<>NULL) then
    ACanvas.Brush.Color := AViewInfo.GridRecord.Values[cxGrid1DBBandedTableView1global_color.Index];


  if AViewInfo.Focused then begin
    ACanvas.Font.Color := clWhite;
    ACanvas.Brush.Color := clBlue;
  end;
end;

procedure TfmOrdersExpedition.cxGrid1DBBandedTableView1CustomDrawColumnHeader(Sender: TcxGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxGridColumnHeaderViewInfo; var ADone: Boolean);
begin
  if AViewInfo.Column.Focused then begin
    ACanvas.Brush.Color := clNavy;
    ACanvas.Font.Color := clWhite;
  end;
end;

procedure TfmOrdersExpedition.cxGrid1DBBandedTableView1DataControllerFilterChanged(Sender: TObject);
begin
  DrawcxGridColumnOnFiltered(Sender);
end;

procedure TfmOrdersExpedition.cxGrid1DBBandedTableView1DblClick(Sender: TObject);
begin
  dxBarButton8.Click; // Редактировать
end;

procedure TfmOrdersExpedition.cxGrid1DBBandedTableView1FocusedItemChanged(Sender: TcxCustomGridTableView; APrevFocusedItem, AFocusedItem: TcxCustomGridTableItem);
begin
  Sender.Painter.Invalidate;
end;

procedure TfmOrdersExpedition.cxGrid1DBBandedTableView1KeyPress(Sender: TObject; var Key: Char);
begin
  FilterColumnGridOnKeyPress(cxGrid1DBBandedTableView1, Key);
end;

procedure TfmOrdersExpedition.cxTabControl1Change(Sender: TObject);
begin
  if cxTabControl1.TabIndex = 0 then begin
    cxGrid1DBBandedTableView1firm_customer_name_short.Caption := 'Клиент';
    cxGrid1DBBandedTableView1firm_self_name_short.Caption     := 'Экспедитор';
  end else begin
    cxGrid1DBBandedTableView1firm_customer_name_short.Caption := 'Экспедитор';
    cxGrid1DBBandedTableView1firm_self_name_short.Caption     := 'Клиент';
  end;
  SetPeriod(Fdate1, Fdate2, cxTabControl1.TabIndex);
end;

procedure TfmOrdersExpedition.dxBarButton123Click(Sender: TObject);
begin
  Screen.Cursor := crHourglass;

  case TControl(Sender).Tag of
    1 : Fdate1 := IncMonth(Fdate1, 1);
    2 : Fdate1 := IncMonth(Fdate1, -1);
  end;

  Fdate2 := IncMonth(Fdate1, 1) - 1;
  dxBarSubItem3.Caption := FormatDateTime('mmmm yyyy', Fdate1);
  dxBarManager1Bar1.Reset;

  dxBarButton123.Caption := FormatDateTime('mmmm yyyy', IncMonth(Fdate1,-1));
  dxBarButton117.Caption := FormatDateTime('mmmm yyyy', IncMonth(Fdate1,1));

  SetPeriod(Fdate1, Fdate2, cxTabControl1.TabIndex);

  Screen.Cursor := crDefault;
end;

procedure TfmOrdersExpedition.dxBarButton15Click(Sender: TObject);
var
  i            : integer;
  SP_procedure : TADOStoredProc;
  s_tmp        : string;
begin
  s_tmp := 'Вы действительно хотите удалить выделенные поручения ?';
  if Application.MessageBox(PChar(s_tmp), 'Удаление поручения', MB_YESNO or MB_ICONQUESTION ) = IDYES then begin
    Screen.Cursor := crHourglass;
    SP_procedure := TADOStoredProc.Create(nil);
    SP_procedure.Connection := ADOConnOrdersExpedition;
    SP_procedure.ProcedureName := 'sp_orders_expedition_modify';
    SP_procedure.Parameters.Refresh;

    for i := 0 to cxGrid1DBBandedTableView1.Controller.SelectedRowCount - 1 do begin

      SP_procedure.Close;
      SP_procedure.Parameters.ParamByName('@type_action').Value := 2;
      SP_procedure.Parameters.ParamByName('@orders_expedition_id').Value := cxGrid1DBBandedTableView1.Controller.SelectedRows[i].Values[cxGrid1DBBandedTableView1orders_expedition_id.Index] ;
      try
        SP_procedure.ExecProc;
      except
      end;
    end;

    SP_procedure.Free;
    RefreshQueryGrid(cxGrid1DBBandedTableView1, cxGrid1DBBandedTableView1.DataController.KeyFieldNames);
    Screen.Cursor := crDefault;
  end;
end;

procedure TfmOrdersExpedition.dxBarButton16Click(Sender: TObject);
begin
  SetRecordColor('orders_expedition_id', cxGrid1DBBandedTableView1, 'ORDERS_EXPEDITION', TComponent(Sender).Tag = 1);
  RefreshQueryGrid(cxGrid1DBBandedTableView1, cxGrid1DBBandedTableView1.DataController.KeyFieldNames);
end;

procedure TfmOrdersExpedition.dxBarButton18Click(Sender: TObject);
begin
  SetdxDBGridColumns(cxGrid1DBBandedTableView1);
end;

procedure TfmOrdersExpedition.dxBarButton19Click(Sender: TObject);
begin
  cxGrid1DBBandedTableView1.OptionsView.GroupByBox := not cxGrid1DBBandedTableView1.OptionsView.GroupByBox;
end;

procedure TfmOrdersExpedition.dxBarButton23Click(Sender: TObject);
begin
  RefreshQueryGrid(cxGrid1DBBandedTableView1, cxGrid1DBBandedTableView1.DataController.KeyFieldNames);
end;

procedure TfmOrdersExpedition.dxBarButton2Click(Sender: TObject);
var
  iTag : integer;
begin
  iTag := TdxBarButton(Sender).Tag;
  fmPeriod := TfmPeriod.Create(Application, Fdate1, Fdate2, iTag);
  if fmPeriod.ShowModal = mrOk then begin
    case iTag of
      3: SetPeriod(fmPeriod._GetMonth, IncMonth(fmPeriod._GetMonth) - 1, Ftype_orders_expedition);
      2: SetPeriod(fmPeriod._GetMonthBegin, fmPeriod._GetMonthEnd, Ftype_orders_expedition);
    end;
  end;
end;

procedure TfmOrdersExpedition.dxBarButton5Click(Sender: TObject);
var
    i             : integer;
    wdApp         : Variant;
    wdDoc         : Variant;
    file_name     : string;
    bookmark_name : string;
    mask          : string;
    Q             : TADOQuery;
begin
  if not Query_OrdersExpedition.Locate('orders_expedition_id', cxGrid1DBBandedTableView1.DataController.GetKeyFieldsValues, []) then Exit;

  Screen.Cursor := crDefault;

  wdApp := CreateOleObject('Word.Application');

  // Создание документа на основании шаблона
  file_name := GetDocBlob(ADOConnOrdersExpedition, TComponent(Sender).Tag, 9, True); // Поручение экспедитора.dot
  wdDoc := wdApp.Documents.Add(file_name);
  wdApp.DisplayAlerts := 0;

  // Формируем документ
  for i := 1 To wdDoc.Bookmarks.Count do begin
    bookmark_name := wdDoc.BookMarks.Item(i).Name;
    if (Query_OrdersExpedition.FieldByName('type_orders_expedition').AsInteger = 1) then begin
      // Если печатаем подрядчита, то меняем местами клиента и экспедитора
      if bookmark_name = 'firm_customer_name_full' then bookmark_name := 'firm_self_name_full'
      else if bookmark_name = 'firm_self_name_full' then bookmark_name := 'firm_customer_name_full';
      if bookmark_name = 'firm_customer_address' then bookmark_name := 'firm_self_address'
      else if bookmark_name = 'firm_self_address' then bookmark_name := 'firm_customer_address';
    end;
    if (bookmark_name <> 'firm_customer_address') and
       (bookmark_name <> 'firm_self_address') and
       (not Query_OrdersExpedition.FieldByName(bookmark_name).IsNull)
    then begin
      if TVarData(Query_OrdersExpedition.FieldByName(bookmark_name).Value).VType = varCurrency then begin
        mask := '#,##0.000';
        if (bookmark_name = 'cost') then mask := '#,##0.00';
        wdDoc.Bookmarks.Item(i).Range.InsertBefore( FormatCurr(mask, Query_OrdersExpedition.FieldByName(bookmark_name).AsCurrency) )
      end else begin
        wdDoc.Bookmarks.Item(i).Range.InsertBefore(Query_OrdersExpedition.FieldByName(bookmark_name).AsString);
      end;
    end;
    if (bookmark_name = 'cost') and
       (not Query_OrdersExpedition.FieldByName(bookmark_name).IsNull)
    then begin
      wdDoc.Bookmarks.Item(i).Range.InsertBefore('---');
    end;
    if (bookmark_name = 'firm_customer_address') then begin
      Q := TADOQuery.Create(nil);
      Q.Connection := Query_OrdersExpedition.Connection;
      Q.SQL.Add('SELECT TOP 1 firm_contact_name');
      Q.SQL.Add('FROM view_firm_contact');
      Q.SQL.Add('WHERE firm_id = ' + Query_OrdersExpedition.FieldByName('firm_customer_id').AsString + '');
      Q.SQL.Add('AND type_contact_cod = ''11''');
      Q.SQL.Add('AND ' + DateToSQL(Query_OrdersExpedition.FieldByName('orders_expedition_date').AsDateTime) + ' BETWEEN date_begin AND ISNULL(date_end, ' + DateToSQL(Query_OrdersExpedition.FieldByName('orders_expedition_date').AsDateTime) + ')');
      Q.Open;
      wdDoc.Bookmarks.Item(i).Range.InsertBefore(Q.FieldByName('firm_contact_name').AsString);
      Q.Free;
    end;
    if (bookmark_name = 'firm_self_address') then begin
      Q := TADOQuery.Create(nil);
      Q.Connection := Query_OrdersExpedition.Connection;
      Q.SQL.Add('SELECT TOP 1 firm_contact_name');
      Q.SQL.Add('FROM view_firm_contact');
      Q.SQL.Add('WHERE firm_id = ' + Query_OrdersExpedition.FieldByName('firm_self_id').AsString + '');
      Q.SQL.Add('AND type_contact_cod = ''11''');
      Q.SQL.Add('AND ' + DateToSQL(Query_OrdersExpedition.FieldByName('orders_expedition_date').AsDateTime) + ' BETWEEN date_begin AND ISNULL(date_end, ' + DateToSQL(Query_OrdersExpedition.FieldByName('orders_expedition_date').AsDateTime) + ')');
      Q.Open;
      wdDoc.Bookmarks.Item(i).Range.InsertBefore(Q.FieldByName('firm_contact_name').AsString);
      Q.Free;
    end;
  end;
  wdDoc.Fields.Update;

  // Делаем Word видимым
  wdApp.Visible := True;

  // Чистим переменные
  VarClear(wdApp);
  VarClear(wdDoc);

  Screen.Cursor := crDefault;
end;

procedure TfmOrdersExpedition.dxBarButton6Click(Sender: TObject);
begin
  PrintcxGrid(cxGrid1DBBandedTableView1);
end;

procedure TfmOrdersExpedition.dxBarButton7Click(Sender: TObject);
begin
  // Добавить
  fmOrdersExpeditionAdd := TfmOrdersExpeditionAdd.Create(Application, 0, ADOConnOrdersExpedition, Ftype_orders_expedition);
  if fmOrdersExpeditionAdd.ShowModal = mrOk then
    RefreshQueryGrid(cxGrid1DBBandedTableView1, cxGrid1DBBandedTableView1.DataController.KeyFieldNames, fmOrdersExpeditionAdd._GetOrdersExpeditionID);
end;

procedure TfmOrdersExpedition.dxBarButton8Click(Sender: TObject);
var
  orders_expedition_id : integer;
begin
  // Изменить
  orders_expedition_id := -9;
  if not Query_OrdersExpedition.Eof then
    orders_expedition_id := cxGrid1DBBandedTableView1orders_expedition_id.DataBinding.Field.Value;

  if orders_expedition_id <> -9 then begin
    fmOrdersExpeditionAdd := TfmOrdersExpeditionAdd.Create(Application, 1, ADOConnOrdersExpedition, Ftype_orders_expedition);
    fmOrdersExpeditionAdd._UpdateOrdersExpedition := orders_expedition_id;
    if fmOrdersExpeditionAdd.ShowModal = mrOk then
      RefreshQueryGrid(cxGrid1DBBandedTableView1, cxGrid1DBBandedTableView1.DataController.KeyFieldNames);
  end;
end;

{$REGION 'Фильтр по всем записям'}
procedure TfmOrdersExpedition.dxBarButton_FilterRecords1Click(Sender: TObject);
begin
  cxGrid1DBBandedTableView1.Filtering.ColumnFilteredItemsList := not dxBarButton_FilterRecords1.Down;
end;
{$ENDREGION 'Фильтр по всем записям'}

procedure TfmOrdersExpedition.dxBarButton1Click(Sender: TObject);
var
  orders_expedition_id : integer;
begin
  // Копировать
  orders_expedition_id := -9;
  if not Query_OrdersExpedition.Eof then
    orders_expedition_id := cxGrid1DBBandedTableView1orders_expedition_id.DataBinding.Field.Value;

  if orders_expedition_id <> -9 then begin
    fmOrdersExpeditionAdd := TfmOrdersExpeditionAdd.Create(Application, 0, ADOConnOrdersExpedition, Ftype_orders_expedition);
    fmOrdersExpeditionAdd._UpdateOrdersExpedition := orders_expedition_id;
    if fmOrdersExpeditionAdd.ShowModal = mrOk then
      RefreshQueryGrid(cxGrid1DBBandedTableView1, cxGrid1DBBandedTableView1.DataController.KeyFieldNames, fmOrdersExpeditionAdd._GetOrdersExpeditionID);
  end;
end;

procedure TfmOrdersExpedition.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TfmOrdersExpedition.FormDestroy(Sender: TObject);
begin
  StoreRegistryDate(rgSave, '\Software\Lis1\DateTime\Agree', Fdate1, Fdate2);
  StoreRegistryGrid(rgSave, '\Software\Lis1\OrdersExpedition_Grids', cxGrid1DBBandedTableView1);
end;

end.
