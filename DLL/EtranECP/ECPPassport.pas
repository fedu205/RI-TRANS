unit ECPPassport;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, StdCtrls, cxTextEdit, Menus,
  cxButtons, ComCtrls, cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage,
  DB, cxDBData, cxGridCustomTableView, cxGridTableView, cxGridBandedTableView,
  cxGridDBBandedTableView, cxGridCustomView, cxClasses, cxGridLevel, cxGrid,
  ADODB, Buttons, cxPropertiesStore, cxNavigator, dxSkinsCore, dxSkinBlack,
  dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom,
  dxSkinDarkSide, dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
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
  dxSkinscxPCPainter, Datasnap.DBClient, dxSkinOffice2016Colorful,
  dxSkinOffice2016Dark, dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, Raznoe,
  cxDataControllerConditionalFormattingRulesManagerDialog, dxSkinTheBezier, dxDateRanges;

type
  TfmECPPassport = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    Label1: TLabel;
    cxTextEdit1: TcxTextEdit;
    cxButton1: TcxButton;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    DS_Passport: TDataSource;
    cxGrid1DBBandedTableView1: TcxGridDBBandedTableView;
    cxGrid1DBBandedTableView1orgID: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1orgOKPO: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1orgINN: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1orgKpp: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1orgName: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1orgShortName: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1orgType: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1addressID: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1addressType: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1addressText: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1addressTGNL: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1addressPostInd: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1ADR_COUNTRY: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1ADR_REGION: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1ADR_CITYTYPE: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1ADR_CITY: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1ADR_STREET: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1ADR_BUILDING: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1ADR_FLAT: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1ADR_NOTES: TcxGridDBBandedColumn;
    BitBtn2: TBitBtn;
    BitBtn1: TBitBtn;
    cxPropertiesStore1: TcxPropertiesStore;
    Label2: TLabel;
    cxTextEdit2: TcxTextEdit;
    ClientDS_Passport: TClientDataSet;
    ClientDS_Passportid: TAutoIncField;
    ClientDS_PassportorgName: TStringField;
    ClientDS_PassportorgID: TIntegerField;
    ClientDS_PassportorgINN: TStringField;
    ClientDS_PassportorgKpp: TStringField;
    ClientDS_PassportorgShortName: TStringField;
    ClientDS_PassportorgType: TStringField;
    ClientDS_PassportaddressID: TStringField;
    ClientDS_PassportaddressType: TStringField;
    ClientDS_PassportaddressText: TStringField;
    ClientDS_PassportaddressTGNL: TStringField;
    ClientDS_PassportaddressPostInd: TStringField;
    ClientDS_PassportADR_COUNTRY: TStringField;
    ClientDS_PassportADR_REGION: TStringField;
    ClientDS_PassportADR_CITYTYPE: TStringField;
    ClientDS_PassportADR_CITY: TStringField;
    ClientDS_PassportADR_STREET: TStringField;
    ClientDS_PassportADR_BUILDING: TStringField;
    ClientDS_PassportADR_FLAT: TStringField;
    ClientDS_PassportADR_NOTES: TStringField;
    ClientDS_PassportorgOKPO: TStringField;
    ClientDS_Passportsource_name: TStringField;
    cxGrid1DBBandedTableView1source_name: TcxGridDBBandedColumn;
    ClientDS_PassportADR_PHONE: TStringField;
    procedure cxButton1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn2Click(Sender: TObject);
    procedure cxTextEdit1KeyPress(Sender: TObject; var Key: Char);
    procedure BitBtn1Click(Sender: TObject);
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
    procedure cxGrid1DBBandedTableView1DblClick(Sender: TObject);
  private
    ForgID          : integer;
    ForgName        : string;
    ForgOKPO        : string;
    ForgAddressID   : integer;
    ForgAddress     : string;
    ForgAddressTGNL : string;
    Fetran_ip       : string;
    Fetran_port     : string;

    Fconnect        : TADOConnection;
  public
    constructor Create(AOwner: TApplication); reintroduce;
    procedure _SetConnect(connect: TADOConnection);
    procedure SetSender(value: boolean);
  published
    property _SetEtranIP        : string  write Fetran_ip;
    property _SetEtranPort      : string  write Fetran_port;
    property _GetOrgID          : integer read ForgID;
    property _GetName           : string  read ForgName;
    property _GetOrgOKPO        : string  read ForgOKPO;
    property _GetOrgAddressID   : integer read ForgAddressID;
    property _GetOrgAddress     : string  read ForgAddress;
    property _GetOrgAddressTGNL : string  read ForgAddressTGNL;
    property _SetSender: boolean write SetSender;
  end;

