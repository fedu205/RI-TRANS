unit FactParam;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Default,
  Dialogs, ComCtrls, ToolWin, cxStyles, cxCustomData, cxGraphics, cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData,
  cxGridLevel, cxClasses, cxControls, cxGridCustomView, cxGridCustomTableView, cxGridTableView, cxGridBandedTableView,
  cxGridDBBandedTableView, cxGrid, cxPropertiesStore, Menus, ADODB, ActnList, cxLookAndFeelPainters, cxPC, StdCtrls,
  cxButtons, ExtCtrls, cxCustomPivotGrid, cxDBPivotGrid, dxBar, dxBarExtItems,
  cxLookAndFeels, cxCalendar, cxColorComboBox, cxBarEditItem, cxTextEdit,
  cxTimeEdit, DateUtils, ImgList, cxNavigator, dxSkinsCore,
  dxSkinsDefaultPainters, dxSkinscxPCPainter, dxSkinsdxBarPainter, dxSkinBlack,
  dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom,
  dxSkinDarkSide, dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMetropolis,
  dxSkinMetropolisDark, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue,
  dxSkinOffice2010Silver, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray,
  dxSkinOffice2013White, dxSkinOffice2016Colorful, dxSkinOffice2016Dark,
  dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus,
  dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008,
  dxSkinTheAsphaltWorld, dxSkinValentine, dxSkinVisualStudio2013Blue,
  dxSkinVisualStudio2013Dark, dxSkinVisualStudio2013Light, dxSkinVS2010,
  dxSkinWhiteprint, dxSkinXmas2008Blue, System.ImageList, cxImageList,
  cxDataControllerConditionalFormattingRulesManagerDialog, dxSkinTheBezier,
  dxDateRanges, dxSkinOffice2019Colorful;

