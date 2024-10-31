unit Currency;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, ADODB, Menus, ImgList, ComCtrls, ToolWin, StdCtrls, Variants, Default,
  DBCtrls, Buttons, cxGridCustomTableView, cxGridTableView,
  cxGridBandedTableView, cxGridDBBandedTableView, cxClasses, cxControls,
  cxGridCustomView, ExtCtrls, cxGridLevel, cxGrid, cxPropertiesStore,
  cxDBEdit, cxContainer, cxEdit, cxTextEdit, cxMaskEdit, cxDropDownEdit,
  cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, cxStyles, cxCustomData, cxGraphics, cxFilter, cxData, cxDataStorage,
  cxDBData, cxCalendar, cxPC, dxBar, dxBarExtDBItems, period, Filter, DBClient, Other,
  cxCurrencyEdit, cxLookAndFeels, cxLookAndFeelPainters, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee,
  dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMetropolis, dxSkinMetropolisDark, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinPumpkin,
  dxSkinSeven, dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus, dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008,
  dxSkinTheAsphaltWorld, dxSkinsDefaultPainters, dxSkinValentine, dxSkinVS2010, dxSkinWhiteprint, dxSkinXmas2008Blue, dxSkinscxPCPainter,
  dxBarBuiltInMenu, cxNavigator, dxSkinsdxBarPainter, dxSkinOffice2016Colorful, dxSkinOffice2016Dark, dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark, dxSkinVisualStudio2013Light,
  System.ImageList, dxSkinTheBezier, cxDataControllerConditionalFormattingRulesManagerDialog, cxImageList, dxSkinOffice2019Colorful, dxDateRanges, dxSkinsForm,
  dxScrollbarAnnotations, dxCore;

