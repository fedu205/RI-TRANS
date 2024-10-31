unit InvoiceScoreReserve;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel,
  dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
  dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMetropolis, dxSkinMetropolisDark, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013DarkGray,
  dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinPumpkin, dxSkinSeven,
  dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus, dxSkinSilver,
  dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008, dxSkinTheAsphaltWorld,
  dxSkinsDefaultPainters, dxSkinValentine, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue, dxSkinsdxBarPainter, dxBar, cxClasses, cxGraphics,
  cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxSplitter, ExtCtrls,
  dxSkinscxPCPainter, dxBarBuiltInMenu, cxPC, cxStyles, cxCustomData, cxFilter,
  cxData, cxDataStorage, cxEdit, cxNavigator, DB, cxDBData, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridBandedTableView,
  cxGridDBBandedTableView, cxGridLevel, cxGrid, ADODB, Raznoe, cxGridDBTableView,
  cxCurrencyEdit, dxDateRanges, cxDataControllerConditionalFormattingRulesManagerDialog,
  Default, cxCalendar, cxCheckBox, system.DateUtils, Other, dxSkinOffice2016Colorful, dxSkinOffice2016Dark, dxSkinTheBezier,
  dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark, dxSkinVisualStudio2013Light, dxSkinOffice2019Colorful, dxScrollbarAnnotations;

