unit ECPInvCar;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, cxTextEdit, cxMaskEdit,
  cxButtonEdit, cxGroupBox, cxCurrencyEdit, cxStyles, cxCustomData, cxFilter,
  cxData, cxDataStorage, DB, cxDBData, cxGridLevel, cxGridCustomTableView,
  cxGridTableView, cxGridBandedTableView, cxGridDBBandedTableView, cxClasses,
  cxGridCustomView, cxGrid, cxPC, DBClient, ADODB, raznoe, cxPropertiesStore,
  dxBar, StrUtils, cxCheckBox, dxBarBuiltInMenu, cxNavigator, dxSkinsCore,
  dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee,
  dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
  dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMetropolis, dxSkinMetropolisDark, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013DarkGray,
  dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinPumpkin, dxSkinSeven,
  dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus, dxSkinSilver,
  dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008, dxSkinTheAsphaltWorld,
  dxSkinsDefaultPainters, dxSkinValentine, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue, dxSkinscxPCPainter, dxSkinsdxBarPainter,
  dxSkinOffice2016Colorful, dxSkinOffice2016Dark, dxSkinVisualStudio2013Blue,
  dxSkinVisualStudio2013Dark, dxSkinVisualStudio2013Light, Filter,
  cxDataControllerConditionalFormattingRulesManagerDialog, dxSkinTheBezier, dxDateRanges;

