unit VagonTMC;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Default,
  Dialogs, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMetropolis, dxSkinMetropolisDark, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue,
  dxSkinOffice2010Silver, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic,
  dxSkinSharp, dxSkinSharpPlus, dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008, dxSkinTheAsphaltWorld, dxSkinsDefaultPainters,
  dxSkinValentine, dxSkinVS2010, dxSkinWhiteprint, dxSkinXmas2008Blue, dxSkinsdxBarPainter, ImgList, cxGraphics, dxBar, cxClasses, DB, ADODB,
  cxPropertiesStore, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxStyles, dxSkinscxPCPainter, cxCustomData, cxFilter, cxData, cxDataStorage,
  cxEdit, cxNavigator, cxDBData, cxCurrencyEdit, cxGridLevel, cxGridCustomTableView, cxGridTableView, cxGridBandedTableView, cxGridDBBandedTableView,
  cxGridCustomView, cxGrid, cxCalendar, dxColorEdit, dxSkinOffice2016Colorful, dxSkinOffice2016Dark, dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark, dxSkinVisualStudio2013Light, System.ImageList, Vcl.ExtCtrls, dxBarBuiltInMenu, cxPC, cxCustomPivotGrid, cxDBPivotGrid, cxCheckBox,
  cxImageList, cxExportPivotGridLink, Winapi.ShellAPI,
  cxDataControllerConditionalFormattingRulesManagerDialog, dxDateRanges,
  dxSkinTheBezier, dxSkinOffice2019Colorful;

