unit ECPClaim;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ADODB, dxBar, cxClasses, cxPropertiesStore, cxStyles, ImgList,
  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxCustomData,
  cxFilter, cxData, cxDataStorage, cxEdit, cxDBData, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridBandedTableView, StrUtils,
  cxGridDBBandedTableView, cxGridCustomView, cxGrid, Default, Raznoe, Period, Other,
  cxNavigator, System.ImageList, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMetropolis, dxSkinMetropolisDark, dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinOffice2016Colorful, dxSkinOffice2016Dark, dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus, dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008, dxSkinTheAsphaltWorld, dxSkinsDefaultPainters, dxSkinValentine, dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark, dxSkinVisualStudio2013Light,
  dxSkinVS2010, dxSkinWhiteprint, dxSkinXmas2008Blue, dxSkinscxPCPainter, dxSkinsdxBarPainter,
  cxImageList, cxDataControllerConditionalFormattingRulesManagerDialog, dxSkinOffice2019Colorful, dxSkinTheBezier, dxDateRanges;

type
  TfmECPClaim = class(TForm)
    cxImageList1: TcxImageList;
    ADOEtran: TADOConnection;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1: TcxStyle;
    cxPropertiesStore1: TcxPropertiesStore;
    Query_ECPClaim: TADOQuery;
    DS_ECPClaim: TDataSource;
    cxGrid1: TcxGrid;
    cxGrid1DBBandedTableView1: TcxGridDBBandedTableView;
    cxGrid1Level1: TcxGridLevel;
    dxBarManager1: TdxBarManager;
    dxBarManager1Bar1: TdxBar;
    dxBarButton2: TdxBarButton;
    dxBarButton3: TdxBarButton;
    dxBarButton4: TdxBarButton;
    dxBarButton5: TdxBarButton;
    dxBarSubItem2: TdxBarSubItem;
    dxBarButton8: TdxBarButton;
    dxBarButton9: TdxBarButton;
    dxBarButton10: TdxBarButton;
    dxBarButton11: TdxBarButton;
    dxBarSubItem3: TdxBarSubItem;
    dxBarButton12: TdxBarButton;
    dxBarButton13: TdxBarButton;
    dxBarButton14: TdxBarButton;
    dxBarButton15: TdxBarButton;
    dxBarButton16: TdxBarButton;
    dxBarPopupMenu1: TdxBarPopupMenu;
    dxBarButton1: TdxBarButton;
    cxGrid1DBBandedTableView1etran_ecp_claim_id: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1date_send: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1claimNumber: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1clmSenderName: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1clmStartDate: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1clmFinishDate: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1clmSendKindName: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1clmFromStationName: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1FIO_users_create: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1FIO_users_send: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1set_error: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1users_owner_id: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1date_enter: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1global_color: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1etran_ecp_type_id: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1etran_ecp_type_name: TcxGridDBBandedColumn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure ADOEtranExecuteComplete(Connection: TADOConnection;
      RecordsAffected: Integer; const Error: Error;
      var EventStatus: TEventStatus; const Command: _Command;
      const Recordset: _Recordset);
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
    procedure dxBarButton4Click(Sender: TObject);
    procedure dxBarButton8Click(Sender: TObject);
    procedure dxBarButton9Click(Sender: TObject);
    procedure dxBarButton1Click(Sender: TObject);
    procedure dxBarButton2Click(Sender: TObject);
    procedure dxBarButton3Click(Sender: TObject);
    procedure dxBarButton16Click(Sender: TObject);
  private
    Fusr_pwd         : PUser_pwd;
    Fusers_group_cod : string;
    Fdate1, Fdate2 : TDateTime;
    FIO_users : string;
  public
    constructor Create(AOwner: TApplication; users_group_cod: string; usr_pwd: PUser_pwd);
  published
    property _SetFIOusers : string write FIO_users;
  end;

var
  fmECPClaim: TfmECPClaim;

function CreateWndEtranECPClaim(AppHand: THandle; users_group_cod: string; usr_pwd: PUser_pwd; FIO_users: string): variant; export;

implementation

uses ECPClaimAdd;

{$R *.dfm}

function CreateWndEtranECPClaim(AppHand: THandle; users_group_cod: string; usr_pwd: PUser_pwd; FIO_users: string): variant;
begin
    Application.Handle := AppHand;
  try
    fmECPClaim := TfmECPClaim.Create(Application, users_group_cod, usr_pwd);
    fmECPClaim._SetFIOusers := FIO_users;

    if  fmECPClaim.ShowModal = mrOk then result := VarArrayOf([-9, '']);
  finally
    fmECPClaim.Free;
  end;
end;


