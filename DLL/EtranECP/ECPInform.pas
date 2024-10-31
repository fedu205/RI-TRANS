unit ECPInform;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Default, Data.DB, Data.Win.ADODB, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage,
  cxEdit, cxNavigator, dxDateRanges, cxDBData, cxGridCustomView, cxGridCustomTableView, cxGridTableView, cxGridBandedTableView, cxGridDBBandedTableView, cxGridLevel, cxGrid, System.ImageList,
  Vcl.ImgList, cxImageList, cxClasses, dxBar, Vcl.ExtCtrls, Raznoe, Vcl.StdCtrls, StrUtils, dxBarBuiltInMenu, cxPC, cxPropertiesStore, cxContainer, cxTextEdit, dxSkinsCore, dxSkinBlack, dxSkinBlue,
  dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary,
  dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMetropolis, dxSkinMetropolisDark, dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray, dxSkinOffice2013White,
  dxSkinOffice2016Colorful, dxSkinOffice2016Dark, dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus, dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008,
  dxSkinTheAsphaltWorld, dxSkinTheBezier, dxSkinsDefaultPainters, dxSkinValentine, dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark, dxSkinVisualStudio2013Light, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue, Other, dxScrollbarAnnotations, dxSkinBasic, dxSkinOffice2019Black, dxSkinOffice2019Colorful, dxSkinOffice2019DarkGray, dxSkinOffice2019White, dxSkinWXI;

