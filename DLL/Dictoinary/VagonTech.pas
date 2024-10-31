unit VagonTech;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Default,
  Controls, Forms, Dialogs, DB, ADODB, ImageList, ImgList,
  dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
  dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMetropolis, dxSkinMetropolisDark, dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013DarkGray,
  dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinOffice2016Colorful, dxSkinOffice2016Dark, dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic,
  dxSkinSharp, dxSkinSharpPlus, dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008, dxSkinTheAsphaltWorld, dxSkinTheBezier,
  dxSkinsDefaultPainters, dxSkinValentine, dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark, dxSkinVisualStudio2013Light, dxSkinVS2010,
  dxSkinWhiteprint, dxSkinXmas2008Blue, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxStyles, cxCustomData, cxFilter,
  cxData, cxDataStorage, cxEdit, cxNavigator, dxDateRanges, cxDBData, cxCurrencyEdit, cxImageList, cxGridLevel, cxGridCustomTableView,
  cxGridTableView, cxGridBandedTableView, cxGridDBBandedTableView, cxGridCustomView, cxGrid, dxBar, cxClasses,  dxSkinOffice2019Colorful,
  dxScrollbarAnnotations, cxPropertiesStore, dxSkinWXI;

type
  TfmVagonTech = class(TForm)
    ADOLis: TADOConnection;
    dxBarManager1: TdxBarManager;
    cxGrid1: TcxGrid;
    cxGrid1DBBandedTableView1: TcxGridDBBandedTableView;
    cxGrid1Level1: TcxGridLevel;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle_Bold: TcxStyle;
    Query_Tech: TADOQuery;
    DS_Tech: TDataSource;
    cxGrid1DBBandedTableView1vagon_tech_id: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1vagon_id: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1date_load: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1NOM_VAG: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1OKPO: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1SOB: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1PR_KACH: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1SOST_VAG: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1DATE_SOST_VAG: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1PRICH_SOST: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1STAN_SOST: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1DATE_REG: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1DATE_POST: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1DATE_PL_REM: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1KOD_PL_REM: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1ZAVOD_NUM: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1ZAVOD_POST: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1TIP: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1MODEL: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1TARA: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1GRUZ: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1DLINA: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1DEPO_KAP: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1DATE_KAP: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1DEPO_DEP: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1DATE_DEP: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1DOR: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1DEPO: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1DATE_IS: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1PR_ZAP: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1OLDNUM: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1KOD_S: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1ST_PRIPISKI: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1PR_POR: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1PR_AR: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1SROK_SL: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1OKPO_AR: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1STAN_AR: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1DATE_AR: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1KUZOV: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1GABARIT: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1TIPVOZD: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1AVTOREGIM: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1AVTOREG: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1TORMOZ: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1TIPSCEP: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1TELEGA: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1TIP_POGL: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1PR_PR_SR_SL: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1KALIB_KOT: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1NAL_SL_PR: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1RICHAG: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1KOD_MODEL: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1PR_REM: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1OKPO_OPER: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1ROD: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1USL_TIP: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1KOL_OSEY: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1DEPO_IS: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1ISKL: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1KOD_AR: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1PRICHINA: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1PRIC_IZM: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1DATE_IZM: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1KV3_0: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1KV4_3: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1NORMA_KM: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1PROBEG_SOB: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1DAT_GVC: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1KV1_5: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1NUM_AREN: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1KV4_0: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1KV4_1: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1TIP_SOB: TcxGridDBBandedColumn;
    dxBarPopupMenu1: TdxBarPopupMenu;
    dxBarButton3: TdxBarButton;
    dxBarSubItem1: TdxBarSubItem;
    dxBarButton4: TdxBarButton;
    dxBarButton5: TdxBarButton;
    dxBarManager1Bar1: TdxBar;
    dxBarButton6: TdxBarButton;
    dxBarButton7: TdxBarButton;
    cxStyle_WhiteColor: TcxStyle;
    dxBarButton8: TdxBarButton;
    cxImageList2: TcxImageList;
    cxPropertiesStore1: TcxPropertiesStore;
    procedure cxGrid1DBBandedTableView1FilterOnChanged(Sender: TObject);
    procedure cxGrid1DBBandedTableView1CustomDrawCell(Sender: TcxCustomGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
    procedure cxGrid1DBBandedTableView1CustomDrawColumnHeader(Sender: TcxGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxGridColumnHeaderViewInfo; var ADone: Boolean);
    procedure cxGrid1DBBandedTableView1FocusedItemChanged(Sender: TcxCustomGridTableView; APrevFocusedItem, AFocusedItem: TcxCustomGridTableItem);
    procedure cxGrid1DBBandedTableView1KeyPress(Sender: TObject; var Key: Char);
    procedure dxBarButton3Click(Sender: TObject);
    procedure dxBarButton4Click(Sender: TObject);
    procedure dxBarButton5Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure dxBarButton7Click(Sender: TObject);
    procedure dxBarButton6Click(Sender: TObject);
    procedure dxBarButton8Click(Sender: TObject);
  private
    Fusr_pwd         : PUser_pwd;
  public
    constructor Create(AOwner: TApplication; usr_pwd: PUser_pwd);
  end;

var
  fmVagonTech: TfmVagonTech;

function CreateWndVagonTech(AppHand: THandle; usr_pwd: PUser_pwd) : variant; export;


implementation
  uses VagonChoose, Raznoe, StrUtils, FactTrackAdd;
{$R *.dfm}


function CreateWndVagonTech(AppHand: THandle; usr_pwd:PUser_pwd) : variant; export;
begin
  Application.Handle := AppHand;
  try
    fmVagonTech := TfmVagonTech.Create(Application, usr_pwd);
    //-- изменить по мере необходимости возвращаемых параметров
    if  fmVagonTech.ShowModal = mrOk then result := VarArrayOf([-9, '']);
  finally
    fmVagonTech.Free;
  end;
end;


constructor TfmVagonTech.Create(AOwner: TApplication; usr_pwd: PUser_pwd);
begin
  Screen.Cursor := -11;
  inherited Create(AOwner);

  Fusr_pwd := usr_pwd;

  ADOLis.Connected := False;
  ADOLis.ConnectionString := 'Persist Security Info=True;Provider=SQLOLEDB.1;User ID='+usr_pwd^.user_name+';Password='+usr_pwd^.user_pass+';Initial Catalog='+usr_pwd^.catalog+';Data Source='+usr_pwd^.server+';';
  ADOLis.Connected := True;

  Query_Tech.Open;

  StoreRegistryGrid(rgLoad,'\Software\Lis1\VagonTech_Grids', cxGrid1DBBandedTableView1);

  Screen.Cursor := 0;
end;


procedure TfmVagonTech.cxGrid1DBBandedTableView1CustomDrawCell(Sender: TcxCustomGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
	if AViewInfo.GridRecord.Selected or AViewInfo.GridRecord.Focused then begin
		ACanvas.Brush.Color := clNavy;
		ACanvas.Font.Color := clWhite;
		if AViewInfo.Focused then ACanvas.Brush.Color := clBlue;
	end;
end;

procedure TfmVagonTech.cxGrid1DBBandedTableView1CustomDrawColumnHeader(Sender: TcxGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxGridColumnHeaderViewInfo; var ADone: Boolean);
begin
  DrawcxGridColumnOnFocused(Sender, ACanvas, AViewInfo);
end;

procedure TfmVagonTech.cxGrid1DBBandedTableView1FilterOnChanged(Sender: TObject);
begin
	DrawcxGridColumnOnFiltered(Sender);
end;

procedure TfmVagonTech.cxGrid1DBBandedTableView1FocusedItemChanged(Sender: TcxCustomGridTableView; APrevFocusedItem, AFocusedItem: TcxCustomGridTableItem);
begin
	Sender.Painter.Invalidate;
end;

procedure TfmVagonTech.cxGrid1DBBandedTableView1KeyPress(Sender: TObject; var Key: Char);
begin
	FilterColumnGridOnKeyPress(TcxGridDBBandedTableView(TcxGridSite(Sender).GridView), Key);
end;

procedure TfmVagonTech.dxBarButton3Click(Sender: TObject);
begin
	PrintcxGrid(cxGrid1DBBandedTableView1);
end;

procedure TfmVagonTech.dxBarButton4Click(Sender: TObject);
begin
	SetdxDBGridColumns(cxGrid1DBBandedTableView1);
end;

procedure TfmVagonTech.dxBarButton5Click(Sender: TObject);
begin
	cxGrid1DBBandedTableView1.OptionsView.GroupByBox := not cxGrid1DBBandedTableView1.OptionsView.GroupByBox;
end;

procedure TfmVagonTech.dxBarButton6Click(Sender: TObject);
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

    query_xml := '';
    query_xml := query_xml + '<GetInform>';
    query_xml := query_xml + '	<ns0:getReferenceSPV4659 xmlns:ns0="http://service.siw.pktbcki.rzd/">';
    query_xml := query_xml + '		<ns0:ReferenceSPV4659Request>';
    query_xml := query_xml + '			<idUser>0</idUser>';
    query_xml := query_xml + '			<vagons>';

    List := TStringList.Create;
    List.Text := fmVagonChoose._GetStrVagonNum;
    for i := 0 to List.Count-1 do begin
      if List.Strings[i] <> '' then
        query_xml := query_xml + '			  <vagon>' + List.Strings[i] + '</vagon>';
    end;
    List.Free;

    query_xml := query_xml + '			</vagons>';
    query_xml := query_xml + '		</ns0:ReferenceSPV4659Request>';
    query_xml := query_xml + '	</ns0:getReferenceSPV4659>';
    query_xml := query_xml + '</GetInform>';

    //    CreateWndGetQuery
    handle := LoadLibrary('etranECP.dll');
    @FEtran := GetProcAddress(handle, 'CreateWndGetQuery');
    v := FEtran('92.53.107.222', '7450', 'МСК_ЛЁУШКИНС', 'Auraoil#2024%', 'http://10.248.35.14:8092/EtranServer/EtranLR.dll/soap', query_xml);
    FreeLibrary(handle);

    if v[0] = True then begin
      SP := TADOStoredProc.Create(nil);
      SP.ConnectionString := ADOLis.ConnectionString;
      SP.ProcedureName := 'sp_vagon_tech_modify';
      SP.CommandTimeout := 300;
      SP.Parameters.Refresh;

      SP.Parameters.ParamByName('@vagon_tech_xml' ).Value := v[1];
      SP.Parameters.ParamByName('@users_group_id').Value := Fusr_pwd.user_group_id;
      SP.ExecProc;
      SP.Free;

      RefreshQueryGrid(cxGrid1DBBandedTableView1, 'vagon_tech_id');
    end;

    Screen.Cursor := crDefault;
  end;
end;

procedure TfmVagonTech.dxBarButton7Click(Sender: TObject);
begin
  RefreshQueryGrid(cxGrid1DBBandedTableView1, 'vagon_tech_id');
end;

procedure TfmVagonTech.dxBarButton8Click(Sender: TObject);
begin
  fmFactTrackAdd := TfmFactTrackAdd.Create(Application, ADOLis.ConnectionString);
  fmFactTrackAdd._SetNumVagon := cxGrid1DBBandedTableView1NOM_VAG.DataBinding.Field.AsInteger;
  fmFactTrackAdd._SetDateQuery := Date;
  fmFactTrackAdd._SetUpdate := 4659;
  fmFactTrackAdd.ShowModal;

end;

procedure TfmVagonTech.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TfmVagonTech.FormDestroy(Sender: TObject);
begin
  StoreRegistryGrid(rgSave,'\Software\Lis1\VagonTech_Grids', cxGrid1DBBandedTableView1);
end;

end.
