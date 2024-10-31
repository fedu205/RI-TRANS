unit ECPOtstClaim;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, cxNavigator, Data.DB, cxDBData, Data.Win.ADODB,
  cxGridLevel, cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, cxClasses, System.ImageList, Vcl.ImgList,
  cxPropertiesStore, dxBar, dxSkinsForm, cxGridBandedTableView,
  cxGridDBBandedTableView, Default, Raznoe, Period, Other, ECPQuery,
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
  dxSkinXmas2008Blue, dxSkinscxPCPainter, dxSkinsdxBarPainter, cxImageList,
  cxDataControllerConditionalFormattingRulesManagerDialog, dxDateRanges, dxSkinTheBezier, dxSkinOffice2019Colorful,
  dxSkinBasic, dxSkinOffice2019Black, dxSkinOffice2019DarkGray,
  dxSkinOffice2019White, dxScrollbarAnnotations, dxCore;

type
  TfmECPOtstClaim = class(TForm)
    dxSkinController1: TdxSkinController;
    cxLookAndFeelController1: TcxLookAndFeelController;
    dxBarManager1: TdxBarManager;
    dxBarManager1Bar1: TdxBar;
    dxBarButton2: TdxBarButton;
    dxBarButton3: TdxBarButton;
    dxBarButton4: TdxBarButton;
    dxBarButton5: TdxBarButton;
    dxBarButton7: TdxBarButton;
    dxBarSubItem2: TdxBarSubItem;
    dxBarButton8: TdxBarButton;
    dxBarButton9: TdxBarButton;
    dxBarButton10: TdxBarButton;
    cxPropertiesStore1: TcxPropertiesStore;
    cxImageList1: TcxImageList;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1: TcxStyle;
    cxStyle2: TcxStyle;
    cxStyle3: TcxStyle;
    cxStyle4: TcxStyle;
    ADOEtran: TADOConnection;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    Query_ECPOsts: TADOQuery;
    DS_ECPOsts: TDataSource;
    cxGrid1DBBandedTableView1: TcxGridDBBandedTableView;
    cxGrid1DBBandedTableView1etran_ecp_otst_id: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1RW_Id: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1RW_name: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1ClOKPO: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1ContractNum: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1Contract_Id: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1OtstOtpravka_NumOtp: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1OtstOtpravka_otprStationCode: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1OtstOtpravka_otprStationName: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1OtstOtpravka_otstStationCode: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1OtstOtpravka_otstStationName: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1OtstOtpravka_DateOtstBegin: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1OtstOtpravka_DateOtstEnd: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1OtstOtpravka_KolWag: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1OtstOtpravka_Skidka: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1OtstOtpravka_Wags: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1OtstOtpravka_SelUslWag: TcxGridDBBandedColumn;
    dxBarPopupMenu1: TdxBarPopupMenu;
    dxBarButton13: TdxBarButton;
    dxBarSubItem5: TdxBarSubItem;
    dxBarButton14: TdxBarButton;
    dxBarButton15: TdxBarButton;
    cxGrid1DBBandedTableView1FIO_users_create: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1FIO_users_send: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1date_send: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1set_error: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1date_enter: TcxGridDBBandedColumn;
    dxBarButton1: TdxBarButton;
    dxBarButton6: TdxBarButton;
    cxGrid1DBBandedTableView1DocNum: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1Doc_ID: TcxGridDBBandedColumn;
    dxBarSubItem1: TdxBarSubItem;
    dxBarButton11: TdxBarButton;
    cxGrid1DBBandedTableView1date_viza: TcxGridDBBandedColumn;
    dxBarButton12: TdxBarButton;
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
    procedure dxBarButton13Click(Sender: TObject);
    procedure dxBarButton14Click(Sender: TObject);
    procedure dxBarButton15Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure dxBarButton7Click(Sender: TObject);
    procedure dxBarButton4Click(Sender: TObject);
    procedure dxBarButton1Click(Sender: TObject);
    procedure dxBarButton8Click(Sender: TObject);
    procedure dxBarButton9Click(Sender: TObject);
    procedure dxBarButton2Click(Sender: TObject);
    procedure dxBarButton5Click(Sender: TObject);
    procedure dxBarButton10Click(Sender: TObject);
    procedure dxBarButton3Click(Sender: TObject);
    procedure dxBarButton11Click(Sender: TObject);
    procedure dxBarButton12Click(Sender: TObject);
  private
    Fusr_pwd         : PUser_pwd;
    Fusers_group_cod : string;
    Fdate1, Fdate2 : TDateTime;
    FIO_users : string;
    Fetran_ip : string;
    Fetran_port : string;
  public
    constructor Create(AOwner: TApplication; users_group_cod: string; usr_pwd: PUser_pwd);
  published
    property _SetFIOusers : string write FIO_users;
    property _SetEtranIP  : string write Fetran_ip;
    property _SetEtranPort : string write Fetran_port;
  end;

