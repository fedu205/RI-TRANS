unit VagonArendaActs;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Default,
  Dialogs, cxPropertiesStore, DB, ADODB, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxStyles,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, cxDBData, cxGridLevel, cxClasses, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridBandedTableView, cxGridDBBandedTableView, cxGrid, dxBar, DateUtils, Menus,
  cxCurrencyEdit, cxContainer, ExtCtrls, cxGroupBox, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee,
  dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMetropolis, dxSkinMetropolisDark,
  dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver,
  dxSkinOffice2010Black, dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray,
  dxSkinOffice2013White, dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus, dxSkinSilver, dxSkinSpringTime,
  dxSkinStardust, dxSkinSummer2008, dxSkinTheAsphaltWorld, dxSkinsDefaultPainters, dxSkinValentine, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue, dxSkinscxPCPainter, cxNavigator, dxSkinsdxBarPainter, ImgList, dxCore, ComCtrls, dxSkinOffice2016Colorful,
  dxSkinOffice2016Dark, dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark, dxSkinVisualStudio2013Light, System.ImageList,
  System.Win.ComObj, cxImageList, dxSkinTheBezier, cxDataControllerConditionalFormattingRulesManagerDialog, dxDateRanges, dxSkinOffice2019Colorful, dxScrollbarAnnotations;