type
  TfmInvoiceScoreReserve = class(TForm)
    dxBarManager1: TdxBarManager;
    dxBarManager1Bar1: TdxBar;
    dxBarButton1: TdxBarButton;
    dxBarButton2: TdxBarButton;
    dxBarButton3: TdxBarButton;
    dxBarButton4: TdxBarButton;
    dxBarSubItem2: TdxBarSubItem;
    dxBarButton5: TdxBarButton;
    dxBarButton6: TdxBarButton;
    dxBarButton8: TdxBarButton;
    dxBarButton9: TdxBarButton;
    Panel2: TPanel;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    cxGrid1DBBandedTableView1: TcxGridDBBandedTableView;
    dxBarPopupMenu1: TdxBarPopupMenu;
    dxBarButton10: TdxBarButton;
    dxBarSubItem3: TdxBarSubItem;
    dxBarButton13: TdxBarButton;
    dxBarButton14: TdxBarButton;
    dxBarButton7: TdxBarButton;
    Query_InvoiceScore: TADOQuery;
    DS_InvoiceScore: TDataSource;
    cxGrid1DBBandedTableView1invoice_score_reserve_id: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1score_cod: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1type_invoice_score: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1score_date: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1date_enter: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1comment: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1set_reserve: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1invoice_score_id: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1FIO_users: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1users_group_id: TcxGridDBBandedColumn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure dxBarButton1Click(Sender: TObject);
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
    procedure dxBarButton10Click(Sender: TObject);
    procedure dxBarButton13Click(Sender: TObject);
    procedure dxBarButton14Click(Sender: TObject);
    procedure dxBarButton4Click(Sender: TObject);
    procedure dxBarButton2Click(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure dxBarButton7Click(Sender: TObject);
    procedure dxBarButton8Click(Sender: TObject);
    procedure dxBarButton9Click(Sender: TObject);
    procedure dxBarButton5Click(Sender: TObject);
    procedure dxBarButton3Click(Sender: TObject);
  private
    Fdate1 : TDateTime;
    Fdate2 : TDateTime;
    Finvoice_score_id : integer;
    Fscore_cod : string;
    Fscore_date : TDate;

    Fflag : boolean;

    FCnn : TADOConnection;

    procedure SetConnection(Acnn : TADOConnection);
    procedure SetDate(d : TDate);
  public
    constructor Create(AOwner: TApplication; flag: boolean); reintroduce;
  published
    property _SetConnection     : TADOConnection write SetConnection;
    property _SetDate           : TDate   write SetDate;
    property _GetInvoiceScoreID : integer read Finvoice_score_id;
    property _GetScoreCod       : string  read Fscore_cod;
    property _GetScoreDate      : TDate   read Fscore_date;
  end;

var
  fmInvoiceScoreReserve: TfmInvoiceScoreReserve;

implementation

uses main, Period, InvoiceScoreReserveAdd;

{$R *.dfm}

constructor TfmInvoiceScoreReserve.Create(AOwner: TApplication; flag: boolean);
begin
  Screen.Cursor := crHourglass;
  inherited Create(AOwner);

  dxBarSubItem2.Caption := StoreRegistryDate(rgLoad, '\Software\Lis1\DateTime\InvoiceScoreReserve', Fdate1, Fdate2);

  Fflag := flag;
  if Fflag then begin
    FormStyle := fsNormal;
    dxBarButton7.Visible := ivAlways;
    cxGrid1DBBandedTableView1.OnDblClick := dxBarButton7Click;
//    Query_InvoiceScore.Parameters.ParamByName('reserve_only').Value := True;
    WindowState := wsMaximized;
  end else begin
    FormStyle := fsMDIChild;
    WindowState := wsMaximized;
  end;

  Query_InvoiceScore.Parameters.ParamByName('date1').Value := Fdate1;
  Query_InvoiceScore.Parameters.ParamByName('date2').Value := Fdate2;

  StoreRegistryGrid(rgLoad, '\Software\Lis1\InvoiceScoreReserve_Grids', cxGrid1DBBandedTableView1);

  MonitorEventFormOpen('OPEN_FORM', self.Name, fmMain.Lis, -9);
  Screen.Cursor := crDefault;
end;

procedure TfmInvoiceScoreReserve.SetConnection(Acnn : TADOConnection);
begin
  FCnn := Acnn;
  Query_InvoiceScore.Connection := FCnn;
  Query_InvoiceScore.Open;
end;

procedure TfmInvoiceScoreReserve.SetDate(d : TDate);
begin
  Screen.Cursor := crHourglass;
  Fdate1 := d;
  Fdate2 := d;
  dxBarSubItem2.Caption := FormatDateTime('dd.mm.yyyy', d);

  Query_InvoiceScore.Close;
  Query_InvoiceScore.Parameters.ParamByName('date1').Value := Fdate1;
  Query_InvoiceScore.Parameters.ParamByName('date2').Value := Fdate2;
  Query_InvoiceScore.Open;

  RefreshQueryGrid(cxGrid1DBBandedTableView1, cxGrid1DBBandedTableView1.DataController.KeyFieldNames);
  Screen.Cursor := crDefault;
end;

procedure TfmInvoiceScoreReserve.cxGrid1DBBandedTableView1CustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
	if AViewInfo.GridRecord.Selected or AViewInfo.GridRecord.Focused then begin
		ACanvas.Brush.Color := clNavy;
		ACanvas.Font.Color := clWhite;
		if AViewInfo.Focused then ACanvas.Brush.Color := clBlue;
	end;

  if (AViewInfo.GridRecord.Values[cxGrid1DBBandedTableView1set_reserve.Index]) then ACanvas.Font.Color := clRed;

end;

procedure TfmInvoiceScoreReserve.cxGrid1DBBandedTableView1CustomDrawColumnHeader(
  Sender: TcxGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridColumnHeaderViewInfo; var ADone: Boolean);
begin
	if AViewInfo.Column.Focused then begin
		ACanvas.Brush.Color := clNavy;
		ACanvas.Font.Color := clWhite;
	end;
end;

procedure TfmInvoiceScoreReserve.cxGrid1DBBandedTableView1FilterOnChanged(Sender: TObject);
begin
	DrawcxGridColumnOnFiltered(Sender);
end;

procedure TfmInvoiceScoreReserve.cxGrid1DBBandedTableView1FocusedItemChanged(
  Sender: TcxCustomGridTableView; APrevFocusedItem,
  AFocusedItem: TcxCustomGridTableItem);
begin
	cxGrid1DBBandedTableView1.Painter.Invalidate;
end;

procedure TfmInvoiceScoreReserve.cxGrid1DBBandedTableView1KeyPress(Sender: TObject;
  var Key: Char);
begin
	FilterColumnGridOnKeyPress(cxGrid1DBBandedTableView1, Key);
end;

procedure TfmInvoiceScoreReserve.dxBarButton10Click(Sender: TObject);
begin
	PrintcxGrid(cxGrid1DBBandedTableView1);
end;

procedure TfmInvoiceScoreReserve.dxBarButton13Click(Sender: TObject);
begin
	SetdxDBGridColumns(cxGrid1DBBandedTableView1);
end;

procedure TfmInvoiceScoreReserve.dxBarButton14Click(Sender: TObject);
begin
	cxGrid1DBBandedTableView1.OptionsView.GroupByBox := not cxGrid1DBBandedTableView1.OptionsView.GroupByBox;
end;

procedure TfmInvoiceScoreReserve.dxBarButton1Click(Sender: TObject);
begin
  fmInvoiceScoreReserveAdd := TfmInvoiceScoreReserveAdd.Create(Application);
  fmInvoiceScoreReserveAdd._SetConnection := FCnn;
  if fmInvoiceScoreReserveAdd.ShowModal = mrOk then begin
    RefreshQueryGrid(cxGrid1DBBandedTableView1, cxGrid1DBBandedTableView1.DataController.KeyFieldNames);
  end;
end;

procedure TfmInvoiceScoreReserve.dxBarButton2Click(Sender: TObject);
begin
  if cxGrid1DBBandedTableView1invoice_score_reserve_id.DataBinding.Field.IsNull then
    exit;

  fmInvoiceScoreReserveAdd := TfmInvoiceScoreReserveAdd.Create(Application);
  fmInvoiceScoreReserveAdd._SetConnection := FCnn;
  fmInvoiceScoreReserveAdd._SetUpdate := cxGrid1DBBandedTableView1invoice_score_reserve_id.DataBinding.Field.AsInteger;
  if fmInvoiceScoreReserveAdd.ShowModal = mrOk then begin
    RefreshQueryGrid(cxGrid1DBBandedTableView1, cxGrid1DBBandedTableView1.DataController.KeyFieldNames);
  end;
end;

procedure TfmInvoiceScoreReserve.dxBarButton3Click(Sender: TObject);
var i : integer;
    SP : TADOStoredProc;
begin
  // Проверка
  for i := 0 to cxGrid1DBBandedTableView1.Controller.SelectedRecordCount - 1 do begin
    if cxGrid1DBBandedTableView1.Controller.SelectedRecords[i].Values[cxGrid1DBBandedTableView1set_reserve.Index] = False then begin
      Application.MessageBox('Нельзя освоюодить номер существующему УПД/СФ', 'Внимание', MB_OK or MB_ICONERROR);
      exit;
    end;
  end;

  // Удаление
  SP := TADOStoredProc.Create(nil);
  SP.Connection := FCnn;
  SP.ProcedureName := 'sp_invoice_score_reserve_modify';
  SP.Parameters.Refresh;

  for i := 0 to cxGrid1DBBandedTableView1.Controller.SelectedRecordCount - 1 do begin
    ShowTextMessage('Осталось строк: ' + IntToStr(cxGrid1DBBandedTableView1.Controller.SelectedRecordCount - i), False);
    SP.Close;
    SP.Parameters.ParamByName('@invoice_score_id' ).Value := cxGrid1DBBandedTableView1.Controller.SelectedRecords[i].Values[cxGrid1DBBandedTableView1invoice_score_reserve_id.Index];
    SP.Parameters.ParamByName('@type_action'      ).Value := 2;
    SP.ExecProc;
  end;
  ShowTextMessage;

  SP.Free;

  RefreshQueryGrid(cxGrid1DBBandedTableView1, cxGrid1DBBandedTableView1.DataController.KeyFieldNames);
end;

procedure TfmInvoiceScoreReserve.dxBarButton4Click(Sender: TObject);
begin
  RefreshQueryGrid(cxGrid1DBBandedTableView1, cxGrid1DBBandedTableView1.DataController.KeyFieldNames);
end;

procedure TfmInvoiceScoreReserve.dxBarButton5Click(Sender: TObject);
begin
  Screen.Cursor := crHourglass;

  if Fdate1 = Fdate2 then begin
    Fdate1 := IncDay(Fdate1, TControl(Sender).Tag);
    Fdate2 := Fdate1;
    dxBarSubItem2.Caption := FormatDateTime('dd.mm.yyyy', Fdate1);
  end else begin
    Fdate1 := StartOfTheMonth(IncMonth(Fdate1, TControl(Sender).Tag));
    Fdate2 := IncMonth(Fdate1, 1) - 1;
    dxBarSubItem2.Caption := FormatDateTime('mmmm yyyy', Fdate1);
  end;

  Query_InvoiceScore.Close;
  Query_InvoiceScore.Parameters.ParamByName('date1').Value := Fdate1;
  Query_InvoiceScore.Parameters.ParamByName('date2').Value := Fdate2;
  Query_InvoiceScore.Open;

  RefreshQueryGrid(cxGrid1DBBandedTableView1, cxGrid1DBBandedTableView1.DataController.KeyFieldNames);
  Screen.Cursor := crDefault;
end;

procedure TfmInvoiceScoreReserve.dxBarButton7Click(Sender: TObject);
begin
  if cxGrid1DBBandedTableView1invoice_score_reserve_id.DataBinding.Field.IsNull then
    exit;
  if cxGrid1DBBandedTableView1set_reserve.DataBinding.Field.AsBoolean = False then begin
    Application.MessageBox('Нельзя выбрать номер существующего УПД/СФ', 'Внимание', MB_OK or MB_ICONERROR);
    exit;
  end;

  Finvoice_score_id := cxGrid1DBBandedTableView1invoice_score_reserve_id.DataBinding.Field.AsInteger;
  Fscore_cod := cxGrid1DBBandedTableView1score_cod.DataBinding.Field.AsString;
  Fscore_date := cxGrid1DBBandedTableView1score_date.DataBinding.Field.AsDateTime;

  ModalResult := mrOk;
end;

procedure TfmInvoiceScoreReserve.dxBarButton8Click(Sender: TObject);
begin
  fmPeriod := TfmPeriod.Create(Application, Fdate1, Fdate2, 3);
  if fmPeriod.ShowModal=mrOK then begin
    Screen.Cursor := crHourglass;
    Fdate1 := fmPeriod._GetMonth;
    Fdate2 := IncMonth(Fdate1, 1) - 1;
    dxBarSubItem2.Caption := FormatDateTime('mmmm yyyy', Fdate1);

    Query_InvoiceScore.Close;
    Query_InvoiceScore.Parameters.ParamByName('date1').Value := Fdate1;
    Query_InvoiceScore.Parameters.ParamByName('date2').Value := Fdate2;
    Query_InvoiceScore.Open;

    RefreshQueryGrid(cxGrid1DBBandedTableView1, cxGrid1DBBandedTableView1.DataController.KeyFieldNames);
    Screen.Cursor := crDefault;
  end;
end;

procedure TfmInvoiceScoreReserve.dxBarButton9Click(Sender: TObject);
begin
  fmPeriod := TfmPeriod.Create(Application, Fdate1, Fdate2, 1);
  if fmPeriod.ShowModal=mrOK then begin
    Screen.Cursor := crHourglass;
    Fdate1 := fmPeriod._GetDateBegin;
    Fdate2 := fmPeriod._GetDateEnd;
    dxBarSubItem2.Caption := FormatDateTime('dd.mm.yy', Fdate1) + ' - ' + FormatDateTime('dd.mm.yy', Fdate2);

    Query_InvoiceScore.Close;
    Query_InvoiceScore.Parameters.ParamByName('date1').Value := Fdate1;
    Query_InvoiceScore.Parameters.ParamByName('date2').Value := Fdate2;
    Query_InvoiceScore.Open;

    RefreshQueryGrid(cxGrid1DBBandedTableView1, cxGrid1DBBandedTableView1.DataController.KeyFieldNames);
    Screen.Cursor := crDefault;
  end;
end;

procedure TfmInvoiceScoreReserve.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TfmInvoiceScoreReserve.FormDestroy(Sender: TObject);
begin
  RestoreGroupedColumns(cxGrid1DBBandedTableView1);
  if not Fflag then begin
    // Сохраняем настройки реестра только если мы не в режиме выбора
    StoreRegistryDate(rgSave, '\Software\Lis1\DateTime\InvoiceScoreReserve', Fdate1, Fdate2);
    StoreRegistryGrid(rgSave,'\Software\Lis1\InvoiceScoreReserve_Grids', cxGrid1DBBandedTableView1);
  end;
end;

end.



