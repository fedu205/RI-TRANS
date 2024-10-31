unit FindVagonGU12;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ADODB, Default, ExtCtrls, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, cxDBData, cxGridCustomTableView, cxGridTableView,
  cxGridBandedTableView, cxGridDBBandedTableView, cxGridCustomView, cxClasses,
  cxGridLevel, cxGrid, Raznoe, StdCtrls, DBClient, Grids, DBGrids, Other,
  cxCalendar, cxCurrencyEdit, cxCheckBox, dxBar, ImgList, cxContainer,
  cxTextEdit, cxPropertiesStore, dxSkinsCore, dxSkinBlack, dxSkinBlue,
  dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMetropolis,
  dxSkinMetropolisDark, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue,
  dxSkinOffice2010Silver, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray,
  dxSkinOffice2013White, dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic,
  dxSkinSharp, dxSkinSharpPlus, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinTheAsphaltWorld, dxSkinsDefaultPainters,
  dxSkinValentine, dxSkinVS2010, dxSkinWhiteprint, dxSkinXmas2008Blue,
  dxSkinscxPCPainter, cxNavigator, dxSkinsdxBarPainter,
  dxSkinOffice2016Colorful, dxSkinOffice2016Dark, dxSkinVisualStudio2013Blue,
  dxSkinVisualStudio2013Dark, dxSkinVisualStudio2013Light, System.ImageList, dxSkinTheBezier, cxDataControllerConditionalFormattingRulesManagerDialog, cxImageList, dxDateRanges,
  dxSkinOffice2019Colorful;

