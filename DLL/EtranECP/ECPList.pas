unit ECPList;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, System.ImageList, Vcl.ImgList,
  cxGraphics, dxBar, cxClasses, cxPropertiesStore, cxStyles, Default, Data.DB,
  Datasnap.DBClient, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator, cxDBData,
  cxGridCustomTableView, cxGridTableView, cxGridBandedTableView,
  cxGridDBBandedTableView, cxGridCustomView, cxGridLevel, cxGrid, Raznoe,
  dxSkinsForm, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint,
  dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
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
  dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark, Period,
  dxSkinVisualStudio2013Light, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue, dxSkinscxPCPainter, dxSkinsdxBarPainter, Data.Win.ADODB,
  cxImageList, cxDataControllerConditionalFormattingRulesManagerDialog,
  dxDateRanges, dxSkinTheBezier, dxSkinOffice2019Colorful, dxSkinBasic,
  dxSkinOffice2019Black, dxSkinOffice2019DarkGray, dxSkinOffice2019White,
  dxScrollbarAnnotations, dxCore;

type
  TfmECPList = class(TForm)
    dxBarManager1: TdxBarManager;
    dxBarManager1Bar1: TdxBar;
    dxBarButton4: TdxBarButton;
    dxBarSubItem2: TdxBarSubItem;
    dxBarButton9: TdxBarButton;
    cxImageList1: TcxImageList;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1: TcxStyle;
    cxStyle2: TcxStyle;
    cxPropertiesStore1: TcxPropertiesStore;
    ClientDS_ECP: TClientDataSet;
    DS_ECP: TDataSource;
    ClientDS_ECPid: TAutoIncField;
    ClientDS_ECPDocDescription: TStringField;
    ClientDS_ECPStateId: TIntegerField;
    ClientDS_ECPStateName: TStringField;
    ClientDS_ECPDocTypeId: TIntegerField;
    ClientDS_ECPDocTypeName: TStringField;
    ClientDS_ECPECPDate: TDateTimeField;
    ClientDS_ECPECPDocTypeID: TIntegerField;
    ClientDS_ECPECPDocTypeName: TStringField;
    ClientDS_ECPDOC_ID: TIntegerField;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    cxGrid1DBBandedTableView1: TcxGridDBBandedTableView;
    cxGrid1DBBandedTableView1id: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1DOC_ID: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1DocDescription: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1StateId: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1StateName: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1DocTypeId: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1DocTypeName: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1ECPDate: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1ECPDocTypeID: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1ECPDocTypeName: TcxGridDBBandedColumn;
    dxBarPopupMenu1: TdxBarPopupMenu;
    dxBarButton11: TdxBarButton;
    dxBarSubItem3: TdxBarSubItem;
    dxBarButton12: TdxBarButton;
    dxBarButton13: TdxBarButton;
    cxLookAndFeelController1: TcxLookAndFeelController;
    dxSkinController1: TdxSkinController;
    dxBarButton1: TdxBarButton;
    dxBarButton2: TdxBarButton;
    cxGrid1DBBandedTableView1task_type_name: TcxGridDBBandedColumn;
    ClientDS_ECPtask_type_id: TIntegerField;
    cxGrid1DBBandedTableView1task_type_id: TcxGridDBBandedColumn;
    ClientDS_ECPinvFromStationCode: TStringField;
    ClientDS_ECPinvFromStationName: TStringField;
    ClientDS_ECPinvToStationCode: TStringField;
    ClientDS_ECPinvToStationName: TStringField;
    ClientDS_ECPfreightCode: TStringField;
    ClientDS_ECPfreightName: TStringField;
    cxGrid1DBBandedTableView1invFromStationCode: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1invFromStationName: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1invToStationCode: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1invToStationName: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1freightCode: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1freightName: TcxGridDBBandedColumn;
    ADOEtran: TADOConnection;
    dxBarButton3: TdxBarButton;
    ClientDS_ECPtask_type_name: TStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure dxBarButton4Click(Sender: TObject);
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
    procedure dxBarButton11Click(Sender: TObject);
    procedure dxBarButton12Click(Sender: TObject);
    procedure dxBarButton13Click(Sender: TObject);
    procedure dxBarButton1Click(Sender: TObject);
    procedure dxBarButton2Click(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure dxBarButton9Click(Sender: TObject);
    procedure dxBarButton3Click(Sender: TObject);
  private
    Fdate1, Fdate2   : TDateTime;
    Fusr_pwd         : PUser_pwd;
    Fusers_group_cod : string;
    Fetran_ip        : string;
    Fetran_port      : string;
  public
    constructor Create(AOwner: TApplication; users_group_cod: string; usr_pwd: PUser_pwd);
  published
    property _SetEtranIP   : string write Fetran_ip;
    property _SetEtranPort : string write Fetran_port;
  end;

var
  fmECPList: TfmECPList;

function CreateWndEtranECPList(AppHand: THandle; users_group_cod: string; usr_pwd: PUser_pwd; FIO_users: string): variant; export;

implementation

{$R *.dfm}

uses ECPQuery, ECPStatus;

function CreateWndEtranECPList(AppHand: THandle; users_group_cod: string; usr_pwd: PUser_pwd; FIO_users: string): variant; export;
begin
  Application.Handle := AppHand;
  try
    fmECPList := TfmECPList.Create(Application, users_group_cod, usr_pwd);
//    fmECPList._SetFIOusers := FIO_users;
    //-- изменить по мере необходимости возвращаемых параметров
    if  fmECPList.ShowModal = mrOk then result := VarArrayOf([-9, '']);
  finally
    fmECPList.Free;
  end;
end;

constructor TfmECPList.Create(AOwner: TApplication; users_group_cod: string; usr_pwd: PUser_pwd);
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

  if Fusers_group_cod =  '0' then begin Fetran_ip := '92.53.107.222';  Fetran_port := '7450'; end; // Совфрахт
  if Fusers_group_cod = '35' then begin Fetran_ip := '92.53.107.222';  Fetran_port := '7450'; end; // Урал Логистика

  ADOEtran.Connected := False;
  ADOEtran.ConnectionString := 'Persist Security Info=True;Provider=SQLOLEDB.1;User ID='+login+';Password='+'etran'+';Initial Catalog='+db_name+';Data Source='+Fusr_pwd^.server+';';
  ADOEtran.Connected := True;

  Fetran_ip := '94.198.196.103';
  Fetran_port := '7450';

  Fdate2 := Date();
  Fdate1 := Fdate2 - 2;
  dxBarSubItem2.Caption := FormatDateTime('dd.mm.yy', Fdate1) + ' - ' + FormatDateTime('dd.mm.yy', Fdate2);
  dxBarButton4Click(nil);

  StoreRegistryGrid(rgLoad, '\Software\Lis1\ECPEtran\MainGridsList', cxGrid1DBBandedTableView1);

  Screen.Cursor := 0;
end;

procedure TfmECPList.cxGrid1DBBandedTableView1CustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
  if (cxGrid1DBBandedTableView1task_type_name.Index = AViewInfo.Item.ID) then begin
    ACanvas.Font.Style := [fsBold];
    if AViewInfo.GridRecord.Values[cxGrid1DBBandedTableView1task_type_id.Index] = 2 then ACanvas.Font.Color := clGreen;
    if AViewInfo.GridRecord.Values[cxGrid1DBBandedTableView1task_type_id.Index] = 3 then ACanvas.Font.Color := clRed;
  end;

	if AViewInfo.GridRecord.Selected or AViewInfo.GridRecord.Focused then begin
		ACanvas.Brush.Color := clNavy;
		ACanvas.Font.Color := clWhite;
		if AViewInfo.Focused then ACanvas.Brush.Color := clBlue;
	end;
end;

procedure TfmECPList.cxGrid1DBBandedTableView1CustomDrawColumnHeader(
  Sender: TcxGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridColumnHeaderViewInfo; var ADone: Boolean);
begin
	if AViewInfo.Column.Focused then begin
		ACanvas.Brush.Color := clNavy;
		ACanvas.Font.Color := clWhite;
	end;
end;

procedure TfmECPList.cxGrid1DBBandedTableView1FilterOnChanged(Sender: TObject);
begin
	DrawcxGridColumnOnFiltered(Sender);
end;

procedure TfmECPList.cxGrid1DBBandedTableView1FocusedItemChanged(
  Sender: TcxCustomGridTableView; APrevFocusedItem,
  AFocusedItem: TcxCustomGridTableItem);
begin
	cxGrid1DBBandedTableView1.Painter.Invalidate;
end;

procedure TfmECPList.cxGrid1DBBandedTableView1KeyPress(Sender: TObject;
  var Key: Char);
begin
	FilterColumnGridOnKeyPress(cxGrid1DBBandedTableView1, Key);
end;

procedure TfmECPList.dxBarButton11Click(Sender: TObject);
begin
	PrintcxGrid(cxGrid1DBBandedTableView1);
end;

procedure TfmECPList.dxBarButton12Click(Sender: TObject);
begin
	SetdxDBGridColumns(cxGrid1DBBandedTableView1);
end;

procedure TfmECPList.dxBarButton13Click(Sender: TObject);
begin
	cxGrid1DBBandedTableView1.OptionsView.GroupByBox := not cxGrid1DBBandedTableView1.OptionsView.GroupByBox;
end;

procedure TfmECPList.dxBarButton1Click(Sender: TObject);
var doc_id : integer;
         v : Variant;

  doc_text : string;
  doc_sign : string;
  doc_tsp  : string;
begin
  doc_id := cxGrid1DBBandedTableView1DOC_ID.DataBinding.Field.AsInteger;
  v := CreateWndGetECPText(Fetran_ip, Fetran_port, doc_id);
  if v[0] = True then begin
    doc_text := v[1];
    v := CreateWndGetECPSign(Fetran_ip, Fetran_port, doc_id, doc_text);
    if v[0] = True then begin
      doc_sign := v[1];
      v := CreateWndGetECPTSP(Fetran_ip, Fetran_port, doc_id, doc_sign);
      if v[0] = True then begin
        doc_tsp := v[1];

        v := CreateWndSendECP(Fetran_ip, Fetran_port, doc_id, doc_text, doc_sign, doc_tsp);
        if v[0] = True then begin
          ShowMessage(v[1]);
        end else begin
          ShowMessage('ERROR 4');
        end;

      end else begin
        ShowMessage('ERROR 3');
      end;
    end else begin
      ShowMessage('ERROR 2');
    end;
  end else begin
    ShowMessage('ERROR 1');
  end;
end;

procedure TfmECPList.dxBarButton2Click(Sender: TObject);
var doc_id : integer;
         v : Variant;
         i : integer;
begin
  if not Fusr_pwd.user_func.Locate('func_name', 'set_etran_sign', [loCaseInsensitive]) then begin
    Application.MessageBox(PChar('Недостаточно прав!'), 'ОШИБКА', MB_ICONSTOP or MB_OK);
    Exit;
  end;

  if Application.MessageBox('Подписать выбранные документы?', 'Внимание', MB_ICONQUESTION or MB_YESNO or MB_DEFBUTTON2) = ID_YES then begin

    for i := 0 to cxGrid1DBBandedTableView1.Controller.SelectedRowCount - 1 do begin
      if cxGrid1DBBandedTableView1.Controller.SelectedRows[i].Values[cxGrid1DBBandedTableView1task_type_id.Index] <> 2 then begin
        doc_id := cxGrid1DBBandedTableView1.Controller.SelectedRows[i].Values[cxGrid1DBBandedTableView1doc_id.Index];
        v := CreateWndGetECPSignAndSend(Fetran_ip, Fetran_port, doc_id, ADOEtran.ConnectionString);

        if v[0] = True then begin

          if ClientDS_ECP.Locate('id', cxGrid1DBBandedTableView1.Controller.SelectedRows[i].Values[cxGrid1DBBandedTableView1id.Index], []) then begin
            ClientDS_ECP.Edit;
            ClientDS_ECP.FieldByName('task_type_id'   ).Value := 2;
            ClientDS_ECP.FieldByName('task_type_name' ).Value := 'Подписан';
            ClientDS_ECP.Post;
          end;

        end else begin

          if ClientDS_ECP.Locate('id', cxGrid1DBBandedTableView1.Controller.SelectedRows[i].Values[cxGrid1DBBandedTableView1id.Index], []) then begin
            ClientDS_ECP.Edit;
            ClientDS_ECP.FieldByName('task_type_id'   ).Value := 3;
            ClientDS_ECP.FieldByName('task_type_name' ).Value := 'Ошибка:' + v[1];
            ClientDS_ECP.Post;
          end;
        end;
      end;
    end;
  end;
end;

procedure TfmECPList.dxBarButton3Click(Sender: TObject);
begin
  fmECPStatus := TfmECPStatus.Create(Application, Fetran_ip, Fetran_port);
  fmECPStatus.ShowModal;
end;

procedure TfmECPList.dxBarButton4Click(Sender: TObject);
var v : Variant;
    Q : TADOQuery;
begin
  Caption := Fetran_ip + ':' + Fetran_port;
  v := CreateWndGetECPList(Fetran_ip, Fetran_port, Fdate1, Fdate2);

  if v[0] = True then begin
    ClientDS_ECP.XMLData := v[1];


    Q := TADOQuery.Create(nil);
    Q.Connection := ADOEtran;

    ClientDS_ECP.DisableControls;
    ClientDS_ECP.First;
    while not ClientDS_ECP.Eof do begin


      Q.SQL.Clear;
      Q.SQL.Add('SELECT	invFromStationCode, invFromStationName, invToStationCode, invToStationName,');
      Q.SQL.Add('(SELECT top 1 freightCode FROM invFreight WHERE invFreight.invoice_id = invoice.invoice_id) freightCode,');
      Q.SQL.Add('(SELECT top 1 freightName FROM invFreight WHERE invFreight.invoice_id = invoice.invoice_id) freightName');
      Q.SQL.Add('FROM	invoice ');
      Q.SQL.Add('WHERE	invoiceID = ' + IntToStr(ClientDS_ECP.FieldByName('doc_id').AsInteger));
      Q.Open;

      if Q.RecordCount > 0 then begin
        ClientDS_ECP.Edit;
        ClientDS_ECP.FieldByName('invFromStationCode' ).Value := Q.FieldByName('invFromStationCode').Value;
        ClientDS_ECP.FieldByName('invFromStationName' ).Value := Q.FieldByName('invFromStationName').Value;
        ClientDS_ECP.FieldByName('invToStationCode'   ).Value := Q.FieldByName('invToStationCode').Value;
        ClientDS_ECP.FieldByName('invToStationName'   ).Value := Q.FieldByName('invToStationName').Value;
        ClientDS_ECP.FieldByName('freightCode'        ).Value := Q.FieldByName('freightCode').Value;
        ClientDS_ECP.FieldByName('freightName'        ).Value := Q.FieldByName('freightName').Value;
        ClientDS_ECP.Post;
      end;


      ClientDS_ECP.Next;
    end;
    ClientDS_ECP.EnableControls;

    Q.Free;

  end else begin
    ClientDS_ECP.EmptyDataSet;
  end;
end;

procedure TfmECPList.dxBarButton9Click(Sender: TObject);
begin
  fmPeriod := TfmPeriod.Create(Application, Fdate1, Fdate2, 1);
  if fmPeriod.ShowModal=mrOK then begin
    Screen.Cursor := crHourglass;
    Fdate1 := fmPeriod._GetDateBegin;
    Fdate2 := fmPeriod._GetDateEnd;
    dxBarSubItem2.Caption := FormatDateTime('dd.mm.yy', Fdate1) + ' - ' + FormatDateTime('dd.mm.yy', Fdate2);

    dxBarButton4Click(Sender);

    Screen.Cursor := crDefault;
  end;
end;

procedure TfmECPList.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TfmECPList.FormDestroy(Sender: TObject);
begin
  StoreRegistryGrid(rgSave, '\Software\Lis1\ECPEtran\MainGridsList', cxGrid1DBBandedTableView1);
end;

end.
