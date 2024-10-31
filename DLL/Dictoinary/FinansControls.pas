unit FinansControls;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData,
  cxCurrencyEdit, ADODB, dxBar, cxPropertiesStore, cxClasses, ImgList, DateUtils,
  cxGridLevel, cxGridCustomTableView, cxGridTableView, cxGridBandedTableView,
  cxGridDBBandedTableView, cxGridCustomView, cxGrid, Raznoe, Period, Default,
  Other, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel,
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
  dxSkinSummer2008, dxSkinTheAsphaltWorld, dxSkinsDefaultPainters,
  dxSkinValentine, dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue, dxSkinscxPCPainter, cxNavigator, dxSkinsdxBarPainter,
  System.ImageList, cxCalendar, cxImageList,
  cxDataControllerConditionalFormattingRulesManagerDialog, dxSkinTheBezier, dxDateRanges, dxSkinOffice2019Colorful;

type
  TfmFinansControls = class(TForm)
    cxGrid1: TcxGrid;
    cxGrid1DBBandedTableView2: TcxGridDBBandedTableView;
    cxGrid1DBBandedTableView2doc_id: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView2doc_describe: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView2file_name: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView2doc_cod: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView2FIO_users: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView2date_enter: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView2doc_location_date: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView2doc_location_FIO_users: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView2sign_customer_name: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView2sign_self_name: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView2doc_location_name: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView2doc_image_date: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView2doc_type_describe: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView2docs_id: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView2docs_status_name: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView2doc_original_date: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView2doc_invoice_score_cod: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView2contract_cod: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView2firm_customer_name: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView2firm_self_name: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView2date_begin: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView2curator_FIO_users: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView2firm_name: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView2doc_location_id: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView2doc_kind_id: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView2sign_customer_id: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView2sign_self_id: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView2global_color: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView2global_id: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView2doc_location_FIO_users_id: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView2doc_cod1: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView2doc_type_id: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView2doc_type_cod: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView2users_group_id: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView2sign_customer_cod: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView2sign_self_cod: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView2contract_id: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView2firm_id: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView2invoice_id: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView2pretenzia_id: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView2fact_repair_id: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView2date_end: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView2type_contract_name: TcxGridDBBandedColumn;
    cxGrid1Level1: TcxGridLevel;
    ADOFinControl: TADOConnection;
    cxImageList1: TcxImageList;
    dxBarManager1: TdxBarManager;
    dxBarManager1Bar1: TdxBar;
    dxBarButton4: TdxBarButton;
    dxBarButton5: TdxBarButton;
    dxBarButton6: TdxBarButton;
    dxBarSubItem1: TdxBarSubItem;
    dxBarButton7: TdxBarButton;
    dxBarButton8: TdxBarButton;
    dxBarButton9: TdxBarButton;
    dxBarButton10: TdxBarButton;
    dxBarSubItem2: TdxBarSubItem;
    dxBarEdit1: TdxBarEdit;
    dxBarButton11: TdxBarButton;
    dxBarButton12: TdxBarButton;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1: TcxStyle;
    cxPropertiesStore1: TcxPropertiesStore;
    dxBarPopupMenu1: TdxBarPopupMenu;
    DS_FinControl: TDataSource;
    Query_FinControl: TADOQuery;
    dxBarButton1: TdxBarButton;
    cxGrid1DBBandedTableView2set_fin_control: TcxGridDBBandedColumn;
    dxBarButton2: TdxBarButton;
    dxBarButton3: TdxBarButton;
    dxBarButton13: TdxBarButton;
    cxGrid1DBBandedTableView2fin_control_date: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView2fin_control_users_FIO: TcxGridDBBandedColumn;
    cxStyle2: TcxStyle;
    cxGrid1DBBandedTableView2firm_property_name: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView2passport_cod: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView2set_passport: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView2fin_control_date_of_bank: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView2passport_date_begin: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView2passport_date_end: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView2docs_date_agree: TcxGridDBBandedColumn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure dxBarButton1Click(Sender: TObject);
    procedure dxBarButton2Click(Sender: TObject);
    procedure ADOFinControlExecuteComplete(Connection: TADOConnection;
      RecordsAffected: Integer; const Error: Error;
      var EventStatus: TEventStatus; const Command: _Command;
      const Recordset: _Recordset);
    procedure dxBarButton3Click(Sender: TObject);
    procedure dxBarButton11Click(Sender: TObject);
    procedure dxBarButton12Click(Sender: TObject);
    procedure dxBarButton5Click(Sender: TObject);
    procedure dxBarButton4Click(Sender: TObject);
    procedure dxBarButton6Click(Sender: TObject);
    procedure dxBarButton7Click(Sender: TObject);
    procedure dxBarButton9Click(Sender: TObject);
    procedure dxBarButton10Click(Sender: TObject);
    procedure cxGrid1DBBandedTableView2DataControllerFilterChanged(
      Sender: TObject);
    procedure cxGrid1DBBandedTableView2CustomDrawCell(
      Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
      AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
    procedure cxGrid1DBBandedTableView2CustomDrawColumnHeader(
      Sender: TcxGridTableView; ACanvas: TcxCanvas;
      AViewInfo: TcxGridColumnHeaderViewInfo; var ADone: Boolean);
    procedure cxGrid1DBBandedTableView2FocusedItemChanged(
      Sender: TcxCustomGridTableView; APrevFocusedItem,
      AFocusedItem: TcxCustomGridTableItem);
    procedure cxGrid1DBBandedTableView2KeyPress(Sender: TObject; var Key: Char);
    procedure dxBarButton13Click(Sender: TObject);
  private
    Fusr_pwd       :PUser_pwd;
    Fdate1, Fdate2 : TDateTime;
  public
    constructor Create(AOwner: TApplication; usr_pwd: PUser_pwd);
  end;

function CreateWndFinControl(AppHand: THandle; usr_pwd: PUser_pwd): variant; export;

var
  fmFinansControls: TfmFinansControls;

implementation

{$R *.dfm}

function CreateWndFinControl(AppHand: THandle; usr_pwd: PUser_pwd): variant; export;
begin
  Application.Handle := AppHand;
  fmFinansControls := TfmFinansControls.Create(Application, usr_pwd);
  try
    fmFinansControls.ShowModal;
    result := VarArrayOf([-9, '', '']);
  finally
    fmFinansControls.Free;
  end;
end;


procedure TfmFinansControls.ADOFinControlExecuteComplete(
  Connection: TADOConnection; RecordsAffected: Integer; const Error: Error;
  var EventStatus: TEventStatus; const Command: _Command;
  const Recordset: _Recordset);
var p : PChar;
begin
  if EventStatus = esErrorsOccured then begin
    Application.MessageBox(PWideChar(error.Description), 'Внимание', MB_OK);
    ShowTextMessage('', True);
  end;

end;

constructor TfmFinansControls.Create(AOwner: TApplication; usr_pwd: PUser_pwd);
var Q : TADOQuery;
    i : integer;
begin
  inherited Create(AOwner);
  Screen.Cursor := crHourglass;

  ADOFinControl.Connected := False;
  ADOFinControl.ConnectionString := 'Persist Security Info=True;Provider=SQLOLEDB.1;User ID='+usr_pwd^.user_name+';Password='+usr_pwd^.user_pass+';Initial Catalog='+usr_pwd^.catalog+';Data Source='+usr_pwd^.server+';';
  ADOFinControl.Connected := True;

  Fusr_pwd     := usr_pwd;

  StoreRegistryGrid(rgLoad,'\Software\Lis1\FinControl_Grids', cxGrid1DBBandedTableView2);
  LoadRegistryDate_('\Software\LIS1\DateTime\FinControl', Fdate1, Fdate2);
  Fdate2 := EndOfTheMonth(Now);
  dxBarEdit1.Text := PeriodToStr(Fdate1, Fdate2, True);

  Query_FinControl.Parameters.ParamByName('date1').Value := Fdate1;
  Query_FinControl.Parameters.ParamByName('date2').Value := Fdate2;
  Query_FinControl.Parameters.ParamByName('set_fin_control').Value := not dxBarButton3.Down;
  Query_FinControl.Open;

  MonitorEventFormOpen('OPEN_FORM', self.Name, ADOFinControl, -9);
  Screen.Cursor := crDefault;
end;

procedure TfmFinansControls.cxGrid1DBBandedTableView2CustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
  if (AViewInfo.GridRecord.Values[cxGrid1DBBandedTableView2global_color.Index]<>NULL) then ACanvas.Brush.Color := AViewInfo.GridRecord.Values[cxGrid1DBBandedTableView2global_color.Index];
  if AViewInfo.GridRecord.Selected or AViewInfo.GridRecord.Focused then begin
    ACanvas.Brush.Color := clNavy;
    ACanvas.Font.Color := clWhite;
    if AViewInfo.Focused then ACanvas.Brush.Color := clBlue;
  end;
end;

procedure TfmFinansControls.cxGrid1DBBandedTableView2CustomDrawColumnHeader(
  Sender: TcxGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridColumnHeaderViewInfo; var ADone: Boolean);
begin
  if AViewInfo.Column.Focused then begin
    ACanvas.Brush.Color := clNavy;
    ACanvas.Font.Color := clWhite;
  end;
end;

procedure TfmFinansControls.cxGrid1DBBandedTableView2DataControllerFilterChanged(
  Sender: TObject);
begin
  DrawcxGridColumnOnFiltered(Sender);
end;

procedure TfmFinansControls.cxGrid1DBBandedTableView2FocusedItemChanged(
  Sender: TcxCustomGridTableView; APrevFocusedItem,
  AFocusedItem: TcxCustomGridTableItem);
begin
  Sender.Painter.Invalidate;
end;

procedure TfmFinansControls.cxGrid1DBBandedTableView2KeyPress(Sender: TObject; var Key: Char);
begin
  FilterColumnGridOnKeyPress(cxGrid1DBBandedTableView2, Key);
end;

procedure TfmFinansControls.dxBarButton10Click(Sender: TObject);
begin
  cxGrid1DBBandedTableView2.OptionsView.GroupByBox := not cxGrid1DBBandedTableView2.OptionsView.GroupByBox;
end;

procedure TfmFinansControls.dxBarButton11Click(Sender: TObject);
begin
  fmPeriod := TfmPeriod.Create(Application, Fdate1, Fdate2, 3);
  if fmPeriod.ShowModal=mrOK then begin
    Screen.Cursor := crHourglass;
    Fdate1 := fmPeriod._GetMonth;
    Fdate2 := IncMonth(Fdate1, 1);
    dxBarEdit1.Text := FormatDateTime('mmmm yyyy', Fdate1);

    Query_FinControl.Close;
    Query_FinControl.Parameters.ParamByName('date1').Value := Fdate1;
    Query_FinControl.Parameters.ParamByName('date2').Value := Fdate2;
    Query_FinControl.Parameters.ParamByName('set_fin_control').Value := not dxBarButton3.Down;
    Query_FinControl.Open;

    Screen.Cursor := crDefault;
  end;
end;

procedure TfmFinansControls.dxBarButton12Click(Sender: TObject);
begin
  fmPeriod := TfmPeriod.Create(Application, Fdate1, Fdate2-1, 2);
  if fmPeriod.ShowModal=mrOK then begin
    Screen.Cursor := crHourglass;
    Fdate1 := fmPeriod._GetMonthBegin;
    Fdate2 := fmPeriod._GetMonthEnd;
    dxBarEdit1.Text := FormatDateTime('mmm yy', Fdate1) + ' - ' + FormatDateTime('mmm yy', Fdate2-1);

    Query_FinControl.Close;
    Query_FinControl.Parameters.ParamByName('date1').Value := Fdate1;
    Query_FinControl.Parameters.ParamByName('date2').Value := Fdate2;
    Query_FinControl.Parameters.ParamByName('set_fin_control').Value := not dxBarButton3.Down;
    Query_FinControl.Open;

    Screen.Cursor := crDefault;
  end;
end;

procedure TfmFinansControls.dxBarButton13Click(Sender: TObject);
begin
  cxGrid1DBBandedTableView2.Filtering.ColumnFilteredItemsList := not dxBarButton13.Down;
end;

procedure TfmFinansControls.dxBarButton1Click(Sender: TObject);
var sp_BLOB_fin_control : TADOStoredProc;
    i : integer;
    date_of_bank : Variant;
begin
  Screen.Cursor := -11;
  fmPeriod := TfmPeriod.Create(Application, Date, Date, 5);
  fmPeriod._SetCaption := 'Дата предоставления в банк';
  if fmPeriod.ShowModal = mrOk then begin
    if fmPeriod._GetDateBegin = -700000 then
      date_of_bank := null
    else
      date_of_bank := fmPeriod._GetDateBegin;

    sp_BLOB_fin_control := TADOStoredProc.Create(nil);
    sp_BLOB_fin_control.Connection := ADOFinControl;
    sp_BLOB_fin_control.ProcedureName := 'sp_BLOB_fin_control';

    for i := 0 to cxGrid1DBBandedTableView2.Controller.SelectedRowCount - 1 do begin

      sp_BLOB_fin_control.Close;
      sp_BLOB_fin_control.Parameters.Refresh;
      sp_BLOB_fin_control.Parameters.ParamByName('@doc_id'         ).Value := cxGrid1DBBandedTableView2.Controller.SelectedRows[i].Values[cxGrid1DBBandedTableView2doc_id.Index];
      sp_BLOB_fin_control.Parameters.ParamByName('@set_fin_control').Value := 1;
      sp_BLOB_fin_control.Parameters.ParamByName('@fin_control_date_of_bank').Value := date_of_bank;

      try
        sp_BLOB_fin_control.ExecProc;
        ShowTextMessage('Осталось '+IntToStr(cxGrid1DBBandedTableView2.Controller.SelectedRowCount - i)+' записей...', False);
      except
      end;
    end;
    RefreshQueryGrid(cxGrid1DBBandedTableView2, 'doc_id');
    sp_BLOB_fin_control.Free;
  end;

  ShowTextMessage;
end;

procedure TfmFinansControls.dxBarButton2Click(Sender: TObject);
var sp_BLOB_fin_control : TADOStoredProc;
    i : integer;
begin
  Screen.Cursor := -11;

  sp_BLOB_fin_control := TADOStoredProc.Create(nil);
  sp_BLOB_fin_control.Connection := ADOFinControl;
  sp_BLOB_fin_control.ProcedureName := 'sp_BLOB_fin_control';

  for i := 0 to cxGrid1DBBandedTableView2.Controller.SelectedRowCount - 1 do begin

    sp_BLOB_fin_control.Close;
    sp_BLOB_fin_control.Parameters.Refresh;
    sp_BLOB_fin_control.Parameters.ParamByName('@doc_id'         ).Value := cxGrid1DBBandedTableView2.Controller.SelectedRows[i].Values[cxGrid1DBBandedTableView2doc_id.Index];
    sp_BLOB_fin_control.Parameters.ParamByName('@set_fin_control').Value := 0;
    try
      sp_BLOB_fin_control.ExecProc;
      ShowTextMessage('Осталось '+IntToStr(cxGrid1DBBandedTableView2.Controller.SelectedRowCount - i)+' записей...', False);
    except
    end;
  end;

  RefreshQueryGrid(cxGrid1DBBandedTableView2, 'doc_id');
  sp_BLOB_fin_control.Free;
  ShowTextMessage;
end;

procedure TfmFinansControls.dxBarButton3Click(Sender: TObject);
begin
  Query_FinControl.Close;
  Query_FinControl.Parameters.ParamByName('date1').Value := Fdate1;
  Query_FinControl.Parameters.ParamByName('date2').Value := Fdate2;
  Query_FinControl.Parameters.ParamByName('set_fin_control').Value := not dxBarButton3.Down;
  Query_FinControl.Open;
end;

procedure TfmFinansControls.dxBarButton4Click(Sender: TObject);
begin
  if not cxGrid1DBBandedTableView2doc_id.DataBinding.Field.IsNull then begin
    if not cxGrid1DBBandedTableView2file_name.DataBinding.Field.IsNull then begin
      GetDocBlobView(cxGrid1DBBandedTableView2doc_id.DataBinding.Field.AsInteger, nil, '', ADOFinControl);
    end else Application.MessageBox('НЕТ ФАЙЛА К ДАННОЙ ЗАПИСИ', 'ВНИМАНИЕ', MB_OK);
  end;
end;

procedure TfmFinansControls.dxBarButton5Click(Sender: TObject);
begin
  RefreshQueryGrid(cxGrid1DBBandedTableView2, 'doc_id');
end;

procedure TfmFinansControls.dxBarButton6Click(Sender: TObject);
begin
  PrintcxGrid(cxGrid1DBBandedTableView2);
end;

procedure TfmFinansControls.dxBarButton7Click(Sender: TObject);
begin
  SetRecordColor('doc_id', cxGrid1DBBandedTableView2, 'DOC_BLOB', TControl(Sender).Tag=1);
  RefreshQueryGrid(cxGrid1DBBandedTableView2, 'doc_id');
end;

procedure TfmFinansControls.dxBarButton9Click(Sender: TObject);
begin
  SetdxDBGridColumns(cxGrid1DBBandedTableView2);
end;

procedure TfmFinansControls.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  StoreRegistryGrid(rgSave,'\Software\Lis1\FinControl_Grids', cxGrid1DBBandedTableView2);
  SavePositionForm(self, '\Software\LIS1\DateTime\FinControl', Fdate1, Fdate2);

  DeleteFileFromDir();

  Action := caFree;
end;

end.