type
  TfmECPInvCar = class(TForm)
    Panel1: TPanel;
    BitBtn2: TBitBtn;
    BitBtn1: TBitBtn;
    GridPanel1: TGridPanel;
    Panel2: TPanel;
    Label1: TLabel;
    Label6: TLabel;
    Label2: TLabel;
    Label5: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    cxTextEdit1: TcxTextEdit;
    cxCurrencyEdit1: TcxCurrencyEdit;
    cxCurrencyEdit2: TcxCurrencyEdit;
    cxButtonEdit6: TcxButtonEdit;
    cxButtonEdit1: TcxButtonEdit;
    cxButtonEdit2: TcxButtonEdit;
    cxButtonEdit3: TcxButtonEdit;
    cxTextEdit3: TcxTextEdit;
    cxButtonEdit4: TcxButtonEdit;
    cxCurrencyEdit3: TcxCurrencyEdit;
    cxCurrencyEdit4: TcxCurrencyEdit;
    cxCurrencyEdit5: TcxCurrencyEdit;
    cxCurrencyEdit6: TcxCurrencyEdit;
    cxButtonEdit5: TcxButtonEdit;
    cxButtonEdit7: TcxButtonEdit;
    cxButtonEdit8: TcxButtonEdit;
    cxButtonEdit9: TcxButtonEdit;
    Panel3: TPanel;
    Label33: TLabel;
    cxCurrencyEdit21: TcxCurrencyEdit;
    cxCurrencyEdit20: TcxCurrencyEdit;
    Label32: TLabel;
    Label31: TLabel;
    cxCurrencyEdit19: TcxCurrencyEdit;
    Label30: TLabel;
    cxCurrencyEdit18: TcxCurrencyEdit;
    Label29: TLabel;
    cxCurrencyEdit17: TcxCurrencyEdit;
    cxCurrencyEdit16: TcxCurrencyEdit;
    Label28: TLabel;
    Label27: TLabel;
    cxCurrencyEdit15: TcxCurrencyEdit;
    Label26: TLabel;
    cxCurrencyEdit14: TcxCurrencyEdit;
    Label25: TLabel;
    cxTextEdit4: TcxTextEdit;
    Label24: TLabel;
    cxCurrencyEdit13: TcxCurrencyEdit;
    Label23: TLabel;
    cxCurrencyEdit12: TcxCurrencyEdit;
    cxButtonEdit11: TcxButtonEdit;
    Label22: TLabel;
    Label21: TLabel;
    cxButtonEdit10: TcxButtonEdit;
    Label20: TLabel;
    cxCurrencyEdit11: TcxCurrencyEdit;
    cxButtonEdit15: TcxButtonEdit;
    cxButtonEdit12: TcxButtonEdit;
    Label34: TLabel;
    Label35: TLabel;
    cxTextEdit5: TcxTextEdit;
    Label36: TLabel;
    cxCurrencyEdit22: TcxCurrencyEdit;
    Label37: TLabel;
    cxCurrencyEdit23: TcxCurrencyEdit;
    Label38: TLabel;
    cxCurrencyEdit24: TcxCurrencyEdit;
    Label39: TLabel;
    cxCurrencyEdit25: TcxCurrencyEdit;
    Label40: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    cxCurrencyEdit10: TcxCurrencyEdit;
    cxCurrencyEdit9: TcxCurrencyEdit;
    cxCurrencyEdit8: TcxCurrencyEdit;
    cxCurrencyEdit7: TcxCurrencyEdit;
    Panel4: TPanel;
    cxPageControl1: TcxPageControl;
    cxTabSheet1: TcxTabSheet;
    cxTabSheet2: TcxTabSheet;
    cxTabSheet3: TcxTabSheet;
    cxGrid6: TcxGrid;
    cxGridDBBandedTableView50: TcxGridDBBandedTableView;
    cxGridLevel5: TcxGridLevel;
    cxGrid1: TcxGrid;
    cxGridDBBandedTableView60: TcxGridDBBandedTableView;
    cxGridLevel1: TcxGridLevel;
    cxGrid2: TcxGrid;
    cxGridDBBandedTableView70: TcxGridDBBandedTableView;
    cxGridLevel2: TcxGridLevel;
    Client_carSPC: TClientDataSet;
    Client_carCSL: TClientDataSet;
    Client_carGuide: TClientDataSet;
    Client_carSPCid: TAutoIncField;
    Client_carSPCcar_id: TIntegerField;
    Client_carSPCspcTranspClauseID: TIntegerField;
    Client_carSPCspcTranspClauseName: TStringField;
    Client_carSPCspcCustomText: TStringField;
    Client_carCSLid: TAutoIncField;
    Client_carCSLcar_id: TIntegerField;
    Client_carCSLsealTypeID: TIntegerField;
    Client_carCSLsealTypeName: TStringField;
    Client_carCSLsealMarks: TStringField;
    Client_carCSLsealQuantity: TStringField;
    Client_carCSLsealYear: TStringField;
    Client_carCSLsealOwnerTypeID: TIntegerField;
    Client_carCSLsealOwnerTypeName: TStringField;
    Client_carCSLsealRailwayID: TIntegerField;
    Client_carCSLsealRailwayName: TStringField;
    Client_carGuideid: TAutoIncField;
    Client_carGuidecar_id: TIntegerField;
    Client_carGuideguideFIO: TStringField;
    Client_carGuideguidePassportSer: TStringField;
    Client_carGuideguidePassportNum: TStringField;
    Client_carGuideguideWarrantNum: TStringField;
    DS_carSPC: TDataSource;
    DS_carCSL: TDataSource;
    DS_carGuide: TDataSource;
    cxGridDBBandedTableView50id: TcxGridDBBandedColumn;
    cxGridDBBandedTableView50car_id: TcxGridDBBandedColumn;
    cxGridDBBandedTableView50spcTranspClauseID: TcxGridDBBandedColumn;
    cxGridDBBandedTableView50spcTranspClauseName: TcxGridDBBandedColumn;
    cxGridDBBandedTableView50spcCustomText: TcxGridDBBandedColumn;
    cxGridDBBandedTableView60id: TcxGridDBBandedColumn;
    cxGridDBBandedTableView60car_id: TcxGridDBBandedColumn;
    cxGridDBBandedTableView60sealTypeID: TcxGridDBBandedColumn;
    cxGridDBBandedTableView60sealTypeName: TcxGridDBBandedColumn;
    cxGridDBBandedTableView60sealMarks: TcxGridDBBandedColumn;
    cxGridDBBandedTableView60sealQuantity: TcxGridDBBandedColumn;
    cxGridDBBandedTableView60sealYear: TcxGridDBBandedColumn;
    cxGridDBBandedTableView60sealOwnerTypeID: TcxGridDBBandedColumn;
    cxGridDBBandedTableView60sealOwnerTypeName: TcxGridDBBandedColumn;
    cxGridDBBandedTableView60sealRailwayID: TcxGridDBBandedColumn;
    cxGridDBBandedTableView60sealRailwayName: TcxGridDBBandedColumn;
    cxGridDBBandedTableView70id: TcxGridDBBandedColumn;
    cxGridDBBandedTableView70car_id: TcxGridDBBandedColumn;
    cxGridDBBandedTableView70guideFIO: TcxGridDBBandedColumn;
    cxGridDBBandedTableView70guidePassportSer: TcxGridDBBandedColumn;
    cxGridDBBandedTableView70guidePassportNum: TcxGridDBBandedColumn;
    cxGridDBBandedTableView70guideWarrantNum: TcxGridDBBandedColumn;
    cxTextEdit6: TcxTextEdit;
    cxPropertiesStore1: TcxPropertiesStore;
    dxBarManager1: TdxBarManager;
    dxBarPopupMenu1: TdxBarPopupMenu;
    dxBarButton1: TdxBarButton;
    dxBarButton2: TdxBarButton;
    dxBarButton3: TdxBarButton;
    dxBarButton4: TdxBarButton;
    dxBarPopupMenu2: TdxBarPopupMenu;
    dxBarPopupMenu3: TdxBarPopupMenu;
    cxButtonEdit13: TcxButtonEdit;
    Query_NSI: TADOQuery;
    DS_NSI: TDataSource;
    cxCheckBox5: TcxCheckBox;
    Panel5: TPanel;
    cxCheckBox1: TcxCheckBox;
    dxBarButton5: TdxBarButton;
    dxBarButton6: TdxBarButton;
    dxBarButton7: TdxBarButton;
    cxButtonEdit14: TcxButtonEdit;
    Label41: TLabel;
    cxCheckBox2: TcxCheckBox;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cxButtonEdit6PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure cxButtonEdit1PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure cxButtonEdit12PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure cxButtonEdit3PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure cxButtonEdit4PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure cxButtonEdit5PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure cxButtonEdit10PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure cxButtonEdit11PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure BitBtn2Click(Sender: TObject);
    procedure cxButtonEdit13PropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure dxBarButton1Click(Sender: TObject);
    procedure dxBarButton2Click(Sender: TObject);
    procedure dxBarButton3Click(Sender: TObject);
    procedure cxCheckBox5PropertiesEditValueChanged(Sender: TObject);
    procedure dxBarButton5Click(Sender: TObject);
    procedure dxBarButton6Click(Sender: TObject);
    procedure dxBarButton7Click(Sender: TObject);
    procedure cxCheckBox1PropertiesEditValueChanged(Sender: TObject);
    procedure cxButtonEdit14PropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure cxCheckBox2PropertiesEditValueChanged(Sender: TObject);
  private
    Fid             : integer;
    Ftype_action    : integer; // 0- Insert, 1- Update, 33- Group
    Fetran_ip       : string;
    Fetran_port     : string;
    Fusers_group_cod: string;

    FClientDS       : TClientDataSet;
    FClientDS_spc   : TClientDataSet;
    FClient_carCSL  : TClientDataSet;

    FcarClaimId     : integer;
    FcarTypeID      : integer;
    FcarOwnerTypeID : integer;
    FcarOwnerID     : integer;
    FcarTenantID    : integer;
    FGridUpdate     : TcxGridDBBandedTableView;
    Fconnect        : TADOConnection;

    procedure SetUpdate(id: integer);
    procedure SetUpdateGroup(cxGridView: TcxGridDBBandedTableView);
  public
    constructor Create(AOwner: TApplication; connect: TADOConnection; users_group_cod: string); reintroduce;
  published
    property _SetEtranIP      : string write Fetran_ip;
    property _SetEtranPort    : string write Fetran_port;
    property _SetClientDS     : TClientDataSet write FClientDS;
    property _SetClientDS_spc : TClientDataSet write FClientDS_spc;
    property _SetClientDS_csl : TClientDataSet write FClient_carCSL;
    property _SetUpdate       : integer write SetUpdate;
    property _SetUpdateGroup  : TcxGridDBBandedTableView write SetUpdateGroup;
  end;

var
  fmECPInvCar: TfmECPInvCar;

implementation

uses ECPMain, ECPFilter, ECPPassport, ECPInvAdd, ECPQuery;

{$R *.dfm}

