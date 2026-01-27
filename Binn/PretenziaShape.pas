unit PretenziaShape;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ExtCtrls, ComCtrls, ToolWin, Db, ADODB, Variants, DateUtils,
  cxPropertiesStore, cxClasses, cxControls, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridBandedTableView,
  cxGridDBBandedTableView, cxGridLevel, cxGrid, Buttons, Menus, cxGraphics,
  cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, cxDBData,
  cxCalendar, cxCurrencyEdit, cxContainer, cxLabel, cxCheckBox, StrUtils,
  cxLookAndFeelPainters,   cxButtons, cxPC, dxGDIPlusClasses, dxBar,
  cxLookAndFeels, ComObj, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMetropolis, dxSkinMetropolisDark, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue,
  dxSkinOffice2010Silver, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic,
  dxSkinSharp, dxSkinSharpPlus, dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008, dxSkinTheAsphaltWorld, dxSkinsDefaultPainters,
  dxSkinValentine, dxSkinVS2010, dxSkinWhiteprint, dxSkinXmas2008Blue, dxSkinscxPCPainter, cxNavigator, dxSkinsdxBarPainter,
  dxSkinOffice2016Colorful, dxSkinOffice2016Dark, dxSkinVisualStudio2013Blue,
  dxSkinVisualStudio2013Dark, dxSkinVisualStudio2013Light, cxDataControllerConditionalFormattingRulesManagerDialog, dxDateRanges, dxSkinTheBezier,
  dxSkinOffice2019Colorful, dxScrollbarAnnotations, dxSkinBasic,
  dxSkinOffice2019Black, dxSkinOffice2019DarkGray, dxSkinOffice2019White,
  dxSkinWXI, cxColorComboBox;

