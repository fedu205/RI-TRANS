unit ECPRepairContract;

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
  cxEdit, cxNavigator, dxDateRanges, cxDBData, cxGridCustomView, cxGridCustomTableView, cxGridTableView, cxGridBandedTableView, cxGridDBBandedTableView, cxGridLevel, cxGrid,

  Raznoe, Default, Period, dxSkinOffice2019Colorful;

type
  TfmECPRepairContract = class(TForm)
    DS_RepairContract: TDataSource;
    Query_RepairContract: TADOQuery;
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
    dxBarButton4: TdxBarButton;
    dxBarButton5: TdxBarButton;
    dxBarSubItem2: TdxBarSubItem;
    dxBarButton8: TdxBarButton;
    dxBarButton9: TdxBarButton;
    dxBarButton10: TdxBarButton;
    dxBarButton13: TdxBarButton;
    dxBarSubItem5: TdxBarSubItem;
    dxBarButton14: TdxBarButton;
    dxBarButton15: TdxBarButton;
    dxBarButton1: TdxBarButton;
    dxBarButton6: TdxBarButton;
    dxBarSubItem1: TdxBarSubItem;
    dxBarButton11: TdxBarButton;
    dxBarButton12: TdxBarButton;
    cxLookAndFeelController1: TcxLookAndFeelController;
    dxSkinController1: TdxSkinController;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    cxGrid1DBBandedTableView1: TcxGridDBBandedTableView;
    cxGrid1DBBandedTableView1repair_contract_id: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1ContractID: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1ContractNum: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1ctrStateID: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1ctrState: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1ContractDateBegin: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1ContractDateEnd: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1CarOwnerID: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1CarOwnerName: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1CarOwnerINN: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1CarOwnerOKPO: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1CLorgID: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1CLorgName: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1CLorgINN: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1CLorgOKPO: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1VRPorgID: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1VRPorgName: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1VRPorgINN: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1VROKPO: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1trStationCode: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1trStationName: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1RW_ID: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1RW_ShortName: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1WagTypeID: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1WagTypeName: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1WagCount: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1vrpMonitorSign: TcxGridDBBandedColumn;
    dxBarPopupMenu1: TdxBarPopupMenu;
    dxBarButton16: TdxBarButton;
    dxBarSubItem4: TdxBarSubItem;
    dxBarButton17: TdxBarButton;
    dxBarButton18: TdxBarButton;
    procedure cxGrid1DBBandedTableView1FilterOnChanged(Sender: TObject);
    procedure cxGrid1DBBandedTableView1CustomDrawCell(Sender: TcxCustomGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
    procedure cxGrid1DBBandedTableView1CustomDrawColumnHeader(Sender: TcxGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxGridColumnHeaderViewInfo; var ADone: Boolean);
    procedure cxGrid1DBBandedTableView1FocusedItemChanged(Sender: TcxCustomGridTableView; APrevFocusedItem, AFocusedItem: TcxCustomGridTableItem);
    procedure cxGrid1DBBandedTableView1KeyPress(Sender: TObject; var Key: Char);
    procedure dxBarButton16Click(Sender: TObject);
    procedure dxBarButton17Click(Sender: TObject);
    procedure dxBarButton18Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure dxBarButton8Click(Sender: TObject);
    procedure dxBarButton9Click(Sender: TObject);
    procedure dxBarButton1Click(Sender: TObject);
    procedure dxBarButton5Click(Sender: TObject);
  private
    Fusr_pwd         : PUser_pwd;
    Fusers_group_cod : string;
    Fdate1, Fdate2 : TDateTime;
    FContractID : integer;
  public
    constructor Create(AOwner: TApplication; flag: boolean; users_group_cod: string; usr_pwd: PUser_pwd);
  published
    property _GetContractID   : integer read  FContractID;
  end;

var
  fmECPRepairContract: TfmECPRepairContract;

function CreateWndEtranECPRepairContract(AppHand: THandle; users_group_cod: string; usr_pwd: PUser_pwd): variant; export;

implementation

{$R *.dfm}

function CreateWndEtranECPRepairContract(AppHand: THandle; users_group_cod: string; usr_pwd: PUser_pwd): variant; export;
begin
  Application.Handle := AppHand;
  try
    fmECPRepairContract := TfmECPRepairContract.Create(Application, False, users_group_cod, usr_pwd);

    //-- изменить по мере необходимости возвращаемых параметров
    if  fmECPRepairContract.ShowModal = mrOk then result := VarArrayOf([-9, '']);
  finally
    fmECPRepairContract.Free;
  end;
end;


constructor TfmECPRepairContract.Create(AOwner: TApplication; flag: boolean; users_group_cod: string; usr_pwd: PUser_pwd);
var   login : string;
    db_name : string;
          Q : TADOQuery;
begin
  Screen.Cursor := -11;
  inherited Create(nil);

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

  ADOEtran.Connected := False;
  ADOEtran.ConnectionString := 'Persist Security Info=True;Provider=SQLOLEDB.1;User ID='+login+';Password='+'etran'+';Initial Catalog='+db_name+';Data Source='+Fusr_pwd^.server+';';
  ADOEtran.Connected := True;


  dxBarSubItem2.Caption := StoreRegistryDate(rgLoad, '\Software\Lis1\DateTime\ECPRepairContract', Fdate1, Fdate2);

  Query_RepairContract.Parameters.ParamByName('date1'     ).Value := Fdate1;
  Query_RepairContract.Parameters.ParamByName('date2'     ).Value := Fdate2;
  Query_RepairContract.Parameters.ParamByName('users_name').Value := login;
  Query_RepairContract.Open;

  StoreRegistryGrid(rgLoad,'\Software\Lis1\MainGrids\ECPRepairContract', cxGrid1DBBandedTableView1);


  FContractID := -9;
  if flag then begin
    dxBarButton5.Visible := ivAlways;

//    FormStyle := fsNormal;
//    Visible := False;
//    dxBarButton6.Visible := ivAlways;
//    WindowState := wsMaximized;
//    cxGrid1DBBandedTableView1.OnDblClick := dxBarButton6Click;

  end else begin

    dxBarButton5.Visible := ivNever;
  end;


  Screen.Cursor := 0;
end;

procedure TfmECPRepairContract.cxGrid1DBBandedTableView1CustomDrawCell(Sender: TcxCustomGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
	if AViewInfo.GridRecord.Selected or AViewInfo.GridRecord.Focused then begin
		ACanvas.Brush.Color := clNavy;
		ACanvas.Font.Color := clWhite;
		if AViewInfo.Focused then ACanvas.Brush.Color := clBlue;
	end;
end;

procedure TfmECPRepairContract.cxGrid1DBBandedTableView1CustomDrawColumnHeader(Sender: TcxGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxGridColumnHeaderViewInfo; var ADone: Boolean);
begin
	if AViewInfo.Column.Focused then begin
		ACanvas.Brush.Color := clNavy;
		ACanvas.Font.Color := clWhite;
	end;
end;

procedure TfmECPRepairContract.cxGrid1DBBandedTableView1FilterOnChanged(Sender: TObject);
begin
	DrawcxGridColumnOnFiltered(Sender);
end;

procedure TfmECPRepairContract.cxGrid1DBBandedTableView1FocusedItemChanged(Sender: TcxCustomGridTableView; APrevFocusedItem, AFocusedItem: TcxCustomGridTableItem);
begin
	cxGrid1DBBandedTableView1.Painter.Invalidate;
end;

procedure TfmECPRepairContract.cxGrid1DBBandedTableView1KeyPress(Sender: TObject; var Key: Char);
begin
	FilterColumnGridOnKeyPress(cxGrid1DBBandedTableView1, Key);
end;

procedure TfmECPRepairContract.dxBarButton16Click(Sender: TObject);
begin
	PrintcxGrid(cxGrid1DBBandedTableView1);
end;

procedure TfmECPRepairContract.dxBarButton17Click(Sender: TObject);
begin
	SetdxDBGridColumns(cxGrid1DBBandedTableView1);
end;

procedure TfmECPRepairContract.dxBarButton18Click(Sender: TObject);
begin
	cxGrid1DBBandedTableView1.OptionsView.GroupByBox := not cxGrid1DBBandedTableView1.OptionsView.GroupByBox;
end;

procedure TfmECPRepairContract.dxBarButton1Click(Sender: TObject);
begin
  Screen.Cursor := crHourglass;

  if TControl(Sender).Tag = 1 then begin
    Fdate1 := IncMonth(Fdate1, 1);
  end;

  if TControl(Sender).Tag = 2 then begin
    Fdate1 := IncMonth(Fdate1, -1);
  end;

  Fdate2 := IncMonth(Fdate1, 1) - 1;
  dxBarSubItem2.Caption := FormatDateTime('mmmm yyyy', Fdate1);
  dxBarManager1Bar1.Reset;

  dxBarButton1.Caption := FormatDateTime('mmmm yyyy', IncMonth(Fdate1,-1));
  dxBarButton6.Caption := FormatDateTime('mmmm yyyy', IncMonth(Fdate1,1));

  Query_RepairContract.Close;
  Query_RepairContract.Parameters.ParamByName('date1'     ).Value := Fdate1;
  Query_RepairContract.Parameters.ParamByName('date2'     ).Value := Fdate2;
  Query_RepairContract.Open;

  Screen.Cursor := crDefault;
end;

procedure TfmECPRepairContract.dxBarButton5Click(Sender: TObject);
begin
  FContractID := cxGrid1DBBandedTableView1contractid.DataBinding.Field.AsInteger;
  ModalResult := mrOk;
end;

procedure TfmECPRepairContract.dxBarButton8Click(Sender: TObject);
begin
  fmPeriod := TfmPeriod.Create(Application, Fdate1, Fdate2, 3);
  if fmPeriod.ShowModal=mrOK then begin
    Fdate1 := fmPeriod._GetMonth;
    Fdate2 := IncMonth(Fdate1, 1);
    dxBarSubItem2.Caption := FormatDateTime('mmmm yyyy', Fdate1);
    Screen.Cursor := crHourGlass;

    Query_RepairContract.Close;
    Query_RepairContract.Parameters.ParamByName('date1'     ).Value := Fdate1;
    Query_RepairContract.Parameters.ParamByName('date2'     ).Value := Fdate2;
    Query_RepairContract.Open;

    Screen.Cursor := crDefault;
  end;
end;

procedure TfmECPRepairContract.dxBarButton9Click(Sender: TObject);
begin
  fmPeriod := TfmPeriod.Create(Application, Fdate1, Fdate2, 2);
  if fmPeriod.ShowModal=mrOK then begin
    Fdate1 := fmPeriod._GetMonthBegin;
    Fdate2 := fmPeriod._GetMonthEnd;
    dxBarSubItem2.Caption := FormatDateTime('mmm yy', Fdate1) + ' - ' + FormatDateTime('mmm yy', Fdate2);
    Screen.Cursor := crHourGlass;

    Query_RepairContract.Close;
    Query_RepairContract.Parameters.ParamByName('date1'     ).Value := Fdate1;
    Query_RepairContract.Parameters.ParamByName('date2'     ).Value := Fdate2;
    Query_RepairContract.Open;

    Screen.Cursor := crDefault;
  end;
end;

procedure TfmECPRepairContract.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

end.
