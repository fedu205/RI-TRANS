unit FactRepairPrice;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Graphics,
  Controls, Forms, Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, cxNavigator, Default,
  cxDataControllerConditionalFormattingRulesManagerDialog, Data.DB, cxDBData,
  cxCurrencyEdit, cxCalendar, dxBar, cxClasses, Data.Win.ADODB,
  cxPropertiesStore, cxGridLevel, cxGridCustomTableView, cxGridTableView,
  cxGridBandedTableView, cxGridDBBandedTableView, cxGridCustomView, cxGrid,
  dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel,
  dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
  dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMetropolis, dxSkinMetropolisDark, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013DarkGray,
  dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinOffice2016Colorful,
  dxSkinOffice2016Dark, dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic,
  dxSkinSharp, dxSkinSharpPlus, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinTheAsphaltWorld, dxSkinTheBezier,
  dxSkinsDefaultPainters, dxSkinValentine, dxSkinVisualStudio2013Blue,
  dxSkinVisualStudio2013Dark, dxSkinVisualStudio2013Light, dxSkinVS2010,
  dxSkinWhiteprint, dxSkinXmas2008Blue, System.ImageList, Vcl.ImgList,
  cxImageList, cxCheckBox, dxDateRanges, dxSkinOffice2019Colorful;

