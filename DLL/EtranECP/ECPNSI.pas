unit ECPNSI;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Data.Win.ADODB, dxSkinsForm,
  cxLookAndFeels, dxBar, cxClasses, cxPropertiesStore, cxStyles,
  System.ImageList, Vcl.ImgList, cxGraphics, cxControls, cxLookAndFeelPainters,
  cxSplitter, Vcl.ExtCtrls, cxCustomData, cxFilter, cxData, cxDataStorage,
  cxEdit, cxNavigator, cxDBData, cxContainer, cxTextEdit, cxMemo, Default,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView, Raznoe, XMLDoc,
  cxGridBandedTableView, cxGridDBBandedTableView, cxGridLevel, cxGrid,
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
  dxSkinXmas2008Blue, dxSkinsdxBarPainter, dxSkinscxPCPainter, cxImageList,
  cxDataControllerConditionalFormattingRulesManagerDialog, dxDateRanges, dxSkinTheBezier, dxSkinOffice2019Colorful,
  dxSkinBasic, dxSkinOffice2019Black, dxSkinOffice2019DarkGray,
  dxSkinOffice2019White, dxScrollbarAnnotations, dxCore, dxSkinWXI;

type
  TfmECPNSI = class(TForm)
    cxImageList1: TcxImageList;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1: TcxStyle;
    cxStyle2: TcxStyle;
    cxPropertiesStore1: TcxPropertiesStore;
    dxBarManager1: TdxBarManager;
    dxBarManager1Bar1: TdxBar;
    dxBarButton1: TdxBarButton;
    cxLookAndFeelController1: TcxLookAndFeelController;
    dxSkinController1: TdxSkinController;
    ADOEtran: TADOConnection;
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    cxSplitter1: TcxSplitter;
    cxSplitter2: TcxSplitter;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    cxGrid2: TcxGrid;
    cxGridLevel1: TcxGridLevel;
    cxGrid1DBBandedTableView1: TcxGridDBBandedTableView;
    cxGrid2DBBandedTableView1: TcxGridDBBandedTableView;
    cxMemo1: TcxMemo;
    Query_TypeInf: TADOQuery;
    DS_TypeInf: TDataSource;
    cxGrid1DBBandedTableView1nsi_type_inf_id: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1nsi_type_inf_name: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1nsi_type_inf_table: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1nsi_type_date_load: TcxGridDBBandedColumn;
    DS_InfObj: TDataSource;
    Query_InfObj: TADOQuery;
    cxGrid2DBBandedTableView1inf_obj_id: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1type_inf_id: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1etran_nsi_id: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1inf_obj_cod: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1inf_obj_name: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1inf_obj_name_full: TcxGridDBBandedColumn;
    dxBarPopupMenu1: TdxBarPopupMenu;
    dxBarButton2: TdxBarButton;
    dxBarSubItem1: TdxBarSubItem;
    dxBarButton3: TdxBarButton;
    dxBarButton4: TdxBarButton;
    dxBarPopupMenu2: TdxBarPopupMenu;
    dxBarButton5: TdxBarButton;
    dxBarSubItem2: TdxBarSubItem;
    dxBarButton6: TdxBarButton;
    dxBarButton7: TdxBarButton;
    dxBarButton8: TdxBarButton;
    cxGrid2DBBandedTableView1sucks_own_ways: TcxGridDBBandedColumn;
    dxBarSubItem3: TdxBarSubItem;
    dxBarButton9: TdxBarButton;
    dxBarButton10: TdxBarButton;
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
    procedure dxBarButton3Click(Sender: TObject);
    procedure dxBarButton4Click(Sender: TObject);
    procedure cxGrid2DBBandedTableView1FilterOnChanged(Sender: TObject);
    procedure cxGrid2DBBandedTableView1CustomDrawCell(Sender: TcxCustomGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
    procedure cxGrid2DBBandedTableView1CustomDrawColumnHeader(Sender: TcxGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxGridColumnHeaderViewInfo; var ADone: Boolean);
    procedure cxGrid2DBBandedTableView1FocusedItemChanged(Sender: TcxCustomGridTableView; APrevFocusedItem,  AFocusedItem: TcxCustomGridTableItem);
    procedure cxGrid2DBBandedTableView1KeyPress(Sender: TObject; var Key: Char);
    procedure dxBarButton5Click(Sender: TObject);
    procedure dxBarButton6Click(Sender: TObject);
    procedure dxBarButton7Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure cxGrid1DBBandedTableView1FocusedRecordChanged(Sender: TcxCustomGridTableView; APrevFocusedRecord, AFocusedRecord: TcxCustomGridRecord; ANewItemRecordFocusingChanged: Boolean);
    procedure cxGrid2DBBandedTableView1FocusedRecordChanged(Sender: TcxCustomGridTableView; APrevFocusedRecord, AFocusedRecord: TcxCustomGridRecord;ANewItemRecordFocusingChanged: Boolean);
    procedure dxBarButton8Click(Sender: TObject);
    procedure dxBarButton1Click(Sender: TObject);
    procedure dxBarButton9Click(Sender: TObject);
    procedure dxBarButton10Click(Sender: TObject);
  private
    Fusr_pwd         : PUser_pwd;
    Fusers_group_cod : string;
  public
    constructor Create(AOwner: TApplication; users_group_cod: string; usr_pwd: PUser_pwd);
  end;

var
  fmECPNSI: TfmECPNSI;

function CreateWndEtranNSI(AppHand: THandle; users_group_cod: string; usr_pwd: PUser_pwd; FIO_users: string): variant; export;

implementation

{$R *.dfm}

uses ECPQuery, ECPSpamAdd;

function CreateWndEtranNSI(AppHand: THandle; users_group_cod: string; usr_pwd: PUser_pwd; FIO_users: string): variant; export;
begin
  Application.Handle := AppHand;
  try
    fmECPNSI := TfmECPNSI.Create(Application, users_group_cod, usr_pwd);
//    fmECPList._SetFIOusers := FIO_users;
    //-- изменить по мере необходимости возвращаемых параметров
    if  fmECPNSI.ShowModal = mrOk then result := VarArrayOf([-9, '']);
  finally
    fmECPNSI.Free;
  end;
end;

constructor TfmECPNSI.Create(AOwner: TApplication; users_group_cod: string; usr_pwd: PUser_pwd);
var   login : string;
    db_name : string;
begin
  Screen.Cursor := -11;
  inherited Create(AOwner);

  WindowState := wsMaximized;

  Fusr_pwd := usr_pwd;
  Fusers_group_cod := users_group_cod;
  if Fusers_group_cod =  '0' then begin login := 'Etran_GRU'; db_name := 'lis_etran'; end;
//  if Fusers_group_cod =  '1' then begin login := 'Etran_KHT'; db_name := 'lis_etran'; end;
//  if Fusers_group_cod =  '3' then begin login := 'Etran_PRV'; db_name := 'lis_etran'; end;
//  if Fusers_group_cod =  '5' then begin login := 'Etran_STS'; db_name := 'lis_etran'; end;
//  if Fusers_group_cod =  '6' then begin login := 'Etran_KAZ'; db_name := 'lis_etran'; end;
//  if Fusers_group_cod =  '7' then begin login := 'Etran_RTR'; db_name := 'lis_etran'; end;
//  if Fusers_group_cod = '30' then begin login := 'Etran_SNN'; db_name := 'lis_etran'; end;
//  if Fusers_group_cod = '16' then begin login := 'Etran_ITL'; db_name := 'lis_itek_etran'; end;
//  if Fusers_group_cod = '18' then begin login := 'Etran_ILG'; db_name := 'lis_etran'; end;
//  if Fusers_group_cod = '27' then begin login := 'Etran_NGS'; db_name := 'lis_etran'; end;
//  if Fusers_group_cod = '35' then begin login := 'Etran_ULG'; db_name := 'lis_etran'; end;

  ADOEtran.Connected := False;
  ADOEtran.ConnectionString := ADOEtran.ConnectionString+';User ID='+login+';Password='+'etran'+';Initial Catalog='+db_name+';Data Source='+Fusr_pwd^.server+';';
  ADOEtran.Connected := True;

  Query_TypeInf.Open;

  StoreRegistryGrid(rgLoad, '\Software\Lis1\ECPEtran\MainGridsNSI', cxGrid1DBBandedTableView1);
  StoreRegistryGrid(rgLoad, '\Software\Lis1\ECPEtran\MainGridsNSI', cxGrid2DBBandedTableView1);

  Screen.Cursor := 0;
end;



procedure TfmECPNSI.cxGrid1DBBandedTableView1CustomDrawCell(Sender: TcxCustomGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
	if AViewInfo.GridRecord.Selected or AViewInfo.GridRecord.Focused then begin
		ACanvas.Brush.Color := clNavy;
		ACanvas.Font.Color := clWhite;
		if AViewInfo.Focused then ACanvas.Brush.Color := clBlue;
	end;
end;

procedure TfmECPNSI.cxGrid1DBBandedTableView1CustomDrawColumnHeader(Sender: TcxGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxGridColumnHeaderViewInfo; var ADone: Boolean);
begin
	if AViewInfo.Column.Focused then begin
		ACanvas.Brush.Color := clNavy;
		ACanvas.Font.Color := clWhite;
	end;
end;

procedure TfmECPNSI.cxGrid1DBBandedTableView1FilterOnChanged(Sender: TObject);
begin
	DrawcxGridColumnOnFiltered(Sender);
end;

procedure TfmECPNSI.cxGrid1DBBandedTableView1FocusedItemChanged(Sender: TcxCustomGridTableView; APrevFocusedItem, AFocusedItem: TcxCustomGridTableItem);
begin
	cxGrid1DBBandedTableView1.Painter.Invalidate;
end;

procedure TfmECPNSI.cxGrid1DBBandedTableView1FocusedRecordChanged(Sender: TcxCustomGridTableView; APrevFocusedRecord, AFocusedRecord: TcxCustomGridRecord; ANewItemRecordFocusingChanged: Boolean);
begin
  Screen.Cursor := crHourGlass;
  Query_InfObj.Close;
  cxMemo1.Lines.Clear;
  if (AFocusedRecord<>nil) AND ((cxGrid1DBBandedTableView1.GroupedColumnCount = 0) OR (AFocusedRecord.Level <> 0)) then begin
    Query_InfObj.Parameters.ParamByName('type_inf_id').Value := cxGrid1DBBandedTableView1nsi_type_inf_id.DataBinding.Field.AsInteger;
    Query_InfObj.Open;
  end;

  // Видимость колонки "Отстой на собственных путях" и пунктов меню- только для Станций
  cxGrid2DBBandedTableView1sucks_own_ways.Position.BandIndex := iif(cxGrid1DBBandedTableView1nsi_type_inf_id.DataBinding.Field.AsInteger = 11, 0, -1);
  dxBarSubItem3.Visible := iif(cxGrid1DBBandedTableView1nsi_type_inf_id.DataBinding.Field.AsInteger = 11, ivAlways, ivNever);

  Screen.Cursor := crDefault;
end;

procedure TfmECPNSI.cxGrid1DBBandedTableView1KeyPress(Sender: TObject;
  var Key: Char);
begin
	FilterColumnGridOnKeyPress(cxGrid1DBBandedTableView1, Key);
end;

procedure TfmECPNSI.cxGrid2DBBandedTableView1CustomDrawCell(Sender: TcxCustomGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
	if AViewInfo.GridRecord.Selected or AViewInfo.GridRecord.Focused then begin
		ACanvas.Brush.Color := clNavy;
		ACanvas.Font.Color := clWhite;
		if AViewInfo.Focused then ACanvas.Brush.Color := clBlue;
	end;
end;

procedure TfmECPNSI.cxGrid2DBBandedTableView1CustomDrawColumnHeader(Sender: TcxGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxGridColumnHeaderViewInfo; var ADone: Boolean);
begin
	if AViewInfo.Column.Focused then begin
		ACanvas.Brush.Color := clNavy;
		ACanvas.Font.Color := clWhite;
	end;
end;

procedure TfmECPNSI.cxGrid2DBBandedTableView1FilterOnChanged(Sender: TObject);
begin
	DrawcxGridColumnOnFiltered(Sender);
end;

procedure TfmECPNSI.cxGrid2DBBandedTableView1FocusedItemChanged(Sender: TcxCustomGridTableView; APrevFocusedItem, AFocusedItem: TcxCustomGridTableItem);
begin
	cxGrid2DBBandedTableView1.Painter.Invalidate;
end;

procedure TfmECPNSI.cxGrid2DBBandedTableView1FocusedRecordChanged(Sender: TcxCustomGridTableView; APrevFocusedRecord,  AFocusedRecord: TcxCustomGridRecord; ANewItemRecordFocusingChanged: Boolean);
var Q: TADOQuery;
begin
  if (AFocusedRecord<>nil) AND ((cxGrid2DBBandedTableView1.GroupedColumnCount = 0) OR (AFocusedRecord.Level <> 0)) then begin
    cxMemo1.Lines.Clear;

    Q := TADOQuery.Create(nil);
    Q.Connection := ADOEtran;
    Q.SQL.Add('SELECT inf_obj_xml FROM ETRAN_NSI_INF_OBJ WHERE inf_obj_id = ' + IntToStr(cxGrid2DBBandedTableView1inf_obj_id.DataBinding.Field.AsInteger));
    Q.Open;

    cxMemo1.Lines.Text := FormatXMLData(Q.FieldByName('inf_obj_xml').AsString);

    Q.Free;
  end;
end;

procedure TfmECPNSI.cxGrid2DBBandedTableView1KeyPress(Sender: TObject; var Key: Char);
begin
	FilterColumnGridOnKeyPress(cxGrid2DBBandedTableView1, Key);
end;

procedure TfmECPNSI.dxBarButton1Click(Sender: TObject);
begin
  RefreshQueryGrid(cxGrid1DBBandedTableView1, 'nsi_type_inf_id');
end;

procedure TfmECPNSI.dxBarButton2Click(Sender: TObject);
begin
	PrintcxGrid(cxGrid1DBBandedTableView1);
end;

procedure TfmECPNSI.dxBarButton3Click(Sender: TObject);
begin
	SetdxDBGridColumns(cxGrid1DBBandedTableView1);
end;

procedure TfmECPNSI.dxBarButton4Click(Sender: TObject);
begin
	cxGrid1DBBandedTableView1.OptionsView.GroupByBox := not cxGrid1DBBandedTableView1.OptionsView.GroupByBox;
end;

procedure TfmECPNSI.dxBarButton5Click(Sender: TObject);
begin
	PrintcxGrid(cxGrid2DBBandedTableView1);
end;

procedure TfmECPNSI.dxBarButton6Click(Sender: TObject);
begin
	SetdxDBGridColumns(cxGrid2DBBandedTableView1);
end;

procedure TfmECPNSI.dxBarButton7Click(Sender: TObject);
begin
	cxGrid2DBBandedTableView1.OptionsView.GroupByBox := not cxGrid2DBBandedTableView1.OptionsView.GroupByBox;
end;

procedure TfmECPNSI.dxBarButton8Click(Sender: TObject);
begin
  if Application.MessageBox('Обновить справочник?', 'Внимание', MB_ICONQUESTION or MB_YESNO) = ID_YES then begin
    CreateWndGetNSI(  '92.53.107.222',
                      '7450',
                      cxGrid1DBBandedTableView1nsi_type_inf_name.DataBinding.Field.AsString,
                      cxGrid1DBBandedTableView1nsi_type_inf_id.DataBinding.Field.AsInteger,
                      ADOEtran);
    RefreshQueryGrid(cxGrid1DBBandedTableView1, 'nsi_type_inf_id');
  end;
end;

procedure TfmECPNSI.dxBarButton10Click(Sender: TObject);
var sp : TADOStoredProc;
begin
  if not cxGrid2DBBandedTableView1.DataController.DataSet.Active then exit;
  if cxGrid2DBBandedTableView1etran_nsi_id.DataBinding.Field.IsNull then exit;

  if Application.MessageBox('Удалить комментарий?', 'Внимание', MB_YESNO or MB_ICONQUESTION) = ID_NO then exit;

  Screen.Cursor := crHourglass;
  SP := TADOStoredProc.Create(nil);
  SP.Connection := ADOEtran;
  SP.ProcedureName := 'sp_etran_global_spam_modify';
  SP.Parameters.Refresh;

  SP.Parameters.ParamByName('@type_action' ).Value := 2; // DEL
  SP.Parameters.ParamByName('@object_name' ).Value := 'ETRAN_NSI_INF_OBJ';
  SP.Parameters.ParamByName('@row_id'      ).Value := cxGrid2DBBandedTableView1etran_nsi_id.DataBinding.Field.AsInteger;
  SP.Parameters.ParamByName('@param_name'  ).Value := 'sucks_own_ways';

  try
    SP.ExecProc;
    RefreshQueryGrid(cxGrid2DBBandedTableView1, cxGrid2DBBandedTableView1.DataController.KeyFieldNames);
  except on E: Exception do begin
    Application.MessageBox(PWideChar(E.Message), 'Ошибка', MB_OK or MB_ICONERROR);
    ModalResult := mrNone;
  end;
  end;
  SP.Free;
  Screen.Cursor := crDefault;
end;

procedure TfmECPNSI.dxBarButton9Click(Sender: TObject);
begin
  if not cxGrid2DBBandedTableView1.DataController.DataSet.Active then exit;
  if cxGrid2DBBandedTableView1etran_nsi_id.DataBinding.Field.IsNull then exit;

  fmECPSpamAdd := TfmECPSpamAdd.Create(
    Application,
    ADOEtran,
    'ETRAN_NSI_INF_OBJ',
    cxGrid2DBBandedTableView1etran_nsi_id.DataBinding.Field.AsInteger,
    'sucks_own_ways',
    'Станция ' + cxGrid2DBBandedTableView1inf_obj_name.DataBinding.Field.AsString,
    'Комментарий (Отстой на собственных путях)'
    );

  if fmECPSpamAdd.ShowModal = mrOk then
    RefreshQueryGrid(cxGrid2DBBandedTableView1, cxGrid2DBBandedTableView1.DataController.KeyFieldNames);
end;

procedure TfmECPNSI.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TfmECPNSI.FormDestroy(Sender: TObject);
begin
  cxGrid2DBBandedTableView1sucks_own_ways.Position.BandIndex := -1;

  StoreRegistryGrid(rgSave, '\Software\Lis1\ECPEtran\MainGridsNSI', cxGrid1DBBandedTableView1);
  StoreRegistryGrid(rgSave, '\Software\Lis1\ECPEtran\MainGridsNSI', cxGrid2DBBandedTableView1);
end;

end.
