unit BargainListAdd;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData,
  cxClasses, dxBar, cxGridLevel, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGrid, cxGridBandedTableView,
  cxGridDBBandedTableView, cxPC, ADODB, cxCurrencyEdit, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee,
  dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMetropolis, dxSkinMetropolisDark, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinPumpkin,
  dxSkinSeven, dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus, dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008,
  dxSkinTheAsphaltWorld, dxSkinsDefaultPainters, dxSkinValentine, dxSkinVS2010, dxSkinWhiteprint, dxSkinXmas2008Blue, dxSkinscxPCPainter,
  dxBarBuiltInMenu, cxNavigator, dxSkinsdxBarPainter, dxSkinOffice2016Colorful,
  dxSkinOffice2016Dark, dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, dxSkinTheBezier, dxDateRanges, cxDataControllerConditionalFormattingRulesManagerDialog, dxSkinOffice2019Colorful;

type
  TfmBargainListAdd = class(TForm)
    dxBarManager1: TdxBarManager;
    dxBarManager1Bar1: TdxBar;
    cxPageControl1: TcxPageControl;
    cxTabSheet1: TcxTabSheet;
    cxTabSheet2: TcxTabSheet;
    cxGrid1: TcxGrid;
    cxGrid1DBBandedTableView1: TcxGridDBBandedTableView;
    cxGrid1Level1: TcxGridLevel;
    dxBarPopupMenu1: TdxBarPopupMenu;
    dxBarButton1: TdxBarButton;
    dxBarSubItem1: TdxBarSubItem;
    dxBarButton2: TdxBarButton;
    dxBarButton3: TdxBarButton;
    dxBarButton4: TdxBarButton;
    dxBarButton5: TdxBarButton;
    dxBarButton6: TdxBarButton;
    dxBarButton7: TdxBarButton;
    Query_BargainAdd: TADOQuery;
    DS_BargainAdd: TDataSource;
    cxGrid1DBBandedTableView1bargain_rail_id: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1bargain_add_id: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1calc_round_weight: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1calc_kargo_min_norm: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1calc_set_grp: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1calc_set_fact_sum: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1calc_set_round_up_sum: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1kargoETSNG_id: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1kargoETSNG_add_id: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1kargoGNG_id: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1state_begin_id: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1state_end_id: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1node_begin_id: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1node_end_id: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1cit_id: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1type_kontener_id: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1set_attr_self: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1count_vagon: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1count_weight: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1count_day_vagon: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1firm_sender_id: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1firm_reciever_id: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1kargoETSNG_cod: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1kargoETSNG_name: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1kargoETSNG_group_name: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1kargoETSNG_add_name: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1kargoETSNG_add_cod: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1kargoGNG_name: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1kargoGNG_cod: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1state_begin_name: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1state_begin_cod: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1state_end_name: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1state_end_cod: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1node_begin_name: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1node_begin_cod: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1node_end_name: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1node_end_cod: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1firm_sender_name: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1firm_reciever_name: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1set_list_rate: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1bargain_id: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1set_include_nds: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1add_sum: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1add_count: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1comment: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1type_contract_name: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1type_contract: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1type_nds_cod: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1ed_izm_cod: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1exchange_USD_val: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1exchange_EUR_val: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1exchange_CHF_val: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1contract_cod: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1firm_customer_name: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1ed_izm_name: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1type_add_name: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1brief_name: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1add_NDS_sum: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1add_notNDS_sum: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1add_contract_NDS_sum: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1add_contract_notNDS_sum: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1add_contract_sum: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1add_NDS_sum_RUB: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1add_notNDS_sum_RUB: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1add_sum_RUB: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1type_nds_name: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1add_rate: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1type_calc_id: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1type_exchange_id: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1contract_brief_name: TcxGridDBBandedColumn;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle_SumAdd: TcxStyle;
    cxStyle_SumAddBold: TcxStyle;
    cxStyle_SumContract: TcxStyle;
    cxStyle_SumContractBold: TcxStyle;
    cxStyle_SumRub: TcxStyle;
    cxStyle_SumRubBold: TcxStyle;
    dxBarSubItem2: TdxBarSubItem;
    dxBarButton8: TdxBarButton;
    dxBarButton9: TdxBarButton;
    dxBarSubItem3: TdxBarSubItem;
    dxBarButton10: TdxBarButton;
    dxBarButton11: TdxBarButton;
    dxBarSeparator1: TdxBarSeparator;
    cxGrid1DBBandedTableView1FIO_users_owner: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1date_period_month: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1date_period_year: TcxGridDBBandedColumn;
    dxBarButton12: TdxBarButton;
    dxBarButton13: TdxBarButton;
    procedure cxGrid1DBBandedTableView1FilterOnChanged(Sender: TObject);
    procedure cxGrid1DBBandedTableView1CustomDrawCell(
      Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
      AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
    procedure cxGrid1DBBandedTableView1CustomDrawColumnHeader(
      Sender: TcxGridTableView; ACanvas: TcxCanvas;
      AViewInfo: TcxGridColumnHeaderViewInfo; var ADone: Boolean);
    procedure cxGrid1DBBandedTableView1FocusedItemChanged(
      Sender: TcxCustomGridTableView; APrevFocusedItem,
      AFocusedItem: TcxCustomGridTableItem);
    procedure cxGrid1DBBandedTableView1KeyPress(Sender: TObject; var Key: Char);
    procedure dxBarButton1Click(Sender: TObject);
    procedure dxBarButton4Click(Sender: TObject);
    procedure dxBarButton5Click(Sender: TObject);
    procedure dxBarButton6Click(Sender: TObject);
    procedure dxBarButton7Click(Sender: TObject);
    procedure dxBarButton10Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure dxBarButton8Click(Sender: TObject);
    procedure dxBarButton9Click(Sender: TObject);
    procedure dxBarButton13Click(Sender: TObject);
  private
    Fusers_id: integer;
    Fdate1, Fdate2 : TDateTime;
  public
    constructor Create(AOwner: TApplication; flag: boolean); reintroduce;
  end;

var
  fmBargainListAdd: TfmBargainListAdd;

implementation

uses main, Raznoe, Default, Period, Other;

{$R *.dfm}

constructor TfmBargainListAdd.Create(AOwner: TApplication; flag: boolean);
begin
  Screen.Cursor := crHourglass;
  inherited Create(AOwner);

  dxBarSubItem2.Caption := StoreRegistryDate(rgLoad, '\Software\Lis1\DateTime\BargainListAdd', Fdate1, Fdate2);

  if flag then begin
    FormStyle   := fsNormal;
    WindowState := wsMaximized;
    dxBarButton5.Visible  := ivAlways;
  end else begin
    FormStyle   := fsMDIChild;
    WindowState := wsMaximized;
    dxBarButton5.Visible  := ivNever;
  end;

  StoreRegistryGrid(rgLoad, '\Software\Lis1\BargainListAdd_Grids', cxGrid1DBBandedTableView1);

  Fusers_id := usr_pwd.users_id;
  Query_BargainAdd.Parameters.ParamByName('date1').Value := Fdate1;
  Query_BargainAdd.Parameters.ParamByName('date2').Value := Fdate2;
  Query_BargainAdd.Open;

  MonitorEventFormOpen('OPEN_FORM', self.Name, fmMain.Lis, -9);

  Screen.Cursor := crDefault;
end;

procedure TfmBargainListAdd.cxGrid1DBBandedTableView1CustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
  if (cxGrid1DBBandedTableView1type_contract_name.Index = AViewInfo.Item.ID) then begin
    if (AViewInfo.GridRecord.Values[cxGrid1DBBandedTableView1type_contract.Index] = 0) then begin
      ACanvas.Font.Color := clRed;
      ACanvas.Font.Style := [fsBold];
    end;

    if (AViewInfo.GridRecord.Values[cxGrid1DBBandedTableView1type_contract.Index] = 1) then begin
      ACanvas.Font.Color := clGreen;
      ACanvas.Font.Style := [fsBold];
    end;
  end;


	if AViewInfo.GridRecord.Selected or AViewInfo.GridRecord.Focused then begin
		ACanvas.Brush.Color := clNavy;
		ACanvas.Font.Color := clWhite;
		if AViewInfo.Focused then ACanvas.Brush.Color := clBlue;
	end;
end;

procedure TfmBargainListAdd.cxGrid1DBBandedTableView1CustomDrawColumnHeader(Sender: TcxGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxGridColumnHeaderViewInfo; var ADone: Boolean);
begin
	if AViewInfo.Column.Focused then begin
		ACanvas.Brush.Color := clNavy;
		ACanvas.Font.Color := clWhite;
	end;
end;

procedure TfmBargainListAdd.cxGrid1DBBandedTableView1FilterOnChanged(Sender: TObject);
begin
	DrawcxGridColumnOnFiltered(Sender);
end;

procedure TfmBargainListAdd.cxGrid1DBBandedTableView1FocusedItemChanged(Sender: TcxCustomGridTableView; APrevFocusedItem, AFocusedItem: TcxCustomGridTableItem);
begin
	cxGrid1DBBandedTableView1.Painter.Invalidate;
end;

procedure TfmBargainListAdd.cxGrid1DBBandedTableView1KeyPress(Sender: TObject; var Key: Char);
begin
	FilterColumnGridOnKeyPress(cxGrid1DBBandedTableView1, Key);
end;

procedure TfmBargainListAdd.dxBarButton10Click(Sender: TObject);
begin
  RefreshQueryGrid(cxGrid1DBBandedTableView1, 'bargain_add_id');
end;

procedure TfmBargainListAdd.dxBarButton13Click(Sender: TObject);
begin
  Screen.Cursor := crHourglass;
  if TControl(Sender).Tag = 1 then begin
    Fdate1 := IncMonth(Fdate1, -1);
  end;

  if TControl(Sender).Tag = 2 then begin
    Fdate1 := IncMonth(Fdate1, 1);
  end;

  ShowTextMessage('Обновление данных', False);

  Fdate2 := IncMonth(Fdate1, 1) - 1;
  dxBarSubItem2.Caption := FormatDateTime('mmmm yyyy', Fdate1);

  Query_BargainAdd.Close;
  Query_BargainAdd.Parameters.ParamByName('date1').Value := Fdate1;
  Query_BargainAdd.Parameters.ParamByName('date2').Value := Fdate2;
  Query_BargainAdd.Open;

  ShowTextMessage;

  Screen.Cursor := crDefault;
end;

procedure TfmBargainListAdd.dxBarButton1Click(Sender: TObject);
begin
	PrintcxGrid(cxGrid1DBBandedTableView1);
end;

procedure TfmBargainListAdd.dxBarButton4Click(Sender: TObject);
begin
	SetdxDBGridColumns(cxGrid1DBBandedTableView1);
end;

procedure TfmBargainListAdd.dxBarButton5Click(Sender: TObject);
begin
	cxGrid1DBBandedTableView1.OptionsView.GroupByBox := not cxGrid1DBBandedTableView1.OptionsView.GroupByBox;
end;

procedure TfmBargainListAdd.dxBarButton6Click(Sender: TObject);
begin
	FiltercxGrid4ListID(cxGrid1DBBandedTableView1);
end;

procedure TfmBargainListAdd.dxBarButton7Click(Sender: TObject);
begin
	cxGrid1DBBandedTableView1.Filtering.ColumnFilteredItemsList := not dxBarButton7.Down;
end;

procedure TfmBargainListAdd.dxBarButton8Click(Sender: TObject);
begin
  fmPeriod := TfmPeriod.Create(Application, Fdate1, Fdate2, 3);
  if fmPeriod.ShowModal=mrOK then begin
    ShowTextMessage('Обновление данных', False);
    Fdate1 := fmPeriod._GetMonth;
    Fdate2 := IncMonth(Fdate1, 1);
    dxBarSubItem2.Caption := FormatDateTime('mmmm yyyy', Fdate1);

    Query_BargainAdd.Close;
    Query_BargainAdd.Parameters.ParamByName('date1').Value := Fdate1;
    Query_BargainAdd.Parameters.ParamByName('date2').Value := Fdate2;
    Query_BargainAdd.Open;

    ShowTextMessage;
  end;
end;

procedure TfmBargainListAdd.dxBarButton9Click(Sender: TObject);
begin
  fmPeriod := TfmPeriod.Create(Application, Fdate1, Fdate2, 2);
  if fmPeriod.ShowModal=mrOK then begin
    ShowTextMessage('Обновление данных', False);

    Fdate1 := fmPeriod._GetMonthBegin;
    Fdate2 := fmPeriod._GetMonthEnd;
    dxBarSubItem2.Caption := FormatDateTime('mmm yy', Fdate1) + ' - ' + FormatDateTime('mmm yy', Fdate2);

    Query_BargainAdd.Close;
    Query_BargainAdd.Parameters.ParamByName('date1').Value := Fdate1;
    Query_BargainAdd.Parameters.ParamByName('date2').Value := Fdate2;
    Query_BargainAdd.Open;

    ShowTextMessage;
  end;
end;

procedure TfmBargainListAdd.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TfmBargainListAdd.FormDestroy(Sender: TObject);
begin
  StoreRegistryDate(rgSave, '\Software\Lis1\DateTime\BargainListAdd', Fdate1, Fdate2);
  StoreRegistryGrid(rgSave,'\Software\Lis1\BargainListAdd_Grids', cxGrid1DBBandedTableView1);
end;

end.
