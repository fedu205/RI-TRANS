unit EtrOtstClaim;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxStyles, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint,
  dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMetropolis,
  dxSkinMetropolisDark, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue,
  dxSkinOffice2010Silver, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray,
  dxSkinOffice2013White, dxSkinOffice2016Colorful, dxSkinOffice2016Dark,
  dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus,
  dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008,
  dxSkinTheAsphaltWorld, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue, dxSkinscxPCPainter, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, cxNavigator, DB, cxDBData, cxContainer, ComCtrls,
  dxCore, cxDateUtils, dxBarBuiltInMenu, cxCurrencyEdit, dxSkinsdxBarPainter,
  dxBar, ADODB, cxClasses, cxPropertiesStore, ImgList, cxGridCustomTableView,
  cxGridTableView, cxGridBandedTableView, cxGridDBBandedTableView, cxPC,
  cxMaskEdit, cxDropDownEdit, cxCalendar, cxTextEdit, StdCtrls, ExtCtrls,
  cxGridLevel, cxGridCustomView, cxGrid, default, raznoe, DateUtils, Period,
  cxRichEdit, cxMemo, System.ImageList,
  cxDataControllerConditionalFormattingRulesManagerDialog, cxImageList, dxSkinOffice2019Colorful, dxSkinTheBezier, dxDateRanges,
  dxScrollbarAnnotations;

type
  TfmEtrOtstClaim = class(TForm)
    Splitter1: TSplitter;
    Panel1: TPanel;
    cxGrid1: TcxGrid;
    cxGrid1DBBandedTableView1: TcxGridDBBandedTableView;
    cxGrid1Level1: TcxGridLevel;
    Panel2: TPanel;
    Panel3: TPanel;
    GridPanel1: TGridPanel;
    Panel4: TPanel;
    Label1: TLabel;
    Label3: TLabel;
    Label34: TLabel;
    Label7: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    cxTextEdit100: TcxTextEdit;
    cxTextEdit102: TcxTextEdit;
    cxDateEdit100: TcxDateEdit;
    cxTextEdit105: TcxTextEdit;
    cxTextEdit108: TcxTextEdit;
    cxTextEdit107: TcxTextEdit;
    cxTextEdit106: TcxTextEdit;
    cxPageControl1: TcxPageControl;
    cxTabSheet1: TcxTabSheet;
    cxGrid2: TcxGrid;
    cxGrid2DBBandedTableView1: TcxGridDBBandedTableView;
    cxGrid2Level1: TcxGridLevel;
    ADOEtran: TADOConnection;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1: TcxStyle;
    cxImageList1: TcxImageList;
    cxPropertiesStore1: TcxPropertiesStore;
    dxBarManager1: TdxBarManager;
    dxBarManager1Bar1: TdxBar;
    dxBarButton1: TdxBarButton;
    dxBarSubItem2: TdxBarSubItem;
    dxBarButton2: TdxBarButton;
    dxBarButton3: TdxBarButton;
    Query_OtstClaim: TADOQuery;
    DS_OtstClaim: TDataSource;
    DS_Otpravka: TDataSource;
    Query_Otpravka: TADOQuery;
    cxGrid1DBBandedTableView1otst_claim_id: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1DocID: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1DocNum: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1Date_Claim: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1otstClaimStateID: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1otstClaimState: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1RW_Id: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1ClOKPO: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1ContractNum: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1Contract_Id: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1inf_obj_name: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1inf_obj_name_full: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1global_id: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1object_id: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1users_owner_id: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1date_enter: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1global_color: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1comment: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1ELS_cod: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1otst_otpravka_id: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1otst_claim_id: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1NumOtp: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1otprStationCode: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1otstStationCode: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1DateOtstBegin: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1DateOtstEnd: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1KolWag: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1Skidka: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1soglStationCode: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1negrSoglStationCode: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1Wags: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1otprstationname: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1otststationname: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1soglstationname: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1negrSoglStationname: TcxGridDBBandedColumn;
    dxBarPopupMenu1: TdxBarPopupMenu;
    dxBarButton4: TdxBarButton;
    dxBarSubItem3: TdxBarSubItem;
    dxBarButton5: TdxBarButton;
    dxBarButton6: TdxBarButton;
    dxBarPopupMenu2: TdxBarPopupMenu;
    dxBarButton7: TdxBarButton;
    dxBarSubItem4: TdxBarSubItem;
    dxBarButton8: TdxBarButton;
    dxBarButton9: TdxBarButton;
    dxBarButton10: TdxBarButton;
    procedure dxBarButton4Click(Sender: TObject);
    procedure dxBarButton5Click(Sender: TObject);
    procedure dxBarButton6Click(Sender: TObject);
    procedure dxBarButton7Click(Sender: TObject);
    procedure dxBarButton8Click(Sender: TObject);
    procedure dxBarButton9Click(Sender: TObject);
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
    procedure cxGrid1DBBandedTableView1FocusedRecordChanged(
      Sender: TcxCustomGridTableView; APrevFocusedRecord,
      AFocusedRecord: TcxCustomGridRecord;
      ANewItemRecordFocusingChanged: Boolean);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure dxBarButton2Click(Sender: TObject);
    procedure dxBarButton3Click(Sender: TObject);
    procedure dxBarButton1Click(Sender: TObject);
    procedure dxBarButton10Click(Sender: TObject);
  private
    Fusr_pwd         : PUser_pwd;
    Fusers_group_cod : string;
    Fdate1, Fdate2   : TDateTime;
    FdocNum : string;
    FNumOtp : string;
    Fcontract_num  : string;
    Fcontract_date : TDateTime;
    Fclaim_date    : TDateTime;
  public
    constructor Create(AOwner: TApplication; users_group_cod: string; usr_pwd: PUser_pwd; flag: boolean);
    procedure   SetPeriod(period_begin: TDateTime; period_end: TDateTime);
    procedure   SetId(doc_id: integer);
  published
    property _GetDocNum : string read FdocNum;
    property _GetNumOtp : string read FNumOtp;
    property _GetContractNum  : string read Fcontract_num;
    property _GetContractDate : TDateTime read Fcontract_date;
    property _GetClaimDate    : TDateTime read Fclaim_date;
  end;