constructor TfmECPInvCar.Create(AOwner: TApplication; connect: TADOConnection; users_group_cod: string);
var Q: TADOQuery;
begin
  Screen.Cursor := crHourglass;
  inherited Create(AOwner);

  Fconnect := connect;

  Query_NSI.Connection := Fconnect;

  Ftype_action := 0;
  Fid       := -9;
  FClientDS := nil;
  Fusers_group_cod := users_group_cod;


  FcarClaimId     := -9;
  FcarTypeID      := -9;
  FcarOwnerTypeID := -9;
  FcarOwnerID     := -9;
  FcarTenantID    := -9;


  Client_carSPC.CreateDataSet;
  Client_carSPC.LogChanges := False;

  Client_carCSL.CreateDataSet;
  Client_carCSL.LogChanges := False;

  Screen.Cursor := crDefault;
end;


procedure TfmECPInvCar.SetUpdate(id: integer);
var Q: TADOQuery;
begin
  Fid := id;
  Ftype_action := 1;
  FClientDS.Locate('id', Fid, []);

  cxTextEdit1.EditValue      := FClientDS.FieldByName('carClaimId').Value;
  cxCurrencyEdit1.EditValue  := FClientDS.FieldByName('carClaimOtprNom').VAlue;
  cxCurrencyEdit2.EditValue  := FClientDS.FieldByName('carClaimPodNum').Value;
  FcarTypeID                 := iif(FClientDS.FieldByName('carTypeID').IsNull, -9, FClientDS.FieldByName('carTypeID').Value);
  cxButtonEdit13.EditValue   := FClientDS.FieldByName('carNumber').Value;
  cxButtonEdit2.EditValue    := FClientDS.FieldByName('carOwnerCountryCode').Value;
  FcarOwnerTypeID            := iif(FClientDS.FieldByName('carOwnerTypeID').IsNull, -9, FClientDS.FieldByName('carOwnerTypeID').Value);
  FcarOwnerID                := iif(FClientDS.FieldByName('carOwnerID').IsNull, -9, FClientDS.FieldByName('carOwnerID').Value);
  cxTextEdit3.EditValue      := FClientDS.FieldByName('carOwnerOKPO').Value;
  cxButtonEdit3.EditValue    := FClientDS.FieldByName('carOwnerName').Value;
  FcarTenantID               := iif(FClientDS.FieldByName('carTenantID').IsNull, -9, FClientDS.FieldByName('carTenantID').Value);
  cxCurrencyEdit3.EditValue  := FClientDS.FieldByName('carPlacesCount').Value;
  cxCurrencyEdit4.EditValue  := FClientDS.FieldByName('carTonnage').Value;
  cxCurrencyEdit5.EditValue  := FClientDS.FieldByName('carAxles').Value;
  cxCurrencyEdit6.EditValue  := FClientDS.FieldByName('carVolume').Value;
  cxButtonEdit7.EditValue    := FClientDS.FieldByName('carFreightGNGCode').Value;
  cxCurrencyEdit7.EditValue  := FClientDS.FieldByName('carWeightDep').Value;
  cxCurrencyEdit8.EditValue  := FClientDS.FieldByName('carWeightDepReal').Value;
  cxCurrencyEdit9.EditValue  := FClientDS.FieldByName('carWeightGross').Value;
  cxCurrencyEdit10.EditValue := FClientDS.FieldByName('carWeightNet').Value;
  cxCurrencyEdit11.EditValue := FClientDS.FieldByName('carWeightAddDev').Value;
  cxButtonEdit10.EditValue   := FClientDS.FieldByName('carAddDevWithGoods').Value;
  cxButtonEdit15.EditValue   := FClientDS.FieldByName('carPriorFreightCode').Value;
  cxCurrencyEdit12.EditValue := FClientDS.FieldByName('carOutsizeCode').Value;
  cxCurrencyEdit13.EditValue := FClientDS.FieldByName('carFrameWeight').Value;
  cxTextEdit4.EditValue      := FClientDS.FieldByName('carFrameWagNum').Value;
  cxCurrencyEdit14.EditValue := FClientDS.FieldByName('carTopHeight').Value;
  cxCurrencyEdit15.EditValue := FClientDS.FieldByName('carMainShtabQuantity').Value;
  cxCurrencyEdit16.EditValue := FClientDS.FieldByName('carMainShtabHeight').Value;
  cxCurrencyEdit17.EditValue := FClientDS.FieldByName('carHeadShtabQuantity').Value;
  cxCurrencyEdit18.EditValue := FClientDS.FieldByName('carLiquidTemperature').Value;
  cxCurrencyEdit19.EditValue := FClientDS.FieldByName('carLiquidHeight').Value;
  cxCurrencyEdit20.EditValue := FClientDS.FieldByName('carLiquidDensity').Value;
  cxCurrencyEdit21.EditValue := FClientDS.FieldByName('carLiquidVolume').Value;
  cxTextEdit6.EditValue      := FClientDS.FieldByName('carTankType').Value;
  cxTextEdit5.EditValue      := FClientDS.FieldByName('carRefNum').Value;
  cxCurrencyEdit22.EditValue := FClientDS.FieldByName('carRefCount').Value;
  cxCurrencyEdit23.EditValue := FClientDS.FieldByName('carRolls').Value;
  cxCurrencyEdit24.EditValue := FClientDS.FieldByName('carConnectCode').Value;
  cxCurrencyEdit25.EditValue := FClientDS.FieldByName('carIsCover').Value;
  if FClientDS.FieldByName('contract_id').Value <> null then begin
    cxButtonEdit14.Tag         := FClientDS.FieldByName('contract_id').Value;
    cxButtonEdit14.EditValue   := FClientDS.FieldByName('firm_customer_name').Value;
  end else begin
    cxButtonEdit14.Tag         := -9;
    cxButtonEdit14.EditValue   := null;
  end;


  Q := TADOQuery.Create(nil);
  Q.Connection := Fconnect;

  Q.SQL.Clear;
  Q.SQL.Add('SELECT top 1 inf_obj_name FROM dbo.ETRAN_NSI_INF_OBJ WHERE type_inf_id = 3 AND inf_obj_cod = ''' + cxButtonEdit7.Text + '''');
  Q.Open;
  cxButtonEdit5.Text := Q.FieldByName('inf_obj_name').AsString;

  Q.SQL.Clear;
  Q.SQL.Add('SELECT top 1 inf_obj_name FROM dbo.ETRAN_NSI_INF_OBJ WHERE type_inf_id = 8 AND etran_nsi_id = ' + IntToStr(FcarTypeID));
  Q.Open;
  cxButtonEdit6.Text := Q.FieldByName('inf_obj_name').AsString;

  Q.SQL.Clear;
  Q.SQL.Add('SELECT top 1 inf_obj_name FROM dbo.ETRAN_NSI_INF_OBJ WHERE type_inf_id = 13 AND inf_obj_cod = ''' + cxButtonEdit2.Text + '''');
  Q.Open;
  cxButtonEdit1.Text := Q.FieldByName('inf_obj_name').AsString;

  Q.SQL.Clear;
  Q.SQL.Add('SELECT top 1 inf_obj_name FROM dbo.ETRAN_NSI_INF_OBJ WHERE type_inf_id = 27 AND inf_obj_cod = ''7'' AND etran_nsi_id = ' + IntToStr(FcarOwnerTypeID));
  Q.Open;
  cxButtonEdit12.Text := Q.FieldByName('inf_obj_name').AsString;

  Q.SQL.Clear;
  Q.SQL.Add('SELECT top 1 inf_obj_name FROM dbo.ETRAN_NSI_INF_OBJ WHERE type_inf_id = 1 AND inf_obj_cod = ''' + cxButtonEdit15.Text + '''');
  Q.Open;
  cxButtonEdit11.Text := Q.FieldByName('inf_obj_name').AsString;

  Q.Free;


  FClientDS_spc.Filter   := 'car_id=' + IntToStr(Fid);
  FClientDS_spc.Filtered := True;
  FClientDS_spc.First;
  while not FClientDS_spc.Eof do begin
    Client_carSPC.Append;
    Client_carSPC.FieldByName('spcTranspClauseID'  ).Value := FClientDS_spc.FieldByName('spcTranspClauseID').Value;
    Client_carSPC.FieldByName('spcTranspClauseName').Value := FClientDS_spc.FieldByName('spcTranspClauseName').Value;
    Client_carSPC.FieldByName('spcCustomText'      ).Value := FClientDS_spc.FieldByName('spcCustomText').Value;
    Client_carSPC.Post;

    FClientDS_spc.Next;
  end;

  FClientDS_spc.Filter   := '';
  FClientDS_spc.Filtered := False;


  FClient_carCSL.Filter   := 'car_id=' + IntToStr(FClientDS.FieldByName('id').AsInteger);
  FClient_carCSL.Filtered := True;
  FClient_carCSL.First;
  while not FClient_carCSL.Eof do begin
    Client_carCSL.Append;
    Client_carCSL.FieldByName('car_id'            ).Value := FClient_carCSL.FieldByName('car_id').Value;
    Client_carCSL.FieldByName('sealTypeID'        ).Value := FClient_carCSL.FieldByName('sealTypeID').Value;
    Client_carCSL.FieldByName('sealTypeName'      ).Value := FClient_carCSL.FieldByName('sealTypeName').Value;
    Client_carCSL.FieldByName('sealMarks'         ).Value := FClient_carCSL.FieldByName('sealMarks').Value;
    Client_carCSL.FieldByName('sealQuantity'      ).Value := FClient_carCSL.FieldByName('sealQuantity').Value;
    Client_carCSL.FieldByName('sealYear'          ).Value := FClient_carCSL.FieldByName('sealYear').Value;
    Client_carCSL.FieldByName('sealOwnerTypeID'   ).Value := FClient_carCSL.FieldByName('sealOwnerTypeID').Value;
    Client_carCSL.FieldByName('sealOwnerTypeName' ).Value := FClient_carCSL.FieldByName('sealOwnerTypeName').Value;
    Client_carCSL.FieldByName('sealRailwayID'     ).Value := FClient_carCSL.FieldByName('sealRailwayID').Value;
    Client_carCSL.FieldByName('sealRailwayName'   ).Value := FClient_carCSL.FieldByName('sealRailwayName').Value;
    Client_carCSL.Post;

    FClient_carCSL.Next;
  end;

  FClient_carCSL.Filter   := '';
  FClient_carCSL.Filtered := False;
end;


procedure TfmECPInvCar.SetUpdateGroup(cxGridView: TcxGridDBBandedTableView);
var i,k : integer;
    str : TStringList;
begin

  Ftype_action := 33;
  FGridUpdate := cxGridView;

  cxTextEdit1.Enabled := False;
  cxCurrencyEdit1.Enabled := False;
  cxCurrencyEdit2.Enabled := False;
  cxButtonEdit6.Enabled := False;
  cxButtonEdit1.Enabled := False;
  cxButtonEdit2.Enabled := False;
  cxButtonEdit3.Enabled := False;
  cxTextEdit3.Enabled := False;
  cxButtonEdit4.Enabled := False;
  cxCurrencyEdit3.Enabled := False;
  cxCurrencyEdit4.Enabled := False;
  cxCurrencyEdit5.Enabled := False;
  cxCurrencyEdit6.Enabled := False;
  cxButtonEdit5.Enabled := False;
  cxButtonEdit7.Enabled := False;
  cxButtonEdit8.Enabled := False;
  cxButtonEdit9.Enabled := False;
  cxButtonEdit12.Enabled := False;
  cxCurrencyEdit10.Enabled := False;
  cxCurrencyEdit9.Enabled := False;
  cxCurrencyEdit8.Enabled := False;
  cxCurrencyEdit7.Enabled := False;
  cxButtonEdit13.Enabled := False;
  cxCurrencyEdit21.Enabled := False;
  cxCurrencyEdit20.Enabled := False;
  cxCurrencyEdit19.Enabled := False;
  cxCurrencyEdit18.Enabled := False;
  cxCurrencyEdit17.Enabled := False;
  cxCurrencyEdit16.Enabled := False;
  cxCurrencyEdit15.Enabled := False;
  cxCurrencyEdit14.Enabled := False;
  cxTextEdit4.Enabled := False;
  cxCurrencyEdit13.Enabled := False;
  cxCurrencyEdit12.Enabled := False;
  cxButtonEdit11.Enabled := False;
  cxButtonEdit10.Enabled := False;
  cxCurrencyEdit11.Enabled := False;
  cxButtonEdit15.Enabled := False;
  cxTextEdit5.Enabled := False;
  cxCurrencyEdit22.Enabled := False;
  cxCurrencyEdit23.Enabled := False;
  cxCurrencyEdit24.Enabled := False;
  cxCurrencyEdit25.Enabled := False;
  cxTextEdit6.Enabled := False;

  cxGridDBBandedTableView50.PopupMenu := nil;
  cxGridDBBandedTableView60.PopupMenu := nil;
  cxGridDBBandedTableView70.PopupMenu := nil;

  Panel5.Visible := True;

  cxCheckBox5.Visible := True;
  cxCheckBox2.Visible := True;
end;



procedure TfmECPInvCar.cxButtonEdit10PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
var Q: TADOQuery;
begin
  case AButtonIndex of
    0:  begin
          Q := TADOQuery.Create(nil);
          Q.Connection := Fconnect;
          Q.SQL.Add('SELECT * FROM dbo.ETRAN_NSI_INF_OBJ WHERE type_inf_id = 27 AND inf_obj_cod = ''168''');
          Q.Open;
          fmECPFilter := TfmECPFilter.Create(nil, Q);
          fmECPFilter._SetFilter := 'Тип собственности';
          if fmECPFilter.ShowModal = mrOk then begin
            cxButtonEdit10.Text:= IntToStr(fmECPFilter._GetId);
          end;
          Q.Free;
        end;
    1:  begin
          cxButtonEdit10.Text := '';
        end;
  end;
