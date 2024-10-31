unit ECPOtstClaimAdd;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls,
  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxStyles,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator, Data.DB,
  cxDBData, cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridBandedTableView, cxGridDBBandedTableView, cxClasses, cxGridLevel, cxGrid,
  Datasnap.DBClient, dxBar, cxContainer, cxMaskEdit, cxButtonEdit, cxTextEdit,
  cxDropDownEdit, cxPropertiesStore, System.ImageList, Vcl.ImgList, Raznoe, Default,
  Data.Win.ADODB, Filter,
  cxDataControllerConditionalFormattingRulesManagerDialog, cxImageList, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel,
  dxSkinCoffee, dxSkinDarkroom, dxSkinDarkSide, dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMetropolis, dxSkinMetropolisDark, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinOffice2016Colorful,
  dxSkinOffice2016Dark, dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus, dxSkinSilver, dxSkinSpringtime, dxSkinStardust,
  dxSkinSummer2008, dxSkinTheAsphaltWorld, dxSkinTheBezier, dxSkinsDefaultPainters, dxSkinValentine, dxSkinVisualStudio2013Blue,
  dxSkinVisualStudio2013Dark, dxSkinVisualStudio2013Light, dxSkinVS2010, dxSkinWhiteprint, dxSkinXmas2008Blue, dxDateRanges;

type
  TfmECPOtstClaimAdd = class(TForm)
    Panel4: TPanel;
    BitBtn2: TBitBtn;
    BitBtn1: TBitBtn;
    Panel1: TPanel;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    Panel2: TPanel;
    cxGrid1DBBandedTableView1: TcxGridDBBandedTableView;
    Client_OtstOtpravka: TClientDataSet;
    DS_OtstOtpravka: TDataSource;
    Client_OtstOtpravkaid: TAutoIncField;
    Client_OtstOtpravkaNumOtp: TIntegerField;
    Client_OtstOtpravkaotprStationCode: TStringField;
    Client_OtstOtpravkaotprStationName: TStringField;
    Client_OtstOtpravkaotstStationCode: TStringField;
    Client_OtstOtpravkaotstStationName: TStringField;
    Client_OtstOtpravkaDateOtstBegin: TDateTimeField;
    Client_OtstOtpravkaDateOtstEnd: TDateTimeField;
    Client_OtstOtpravkaKolWag: TIntegerField;
    Client_OtstOtpravkaSkidka: TBooleanField;
    Client_OtstOtpravkaWags: TStringField;
    Client_OtstOtpravkaSelUslWag: TBooleanField;
    cxGrid1DBBandedTableView1id: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1NumOtp: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1otprStationCode: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1otprStationName: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1otstStationCode: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1otstStationName: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1DateOtstBegin: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1DateOtstEnd: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1KolWag: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1Skidka: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1Wags: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1SelUslWag: TcxGridDBBandedColumn;
    dxBarManager1: TdxBarManager;
    dxBarPopupMenu1: TdxBarPopupMenu;
    dxBarButton1: TdxBarButton;
    dxBarSubItem1: TdxBarSubItem;
    dxBarButton2: TdxBarButton;
    dxBarButton3: TdxBarButton;
    Label1: TLabel;
    cxTextEdit1: TcxTextEdit;
    Label2: TLabel;
    cxTextEdit2: TcxTextEdit;
    Label3: TLabel;
    cxButtonEdit6: TcxButtonEdit;
    Label14: TLabel;
    cxTextEdit6: TcxTextEdit;
    Label4: TLabel;
    cxComboBox1: TcxComboBox;
    cxTextEdit3: TcxTextEdit;
    Label5: TLabel;
    dxBarButton4: TdxBarButton;
    dxBarButton5: TdxBarButton;
    dxBarButton6: TdxBarButton;
    cxImageList1: TcxImageList;
    cxPropertiesStore1: TcxPropertiesStore;
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
    procedure dxBarButton1Click(Sender: TObject);
    procedure dxBarButton2Click(Sender: TObject);
    procedure dxBarButton3Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure cxButtonEdit6PropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure BitBtn1Click(Sender: TObject);
    procedure dxBarButton4Click(Sender: TObject);
    procedure dxBarButton5Click(Sender: TObject);
    procedure dxBarButton6Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
  private
    Fusers_group_cod    : string;
    Fconnect            : TADOConnection;
    Fetran_ecp_otst_id  : integer;
    FFIO_users          : string;

    Frw_id : integer;

    procedure SetUpdate(etran_ecp_otst_id: integer);
  public
    constructor Create(AOwner: TApplication; connect: TADOConnection; users_group_cod: string); reintroduce;
  published
    property _SetFIOUsers : string write FFIO_users;
    property _SetUpdate   : integer write SetUpdate;
    property _GetECPOtstId : integer read Fetran_ecp_otst_id;
  end;