type
  TfmFactParam = class(TForm)
    Query_FactParam: TADOQuery;
    DS_FactTech: TDataSource;
    cxPropertiesStore1: TcxPropertiesStore;
    SP_TrackDelete: TADOStoredProc;
    dxBarManager1: TdxBarManager;
    dxBarManager1Bar1: TdxBar;
    dxBarSubItem2: TdxBarSubItem;
    dxBarButton2: TdxBarButton;
    Popup_TrackVagon: TdxBarPopupMenu;
    N3: TdxBarButton;
    Excel3: TdxBarButton;
    N1: TdxBarSubItem;
    N82: TdxBarButton;
    N83: TdxBarButton;
    N14: TdxBarButton;
    N74: TdxBarButton;
    N10: TdxBarSubItem;
    cxGrid1: TcxGrid;
    cxGrid1DBBandedTableView1: TcxGridDBBandedTableView;
    cxGrid1Level1: TcxGridLevel;
    dxBarSubItem3: TdxBarSubItem;
    dxBarButton4: TdxBarButton;
    cxGrid1DBBandedTableView1fact_param_id: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1num_vagon: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1vagon_id: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1date_registration: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1date_build: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1next_date_repair: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1next_type_repair_cod: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1next_type_repair_id: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1next_type_repair_name: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1date_last_cap_place: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1last_cap_place_cod: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1last_cap_place_id: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1last_cap_place_name: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1date_last_depo_place: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1last_depo_place_cod: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1last_depo_place_id: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1last_depo_place_name: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1vagon_owner_cod: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1time_of_service_cod: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1time_of_service_id: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1time_of_service_name: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1file_load_name: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1file_load_date: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1users_id: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1global_color: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1FIO_users: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1firm_name: TcxGridDBBandedColumn;
    dxBarButton8: TdxBarButton;
    cxGrid1DBBandedTableView1vagon_model: TcxGridDBBandedColumn;
    dxBarButton10: TdxBarButton;
    cxGrid1DBBandedTableView1load_date_of_service: TcxGridDBBandedColumn;
    dxBarButton11: TdxBarButton;
    ADOFactParam: TADOConnection;
    cxImageList1: TcxImageList;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1: TcxStyle;
    dxBarButton_FilterRecords1: TdxBarButton;
    cxGrid1DBBandedTableView1block_mark: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1quality_mark: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1state_vagon: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1state_date: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1state_reason: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1state_place: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1serial_num: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1factory: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1vagon_type: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1vagon_tara: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1vagon_load: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1coupler_length: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1balance_cost: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1registry_road: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1registry_depot: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1exception_date: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1exception_reason: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1residual_value: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1former_num: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1registry_station: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1quality_mark_name: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1exception_reason_name: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1registry_station_name: TcxGridDBBandedColumn;
    dxBarButton12: TdxBarButton;
    cxGrid1DBBandedTableView1factory_name: TcxGridDBBandedColumn;
    dxBarButton13: TdxBarButton;
    dxBarButton14: TdxBarButton;
    cxGrid1DBBandedTableView1type_park_name: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1volume: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1copper_calibration: TcxGridDBBandedColumn;
    dxBarButton1: TdxBarButton;
    dxBarButton3: TdxBarButton;
    dxBarButton5: TdxBarButton;
    procedure cxGrid1DBBandedTableView1FocusedItemChanged(Sender: TcxCustomGridTableView; APrevFocusedItem, AFocusedItem: TcxCustomGridTableItem);
    procedure cxGrid1DBBandedTableView1CustomDrawColumnHeader(Sender: TcxGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxGridColumnHeaderViewInfo; var ADone: Boolean);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure N14Click(Sender: TObject);
    procedure N74Click(Sender: TObject);
    procedure ToolButton12Click(Sender: TObject);
    procedure cxGrid1DBBandedTableView1DataControllerFilterChanged(Sender: TObject);
    procedure Action_DeleteExecute(Sender: TObject);
    procedure Excel3Click(Sender: TObject);
    procedure cxGrid1DBBandedTableView1KeyPress(Sender: TObject; var Key: Char);
    procedure dxBarButton4Click(Sender: TObject);
    procedure N82Click(Sender: TObject);
    procedure cxGrid1DBBandedTableView1CustomDrawCell(Sender: TcxCustomGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
    procedure dxBarButton8Click(Sender: TObject);
    procedure dxBarButton10Click(Sender: TObject);
    procedure dxBarButton11Click(Sender: TObject);
    procedure dxBarButton_FilterRecords1Click(Sender: TObject);
    procedure dxBarButton14Click(Sender: TObject);
    procedure dxBarButton1Click(Sender: TObject);

  private
    Fdate1, Fdate2 : TDateTime;
    FVagonSQL      : string;
    FStrFactParamId: string;
    Fusr_pwd       : PUser_pwd;
  public
    constructor Create(App: TApplication; Flag: Boolean; usr_pwd: PUser_pwd);
  published
    property _GetStrFactParamId : string read FStrFactParamId;
  end;

  function CreateWndFactParam(AppHand: THandle; flag: boolean; usr_pwd:PUser_pwd) : variant; export;

var
  fmFactParam: TfmFactParam;

implementation
  uses Other, Period, VagonChoose, Raznoe;
{$R *.dfm}

function CreateWndFactParam(AppHand: THandle; flag: boolean; usr_pwd:PUser_pwd ) : variant; export;
var i : integer;
begin
   Application.Handle := AppHand;
   fmFactParam := TfmFactParam.Create(Application, flag, usr_pwd);
   with fmFactParam do
    try
      if ShowModal=mrOK then result := VarArrayOf([fmFactParam._GetStrFactParamId, -9 ])
      else result := VarArrayOf([-9, '']);
    finally
      Free;
    end;
end;

constructor TfmFactParam.Create(App : TApplication; Flag:Boolean; usr_pwd:PUser_pwd);
begin
  Screen.Cursor := crHourglass;
  inherited Create(App);
  //cxLocalizer1.Locale := 1049;
  FUsr_pwd := Usr_pwd;

  ADOFactParam.Connected := False;
  ADOFactParam.ConnectionString := 'Persist Security Info=True;Provider=SQLOLEDB.1;User ID='+usr_pwd^.user_name+';Password='+usr_pwd^.user_pass+';Initial Catalog='+usr_pwd^.catalog+';Data Source='+usr_pwd^.server+';';
  ADOFactParam.Connected := True;

  StoreRegistryGrid(rgLoad, '\Software\Lis1\FactParam_Grids', cxGrid1DBBandedTableView1, 1);
  dxBarSubItem3.Caption := StoreRegistryDate(rgLoad, '\Software\Lis1\DateTime\FactParam', Fdate1, Fdate2);
  dxBarButton8Click(nil);

  if Flag then  begin
    FormStyle := fsNormal;
    Self.Visible := False;
    WindowState := wsMaximized;
    dxBarButton10.Visible := ivAlways;
  end else begin
    //Formstyle := fsMDIChild;
    dxBarSubItem3.Caption := PeriodToStr(Fdate1, Fdate2, True);
    dxBarButton10.Visible := ivNever;
  end;

  SetUsersModuleRights(self, ADOFactParam);
  MonitorEventFormOpen('OPEN_FORM', self.Name, ADOFactParam, -9);
  Screen.Cursor := crDefault;
end;

procedure TfmFactParam.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  StoreRegistryGrid(rgSave, '\Software\Lis1\FactParam_Grids', cxGrid1DBBandedTableView1);
  StoreRegistryDate(rgSave, '\Software\Lis1\DateTime\FactParam', Fdate1, Fdate2);
  Action := caFree;
end;

procedure TfmFactParam.Action_DeleteExecute(Sender: TObject);
var            i : integer;
  SP_TrackDelete : TADOStoredProc;
begin
  if Application.MessageBox('Вы точно уверены?', 'Внимание', MB_OKCANCEL) = IDOK then begin
    Screen.Cursor := -11;
    SP_TrackDelete := TADOStoredProc.Create(nil);
    SP_TrackDelete.Connection := ADOFactParam;
    SP_TrackDelete.ProcedureName := 'sp_fact_param_modify';
    SP_TrackDelete.Parameters.Refresh;

    for i := 0 to cxGrid1DBBandedTableView1.Controller.SelectedRowCount - 1 do begin
      ShowTextMessage('Осталось ' + IntToStr(cxGrid1DBBandedTableView1.Controller.SelectedRowCount - i) + ' записей...', False);

      SP_TrackDelete.Close;
      SP_TrackDelete.Parameters.Refresh;
      SP_TrackDelete.Parameters.ParamByName('@fact_param_id').Value := cxGrid1DBBandedTableView1.Controller.SelectedRows[i].Values[cxGrid1DBBandedTableView1.GetColumnByFieldName('fact_param_id').Index];
      SP_TrackDelete.Parameters.ParamByName('@type_action').Value  := 2;
      SP_TrackDelete.ExecProc;

      if SP_TrackDelete.Parameters.ParamByName('@fact_param_id').Value = -9 then
        Application.MessageBox('Нельзя удалить паспорт вагона.', 'Внимание',MB_OK);
    end;

    SP_TrackDelete.Free;
    ShowTextMessage;
    RefreshQueryGrid(cxGrid1DBBandedTableView1, 'fact_param_id');
  end;
end;

procedure TfmFactParam.cxGrid1DBBandedTableView1CustomDrawCell(Sender: TcxCustomGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
   if (AViewInfo.GridRecord.Values[cxGrid1DBBandedTableView1global_color.Index]<>NULL) then ACanvas.Brush.Color := AViewInfo.GridRecord.Values[cxGrid1DBBandedTableView1global_color.Index];

  if AViewInfo.GridRecord.Selected or AViewInfo.GridRecord.Focused then begin
    ACanvas.Brush.Color := clNavy;
    ACanvas.Font.Color := clWhite;
    if AViewInfo.Focused then ACanvas.Brush.Color := clBlue;
  end;
end;

procedure TfmFactParam.cxGrid1DBBandedTableView1CustomDrawColumnHeader(Sender: TcxGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxGridColumnHeaderViewInfo; var ADone: Boolean);
begin
  if AViewInfo.Column.Focused then begin
    ACanvas.Brush.Color := clNavy;
    ACanvas.Font.Color := clWhite;
  end;
end;

procedure TfmFactParam.cxGrid1DBBandedTableView1DataControllerFilterChanged(Sender: TObject);
begin
  DrawcxGridColumnOnFiltered(Sender);
end;

procedure TfmFactParam.cxGrid1DBBandedTableView1FocusedItemChanged(Sender: TcxCustomGridTableView; APrevFocusedItem, AFocusedItem: TcxCustomGridTableItem);
begin
  cxGrid1DBBandedTableView1.Painter.Invalidate;
end;

procedure TfmFactParam.cxGrid1DBBandedTableView1KeyPress(Sender: TObject; var Key: Char);
begin
   FilterColumnGridOnKeyPress(cxGrid1DBBandedTableView1, Key);
end;

procedure TfmFactParam.dxBarButton10Click(Sender: TObject);
begin
  FStrFactParamId := cx_GetSelectedValues(cxGrid1,'fact_param_id');
  ModalResult := mrOk;
end;

procedure TfmFactParam.dxBarButton4Click(Sender: TObject);
begin
  fmPeriod := TfmPeriod.Create(Application, Fdate1, Fdate2, 1);
  if fmPeriod.ShowModal=mrOK then begin
    Screen.Cursor := crHourglass;
    Fdate1 := fmPeriod._GetDateBegin;
    Fdate2 := fmPeriod._GetDateEnd;
    dxBarButton8Click(nil);
    Screen.Cursor := crDefault;
  end;
end;

procedure TfmFactParam.dxBarButton8Click(Sender: TObject);
var TechSQL : string;
     strSQL : string;
begin
  Screen.Cursor := crHourglass;


  if dxBarButton8.Down then begin
    Caption := 'Паспорт вагона. Отбор: (Последние данные)';

    dxBarSubItem3.Enabled := False;
    dxBarButton14.Enabled := False;
    dxBarButton13.Enabled := False;
  end else begin
    // 24.04.2020 убрал данный функционал, т.к. КАЖЕТСЯ, это не используется
    Application.MessageBox('Если нужна данная функция, обратитесь к разработчикам', 'Вниамние', MB_OK);
    Screen.Cursor := crDefault;
    Exit;
    // ---------------------


//    Caption := 'Паспорт вагона. Отбор: (За период по дате загрузки)';

//    TechSQL := 'SELECT p.*, v.firm_customer_name AS firm_name, v.volume, v.copper_calibration, v.type_park_name ' +
//               'FROM view_fact_param p '+
//               strSQL +
//               'WHERE (file_load_date >= :date1) '+
//               'AND (file_load_date <=  :date2) '+
//               'AND (p.users_group_id = :users_group_id)';
//    dxBarSubItem3.Enabled := True;
//    dxBarButton14.Enabled := True;
//    dxBarButton13.Enabled := True;

//    Query_FactParam.SQL.Text := TechSQL;
//    Query_FactParam.Parameters.ParamByName('date1').Value := Fdate1;
//    Query_FactParam.Parameters.ParamByName('date2').Value := Fdate2+1;
//    dxBarSubItem3.Caption := PeriodToStr(Fdate1, Fdate2, True);
  end;

  // вагоны из справочника
  if dxBarButton12.Down then
    Caption := Caption  + ' И (Вагоны из справочника)';

  Query_FactParam.Close;
  Query_FactParam.Parameters.ParamByName('users_group_id').Value := Fusr_pwd.user_group_id;
  Query_FactParam.Parameters.ParamByName('set_view_all'  ).Value := not dxBarButton12.Down;
  Query_FactParam.Open;

  Screen.Cursor := crDefault;
end;


{$REGION 'Фильтр по всем записям'}
procedure TfmFactParam.dxBarButton_FilterRecords1Click(Sender: TObject);
begin
  cxGrid1DBBandedTableView1.Filtering.ColumnFilteredItemsList := not dxBarButton_FilterRecords1.Down;
end;
{$ENDREGION 'Фильтр по всем записям'}

procedure TfmFactParam.Excel3Click(Sender: TObject);
begin
  PrintcxGrid(cxGrid1DBBandedTableView1);
end;

procedure TfmFactParam.N14Click(Sender: TObject);
begin
   SetdxDBGridColumns(cxGrid1DBBandedTableView1);
end;

procedure TfmFactParam.N74Click(Sender: TObject);
begin
  cxGrid1DBBandedTableView1.OptionsView.GroupByBox := not cxGrid1DBBandedTableView1.OptionsView.GroupByBox;
end;

procedure TfmFactParam.N82Click(Sender: TObject);
begin
  SetRecordColor('fact_param_id', cxGrid1DBBandedTableView1, 'fact_param', TMenuItem(Sender).Tag = 1);
  RefreshQueryGrid(cxGrid1DBBandedTableView1, 'fact_param_id', cxGrid1DBBandedTableView1fact_param_id.DataBinding.Field.AsInteger);
end;

procedure TfmFactParam.ToolButton12Click(Sender: TObject);
begin
  Close;
end;

procedure TfmFactParam.dxBarButton11Click(Sender: TObject);
var List : TStringList;
       i : integer;
begin
  fmVagonChoose:= TfmVagonChoose.Create(Application);
  if fmVagonChoose.ShowModal=mrOK then begin
  Screen.Cursor := crHourglass;
    List := TStringList.Create;
    List.text := fmVagonChoose._GetStrVagonNum;
    cxGrid1DBBandedTableView1.DataController.DataSet.DisableControls;

    with cxGrid1DBBandedTableView1.DataController.Filter do begin
      Clear;
      Options := Options + [fcoCaseInsensitive];
      Root.BoolOperatorKind := fboOr;
      BeginUpdate;
      for i := 0 to List.Count - 1 do if (Trim(List.Strings[i])<>'') then
        Root.AddItem(cxGrid1DBBandedTableView1num_vagon, foEqual, Trim(List.Strings[i]),Trim(List.Strings[i]) );
      EndUpdate;
      Active := True;
    end;
    cxGrid1DBBandedTableView1.DataController.DataSet.EnableControls;
    Screen.Cursor := crDefault;
    List.Free;
  end;
end;

procedure TfmFactParam.dxBarButton14Click(Sender: TObject);
begin
  Screen.Cursor := crHourglass;
  if TControl(Sender).Tag = 1 then begin
    Fdate1 := IncMonth(Fdate1, -1);
  end;

  if TControl(Sender).Tag = 2 then begin
    Fdate1 := IncMonth(Fdate1, 1);
  end;

  Fdate2 := IncMonth(Fdate1) - 1;
  dxBarButton8Click(nil);

  Screen.Cursor := crDefault;
end;

procedure TfmFactParam.dxBarButton1Click(Sender: TObject);
begin
  UsersSettingModify(TComponent(Sender).Tag, TForm(self).Name, TcxControl(cxGrid1DBBandedTableView1), ADOFactParam);
end;

end.
