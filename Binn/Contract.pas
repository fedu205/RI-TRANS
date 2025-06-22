unit Contract;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs, Default,
  Menus, StdCtrls, ExtCtrls, Db, ADODB, ImgList, ComCtrls, DBClient, Variants, ImageList,
  cxGridCustomTableView, cxGridTableView, cxGridBandedTableView, cxGridDBBandedTableView, cxClasses, cxControls, cxGridCustomView, cxGridLevel,
  cxGrid, cxPropertiesStore, cxStyles, cxCustomData, cxGraphics, cxFilter, cxData, cxDataStorage, cxDBData, cxCheckBox, cxCalendar, cxPC, dxBar,
  cxDBLookupComboBox, cxCurrencyEdit, cxLookAndFeels, cxLookAndFeelPainters, cxContainer, dxSkinOffice2016Colorful, dxSkinOffice2016Dark,
  cxGroupBox, cxEdit, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMetropolis, dxSkinMetropolisDark, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue,
  dxSkinOffice2010Silver, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic,
  dxSkinSharp, dxSkinSharpPlus, dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008, dxSkinTheAsphaltWorld, dxSkinsDefaultPainters,
  dxSkinValentine, dxSkinVS2010, dxSkinWhiteprint, dxSkinXmas2008Blue, dxSkinscxPCPainter, cxNavigator, dxBarBuiltInMenu, dxSkinsdxBarPainter,
  dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark, dxSkinVisualStudio2013Light, cxImageList, cxGridDBDataDefinitions, dxDateRanges,
  dxSkinTheBezier, dxScrollbarAnnotations;

