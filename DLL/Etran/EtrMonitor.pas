unit EtrMonitor;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, dxBar, cxClasses, cxGraphics, cxControls, cxLookAndFeels, Period,
  cxLookAndFeelPainters, cxSplitter, ExtCtrls, cxContainer, cxEdit, DB, ADODB,
  cxLabel, ImgList, cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage,
  cxDBData, cxCurrencyEdit, cxGridLevel, cxGridCustomTableView, cxGridTableView,
  cxGridBandedTableView, cxGridDBBandedTableView, cxGridCustomView, cxGrid,
  Raznoe, Default, cxPropertiesStore, dxSkinsCore, dxSkinsDefaultPainters,
  dxSkinscxPCPainter, dxSkinsdxBarPainter, dxSkinBlack, dxSkinBlue,
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
  dxSkinSummer2008, dxSkinTheAsphaltWorld, dxSkinValentine, dxSkinVS2010,
  dxSkinWhiteprint, dxSkinXmas2008Blue, cxNavigator, dxSkinOffice2016Colorful,
  dxSkinOffice2016Dark, dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, dxRibbonSkins, dxSkinsdxRibbonPainter,
  dxRibbonCustomizationForm, dxRibbon, System.ImageList,
  cxDataControllerConditionalFormattingRulesManagerDialog, cxImageList, dxSkinTheBezier, dxDateRanges, dxSkinOffice2019Colorful,
  dxSkinBasic, dxSkinOffice2019Black, dxSkinOffice2019DarkGray,
  dxSkinOffice2019White, dxScrollbarAnnotations;