var
  fmECPOtstClaim: TfmECPOtstClaim;

function CreateWndEtranECPOtstClaim(AppHand: THandle; users_group_cod: string; usr_pwd: PUser_pwd; FIO_users: string; etran_ecp_id: integer): variant; export;

implementation

{$R *.dfm}

uses ECPOtstClaimAdd;


function CreateWndEtranECPOtstClaim(AppHand: THandle; users_group_cod: string; usr_pwd: PUser_pwd; FIO_users: string; etran_ecp_id: integer): variant; export;
begin
  Application.Handle := AppHand;
  try
    fmECPOtstClaim := TfmECPOtstClaim.Create(Application, users_group_cod, usr_pwd);
    fmECPOtstClaim._SetFIOusers := FIO_users;

    //-- изменить по мере необходимости возвращаемых параметров
    if  fmECPOtstClaim.ShowModal = mrOk then result := VarArrayOf([-9, '']);
  finally
    fmECPOtstClaim.Free;
  end;
end;


constructor TfmECPOtstClaim.Create(AOwner: TApplication; users_group_cod: string; usr_pwd: PUser_pwd);
var   login : string;
    db_name : string;
          Q : TADOQuery;
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
//  if Fusers_group_cod = '35' then begin login := 'Etran_ULG'; db_name := 'lis_etran'; end;

//  if Fusers_group_cod =  '0' then Fetran_ip := '172.16.200.129'; // Совфрахт
//  if Fusers_group_cod = '35' then Fetran_ip := '172.25.45.4' ;  // Урал Логистика
  Fetran_ip := '92.53.107.222';
  Fetran_port := '7450';


  ADOEtran.Connected := False;
  ADOEtran.ConnectionString := 'Persist Security Info=True;Provider=SQLOLEDB.1;User ID='+login+';Password='+'etran'+';Initial Catalog='+db_name+';Data Source='+Fusr_pwd^.server+';';
  ADOEtran.Connected := True;


  dxBarSubItem2.Caption := StoreRegistryDate(rgLoad, '\Software\Lis1\DateTime\ECPOtstClaim', Fdate1, Fdate2);

  Query_ECPOsts.Parameters.ParamByName('date1'     ).Value := Fdate1;
  Query_ECPOsts.Parameters.ParamByName('date2'     ).Value := Fdate2;
  Query_ECPOsts.Parameters.ParamByName('users_name').Value := login;
  Query_ECPOsts.Open;

  StoreRegistryGrid(rgLoad,'\Software\Lis1\MainGrids\ECPOtstClaim', cxGrid1DBBandedTableView1);

  Screen.Cursor := 0;
end;

procedure TfmECPOtstClaim.cxGrid1DBBandedTableView1CustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
  if (AViewInfo.GridRecord.Values[cxGrid1DBBandedTableView1date_send.Index] <> null) then begin
    ACanvas.Font.Color := clPurple; //clMoneyGreen - $00AF0AAA;
    ACanvas.Font.Style := [fsBold];
  end;

  if (AViewInfo.GridRecord.Values[cxGrid1DBBandedTableView1set_error.Index]<>NULL) AND (AViewInfo.GridRecord.Values[cxGrid1DBBandedTableView1set_error.Index]<>0) then ACanvas.Font.Color := clRed;

	if AViewInfo.GridRecord.Selected or AViewInfo.GridRecord.Focused then begin
		ACanvas.Brush.Color := clNavy;
		ACanvas.Font.Color := clWhite;
		if AViewInfo.Focused then ACanvas.Brush.Color := clBlue;
	end;
