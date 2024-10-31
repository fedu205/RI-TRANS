unit ECPCSN;

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
  Default, Raznoe, Period, DateUtils, dxSkinOffice2019Colorful, dxSkinBasic,
  dxSkinOffice2019Black, dxSkinOffice2019DarkGray, dxSkinOffice2019White,
  dxScrollbarAnnotations, dxCore;

type
  TfmECPCSN = class(TForm)
    DS_ECPCSN: TDataSource;
    Query_ECPCSN: TADOQuery;
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
    dxBarSubItem1: TdxBarSubItem;
    dxBarButton5: TdxBarButton;
    dxBarButton4: TdxBarButton;
    dxBarButton1: TdxBarButton;
    dxBarButton3: TdxBarButton;
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
    cxGrid1DBBandedTableView1CSN_id: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1CSNID: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1DocNumber: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1DocStateId: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1DocState: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1DocLastOper: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1SIDING_OWN: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1SIDING_name: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1CLORG: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1CLORG_name: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1DATE_FROM: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1DATE_TO: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1DATE_EXPIRE: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1STATION: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1WAG_COUNT: TcxGridDBBandedColumn;
    dxBarButton9: TdxBarButton;
    cxGrid1DBBandedTableView1station_name: TcxGridDBBandedColumn;
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
    procedure dxBarButton5Click(Sender: TObject);
    procedure dxBarButton4Click(Sender: TObject);
    procedure dxBarButton1Click(Sender: TObject);
    procedure dxBarButton9Click(Sender: TObject);
  private
    Fusr_pwd         : PUser_pwd;
    Fusers_group_cod : string;
    Fdate1, Fdate2 : TDateTime;
    FIO_users : string;
    Fetran_ip : string;
    Fetran_port : string;
    Fid : integer;
    Fname : string;

    procedure SetModal(val : boolean);
  public
    constructor Create(AOwner: TApplication; users_group_cod: string; usr_pwd: PUser_pwd);
  published
    property _SetModal : boolean write SetModal;
    property _GetID  : integer read Fid;
    property _GetName: string read Fname;
  end;

var
  fmECPCSN: TfmECPCSN;

function CreateWndEtranECPCSN(AppHand: THandle; users_group_cod: string; usr_pwd: PUser_pwd): variant; export;

implementation

{$R *.dfm}

function CreateWndEtranECPCSN(AppHand: THandle; users_group_cod: string; usr_pwd: PUser_pwd): variant; export;
begin
  Application.Handle := AppHand;
  try
    fmECPCSN := TfmECPCSN.Create(Application, users_group_cod, usr_pwd);

    //-- изменить по мере необходимости возвращаемых параметров
    if  fmECPCSN.ShowModal = mrOk then result := VarArrayOf([-9, '']);
  finally
    fmECPCSN.Free;
  end;
end;


constructor TfmECPCSN.Create(AOwner: TApplication; users_group_cod: string; usr_pwd: PUser_pwd);
var   login : string;
    db_name : string;
          Q : TADOQuery;
begin
  Screen.Cursor := -11;
  inherited Create(nil);

  WindowState := wsMaximized;

  Fusr_pwd := usr_pwd;
  Fusers_group_cod := users_group_cod;
//  if Fusers_group_cod =  '0' then begin login := 'Etran_GRU'; db_name := 'lis_etran'; end;
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

  login := 'Etran_GRU';
  db_name := 'lis_etran';
  Fetran_ip := '92.53.107.222';
  Fetran_port := '7450';


  Fid := -9;
  Fname := '';


  ADOEtran.Connected := False;
  ADOEtran.ConnectionString := 'Persist Security Info=True;Provider=SQLOLEDB.1;User ID='+login+';Password='+'etran'+';Initial Catalog='+db_name+';Data Source='+Fusr_pwd^.server+';';
  ADOEtran.Connected := True;


  dxBarSubItem1.Caption := StoreRegistryDate(rgLoad, '\Software\Lis1\DateTime\ECPCSN', Fdate1, Fdate2);
  Fdate1 := StartOfTheMonth(Date);
  Fdate2 := IncMonth(Fdate1, 2) - 1;
  dxBarSubItem1.Caption := FormatDateTime('mmm yy', Fdate1) + ' - ' + FormatDateTime('mmm yy', Fdate2);

  Query_ECPCSN.Connection := ADOEtran;
  Query_ECPCSN.Parameters.ParamByName('date1'     ).Value := Fdate1;
  Query_ECPCSN.Parameters.ParamByName('date2'     ).Value := Fdate2;
  Query_ECPCSN.Open;

  StoreRegistryGrid(rgLoad,'\Software\Lis1\MainGrids\ECPCSN', cxGrid1DBBandedTableView1);

  Screen.Cursor := 0;
end;


procedure TfmECPCSN.SetModal(val : boolean);
begin
  dxBarButton9.Visible := ivAlways;
end;