type
  TfmPretenziaShape = class(TForm)
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    cxGrid1DBBandedTableView1: TcxGridDBBandedTableView;
    cxPropertiesStore1: TcxPropertiesStore;
    Query_PretenziaShape: TADOQuery;
    DS_PretenziaShape: TDataSource;
    cxGrid1DBBandedTableView1pretenzia_shape_id: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1pretenzia_date: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1comment: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1contract_cod: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1type_contract: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1firm_self_name: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1firm_customer_name: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1pretenzia_sum: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1pay_num: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1pretenzia_cod: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1FIO_users: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1global_color: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1contract_id: TcxGridDBBandedColumn;
    dxBarManager1: TdxBarManager;
    dxBarManager1Bar1: TdxBar;
    dxBarSubItem1: TdxBarSubItem;
    dxBarButton2: TdxBarButton;
    dxBarButton3: TdxBarButton;
    Popup_Pay: TdxBarPopupMenu;
    N1: TdxBarButton;
    N2: TdxBarButton;
    N3: TdxBarButton;
    Excel2: TdxBarButton;
    N7: TdxBarButton;
    N8: TdxBarButton;
    N10: TdxBarButton;
    N11: TdxBarButton;
    N4: TdxBarSubItem;
    dxBarButton1: TdxBarButton;
    dxBarButton4: TdxBarButton;
    dxBarButton5: TdxBarButton;
    dxBarSubItem2: TdxBarSubItem;
    dxBarButton_FilterRecords1: TdxBarButton;
    dxBarButton_FilterRecords2: TdxBarButton;
    dxBarButton12: TdxBarButton;
    dxBarButton13: TdxBarButton;
    cxGrid1DBBandedTableView1date_enter: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1firm_self: TcxGridDBBandedColumn;
    dxBarButton14: TdxBarButton;
    dxBarSubItem4: TdxBarSubItem;
    GroupBox1: TGroupBox;
    Splitter2: TSplitter;
    cxGrid2: TcxGrid;
    cxGrid2DBBandedTableView1: TcxGridDBBandedTableView;
    cxGrid2Level1: TcxGridLevel;
    dxBarButton6: TdxBarButton;
    dxBarButton7: TdxBarButton;
    Query_Fact: TADOQuery;
    DS_Fact: TDataSource;
    cxGrid2DBBandedTableView1pretenzia_shape_fact_id: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1fact_id: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1pretenzia_shape_id: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1node_begin_name: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1num_document: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1date_otpr1: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1date_pr1: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1date_otpr2: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1date_foreign_otpr: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1date_foreign_pr: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1num_document_empty: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1num_vagon: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1node_end_name: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1num_document_load: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1days_count: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1days_norm: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1days_count_hold: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1hold_rete: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1hold_sum: TcxGridDBBandedColumn;
    dxBarPopupMenu1: TdxBarPopupMenu;
    dxBarButton21: TdxBarButton;
    dxBarSubItem5: TdxBarSubItem;
    dxBarButton22: TdxBarButton;
    dxBarButton23: TdxBarButton;
    dxBarButton8: TdxBarButton;
    procedure dxBarButton2Click(Sender: TObject);
    procedure cxGrid1DBBandedTableView1KeyPress(Sender: TObject; var Key: Char);
    procedure cxGrid1DBBandedTableView1FocusedItemChanged(Sender: TcxCustomGridTableView; APrevFocusedItem, AFocusedItem: TcxCustomGridTableItem);
    procedure cxGrid1DBBandedTableView1CustomDrawColumnHeader(Sender: TcxGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxGridColumnHeaderViewInfo; var ADone: Boolean);
    procedure cxGrid1DBBandedTableView1DataControllerFilterChanged( Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure N3Click(Sender: TObject);
    procedure N1Click(Sender: TObject);
    procedure N2Click(Sender: TObject);
    procedure N10Click(Sender: TObject);
    procedure cxGrid1DBBandedTableView1CustomDrawCell(Sender: TcxCustomGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
    procedure N7Click(Sender: TObject);
    procedure N11Click(Sender: TObject);
    procedure ToolButton16Click(Sender: TObject);
    procedure Excel1Click(Sender: TObject);
    procedure dxBarButton_FilterRecords1Click(Sender: TObject);
    procedure dxBarButton13Click(Sender: TObject);
    procedure dxBarButton14Click(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure dxBarButton21Click(Sender: TObject);
    procedure dxBarButton22Click(Sender: TObject);
    procedure dxBarButton23Click(Sender: TObject);
    procedure cxGrid2DBBandedTableView1FilterOnChanged(Sender: TObject);
    procedure cxGrid2DBBandedTableView1CustomDrawCell(
      Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
      AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
    procedure cxGrid2DBBandedTableView1CustomDrawColumnHeader(
      Sender: TcxGridTableView; ACanvas: TcxCanvas;
      AViewInfo: TcxGridColumnHeaderViewInfo; var ADone: Boolean);
    procedure cxGrid2DBBandedTableView1FocusedItemChanged(
      Sender: TcxCustomGridTableView; APrevFocusedItem,
      AFocusedItem: TcxCustomGridTableItem);
    procedure cxGrid2DBBandedTableView1KeyPress(Sender: TObject; var Key: Char);
    procedure cxGrid1DBBandedTableView1SelectionChanged(
      Sender: TcxCustomGridTableView);
    procedure dxBarButton8Click(Sender: TObject);
    procedure dxBarButton6Click(Sender: TObject);
    procedure dxBarButton7Click(Sender: TObject);
  private
    Fdate1, Fdate2 : TDateTime;
    Fpretenzia_shape_id     : integer;

  public
    constructor Create(AOwner : Tapplication; flag: boolean);

  end;

var
  fmPretenziaShape: TfmPretenziaShape;

implementation
   uses Main, Period, Raznoe, PretenziaShapeAdd, Other, cxGridDBDataDefinitions, Default, Filter;
{$R *.DFM}




constructor TfmPretenziaShape.Create(AOwner: Tapplication; flag: boolean);
begin
  Screen.Cursor := crHourglass;
  inherited Create(AOwner);

  dxBarSubItem1.Caption := StoreRegistryDate(rgLoad, '\Software\Lis1\DateTime\PretenziaShape', Fdate1, Fdate2);

  Query_PretenziaShape.Parameters.ParamByName('date1').Value := Fdate1;
  Query_PretenziaShape.Parameters.ParamByName('date2').Value := Fdate2;
  Query_PretenziaShape.Open;

  cxGrid1DBBandedTableView1SelectionChanged(nil);

  if flag then begin
    FormStyle := fsNormal;
    dxBarButton4.Visible := ivAlways;
  end else begin
    FormStyle := fsMDIChild;
    WindowState := wsMaximized;
  end;

  StoreRegistryGrid(rgLoad,'\Software\Lis1\PretenziaShape_Grids', cxGrid1DBBandedTableView1);
  StoreRegistryGrid(rgLoad,'\Software\Lis1\PretenziaShape_Grids', cxGrid2DBBandedTableView1);

  SetUsersModuleRights(self, fmMain.Lis);
  MonitorEventFormOpen('OPEN_FORM', self.Name, fmMain.Lis, -9);

  Screen.Cursor := crDefault;
end;


procedure TfmPretenziaShape.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TfmPretenziaShape.FormDestroy(Sender: TObject);
begin
  StoreRegistryDate(rgSave, '\Software\Lis1\DateTime\PretenziaShape', Fdate1, Fdate2);
  StoreRegistryGrid(rgSave, '\Software\Lis1\PretenziaShape_Grids', cxGrid1DBBandedTableView1);
  StoreRegistryGrid(rgSave, '\Software\Lis1\PretenziaShape_Grids', cxGrid2DBBandedTableView1);
end;

procedure TfmPretenziaShape.N1Click(Sender: TObject);
begin
  fmPretenziaShapeAdd := TfmPretenziaShapeAdd.Create(Application, True);
  fmPretenziaShapeAdd._SetInsert;
  if fmPretenziaShapeAdd.ShowModal = mrOk then
    RefreshQueryGrid(cxGrid1DBBandedTableView1, 'pretenzia_shape_id', fmPretenziaShapeAdd._GetPretenziaShapeId);
end;

procedure TfmPretenziaShape.N2Click(Sender: TObject);
begin
  fmPretenziaShapeAdd := TfmPretenziaShapeAdd.Create(Application, False);
  fmPretenziaShapeAdd._SetUpdate := cxGrid1DBBandedTableView1.GetColumnByFieldName('pretenzia_shape_id').DataBinding.Field.AsInteger;
  if fmPretenziaShapeAdd.ShowModal = mrOk then
    RefreshQueryGrid(cxGrid1DBBandedTableView1, 'pretenzia_shape_id');
end;

procedure TfmPretenziaShape.N3Click(Sender: TObject);
var          i : integer;
  SP : TADOStoredProc;
begin
  if Application.MessageBox('Вы уверены, что хотите удалить претензию?', 'Внимание', MB_OKCANCEL) = IDOK then begin
    Screen.Cursor := crHourglass;

    SP := TADOStoredProc.Create(nil);
    SP.Connection := fmMain.Lis;
    SP.ProcedureName := 'sp_pretenzia_shape_modify;1';
    SP.Parameters.Refresh;

    for i := 0 to cxGrid1DBBandedTableView1.Controller.SelectedRowCount - 1 do begin
      SP.Close;
      SP.Parameters.ParamByName('@type_action').Value := 2;
      SP.Parameters.ParamByName('@pretenzia_shape_id').Value := cxGrid1DBBandedTableView1.Controller.SelectedRows[i].Values[cxGrid1DBBandedTableView1.GetColumnByFieldName('pretenzia_shape_id').Index];
      try
        SP.ExecProc;
      except
      end;

      ShowTextMessage('Осталось '+IntToStr(cxGrid1DBBandedTableView1.Controller.SelectedRowCount - i)+' строк...', False);
    end;
    RefreshQueryGrid(cxGrid1DBBandedTableView1, 'pretenzia_shape_id');
    SP.Free;

    ShowTextMessage;
    
    Screen.Cursor := crDefault;
  end;
end;

procedure TfmPretenziaShape.N10Click(Sender: TObject);
begin
  case TdxBarButton(Sender).ClickItemLink.Owner.Owner.Tag of
    1 : SetdxDBGridColumns(cxGrid1DBBandedTableView1);
    3 : SetdxDBGridColumns(cxGrid1DBBandedTableView1);
  end;
end;

procedure TfmPretenziaShape.cxGrid1DBBandedTableView1CustomDrawCell(Sender: TcxCustomGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
  if (AViewInfo.GridRecord.Values[cxGrid1DBBandedTableView1.GetColumnByFieldName('global_color').Index]<>NULL) then
    ACanvas.Brush.Color := AViewInfo.GridRecord.Values[cxGrid1DBBandedTableView1.GetColumnByFieldName('global_color').Index];

  if AViewInfo.GridRecord.Selected then begin
    ACanvas.Brush.Color := clNavy;
    ACanvas.Font.Color := clWhite;
    if AViewInfo.Focused then ACanvas.Brush.Color := clBlue;
  end;
end;

procedure TfmPretenziaShape.cxGrid1DBBandedTableView1CustomDrawColumnHeader(Sender: TcxGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxGridColumnHeaderViewInfo; var ADone: Boolean);
begin
  DrawcxGridColumnOnFocused(Sender, ACanvas, AViewInfo);
end;

procedure TfmPretenziaShape.cxGrid1DBBandedTableView1DataControllerFilterChanged(Sender: TObject);
begin
  DrawcxGridColumnOnFiltered(Sender);
end;

procedure TfmPretenziaShape.cxGrid1DBBandedTableView1FocusedItemChanged(Sender: TcxCustomGridTableView; APrevFocusedItem, AFocusedItem: TcxCustomGridTableItem);
begin
  Sender.Painter.Invalidate;
end;

procedure TfmPretenziaShape.cxGrid1DBBandedTableView1KeyPress(Sender: TObject; var Key: Char);
begin
  FilterColumnGridOnKeyPress(TcxGridDBBandedTableView(TcxGridSite(Sender).GridView), Key);
end;

procedure TfmPretenziaShape.cxGrid1DBBandedTableView1SelectionChanged( Sender: TcxCustomGridTableView);
begin
  Query_Fact.Close;
  if cxGrid1DBBandedTableView1pretenzia_shape_id.DataBinding.Field <> nil then
      if cxGrid1DBBandedTableView1pretenzia_shape_id.DataBinding.Field.Value <> null then begin
        Query_Fact.Parameters.ParamByName('pretenzia_shape_id').Value := cxGrid1DBBandedTableView1pretenzia_shape_id.DataBinding.Field.Value;
        Query_Fact.Open;
      end;

end;

procedure TfmPretenziaShape.cxGrid2DBBandedTableView1CustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
	if AViewInfo.GridRecord.Selected or AViewInfo.GridRecord.Focused then begin
		ACanvas.Brush.Color := clNavy;
		ACanvas.Font.Color := clWhite;
		if AViewInfo.Focused then ACanvas.Brush.Color := clBlue;
	end;
end;

procedure TfmPretenziaShape.cxGrid2DBBandedTableView1CustomDrawColumnHeader(
  Sender: TcxGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridColumnHeaderViewInfo; var ADone: Boolean);
begin
  DrawcxGridColumnOnFocused(Sender, ACanvas, AViewInfo);
end;

procedure TfmPretenziaShape.cxGrid2DBBandedTableView1FilterOnChanged(
  Sender: TObject);
begin
	DrawcxGridColumnOnFiltered(cxGrid2DBBandedTableView1);
end;

procedure TfmPretenziaShape.cxGrid2DBBandedTableView1FocusedItemChanged(
  Sender: TcxCustomGridTableView; APrevFocusedItem,
  AFocusedItem: TcxCustomGridTableItem);
begin
	cxGrid2DBBandedTableView1.Painter.Invalidate;
end;

procedure TfmPretenziaShape.cxGrid2DBBandedTableView1KeyPress(Sender: TObject;
  var Key: Char);
begin
	FilterColumnGridOnKeyPress(cxGrid2DBBandedTableView1, Key);
end;

procedure TfmPretenziaShape.dxBarButton13Click(Sender: TObject);
begin
  Screen.Cursor := crHourglass;
  if TControl(Sender).Tag = 1 then begin
    Fdate1 := IncMonth(Fdate1, -1);
  end;

  if TControl(Sender).Tag = 2 then begin
    Fdate1 := IncMonth(Fdate1, 1);
  end;

  Fdate2 := IncMonth(Fdate1, 1) - 1;

  dxBarSubItem1.Caption := FormatDateTime('mmm yy', Fdate1) + ' - ' + FormatDateTime('mmm yy', Fdate2);

  Query_PretenziaShape.Close;
  Query_PretenziaShape.Parameters.ParamByName('date1').Value := Fdate1;
  Query_PretenziaShape.Parameters.ParamByName('date2').Value := Fdate2;
  Query_PretenziaShape.Open;

  Screen.Cursor := crDefault;
end;

procedure TfmPretenziaShape.dxBarButton14Click(Sender: TObject);
var exWks, exApp  : Variant;
    count_str     : integer;
    OpenDialog1   : TOpenDialog;
    file_name     : string;
    SP            : TADOStoredProc;
    Q             : TADOQuery;
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
    SP.ProcedureName := 'sp_pretenzia_shape_fact_modify';
    SP.Parameters.Refresh;
    count_str := 9;
    while not (TVarData(exWks.Cells[count_str,6].Value).VType = varEmpty) do begin
      ShowTextMessage('Обработано '+IntToStr(count_str - 10)+' вагонов...', False);

      SP.Parameters.ParamByName('@pretenzia_shape_fact_id' ).Value := null;
      SP.Parameters.ParamByName('@type_action'             ).Value := 0;
      SP.Parameters.ParamByName('@pretenzia_shape_id'      ).Value := cxGrid1DBBandedTableView1pretenzia_shape_id.DataBinding.Field.AsInteger;
      SP.Parameters.ParamByName('@fact_id'                 ).Value := null;
      SP.Parameters.ParamByName('@node_begin_name'         ).Value := exWks.Range['A' + IntToStr(count_str)].Value;
      SP.Parameters.ParamByName('@num_document'            ).Value := exWks.Range['B' + IntToStr(count_str)].Value;
      SP.Parameters.ParamByName('@date_otpr1'              ).Value := exWks.Range['C' + IntToStr(count_str)].Value;
      SP.Parameters.ParamByName('@date_pr1'                ).Value := exWks.Range['D' + IntToStr(count_str)].Value;
      SP.Parameters.ParamByName('@date_otpr2'              ).Value := exWks.Range['E' + IntToStr(count_str)].Value;
      SP.Parameters.ParamByName('@date_foreign_otpr'       ).Value := null;
      SP.Parameters.ParamByName('@date_foreign_pr'         ).Value := null;
      SP.Parameters.ParamByName('@num_document_empty'      ).Value := exWks.Range['H' + IntToStr(count_str)].Value;
      SP.Parameters.ParamByName('@num_vagon'               ).Value := exWks.Range['F' + IntToStr(count_str)].Value;
      SP.Parameters.ParamByName('@node_end_name'           ).Value := exWks.Range['G' + IntToStr(count_str)].Value;
      SP.Parameters.ParamByName('@num_document_load'       ).Value := null;
      SP.Parameters.ParamByName('@days_count'              ).Value := exWks.Range['I' + IntToStr(count_str)].Value;
      SP.Parameters.ParamByName('@days_norm'               ).Value := exWks.Range['J' + IntToStr(count_str)].Value;
      SP.Parameters.ParamByName('@days_count_hold'         ).Value := exWks.Range['K' + IntToStr(count_str)].Value;
      SP.Parameters.ParamByName('@hold_rete'               ).Value := exWks.Range['L' + IntToStr(count_str)].Value;
      SP.Parameters.ParamByName('@hold_sum'                ).Value := exWks.Range['M' + IntToStr(count_str)].Value;

      try
        SP.ExecProc;
      except
        on E: Exception do
          Application.MessageBox(PChar(E.Message), 'Внимание', MB_OK);
      end;

//      Станция отправления предыдущего рейса
//      № накладной предыдущего рейса
//      Дата отправления порожнего рейса на станции погрузки
//      Дата прибытия на ст. погрузки
//      Дата отправления со ст. погрузки
//      Номер вагона
//      Станция погрузки
//      Накладная груженого рейса
//      Количество суток простоя на станции погрузки
//      Норматив суток простоя
//      Количество суток сверхнормативного простоя на станции погрузки
//      Стоимость простоя за сутки , руб/ваг.
//      Итого сумма




      count_str := count_str + 1;
    end;
    ShowTextMessage;

  finally
    exApp.Quit;
    exWks := null;
    exWks := null;
  end;

  RefreshQueryGrid(cxGrid1DBBandedTableView1, 'pretenzia_shape_id');
end;

procedure TfmPretenziaShape.dxBarButton21Click(Sender: TObject);
begin
	PrintcxGrid(cxGrid2DBBandedTableView1);
end;

procedure TfmPretenziaShape.dxBarButton22Click(Sender: TObject);
begin
	SetdxDBGridColumns(cxGrid2DBBandedTableView1);
end;

procedure TfmPretenziaShape.dxBarButton23Click(Sender: TObject);
begin
	cxGrid2DBBandedTableView1.OptionsView.GroupByBox := not cxGrid2DBBandedTableView1.OptionsView.GroupByBox;
end;

procedure TfmPretenziaShape.dxBarButton2Click(Sender: TObject);
begin
  fmPeriod := TfmPeriod.Create(Application, Fdate1, Fdate2, TComponent(Sender).Tag);
  if fmPeriod.ShowModal=mrOK then begin
    Screen.Cursor := crHourglass;
    case TComponent(Sender).Tag of
      3 : begin
            Fdate1 := fmPeriod._GetMonth;
            Fdate2 := IncMonth(Fdate1, 1) - 1;
            dxBarSubItem1.Caption := FormatDateTime('mmmm yyyy', Fdate1);
          end;
      2 : begin
            Fdate1 := fmPeriod._GetMonthBegin;
            Fdate2 := fmPeriod._GetMonthEnd;
            dxBarSubItem1.Caption := FormatDateTime('mmm yy', Fdate1) + ' - ' + FormatDateTime('mmm yy', Fdate2);
         end;
    end;

    Query_PretenziaShape.Close;
    Query_PretenziaShape.Parameters.ParamByName('date1').Value := Fdate1;
    Query_PretenziaShape.Parameters.ParamByName('date2').Value := Fdate2;
    Query_PretenziaShape.Open;

    Screen.Cursor := crDefault;
  end;
end;

procedure TfmPretenziaShape.dxBarButton6Click(Sender: TObject);
var exWks, exApp  : Variant;
    count_str     : integer;
    OpenDialog1   : TOpenDialog;
    file_name     : string;
    SP            : TADOStoredProc;
    Q             : TADOQuery;
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
    SP.ProcedureName := 'sp_pretenzia_shape_fact_modify';
    SP.Parameters.Refresh;
    count_str := 9;
    while not (TVarData(exWks.Cells[count_str,6].Value).VType = varEmpty) do begin
      ShowTextMessage('Обработано '+IntToStr(count_str - 10)+' вагонов...', False);

      SP.Parameters.ParamByName('@pretenzia_shape_fact_id' ).Value := null;
      SP.Parameters.ParamByName('@type_action'             ).Value := 0;
      SP.Parameters.ParamByName('@pretenzia_shape_id'      ).Value := cxGrid1DBBandedTableView1pretenzia_shape_id.DataBinding.Field.AsInteger;
      SP.Parameters.ParamByName('@fact_id'                 ).Value := null;
      SP.Parameters.ParamByName('@node_begin_name'         ).Value := exWks.Range['A' + IntToStr(count_str)].Value;
      SP.Parameters.ParamByName('@num_document'            ).Value := exWks.Range['B' + IntToStr(count_str)].Value;
      SP.Parameters.ParamByName('@date_otpr1'              ).Value := exWks.Range['C' + IntToStr(count_str)].Value;
      SP.Parameters.ParamByName('@date_pr1'                ).Value := exWks.Range['D' + IntToStr(count_str)].Value;
      SP.Parameters.ParamByName('@date_otpr2'              ).Value := exWks.Range['E' + IntToStr(count_str)].Value;
      SP.Parameters.ParamByName('@date_foreign_otpr'       ).Value := null;
      SP.Parameters.ParamByName('@date_foreign_pr'         ).Value := null;
      SP.Parameters.ParamByName('@num_document_empty'      ).Value := exWks.Range['F' + IntToStr(count_str)].Value;
      SP.Parameters.ParamByName('@num_vagon'               ).Value := exWks.Range['G' + IntToStr(count_str)].Value;
      SP.Parameters.ParamByName('@node_end_name'           ).Value := exWks.Range['H' + IntToStr(count_str)].Value;
      SP.Parameters.ParamByName('@num_document_load'       ).Value := null;
      SP.Parameters.ParamByName('@days_count'              ).Value := exWks.Range['I' + IntToStr(count_str)].Value;
      SP.Parameters.ParamByName('@days_norm'               ).Value := exWks.Range['J' + IntToStr(count_str)].Value;
      SP.Parameters.ParamByName('@days_count_hold'         ).Value := exWks.Range['K' + IntToStr(count_str)].Value;
      SP.Parameters.ParamByName('@hold_rete'               ).Value := exWks.Range['L' + IntToStr(count_str)].Value;
      SP.Parameters.ParamByName('@hold_sum'                ).Value := exWks.Range['M' + IntToStr(count_str)].Value;

      try
        SP.ExecProc;
      except
        on E: Exception do
          Application.MessageBox(PChar(E.Message), 'Внимание', MB_OK);
      end;

//      Станция отправления
//      № накладной
//      Дата отправления со ст. погрузки
//      Дата прибытия на ст. выгрузки
//      Дата отправления со ст. выгрузки
//      Накладная на порожний рейс
//      Номер вагона
//      Станция выгрузки(простоя)
//      Количество суток простоя на станции выгрузки
//      Норматив суток простоя
//      Количество суток сверхнормативного простоя на станции выгрузки
//      Стоимость простоя за сутки , руб/ваг.
//      Итого сумма




      count_str := count_str + 1;
    end;
    ShowTextMessage;

  finally
    exApp.Quit;
    exWks := null;
    exWks := null;
  end;

  RefreshQueryGrid(cxGrid1DBBandedTableView1, 'pretenzia_shape_id');
end;

procedure TfmPretenziaShape.dxBarButton7Click(Sender: TObject);
var exWks, exApp  : Variant;
    count_str     : integer;
    OpenDialog1   : TOpenDialog;
    file_name     : string;
    SP            : TADOStoredProc;
    Q             : TADOQuery;
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
    SP.ProcedureName := 'sp_pretenzia_shape_fact_modify';
    SP.Parameters.Refresh;
    count_str := 8;
    while not (TVarData(exWks.Cells[count_str,8].Value).VType = varEmpty) do begin
      ShowTextMessage('Обработано '+IntToStr(count_str - 10)+' вагонов...', False);

      SP.Parameters.ParamByName('@pretenzia_shape_fact_id' ).Value := null;
      SP.Parameters.ParamByName('@type_action'             ).Value := 0;
      SP.Parameters.ParamByName('@pretenzia_shape_id'      ).Value := cxGrid1DBBandedTableView1pretenzia_shape_id.DataBinding.Field.AsInteger;
      SP.Parameters.ParamByName('@fact_id'                 ).Value := null;
      SP.Parameters.ParamByName('@node_begin_name'         ).Value := exWks.Range['A' + IntToStr(count_str)].Value;
      SP.Parameters.ParamByName('@num_document'            ).Value := exWks.Range['B' + IntToStr(count_str)].Value;
      SP.Parameters.ParamByName('@date_otpr1'              ).Value := exWks.Range['C' + IntToStr(count_str)].Value;
      SP.Parameters.ParamByName('@date_pr1'                ).Value := exWks.Range['E' + IntToStr(count_str)].Value;
      SP.Parameters.ParamByName('@date_otpr2'              ).Value := exWks.Range['F' + IntToStr(count_str)].Value;
      SP.Parameters.ParamByName('@date_foreign_otpr'       ).Value := exWks.Range['D' + IntToStr(count_str)].Value;
      SP.Parameters.ParamByName('@date_foreign_pr'         ).Value := exWks.Range['G' + IntToStr(count_str)].Value;
      SP.Parameters.ParamByName('@num_document_empty'      ).Value := exWks.Range['H' + IntToStr(count_str)].Value;
      SP.Parameters.ParamByName('@num_vagon'               ).Value := exWks.Range['I' + IntToStr(count_str)].Value;
      SP.Parameters.ParamByName('@node_end_name'           ).Value := exWks.Range['J' + IntToStr(count_str)].Value;
      SP.Parameters.ParamByName('@num_document_load'       ).Value := null;
      SP.Parameters.ParamByName('@days_count'              ).Value := exWks.Range['K' + IntToStr(count_str)].Value;
      SP.Parameters.ParamByName('@days_norm'               ).Value := exWks.Range['L' + IntToStr(count_str)].Value;
      SP.Parameters.ParamByName('@days_count_hold'         ).Value := exWks.Range['M' + IntToStr(count_str)].Value;
      SP.Parameters.ParamByName('@hold_rete'               ).Value := exWks.Range['N' + IntToStr(count_str)].Value;
      SP.Parameters.ParamByName('@hold_sum'                ).Value := exWks.Range['O' + IntToStr(count_str)].Value;

      try
        SP.ExecProc;
      except
        on E: Exception do
          Application.MessageBox(PChar(E.Message), 'Внимание', MB_OK);
      end;

//      Станция отправления
//      № накладной
//      Дата отправления со ст. погр.
//      дата сдачи груженого вагона на ин. дорогу
//      Дата прибытия на ст. выгр.
//      Дата отправления со ст. выгр.
//      прием порожнего вагона с ин. дороги
//      Накладная на порожний рейс
//      Номер вагона
//      Станция выгрузки (простоя)
//      кол-во суток на ин.тер
//      Норматив нахождения вагона на ин. территории,
//      Количество суток сверхнормативного использования вагонами на ин. территории
//      Стоимость простоя за сутки, руб/ваг.
//      Итого сумма





      count_str := count_str + 1;
    end;
    ShowTextMessage;

  finally
    exApp.Quit;
    exWks := null;
    exWks := null;
  end;

  RefreshQueryGrid(cxGrid1DBBandedTableView1, 'pretenzia_shape_id');
end;

procedure TfmPretenziaShape.dxBarButton8Click(Sender: TObject);
var          i : integer;
  SP : TADOStoredProc;
begin
  if Application.MessageBox('Вы уверены, что хотите удалить вагоны?', 'Внимание', MB_OKCANCEL) = IDOK then begin
    Screen.Cursor := crHourglass;

    SP := TADOStoredProc.Create(nil);
    SP.Connection := fmMain.Lis;
    SP.ProcedureName := 'sp_pretenzia_shape_fact_modify';
    SP.Parameters.Refresh;

    for i := 0 to cxGrid2DBBandedTableView1.Controller.SelectedRowCount - 1 do begin
      SP.Close;
      SP.Parameters.ParamByName('@type_action').Value := 2;
      SP.Parameters.ParamByName('@pretenzia_shape_fact_id').Value := cxGrid2DBBandedTableView1.Controller.SelectedRows[i].Values[cxGrid2DBBandedTableView1.GetColumnByFieldName('pretenzia_shape_fact_id').Index];
      try
        SP.ExecProc;
      except
      end;

      ShowTextMessage('Осталось '+IntToStr(cxGrid2DBBandedTableView1.Controller.SelectedRowCount - i)+' строк...', False);
    end;
    RefreshQueryGrid(cxGrid2DBBandedTableView1, 'pretenzia_shape_fact_id');
    SP.Free;

    ShowTextMessage;

    Screen.Cursor := crDefault;
  end;
end;

procedure TfmPretenziaShape.dxBarButton_FilterRecords1Click(Sender: TObject);
begin
  cxGrid1DBBandedTableView1.Filtering.ColumnFilteredItemsList := not dxBarButton_FilterRecords1.Down;
end;

procedure TfmPretenziaShape.N7Click(Sender: TObject);
begin
  SetRecordColor('pretenzia_shape_id', cxGrid1DBBandedTableView1, 'pretenzia_shape_id', Boolean(TMenuItem(Sender).Tag));
  RefreshQueryGrid(cxGrid1DBBandedTableView1, 'pretenzia_shape_id');
end;

procedure TfmPretenziaShape.N11Click(Sender: TObject);
begin
  case TdxBarButton(Sender).ClickItemLink.Owner.Owner.Tag of
    1 : cxGrid1DBBandedTableView1.OptionsView.GroupByBox := not cxGrid1DBBandedTableView1.OptionsView.GroupByBox;
  end;
end;

procedure TfmPretenziaShape.ToolButton16Click(Sender: TObject);
begin
  RefreshQueryGrid(cxGrid1DBBandedTableView1, 'pretenzia_shape_id');
end;

procedure TfmPretenziaShape.Excel1Click(Sender: TObject);
begin
  case TdxBarManager(TdxBarButton(Sender).GetParentComponent).Tag of
    1 : PrintcxGrid(cxGrid1DBBandedTableView1);
  end;
end;




end.