type
  TfmEtrMonitor = class(TForm)
    dxBarManager1: TdxBarManager;
    dxBarManager1Bar1: TdxBar;
    dxBarSubItem2: TdxBarSubItem;
    dxBarButton1: TdxBarButton;
    Panel1: TPanel;
    Panel3: TPanel;
    cxSplitter1: TcxSplitter;
    Panel2: TPanel;
    Panel4: TPanel;
    cxSplitter2: TcxSplitter;
    cxLabel5: TcxLabel;
    cxLabel1: TcxLabel;
    cxLabel2: TcxLabel;
    LisEtran_Connect: TADOConnection;
    cxImageList1: TcxImageList;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1: TcxStyle;
    DS_Period: TDataSource;
    Query_Period: TADOQuery;
    DS_Detail: TDataSource;
    Query_Detail: TADOQuery;
    dxBarButton2: TdxBarButton;
    cxPropertiesStore1: TcxPropertiesStore;
    cxGrid1: TcxGrid;
    cxGridDBBandedTableView1: TcxGridDBBandedTableView;
    cxGridDBBandedTableView1connect_id: TcxGridDBBandedColumn;
    cxGridDBBandedTableView1connect_name: TcxGridDBBandedColumn;
    cxGridDBBandedTableView1etran_login: TcxGridDBBandedColumn;
    cxGridDBBandedTableView1read_interval: TcxGridDBBandedColumn;
    cxGridDBBandedTableView1set_load: TcxGridDBBandedColumn;
    cxGridDBBandedTableView1users_name: TcxGridDBBandedColumn;
    cxGridDBBandedTableView1doc_type_name: TcxGridDBBandedColumn;
    cxGridDBBandedTableView1users_group_name: TcxGridDBBandedColumn;
    cxGridDBBandedTableView1period_end: TcxGridDBBandedColumn;
    cxGridLevel1: TcxGridLevel;
    DS_Connect: TDataSource;
    Query_Connect: TADOQuery;
    cxGrid2: TcxGrid;
    cxGridDBBandedTableView2: TcxGridDBBandedTableView;
    cxGridLevel2: TcxGridLevel;
    cxGrid3: TcxGrid;
    cxGridDBBandedTableView3: TcxGridDBBandedTableView;
    cxGridLevel3: TcxGridLevel;
    cxGridDBBandedTableView2query_id: TcxGridDBBandedColumn;
    cxGridDBBandedTableView2period_begin: TcxGridDBBandedColumn;
    cxGridDBBandedTableView2period_end: TcxGridDBBandedColumn;
    cxGridDBBandedTableView2set_load: TcxGridDBBandedColumn;
    cxGridDBBandedTableView2query_date_load: TcxGridDBBandedColumn;
    cxGridDBBandedTableView2cnt_error: TcxGridDBBandedColumn;
    cxGridDBBandedTableView3query_docs_id: TcxGridDBBandedColumn;
    cxGridDBBandedTableView3query_id: TcxGridDBBandedColumn;
    cxGridDBBandedTableView3doc_type_id: TcxGridDBBandedColumn;
    cxGridDBBandedTableView3doc_id: TcxGridDBBandedColumn;
    cxGridDBBandedTableView3doc_date_load: TcxGridDBBandedColumn;
    cxGridDBBandedTableView3xml_reply_id: TcxGridDBBandedColumn;
    cxGridDBBandedTableView3set_load: TcxGridDBBandedColumn;
    cxGridDBBandedTableView3doc_type_name: TcxGridDBBandedColumn;
    cxGridDBBandedTableView3cnt_error: TcxGridDBBandedColumn;
    dxBarButton4: TdxBarButton;
    dxBarButton5: TdxBarButton;
    dxBarButton6: TdxBarButton;
    dxBarButton7: TdxBarButton;
    cxGridDBBandedTableView1cnt: TcxGridDBBandedColumn;
    cxGridDBBandedTableView1cnt_not_load: TcxGridDBBandedColumn;
    cxGridDBBandedTableView1cnt_docs: TcxGridDBBandedColumn;
    cxGridDBBandedTableView1cnt_docs_not_load: TcxGridDBBandedColumn;
    cxGridDBBandedTableView2cnt_not_load: TcxGridDBBandedColumn;
    cxGridDBBandedTableView2cnt: TcxGridDBBandedColumn;
    cxStyle2: TcxStyle;
    dxBarPopupMenu1: TdxBarPopupMenu;
    dxBarPopupMenu2: TdxBarPopupMenu;
    dxBarPopupMenu3: TdxBarPopupMenu;
    dxBarButton8: TdxBarButton;
    dxBarButton9: TdxBarButton;
    dxBarButton10: TdxBarButton;
    dxBarButton11: TdxBarButton;
    dxBarButton3: TdxBarButton;
    dxBarButton12: TdxBarButton;
    dxBarButton13: TdxBarButton;
    cxGridDBBandedTableView3error_name: TcxGridDBBandedColumn;
    dxBarButton14: TdxBarButton;
    dxBarButton15: TdxBarButton;
    procedure dxBarButton2Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cxGridDBBandedTableView1FocusedRecordChanged(
      Sender: TcxCustomGridTableView; APrevFocusedRecord,
      AFocusedRecord: TcxCustomGridRecord;
      ANewItemRecordFocusingChanged: Boolean);
    procedure cxGridDBBandedTableView2FocusedRecordChanged(
      Sender: TcxCustomGridTableView; APrevFocusedRecord,
      AFocusedRecord: TcxCustomGridRecord;
      ANewItemRecordFocusingChanged: Boolean);
    procedure dxBarButton4Click(Sender: TObject);
    procedure dxBarButton5Click(Sender: TObject);
    procedure dxBarButton6Click(Sender: TObject);
    procedure dxBarButton7Click(Sender: TObject);
    procedure dxBarButton1Click(Sender: TObject);
    procedure cxGridDBBandedTableView1DataControllerFilterChanged(
      Sender: TObject);
    procedure cxGridDBBandedTableView1FocusedItemChanged(
      Sender: TcxCustomGridTableView; APrevFocusedItem,
      AFocusedItem: TcxCustomGridTableItem);
    procedure cxGridDBBandedTableView1KeyPress(Sender: TObject; var Key: Char);
    procedure cxGridDBBandedTableView1CustomDrawCell(
      Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
      AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
    procedure cxGridDBBandedTableView1CustomDrawColumnHeader(
      Sender: TcxGridTableView; ACanvas: TcxCanvas;
      AViewInfo: TcxGridColumnHeaderViewInfo; var ADone: Boolean);
    procedure cxGridDBBandedTableView2KeyPress(Sender: TObject; var Key: Char);
    procedure cxGridDBBandedTableView3KeyPress(Sender: TObject; var Key: Char);
    procedure dxBarButton8Click(Sender: TObject);
    procedure dxBarButton11Click(Sender: TObject);
    procedure dxBarButton10Click(Sender: TObject);
    procedure dxBarButton9Click(Sender: TObject);
    procedure dxBarButton12Click(Sender: TObject);
    procedure dxBarButton13Click(Sender: TObject);
    procedure dxBarButton14Click(Sender: TObject);
    procedure dxBarButton15Click(Sender: TObject);
  private
    Fdate1, Fdate2 : TDateTime;
    Fusers_id      : integer;
    Fusr_pwd       : PUser_pwd;
  public
    constructor Create(AOwner: TApplication; users_group_cod: string; usr_pwd:PUser_pwd);
    procedure   RefreshGrid();
  end;

var
  fmEtrMonitor: TfmEtrMonitor;

function CreateWndEtranMonitor(AppHand: THandle; users_group_cod: string; usr_pwd:PUser_pwd) : variant; export;

implementation

uses EtrTCP, EtrConnectAdd, EtrXMLView;

{$R *.dfm}

function CreateWndEtranMonitor(AppHand: THandle; users_group_cod: string; usr_pwd:PUser_pwd) : variant;
begin
  Application.Handle := AppHand;
  try
    fmEtrMonitor := TfmEtrMonitor.Create(Application, users_group_cod, usr_pwd);
    fmEtrMonitor.ShowModal;
    result := VarArrayOf([-9, '']);
  finally
    fmEtrMonitor.Free;
  end;
end;

constructor TfmEtrMonitor.Create(AOwner:TApplication; users_group_cod: string; usr_pwd:PUser_pwd);
var login, db_name : string;
begin
  Screen.Cursor := -11;
  inherited Create(nil);

  WindowState := wsMaximized;

  Fusr_pwd := usr_pwd;
  StoreRegistryGrid(rgLoad,'\Software\Lis1\EtrMonitor_Grids', cxGridDBBandedTableView3);
  StoreRegistryGrid(rgLoad,'\Software\Lis1\EtrMonitor_Grids', cxGridDBBandedTableView2);
  StoreRegistryGrid(rgLoad,'\Software\Lis1\EtrMonitor_Grids', cxGridDBBandedTableView1);

//  Fusers_group_cod := users_group_cod;
  if users_group_cod =  '0' then begin login := 'Etran_GRU'; db_name := 'lis_etran'; end;
//  if users_group_cod =  '1' then begin login := 'Etran_KHT'; db_name := 'depo_etran'; end;
//  if users_group_cod =  '3' then begin login := 'Etran_PRV'; db_name := 'depo_etran'; end;
//  if users_group_cod =  '5' then begin login := 'Etran_STS'; db_name := 'depo_etran'; end;
//  if users_group_cod =  '6' then begin login := 'Etran_KAZ'; db_name := 'depo_etran'; end;
//  if users_group_cod =  '7' then begin login := 'Etran_RTR'; db_name := 'depo_etran'; end;
//  if users_group_cod =  '9' then begin login := 'Etran_SMT'; db_name := 'lis_cont_etran'; end;
//  if users_group_cod = '30' then begin login := 'Etran_SNN'; db_name := 'depo_etran'; end;
//  if users_group_cod = '16' then begin login := 'Etran_ITL'; db_name := 'lis_itek_etran'; end;
//  if users_group_cod = '35' then begin login := 'Etran_depo'; db_name := 'depo_etran'; end;


  Fusers_id := -9;
  Fdate1 := Date;
  Fdate2 := Date;
  dxBarSubItem2.Caption := FormatDateTime('dd.mm.yy', Fdate1) + ' - ' + FormatDateTime('dd.mm.yy', Fdate2);

  LisEtran_Connect.Connected := False;
  LisEtran_Connect.ConnectionString := 'Persist Security Info=True;Provider=SQLOLEDB.1;User ID=sa;Password=cjnhfkjubcnbrf;Initial Catalog='+ db_name +';Data Source='+Fusr_pwd^.server+';';
  LisEtran_Connect.Connected := True;

  Query_Connect.Parameters.ParamByName('date1').Value := Fdate1;
  Query_Connect.Parameters.ParamByName('date2').Value := Fdate2;
  Query_Connect.Open;

  RefreshGrid();


  Screen.Cursor := 0;
end;

procedure TfmEtrMonitor.cxGridDBBandedTableView1CustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
  if AViewInfo.GridRecord.Selected or AViewInfo.GridRecord.Focused then begin
    ACanvas.Brush.Color := clNavy;
    ACanvas.Font.Color := clWhite;
    if AViewInfo.Focused then ACanvas.Brush.Color := clBlue;
  end;
end;

procedure TfmEtrMonitor.cxGridDBBandedTableView1CustomDrawColumnHeader(
  Sender: TcxGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridColumnHeaderViewInfo; var ADone: Boolean);
begin
  if AViewInfo.Column.Focused then begin
    ACanvas.Brush.Color := clNavy;
    ACanvas.Font.Color := clWhite;
  end;

end;

procedure TfmEtrMonitor.cxGridDBBandedTableView1DataControllerFilterChanged(Sender: TObject);
begin
  DrawcxGridColumnOnFiltered(Sender);
end;

procedure TfmEtrMonitor.cxGridDBBandedTableView1FocusedItemChanged(
  Sender: TcxCustomGridTableView; APrevFocusedItem,
  AFocusedItem: TcxCustomGridTableItem);
begin
  Sender.Painter.Invalidate;
end;

procedure TfmEtrMonitor.cxGridDBBandedTableView1FocusedRecordChanged(
  Sender: TcxCustomGridTableView; APrevFocusedRecord,
  AFocusedRecord: TcxCustomGridRecord; ANewItemRecordFocusingChanged: Boolean);
begin
  Screen.Cursor := crHourglass;

  Query_Period.Close;
  if (AFocusedRecord<>nil) AND ((cxGridDBBandedTableView1.GroupedColumnCount = 0) OR (AFocusedRecord.Level <> 0)) then begin
    Query_Period.Parameters.ParamByName('date1'     ).Value := Fdate1;
    Query_Period.Parameters.ParamByName('date2'     ).Value := Fdate2;
    Query_Period.Parameters.ParamByName('connect_id').Value := AFocusedRecord.Values[cxGridDBBandedTableView1connect_id.Index];
    Query_Period.Open;
  end;

  Screen.Cursor := crDefault;
end;

procedure TfmEtrMonitor.cxGridDBBandedTableView1KeyPress(Sender: TObject; var Key: Char);
begin
  FilterColumnGridOnKeyPress(cxGridDBBandedTableView1, Key);
end;

procedure TfmEtrMonitor.cxGridDBBandedTableView2FocusedRecordChanged(
  Sender: TcxCustomGridTableView; APrevFocusedRecord,
  AFocusedRecord: TcxCustomGridRecord; ANewItemRecordFocusingChanged: Boolean);
begin
  Screen.Cursor := crHourglass;

  Query_Detail.Close;
  if (AFocusedRecord<>nil) AND ((cxGridDBBandedTableView2.GroupedColumnCount = 0) OR (AFocusedRecord.Level <> 0)) then begin
    Query_Detail.Parameters.ParamByName('query_id').Value := AFocusedRecord.Values[cxGridDBBandedTableView2query_id.Index];
    Query_Detail.Open;
  end;

  Screen.Cursor := crDefault;
end;

procedure TfmEtrMonitor.cxGridDBBandedTableView2KeyPress(Sender: TObject;
  var Key: Char);
begin
  FilterColumnGridOnKeyPress(cxGridDBBandedTableView2, Key);
end;

procedure TfmEtrMonitor.cxGridDBBandedTableView3KeyPress(Sender: TObject;
  var Key: Char);
begin
  FilterColumnGridOnKeyPress(cxGridDBBandedTableView3, Key);
end;

procedure TfmEtrMonitor.dxBarButton10Click(Sender: TObject);
var
  SP : TADOStoredProc;
begin
  case TdxBarButton(Sender).ClickItemLink.Owner.Owner.Tag of
    1:  begin
          SP := TADOStoredProc.Create(Application);
          SP.Connection    := LisEtran_Connect;
          SP.ProcedureName := 'sp_query_refresh';
          SP.Parameters.Refresh;
          SP.Parameters.ParamByName('@type_action').Value := 1;
          SP.Parameters.ParamByName('@query_id'   ).Value := cxGridDBBandedTableView2query_id.DataBinding.Field.AsInteger;
          SP.ExecProc;
          SP.Free;
          RefreshQueryGrid(cxGridDBBandedTableView2, 'query_id');
        end;
    2:  begin
          SP := TADOStoredProc.Create(Application);
          SP.Connection    := LisEtran_Connect;
          SP.ProcedureName := 'sp_query_docs_refresh';
          SP.Parameters.Refresh;
          SP.Parameters.ParamByName('@type_action'  ).Value := 1;
          SP.Parameters.ParamByName('@query_docs_id').Value := cxGridDBBandedTableView3query_docs_id.DataBinding.Field.AsInteger;
          SP.ExecProc;
          SP.Free;
          RefreshQueryGrid(cxGridDBBandedTableView3, 'query_docs_id');
        end;
  end;
end;

procedure TfmEtrMonitor.dxBarButton11Click(Sender: TObject);
var Q: TADOQuery;
begin

  case TdxBarButton(Sender).ClickItemLink.Owner.Owner.Tag of
    1:  begin
          Q := TADOQuery.Create(nil);
          Q.Connection := LisEtran_Connect;
          Q.SQL.Add('SELECT * FROM etran_query_new WHERE query_id = ' +  IntToStr(cxGridDBBandedTableView2query_id.DataBinding.Field.AsInteger));
          Q.Open;

          fmEtrXMLView := TfmEtrXMLView.Create(Application);
          fmEtrXMLView._SetXML := Q.FieldByName('query_xml').AsString;
          fmEtrXMLView.ShowModal;

          Q.Free;
        end;
    2:  begin
          Q := TADOQuery.Create(nil);
          Q.Connection := LisEtran_Connect;
          Q.SQL.Add('SELECT * FROM etran_query_docs_new inner join etran_xml_reply on etran_query_docs_new.xml_reply_id = etran_xml_reply.xml_reply_id WHERE query_docs_id = ' +  IntToStr(cxGridDBBandedTableView3query_docs_id.DataBinding.Field.AsInteger));
          Q.Open;

          fmEtrXMLView := TfmEtrXMLView.Create(Application);
          fmEtrXMLView._SetXML := Q.FieldByName('doc_xml_info').AsString;
          fmEtrXMLView.ShowModal;

          Q.Free;
        end;
  end;
end;

procedure TfmEtrMonitor.dxBarButton1Click(Sender: TObject);
begin
  RefreshQueryGrid(cxGridDBBandedTableView1, 'connect_id');
end;

procedure TfmEtrMonitor.dxBarButton2Click(Sender: TObject);
begin
  fmPeriod := TfmPeriod.Create(Application, Fdate1, Fdate2, 1);
  if fmPeriod.ShowModal=mrOK then begin
    Screen.Cursor := crHourglass;
    Fdate1 := fmPeriod._GetDateBegin;
    Fdate2 := fmPeriod._GetDateEnd;
    dxBarSubItem2.Caption := FormatDateTime('dd.mm.yy', Fdate1) + ' - ' + FormatDateTime('dd.mm.yy', Fdate2);

    Query_Connect.Close;
    Query_Connect.Parameters.ParamByName('date1').Value := Fdate1;
    Query_Connect.Parameters.ParamByName('date2').Value := Fdate2;
    Query_Connect.Open;

    Screen.Cursor := crDefault;
  end;
end;

procedure TfmEtrMonitor.dxBarButton12Click(Sender: TObject);
begin
  Screen.Cursor := crHourglass;
  if TControl(Sender).Tag = 1 then begin
    Fdate1 := IncMonth(Fdate1, -1);
  end;

  if TControl(Sender).Tag = 2 then begin
    Fdate1 := IncMonth(Fdate1, 1);
  end;

  Fdate2 := IncMonth(Fdate1) - 1;
  dxBarSubItem2.Caption := FormatDateTime('dd.mm.yy', Fdate1) + ' - ' + FormatDateTime('dd.mm.yy', Fdate2);

  Query_Connect.Close;
  Query_Connect.Parameters.ParamByName('date1').Value := Fdate1;
  Query_Connect.Parameters.ParamByName('date2').Value := Fdate2;
  Query_Connect.Open;

  Screen.Cursor := crDefault;
end;

procedure TfmEtrMonitor.dxBarButton13Click(Sender: TObject);
begin
  fmEtrConnectAdd := TfmEtrConnectAdd.Create(Application);
  fmEtrConnectAdd._SetCopy := cxGridDBBandedTableView1connect_id.DataBinding.Field.AsInteger;
  fmEtrConnectAdd.ShowModal;
  RefreshQueryGrid(cxGridDBBandedTableView1, 'connect_id');
end;

procedure TfmEtrMonitor.dxBarButton14Click(Sender: TObject);
var
  SP_connect_modify : TADOStoredProc;
  new_str : string;
  i : integer;
begin
  if InputQuery('Пароль', 'Пароль:', new_str) then begin
    SP_connect_modify := TADOStoredProc.Create(Application);
    SP_connect_modify.Connection    := LisEtran_Connect;
    SP_connect_modify.ProcedureName := 'sp_connect_new_modify;1';

    for i:=0 to cxGridDBBandedTableView1.Controller.SelectedRecordCount - 1 do begin
      SP_connect_modify.Parameters.Refresh;
      SP_connect_modify.Parameters.ParamByName('@connect_id'      ).Value := cxGridDBBandedTableView1.Controller.SelectedRows[i].Values[cxGridDBBandedTableView1connect_id.Index];
      SP_connect_modify.Parameters.ParamByName('@type_action'     ).Value := 8;
      SP_connect_modify.Parameters.ParamByName('@etran_password'  ).Value := string(PasswordToCode(new_str));
      SP_connect_modify.ExecProc;
    end;

    SP_connect_modify.Free;
  end;
end;

procedure TfmEtrMonitor.dxBarButton15Click(Sender: TObject);
var
  SP_connect_modify : TADOStoredProc;
  new_str : string;
  i : integer;
begin
  if InputQuery('Пользователь', 'Пользователь:', new_str) then begin
    SP_connect_modify := TADOStoredProc.Create(Application);
    SP_connect_modify.Connection    := LisEtran_Connect;
    SP_connect_modify.ProcedureName := 'sp_connect_new_modify;1';

    for i:=0 to cxGridDBBandedTableView1.Controller.SelectedRecordCount - 1 do begin
      SP_connect_modify.Parameters.Refresh;
      SP_connect_modify.Parameters.ParamByName('@connect_id'   ).Value := cxGridDBBandedTableView1.Controller.SelectedRows[i].Values[cxGridDBBandedTableView1connect_id.Index];
      SP_connect_modify.Parameters.ParamByName('@type_action'  ).Value := 9;
      SP_connect_modify.Parameters.ParamByName('@etran_login'  ).Value := new_str;
      SP_connect_modify.ExecProc;
    end;

    SP_connect_modify.Free;
  end;

end;

procedure TfmEtrMonitor.dxBarButton4Click(Sender: TObject);
begin
  fmEtrConnectAdd := TfmEtrConnectAdd.Create(Application);
  fmEtrConnectAdd.ShowModal;
  RefreshQueryGrid(cxGridDBBandedTableView1, 'connect_id');
end;

procedure TfmEtrMonitor.dxBarButton5Click(Sender: TObject);
begin
  fmEtrConnectAdd := TfmEtrConnectAdd.Create(Application);
  fmEtrConnectAdd._SetUpdate := cxGridDBBandedTableView1connect_id.DataBinding.Field.AsInteger;
  fmEtrConnectAdd.ShowModal;
  RefreshQueryGrid(cxGridDBBandedTableView1, 'connect_id');
end;

procedure TfmEtrMonitor.dxBarButton6Click(Sender: TObject);
var
  SP_connect_modify : TADOStoredProc;
begin
  SP_connect_modify := TADOStoredProc.Create(Application);
  SP_connect_modify.Connection    := LisEtran_Connect;
  SP_connect_modify.ProcedureName := 'sp_connect_new_modify;1';
  SP_connect_modify.Parameters.Refresh;
  SP_connect_modify.Parameters.ParamByName('@type_action'     ).Value := 5;
  SP_connect_modify.Parameters.ParamByName('@connect_id'      ).Value := cxGridDBBandedTableView1connect_id.DataBinding.Field.AsInteger;
  SP_connect_modify.ExecProc;
  SP_connect_modify.Free;
  RefreshQueryGrid(cxGridDBBandedTableView1, 'connect_id');
end;

procedure TfmEtrMonitor.dxBarButton7Click(Sender: TObject);
var
  SP_connect_modify : TADOStoredProc;
begin
  SP_connect_modify := TADOStoredProc.Create(Application);
  SP_connect_modify.Connection    := LisEtran_Connect;
  SP_connect_modify.ProcedureName := 'sp_connect_new_modify;1';
  SP_connect_modify.Parameters.Refresh;
  SP_connect_modify.Parameters.ParamByName('@type_action'     ).Value := 6;
  SP_connect_modify.Parameters.ParamByName('@connect_id'      ).Value := cxGridDBBandedTableView1connect_id.DataBinding.Field.AsInteger;
  SP_connect_modify.ExecProc;
  SP_connect_modify.Free;
  RefreshQueryGrid(cxGridDBBandedTableView1, 'connect_id');
end;

procedure TfmEtrMonitor.dxBarButton8Click(Sender: TObject);
begin
  case TdxBarButton(Sender).ClickItemLink.Owner.Owner.Tag of
    0: PrintcxGrid(cxGridDBBandedTableView1);
    1: PrintcxGrid(cxGridDBBandedTableView2);
    2: PrintcxGrid(cxGridDBBandedTableView3);
  end;
end;

procedure TfmEtrMonitor.dxBarButton9Click(Sender: TObject);
var
  SP : TADOStoredProc;
   i : integer;
begin
  case TdxBarButton(Sender).ClickItemLink.Owner.Owner.Tag of
    1:  begin
          SP := TADOStoredProc.Create(Application);
          SP.Connection    := LisEtran_Connect;
          SP.ProcedureName := 'sp_query_refresh';
          for i:=0 to cxGridDBBandedTableView2.Controller.SelectedRecordCount - 1 do begin
            SP.Parameters.Refresh;
            SP.Parameters.ParamByName('@type_action').Value := 2;
            SP.Parameters.ParamByName('@query_id'   ).Value := cxGridDBBandedTableView2.Controller.SelectedRows[i].Values[cxGridDBBandedTableView2query_id.Index];
            SP.ExecProc;
          end;
          SP.Free;
          RefreshQueryGrid(cxGridDBBandedTableView2, 'query_id');
        end;
    2:  begin
          SP := TADOStoredProc.Create(Application);
          SP.Connection    := LisEtran_Connect;
          SP.ProcedureName := 'sp_query_docs_refresh';
          for i:=0 to cxGridDBBandedTableView3.Controller.SelectedRecordCount - 1 do begin
            SP.Parameters.Refresh;
            SP.Parameters.ParamByName('@type_action'  ).Value := 2;
            SP.Parameters.ParamByName('@query_docs_id').Value := cxGridDBBandedTableView3.Controller.SelectedRows[i].Values[cxGridDBBandedTableView3query_docs_id.Index];
            SP.ExecProc;
          end;
          SP.Free;
          RefreshQueryGrid(cxGridDBBandedTableView3, 'query_docs_id');
        end;
  end;

end;

procedure TfmEtrMonitor.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  StoreRegistryGrid(rgSave,'\Software\Lis1\EtrMonitor_Grids', cxGridDBBandedTableView3);
  StoreRegistryGrid(rgSave,'\Software\Lis1\EtrMonitor_Grids', cxGridDBBandedTableView2);
  StoreRegistryGrid(rgSave,'\Software\Lis1\EtrMonitor_Grids', cxGridDBBandedTableView1);
  Action := caFree;
end;

procedure TfmEtrMonitor.RefreshGrid();
begin
end;



end.