end;

procedure TfmECPOtstClaim.cxGrid1DBBandedTableView1CustomDrawColumnHeader(
  Sender: TcxGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridColumnHeaderViewInfo; var ADone: Boolean);
begin
	if AViewInfo.Column.Focused then begin
		ACanvas.Brush.Color := clNavy;
		ACanvas.Font.Color := clWhite;
	end;
end;

procedure TfmECPOtstClaim.cxGrid1DBBandedTableView1FilterOnChanged(
  Sender: TObject);
begin
	DrawcxGridColumnOnFiltered(Sender);
end;

procedure TfmECPOtstClaim.cxGrid1DBBandedTableView1FocusedItemChanged(
  Sender: TcxCustomGridTableView; APrevFocusedItem,
  AFocusedItem: TcxCustomGridTableItem);
begin
	cxGrid1DBBandedTableView1.Painter.Invalidate;
end;

procedure TfmECPOtstClaim.cxGrid1DBBandedTableView1KeyPress(Sender: TObject;
  var Key: Char);
begin
	FilterColumnGridOnKeyPress(cxGrid1DBBandedTableView1, Key);
end;

procedure TfmECPOtstClaim.dxBarButton10Click(Sender: TObject);
var            id, i : integer;
 sp_etran_ecp_otst_modify : TADOStoredProc;
begin
  if Application.MessageBox(PChar('Скопировать выделенные заявки?'),'Внимание',MB_OKCANCEL) = ID_OK then begin
      Screen.Cursor := -11;

      sp_etran_ecp_otst_modify := TADOStoredProc.Create(nil);
      sp_etran_ecp_otst_modify.Connection := ADOEtran;
      sp_etran_ecp_otst_modify.ProcedureName := 'sp_etran_ecp_otst_modify';

      for i := 0 to cxGrid1DBBandedTableView1.Controller.SelectedRowCount - 1 do begin
        sp_etran_ecp_otst_modify.Parameters.Refresh;
        sp_etran_ecp_otst_modify.Parameters.ParamByName('@etran_ecp_otst_id' ).Value := cxGrid1DBBandedTableView1.Controller.SelectedRows[i].Values[cxGrid1DBBandedTableView1etran_ecp_otst_id.Index];
        sp_etran_ecp_otst_modify.Parameters.ParamByName('@type_action'       ).Value := 5;
        sp_etran_ecp_otst_modify.Parameters.ParamByName('@FIO_users_create'  ).Value := FIO_users;
        try
          sp_etran_ecp_otst_modify.ExecProc;
          id := sp_etran_ecp_otst_modify.Parameters.ParamByName('@etran_ecp_otst_id').Value;
          ShowTextMessage('Осталось '+IntToStr(cxGrid1DBBandedTableView1.Controller.SelectedRowCount - i)+' записей...', False);
        except
        end;
      end;

      RefreshQueryGrid(cxGrid1DBBandedTableView1, 'etran_ecp_otst_id', id);
      sp_etran_ecp_otst_modify.Free;
      ShowTextMessage;
  end;
end;

procedure TfmECPOtstClaim.dxBarButton11Click(Sender: TObject);
var                         Q : TADOQuery;
    sp_etran_ecp_otst_ungroup : TADOStoredProc;
