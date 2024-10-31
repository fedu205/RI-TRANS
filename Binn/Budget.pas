unit Budget;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxCustomData, cxStyles, cxTL, cxTLdxBarBuiltInMenu, dxSkinsCore, dxSkinBlack,
  dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom,
  dxSkinDarkSide, dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMetropolis,
  dxSkinMetropolisDark, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue,
  dxSkinOffice2010Silver, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray,
  dxSkinOffice2013White, dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic,
  dxSkinSharp, dxSkinSharpPlus, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinTheAsphaltWorld, dxSkinsDefaultPainters,
  dxSkinValentine, dxSkinVS2010, dxSkinWhiteprint, dxSkinXmas2008Blue,
  cxInplaceContainer, cxTLData, cxDBTL, dxSkinscxPCPainter, dxBarBuiltInMenu,
  cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator, DB, cxDBData,
  cxMaskEdit, cxGridCustomTableView, cxGridTableView, cxGridBandedTableView,
  cxGridDBBandedTableView, cxGridLevel, cxClasses, cxGridCustomView, cxGrid,
  cxPC, ADODB, cxCurrencyEdit, dxSkinsdxBarPainter, dxBar, dxCore,
  dxCoreClasses, dxHashUtils, cxTLExportLink, ShellAPI, cxSplitter, ExtCtrls,
  dxRibbonSkins, dxSkinsdxRibbonPainter, dxRibbonCustomizationForm, dxRibbon,
  DBClient, cxContainer, cxLabel, dxSkinOffice2016Colorful,
  dxSkinOffice2016Dark, dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, dxSpreadSheetCore, dxSpreadSheetCoreHistory,
  dxSpreadSheetConditionalFormatting, dxSpreadSheetConditionalFormattingRules,
  dxSpreadSheetClasses, dxSpreadSheetContainers, dxSpreadSheetFormulas,
  dxSpreadSheetHyperlinks, dxSpreadSheetFunctions, dxSpreadSheetGraphics,
  dxSpreadSheetPrinting, dxSpreadSheetTypes, dxSpreadSheetUtils, dxSpreadSheet,
  ImgList, dxSkinsForm,  DateUtils, cxTextEdit, cxDropDownEdit, cxLookupEdit,
  cxDBLookupEdit, cxDBLookupComboBox, System.ImageList, cxImageList, dxSkinTheBezier, dxDateRanges, cxDataControllerConditionalFormattingRulesManagerDialog,
  dxSkinOffice2019Colorful;

