unit EtrRegCont;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ADODB, dxBar, cxClasses, cxPropertiesStore, ImgList, cxGraphics,
  cxStyles, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxCustomData,
  cxFilter, cxData, cxDataStorage, cxEdit, cxDBData, cxCurrencyEdit, Raznoe,
  cxContainer, ExtCtrls, cxMaskEdit, cxDropDownEdit, cxCalendar, cxTextEdit, DateUtils,
  StdCtrls, cxGridLevel, cxGridCustomTableView, cxGridTableView, Default, Period,
  cxGridBandedTableView, cxGridDBBandedTableView, cxGridCustomView, cxGrid, cxPC,
  dxSkinsCore, dxSkinsDefaultPainters, dxSkinscxPCPainter, cxNavigator,
  ComCtrls, dxCore, cxDateUtils, dxBarBuiltInMenu, dxSkinsdxBarPainter,
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
  dxSkinSummer2008, dxSkinTheAsphaltWorld, dxSkinValentine,
  dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue, cxDataControllerConditionalFormattingRulesManagerDialog,
  System.ImageList, cxImageList, dxSkinOffice2019Colorful, dxSkinTheBezier, dxDateRanges;

type
  TfmEtrRegCont = class(TForm)
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
    Query_RegCont: TADOQuery;
    DS_RegCont: TDataSource;
    Panel1: TPanel;
    cxGrid1: TcxGrid;
    cxGrid1DBBandedTableView1: TcxGridDBBandedTableView;
    cxGrid1DBBandedTableView1rc_id: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1rcID: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1rcState: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1rcNumber: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1rcDate: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1rcStartDate: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1rcFinishDate: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1rcStationName: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1rcPayerName: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1cnt_rcRemove: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1cnt_rcCar: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1cnt_rcKRS: TcxGridDBBandedColumn;
    cxGrid1Level1: TcxGridLevel;
    Panel2: TPanel;
    Panel3: TPanel;
    GridPanel1: TGridPanel;
    Panel4: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label34: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label9: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    cxTextEdit100: TcxTextEdit;
    cxTextEdit101: TcxTextEdit;
    cxTextEdit102: TcxTextEdit;
    cxDateEdit100: TcxDateEdit;
    cxDateEdit101: TcxDateEdit;
    cxDateEdit102: TcxDateEdit;
    cxDateEdit103: TcxDateEdit;
    cxTextEdit105: TcxTextEdit;
    cxTextEdit104: TcxTextEdit;
    cxTextEdit103: TcxTextEdit;
    cxTextEdit107: TcxTextEdit;
    cxTextEdit106: TcxTextEdit;
    Panel5: TPanel;
    Label31: TLabel;
    Label30: TLabel;
    Label38: TLabel;
    cxTextEdit131: TcxTextEdit;
    cxDateEdit105: TcxDateEdit;
    cxDateEdit106: TcxDateEdit;
    cxPageControl1: TcxPageControl;
    cxTabSheet1: TcxTabSheet;
    cxGrid2: TcxGrid;
    cxGrid2DBBandedTableView1: TcxGridDBBandedTableView;
    cxGrid2Level1: TcxGridLevel;
    cxTabSheet2: TcxTabSheet;
    cxGrid3: TcxGrid;
    cxGridDBBandedTableView1: TcxGridDBBandedTableView;
    cxGridLevel1: TcxGridLevel;
    cxTabSheet3: TcxTabSheet;
    cxGrid4: TcxGrid;
    cxGridDBBandedTableView2: TcxGridDBBandedTableView;
    cxGridLevel2: TcxGridLevel;
    Splitter1: TSplitter;
    cxTextEdit110: TcxTextEdit;
    cxTextEdit111: TcxTextEdit;
    Label13: TLabel;
    Label14: TLabel;
    Label19: TLabel;
    cxTextEdit113: TcxTextEdit;
    cxTextEdit108: TcxTextEdit;
    Label10: TLabel;
    DS_rcCont: TDataSource;
    Query_rcCont: TADOQuery;
    Query_rcRemove: TADOQuery;
    DS_rcRemove: TDataSource;
    Query_rcKRS: TADOQuery;
    DS_rcKRS: TDataSource;
    cxGrid2DBBandedTableView1rcRemove_id: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1RegCont_id: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1remNumber: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1remDate: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1remHour: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1remContTurn: TcxGridDBBandedColumn;
    cxGridDBBandedTableView1rcCont_id: TcxGridDBBandedColumn;
    cxGridDBBandedTableView1RegCont_id: TcxGridDBBandedColumn;
    cxGridDBBandedTableView1contRemoveNumber: TcxGridDBBandedColumn;
    cxGridDBBandedTableView1contDeliverNumber: TcxGridDBBandedColumn;
    cxGridDBBandedTableView1contCar: TcxGridDBBandedColumn;
    cxGridDBBandedTableView1contNumber: TcxGridDBBandedColumn;
    cxGridDBBandedTableView1contOwnerTypeID: TcxGridDBBandedColumn;
    cxGridDBBandedTableView1contOwnerTypeName: TcxGridDBBandedColumn;
    cxGridDBBandedTableView1contSNG: TcxGridDBBandedColumn;
    cxGridDBBandedTableView1contTypeID: TcxGridDBBandedColumn;
    cxGridDBBandedTableView1contDeliverDate: TcxGridDBBandedColumn;
    cxGridDBBandedTableView1contLoadingDate: TcxGridDBBandedColumn;
    cxGridDBBandedTableView1contHolidays: TcxGridDBBandedColumn;
    cxGridDBBandedTableView1contNoPaidTime: TcxGridDBBandedColumn;
    cxGridDBBandedTableView1contCalcTime: TcxGridDBBandedColumn;
    cxGridDBBandedTableView1contDueTime: TcxGridDBBandedColumn;
    cxGridDBBandedTableView1contPenaltyTime: TcxGridDBBandedColumn;
    cxGridDBBandedTableView1contGU23Loading: TcxGridDBBandedColumn;
    cxGridDBBandedTableView1contGU23LoadingStartDate: TcxGridDBBandedColumn;
    cxGridDBBandedTableView1contGU23LoadingFinishDate: TcxGridDBBandedColumn;
    cxGridDBBandedTableView1contGU23LoadingTime: TcxGridDBBandedColumn;
    cxGridDBBandedTableView1contGU23: TcxGridDBBandedColumn;
    cxGridDBBandedTableView1contGU23StartDate: TcxGridDBBandedColumn;
    cxGridDBBandedTableView1contGU23FinishDate: TcxGridDBBandedColumn;
    cxGridDBBandedTableView1contGU23Time: TcxGridDBBandedColumn;
    cxGridDBBandedTableView1contGU23Coeff: TcxGridDBBandedColumn;
    cxGridDBBandedTableView1contGU23Due: TcxGridDBBandedColumn;
    cxGridDBBandedTableView1contDue: TcxGridDBBandedColumn;
    cxGridDBBandedTableView1contDuePenalty: TcxGridDBBandedColumn;
    cxGridDBBandedTableView1contDueAll: TcxGridDBBandedColumn;
    cxGridDBBandedTableView1contNote: TcxGridDBBandedColumn;
    cxGridDBBandedTableView2rcKRS_id: TcxGridDBBandedColumn;
    cxGridDBBandedTableView2RegCont_id: TcxGridDBBandedColumn;
    cxGridDBBandedTableView2krsNumber: TcxGridDBBandedColumn;
    cxGridDBBandedTableView2krsDueCode: TcxGridDBBandedColumn;
    cxGridDBBandedTableView2krsDueName: TcxGridDBBandedColumn;
    cxGridDBBandedTableView2krsDue: TcxGridDBBandedColumn;
    dxBarPopupMenu1: TdxBarPopupMenu;
    dxBarButton4: TdxBarButton;
    dxBarSubItem3: TdxBarSubItem;
    dxBarButton5: TdxBarButton;
    dxBarButton6: TdxBarButton;
    dxBarButton7: TdxBarButton;
    dxBarButton8: TdxBarButton;
    dxBarPopupMenu2: TdxBarPopupMenu;
    dxBarButton9: TdxBarButton;
    dxBarSubItem4: TdxBarSubItem;
    dxBarButton10: TdxBarButton;
    dxBarButton11: TdxBarButton;
    dxBarButton12: TdxBarButton;
    dxBarButton13: TdxBarButton;
    dxBarPopupMenu3: TdxBarPopupMenu;
    dxBarButton14: TdxBarButton;
    dxBarSubItem5: TdxBarSubItem;
    dxBarButton15: TdxBarButton;
    dxBarButton16: TdxBarButton;
    dxBarButton17: TdxBarButton;
    dxBarButton18: TdxBarButton;
    dxBarPopupMenu4: TdxBarPopupMenu;
    dxBarButton19: TdxBarButton;
    dxBarSubItem6: TdxBarSubItem;
    dxBarButton20: TdxBarButton;
    dxBarButton21: TdxBarButton;
    dxBarButton22: TdxBarButton;
    dxBarButton23: TdxBarButton;
    dxBarButton24: TdxBarButton;
    dxBarButton25: TdxBarButton;
    procedure dxBarButton1Click(Sender: TObject);
    procedure cxGrid1DBBandedTableView1FocusedRecordChanged(
      Sender: TcxCustomGridTableView; APrevFocusedRecord,
      AFocusedRecord: TcxCustomGridRecord;
      ANewItemRecordFocusingChanged: Boolean);
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
    procedure cxGridDBBandedTableView1FilterOnChanged(Sender: TObject);
    procedure cxGridDBBandedTableView2FilterOnChanged(Sender: TObject);
    procedure cxGridDBBandedTableView2CustomDrawCell(
      Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
      AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
    procedure cxGridDBBandedTableView1CustomDrawColumnHeader(
      Sender: TcxGridTableView; ACanvas: TcxCanvas;
      AViewInfo: TcxGridColumnHeaderViewInfo; var ADone: Boolean);
    procedure cxGridDBBandedTableView1FocusedItemChanged(
      Sender: TcxCustomGridTableView; APrevFocusedItem,
      AFocusedItem: TcxCustomGridTableItem);
    procedure cxGrid2DBBandedTableView1FocusedItemChanged(
      Sender: TcxCustomGridTableView; APrevFocusedItem,
      AFocusedItem: TcxCustomGridTableItem);
    procedure cxGrid2DBBandedTableView1KeyPress(Sender: TObject; var Key: Char);
    procedure cxGrid2DBBandedTableView1CustomDrawColumnHeader(
      Sender: TcxGridTableView; ACanvas: TcxCanvas;
      AViewInfo: TcxGridColumnHeaderViewInfo; var ADone: Boolean);
    procedure cxGridDBBandedTableView1CustomDrawCell(
      Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
      AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
    procedure cxGridDBBandedTableView2CustomDrawColumnHeader(
      Sender: TcxGridTableView; ACanvas: TcxCanvas;
      AViewInfo: TcxGridColumnHeaderViewInfo; var ADone: Boolean);
    procedure cxGridDBBandedTableView2KeyPress(Sender: TObject; var Key: Char);
    procedure cxGridDBBandedTableView1KeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure dxBarButton2Click(Sender: TObject);
    procedure dxBarButton3Click(Sender: TObject);
    procedure dxBarButton4Click(Sender: TObject);
    procedure dxBarButton5Click(Sender: TObject);
    procedure dxBarButton6Click(Sender: TObject);
    procedure dxBarButton7Click(Sender: TObject);
    procedure dxBarButton8Click(Sender: TObject);
    procedure dxBarButton9Click(Sender: TObject);
    procedure dxBarButton10Click(Sender: TObject);
    procedure dxBarButton11Click(Sender: TObject);
    procedure dxBarButton12Click(Sender: TObject);
    procedure dxBarButton13Click(Sender: TObject);
    procedure dxBarButton14Click(Sender: TObject);
    procedure dxBarButton15Click(Sender: TObject);
    procedure dxBarButton16Click(Sender: TObject);
    procedure dxBarButton17Click(Sender: TObject);
    procedure dxBarButton18Click(Sender: TObject);
    procedure dxBarButton19Click(Sender: TObject);
    procedure dxBarButton20Click(Sender: TObject);
    procedure dxBarButton21Click(Sender: TObject);
    procedure dxBarButton22Click(Sender: TObject);
    procedure dxBarButton23Click(Sender: TObject);
    procedure dxBarButton25Click(Sender: TObject);
  private
    Fusr_pwd         : PUser_pwd;
    Fusers_group_cod : string;
    Fdate1, Fdate2   : TDateTime;
  public
    constructor Create(AOwner: TApplication; users_group_cod: string; usr_pwd: PUser_pwd);
    procedure   SetPeriod(period_begin: TDateTime; period_end: TDateTime);
    procedure   SetId(doc_id: integer);
  end;

var
  fmEtrRegCont: TfmEtrRegCont;

function CreateWndEtranRegCont(AppHand: THandle; users_group_cod: string; usr_pwd: PUser_pwd): variant; export;
function CreateWndEtranRegContFind(AppHand: THandle; doc_id: integer; num_vagon: integer; users_group_cod: string; usr_pwd:PUser_pwd) : variant; export;

implementation

uses EtrUtils;

{$R *.dfm}

function CreateWndEtranRegContFind(AppHand: THandle; doc_id: integer; num_vagon: integer; users_group_cod: string; usr_pwd:PUser_pwd) : variant; export;
var Q: TADOQuery;
    d1,d2: TDateTime;
begin
    Application.Handle := AppHand;
  try
    fmEtrRegCont:= TfmEtrRegCont.Create(Application, users_group_cod, usr_pwd);

    Screen.Cursor := -11;
    Q := TADOQuery.Create(nil);
    Q.Connection := fmEtrRegCont.ADOEtran;
    Q.SQL.Add(' SELECT * FROM RegCont WHERE rcID = '+IntToStr(doc_id));
    Q.Open;

    d1 := StartOfTheMonth(Q.FieldByName('rcDate').AsDateTime);
    d2 := DateOf(EndOfTheMonth(Q.FieldByName('rcDate').AsDateTime));
    fmEtrRegCont.SetPeriod(d1,d2);
    fmEtrRegCont.SetId(doc_id);
    Q.Free;
    //-- изменить по мере необходимости возвращаемых параметров
    if  fmEtrRegCont.ShowModal = mrOk then result := VarArrayOf([-9, '']);
  finally
    fmEtrRegCont.Free;
  end;
end;


function CreateWndEtranRegCont(AppHand: THandle; users_group_cod: string; usr_pwd: PUser_pwd): variant; export;
begin
    Application.Handle := AppHand;
  try
    fmEtrRegCont := TfmEtrRegCont.Create(Application, users_group_cod, usr_pwd);
    //-- изменить по мере необходимости возвращаемых параметров
    if  fmEtrRegCont.ShowModal = mrOk then result := VarArrayOf([-9, '']);
  finally
    fmEtrRegCont.Free;
  end;
end;

constructor TfmEtrRegCont.Create(AOwner: TApplication; users_group_cod: string; usr_pwd: PUser_pwd);
begin
  Screen.Cursor := -11;
  inherited Create(nil);

  WindowState := wsMaximized;
  Fusr_pwd := usr_pwd;
  Fusers_group_cod := users_group_cod;
  StoreRegistryGrid(rgLoad,'\Software\Lis1\EtranRegCont\MainGrids', cxGrid1DBBandedTableView1);
  StoreRegistryGrid(rgLoad,'\Software\Lis1\EtranRegCont\MainGrids', cxGrid2DBBandedTableView1);
  StoreRegistryGrid(rgLoad,'\Software\Lis1\EtranRegCont\MainGrids', cxGridDBBandedTableView1);
  StoreRegistryGrid(rgLoad,'\Software\Lis1\EtranRegCont\MainGrids', cxGridDBBandedTableView2);


  ADOEtran.Connected := False;
  ADOEtran.ConnectionString := GetEtranConnect(Fusers_group_cod, Fusr_pwd);
  ADOEtran.Connected := True;


  dxBarSubItem2.Caption := StoreRegistryDate(rgLoad, '\Software\Lis1\DateTime\EtranRegCont', Fdate1, Fdate2);

  Query_RegCont.Close;
  Query_RegCont.Parameters.ParamByName('date1').Value := Fdate1;
  Query_RegCont.Parameters.ParamByName('date2').Value := Fdate2;
  Query_RegCont.Open;

  Screen.Cursor := 0;
end;


procedure   TfmEtrRegCont.SetPeriod(period_begin: TDateTime; period_end: TDateTime);
begin
  Fdate1 := period_begin;
  Fdate2 := period_end;
  dxBarSubItem2.Caption := FormatDateTime('mmmm yyyy', Fdate1);
  Screen.Cursor := crHourGlass;
  Query_RegCont.Close;
  Query_RegCont.Parameters.ParamByName('date1').Value := Fdate1;
  Query_RegCont.Parameters.ParamByName('date2').Value := Fdate2;
  Query_RegCont.Open;
  Screen.Cursor := crDefault;
end;

procedure   TfmEtrRegCont.SetId(doc_id: integer);
begin
  cxGrid1DBBandedTableView1.DataController.Filter.Clear;
  cxGrid1DBBandedTableView1.DataController.Filter.Options := cxGrid1DBBandedTableView1.DataController.Filter.Options + [fcoCaseInsensitive];
  cxGrid1DBBandedTableView1.DataController.Filter.Root.BoolOperatorKind := fboAnd;

  cxGrid1DBBandedTableView1.DataController.Filter.Root.AddItem(cxGrid1DBBandedTableView1rcID, foLike, '%' + IntToStr(doc_id) + '%', '[' + IntToStr(doc_id) + ']');
  cxGrid1DBBandedTableView1.DataController.Filter.Active := True;
end;

procedure TfmEtrRegCont.cxGrid1DBBandedTableView1CustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
	if AViewInfo.GridRecord.Selected or AViewInfo.GridRecord.Focused then begin
		ACanvas.Brush.Color := clNavy;
		ACanvas.Font.Color := clWhite;
		if AViewInfo.Focused then ACanvas.Brush.Color := clBlue;
	end;
end;

procedure TfmEtrRegCont.cxGrid1DBBandedTableView1CustomDrawColumnHeader(
  Sender: TcxGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridColumnHeaderViewInfo; var ADone: Boolean);
begin
	if AViewInfo.Column.Focused then begin
		ACanvas.Brush.Color := clNavy;
		ACanvas.Font.Color := clWhite;
	end;
end;

procedure TfmEtrRegCont.cxGrid1DBBandedTableView1FilterOnChanged(
  Sender: TObject);
begin
	DrawcxGridColumnOnFiltered(Sender);
end;

procedure TfmEtrRegCont.cxGrid1DBBandedTableView1FocusedItemChanged(
  Sender: TcxCustomGridTableView; APrevFocusedItem,
  AFocusedItem: TcxCustomGridTableItem);
begin
	cxGrid1DBBandedTableView1.Painter.Invalidate;
end;

procedure TfmEtrRegCont.cxGrid1DBBandedTableView1FocusedRecordChanged(
  Sender: TcxCustomGridTableView; APrevFocusedRecord,
  AFocusedRecord: TcxCustomGridRecord; ANewItemRecordFocusingChanged: Boolean);
begin
  Query_rcKRS.Close;
  Query_rcRemove.Close;
  Query_rcCont.Close;

  cxTextEdit100.EditValue := null;
  cxTextEdit101.EditValue := null;
  cxTextEdit102.EditValue := null;
  cxTextEdit103.EditValue := null;
  cxTextEdit104.EditValue := null;
  cxTextEdit105.EditValue := null;
  cxTextEdit106.EditValue := null;
  cxTextEdit107.EditValue := null;
  cxTextEdit108.EditValue := null;
  cxTextEdit110.EditValue := null;
  cxTextEdit111.EditValue := null;
  cxTextEdit113.EditValue := null;
  cxTextEdit131.EditValue := null;
  cxDateEdit100.EditValue := null;
  cxDateEdit101.EditValue := null;
  cxDateEdit102.EditValue := null;
  cxDateEdit103.EditValue := null;
  cxDateEdit105.EditValue := null;
  cxDateEdit106.EditValue := null;

  if (AFocusedRecord<>nil) AND ((cxGrid1DBBandedTableView1.GroupedColumnCount = 0) OR (AFocusedRecord.Level <> 0)) then begin
    Query_rcKRS.Parameters.ParamByName('regcont_id').Value := cxGrid1DBBandedTableView1rc_id.DataBinding.Field.Value;
    Query_rcRemove.Parameters.ParamByName('regcont_id').Value := cxGrid1DBBandedTableView1rc_id.DataBinding.Field.Value;
    Query_rcCont.Parameters.ParamByName('regcont_id').Value := cxGrid1DBBandedTableView1rc_id.DataBinding.Field.Value;
    Query_rcKRS.Open;
    Query_rcRemove.Open;
    Query_rcCont.Open;

    cxTextEdit100.EditValue := Query_RegCont.FieldByName('rcID').Value;
    cxTextEdit101.EditValue := Query_RegCont.FieldByName('rcState').Value;
    cxTextEdit102.EditValue := Query_RegCont.FieldByName('rcNumber').Value;
    cxTextEdit103.EditValue := Query_RegCont.FieldByName('rcStationCode').Value;
    cxTextEdit104.EditValue := Query_RegCont.FieldByName('rcStationName').Value;
    cxTextEdit105.EditValue := Query_RegCont.FieldByName('rcContract').Value;
    cxTextEdit106.EditValue := Query_RegCont.FieldByName('rcPayerName').Value;
    cxTextEdit107.EditValue := Query_RegCont.FieldByName('rcPayerOKPO').Value;
    cxTextEdit108.EditValue := Query_RegCont.FieldByName('rcPayerCode').Value;
    cxTextEdit110.EditValue := Query_RegCont.FieldByName('rcCommonUse').Value;
    cxTextEdit111.EditValue := Query_RegCont.FieldByName('rcNoPaidTime').Value;
    cxTextEdit113.EditValue := Query_RegCont.FieldByName('rcDblTurnTime').Value;
    cxTextEdit131.EditValue := Query_RegCont.FieldByName('rcNote').Value;
    cxDateEdit100.EditValue := Query_RegCont.FieldByName('rcDate').Value;
    cxDateEdit101.EditValue := Query_RegCont.FieldByName('rcStartDate').Value;
    cxDateEdit102.EditValue := Query_RegCont.FieldByName('rcFinishDate').Value;
    cxDateEdit103.EditValue := Query_RegCont.FieldByName('rcLastOper').Value;
    cxDateEdit105.EditValue := Query_RegCont.FieldByName('rcOrderStartDate').Value;
    cxDateEdit106.EditValue := Query_RegCont.FieldByName('rcOrderFinishDate').Value;
  end;
  cxPageControl1.Repaint;
end;

procedure TfmEtrRegCont.dxBarButton10Click(Sender: TObject);
begin
	SetdxDBGridColumns(cxGrid2DBBandedTableView1);
end;

procedure TfmEtrRegCont.dxBarButton11Click(Sender: TObject);
begin
	cxGrid2DBBandedTableView1.OptionsView.GroupByBox := not cxGrid2DBBandedTableView1.OptionsView.GroupByBox;
end;

procedure TfmEtrRegCont.dxBarButton12Click(Sender: TObject);
begin
	FiltercxGrid4ListID(cxGrid2DBBandedTableView1);
end;

procedure TfmEtrRegCont.dxBarButton13Click(Sender: TObject);
begin
	cxGrid2DBBandedTableView1.Filtering.ColumnFilteredItemsList := not dxBarButton13.Down;
end;

procedure TfmEtrRegCont.dxBarButton14Click(Sender: TObject);
begin
	PrintcxGrid(cxGridDBBandedTableView1);
end;

procedure TfmEtrRegCont.dxBarButton15Click(Sender: TObject);
begin
	SetdxDBGridColumns(cxGridDBBandedTableView1);
end;

procedure TfmEtrRegCont.dxBarButton16Click(Sender: TObject);
begin
	cxGridDBBandedTableView1.OptionsView.GroupByBox := not cxGridDBBandedTableView1.OptionsView.GroupByBox;
end;

procedure TfmEtrRegCont.dxBarButton17Click(Sender: TObject);
begin
	FiltercxGrid4ListID(cxGridDBBandedTableView1);
end;

procedure TfmEtrRegCont.dxBarButton18Click(Sender: TObject);
begin
	cxGridDBBandedTableView1.Filtering.ColumnFilteredItemsList := not dxBarButton18.Down;
end;

procedure TfmEtrRegCont.dxBarButton19Click(Sender: TObject);
begin
	PrintcxGrid(cxGridDBBandedTableView2);
end;

procedure TfmEtrRegCont.dxBarButton1Click(Sender: TObject);
begin
  RefreshQueryGrid(cxGrid1DBBandedTableView1, 'regcont_id');
end;

procedure TfmEtrRegCont.dxBarButton20Click(Sender: TObject);
begin
	SetdxDBGridColumns(cxGridDBBandedTableView2);
end;

procedure TfmEtrRegCont.dxBarButton21Click(Sender: TObject);
begin
	cxGridDBBandedTableView2.OptionsView.GroupByBox := not cxGridDBBandedTableView2.OptionsView.GroupByBox;
end;

procedure TfmEtrRegCont.dxBarButton22Click(Sender: TObject);
begin
	FiltercxGrid4ListID(cxGridDBBandedTableView2);
end;

procedure TfmEtrRegCont.dxBarButton23Click(Sender: TObject);
begin
	cxGridDBBandedTableView2.Filtering.ColumnFilteredItemsList := not dxBarButton23.Down;
end;

procedure TfmEtrRegCont.dxBarButton25Click(Sender: TObject);
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

  Query_RegCont.Close;
  Query_RegCont.Parameters.ParamByName('date1').Value := Fdate1;
  Query_RegCont.Parameters.ParamByName('date2').Value := Fdate2;
  Query_RegCont.Open;

  Screen.Cursor := crDefault;
end;

procedure TfmEtrRegCont.dxBarButton2Click(Sender: TObject);
begin
  fmPeriod := TfmPeriod.Create(Application, Fdate1, Fdate2, 3);
  if fmPeriod.ShowModal=mrOK then begin
    Fdate1 := fmPeriod._GetMonth;
    Fdate2 := IncMonth(Fdate1, 1);
    dxBarSubItem2.Caption := FormatDateTime('mmmm yyyy', Fdate1);
    Screen.Cursor := crHourGlass;
    Query_RegCont.Close;
    Query_RegCont.Parameters.ParamByName('date1').Value := Fdate1;
    Query_RegCont.Parameters.ParamByName('date2').Value := Fdate2;
    Query_RegCont.Open;
    Screen.Cursor := crDefault;
  end;
end;

procedure TfmEtrRegCont.dxBarButton3Click(Sender: TObject);
begin
 fmPeriod := TfmPeriod.Create(Application, Fdate1, Fdate2, 2);
  if fmPeriod.ShowModal=mrOK then begin
    Fdate1 := fmPeriod._GetMonthBegin;
    Fdate2 := fmPeriod._GetMonthEnd;
    dxBarSubItem2.Caption := FormatDateTime('mmm yy', Fdate1) + ' - ' + FormatDateTime('mmm yy', Fdate2);
    Screen.Cursor := crHourGlass;
    Query_RegCont.Close;
    Query_RegCont.Parameters.ParamByName('date1').Value := Fdate1;
    Query_RegCont.Parameters.ParamByName('date2').Value := Fdate2;
    Query_RegCont.Open;
    Screen.Cursor := crDefault;
  end;
end;

procedure TfmEtrRegCont.dxBarButton4Click(Sender: TObject);
begin
	PrintcxGrid(cxGrid1DBBandedTableView1);
end;

procedure TfmEtrRegCont.dxBarButton5Click(Sender: TObject);
begin
	SetdxDBGridColumns(cxGrid1DBBandedTableView1);
end;

procedure TfmEtrRegCont.dxBarButton6Click(Sender: TObject);
begin
	cxGrid1DBBandedTableView1.OptionsView.GroupByBox := not cxGrid1DBBandedTableView1.OptionsView.GroupByBox;
end;

procedure TfmEtrRegCont.dxBarButton7Click(Sender: TObject);
begin
	FiltercxGrid4ListID(cxGrid1DBBandedTableView1);
end;

procedure TfmEtrRegCont.dxBarButton8Click(Sender: TObject);
begin
	cxGrid1DBBandedTableView1.Filtering.ColumnFilteredItemsList := not dxBarButton8.Down;
end;

procedure TfmEtrRegCont.dxBarButton9Click(Sender: TObject);
begin
	PrintcxGrid(cxGrid2DBBandedTableView1);
end;

procedure TfmEtrRegCont.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TfmEtrRegCont.FormDestroy(Sender: TObject);
begin
  StoreRegistryGrid(rgSave,'\Software\Lis1\EtranRegCont\MainGrids', cxGrid1DBBandedTableView1);
  StoreRegistryGrid(rgSave,'\Software\Lis1\EtranRegCont\MainGrids', cxGrid2DBBandedTableView1);
  StoreRegistryGrid(rgSave,'\Software\Lis1\EtranRegCont\MainGrids', cxGridDBBandedTableView1);
  StoreRegistryGrid(rgSave,'\Software\Lis1\EtranRegCont\MainGrids', cxGridDBBandedTableView2);
  dxBarSubItem2.Caption := StoreRegistryDate(rgSave, '\Software\Lis1\DateTime\EtranRegCont', Fdate1, Fdate2);
end;

procedure TfmEtrRegCont.cxGrid1DBBandedTableView1KeyPress(Sender: TObject;
  var Key: Char);
begin
	FilterColumnGridOnKeyPress(cxGrid1DBBandedTableView1, Key);
end;

procedure TfmEtrRegCont.cxGrid2DBBandedTableView1CustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
	if AViewInfo.GridRecord.Selected or AViewInfo.GridRecord.Focused then begin
		ACanvas.Brush.Color := clNavy;
		ACanvas.Font.Color := clWhite;
		if AViewInfo.Focused then ACanvas.Brush.Color := clBlue;
	end;
end;

procedure TfmEtrRegCont.cxGrid2DBBandedTableView1CustomDrawColumnHeader(
  Sender: TcxGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridColumnHeaderViewInfo; var ADone: Boolean);
begin
	if AViewInfo.Column.Focused then begin
		ACanvas.Brush.Color := clNavy;
		ACanvas.Font.Color := clWhite;
	end;
end;

procedure TfmEtrRegCont.cxGrid2DBBandedTableView1FilterOnChanged(
  Sender: TObject);
begin
	DrawcxGridColumnOnFiltered(Sender);
end;

procedure TfmEtrRegCont.cxGrid2DBBandedTableView1FocusedItemChanged(
  Sender: TcxCustomGridTableView; APrevFocusedItem,
  AFocusedItem: TcxCustomGridTableItem);
begin
	cxGrid2DBBandedTableView1.Painter.Invalidate;
end;

procedure TfmEtrRegCont.cxGrid2DBBandedTableView1KeyPress(Sender: TObject;
  var Key: Char);
begin
	FilterColumnGridOnKeyPress(cxGrid2DBBandedTableView1, Key);
end;

procedure TfmEtrRegCont.cxGridDBBandedTableView1CustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
	if AViewInfo.GridRecord.Selected or AViewInfo.GridRecord.Focused then begin
		ACanvas.Brush.Color := clNavy;
		ACanvas.Font.Color := clWhite;
		if AViewInfo.Focused then ACanvas.Brush.Color := clBlue;
	end;
end;

procedure TfmEtrRegCont.cxGridDBBandedTableView1CustomDrawColumnHeader(
  Sender: TcxGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridColumnHeaderViewInfo; var ADone: Boolean);
begin
	if AViewInfo.Column.Focused then begin
		ACanvas.Brush.Color := clNavy;
		ACanvas.Font.Color := clWhite;
	end;
end;

procedure TfmEtrRegCont.cxGridDBBandedTableView1FilterOnChanged(
  Sender: TObject);
begin
	DrawcxGridColumnOnFiltered(Sender);
end;

procedure TfmEtrRegCont.cxGridDBBandedTableView1FocusedItemChanged(
  Sender: TcxCustomGridTableView; APrevFocusedItem,
  AFocusedItem: TcxCustomGridTableItem);
begin
	cxGridDBBandedTableView1.Painter.Invalidate;
end;

procedure TfmEtrRegCont.cxGridDBBandedTableView1KeyPress(Sender: TObject;
  var Key: Char);
begin
	FilterColumnGridOnKeyPress(cxGridDBBandedTableView1, Key);
end;

procedure TfmEtrRegCont.cxGridDBBandedTableView2CustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
	if AViewInfo.GridRecord.Selected or AViewInfo.GridRecord.Focused then begin
		ACanvas.Brush.Color := clNavy;
		ACanvas.Font.Color := clWhite;
		if AViewInfo.Focused then ACanvas.Brush.Color := clBlue;
	end;
end;

procedure TfmEtrRegCont.cxGridDBBandedTableView2CustomDrawColumnHeader(
  Sender: TcxGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridColumnHeaderViewInfo; var ADone: Boolean);
begin
	if AViewInfo.Column.Focused then begin
		ACanvas.Brush.Color := clNavy;
		ACanvas.Font.Color := clWhite;
	end;
end;

procedure TfmEtrRegCont.cxGridDBBandedTableView2FilterOnChanged(
  Sender: TObject);
begin
	DrawcxGridColumnOnFiltered(Sender);
end;

procedure TfmEtrRegCont.cxGridDBBandedTableView2KeyPress(Sender: TObject;
  var Key: Char);
begin
	FilterColumnGridOnKeyPress(cxGridDBBandedTableView2, Key);
end;

end.