begin

  Q := TADOQuery.Create(nil);
  Q.Connection := ADOEtran;
  Q.SQL.Add('SELECT	OtstOtpravka_KolWag as cnt_vagon ');
  Q.SQL.Add('FROM	etran_ecp_otst WHERE etran_ecp_otst_id = ' + IntToStr(cxGrid1DBBandedTableView1etran_ecp_otst_id.DataBinding.Field.AsInteger));
  Q.Open;

  if Application.MessageBox(PChar('Внимание!'+#13+#10+
                                  'Данная заявка будет удалена, вместо удаленной будет создано ' + IntToStr(Q.FieldByName('cnt_vagon').AsInteger) + ' заявок.'+#13+#10+
                                  'Продолжить?'), 'Внимание', MB_ICONQUESTION or MB_YESNO) = ID_YES then begin
    sp_etran_ecp_otst_ungroup := TADOStoredProc.Create(nil);
    sp_etran_ecp_otst_ungroup.Connection := ADOEtran;
    sp_etran_ecp_otst_ungroup.ProcedureName := 'sp_etran_ecp_otst_ungroup';
    sp_etran_ecp_otst_ungroup.Parameters.Refresh;
    sp_etran_ecp_otst_ungroup.Parameters.ParamByName('@etran_ecp_otst_id' ).Value := cxGrid1DBBandedTableView1etran_ecp_otst_id.DataBinding.Field.AsInteger;
    sp_etran_ecp_otst_ungroup.Parameters.ParamByName('@FIO_users_create'  ).Value := FIO_users;
    sp_etran_ecp_otst_ungroup.ExecProc;

    RefreshQueryGrid(cxGrid1DBBandedTableView1, 'etran_ecp_otst_id');
  end;

  Q.Free;

end;

procedure TfmECPOtstClaim.dxBarButton12Click(Sender: TObject);
var str_query : string;
        Q, Q2 : TADOQuery;
  m : TStringList;
  v : Variant;
  i : integer;
  sp_etran_ecp_otst_modify : TADOStoredProc;
  send_text : string;
  d : TDateTime;
begin
  d := Date;
  fmPeriod := TfmPeriod.Create(Application, d, d, 7);
  if fmPeriod.ShowModal = mrOk then begin

    d := fmPeriod._GetDateBegin;
    Q := TADOQuery.Create(nil);
    Q.Connection := ADOEtran;

    for i := 0 to cxGrid1DBBandedTableView1.Controller.SelectedRowCount - 1 do begin
      Q.SQL.Clear;
      Q.SQL.Add('SELECT Doc_ID, OtstOtpravka_NumOtp, OtstOtpravka_KolWag, OtstOtpravka_Wags FROM view_etran_ecp_otst  WHERE etran_ecp_otst_id = ' + IntToStr(cxGrid1DBBandedTableView1.Controller.SelectedRows[i].Values[cxGrid1DBBandedTableView1etran_ecp_otst_id.Index]));
      Q.Open;

      send_text := '<?xml version="1.0" encoding="windows-1251"?>';
      send_text := send_text + '<OtstClaimProlong version="1.0">';
      send_text := send_text + '<docID value="' + Q.FieldByName('Doc_ID').AsString + '"/>';
      send_text := send_text + '<OtpNum value="' + Q.FieldByName('OtstOtpravka_NumOtp').AsString + '"/>';
      send_text := send_text + '<FinishDate value="' + FormatDateTime('dd.mm.yyyy', d) + '"/>';
      send_text := send_text + '<VagCnt value="' + Q.FieldByName('OtstOtpravka_KolWag').AsString + '"/>';
      send_text := send_text + '<Vags value="' + Q.FieldByName('OtstOtpravka_Wags').AsString + '"/>';
      send_text := send_text + '</OtstClaimProlong>';

      v := CreateWndSendDocs(Fetran_ip, '7400', send_text);

      sp_etran_ecp_otst_modify := TADOStoredProc.Create(nil);
      sp_etran_ecp_otst_modify.Connection := ADOEtran;
      sp_etran_ecp_otst_modify.ProcedureName := 'sp_etran_ecp_otst_modify';
      sp_etran_ecp_otst_modify.Parameters.Refresh;
      sp_etran_ecp_otst_modify.Parameters.ParamByName('@etran_ecp_otst_id'   ).Value := cxGrid1DBBandedTableView1.Controller.SelectedRows[i].Values[cxGrid1DBBandedTableView1etran_ecp_otst_id.Index];
      sp_etran_ecp_otst_modify.Parameters.ParamByName('@type_action'         ).Value := 8;
      sp_etran_ecp_otst_modify.Parameters.ParamByName('@date_viza'           ).Value := Now;
      sp_etran_ecp_otst_modify.Parameters.ParamByName('@etran_ecp_reply_xml' ).Value := v[1];
      sp_etran_ecp_otst_modify.Parameters.ParamByName('@FIO_users_send'      ).Value := FIO_users;
      sp_etran_ecp_otst_modify.ExecProc;
      sp_etran_ecp_otst_modify.Free;
    end;

    ShowTextMessage;
    RefreshQueryGrid(cxGrid1DBBandedTableView1, 'etran_ecp_otst_id');
    Q.Free;
  end;


