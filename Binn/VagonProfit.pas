unit VagonProfit;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs, Default,
  StdCtrls, ComCtrls, ToolWin, ExtCtrls, Db, ADODB, Menus, DBClient, Buttons,
  cxPropertiesStore, cxGridCustomTableView, Variants,
  cxGridBandedTableView, cxGridDBBandedTableView, cxGridTableView,
  cxClasses, cxGridCustomView, cxGrid, cxControls, cxGridLevel,
  cxGridDBTableView, cxStyles, cxCustomData, cxGraphics, cxFilter, cxData, cxDataStorage, cxEdit, cxDBData,
  cxCalendar, cxCurrencyEdit, cxContainer, cxLabel, cxCheckBox, cxLookAndFeelPainters, cxButtons, dxBar,
  cxLookAndFeels, cxCheckComboBox, cxBarEditItem, cxPC, cxColorComboBox, dxmdaset,
  cxPivotGridCustomDataSet, cxPivotGridDrillDownDataSet, cxCustomPivotGrid, cxDBPivotGrid, cxExportPivotGridLink, dxSkinsCore, dxSkinBlack,
  dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle,
  dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin,
  dxSkinMetropolis, dxSkinMetropolisDark, dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray,
  dxSkinOffice2013White, dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinTheAsphaltWorld, dxSkinsDefaultPainters, dxSkinValentine, dxSkinVS2010, dxSkinWhiteprint, dxSkinXmas2008Blue,
  dxSkinscxPCPainter, dxBarBuiltInMenu, cxNavigator, dxSkinsdxBarPainter,
  dxSkinOffice2016Colorful, dxSkinOffice2016Dark, dxSkinVisualStudio2013Blue,
  dxSkinVisualStudio2013Dark, dxSkinVisualStudio2013Light,
  cxDataControllerConditionalFormattingRulesManagerDialog, dxSkinTheBezier, dxDateRanges, dxSkinOffice2019Colorful, dxScrollbarAnnotations;

