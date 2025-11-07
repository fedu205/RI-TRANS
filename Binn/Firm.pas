unit Firm;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ComCtrls, ToolWin, Menus, ImgList, ADODB, StdCtrls, Buttons, Default,
  ExtCtrls, cxClasses, cxControls, cxGridCustomView, cxGraphics,
  cxGridCustomTableView, cxGridTableView, cxGridBandedTableView,
  cxGridDBBandedTableView, cxPropertiesStore, cxGridLevel, cxGrid, Db, Variants,
  cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, cxDBData,
  cxCheckBox, cxPC, dxBar, cxColorComboBox, cxBarEditItem, dxBarExtItems, ComObj,
  cxCalendar,cxDBLookupComboBox,ShellAPI, cxMemo, cxLookAndFeels, cxLookAndFeelPainters,
  cxCurrencyEdit, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMetropolis, dxSkinMetropolisDark, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue,
  dxSkinOffice2010Silver, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic,
  dxSkinSharp, dxSkinSharpPlus, dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008, dxSkinTheAsphaltWorld, dxSkinsDefaultPainters,
  dxSkinValentine, dxSkinVS2010, dxSkinWhiteprint, dxSkinXmas2008Blue, dxSkinscxPCPainter, cxNavigator, dxBarBuiltInMenu, dxSkinsdxBarPainter,
  dxSkinOffice2016Colorful, dxSkinOffice2016Dark, dxSkinVisualStudio2013Blue,
  dxSkinVisualStudio2013Dark, dxSkinVisualStudio2013Light, System.ImageList, System.StrUtils,
  cxImageList, dxSkinTheBezier, dxDateRanges, cxDataControllerConditionalFormattingRulesManagerDialog, dxSkinOffice2019Colorful, dxScrollbarAnnotations,
  dxSkinBasic, dxSkinOffice2019Black, dxSkinOffice2019DarkGray, dxSkinOffice2019White;

