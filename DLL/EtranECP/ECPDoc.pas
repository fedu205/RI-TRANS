unit ECPDoc;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
  dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMetropolis,
  dxSkinMetropolisDark, dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue,
  dxSkinOffice2010Silver, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinOffice2016Colorful, dxSkinOffice2016Dark, dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic,
  dxSkinSharp, dxSkinSharpPlus, dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008, dxSkinTheAsphaltWorld, dxSkinTheBezier, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark, dxSkinVisualStudio2013Light, dxSkinVS2010, dxSkinWhiteprint, dxSkinXmas2008Blue, dxSkinsForm, cxLookAndFeels, dxBar, cxClasses,
  cxPropertiesStore, System.ImageList, Vcl.ImgList, cxImageList, cxGraphics, cxStyles, Data.DB, Data.Win.ADODB, cxControls, cxLookAndFeelPainters, cxCustomData, cxFilter, cxData, cxDataStorage,
  cxEdit, cxNavigator, dxDateRanges, cxDBData, cxGridLevel, cxGridCustomTableView, cxGridTableView, cxGridBandedTableView, cxGridDBBandedTableView, cxGridCustomView, cxGrid,
  Default, Raznoe, Period, DateUtils, dxSkinOffice2019Colorful, dxBarBuiltInMenu, cxPC,
  dxSkinBasic, dxSkinOffice2019Black, dxSkinOffice2019DarkGray,
  dxSkinOffice2019White, dxScrollbarAnnotations, dxCore, dxSkinWXI;