end;

procedure TfmECPOtstClaim.dxBarButton13Click(Sender: TObject);
begin
	PrintcxGrid(cxGrid1DBBandedTableView1);
end;

procedure TfmECPOtstClaim.dxBarButton14Click(Sender: TObject);
begin
	SetdxDBGridColumns(cxGrid1DBBandedTableView1);
end;

procedure TfmECPOtstClaim.dxBarButton15Click(Sender: TObject);
begin
	cxGrid1DBBandedTableView1.OptionsView.GroupByBox := not cxGrid1DBBandedTableView1.OptionsView.GroupByBox;
end;

procedure TfmECPOtstClaim.dxBarButton1Click(Sender: TObject);
begin
  Screen.Cursor := crHourglass;

  if TControl(Sender).Tag = 1 then begin
    Fdate1 := IncMonth(Fdate1, 1);
  end;

  if TControl(Sender).Tag = 2 then begin
    Fdate1 := IncMonth(Fdate1, -1);
  end;

  Fdate2 := IncMonth(Fdate1, 1) - 1;
  dxBarSubItem2.Caption := FormatDateTime('mmmm yyyy', Fdate1);
  dxBarManager1Bar1.Reset;

  dxBarButton1.Caption := FormatDateTime('mmmm yyyy', IncMonth(Fdate1,-1));
  dxBarButton6.Caption := FormatDateTime('mmmm yyyy', IncMonth(Fdate1,1));

  Query_ECPOsts.Close;
  Query_ECPOsts.Parameters.ParamByName('date1'     ).Value := Fdate1;
  Query_ECPOsts.Parameters.ParamByName('date2'     ).Value := Fdate2;
  Query_ECPOsts.Open;

  Screen.Cursor := crDefault;
end;

procedure TfmECPOtstClaim.dxBarButton2Click(Sender: TObject);
begin
  fmECPOtstClaimAdd := TfmECPOtstClaimAdd.Create(Application, ADOEtran, Fusers_group_cod);
  fmECPOtstClaimAdd._SetFIOUsers := FIO_users;
  fmECPOtstClaimAdd._SetUpdate := cxGrid1DBBandedTableView1etran_ecp_otst_id.DataBinding.Field.Value;

  if fmECPOtstClaimAdd.ShowModal = mrOK then begin
    RefreshQueryGrid(cxGrid1DBBandedTableView1, 'etran_ecp_otst_id', fmECPOtstClaimAdd._GetECPOtstId);
  end;
end;

procedure TfmECPOtstClaim.dxBarButton3Click(Sender: TObject);
var                     i : integer;
 sp_etran_ecp_otst_modify : TADOStoredProc;
begin
  if Application.MessageBox(PChar('Вы точно уверены, что хотите удалить выделенные заявки?'),'Внимание',MB_OKCANCEL) = ID_OK then begin
      Screen.Cursor := -11;

      sp_etran_ecp_otst_modify := TADOStoredProc.Create(nil);
      sp_etran_ecp_otst_modify.Connection := ADOEtran;
      sp_etran_ecp_otst_modify.ProcedureName := 'sp_etran_ecp_otst_modify';

      for i := 0 to cxGrid1DBBandedTableView1.Controller.SelectedRowCount - 1 do begin
        sp_etran_ecp_otst_modify.Close;
        sp_etran_ecp_otst_modify.Parameters.Refresh;
        sp_etran_ecp_otst_modify.Parameters.ParamByName('@etran_ecp_otst_id').Value := cxGrid1DBBandedTableView1.Controller.SelectedRows[i].Values[cxGrid1DBBandedTableView1etran_ecp_otst_id.Index];
        sp_etran_ecp_otst_modify.Parameters.ParamByName('@type_action' ).Value := 2;
        try
          sp_etran_ecp_otst_modify.ExecProc;
          ShowTextMessage('Осталось '+IntToStr(cxGrid1DBBandedTableView1.Controller.SelectedRowCount - i)+' записей...', False);
        except
        end;
      end;
      RefreshQueryGrid(cxGrid1DBBandedTableView1, 'etran_ecp_otst_id');

      sp_etran_ecp_otst_modify.Free;
      ShowTextMessage;
  end;
