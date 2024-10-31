unit MonitorEvent;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, dxSkinsCore, dxSkinBlack, dxSkinBlue,
  dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMetropolis,
  dxSkinMetropolisDark, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue,
  dxSkinOffice2010Silver, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray,
  dxSkinOffice2013White, dxSkinOffice2016Colorful, dxSkinOffice2016Dark,
  dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus,
  dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008,
  dxSkinTheAsphaltWorld, dxSkinTheBezier, dxSkinsDefaultPainters,
  dxSkinValentine, dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue, cxGraphics, cxControls, cxLookAndFeels, DateUtils,
  cxLookAndFeelPainters, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, cxNavigator, Data.DB, cxDBData, dxBar, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridBandedTableView,
  cxGridDBBandedTableView, cxGridCustomView, cxGrid, cxClasses,
  cxPropertiesStore, System.ImageList, Vcl.ImgList, cxImageList, Data.Win.ADODB, cxDataControllerConditionalFormattingRulesManagerDialog, Vcl.ExtCtrls, dxDateRanges;

type
  TfmMonitorEvent = class(TForm)
    cxPropertiesStore1: TcxPropertiesStore;
    dxBarManager1: TdxBarManager;
    dxBarManager1Bar1: TdxBar;
    dxBarButton3: TdxBarButton;
    dxBarSubItem1: TdxBarSubItem;
    dxBarButton4: TdxBarButton;
    dxBarButton5: TdxBarButton;
    dxBarButton6: TdxBarButton;
    dxBarSubItem2: TdxBarSubItem;
    dxBarButton7: TdxBarButton;
    dxBarButton8: TdxBarButton;
    dxBarButton9: TdxBarButton;
    dxBarButton10: TdxBarButton;
    cxGrid1: TcxGrid;
    cxGrid1DBBandedTableView1: TcxGridDBBandedTableView;
    cxGrid1DBBandedTableView1monitor_event_server_id: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1global_id: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1object_physic_name: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1object_logic_name: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1action_date: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1users_id: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1FIO_users: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1users_name: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1computer_name: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1action_name: TcxGridDBBandedColumn;
    cxGrid1Level1: TcxGridLevel;
    dxBarPopupMenu1: TdxBarPopupMenu;
    cxImageList1: TcxImageList;
    Connection_MonitorEvent: TADOConnection;
    Query_MonitorEvent: TADOQuery;
    DS_MonitorEvent: TDataSource;
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
    cxStyle_BlueBold: TcxStyle;
    cxGrid1DBBandedTableView1session_uid: TcxGridDBBandedColumn;
    dxBarButton1: TdxBarButton;
    dxBarButton2: TdxBarButton;
    cxGrid2: TcxGrid;
    cxGrid2DBBandedTableView1: TcxGridDBBandedTableView;
    cxGrid2DBBandedTableView1monitor_event_server_id: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1action_date: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1column_name: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1old_value: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1new_value: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1action_name: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1session_uid: TcxGridDBBandedColumn;
    cxGrid2Level1: TcxGridLevel;
    Splitter5: TSplitter;
    DS_MonitorEventHistory: TDataSource;
    Query_MonitorEventHistory: TADOQuery;
    dxBarPopupMenu2: TdxBarPopupMenu;
    dxBarButton11: TdxBarButton;
    dxBarButton12: TdxBarButton;
    dxBarSubItem3: TdxBarSubItem;
    dxBarButton13: TdxBarButton;
    dxBarButton14: TdxBarButton;
    dxBarButton15: TdxBarButton;
    dxBarButton16: TdxBarButton;
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure dxBarButton4Click(Sender: TObject);
    procedure cxGrid1DBBandedTableView1DataControllerFilterChanged(Sender: TObject);
    procedure cxGrid1DBBandedTableView1CustomDrawCell(Sender: TcxCustomGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
    procedure cxGrid1DBBandedTableView1CustomDrawColumnHeader(Sender: TcxGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxGridColumnHeaderViewInfo; var ADone: Boolean);
    procedure cxGrid1DBBandedTableView1FocusedItemChanged(Sender: TcxCustomGridTableView; APrevFocusedItem, AFocusedItem: TcxCustomGridTableItem);
    procedure cxGrid1DBBandedTableView1KeyPress(Sender: TObject; var Key: Char);
    procedure dxBarButton5Click(Sender: TObject);
    procedure dxBarButton9Click(Sender: TObject);
    procedure dxBarButton6Click(Sender: TObject);
    procedure dxBarButton8Click(Sender: TObject);
    procedure dxBarButton7Click(Sender: TObject);
    procedure dxBarButton1Click(Sender: TObject);
    procedure dxBarButton2Click(Sender: TObject);
    procedure cxGrid1DBBandedTableView1SelectionChanged(Sender: TcxCustomGridTableView);
    procedure dxBarButton11Click(Sender: TObject);
    procedure dxBarButton15Click(Sender: TObject);
    procedure dxBarButton16Click(Sender: TObject);
    procedure dxBarButton13Click(Sender: TObject);
    procedure dxBarButton14Click(Sender: TObject);
    procedure cxGrid2DBBandedTableView1DataControllerFilterChanged(Sender: TObject);
    procedure cxGrid2DBBandedTableView1CustomDrawCell(Sender: TcxCustomGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
    procedure cxGrid2DBBandedTableView1CustomDrawColumnHeader(Sender: TcxGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxGridColumnHeaderViewInfo; var ADone: Boolean);
    procedure cxGrid2DBBandedTableView1FocusedItemChanged(Sender: TcxCustomGridTableView; APrevFocusedItem, AFocusedItem: TcxCustomGridTableItem);
    procedure cxGrid2DBBandedTableView1KeyPress(Sender: TObject; var Key: Char);
    procedure dxBarButton3Click(Sender: TObject);
  private
    Fstr_global_id,
        Fstr_value  : string;
    Fdate1, Fdate2  : TDateTime;
  public
    constructor Create(AOwner: TApplication; connect: TADOConnection; str_form, str_global_id: string);
  end;

var
  fmMonitorEvent: TfmMonitorEvent;

function CreateWndMonitorEvent(AppHand: THandle; connect: TADOConnection; str_form, str_global_id: string): variant; export;

implementation

uses Raznoe, Period, Default;

{$R *.dfm}

function CreateWndMonitorEvent(AppHand: THandle; connect: TADOConnection; str_form, str_global_id: string): variant;
begin
  Application.Handle := AppHand;
  try
    fmMonitorEvent := TfmMonitorEvent.Create(Application, connect, str_form, str_global_id);
    if fmMonitorEvent.ShowModal = mrOk then
      result := VarArrayOf([-9, -9])
    else
      result := '';
  finally
    fmMonitorEvent.Free;
  end;
end;

constructor TfmMonitorEvent.Create(AOwner: TApplication; connect: TADOConnection; str_form, str_global_id: string);
begin
  Screen.Cursor := crHourglass;

  inherited Create(AOwner);

  Connection_MonitorEvent.ConnectionString := connect.ConnectionString;
  Connection_MonitorEvent.Connected := True;

  if Connection_MonitorEvent.Connected then begin
    dxBarSubItem1.Caption := StoreRegistryDate(rgLoad, '\Software\Lis1\DateTime\MonitorEvent', Fdate1, Fdate2);

    Caption := Caption + ' - ' + str_form + ' [' + str_global_id + ']';

    Fstr_global_id := str_global_id;
    Fstr_value     := '';
    Fdate1 := IncMonth(Date, -3);
    Fdate2 := IncDay(Date,   +1);

    dxBarSubItem1.Caption := FormatDateTime('mmm yy', Fdate1) + ' - ' + FormatDateTime('mmm yy', Fdate2);

    Query_MonitorEvent.Parameters.ParamByName('str_global_id').Value := Fstr_global_id;
    Query_MonitorEvent.Parameters.ParamByName('str_value').Value     := Fstr_value;
    Query_MonitorEvent.Parameters.ParamByName('date1').Value         := Fdate1;
    Query_MonitorEvent.Parameters.ParamByName('date2').Value         := Fdate2;
    Query_MonitorEvent.Open;

    if cxGrid1DBBandedTableView1session_uid.DataBinding.Field <> nil then
      if cxGrid1DBBandedTableView1session_uid.DataBinding.Field.Value <> null then begin
        Query_MonitorEventHistory.Parameters.ParamByName('session_uid').Value := Query_MonitorEvent.FieldByName('session_uid').Value;
        Query_MonitorEventHistory.Open;
      end;

    StoreRegistryGrid(rgLoad, '\Software\Lis1\MonitorEvent_Grids', cxGrid1DBBandedTableView1);
    StoreRegistryGrid(rgLoad, '\Software\Lis1\MonitorEvent_Grids', cxGrid2DBBandedTableView1);

    MonitorEventFormOpen('OPEN_FORM', self.Name, Connection_MonitorEvent, -9);
  end;

  Screen.Cursor := crDefault;
end;

procedure TfmMonitorEvent.cxGrid1DBBandedTableView1CustomDrawCell(Sender: TcxCustomGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
  if AViewInfo.GridRecord.Selected or AViewInfo.GridRecord.Focused then begin
    ACanvas.Brush.Color := clNavy;
    ACanvas.Font.Color := clWhite;
    if AViewInfo.Focused then ACanvas.Brush.Color := clBlue;
  end;
end;

procedure TfmMonitorEvent.cxGrid1DBBandedTableView1CustomDrawColumnHeader(Sender: TcxGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxGridColumnHeaderViewInfo; var ADone: Boolean);
begin
  if AViewInfo.Column.Focused then begin
    ACanvas.Brush.Color := clNavy;
    ACanvas.Font.Color := clWhite;
  end;
end;

procedure TfmMonitorEvent.cxGrid1DBBandedTableView1DataControllerFilterChanged(Sender: TObject);
begin
  DrawcxGridColumnOnFiltered(cxGrid1DBBandedTableView1);
end;

procedure TfmMonitorEvent.cxGrid1DBBandedTableView1FocusedItemChanged(Sender: TcxCustomGridTableView; APrevFocusedItem, AFocusedItem: TcxCustomGridTableItem);
begin
  Sender.Painter.Invalidate;
end;

procedure TfmMonitorEvent.cxGrid1DBBandedTableView1KeyPress(Sender: TObject; var Key: Char);
begin
  FilterColumnGridOnKeyPress(cxGrid1DBBandedTableView1, Key);
end;

procedure TfmMonitorEvent.cxGrid1DBBandedTableView1SelectionChanged(Sender: TcxCustomGridTableView);
begin
  if cxGrid1DBBandedTableView1session_uid.DataBinding.Field <> nil then
    if cxGrid1DBBandedTableView1session_uid.DataBinding.Field.Value <> null then begin
      Query_MonitorEventHistory.Close;
      Query_MonitorEventHistory.Parameters.ParamByName('session_uid').Value := Query_MonitorEvent.FieldByName('session_uid').Value;
      Query_MonitorEventHistory.Open;
    end;
end;

procedure TfmMonitorEvent.cxGrid2DBBandedTableView1CustomDrawCell(Sender: TcxCustomGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
  if AViewInfo.GridRecord.Selected or AViewInfo.GridRecord.Focused then begin
    ACanvas.Brush.Color := clNavy;
    ACanvas.Font.Color := clWhite;
    if AViewInfo.Focused then ACanvas.Brush.Color := clBlue;
  end;
end;

procedure TfmMonitorEvent.cxGrid2DBBandedTableView1CustomDrawColumnHeader(Sender: TcxGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxGridColumnHeaderViewInfo; var ADone: Boolean);
begin
  if AViewInfo.Column.Focused then begin
    ACanvas.Brush.Color := clNavy;
    ACanvas.Font.Color := clWhite;
  end;
end;

procedure TfmMonitorEvent.cxGrid2DBBandedTableView1DataControllerFilterChanged(Sender: TObject);
begin
  DrawcxGridColumnOnFiltered(cxGrid2DBBandedTableView1);
end;

procedure TfmMonitorEvent.cxGrid2DBBandedTableView1FocusedItemChanged(Sender: TcxCustomGridTableView; APrevFocusedItem, AFocusedItem: TcxCustomGridTableItem);
begin
  Sender.Painter.Invalidate;
end;

procedure TfmMonitorEvent.cxGrid2DBBandedTableView1KeyPress(Sender: TObject; var Key: Char);
begin
  FilterColumnGridOnKeyPress(cxGrid2DBBandedTableView1, Key);
end;

procedure TfmMonitorEvent.dxBarButton4Click(Sender: TObject);
begin
  fmPeriod := TfmPeriod.Create(Application, Fdate1, Fdate2, 3);
  if fmPeriod.ShowModal = mrOK then begin
    Screen.Cursor := crHourglass;
    Fdate1 := fmPeriod._GetMonth;
    Fdate2 := IncMonth(Fdate1, 1) - 1;
    dxBarSubItem1.Caption := FormatDateTime('mmmm yyyy', Fdate1);

    Query_MonitorEvent.Close;
    Query_MonitorEvent.Parameters.ParamByName('str_global_id').Value := Fstr_global_id;
    Query_MonitorEvent.Parameters.ParamByName('str_value').Value     := Fstr_value;
    Query_MonitorEvent.Parameters.ParamByName('date1').Value         := Fdate1;
    Query_MonitorEvent.Parameters.ParamByName('date2').Value         := Fdate2;
    Query_MonitorEvent.Open;

    if cxGrid1DBBandedTableView1session_uid.DataBinding.Field <> nil then
      if cxGrid1DBBandedTableView1session_uid.DataBinding.Field.Value <> null then begin
        Query_MonitorEventHistory.Close;
        Query_MonitorEventHistory.Parameters.ParamByName('session_uid').Value := Query_MonitorEvent.FieldByName('session_uid').Value;
        Query_MonitorEventHistory.Open;
      end;

    Screen.Cursor := crDefault;
  end;
end;

procedure TfmMonitorEvent.dxBarButton5Click(Sender: TObject);
begin
  fmPeriod := TfmPeriod.Create(Application, Fdate1, Fdate2, 2);
  if fmPeriod.ShowModal = mrOK then begin
    Screen.Cursor := crHourglass;
    Fdate1 := fmPeriod._GetMonthBegin;
    Fdate2 := fmPeriod._GetMonthEnd;
    dxBarSubItem1.Caption := FormatDateTime('mmm yy', Fdate1) + ' - ' + FormatDateTime('mmm yy', Fdate2);

    Query_MonitorEvent.Close;
    Query_MonitorEvent.Parameters.ParamByName('str_global_id').Value  := Fstr_global_id;
    Query_MonitorEvent.Parameters.ParamByName('str_value').Value      := Fstr_value;
    Query_MonitorEvent.Parameters.ParamByName('date1').Value          := Fdate1;
    Query_MonitorEvent.Parameters.ParamByName('date2').Value          := Fdate2;
    Query_MonitorEvent.Open;

    if cxGrid1DBBandedTableView1session_uid.DataBinding.Field <> nil then
      if cxGrid1DBBandedTableView1session_uid.DataBinding.Field.Value <> null then begin
        Query_MonitorEventHistory.Close;
        Query_MonitorEventHistory.Parameters.ParamByName('session_uid').Value := Query_MonitorEvent.FieldByName('session_uid').Value;
        Query_MonitorEventHistory.Open;
      end;

    Screen.Cursor := crDefault;
  end;
end;

procedure TfmMonitorEvent.dxBarButton11Click(Sender: TObject);
var str_date1,
    str_date2,
      err_str : string;
     dt_date1,
     dt_date2 : TDateTime;
begin
  err_str   := '';
  str_date1 := DateToStr(Fdate1);
  str_date2 := DateToStr(Fdate2);

  if not InputQuery('Параметр поиска', 'Введите параметр поиска "Старое, Новое значени":', Fstr_value) then
    Exit;
  if Fstr_value = '' then begin
    Fstr_value := '';
    err_str := err_str + 'Введено пустое значение для поиска.' + #9#13;
  end;

  if not InputQuery('Параметр поиска', 'Введите дату с:', str_date1) then
    Exit;
  if not TryStrToDate(str_date1, dt_date1) then
    err_str := err_str + 'Начальное значение интервала дат введено не верно.' + #9#13;

  if not InputQuery('Параметр поиска', 'Введите дату по:', str_date2) then
    Exit;
  if not TryStrToDate(str_date2, dt_date2) then
    err_str := err_str + 'Конечное значение интервала дат введено не верно.' + #9#13;

  if Length(err_str) > 0 then begin
    Application.MessageBox(PChar(err_str), 'Ошибка ...', MB_ICONERROR + MB_OK);
    Exit;
  end else begin
    Query_MonitorEvent.Close;
    Query_MonitorEvent.Parameters.ParamByName('str_global_id').Value := Fstr_global_id;
    Query_MonitorEvent.Parameters.ParamByName('str_value').Value     := Fstr_value;
    Query_MonitorEvent.Parameters.ParamByName('date1').Value         := IncDay(dt_date1, -1);
    Query_MonitorEvent.Parameters.ParamByName('date2').Value         := IncDay(dt_date2, +1);
    Query_MonitorEvent.Open;

    if cxGrid1DBBandedTableView1session_uid.DataBinding.Field <> nil then
      if cxGrid1DBBandedTableView1session_uid.DataBinding.Field.Value <> null then begin
        Query_MonitorEventHistory.Close;
        Query_MonitorEventHistory.Parameters.ParamByName('session_uid').Value := Query_MonitorEvent.FieldByName('session_uid').Value;
        Query_MonitorEventHistory.Open;
      end;
  end;

end;

procedure TfmMonitorEvent.dxBarButton15Click(Sender: TObject);
begin
//Фильтр по выделенному
  FiltercxGrid4ListID(cxGrid2DBBandedTableView1);
end;

procedure TfmMonitorEvent.dxBarButton1Click(Sender: TObject);
begin
//Фильтр по выделенному
  FiltercxGrid4ListID(cxGrid1DBBandedTableView1);
end;

procedure TfmMonitorEvent.dxBarButton16Click(Sender: TObject);
begin
//фильтр по всем записям
  cxGrid2DBBandedTableView1.Filtering.ColumnFilteredItemsList := not dxBarButton16.Down;
end;

procedure TfmMonitorEvent.dxBarButton2Click(Sender: TObject);
begin
//фильтр по всем записям
  cxGrid1DBBandedTableView1.Filtering.ColumnFilteredItemsList := not dxBarButton2.Down;
end;

procedure TfmMonitorEvent.dxBarButton3Click(Sender: TObject);
begin
  RefreshQueryGrid(cxGrid1DBBandedTableView1, 'monitor_event_server_id');
end;

procedure TfmMonitorEvent.dxBarButton6Click(Sender: TObject);
begin
//Печать таб. в excel
  case TdxBarButton(Sender).ClickItemLink.Owner.Owner.Tag of
    0 : PrintcxGrid(cxGrid1DBBandedTableView1);
    1 : PrintcxGrid(cxGrid2DBBandedTableView1);
  end;
end;

procedure TfmMonitorEvent.dxBarButton13Click(Sender: TObject);
begin
//Колонки таблицы...
  SetdxDBGridColumns(cxGrid2DBBandedTableView1);
end;

procedure TfmMonitorEvent.dxBarButton7Click(Sender: TObject);
begin
//Колонки таблицы...
  SetdxDBGridColumns(cxGrid1DBBandedTableView1);
end;

procedure TfmMonitorEvent.dxBarButton14Click(Sender: TObject);
begin
//Панель группировок
  cxGrid2DBBandedTableView1.OptionsView.GroupByBox := not cxGrid2DBBandedTableView1.OptionsView.GroupByBox;
end;

procedure TfmMonitorEvent.dxBarButton8Click(Sender: TObject);
begin
//Панель группировок
  cxGrid1DBBandedTableView1.OptionsView.GroupByBox := not cxGrid1DBBandedTableView1.OptionsView.GroupByBox;
end;

procedure TfmMonitorEvent.dxBarButton9Click(Sender: TObject);
begin
  Screen.Cursor := crHourglass;

  if TControl(Sender).Tag = 1 then
    Fdate1 := IncMonth(Fdate1, 1)
  else if TControl(Sender).Tag = 2 then
    Fdate1 := IncMonth(Fdate1, -1);

  Fdate2 := IncMonth(Fdate1, 1) - 1;
  dxBarSubItem1.Caption := FormatDateTime('mmmm yyyy', Fdate1);
  dxBarManager1Bar1.Reset;

  dxBarButton9.Caption  := FormatDateTime('mmmm yyyy', IncMonth(Fdate1,-1));
  dxBarButton10.Caption := FormatDateTime('mmmm yyyy', IncMonth(Fdate1, 1));

  Query_MonitorEvent.Close;
  Query_MonitorEvent.Parameters.ParamByName('str_global_id').Value  := Fstr_global_id;
  Query_MonitorEvent.Parameters.ParamByName('date1').Value          := Fdate1;
  Query_MonitorEvent.Parameters.ParamByName('date2').Value          := Fdate2;
  Query_MonitorEvent.Open;

  if cxGrid1DBBandedTableView1session_uid.DataBinding.Field <> nil then
    if cxGrid1DBBandedTableView1session_uid.DataBinding.Field.Value <> null then begin
      Query_MonitorEventHistory.Close;
      Query_MonitorEventHistory.Parameters.ParamByName('session_uid').Value := Query_MonitorEvent.FieldByName('session_uid').Value;
      Query_MonitorEventHistory.Open;
    end;

  Screen.Cursor := crDefault;
end;

procedure TfmMonitorEvent.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TfmMonitorEvent.FormDestroy(Sender: TObject);
begin
  StoreRegistryGrid(rgSave, '\Software\Lis1\MonitorEvent_Grids', cxGrid1DBBandedTableView1);
  StoreRegistryGrid(rgSave, '\Software\Lis1\MonitorEvent_Grids', cxGrid2DBBandedTableView1);
  StoreRegistryDate(rgSave, '\Software\Lis1\DateTime\MonitorEvent', Fdate1, Fdate2);
end;

end.
