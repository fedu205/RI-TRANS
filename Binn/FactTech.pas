unit FactTech;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Default,
  Dialogs, ComCtrls, ToolWin, cxStyles, cxCustomData, cxGraphics, cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData,
  cxGridLevel, cxClasses, cxControls, cxGridCustomView, cxGridCustomTableView, cxGridTableView, cxGridBandedTableView,
  cxGridDBBandedTableView, cxGrid, cxPropertiesStore, Menus, ADODB, cxLookAndFeelPainters, StdCtrls,
  cxButtons, ExtCtrls, dxBar, dxBarExtItems, cxLookAndFeels, cxCalendar, cxColorComboBox, cxBarEditItem, cxTextEdit,
  cxTimeEdit, cxCheckBox, cxPC, ComObj, cxDropDownEdit, cxNavigator, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel,
  dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMetropolis, dxSkinMetropolisDark, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinPumpkin,
  dxSkinSeven, dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus, dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008,
  dxSkinTheAsphaltWorld, dxSkinsDefaultPainters, dxSkinValentine, dxSkinVS2010, dxSkinWhiteprint, dxSkinXmas2008Blue, dxSkinscxPCPainter,
  dxSkinsdxBarPainter, dxSkinOffice2016Colorful, dxSkinOffice2016Dark,
  dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, cxCurrencyEdit,
  cxDataControllerConditionalFormattingRulesManagerDialog, dxDateRanges,
  dxSkinTheBezier, dxSkinOffice2019Colorful;

