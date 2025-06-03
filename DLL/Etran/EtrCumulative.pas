unit EtrCumulative;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxClasses, dxBar, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, DB, cxDBData, ExtCtrls, cxGridLevel, DateUtils,
  cxGridCustomTableView, cxGridTableView, cxGridBandedTableView,
  cxGridDBBandedTableView, cxGridCustomView, cxGrid, ImgList, ADODB,
  cxContainer, cxMaskEdit, cxButtonEdit, cxTextEdit, StdCtrls, cxDropDownEdit,
  cxCalendar, Default, Raznoe, cxPropertiesStore, Period, cxCurrencyEdit,
  dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel,
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
  dxSkinXmas2008Blue, dxSkinscxPCPainter, cxNavigator, ComCtrls, dxCore,
  cxDateUtils, dxSkinsdxBarPainter, dxSkinOffice2016Colorful,
  dxSkinOffice2016Dark, dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light,
  cxDataControllerConditionalFormattingRulesManagerDialog, System.ImageList,
  cxImageList, dxSkinTheBezier, dxDateRanges, dxBarBuiltInMenu, cxPC, dxSkinOffice2019Colorful,
  dxSkinBasic, dxSkinOffice2019Black, dxSkinOffice2019DarkGray,
  dxSkinOffice2019White, dxSkinWXI, dxScrollbarAnnotations;