end;

procedure TfmECPInvCar.cxButtonEdit11PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
var Q: TADOQuery;
    str_find: string;
begin
  case AButtonIndex of
    0:  begin
          Q := TADOQuery.Create(nil);

          Q.Connection := Fconnect;
          Q.SQL.Add('SELECT etran_nsi_id, inf_obj_name, inf_obj_cod FROM dbo.ETRAN_NSI_INF_OBJ WHERE type_inf_id = 1');

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
          fmECPFilter._SetFilterCod := 'Груз ЕТСНГ';
          if fmECPFilter.ShowModal = mrOk then begin
            cxButtonEdit11.Text:= fmECPFilter._GetName;
            cxButtonEdit15.Text:= fmECPFilter._GetCod;
          end;
          Q.Free;
        end;
    1:  begin
          cxButtonEdit11.Text := '';
          cxButtonEdit15.Text := '';
        end;
  end;

end;

procedure TfmECPInvCar.cxButtonEdit12PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
var Q: TADOQuery;
begin
  case AButtonIndex of
    0:  begin
          Q := TADOQuery.Create(nil);
          Q.Connection := Fconnect;
          Q.SQL.Add('SELECT * FROM dbo.ETRAN_NSI_INF_OBJ WHERE type_inf_id = 27 AND inf_obj_cod = ''7''');
          Q.Open;
          fmECPFilter := TfmECPFilter.Create(nil, Q);
          fmECPFilter._SetFilter := 'Тип собственности';
          if fmECPFilter.ShowModal = mrOk then begin
            FcarOwnerTypeID     := fmECPFilter._GetID;
            cxButtonEdit12.Text:= fmECPFilter._GetName;
          end;
          Q.Free;
        end;
    1:  begin
          FcarOwnerTypeID      := -9;
          cxButtonEdit12.Text := '';
        end;
  end;
