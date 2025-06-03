unit EtranKKR;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Default, Period, cxPropertiesStore, DB, ADODB, dxBar, cxClasses,
  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxPC, cxStyles,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, cxDBData, Raznoe,
  cxCurrencyEdit, cxGridCustomTableView, cxGridTableView, cxGridBandedTableView,
  cxGridDBBandedTableView, ExtCtrls, cxGridLevel, cxGridCustomView, cxGrid,
  ImgList, cxCalendar, cxCheckBox, cxContainer, cxLabel, dxSkinsCore,
  dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee,
  dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
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
  dxSkinXmas2008Blue, dxSkinscxPCPainter, dxBarBuiltInMenu, cxNavigator,
  dxSkinsdxBarPainter, dxSkinOffice2016Colorful, dxSkinOffice2016Dark,
  dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light,
  cxDataControllerConditionalFormattingRulesManagerDialog, System.ImageList,
  cxImageList, dxSkinTheBezier, dxDateRanges, dxSkinOffice2019Colorful,
  dxSkinBasic, dxSkinOffice2019Black, dxSkinOffice2019DarkGray,
  dxSkinOffice2019White, dxSkinWXI, dxScrollbarAnnotations;

type
  TfmEtranKKR = class(TForm)
    ADOEtran: TADOConnection;
    cxPropertiesStore1: TcxPropertiesStore;
    dxBarManager1: TdxBarManager;
    dxBarManager1Bar1: TdxBar;
    dxBarButton1: TdxBarButton;
    dxBarButton2: TdxBarButton;
    cxPageControl1: TcxPageControl;
    cxTabSheet1: TcxTabSheet;
    cxTabSheet2: TcxTabSheet;
    cxTabSheet3: TcxTabSheet;
    cxGrid1: TcxGrid;
    cxGrid1DBBandedTableView1: TcxGridDBBandedTableView;
    cxGrid1Level1: TcxGridLevel;
    Panel1: TPanel;
    Splitter1: TSplitter;
    DS_KKR_debet_get: TDataSource;
    cxGrid1DBBandedTableView1kkr_debet_id: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1kkrPayerOrgELS: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1rowRepDate: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1rowDocDate: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1rowDocType: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1rowDocID: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1rowDocNum: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1rowOper: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1rowRwName: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1rowStName: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1rowDebet: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1rowNds: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1rowDebetNds: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1invoice_id: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1invoiceID: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1invFromStationName: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1invToStationName: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1xml_reply_id: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1firm_customer_name: TcxGridDBBandedColumn;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1: TcxStyle;
    cxImageList1: TcxImageList;
    Panel2: TPanel;
    Splitter2: TSplitter;
    Panel3: TPanel;
    cxGrid3: TcxGrid;
    cxGridDBBandedTableView2: TcxGridDBBandedTableView;
    cxGrid1DBBandedTableView1fact_id: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1num_vagon: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1num_document_pref: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1num_document: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1date_from_to: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1date_ready: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1datpr: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1bargain_cod: TcxGridDBBandedColumn;
    cxGridDBBandedColumn1: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1num_konten: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1fact_weight: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1kargo_capacity: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1calc_weight: TcxGridDBBandedColumn;
    cxGridDBBandedColumn22: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1sub_cod_self: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1node_begin_name: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1node_end_name: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1node_end_SNG_name: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1node_begin_SNG_name: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1kargoETSNG_name: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1kargoGNG_name: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1state_begin_name: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1state_end_name: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1kateg_send: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1vid_transfer: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1set_main: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1brief_name: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1kexp: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1from_to_name: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1mps_sps_name: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1firm_info_name: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1file_load_info: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1date_load_file: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1last_bargain_id: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1fact_etran_comment: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1fact_users_comment: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1etran_folder: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1doc_date_last_oper: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1bargain_id: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1calc_weight_check: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1attr_self: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1attr_route: TcxGridDBBandedColumn;
    cxGridDBBandedColumn2: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1global_color: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1date_delivery: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1payer_cod: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1claim_num: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1set_zfto_agree: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1etran_fact_load: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1etran_date_ready: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1etran_date_departure: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1etran_date_arrive: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1etran_date_delivery: TcxGridDBBandedColumn;
    cxGridLevel2: TcxGridLevel;
    cxLabel3: TcxLabel;
    cxLabel2: TcxLabel;
    cxGrid5: TcxGrid;
    cxGridDBBandedTableView4: TcxGridDBBandedTableView;
    cxGridLevel4: TcxGridLevel;
    cxGrid2: TcxGrid;
    cxGridDBBandedTableView1: TcxGridDBBandedTableView;
    cxGridLevel1: TcxGridLevel;
    DS_KKR_credit_get: TDataSource;
    cxGridDBBandedTableView1kkr_credit_id: TcxGridDBBandedColumn;
    cxGridDBBandedTableView1kkrPayerOrgELS: TcxGridDBBandedColumn;
    cxGridDBBandedTableView1rowRepDate: TcxGridDBBandedColumn;
    cxGridDBBandedTableView1rowInsDate: TcxGridDBBandedColumn;
    cxGridDBBandedTableView1rowVidDokum: TcxGridDBBandedColumn;
    cxGridDBBandedTableView1rowDok: TcxGridDBBandedColumn;
    cxGridDBBandedTableView1rowNazn: TcxGridDBBandedColumn;
    cxGridDBBandedTableView1rowCredit: TcxGridDBBandedColumn;
    Panel4: TPanel;
    Panel5: TPanel;
    Splitter3: TSplitter;
    Panel6: TPanel;
    Panel7: TPanel;
    Splitter4: TSplitter;
    cxGrid4: TcxGrid;
    cxGridDBBandedTableView3: TcxGridDBBandedTableView;
    cxGridLevel3: TcxGridLevel;
    cxGrid6: TcxGrid;
    cxGridDBBandedTableView5: TcxGridDBBandedTableView;
    cxGridLevel5: TcxGridLevel;
    cxLabel1: TcxLabel;
    cxGrid7: TcxGrid;
    cxGridDBBandedTableView6: TcxGridDBBandedTableView;
    cxGridLevel6: TcxGridLevel;
    cxLabel4: TcxLabel;
    DS_KKR_saldo_get: TDataSource;
    sp_KKR_saldo_get: TADOStoredProc;
    cxGridDBBandedTableView3rowDocType: TcxGridDBBandedColumn;
    cxGridDBBandedTableView3rowDocTypeName: TcxGridDBBandedColumn;
    cxGridDBBandedTableView3rowSaldo: TcxGridDBBandedColumn;
    cxGridDBBandedTableView3rowDebet: TcxGridDBBandedColumn;
    cxGridDBBandedTableView3rowCredit: TcxGridDBBandedColumn;
    cxGridDBBandedTableView3rowSaldotek: TcxGridDBBandedColumn;
    sp_KKR_transfer_get: TADOStoredProc;
    DS_KKR_transfer_get: TDataSource;
    cxGridDBBandedTableView5kkr_transfer_id: TcxGridDBBandedColumn;
    cxGridDBBandedTableView5kkrPayerOrgELS: TcxGridDBBandedColumn;
    cxGridDBBandedTableView5rowRepDate: TcxGridDBBandedColumn;
    cxGridDBBandedTableView5rowSaldo: TcxGridDBBandedColumn;
    cxGridDBBandedTableView5rowDebet: TcxGridDBBandedColumn;
    cxGridDBBandedTableView5rowCredit: TcxGridDBBandedColumn;
    cxGridDBBandedTableView5rowSaldotek: TcxGridDBBandedColumn;
    DS_KKR_agent_sum_get: TDataSource;
    dxBarPopupMenu1: TdxBarPopupMenu;
    dxBarButton3: TdxBarButton;
    dxBarSubItem1: TdxBarSubItem;
    dxBarButton4: TdxBarButton;
    dxBarButton5: TdxBarButton;
    dxBarButton6: TdxBarButton;
    dxBarButton7: TdxBarButton;
    dxBarPopupMenu2: TdxBarPopupMenu;
    dxBarButton8: TdxBarButton;
    dxBarSubItem2: TdxBarSubItem;
    dxBarButton9: TdxBarButton;
    dxBarButton10: TdxBarButton;
    dxBarButton11: TdxBarButton;
    dxBarButton12: TdxBarButton;
    dxBarPopupMenu3: TdxBarPopupMenu;
    dxBarButton13: TdxBarButton;
    dxBarSubItem3: TdxBarSubItem;
    dxBarButton14: TdxBarButton;
    dxBarButton15: TdxBarButton;
    dxBarButton16: TdxBarButton;
    dxBarButton17: TdxBarButton;
    dxBarPopupMenu4: TdxBarPopupMenu;
    dxBarButton18: TdxBarButton;
    dxBarSubItem4: TdxBarSubItem;
    dxBarButton19: TdxBarButton;
    dxBarButton20: TdxBarButton;
    dxBarButton21: TdxBarButton;
    dxBarButton22: TdxBarButton;
    dxBarPopupMenu5: TdxBarPopupMenu;
    dxBarButton23: TdxBarButton;
    dxBarSubItem5: TdxBarSubItem;
    dxBarButton24: TdxBarButton;
    dxBarButton25: TdxBarButton;
    dxBarButton26: TdxBarButton;
    dxBarButton27: TdxBarButton;
    dxBarPopupMenu6: TdxBarPopupMenu;
    dxBarButton28: TdxBarButton;
    dxBarSubItem6: TdxBarSubItem;
    dxBarButton29: TdxBarButton;
    dxBarButton30: TdxBarButton;
    dxBarButton31: TdxBarButton;
    dxBarButton32: TdxBarButton;
    dxBarPopupMenu7: TdxBarPopupMenu;
    dxBarButton33: TdxBarButton;
    dxBarSubItem7: TdxBarSubItem;
    dxBarButton34: TdxBarButton;
    dxBarButton35: TdxBarButton;
    dxBarButton36: TdxBarButton;
    dxBarButton37: TdxBarButton;
    cxGridDBBandedTableView6contract_id: TcxGridDBBandedColumn;
    cxGridDBBandedTableView6firm_customer_name: TcxGridDBBandedColumn;
    cxGridDBBandedTableView6summa: TcxGridDBBandedColumn;
    cxGridDBBandedTableView6min_RepDate: TcxGridDBBandedColumn;
    cxGridDBBandedTableView6max_RepDate: TcxGridDBBandedColumn;
    Query_Invoice: TADOQuery;
    Query_Fact: TADOQuery;
    DS_Invoice: TDataSource;
    DS_fact: TDataSource;
    cxGridDBBandedTableView4rowRepDate: TcxGridDBBandedColumn;
    cxGridDBBandedTableView4rowDocDate: TcxGridDBBandedColumn;
    cxGridDBBandedTableView4rowDocID: TcxGridDBBandedColumn;
    cxGridDBBandedTableView4rowDocNum: TcxGridDBBandedColumn;
    cxGridDBBandedTableView4rowOper: TcxGridDBBandedColumn;
    cxGridDBBandedTableView4rowRwName: TcxGridDBBandedColumn;
    cxGridDBBandedTableView4rowStName: TcxGridDBBandedColumn;
    cxGridDBBandedTableView4rowDebet: TcxGridDBBandedColumn;
    cxGridDBBandedTableView4rowNDS: TcxGridDBBandedColumn;
    cxGridDBBandedTableView4rowDebetNDS: TcxGridDBBandedColumn;
    cxGridDBBandedTableView4kkr_debet_id: TcxGridDBBandedColumn;
    dxBarButton38: TdxBarButton;
    sp_KKR_debet_get: TADOStoredProc;
    sp_KKR_credit_get: TADOStoredProc;
    sp_KKR_agent_sum_get: TADOStoredProc;
    dxBarButton39: TdxBarButton;
    dxBarButton40: TdxBarButton;
    cxGridDBBandedTableView3kkrPayerOrgELS: TcxGridDBBandedColumn;
    cxGridDBBandedTableView3Column2: TcxGridDBBandedColumn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
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
    procedure dxBarButton2Click(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure cxGridDBBandedTableView6FilterOnChanged(Sender: TObject);
    procedure cxGridDBBandedTableView6FocusedItemChanged(
      Sender: TcxCustomGridTableView; APrevFocusedItem,
      AFocusedItem: TcxCustomGridTableItem);
    procedure cxGridDBBandedTableView6KeyPress(Sender: TObject; var Key: Char);
    procedure cxGridDBBandedTableView5FilterOnChanged(Sender: TObject);
    procedure cxGridDBBandedTableView5FocusedItemChanged(
      Sender: TcxCustomGridTableView; APrevFocusedItem,
      AFocusedItem: TcxCustomGridTableItem);
    procedure cxGridDBBandedTableView5KeyPress(Sender: TObject; var Key: Char);
    procedure cxGridDBBandedTableView2FilterOnChanged(Sender: TObject);
    procedure cxGridDBBandedTableView2CustomDrawCell(
      Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
      AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
    procedure cxGridDBBandedTableView2FocusedItemChanged(
      Sender: TcxCustomGridTableView; APrevFocusedItem,
      AFocusedItem: TcxCustomGridTableItem);
    procedure cxGridDBBandedTableView2KeyPress(Sender: TObject; var Key: Char);
    procedure cxGridDBBandedTableView4FilterOnChanged(Sender: TObject);
    procedure cxGridDBBandedTableView4FocusedItemChanged(
      Sender: TcxCustomGridTableView; APrevFocusedItem,
      AFocusedItem: TcxCustomGridTableItem);
    procedure cxGridDBBandedTableView4KeyPress(Sender: TObject; var Key: Char);
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
    procedure dxBarButton24Click(Sender: TObject);
    procedure dxBarButton25Click(Sender: TObject);
    procedure dxBarButton26Click(Sender: TObject);
    procedure dxBarButton27Click(Sender: TObject);
    procedure dxBarButton28Click(Sender: TObject);
    procedure dxBarButton29Click(Sender: TObject);
    procedure dxBarButton30Click(Sender: TObject);
    procedure dxBarButton31Click(Sender: TObject);
    procedure dxBarButton32Click(Sender: TObject);
    procedure dxBarButton33Click(Sender: TObject);
    procedure dxBarButton34Click(Sender: TObject);
    procedure dxBarButton35Click(Sender: TObject);
    procedure dxBarButton36Click(Sender: TObject);
    procedure dxBarButton37Click(Sender: TObject);
    procedure dxBarButton1Click(Sender: TObject);
    procedure dxBarButton38Click(Sender: TObject);
    procedure cxGrid1DBBandedTableView1SelectionChanged(
      Sender: TcxCustomGridTableView);
    procedure dxBarButton40Click(Sender: TObject);
    procedure cxPageControl2Change(Sender: TObject);
  private
    Fusr_pwd         : PUser_pwd;
    Fusers_group_cod : string;
    Fdate1, Fdate2   : TDateTime;

    procedure ChangeSQL();
    procedure SetKKRId(global_id: integer);
  public
    constructor Create(AOwner: TApplication; users_group_cod: string; usr_pwd: PUser_pwd);

  published
    property _SetKKRId: integer write SetKKRId;
  end;

var
  fmEtranKKR: TfmEtranKKR;

function CreateWndEtranKKR(AppHand: THandle; users_group_cod: string; usr_pwd: PUser_pwd): variant; export;
function CreateWndEtranKKRFind(AppHand: THandle; global_id: integer; users_group_cod: string; usr_pwd: PUser_pwd): variant; export;

implementation

uses EtrUtils;

{$R *.dfm}

function CreateWndEtranKKRFind(AppHand: THandle; global_id: integer; users_group_cod: string; usr_pwd: PUser_pwd): variant; export;
var Q: TADOQuery;
    d1,d2: TDateTime;
begin
    Application.Handle := AppHand;
  try
    fmEtranKKR := TfmEtranKKR.Create(Application, users_group_cod, usr_pwd);
    fmEtranKKR._SetKKRId := global_id;
    //-- изменить по мере необходимости возвращаемых параметров
    if  fmEtranKKR.ShowModal = mrOk then result := VarArrayOf([-9, '']);
  finally
    fmEtranKKR.Free;
  end;
end;


function CreateWndEtranKKR(AppHand: THandle; users_group_cod: string; usr_pwd: PUser_pwd): variant; export;
begin
    Application.Handle := AppHand;
  try
    fmEtranKKR := TfmEtranKKR.Create(Application, users_group_cod, usr_pwd);
    //-- изменить по мере необходимости возвращаемых параметров
    if  fmEtranKKR.ShowModal = mrOk then result := VarArrayOf([-9, '']);
  finally
    fmEtranKKR.Free;
  end;
end;

constructor TfmEtranKKR.Create(AOwner: TApplication; users_group_cod: string; usr_pwd: PUser_pwd);
begin
  Screen.Cursor := -11;
  inherited Create(nil);

  WindowState := wsMaximized;
  Fusr_pwd := usr_pwd;
  Fusers_group_cod := users_group_cod;
  StoreRegistryGrid(rgLoad,'\Software\Lis1\EtranKKR\MainGrids', cxGrid1DBBandedTableView1);
  StoreRegistryGrid(rgLoad,'\Software\Lis1\EtranKKR\MainGrids', cxGridDBBandedTableView1);
  StoreRegistryGrid(rgLoad,'\Software\Lis1\EtranKKR\MainGrids', cxGridDBBandedTableView2);
  StoreRegistryGrid(rgLoad,'\Software\Lis1\EtranKKR\MainGrids', cxGridDBBandedTableView3);
  StoreRegistryGrid(rgLoad,'\Software\Lis1\EtranKKR\MainGrids', cxGridDBBandedTableView4);
  StoreRegistryGrid(rgLoad,'\Software\Lis1\EtranKKR\MainGrids', cxGridDBBandedTableView5);
  StoreRegistryGrid(rgLoad,'\Software\Lis1\EtranKKR\MainGrids', cxGridDBBandedTableView6);

  ADOEtran.Connected := False;
  ADOEtran.ConnectionString := GetEtranConnect(Fusers_group_cod, Fusr_pwd);
  ADOEtran.Connected := True;
       // Provider=SQLOLEDB.1;Password=etran;Persist Security Info=True;User ID=etran_sfh;Initial Catalog=lis_etran;Data Source=lis1
       //'Persist Security Info=True;Provider=SQLOLEDB.1;User ID=Etran_SFH;Password=etran;Initial Catalog=lis_etran;Data Source=172.16.200.209;'
  cxPageControl1.ActivePage := cxTabSheet3;

  Fdate2 := Date();
  Fdate1 := Fdate2 - 7;
  dxBarButton2.Caption := FormatDateTime('dd.mm.yy', Fdate1) + ' - ' + FormatDateTime('dd.mm.yy', Fdate2);
  cxGridDBBandedTableView3rowSaldo.Caption    := 'Сальдо на ' + FormatDateTime('dd.mm.yy', Fdate1);
  cxGridDBBandedTableView3rowSaldotek.Caption := 'Сальдо на ' + FormatDateTime('dd.mm.yy', Fdate2);

  ChangeSQL;

  Screen.Cursor := 0;
end;

procedure TfmEtranKKR.cxGrid1DBBandedTableView1CustomDrawCell(Sender: TcxCustomGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
  if (AViewInfo.GridRecord.Values[cxGridDBBandedTableView3rowDocType.Index]<>NULL) then
    if (AViewInfo.GridRecord.Values[cxGridDBBandedTableView3rowDocType.Index]=2) then
      ACanvas.Font.Style := [fsBold];

	if AViewInfo.GridRecord.Selected or AViewInfo.GridRecord.Focused then begin
		ACanvas.Brush.Color := clNavy;
		ACanvas.Font.Color := clWhite;
		if AViewInfo.Focused then ACanvas.Brush.Color := clBlue;
	end;
end;

procedure TfmEtranKKR.cxGrid1DBBandedTableView1CustomDrawColumnHeader(Sender: TcxGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxGridColumnHeaderViewInfo; var ADone: Boolean);
begin
	if AViewInfo.Column.Focused then begin
		ACanvas.Brush.Color := clNavy;
		ACanvas.Font.Color := clWhite;
	end;
end;

procedure TfmEtranKKR.cxGrid1DBBandedTableView1FilterOnChanged(Sender: TObject);
begin
	DrawcxGridColumnOnFiltered(Sender);
end;

procedure TfmEtranKKR.cxGrid1DBBandedTableView1FocusedItemChanged(Sender: TcxCustomGridTableView; APrevFocusedItem, AFocusedItem: TcxCustomGridTableItem);
begin
	cxGrid1DBBandedTableView1.Painter.Invalidate;
end;

procedure TfmEtranKKR.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TfmEtranKKR.FormDestroy(Sender: TObject);
begin
  StoreRegistryGrid(rgSave,'\Software\Lis1\EtranKKR\MainGrids', cxGrid1DBBandedTableView1);
  StoreRegistryGrid(rgSave,'\Software\Lis1\EtranKKR\MainGrids', cxGridDBBandedTableView1);
  StoreRegistryGrid(rgSave,'\Software\Lis1\EtranKKR\MainGrids', cxGridDBBandedTableView2);
  StoreRegistryGrid(rgSave,'\Software\Lis1\EtranKKR\MainGrids', cxGridDBBandedTableView3);
  StoreRegistryGrid(rgSave,'\Software\Lis1\EtranKKR\MainGrids', cxGridDBBandedTableView4);
  StoreRegistryGrid(rgSave,'\Software\Lis1\EtranKKR\MainGrids', cxGridDBBandedTableView5);
  StoreRegistryGrid(rgSave,'\Software\Lis1\EtranKKR\MainGrids', cxGridDBBandedTableView6);
end;

procedure TfmEtranKKR.cxGrid1DBBandedTableView1KeyPress(Sender: TObject; var Key: Char);
begin
	FilterColumnGridOnKeyPress(cxGrid1DBBandedTableView1, Key);
end;

procedure TfmEtranKKR.cxGrid1DBBandedTableView1SelectionChanged(
  Sender: TcxCustomGridTableView);
begin
  Screen.Cursor := crHourGlass;

  cxLabel2.Caption := 'Списание за весь период (Карточка контроля расчетов)';
  cxLabel3.Caption := 'Информация по за весь период (Оперативный факт).';

  Query_Invoice.Close;
  Query_Fact.Close;
  if (cxGrid1DBBandedTableView1.GroupedColumnCount = 0) then begin

    cxLabel2.Caption := 'Списание за весь период ' + cxGrid1DBBandedTableView1rowDocType.DataBinding.Field.AsString +
                        ' №' +  cxGrid1DBBandedTableView1rowDocNum.DataBinding.Field.AsString +
                        ' (Карточка контроля расчетов).';

    cxLabel3.Caption := 'Информация по за весь период ' + cxGrid1DBBandedTableView1rowDocType.DataBinding.Field.AsString +
                        ' №' +  cxGrid1DBBandedTableView1rowDocNum.DataBinding.Field.AsString +
                        ' (Оперативный факт).';

    Query_Invoice.Parameters.ParamByName('rowDocNum').Value := cxGrid1DBBandedTableView1rowDocNum.DataBinding.Field.Value;
    Query_Invoice.Open;

    Query_Fact.Parameters.ParamByName('rowDocNum').Value := cxGrid1DBBandedTableView1rowDocNum.DataBinding.Field.Value;
    Query_Fact.Open;
  end;

  Screen.Cursor := crDefault;
end;

procedure TfmEtranKKR.cxGridDBBandedTableView2CustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
  if (AViewInfo.GridRecord.Values[cxGrid1DBBandedTableView1global_color.Index]<>NULL) then ACanvas.Brush.Color := AViewInfo.GridRecord.Values[cxGrid1DBBandedTableView1global_color.Index];

  if (cxGrid1DBBandedTableView1doc_date_last_oper.Index = AViewInfo.Item.ID) then begin
    ACanvas.Brush.Color := clInfoBk;
    ACanvas.Font.Color  := clInfoText;
  end;

  if (cxGrid1DBBandedTableView1etran_folder.Index = AViewInfo.Item.ID) then begin
    if AViewInfo.GridRecord.Values[cxGrid1DBBandedTableView1etran_folder.Index] <> 'Заготовка'       then ACanvas.Font.Style := [fsBold];
    if AViewInfo.GridRecord.Values[cxGrid1DBBandedTableView1etran_folder.Index] = 'Не действительны' then ACanvas.Font.Color := clRed;
  end;

  if AViewInfo.GridRecord.Values[cxGrid1DBBandedTableView1etran_folder.Index] = 'Заготовка' then ACanvas.Font.Color := clGray;

  if (AViewInfo.GridRecord.Values[cxGrid1DBBandedTableView1from_to_name.Index] = 'Приб') then ACanvas.Font.Color := clRed;

  if AViewInfo.GridRecord.Selected then begin
    ACanvas.Brush.Color := clNavy;
    ACanvas.Font.Color := clWhite;
    if AViewInfo.Focused then ACanvas.Brush.Color := clBlue;
  end;
end;

procedure TfmEtranKKR.cxGridDBBandedTableView2FilterOnChanged(Sender: TObject);
begin
	DrawcxGridColumnOnFiltered(Sender);
end;

procedure TfmEtranKKR.cxGridDBBandedTableView2FocusedItemChanged(
  Sender: TcxCustomGridTableView; APrevFocusedItem,
  AFocusedItem: TcxCustomGridTableItem);
begin
	cxGridDBBandedTableView2.Painter.Invalidate;
end;

procedure TfmEtranKKR.cxGridDBBandedTableView2KeyPress(Sender: TObject;
  var Key: Char);
begin
	FilterColumnGridOnKeyPress(cxGridDBBandedTableView2, Key);
end;

procedure TfmEtranKKR.cxGridDBBandedTableView4FilterOnChanged(Sender: TObject);
begin
	DrawcxGridColumnOnFiltered(Sender);
end;

procedure TfmEtranKKR.cxGridDBBandedTableView4FocusedItemChanged(
  Sender: TcxCustomGridTableView; APrevFocusedItem,
  AFocusedItem: TcxCustomGridTableItem);
begin
	cxGridDBBandedTableView4.Painter.Invalidate;
end;

procedure TfmEtranKKR.cxGridDBBandedTableView4KeyPress(Sender: TObject;
  var Key: Char);
begin
	FilterColumnGridOnKeyPress(cxGridDBBandedTableView4, Key);
end;

procedure TfmEtranKKR.cxGridDBBandedTableView5FilterOnChanged(Sender: TObject);
begin
	DrawcxGridColumnOnFiltered(Sender);
end;

procedure TfmEtranKKR.cxGridDBBandedTableView5FocusedItemChanged(
  Sender: TcxCustomGridTableView; APrevFocusedItem,
  AFocusedItem: TcxCustomGridTableItem);
begin
	cxGridDBBandedTableView5.Painter.Invalidate;
end;

procedure TfmEtranKKR.cxGridDBBandedTableView5KeyPress(Sender: TObject;
  var Key: Char);
begin
	FilterColumnGridOnKeyPress(cxGridDBBandedTableView5, Key);
end;

procedure TfmEtranKKR.cxGridDBBandedTableView6FilterOnChanged(Sender: TObject);
begin
	DrawcxGridColumnOnFiltered(Sender);
end;

procedure TfmEtranKKR.cxGridDBBandedTableView6FocusedItemChanged(
  Sender: TcxCustomGridTableView; APrevFocusedItem,
  AFocusedItem: TcxCustomGridTableItem);
begin
	cxGridDBBandedTableView6.Painter.Invalidate;
end;

procedure TfmEtranKKR.cxGridDBBandedTableView6KeyPress(Sender: TObject;
  var Key: Char);
begin
	FilterColumnGridOnKeyPress(cxGridDBBandedTableView6, Key);
end;

procedure TfmEtranKKR.cxPageControl2Change(Sender: TObject);
begin
  Screen.Cursor := crHourglass;

  ChangeSQL();

  Screen.Cursor := crDefault;
end;

procedure TfmEtranKKR.dxBarButton10Click(Sender: TObject);
begin
	cxGridDBBandedTableView4.OptionsView.GroupByBox := not cxGridDBBandedTableView4.OptionsView.GroupByBox;
end;

procedure TfmEtranKKR.dxBarButton11Click(Sender: TObject);
begin
	FiltercxGrid4ListID(cxGridDBBandedTableView4);
end;

procedure TfmEtranKKR.dxBarButton12Click(Sender: TObject);
begin
	cxGridDBBandedTableView4.Filtering.ColumnFilteredItemsList := not dxBarButton12.Down;
end;

procedure TfmEtranKKR.dxBarButton13Click(Sender: TObject);
begin
	PrintcxGrid(cxGridDBBandedTableView2);
end;

procedure TfmEtranKKR.dxBarButton14Click(Sender: TObject);
begin
	SetdxDBGridColumns(cxGridDBBandedTableView2);
end;

procedure TfmEtranKKR.dxBarButton15Click(Sender: TObject);
begin
	cxGridDBBandedTableView2.OptionsView.GroupByBox := not cxGridDBBandedTableView2.OptionsView.GroupByBox;
end;

procedure TfmEtranKKR.dxBarButton16Click(Sender: TObject);
begin
	FiltercxGrid4ListID(cxGridDBBandedTableView2);
end;

procedure TfmEtranKKR.dxBarButton17Click(Sender: TObject);
begin
	cxGridDBBandedTableView2.Filtering.ColumnFilteredItemsList := not dxBarButton17.Down;
end;

procedure TfmEtranKKR.dxBarButton18Click(Sender: TObject);
begin
	PrintcxGrid(cxGridDBBandedTableView1);
end;

procedure TfmEtranKKR.dxBarButton19Click(Sender: TObject);
begin
	SetdxDBGridColumns(cxGridDBBandedTableView1);
end;

procedure TfmEtranKKR.dxBarButton1Click(Sender: TObject);
begin
  ChangeSQL;
end;

procedure TfmEtranKKR.dxBarButton20Click(Sender: TObject);
begin
	cxGridDBBandedTableView1.OptionsView.GroupByBox := not cxGridDBBandedTableView1.OptionsView.GroupByBox;
end;

procedure TfmEtranKKR.dxBarButton21Click(Sender: TObject);
begin
	FiltercxGrid4ListID(cxGridDBBandedTableView1);
end;

procedure TfmEtranKKR.dxBarButton22Click(Sender: TObject);
begin
	cxGridDBBandedTableView1.Filtering.ColumnFilteredItemsList := not dxBarButton22.Down;
end;

procedure TfmEtranKKR.dxBarButton23Click(Sender: TObject);
begin
	PrintcxGrid(cxGridDBBandedTableView3);
end;

procedure TfmEtranKKR.dxBarButton24Click(Sender: TObject);
begin
	SetdxDBGridColumns(cxGridDBBandedTableView3);
end;

procedure TfmEtranKKR.dxBarButton25Click(Sender: TObject);
begin
	cxGridDBBandedTableView3.OptionsView.GroupByBox := not cxGridDBBandedTableView3.OptionsView.GroupByBox;
end;

procedure TfmEtranKKR.dxBarButton26Click(Sender: TObject);
begin
	FiltercxGrid4ListID(cxGridDBBandedTableView3);
end;

procedure TfmEtranKKR.dxBarButton27Click(Sender: TObject);
begin
	cxGridDBBandedTableView3.Filtering.ColumnFilteredItemsList := not dxBarButton27.Down;
end;

procedure TfmEtranKKR.dxBarButton28Click(Sender: TObject);
begin
	PrintcxGrid(cxGridDBBandedTableView5);
end;

procedure TfmEtranKKR.dxBarButton29Click(Sender: TObject);
begin
	SetdxDBGridColumns(cxGridDBBandedTableView5);
end;

procedure TfmEtranKKR.SetKKRId(global_id:integer);
var Q: TADOQuery;
begin
  Q := TADOQuery.Create(nil);
  Q.Connection := fmEtranKKR.ADOEtran;
  Q.SQL.Add(' SELECT * FROM kkr_debet WHERE kkr_debet_id = '+IntToStr(global_id));
  Q.Open;

  Screen.Cursor := crHourglass;
  Fdate1 := Q.FieldByName('rowRepDate').AsDateTime;
  Fdate2 := Q.FieldByName('rowRepDate').AsDateTime;
  dxBarButton2.Caption := FormatDateTime('dd.mm.yy', Fdate1) + ' - ' + FormatDateTime('dd.mm.yy', Fdate2);

  cxGridDBBandedTableView3rowSaldo.Caption    := 'Сальдо на ' + FormatDateTime('dd.mm.yy', Fdate1);
  cxGridDBBandedTableView3rowSaldotek.Caption := 'Сальдо на ' + FormatDateTime('dd.mm.yy', Fdate2);

  ChangeSQL;
  Screen.Cursor := crDefault;

  cxPageControl1.ActivePage := cxTabSheet1;
  RefreshQueryGrid(cxGrid1DBBandedTableView1, 'kkr_debet_id', global_id);


  Q.Free;
end;

procedure TfmEtranKKR.dxBarButton2Click(Sender: TObject);
begin
  fmPeriod := TfmPeriod.Create(Application, Fdate1, Fdate2, 1);
  if fmPeriod.ShowModal=mrOK then begin
    Screen.Cursor := crHourglass;
    Fdate1 := fmPeriod._GetDateBegin;
    Fdate2 := fmPeriod._GetDateEnd;
    dxBarButton2.Caption := FormatDateTime('dd.mm.yy', Fdate1) + ' - ' + FormatDateTime('dd.mm.yy', Fdate2);

    cxGridDBBandedTableView3rowSaldo.Caption    := 'Сальдо на ' + FormatDateTime('dd.mm.yy', Fdate1);
    cxGridDBBandedTableView3rowSaldotek.Caption := 'Сальдо на ' + FormatDateTime('dd.mm.yy', Fdate2);

    ChangeSQL;
    Screen.Cursor := crDefault;
  end;
end;

procedure TfmEtranKKR.dxBarButton30Click(Sender: TObject);
begin
	cxGridDBBandedTableView5.OptionsView.GroupByBox := not cxGridDBBandedTableView5.OptionsView.GroupByBox;
end;

procedure TfmEtranKKR.dxBarButton31Click(Sender: TObject);
begin
	FiltercxGrid4ListID(cxGridDBBandedTableView5);
end;

procedure TfmEtranKKR.dxBarButton32Click(Sender: TObject);
begin
	cxGridDBBandedTableView5.Filtering.ColumnFilteredItemsList := not dxBarButton32.Down;
end;

procedure TfmEtranKKR.dxBarButton33Click(Sender: TObject);
begin
	PrintcxGrid(cxGridDBBandedTableView6);
end;

procedure TfmEtranKKR.dxBarButton34Click(Sender: TObject);
begin
	SetdxDBGridColumns(cxGridDBBandedTableView6);
end;

procedure TfmEtranKKR.dxBarButton35Click(Sender: TObject);
begin
	cxGridDBBandedTableView6.OptionsView.GroupByBox := not cxGridDBBandedTableView6.OptionsView.GroupByBox;
end;

procedure TfmEtranKKR.dxBarButton36Click(Sender: TObject);
begin
	FiltercxGrid4ListID(cxGridDBBandedTableView6);
end;

procedure TfmEtranKKR.dxBarButton37Click(Sender: TObject);
begin
	cxGridDBBandedTableView6.Filtering.ColumnFilteredItemsList := not dxBarButton37.Down;
end;

procedure TfmEtranKKR.dxBarButton38Click(Sender: TObject);
type
  TFunc = function(AppHand: THandle; doc_id:integer; num_vagon: integer; users_group_cod: string; usr_pwd:PUser_pwd) : variant;
var
  FEtran   : TFunc;
  handle   : THandle;
  v        : variant;

  Q : TADOQuery;
  etran_doc_type_id : integer;

begin

  Q := TADOQuery.Create(nil);
  Q.Connection := ADOEtran;
  Q.SQL.Add('SELECT * FROM etran_xml_reply WHERE doc_id = ' + IntToStr(cxGrid1DBBandedTableView1rowDocID.DataBinding.Field.AsInteger) + ' and doc_type_id not in (-1,-2)');
  Q.Open;
  etran_doc_type_id := Q.FieldByName('doc_type_id').AsInteger;
  Q.Free;

  handle := LoadLibrary('etran.dll');
  case etran_doc_type_id of
    1:
      begin
        @FEtran := GetProcAddress(handle, 'CreateWndEtranFindClaim');
        v := FEtran(Application.Handle, cxGrid1DBBandedTableView1rowDocID.DataBinding.Field.AsInteger, -9, Fusers_group_cod, Fusr_pwd);
      end;
    2:
      begin
        @FEtran := GetProcAddress(handle, 'CreateWndEtranFindInvoice');
        v := FEtran(Application.Handle, cxGrid1DBBandedTableView1rowDocID.DataBinding.Field.AsInteger, 0, Fusers_group_cod, Fusr_pwd);
      end;

    23:
      begin
        @FEtran := GetProcAddress(handle, 'CreateWndEtranVPUFind');
        v := FEtran(Application.Handle, cxGrid1DBBandedTableView1rowDocID.DataBinding.Field.AsInteger, 0, Fusers_group_cod, Fusr_pwd);
      end;

    27:
      begin
        @FEtran := GetProcAddress(handle, 'CreateWndEtranCumulativeFind');
        v := FEtran(Application.Handle, cxGrid1DBBandedTableView1rowDocID.DataBinding.Field.AsInteger, 0, Fusers_group_cod, Fusr_pwd);
      end;

    40:
      begin
        @FEtran := GetProcAddress(handle, 'CreateWndEtranRegContFind');
        v := FEtran(Application.Handle, cxGrid1DBBandedTableView1rowDocID.DataBinding.Field.AsInteger, 0, Fusers_group_cod, Fusr_pwd);
      end;
  end;
  FreeLibrary(handle);
end;

procedure TfmEtranKKR.dxBarButton40Click(Sender: TObject);
begin
  Screen.Cursor := crHourglass;
  if TControl(Sender).Tag = 1 then begin
    Fdate1 := IncMonth(Fdate1, -1);
  end;

  if TControl(Sender).Tag = 2 then begin
    Fdate1 := IncMonth(Fdate1, 1);
  end;

  Fdate2 := IncMonth(Fdate1) - 1;
  dxBarButton2.Caption := FormatDateTime('dd.mm.yy', Fdate1) + ' - ' + FormatDateTime('dd.mm.yy', Fdate2);

  cxGridDBBandedTableView3rowSaldo.Caption    := 'Сальдо на ' + FormatDateTime('dd.mm.yy', Fdate1);
  cxGridDBBandedTableView3rowSaldotek.Caption := 'Сальдо на ' + FormatDateTime('dd.mm.yy', Fdate2);

  ChangeSQL;

  Screen.Cursor := crDefault;
end;

procedure TfmEtranKKR.dxBarButton3Click(Sender: TObject);
begin
	PrintcxGrid(cxGrid1DBBandedTableView1);
end;

procedure TfmEtranKKR.dxBarButton4Click(Sender: TObject);
begin
	SetdxDBGridColumns(cxGrid1DBBandedTableView1);
end;

procedure TfmEtranKKR.dxBarButton5Click(Sender: TObject);
begin
	cxGrid1DBBandedTableView1.OptionsView.GroupByBox := not cxGrid1DBBandedTableView1.OptionsView.GroupByBox;
end;

procedure TfmEtranKKR.dxBarButton6Click(Sender: TObject);
begin
	FiltercxGrid4ListID(cxGrid1DBBandedTableView1);
end;

procedure TfmEtranKKR.dxBarButton7Click(Sender: TObject);
begin
	cxGrid1DBBandedTableView1.Filtering.ColumnFilteredItemsList := not dxBarButton7.Down;
end;

procedure TfmEtranKKR.dxBarButton8Click(Sender: TObject);
begin
	PrintcxGrid(cxGridDBBandedTableView4);
end;

procedure TfmEtranKKR.dxBarButton9Click(Sender: TObject);
begin
	SetdxDBGridColumns(cxGridDBBandedTableView4);
end;

procedure TfmEtranKKR.ChangeSQL();
begin
  Screen.Cursor := crHourGlass;

  sp_KKR_debet_get.Close;
  sp_KKR_debet_get.Parameters.Refresh;
  sp_KKR_debet_get.Parameters.ParamByName('@date_begin').Value := Fdate1;
  sp_KKR_debet_get.Parameters.ParamByName('@date_end'  ).Value := Fdate2;
  sp_KKR_debet_get.Open;


  sp_KKR_credit_get.Close;
  sp_KKR_credit_get.Parameters.Refresh;
  sp_KKR_credit_get.Parameters.ParamByName('@date_begin').Value := Fdate1;
  sp_KKR_credit_get.Parameters.ParamByName('@date_end'  ).Value := Fdate2;
  sp_KKR_credit_get.Open;


  sp_KKR_saldo_get.Close;
  sp_KKR_saldo_get.Parameters.Refresh;
  sp_KKR_saldo_get.Parameters.ParamByName('@date_begin').Value := Fdate1;
  sp_KKR_saldo_get.Parameters.ParamByName('@date_end'  ).Value := Fdate2;
  sp_KKR_saldo_get.Open;

  sp_KKR_transfer_get.Close;
  sp_KKR_transfer_get.Parameters.Refresh;
  sp_KKR_transfer_get.Parameters.ParamByName('@date_begin').Value := Fdate1;
  sp_KKR_transfer_get.Parameters.ParamByName('@date_end'  ).Value := Fdate2;
  sp_KKR_transfer_get.Open;

  sp_KKR_agent_sum_get.Close;
  sp_KKR_agent_sum_get.Parameters.Refresh;
  sp_KKR_agent_sum_get.Parameters.ParamByName('@date_begin').Value := Fdate1;
  sp_KKR_agent_sum_get.Parameters.ParamByName('@date_end'  ).Value := Fdate2;
  sp_KKR_agent_sum_get.Open;

  Screen.Cursor := crDefault;
end;

end.
