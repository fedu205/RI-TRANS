unit EDO_VRK;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, Period,
  ExtCtrls, cxPC, cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage,
  cxEdit, DB, cxDBData, cxGridCustomView, cxGridCustomTableView, Default,
  cxGridTableView, cxGridBandedTableView, cxGridDBBandedTableView, cxClasses,
  cxGridLevel, cxGrid, Raznoe, dxBar, cxPropertiesStore, ImgList, ADODB,
  cxCurrencyEdit, dxSkinsCore, dxSkinsDefaultPainters, dxSkinscxPCPainter,
  dxBarBuiltInMenu, cxNavigator, dxSkinsdxBarPainter, dxSkinBlack, dxSkinBlue,
  dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
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
  dxSkinTheAsphaltWorld, dxSkinValentine, dxSkinVisualStudio2013Blue,
  dxSkinVisualStudio2013Dark, dxSkinVisualStudio2013Light, dxSkinVS2010,
  dxSkinWhiteprint, dxSkinXmas2008Blue, System.ImageList, cxImageList,
  cxDataControllerConditionalFormattingRulesManagerDialog, dxSkinTheBezier,
  dxDateRanges, dxSkinBasic, dxSkinOffice2019Black, dxSkinOffice2019Colorful,
  dxSkinOffice2019DarkGray, dxSkinOffice2019White, dxScrollbarAnnotations;

