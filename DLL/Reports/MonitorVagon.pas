unit MonitorVagon;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxClasses, dxBar, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, cxNavigator, DB, cxDBData, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridBandedTableView,
  cxGridDBBandedTableView, cxGridLevel, cxGrid, Default, Raznoe, dxSkinsCore,
  dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee,
  dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
  dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMetropolis, dxSkinMetropolisDark, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013DarkGray,
  dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinOffice2016Colorful,
  dxSkinOffice2016Dark, dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic,
  dxSkinSharp, dxSkinSharpPlus, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinTheAsphaltWorld, dxSkinsDefaultPainters,
  dxSkinValentine, dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue, dxSkinsdxBarPainter, dxSkinscxPCPainter, ImgList, ADODB,
  cxPropertiesStore, Period, System.ImageList, cxImageList,
  cxDataControllerConditionalFormattingRulesManagerDialog, dxSkinTheBezier, dxDateRanges;

type
  TfmMonitorVagon = class(TForm)
    dxBarManager1: TdxBarManager;
    dxBarManager1Bar1: TdxBar;
    dxBarButton1: TdxBarButton;
    dxBarButton2: TdxBarButton;
    dxBarButton3: TdxBarButton;
    dxBarSubItem1: TdxBarSubItem;
    dxBarButton4: TdxBarButton;
    dxBarButton5: TdxBarButton;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    cxGrid1DBBandedTableView1: TcxGridDBBandedTableView;
    dxBarPopupMenu1: TdxBarPopupMenu;
    dxBarButton6: TdxBarButton;
    dxBarSubItem2: TdxBarSubItem;
    dxBarButton7: TdxBarButton;
    dxBarButton8: TdxBarButton;
    dxBarButton9: TdxBarButton;
    dxBarButton10: TdxBarButton;
    cxImageList1: TcxImageList;
    Query_MonitorVagon: TADOQuery;
    DS_MonitorVagon: TDataSource;
    cxGrid1DBBandedTableView1monitor_vagon_id: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1str_num_vagon: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1monitor_begin: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1monitor_end: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1monitor_email: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1set_active: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1monitor_result: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1contract_id: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1contract_cod: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1date_begin: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1firm_self_name: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1firm_customer_name: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1type_bargain_id: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1type_bargain_name: TcxGridDBBandedColumn;
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
    dxBarButton11: TdxBarButton;
    cxPropertiesStore1: TcxPropertiesStore;
    dxBarSubItem3: TdxBarSubItem;
    dxBarButton12: TdxBarButton;
    procedure cxGrid1DBBandedTableView1FilterOnChanged(Sender: TObject);
    procedure cxGrid1DBBandedTableView1CustomDrawCell(Sender: TcxCustomGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
    procedure cxGrid1DBBandedTableView1CustomDrawColumnHeader(Sender: TcxGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxGridColumnHeaderViewInfo; var ADone: Boolean);
    procedure cxGrid1DBBandedTableView1FocusedItemChanged(Sender: TcxCustomGridTableView; APrevFocusedItem, AFocusedItem: TcxCustomGridTableItem);
    procedure cxGrid1DBBandedTableView1KeyPress(Sender: TObject; var Key: Char);
    procedure dxBarButton6Click(Sender: TObject);
    procedure dxBarButton7Click(Sender: TObject);
    procedure dxBarButton8Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure dxBarButton1Click(Sender: TObject);
    procedure dxBarButton3Click(Sender: TObject);
    procedure dxBarButton2Click(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure dxBarButton4Click(Sender: TObject);
    procedure dxBarButton5Click(Sender: TObject);
    procedure dxBarButton9Click(Sender: TObject);
  private
    Fconnect : TADOConnection;
    Fdate1, Fdate2 : TDateTime;
  public
    constructor Create(AOwner: TApplication; connect: TADOConnection);
  end;

var
  fmMonitorVagon: TfmMonitorVagon;

function CreateWndMonitorVagon(AppHand: THandle; connect: TADOConnection): variant; export;

implementation
  uses MonitorVagonAdd;

{$R *.dfm}

function CreateWndMonitorVagon(AppHand: THandle; connect: TADOConnection): variant;
begin
  Application.Handle := AppHand;
  try
    fmMonitorVagon := TfmMonitorVagon.Create(Application, connect);
    if fmMonitorVagon.ShowModal = mrOk then result := VarArrayOf([-9, -9])
    else result := '';
  finally
    fmMonitorVagon.Free;
  end;
end;

constructor TfmMonitorVagon.Create(AOwner: TApplication; connect: TADOConnection);
begin
  Screen.Cursor := crHourglass;
  inherited Create(AOwner);

  Fconnect := connect;
  Query_MonitorVagon.Connection := Fconnect;

  dxBarSubItem1.Caption := StoreRegistryDate(rgLoad, '\Software\Lis1\DateTime\MonitorVagon', Fdate1, Fdate2);
  Query_MonitorVagon.Close;
  Query_MonitorVagon.Parameters.ParamByName('date1').Value := Fdate1;
  Query_MonitorVagon.Parameters.ParamByName('date2').Value := Fdate2;
  Query_MonitorVagon.Open;

  StoreRegistryGrid(rgLoad, '\Software\Lis1\MonitorVagon_Grids', cxGrid1DBBandedTableView1);

  MonitorEventFormOpen('OPEN_FORM', self.Name, Fconnect, -9);
  Screen.Cursor := crDefault;
end;

procedure TfmMonitorVagon.cxGrid1DBBandedTableView1CustomDrawCell(Sender: TcxCustomGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
	if AViewInfo.GridRecord.Selected or AViewInfo.GridRecord.Focused then begin
		ACanvas.Brush.Color := clNavy;
		ACanvas.Font.Color := clWhite;
		if AViewInfo.Focused then ACanvas.Brush.Color := clBlue;
	end;
end;

procedure TfmMonitorVagon.cxGrid1DBBandedTableView1CustomDrawColumnHeader(Sender: TcxGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxGridColumnHeaderViewInfo; var ADone: Boolean);
begin
	if AViewInfo.Column.Focused then begin
		ACanvas.Brush.Color := clNavy;
		ACanvas.Font.Color := clWhite;
	end;
end;

procedure TfmMonitorVagon.cxGrid1DBBandedTableView1FilterOnChanged(Sender: TObject);
begin
	DrawcxGridColumnOnFiltered(cxGrid1DBBandedTableView1);
end;

procedure TfmMonitorVagon.cxGrid1DBBandedTableView1FocusedItemChanged(Sender: TcxCustomGridTableView; APrevFocusedItem, AFocusedItem: TcxCustomGridTableItem);
begin
	cxGrid1DBBandedTableView1.Painter.Invalidate;
end;

procedure TfmMonitorVagon.cxGrid1DBBandedTableView1KeyPress(Sender: TObject; var Key: Char);
begin
	FilterColumnGridOnKeyPress(cxGrid1DBBandedTableView1, Key);
end;

procedure TfmMonitorVagon.dxBarButton1Click(Sender: TObject);
begin
  fmMonitorVagonAdd := TfmMonitorVagonAdd.Create(Application, Fconnect);
  if fmMonitorVagonAdd.ShowModal = mrOk then begin
    RefreshQueryGrid(cxGrid1DBBandedTableView1, 'monitor_vagon_id', fmMonitorVagonAdd._GetMonitorVaginId);
  end;
end;

procedure TfmMonitorVagon.dxBarButton2Click(Sender: TObject);
begin
  fmMonitorVagonAdd := TfmMonitorVagonAdd.Create(Application, Fconnect);
  fmMonitorVagonAdd._SetUpdate := cxGrid1DBBandedTableView1monitor_vagon_id.DataBinding.Field.Value;
  if fmMonitorVagonAdd.ShowModal = mrOk then begin
    RefreshQueryGrid(cxGrid1DBBandedTableView1, 'monitor_vagon_id', fmMonitorVagonAdd._GetMonitorVaginId);
  end;
end;

procedure TfmMonitorVagon.dxBarButton3Click(Sender: TObject);
begin
  RefreshQueryGrid(cxGrid1DBBandedTableView1, 'monitor_vagon_id');
end;

procedure TfmMonitorVagon.dxBarButton4Click(Sender: TObject);
begin
  fmPeriod := TfmPeriod.Create(Application, Fdate1, Fdate2, 3);
  if fmPeriod.ShowModal=mrOK then begin
    Screen.Cursor := crHourglass;
    Fdate1 := fmPeriod._GetMonth;
    Fdate2 := IncMonth(Fdate1, 1) - 1;
    dxBarSubItem1.Caption := FormatDateTime('mmmm yyyy', Fdate1);

    Query_MonitorVagon.Close;
    Query_MonitorVagon.Parameters.ParamByName('date1').Value := Fdate1;
    Query_MonitorVagon.Parameters.ParamByName('date2').Value := Fdate2;
    Query_MonitorVagon.Open;

    Screen.Cursor := crDefault;
  end;
end;

procedure TfmMonitorVagon.dxBarButton5Click(Sender: TObject);
begin
  fmPeriod := TfmPeriod.Create(Application, Fdate1, Fdate2, 2);
  if fmPeriod.ShowModal=mrOK then begin
    Screen.Cursor := crHourglass;
    Fdate1 := fmPeriod._GetMonthBegin;
    Fdate2 := fmPeriod._GetMonthEnd;
    dxBarSubItem1.Caption := FormatDateTime('mmm yy', Fdate1) + ' - ' + FormatDateTime('mmm yy', Fdate2);

    Query_MonitorVagon.Close;
    Query_MonitorVagon.Parameters.ParamByName('date1').Value := Fdate1;
    Query_MonitorVagon.Parameters.ParamByName('date2').Value := Fdate2;
    Query_MonitorVagon.Open;

    Screen.Cursor := crDefault;
  end;
end;

procedure TfmMonitorVagon.dxBarButton6Click(Sender: TObject);
begin
	PrintcxGrid(cxGrid1DBBandedTableView1);
end;

procedure TfmMonitorVagon.dxBarButton7Click(Sender: TObject);
begin
	SetdxDBGridColumns(cxGrid1DBBandedTableView1);
end;

procedure TfmMonitorVagon.dxBarButton8Click(Sender: TObject);
begin
	cxGrid1DBBandedTableView1.OptionsView.GroupByBox := not cxGrid1DBBandedTableView1.OptionsView.GroupByBox;
end;

procedure TfmMonitorVagon.dxBarButton9Click(Sender: TObject);
begin
  Screen.Cursor := crHourglass;

  if TControl(Sender).Tag = 1 then begin
    Fdate1 := IncMonth(Fdate1, 1);
  end;

  if TControl(Sender).Tag = 2 then begin
    Fdate1 := IncMonth(Fdate1, -1);
  end;

  Fdate2 := IncMonth(Fdate1, 1) - 1;
  dxBarSubItem1.Caption := FormatDateTime('mmmm yyyy', Fdate1);
  dxBarManager1Bar1.Reset;

  dxBarButton9.Caption := FormatDateTime('mmmm yyyy', IncMonth(Fdate1,-1));
  dxBarButton10.Caption := FormatDateTime('mmmm yyyy', IncMonth(Fdate1,1));

  Query_MonitorVagon.Close;
  Query_MonitorVagon.Parameters.ParamByName('date1').Value := Fdate1;
  Query_MonitorVagon.Parameters.ParamByName('date2').Value := Fdate2;
  Query_MonitorVagon.Open;

  Screen.Cursor := crDefault;
end;

procedure TfmMonitorVagon.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TfmMonitorVagon.FormDestroy(Sender: TObject);
begin
  StoreRegistryGrid(rgSave, '\Software\Lis1\MonitorVagon_Grids', cxGrid1DBBandedTableView1);
  StoreRegistryDate(rgSave, '\Software\Lis1\DateTime\MonitorVagon', Fdate1, Fdate2);
end;

end.