type
  TfmEtrCumulative = class(TForm)
    cxImageList1: TcxImageList;
    dxBarManager1: TdxBarManager;
    dxBarManager1Bar1: TdxBar;
    dxBarButton4: TdxBarButton;
    dxBarSubItem2: TdxBarSubItem;
    dxBarButton8: TdxBarButton;
    dxBarButton9: TdxBarButton;
    dxBarButton11: TdxBarButton;
    dxBarSubItem3: TdxBarSubItem;
    dxBarButton14: TdxBarButton;
    dxBarButton15: TdxBarButton;
    dxBarPopupMenu1: TdxBarPopupMenu;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1: TcxStyle;
    Panel1: TPanel;
    cxGrid1: TcxGrid;
    cxGrid1DBBandedTableView1: TcxGridDBBandedTableView;
    cxGrid1Level1: TcxGridLevel;
    Panel2: TPanel;
    Splitter1: TSplitter;
    Query_Cumulative: TADOQuery;
    ADOEtran: TADOConnection;
    DS_Cumulative: TDataSource;
    cxGrid1DBBandedTableView1cumulative_id: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1cumID: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1cumStateID: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1cumState: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1cumNumber: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1cumLastOper: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1cumTypeID: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1cumTypeName: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1cumRZDOrgID: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1cumRZDOrgName: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1cumStationID: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1cumStationName: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1cumStartDate: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1cumFinishDate: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1cumPayerCode: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1cumPayerID: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1cumPayerOKPO: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1cumPayerName: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1cumContractor: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1cumClientID: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1cumClientOKPO: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1cumClientName: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1cumDateCreate: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1global_id: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1object_id: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1users_owner_id: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1date_enter: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1global_color: TcxGridDBBandedColumn;
    Panel3: TPanel;
    Label1: TLabel;
    Label6: TLabel;
    Label2: TLabel;
    Label5: TLabel;
    Label4: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label34: TLabel;
    Label16: TLabel;
    cxTextEdit1: TcxTextEdit;
    cxTextEdit2: TcxTextEdit;
    cxTextEdit3: TcxTextEdit;
    cxTextEdit4: TcxTextEdit;
    cxDateEdit1: TcxDateEdit;
    cxTextEdit7: TcxTextEdit;
    cxTextEdit8: TcxTextEdit;
    cxTextEdit9: TcxTextEdit;
    cxTextEdit10: TcxTextEdit;
    cxTextEdit11: TcxTextEdit;
    cxTextEdit12: TcxTextEdit;
    cxTextEdit13: TcxTextEdit;
    cxTextEdit14: TcxTextEdit;
    cxTextEdit15: TcxTextEdit;
    cxTextEdit16: TcxTextEdit;
    cxDateEdit2: TcxDateEdit;
    cxDateEdit3: TcxDateEdit;
    cxDateEdit4: TcxDateEdit;
    cxGrid2: TcxGrid;
    cxGridDBBandedTableView1: TcxGridDBBandedTableView;
    cxGridLevel1: TcxGridLevel;
    Query_cumDue: TADOQuery;
    DS_cumDue: TDataSource;
    cxGridDBBandedTableView1cumDue_id: TcxGridDBBandedColumn;
    cxGridDBBandedTableView1cumulative_id: TcxGridDBBandedColumn;
    cxGridDBBandedTableView1dueDate: TcxGridDBBandedColumn;
    cxGridDBBandedTableView1dueParentDocId: TcxGridDBBandedColumn;
    cxGridDBBandedTableView1dueParentDocTypeId: TcxGridDBBandedColumn;
    cxGridDBBandedTableView1dueParentDocNameId: TcxGridDBBandedColumn;
    cxGridDBBandedTableView1dueParentDocName: TcxGridDBBandedColumn;
    cxGridDBBandedTableView1dueParentDocNum: TcxGridDBBandedColumn;
    cxGridDBBandedTableView1dueId: TcxGridDBBandedColumn;
    cxGridDBBandedTableView1dueCode: TcxGridDBBandedColumn;
    cxGridDBBandedTableView1dueSum: TcxGridDBBandedColumn;
    cxGridDBBandedTableView1dueTaxAble: TcxGridDBBandedColumn;
    cxGridDBBandedTableView1dueInfo: TcxGridDBBandedColumn;
    cxGridDBBandedTableView1dueNote: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1cumNeedForECP: TcxGridDBBandedColumn;
    cxPropertiesStore1: TcxPropertiesStore;
    cxGrid1DBBandedTableView1cumStationCode: TcxGridDBBandedColumn;
    dxBarPopupMenu2: TdxBarPopupMenu;
    dxBarSubItem1: TdxBarSubItem;
    cxGrid1DBBandedTableView1ELS_cod: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1cnt_docs: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1summa: TcxGridDBBandedColumn;
    cxGridDBBandedTableView1inf_obj_name: TcxGridDBBandedColumn;
    dxBarButton1: TdxBarButton;
    dxBarButton2: TdxBarButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure dxBarButton8Click(Sender: TObject);
    procedure dxBarButton9Click(Sender: TObject);
    procedure dxBarButton4Click(Sender: TObject);
    procedure cxGrid1DBBandedTableView1DataControllerFilterChanged(
      Sender: TObject);
    procedure FormDestroy(Sender: TObject);
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
    procedure cxGrid1DBBandedTableView1FocusedRecordChanged(
      Sender: TcxCustomGridTableView; APrevFocusedRecord,
      AFocusedRecord: TcxCustomGridRecord;
      ANewItemRecordFocusingChanged: Boolean);
    procedure dxBarButton11Click(Sender: TObject);
    procedure dxBarButton14Click(Sender: TObject);
    procedure dxBarButton15Click(Sender: TObject);
    procedure cxGridDBBandedTableView1KeyPress(Sender: TObject; var Key: Char);
    procedure dxBarButton2Click(Sender: TObject);
  private
    Fusr_pwd         : PUser_pwd;
    Fusers_group_cod : string;
    Fdate1, Fdate2   : TDateTime;
  public
    constructor Create(AOwner: TApplication; users_group_cod: string; usr_pwd: PUser_pwd);
    procedure   SetPeriod(period_begin: TDateTime; period_end: TDateTime);
    procedure   SetId(doc_id: integer);
    procedure   SetNum(cumNumber: string);
  end;

var
  fmEtrCumulative: TfmEtrCumulative;