var
  fmEtrOtstClaim: TfmEtrOtstClaim;

function CreateWndEtranOtstClaim(AppHand: THandle; users_group_cod: string; usr_pwd: PUser_pwd; flag: boolean): variant; export;
function CreateWndEtranOtstClaimFind(AppHand: THandle; doc_id: integer; num_vagon: integer; users_group_cod: string; usr_pwd:PUser_pwd) : variant; export;

implementation

uses EtrUtils;

{$R *.dfm}

function CreateWndEtranOtstClaimFind(AppHand: THandle; doc_id: integer; num_vagon: integer; users_group_cod: string; usr_pwd:PUser_pwd) : variant; export;
var Q: TADOQuery;
    d1,d2: TDateTime;
begin
//    Application.Handle := AppHand;
//  try
//    fmEtrOtstClaim := TfmEtrOtstClaim.Create(Application, users_group_cod, usr_pwd);
//
//    Screen.Cursor := -11;
//    Q := TADOQuery.Create(nil);
//    Q.Connection := fmEtrOtstClaim.ADOEtran;
//    Q.SQL.Add(' SELECT * FROM VPU WHERE vpuID = '+IntToStr(doc_id));
//    Q.Open;
//
//    d1 := StartOfTheMonth(Q.FieldByName('vpuDate').AsDateTime);
//    d2 := DateOf(EndOfTheMonth(Q.FieldByName('vpuDate').AsDateTime));
//    fmEtrOtstClaim.SetPeriod(d1,d2);
//    fmEtrOtstClaim.SetId(doc_id);
//    Q.Free;
//    //-- изменить по мере необходимости возвращаемых параметров
//    if  fmEtrOtstClaim.ShowModal = mrOk then result := VarArrayOf([-9, '']);
//  finally
//    fmEtrOtstClaim.Free;
//  end;
end;


function CreateWndEtranOtstClaim(AppHand: THandle; users_group_cod: string; usr_pwd: PUser_pwd; flag: boolean): variant; export;
begin
  Application.Handle := AppHand;
  try
    fmEtrOtstClaim := TfmEtrOtstClaim.Create(Application, users_group_cod, usr_pwd, flag);
    //-- изменить по мере необходимости возвращаемых параметров
    if  fmEtrOtstClaim.ShowModal = mrOk then
      result := VarArrayOf([fmEtrOtstClaim._GetDocNum, fmEtrOtstClaim._GetClaimDate, fmEtrOtstClaim._GetNumOtp, fmEtrOtstClaim._GetContractNum, fmEtrOtstClaim._GetContractDate]);
  finally
    fmEtrOtstClaim.Free;
  end;
