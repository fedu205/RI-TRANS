unit FactMilage;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Default,
  Dialogs, ComCtrls, ToolWin, cxStyles, cxCustomData, cxGraphics, cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData,
  cxGridLevel, cxClasses, cxControls, cxGridCustomView, cxGridCustomTableView, cxGridTableView, cxGridBandedTableView,
  cxGridDBBandedTableView, cxGrid, cxPropertiesStore, Menus, ADODB, ActnList, cxLookAndFeelPainters, cxPC, StdCtrls,
  cxButtons, ExtCtrls, cxCustomPivotGrid, cxDBPivotGrid, dxBar, dxBarExtItems,
  cxLookAndFeels, cxCalendar, cxColorComboBox, cxBarEditItem, cxTextEdit,
  cxTimeEdit, DateUtils, cxCurrencyEdit, ImgList, cxNavigator, dxSkinsCore,
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
  cxDataControllerConditionalFormattingRulesManagerDialog, dxSkinTheBezier, dxDateRanges, dxSkinOffice2019Colorful, dxBarBuiltInMenu;

type
  TfmFactMilage = class(TForm)
    DS_FactMilage: TDataSource;
    cxPropertiesStore1: TcxPropertiesStore;
    dxBarManager1: TdxBarManager;
    dxBarManager1Bar1: TdxBar;
    dxBarButton2: TdxBarButton;
    Popup_Milage: TdxBarPopupMenu;
    N3: TdxBarButton;
    Excel3: TdxBarButton;
    N1: TdxBarSubItem;
    N82: TdxBarButton;
    N83: TdxBarButton;
    N14: TdxBarButton;
    N74: TdxBarButton;
    N100: TdxBarButton;
    N10: TdxBarSubItem;
    cxGrid1: TcxGrid;
    cxGrid1DBBandedTableView1: TcxGridDBBandedTableView;
    cxGrid1Level1: TcxGridLevel;
    dxBarButton6: TdxBarButton;
    dxBarSubItem3: TdxBarSubItem;
    dxBarButton4: TdxBarButton;
    dxBarButton8: TdxBarButton;
    dxBarButton11: TdxBarButton;
    cxGrid1DBBandedTableView1fact_milage_id: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1milage_passed: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1milage_rest: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1milage_norm: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1file_load_name: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1file_load_date: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1users_group_id: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1num_vagon: TcxGridDBBandedColumn;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1: TcxStyle;
    cxImageList1: TcxImageList;
    dxBarButton_FilterRecords1: TdxBarButton;
    dxBarButton15: TdxBarButton;
    dxBarButton16: TdxBarButton;
    dxBarButton10: TdxBarButton;
    Splitter1: TSplitter;
    cxPageControl1: TcxPageControl;
    cxTabSheet1: TcxTabSheet;
    cxGrid2: TcxGrid;
    cxGrid2DBBandedTableView1: TcxGridDBBandedTableView;
    cxGrid2DBBandedTableView1fact_milage_id: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1num_vagon: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1milage_passed: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1milage_rest: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1milage_norm: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1file_load_name: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1file_load_date: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1users_id: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1FIO_users: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1users_group_id: TcxGridDBBandedColumn;
    cxGrid2Level1: TcxGridLevel;
    Query_HistoryMilage: TADOQuery;
    DS_HistoryMilage: TDataSource;
    Popup_HistoryMilage: TdxBarPopupMenu;
    Query_FactMilage: TADOQuery;
    cxGrid1DBBandedTableView1owner_name: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1rod_vagon_name: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1type_park_name: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1contract_cod: TcxGridDBBandedColumn;
    procedure cxGrid1DBBandedTableView1FocusedItemChanged(Sender: TcxCustomGridTableView; APrevFocusedItem, AFocusedItem: TcxCustomGridTableItem);
    procedure cxGrid1DBBandedTableView1CustomDrawColumnHeader(Sender: TcxGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxGridColumnHeaderViewInfo; var ADone: Boolean);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure N14Click(Sender: TObject);
    procedure N74Click(Sender: TObject);
    procedure cxGrid1DBBandedTableView1DataControllerFilterChanged(Sender: TObject);
    procedure Action_DeleteExecute(Sender: TObject);
    procedure Excel3Click(Sender: TObject);
    procedure cxGrid1DBBandedTableView1KeyPress(Sender: TObject; var Key: Char);
    procedure dxBarButton2Click(Sender: TObject);
    procedure dxBarButton4Click(Sender: TObject);
    procedure cxGrid1DBBandedTableView1CustomDrawCell(Sender: TcxCustomGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
    procedure dxBarButton10Click(Sender: TObject);
    procedure dxBarButton11Click(Sender: TObject);
    procedure dxBarButton_FilterRecords1Click(Sender: TObject);
    procedure dxBarButton16Click(Sender: TObject);
    procedure cxGrid1DBBandedTableView1SelectionChanged(Sender: TcxCustomGridTableView);
    procedure dxBarButton8Click(Sender: TObject);
    procedure cxGrid2DBBandedTableView1KeyPress(Sender: TObject; var Key: Char);

  private
    Fdate1 : TDateTime;
    Fstr_fact_milage_id : string;
    Fconnect : TADOConnection;

    procedure RefreshQueryMilage;
  public

    constructor Create(AOwner: TApplication; Flag: Boolean; conn: TADOConnection);
  published
    property _GetStrFactMilageId : string read Fstr_fact_milage_id;
  end;




function CreateWndFactMilage(AppHand: THandle; flag: boolean; conn: TADOConnection) : variant; export;

var
  fmFactMilage: TfmFactMilage;

implementation
  uses Other, Period, FactTechAdd, VagonChoose, Raznoe;
{$R *.dfm}

function CreateWndFactMilage(AppHand: THandle; flag: boolean; conn: TADOConnection) : variant; export;
var i : integer;
begin
   Application.Handle := AppHand;
   fmFactMilage := TfmFactMilage.Create(Application, flag, conn);
   with fmFactMilage do
    try
      if ShowModal = mrOK then result := VarArrayOf([fmFactMilage._GetStrFactMilageId, -9 ])
      else result := VarArrayOf([-9, '']);
    finally
      Free;
    end;
end;

constructor TfmFactMilage.Create(AOwner: TApplication; Flag: Boolean; conn: TADOConnection);
begin
  Screen.Cursor := crHourglass;
  inherited Create(AOwner);
  Fconnect := conn;

  Query_FactMilage.ConnectionString := Fconnect.ConnectionString;
  Query_HistoryMilage.ConnectionString := Fconnect.ConnectionString;

  StoreRegistryGrid(rgLoad, '\Software\Lis1\Milage_Grids', cxGrid1DBBandedTableView1);
  StoreRegistryGrid(rgLoad, '\Software\Lis1\Milage_Grids', cxGrid2DBBandedTableView1);

  Fdate1 := Date;

  if Flag then  begin
    FormStyle := fsNormal;
    Self.Visible := False;
    WindowState := wsMaximized;
    dxBarButton10.Visible := ivAlways;
  end else begin
    dxBarButton10.Visible := ivNever;
  end;

  RefreshQueryMilage;

//  SetUsersModuleRights(self, Fconnect);
//  MonitorEventFormOpen('OPEN_FORM', self.Name, Fconnect, -9);

  Screen.Cursor := crDefault;
end;

procedure TfmFactMilage.RefreshQueryMilage;
begin
  Screen.Cursor := crHourglass;

  dxBarSubItem3.Caption := PeriodToStr(Fdate1, Fdate1, True);

  cxGrid1DBBandedTableView1.OnSelectionChanged := nil;

  Query_FactMilage.Close;
  Query_FactMilage.Parameters.ParamByName('users_group_id').Value := GetDBUsersGroup(Fconnect);
  Query_FactMilage.Parameters.ParamByName('date1'         ).Value := Fdate1 + 1;
  Query_FactMilage.Open;

  cxGrid1DBBandedTableView1.OnSelectionChanged := cxGrid1DBBandedTableView1SelectionChanged;
  cxGrid1DBBandedTableView1SelectionChanged(cxGrid1DBBandedTableView1);

  Screen.Cursor := crDefault;
end;


procedure TfmFactMilage.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  StoreRegistryGrid(rgSave,'\Software\Lis1\Milage_Grids', cxGrid1DBBandedTableView1);
  StoreRegistryGrid(rgSave,'\Software\Lis1\Milage_Grids', cxGrid2DBBandedTableView1);
  Action := caFree;
end;

procedure TfmFactMilage.Action_DeleteExecute(Sender: TObject);
var i : integer;
   SP : TADOStoredProc;
begin
  if Application.MessageBox('Вы точно уверены?', 'Внимание', MB_OKCANCEL) = IDOK then begin
    Screen.Cursor := -11;

    SP := TADOStoredProc.Create(nil);
    SP.Connection := Fconnect;
    SP.ProcedureName := 'sp_fact_milage_modify';
    SP.Parameters.Refresh;

    for i := 0 to cxGrid1DBBandedTableView1.Controller.SelectedRowCount - 1 do begin
      SP.Close;
      SP.Parameters.Refresh;
      SP.Parameters.ParamByName('@fact_milage_id').Value := cxGrid1DBBandedTableView1.Controller.SelectedRows[i].Values[cxGrid1DBBandedTableView1.GetColumnByFieldName('fact_milage_id').Index];
      SP.Parameters.ParamByName('@type_action'   ).Value  := 2;
        try
          SP.ExecProc;
          ShowTextMessage('Осталось ' + IntToStr(cxGrid1DBBandedTableView1.Controller.SelectedRowCount - i) + ' записей...', False);
          if SP.Parameters.ParamByName('@fact_milage_id').Value = -9 then Application.MessageBox('Нельзя удалить вагон', 'Внимание', MB_OK);
        except
          SP.Free;
          Screen.Cursor := 0;
        end;
    end;
    SP.Free;

    ShowTextMessage;
    RefreshQueryGrid(cxGrid1DBBandedTableView1, 'fact_milage_id');
    Screen.Cursor := 0;
  end;
end;

procedure TfmFactMilage.cxGrid1DBBandedTableView1CustomDrawCell(Sender: TcxCustomGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
  if AViewInfo.GridRecord.Selected or AViewInfo.GridRecord.Focused then begin
    ACanvas.Brush.Color := clNavy;
    ACanvas.Font.Color := clWhite;
    if AViewInfo.Focused then ACanvas.Brush.Color := clBlue;
  end;
end;

procedure TfmFactMilage.cxGrid1DBBandedTableView1CustomDrawColumnHeader(Sender: TcxGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxGridColumnHeaderViewInfo; var ADone: Boolean);
begin
  if AViewInfo.Column.Focused then begin
    ACanvas.Brush.Color := clNavy;
    ACanvas.Font.Color := clWhite;
  end;
end;

procedure TfmFactMilage.cxGrid1DBBandedTableView1DataControllerFilterChanged(Sender: TObject);
begin
  DrawcxGridColumnOnFiltered(Sender);
end;

procedure TfmFactMilage.cxGrid1DBBandedTableView1FocusedItemChanged(Sender: TcxCustomGridTableView; APrevFocusedItem, AFocusedItem: TcxCustomGridTableItem);
begin
  cxGrid1DBBandedTableView1.Painter.Invalidate;
end;

procedure TfmFactMilage.cxGrid1DBBandedTableView1KeyPress(Sender: TObject; var Key: Char);
begin
   FilterColumnGridOnKeyPress(cxGrid1DBBandedTableView1, Key);
end;

procedure TfmFactMilage.cxGrid1DBBandedTableView1SelectionChanged(Sender: TcxCustomGridTableView);
begin
  if dxBarButton8.Down then begin
    Screen.Cursor := crHourglass;
    Query_HistoryMilage.Close;
    Query_HistoryMilage.Parameters.ParamByName('num_vagon').Value := cxGrid1DBBandedTableView1num_vagon.DataBinding.Field.AsInteger;
    Query_HistoryMilage.Open;
    Screen.Cursor := crDefault;
  end;
end;

procedure TfmFactMilage.cxGrid2DBBandedTableView1KeyPress(Sender: TObject; var Key: Char);
begin
   FilterColumnGridOnKeyPress(cxGrid2DBBandedTableView1, Key);
end;

procedure TfmFactMilage.dxBarButton10Click(Sender: TObject);
begin
  Fstr_fact_milage_id := cx_GetSelectedValues(cxGrid1, 'fact_milage_id');
  ModalResult := mrOk;
end;

procedure TfmFactMilage.dxBarButton2Click(Sender: TObject);
begin
  RefreshQueryGrid(cxGrid1DBBandedTableView1, 'fact_milage_id', cxGrid1DBBandedTableView1fact_milage_id.DataBinding.Field.AsInteger);
end;

procedure TfmFactMilage.dxBarButton4Click(Sender: TObject);
begin
  fmPeriod := TfmPeriod.Create(Application, Fdate1, Fdate1, 7);
  if fmPeriod.ShowModal = mrOK then begin
    Fdate1 := fmPeriod._GetDateBegin;
    RefreshQueryMilage;
  end;
end;


procedure TfmFactMilage.dxBarButton8Click(Sender: TObject);
begin
  cxPageControl1.Visible := dxBarButton8.Down;
  Splitter1.Visible := dxBarButton8.Down;
end;

{$REGION 'Фильтр по всем записям'}
procedure TfmFactMilage.dxBarButton_FilterRecords1Click(Sender: TObject);
begin
  cxGrid1DBBandedTableView1.Filtering.ColumnFilteredItemsList := not dxBarButton_FilterRecords1.Down;
end;
{$ENDREGION 'Фильтр по всем записям'}

procedure TfmFactMilage.Excel3Click(Sender: TObject);
begin
  case TdxBarButton(Sender).ClickItemLink.Owner.Owner.Tag of
    1 : PrintcxGrid(cxGrid1DBBandedTableView1);
    2 : PrintcxGrid(cxGrid2DBBandedTableView1);
  end;
end;

procedure TfmFactMilage.N14Click(Sender: TObject);
begin
   SetdxDBGridColumns(cxGrid1DBBandedTableView1);
end;

procedure TfmFactMilage.N74Click(Sender: TObject);
begin
  cxGrid1DBBandedTableView1.OptionsView.GroupByBox := not cxGrid1DBBandedTableView1.OptionsView.GroupByBox;
end;

procedure TfmFactMilage.dxBarButton11Click(Sender: TObject);
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

procedure TfmFactMilage.dxBarButton16Click(Sender: TObject);
begin
  if TControl(Sender).Tag = 1 then begin
    Fdate1 := IncDay(Fdate1, -1);
  end;

  if TControl(Sender).Tag = 2 then begin
    Fdate1 := IncDay(Fdate1, 1);
  end;

  RefreshQueryMilage;
end;

end.