type
  TfmFactTech = class(TForm)
    Query_FactTech: TADOQuery;
    DS_FactTech: TDataSource;
    cxPropertiesStore1: TcxPropertiesStore;
    SP_TrackDelete: TADOStoredProc;
    dxBarManager1: TdxBarManager;
    dxBarManager1Bar1: TdxBar;
    dxBarSubItem1: TdxBarSubItem;
    N5: TdxBarButton;
    dxBarSubItem2: TdxBarSubItem;
    N12: TdxBarButton;
    N21: TdxBarButton;
    dxBarButton2: TdxBarButton;
    dxBarButton3: TdxBarButton;
    Popup_TrackVagon: TdxBarPopupMenu;
    N3: TdxBarButton;
    Excel3: TdxBarButton;
    N1: TdxBarSubItem;
    N82: TdxBarButton;
    N83: TdxBarButton;
    N14: TdxBarButton;
    N74: TdxBarButton;
    N100: TdxBarButton;
    N10: TdxBarSubItem;
    dxBarButton6: TdxBarButton;
    dxBarSubItem3: TdxBarSubItem;
    dxBarButton4: TdxBarButton;
    dxBarButton5: TdxBarButton;
    dxBarButton7: TdxBarButton;
    dxBarButton_FilterRecords1: TdxBarButton;
    dxBarButton8: TdxBarButton;
    dxBarButton9: TdxBarButton;
    dxBarButton1: TdxBarButton;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    cxGrid1: TcxGrid;
    cxGrid1DBBandedTableView1: TcxGridDBBandedTableView;
    cxGrid1DBBandedTableView1fact_tech_id: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1num_vagon: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1block_p: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1type_repair: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1depo: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1num_notice_23: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1road: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1station_detaching: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1date_breakage: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1breakage: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1date_build: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1last_depo_place: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1date_last_depo_place: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1last_cap_place: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1date_cap_place: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1num_notice_36: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1date_repair_begin: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1date_repair_end: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1modernization: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1file_load_name: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1file_load_date: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1users_id: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1road_name: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1station_detaching_name: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1breakage_name: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1global_color: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1date_breakage_t: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1date_repair_begin_t: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1date_repair_end_t: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1file_load_date_t: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1depo_name: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1last_depo_place_name: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1last_cap_place_name: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1FIO_users: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1type_repair_name: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1model_name: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1firm_name: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1arenda_firm_name: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1set_self_cost: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1breakage_type: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1set_weight: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1type_park_name: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1vagon_id: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1comment6: TcxGridDBBandedColumn;
    cxGrid1Level1: TcxGridLevel;
    cxGrid2: TcxGrid;
    cxGrid2DBBandedTableView2: TcxGridDBBandedTableView;
    cxGrid2Level1: TcxGridLevel;
    Query_VagonRepair: TADOQuery;
    DS_VagonRepair: TDataSource;
    cxGrid2DBBandedTableView2vagon_repair_fact_id: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView2vagon_id: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView2num_vagon: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView2date_begin_repair: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView2date_end_repair: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView2breakage_name: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView2users_id: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView2FIO_users: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView2users_group_id: TcxGridDBBandedColumn;
    dxBarButton10: TdxBarButton;
    dxBarPopupMenu1: TdxBarPopupMenu;
    dxBarButton11: TdxBarButton;
    dxBarButton12: TdxBarButton;
    cxGrid2DBBandedTableView2days_repair: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView2set_arenda: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView2set_subarenda: TcxGridDBBandedColumn;
    dxBarButton13: TdxBarButton;
    dxBarButton14: TdxBarButton;
    dxBarButton15: TdxBarButton;
    SP_VagonArendaView: TADOStoredProc;
    cxGrid2DBBandedTableView2set_cheked: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView2comment: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView2firm_arenda: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView2type_arenda_repair_name: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView2firm_sarenda: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView2type_sarenda_repair_name: TcxGridDBBandedColumn;
    dxBarButton16: TdxBarButton;
    dxBarButton17: TdxBarButton;
    dxBarButton18: TdxBarButton;
    dxBarSubItem4: TdxBarSubItem;
    dxBarButton19: TdxBarButton;
    dxBarButton21: TdxBarButton;
    dxBarButton20: TdxBarButton;
    cxGrid2DBBandedTableView2date_period: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView2date_last_update: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView2date_otpr: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView2date_arrival: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView2node_end_name: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView2date_breakage: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView2station_detaching_name: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView2type_repair_name: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView2depo_name: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView2date_repair_end: TcxGridDBBandedColumn;
    dxBarButton22: TdxBarButton;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1: TcxStyle;
    cxGrid2DBBandedTableView2date_otpr1: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView2date_arrival1: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView2node_end_name1: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView2date_otpr2: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView2date_arrival2: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView2node_end_name2: TcxGridDBBandedColumn;
    dxBarSubItem5: TdxBarSubItem;
    dxBarButton23: TdxBarButton;
    dxBarButton24: TdxBarButton;
    cxGrid2DBBandedTableView2type_repair_fact_name: TcxGridDBBandedColumn;
    dxBarButton25: TdxBarButton;
    cxGrid2DBBandedTableView2firm_arenda_contract_cod: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView2firm_sarenda_contract_cod: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView2d1: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView2d2: TcxGridDBBandedColumn;
    TabSheet3: TTabSheet;
    cxGrid3: TcxGrid;
    cxGrid3DBBandedTableView1: TcxGridDBBandedTableView;
    cxGrid3Level1: TcxGridLevel;
    dxBarPopupMenu2: TdxBarPopupMenu;
    dxBarButton26: TdxBarButton;
    dxBarButton27: TdxBarButton;
    dxBarButton28: TdxBarButton;
    dxBarButton29: TdxBarButton;
    cxGrid2DBBandedTableView2set_kratk_arenda: TcxGridDBBandedColumn;
    dxBarButton30: TdxBarButton;
    dxBarButton31: TdxBarButton;
    dxBarButton32: TdxBarButton;
    dxBarButton33: TdxBarButton;
    cxGrid2DBBandedTableView2set_sub_kratk_arenda: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView2days_repair_period: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1comment_sfh_name: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1comment_sfh_color: TcxGridDBBandedColumn;
    dxBarButton34: TdxBarButton;
    dxBarButton35: TdxBarButton;
    dxBarButton36: TdxBarButton;
    dxBarButton37: TdxBarButton;
    dxBarButton38: TdxBarButton;
    dxBarSubItem6: TdxBarSubItem;
    sp_Report_fact_track: TADOStoredProc;
    DS_Report_fact_track: TDataSource;
    cxGrid3DBBandedTableView1num_vagon: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1date_begin: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1date_end: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1count_p: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1type_repair_name: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1breakage_type: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1date_breakage_dt: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1date_repare_end: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1firm_customer_name: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1type_park_name: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1rod_vagon_name: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1breakage_name: TcxGridDBBandedColumn;
    dxBarButton39: TdxBarButton;
    dxBarButton40: TdxBarButton;
    dxBarButton41: TdxBarButton;
    cxGrid1DBBandedTableView1vagon_owner_comment: TcxGridDBBandedColumn;
    procedure cxGrid1DBBandedTableView1FocusedItemChanged(Sender: TcxCustomGridTableView; APrevFocusedItem, AFocusedItem: TcxCustomGridTableItem);
    procedure cxGrid1DBBandedTableView1CustomDrawColumnHeader(Sender: TcxGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxGridColumnHeaderViewInfo; var ADone: Boolean);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure N14Click(Sender: TObject);
    procedure N74Click(Sender: TObject);
    procedure ToolButton12Click(Sender: TObject);
    procedure cxGrid1DBBandedTableView1DataControllerFilterChanged(Sender: TObject);
    procedure Action_DeleteExecute(Sender: TObject);
    procedure Excel3Click(Sender: TObject);
    procedure Action_FindExecute(Sender: TObject);
    procedure cxGrid1DBBandedTableView1KeyPress(Sender: TObject; var Key: Char);
    procedure dxBarButton4Click(Sender: TObject);
    procedure N82Click(Sender: TObject);
    procedure cxGrid1DBBandedTableView1CustomDrawCell(Sender: TcxCustomGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
    procedure cxGrid1DBBandedTableView1DblClick(Sender: TObject);
    procedure dxBarButton_FilterRecords1Click(Sender: TObject);
    procedure dxBarButton8Click(Sender: TObject);
    procedure dxBarButton9Click(Sender: TObject);
    procedure dxBarButton1Click(Sender: TObject);
    procedure PageControl1Change(Sender: TObject);
    procedure dxBarButton10Click(Sender: TObject);
    procedure cxGrid2DBBandedTableView2CustomDrawCell(
      Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
      AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
    procedure cxGrid2DBBandedTableView2KeyPress(Sender: TObject; var Key: Char);
    procedure dxBarSubItem2Click(Sender: TObject);
    procedure dxBarButton12Click(Sender: TObject);
    procedure dxBarButton11Click(Sender: TObject);
    procedure dxBarButton13Click(Sender: TObject);
    procedure dxBarButton15Click(Sender: TObject);
    procedure dxBarButton18Click(Sender: TObject);
    procedure dxBarButton19Click(Sender: TObject);
    procedure dxBarButton21Click(Sender: TObject);
    procedure dxBarButton20Click(Sender: TObject);
    procedure dxBarButton22Click(Sender: TObject);
    procedure dxBarButton2Click(Sender: TObject);
    procedure dxBarButton23Click(Sender: TObject);
    procedure dxBarButton24Click(Sender: TObject);
    procedure dxBarButton25Click(Sender: TObject);
    procedure dxBarButton26Click(Sender: TObject);
    procedure dxBarButton27Click(Sender: TObject);
    procedure cxGrid3DBBandedTableView1TcxGridDBDataControllerTcxDataSummaryFooterSummaryItems3GetText(
      Sender: TcxDataSummaryItem; const AValue: Variant; AIsFooter: Boolean;
      var AText: string);
    procedure cxGrid3DBBandedTableView1KeyPress(Sender: TObject; var Key: Char);
    procedure dxBarButton29Click(Sender: TObject);
    procedure dxBarButton34Click(Sender: TObject);
    procedure dxBarButton39Click(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    Fdate1, Fdate2 : TDateTime;
    procedure SetActivePageIdex(page_idex: integer);
  public
    constructor Create(AOwner : TApplication; flag: boolean);
  published
    property _Fdate1            : TDateTime  write Fdate1;
    property _Fdate2            : TDateTime  write Fdate2;
    property _SetActivePageIdex : integer     write SetActivePageIdex;
  end;

var
  fmFactTech: TfmFactTech;

implementation
  uses Raznoe, Other, Main, Period, FactTechAdd, Filter, VagonArendaRepairAdd;
{$R *.dfm}

constructor TfmFactTech.Create(AOwner: TApplication; flag: boolean);
begin
  Screen.Cursor := crHourglass;

  inherited Create(AOwner);
  cxGrid1DBBandedTableView1num_vagon.Styles.Content := fmMain.cxStyle_Bold;

  LoadRegistryDate_('\Software\LIS1\DateTime\FactTech', Fdate1, Fdate2);
  StoreRegistryGrid(rgLoad,'\Software\Lis1\FactTech_Grids', cxGrid1DBBandedTableView1, 1);
  StoreRegistryGrid(rgLoad,'\Software\Lis1\FactTech_Grids', cxGrid2DBBandedTableView2, 1);

  if flag then begin
    //FormStyle := fsNormal;
    FormStyle := fsMDIChild;
  end else begin
   FormStyle := fsMDIChild;
   PageControl1.ActivePage := TabSheet1;
   PageControl1Change(nil);
  end;

  dxBarSubItem3.Caption := PeriodToStr(Fdate1, Fdate2, True);

  SetUsersModuleRights(self, fmMain.Lis);
  MonitorEventFormOpen('OPEN_FORM', self.Name, fmMain.Lis, -9);
  Screen.Cursor := crDefault;
end;

procedure TfmFactTech.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  StoreRegistryGrid(rgSave,'\Software\Lis1\FactTech_Grids', cxGrid1DBBandedTableView1, 1);
  StoreRegistryGrid(rgSave,'\Software\Lis1\FactTech_Grids', cxGrid2DBBandedTableView2, 1);

  SavePositionForm(self, '\Software\LIS1\DateTime\FactTech', Fdate1, Fdate2);
  Action := caFree;
end;

procedure TfmFactTech.FormDestroy(Sender: TObject);
begin
  StoreRegistryGrid(rgSave,'\Software\Lis1\FactTech_Grids', cxGrid1DBBandedTableView1, 1);
  StoreRegistryGrid(rgSave,'\Software\Lis1\FactTech_Grids', cxGrid2DBBandedTableView2, 1);
end;

procedure TfmFactTech.Action_DeleteExecute(Sender: TObject);
var i : integer;
begin
  if Application.MessageBox('Вы точно уверены?', 'Внимание', MB_OKCANCEL) = IDOK then begin
    Screen.Cursor := -11;
    for i := 0 to cxGrid1DBBandedTableView1.Controller.SelectedRowCount - 1 do begin
      SP_TrackDelete.Close;
      SP_TrackDelete.Parameters.Refresh;
      SP_TrackDelete.Parameters.ParamByName('@fact_tech_id').Value := cxGrid1DBBandedTableView1.Controller.SelectedRows[i].Values[cxGrid1DBBandedTableView1.GetColumnByFieldName('fact_tech_id').Index];
      SP_TrackDelete.Parameters.ParamByName('@type_action').Value  := 2;
        try
          SP_TrackDelete.ExecProc;
          ShowTextMessage('Осталось ' + IntToStr(cxGrid1DBBandedTableView1.Controller.SelectedRowCount - i) + ' записей...', False);
          if SP_TrackDelete.Parameters.ParamByName('@fact_tech_id').Value = -9 then Application.MessageBox('Нельзя удалить вагон','Внимание',MB_OK);
        except
        end;
    end;
    ShowTextMessage;
    RefreshQueryGrid(cxGrid1DBBandedTableView1, 'fact_tech_id');
  end;
end;

procedure TfmFactTech.Action_FindExecute(Sender: TObject);
var S: string;
begin
  S := ShowFactTrackVagonDlg(Application.Handle, usr_pwd, 0);
  if Trim(S)='' then exit;

end;

procedure TfmFactTech.cxGrid1DBBandedTableView1CustomDrawCell(Sender: TcxCustomGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
//  if (AViewInfo.GridRecord.Values[cxGrid1DBBandedTableView1global_color.Index]<>NULL) then ACanvas.Brush.Color := AViewInfo.GridRecord.Values[cxGrid1DBBandedTableView1global_color.Index];

  if (AViewInfo.GridRecord.Values[cxGrid1DBBandedTableView1comment_sfh_color.Index]<>NULL) then ACanvas.Brush.Color := AViewInfo.GridRecord.Values[cxGrid1DBBandedTableView1comment_sfh_color.Index];

  if AViewInfo.GridRecord.Selected or AViewInfo.GridRecord.Focused then begin
    ACanvas.Brush.Color := clNavy;
    ACanvas.Font.Color := clWhite;
    if AViewInfo.Focused then ACanvas.Brush.Color := clBlue;
  end;
end;

procedure TfmFactTech.cxGrid1DBBandedTableView1CustomDrawColumnHeader(Sender: TcxGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxGridColumnHeaderViewInfo; var ADone: Boolean);
begin
  if AViewInfo.Column.Focused then begin
    ACanvas.Brush.Color := clNavy;
    ACanvas.Font.Color := clWhite;
  end;
end;

procedure TfmFactTech.cxGrid1DBBandedTableView1DataControllerFilterChanged(Sender: TObject);
begin
  DrawcxGridColumnOnFiltered(Sender);
end;

procedure TfmFactTech.cxGrid1DBBandedTableView1DblClick(Sender: TObject);
begin
  fmFactTechAdd := TfmFactTechAdd.Create(Application);
  fmFactTechAdd._SetUpdate := cxGrid1DBBandedTableView1fact_tech_id.DataBinding.Field.AsInteger;
  fmFactTechAdd.ShowModal;
end;

procedure TfmFactTech.cxGrid1DBBandedTableView1FocusedItemChanged(Sender: TcxCustomGridTableView; APrevFocusedItem, AFocusedItem: TcxCustomGridTableItem);
begin
  cxGrid1DBBandedTableView1.Painter.Invalidate;
end;

procedure TfmFactTech.cxGrid1DBBandedTableView1KeyPress(Sender: TObject; var Key: Char);
begin
   FilterColumnGridOnKeyPress(cxGrid1DBBandedTableView1, Key);
end;

procedure TfmFactTech.cxGrid2DBBandedTableView2CustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
  if AViewInfo.GridRecord.Selected or AViewInfo.GridRecord.Focused then begin
    ACanvas.Brush.Color := clNavy;
    ACanvas.Font.Color := clWhite;
    if AViewInfo.Focused then ACanvas.Brush.Color := clBlue;
  end;

  if (Sender = cxGrid2DBBandedTableView2)  then begin
   if (AViewInfo.GridRecord.Values[cxGrid2DBBandedTableView2set_cheked.Index]= 0) then begin
     ACanvas.Brush.Color :=  $00BEFFFF;
   end else begin
   if (not VarIsNull(AViewInfo.GridRecord.Values[cxGrid2DBBandedTableView2date_begin_repair.Index]))
   and (not VarIsNull(AViewInfo.GridRecord.Values[cxGrid2DBBandedTableView2date_end_repair.Index])) then
     ACanvas.Brush.Color := $00D9FED6
     else
     ACanvas.Brush.Color := $00D7C6FD;
   end;

    if AViewInfo.GridRecord.Selected or AViewInfo.GridRecord.Focused then begin
     ACanvas.Brush.Color := clNavy;
     //ACanvas.Font.Color := clWhite;
     if AViewInfo.Focused then ACanvas.Brush.Color := clBlue;
    end;
  end;

end;

procedure TfmFactTech.cxGrid2DBBandedTableView2KeyPress(Sender: TObject;
  var Key: Char);
begin
   FilterColumnGridOnKeyPress(cxGrid2DBBandedTableView2, Key);
end;

procedure TfmFactTech.cxGrid3DBBandedTableView1KeyPress(Sender: TObject;
  var Key: Char);
begin
 FilterColumnGridOnKeyPress(cxGrid3DBBandedTableView1, Key);
end;

procedure TfmFactTech.cxGrid3DBBandedTableView1TcxGridDBDataControllerTcxDataSummaryFooterSummaryItems3GetText(
  Sender: TcxDataSummaryItem; const AValue: Variant; AIsFooter: Boolean;
  var AText: string);
begin
// if Query_Reps.Active then
//  AText := Query_Reps.FieldByName('vc').AsString;
end;

procedure TfmFactTech.PageControl1Change(Sender: TObject);
begin
  Screen.Cursor := crHourglass;
  case PageControl1.ActivePageIndex of
  0 : begin
        Caption := 'Техническое состояние вагонов';
        cxGrid1DBBandedTableView1.DataController.BeginFullUpdate;
        Query_FactTech.Close;
        Query_FactTech.Parameters.ParamByName('date1').Value := Fdate1;
        Query_FactTech.Parameters.ParamByName('date2').Value := Fdate2 + 1;
        Query_FactTech.Parameters.ParamByName('users_group_id').Value := usr_pwd.user_group_id;
        Query_FactTech.Open;
        cxGrid1DBBandedTableView1.DataController.EndFullUpdate;
        dxBarButton10.Visible := ivNever;
        dxBarButton25.Visible := ivNever;
      end;
  1 : begin
        Caption := 'Исключение ремонтов из аренды';
        SP_VagonArendaView.Close;
        SP_VagonArendaView.Parameters.Refresh;
        SP_VagonArendaView.Parameters.ParamByName('@set_view_arenda_repair').Value := 1;
        SP_VagonArendaView.Parameters.ParamByName('@date1').Value := Fdate1;
        SP_VagonArendaView.Parameters.ParamByName('@date2').Value := Fdate2;
        SP_VagonArendaView.Parameters.ParamByName('@users_group_id').Value := usr_pwd.user_group_id;
        SP_VagonArendaView.Open;
        dxBarButton10.Visible := ivAlways;
        dxBarButton25.Visible := ivAlways;
      end;
  2 : begin
        Caption := 'Реестр забракованных вагонов';
        sp_Report_fact_track.Close;
        sp_Report_fact_track.CommandTimeout := 900;

        sp_Report_fact_track.Parameters.Refresh;
        sp_Report_fact_track.Parameters.ParamByName('@type_report').Value := 344;
        sp_Report_fact_track.Parameters.ParamByName('@date_begin').Value := Fdate1;
        sp_Report_fact_track.Parameters.ParamByName('@date_end').Value := Fdate2;
        sp_Report_fact_track.Parameters.ParamByName('@users_group_id').Value := usr_pwd.user_group_id;
        sp_Report_fact_track.Open;
        dxBarButton10.Visible := ivNever;
        dxBarButton25.Visible := ivNever;
  end;
  end;
  dxBarSubItem3.Caption := PeriodToStr(Fdate1, Fdate2, True);
  Screen.Cursor := crDefault;
end;

procedure TfmFactTech.dxBarButton8Click(Sender: TObject);
var i : integer;
begin
  if Application.MessageBox('Отметить?', 'Внимание', MB_OKCANCEL) = IDOK then begin
    Screen.Cursor := -11;
    for i := 0 to cxGrid1DBBandedTableView1.Controller.SelectedRowCount - 1 do begin
      SP_TrackDelete.Close;
      SP_TrackDelete.Parameters.Refresh;
      SP_TrackDelete.Parameters.ParamByName('@fact_tech_id').Value := cxGrid1DBBandedTableView1.Controller.SelectedRows[i].Values[cxGrid1DBBandedTableView1.GetColumnByFieldName('fact_tech_id').Index];
      SP_TrackDelete.Parameters.ParamByName('@set_self_cost').Value := not cxGrid1DBBandedTableView1set_self_cost.DataBinding.Field.AsBoolean;
      SP_TrackDelete.Parameters.ParamByName('@type_action').Value  := 1;
        try
          SP_TrackDelete.ExecProc;
          ShowTextMessage('Осталось ' + IntToStr(cxGrid1DBBandedTableView1.Controller.SelectedRowCount - i) + ' записей...', False);
          if SP_TrackDelete.Parameters.ParamByName('@fact_tech_id').Value = -9 then Application.MessageBox('Нельзя удалить вагон','Внимание',MB_OK);
        except
        end;
    end;
    ShowTextMessage;
   RefreshQueryGrid(cxGrid1DBBandedTableView1, 'fact_tech_id', cxGrid1DBBandedTableView1fact_tech_id.DataBinding.Field.AsInteger);
  end;
end;

procedure TfmFactTech.dxBarButton9Click(Sender: TObject);
type
  TFunc = function(AppHand:THandle) : Variant;
var                List : TStringList;
                   i, n : integer;
cxGridDBBandedTableView : TcxGridDBBandedTableView;
                 FDic   : TFunc;
                 handle : THandle;
                 v      : Variant;
                 str    : string;
                 Grids  : array of TcxGridDBBandedTableView;
begin
  {
  if PageControl1.ActivePage = TabSheet1 then cxGridDBBandedTableView := cxGrid1DBBandedTableView1;
  if PageControl1.ActivePage = TabSheet2 then cxGridDBBandedTableView := cxGrid2DBBandedTableView2;
  if PageControl1.ActivePage = TabSheet3 then cxGridDBBandedTableView := cxGrid3DBBandedTableView1;
  }

  SetLength(Grids, 3);
  Grids[0] := cxGrid1DBBandedTableView1;
  Grids[1] := cxGrid2DBBandedTableView2;
  Grids[2] := cxGrid3DBBandedTableView1;

  handle := LoadLibrary('dictionary.dll');
  @FDic := GetProcAddress(handle, 'CreateWndChoose');
  v := FDic(Application.Handle);
  str := v[0];
  List := TStringList.Create;
  List.Text := str;
  FreeLibrary(handle);

  for n := 0 to 2 do
  begin
    cxGridDBBandedTableView := Grids[n];
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
  end;

  SetLength(Grids, 0);
  List.Free;
  Screen.Cursor := crDefault;
end;

{$REGION 'Фильтр по всем записям'}
procedure TfmFactTech.dxBarButton_FilterRecords1Click(Sender: TObject);
begin
  cxGrid1DBBandedTableView1.Filtering.ColumnFilteredItemsList := not dxBarButton_FilterRecords1.Down;
end;
procedure TfmFactTech.dxBarSubItem2Click(Sender: TObject);
begin

end;

{$ENDREGION 'Фильтр по всем записям'}

procedure TfmFactTech.Excel3Click(Sender: TObject);
begin
  PrintcxGrid(cxGrid1DBBandedTableView1);
end;

procedure TfmFactTech.N14Click(Sender: TObject);
begin
   SetdxDBGridColumns(cxGrid1DBBandedTableView1);
end;

procedure TfmFactTech.N74Click(Sender: TObject);
begin
  cxGrid1DBBandedTableView1.OptionsView.GroupByBox := not cxGrid1DBBandedTableView1.OptionsView.GroupByBox;
end;

procedure TfmFactTech.N82Click(Sender: TObject);
begin
  SetRecordColor('fact_tech_id', cxGrid1DBBandedTableView1, 'fact_tech', TMenuItem(Sender).Tag = 1);
  RefreshQueryGrid(cxGrid1DBBandedTableView1, 'fact_tech_id', cxGrid1DBBandedTableView1fact_tech_id.DataBinding.Field.AsInteger);
end;

procedure TfmFactTech.ToolButton12Click(Sender: TObject);
begin
  Close;
end;


procedure TfmFactTech.dxBarButton10Click(Sender: TObject);
var exWks, exApp  : Variant;
    count_str     : integer;
    OpenDialog1   : TOpenDialog;
    file_name     : string;
    SP            : TADOStoredProc;
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
    SP.ProcedureName := 'sp_vagon_repair_fact_modify;1';
    SP.Parameters.Refresh;
    count_str := 2;
    while not (TVarData(exWks.Cells[count_str,1].Value).VType = varEmpty) do begin
      ShowTextMessage('Обработано '+IntToStr(count_str - 2)+' вагонов', False);

      SP.Parameters.ParamByName('@type_action'      ).Value := 0;
      SP.Parameters.ParamByName('@num_vagon'        ).Value := exWks.Range['A' + IntToStr(count_str)].Value;
      SP.Parameters.ParamByName('@date_begin_repair').Value := exWks.Range['B' + IntToStr(count_str)].Value;
      SP.Parameters.ParamByName('@date_end_repair'  ).Value := exWks.Range['C' + IntToStr(count_str)].Value;
      SP.Parameters.ParamByName('@set_cheked'       ).Value := 1;
      SP.Parameters.ParamByName('@comment'          ).Value := 'Загружено из Excel.';
      try
        SP.ExecProc;
      except
        on E: Exception do
          Application.MessageBox(PChar(E.Message), 'Внимание', MB_OK);
      end;

      count_str := count_str + 1;
    end;
    ShowTextMessage;
  finally
    exApp.Quit;
    exWks := null;
    exWks := null;
  end;

  RefreshQueryGrid(cxGrid2DBBandedTableView2, 'vagon_repair_fact_id');
end;

procedure TfmFactTech.dxBarButton11Click(Sender: TObject);
var i : integer;
   SP : TADOStoredProc;
begin
  SP := TADOStoredProc.Create(nil);
  SP.Connection := fmMain.Lis;
  SP.ProcedureName := 'sp_vagon_repair_fact_modify;1';
  SP.Parameters.Refresh;

  if Application.MessageBox('Вы точно уверены?', 'Внимание', MB_OKCANCEL) = IDOK then begin
    Screen.Cursor := -11;
    for i := 0 to cxGrid2DBBandedTableView2.Controller.SelectedRowCount - 1 do begin
      SP.Close;
      SP.Parameters.Refresh;
      SP.Parameters.ParamByName('@vagon_repair_fact_id').Value := cxGrid2DBBandedTableView2.Controller.SelectedRows[i].Values[cxGrid2DBBandedTableView2.GetColumnByFieldName('vagon_repair_fact_id').Index];
      SP.Parameters.ParamByName('@type_action').Value  := 2;
        try
          SP.ExecProc;
          ShowTextMessage('Осталось ' + IntToStr(cxGrid1DBBandedTableView1.Controller.SelectedRowCount - i) + ' записей...', False);
          if SP.Parameters.ParamByName('@vagon_repair_fact_id').Value = -9 then Application.MessageBox('Нельзя удалить ремонт','Внимание',MB_OK);
        except
        end;
    end;
    ShowTextMessage;
    RefreshQueryGrid(cxGrid2DBBandedTableView2, 'vagon_repair_fact_id');
  end;
end;

procedure TfmFactTech.dxBarButton12Click(Sender: TObject);
begin
  PrintcxGrid(cxGrid2DBBandedTableView2);
end;

procedure TfmFactTech.dxBarButton13Click(Sender: TObject);
var i : integer;
   SP : TADOStoredProc;
begin
  SP := TADOStoredProc.Create(nil);
  SP.Connection := fmMain.Lis;
  SP.ProcedureName := 'sp_vagon_repair_fact_modify;1';
  SP.Parameters.Refresh;

  if Application.MessageBox('Вы точно уверены?', 'Внимание', MB_OKCANCEL) = IDOK then begin
    Screen.Cursor := -11;
    for i := 0 to cxGrid2DBBandedTableView2.Controller.SelectedRowCount - 1 do begin
      SP.Close;
      SP.Parameters.Refresh;
      SP.Parameters.ParamByName('@vagon_repair_fact_id').Value := cxGrid2DBBandedTableView2.Controller.SelectedRows[i].Values[cxGrid2DBBandedTableView2.GetColumnByFieldName('vagon_repair_fact_id').Index];
      SP.Parameters.ParamByName('@type_action').Value  := TComponent(Sender).Tag;

        try
          SP.ExecProc;
          ShowTextMessage('Осталось ' + IntToStr(cxGrid1DBBandedTableView1.Controller.SelectedRowCount - i) + ' записей...', False);
          if SP.Parameters.ParamByName('@vagon_repair_fact_id').Value = -9 then Application.MessageBox('Ошибка при обновлении!','Внимание',MB_OK);
        except
        end;
    end;
    ShowTextMessage;
    RefreshQueryGrid(cxGrid2DBBandedTableView2, 'vagon_repair_fact_id');
  end;
end;

procedure TfmFactTech.dxBarButton1Click(Sender: TObject);
var i :integer;
begin
   for i := 0 to cxGrid1DBBandedTableView1.Controller.SelectedRecordCount - 1 do begin
    SP_TrackDelete.Close;
    SP_TrackDelete.Parameters.Refresh;
    SP_TrackDelete.Parameters.ParamByName('@fact_tech_id').Value := cxGrid1DBBandedTableView1.Controller.SelectedRows[i].Values[cxGrid1DBBandedTableView1.GetColumnByFieldName('fact_tech_id').Index];
    SP_TrackDelete.Parameters.ParamByName('@type_action').Value  := 3;
      try
        SP_TrackDelete.ExecProc;
        ShowTextMessage('Осталось ' + IntToStr(cxGrid1DBBandedTableView1.Controller.SelectedRowCount - i) + ' записей...', False);
        if SP_TrackDelete.Parameters.ParamByName('@fact_tech_id').Value = -9 then Application.MessageBox('Ошибка обновления веса','Внимание',MB_OK);
      except
      end;
      ShowTextMessage('Осталось '+IntToStr(cxGrid1DBBandedTableView1.Controller.SelectedRecordCount - i)+' записей...', False);
  end;

  ShowTextMessage('', True);
  RefreshQueryGrid(cxGrid1DBBandedTableView1, 'fact_tech_id', cxGrid1DBBandedTableView1fact_tech_id.DataBinding.Field.AsInteger);
end;

procedure TfmFactTech.dxBarButton15Click(Sender: TObject);
begin
  fmFactTechAdd := TfmFactTechAdd.Create(Application);
  fmFactTechAdd._SetUpdate := cxGrid1DBBandedTableView1fact_tech_id.DataBinding.Field.AsInteger;
  fmFactTechAdd.cxButton1.Visible := True;
  if fmFactTechAdd.ShowModal = mrOk then
    RefreshQueryGrid(cxGrid1DBBandedTableView1, 'fact_tech_id', cxGrid1DBBandedTableView1fact_tech_id.DataBinding.Field.AsInteger);
end;

procedure TfmFactTech.dxBarButton18Click(Sender: TObject);
var i : integer;
   SP : TADOStoredProc;
begin
  SP := TADOStoredProc.Create(nil);
  SP.Connection := fmMain.Lis;
  SP.ProcedureName := 'sp_vagon_arenda_repair_load;1';
  SP.Parameters.Refresh;
  if Application.MessageBox('Вы точно уверены?', 'Внимание', MB_OKCANCEL) = IDOK then begin
    Screen.Cursor := crHourglass;
    SP.Parameters.ParamByName('@date1').Value := Fdate1;
    SP.Parameters.ParamByName('@date2').Value := Fdate2;
    SP.Parameters.ParamByName('@type_arenda_repair_cod').Value := '06';
    SP.Parameters.ParamByName('@users_group_id').Value := usr_pwd.user_group_id;
    try
      SP.ExecProc;
    except
    end;
    Screen.Cursor := crDefault;
    RefreshQueryGrid(cxGrid2DBBandedTableView2, 'vagon_repair_fact_id');
  end;
end;

procedure TfmFactTech.dxBarButton19Click(Sender: TObject);
begin
  fmVagonArendaRepairAdd := TfmVagonArendaRepairAdd.Create(Application);
  if fmVagonArendaRepairAdd.ShowModal = mrOk then
    RefreshQueryGrid(cxGrid2DBBandedTableView2, 'vagon_repair_fact_id',fmVagonArendaRepairAdd._Fvagon_repair_fact_id);
end;

procedure TfmFactTech.dxBarButton20Click(Sender: TObject);
begin
  fmPeriod := TfmPeriod.Create(Application, Fdate1, Fdate1, 3);
  if fmPeriod.ShowModal = mrOk then begin
    Fdate1 := fmPeriod._GetMonth;
    Fdate2 := IncMonth(Fdate1, 1)-1;
    dxBarButton2Click(nil);
    dxBarSubItem3.Caption := PeriodToStr(Fdate1, Fdate2, True);
  end;
end;

procedure TfmFactTech.SetActivePageIdex(page_idex: integer);
begin
  PageControl1.ActivePageIndex := page_idex;
  if page_idex = 1 then
   dxBarButton25Click(nil)
  else
   PageControl1Change(nil);
end;

procedure TfmFactTech.dxBarButton4Click(Sender: TObject);
begin
  fmPeriod := TfmPeriod.Create(Application, Fdate1, Fdate2,TComponent(Sender).Tag);
  if fmPeriod.ShowModal=mrOK then begin
    Screen.Cursor := crHourglass;
    Fdate1 := fmPeriod._GetDateBegin;
    Fdate2 := fmPeriod._GetDateEnd;
    dxBarButton2Click(nil);
    Screen.Cursor := crDefault;
    dxBarSubItem3.Caption := PeriodToStr(Fdate1, Fdate2, True);
  end;
end;

procedure TfmFactTech.dxBarButton21Click(Sender: TObject);
begin
  fmVagonArendaRepairAdd := TfmVagonArendaRepairAdd.Create(Application);
    fmVagonArendaRepairAdd._SetUpdate := cxGrid2DBBandedTableView2vagon_repair_fact_id.DataBinding.Field.AsInteger;
  if fmVagonArendaRepairAdd.ShowModal = mrOk then
  RefreshQueryGrid(cxGrid2DBBandedTableView2, 'vagon_repair_fact_id', cxGrid2DBBandedTableView2vagon_repair_fact_id.DataBinding.Field.AsInteger);
end;

procedure TfmFactTech.dxBarButton22Click(Sender: TObject);
var i : integer;
   SP : TADOStoredProc;
begin
  SP := TADOStoredProc.Create(nil);
  SP.Connection := fmMain.Lis;
  SP.ProcedureName := 'sp_vagon_repair_fact_modify';

  if Application.MessageBox('Вы точно уверены?', 'Внимание', MB_OKCANCEL) = IDOK then begin
    Screen.Cursor := -11;
    for i := 0 to cxGrid1DBBandedTableView1.Controller.SelectedRowCount - 1 do begin
      Screen.Cursor := crHourglass;
      SP.Parameters.Refresh;
      SP.Parameters.ParamByName('@type_action').Value := TComponent(Sender).Tag;
      SP.Parameters.ParamByName('@fact_tech_id').Value := cxGrid1DBBandedTableView1.Controller.SelectedRows[i].Values[cxGrid1DBBandedTableView1.GetColumnByFieldName('fact_tech_id').Index];
      try
       SP.ExecProc;
      except
      end;
      Screen.Cursor := crDefault;
    end;
    ShowTextMessage;
  end;
end;

procedure TfmFactTech.dxBarButton23Click(Sender: TObject);
begin
   SetdxDBGridColumns(cxGrid2DBBandedTableView2);
end;

procedure TfmFactTech.dxBarButton24Click(Sender: TObject);
begin
  cxGrid2DBBandedTableView2.OptionsView.GroupByBox := not cxGrid2DBBandedTableView2.OptionsView.GroupByBox;
end;

procedure TfmFactTech.dxBarButton2Click(Sender: TObject);
begin
  PageControl1Change(nil);
end;

procedure TfmFactTech.dxBarButton34Click(Sender: TObject);
var i : integer;
   SP : TADOStoredProc;
begin
  SP := TADOStoredProc.Create(nil);
  SP.Connection := fmMain.Lis;
  SP.ProcedureName := 'sp_fact_tech_modify';

  if Application.MessageBox('Вы точно уверены?', 'Внимание', MB_OKCANCEL) = IDOK then begin
    Screen.Cursor := -11;
    for i := 0 to cxGrid1DBBandedTableView1.Controller.SelectedRowCount - 1 do begin
      Screen.Cursor := crHourglass;
      SP.Parameters.Refresh;
      SP.Parameters.ParamByName('@type_action').Value := TComponent(Sender).Tag + 4;
      SP.Parameters.ParamByName('@fact_tech_id').Value := cxGrid1DBBandedTableView1.Controller.SelectedRows[i].Values[cxGrid1DBBandedTableView1.GetColumnByFieldName('fact_tech_id').Index];
      try
       SP.ExecProc;
      except
      end;
      Screen.Cursor := crDefault;
    end;
    ShowTextMessage;
    RefreshQueryGrid(cxGrid1DBBandedTableView1, 'fact_tech_id', cxGrid1DBBandedTableView1fact_tech_id.DataBinding.Field.AsInteger);
  end;
end;

procedure TfmFactTech.dxBarButton39Click(Sender: TObject);
begin
  UsersSettingModify(TComponent(Sender).Tag, TForm(self).Name, TcxControl(cxGrid1DBBandedTableView1), fmMain.Lis);
end;

procedure TfmFactTech.dxBarButton25Click(Sender: TObject);
var SP : TADOStoredProc;
begin
  SP := TADOStoredProc.Create(nil);
  SP.Connection := fmMain.Lis;
  SP.ProcedureName := 'sp_vagon_repair_fact_update';
  SP.Parameters.Refresh;

  if Application.MessageBox('Обновить даты исключений?', 'Внимание', MB_OKCANCEL) = IDOK then begin
   Screen.Cursor := crHourglass;
   ShowTextMessage('Обновление исключений.', False);
   SP.Parameters.ParamByName('@users_group_id').Value := usr_pwd.user_group_id;
   try
    SP.ExecProc;
   except
   Screen.Cursor := crDefault;
   ShowTextMessage;
   end;
   Screen.Cursor := crDefault;
   ShowTextMessage;
  end;
  PageControl1Change(nil);
end;

procedure TfmFactTech.dxBarButton26Click(Sender: TObject);
begin
PrintcxGrid(cxGrid3DBBandedTableView1);
end;

procedure TfmFactTech.dxBarButton27Click(Sender: TObject);
var i : integer;
SP : TADOStoredProc;
begin
  if Application.MessageBox('Вы точно уверены?', 'Внимание', MB_OKCANCEL) = IDOK then begin
    SP := TADOStoredProc.Create(nil);
    SP.Connection := fmMain.Lis;
    SP.ProcedureName := 'sp_fact_track_reps_modify';
    SP.Parameters.Refresh;

    Screen.Cursor := -11;
    for i := 0 to cxGrid3DBBandedTableView1.Controller.SelectedRowCount - 1 do begin
      SP.Close;
      SP.Parameters.Refresh;
      SP.Parameters.ParamByName('@fact_track_reps_id').Value := cxGrid3DBBandedTableView1.Controller.SelectedRows[i].Values[cxGrid3DBBandedTableView1.GetColumnByFieldName('fact_track_reps_id').Index];
      SP.Parameters.ParamByName('@type_action').Value  := 2;
        try
          SP.ExecProc;
          ShowTextMessage('Осталось ' + IntToStr(cxGrid3DBBandedTableView1.Controller.SelectedRowCount - i) + ' записей...', False);
          //if SP.Parameters.ParamByName('@fact_tech_id').Value = -9 then Application.MessageBox('Нельзя удалить вагон','Внимание',MB_OK);
        except
        end;
    end;
    ShowTextMessage;
    RefreshQueryGrid(cxGrid3DBBandedTableView1, 'fact_track_reps_id');
  end;
end;

procedure TfmFactTech.dxBarButton29Click(Sender: TObject);
begin
  Screen.Cursor := crHourglass;
  if TControl(Sender).Tag = 1 then begin
    Fdate1 := IncMonth(Fdate1, -1);
  end;

  if TControl(Sender).Tag = 2 then begin
    Fdate1 := IncMonth(Fdate1, 1);
  end;

  Fdate2 := IncMonth(Fdate1, 1) - 1;
  dxBarButton2Click(nil);
  dxBarSubItem3.Caption := PeriodToStr(Fdate1, Fdate2, True);

  Screen.Cursor := crDefault;
end;

end.
