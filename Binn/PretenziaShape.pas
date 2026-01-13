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
  dxSkinWXI;

type
  TfmPretenziaShape = class(TForm)
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    cxGrid1DBBandedTableView1: TcxGridDBBandedTableView;
    cxPropertiesStore1: TcxPropertiesStore;
    Query_Pay: TADOQuery;
    DS_Pay: TDataSource;
    cxGrid1DBBandedTableView1pay_id: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1pay_date: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1pay_note: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1contract_cod: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1type_contract: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1firm_self_name: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1firm_customer_name: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1pay_sum: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1brief_name: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1pay_num: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1pay_cod: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1first_pay: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1FIO_users: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1global_color: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1contract_id: TcxGridDBBandedColumn;
    Query_1c: TADOQuery;
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
    GroupBox1: TGroupBox;
    cxGrid3: TcxGrid;
    cxGrid3DBBandedTableView1: TcxGridDBBandedTableView;
    cxGrid3DBBandedTableView1pay_inv_id: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1pay_id: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1inv_id: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1pay_inv_brief_name: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1inv_brief_name: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1inv_currency_id: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1pay_firm_self_name: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1pay_currency_id: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1pay_brief_name: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1pay_cod: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1invoice_cod: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1invoice_date: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1inv_firm_customer_name_short: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1pay_rest: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1pay_sum_inv: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1inv_sum_pay: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1pay_sum: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1pay_inv_currency_id: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1pay_inv_date: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1pay_date: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1pay_firm_customer_name_short: TcxGridDBBandedColumn;
    cxGrid3Level1: TcxGridLevel;
    Splitter2: TSplitter;
    dxBarButton7: TdxBarButton;
    DS_Pay_Invoice: TDataSource;
    Query_Pay_Invoice: TADOQuery;
    Popup_Pay_Invoice: TdxBarPopupMenu;
    dxBarSubItem2: TdxBarSubItem;
    dxBarButton_FilterRecords1: TdxBarButton;
    dxBarButton_FilterRecords2: TdxBarButton;
    dxBarSubItem3: TdxBarSubItem;
    dxBarButton11: TdxBarButton;
    dxBarButton12: TdxBarButton;
    dxBarButton13: TdxBarButton;
    cxGrid1DBBandedTableView1date_enter: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1firm_self: TcxGridDBBandedColumn;
    dxBarButton14: TdxBarButton;
    dxBarSubItem4: TdxBarSubItem;
    procedure dxBarButton2Click(Sender: TObject);
    procedure cxGrid1DBBandedTableView1KeyPress(Sender: TObject; var Key: Char);
    procedure ToolButton12Click(Sender: TObject);
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
    procedure dxBarButton4Click(Sender: TObject);
    procedure dxBarButton7Click(Sender: TObject);
    procedure cxGrid1DBBandedTableView2FocusedRecordChanged(Sender: TcxCustomGridTableView; APrevFocusedRecord, AFocusedRecord: TcxCustomGridRecord; ANewItemRecordFocusingChanged: Boolean);
    procedure dxBarButton_FilterRecords1Click(Sender: TObject);
    procedure dxBarButton_FilterRecords2Click(Sender: TObject);
    procedure dxBarButton13Click(Sender: TObject);
    procedure dxBarButton14Click(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    Fdate1, Fdate2 : TDateTime;
    Fpay_id     : integer;
    Ftype_pay   : byte;

  public
    constructor Create(AOwner : Tapplication; type_pay: byte; flag: boolean);

  published
    procedure SetPeriodCreate (date1, date2: TDate);

  end;

var
  fmPretenziaShape: TfmPretenziaShape;

implementation
   uses Main, Period, Raznoe, PretenziaShapeAdd, Other, cxGridDBDataDefinitions, Default, Filter;
{$R *.DFM}

constructor TfmPretenziaShape.Create(AOwner: Tapplication; type_pay: byte; flag: boolean);
begin
  Screen.Cursor := crHourglass;
  inherited Create(AOwner);
  Ftype_pay := type_pay;

  dxBarSubItem1.Caption := StoreRegistryDate(rgLoad, '\Software\Lis1\DateTime\PretenziaShape', Fdate1, Fdate2);

  Query_Pay.Parameters.ParamByName('type_pay').Value := Ftype_pay;
  Query_Pay.Parameters.ParamByName('date1').Value := Fdate1;
  Query_Pay.Parameters.ParamByName('date2').Value := Fdate2;
  Query_Pay.Open;

  if flag then begin
    FormStyle := fsNormal;
    dxBarButton4.Visible := ivAlways;
    cxGrid1DBBandedTableView1.OnDblClick := dxBarButton4Click;
  end else begin
    FormStyle := fsMDIChild;
    WindowState := wsMaximized;
  end;

  StoreRegistryGrid(rgLoad,'\Software\Lis1\PretenziaShape_Grids', cxGrid1DBBandedTableView1);
  StoreRegistryGrid(rgLoad,'\Software\Lis1\PretenziaShape_Grids', cxGrid3DBBandedTableView1);

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
end;

procedure TfmPretenziaShape.N1Click(Sender: TObject);
begin
  fmPretenziaShapeAdd := TfmPretenziaShapeAdd.Create(Application, Ftype_pay, True, False);
  fmPretenziaShapeAdd._SetInsert;
  if fmPretenziaShapeAdd.ShowModal = mrOk then
    RefreshQueryGrid(cxGrid1DBBandedTableView1, 'pay_id', fmPretenziaShapeAdd._GetPayId);
end;

procedure TfmPretenziaShape.N2Click(Sender: TObject);
begin
  fmPretenziaShapeAdd := TfmPretenziaShapeAdd.Create(Application, Ftype_pay, False, False);
  fmPretenziaShapeAdd._SetUpdate := cxGrid1DBBandedTableView1.GetColumnByFieldName('pay_id').DataBinding.Field.AsInteger;
  if fmPretenziaShapeAdd.ShowModal = mrOk then
    RefreshQueryGrid(cxGrid1DBBandedTableView1, 'pay_id');
end;

procedure TfmPretenziaShape.N3Click(Sender: TObject);
var          i : integer;
  SP_PayDelete : TADOStoredProc;
begin
  if Application.MessageBox('Вы уверены, что хотите удалить платёж?', 'Внимание', MB_OKCANCEL) = IDOK then begin
    Screen.Cursor := crHourglass;

    SP_PayDelete := TADOStoredProc.Create(nil);
    SP_PayDelete.Connection := fmMain.Lis;
    SP_PayDelete.ProcedureName := 'sp_pay_modify;1';
    SP_PayDelete.Parameters.Refresh;

    for i := 0 to cxGrid1DBBandedTableView1.Controller.SelectedRowCount - 1 do begin
      SP_PayDelete.Close;
      SP_PayDelete.Parameters.ParamByName('@type_action').Value := 2;
      SP_PayDelete.Parameters.ParamByName('@pay_id').Value := cxGrid1DBBandedTableView1.Controller.SelectedRows[i].Values[cxGrid1DBBandedTableView1.GetColumnByFieldName('pay_id').Index];
      try
        SP_PayDelete.ExecProc;
      except
      end;

      ShowTextMessage('Осталось '+IntToStr(cxGrid1DBBandedTableView1.Controller.SelectedRowCount - i)+' строк...', False);
    end;
    RefreshQueryGrid(cxGrid1DBBandedTableView1, 'pay_id');
    SP_PayDelete.Free;

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

  Query_Pay.Close;
  Query_Pay.Parameters.ParamByName('date1').Value := Fdate1;
  Query_Pay.Parameters.ParamByName('date2').Value := Fdate2;
  Query_Pay.Open;

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
    SP.ProcedureName := '';
    SP.Parameters.Refresh;
    count_str := 10;
    while not (TVarData(exWks.Cells[count_str,1].Value).VType = varEmpty) do begin
      ShowTextMessage('Обработано '+IntToStr(count_str - 10)+' вагонов...', False);



      count_str := count_str + 1;
    end;
    ShowTextMessage;

  finally
    exApp.Quit;
    exWks := null;
    exWks := null;
  end;

  RefreshQueryGrid(cxGrid1DBBandedTableView1, '');
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

    Query_Pay.Close;
    Query_Pay.Parameters.ParamByName('date1').Value := Fdate1;
    Query_Pay.Parameters.ParamByName('date2').Value := Fdate2;
    Query_Pay.Open;

    Screen.Cursor := crDefault;
  end;
end;

procedure TfmPretenziaShape.dxBarButton4Click(Sender: TObject);
begin
  Fpay_id := cxGrid1DBBandedTableView1pay_id.DataBinding.Field.AsInteger;
  ModalResult := mrOk;
end;

procedure TfmPretenziaShape.dxBarButton7Click(Sender: TObject);
begin
  GroupBox1.Visible := dxBarButton7.Down;
  Splitter2.Visible := dxBarButton7.Down;
end;

procedure TfmPretenziaShape.dxBarButton_FilterRecords1Click(Sender: TObject);
begin
  cxGrid1DBBandedTableView1.Filtering.ColumnFilteredItemsList := not dxBarButton_FilterRecords1.Down;
end;

procedure TfmPretenziaShape.dxBarButton_FilterRecords2Click(Sender: TObject);
begin
  cxGrid3DBBandedTableView1.Filtering.ColumnFilteredItemsList := not dxBarButton_FilterRecords2.Down;
end;

procedure TfmPretenziaShape.N7Click(Sender: TObject);
begin
  SetRecordColor('pay_id', cxGrid1DBBandedTableView1, 'pay', Boolean(TMenuItem(Sender).Tag));
  RefreshQueryGrid(cxGrid1DBBandedTableView1, 'pay_id');
end;

procedure TfmPretenziaShape.N11Click(Sender: TObject);
begin
  case TdxBarButton(Sender).ClickItemLink.Owner.Owner.Tag of
    1 : cxGrid1DBBandedTableView1.OptionsView.GroupByBox := not cxGrid1DBBandedTableView1.OptionsView.GroupByBox;
    3 : cxGrid3DBBandedTableView1.OptionsView.GroupByBox := not cxGrid3DBBandedTableView1.OptionsView.GroupByBox;
  end;
end;

procedure TfmPretenziaShape.ToolButton12Click(Sender: TObject);
type
  TFunc = function(AppHand:THandle; global_id:integer; caption: string; usr_pwd:PUser_pwd):variant;
var
  FShablon  : TFunc;
  handle    : THandle;
  v         : Variant;
begin
   handle := LoadLibrary('dictionary.dll');
   @FShablon := GetProcAddress(handle,'CreateWndDocBlob');
   v := FShablon(Application.Handle, cxGrid1DBBandedTableView1pay_id.DataBinding.Field.AsInteger, 'Документы связанные с платежом № '+cxGrid1DBBandedTableView1pay_cod.DataBinding.Field.AsString, usr_pwd);
   FreeLibrary(handle);
end;

procedure TfmPretenziaShape.ToolButton16Click(Sender: TObject);
begin
  RefreshQueryGrid(cxGrid1DBBandedTableView1, 'pay_id');
end;

procedure TfmPretenziaShape.Excel1Click(Sender: TObject);
begin
  case TdxBarManager(TdxBarButton(Sender).GetParentComponent).Tag of
    1 : PrintcxGrid(cxGrid1DBBandedTableView1);
    3 : PrintcxGrid(cxGrid3DBBandedTableView1);
  end;
end;

//отчет о незагруженных платежах
procedure TfmPretenziaShape.cxGrid1DBBandedTableView2FocusedRecordChanged(Sender: TcxCustomGridTableView; APrevFocusedRecord, AFocusedRecord: TcxCustomGridRecord; ANewItemRecordFocusingChanged: Boolean);
begin
  try
    if not Assigned(AFocusedRecord) then
      TcxGridDBBandedTableView(Sender).Controller.FocusRecord(1, True)
    else
      if (not VarIsNull(AFocusedRecord.Values[TcxGridDBBandedTableView(Sender).GetColumnByFieldName('pay_id').Index])) AND (dxBarButton7.Down) then begin
        Query_Pay_Invoice.Close;
        Query_Pay_Invoice.Parameters.ParamByName('pay_id').Value := AFocusedRecord.Values[TcxGridDBBandedTableView(Sender).GetColumnByFieldName('pay_id').Index];
        Query_Pay_Invoice.Open;
      end;
  except
  end;
end;

procedure TfmPretenziaShape.SetPeriodCreate (date1, date2: TDate);
var Q : TADOQuery;
begin
  Screen.Cursor := crHourglass;

  Fdate1 := date1;
  Fdate2 := date2;

  Q := TADOQuery.Create(nil);
  Q.Connection := Query_Pay.Connection;
  Q.SQL.Add('SELECT date1 = MIN(pay_date), date2 = MAX(pay_date) ');
  Q.SQL.Add('FROM view_pay_rights ');
  Q.SQL.Add('WHERE type_pay = :type_pay AND :date1 <= date_enter AND date_enter < :date2 + 1');
  Q.Parameters.ParamByName('type_pay').Value := Ftype_pay;
  Q.Parameters.ParamByName('date1').Value := date1;
  Q.Parameters.ParamByName('date2').Value := date2;
  Q.Open;

  if not Q.FieldByName('date1').IsNull then begin
    Fdate1 := Q.FieldByName('date1').AsDateTime;
    Fdate2 := Q.FieldByName('date2').AsDateTime;
  end;

  dxBarSubItem1.Caption := FormatDateTime('dd.mm.yy', Fdate1) + ' - ' + FormatDateTime('dd.mm.yy', Fdate2);

  Query_Pay.Close;
  Query_Pay.Parameters.ParamByName('date1').Value := Fdate1;
  Query_Pay.Parameters.ParamByName('date2').Value := Fdate2;
  Query_Pay.Open;

  Q.Free;

  // Наложим фильтр по дате
  with cxGrid1DBBandedTableView1.DataController.Filter do begin
    BeginUpdate;

    Root.Clear;
    Root.AddItem(cxGrid1DBBandedTableView1.GetColumnByFieldName('date_enter'), foBetween, VarArrayOf([date1, date2]), DateToStr(date1) + ';' + DateToStr(date2));
    Active := True;

    EndUpdate;
  end;

  Screen.Cursor := crDefault;
end;

end.