type
  TfmFactRepairPrice = class(TForm)
    cxGrid1: TcxGrid;
    cxGrid1DBBandedTableView1: TcxGridDBBandedTableView;
    cxGrid1DBBandedTableView1fact_repair_price_id: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1detail_id: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1detail_name: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1price: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1date_begin: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1date_end: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1currency_id: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1currency_name: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1nds_id: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1nds_name: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1set_include_nds: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1ed_izm_id: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1ed_izm_name: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1comment: TcxGridDBBandedColumn;
    cxGrid1Level1: TcxGridLevel;
    cxPropertiesStore1: TcxPropertiesStore;
    DS_Fact_Repair_Price: TDataSource;
    Query_Fact_Repair_Price: TADOQuery;
    dxBarManager1: TdxBarManager;
    dxBarManager1Bar1: TdxBar;
    dxBarButton1: TdxBarButton;
    dxBarButton2: TdxBarButton;
    dxBarButton3: TdxBarButton;
    dxBarButton4: TdxBarButton;
    dxBarPopupMenu1: TdxBarPopupMenu;
    dxBarButton5: TdxBarButton;
    dxBarButton6: TdxBarButton;
    dxBarButton7: TdxBarButton;
    dxBarButton8: TdxBarButton;
    dxBarSubItem1: TdxBarSubItem;
    dxBarButton9: TdxBarButton;
    dxBarButton10: TdxBarButton;
    dxBarButton11: TdxBarButton;
    dxBarButton12: TdxBarButton;
    cxImageList1: TcxImageList;
    cxGrid1DBBandedTableView1detail_status_name: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1detail_status_id: TcxGridDBBandedColumn;
    dxBarButton13: TdxBarButton;
    dxBarButton14: TdxBarButton;
    dxBarButton15: TdxBarButton;
    dxBarButton16: TdxBarButton;
    dxBarSubItem2: TdxBarSubItem;
    dxBarButton17: TdxBarButton;
    dxBarButton18: TdxBarButton;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1: TcxStyle;
    Connect_Fact_Repair_Price: TADOConnection;
    procedure dxBarButton4Click(Sender: TObject);
    procedure dxBarButton3Click(Sender: TObject);
    procedure dxBarButton2Click(Sender: TObject);
    procedure dxBarButton1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure dxBarButton8Click(Sender: TObject);
    procedure dxBarButton9Click(Sender: TObject);
    procedure dxBarButton10Click(Sender: TObject);
    procedure cxGrid1DBBandedTableView1KeyPress(Sender: TObject; var Key: Char);
    procedure cxGrid1DBBandedTableView1FocusedItemChanged(Sender: TcxCustomGridTableView; APrevFocusedItem,AFocusedItem: TcxCustomGridTableItem);
    procedure cxGrid1DBBandedTableView1CustomDrawCell(Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
    procedure cxGrid1DBBandedTableView1CustomDrawColumnHeader(Sender: TcxGridTableView; ACanvas: TcxCanvas;AViewInfo: TcxGridColumnHeaderViewInfo; var ADone: Boolean);
    procedure dxBarButton13Click(Sender: TObject);
    procedure dxBarButton14Click(Sender: TObject);
    procedure cxGrid1DBBandedTableView1DataControllerFilterChanged(Sender: TObject);
    procedure dxBarButton15Click(Sender: TObject);
    procedure dxBarButton16Click(Sender: TObject);
    procedure dxBarButton17Click(Sender: TObject);
    procedure dxBarButton18Click(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    Fdate1    : TDateTime;//дата отображения периода с
    Fdate2    : TDateTime;//дата отображения периода по
  public
    constructor Create(AOwner : TApplication; flag : boolean; Connect : TADOConnection); reintroduce;
  end;


  function CreateWndFactRepairPrice(AppHand : THandle; flag : boolean; Connect : TADOConnection) : variant; export;

var
  fmFactRepairPrice : TfmFactRepairPrice;

implementation
  uses FactRepairPriceAdd, Raznoe, Other, Period;

{$R *.dfm}

function CreateWndFactRepairPrice(AppHand : THandle; flag : boolean; Connect : TADOConnection) : variant; export;
begin
  Application.Handle := AppHand;
  fmFactRepairPrice := TfmFactRepairPrice.Create(Application, flag, Connect);
  try
    fmFactRepairPrice.ShowModal;
    result := VarArrayOf([-9, '', '']);
  finally
    fmFactRepairPrice.Free;
  end;
end;

constructor TfmFactRepairPrice.Create(AOwner : TApplication; flag : boolean; Connect : TADOConnection);
begin
  Screen.Cursor := crHourglass;
  inherited Create(AOwner);

  Connect_Fact_Repair_Price.ConnectionString := Connect.ConnectionString;

  dxBarSubItem2.Caption := StoreRegistryDate(rgLoad, '\Software\Lis1\DateTime\FactRepairPrice', Fdate1, Fdate2);
  StoreRegistryGrid(rgLoad, '\Software\Lis1\FactRepairPrice_Grids', cxGrid1DBBandedTableView1);

  Query_Fact_Repair_Price.Connection := Connect_Fact_Repair_Price;
  Query_Fact_Repair_Price.Parameters.ParamByName('Fdate1').Value := Fdate1;
  Query_Fact_Repair_Price.Parameters.ParamByName('Fdate2').Value := Fdate2;
  Query_Fact_Repair_Price.Open;

  if flag then
    WindowState := wsMaximized
  else
    WindowState := wsMaximized;


  SetUsersModuleRights(self, Connect_Fact_Repair_Price);

  MonitorEventFormOpen('OPEN_FORM', self.Name, Connect_Fact_Repair_Price, -9);
  Screen.Cursor := crDefault;
end;

procedure TfmFactRepairPrice.cxGrid1DBBandedTableView1CustomDrawCell(Sender: TcxCustomGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
  if AViewInfo.GridRecord.Selected or AViewInfo.GridRecord.Focused then begin
    ACanvas.Brush.Color := clNavy;
    ACanvas.Font.Color := clWhite;
    if AViewInfo.Focused then ACanvas.Brush.Color := clBlue;
  end;
end;

procedure TfmFactRepairPrice.cxGrid1DBBandedTableView1CustomDrawColumnHeader(Sender: TcxGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxGridColumnHeaderViewInfo; var ADone: Boolean);
begin
  if AViewInfo.Column.Focused then begin
    ACanvas.Brush.Color := clNavy;
    ACanvas.Font.Color := clWhite;
  end;
end;

procedure TfmFactRepairPrice.cxGrid1DBBandedTableView1DataControllerFilterChanged(Sender: TObject);
begin
  DrawcxGridColumnOnFiltered(Sender);
end;

procedure TfmFactRepairPrice.cxGrid1DBBandedTableView1FocusedItemChanged(Sender: TcxCustomGridTableView; APrevFocusedItem, AFocusedItem: TcxCustomGridTableItem);
begin
  Sender.Painter.Invalidate;
end;

procedure TfmFactRepairPrice.cxGrid1DBBandedTableView1KeyPress(Sender: TObject; var Key: Char);
begin
  FilterColumnGridOnKeyPress(cxGrid1DBBandedTableView1, Key);
end;

procedure TfmFactRepairPrice.dxBarButton10Click(Sender: TObject);
begin
  cxGrid1DBBandedTableView1.OptionsView.GroupByBox := not cxGrid1DBBandedTableView1.OptionsView.GroupByBox;
end;

procedure TfmFactRepairPrice.dxBarButton13Click(Sender: TObject);
begin
  FiltercxGrid4ListID(cxGrid1DBBandedTableView1);
end;

procedure TfmFactRepairPrice.dxBarButton14Click(Sender: TObject);
begin
  cxGrid1DBBandedTableView1.Filtering.ColumnFilteredItemsList := not dxBarButton14.Down;
end;

procedure TfmFactRepairPrice.dxBarButton15Click(Sender: TObject);
begin
  Screen.Cursor := crHourglass;

  if TControl(Sender).Tag = 1 then
    Fdate1 := IncMonth(Fdate1, -1);

  if TControl(Sender).Tag = 2 then
    Fdate1 := IncMonth(Fdate1, 1);

  Fdate2 := IncMonth(Fdate1, 1) - 1;
  dxBarSubItem2.Caption := FormatDateTime('mmmm yyyy', Fdate1);

  Query_Fact_Repair_Price.Close;
  Query_Fact_Repair_Price.Parameters.ParamByName('Fdate1').Value := Fdate1;
  Query_Fact_Repair_Price.Parameters.ParamByName('Fdate2').Value := Fdate2;
  Query_Fact_Repair_Price.Open;

  Screen.Cursor := crDefault;
end;

procedure TfmFactRepairPrice.dxBarButton16Click(Sender: TObject);
begin
  Screen.Cursor := crHourglass;

  if TControl(Sender).Tag = 1 then
    Fdate1 := IncMonth(Fdate1, -1);

  if TControl(Sender).Tag = 2 then
    Fdate1 := IncMonth(Fdate1, 1);

  Fdate2 := IncMonth(Fdate1, 1) - 1;
  dxBarSubItem2.Caption := FormatDateTime('mmmm yyyy', Fdate1);

  Query_Fact_Repair_Price.Close;
  Query_Fact_Repair_Price.Parameters.ParamByName('Fdate1').Value := Fdate1;
  Query_Fact_Repair_Price.Parameters.ParamByName('Fdate2').Value := Fdate2;
  Query_Fact_Repair_Price.Open;

  Screen.Cursor := crDefault;
end;

procedure TfmFactRepairPrice.dxBarButton17Click(Sender: TObject);
begin
  fmPeriod := TfmPeriod.Create(Application, Fdate1, Fdate1, 3);
  if fmPeriod.ShowModal = mrOk then begin
    Fdate1 := fmPeriod._GetMonth;
    Fdate2 := IncMonth(Fdate1, 1)-1;
    dxBarSubItem2.Caption := FormatDateTime('mmmm yyyy', Fdate1);
    Query_Fact_Repair_Price.Close;
    Query_Fact_Repair_Price.Parameters.ParamByName('Fdate1').Value := Fdate1;
    Query_Fact_Repair_Price.Parameters.ParamByName('Fdate2').Value := Fdate2;
    Query_Fact_Repair_Price.Open;
  end;
end;

procedure TfmFactRepairPrice.dxBarButton18Click(Sender: TObject);
begin
  fmPeriod := TfmPeriod.Create(Application, Fdate1, Fdate2,TComponent(Sender).Tag);
  if fmPeriod.ShowModal = mrOK then begin
    Fdate1 := fmPeriod._GetDateBegin;
    Fdate2 := fmPeriod._GetDateEnd;
    dxBarSubItem2.Caption := PeriodToStr(Fdate1, Fdate2, True);
    Query_Fact_Repair_Price.Close;
    Query_Fact_Repair_Price.Parameters.ParamByName('Fdate1').Value := Fdate1;
    Query_Fact_Repair_Price.Parameters.ParamByName('Fdate2').Value := Fdate2;
    Query_Fact_Repair_Price.Open;
  end;
end;

procedure TfmFactRepairPrice.dxBarButton1Click(Sender: TObject);
begin
  fmFactRepairPriceAdd := TfmFactRepairPriceAdd.Create(Application, 0, Connect_Fact_Repair_Price);
  if fmFactRepairPriceAdd.ShowModal = mrOk then RefreshQueryGrid(cxGrid1DBBandedTableView1, 'fact_repair_price_id', fmFactRepairPriceAdd._GetFactRepairPriceId);
end;

procedure TfmFactRepairPrice.dxBarButton2Click(Sender: TObject);
begin
  if cxGrid1DBBandedTableView1.Controller.SelectedRowCount <> 0 then begin
    fmFactRepairPriceAdd := TfmFactRepairPriceAdd.Create(Application, 1, Connect_Fact_Repair_Price);
    fmFactRepairPriceAdd._SetUpdate := cxGrid1DBBandedTableView1fact_repair_price_id.DataBinding.Field.AsInteger;
    if fmFactRepairPriceAdd.ShowModal = mrOK then
      RefreshQueryGrid(cxGrid1DBBandedTableView1, 'fact_repair_price_id', fmFactRepairPriceAdd._GetFactRepairPriceId);
  end;
end;

procedure TfmFactRepairPrice.dxBarButton3Click(Sender: TObject);
var                           i : integer;
    SP_fact_repair_price_modify : TADOStoredProc;
begin
  //удалить запись(-и)
  if Application.MessageBox(PChar('ВЫ ТОЧНО УВЕРЕНЫ, ЧТО ХОТИТЕ УДАЛИТЬ СТРОКУ(-И)?'), 'ВНИМАНИЕ', MB_OKCANCEL) = ID_OK then begin
    Screen.Cursor := -11;
    SP_fact_repair_price_modify := TADOStoredProc.Create(nil);
    SP_fact_repair_price_modify.Connection := Connect_Fact_Repair_Price;
    SP_fact_repair_price_modify.ProcedureName := 'sp_fact_repair_price_modify';

    for i := 0 to cxGrid1DBBandedTableView1.Controller.SelectedRowCount - 1 do
    begin
      ShowTextMessage('Осталось ' + IntToStr(cxGrid1DBBandedTableView1.Controller.SelectedRowCount - i) + ' записей...', False);

      SP_fact_repair_price_modify.Parameters.Refresh;
      SP_fact_repair_price_modify.Parameters.ParamByName('@fact_repair_price_id').Value := cxGrid1DBBandedTableView1.Controller.SelectedRows[i].Values[cxGrid1DBBandedTableView1fact_repair_price_id.Index];
      SP_fact_repair_price_modify.Parameters.ParamByName('@type_action'         ).Value := 2;
      SP_fact_repair_price_modify.ExecProc;
    end;
    SP_fact_repair_price_modify.Free;

    ShowTextMessage('Обновление данных', False);
    RefreshQueryGrid(cxGrid1DBBandedTableView1, 'fact_repair_price_id');
    ShowTextMessage;
    Screen.Cursor := crDefault;
  end;
end;

procedure TfmFactRepairPrice.dxBarButton4Click(Sender: TObject);
begin
  RefreshQueryGrid(cxGrid1DBBandedTableView1, 'fact_repair_price_id', cxGrid1DBBandedTableView1fact_repair_price_id.DataBinding.Field.AsInteger);
end;

procedure TfmFactRepairPrice.dxBarButton8Click(Sender: TObject);
begin
  PrintcxGrid(cxGrid1DBBandedTableView1);
end;

procedure TfmFactRepairPrice.dxBarButton9Click(Sender: TObject);
begin
  SetdxDBGridColumns(cxGrid1DBBandedTableView1);
end;

procedure TfmFactRepairPrice.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TfmFactRepairPrice.FormDestroy(Sender: TObject);
begin
  StoreRegistryDate(rgSave, '\Software\Lis1\DateTime\FactRepairPrice', Fdate1, Fdate2);
  StoreRegistryGrid(rgSave, '\Software\Lis1\FactRepairPrice_Grids', cxGrid1DBBandedTableView1);
end;

end.