type
  TfmCurrency = class(TForm)
    ADOCurrency: TADOConnection;
    DS_Currency: TDataSource;
    DS_Exchange: TDataSource;
    BitBtn1: TBitBtn;
    Query_Exchange: TADOQuery;
    cxPropertiesStore1: TcxPropertiesStore;
    Query_Currency: TADOQuery;
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
    dxBarManager1: TdxBarManager;
    dxBarManager1Bar1: TdxBar;
    dxBarButton1: TdxBarButton;
    dxBarButton2: TdxBarButton;
    dxBarButton3: TdxBarButton;
    dxBarButton4: TdxBarButton;
    dxBarSubItem2: TdxBarSubItem;
    dxBarButton13: TdxBarButton;
    dxBarButton14: TdxBarButton;
    dxBarButton15: TdxBarButton;
    dxBarPopupMenu1: TdxBarPopupMenu;
    dxBarLookupCombo1: TdxBarLookupCombo;
    dxBarButton5: TdxBarButton;
    dxBarButton6: TdxBarButton;
    cxStyle1: TcxStyle;
    Panel1: TPanel;
    cxTabControl1: TcxTabControl;
    cxGrid1: TcxGrid;
    cxGrid1DBBandedTableView1: TcxGridDBBandedTableView;
    cxGrid1DBBandedTableView1exchange_id: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1currency_id: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1exchange_val: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1exchange_date: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1set_exchange_day: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1exchange_year: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1exchange_month: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1exchange_month_int: TcxGridDBBandedColumn;
    cxGrid1Level1: TcxGridLevel;
    dxBarButton7: TdxBarButton;
    cxImageList1: TcxImageList;
    dxSkinController1: TdxSkinController;
    cxStyle_WhiteColor: TcxStyle;
    procedure ADOCurrencyExecuteComplete(Connection: TADOConnection; RecordsAffected: Integer; const Error: Error; var EventStatus: TEventStatus; const Command: _Command; const Recordset: _Recordset);
    procedure cxGrid1DBBandedTableView1FocusedItemChanged(Sender: TcxCustomGridTableView; APrevFocusedItem, AFocusedItem: TcxCustomGridTableItem);
    procedure dxBarButton7Click(Sender: TObject);
    procedure cxGrid1DBBandedTableView1CustomDrawCell(Sender: TcxCustomGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
    procedure dxBarButton6Click(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure dxBarButton5Click(Sender: TObject);
    procedure dxBarButton14Click(Sender: TObject);
    procedure dxBarButton13Click(Sender: TObject);
    procedure dxBarButton15Click(Sender: TObject);
    procedure dxBarButton4Click(Sender: TObject);
    procedure cxTabControl1Change(Sender: TObject);
    procedure dxBarButton2Click(Sender: TObject);
    procedure dxBarButton3Click(Sender: TObject);
    procedure dxBarButton1Click(Sender: TObject);
    procedure dxBarLookupCombo1CloseUp(Sender: TObject);
    procedure cxGrid1DBBandedTableView1CustomDrawColumnHeader(Sender: TcxGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxGridColumnHeaderViewInfo; var ADone: Boolean);
    procedure cxGrid1DBBandedTableView1DataControllerFilterChanged(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cxGrid1DBBandedTableView1KeyPress(Sender: TObject; var Key: Char);
  private
    procedure RefreshExchange(exchange_id : integer);
    procedure SetPeriodDate1(const Value: TDateTime);
    procedure SetPeriodDate2(const Value: TDateTime);

  public
    Fdate1, Fdate2 : TDateTime;
    constructor Create(App:TApplication;flag:boolean;usr_pwd:PUser_pwd);
  published
    property PeriodDate1: TDateTime read FDate1 write SetPeriodDate1;
    property PeriodDate2: TDateTime read FDate2 write SetPeriodDate2;
  end;

function CreateWndCurrency(AppHand: THandle; flag: boolean; usr_pwd: PUser_pwd) : Variant; export;

var
  fmCurrency  : TfmCurrency;

implementation
   uses CurrencyAdd, ShellApi, Raznoe;

{$R *.DFM}

function CreateWndCurrency(AppHand: THandle; flag: boolean; usr_pwd: PUser_pwd) : Variant;
begin
  Application.Handle := AppHand;
  fmCurrency := TfmCurrency.Create(Application, flag, usr_pwd);
  with fmCurrency do
   try
    if ShowModal=mrOK then result := VarArrayOf([-5])
    else result := VarArrayOf([-9]);
  finally
    Free;
  end;
end;

constructor TfmCurrency.Create(App: TApplication; flag: boolean; usr_pwd: PUser_pwd);
var Date1, Date2 : TDateTime;
               Q : TADOQuery;
begin
  Screen.Cursor := crHourglass;
  inherited Create(App);
  LoadRegistryDate_('\Software\Lis1\DateTime\Currency', Date1, Date2);
  PeriodDate1 := Date1;
  PeriodDate2 := Date2;

  ADOCurrency.Connected := False;
  ADOCurrency.ConnectionString := 'Persist Security Info=True;Provider=SQLOLEDB.1;User ID='+usr_pwd^.user_name+';Password='+usr_pwd^.user_pass+';Initial Catalog='+usr_pwd^.catalog+';Data Source='+usr_pwd^.server+';';
  ADOCurrency.Connected := True;

  Query_Currency.Open;
  dxBarLookupCombo1.KeyValue := Query_Currency.FieldByName('currency_id').AsInteger;

  Q := TADOQuery.Create(nil);
  Q.Connection := ADOCurrency;
  Q.Filtered := True;
  Q.Close;
  Q.SQL.Clear;
  Q.SQL.Add('SELECT min(sss) as exchange_date FROM' +
            '  (SELECT sss =  row_number() OVER (order by exchange_date)  + CONVERT(Datetime, ''20220101'', 104) - 1, exchange_date as www ' +
            '   FROM view_exchange_new WHERE currency_id = :currency_id AND set_exchange_day = 1 AND exchange_date >= ''20220101'') x ' +
            'WHERE sss <> www');

  Query_Currency.First;
  while not Query_Currency.Eof do begin
    Q.Close;
    Q.Parameters.ParamByName('currency_id').Value := Query_Currency.FieldByName('currency_id').AsInteger;
    Q.Open;
    if (Q.RecordCount > 0) and (Q.FieldByName('exchange_date').Value <> null) then begin
      Application.MessageBox('Не задан курс для некоторых дат' + #13 + 'Просмотреть список дат можно нажав кнопку "Поиск пропущенных дат"', 'Внимание', MB_OK+ MB_ICONWARNING);
      break;
    end;
    Query_Currency.Next;
  end;
  Q.Free;

  dxBarLookupCombo1CloseUp(nil);
  Query_Exchange.Parameters.ParamByName('currency_id').Value := Query_Currency.FieldByName('currency_id').AsInteger;
  Query_Exchange.Parameters.ParamByName('date_period1').Value := Fdate1;
  Query_Exchange.Parameters.ParamByName('date_period2').Value := Fdate2;
  Query_Exchange.Open;
  cxGrid1DBBandedTableView1exchange_date.Visible := False;
  cxTabControl1.TabIndex := 0;
  cxTabControl1.OnChange(nil);

  SetUsersModuleRights(self, ADOCurrency);

  Screen.Cursor := crDefault;
end;

procedure TfmCurrency.cxGrid1DBBandedTableView1CustomDrawCell(Sender: TcxCustomGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
  if (AViewInfo.GridRecord.Selected) or (AViewInfo.GridRecord.Focused) then begin
    ACanvas.Brush.Color := clNavy;
    ACanvas.Font.Color := clWhite;
    if AViewInfo.Focused then ACanvas.Brush.Color := clBlue;
  end;
end;

procedure TfmCurrency.cxGrid1DBBandedTableView1CustomDrawColumnHeader(Sender: TcxGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxGridColumnHeaderViewInfo; var ADone: Boolean);
begin
  DrawcxGridColumnOnFocused(Sender, ACanvas, AViewInfo);
end;

procedure TfmCurrency.cxGrid1DBBandedTableView1DataControllerFilterChanged(Sender: TObject);
begin
  DrawcxGridColumnOnFiltered(Sender);
end;

procedure TfmCurrency.cxGrid1DBBandedTableView1FocusedItemChanged(Sender: TcxCustomGridTableView; APrevFocusedItem, AFocusedItem: TcxCustomGridTableItem);
begin
  Sender.Painter.Invalidate;
end;

procedure TfmCurrency.cxGrid1DBBandedTableView1KeyPress(Sender: TObject; var Key: Char);
begin
  FilterColumnGridOnKeyPress(TcxGridDBBandedTableView(TcxGridSite(Sender).GridView), Key);
end;

procedure TfmCurrency.SetPeriodDate1(const Value: TDateTime);
begin
  FDate1 := Value;
  dxBarButton5.Caption := PeriodToStr(FDate1, FDate2, True);
end;

procedure TfmCurrency.SetPeriodDate2(const Value: TDateTime);
begin
  FDate2 := Value;
  dxBarButton5.Caption := PeriodToStr(FDate1, FDate2, True);
end;

procedure TfmCurrency.cxTabControl1Change(Sender: TObject);
begin
  Screen.Cursor := crHourglass;
  Query_Exchange.Close;
  Query_Exchange.SQL.Clear;
  case cxTabControl1.TabIndex of
    0 : begin
          Query_Exchange.SQL.Add('SELECT * FROM view_exchange_new WHERE currency_id=:currency_id AND set_exchange_day = 1 AND exchange_date >= :date_period1 AND exchange_date < = :date_period2 ');
          cxGrid1DBBandedTableView1exchange_date.Visible := True;
        end;
    1 : begin
          Query_Exchange.SQL.Add('SELECT * FROM view_exchange_new WHERE currency_id=:currency_id AND (set_exchange_day = 0 OR set_exchange_day IS NULL) AND exchange_date >= :date_period1 AND exchange_date < = :date_period2');
          cxGrid1DBBandedTableView1exchange_date.Visible := False;
        end;
  end;
  Query_Exchange.Parameters.ParamByName('currency_id').Value := dxBarLookupCombo1.KeyValue;
  Query_Exchange.Parameters.ParamByName('date_period1').Value := Fdate1;
  Query_Exchange.Parameters.ParamByName('date_period2').Value := Fdate2;
  Query_Exchange.Open;
  Screen.Cursor := crDefault;
end;

procedure TfmCurrency.ADOCurrencyExecuteComplete(Connection: TADOConnection; RecordsAffected: Integer; const Error: Error; var EventStatus: TEventStatus; const Command: _Command; const Recordset: _Recordset);
begin
  if EventStatus = esErrorsOccured then begin
    Application.MessageBox(PWideChar(error.Description), 'Внимание', MB_OK);
    ShowTextMessage('', True);
  end;
end;

procedure TfmCurrency.BitBtn1Click(Sender: TObject);
begin
  Close;
end;


procedure TfmCurrency.RefreshExchange(exchange_id : integer);
begin
  Screen.Cursor := crHourglass;
  dxBarLookupCombo1.SetFocus;
  Query_Exchange.Close;
  Query_Exchange.Open;
  Query_Exchange.Locate('exchange_id', exchange_id, [loCaseInsensitive]);
  Screen.Cursor := crDefault;
end;

procedure TfmCurrency.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;


procedure TfmCurrency.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  SavePositionForm(self, '\Software\Lis1\DateTime\Currency', Fdate1, Fdate2);
end;

procedure TfmCurrency.dxBarButton13Click(Sender: TObject);
begin
  SetdxDBGridColumns(cxGrid1DBBandedTableView1);
end;

procedure TfmCurrency.dxBarButton14Click(Sender: TObject);
begin
  cxGrid1DBBandedTableView1.OptionsView.GroupByBox := not cxGrid1DBBandedTableView1.OptionsView.GroupByBox;
end;

procedure TfmCurrency.dxBarButton15Click(Sender: TObject);
begin
  PrintcxGrid(cxGrid1DBBandedTableView1);
end;

procedure TfmCurrency.dxBarButton1Click(Sender: TObject);
begin
  fmCurrencyAdd := TfmCurrencyAdd.Create(Application, 0, cxTabControl1.TabIndex, dxBarLookupCombo1.KeyValue);
  if fmCurrencyAdd.ShowModal=mrOK then RefreshExchange(fmCurrencyAdd._GetExchangeId);
end;

procedure TfmCurrency.dxBarButton2Click(Sender: TObject);
begin
  fmCurrencyAdd := TfmCurrencyAdd.Create(Application, 1, cxTabControl1.TabIndex , dxBarLookupCombo1.KeyValue);
  fmCurrencyAdd._SetExchange := Query_Exchange.FieldByName('exchange_id').AsInteger ;
  if fmCurrencyAdd.ShowModal = mrOK then RefreshExchange(fmCurrencyAdd._GetExchangeId);
end;

procedure TfmCurrency.dxBarButton3Click(Sender: TObject);
var                i : integer;
   SP_ExchangeModify : TADOStoredProc;
begin
  if cxGrid1DBBandedTableView1.Controller.SelectedRowCount = 0 then begin
    Application.MessageBox('Нет выделенных курсов','Внимание',MB_OK);
    Exit;
  end;
  if Application.MessageBox('Вы уверены, что хотите удалить выделенные курсы?','ВНИМЕНИЕ',MB_OKCANCEL)=IDOK then begin
    Screen.Cursor := crHourglass;

    SP_ExchangeModify := TADOStoredProc.Create(nil);
    SP_ExchangeModify.Connection := ADOCurrency;
    SP_ExchangeModify.ProcedureName := 'sp_exchange_new_modify;1';
    SP_ExchangeModify.Parameters.Refresh;

    for i:=0 to cxGrid1DBBandedTableView1.DataController.GetSelectedCount -1 do begin
      SP_ExchangeModify.Close;
      SP_ExchangeModify.Parameters.ParamByName('@type_action').Value := 2;
      SP_ExchangeModify.Parameters.ParamByName('@exchange_id').Value := cxGrid1DBBandedTableView1.Controller.SelectedRows[i].Values[cxGrid1DBBandedTableView1exchange_id.Index];
      try
        SP_ExchangeModify.ExecProc;
      except
      end;
    end;
    SP_ExchangeModify.Free;

    RefreshExchange(0);
    Screen.Cursor := crDefault;
  end;
end;

procedure TfmCurrency.dxBarButton4Click(Sender: TObject);
begin
  RefreshQueryGrid(cxGrid1DBBandedTableView1, 'exchange_id', cxGrid1DBBandedTableView1exchange_id.DataBinding.Field.AsInteger);
end;

procedure TfmCurrency.dxBarButton5Click(Sender: TObject);
begin
  fmPeriod := TfmPeriod.Create(Application, Fdate1, Fdate2, 2);
  if fmPeriod.ShowModal=mrOK then begin
    Screen.Cursor := crHourglass;
    PeriodDate1 := fmPeriod._GetMonthBegin;
    PeriodDate2 := fmPeriod._GetMonthEnd;
    Query_Exchange.Close;
    Query_Exchange.Parameters.ParamByName('date_period1').Value := Fdate1;
    Query_Exchange.Parameters.ParamByName('date_period2').Value := Fdate2;
    Query_Exchange.Open;
    Screen.Cursor := crDefault;
  end;
end;

procedure TfmCurrency.dxBarButton6Click(Sender: TObject);
begin
  fmCurrencyAdd := TfmCurrencyAdd.Create(Application, 0, 99, dxBarLookupCombo1.KeyValue);
  if fmCurrencyAdd.ShowModal = mrOK then RefreshExchange(fmCurrencyAdd._GetExchangeId);
end;

procedure TfmCurrency.dxBarButton7Click(Sender: TObject);
var Q        : TADOQuery;
    ClientDS : TClientDataSet;
    in_date  : TDateTime;
begin
  Screen.Cursor := crHourglass;
  Q := TADOQuery.Create(nil);
  Q.Connection := ADOCurrency;
  Q.Close;
  Q.SQL.Clear;
  Q.SQL.Add('SELECT DISTINCT exchange_date FROM view_exchange_new ' +
            'WHERE currency_id = :currency_id' +
            ' AND set_exchange_day = 1 ' +
            ' AND exchange_date >= ''20220101''');

  ClientDS := TClientDataSet.Create(nil);

  ClientDS.FieldDefs.Add('brief_name',    ftString, 6);
  ClientDS.FieldDefs.Add('exchange_date', ftDate     );
  ClientDS.FieldDefs.Add('id',            ftAutoInc  );

  ClientDS.CreateDataSet;

  Query_Currency.First;

  while not Query_Currency.Eof do begin
    in_date := EncodeDate(2022, 01, 01);
    Q.Close;
    Q.Parameters.ParamByName('currency_id').Value := Query_Currency.FieldByName('currency_id').AsInteger;
    Q.Open;

    while not Q.Eof do begin
      if Q.FieldByName('exchange_date').AsDateTime = in_date then begin
        Q.Next;
      end else begin
        ClientDS.Append;
        ClientDS.FieldByName('exchange_date').AsDateTime  := in_date;
        ClientDS.FieldByName('brief_name'  ).AsString   := Query_Currency.FieldByName('brief_name').AsString;
        ClientDS.Post;
      end;
      in_date := in_date + 1;
    end;

    if (Q.Eof) and (in_date <= Date) then begin
      while in_date <= Date do begin
        ClientDS.Append;
        ClientDS.FieldByName('exchange_date').AsDateTime  := in_date;
        ClientDS.FieldByName('brief_name'  ).AsString   := Query_Currency.FieldByName('brief_name').AsString;
        ClientDS.Post;
        in_date := in_date + 1;
      end;
    end;
    Query_Currency.Next;
  end;
  Query_Currency.Locate('currency_id', dxBarLookupCombo1.KeyValue, [loCaseInsensitive]);
  fmFilter := TfmFilter.Create(0, Q, 'exchange_id', 'exchange_date', 'brief_name');
  fmFilter.SetDateSearchNotRate(ClientDS,'id','exchange_date','brief_name');
  fmFilter.ShowModal;

  Q.Free;
  ClientDS.Free;
  Screen.Cursor := crDefault;
end;

procedure TfmCurrency.dxBarLookupCombo1CloseUp(Sender: TObject);
begin
  Screen.Cursor := crHourglass;
  Query_Exchange.Close;
  Query_Exchange.Parameters.ParamByName('currency_id').Value := dxBarLookupCombo1.KeyValue;
  Query_Exchange.Parameters.ParamByName('date_period1').Value := Fdate1;
  Query_Exchange.Parameters.ParamByName('date_period2').Value := Fdate2;
  Query_Exchange.Open;
  Screen.Cursor := crDefault;
end;

end.