constructor TfmECPClaim.Create(AOwner: TApplication; users_group_cod: string; usr_pwd: PUser_pwd);
var   login : string;
    db_name : string;
begin
  Screen.Cursor := -11;
  inherited Create(nil);

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

  StoreRegistryGrid(rgLoad,'\Software\Lis1\ECPClaim\MainGrids', cxGrid1DBBandedTableView1);

  ADOEtran.Connected := False;
  ADOEtran.ConnectionString := 'Persist Security Info=True;Provider=SQLOLEDB.1;User ID='+login+';Password='+'etran'+';Initial Catalog='+db_name+';Data Source='+Fusr_pwd^.server+';';
  ADOEtran.Connected := True;


  dxBarSubItem2.Caption := StoreRegistryDate(rgLoad, '\Software\Lis1\DateTime\ECPClaim', Fdate1, Fdate2);

  Query_ECPClaim.Parameters.ParamByName('date1').Value := Fdate1;
  Query_ECPClaim.Parameters.ParamByName('date2').Value := Fdate2;
  Query_ECPClaim.Parameters.ParamByName('users_name').Value := login;
  Query_ECPClaim.Open;

  Screen.Cursor := 0;
end;


procedure TfmECPClaim.cxGrid1DBBandedTableView1CustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
	if AViewInfo.GridRecord.Selected or AViewInfo.GridRecord.Focused then begin
		ACanvas.Brush.Color := clNavy;
		ACanvas.Font.Color := clWhite;
		if AViewInfo.Focused then ACanvas.Brush.Color := clBlue;
	end;
end;

procedure TfmECPClaim.cxGrid1DBBandedTableView1CustomDrawColumnHeader(
  Sender: TcxGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridColumnHeaderViewInfo; var ADone: Boolean);
begin
	if AViewInfo.Column.Focused then begin
		ACanvas.Brush.Color := clNavy;
		ACanvas.Font.Color := clWhite;
	end;
end;

procedure TfmECPClaim.cxGrid1DBBandedTableView1FilterOnChanged(Sender: TObject);
begin
	DrawcxGridColumnOnFiltered(Sender);
end;

procedure TfmECPClaim.cxGrid1DBBandedTableView1FocusedItemChanged(
  Sender: TcxCustomGridTableView; APrevFocusedItem,
  AFocusedItem: TcxCustomGridTableItem);
begin
	cxGrid1DBBandedTableView1.Painter.Invalidate;
end;

procedure TfmECPClaim.ADOEtranExecuteComplete(Connection: TADOConnection;
  RecordsAffected: Integer; const Error: Error; var EventStatus: TEventStatus;
  const Command: _Command; const Recordset: _Recordset);
begin
  if EventStatus = esErrorsOccured then begin
    Application.MessageBox(PWideChar(Error.Description), 'Внимание', MB_OK);
    ShowTextMessage('', True);
  end;
end;

procedure TfmECPClaim.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TfmECPClaim.FormDestroy(Sender: TObject);
begin
  StoreRegistryDate(rgSave, '\Software\Lis1\DateTime\ECPClaim', Fdate1, Fdate2);
  StoreRegistryGrid(rgSave, '\Software\Lis1\ECPClaim\MainGrids', cxGrid1DBBandedTableView1);
end;

procedure TfmECPClaim.cxGrid1DBBandedTableView1KeyPress(Sender: TObject;
  var Key: Char);
begin
	FilterColumnGridOnKeyPress(cxGrid1DBBandedTableView1, Key);
end;

procedure TfmECPClaim.dxBarButton16Click(Sender: TObject);
var Q: TADOQuery;
begin
  if not cxGrid1DBBandedTableView1set_error.DataBinding.Field.IsNull then begin
    if cxGrid1DBBandedTableView1set_error.DataBinding.Field.AsBoolean = True then begin
      Q := TADOQuery.Create(nil);
      Q.Connection := ADOEtran;
      Q.SQL.Add('DECLARE @xml xml');
      Q.SQL.Add('SELECT @xml = etran_ecp_reply_xml FROM etran_claim_ecp WHERE etran_ecp_claim_id = ' + IntToStr(cxGrid1DBBandedTableView1etran_ecp_claim_id.DataBinding.Field.AsInteger));
      Q.SQL.Add('');
      Q.SQL.Add('SELECT	ref.value(''(errorMessage/@value)[1]'',''varchar(800)'') as error_message');
      Q.SQL.Add('FROM	  @xml.nodes(''/error'') as node(ref)');
      Q.Open;
      Application.MessageBox(PChar(Q.FieldByName('error_message').AsString), 'Ошибка', MB_ICONSTOP or MB_OK);
      Q.Free;
    end;
  end;
end;

