unit TrafficFreeDay;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Default,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxCalendar, cxLabel, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxStyles, cxCustomData,
  cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator, cxDataControllerConditionalFormattingRulesManagerDialog, Data.DB, cxDBData,
  cxCurrencyEdit, dxBar, Data.Win.ADODB, cxGridLevel, cxGridCustomTableView, cxGridTableView, cxGridBandedTableView, cxGridDBBandedTableView,
  cxGridCustomView, cxGrid, cxPropertiesStore, cxBarEditItem, cxClasses, Vcl.ExtCtrls, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint,
  dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMetropolis,
  dxSkinMetropolisDark, dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray,
  dxSkinOffice2013White, dxSkinOffice2016Colorful, dxSkinOffice2016Dark, dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus,
  dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008, dxSkinTheAsphaltWorld, dxSkinTheBezier, dxSkinsDefaultPainters,
  dxSkinValentine, dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark, dxSkinVisualStudio2013Light, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue, dxDateRanges, dxSkinOffice2019Colorful;

type
  TfmTrafficFreeDay = class(TForm)
    dxBarManager1: TdxBarManager;
    dxBarManager1Bar1: TdxBar;
    dxBarButton18: TdxBarButton;
    dxBarSubItem4: TdxBarSubItem;
    dxBarButton19: TdxBarButton;
    dxBarButton20: TdxBarButton;
    dxBarButton21: TdxBarButton;
    dxBarButton22: TdxBarButton;
    cxPropertiesStore1: TcxPropertiesStore;
    cxGrid1: TcxGrid;
    cxGrid1DBBandedTableView1: TcxGridDBBandedTableView;
    cxGrid1DBBandedTableView1fact_track_stat_id: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1num_vagon: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1vagon_id: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1type_park_vagon_name: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1date_otpr: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1firm_customer_name: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1count_stay0: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1count_stay1: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1count_stay2: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1distance2: TcxGridDBBandedColumn;
    cxGrid1Level1: TcxGridLevel;
    Query_Traffic_Free_Day1: TADOQuery;
    DS_Traffic_Free_Day: TDataSource;
    dxBarSubItem5: TdxBarSubItem;
    dxBarButton23: TdxBarButton;
    dxBarButton24: TdxBarButton;
    dxBarButton25: TdxBarButton;
    dxBarPopupMenu1: TdxBarPopupMenu;
    dxBarButton26: TdxBarButton;
    cxGrid1DBBandedTableView1node_begin_name: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1node_operation_name: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1node_end_name: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1poluchgr: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1comment1: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1comment2: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1comment3: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1comment4: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1comment5: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1comment7: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1comment8: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1comment9: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1comment10: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1comment11: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1comment12: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1client_firm_customer_name: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1comment6: TcxGridDBBandedColumn;
    Query_Traffic_Free_Day2: TADOQuery;
    Query_Traffic_Free_Day4: TADOQuery;
    Query_Traffic_Free_Day3: TADOQuery;
    dxBarButton1: TdxBarButton;
    dxBarButton2: TdxBarButton;
    dxBarSubItem1: TdxBarSubItem;
    dxBarButton4: TdxBarButton;
    dxBarButton5: TdxBarButton;
    dxBarButton3: TdxBarButton;
    dxBarButton6: TdxBarButton;
    dxBarButton7: TdxBarButton;
    dxBarButton8: TdxBarButton;
    cxGrid1DBBandedTableView1comment13: TcxGridDBBandedColumn;
    dxBarSubItem2: TdxBarSubItem;
    dxBarButton9: TdxBarButton;
    dxBarButton10: TdxBarButton;
    dxBarButton11: TdxBarButton;
    dxBarButton12: TdxBarButton;
    cxGrid1DBBandedTableView1type_park_name: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1cod_operation_vagon_name_full: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1dispatch_FIO_users: TcxGridDBBandedColumn;
    dxBarButton13: TdxBarButton;
    cxGrid1DBBandedTableView1grpol_name: TcxGridDBBandedColumn;
    dxBarButton14: TdxBarButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure cxGrid1DBBandedTableView1DataControllerFilterChanged(Sender: TObject);
    procedure cxGrid1DBBandedTableView1CustomDrawCell(Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
    procedure cxGrid1DBBandedTableView1CustomDrawColumnHeader(Sender: TcxGridTableView; ACanvas: TcxCanvas;AViewInfo: TcxGridColumnHeaderViewInfo; var ADone: Boolean);
    procedure cxGrid1DBBandedTableView1FocusedItemChanged(Sender: TcxCustomGridTableView; APrevFocusedItem,AFocusedItem: TcxCustomGridTableItem);
    procedure cxGrid1DBBandedTableView1KeyPress(Sender: TObject; var Key: Char);
    procedure dxBarButton23Click(Sender: TObject);
    procedure dxBarButton24Click(Sender: TObject);
    procedure dxBarButton25Click(Sender: TObject);
    procedure dxBarButton26Click(Sender: TObject);
    procedure dxBarButton1Click(Sender: TObject);
    procedure dxBarButton2Click(Sender: TObject);
    procedure dxBarButton3Click(Sender: TObject);
    procedure dxBarButton4Click(Sender: TObject);
    procedure dxBarButton6Click(Sender: TObject);
    procedure dxBarButton7Click(Sender: TObject);
    procedure dxBarPopupMenu1Popup(Sender: TObject);
    procedure dxBarButton9Click(Sender: TObject);
    procedure dxBarButton8Click(Sender: TObject);
    procedure dxBarButton13Click(Sender: TObject);
    procedure dxBarButton14Click(Sender: TObject);
  private
    Fconnect  : TADOConnection;
  public
    constructor Create(AOwner : TApplication; flag : boolean; Connect : TADOConnection);
  end;

var
  fmTrafficFreeDay: TfmTrafficFreeDay;

implementation

  uses Main, Raznoe, Other, Period, Filter;

{$R *.dfm}


constructor TfmTrafficFreeDay.Create(AOwner : TApplication; flag : boolean; Connect : TADOConnection);
begin
  Screen.Cursor := crHourglass;

  inherited Create(AOwner);

  Fconnect := Connect;

  StoreRegistryGrid(rgLoad,'\Software\Lis1\TrafficFreeDay_Grids', cxGrid1DBBandedTableView1);

  Query_Traffic_Free_Day1.Connection := Fconnect;
  Query_Traffic_Free_Day2.Connection := Fconnect;
  Query_Traffic_Free_Day3.Connection := Fconnect;
  Query_Traffic_Free_Day4.Connection := Fconnect;

  dxBarButton23Click(nil);

  if flag then begin
    WindowState := wsMaximized;
    FormStyle := fsMDIChild;
  end else begin
    WindowState := wsMaximized;
    FormStyle := fsMDIChild;
  end;

  SetUsersModuleRights(self, Fconnect);
  MonitorEventFormOpen('OPEN_FORM', self.Name, Fconnect, -9);

  Screen.Cursor := crDefault;
end;


procedure TfmTrafficFreeDay.cxGrid1DBBandedTableView1CustomDrawCell(Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
  if (AViewInfo.GridRecord.Values[cxGrid1DBBandedTableView1count_stay2.Index] >= 3) then
    ACanvas.Brush.Color := $00B0FFFB;

  if (AViewInfo.GridRecord.Values[cxGrid1DBBandedTableView1count_stay2.Index] >= 10) then
    ACanvas.Brush.Color := $008080FF;


  if AViewInfo.GridRecord.Selected or AViewInfo.GridRecord.Focused then begin
    ACanvas.Brush.Color := clNavy;
    ACanvas.Font.Color  := clWhite;
    if AViewInfo.Focused then ACanvas.Brush.Color := clBlue;
  end;
end;

procedure TfmTrafficFreeDay.cxGrid1DBBandedTableView1CustomDrawColumnHeader(Sender: TcxGridTableView; ACanvas: TcxCanvas;AViewInfo: TcxGridColumnHeaderViewInfo; var ADone: Boolean);
begin
  if AViewInfo.Column.Focused then begin
    ACanvas.Brush.Color := clNavy;
    ACanvas.Font.Color  := clWhite;
  end;
end;

procedure TfmTrafficFreeDay.cxGrid1DBBandedTableView1DataControllerFilterChanged(Sender: TObject);
begin
  DrawcxGridColumnOnFiltered(Sender);
end;

procedure TfmTrafficFreeDay.cxGrid1DBBandedTableView1FocusedItemChanged(Sender: TcxCustomGridTableView; APrevFocusedItem,AFocusedItem: TcxCustomGridTableItem);
begin
  Sender.Painter.Invalidate;
end;

procedure TfmTrafficFreeDay.cxGrid1DBBandedTableView1KeyPress(Sender: TObject;var Key: Char);
begin
  FilterColumnGridOnKeyPress(cxGrid1DBBandedTableView1, Key);
end;


procedure TfmTrafficFreeDay.dxBarButton1Click(Sender: TObject);
begin
  RefreshQueryGrid(cxGrid1DBBandedTableView1, 'fact_track_stat_id');
end;

procedure TfmTrafficFreeDay.dxBarButton23Click(Sender: TObject);
begin
  Screen.Cursor := -11;

  dxBarButton23.Down := True;
  dxBarButton24.Down := False;
  dxBarButton25.Down := False;
  dxBarButton26.Down := False;

  Query_Traffic_Free_Day1.Close;
  Query_Traffic_Free_Day2.Close;
  Query_Traffic_Free_Day3.Close;
  Query_Traffic_Free_Day4.Close;

  DS_Traffic_Free_Day.DataSet := Query_Traffic_Free_Day1;
  Query_Traffic_Free_Day1.Open;

  Caption := 'Управление движением] - [Простой в движении';
  dxBarSubItem5.Caption := 'Простой в движении';

  Screen.Cursor := 0;
end;

procedure TfmTrafficFreeDay.dxBarButton24Click(Sender: TObject);
begin
  Screen.Cursor := -11;

  dxBarButton23.Down := False;
  dxBarButton24.Down := True;
  dxBarButton25.Down := False;
  dxBarButton26.Down := False;

  Query_Traffic_Free_Day1.Close;
  Query_Traffic_Free_Day2.Close;
  Query_Traffic_Free_Day3.Close;
  Query_Traffic_Free_Day4.Close;

  DS_Traffic_Free_Day.DataSet := Query_Traffic_Free_Day2;
  Query_Traffic_Free_Day2.Open;

  Caption := 'Управление движением] - [Простой на станции ППС/ремонта в рабочем парке';
  dxBarSubItem5.Caption := 'Простой на станции ППС/ремонта в рабочем парке';

  Screen.Cursor := 0;
end;

procedure TfmTrafficFreeDay.dxBarButton25Click(Sender: TObject);
begin
  Screen.Cursor := -11;

  dxBarButton23.Down := False;
  dxBarButton24.Down := False;
  dxBarButton25.Down := True;
  dxBarButton26.Down := False;

  Query_Traffic_Free_Day1.Close;
  Query_Traffic_Free_Day2.Close;
  Query_Traffic_Free_Day3.Close;
  Query_Traffic_Free_Day4.Close;

  DS_Traffic_Free_Day.DataSet := Query_Traffic_Free_Day3;
  Query_Traffic_Free_Day3.Open;

  Caption := 'Управление движением] - [Простой на станции ПОГРУЗКИ';
  dxBarSubItem5.Caption := 'Простой на станции ПОГРУЗКИ';

  Screen.Cursor := 0;
end;

procedure TfmTrafficFreeDay.dxBarButton26Click(Sender: TObject);
begin
  Screen.Cursor := -11;

  dxBarButton23.Down := False;
  dxBarButton24.Down := False;
  dxBarButton25.Down := False;
  dxBarButton26.Down := True;

  Query_Traffic_Free_Day1.Close;
  Query_Traffic_Free_Day2.Close;
  Query_Traffic_Free_Day3.Close;
  Query_Traffic_Free_Day4.Close;

  DS_Traffic_Free_Day.DataSet := Query_Traffic_Free_Day4;
  Query_Traffic_Free_Day4.Open;

  Caption := 'Управление движением] - [Простой на станции ВЫГРУЗКИ';
  dxBarSubItem5.Caption := 'Простой на станции ВЫГРУЗКИ';

  Screen.Cursor := 0;
end;

procedure TfmTrafficFreeDay.dxBarButton2Click(Sender: TObject);
begin
//печать таб. в excel
  PrintcxGrid(cxGrid1DBBandedTableView1);
end;

procedure TfmTrafficFreeDay.dxBarButton3Click(Sender: TObject);
begin
//колонки таб.
  SetdxDBGridColumns(cxGrid1DBBandedTableView1);
end;

procedure TfmTrafficFreeDay.dxBarButton4Click(Sender: TObject);
begin
//группировки
  cxGrid1DBBandedTableView1.OptionsView.GroupByBox := not cxGrid1DBBandedTableView1.OptionsView.GroupByBox;
end;

procedure TfmTrafficFreeDay.dxBarButton6Click(Sender: TObject);
begin
//фильтр по выделенному
  FiltercxGrid4ListID(cxGrid1DBBandedTableView1);
end;

procedure TfmTrafficFreeDay.dxBarButton7Click(Sender: TObject);
begin
//фильтр по всем записям
  cxGrid1DBBandedTableView1.Filtering.ColumnFilteredItemsList := not dxBarButton7.Down;
end;

procedure TfmTrafficFreeDay.dxBarButton8Click(Sender: TObject);
var                    Q : TADOQuery;
  vagon_comment_type_cod : integer;
begin
  vagon_comment_type_cod := cxGrid1DBBandedTableView1.VisibleColumns[cxGrid1DBBandedTableView1.Controller.FocusedItemIndex].Tag - 90;
  if not ((vagon_comment_type_cod > 0) and (vagon_comment_type_cod < 20))
    or VarIsNull(cxGrid1DBBandedTableView1vagon_id.DataBinding.Field.Value) then exit;

  Screen.Cursor := crHourGlass;
  Q := TADOQuery.Create(nil);
  Q.Connection := Fconnect;
  if vagon_comment_type_cod = 13 then begin
    Q.SQL.Add('DECLARE @vagon_id int = :vagon_id');
    Q.SQL.Add('SELECT vagon_comment_id, (fio_users + '', '' + CONVERT(nvarchar(8), c.date_begin, 4) + '' : '' + inf_obj_name) AS vagon_comment');
    Q.SQL.Add('INTO #comm13 FROM view_vagon_comment c');
    Q.SQL.Add('LEFT JOIN inf_obj i ON inf_obj_id = CONVERT(int, vagon_comment)');
    Q.SQL.Add('WHERE vagon_id = @vagon_id AND vagon_comment_type_id = 1385291 AND CHARINDEX ('' '', vagon_comment) = 0');
    Q.SQL.Add('SELECT c.vagon_comment_id, date_begin, date_end, FIO_users, vagon_comment_type_name,');
    Q.SQL.Add('iif(c13.vagon_comment IS NULL OR c13.vagon_comment = '''', c.vagon_comment, c13.vagon_comment) AS vagon_comment');
    Q.SQL.Add('FROM view_vagon_comment c');
    Q.SQL.Add('LEFT JOIN #comm13 c13 ON c13.vagon_comment_id = c.vagon_comment_id');
    Q.SQL.Add('WHERE (vagon_id = @vagon_id) AND vagon_comment_type_id = 1385291');
    Q.SQL.Add('ORDER BY date_begin DESC   DROP TABLE #comm13');
    Q.Parameters.ParamByName('vagon_id').Value := cxGrid1DBBandedTableView1vagon_id.DataBinding.Field.Value;
  end else begin
    Q.SQL.Add('SELECT vagon_comment_id, vagon_comment, date_begin, date_end, FIO_users, vagon_comment_type_name');
    Q.SQL.Add('FROM view_vagon_comment WHERE (vagon_id = :vagon_id) AND (vagon_comment_type_cod = :vagon_comment_type_cod) ORDER BY date_begin DESC');
    Q.Parameters.ParamByName('vagon_id').Value := cxGrid1DBBandedTableView1vagon_id.DataBinding.Field.Value;
    Q.Parameters.ParamByName('vagon_comment_type_cod').Value := IntToStr(vagon_comment_type_cod);
  end;
  Q.Open;

  fmFilter := TfmFilter.Create(0, Q, 'vagon_comment_id', 'vagon_comment', 'vagon_comment');
  fmFilter._SetVagonComment := True;
  fmFilter.ShowModal;
  Q.Free;
  fmFilter.Free;
end;

procedure TfmTrafficFreeDay.dxBarButton9Click(Sender: TObject);
type
  TFunc = function(AppHand: THandle; f: boolean; usr_pwd: PUser_pwd; str_vagon_id :string; type_action: integer) : variant;
var
          FDic : TFunc;
        handle : THandle;
             v : Variant;
  str_vagon_id : string;
begin
  str_vagon_id := cx_GetSelectedValues(cxGrid1, 'vagon_id');
  if str_vagon_id = '' then exit;

  handle := LoadLibrary('dictionary.dll');
  @FDic := GetProcAddress(handle, 'CreateWndVagonComment13Add');
  v := FDic(Application.Handle, False, usr_pwd, str_vagon_id, TComponent(Sender).Tag);
  FreeLibrary(handle);

  if Application.MessageBox(PChar('Обновить информацию?'), 'Вниамние!', MB_YESNO + MB_DEFBUTTON2) = IDYES then
    RefreshQueryGrid(cxGrid1DBBandedTableView1, 'fact_track_stat_id', cxGrid1DBBandedTableView1fact_track_stat_id.DataBinding.Field.AsInteger);
end;

procedure TfmTrafficFreeDay.dxBarButton13Click(Sender: TObject);
type
  TFunc = function(AppHand:THandle) : Variant;
var                List : TStringList;
                      i : integer;
cxGridDBBandedTableView : TcxGridDBBandedTableView;
                 FDic   : TFunc;
                 handle : THandle;
                 v      : Variant;
                 str    : string;
begin
  Screen.Cursor := crHourGlass;
  cxGridDBBandedTableView := cxGrid1DBBandedTableView1;

  handle := LoadLibrary('dictionary.dll');
  @FDic := GetProcAddress(handle, 'CreateWndChoose');
  v := FDic(Application.Handle);
  str := v[0];
  List := TStringList.Create;
  List.Text := str;
  FreeLibrary(handle);

  cxGridDBBandedTableView.DataController.DataSet.DisableControls;

  with cxGridDBBandedTableView.DataController.Filter do begin
    Clear;
    Options := Options + [fcoCaseInsensitive];
    Root.BoolOperatorKind := fboOr;
    BeginUpdate;
    for i := 0 to List.Count - 1 do if (Trim(List.Strings[i])<>'') then
      Root.AddItem(cxGridDBBandedTableView.GetColumnByFieldName('num_vagon'), foEqual, Trim(List.Strings[i]),Trim(List.Strings[i]) );
    EndUpdate;
    Active := True;
  end;
  cxGridDBBandedTableView.DataController.DataSet.EnableControls;
  List.Free;
  Screen.Cursor := crDefault;
end;

procedure TfmTrafficFreeDay.dxBarButton14Click(Sender: TObject);
var                     Q : TADOQuery;
  SP_vagon_comment_modify : TADOStoredProc;
begin
  //закрытие 13 комментариев
  Screen.Cursor := crHourGlass;

  SP_vagon_comment_modify := TADOStoredProc.Create(nil);
  SP_vagon_comment_modify.Connection := Fconnect;
  SP_vagon_comment_modify.ProcedureName := 'sp_vagon_comment_modify';

  Q := TADOQuery.Create(nil);
  Q.Connection := fmMain.Lis;
  Q.SQL.Text := 'DECLARE @users_group_id int SELECT @users_group_id = users_group_id FROM users WHERE users_name = system_user ' +
  'SELECT c.vagon_id FROM vagon_comment c ' +
  'JOIN fact_track_stat f ON f.vagon_id = c.vagon_id AND count_stay2 = 0 AND users_group_id = @users_group_id ' +
  'WHERE vagon_comment_type_id = 1385291 AND date_end IS NULL '; //AND (c.vagon_id = 1139763 OR c.vagon_id = 5060499)
  Q.Open;
  Q.First;
  while not Q.Eof do begin

    SP_vagon_comment_modify.Parameters.Refresh;
    SP_vagon_comment_modify.Parameters.ParamByName('@type_action'          ).Value := 3;//3-Закрыть последний комментарий по вагорну и типу комментария (комментарий типа Т для вагона В открытый может быть только один и он последний)
    SP_vagon_comment_modify.Parameters.ParamByName('@vagon_comment_type_id').Value := 1385291;//id 13 комментария
    SP_vagon_comment_modify.Parameters.ParamByName('@vagon_id'             ).Value := Q.FieldByName('vagon_id').Value;
    SP_vagon_comment_modify.Parameters.ParamByName('@date_end'             ).Value := Date;
    SP_vagon_comment_modify.ExecProc;

    Q.Next;
  end;

  Q.Free;
  SP_vagon_comment_modify.Free;

  RefreshQueryGrid(cxGrid1DBBandedTableView1, 'fact_track_stat_id', cxGrid1DBBandedTableView1fact_track_stat_id.DataBinding.Field.AsInteger);
  Screen.Cursor := crDefault;
end;

procedure TfmTrafficFreeDay.dxBarPopupMenu1Popup(Sender: TObject);
begin
  if cxGrid1DBBandedTableView1.ViewData.RowCount <> 0 then begin
    if (cxGrid1DBBandedTableView1.VisibleColumns[cxGrid1DBBandedTableView1.Controller.FocusedItemIndex].Tag > 90)  and
       (cxGrid1DBBandedTableView1.VisibleColumns[cxGrid1DBBandedTableView1.Controller.FocusedItemIndex].Tag < 120) then begin
      dxBarButton8.Enabled := True;
      dxBarButton8.Caption :=  'История Комментария: ' + cxGrid1DBBandedTableView1.VisibleColumns[cxGrid1DBBandedTableView1.Controller.FocusedItemIndex].Caption
    end else begin
      dxBarButton8.Enabled := False;
      dxBarButton8.Caption :=  'История Комментария: ';
    end;

//    if cxGrid1DBBandedTableView1.VisibleColumns[cxGrid1DBBandedTableView1.Controller.FocusedItemIndex].Tag = 103 then begin
//      dxBarButton9.Enabled  := True;
//      dxBarButton10.Enabled := True;
//      dxBarButton11.Enabled := True;
//      dxBarButton12.Enabled := True;
//    end else begin
//      dxBarButton9.Enabled  := False;
//      dxBarButton10.Enabled := False;
//      dxBarButton11.Enabled := False;
//      dxBarButton12.Enabled := False;
//    end;
  end;
end;

procedure TfmTrafficFreeDay.FormClose(Sender: TObject;var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TfmTrafficFreeDay.FormDestroy(Sender: TObject);
begin
  StoreRegistryGrid(rgSave,'\Software\Lis1\TrafficFreeDay_Grids', cxGrid1DBBandedTableView1);
end;

end.