var
  fmECPPassport: TfmECPPassport;

implementation

uses ECPMain, ECPQuery;

{$R *.dfm}

constructor TfmECPPassport.Create(AOwner: TApplication);
begin
  Screen.Cursor := crHourglass;
  inherited Create(AOwner);

  ForgID          := -9;
  ForgName        := '';
  ForgOKPO        := '';
  ForgAddressID   := -9;
  ForgAddress     := '';
  ForgAddressTGNL := '';

  ClientDS_Passport.CreateDataSet;
  ClientDS_Passport.LogChanges := False;

  Fconnect := nil;

  Screen.Cursor := crDefault;
end;

procedure TfmECPPassport.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TfmECPPassport.cxButton1Click(Sender: TObject);
var v : Variant;
    ClientDS : TClientDataSet;
    sp_etran_ecp_find_recip : TADOStoredProc;
begin
  ClientDS := TClientDataSet.Create(nil);
  Screen.Cursor := crHourGlass;

  v := CreateWndGetPassport(Fetran_ip, Fetran_port, cxTextEdit1.Text, cxTextEdit2.Text);
  if v[0] = True then begin
    ClientDS.XMLData := v[1];
  end else begin
    ClientDS.EmptyDataSet;
  end;


  ClientDS_Passport.EmptyDataSet;

  ClientDS.First;
  while not ClientDS.Eof do begin

    ClientDS_Passport.Append;
    ClientDS_Passport.FieldByName('orgName'        ).Value := ClientDS.FieldByName('orgName').Value;
    ClientDS_Passport.FieldByName('orgID'          ).Value := ClientDS.FieldByName('orgID').Value;
    ClientDS_Passport.FieldByName('orgINN'         ).Value := ClientDS.FieldByName('orgINN').Value;
    ClientDS_Passport.FieldByName('orgKpp'         ).Value := ClientDS.FieldByName('orgKpp').Value;
    ClientDS_Passport.FieldByName('orgShortName'   ).Value := ClientDS.FieldByName('orgShortName').Value;
    ClientDS_Passport.FieldByName('orgType'        ).Value := ClientDS.FieldByName('orgType').Value;
    ClientDS_Passport.FieldByName('addressID'      ).Value := ClientDS.FieldByName('addressID').Value;
    ClientDS_Passport.FieldByName('addressType'    ).Value := ClientDS.FieldByName('addressType').Value;
    ClientDS_Passport.FieldByName('addressText'    ).Value := iif(ClientDS.FieldByName('addressPostInd').IsNull, '', ClientDS.FieldByName('addressPostInd').AsString + ',') + ClientDS.FieldByName('addressText').AsString;// + iif(ADR_PHONE;
    ClientDS_Passport.FieldByName('addressTGNL'    ).Value := ClientDS.FieldByName('addressTGNL').Value;
    ClientDS_Passport.FieldByName('addressPostInd' ).Value := ClientDS.FieldByName('addressPostInd').Value;
    ClientDS_Passport.FieldByName('ADR_COUNTRY'    ).Value := ClientDS.FieldByName('ADR_COUNTRY').Value;
    ClientDS_Passport.FieldByName('ADR_REGION'     ).Value := ClientDS.FieldByName('ADR_REGION').Value;
    ClientDS_Passport.FieldByName('ADR_CITYTYPE'   ).Value := ClientDS.FieldByName('ADR_CITYTYPE').Value;
    ClientDS_Passport.FieldByName('ADR_CITY'       ).Value := ClientDS.FieldByName('ADR_CITY').Value;
    ClientDS_Passport.FieldByName('ADR_STREET'     ).Value := ClientDS.FieldByName('ADR_STREET').Value;
    ClientDS_Passport.FieldByName('ADR_BUILDING'   ).Value := ClientDS.FieldByName('ADR_BUILDING').Value;
    ClientDS_Passport.FieldByName('ADR_FLAT'       ).Value := ClientDS.FieldByName('ADR_FLAT').Value;
    ClientDS_Passport.FieldByName('ADR_NOTES'      ).Value := ClientDS.FieldByName('ADR_NOTES').Value;
