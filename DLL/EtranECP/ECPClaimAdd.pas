unit ECPClaimAdd;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxPropertiesStore, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, StdCtrls, Buttons, cxDropDownEdit,
  cxCalendar, cxTextEdit, cxMaskEdit, cxButtonEdit, cxGroupBox, ExtCtrls, DB,
  ADODB, cxPC, DBClient, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxDBData, cxGridCustomTableView, cxGridTableView,
  cxGridBandedTableView, cxGridDBBandedTableView, cxGridLevel, cxClasses,
  cxGridCustomView, cxGrid, Raznoe, StrUtils, Other, dxSkinsCore, dxSkinBlack,
  dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom,
  dxSkinDarkSide, dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
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
  dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue, Vcl.ComCtrls, dxCore, cxDateUtils, dxSkinscxPCPainter,
  dxBarBuiltInMenu, cxNavigator,
  cxDataControllerConditionalFormattingRulesManagerDialog, dxSkinTheBezier, dxDateRanges;

type
  TfmECPClaimAdd = class(TForm)
    cxPropertiesStore1: TcxPropertiesStore;
    GridPanel1: TGridPanel;
    Panel1: TPanel;
    cxGroupBox2: TcxGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Label5: TLabel;
    Label18: TLabel;
    Label21: TLabel;
    cxButtonEdit1: TcxButtonEdit;
    cxTextEdit2: TcxTextEdit;
    cxTextEdit1: TcxTextEdit;
    cxButtonEdit9: TcxButtonEdit;
    cxButtonEdit15: TcxButtonEdit;
    cxButtonEdit12: TcxButtonEdit;
    cxButtonEdit10: TcxButtonEdit;
    Panel2: TPanel;
    cxGroupBox3: TcxGroupBox;
    Panel4: TPanel;
    BitBtn2: TBitBtn;
    BitBtn1: TBitBtn;
    Label3: TLabel;
    cxButtonEdit2: TcxButtonEdit;
    Label6: TLabel;
    cxButtonEdit3: TcxButtonEdit;
    cxButtonEdit6: TcxButtonEdit;
    Label7: TLabel;
    cxDateEdit3: TcxDateEdit;
    Label8: TLabel;
    cxDateEdit4: TcxDateEdit;
    Label9: TLabel;
    cxDateEdit5: TcxDateEdit;
    Label17: TLabel;
    cxButtonEdit14: TcxButtonEdit;
    Label19: TLabel;
    cxButtonEdit16: TcxButtonEdit;
    Label23: TLabel;
    cxTextEdit4: TcxTextEdit;
    cxButtonEdit17: TcxButtonEdit;
    cxButtonEdit21: TcxButtonEdit;
    Label30: TLabel;
    cxTextEdit5: TcxTextEdit;
    Label31: TLabel;
    Label4: TLabel;
    cxButtonEdit4: TcxButtonEdit;
    cxTextEdit3: TcxTextEdit;
    Label10: TLabel;
    Label11: TLabel;
    cxDateEdit1: TcxDateEdit;
    Label12: TLabel;
    cxButtonEdit5: TcxButtonEdit;
    Label20: TLabel;
    Label13: TLabel;
    cxButtonEdit8: TcxButtonEdit;
    cxTextEdit6: TcxTextEdit;
    Label14: TLabel;
    Label15: TLabel;
    cxTextEdit7: TcxTextEdit;
    cxTextEdit8: TcxTextEdit;
    Label16: TLabel;
    cxPageControl1: TcxPageControl;
    cxTabSheet1: TcxTabSheet;
    cxTabSheet2: TcxTabSheet;
    cxTabSheet3: TcxTabSheet;
    cxComboBox1: TcxComboBox;
    Client_Otpr: TClientDataSet;
    DS_Otpr: TDataSource;
    Client_Route: TClientDataSet;
    DS_Route: TDataSource;
    Client_Payer: TClientDataSet;
    DS_Payer: TDataSource;
    Client_Otprid: TAutoIncField;
    Client_OtprotprNom: TIntegerField;
    Client_OtprotprCorr: TIntegerField;
    Client_OtprotprTypeID: TIntegerField;
    Client_OtprotprTypeName: TStringField;
    Client_OtprotprRecipID: TIntegerField;
    Client_OtprotprRecipOKPO: TStringField;
    Client_OtprotprRecipName: TStringField;
    Client_OtprotprRecipAddressID: TIntegerField;
    Client_OtprotprRecipAddress: TStringField;
    Client_OtprotprToCountryCode: TStringField;
    Client_OtprotprToCountryName: TStringField;
    Client_OtprotprToStationCode: TStringField;
    Client_OtprotprToStationName: TStringField;
    Client_OtprotprOblNaznId: TIntegerField;
    Client_OtprotprExitStationCode: TStringField;
    Client_OtprotprExitStationName: TStringField;
    Client_OtprotprToPortID: TIntegerField;
    Client_OtprotprToPortCode: TStringField;
    Client_OtprotprToPortName: TStringField;
    Client_OtprotprToHolderCode: TStringField;
    Client_OtprotprFreightCode: TStringField;
    Client_OtprotprFreightName: TStringField;
    Client_OtprotprFreightGNGCode: TStringField;
    Client_OtprotprFreightGNGName: TStringField;
    Client_OtprotprFreightWeight: TIntegerField;
    Client_OtprotprPackKindID: TIntegerField;
    Client_OtprotprPackKindName: TStringField;
    Client_OtprotprFreightSpecID: TIntegerField;
    Client_OtprotprFreightSpecName: TStringField;
    Client_OtprotprCarTypeID: TIntegerField;
    Client_OtprotprCarTypeName: TStringField;
    Client_OtprotprCarTypeCODE: TStringField;
    Client_OtprotprCarCount: TIntegerField;
    Client_OtprotprCarAxles: TIntegerField;
    Client_OtprotprIxTariffCode: TStringField;
    Client_OtprotprIsFerry: TIntegerField;
    Client_OtprotprTargetCode: TStringField;
    Client_OtprotprTargetName: TStringField;
    Client_OtprotprOrgContID: TIntegerField;
    Client_OtprotprOrgContAddressID: TIntegerField;
    Client_OtprotprOrgContName: TStringField;
    Client_OtprotprCarContOwnerTypeID: TIntegerField;
    Client_OtprotprCarContOwnerTypeName: TStringField;
    Client_OtprotprContFoot: TIntegerField;
    Client_OtprotprContOwnerCountryCode: TStringField;
    Client_OtprotprContOwnerCountryName: TStringField;
    Client_OtprotprContPrefix: TStringField;
    Client_OtprotprRvCont: TIntegerField;
    Client_OtprotprCarOwnerID: TIntegerField;
    Client_OtprotprCarOwnerName: TStringField;
    Client_OtprotprContOwnerID: TIntegerField;
    Client_OtprotprContOwnerName: TStringField;
    Client_OtprotprNote: TStringField;
    Client_OtprotprTypeDeliv: TIntegerField;
    Client_OtprotprFlags: TIntegerField;
    cxGrid1: TcxGrid;
    cxGrid1DBBandedTableView1: TcxGridDBBandedTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1DBBandedTableView1id: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1otprNom: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1otprCorr: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1otprTypeID: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1otprTypeName: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1otprRecipID: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1otprRecipOKPO: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1otprRecipName: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1otprRecipAddressID: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1otprRecipAddress: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1otprToCountryCode: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1otprToCountryName: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1otprToStationCode: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1otprToStationName: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1otprOblNaznId: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1otprExitStationCode: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1otprExitStationName: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1otprToPortID: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1otprToPortCode: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1otprToPortName: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1otprToHolderCode: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1otprFreightCode: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1otprFreightName: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1otprFreightGNGCode: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1otprFreightGNGName: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1otprFreightWeight: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1otprPackKindID: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1otprPackKindName: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1otprFreightSpecID: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1otprFreightSpecName: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1otprCarTypeID: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1otprCarTypeName: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1otprCarTypeCODE: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1otprCarCount: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1otprCarAxles: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1otprIxTariffCode: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1otprIsFerry: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1otprTargetCode: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1otprTargetName: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1otprOrgContID: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1otprOrgContAddressID: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1otprOrgContName: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1otprCarContOwnerTypeID: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1otprCarContOwnerTypeName: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1otprContFoot: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1otprContOwnerCountryCode: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1otprContOwnerCountryName: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1otprContPrefix: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1otprRvCont: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1otprCarOwnerID: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1otprCarOwnerName: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1otprContOwnerID: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1otprContOwnerName: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1otprNote: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1otprTypeDeliv: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1otprFlags: TcxGridDBBandedColumn;
    Client_Routeid: TAutoIncField;
    Client_RouterouteDatePod: TDateField;
    Client_RouterouteType: TIntegerField;
    Client_RouterouteTypeName: TStringField;
    Client_RouterouteStationCode: TStringField;
    Client_RouterouteStationName: TStringField;
    Client_RouterouteCount: TIntegerField;
    Client_RouterouteCarCount: TIntegerField;
    cxGrid2: TcxGrid;
    cxGridDBBandedTableView1: TcxGridDBBandedTableView;
    cxGridLevel1: TcxGridLevel;
    cxGrid3: TcxGrid;
    cxGridDBBandedTableView2: TcxGridDBBandedTableView;
    cxGridLevel2: TcxGridLevel;
    cxGridDBBandedTableView1id: TcxGridDBBandedColumn;
    cxGridDBBandedTableView1routeDatePod: TcxGridDBBandedColumn;
    cxGridDBBandedTableView1routeType: TcxGridDBBandedColumn;
    cxGridDBBandedTableView1routeTypeName: TcxGridDBBandedColumn;
    cxGridDBBandedTableView1routeStationCode: TcxGridDBBandedColumn;
    cxGridDBBandedTableView1routeStationName: TcxGridDBBandedColumn;
    cxGridDBBandedTableView1routeCount: TcxGridDBBandedColumn;
    cxGridDBBandedTableView1routeCarCount: TcxGridDBBandedColumn;
    Client_Payerid: TAutoIncField;
    Client_PayerpayerTypeID: TIntegerField;
    Client_PayerpayerTypeName: TStringField;
    Client_PayerpayerCode: TStringField;
    Client_PayerpayerOKPO: TStringField;
    Client_PayerpayerName: TStringField;
    Client_PayerpayerRecipNum: TIntegerField;
    Client_PayerpayerAddress: TStringField;
    Client_PayerpayerCountryCode: TStringField;
    Client_PayerpayerCountryName: TStringField;
    Client_PayerpayerOtprNom: TIntegerField;
    cxGridDBBandedTableView2id: TcxGridDBBandedColumn;
    cxGridDBBandedTableView2payerTypeID: TcxGridDBBandedColumn;
    cxGridDBBandedTableView2payerTypeName: TcxGridDBBandedColumn;
    cxGridDBBandedTableView2payerCode: TcxGridDBBandedColumn;
    cxGridDBBandedTableView2payerOKPO: TcxGridDBBandedColumn;
    cxGridDBBandedTableView2payerName: TcxGridDBBandedColumn;
    cxGridDBBandedTableView2payerRecipNum: TcxGridDBBandedColumn;
    cxGridDBBandedTableView2payerAddress: TcxGridDBBandedColumn;
    cxGridDBBandedTableView2payerCountryCode: TcxGridDBBandedColumn;
    cxGridDBBandedTableView2payerCountryName: TcxGridDBBandedColumn;
    cxGridDBBandedTableView2payerOtprNom: TcxGridDBBandedColumn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cxButtonEdit1PropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure cxButtonEdit2PropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure cxButtonEdit14PropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure cxButtonEdit16PropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure cxButtonEdit8PropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure cxButtonEdit9PropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure cxButtonEdit12PropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure cxButtonEdit3PropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure cxButtonEdit21PropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure cxButtonEdit4PropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure cxButtonEdit5PropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure BitBtn2Click(Sender: TObject);
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
    procedure cxGridDBBandedTableView1FilterOnChanged(Sender: TObject);
    procedure cxGridDBBandedTableView1CustomDrawCell(
      Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
      AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
    procedure cxGridDBBandedTableView1CustomDrawColumnHeader(
      Sender: TcxGridTableView; ACanvas: TcxCanvas;
      AViewInfo: TcxGridColumnHeaderViewInfo; var ADone: Boolean);
    procedure cxGridDBBandedTableView1FocusedItemChanged(
      Sender: TcxCustomGridTableView; APrevFocusedItem,
      AFocusedItem: TcxCustomGridTableItem);
    procedure cxGridDBBandedTableView1KeyPress(Sender: TObject; var Key: Char);
    procedure cxGridDBBandedTableView2FilterOnChanged(Sender: TObject);
    procedure cxGridDBBandedTableView2CustomDrawCell(
      Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
      AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
    procedure cxGridDBBandedTableView2CustomDrawColumnHeader(
      Sender: TcxGridTableView; ACanvas: TcxCanvas;
      AViewInfo: TcxGridColumnHeaderViewInfo; var ADone: Boolean);
    procedure BitBtn1Click(Sender: TObject);
  private
    Fetran_ecp_type_id  : integer; // Тип ЭЦП
    Fetran_ecp_claim_id : integer;
    Ftype_action        : integer;
    FIO_users           : string;

    //------------------------------
    FclaimID              : integer;
    FfrontEndId           : integer;
    FclmSenderID          : integer;
    FclmSenderAddressID   : integer;
    FclmSendKindID        : integer;
    FclmMsgKindID         : integer;
    FclmCarOwnerTypeID    : integer;
    FclmTypePodID         : integer;
    FclmLoadWayOwnerID    : integer;
    FclmLoadWayOwnerAddrID: integer;
    FclmSenderAgentID     : integer;

    //------------------------------
    procedure SetUpdate(etran_ecp_claim_id: integer);
    function  StrToXML(str: string): string;
    function  StrToXMLFloat(str: string): string;
  public
    constructor Create(AOwner: TApplication); reintroduce;
  published
    property _SetUpdate     : integer write SetUpdate;
    property _SetFIOusers   : string  write FIO_users;
    property _GetECPClaimId : integer read  Fetran_ecp_claim_id;
  end;

var
  fmECPClaimAdd: TfmECPClaimAdd;

implementation

uses ECPClaim, ECPFilter, ECPPassport;

{$R *.dfm}

constructor TfmECPClaimAdd.Create(AOwner: TApplication);
var Q: TADOQuery;
begin
  Screen.Cursor := crHourglass;
  inherited Create(AOwner);

  Ftype_action  := 0;
  Fetran_ecp_claim_id := -9;

  Q := TADOQuery.Create(nil);
  Q.Connection := fmECPClaim.ADOEtran;
  Q.SQL.Add('SELECT * FROM etran_inf_obj WHERE type_inf_id = 5 and inf_obj_cod = ''2''');
  Q.Open;
  Fetran_ecp_type_id := Q.FieldByName('inf_obj_id').AsInteger;

  FclaimID              := -9;
  FfrontEndId           := -9;
  FclmSenderID          := -9;
  FclmSenderAddressID   := -9;
  FclmSendKindID        := -9;
  FclmMsgKindID         := -9;
  FclmCarOwnerTypeID    := -9;
  FclmTypePodID         := -9;
  FclmLoadWayOwnerID    := -9;
  FclmLoadWayOwnerAddrID:= -9;
  FclmSenderAgentID     := -9;


//  Client_invFreight.CreateDataSet;
//  Client_invFreight.LogChanges := False;
//
//  Client_InvGuide.CreateDataSet;
//  Client_InvGuide.LogChanges := False;
//
//  Client_InvCndBlock.CreateDataSet;
//  Client_InvCndBlock.LogChanges := False;
//
//  Client_InvTranspClause.CreateDataSet;
//  Client_InvTranspClause.LogChanges := False;
//
//  Client_InvFreightWeight.CreateDataSet;
//  Client_InvFreightWeight.LogChanges := False;
//
//  Client_InvDev.CreateDataSet;
//  Client_InvDev.LogChanges := False;
//
//  Client_InvDOC.CreateDataSet;
//  Client_InvDOC.LogChanges := False;
//
//  Client_InvSPC.CreateDataSet;
//  Client_InvSPC.LogChanges := False;
//
//  Client_invDistance.CreateDataSet;
//  Client_invDistance.LogChanges := False;
//
//  Client_invCont.CreateDataSet;
//  Client_invCont.LogChanges := False;
//
//  Client_invCar.CreateDataSet;
//  Client_invCar.LogChanges := False;
//
//  Client_freightCLS.CreateDataSet;
//  Client_freightCLS.LogChanges := False;

  Q.Free;
  Screen.Cursor := crDefault;
end;

procedure TfmECPClaimAdd.SetUpdate(etran_ecp_claim_id: integer);
var Q  : TADOQuery;
    Q2 : TADOQuery;
    Q3 : TADOQuery;
    set_reply : boolean;
begin
  ShowTextMessage('Загрузка накладной...', False);

  Fetran_ecp_claim_id := etran_ecp_claim_id;
  Ftype_action  := 1;

  Q := TADOQuery.Create(nil);
  Q.Connection := fmECPClaim.ADOEtran;

  Q2 := TADOQuery.Create(nil);
  Q2.Connection := fmECPClaim.ADOEtran;

  Q3 := TADOQuery.Create(nil);
  Q3.Connection := fmECPClaim.ADOEtran;


  Q.SQL.Clear;
  Q.SQL.Add('SELECT * FROM etran_claim_ecp WHERE etran_ecp_claim_id = ' + IntToStr(Fetran_ecp_claim_id));
  Q.Open;
  Fetran_ecp_type_id := Q.FieldByName('etran_ecp_type_id').AsInteger;

  cxButtonEdit8.EditValue  := Q.FieldByName('clmSenderName'     ).Value;
  cxDateEdit4.EditValue    := Q.FieldByName('clmStartDate'      ).Value;
  cxDateEdit5.EditValue    := Q.FieldByName('clmFinishDate'     ).Value;
  cxButtonEdit1.EditValue  := Q.FieldByName('clmSendKindName'   ).Value;
  cxButtonEdit12.EditValue := Q.FieldByName('clmFromStationName').Value;
  cxTextEdit8.EditValue    := Q.FieldByName('clmSenderOKPO'         ).Value;
  cxTextEdit7.EditValue    := Q.FieldByName('clmSenderTGNL'         ).Value;
  cxButtonEdit4.EditValue  := Q.FieldByName('clmLoadWayOwnerName'   ).Value;
  cxTextEdit3.EditValue    := Q.FieldByName('clmLoadWayOwnerAddress').Value;
  cxButtonEdit5.EditValue  := Q.FieldByName('clmSenderAgentName'    ).Value;

//  cxButtonEdit8.Text := Q.FieldByName('invSenderName').AsString;
//  cxTextEdit8.Text   := Q.FieldByName('invSenderOKPO').AsString;
//  cxButtonEdit3.Text := Q.FieldByName('invRecipName').AsString;
//  cxTextEdit9.Text   := Q.FieldByName('invRecipOKPO').AsString;
//  set_reply := False;
//  if set_reply = False then begin
    Q.SQL.Clear;
    Q.SQL.Add('DECLARE  @xml XML');
    Q.SQL.Add('SELECT   @xml = etran_ecp_xml FROM etran_claim_ecp WHERE etran_ecp_claim_id = ' + IntToStr(Fetran_ecp_claim_id));
    Q.SQL.Add('');
//  end else begin
//    Q.SQL.Clear;
//    Q.SQL.Add('DECLARE  @xml XML');
//    Q.SQL.Add('SELECT   @xml = etran_ecp_reply_xml FROM etran_ecp WHERE etran_ecp_id = ' + IntToStr(Fetran_ecp_id));
//    Q.SQL.Add('');
//  end;

  Q.SQL.Add('SELECT');
  Q.SQL.Add('ref.value(''(claimID/@value)[1]'',''int'') as claimID,');
  Q.SQL.Add('ref.value(''(claimNumber/@value)[1]'',''varchar(max)'') as claimNumber,');
  Q.SQL.Add('ref.value(''(clmCarOwnerTypeID/@value)[1]'',''int'') as clmCarOwnerTypeID,');
  Q.SQL.Add('ref.value(''(clmDogNumber/@value)[1]'',''varchar(max)'') as clmDogNumber,');
  Q.SQL.Add('ref.value(''(clmEnterStationCode/@value)[1]'',''varchar(max)'') as clmEnterStationCode,');
  Q.SQL.Add('ref.value(''(clmFinishDate/@value)[1]'',''datetime'') as clmFinishDate,');
  Q.SQL.Add('ref.value(''(clmFreightGroupCode/@value)[1]'',''varchar(max)'') as clmFreightGroupCode,');
  Q.SQL.Add('ref.value(''(clmFromCountryCode/@value)[1]'',''varchar(max)'') as clmFromCountryCode,');
  Q.SQL.Add('ref.value(''(clmFromStationCode/@value)[1]'',''varchar(max)'') as clmFromStationCode,');
  Q.SQL.Add('ref.value(''(clmLoadWayOwnerAddrID/@value)[1]'',''int'') as clmLoadWayOwnerAddrID,');
  Q.SQL.Add('ref.value(''(clmLoadWayOwnerAgreementDate/@value)[1]'',''datetime'') as clmLoadWayOwnerAgreementDate,');
  Q.SQL.Add('ref.value(''(clmLoadWayOwnerID/@value)[1]'',''int'') as clmLoadWayOwnerID,');
  Q.SQL.Add('ref.value(''(clmLoadWayOwnerSoglType/@value)[1]'',''int'') as clmLoadWayOwnerSoglType,');
  Q.SQL.Add('ref.value(''(clmMsgKindID/@value)[1]'',''int'') as clmMsgKindID,');
  Q.SQL.Add('ref.value(''(clmNote/@value)[1]'',''varchar(max)'') as clmNote,');
  Q.SQL.Add('ref.value(''(clmRegDate/@value)[1]'',''datetime'') as clmRegDate,');
  Q.SQL.Add('ref.value(''(clmSenderAddress/@value)[1]'',''varchar(max)'') as clmSenderAddress,');
  Q.SQL.Add('ref.value(''(clmSenderAddressID/@value)[1]'',''int'') as clmSenderAddressID,');
  Q.SQL.Add('ref.value(''(clmSenderAgentID/@value)[1]'',''int'') as clmSenderAgentID,');
  Q.SQL.Add('ref.value(''(clmSenderID/@value)[1]'',''int'') as clmSenderID,');
  Q.SQL.Add('ref.value(''(clmSendKindID/@value)[1]'',''int'') as clmSendKindID,');
  Q.SQL.Add('ref.value(''(clmStartDate/@value)[1]'',''datetime'') as clmStartDate,');
  Q.SQL.Add('ref.value(''(clmTypePodID/@value)[1]'',''int'') as clmTypePodID,');
  Q.SQL.Add('ref.value(''(frontEndId/@value)[1]'',''int'') as frontEndId');
  Q.SQL.Add('FROM	  @xml.nodes(''/claimAgreement'') as node(ref)');
  Q.Open;

  FclaimID              := iif(Q.FieldByName('claimID').IsNull, -9, Q.FieldByName('claimID').AsInteger);
  FfrontEndId           := iif(Q.FieldByName('frontEndId').IsNull, -9, Q.FieldByName('frontEndId').AsInteger);
  FclmSenderID          := iif(Q.FieldByName('clmSenderID').IsNull, -9, Q.FieldByName('clmSenderID').AsInteger);
  FclmSenderAddressID   := iif(Q.FieldByName('clmSenderAddressID').IsNull, -9, Q.FieldByName('clmSenderAddressID').AsInteger);
  FclmSendKindID        := iif(Q.FieldByName('clmSendKindID').IsNull, -9, Q.FieldByName('clmSendKindID').AsInteger);
  FclmMsgKindID         := iif(Q.FieldByName('clmMsgKindID').IsNull, -9, Q.FieldByName('clmMsgKindID').AsInteger);
  FclmCarOwnerTypeID    := iif(Q.FieldByName('clmCarOwnerTypeID').IsNull, -9, Q.FieldByName('clmCarOwnerTypeID').AsInteger);
  FclmTypePodID         := iif(Q.FieldByName('clmTypePodID').IsNull, -9, Q.FieldByName('clmTypePodID').AsInteger);
  FclmLoadWayOwnerID    := iif(Q.FieldByName('clmLoadWayOwnerID').IsNull, -9, Q.FieldByName('clmLoadWayOwnerID').AsInteger);
  FclmLoadWayOwnerAddrID:= iif(Q.FieldByName('clmLoadWayOwnerAddrID').IsNull, -9, Q.FieldByName('clmLoadWayOwnerAddrID').AsInteger);
  FclmSenderAgentID     := iif(Q.FieldByName('clmSenderAgentID').IsNull, -9, Q.FieldByName('clmSenderAgentID').AsInteger);

  cxTextEdit1.Text := Q.FieldByName('claimID').AsString;
  cxTextEdit2.Text := Q.FieldByName('frontEndId').AsString;

  cxTextEdit5.Text :=Q.FieldByName('claimNumber').Value;
  cxTextEdit6.Text :=Q.FieldByName('clmSenderAddress').Value;
  cxDateEdit3.EditValue :=Q.FieldByName('clmRegDate').Value;
  cxDateEdit4.EditValue :=Q.FieldByName('clmStartDate').Value;
  cxDateEdit5.EditValue :=Q.FieldByName('clmFinishDate').Value;
  cxButtonEdit15.Text :=Q.FieldByName('clmFromCountryCode').Value;
  cxButtonEdit10.Text :=Q.FieldByName('clmFromStationCode').Value;
  cxButtonEdit6.Text  :=Q.FieldByName('clmEnterStationCode').Value;
  cxButtonEdit17.Text :=Q.FieldByName('clmFreightGroupCode').Value;
  cxTextEdit4.Text :=Q.FieldByName('clmDogNumber').Value;
  cxDateEdit1.EditValue :=Q.FieldByName('clmLoadWayOwnerAgreementDate').Value;
  cxComboBox1.ItemIndex :=Q.FieldByName('clmLoadWayOwnerSoglType').Value-1;


//  ShowTextMessage('Загрузка накладной...', False);
//  Q.SQL.Clear;
//  Q.SQL.Add('SELECT etran_nsi_id, inf_obj_name, inf_obj_cod FROM dbo.ETRAN_NSI_INF_OBJ WHERE type_inf_id = 13 AND inf_obj_cod = ''' + cxButtonEdit14.Text + '''');
//  Q.Open;
//  cxButtonEdit22.Text := Q.FieldByName('inf_obj_name').AsString;
//
  Q.SQL.Clear;
  Q.SQL.Add('SELECT etran_nsi_id, inf_obj_name, inf_obj_cod FROM dbo.ETRAN_NSI_INF_OBJ WHERE type_inf_id = 13 AND inf_obj_cod = ''' + cxButtonEdit15.Text + '''');
  Q.Open;
  cxButtonEdit9.Text := Q.FieldByName('inf_obj_name').AsString;


  Q.SQL.Clear;
  Q.SQL.Add('SELECT etran_nsi_id, inf_obj_name, inf_obj_cod FROM dbo.ETRAN_NSI_INF_OBJ WHERE type_inf_id = 11 AND inf_obj_cod = ''' + cxButtonEdit10.Text + '''');
  Q.Open;
  cxButtonEdit12.Text := Q.FieldByName('inf_obj_name').AsString;

  Q.SQL.Clear;
  Q.SQL.Add('SELECT etran_nsi_id, inf_obj_name, inf_obj_cod FROM dbo.ETRAN_NSI_INF_OBJ WHERE type_inf_id = 11 AND inf_obj_cod = ''' + cxButtonEdit6.Text + '''');
  Q.Open;
  cxButtonEdit3.Text := Q.FieldByName('inf_obj_name').AsString;

//  Q.SQL.Clear;
//  Q.SQL.Add('SELECT etran_nsi_id, inf_obj_name, inf_obj_cod FROM dbo.ETRAN_NSI_INF_OBJ WHERE type_inf_id = 11 AND inf_obj_cod = ''' + cxButtonEdit34.Text + '''');
//  Q.Open;
//  cxButtonEdit27.Text := Q.FieldByName('inf_obj_name').AsString;
//
//  Q.SQL.Clear;
//  Q.SQL.Add('SELECT etran_nsi_id, inf_obj_name, inf_obj_cod FROM dbo.ETRAN_NSI_INF_OBJ WHERE type_inf_id = 11 AND inf_obj_cod = ''' + cxButtonEdit35.Text + '''');
//  Q.Open;
//  cxButtonEdit28.Text := Q.FieldByName('inf_obj_name').AsString;
//
//  Q.SQL.Clear;
//  Q.SQL.Add('SELECT etran_nsi_id, inf_obj_name, inf_obj_cod FROM dbo.ETRAN_NSI_INF_OBJ WHERE type_inf_id = 7 AND inf_obj_cod = ''' + cxButtonEdit23.Text + '''');
//  Q.Open;
//  cxButtonEdit11.Text := Q.FieldByName('inf_obj_name').AsString;
//
//  Q.SQL.Clear;
//  Q.SQL.Add('SELECT etran_nsi_id, inf_obj_name, inf_obj_cod FROM dbo.ETRAN_NSI_INF_OBJ WHERE type_inf_id = 7 AND inf_obj_cod = ''' + cxButtonEdit33.Text + '''');
//  Q.Open;
//  cxButtonEdit24.Text := Q.FieldByName('inf_obj_name').AsString;
//
//  Q.SQL.Clear;
//  Q.SQL.Add('SELECT * FROM dbo.ETRAN_NSI_INF_OBJ WHERE type_inf_id = 27 AND inf_obj_cod = ''147'' AND etran_nsi_id = ' + IntToStr(FinvTypeID));
//  Q.Open;
//  cxButtonEdit6.Text := Q.FieldByName('inf_obj_name').AsString;
//
  Q.SQL.Clear;
  Q.SQL.Add('SELECT * FROM dbo.ETRAN_NSI_INF_OBJ WHERE type_inf_id = 27 AND inf_obj_cod =''163'' AND etran_nsi_id = ' + IntToStr(FclmSendKindID));
  Q.Open;
  cxButtonEdit1.Text := Q.FieldByName('inf_obj_name').AsString;

  Q.SQL.Clear;
  Q.SQL.Add('SELECT * FROM dbo.ETRAN_NSI_INF_OBJ WHERE type_inf_id = 27 AND inf_obj_cod =''120'' AND etran_nsi_id = ' + IntToStr(FclmMsgKindID));
  Q.Open;
  cxButtonEdit2.Text := Q.FieldByName('inf_obj_name').AsString;


  Q.SQL.Clear;
  Q.SQL.Add('SELECT * FROM dbo.ETRAN_NSI_INF_OBJ WHERE type_inf_id = 41 AND etran_nsi_id = ' + IntToStr(FclmCarOwnerTypeID));
  Q.Open;
  cxButtonEdit14.Text := Q.FieldByName('inf_obj_name').AsString;

  Q.SQL.Clear;
  Q.SQL.Add('SELECT * FROM dbo.ETRAN_NSI_INF_OBJ WHERE type_inf_id = 27 AND inf_obj_cod =''15'' AND etran_nsi_id = ' + IntToStr(FclmTypePodID));
  Q.Open;
  cxButtonEdit16.Text := Q.FieldByName('inf_obj_name').AsString;

//  Q.SQL.Clear;
//  Q.SQL.Add('SELECT * FROM dbo.ETRAN_NSI_INF_OBJ WHERE type_inf_id = 32 AND etran_nsi_id = ' + IntToStr(FinvBlankTypeID));
//  Q.Open;
//  cxButtonEdit2.Text := Q.FieldByName('inf_obj_name').AsString;
//  FinvBlankTypeCod   := Q.FieldByName('inf_obj_cod').AsInteger;
//
//  Q.SQL.Clear;
//  Q.SQL.Add('SELECT * FROM dbo.ETRAN_NSI_INF_OBJ WHERE type_inf_id = 15 AND etran_nsi_id = ' + IntToStr(FinvSendSpeedID));
//  Q.Open;
//  cxButtonEdit21.Text := Q.FieldByName('inf_obj_name').AsString;
//
//  Q.SQL.Clear;
//  Q.SQL.Add('SELECT * FROM dbo.ETRAN_NSI_INF_OBJ WHERE type_inf_id = 17 AND etran_nsi_id = ' + IntToStr(FinvPayPlaceID));
//  Q.Open;
//  cxButtonEdit18.Text := Q.FieldByName('inf_obj_name').AsString;
//
//  Q.SQL.Clear;
//  Q.SQL.Add('SELECT * FROM dbo.ETRAN_NSI_INF_OBJ WHERE type_inf_id = 18 AND etran_nsi_id = ' + IntToStr(FinvPayFormID));
//  Q.Open;
//  cxButtonEdit13.Text := Q.FieldByName('inf_obj_name').AsString;
//
//  Q.SQL.Clear;
//  Q.SQL.Add('SELECT * FROM dbo.ETRAN_NSI_INF_OBJ WHERE type_inf_id = 8 AND etran_nsi_id = ' + IntToStr(FinvPlanCarTypeID));
//  Q.Open;
//  cxButtonEdit30.Text := Q.FieldByName('inf_obj_name').AsString;
//
//  Q.SQL.Clear;
//  Q.SQL.Add('SELECT * FROM dbo.ETRAN_NSI_INF_OBJ WHERE type_inf_id = 27 AND inf_obj_cod = ''7'' AND etran_nsi_id = ' + IntToStr(FinvPlanCarOwnerTypeID));
//  Q.Open;
//  cxButtonEdit29.Text := Q.FieldByName('inf_obj_name').AsString;
//
//  Q.SQL.Clear;
//  Q.SQL.Add('SELECT * FROM dbo.ETRAN_NSI_INF_OBJ WHERE type_inf_id = 27 AND inf_obj_cod = ''7'' AND etran_nsi_id = ' + IntToStr(FinvPlanContOwnerTypeID));
//  Q.Open;
//  cxButtonEdit31.Text := Q.FieldByName('inf_obj_name').AsString;
//
//  Q.SQL.Clear;
//  Q.SQL.Add('SELECT * FROM dbo.ETRAN_NSI_INF_OBJ WHERE type_inf_id = 27 AND inf_obj_cod = ''122'' AND etran_nsi_id = ' + IntToStr(FinvLoadTypeID));
//  Q.Open;
//  cxButtonEdit17.Text := Q.FieldByName('inf_obj_name').AsString;
//
//  Q.SQL.Clear;
//  Q.SQL.Add('SELECT * FROM dbo.ETRAN_NSI_INF_OBJ WHERE type_inf_id = 27 AND inf_obj_cod = ''101'' AND etran_nsi_id = ' + IntToStr(FinvLoadAssetsID));
//  Q.Open;
//  cxButtonEdit19.Text := Q.FieldByName('inf_obj_name').AsString;
//
//  Q.SQL.Clear;
//  Q.SQL.Add('SELECT * FROM dbo.ETRAN_NSI_INF_OBJ WHERE type_inf_id = 23 AND etran_nsi_id = ' + IntToStr(FinvScaleTypeID));
//  Q.Open;
//  cxButtonEdit7.Text := Q.FieldByName('inf_obj_name').AsString;
//
//  Q.SQL.Clear;
//  Q.SQL.Add('SELECT * FROM dbo.ETRAN_NSI_INF_OBJ WHERE type_inf_id = 27 AND inf_obj_cod = ''100'' AND etran_nsi_id = ' + IntToStr(FinvScalePersonID));
//  Q.Open;
//  cxButtonEdit5.Text := Q.FieldByName('inf_obj_name').AsString;
//
//  Q.SQL.Clear;
//  Q.SQL.Add('SELECT * FROM dbo.ETRAN_NSI_INF_OBJ WHERE type_inf_id = 27 AND inf_obj_cod = ''106'' AND etran_nsi_id = ' + IntToStr(FinvCheckDepID));
//  Q.Open;
//  cxButtonEdit32.Text := Q.FieldByName('inf_obj_name').AsString;
//
//  Q.SQL.Clear;
//  Q.SQL.Add('SELECT * FROM dbo.ETRAN_NSI_INF_OBJ WHERE type_inf_id = 27 AND inf_obj_cod = ''108'' AND etran_nsi_id = ' + IntToStr(FinvDepNormDocID));
//  Q.Open;
//  cxButtonEdit20.Text := Q.FieldByName('inf_obj_name').AsString;

  Q.Free;
  Q2.Free;
  Q3.Free;
  ShowTextMessage;
end;

procedure TfmECPClaimAdd.cxButtonEdit12PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
var Q: TADOQuery;
    str_find: string;
begin
  case AButtonIndex of
    0:  begin
          Q := TADOQuery.Create(nil);
          Q.Connection := fmECPClaim.ADOEtran;
          Q.SQL.Add('SELECT etran_nsi_id, inf_obj_name, inf_obj_cod FROM dbo.ETRAN_NSI_INF_OBJ WHERE type_inf_id = 11');

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
          fmECPFilter._SetFilterCod := 'Станции';
          if fmECPFilter.ShowModal = mrOk then begin
            cxButtonEdit12.Text:= fmECPFilter._GetName;
            cxButtonEdit10.Text:= fmECPFilter._GetCod;
          end;
          Q.Free;
        end;
    1:  begin
          cxButtonEdit12.Text := '';
          cxButtonEdit10.Text := '';
        end;
  end;
end;

procedure TfmECPClaimAdd.cxButtonEdit14PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
var Q: TADOQuery;
begin
  case AButtonIndex of
    0:  begin
          Q := TADOQuery.Create(nil);
          Q.Connection := fmECPClaim.ADOEtran;
          Q.SQL.Add('SELECT * FROM dbo.ETRAN_NSI_INF_OBJ WHERE type_inf_id = 41');
          Q.Open;
          fmECPFilter := TfmECPFilter.Create(nil, Q);
          fmECPFilter._SetInvSendType := True;
          if fmECPFilter.ShowModal = mrOk then begin
            FclmCarOwnerTypeID     := fmECPFilter._GetID;
            cxButtonEdit14.Text := fmECPFilter._GetName;
          end;
          Q.Free;
        end;
    1:  begin
          FclmCarOwnerTypeID     := -9;
          cxButtonEdit14.Text := '';
        end;
  end;

end;

procedure TfmECPClaimAdd.cxButtonEdit16PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
var Q: TADOQuery;
begin
  case AButtonIndex of
    0:  begin
          Q := TADOQuery.Create(nil);
          Q.Connection := fmECPClaim.ADOEtran;
          Q.SQL.Add('SELECT * FROM dbo.ETRAN_NSI_INF_OBJ WHERE type_inf_id = 27 and inf_obj_cod = ''15''');
          Q.Open;
          fmECPFilter := TfmECPFilter.Create(nil, Q);
          fmECPFilter._SetInvSendType := True;
          if fmECPFilter.ShowModal = mrOk then begin
            FclmTypePodID     := fmECPFilter._GetID;
            cxButtonEdit16.Text := fmECPFilter._GetName;
          end;
          Q.Free;
        end;
    1:  begin
          FclmTypePodID     := -9;
          cxButtonEdit16.Text := '';
        end;
  end;
end;

procedure TfmECPClaimAdd.cxButtonEdit1PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
var Q: TADOQuery;
begin
  case AButtonIndex of
    0:  begin
          Q := TADOQuery.Create(nil);
          Q.Connection := fmECPClaim.ADOEtran;
          Q.SQL.Add('SELECT * FROM dbo.ETRAN_NSI_INF_OBJ WHERE type_inf_id = 27 and inf_obj_cod = ''163''');
          Q.Open;
          fmECPFilter := TfmECPFilter.Create(nil, Q);
          fmECPFilter._SetInvSendType := True;
          if fmECPFilter.ShowModal = mrOk then begin
            FclmSendKindID     := fmECPFilter._GetID;
            cxButtonEdit1.Text := fmECPFilter._GetName;
          end;
          Q.Free;
        end;
    1:  begin
          FclmSendKindID     := -9;
          cxButtonEdit1.Text := '';
        end;
  end;
end;

procedure TfmECPClaimAdd.cxButtonEdit21PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
var Q: TADOQuery;
begin
  case AButtonIndex of
    0:  begin
          Q := TADOQuery.Create(nil);
          Q.Connection := fmECPClaim.ADOEtran;
          Q.SQL.Add('SELECT * FROM dbo.ETRAN_NSI_INF_OBJ WHERE type_inf_id = 4');
          Q.Open;
          fmECPFilter := TfmECPFilter.Create(nil, Q);
          fmECPFilter._SetInvSendType := True;
          if fmECPFilter.ShowModal = mrOk then begin
            cxButtonEdit17.Text := fmECPFilter._GetCod;
            cxButtonEdit21.Text := fmECPFilter._GetName;
          end;
          Q.Free;
        end;
    1:  begin
          cxButtonEdit17.Text := '';
          cxButtonEdit21.Text := '';
        end;
  end;
end;

procedure TfmECPClaimAdd.cxButtonEdit2PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
var Q: TADOQuery;
begin
  case AButtonIndex of
    0:  begin
          Q := TADOQuery.Create(nil);
          Q.Connection := fmECPClaim.ADOEtran;
          Q.SQL.Add('SELECT * FROM dbo.ETRAN_NSI_INF_OBJ WHERE type_inf_id = 27 and inf_obj_cod = ''120''');
          Q.Open;
          fmECPFilter := TfmECPFilter.Create(nil, Q);
          fmECPFilter._SetInvSendType := True;
          if fmECPFilter.ShowModal = mrOk then begin
            FclmMsgKindID     := fmECPFilter._GetID;
            cxButtonEdit2.Text := fmECPFilter._GetName;
          end;
          Q.Free;
        end;
    1:  begin
          FclmMsgKindID     := -9;
          cxButtonEdit2.Text := '';
        end;
  end;
end;

procedure TfmECPClaimAdd.cxButtonEdit3PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
var Q: TADOQuery;
    str_find: string;
begin
  case AButtonIndex of
    0:  begin
          Q := TADOQuery.Create(nil);
          Q.Connection := fmECPClaim.ADOEtran;
          Q.SQL.Add('SELECT etran_nsi_id, inf_obj_name, inf_obj_cod FROM dbo.ETRAN_NSI_INF_OBJ WHERE type_inf_id = 11');

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
          fmECPFilter._SetFilterCod := 'Станции';
          if fmECPFilter.ShowModal = mrOk then begin
            cxButtonEdit3.Text:= fmECPFilter._GetName;
            cxButtonEdit6.Text:= fmECPFilter._GetCod;
          end;
          Q.Free;
        end;
    1:  begin
          cxButtonEdit3.Text := '';
          cxButtonEdit6.Text := '';
        end;
  end;
end;

procedure TfmECPClaimAdd.cxButtonEdit4PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
    case AButtonIndex of
    0:  begin
          fmECPPassport := TfmECPPassport.Create(nil);
          fmECPPassport._SetConnect(fmECPClaim.ADOEtran);
          if fmECPPassport.ShowModal = mrOk then begin
            FclmLoadWayOwnerID := fmECPPassport._GetOrgID;
            cxButtonEdit4.Text := fmECPPassport._GetName;
            FclmLoadWayOwnerAddrID := fmECPPassport._GetOrgAddressID;
            cxTextEdit3.Text   := fmECPPassport._GetOrgAddress;
          end;
        end;
    1:  begin
            FclmLoadWayOwnerID := -9;
            cxButtonEdit4.Text := '';
            FclmLoadWayOwnerAddrID := -9;
            cxTextEdit3.Text   := '';
        end;
  end;
end;

procedure TfmECPClaimAdd.cxButtonEdit5PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
    case AButtonIndex of
    0:  begin
          fmECPPassport := TfmECPPassport.Create(nil);
          fmECPPassport._SetConnect(fmECPClaim.ADOEtran);
          if fmECPPassport.ShowModal = mrOk then begin
            FclmSenderAgentID := fmECPPassport._GetOrgID;
            cxButtonEdit5.Text := fmECPPassport._GetName;
          end;
        end;
    1:  begin
            FclmSenderAgentID := -9;
            cxButtonEdit5.Text := '';
        end;
  end;
end;

procedure TfmECPClaimAdd.cxButtonEdit8PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
    case AButtonIndex of
    0:  begin
          fmECPPassport := TfmECPPassport.Create(nil);
          fmECPPassport._SetConnect(fmECPClaim.ADOEtran);
          if fmECPPassport.ShowModal = mrOk then begin
            FclmSenderID       := fmECPPassport._GetOrgID;
            cxButtonEdit8.Text := fmECPPassport._GetName;
            FclmSenderAddressID:= fmECPPassport._GetOrgAddressID;
            cxTextEdit6.Text   := fmECPPassport._GetOrgAddress;
            cxTextEdit7.Text   := fmECPPassport._GetOrgAddressTGNL;
            cxTextEdit8.Text   := fmECPPassport._GetOrgOKPO;
          end;
        end;
    1:  begin
            FclmSenderID       := -9;
            cxButtonEdit8.Text := '';
            FclmSenderAddressID:= -9;
            cxTextEdit6.Text   := '';
            cxTextEdit7.Text   := '';
            cxTextEdit8.Text   := '';
        end;
  end;
end;

procedure TfmECPClaimAdd.cxButtonEdit9PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
var Q: TADOQuery;
    str_find: string;
begin
  case AButtonIndex of
    0:  begin
          Q := TADOQuery.Create(nil);
          Q.Connection := fmECPClaim.ADOEtran;
          Q.SQL.Add('SELECT etran_nsi_id, inf_obj_name, inf_obj_cod FROM dbo.ETRAN_NSI_INF_OBJ WHERE type_inf_id = 13');

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
            cxButtonEdit9.Text:= fmECPFilter._GetName;
            cxButtonEdit15.Text:= fmECPFilter._GetCod;
          end;
          Q.Free;
        end;
    1:  begin
          cxButtonEdit9.Text := '';
          cxButtonEdit15.Text := '';
        end;
  end;
end;

procedure TfmECPClaimAdd.cxGrid1DBBandedTableView1CustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
	if AViewInfo.GridRecord.Selected or AViewInfo.GridRecord.Focused then begin
		ACanvas.Brush.Color := clNavy;
		ACanvas.Font.Color := clWhite;
		if AViewInfo.Focused then ACanvas.Brush.Color := clBlue;
	end;
end;

procedure TfmECPClaimAdd.cxGrid1DBBandedTableView1CustomDrawColumnHeader(
  Sender: TcxGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridColumnHeaderViewInfo; var ADone: Boolean);
begin
	if AViewInfo.Column.Focused then begin
		ACanvas.Brush.Color := clNavy;
		ACanvas.Font.Color := clWhite;
	end;
end;

procedure TfmECPClaimAdd.cxGrid1DBBandedTableView1FilterOnChanged(
  Sender: TObject);
begin
	DrawcxGridColumnOnFiltered(Sender);
end;

procedure TfmECPClaimAdd.cxGrid1DBBandedTableView1FocusedItemChanged(
  Sender: TcxCustomGridTableView; APrevFocusedItem,
  AFocusedItem: TcxCustomGridTableItem);
begin
	cxGrid1DBBandedTableView1.Painter.Invalidate;
end;

procedure TfmECPClaimAdd.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TfmECPClaimAdd.BitBtn1Click(Sender: TObject);
begin
  ModalResult := mrCancel;
end;

procedure TfmECPClaimAdd.BitBtn2Click(Sender: TObject);
var xml : string;
    sp_etran_ecp_claim_modify : TADOStoredProc;
    etran_ecp_claim_id : integer;
begin
  Screen.Cursor := crHourGlass;

  sp_etran_ecp_claim_modify := TADOStoredProc.Create(nil);
  sp_etran_ecp_claim_modify.Connection := fmECPClaim.ADOEtran;
  sp_etran_ecp_claim_modify.ProcedureName := 'sp_etran_ecp_claim_modify';

  if Ftype_action = 0 then begin
    sp_etran_ecp_claim_modify.Parameters.Refresh;
    sp_etran_ecp_claim_modify.Parameters.ParamByName('@etran_ecp_claim_id' ).Value := null;
    sp_etran_ecp_claim_modify.Parameters.ParamByName('@type_action'        ).Value := 0;
    sp_etran_ecp_claim_modify.Parameters.ParamByName('@etran_ecp_type_id'  ).Value := Fetran_ecp_type_id;
    sp_etran_ecp_claim_modify.Parameters.ParamByName('@FIO_users_create'   ).Value := FIO_users;
    sp_etran_ecp_claim_modify.ExecProc;
    etran_ecp_claim_id := sp_etran_ecp_claim_modify.Parameters.ParamByName('@etran_ecp_claim_id').Value;
  end else begin
    etran_ecp_claim_id :=Fetran_ecp_claim_id;
  end;

  xml := '<claimAgreement version="1.0">' + #10#13;
  if FclaimID              <> -9 then xml := xml + '<claimID value="' +               IntToStr(FclaimID) + '"/>' + #10#13;
  if FfrontEndId           <> -9 then xml := xml + '<frontEndId value="' +            IntToStr(FfrontEndId) + '"/>' + #10#13;
  if FclmSenderID           <> -9 then xml := xml + '<clmSenderID value="' +          IntToStr(FclmSenderID) + '"/>' + #10#13;
  if FclmSenderAddressID    <> -9 then xml := xml + '<clmSenderAddressID value="' +   IntToStr(FclmSenderAddressID) + '"/>' + #10#13;
  if FclmSendKindID         <> -9 then xml := xml + '<clmSendKindID value="' +        IntToStr(FclmSendKindID) + '"/>' + #10#13;
  if FclmMsgKindID          <> -9 then xml := xml + '<clmMsgKindID value="' +         IntToStr(FclmMsgKindID) + '"/>' + #10#13;
  if FclmCarOwnerTypeID     <> -9 then xml := xml + '<clmCarOwnerTypeID value="' +    IntToStr(FclmCarOwnerTypeID) + '"/>' + #10#13;
  if FclmTypePodID          <> -9 then xml := xml + '<clmTypePodID value="' +         IntToStr(FclmTypePodID) + '"/>' + #10#13;
  if FclmLoadWayOwnerID     <> -9 then xml := xml + '<clmLoadWayOwnerID value="' +    IntToStr(FclmLoadWayOwnerID) + '"/>' + #10#13;
  if FclmLoadWayOwnerAddrID <> -9 then xml := xml + '<clmLoadWayOwnerAddrID value="' +IntToStr(FclmLoadWayOwnerAddrID) + '"/>' + #10#13;
  if FclmSenderAgentID      <> -9 then xml := xml + '<clmSenderAgentID value="' +     IntToStr(FclmSenderAgentID) + '"/>' + #10#13;

  if cxTextEdit5.Text <> '' then xml := xml + '<claimNumber value="'      + StrToXML(cxTextEdit5.Text) + '"/>' + #10#13;
  if cxTextEdit6.Text <> '' then xml := xml + '<clmSenderAddress value="' + StrToXML(cxTextEdit6.Text) + '"/>' + #10#13;
  if cxDateEdit3.EditValue <> null then xml := xml + '<clmRegDate value="'     + FormatDateTime('dd.mm.yyyy', cxDateEdit3.Date) + '"/>' + #10#13;
  if cxDateEdit4.EditValue <> null then xml := xml + '<clmStartDate value="'   + FormatDateTime('dd.mm.yyyy', cxDateEdit4.Date) + '"/>' + #10#13;
  if cxDateEdit5.EditValue <> null then xml := xml + '<clmFinishDate value="'  + FormatDateTime('dd.mm.yyyy', cxDateEdit5.Date) + '"/>' + #10#13;
  if cxButtonEdit15.Text <> '' then xml := xml + '<clmFromCountryCode value="' + StrToXML(cxButtonEdit15.Text) + '"/>' + #10#13;
  if cxButtonEdit10.Text <> '' then xml := xml + '<clmFromStationCode value="' + StrToXML(cxButtonEdit10.Text) + '"/>' + #10#13;
  if cxButtonEdit6.Text  <> '' then xml := xml + '<clmEnterStationCode value="'+ StrToXML(cxButtonEdit6.Text) + '"/>' + #10#13;
  if cxButtonEdit17.Text <> '' then xml := xml + '<clmFreightGroupCode value="'+ StrToXML(cxButtonEdit17.Text) + '"/>' + #10#13;
  if cxTextEdit4.Text <> '' then xml := xml + '<clmDogNumber value="'          + StrToXML(cxTextEdit4.Text) + '"/>' + #10#13;
  if cxDateEdit1.EditValue <> null then xml := xml + '<clmLoadWayOwnerAgreementDate value="'+ FormatDateTime('dd.mm.yyyy', cxDateEdit5.Date) + '"/>' + #10#13;
  if cxComboBox1.ItemIndex <> -1 then xml := xml + '<clmLoadWayOwnerSoglType value="'     + IntToStr(cxComboBox1.ItemIndex+1) + '"/>' + #10#13;

  xml := xml + '</claimAgreement>';

  sp_etran_ecp_claim_modify.Parameters.Refresh;
  sp_etran_ecp_claim_modify.Parameters.ParamByName('@etran_ecp_claim_id' ).Value := etran_ecp_claim_id;
  sp_etran_ecp_claim_modify.Parameters.ParamByName('@type_action'        ).Value := 1;
  sp_etran_ecp_claim_modify.Parameters.ParamByName('@etran_ecp_type_id'  ).Value := Fetran_ecp_type_id;
  sp_etran_ecp_claim_modify.Parameters.ParamByName('@etran_ecp_xml'      ).Value := xml;

  sp_etran_ecp_claim_modify.Parameters.ParamByName('@claimNumber'       ).Value := cxTextEdit5.EditValue;
  sp_etran_ecp_claim_modify.Parameters.ParamByName('@clmSenderName'     ).Value := cxButtonEdit8.EditValue;
  sp_etran_ecp_claim_modify.Parameters.ParamByName('@clmStartDate'      ).Value := cxDateEdit4.EditValue;
  sp_etran_ecp_claim_modify.Parameters.ParamByName('@clmFinishDate'     ).Value := cxDateEdit5.EditValue;
  sp_etran_ecp_claim_modify.Parameters.ParamByName('@clmSendKindName'   ).Value := cxButtonEdit1.EditValue;
  sp_etran_ecp_claim_modify.Parameters.ParamByName('@clmFromStationName').Value := cxButtonEdit12.EditValue;
  sp_etran_ecp_claim_modify.Parameters.ParamByName('@clmSenderOKPO'          ).Value := cxTextEdit8.EditValue;
  sp_etran_ecp_claim_modify.Parameters.ParamByName('@clmSenderTGNL'          ).Value := cxTextEdit7.EditValue;
  sp_etran_ecp_claim_modify.Parameters.ParamByName('@clmLoadWayOwnerName'    ).Value := cxButtonEdit4.EditValue;
  sp_etran_ecp_claim_modify.Parameters.ParamByName('@clmLoadWayOwnerAddress' ).Value := cxTextEdit3.EditValue;
  sp_etran_ecp_claim_modify.Parameters.ParamByName('@clmSenderAgentName'     ).Value := cxButtonEdit5.EditValue;




  try
    sp_etran_ecp_claim_modify.ExecProc;
    Fetran_ecp_claim_id := sp_etran_ecp_claim_modify.Parameters.ParamByName('@etran_ecp_claim_id').Value;
  except
  end;

  sp_etran_ecp_claim_modify.Free;
  Screen.Cursor := crDefault;

  ModalResult := mrOk;
end;


procedure TfmECPClaimAdd.cxGrid1DBBandedTableView1KeyPress(Sender: TObject;
  var Key: Char);
begin
	FilterColumnGridOnKeyPress(cxGrid1DBBandedTableView1, Key);
end;

procedure TfmECPClaimAdd.cxGridDBBandedTableView1CustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
	if AViewInfo.GridRecord.Selected or AViewInfo.GridRecord.Focused then begin
		ACanvas.Brush.Color := clNavy;
		ACanvas.Font.Color := clWhite;
		if AViewInfo.Focused then ACanvas.Brush.Color := clBlue;
	end;
end;

procedure TfmECPClaimAdd.cxGridDBBandedTableView1CustomDrawColumnHeader(
  Sender: TcxGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridColumnHeaderViewInfo; var ADone: Boolean);
begin
	if AViewInfo.Column.Focused then begin
		ACanvas.Brush.Color := clNavy;
		ACanvas.Font.Color := clWhite;
	end;
end;

procedure TfmECPClaimAdd.cxGridDBBandedTableView1FilterOnChanged(
  Sender: TObject);
begin
	DrawcxGridColumnOnFiltered(Sender);
end;

procedure TfmECPClaimAdd.cxGridDBBandedTableView1FocusedItemChanged(
  Sender: TcxCustomGridTableView; APrevFocusedItem,
  AFocusedItem: TcxCustomGridTableItem);
begin
	cxGridDBBandedTableView1.Painter.Invalidate;
end;

procedure TfmECPClaimAdd.cxGridDBBandedTableView1KeyPress(Sender: TObject;
  var Key: Char);
begin
	FilterColumnGridOnKeyPress(cxGridDBBandedTableView1, Key);
end;

procedure TfmECPClaimAdd.cxGridDBBandedTableView2CustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
	if AViewInfo.GridRecord.Selected or AViewInfo.GridRecord.Focused then begin
		ACanvas.Brush.Color := clNavy;
		ACanvas.Font.Color := clWhite;
		if AViewInfo.Focused then ACanvas.Brush.Color := clBlue;
	end;
end;

procedure TfmECPClaimAdd.cxGridDBBandedTableView2CustomDrawColumnHeader(
  Sender: TcxGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridColumnHeaderViewInfo; var ADone: Boolean);
begin
	if AViewInfo.Column.Focused then begin
		ACanvas.Brush.Color := clNavy;
		ACanvas.Font.Color := clWhite;
	end;
end;

procedure TfmECPClaimAdd.cxGridDBBandedTableView2FilterOnChanged(
  Sender: TObject);
begin
	DrawcxGridColumnOnFiltered(Sender);
end;


function  TfmECPClaimAdd.StrToXML(str: string): string;
begin
  str := ReplaceStr(str, '&', '&amp;');
  str := ReplaceStr(str, '"', '&quot;');
  str := ReplaceStr(str, '''', '&apos;');
  str := ReplaceStr(str, '>', '&gt;');
  str := ReplaceStr(str, '<', '&lt;');
  Result := str;
end;

function  TfmECPClaimAdd.StrToXMLFloat(str: string): string;
begin
  str := ReplaceStr(str, '&', '&amp;');
  str := ReplaceStr(str, '"', '&quot;');
  str := ReplaceStr(str, '''', '&apos;');
  str := ReplaceStr(str, '>', '&gt;');
  str := ReplaceStr(str, '<', '&lt;');
  str := ReplaceStr(str, ',', '.');
  Result := str;
end;



end.