type
  TfmECPDoc = class(TForm)
    DS_ECPDoc: TDataSource;
    Query_ECPDoc: TADOQuery;
    ADOEtran: TADOConnection;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1: TcxStyle;
    cxStyle2: TcxStyle;
    cxStyle3: TcxStyle;
    cxStyle4: TcxStyle;
    cxImageList1: TcxImageList;
    cxPropertiesStore1: TcxPropertiesStore;
    dxBarManager1: TdxBarManager;
    dxBarManager1Bar1: TdxBar;
    cxLookAndFeelController1: TcxLookAndFeelController;
    dxSkinController1: TdxSkinController;
    dxBarButton2: TdxBarButton;
    cxGrid1: TcxGrid;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1DBBandedTableView1: TcxGridDBBandedTableView;
    dxBarPopupMenu1: TdxBarPopupMenu;
    dxBarButton6: TdxBarButton;
    dxBarSubItem2: TdxBarSubItem;
    dxBarButton7: TdxBarButton;
    dxBarButton8: TdxBarButton;
    dxBarButton9: TdxBarButton;
    cxPageControl1: TcxPageControl;
    cxTabSheet2: TcxTabSheet;
    cxTabSheet15: TcxTabSheet;
    cxTabSheet16: TcxTabSheet;
    cxGrid1DBBandedTableView1doc_id: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1DocTypeID: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1ReasonName: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1MPSOrgID: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1PC_OrgName: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1DateSign: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1DocNum: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1ReasonID: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1StateName: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1PC_OrgID: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1DateEnd: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1DocID: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1DocTypeName: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1StateID: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1MPSOrgName: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1DateBegin: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1DateSuspend: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1els_cod: TcxGridDBBandedColumn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure cxGrid1DBBandedTableView1FilterOnChanged(Sender: TObject);
    procedure cxGrid1DBBandedTableView1CustomDrawCell(Sender: TcxCustomGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
    procedure cxGrid1DBBandedTableView1CustomDrawColumnHeader(Sender: TcxGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxGridColumnHeaderViewInfo; var ADone: Boolean);
    procedure cxGrid1DBBandedTableView1FocusedItemChanged(Sender: TcxCustomGridTableView; APrevFocusedItem, AFocusedItem: TcxCustomGridTableItem);
    procedure cxGrid1DBBandedTableView1KeyPress(Sender: TObject; var Key: Char);
    procedure dxBarButton6Click(Sender: TObject);
    procedure dxBarButton7Click(Sender: TObject);
    procedure dxBarButton8Click(Sender: TObject);
    procedure dxBarButton2Click(Sender: TObject);
    procedure dxBarButton9Click(Sender: TObject);
    procedure cxPageControl1Change(Sender: TObject);
  private
    Fusr_pwd         : PUser_pwd;
    Fusers_group_cod : string;
    FIO_users : string;
    Fetran_ip : string;
    Fetran_port : string;
    Fid : integer;
    Fname : string;
    Fdate : TDateTime;
    Fset_reason : boolean;

    procedure SetModal(val: boolean);
    procedure SetFirm(val: integer);
  public
    constructor Create(AOwner: TApplication; users_group_cod: string; usr_pwd: PUser_pwd);
  published
    property _SetModal : boolean write SetModal;
    property _SetFirm : integer write SetFirm;
    property _GetID  : integer read Fid;
    property _GetName: string read Fname;
    property _GetDate: TDateTime read Fdate;
  end;

var
  fmECPDoc: TfmECPDoc;

function CreateWndEtranECPDoc(AppHand: THandle; users_group_cod: string; usr_pwd: PUser_pwd): variant; export;

implementation

{$R *.dfm}

function CreateWndEtranECPDoc(AppHand: THandle; users_group_cod: string; usr_pwd: PUser_pwd): variant; export;
begin
  Application.Handle := AppHand;
  try
    fmECPDoc := TfmECPDoc.Create(Application, users_group_cod, usr_pwd);

    //-- изменить по мере необходимости возвращаемых параметров
    if  fmECPDoc.ShowModal = mrOk then result := VarArrayOf([-9, '']);
  finally
    fmECPDoc.Free;
  end;
end;


constructor TfmECPDoc.Create(AOwner: TApplication; users_group_cod: string; usr_pwd: PUser_pwd);
var   login : string;
    db_name : string;
          Q : TADOQuery;
begin
  Screen.Cursor := -11;
  inherited Create(nil);

//  WindowState := wsMaximized;

  Fusr_pwd := usr_pwd;
  Fusers_group_cod := users_group_cod;

  login := 'Etran_rtr';
  db_name := 'lis_etran';
  Fetran_ip := '92.53.107.222';
  Fetran_port := '7450';


  Fid := -9;
  Fname := '';
  Fset_reason := False;


  ADOEtran.Connected := False;
  ADOEtran.ConnectionString := 'Persist Security Info=True;Provider=SQLOLEDB.1;User ID='+login+';Password='+'etran'+';Initial Catalog='+db_name+';Data Source='+Fusr_pwd^.server+';';
  ADOEtran.Connected := True;

  Query_ECPDoc.Connection := ADOEtran;
  Query_ECPDoc.SQL.Clear;
  case cxPageControl1.ActivePageIndex of
    0: Query_ECPDoc.SQL.Add('SELECT * FROM view_doc WHERE els_cod = ''1004653067''' + iif(Fset_reason,' and ReasonID is not null',''));
    1: Query_ECPDoc.SQL.Add('SELECT * FROM view_doc WHERE els_cod = ''1006059161''' + iif(Fset_reason,' and ReasonID is not null',''));
    2: Query_ECPDoc.SQL.Add('SELECT * FROM view_doc WHERE els_cod = ''1006062218''' + iif(Fset_reason,' and ReasonID is not null',''));
  end;
  Query_ECPDoc.Open;

  StoreRegistryGrid(rgLoad,'\Software\Lis1\MainGrids\ECPDoc', cxGrid1DBBandedTableView1);

  Screen.Cursor := 0;
end;


procedure TfmECPDoc.SetModal(val: boolean);
begin
  dxBarButton9.Visible := ivAlways;
end;

procedure TfmECPDoc.SetFirm(val: integer);
begin
  Fset_reason := True;
  cxPageControl1.ActivePageIndex := val;
  cxPageControl1Change(nil);
end;


procedure TfmECPDoc.cxGrid1DBBandedTableView1CustomDrawCell(Sender: TcxCustomGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
	if AViewInfo.GridRecord.Selected or AViewInfo.GridRecord.Focused then begin
		ACanvas.Brush.Color := clNavy;
		ACanvas.Font.Color := clWhite;
		if AViewInfo.Focused then ACanvas.Brush.Color := clBlue;
	end;
end;

procedure TfmECPDoc.cxGrid1DBBandedTableView1CustomDrawColumnHeader(Sender: TcxGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxGridColumnHeaderViewInfo; var ADone: Boolean);
begin
	if AViewInfo.Column.Focused then begin
		ACanvas.Brush.Color := clNavy;
		ACanvas.Font.Color := clWhite;
	end;
end;

procedure TfmECPDoc.cxGrid1DBBandedTableView1FilterOnChanged(Sender: TObject);
begin
	DrawcxGridColumnOnFiltered(Sender);
end;

procedure TfmECPDoc.cxGrid1DBBandedTableView1FocusedItemChanged(Sender: TcxCustomGridTableView; APrevFocusedItem, AFocusedItem: TcxCustomGridTableItem);
begin
	cxGrid1DBBandedTableView1.Painter.Invalidate;
end;

procedure TfmECPDoc.cxGrid1DBBandedTableView1KeyPress(Sender: TObject; var Key: Char);
begin
	FilterColumnGridOnKeyPress(cxGrid1DBBandedTableView1, Key);
end;

procedure TfmECPDoc.cxPageControl1Change(Sender: TObject);
begin
  Screen.Cursor := crHourGlass;

  Query_ECPDoc.SQL.Clear;
  case cxPageControl1.ActivePageIndex of
    0: Query_ECPDoc.SQL.Add('SELECT * FROM view_doc WHERE els_cod = ''1004653067''' + iif(Fset_reason,' and ReasonID is not null',''));
    1: Query_ECPDoc.SQL.Add('SELECT * FROM view_doc WHERE els_cod = ''1006059161''' + iif(Fset_reason,' and ReasonID is not null',''));
    2: Query_ECPDoc.SQL.Add('SELECT * FROM view_doc WHERE els_cod = ''1006062218''' + iif(Fset_reason,' and ReasonID is not null',''));
  end;
  Query_ECPDoc.Open;

  Screen.Cursor := crDefault;
end;

procedure TfmECPDoc.dxBarButton2Click(Sender: TObject);
begin
  RefreshQueryGrid(cxGrid1DBBandedTableView1, 'doc_id');
end;

procedure TfmECPDoc.dxBarButton6Click(Sender: TObject);
begin
	PrintcxGrid(cxGrid1DBBandedTableView1);
end;

procedure TfmECPDoc.dxBarButton7Click(Sender: TObject);
begin
	SetdxDBGridColumns(cxGrid1DBBandedTableView1);
end;

procedure TfmECPDoc.dxBarButton8Click(Sender: TObject);
begin
	cxGrid1DBBandedTableView1.OptionsView.GroupByBox := not cxGrid1DBBandedTableView1.OptionsView.GroupByBox;
end;

procedure TfmECPDoc.dxBarButton9Click(Sender: TObject);
begin
  if dxBarButton9.Visible = ivAlways then begin
    Fid := cxGrid1DBBandedTableView1DocID.DataBinding.Field.AsInteger;
    Fname := cxGrid1DBBandedTableView1DocNum.DataBinding.Field.AsString;
    Fdate := cxGrid1DBBandedTableView1DateEnd.DataBinding.Field.AsDateTime;
    ModalResult := mrOk;
  end;
end;

procedure TfmECPDoc.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TfmECPDoc.FormDestroy(Sender: TObject);
begin
  StoreRegistryGrid(rgSave, '\Software\Lis1\MainGrids\ECPDoc', cxGrid1DBBandedTableView1);
end;

end.