end;

procedure TfmECPInvCar.cxButtonEdit13PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
var            v : Variant;
    Client_Vagon : TClientDataSet;
begin
  v := CreateWndGetNSIVagon(Fetran_ip, Fetran_port, Fusers_group_cod, cxButtonEdit13.Text);

  if v[0] = True then begin
    Client_Vagon := TClientDataSet.Create(nil);
    Client_Vagon.XMLData := v[1];

    FcarTypeID                := iif(Client_Vagon.FieldByName('carTypeID').IsNull, -9, Client_Vagon.FieldByName('carTypeID').Value);
    cxButtonEdit6.EditValue   := Client_Vagon.FieldByName('carTypeName').Value;
    cxButtonEdit1.EditValue   := Client_Vagon.FieldByName('carOwnerCountryName').Value;
    cxButtonEdit2.EditValue   := Client_Vagon.FieldByName('carOwnerCountryCode').Value;
    FcarOwnerTypeID           := iif(Client_Vagon.FieldByName('carOwnerTypeID').IsNull, -9, Client_Vagon.FieldByName('carOwnerTypeID').Value);
    cxButtonEdit12.EditValue  := Client_Vagon.FieldByName('carOwnerTypeName').Value;
    FcarOwnerID               := iif(Client_Vagon.FieldByName('carOwnerId').IsNull, -9, Client_Vagon.FieldByName('carOwnerId').Value);
    cxButtonEdit3.EditValue   := Client_Vagon.FieldByName('carOwnerName').Value;
    cxTextEdit3.EditValue     := Client_Vagon.FieldByName('carOwnerOKPO').Value;
    FcarTenantID              := iif(Client_Vagon.FieldByName('carArendatorID').IsNull, -9, Client_Vagon.FieldByName('carArendatorID').Value);
    cxButtonEdit4.EditValue   := Client_Vagon.FieldByName('carArendatorName').Value;
    cxCurrencyEdit4.EditValue := iif(Client_Vagon.FieldByName('carTonnage').IsNull, null, ReplaceStr(Client_Vagon.FieldByName('carTonnage').AsString, '.', FormatSettings.DecimalSeparator));
    cxCurrencyEdit5.EditValue := iif(Client_Vagon.FieldByName('carAxles').IsNull, null,  ReplaceStr(Client_Vagon.FieldByName('carAxles').AsString, '.', FormatSettings.DecimalSeparator));
    cxCurrencyEdit6.EditValue := iif(Client_Vagon.FieldByName('carVolume').IsNull, null,  ReplaceStr(Client_Vagon.FieldByName('carVolume').AsString, '.', FormatSettings.DecimalSeparator));
    cxCurrencyEdit7.EditValue := iif(Client_Vagon.FieldByName('carWeightDep').IsNull, null,  ReplaceStr(Client_Vagon.FieldByName('carWeightDep').AsString, '.', FormatSettings.DecimalSeparator));
    cxTextEdit6.EditValue     := Client_Vagon.FieldByName('carTankType').Value;

    Client_Vagon.Free;
  end;