procedure TfmECPClaim.dxBarButton1Click(Sender: TObject);
begin
  fmECPClaimAdd := TfmECPClaimAdd.Create(nil);
  fmECPClaimAdd._SetFIOusers := FIO_users;
  if fmECPClaimAdd.ShowModal = mrOK then begin
    RefreshQueryGrid(cxGrid1DBBandedTableView1, 'etran_ecp_claim_id', fmECPClaimAdd._GetECPClaimId);
  end;
end;

procedure TfmECPClaim.dxBarButton2Click(Sender: TObject);
begin
  fmECPClaimAdd := TfmECPClaimAdd.Create(nil);
  fmECPClaimAdd._SetFIOusers := FIO_users;
  fmECPClaimAdd._SetUpdate := cxGrid1DBBandedTableView1etran_ecp_claim_id.DataBinding.Field.AsInteger;
  if fmECPClaimAdd.ShowModal = mrOk then begin
  RefreshQueryGrid(cxGrid1DBBandedTableView1, 'etran_ecp_claim_id', fmECPClaimAdd._GetECPClaimId);
  end;
end;

procedure TfmECPClaim.dxBarButton3Click(Sender: TObject);
var                i : integer;
 sp_etran_ecp_claim_modify : TADOStoredProc;
begin
  if Application.MessageBox(PChar('Вы точно уверены, что хотите удалить выделенные заявки?'),'Внимание',MB_OKCANCEL) = ID_OK then begin
      Screen.Cursor := -11;

      sp_etran_ecp_claim_modify := TADOStoredProc.Create(nil);
      sp_etran_ecp_claim_modify.Connection := ADOEtran;
      sp_etran_ecp_claim_modify.ProcedureName := 'sp_etran_ecp_claim_modify';

      for i := 0 to cxGrid1DBBandedTableView1.Controller.SelectedRowCount - 1 do begin

        sp_etran_ecp_claim_modify.Close;
        sp_etran_ecp_claim_modify.Parameters.Refresh;
        sp_etran_ecp_claim_modify.Parameters.ParamByName('@etran_ecp_claim_id').Value := cxGrid1DBBandedTableView1.Controller.SelectedRows[i].Values[cxGrid1DBBandedTableView1etran_ecp_claim_id.Index];
        sp_etran_ecp_claim_modify.Parameters.ParamByName('@type_action' ).Value := 2;
        try
          sp_etran_ecp_claim_modify.ExecProc;
          ShowTextMessage('Осталось '+IntToStr(cxGrid1DBBandedTableView1.Controller.SelectedRowCount - i)+' записей...', False);
        except
        end;
      end;
      RefreshQueryGrid(cxGrid1DBBandedTableView1, 'etran_ecp_claim_id');
      sp_etran_ecp_claim_modify.Free;
      ShowTextMessage;
  end;
end;

procedure TfmECPClaim.dxBarButton4Click(Sender: TObject);
begin
  RefreshQueryGrid(cxGrid1DBBandedTableView1, 'etran_ecp_claim_id');
end;

procedure TfmECPClaim.dxBarButton8Click(Sender: TObject);
begin
  fmPeriod := TfmPeriod.Create(Application, Fdate1, Fdate2, 3);
  if fmPeriod.ShowModal=mrOK then begin
    Fdate1 := fmPeriod._GetMonth;
    Fdate2 := IncMonth(Fdate1, 1);
    dxBarSubItem2.Caption := FormatDateTime('mmmm yyyy', Fdate1);
    Screen.Cursor := crHourGlass;
    Query_ECPClaim.Close;
    Query_ECPClaim.Parameters.ParamByName('date1').Value := Fdate1;
    Query_ECPClaim.Parameters.ParamByName('date2').Value := Fdate2;
    Query_ECPClaim.Open;
    Screen.Cursor := crDefault;
  end;
end;

procedure TfmECPClaim.dxBarButton9Click(Sender: TObject);
begin
  fmPeriod := TfmPeriod.Create(Application, Fdate1, Fdate2, 2);
  if fmPeriod.ShowModal=mrOK then begin
    Fdate1 := fmPeriod._GetMonthBegin;
    Fdate2 := fmPeriod._GetMonthEnd;
    dxBarSubItem2.Caption := FormatDateTime('mmm yy', Fdate1) + ' - ' + FormatDateTime('mmm yy', Fdate2);
    Screen.Cursor := crHourGlass;
    Query_ECPClaim.Close;
    Query_ECPClaim.Parameters.ParamByName('date1').Value := Fdate1;
    Query_ECPClaim.Parameters.ParamByName('date2').Value := Fdate2;
    Query_ECPClaim.Open;
    Screen.Cursor := crDefault;
  end;
end;

end.