type
  TfmVagonProfit = class(TForm)
    cxPropertiesStore1: TcxPropertiesStore;
    DS_VagonProfit: TDataSource;
    dxBarManager1: TdxBarManager;
    dxBarManager1Bar1: TdxBar;
    dxBarSubItem3: TdxBarSubItem;
    dxBarButton2: TdxBarButton;
    dxBarButton5: TdxBarButton;
    dxBarButton6: TdxBarButton;
    dxBarSubItem5: TdxBarSubItem;
    dxBarButton16: TdxBarButton;
    dxBarButton17: TdxBarButton;
    dxBarButton18: TdxBarButton;
    dxBarButton19: TdxBarButton;
    dxBarButton23: TdxBarButton;
    dxBarButton1: TdxBarButton;
    dxBarPopupMenu_VagonProfit: TdxBarPopupMenu;
    dxBarButton_FilterRecords1: TdxBarButton;
    dxBarButton8: TdxBarButton;
    dxBarButton9: TdxBarButton;
    SP_VagonProfit: TADOStoredProc;
    ClientDS: TClientDataSet;
    ClientDSnum_vagon: TIntegerField;
    ClientDSfact_id: TIntegerField;
    ClientDSbargain_id: TIntegerField;
    ClientDSkargoETSNG_cod: TStringField;
    ClientDSkargoETSNG_name: TStringField;
    ClientDSdate_from_to: TDateField;
    ClientDSdatpr: TDateField;
    ClientDSfact_weight: TCurrencyField;
    ClientDSbargain_cod: TStringField;
    ClientDSnode_begin_name: TStringField;
    ClientDSnode_end_name: TStringField;
    ClientDSfirm_customer_name: TStringField;
    ClientDSnum_cycle: TIntegerField;
    ClientDSsum_dohod: TCurrencyField;
    ClientDSsum_rashod: TCurrencyField;
    ClientDSsum_delta: TCurrencyField;
    dxBarButton3: TdxBarButton;
    cxPageControl1: TcxPageControl;
    cxTabSheet1: TcxTabSheet;
    cxTabSheet2: TcxTabSheet;
    cxGrid4: TcxGrid;
    cxGrid4DBBandedTableView1: TcxGridDBBandedTableView;
    cxGrid4DBBandedTableView1num_vagon: TcxGridDBBandedColumn;
    cxGrid4DBBandedTableView1vagon_id: TcxGridDBBandedColumn;
    cxGrid4DBBandedTableView1bargain_cod: TcxGridDBBandedColumn;
    cxGrid4DBBandedTableView1firm_customer_name: TcxGridDBBandedColumn;
    cxGrid4DBBandedTableView1kargoETSNG_name: TcxGridDBBandedColumn;
    cxGrid4DBBandedTableView1kargoETSNG_cod: TcxGridDBBandedColumn;
    cxGrid4DBBandedTableView1date_from_to: TcxGridDBBandedColumn;
    cxGrid4DBBandedTableView1datpr: TcxGridDBBandedColumn;
    cxGrid4DBBandedTableView1fact_weight: TcxGridDBBandedColumn;
    cxGrid4DBBandedTableView1bargain_id: TcxGridDBBandedColumn;
    cxGrid4DBBandedTableView1fact_id: TcxGridDBBandedColumn;
    cxGrid4DBBandedTableView1node_begin_name: TcxGridDBBandedColumn;
    cxGrid4DBBandedTableView1node_end_name: TcxGridDBBandedColumn;
    cxGrid4DBBandedTableView1num_cycle: TcxGridDBBandedColumn;
    cxGrid4DBBandedTableView1sum_dohod: TcxGridDBBandedColumn;
    cxGrid4DBBandedTableView1sum_rashod: TcxGridDBBandedColumn;
    cxGrid4DBBandedTableView1sum_delta: TcxGridDBBandedColumn;
    cxGrid4Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    cxGrid1DBBandedTableView1: TcxGridDBBandedTableView;
    cxGrid1DBBandedTableView1num_vagon: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1firm_customer_name: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1kargoETSNG_name: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1date_from_to: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1datpr: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1fact_weight: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1num_cycle: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1sum_dohod: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1sum_rashod: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1sum_delta: TcxGridDBBandedColumn;
    cxGrid1Level1: TcxGridLevel;
    ClientDS_Cycle: TClientDataSet;
    ClientDS_CycleField1: TIntegerField;
    ClientDS_CycleField7: TStringField;
    ClientDS_CycleField8: TDateField;
    ClientDS_CycleField9: TDateField;
    ClientDS_CycleField10: TCurrencyField;
    ClientDS_CycleField6: TStringField;
    ClientDS_CycleField4: TIntegerField;
    ClientDS_CycleField2: TCurrencyField;
    ClientDS_CycleField3: TCurrencyField;
    ClientDS_CycleField5: TCurrencyField;
    DS_Cycle: TDataSource;
    dxBarPopupMenu1: TdxBarPopupMenu;
    dxBarButton4: TdxBarButton;
    cxGrid1DBBandedTableView1node_begin_name: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1node_end_name: TcxGridDBBandedColumn;
    ClientDS_Cyclenode_begin_name: TStringField;
    ClientDS_Cyclenode_end_name: TStringField;
    dxBarButton7: TdxBarButton;
    Query_Vagon: TADOQuery;
    DS_Vagon: TDataSource;
    Popup_Vagon: TdxBarPopupMenu;
    cxPivotGridDrillDownDataSet2: TcxPivotGridDrillDownDataSet;
    DS_DrillDownRoad: TDataSource;
    Popup_DrillDown: TdxBarPopupMenu;
    cxTabSheet3: TcxTabSheet;
    Splitter3: TSplitter;
    cxDBPivotGrid1: TcxDBPivotGrid;
    cxDBPivotGrid1vagon_id: TcxDBPivotGridField;
    cxDBPivotGrid1num_vagon: TcxDBPivotGridField;
    cxDBPivotGrid1date_build: TcxDBPivotGridField;
    cxDBPivotGrid1date_remove: TcxDBPivotGridField;
    cxDBPivotGrid1model_name: TcxDBPivotGridField;
    cxDBPivotGrid1comments: TcxDBPivotGridField;
    cxDBPivotGrid1rod_vagon_name: TcxDBPivotGridField;
    cxDBPivotGrid1factory_cod: TcxDBPivotGridField;
    cxDBPivotGrid1factory_name: TcxDBPivotGridField;
    cxDBPivotGrid1FIO_users: TcxDBPivotGridField;
    cxDBPivotGrid1global_color: TcxDBPivotGridField;
    cxDBPivotGrid1date_begin: TcxDBPivotGridField;
    cxDBPivotGrid1date_end: TcxDBPivotGridField;
    cxDBPivotGrid1node_registration_name: TcxDBPivotGridField;
    cxDBPivotGrid1capacity: TcxDBPivotGridField;
    cxDBPivotGrid1year_build: TcxDBPivotGridField;
    cxDBPivotGrid1year_end: TcxDBPivotGridField;
    cxDBPivotGrid1next_date_repair: TcxDBPivotGridField;
    cxDBPivotGrid1type_park: TcxDBPivotGridField;
    cxDBPivotGrid1owner_name: TcxDBPivotGridField;
    cxDBPivotGrid1type_park_name: TcxDBPivotGridField;
    cxDBPivotGrid1Field1: TcxDBPivotGridField;
    cxGrid2Level1: TcxGridLevel;
    cxGrid2: TcxGrid;
    cxGrid2DBBandedTableView1: TcxGridDBBandedTableView;
    cxGrid2DBBandedTableView1vagon_id: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1num_vagon: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1date_build: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1date_remove: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1model_name: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1comments: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1rod_vagon_cod: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1rod_vagon_name: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1factory_cod: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1factory_name: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1FIO_users: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1users_group_id: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1global_color: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1date_begin: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1date_end: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1node_registration_name: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1capacity: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1year_build: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1year_end: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1next_date_repair: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1type_park: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1owner_name: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1type_park_name: TcxGridDBBandedColumn;
    dxBarButton10: TdxBarButton;
    dxBarButton11: TdxBarButton;
    dxBarButton12: TdxBarButton;
    procedure cxGrid4DBBandedTableView1KeyPress(Sender: TObject; var Key: Char);
    procedure cxGrid4DBBandedTableView1CustomDrawColumnHeader(Sender: TcxGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxGridColumnHeaderViewInfo; var ADone: Boolean);
    procedure cxGrid4DBBandedTableView1DataControllerFilterChanged(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure MenuItem10Click(Sender: TObject);
    procedure cxGrid4DBBandedTableView1CustomDrawCell(Sender: TcxCustomGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
    procedure cxGrid4DBBandedTableView1FocusedItemChanged(Sender: TcxCustomGridTableView; APrevFocusedItem, AFocusedItem: TcxCustomGridTableItem);
    procedure dxBarButton_FilterRecords1Click(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure dxBarButton2Click(Sender: TObject);
    procedure dxBarButton9Click(Sender: TObject);
    procedure dxBarButton8Click(Sender: TObject);
    procedure dxBarButton3Click(Sender: TObject);
    procedure dxBarButton4Click(Sender: TObject);
    procedure dxBarButton1Click(Sender: TObject);
    procedure dxBarButton7Click(Sender: TObject);
    procedure cxPageControl1Change(Sender: TObject);
    procedure dxBarButton10Click(Sender: TObject);
    procedure dxBarButton12Click(Sender: TObject);
  private
    Fdate1, Fdate2  : TDateTime;
    FcxGridView : TcxGridDBBandedTableView;
  public
    constructor Create(AOwner : TApplication; action:Boolean; usr_pwd : PUser_pwd);

  end;

var
  fmVagonProfit: TfmVagonProfit;

implementation
     uses Raznoe, Period, Other, Main, Filter, DateUtils, ShellApi,
  Agree2;
{$R *.DFM}

constructor TfmVagonProfit.Create(AOwner : TApplication; action : Boolean; usr_pwd : PUser_pwd);
begin
  inherited Create(AOwner);
  Screen.Cursor := crHourglass;

  if action then FormStyle := fsNormal
  else FormStyle := fsMDIChild;

  ClientDS.CreateDataSet;
  ClientDS_Cycle.CreateDataSet;

  dxBarSubItem3.Caption := StoreRegistryDate(rgLoad, '\Software\Lis1\DateTime\VagonProfit_', Fdate1, Fdate2);
  dxBarSubItem3.Caption := FormatDateTime('dd.mm.yy', Fdate1) + ' - ' + FormatDateTime('dd.mm.yy', Fdate2);

  cxPageControl1.ActivePageIndex := 0;
  FcxGridView := cxGrid1DBBandedTableView1;

  StoreRegistryGrid(rgLoad,'\Software\Lis1\VagonProfit_Grids', cxGrid4DBBandedTableView1);
  StoreRegistryGrid(rgLoad,'\Software\Lis1\VagonProfit_Grids', cxGrid1DBBandedTableView1);

  MonitorEventFormOpen('OPEN_FORM', self.Name, fmMain.Lis, -9);
  Screen.Cursor := crDEfault;
end;

procedure TfmVagonProfit.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TfmVagonProfit.FormDestroy(Sender: TObject);
begin
  StoreRegistryGrid(rgSave,'\Software\Lis1\VagonProfit_Grids', cxGrid1DBBandedTableView1);
  StoreRegistryGrid(rgSave,'\Software\Lis1\VagonProfit_Grids', cxGrid4DBBandedTableView1);
  StoreRegistryDate(rgSave, '\Software\Lis1\DateTime\VagonProfit_', Fdate1, Fdate2);

end;

procedure TfmVagonProfit.cxGrid4DBBandedTableView1CustomDrawCell(Sender: TcxCustomGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
  if AViewInfo.GridRecord.Selected or AViewInfo.GridRecord.Focused then begin
    ACanvas.Brush.Color := clNavy;
    ACanvas.Font.Color := clWhite;
    if AViewInfo.Focused then ACanvas.Brush.Color := clBlue;
  end;
end;

procedure TfmVagonProfit.cxGrid4DBBandedTableView1CustomDrawColumnHeader(Sender: TcxGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxGridColumnHeaderViewInfo; var ADone: Boolean);
begin
  if AViewInfo.Column.Focused then begin
    ACanvas.Brush.Color := clNavy;
    ACanvas.Font.Color := clWhite;
  end;
end;

procedure TfmVagonProfit.cxGrid4DBBandedTableView1DataControllerFilterChanged(Sender: TObject);
begin
  DrawcxGridColumnOnFiltered(Sender);
end;

procedure TfmVagonProfit.cxGrid4DBBandedTableView1FocusedItemChanged(Sender: TcxCustomGridTableView; APrevFocusedItem, AFocusedItem: TcxCustomGridTableItem);
begin
  Sender.Painter.Invalidate;
end;

procedure TfmVagonProfit.cxGrid4DBBandedTableView1KeyPress(Sender: TObject; var Key: Char);
begin
  FilterColumnGridOnKeyPress(FcxGridView, Key);
end;

procedure TfmVagonProfit.cxPageControl1Change(Sender: TObject);
begin
  Screen.Cursor := crHourglass;
  case cxPageControl1.ActivePageIndex of
    0 : FcxGridView := cxGrid1DBBandedTableView1;
    1 : FcxGridView := cxGrid4DBBandedTableView1;
    2 : begin
        Query_Vagon.Close;
        Query_Vagon.Open;
        end;
  end;

  Screen.Cursor := crDefault;
end;

procedure TfmVagonProfit.MenuItem10Click(Sender: TObject);
begin
  SetdxDBGridColumns(FcxGridView);
end;

procedure TfmVagonProfit.dxBarButton_FilterRecords1Click(Sender: TObject);
begin
  FcxGridView.Filtering.ColumnFilteredItemsList := not dxBarButton_FilterRecords1.Down;
end;


procedure TfmVagonProfit.dxBarButton9Click(Sender: TObject);
type
  TFunc = function(AppHand: THandle; f: boolean; usr_pwd: PUser_pwd) : variant;
var
      FDic : TFunc;
    handle : THandle;
         v : Variant;
  Q, Query : TADOQuery;
      rows : integer;
begin
  handle := LoadLibrary('dictionary.dll');
  @FDic := GetProcAddress(handle, 'CreateWndVagon');
  v := FDic(Application.Handle, True, usr_pwd);
  FreeLibrary(handle);

  if v[1] <> '' then begin
    Q := TADOQuery.Create(nil);
    Q.Connection := fmMain.Lis;
    Q.SQL.Add('SELECT cod as num_vagon FROM dbo.StrToTbl(''' + VarToStr(v[1]) + ''', default)');
    Q.Open;
    ClientDS.DisableControls;
    ClientDS_Cycle.DisableControls;
    while not Q.Eof do begin

      if not ClientDS.Locate('num_vagon', Q.FieldByName('num_vagon').AsInteger, []) then begin
        SP_VagonProfit.Close;
        SP_VagonProfit.Parameters.Refresh;
        SP_VagonProfit.Parameters.ParamByName('@num_vagon').Value  := Q.FieldByName('num_vagon').AsInteger;
        SP_VagonProfit.Parameters.ParamByName('@date_begin').Value := Fdate1;
        SP_VagonProfit.Parameters.ParamByName('@date_end').Value   := Fdate2;
        SP_VagonProfit.Open;



        while not SP_VagonProfit.Eof do begin
          ClientDS.Append;
          ClientDS['num_vagon']       := SP_VagonProfit['num_vagon'];
          ClientDS['fact_id']         := SP_VagonProfit['fact_id'];
          ClientDS['bargain_id']      := SP_VagonProfit['bargain_id'];
          ClientDS['bargain_cod']     := SP_VagonProfit['bargain_cod'];
          ClientDS['kargoETSNG_cod']  := SP_VagonProfit['kargoETSNG_cod'];
          ClientDS['kargoETSNG_name'] := SP_VagonProfit['kargoETSNG_name'];
          ClientDS['date_from_to']    := SP_VagonProfit['date_from_to'];
          ClientDS['datpr']           := SP_VagonProfit['datpr'];
          ClientDS['fact_weight']     := SP_VagonProfit['fact_weight'];
          ClientDS['node_begin_name'] := SP_VagonProfit['node_begin_name'];
          ClientDS['node_end_name']   := SP_VagonProfit['node_end_name'];
          ClientDS['firm_customer_name'] := SP_VagonProfit['firm_customer_name'];
          ClientDS['num_cycle']       := SP_VagonProfit['num_cycle'];
          ClientDS['sum_dohod']       := SP_VagonProfit['sum_dohod'];
          ClientDS['sum_rashod']      := SP_VagonProfit['sum_rashod'];
          ClientDS['sum_delta']       := SP_VagonProfit['sum_delta'];
          ClientDS.Post;

          SP_VagonProfit.Next;
        end;

        Query := TADOQuery.Create(nil);
        Query.Recordset := SP_VagonProfit.NextRecordset(rows);
        while not Query.Eof do begin
          ClientDS_Cycle.Append;
          ClientDS_Cycle['num_vagon']       := Query['num_vagon'];
          ClientDS_Cycle['kargoETSNG_name'] := Query['kargoETSNG_name'];
          ClientDS_Cycle['node_begin_name'] := Query['node_begin_name'];
          ClientDS_Cycle['node_end_name']   := Query['node_end_name'];
          ClientDS_Cycle['date_from_to']    := Query['date_from_to'];
          ClientDS_Cycle['datpr']           := Query['datpr'];
          ClientDS_Cycle['fact_weight']     := Query['fact_weight'];
          ClientDS_Cycle['firm_customer_name'] := Query['firm_customer_name'];
          ClientDS_Cycle['num_cycle']       := Query['num_cycle'];
          ClientDS_Cycle['sum_dohod']       := Query['sum_dohod'];
          ClientDS_Cycle['sum_rashod']      := Query['sum_rashod'];
          ClientDS_Cycle['sum_delta']       := Query['sum_delta'];
          ClientDS_Cycle.Post;

          Query.Next;
        end;
        Query.Free;


      end;

      ShowTextMessage('Осталось ' + IntToStr(Q.RecordCount - Q.RecNo) + ' вагонов...', False);
      Q.Next;
    end;
    ClientDS.EnableControls;
    ClientDS_Cycle.EnableControls;
    Q.Free;
    ShowTextMessage;

  end;

end;


procedure TfmVagonProfit.dxBarButton2Click(Sender: TObject);
var rows, i, k : integer;
     VagonList : TStringList;
 str_num_vagon : string;
         Query : TADOQuery;
begin
  fmPeriod := TfmPeriod.Create(Application, Fdate1, Fdate2, 1);
  if fmPeriod.ShowModal=mrOK then begin
    Screen.Cursor := crHourglass;
    Fdate1 := fmPeriod._GetDateBegin;
    Fdate2 := fmPeriod._GetDateEnd;
    dxBarSubItem3.Caption := FormatDateTime('dd.mm.yy', Fdate1) + ' - ' + FormatDateTime('dd.mm.yy', Fdate2);

    ClientDS.DisableControls;
    ClientDS_Cycle.DisableControls;

    VagonList := TStringList.Create;
    cxGrid4DBBandedTableView1.Controller.SelectAllRecords;
    for i := 0 to cxGrid4DBBandedTableView1.Controller.SelectedRowCount - 1 do begin
      str_num_vagon := VarToStr(cxGrid4DBBandedTableView1.Controller.SelectedRows[i].Values[cxGrid4DBBandedTableView1num_vagon.Index]);
      if not VagonList.Find(str_num_vagon, k) then
        VagonList.Add(str_num_vagon);
    end;


    for i:=0 to VagonList.Count - 1 do begin
      ShowTextMessage('Осталось ' + IntToStr(VagonList.Count - i) + ' вагонов...', False);

      SP_VagonProfit.Close;
      SP_VagonProfit.Parameters.ParamByName('@num_vagon').Value  := StrToInt(VagonList.Strings[i]);
      SP_VagonProfit.Parameters.ParamByName('@date_begin').Value := Fdate1;
      SP_VagonProfit.Parameters.ParamByName('@date_end').Value   := Fdate2;
      SP_VagonProfit.Open;

      ClientDS.EmptyDataSet;
      while not SP_VagonProfit.Eof do begin
          ClientDS.Append;
          ClientDS['num_vagon']       := SP_VagonProfit['num_vagon'];
          ClientDS['fact_id']         := SP_VagonProfit['fact_id'];
          ClientDS['bargain_id']      := SP_VagonProfit['bargain_id'];
          ClientDS['bargain_cod']     := SP_VagonProfit['bargain_cod'];
          ClientDS['kargoETSNG_cod']  := SP_VagonProfit['kargoETSNG_cod'];
          ClientDS['kargoETSNG_name'] := SP_VagonProfit['kargoETSNG_name'];
          ClientDS['date_from_to']    := SP_VagonProfit['date_from_to'];
          ClientDS['datpr']           := SP_VagonProfit['datpr'];
          ClientDS['fact_weight']     := SP_VagonProfit['fact_weight'];
          ClientDS['node_begin_name'] := SP_VagonProfit['node_begin_name'];
          ClientDS['node_end_name']   := SP_VagonProfit['node_end_name'];
          ClientDS['firm_customer_name'] := SP_VagonProfit['firm_customer_name'];
          ClientDS['num_cycle']       := SP_VagonProfit['num_cycle'];
          ClientDS['sum_dohod']       := SP_VagonProfit['sum_dohod'];
          ClientDS['sum_rashod']      := SP_VagonProfit['sum_rashod'];
          ClientDS['sum_delta']       := SP_VagonProfit['sum_delta'];
          ClientDS.Post;

          SP_VagonProfit.Next;
        end;

        Query := TADOQuery.Create(nil);
        Query.Recordset := SP_VagonProfit.NextRecordset(rows);
        ClientDS_Cycle.EmptyDataSet;
        while not Query.Eof do begin
          ClientDS_Cycle.Append;
          ClientDS_Cycle['num_vagon']       := Query['num_vagon'];
          ClientDS_Cycle['kargoETSNG_name'] := Query['kargoETSNG_name'];
          ClientDS_Cycle['node_begin_name'] := Query['node_begin_name'];
          ClientDS_Cycle['node_end_name']   := Query['node_end_name'];
          ClientDS_Cycle['date_from_to']    := Query['date_from_to'];
          ClientDS_Cycle['datpr']           := Query['datpr'];
          ClientDS_Cycle['fact_weight']     := Query['fact_weight'];
          ClientDS_Cycle['firm_customer_name'] := Query['firm_customer_name'];
          ClientDS_Cycle['num_cycle']       := Query['num_cycle'];
          ClientDS_Cycle['sum_dohod']       := Query['sum_dohod'];
          ClientDS_Cycle['sum_rashod']      := Query['sum_rashod'];
          ClientDS_Cycle['sum_delta']       := Query['sum_delta'];
          ClientDS_Cycle.Post;

          Query.Next;
        end;
        Query.Free;


    end;

    ShowTextMessage;
    VagonList.Free;
    Screen.Cursor := crDefault;
  end;

  ClientDS.EnableControls;
  ClientDS_Cycle.EnableControls;
end;

procedure TfmVagonProfit.dxBarButton3Click(Sender: TObject);
var            i : integer;
  str_bargain_id : string;
begin
  if cxGrid4DBBandedTableView1.Controller.SelectedRowCount < 1 then exit;

  str_bargain_id := '';
  for i:=0 to cxGrid4DBBandedTableView1.Controller.SelectedRecordCount - 1 do
    str_bargain_id := str_bargain_id + ', ' + IntToStr(cxGrid4DBBandedTableView1.Controller.SelectedRows[i].Values[cxGrid4DBBandedTableView1bargain_id.Index]);
  Delete(str_bargain_id, 1, 2);

  PrintFrahtCardWeight_Multi2(fmMain.Lis, str_bargain_id);
end;

procedure TfmVagonProfit.dxBarButton4Click(Sender: TObject);
var        k, i : integer;
      VagonList : TStringList;
  str_num_vagon : string;
begin
  Screen.Cursor := crHourglass;

  VagonList := TStringList.Create;

  FcxGridView.Controller.SelectAll;
  for i:=0 to FcxGridView.Controller.SelectedRowCount - 1 do begin
    str_num_vagon := VarToStr(FcxGridView.Controller.SelectedRows[i].Values[FcxGridView.GetColumnByFieldName('num_vagon').Index]);
    if not VagonList.Find(str_num_vagon, k) then
      VagonList.Add(str_num_vagon);
  end;

  FcxGridView.Controller.ClearSelection;
  Screen.Cursor := crDefault;

  Application.MessageBox(PChar('Кол-во вагонов: ' + IntToStr(VagonList.Count)), 'Внимание', MB_OK);
  VagonList.Free;
end;

procedure TfmVagonProfit.dxBarButton7Click(Sender: TObject);
begin
  if FcxGridView.Controller.SelectedRowCount < 1 then exit;

  if not FcxGridView.GetColumnByFieldName('bargain_id').DataBinding.Field.IsNull then begin
    CreatefmAgree(FcxGridView.GetColumnByFieldName('bargain_id').DataBinding.Field.AsInteger, -9, FcxGridView.GetColumnByFieldName('date_from_to').DataBinding.Field.AsDatetime);
    fmAgree2.ShowModal;
  end else
    Application.MessageBox('Невозможно определить перевозку для данного значения', 'Внимание', MB_OK);

end;

procedure TfmVagonProfit.dxBarButton10Click(Sender: TObject);
var SaveDialog: TSaveDialog;
begin
  case TdxBarButton(Sender).ClickItemLink.Owner.Owner.Tag of
//    0 : PrintcxGrid(cxGrid1DBBandedTableView1);
    3 : begin
        SaveDialog := TSaveDialog.Create(Self);
        try
          SaveDialog.DefaultExt := 'XLS';
          SaveDialog.Filter := 'MS-Excel-Files (*.XLS)|*.XLS|All Files (*.*)|*.*';
          SaveDialog.Options := [ofOverwritePrompt, ofHideReadOnly, ofPathMustExist];
          if SaveDialog.Execute then
            if SaveDialog.FileName <> '' then begin
              if (Pos('.XLS', UpperCase(SaveDialog.FileName)) = length(SaveDialog.FileName) - 3) then
                  cxExportPivotGridToExcel(SaveDialog.FileName, cxDBPivotGrid1);
                ShellExecute(HWND(nil), 'open', PChar(SaveDialog.FileName), nil, nil, SW_SHOWNORMAL);
            end;
        finally
          SaveDialog.Free;
        end;
        end;
//    2 : PrintcxGrid(cxGrid4DBBandedTableView1);
//    3 : PrintcxGrid(cxGrid5DBBandedTableView1);
//    5 : PrintcxGrid(cxGrid6DBBandedTableView1);
//    6 : PrintcxGrid(cxGrid3DBBandedTableView1);
//    7 : PrintcxGrid(cxGrid7DBBandedTableView1);
  end;

end;

procedure TfmVagonProfit.dxBarButton12Click(Sender: TObject);
var
    rows, i, k : integer;
     VagonList : TStringList;
 str_num_vagon : string;
         Query : TADOQuery;
begin
  Screen.Cursor := crHourglass;
  if TControl(Sender).Tag = 1 then begin
    Fdate1 := IncMonth(Fdate1, -1);
  end;

  if TControl(Sender).Tag = 2 then begin
    Fdate1 := IncMonth(Fdate1, 1);
  end;

  Fdate2 := IncMonth(Fdate1) - 1;

  dxBarSubItem3.Caption := FormatDateTime('dd.mm.yy', Fdate1) + ' - ' + FormatDateTime('dd.mm.yy', Fdate2);

  ClientDS.DisableControls;
  ClientDS_Cycle.DisableControls;

  VagonList := TStringList.Create;
  cxGrid4DBBandedTableView1.Controller.SelectAllRecords;
  for i := 0 to cxGrid4DBBandedTableView1.Controller.SelectedRowCount - 1 do begin
    str_num_vagon := VarToStr(cxGrid4DBBandedTableView1.Controller.SelectedRows[i].Values[cxGrid4DBBandedTableView1num_vagon.Index]);
    if not VagonList.Find(str_num_vagon, k) then
      VagonList.Add(str_num_vagon);
  end;

  for i:=0 to VagonList.Count - 1 do begin
    ShowTextMessage('Осталось ' + IntToStr(VagonList.Count - i) + ' вагонов...', False);

    SP_VagonProfit.Close;
    SP_VagonProfit.Parameters.ParamByName('@num_vagon').Value  := StrToInt(VagonList.Strings[i]);
    SP_VagonProfit.Parameters.ParamByName('@date_begin').Value := Fdate1;
    SP_VagonProfit.Parameters.ParamByName('@date_end').Value   := Fdate2;
    SP_VagonProfit.Open;

    ClientDS.EmptyDataSet;
    while not SP_VagonProfit.Eof do begin
      ClientDS.Append;
      ClientDS['num_vagon']       := SP_VagonProfit['num_vagon'];
      ClientDS['fact_id']         := SP_VagonProfit['fact_id'];
      ClientDS['bargain_id']      := SP_VagonProfit['bargain_id'];
      ClientDS['bargain_cod']     := SP_VagonProfit['bargain_cod'];
      ClientDS['kargoETSNG_cod']  := SP_VagonProfit['kargoETSNG_cod'];
      ClientDS['kargoETSNG_name'] := SP_VagonProfit['kargoETSNG_name'];
      ClientDS['date_from_to']    := SP_VagonProfit['date_from_to'];
      ClientDS['datpr']           := SP_VagonProfit['datpr'];
      ClientDS['fact_weight']     := SP_VagonProfit['fact_weight'];
      ClientDS['node_begin_name'] := SP_VagonProfit['node_begin_name'];
      ClientDS['node_end_name']   := SP_VagonProfit['node_end_name'];
      ClientDS['firm_customer_name'] := SP_VagonProfit['firm_customer_name'];
      ClientDS['num_cycle']       := SP_VagonProfit['num_cycle'];
      ClientDS['sum_dohod']       := SP_VagonProfit['sum_dohod'];
      ClientDS['sum_rashod']      := SP_VagonProfit['sum_rashod'];
      ClientDS['sum_delta']       := SP_VagonProfit['sum_delta'];
      ClientDS.Post;

      SP_VagonProfit.Next;
    end;

    Query := TADOQuery.Create(nil);
    Query.Recordset := SP_VagonProfit.NextRecordset(rows);
    ClientDS_Cycle.EmptyDataSet;
    while not Query.Eof do begin
      ClientDS_Cycle.Append;
      ClientDS_Cycle['num_vagon']       := Query['num_vagon'];
      ClientDS_Cycle['kargoETSNG_name'] := Query['kargoETSNG_name'];
      ClientDS_Cycle['node_begin_name'] := Query['node_begin_name'];
      ClientDS_Cycle['node_end_name']   := Query['node_end_name'];
      ClientDS_Cycle['date_from_to']    := Query['date_from_to'];
      ClientDS_Cycle['datpr']           := Query['datpr'];
      ClientDS_Cycle['fact_weight']     := Query['fact_weight'];
      ClientDS_Cycle['firm_customer_name'] := Query['firm_customer_name'];
      ClientDS_Cycle['num_cycle']       := Query['num_cycle'];
      ClientDS_Cycle['sum_dohod']       := Query['sum_dohod'];
      ClientDS_Cycle['sum_rashod']      := Query['sum_rashod'];
      ClientDS_Cycle['sum_delta']       := Query['sum_delta'];
      ClientDS_Cycle.Post;

      Query.Next;
    end;
    Query.Free;

    ShowTextMessage;
    VagonList.Free;
    Screen.Cursor := crDefault;
  end;

  ClientDS.EnableControls;
  ClientDS_Cycle.EnableControls;

  Screen.Cursor := crDefault;
end;

procedure TfmVagonProfit.dxBarButton1Click(Sender: TObject);
begin
  PrintcxGrid(FcxGridView);
end;


procedure TfmVagonProfit.dxBarButton8Click(Sender: TObject);
var       i, k : integer;
   VagonList : TStringList;
 str_num_vagon : string;
begin
  VagonList := TStringList.Create;
  for i := 0 to FcxGridView.Controller.SelectedRowCount - 1 do begin
    str_num_vagon := VarToStr(FcxGridView.Controller.SelectedRows[i].Values[FcxGridView.GetColumnByFieldName('num_vagon').Index]);
    if not VagonList.Find(str_num_vagon, k) then
      VagonList.Add(str_num_vagon);
  end;

  for i:=0 to VagonList.Count - 1 do begin
    while ClientDS.Locate('num_vagon', StrToInt(VagonList.Strings[i]), []) do
      ClientDS.Delete;

    while ClientDS_Cycle.Locate('num_vagon', StrToInt(VagonList.Strings[i]), []) do
      ClientDS_Cycle.Delete;
  end;

  VagonList.Free;
end;

end.