type
  TfmEDO_VRK = class(TForm)
    cxPageControl1: TcxPageControl;
    cxTabSheet1: TcxTabSheet;
    cxTabSheet3: TcxTabSheet;
    cxTabSheet4: TcxTabSheet;
    cxTabSheet5: TcxTabSheet;
    cxTabSheet6: TcxTabSheet;
    cxTabSheet7: TcxTabSheet;
    Splitter1: TSplitter;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    cxGrid1DBBandedTableView1: TcxGridDBBandedTableView;
    cxGrid2: TcxGrid;
    cxGrid2DBBandedTableView1: TcxGridDBBandedTableView;
    cxGrid2Level1: TcxGridLevel;
    cxGrid3DBBandedTableView1cod: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1num: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1type_vagon: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1create_year: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1date_system: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1for_repair: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1cod_depo: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1act_num: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1sf_num: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1sf_date: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1plan_date_begin: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1plan_date_end: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1fact_date_end: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1check: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1EDS: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1sum_not_nds: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1sum_cleaning: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1type_nds: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1nds: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1discount: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1type_repair: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1type_delete: TcxGridDBBandedColumn;
    cxPropertiesStore1: TcxPropertiesStore;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1: TcxStyle;
    cxStyle2: TcxStyle;
    cxImageList1: TcxImageList;
    dxBarManager1: TdxBarManager;
    dxBarManager1Bar1: TdxBar;
    dxBarButton1: TdxBarButton;
    dxBarSubItem1: TdxBarSubItem;
    dxBarButton2: TdxBarButton;
    dxBarButton3: TdxBarButton;
    DS_VRK: TDataSource;
    Query_VRK: TADOQuery;
    EDO: TADOConnection;
    cxGrid3: TcxGrid;
    cxGrid3DBBandedTableView1: TcxGridDBBandedTableView;
    cxGrid3Level1: TcxGridLevel;
    cxGrid4: TcxGrid;
    cxGrid4DBBandedTableView1: TcxGridDBBandedTableView;
    cxGrid4Level1: TcxGridLevel;
    cxGrid5: TcxGrid;
    cxGrid5DBBandedTableView1: TcxGridDBBandedTableView;
    cxGrid5Level1: TcxGridLevel;
    cxGrid8: TcxGrid;
    cxGrid8DBBandedTableView1: TcxGridDBBandedTableView;
    cxGrid8Level1: TcxGridLevel;
    cxGrid9: TcxGrid;
    cxGrid9DBBandedTableView1: TcxGridDBBandedTableView;
    cxGrid9Level1: TcxGridLevel;
    cxGrid3DBBandedTableView1mx1_num: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1mx1_name: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1mx1_weigth: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1mx1_type: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1mx1_detail_works: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1mx1_detail_num: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1mx1_detail_year: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1mx1_work_cod: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1mx1_type_metal: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1mx1_detail_group: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1mx1_cod_type: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1mx1_count: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1mx1_price: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1mx3_num: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1mx3_name: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1mx3_weigth: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1mx3_type: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1mx3_detail_works: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1mx3_detail_num: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1mx3_detail_year: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1mx3_work_cod: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1mx3_detail_group: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1mx3_cod_type: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1mx3_count: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1mx3_price: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1mx3_out_vagon: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1mx3_remont_end: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1mx3_in_vagon: TcxGridDBBandedColumn;
    sp_EDO_vrk_get: TADOStoredProc;
    DS_EDO_vrk_get: TDataSource;
    cxGrid1DBBandedTableView1EDO_docs_id: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1act_date: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1act_work_cod: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1detail_cod: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1remove_works: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1remove_num: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1remove_year: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1set_works: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1set_num: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1set_year: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1comment: TcxGridDBBandedColumn;
    sp_EDO_vrk_get_2: TADOStoredProc;
    DS_EDO_vrk_get_2: TDataSource;
    Panel1: TPanel;
    Splitter2: TSplitter;
    cxGrid10: TcxGrid;
    cxGrid10DBBandedTableView1: TcxGridDBBandedTableView;
    cxGrid10Level1: TcxGridLevel;
    cxGrid3DBBandedTableView1rdv_work_cod: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1rdv_detail_group: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1rdv_cdo_type: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1rdv_datail_works: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1rdv_datail_num: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1rdv_datail_year: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1rdv_count: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1rdv_name: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1rdv_sum_not_nds: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1rdv_d_cod: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1rdv_d_sum_not_nds: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1rdv_d_count: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1rdv_d_owner: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1vu36_num: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1vu36_cod1: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1vu36_cod2: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1vu36_cod3: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1vu36_cod4: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1vu36_cod5: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1vu36_cod6: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1contract_date: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1contract_cod: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1contract_begin: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1contract_num: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1contract_end: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1contract_self_cod: TcxGridDBBandedColumn;
    dxBarPopupMenu1: TdxBarPopupMenu;
    dxBarButton4: TdxBarButton;
    dxBarSubItem2: TdxBarSubItem;
    dxBarButton5: TdxBarButton;
    dxBarButton6: TdxBarButton;
    dxBarButton7: TdxBarButton;
    dxBarButton8: TdxBarButton;
    dxBarPopupMenu2: TdxBarPopupMenu;
    dxBarButton9: TdxBarButton;
    dxBarSubItem3: TdxBarSubItem;
    dxBarButton10: TdxBarButton;
    dxBarButton11: TdxBarButton;
    dxBarButton12: TdxBarButton;
    dxBarButton13: TdxBarButton;
    dxBarPopupMenu3: TdxBarPopupMenu;
    dxBarButton14: TdxBarButton;
    dxBarSubItem4: TdxBarSubItem;
    dxBarButton15: TdxBarButton;
    dxBarButton16: TdxBarButton;
    dxBarButton17: TdxBarButton;
    dxBarButton18: TdxBarButton;
    dxBarPopupMenu4: TdxBarPopupMenu;
    dxBarButton19: TdxBarButton;
    dxBarSubItem5: TdxBarSubItem;
    dxBarButton20: TdxBarButton;
    dxBarButton21: TdxBarButton;
    dxBarButton22: TdxBarButton;
    dxBarButton23: TdxBarButton;
    dxBarPopupMenu5: TdxBarPopupMenu;
    dxBarButton24: TdxBarButton;
    dxBarSubItem6: TdxBarSubItem;
    dxBarButton25: TdxBarButton;
    dxBarButton26: TdxBarButton;
    dxBarButton27: TdxBarButton;
    dxBarButton28: TdxBarButton;
    dxBarPopupMenu6: TdxBarPopupMenu;
    dxBarButton29: TdxBarButton;
    dxBarSubItem7: TdxBarSubItem;
    dxBarButton30: TdxBarButton;
    dxBarButton31: TdxBarButton;
    dxBarButton32: TdxBarButton;
    dxBarButton33: TdxBarButton;
    dxBarPopupMenu7: TdxBarPopupMenu;
    dxBarButton34: TdxBarButton;
    dxBarSubItem8: TdxBarSubItem;
    dxBarButton35: TdxBarButton;
    dxBarButton36: TdxBarButton;
    dxBarButton37: TdxBarButton;
    dxBarButton38: TdxBarButton;
    dxBarPopupMenu8: TdxBarPopupMenu;
    dxBarButton39: TdxBarButton;
    dxBarSubItem9: TdxBarSubItem;
    dxBarButton40: TdxBarButton;
    dxBarButton41: TdxBarButton;
    dxBarButton42: TdxBarButton;
    dxBarButton43: TdxBarButton;
    cxStyle3: TcxStyle;
    cxGrid1DBBandedTableView1depo_name: TcxGridDBBandedColumn;
    dxBarButton44: TdxBarButton;
    cxGrid1DBBandedTableView1fact_repair_id: TcxGridDBBandedColumn;
    dxBarButton45: TdxBarButton;
    dxBarButton46: TdxBarButton;
    dxBarLargeButton1: TdxBarLargeButton;
    dxBarButton47: TdxBarButton;
    cxGrid1DBBandedTableView1contract_id: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1contract_cod: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1firm_customer_name_short: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1type_park_name: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1cost_all: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1klemoDepo: TcxGridDBBandedColumn;
    dxBarButton48: TdxBarButton;
    cxGrid1DBBandedTableView1edo_depo_name: TcxGridDBBandedColumn;
    Query_VRK_SYS1: TADOQuery;
    Query_VRK_SYS2: TADOQuery;
    cxTabSheet2: TcxTabSheet;
    cxGrid6: TcxGrid;
    cxGrid6DBBandedTableView1: TcxGridDBBandedTableView;
    cxGridLevel1: TcxGridLevel;
    cxGrid6DBBandedTableView1num_vagon: TcxGridDBBandedColumn;
    cxGrid6DBBandedTableView1primary_docs: TcxGridDBBandedColumn;
    cxGrid6DBBandedTableView1service_name: TcxGridDBBandedColumn;
    cxGrid6DBBandedTableView1detail_name: TcxGridDBBandedColumn;
    cxGrid6DBBandedTableView1quantity: TcxGridDBBandedColumn;
    cxGrid6DBBandedTableView1sum: TcxGridDBBandedColumn;
    cxGrid6DBBandedTableView1sum_nds: TcxGridDBBandedColumn;
    cxGrid6DBBandedTableView1sum_total: TcxGridDBBandedColumn;
    cxGrid6DBBandedTableView1detail_num: TcxGridDBBandedColumn;
    cxGrid6DBBandedTableView1Column1: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1date_check_self: TcxGridDBBandedColumn;
    cxStyle4: TcxStyle;
    procedure cxGrid1DBBandedTableView1FilterOnChanged(Sender: TObject);
    procedure cxGrid1DBBandedTableView1CustomDrawCell(Sender: TcxCustomGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
    procedure cxGrid1DBBandedTableView1CustomDrawColumnHeader(Sender: TcxGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxGridColumnHeaderViewInfo; var ADone: Boolean);
    procedure cxGrid1DBBandedTableView1FocusedItemChanged(Sender: TcxCustomGridTableView; APrevFocusedItem, AFocusedItem: TcxCustomGridTableItem);
    procedure cxGrid1DBBandedTableView1KeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure dxBarButton2Click(Sender: TObject);
    procedure dxBarButton3Click(Sender: TObject);
    procedure cxGridDBBandedTableView3FilterOnChanged(Sender: TObject);
    procedure cxGridDBBandedTableView4FilterOnChanged(Sender: TObject);
    procedure cxGrid1DBBandedTableView1FocusedRecordChanged(Sender: TcxCustomGridTableView; APrevFocusedRecord, AFocusedRecord: TcxCustomGridRecord;   ANewItemRecordFocusingChanged: Boolean);
    procedure cxGridDBBandedTableView2FilterOnChanged(Sender: TObject);
    procedure cxGridDBBandedTableView9FilterOnChanged(Sender: TObject);
    procedure cxGridDBBandedTableView7FilterOnChanged(Sender: TObject);
    procedure cxGridDBBandedTableView8FilterOnChanged(Sender: TObject);
    procedure cxGridDBBandedTableView1FilterOnChanged(Sender: TObject);
    procedure cxPageControl1Change(Sender: TObject);
    procedure dxBarButton21Click(Sender: TObject);
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
    procedure dxBarButton38Click(Sender: TObject);
    procedure dxBarButton39Click(Sender: TObject);
    procedure dxBarButton40Click(Sender: TObject);
    procedure dxBarButton41Click(Sender: TObject);
    procedure dxBarButton42Click(Sender: TObject);
    procedure dxBarButton43Click(Sender: TObject);
    procedure dxBarButton44Click(Sender: TObject);
    procedure dxBarButton45Click(Sender: TObject);
    procedure dxBarButton1Click(Sender: TObject);
    procedure dxBarButton47Click(Sender: TObject);
    procedure dxBarButton48Click(Sender: TObject);
  private
    Fusr_pwd         : PUser_pwd;
    Fdate1, Fdate2   : TDateTime;
  public
    constructor Create(AOwner: TApplication; type_vrk: integer; usr_pwd: PUser_pwd; EDO_docs_id: integer);
  end;

var
  fmEDO_VRK: TfmEDO_VRK;

function CreateWndEDOVRK(AppHand: THandle; type_vrk: integer; usr_pwd: PUser_pwd; EDO_docs_id: integer): variant; export;

implementation
  uses ShellApi, Xml.XMLDoc;
{$R *.dfm}

function CreateWndEDOVRK(AppHand: THandle; type_vrk: integer; usr_pwd: PUser_pwd; EDO_docs_id: integer): variant;
begin
  Application.Handle := AppHand;
  try
    fmEDO_VRK := TfmEDO_VRK.Create(Application, type_vrk, usr_pwd, EDO_docs_id);
    //-- изменить по мере необходимости возвращаемых параметров
    if  fmEDO_VRK.ShowModal = mrOk then result := VarArrayOf([-9, '']);
  finally
    fmEDO_VRK.Free;
  end;
end;

constructor TfmEDO_VRK.Create(AOwner: TApplication; type_vrk: integer; usr_pwd: PUser_pwd; EDO_docs_id: integer);
begin
  Screen.Cursor := -11;
  inherited Create(nil);

  WindowState := wsMaximized;
  Fusr_pwd := usr_pwd;
  StoreRegistryGrid(rgLoad,'\Software\Lis1\TfmEDO_VRK_Grids\MainGrids', cxGrid1DBBandedTableView1);
  StoreRegistryGrid(rgLoad,'\Software\Lis1\TfmEDO_VRK_Grids\MainGrids', cxGrid2DBBandedTableView1);
  StoreRegistryGrid(rgLoad,'\Software\Lis1\TfmEDO_VRK_Grids\MainGrids', cxGrid3DBBandedTableView1);
  StoreRegistryGrid(rgLoad,'\Software\Lis1\TfmEDO_VRK_Grids\MainGrids', cxGrid4DBBandedTableView1);
  StoreRegistryGrid(rgLoad,'\Software\Lis1\TfmEDO_VRK_Grids\MainGrids', cxGrid5DBBandedTableView1);
  StoreRegistryGrid(rgLoad,'\Software\Lis1\TfmEDO_VRK_Grids\MainGrids', cxGrid8DBBandedTableView1);
  StoreRegistryGrid(rgLoad,'\Software\Lis1\TfmEDO_VRK_Grids\MainGrids', cxGrid9DBBandedTableView1);
  StoreRegistryGrid(rgLoad,'\Software\Lis1\TfmEDO_VRK_Grids\MainGrids', cxGrid10DBBandedTableView1);

  EDO.Connected := False;
  EDO.ConnectionString := 'Persist Security Info=True;Provider=SQLOLEDB.1;User ID='+usr_pwd^.user_name+';Password='+usr_pwd^.user_pass+';Initial Catalog='+usr_pwd^.catalog+';Data Source='+usr_pwd^.server+';';
  EDO.Connected := True;

  dxBarSubItem1.Caption := StoreRegistryDate(rgLoad, '\Software\Lis1\DateTime\TfmEDO_VRK', Fdate1, Fdate2);

  if type_vrk = 0 then Caption := 'remontvagonov.ru';
  if type_vrk = 1 then Caption := 'warecs.ru';

//  cxGrid1DBBandedTableView1.OnFocusedRecordChanged := nil;
  Query_VRK.Close;
  if EDO_docs_id <> -9 then begin
   Query_VRK.SQl.Add(' AND EDO_docs.EDO_docs_id = ' + IntToStr(EDO_docs_id));
  end;

  if type_vrk = 0 then Query_VRK.Parameters.ParamByName('type_vrk').Value := 'sys1';
  if type_vrk = 1 then Query_VRK.Parameters.ParamByName('type_vrk').Value := 'sys2';
  Query_VRK.Parameters.ParamByName('date1').Value := Fdate1;
  Query_VRK.Parameters.ParamByName('date2').Value := Fdate2;
  Query_VRK.Open;
//  cxGrid1DBBandedTableView1.OnFocusedRecordChanged := cxGrid1DBBandedTableView1FocusedRecordChanged;


  Screen.Cursor := 0;
end;


procedure TfmEDO_VRK.FormDestroy(Sender: TObject);
begin
  StoreRegistryDate(rgSave,'\Software\Lis1\DateTime\TfmEDO_VRK', Fdate1, Fdate2);
  StoreRegistryGrid(rgSave,'\Software\Lis1\TfmEDO_VRK_Grids\MainGrids', cxGrid1DBBandedTableView1);
  StoreRegistryGrid(rgSave,'\Software\Lis1\TfmEDO_VRK_Grids\MainGrids', cxGrid2DBBandedTableView1);
  StoreRegistryGrid(rgSave,'\Software\Lis1\TfmEDO_VRK_Grids\MainGrids', cxGrid3DBBandedTableView1);
  StoreRegistryGrid(rgSave,'\Software\Lis1\TfmEDO_VRK_Grids\MainGrids', cxGrid4DBBandedTableView1);
  StoreRegistryGrid(rgSave,'\Software\Lis1\TfmEDO_VRK_Grids\MainGrids', cxGrid5DBBandedTableView1);
  StoreRegistryGrid(rgSave,'\Software\Lis1\TfmEDO_VRK_Grids\MainGrids', cxGrid8DBBandedTableView1);
  StoreRegistryGrid(rgSave,'\Software\Lis1\TfmEDO_VRK_Grids\MainGrids', cxGrid9DBBandedTableView1);
  StoreRegistryGrid(rgSave,'\Software\Lis1\TfmEDO_VRK_Grids\MainGrids', cxGrid10DBBandedTableView1);
end;


procedure TfmEDO_VRK.cxGrid1DBBandedTableView1CustomDrawCell(Sender: TcxCustomGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
	if AViewInfo.GridRecord.Selected or AViewInfo.GridRecord.Focused then begin
		ACanvas.Brush.Color := clNavy;
		ACanvas.Font.Color := clWhite;
		if AViewInfo.Focused then ACanvas.Brush.Color := clBlue;
	end;
end;

procedure TfmEDO_VRK.cxGrid1DBBandedTableView1CustomDrawColumnHeader(Sender: TcxGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxGridColumnHeaderViewInfo; var ADone: Boolean);
begin
	if AViewInfo.Column.Focused then begin
		ACanvas.Brush.Color := clNavy;
		ACanvas.Font.Color := clWhite;
	end;
end;

procedure TfmEDO_VRK.cxGrid1DBBandedTableView1FilterOnChanged(Sender: TObject);
begin
	DrawcxGridColumnOnFiltered(cxGrid1DBBandedTableView1, Sender);
end;

procedure TfmEDO_VRK.cxGrid1DBBandedTableView1FocusedItemChanged(Sender: TcxCustomGridTableView; APrevFocusedItem, AFocusedItem: TcxCustomGridTableItem);
begin
	Sender.Painter.Invalidate;
end;

procedure TfmEDO_VRK.cxGrid1DBBandedTableView1FocusedRecordChanged(Sender: TcxCustomGridTableView; APrevFocusedRecord, AFocusedRecord: TcxCustomGridRecord; ANewItemRecordFocusingChanged: Boolean);
begin
  sp_EDO_vrk_get.Close;
  sp_EDO_vrk_get_2.Close;
  if (AFocusedRecord<>nil) AND ((cxGrid1DBBandedTableView1.GroupedColumnCount = 0) OR (AFocusedRecord.Level <> 0)) then begin

    sp_EDO_vrk_get.Parameters.Refresh;
    sp_EDO_vrk_get.Parameters.ParamByName('@EDO_docs_id').Value := cxGrid1DBBandedTableView1EDO_docs_id.DataBinding.Field.Value;

    sp_EDO_vrk_get_2.Parameters.Refresh;
    sp_EDO_vrk_get_2.Parameters.ParamByName('@EDO_docs_id').Value := cxGrid1DBBandedTableView1EDO_docs_id.DataBinding.Field.Value;

    cxGrid2DBBandedTableView1.DataController.DataSource := nil;
    cxGrid3DBBandedTableView1.DataController.DataSource := nil;
    cxGrid4DBBandedTableView1.DataController.DataSource := nil;
    cxGrid5DBBandedTableView1.DataController.DataSource := nil;
    cxGrid8DBBandedTableView1.DataController.DataSource := nil;
    cxGrid9DBBandedTableView1.DataController.DataSource := nil;
    cxGrid10DBBandedTableView1.DataController.DataSource := nil;

    case cxPageControl1.ActivePageIndex of
      0:  begin
            cxGrid2DBBandedTableView1.DataController.DataSource := DS_EDO_vrk_get;
            sp_EDO_vrk_get.Parameters.ParamByName('@type_action').Value := 6;
            sp_EDO_vrk_get.Open;
          end;
      1:  begin
            cxGrid8DBBandedTableView1.DataController.DataSource := DS_EDO_vrk_get;
            sp_EDO_vrk_get.Parameters.ParamByName('@type_action').Value := 3;
            cxGrid10DBBandedTableView1.DataController.DataSource := DS_EDO_vrk_get_2;
            sp_EDO_vrk_get_2.Parameters.ParamByName('@type_action').Value := 4;

            sp_EDO_vrk_get.Open;
            sp_EDO_vrk_get_2.Open;
          end;
      2:  begin
            cxGrid3DBBandedTableView1.DataController.DataSource := DS_EDO_vrk_get;
            sp_EDO_vrk_get.Parameters.ParamByName('@type_action').Value := 2;
            sp_EDO_vrk_get.Open;
          end;
      3:  begin
            cxGrid9DBBandedTableView1.DataController.DataSource := DS_EDO_vrk_get;
            sp_EDO_vrk_get.Parameters.ParamByName('@type_action').Value := 5;
            sp_EDO_vrk_get.Open;
          end;
      4:  begin
            cxGrid4DBBandedTableView1.DataController.DataSource := DS_EDO_vrk_get;
            sp_EDO_vrk_get.Parameters.ParamByName('@type_action').Value := 0;
            sp_EDO_vrk_get.Open;
          end;
      5:  begin
            cxGrid5DBBandedTableView1.DataController.DataSource := DS_EDO_vrk_get;
            sp_EDO_vrk_get.Parameters.ParamByName('@type_action').Value := 1;
            sp_EDO_vrk_get.Open;
          end;
      6:  begin
            cxGrid6DBBandedTableView1.DataController.DataSource := DS_EDO_vrk_get;
            sp_EDO_vrk_get.Parameters.ParamByName('@type_action').Value := 7;
            sp_EDO_vrk_get.Open;
          end;
    end;
  end;
end;

procedure TfmEDO_VRK.cxGrid1DBBandedTableView1KeyPress(Sender: TObject; var Key: Char);
begin
	FilterColumnGridOnKeyPress(cxGrid1DBBandedTableView1, Key);
end;

procedure TfmEDO_VRK.cxGridDBBandedTableView1FilterOnChanged(Sender: TObject);
begin
	DrawcxGridColumnOnFiltered(cxGrid2DBBandedTableView1, Sender);
end;

procedure TfmEDO_VRK.cxGridDBBandedTableView2FilterOnChanged(Sender: TObject);
begin
	DrawcxGridColumnOnFiltered(cxGrid3DBBandedTableView1, Sender);
end;

procedure TfmEDO_VRK.cxGridDBBandedTableView3FilterOnChanged(Sender: TObject);
begin
	DrawcxGridColumnOnFiltered(cxGrid4DBBandedTableView1, Sender);
end;

procedure TfmEDO_VRK.cxGridDBBandedTableView4FilterOnChanged(Sender: TObject);
begin
	DrawcxGridColumnOnFiltered(cxGrid5DBBandedTableView1, Sender);
end;

procedure TfmEDO_VRK.cxGridDBBandedTableView7FilterOnChanged(Sender: TObject);
begin
	DrawcxGridColumnOnFiltered(cxGrid8DBBandedTableView1, Sender);
end;

procedure TfmEDO_VRK.cxGridDBBandedTableView8FilterOnChanged(Sender: TObject);
begin
	DrawcxGridColumnOnFiltered(cxGrid9DBBandedTableView1, Sender);
end;

procedure TfmEDO_VRK.cxGridDBBandedTableView9FilterOnChanged(Sender: TObject);
begin
	DrawcxGridColumnOnFiltered(cxGrid10DBBandedTableView1, Sender);
end;

procedure TfmEDO_VRK.cxPageControl1Change(Sender: TObject);
begin
  sp_EDO_vrk_get.Close;
  sp_EDO_vrk_get_2.Close;
  if (cxGrid1DBBandedTableView1.Controller.FocusedRecord<>nil) AND ((cxGrid1DBBandedTableView1.GroupedColumnCount = 0) OR (cxGrid1DBBandedTableView1.Controller.FocusedRecord.Level <> 0)) then begin

    sp_EDO_vrk_get.Parameters.Refresh;
    sp_EDO_vrk_get.Parameters.ParamByName('@EDO_docs_id').Value := cxGrid1DBBandedTableView1EDO_docs_id.DataBinding.Field.Value;

    sp_EDO_vrk_get_2.Parameters.Refresh;
    sp_EDO_vrk_get_2.Parameters.ParamByName('@EDO_docs_id').Value := cxGrid1DBBandedTableView1EDO_docs_id.DataBinding.Field.Value;

    cxGrid2DBBandedTableView1.DataController.DataSource := nil;
    cxGrid3DBBandedTableView1.DataController.DataSource := nil;
    cxGrid4DBBandedTableView1.DataController.DataSource := nil;
    cxGrid5DBBandedTableView1.DataController.DataSource := nil;
    cxGrid8DBBandedTableView1.DataController.DataSource := nil;
    cxGrid9DBBandedTableView1.DataController.DataSource := nil;
    cxGrid10DBBandedTableView1.DataController.DataSource := nil;

    case cxPageControl1.ActivePageIndex of
      0:  begin
            cxGrid2DBBandedTableView1.DataController.DataSource := DS_EDO_vrk_get;
            sp_EDO_vrk_get.Parameters.ParamByName('@type_action').Value := 6;
            sp_EDO_vrk_get.Open;
          end;
      1:  begin
            cxGrid8DBBandedTableView1.DataController.DataSource := DS_EDO_vrk_get;
            sp_EDO_vrk_get.Parameters.ParamByName('@type_action').Value := 3;
            cxGrid10DBBandedTableView1.DataController.DataSource := DS_EDO_vrk_get_2;
            sp_EDO_vrk_get_2.Parameters.ParamByName('@type_action').Value := 4;

            sp_EDO_vrk_get.Open;
            sp_EDO_vrk_get_2.Open;
          end;
      2:  begin
            cxGrid3DBBandedTableView1.DataController.DataSource := DS_EDO_vrk_get;
            sp_EDO_vrk_get.Parameters.ParamByName('@type_action').Value := 2;
            sp_EDO_vrk_get.Open;
          end;
      3:  begin
            cxGrid9DBBandedTableView1.DataController.DataSource := DS_EDO_vrk_get;
            sp_EDO_vrk_get.Parameters.ParamByName('@type_action').Value := 5;
            sp_EDO_vrk_get.Open;
          end;
      4:  begin
            cxGrid4DBBandedTableView1.DataController.DataSource := DS_EDO_vrk_get;
            sp_EDO_vrk_get.Parameters.ParamByName('@type_action').Value := 0;
            sp_EDO_vrk_get.Open;
          end;
      5:  begin
            cxGrid5DBBandedTableView1.DataController.DataSource := DS_EDO_vrk_get;
            sp_EDO_vrk_get.Parameters.ParamByName('@type_action').Value := 1;
            sp_EDO_vrk_get.Open;
          end;
      6:  begin
            cxGrid6DBBandedTableView1.DataController.DataSource := DS_EDO_vrk_get;
            sp_EDO_vrk_get.Parameters.ParamByName('@type_action').Value := 7;
            sp_EDO_vrk_get.Open;
          end;
    end;
  end;
end;

procedure TfmEDO_VRK.dxBarButton10Click(Sender: TObject);
begin
	SetdxDBGridColumns(cxGrid10DBBandedTableView1);
end;

procedure TfmEDO_VRK.dxBarButton11Click(Sender: TObject);
begin
	cxGrid10DBBandedTableView1.OptionsView.GroupByBox := not cxGrid10DBBandedTableView1.OptionsView.GroupByBox;
end;

procedure TfmEDO_VRK.dxBarButton12Click(Sender: TObject);
begin
	FiltercxGrid4ListID(cxGrid10DBBandedTableView1);
end;

procedure TfmEDO_VRK.dxBarButton13Click(Sender: TObject);
begin
	cxGrid10DBBandedTableView1.Filtering.ColumnFilteredItemsList := not dxBarButton13.Down;
end;

procedure TfmEDO_VRK.dxBarButton14Click(Sender: TObject);
begin
	PrintcxGrid(cxGrid5DBBandedTableView1);
end;

procedure TfmEDO_VRK.dxBarButton15Click(Sender: TObject);
begin
	SetdxDBGridColumns(cxGrid5DBBandedTableView1);
end;

procedure TfmEDO_VRK.dxBarButton16Click(Sender: TObject);
begin
	cxGrid5DBBandedTableView1.OptionsView.GroupByBox := not cxGrid5DBBandedTableView1.OptionsView.GroupByBox;
end;

procedure TfmEDO_VRK.dxBarButton17Click(Sender: TObject);
begin
	FiltercxGrid4ListID(cxGrid5DBBandedTableView1);
end;

procedure TfmEDO_VRK.dxBarButton18Click(Sender: TObject);
begin
	cxGrid5DBBandedTableView1.Filtering.ColumnFilteredItemsList := not dxBarButton18.Down;
end;

procedure TfmEDO_VRK.dxBarButton19Click(Sender: TObject);
begin
	PrintcxGrid(cxGrid4DBBandedTableView1);
end;

procedure TfmEDO_VRK.dxBarButton1Click(Sender: TObject);
begin
  RefreshQueryGrid(cxGrid1DBBandedTableView1, 'EDO_docs_id');
end;

procedure TfmEDO_VRK.dxBarButton20Click(Sender: TObject);
begin
	SetdxDBGridColumns(cxGrid4DBBandedTableView1);
end;

procedure TfmEDO_VRK.dxBarButton21Click(Sender: TObject);
begin
	cxGrid4DBBandedTableView1.OptionsView.GroupByBox := not cxGrid4DBBandedTableView1.OptionsView.GroupByBox;	PrintcxGrid(cxGrid2DBBandedTableView1);
end;

procedure TfmEDO_VRK.dxBarButton22Click(Sender: TObject);
begin
	FiltercxGrid4ListID(cxGrid4DBBandedTableView1);
end;

procedure TfmEDO_VRK.dxBarButton23Click(Sender: TObject);
begin
	cxGrid4DBBandedTableView1.Filtering.ColumnFilteredItemsList := not dxBarButton23.Down;
end;

procedure TfmEDO_VRK.dxBarButton24Click(Sender: TObject);
begin
	PrintcxGrid(cxGrid9DBBandedTableView1);
end;

procedure TfmEDO_VRK.dxBarButton25Click(Sender: TObject);
begin
	SetdxDBGridColumns(cxGrid9DBBandedTableView1);
end;

procedure TfmEDO_VRK.dxBarButton26Click(Sender: TObject);
begin
	cxGrid9DBBandedTableView1.OptionsView.GroupByBox := not cxGrid9DBBandedTableView1.OptionsView.GroupByBox;
end;

procedure TfmEDO_VRK.dxBarButton27Click(Sender: TObject);
begin
	FiltercxGrid4ListID(cxGrid9DBBandedTableView1);
end;

procedure TfmEDO_VRK.dxBarButton28Click(Sender: TObject);
begin
	cxGrid9DBBandedTableView1.Filtering.ColumnFilteredItemsList := not dxBarButton28.Down;
end;

procedure TfmEDO_VRK.dxBarButton29Click(Sender: TObject);
begin
	PrintcxGrid(cxGrid3DBBandedTableView1);
end;

procedure TfmEDO_VRK.dxBarButton2Click(Sender: TObject);
begin
  fmPeriod := TfmPeriod.Create(Application, Fdate1, Fdate2, 3);
  if fmPeriod.ShowModal=mrOK then begin
    Fdate1 := fmPeriod._GetMonth;
    Fdate2 := IncMonth(Fdate1, 1);
    dxBarSubItem1.Caption := FormatDateTime('mmmm yyyy', Fdate1);
    Screen.Cursor := crHourGlass;
    Query_VRK.Close;
    Query_VRK.Parameters.ParamByName('date1').Value := Fdate1;
    Query_VRK.Parameters.ParamByName('date2').Value := Fdate2;
    Query_VRK.Open;
    Screen.Cursor := crDefault;
  end;
end;

procedure TfmEDO_VRK.dxBarButton30Click(Sender: TObject);
begin
	SetdxDBGridColumns(cxGrid3DBBandedTableView1);
end;

procedure TfmEDO_VRK.dxBarButton31Click(Sender: TObject);
begin
	cxGrid3DBBandedTableView1.OptionsView.GroupByBox := not cxGrid3DBBandedTableView1.OptionsView.GroupByBox;
end;

procedure TfmEDO_VRK.dxBarButton32Click(Sender: TObject);
begin
	FiltercxGrid4ListID(cxGrid3DBBandedTableView1);
end;

procedure TfmEDO_VRK.dxBarButton33Click(Sender: TObject);
begin
	cxGrid3DBBandedTableView1.Filtering.ColumnFilteredItemsList := not dxBarButton33.Down;
end;

procedure TfmEDO_VRK.dxBarButton34Click(Sender: TObject);
begin
	PrintcxGrid(cxGrid8DBBandedTableView1);
end;

procedure TfmEDO_VRK.dxBarButton35Click(Sender: TObject);
begin
	SetdxDBGridColumns(cxGrid8DBBandedTableView1);
end;

procedure TfmEDO_VRK.dxBarButton36Click(Sender: TObject);
begin
	cxGrid8DBBandedTableView1.OptionsView.GroupByBox := not cxGrid8DBBandedTableView1.OptionsView.GroupByBox;
end;

procedure TfmEDO_VRK.dxBarButton37Click(Sender: TObject);
begin
	FiltercxGrid4ListID(cxGrid8DBBandedTableView1);
end;

procedure TfmEDO_VRK.dxBarButton38Click(Sender: TObject);
begin
	cxGrid8DBBandedTableView1.Filtering.ColumnFilteredItemsList := not dxBarButton38.Down;
end;

procedure TfmEDO_VRK.dxBarButton39Click(Sender: TObject);
begin
	PrintcxGrid(cxGrid2DBBandedTableView1);
end;

procedure TfmEDO_VRK.dxBarButton3Click(Sender: TObject);
begin
  fmPeriod := TfmPeriod.Create(Application, Fdate1, Fdate2, 2);
  if fmPeriod.ShowModal=mrOK then begin
    Fdate1 := fmPeriod._GetMonthBegin;
    Fdate2 := fmPeriod._GetMonthEnd;
    dxBarSubItem1.Caption := FormatDateTime('mmm yy', Fdate1) + ' - ' + FormatDateTime('mmm yy', Fdate2);
    Screen.Cursor := crHourGlass;
    Query_VRK.Close;
    Query_VRK.Parameters.ParamByName('date1').Value := Fdate1;
    Query_VRK.Parameters.ParamByName('date2').Value := Fdate2;
    Query_VRK.Open;
    Screen.Cursor := crDefault;
  end;
end;

procedure TfmEDO_VRK.dxBarButton40Click(Sender: TObject);
begin
	SetdxDBGridColumns(cxGrid2DBBandedTableView1);
end;

procedure TfmEDO_VRK.dxBarButton41Click(Sender: TObject);
begin
	cxGrid2DBBandedTableView1.OptionsView.GroupByBox := not cxGrid2DBBandedTableView1.OptionsView.GroupByBox;
end;

procedure TfmEDO_VRK.dxBarButton42Click(Sender: TObject);
begin
	FiltercxGrid4ListID(cxGrid2DBBandedTableView1);
end;

procedure TfmEDO_VRK.dxBarButton43Click(Sender: TObject);
begin
	cxGrid2DBBandedTableView1.Filtering.ColumnFilteredItemsList := not dxBarButton43.Down;
end;

procedure TfmEDO_VRK.dxBarButton44Click(Sender: TObject);
var sp_fact_repair_from_EDO : TADOStoredProc;
begin
  if cxGrid1DBBandedTableView1.Controller.SelectedRecordCount <> 1 then begin
    Application.MessageBox('Невозможно создать карточку ремонта! '+#13+#10+'Выберите одну запись!', 'Внимание!', MB_ICONWARNING or MB_OK);
    exit;
  end;

  sp_fact_repair_from_EDO := TADOStoredProc.Create(nil);
  sp_fact_repair_from_EDO.Connection := EDO;
  sp_fact_repair_from_EDO.ProcedureName := 'sp_fact_repair_from_EDO';
  sp_fact_repair_from_EDO.Parameters.Refresh;
  sp_fact_repair_from_EDO.Parameters.ParamByName('@EDO_docs_id').Value := cxGrid1DBBandedTableView1EDO_docs_id.DataBinding.Field.AsInteger;
  try
    sp_fact_repair_from_EDO.ExecProc;
    Application.MessageBox('Карточка ремонта успешно создана.', 'Внимание!', MB_ICONINFORMATION or MB_OK);
  except
    on E: Exception do begin
      Application.MessageBox(PChar('Ошибка.' + E.Message), 'Внимание', MB_OK);
    end;
  end;
  RefreshQueryGrid(cxGrid1DBBandedTableView1, 'EDO_docs_id');
  sp_fact_repair_from_EDO.Free;
end;

procedure TfmEDO_VRK.dxBarButton45Click(Sender: TObject);
type
  TFunc = function(AppHand: THandle; f: boolean; usr_pwd: PUser_pwd; fact_repair_id: integer) : variant;
var
  FDic   : TFunc;
  handle : THandle;
  v      : Variant;
begin
  if cxGrid1DBBandedTableView1fact_repair_id.DataBinding.Field.Value = null then begin
    Application.MessageBox('Карточка ремонта не найдена!', 'Внимание.', MB_ICONWARNING or MB_OK);
    exit;
  end;

  handle := LoadLibrary('dictionary.dll');
  @FDic := GetProcAddress(handle, 'CreateWndVagonRepairFind');
  v := FDic(Application.Handle, False, Fusr_pwd, cxGrid1DBBandedTableView1fact_repair_id.DataBinding.Field.AsInteger);
  FreeLibrary(handle);
end;

procedure TfmEDO_VRK.dxBarButton47Click(Sender: TObject);
begin
  Screen.Cursor := crHourglass;
  if TControl(Sender).Tag = 1 then begin
    Fdate1 := IncMonth(Fdate1, -1);
  end;

  if TControl(Sender).Tag = 2 then begin
    Fdate1 := IncMonth(Fdate1, 1);
  end;

  Fdate2 := IncMonth(Fdate1, 1) - 1;
  dxBarSubItem1.Caption := FormatDateTime('mmmm yyyy', Fdate1);

  Query_VRK.Close;
  Query_VRK.Parameters.ParamByName('date1').Value := Fdate1;
  Query_VRK.Parameters.ParamByName('date2').Value := Fdate2;
  Query_VRK.Open;

  Screen.Cursor := crDefault;
end;

procedure TfmEDO_VRK.dxBarButton48Click(Sender: TObject);
var SaveDialog : TSaveDialog;
             Q : TADOQuery;
     file_name : string;
         hFile : THandle;
     num_write : Cardinal;
     str : RawByteString;
begin
  SaveDialog := TSaveDialog.Create(nil);
//  SaveDialog.FileName := cxGrid1DBBandedTableView1files_name.DataBinding.Field.AsString;
  SaveDialog.DefaultExt := 'xml';
  if SaveDialog.Execute then begin
    Q := TADOQuery.Create(nil);
    Q.Connection := EDO;
    Q.SQL.Add('SELECT edo_xml FROM EDO_docs WHERE edo_docs_id = ' + IntToStr(cxGrid1DBBandedTableView1EDO_docs_id.DataBinding.Field.AsInteger));
    Q.Open;

    str := FormatXMLData(Q.FieldByName('edo_xml').AsString);
    Q.Free;

    file_name := SaveDialog.FileName;
    hFile:=CreateFile(PChar(file_name), Generic_Write, 0, nil, Create_Always, File_Attribute_Normal, 0);
    WriteFile(hFile, PAnsiChar(str)^, Length(str), num_write, nil);
    CloseHandle(hFile);

    ShellExecute(handle, 'open', PChar(file_name), nil, nil, SW_SHOWNORMAL);
  end;

end;

procedure TfmEDO_VRK.dxBarButton4Click(Sender: TObject);
begin
	PrintcxGrid(cxGrid1DBBandedTableView1);
end;

procedure TfmEDO_VRK.dxBarButton5Click(Sender: TObject);
begin
	SetdxDBGridColumns(cxGrid1DBBandedTableView1);
end;

procedure TfmEDO_VRK.dxBarButton6Click(Sender: TObject);
begin
	cxGrid1DBBandedTableView1.OptionsView.GroupByBox := not cxGrid1DBBandedTableView1.OptionsView.GroupByBox;
end;

procedure TfmEDO_VRK.dxBarButton7Click(Sender: TObject);
begin
	FiltercxGrid4ListID(cxGrid1DBBandedTableView1);
end;

procedure TfmEDO_VRK.dxBarButton8Click(Sender: TObject);
begin
	cxGrid1DBBandedTableView1.Filtering.ColumnFilteredItemsList := not dxBarButton8.Down;
end;

procedure TfmEDO_VRK.dxBarButton9Click(Sender: TObject);
begin
	PrintcxGrid(cxGrid10DBBandedTableView1);
end;

procedure TfmEDO_VRK.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;


end.
