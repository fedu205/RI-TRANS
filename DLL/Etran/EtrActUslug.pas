unit EtrActUslug;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, dxSkinsCore, dxSkinBlack, dxSkinBlue,
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
  dxSkinTheAsphaltWorld, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark, Raznoe, Default,
  dxSkinVisualStudio2013Light, dxSkinVS2010, dxSkinWhiteprint, Period,
  dxSkinXmas2008Blue, dxSkinsdxBarPainter, cxStyles, cxClasses, dxBar,
  System.ImageList, Vcl.ImgList, cxGraphics, dxSkinscxPCPainter,
  dxBarBuiltInMenu, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxPC,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator, Data.DB,
  cxDBData, cxContainer, dxSkinsForm, cxSplitter, cxGroupBox, cxGridLevel,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGrid, cxGridBandedTableView, cxGridDBBandedTableView, Data.Win.ADODB,
  cxCurrencyEdit, cxCalendar, cxImageList,
  cxDataControllerConditionalFormattingRulesManagerDialog, dxSkinTheBezier, dxDateRanges, dxSkinOffice2019Colorful;

type
  TfmEtrActUslug = class(TForm)
    cxImageList1: TcxImageList;
    dxBarManager1: TdxBarManager;
    dxBarManager1Bar1: TdxBar;
    dxBarButton1: TdxBarButton;
    dxBarSubItem2: TdxBarSubItem;
    dxBarButton2: TdxBarButton;
    dxBarButton3: TdxBarButton;
    dxBarButton4: TdxBarButton;
    dxBarButton5: TdxBarButton;
    cxPageControl1: TcxPageControl;
    cxTabSheet1: TcxTabSheet;
    cxTabSheet2: TcxTabSheet;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    cxGroupBox1: TcxGroupBox;
    cxSplitter1: TcxSplitter;
    cxLookAndFeelController1: TcxLookAndFeelController;
    dxSkinController1: TdxSkinController;
    cxGrid2Level1: TcxGridLevel;
    cxGrid2: TcxGrid;
    cxGrid1DBBandedTableView1: TcxGridDBBandedTableView;
    cxGrid2DBBandedTableView1: TcxGridDBBandedTableView;
    ADOEtran: TADOConnection;
    Query_ZFTO_SCORE: TADOQuery;
    DS_ZFTO_SCORE: TDataSource;
    cxGrid1DBBandedTableView1zfto_score_id: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1zfto_score_act_id: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1fact_num: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1fact_num_c: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1fact_date: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1date_load_month: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1date_load_year: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1date_load: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1file_load: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1numact_cor: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1datact_cor: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1service_kind_name: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1locco: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1number_act: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1date_act: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1inn: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1kpp: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1deb_name: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1num_contr: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1agent_deb_name: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1agent_inn: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1agent_kpp: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1sum_rub: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1sum_usd: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1waers: TcxGridDBBandedColumn;
    dxBarButton6: TdxBarButton;
    dxBarSubItem3: TdxBarSubItem;
    dxBarButton7: TdxBarButton;
    dxBarButton8: TdxBarButton;
    dxBarButton9: TdxBarButton;
    dxBarSubItem4: TdxBarSubItem;
    dxBarButton10: TdxBarButton;
    dxBarButton11: TdxBarButton;
    cxStyleRepository22: TcxStyleRepository;
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
    Query_ZFTO_SCORE_TABLE: TADOQuery;
    DS_ZFTO_SCORE_TABLE: TDataSource;
    cxGrid2DBBandedTableView1zfto_score_table_id: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1zfto_score_id: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1number_doc: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1vagon_num: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1cont_num: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1date_dep: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1date_serv: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1sum_rub: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1nds_rub: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1sum_usd: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1nds_usd: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1carddoctyp: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1fr_weight: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1fr_code: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1st_src_name: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1st_src: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1st_tgt_name: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1st_tgt: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1ktgrm_text: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1date_pr: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1waers: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1invoiceid: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1vidsoob: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1type_tr: TcxGridDBBandedColumn;
    cxGrid5: TcxGrid;
    cxGrid5DBBandedTableView1: TcxGridDBBandedTableView;
    cxGrid5DBBandedTableView1zfto_score_table_id: TcxGridDBBandedColumn;
    cxGrid5DBBandedTableView1zfto_score_id: TcxGridDBBandedColumn;
    cxGrid5DBBandedTableView1zfto_score_act_id: TcxGridDBBandedColumn;
    cxGrid5DBBandedTableView1number_doc: TcxGridDBBandedColumn;
    cxGrid5DBBandedTableView1vagon_num: TcxGridDBBandedColumn;
    cxGrid5DBBandedTableView1st_src_name: TcxGridDBBandedColumn;
    cxGrid5DBBandedTableView1st_tgt_name: TcxGridDBBandedColumn;
    cxGrid5DBBandedTableView1ktgrm_text: TcxGridDBBandedColumn;
    cxGrid5DBBandedTableView1date_dep: TcxGridDBBandedColumn;
    cxGrid5DBBandedTableView1date_serv: TcxGridDBBandedColumn;
    cxGrid5DBBandedTableView1sum_wnds_rub: TcxGridDBBandedColumn;
    cxGrid5DBBandedTableView1nds_rub: TcxGridDBBandedColumn;
    cxGrid5DBBandedTableView1sum_rub: TcxGridDBBandedColumn;
    cxGrid5DBBandedTableView1sum_wnds_usd: TcxGridDBBandedColumn;
    cxGrid5DBBandedTableView1nds_usd: TcxGridDBBandedColumn;
    cxGrid5DBBandedTableView1sum_usd: TcxGridDBBandedColumn;
    cxGrid5DBBandedTableView1fact_num: TcxGridDBBandedColumn;
    cxGrid5DBBandedTableView1fact_date: TcxGridDBBandedColumn;
    cxGrid5DBBandedTableView1carddoctyp: TcxGridDBBandedColumn;
    cxGrid5DBBandedTableView1st_src: TcxGridDBBandedColumn;
    cxGrid5DBBandedTableView1st_tgt: TcxGridDBBandedColumn;
    cxGrid5DBBandedTableView1cont_num: TcxGridDBBandedColumn;
    cxGrid5DBBandedTableView1fr_code: TcxGridDBBandedColumn;
    cxGrid5DBBandedTableView1fr_weight: TcxGridDBBandedColumn;
    cxGrid5DBBandedTableView1number_act: TcxGridDBBandedColumn;
    cxGrid5DBBandedTableView1date_act: TcxGridDBBandedColumn;
    cxGrid5DBBandedTableView1num_contr: TcxGridDBBandedColumn;
    cxGrid5DBBandedTableView1numact_cor: TcxGridDBBandedColumn;
    cxGrid5DBBandedTableView1datact_cor: TcxGridDBBandedColumn;
    cxGrid5DBBandedTableView1date_load_month: TcxGridDBBandedColumn;
    cxGrid5DBBandedTableView1date_load_year: TcxGridDBBandedColumn;
    cxGrid5DBBandedTableView1waers: TcxGridDBBandedColumn;
    cxGrid5DBBandedTableView1serv_code: TcxGridDBBandedColumn;
    cxGrid5DBBandedTableView1invoiceid: TcxGridDBBandedColumn;
    cxGrid5Level1: TcxGridLevel;
    dxBarButton12: TdxBarButton;
    dxBarPopupMenu1: TdxBarPopupMenu;
    dxBarButton13: TdxBarButton;
    dxBarSubItem5: TdxBarSubItem;
    dxBarButton14: TdxBarButton;
    dxBarButton15: TdxBarButton;
    dxBarPopupMenu2: TdxBarPopupMenu;
    dxBarButton16: TdxBarButton;
    dxBarSubItem6: TdxBarSubItem;
    dxBarButton17: TdxBarButton;
    dxBarButton18: TdxBarButton;
    dxBarPopupMenu3: TdxBarPopupMenu;
    dxBarButton19: TdxBarButton;
    dxBarSubItem7: TdxBarSubItem;
    dxBarButton20: TdxBarButton;
    dxBarButton21: TdxBarButton;
    Query_ZFTO_SCORE_PERIOD: TADOQuery;
    DS_ZFTO_SCORE_PERIOD: TDataSource;
    cxGrid1DBBandedTableView1five_days_zfto: TcxGridDBBandedColumn;
    cxGrid5DBBandedTableView1five_days_zfto: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1ELS_cod: TcxGridDBBandedColumn;
    cxGrid5DBBandedTableView1ELS_cod: TcxGridDBBandedColumn;
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
    procedure cxGrid5DBBandedTableView1FilterOnChanged(Sender: TObject);
    procedure cxGrid5DBBandedTableView1CustomDrawCell(
      Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
      AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
    procedure cxGrid5DBBandedTableView1CustomDrawColumnHeader(
      Sender: TcxGridTableView; ACanvas: TcxCanvas;
      AViewInfo: TcxGridColumnHeaderViewInfo; var ADone: Boolean);
    procedure cxGrid5DBBandedTableView1FocusedItemChanged(
      Sender: TcxCustomGridTableView; APrevFocusedItem,
      AFocusedItem: TcxCustomGridTableItem);
    procedure cxGrid5DBBandedTableView1KeyPress(Sender: TObject; var Key: Char);
    procedure dxBarButton13Click(Sender: TObject);
    procedure dxBarButton14Click(Sender: TObject);
    procedure dxBarButton15Click(Sender: TObject);
    procedure dxBarButton16Click(Sender: TObject);
    procedure dxBarButton17Click(Sender: TObject);
    procedure dxBarButton18Click(Sender: TObject);
    procedure dxBarButton19Click(Sender: TObject);
    procedure dxBarButton20Click(Sender: TObject);
    procedure dxBarButton21Click(Sender: TObject);
    procedure cxGrid1DBBandedTableView1FocusedRecordChanged(
      Sender: TcxCustomGridTableView; APrevFocusedRecord,
      AFocusedRecord: TcxCustomGridRecord;
      ANewItemRecordFocusingChanged: Boolean);
    procedure dxBarButton2Click(Sender: TObject);
    procedure dxBarButton3Click(Sender: TObject);
    procedure dxBarButton4Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
  private
    Fusr_pwd         : PUser_pwd;
    Fusers_group_cod : string;
    Fdate1, Fdate2   : TDateTime;
  public
    constructor Create(AOwner: TApplication; users_group_cod: string; usr_pwd: PUser_pwd);
  end;

var
  fmEtrActUslug: TfmEtrActUslug;

function CreateWndEtranActUslug(AppHand: THandle; users_group_cod: string; usr_pwd: PUser_pwd): variant; export;

implementation

{$R *.dfm}

uses EtrUtils;

function CreateWndEtranActUslug(AppHand: THandle; users_group_cod: string; usr_pwd: PUser_pwd): variant;
begin
  Application.Handle := AppHand;
  try
    fmEtrActUslug := TfmEtrActUslug.Create(Application, users_group_cod, usr_pwd);
    //-- изменить по мере необходимости возвращаемых параметров
    if  fmEtrActUslug.ShowModal = mrOk then result := VarArrayOf([-9, '']);
  finally
    fmEtrActUslug.Free;
  end;
end;

constructor TfmEtrActUslug.Create(AOwner: TApplication; users_group_cod: string; usr_pwd: PUser_pwd);
begin
  Screen.Cursor := -11;
  inherited Create(nil);

  WindowState := wsMaximized;
  Fusr_pwd := usr_pwd;
  Fusers_group_cod := users_group_cod;
  StoreRegistryGrid(rgLoad,'\Software\Lis1\EtranActUslug\MainGrids', cxGrid1DBBandedTableView1);
  StoreRegistryGrid(rgLoad,'\Software\Lis1\EtranActUslug\MainGrids', cxGrid2DBBandedTableView1);
  StoreRegistryGrid(rgLoad,'\Software\Lis1\EtranActUslug\MainGrids', cxGrid5DBBandedTableView1);


  ADOEtran.Connected := False;
  ADOEtran.ConnectionString := GetEtranConnect(Fusers_group_cod, Fusr_pwd);
  ADOEtran.Connected := True;


  dxBarSubItem2.Caption := StoreRegistryDate(rgLoad, '\Software\Lis1\DateTime\EtranActUslug', Fdate1, Fdate2);


  Query_ZFTO_SCORE.Close;
  Query_ZFTO_SCORE.Parameters.ParamByName('date1').Value := Fdate1;
  Query_ZFTO_SCORE.Parameters.ParamByName('date2').Value := Fdate2;
  Query_ZFTO_SCORE.Open;


  Query_ZFTO_SCORE_PERIOD.Close;
  Query_ZFTO_SCORE_PERIOD.Parameters.ParamByName('date1').Value := Fdate1;
  Query_ZFTO_SCORE_PERIOD.Parameters.ParamByName('date2').Value := Fdate2;
  Query_ZFTO_SCORE_PERIOD.Open;

  Screen.Cursor := 0;
end;


procedure TfmEtrActUslug.cxGrid1DBBandedTableView1CustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
	if AViewInfo.GridRecord.Selected or AViewInfo.GridRecord.Focused then begin
		ACanvas.Brush.Color := clNavy;
		ACanvas.Font.Color := clWhite;
		if AViewInfo.Focused then ACanvas.Brush.Color := clBlue;
	end;
end;

procedure TfmEtrActUslug.cxGrid1DBBandedTableView1CustomDrawColumnHeader(
  Sender: TcxGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridColumnHeaderViewInfo; var ADone: Boolean);
begin
	if AViewInfo.Column.Focused then begin
		ACanvas.Brush.Color := clNavy;
		ACanvas.Font.Color := clWhite;
	end;
end;

procedure TfmEtrActUslug.cxGrid1DBBandedTableView1FilterOnChanged(
  Sender: TObject);
begin
	DrawcxGridColumnOnFiltered(Sender);
end;

procedure TfmEtrActUslug.cxGrid1DBBandedTableView1FocusedItemChanged(
  Sender: TcxCustomGridTableView; APrevFocusedItem,
  AFocusedItem: TcxCustomGridTableItem);
begin
	cxGrid1DBBandedTableView1.Painter.Invalidate;
end;

procedure TfmEtrActUslug.cxGrid1DBBandedTableView1FocusedRecordChanged(
  Sender: TcxCustomGridTableView; APrevFocusedRecord,
  AFocusedRecord: TcxCustomGridRecord; ANewItemRecordFocusingChanged: Boolean);
begin
  Screen.Cursor := crHourglass;
//  Query_ZFTO_SCORE_TABLE.Close;
//  if (AFocusedRecord<>nil) AND ((cxGrid2DBBandedTableView1.GroupedColumnCount = 0) OR (AFocusedRecord.Level <> 0)) then begin
//    Query_ZFTO_SCORE_TABLE.Parameters.ParamByName('zfto_score_id').Value := AFocusedRecord.Values[cxGrid1DBBandedTableView1zfto_score_id.Index];
//    Query_ZFTO_SCORE_TABLE.Open;
//  end;
  Screen.Cursor := crDefault;
end;

procedure TfmEtrActUslug.cxGrid1DBBandedTableView1KeyPress(Sender: TObject;
  var Key: Char);
begin
	FilterColumnGridOnKeyPress(cxGrid1DBBandedTableView1, Key);
end;

procedure TfmEtrActUslug.cxGrid2DBBandedTableView1CustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
	if AViewInfo.GridRecord.Selected or AViewInfo.GridRecord.Focused then begin
		ACanvas.Brush.Color := clNavy;
		ACanvas.Font.Color := clWhite;
		if AViewInfo.Focused then ACanvas.Brush.Color := clBlue;
	end;
end;

procedure TfmEtrActUslug.cxGrid2DBBandedTableView1CustomDrawColumnHeader(
  Sender: TcxGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridColumnHeaderViewInfo; var ADone: Boolean);
begin
	if AViewInfo.Column.Focused then begin
		ACanvas.Brush.Color := clNavy;
		ACanvas.Font.Color := clWhite;
	end;
end;

procedure TfmEtrActUslug.cxGrid2DBBandedTableView1FilterOnChanged(
  Sender: TObject);
begin
	DrawcxGridColumnOnFiltered(Sender);
end;

procedure TfmEtrActUslug.cxGrid2DBBandedTableView1FocusedItemChanged(
  Sender: TcxCustomGridTableView; APrevFocusedItem,
  AFocusedItem: TcxCustomGridTableItem);
begin
	cxGrid2DBBandedTableView1.Painter.Invalidate;
end;

procedure TfmEtrActUslug.cxGrid2DBBandedTableView1KeyPress(Sender: TObject;
  var Key: Char);
begin
	FilterColumnGridOnKeyPress(cxGrid2DBBandedTableView1, Key);
end;

procedure TfmEtrActUslug.cxGrid5DBBandedTableView1CustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
	if AViewInfo.GridRecord.Selected or AViewInfo.GridRecord.Focused then begin
		ACanvas.Brush.Color := clNavy;
		ACanvas.Font.Color := clWhite;
		if AViewInfo.Focused then ACanvas.Brush.Color := clBlue;
	end;
end;

procedure TfmEtrActUslug.cxGrid5DBBandedTableView1CustomDrawColumnHeader(
  Sender: TcxGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridColumnHeaderViewInfo; var ADone: Boolean);
begin
	if AViewInfo.Column.Focused then begin
		ACanvas.Brush.Color := clNavy;
		ACanvas.Font.Color := clWhite;
	end;
end;

procedure TfmEtrActUslug.cxGrid5DBBandedTableView1FilterOnChanged(
  Sender: TObject);
begin
	DrawcxGridColumnOnFiltered(Sender);
end;

procedure TfmEtrActUslug.cxGrid5DBBandedTableView1FocusedItemChanged(
  Sender: TcxCustomGridTableView; APrevFocusedItem,
  AFocusedItem: TcxCustomGridTableItem);
begin
	cxGrid5DBBandedTableView1.Painter.Invalidate;
end;

procedure TfmEtrActUslug.cxGrid5DBBandedTableView1KeyPress(Sender: TObject;
  var Key: Char);
begin
	FilterColumnGridOnKeyPress(cxGrid5DBBandedTableView1, Key);
end;

procedure TfmEtrActUslug.dxBarButton13Click(Sender: TObject);
begin
	PrintcxGrid(cxGrid1DBBandedTableView1);
end;

procedure TfmEtrActUslug.dxBarButton14Click(Sender: TObject);
begin
	SetdxDBGridColumns(cxGrid1DBBandedTableView1);
end;

procedure TfmEtrActUslug.dxBarButton15Click(Sender: TObject);
begin
	cxGrid1DBBandedTableView1.OptionsView.GroupByBox := not cxGrid1DBBandedTableView1.OptionsView.GroupByBox;
end;

procedure TfmEtrActUslug.dxBarButton16Click(Sender: TObject);
begin
	PrintcxGrid(cxGrid2DBBandedTableView1);
end;

procedure TfmEtrActUslug.dxBarButton17Click(Sender: TObject);
begin
	SetdxDBGridColumns(cxGrid2DBBandedTableView1);
end;

procedure TfmEtrActUslug.dxBarButton18Click(Sender: TObject);
begin
	cxGrid2DBBandedTableView1.OptionsView.GroupByBox := not cxGrid2DBBandedTableView1.OptionsView.GroupByBox;
end;

procedure TfmEtrActUslug.dxBarButton19Click(Sender: TObject);
begin
	PrintcxGrid(cxGrid5DBBandedTableView1);
end;

procedure TfmEtrActUslug.dxBarButton20Click(Sender: TObject);
begin
	SetdxDBGridColumns(cxGrid5DBBandedTableView1);
end;

procedure TfmEtrActUslug.dxBarButton21Click(Sender: TObject);
begin
	cxGrid5DBBandedTableView1.OptionsView.GroupByBox := not cxGrid5DBBandedTableView1.OptionsView.GroupByBox;
end;

procedure TfmEtrActUslug.dxBarButton2Click(Sender: TObject);
begin
  fmPeriod := TfmPeriod.Create(Application, Fdate1, Fdate2, 3);
  if fmPeriod.ShowModal=mrOK then begin
    Fdate1 := fmPeriod._GetMonth;
    Fdate2 := IncMonth(Fdate1, 1);
    dxBarSubItem2.Caption := FormatDateTime('mmmm yyyy', Fdate1);
    Screen.Cursor := crHourGlass;

    Query_ZFTO_SCORE.Close;
    Query_ZFTO_SCORE.Parameters.ParamByName('date1').Value := Fdate1;
    Query_ZFTO_SCORE.Parameters.ParamByName('date2').Value := Fdate2;
    Query_ZFTO_SCORE.Open;

    Query_ZFTO_SCORE_PERIOD.Close;
    Query_ZFTO_SCORE_PERIOD.Parameters.ParamByName('date1').Value := Fdate1;
    Query_ZFTO_SCORE_PERIOD.Parameters.ParamByName('date2').Value := Fdate2;
    Query_ZFTO_SCORE_PERIOD.Open;

    Screen.Cursor := crDefault;
  end;

end;

procedure TfmEtrActUslug.dxBarButton3Click(Sender: TObject);
begin
 fmPeriod := TfmPeriod.Create(Application, Fdate1, Fdate2, 2);
  if fmPeriod.ShowModal=mrOK then begin
    Fdate1 := fmPeriod._GetMonthBegin;
    Fdate2 := fmPeriod._GetMonthEnd;
    dxBarSubItem2.Caption := FormatDateTime('mmm yy', Fdate1) + ' - ' + FormatDateTime('mmm yy', Fdate2);
    Screen.Cursor := crHourGlass;

    Query_ZFTO_SCORE.Close;
    Query_ZFTO_SCORE.Parameters.ParamByName('date1').Value := Fdate1;
    Query_ZFTO_SCORE.Parameters.ParamByName('date2').Value := Fdate2;
    Query_ZFTO_SCORE.Open;

    Query_ZFTO_SCORE_PERIOD.Close;
    Query_ZFTO_SCORE_PERIOD.Parameters.ParamByName('date1').Value := Fdate1;
    Query_ZFTO_SCORE_PERIOD.Parameters.ParamByName('date2').Value := Fdate2;
    Query_ZFTO_SCORE_PERIOD.Open;

    Screen.Cursor := crDefault;
  end;
end;

procedure TfmEtrActUslug.dxBarButton4Click(Sender: TObject);
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

  Query_ZFTO_SCORE.Close;
  Query_ZFTO_SCORE.Parameters.ParamByName('date1').Value := Fdate1;
  Query_ZFTO_SCORE.Parameters.ParamByName('date2').Value := Fdate2;
  Query_ZFTO_SCORE.Open;

  Query_ZFTO_SCORE_PERIOD.Close;
  Query_ZFTO_SCORE_PERIOD.Parameters.ParamByName('date1').Value := Fdate1;
  Query_ZFTO_SCORE_PERIOD.Parameters.ParamByName('date2').Value := Fdate2;
  Query_ZFTO_SCORE_PERIOD.Open;

  Screen.Cursor := crDefault;
end;

procedure TfmEtrActUslug.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TfmEtrActUslug.FormDestroy(Sender: TObject);
begin
  StoreRegistryGrid(rgSave,'\Software\Lis1\EtranActUslug\MainGrids', cxGrid1DBBandedTableView1);
  StoreRegistryGrid(rgSave,'\Software\Lis1\EtranActUslug\MainGrids', cxGrid2DBBandedTableView1);
  StoreRegistryGrid(rgSave,'\Software\Lis1\EtranActUslug\MainGrids', cxGrid5DBBandedTableView1);
  StoreRegistryDate(rgSave, '\Software\Lis1\DateTime\EtranActUslug', Fdate1, Fdate2);
end;

end.
