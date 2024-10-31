unit VagonNSI;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Default,
  Controls, Forms, Dialogs, DB, ADODB, ImageList, ImgList,
  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxStyles, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel,
  dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMetropolis, dxSkinMetropolisDark, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinOffice2016Colorful,
  dxSkinOffice2016Dark, dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinTheAsphaltWorld, dxSkinTheBezier, dxSkinsDefaultPainters, dxSkinValentine, dxSkinVisualStudio2013Blue,
  dxSkinVisualStudio2013Dark, dxSkinVisualStudio2013Light, dxSkinVS2010, dxSkinWhiteprint, dxSkinXmas2008Blue, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, cxNavigator, dxDateRanges, cxDBData, cxGridLevel, cxGridCustomTableView, cxGridTableView, cxGridBandedTableView,
  cxGridDBBandedTableView, cxClasses, cxGridCustomView, cxGrid, cxImageList, dxBar, dxSkinOffice2019Colorful, cxCurrencyEdit, dxScrollbarAnnotations, cxPropertiesStore;

type
  TfmVagonNSI = class(TForm)
    cxGrid1: TcxGrid;
    cxGrid1DBBandedTableView1: TcxGridDBBandedTableView;
    cxGrid1DBBandedTableView1vagon_nsi_id: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1num_vagon: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1carNumber: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1carLength: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1carEndArendaDate: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1carRace: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1carSign: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1carYear: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1carNextRepair: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1carLastRepair: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1carTypeRepair: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1carDateSob: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1carModel: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1carNSIDate: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1carTypeName: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1carOwnerCountryCode: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1carOwnerCountryName: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1carOwnerTypeName: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1carOwnerOKPO: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1carOwnerName: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1carArendatorName: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1carTonnage: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1carAxles: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1carVolume: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1carWeightDep: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1carTankType: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1carISKLDate: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1carResponse: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1carNerab: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1carApproachLine: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1carArendatorOKPO: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1carRepairProlong: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1carEndRepairProlong: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1carWeightDepSign: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1carTonnageNSI: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1carWeightDepNSI: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1dateTeleg: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1numTeleg: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1textTeleg: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1carConsPark: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1carTrustedOperator: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1carStateDate: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1date_load: TcxGridDBBandedColumn;
    cxGrid1Level1: TcxGridLevel;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle_Bold: TcxStyle;
    cxImageList2: TcxImageList;
    ADOLis: TADOConnection;
    Query_NSI: TADOQuery;
    DS_NSI: TDataSource;
    cxGrid1DBBandedTableView1carMODEL_CODE: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1ZAVOD: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1zavod_name: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1zavod_name_full: TcxGridDBBandedColumn;
    dxBarManager1: TdxBarManager;
    dxBarPopupMenu1: TdxBarPopupMenu;
    dxBarButton1: TdxBarButton;
    dxBarSubItem1: TdxBarSubItem;
    dxBarButton2: TdxBarButton;
    dxBarButton3: TdxBarButton;
    dxBarManager1Bar1: TdxBar;
    dxBarButton4: TdxBarButton;
    dxBarButton5: TdxBarButton;
    cxStyle_WhiteColor: TcxStyle;
    cxPropertiesStore1: TcxPropertiesStore;
    procedure dxBarButton1Click(Sender: TObject);
    procedure dxBarButton2Click(Sender: TObject);
    procedure dxBarButton3Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure cxGrid1DBBandedTableView1FilterOnChanged(Sender: TObject);
    procedure cxGrid1DBBandedTableView1CustomDrawCell(Sender: TcxCustomGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
    procedure cxGrid1DBBandedTableView1CustomDrawColumnHeader(Sender: TcxGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxGridColumnHeaderViewInfo; var ADone: Boolean);
    procedure cxGrid1DBBandedTableView1FocusedItemChanged(Sender: TcxCustomGridTableView; APrevFocusedItem, AFocusedItem: TcxCustomGridTableItem);
    procedure cxGrid1DBBandedTableView1KeyPress(Sender: TObject; var Key: Char);
    procedure dxBarButton5Click(Sender: TObject);
    procedure dxBarButton4Click(Sender: TObject);
  private
    Fusr_pwd         : PUser_pwd;
  public
    constructor Create(AOwner: TApplication; usr_pwd: PUser_pwd);
  end;

var
  fmVagonNSI: TfmVagonNSI;

function CreateWndVagonNSI(AppHand: THandle; usr_pwd: PUser_pwd) : variant; export;

implementation
  uses VagonChoose, Raznoe;
{$R *.dfm}


function CreateWndVagonNSI(AppHand: THandle; usr_pwd: PUser_pwd) : variant; export;
begin
  Application.Handle := AppHand;
  try
    fmVagonNSI := TfmVagonNSI.Create(Application, usr_pwd);
    //-- изменить по мере необходимости возвращаемых параметров
    if  fmVagonNSI.ShowModal = mrOk then result := VarArrayOf([-9, '']);
  finally
    fmVagonNSI.Free;
  end;
end;


constructor TfmVagonNSI.Create(AOwner: TApplication; usr_pwd: PUser_pwd);
begin
  Screen.Cursor := -11;
  inherited Create(AOwner);

  Fusr_pwd := usr_pwd;

  ADOLis.Connected := False;
  ADOLis.ConnectionString := 'Persist Security Info=True;Provider=SQLOLEDB.1;User ID='+usr_pwd^.user_name+';Password='+usr_pwd^.user_pass+';Initial Catalog='+usr_pwd^.catalog+';Data Source='+usr_pwd^.server+';';
  ADOLis.Connected := True;

  Query_NSI.Open;

  StoreRegistryGrid(rgLoad,'\Software\Lis1\VagonNSI_Grids', cxGrid1DBBandedTableView1);

  Screen.Cursor := 0;
end;

procedure TfmVagonNSI.cxGrid1DBBandedTableView1CustomDrawCell(Sender: TcxCustomGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
	if AViewInfo.GridRecord.Selected or AViewInfo.GridRecord.Focused then begin
		ACanvas.Brush.Color := clNavy;
		ACanvas.Font.Color := clWhite;
		if AViewInfo.Focused then ACanvas.Brush.Color := clBlue;
	end;
end;

procedure TfmVagonNSI.cxGrid1DBBandedTableView1CustomDrawColumnHeader(Sender: TcxGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxGridColumnHeaderViewInfo; var ADone: Boolean);
begin
  DrawcxGridColumnOnFocused(Sender, ACanvas, AViewInfo);
end;

procedure TfmVagonNSI.cxGrid1DBBandedTableView1FilterOnChanged(Sender: TObject);
begin
	DrawcxGridColumnOnFiltered(Sender);
end;

procedure TfmVagonNSI.cxGrid1DBBandedTableView1FocusedItemChanged(Sender: TcxCustomGridTableView; APrevFocusedItem, AFocusedItem: TcxCustomGridTableItem);
begin
	Sender.Painter.Invalidate;
end;

procedure TfmVagonNSI.cxGrid1DBBandedTableView1KeyPress(Sender: TObject; var Key: Char);
begin
	FilterColumnGridOnKeyPress(cxGrid1DBBandedTableView1, Key);
end;

procedure TfmVagonNSI.dxBarButton1Click(Sender: TObject);
begin
	PrintcxGrid(cxGrid1DBBandedTableView1);
end;

procedure TfmVagonNSI.dxBarButton2Click(Sender: TObject);
begin
	SetdxDBGridColumns(cxGrid1DBBandedTableView1);
end;

procedure TfmVagonNSI.dxBarButton3Click(Sender: TObject);
begin
	cxGrid1DBBandedTableView1.OptionsView.GroupByBox := not cxGrid1DBBandedTableView1.OptionsView.GroupByBox;
end;

procedure TfmVagonNSI.dxBarButton4Click(Sender: TObject);
type
  TFunc = function(etran_ip: string; etran_port: string; users_name: string; users_password: string; ip_address: string; query_xml: string): variant;
var  List : TStringList;
        i : integer;
query_xml : string;
  FEtran  : TFunc;
  handle  : THandle;
  v       : variant;
  SP      : TADOStoredProc;
begin
  fmVagonChoose := TfmVagonChoose.Create(Application);
  if fmVagonChoose.ShowModal=mrOK then begin
    Screen.Cursor := crHourglass;
    List := TStringList.Create;
    List.Text := fmVagonChoose._GetStrVagonNum;

    query_xml := '<getCarNSI version="1.0">' + char(13) + char(10);
    for i:=0 to List.Count-1 do begin
      query_xml := query_xml + '<car><carNumber value="' + List.Strings[i] + '"/></car>'  + char(13) + char(10);
    end;
    query_xml := query_xml + '<useLocalNsi/>' + char(13) + char(10);
    query_xml := query_xml + '<useCond/>' + char(13) + char(10);
    query_xml := query_xml + '<useMod11/>' + char(13) + char(10);
    query_xml := query_xml + '</getCarNSI>';
    List.Free;

    //    CreateWndGetQuery
    handle := LoadLibrary('etranECP.dll');
    @FEtran := GetProcAddress(handle, 'CreateWndGetQuery');
    v := FEtran('92.53.107.222', '7450', 'МСК_ЛЁУШКИНС', 'Auraoil@2019%', 'http://10.248.35.14:8092/EtranServer/EtranLR.dll/soap', query_xml);
    FreeLibrary(handle);

    if v[0] = True then begin
      SP := TADOStoredProc.Create(nil);
      SP.ConnectionString := ADOLis.ConnectionString;
      SP.ProcedureName := 'sp_vagon_nsi_modify';
      SP.CommandTimeout := 300;
      SP.Parameters.Refresh;

      SP.Parameters.ParamByName('@vagon_nsi_xml' ).Value := v[1];
      SP.Parameters.ParamByName('@users_group_id').Value := Fusr_pwd.user_group_id;
      SP.ExecProc;
      SP.Free;

      RefreshQueryGrid(cxGrid1DBBandedTableView1, 'vagon_nsi_id');
    end;

    Screen.Cursor := crDefault;
  end;
end;

procedure TfmVagonNSI.dxBarButton5Click(Sender: TObject);
begin
  RefreshQueryGrid(cxGrid1DBBandedTableView1, 'vagon_nsi_id');
end;

procedure TfmVagonNSI.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TfmVagonNSI.FormDestroy(Sender: TObject);
begin
  StoreRegistryGrid(rgSave,'\Software\Lis1\VagonNSI_Grids', cxGrid1DBBandedTableView1);
end;




end.