function CreateWndEtranCumulative(AppHand: THandle; users_group_cod: string; usr_pwd: PUser_pwd): variant; export;
function CreateWndEtranCumulativeFind(AppHand: THandle; doc_id: integer; num_vagon: integer; users_group_cod: string; usr_pwd:PUser_pwd) : variant; export;

implementation

uses EtrUtils;

{$R *.dfm}

function CreateWndEtranCumulativeFind(AppHand: THandle; doc_id: integer; num_vagon: integer; users_group_cod: string; usr_pwd:PUser_pwd) : variant; export;
var Q: TADOQuery;
    d1,d2: TDateTime;
    cumNumber : string;
begin
    Application.Handle := AppHand;
  try
    fmEtrCumulative := TfmEtrCumulative.Create(Application, users_group_cod, usr_pwd);

    Screen.Cursor := -11;
    Q := TADOQuery.Create(nil);
    Q.Connection := fmEtrCumulative.ADOEtran;
    Q.SQL.Add('SELECT * FROM Cumulative WHERE cumID = '+IntToStr(doc_id));
    Q.Open;
    cumNumber := Q.FieldByName('cumNumber').AsString;

    Q.SQL.Clear;
    Q.SQL.Add('SELECT min(cumDateCreate) date1, max(cumDateCreate) date2 FROM Cumulative WHERE cumNumber = '''+cumNumber + '''');
    Q.Open;



    d1 := StartOfTheMonth(Q.FieldByName('date1').AsDateTime);
    d2 := DateOf(EndOfTheMonth(Q.FieldByName('date2').AsDateTime));
    fmEtrCumulative.SetPeriod(d1,d2);
    fmEtrCumulative.SetNum(cumNumber);
    Q.Free;
    //-- изменить по мере необходимости возвращаемых параметров
    if  fmEtrCumulative.ShowModal = mrOk then result := VarArrayOf([-9, '']);
  finally
    fmEtrCumulative.Free;
  end;
end;

function CreateWndEtranCumulative(AppHand: THandle; users_group_cod: string; usr_pwd: PUser_pwd): variant; export;
begin
    Application.Handle := AppHand;
  try
    fmEtrCumulative := TfmEtrCumulative.Create(Application, users_group_cod, usr_pwd);
    //-- изменить по мере необходимости возвращаемых параметров
    if  fmEtrCumulative.ShowModal = mrOk then result := VarArrayOf([-9, '']);
  finally
    fmEtrCumulative.Free;
  end;
end;


constructor TfmEtrCumulative.Create(AOwner: TApplication; users_group_cod: string; usr_pwd: PUser_pwd);
begin
  Screen.Cursor := -11;
  inherited Create(nil);

  WindowState := wsMaximized;
  Fusr_pwd := usr_pwd;
  Fusers_group_cod := users_group_cod;
  StoreRegistryGrid(rgLoad,'\Software\Lis1\EtranCumulative\MainGrids', cxGrid1DBBandedTableView1);
  StoreRegistryGrid(rgLoad,'\Software\Lis1\EtranCumulative\MainGrids', cxGridDBBandedTableView1);


  ADOEtran.Connected := False;
  ADOEtran.ConnectionString := GetEtranConnect(Fusers_group_cod, Fusr_pwd);
  ADOEtran.Connected := True;


  dxBarSubItem2.Caption := StoreRegistryDate(rgLoad, '\Software\Lis1\DateTime\EtranCumulative', Fdate1, Fdate2);

  Query_Cumulative.Close;
  Query_Cumulative.Parameters.ParamByName('date1').Value := Fdate1;
  Query_Cumulative.Parameters.ParamByName('date2').Value := Fdate2;
  Query_Cumulative.Open;

  Screen.Cursor := 0;
end;


procedure TfmEtrCumulative.SetPeriod(period_begin: TDateTime; period_end: TDateTime);
begin
  Fdate1 := period_begin;
  Fdate2 := period_end;
  dxBarSubItem2.Caption := FormatDateTime('mmmm yyyy', Fdate1);
  Screen.Cursor := crHourGlass;
  Query_Cumulative.Close;
  Query_Cumulative.Parameters.ParamByName('date1').Value := Fdate1;
  Query_Cumulative.Parameters.ParamByName('date2').Value := Fdate2;
  Query_Cumulative.Open;
  Screen.Cursor := crDefault;
end;

procedure TfmEtrCumulative.SetId(doc_id: integer);
begin
  cxGrid1DBBandedTableView1.DataController.Filter.Clear;
  cxGrid1DBBandedTableView1.DataController.Filter.Options := cxGrid1DBBandedTableView1.DataController.Filter.Options + [fcoCaseInsensitive];
  cxGrid1DBBandedTableView1.DataController.Filter.Root.BoolOperatorKind := fboAnd;

  cxGrid1DBBandedTableView1.DataController.Filter.Root.AddItem(cxGrid1DBBandedTableView1cumID, foLike, '%' + IntToStr(doc_id) + '%', '[' + IntToStr(doc_id) + ']');
  cxGrid1DBBandedTableView1.DataController.Filter.Active := True;
end;

procedure TfmEtrCumulative.SetNum(cumNumber: string);
begin
  cxGrid1DBBandedTableView1.DataController.Filter.Clear;
  cxGrid1DBBandedTableView1.DataController.Filter.Options := cxGrid1DBBandedTableView1.DataController.Filter.Options + [fcoCaseInsensitive];
  cxGrid1DBBandedTableView1.DataController.Filter.Root.BoolOperatorKind := fboAnd;

  cxGrid1DBBandedTableView1.DataController.Filter.Root.AddItem(cxGrid1DBBandedTableView1cumNumber, foLike, '%' + cumNumber + '%', '[' + cumNumber + ']');
  cxGrid1DBBandedTableView1.DataController.Filter.Active := True;
end;

procedure TfmEtrCumulative.cxGrid1DBBandedTableView1CustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
  if AViewInfo.GridRecord.Selected or AViewInfo.GridRecord.Focused then begin
    ACanvas.Brush.Color := clNavy;
    ACanvas.Font.Color  := clWhite;
    if AViewInfo.Focused then ACanvas.Brush.Color := clBlue;
  end;
end;

procedure TfmEtrCumulative.cxGrid1DBBandedTableView1CustomDrawColumnHeader(
  Sender: TcxGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridColumnHeaderViewInfo; var ADone: Boolean);
begin
  if AViewInfo.Column.Focused then begin
    ACanvas.Brush.Color := clNavy;
    ACanvas.Font.Color := clWhite;
  end;

end;

procedure TfmEtrCumulative.cxGrid1DBBandedTableView1DataControllerFilterChanged(Sender: TObject);
begin
  DrawcxGridColumnOnFiltered(Sender);
end;

procedure TfmEtrCumulative.cxGrid1DBBandedTableView1FocusedItemChanged(
  Sender: TcxCustomGridTableView; APrevFocusedItem,
  AFocusedItem: TcxCustomGridTableItem);
begin
  Sender.Painter.Invalidate;
end;

procedure TfmEtrCumulative.cxGrid1DBBandedTableView1FocusedRecordChanged(
  Sender: TcxCustomGridTableView; APrevFocusedRecord,
  AFocusedRecord: TcxCustomGridRecord; ANewItemRecordFocusingChanged: Boolean);
begin
  Query_cumDue.Close;
  cxTextEdit1.EditValue := null;
  cxTextEdit2.EditValue := null;
  cxTextEdit4.EditValue := null;
  cxTextEdit3.EditValue := null;
  cxTextEdit7.EditValue := null;
  cxTextEdit8.EditValue := null;
  cxTextEdit15.EditValue := null;
  cxTextEdit16.EditValue := null;
  cxTextEdit9.EditValue := null;
  cxTextEdit10.EditValue := null;
  cxTextEdit11.EditValue := null;
  cxTextEdit12.EditValue := null;
  cxTextEdit13.EditValue := null;
  cxTextEdit14.EditValue := null;

  cxDateEdit1.EditValue := null;
  cxDateEdit2.EditValue := null;
  cxDateEdit3.EditValue := null;
  cxDateEdit4.EditValue := null;

  if (AFocusedRecord<>nil) AND ((cxGrid1DBBandedTableView1.GroupedColumnCount = 0) OR (AFocusedRecord.Level <> 0)) then begin
    Query_cumDue.Parameters.ParamByName('cumulative_id').Value := cxGrid1DBBandedTableView1cumulative_id.DataBinding.Field.Value;
    Query_cumDue.Open;

    cxTextEdit1.EditValue := cxGrid1DBBandedTableView1cumID.DataBinding.Field.Value;
    cxTextEdit2.EditValue := cxGrid1DBBandedTableView1cumState.DataBinding.Field.Value;
    cxTextEdit4.EditValue := cxGrid1DBBandedTableView1cumNeedForECP.DataBinding.Field.Value;
    cxTextEdit3.EditValue := cxGrid1DBBandedTableView1cumNumber.DataBinding.Field.Value;
    cxTextEdit7.EditValue := cxGrid1DBBandedTableView1cumTypeName.DataBinding.Field.Value;
    cxTextEdit8.EditValue := cxGrid1DBBandedTableView1cumRZDOrgName.DataBinding.Field.Value;
    cxTextEdit15.EditValue := cxGrid1DBBandedTableView1cumStationName.DataBinding.Field.Value;
    cxTextEdit16.EditValue := cxGrid1DBBandedTableView1cumStationCode.DataBinding.Field.Value;
    cxTextEdit9.EditValue := cxGrid1DBBandedTableView1cumPayerName.DataBinding.Field.Value;
    cxTextEdit10.EditValue := cxGrid1DBBandedTableView1cumPayerCode.DataBinding.Field.Value;
    cxTextEdit11.EditValue := cxGrid1DBBandedTableView1cumPayerOKPO.DataBinding.Field.Value;
    cxTextEdit12.EditValue := cxGrid1DBBandedTableView1cumContractor.DataBinding.Field.Value;
    cxTextEdit13.EditValue := cxGrid1DBBandedTableView1cumClientName.DataBinding.Field.Value;
    cxTextEdit14.EditValue := cxGrid1DBBandedTableView1cumClientName.DataBinding.Field.Value;

    cxDateEdit1.EditValue := cxGrid1DBBandedTableView1cumLastOper.DataBinding.Field.Value;
    cxDateEdit2.EditValue := cxGrid1DBBandedTableView1cumDateCreate.DataBinding.Field.Value;
    cxDateEdit3.EditValue := cxGrid1DBBandedTableView1cumStartDate.DataBinding.Field.Value;
    cxDateEdit4.EditValue := cxGrid1DBBandedTableView1cumFinishDate.DataBinding.Field.Value;
  end;
end;

procedure TfmEtrCumulative.cxGrid1DBBandedTableView1KeyPress(Sender: TObject; var Key: Char);
begin
  FilterColumnGridOnKeyPress(cxGrid1DBBandedTableView1, Key);
end;

procedure TfmEtrCumulative.cxGridDBBandedTableView1KeyPress(Sender: TObject; var Key: Char);
begin
  FilterColumnGridOnKeyPress(cxGridDBBandedTableView1, Key);
end;

procedure TfmEtrCumulative.dxBarButton11Click(Sender: TObject);
begin
 case TdxBarButton(Sender).ClickItemLink.Owner.Owner.Tag of
    0: PrintcxGrid(cxGrid1DBBandedTableView1);
    2: PrintcxGrid(cxGridDBBandedTableView1);
 end;
end;

procedure TfmEtrCumulative.dxBarButton14Click(Sender: TObject);
begin
  case TdxBarButton(Sender).ClickItemLink.Owner.Owner.Tag of
    0: SetdxDBGridColumns(cxGrid1DBBandedTableView1);
    2: SetdxDBGridColumns(cxGridDBBandedTableView1);
  end;
end;

procedure TfmEtrCumulative.dxBarButton15Click(Sender: TObject);
begin
  case TdxBarButton(Sender).ClickItemLink.Owner.Owner.Tag of
    0: cxGrid1DBBandedTableView1.OptionsView.GroupByBox := not cxGrid1DBBandedTableView1.OptionsView.GroupByBox;
    2: cxGridDBBandedTableView1.OptionsView.GroupByBox  := not cxGridDBBandedTableView1.OptionsView.GroupByBox;
  end;
end;

procedure TfmEtrCumulative.dxBarButton2Click(Sender: TObject);
begin
  Screen.Cursor := crHourglass;
  if TControl(Sender).Tag = 1 then begin
    Fdate1 := IncMonth(Fdate1, -1);
  end;

  if TControl(Sender).Tag = 2 then begin
    Fdate1 := IncMonth(Fdate1, 1);
  end;

  Fdate2 := IncMonth(Fdate1, 1) - 1;
  dxBarSubItem2.Caption := FormatDateTime('mmmm yyyy', Fdate1);

  Query_Cumulative.Close;
  Query_Cumulative.Parameters.ParamByName('date1').Value := Fdate1;
  Query_Cumulative.Parameters.ParamByName('date2').Value := Fdate2;
  Query_Cumulative.Open;

  Screen.Cursor := crDefault;
end;

procedure TfmEtrCumulative.dxBarButton4Click(Sender: TObject);
begin
  RefreshQueryGrid(cxGrid1DBBandedTableView1, 'cumulative_id');
end;

procedure TfmEtrCumulative.dxBarButton8Click(Sender: TObject);
begin
  fmPeriod := TfmPeriod.Create(Application, Fdate1, Fdate2, 3);
  if fmPeriod.ShowModal=mrOK then begin
    Fdate1 := fmPeriod._GetMonth;
    Fdate2 := IncMonth(Fdate1, 1);
    dxBarSubItem2.Caption := FormatDateTime('mmmm yyyy', Fdate1);
    Screen.Cursor := crHourGlass;
    Query_Cumulative.Close;
    Query_Cumulative.Parameters.ParamByName('date1').Value := Fdate1;
    Query_Cumulative.Parameters.ParamByName('date2').Value := Fdate2;
    Query_Cumulative.Open;
    Screen.Cursor := crDefault;
  end;
end;

procedure TfmEtrCumulative.dxBarButton9Click(Sender: TObject);
begin
  fmPeriod := TfmPeriod.Create(Application, Fdate1, Fdate2, 2);
  if fmPeriod.ShowModal=mrOK then begin
    Fdate1 := fmPeriod._GetMonthBegin;
    Fdate2 := fmPeriod._GetMonthEnd;
    dxBarSubItem2.Caption := FormatDateTime('mmm yy', Fdate1) + ' - ' + FormatDateTime('mmm yy', Fdate2);
    Screen.Cursor := crHourGlass;
    Query_Cumulative.Close;
    Query_Cumulative.Parameters.ParamByName('date1').Value := Fdate1;
    Query_Cumulative.Parameters.ParamByName('date2').Value := Fdate2;
    Query_Cumulative.Open;
    Screen.Cursor := crDefault;
  end;
end;

procedure TfmEtrCumulative.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TfmEtrCumulative.FormDestroy(Sender: TObject);
begin
  StoreRegistryGrid(rgSave,'\Software\Lis1\EtranCumulative\MainGrids', cxGrid1DBBandedTableView1);
  StoreRegistryGrid(rgSave,'\Software\Lis1\EtranCumulative\MainGrids', cxGridDBBandedTableView1);
  dxBarSubItem2.Caption := StoreRegistryDate(rgSave, '\Software\Lis1\DateTime\EtranCumulative', Fdate1, Fdate2);
end;

end.
