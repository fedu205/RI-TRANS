unit EtrVPU;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ADODB, dxBar, cxClasses, cxPropertiesStore, ImgList, cxGraphics,
  cxStyles, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxCustomData, ComObj,
  cxFilter, cxData, cxDataStorage, cxEdit, cxDBData, cxCurrencyEdit, Raznoe, DateUtils,
  cxContainer, ExtCtrls, cxMaskEdit, cxDropDownEdit, cxCalendar, cxTextEdit, Other,
  StdCtrls, cxGridLevel, cxGridCustomTableView, cxGridTableView, Default, Period,
  cxGridBandedTableView, cxGridDBBandedTableView, cxGridCustomView, cxGrid, cxPC,
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
  dxSkinSummer2008, dxSkinTheAsphaltWorld, dxSkinsDefaultPainters,
  dxSkinValentine, dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue, dxSkinscxPCPainter, cxNavigator, ComCtrls, dxCore,
  cxDateUtils, dxBarBuiltInMenu, dxSkinsdxBarPainter,
  cxDataControllerConditionalFormattingRulesManagerDialog, System.ImageList,
  cxImageList, dxSkinOffice2019Colorful, dxSkinTheBezier, dxDateRanges;

type
  TfmEtrVPU = class(TForm)
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
    Query_VPU: TADOQuery;
    DS_VPU: TDataSource;
    Panel1: TPanel;
    cxGrid1: TcxGrid;
    cxGrid1DBBandedTableView1: TcxGridDBBandedTableView;
    cxGrid1Level1: TcxGridLevel;
    Panel2: TPanel;
    Panel3: TPanel;
    Splitter1: TSplitter;
    GridPanel1: TGridPanel;
    Panel4: TPanel;
    Panel5: TPanel;
    cxTextEdit100: TcxTextEdit;
    Label1: TLabel;
    Label2: TLabel;
    cxTextEdit101: TcxTextEdit;
    Label3: TLabel;
    cxTextEdit102: TcxTextEdit;
    Label34: TLabel;
    cxDateEdit100: TcxDateEdit;
    Label4: TLabel;
    cxDateEdit101: TcxDateEdit;
    Label5: TLabel;
    cxDateEdit102: TcxDateEdit;
    Label6: TLabel;
    cxDateEdit103: TcxDateEdit;
    cxTextEdit105: TcxTextEdit;
    Label7: TLabel;
    cxTextEdit104: TcxTextEdit;
    cxTextEdit103: TcxTextEdit;
    Label9: TLabel;
    cxTextEdit108: TcxTextEdit;
    Label10: TLabel;
    cxTextEdit107: TcxTextEdit;
    Label11: TLabel;
    cxTextEdit106: TcxTextEdit;
    Label12: TLabel;
    cxTextEdit111: TcxTextEdit;
    Label13: TLabel;
    cxTextEdit110: TcxTextEdit;
    Label14: TLabel;
    cxTextEdit109: TcxTextEdit;
    Label15: TLabel;
    cxTextEdit112: TcxTextEdit;
    Label16: TLabel;
    cxTextEdit115: TcxTextEdit;
    Label17: TLabel;
    cxTextEdit114: TcxTextEdit;
    Label18: TLabel;
    cxTextEdit113: TcxTextEdit;
    Label19: TLabel;
    cxTextEdit116: TcxTextEdit;
    Label8: TLabel;
    cxTextEdit117: TcxTextEdit;
    Label20: TLabel;
    cxTextEdit118: TcxTextEdit;
    Label21: TLabel;
    Label22: TLabel;
    cxTextEdit119: TcxTextEdit;
    cxTextEdit120: TcxTextEdit;
    Label23: TLabel;
    Label24: TLabel;
    cxTextEdit121: TcxTextEdit;
    cxTextEdit122: TcxTextEdit;
    Label25: TLabel;
    Label26: TLabel;
    cxTextEdit123: TcxTextEdit;
    cxTextEdit124: TcxTextEdit;
    Label27: TLabel;
    Label28: TLabel;
    cxTextEdit125: TcxTextEdit;
    cxTextEdit131: TcxTextEdit;
    Label31: TLabel;
    cxTextEdit130: TcxTextEdit;
    Label32: TLabel;
    cxTextEdit129: TcxTextEdit;
    Label33: TLabel;
    cxTextEdit128: TcxTextEdit;
    Label35: TLabel;
    cxTextEdit127: TcxTextEdit;
    Label36: TLabel;
    cxTextEdit126: TcxTextEdit;
    Label37: TLabel;
    Label29: TLabel;
    cxDateEdit104: TcxDateEdit;
    Label30: TLabel;
    cxDateEdit105: TcxDateEdit;
    Label38: TLabel;
    cxDateEdit106: TcxDateEdit;
    cxPageControl1: TcxPageControl;
    cxTabSheet1: TcxTabSheet;
    cxTabSheet2: TcxTabSheet;
    cxTabSheet3: TcxTabSheet;
    cxTabSheet4: TcxTabSheet;
    cxGrid2Level1: TcxGridLevel;
    cxGrid2: TcxGrid;
    cxGrid2DBBandedTableView1: TcxGridDBBandedTableView;
    cxGrid3: TcxGrid;
    cxGridDBBandedTableView1: TcxGridDBBandedTableView;
    cxGridLevel1: TcxGridLevel;
    cxGrid4: TcxGrid;
    cxGridDBBandedTableView2: TcxGridDBBandedTableView;
    cxGridLevel2: TcxGridLevel;
    cxGrid5: TcxGrid;
    cxGridDBBandedTableView3: TcxGridDBBandedTableView;
    cxGridLevel3: TcxGridLevel;
    cxGrid1DBBandedTableView1vpu_id: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1vpuID: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1vpuState: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1vpuNumber: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1vpuDate: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1vpuStartDate: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1vpuFinishDate: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1vpuStationName: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1vpuPayerName: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1cnt_vpuRemove: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1cnt_vpuCar: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1cnt_vpuKRS: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1cnt_vpuSBOR: TcxGridDBBandedColumn;
    DS_vpuSBOR: TDataSource;
    Query_vpuSBOR: TADOQuery;
    DS_vpuKRS: TDataSource;
    Query_vpuKRS: TADOQuery;
    DS_VPURemove: TDataSource;
    Query_VPURemove: TADOQuery;
    Query_vpuCar: TADOQuery;
    DS_vpuCar: TDataSource;
    cxGrid2DBBandedTableView1vpuRemove_id: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1vpu_id: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1remNumber: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1remDate: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1remHour: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1remCarTurn: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1remAddTime: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1remStationCode: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1remStationName: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1remDueSwitch: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1remDueRun: TcxGridDBBandedColumn;
    cxGridDBBandedTableView1vpuCar_id: TcxGridDBBandedColumn;
    cxGridDBBandedTableView1vpu_id: TcxGridDBBandedColumn;
    cxGridDBBandedTableView1carRemoveNumber: TcxGridDBBandedColumn;
    cxGridDBBandedTableView1carDeliverNumber: TcxGridDBBandedColumn;
    cxGridDBBandedTableView1carNumber: TcxGridDBBandedColumn;
    cxGridDBBandedTableView1carTypeID: TcxGridDBBandedColumn;
    cxGridDBBandedTableView1carTypeName: TcxGridDBBandedColumn;
    cxGridDBBandedTableView1carOwnerTypeID: TcxGridDBBandedColumn;
    cxGridDBBandedTableView1carOwnerTypeName: TcxGridDBBandedColumn;
    cxGridDBBandedTableView1carSNG: TcxGridDBBandedColumn;
    cxGridDBBandedTableView1carGroupID: TcxGridDBBandedColumn;
    cxGridDBBandedTableView1carGroupName: TcxGridDBBandedColumn;
    cxGridDBBandedTableView1carOperID: TcxGridDBBandedColumn;
    cxGridDBBandedTableView1carOperName: TcxGridDBBandedColumn;
    cxGridDBBandedTableView1carDeliverDate: TcxGridDBBandedColumn;
    cxGridDBBandedTableView1carLoadingDate: TcxGridDBBandedColumn;
    cxGridDBBandedTableView1carHolidays: TcxGridDBBandedColumn;
    cxGridDBBandedTableView1carNoPaidTime: TcxGridDBBandedColumn;
    cxGridDBBandedTableView1carCountTime: TcxGridDBBandedColumn;
    cxGridDBBandedTableView1carCalcTime: TcxGridDBBandedColumn;
    cxGridDBBandedTableView1carDueTime: TcxGridDBBandedColumn;
    cxGridDBBandedTableView1carPenaltyTime: TcxGridDBBandedColumn;
    cxGridDBBandedTableView1carChangeGroupID: TcxGridDBBandedColumn;
    cxGridDBBandedTableView1carChangeGroupName: TcxGridDBBandedColumn;
    cxGridDBBandedTableView1carGU23Loading: TcxGridDBBandedColumn;
    cxGridDBBandedTableView1carGU23LoadingStartDate: TcxGridDBBandedColumn;
    cxGridDBBandedTableView1carGU23LoadingFinishDate: TcxGridDBBandedColumn;
    cxGridDBBandedTableView1carGU23LoadingTime: TcxGridDBBandedColumn;
    cxGridDBBandedTableView1carGU23: TcxGridDBBandedColumn;
    cxGridDBBandedTableView1carGU23StartDate: TcxGridDBBandedColumn;
    cxGridDBBandedTableView1carGU23FinishDate: TcxGridDBBandedColumn;
    cxGridDBBandedTableView1carGU23Time: TcxGridDBBandedColumn;
    cxGridDBBandedTableView1carGU23Coeff: TcxGridDBBandedColumn;
    cxGridDBBandedTableView1carGU23Due: TcxGridDBBandedColumn;
    cxGridDBBandedTableView1carDue: TcxGridDBBandedColumn;
    cxGridDBBandedTableView1carDuePenalty: TcxGridDBBandedColumn;
    cxGridDBBandedTableView1carDueAll: TcxGridDBBandedColumn;
    cxGridDBBandedTableView1carNote: TcxGridDBBandedColumn;
    cxGridDBBandedTableView2vpuKRS_id: TcxGridDBBandedColumn;
    cxGridDBBandedTableView2vpu_id: TcxGridDBBandedColumn;
    cxGridDBBandedTableView2krsNumber: TcxGridDBBandedColumn;
    cxGridDBBandedTableView2krsDueCode: TcxGridDBBandedColumn;
    cxGridDBBandedTableView2krsDueName: TcxGridDBBandedColumn;
    cxGridDBBandedTableView2krsDue: TcxGridDBBandedColumn;
    cxGridDBBandedTableView3vpuSBOR_id: TcxGridDBBandedColumn;
    cxGridDBBandedTableView3vpu_id: TcxGridDBBandedColumn;
    cxGridDBBandedTableView3sborNumPam: TcxGridDBBandedColumn;
    cxGridDBBandedTableView3sborVagNum: TcxGridDBBandedColumn;
    cxGridDBBandedTableView3sborType: TcxGridDBBandedColumn;
    cxGridDBBandedTableView3sborStatId: TcxGridDBBandedColumn;
    cxGridDBBandedTableView3sborSumma: TcxGridDBBandedColumn;
    dxBarSubItem1: TdxBarSubItem;
    dxBarPopupMenu2: TdxBarPopupMenu;
    dxBarButton4: TdxBarButton;
    dxBarSubItem3: TdxBarSubItem;
    dxBarButton5: TdxBarButton;
    dxBarButton6: TdxBarButton;
    dxBarButton7: TdxBarButton;
    dxBarButton8: TdxBarButton;
    dxBarPopupMenu3: TdxBarPopupMenu;
    dxBarButton9: TdxBarButton;
    dxBarSubItem4: TdxBarSubItem;
    dxBarButton10: TdxBarButton;
    dxBarButton11: TdxBarButton;
    dxBarButton12: TdxBarButton;
    dxBarButton13: TdxBarButton;
    dxBarPopupMenu4: TdxBarPopupMenu;
    dxBarButton14: TdxBarButton;
    dxBarSubItem5: TdxBarSubItem;
    dxBarButton15: TdxBarButton;
    dxBarButton16: TdxBarButton;
    dxBarButton17: TdxBarButton;
    dxBarButton18: TdxBarButton;
    dxBarPopupMenu5: TdxBarPopupMenu;
    dxBarButton19: TdxBarButton;
    dxBarSubItem6: TdxBarSubItem;
    dxBarButton20: TdxBarButton;
    dxBarButton21: TdxBarButton;
    dxBarButton22: TdxBarButton;
    dxBarButton23: TdxBarButton;
    dxBarPopupMenu6: TdxBarPopupMenu;
    dxBarButton24: TdxBarButton;
    dxBarSubItem7: TdxBarSubItem;
    dxBarButton25: TdxBarButton;
    dxBarButton26: TdxBarButton;
    dxBarButton27: TdxBarButton;
    dxBarButton28: TdxBarButton;
    dxBarButton29: TdxBarButton;
    dxBarSubItem8: TdxBarSubItem;
    procedure cxGrid1DBBandedTableView1FocusedRecordChanged(
      Sender: TcxCustomGridTableView; APrevFocusedRecord,
      AFocusedRecord: TcxCustomGridRecord;
      ANewItemRecordFocusingChanged: Boolean);
    procedure cxPageControl1DrawTabEx(AControl: TcxCustomTabControl;
      ATab: TcxTab; Font: TFont);
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
    procedure cxGridDBBandedTableView1FilterOnChanged(Sender: TObject);
    procedure cxGridDBBandedTableView1CustomDrawCell(
      Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
      AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
    procedure cxGridDBBandedTableView1CustomDrawColumnHeader(
      Sender: TcxGridTableView; ACanvas: TcxCanvas;
      AViewInfo: TcxGridColumnHeaderViewInfo; var ADone: Boolean);
    procedure cxGridDBBandedTableView2FilterOnChanged(Sender: TObject);
    procedure cxGridDBBandedTableView2CustomDrawCell(
      Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
      AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
    procedure cxGridDBBandedTableView2CustomDrawColumnHeader(
      Sender: TcxGridTableView; ACanvas: TcxCanvas;
      AViewInfo: TcxGridColumnHeaderViewInfo; var ADone: Boolean);
    procedure cxGridDBBandedTableView3FilterOnChanged(Sender: TObject);
    procedure cxGridDBBandedTableView3CustomDrawCell(
      Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
      AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
    procedure cxGridDBBandedTableView3CustomDrawColumnHeader(
      Sender: TcxGridTableView; ACanvas: TcxCanvas;
      AViewInfo: TcxGridColumnHeaderViewInfo; var ADone: Boolean);
    procedure cxGridDBBandedTableView3FocusedItemChanged(
      Sender: TcxCustomGridTableView; APrevFocusedItem,
      AFocusedItem: TcxCustomGridTableItem);
    procedure cxGrid2DBBandedTableView1KeyPress(Sender: TObject; var Key: Char);
    procedure cxGridDBBandedTableView3KeyPress(Sender: TObject; var Key: Char);
    procedure cxGridDBBandedTableView1FocusedItemChanged(
      Sender: TcxCustomGridTableView; APrevFocusedItem,
      AFocusedItem: TcxCustomGridTableItem);
    procedure cxGridDBBandedTableView1KeyPress(Sender: TObject; var Key: Char);
    procedure cxGridDBBandedTableView2FocusedItemChanged(
      Sender: TcxCustomGridTableView; APrevFocusedItem,
      AFocusedItem: TcxCustomGridTableItem);
    procedure cxGridDBBandedTableView2KeyPress(Sender: TObject; var Key: Char);
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
    procedure dxBarButton24Click(Sender: TObject);
    procedure dxBarButton25Click(Sender: TObject);
    procedure dxBarButton26Click(Sender: TObject);
    procedure dxBarButton27Click(Sender: TObject);
    procedure dxBarButton28Click(Sender: TObject);
    procedure dxBarButton1Click(Sender: TObject);
    procedure dxBarButton2Click(Sender: TObject);
    procedure dxBarButton3Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure dxBarButton29Click(Sender: TObject);
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
  fmEtrVPU: TfmEtrVPU;

function CreateWndEtranVPU(AppHand: THandle; users_group_cod: string; usr_pwd: PUser_pwd): variant; export;
function CreateWndEtranVPUFind(AppHand: THandle; doc_id: integer; num_vagon: integer; users_group_cod: string; usr_pwd:PUser_pwd) : variant; export;

implementation

uses EtrUtils;

{$R *.dfm}

function CreateWndEtranVPUFind(AppHand: THandle; doc_id: integer; num_vagon: integer; users_group_cod: string; usr_pwd:PUser_pwd) : variant; export;
var Q: TADOQuery;
    d1,d2: TDateTime;
begin
    Application.Handle := AppHand;
  try
    fmEtrVPU := TfmEtrVPU.Create(Application, users_group_cod, usr_pwd);

    Screen.Cursor := -11;
    Q := TADOQuery.Create(nil);
    Q.Connection := fmEtrVPU.ADOEtran;
    Q.SQL.Add(' SELECT * FROM VPU WHERE vpuID = '+IntToStr(doc_id));
    Q.Open;

    d1 := StartOfTheMonth(Q.FieldByName('vpuDate').AsDateTime);
    d2 := DateOf(EndOfTheMonth(Q.FieldByName('vpuDate').AsDateTime));
    fmEtrVPU.SetPeriod(d1,d2);
    fmEtrVPU.SetId(doc_id);
    Q.Free;
    //-- изменить по мере необходимости возвращаемых параметров
    if  fmEtrVPU.ShowModal = mrOk then result := VarArrayOf([-9, '']);
  finally
    fmEtrVPU.Free;
  end;
end;


function CreateWndEtranVPU(AppHand: THandle; users_group_cod: string; usr_pwd: PUser_pwd): variant; export;
begin
  Application.Handle := AppHand;
  try
    fmEtrVPU := TfmEtrVPU.Create(Application, users_group_cod, usr_pwd);
    //-- изменить по мере необходимости возвращаемых параметров
    if  fmEtrVPU.ShowModal = mrOk then result := VarArrayOf([-9, '']);
  finally
    fmEtrVPU.Free;
  end;
end;

constructor TfmEtrVPU.Create(AOwner: TApplication; users_group_cod: string; usr_pwd: PUser_pwd);
begin
  Screen.Cursor := -11;
  inherited Create(nil);

  WindowState := wsMaximized;
  Fusr_pwd := usr_pwd;
  Fusers_group_cod := users_group_cod;
  StoreRegistryGrid(rgLoad,'\Software\Lis1\EtranVPU\MainGrids', cxGrid1DBBandedTableView1);
  StoreRegistryGrid(rgLoad,'\Software\Lis1\EtranVPU\MainGrids', cxGrid2DBBandedTableView1);
  StoreRegistryGrid(rgLoad,'\Software\Lis1\EtranVPU\MainGrids', cxGridDBBandedTableView1);
  StoreRegistryGrid(rgLoad,'\Software\Lis1\EtranVPU\MainGrids', cxGridDBBandedTableView2);
  StoreRegistryGrid(rgLoad,'\Software\Lis1\EtranVPU\MainGrids', cxGridDBBandedTableView3);

  ADOEtran.Connected := False;
  ADOEtran.ConnectionString := GetEtranConnect(Fusers_group_cod, Fusr_pwd);
  ADOEtran.Connected := True;


  dxBarSubItem2.Caption := StoreRegistryDate(rgLoad, '\Software\Lis1\DateTime\EtranVPU', Fdate1, Fdate2);

  cxGrid1DBBandedTableView1.OnFocusedRecordChanged := nil;
  Query_VPU.Close;
  Query_VPU.Parameters.ParamByName('date1').Value := Fdate1;
  Query_VPU.Parameters.ParamByName('date2').Value := Fdate2;
  Query_VPU.Open;
  cxGrid1DBBandedTableView1.OnFocusedRecordChanged := cxGrid1DBBandedTableView1FocusedRecordChanged;

  Screen.Cursor := 0;
end;


procedure   TfmEtrVPU.SetPeriod(period_begin: TDateTime; period_end: TDateTime);
begin
  Fdate1 := period_begin;
  Fdate2 := period_end;
  dxBarSubItem2.Caption := FormatDateTime('mmmm yyyy', Fdate1);
  Screen.Cursor := crHourGlass;
  Query_VPU.Close;
  Query_VPU.Parameters.ParamByName('date1').Value := Fdate1;
  Query_VPU.Parameters.ParamByName('date2').Value := Fdate2;
  Query_VPU.Open;
  Screen.Cursor := crDefault;
end;

procedure   TfmEtrVPU.SetId(doc_id: integer);
begin
  cxGrid1DBBandedTableView1.DataController.Filter.Clear;
  cxGrid1DBBandedTableView1.DataController.Filter.Options := cxGrid1DBBandedTableView1.DataController.Filter.Options + [fcoCaseInsensitive];
  cxGrid1DBBandedTableView1.DataController.Filter.Root.BoolOperatorKind := fboAnd;

  cxGrid1DBBandedTableView1.DataController.Filter.Root.AddItem(cxGrid1DBBandedTableView1vpuID, foLike, '%' + IntToStr(doc_id) + '%', '[' + IntToStr(doc_id) + ']');
  cxGrid1DBBandedTableView1.DataController.Filter.Active := True;
end;

procedure TfmEtrVPU.cxGrid1DBBandedTableView1CustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
	if AViewInfo.GridRecord.Selected or AViewInfo.GridRecord.Focused then begin
		ACanvas.Brush.Color := clNavy;
		ACanvas.Font.Color := clWhite;
		if AViewInfo.Focused then ACanvas.Brush.Color := clBlue;
	end;
end;

procedure TfmEtrVPU.cxGrid1DBBandedTableView1CustomDrawColumnHeader(
  Sender: TcxGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridColumnHeaderViewInfo; var ADone: Boolean);
begin
	if AViewInfo.Column.Focused then begin
		ACanvas.Brush.Color := clNavy;
		ACanvas.Font.Color := clWhite;
	end;
end;

procedure TfmEtrVPU.cxGrid1DBBandedTableView1FilterOnChanged(Sender: TObject);
begin
	DrawcxGridColumnOnFiltered(Sender);
end;

procedure TfmEtrVPU.cxGrid1DBBandedTableView1FocusedItemChanged(
  Sender: TcxCustomGridTableView; APrevFocusedItem,
  AFocusedItem: TcxCustomGridTableItem);
begin
	cxGrid1DBBandedTableView1.Painter.Invalidate;
end;

procedure TfmEtrVPU.cxGrid1DBBandedTableView1FocusedRecordChanged(
  Sender: TcxCustomGridTableView; APrevFocusedRecord,
  AFocusedRecord: TcxCustomGridRecord; ANewItemRecordFocusingChanged: Boolean);
begin
  Query_vpuSBOR.Close;
  Query_vpuKRS.Close;
  Query_VPURemove.Close;
  Query_vpuCar.Close;

  cxTextEdit100.EditValue := null;
  cxTextEdit101.EditValue := null;
  cxTextEdit102.EditValue := null;
  cxTextEdit103.EditValue := null;
  cxTextEdit104.EditValue := null;
  cxTextEdit105.EditValue := null;
  cxTextEdit106.EditValue := null;
  cxTextEdit107.EditValue := null;
  cxTextEdit108.EditValue := null;
  cxTextEdit109.EditValue := null;
  cxTextEdit110.EditValue := null;
  cxTextEdit111.EditValue := null;
  cxTextEdit112.EditValue := null;
  cxTextEdit113.EditValue := null;
  cxTextEdit114.EditValue := null;
  cxTextEdit115.EditValue := null;
  cxTextEdit116.EditValue := null;
  cxTextEdit117.EditValue := null;
  cxTextEdit118.EditValue := null;
  cxTextEdit119.EditValue := null;
  cxTextEdit120.EditValue := null;
  cxTextEdit121.EditValue := null;
  cxTextEdit122.EditValue := null;
  cxTextEdit123.EditValue := null;
  cxTextEdit124.EditValue := null;
  cxTextEdit125.EditValue := null;
  cxTextEdit126.EditValue := null;
  cxTextEdit127.EditValue := null;
  cxTextEdit128.EditValue := null;
  cxTextEdit129.EditValue := null;
  cxTextEdit130.EditValue := null;
  cxTextEdit131.EditValue := null;
  cxDateEdit100.EditValue := null;
  cxDateEdit101.EditValue := null;
  cxDateEdit102.EditValue := null;
  cxDateEdit103.EditValue := null;
  cxDateEdit104.EditValue := null;
  cxDateEdit105.EditValue := null;
  cxDateEdit106.EditValue := null;

  if (AFocusedRecord<>nil) AND ((cxGrid1DBBandedTableView1.GroupedColumnCount = 0) OR (AFocusedRecord.Level <> 0)) then begin
    Query_vpuSBOR.Parameters.ParamByName('vpu_id').Value := cxGrid1DBBandedTableView1vpu_id.DataBinding.Field.Value;
    Query_vpuKRS.Parameters.ParamByName('vpu_id').Value := cxGrid1DBBandedTableView1vpu_id.DataBinding.Field.Value;
    Query_VPURemove.Parameters.ParamByName('vpu_id').Value := cxGrid1DBBandedTableView1vpu_id.DataBinding.Field.Value;
    Query_vpuCar.Parameters.ParamByName('vpu_id').Value := cxGrid1DBBandedTableView1vpu_id.DataBinding.Field.Value;
    Query_vpuSBOR.Open;
    Query_vpuKRS.Open;
    Query_VPURemove.Open;
    Query_vpuCar.Open;


//    Query_VPU.Locate('vpu_id', cxGrid1DBBandedTableView1vpu_id.DataBinding.Field.Value, []);
    cxTextEdit100.EditValue := Query_VPU.FieldByName('vpuID').Value;
    cxTextEdit101.EditValue := Query_VPU.FieldByName('vpuState').Value;
    cxTextEdit102.EditValue := Query_VPU.FieldByName('vpuNumber').Value;
    cxTextEdit103.EditValue := Query_VPU.FieldByName('vpuStationCode').Value;
    cxTextEdit104.EditValue := Query_VPU.FieldByName('vpuStationName').Value;
    cxTextEdit105.EditValue := Query_VPU.FieldByName('vpuContract').Value;
    cxTextEdit106.EditValue := Query_VPU.FieldByName('vpuPayerName').Value;
    cxTextEdit107.EditValue := Query_VPU.FieldByName('vpuPayerOKPO').Value;
    cxTextEdit108.EditValue := Query_VPU.FieldByName('vpuPayerCode').Value;
    cxTextEdit109.EditValue := Query_VPU.FieldByName('vpuMilitary').Value;
    cxTextEdit110.EditValue := Query_VPU.FieldByName('vpuCommonUse').Value;
    cxTextEdit111.EditValue := Query_VPU.FieldByName('vpuNoPaidTime').Value;
    cxTextEdit112.EditValue := Query_VPU.FieldByName('vpuTurnTime').Value;
    cxTextEdit113.EditValue := Query_VPU.FieldByName('vpuDblTurnTime').Value;
    cxTextEdit114.EditValue := Query_VPU.FieldByName('vpuPayerLoco').Value;
    cxTextEdit115.EditValue := Query_VPU.FieldByName('vpuOwnerBranch').Value;
    cxTextEdit116.EditValue := Query_VPU.FieldByName('vpuFrontLoco').Value;
    cxTextEdit117.EditValue := Query_VPU.FieldByName('vpuLengthLineInfr').Value;
    cxTextEdit118.EditValue := Query_VPU.FieldByName('vpuLengthBranchLineInfr').Value;
    cxTextEdit119.EditValue := Query_VPU.FieldByName('vpuLengthLine').Value;
    cxTextEdit120.EditValue := Query_VPU.FieldByName('vpuLengthBranchLine').Value;
    cxTextEdit121.EditValue := Query_VPU.FieldByName('vpuLengthCommonLine').Value;
    cxTextEdit122.EditValue := Query_VPU.FieldByName('vpuOwnerLocoCountDay').Value;
    cxTextEdit123.EditValue := Query_VPU.FieldByName('vpuLocoCount').Value;
    cxTextEdit124.EditValue := Query_VPU.FieldByName('vpuCarCount').Value;
    cxTextEdit125.EditValue := Query_VPU.FieldByName('vpuDuePU').Value;
    cxTextEdit126.EditValue := Query_VPU.FieldByName('vpuDueUseBranch').Value;
    cxTextEdit127.EditValue := Query_VPU.FieldByName('vpuDue').Value;
    cxTextEdit128.EditValue := Query_VPU.FieldByName('vpuDuePenalty').Value;
    cxTextEdit129.EditValue := Query_VPU.FieldByName('vpuDueSwitch').Value;
    cxTextEdit130.EditValue := Query_VPU.FieldByName('vpuDueRun').Value;
    cxTextEdit131.EditValue := Query_VPU.FieldByName('vpuNote').Value;
    cxDateEdit100.EditValue := Query_VPU.FieldByName('vpuDate').Value;
    cxDateEdit101.EditValue := Query_VPU.FieldByName('vpuStartDate').Value;
    cxDateEdit102.EditValue := Query_VPU.FieldByName('vpuFinishDate').Value;
    cxDateEdit103.EditValue := Query_VPU.FieldByName('vpuLastOper').Value;
    cxDateEdit104.EditValue := Query_VPU.FieldByName('vpuOrderDate').Value;
    cxDateEdit105.EditValue := Query_VPU.FieldByName('vpuOrderStartDate').Value;
    cxDateEdit106.EditValue := Query_VPU.FieldByName('vpuOrderFinishDate').Value;
  end;
  cxPageControl1.Repaint;
end;

procedure TfmEtrVPU.cxPageControl1DrawTabEx(AControl: TcxCustomTabControl; ATab: TcxTab; Font: TFont);
begin
  if Query_VPU.Active then begin
    if (cxPageControl1.Pages[ATab.Index].Tag = 0) and (Query_VPU.FieldByName('cnt_vpuRemove').Value > 0) then Font.Style := [fsBold];
    if (cxPageControl1.Pages[ATab.Index].Tag = 1) and (Query_VPU.FieldByName('cnt_vpuCar'   ).Value > 0) then Font.Style := [fsBold];
    if (cxPageControl1.Pages[ATab.Index].Tag = 2) and (Query_VPU.FieldByName('cnt_vpuKRS'   ).Value > 0) then Font.Style := [fsBold];
    if (cxPageControl1.Pages[ATab.Index].Tag = 3) and (Query_VPU.FieldByName('cnt_vpuSBOR'  ).Value > 0) then Font.Style := [fsBold];
  end;
end;

procedure TfmEtrVPU.dxBarButton10Click(Sender: TObject);
begin
	SetdxDBGridColumns(cxGrid2DBBandedTableView1);
end;

procedure TfmEtrVPU.dxBarButton11Click(Sender: TObject);
begin
	cxGrid2DBBandedTableView1.OptionsView.GroupByBox := not cxGrid2DBBandedTableView1.OptionsView.GroupByBox;
end;

procedure TfmEtrVPU.dxBarButton12Click(Sender: TObject);
begin
	FiltercxGrid4ListID(cxGrid2DBBandedTableView1);
end;

procedure TfmEtrVPU.dxBarButton13Click(Sender: TObject);
begin
	cxGrid2DBBandedTableView1.Filtering.ColumnFilteredItemsList := not dxBarButton13.Down;
end;

procedure TfmEtrVPU.dxBarButton14Click(Sender: TObject);
begin
	PrintcxGrid(cxGridDBBandedTableView1);
end;

procedure TfmEtrVPU.dxBarButton15Click(Sender: TObject);
begin
	SetdxDBGridColumns(cxGridDBBandedTableView1);
end;

procedure TfmEtrVPU.dxBarButton16Click(Sender: TObject);
begin
	cxGridDBBandedTableView1.OptionsView.GroupByBox := not cxGridDBBandedTableView1.OptionsView.GroupByBox;
end;

procedure TfmEtrVPU.dxBarButton17Click(Sender: TObject);
begin
	FiltercxGrid4ListID(cxGridDBBandedTableView1);
end;

procedure TfmEtrVPU.dxBarButton18Click(Sender: TObject);
begin
	cxGridDBBandedTableView1.Filtering.ColumnFilteredItemsList := not dxBarButton18.Down;
end;

procedure TfmEtrVPU.dxBarButton19Click(Sender: TObject);
begin
	PrintcxGrid(cxGridDBBandedTableView2);
end;

procedure TfmEtrVPU.dxBarButton1Click(Sender: TObject);
begin
  RefreshQueryGrid(cxGrid1DBBandedTableView1, 'vpu_id');
end;

procedure TfmEtrVPU.dxBarButton20Click(Sender: TObject);
begin
	SetdxDBGridColumns(cxGridDBBandedTableView2);
end;

procedure TfmEtrVPU.dxBarButton21Click(Sender: TObject);
begin
	cxGridDBBandedTableView2.OptionsView.GroupByBox := not cxGridDBBandedTableView2.OptionsView.GroupByBox;
end;

procedure TfmEtrVPU.dxBarButton22Click(Sender: TObject);
begin
	FiltercxGrid4ListID(cxGridDBBandedTableView2);
end;

procedure TfmEtrVPU.dxBarButton23Click(Sender: TObject);
begin
	cxGridDBBandedTableView2.Filtering.ColumnFilteredItemsList := not dxBarButton23.Down;
end;

procedure TfmEtrVPU.dxBarButton24Click(Sender: TObject);
begin
	PrintcxGrid(cxGridDBBandedTableView3);
end;

procedure TfmEtrVPU.dxBarButton25Click(Sender: TObject);
begin
	SetdxDBGridColumns(cxGridDBBandedTableView3);
end;

procedure TfmEtrVPU.dxBarButton26Click(Sender: TObject);
begin
	cxGridDBBandedTableView3.OptionsView.GroupByBox := not cxGridDBBandedTableView3.OptionsView.GroupByBox;
end;

procedure TfmEtrVPU.dxBarButton27Click(Sender: TObject);
begin
	FiltercxGrid4ListID(cxGridDBBandedTableView3);
end;

procedure TfmEtrVPU.dxBarButton28Click(Sender: TObject);
begin
	cxGridDBBandedTableView3.Filtering.ColumnFilteredItemsList := not dxBarButton28.Down;
end;

procedure TfmEtrVPU.dxBarButton29Click(Sender: TObject);
var exApp, exWkb, exWks : OleVariant;
    Q : TADOQuery;
    d1, d2 : TDateTime;
    line_cnt: integer;
begin
  fmPeriod := TfmPeriod.Create(Application, Fdate1, Fdate2, 1);
  if fmPeriod.ShowModal=mrOK then begin
    d1 := fmPeriod._GetDateBegin;
    d2 := fmPeriod._GetDateEnd;

    ShowTextMessage('Запуск сервера автоматизации...',False);

    exApp := CreateOleObject('Excel.Application');
    exWkb := exApp.Workbooks.Add;
    exWkb := exApp.ActiveWorkbook;
    exWks := exApp.ActiveWorkbook.WorkSheets[1];
    //exApp.ActiveWindow.DisplayGridlines := False;


    exWks.Cells[2,2].Value := '№ п/п';
    exWks.Cells[2,3].Value := '№ ведомости';
    exWks.Cells[2,4].Value := '№ вагона';
    exWks.Cells[2,5].Value := '№ памятки';
    exWks.Cells[2,6].Value := 'Дата прибытия';
    exWks.Cells[2,7].Value := 'Дата подачи';
    exWks.Cells[2,8].Value := 'Дата выгрузки';
    exWks.Cells[2,9].Value := 'Дата уборки';
    exWks.Cells[2,10].Value := 'плата за пользование';
    exWks.Cells[2,11].Value := 'Время пользования';
    exWks.Cells[2,12].Value := 'плата по акту';
    exWks.Cells[2,13].Value := '№ акта';
    exWks.Cells[2,14].Value := 'Время по акту';
    exWks.Cells[2,15].Value := 'Время штрафа';
    exWks.Cells[2,16].Value := 'Сумма штрафа';
    exWks.Range[exWks.Cells[2, 2], exWks.Cells[2, 16]].Interior.ColorIndex := 35;
    exWks.Range[exWks.Cells[2, 2], exWks.Cells[3, 16]].Borders[1].LineStyle := 1; // center
    exWks.Range[exWks.Cells[2, 2], exWks.Cells[3, 16]].Borders[2].LineStyle := 1;
    exWks.Range[exWks.Cells[2, 2], exWks.Cells[3, 16]].Borders[3].LineStyle := 1;
    exWks.Range[exWks.Cells[2, 2], exWks.Cells[3, 16]].Borders[4].LineStyle := 1;
    exWks.Columns[12].NumberFormat := '# ##0,00';
    exWks.Columns[16].NumberFormat := '# ##0,00';
    exWks.Columns[14].NumberFormat := 'ч:мм';
    exWks.Columns[15].NumberFormat := 'ч:мм';
    exWks.Columns[11].NumberFormat := 'ч:мм';

    Q := TADOQuery.Create(nil);
    Q.Connection := ADOEtran;
    Q.SQL.Add('SELECT	vpuNumber, carNumber, carRemoveNumber, null as date_from_to, carDeliverDate, carLoadingDate,');
    Q.SQL.Add('		(SELECT top 1 dateadd(mi, round((cast(remHour as float) - floor(cast(remHour as float)))*60,0), dateadd(hh,cast(remHour as float), remDate)) FROM VPURemove WHERE VPURemove.vpu_id = vpu.vpu_id) as remDate,');
    Q.SQL.Add('		carDue, carGU23Due, carGU23, carDuePenalty, ');
    Q.SQL.Add('		cast(floor(cast(carCalcTime as float)) as varchar(5)) + '':'' + right(''00'' + cast(round((cast(carCalcTime as float) - floor(cast(carCalcTime as float)))*60,0) as varchar(5)),2) as carCalcTime,');
    Q.SQL.Add('		cast(floor(cast(carGU23Time as float)) as varchar(5)) + '':'' + right(''00'' + cast(round((cast(carGU23Time as float) - floor(cast(carGU23Time as float)))*60,0) as varchar(5)),2) as carGU23Time,');
    Q.SQL.Add('		cast(floor(cast(carPenaltyTime as float)) as varchar(5)) + '':'' + right(''00'' + cast(round((cast(carPenaltyTime as float) - floor(cast(carPenaltyTime as float)))*60,0) as varchar(5)),2) as carPenaltyTime');
    Q.SQL.Add('FROM	vpu');
    Q.SQL.Add('		left join vpuCar	on vpu.vpu_id = vpuCar.vpu_id');
    Q.SQL.Add('    inner join etran_global_id on etran_global_id.global_id = VPU.vpu_id');
    Q.SQL.Add('		inner join etran_users on etran_global_id.users_owner_id = etran_users.users_id');
    Q.SQL.Add('WHERE	vpuDate between ' + DateToSQL(d1) + ' and ' + DateToSQL(d2));
    Q.SQL.Add('    AND users_owner_id in (SELECT users2.users_id FROM etran_users users1 inner join etran_users users2 on users1.users_group_id = users2.users_group_id WHERE users1.users_name = system_user)');

    Q.Open;

    line_cnt := 3;
    while not Q.Eof do begin
      exWks.Rows[IntToStr(line_cnt+1)].Insert;
      exWks.Rows[IntToStr(line_cnt)  ].Copy;
      exWks.Rows[IntToStr(line_cnt+1)].PasteSpecial(1);

      exWks.Range['B'+IntToStr(line_cnt)].Value := Q.RecNo;
      exWks.Range['C'+IntToStr(line_cnt)].Value := '''' + Q.FieldByName('vpuNumber').AsString;
      exWks.Range['D'+IntToStr(line_cnt)].Value := Q.FieldByName('carNumber').AsString;
      exWks.Range['E'+IntToStr(line_cnt)].Value := Q.FieldByName('carRemoveNumber').AsString;
      exWks.Range['F'+IntToStr(line_cnt)].Value := Q.FieldByName('date_from_to').AsString;
      exWks.Range['G'+IntToStr(line_cnt)].Value := Q.FieldByName('carDeliverDate').AsDateTime;
      exWks.Range['H'+IntToStr(line_cnt)].Value := Q.FieldByName('carLoadingDate').AsDateTime;
      exWks.Range['I'+IntToStr(line_cnt)].Value := Q.FieldByName('remDate').AsDateTime;
      exWks.Range['J'+IntToStr(line_cnt)].Value := Q.FieldByName('carDue').AsString;
      exWks.Range['K'+IntToStr(line_cnt)].Value := Q.FieldByName('carCalcTime').AsString;
      exWks.Range['L'+IntToStr(line_cnt)].Value := Q.FieldByName('carGU23Due').AsString;
      exWks.Range['M'+IntToStr(line_cnt)].Value := Q.FieldByName('carGU23').AsString;
      exWks.Range['N'+IntToStr(line_cnt)].Value := Q.FieldByName('carGU23Time').AsString;
      exWks.Range['O'+IntToStr(line_cnt)].Value := Q.FieldByName('carPenaltyTime').AsString;
      exWks.Range['P'+IntToStr(line_cnt)].Value := Q.FieldByName('carDuePenalty').AsString;

//      FormulaR1C1

      line_cnt := line_cnt + 1;
      Q.Next;
      ShowTextMessage('Осталось '+IntToStr(Q.RecordCount - Q.RecNo), False);
    end;


    exWks.Range[exWks.Cells[1,1],exWks.Cells[line_cnt+2,16]].AutoFilter;
    exWks.Range[exWks.Cells[1,1],exWks.Cells[line_cnt+2,16]].Columns.AutoFit;
    exWks.Rows[IntTostr(line_cnt)].Delete;

    exWks.Range['A1'].Select;
    exApp.CutCopyMode := False;

    exApp.Visible := True;
    VarClear(exWks); VarClear(exWkb); VarClear(exApp);
    exWks := NULL; exWkb := NULL; exApp := NULL;
    Screen.Cursor := crDefault;
    ShowTextMessage();
  end;
end;

procedure TfmEtrVPU.dxBarButton2Click(Sender: TObject);
begin
  fmPeriod := TfmPeriod.Create(Application, Fdate1, Fdate2, 3);
  if fmPeriod.ShowModal=mrOK then begin
    Fdate1 := fmPeriod._GetMonth;
    Fdate2 := IncMonth(Fdate1, 1);
    dxBarSubItem2.Caption := FormatDateTime('mmmm yyyy', Fdate1);
    Screen.Cursor := crHourGlass;
    Query_VPU.Close;
    Query_VPU.Parameters.ParamByName('date1').Value := Fdate1;
    Query_VPU.Parameters.ParamByName('date2').Value := Fdate2;
    Query_VPU.Open;
    Screen.Cursor := crDefault;
  end;
end;

procedure TfmEtrVPU.dxBarButton3Click(Sender: TObject);
begin
  fmPeriod := TfmPeriod.Create(Application, Fdate1, Fdate2, 2);
  if fmPeriod.ShowModal=mrOK then begin
    Fdate1 := fmPeriod._GetMonthBegin;
    Fdate2 := fmPeriod._GetMonthEnd;
    dxBarSubItem2.Caption := FormatDateTime('mmm yy', Fdate1) + ' - ' + FormatDateTime('mmm yy', Fdate2);
    Screen.Cursor := crHourGlass;
    Query_VPU.Close;
    Query_VPU.Parameters.ParamByName('date1').Value := Fdate1;
    Query_VPU.Parameters.ParamByName('date2').Value := Fdate2;
    Query_VPU.Open;
    Screen.Cursor := crDefault;
  end;
end;

procedure TfmEtrVPU.dxBarButton4Click(Sender: TObject);
begin
	PrintcxGrid(cxGrid1DBBandedTableView1);
end;

procedure TfmEtrVPU.dxBarButton5Click(Sender: TObject);
begin
	SetdxDBGridColumns(cxGrid1DBBandedTableView1);
end;

procedure TfmEtrVPU.dxBarButton6Click(Sender: TObject);
begin
	cxGrid1DBBandedTableView1.OptionsView.GroupByBox := not cxGrid1DBBandedTableView1.OptionsView.GroupByBox;
end;

procedure TfmEtrVPU.dxBarButton7Click(Sender: TObject);
begin
	FiltercxGrid4ListID(cxGrid1DBBandedTableView1);
end;

procedure TfmEtrVPU.dxBarButton8Click(Sender: TObject);
begin
	cxGrid1DBBandedTableView1.Filtering.ColumnFilteredItemsList := not dxBarButton8.Down;
end;

procedure TfmEtrVPU.dxBarButton9Click(Sender: TObject);
begin
	PrintcxGrid(cxGrid2DBBandedTableView1);
end;

procedure TfmEtrVPU.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TfmEtrVPU.FormDestroy(Sender: TObject);
begin
  StoreRegistryGrid(rgSave,'\Software\Lis1\EtranVPU\MainGrids', cxGrid1DBBandedTableView1);
  StoreRegistryGrid(rgSave,'\Software\Lis1\EtranVPU\MainGrids', cxGrid2DBBandedTableView1);
  StoreRegistryGrid(rgSave,'\Software\Lis1\EtranVPU\MainGrids', cxGridDBBandedTableView1);
  StoreRegistryGrid(rgSave,'\Software\Lis1\EtranVPU\MainGrids', cxGridDBBandedTableView2);
  StoreRegistryGrid(rgSave,'\Software\Lis1\EtranVPU\MainGrids', cxGridDBBandedTableView3);
  dxBarSubItem2.Caption := StoreRegistryDate(rgSave, '\Software\Lis1\DateTime\EtranVPU', Fdate1, Fdate2);
end;

procedure TfmEtrVPU.cxGrid1DBBandedTableView1KeyPress(Sender: TObject;
  var Key: Char);
begin
	FilterColumnGridOnKeyPress(cxGrid1DBBandedTableView1, Key);
end;

procedure TfmEtrVPU.cxGrid2DBBandedTableView1CustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
	if AViewInfo.GridRecord.Selected or AViewInfo.GridRecord.Focused then begin
		ACanvas.Brush.Color := clNavy;
		ACanvas.Font.Color := clWhite;
		if AViewInfo.Focused then ACanvas.Brush.Color := clBlue;
	end;
end;

procedure TfmEtrVPU.cxGrid2DBBandedTableView1CustomDrawColumnHeader(
  Sender: TcxGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridColumnHeaderViewInfo; var ADone: Boolean);
begin
	if AViewInfo.Column.Focused then begin
		ACanvas.Brush.Color := clNavy;
		ACanvas.Font.Color := clWhite;
	end;
end;

procedure TfmEtrVPU.cxGrid2DBBandedTableView1FilterOnChanged(Sender: TObject);
begin
	DrawcxGridColumnOnFiltered(Sender);
end;

procedure TfmEtrVPU.cxGrid2DBBandedTableView1FocusedItemChanged(
  Sender: TcxCustomGridTableView; APrevFocusedItem,
  AFocusedItem: TcxCustomGridTableItem);
begin
  cxGrid2DBBandedTableView1.Painter.Invalidate;
end;


procedure TfmEtrVPU.cxGrid2DBBandedTableView1KeyPress(Sender: TObject;
  var Key: Char);
begin
	FilterColumnGridOnKeyPress(cxGrid2DBBandedTableView1, Key);
end;

procedure TfmEtrVPU.cxGridDBBandedTableView1CustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
	if AViewInfo.GridRecord.Selected or AViewInfo.GridRecord.Focused then begin
		ACanvas.Brush.Color := clNavy;
		ACanvas.Font.Color := clWhite;
		if AViewInfo.Focused then ACanvas.Brush.Color := clBlue;
	end;
end;

procedure TfmEtrVPU.cxGridDBBandedTableView1CustomDrawColumnHeader(
  Sender: TcxGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridColumnHeaderViewInfo; var ADone: Boolean);
begin
	if AViewInfo.Column.Focused then begin
		ACanvas.Brush.Color := clNavy;
		ACanvas.Font.Color := clWhite;
	end;
end;

procedure TfmEtrVPU.cxGridDBBandedTableView1FilterOnChanged(Sender: TObject);
begin
	DrawcxGridColumnOnFiltered(Sender);
end;


procedure TfmEtrVPU.cxGridDBBandedTableView1FocusedItemChanged(
  Sender: TcxCustomGridTableView; APrevFocusedItem,
  AFocusedItem: TcxCustomGridTableItem);
begin
	cxGridDBBandedTableView1.Painter.Invalidate;
end;

procedure TfmEtrVPU.cxGridDBBandedTableView1KeyPress(Sender: TObject;
  var Key: Char);
begin
	FilterColumnGridOnKeyPress(cxGridDBBandedTableView1, Key);
end;

procedure TfmEtrVPU.cxGridDBBandedTableView2CustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
	if AViewInfo.GridRecord.Selected or AViewInfo.GridRecord.Focused then begin
		ACanvas.Brush.Color := clNavy;
		ACanvas.Font.Color := clWhite;
		if AViewInfo.Focused then ACanvas.Brush.Color := clBlue;
	end;
end;

procedure TfmEtrVPU.cxGridDBBandedTableView2CustomDrawColumnHeader(
  Sender: TcxGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridColumnHeaderViewInfo; var ADone: Boolean);
begin
	if AViewInfo.Column.Focused then begin
		ACanvas.Brush.Color := clNavy;
		ACanvas.Font.Color := clWhite;
	end;
end;

procedure TfmEtrVPU.cxGridDBBandedTableView2FilterOnChanged(Sender: TObject);
begin
	DrawcxGridColumnOnFiltered(Sender);
end;

procedure TfmEtrVPU.cxGridDBBandedTableView2FocusedItemChanged(
  Sender: TcxCustomGridTableView; APrevFocusedItem,
  AFocusedItem: TcxCustomGridTableItem);
begin
	cxGridDBBandedTableView2.Painter.Invalidate;
end;

procedure TfmEtrVPU.cxGridDBBandedTableView2KeyPress(Sender: TObject;
  var Key: Char);
begin
	FilterColumnGridOnKeyPress(cxGridDBBandedTableView2, Key);
end;

procedure TfmEtrVPU.cxGridDBBandedTableView3CustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
	if AViewInfo.GridRecord.Selected or AViewInfo.GridRecord.Focused then begin
		ACanvas.Brush.Color := clNavy;
		ACanvas.Font.Color := clWhite;
		if AViewInfo.Focused then ACanvas.Brush.Color := clBlue;
	end;
end;

procedure TfmEtrVPU.cxGridDBBandedTableView3CustomDrawColumnHeader(
  Sender: TcxGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridColumnHeaderViewInfo; var ADone: Boolean);
begin
	if AViewInfo.Column.Focused then begin
		ACanvas.Brush.Color := clNavy;
		ACanvas.Font.Color := clWhite;
	end;
end;

procedure TfmEtrVPU.cxGridDBBandedTableView3FilterOnChanged(Sender: TObject);
begin
	DrawcxGridColumnOnFiltered(Sender);
end;

procedure TfmEtrVPU.cxGridDBBandedTableView3FocusedItemChanged(
  Sender: TcxCustomGridTableView; APrevFocusedItem,
  AFocusedItem: TcxCustomGridTableItem);
begin
  cxGridDBBandedTableView3.Painter.Invalidate;
end;


procedure TfmEtrVPU.cxGridDBBandedTableView3KeyPress(Sender: TObject;
  var Key: Char);
begin
	FilterColumnGridOnKeyPress(cxGridDBBandedTableView3, Key);
end;

end.