end;

constructor TfmEtrOtstClaim.Create(AOwner: TApplication; users_group_cod: string; usr_pwd: PUser_pwd; flag: boolean);
begin
  Screen.Cursor := -11;
  inherited Create(nil);

  WindowState := wsMaximized;
  Fusr_pwd := usr_pwd;
  Fusers_group_cod := users_group_cod;

  FdocNum := '';
  FNumOtp := '';

  StoreRegistryGrid(rgLoad,'\Software\Lis1\EtranOtst\MainGrids', cxGrid1DBBandedTableView1);
  StoreRegistryGrid(rgLoad,'\Software\Lis1\EtranOtst\MainGrids', cxGrid2DBBandedTableView1);

  ADOEtran.Connected := False;
  ADOEtran.ConnectionString := GetEtranConnect(Fusers_group_cod, Fusr_pwd);
  ADOEtran.Connected := True;

  if flag then begin
    dxBarButton10.Visible := ivAlways;
    cxGrid1DBBandedTableView1.OnDblClick := dxBarButton10Click;
    cxGrid2DBBandedTableView1.OnDblClick := dxBarButton10Click;
  end else begin
    dxBarButton10.Visible := ivNever;
  end;

  dxBarSubItem2.Caption := StoreRegistryDate(rgLoad, '\Software\Lis1\DateTime\EtranOtst', Fdate1, Fdate2);

  cxGrid1DBBandedTableView1.OnFocusedRecordChanged := nil;
  Query_OtstClaim.Close;
  Query_OtstClaim.Parameters.ParamByName('date1').Value := Fdate1;
  Query_OtstClaim.Parameters.ParamByName('date2').Value := Fdate2;
  Query_OtstClaim.Open;
  cxGrid1DBBandedTableView1.OnFocusedRecordChanged := cxGrid1DBBandedTableView1FocusedRecordChanged;

  Screen.Cursor := 0;
end;


procedure   TfmEtrOtstClaim.SetPeriod(period_begin: TDateTime; period_end: TDateTime);
begin
  Fdate1 := period_begin;
  Fdate2 := period_end;
  dxBarSubItem2.Caption := FormatDateTime('mmmm yyyy', Fdate1);
  Screen.Cursor := crHourGlass;
  Query_OtstClaim.Close;
  Query_OtstClaim.Parameters.ParamByName('date1').Value := Fdate1;
  Query_OtstClaim.Parameters.ParamByName('date2').Value := Fdate2;
  Query_OtstClaim.Open;
  Screen.Cursor := crDefault;
end;

procedure   TfmEtrOtstClaim.SetId(doc_id: integer);
begin
  cxGrid1DBBandedTableView1.DataController.Filter.Clear;
  cxGrid1DBBandedTableView1.DataController.Filter.Options := cxGrid1DBBandedTableView1.DataController.Filter.Options + [fcoCaseInsensitive];
  cxGrid1DBBandedTableView1.DataController.Filter.Root.BoolOperatorKind := fboAnd;

  cxGrid1DBBandedTableView1.DataController.Filter.Root.AddItem(cxGrid1DBBandedTableView1DocID, foLike, '%' + IntToStr(doc_id) + '%', '[' + IntToStr(doc_id) + ']');
  cxGrid1DBBandedTableView1.DataController.Filter.Active := True;
end;


procedure TfmEtrOtstClaim.cxGrid1DBBandedTableView1CustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
	if AViewInfo.GridRecord.Selected or AViewInfo.GridRecord.Focused then begin
		ACanvas.Brush.Color := clNavy;
		ACanvas.Font.Color := clWhite;
		if AViewInfo.Focused then ACanvas.Brush.Color := clBlue;
	end;
end;

procedure TfmEtrOtstClaim.cxGrid1DBBandedTableView1CustomDrawColumnHeader(
  Sender: TcxGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridColumnHeaderViewInfo; var ADone: Boolean);