end;

procedure TfmECPOtstClaim.dxBarButton4Click(Sender: TObject);
begin
  RefreshQueryGrid(cxGrid1DBBandedTableView1, 'etran_ecp_otst_id');
end;

procedure TfmECPOtstClaim.dxBarButton5Click(Sender: TObject);
var str_query : string;
        Q, Q2 : TADOQuery;
  m : TStringList;
  v : Variant;
  i : integer;
  sp_etran_ecp_otst_modify : TADOStoredProc;
  send_text : string;
begin
  if  Application.MessageBox(PChar('Вы точно уверены, что хотите ОТПРАВИТЬ выделенные заявки?'),'Внимание',MB_OKCANCEL) = ID_OK then begin
    for i := 0 to cxGrid1DBBandedTableView1.Controller.SelectedRowCount - 1 do begin
      Q := TADOQuery.Create(nil);
      Q.Connection := ADOEtran;
      Q.SQL.Add('SELECT etran_ecp_xml FROM etran_ecp_otst WHERE etran_ecp_otst_id = ' + IntToStr(cxGrid1DBBandedTableView1.Controller.SelectedRows[i].Values[cxGrid1DBBandedTableView1etran_ecp_otst_id.Index]));
      Q.Open;

      // Отправить заявку в ЭТРАН
      v := CreateWndSendDocs(Fetran_ip, '7400', Q.FieldByName('etran_ecp_xml').AsString);

      sp_etran_ecp_otst_modify := TADOStoredProc.Create(nil);
      sp_etran_ecp_otst_modify.Connection := ADOEtran;
      sp_etran_ecp_otst_modify.ProcedureName := 'sp_etran_ecp_otst_modify';
      sp_etran_ecp_otst_modify.Parameters.Refresh;
      sp_etran_ecp_otst_modify.Parameters.ParamByName('@etran_ecp_otst_id'   ).Value := cxGrid1DBBandedTableView1.Controller.SelectedRows[i].Values[cxGrid1DBBandedTableView1etran_ecp_otst_id.Index];
      sp_etran_ecp_otst_modify.Parameters.ParamByName('@type_action'         ).Value := 3;
      sp_etran_ecp_otst_modify.Parameters.ParamByName('@date_send'           ).Value := Now;
      sp_etran_ecp_otst_modify.Parameters.ParamByName('@etran_ecp_reply_xml' ).Value := v[1];
      sp_etran_ecp_otst_modify.Parameters.ParamByName('@FIO_users_send'      ).Value := FIO_users;
      sp_etran_ecp_otst_modify.ExecProc;
      sp_etran_ecp_otst_modify.Free;

      // Отправить заявку на согласование
      Q.SQL.Clear;
      Q.SQL.Add('SELECT doc_id, etran_ecp_otst_id FROM etran_ecp_otst WHERE etran_ecp_otst_id = ' + IntToStr(cxGrid1DBBandedTableView1.Controller.SelectedRows[i].Values[cxGrid1DBBandedTableView1etran_ecp_otst_id.Index]));
      Q.Open;
      if not Q.FieldByName('doc_id').IsNull then begin
        send_text := '<?xml version="1.0" encoding="windows-1251"?>';
        send_text := send_text  + '<OtstClaimToViza version="1.0">';
        send_text := send_text  + '<docID value="' + Q.FieldByName('Doc_ID').AsString + '"/>';
        send_text := send_text  + '<frontEndId value="' + Q.FieldByName('etran_ecp_otst_id').AsString + '"/>';
        send_text := send_text  + '</OtstClaimToViza>';

        v := CreateWndSendDocs(Fetran_ip, '7400', send_text);

        sp_etran_ecp_otst_modify := TADOStoredProc.Create(nil);
        sp_etran_ecp_otst_modify.Connection := ADOEtran;
        sp_etran_ecp_otst_modify.ProcedureName := 'sp_etran_ecp_otst_modify';
        sp_etran_ecp_otst_modify.Parameters.Refresh;
        sp_etran_ecp_otst_modify.Parameters.ParamByName('@etran_ecp_otst_id'   ).Value := cxGrid1DBBandedTableView1.Controller.SelectedRows[i].Values[cxGrid1DBBandedTableView1etran_ecp_otst_id.Index];
        sp_etran_ecp_otst_modify.Parameters.ParamByName('@type_action'         ).Value := 4;
        sp_etran_ecp_otst_modify.Parameters.ParamByName('@date_viza'           ).Value := Now;
        sp_etran_ecp_otst_modify.Parameters.ParamByName('@etran_ecp_reply_xml' ).Value := v[1];
        sp_etran_ecp_otst_modify.Parameters.ParamByName('@FIO_users_send'      ).Value := FIO_users;
        sp_etran_ecp_otst_modify.ExecProc;
        sp_etran_ecp_otst_modify.Free;
      end;

      Q.Free;
      ShowTextMessage('Осталось '+IntToStr(cxGrid1DBBandedTableView1.Controller.SelectedRowCount - i)+' записей...', False);
    end;

    ShowTextMessage;
    RefreshQueryGrid(cxGrid1DBBandedTableView1, 'etran_ecp_otst_id');
  end;