end;

procedure TfmECPInvCar.cxButtonEdit14PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
var Q : TADOQuery;
begin
  case AButtonIndex of
    0 : begin
          Q := TADOQuery.Create(nil);
          Q.Connection := Fconnect;
          Q.SQL.Add('SELECT * FROM lis1..view_contract_rights WHERE (type_contract = 0) AND (date_end >= GETDATE()) ORDER BY firm_customer_name');
          Q.Open;
          fmFilter := TfmFilter.Create(0, Q, 'contract_id', 'contract_cod', 'firm_customer_name');
          fmFilter._SetContractClient := True;
          if fmFilter.ShowModal = mrOk then begin
            cxButtonEdit14.Tag := fmFilter.GetId;
            cxButtonEdit14.EditValue := fmFilter.GetName;
          end;
          Q.Free;
        end;
    1 : begin
          cxButtonEdit14.Tag := -9;
          cxButtonEdit14.EditValue := null;
        end;
  end;
end;

procedure TfmECPInvCar.cxButtonEdit1PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
var Q: TADOQuery;
    str_find: string;
begin
  case AButtonIndex of
    0:  begin
          Q := TADOQuery.Create(nil);
          Q.Connection := Fconnect;
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
            cxButtonEdit1.Text:= fmECPFilter._GetName;
            cxButtonEdit2.Text:= fmECPFilter._GetCod;
          end;
          Q.Free;
        end;
    1:  begin
          cxButtonEdit1.Text := '';
          cxButtonEdit2.Text := '';
        end;
  end;
end;

procedure TfmECPInvCar.cxButtonEdit3PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
    case AButtonIndex of
    0:  begin
          fmECPPassport := TfmECPPassport.Create(nil);
          fmECPPassport._SetEtranIP   := Fetran_ip;
          fmECPPassport._SetEtranPort := Fetran_port;
          if fmECPPassport.ShowModal = mrOk then begin
            FcarOwnerID        := fmECPPassport._GetOrgID;
            cxButtonEdit3.Text := fmECPPassport._GetName;
            cxTextEdit3.Text   := fmECPPassport._GetOrgOKPO;
          end;
        end;
    1:  begin
            FcarOwnerID        := -9;
            cxButtonEdit3.Text := '';
            cxTextEdit3.Text   := '';
        end;
    end;
end;

procedure TfmECPInvCar.cxButtonEdit4PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
    case AButtonIndex of
    0:  begin
          fmECPPassport := TfmECPPassport.Create(nil);
          fmECPPassport._SetEtranIP   := Fetran_ip;
          fmECPPassport._SetEtranPort := Fetran_port;
          if fmECPPassport.ShowModal = mrOk then begin
            FcarTenantID       := fmECPPassport._GetOrgID;
            cxButtonEdit4.Text := fmECPPassport._GetName;
          end;
        end;
    1:  begin
            FcarTenantID       := -9;
            cxButtonEdit4.Text := '';
        end;
    end;
end;

procedure TfmECPInvCar.cxButtonEdit5PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
var Q: TADOQuery;
    str_find: string;
begin
  case AButtonIndex of
    0:  begin
          Q := TADOQuery.Create(nil);
          Q.Connection := Fconnect;
          Q.SQL.Add('SELECT etran_nsi_id, inf_obj_name, inf_obj_cod FROM dbo.ETRAN_NSI_INF_OBJ WHERE type_inf_id = 3');

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
          fmECPFilter._SetFilterCod := 'Груз ГНГ';
          if fmECPFilter.ShowModal = mrOk then begin
            cxButtonEdit5.Text:= fmECPFilter._GetName;
            cxButtonEdit7.Text:= fmECPFilter._GetCod;
          end;
        end;
    1:  begin
          cxButtonEdit5.Text := '';
          cxButtonEdit7.Text := '';
        end;
  end;
end;

procedure TfmECPInvCar.cxButtonEdit6PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
var Q: TADOQuery;
begin
  case AButtonIndex of
    0:  begin
          Q := TADOQuery.Create(nil);
          Q.Connection := Fconnect;
          Q.SQL.Add('SELECT * FROM dbo.ETRAN_NSI_INF_OBJ WHERE type_inf_id = 8');
          Q.Open;
          fmECPFilter := TfmECPFilter.Create(nil, Q);
          fmECPFilter._SetFilter := 'Род вагона';
          if fmECPFilter.ShowModal = mrOk then begin
            FcarTypeID := fmECPFilter._GetID;
            cxButtonEdit6.Text := fmECPFilter._GetName;
          end;
          Q.Free;
        end;
    1:  begin
          FcarTypeID := -9;
          cxButtonEdit6.Text := '';
        end;
  end;
end;

procedure TfmECPInvCar.cxCheckBox1PropertiesEditValueChanged(Sender: TObject);
begin
  if cxCheckBox1.Checked = True then begin
    cxGridDBBandedTableView60.PopupMenu := dxBarPopupMenu2;
  end else begin
    cxGridDBBandedTableView60.PopupMenu := nil;
  end;
end;

procedure TfmECPInvCar.cxCheckBox2PropertiesEditValueChanged(Sender: TObject);
begin
  if cxCheckBox2.Checked then begin
    cxButtonEdit5.Enabled := True;
    cxButtonEdit7.Enabled := True;
  end else begin
    cxButtonEdit5.Enabled := False;
    cxButtonEdit7.Enabled := False;
  end;
end;

procedure TfmECPInvCar.cxCheckBox5PropertiesEditValueChanged(Sender: TObject);
begin
  if cxCheckBox5.Checked then begin
    cxButtonEdit11.Enabled := True;
    cxButtonEdit15.Enabled := True;
  end else begin
    cxButtonEdit11.Enabled := False;
    cxButtonEdit15.Enabled := False;
  end;
end;

procedure TfmECPInvCar.dxBarButton1Click(Sender: TObject);
begin
  fmECPInvAdd := TfmECPInvAdd.Create(nil, nil);
  fmECPInvAdd._SetCarSPC := True;
  fmECPInvAdd._SetClientDS := Client_carSPC;
  fmECPInvAdd.ShowModal;
end;