type
  TfmBudget = class(TForm)
    SP_shp_budget_GET: TADOStoredProc;
    DS_shp_budget_GET: TDataSource;
    dxBarManager1: TdxBarManager;
    dxBarManager1Bar1: TdxBar;
    dxBarButton1: TdxBarButton;
    dxBarButton2: TdxBarButton;
    dxBarPopupMenu1: TdxBarPopupMenu;
    dxBarButton4: TdxBarButton;
    dxBarButton3: TdxBarButton;
    Panel1: TPanel;
    cxSplitter1: TcxSplitter;
    sp_shp_bargain_add_GET_list: TADOStoredProc;
    DS_shp_bargain_add_GET_list: TDataSource;
    dxBarPopupMenu2: TdxBarPopupMenu;
    dxBarButton5: TdxBarButton;
    dxBarSubItem1: TdxBarSubItem;
    dxBarButton6: TdxBarButton;
    dxBarButton7: TdxBarButton;
    dxBarButton8: TdxBarButton;
    dxBarButton9: TdxBarButton;
    dxBarButton10: TdxBarButton;
    cxPageControl1: TcxPageControl;
    cxTabSheet1: TcxTabSheet;
    cxTabSheet2: TcxTabSheet;
    cxGrid7: TcxGrid;
    cxGridDBBandedTableView5: TcxGridDBBandedTableView;
    cxGridDBBandedTableView5bargain_add_id: TcxGridDBBandedColumn;
    cxGridDBBandedTableView5bargain_id: TcxGridDBBandedColumn;
    cxGridDBBandedTableView5agent_id: TcxGridDBBandedColumn;
    cxGridDBBandedTableView5agent_name: TcxGridDBBandedColumn;
    cxGridDBBandedTableView5currency_id: TcxGridDBBandedColumn;
    cxGridDBBandedTableView5brief_name: TcxGridDBBandedColumn;
    cxGridDBBandedTableView5type_nds_id: TcxGridDBBandedColumn;
    cxGridDBBandedTableView5type_nds_name: TcxGridDBBandedColumn;
    cxGridDBBandedTableView5set_include_nds: TcxGridDBBandedColumn;
    cxGridDBBandedTableView5date_period: TcxGridDBBandedColumn;
    cxGridDBBandedTableView5date_period_finance: TcxGridDBBandedColumn;
    cxGridDBBandedTableView5date_period_service: TcxGridDBBandedColumn;
    cxGridDBBandedTableView5add_count: TcxGridDBBandedColumn;
    cxGridDBBandedTableView5add_rate: TcxGridDBBandedColumn;
    cxGridDBBandedTableView5ed_izm_id: TcxGridDBBandedColumn;
    cxGridDBBandedTableView5ed_izm_name: TcxGridDBBandedColumn;
    cxGridDBBandedTableView5contract_id: TcxGridDBBandedColumn;
    cxGridDBBandedTableView5contract_cod: TcxGridDBBandedColumn;
    cxGridDBBandedTableView5firm_self: TcxGridDBBandedColumn;
    cxGridDBBandedTableView5type_contract: TcxGridDBBandedColumn;
    cxGridDBBandedTableView5firm_customer: TcxGridDBBandedColumn;
    cxGridDBBandedTableView5firm_self_name: TcxGridDBBandedColumn;
    cxGridDBBandedTableView5firm_customer_name: TcxGridDBBandedColumn;
    cxGridDBBandedTableView5add_sum: TcxGridDBBandedColumn;
    cxGridDBBandedTableView5add_NDS_sum: TcxGridDBBandedColumn;
    cxGridDBBandedTableView5add_notNDS_sum: TcxGridDBBandedColumn;
    cxGridDBBandedTableView5add_sum_alt: TcxGridDBBandedColumn;
    cxGridDBBandedTableView5exchange_USD_val: TcxGridDBBandedColumn;
    cxGridDBBandedTableView5exchange_EUR_val: TcxGridDBBandedColumn;
    cxGridDBBandedTableView5exchange_CHF_val: TcxGridDBBandedColumn;
    cxGridDBBandedTableView5service_kind_id: TcxGridDBBandedColumn;
    cxGridDBBandedTableView5service_kind_rep_id: TcxGridDBBandedColumn;
    cxGridDBBandedTableView5acts_note: TcxGridDBBandedColumn;
    cxGridDBBandedTableView5budget_id: TcxGridDBBandedColumn;
    cxGridDBBandedTableView5budget_cod: TcxGridDBBandedColumn;
    cxGridDBBandedTableView5budget_name: TcxGridDBBandedColumn;
    cxGridDBBandedTableView5budget_type_name: TcxGridDBBandedColumn;
    cxGridDBBandedTableView5budget_parent_name: TcxGridDBBandedColumn;
    cxGridDBBandedTableView5budget_parent_cod: TcxGridDBBandedColumn;
    cxGridDBBandedTableView5budget_type_cod: TcxGridDBBandedColumn;
    cxGridDBBandedTableView5brief_name_alt: TcxGridDBBandedColumn;
    cxGridDBBandedTableView5bargain_contract_id: TcxGridDBBandedColumn;
    cxGridDBBandedTableView5bargain_contract_cod: TcxGridDBBandedColumn;
    cxGridDBBandedTableView5bargain_firm_self: TcxGridDBBandedColumn;
    cxGridDBBandedTableView5bargain_firm_customer: TcxGridDBBandedColumn;
    cxGridDBBandedTableView5bargain_firm_self_name: TcxGridDBBandedColumn;
    cxGridDBBandedTableView5bargain_firm_customer_name: TcxGridDBBandedColumn;
    cxGridDBBandedTableView5bargain_cod: TcxGridDBBandedColumn;
    cxGridDBBandedTableView5type_bargain_name: TcxGridDBBandedColumn;
    cxGridDBBandedTableView5agreement_name: TcxGridDBBandedColumn;
    cxGridDBBandedTableView5date_period_month: TcxGridDBBandedColumn;
    cxGridDBBandedTableView5date_period_year: TcxGridDBBandedColumn;
    cxGridDBBandedTableView5date_period_finance_month: TcxGridDBBandedColumn;
    cxGridDBBandedTableView5date_period_finance_year: TcxGridDBBandedColumn;
    cxGridDBBandedTableView5curator_FIO_users: TcxGridDBBandedColumn;
    cxGridDBBandedTableView5status_name: TcxGridDBBandedColumn;
    cxGridDBBandedTableView5port_name: TcxGridDBBandedColumn;
    cxGridDBBandedTableView5ship_name: TcxGridDBBandedColumn;
    cxGridDBBandedTableView5set_bargain_block: TcxGridDBBandedColumn;
    cxGridDBBandedTableView5orders_num: TcxGridDBBandedColumn;
    cxGridDBBandedTableView5orders_date: TcxGridDBBandedColumn;
    cxGridDBBandedTableView5date_begin: TcxGridDBBandedColumn;
    cxGridDBBandedTableView5date_end: TcxGridDBBandedColumn;
    cxGridDBBandedTableView5bargain_correct_group: TcxGridDBBandedColumn;
    cxGridDBBandedTableView5bargain_correct_type_name: TcxGridDBBandedColumn;
    cxGridDBBandedTableView5subdivision_name: TcxGridDBBandedColumn;
    cxGridDBBandedTableView5FIO_users_owner: TcxGridDBBandedColumn;
    cxGridDBBandedTableView5add_sum_avg: TcxGridDBBandedColumn;
    cxGridDBBandedTableView5add_NDS_sum_alt: TcxGridDBBandedColumn;
    cxGridDBBandedTableView5add_NDS_sum_avg: TcxGridDBBandedColumn;
    cxGridDBBandedTableView5add_notNDS_sum_alt: TcxGridDBBandedColumn;
    cxGridDBBandedTableView5add_notNDS_sum_avg: TcxGridDBBandedColumn;
    cxGridDBBandedTableView5vessel_trip_id: TcxGridDBBandedColumn;
    cxGridDBBandedTableView5vessel_date_begin: TcxGridDBBandedColumn;
    cxGridDBBandedTableView5vessel_date_end: TcxGridDBBandedColumn;
    cxGridDBBandedTableView5vessel_node_begin_name: TcxGridDBBandedColumn;
    cxGridDBBandedTableView5vessel_node_end_name: TcxGridDBBandedColumn;
    cxGridDBBandedTableView5balance_type_name: TcxGridDBBandedColumn;
    cxGridLevel5: TcxGridLevel;
    DS_shp_budget_plan: TDataSource;
    dxBarPopupMenu3: TdxBarPopupMenu;
    dxBarButton11: TdxBarButton;
    dxBarSubItem2: TdxBarSubItem;
    dxBarButton12: TdxBarButton;
    dxBarButton13: TdxBarButton;
    dxBarButton16: TdxBarButton;
    cxGrid1: TcxGrid;
    cxGridDBBandedTableView1: TcxGridDBBandedTableView;
    cxGridLevel1: TcxGridLevel;
    sp_shp_budget_plan_get: TADOStoredProc;
    cxGridDBBandedTableView1id: TcxGridDBBandedColumn;
    cxGridDBBandedTableView1date_period: TcxGridDBBandedColumn;
    cxGridDBBandedTableView1plan_period_month: TcxGridDBBandedColumn;
    cxGridDBBandedTableView1plan_period_year: TcxGridDBBandedColumn;
    Panel2: TPanel;
    cxLabel1: TcxLabel;
    Query_Subdivision: TADOQuery;
    cxPageControl2: TcxPageControl;
    cxTabSheet3: TcxTabSheet;
    cxTabSheet4: TcxTabSheet;
    cxDBTreeList1: TcxDBTreeList;
    cxDBTreeList1budget_id: TcxDBTreeListColumn;
    cxDBTreeList1budget_parent_id: TcxDBTreeListColumn;
    cxDBTreeList1budget_cod: TcxDBTreeListColumn;
    cxDBTreeList1budget_name: TcxDBTreeListColumn;
    cxDBTreeList1budget_num: TcxDBTreeListColumn;
    cxDBTreeList1str_budget_id: TcxDBTreeListColumn;
    cxDBTreeList1set_budget_calc: TcxDBTreeListColumn;
    cxDBTreeList1set_group: TcxDBTreeListColumn;
    cxDBTreeList2: TcxDBTreeList;
    cxDBTreeList2budget_id: TcxDBTreeListColumn;
    cxDBTreeList2budget_parent_id: TcxDBTreeListColumn;
    cxDBTreeList2budget_cod: TcxDBTreeListColumn;
    cxDBTreeList2budget_name: TcxDBTreeListColumn;
    cxDBTreeList2budget_num: TcxDBTreeListColumn;
    cxDBTreeList2str_budget_id: TcxDBTreeListColumn;
    cxDBTreeList2set_budget_calc: TcxDBTreeListColumn;
    cxDBTreeList2set_group: TcxDBTreeListColumn;
    cxDBTreeList1budget_formula_str_id: TcxDBTreeListColumn;
    cxTabSheet5: TcxTabSheet;
    cxLabel2: TcxLabel;
    cxDBTreeList1comment: TcxDBTreeListColumn;
    cxImageList1: TcxImageList;
    DS_shp_budget_period_GET: TDataSource;
    SP_shp_budget_period_GET: TADOStoredProc;
    cxDBTreeList2budget_formula_str_id: TcxDBTreeListColumn;
    cxDBTreeList2comment: TcxDBTreeListColumn;
    Panel3: TPanel;
    DS_Subdivision: TDataSource;
    cxLookupComboBox1: TcxLookupComboBox;
    cxLabel21: TcxLabel;
    dxBarPopupMenu4: TdxBarPopupMenu;
    dxBarButton14: TdxBarButton;
    procedure dxBarButton1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure dxBarButton4Click(Sender: TObject);
    procedure cxDBTreeList1CustomDrawDataCell(Sender: TcxCustomTreeList;
      ACanvas: TcxCanvas; AViewInfo: TcxTreeListEditCellViewInfo;
      var ADone: Boolean);
    procedure cxDBTreeList1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure dxBarButton2Click(Sender: TObject);
    procedure dxBarButton3Click(Sender: TObject);
    procedure cxDBTreeList1CustomDrawBandHeaderCell(Sender: TcxCustomTreeList;
      ACanvas: TcxCanvas; AViewInfo: TcxTreeListHeaderCellViewInfo;
      var ADone: Boolean);
    procedure cxDBTreeList1SelectionChanged(Sender: TObject);
    procedure cxGridDBBandedTableView5FilterOnChanged(Sender: TObject);
    procedure cxGridDBBandedTableView5CustomDrawCell(
      Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
      AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
    procedure cxGridDBBandedTableView5CustomDrawColumnHeader(
      Sender: TcxGridTableView; ACanvas: TcxCanvas;
      AViewInfo: TcxGridColumnHeaderViewInfo; var ADone: Boolean);
    procedure cxGridDBBandedTableView5FocusedItemChanged(
      Sender: TcxCustomGridTableView; APrevFocusedItem,
      AFocusedItem: TcxCustomGridTableItem);
    procedure cxGridDBBandedTableView5KeyPress(Sender: TObject; var Key: Char);
    procedure dxBarButton5Click(Sender: TObject);
    procedure dxBarButton6Click(Sender: TObject);
    procedure dxBarButton7Click(Sender: TObject);
    procedure cxDBTreeList1CustomDrawHeaderCell(Sender: TcxCustomTreeList;
      ACanvas: TcxCanvas; AViewInfo: TcxTreeListHeaderCellViewInfo;
      var ADone: Boolean);
    procedure dxBarButton9Click(Sender: TObject);
    procedure dxBarButton10Click(Sender: TObject);
    procedure dxBarButton8Click(Sender: TObject);
    procedure dxBarButton11Click(Sender: TObject);
    procedure dxBarButton12Click(Sender: TObject);
    procedure dxBarButton13Click(Sender: TObject);
    procedure cxGridDBBandedTableView1FilterOnChanged(Sender: TObject);
    procedure cxPageControl1Change(Sender: TObject);
    procedure cxGridDBBandedTableView1CustomDrawCell(
      Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
      AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
    procedure cxGridDBBandedTableView1CustomDrawColumnHeader(
      Sender: TcxGridTableView; ACanvas: TcxCanvas;
      AViewInfo: TcxGridColumnHeaderViewInfo; var ADone: Boolean);
    procedure cxGridDBBandedTableView1FocusedItemChanged(
      Sender: TcxCustomGridTableView; APrevFocusedItem,
      AFocusedItem: TcxCustomGridTableItem);
    procedure cxGridDBBandedTableView1KeyPress(Sender: TObject; var Key: Char);
    procedure cxGridDBBandedTableView1DblClick(Sender: TObject);
    procedure cxDBTreeList2CustomDrawDataCell(Sender: TcxCustomTreeList;
      ACanvas: TcxCanvas; AViewInfo: TcxTreeListEditCellViewInfo;
      var ADone: Boolean);
    procedure cxDBTreeList2CustomDrawHeaderCell(Sender: TcxCustomTreeList;
      ACanvas: TcxCanvas; AViewInfo: TcxTreeListHeaderCellViewInfo;
      var ADone: Boolean);
    procedure cxDBTreeList2KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cxDBTreeList2SelectionChanged(Sender: TObject);
    procedure cxPageControl2Change(Sender: TObject);
    procedure cxLookupComboBox1PropertiesEditValueChanged(Sender: TObject);
    procedure cxDBTreeList2CustomDrawBandHeaderCell(Sender: TcxCustomTreeList;
      ACanvas: TcxCanvas; AViewInfo: TcxTreeListHeaderCellViewInfo;
      var ADone: Boolean);
    procedure dxBarButton14Click(Sender: TObject);
  private
    Fdate1, Fdate2 : TDateTime;

    procedure BudgetRefresh(budget_id: integer);
    procedure CreateColumnDBTreePeriod();
  public
    constructor Create(AOwner: TApplication); reintroduce;
  end;

var
  fmBudget: TfmBudget;

implementation

uses Raznoe, main, Default, Period, Other;

{$R *.dfm}

constructor TfmBudget.Create(AOwner: TApplication);
var Q: TADOQuery;
    column : TcxDBTreeListColumn;
      band : TcxTreeListBand;
   column_grid : TcxGridDBBandedColumn;
begin
  Screen.Cursor := crHourglass;
  inherited Create(AOwner);

  FormStyle := fsMDIChild;
  WindowState := wsMaximized;

  dxBarButton1.Caption := StoreRegistryDate(rgLoad, '\Software\Lis1\DateTime\Budget', Fdate1, Fdate2);
  CreateColumnDBTreePeriod;

  Query_Subdivision.Open;
  cxLookupComboBox1.EditValue := 1;

  Q := TADOQuery.Create(nil);
  Q.Connection := fmMain.Lis;
  Q.SQL.Add('SELECT inf_obj_id, inf_obj_name, isnull(inf_obj_cod,inf_obj_id) inf_obj_cod FROM inf_obj WHERE type_inf_id = 147 ');
  Q.SQL.Add('UNION');
  Q.SQL.Add('SELECT 1 as inf_obj_id, ''Консолидированный'' as inf_obj_name, ''-8'' as inf_obj_cod ');
  Q.SQL.Add('ORDER BY inf_obj_cod, inf_obj_id DESC');
  Q.Open;

  while not Q.Eof do begin
    band := cxDBTreeList1.Bands.Add;
    band.Caption.Text := Q.FieldByName('inf_obj_name').AsString;
    band.Caption.AlignVert := vaTop;

    column := TcxDBTreeListColumn(cxDBTreeList1.CreateColumn);
    column.Position.BandIndex := band.Index;
    column.DataBinding.FieldName := 'f_' + Q.FieldByName('inf_obj_id').AsString + '_fact';
    column.Caption.Text  := 'Факт'; //Q.FieldByName('inf_obj_name').AsString;
    column.Tag           := Q.FieldByName('inf_obj_cod').AsInteger;
    column.Name          := 'cxDBTreeList1f_' + Q.FieldByName('inf_obj_id').AsString + '_fact';
    column.Width         := 120;
    column.PropertiesClass := TcxCurrencyEditProperties;
    TcxCurrencyEditProperties(column.Properties).DisplayFormat := '#,##0.00';

    column := TcxDBTreeListColumn(cxDBTreeList1.CreateColumn);
    column.Position.BandIndex := band.Index;
    column.DataBinding.FieldName := 'f_' + Q.FieldByName('inf_obj_id').AsString + '_plan';
    column.Caption.Text  := 'План'; //Q.FieldByName('inf_obj_name').AsString;
    column.Tag           := Q.FieldByName('inf_obj_cod').AsInteger;
    column.Name          := 'cxDBTreeList1f_' + Q.FieldByName('inf_obj_id').AsString + '_plan';
    column.Width         := 120;
    column.PropertiesClass := TcxCurrencyEditProperties;
    TcxCurrencyEditProperties(column.Properties).DisplayFormat := '#,##0.00';
    column.Visible := False;

    column := TcxDBTreeListColumn(cxDBTreeList1.CreateColumn);
    column.Position.BandIndex := band.Index;
    column.DataBinding.FieldName := 'f_' + Q.FieldByName('inf_obj_id').AsString + '_result';
    column.Caption.Text  := 'Исполнение %%'; //Q.FieldByName('inf_obj_name').AsString;
    column.Tag           := Q.FieldByName('inf_obj_cod').AsInteger;
    column.Name          := 'cxDBTreeList1f_' + Q.FieldByName('inf_obj_id').AsString + '_result';
    column.Width         := 120;
    column.PropertiesClass := TcxCurrencyEditProperties;
    TcxCurrencyEditProperties(column.Properties).DisplayFormat := '#,##0.00';
    column.Visible := False;


    column_grid := cxGridDBBandedTableView1.CreateColumn;
    column_grid.DataBinding.FieldName := 'f_' + Q.FieldByName('inf_obj_id').AsString;
    column_grid.Caption  := Q.FieldByName('inf_obj_name').AsString;
    column_grid.Tag      := Q.FieldByName('inf_obj_id').AsInteger;
    column_grid.Name     := 'cxGrid3DBBandedTableView1' + 'f_' + Q.FieldByName('inf_obj_id').AsString;
    column_grid.Width    := 120;
    column_grid.PropertiesClass := TcxCurrencyEditProperties;
    column_grid.HeaderAlignmentVert := vaTop;
    TcxCurrencyEditProperties(column_grid.Properties).DisplayFormat := '#,##0.00';

    Q.Next;
  end;
  Q.Free;

//  SP_shp_budget_GET.Parameters.Refresh;
//  SP_shp_budget_GET.Parameters.ParamByName('@date_begin').Value := Fdate1;
//  SP_shp_budget_GET.Parameters.ParamByName('@date_end'  ).Value := Fdate2;
//  SP_shp_budget_GET.Open;

  BudgetRefresh(-9);

  cxDBTreeList1.FullCollapse;
  if cxDBTreeList1.Count > 0 then
    cxDBTreeList1.Items[0].Focused := True;

  cxDBTreeList2.FullCollapse;
  if cxDBTreeList2.Count > 0 then
    cxDBTreeList2.Items[0].Focused := True;

  MonitorEventFormOpen('OPEN_FORM', self.Name, fmMain.Lis, -9);
  Screen.Cursor := crDefault;
end;

procedure TfmBudget.cxDBTreeList1CustomDrawBandHeaderCell(
  Sender: TcxCustomTreeList; ACanvas: TcxCanvas;
  AViewInfo: TcxTreeListHeaderCellViewInfo; var ADone: Boolean);
var i : integer;
begin
//  if AViewInfo.CustomDrawID = 1 then begin
//    ACanvas.Brush.Color := RGB(149, 179, 215);
//    ACanvas.Font.Style := [fsBold];
//  end;

  ACanvas.Font.Style := [fsBold];

  if AViewInfo is TcxTreeListBandHeaderCellViewInfo then begin
    for i := 0 to TcxTreeListBandHeaderCellViewInfo(AViewInfo).Band.ColumnCount-1 do begin
      if TcxTreeListBandHeaderCellViewInfo(AViewInfo).Band.Columns[i].Tag = 0 then begin
        ACanvas.Brush.Color := RGB(214, 229, 203);
        ACanvas.FOnt.Color  := RGB(0, 63, 47);
      end;

      if TcxTreeListBandHeaderCellViewInfo(AViewInfo).Band.Columns[i].Tag = -8 then begin
        ACanvas.Brush.Color := RGB(214, 229, 203);
        ACanvas.FOnt.Color  := RGB(0, 63, 47);
      end;

      if TcxTreeListBandHeaderCellViewInfo(AViewInfo).Band.Columns[i].Tag = -9 then begin
        ACanvas.Brush.Color := RGB(214, 229, 203);
        ACanvas.FOnt.Color  := RGB(0, 63, 47);
      end;

      if TcxTreeListBandHeaderCellViewInfo(AViewInfo).Band.Columns[i].Tag = 1 then begin
        ACanvas.Brush.Color := RGB(149, 179, 215);
        ACanvas.FOnt.Color  := RGB(0, 63, 47);
      end;

      if TcxTreeListBandHeaderCellViewInfo(AViewInfo).Band.Columns[i].Tag = 2 then begin
        ACanvas.Brush.Color := RGB(149, 179, 215);
        ACanvas.FOnt.Color  := RGB(0, 63, 47);
      end;

      if TcxTreeListBandHeaderCellViewInfo(AViewInfo).Band.Columns[i].Tag = 3 then begin
        ACanvas.Brush.Color := RGB(149, 179, 215);
        ACanvas.FOnt.Color  := RGB(0, 63, 47);
      end;

      if TcxTreeListBandHeaderCellViewInfo(AViewInfo).Band.Columns[i].Tag = 4 then begin
        ACanvas.Brush.Color := RGB(184, 204, 228);
        ACanvas.FOnt.Color  := RGB(0, 63, 47);
      end;

      if TcxTreeListBandHeaderCellViewInfo(AViewInfo).Band.Columns[i].Tag = 5 then begin
        ACanvas.Brush.Color := RGB(220, 230, 241);
        ACanvas.FOnt.Color  := RGB(0, 63, 47);
      end;

      if TcxTreeListBandHeaderCellViewInfo(AViewInfo).Band.Columns[i].Tag = 6 then begin
        ACanvas.Brush.Color := RGB(230, 184, 183);
        ACanvas.FOnt.Color  := RGB(0, 63, 47);
      end;

      if TcxTreeListBandHeaderCellViewInfo(AViewInfo).Band.Columns[i].Tag = 7 then begin
        ACanvas.Brush.Color := RGB(196, 189, 151);
        ACanvas.FOnt.Color  := RGB(0, 63, 47);
      end;

      if TcxTreeListBandHeaderCellViewInfo(AViewInfo).Band.Columns[i].Tag = 8 then begin
        ACanvas.Brush.Color := RGB(204, 192, 218);
        ACanvas.FOnt.Color  := RGB(0, 63, 47);
      end;
    end;
  end;

end;

procedure TfmBudget.cxDBTreeList1CustomDrawDataCell(Sender: TcxCustomTreeList;
  ACanvas: TcxCanvas; AViewInfo: TcxTreeListEditCellViewInfo;
  var ADone: Boolean);
begin
  if AViewInfo.Node.HasChildren then
      ACanvas.Brush.Color := RGB(228, 240, 221);

  if AViewInfo.Node.Values[cxDBTreeList1budget_parent_id.ItemIndex] = null then begin
    ACanvas.Brush.Color := RGB(196, 215, 155);
    ACanvas.Font.Style := [fsBold];
  end;

  if (AViewInfo.Node.Values[cxDBTreeList1budget_cod.ItemIndex] = '100') OR
     (AViewInfo.Node.Values[cxDBTreeList1budget_cod.ItemIndex] = '200') then begin
    ACanvas.Brush.Color := RGB(228, 240, 221);
    ACanvas.Font.Style := [];
  end;


  if AViewInfo.Node.Selected or AViewInfo.Node.Focused then begin
    ACanvas.Brush.Color := clNavy;
    ACanvas.Font.Color  := clWhite;
    if AViewInfo.Focused then ACanvas.Brush.Color := clBlue;
  end;
end;

procedure TfmBudget.cxDBTreeList1CustomDrawHeaderCell(Sender: TcxCustomTreeList;
  ACanvas: TcxCanvas; AViewInfo: TcxTreeListHeaderCellViewInfo;
  var ADone: Boolean);
begin
  ACanvas.Font.Style := [fsBold];
end;

procedure TfmBudget.cxDBTreeList1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if Key = VK_RIGHT then cxDBTreeList1.FocusedNode.Expand(False);
  if Key = VK_LEFT  then cxDBTreeList1.FocusedNode.Collapse(False);
end;

procedure TfmBudget.cxDBTreeList1SelectionChanged(Sender: TObject);
var parent_node: TcxTreeListNode;
begin
  sp_shp_bargain_add_GET_list.Close;
  sp_shp_budget_plan_get.Close;
  cxLabel1.Caption := '';

  if dxBarButton3.Down then begin
    cxLabel1.Caption := cxDBTreeList1.FocusedNode.Values[cxDBTreeList1budget_name.ItemIndex];

    parent_node := cxDBTreeList1.FocusedNode.Parent;
    if parent_node <> nil then begin
      if parent_node.Values[cxDBTreeList1budget_name.ItemIndex] <> null then
        cxLabel1.Caption := parent_node.Values[cxDBTreeList1budget_name.ItemIndex] + ' \ ' + cxLabel1.Caption;
      parent_node := parent_node.Parent;
    end;

    if parent_node <> nil then begin
      if parent_node.Values[cxDBTreeList1budget_name.ItemIndex] <> null then
        cxLabel1.Caption := parent_node.Values[cxDBTreeList1budget_name.ItemIndex] + ' \ ' + cxLabel1.Caption;
      parent_node := parent_node.Parent;
    end;

    if parent_node <> nil then begin
      if parent_node.Values[cxDBTreeList1budget_name.ItemIndex] <> null then
        cxLabel1.Caption := parent_node.Values[cxDBTreeList1budget_name.ItemIndex] + ' \ ' + cxLabel1.Caption;
      parent_node := parent_node.Parent;
    end;

    if parent_node <> nil then begin
      if parent_node.Values[cxDBTreeList1budget_name.ItemIndex] <> null then
        cxLabel1.Caption := parent_node.Values[cxDBTreeList1budget_name.ItemIndex] + ' \ ' + cxLabel1.Caption;
      parent_node := parent_node.Parent;
    end;

    Screen.Cursor := crHourGlass;


    if not cxDBTreeList1budget_formula_str_id.DataBinding.Field.IsNull then begin
      cxPageControl1.OnChange := nil;

      cxTabSheet1.TabVisible := False;
      cxTabSheet2.TabVisible := False;
      cxTabSheet5.TabVisible := True;
      cxPageControl1.ActivePage := cxTabSheet5;
      cxLabel2.Caption := cxDBTreeList1comment.DataBinding.Field.AsString;

      cxPageControl1.OnChange := cxPageControl1Change;

    end else begin
      cxPageControl1.OnChange := nil;

      cxTabSheet1.TabVisible := True;
      cxTabSheet2.TabVisible := True;

      if cxPageControl1.ActivePage = cxTabSheet5 then
        cxPageControl1.ActivePage := cxTabSheet2;

      cxTabSheet5.TabVisible := False;

      if cxPageControl1.ActivePage = cxTabSheet1 then begin
        sp_shp_bargain_add_GET_list.Close;
        sp_shp_bargain_add_GET_list.Parameters.Refresh;
        sp_shp_bargain_add_GET_list.Parameters.ParamByName('@bargain_id'   ).Value := null;
        sp_shp_bargain_add_GET_list.Parameters.ParamByName('@date_begin'   ).Value := Fdate1;
        sp_shp_bargain_add_GET_list.Parameters.ParamByName('@date_end'     ).Value := Fdate2;
        sp_shp_bargain_add_GET_list.Parameters.ParamByName('@currency_id'  ).Value := 3;
        sp_shp_bargain_add_GET_list.Parameters.ParamByName('@str_budget_id').Value := cxDBTreeList1str_budget_id.DataBinding.Field.AsString;
        sp_shp_bargain_add_GET_list.Open;
      end;

      if cxPageControl1.ActivePage = cxTabSheet2 then begin
        if cxDBTreeList1budget_id.DataBinding.Field.Value <> null then begin
          sp_shp_budget_plan_get.Close;
          sp_shp_budget_plan_get.Parameters.Refresh;
          sp_shp_budget_plan_get.Parameters.ParamByName('@budget_id'  ).Value := cxDBTreeList1budget_id.DataBinding.Field.Value;
          sp_shp_budget_plan_get.Parameters.ParamByName('@date_period').Value := Fdate2;
          sp_shp_budget_plan_get.Open;
        end;
      end;

      cxPageControl1.OnChange := cxPageControl1Change;
    end;

    Screen.Cursor := crDefault;
  end;
end;

procedure TfmBudget.cxDBTreeList2CustomDrawBandHeaderCell(Sender: TcxCustomTreeList; ACanvas: TcxCanvas; AViewInfo: TcxTreeListHeaderCellViewInfo; var ADone: Boolean);
begin
  ACanvas.Font.Style := [fsBold];

  if AViewInfo is TcxTreeListBandHeaderCellViewInfo then begin
    Query_Subdivision.Locate('inf_obj_id', cxLookupComboBox1.EditValue, []);

    if Query_Subdivision.FieldByName('inf_obj_cod').AsInteger = 0 then begin
      ACanvas.Brush.Color := RGB(214, 229, 203);
      ACanvas.Font.Color  := RGB(0, 63, 47);
    end;

    if Query_Subdivision.FieldByName('inf_obj_cod').AsInteger = -8 then begin
      ACanvas.Brush.Color := RGB(214, 229, 203);
      ACanvas.FOnt.Color  := RGB(0, 63, 47);
    end;

    if Query_Subdivision.FieldByName('inf_obj_cod').AsInteger = 1 then begin
      ACanvas.Brush.Color := RGB(149, 179, 215);
      ACanvas.FOnt.Color  := RGB(0, 63, 47);
    end;

    if Query_Subdivision.FieldByName('inf_obj_cod').AsInteger = 2 then begin
      ACanvas.Brush.Color := RGB(149, 179, 215);
      ACanvas.FOnt.Color  := RGB(0, 63, 47);
    end;

    if Query_Subdivision.FieldByName('inf_obj_cod').AsInteger = 3 then begin
      ACanvas.Brush.Color := RGB(149, 179, 215);
      ACanvas.FOnt.Color  := RGB(0, 63, 47);
    end;

    if Query_Subdivision.FieldByName('inf_obj_cod').AsInteger = 4 then begin
      ACanvas.Brush.Color := RGB(184, 204, 228);
      ACanvas.FOnt.Color  := RGB(0, 63, 47);
    end;

    if Query_Subdivision.FieldByName('inf_obj_cod').AsInteger = 5 then begin
      ACanvas.Brush.Color := RGB(220, 230, 241);
      ACanvas.FOnt.Color  := RGB(0, 63, 47);
    end;

    if Query_Subdivision.FieldByName('inf_obj_cod').AsInteger = 6 then begin
      ACanvas.Brush.Color := RGB(230, 184, 183);
      ACanvas.FOnt.Color  := RGB(0, 63, 47);
    end;

    if Query_Subdivision.FieldByName('inf_obj_cod').AsInteger = 7 then begin
      ACanvas.Brush.Color := RGB(196, 189, 151);
      ACanvas.FOnt.Color  := RGB(0, 63, 47);
    end;

    if Query_Subdivision.FieldByName('inf_obj_cod').AsInteger = 8 then begin
      ACanvas.Brush.Color := RGB(204, 192, 218);
      ACanvas.FOnt.Color  := RGB(0, 63, 47);
    end;

  end;
end;

procedure TfmBudget.cxDBTreeList2CustomDrawDataCell(Sender: TcxCustomTreeList;
  ACanvas: TcxCanvas; AViewInfo: TcxTreeListEditCellViewInfo;
  var ADone: Boolean);
begin
  if AViewInfo.Node.HasChildren then
      ACanvas.Brush.Color := RGB(228, 240, 221);

  if AViewInfo.Node.Values[cxDBTreeList2budget_parent_id.ItemIndex] = null then begin
    ACanvas.Brush.Color := RGB(196, 215, 155);
    ACanvas.Font.Style := [fsBold];
  end;

  if (AViewInfo.Node.Values[cxDBTreeList2budget_cod.ItemIndex] = '100') OR
     (AViewInfo.Node.Values[cxDBTreeList2budget_cod.ItemIndex] = '200') then begin
    ACanvas.Brush.Color := RGB(228, 240, 221);
    ACanvas.Font.Style := [];
  end;


  if AViewInfo.Node.Selected or AViewInfo.Node.Focused then begin
    ACanvas.Brush.Color := clNavy;
    ACanvas.Font.Color  := clWhite;
    if AViewInfo.Focused then ACanvas.Brush.Color := clBlue;
  end;
end;

procedure TfmBudget.cxDBTreeList2CustomDrawHeaderCell(Sender: TcxCustomTreeList;
  ACanvas: TcxCanvas; AViewInfo: TcxTreeListHeaderCellViewInfo;
  var ADone: Boolean);
begin
  ACanvas.Font.Style := [fsBold];
end;

procedure TfmBudget.cxDBTreeList2KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_RIGHT then cxDBTreeList2.FocusedNode.Expand(False);
  if Key = VK_LEFT  then cxDBTreeList2.FocusedNode.Collapse(False);
end;

procedure TfmBudget.cxDBTreeList2SelectionChanged(Sender: TObject);
var parent_node: TcxTreeListNode;
begin
  sp_shp_bargain_add_GET_list.Close;
  sp_shp_budget_plan_get.Close;
  cxLabel1.Caption := '';

  if dxBarButton3.Down then begin
    cxLabel1.Caption := cxDBTreeList2.FocusedNode.Values[cxDBTreeList2budget_name.ItemIndex];

    parent_node := cxDBTreeList2.FocusedNode.Parent;
    if parent_node <> nil then begin
      if parent_node.Values[cxDBTreeList2budget_name.ItemIndex] <> null then
        cxLabel1.Caption := parent_node.Values[cxDBTreeList2budget_name.ItemIndex] + ' \ ' + cxLabel1.Caption;
      parent_node := parent_node.Parent;
    end;

    if parent_node <> nil then begin
      if parent_node.Values[cxDBTreeList2budget_name.ItemIndex] <> null then
        cxLabel1.Caption := parent_node.Values[cxDBTreeList2budget_name.ItemIndex] + ' \ ' + cxLabel1.Caption;
      parent_node := parent_node.Parent;
    end;

    if parent_node <> nil then begin
      if parent_node.Values[cxDBTreeList2budget_name.ItemIndex] <> null then
        cxLabel1.Caption := parent_node.Values[cxDBTreeList2budget_name.ItemIndex] + ' \ ' + cxLabel1.Caption;
      parent_node := parent_node.Parent;
    end;

    if parent_node <> nil then begin
      if parent_node.Values[cxDBTreeList2budget_name.ItemIndex] <> null then
        cxLabel1.Caption := parent_node.Values[cxDBTreeList2budget_name.ItemIndex] + ' \ ' + cxLabel1.Caption;
      parent_node := parent_node.Parent;
    end;

    Screen.Cursor := crHourGlass;


    if not cxDBTreeList2budget_formula_str_id.DataBinding.Field.IsNull then begin
      cxPageControl1.OnChange := nil;

      cxTabSheet1.TabVisible := False;
      cxTabSheet2.TabVisible := False;
      cxTabSheet5.TabVisible := True;
      cxPageControl1.ActivePage := cxTabSheet5;
      cxLabel2.Caption := cxDBTreeList2comment.DataBinding.Field.AsString;

      cxPageControl1.OnChange := cxPageControl1Change;

    end else begin
      cxPageControl1.OnChange := nil;

      cxTabSheet1.TabVisible := True;
      cxTabSheet2.TabVisible := True;

      if cxPageControl1.ActivePage = cxTabSheet5 then
        cxPageControl1.ActivePage := cxTabSheet2;

      cxTabSheet5.TabVisible := False;

      if cxPageControl1.ActivePage = cxTabSheet1 then begin
        sp_shp_bargain_add_GET_list.Close;
        sp_shp_bargain_add_GET_list.Parameters.Refresh;
        sp_shp_bargain_add_GET_list.Parameters.ParamByName('@bargain_id'   ).Value := null;
        sp_shp_bargain_add_GET_list.Parameters.ParamByName('@date_begin'   ).Value := Fdate1;
        sp_shp_bargain_add_GET_list.Parameters.ParamByName('@date_end'     ).Value := Fdate2;
        sp_shp_bargain_add_GET_list.Parameters.ParamByName('@currency_id'  ).Value := 3;
        sp_shp_bargain_add_GET_list.Parameters.ParamByName('@str_budget_id').Value := cxDBTreeList2str_budget_id.DataBinding.Field.AsString;
        sp_shp_bargain_add_GET_list.Open;
      end;

      if cxPageControl1.ActivePage = cxTabSheet2 then begin
        if cxDBTreeList2budget_id.DataBinding.Field.Value <> null then begin
          sp_shp_budget_plan_get.Close;
          sp_shp_budget_plan_get.Parameters.Refresh;
          sp_shp_budget_plan_get.Parameters.ParamByName('@budget_id'  ).Value := cxDBTreeList2budget_id.DataBinding.Field.Value;
          sp_shp_budget_plan_get.Parameters.ParamByName('@date_period').Value := Fdate2;
          sp_shp_budget_plan_get.Open;
        end;
      end;

      cxPageControl1.OnChange := cxPageControl1Change;
    end;

    Screen.Cursor := crDefault;
  end;
end;

procedure TfmBudget.cxGridDBBandedTableView1CustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
	if AViewInfo.GridRecord.Selected or AViewInfo.GridRecord.Focused then begin
		ACanvas.Brush.Color := clNavy;
		ACanvas.Font.Color := clWhite;
		if AViewInfo.Focused then ACanvas.Brush.Color := clBlue;
	end;
end;

procedure TfmBudget.cxGridDBBandedTableView1CustomDrawColumnHeader(
  Sender: TcxGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridColumnHeaderViewInfo; var ADone: Boolean);
begin
  ACanvas.Font.Style := [fsBold];

  if Query_Subdivision.Locate('inf_obj_id', AViewInfo.Column.Tag, []) then begin
    if Query_Subdivision.FieldByName('inf_obj_cod').AsInteger = 0 then begin
      ACanvas.Brush.Color := RGB(214, 229, 203);
      ACanvas.FOnt.Color  := RGB(0, 63, 47);
    end;

    if Query_Subdivision.FieldByName('inf_obj_cod').AsInteger =  -8 then begin
      ACanvas.Brush.Color := RGB(214, 229, 203);
      ACanvas.FOnt.Color  := RGB(0, 63, 47);
    end;

    if Query_Subdivision.FieldByName('inf_obj_cod').AsInteger = -9 then begin
      ACanvas.Brush.Color := RGB(214, 229, 203);
      ACanvas.FOnt.Color  := RGB(0, 63, 47);
    end;

    if Query_Subdivision.FieldByName('inf_obj_cod').AsInteger = 1 then begin
      ACanvas.Brush.Color := RGB(149, 179, 215);
      ACanvas.FOnt.Color  := RGB(0, 63, 47);
    end;

    if Query_Subdivision.FieldByName('inf_obj_cod').AsInteger = 2 then begin
      ACanvas.Brush.Color := RGB(149, 179, 215);
      ACanvas.FOnt.Color  := RGB(0, 63, 47);
    end;

    if Query_Subdivision.FieldByName('inf_obj_cod').AsInteger = 3 then begin
      ACanvas.Brush.Color := RGB(149, 179, 215);
      ACanvas.FOnt.Color  := RGB(0, 63, 47);
    end;

    if Query_Subdivision.FieldByName('inf_obj_cod').AsInteger = 4 then begin
      ACanvas.Brush.Color := RGB(184, 204, 228);
      ACanvas.FOnt.Color  := RGB(0, 63, 47);
    end;

    if Query_Subdivision.FieldByName('inf_obj_cod').AsInteger = 5 then begin
      ACanvas.Brush.Color := RGB(220, 230, 241);
      ACanvas.FOnt.Color  := RGB(0, 63, 47);
    end;

    if Query_Subdivision.FieldByName('inf_obj_cod').AsInteger = 6 then begin
      ACanvas.Brush.Color := RGB(230, 184, 183);
      ACanvas.FOnt.Color  := RGB(0, 63, 47);
    end;

    if Query_Subdivision.FieldByName('inf_obj_cod').AsInteger = 7 then begin
      ACanvas.Brush.Color := RGB(196, 189, 151);
      ACanvas.FOnt.Color  := RGB(0, 63, 47);
    end;

    if Query_Subdivision.FieldByName('inf_obj_cod').AsInteger = 8 then begin
      ACanvas.Brush.Color := RGB(204, 192, 218);
      ACanvas.FOnt.Color  := RGB(0, 63, 47);
    end;
  end;



	if AViewInfo.Column.Focused then begin
		ACanvas.Brush.Color := clNavy;
		ACanvas.Font.Color := clWhite;
	end;
end;

procedure TfmBudget.cxGridDBBandedTableView1DblClick(Sender: TObject);
type
  TFunc = function(AppHand: THandle; budget_id: integer; subdivision_id: integer; plan_period: TDateTime; connect: TADOConnection): Variant;
var
  FBudgetPlanAdd: TFunc;
  handle        : THandle;
  v             : Variant;
              i : integer;
    inf_obj_id : integer;
    SP_shablon_action_modify: TADOStoredProc;
begin
//  if (cxDBTreeList1set_budget_calc.DataBinding.Field.AsBoolean = False) then begin
    if cxDBTreeList1budget_id.DataBinding.Field.Value <> null then begin

      inf_obj_id := -9;
      for i := 0 to cxGridDBBandedTableView1.ColumnCount - 1 do begin
        if cxGridDBBandedTableView1.Columns[i].Focused then begin
          inf_obj_id := cxGridDBBandedTableView1.Columns[i].Tag;
        end;
      end;

      if (inf_obj_id <> 0) and (inf_obj_id <> 1) then begin
        handle := LoadLibrary('FormsAdd.dll');
        @FBudgetPlanAdd := GetProcAddress(handle,'CreateWndBudgetPlanAdd');
        v := FBudgetPlanAdd(Application.Handle, cxDBTreeList1budget_id.DataBinding.Field.AsInteger, inf_obj_id, cxGridDBBandedTableView1date_period.DataBinding.Field.AsDateTime, fmMain.Lis);
        FreeLibrary(handle);

        if v[0] <> -9 then BudgetRefresh(-9);
      end else begin
        Application.MessageBox('Выберите подразделение!', 'Внимание!', MB_ICONWARNING or MB_OK);
      end;
    end;
//  end;
end;

procedure TfmBudget.cxGridDBBandedTableView1FilterOnChanged(Sender: TObject);
begin
	DrawcxGridColumnOnFiltered(Sender);
end;

procedure TfmBudget.cxGridDBBandedTableView1FocusedItemChanged(
  Sender: TcxCustomGridTableView; APrevFocusedItem,
  AFocusedItem: TcxCustomGridTableItem);
begin
	cxGridDBBandedTableView1.Painter.Invalidate;
end;

procedure TfmBudget.cxGridDBBandedTableView1KeyPress(Sender: TObject;
  var Key: Char);
begin
	FilterColumnGridOnKeyPress(cxGridDBBandedTableView1, Key);
end;

procedure TfmBudget.cxGridDBBandedTableView5CustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
  if (AViewInfo.GridRecord.Values[cxGridDBBandedTableView5date_period_finance.Index] <> NULL) then begin
    ACanvas.Font.Color := clPurple; //clMoneyGreen - $00AF0AAA;
    ACanvas.Font.Style := [fsBold];
  end;

  if (AViewInfo.GridRecord.Values[cxGridDBBandedTableView5budget_type_cod.Index] = '1') then begin
    if (AViewInfo.Item.ID = cxGridDBBandedTableView5budget_type_name.Index) then begin
      ACanvas.Font.Color := clRed;
      ACanvas.Font.Style := [fsBold];
    end;

    if (AViewInfo.Item.ID = cxGridDBBandedTableView5add_sum.Index) OR
       (AViewInfo.Item.ID = cxGridDBBandedTableView5add_NDS_sum.Index) OR
       (AViewInfo.Item.ID = cxGridDBBandedTableView5add_notNDS_sum.Index) OR
       (AViewInfo.Item.ID = cxGridDBBandedTableView5add_sum_alt.Index) OR
       (AViewInfo.Item.ID = cxGridDBBandedTableView5add_NDS_sum_alt.Index) OR
       (AViewInfo.Item.ID = cxGridDBBandedTableView5add_notNDS_sum_alt.Index)
    then begin
      ACanvas.Font.Color := clRed;
    end;
  end;

  if (AViewInfo.GridRecord.Values[cxGridDBBandedTableView5budget_type_cod.Index] = '2') then begin
    if (AViewInfo.Item.ID = cxGridDBBandedTableView5budget_type_name.Index) then begin
      ACanvas.Font.Color := clGreen;
      ACanvas.Font.Style := [fsBold];
    end;

    if (AViewInfo.Item.ID = cxGridDBBandedTableView5add_sum.Index) OR
       (AViewInfo.Item.ID = cxGridDBBandedTableView5add_NDS_sum.Index) OR
       (AViewInfo.Item.ID = cxGridDBBandedTableView5add_notNDS_sum.Index) OR
       (AViewInfo.Item.ID = cxGridDBBandedTableView5add_sum_alt.Index) OR
       (AViewInfo.Item.ID = cxGridDBBandedTableView5add_NDS_sum_alt.Index) OR
       (AViewInfo.Item.ID = cxGridDBBandedTableView5add_notNDS_sum_alt.Index)
    then begin
      ACanvas.Font.Color := clGreen;
    end;
  end;

	if AViewInfo.GridRecord.Selected or AViewInfo.GridRecord.Focused then begin
		ACanvas.Brush.Color := clNavy;
		ACanvas.Font.Color := clWhite;
		if AViewInfo.Focused then ACanvas.Brush.Color := clBlue;
	end;
end;

procedure TfmBudget.cxGridDBBandedTableView5CustomDrawColumnHeader(
  Sender: TcxGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridColumnHeaderViewInfo; var ADone: Boolean);
begin
	if AViewInfo.Column.Focused then begin
		ACanvas.Brush.Color := clNavy;
		ACanvas.Font.Color := clWhite;
	end;
end;

procedure TfmBudget.cxGridDBBandedTableView5FilterOnChanged(Sender: TObject);
begin
	DrawcxGridColumnOnFiltered(Sender);
end;

procedure TfmBudget.cxGridDBBandedTableView5FocusedItemChanged(Sender: TcxCustomGridTableView; APrevFocusedItem,  AFocusedItem: TcxCustomGridTableItem);
begin
	cxGridDBBandedTableView5.Painter.Invalidate;
end;

procedure TfmBudget.cxGridDBBandedTableView5KeyPress(Sender: TObject;
  var Key: Char);
begin
	FilterColumnGridOnKeyPress(cxGridDBBandedTableView5, Key);
end;


procedure TfmBudget.cxLookupComboBox1PropertiesEditValueChanged(Sender: TObject);
begin
  BudgetRefresh(-9);
end;

procedure TfmBudget.cxPageControl1Change(Sender: TObject);
begin
  if cxPageControl2.ActivePageIndex = 0 then cxDBTreeList1SelectionChanged(Sender);
  if cxPageControl2.ActivePageIndex = 1 then cxDBTreeList2SelectionChanged(Sender);
end;

procedure TfmBudget.cxPageControl2Change(Sender: TObject);
begin
  BudgetRefresh(-9);
end;

procedure TfmBudget.dxBarButton1Click(Sender: TObject);
begin
  fmPeriod := TfmPeriod.Create(Application, Fdate1, Fdate2, 2);
  if fmPeriod.ShowModal=mrOK then begin
    Screen.Cursor := crHourglass;
    Fdate1 := fmPeriod._GetMonthBegin;
    Fdate2 := fmPeriod._GetMonthEnd;
    CreateColumnDBTreePeriod;
    dxBarButton1.Caption := FormatDateTime('mmm yy', Fdate1) + ' - ' + FormatDateTime('mmm yy', Fdate2);

    BudgetRefresh(-9);
    Screen.Cursor := crDefault;
  end;
end;

procedure TfmBudget.dxBarButton2Click(Sender: TObject);
begin
  BudgetRefresh(-9);
end;

procedure TfmBudget.BudgetRefresh(budget_id: integer);
var i : integer;
    ClientDS_refresh : TClientDataSet;
begin
  Screen.Cursor := crHourGlass;

  ClientDS_refresh := TClientDataSet.Create(nil);
  ClientDS_refresh.FieldDefs.Add('budget_id', ftInteger);
  ClientDS_refresh.FieldDefs.Add('set_expand', ftBoolean);
  ClientDS_refresh.FieldDefs.Add('set_focus', ftBoolean);
  ClientDS_refresh.FieldDefs.Add('set_select', ftBoolean);
  ClientDS_refresh.CreateDataSet;
  ClientDS_refresh.LogChanges := False;

  if cxPageControl2.ActivePageIndex = 0 then begin
    for i:=0 to cxDBTreeList1.AbsoluteCount - 1 do begin
      ClientDS_refresh.Append;
      ClientDS_refresh.FieldByName('budget_id').Value := cxDBTreeList1.AbsoluteItems[i].Values[cxDBTreeList1budget_id.ItemIndex];
      ClientDS_refresh.FieldByName('set_expand').Value := cxDBTreeList1.AbsoluteItems[i].Expanded;
      ClientDS_refresh.FieldByName('set_focus').Value := cxDBTreeList1.AbsoluteItems[i].Focused;
      ClientDS_refresh.FieldByName('set_select').Value := cxDBTreeList1.AbsoluteItems[i].Selected;
      ClientDS_refresh.Post;
    end;

    SP_shp_budget_GET.CommandTimeout := 300;
    SP_shp_budget_GET.Close;
    SP_shp_budget_GET.Parameters.Refresh;
    SP_shp_budget_GET.Parameters.ParamByName('@date_begin').Value := Fdate1;
    SP_shp_budget_GET.Parameters.ParamByName('@date_end'  ).Value := Fdate2;
    SP_shp_budget_GET.Open;

    for i:=0 to cxDBTreeList1.AbsoluteCount - 1 do begin
      if ClientDS_refresh.Locate('budget_id', cxDBTreeList1.AbsoluteItems[i].Values[cxDBTreeList1budget_id.ItemIndex], []) then begin
        cxDBTreeList1.AbsoluteItems[i].Expanded := ClientDS_refresh.FieldByName('set_expand').Value;
        cxDBTreeList1.AbsoluteItems[i].Focused  := ClientDS_refresh.FieldByName('set_focus').Value;
        cxDBTreeList1.AbsoluteItems[i].Selected := ClientDS_refresh.FieldByName('set_select').Value;
      end;

      if cxDBTreeList1.AbsoluteItems[i].Values[cxDBTreeList1budget_id.ItemIndex] = budget_id then begin
        cxDBTreeList1.AbsoluteItems[i].Expanded := True;
        cxDBTreeList1.AbsoluteItems[i].Focused  := True;
        cxDBTreeList1.AbsoluteItems[i].Selected := True;
      end;
    end;
  end;

  if cxPageControl2.ActivePageIndex = 1 then begin
    for i:=0 to cxDBTreeList2.AbsoluteCount - 1 do begin
      ClientDS_refresh.Append;
      ClientDS_refresh.FieldByName('budget_id'  ).Value := cxDBTreeList2.AbsoluteItems[i].Values[cxDBTreeList2budget_id.ItemIndex];
      ClientDS_refresh.FieldByName('set_expand' ).Value := cxDBTreeList2.AbsoluteItems[i].Expanded;
      ClientDS_refresh.FieldByName('set_focus'  ).Value := cxDBTreeList2.AbsoluteItems[i].Focused;
      ClientDS_refresh.FieldByName('set_select' ).Value := cxDBTreeList2.AbsoluteItems[i].Selected;
      ClientDS_refresh.Post;
    end;

    SP_shp_budget_period_GET.Close;
    SP_shp_budget_period_GET.Parameters.Refresh;
    SP_shp_budget_period_GET.Parameters.ParamByName('@date_begin').Value := Fdate1;
    SP_shp_budget_period_GET.Parameters.ParamByName('@date_end'  ).Value := Fdate2;
    if cxLookupComboBox1.EditValue <> 1 then
      SP_shp_budget_period_GET.Parameters.ParamByName('@subdivision_id').Value := cxLookupComboBox1.EditValue
    else
      SP_shp_budget_period_GET.Parameters.ParamByName('@subdivision_id').Value := null;

    SP_shp_budget_period_GET.Open;

    for i:=0 to cxDBTreeList2.AbsoluteCount - 1 do begin
      if ClientDS_refresh.Locate('budget_id', cxDBTreeList2.AbsoluteItems[i].Values[cxDBTreeList2budget_id.ItemIndex], []) then begin
        cxDBTreeList2.AbsoluteItems[i].Expanded := ClientDS_refresh.FieldByName('set_expand').Value;
        cxDBTreeList2.AbsoluteItems[i].Focused  := ClientDS_refresh.FieldByName('set_focus').Value;
        cxDBTreeList2.AbsoluteItems[i].Selected := ClientDS_refresh.FieldByName('set_select').Value;
      end;

      if cxDBTreeList2.AbsoluteItems[i].Values[cxDBTreeList2budget_id.ItemIndex] = budget_id then begin
        cxDBTreeList2.AbsoluteItems[i].Expanded := True;
        cxDBTreeList2.AbsoluteItems[i].Focused  := True;
        cxDBTreeList2.AbsoluteItems[i].Selected := True;
      end;
    end;
  end;

  ClientDS_refresh.Free;

  Screen.Cursor := crDefault;
end;



procedure TfmBudget.dxBarButton3Click(Sender: TObject);
begin
  Panel1.Visible := dxBarButton3.Down;
  cxSplitter1.Visible := dxBarButton3.Down;

  if cxPageControl2.ActivePageIndex = 0 then cxDBTreeList1SelectionChanged(Sender);
  if cxPageControl2.ActivePageIndex = 1 then cxDBTreeList2SelectionChanged(Sender);
end;

procedure TfmBudget.dxBarButton4Click(Sender: TObject);
var tmp_path, file_name : string;
    arr_temp       : array[0..1023] of Char;
begin
  SetString(tmp_path, arr_temp, GetTempPath(1023, arr_temp));
  DeleteFileFromDir(tmp_path);
  repeat
    file_name := 'xls_' + IntToStr(GetTickCount) + '.xls';
  until not FileExists(tmp_path + file_name);

  cxExportTLToExcel(tmp_path + file_name, cxDBTreeList1);
  ShellExecute(HWND(nil), 'open', PChar(tmp_path + file_name), nil, nil, SW_SHOWNORMAL);
end;

procedure TfmBudget.dxBarButton5Click(Sender: TObject);
begin
	PrintcxGrid(cxGridDBBandedTableView5);
end;

procedure TfmBudget.dxBarButton6Click(Sender: TObject);
begin
	SetdxDBGridColumns(cxGridDBBandedTableView5);
end;

procedure TfmBudget.dxBarButton7Click(Sender: TObject);
begin
	cxGridDBBandedTableView5.OptionsView.GroupByBox := not cxGridDBBandedTableView5.OptionsView.GroupByBox;
end;

procedure TfmBudget.dxBarButton8Click(Sender: TObject);
var i : integer;
begin
  if dxBarButton8.Down then
    dxBarButton8.Style := fmMain.cxStyle_BoldBlue
  else
    dxBarButton8.Style := nil;

  for i:=0 to cxDBTreeList1.ColumnCount-1 do begin
    if Pos('_fact', cxDBTreeList1.Columns[i].Name) <> 0 then begin
      cxDBTreeList1.Columns[i].Visible := dxBarButton8.Down;
    end;
  end;

  for i:=0 to cxDBTreeList2.ColumnCount-1 do begin
    if Pos('_fact', cxDBTreeList2.Columns[i].Name) <> 0 then begin
      cxDBTreeList2.Columns[i].Visible := dxBarButton8.Down;
    end;
  end;
end;

procedure TfmBudget.dxBarButton9Click(Sender: TObject);
var i : integer;
begin
  if dxBarButton9.Down then
    dxBarButton9.Style := fmMain.cxStyle_BoldBlue
  else
    dxBarButton9.Style := nil;

  for i:=0 to cxDBTreeList1.ColumnCount-1 do begin
    if Pos('_plan', cxDBTreeList1.Columns[i].Name) <> 0 then begin
      cxDBTreeList1.Columns[i].Visible := dxBarButton9.Down;
    end;
  end;

  for i:=0 to cxDBTreeList2.ColumnCount-1 do begin
    if Pos('_plan', cxDBTreeList2.Columns[i].Name) <> 0 then begin
      cxDBTreeList2.Columns[i].Visible := dxBarButton9.Down;
    end;
  end;
end;

procedure TfmBudget.dxBarButton10Click(Sender: TObject);
var i : integer;
begin
  if dxBarButton10.Down then
    dxBarButton10.Style := fmMain.cxStyle_BoldBlue
  else
    dxBarButton10.Style := nil;

  for i:=0 to cxDBTreeList1.ColumnCount-1 do begin
    if Pos('_result', cxDBTreeList1.Columns[i].Name) <> 0 then begin
      cxDBTreeList1.Columns[i].Visible := dxBarButton10.Down;
    end;
  end;

  for i:=0 to cxDBTreeList2.ColumnCount-1 do begin
    if Pos('_result', cxDBTreeList2.Columns[i].Name) <> 0 then begin
      cxDBTreeList2.Columns[i].Visible := dxBarButton10.Down;
    end;
  end;
end;


procedure TfmBudget.dxBarButton11Click(Sender: TObject);
begin
	PrintcxGrid(cxGridDBBandedTableView1);
end;

procedure TfmBudget.dxBarButton12Click(Sender: TObject);
begin
	SetdxDBGridColumns(cxGridDBBandedTableView1);
end;

procedure TfmBudget.dxBarButton13Click(Sender: TObject);
begin
	cxGridDBBandedTableView1.OptionsView.GroupByBox := not cxGridDBBandedTableView1.OptionsView.GroupByBox;
end;

procedure TfmBudget.dxBarButton14Click(Sender: TObject);
var tmp_path, file_name : string;
    arr_temp       : array[0..1023] of Char;
begin
  SetString(tmp_path, arr_temp, GetTempPath(1023, arr_temp));
  DeleteFileFromDir(tmp_path);
  repeat
    file_name := 'xls_' + IntToStr(GetTickCount) + '.xls';
  until not FileExists(tmp_path + file_name);

  cxExportTLToExcel(tmp_path + file_name, cxDBTreeList2);
  ShellExecute(HWND(nil), 'open', PChar(tmp_path + file_name), nil, nil, SW_SHOWNORMAL);
end;

procedure TfmBudget.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TfmBudget.FormDestroy(Sender: TObject);
begin
  StoreRegistryDate(rgSave, '\Software\Lis1\DateTime\Budget', Fdate1, Fdate2);
end;


procedure TfmBudget.CreateColumnDBTreePeriod();
var       i : integer;
        str : string;
     column : TcxDBTreeListColumn;
       band : TcxTreeListBand;
begin
  i := 0;
  while i < cxDBTreeList2.ColumnCount do begin
    if cxDBTreeList2.Columns[i].Tag = -9 then cxDBTreeList2.Columns[i].Free
    else i := i + 1;
  end;

  while cxDBTreeList2.Bands.Count > 1 do begin
    cxDBTreeList2.Bands.Items[cxDBTreeList2.Bands.Count-1].Free;
  end;



  band := cxDBTreeList2.Bands.Add;
  if cxLookupComboBox1.EditValue = -8 then
    band.Caption.Text :=  'Консолидированный'
  else
    band.Caption.Text :=  'Консолидированный ' + cxLookupComboBox1.Text;

  band.Caption.AlignVert := vaTop;

  column := TcxDBTreeListColumn(cxDBTreeList2.CreateColumn);
  column.Position.BandIndex := band.Index;
  column.DataBinding.FieldName := 'f_fact';
  column.Caption.Text  := 'Факт';
  column.Tag           := -9;
  column.Name          := 'cxDBTreeList1f_fact';
  column.Width         := 120;
  column.PropertiesClass := TcxCurrencyEditProperties;
  TcxCurrencyEditProperties(column.Properties).DisplayFormat := '#,##0.00';

  column := TcxDBTreeListColumn(cxDBTreeList2.CreateColumn);
  column.Position.BandIndex := band.Index;
  column.DataBinding.FieldName := 'f_plan';
  column.Caption.Text  := 'План';
  column.Tag           := -9;
  column.Name          := 'cxDBTreeList1f_plan';
  column.Width         := 120;
  column.PropertiesClass := TcxCurrencyEditProperties;
  TcxCurrencyEditProperties(column.Properties).DisplayFormat := '#,##0.00';
  column.Visible := False;

  column := TcxDBTreeListColumn(cxDBTreeList2.CreateColumn);
  column.Position.BandIndex := band.Index;
  column.DataBinding.FieldName := 'f_result';
  column.Caption.Text  := 'Исполнение %%';
  column.Tag           := -9;
  column.Name          := 'cxDBTreeList1f_result';
  column.Width         := 120;
  column.PropertiesClass := TcxCurrencyEditProperties;
  TcxCurrencyEditProperties(column.Properties).DisplayFormat := '#,##0.00';
  column.Visible := False;



  for i := 0 to MonthsBetween(Fdate1, Fdate2) do begin
    str := FormatDateTime('yyyymm', IncMonth(Fdate1, i));

    band := cxDBTreeList2.Bands.Add;
    band.Caption.Text :=  FormatDateTime('mmmm yyyy', IncMonth(Fdate1, i));
    band.Caption.AlignVert := vaTop;

    column := TcxDBTreeListColumn(cxDBTreeList2.CreateColumn);
    column.Position.BandIndex := band.Index;
    column.DataBinding.FieldName := 'f_' + str + '_fact';
    column.Caption.Text  := 'Факт';
    column.Tag           := -9;
    column.Name          := 'cxDBTreeList1f_' + str + '_fact';
    column.Width         := 120;
    column.PropertiesClass := TcxCurrencyEditProperties;
    TcxCurrencyEditProperties(column.Properties).DisplayFormat := '#,##0.00';

    column := TcxDBTreeListColumn(cxDBTreeList2.CreateColumn);
    column.Position.BandIndex := band.Index;
    column.DataBinding.FieldName := 'f_' + str + '_plan';
    column.Caption.Text  := 'План';
    column.Tag           := -9;
    column.Name          := 'cxDBTreeList1f_' + str + '_plan';
    column.Width         := 120;
    column.PropertiesClass := TcxCurrencyEditProperties;
    TcxCurrencyEditProperties(column.Properties).DisplayFormat := '#,##0.00';
    column.Visible := False;

    column := TcxDBTreeListColumn(cxDBTreeList2.CreateColumn);
    column.Position.BandIndex := band.Index;
    column.DataBinding.FieldName := 'f_' + str + '_result';
    column.Caption.Text  := 'Исполнение %%';
    column.Tag           := -9;
    column.Name          := 'cxDBTreeList1f_' + str + '_result';
    column.Width         := 120;
    column.PropertiesClass := TcxCurrencyEditProperties;
    TcxCurrencyEditProperties(column.Properties).DisplayFormat := '#,##0.00';
    column.Visible := False;
  end;
end;

end.