end;

procedure TfmECPOtstClaim.dxBarButton7Click(Sender: TObject);
begin
  fmECPOtstClaimAdd := TfmECPOtstClaimAdd.Create(Application, ADOEtran, Fusers_group_cod);
  fmECPOtstClaimAdd._SetFIOUsers := FIO_users;
  if fmECPOtstClaimAdd.ShowModal = mrOK then begin
    RefreshQueryGrid(cxGrid1DBBandedTableView1, 'etran_ecp_otst_id', fmECPOtstClaimAdd._GetECPOtstId);
  end;
end;

procedure TfmECPOtstClaim.dxBarButton8Click(Sender: TObject);
begin
  fmPeriod := TfmPeriod.Create(Application, Fdate1, Fdate2, 3);
  if fmPeriod.ShowModal=mrOK then begin
    Fdate1 := fmPeriod._GetMonth;
    Fdate2 := IncMonth(Fdate1, 1);
    dxBarSubItem2.Caption := FormatDateTime('mmmm yyyy', Fdate1);
    Screen.Cursor := crHourGlass;

    Query_ECPOsts.Close;
    Query_ECPOsts.Parameters.ParamByName('date1'     ).Value := Fdate1;
    Query_ECPOsts.Parameters.ParamByName('date2'     ).Value := Fdate2;
    Query_ECPOsts.Open;

    Screen.Cursor := crDefault;
  end;
end;

procedure TfmECPOtstClaim.dxBarButton9Click(Sender: TObject);
begin
  fmPeriod := TfmPeriod.Create(Application, Fdate1, Fdate2, 2);
  if fmPeriod.ShowModal=mrOK then begin
    Fdate1 := fmPeriod._GetMonthBegin;
    Fdate2 := fmPeriod._GetMonthEnd;
    dxBarSubItem2.Caption := FormatDateTime('mmm yy', Fdate1) + ' - ' + FormatDateTime('mmm yy', Fdate2);
    Screen.Cursor := crHourGlass;

    Query_ECPOsts.Close;
    Query_ECPOsts.Parameters.ParamByName('date1'     ).Value := Fdate1;
    Query_ECPOsts.Parameters.ParamByName('date2'     ).Value := Fdate2;
    Query_ECPOsts.Open;

    Screen.Cursor := crDefault;
  end;
end;

procedure TfmECPOtstClaim.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TfmECPOtstClaim.FormDestroy(Sender: TObject);
begin
  StoreRegistryDate(rgSave, '\Software\Lis1\DateTime\ECPOtstClaim',  Fdate1, Fdate2);
  StoreRegistryGrid(rgSave, '\Software\Lis1\MainGrids\ECPOtstClaim', cxGrid1DBBandedTableView1);
end;

end.