procedure TfmECPInvCar.dxBarButton2Click(Sender: TObject);
begin
  fmECPInvAdd := TfmECPInvAdd.Create(nil, nil);
  fmECPInvAdd._SetCarSPC := True;
  fmECPInvAdd._SetClientDS := Client_carSPC;
  fmECPInvAdd._SetUpdate := cxGridDBBandedTableView50id.DataBinding.Field.AsInteger;
  fmECPInvAdd.ShowModal;
end;

procedure TfmECPInvCar.dxBarButton3Click(Sender: TObject);
begin
  Client_carSPC.Delete;
end;

procedure TfmECPInvCar.dxBarButton5Click(Sender: TObject);
begin
  fmECPInvAdd := TfmECPInvAdd.Create(nil, nil);
  fmECPInvAdd._SetCarCSL := True;
  fmECPInvAdd._SetClientDS := Client_carCSL;
  fmECPInvAdd.ShowModal;
end;

procedure TfmECPInvCar.dxBarButton6Click(Sender: TObject);
begin
  fmECPInvAdd := TfmECPInvAdd.Create(nil, nil);
  fmECPInvAdd._SetCarCSL := True;
  fmECPInvAdd._SetClientDS := Client_carCSL;
  fmECPInvAdd._SetUpdate := cxGridDBBandedTableView60id.DataBinding.Field.AsInteger;
  fmECPInvAdd.ShowModal;
end;

procedure TfmECPInvCar.dxBarButton7Click(Sender: TObject);
begin
  Client_carCSL.Delete;
end;

