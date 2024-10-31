unit Vagon;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Default,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit,
  DB, cxDBData, cxPropertiesStore, dxBar, cxGridCustomView,cxGridCustomTableView, cxGridTableView, cxGridBandedTableView,
  cxGridDBBandedTableView, cxClasses, cxGridLevel, cxGrid, ADODB, cxColorComboBox, cxCalendar, ImgList, StdCtrls, ExtCtrls,
  cxLocalization, cxCheckBox, cxPC, DBClient, dxStatusBar, DateUtils, cxGridExportLink, ShellApi, dxBarExtItems,StrUtils, dxSkinsCore,
  dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
  dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky,
  dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMetropolis, dxSkinMetropolisDark, dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue,
  dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue, dxSkinOffice2010Silver,
  dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic, dxSkinSharp,
  dxSkinSharpPlus, dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008, dxSkinTheAsphaltWorld, dxSkinsDefaultPainters,
  dxSkinValentine, dxSkinVS2010, dxSkinWhiteprint, dxSkinXmas2008Blue, dxSkinsdxStatusBarPainter, dxSkinscxPCPainter, cxNavigator,
  dxBarBuiltInMenu, dxSkinsdxBarPainter, dxSkinOffice2016Colorful, dxSkinOffice2016Dark, dxSkinVisualStudio2013Blue,
  dxSkinVisualStudio2013Dark, dxSkinVisualStudio2013Light, System.ImageList, Clipbrd, cxBarEditItem, cxImageList,
  dxSkinTheBezier, dxDateRanges, dxScrollbarAnnotations;

