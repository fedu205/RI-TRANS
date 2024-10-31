unit ECPInvoiceLoad;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, dxBar, cxClasses, ImgList, cxGraphics, cxPropertiesStore, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxStyles, cxCustomData, cxFilter,
  cxData, cxDataStorage, cxEdit, cxNavigator, DB, cxDBData, DBClient, Other,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView, Default, Raznoe,
  cxGridBandedTableView, cxGridDBBandedTableView, cxGridLevel, cxGrid, ComObj,
  ADODB, ExtCtrls, Menus, StdCtrls, cxButtons, StrUtils, System.ImageList,
  dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel,
  dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
  dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMetropolis, dxSkinMetropolisDark, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013DarkGray,
  dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinOffice2016Colorful,
  dxSkinOffice2016Dark, dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic,
  dxSkinSharp, dxSkinSharpPlus, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinTheAsphaltWorld, dxSkinsDefaultPainters,
  dxSkinValentine, dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue, dxSkinscxPCPainter, dxSkinsdxBarPainter,
  cxDataControllerConditionalFormattingRulesManagerDialog, cxImageList,
  dxDateRanges, dxSkinTheBezier;

type
  TfmECPInvoiceLoad = class(TForm)
    cxPropertiesStore1: TcxPropertiesStore;
    cxImageList1: TcxImageList;
    dxBarManager1: TdxBarManager;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    cxGrid1DBBandedTableView1: TcxGridDBBandedTableView;
    ClientDS_Load: TClientDataSet;
    DS_Load: TDataSource;
    ClientDS_Loadid: TAutoIncField;
    ClientDS_LoadinvTypeID: TIntegerField;
    ClientDS_LoadinvTypeName: TStringField;
    ClientDS_LoadinvBlankTypeID: TIntegerField;
    ClientDS_LoadinvBlankTypeName: TStringField;
    ClientDS_LoadinvSendKindID: TIntegerField;
    ClientDS_LoadinvSendKindName: TStringField;
    ClientDS_LoadinvSenderID: TIntegerField;
    ClientDS_LoadinvSenderName: TStringField;
    ClientDS_LoadinvSenderAddressID: TIntegerField;
    ClientDS_LoadinvSenderTGNL: TStringField;
    ClientDS_LoadinvSenderOKPO: TStringField;
    ClientDS_LoadinvRecipID: TIntegerField;
    ClientDS_LoadinvRecipName: TStringField;
    ClientDS_LoadinvRecipAddressID: TIntegerField;
    ClientDS_LoadinvRecipAddress: TStringField;
    ClientDS_LoadinvRecipTGNL: TStringField;
    ClientDS_LoadinvRecipOKPO: TStringField;
    ClientDS_LoadinvLoadTypeID: TIntegerField;
    ClientDS_LoadinvLoadTypeName: TStringField;
    ClientDS_LoadinvFromCountryCode: TStringField;
    ClientDS_LoadinvFromCountryName: TStringField;
    ClientDS_LoadinvToCountryCode: TStringField;
    ClientDS_LoadinvToCountryName: TStringField;
    ClientDS_LoadinvFromStationCode: TStringField;
    ClientDS_LoadinvFromStationName: TStringField;
    ClientDS_LoadinvFromLoadWay: TStringField;
    ClientDS_LoadinvToStationCode: TStringField;
    ClientDS_LoadinvToStationName: TStringField;
    ClientDS_LoadinvToLoadWay: TStringField;
    ClientDS_LoadinvSendSpeedID: TStringField;
    ClientDS_LoadinvSendSpeedName: TStringField;
    ClientDS_LoadinvPayPlaceID: TStringField;
    ClientDS_LoadinvPayPlaceName: TStringField;
    ClientDS_LoadinvPayFormID: TStringField;
    ClientDS_LoadinvPayFormName: TStringField;
    ClientDS_LoadinvPayerName: TStringField;
    ClientDS_LoadinvPayerCode: TStringField;
    ClientDS_LoadinvPlanCarTypeID: TStringField;
    ClientDS_LoadinvPlanCarTypeName: TStringField;
    ClientDS_LoadinvPlanCarOwnerTypeID: TStringField;
    ClientDS_LoadinvPlanCarOwnerTypeName: TStringField;
    ClientDS_LoadinvRespPerson: TStringField;
    ClientDS_LoadcarNumber: TStringField;
    ClientDS_LoadcarPriorFreightCode: TStringField;
    ClientDS_LoadcarPriorFreightName: TStringField;
    ClientDS_LoadfreightCode: TStringField;
    ClientDS_LoadfreightName: TStringField;
    cxGrid1DBBandedTableView1id: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1invTypeID: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1invTypeName: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1invBlankTypeID: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1invBlankTypeName: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1invSendKindID: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1invSendKindName: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1invSenderID: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1invSenderName: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1invSenderAddressID: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1invSenderAddress: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1invSenderTGNL: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1invSenderOKPO: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1invRecipID: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1invRecipName: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1invRecipAddressID: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1invRecipAddress: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1invRecipTGNL: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1invRecipOKPO: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1invLoadTypeID: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1invLoadTypeName: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1invFromCountryCode: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1invFromCountryName: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1invToCountryCode: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1invToCountryName: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1invFromStationCode: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1invFromStationName: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1invFromLoadWay: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1invToStationCode: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1invToStationName: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1invToLoadWay: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1invSendSpeedID: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1invSendSpeedName: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1invPayPlaceID: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1invPayPlaceName: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1invPayFormID: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1invPayFormName: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1invPayerName: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1invPayerCode: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1invPlanCarTypeID: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1invPlanCarTypeName: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1invPlanCarOwnerTypeID: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1invPlanCarOwnerTypeName: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1invRespPerson: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1carNumber: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1carPriorFreightCode: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1carPriorFreightName: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1freightCode: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1freightName: TcxGridDBBandedColumn;
    dxBarPopupMenu1: TdxBarPopupMenu;
    dxBarButton3: TdxBarButton;
    dxBarSubItem1: TdxBarSubItem;
    dxBarButton4: TdxBarButton;
    dxBarButton5: TdxBarButton;
    ClientDS_LoadfreightGNGCode: TStringField;
    ClientDS_LoadfreightGNGName: TStringField;
    Query_Passport: TADOQuery;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1: TcxStyle;
    Panel1: TPanel;
    cxButton1: TcxButton;
    cxButton2: TcxButton;
    ClientDS_LoadinvSenderAddress: TStringField;
    ClientDS_LoadfreightGNGID: TIntegerField;
    ClientDS_LoadfreightGNGID2001: TStringField;
    ClientDS_LoadinvBlankType: TStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
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
    procedure dxBarButton3Click(Sender: TObject);
    procedure dxBarButton4Click(Sender: TObject);
    procedure dxBarButton5Click(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure cxButton2Click(Sender: TObject);
  private
    FIO_users : string;

    function GetNameFromNSI(type_inf_id: integer; inf_obj_cod: string; etran_nsi_id: integer; type_find: integer): string;
    procedure SetFileName(file_name: string);
    function  StrToXML(str: string): string;
    function  ParamAddToXML(xml: string; param: string): string;
  public
    { Public declarations }
    constructor Create(AOwner: TApplication); reintroduce;
  published
    property _SetFileName : string write SetFileName;
    property _SetFIOusers : string write FIO_users;
  end;

var
  fmECPInvoiceLoad: TfmECPInvoiceLoad;

implementation

uses ECPMain;

{$R *.dfm}

constructor TfmECPInvoiceLoad.Create(AOwner: TApplication);
begin
	inherited Create(AOwner);
  Screen.Cursor := crHourglass;

  ClientDS_Load.CreateDataSet;
  ClientDS_Load.LogChanges := False;

	Screen.Cursor := crDefault;
end;

procedure TfmECPInvoiceLoad.cxButton1Click(Sender: TObject);
begin
  ModalResult := mrCancel;
  Close;
end;


function TfmECPInvoiceLoad.ParamAddToXML(xml: string; param: string): string;
begin
  if not ClientDS_Load.FieldByName(param).IsNull then
    xml := xml + '<' + param + ' value="' + StrToXML(ClientDS_Load.FieldByName(param).AsString) + '"/>' + #10#13;

  Result := xml;
end;


procedure TfmECPInvoiceLoad.cxButton2Click(Sender: TObject);
var xml : string;
    sp_etran_ecp_modify : TADOStoredProc;
    etran_ecp_id : integer;
    Q : TADOQuery;
    Fetran_ecp_type_id : integer;
begin
  Screen.Cursor := crHourGlass;


  Q := TADOQuery.Create(nil);
  Q.Connection := fmECPMain.ADOEtran;
  Q.SQL.Add('SELECT * FROM etran_inf_obj WHERE type_inf_id = 5 and inf_obj_cod = ''1''');
  Q.Open;
  Fetran_ecp_type_id := Q.FieldByName('inf_obj_id').AsInteger;
  Q.Free;


  ClientDS_Load.First;

  sp_etran_ecp_modify := TADOStoredProc.Create(nil);
  sp_etran_ecp_modify.Connection := fmECPMain.ADOEtran;
  sp_etran_ecp_modify.ProcedureName := 'sp_etran_ecp_modify';
  while not ClientDS_Load.Eof do begin

    sp_etran_ecp_modify.Parameters.Refresh;
    sp_etran_ecp_modify.Parameters.ParamByName('@etran_ecp_id'     ).Value := null;
    sp_etran_ecp_modify.Parameters.ParamByName('@type_action'      ).Value := 0;
    sp_etran_ecp_modify.Parameters.ParamByName('@etran_ecp_type_id').Value := Fetran_ecp_type_id;
    sp_etran_ecp_modify.Parameters.ParamByName('@FIO_users_create' ).Value := FIO_users;
    sp_etran_ecp_modify.ExecProc;
    etran_ecp_id := sp_etran_ecp_modify.Parameters.ParamByName('@etran_ecp_id').Value;


    xml := '<invoiceDirectLoad version="1.0">' + #10#13;
    xml := ParamAddToXML(xml, 'invTypeID');
    xml := ParamAddToXML(xml, 'invSendKindID');
    xml := ParamAddToXML(xml, 'invBlankTypeID');
    xml := ParamAddToXML(xml, 'invBlankType');
    xml := ParamAddToXML(xml, 'invSenderID');
    xml := ParamAddToXML(xml, 'invSenderAddressID');
    xml := ParamAddToXML(xml, 'invRecipID');
    xml := ParamAddToXML(xml, 'invRecipAddressID');
    xml := ParamAddToXML(xml, 'invSendSpeedID');
    xml := ParamAddToXML(xml, 'invPayPlaceID');
    xml := ParamAddToXML(xml, 'invPayFormID');
    xml := ParamAddToXML(xml, 'invPlanCarTypeID');
    xml := ParamAddToXML(xml, 'invPlanCarOwnerTypeID');
    xml := ParamAddToXML(xml, 'invLoadTypeID');
    xml := ParamAddToXML(xml, 'invSenderAddress');
    xml := ParamAddToXML(xml, 'invSenderTGNL');
    xml := ParamAddToXML(xml, 'invFromCountryCode');
    xml := ParamAddToXML(xml, 'invFromStationCode');
    xml := ParamAddToXML(xml, 'invFromLoadWay');
    xml := ParamAddToXML(xml, 'invRecipOKPO');
    xml := ParamAddToXML(xml, 'invRecipName');
    xml := ParamAddToXML(xml, 'invRecipAddress');
    xml := ParamAddToXML(xml, 'invRecipTGNL');
    xml := ParamAddToXML(xml, 'invToCountryCode');
    xml := ParamAddToXML(xml, 'invToStationCode');
    xml := ParamAddToXML(xml, 'invToLoadWay');
    xml := ParamAddToXML(xml, 'invPayerCode');
    xml := ParamAddToXML(xml, 'invPayerName');


    xml := xml + '<invFreight>' + #10#13;
    xml := ParamAddToXML(xml, 'freightCode');
    xml := ParamAddToXML(xml, 'freightGNGID');
    xml := ParamAddToXML(xml, 'freightGNGID2001');
    xml := ParamAddToXML(xml, 'freightGNGCode');
    xml := xml + '</invFreight>' + #10#13;

    xml := xml + '<invCar>' + #10#13;
    xml := ParamAddToXML(xml, 'carNumber');
    xml := ParamAddToXML(xml, 'carPriorFreightCode');
    xml := xml + '</invCar>' + #10#13;

    xml := xml + '<useMod11/>';
    xml := xml + '<useCarNSI value="0"/>';
    xml := xml + '<useWarning/>';
    xml := xml + '</invoiceDirectLoad>';

    sp_etran_ecp_modify.Parameters.Refresh;
    sp_etran_ecp_modify.Parameters.ParamByName('@etran_ecp_id'       ).Value := etran_ecp_id;
    sp_etran_ecp_modify.Parameters.ParamByName('@type_action'        ).Value := 1;
    sp_etran_ecp_modify.Parameters.ParamByName('@etran_ecp_type_id'  ).Value := Fetran_ecp_type_id;
    sp_etran_ecp_modify.Parameters.ParamByName('@etran_ecp_xml'      ).Value := xml;
    sp_etran_ecp_modify.Parameters.ParamByName('@invSenderName'      ).Value := ClientDS_Load.FieldByName('invSenderName').Value;
    sp_etran_ecp_modify.Parameters.ParamByName('@invSenderOKPO'      ).Value := ClientDS_Load.FieldByName('invSenderOKPO').Value;
    sp_etran_ecp_modify.Parameters.ParamByName('@invRecipName'       ).Value := ClientDS_Load.FieldByName('invRecipName').Value;
    sp_etran_ecp_modify.Parameters.ParamByName('@invRecipOKPO'       ).Value := ClientDS_Load.FieldByName('invRecipOKPO').Value;
    sp_etran_ecp_modify.Parameters.ParamByName('@invNumber'          ).Value := null;
    sp_etran_ecp_modify.Parameters.ParamByName('@invSendKindName'    ).Value := ClientDS_Load.FieldByName('invSendKindName').Value;
    sp_etran_ecp_modify.Parameters.ParamByName('@invFRWSubCode'      ).Value := null;
    sp_etran_ecp_modify.Parameters.ParamByName('@invFromStationName' ).Value := ClientDS_Load.FieldByName('invFromStationName').Value;
    sp_etran_ecp_modify.Parameters.ParamByName('@invToStationName'   ).Value := ClientDS_Load.FieldByName('invToStationName').Value;
    sp_etran_ecp_modify.Parameters.ParamByName('@invPayerName'       ).Value := ClientDS_Load.FieldByName('invPayerName').Value;
    sp_etran_ecp_modify.Parameters.ParamByName('@num_vagon'          ).Value := ClientDS_Load.FieldByName('carNumber').Value;
    sp_etran_ecp_modify.Parameters.ParamByName('@FIO_users_create'   ).Value := FIO_users;
    sp_etran_ecp_modify.Parameters.ParamByName('@freightName'        ).Value := ClientDS_Load.FieldByName('freightName').Value;
    sp_etran_ecp_modify.ExecProc;

    ClientDS_Load.Next;
    ShowTextMessage('Создание накладных.'+#10#13+'Осталось '+IntToStr(ClientDS_Load.RecordCount - ClientDS_Load.RecNo), False);
  end;

  sp_etran_ecp_modify.Free;
  Screen.Cursor := crDefault;
  ShowTextMessage;

  ModalResult := mrOk;
end;

procedure TfmECPInvoiceLoad.cxGrid1DBBandedTableView1CustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
	if AViewInfo.GridRecord.Selected or AViewInfo.GridRecord.Focused then begin
		ACanvas.Brush.Color := clNavy;
		ACanvas.Font.Color := clWhite;
		if AViewInfo.Focused then ACanvas.Brush.Color := clBlue;
	end;
end;

procedure TfmECPInvoiceLoad.cxGrid1DBBandedTableView1CustomDrawColumnHeader(
  Sender: TcxGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridColumnHeaderViewInfo; var ADone: Boolean);
begin
	if AViewInfo.Column.Focused then begin
		ACanvas.Brush.Color := clNavy;
		ACanvas.Font.Color := clWhite;
	end;
end;

procedure TfmECPInvoiceLoad.cxGrid1DBBandedTableView1FilterOnChanged(
  Sender: TObject);
begin
	DrawcxGridColumnOnFiltered(Sender);
end;

procedure TfmECPInvoiceLoad.cxGrid1DBBandedTableView1FocusedItemChanged(
  Sender: TcxCustomGridTableView; APrevFocusedItem,
  AFocusedItem: TcxCustomGridTableItem);
begin
	cxGrid1DBBandedTableView1.Painter.Invalidate;
end;

procedure TfmECPInvoiceLoad.cxGrid1DBBandedTableView1KeyPress(Sender: TObject; var Key: Char);
begin
	FilterColumnGridOnKeyPress(cxGrid1DBBandedTableView1, Key);
end;

function TfmECPInvoiceLoad.GetNameFromNSI(type_inf_id: integer; inf_obj_cod: string; etran_nsi_id: integer; type_find: integer): string;
// type_find = 0 поиск по id
// type_find = 1 поиск по cod
var Q: TADOQuery;
begin
  Q := TADOQuery.Create(nil);
  Q.Connection := fmECPMain.ADOEtran;

  if (type_find = 0) OR (type_find = 2) then begin
    if inf_obj_cod <> '' then begin
      Q.SQL.Add('SELECT top 1 * FROM ETRAN_NSI_INF_OBJ WHERE type_inf_id = ' + IntToStr(type_inf_id) + ' AND inf_obj_cod = ''' + inf_obj_cod + ''' AND etran_nsi_id = ' + IntToStr(etran_nsi_id));
    end else begin
      Q.SQL.Add('SELECT top 1 * FROM ETRAN_NSI_INF_OBJ WHERE type_inf_id = ' + IntToStr(type_inf_id) + ' AND etran_nsi_id = ' + IntToStr(etran_nsi_id));
    end;
  end else begin
    Q.SQL.Add('SELECT top 1 * FROM ETRAN_NSI_INF_OBJ WHERE type_inf_id = ' + IntToStr(type_inf_id) + ' AND inf_obj_cod = ''' + inf_obj_cod + '''');
  end;

  Q.Open;
  if type_find = 2 then
    Result := Q.FieldByName('inf_obj_cod').AsString
  else
    Result := Q.FieldByName('inf_obj_name').AsString;

  Q.Free;
end;

procedure TfmECPInvoiceLoad.SetFileName(file_name: string);
begin
//var exApp, exWkb, exWks : OleVariant;
//    i : integer;
//
//    Q                 : TADOQuery;
//    invTypeID         : integer;
//    invTypeName       : string;
//    invBlankTypeID    : integer;
//    invBlankTypeName  : string;
//    invSendKindID     : integer;
//    invSendKindName   : string;
//    invSenderID       : integer;
//    invSenderName     : string;
//    invSenderAddressID: integer;
//    invSenderAddress  : string;
//    invSenderTGNL     : string;
//    invSenderOKPO     : string;
//    invSendSpeedName  : string;
//    invSendSpeedID    : integer;
//    invPayPlaceID     : integer;
//    invPayPlaceName   : string;
//    invPayFormID      : integer;
//    invPayFormName    : string;
//    invRespPerson     : string;
//    invPayerName      : string;
//    invPayerCode      : string;
//
//    invFromStationCode  : string;
//    invToStationCode    : string;
//    carPriorFreightCode : string;
//    invFromStationName  : string;
//    invToStationName    : string;
//    carPriorFreightName : string;
//
//    invFromCountryCode : string;
//    invFromCountryName : string;
//    invToCountryCode   : string;
//    invToCountryName   : string;
//
//    invLoadTypeID   : integer;
//    invLoadTypeName : string;
//
//    invPlanCarTypeID      : integer;
//    invPlanCarTypeName    : string;
//    invPlanCarOwnerTypeID : integer;
//    invPlanCarOwnerTypeName : string;
//
//    invRecipID        : integer;
//    invRecipName      : string;
//    invRecipAddressID : integer;
//    invRecipAddress   : string;
//    invRecipTGNL      : string;
//    invRecipOKPO      : string;
//    invBlankTypeCod   : string;
//
//    cod : string;
//    str_query : string;
//begin
//    ShowTextMessage('Запуск сервера автоматизации...',False);
//    ClientDS_Load.EmptyDataSet;
//
//    invSenderID         := 37775;
//    invSenderName       := 'Публичное акционерное общество "Совфрахт"';
//    invSenderAddressID  := 1;
//    invSenderAddress    := '109012, г.Москва, ул. Рождественка, 1/4, тел. (495) 258-28-62';
//    invSenderTGNL       := '8917';
//    invSenderOKPO       := '01125175';
//
//    invTypeID        := 1;
//    invTypeName      := GetNameFromNSI(27, '147', invTypeID, 0);
//    invBlankTypeID   := 94;
//    invBlankTypeName := GetNameFromNSI(32, '', invBlankTypeID, 0);
//    invBlankTypeCod  := GetNameFromNSI(32, '', invBlankTypeID, 2);
//
//    invSendKindID    := 1;
//    invSendKindName  := GetNameFromNSI(16, '', invSendKindID, 0);
//    invSendSpeedID   := 2;
//    invSendSpeedName := GetNameFromNSI(15, '', invSendSpeedID, 0);
//    invPayPlaceID    := 3;
//    invPayPlaceName  := GetNameFromNSI(17, '', invPayPlaceID, 0);
//    invPayFormID     := 0;
//    invPayFormName   := GetNameFromNSI(18, '', invPayFormID, 0);
//
//    invFromCountryCode := '643';
//    invFromCountryName := GetNameFromNSI(13, invFromCountryCode, -9, 1);
//    invToCountryCode   := '643';
//    invToCountryName   := GetNameFromNSI(13, invToCountryCode, -9, 1);
//
//    invLoadTypeID   := 11;
//    invLoadTypeName := GetNameFromNSI(27, '122', invLoadTypeID, 0);
//
//    invPlanCarTypeID        := 70;
//    invPlanCarTypeName      := GetNameFromNSI(8, '', invPlanCarTypeID, 0);
//    invPlanCarOwnerTypeID   := 1;
//    invPlanCarOwnerTypeName := GetNameFromNSI(27, '7', invPlanCarOwnerTypeID, 0);
//
//    invRespPerson := 'начальник диспетческого центра Васильев М. В.';
//    invPayerName  := 'совфрахт';
//    invPayerCode  := '1000230910';
//
//    invFromStationCode  := '';
//    invToStationCode    := '';
//    carPriorFreightCode := '';
//    invFromStationName  := '';
//    invToStationName    := '';
//    carPriorFreightName := '';
//
//    invRecipID        := -9;
//    invRecipName      := '';
//    invRecipAddressID := -9;
//    invRecipAddress   := '';
//    invRecipTGNL      := '';
//    invRecipOKPO      := '';
//
//    exApp := CreateOleObject('Excel.Application');
//    exWkb := exApp.Workbooks.Open(file_name);
//    exWkb := exApp.ActiveWorkbook;
//    exWks := exWkb.WorkSheets[1];
//
//    ClientDS_Load.DisableControls;
//    i := 2;
//    while True do begin
//      if (TVarData(exWks.Cells[i, 1].Value).VType = varEmpty) then
//        break
//      else begin
//        try
//          ClientDS_Load.Append;
//          ClientDS_Load.FieldByName('invTypeID').Value          := invTypeID;
//          ClientDS_Load.FieldByName('invTypeName').Value        := invTypeName;
//          ClientDS_Load.FieldByName('invBlankTypeID').Value     := invBlankTypeID;
//          ClientDS_Load.FieldByName('invBlankType').Value       := invBlankTypeCod;
//          ClientDS_Load.FieldByName('invBlankTypeName').Value   := invBlankTypeName;
//          ClientDS_Load.FieldByName('invSendKindID').Value      := invSendKindID;
//          ClientDS_Load.FieldByName('invSendKindName').Value    := invSendKindName;
//          ClientDS_Load.FieldByName('invSenderID').Value        := invSenderID;
//          ClientDS_Load.FieldByName('invSenderName').Value      := invSenderName;
//          ClientDS_Load.FieldByName('invSenderAddressID').Value := invSenderAddressID;
//          ClientDS_Load.FieldByName('invSenderAddress').Value   := invSenderAddress;
//          ClientDS_Load.FieldByName('invSenderTGNL').Value      := invSenderTGNL;
//          ClientDS_Load.FieldByName('invSenderOKPO').Value      := invSenderOKPO;
//
//          cod := VarToStr(exWks.Cells[i, 11].Value);
//          if invRecipOKPO <> cod then begin
//
//            ShowTextMessage;
//            str_query := '<getOrgPassport version="1.0">';
//            str_query := str_query + '<orgNAME value="' + '' + '"/>';
//            str_query := str_query + '<orgOKPO value="' + cod + '"/>';
//            str_query := str_query + '</getOrgPassport>';
//
//            Query_Passport.Close;
//            fmECPTCP := TfmECPTCP.Create();
//            fmECPTCP._GetEtran(str_query);
//            if fmECPTCP.ShowModal = mrOk then begin
//              Query_Passport.Parameters.ParamByName('xml').Value := fmECPTCP._GetMsg;
//              Query_Passport.Open;
//
//              if Query_Passport.RecordCount > 0 then begin
//                invRecipID        := Query_Passport.FieldByName('orgID').AsInteger;
//                invRecipName      := Query_Passport.FieldByName('orgName').AsString;
//                invRecipAddressID := Query_Passport.FieldByName('addressID').AsInteger;
//                invRecipAddress   := exWks.Cells[i,  9].Value;
//                invRecipTGNL      := exWks.Cells[i, 10].Value;
//                invRecipOKPO      := exWks.Cells[i, 11].Value;
//              end else begin
//                invRecipID        := -9;
//                invRecipName      := '';
//                invRecipAddressID := -9;
//                invRecipAddress   := exWks.Cells[i,  9].Value;
//                invRecipTGNL      := exWks.Cells[i, 10].Value;
//                invRecipOKPO      := exWks.Cells[i, 11].Value;
//              end;
//
//            end else begin
//              invRecipID        := -9;
//              invRecipName      := '';
//              invRecipAddressID := -9;
//              invRecipAddress   := exWks.Cells[i,  9].Value;
//              invRecipTGNL      := exWks.Cells[i, 10].Value;
//              invRecipOKPO      := exWks.Cells[i, 11].Value;
//            end;
//
//          end;
//
//          ClientDS_Load.FieldByName('invRecipID').Value              := invRecipID;
//          ClientDS_Load.FieldByName('invRecipName').Value            := invRecipName;
//          ClientDS_Load.FieldByName('invRecipAddressID').Value       := invRecipAddressID;
//          ClientDS_Load.FieldByName('invRecipAddress').Value         := invRecipAddress;
//          ClientDS_Load.FieldByName('invRecipTGNL').Value            := invRecipTGNL;
//          ClientDS_Load.FieldByName('invRecipOKPO').Value            := invRecipOKPO;
//
//          ClientDS_Load.FieldByName('invLoadTypeID').Value           := invLoadTypeID;
//          ClientDS_Load.FieldByName('invLoadTypeName').Value         := invLoadTypeName;
//
//          ClientDS_Load.FieldByName('invFromCountryCode').Value      := invFromCountryCode;
//          ClientDS_Load.FieldByName('invFromCountryName').Value      := invFromCountryName;
//          ClientDS_Load.FieldByName('invToCountryCode').Value        := invToCountryCode;
//          ClientDS_Load.FieldByName('invToCountryName').Value        := invToCountryName;
//
//          cod := VarToStr(exWks.Cells[i, 4].Value);
//          if invFromStationCode <> cod then begin
//            invFromStationCode := cod;
//            invFromStationName := GetNameFromNSI(11, cod, -9, 1);
//          end;
//          ClientDS_Load.FieldByName('invFromStationCode').Value      := invFromStationCode;
//          ClientDS_Load.FieldByName('invFromStationName').Value      := invFromStationName;
//          ClientDS_Load.FieldByName('invFromLoadWay').Value          := null;
//
//          cod := VarToStr(exWks.Cells[i, 6].Value);
//          if invToStationCode <> cod then begin
//            invToStationCode := cod;
//            invToStationName := GetNameFromNSI(11, cod, -9, 1);
//          end;
//          ClientDS_Load.FieldByName('invToStationCode').Value        := invToStationCode;
//          ClientDS_Load.FieldByName('invToStationName').Value        := invToStationName;
//          ClientDS_Load.FieldByName('invToLoadWay').Value            := null;
//
//          ClientDS_Load.FieldByName('invSendSpeedID').Value          := invSendSpeedID;
//          ClientDS_Load.FieldByName('invSendSpeedName').Value        := invSendSpeedName;
//          ClientDS_Load.FieldByName('invPayPlaceID').Value           := invPayPlaceID;
//          ClientDS_Load.FieldByName('invPayPlaceName').Value         := invPayPlaceName;
//          ClientDS_Load.FieldByName('invPayFormID').Value            := invPayFormID;
//          ClientDS_Load.FieldByName('invPayFormName').Value          := invPayFormName;
//          ClientDS_Load.FieldByName('invPayerName').Value            := invPayerName;
//          ClientDS_Load.FieldByName('invPayerCode').Value            := invPayerCode;
//          ClientDS_Load.FieldByName('invPlanCarTypeID').Value        := invPlanCarTypeID;
//          ClientDS_Load.FieldByName('invPlanCarTypeName').Value      := invPlanCarTypeName;
//          ClientDS_Load.FieldByName('invPlanCarOwnerTypeID').Value   := invPlanCarOwnerTypeID;
//          ClientDS_Load.FieldByName('invPlanCarOwnerTypeName').Value := invPlanCarOwnerTypeName;
//          ClientDS_Load.FieldByName('invRespPerson').Value           := invRespPerson;
//
//          cod := VarToStr(exWks.Cells[i, 2].Value);
//          if carPriorFreightCode <> cod then begin
//            carPriorFreightCode := cod;
//            carPriorFreightName := GetNameFromNSI(1, cod, -9, 1);
//          end;
//          ClientDS_Load.FieldByName('carPriorFreightCode').Value     := carPriorFreightCode;
//          ClientDS_Load.FieldByName('carPriorFreightName').Value     := carPriorFreightName;
//
//          ClientDS_Load.FieldByName('freightCode').Value             := '421034';
//          ClientDS_Load.FieldByName('freightName').Value             := 'ВАГОНЫ ЖД СВ';
//          ClientDS_Load.FieldByName('freightGNGID').Value            := 918;
//          ClientDS_Load.FieldByName('freightGNGCode').Value          := '992200';
//          ClientDS_Load.FieldByName('freightGNGName').Value          := 'Вагоны приватные, порожние, к.п.о.';
//          ClientDS_Load.FieldByName('carNumber').AsInteger           := StrToInt(exWks.Cells[i, 1].Value);
//          ClientDS_Load.Post;
//        except
//          // Произошла ошибка при импорте из Excel файла. Все закрываем и выходим из процедуры
//          Application.MessageBox(PChar('Ошибка в Excel файле. Строка №'+IntToStr(i)+'.'), 'Ошибка', MB_OK or MB_ICONSTOP);
//          exApp.Quit;
//          VarClear(exWkb); VarClear(exApp); VarClear(exWks);
//          Screen.Cursor := crDefault;
//          ShowTextMessage();
//          exit;
//        end;
//      end;
//      ShowTextMessage('Загрузка данных из Excel'+#10#13+'Обработано строк '+IntToStr(i-1), False);
//      i := i + 1;
//    end;
//    ClientDS_Load.EnableControls;
//
//    exApp.Quit;
//    VarClear(exWks); VarClear(exWkb); VarClear(exApp);
//
//    ShowTextMessage;
end;

procedure TfmECPInvoiceLoad.dxBarButton3Click(Sender: TObject);
begin
	PrintcxGrid(cxGrid1DBBandedTableView1);
end;

procedure TfmECPInvoiceLoad.dxBarButton4Click(Sender: TObject);
begin
	SetdxDBGridColumns(cxGrid1DBBandedTableView1);
end;

procedure TfmECPInvoiceLoad.dxBarButton5Click(Sender: TObject);
begin
	cxGrid1DBBandedTableView1.OptionsView.GroupByBox := not cxGrid1DBBandedTableView1.OptionsView.GroupByBox;
end;

procedure TfmECPInvoiceLoad.FormClose(Sender: TObject;var Action: TCloseAction);
begin
	Action := caFree;
end;

function  TfmECPInvoiceLoad.StrToXML(str: string): string;
begin
  str := ReplaceStr(str, '&', '&amp;');
  str := ReplaceStr(str, '"', '&quot;');
  str := ReplaceStr(str, '''', '&apos;');
  str := ReplaceStr(str, '>', '&gt;');
  str := ReplaceStr(str, '<', '&lt;');
  Result := str;
end;


end.
