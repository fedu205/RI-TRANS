unit FindVagonGU12Wizard;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Default, Raznoe, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxPC, ExtCtrls, cxStyles, cxCustomData, cxFilter,
  cxData, cxDataStorage, cxEdit, DB, cxDBData, StdCtrls, Buttons, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridBandedTableView,
  cxGridDBBandedTableView, cxClasses, cxGridCustomView, cxGrid, cxContainer,
  cxTextEdit, cxCurrencyEdit, ADODB, DBClient, dxBar, ImgList, Menus, cxButtons,
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
  dxSkinXmas2008Blue, dxSkinscxPCPainter, dxBarBuiltInMenu, cxNavigator,
  dxSkinsdxBarPainter, System.ImageList, dxSkinTheBezier, cxDataControllerConditionalFormattingRulesManagerDialog, cxImageList, dxSkinOffice2019Colorful,
  dxDateRanges;

type
  TfmFindVagonGU12Wizard = class(TForm)
    cxPageControl1: TcxPageControl;
    Panel1: TPanel;
    cxTabSheet1: TcxTabSheet;
    cxTabSheet2: TcxTabSheet;
    Panel2: TPanel;
    Panel4: TPanel;
    Panel3: TPanel;
    cxCurrencyEdit3: TcxCurrencyEdit;
    cxCurrencyEdit1: TcxCurrencyEdit;
    cxCurrencyEdit2: TcxCurrencyEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    DS_Claim: TDataSource;
    Client_Claim: TClientDataSet;
    Client_Claimid: TAutoIncField;
    Client_Claimset_check: TBooleanField;
    Client_Claimclaim_id: TIntegerField;
    Client_ClaimClaimID: TIntegerField;
    Client_ClaimclaimStateID: TIntegerField;
    Client_ClaimclaimState: TStringField;
    Client_ClaimclaimNumber: TStringField;
    Client_ClaimclmSenderName: TStringField;
    Client_ClaimotprFreightCode: TStringField;
    Client_ClaimotprFreightName: TStringField;
    Client_ClaimclmFromStationName: TStringField;
    Client_ClaimclmFromStationCode: TStringField;
    Client_ClaimgpPodDate: TDateField;
    Client_ClaimgpWeight: TCurrencyField;
    Client_ClaimgpCarCount: TIntegerField;
    Client_ClaimotprStyk_id: TIntegerField;
    cxGrid1: TcxGrid;
    cxGrid1DBBandedTableView1: TcxGridDBBandedTableView;
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
    cxGrid1DBBandedTableView1otprStyk_id: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1set_check: TcxGridDBBandedColumn;
    cxGrid1Level1: TcxGridLevel;
    dxBarManager1: TdxBarManager;
    dxBarPopupMenu1: TdxBarPopupMenu;
    dxBarButton1: TdxBarButton;
    dxBarSubItem1: TdxBarSubItem;
    dxBarButton2: TdxBarButton;
    dxBarButton3: TdxBarButton;
    dxBarButton4: TdxBarButton;
    dxBarButton5: TdxBarButton;
    dxBarButton6: TdxBarButton;
    cxGrid1DBBandedTableView1id: TcxGridDBBandedColumn;
    ConnectEtran: TADOConnection;
    Connect: TADOConnection;
    BitBtn2: TBitBtn;
    cxImageList1: TcxImageList;
    cxButton1: TcxButton;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cxGrid1DBBandedTableView1KeyPress(Sender: TObject; var Key: Char);
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
    procedure dxBarButton1Click(Sender: TObject);
    procedure dxBarButton2Click(Sender: TObject);
    procedure dxBarButton3Click(Sender: TObject);
    procedure dxBarButton4Click(Sender: TObject);
    procedure dxBarButton5Click(Sender: TObject);
    procedure dxBarButton6Click(Sender: TObject);
    procedure cxGrid1DBBandedTableView1DblClick(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure Client_ClaimAfterPost(DataSet: TDataSet);
    procedure dxBarPopupMenu1Popup(Sender: TObject);
  private
    Fusr_pwd: PUser_pwd;
    Fstr_otprStyk_id : string;
    Faround   : integer;
    Fspeed     : integer;
    Fdays_load : integer;
    Fcnt_claim : integer;
    procedure SetStrotprStykID(str_otprStyk_id: string);
    procedure SetAround(around: integer);
    procedure SetSpeed(speed: integer);
    procedure SetDaysLoad(days_load: integer);
  public
    constructor Create(AOwner: TApplication; usr_pwd: PUser_pwd); reintroduce;
  published
    property _GetStrotprStykID : string read Fstr_otprStyk_id;
    property _GetAround        : integer read Faround;
    property _GetSpeed         : integer read Fspeed;
    property _GetDaysLoad      : integer read Fdays_load;
    property _SetStrotprStykID : string  write SetStrotprStykID;
    property _SetAround        : integer write SetAround;
    property _SetSpeed         : integer write SetSpeed;
    property _SetDaysLoad      : integer write SetDaysLoad;
  end;

var
  fmFindVagonGU12Wizard: TfmFindVagonGU12Wizard;

implementation

uses FindVagonGU12;

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


procedure TfmFindVagonGU12Wizard.Client_ClaimAfterPost(DataSet: TDataSet);
var cnt_claim : integer;
    id : integer;
begin
  id := Client_Claim.FieldByName('id').AsInteger;
  cnt_claim := 0;


  Client_Claim.DisableControls;
  Client_Claim.First;
  while not Client_Claim.Eof do begin
    if Client_Claim.FieldByName('set_check').Value = True then begin
      cnt_claim := cnt_claim + 1;
    end;

    Client_Claim.Next;
  end;

  Label6.Caption := 'Выбрано ' + IntToStr(cnt_claim) + ' отправок (выбор по правой кнопки мышки)';
  Client_Claim.Locate('id', id, []);
  Client_Claim.EnableControls;


//  if DataSet.FieldByName('set_check').Value = True then begin
//    Fcnt_claim := Fcnt_claim + 1;
//  end else begin
//    Fcnt_claim := Fcnt_claim - 1;
//  end;
end;

constructor TfmFindVagonGU12Wizard.Create(AOwner: TApplication; usr_pwd: PUser_pwd);
var Q: TADOQuery;
begin
  Screen.Cursor := crHourglass;
  inherited Create(AOwner);

  Fusr_pwd := usr_pwd;

  cxPageControl1.HideTabs := True;
  cxPageControl1.ActivePage := cxTabSheet1;
  Fstr_otprStyk_id := '';
  Faround    := 0;
  Fspeed     := 0;
  Fdays_load := 0;
  Fcnt_claim := 0;
  cxImageList1.GetImage(0, cxButton1.Glyph);


  Connect.ConnectionString := 'Persist Security Info=True;Provider=SQLOLEDB.1;User ID='+usr_pwd^.user_name+';Password='+usr_pwd^.user_pass+';Initial Catalog='+usr_pwd^.catalog+';Data Source='+usr_pwd^.server+';';
  Connect.Connected := True;

  Q := TADOQuery.Create(nil);
  Q.Connection := Connect;
  Q.SQL.Add('SELECT	inf_obj_cod as users_group_cod');
  Q.SQL.Add('FROM	  users INNER JOIN inf_obj on users.users_group_id = inf_obj.inf_obj_id');
  Q.SQL.Add('WHERE	users_name = system_user');
  Q.Open;

  ConnectEtran.ConnectionString := GetEtranConnect(Q.FieldByName('users_group_cod').AsString, usr_pwd);
  ConnectEtran.Connected := True;



  Client_Claim.CreateDataSet;
  Client_Claim.LogChanges := False;

  Q := TADOQuery.Create(nil);
  Q.Connection := ConnectEtran;
  Q.SQL.Add('SELECT	claim.claim_id, ClaimID, claimStateID, claimState, claimNumber, clmSenderName, otprFreightCode, otprFreightName, clmFromStationName, clmFromStationCode, gpPodDate, gpWeight, gpCarCount,');
  Q.SQL.Add('	otprGraphPod.otprStyk_id');
  Q.SQL.Add('FROM	claim');
  Q.SQL.Add('	inner join clmOtpr on claim.claim_id = clmOtpr.claim_id');
  Q.SQL.Add('	inner join otprGraphPod on otprGraphPod.clmOtpr_id = clmOtpr.clmOtpr_id');
  Q.SQL.Add('	inner join etran_global_id on claim.claim_id = etran_global_id.global_id');
  Q.SQL.Add('WHERE	gpPodDate >= convert(varchar(8), getdate(), 112)');
  Q.SQL.Add(' AND claimStateID not in (73, 76)');
  Q.SQL.Add('	AND users_owner_id in (SELECT users2.users_id FROM etran_users users1 inner join etran_users users2 on users1.users_group_id = users2.users_group_id WHERE users1.users_name = system_user)');
  Q.Open;
  Client_Claim.DisableControls;
  while not Q.Eof do begin

    Client_Claim.Append;
    Client_Claim.FieldByName('set_check').Value := False;
    Client_Claim.FieldByName('claim_id').Value := Q.FieldByName('claim_id').Value;
    Client_Claim.FieldByName('ClaimID').Value := Q.FieldByName('ClaimID').Value;
    Client_Claim.FieldByName('claimStateID').Value := Q.FieldByName('claimStateID').Value;
    Client_Claim.FieldByName('claimState').Value := Q.FieldByName('claimState').Value;
    Client_Claim.FieldByName('claimNumber').Value := Q.FieldByName('claimNumber').Value;
    Client_Claim.FieldByName('clmSenderName').Value := Q.FieldByName('clmSenderName').Value;
    Client_Claim.FieldByName('otprFreightCode').Value := Q.FieldByName('otprFreightCode').Value;
    Client_Claim.FieldByName('otprFreightName').Value := Q.FieldByName('otprFreightName').Value;
    Client_Claim.FieldByName('clmFromStationName').Value := Q.FieldByName('clmFromStationName').Value;
    Client_Claim.FieldByName('clmFromStationCode').Value := Q.FieldByName('clmFromStationCode').Value;
    Client_Claim.FieldByName('gpPodDate').Value := Q.FieldByName('gpPodDate').Value;
    Client_Claim.FieldByName('gpWeight').Value := Q.FieldByName('gpWeight').Value;
    Client_Claim.FieldByName('gpCarCount').Value := Q.FieldByName('gpCarCount').Value;
    Client_Claim.FieldByName('otprStyk_id').Value := Q.FieldByName('otprStyk_id').Value;
    Client_Claim.Post;

    Q.Next;
  end;
  Client_Claim.EnableControls;

  Fusr_pwd := usr_pwd;
  Screen.Cursor := crDefault;
end;

procedure TfmFindVagonGU12Wizard.SetStrotprStykID(str_otprStyk_id: string);
var Q: TADOQuery;
begin
  Q := TADOQuery.Create(nil);
  Q.Connection := ConnectEtran;
  Q.SQL.Add('SELECT cod FROM dbo.StrToTbl(''' + str_otprStyk_id + ''', default)');
  Q.Open;

  while not Q.Eof do begin
    if Client_Claim.Locate('otprStyk_id', Q.FieldByName('cod').Value, []) then begin
      Client_Claim.Edit;
      Client_Claim.FieldByName('set_check').Value := True;
      Client_Claim.Post;
    end;
    Q.Next;
  end;
  Q.Free;
end;

procedure TfmFindVagonGU12Wizard.SetAround(around: integer);
begin
  cxCurrencyEdit2.EditValue := around;
end;

procedure TfmFindVagonGU12Wizard.SetSpeed(speed: integer);
begin
  cxCurrencyEdit3.EditValue := speed;
end;

procedure TfmFindVagonGU12Wizard.SetDaysLoad(days_load: integer);
begin
  cxCurrencyEdit1.EditValue := days_load;
end;

procedure TfmFindVagonGU12Wizard.cxButton1Click(Sender: TObject);
begin
  cxButton1.Glyph := nil;
  cxImageList1.GetImage(1, cxButton1.Glyph);
  cxButton1.Caption := 'Ok';
  if cxPageControl1.ActivePage = cxTabSheet1 then begin
    cxPageControl1.ActivePage := cxTabSheet2;
    cxButton1.ModalResult := mrOk;
  end else begin
    Fstr_otprStyk_id := '';
    Client_Claim.DisableControls;
    Client_Claim.First;
    while not Client_Claim.Eof do begin
      if Client_Claim.FieldByName('set_check').Value = True then begin
        Fstr_otprStyk_id := Fstr_otprStyk_id + ', ' + Client_Claim.FieldByName('otprStyk_id').AsString;
      end;
      Client_Claim.Next;
    end;
    Delete(Fstr_otprStyk_id, 1, 2);
    Client_Claim.EnableControls;

    Faround    := cxCurrencyEdit2.EditValue;
    Fspeed     := cxCurrencyEdit3.EditValue;
    Fdays_load := cxCurrencyEdit1.EditValue;

    ModalResult := mrOk;
  end;
end;

procedure TfmFindVagonGU12Wizard.cxGrid1DBBandedTableView1CustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
  if (AViewInfo.GridRecord.Values[cxGrid1DBBandedTableView1set_check.Index]<>NULL) then begin
    if AViewInfo.GridRecord.Values[cxGrid1DBBandedTableView1set_check.Index] = True then begin
      ACanvas.Font.Style := [fsBold];
    end;
  end;

	if AViewInfo.GridRecord.Selected or AViewInfo.GridRecord.Focused then begin
		ACanvas.Brush.Color := clNavy;
		ACanvas.Font.Color := clWhite;
		if AViewInfo.Focused then ACanvas.Brush.Color := clBlue;
	end;
end;

procedure TfmFindVagonGU12Wizard.cxGrid1DBBandedTableView1CustomDrawColumnHeader(
  Sender: TcxGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridColumnHeaderViewInfo; var ADone: Boolean);
begin
	if AViewInfo.Column.Focused then begin
		ACanvas.Brush.Color := clNavy;
		ACanvas.Font.Color := clWhite;
	end;
end;

procedure TfmFindVagonGU12Wizard.cxGrid1DBBandedTableView1DblClick(
  Sender: TObject);
begin
  if Client_Claim.Locate('id', cxGrid1DBBandedTableView1id.DataBinding.Field.Value, []) then begin
    Client_Claim.Edit;
    Client_Claim.FieldByName('set_check').Value := not Client_Claim.FieldByName('set_check').Value;
    Client_Claim.Post;
  end;
end;

procedure TfmFindVagonGU12Wizard.cxGrid1DBBandedTableView1FilterOnChanged(
  Sender: TObject);
begin
	DrawcxGridColumnOnFiltered(Sender);
end;

procedure  TfmFindVagonGU12Wizard.cxGrid1DBBandedTableView1FocusedItemChanged(
  Sender: TcxCustomGridTableView; APrevFocusedItem,
  AFocusedItem: TcxCustomGridTableItem);
begin
	cxGrid1DBBandedTableView1.Painter.Invalidate;
end;

procedure TfmFindVagonGU12Wizard.cxGrid1DBBandedTableView1KeyPress(
  Sender: TObject; var Key: Char);
begin
	FilterColumnGridOnKeyPress(cxGrid1DBBandedTableView1, Key);
end;

procedure TfmFindVagonGU12Wizard.dxBarButton1Click(Sender: TObject);
begin
	PrintcxGrid(cxGrid1DBBandedTableView1);
end;

procedure TfmFindVagonGU12Wizard.dxBarButton2Click(Sender: TObject);
begin
	SetdxDBGridColumns(cxGrid1DBBandedTableView1);
end;

procedure TfmFindVagonGU12Wizard.dxBarButton3Click(Sender: TObject);
begin
	cxGrid1DBBandedTableView1.OptionsView.GroupByBox := not cxGrid1DBBandedTableView1.OptionsView.GroupByBox;
end;

procedure TfmFindVagonGU12Wizard.dxBarButton4Click(Sender: TObject);
begin
	FiltercxGrid4ListID(cxGrid1DBBandedTableView1);
end;

procedure TfmFindVagonGU12Wizard.dxBarButton5Click(Sender: TObject);
begin
	cxGrid1DBBandedTableView1.Filtering.ColumnFilteredItemsList := not dxBarButton5.Down;
end;

procedure TfmFindVagonGU12Wizard.dxBarButton6Click(Sender: TObject);
var i : integer;
    set_check : boolean;
begin
  if cxGrid1DBBandedTableView1set_check.DataBinding.Field.Value = True then
    set_check := False
  else
    set_check := True;

  Client_Claim.DisableControls;
  for i:=0 to cxGrid1DBBandedTableView1.Controller.SelectedRecordCount - 1 do begin
    if Client_Claim.Locate('id',cxGrid1DBBandedTableView1.Controller.SelectedRows[i].Values[cxGrid1DBBandedTableView1id.Index], []) then begin
      Client_Claim.Edit;
      Client_Claim.FieldByName('set_check').Value := set_check;
      Client_Claim.Post;
    end;
  end;
  Client_Claim.EnableControls;
end;

procedure TfmFindVagonGU12Wizard.dxBarPopupMenu1Popup(Sender: TObject);
begin
  if cxGrid1DBBandedTableView1set_check.DataBinding.Field.Value = True then
    dxBarButton6.Caption := 'Снять выбор'
  else
    dxBarButton6.Caption := 'Выбрать';
end;

procedure TfmFindVagonGU12Wizard.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

end.