var
  fmECPOtstClaimAdd: TfmECPOtstClaimAdd;

implementation

{$R *.dfm}

uses ECPFilter, ECPOtstClaimOtpravkaAdd;


procedure TfmECPOtstClaimAdd.BitBtn1Click(Sender: TObject);
begin
  ModalResult := mrCancel;
end;

procedure TfmECPOtstClaimAdd.BitBtn2Click(Sender: TObject);
var xml : string;
    sp_etran_ecp_otst_modify : TADOStoredProc;
begin
  Screen.Cursor := crHourglass;


  xml := '<setOtstClaim version="1.0">' + #10#13;
  if Fetran_ecp_otst_id <> -9 then xml := xml + '<frontEndId value="' + IntToStr(Fetran_ecp_otst_id) + '"/>' + #10#13;
  if Frw_id <> -9 then  xml := xml + '<RW_Id value="' + IntToStr(Frw_id) +  '"/>' + #10#13;
  if cxTextEdit6.EditValue <> null then xml := xml + '<ClOKPO value="' + cxTextEdit6.EditValue + '"/>' + #10#13;
  case cxComboBox1.ItemIndex of
    0:begin
        xml := xml + '<ContractNum value="2/16-28"/>' + #10#13;
        xml := xml + '<Contract_Id value="639889542"/>' + #10#13;
      end;
    1:begin
        xml := xml + '<ContractNum value="2/16-28"/>' + #10#13;
        xml := xml + '<Contract_Id value="607991695"/>' + #10#13;
      end;
    2:begin
        xml := xml + '<ContractNum value="512"/>' + #10#13;
        xml := xml + '<Contract_Id value="218941051"/>' + #10#13;
      end;
    4:begin
        xml := xml + '<ContractNum value="2/19-58"/>' + #10#13;
        xml := xml + '<Contract_Id value="928727927"/>' + #10#13;
      end;
  end;

  xml := xml + '<OtstOtpravka>' + #10#13;
  Client_OtstOtpravka.First;
  while not Client_OtstOtpravka.Eof do begin

    if not Client_OtstOtpravka.FieldByName('NumOtp'         ).IsNull then xml := xml + '<NumOtp value="' + Client_OtstOtpravka.FieldByName('NumOtp').AsString + '"/>' + #10#13;
    if not Client_OtstOtpravka.FieldByName('otprStationCode').IsNull then xml := xml + '<otprStationCode value="' + Client_OtstOtpravka.FieldByName('otprStationCode').AsString + '"/>' + #10#13;
    if not Client_OtstOtpravka.FieldByName('otstStationCode').IsNull then xml := xml + '<otstStationCode value="' + Client_OtstOtpravka.FieldByName('otstStationCode').AsString + '"/>' + #10#13;
    if not Client_OtstOtpravka.FieldByName('DateOtstBegin'  ).IsNull then xml := xml + '<DateOtstBegin value="' + FormatDateTime('dd.mm.yyyy', Client_OtstOtpravka.FieldByName('DateOtstBegin').AsDateTime) + '"/>' + #10#13;
    if not Client_OtstOtpravka.FieldByName('DateOtstEnd'    ).IsNull then xml := xml + '<DateOtstEnd value="' + FormatDateTime('dd.mm.yyyy', Client_OtstOtpravka.FieldByName('DateOtstEnd').AsDateTime) + '"/>' + #10#13;
    if not Client_OtstOtpravka.FieldByName('KolWag'         ).IsNull then xml := xml + '<KolWag value="' + Client_OtstOtpravka.FieldByName('KolWag').AsString + '"/>' + #10#13;
    if not Client_OtstOtpravka.FieldByName('Skidka'         ).IsNull then xml := xml + '<Skidka value="' + iif(Client_OtstOtpravka.FieldByName('Skidka').AsBoolean, '1', '0') + '"/>' + #10#13;
    if not Client_OtstOtpravka.FieldByName('Wags'           ).IsNull then xml := xml + '<Wags value="' + Client_OtstOtpravka.FieldByName('Wags').AsString + '"/>' + #10#13;
    if not Client_OtstOtpravka.FieldByName('SelUslWag'      ).IsNull then xml := xml + '<SelUslWag value="' + iif(Client_OtstOtpravka.FieldByName('SelUslWag').AsBoolean, '1', '0') + '"/> ' + #10#13;

    Client_OtstOtpravka.Next;
  end;
  xml := xml + '</OtstOtpravka>' + #10#13;

  xml := xml + '</setOtstClaim>';


  sp_etran_ecp_otst_modify := TADOStoredProc.Create(nil);
  sp_etran_ecp_otst_modify.Connection := Fconnect;
  sp_etran_ecp_otst_modify.ProcedureName := 'sp_etran_ecp_otst_modify';
  sp_etran_ecp_otst_modify.Parameters.Refresh;
  sp_etran_ecp_otst_modify.Parameters.ParamByName('@etran_ecp_otst_id'            ).Value := iif(Fetran_ecp_otst_id<>-9, Fetran_ecp_otst_id, null);
  sp_etran_ecp_otst_modify.Parameters.ParamByName('@type_action'                  ).Value := iif(Fetran_ecp_otst_id<>-9, 1, 0);
  sp_etran_ecp_otst_modify.Parameters.ParamByName('@RW_Id'                        ).Value := Frw_id;
  sp_etran_ecp_otst_modify.Parameters.ParamByName('@RW_name'                      ).Value := cxButtonEdit6.EditValue;
  sp_etran_ecp_otst_modify.Parameters.ParamByName('@ClOKPO'                       ).Value := cxTextEdit6.EditValue;

  case cxComboBox1.ItemIndex of
    0:begin
        sp_etran_ecp_otst_modify.Parameters.ParamByName('@ContractNum').Value := '2/16-28';
        sp_etran_ecp_otst_modify.Parameters.ParamByName('@Contract_Id').Value := 639889542;
      end;
    1:begin
        sp_etran_ecp_otst_modify.Parameters.ParamByName('@ContractNum').Value := '2/16-28';
        sp_etran_ecp_otst_modify.Parameters.ParamByName('@Contract_Id').Value := 607991695;
      end;
    2:begin
        sp_etran_ecp_otst_modify.Parameters.ParamByName('@ContractNum').Value := '512';
        sp_etran_ecp_otst_modify.Parameters.ParamByName('@Contract_Id').Value := 218941051;
      end;
    4:begin
        sp_etran_ecp_otst_modify.Parameters.ParamByName('@ContractNum').Value := '2/19-58';
        sp_etran_ecp_otst_modify.Parameters.ParamByName('@Contract_Id').Value := 928727927;
      end;

    else begin
      sp_etran_ecp_otst_modify.Parameters.ParamByName('@ContractNum').Value := null;
      sp_etran_ecp_otst_modify.Parameters.ParamByName('@Contract_Id').Value := null;
    end;
  end;

  if Client_OtstOtpravka.RecordCount = 1 then begin
    sp_etran_ecp_otst_modify.Parameters.ParamByName('@OtstOtpravka_NumOtp'          ).Value := Client_OtstOtpravka.FieldByName('NumOtp').Value;
    sp_etran_ecp_otst_modify.Parameters.ParamByName('@OtstOtpravka_otprStationCode' ).Value := Client_OtstOtpravka.FieldByName('otprStationCode').Value;
    sp_etran_ecp_otst_modify.Parameters.ParamByName('@OtstOtpravka_otprStationName' ).Value := Client_OtstOtpravka.FieldByName('otprStationName').Value;
    sp_etran_ecp_otst_modify.Parameters.ParamByName('@OtstOtpravka_otstStationCode' ).Value := Client_OtstOtpravka.FieldByName('otstStationCode').Value;
    sp_etran_ecp_otst_modify.Parameters.ParamByName('@OtstOtpravka_otstStationName' ).Value := Client_OtstOtpravka.FieldByName('otstStationName').Value;
    sp_etran_ecp_otst_modify.Parameters.ParamByName('@OtstOtpravka_DateOtstBegin'   ).Value := Client_OtstOtpravka.FieldByName('DateOtstBegin').Value;
    sp_etran_ecp_otst_modify.Parameters.ParamByName('@OtstOtpravka_DateOtstEnd'     ).Value := Client_OtstOtpravka.FieldByName('DateOtstEnd').Value;
    sp_etran_ecp_otst_modify.Parameters.ParamByName('@OtstOtpravka_KolWag'          ).Value := Client_OtstOtpravka.FieldByName('KolWag').Value;
    sp_etran_ecp_otst_modify.Parameters.ParamByName('@OtstOtpravka_Skidka'          ).Value := Client_OtstOtpravka.FieldByName('Skidka').Value;
    sp_etran_ecp_otst_modify.Parameters.ParamByName('@OtstOtpravka_Wags'            ).Value := Client_OtstOtpravka.FieldByName('Wags').Value;
    sp_etran_ecp_otst_modify.Parameters.ParamByName('@OtstOtpravka_SelUslWag'       ).Value := Client_OtstOtpravka.FieldByName('SelUslWag').Value;
  end else begin
    sp_etran_ecp_otst_modify.Parameters.ParamByName('@OtstOtpravka_NumOtp'          ).Value := null;
    sp_etran_ecp_otst_modify.Parameters.ParamByName('@OtstOtpravka_otprStationCode' ).Value := null;
    sp_etran_ecp_otst_modify.Parameters.ParamByName('@OtstOtpravka_otprStationName' ).Value := null;
    sp_etran_ecp_otst_modify.Parameters.ParamByName('@OtstOtpravka_otstStationCode' ).Value := null;
    sp_etran_ecp_otst_modify.Parameters.ParamByName('@OtstOtpravka_otstStationName' ).Value := null;
    sp_etran_ecp_otst_modify.Parameters.ParamByName('@OtstOtpravka_DateOtstBegin'   ).Value := null;
    sp_etran_ecp_otst_modify.Parameters.ParamByName('@OtstOtpravka_DateOtstEnd'     ).Value := null;
    sp_etran_ecp_otst_modify.Parameters.ParamByName('@OtstOtpravka_KolWag'          ).Value := null;
    sp_etran_ecp_otst_modify.Parameters.ParamByName('@OtstOtpravka_Skidka'          ).Value := null;
    sp_etran_ecp_otst_modify.Parameters.ParamByName('@OtstOtpravka_Wags'            ).Value := null;
    sp_etran_ecp_otst_modify.Parameters.ParamByName('@OtstOtpravka_SelUslWag'       ).Value := null;
  end;

  sp_etran_ecp_otst_modify.Parameters.ParamByName('@etran_ecp_xml'                ).Value := xml;
  sp_etran_ecp_otst_modify.Parameters.ParamByName('@FIO_users_create'             ).Value := FFIO_users;
  sp_etran_ecp_otst_modify.ExecProc;
  Fetran_ecp_otst_id := sp_etran_ecp_otst_modify.Parameters.ParamByName('@etran_ecp_otst_id').Value;
  sp_etran_ecp_otst_modify.Free;

  ModalResult := mrOk;

  Screen.Cursor := crDefault;