type
  TfmContract = class(TForm)
    Query_Contract: TADOQuery;
    DS_Contract: TDataSource;
    cxPropertiesStore1: TcxPropertiesStore;
    Panel1: TPanel;
    cxGrid1: TcxGrid;
    cxGrid1DBBandedTableView1: TcxGridDBBandedTableView;
    cxGrid1DBBandedTableView1contract_id: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1contract_cod: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1type_contract: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1date_begin: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1date_end: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1firm_customer_name_short: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1firm_self_name_short: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1firm_self_name: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1firm_customer_name: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1note: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1FIO_users_owner: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1global_color: TcxGridDBBandedColumn;
    cxGrid1Level1: TcxGridLevel;
    dxBarManager1: TdxBarManager;
    dxBarButton1: TdxBarButton;
    dxBarButton2: TdxBarButton;
    dxBarButton3: TdxBarButton;
    dxBarButton4: TdxBarButton;
    dxBarButton5: TdxBarButton;
    dxBarButton6: TdxBarButton;
    dxBarButton9: TdxBarButton;
    dxBarPopup_Contract: TdxBarPopupMenu;
    dxBarButton11: TdxBarButton;
    dxBarSubItem1: TdxBarSubItem;
    dxBarButton12: TdxBarButton;
    dxBarButton13: TdxBarButton;
    dxBarButton14: TdxBarButton;
    dxBarButton15: TdxBarButton;
    dxBarButton16: TdxBarButton;
    cxGrid1DBBandedTableView1rights: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1cnt_global_doc: TcxGridDBBandedColumn;
    dxBarSubItem3: TdxBarSubItem;
    Splitter1: TSplitter;
    dxBarButton7: TdxBarButton;
    cxGrid1DBBandedTableView1date_enter: TcxGridDBBandedColumn;
    DS_Contract_1C: TDataSource;
    dxBarButton10: TdxBarButton;
    dxBarPopupMenu_1c: TdxBarPopupMenu;
    dxBarButton22: TdxBarButton;
    cxGrid1DBBandedTableView1brief_name: TcxGridDBBandedColumn;
    cxPageControl1: TcxPageControl;
    cxTabSheet1: TcxTabSheet;
    cxTabSheet2: TcxTabSheet;
    cxTabSheet3: TcxTabSheet;
    dxBarButton23: TdxBarButton;
    cxGrid1DBBandedTableView1date_begin_period: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1set_credit: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1sum_credit: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1FIO_users_owner_: TcxGridDBBandedColumn;
    Panel3: TPanel;
    Splitter2: TSplitter;
    Query_Contract_Close: TADOQuery;
    DS_Contract_Close: TDataSource;
    dxBarButton24: TdxBarButton;
    dxBarPopupMenu1: TdxBarPopupMenu;
    dxBarButton25: TdxBarButton;
    dxBarButton26: TdxBarButton;
    cxGrid1DBBandedTableView1set_pasport: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1firm_property_name: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1date_period_close: TcxGridDBBandedColumn;
    dxBarButton27: TdxBarButton;
    cxImageList1: TcxImageList;
    Query_DocBlob: TADOQuery;
    DS_DocBlob: TDataSource;
    dxBarPopupMenu2: TdxBarPopupMenu;
    dxBarButton17: TdxBarButton;
    dxBarSubItem2: TdxBarSubItem;
    dxBarButton18: TdxBarButton;
    dxBarButton19: TdxBarButton;
    dxBarButton20: TdxBarButton;
    dxBarButton_ColumnFiltered: TdxBarButton;
    dxBarButton_ColumnFiltered2: TdxBarButton;
    cxGrid1DBBandedTableView1passport_cod: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1note_credit: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1passport_date_begin: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1passport_date_end: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1date_finance_close_name: TcxGridDBBandedColumn;
    dxBarButton29: TdxBarButton;
    dxBarButton30: TdxBarButton;
    dxBarButton31: TdxBarButton;
    cxGrid1DBBandedTableView1arenda_repair_type_name: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1date_arenda_close: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1firm_customer_name_full: TcxGridDBBandedColumn;
    dxBarButton32: TdxBarButton;
    cxGrid1DBBandedTableView1conditions_credit: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1set_court: TcxGridDBBandedColumn;
    dxBarButton33: TdxBarButton;
    cxGrid1DBBandedTableView1docs_date_agree: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1firm_customer_inn: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1firm_customer_kpp: TcxGridDBBandedColumn;
    Query_1C_svh82bgr1: TADOQuery;
    dxBarButton37: TdxBarButton;
    Query_Contract_1C: TADOQuery;
    dxBarButton38: TdxBarButton;
    dxBarSubItem5: TdxBarSubItem;
    dxBarButton39: TdxBarButton;
    dxBarButton40: TdxBarButton;
    dxBarButton41: TdxBarButton;
    dxBarButton42: TdxBarButton;
    Query_1C_svh82bgr3: TADOQuery;
    Query_1C_svh82ma: TADOQuery;
    Query_1C_svh82ul_sfh: TADOQuery;
    cxGrid1DBBandedTableView1igk_cod: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1email_credit: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1budget_cod: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1budget_name: TcxGridDBBandedColumn;
    Query_1C_svh82bgr2: TADOQuery;
    cxGrid1DBBandedTableView1budget_name_lis_docs: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1budget_cod_lis_docs: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1article_cod_lis_docs: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1article_name_lis_docs: TcxGridDBBandedColumn;
    Query_1C_PTA_Buh: TADOQuery;
    cxGrid1DBBandedTableView1type_main_customer_name: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1type_main_customer: TcxGridDBBandedColumn;
    cxPageControl2: TcxPageControl;
    cxTabSheet4: TcxTabSheet;
    cxTabSheet5: TcxTabSheet;
    cxGrid2: TcxGrid;
    cxGrid2DBBandedTableView1: TcxGridDBBandedTableView;
    cxGrid2DBBandedTableView1contract_id: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1contract_period_close_id: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1date_period: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1date_period_month: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1date_period_year: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1set_period_check: TcxGridDBBandedColumn;
    cxGrid2Level1: TcxGridLevel;
    cxGrid5: TcxGrid;
    cxGrid5DBBandedTableView1: TcxGridDBBandedTableView;
    cxGrid5DBBandedTableView1contract_id: TcxGridDBBandedColumn;
    cxGrid5DBBandedTableView1contract_period_close_id: TcxGridDBBandedColumn;
    cxGrid5DBBandedTableView1date_period: TcxGridDBBandedColumn;
    cxGrid5DBBandedTableView1date_period_month: TcxGridDBBandedColumn;
    cxGrid5DBBandedTableView1date_period_year: TcxGridDBBandedColumn;
    cxGrid5DBBandedTableView1set_period_check: TcxGridDBBandedColumn;
    cxGrid5Level1: TcxGridLevel;
    cxGrid5DBBandedTableView1act_sum: TcxGridDBBandedColumn;
    cxGrid5DBBandedTableView1note: TcxGridDBBandedColumn;
    Query_Contract_Close_move: TADOQuery;
    cxGrid5DBBandedTableView1type_close: TcxGridDBBandedColumn;
    DS_Contract_Close_move: TDataSource;
    dxBarButton21: TdxBarButton;
    dxBarPopupMenu3: TdxBarPopupMenu;
    dxBarButton28: TdxBarButton;
    dxBarButton34: TdxBarButton;
    dxBarButton35: TdxBarButton;
    dxBarButton36: TdxBarButton;
    dxBarSubItem4: TdxBarSubItem;
    dxBarButton43: TdxBarButton;
    dxBarButton44: TdxBarButton;
    dxBarButton45: TdxBarButton;
    dxBarButton46: TdxBarButton;
    cxGrid5DBBandedTableView1brief_name: TcxGridDBBandedColumn;
    Query_1C_svh83transcom: TADOQuery;
    cxGrid2DBBandedTableView1FIO_users_owner: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1date_enter: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1set_contract_EDO: TcxGridDBBandedColumn;
    dxBarButton47: TdxBarButton;
    SP_DocBlob_Get: TADOStoredProc;
    cxPageControl3: TcxPageControl;
    cxTabSheet31: TcxTabSheet;
    cxTabSheet32: TcxTabSheet;
    cxGrid4: TcxGrid;
    cxGrid4DBBandedTableView1: TcxGridDBBandedTableView;
    cxGrid4DBBandedTableView1doc_id: TcxGridDBBandedColumn;
    cxGrid4DBBandedTableView1doc_type_describe: TcxGridDBBandedColumn;
    cxGrid4DBBandedTableView1doc_describe: TcxGridDBBandedColumn;
    cxGrid4DBBandedTableView1file_name: TcxGridDBBandedColumn;
    cxGrid4DBBandedTableView1doc_location_FIO_users: TcxGridDBBandedColumn;
    cxGrid4DBBandedTableView1doc_image_date: TcxGridDBBandedColumn;
    cxGrid4DBBandedTableView1doc_location_id: TcxGridDBBandedColumn;
    cxGrid4DBBandedTableView1doc_location_name: TcxGridDBBandedColumn;
    cxGrid4DBBandedTableView1doc_location_date: TcxGridDBBandedColumn;
    cxGrid4DBBandedTableView1sign_customer_name: TcxGridDBBandedColumn;
    cxGrid4DBBandedTableView1doc_location_FIO_users_id: TcxGridDBBandedColumn;
    cxGrid4DBBandedTableView1sign_customer_id: TcxGridDBBandedColumn;
    cxGrid4DBBandedTableView1doc_image_lzh: TcxGridDBBandedColumn;
    cxGrid4DBBandedTableView1doc_type_cod: TcxGridDBBandedColumn;
    cxGrid4DBBandedTableView1global_color: TcxGridDBBandedColumn;
    cxGrid4DBBandedTableView1docs_id: TcxGridDBBandedColumn;
    cxGrid4DBBandedTableView1docs_status_name: TcxGridDBBandedColumn;
    cxGrid4DBBandedTableView1docs_date_agree: TcxGridDBBandedColumn;
    cxGrid4DBBandedTableView1sign_self_name: TcxGridDBBandedColumn;
    cxGrid4Level1: TcxGridLevel;
    cxGrid3: TcxGrid;
    cxGrid3DBBandedTableView1: TcxGridDBBandedTableView;
    cxGrid3DBBandedTableView1contract_1c_id: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1contract_id: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1contract_1c_GUID: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1contract_cod: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1firm_customer_name: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1date_begin_load: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1firm_self_GUID: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1base_1C_name: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1contract_type_name: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1inn: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1kpp: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1version_1C: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1date_begin: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1firm_customer_GUID: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1currency_name: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1set_delete: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1contract_name: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1set_load: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1FIO_users_owner: TcxGridDBBandedColumn;
    cxGrid3Level1: TcxGridLevel;
    cxGrid1DBBandedTableView1str_contract_1C_id: TcxGridDBBandedColumn;
    dxBarButton8: TdxBarButton;
    cxTabSheet6: TcxTabSheet;
    cxGrid6: TcxGrid;
    cxGrid6DBBandedTableView1: TcxGridDBBandedTableView;
    cxGrid6DBBandedTableView1contract_norm_id: TcxGridDBBandedColumn;
    cxGrid6Level1: TcxGridLevel;
    Query_Contract_Norm: TADOQuery;
    DS_Contract_Norm: TDataSource;
    dxBarPopup_Contract_Norm: TdxBarPopupMenu;
    dxBarButton48: TdxBarButton;
    dxBarButton49: TdxBarButton;
    dxBarButton50: TdxBarButton;
    dxBarSubItem6: TdxBarSubItem;
    cxGrid6DBBandedTableView1contract_id: TcxGridDBBandedColumn;
    cxGrid6DBBandedTableView1date_begin: TcxGridDBBandedColumn;
    cxGrid6DBBandedTableView1date_end: TcxGridDBBandedColumn;
    cxGrid6DBBandedTableView1currency_id: TcxGridDBBandedColumn;
    cxGrid6DBBandedTableView1brief_name: TcxGridDBBandedColumn;
    cxGrid6DBBandedTableView1norm_days: TcxGridDBBandedColumn;
    cxGrid6DBBandedTableView1norm_sum_without_nds: TcxGridDBBandedColumn;
    cxGrid6DBBandedTableView1nds_name: TcxGridDBBandedColumn;
    cxGrid6DBBandedTableView1norm_sum_with_nds: TcxGridDBBandedColumn;
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
    cxStyle1: TcxStyle;
    cxStyle_BlueBold: TcxStyle;
    cxStyle_ColorWhite: TcxStyle;
    procedure FormDestroy(Sender: TObject);
    procedure dxBarButton7Click(Sender: TObject);
    procedure dxBarSubItem3Popup(Sender: TObject);
    procedure cxPageControl1Change(Sender: TObject);
    procedure cxGrid1DBBandedTableView1KeyPress(Sender: TObject; var Key: Char);
    procedure dxBarButton16Click(Sender: TObject);
    procedure cxGrid1DBBandedTableView1FocusedItemChanged(Sender: TcxCustomGridTableView; APrevFocusedItem,  AFocusedItem: TcxCustomGridTableItem);
    procedure dxBarButton6Click(Sender: TObject);
    procedure dxBarButton15Click(Sender: TObject);
    procedure dxBarButton14Click(Sender: TObject);
    procedure dxBarButton12Click(Sender: TObject);
    procedure dxBarButton11Click(Sender: TObject);
    procedure dxBarButton5Click(Sender: TObject);
    procedure dxBarButton3Click(Sender: TObject);
    procedure dxBarButton2Click(Sender: TObject);
    procedure dxBarButton1Click(Sender: TObject);
    procedure ToolButton14Click(Sender: TObject);
    procedure cxGrid1DBBandedTableView1CustomDrawCell(Sender: TcxCustomGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
    procedure cxGrid1DBBandedTableView1CustomDrawColumnHeader(Sender: TcxGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxGridColumnHeaderViewInfo; var ADone: Boolean);
    procedure cxGrid1DBBandedTableView1DataControllerFilterChanged(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure dxBarButton25Click(Sender: TObject);
    procedure dxBarButton24Click(Sender: TObject);
    procedure cxGrid2DBBandedTableView1CustomDrawCell(Sender: TcxCustomGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
    procedure dxBarButton27Click(Sender: TObject);
    procedure cxGrid4DBBandedTableView1CustomDrawCell(Sender: TcxCustomGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
    procedure dxBarButton17Click(Sender: TObject);
    procedure dxBarButton19Click(Sender: TObject);
    procedure dxBarButton26Click(Sender: TObject);
    procedure dxBarButton_ColumnFilteredClick(Sender: TObject);
    procedure dxBarButton_ColumnFiltered2Click(Sender: TObject);
    procedure dxBarButton30Click(Sender: TObject);
    procedure dxBarButton31Click(Sender: TObject);
    procedure dxBarButton32Click(Sender: TObject);
    procedure dxBarButton33Click(Sender: TObject);
    procedure dxBarButton37Click(Sender: TObject);
    procedure dxBarButton38Click(Sender: TObject);
    procedure dxBarButton42Click(Sender: TObject);
    procedure dxBarButton21Click(Sender: TObject);
    procedure dxBarButton28Click(Sender: TObject);
    procedure dxBarButton34Click(Sender: TObject);
    procedure cxGrid5DBBandedTableView1CustomDrawCell(Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
    procedure dxBarButton43Click(Sender: TObject);
    procedure dxBarButton44Click(Sender: TObject);
    procedure dxBarButton45Click(Sender: TObject);
    procedure dxBarButton46Click(Sender: TObject);
    procedure dxBarButton35Click(Sender: TObject);
    procedure dxBarButton47Click(Sender: TObject);
    procedure dxBarButton23Click(Sender: TObject);
    procedure cxGrid1DBBandedTableView1SelectionChanged(Sender: TcxCustomGridTableView);
    procedure dxBarButton18Click(Sender: TObject);
    procedure cxPageControl3Change(Sender: TObject);
    procedure dxBarButton8Click(Sender: TObject);
    procedure dxBarButton50Click(Sender: TObject);
    procedure dxBarButton48Click(Sender: TObject);
    procedure cxGrid6DBBandedTableView1CustomDrawCell(Sender: TcxCustomGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
  private
    Fcontract_id    : integer;
    Fstr_contract_id: string;

    Fcontract_cod       : string;
    Ffirm_customer_name : string;

    // Запущена как DLL
    Fset_run_dll : boolean;
    Fconnect     : TADOConnection;
    Fusr_pwd_docs: PUser_pwd;
    Fusr_pwd_lis : PUser_pwd;

    // Связь с 1С
    Fset_link_1C  : boolean; // Есть разрешение связывать договора
    Fconnect_1C   : string;  // ConnectionString для базы 1С
    Fbase_name_1C : string;  // Имя базы данных 1C
    Ffirm_self_GUID : string; // GUID Собственной компании
    Fusers_group_cod: string; // Код группы

    procedure SetContractId(contract_id : integer);
    procedure dxBarButtonPrint(Sender: TObject);
    procedure SetShowContract(set_show_contract: boolean);
    procedure SetConnection(conn : TADOConnection);
  public
    Ftype_contract : byte;

    property _SetConnection  : TADOConnection write SetConnection;

    constructor Create(AOwner: TApplication; flag: boolean; type_contract: byte);
    constructor CreateDLL(AOwner: TApplication; flag: boolean; type_contract: byte; usr_pwd_lis: PUser_pwd; usr_pwd_docs: PUser_pwd);
  published
    property _SetContractId       : integer write SetContractId;
    property _SetShowContract     : boolean write SetShowContract;

    property _GetContractId       : integer read  Fcontract_id;
    property _GetStrContractId    : string  read  Fstr_contract_id;
    property _GetTypeContract     : byte    read  Ftype_contract;
    property _GetContractCod      : string  read  Fcontract_cod;
    property _GetFirmCustomerName : string  read  Ffirm_customer_name;
  end;

var
  fmContract: TfmContract;

implementation
     uses ContractAdd, Main, Raznoe, Filter, Other, Period, ContractCloseAdd, Raznoe1C, DateUtils, Registry, ComObj, StrUtils, ShellAPI;
{$R *.DFM}

constructor TfmContract.CreateDLL(AOwner: TApplication; flag: boolean; type_contract: byte; usr_pwd_lis: PUser_pwd; usr_pwd_docs: PUser_pwd);
begin
  inherited Create(AOwner);
  Screen.Cursor := crHourglass;

  StoreRegistryGrid(rgLoad, '\Software\Lis1\Contract_Grids', cxGrid1DBBandedTableView1);
  StoreRegistryGrid(rgLoad, '\Software\Lis1\Contract_Grids', cxGrid2DBBandedTableView1);
  StoreRegistryGrid(rgLoad, '\Software\Lis1\Contract_Grids', cxGrid3DBBandedTableView1);
  StoreRegistryGrid(rgLoad, '\Software\Lis1\Contract_Grids', cxGrid4DBBandedTableView1);
  StoreRegistryGrid(rgLoad, '\Software\Lis1\Contract_Grids', cxGrid5DBBandedTableView1);

  Fset_run_dll  := True;
  Fusr_pwd_docs := usr_pwd_docs;
  Fusr_pwd_lis  := usr_pwd_lis;
  Fconnect := TADOConnection.Create(nil);
  Fconnect.ConnectionString := 'Persist Security Info=True;Provider=SQLOLEDB.1;User ID='+Fusr_pwd_lis^.user_name+';Password='+Fusr_pwd_lis^.user_pass+';Initial Catalog='+Fusr_pwd_lis^.catalog+';Data Source='+Fusr_pwd_lis^.server+';';
  Fconnect.KeepConnection   := False;
  Fconnect.LoginPrompt      := False;

  Query_Contract.Connection       := Fconnect;
  Query_Contract_Close.Connection := Fconnect;
  Query_DocBlob.Connection        := Fconnect;

  //cxTabSheet3.TabVisible := False;
  Fset_link_1C := False;

  Ftype_contract := type_contract;

  cxPageControl1.ActivePageIndex := Ftype_contract;
  cxPageControl1Change(nil);
  cxPageControl3.ActivePageIndex := 0;

  if flag then begin
    FormStyle := fsNormal;
    Visible := False;
    dxBarButton6.Visible := ivAlways;
    WindowState := wsMaximized;
    cxGrid1DBBandedTableView1.OnDblClick := dxBarButton6Click;
  end else Formstyle := fsMDIChild;

  dxBarButton1.Enabled := False;
  dxBarButton3.Enabled := False;
  dxBarButton25.Enabled := False;
  dxBarButton26.Enabled := False;
  dxBarButton27.Enabled := False;
  dxBarButton20.Enabled := False;
  dxBarButton23.Enabled := False;

  MonitorEventFormOpen('OPEN_FORM', self.Name, Fconnect, -9);
  SetUsersModuleRights(self, Fconnect);

  Screen.Cursor := crDefault;
end;


constructor TfmContract.Create(AOwner: TApplication; flag: boolean; type_contract: byte);
var Q : TADOQuery;
begin
  inherited Create(AOwner);
  Screen.Cursor := crHourglass;

  Fset_run_dll   := False;
  Fconnect       := fmMain.Lis;
  Ftype_contract := type_contract;
  Fset_link_1C   := False;

  StoreRegistryGrid(rgLoad, '\Software\Lis1\Contract_Grids', cxGrid1DBBandedTableView1);
  StoreRegistryGrid(rgLoad, '\Software\Lis1\Contract_Grids', cxGrid2DBBandedTableView1);
  StoreRegistryGrid(rgLoad, '\Software\Lis1\Contract_Grids', cxGrid3DBBandedTableView1);
  StoreRegistryGrid(rgLoad, '\Software\Lis1\Contract_Grids', cxGrid4DBBandedTableView1);
  StoreRegistryGrid(rgLoad, '\Software\Lis1\Contract_Grids', cxGrid5DBBandedTableView1);

  cxPageControl1.ActivePageIndex := Ftype_contract;
  cxPageControl1Change(nil);
  cxPageControl3.ActivePageIndex := 0;

  if flag then begin
    FormStyle := fsNormal;
    Visible := False;
    dxBarButton6.Visible := ivAlways;
    WindowState := wsMaximized;
    cxGrid1DBBandedTableView1.OnDblClick := dxBarButton6Click;
  end else
    Formstyle := fsMDIChild;

  // -------- связь договоров с 1C -----------------
  if usr_pwd.user_func.Locate('func_name', 'set_link_1C', [loCaseInsensitive]) then begin
    Q := TADOQuery.Create(nil);
    Q.Connection := Fconnect;
    Q.SQL.Add('SELECT users_group_cod FROM view_users WHERE users_name = system_user');
    Q.Open;
    Fusers_group_cod := Q.FieldByName('users_group_cod').AsString;
    Q.Free;

    if (Fusers_group_cod = '22') OR (Fusers_group_cod =  '35') then begin // 22-SML  // 35-Урал Логистика
      Fset_link_1C    := True;
    end;
  end;

  MonitorEventFormOpen('OPEN_FORM', self.Name, Fconnect, -9);
  SetUsersModuleRights(self, fmMain.Lis);

  Screen.Cursor := crDefault;
end;

procedure TfmContract.SetConnection(conn : TADOConnection);
begin
  Query_Contract.Connection       := conn;
  Query_Contract_Close.Connection := conn;
  Query_DocBlob.Connection        := conn;
end;

procedure TfmContract.cxGrid1DBBandedTableView1CustomDrawCell(Sender: TcxCustomGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
  if (AViewInfo.GridRecord.Values[cxGrid1DBBandedTableView1global_color.Index]<>NULL) then
     ACanvas.Brush.Color := AViewInfo.GridRecord.Values[cxGrid1DBBandedTableView1global_color.Index];

  if AViewInfo.GridRecord.Selected or AViewInfo.GridRecord.Focused then begin
    ACanvas.Brush.Color := clNavy;
    ACanvas.Font.Color := clWhite;
    if AViewInfo.Focused then ACanvas.Brush.Color := clBlue;
  end;

end;

procedure TfmContract.cxGrid1DBBandedTableView1CustomDrawColumnHeader(Sender: TcxGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxGridColumnHeaderViewInfo; var ADone: Boolean);
begin
  DrawcxGridColumnOnFocused(Sender, ACanvas, AViewInfo);
end;

procedure TfmContract.cxGrid1DBBandedTableView1DataControllerFilterChanged(Sender: TObject);
begin
  DrawcxGridColumnOnFiltered(Sender);
end;

procedure TfmContract.cxGrid1DBBandedTableView1FocusedItemChanged(Sender: TcxCustomGridTableView; APrevFocusedItem, AFocusedItem: TcxCustomGridTableItem);
begin
  Sender.Painter.Invalidate;
end;

procedure TfmContract.cxGrid1DBBandedTableView1KeyPress(Sender: TObject; var Key: Char);
begin
  FilterColumnGridOnKeyPress(TcxGridDBBandedTableView(TcxGridSite(Sender).GridView), Key);
end;

procedure TfmContract.cxGrid1DBBandedTableView1SelectionChanged(Sender: TcxCustomGridTableView);
begin
  Screen.Cursor := crHourglass;

  Query_Contract_1C.Close;
  Query_Contract_Close.Close;
  Query_Contract_Close_move.Close;
  Query_DocBlob.Close;
  Query_Contract_Norm.Close;

  if (dxBarButton18.Down) then begin
    if (cxPageControl3.ActivePageIndex = 0) AND (cxGrid1DBBandedTableView1.Controller.FocusedRow <> nil) then begin
      Query_DocBlob.Parameters.ParamByName('contract_id').Value := cxGrid1DBBandedTableView1contract_id.DataBinding.Field.AsInteger;
      Query_DocBlob.Open;
    end;
    if (cxPageControl3.ActivePageIndex = 1) AND (cxGrid1DBBandedTableView1.Controller.FocusedRow <> nil) then begin
        Query_Contract_1C.Parameters.ParamByName('contract_id').Value := cxGrid1DBBandedTableView1contract_id.DataBinding.Field.AsInteger;
        Query_Contract_1C.Open;
    end;
    if (cxPageControl3.ActivePageIndex = 2) AND (cxGrid1DBBandedTableView1.Controller.FocusedRow <> nil) then begin
        Query_Contract_Norm.Parameters.ParamByName('contract_id').Value := cxGrid1DBBandedTableView1contract_id.DataBinding.Field.AsInteger;
        Query_Contract_Norm.Open;
    end;
  end;

  if (dxBarButton24.Down) AND (cxGrid1DBBandedTableView1.Controller.FocusedRow <> nil) then begin
    Query_Contract_Close.Parameters.ParamByName('contract_id').Value := cxGrid1DBBandedTableView1contract_id.DataBinding.Field.AsInteger;
    Query_Contract_Close.Open;
  end;

  if (dxBarButton21.Down) AND (cxGrid1DBBandedTableView1.Controller.FocusedRow <> nil) then begin
    Query_Contract_Close_move.Parameters.ParamByName('contract_id').Value := cxGrid1DBBandedTableView1contract_id.DataBinding.Field.AsInteger;
    Query_Contract_Close_move.Open;
  end;

  Screen.Cursor := crDefault;
end;

procedure TfmContract.cxGrid2DBBandedTableView1CustomDrawCell(Sender: TcxCustomGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
  if AViewInfo.GridRecord.Selected or AViewInfo.GridRecord.Focused then begin
    ACanvas.Brush.Color := clNavy;
    ACanvas.Font.Color := clWhite;
    if AViewInfo.Focused then ACanvas.Brush.Color := clBlue;
  end;
end;

procedure TfmContract.cxGrid4DBBandedTableView1CustomDrawCell(Sender: TcxCustomGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
  if (AViewInfo.GridRecord.Values[cxGrid4DBBandedTableView1global_color.Index]<>NULL) then
     ACanvas.Brush.Color := AViewInfo.GridRecord.Values[cxGrid4DBBandedTableView1global_color.Index];

  if AViewInfo.GridRecord.Selected or AViewInfo.GridRecord.Focused then begin
    ACanvas.Brush.Color := clNavy;
    ACanvas.Font.Color := clWhite;
    if AViewInfo.Focused then ACanvas.Brush.Color := clBlue;
  end;

end;

procedure TfmContract.cxGrid5DBBandedTableView1CustomDrawCell(Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
  if AViewInfo.GridRecord.Selected or AViewInfo.GridRecord.Focused then begin
    ACanvas.Brush.Color := clNavy;
    ACanvas.Font.Color := clWhite;
    if AViewInfo.Focused then ACanvas.Brush.Color := clBlue;
  end;
end;

procedure TfmContract.cxGrid6DBBandedTableView1CustomDrawCell(Sender: TcxCustomGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
  if AViewInfo.GridRecord.Selected or AViewInfo.GridRecord.Focused then begin
    ACanvas.Brush.Color := clNavy;
    ACanvas.Font.Color := clWhite;
    if AViewInfo.Focused then ACanvas.Brush.Color := clBlue;
  end;
end;

procedure TfmContract.cxPageControl1Change(Sender: TObject);
begin
  Screen.Cursor := crHourglass;
  Ftype_contract := cxPageControl1.ActivePageIndex;

  case Ftype_contract of
    0 : begin
        cxGrid1DBBandedTableView1firm_customer_name.Caption :='Клиент';
        cxGrid1DBBandedTableView1firm_customer_name_full.Caption :='Полное наименование Клиента';
        Caption := 'Договоры (Клиенты)';
        end;
    1 : begin
        cxGrid1DBBandedTableView1firm_customer_name.Caption :='Субподрядчик';
        cxGrid1DBBandedTableView1firm_customer_name_full.Caption :='Полное наименование Подрядчика';
        Caption := 'Договоры (Подрядчики)';
        end;
    2 : begin
        cxGrid1DBBandedTableView1firm_customer_name.Caption :='Агент';
        Caption := 'Договоры (Администрация)';
        end;
  end;

  Query_Contract.Close;
  Query_Contract.Parameters.ParamByName('type_contract').Value := Ftype_contract;
  Query_Contract.Open;

  Screen.Cursor := crDefault;
end;

procedure TfmContract.cxPageControl3Change(Sender: TObject);
begin
  cxGrid1DBBandedTableView1SelectionChanged(cxGrid1DBBandedTableView1);
end;

procedure TfmContract.dxBarButton11Click(Sender: TObject);
begin
  case TdxBar(TdxBarItemLink(TdxBarButton(Sender).ClickItemLink).Owner.Owner).Tag of
    0 : PrintcxGrid(cxGrid1DBBandedTableView1);
    1 : PrintcxGrid(cxGrid3DBBandedTableView1);
    2 : PrintcxGrid(cxGrid4DBBandedTableView1);
    3 : PrintcxGrid(cxGrid5DBBandedTableView1);
    6 : PrintcxGrid(cxGrid6DBBandedTableView1);
  end;
end;

procedure TfmContract.dxBarButton12Click(Sender: TObject);
begin
  case TdxBar(TdxBarItemLink(TdxBarButton(Sender).ClickItemLink).Owner.Owner).Tag of
    0 : SetRecordColor('contract_id', cxGrid1DBBandedTableView1, 'CONTRACT', (TMenuItem(Sender).Tag=0));
    2 : SetRecordColor('doc_id', cxGrid4DBBandedTableView1, 'DOC_BLOB', TControl(Sender).Tag=0);
  end;
  RefreshQueryGrid(cxGrid1DBBandedTableView1, 'contract_id');
end;

procedure TfmContract.dxBarButton14Click(Sender: TObject);
begin
  case TdxBar(TdxBarItemLink(TdxBarButton(Sender).ClickItemLink).Owner.Owner).Tag of
    0: SetdxDBGridColumns(cxGrid1DBBandedTableView1);
    2: SetdxDBGridColumns(cxGrid4DBBandedTableView1);
    6: SetdxDBGridColumns(cxGrid6DBBandedTableView1);
  end;
end;

procedure TfmContract.dxBarButton15Click(Sender: TObject);
begin
  case TdxBar(TdxBarItemLink(TdxBarButton(Sender).ClickItemLink).Owner.Owner).Tag of
    0: cxGrid1DBBandedTableView1.OptionsView.GroupByBox := not cxGrid1DBBandedTableView1.OptionsView.GroupByBox;
    2: cxGrid4DBBandedTableView1.OptionsView.GroupByBox := not cxGrid4DBBandedTableView1.OptionsView.GroupByBox;
    6: cxGrid6DBBandedTableView1.OptionsView.GroupByBox := not cxGrid6DBBandedTableView1.OptionsView.GroupByBox;
  end;
end;

procedure TfmContract.dxBarButton16Click(Sender: TObject);
begin
  if dxBarButton16.Down then begin
    Query_Contract.Close;
    Query_Contract.SQL[16] := 'AND date_end >= GETDATE() - 31';
    Query_Contract.Open;
  end else begin
    Query_Contract.Close;
    Query_Contract.SQL[16] := '';
    Query_Contract.Open;
  end;
end;

procedure TfmContract.dxBarButton17Click(Sender: TObject);
begin
  if not cxGrid4DBBandedTableView1file_name.DataBinding.Field.IsNull then begin
    GetDocBlobView(cxGrid4DBBandedTableView1doc_id.DataBinding.Field.AsInteger, nil, '', Fconnect);
  end
  else begin
    Application.MessageBox('НЕТ ФАЙЛА К ДАННОЙ ЗАПИСИ', 'ВНИМАНИЕ', MB_OK);
  end;
end;

procedure TfmContract.dxBarButton18Click(Sender: TObject);
begin
  cxPageControl3.Visible := dxBarButton18.Down;
  Splitter1.Visible := dxBarButton18.Down;
  cxGrid1DBBandedTableView1SelectionChanged(cxGrid1DBBandedTableView1);
end;

procedure TfmContract.dxBarButton1Click(Sender: TObject);
begin
  fmContractAdd := TfmContractAdd.Create(Application, Ftype_contract);
  fmContractAdd._SetInsert := -10;
  if fmContractAdd.ShowModal=mrOK then
    RefreshQueryGrid(cxGrid1DBBandedTableView1, 'contract_id', fmContractAdd._GetContractId);
end;

procedure TfmContract.dxBarButton21Click(Sender: TObject);
begin
  Screen.Cursor := crHourglass;

  Panel3.Visible    := dxBarButton21.Down;
  Splitter2.Visible := dxBarButton21.Down;

  cxPageControl2.ActivePageIndex := 1;
  cxPageControl2.Pages[0].TabVisible := False;
  cxPageControl2.Pages[1].TabVisible := True;

  Query_Contract_Close_move.Close;
  if (dxBarButton21.Down) then begin
    Query_Contract_Close_move.Parameters.ParamByName('contract_id').Value := cxGrid1DBBandedTableView1contract_id.DataBinding.Field.AsInteger;
    Query_Contract_Close_move.Open;

    dxBarButton21.ImageIndex := 59;
    dxBarButton24.Down := not dxBarButton21.Down;
  end else
    dxBarButton21.ImageIndex := 60;

  Screen.Cursor := crDefault;
end;

procedure TfmContract.dxBarButton23Click(Sender: TObject);
var
  data_1C  : string;
  ClientDS : TClientDataSet;
  sp_pay_modify : TADOStoredProc;
  Q : TADOQuery;
  users_id : Integer;
  eUSD_val : currency;
  eEUR_val : currency;
  eCHF_val : currency;
  eCNY_val : currency;
begin
  if Fusers_group_cod = '22' then begin // SML
    ShowTextMessage('Загрузка платежей...', False);

    case Ftype_contract of
      0 : data_1C := Get1C_PayIn('http://10.10.101.25/buh_sml/odata/standard.odata', 'odata', 'bY4ridal', Fconnect.ConnectionString, Fusers_group_cod, 365);
      1 : data_1C := Get1C_PayOut('http://10.10.101.25/buh_sml/odata/standard.odata', 'odata', 'bY4ridal', Fconnect.ConnectionString, Fusers_group_cod, 365);
    end;

    ClientDS := TClientDataSet.Create(nil);
    ClientDS.XMLData := data_1C;

//    ClientDSView(ClientDS);

    Q := TADOQuery.Create(nil);
    Q.Connection := Fconnect;

    sp_pay_modify := TADOStoredProc.Create(nil);
    sp_pay_modify.Connection := Fconnect;
    sp_pay_modify.ProcedureName := 'sp_pay_modify';
    sp_pay_modify.Parameters.Refresh;

    ClientDS.First;
    while not ClientDS.Eof do begin
      if ClientDS.FieldByName('result').AsInteger = 2 then begin
        sp_pay_modify.Parameters.Refresh;
        sp_pay_modify.Parameters.ParamByName('@pay_id'     ).Value := ClientDS.FieldByName('pay_id').Value;
        sp_pay_modify.Parameters.ParamByName('@type_action').Value := 2;
        sp_pay_modify.ExecProc;
      end else  if (ClientDS.FieldByName('result').AsInteger = 0) or (ClientDS.FieldByName('result').AsInteger = 1) then begin

        Q.SQL.Clear;
        Q.SQL.Add('SELECT users_id FROM users WHERE users_group_id in (SELECT users_group_id FROM view_contract WHERE contract_id = ' + ClientDS.FieldByName('contract_id').AsString + ') and set_group_users = 1');
        Q.Open;
        users_id := Q.FieldByName('users_id').AsInteger;

        eUSD_val := 0;
        eEUR_val := 0;
        eCHF_val := 0;
        eCNY_val := 0;

        if ClientDS.FieldByName('currency_id').AsInteger =  1 then eUSD_val := ClientDS.FieldByName('excange_val').AsCurrency;
        if ClientDS.FieldByName('currency_id').AsInteger =  5 then eEUR_val := ClientDS.FieldByName('excange_val').AsCurrency;
        if ClientDS.FieldByName('currency_id').AsInteger =  6 then eCHF_val := ClientDS.FieldByName('excange_val').AsCurrency;
        if ClientDS.FieldByName('currency_id').AsInteger = 13 then eCNY_val := ClientDS.FieldByName('excange_val').AsCurrency;

        if eUSD_val = 0 then begin
          Q.SQL.Clear;
          Q.SQL.Add('SELECT TOP 1 exchange_val FROM EXCHANGE_NEW WHERE (exchange_date <= ''' + FormatDateTime('yyyymmdd', ClientDS.FieldByName('pay_date').AsDateTime) + ''') AND (currency_id = 1) ORDER BY exchange_date DESC');
          Q.Open;
          eUSD_val := Q.FieldByName('exchange_val').AsCurrency;
        end;

        if eEUR_val = 0 then begin
          Q.SQL.Clear;
          Q.SQL.Add('SELECT TOP 1 exchange_val FROM EXCHANGE_NEW WHERE (exchange_date <= ''' + FormatDateTime('yyyymmdd', ClientDS.FieldByName('pay_date').AsDateTime) + ''') AND (currency_id = 6) ORDER BY exchange_date DESC');
          Q.Open;
          eEUR_val := Q.FieldByName('exchange_val').AsCurrency;
        end;

        if eCHF_val = 0 then begin
          Q.SQL.Clear;
          Q.SQL.Add('SELECT TOP 1 exchange_val FROM EXCHANGE_NEW WHERE (exchange_date <= ''' + FormatDateTime('yyyymmdd', ClientDS.FieldByName('pay_date').AsDateTime) + ''') AND (currency_id = 5) ORDER BY exchange_date DESC');
          Q.Open;
          eCHF_val := Q.FieldByName('exchange_val').AsCurrency;
        end;

        if eCNY_val = 0 then begin
          Q.SQL.Clear;
          Q.SQL.Add('SELECT TOP 1 exchange_val FROM EXCHANGE_NEW WHERE (exchange_date <= ''' + FormatDateTime('yyyymmdd', ClientDS.FieldByName('pay_date').AsDateTime) + ''') AND (currency_id = 13) ORDER BY exchange_date DESC');
          Q.Open;
          eCNY_val := Q.FieldByName('exchange_val').AsCurrency;
        end;

        sp_pay_modify.Parameters.Refresh;
        sp_pay_modify.Parameters.ParamByName('@pay_id'           ).Value := ClientDS.FieldByName('pay_id').Value;
        sp_pay_modify.Parameters.ParamByName('@type_action'      ).Value := iif(ClientDS.FieldByName('pay_id').IsNull, 0, 1);

        sp_pay_modify.Parameters.ParamByName('@contract_id'      ).Value := ClientDS.FieldByName('contract_id').Value;
        sp_pay_modify.Parameters.ParamByName('@pay_date'         ).Value := ClientDS.FieldByName('pay_date').Value;
        sp_pay_modify.Parameters.ParamByName('@pay_cod'          ).Value := ClientDS.FieldByName('pay_cod').Value;
        sp_pay_modify.Parameters.ParamByName('@pay_sum'          ).Value := ClientDS.FieldByName('pay_sum').Value;
        sp_pay_modify.Parameters.ParamByName('@currency_id'      ).Value := ClientDS.FieldByName('currency_id').Value;
        sp_pay_modify.Parameters.ParamByName('@exchange_val'     ).Value := ClientDS.FieldByName('excange_val').Value;
        sp_pay_modify.Parameters.ParamByName('@first_pay'        ).Value := False;
        sp_pay_modify.Parameters.ParamByName('@pay_note'         ).Value := ClientDS.FieldByName('pay_note').Value;
        sp_pay_modify.Parameters.ParamByName('@type_pay'         ).Value := Ftype_contract;
        sp_pay_modify.Parameters.ParamByName('@pay_copy'         ).Value := False;
        sp_pay_modify.Parameters.ParamByName('@set_who_modify'   ).Value := 1;
        sp_pay_modify.Parameters.ParamByName('@users_id'         ).Value := users_id;
        sp_pay_modify.Parameters.ParamByName('@type_nds_id'      ).Value := ClientDS.FieldByName('type_nds_id').Value;
        sp_pay_modify.Parameters.ParamByName('@incomming_cod'    ).Value := ClientDS.FieldByName('incomming_cod').Value;
        sp_pay_modify.Parameters.ParamByName('@set_return'       ).Value := 0;
        sp_pay_modify.Parameters.ParamByName('@exchange_USD_val' ).Value := eUSD_val;
        sp_pay_modify.Parameters.ParamByName('@exchange_EUR_val' ).Value := eEUR_val;
        sp_pay_modify.Parameters.ParamByName('@exchange_CHF_val' ).Value := eCHF_val;
        sp_pay_modify.Parameters.ParamByName('@exchange_CNY_val' ).Value := eCNY_val;
        sp_pay_modify.Parameters.ParamByName('@pay_comment'      ).Value := ClientDS.FieldByName('pay_comment').Value;
        sp_pay_modify.Parameters.ParamByName('@pay_1C_GUID'      ).Value := ClientDS.FieldByName('pay_1C_GUID').Value;
        sp_pay_modify.Parameters.ParamByName('@pay_1C_rows'      ).Value := null;
        sp_pay_modify.Parameters.ParamByName('@contract_1C_id'   ).Value := null;
        sp_pay_modify.ExecProc;
      end;

      ClientDS.Next;
    end;


    ClientDS.Free;
    Q.Free;
    sp_pay_modify.Free;
    ShowTextMessage();
    Application.MessageBox('Платежи загружены!', 'Внимание', MB_OK);
  end;
end;

procedure TfmContract.dxBarButton24Click(Sender: TObject);
begin
  Screen.Cursor := crHourglass;

  Panel3.Visible    := dxBarButton24.Down;
  Splitter2.Visible := dxBarButton24.Down;

  cxPageControl2.ActivePageIndex := 0;
  cxPageControl2.Pages[0].TabVisible := True;
  cxPageControl2.Pages[1].TabVisible := False;

  Query_Contract_Close.Close;
  if (dxBarButton24.Down) then begin
    Query_Contract_Close.Parameters.ParamByName('contract_id').Value := cxGrid1DBBandedTableView1contract_id.DataBinding.Field.AsInteger;
    Query_Contract_Close.Open;

    dxBarButton21.ImageIndex := 60;
    dxBarButton21.Down := not dxBarButton24.Down;
  end;

  Screen.Cursor := crDefault;
end;

procedure TfmContract.dxBarButton25Click(Sender: TObject);
var SP_contract_period_modify : TADOStoredProc;
                            Q : TADOQuery;
                            i : integer;
                  date_period : TDateTime;
begin
  if not cxGrid1DBBandedTableView1contract_id.DataBinding.Field.IsNull then begin
    Q := TADOQuery.Create(nil);
    Q.Connection := Fconnect;
    Q.SQL.Add('SELECT isnull(dateadd(mm, 1, max(date_period)), getdate()) as next_date_period FROM view_contract_period_close WHERE contract_id = ' + cxGrid1DBBandedTableView1contract_id.DataBinding.Field.AsString);
    Q.Open;

    fmPeriod := TfmPeriod.Create(Application, Q.FieldByName('next_date_period').AsDateTime, Q.FieldByName('next_date_period').AsDateTime, 3 );
    if fmPeriod.ShowModal = mrOk then begin
      date_period := fmPeriod._GetMonth;
      for i := 0 to cxGrid1DBBandedTableView1.Controller.SelectedRecordCount - 1 do begin
        SP_contract_period_modify := TADOStoredProc.Create(nil);
        SP_contract_period_modify.Connection := Fconnect;
        SP_contract_period_modify.ProcedureName := 'sp_contract_period_modify';
        SP_contract_period_modify.Parameters.Refresh;
        SP_contract_period_modify.Parameters.ParamByName('@contract_period_close_id').Value := null;
        SP_contract_period_modify.Parameters.ParamByName('@type_action'             ).Value := 0;
        SP_contract_period_modify.Parameters.ParamByName('@contract_id'             ).Value := cxGrid1DBBandedTableView1.Controller.SelectedRows[i].Values[cxGrid1DBBandedTableView1contract_id.Index];
        SP_contract_period_modify.Parameters.ParamByName('@date_period'             ).Value := date_period - DayOf(date_period) + 15;

        SP_contract_period_modify.ExecProc;
        SP_contract_period_modify.Free;
      end;
    end;
    Q.Free;

  end;
  RefreshQueryGrid(cxGrid1DBBandedTableView1, 'contract_id');
end;

procedure TfmContract.dxBarButton26Click(Sender: TObject);
var SP_contract_period_modify : TADOStoredProc;
begin
  if not cxGrid2DBBandedTableView1contract_id.DataBinding.Field.IsNull then begin
    if Application.MessageBox(PChar('Открыть месяц ' + cxGrid2DBBandedTableView1date_period_month.DataBinding.Field.AsString + ' ' + cxGrid2DBBandedTableView1date_period_year.DataBinding.Field.AsString + '???'), 'Внимание', MB_ICONWARNING or MB_YESNO) = ID_YES then begin
      SP_contract_period_modify := TADOStoredProc.Create(nil);
      SP_contract_period_modify.Connection := Fconnect;
      SP_contract_period_modify.ProcedureName := 'sp_contract_period_modify';
      SP_contract_period_modify.Parameters.Refresh;
      SP_contract_period_modify.Parameters.ParamByName('@contract_period_close_id' ).Value := cxGrid2DBBandedTableView1contract_period_close_id.DataBinding.Field.Value;
      SP_contract_period_modify.Parameters.ParamByName('@type_action'              ).Value := 2;

      SP_contract_period_modify.ExecProc;

      SP_contract_period_modify.Free;
    end;
  end;

  RefreshQueryGrid(cxGrid1DBBandedTableView1, 'contract_id');
end;


procedure TfmContract.dxBarButton19Click(Sender: TObject);
var SP_contract_period_modify : TADOStoredProc;
begin
  if not cxGrid2DBBandedTableView1contract_id.DataBinding.Field.IsNull then begin
    SP_contract_period_modify := TADOStoredProc.Create(nil);
    SP_contract_period_modify.Connection := Fconnect;
    SP_contract_period_modify.ProcedureName := 'sp_contract_period_modify';
    SP_contract_period_modify.Parameters.Refresh;
    SP_contract_period_modify.Parameters.ParamByName('@contract_period_close_id').Value := cxGrid2DBBandedTableView1contract_period_close_id.DataBinding.Field.Value;
    SP_contract_period_modify.Parameters.ParamByName('@type_action'             ).Value := 1;
    SP_contract_period_modify.Parameters.ParamByName('@set_period_check'        ).Value := not cxGrid2DBBandedTableView1set_period_check.DataBinding.Field.AsBoolean;

    SP_contract_period_modify.ExecProc;

    SP_contract_period_modify.Free;

    RefreshQueryGrid(cxGrid2DBBandedTableView1, 'contract_period_close_id');
  end;
end;


procedure TfmContract.dxBarButton27Click(Sender: TObject);
var str_contract_id : string;
                  i : integer;
begin
  for i := 0 to cxGrid1DBBandedTableView1.Controller.SelectedRecordCount - 1 do
    str_contract_id := str_contract_id + ',' + IntToStr(cxGrid1DBBandedTableView1.Controller.SelectedRows[i].Values[cxGrid1DBBandedTableView1contract_id.Index]);
  Delete(str_contract_id, 1, 1);

  fmContractAdd := TfmContractAdd.Create(Application, Ftype_contract);
  fmContractAdd._SetLimitContract := str_contract_id;
  if fmContractAdd.ShowModal=mrOK then RefreshQueryGrid(cxGrid1DBBandedTableView1, 'contract_id', cxGrid1DBBandedTableView1contract_id.DataBinding.Field.AsInteger);
end;

procedure TfmContract.dxBarButton28Click(Sender: TObject);
begin
//добавить движение
  if not cxGrid1DBBandedTableView1contract_id.DataBinding.Field.IsNull then begin
    fmContractCloseAdd := TfmContractCloseAdd.Create(Application, 3, cxGrid1DBBandedTableView1contract_id.DataBinding.Field.AsInteger,
    cxGrid1DBBandedTableView1firm_customer_name.DataBinding.Field.AsString, cxGrid1DBBandedTableView1contract_cod.DataBinding.Field.AsString,
    cxGrid1DBBandedTableView1brief_name.DataBinding.Field.AsString);
    fmContractCloseAdd._SetInsert := True;
    if fmContractCloseAdd.ShowModal = mrOk then
      RefreshQueryGrid(cxGrid5DBBandedTableView1, 'contract_period_close_id', fmContractCloseAdd._GetContractPeriodCloseId);
  end;
end;

procedure TfmContract.dxBarButton34Click(Sender: TObject);
begin
//изменить движение
  if (not cxGrid1DBBandedTableView1contract_id.DataBinding.Field.IsNull) AND
     (not cxGrid5DBBandedTableView1contract_period_close_id.DataBinding.Field.IsNull) then begin
    fmContractCloseAdd := TfmContractCloseAdd.Create(Application, 4, cxGrid1DBBandedTableView1contract_id.DataBinding.Field.AsInteger,
    cxGrid1DBBandedTableView1firm_customer_name.DataBinding.Field.AsString, cxGrid1DBBandedTableView1contract_cod.DataBinding.Field.AsString,
    cxGrid1DBBandedTableView1brief_name.DataBinding.Field.AsString);
    fmContractCloseAdd._SetUpdate := cxGrid5DBBandedTableView1contract_period_close_id.DataBinding.Field.AsInteger;
    if fmContractCloseAdd.ShowModal = mrOk then
      RefreshQueryGrid(cxGrid5DBBandedTableView1, 'contract_period_close_id', fmContractCloseAdd._GetContractPeriodCloseId)
  end;
end;

procedure TfmContract.dxBarButton35Click(Sender: TObject);
var SP_contract_period_modify : TADOStoredProc;
                            i : integer;
begin
//удалить движение средств
  if Application.MessageBox('Вы точно хотите удалить движение(-я)?', 'Внимание', MB_OKCANCEL) = IDOK then begin
    SP_contract_period_modify := TADOStoredProc.Create(nil);
    SP_contract_period_modify.Connection := Fconnect;
    SP_contract_period_modify.ProcedureName := 'sp_contract_period_modify';
    SP_contract_period_modify.Parameters.Refresh;

    for i := 0 to cxGrid5DBBandedTableView1.Controller.SelectedRowCount - 1 do begin
      SP_contract_period_modify.Close;
      SP_contract_period_modify.Parameters.ParamByName('@type_action'             ).Value := 2;
      SP_contract_period_modify.Parameters.ParamByName('@contract_period_close_id').Value := cxGrid5DBBandedTableView1.Controller.SelectedRows[i].Values[cxGrid5DBBandedTableView1contract_period_close_id.Index];

      SP_contract_period_modify.ExecProc;

      ShowTextMessage('Осталось ' + IntToStr(cxGrid5DBBandedTableView1.Controller.SelectedRowCount - i) + ' записей...', False);
    end;

    SP_contract_period_modify.Free;
    RefreshQueryGrid(cxGrid5DBBandedTableView1, 'contract_period_close_id');
    ShowTextMessage;
  end;
end;

procedure TfmContract.dxBarButton2Click(Sender: TObject);
begin
  if not Query_Contract.Eof then begin
    if Fset_run_dll then
      fmContractAdd := TfmContractAdd.CreateDLL(Application, Ftype_contract, Fusr_pwd_lis)
    else
      fmContractAdd := TfmContractAdd.Create(Application, Ftype_contract);
    fmContractAdd._SetUpdate := cxGrid1DBBandedTableView1contract_id.DataBinding.Field.AsInteger;
    if fmContractAdd.ShowModal=mrOK then
      RefreshQueryGrid(cxGrid1DBBandedTableView1, 'contract_id', cxGrid1DBBandedTableView1contract_id.DataBinding.Field.AsInteger);
  end;
end;

procedure TfmContract.dxBarButton3Click(Sender: TObject);
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
      SP_Contract_Modify.Parameters.ParamByName('@contract_id').Value := cxGrid1DBBandedTableView1.Controller.SelectedRows[i].Values[cxGrid1DBBandedTableView1contract_id.Index];

      SP_Contract_Modify.ExecProc;

      ShowTextMessage('Осталось ' + IntToStr(cxGrid1DBBandedTableView1.Controller.SelectedRowCount - i) + ' записей...', False);
    end;

    SP_Contract_Modify.Free;
    RefreshQueryGrid(cxGrid1DBBandedTableView1, 'contract_id');
    ShowTextMessage;
  end;
end;

procedure TfmContract.dxBarButton42Click(Sender: TObject);
var sp_contract_1c_modify : TADOStoredProc;
    date1 : TDateTime;
begin
  date1 := cxGrid3DBBandedTableView1date_begin_load.DataBinding.Field.AsDateTime;
  fmPeriod := TfmPeriod.Create(nil, date1, date1, 5);

  if fmPeriod.ShowModal = mrOk then begin
    date1 := fmPeriod._GetDateBegin;

    sp_contract_1c_modify := TADOStoredProc.Create(nil);
    sp_contract_1c_modify.Connection := Fconnect;
    sp_contract_1c_modify.ProcedureName := 'sp_contract_1c_modify';
    sp_contract_1c_modify.Parameters.Refresh;
    sp_contract_1c_modify.Parameters.ParamByName('@contract_1c_id'  ).Value := cxGrid3DBBandedTableView1contract_1c_id.DataBinding.Field.Value;
    sp_contract_1c_modify.Parameters.ParamByName('@type_action'     ).Value := 3;
    sp_contract_1c_modify.Parameters.ParamByName('@date_begin_load' ).Value := date1;
    sp_contract_1c_modify.ExecProc;
    sp_contract_1c_modify.Free;

    RefreshQueryGrid(cxGrid3DBBandedTableView1, 'contract_1c_id');
  end;

end;

procedure TfmContract.dxBarButton43Click(Sender: TObject);
begin
  //колонки таблицы
  SetdxDBGridColumns(cxGrid5DBBandedTableView1);
end;

procedure TfmContract.dxBarButton44Click(Sender: TObject);
begin
  //включение панели группировок
  cxGrid5DBBandedTableView1.OptionsView.GroupByBox := not cxGrid5DBBandedTableView1.OptionsView.GroupByBox;
end;

procedure TfmContract.dxBarButton45Click(Sender: TObject);
begin
  cxGrid5DBBandedTableView1.Filtering.ColumnFilteredItemsList := not dxBarButton45.Down;
end;

procedure TfmContract.dxBarButton46Click(Sender: TObject);
begin
  FiltercxGrid4ListID(cxGrid5DBBandedTableView1);
end;

procedure TfmContract.dxBarButton47Click(Sender: TObject);
var folder: string;
    OutFileName : string;
    PrefFileName: string;
    SP : TADOStoredProc;
    i : integer;
    s : TArray<Byte>;
    num_write : Cardinal;
    hFile : THandle;
    doc_type_cod: string;
begin
  folder := BrowseDialog('Выбор каталога:');
  if folder <> '' then begin
    if Application.MessageBox(PChar('Сохранить ' + IntToStr(cxGrid4DBBandedTableView1.Controller.SelectedRecordCount) + ' файлов?'), 'ВНИМАНИЕ', MB_ICONWARNING or MB_YESNO) = ID_YES then begin
      SP := TADOStoredProc.Create(nil);
      SP.Connection := Fconnect;
      SP.ProcedureName := 'sp_BLOB_modify';
      for i:=0 to cxGrid4DBBandedTableView1.Controller.SelectedRecordCount - 1 do begin

        SP.Close;
        SP.Parameters.Refresh;
        SP.Parameters.ParamByName('@doc_id'     ).Value := cxGrid4DBBandedTableView1.Controller.SelectedRows[i].Values[cxGrid4DBBandedTableView1doc_id.Index];
        SP.Parameters.ParamByName('@type_action').Value := 10;
        SP.Open;

        if cxGrid4DBBandedTableView1.Controller.SelectedRows[i].Values[cxGrid4DBBandedTableView1file_name.Index] = null then
          OutFileName := 'пусто_' + FormatDateTime('sszzz', Now) + '.txt'
        else
          OutFileName := SP.FieldByName('file_name').AsString;

        s := LZHUnPack(SP.FieldByName('doc_image').AsBytes);
        PrefFileName := '';
        doc_type_cod := VarToStr(cxGrid4DBBandedTableView1.Controller.SelectedRows[i].Values[cxGrid4DBBandedTableView1doc_type_cod.Index]);
        //1 Договор
        //2 Приложение
        //3 счет
        //10 акты
        //9 прочие
        //12 доверенность
        //13 Письмо
        //7 Карточка контрагента

        //if doc_type_cod = '1' then
        // PrefFileName := PrefFileName + '_' +VarToStr(cxGrid1DBBandedTableView2.Controller.SelectedRows[i].Values[cxGrid1DBBandedTableView2contract_cod.Index])+'_' + FormatDateTime('dd.mm.yy', cxGrid1DBBandedTableView2.Controller.SelectedRows[i].Values[cxGrid1DBBandedTableView2date_begin.Index]);
        if (doc_type_cod = '1') or (doc_type_cod = '2') or (doc_type_cod = '3') or (doc_type_cod = '10') or (doc_type_cod = '12') or (doc_type_cod = '13')then  begin
         if not VarIsNull(cxGrid1DBBandedTableView1contract_cod.DataBinding.Field.Value) then
          PrefFileName :=  VarToStr(cxGrid1DBBandedTableView1firm_customer_name.DataBinding.Field.Value)+ 'Дог.№_' + VarToStr(cxGrid1DBBandedTableView1contract_cod.DataBinding.Field.Value) +'_от_' + FormatDateTime('dd.mm.yy', cxGrid1DBBandedTableView1date_begin.DataBinding.Field.Value);
         PrefFileName := PrefFileName + '_' + VarToStr(cxGrid4DBBandedTableView1.Controller.SelectedRows[i].Values[cxGrid4DBBandedTableView1doc_type_describe.Index])
        // if doc_type_cod = '2' then
        //  PrefFileName := PrefFileName + '_' +VarToStr(cxGrid1DBBandedTableView2.Controller.SelectedRows[i].Values[cxGrid1DBBandedTableView2doc_cod.Index])+'_' + FormatDateTime('dd.mm.yy', cxGrid1DBBandedTableView2.Controller.SelectedRows[i].Values[cxGrid1DBBandedTableView2doc_image_date.Index]);
        // if (doc_type_cod = '3') or (doc_type_cod = '10') or (doc_type_cod = '12') or (doc_type_cod = '13')  then
        //  PrefFileName := PrefFileName + '_' +VarToStr(cxGrid1DBBandedTableView2.Controller.SelectedRows[i].Values[cxGrid1DBBandedTableView2doc_describe.Index])+'_' + FormatDateTime('dd.mm.yy', cxGrid1DBBandedTableView2.Controller.SelectedRows[i].Values[cxGrid1DBBandedTableView2doc_image_date.Index]);
       end;

        if (doc_type_cod = '7') then
          PrefFileName := VarToStr(cxGrid1DBBandedTableView1firm_customer_name.DataBinding.Field.Value) + '_' + VarToStr(cxGrid4DBBandedTableView1.Controller.SelectedRows[i].Values[cxGrid4DBBandedTableView1doc_type_describe.Index])+ '_' +VarToStr(cxGrid4DBBandedTableView1.Controller.SelectedRows[i].Values[cxGrid4DBBandedTableView1doc_describe.Index]);

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
        //OutFileName := folder + '\' + IntToStr(cxGrid1DBBandedTableView2.Controller.SelectedRows[i].Values[cxGrid1DBBandedTableView2doc_id.Index]) + '_' + OutFileName;
        hFile:=CreateFile(PChar(OutFileName), Generic_Write, 0, nil, Create_Always, File_Attribute_Normal, 0);
        WriteFile(hFile, PAnsiChar(s)^, Length(s), num_write, nil);
        CloseHandle(hFile);
        FileSetAttr(OutFileName, SysUtils.faReadOnly);
        ShowTextMessage('Осталось ' + IntToStr(cxGrid4DBBandedTableView1.Controller.SelectedRecordCount-i) + ' файлов...',False);
      end;
      ShellExecute(HWND(nil), 'open', PChar(folder), nil, PChar(folder), SW_SHOWNORMAL);
      SP.Free;
      ShowTextMessage;
    end;
  end;
end;


procedure TfmContract.dxBarButton48Click(Sender: TObject);
type
  TFunc = function(AppHand: THandle; contract_norm_id, contract_id: integer; str_connect: string) : Variant;
var
  FNorm     : TFunc;
  handle    : THandle;
  v         : Variant;
begin
  handle := LoadLibrary('user.dll');
  @FNorm := GetProcAddress(handle, 'CreateWndContractNorm');
  case TdxBarButton(Sender).Tag of
    0 : v := FNorm(Application.Handle, -9, cxGrid1DBBandedTableView1contract_id.DataBinding.Field.AsInteger, Fconnect.ConnectionString);
    1 : v := FNorm(Application.Handle, cxGrid6DBBandedTableView1contract_norm_id.DataBinding.Field.AsInteger, cxGrid1DBBandedTableView1contract_id.DataBinding.Field.AsInteger, Fconnect.ConnectionString);
  end;
  FreeLibrary(handle);
  RefreshQueryGrid(cxGrid1DBBandedTableView1, 'contract_id', cxGrid1DBBandedTableView1contract_id.DataBinding.Field.AsInteger);
end;

procedure TfmContract.dxBarButton50Click(Sender: TObject);
var SP : TADOStoredProc;
     i : integer;
begin
  Screen.Cursor := crHourglass;
  if Application.MessageBox('Вы уверены?','Внимание',MB_OKCANCEL) = 1 then begin
    SP := TADOStoredProc.Create(nil);
    SP.Connection := Fconnect;
    SP.ProcedureName := 'sp_contract_norm_modify';
    for i:=0 to cxGrid6DBBandedTableView1.Controller.SelectedRowCount - 1 do begin
      SP.Parameters.Refresh;
      SP.Parameters.ParamByName('@contract_norm_id').Value := cxGrid6DBBandedTableView1contract_norm_id.DataBinding.Field.Value;
      SP.Parameters.ParamByName('@type_action'     ).Value := 2;
      SP.ExecProc;
    end;
    SP.Free;
    RefreshQueryGrid(cxGrid1DBBandedTableView1, 'contract_id', cxGrid1DBBandedTableView1contract_id.DataBinding.Field.AsInteger);
  end;
  Screen.Cursor := crDefault;
end;

procedure TfmContract.dxBarButton5Click(Sender: TObject);
var     Q : TADOQuery;
  new_str : string;
begin
  if InputQuery('Поиск', 'Введите слово для поиска', new_str) then begin
    Q := TADOQuery.Create(nil);
    Q.Connection := Fconnect;
    Q.SQL.Add('SELECT contract_id, firm_customer_name, contract_cod FROM view_contract_rights WHERE firm_customer_name LIKE ''%'+new_str+'%'' and type_contract='+IntToStr(Ftype_contract)+' ORDER BY firm_customer_name');
    Q.Open;
    fmFilter := TfmFilter.Create(0, Q, 'contract_id', 'contract_cod', 'firm_customer_name');
    if fmFilter.ShowModal=mrOk then if not Query_Contract.Locate('contract_id', fmFilter.GetId, [loCaseInsensitive]) then
      begin
        if dxBarButton16.Down then begin
          Showmessage('В действующих договарах фирма не найдена - поиск будет продолжен в договорах прекративших действие');
          dxBarButton16.Down := False;
          dxBarButton16Click(nil);
          Query_Contract.Locate('contract_id', fmFilter.GetId, [loCaseInsensitive]);
        end;
      end;
    Q.Free;
  end;
end;

procedure TfmContract.dxBarButton6Click(Sender: TObject);
begin
  Fcontract_id        := cxGrid1DBBandedTableView1contract_id.DataBinding.Field.AsInteger;
  Fcontract_cod       := cxGrid1DBBandedTableView1contract_cod.DataBinding.Field.AsString;
  Ffirm_customer_name := cxGrid1DBBandedTableView1firm_customer_name.DataBinding.Field.AsString;
  Fstr_contract_id    := cx_GetSelectedValues(cxGrid1, 'contract_id');

  ModalResult         := mrOk;
end;

procedure TfmContract.dxBarButton7Click(Sender: TObject);
type
  TFunc = function(AppHand:THandle; global_id: integer; caption: string; usr_pwd: PUser_pwd):variant;
var
  FShablon  : TFunc;
  handle    : THandle;
  v         : Variant;
begin
   handle := LoadLibrary('dictionary.dll');
   @FShablon := GetProcAddress(handle,'CreateWndDocBlob');
   v := FShablon(Application.Handle, cxGrid1DBBandedTableView1contract_id.DataBinding.Field.AsInteger, 'Документы связанные с договором № '+cxGrid1DBBandedTableView1contract_cod.DataBinding.Field.AsString + ' от ' + cxGrid1DBBandedTableView1date_begin.DataBinding.Field.AsString +'г.'+ ' [' + cxGrid1DBBandedTableView1contract_id.DataBinding.Field.AsString + ']', usr_pwd);
   FreeLibrary(handle);
   RefreshQueryGrid(cxGrid1DBBandedTableView1, 'contract_id')
end;

procedure TfmContract.dxBarButton8Click(Sender: TObject);
var                i : integer;
  SP_Contract_Modify : TADOStoredProc;
begin
  SP_Contract_Modify := TADOStoredProc.Create(nil);
  SP_Contract_Modify.Connection := Fconnect;
  SP_Contract_Modify.ProcedureName := 'sp_contract_modify;1';
  SP_Contract_Modify.Parameters.Refresh;

  for i := 0 to cxGrid1DBBandedTableView1.Controller.SelectedRowCount - 1 do begin
    SP_Contract_Modify.Close;
    SP_Contract_Modify.Parameters.ParamByName('@type_action').Value := 3;
    SP_Contract_Modify.Parameters.ParamByName('@contract_id').Value := cxGrid1DBBandedTableView1.Controller.SelectedRows[i].Values[cxGrid1DBBandedTableView1contract_id.Index];

    SP_Contract_Modify.ExecProc;

    ShowTextMessage('Осталось ' + IntToStr(cxGrid1DBBandedTableView1.Controller.SelectedRowCount - i) + ' записей...', False);
  end;

  SP_Contract_Modify.Free;
  RefreshQueryGrid(cxGrid1DBBandedTableView1, 'contract_id');
  ShowTextMessage;
end;

procedure TfmContract.dxBarSubItem3Popup(Sender: TObject);
var  dxBarButton : TdxBarButton;
           Query : TADOQuery;
begin
  Screen.Cursor := crHourglass;
  while dxBarSubItem3.ItemLinks.Count > 1 do dxBarSubItem3.ItemLinks.Items[1].Item.Free;

  Query := TADOQuery.Create(nil);
  Query.Connection := Fconnect;
  Query.SQL.Add('SELECT doc_describe = max(doc_describe), doc_cod');
  Query.SQL.Add('FROM view_doc_shablon');
  Query.SQL.Add('WHERE (doc_type_cod = ''1'')');
  Query.SQL.Add('AND ((users_group_id IS NULL) OR (users_group_id = (SELECT TOP 1 users_group_id FROM users WHERE users_name = SYSTEM_USER)))');
  Query.SQL.Add('GROUP BY doc_cod');
  Query.SQL.Add('ORDER BY doc_cod');
  Query.Open;

  while not Query.EOF do begin
    dxBarButton := dxBarManager1.AddButton;
    dxBarButton.Tag     := Query.FieldByName('doc_cod').AsInteger;
    dxBarButton.Caption := Query.FieldByName('doc_describe').AsString;
    dxBarButton.ImageIndex := 75;
    dxBarButton.OnClick    := dxBarButtonPrint;
    dxBarSubItem3.ItemLinks.Add(dxBarButton);
  	Query.Next;
  end;
  Query.Free;

  Screen.Cursor := crDefault;
end;

procedure TfmContract.SetContractId(contract_id : integer);
var Q : TADOQuery;
begin
  if (contract_id <> -9) AND (contract_id <> 0) then begin
    ActiveControl := cxGrid1;

    Q := TADOQuery.Create(nil);
    Q.Connection := Fconnect;
    Q.SQL.Add('SELECT type_contract FROM contract WHERE contract_id = ' + IntToStr(contract_id));
    Q.Open;

    cxPageControl1.ActivePageIndex := Q.FieldByName('type_contract').AsInteger;
    Q.Free;

    if cxGrid1DBBandedTableView1.DataController.LocateByKey(contract_id) = False then begin
      dxBarButton16.Down := False;
      dxBarButton16Click(nil);
      if cxGrid1DBBandedTableView1.DataController.LocateByKey(contract_id) = False then begin
        Application.MessageBox('Невозможно найти договор.'+#13+#10+'Договор удалили из базы.', 'Внимание!', MB_ICONWARNING or MB_OK);
      end;
    end;

    if cxGrid1DBBandedTableView1.Controller.FocusedRecord <> nil then
      cxGrid1DBBandedTableView1.Controller.FocusedRecord.Selected := True;
  end;
end;

procedure TfmContract.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if Fset_run_dll then begin
   Fconnect.Close;
   Fconnect.Free;
  end;
  Action := caFree;
end;

procedure TfmContract.FormDestroy(Sender: TObject);
begin
  StoreRegistryGrid(rgSave, '\Software\Lis1\Contract_Grids', cxGrid1DBBandedTableView1);
  StoreRegistryGrid(rgSave, '\Software\Lis1\Contract_Grids', cxGrid2DBBandedTableView1);
  StoreRegistryGrid(rgSave, '\Software\Lis1\Contract_Grids', cxGrid3DBBandedTableView1);
  StoreRegistryGrid(rgSave, '\Software\Lis1\Contract_Grids', cxGrid4DBBandedTableView1);
  StoreRegistryGrid(rgSave, '\Software\Lis1\Contract_Grids', cxGrid5DBBandedTableView1);
end;

procedure TfmContract.ToolButton14Click(Sender: TObject);
begin
  RefreshQueryGrid(cxGrid1DBBandedTableView1, 'contract_id', cxGrid1DBBandedTableView1contract_id.DataBinding.Field.AsInteger);
end;

procedure TfmContract.dxBarButtonPrint(Sender: TObject);
var        Query : TADOQuery;
            id   : integer;
    i, tmp_num   : integer;
    wdApp, wdDoc : Variant;
    str          : string;
    str_num      : string;
    bm_name      : string;
begin
  Screen.Cursor := crHourglass;

  id := TdxBarButton(Sender).Tag;

  str := GetDocBlob(Fconnect, id, 1, True);

  Query := TADOQuery.Create(nil);
  Query.Connection := Fconnect;
  Query.SQL.Add('SELECT view_contract.*,');
  Query.SQL.Add('view_contract.date_begin as date_begin_eng,');

  Query.SQL.Add('firm_customer.firm_name_short  as firm_customer_name_short,');
  Query.SQL.Add('firm_customer.firm_name_eng    as firm_customer_name_eng,');
  Query.SQL.Add('(SELECT TOP 1 firm_contact_name FROM view_firm_contact ' +
                'WHERE firm_id = view_contract.firm_customer AND type_contact_cod = ''11'' AND view_contract.date_begin BETWEEN date_begin AND ISNULL(date_end, view_contract.date_begin + 1))     as fact_address_customer,');
                // Не смотря на название поля - берем Юр. адрес, а не Фактический
  Query.SQL.Add('(SELECT TOP 1 firm_contact_name FROM view_firm_contact ' +
                'WHERE firm_id = view_contract.firm_customer AND type_contact_cod = ''12'' AND view_contract.date_begin BETWEEN date_begin AND ISNULL(date_end, view_contract.date_begin + 1))     as post_address_customer,');
  Query.SQL.Add('(SELECT TOP 1 firm_contact_name FROM view_firm_contact ' +
                'WHERE firm_id = view_contract.firm_customer AND type_contact_cod BETWEEN ''20'' AND ''99'' AND view_contract.date_begin BETWEEN date_begin AND ISNULL(date_end, view_contract.date_begin + 1) ' +
                'ORDER BY set_default DESC, type_contact_cod, firm_contact_name)   as director_name_customer,');
  Query.SQL.Add('(SELECT TOP 1 firm_contact_telefon FROM view_firm_contact ' +
                'WHERE firm_id = view_contract.firm_customer AND type_contact_cod BETWEEN ''20'' AND ''99'' AND view_contract.date_begin BETWEEN date_begin AND ISNULL(date_end, view_contract.date_begin + 1) ' +
                'ORDER BY set_default DESC, type_contact_cod, firm_contact_name)   as director_telefon_customer,');
  Query.SQL.Add('(SELECT TOP 1 firm_contact_fax FROM view_firm_contact ' +
                'WHERE firm_id = view_contract.firm_customer AND type_contact_cod BETWEEN ''20'' AND ''99'' AND view_contract.date_begin BETWEEN date_begin AND ISNULL(date_end, view_contract.date_begin + 1) ' +
                'ORDER BY set_default DESC, type_contact_cod, firm_contact_name)   as director_fax_customer,');
  Query.SQL.Add('(SELECT TOP 1 firm_contact_email FROM view_firm_contact ' +
                'WHERE firm_id = view_contract.firm_customer AND type_contact_cod BETWEEN ''20'' AND ''99'' AND view_contract.date_begin BETWEEN date_begin AND ISNULL(date_end, view_contract.date_begin + 1) ' +
                'ORDER BY set_default DESC, type_contact_cod, firm_contact_name)   as director_email_customer,');
  Query.SQL.Add('(SELECT TOP 1 firm_contact_name FROM view_firm_contact ' +
                'WHERE firm_id = view_contract.firm_customer AND type_contact_cod = ''01'' AND view_contract.date_begin BETWEEN date_begin AND ISNULL(date_end, view_contract.date_begin + 1))        as firm_bank_customer,');

  Query.SQL.Add('firm_self.firm_name_short      as firm_self_name_short,');
  Query.SQL.Add('firm_self.firm_name_eng        as firm_self_name_eng,');
  Query.SQL.Add('(SELECT TOP 1 firm_contact_name FROM view_firm_contact ' +
                'WHERE firm_id = view_contract.firm_self AND type_contact_cod = ''11'' AND view_contract.date_begin BETWEEN date_begin AND ISNULL(date_end, view_contract.date_begin + 1))         as fact_address_self,');
                // Не смотря на название поля - берем Юр. адрес, а не Фактический
  Query.SQL.Add('(SELECT TOP 1 firm_contact_name FROM view_firm_contact ' +
                'WHERE firm_id = view_contract.firm_self AND type_contact_cod = ''12'' AND view_contract.date_begin BETWEEN date_begin AND ISNULL(date_end, view_contract.date_begin + 1))         as post_address_self,');
  Query.SQL.Add('(SELECT TOP 1 firm_contact_name FROM view_firm_contact ' +
                'WHERE firm_id = view_contract.firm_self AND type_contact_cod BETWEEN ''20'' AND ''99'' AND view_contract.date_begin BETWEEN date_begin AND ISNULL(date_end, view_contract.date_begin + 1) ' +
                'ORDER BY set_default DESC, type_contact_cod, firm_contact_name)   as director_name_self,');
  Query.SQL.Add('(SELECT TOP 1 firm_contact_telefon FROM view_firm_contact ' +
                'WHERE firm_id = view_contract.firm_self AND type_contact_cod BETWEEN ''20'' AND ''99'' AND view_contract.date_begin BETWEEN date_begin AND ISNULL(date_end, view_contract.date_begin + 1) ' +
                'ORDER BY set_default DESC, type_contact_cod, firm_contact_name)   as director_telefon_self,');
  Query.SQL.Add('(SELECT TOP 1 firm_contact_fax FROM view_firm_contact ' +
                'WHERE firm_id = view_contract.firm_self AND type_contact_cod BETWEEN ''20'' AND ''99'' AND view_contract.date_begin BETWEEN date_begin AND ISNULL(date_end, view_contract.date_begin + 1) ' +
                'ORDER BY set_default DESC, type_contact_cod, firm_contact_name)   as director_fax_self,');
  Query.SQL.Add('(SELECT TOP 1 firm_contact_email FROM view_firm_contact ' +
                'WHERE firm_id = view_contract.firm_self AND type_contact_cod BETWEEN ''20'' AND ''99'' AND view_contract.date_begin BETWEEN date_begin AND ISNULL(date_end, view_contract.date_begin + 1) ' +
                'ORDER BY set_default DESC, type_contact_cod, firm_contact_name)   as director_email_self,');
  Query.SQL.Add('(SELECT TOP 1 firm_contact_name FROM view_firm_contact ' +
                'WHERE firm_id = view_contract.firm_self AND type_contact_cod = ''01'' AND view_contract.date_begin BETWEEN date_begin AND ISNULL(date_end, view_contract.date_begin + 1)) as firm_bank_self,');

  Query.SQL.Add('(SELECT TOP 1 REPLACE(firm_contact_comment ,''доверенность '','''') FROM view_firm_contact ' +
                ' WHERE firm_id = view_contract.firm_self AND type_contact_cod BETWEEN ''20'' AND ''99'' AND view_contract.date_begin BETWEEN date_begin AND ISNULL(date_end, view_contract.date_begin + 1) ' +
                'ORDER BY set_default DESC, type_contact_cod, firm_contact_name)   as base_self, ');

  Query.SQL.Add('(SELECT TOP 1 REPLACE(firm_contact_comment ,''доверенность '','''') FROM view_firm_contact ' +
                'WHERE firm_id = view_contract.firm_customer AND type_contact_cod BETWEEN ''20'' AND ''99'' AND view_contract.date_begin BETWEEN date_begin AND ISNULL(date_end, view_contract.date_begin + 1) ' +
                'ORDER BY set_default DESC, type_contact_cod, firm_contact_name) as base_customer ');



  Query.SQL.Add('FROM view_contract inner join view_firm as firm_customer on view_contract.firm_customer = firm_customer.firm_id');
  Query.SQL.Add('                   inner join view_firm as firm_self     on view_contract.firm_self     = firm_self.firm_id');
  Query.SQL.Add('WHERE contract_id = ' + IntToStr(cxGrid1DBBandedTableView1contract_id.DataBinding.Field.AsInteger));
  Query.Open;


  wdApp := CreateOleObject('Word.Application');
  wdDoc := wdApp.Documents.Add(str);
  wdApp.DisplayAlerts := 0;

  for i:=1 To wdDoc.Bookmarks.Count do begin
    bm_name := wdDoc.BookMarks.Item(i).Name;
    // Проверка на наличеи постфикса
    str_num := RightStr(bm_name, 3);
    if TryStrToInt(str_num, tmp_num) then
      bm_name := LeftStr(bm_name, Length(bm_name) - 4);
    if Query.FindField(bm_name) <> nil then
      if Query.FieldByName(bm_name).AsString <> null then begin
        wdDoc.Bookmarks.Item(i).Range.InsertBefore(Query.FieldByName(bm_name).AsString);
      end;
  end;
  wdDoc.Fields.Update;

  wdApp.Visible := True;

  VarClear(wdApp);
  VarClear(wdDoc);

  Query.Close;
  Query.Free;

  Screen.Cursor := crDefault;
end;

procedure TfmContract.dxBarButton_ColumnFiltered2Click(Sender: TObject);
begin
  cxGrid4DBBandedTableView1.Filtering.ColumnFilteredItemsList := not dxBarButton_ColumnFiltered2.Down;
end;

procedure TfmContract.dxBarButton_ColumnFilteredClick(Sender: TObject);
begin
  cxGrid1DBBandedTableView1.Filtering.ColumnFilteredItemsList := not dxBarButton_ColumnFiltered.Down;
end;


//Отчет по не связанным договорам
procedure TfmContract.dxBarButton30Click(Sender: TObject);
var     row_0 : integer;
 exWks, exApp : Variant;
            Q : TADOQuery;
begin
  Screen.Cursor := crHourglass;

  Q := TADOQuery.Create(nil);
  Q.Connection := fmMain.Lis;
  Q.SQL.Text := 'SELECT contract_id, contract_cod, firm_customer_name, firm_customer_name_full, firm_self_name, date_begin, date_end, type_contract ' +
  'FROM view_contract_rights WHERE contract_id NOT in (SELECT lis_contract_id FROM Lis_1C.dbo.BIND_CONTRACT WITH (NOLOCK)) ' +
  'AND type_contract = :type_contract AND (date_end >= GETDATE() - 31) ';
  Q.Parameters.ParamByName('type_contract').Value := Ftype_contract;
  Q.Open;
  if Q.RecordCount = 0 then begin
    Application.MessageBox('Внимание','Нет данных!',MB_OKCANCEL);
    Q.Free;
    exit;
  end;

  exApp := CreateOleObject('Excel.Application');
  exApp.Application.EnableEvents := false;
  exApp.Workbooks.Add(GetDocBlob(fmMain.Lis, 282));
  exWks := exApp.ActiveWorkbook.WorkSheets[1];
  exWks.OutLine.SummaryRow := 0;

  case Ftype_contract of
    0 : exWks.Range['B4'].Value := 'Отчет по не связанным договорам (Клиеты)';
    1 : exWks.Range['B4'].Value := 'Отчет по не связанным договорам (Подрядчики)';
    2 : exWks.Range['B4'].Value := 'Отчет по не связанным договорам (Администрация)';
  end;

  row_0 := 7;

  while not Q.EOF do begin
    exWks.Range['B' + IntToStr(row_0)].Value := Q.FieldByName('contract_id').AsInteger;
    exWks.Range['C' + IntToStr(row_0)].Value := Q.FieldByName('contract_cod').AsString;
    exWks.Range['D' + IntToStr(row_0)].Value := Q.FieldByName('firm_customer_name').AsString;
    exWks.Range['E' + IntToStr(row_0)].Value := Q.FieldByName('firm_customer_name_full').AsString;
    exWks.Range['F' + IntToStr(row_0)].Value := Q.FieldByName('firm_self_name').AsString;
    exWks.Range['G' + IntToStr(row_0)].Value := Q.FieldByName('date_begin').AsDatetime;
    exWks.Range['H' + IntToStr(row_0)].Value := Q.FieldByName('date_end').AsDateTime;
    ShowTextMessage('Выводв Excel. Осталось: ' + IntToStr(Q.RecordCount - Q.RecNo) + ' строк.' , False);
    Q.Next;

    if not Q.Eof then begin
      xCopyRow(exApp,row_0 + 1,row_0 +1);
      inc(row_0);
    end;
  end;

  exApp.Rows[IntToStr(row_0 + 1) + ':' + IntToStr(row_0 + 1)].Select;
  exApp.Selection.Delete;
  exApp.ScreenUpdating := True;

  exApp.Visible := True;
  exApp.Range['A1'].Select;
  VarClear(exWks);
  VarClear(exApp);
  Q.Free;

  ShowTextMessage('', True);
  Screen.Cursor := crDefault;
end;

procedure TfmContract.dxBarButton31Click(Sender: TObject);
var    Q : TADOQuery;
      SP : TADOStoredProc;
begin
  Screen.Cursor := crHourglass;

  Q := TADOQuery.Create(nil);
  Q.Connection := Fconnect;
  Q.SQL.Add('SELECT	contract_1c_id, contract_cod, contract_name, date_begin, firm_customer_name, firm_self_name, contract_type_name, inn, kpp,');
  Q.SQL.Add('		    currency_name, contract_id, contract_cod_lis, firm_customer_name_short, base_1C_name, contract_1c_GUID, firm_customer_GUID, firm_self_GUID');
  Q.SQL.Add('FROM	  view_contract_1c');
  Q.SQL.Add('WHERE	users_group_id in (SELECT users_group_id FROM view_users WHERE users_name = system_user)');
  Q.Open;

  Screen.Cursor := crDefault;

  fmFilter := TfmFilter.Create(2, Q,'contract_1C_id', 'contract_1C_GUID', 'firm_customer_name');
  fmFilter._SetContract_1c := True;
  fmFilter.ShowModal;
  Q.Free;
end;

procedure TfmContract.dxBarButton32Click(Sender: TObject);
var
         ClientDS : TClientDataSet;
  users_group_cod : string;
                Q : TADOQuery;
         str_temp : string;
begin
  Q := TADOQuery.Create(nil);
  Q.Connection := fmMain.Lis;
  Q.SQL.Add('SELECT	inf_obj_cod as users_group_cod');
  Q.SQL.Add('FROM	  users INNER JOIN inf_obj on users.users_group_id = inf_obj.inf_obj_id');
  Q.SQL.Add('WHERE	users_name = system_user');
  Q.Open;
  users_group_cod := Q.FieldByName('users_group_cod').AsString;

  ClientDS := TClientDataSet.Create(nil);
  ClientDS.FieldDefs.Add('id', ftAutoInc);
  ClientDS.FieldDefs.Add('doc_type_cod', ftString, 10);
  ClientDS.FieldDefs.Add('database_cod', ftString, 10);
  ClientDS.FieldDefs.Add('users_group_cod', ftString, 10);
  ClientDS.FieldDefs.Add('docs_contract_id', ftInteger);
  ClientDS.FieldDefs.Add('contract_id', ftInteger);
  ClientDS.FieldDefs.Add('contract_cod', ftString, 50);
  ClientDS.FieldDefs.Add('date_begin', ftDate);
  ClientDS.FieldDefs.Add('type_contract', ftInteger);
  ClientDS.FieldDefs.Add('firm_self_id', ftInteger);
  ClientDS.FieldDefs.Add('firm_self_name',  ftString, 200);
  ClientDS.FieldDefs.Add('firm_customer_id', ftInteger);
  ClientDS.FieldDefs.Add('firm_customer_name',  ftString, 200);
  ClientDS.FieldDefs.Add('currency_id', ftInteger);
  ClientDS.FieldDefs.Add('brief_name',  ftString, 10);
  ClientDS.FieldDefs.Add('curator_FIO_users',  ftString, 50);
  ClientDS.FieldDefs.Add('note',  ftString, 400);
  ClientDS.FieldDefs.Add('set_foreign_company',  ftBoolean);
  ClientDS.FieldDefs.Add('set_credit', ftBoolean);
  ClientDS.FieldDefs.Add('lift_credit',  ftCurrency);
  ClientDS.FieldDefs.Add('contract_GUID', ftString, 100);

  ClientDS.CreateDataSet;
  ClientDS.LogChanges := False;

  Q.SQL.Clear;
  Q.SQL.Add('SELECT * FROM view_contract WHERE contract_id = ' + cxGrid1DBBandedTableView1contract_id.DataBinding.Field.AsString);
  Q.Open;

  ClientDS.Append;
  ClientDS.FieldByName('doc_type_cod'      ).Value := '1';  // Договор
  ClientDS.FieldByName('database_cod'      ).Value := '0';  // База Lis
  ClientDS.FieldByName('users_group_cod'   ).Value := users_group_cod;
  ClientDS.FieldByName('docs_contract_id'  ).Value := null;
  ClientDS.FieldByName('contract_id'       ).Value := Q.FieldByName('contract_id').Value;
  ClientDS.FieldByName('contract_cod'      ).Value := Q.FieldByName('contract_cod').Value;
  ClientDS.FieldByName('date_begin'        ).Value := Q.FieldByName('date_begin').Value;
  ClientDS.FieldByName('type_contract'     ).Value := Q.FieldByName('type_contract').Value;
  ClientDS.FieldByName('firm_self_id'      ).Value := Q.FieldByName('firm_self').Value;
  ClientDS.FieldByName('firm_self_name'    ).Value := Q.FieldByName('firm_self_name').Value;
  ClientDS.FieldByName('firm_customer_id'  ).Value := Q.FieldByName('firm_customer').Value;
  ClientDS.FieldByName('firm_customer_name').Value := Q.FieldByName('firm_customer_name').Value;
  ClientDS.FieldByName('currency_id'       ).Value := Q.FieldByName('currency_id').Value;
  ClientDS.FieldByName('brief_name'        ).Value := Q.FieldByName('brief_name').Value;
  ClientDS.FieldByName('curator_FIO_users' ).Value := Q.FieldByName('curator_FIO_users').Value;
  ClientDS.FieldByName('note'              ).Value := Q.FieldByName('note').Value;
  ClientDS.FieldByName('set_foreign_company').Value := null;
  ClientDS.FieldByName('set_credit'        ).Value := Q.FieldByName('set_credit').Value;
  ClientDS.FieldByName('lift_credit'       ).Value := null;
  ClientDS.FieldByName('contract_GUID'     ).Value := null;
  ClientDS.Post;

  if DocsRun(ClientDS, usr_pwd, users_group_cod) = mrOk then
    RefreshQueryGrid(cxGrid1DBBandedTableView1, cxGrid1DBBandedTableView1.DataController.KeyFieldNames);

  Q.Free;
  ClientDS.Free;
end;

procedure TfmContract.dxBarButton33Click(Sender: TObject);
var
  vData: PData;
begin
  Screen.Cursor := crHourglass;
  if cxGrid1DBBandedTableView1.DataController.DataSet.FieldByName('docs_id').AsInteger = 0 then
    Application.MessageBox('Запись LIS-Doc отстствует !!!', 'Внимание', MB_OK + MB_ICONWARNING)
  else
    if RunLisDocs then begin
      New(vData);
      vData.CmdType := 1;
      vData.Id := cxGrid1DBBandedTableView1.DataController.DataSet.FieldByName('docs_id').AsInteger;
      SendData(LisDocsHandle, vData);
      Dispose(vData);
    end;
  Screen.Cursor := crDefault;
end;


procedure TfmContract.dxBarButton37Click(Sender: TObject);
var           Q : TADOQuery;
       ClientDS : TClientDataSet;
  ClientDS_Link : TClientDataSet;
    str_list_id : TStringList;
              i : integer;
    contract_id : integer;
    sp_contract_1c_modify : TADOStoredProc;
    data_1C : string;
begin
  if Fset_link_1C then begin
    contract_id := cxGrid1DBBandedTableView1contract_id.DataBinding.Field.AsInteger;

    if Fusers_group_cod = '22' then  // SML
      data_1C := Get1C_Contract('http://10.10.101.25/buh_sml/odata/standard.odata', 'odata', 'bY4ridal', cxGrid1DBBandedTableView1date_begin.DataBinding.Field.AsDateTime - 7);


    if Fusers_group_cod = '35' then // Урал Логистика
      data_1C := Get1C_Contract('http://10.10.101.25/buh_ul/odata/standard.odata', 'data', 'Li3RA9wy', cxGrid1DBBandedTableView1date_begin.DataBinding.Field.AsDateTime - 7);


    if data_1C <> '' then begin
      ClientDS := TClientDataSet.Create(nil);
      ClientDS.XMLData := data_1C;
      ShowTextMessage();

      ClientDS_Link := TClientDataSet.Create(nil);
      ClientDS_Link.FieldDefs.Add('contract_1c_id', ftInteger);
      ClientDS_Link.FieldDefs.Add('contract_id', ftInteger);
      ClientDS_Link.FieldDefs.Add('contract_1c_GUID', ftString, 50);
      ClientDS_Link.FieldDefs.Add('firm_self_GUID', ftString, 50);
      ClientDS_Link.CreateDataSet;
      ClientDS_Link.LogChanges := False;
      ClientDS_Link.IndexDefs.Add('ClientDS_Index1', 'contract_1c_GUID;firm_self_GUID', []);
      ClientDS_Link.IndexName := 'ClientDS_Index1';


      Q := TADOQuery.Create(nil);
      Q.Connection := Fconnect;
      Q.SQL.Add('SELECT contract_1c_id, contract_id, contract_1C_GUID, firm_self_GUID, firm_customer_name, firm_customer_GUID FROM contract_1C');
      Q.Open;
      Q.First;
      while not Q.Eof do begin
        ClientDS_Link.Append;
        ClientDS_Link.FieldByName('contract_1c_id'  ).Value := Q.FieldByName('contract_1c_id').Value;
        ClientDS_Link.FieldByName('contract_id'     ).Value := Q.FieldByName('contract_id').Value;
        ClientDS_Link.FieldByName('contract_1C_GUID').Value := LowerCase(Q.FieldByName('contract_1C_GUID').Value);
        ClientDS_Link.FieldByName('firm_self_GUID'  ).Value := LowerCase(Q.FieldByName('firm_self_GUID').Value);
        ClientDS_Link.Post;
        Q.Next;
      end;

      ClientDS.First;
      while not ClientDS.Eof do begin
        if ClientDS_Link.FindKey([ClientDS.FieldByName('contract_1c_GUID').Value, ClientDS.FieldByName('firm_self_GUID').Value]) then begin
          ClientDS.Delete;
        end else begin
          ClientDS.Next;
        end;
      end;
      Screen.Cursor := crDefault;

      fmFilter := TfmFilter.Create(2, Q, 'id', 'contract_1C_GUID', 'contract_cod');
      fmFilter.SetDateSearchNotRate(ClientDS, 'id', 'contract_1C_GUID', 'contract_cod');
      fmFilter._SetContract_1c := True;
      fmFilter._MultiSelect := True;

      //Фильтр по ИНН
      if TComponent(Sender).Tag = 2 then fmFilter._FilterINN := cxGrid1DBBandedTableView1firm_customer_inn.DataBinding.Field.AsString;

      //Фильтр по Имени контрагента
      if TComponent(Sender).Tag = 3 then fmFilter._FilterCustomerName := cxGrid1DBBandedTableView1firm_customer_name.DataBinding.Field.AsString;

      if TComponent(Sender).Tag = 4 then begin
        if cxGrid3DBBandedTableView1firm_customer_GUID.DataBinding.Field.AsString <> '' then
          fmFilter._FilterCustomer := cxGrid3DBBandedTableView1firm_customer_GUID.DataBinding.Field.AsString;
      end;

      if fmFilter.ShowModal = mrOk then begin

        str_list_id := TStringList.Create;
        str_list_id.DelimitedText := fmFilter._GetStrId;

        for i := 0 to str_list_id.Count-1 do begin

          sp_contract_1c_modify := TADOStoredProc.Create(nil);
          sp_contract_1c_modify.Connection := Fconnect;
          sp_contract_1c_modify.ProcedureName := 'sp_contract_1c_modify';
          sp_contract_1c_modify.Parameters.Refresh;

          if ClientDS.Locate('id', str_list_id.Strings[i], []) then begin
            sp_contract_1c_modify.Parameters.Refresh;
            sp_contract_1c_modify.Parameters.ParamByName('@contract_1c_id'     ).Value := null;
            sp_contract_1c_modify.Parameters.ParamByName('@type_action'        ).Value := 0;
            sp_contract_1c_modify.Parameters.ParamByName('@contract_id'        ).Value := contract_id;
            sp_contract_1c_modify.Parameters.ParamByName('@contract_1c_GUID'   ).Value := ClientDS.FieldByName('contract_1c_GUID').Value;
            sp_contract_1c_modify.Parameters.ParamByName('@contract_cod'       ).Value := ClientDS.FieldByName('contract_cod').Value;
            sp_contract_1c_modify.Parameters.ParamByName('@contract_name'      ).Value := ClientDS.FieldByName('contract_name').Value;
            sp_contract_1c_modify.Parameters.ParamByName('@firm_customer_name' ).Value := ClientDS.FieldByName('firm_customer_name').Value;
            sp_contract_1c_modify.Parameters.ParamByName('@firm_self_name'     ).Value := ClientDS.FieldByName('firm_self_name').Value;
            sp_contract_1c_modify.Parameters.ParamByName('@date_begin_load'    ).Value := ClientDS.FieldByName('date_begin_load').Value;
            sp_contract_1c_modify.Parameters.ParamByName('@firm_customer_GUID' ).Value := ClientDS.FieldByName('firm_customer_GUID').Value;
            sp_contract_1c_modify.Parameters.ParamByName('@firm_self_GUID'     ).Value := ClientDS.FieldByName('firm_self_GUID').Value;
            sp_contract_1c_modify.Parameters.ParamByName('@base_1C_name'       ).Value := ClientDS.FieldByName('base_1C_name').Value;
            sp_contract_1c_modify.Parameters.ParamByName('@contract_type_name' ).Value := ClientDS.FieldByName('contract_type_name').Value;
            sp_contract_1c_modify.Parameters.ParamByName('@inn'                ).Value := ClientDS.FieldByName('inn').Value;
            sp_contract_1c_modify.Parameters.ParamByName('@kpp'                ).Value := ClientDS.FieldByName('kpp').Value;
            sp_contract_1c_modify.Parameters.ParamByName('@version_1C'         ).Value := ClientDS.FieldByName('version_1C').Value;
            sp_contract_1c_modify.Parameters.ParamByName('@date_begin'         ).Value := ClientDS.FieldByName('date_begin').Value;
            sp_contract_1c_modify.Parameters.ParamByName('@currency_name'      ).Value := ClientDS.FieldByName('currency_name').Value;
            sp_contract_1c_modify.Parameters.ParamByName('@set_delete'         ).Value := ClientDS.FieldByName('set_delete').Value;
            sp_contract_1c_modify.ExecProc;
          end;

          sp_contract_1c_modify.Free;

          RefreshQueryGrid(cxGrid3DBBandedTableView1, 'contract_1c_id');
        end;

      end;

      Q.Free;
      ClientDS_Link.Free;
      ClientDS.Free;
    end;



  end else begin
    Application.MessageBox('Недостаточно прав доступа!','Ошибка!',MB_OKCANCEL);
  end;
end;

procedure TfmContract.dxBarButton38Click(Sender: TObject);
var sp_contract_1c_modify : TADOStoredProc;
    Q : TADOQuery;
begin
  Screen.Cursor := crHourglass;
  if not usr_pwd.user_func.Locate('func_name', 'set_link_1C', [loCaseInsensitive]) then begin
    Application.MessageBox('Недостаточно прав доступа!','Ошибка!',MB_OKCANCEL);
    exit;
  end;

  if Application.MessageBox('Вы уверены, что хотите разорвать связь?','Предупреждение',MB_OKCANCEL) = 1 then begin

    Q := TADOQuery.Create(nil);
    Q.Connection := Fconnect;
    Q.SQL.Add('SELECT 1 FROM view_pay WHERE contract_1c_id = ' + cxGrid3DBBandedTableView1contract_1c_id.DataBinding.Field.AsString);
    Q.Open;
    if Q.RecordCount > 0 then begin
      if Application.MessageBox('Все загруженные платежи по данной связи будут удалены.'+#13+#10+'Продолжить?', 'Внимание!', MB_ICONQUESTION or MB_YESNO or MB_DEFBUTTON2) = ID_NO then begin
        Q.Free;
        Exit;
      end;
    end;
    Q.Free;


    sp_contract_1c_modify := TADOStoredProc.Create(nil);
    sp_contract_1c_modify.Connection := Fconnect;
    sp_contract_1c_modify.ProcedureName := 'sp_contract_1c_modify';
    sp_contract_1c_modify.CommandTimeout := 600;
    sp_contract_1c_modify.Parameters.Refresh;
    sp_contract_1c_modify.Parameters.ParamByName('@contract_1c_id'     ).Value := cxGrid3DBBandedTableView1contract_1c_id.DataBinding.Field.Value;
    sp_contract_1c_modify.Parameters.ParamByName('@type_action'        ).Value := 2;
    sp_contract_1c_modify.ExecProc;
    sp_contract_1c_modify.Free;

    RefreshQueryGrid(cxGrid3DBBandedTableView1, 'contract_1c_id');
  end;
  Screen.Cursor := crDefault;
end;

{$ENDREGION}

procedure TfmContract.SetShowContract(set_show_contract: boolean);
begin
  if set_show_contract = True then begin
    cxGrid1DBBandedTableView1.OnDblClick := dxBarButton2Click;
  end else begin
    cxGrid1DBBandedTableView1.OnDblClick := dxBarButton6Click;
  end;
end;

end.