type
  TfmVagonTMC = class(TForm)
    cxPropertiesStore1: TcxPropertiesStore;
    DS_VagonTMC: TDataSource;
    dxBarManager1: TdxBarManager;
    dxBarManager1Bar1: TdxBar;
    dxBarSubItem1: TdxBarSubItem;
    dxBarButton2: TdxBarButton;
    dxBarButton3: TdxBarButton;
    dxBarButton6: TdxBarButton;
    dxBarButton16: TdxBarButton;
    dxBarButton17: TdxBarButton;
    dxBarButton18: TdxBarButton;
    dxBarButton21: TdxBarButton;
    cxImageList1: TcxImageList;
    cxGrid1: TcxGrid;
    cxGrid1DBBandedTableView1: TcxGridDBBandedTableView;
    cxGrid1Level1: TcxGridLevel;
    dxBarPopupMenu1: TdxBarPopupMenu;
    dxBarButton1: TdxBarButton;
    dxBarSubItem2: TdxBarSubItem;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1: TcxStyle;
    dxBarButton4: TdxBarButton;
    dxBarButton5: TdxBarButton;
    cxPageControl1: TcxPageControl;
    cxTabSheet1: TcxTabSheet;
    cxTabSheet2: TcxTabSheet;
    cxDBPivotGrid1: TcxDBPivotGrid;
    dxBarPopupMenu3: TdxBarPopupMenu;
    dxBarButton7: TdxBarButton;
    dxBarButton8: TdxBarButton;
    dxBarButton9: TdxBarButton;
    dxBarButton10: TdxBarButton;
    dxBarButton11: TdxBarButton;
    dxBarButton12: TdxBarButton;
    dxBarSubItem3: TdxBarSubItem;
    cxGrid1DBBandedTableView1vagon_tmc_id: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1vagon_id: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1depo_id: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1detail_id: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1date_breakage: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1depo_note: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1sale_FIO_users: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1FIO_users_owner: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1users_group_id: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1global_color: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1date_begin: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1date_end: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1comment: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1num_vagon: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1detail_name: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1depo_name: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1detail_cnt: TcxGridDBBandedColumn;
    Query_VagonTMC: TADOQuery;
    cxGrid1DBBandedTableView1set_gr: TcxGridDBBandedColumn;
    cxDBPivotGrid1num_vagon: TcxDBPivotGridField;
    cxDBPivotGrid1detail_name: TcxDBPivotGridField;
    cxDBPivotGrid1depo_name: TcxDBPivotGridField;
    cxDBPivotGrid1detail_cnt: TcxDBPivotGridField;
    cxDBPivotGrid1sale_FIO_users: TcxDBPivotGridField;
    cxGrid1DBBandedTableView1set_in_work: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1date_in_work: TcxGridDBBandedColumn;
    cxStyle2: TcxStyle;
    cxGrid1DBBandedTableView1pto_note: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1firm_customer_name_short: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1contract_cod: TcxGridDBBandedColumn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure dxBarButton16Click(Sender: TObject);
    procedure dxBarButton6Click(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure dxBarButton18Click(Sender: TObject);
    procedure dxBarButton14Click(Sender: TObject);
    procedure cxGrid1DBBandedTableView1KeyPress(Sender: TObject; var Key: Char);
    procedure cxGrid1DBBandedTableView1CustomDrawCell(Sender: TcxCustomGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
    procedure cxGrid1DBBandedTableView1CustomDrawColumnHeader(Sender: TcxGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxGridColumnHeaderViewInfo;
      var ADone: Boolean);
    procedure dxBarButton21Click(Sender: TObject);
    procedure dxBarButton2Click(Sender: TObject);
    procedure dxBarButton3Click(Sender: TObject);
    procedure dxBarButton1Click(Sender: TObject);
    procedure dxBarButton17Click(Sender: TObject);
    procedure dxBarButton4Click(Sender: TObject);
    procedure dxBarButton5Click(Sender: TObject);
    procedure cxGrid1DBBandedTableView1FocusedItemChanged(Sender: TcxCustomGridTableView; APrevFocusedItem, AFocusedItem: TcxCustomGridTableItem);
    procedure cxPageControl1Change(Sender: TObject);
    procedure dxBarButton9Click(Sender: TObject);
    procedure dxBarButton12Click(Sender: TObject);
    procedure dxBarButton7Click(Sender: TObject);

  private
    Fconnect   : TADOConnection;
    Fid : integer;

    Fdate1, Fdate2 : TDateTime;
  public
    Fusr_pwd         : PUser_pwd;
    constructor Create(AOwner: TApplication; flag: boolean; connect: TADOConnection; usr_pwd: PUser_pwd);
  published
    property _GetId: integer read Fid;
  end;

var
  fmVagonTMC: TfmVagonTMC;

function CreateWndVagonTMC(AppHand: THandle; flag: boolean; connect: TADOConnection; usr_pwd: PUser_pwd): variant; export;

implementation
   uses Raznoe, Other, Period, VagonTMCAdd;
{$R *.dfm}

function CreateWndVagonTMC(AppHand: THandle; flag: boolean; connect: TADOConnection; usr_pwd: PUser_pwd): variant; export;
begin
  Application.Handle := AppHand;
  try
    fmVagonTMC := TfmVagonTMC.Create(Application, flag, connect, usr_pwd);
    if fmVagonTMC.ShowModal = mrOk then result := VarArrayOf([fmVagonTMC._GetId, 1])
    else result := VarArrayOf([-9, -9]);
  finally
    fmVagonTMC.Free;
  end;
end;

constructor TfmVagonTMC.Create(AOwner: TApplication; flag: boolean; connect: TADOConnection; usr_pwd: PUser_pwd);
begin
  Screen.Cursor := crHourglass;
  inherited Create(AOwner);
  Fconnect := TADOConnection.Create(Self);
  Fconnect.ConnectionString := connect.ConnectionString;
  Fconnect.LoginPrompt := False;
  Fconnect.KeepConnection := True;
  Fconnect.Connected := True;
  Fusr_pwd := usr_pwd;
  Fid := -9;

  dxBarSubItem2.Caption := StoreRegistryDate(rgLoad, '\Software\Lis1\DateTime\VagonTMC', Fdate1, Fdate2);
  StoreRegistryGrid(rgLoad, '\Software\Lis1\VagonTMC_Grids', cxGrid1DBBandedTableView1);

  if flag then begin
    cxGrid1DBBandedTableView1.OnDblClick := dxBarButton1Click;
    dxBarButton1.Visible := ivAlways;
  end;

  Query_VagonTMC.Connection := Fconnect;

  cxPageControl1.ActivePageIndex := 0;
  cxPageControl1Change(nil);

  MonitorEventFormOpen('OPEN_FORM', self.Name, Fconnect, -9);
  Screen.Cursor := crDefault;
end;

procedure TfmVagonTMC.FormDestroy(Sender: TObject);
begin
  StoreRegistryDate(rgSave, '\Software\Lis1\DateTime\VagonTMC', Fdate1, Fdate2);
  StoreRegistryGrid(rgSave, '\Software\Lis1\VagonTMC_Grids', cxGrid1DBBandedTableView1);
end;

procedure TfmVagonTMC.cxGrid1DBBandedTableView1CustomDrawCell(Sender: TcxCustomGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
  if Assigned(TcxGridDBBandedTableView(Sender).GetColumnByFieldName('global_color'))
  and (AViewInfo.GridRecord.Values[TcxGridDBBandedTableView(Sender).GetColumnByFieldName('global_color').Index] <> NULL) then
    ACanvas.Brush.Color := AViewInfo.GridRecord.Values[TcxGridDBBandedTableView(AViewInfo.GridView).GetColumnByFieldName('global_color').Index];

  if AViewInfo.GridRecord.Selected then begin
    ACanvas.Brush.Color := clNavy;
    ACanvas.Font.Color := clWhite;
    if AViewInfo.Focused then ACanvas.Brush.Color := clBlue;
  end;
end;

procedure TfmVagonTMC.cxGrid1DBBandedTableView1CustomDrawColumnHeader(Sender: TcxGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxGridColumnHeaderViewInfo; var ADone: Boolean);
begin
  if AViewInfo.Column.Focused then begin
    ACanvas.Brush.Color := clNavy;
    ACanvas.Font.Color := clWhite;
  end;
end;

procedure TfmVagonTMC.cxGrid1DBBandedTableView1FocusedItemChanged(Sender: TcxCustomGridTableView; APrevFocusedItem, AFocusedItem: TcxCustomGridTableItem);
begin
  Sender.Painter.Invalidate;
end;

procedure TfmVagonTMC.cxGrid1DBBandedTableView1KeyPress(Sender: TObject; var Key: Char);
begin
  FilterColumnGridOnKeyPress(TcxGridDBBandedTableView(TcxGridSite(Sender).GridView), Key);
end;

procedure TfmVagonTMC.cxPageControl1Change(Sender: TObject);
var ActiveQuery : TADOQuery;
    id : integer;
begin
  case cxPageControl1.ActivePageIndex of
    0 : ActiveQuery := Query_VagonTMC;
    1 : ActiveQuery := Query_VagonTMC;
  end;

  ActiveQuery.DisableControls;

  ActiveQuery.Close;
  //ActiveQuery.Parameters.Refresh;
  ActiveQuery.Parameters.ParamByName('users_group_id').Value := Fusr_pwd.user_group_id;
  ActiveQuery.Parameters.ParamByName('Fdate1').Value := Fdate1;
  ActiveQuery.Parameters.ParamByName('Fdate2').Value := Fdate2;
  ActiveQuery.Open;
  ActiveQuery.Locate('vagon_tmc_id', id, []);
  ActiveQuery.EnableControls;

end;

procedure TfmVagonTMC.dxBarButton12Click(Sender: TObject);
begin
  SetRecordColor('vagon_tmc_id', cxGrid1DBBandedTableView1, 'SHP_VESSEL_TRIP', TComponent(Sender).Tag = 1);
  cxPageControl1Change(Sender);
end;

procedure TfmVagonTMC.dxBarButton14Click(Sender: TObject);
var SP : TADOStoredProc;
begin
// опирование
//  Screen.Cursor := crHourglass;
//  SP := TADOStoredProc.Create(nil);
//  SP.Connection := Fconnect;
//  SP.ProcedureName := 'sp_shp_vessel_modify';
//  SP.Parameters.Refresh;

//  SP.Parameters.ParamByName('@type_action'   ).Value := 3;
//  SP.Parameters.ParamByName('@vessel_trip_id').Value := cxGrid1DBBandedTableView1vessel_trip_id.DataBinding.Field.AsInteger;
//  SP.ExecProc;

  RefreshQueryGrid(cxGrid1DBBandedTableView1, 'vagon_tmc_id', SP.Parameters.ParamByName('@vagon_tmc_id').Value);
  SP.Free;
  Screen.Cursor := crDefault;
end;

procedure TfmVagonTMC.dxBarButton16Click(Sender: TObject);
begin
  fmVagonTMCAdd := TfmVagonTMCAdd.Create(Application, Fconnect);

  if fmVagonTMCAdd.ShowModal = mrOk then
    RefreshQueryGrid(cxGrid1DBBandedTableView1, 'vagon_tmc_id', fmVagonTMCAdd._GetID);
end;

procedure TfmVagonTMC.dxBarButton17Click(Sender: TObject);
begin
  if cxGrid1DBBandedTableView1vagon_tmc_id.DataBinding.Field.IsNull then
    exit;

  fmVagonTMCAdd := TfmVagonTMCAdd.Create(Application, Fconnect);
  fmVagonTMCAdd._SetUpdate := cxGrid1DBBandedTableView1vagon_tmc_id.DataBinding.Field.AsInteger;

  if fmVagonTMCAdd.ShowModal = mrOk then
    RefreshQueryGrid(cxGrid1DBBandedTableView1, 'vagon_tmc_id', fmVagonTMCAdd._GetID);
end;

procedure TfmVagonTMC.dxBarButton18Click(Sender: TObject);
var SP : TADOStoredProc;
     i : integer;
begin
  if Application.MessageBox(PWideChar('¬ы точно уверены, что хотите удалить выделенные за€вки?'), '¬нимание', MB_YESNO or MB_ICONQUESTION) = ID_YES then begin
    Screen.Cursor := crHourglass;
    SP := TADOStoredProc.Create(nil);
    SP.Connection := Fconnect;
    SP.ProcedureName := 'sp_vagon_tmc_modify';
    SP.Parameters.Refresh;

    for i:=0 to cxGrid1DBBandedTableView1.Controller.SelectedRowCount - 1 do begin
      SP.Close;
      SP.Parameters.ParamByName('@type_action'   ).Value := 2;
      SP.Parameters.ParamByName('@vagon_tmc_id').Value := cxGrid1DBBandedTableView1.Controller.SelectedRows[i].Values[cxGrid1DBBandedTableView1vagon_tmc_id.Index];
      SP.ExecProc;
      ShowTextMessage('ќсталось ' +IntToStr(cxGrid1DBBandedTableView1.Controller.SelectedRowCount - i)+ ' записей...', False);
    end;

    SP.Free;
    RefreshQueryGrid(cxGrid1DBBandedTableView1, 'vagon_tmc_id');
    ShowTextMessage();
    Screen.Cursor := crDefault;
  end;
end;

procedure TfmVagonTMC.dxBarButton1Click(Sender: TObject);
begin
  if cxGrid1DBBandedTableView1vagon_tmc_id.DataBinding.Field <> nil then
    Fid := cxGrid1DBBandedTableView1vagon_tmc_id.DataBinding.Field.AsInteger
  else
    Fid := -9;
  ModalResult := mrOk;
end;

procedure TfmVagonTMC.dxBarButton21Click(Sender: TObject);
begin

  cxPageControl1Change(Sender);
end;

procedure TfmVagonTMC.dxBarButton2Click(Sender: TObject);
begin
  SetdxDBGridColumns(TcxGridDBBandedTableView(TcxGridSite(ActiveControl).GridView));
end;

procedure TfmVagonTMC.dxBarButton3Click(Sender: TObject);
begin
  TcxGridDBBandedTableView(TcxGridSite(ActiveControl).GridView).OptionsView.GroupByBox :=
    not TcxGridDBBandedTableView(TcxGridSite(ActiveControl).GridView).OptionsView.GroupByBox;
end;

procedure TfmVagonTMC.dxBarButton4Click(Sender: TObject);
begin
  fmPeriod := TfmPeriod.Create(Application, Fdate1, Fdate2, 3);
  if fmPeriod.ShowModal=mrOK then begin
    Screen.Cursor := crHourglass;
    Fdate1 := fmPeriod._GetMonth;
    Fdate2 := IncMonth(Fdate1, 1) - 1;
    dxBarSubItem2.Caption := FormatDateTime('mmmm yyyy', Fdate1);
    cxPageControl1Change(Sender);
    Screen.Cursor := crDefault;
  end;
end;

procedure TfmVagonTMC.dxBarButton5Click(Sender: TObject);
begin
  fmPeriod := TfmPeriod.Create(Application, Fdate1, Fdate2, 2);
  if fmPeriod.ShowModal=mrOK then begin
    Screen.Cursor := crHourglass;
    Fdate1 := fmPeriod._GetMonthBegin;
    Fdate2 := fmPeriod._GetMonthEnd;
    dxBarSubItem2.Caption := FormatDateTime('mmm yy', Fdate1) + ' - ' + FormatDateTime('mmm yy', Fdate2);
    cxPageControl1Change(Sender);
    Screen.Cursor := crDefault;
  end;
end;

procedure TfmVagonTMC.dxBarButton6Click(Sender: TObject);
begin
  PrintcxGrid(TcxGridDBBandedTableView(TcxGridSite(ActiveControl).GridView));
end;

procedure TfmVagonTMC.dxBarButton7Click(Sender: TObject);
var
  tmp_path, file_name : string;
begin
  tmp_path := ExtractFilePath(ParamStr(0)) + 'Temp' + '\';

  DeleteFileFromDir();
  repeat
    file_name := 'xls_' + IntToStr(GetTickCount) + '.xls';
  until not FileExists(tmp_path + file_name);

  if TControl(Sender).Tag = 1 then
    cxExportPivotGridToExcel(tmp_path + file_name, cxDBPivotGrid1, True)
  else
    cxExportPivotGridToExcel(tmp_path + file_name, cxDBPivotGrid1, False);

  ShellExecute(HWND(nil), 'open', PChar(file_name), nil, PChar(tmp_path), SW_SHOWNORMAL);
end;

procedure TfmVagonTMC.dxBarButton9Click(Sender: TObject);
begin
  Screen.Cursor := crHourglass;

  // сдвинем обе даты на один мес€ц (если выбран период из 4 мес€цев, то так и останетс€ период из 4-х мес€цев :)
  Fdate1 := IncMonth(Fdate1, TControl(Sender).Tag);
  Fdate2 := IncMonth(Fdate2 + 1, TControl(Sender).Tag) - 1;

  // один мес€ц или период
  if Fdate1 = IncMonth(Fdate2 + 1, -1) then
    dxBarSubItem2.Caption := FormatDateTime('mmmm yyyy', Fdate1)
  else
    dxBarSubItem2.Caption := FormatDateTime('mmm yy', Fdate1) + ' - ' + FormatDateTime('mmm yy', Fdate2);

  // ќбновление данных (с учетом вкладки)
  cxPageControl1Change(Sender);
  Screen.Cursor := crDefault;
end;

procedure TfmVagonTMC.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

end.