type
  TfmFirm = class(TForm)
    Query_Firm: TADOQuery;
    DS_Firm: TDataSource;
    cxPropertiesStore1: TcxPropertiesStore;
    dxBarManager1: TdxBarManager;
    dxBarButton1: TdxBarButton;
    dxBarButton2: TdxBarButton;
    dxBarButton3: TdxBarButton;
    dxBarButton4: TdxBarButton;
    dxBarButton5: TdxBarButton;
    dxBarButton7: TdxBarButton;
    Panel1: TPanel;
    cxTabControl1: TcxTabControl;
    dxBarPopupMenu1: TdxBarPopupMenu;
    dxBarButton6: TdxBarButton;
    dxBarSubItem2: TdxBarSubItem;
    dxBarButton11: TdxBarButton;
    dxBarButton12: TdxBarButton;
    dxBarButton13: TdxBarButton;
    dxBarButton14: TdxBarButton;
    dxBarButton15: TdxBarButton;
    dxBarButton16: TdxBarButton;
    Splitter1: TSplitter;
    dxBarButton8: TdxBarButton;
    Query_Contract: TADOQuery;
    DS_Contract: TDataSource;
    dxBarPopupMenu2: TdxBarPopupMenu;
    dxBarButton18: TdxBarButton;
    dxBarButton19: TdxBarButton;
    dxBarSubItem1: TdxBarSubItem;
    dxBarButton10: TdxBarButton;
    dxBarButton20: TdxBarButton;
    Panel2: TPanel;
    cxGrid2: TcxGrid;
    cxGrid2DBBandedTableView1: TcxGridDBBandedTableView;
    cxGrid2DBBandedTableView1contract_id: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1contract_cod: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1type_contract: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1date_begin: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1date_end: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1firm_self_name: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1firm_customer_name: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1note: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1FIO_users_owner: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1date_long: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1global_color: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1rights: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1cnt_global_doc: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1type_contract_name: TcxGridDBBandedColumn;
    cxGrid2Level1: TcxGridLevel;
    dxBarButton26: TdxBarButton;
    dxBarButton27: TdxBarButton;
    dxBarButton28: TdxBarButton;
    dxBarButton29: TdxBarButton;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1: TcxStyle;
    cxGrid2DBBandedTableView1date_enter: TcxGridDBBandedColumn;
    cxPageControl1: TcxPageControl;
    cxTabSheet1: TcxTabSheet;
    cxTabSheet2: TcxTabSheet;
    cxTabSheet3: TcxTabSheet;
    cxTabSheet4: TcxTabSheet;
    Query_FirmContact: TADOQuery;
    DS_FirmContact: TDataSource;
    cxGrid3: TcxGrid;
    cxGrid3DBBandedTableView1: TcxGridDBBandedTableView;
    cxGrid3DBBandedTableView1PrimaryKey: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1type_action: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1firm_contact_id: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1firm_id: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1type_contact_id: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1type_contact_cod: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1type_contact_name: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1firm_contact_name: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1date_begin: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1date_end: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1firm_contact_comment: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1firm_contact_telefon: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1firm_contact_fax: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1firm_contact_email: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1global_color: TcxGridDBBandedColumn;
    cxGrid3Level1: TcxGridLevel;
    cxGrid4: TcxGrid;
    cxGrid4DBBandedTableView1: TcxGridDBBandedTableView;
    cxGrid4DBBandedTableView1type_action: TcxGridDBBandedColumn;
    cxGrid4DBBandedTableView1firm_contact_id: TcxGridDBBandedColumn;
    cxGrid4DBBandedTableView1firm_id: TcxGridDBBandedColumn;
    cxGrid4DBBandedTableView1type_contact_id: TcxGridDBBandedColumn;
    cxGrid4DBBandedTableView1type_contact_cod: TcxGridDBBandedColumn;
    cxGrid4DBBandedTableView1type_contact_name: TcxGridDBBandedColumn;
    cxGrid4DBBandedTableView1firm_contact_name: TcxGridDBBandedColumn;
    cxGrid4DBBandedTableView1date_begin: TcxGridDBBandedColumn;
    cxGrid4DBBandedTableView1date_end: TcxGridDBBandedColumn;
    cxGrid4DBBandedTableView1firm_contact_comment: TcxGridDBBandedColumn;
    cxGrid4DBBandedTableView1firm_contact_telefon: TcxGridDBBandedColumn;
    cxGrid4DBBandedTableView1firm_contact_fax: TcxGridDBBandedColumn;
    cxGrid4DBBandedTableView1firm_contact_email: TcxGridDBBandedColumn;
    cxGrid4DBBandedTableView1PrimaryKey: TcxGridDBBandedColumn;
    cxGrid4DBBandedTableView1global_color: TcxGridDBBandedColumn;
    cxGrid4Level1: TcxGridLevel;
    cxGrid5: TcxGrid;
    cxGrid5DBBandedTableView1: TcxGridDBBandedTableView;
    cxGrid5DBBandedTableView1type_action: TcxGridDBBandedColumn;
    cxGrid5DBBandedTableView1firm_contact_id: TcxGridDBBandedColumn;
    cxGrid5DBBandedTableView1firm_id: TcxGridDBBandedColumn;
    cxGrid5DBBandedTableView1type_contact_id: TcxGridDBBandedColumn;
    cxGrid5DBBandedTableView1type_contact_cod: TcxGridDBBandedColumn;
    cxGrid5DBBandedTableView1type_contact_name: TcxGridDBBandedColumn;
    cxGrid5DBBandedTableView1firm_contact_name: TcxGridDBBandedColumn;
    cxGrid5DBBandedTableView1date_begin: TcxGridDBBandedColumn;
    cxGrid5DBBandedTableView1date_end: TcxGridDBBandedColumn;
    cxGrid5DBBandedTableView1firm_contact_comment: TcxGridDBBandedColumn;
    cxGrid5DBBandedTableView1firm_contact_telefon: TcxGridDBBandedColumn;
    cxGrid5DBBandedTableView1firm_contact_fax: TcxGridDBBandedColumn;
    cxGrid5DBBandedTableView1firm_contact_email: TcxGridDBBandedColumn;
    cxGrid5DBBandedTableView1PrimaryKey: TcxGridDBBandedColumn;
    cxGrid5DBBandedTableView1global_color: TcxGridDBBandedColumn;
    cxGrid5Level1: TcxGridLevel;
    dxBarPopupMenu3: TdxBarPopupMenu;
    cxGrid5DBBandedTableView1set_default: TcxGridDBBandedColumn;
    cxTabSheet5: TcxTabSheet;
    cxGrid6: TcxGrid;
    cxGridDBBandedTableView1: TcxGridDBBandedTableView;
    cxGridDBBandedTableView1doc_id: TcxGridDBBandedColumn;
    cxGridDBBandedTableView1doc_type_describe: TcxGridDBBandedColumn;
    cxGridDBBandedTableView1doc_describe: TcxGridDBBandedColumn;
    cxGridDBBandedTableView1file_name: TcxGridDBBandedColumn;
    cxGridDBBandedTableView1doc_location_FIO_users: TcxGridDBBandedColumn;
    cxGridDBBandedTableView1doc_image_date: TcxGridDBBandedColumn;
    cxGridDBBandedTableView1doc_location_id: TcxGridDBBandedColumn;
    cxGridDBBandedTableView1doc_location_name: TcxGridDBBandedColumn;
    cxGridDBBandedTableView1doc_location_date: TcxGridDBBandedColumn;
    cxGridDBBandedTableView1sign_customer_name: TcxGridDBBandedColumn;
    cxGridDBBandedTableView1doc_location_FIO_users_id: TcxGridDBBandedColumn;
    cxGridDBBandedTableView1sign_customer_id: TcxGridDBBandedColumn;
    cxGridDBBandedTableView1doc_type_cod: TcxGridDBBandedColumn;
    cxGridDBBandedTableView1global_color: TcxGridDBBandedColumn;
    cxGridLevel1: TcxGridLevel;
    Query_DocBlob: TADOQuery;
    DS_DocBlob: TDataSource;
    dxBarPopupMenu4: TdxBarPopupMenu;
    dxBarSubItem3: TdxBarSubItem;
    dxBarButton21: TdxBarButton;
    dxBarButton_FilterColumn: TdxBarButton;
    cxGrid5DBBandedTableView1date_birthday: TcxGridDBBandedColumn;
    cxImageList1: TcxImageList;
    cxGridDBBandedTableView1doc_cod: TcxGridDBBandedColumn;
    dxBarPopupMenu5: TdxBarPopupMenu;
    dxBarButton22: TdxBarButton;
    dxBarButton23: TdxBarButton;
    cxGrid1: TcxGrid;
    cxGrid1DBBandedTableView1: TcxGridDBBandedTableView;
    cxGrid1DBBandedTableView1firm_id: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1firm_name: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1firm_name_short: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1type_self: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1comment: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1cod_okpo: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1firm_cod: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1inn: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1FIO_users: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1global_color: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1cnt_global_doc: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1cod_ogrn: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1firm_property_name: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1kpp: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1grpol_name: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1payer_name: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1rzd_gropl_cod: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1rzd_payer_cod: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1set_load_EDO: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1users_group_name: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1users_group_abbr: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1users_group_cod: TcxGridDBBandedColumn;
    cxGrid1Level1: TcxGridLevel;
    dxBarButton9: TdxBarButton;
    dxBarSubItem4: TdxBarSubItem;
    cxGrid1DBBandedTableView1firm_name_full: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1set_sanctions: TcxGridDBBandedColumn;
    cxTabSheet6: TcxTabSheet;
    cxGrid7: TcxGrid;
    cxGrid7DBBandedTableView1: TcxGridDBBandedTableView;
    cxGridDBBandedColumn1: TcxGridDBBandedColumn;
    cxGridDBBandedColumn2: TcxGridDBBandedColumn;
    cxGridDBBandedColumn3: TcxGridDBBandedColumn;
    cxGridDBBandedColumn4: TcxGridDBBandedColumn;
    cxGridDBBandedColumn5: TcxGridDBBandedColumn;
    cxGridDBBandedColumn6: TcxGridDBBandedColumn;
    cxGridDBBandedColumn7: TcxGridDBBandedColumn;
    cxGridDBBandedColumn8: TcxGridDBBandedColumn;
    cxGridDBBandedColumn9: TcxGridDBBandedColumn;
    cxGridDBBandedColumn10: TcxGridDBBandedColumn;
    cxGridDBBandedColumn11: TcxGridDBBandedColumn;
    cxGridDBBandedColumn12: TcxGridDBBandedColumn;
    cxGridDBBandedColumn13: TcxGridDBBandedColumn;
    cxGridDBBandedColumn14: TcxGridDBBandedColumn;
    cxGridDBBandedColumn15: TcxGridDBBandedColumn;
    cxGridDBBandedColumn16: TcxGridDBBandedColumn;
    cxGridDBBandedColumn17: TcxGridDBBandedColumn;
    cxGrid7Level2: TcxGridLevel;
    cxGrid1DBBandedTableView1edo_id: TcxGridDBBandedColumn;
    dxBarButton17: TdxBarButton;
    dxBarButton24: TdxBarButton;
    procedure dxBarPopupMenu1Popup(Sender: TObject);
    procedure cxPageControl1Change(Sender: TObject);
    procedure dxBarButton2Click(Sender: TObject);
    procedure dxBarButton19Click(Sender: TObject);
    procedure dxBarButton10Click(Sender: TObject);
    procedure dxBarButton18Click(Sender: TObject);
    procedure cxGrid2DBBandedTableView1DblClick(Sender: TObject);
    procedure cxGrid1DBBandedTableView1FocusedRecordChanged(Sender: TcxCustomGridTableView; APrevFocusedRecord, AFocusedRecord: TcxCustomGridRecord; ANewItemRecordFocusingChanged: Boolean);
    procedure dxBarButton8Click(Sender: TObject);
    procedure dxBarButton16Click(Sender: TObject);
    procedure cxGrid1DBBandedTableView1KeyPress(Sender: TObject; var Key: Char);
    procedure dxBarButton15Click(Sender: TObject);
    procedure dxBarButton14Click(Sender: TObject);
    procedure cxTabControl1Change(Sender: TObject);
    procedure dxBarButton13Click(Sender: TObject);
    procedure dxBarButton11Click(Sender: TObject);
    procedure dxBarButton6Click(Sender: TObject);
    procedure dxBarButton7Click(Sender: TObject);
    procedure dxBarButton5Click(Sender: TObject);
    procedure dxBarButton4Click(Sender: TObject);
    procedure dxBarButton3Click(Sender: TObject);
    procedure dxBarButton1Click(Sender: TObject);
    procedure cxGrid1DBBandedTableView1FocusedItemChanged(Sender: TcxCustomGridTableView; APrevFocusedItem, AFocusedItem: TcxCustomGridTableItem);
    procedure cxGrid1DBBandedTableView1CustomDrawColumnHeader(Sender: TcxGridTableView; ACanvas: TcxCanvas;  AViewInfo: TcxGridColumnHeaderViewInfo; var ADone: Boolean);
    procedure cxGrid1DBBandedTableView1DataControllerFilterChanged(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cxGrid1DBBandedTableView1CustomDrawCell(Sender: TcxCustomGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
    procedure cxGridDBBandedTableView1CustomDrawCell(Sender: TcxCustomGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
    procedure dxBarButton21Click(Sender: TObject);
    procedure dxBarButton_FilterColumnClick(Sender: TObject);
    procedure dxBarSubItem2Popup(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure dxBarButton23Click(Sender: TObject);
    procedure dxBarButton9Click(Sender: TObject);
    procedure dxBarButton17Click(Sender: TObject);
    procedure dxBarButton24Click(Sender: TObject);
  private
    Ffirm_id, Ftype_self : integer;
    Ffirm_name           : string;
    Fusr_pwd             : PUser_pwd;
    Fview_FirmContact    : TcxGridDBBandedTableView;

    // Запущена как DLL
    Fset_run_dll : boolean;
    Fconnect     : TADOConnection;

    Ftype_view   : integer;
    // 0 - обычный режим
    // 1 - новый режим (видим сразу несколько организаций)
    procedure SetTypeView(Atype_view : integer);

    procedure LocateFirmId(firm_id : integer);
    procedure SetShowFirm(set_show_firm: boolean);
  public
    constructor Create(AOwner: TApplication; flag: boolean; type_self, type_view: integer; usr_pwd: PUser_pwd);
    constructor CreateDLL(AOwner: TApplication; flag:boolean; type_self: integer; usr_pwd: PUser_pwd);
  published
    property _GetFirmId    : integer read Ffirm_id;
    property _GetFirmName  : string  read Ffirm_name;
    property _LocateFirmId : integer write LocateFirmId;
    property _SetShowFirm  : boolean write SetShowFirm;

    property _TypeView     : integer read Ftype_view write SetTypeView ;
  end;

var
  fmFirm    : TfmFirm;

implementation
   uses FirmAdd, Other, Filter, Main, Raznoe, cxGridDBDataDefinitions, Contract, ContractAdd, FirmContactAdd;

{$R *.DFM}

constructor TfmFirm.CreateDLL(AOwner: TApplication; flag: boolean; type_self: integer; usr_pwd : PUser_pwd);
begin
  Screen.Cursor := crHourglass;
  inherited Create(AOwner);

  Fset_run_dll := True;
  Fusr_pwd     := usr_pwd;
  Ftype_self   := type_self;

  Fconnect := TADOConnection.Create(nil);
  Fconnect.ConnectionString := 'Persist Security Info=True;Provider=SQLOLEDB.1;User ID='+Fusr_pwd^.user_name+';Password='+Fusr_pwd^.user_pass+';Initial Catalog='+Fusr_pwd^.catalog+';Data Source='+Fusr_pwd^.server+';';
  Fconnect.KeepConnection   := False;
  Fconnect.LoginPrompt      := False;

  Query_Firm.Connection := Fconnect;
  Query_Contract.Connection := Fconnect;
  Query_FirmContact.Connection := Fconnect;
  Query_DocBlob.Connection := Fconnect;

  if flag then begin
    dxBarButton7.Visible := ivAlways;
    cxGrid1DBBandedTableView1.OnDblClick := dxBarButton7Click;
    Formstyle := fsNormal;
  end else begin
    dxBarButton7.Visible := ivNever;
    Formstyle := fsMDIChild;
  end;

  cxPageControl1.ActivePageIndex := 0;
  Fview_FirmContact := nil;

  _TypeView    := 0; // Из DLL открываем в обычном режиме

  if cxTabControl1.TabIndex = Ftype_self then cxTabControl1Change(nil)
  else cxTabControl1.TabIndex := Ftype_self;

  StoreRegistryGrid(rgLoad,'\Software\Lis1\Firm_Grids', cxGrid1DBBandedTableView1);
  StoreRegistryGrid(rgLoad,'\Software\Lis1\Firm_Grids', cxGrid2DBBandedTableView1);
  StoreRegistryGrid(rgLoad,'\Software\Lis1\Firm_Grids', cxGrid3DBBandedTableView1);
  StoreRegistryGrid(rgLoad,'\Software\Lis1\Firm_Grids', cxGrid4DBBandedTableView1);
  StoreRegistryGrid(rgLoad,'\Software\Lis1\Firm_Grids', cxGrid5DBBandedTableView1);
  cxGrid1DBBandedTableView1firm_cod.Visible := False;

  SetUsersModuleRights(self, Fconnect);

  dxBarButton1.Enabled := False;
  dxBarButton3.Enabled := False;
  dxBarButton5.Enabled := False;
  dxBarButton16.Enabled := False;
  dxBarButton10.Enabled := False;
  dxBarButton20.Enabled := False;
  dxBarButton18.Enabled := False;
  dxBarButton19.Enabled := False;
  cxGrid2DBBandedTableView1.OnDblClick := nil;
  cxGrid3DBBandedTableView1.OnDblClick := nil;
  cxGrid4DBBandedTableView1.OnDblClick := nil;
  cxGrid5DBBandedTableView1.OnDblClick := nil;
  cxGridDBBandedTableView1.OnDblClick := nil;
  cxGrid2DBBandedTableView1.PopupMenu := nil;
  cxGrid3DBBandedTableView1.PopupMenu := nil;
  cxGrid4DBBandedTableView1.PopupMenu := nil;
  cxGrid5DBBandedTableView1.PopupMenu := nil;
  cxGridDBBandedTableView1.PopupMenu := nil;

  Screen.Cursor := crDefault;
end;

constructor TfmFirm.Create(AOwner: TApplication; flag: boolean; type_self, type_view: integer; usr_pwd: PUser_pwd);
begin
  Screen.Cursor := crHourglass;
  inherited Create(AOwner);

  Fset_run_dll := False;
  Fusr_pwd := usr_pwd;
  Ftype_self := type_self;
  Fconnect := fmMain.Lis;

  if flag then begin
    dxBarButton7.Visible := ivAlways;
    cxGrid1DBBandedTableView1.OnDblClick := dxBarButton7Click;
    Formstyle := fsNormal;
  end else begin
    dxBarButton7.Visible := ivNever;
    Formstyle := fsMDIChild;
  end;

  cxPageControl1.ActivePageIndex := 0;
  Fview_FirmContact := nil;

  _TypeView    := type_view; // Режим просмтора: обычный иил новый

  if cxTabControl1.TabIndex = Ftype_self then cxTabControl1Change(nil)
  else cxTabControl1.TabIndex := Ftype_self;

  StoreRegistryGrid(rgLoad,'\Software\Lis1\Firm_Grids', cxGrid1DBBandedTableView1);
  StoreRegistryGrid(rgLoad,'\Software\Lis1\Firm_Grids', cxGrid2DBBandedTableView1);
  StoreRegistryGrid(rgLoad,'\Software\Lis1\Firm_Grids', cxGrid3DBBandedTableView1);
  StoreRegistryGrid(rgLoad,'\Software\Lis1\Firm_Grids', cxGrid4DBBandedTableView1);
  StoreRegistryGrid(rgLoad,'\Software\Lis1\Firm_Grids', cxGrid5DBBandedTableView1);
  cxGrid1DBBandedTableView1firm_cod.Visible := False;

  SetUsersModuleRights(self, fmMain.Lis);
  MonitorEventFormOpen('OPEN_FORM', self.Name, fmMain.Lis, -9);
  Screen.Cursor := crDefault;
end;

procedure TfmFirm.SetTypeView(Atype_view : integer);
begin
  Ftype_view := Atype_view;

  cxTabControl1.Tabs[0].Visible := (Ftype_view = 0);
  cxTabControl1.Tabs[2].Visible := (Ftype_view = 0);
  cxTabControl1.Tabs[3].Visible := (Ftype_view = 0);

  if Ftype_view = 1 then begin
    cxGrid1DBBandedTableView1users_group_name.Position.BandIndex := 0;
    cxGrid1DBBandedTableView1users_group_abbr.Position.BandIndex := 0;

    Caption := Caption + ' (новые)';

    cxGrid1DBBandedTableView1.OptionsView.GroupByBox := True;
  end;
end;

procedure TfmFirm.LocateFirmId(firm_id : integer);
begin
  if cxGrid1DBBandedTableView1.DataController.LocateByKey(firm_id) = False then cxGrid1DBBandedTableView1.Controller.GoToFirst;;
  if cxGrid1DBBandedTableView1.Controller.FocusedRecord <> nil then  cxGrid1DBBandedTableView1.Controller.FocusedRecord.Selected := True;
end;

procedure TfmFirm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if Fset_run_dll then begin
    Fconnect.Close;
    Fconnect.Free;
  end;
  Action := caFree;
end;

procedure TfmFirm.FormDestroy(Sender: TObject);
begin
  StoreRegistryGrid(rgSave,'\Software\Lis1\Firm_Grids', cxGrid1DBBandedTableView1);
  StoreRegistryGrid(rgSave,'\Software\Lis1\Firm_Grids', cxGrid2DBBandedTableView1);
  StoreRegistryGrid(rgSave,'\Software\Lis1\Firm_Grids', cxGrid3DBBandedTableView1);
  StoreRegistryGrid(rgSave,'\Software\Lis1\Firm_Grids', cxGrid4DBBandedTableView1);
  StoreRegistryGrid(rgSave,'\Software\Lis1\Firm_Grids', cxGrid5DBBandedTableView1);
end;

procedure TfmFirm.cxTabControl1Change(Sender: TObject);
begin
  Screen.Cursor := crHourglass;
  
  Ftype_self := cxTabControl1.TabIndex;
  Query_Firm.Close;
  Query_Firm.Parameters.ParamByName('type_self').Value := Ftype_self;
  Query_Firm.Parameters.ParamByName('type_view').Value := Ftype_view;
  Query_Firm.Open;

  // шаблоны организаций
  if (Ftype_self = 1) then
    dxBarButton5.Enabled := Fusr_pwd.user_func.Locate('func_name', 'set_shablon_num_modify', [loCaseInsensitive])
  else  dxBarButton5.Enabled := Fusr_pwd.user_func.Locate('func_name', 'set_shablon_num_modify', [loCaseInsensitive]);

  Screen.Cursor := crDefault;
end;

procedure TfmFirm.cxGrid1DBBandedTableView1CustomDrawCell(Sender: TcxCustomGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
  if Sender = cxGrid1DBBandedTableView1 then
   if (AViewInfo.GridRecord.Values[TcxGridDBBandedTableView(AViewInfo.GridView).GetColumnByFieldName('global_color').Index]<>NULL) then
    ACanvas.Brush.Color := AViewInfo.GridRecord.Values[TcxGridDBBandedTableView(AViewInfo.GridView).GetColumnByFieldName('global_color').Index];

  if AViewInfo.GridRecord.Selected or AViewInfo.GridRecord.Focused then begin
    ACanvas.Brush.Color := clNavy;
    ACanvas.Font.Color := clWhite;
    if AViewInfo.Focused then begin
       ACanvas.Font.Color := clWhite;
       ACanvas.Brush.Color := clBlue;
    end;
  end;
end;

procedure TfmFirm.cxGrid1DBBandedTableView1CustomDrawColumnHeader(Sender: TcxGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxGridColumnHeaderViewInfo; var ADone: Boolean);
begin
  DrawcxGridColumnOnFocused(Sender, ACanvas, AViewInfo);
end;

procedure TfmFirm.cxGrid1DBBandedTableView1DataControllerFilterChanged(Sender: TObject);
begin
  DrawcxGridColumnOnFiltered(Sender);
end;

procedure TfmFirm.cxGrid1DBBandedTableView1FocusedItemChanged(Sender: TcxCustomGridTableView; APrevFocusedItem,  AFocusedItem: TcxCustomGridTableItem);
begin
  Sender.Painter.Invalidate;
end;

procedure TfmFirm.cxGrid1DBBandedTableView1FocusedRecordChanged(Sender: TcxCustomGridTableView; APrevFocusedRecord, AFocusedRecord: TcxCustomGridRecord; ANewItemRecordFocusingChanged: Boolean);
begin
  Screen.Cursor := crHourglass;

  Query_Contract.Close;
  Query_FirmContact.Close;
  Query_DocBlob.Close;

  if (dxBarButton8.Down) AND (AFocusedRecord <> nil) then begin
    Query_Contract.Parameters.ParamByName('firm_customer').Value := cxGrid1DBBandedTableView1firm_id.DataBinding.Field.AsInteger;
    Query_Contract.Open;

    Query_DocBlob.Parameters.ParamByName('firm_customer').Value := cxGrid1DBBandedTableView1firm_id.DataBinding.Field.AsInteger;
    Query_DocBlob.Open;

    Query_FirmContact.Parameters.ParamByName('firm_id').Value := cxGrid1DBBandedTableView1firm_id.DataBinding.Field.AsInteger;
    Query_FirmContact.Open;
  end;

  Screen.Cursor := crDefault;
end;

procedure TfmFirm.cxGrid1DBBandedTableView1KeyPress(Sender: TObject; var Key: Char);
begin
    FilterColumnGridOnKeyPress(TcxGridDBBandedTableView(TcxGridSite(Sender).GridView), Key);
end;

procedure TfmFirm.cxGrid2DBBandedTableView1DblClick(Sender: TObject);
begin
  if not Query_Contract.Eof then begin
    fmContractAdd := TfmContractAdd.Create(Application, cxGrid2DBBandedTableView1type_contract.DataBinding.Field.AsInteger);
    fmContractAdd._SetUpdate := cxGrid2DBBandedTableView1contract_id.DataBinding.Field.AsInteger;
    if fmContractAdd.ShowModal=mrOK then RefreshQueryGrid(cxGrid2DBBandedTableView1, 'contract_id', cxGrid2DBBandedTableView1contract_id.DataBinding.Field.AsInteger);
  end;
end;

procedure TfmFirm.cxGridDBBandedTableView1CustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
  if (AViewInfo.GridRecord.Values[cxGridDBBandedTableView1.GetColumnByFieldName('sign_customer_name').Index] = 'Копия')
      AND (AViewInfo.GridRecord.Values[cxGridDBBandedTableView1.GetColumnByFieldName('doc_location_date').Index] <= Now)
    then ACanvas.Brush.Color := $008080FF;

  if (AViewInfo.GridRecord.Values[cxGridDBBandedTableView1global_color.Index]<>NULL) then ACanvas.Brush.Color := AViewInfo.GridRecord.Values[cxGridDBBandedTableView1global_color.Index];
  if AViewInfo.GridRecord.Selected or AViewInfo.GridRecord.Focused then begin
    ACanvas.Brush.Color := clNavy;
    ACanvas.Font.Color := clWhite;
    if AViewInfo.Focused then ACanvas.Brush.Color := clBlue;
  end;
end;

procedure TfmFirm.cxPageControl1Change(Sender: TObject);
begin
  Query_FirmContact.Close;
  case cxPageControl1.ActivePageIndex of
    1 : begin
          Fview_FirmContact := cxGrid3DBBandedTableView1;
          Query_FirmContact.SQL.Strings[3] := 'AND type_contact_cod >= ''10'' AND type_contact_cod <= ''14''';
        end;
    2 : begin
          Fview_FirmContact := cxGrid7DBBandedTableView1;
          Query_FirmContact.SQL.Strings[3] := 'AND type_contact_cod >= ''15'' AND type_contact_cod <= ''19''';
        end;
    3 : begin
          Fview_FirmContact := cxGrid4DBBandedTableView1;
          Query_FirmContact.SQL.Strings[3] := 'AND type_contact_cod >= ''00'' AND type_contact_cod <= ''09''';
        end;
    4 : begin
          Fview_FirmContact := cxGrid5DBBandedTableView1;
          Query_FirmContact.SQL.Strings[3] := 'AND type_contact_cod >= ''20'' AND type_contact_cod <= ''99''';
        end;
    else begin
          Fview_FirmContact := nil;
          Query_FirmContact.SQL.Strings[3] := 'AND 1 = 0';
        end;
  end;
  Query_FirmContact.Open;
end;

{Создание нового договора}
procedure TfmFirm.dxBarButton10Click(Sender: TObject);
begin
  fmContractAdd := TfmContractAdd.Create(Application, TComponent(Sender).Tag);
  fmContractAdd._SetInsert := cxGrid1DBBandedTableView1firm_id.DataBinding.Field.AsInteger;
  if fmContractAdd.ShowModal=mrOK then RefreshQueryGrid(cxGrid2DBBandedTableView1, 'contract_id', fmContractAdd._GetContractId);
end;

procedure TfmFirm.dxBarButton11Click(Sender: TObject);
begin
  case TComponent(Sender).Tag of
    1, 101 : begin
              SetRecordColor('firm_id', cxGrid1DBBandedTableView1, 'FIRM', TComponent(Sender).Tag > 100);
              RefreshQueryGrid(cxGrid1DBBandedTableView1, 'firm_id', cxGrid1DBBandedTableView1firm_id.DataBinding.Field.AsInteger);
            end;
    2, 102 : begin
              SetRecordColor('contract_id', cxGrid2DBBandedTableView1, 'CONTRACT', TComponent(Sender).Tag > 100);
              RefreshQueryGrid(cxGrid2DBBandedTableView1, 'contract_id', cxGrid2DBBandedTableView1contract_id.DataBinding.Field.AsInteger);
            end;
    3, 103 : begin
              SetRecordColor('firm_contact_id', Fview_FirmContact, 'FIRM_CONTACT', TComponent(Sender).Tag > 100);
              RefreshQueryGrid(Fview_FirmContact, 'firm_contact_id', Fview_FirmContact.GetColumnByFieldName('firm_contact_id').DataBinding.Field.AsInteger);
            end;
  end;
end;

procedure TfmFirm.dxBarButton13Click(Sender: TObject);
begin
  case TComponent(Sender).Tag of
    1 : SetdxDBGridColumns(cxGrid1DBBandedTableView1);
    2 : SetdxDBGridColumns(cxGrid2DBBandedTableView1);
    3 : SetdxDBGridColumns(Fview_FirmContact);
    4 : SetdxDBGridColumns(cxGridDBBandedTableView1);
  end;
end;

procedure TfmFirm.dxBarButton14Click(Sender: TObject);
begin
  case TComponent(Sender).Tag of
    1 : cxGrid1DBBandedTableView1.OptionsView.GroupByBox := not cxGrid1DBBandedTableView1.OptionsView.GroupByBox;
    2 : cxGrid2DBBandedTableView1.OptionsView.GroupByBox := not cxGrid2DBBandedTableView1.OptionsView.GroupByBox;
    3 : Fview_FirmContact.OptionsView.GroupByBox         := not Fview_FirmContact.OptionsView.GroupByBox;
    4 : cxGridDBBandedTableView1.OptionsView.GroupByBox  := not cxGridDBBandedTableView1.OptionsView.GroupByBox;
  end;
end;

procedure TfmFirm.dxBarButton15Click(Sender: TObject);
begin
  case TComponent(Sender).Tag of
    1 : PrintcxGrid(cxGrid1DBBandedTableView1);
    2 : PrintcxGrid(cxGrid2DBBandedTableView1);
    3 : PrintcxGrid(Fview_FirmContact);
    4 : PrintcxGrid(cxGridDBBandedTableView1);
    5 : PrintcxGrid(cxGrid5DBBandedTableView1);
  end;
end;

procedure TfmFirm.dxBarButton16Click(Sender: TObject);
type
  TFunc = function(AppHand: THandle; global_id: integer; caption: string; usr_pwd: PUser_pwd): variant;
var
  FShablon  : TFunc;
  handle    : THandle;
  v         : Variant;
begin
   handle := LoadLibrary('dictionary.dll');
   @FShablon := GetProcAddress(handle,'CreateWndDocBlob');
   v := FShablon(Application.Handle, cxGrid1DBBandedTableView1firm_id.DataBinding.Field.AsInteger, 'Документы связанные с организацией '+cxGrid1DBBandedTableView1firm_name.DataBinding.Field.AsString + ' [' + cxGrid1DBBandedTableView1firm_id.DataBinding.Field.AsString + ']', Fusr_pwd);
   FreeLibrary(handle);

   RefreshQueryGrid(cxGrid1DBBandedTableView1, 'firm_id');
end;

procedure TfmFirm.dxBarButton17Click(Sender: TObject);
var folder: string;
    OutFileName : string;
    PrefFileName: string;
    SP : TADOStoredProc;
    sp_blob_get : TADOStoredProc;
    i : integer;
    s : TArray<Byte>;
    num_write : Cardinal;
    hFile : THandle;
    doc_type_cod: string;
begin
  folder := BrowseDialog('Выбор каталога:');
  if folder <> '' then begin
    if Application.MessageBox(PChar('Сохранить ' + IntToStr(cxGridDBBandedTableView1.Controller.SelectedRecordCount) + ' файлов?'), 'ВНИМАНИЕ', MB_ICONWARNING or MB_YESNO) = ID_YES then begin
      SP := TADOStoredProc.Create(nil);
      SP.Connection := Fconnect;
      SP.ProcedureName := 'sp_BLOB_modify';


      sp_blob_get := TADOStoredProc.Create(nil);
      sp_blob_get.Connection := Fconnect;
      sp_blob_get.ProcedureName := 'sp_BLOB_get';

      for i:=0 to cxGridDBBandedTableView1.Controller.SelectedRecordCount - 1 do begin

        sp_blob_get.Close;
        sp_blob_get.Parameters.Refresh;
        sp_blob_get.Parameters.ParamByName('@doc_id'     ).Value := cxGridDBBandedTableView1.Controller.SelectedRows[i].Values[cxGridDBBandedTableView1doc_id.Index];
        sp_blob_get.Open;

        SP.Close;
        SP.Parameters.Refresh;
        SP.Parameters.ParamByName('@doc_id'     ).Value := cxGridDBBandedTableView1.Controller.SelectedRows[i].Values[cxGridDBBandedTableView1doc_id.Index];
        SP.Parameters.ParamByName('@type_action').Value := 10;
        SP.Open;

        if SP.FieldByName('file_name').AsString = '' then
          OutFileName := 'пусто_' + FormatDateTime('sszzz', Now) + '.txt'
        else
          OutFileName := SP.FieldByName('file_name').AsString;

        s := LZHUnPack(SP.FieldByName('doc_image').AsBytes);
        PrefFileName := '';
        doc_type_cod := sp_blob_get.FieldByName('doc_type_cod').AsString;

        if (doc_type_cod = '1') or (doc_type_cod = '2') or (doc_type_cod = '3') or (doc_type_cod = '10') or (doc_type_cod = '12') or (doc_type_cod = '13') then begin
          if not sp_blob_get.FieldByName('contract_cod').IsNUll then
            PrefFileName :=  sp_blob_get.FieldByName('firm_customer_name').AsString + 'Дог.№_' + sp_blob_get.FieldByName('contract_cod').AsString +'_от_' + FormatDateTime('dd.mm.yy', sp_blob_get.FieldByName('date_begin').AsDateTime);

          PrefFileName := PrefFileName + '_' + sp_blob_get.FieldByName('doc_type_describe').AsString;
        end;

        if (doc_type_cod = '7') then
          PrefFileName := sp_blob_get.FieldByName('firm_name_short').AsString + '_' + sp_blob_get.FieldByName('doc_type_describe').AsString + '_' + sp_blob_get.FieldByName('doc_describe').AsString;

        if (doc_type_cod = '20') then
          PrefFileName := sp_blob_get.FieldByName('firm_name_short').AsString + '_' + sp_blob_get.FieldByName('doc_type_describe').AsString;

        PrefFileName := ReplaceStr(PrefFileName,'\',' ');
        PrefFileName := ReplaceStr(PrefFileName,'/',' ');
        PrefFileName := ReplaceStr(PrefFileName,':',' ');
        PrefFileName := ReplaceStr(PrefFileName,'*',' ');
        PrefFileName := ReplaceStr(PrefFileName,'?',' ');
        PrefFileName := ReplaceStr(PrefFileName,'<',' ');
        PrefFileName := ReplaceStr(PrefFileName,'>',' ');
        PrefFileName := ReplaceStr(PrefFileName,'|',' ');
        PrefFileName := ReplaceStr(PrefFileName,'"',' ');

        OutFileName := folder + '\' + PrefFileName + '_' + OutFileName;
        hFile:=CreateFile(PChar(OutFileName), Generic_Write, 0, nil, Create_Always, File_Attribute_Normal, 0);
        WriteFile(hFile, PAnsiChar(s)^, Length(s), num_write, nil);
        CloseHandle(hFile);
        FileSetAttr(OutFileName, SysUtils.faReadOnly);
        ShowTextMessage('Осталось ' + IntToStr(cxGridDBBandedTableView1.Controller.SelectedRecordCount-i) + ' файлов...',False);
      end;
      ShellExecute(HWND(nil), 'open', PChar(folder), nil, PChar(folder), SW_SHOWNORMAL);
      SP.Free;
      ShowTextMessage;
    end;
  end;
end;

procedure TfmFirm.dxBarButton18Click(Sender: TObject);
begin
  if not Query_Contract.Eof then begin
    fmContractAdd := TfmContractAdd.Create(Application, cxGrid2DBBandedTableView1type_contract.DataBinding.Field.AsInteger);
    fmContractAdd._SetUpdate := cxGrid2DBBandedTableView1contract_id.DataBinding.Field.AsInteger;
    if fmContractAdd.ShowModal=mrOK then RefreshQueryGrid(cxGrid1DBBandedTableView1, 'contract_id', cxGrid2DBBandedTableView1contract_id.DataBinding.Field.AsInteger);
  end;
end;

procedure TfmFirm.dxBarButton19Click(Sender: TObject);
var                i : integer;
  SP_Contract_Modify : TADOStoredProc;
begin
  if Application.MessageBox('Вы точно хотите удалить договор?', 'Внимание', MB_OKCANCEL)=IDOK then begin
    SP_Contract_Modify := TADOStoredProc.Create(nil);
    SP_Contract_Modify.Connection := Fconnect;
    SP_Contract_Modify.ProcedureName := 'sp_contract_modify;1';
    SP_Contract_Modify.Parameters.Refresh;

    for i := 0 to cxGrid1DBBandedTableView1.Controller.SelectedRowCount - 1 do begin
      SP_Contract_Modify.Close;
      SP_Contract_Modify.Parameters.ParamByName('@type_action').Value := 2;
      SP_Contract_Modify.Parameters.ParamByName('@contract_id').Value := cxGrid2DBBandedTableView1.Controller.SelectedRows[i].Values[cxGrid2DBBandedTableView1contract_id.Index];
      try
        SP_Contract_Modify.ExecProc;
      except

      end;

      ShowTextMessage('Осталось ' + IntToStr(cxGrid2DBBandedTableView1.Controller.SelectedRowCount - i) + ' записей...', False);
    end;

    SP_Contract_Modify.Free;
    RefreshQueryGrid(cxGrid2DBBandedTableView1, 'contract_id');
    ShowTextMessage;
  end;
end;

procedure TfmFirm.dxBarButton1Click(Sender: TObject);
begin
  fmFirmAdd := TfmFirmAdd.Create(True,  Ftype_self, Fusr_pwd);
  if fmFirmAdd.ShowModal = mrOk then RefreshQueryGrid(cxGrid1DBBandedTableView1, 'firm_id', fmFirmAdd._GetFirmId);
end;

procedure TfmFirm.dxBarButton21Click(Sender: TObject);
begin
  GetDocBlobView(cxGridDBBandedTableView1doc_id.DataBinding.Field.AsInteger, nil, '', Fconnect);
end;

procedure TfmFirm.dxBarButton23Click(Sender: TObject);
begin
///

end;

procedure TfmFirm.dxBarButton24Click(Sender: TObject);
begin
  case TdxBarButton(Sender).ClickItemLink.Owner.Owner.Tag of
    1 : cxGridCopyCellsValue(cxGrid1DBBandedTableView1);
  end;
end;

procedure TfmFirm.dxBarButton2Click(Sender: TObject);
begin
  if not Query_Firm.Eof then begin
    if Fset_run_dll then
      fmFirmAdd := TfmFirmAdd.CreateDLL(False, Ftype_self, Fusr_pwd)
    else
      fmFirmAdd := TfmFirmAdd.Create(False, Ftype_self, Fusr_pwd);
    fmFirmadd._SetUpdate := cxGrid1DBBandedTableView1firm_id.DataBinding.Field.AsInteger;
    if fmFirmAdd.ShowModal = mrOK then RefreshQueryGrid(cxGrid1DBBandedTableView1, 'firm_id', fmFirmAdd._GetFirmId);
  end;
end;

procedure TfmFirm.dxBarButton3Click(Sender: TObject);
var i,j : integer;
    SP_firm_modify: TADOStoredProc;
begin
  if Application.MessageBox(PChar('ВЫ ТОЧНО УВЕРЕНЫ, ЧТО ХОТИТЕ УДАЛИТЬ ОРГАНИЗАЦИЮ?'), 'ВНИМАНИЕ', MB_OKCANCEL) = ID_OK then begin
    Screen.Cursor := -11;
    SP_firm_modify := TADOStoredProc.Create(nil);
    SP_firm_modify.Connection := Fconnect;
    SP_firm_modify.ProcedureName := 'sp_firm_modify';

    for i := 0 to cxGrid1DBBandedTableView1.Controller.SelectedRowCount - 1 do begin
      ShowTextMessage('Осталось ' + IntToStr(cxGrid1DBBandedTableView1.Controller.SelectedRowCount - i) + ' записей...', False);

      SP_firm_modify.Parameters.Refresh;
      for j := 0 to SP_firm_modify.Parameters.Count - 1 do SP_firm_modify.Parameters.Items[j].Value := null;
      SP_firm_modify.Parameters.ParamByName('@firm_id').Value     := cxGrid1DBBandedTableView1.Controller.SelectedRows[i].Values[cxGrid1DBBandedTableView1firm_id.Index];
      SP_firm_modify.Parameters.ParamByName('@type_action').Value := 2;
      try
        SP_firm_modify.ExecProc;
      except
        Application.MessageBox('НЕЛЬЗЯ УДАЛИТЬ ОРГАНИЗАЦИЮ. ЕСТЬ СВЯЗЬ В БАЗЕ', 'ВНИМАНИЕ', MB_OK);
        Screen.Cursor := crDefault;
      end;
    end;
    SP_firm_modify.Free;

    ShowTextMessage('Обновление данных', False);
    RefreshQueryGrid(cxGrid1DBBandedTableView1, 'firm_id');
    ShowTextMessage;
    Screen.Cursor := crDefault;
  end;
end;

procedure TfmFirm.dxBarButton4Click(Sender: TObject);
begin
  RefreshQueryGrid(cxGrid1DBBandedTableView1, 'firm_id', cxGrid1DBBandedTableView1firm_id.DataBinding.Field.AsInteger);
end;

procedure TfmFirm.dxBarButton5Click(Sender: TObject);
type
  TFunc = function(AppHand:THandle;ttag:byte;firm_id:integer;usr_pwd:PUser_pwd) : integer;
var
  FShablon  : TFunc;
  handle    : THandle;
begin
   handle := LoadLibrary('user.dll');
   @FShablon := GetProcAddress(handle,'CreateWndShablon');
   FShablon(Application.Handle, 0, cxGrid1DBBandedTableView1firm_id.DataBinding.Field.AsInteger, Fusr_pwd);
   FreeLibrary(handle);
end;

procedure TfmFirm.dxBarButton6Click(Sender: TObject);
type
  TFunc = function(z:boolean; usr_pwd:PUser_pwd; id:integer; phys_name:string) : Variant;
var
  FEvent : TFunc;
  handle : THandle;
  v      : Variant;
begin
   handle := LoadLibrary('events.dll');
   @FEvent := GetProcAddress(handle,'CreateWndEvent');
   v := FEvent(False, Fusr_pwd, Query_Firm['firm_id'],'FIRM');
   FreeLibrary(handle);
end;

procedure TfmFirm.dxBarButton7Click(Sender: TObject);
begin
  Ffirm_id := cxGrid1DBBandedTableView1firm_id.DataBinding.Field.AsInteger;
  Ffirm_name := cxGrid1DBBandedTableView1firm_name.DataBinding.Field.AsString;
  ModalResult := mrOK;
end;

procedure TfmFirm.dxBarButton8Click(Sender: TObject);
begin
  cxPageControl1.Visible := dxBarButton8.Down;
  Panel2.Visible         := dxBarButton8.Down;
  Splitter1.Visible      := dxBarButton8.Down;
end;

procedure TfmFirm.dxBarButton9Click(Sender: TObject);
var
  Query1       : TADOQuery;
  shablon_name : string;
  wdApp, wdDoc : Variant;
  i            : integer;
  bm_name      : string;

begin
  if not Query_Firm.Eof then begin
    Screen.Cursor := crHourglass;

    Query1 := TADOQuery.Create(nil);
    Query1.Connection := Fconnect;

    try
      Query1.SQL.Add('SELECT f.*, ');

      Query1.SQL.Add('(SELECT TOP 1 firm_contact_name FROM view_firm_contact WHERE (firm_id = f.firm_id) AND (type_contact_cod = ''11'') AND (GetDate() BETWEEN date_begin AND ISNULL(date_end, GetDate()+ 1)))     as legal_address, ');
      Query1.SQL.Add('(SELECT TOP 1 firm_contact_name FROM view_firm_contact WHERE (firm_id = f.firm_id) AND (type_contact_cod = ''13'') AND (GetDate() BETWEEN date_begin AND ISNULL(date_end, GetDate()+ 1)))     as fact_address, ');
      Query1.SQL.Add('(SELECT TOP 1 firm_contact_name FROM view_firm_contact WHERE (firm_id = f.firm_id) AND (type_contact_cod = ''12'') AND (GetDate() BETWEEN date_begin AND ISNULL(date_end, GetDate()+ 1)))     as post_address, ');

      Query1.SQL.Add('(SELECT TOP 1 firm_contact_name FROM view_firm_contact WHERE (firm_id = f.firm_id) AND (type_contact_cod BETWEEN ''20'' AND ''20'') AND (GetDate() BETWEEN date_begin AND ISNULL(date_end, GetDate()+ 1)))     as director_name, ');
      Query1.SQL.Add('(SELECT TOP 1 firm_contact_telefon FROM view_firm_contact WHERE (firm_id = f.firm_id) AND (type_contact_cod BETWEEN ''20'' AND ''20'') AND (GetDate() BETWEEN date_begin AND ISNULL(date_end, GetDate()+ 1)))  as director_telefon, ');
      Query1.SQL.Add('(SELECT TOP 1 firm_contact_fax     FROM view_firm_contact WHERE (firm_id = f.firm_id) AND (type_contact_cod BETWEEN ''20'' AND ''20'') AND (GetDate() BETWEEN date_begin AND ISNULL(date_end, GetDate()+ 1)))  as director_fax, ');
      Query1.SQL.Add('(SELECT TOP 1 firm_contact_email   FROM view_firm_contact WHERE (firm_id = f.firm_id) AND (type_contact_cod BETWEEN ''20'' AND ''20'') AND (GetDate() BETWEEN date_begin AND ISNULL(date_end, GetDate()+ 1)))  as director_email, ');

      Query1.SQL.Add('(SELECT TOP 1 firm_contact_name    FROM view_firm_contact WHERE (firm_id = f.firm_id) AND (type_contact_cod BETWEEN ''21'' AND ''21'') AND (GetDate() BETWEEN date_begin AND ISNULL(date_end, GetDate()+ 1)))  as sub_director_name, ');
      Query1.SQL.Add('(SELECT TOP 1 firm_contact_telefon FROM view_firm_contact WHERE (firm_id = f.firm_id) AND (type_contact_cod BETWEEN ''21'' AND ''21'') AND (GetDate() BETWEEN date_begin AND ISNULL(date_end, GetDate()+ 1)))  as sub_director_telefon, ');
      Query1.SQL.Add('(SELECT TOP 1 firm_contact_fax     FROM view_firm_contact WHERE (firm_id = f.firm_id) AND (type_contact_cod BETWEEN ''21'' AND ''21'') AND (GetDate() BETWEEN date_begin AND ISNULL(date_end, GetDate()+ 1)))  as sub_director_fax, ');
      Query1.SQL.Add('(SELECT TOP 1 firm_contact_email   FROM view_firm_contact WHERE (firm_id = f.firm_id) AND (type_contact_cod BETWEEN ''21'' AND ''21'') AND (GetDate() BETWEEN date_begin AND ISNULL(date_end, GetDate()+ 1)))  as sub_director_email, ');

      Query1.SQL.Add('(SELECT TOP 1 firm_contact_name    FROM view_firm_contact WHERE (firm_id = f.firm_id) AND (type_contact_cod = ''28'') AND (GetDate() BETWEEN date_begin AND ISNULL(date_end, GetDate()+ 1)))  as  trust_person_name, ');
      Query1.SQL.Add('(SELECT TOP 1 firm_contact_telefon FROM view_firm_contact WHERE (firm_id = f.firm_id) AND (type_contact_cod = ''28'') AND (GetDate() BETWEEN date_begin AND ISNULL(date_end, GetDate()+ 1)))  as  trust_person_telefon, ');
      Query1.SQL.Add('(SELECT TOP 1 firm_contact_fax     FROM view_firm_contact WHERE (firm_id = f.firm_id) AND (type_contact_cod = ''28'') AND (GetDate() BETWEEN date_begin AND ISNULL(date_end, GetDate()+ 1)))  as  trust_person_fax, ');
      Query1.SQL.Add('(SELECT TOP 1 firm_contact_email   FROM view_firm_contact WHERE (firm_id = f.firm_id) AND (type_contact_cod = ''28'') AND (GetDate() BETWEEN date_begin AND ISNULL(date_end, GetDate()+ 1)))  as  trust_person_email, ');

      Query1.SQL.Add('(SELECT TOP 1 firm_contact_name    FROM view_firm_contact WHERE (firm_id = f.firm_id) AND (type_contact_cod = ''01'') AND (GetDate() BETWEEN date_begin AND ISNULL(date_end, GetDate()+ 1)))  as firm_bank ');

      Query1.SQL.Add(',dbo.func_DateOnly(GetDate()) as date ');

      Query1.SQL.Add('FROM view_firm f ');
      Query1.SQL.Add('WHERE firm_id = ' + IntToStr(cxGrid1DBBandedTableView1firm_id.DataBinding.Field.AsInteger));

      Query1.Open;

      shablon_name := GetDocBlob(Fconnect, 3); // 'Карточка Контрагента.dot';

      wdApp := CreateOleObject('Word.Application');

      // Создание документа на основании шаблона
      wdDoc := wdApp.Documents.Add(shablon_name);
      wdApp.DisplayAlerts := 0;

      // Формируем документ
      for i:=1 To wdDoc.Bookmarks.Count do begin
        bm_name := wdDoc.BookMarks.Item(i).Name;
        if Query1.FindField(bm_name) <> nil then
          if Query1.FieldByName(bm_name).AsString <> null then begin
            wdDoc.Bookmarks.Item(i).Range.InsertBefore(Query1.FieldByName(bm_name).AsString);
          end;
      end;
      // Делаем Word видимым
      wdApp.Visible := True;

    finally

    Query1.Close;
    Query1.Free;

    // Чистим переменные
    wdDoc   := null;
    wdApp   := null;
    //wdTmp   := null;

    VarClear(wdApp);
    VarClear(wdDoc);
    //VarClear(wdTmp);

    Screen.Cursor := crDefault;

    end;
  end;

end;

procedure TfmFirm.dxBarButton_FilterColumnClick(Sender: TObject);
begin
  case TComponent(Sender).Tag of
    1 : cxGrid1DBBandedTableView1.Filtering.ColumnFilteredItemsList := not cxGrid1DBBandedTableView1.Filtering.ColumnFilteredItemsList;
    2 : cxGrid2DBBandedTableView1.Filtering.ColumnFilteredItemsList := not cxGrid2DBBandedTableView1.Filtering.ColumnFilteredItemsList;
    3 : Fview_FirmContact.Filtering.ColumnFilteredItemsList := not Fview_FirmContact.Filtering.ColumnFilteredItemsList;
    4 : cxGridDBBandedTableView1.Filtering.ColumnFilteredItemsList := not cxGridDBBandedTableView1.Filtering.ColumnFilteredItemsList;
  end;
end;

procedure TfmFirm.dxBarPopupMenu1Popup(Sender: TObject);
begin
  dxBarButton11.Tag := TComponent(Sender).Tag;
  dxBarButton12.Tag := 100 + TComponent(Sender).Tag;
  dxBarButton13.Tag := TComponent(Sender).Tag;
  dxBarButton14.Tag := TComponent(Sender).Tag;
  dxBarButton15.Tag := TComponent(Sender).Tag;
  dxBarButton_FilterColumn.Tag := TComponent(Sender).Tag;
end;

procedure TfmFirm.dxBarSubItem2Popup(Sender: TObject);
begin
  case dxBarButton_FilterColumn.Tag of
    1 : dxBarButton_FilterColumn.Down := cxGrid1DBBandedTableView1.Filtering.ColumnFilteredItemsList;
    2 : dxBarButton_FilterColumn.Down := cxGrid2DBBandedTableView1.Filtering.ColumnFilteredItemsList;
    3 : dxBarButton_FilterColumn.Down := Fview_FirmContact.Filtering.ColumnFilteredItemsList;
    4 : dxBarButton_FilterColumn.Down := cxGridDBBandedTableView1.Filtering.ColumnFilteredItemsList;
  end;
end;

procedure TfmFirm.SetShowFirm(set_show_firm: boolean);
begin
  if set_show_firm = True then begin
    cxGrid1DBBandedTableView1.OnDblClick := dxBarButton2Click;
  end else begin
    cxGrid1DBBandedTableView1.OnDblClick := dxBarButton7Click;
  end;
end;

end.