type
  TfmVagonArendaActs = class(TForm)
    cxPropertiesStore1: TcxPropertiesStore;
    dxBarManager1: TdxBarManager;
    dxBarManager1Bar1: TdxBar;
    dxBarButton1: TdxBarButton;
    dxBarButton2: TdxBarButton;
    dxBarButton3: TdxBarButton;
    dxBarButton9: TdxBarButton;
    dxBarButton4: TdxBarButton;
    dxBarSubItem2: TdxBarSubItem;
    dxBarButton5: TdxBarButton;
    dxBarButton6: TdxBarButton;
    dxBarButton7: TdxBarButton;
    dxBarButton8: TdxBarButton;
    dxBarButton10: TdxBarButton;
    dxBarButton11: TdxBarButton;
    dxBarSubItem1: TdxBarSubItem;
    dxBarButton13: TdxBarButton;
    dxBarButton_Rent: TdxBarButton;
    dxBarButton14: TdxBarButton;
    dxBarButton_FilterRecords1: TdxBarButton;
    dxBarButton15: TdxBarButton;
    dxBarButton16: TdxBarButton;
    dxBarButton17: TdxBarButton;
    dxBarButton21: TdxBarButton;
    dxBarButton22: TdxBarButton;
    dxBarButton23: TdxBarButton;
    dxBarButton24: TdxBarButton;
    dxBarSubItem3: TdxBarSubItem;
    dxBarButton25: TdxBarButton;
    dxBarButton26: TdxBarButton;
    dxBarButton27: TdxBarButton;
    dxBarButton28: TdxBarButton;
    dxBarButton29: TdxBarButton;
    dxBarButton30: TdxBarButton;
    dxBarButton31: TdxBarButton;
    dxBarButton32: TdxBarButton;
    dxBarSubItem4: TdxBarSubItem;
    dxBarButton33: TdxBarButton;
    dxBarButton34: TdxBarButton;
    dxBarButton35: TdxBarButton;
    dxBarSubItem5: TdxBarSubItem;
    dxBarButton36: TdxBarButton;
    dxBarButton37: TdxBarButton;
    cxGrid1: TcxGrid;
    cxGrid1DBBandedTableView1: TcxGridDBBandedTableView;
    cxGrid1Level1: TcxGridLevel;
    dxBarPopupMenu1: TdxBarPopupMenu;
    cxImageList1: TcxImageList;
    DS_VagonArendaActs: TDataSource;
    cxGrid1DBBandedTableView1vagon_arenda_acts_id: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1vagon_arenda_acts_type: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1vagon_arenda_acts_cod: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1vagon_arenda_acts_date: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1contract_id: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1comment: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1FIO_users_owner: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1contract_cod: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1contract_num: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1firm_customer_name_short: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1firm_self_name_short: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1acts_type_name: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1users_group_id: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1date_begin: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1global_color: TcxGridDBBandedColumn;
    vagon_count: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1vagon_arenda_date: TcxGridDBBandedColumn;
    dxBarButton12: TdxBarButton;
    cxGroupBox1: TcxGroupBox;
    cxGrid2: TcxGrid;
    cxGrid2DBBandedTableView1: TcxGridDBBandedTableView;
    cxGrid2DBBandedTableView1vagon_arenda_id: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1vagon_id: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1contract_id: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1rate_val: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1type_arenda: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1num_vagon: TcxGridDBBandedColumn;
    cxGrid2DBBandedTavleView1contract_cod: TcxGridDBBandedColumn;
    cxGrid2DBBandedTable_view1firm_self_name: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1date_begin: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1date_end: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1firm_id: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1firm_name_short: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1brief_name: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1type_rate_name: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1type_nds_name: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1FIO_users_owner: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1users_group_id: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1comment: TcxGridDBBandedColumn;
    cxGridDBBandedColumn9: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1d1: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1d2: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1vagon_days: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1sum_arena: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1days_owner: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1act_begin_cod: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1act_begin_date: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1act_end_cod: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1act_end_date: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1vagon_days_repair: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1vagon_days_total: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1breakage_name: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1sum_arenda_with_nds: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1sum_arenda_without_nds: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1rod_vagon_name: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1type_park_name1: TcxGridDBBandedColumn;
    cxGrid2Level1: TcxGridLevel;
    Splitter1: TSplitter;
    DS_VagonArenda: TDataSource;
    SP_VagonArenda: TADOStoredProc;
    dxBarButton18: TdxBarButton;
    Query_VagonArendaActs: TADOQuery;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet3: TTabSheet;
    TabSheet2: TTabSheet;
    dxBarButton19: TdxBarButton;
    dxBarButton20: TdxBarButton;
    dxBarPopupMenu2: TdxBarPopupMenu;
    dxBarButton38: TdxBarButton;
    dxBarButton39: TdxBarButton;
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
    TabSheet4: TTabSheet;
    dxBarButton40: TdxBarButton;
    dxBarSubItem6: TdxBarSubItem;
    cxGrid1DBBandedTableView1type_arenda: TcxGridDBBandedColumn;
    dxBarButton41: TdxBarButton;
    cxStyle_ColorWhite: TcxStyle;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure dxBarButton1Click(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure dxBarButton9Click(Sender: TObject);
    procedure cxGrid1DBBandedTableView1CustomDrawCell(Sender: TcxCustomGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
    procedure cxGrid1DBBandedTableView1CustomDrawColumnHeader(Sender: TcxGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxGridColumnHeaderViewInfo; var ADone: Boolean);
    procedure cxGrid1DBBandedTableView1FocusedItemChanged(Sender: TcxCustomGridTableView; APrevFocusedItem, AFocusedItem: TcxCustomGridTableItem);
    procedure cxGrid1DBBandedTableView1KeyPress(Sender: TObject; var Key: Char);
    procedure dxBarButton11Click(Sender: TObject);
    procedure dxBarButton25Click(Sender: TObject);
    procedure dxBarButton2Click(Sender: TObject);
    procedure dxBarButton4Click(Sender: TObject);
    procedure dxBarButton7Click(Sender: TObject);
    procedure dxBarButton8Click(Sender: TObject);
    procedure dxBarButton5Click(Sender: TObject);
    procedure dxBarButton10Click(Sender: TObject);
    procedure dxBarButton3Click(Sender: TObject);
    procedure cxGrid1DBBandedTableView1FocusedRecordChanged(Sender: TcxCustomGridTableView; APrevFocusedRecord, AFocusedRecord: TcxCustomGridRecord; ANewItemRecordFocusingChanged: Boolean);
    procedure dxBarButton12Click(Sender: TObject);
    procedure dxBarButton18Click(Sender: TObject);
    procedure PageControl1Change(Sender: TObject);
    procedure dxBarButton20Click(Sender: TObject);
    procedure dxBarButton38Click(Sender: TObject);
    procedure dxBarButton39Click(Sender: TObject);
    procedure dxBarButton40Click(Sender: TObject);
    procedure dxBarButton41Click(Sender: TObject);
    procedure cxGrid1DBBandedTableView1DataControllerFilterChanged(Sender: TObject);
  private
    Fconn : TADOConnection;
    Fdate1, Fdate2 : TDateTime;
    Facts_id       : integer;
    Facts_cod      : string;
    Facts_date     : TDateTime;
    Farenda_date   : TDateTime;
    Ftype_acts     : integer;
    Fstr_acts_id   : string;
    Fstr_acts_cod  : string;
    Ftype_arenda   : integer;
    Fusr_pwd       : PUser_pwd;

    procedure SetActsDate(acts_date: TDateTime);
    procedure SetContractId(contract_id: integer);
    procedure SetShowVagon(set_show_vagon: boolean);
    procedure SetOpenDLL(set_open_dll: boolean);
    procedure SetActsId(acts_id: integer);
  public
    property _GetActsID : integer read   Facts_id;
    property _GetActsCod : string read   Facts_cod;
    property _GetActsDate : TDateTime read   Facts_date;
    property _GetArendaDate : TDateTime read   Farenda_date;
    property _GetStrActsCod : string read   Fstr_acts_cod;
    property _GetStrActsId : string read   Fstr_acts_id;

    constructor Create(Aowner: TApplication; conn: TADOConnection; type_acts: integer; type_arenda : integer; flag: boolean);
  published
    property _SetActsDate   : TDateTime write SetActsDate;
    property _SetContractId : integer   write SetContractId;
    property _SetShowVagon  : boolean   write SetShowVagon;
    property _SetOpenDLL    : boolean   write SetOpenDLL;
    property _SetActsId     : integer   write SetActsId;
  end;

function CreateWndVagonArendaActs(AppHand: THandle; conn: TADOConnection; type_acts: integer; type_arenda : integer; flag: boolean; dtbegin: TDateTime; dtend: TDateTime): variant; export;
function CreateWndVagonArendaActsNew(AppHand: THandle; conn: TADOConnection; type_acts: integer; type_arenda : integer; flag: boolean; dtbegin: TDateTime; dtend: TDateTime; type_period: integer): variant; export;

var
  fmVagonArendaActs: TfmVagonArendaActs;

implementation
    uses Raznoe, Other, Period, VagonArendaActsAdd, VagonArenda;
{$R *.dfm}

{ TfmVagonArendaActs }
function CreateWndVagonArendaActs(AppHand: THandle; conn: TADOConnection; type_acts: integer; type_arenda : integer; flag: boolean; dtbegin: TDateTime; dtend: TDateTime): variant; export;
begin
  Application.Handle := AppHand;
  try
    fmVagonArendaActs := TfmVagonArendaActs.Create(Application, conn, type_acts, type_arenda, flag);
    fmVagonArendaActs.Fdate1 := dtbegin;
    fmVagonArendaActs.Fdate2 := dtend;
    fmVagonArendaActs.dxBarSubItem3.Caption := FormatDateTime('mmmm yyyy', fmVagonArendaActs.Fdate1);
    fmVagonArendaActs.PageControl1.ActivePageIndex := type_arenda;
    fmVagonArendaActs.PageControl1Change(nil);

    //-- изменить по мере необходимости возвращаемых параметров
    if  fmVagonArendaActs.ShowModal = mrOk then result := VarArrayOf([fmVagonArendaActs._GetActsID, fmVagonArendaActs._GetActsCod, fmVagonArendaActs._GetActsDate, fmVagonArendaActs._GetStrActsId, fmVagonArendaActs._GetStrActsCod])
    else result := VarArrayOf([-9]);
  finally

    fmVagonArendaActs.Free;
  end;
end;

{ TfmVagonArendaActs }
function CreateWndVagonArendaActsNew(AppHand: THandle; conn: TADOConnection; type_acts: integer; type_arenda : integer; flag: boolean; dtbegin: TDateTime; dtend: TDateTime; type_period: integer): variant; export;
begin
  Application.Handle := AppHand;
  try
    fmVagonArendaActs := TfmVagonArendaActs.Create(Application, conn, type_acts, type_arenda, flag);

    fmVagonArendaActs.Fdate1 := dtbegin;
    fmVagonArendaActs.Fdate2 := dtend;
    case type_period of
      1 : begin
        fmVagonArendaActs.dxBarSubItem3.Caption := FormatDateTime('dd.mm.yy', fmVagonArendaActs.Fdate1) + ' - ' + FormatDateTime('dd.mm.yy', fmVagonArendaActs.Fdate2);
      end;
      3 : begin
        fmVagonArendaActs.dxBarSubItem3.Caption := FormatDateTime('mmmm yyyy', dtbegin);
      end;
      5 : begin
        fmVagonArendaActs.dxBarSubItem3.Caption := FormatDateTime('dd.mm.yy', dtbegin);
      end;
    end;
    fmVagonArendaActs.PageControl1.ActivePageIndex := type_arenda;
    fmVagonArendaActs.PageControl1Change(nil);
    //-- изменить по мере необходимости возвращаемых параметров
    if  fmVagonArendaActs.ShowModal = mrOk then
      result := VarArrayOf([fmVagonArendaActs._GetActsID, fmVagonArendaActs._GetActsCod, fmVagonArendaActs._GetArendaDate, fmVagonArendaActs._GetStrActsId, fmVagonArendaActs._GetStrActsCod])
    else
      result := VarArrayOf([-9]);
  finally
    fmVagonArendaActs.Free;
  end;
end;


constructor TfmVagonArendaActs.Create(Aowner: TApplication; conn: TADOConnection; type_acts: integer; type_arenda: integer; flag: boolean);
begin
  Screen.Cursor := crHourglass;
  inherited Create(AOwner);

  Fconn := conn;
  Facts_id := -9;
  Facts_cod := '-9';
  Fstr_acts_id := '-9';
  Fstr_acts_cod := '-9';
  Ftype_arenda := -9;

  Ftype_acts := type_acts;
  Ftype_arenda := type_arenda;
  Query_VagonArendaActs.Connection := Fconn;
  SP_VagonArenda.Connection := Fconn;
  case Ftype_arenda of
    0:Caption := 'Акты ввода/вывода (аренда)';
    1:Caption := 'Акты ввода/вывода (субаренда)';
    2:Caption := 'Акты ввода/вывода (краткосрочная аренда)';
    3:Caption := 'Акты ввода/вывода (краткосрочная субаренда)';
  end;

  if flag then begin
    FormStyle := fsNormal;
    cxGrid1DBBandedTableView1.OnDblClick := nil;
    dxBarButton10.Visible := ivAlways;
    cxGrid1DBBandedTableView1.OnDblClick := dxBarButton10Click;
    if Ftype_acts <> -9 then begin
      Query_VagonArendaActs.SQL.Clear;
      Query_VagonArendaActs.SQL.Add('SELECT * FROM view_vagon_arenda_acts ');
      Query_VagonArendaActs.SQL.Add('WHERE (vagon_arenda_acts_type = '+ IntToStr(Ftype_acts) +') AND (type_arenda =:type_arenda) AND (vagon_arenda_acts_date BETWEEN :date1 AND :date2)');
    end;
  end;

  dxBarSubItem3.Caption := StoreRegistryDate(rgLoad, '\Software\Lis1\DateTime\VagonArenda', Fdate1, Fdate2);

  PageControl1.ActivePageIndex := type_arenda;
  PageControl1Change(nil);

  StoreRegistryGrid(rgLoad, '\Software\Lis1\VagonArendaActs_Grids', cxGrid1DBBandedTableView1);
  StoreRegistryGrid(rgLoad, '\Software\Lis1\VagonArendaActs_Grids', cxGrid2DBBandedTableView1);

  MonitorEventFormOpen('OPEN_FORM', self.Name, Fconn, -9);
  Screen.Cursor := crDefault;
end;

procedure TfmVagonArendaActs.cxGrid1DBBandedTableView1CustomDrawCell(Sender: TcxCustomGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
  if (Sender = cxGrid1DBBandedTableView1)  then
    if (AViewInfo.GridRecord.Values[cxGrid1DBBandedTableView1global_color.Index]<>NULL) then
      ACanvas.Brush.Color := AViewInfo.GridRecord.Values[cxGrid1DBBandedTableView1global_color.Index];

  if not Assigned(AViewInfo.Item.Styles.Content) then
    if (AViewInfo.GridRecord.Values[cxGrid1DBBandedTableView1vagon_arenda_acts_type.Index] = 0) then
      ACanvas.Brush.Color := clSilver;

  if (AViewInfo.GridRecord.Selected) or (AViewInfo.GridRecord.Focused) then begin
    ACanvas.Brush.Color := clNavy;
    ACanvas.Font.Color := clWhite;
    if AViewInfo.Focused then
      ACanvas.Brush.Color := clBlue;
  end;
end;

procedure TfmVagonArendaActs.cxGrid1DBBandedTableView1CustomDrawColumnHeader(Sender: TcxGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxGridColumnHeaderViewInfo; var ADone: Boolean);
begin
  DrawcxGridColumnOnFocused(Sender, ACanvas, AViewInfo);
end;

procedure TfmVagonArendaActs.cxGrid1DBBandedTableView1DataControllerFilterChanged(Sender: TObject);
begin
  DrawcxGridColumnOnFiltered(Sender);
end;

procedure TfmVagonArendaActs.cxGrid1DBBandedTableView1FocusedItemChanged(Sender: TcxCustomGridTableView; APrevFocusedItem, AFocusedItem: TcxCustomGridTableItem);
begin
  Sender.Painter.Invalidate;
end;

procedure TfmVagonArendaActs.cxGrid1DBBandedTableView1FocusedRecordChanged(Sender: TcxCustomGridTableView; APrevFocusedRecord, AFocusedRecord: TcxCustomGridRecord; ANewItemRecordFocusingChanged: Boolean);
begin
  if (dxBarButton12.Down) and (cxGrid1DBBandedTableView1.Controller.FocusedRecord <> nil) then begin
    SP_VagonArenda.Close;
    SP_VagonArenda.Parameters.Refresh;
    SP_VagonArenda.Parameters.ParamByName('@str_acts_id'  ).Value   := cxGrid1DBBandedTableView1vagon_arenda_acts_id.DataBinding.Field.AsString;
    SP_VagonArenda.Parameters.ParamByName('@set_view_acts').Value := 1;
    SP_VagonArenda.Open;
  end;
end;

procedure TfmVagonArendaActs.cxGrid1DBBandedTableView1KeyPress(Sender: TObject; var Key: Char);
begin
  FilterColumnGridOnKeyPress(TcxGridDBBandedTableView(TcxGridSite(Sender).GridView), Key);
end;

procedure TfmVagonArendaActs.dxBarButton10Click(Sender: TObject);
var i :integer;
begin
  Facts_id := cxGrid1DBBandedTableView1vagon_arenda_acts_id.DataBinding.Field.Value;
  Facts_cod := cxGrid1DBBandedTableView1vagon_arenda_acts_cod.DataBinding.Field.Value;
  Facts_date := cxGrid1DBBandedTableView1vagon_arenda_acts_date.DataBinding.Field.Value;
  Farenda_date := cxGrid1DBBandedTableView1vagon_arenda_date.DataBinding.Field.Value;
  Fstr_acts_cod := '';
  Fstr_acts_id := '';
  for i:=0 to cxGrid1DBBandedTableView1.Controller.SelectedRowCount - 1 do begin
    Fstr_acts_id := Fstr_acts_id + ',' + VarToStr(cxGrid1DBBandedTableView1.Controller.SelectedRows[i].Values[cxGrid1DBBandedTableView1vagon_arenda_acts_id.Index]);
    Fstr_acts_cod := Fstr_acts_cod + ', ' + VarToStr(cxGrid1DBBandedTableView1.Controller.SelectedRows[i].Values[cxGrid1DBBandedTableView1vagon_arenda_acts_cod.Index]);
  end;
  Delete(Fstr_acts_id, 1, 1);
  Delete(Fstr_acts_cod, 1, 1);
  ModalResult := mrOk;
end;

procedure TfmVagonArendaActs.dxBarButton11Click(Sender: TObject);
begin
  fmPeriod := TfmPeriod.Create(Application, Fdate1, Fdate1, 3);
  if fmPeriod.ShowModal = mrOk then begin
    Fdate1 := fmPeriod._GetMonth;
    Fdate2 := Fdate1 + DaysInAMonth(YearOf(Fdate1), MonthOf(Fdate1)) - 1;
    dxBarSubItem3.Caption := FormatDateTime('mmmm yyyy', Fdate1);
    dxBarButton9Click(nil);
  end;
end;

procedure TfmVagonArendaActs.dxBarButton12Click(Sender: TObject);
begin
  cxGroupBox1.Visible := dxBarButton12.Down;
  Splitter1.Visible := dxBarButton12.Down;
  cxGrid1DBBandedTableView1FocusedRecordChanged(nil,nil,nil,True);
end;

procedure TfmVagonArendaActs.dxBarButton18Click(Sender: TObject);
begin
  Screen.Cursor := crHourglass;
  fmVagonArendaActsAdd := TfmVagonArendaActsAdd.Create(Application, Fconn, cxGrid1DBBandedTableView1vagon_arenda_acts_type.DataBinding.Field.AsInteger, Ftype_arenda);
  fmVagonArendaActsAdd._SetCopy := cxGrid1DBBandedTableView1vagon_arenda_acts_id.DataBinding.Field.AsInteger;
  if fmVagonArendaActsAdd.ShowModal = mrOk then
    RefreshQueryGrid(cxGrid1DBBandedTableView1, 'vagon_arenda_acts_id', fmVagonArendaActsAdd._GetActsId);
  fmVagonArendaActsAdd.Free;
  Screen.Cursor := crDefault;
end;

procedure TfmVagonArendaActs.dxBarButton1Click(Sender: TObject);
begin
  Screen.Cursor := crHourglass;
  fmVagonArendaActsAdd := TfmVagonArendaActsAdd.Create(Application, Fconn, Ftype_acts, Ftype_arenda);
  fmVagonArendaActsAdd.cxComboBox1.Properties.ReadOnly := False;
  if fmVagonArendaActsAdd.ShowModal = mrOk then
    RefreshQueryGrid(cxGrid1DBBandedTableView1, 'vagon_arenda_acts_id', fmVagonArendaActsAdd._GetActsId);
  fmVagonArendaActsAdd.Free;
  Screen.Cursor := crDefault;
end;

procedure TfmVagonArendaActs.dxBarButton2Click(Sender: TObject);
begin
  Screen.Cursor := crHourglass;
  fmVagonArendaActsAdd := TfmVagonArendaActsAdd.Create(Application, Fconn, Ftype_acts, Ftype_arenda);
  fmVagonArendaActsAdd.cxComboBox1.Properties.ReadOnly := True;
  fmVagonArendaActsAdd._SetUpdate := cxGrid1DBBandedTableView1vagon_arenda_acts_id.DataBinding.Field.AsInteger;
  if fmVagonArendaActsAdd.ShowModal = mrOk then
    RefreshQueryGrid(cxGrid1DBBandedTableView1, 'vagon_arenda_acts_id', fmVagonArendaActsAdd._GetActsId);
  fmVagonArendaActsAdd.Free;
  Screen.Cursor := crDefault;
end;

procedure TfmVagonArendaActs.dxBarButton38Click(Sender: TObject);
var
  __fmVagonArenda: TfmVagonArenda;
  SP : TADOStoredProc;
  str_vagon_arenda_id : String;
begin
  // Добавить вагоны

  __fmVagonArenda := TfmVagonArenda.CreateDLL(Application, True, Fusr_pwd);
  if __fmVagonArenda.ShowModal = mrOk then begin
    Screen.Cursor := crHourglass;
    try
      try
        SP := TADOStoredProc.Create(nil);
        SP.Connection := Fconn;

        SP.ProcedureName := 'sp_vagon_arenda_validation';
        SP.Parameters.Refresh;
        SP.Parameters.ParamByName('@str_num_vagon').Value := __fmVagonArenda._str_num_vagon;
        SP.ExecProc;

        SP.ProcedureName := 'sp_vagon_arenda_modify_group';
        SP.Parameters.Refresh;

        SP.Parameters.ParamByName('@str_vagon_arenda_id').Value := __fmVagonArenda._str_vagon_arenda_id;

        case Query_VagonArendaActs.FieldByName('vagon_arenda_acts_type').AsInteger of
          0 : SP.Parameters.ParamByName('@act_begin_id').Value := Query_VagonArendaActs.FieldByName('vagon_arenda_acts_id').AsInteger;
          1 : SP.Parameters.ParamByName('@act_end_id').Value := Query_VagonArendaActs.FieldByName('vagon_arenda_acts_id').AsInteger;
        end;

        SP.ExecProc;
        str_vagon_arenda_id := SP.Parameters.ParamByName('@str_vagon_arenda_id').Value;

        SP_VagonArenda.Close;
        SP_VagonArenda.Open;
      except
      end;
    finally
      SP.Free;
    end;
    Screen.Cursor := crDefault;
  end;
end;

procedure TfmVagonArendaActs.dxBarButton39Click(Sender: TObject);
var
  Q : TADOQuery;
begin
  // Удалить вагоны
  if Application.MessageBox('Вы точно хотите удалить выбранные вагоны ?', '', MB_YESNO + MB_ICONQUESTION) = ID_YES then begin
    try
      Q := TADOQuery.Create(nil);
      Q.Connection := Fconn;
      Q.SQL.Add(' UPDATE vagon_arenda2 ');
      case Query_VagonArendaActs.FieldByName('vagon_arenda_acts_type').AsInteger of
       0 : Q.SQL.Add(' SET act_begin_id = NULL ');
       1 : Q.SQL.Add(' SET act_end_id = NULL, __end_id = NULL ');
      end;
      Q.SQL.Add(' WHERE vagon_arenda_id IN (' + cx_GetSelectedValues(cxGrid2, 'vagon_arenda_id') + ')');
      Q.ExecSQL;
    finally
      Q.Free;
    end;
    SP_VagonArenda.Close;
    SP_VagonArenda.Open;
  end;
end;

procedure TfmVagonArendaActs.dxBarButton3Click(Sender: TObject);
var i : integer;
   SP : TADOStoredProc;
begin
  if Application.MessageBox('Вы точно уверены, что хотите удалить?', 'Внимание', MB_OKCANCEL) = ID_OK then begin
    Screen.Cursor := crHourglass;

    SP := TADOStoredProc.Create(nil);
    SP.Connection := Fconn;
    SP.ProcedureName := 'sp_vagon_arenda_acts_modify;1';
    SP.Parameters.Refresh;
    for i := 0 to cxGrid1DBBandedTableView1.Controller.SelectedRowCount - 1 do begin
      SP.Close;
      SP.Parameters.Refresh;
      SP.Parameters.ParamByName('@type_action').Value := 2;
      SP.Parameters.ParamByName('@vagon_arenda_acts_id').Value := cxGrid1DBBandedTableView1.Controller.SelectedRows[i].Values[cxGrid1DBBandedTableView1vagon_arenda_acts_id.Index];

      try
        SP.ExecProc;
      except
      end;
    end;
    RefreshQueryGrid(cxGrid1DBBandedTableView1, 'vagon_arenda_acts_id');
    SP.Free;
    Screen.Cursor := crDefault;
  end;
end;

procedure TfmVagonArendaActs.dxBarButton40Click(Sender: TObject);
var
  retActSettings      : Variant;

  exApp, exWkb, exWks : Variant;
  Query_Act           : TADOQuery;
  Query_tmp           : TADOQuery;
  recNo               : integer;
  acts_id             : Integer;
  acts_date           : TDate;

  str_expeditor       : array [1..2] of string;

  cod_shablon         : integer;
begin
  if cxGrid1DBBandedTableView1vagon_arenda_acts_id.DataBinding.Field.IsNull then
    exit;

  // 388 = 'Акт приема-передачи Вагонов (акт ввода)'
  // 389 = 'Акт приема-передачи Вагонов (акт вsвода)'
  if cxGrid1DBBandedTableView1vagon_arenda_acts_type.DataBinding.Field.AsInteger = 0 then
    cod_shablon := 388
  else
    cod_shablon := 389;

  case cxGrid1DBBandedTableView1type_arenda.DataBinding.Field.AsInteger of
    0, 2: begin
            str_expeditor[1] := 'Арендатор';
            str_expeditor[2] := 'Арендодатель';
          end;
    1, 3: begin
            str_expeditor[1] := 'Арендодатель';
            str_expeditor[2] := 'Арендатор';
          end;
  end;

  acts_id   := cxGrid1DBBandedTableView1vagon_arenda_acts_id.DataBinding.Field.AsInteger;
  acts_date := cxGrid1DBBandedTableView1vagon_arenda_acts_date.DataBinding.Field.AsDateTime;

  retActSettings := SaveActsBeginArenda(Fconn, Fusr_pwd, IntToStr(acts_id), cod_shablon, 1, 0);
  if retActSettings[0] = -9 then
    exit;

  Screen.Cursor := crHourglass;
  ShowTextMessage('Формирование отчёта...', False);

  ShowTextMessage('Запуск Excel ...', False);
  exApp := CreateOleObject('Excel.Application');
  exWkb := exApp.Workbooks.Add(GetDocBlob(Fconn, cod_shablon));
  exWkb := exApp.ActiveWorkbook;
  exWks := exWkb.WorkSheets[1];

  Query_tmp := TADOQuery.Create(nil);
  Query_tmp.Connection := Fconn;
  Query_tmp.SQL.Add('SELECT * FROM view_contract WHERE contract_id = ' + cxGrid1DBBandedTableView1contract_id.DataBinding.Field.AsString);
  Query_tmp.Open;

  // Заполняем шапку и подписи
  exWks.Range['O4'].Value := FormatDateTime('dd.mm.yyyy', retActSettings[3][0]) + 'г.';

  exWks.Range['B6'].Value := '   ' + VarToStr(retActSettings[12][1]) + ', именуемое в дальнейшем "' + str_expeditor[1] +
                             '", в лице ' + VarToStr(retActSettings[4][2]) +
                             ', с одной стороны,';

  exWks.Range['B7'].Value := '   ' + Query_tmp.FieldByName('firm_customer_name_short').AsString + ', именуемое в дальнейшем "' + str_expeditor[2] +
                             '", в лице ' + VarToStr(retActSettings[5][2]) +
                             ', с другой стороны, и вместе в дальнейшем именуемые "Стороны", составили настоящий Акт о нижеследующем:';

  exWks.Range['B15'].Value := '   Настоящий Акт приема-передачи составлен в двух экземплярах по одному для каждой из сторон и является неотъемлемой частью ' +
                              'Договора аренды подвижного состава № ' + Query_tmp.FieldByName('contract_cod').AsString +
                              ' от ' + FormatDateTime('dd.mm.yyyy', Query_tmp.FieldByName('date_begin').AsDateTime) + 'г.';

  exWks.Range['B17'].Value := str_expeditor[1] + ':'#10#10 + VarToStr(retActSettings[12][1]);
  exWks.Range['O17'].Value := str_expeditor[2] + ':'#10#10 + Query_tmp.FieldByName('firm_customer_name_short').AsString;

  Query_tmp.Free;

  // Подписанты
  Query_tmp := TADOQuery.Create(nil);
  Query_tmp.Connection := Fconn;
  Query_tmp.SQL.Add('SELECT firm_contact_id, firm_contact_name');
  Query_tmp.SQL.Add('FROM view_firm_contact');
  Query_tmp.SQL.Add('WHERE firm_contact_id = :firm_contact_id');

  if retActSettings[13][2] = True then begin
    // exWks.Range['B18'].Value := '_______________ / ' + VarToStr(retActSettings[13][1]) + ' /';
    // уникальный случай - подписанты нужны без доверенностей
    // вытащим подписанта по id
    Query_tmp.Parameters.ParamByName('firm_contact_id').Value := retActSettings[13][0];
    Query_tmp.Open;
    exWks.Range['B18'].Value := '_______________ / ' + Query_tmp.FieldByName('firm_contact_name').AsString + ' /';
    Query_tmp.Close;
  end else
    exWks.Range['B18:N18'].ClearContents;
  if retActSettings[13][8] = True then begin
    // exWks.Range['O18'].Value := '_______________ / ' + VarToStr(retActSettings[13][7]) + ' /';
    // уникальный случай - подписанты нужны без доверенностей
    // вытащим подписанта по id
    Query_tmp.Parameters.ParamByName('firm_contact_id').Value := retActSettings[13][6];
    Query_tmp.Open;
    exWks.Range['O18'].Value := '_______________ / ' + Query_tmp.FieldByName('firm_contact_name').AsString + ' /';
    Query_tmp.Close;
  end else
    exWks.Range['O18:AA18'].ClearContents;

  Query_tmp.Free;

  // Автоподбор по высоте
  AutoFitMergeCell(exWks.Range['B6']);
  AutoFitMergeCell(exWks.Range['B7']);
  AutoFitMergeCell(exWks.Range['B15']);

  // Данные акта
  ShowTextMessage('Подготовка данных ...', False);

  Query_Act := TADOQuery.Create(nil);
  Query_Act.Connection := Fconn;
  Query_Act.SQL.Add('select *');
  Query_Act.SQL.Add('from view_vagon_arenda2_upd va ');
  Query_Act.SQL.Add('where ' + IntToStr(acts_id) + ' in (act_begin_id, act_end_id)');
  Query_Act.SQL.Add('order by vagon_arenda_id');

  Query_Act.Open;

  recNo := 1;
  while not Query_Act.Eof do begin
    exWks.Rows[IntToStr(12 + recNo)].Insert;
    exWks.Rows[IntToStr(11 + recNo)].Copy;
    exWks.Rows[IntToStr(12 + recNo)].PasteSpecial(1);

    exWks.Range['B' + IntToStr(11 + recNo)].Value := recNo;
    exWks.Range['D' + IntToStr(11 + recNo)].Value := Query_Act.FieldByName('num_vagon').AsString;
    exWks.Range['K' + IntToStr(11 + recNo)].Value := acts_date;
    if cxGrid1DBBandedTableView1vagon_arenda_acts_type.DataBinding.Field.AsInteger = 0 then
      // акт ввода = станция ввода
      exWks.Range['R' + IntToStr(11 + recNo)].Value := Query_Act.FieldByName('node_begin_name').AsString
    else
      // акт вывода = станция вывода
      exWks.Range['R' + IntToStr(11 + recNo)].Value := Query_Act.FieldByName('node_end_name').AsString;

    inc(recNo);

    ShowTextMessage('Осталось ' + IntToStr(Query_Act.RecordCount - Query_Act.RecNo), False);
    Query_Act.Next;
  end;

  if recNo > 1 then
    exWks.Rows[IntToStr(11 + recNo)].Delete
  else begin
    exWks.Rows[IntToStr(11 + recNo)].ClearContents;
    recNo := 2;
  end;

  Query_Act.Free;

  exWks.Select;
  exWks.Range['A1'].Select;

  Screen.Cursor := crDefault;
  ShowTextMessage('', True);

  SaveActsEnd(Fconn, exWks, retActSettings, IntToStr(acts_id), null);

//  exApp.Visible := True;
  VarClear(exWks); VarClear(exWkb); VarClear(exApp);
end;

procedure TfmVagonArendaActs.dxBarButton41Click(Sender: TObject);
var
  retActSettings      : Variant;

  exApp, exWkb, exWks : Variant;
  Query_Act           : TADOQuery;
  Query_Contract      : TADOQuery;
  Query_Node          : TADOQuery;
  field_node          : string;
  recNo               : integer;
  acts_id             : Integer;
  acts_date           : TDate;

  str_expeditor       : array [1..4] of string;

  cod_shablon         : integer;
begin
  if cxGrid1DBBandedTableView1vagon_arenda_acts_id.DataBinding.Field.IsNull then
    exit;

  // 421 = 'Акт ввода (НТС)'
  // 422 = 'Акт вывода (НТС)'
  if cxGrid1DBBandedTableView1vagon_arenda_acts_type.DataBinding.Field.AsInteger = 0 then begin
    cod_shablon := 421;
    field_node := 'node_begin_id';
  end else begin
    cod_shablon := 422;
    field_node := 'node_end_id';
  end;

  case cxGrid1DBBandedTableView1type_arenda.DataBinding.Field.AsInteger of
    0, 2: begin
            str_expeditor[1] := 'Арендатор';    str_expeditor[3] := 'Арендатора';
            str_expeditor[2] := 'Арендодатель'; str_expeditor[4] := 'Арендодателя';
          end;
    1, 3: begin
            str_expeditor[1] := 'Арендодатель'; str_expeditor[3] := 'Арендодателя';
            str_expeditor[2] := 'Арендатор';    str_expeditor[4] := 'Арендатора';
          end;
  end;

  acts_id   := cxGrid1DBBandedTableView1vagon_arenda_acts_id.DataBinding.Field.AsInteger;
  acts_date := cxGrid1DBBandedTableView1vagon_arenda_acts_date.DataBinding.Field.AsDateTime;

  retActSettings := SaveActsBeginArenda(Fconn, Fusr_pwd, IntToStr(acts_id), cod_shablon, 1, 0);
  if retActSettings[0] = -9 then
    exit;

  Screen.Cursor := crHourglass;
  ShowTextMessage('Формирование отчёта...', False);

  ShowTextMessage('Запуск Excel ...', False);
  exApp := CreateOleObject('Excel.Application');
  exWkb := exApp.Workbooks.Add(GetDocBlob(Fconn, cod_shablon));
  exWkb := exApp.ActiveWorkbook;
  exWks := exWkb.WorkSheets[1];

  Query_Contract := TADOQuery.Create(nil);
  Query_Contract.Connection := Fconn;
  Query_Contract.SQL.Add('SELECT * FROM view_contract WHERE contract_id = ' + cxGrid1DBBandedTableView1contract_id.DataBinding.Field.AsString);
  Query_Contract.Open;

  Query_Act := TADOQuery.Create(nil);
  Query_Act.Connection := Fconn;
  Query_Act.SQL.Add('select *');
  Query_Act.SQL.Add('from view_vagon_arenda2_upd va ');
  Query_Act.SQL.Add('where ' + IntToStr(acts_id) + ' in (act_begin_id, act_end_id)');
  Query_Act.SQL.Add('order by vagon_arenda_id');
  Query_Act.Open;

  Query_Node := TADOQuery.Create(nil);
  Query_Node.Connection := Fconn;
  Query_Node.SQL.Add('select node.inf_obj_name as node_name, road.inf_obj_name_full as road_name');
  Query_Node.SQL.Add('from inf_obj_node node left join inf_obj_road road on node.road_id = road.inf_obj_id');
  Query_Node.SQL.Add('where node.inf_obj_id = :node_id');

  Query_Node.Close;
  Query_Node.Parameters.ParamByName('node_id').Value := Query_Act.FieldByName(field_node).AsInteger;
  Query_Node.Open;

  // Заполняем шапку и подписи
  exWks.Range['acts_date'].Value := FormatDateTime('dd ' + array_month_balance[MonthOf(retActSettings[3][0])] + ' yyyy г.', retActSettings[3][0]);
  exWks.Range['node_name'].Value := 'Ст. ' + Query_Node.FieldByName('node_name').AsString + ', ' + Query_Node.FieldByName('road_name').AsString;

  exWks.Range['B7'].Value := '    ' + Query_Contract.FieldByName('firm_self_name_full').AsString + ' (' + Query_Contract.FieldByName('firm_self_name_short').AsString + '), именуемое в дальнейшем "' + str_expeditor[1] + '",' +
                             ' в лице ' + VarToStr(retActSettings[4][2]) +
                             ', с одной стороны и' +
                             ' ' + Query_Contract.FieldByName('firm_customer_name_full').AsString + ' (' + Query_Contract.FieldByName('firm_customer_name_short').AsString + '), именуемое в дальнейшем "' + str_expeditor[2] + '",' +
                             ' в лице ' + VarToStr(retActSettings[5][2]) +
                             ', вместе именуемые "Стороны", а по отдельности "Сторона",  подписали настоящий Акт о нижеследующем.';
  exWks.Range['B8'].Value := VarToStr(iif(cxGrid1DBBandedTableView1vagon_arenda_acts_type.DataBinding.Field.AsInteger = 0,
                             '    Арендодатель передал, а Арендатор принял',
                             '    Арендатор передал, а Арендодатель принял')) +
                             ' на станции ' + Query_Node.FieldByName('node_name').AsString + ', ' +
                             Query_Node.FieldByName('road_name').AsString + ' вагоны,' +
                             ' в технически исправном и коммерчески пригодном состоянии для перевозки светлых нефтепродуктов' +
                             ' в соответствии с требованиями Договора аренды № ' + Query_Contract.FieldByName('contract_cod').AsString +
                             ' от ' + FormatDateTime('dd.mm.yyyy', Query_Contract.FieldByName('date_begin').AsDateTime) + 'г.:';

  exWks.Range['B15'].Value :='    Общее количество Вагонов, передаваемых в аренду, составляет "' + IntToStr(Query_Act.RecordCount) + '" единиц(ы,а).';

  Query_Contract.Free;

  // Подписанты
  if retActSettings[13][2] = True then begin
    exWks.Range['B17'].Value := 'от ' + str_expeditor[3];
    exWks.Range['B18'].Value := VarToStr(retActSettings[14][1]);
    exWks.Range['B19'].Value := '_______________ / ' + VarToStr(retActSettings[13][1]) + ' /';
  end else
    exWks.Range['B17:K20'].ClearContents;
  if retActSettings[13][8] = True then begin
    exWks.Range['L17'].Value := 'от ' + str_expeditor[4];
    exWks.Range['L18'].Value := VarToStr(retActSettings[14][7]);
    exWks.Range['L19'].Value := '_______________ / ' + VarToStr(retActSettings[13][7]) + ' /';
  end else
    exWks.Range['L17:U20'].ClearContents;

  // Автоподбор по высоте
  AutoFitMergeCell(exWks.Range['B7']);
  AutoFitMergeCell(exWks.Range['B8']);

  // Данные акта
  ShowTextMessage('Подготовка данных ...', False);

  recNo := 1;
  while not Query_Act.Eof do begin
    exWks.Rows[IntToStr(11 + recNo)].Insert;
    exWks.Rows[IntToStr(10 + recNo)].Copy;
    exWks.Rows[IntToStr(11 + recNo)].PasteSpecial(1);

    exWks.Range['B' + IntToStr(10 + recNo)].Value := recNo;
    exWks.Range['D' + IntToStr(10 + recNo)].Value := Query_Act.FieldByName('num_vagon').AsString;
    exWks.Range['R' + IntToStr(10 + recNo)].Value := acts_date;

    Query_Node.Close;
    Query_Node.Parameters.ParamByName('node_id').Value := Query_Act.FieldByName(field_node).AsInteger;
    Query_Node.Open;
    exWks.Range['H' + IntToStr(10 + recNo)].Value := 'Ст. ' + Query_Node.FieldByName('node_name').AsString + ', ' + Query_Node.FieldByName('road_name').AsString;

    inc(recNo);

    ShowTextMessage('Осталось ' + IntToStr(Query_Act.RecordCount - Query_Act.RecNo), False);
    Query_Act.Next;
  end;

  exWks.Rows[IntToStr(10 + recNo)].Delete;
  if recNo > 1 then
    exWks.Rows[IntToStr(10 + recNo)].Delete
  else begin
    exWks.Rows[IntToStr(10 + recNo)].ClearContents;
    recNo := 2;
  end;

  Query_Act.Free;
  Query_Node.Free;

  exWks.Select;
  exWks.Range['A1'].Select;

  Screen.Cursor := crDefault;
  ShowTextMessage('', True);

  SaveActsEnd(Fconn, exWks, retActSettings, IntToStr(acts_id), null);

//  exApp.Visible := True;
  VarClear(exWks); VarClear(exWkb); VarClear(exApp);
end;

procedure TfmVagonArendaActs.dxBarButton4Click(Sender: TObject);
begin
  case TdxBarButton(Sender).ClickItemLink.Owner.Owner.Tag of
    0 : PrintcxGrid(cxGrid1DBBandedTableView1);
    1 : PrintcxGrid(cxGrid2DBBandedTableView1);
 // 2 : PrintcxGrid(cxGrid3DBBandedTableView1);
  end;
end;

procedure TfmVagonArendaActs.dxBarButton5Click(Sender: TObject);
begin
 SetRecordColor('contract_id', cxGrid1DBBandedTableView1, 'VAGON_ARENDA_ACTS', (TMenuItem(Sender).Tag=0));
end;

procedure TfmVagonArendaActs.dxBarButton7Click(Sender: TObject);
begin
  case TdxBarButton(Sender).ClickItemLink.Owner.Owner.Tag of
    0 : SetdxDBGridColumns(cxGrid1DBBandedTableView1);
//    1 : SetdxDBGridColumns(cxGrid2DBBandedTableView1);
//    2 : SetdxDBGridColumns(cxGrid3DBBandedTableView1);
  end;
end;

procedure TfmVagonArendaActs.dxBarButton8Click(Sender: TObject);
begin
  case TdxBarButton(Sender).ClickItemLink.Owner.Owner.Tag of
    0 : cxGrid1DBBandedTableView1.OptionsView.GroupByBox := not cxGrid1DBBandedTableView1.OptionsView.GroupByBox;
    //1 : cxGrid2DBBandedTableView1.OptionsView.GroupByBox := not cxGrid2DBBandedTableView1.OptionsView.GroupByBox;
  //  2 : cxGrid3DBBandedTableView1.OptionsView.GroupByBox := not cxGrid3DBBandedTableView1.OptionsView.GroupByBox;
  end;
end;
procedure TfmVagonArendaActs.dxBarButton20Click(Sender: TObject);
begin
  Screen.Cursor := crHourglass;

  if TControl(Sender).Tag = 1 then begin
    Fdate1 := StartOfTheMonth(IncMonth(Fdate1, 1));
  end;

  if TControl(Sender).Tag = 2 then begin
    Fdate1 := StartOfTheMonth(IncMonth(Fdate1, -1));
  end;

  Fdate2 := IncMonth(Fdate1, 1) - 1;
  dxBarSubItem3.Caption := FormatDateTime('mmmm yyyy', Fdate1);

  PageControl1Change(nil);

  Screen.Cursor := crDefault;
end;

procedure TfmVagonArendaActs.dxBarButton25Click(Sender: TObject);
begin
  fmPeriod := TfmPeriod.Create(Application, Fdate1, Fdate2, 2);
  if fmPeriod.ShowModal = mrOk then begin
    Fdate1 := fmPeriod._GetMonthBegin;
    Fdate2 := fmPeriod._GetMonthEnd;
    dxBarSubItem3.Caption := FormatDateTime('dd.mm.yy', Fdate1) + ' - ' + FormatDateTime('dd.mm.yy', Fdate2);
    dxBarButton9Click(nil);
  end;
end;

procedure TfmVagonArendaActs.dxBarButton9Click(Sender: TObject);
begin
  PageControl1Change(nil);
end;

procedure TfmVagonArendaActs.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
  Fconn := nil;
end;


procedure TfmVagonArendaActs.FormDestroy(Sender: TObject);
begin
  StoreRegistryGrid(rgSave, '\Software\Lis1\VagonArendaActs_Grids', cxGrid1DBBandedTableView1);
  StoreRegistryGrid(rgSave, '\Software\Lis1\VagonArendaActs_Grids', cxGrid2DBBandedTableView1);
end;


procedure TfmVagonArendaActs.PageControl1Change(Sender: TObject);
begin
  Screen.Cursor := crHourglass;

  Ftype_arenda := PageControl1.ActivePageIndex;
  Query_VagonArendaActs.Close;
  Query_VagonArendaActs.Parameters.ParamByName('date1').Value := Fdate1;
  Query_VagonArendaActs.Parameters.ParamByName('date2').Value := Fdate2;
  Query_VagonArendaActs.Parameters.ParamByName('type_arenda').Value := Ftype_arenda;
  Query_VagonArendaActs.Open;

  cxGrid1DBBandedTableView1FocusedRecordChanged(nil, nil, nil, True);

  Screen.Cursor := crDefault;
end;

procedure TfmVagonArendaActs.SetActsDate(acts_date: TDateTime);
begin
  Fdate1 := acts_date - DayOf(acts_date) + 1;
  Fdate2 := Fdate1 + DaysInAMonth(YearOf(Fdate1), MonthOf(Fdate1)) - 1;
  dxBarSubItem3.Caption := FormatDateTime('mmmm yyyy', Fdate1);
  dxBarButton9Click(nil);

  cxGrid1DBBandedTableView1.DataController.Filter.Options := cxGrid1DBBandedTableView1.DataController.Filter.Options + [fcoCaseInsensitive];
  cxGrid1DBBandedTableView1.DataController.Filter.Root.BoolOperatorKind := fboAnd;
  cxGrid1DBBandedTableView1.DataController.Filter.Root.AddItem(cxGrid1DBBandedTableView1vagon_arenda_acts_date, foLike, '%' + DateToStr(acts_date) + '%', '[' + DateToStr(acts_date) + ']');
  cxGrid1DBBandedTableView1.DataController.Filter.Active := True;
end;

procedure TfmVagonArendaActs.SetContractId(contract_id: integer);
var Q: TADOQuery;
begin
  Q := TADOQuery.Create(nil);
  Q.Connection := Fconn;
  Q.SQL.Add('SELECT * FROM view_contract WHERE contract_id = ' + IntToStr(contract_id));
  Q.Open;

//  cxGrid1DBBandedTableView1.DataController.Filter.Clear;
  cxGrid1DBBandedTableView1.DataController.Filter.Options := cxGrid1DBBandedTableView1.DataController.Filter.Options + [fcoCaseInsensitive];
  cxGrid1DBBandedTableView1.DataController.Filter.Root.BoolOperatorKind := fboAnd;
  cxGrid1DBBandedTableView1.DataController.Filter.Root.AddItem(cxGrid1DBBandedTableView1contract_cod, foLike, '%' + Q.FieldByName('contract_cod').AsString + '%', '[' + Q.FieldByName('contract_cod').AsString + ']');
  cxGrid1DBBandedTableView1.DataController.Filter.Active := True;

  Q.Free;
end;

procedure TfmVagonArendaActs.SetActsId(acts_id: integer);
var Q: TADOQuery;
begin
  Q := TADOQuery.Create(nil);
  Q.Connection := Fconn;
  Q.SQL.Add('SELECT * FROM view_vagon_arenda_acts WHERE vagon_arenda_acts_id = ' + IntToStr(acts_id));
  Q.Open;

  if Q.RecordCount > 0 then begin
    Fdate1 := Q.FieldByName('vagon_arenda_acts_date').AsDateTime - DayOf(Q.FieldByName('vagon_arenda_acts_date').AsDateTime) + 1;
    Fdate2 := Fdate1 + DaysInAMonth(YearOf(Fdate1), MonthOf(Fdate1)) - 1;
    dxBarSubItem3.Caption := FormatDateTime('mmmm yyyy', Fdate1);

    cxGrid1DBBandedTableView1.DataController.Filter.Options := cxGrid1DBBandedTableView1.DataController.Filter.Options + [fcoCaseInsensitive];
    cxGrid1DBBandedTableView1.DataController.Filter.Root.BoolOperatorKind := fboAnd;
    cxGrid1DBBandedTableView1.DataController.Filter.Root.AddItem(cxGrid1DBBandedTableView1vagon_arenda_acts_id, foLike, '%' + Q.FieldByName('vagon_arenda_acts_id').AsString + '%', '[' + Q.FieldByName('vagon_arenda_acts_id').AsString + ']');
    cxGrid1DBBandedTableView1.DataController.Filter.Active := True;
    PageControl1.ActivePageIndex := Q.FieldByName('type_arenda').AsInteger;
    PageControl1Change(nil);
  end;

  Q.Free;
end;

procedure TfmVagonArendaActs.SetShowVagon(set_show_vagon: boolean);
begin
  dxBarButton12.Down := set_show_vagon;
  cxGroupBox1.Visible := dxBarButton12.Down;
  Splitter1.Visible := dxBarButton12.Down;
  cxGrid1DBBandedTableView1FocusedRecordChanged(nil, nil, nil, True);
end;

procedure TfmVagonArendaActs.SetOpenDLL(set_open_dll: boolean);
begin
  if set_open_dll = True then begin
    dxBarButton1.Enabled := False;
    dxBarButton2.Enabled := False;
    dxBarButton3.Enabled := False;
    dxBarButton14.Enabled := False;
  end;
end;

initialization
  dxInitialize;
finalization
  dxFinalize;


end.