type
  TfmFindVagonGU12 = class(TForm)
    Connect: TADOConnection;
    ConnectEtran: TADOConnection;
    DS_GU12_vagon_count: TDataSource;
    Panel2: TPanel;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    cxGrid1DBBandedTableView1: TcxGridDBBandedTableView;
    Client_Calc: TClientDataSet;
    Splitter1: TSplitter;
    cxGrid1DBBandedTableView1claim_id: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1ClaimID: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1claimStateID: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1claimState: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1claimNumber: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1clmSenderName: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1otprFreightCode: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1otprFreightName: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1clmFromStationName: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1clmFromStationCode: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1gpPodDate: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1gpWeight: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1gpCarCount: TcxGridDBBandedColumn;
    SP_GU12_vagon_count: TADOStoredProc;
    cxGrid1DBBandedTableView1otprStyk_id: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1cnt_vagon: TcxGridDBBandedColumn;
    Client_Calcn1: TStringField;
    Client_Calcn2: TStringField;
    Client_Calcd: TIntegerField;
    SP_GU12_vagon_detail: TADOStoredProc;
    DS_GU12_vagon_detail: TDataSource;
    cxGrid2: TcxGrid;
    cxGridDBBandedTableView1: TcxGridDBBandedTableView;
    cxGrid1DBBandedTableView1fact_id: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1num_vagon: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1num_document_pref: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1num_document: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1date_from_to: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1date_ready: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1datpr: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1bargain_cod: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1firm_customer_name: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1contract_cod: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1num_konten: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1fact_weight: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1kargo_capacity: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1calc_weight: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1transport_pay: TcxGridDBBandedColumn;
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
    cxGrid1DBBandedTableView1fkv: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1xml_reply_id: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1global_color: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1date_delivery: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1payer_cod: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1claim_num: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1set_zfto_agree: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1etran_fact_load: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1etran_date_departure: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1etran_date_arrive: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1etran_date_delivery: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1road_begin_name: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1road_end_name: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1plan_client_id: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1etran_owner_name: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1kateg_send_name: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1els_cod: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1etran_date_register: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1etran_date_receiving: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1etran_SenderOKPO: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1etran_SenderName: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1etran_RecipOKPO: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1etran_RecipName: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1etran_date_expire: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1date_period_finance_name: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1etran_SendKind: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1etran_invRouteName: TcxGridDBBandedColumn;
    cxGridLevel1: TcxGridLevel;
    cxGrid1DBBandedTableView1str_fact_id: TcxGridDBBandedColumn;
    dxBarManager1: TdxBarManager;
    dxBarPopupMenu1: TdxBarPopupMenu;
    dxBarButton1: TdxBarButton;
    dxBarSubItem1: TdxBarSubItem;
    dxBarButton2: TdxBarButton;
    dxBarButton3: TdxBarButton;
    dxBarButton4: TdxBarButton;
    dxBarButton5: TdxBarButton;
    dxBarPopupMenu2: TdxBarPopupMenu;
    dxBarButton6: TdxBarButton;
    dxBarSubItem2: TdxBarSubItem;
    dxBarButton7: TdxBarButton;
    dxBarButton8: TdxBarButton;
    dxBarButton9: TdxBarButton;
    dxBarButton10: TdxBarButton;
    cxGridDBBandedTableView1distance: TcxGridDBBandedColumn;
    cxGridDBBandedTableView1gpPodDate: TcxGridDBBandedColumn;
    cxGridDBBandedTableView1datpr_claim: TcxGridDBBandedColumn;
    dxBarButton11: TdxBarButton;
    dxBarButton12: TdxBarButton;
    cxImageList1: TcxImageList;
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
    dxBarButton13: TdxBarButton;
    cxPropertiesStore1: TcxPropertiesStore;
    dxBarManager1Bar1: TdxBar;
    dxBarButton14: TdxBarButton;
    cxPropertiesStore2: TcxPropertiesStore;
    cxGrid1DBBandedTableView1days_load: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1speed: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1around: TcxGridDBBandedColumn;
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
    procedure cxGrid1DBBandedTableView1FocusedRecordChanged(
      Sender: TcxCustomGridTableView; APrevFocusedRecord,
      AFocusedRecord: TcxCustomGridRecord;
      ANewItemRecordFocusingChanged: Boolean);
    procedure cxGridDBBandedTableView1FilterOnChanged(Sender: TObject);
    procedure dxBarButton1Click(Sender: TObject);
    procedure dxBarButton2Click(Sender: TObject);
    procedure dxBarButton3Click(Sender: TObject);
    procedure dxBarButton4Click(Sender: TObject);
    procedure dxBarButton5Click(Sender: TObject);
    procedure dxBarButton6Click(Sender: TObject);
    procedure dxBarButton7Click(Sender: TObject);
    procedure dxBarButton8Click(Sender: TObject);
    procedure dxBarButton9Click(Sender: TObject);
    procedure dxBarButton10Click(Sender: TObject);
    procedure cxGridDBBandedTableView1CustomDrawCell(
      Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
      AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
    procedure cxGridDBBandedTableView1KeyPress(Sender: TObject; var Key: Char);
    procedure dxBarButton13Click(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure dxBarButton14Click(Sender: TObject);
  private
    Fusr_pwd  : PUser_pwd;
    Fstr_otprStyk_id : string;
    Faround    : integer;
    Fspeed     : integer;
    Fdays_load : integer;
    procedure RefreshProc();
  public
    constructor Create(AOwner: TApplication; usr_pwd: PUser_pwd); reintroduce;
  end;

var
  fmFindVagonGU12: TfmFindVagonGU12;

function CreateWndFindVagonGU12(AppHand: THandle; usr_pwd: PUser_pwd): variant; export;

implementation

uses FindVagonGU12Wizard;

{$R *.dfm}

function GetEtranConnect(users_group_cod: string; usr_pwd: PUser_pwd): string;
var   login : string;
    db_name : string;
begin
  if users_group_cod =  '0' then begin login := 'Etran_GRU'; db_name := 'lis_etran'; end;
//  if users_group_cod =  '1' then begin login := 'Etran_KHT'; db_name := 'lis_etran'; end;
//  if users_group_cod =  '3' then begin login := 'Etran_PRV'; db_name := 'lis_etran'; end;
//  if users_group_cod =  '5' then begin login := 'Etran_STS'; db_name := 'lis_etran'; end;
//  if users_group_cod =  '6' then begin login := 'Etran_KAZ'; db_name := 'lis_etran'; end;
//  if users_group_cod =  '7' then begin login := 'Etran_RTR'; db_name := 'lis_etran'; end;
//  if users_group_cod =  '9' then begin login := 'Etran_SMT'; db_name := 'lis_cont_etran'; end;
//  if users_group_cod = '30' then begin login := 'Etran_SNN'; db_name := 'lis_etran'; end;
//  if users_group_cod = '16' then begin login := 'Etran_ITL'; db_name := 'lis_itek_etran'; end;
//  if users_group_cod = '18' then begin login := 'Etran_ILG'; db_name := 'lis_etran'; end;
//  if users_group_cod = '17' then begin login := 'Etran_DEMO'; db_name := 'lis_etran'; end;
//  if users_group_cod = '19' then begin login := 'Etran_LGT'; db_name := 'lis_etran'; end;
//  if users_group_cod = '20' then begin login := 'Etran_RZL'; db_name := 'lis_etran'; end;
//  if users_group_cod = '21' then begin login := 'Etran_SMT'; db_name := 'lis_etran'; end;
//  if users_group_cod = '27' then begin login := 'Etran_NGS'; db_name := 'lis_etran'; end;

  Result := 'Persist Security Info=True;Provider=SQLOLEDB.1;User ID='+login+';Password='+'etran'+';Initial Catalog='+db_name+';Data Source='+usr_pwd^.server+';';
end;

function CreateWndFindVagonGU12(AppHand: THandle; usr_pwd: PUser_pwd): variant;
begin
  Forms.Application.Handle := AppHand;
  fmFindVagonGU12 := TfmFindVagonGU12.Create(Forms.Application, usr_pwd);
  try
    fmFindVagonGU12.ShowModal;
    result := VarArrayOf([-9]);
  finally
    fmFindVagonGU12.Free;
  end;
end;

constructor TfmFindVagonGU12.Create(AOwner: TApplication; usr_pwd: PUser_pwd);
var Q: TADOQuery;
begin
  Screen.Cursor := crHourglass;
  inherited Create(AOwner);

  Fusr_pwd := usr_pwd;

  Connect.ConnectionString := 'Persist Security Info=True;Provider=SQLOLEDB.1;User ID='+usr_pwd^.user_name+';Password='+usr_pwd^.user_pass+';Initial Catalog='+usr_pwd^.catalog+';Data Source='+usr_pwd^.server+';';
  Connect.Connected := True;

  Q := TADOQuery.Create(nil);
  Q.Connection := Connect;
  Q.SQL.Add('SELECT	inf_obj_cod as users_group_cod');
  Q.SQL.Add('FROM	  users INNER JOIN inf_obj on users.users_group_id = inf_obj.inf_obj_id');
  Q.SQL.Add('WHERE	users_name = system_user');
  Q.Open;


  cxGrid1DBBandedTableView1bargain_cod.Styles.Content := cxStyle_Agree_bargain_cod;
  cxGrid1DBBandedTableView1firm_customer_name.Styles.Content := cxStyle_Agree_bargain_cod;
  cxGrid1DBBandedTableView1contract_cod.Styles.Content := cxStyle_Agree_bargain_cod;
  cxGrid1DBBandedTableView1transport_pay.Styles.Content := cxStyle_AgreeFactInc_Sum;
  cxGrid1DBBandedTableView1date_period_finance_name.Styles.Content := cxStyle_Agree_bargain_cod;

  ConnectEtran.ConnectionString := GetEtranConnect(Q.FieldByName('users_group_cod').AsString, usr_pwd);
  ConnectEtran.Connected := True;

  Client_Calc.CreateDataSet;
  Client_Calc.LogChanges := False;

  StoreRegistryGrid(rgLoad,'\Software\Lis1\FindVagonGU12_Grids', cxGrid1DBBandedTableView1);
  StoreRegistryGrid(rgLoad,'\Software\Lis1\FindVagonGU12_Grids', cxGridDBBandedTableView1);

  fmFindVagonGU12Wizard := TfmFindVagonGU12Wizard.Create(Application, Fusr_pwd);
  if fmFindVagonGU12Wizard.ShowModal = mrOk then begin
    Fstr_otprStyk_id := fmFindVagonGU12Wizard._GetStrotprStykID;
    Faround     := fmFindVagonGU12Wizard._GetAround;
    Fspeed      := fmFindVagonGU12Wizard._GetSpeed;
    Fdays_load  := fmFindVagonGU12Wizard._GetDaysLoad;
    RefreshProc;
  end else begin
    Fstr_otprStyk_id := '';
    Faround     := 0;
    Fspeed      := 0;
    Fdays_load  := 0;
  end;

  Q.Free;
  Screen.Cursor := crDefault;
end;



procedure TfmFindVagonGU12.cxGrid1DBBandedTableView1CustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
  if AViewInfo.GridRecord.Selected then begin
    ACanvas.Brush.Color := clNavy;
    ACanvas.Font.Color := clWhite;
    if AViewInfo.Focused then ACanvas.Brush.Color := clBlue;
  end;
end;

procedure TfmFindVagonGU12.cxGrid1DBBandedTableView1CustomDrawColumnHeader(
  Sender: TcxGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridColumnHeaderViewInfo; var ADone: Boolean);
begin
	if AViewInfo.Column.Focused then begin
		ACanvas.Brush.Color := clNavy;
		ACanvas.Font.Color := clWhite;
	end;
end;

procedure TfmFindVagonGU12.cxGrid1DBBandedTableView1FilterOnChanged(
  Sender: TObject);
begin
	DrawcxGridColumnOnFiltered(Sender);
end;

procedure TfmFindVagonGU12.cxGrid1DBBandedTableView1FocusedItemChanged(
  Sender: TcxCustomGridTableView; APrevFocusedItem,
  AFocusedItem: TcxCustomGridTableItem);
begin
	cxGrid1DBBandedTableView1.Painter.Invalidate;
end;

procedure TfmFindVagonGU12.cxGrid1DBBandedTableView1FocusedRecordChanged(
  Sender: TcxCustomGridTableView; APrevFocusedRecord,
  AFocusedRecord: TcxCustomGridRecord; ANewItemRecordFocusingChanged: Boolean);
begin
  Screen.Cursor := crHourglass;
  SP_GU12_vagon_detail.Close;
//  ADOQuery1.Close;
  if (AFocusedRecord<>nil) AND ((cxGrid1DBBandedTableView1.GroupedColumnCount = 0) OR (AFocusedRecord.Level <> 0)) AND
     (AFocusedRecord.Values[cxGrid1DBBandedTableView1otprStyk_id.Index]<>null) AND
     (AFocusedRecord.Values[cxGrid1DBBandedTableView1str_fact_id.Index]<>null) then begin

    SP_GU12_vagon_detail.Parameters.Refresh;
    SP_GU12_vagon_detail.Parameters.ParamByName('@otprStyk_id').Value := AFocusedRecord.Values[cxGrid1DBBandedTableView1otprStyk_id.Index];
    SP_GU12_vagon_detail.Parameters.ParamByName('@speed'      ).Value := Fspeed;//cxCurrencyEdit3.EditValue;
    SP_GU12_vagon_detail.Parameters.ParamByName('@days_load'  ).Value := Fdays_load;//cxCurrencyEdit1.EditValue;
    SP_GU12_vagon_detail.Parameters.ParamByName('@node_xml'   ).Value := DataXMLToSQL(Client_Calc);
    SP_GU12_vagon_detail.Parameters.ParamByName('@str_fact_id').Value := AFocusedRecord.Values[cxGrid1DBBandedTableView1str_fact_id.Index];
    SP_GU12_vagon_detail.Open;
  end;
  Screen.Cursor := crDefault;
end;

procedure TfmFindVagonGU12.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TfmFindVagonGU12.FormDestroy(Sender: TObject);
begin
  StoreRegistryGrid(rgSave,'\Software\Lis1\FindVagonGU12_Grids', cxGrid1DBBandedTableView1);
  StoreRegistryGrid(rgSave,'\Software\Lis1\FindVagonGU12_Grids', cxGridDBBandedTableView1);
end;

procedure TfmFindVagonGU12.cxGridDBBandedTableView1CustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
  if (AViewInfo.GridRecord.Values[cxGrid1DBBandedTableView1global_color.Index]<>NULL) then
      ACanvas.Brush.Color := AViewInfo.GridRecord.Values[cxGrid1DBBandedTableView1global_color.Index];

  if (cxGrid1DBBandedTableView1doc_date_last_oper.Index = AViewInfo.Item.ID) then begin
    ACanvas.Brush.Color := clInfoBk;
    ACanvas.Font.Color  := clInfoText;
  end;

  if (cxGrid1DBBandedTableView1etran_folder.Index = AViewInfo.Item.ID) then begin
    if AViewInfo.GridRecord.Values[cxGrid1DBBandedTableView1etran_folder.Index] <> 'Заготовка'       then ACanvas.Font.Style := [fsBold];
    if AViewInfo.GridRecord.Values[cxGrid1DBBandedTableView1etran_folder.Index] = 'Не действительны' then ACanvas.Font.Color := clRed;
  end;

  if AViewInfo.GridRecord.Values[cxGrid1DBBandedTableView1etran_folder.Index] = 'Заготовка' then ACanvas.Font.Color := clGray;

  if AViewInfo.GridRecord.Selected then begin
    ACanvas.Brush.Color := clNavy;
    ACanvas.Font.Color := clWhite;
    if AViewInfo.Focused then ACanvas.Brush.Color := clBlue;
  end;
end;

procedure TfmFindVagonGU12.cxGridDBBandedTableView1FilterOnChanged(
  Sender: TObject);
begin
	DrawcxGridColumnOnFiltered(Sender);
end;

procedure TfmFindVagonGU12.cxGridDBBandedTableView1KeyPress(Sender: TObject;
  var Key: Char);
begin
	FilterColumnGridOnKeyPress(cxGrid1DBBandedTableView1, Key);
end;

procedure TfmFindVagonGU12.dxBarButton10Click(Sender: TObject);
begin
	cxGridDBBandedTableView1.Filtering.ColumnFilteredItemsList := not dxBarButton10.Down;
end;

procedure TfmFindVagonGU12.RefreshProc();
var Q: TADOQuery;
    ClientDS : TClientDataSet;
begin
  if Fstr_otprStyk_id = '' then Fstr_otprStyk_id := '-9';
  ShowTextMessage('Поиск заявок...', False);
  ClientDS := TClientDataSet.Create(nil);
  ClientDS.FieldDefs.Add('node_begin_cod',  ftString, 50); // станция отправления
  ClientDS.FieldDefs.Add('node_end_cod',    ftString, 50); // станция назначения
  ClientDS.FieldDefs.Add('distance',        ftInteger  );  // Расстояние (возвращаемый параметр)
  ClientDS.CreateDataSet;
  ClientDS.LogChanges := False;


  Client_Calc.DisableControls;
  Client_Calc.EmptyDataSet;

  Q := TADOQuery.Create(nil);
  Q.Connection := ConnectEtran;
  Q.SQL.Add('SELECT	DISTINCT clmFromStationCode as node_cod');
  Q.SQL.Add('FROM	claim');
  Q.SQL.Add('		inner join clmOtpr on claim.claim_id = clmOtpr.claim_id');
  Q.SQL.Add('		inner join otprGraphPod on otprGraphPod.clmOtpr_id = clmOtpr.clmOtpr_id');
  Q.SQL.Add('		inner join etran_global_id on claim.claim_id = etran_global_id.global_id');
  Q.SQL.Add('WHERE otprStyk_id in (' + Fstr_otprStyk_id + ')');
//  Q.SQL.Add('WHERE	gpPodDate >= convert(varchar(8), getdate(), 112)');
//  Q.SQL.Add('AND users_owner_id in (SELECT users2.users_id FROM etran_users users1 inner join etran_users users2 on users1.users_group_id = users2.users_group_id WHERE users1.users_name = system_user)');
  Q.Open;



  ShowTextMessage('Поиск ближайших станций...', False);
  while not Q.Eof do begin
    ClientDS.EmptyDataSet;
    StationFindAround(ClientDS, Q.FieldByName('node_cod').AsString, Faround);

    Client_Calc.Append;
    Client_Calc.FieldByName('n1').Value := Q.FieldByName('node_cod').AsString;
    Client_Calc.FieldByName('n2').Value := Q.FieldByName('node_cod').AsString;
    Client_Calc.FieldByName('d' ).Value := 0;
    Client_Calc.Post;

    ClientDS.First;
    while not ClientDS.Eof do begin
      Client_Calc.Append;
      Client_Calc.FieldByName('n1').Value := ClientDS.FieldByName('node_begin_cod').Value;
      Client_Calc.FieldByName('n2').Value := ClientDS.FieldByName('node_end_cod').Value;
      Client_Calc.FieldByName('d' ).Value := ClientDS.FieldByName('distance').Value;
      Client_Calc.Post;
      ClientDS.Next;
    end;

    Q.Next;
    ShowTextMessage('Поиск ближайших станций...' + #10 + 'Осталось ' + IntToStr(Q.RecordCount - Q.RecNo) + ' из ' + IntToStr(Q.RecordCount) + '...' , False);
  end;

  ShowTextMessage('Анализ заявок...', False);
  sp_GU12_vagon_count.Close;
  sp_GU12_vagon_count.Parameters.Refresh;
  sp_GU12_vagon_count.Parameters.ParamByName('@speed'    ).Value := Fspeed;
  sp_GU12_vagon_count.Parameters.ParamByName('@days_load').Value := Fdays_load;
  sp_GU12_vagon_count.Parameters.ParamByName('@str_otprStyk_id').Value := Fstr_otprStyk_id;
  sp_GU12_vagon_count.Parameters.ParamByName('@node_xml' ).Value := DataXMLToSQL(Client_Calc);
  sp_GU12_vagon_count.Open;

  ClientDS.Free;
  Q.Free;
  ShowTextMessage;
end;

procedure TfmFindVagonGU12.dxBarButton13Click(Sender: TObject);
begin
  FindInEtranInvoice(Connect, Fusr_pwd, cxGrid1DBBandedTableView1claim_id.DataBinding.Field.AsInteger, -9, -9);
end;

procedure TfmFindVagonGU12.dxBarButton14Click(Sender: TObject);
begin
  fmFindVagonGU12Wizard := TfmFindVagonGU12Wizard.Create(Application, Fusr_pwd);
  fmFindVagonGU12Wizard._SetStrotprStykID := Fstr_otprStyk_id;
  fmFindVagonGU12Wizard._SetAround        := Faround;
  fmFindVagonGU12Wizard._SetSpeed         := Fspeed;
  fmFindVagonGU12Wizard._SetDaysLoad      := Fdays_load;
  if fmFindVagonGU12Wizard.ShowModal = mrOk then begin
    Fstr_otprStyk_id := fmFindVagonGU12Wizard._GetStrotprStykID;
    Faround     := fmFindVagonGU12Wizard._GetAround;
    Fspeed      := fmFindVagonGU12Wizard._GetSpeed;
    Fdays_load  := fmFindVagonGU12Wizard._GetDaysLoad;
    RefreshProc;
  end;
end;

procedure TfmFindVagonGU12.dxBarButton1Click(Sender: TObject);
begin
	PrintcxGrid(cxGrid1DBBandedTableView1);
end;

procedure TfmFindVagonGU12.dxBarButton2Click(Sender: TObject);
begin
	SetdxDBGridColumns(cxGrid1DBBandedTableView1);
end;

procedure TfmFindVagonGU12.dxBarButton3Click(Sender: TObject);
begin
	cxGrid1DBBandedTableView1.OptionsView.GroupByBox := not cxGrid1DBBandedTableView1.OptionsView.GroupByBox;
end;

procedure TfmFindVagonGU12.dxBarButton4Click(Sender: TObject);
begin
	FiltercxGrid4ListID(cxGrid1DBBandedTableView1);
end;

procedure TfmFindVagonGU12.dxBarButton5Click(Sender: TObject);
begin
	cxGrid1DBBandedTableView1.Filtering.ColumnFilteredItemsList := not dxBarButton5.Down;
end;

procedure TfmFindVagonGU12.dxBarButton6Click(Sender: TObject);
begin
	PrintcxGrid(cxGridDBBandedTableView1);
end;

procedure TfmFindVagonGU12.dxBarButton7Click(Sender: TObject);
begin
	SetdxDBGridColumns(cxGridDBBandedTableView1);
end;

procedure TfmFindVagonGU12.dxBarButton8Click(Sender: TObject);
begin
	cxGridDBBandedTableView1.OptionsView.GroupByBox := not cxGridDBBandedTableView1.OptionsView.GroupByBox;
end;

procedure TfmFindVagonGU12.dxBarButton9Click(Sender: TObject);
begin
	FiltercxGrid4ListID(cxGridDBBandedTableView1);
end;

end.