procedure TfmECPInvCar.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TfmECPInvCar.BitBtn2Click(Sender: TObject);
var row : integer;
begin
  if Ftype_action = 33 then begin
    for row := 0 to FGridUpdate.Controller.SelectedRowCount-1 do begin
      if FClientDS.Locate('id', FGridUpdate.Controller.SelectedRows[row].Values[FGridUpdate.GetColumnByFieldName('id').Index], []) then begin

        FClientDS.Edit;
        if cxCheckBox5.Checked then begin
          FClientDS.FieldByName('carPriorFreightCode').Value := cxButtonEdit15.EditValue;
          FClientDS.FieldByName('carPriorFreightName').Value := cxButtonEdit11.EditValue;
        end;

        if cxCheckBox2.Checked then begin
          FClientDS.FieldByName('carFreightGNGCode').Value   := cxButtonEdit7.EditValue;
        end;

        FClientDS.Post;

        FClient_carCSL.Filter   := 'car_id=' + IntToStr(FClientDS.FieldByName('id').AsInteger);
        FClient_carCSL.Filtered := True;
        while not FClient_carCSL.Eof do FClient_carCSL.Delete;
        FClient_carCSL.Filter   := '';
        FClient_carCSL.Filtered := False;

        Client_carCSL.First;
        while not Client_carCSL.Eof do begin
          FClient_carCSL.Append;
          FClient_carCSL.FieldByName('car_id'            ).Value := FClientDS.FieldByName('id').AsInteger;
          FClient_carCSL.FieldByName('sealTypeID'        ).Value := Client_carCSL.FieldByName('sealTypeID').Value;
          FClient_carCSL.FieldByName('sealTypeName'      ).Value := Client_carCSL.FieldByName('sealTypeName').Value;
          FClient_carCSL.FieldByName('sealMarks'         ).Value := Client_carCSL.FieldByName('sealMarks').Value;
          FClient_carCSL.FieldByName('sealQuantity'      ).Value := Client_carCSL.FieldByName('sealQuantity').Value;
          FClient_carCSL.FieldByName('sealYear'          ).Value := Client_carCSL.FieldByName('sealYear').Value;
          FClient_carCSL.FieldByName('sealOwnerTypeID'   ).Value := Client_carCSL.FieldByName('sealOwnerTypeID').Value;
          FClient_carCSL.FieldByName('sealOwnerTypeName' ).Value := Client_carCSL.FieldByName('sealOwnerTypeName').Value;
          FClient_carCSL.FieldByName('sealRailwayID'     ).Value := Client_carCSL.FieldByName('sealRailwayID').Value;
          FClient_carCSL.FieldByName('sealRailwayName'   ).Value := Client_carCSL.FieldByName('sealRailwayName').Value;
          FClient_carCSL.Post;

          Client_carCSL.Next;
        end;

      end;
    end;
  end else begin
    if Ftype_action = 0 then begin
      FClientDS.Append;
    end else begin
      FClientDS.Locate('id', Fid, []);
      FClientDS.Edit;
    end;

    FClientDS.FieldByName('carClaimId').Value           := iif(cxTextEdit1.Text = '', null, cxTextEdit1.Text);
    FClientDS.FieldByName('carClaimOtprNom').Value      := cxCurrencyEdit1.EditValue;
    FClientDS.FieldByName('carClaimPodNum').Value       := cxCurrencyEdit2.EditValue;
    FClientDS.FieldByName('carTypeID').Value            := iif(FcarTypeID = -9, null, FcarTypeID);
    FClientDS.FieldByName('carNumber').Value            := cxButtonEdit13.EditValue;
    FClientDS.FieldByName('carOwnerCountryCode').Value  := cxButtonEdit2.Text;
    FClientDS.FieldByName('carOwnerTypeID').Value       := iif(FcarOwnerTypeID = -9, null, FcarOwnerTypeID);
    FClientDS.FieldByName('carOwnerID').Value           := iif(FcarOwnerID = -9, null, FcarOwnerID);
    FClientDS.FieldByName('carOwnerOKPO').Value         := iif(cxTextEdit3.Text = '', null, cxTextEdit3.Text);
    FClientDS.FieldByName('carOwnerName').Value         := cxButtonEdit3.EditValue;
    FClientDS.FieldByName('carTenantID').Value          := iif(FcarTenantID = -9, null, FcarTenantID);
    FClientDS.FieldByName('carTenantName').Value        := cxButtonEdit4.EditValue;
    FClientDS.FieldByName('carPlacesCount').Value       := cxCurrencyEdit3.EditValue;
    FClientDS.FieldByName('carTonnage').Value           := cxCurrencyEdit4.EditValue;
    FClientDS.FieldByName('carAxles').Value             := cxCurrencyEdit5.EditValue;
    FClientDS.FieldByName('carVolume').Value            := cxCurrencyEdit6.EditValue;
    FClientDS.FieldByName('carFreightGNGCode').Value    := cxButtonEdit7.EditValue;
    FClientDS.FieldByName('carFreightGNGID2001').Value  := null;
    FClientDS.FieldByName('carWeightDep').Value         := cxCurrencyEdit7.EditValue;
    FClientDS.FieldByName('carWeightDepReal').Value     := cxCurrencyEdit8.EditValue;
    FClientDS.FieldByName('carWeightGross').Value       := cxCurrencyEdit9.EditValue;
    FClientDS.FieldByName('carWeightNet').Value         := cxCurrencyEdit10.EditValue;
    FClientDS.FieldByName('carWeightAddDev').Value      := cxCurrencyEdit11.EditValue;
    FClientDS.FieldByName('carAddDevWithGoods').Value   := cxButtonEdit10.EditValue;
    FClientDS.FieldByName('carPriorFreightCode').Value  := cxButtonEdit15.EditValue;
    FClientDS.FieldByName('carPriorFreightName').Value  := cxButtonEdit11.EditValue;
    FClientDS.FieldByName('carOutsizeCode').Value       := cxCurrencyEdit12.EditValue;
    FClientDS.FieldByName('carFrameWeight').Value       := cxCurrencyEdit13.EditValue;
    FClientDS.FieldByName('carFrameWagNum').Value       := iif(cxTextEdit4.Text = '', null, cxTextEdit4.Text);
    FClientDS.FieldByName('carTopHeight').Value         := cxCurrencyEdit14.EditValue;
    FClientDS.FieldByName('carMainShtabQuantity').Value := cxCurrencyEdit15.EditValue;
    FClientDS.FieldByName('carMainShtabHeight').Value   := cxCurrencyEdit16.EditValue;
    FClientDS.FieldByName('carHeadShtabQuantity').Value := cxCurrencyEdit17.EditValue;
    FClientDS.FieldByName('carLiquidTemperature').Value := cxCurrencyEdit18.EditValue;
    FClientDS.FieldByName('carLiquidHeight').Value      := cxCurrencyEdit19.EditValue;
    FClientDS.FieldByName('carLiquidDensity').Value     := cxCurrencyEdit20.EditValue;
    FClientDS.FieldByName('carLiquidVolume').Value      := cxCurrencyEdit21.EditValue;
    FClientDS.FieldByName('carTankType').Value          := iif(cxTextEdit6.Text='', null, cxTextEdit6.Text);
    FClientDS.FieldByName('carRefNum').Value            := iif(cxTextEdit5.Text = '', null, cxTextEdit5.Text);
    FClientDS.FieldByName('carRefCount').Value          := cxCurrencyEdit22.EditValue;
    FClientDS.FieldByName('carRolls').Value             := cxCurrencyEdit23.EditValue;
    FClientDS.FieldByName('carConnectCode').Value       := cxCurrencyEdit24.EditValue;
    FClientDS.FieldByName('carIsCover').Value           := cxCurrencyEdit25.EditValue;
    if cxButtonEdit14.Tag <> -9 then begin
      FClientDS.FieldByName('contract_id').Value          := cxButtonEdit14.Tag;
      FClientDS.FieldByName('firm_customer_name').Value   := cxButtonEdit14.EditValue;
    end else begin
      FClientDS.FieldByName('contract_id').Value          := null;
      FClientDS.FieldByName('firm_customer_name').Value   := null;
    end;
    FClientDS.Post;


    FClientDS_spc.Filter   := 'car_id=' + IntToStr(FClientDS.FieldByName('id').AsInteger);
    FClientDS_spc.Filtered := True;
    while not FClientDS_spc.Eof do FClientDS_spc.Delete;
    FClientDS_spc.Filter   := '';
    FClientDS_spc.Filtered := False;


    Client_carSPC.First;
    while not Client_carSPC.Eof do begin
      FClientDS_spc.Append;
      FClientDS_spc.FieldByName('car_id').Value := FClientDS.FieldByName('id').AsInteger;
      FClientDS_spc.FieldByName('spcTranspClauseID').Value := Client_carSPC.FieldByName('spcTranspClauseID').Value;
      FClientDS_spc.FieldByName('spcTranspClauseName').Value := Client_carSPC.FieldByName('spcTranspClauseName').Value;
      FClientDS_spc.FieldByName('spcCustomText').Value := Client_carSPC.FieldByName('spcCustomText').Value;
      FClientDS_spc.Post;

      Client_carSPC.Next;
    end;


    FClient_carCSL.Filter   := 'car_id=' + IntToStr(FClientDS.FieldByName('id').AsInteger);
    FClient_carCSL.Filtered := True;
    while not FClient_carCSL.Eof do FClient_carCSL.Delete;
    FClient_carCSL.Filter   := '';
    FClient_carCSL.Filtered := False;

    Client_carCSL.First;
    while not Client_carCSL.Eof do begin
      FClient_carCSL.Append;
      FClient_carCSL.FieldByName('car_id'            ).Value := FClientDS.FieldByName('id').AsInteger;
      FClient_carCSL.FieldByName('sealTypeID'        ).Value := Client_carCSL.FieldByName('sealTypeID').Value;
      FClient_carCSL.FieldByName('sealTypeName'      ).Value := Client_carCSL.FieldByName('sealTypeName').Value;
      FClient_carCSL.FieldByName('sealMarks'         ).Value := Client_carCSL.FieldByName('sealMarks').Value;
      FClient_carCSL.FieldByName('sealQuantity'      ).Value := Client_carCSL.FieldByName('sealQuantity').Value;
      FClient_carCSL.FieldByName('sealYear'          ).Value := Client_carCSL.FieldByName('sealYear').Value;
      FClient_carCSL.FieldByName('sealOwnerTypeID'   ).Value := Client_carCSL.FieldByName('sealOwnerTypeID').Value;
      FClient_carCSL.FieldByName('sealOwnerTypeName' ).Value := Client_carCSL.FieldByName('sealOwnerTypeName').Value;
      FClient_carCSL.FieldByName('sealRailwayID'     ).Value := Client_carCSL.FieldByName('sealRailwayID').Value;
      FClient_carCSL.FieldByName('sealRailwayName'   ).Value := Client_carCSL.FieldByName('sealRailwayName').Value;
      FClient_carCSL.Post;

      Client_carCSL.Next;
    end;
  end;
end;

end.