begin
	if AViewInfo.Column.Focused then begin
		ACanvas.Brush.Color := clNavy;
		ACanvas.Font.Color := clWhite;
	end;
end;

procedure TfmEtrOtstClaim.cxGrid1DBBandedTableView1FilterOnChanged(
  Sender: TObject);
begin
	DrawcxGridColumnOnFiltered(Sender);
end;

procedure TfmEtrOtstClaim.cxGrid1DBBandedTableView1FocusedItemChanged(
  Sender: TcxCustomGridTableView; APrevFocusedItem,
  AFocusedItem: TcxCustomGridTableItem);
begin
	cxGrid1DBBandedTableView1.Painter.Invalidate;
end;

procedure TfmEtrOtstClaim.cxGrid1DBBandedTableView1FocusedRecordChanged(
  Sender: TcxCustomGridTableView; APrevFocusedRecord,
  AFocusedRecord: TcxCustomGridRecord; ANewItemRecordFocusingChanged: Boolean);
begin
  Query_Otpravka.Close;

  cxTextEdit100.EditValue := null;
  cxTextEdit102.EditValue := null;
  cxTextEdit105.EditValue := null;
  cxTextEdit106.EditValue := null;
  cxTextEdit107.EditValue := null;
  cxTextEdit108.EditValue := null;
  cxDateEdit100.EditValue := null;

  if (AFocusedRecord<>nil) AND ((cxGrid1DBBandedTableView1.GroupedColumnCount = 0) OR (AFocusedRecord.Level <> 0)) then begin
    Query_Otpravka.Parameters.ParamByName('otst_claim_id').Value := cxGrid1DBBandedTableView1otst_claim_id.DataBinding.Field.Value;
    Query_Otpravka.Open;

    cxTextEdit100.EditValue := Query_OtstClaim.FieldByName('DocID').Value;
    cxTextEdit102.EditValue := Query_OtstClaim.FieldByName('DocNum').Value;
    cxTextEdit105.EditValue := Query_OtstClaim.FieldByName('otstClaimState').Value;
    cxTextEdit106.EditValue := Query_OtstClaim.FieldByName('inf_obj_name').Value;
    cxTextEdit107.EditValue := Query_OtstClaim.FieldByName('ClOKPO').Value;
    cxTextEdit108.EditValue := Query_OtstClaim.FieldByName('ContractNum').Value;
    cxDateEdit100.EditValue := Query_OtstClaim.FieldByName('Date_Claim').Value;
  end;
  cxPageControl1.Repaint;
end;

procedure TfmEtrOtstClaim.cxGrid1DBBandedTableView1KeyPress(Sender: TObject;
  var Key: Char);
begin
	FilterColumnGridOnKeyPress(cxGrid1DBBandedTableView1, Key);
end;

procedure TfmEtrOtstClaim.cxGrid2DBBandedTableView1CustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
//	if AViewInfo.GridRecord.Selected or AViewInfo.GridRecord.Focused then begin
//		ACanvas.Brush.Color := clNavy;
//		ACanvas.Font.Color := clWhite;
//		if AViewInfo.Focused then ACanvas.Brush.Color := clBlue;
//	end;
end;

procedure TfmEtrOtstClaim.cxGrid2DBBandedTableView1CustomDrawColumnHeader(
  Sender: TcxGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridColumnHeaderViewInfo; var ADone: Boolean);
begin
	if AViewInfo.Column.Focused then begin
		ACanvas.Brush.Color := clNavy;
		ACanvas.Font.Color := clWhite;
	end;
end;

procedure TfmEtrOtstClaim.cxGrid2DBBandedTableView1FilterOnChanged(
  Sender: TObject);
begin
	DrawcxGridColumnOnFiltered(Sender);
end;

procedure TfmEtrOtstClaim.cxGrid2DBBandedTableView1FocusedItemChanged(
  Sender: TcxCustomGridTableView; APrevFocusedItem,
  AFocusedItem: TcxCustomGridTableItem);
begin
	cxGrid2DBBandedTableView1.Painter.Invalidate;
end;

procedure TfmEtrOtstClaim.cxGrid2DBBandedTableView1KeyPress(Sender: TObject;
  var Key: Char);
begin
	FilterColumnGridOnKeyPress(cxGrid2DBBandedTableView1, Key);
end;