//    ClientDS_Passport.FieldByName('ADR_PHONE'      ).Value := ClientDS.FieldByName('ADR_PHONE').Value;
    ClientDS_Passport.FieldByName('orgOKPO'        ).Value := ClientDS.FieldByName('orgOKPO').Value;
    ClientDS_Passport.FieldByName('source_name'    ).Value := 'ЭТРАН';
    ClientDS_Passport.Post;

    ClientDS.Next;
  end;

  ClientDS.Free;


  if Fconnect <> nil then begin
    sp_etran_ecp_find_recip := TADOStoredProc.Create(nil);
    sp_etran_ecp_find_recip.Connection := Fconnect;
    sp_etran_ecp_find_recip.ProcedureName := 'sp_etran_ecp_find_recip';
    sp_etran_ecp_find_recip.Parameters.Refresh;
    sp_etran_ecp_find_recip.Parameters.ParamByName('@recip_name').Value := iif(cxTextEdit1.Text<>'', cxTextEdit1.Text, null);
    sp_etran_ecp_find_recip.Parameters.ParamByName('@recip_okpo').Value := iif(cxTextEdit2.Text<>'', cxTextEdit2.Text, null);
    sp_etran_ecp_find_recip.Open;

    sp_etran_ecp_find_recip.First;
    while not sp_etran_ecp_find_recip.Eof do begin

      if not sp_etran_ecp_find_recip.FieldByName('invRecipID').IsNull then begin
        ClientDS_Passport.Append;
        ClientDS_Passport.FieldByName('orgName'        ).Value := sp_etran_ecp_find_recip.FieldByName('invRecipName').Value;
        ClientDS_Passport.FieldByName('orgID'          ).Value := sp_etran_ecp_find_recip.FieldByName('invRecipID').Value;
        ClientDS_Passport.FieldByName('orgShortName'   ).Value := sp_etran_ecp_find_recip.FieldByName('invRecipName').Value;
        ClientDS_Passport.FieldByName('addressID'      ).Value := sp_etran_ecp_find_recip.FieldByName('invRecipAddressID').Value;
        ClientDS_Passport.FieldByName('addressText'    ).Value := sp_etran_ecp_find_recip.FieldByName('invRecipAddress').Value;
        ClientDS_Passport.FieldByName('addressTGNL'    ).Value := sp_etran_ecp_find_recip.FieldByName('invRecipTGNL').Value;
        ClientDS_Passport.FieldByName('orgOKPO'        ).Value := sp_etran_ecp_find_recip.FieldByName('invRecipOKPO').Value;
        ClientDS_Passport.FieldByName('source_name'    ).Value := 'ЛИС';
        ClientDS_Passport.Post;
      end;

      sp_etran_ecp_find_recip.Next;
    end;
    sp_etran_ecp_find_recip.Free;

  end;

  Screen.Cursor := crDefault;
end;

procedure TfmECPPassport.SetSender(value: boolean);
begin
  ClientDS_Passport.Append;
  ClientDS_Passport.FieldByName('orgName'        ).Value := 'ПАО «СОВФРАХТ»';
  ClientDS_Passport.FieldByName('orgID'          ).Value := 37775;
  ClientDS_Passport.FieldByName('orgShortName'   ).Value := 'СОВФРАХТ';
  ClientDS_Passport.FieldByName('addressID'      ).Value := 1;
  ClientDS_Passport.FieldByName('addressText'    ).Value := '109012, г.Москва, ул. Рождественка, 1/4, тел. (495)258-28-59';
  ClientDS_Passport.FieldByName('addressTGNL'    ).Value := '8917';
  ClientDS_Passport.FieldByName('orgOKPO'        ).Value := '01125175';
  ClientDS_Passport.FieldByName('source_name'    ).Value := 'ЛИС';
  ClientDS_Passport.Post;

  ClientDS_Passport.Append;
  ClientDS_Passport.FieldByName('orgName'        ).Value := 'Общество с ограниченной ответственностью "Урал Логистика"';
  ClientDS_Passport.FieldByName('orgID'          ).Value := 524740;
  ClientDS_Passport.FieldByName('orgShortName'   ).Value := 'Урал Логистика';
  ClientDS_Passport.FieldByName('addressID'      ).Value := 2;
  ClientDS_Passport.FieldByName('addressText'    ).Value := '107076, г.Москва, перецлок Колодезный-3, стр 23-бл.25 оф.3 тел.:(34253)3-88-03';
  ClientDS_Passport.FieldByName('addressTGNL'    ).Value := '5789';
  ClientDS_Passport.FieldByName('orgOKPO'        ).Value := '83298267';
  ClientDS_Passport.FieldByName('source_name'    ).Value := 'ЛИС';
  ClientDS_Passport.Post;