type
  TfmVagon = class(TForm)
    dxBarManager1: TdxBarManager;
    cxPropertiesStore1: TcxPropertiesStore;
    dxBarManager1Bar1: TdxBar;
    dxBarButton1: TdxBarButton;
    dxBarButton2: TdxBarButton;
    dxBarButton3: TdxBarButton;
    dxBarButton4: TdxBarButton;
    dxBarSubItem1: TdxBarSubItem;
    dxBarButton5: TdxBarButton;
    dxBarButton6: TdxBarButton;
    dxBarButton7: TdxBarButton;
    dxBarButton8: TdxBarButton;
    dxBarButton9: TdxBarButton;
    dxBarPopup_Vagon: TdxBarPopupMenu;
    DS_Vagon: TDataSource;
    dxBarButton12: TdxBarButton;
    ADOVagon: TADOConnection;
    dxBarButton13: TdxBarButton;
    DS_Owner: TDataSource;
    Query_Owner: TADOQuery;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle_Bold: TcxStyle;
    cxStyle_AgreeFactInc_Between: TcxStyle;
    cxStyle_AgreeFactInc_Sum: TcxStyle;
    cxStyle_AgreeFactInc_AddProfit: TcxStyle;
    cxStyle_ClientFrahtCard_Rashod: TcxStyle;
    cxStyle_ClientFrahtCard_Profitt: TcxStyle;
    cxStyle_AgreeFact: TcxStyle;
    cxStyle_Agree_bargain_cod: TcxStyle;
    cxStyle_Orders_cod: TcxStyle;
    cxStyle_BoldBlue: TcxStyle;
    cxStyle_ClientFrahtCard_Rashod_RUB: TcxStyle;
    cxStyle_BalanceOrders: TcxStyle;
    cxStyle_Comiss_USD: TcxStyle;
    cxStyle_Comiss_RUB: TcxStyle;
    cxStyle_Sum_USD: TcxStyle;
    cxStyle_Sum_RUB: TcxStyle;
    cxStyle_Sum_EUR: TcxStyle;
    cxStyle_Sum_CHF: TcxStyle;
    cxStyle_Sum_Client: TcxStyle;
    cxStyle_Sum_Agent: TcxStyle;
    cxStyle_Sum_Comiss: TcxStyle;
    cxStyle_ID: TcxStyle;
    cxStyle_Docs_Status: TcxStyle;
    dxBarButton14: TdxBarButton;
    dxBarButton15: TdxBarButton;
    Query_Vagon_Comment: TADOQuery;
    DS_Vagon_Comment: TDataSource;
    dxBarSubItem2: TdxBarSubItem;
    cxLocalizer1: TcxLocalizer;
    dxBarPopup_Comment: TdxBarPopupMenu;
    dxBarButton17: TdxBarButton;
    dxBarButton18: TdxBarButton;
    dxBarButton19: TdxBarButton;
    dxBarSubItem3: TdxBarSubItem;
    dxBarButton20: TdxBarButton;
    dxBarButton21: TdxBarButton;
    dxBarButton22: TdxBarButton;
    dxBarButton_Filter: TdxBarButton;
    dxBarPopup_Owner: TdxBarPopupMenu;
    dxStatusBar1: TdxStatusBar;
    dxBarButton24: TdxBarButton;
    dxBarButton_FilterRecords1: TdxBarButton;
    dxBarButton25: TdxBarButton;
    dxBarButton29: TdxBarButton;
    dxBarButton30: TdxBarButton;
    dxBarButton31: TdxBarButton;
    dxBarSubItem6: TdxBarSubItem;
    dxBarSubItem7: TdxBarSubItem;
    cxGrid1: TcxGrid;
    cxGrid1DBBandedTableView1: TcxGridDBBandedTableView;
    cxGrid1DBBandedTableView1vagon_id: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1num_vagon: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1date_build: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1comments: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1model_name: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1rod_vagon_name: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1capacity: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1factory_name: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1FIO_users: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1date_remove: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1rod_vagon_cod: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1owner_name: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1next_date_repair: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1date_begin: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1date_end: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1global_color: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1node_registration_name: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1year_build: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1year_end: TcxGridDBBandedColumn;
    cxGrid1Level1: TcxGridLevel;
    GroupBox1: TGroupBox;
    cxGrid2: TcxGrid;
    cxGrid2DBBandedTableView1: TcxGridDBBandedTableView;
    cxGrid2DBBandedTableView1vagon_owner_id: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1firm_customer_name: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1contract_cod: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1date_begin: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1date_end: TcxGridDBBandedColumn;
    cxGrid2Level1: TcxGridLevel;
    Splitter1: TSplitter;
    GroupBox2: TGroupBox;
    cxGrid3: TcxGrid;
    cxGrid3DBBandedTableView1: TcxGridDBBandedTableView;
    cxGrid3DBBandedTableView1vagon_id: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1vagon_comment_type_name: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1vagon_comment: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1date_begin: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1date_end: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1FIO_users: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1vagon_comment_id: TcxGridDBBandedColumn;
    cxGrid3Level1: TcxGridLevel;
    Splitter2: TSplitter;
    cxGrid1DBBandedTableView1type_park_name: TcxGridDBBandedColumn;
    dxBarButton10: TdxBarButton;
    cxPageControl2: TcxPageControl;
    cxTabSheet1: TcxTabSheet;
    cxTabSheet2: TcxTabSheet;
    cxTabSheet3: TcxTabSheet;
    cxTabSheet4: TcxTabSheet;
    dxBarButton11: TdxBarButton;
    dxBarDateCombo1: TdxBarDateCombo;
    SP_Vagon: TADOStoredProc;
    cxTabSheet5: TcxTabSheet;
    cxTabSheet7: TcxTabSheet;
    cxGrid1DBBandedTableView1type_park_name_full: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1contract_cod: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1contract_date_begin: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1copper_calibration: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1volume: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1service_life: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1date_registration: TcxGridDBBandedColumn;
    dxBarButton16: TdxBarButton;
    cxTabSheet6: TcxTabSheet;
    cxGrid2DBBandedTableView1type_park_name: TcxGridDBBandedColumn;
    dxBarButton23: TdxBarButton;
    dxBarLargeButton1: TdxBarLargeButton;
    dxBarButton26: TdxBarButton;
    dxBarButton27: TdxBarButton;
    dxBarButton28: TdxBarButton;
    dxBarButton32: TdxBarButton;
    dxBarSubItem4: TdxBarSubItem;
    dxBarButton33: TdxBarButton;
    dxBarButton34: TdxBarButton;
    cxPageControl1: TcxPageControl;
    cxTabSheet8: TcxTabSheet;
    cxTabSheet9: TcxTabSheet;
    cxPageControl3: TcxPageControl;
    cxTabSheet13: TcxTabSheet;
    cxTabSheet14: TcxTabSheet;
    cxTabSheet15: TcxTabSheet;
    cxTabSheet16: TcxTabSheet;
    cxGrid4: TcxGrid;
    cxGrid4DBBandedTableView1: TcxGridDBBandedTableView;
    cxGrid4Level1: TcxGridLevel;
    SP_Vagon_Tracing: TADOStoredProc;
    DS_Vagon_Tracing: TDataSource;
    dxBarPopup_VagonTracing: TdxBarPopupMenu;
    cxGrid4DBBandedTableView1vagon_id: TcxGridDBBandedColumn;
    cxGrid4DBBandedTableView1num_vagon: TcxGridDBBandedColumn;
    cxGrid4DBBandedTableView1date_begin: TcxGridDBBandedColumn;
    cxGrid4DBBandedTableView1date_end: TcxGridDBBandedColumn;
    cxGrid4DBBandedTableView1vagon_tracing_id: TcxGridDBBandedColumn;
    cxGrid4DBBandedTableView1contract_id: TcxGridDBBandedColumn;
    cxGrid4DBBandedTableView1contract_cod: TcxGridDBBandedColumn;
    cxGrid4DBBandedTableView1firm_customer_name: TcxGridDBBandedColumn;
    cxGrid4DBBandedTableView1users_group_id: TcxGridDBBandedColumn;
    cxGrid4DBBandedTableView1type_park_id: TcxGridDBBandedColumn;
    cxGrid4DBBandedTableView1type_park_name: TcxGridDBBandedColumn;
    cxGrid4DBBandedTableView1type_park_name_full: TcxGridDBBandedColumn;
    cxGrid4DBBandedTableView1type_park_cod: TcxGridDBBandedColumn;
    cxGrid4DBBandedTableView1contract_date_begin: TcxGridDBBandedColumn;
    cxGrid4DBBandedTableView1date_begin_tracing: TcxGridDBBandedColumn;
    cxGrid4DBBandedTableView1date_end_tracing: TcxGridDBBandedColumn;
    cxGrid4DBBandedTableView1users_open_id: TcxGridDBBandedColumn;
    cxGrid4DBBandedTableView1FIO_users_open: TcxGridDBBandedColumn;
    cxGrid4DBBandedTableView1users_close_id: TcxGridDBBandedColumn;
    cxGrid4DBBandedTableView1FIO_users_close: TcxGridDBBandedColumn;
    dxBarButton35: TdxBarButton;
    cxTabSheet10: TcxTabSheet;
    dxBarButton38: TdxBarButton;
    dxBarButton40: TdxBarButton;
    dxBarButton41: TdxBarButton;
    dxBarDockControl1: TdxBarDockControl;
    dxBarDockControl2: TdxBarDockControl;
    dxBarManager1Bar2: TdxBar;
    cxGrid2DBBandedTableView1vagon_id: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1num_vagon: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1contract_id: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1type_park_id: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1type_park_cod: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1contract_date_begin: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1users_open_id: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1FIO_users_open: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1users_close_id: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1FIO_users_close: TcxGridDBBandedColumn;
    dxBarButton36: TdxBarButton;
    dxBarButton37: TdxBarButton;
    dxBarSubItem5: TdxBarSubItem;
    cxTabSheet11: TcxTabSheet;
    cxGrid1DBBandedTableView1set_on_run: TcxGridDBBandedColumn;
    dxBarButton43: TdxBarButton;
    dxBarButton44: TdxBarButton;
    dxBarButton45: TdxBarButton;
    dxBarSubItem9: TdxBarSubItem;
    dxBarButton46: TdxBarButton;
    dxBarButton47: TdxBarButton;
    dxBarButton48: TdxBarButton;
    cxGrid2DBBandedTableView1comment: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1comment: TcxGridDBBandedColumn;
    dxBarButton50: TdxBarButton;
    cxGrid1DBBandedTableView1set_sanctions: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1date_load: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1carNSIDate: TcxGridDBBandedColumn;
    dxBarButton51: TdxBarButton;
    dxBarButton52: TdxBarButton;
    cxGrid3DBBandedTableView1date_enter: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1date_modify: TcxGridDBBandedColumn;
    dxBarButton53: TdxBarButton;
    dxBarSubItem10: TdxBarSubItem;
    dxBarButton55: TdxBarButton;
    dxBarButton56: TdxBarButton;
    cxImageList2: TcxImageList;
    dxBarButton57: TdxBarButton;
    cxGrid2DBBandedTableView1firm_self_name: TcxGridDBBandedColumn;
    cxStyle_ColorWhite: TcxStyle;
    procedure dxBarButton1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure dxBarButton2Click(Sender: TObject);
    procedure dxBarButton7Click(Sender: TObject);
    procedure dxBarButton8Click(Sender: TObject);
    procedure dxBarButton3Click(Sender: TObject);
    procedure dxBarButton5Click(Sender: TObject);
    procedure dxBarButton6Click(Sender: TObject);
    procedure cxGrid1DBBandedTableView1CustomDrawCell(Sender: TcxCustomGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
    procedure cxGrid1DBBandedTableView1CustomDrawColumnHeader(Sender: TcxGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxGridColumnHeaderViewInfo; var ADone: Boolean);
    procedure cxGrid1DBBandedTableView1KeyPress(Sender: TObject; var Key: Char);
    procedure cxGrid1DBBandedTableView1FocusedItemChanged(Sender: TcxCustomGridTableView; APrevFocusedItem, AFocusedItem: TcxCustomGridTableItem);
    procedure dxBarButton12Click(Sender: TObject);
    procedure dxBarButton13Click(Sender: TObject);
    procedure dxBarButton14Click(Sender: TObject);
    procedure dxBarButton15Click(Sender: TObject);
    procedure cxGrid3DBBandedTableView1DblClick(Sender: TObject);
    procedure cxGrid1DBBandedTableView1DataControllerFilterChanged(Sender: TObject);
    procedure dxBarButton17Click(Sender: TObject);
    procedure dxBarButton18Click(Sender: TObject);
    procedure dxBarButton19Click(Sender: TObject);
    procedure dxBarButton20Click(Sender: TObject);
    procedure dxBarButton21Click(Sender: TObject);
    procedure dxBarButton_FilterClick(Sender: TObject);
    procedure dxBarButton24Click(Sender: TObject);
    procedure dxBarButton_FilterRecords1Click(Sender: TObject);
    procedure dxBarButton4Click(Sender: TObject);
    procedure dxBarButton23Click(Sender: TObject);
    procedure dxBarButton28Click(Sender: TObject);
    procedure dxBarButton29Click(Sender: TObject);
    procedure dxBarButton31Click(Sender: TObject);
    procedure dxBarPopup_VagonPopup(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure cxPageControl1Change(Sender: TObject);
    procedure dxBarButton22Click(Sender: TObject);
    procedure ADOVagonExecuteComplete(Connection: TADOConnection; RecordsAffected: Integer; const Error: Error; var EventStatus: TEventStatus;     const Command: _Command; const Recordset: _Recordset);
    procedure dxBarButton27Click(Sender: TObject);
    procedure dxBarButton33Click(Sender: TObject);
    procedure dxBarButton34Click(Sender: TObject);
    procedure dxBarButton35Click(Sender: TObject);
    procedure dxBarButton41Click(Sender: TObject);
    procedure dxBarButton36Click(Sender: TObject);
    procedure cxGrid1DBBandedTableView1SelectionChanged(Sender: TcxCustomGridTableView);
    procedure dxBarButton47Click(Sender: TObject);
    procedure dxBarButton48Click(Sender: TObject);
    procedure dxBarButton50Click(Sender: TObject);
    procedure dxBarButton51Click(Sender: TObject);
    procedure dxBarButton52Click(Sender: TObject);
    procedure dxBarButton53Click(Sender: TObject);
    procedure dxBarButton55Click(Sender: TObject);
  private
    Fvagon_id      : integer;
    Fvagon_num     : integer;
    Fstr_vagon_num : string;
    Fowner_name    : string;
    Fdate1, Fdate2 : TDateTime;
    procedure SetVagonId(vagon_id : integer);
    procedure SetActivePage(active_page : integer);
  public
    Fusr_pwd      : PUser_pwd;
    Copy_User_pwd : TUser_pwd;
    constructor Create(App: TApplication; flag: boolean; usr_pwd: PUser_pwd; page: integer); overload;
    constructor Create(App: TApplication; flag: boolean; str_connect: string; page: integer); overload;
  published
    property _GetVagonId  : integer read Fvagon_id;
    property _GetVagonNum : integer read Fvagon_num;
    property _SetVagonId  : integer write SetVagonId;
    property _SetActivePage  : integer write SetActivePage;
    property _GetStrVagonNum : string read Fstr_vagon_num;
    property _SetStrVagonNum : string write Fstr_vagon_num;
    property _GetVagonOwner : string read Fowner_name;

  end;

function CreateWndVagon(AppHand: THandle; flag: boolean; usr_pwd:PUser_pwd; page: integer) : variant; export;
function CreateWndVagonLocate(AppHand: THandle; flag: boolean; usr_pwd:PUser_pwd; str_num_vagon:string) : variant; export;
function CreateWndVagonNew(AppHand: THandle; flag: boolean; str_connect: string; page: integer) : variant; export;

var
  fmVagon: TfmVagon;

implementation
   uses VagonAdd, Raznoe, Filter, Other, VagonCommentAdd, VagonChoose, VagonOwnerAdd, Contract, Period;
{$R *.dfm}

function CreateWndVagonLocate(AppHand: THandle; flag: boolean; usr_pwd:PUser_pwd; str_num_vagon:string) : variant; export;
begin
  Screen.Cursor := crHourglass;

  Application.Handle := AppHand;
  fmVagon := TfmVagon.Create(Application, flag, usr_pwd, 0);
  fmVagon.dxBarButton24.Down := True;
  fmVagon._SetStrVagonNum:= str_num_vagon;
  fmVagon._SetActivePage := 6;  // весь парк
  with fmVagon do
    try
      if ShowModal=mrOK then result := VarArrayOf([fmVagon._GetVagonId, fmVagon._GetStrVagonNum, fmVagon._GetVagonOwner])
      else result := VarArrayOf([-9, '']);
    finally
      Free;
    end;
  Screen.Cursor := crDefault;
end;

function CreateWndVagon(AppHand: THandle; flag: boolean; usr_pwd: PUser_pwd; page: integer) : variant; export;
begin
  Application.Handle := AppHand;
  fmVagon := TfmVagon.Create(Application, flag, usr_pwd, page);
  with fmVagon do
    try
      if ShowModal=mrOK then result := VarArrayOf([fmVagon._GetVagonId, fmVagon._GetStrVagonNum, fmVagon._GetVagonOwner])
      else result := VarArrayOf([-9, '']);
    finally
      Free;
    end;
end;

function CreateWndVagonNew(AppHand: THandle; flag: boolean; str_connect: string; page: integer) : variant; export;
begin
  Application.Handle := AppHand;
  fmVagon := TfmVagon.Create(Application, flag, str_connect, page);
  with fmVagon do
    try
      if ShowModal=mrOK then result := VarArrayOf([fmVagon._GetVagonId, fmVagon._GetStrVagonNum, fmVagon._GetVagonOwner])
      else result := VarArrayOf([-9, '']);
    finally
      Free;
    end;
end;

procedure TfmVagon.ADOVagonExecuteComplete(Connection: TADOConnection; RecordsAffected: Integer; const Error: Error; var EventStatus: TEventStatus; const Command: _Command; const Recordset: _Recordset);
begin
  if EventStatus = esErrorsOccured then begin
    Application.MessageBox(PWideChar(error.Description), 'Внимание', MB_OK);
    ShowTextMessage('', True);
  end;
end;

constructor TfmVagon.Create(App: TApplication; flag: boolean; usr_pwd: PUser_pwd; page: integer);
begin
  Screen.Cursor := crHourglass;

  inherited Create(App);
  cxLocalizer1.Locale := 1049;

  ADOVagon.Connected := False;
  ADOVagon.ConnectionString := 'Persist Security Info=True;Provider=SQLOLEDB.1;User ID='+usr_pwd^.user_name+';Password='+usr_pwd^.user_pass+';Initial Catalog='+usr_pwd^.catalog+';Data Source='+usr_pwd^.server+';';
  ADOVagon.Connected := True;
  Fstr_vagon_num := '';
  Fusr_pwd := usr_pwd;

  cxPageControl1.OnChange := nil;
  cxPageControl2.OnChange := nil;
  cxPageControl3.OnChange := nil;

  cxPageControl1.ActivePageIndex := 0;
  cxPageControl2.ActivePageIndex := 0;
  cxPageControl3.ActivePageIndex := 0;
  dxBarDateCombo1.Date := Date;

  Fdate1 := Now;
  Fdate2 := Now;
  dxBarSubItem10.Caption := FormatDateTime('dd.mm.yy hh:mm', Fdate1);

  SetUsersModuleRights(self, ADOVagon);

  if page = 1 then Caption := 'Слежение';

  cxPageControl1.ActivePageIndex := page;
  cxPageControl1.OnChange := cxPageControl1Change;
  cxPageControl2.OnChange := cxPageControl1Change;
  cxPageControl3.OnChange := cxPageControl1Change;
  cxPageControl1Change(nil);


  if Flag then begin
    cxPropertiesStore1.Active := False;
    dxBarButton20.Visible := ivAlways;
    dxBarButton13.Down := False;
    dxBarButton15.Down := False;
    dxBarButton13Click(dxBarButton13);
    dxBarButton15Click(dxBarButton15);
    cxGrid1DBBandedTableView1.OnDblClick := dxBarButton20Click;
  end;

  StoreRegistryGrid(rgLoad, '\Software\Lis1\Vagon_Grids', cxGrid1DBBandedTableView1, 3);
  StoreRegistryGrid(rgLoad, '\Software\Lis1\Vagon_Grids', cxGrid2DBBandedTableView1);
  StoreRegistryGrid(rgLoad, '\Software\Lis1\Vagon_Grids', cxGrid3DBBandedTableView1);

  MonitorEventFormOpen('OPEN_FORM', self.Name, ADOVagon, -9);

  Screen.Cursor := crDefault;
end;

constructor TfmVagon.Create(App: TApplication; flag: boolean; str_connect: string; page: integer);
begin
  Screen.Cursor := crHourglass;

  inherited Create(App);
  cxLocalizer1.Locale := 1049;

  ADOVagon.Connected := False;
  ADOVagon.ConnectionString := str_connect;
  ADOVagon.Connected := True;
  Fstr_vagon_num := '';

  new(Fusr_pwd);
  Fusr_pwd.users_id := GetDBUsersID(ADOVagon);
  Fusr_pwd.user_group_id := GetDBUsersGroup(ADOVagon);
  Fusr_pwd.user_name := GetDBUserName(ADOVagon);
  Fusr_pwd.user_pass := GetDBUserPass(ADOVagon);
  Fusr_pwd.server := GetDBServer(ADOVagon);
  Fusr_pwd.catalog := GetDBDatabase(ADOVagon);

  cxPageControl1.OnChange := nil;
  cxPageControl2.OnChange := nil;
  cxPageControl3.OnChange := nil;

  cxPageControl1.ActivePageIndex := 0;
  cxPageControl2.ActivePageIndex := 0;
  cxPageControl3.ActivePageIndex := 0;
  dxBarDateCombo1.Date := Date;

  Fdate1 := Now;
  Fdate2 := Now;
  dxBarSubItem10.Caption := FormatDateTime('dd.mm.yy hh:mm', Fdate1);

  SetUsersModuleRights(self, ADOVagon);

  if page = 1 then Caption := 'Слежение';

  cxPageControl1.ActivePageIndex := page;
  cxPageControl1.OnChange := cxPageControl1Change;
  cxPageControl2.OnChange := cxPageControl1Change;
  cxPageControl3.OnChange := cxPageControl1Change;
  cxPageControl1Change(nil);


  if Flag then begin
    cxPropertiesStore1.Active := False;
    dxBarButton20.Visible := ivAlways;
    dxBarButton13.Down := False;
    dxBarButton15.Down := False;
    dxBarButton13Click(dxBarButton13);
    dxBarButton15Click(dxBarButton15);
    cxGrid1DBBandedTableView1.OnDblClick := dxBarButton20Click;
  end;

  StoreRegistryGrid(rgLoad, '\Software\Lis1\Vagon_Grids', cxGrid1DBBandedTableView1, 3);
  StoreRegistryGrid(rgLoad, '\Software\Lis1\Vagon_Grids', cxGrid2DBBandedTableView1);
  StoreRegistryGrid(rgLoad, '\Software\Lis1\Vagon_Grids', cxGrid3DBBandedTableView1);

  MonitorEventFormOpen('OPEN_FORM', self.Name, ADOVagon, -9);

  Screen.Cursor := crDefault;
end;

procedure TfmVagon.cxGrid1DBBandedTableView1CustomDrawCell(Sender: TcxCustomGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
  if Sender = cxGrid1DBBandedTableView1 then begin
    // Только для основной таблицы
    if (AViewInfo.GridRecord.Values[cxGrid1DBBandedTableView1global_color.Index]<>NULL) then ACanvas.Brush.Color := AViewInfo.GridRecord.Values[cxGrid1DBBandedTableView1global_color.Index];

    if (AViewInfo.GridRecord.Values[cxGrid1DBBandedTableView1date_end.Index]<>NULL) AND (AViewInfo.GridRecord.Values[cxGrid1DBBandedTableView1date_end.Index] < dxBarDateCombo1.Date) then begin
     ACanvas.Brush.Color := $00D7C6FD;//AViewInfo.GridRecord.Values[$00D7C6FD];
     ACanvas.Font.Style  := [fsBold];
    end;
  end;

  if AViewInfo.GridRecord.Selected or AViewInfo.GridRecord.Focused then begin
    ACanvas.Brush.Color := clNavy;
    ACanvas.Font.Color  := clWhite;
    if AViewInfo.Focused then ACanvas.Brush.Color := clBlue;
  end;
end;

procedure TfmVagon.cxGrid1DBBandedTableView1CustomDrawColumnHeader(Sender: TcxGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxGridColumnHeaderViewInfo; var ADone: Boolean);
begin
  DrawcxGridColumnOnFocused(Sender, ACanvas, AViewInfo);
end;

procedure TfmVagon.cxGrid1DBBandedTableView1DataControllerFilterChanged(Sender: TObject);
begin
  DrawcxGridColumnOnFiltered(Sender);
end;

procedure TfmVagon.cxGrid1DBBandedTableView1FocusedItemChanged(Sender: TcxCustomGridTableView; APrevFocusedItem, AFocusedItem: TcxCustomGridTableItem);
begin
  Sender.Painter.Invalidate;
end;

procedure TfmVagon.cxGrid1DBBandedTableView1KeyPress(Sender: TObject; var Key: Char);
begin
  FilterColumnGridOnKeyPress(TcxGridDBBandedTableView(TcxGridSite(Sender).GridView), Key);
end;

procedure TfmVagon.cxGrid1DBBandedTableView1SelectionChanged(Sender: TcxCustomGridTableView);
begin
  Screen.Cursor := crHourglass;

  Query_Owner.Close;
  Query_Vagon_Comment.Close;

  if (cxGrid1DBBandedTableView1.Controller.FocusedRecord <> nil) then  begin
    if dxBarButton13.Down then begin
      Query_Owner.Parameters.ParamByName('vagon_id').Value := cxGrid1DBBandedTableView1vagon_id.DataBinding.Field.AsInteger;
      Query_Owner.Open;
    end;

    if dxBarButton15.Down then begin
      Query_Vagon_Comment.Parameters.ParamByName('vagon_id').Value := cxGrid1DBBandedTableView1vagon_id.DataBinding.Field.AsInteger;
      Query_Vagon_Comment.Open;
    end;
  end;

  Screen.Cursor := crDefault;
end;

procedure TfmVagon.cxGrid3DBBandedTableView1DblClick(Sender: TObject);
begin
  fmVagonCommentAdd := TfmVagonCommentAdd.Create(Application, Fusr_pwd, cxGrid1DBBandedTableView1vagon_id.DataBinding.Field.AsString);
  fmVagonCommentAdd._SetUpdate := cxGrid3DBBandedTableView1vagon_comment_id.DataBinding.Field.AsInteger;
  if fmVagonCommentAdd.ShowModal = mrOk then
    RefreshQueryGrid(cxGrid1DBBandedTableView1, 'vagon_id', cxGrid1DBBandedTableView1vagon_id.DataBinding.Field.AsInteger);
end;

procedure TfmVagon.cxPageControl1Change(Sender: TObject);
var d : TDateTime;
begin
  Screen.Cursor := crHourglass;

  dxBarDateCombo1.Enabled := (cxPageControl1.ActivePageIndex = 0);
  dxBarSubItem10.Enabled := (cxPageControl3.ActivePageIndex = 5);

  d := Now;
  case cxPageControl1.ActivePageIndex of
    //-----справочник вагонов
    0 : begin
          Caption := 'Справочник вагонов';
          if Fstr_vagon_num <> '' then begin
            Caption := 'Справочник вагонов - Фильтр по вагонам № ' + Fstr_vagon_num;
            // ------ показать все вагоны
            dxBarButton25.Down := True;
          end;

          SP_Vagon.Close;
          SP_Vagon.Parameters.Refresh;
          SP_Vagon.Parameters.ParamByName('@type_park'    ).Value := iif(cxPageControl2.ActivePageIndex = 6, null, cxPageControl2.ActivePageIndex);
          SP_Vagon.Parameters.ParamByName('@date1'        ).Value := dxBarDateCombo1.Date;
          SP_Vagon.Parameters.ParamByName('@set_view_all' ).Value := iif(dxBarButton25.Down, 1, null);
          SP_Vagon.Parameters.ParamByName('@str_vagon_num').Value := iif(Fstr_vagon_num = '', null, Fstr_vagon_num);
          SP_Vagon.Open;

          Query_Vagon_Comment.Close;
          if (dxBarButton15.Down) and (SP_Vagon.RecordCount > 0) then begin
           Query_Vagon_Comment.Parameters.ParamByName('vagon_id').Value := cxGrid1DBBandedTableView1vagon_id.DataBinding.Field.AsInteger;
           Query_Vagon_Comment.Open;
          end;
        end;

    // ----- Слежение ----------------
    1 : begin
          Caption := 'Слежение';

          SP_Vagon_Tracing.Close;
          SP_Vagon_Tracing.Parameters.Refresh;
          SP_Vagon_Tracing.Parameters.ParamByName('@type_view'    ).Value := cxPageControl3.ActivePageIndex;
          SP_Vagon_Tracing.Parameters.ParamByName('@date_view'    ).Value := Fdate1; //cxBarEditItem1.EditValue;
          SP_Vagon_Tracing.Parameters.ParamByName('@date_view_end').Value := Fdate2; //cxBarEditItem1.EditValue;
          SP_Vagon_Tracing.Open;
        end;
  end;

  dxStatusBar1.Panels[3].Text := IntToStr(SecondsBetween(now, d)) + ' сек.';
  Screen.Cursor := crDefault;
end;

procedure TfmVagon.dxBarButton12Click(Sender: TObject);
var str_vagon_id : string;
begin
  fmVagonAdd := TfmVagonAdd.Create(Application, ADOVagon);
  str_vagon_id := cx_GetSelectedValues(cxGrid1, 'vagon_id');
  fmVagonAdd._SetUpdateGroup := str_vagon_id;
  if fmVagonAdd.ShowModal = mrOk then
    RefreshQueryGrid(cxGrid1DBBandedTableView1, 'vagon_id', cxGrid1DBBandedTableView1vagon_id.DataBinding.Field.AsInteger);
end;

procedure TfmVagon.dxBarButton1Click(Sender: TObject);
begin
  fmVagonAdd := TfmVagonAdd.Create(Application, ADOVagon);
  fmVagonAdd._SetInsert := '';
  if fmVagonAdd.ShowModal = mrOk then
    RefreshQueryGrid(cxGrid1DBBandedTableView1, 'vagon_id', fmVagonAdd._GetVagonId);
end;

procedure TfmVagon.dxBarButton13Click(Sender: TObject);
begin
  GroupBox1.Visible := dxBarButton13.Down;
  Splitter1.Visible := dxBarButton13.Down;

  Query_Owner.Close;
  if dxBarButton13.Down then begin
    Query_Owner.Parameters.ParamByName('vagon_id').Value := cxGrid1DBBandedTableView1vagon_id.DataBinding.Field.AsInteger;
    Query_Owner.Open;
  end;
end;

procedure TfmVagon.dxBarButton20Click(Sender: TObject);
var i : integer;
begin
  for i := 0 to cxGrid1DBBandedTableView1.Controller.SelectedRowCount - 1 do begin
    Fstr_vagon_num := Fstr_vagon_num + ',' + string(cxGrid1DBBandedTableView1.Controller.SelectedRows[i].Values[cxGrid1DBBandedTableView1num_vagon.Index]);
    Fvagon_id      := cxGrid1DBBandedTableView1.Controller.SelectedRows[i].Values[cxGrid1DBBandedTableView1vagon_id.Index];
    Fowner_name    := cxGrid1DBBandedTableView1.Controller.SelectedRows[i].Values[cxGrid1DBBandedTableView1owner_name.Index];
  end;
  Delete(Fstr_vagon_num, 1, 1);

  ModalResult := mrOk;
end;

procedure TfmVagon.dxBarButton2Click(Sender: TObject);
begin
  fmVagonAdd := TfmVagonAdd.Create(Application, ADOVagon);
  fmVagonAdd._SetUpdate := cxGrid1DBBandedTableView1vagon_id.DataBinding.Field.AsInteger;
  if fmVagonAdd.ShowModal = mrOk then
    RefreshQueryGrid(cxGrid1DBBandedTableView1, 'vagon_id', fmVagonAdd._GetVagonId);
end;

procedure TfmVagon.dxBarButton31Click(Sender: TObject);
begin
   AllowableKargo(cxGrid1DBBandedTableView1, fmVagon.ADOVagon);
end;

procedure TfmVagon.dxBarButton33Click(Sender: TObject);
var SP : TADOStoredProc;
begin
  if cxGrid2DBBandedTableView1vagon_owner_id.DataBinding.Field.IsNull then exit;

  if Application.MessageBox('Удалить владельца?', 'Внимание', MB_OKCANCEL) = ID_OK then begin
    Screen.Cursor := crHourglass;

    SP := TADOStoredProc.Create(nil);
    SP.Connection := ADOVagon;
    SP.ProcedureName := 'sp_vagon_owner_modify';
    SP.Parameters.Refresh;
    //for i := 0 to cxGrid1DBBandedTableView1.Controller.SelectedRowCount - 1 do begin
      SP.Close;
      SP.Parameters.Refresh;
      SP.Parameters.ParamByName('@type_action').Value := 2;
      SP.Parameters.ParamByName('@vagon_owner_id').Value := cxGrid2DBBandedTableView1vagon_owner_id.DataBinding.Field.AsInteger;//cxGrid1DBBandedTableView1.Controller.SelectedRows[i].Values[cxGrid1DBBandedTableView1vagon_id.Index];
      try
        SP.ExecProc;
      except
      end;
    //  ShowTextMessage('Осталось ' + IntToStr(cxGrid1DBBandedTableView1.Controller.SelectedRowCount - i) + ' записей...', False);
    //end;
    ShowTextMessage;

    RefreshQueryGrid(cxGrid2DBBandedTableView1, 'vagon_owner_id');
    Screen.Cursor := crDefault;
  end;
end;

procedure TfmVagon.dxBarButton34Click(Sender: TObject);
begin
  if cxGrid2DBBandedTableView1vagon_owner_id.DataBinding.Field.IsNull then exit;

  fmVagonOwnerAdd := TfmVagonOwnerAdd.Create(Application);
  fmVagonOwnerAdd._Connection := ADOVagon;
  fmVagonOwnerAdd._SetUpdate := cxGrid2DBBandedTableView1vagon_owner_id.DataBinding.Field.AsInteger;
  if fmVagonOwnerAdd.ShowModal = mrOk then
    RefreshQueryGrid(cxGrid1DBBandedTableView1, cxGrid1DBBandedTableView1.DataController.KeyFieldNames);
end;

procedure TfmVagon.dxBarButton35Click(Sender: TObject);
var str_num_vagon : string;
                i : integer;
          clboard : TClipboard;
begin
  str_num_vagon := '';

  for i := 0 to cxGrid4DBBandedTableView1.Controller.SelectedRecordCount - 1 do begin
    str_num_vagon := str_num_vagon + VarToStr(cxGrid4DBBandedTableView1.Controller.SelectedRecords[i].Values[cxGrid4DBBandedTableView1num_vagon.Index]);
    str_num_vagon := str_num_vagon + #13#10;
  end;

  clboard := TClipboard.Create;
  clboard.AsText := str_num_vagon;
  clboard.Free;

end;

procedure TfmVagon.dxBarButton36Click(Sender: TObject);
var          i : integer;
            SP : TADOStoredProc;
 str_num_vagon : string;
   type_action : integer;
begin
  str_num_vagon := '';

  for i := 0 to cxGrid4DBBandedTableView1.Controller.SelectedRecordCount - 1 do begin
    if i > 0 then str_num_vagon := str_num_vagon + ',';
    str_num_vagon := str_num_vagon + VarToStr(cxGrid4DBBandedTableView1.Controller.SelectedRecords[i].Values[cxGrid4DBBandedTableView1num_vagon.Index]);
  end;

  case TComponent(Sender).Tag of
    0 : begin
          str_num_vagon := ReplaceStr(str_num_vagon, ',', #13#10);
          fmVagonChoose:= TfmVagonChoose.Create(Application);
          fmVagonChoose.Caption := TdxBarButton(Sender).Caption;
          fmVagonChoose._SetStrVagonNum := str_num_vagon;
          if fmVagonChoose.ShowModal = mrOK then begin
            str_num_vagon := fmVagonChoose._GetStrVagonNum;
            str_num_vagon := ReplaceStr(str_num_vagon, #13#10, ',');
          end else begin
            exit;
          end;

          case cxPageControl3.ActivePageIndex of
            0, 2, 3, 5:     type_action := 7;
            1, 4:           type_action := 8;
          end;
        end;

    1 : begin
          if Application.MessageBox(Pwidechar(TdxBarButton(Sender).Caption + '?'), 'Внимание', MB_YESNO or MB_ICONQUESTION) = ID_NO then
            exit;

          case cxPageControl3.ActivePageIndex of
            0, 2, 3, 5:     type_action := 8;
            1, 4:           type_action := 7;
          end;
      end;

  end;

  SP := TADOStoredProc.Create(nil);
  SP.Connection := ADOVagon;
  SP.ProcedureName := 'sp_vagon_tracing_modify';
  SP.Parameters.Refresh;
  SP.Parameters.ParamByName('@type_action').Value := type_action;
  SP.Parameters.ParamByName('@str_id').Value := str_num_vagon;

  try
    SP.ExecProc;
    RefreshQueryGrid(cxGrid4DBBandedTableView1, cxGrid4DBBandedTableView1.DataController.KeyFieldNames);
  except
  end;

end;

procedure TfmVagon.dxBarButton3Click(Sender: TObject);
var i : integer;
   SP : TADOStoredProc;
begin
  if Application.MessageBox('Вы точно уверены, что хотите удалить?', 'Внимание', MB_OKCANCEL) = ID_OK then begin
    Screen.Cursor := crHourglass;

    SP := TADOStoredProc.Create(nil);
    SP.Connection := ADOVagon;
    SP.ProcedureName := 'sp_vagon_modify';
    SP.Parameters.Refresh;
    for i := 0 to cxGrid1DBBandedTableView1.Controller.SelectedRowCount - 1 do begin
      SP.Close;
      SP.Parameters.Refresh;
      SP.Parameters.ParamByName('@type_action').Value := 2;
      SP.Parameters.ParamByName('@vagon_id').Value := cxGrid1DBBandedTableView1.Controller.SelectedRows[i].Values[cxGrid1DBBandedTableView1vagon_id.Index];
      try
        SP.ExecProc;
      except on E: Exception do
      begin
        Application.MessageBox(PChar(E.Message),'ВНИМАНИЕ!!!' , MB_OK + MB_ICONERROR);
        SP.Free;
      end;

      end;
      ShowTextMessage('Осталось ' + IntToStr(cxGrid1DBBandedTableView1.Controller.SelectedRowCount - i) + ' записей...', False);
    end;
    ShowTextMessage;

    RefreshQueryGrid(cxGrid1DBBandedTableView1, 'vagon_id');
    Screen.Cursor := crDefault;
  end;
end;

procedure TfmVagon.dxBarButton41Click(Sender: TObject);
var      SP : TADOStoredProc;
          q : TADOQuery;
    strList : TStringList;

        s,s1     : TStringStream;
      files_data : TArray<Byte>;

       file_name : string;
 files_format_id : integer;

    files_rows_count : integer;
begin

  if Application.MessageBox('Сформировать список вагонов на Слежении?'#10'Все необработаные вагоны, будут включены в список'#10'и помечены как переданные поставщику информации.', 'Внимание', MB_ICONQUESTION or MB_YESNO) = ID_NO then
    exit;

  Screen.Cursor := crHourglass;

  SP := TADOStoredProc.Create(nil);
  SP.Connection := ADOVagon;
  SP.ProcedureName := 'sp_vagon_tracing_file_create';
  SP.Parameters.Refresh;
  SP.Parameters.ParamByName('@set_update_date_tracing').Value := True;

  try
    SP.Open; // формирование списка вагонов и проставление дат постановки/снятия на/со слежения
  except
    SP.Free;
    Screen.Cursor := crDefault;
    exit;
  end;

  // формирование файла
  strList := TStringList.Create;
  files_rows_count := SP.RecordCount;
  while not SP.Eof do begin
    strList.Add(sp.FieldByName('num_vagon').AsString);
    SP.Next;
  end;
  sp.Close;

  // сохранение файла
  q := TADOQuery.Create(nil);
  q.Connection := ADOVagon;
  q.SQL.Text := 'select * from inf_obj where type_inf_id = 130 and inf_obj_cod = ''99999''';
  q.Open;
  files_format_id := q.FieldByName('inf_obj_id').AsInteger;

  Q.Close;
  Q.SQL.Clear;
  Q.SQL.Add('SELECT inf_obj_cod FROM inf_obj WHERE inf_obj_id = ' + IntToStr(Fusr_pwd.user_group_id));
  Q.Open;

  file_name := 'vagons_tracing_' + FormatDateTime('yyyymmddhhnn', Now) + '.txt';

  q.Free;

  SP.ProcedureName := 'sp_fact_track_files_modify';
  SP.Parameters.Refresh;

  SP.Parameters.ParamByName('@files_track_id'  ).Value := null;
  SP.Parameters.ParamByName('@type_action'     ).Value := 0;
  SP.Parameters.ParamByName('@files_format_id' ).Value := files_format_id;
  SP.Parameters.ParamByName('@files_name'      ).Value := file_name;
  SP.Parameters.ParamByName('@files_date'      ).Value := Now;
  SP.Parameters.ParamByName('@files_status'    ).Value := 'Готов к отправке';
  SP.Parameters.ParamByName('@files_rows_count').Value := files_rows_count;

  s := TStringStream.Create('');
  strList.SaveToStream(s);
  files_data := LZHPack(s.Bytes, s.Size);
  s1 := TStringStream.Create(files_data);

  SP.Parameters.ParamByName('@doc_image').LoadFromStream(s1,ftBlob);

  try
    SP.ExecProc;
    Application.MessageBox('Файл сохранен', 'Слежение', MB_ICONINFORMATION + MB_OK);
  except on E: Exception do
    Application.MessageBox(PChar(E.Message), 'Слежение', MB_ICONINFORMATION + MB_OK);
  end;

  s.Free;
  s1.Free;
  strList.Free;
  SP.Free;

  Screen.Cursor := crDefault;

  // Обновление данных
  cxPageControl1Change(nil);
end;


procedure TfmVagon.dxBarButton47Click(Sender: TObject);
begin
  if cxGrid1DBBandedTableView1vagon_id.DataBinding.Field.IsNull then exit;

  fmVagonOwnerAdd := TfmVagonOwnerAdd.Create(Application);
  fmVagonOwnerAdd._Connection := ADOVagon;
  fmVagonOwnerAdd._SetInsert := cxGrid1DBBandedTableView1vagon_id.DataBinding.Field.AsInteger;
  if fmVagonOwnerAdd.ShowModal = mrOk then
    RefreshQueryGrid(cxGrid2DBBandedTableView1, 'vagon_owner_id');
end;

procedure TfmVagon.dxBarButton48Click(Sender: TObject);
var str_vagon_id : string;
begin
  str_vagon_id := cx_GetSelectedValues(cxGrid1, 'vagon_id');
  if str_vagon_id = '' then exit;

  fmVagonCommentAdd := TfmVagonCommentAdd.Create(Application, Fusr_pwd, str_vagon_id);
  fmVagonCommentAdd._SetTypeAction := 6;
  if fmVagonCommentAdd.ShowModal = mrOk then
    RefreshQueryGrid(cxGrid1DBBandedTableView1, 'vagon_id', cxGrid1DBBandedTableView1vagon_id.DataBinding.Field.AsInteger);
end;

procedure TfmVagon.dxBarButton4Click(Sender: TObject);
var
    tmp_path,
    file_name      : string;
    arr_temp       : array[0..1023] of Char;
begin
  case TdxBarButton(Sender).ClickItemLink.Owner.Owner.Tag of
    1 : begin
         if not cxGrid1DBBandedTableView1.OptionsView.GroupByBox then
          PrintcxGrid(cxGrid1DBBandedTableView1)
         else begin
          SetString(tmp_path, arr_temp, GetTempPath(1023,arr_temp));
          DeleteFileFromDir(tmp_path);
          repeat
            file_name := 'xls_' + IntToStr(GetTickCount) + '.xls';
          until not FileExists(tmp_path + file_name);
            ExportGridToExcel(tmp_path + file_name, cxGrid1, False, False);
            if FileExists(tmp_path + file_name) then  ShellExecute(HWND(nil), 'open', PChar(tmp_path + file_name), nil, nil, SW_SHOWNORMAL);
          end;
        end;
    2 : PrintcxGrid(cxGrid2DBBandedTableView1);
    3 : PrintcxGrid(cxGrid3DBBandedTableView1);
    4 : PrintcxGrid(cxGrid4DBBandedTableView1);
  end;
end;

procedure TfmVagon.dxBarButton5Click(Sender: TObject);
begin
  if TdxBarManager(TdxBarButton(Sender).GetParentComponent).Tag = 1 then begin
    case TdxBarButton(Sender).ClickItemLink.Owner.Owner.Tag of
      1 : begin
            SetRecordColor('vagon_id', cxGrid1DBBandedTableView1, 'VAGON', False);
            RefreshQueryGrid(cxGrid1DBBandedTableView1, 'vagon_id', cxGrid1DBBandedTableView1vagon_id.DataBinding.Field.AsInteger);
          end;
    end;
  end;
end;

procedure TfmVagon.dxBarButton6Click(Sender: TObject);
begin
  case TdxBarButton(Sender).ClickItemLink.Owner.Owner.Tag of
    1 : begin
          SetRecordColor('vagon_id', cxGrid1DBBandedTableView1, 'VAGON', True);
          RefreshQueryGrid(cxGrid1DBBandedTableView1, 'vagon_id', cxGrid1DBBandedTableView1vagon_id.DataBinding.Field.AsInteger);
        end;
  end;
end;

procedure TfmVagon.dxBarButton7Click(Sender: TObject);
begin
  case TdxBarButton(Sender).ClickItemLink.Owner.Owner.Tag of
    1 : SetdxDBGridColumns(cxGrid1DBBandedTableView1);
    2 : SetdxDBGridColumns(cxGrid2DBBandedTableView1);
    3 : SetdxDBGridColumns(cxGrid3DBBandedTableView1);
    4 : SetdxDBGridColumns(cxGrid4DBBandedTableView1);
  end;
end;

procedure TfmVagon.dxBarButton8Click(Sender: TObject);
begin
  case TdxBarButton(Sender).ClickItemLink.Owner.Owner.Tag of
    1 : cxGrid1DBBandedTableView1.OptionsView.GroupByBox := not cxGrid1DBBandedTableView1.OptionsView.GroupByBox;
    2 : cxGrid2DBBandedTableView1.OptionsView.GroupByBox := not cxGrid2DBBandedTableView1.OptionsView.GroupByBox;
    3 : cxGrid3DBBandedTableView1.OptionsView.GroupByBox := not cxGrid3DBBandedTableView1.OptionsView.GroupByBox;
    4 : cxGrid4DBBandedTableView1.OptionsView.GroupByBox := not cxGrid4DBBandedTableView1.OptionsView.GroupByBox;
  end;
end;

procedure TfmVagon.dxBarButton_FilterClick(Sender: TObject);
begin
  FiltercxGrid4ListID(cxGrid1DBBandedTableView1);
end;

{$REGION 'Фильтр по всем записям'}
procedure TfmVagon.dxBarButton_FilterRecords1Click(Sender: TObject);
begin
  cxGrid1DBBandedTableView1.Filtering.ColumnFilteredItemsList := not dxBarButton_FilterRecords1.Down;
end;
{$ENDREGION 'Фильтр по всем записям'}

procedure TfmVagon.dxBarPopup_VagonPopup(Sender: TObject);
begin
  if cxGrid1DBBandedTableView1.Controller.FocusedRow <> nil then
    dxBarButton31.Caption := 'Разрешенный груз для модели ' + VarToStr(cxGrid1DBBandedTableView1.Controller.FocusedRow.Values[cxGrid1DBBandedTableView1.GetColumnByFieldName('model_name').Index]);
end;



procedure TfmVagon.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TfmVagon.FormDestroy(Sender: TObject);
begin
  StoreRegistryGrid(rgSave, '\Software\Lis1\Vagon_Grids', cxGrid1DBBandedTableView1);
  StoreRegistryGrid(rgSave, '\Software\Lis1\Vagon_Grids', cxGrid2DBBandedTableView1);
  StoreRegistryGrid(rgSave, '\Software\Lis1\Vagon_Grids', cxGrid3DBBandedTableView1);
end;

procedure TfmVagon.SetActivePage(active_page: integer);
begin
  cxPageControl2.OnChange := nil;
  cxPageControl2.ActivePageIndex := active_page;
  cxPageControl2.OnChange := cxPageControl1Change;

  cxPageControl1Change(cxPageControl2);
end;

procedure TfmVagon.SetVagonId(vagon_id: integer);
begin
  if (vagon_id <> -9) AND (vagon_id <> 0) then begin
    //cxPageControl2.ActivePage := cxTabSheet1;
    if cxGrid1DBBandedTableView1.DataController.LocateByKey(vagon_id) = False then begin
      dxBarButton25.Down := True;
      cxPageControl1Change(cxPageControl2);
      if cxGrid1DBBandedTableView1.DataController.LocateByKey(vagon_id) = False then begin
        Application.MessageBox('Невозможно найти вагон.', 'Внимание!', MB_ICONWARNING or MB_OK);
      end;
    end;

    if cxGrid1DBBandedTableView1.Controller.FocusedRecord <> nil then
      cxGrid1DBBandedTableView1.Controller.FocusedRecord.Selected := True;
  end else
    Application.MessageBox('Невозможно найти вагон.', 'Внимание!', MB_ICONWARNING or MB_OK);
end;

procedure TfmVagon.dxBarButton15Click(Sender: TObject);
begin
  GroupBox2.Visible := dxBarButton15.Down;
  Splitter2.Visible := dxBarButton15.Down;
end;

procedure TfmVagon.dxBarButton17Click(Sender: TObject);
begin
  fmVagonCommentAdd := TfmVagonCommentAdd.Create(Application, Fusr_pwd, cxGrid1DBBandedTableView1vagon_id.DataBinding.Field.AsString);
  if fmVagonCommentAdd.ShowModal = mrOk then
    RefreshQueryGrid(cxGrid3DBBandedTableView1, 'vagon_comment_id', fmVagonCommentAdd._GetVagomCommentId);
end;

procedure TfmVagon.dxBarButton18Click(Sender: TObject);
begin
  fmVagonCommentAdd := TfmVagonCommentAdd.Create(Application, Fusr_pwd, cxGrid1DBBandedTableView1vagon_id.DataBinding.Field.AsString);
  fmVagonCommentAdd._SetUpdate := cxGrid3DBBandedTableView1vagon_comment_id.DataBinding.Field.AsInteger;
  if fmVagonCommentAdd.ShowModal = mrOk then
    RefreshQueryGrid(cxGrid3DBBandedTableView1, 'vagon_comment_id', fmVagonCommentAdd._GetVagomCommentId);
end;

procedure TfmVagon.dxBarButton19Click(Sender: TObject);
var SP : TADOStoredProc;
begin
  if Application.MessageBox('Вы точно уверены, что хотите удалить?', 'Внимание', MB_OKCANCEL) = ID_OK then begin
    Screen.Cursor := crHourglass;
    SP := TADOStoredProc.Create(nil);
    SP.Connection := ADOVagon;
    SP.ProcedureName := 'sp_vagon_comment_modify;1';
    SP.Parameters.Refresh;
    SP.Parameters.ParamByName('@type_action').Value := 2;
    SP.Parameters.ParamByName('@vagon_comment_id').Value := cxGrid3DBBandedTableView1vagon_comment_id.DataBinding.Field.AsInteger;

    SP.ExecProc;

    RefreshQueryGrid(cxGrid3DBBandedTableView1, 'vagon_comment_id');
    Screen.Cursor := crDefault;
  end;
end;

procedure TfmVagon.dxBarButton14Click(Sender: TObject);
var str_vagon_id : string;
begin
  str_vagon_id := cx_GetSelectedValues(cxGrid1, 'vagon_id');
  if str_vagon_id = '' then exit;
  fmVagonCommentAdd := TfmVagonCommentAdd.Create(Application, Fusr_pwd, str_vagon_id);
  if fmVagonCommentAdd.ShowModal = mrOk then
    RefreshQueryGrid(cxGrid1DBBandedTableView1, 'vagon_id', cxGrid1DBBandedTableView1vagon_id.DataBinding.Field.AsInteger);
end;

procedure TfmVagon.dxBarButton21Click(Sender: TObject);
var str_vagon_id : string;
begin
  str_vagon_id := cx_GetSelectedValues(cxGrid1, 'vagon_id');
  if str_vagon_id = '' then exit;

  fmVagonCommentAdd := TfmVagonCommentAdd.Create(Application, Fusr_pwd, str_vagon_id);
  fmVagonCommentAdd._SetTypeAction := 3;
  if fmVagonCommentAdd.ShowModal = mrOk then
    RefreshQueryGrid(cxGrid1DBBandedTableView1, 'vagon_id', cxGrid1DBBandedTableView1vagon_id.DataBinding.Field.AsInteger);
end;

procedure TfmVagon.dxBarButton22Click(Sender: TObject);
type
  TFunc = function(AppHand:THandle; format_file: integer; usr_pwd: PUser_pwd) : Variant;
var
  FTech     : TFunc;
  handle    : THandle;
  v         : Variant;
begin
   Screen.Cursor := crHourglass;
   handle := LoadLibrary('user.dll');
   Screen.Cursor := 0;
   @FTech := GetProcAddress(handle,'CreateWndViewTech');
   v := FTech(Application.Handle, TControl(Sender).Tag, Fusr_pwd);
   FreeLibrary(handle);
   if v[0] = 0 then
     RefreshQueryGrid(cxGrid1DBBandedTableView1, 'vagon_id', cxGrid1DBBandedTableView1vagon_id.DataBinding.Field.AsInteger);
end;

procedure TfmVagon.dxBarButton23Click(Sender: TObject);
begin
  PrintcxGrid(cxGrid2DBBandedTableView1);
end;

procedure TfmVagon.dxBarButton24Click(Sender: TObject);
var    List : TStringList;
          i : integer;
 cxGridView : TcxGridDBBandedTableView;
begin
  fmVagonChoose:= TfmVagonChoose.Create(Application);
  if fmVagonChoose.ShowModal=mrOK then begin
    Screen.Cursor := crHourglass;

    case cxPageControl1.ActivePageIndex of
      0 : cxGridView := cxGrid1DBBandedTableView1;
      1 : cxGridView := cxGrid4DBBandedTableView1;
    end;

    List := TStringList.Create;
    List.Text := fmVagonChoose._GetStrVagonNum;
    cxGridView.DataController.DataSet.DisableControls;

    with cxGridView.DataController.Filter do begin
      Clear;
      Options := Options + [fcoCaseInsensitive];
      Root.BoolOperatorKind := fboOr;
      BeginUpdate;
      for i := 0 to List.Count - 1 do if (Trim(List.Strings[i])<>'') then
        Root.AddItem(cxGridView.GetColumnByFieldName('num_vagon'), foEqual, Trim(List.Strings[i]),Trim(List.Strings[i]) );
      EndUpdate;
      Active := True;
    end;
    cxGridView.DataController.DataSet.EnableControls;
    List.Free;

    Screen.Cursor := crDefault;
  end;
end;

procedure TfmVagon.dxBarButton28Click(Sender: TObject);
begin
  PrintcxGrid(cxGrid3DBBandedTableView1);
end;

procedure TfmVagon.dxBarButton29Click(Sender: TObject);
var i : integer;
   SP : TADOStoredProc;
  msg : PWideChar;
begin
  case TComponent(Sender).Tag of
   6: msg := 'Обновить данные из паспорта?';
   8: msg := 'Установить признак "вагон на пробеге"?';
   9: msg := 'Установить признак "вагон на сроке"?';
  end;

  if Application.MessageBox(msg, 'Внимание', MB_OKCANCEL) = ID_OK then begin
    Screen.Cursor := crHourglass;

    SP := TADOStoredProc.Create(nil);
    SP.Connection := ADOVagon;
    SP.ProcedureName := 'sp_vagon_modify;1';
    SP.Parameters.Refresh;
    for i := 0 to cxGrid1DBBandedTableView1.Controller.SelectedRowCount - 1 do begin
      SP.Close;
      SP.Parameters.Refresh;
      SP.Parameters.ParamByName('@type_action').Value := TComponent(Sender).Tag;
      SP.Parameters.ParamByName('@vagon_id').Value := cxGrid1DBBandedTableView1.Controller.SelectedRows[i].Values[cxGrid1DBBandedTableView1vagon_id.Index];
      try
        SP.ExecProc;
      except
      end;
      ShowTextMessage('Осталось ' + IntToStr(cxGrid1DBBandedTableView1.Controller.SelectedRowCount - i) + ' записей...', False);
    end;
    ShowTextMessage;

    RefreshQueryGrid(cxGrid1DBBandedTableView1, 'vagon_id');
    Screen.Cursor := crDefault;
  end;
end;

procedure TfmVagon.dxBarButton27Click(Sender: TObject);
var str_vagon_id : string;
begin
  if cxPageControl1.ActivePageIndex = 0 then
    str_vagon_id := cx_GetSelectedValues(cxGrid1, 'vagon_id')
  else
    str_vagon_id := cx_GetSelectedValues(cxGrid4, 'vagon_id');

  fmVagonOwnerAdd := TfmVagonOwnerAdd.Create(Application);
  fmVagonOwnerAdd._Connection    := ADOVagon;
  fmVagonOwnerAdd.Caption        := TdxBarButton(Sender).Caption;
  fmVagonOwnerAdd._SetStrVagonId := str_vagon_id;
  fmVagonOwnerAdd._SetTypeAction := TComponent(Sender).Tag;

  if fmVagonOwnerAdd.ShowModal = mrOk then begin
    if cxPageControl1.ActivePageIndex = 0 then
      RefreshQueryGrid(cxGrid1DBBandedTableView1, cxGrid1DBBandedTableView1.DataController.KeyFieldNames)
    else
      RefreshQueryGrid(cxGrid4DBBandedTableView1, cxGrid4DBBandedTableView1.DataController.KeyFieldNames);
  end;
end;

procedure TfmVagon.dxBarButton50Click(Sender: TObject);
var str_vagon_id : string;
begin
  str_vagon_id    := cx_GetSelectedValues(cxGrid1, 'vagon_id');
  fmVagonOwnerAdd := TfmVagonOwnerAdd.Create(Application);
  fmVagonOwnerAdd._Connection    := ADOVagon;
  fmVagonOwnerAdd.Caption        := TdxBarButton(Sender).Caption;
  fmVagonOwnerAdd._SetStrVagonId := str_vagon_id;
  fmVagonOwnerAdd._SetTypeAction := TComponent(Sender).Tag;

  if fmVagonOwnerAdd.ShowModal = mrOk then
    RefreshQueryGrid(cxGrid1DBBandedTableView1, 'vagon_id', cxGrid1DBBandedTableView1vagon_id.DataBinding.Field.AsInteger);
end;

procedure TfmVagon.dxBarButton53Click(Sender: TObject);
var str_vagon_id : string;
begin
  str_vagon_id    := cx_GetSelectedValues(cxGrid1, 'vagon_id');
  fmVagonOwnerAdd := TfmVagonOwnerAdd.Create(Application);
  fmVagonOwnerAdd._Connection    := ADOVagon;
  fmVagonOwnerAdd.Caption        := TdxBarButton(Sender).Caption;
  fmVagonOwnerAdd._SetStrVagonId := str_vagon_id;
  fmVagonOwnerAdd._SetTypeAction := TComponent(Sender).Tag;

  if fmVagonOwnerAdd.ShowModal = mrOk then
    RefreshQueryGrid(cxGrid1DBBandedTableView1, 'vagon_id', cxGrid1DBBandedTableView1vagon_id.DataBinding.Field.AsInteger);
end;



procedure TfmVagon.dxBarButton55Click(Sender: TObject);
var  iTag : integer;
begin
  iTag := TdxBarButton(Sender).Tag;
  fmPeriod := TfmPeriod.Create(Application, Fdate1, Fdate2, iTag);
  if fmPeriod.ShowModal = mrOk then begin
    case iTag of
      6 : begin
          Fdate1 := fmPeriod._GetDateBegin;
          Fdate2 := fmPeriod._GetDateBegin;
          dxBarSubItem10.Caption := FormatDateTime('dd.mm.yy hh:mm', Fdate1);
          end;
      1 : begin
          Fdate1 := fmPeriod._GetDateBegin;
          Fdate2 := IncSecond(fmPeriod._GetDateEnd + 1, -1);
          dxBarSubItem10.Caption := FormatDateTime('dd.mm.yy hh:mm', Fdate1) + ' - ' + FormatDateTime('dd.mm.yy hh:mm', Fdate2);
          end;
    end;

    cxPageControl1Change(cxPageControl1);
  end;

end;

procedure TfmVagon.dxBarButton51Click(Sender: TObject);
type
  TFunc = function(AppHand: THandle; connect: TADOConnection; str_form, str_global_id: string): variant;
var
  FDic   : TFunc;
  handle : THandle;
  v      : Variant;
begin
  handle := LoadLibrary('reports.dll');
  @FDic := GetProcAddress(handle, 'CreateWndMonitorEvent');
  v := FDic(Application.Handle, ADOVagon, 'ВАГОНОВ:', GetStrId(cxGrid1DBBandedTableView1vagon_id, ','));
  FreeLibrary(handle);
end;

procedure TfmVagon.dxBarButton52Click(Sender: TObject);
type
  TFunc = function(AppHand: THandle; connect: TADOConnection; str_form, str_global_id: string): variant;
var
  FDic   : TFunc;
  handle : THandle;
  v      : Variant;
begin
  handle := LoadLibrary('reports.dll');
  @FDic := GetProcAddress(handle, 'CreateWndMonitorEvent');
  v := FDic(Application.Handle, ADOVagon, 'КОММЕНТАРИЕВ:', GetStrId(cxGrid3DBBandedTableView1vagon_comment_id, ','));
  FreeLibrary(handle);
end;

end.