end;



constructor TfmECPOtstClaimAdd.Create(AOwner: TApplication; connect: TADOConnection; users_group_cod: string);
var Q: TADOQuery;
begin
  Screen.Cursor := crHourglass;
  inherited Create(AOwner);

  Fusers_group_cod := users_group_cod;
  Fconnect := connect;

  Fetran_ecp_otst_id := -9;
  Frw_id := -9;
  FFIO_users := '';

  Client_OtstOtpravka.CreateDataSet;
  Client_OtstOtpravka.LogChanges := False;


  StoreRegistryGrid(rgLoad,'\Software\Lis1\ECPOtstClaimAdd_Grids', cxGrid1DBBandedTableView1);

  Screen.Cursor := crDefault;
end;


procedure TfmECPOtstClaimAdd.SetUpdate(etran_ecp_otst_id: integer);
var Q, Q2: TADOQuery;
begin
  Fetran_ecp_otst_id := etran_ecp_otst_id;

  Q := TADOQuery.Create(nil);
  Q.Connection := Fconnect;

  Q2 := TADOQuery.Create(nil);
  Q2.Connection := Fconnect;

  Q.SQL.Clear;
  Q.SQL.Add('SELECT * FROM etran_ecp_otst WHERE etran_ecp_otst_id = ' + IntToStr(Fetran_ecp_otst_id));
  Q.Open;

  cxTextEdit1.EditValue := Q.FieldByName('doc_id').Value;
  cxTextEdit2.EditValue := Q.FieldByName('etran_ecp_otst_id').Value;
  cxTextEdit3.EditValue := Q.FieldByName('docnum').Value;

  Q.SQL.Clear;
  Q.SQL.Add('DECLARE @xml xml');
  Q.SQL.Add('SELECT	@xml = etran_ecp_xml FROM ETRAN_ECP_OTST WHERE etran_ecp_otst_id = ' + IntToStr(Fetran_ecp_otst_id));
  Q.SQL.Add('');
  Q.SQL.Add('SELECT	ref.value(''(RW_Id/@value)[1]'', ''varchar(max)'') as RW_Id,');
  Q.SQL.Add('ref.value(''(ClOKPO/@value)[1]'', ''varchar(max)'') as ClOKPO,');
  Q.SQL.Add('ref.value(''(Contract_Id/@value)[1]'', ''varchar(max)'') as Contract_Id');
  Q.SQL.Add('FROM	@xml.nodes(''/setOtstClaim'') as node(ref)');
  Q.Open;


  if not Q.FieldByName('rw_id').IsNull then begin
    Frw_id := Q.FieldByName('rw_id').AsInteger;
    Q2.SQL.Clear;
    Q2.SQL.Add('SELECT etran_nsi_id, inf_obj_name, inf_obj_cod FROM dbo.ETRAN_NSI_INF_OBJ WHERE type_inf_id = 5 and etran_nsi_id = ' + Q.FieldByName('rw_id').AsString);
    Q2.Open;
    cxButtonEdit6.Text := Q2.FieldByName('inf_obj_name').AsString;
  end;

  cxTextEdit6.EditValue := Q.FieldByName('ClOKPO').Value;

  case Q.FieldByName('Contract_Id').AsInteger of
    639889542: cxComboBox1.ItemIndex := 0;
    607991695: cxComboBox1.ItemIndex := 1;
    218941051: cxComboBox1.ItemIndex := 2;
    928727927: cxComboBox1.ItemIndex := 4;
    else cxComboBox1.ItemIndex := -1;
  end;


  Q.SQL.Clear;
  Q.SQL.Add('DECLARE @xml xml');
  Q.SQL.Add('SELECT	@xml = etran_ecp_xml FROM ETRAN_ECP_OTST WHERE etran_ecp_otst_id = ' + IntToStr(Fetran_ecp_otst_id));
  Q.SQL.Add('');
  Q.SQL.Add('SELECT	ref.value(''(NumOtp/@value)[1]'', ''int'') as NumOtp,');
  Q.SQL.Add('ref.value(''(otprStationCode/@value)[1]'', ''varchar(max)'') as otprStationCode,');
  Q.SQL.Add('ref.value(''(otstStationCode/@value)[1]'', ''varchar(max)'') as otstStationCode,');
  Q.SQL.Add('ref.value(''(DateOtstBegin/@value)[1]'', ''varchar(max)'') as DateOtstBegin,');
  Q.SQL.Add('ref.value(''(DateOtstEnd/@value)[1]'', ''varchar(max)'') as DateOtstEnd,');
  Q.SQL.Add('ref.value(''(KolWag/@value)[1]'', ''varchar(max)'') as KolWag,');
  Q.SQL.Add('ref.value(''(Skidka/@value)[1]'', ''varchar(max)'') as Skidka,');
  Q.SQL.Add('ref.value(''(Wags/@value)[1]'', ''varchar(max)'') as Wags,');
  Q.SQL.Add('ref.value(''(SelUslWag/@value)[1]'', ''varchar(max)'') as SelUslWag');
  Q.SQL.Add('FROM	@xml.nodes(''/setOtstClaim/OtstOtpravka'') as node(ref)');
  Q.Open;

  while not Q.Eof do begin

    Client_OtstOtpravka.Append;
    Client_OtstOtpravka.FieldByName('NumOtp'          ).Value := Q.FieldByName('NumOtp').Value;
    Client_OtstOtpravka.FieldByName('otprStationCode' ).Value := Q.FieldByName('otprStationCode').Value;
    Q2.SQL.Clear;
    Q2.SQL.Add('SELECT etran_nsi_id, inf_obj_name, inf_obj_cod FROM dbo.ETRAN_NSI_INF_OBJ WHERE type_inf_id = 11 and inf_obj_cod = ''' + Q.FieldByName('otprStationCode').AsString + '''');
    Q2.Open;
    if Q2.RecordCount > 0 then  Client_OtstOtpravka.FieldByName('otprStationName' ).Value := Q2.FieldByName('inf_obj_name').AsString;

    Client_OtstOtpravka.FieldByName('otstStationCode' ).Value := Q.FieldByName('otstStationCode').Value;
    Q2.SQL.Clear;
    Q2.SQL.Add('SELECT etran_nsi_id, inf_obj_name, inf_obj_cod FROM dbo.ETRAN_NSI_INF_OBJ WHERE type_inf_id = 11 and inf_obj_cod = ''' + Q.FieldByName('otstStationCode').AsString + '''');
    Q2.Open;
    if Q2.RecordCount > 0 then  Client_OtstOtpravka.FieldByName('otstStationName' ).Value := Q2.FieldByName('inf_obj_name').AsString;

    Client_OtstOtpravka.FieldByName('DateOtstBegin'   ).Value := Q.FieldByName('DateOtstBegin').Value;
    Client_OtstOtpravka.FieldByName('DateOtstEnd'     ).Value := Q.FieldByName('DateOtstEnd').Value;
    Client_OtstOtpravka.FieldByName('KolWag'          ).Value := Q.FieldByName('KolWag').Value;
    Client_OtstOtpravka.FieldByName('Skidka'          ).Value := Q.FieldByName('Skidka').Value;
    Client_OtstOtpravka.FieldByName('Wags'            ).Value := Q.FieldByName('Wags').Value;
    Client_OtstOtpravka.FieldByName('SelUslWag'       ).Value := Q.FieldByName('SelUslWag').Value;
    Client_OtstOtpravka.Post;

    Q.Next;
  end;


  Q2.Free;
  Q.Free;
end;

procedure TfmECPOtstClaimAdd.cxButtonEdit6PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
var Q: TADOQuery;
    str_find: string;
begin
  case AButtonIndex of
    0:  begin
          Q := TADOQuery.Create(nil);
          Q.Connection := Fconnect;
          Q.SQL.Add('SELECT etran_nsi_id, inf_obj_name, inf_obj_cod FROM dbo.ETRAN_NSI_INF_OBJ WHERE type_inf_id = 5');

          case TcxButtonEdit(Sender).Tag of
           0: if InputQuery('Поиск', 'Поиск по НАИМЕНОВАНИЮ:', str_find) then begin
                Q.SQL.Add('AND inf_obj_name like ''%' + str_find + '%''');
              end else exit;
           1: if InputQuery('Поиск', 'Поиск по КОДУ:', str_find) then begin
                Q.SQL.Add('AND inf_obj_cod like ''%' + str_find + '%''');
              end else exit;
          end;

          Q.Open;
          fmECPFilter := TfmECPFilter.Create(nil, Q);
          fmECPFilter._SetFilterCod := 'Страна';
          if fmECPFilter.ShowModal = mrOk then begin
            cxButtonEdit6.Text:= fmECPFilter._GetName;
            Frw_id := fmECPFilter._GetId;
          end;
          Q.Free;
        end;
    1:  begin
          cxButtonEdit6.Text := '';
          Frw_id := -9;
        end;
  end;
