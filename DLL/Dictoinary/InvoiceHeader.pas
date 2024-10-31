unit InvoiceHeader;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Default,
  Dialogs, DB, ImgList, ADODB, ImageList, ComObj,
  cxStyles, cxCustomData, cxGraphics, cxFilter, cxData, cxDataStorage, cxEdit, cxDBData, cxGridCustomTableView, cxGridTableView,
  cxGridBandedTableView, cxGridDBBandedTableView, cxControls, cxGridCustomView, cxClasses, cxGridLevel, cxGrid, cxPropertiesStore, dxBar,
  cxLookAndFeels, cxLookAndFeelPainters, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel,
  dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMetropolis, dxSkinMetropolisDark, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinPumpkin, dxSkinSeven,
  dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus, dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008, dxSkinTheAsphaltWorld,
  dxSkinsDefaultPainters, dxSkinValentine, dxSkinVS2010, dxSkinWhiteprint, dxSkinXmas2008Blue, dxSkinscxPCPainter, cxNavigator, dxSkinsdxBarPainter,
  cxCheckBox, dxSkinOffice2016Colorful, dxSkinOffice2016Dark, dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, cxImageList, dxSkinTheBezier, dxDateRanges, dxScrollbarAnnotations;

type
  TfmInvoiceHeader = class(TForm)
    dxBarManager1: TdxBarManager;
    dxBarManager1Bar1: TdxBar;
    dxBarButton1: TdxBarButton;
    dxBarButton4: TdxBarButton;
    N1: TdxBarButton;
    N2: TdxBarButton;
    N3: TdxBarButton;
    Excel2: TdxBarButton;
    N4: TdxBarSubItem;
    N10: TdxBarButton;
    N11: TdxBarButton;
    Popup_InvoiceHeader: TdxBarPopupMenu;
    dxBarButton2: TdxBarButton;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    cxGrid1DBBandedTableView1: TcxGridDBBandedTableView;
    Query_InvoiceHeader: TADOQuery;
    DS_InvoiceHeader: TDataSource;
    cxGrid1DBBandedTableView1invoice_header_id: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1header_description: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1header_name: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1header_address: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1header_bank: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1date_begin: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1date_end: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1header_num: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1header_language_id: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1header_language_name: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1header_language_cod: TcxGridDBBandedColumn;
    ADOInvoiceHeader: TADOConnection;
    cxImageList1: TcxImageList;
    dxBarButton_FilterRecords1: TdxBarButton;
    cxGrid1DBBandedTableView1set_only_marked_contract: TcxGridDBBandedColumn;
    dxBarSubItem1: TdxBarSubItem;
    dxBarButton3: TdxBarButton;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle_WhiteColor: TcxStyle;
    procedure ADOInvoiceHeaderExecuteComplete(Connection: TADOConnection; RecordsAffected: Integer; const Error: Error; var EventStatus: TEventStatus; const Command: _Command; const Recordset: _Recordset);
    procedure cxGrid1DBBandedTableView1DblClick(Sender: TObject);
    procedure dxBarButton4Click(Sender: TObject);
    procedure N2Click(Sender: TObject);
    procedure dxBarButton1Click(Sender: TObject);
    procedure N1Click(Sender: TObject);
    procedure N3Click(Sender: TObject);
    procedure N11Click(Sender: TObject);
    procedure N10Click(Sender: TObject);
    procedure Excel2Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure dxBarButton2Click(Sender: TObject);
    procedure cxGrid1DBBandedTableView1KeyPress(Sender: TObject; var Key: Char);
    procedure cxGrid1DBBandedTableView1CustomDrawColumnHeader(Sender: TcxGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxGridColumnHeaderViewInfo; var ADone: Boolean);
    procedure cxGrid1DBBandedTableView1CustomDrawCell(Sender: TcxCustomGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
    procedure cxGrid1DBBandedTableView1DataControllerFilterChanged(Sender: TObject);
    procedure dxBarButton_FilterRecords1Click(Sender: TObject);
    procedure dxBarButton3Click(Sender: TObject);
    procedure cxGrid1DBBandedTableView1FocusedItemChanged(Sender: TcxCustomGridTableView; APrevFocusedItem, AFocusedItem: TcxCustomGridTableItem);
  private
    function GetInvoiceHeaderID    : integer;
    function GetStrInvoiceHeaderID : string;
    procedure SetFilterInvoiceHeader(str_invoice_header_id: string);
  public

    constructor Create(AOwner : Tapplication; str_conn : string; set_choose : boolean; str_invoice_header_id : string);
  published
    property _GetInvoiceHeaderID       : integer read GetInvoiceHeaderID;
    property _GetStrInvoiceHeaderID    : string  read GetStrInvoiceHeaderID;
  end;

function CreateWndInvoiceHeader(AppHand : THandle; str_conn : string; set_choose : boolean; str_invoice_header_id : string) : variant; export;

var
  fmInvoiceHeader: TfmInvoiceHeader;

implementation
  uses Raznoe, Other, InvoiceHeaderAdd;
{$R *.dfm}

function CreateWndInvoiceHeader(AppHand : THandle; str_conn : string; set_choose : boolean; str_invoice_header_id : string) : variant; export;
begin
  Application.Handle := AppHand;
  fmInvoiceHeader := TfmInvoiceHeader.Create(Application, str_conn, set_choose, str_invoice_header_id);
  try
    if fmInvoiceHeader.ShowModal = mrOK then
      result := VarArrayOf([0, fmInvoiceHeader._GetInvoiceHeaderID, fmInvoiceHeader._GetStrInvoiceHeaderID])
    else
      result := VarArrayOf([-9, -9, '']);
  finally
    fmInvoiceHeader.Free;
  end;
end;

constructor TfmInvoiceHeader.Create(AOwner : Tapplication; str_conn : string; set_choose : boolean; str_invoice_header_id : string);
begin
  Screen.Cursor := crHourglass;
  inherited Create(AOwner);

  ADOInvoiceHeader.Connected := False;
  ADOInvoiceHeader.ConnectionString := str_conn;
  ADOInvoiceHeader.Connected := True;

  dxBarButton2Click(nil);

  StoreRegistryGrid(rgLoad,'\Software\Lis1\InvoiceHeader_Grids', cxGrid1DBBandedTableView1);

  if set_choose then begin
    dxBarButton4.Visible := ivAlways;
    SetFilterInvoiceHeader(str_invoice_header_id);
  end;

  Screen.Cursor := crDefault;
end;

procedure TfmInvoiceHeader.ADOInvoiceHeaderExecuteComplete(Connection: TADOConnection; RecordsAffected: Integer; const Error: Error; var EventStatus: TEventStatus; const Command: _Command; const Recordset: _Recordset);
begin
  if EventStatus = esErrorsOccured then begin
    Application.MessageBox(PWideChar(error.Description), 'Внимание', MB_OK);
    ShowTextMessage('', True);
  end;
end;

procedure TfmInvoiceHeader.SetFilterInvoiceHeader(str_invoice_header_id: string);
var
  i        : integer;
  str_find : string;
begin
  if str_invoice_header_id <> '' then begin
    // передан список, снимаем флаг не действительных
    dxBarButton2.Down := False;
    dxBarButton2Click(nil);
  end;

  if str_invoice_header_id <> '' then begin
    // передан список, выделяем нужные
    for i := 0 to cxGrid1DBBandedTableView1.ViewData.RowCount - 1 do begin
      str_find := ',' + VarToStr(cxGrid1DBBandedTableView1.ViewData.Rows[i].Values[cxGrid1DBBandedTableView1invoice_header_id.Index]) + ',';
      // на первый в списке фокусируемся, т.к. может так получиться,
      // что сфокусируемый по умолчанию, не входит в список,
      // а по окраске строки его будет нельзя отличить от выделенных
      if Pos(str_find, ',' + str_invoice_header_id + ',') = 1 then
        cxGrid1DBBandedTableView1.ViewData.Rows[i].Focused := True;
      if Pos(str_find, ',' + str_invoice_header_id + ',') > 0 then
        cxGrid1DBBandedTableView1.ViewData.Rows[i].Selected := True;
    end;
  end;
end;

function TfmInvoiceHeader.GetInvoiceHeaderID;
begin
  if cxGrid1DBBandedTableView1.Controller.SelectedRowCount > 0 then
    Result := cxGrid1DBBandedTableView1.Controller.SelectedRows[0].Values[cxGrid1DBBandedTableView1invoice_header_id.Index]
  else
    Result := cxGrid1DBBandedTableView1invoice_header_id.DataBinding.Field.AsInteger;
end;

function TfmInvoiceHeader.GetStrInvoiceHeaderID;
begin
  Result := cx_GetSelectedValues(cxGrid1, 'invoice_header_id');
end;

procedure TfmInvoiceHeader.cxGrid1DBBandedTableView1CustomDrawCell(Sender: TcxCustomGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
  if AViewInfo.GridRecord.Selected then begin
    ACanvas.Brush.Color := clNavy;
    ACanvas.Font.Color := clWhite;
    if AViewInfo.Focused then ACanvas.Brush.Color := clBlue;
  end;
end;

procedure TfmInvoiceHeader.cxGrid1DBBandedTableView1CustomDrawColumnHeader(Sender: TcxGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxGridColumnHeaderViewInfo; var ADone: Boolean);
begin
  DrawcxGridColumnOnFocused(Sender, ACanvas, AViewInfo);
end;

procedure TfmInvoiceHeader.cxGrid1DBBandedTableView1DataControllerFilterChanged(Sender: TObject);
begin
  DrawcxGridColumnOnFiltered(Sender);
end;

procedure TfmInvoiceHeader.cxGrid1DBBandedTableView1DblClick(Sender: TObject);
begin
  if dxBarButton4.Visible = ivAlways then dxBarButton4.Click
  else N2.Click;
end;

procedure TfmInvoiceHeader.cxGrid1DBBandedTableView1FocusedItemChanged(Sender: TcxCustomGridTableView; APrevFocusedItem, AFocusedItem: TcxCustomGridTableItem);
begin
  Sender.Painter.Invalidate;
end;

procedure TfmInvoiceHeader.cxGrid1DBBandedTableView1KeyPress(Sender: TObject; var Key: Char);
begin
  FilterColumnGridOnKeyPress(TcxGridDBBandedTableView(TcxGridSite(Sender).GridView), Key);
end;

procedure TfmInvoiceHeader.dxBarButton1Click(Sender: TObject);
begin
  RefreshQueryGrid(cxGrid1DBBandedTableView1, cxGrid1DBBandedTableView1.DataController.KeyFieldNames);
end;

procedure TfmInvoiceHeader.dxBarButton2Click(Sender: TObject);
begin
  Query_InvoiceHeader.Close;
  Query_InvoiceHeader.Parameters.ParamByName('all_headers').Value := dxBarButton2.Down;
  Query_InvoiceHeader.Open;
end;

procedure TfmInvoiceHeader.dxBarButton3Click(Sender: TObject);
var
 wdApp, wdDoc : variant;
  wdSelection : variant;
            i : integer;
       id_str : string;
        Query : TADOQuery;
begin
  //Печать выбранных реквизитов

  if cxGrid1DBBandedTableView1.Controller.SelectedRecordCount = 0 then
    Exit;

  try
    Screen.Cursor := crHourglass;

    wdApp := CreateOleObject('Word.Application');
    wdApp.DisplayAlerts := False;
    wdDoc := wdApp.Documents.Add;
    wdSelection := wdApp.Selection;

    id_str := '';

    for i := 0 to cxGrid1DBBandedTableView1.Controller.SelectedRecordCount - 1 do
      id_str := id_str + IntToStr(cxGrid1DBBandedTableView1.Controller.SelectedRows[i].Values[cxGrid1DBBandedTableView1invoice_header_id.Index]) + ',';

    Delete(id_str, Length(id_str), 1);

    Query := TADOQuery.Create(Nil);
    Query.Connection := ADOInvoiceHeader;
    Query.SQL.Add('SELECT * FROM invoice_header WHERE invoice_header_id ');
    Query.SQL.Add('IN (' + id_str + ')');
    Query.SQL.Add('AND GETDATE() BETWEEN date_begin AND date_end');
    Query.Open;
    Query.First;
    while not(Query.Eof) do
    begin
      wdSelection.Text := wdSelection.Text + Query.FieldByName('header_description').AsString + #13#10 + #13#10;
      wdSelection.Text := wdSelection.Text + Query.FieldByName('header_name').AsString + #13#10;
      wdSelection.Text := wdSelection.Text + Query.FieldByName('header_address').AsString + #13#10;
      wdSelection.Text := wdSelection.Text + Trim(Query.FieldByName('header_bank').AsString) + #13#10 + #13#10 + #13#10;

      Query.Next;
    end;

    wdSelection.ParagraphFormat.SpaceBefore := 0;
    wdSelection.ParagraphFormat.SpaceBeforeAuto := False;
    wdSelection.ParagraphFormat.SpaceAfter := 0;
    wdSelection.ParagraphFormat.SpaceAfterAuto := False ;
    wdSelection.Collapse(0);

    Query.Close;

    wdApp.Visible := True;
  finally

    Query.Free;

    VarClear(wdSelection);
    VarClear(wdDoc);
    VarClear(wdApp);

    Screen.Cursor := crDefault;
  end;
end;

procedure TfmInvoiceHeader.dxBarButton4Click(Sender: TObject);
begin
  ModalResult := mrOk;
  CloseModal;
end;

{$REGION 'Фильтр по всем записям'}
procedure TfmInvoiceHeader.dxBarButton_FilterRecords1Click(Sender: TObject);
begin
  cxGrid1DBBandedTableView1.Filtering.ColumnFilteredItemsList := not dxBarButton_FilterRecords1.Down;
end;
{$ENDREGION 'Фильтр по всем записям'}

procedure TfmInvoiceHeader.Excel2Click(Sender: TObject);
begin
  PrintcxGrid(cxGrid1DBBandedTableView1);
end;

procedure TfmInvoiceHeader.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  RestoreGroupedColumns(cxGrid1DBBandedTableView1);
  StoreRegistryGrid(rgSave, '\Software\Lis1\InvoiceHeader_Grids', cxGrid1DBBandedTableView1);
  Action := caFree;
end;

procedure TfmInvoiceHeader.N10Click(Sender: TObject);
begin
  SetdxDBGridColumns(cxGrid1DBBandedTableView1);
end;

procedure TfmInvoiceHeader.N11Click(Sender: TObject);
begin
  cxGrid1DBBandedTableView1.OptionsView.GroupByBox := not cxGrid1DBBandedTableView1.OptionsView.GroupByBox;
end;

procedure TfmInvoiceHeader.N1Click(Sender: TObject);
begin
  fmInvoiceHeaderAdd := TfmInvoiceHeaderAdd.Create(Application);
  fmInvoiceHeaderAdd._InsertInvoiceHeader;
  if fmInvoiceHeaderAdd.ShowModal = mrOk then
    RefreshQueryGrid(cxGrid1DBBandedTableView1, cxGrid1DBBandedTableView1.DataController.KeyFieldNames, fmInvoiceHeaderAdd._invoice_header_id);
end;

procedure TfmInvoiceHeader.N2Click(Sender: TObject);
begin
  if Query_InvoiceHeader.Eof then
    exit;

  fmInvoiceHeaderAdd := TfmInvoiceHeaderAdd.Create(Application);
  fmInvoiceHeaderAdd._UpdateInvoiceHeader(cxGrid1DBBandedTableView1invoice_header_id.DataBinding.Field.AsInteger);
  if fmInvoiceHeaderAdd.ShowModal = mrOk then
    RefreshQueryGrid(cxGrid1DBBandedTableView1, cxGrid1DBBandedTableView1.DataController.KeyFieldNames);
end;

procedure TfmInvoiceHeader.N3Click(Sender: TObject);
var
  i  : integer;
  SP : TADOStoredProc;
begin
  if Application.MessageBox('Вы уверены, что хотите удалить платёжые пеквизиты?', 'Внимание', MB_OKCANCEL) = IDOK then begin
    Screen.Cursor := crHourglass;

    SP := TADOStoredProc.Create(nil);
    SP.Connection := ADOInvoiceHeader;
    SP.ProcedureName := 'sp_invoice_header_modify;1';
    SP.Parameters.Refresh;

    for i := 0 to cxGrid1DBBandedTableView1.Controller.SelectedRowCount - 1 do begin
      SP.Close;
      SP.Parameters.ParamByName('@type_action').Value       := 2;
      SP.Parameters.ParamByName('@invoice_header_id').Value := cxGrid1DBBandedTableView1.Controller.SelectedRows[i].Values[cxGrid1DBBandedTableView1invoice_header_id.Index];
      try
        SP.ExecProc;
      except
      end;

      ShowTextMessage('Осталось '+IntToStr(cxGrid1DBBandedTableView1.Controller.SelectedRowCount - i)+' строк...', False);
    end;
    RefreshQueryGrid(cxGrid1DBBandedTableView1, 'invoice_header_id');
    SP.Free;

    ShowTextMessage;

    Screen.Cursor := crDefault;
  end;
end;

end.