type
  TfmECPInform = class(TForm)
    ADOEtran: TADOConnection;
    Splitter1: TSplitter;
    Panel1: TPanel;
    Panel2: TPanel;
    dxBarManager1: TdxBarManager;
    cxImageList16: TcxImageList;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    cxGrid1DBBandedTableView1: TcxGridDBBandedTableView;
    Query_Inform: TADOQuery;
    DS_Inform: TDataSource;
    cxGrid1DBBandedTableView1inform_id: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1reference_id: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1reference_name: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1inform_date: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1inform_FIO_name: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1inform_xml: TcxGridDBBandedColumn;
    dxBarPopupMenu1: TdxBarPopupMenu;
    dxBarButton1: TdxBarButton;
    dxBarSubItem1: TdxBarSubItem;
    dxBarButton2: TdxBarButton;
    dxBarButton3: TdxBarButton;
    dxBarManager1Bar1: TdxBar;
    dxBarButton4: TdxBarButton;
    Panel3: TPanel;
    Label1: TLabel;
    cxPageControl1: TcxPageControl;
    cxTabSheet1: TcxTabSheet;
    cxTabSheet2: TcxTabSheet;
    cxTabSheet3: TcxTabSheet;
    cxPropertiesStore1: TcxPropertiesStore;
    Query_InformDetail: TADOQuery;
    cxTextEdit1: TcxTextEdit;
    Label13: TLabel;
    Label2: TLabel;
    cxTextEdit2: TcxTextEdit;
    cxTextEdit3: TcxTextEdit;
    Label3: TLabel;
    cxTextEdit4: TcxTextEdit;
    Label4: TLabel;
    cxTextEdit5: TcxTextEdit;
    Label5: TLabel;
    cxTextEdit6: TcxTextEdit;
    Label6: TLabel;
    cxTextEdit7: TcxTextEdit;
    Label7: TLabel;
    cxTextEdit8: TcxTextEdit;
    Label8: TLabel;
    cxTextEdit9: TcxTextEdit;
    Label9: TLabel;
    cxTextEdit10: TcxTextEdit;
    Label10: TLabel;
    cxTextEdit11: TcxTextEdit;
    Label11: TLabel;
    cxTextEdit12: TcxTextEdit;
    Label12: TLabel;
    cxTextEdit13: TcxTextEdit;
    Label14: TLabel;
    cxTextEdit14: TcxTextEdit;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    Label26: TLabel;
    cxTextEdit15: TcxTextEdit;
    cxTextEdit16: TcxTextEdit;
    cxTextEdit17: TcxTextEdit;
    cxTextEdit18: TcxTextEdit;
    cxTextEdit19: TcxTextEdit;
    cxTextEdit20: TcxTextEdit;
    cxTextEdit21: TcxTextEdit;
    cxTextEdit22: TcxTextEdit;
    cxTextEdit23: TcxTextEdit;
    cxTextEdit24: TcxTextEdit;
    cxTextEdit25: TcxTextEdit;
    Label27: TLabel;
    cxTextEdit26: TcxTextEdit;
    cxTextEdit27: TcxTextEdit;
    cxTextEdit28: TcxTextEdit;
    cxTextEdit29: TcxTextEdit;
    cxTextEdit30: TcxTextEdit;
    cxTextEdit31: TcxTextEdit;
    cxTextEdit32: TcxTextEdit;
    cxTextEdit33: TcxTextEdit;
    Label28: TLabel;
    Label29: TLabel;
    Label30: TLabel;
    Label31: TLabel;
    Label32: TLabel;
    Label33: TLabel;
    Label34: TLabel;
    cxTabSheet4: TcxTabSheet;
    cxGrid1DBBandedTableView1str_vagons: TcxGridDBBandedColumn;
    cxGrid2Level1: TcxGridLevel;
    cxGrid2: TcxGrid;
    cxGrid2DBBandedTableView1: TcxGridDBBandedTableView;
    DS_InformVagons: TDataSource;
    Query_InformVagons: TADOQuery;
    dxBarPopupMenu2: TdxBarPopupMenu;
    dxBarSubItem2: TdxBarSubItem;
    dxBarButton6: TdxBarButton;
    dxBarButton8: TdxBarButton;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1: TcxStyle;
    cxStyle_WhiteColor: TcxStyle;
    cxGrid2DBBandedTableView1NOM_VAG: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1ROD_VAG_UCH: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1KOD_SOB: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1DATE_NACH: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1STAN_NACH: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1DOR_NACH: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1STR_NACH: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1DATE_KON: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1STAN_NAZN: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1DOR_NAZN: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1STR_NAZN: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1GRUZPOL: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1GRUZPOL_OKPO: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1GRUZOTPR: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1GRUZOTPR_OKPO: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1KOD_GRZ_GNG: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1PROB_GRJ: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1PROB_POR: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1OS_OTM1: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1OS_OTM2: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1OS_OTM3: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1VES_GRZ: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1DATE_OP: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1DOR_RASCH: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1STAN_OP: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1KOP_VMD: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1KOP_PMD: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1PPV_MEST: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1PPV_TRANZ: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1PPV_POR: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1PPV_GRUJ: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1PPV_NRP: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1PPV_RP: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1VNRP_NEISP: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1VNRP_SPEC_TEX: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1DOR_SDACH_GOS: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1DOR_PRIEM_GOS: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1INDEX_POEZD: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1NOM_POEZD: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1NPP_VAG: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1NOM_PARK: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1NOM_PUT: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1KOL_ZPU: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1KOL_GRJ_KONT: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1KOL_POR_KONT: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1NOM_KON1: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1NOM_KON2: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1NOM_KON3: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1NOM_KON4: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1NOM_KON5: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1NOM_KON6: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1NOM_KON7: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1NOM_KON8: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1NOM_KON9: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1NOM_KON10: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1NOM_KON11: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1NOM_KON12: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1NOM_KON13: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1ID_OTPRK: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1NOM_NAK: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1UNO: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1NOM_OTPRK_1: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1NOM_OTPRK_2: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1NOM_OTPRK_3: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1NOM_OTPRK_4: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1NOM_OTPRK_5: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1NOM_OTPRK_6: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1NOM_OTPRK_7: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1NOM_OTPRK_8: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1NOM_OTPRK_9: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1NOM_OTPRK_10: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1NOM_OTPRK_11: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1NOM_OTPRK_12: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1NOM_OTPRK_13: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1ID_OTPRK_DOSYL: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1UNO_DOSYL: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1DATE_DOSTAV: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1RASST_OB: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1RASST_STAN_OP: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1RASST_STAN_NAZN: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1PROST_DN: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1PROST_: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1PROST_MIN: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1NORMA_KM: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1OSTATOK: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1KOD_GRZ_VYGR: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1PR_OST_GRZ: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1DATE_OTPR: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1DATE_PRIB: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1KOD_PL_OTPR: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1TARIF: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1OTM_GOD_VAG: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1POROG_PROB: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1PR_OTM: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1PR_STR: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1DATE_ZAP: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1KOD_GRZ_UCH: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1KDS_T: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1DVS_T: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1ID_GRUZPOL: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1ID_GRUZOTPR: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1ErrObj: TcxGridDBBandedColumn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cxGrid1DBBandedTableView1FilterOnChanged(Sender: TObject);
    procedure cxGrid1DBBandedTableView1CustomDrawCell(Sender: TcxCustomGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
    procedure cxGrid1DBBandedTableView1CustomDrawColumnHeader(Sender: TcxGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxGridColumnHeaderViewInfo; var ADone: Boolean);
    procedure cxGrid1DBBandedTableView1FocusedItemChanged(Sender: TcxCustomGridTableView; APrevFocusedItem, AFocusedItem: TcxCustomGridTableItem);
    procedure cxGrid1DBBandedTableView1KeyPress(Sender: TObject; var Key: Char);
    procedure dxBarButton1Click(Sender: TObject);
    procedure dxBarButton2Click(Sender: TObject);
    procedure dxBarButton3Click(Sender: TObject);
    procedure dxBarButton4Click(Sender: TObject);
    procedure cxGrid1DBBandedTableView1SelectionChanged(Sender: TcxCustomGridTableView);
    procedure FormDestroy(Sender: TObject);
    procedure cxGrid2DBBandedTableView1CustomDrawCell(Sender: TcxCustomGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
    procedure dxBarButton5Click(Sender: TObject);
    procedure dxBarButton6Click(Sender: TObject);
    procedure dxBarButton8Click(Sender: TObject);
  private
    FFIO_users  : string;
    Freference_id : integer;
    Freference_name : string;
    Fstr_vagons: string;

    procedure SetReferenceId(reference_id: integer);
  public
    constructor Create(AOwner: TApplication; usr_pwd: PUser_pwd; connect: TADOConnection);
  published
      property _SetFIOUsers    : string write FFIO_users;
      property _SetVagons      : string write Fstr_vagons;
      property _SetReferenceId : integer write SetReferenceId;
  end;

var
  fmECPInform: TfmECPInform;


function CreateWndEtranInform(AppHand: THandle; usr_pwd: PUser_pwd; FIO_users: string; reference_id: integer): variant; export;
function CreateWndEtranInformVagons(AppHand: THandle; connect: TADOConnection; FIO_users: string; reference_id: integer; str_vagons: string): variant; export;

implementation

{$R *.dfm}

uses ECPInformAdd, ECPTCP, ECPVagonSeveral, ECPQuery;


function CreateWndEtranInform(AppHand: THandle; usr_pwd: PUser_pwd; FIO_users: string; reference_id: integer): variant; export;
begin
  Application.Handle := AppHand;
  try
    fmECPInform := TfmECPInform.Create(Application, usr_pwd, nil);
    fmECPInform._SetFIOusers    := FIO_users;
    fmECPInform._SetReferenceId := reference_id;

    if  fmECPInform.ShowModal = mrOk then result := VarArrayOf([-9, '']);
  finally
    fmECPInform.Free;
  end;
end;

function CreateWndEtranInformVagons(AppHand: THandle; connect: TADOConnection; FIO_users: string; reference_id: integer; str_vagons: string): variant; export;
begin
  Application.Handle := AppHand;
  try
    fmECPInform := TfmECPInform.Create(Application, nil, connect);
    fmECPInform._SetFIOusers    := FIO_users;
    fmECPInform._SetReferenceId := reference_id;
    fmECPInform._SetVagons      := str_vagons;

    if  fmECPInform.ShowModal = mrOk then result := VarArrayOf([-9, '']);
  finally
    fmECPInform.Free;
  end;
end;

constructor TfmECPInform.Create(AOwner: TApplication; usr_pwd: PUser_pwd; connect: TADOConnection);
var   login : string;
    db_name : string;
begin
  Screen.Cursor := -11;
  inherited Create(AOwner);

  ADOEtran.Connected := False;
  if connect = nil then
    ADOEtran.ConnectionString := ADOEtran.ConnectionString+';User ID=etran_gru;Password=''etran'';Initial Catalog=' + EtranDatabase + ';Data Source='+usr_pwd^.server+';'
  else
    ADOEtran.ConnectionString := ADOEtran.ConnectionString+';User ID=etran_gru;Password=''etran'';Initial Catalog=' + EtranDatabase + ';Data Source='+GetDBServer(connect)+';';
  ADOEtran.Connected := True;

  Freference_id := -9;


  StoreRegistryGrid(rgLoad, '\Software\Lis1\ECPEtran\ECPInform', cxGrid1DBBandedTableView1);
  StoreRegistryGrid(rgLoad, '\Software\Lis1\ECPEtran\ECPInform', cxGrid2DBBandedTableView1);

//  MonitorEventFormOpen('OPEN_FORM', self.Caption + '/' + IntToStr(Freference_id), connect, -9);

  Screen.Cursor := 0;
end;


procedure TfmECPInform.SetReferenceId(reference_id: integer);
begin
  Freference_id := reference_id;

  if Freference_id = 39 then begin
    Freference_name := 'Сведения о текущем состоянии детали';
     cxPageControl1.ActivePageIndex := 0;
  end;

  if Freference_id = 40 then begin
    Freference_name := 'Розыск детали - история';
    cxPageControl1.ActivePageIndex := 1;
  end;

  if Freference_id = 41 then begin
    Freference_name := 'Данные по литым деталям тележки и колесным парам';
    cxPageControl1.ActivePageIndex := 2;
  end;

  if Freference_id = 14 then begin
    Freference_name := 'Справка о дислокации вагонов по списку';
    cxPageControl1.ActivePageIndex := 3;
  end;


  Query_Inform.Parameters.ParamByName('reference_id').Value := Freference_id;
  Query_Inform.Open;
  cxGrid1DBBandedTableView1SelectionChanged(nil);

  cxPageControl1.HideTabs := True;
  Label1.Caption := Freference_name;
  Caption := Freference_name;
end;

procedure TfmECPInform.cxGrid1DBBandedTableView1CustomDrawCell(Sender: TcxCustomGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
	if AViewInfo.GridRecord.Selected or AViewInfo.GridRecord.Focused then begin
		ACanvas.Brush.Color := clNavy;
		ACanvas.Font.Color := clWhite;
		if AViewInfo.Focused then ACanvas.Brush.Color := clBlue;
	end;
end;

procedure TfmECPInform.cxGrid1DBBandedTableView1CustomDrawColumnHeader(Sender: TcxGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxGridColumnHeaderViewInfo; var ADone: Boolean);
begin
  DrawcxGridColumnOnFocused(Sender, ACanvas, AViewInfo);
end;

procedure TfmECPInform.cxGrid1DBBandedTableView1FilterOnChanged(Sender: TObject);
begin
	DrawcxGridColumnOnFiltered(Sender);
end;

procedure TfmECPInform.cxGrid1DBBandedTableView1FocusedItemChanged(Sender: TcxCustomGridTableView; APrevFocusedItem, AFocusedItem: TcxCustomGridTableItem);
begin
	Sender.Painter.Invalidate;
end;

procedure TfmECPInform.cxGrid1DBBandedTableView1KeyPress(Sender: TObject; var Key: Char);
begin
	FilterColumnGridOnKeyPress(TcxGridDBBandedTableView(TcxGridSite(Sender).GridView), Key);
end;

procedure TfmECPInform.cxGrid1DBBandedTableView1SelectionChanged(Sender: TcxCustomGridTableView);
begin
  try
  if Freference_id = 39 then begin
    Query_InformDetail.Close;
    Query_InformDetail.Parameters.ParamByName('inform_id').Value := cxGrid1DBBandedTableView1inform_id.DataBinding.Field.AsInteger;
    Query_InformDetail.Open;

    cxTextEdit1.Text := Query_InformDetail.FieldByName('NAIM_DET').AsString;
    cxTextEdit2.Text := Query_InformDetail.FieldByName('NUM_DET').AsString;
    cxTextEdit3.Text := Query_InformDetail.FieldByName('NOMVAG').AsString;
    cxTextEdit4.Text := Query_InformDetail.FieldByName('DEPO_IZG').AsString;
    cxTextEdit5.Text := Query_InformDetail.FieldByName('NAIM_DEPO').AsString;
    cxTextEdit6.Text := Query_InformDetail.FieldByName('GOD_IZG').AsString;
    cxTextEdit7.Text := Query_InformDetail.FieldByName('NUM').AsString;
    cxTextEdit8.Text := Query_InformDetail.FieldByName('NAIM_VID_REM').AsString;
    cxTextEdit9.Text := Query_InformDetail.FieldByName('NAIM_MESTO_REM').AsString;
    cxTextEdit10.Text := Query_InformDetail.FieldByName('DATE_REM').AsString;
    cxTextEdit11.Text := Query_InformDetail.FieldByName('NAIM_ADM_PASP').AsString;
    cxTextEdit12.Text := Query_InformDetail.FieldByName('KL_OBOD').AsString;
    cxTextEdit13.Text := Query_InformDetail.FieldByName('KR_OBOD').AsString;
    cxTextEdit14.Text := Query_InformDetail.FieldByName('NAIM_SOST').AsString;
  end;

  if Freference_id = 40 then begin
    Query_InformDetail.Close;
    Query_InformDetail.Parameters.ParamByName('inform_id').Value := cxGrid1DBBandedTableView1inform_id.DataBinding.Field.AsInteger;
    Query_InformDetail.Open;

    cxTextEdit25.Text := Query_InformDetail.FieldByName('NAIM_DET').AsString;
    cxTextEdit24.Text := Query_InformDetail.FieldByName('NOM_VAG').AsString;
    cxTextEdit23.Text := Query_InformDetail.FieldByName('NAIM_SOB').AsString;
    cxTextEdit22.Text := Query_InformDetail.FieldByName('DATE_OPER').AsString;
    cxTextEdit21.Text := Query_InformDetail.FieldByName('NAIM_PRED_OPER').AsString;
    cxTextEdit20.Text := Query_InformDetail.FieldByName('NAIM_ADM_OPER').AsString;
    cxTextEdit19.Text := Query_InformDetail.FieldByName('NAIM_STAN_OPER').AsString;
    cxTextEdit18.Text := Query_InformDetail.FieldByName('NAIM_VID_REM').AsString;
    cxTextEdit17.Text := Query_InformDetail.FieldByName('DATE_VVOD').AsString;
    cxTextEdit16.Text := Query_InformDetail.FieldByName('KL_OBOD').AsString;
    cxTextEdit15.Text := Query_InformDetail.FieldByName('KR_OBOD').AsString;
  end;

  if Freference_id = 41 then begin
    Query_InformDetail.Close;
    Query_InformDetail.Parameters.ParamByName('inform_id').Value := cxGrid1DBBandedTableView1inform_id.DataBinding.Field.AsInteger;
    Query_InformDetail.Open;

    cxTextEdit26.Text := Query_InformDetail.FieldByName('NAIM_DET').AsString;
    cxTextEdit27.Text := Query_InformDetail.FieldByName('NUM_DET').AsString;
    cxTextEdit28.Text := Query_InformDetail.FieldByName('NOMVAG').AsString;
    cxTextEdit29.Text := Query_InformDetail.FieldByName('DEPO_IZG').AsString;
    cxTextEdit30.Text := Query_InformDetail.FieldByName('NAIM_DEPO').AsString;
    cxTextEdit31.Text := Query_InformDetail.FieldByName('GOD_IZG').AsString;
    cxTextEdit32.Text := Query_InformDetail.FieldByName('NAIM_SOST').AsString;
    cxTextEdit33.Text := Query_InformDetail.FieldByName('NAIM_EXPL').AsString;
  end;

  if Freference_id = 14 then begin
    Query_InformVagons.Close;
    Query_InformVagons.Parameters.ParamByName('inform_id').Value := cxGrid1DBBandedTableView1inform_id.DataBinding.Field.AsInteger;
    Query_InformVagons.Open;
  end;
  except
  end;

end;

procedure TfmECPInform.cxGrid2DBBandedTableView1CustomDrawCell(Sender: TcxCustomGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
	if AViewInfo.GridRecord.Selected or AViewInfo.GridRecord.Focused then begin
		ACanvas.Brush.Color := clNavy;
		ACanvas.Font.Color := clWhite;
		if AViewInfo.Focused then ACanvas.Brush.Color := clBlue;
	end;
end;

procedure TfmECPInform.dxBarButton1Click(Sender: TObject);
begin
  case TdxBarButton(Sender).ClickItemLink.Owner.Owner.Tag of
    1 : PrintcxGrid(cxGrid1DBBandedTableView1);
    2 : PrintcxGrid(cxGrid2DBBandedTableView1);
  end;
end;

procedure TfmECPInform.dxBarButton2Click(Sender: TObject);
begin
	SetdxDBGridColumns(cxGrid1DBBandedTableView1);
end;

procedure TfmECPInform.dxBarButton3Click(Sender: TObject);
begin
  case TdxBarButton(Sender).ClickItemLink.Owner.Owner.Tag of
	  1 : cxGrid1DBBandedTableView1.OptionsView.GroupByBox := not cxGrid1DBBandedTableView1.OptionsView.GroupByBox;
    2 : cxGrid2DBBandedTableView1.OptionsView.GroupByBox := not cxGrid2DBBandedTableView1.OptionsView.GroupByBox;
  end;
end;

procedure TfmECPInform.dxBarButton4Click(Sender: TObject);
var str_query : string;
    str_result : string;
    SP : TADOStoredProc;
    det_tip : string;
    det_tip_name : string;
    depo  : string;
    det_num  : string;
    det_izg  : string;
    str_list : TStringList;
    i : integer;
      v       : variant;
begin

  if (Freference_id = 39) or (Freference_id = 40) or (Freference_id = 41) then begin
    fmECPInformAdd := TfmECPInformAdd.Create(Application);
    if fmECPInformAdd.ShowModal = mrOk then begin

      det_tip       := fmECPInformAdd._GetDetTip;
      det_tip_name  := fmECPInformAdd._GetDetTipName;
      depo          := fmECPInformAdd._GetDepo;
      det_num       := fmECPInformAdd._GetDetNum;
      det_izg       := fmECPInformAdd._GetDetIzg;

      if Freference_id = 39 then begin
        str_query := '';
        str_query := str_query + '<GetInform>';
        str_query := str_query + '	<ns0:getReference39ASU xmlns:ns0="http://service.siw.pktbcki.rzd/">';
        str_query := str_query + '		<ns0:Reference39ASURequest>';
        str_query := str_query + '			<idUser>0</idUser>';
        str_query := str_query + '			<idReference>39</idReference>';
        str_query := str_query + '			<tipDet>' + det_tip + '</tipDet>';
        str_query := str_query + '			<depoIzg>' + depo + '</depoIzg>';
        str_query := str_query + '			<numDet>' + det_num + '</numDet>';
        str_query := str_query + '			<godIzg>' + det_izg + '</godIzg>';
        str_query := str_query + '		</ns0:Reference39ASURequest>';
        str_query := str_query + '	</ns0:getReference39ASU>';
        str_query := str_query + '</GetInform>';
      end;

      if Freference_id = 40 then begin
        str_query := '';
        str_query := str_query + '<GetInform>';
        str_query := str_query + '	<ns0:getReference40ASU xmlns:ns0="http://service.siw.pktbcki.rzd/">';
        str_query := str_query + '		<ns0:Reference40ASURequest>';
        str_query := str_query + '			<idUser>0</idUser>';
        str_query := str_query + '			<idReference>40</idReference>';
        str_query := str_query + '			<tipDet>' + det_tip + '</tipDet>';
        str_query := str_query + '			<zavod>' + depo + '</zavod>';
        str_query := str_query + '			<nomDet>' + det_num + '</nomDet>';
        str_query := str_query + '			<godPost>' + det_izg + '</godPost>';
        str_query := str_query + '		</ns0:Reference40ASURequest>';
        str_query := str_query + '	</ns0:getReference40ASU>';
        str_query := str_query + '</GetInform>';
      end;

      if Freference_id = 41 then begin
        str_query := '';
        str_query := str_query + '<GetInform>';
        str_query := str_query + '	<ns0:getReference41ASU xmlns:ns0="http://service.siw.pktbcki.rzd/">';
        str_query := str_query + '		<ns0:Reference41ASURequest>';
        str_query := str_query + '			<idUser>0</idUser>';
        str_query := str_query + '			<idReference>41</idReference>';
        str_query := str_query + '			<tipDet>' + det_tip + '</tipDet>';
        str_query := str_query + '			<depoIzg>' + depo + '</depoIzg>';
        str_query := str_query + '			<numDet>' + det_num + '</numDet>';
        str_query := str_query + '			<godIzg>' + det_izg + '</godIzg>';
        str_query := str_query + '		</ns0:Reference41ASURequest>';
        str_query := str_query + '	</ns0:getReference41ASU>';
        str_query := str_query + '</GetInform>';
      end;


      if Freference_id = 14 then begin
        str_query := '';
        str_query := str_query + '<GetInform>';
        str_query := str_query + '	<ns0:getReference14ASU xmlns:ns0="http://service.siw.pktbcki.rzd/">';
        str_query := str_query + '		<ns0:Reference14ASURequest>';
        str_query := str_query + '			<idUser>0</idUser>';
        str_query := str_query + '			<idReference>14</idReference>';
        str_query := str_query + '			<vagons><vagon>95964300</vagon></vagons>';
        str_query := str_query + '		</ns0:Reference14ASURequest>';
        str_query := str_query + '	</ns0:getReference14ASU>';
        str_query := str_query + '</GetInform>';
      end;


      fmECPTCP := TfmECPTCP.Create();
      fmECPTCP._GetEtran(str_query);
      if fmECPTCP.ShowModal = mrOk then begin
        str_result := fmECPTCP._GetMsg;
        str_result := ReplaceStr(str_result, '<?xml version=''1.0'' encoding=''UTF-8''?>', '');
        str_result := ReplaceStr(str_result, '<?xml version="1.0" encoding="windows-1251"?>', '');


        SP := TADOStoredProc.Create(nil);
        SP.Connection := ADOEtran;
        SP.ProcedureName := 'sp_inform_modify';
        SP.Parameters.Refresh;

        SP.Parameters.ParamByName('@reference_id'    ).Value := Freference_id;
        SP.Parameters.ParamByName('@reference_name'  ).Value := Freference_name;
        SP.Parameters.ParamByName('@det_tip'         ).Value := det_tip;
        SP.Parameters.ParamByName('@det_tip_name'    ).Value := det_tip_name;
        SP.Parameters.ParamByName('@depo'            ).Value := depo;
        SP.Parameters.ParamByName('@det_num'         ).Value := det_num;
        SP.Parameters.ParamByName('@date_izg'        ).Value := det_izg;
        SP.Parameters.ParamByName('@date_izm'        ).Value := null;
        SP.Parameters.ParamByName('@inform_date'     ).Value := Now;
        SP.Parameters.ParamByName('@inform_FIO_name' ).Value := FFIO_users;
        SP.Parameters.ParamByName('@inform_xml'      ).Value := str_result;
        SP.ExecProc;

        RefreshQueryGrid(cxGrid1DBBandedTableView1, 'inform_id', SP.Parameters.ParamByName('@inform_id').Value);

        SP.Free;
      end;
    end;
  end else if (Freference_id = 14) then begin
    fmECPVagonSeveral := TfmECPVagonSeveral.Create(Application);
    fmECPVagonSeveral._SetVagonList := Fstr_vagons;

    if fmECPVagonSeveral.ShowModal = mrOk then begin
      Fstr_vagons := fmECPVagonSeveral._GetVagonList;
      if Freference_id = 14 then begin
        str_query := '';
        str_query := str_query + '<GetInform>';
        str_query := str_query + '	<ns0:getReferenceSPV4664 xmlns:ns0="http://service.siw.pktbcki.rzd/">';
        str_query := str_query + '		<ns0:ReferenceSPV4664Request>';
        str_query := str_query + '			<idUser>0</idUser>';
        str_query := str_query + '			<vagons>';

        str_list := TStringList.Create;
        str_list.Text := ReplaceStr(Fstr_vagons, ',', #10);
        for i := 0 to str_list.Count-1 do begin
          if str_list.Strings[i] <> '' then
            str_query := str_query + '			  <vagon>' + str_list.Strings[i] + '</vagon>';
        end;
        str_list.Free;

        str_query := str_query + '			</vagons>';
        str_query := str_query + '		</ns0:ReferenceSPV4664Request>';
        str_query := str_query + '	</ns0:getReferenceSPV4664>';
        str_query := str_query + '</GetInform>';
      end;

      v := CreateWndGetQuery('92.53.107.222', '7450', 'МСК_ЛЁУШКИНС', '@Auraoil_2019%', 'http://10.248.35.14:8092/EtranServer/EtranLR.dll/soap', str_query);

      if v[0] = True then begin
        str_result := ReplaceStr(v[1], '<?xml version=''1.0'' encoding=''utf-8''?>', '');

        if Pos('referenceSPV4664', str_result) <> 0 then begin
          SP := TADOStoredProc.Create(nil);
          SP.Connection := ADOEtran;
          SP.ProcedureName := 'sp_inform_modify';
          SP.Parameters.Refresh;

          SP.Parameters.ParamByName('@reference_id'    ).Value := Freference_id;
          SP.Parameters.ParamByName('@reference_name'  ).Value := Freference_name;
          SP.Parameters.ParamByName('@det_tip'         ).Value := null;
          SP.Parameters.ParamByName('@det_tip_name'    ).Value := null;
          SP.Parameters.ParamByName('@depo'            ).Value := null;
          SP.Parameters.ParamByName('@det_num'         ).Value := null;
          SP.Parameters.ParamByName('@date_izg'        ).Value := null;
          SP.Parameters.ParamByName('@date_izm'        ).Value := null;
          SP.Parameters.ParamByName('@inform_date'     ).Value := Now;
          SP.Parameters.ParamByName('@str_vagons'      ).Value := ReplaceStr(ReplaceStr(Fstr_vagons, #10, ','), #13, '');
          SP.Parameters.ParamByName('@inform_FIO_name' ).Value := FFIO_users;
          SP.Parameters.ParamByName('@inform_xml'      ).Value := str_result;
          SP.ExecProc;

          RefreshQueryGrid(cxGrid1DBBandedTableView1, 'inform_id', SP.Parameters.ParamByName('@inform_id').Value);
        end else begin
          Application.MessageBox(PChar(str_result),'Ошибка',MB_OK);
        end;

      end else begin
        str_result := v[1];
        Application.MessageBox(PChar(str_result),'Ошибка',MB_OK);
      end;


//      fmECPTCP := TfmECPTCP.Create();
//      fmECPTCP._GetEtran(str_query);
//      if fmECPTCP.ShowModal = mrOk then begin
//        str_result := fmECPTCP._GetMsg;
//        str_result := ReplaceStr(str_result, '<?xml version=''1.0'' encoding=''UTF-8''?>', '');
//        str_result := ReplaceStr(str_result, '<?xml version="1.0" encoding="windows-1251"?>', '');
//
//        SP := TADOStoredProc.Create(nil);
//        SP.Connection := ADOEtran;
//        SP.ProcedureName := 'sp_inform_modify';
//        SP.Parameters.Refresh;
//
//        SP.Parameters.ParamByName('@reference_id'    ).Value := Freference_id;
//        SP.Parameters.ParamByName('@reference_name'  ).Value := Freference_name;
//        SP.Parameters.ParamByName('@det_tip'         ).Value := null;
//        SP.Parameters.ParamByName('@det_tip_name'    ).Value := null;
//        SP.Parameters.ParamByName('@depo'            ).Value := null;
//        SP.Parameters.ParamByName('@det_num'         ).Value := null;
//        SP.Parameters.ParamByName('@date_izg'        ).Value := null;
//        SP.Parameters.ParamByName('@date_izm'        ).Value := null;
//        SP.Parameters.ParamByName('@inform_date'     ).Value := Now;
//        SP.Parameters.ParamByName('@str_vagons'      ).Value := ReplaceStr(ReplaceStr(Fstr_vagons, #10, ','), #13, '');
//        SP.Parameters.ParamByName('@inform_FIO_name' ).Value := FFIO_users;
//        SP.Parameters.ParamByName('@inform_xml'      ).Value := str_result;
//        SP.ExecProc;
//
//        RefreshQueryGrid(cxGrid1DBBandedTableView1, 'inform_id', SP.Parameters.ParamByName('@inform_id').Value);
//
//        SP.Free;
//      end;
    end;
  end;
end;

procedure TfmECPInform.dxBarButton5Click(Sender: TObject);
begin
	PrintcxGrid(cxGrid2DBBandedTableView1);
end;

procedure TfmECPInform.dxBarButton6Click(Sender: TObject);
begin
	SetdxDBGridColumns(cxGrid2DBBandedTableView1);
end;

procedure TfmECPInform.dxBarButton8Click(Sender: TObject);
var     i : integer;
       SP : TADOStoredProc;
begin
  if Application.MessageBox(PChar('Вы точно уверены, что хотите удалить выделенные справки?'),'Внимание',MB_OKCANCEL) = ID_OK then begin
      Screen.Cursor := -11;

      SP := TADOStoredProc.Create(nil);
      SP.Connection := ADOEtran;
      SP.ProcedureName := 'sp_inform_modify';

      for i := 0 to cxGrid1DBBandedTableView1.Controller.SelectedRowCount - 1 do begin

        SP.Close;
        SP.Parameters.Refresh;
        SP.Parameters.ParamByName('@inform_id'  ).Value := cxGrid1DBBandedTableView1.Controller.SelectedRows[i].Values[cxGrid1DBBandedTableView1inform_id.Index];
        SP.Parameters.ParamByName('@type_action').Value := 2;
        try
          SP.ExecProc;
          ShowTextMessage('Осталось '+IntToStr(cxGrid1DBBandedTableView1.Controller.SelectedRowCount - i)+' записей...', False);
        except
        end;
      end;
      RefreshQueryGrid(cxGrid1DBBandedTableView1, 'inform_id');
      SP.Free;
      ShowTextMessage;
  end;
end;

procedure TfmECPInform.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TfmECPInform.FormDestroy(Sender: TObject);
begin
  StoreRegistryGrid(rgSave, '\Software\Lis1\ECPEtran\ECPInform', cxGrid1DBBandedTableView1);
  StoreRegistryGrid(rgSave, '\Software\Lis1\ECPEtran\ECPInform', cxGrid2DBBandedTableView1);
end;

end.