procedure TfmECPCSN.cxGrid1DBBandedTableView1CustomDrawCell(Sender: TcxCustomGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
	if AViewInfo.GridRecord.Selected or AViewInfo.GridRecord.Focused then begin
		ACanvas.Brush.Color := clNavy;
		ACanvas.Font.Color := clWhite;
		if AViewInfo.Focused then ACanvas.Brush.Color := clBlue;
	end;
end;

procedure TfmECPCSN.cxGrid1DBBandedTableView1CustomDrawColumnHeader(Sender: TcxGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxGridColumnHeaderViewInfo; var ADone: Boolean);
begin
	if AViewInfo.Column.Focused then begin
		ACanvas.Brush.Color := clNavy;
		ACanvas.Font.Color := clWhite;
	end;
end;

procedure TfmECPCSN.cxGrid1DBBandedTableView1FilterOnChanged(Sender: TObject);
begin
	DrawcxGridColumnOnFiltered(Sender);
end;

procedure TfmECPCSN.cxGrid1DBBandedTableView1FocusedItemChanged(Sender: TcxCustomGridTableView; APrevFocusedItem, AFocusedItem: TcxCustomGridTableItem);
begin
	cxGrid1DBBandedTableView1.Painter.Invalidate;
end;

procedure TfmECPCSN.cxGrid1DBBandedTableView1KeyPress(Sender: TObject; var Key: Char);
begin
	FilterColumnGridOnKeyPress(cxGrid1DBBandedTableView1, Key);
end;

procedure TfmECPCSN.dxBarButton1Click(Sender: TObject);
begin
  Screen.Cursor := crHourglass;

  if TControl(Sender).Tag = 1 then begin
    Fdate1 := IncMonth(Fdate1, 1);
  end;

  if TControl(Sender).Tag = 2 then begin
    Fdate1 := IncMonth(Fdate1, -1);
  end;

  Fdate2 := IncMonth(Fdate1, 1) - 1;
  dxBarSubItem1.Caption := FormatDateTime('mmmm yyyy', Fdate1);
  dxBarManager1Bar1.Reset;

  dxBarButton1.Caption := FormatDateTime('mmmm yyyy', IncMonth(Fdate1,-1));
  dxBarButton6.Caption := FormatDateTime('mmmm yyyy', IncMonth(Fdate1,1));

  Query_ECPCSN.Close;
  Query_ECPCSN.Parameters.ParamByName('date1'     ).Value := Fdate1;
  Query_ECPCSN.Parameters.ParamByName('date2'     ).Value := Fdate2;
  Query_ECPCSN.Open;

  Screen.Cursor := crDefault;

end;

procedure TfmECPCSN.dxBarButton2Click(Sender: TObject);
begin
  RefreshQueryGrid(cxGrid1DBBandedTableView1, '');
end;

procedure TfmECPCSN.dxBarButton4Click(Sender: TObject);
begin
  fmPeriod := TfmPeriod.Create(Application, Fdate1, Fdate2, 2);
  if fmPeriod.ShowModal=mrOK then begin
    Fdate1 := fmPeriod._GetMonthBegin;
    Fdate2 := fmPeriod._GetMonthEnd;
    dxBarSubItem1.Caption := FormatDateTime('mmm yy', Fdate1) + ' - ' + FormatDateTime('mmm yy', Fdate2);
    Screen.Cursor := crHourGlass;

    Query_ECPCSN.Close;
    Query_ECPCSN.Parameters.ParamByName('date1'     ).Value := Fdate1;
    Query_ECPCSN.Parameters.ParamByName('date2'     ).Value := Fdate2;
    Query_ECPCSN.Open;

    Screen.Cursor := crDefault;
  end;

end;

procedure TfmECPCSN.dxBarButton5Click(Sender: TObject);
begin
  fmPeriod := TfmPeriod.Create(Application, Fdate1, Fdate2, 3);
  if fmPeriod.ShowModal=mrOK then begin
    Fdate1 := fmPeriod._GetMonth;
    Fdate2 := IncMonth(Fdate1, 1);
    dxBarSubItem1.Caption := FormatDateTime('mmmm yyyy', Fdate1);
    Screen.Cursor := crHourGlass;

    Query_ECPCSN.Close;
    Query_ECPCSN.Parameters.ParamByName('date1'     ).Value := Fdate1;
    Query_ECPCSN.Parameters.ParamByName('date2'     ).Value := Fdate2;
    Query_ECPCSN.Open;

    Screen.Cursor := crDefault;
  end;
end;

procedure TfmECPCSN.dxBarButton6Click(Sender: TObject);
begin
	PrintcxGrid(cxGrid1DBBandedTableView1);
end;

procedure TfmECPCSN.dxBarButton7Click(Sender: TObject);
begin
	SetdxDBGridColumns(cxGrid1DBBandedTableView1);
end;

procedure TfmECPCSN.dxBarButton8Click(Sender: TObject);
begin
	cxGrid1DBBandedTableView1.OptionsView.GroupByBox := not cxGrid1DBBandedTableView1.OptionsView.GroupByBox;
end;

procedure TfmECPCSN.dxBarButton9Click(Sender: TObject);
begin
  if dxBarButton9.Visible = ivAlways then begin
    Fid := cxGrid1DBBandedTableView1CSNID.DataBinding.Field.AsInteger;
    Fname := cxGrid1DBBandedTableView1DocNumber.DataBinding.Field.AsString;
    ModalResult := mrOk;
  end;
end;

procedure TfmECPCSN.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TfmECPCSN.FormDestroy(Sender: TObject);
begin
  StoreRegistryDate(rgSave, '\Software\Lis1\DateTime\ECPCSN',  Fdate1, Fdate2);
  StoreRegistryGrid(rgSave, '\Software\Lis1\MainGrids\ECPCSN', cxGrid1DBBandedTableView1);
end;

end.