procedure TfmEtrOtstClaim.dxBarButton10Click(Sender: TObject);
begin
  FdocNum        := cxGrid1DBBandedTableView1DocNum.DataBinding.Field.Value;
  FNumOtp        := cxGrid2DBBandedTableView1NumOtp.DataBinding.Field.Value;
  Fcontract_num  := cxGrid1DBBandedTableView1ContractNum.DataBinding.Field.Value;
  Fcontract_date := StrToDate('01.09.2016');
  Fclaim_date    := cxGrid1DBBandedTableView1Date_Claim.DataBinding.Field.Value;

  ModalResult := mrOk;
end;

procedure TfmEtrOtstClaim.dxBarButton1Click(Sender: TObject);
begin
  RefreshQueryGrid(cxGrid1DBBandedTableView1, 'otst_claim_id');
end;

procedure TfmEtrOtstClaim.dxBarButton2Click(Sender: TObject);
begin
  fmPeriod := TfmPeriod.Create(Application, Fdate1, Fdate2, 3);
  if fmPeriod.ShowModal=mrOK then begin
    Fdate1 := fmPeriod._GetMonth;
    Fdate2 := IncMonth(Fdate1, 1);
    dxBarSubItem2.Caption := FormatDateTime('mmmm yyyy', Fdate1);
    Screen.Cursor := crHourGlass;
    Query_OtstClaim.Close;
    Query_OtstClaim.Parameters.ParamByName('date1').Value := Fdate1;
    Query_OtstClaim.Parameters.ParamByName('date2').Value := Fdate2;
    Query_OtstClaim.Open;
    Screen.Cursor := crDefault;
  end;
end;

procedure TfmEtrOtstClaim.dxBarButton3Click(Sender: TObject);
begin
  fmPeriod := TfmPeriod.Create(Application, Fdate1, Fdate2, 2);
  if fmPeriod.ShowModal=mrOK then begin
    Fdate1 := fmPeriod._GetMonthBegin;
    Fdate2 := fmPeriod._GetMonthEnd;
    dxBarSubItem2.Caption := FormatDateTime('mmm yy', Fdate1) + ' - ' + FormatDateTime('mmm yy', Fdate2);
    Screen.Cursor := crHourGlass;
    Query_OtstClaim.Close;
    Query_OtstClaim.Parameters.ParamByName('date1').Value := Fdate1;
    Query_OtstClaim.Parameters.ParamByName('date2').Value := Fdate2;
    Query_OtstClaim.Open;
    Screen.Cursor := crDefault;
  end;
end;

procedure TfmEtrOtstClaim.dxBarButton4Click(Sender: TObject);
begin
	PrintcxGrid(cxGrid1DBBandedTableView1);
end;

procedure TfmEtrOtstClaim.dxBarButton5Click(Sender: TObject);
begin
	SetdxDBGridColumns(cxGrid1DBBandedTableView1);
end;

procedure TfmEtrOtstClaim.dxBarButton6Click(Sender: TObject);
begin
	cxGrid1DBBandedTableView1.OptionsView.GroupByBox := not cxGrid1DBBandedTableView1.OptionsView.GroupByBox;
end;

procedure TfmEtrOtstClaim.dxBarButton7Click(Sender: TObject);
begin
	PrintcxGrid(cxGrid2DBBandedTableView1);
end;

procedure TfmEtrOtstClaim.dxBarButton8Click(Sender: TObject);
begin
	SetdxDBGridColumns(cxGrid2DBBandedTableView1);
end;

procedure TfmEtrOtstClaim.dxBarButton9Click(Sender: TObject);
begin
	cxGrid2DBBandedTableView1.OptionsView.GroupByBox := not cxGrid2DBBandedTableView1.OptionsView.GroupByBox;
end;

procedure TfmEtrOtstClaim.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TfmEtrOtstClaim.FormDestroy(Sender: TObject);
begin
  StoreRegistryGrid(rgSave,'\Software\Lis1\EtranOtst\MainGrids', cxGrid1DBBandedTableView1);
  StoreRegistryGrid(rgSave,'\Software\Lis1\EtranOtst\MainGrids', cxGrid2DBBandedTableView1);
  dxBarSubItem2.Caption := StoreRegistryDate(rgSave, '\Software\Lis1\DateTime\EtranOtst', Fdate1, Fdate2);
end;

end.