end;

procedure TfmECPPassport.cxGrid1DBBandedTableView1CustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
  if (cxGrid1DBBandedTableView1source_name.Index = AViewInfo.Item.ID) then begin
    if AViewInfo.GridRecord.Values[cxGrid1DBBandedTableView1source_name.Index] = 'ЛИС'       then ACanvas.Font.Style := [fsBold];
  end;

	if AViewInfo.GridRecord.Selected or AViewInfo.GridRecord.Focused then begin
		ACanvas.Brush.Color := clNavy;
		ACanvas.Font.Color := clWhite;
		if AViewInfo.Focused then ACanvas.Brush.Color := clBlue;
	end;
end;

procedure TfmECPPassport.cxGrid1DBBandedTableView1CustomDrawColumnHeader(
  Sender: TcxGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridColumnHeaderViewInfo; var ADone: Boolean);
begin
	if AViewInfo.Column.Focused then begin
		ACanvas.Brush.Color := clNavy;
		ACanvas.Font.Color := clWhite;
	end;
end;

procedure TfmECPPassport.cxGrid1DBBandedTableView1DblClick(Sender: TObject);
begin
  BitBtn2Click(Sender);
end;

procedure TfmECPPassport.cxGrid1DBBandedTableView1FilterOnChanged(
  Sender: TObject);
begin
	DrawcxGridColumnOnFiltered(Sender);
end;

procedure TfmECPPassport.cxGrid1DBBandedTableView1FocusedItemChanged(
  Sender: TcxCustomGridTableView; APrevFocusedItem,
  AFocusedItem: TcxCustomGridTableItem);
begin
	cxGrid1DBBandedTableView1.Painter.Invalidate;
end;

procedure TfmECPPassport.cxGrid1DBBandedTableView1KeyPress(Sender: TObject;
  var Key: Char);
begin
	FilterColumnGridOnKeyPress(cxGrid1DBBandedTableView1, Key);
end;

procedure TfmECPPassport.cxTextEdit1KeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    cxButton1Click(Sender);
end;

procedure TfmECPPassport.BitBtn1Click(Sender: TObject);
begin
  Close;
end;

procedure TfmECPPassport.BitBtn2Click(Sender: TObject);
begin
  if not cxGrid1DBBandedTableView1orgID.DataBinding.Field.IsNull then
    ForgID := cxGrid1DBBandedTableView1orgID.DataBinding.Field.Value
  else
    ForgID := -9;

  if not cxGrid1DBBandedTableView1addressID.DataBinding.Field.IsNull then
    ForgAddressID   := cxGrid1DBBandedTableView1addressID.DataBinding.Field.Value
  else
    ForgAddressID   := -9;

  ForgName        := cxGrid1DBBandedTableView1orgName.DataBinding.Field.AsString;
  ForgAddress     := cxGrid1DBBandedTableView1addressText.DataBinding.Field.AsString;
  ForgAddressTGNL := cxGrid1DBBandedTableView1addressTGNL.DataBinding.Field.AsString;
  ForgOKPO        := cxGrid1DBBandedTableView1orgOKPO.DataBinding.Field.AsString;

  ModalResult := mrOk;
end;

procedure TfmECPPassport._SetConnect(connect: TADOConnection);
begin
  Fconnect := connect;
end;

end.
