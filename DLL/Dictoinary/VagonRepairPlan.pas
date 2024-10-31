unit VagonRepairPlan;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Default,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData, cxClasses, dxBar, ImgList,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView, cxGridBandedTableView, cxGridDBBandedTableView,
  cxGridLevel, cxGrid, ADODB, cxPropertiesStore, cxCurrencyEdit, cxCalendar, cxCheckBox, cxColorComboBox, DateUtils, cxContainer,
  cxSplitter, cxLabel, ExtCtrls, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom,
  dxSkinDarkSide, dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary,
  dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMetropolis, dxSkinMetropolisDark, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinPumpkin,
  dxSkinSeven, dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus, dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008,
  dxSkinTheAsphaltWorld, dxSkinsDefaultPainters, dxSkinValentine, dxSkinVS2010, dxSkinWhiteprint, dxSkinXmas2008Blue, dxSkinscxPCPainter,
  cxNavigator, dxSkinsdxBarPainter, dxSkinOffice2016Colorful, dxSkinOffice2016Dark, dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, System.ImageList, cxImageList, cxDataControllerConditionalFormattingRulesManagerDialog, dxSkinTheBezier,
  dxDateRanges, dxSkinOffice2019Colorful;

type
  TfmVagonRepairPlan = class(TForm)
    ADOVagonRepairPlan: TADOConnection;
    Query_VagonRepairPlan: TADOQuery;
    DS_VagonRepairPlan: TDataSource;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    cxGrid1DBBandedTableView1: TcxGridDBBandedTableView;
    dxBarManager1: TdxBarManager;
    dxBarPopupMenu1: TdxBarPopupMenu;
    dxBarManager1Bar1: TdxBar;
    cxPropertiesStore1: TcxPropertiesStore;
    dxBarButton1: TdxBarButton;
    dxBarButton2: TdxBarButton;
    dxBarButton3: TdxBarButton;
    dxBarButton5: TdxBarButton;
    dxBarButton6: TdxBarButton;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle_Bold: TcxStyle;
    cxStyle_AgreeFactInc_Between: TcxStyle;
    cxStyle_AgreeFactInc_Sum: TcxStyle;
    cxStyle_AgreeFactInc_AddProfit: TcxStyle;
    cxStyle_ClientFrahtCard_Rashod: TcxStyle;
    cxStyle_ClientFrahtCard_Profitt: TcxStyle;
    cxStyle_AgreeFact: TcxStyle;
    cxStyle_Orders_cod: TcxStyle;
    cxStyle_Bargain_Cod: TcxStyle;
    dxBarSubItem1: TdxBarSubItem;
    dxBarButton7: TdxBarButton;
    dxBarButton8: TdxBarButton;
    dxBarButton9: TdxBarButton;
    dxBarButton10: TdxBarButton;
    cxImageList1: TcxImageList;
    cxGrid1DBBandedTableView1node_name: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1depo_name: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1type_repair_name: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1fact_repair_plan_id: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1node_id: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1depo_id: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1type_repair_id: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1repair_quantity: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1repair_rate: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1repair_sum: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1prerare_rate: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1prepare_sum: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1zch_kp_quantity: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1zch_kp_rate: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1zch_nb_quantity: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1zch_br_quantity: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1zch_nb_rate: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1zch_br_rate: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1zch_pa_quantity: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1zch_pa_rate: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1tarif_rate: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1total_sum: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1total_rate: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1total_total_sum: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1total_total_sum_includes_nds: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1global_color: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1date_begin: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1FIO_users: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1users_group_id: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1tarif_sum: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1comment: TcxGridDBBandedColumn;
    dxBarSubItem2: TdxBarSubItem;
    dxBarButton11: TdxBarButton;
    dxBarButton12: TdxBarButton;
    cxGrid1DBBandedTableView1date_period_name: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1total_sum_zch: TcxGridDBBandedColumn;
    Panel1: TPanel;
    cxLabel1: TcxLabel;
    cxSplitter4: TcxSplitter;
    Panel2: TPanel;
    cxGrid2: TcxGrid;
    cxGrid2DBBandedTableView1: TcxGridDBBandedTableView;
    cxGridDBBandedColumn1: TcxGridDBBandedColumn;
    cxGridDBBandedColumn2: TcxGridDBBandedColumn;
    cxGridDBBandedColumn3: TcxGridDBBandedColumn;
    cxGridDBBandedColumn4: TcxGridDBBandedColumn;
    cxGridDBBandedColumn5: TcxGridDBBandedColumn;
    cxGridDBBandedColumn6: TcxGridDBBandedColumn;
    cxGridDBBandedColumn7: TcxGridDBBandedColumn;
    cxGridDBBandedColumn8: TcxGridDBBandedColumn;
    cxGridDBBandedColumn9: TcxGridDBBandedColumn;
    cxGridDBBandedColumn10: TcxGridDBBandedColumn;
    cxGridDBBandedColumn11: TcxGridDBBandedColumn;
    cxGridDBBandedColumn12: TcxGridDBBandedColumn;
    cxGridDBBandedColumn13: TcxGridDBBandedColumn;
    cxGridDBBandedColumn14: TcxGridDBBandedColumn;
    cxGridDBBandedColumn15: TcxGridDBBandedColumn;
    cxGridDBBandedColumn16: TcxGridDBBandedColumn;
    cxGridDBBandedColumn17: TcxGridDBBandedColumn;
    cxGridDBBandedColumn18: TcxGridDBBandedColumn;
    cxGridDBBandedColumn19: TcxGridDBBandedColumn;
    cxGridDBBandedColumn20: TcxGridDBBandedColumn;
    cxGridDBBandedColumn21: TcxGridDBBandedColumn;
    cxGridDBBandedColumn22: TcxGridDBBandedColumn;
    cxGridDBBandedColumn23: TcxGridDBBandedColumn;
    cxGridDBBandedColumn24: TcxGridDBBandedColumn;
    cxGridDBBandedColumn25: TcxGridDBBandedColumn;
    cxGridDBBandedColumn26: TcxGridDBBandedColumn;
    cxGridDBBandedColumn27: TcxGridDBBandedColumn;
    cxGridDBBandedColumn28: TcxGridDBBandedColumn;
    cxGridDBBandedColumn29: TcxGridDBBandedColumn;
    cxGridDBBandedColumn30: TcxGridDBBandedColumn;
    cxGridDBBandedColumn31: TcxGridDBBandedColumn;
    cxGridDBBandedColumn32: TcxGridDBBandedColumn;
    cxGridDBBandedColumn33: TcxGridDBBandedColumn;
    cxGrid2Level1: TcxGridLevel;
    cxLabel2: TcxLabel;
    DS_VagonRepairFact: TDataSource;
    SP_fact_repair_fact_view: TADOStoredProc;
    dxBarPopupMenu2: TdxBarPopupMenu;
    dxBarButton13: TdxBarButton;
    dxBarSubItem3: TdxBarSubItem;
    dxBarButton4: TdxBarButton;
    dxBarButton14: TdxBarButton;
    cxGrid2DBBandedTableView1supply_quantity: TcxGridDBBandedColumn;
    dxBarButton_FilterRecords1: TdxBarButton;
    dxBarButton_FilterRecords2: TdxBarButton;
    dxBarButton17: TdxBarButton;
    dxBarButton18: TdxBarButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure dxBarButton1Click(Sender: TObject);
    procedure dxBarButton2Click(Sender: TObject);
    procedure dxBarButton6Click(Sender: TObject);
    procedure cxGrid1DBBandedTableView1DataControllerFilterChanged(Sender: TObject);
    procedure dxBarButton9Click(Sender: TObject);
    procedure dxBarButton10Click(Sender: TObject);
    procedure cxGrid1DBBandedTableView1CustomDrawCell(Sender: TcxCustomGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
    procedure cxGrid1DBBandedTableView1CustomDrawColumnHeader(Sender: TcxGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxGridColumnHeaderViewInfo; var ADone: Boolean);
    procedure cxGrid1DBBandedTableView1KeyPress(Sender: TObject; var Key: Char);
    procedure cxGrid1DBBandedTableView1FocusedItemChanged(Sender: TcxCustomGridTableView; APrevFocusedItem, AFocusedItem: TcxCustomGridTableItem);
    procedure dxBarButton5Click(Sender: TObject);
    procedure dxBarButton3Click(Sender: TObject);
    procedure dxBarButton4Click(Sender: TObject);
    procedure dxBarButton11Click(Sender: TObject);
    procedure dxBarButton13Click(Sender: TObject);
    procedure dxBarButton14Click(Sender: TObject);
    procedure dxBarButton_FilterRecords1Click(Sender: TObject);
    procedure dxBarButton_FilterRecords2Click(Sender: TObject);
    procedure dxBarButton18Click(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    Fdate1, Fdate2  : TDateTime;
    Fusr_pwd        :PUser_pwd;
  public
    constructor Create(App: TApplication; flag: boolean; usr_pwd: PUser_pwd);
  published
  end;

function CreateWndVagonRepairPlan(AppHand: THandle; flag: boolean; usr_pwd:PUser_pwd) : variant; export;

var
  fmVagonRepairPlan: TfmVagonRepairPlan;

implementation
   uses VagonRepairPlanAdd, Other, Raznoe, Period;
{$R *.dfm}

function CreateWndVagonRepairPlan(AppHand: THandle; flag: boolean; usr_pwd:PUser_pwd) : variant; export;
begin
   Application.Handle := AppHand;
   fmVagonRepairPlan := TfmVagonRepairPlan.Create(Application, flag, usr_pwd);
   with fmVagonRepairPlan do
    try
      if ShowModal=mrOK then result := VarArrayOf([NULL])
      else result := VarArrayOf([-9, '']);
    finally
      Free;
    end;
end;

constructor TfmVagonRepairPlan.Create(App:TApplication; flag:boolean; usr_pwd:PUser_pwd);
begin
  Screen.Cursor := crHourglass;
  inherited Create(App);
  Fusr_pwd := usr_pwd;

  ADOVagonRepairPlan.Connected := False;
  ADOVagonRepairPlan.ConnectionString := 'Persist Security Info=True;Provider=SQLOLEDB.1;User ID='+usr_pwd^.user_name+';Password='+usr_pwd^.user_pass+';Initial Catalog='+usr_pwd^.catalog+';Data Source='+usr_pwd^.server+';';
  ADOVagonRepairPlan.Connected := True;

  StoreRegistryGrid(rgLoad, '\Software\Lis1\VagonRepairPlan_Grids', cxGrid1DBBandedTableView1);
  StoreRegistryGrid(rgLoad, '\Software\Lis1\VagonRepairPlan_Grids', cxGrid2DBBandedTableView1);
  StoreRegistryDate(rgLoad, '\Software\Lis1\DateTime\VagonRepairPlan', Fdate1, Fdate2);
  dxBarSubItem2.Caption := PeriodToStr(Fdate1, Fdate2, True);

  dxBarButton5Click(nil);

  SetUsersModuleRights(self, ADOVagonRepairPlan);

  MonitorEventFormOpen('OPEN_FORM', self.Name, ADOVagonRepairPlan, -9);
  Screen.Cursor := crDefault;
end;

procedure TfmVagonRepairPlan.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TfmVagonRepairPlan.FormDestroy(Sender: TObject);
begin
  StoreRegistryGrid(rgSave, '\Software\Lis1\VagonRepairPlan_Grids', cxGrid1DBBandedTableView1);
  StoreRegistryGrid(rgSave, '\Software\Lis1\VagonRepairPlan_Grids', cxGrid2DBBandedTableView1);

  StoreRegistryDate(rgSave, '\Software\Lis1\DateTime\VagonRepairPlan', Fdate1, Fdate2);
end;

procedure TfmVagonRepairPlan.cxGrid1DBBandedTableView1CustomDrawCell(Sender: TcxCustomGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
//  if (AViewInfo.GridRecord.Values[cxGrid1DBBandedTableView1global_color.Index]<>NULL) then ACanvas.Brush.Color := AViewInfo.GridRecord.Values[cxGrid1DBBandedTableView1global_color.Index];

  if AViewInfo.GridRecord.Selected or AViewInfo.GridRecord.Focused then begin
    ACanvas.Brush.Color := clNavy;
    ACanvas.Font.Color := clWhite;
    if AViewInfo.Focused then ACanvas.Brush.Color := clBlue;
  end;
end;

procedure TfmVagonRepairPlan.cxGrid1DBBandedTableView1CustomDrawColumnHeader(Sender: TcxGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxGridColumnHeaderViewInfo; var ADone: Boolean);
begin
  if AViewInfo.Column.Focused then begin
    ACanvas.Brush.Color := clNavy;
    ACanvas.Font.Color := clWhite;
  end;
end;

procedure TfmVagonRepairPlan.cxGrid1DBBandedTableView1DataControllerFilterChanged(Sender: TObject);
begin
  DrawcxGridColumnOnFiltered(Sender);
end;

procedure TfmVagonRepairPlan.cxGrid1DBBandedTableView1FocusedItemChanged(Sender: TcxCustomGridTableView; APrevFocusedItem, AFocusedItem: TcxCustomGridTableItem);
begin
  Sender.Painter.Invalidate;
end;

procedure TfmVagonRepairPlan.cxGrid1DBBandedTableView1KeyPress(Sender: TObject; var Key: Char);
begin
  FilterColumnGridOnKeyPress(cxGrid1DBBandedTableView1, Key);
end;

procedure TfmVagonRepairPlan.dxBarButton10Click(Sender: TObject);
begin
  cxGrid1DBBandedTableView1.OptionsView.GroupByBox := not cxGrid1DBBandedTableView1.OptionsView.GroupByBox;
end;

procedure TfmVagonRepairPlan.dxBarButton11Click(Sender: TObject);
var iTag : integer;
begin
  iTag := TdxBarButton(Sender).Tag;
  fmPeriod := TfmPeriod.Create(Application, Fdate1, Fdate2, iTag);
  if fmPeriod.ShowModal = mrOk then begin
    case iTag of
      3: begin
        Fdate1 := fmPeriod._GetMonth;
        Fdate2 := IncMonth(Fdate1) - 1;
        dxBarSubItem2.Caption := PeriodToStr(Fdate1, Fdate2, True);
      end;
      1: begin
        Fdate1 := fmPeriod._GetDateBegin;
        Fdate2 := fmPeriod._GetDateEnd;
        dxBarSubItem2.Caption := PeriodToStr(Fdate1, Fdate2, True);
      end;
    end;
  dxBarButton5Click(nil);
  end;
end;

procedure TfmVagonRepairPlan.dxBarButton1Click(Sender: TObject);
begin
  fmVagonRepairPlanAdd := TfmVagonRepairPlanAdd.Create(Application);
  if fmVagonRepairPlanAdd.ShowModal = mrOk then RefreshQueryGrid(cxGrid1DBBandedTableView1, 'fact_repair_plan_id', fmVagonRepairPlanAdd._GetFact_repair_plan_id);
end;

procedure TfmVagonRepairPlan.dxBarButton2Click(Sender: TObject);
begin
  fmVagonRepairPlanAdd := TfmVagonRepairPlanAdd.Create(Application);
  fmVagonRepairPlanAdd._SetUpdate := cxGrid1DBBandedTableView1fact_repair_plan_id.DataBinding.Field.AsInteger;
  if fmVagonRepairPlanAdd.ShowModal = mrOk then RefreshQueryGrid(cxGrid1DBBandedTableView1, 'fact_repair_plan_id', fmVagonRepairPlanAdd._GetFact_repair_plan_id);
end;

procedure TfmVagonRepairPlan.dxBarButton5Click(Sender: TObject);
begin
  Screen.Cursor := crHourglass;
  cxGrid1DBBandedTableView1.BeginUpdate;
  Query_VagonRepairPlan.Close;
  Query_VagonRepairPlan.Parameters.ParamByName('date1').Value := Fdate1;
  Query_VagonRepairPlan.Parameters.ParamByName('date2').Value := Fdate2;
  Query_VagonRepairPlan.Parameters.ParamByName('users_group_id').Value := Fusr_pwd.user_group_id;
  Query_VagonRepairPlan.Open;
  cxGrid1DBBandedTableView1.EndUpdate;

  cxGrid2DBBandedTableView1.BeginUpdate;
  Sp_fact_repair_fact_view.Close;
  Sp_fact_repair_fact_view.Parameters.ParamByName('@date1').Value := Fdate1;
  Sp_fact_repair_fact_view.Parameters.ParamByName('@date2').Value := Fdate2;
  Sp_fact_repair_fact_view.Open;
  cxGrid2DBBandedTableView1.EndUpdate;
  Screen.Cursor := crDefault;
end;

procedure TfmVagonRepairPlan.dxBarButton3Click(Sender: TObject);
var i : integer;
   SP : TADOStoredProc;
begin
  if Application.MessageBox('Вы точно уверены, что хотите удалить?', 'Внимание', MB_OKCANCEL) = ID_OK then begin
    Screen.Cursor := crHourglass;

    SP := TADOStoredProc.Create(nil);
    SP.Connection := ADOVagonRepairPlan;
    SP.ProcedureName := 'sp_fact_repair_plan_modify;1';
    SP.Parameters.Refresh;
    for i := 0 to cxGrid1DBBandedTableView1.Controller.SelectedRowCount - 1 do begin
      SP.Close;
      SP.Parameters.Refresh;
      SP.Parameters.ParamByName('@type_action').Value := 2;
      SP.Parameters.ParamByName('@fact_repair_plan_id').Value := cxGrid1DBBandedTableView1.Controller.SelectedRows[i].Values[cxGrid1DBBandedTableView1fact_repair_plan_id.Index];
      try
        SP.ExecProc;
      except
      end;
      ShowTextMessage('Осталось ' + IntToStr(cxGrid1DBBandedTableView1.Controller.SelectedRowCount - i) + ' записей...', False);
    end;
    ShowTextMessage;

    RefreshQueryGrid(cxGrid1DBBandedTableView1, 'fact_repair_plan_id');
    Screen.Cursor := crDefault;
  end;
end;

procedure TfmVagonRepairPlan.dxBarButton4Click(Sender: TObject);
begin
  SetdxDBGridColumns(cxGrid2DBBandedTableView1);
end;

procedure TfmVagonRepairPlan.dxBarButton6Click(Sender: TObject);
begin
  PrintcxGrid(cxGrid1DBBandedTableView1);
end;

procedure TfmVagonRepairPlan.dxBarButton9Click(Sender: TObject);
begin
  SetdxDBGridColumns(cxGrid1DBBandedTableView1);
end;

{$REGION 'Фильтр по всем записям'}
procedure TfmVagonRepairPlan.dxBarButton_FilterRecords1Click(Sender: TObject);
begin
  cxGrid1DBBandedTableView1.Filtering.ColumnFilteredItemsList := not dxBarButton_FilterRecords1.Down;
end;

procedure TfmVagonRepairPlan.dxBarButton_FilterRecords2Click(Sender: TObject);
begin
  cxGrid2DBBandedTableView1.Filtering.ColumnFilteredItemsList := not dxBarButton_FilterRecords2.Down;
end;
{$ENDREGION 'Фильтр по всем записям'}

procedure TfmVagonRepairPlan.dxBarButton13Click(Sender: TObject);
begin
  PrintcxGrid(cxGrid2DBBandedTableView1);
end;

procedure TfmVagonRepairPlan.dxBarButton14Click(Sender: TObject);
begin
  cxGrid1DBBandedTableView1.OptionsView.GroupByBox := not cxGrid1DBBandedTableView1.OptionsView.GroupByBox;
end;

procedure TfmVagonRepairPlan.dxBarButton18Click(Sender: TObject);
begin
  Screen.Cursor := crHourglass;
  if TControl(Sender).Tag = 1 then begin
    Fdate1 := IncMonth(Fdate1, -1);
  end;

  if TControl(Sender).Tag = 2 then begin
    Fdate1 := IncMonth(Fdate1, 1);
  end;

  Fdate2 := IncMonth(Fdate1) - 1;
  dxBarSubItem2.Caption := PeriodToStr(Fdate1, Fdate2, True);
  dxBarButton5Click(nil);

  Screen.Cursor := crDefault;
end;

end.