end;

procedure TfmECPOtstClaimAdd.cxGrid1DBBandedTableView1CustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
	if AViewInfo.GridRecord.Selected or AViewInfo.GridRecord.Focused then begin
		ACanvas.Brush.Color := clNavy;
		ACanvas.Font.Color := clWhite;
		if AViewInfo.Focused then ACanvas.Brush.Color := clBlue;
	end;
end;

procedure TfmECPOtstClaimAdd.cxGrid1DBBandedTableView1CustomDrawColumnHeader(
  Sender: TcxGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridColumnHeaderViewInfo; var ADone: Boolean);
begin
	if AViewInfo.Column.Focused then begin
		ACanvas.Brush.Color := clNavy;
		ACanvas.Font.Color := clWhite;
	end;
end;

procedure TfmECPOtstClaimAdd.cxGrid1DBBandedTableView1FilterOnChanged(
  Sender: TObject);
begin
	DrawcxGridColumnOnFiltered(Sender);
end;

procedure TfmECPOtstClaimAdd.cxGrid1DBBandedTableView1FocusedItemChanged(
  Sender: TcxCustomGridTableView; APrevFocusedItem,
  AFocusedItem: TcxCustomGridTableItem);
begin
	cxGrid1DBBandedTableView1.Painter.Invalidate;
end;

procedure TfmECPOtstClaimAdd.cxGrid1DBBandedTableView1KeyPress(Sender: TObject;
  var Key: Char);
begin
	FilterColumnGridOnKeyPress(cxGrid1DBBandedTableView1, Key);
end;

procedure TfmECPOtstClaimAdd.dxBarButton1Click(Sender: TObject);
begin
	PrintcxGrid(cxGrid1DBBandedTableView1);
end;

procedure TfmECPOtstClaimAdd.dxBarButton2Click(Sender: TObject);
begin
	SetdxDBGridColumns(cxGrid1DBBandedTableView1);
end;

procedure TfmECPOtstClaimAdd.dxBarButton3Click(Sender: TObject);
begin
	cxGrid1DBBandedTableView1.OptionsView.GroupByBox := not cxGrid1DBBandedTableView1.OptionsView.GroupByBox;
end;

procedure TfmECPOtstClaimAdd.dxBarButton4Click(Sender: TObject);
begin
  fmECPOtstClaimOtpravkaAdd := TfmECPOtstClaimOtpravkaAdd.Create(Application, Fconnect);
  fmECPOtstClaimOtpravkaAdd._SetClientDS := Client_OtstOtpravka;
  if fmECPOtstClaimOtpravkaAdd.ShowModal = mrOk then begin
  end;
end;

procedure TfmECPOtstClaimAdd.dxBarButton5Click(Sender: TObject);
begin
  fmECPOtstClaimOtpravkaAdd := TfmECPOtstClaimOtpravkaAdd.Create(Application, Fconnect);
  fmECPOtstClaimOtpravkaAdd._SetClientDS := Client_OtstOtpravka;
  fmECPOtstClaimOtpravkaAdd._SetUpdate := cxGrid1DBBandedTableView1id.DataBinding.Field.Value;
  if fmECPOtstClaimOtpravkaAdd.ShowModal = mrOk then begin
  end;
end;

procedure TfmECPOtstClaimAdd.dxBarButton6Click(Sender: TObject);
begin
  if Application.MessageBox(PChar('Удалить выбранные записи?'),'Внимание',MB_OKCANCEL) = ID_OK then begin
    Client_OtstOtpravka.Delete;
  end;
end;

procedure TfmECPOtstClaimAdd.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TfmECPOtstClaimAdd.FormDestroy(Sender: TObject);
begin
  StoreRegistryGrid(rgSave,'\Software\Lis1\ECPOtstClaimAdd_Grids', cxGrid1DBBandedTableView1);
end;

end.
