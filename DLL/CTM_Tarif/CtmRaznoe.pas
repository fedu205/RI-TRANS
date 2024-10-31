unit CtmRaznoe;

interface

uses
  RailTariff_TLB, DBClient, DB, Windows, Variants, Dialogs, SysUtils, Forms,
 cxFilter, cxCustomData, cxGridDBBandedTableView, Other, classes, cxDropDownEdit,
 Messages, Registry, default, DateUtils, ADODB, StrUtils, cxStyles,
 Vcl.Graphics, cxGridTableView, cxGridBandedTableView, cxGridCustomTableView, Buttons, dxCore,
    cxClasses, cxControls, cxGridCustomView,
   cxGrid,  cxLabel, cxGridDBTableView, dxmdaset, dxBar, cxCheckComboBox,
   cxPropertiesStore, XMLDoc, xmldom, XMLIntf,  cxTextEdit, cxCheckBox,
   cxButtonEdit, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, cxPC,
    cxGridDBDataDefinitions, ExtCtrls, Menus, cxMemo, cxCalendar,
   cxCheckListBox, cxLookAndFeelPainters, cxGridExportLink, cxGridLevel, cxCurrencyEdit,
   Vcl.Controls, Vcl.Clipbrd;

 type   TRegisterAction = (rgSave, rgLoad);    // при загрузке и сохранения колонок cxGrid


procedure RefreshQueryGrid(cxGridView: TcxGridDBBandedTableView; field_name: string; values: int64=-9);
function  DateToSQL(value : TDateTime): string;
procedure FiltercxGrid4ListID(cxGridView: TcxGridDBBandedTableView; field_name: string = ''; ListID: string = '');
procedure SetdxDBGridColumns(cxGrid : TcxGridDBBandedTableView);
function  iif(param_if: boolean; param_true: Variant; param_false: Variant):Variant;
procedure PrintcxGrid(cxGridView: TcxGridDBBandedTableView);
function  ClientDataSetSort(ClientDataSet: TClientDataSet; const FieldsName: string; set_desc: boolean): boolean;
procedure GetCalcTariffEmpty2(date: TDateTime; var ClientDS: TClientDataSet; set_show_message: boolean);

function  SetOtpr(Date_ot: TDateTime) : RailTariff_TLB._RefBook2;
function  SetCars() : RailTariff_TLB._RefBook2;
procedure CtmStopServer   (var mTrfApp :RailTariff_TLB.IApplication);
function  DataXMLToSQL(ClientDS: TClientDataSet): string;

procedure GetCalcTariff(connect: TADOConnection; ctm_save_id: integer; ClientDS_param: TClientDataSet; set_show_message: boolean);

procedure GetCalcTariffEmpty(date: TDateTime; var ClientDS: TClientDataSet; set_show_message: boolean);
function  GetCalcTariffCalculate (date: TDateTime; var ClientDS: TClientDataSet; set_show_message: boolean): variant;
function  GetCalcTariffCalculate2(date: TDateTime; var ClientDS: TClientDataSet; set_show_message: boolean): variant;
function  GetCalcTariffCalculate3(date: TDateTime; var ClientDS: TClientDataSet; set_show_message: boolean): variant;

function  GetCalcRate(FRTXDocument: RailTariff_TLB.IDocument; Client_CalcParametrs: TClientDataSet; Client_Stations: TClientDataSet; Client_CargoMulti: TClientDataSet; Client_Result: TClientDataSet): boolean;
procedure CopyClientDataSet(ClientDS_sour: TClientDataSet; ClientDS_dest: TClientDataSet);

function  GetCalcDistance(node_begin_cod, node_end_cod: string; land_id : integer; node_add_cod : string; date_from_to: variant): integer; export;
function  GetPeriodOfDelivery(node_begin_cod, node_end_cod, kargoETSNG_cod: string): integer; export;

procedure GetCalcDistanceGroup(var Local_DS:TClientDataSet); export;

procedure GetPPRoute(node_begin_cod, node_end_cod: string; var ClientDS: TClientDataSet; var distance: integer); export;
procedure GetFullRoute(node_begin_cod: string; node_end_cod: string; Connect: TADOConnection; var ClientDS: TClientDataSet; set_resave: boolean); export;
procedure GetStationFindAround(ClientDS: TClientDataSet; node_cod: string; radius: integer); export;
function  GetCalcDistanceFast(node_begin_cod: string; node_end_cod: string): integer; export;
function  GetCalcDistanceGroupFast(ClientDS: TClientDataSet; node_begin_cod: string; node_end_cod: string; set_show_message: boolean): integer;

function  CalcDistance(node_begin_cod, node_end_cod: string) : integer;
function  GetTypeContainer(Otpr_id, Send_id, TranspID : integer; var ListContainer : TStringList) : boolean;
procedure ComboBoxLocateObjects(var ComboBox : TcxComboBox; value : integer);
procedure OpenRealInfo(Document : string);
function  GetTypeTransportationNew(RTXDocument: IDocument; var Client_ExRtType: TClientDataSet; node_begin_cod: string; node_end_cod: string; date_from_to: TDateTime): boolean;

procedure DrawcxGridColumnOnFiltered(cxGrid: TcxGridDBBandedTableView; Sender: TObject);
procedure FilterColumnGridOnKeyPress(cxGridView : TcxGridDBBandedTableView; var Key: Char);


var   mTrfApp           : RailTariff_TLB.IApplication;
      RaschetDoc        : RailTariff_TLB.IDocument;

implementation

uses  TariffSupportFunctions, ComObj;

function SetOtpr(Date_ot: TDateTime) : RailTariff_TLB._RefBook2;
var Filter        : OLEvariant;
    mRBFFilter    : RailTariff_TLB._RefBookFilter;
    RB_OTPR       : RailTariff_TLB._RefBook;
begin
  RB_OTPR := mTrfApp.RefBook['OTPR'] as _RefBook;
  Filter := VarArrayCreate([0,2,0,1],varvariant);
  Filter[0,0] := 'FromDate';
  Filter[1,0] := RBOP_LE;
  Filter[2,0] := Date_ot;
  Filter[0,1] := 'ToDate';
  Filter[1,1] := RBOP_GE ;
  Filter[2,1] := Date_ot;
  mRBFFilter := RB_OTPR as _RefBookFilter;
  mRBFFilter.ClearFilter;
  mRBFFilter.Filter(filter);
  Result      := mRBFFilter as _RefBook2;
  RB_OTPR     := nil;
  mRBFFilter  := nil;
end;


function SetCars() : RailTariff_TLB._RefBook2;
var Filter        : OLEvariant;
    mRBFFilter    : RailTariff_TLB._RefBookFilter;
    RB_OTPR       : RailTariff_TLB._RefBook;
begin
//  fmCtmMain.RBCars := fmCtmMain.DocRefBok.FilteredRefBook('Cars', Chr(0)) as _RefBook2
  Result := mTrfApp.RefBook['Cars'] as _RefBook2;
//  Filter := VarArrayCreate([0,2,0,1],varvariant);
//  Filter[0,0] := 'FromDate';
//  Filter[1,0] := RBOP_LE;
//  Filter[2,0] := Date_ot;
//  Filter[0,1] := 'ToDate';
//  Filter[1,1] := RBOP_GE ;
//  Filter[2,1] := Date_ot;
//  mRBFFilter := RB_OTPR as _RefBookFilter;
//  mRBFFilter.ClearFilter;
//  mRBFFilter.Filter(filter);
//  Result      := mRBFFilter as _RefBook2;
//  RB_OTPR     := nil;
//  mRBFFilter  := nil;
end;



procedure CopyClientDataSet(ClientDS_sour: TClientDataSet; ClientDS_dest: TClientDataSet);
var i : integer;
begin
  ClientDS_sour.EmptyDataSet;

  ClientDS_sour.Append;
  for i:= 0 to ClientDS_sour.FieldCount-1 do begin
    if ClientDS_dest.Fields.FindField(ClientDS_sour.Fields[i].FieldName) <> nil then begin
      ClientDS_sour.FieldByName(ClientDS_sour.Fields[i].FieldName).Value := ClientDS_dest.FieldByName(ClientDS_sour.Fields[i].FieldName).Value;
    end;
  end;
  ClientDS_sour.Post;

end;


// Пример вызова
//type
//  TFunc = procedure(connect: TADOConnection; ctm_save_id: integer; ClientDS_param: TClientDataSet; set_show_message: boolean);
//var
//  FFunc    : TFunc;
//  handle   : THandle;
//  v        : Variant;
//  ClientDS : TClientDataSet;
//begin
//  ClientDS := TClientDataSet.Create(nil);
//  ClientDS.FieldDefs.Add('id',                      ftAutoInc);
//  ClientDS.FieldDefs.Add('calc_result',             ftBoolean); // True - расчет выполнен, False - во время расчета возникла ошибка
//  ClientDS.FieldDefs.Add('node_begin_cod',          ftString, 6);
//  ClientDS.FieldDefs.Add('node_end_cod',            ftString, 6);
//  ClientDS.FieldDefs.Add('Russion_Distance',        ftInteger);  // (Россия) Расстояние
//  ClientDS.FieldDefs.Add('Russion_PerT',            ftCurrency); // (Россия) Стоимость за тонну
//  ClientDS.FieldDefs.Add('Russion_TotalPrice',      ftCurrency); // (Россия) Итоговая стоимость
//  ClientDS.FieldDefs.Add('AllCountries_Distance',   ftInteger);  // (Весь маршрут) Расстояние
//  ClientDS.FieldDefs.Add('AllCountries_PerT',       ftCurrency); // (Весь маршрут) Стоимость за тонну
//  ClientDS.FieldDefs.Add('AllCountries_TotalPrice', ftCurrency); // (Весь маршрут) Итоговая стоимость
//  ClientDS.CreateDataSet;
//  ClientDS.LogChanges := False;
//
//  ClientDS.Append;
//  ClientDS.FieldByName('node_begin_cod').Value := '623008';
//  ClientDS.FieldByName('node_end_cod'  ).Value := '165504';
//  ClientDS.Post;
//
//  ClientDS.Append;
//  ClientDS.FieldByName('node_begin_cod').Value := '703908';
//  ClientDS.FieldByName('node_end_cod'  ).Value := '820001';
//  ClientDS.Post;
//
//  ClientDS.Append;
//  ClientDS.FieldByName('node_begin_cod').Value := '888004';
//  ClientDS.FieldByName('node_end_cod'  ).Value := '076404';
//  ClientDS.Post;
//
//  ClientDS.Append;
//  ClientDS.FieldByName('node_begin_cod').Value := '800000';
//  ClientDS.FieldByName('node_end_cod'  ).Value := '000004';
//  ClientDS.Post;
//
//  ClientDS.Append;
//  ClientDS.FieldByName('node_begin_cod').Value := '523505';
//  ClientDS.FieldByName('node_end_cod'  ).Value := '540500';
//  ClientDS.Post;
//
//
//  handle := LoadLibrary('ctm_tarif.dll');
//  @FFunc := GetProcAddress(handle, 'GetCalcTariff');
//  FFunc(fmMain.Lis, 12, ClientDS, True);
//  FreeLibrary(handle);
//
//  ClientDS.First;
//  while not ClientDS.Eof do begin
//
//    ShowMessage(
//      'Ст. отпр. : ' + ClientDS.FieldByName('node_begin_cod').AsString + #10 +
//      'Ст. назн. : ' + ClientDS.FieldByName('node_end_cod').AsString + #10 +
//      'Расчет    : ' + iif(ClientDS.FieldByName('calc_result').AsBoolean, 'Успех', 'Ошибка') + #10 +
//      'Сумма за тонну (Россия)  : ' + ClientDS.FieldByName('Russion_PerT').AsString + #10 +
//      'Сумма за тонну (Маршрут) : ' + ClientDS.FieldByName('AllCountries_PerT').AsString
//    );
//
//    ClientDS.Next;
//  end;
//
//  ClientDS.Free;

// Пример смотри выше
procedure GetCalcTariff(connect: TADOConnection; ctm_save_id: integer; ClientDS_param: TClientDataSet; set_show_message: boolean);
var     FRTXApplication : IApplication;
           FRTXDocument : RailTariff_TLB.IDocument;
                      Q : TADOQuery;
   Client_CalcParametrs : TClientDataSet;
          Client_Result : TClientDataSet;
               ClientDS : TClientDataSet;
       Russion_Distance : integer;
           Russion_PerT : currency;
     Russion_TotalPrice : currency;
  AllCountries_Distance : integer;
      AllCountries_PerT : currency;
AllCountries_TotalPrice : currency;
begin
  Client_CalcParametrs := TClientDataSet.Create(nil);
  Client_CalcParametrs.FieldDefs.Add('date_from_to', ftDate);
  Client_CalcParametrs.FieldDefs.Add('node_begin_cod', ftString, 6);
  Client_CalcParametrs.FieldDefs.Add('node_begin_name', ftString, 50);
  Client_CalcParametrs.FieldDefs.Add('node_end_cod', ftString, 6);
  Client_CalcParametrs.FieldDefs.Add('node_end_name', ftString, 50);
  Client_CalcParametrs.FieldDefs.Add('PPLand', ftInteger);
  Client_CalcParametrs.FieldDefs.Add('node_begin_land_name', ftString, 100);
  Client_CalcParametrs.FieldDefs.Add('node_begin_road_name', ftString, 200);
  Client_CalcParametrs.FieldDefs.Add('node_begin_PPland', ftInteger);
  Client_CalcParametrs.FieldDefs.Add('node_begin_PPland_name', ftString, 255);
  Client_CalcParametrs.FieldDefs.Add('node_end_land_name', ftString, 100);
  Client_CalcParametrs.FieldDefs.Add('node_end_road_name', ftString, 200);
  Client_CalcParametrs.FieldDefs.Add('node_end_PPland', ftInteger);
  Client_CalcParametrs.FieldDefs.Add('node_end_PPland_name', ftString, 255);
  Client_CalcParametrs.FieldDefs.Add('ETSNG_cod', ftString, 8);
  Client_CalcParametrs.FieldDefs.Add('ETSNG_name', ftString, 800);
  Client_CalcParametrs.FieldDefs.Add('ETSNG_klass', ftString, 5);
  Client_CalcParametrs.FieldDefs.Add('GNG_cod', ftString, 8);
  Client_CalcParametrs.FieldDefs.Add('GNG_name', ftString, 800);
  Client_CalcParametrs.FieldDefs.Add('GNG_klass', ftString, 5);
  Client_CalcParametrs.FieldDefs.Add('Weight', ftFloat);
  Client_CalcParametrs.FieldDefs.Add('Otpr_name', ftString, 100);
  Client_CalcParametrs.FieldDefs.Add('Otpr_id', ftInteger);
  Client_CalcParametrs.FieldDefs.Add('Send_id', ftInteger);
  Client_CalcParametrs.FieldDefs.Add('Send_name', ftString, 100);
  Client_CalcParametrs.FieldDefs.Add('GroupSend', ftBoolean);
  Client_CalcParametrs.FieldDefs.Add('GrupVag', ftBoolean);
  Client_CalcParametrs.FieldDefs.Add('Cars_id', ftInteger);
  Client_CalcParametrs.FieldDefs.Add('Cars_name', ftString, 800);
  Client_CalcParametrs.FieldDefs.Add('Cars_gp', ftFloat);
  Client_CalcParametrs.FieldDefs.Add('Cars_axis', ftInteger);
  Client_CalcParametrs.FieldDefs.Add('Cars_TareW', ftFloat);
  Client_CalcParametrs.FieldDefs.Add('Cars_Volume', ftFloat);
  Client_CalcParametrs.FieldDefs.Add('Kol_PS', ftInteger);
  Client_CalcParametrs.FieldDefs.Add('Vag_otpr', ftInteger);
  Client_CalcParametrs.FieldDefs.Add('Owners_id', ftInteger);
  Client_CalcParametrs.FieldDefs.Add('LandOwn_id', ftInteger);
  Client_CalcParametrs.FieldDefs.Add('LandOwn_name', ftString, 100);
  Client_CalcParametrs.FieldDefs.Add('Option2', ftBoolean);
  Client_CalcParametrs.FieldDefs.Add('Option4', ftBoolean);
  Client_CalcParametrs.FieldDefs.Add('Option6', ftBoolean);
  Client_CalcParametrs.FieldDefs.Add('Option8', ftBoolean);
  Client_CalcParametrs.FieldDefs.Add('Option10', ftBoolean);
  Client_CalcParametrs.FieldDefs.Add('Option12', ftBoolean);
  Client_CalcParametrs.FieldDefs.Add('Support_id', ftInteger);
  Client_CalcParametrs.FieldDefs.Add('Support_Caption', ftString, 200);
  Client_CalcParametrs.FieldDefs.Add('Support_Kol_Conductor', ftInteger);
  Client_CalcParametrs.FieldDefs.Add('Support_Axis', ftInteger);
  Client_CalcParametrs.FieldDefs.Add('Support_Vochr', ftCurrency);
  Client_CalcParametrs.FieldDefs.Add('Empty_GNG_cod', ftString, 8);
  Client_CalcParametrs.FieldDefs.Add('Empty_GNG_name', ftString, 500);
  Client_CalcParametrs.FieldDefs.Add('Empty_ETSNG_cod', ftString, 6);
  Client_CalcParametrs.FieldDefs.Add('Empty_ETSNG_name', ftString, 800);
  Client_CalcParametrs.FieldDefs.Add('Empty_loading', ftBoolean);
  Client_CalcParametrs.FieldDefs.Add('VCGuard', ftInteger);
  Client_CalcParametrs.FieldDefs.Add('Comment', ftMemo);
  Client_CalcParametrs.FieldDefs.Add('Bulkiness', ftString, 5);
  Client_CalcParametrs.FieldDefs.Add('Bulkiness_name', ftString, 200);
  Client_CalcParametrs.FieldDefs.Add('Container_name', ftString, 250);
  Client_CalcParametrs.FieldDefs.Add('Container_id', ftInteger);
  Client_CalcParametrs.FieldDefs.Add('Kit_id', ftInteger);
  Client_CalcParametrs.FieldDefs.Add('Multiple_kit', ftBoolean);
  Client_CalcParametrs.FieldDefs.Add('ExitRoute_id', ftInteger);
  Client_CalcParametrs.FieldDefs.Add('ExitRoute_name', ftString, 255);
  Client_CalcParametrs.FieldDefs.Add('route_name', ftString, 500);
  Client_CalcParametrs.FieldDefs.Add('distance', ftInteger);
  Client_CalcParametrs.FieldDefs.Add('currency_id', ftInteger);
  Client_CalcParametrs.FieldDefs.Add('enable_alt_route', ftBoolean);
  Client_CalcParametrs.FieldDefs.Add('route_id', ftInteger);
  Client_CalcParametrs.FieldDefs.Add('node_washing_cod', ftString, 20);
  Client_CalcParametrs.FieldDefs.Add('node_washing_name', ftString, 200);
  Client_CalcParametrs.FieldDefs.Add('node_washing_ppland', ftString, 50);
  Client_CalcParametrs.FieldDefs.Add('node_washing_road', ftString, 50);
  Client_CalcParametrs.FieldDefs.Add('Bulkiness_param', ftString, 1000);
  Client_CalcParametrs.FieldDefs.Add('Option14', ftBoolean);
  Client_CalcParametrs.FieldDefs.Add('Project_Tariff_Index_2017', ftBoolean);
  Client_CalcParametrs.FieldDefs.Add('NEW_DISTANCES', ftBoolean);
  Client_CalcParametrs.FieldDefs.Add('PROJECT_TARIF_2017', ftBoolean);
  Client_CalcParametrs.FieldDefs.Add('buffer_ID', ftInteger);
  Client_CalcParametrs.FieldDefs.Add('buffer_Name', ftString, 200);
  Client_CalcParametrs.FieldDefs.Add('buffer_TranspId', ftInteger);
  Client_CalcParametrs.FieldDefs.Add('buffer_TranspName', ftString, 200);
  Client_CalcParametrs.FieldDefs.Add('buffer_OwnerId', ftInteger);
  Client_CalcParametrs.FieldDefs.Add('buffer_Count', ftInteger);
  Client_CalcParametrs.FieldDefs.Add('buffer_Axis', ftInteger);
  Client_CalcParametrs.FieldDefs.Add('buffer_ControlFrameWeight', ftInteger);
  Client_CalcParametrs.FieldDefs.Add('buffer_OwnerName', ftString, 200);
  Client_CalcParametrs.FieldDefs.Add('FlatWagonId', ftInteger);
  Client_CalcParametrs.FieldDefs.Add('FlatWagonCaption', ftString, 100);
  Client_CalcParametrs.FieldDefs.Add('FWCount', ftInteger);
  Client_CalcParametrs.FieldDefs.Add('FWOwnP', ftInteger);
  Client_CalcParametrs.FieldDefs.Add('FWOwnPCaption', ftString, 50);
  Client_CalcParametrs.FieldDefs.Add('FWOwnD', ftInteger);
  Client_CalcParametrs.FieldDefs.Add('FWOCE', ftInteger);
  Client_CalcParametrs.FieldDefs.Add('TARIFFMARK64', ftBoolean);
  Client_CalcParametrs.FieldDefs.Add('ADDSTATION', ftBoolean);
  Client_CalcParametrs.FieldDefs.Add('MODELOW', ftBoolean);
  Client_CalcParametrs.FieldDefs.Add('MODELOWN', ftBoolean);
  Client_CalcParametrs.FieldDefs.Add('MODELOWND', ftBoolean);
  Client_CalcParametrs.FieldDefs.Add('Project_Tariff_AddIndex_2018', ftBoolean);
  Client_CalcParametrs.FieldDefs.Add('Project_Tariff_Index_2018', ftBoolean);
  Client_CalcParametrs.CreateDataSet;
  Client_CalcParametrs.LogChanges := False;

  Client_Result := TClientDataSet.Create(nil);
  Client_Result.FieldDefs.Add('LandName', ftString, 60);
  Client_Result.FieldDefs.Add('Direction_id', ftInteger);
  Client_Result.FieldDefs.Add('LandId', ftInteger);
  Client_Result.FieldDefs.Add('CalcDsc', ftString, 30);
  Client_Result.FieldDefs.Add('BasePrice', ftCurrency);
  Client_Result.FieldDefs.Add('TotalPrice', ftCurrency);
  Client_Result.FieldDefs.Add('NDS', ftCurrency);
  Client_Result.FieldDefs.Add('GuardNDS', ftCurrency);
  Client_Result.FieldDefs.Add('PerT', ftCurrency);
  Client_Result.FieldDefs.Add('ABBR', ftString, 10);
  Client_Result.FieldDefs.Add('Direction', ftString, 5);
  Client_Result.FieldDefs.Add('id', ftInteger);
  Client_Result.FieldDefs.Add('CurrencyID', ftInteger);
  Client_Result.FieldDefs.Add('PerT_PP', ftCurrency);
  Client_Result.FieldDefs.Add('Distance', ftFloat);
  Client_Result.FieldDefs.Add('Vohr', ftBoolean);
  Client_Result.FieldDefs.Add('GuardPrice', ftCurrency);
  Client_Result.FieldDefs.Add('ShemaNo', ftString, 100);
  Client_Result.FieldDefs.Add('SoprPrice', ftCurrency);
  Client_Result.FieldDefs.Add('AddDues', ftCurrency);
  Client_Result.FieldDefs.Add('TotalPriceWoNDS', ftCurrency);
  Client_Result.FieldDefs.Add('PerTwoNDS', ftCurrency);
  Client_Result.FieldDefs.Add('FromNewCode', ftString, 6);
  Client_Result.FieldDefs.Add('ToNewCode', ftString, 6);
  Client_Result.FieldDefs.Add('KIT', ftInteger);
  Client_Result.FieldDefs.Add('OrderId', ftInteger);
  Client_Result.FieldDefs.Add('set_distance', ftBoolean);
  Client_Result.FieldDefs.Add('WashingState', ftInteger);
  Client_Result.FieldDefs.Add('FromStationPID', ftInteger);
  Client_Result.FieldDefs.Add('ToStationPID', ftInteger);
  Client_Result.CreateDataSet;
  Client_Result.LogChanges := False;


  try
    FRTXApplication := RTXCreate2(CTM_Server, CTM_User, CTM_Password);
    FRTXApplication.Initialize('');
  except
    FRTXApplication := nil;
    exit;
  end;

  FRTXDocument := FRTXApplication.CreateDocument;

  // Загружаем расчет
  Q := TADOQuery.Create(nil);
  Q.Connection := connect;
  Q.SQL.Add('SELECT * FROM view_ctm_new_save WHERE ctm_save_id = ' + IntToStr(ctm_save_id));
  Q.Open;

  ClientDS := TClientDataSet.Create(nil);
  ClientDS.XMLData := Q.FieldByName('Client_CalcParametrs').Value;
  CopyClientDataSet(Client_CalcParametrs, ClientDS);
  ClientDS.Free;
  Q.Free;

  // Устанавливаем параметры
  // Валюта RUB (по всем странам)
  Client_CalcParametrs.Edit;
  Client_CalcParametrs.FieldByName('currency_id').AsInteger := 3;
  Client_CalcParametrs.Post;


  ClientDS_param.First;
  while not ClientDS_param.Eof do begin
    if set_show_message then ShowTextMessage('Расчет ставки. Маршрут ' + ClientDS_param.FieldByName('node_begin_cod').AsString + ' - ' + ClientDS_param.FieldByName('node_end_cod').AsString + '...', False);


    Client_CalcParametrs.Edit;
    Client_CalcParametrs.FieldByName('node_begin_cod').Value := ClientDS_param.FieldByName('node_begin_cod').Value;
    Client_CalcParametrs.FieldByName('node_end_cod'  ).Value := ClientDS_param.FieldByName('node_end_cod').Value;
    Client_CalcParametrs.Post;

    Client_Result.EmptyDataSet;
    if GetCalcRate(FRTXDocument, Client_CalcParametrs, nil, nil, Client_Result) then begin

      Russion_Distance        := 0;
      Russion_PerT            := 0;
      Russion_TotalPrice      := 0;
      AllCountries_Distance   := 0;
      AllCountries_PerT       := 0;
      AllCountries_TotalPrice := 0;
      Client_Result.First;
      while not Client_Result.Eof do begin

        if Client_Result.FieldByName('LandId').AsInteger = 20 then begin
          Russion_Distance   := Russion_Distance   + Client_Result.FieldByName('Distance').AsInteger;
          Russion_PerT       := Russion_PerT       + Client_Result.FieldByName('PerT').AsCurrency;
          Russion_TotalPrice := Russion_TotalPrice + Client_Result.FieldByName('TotalPrice').AsCurrency;
        end;

        AllCountries_Distance   := AllCountries_Distance   + Client_Result.FieldByName('Distance').AsInteger;
        AllCountries_PerT       := AllCountries_PerT       + Client_Result.FieldByName('PerT').AsCurrency;
        AllCountries_TotalPrice := AllCountries_TotalPrice + Client_Result.FieldByName('TotalPrice').AsCurrency;

        Client_Result.Next;
      end;


      ClientDS_param.Edit;
      ClientDS_param.FieldByName('calc_result'             ).Value := True;
      ClientDS_param.FieldByName('Russion_Distance'        ).Value := Russion_Distance;
      ClientDS_param.FieldByName('Russion_PerT'            ).Value := Russion_PerT;
      ClientDS_param.FieldByName('Russion_TotalPrice'      ).Value := Russion_TotalPrice;
      ClientDS_param.FieldByName('AllCountries_Distance'   ).Value := AllCountries_Distance;
      ClientDS_param.FieldByName('AllCountries_PerT'       ).Value := AllCountries_PerT;
      ClientDS_param.FieldByName('AllCountries_TotalPrice' ).Value := AllCountries_TotalPrice;
      ClientDS_param.Post;

    end else begin
      ClientDS_param.Edit;
      ClientDS_param.FieldByName('calc_result').Value := False;
      ClientDS_param.Post;
    end;





    ClientDS_param.Next;
  end;

  if set_show_message then ShowTextMessage;

  FRTXDocument    := nil;
  FRTXApplication := nil;
end;

function GetCalcTariffCalculate(date: TDateTime; var ClientDS: TClientDataSet; set_show_message: boolean): variant;
var RTXApplication : RailTariff_TLB.IApplication;
    RTXDocument    : RailTariff_TLB.IDocument;
    RTXResult      : RailTariff_TLB.IDocNode;
    price_sum      : Currency;
    rod_vagon_cod  : integer;
    period_of_delivery : integer;
    period_of_empty    : integer;
    period_of_full     : integer;
    direction      : integer;
    rate_avg_val   : Currency;
    d1, d2 : integer;
begin
  try
    RTXApplication := RTXCreate2(CTM_Server, CTM_User, CTM_Password);
    RTXApplication.Initialize('');
  except
    RTXApplication := nil;
    exit;
  end;
  RTXDocument := RTXApplication.CreateDocument;
//  (RTXDocument as IDocumentAttr).OnDate(Date);
//  RTXDocument.Data.Value['CommonForCalc\ReqCurrencyCode'] := 0;
//  (RTXDocument as IDocumentAttr).FromStation('639608', 20);
//  (RTXDocument as IDocumentAttr).ToStation('639608', 20);
//  (RTXDocument as IDocumentAttr).Send(1000, 4, 0, 2);
//  (RTXDocument as IDocumentAttr5).FreightEx('214043', '', '27410000', 60);
//  (RTXDocument as IDocumentAttr2).WagonOwnerLand(20, True);
//  RTXDocument.Data.Value['RouteProperties\IsBackRoutePresent'] := 1;
//  (RTXDocument as IDocumentAttr).Wagon(90, 2, 1, 60);
//  RTXDocument.Data.Value['Vagon\VSCount']  := 1;
//  RTXDocument.Data.Value['Vagon\TareW']    := 23;
//  RTXDocument.Data.Value['Vagon\OCE']      := 4;
//  RTXDocument.Data.Value['RouteProperties\IsBackRoutePresent']:= 0;
//  (RTXDocument as IDocumentAttr).Support(0, 1, 4);
//  RTXDocument.Data.Value['Vagon\VCGuard'] := 1;
//  RTXDocument.Data.Value['RouteProperties\ExitRouteEnabled'] := 0;
//  RTXDocument.Data.Value['Vagon\FlatWagonId'] := 0;
//  RTXDocument.Data.Value['Vagon\VagonPID' ]   := 1;
//  RTXDocument.Data.Value['SubsidyKLG' ]       := 0;
//  (RTXDocument as IDocumentControl).DoCalcDistance;
//  (RTXDocument as IDocumentAttr12).BackRoutePresent := True;
//  RTXDocument.Data.Value['RouteProperties\ExitRouteEnabled'] := 0;
//  RTXDocument.Calculate;
//  RTXDocument.Data.Node['Routes'].AsTable.First;
//
////  ss := (RTXDocument as IDocument1).DataAsXML;
////  clipboard := TClipboard.Create;
////  clipboard.AsText := FormatXMLData(ss);
////  Application.MessageBox(PChar('Данные скопированы в буфер обмена.'), 'Внимание', MB_OK);
////  clipboard.Free;
//
//
//  RTXResult := RTXDocument.Result;
//  RTXResult.AsTable.First;
//  while not RTXResult.AsTable.EOF do  begin
//    price_sum := RTXResult.Value['TotalPrice'];
//    ShowMessage(FloatToStr(price_sum));
//    RTXResult.AsTable.Next;
//  end;

  if ClientDS.FieldByName('rod_vagon_cod').AsString = '1'       then rod_vagon_cod := 1 // крытый
  else if ClientDS.FieldByName('rod_vagon_cod').AsString =  '2' then rod_vagon_cod := 3 // полувагон
  else if ClientDS.FieldByName('rod_vagon_cod').AsString =  '5' then rod_vagon_cod := 2 // платформа
  else if ClientDS.FieldByName('rod_vagon_cod').AsString = '20' then rod_vagon_cod := 2 // платформа
  else if ClientDS.FieldByName('rod_vagon_cod').AsString = '70' then rod_vagon_cod := 96 // цистерна
  else if ClientDS.FieldByName('rod_vagon_cod').AsString = '84' then rod_vagon_cod := 1007 // изотермический
  else if ClientDS.FieldByName('rod_vagon_cod').AsString = '93' then rod_vagon_cod := 32 // хоппер-цементовоз
  else rod_vagon_cod := -9;

  (RTXDocument as IDocumentAttr).OnDate     (ClientDS.FieldByName('date_from_to').AsDateTime);
  (RTXDocument as IDocumentAttr).FromStation(ClientDS.FieldByName('node_end_cod'  ).AsString, 20);
  (RTXDocument as IDocumentAttr).ToStation  (ClientDS.FieldByName('node_begin_cod').AsString, 20);


  // 1000 - Повагонная, 1/4 - Универсальные/Цистерны, 0 - Немаршрутная, 2 - Скорость грузовая
  if rod_vagon_cod = 96 then
    (RTXDocument as IDocumentAttr).Send(1000, 4, 0, 2)
  else if rod_vagon_cod = 32 then
    (RTXDocument as IDocumentAttr).Send(1000, 2, 0, 2)
  else
    (RTXDocument as IDocumentAttr).Send(1000, 1, 0, 2);
  // Груз
  //ClientDS.FieldByName('kargoGNG_cod').AsString
  (RTXDocument as IDocumentAttr5).FreightEx(ClientDS.FieldByName('kargoETSNG_cod').AsString, '', ClientDS.FieldByName('kargoGNG_cod').AsString, 60);
  RTXDocument.Data.Value['RouteProperties\IsBackRoutePresent'] := 1;

  // 2 - Собственный, 1 - кол-во вагонов в отправке
  (RTXDocument as IDocumentAttr).Wagon(rod_vagon_cod, 2, 1, 68);
  // 1 - кол-во вагонов в отправке
  RTXDocument.Data.Value['Vagon\VSCount'] := 1;
  RTXDocument.Data.Value['RouteProperties\IsBackRoutePresent']:= 0;

//  // Возврат порожних вагонов/контейнеров
//  (RTXDocument as IDocumentAttr12).BackRoutePresent := True;

  RTXDocument.Data.Value['CommonForCalc\ReqCurrencyCode'] := 810;
  (RTXDocument as IDocumentControl).DoCalcDistance;

  ClientDS.First;
  while not ClientDS.Eof do begin

    if set_show_message then
      ShowTextMessage('Расчет ставки: ' + IntToStr(ClientDS.RecNo) + ' из ' + IntToStr(ClientDS.RecordCount) + '...', False);

    try
      RTXDocument.Data.Value['Vagon\OwnerId'] := 2;


      if ClientDS.FieldByName('distance').AsInteger <> -9 then begin

        RTXDocument.Data.Node['LandTrf'].AsTable.First;
        while not RTXDocument.Data.Node['LandTrf'].AsTable.EOF do begin
          RTXDocument.Data.Value['LandTrf\Distance\ActualValue'] := True;
          RTXDocument.Data.Value['LandTrf\Distance'] := ClientDS.FieldByName('distance').AsInteger;
          RTXDocument.Data.Node['LandTrf'].AsTable.Next;
        end;
      end;

      // Возврат порожних вагонов/контейнеров
      (RTXDocument as IDocumentAttr12).BackRoutePresent := True;

      (RTXDocument as IDocumentControl).DoCalcTariff;

      // 1 - прямое, 2 - обратное, 0 - и прямое и обратное
      period_of_delivery := (RTXDocument as IDocumentAttr26).GetPeriodOfDelivery(0);
      period_of_full     := (RTXDocument as IDocumentAttr26).GetPeriodOfDelivery(1);
      period_of_empty    := (RTXDocument as IDocumentAttr26).GetPeriodOfDelivery(2);

//      period_of_empty    := (RTXDocument as IDocumentAttr26).GetRunDays(2);
//      d1 := (RTXDocument as IDocumentAttr26).GetRunDays(2);
//      d2 := (RTXDocument as IDocumentAttr26).GetDopDays(2);
//
//      ShowMessage(IntToStr(period_of_empty) + ':' + IntToStr(d1) + ':' + IntToStr(d2));

      price_sum := 0;
      RTXResult := RTXDocument.Result;
      RTXResult.AsTable.First;
      while not RTXResult.AsTable.EOF do begin

        if RTXResult.Value['LandId'] = 20 then begin
          direction := RTXResult.Value['Direction'];
          if direction = 2 then
            price_sum := price_sum + RTXResult.Value['TotalPriceWoNDS'];
        end;

        RTXResult.AsTable.Next;
      end;
    except
      price_sum := -9;
    end;

    ClientDS.Edit;
    ClientDS.FieldByName('rate_empty_val').Value := price_sum;
    ClientDS.FieldByName('route_days'    ).Value := period_of_delivery;
    ClientDS.FieldByName('route_empty'   ).Value := period_of_empty;
    ClientDS.FieldByName('route_full'    ).Value := period_of_full;
    if ClientDS.FieldByName('route_days').AsInteger = 0 then
      ClientDS.FieldByName('rate_avg_val'  ).Value := 0
    else
      ClientDS.FieldByName('rate_avg_val'  ).Value := (ClientDS.FieldByName('rate_full_val').Value-ClientDS.FieldByName('rate_empty_val').Value)/ClientDS.FieldByName('route_days').Value;
    ClientDS.Post;

    ClientDS.Next;
  end;

  if set_show_message then ShowTextMessage;

  RTXResult      := nil;
  RTXDocument    := nil;
  RTXApplication := nil;

  rate_avg_val := 0;
  ClientDS.First;
  while not ClientDS.Eof do begin
    rate_avg_val := rate_avg_val + ClientDS.FieldByName('rate_avg_val').AsCurrency;
    ClientDS.Next;
  end;
  rate_avg_val := rate_avg_val / ClientDS.RecordCount;
  Result := rate_avg_val;
end;



function GetCalcTariffCalculate2(date: TDateTime; var ClientDS: TClientDataSet; set_show_message: boolean): variant;
var RTXApplication : RailTariff_TLB.IApplication;
    RTXDocument    : RailTariff_TLB.IDocument;
    RTXResult      : RailTariff_TLB.IDocNode;
    price_sum      : Currency;
    rod_vagon_cod  : integer;
    period_of_delivery : integer;
    period_of_empty    : integer;
    period_of_full     : integer;
    direction      : integer;
    rate_avg_val   : Currency;
    d1, d2 : integer;
    otpr_id, send_id : integer;

    v : Variant;
var      ss : string;
  clipboard : TClipboard;
begin
  try
    RTXApplication := RTXCreate2(CTM_Server, CTM_User, CTM_Password);
    RTXApplication.Initialize('');
  except
    RTXApplication := nil;
    exit;
  end;
  RTXDocument := RTXApplication.CreateDocument;
//  ss := (RTXDocument as IDocument1).DataAsXML;
//  clipboard := TClipboard.Create;
//  clipboard.AsText := FormatXMLData(ss);
//  Application.MessageBox(PChar('Данные скопированы в буфер обмена.'), 'Внимание', MB_OK);
//  clipboard.Free;

  ClientDS.First;
  while not ClientDS.Eof do begin

    if set_show_message then
      ShowTextMessage('Rail-Тариф.' + #10 + 'Расчет ставки: ' + IntToStr(ClientDS.RecNo) + ' из ' + IntToStr(ClientDS.RecordCount) + '...', False);

    try
      RTXDocument.New;

      (RTXDocument as IDocumentAttr).OnDate     (ClientDS.FieldByName('date_from_to').AsDateTime);
      (RTXDocument as IDocumentAttr).FromStation(ClientDS.FieldByName('node_begin_cod').AsString, 20);
      (RTXDocument as IDocumentAttr).ToStation  (ClientDS.FieldByName('node_end_cod'  ).AsString, 20);

//      v := (RTXDocument as IDocumentAttr30).GngCodesFilteredByEtsngCode(ClientDS.FieldByName('kargoETSNG_cod').AsString, True);
//      if VarArrayDimCount(v) > 0 then
//        (RTXDocument as IDocumentAttr5).FreightEx(ClientDS.FieldByName('kargoETSNG_cod').AsString, '', v[0], 60)
//      else
//        (RTXDocument as IDocumentAttr5).FreightEx(ClientDS.FieldByName('kargoETSNG_cod').AsString, '', '', 60);

      (RTXDocument as IDocumentAttr5).FreightEx(ClientDS.FieldByName('kargoETSNG_cod').AsString, '', '', ClientDS.FieldByName('fact_weight').AsFloat);
      (RTXDocument as IDocumentAttr30).SetWagonByNumber(ClientDS.FieldByName('num_vagon').AsString);

      if ClientDS.FieldByName('set_route').AsBoolean then begin
        otpr_id := RTXDocument.Data.Value['Send\OTPRId'];
        send_id := RTXDocument.Data.Value['Send\SendId'];
        (RTXDocument as IDocumentAttr).Send(otpr_id, send_id, 1, 2);
      end;


//  ss := (RTXDocument as IDocument1).DataAsXML;
//  clipboard := TClipboard.Create;
//  clipboard.AsText := FormatXMLData(ss);
//  Application.MessageBox(PChar('Данные скопированы в буфер обмена.'), 'Внимание', MB_OK);
//  clipboard.Free;

      RTXDocument.Data.Value['Vagon\OwnerId'] := 1; // 1- общий парк 2 - Собственный
      RTXDocument.Data.Value['Vagon\VSCount'] := ClientDS.FieldByName('vagon_count').AsInteger; // кол-во вагонов в отправке
      RTXDocument.Data.Value['CommonForCalc\ReqCurrencyCode'] := 810;
      (RTXDocument as IDocumentControl).DoCalcDistance;

//      // Возврат порожних вагонов/контейнеров
//      (RTXDocument as IDocumentAttr12).BackRoutePresent := False;
      (RTXDocument as IDocumentControl).DoCalcTariff;


      price_sum := 0;
      RTXResult := RTXDocument.Result;
      RTXResult.AsTable.First;
      while not RTXResult.AsTable.EOF do begin

        if RTXResult.Value['LandId'] = 20 then begin
          direction := RTXResult.Value['Direction'];
          if direction = 1 then
            price_sum := price_sum + RTXResult.Value['TotalPriceWoNDS'];
        end;

        RTXResult.AsTable.Next;
      end;
    except
      price_sum := -9;
    end;

    ClientDS.Edit;
    ClientDS.FieldByName('rate_val').Value := price_sum;
    ClientDS.Post;

    ClientDS.Next;
  end;

  if set_show_message then ShowTextMessage;

  RTXResult      := nil;
  RTXDocument    := nil;
  RTXApplication := nil;

end;



function GetCalcTariffCalculate3(date: TDateTime; var ClientDS: TClientDataSet; set_show_message: boolean): variant;
var RTXApplication : RailTariff_TLB.IApplication;
    RTXDocument    : RailTariff_TLB.IDocument;
    RTXResult      : RailTariff_TLB.IDocNode;
    price_sum      : Currency;
    rod_vagon_cod  : integer;
    period_of_delivery : integer;
    period_of_empty    : integer;
    period_of_full     : integer;
    direction      : integer;
    rate_avg_val   : Currency;
    d1, d2 : integer;
    otpr_id, send_id : integer;

    v : Variant;

    ClientDS_CalcRate: TClientDataSet;

var      ss : string;
  clipboard : TClipboard;
begin
  ClientDS_CalcRate := TClientDataSet.Create(nil);
  ClientDS_CalcRate.FieldDefs.Add('node_begin_cod', ftString, 6);
  ClientDS_CalcRate.FieldDefs.Add('node_end_cod',   ftString, 6);
  ClientDS_CalcRate.FieldDefs.Add('kargoETSNG_cod', ftString, 20);
  ClientDS_CalcRate.FieldDefs.Add('rate_val_usd'  , ftCurrency);
  ClientDS_CalcRate.FieldDefs.Add('rate_val_eur'  , ftCurrency);
  ClientDS_CalcRate.CreateDataSet;
  ClientDS_CalcRate.LogChanges := False;


  try
    RTXApplication := RTXCreate2(CTM_Server, CTM_User, CTM_Password);
    RTXApplication.Initialize('');
  except
    RTXApplication := nil;
    exit;
  end;
  RTXDocument := RTXApplication.CreateDocument;

  ClientDS.First;
  while not ClientDS.Eof do begin
    if set_show_message then
      ShowTextMessage('Rail-Тариф.' + #10 + 'Расчет ставки: ' + IntToStr(ClientDS.RecNo) + ' из ' + IntToStr(ClientDS.RecordCount) + '...', False);

    if ClientDS_CalcRate.Locate('node_begin_cod;node_end_cod;kargoETSNG_cod', VarArrayOf([ClientDS.FieldByName('node_begin_cod').AsString, ClientDS.FieldByName('node_end_cod').AsString, ClientDS.FieldByName('kargoETSNG_cod').AsString]), []) then begin
      ClientDS.Edit;
      ClientDS.FieldByName('rate_val_usd').Value := ClientDS_CalcRate.FieldByName('rate_val_usd').Value;
      ClientDS.FieldByName('rate_val_eur').Value := ClientDS_CalcRate.FieldByName('rate_val_eur').Value;
      ClientDS.Post;
    end else begin

      try
        RTXDocument.New;

        (RTXDocument as IDocumentAttr).OnDate     (ClientDS.FieldByName('date_from_to').AsDateTime);
        (RTXDocument as IDocumentAttr).FromStation(ClientDS.FieldByName('node_begin_cod').AsString, 0);
        (RTXDocument as IDocumentAttr).ToStation  (ClientDS.FieldByName('node_end_cod'  ).AsString, 0);
        (RTXDocument as IDocumentAttr5).FreightEx (ClientDS.FieldByName('kargoETSNG_cod').AsString, '', '', ClientDS.FieldByName('fact_weight').AsFloat);
        (RTXDocument as IDocumentAttr30).SetWagonByNumber(ClientDS.FieldByName('num_vagon').AsString);

        if ClientDS.FieldByName('set_route').AsBoolean then begin
          otpr_id := RTXDocument.Data.Value['Send\OTPRId'];
          send_id := RTXDocument.Data.Value['Send\SendId'];
          (RTXDocument as IDocumentAttr).Send(otpr_id, send_id, 1, 2);
        end;

        RTXDocument.Data.Value['Vagon\OwnerId'] := 2; // 1- общий парк 2 - Собственный
        RTXDocument.Data.Value['Vagon\VSCount'] := ClientDS.FieldByName('vagon_count').AsInteger; // кол-во вагонов в отправке
        RTXDocument.Data.Value['CommonForCalc\ReqCurrencyCode'] := 840; // USD
        (RTXDocument as IDocumentControl).DoCalcDistance;

        // Возврат порожних вагонов/контейнеров
        (RTXDocument as IDocumentAttr12).BackRoutePresent := True;
        (RTXDocument as IDocumentControl).DoCalcTariff;

        price_sum := 0;
        RTXResult := RTXDocument.Result;
        RTXResult.AsTable.First;
        while not RTXResult.AsTable.EOF do begin

          if RTXResult.Value['LandId'] <> 20 then begin
            direction := RTXResult.Value['Direction'];
            if direction = 2 then
              price_sum := price_sum + RTXResult.Value['TotalPriceWoNDS'];
          end;

          RTXResult.AsTable.Next;
        end;
      except
        price_sum := -9;
      end;

      ClientDS.Edit;
      ClientDS.FieldByName('rate_val_usd').Value := price_sum;
      ClientDS.Post;


      if price_sum <> 0 then begin
        try
          RTXDocument.Data.Value['CommonForCalc\ReqCurrencyCode'] := 978; // EUR
          (RTXDocument as IDocumentControl).DoCalcDistance;

          // Возврат порожних вагонов/контейнеров
          (RTXDocument as IDocumentAttr12).BackRoutePresent := True;
          (RTXDocument as IDocumentControl).DoCalcTariff;


          price_sum := 0;
          RTXResult := RTXDocument.Result;
          RTXResult.AsTable.First;
          while not RTXResult.AsTable.EOF do begin

            if RTXResult.Value['LandId'] <> 20 then begin
              direction := RTXResult.Value['Direction'];
              if direction = 2 then
                price_sum := price_sum + RTXResult.Value['TotalPriceWoNDS'];
            end;

            RTXResult.AsTable.Next;
          end;
        except
          price_sum := -9;
        end;
      end;

      ClientDS.Edit;
      ClientDS.FieldByName('rate_val_eur').Value := price_sum;
      ClientDS.Post;


      ClientDS_CalcRate.Append;
      ClientDS_CalcRate.FieldByName('node_begin_cod').Value := ClientDS.FieldByName('node_begin_cod').Value;
      ClientDS_CalcRate.FieldByName('node_end_cod'  ).Value := ClientDS.FieldByName('node_end_cod').Value;
      ClientDS_CalcRate.FieldByName('kargoETSNG_cod').Value := ClientDS.FieldByName('kargoETSNG_cod').Value;
      ClientDS_CalcRate.FieldByName('rate_val_usd'  ).Value := ClientDS.FieldByName('rate_val_usd').Value;
      ClientDS_CalcRate.FieldByName('rate_val_eur'  ).Value := ClientDS.FieldByName('rate_val_eur').Value;
      ClientDS_CalcRate.Post;

    end;

    ClientDS.Next;
  end;

  if set_show_message then ShowTextMessage;

  RTXResult      := nil;
  RTXDocument    := nil;
  RTXApplication := nil;
  ClientDS_CalcRate.Free;
end;

procedure GetCalcTariffEmpty2(date: TDateTime; var ClientDS: TClientDataSet; set_show_message: boolean);
var RTXApplication : RailTariff_TLB.IApplication;
    RTXDocument    : RailTariff_TLB.IDocument;
    RTXResult      : RailTariff_TLB.IDocNode;
    price_sum1     : Currency;
    price_sum3     : Currency;
    price_sum6     : Currency;
    rod_vagon_cod  : integer;
    period_of_empty : integer;
begin
  try
    RTXApplication := RTXCreate2(CTM_Server, CTM_User, CTM_Password);
    RTXApplication.Initialize('');
  except
    RTXApplication := nil;
    exit;
  end;

  RTXDocument := RTXApplication.CreateDocument;

  ClientDS.First;
  while not ClientDS.Eof do begin

    if set_show_message then
      ShowTextMessage('Расчет ставки: ' + IntToStr(ClientDS.RecNo) + ' из ' + IntToStr(ClientDS.RecordCount) + '...' + #10 + ' Маршрут ' + ClientDS.FieldByName('node_begin_cod').AsString + ' - ' + ClientDS.FieldByName('node_end_cod').AsString + '...', False);

    try
      (RTXDocument as IDocumentAttr).OnDate(ClientDS.FieldByName('date_from_to').AsDateTime);
      (RTXDocument as IDocumentAttr).FromStation(ClientDS.FieldByName('node_end_cod'  ).AsString, 20);
      (RTXDocument as IDocumentAttr).ToStation  (ClientDS.FieldByName('node_begin_cod').AsString, 20);

      // 1000 - Повагонная, 100 - Порожние вагоны под погрузку/из-под выгрузки, 0 - Немаршрутная, 2 - Скорость грузовая
      (RTXDocument as IDocumentAttr).Send(1000, 100, 0, 2);
      // Груз - (421034) Вагоны железнодорожные всякие, перевозимые на своих осях
      (RTXDocument as IDocumentAttr5).FreightEx('421034', '', '86069900', 60);

      // цистерна
      rod_vagon_cod := 96;

      // 2 - Собственный, 4 - кол-во вагонов в отправке
      (RTXDocument as IDocumentAttr).Wagon(rod_vagon_cod, 2, 4, 68);

      // 2 - Собственный, 1 - кол-во вагонов, ранее перевозимый груз, ГНГ, оси, вес тары
      (RTXDocument as IDocumentAttr8).EmptyWagonEx(rod_vagon_cod, 2, 1, ClientDS.FieldByName('kargoETSNG_cod').AsString, '', 4, 23);

      //1 вагон
      RTXDocument.Data.Value['Vagon\VSCount']  := 1;
      RTXDocument.Data.Value['CommonForCalc\ReqCurrencyCode'] := 810;
      (RTXDocument as IDocumentControl).DoCalcDistance;
      RTXDocument.Data.Value['Vagon\OwnerId'] := 2;
      (RTXDocument as IDocumentControl).DoCalcTariff;

      price_sum1 := 0;
      RTXResult := RTXDocument.Result;
      RTXResult.AsTable.First;
      while not RTXResult.AsTable.EOF do begin
        // ------- только по России ----------
        if RTXResult.Value['LandId'] = 20 then begin
          price_sum1 := price_sum1 + RTXResult.Value['TotalPriceWoNDS'];
        end;
        RTXResult.AsTable.Next;
      end;

      //3-5 вагонов
      RTXDocument.Data.Value['Vagon\VSCount']  := 3;
      RTXDocument.Data.Value['CommonForCalc\ReqCurrencyCode'] := 810;
      (RTXDocument as IDocumentControl).DoCalcDistance;
      RTXDocument.Data.Value['Vagon\OwnerId'] := 2;
      (RTXDocument as IDocumentControl).DoCalcTariff;

      price_sum3 := 0;
      RTXResult := RTXDocument.Result;
      RTXResult.AsTable.First;
      while not RTXResult.AsTable.EOF do begin
        // ------- только по России ----------
        if RTXResult.Value['LandId'] = 20 then begin
          price_sum3 := price_sum3 + RTXResult.Value['TotalPriceWoNDS'];
        end;
        RTXResult.AsTable.Next;
      end;

      //6-20 вагонов
      RTXDocument.Data.Value['Vagon\VSCount']  := 6;
      RTXDocument.Data.Value['CommonForCalc\ReqCurrencyCode'] := 810;
      (RTXDocument as IDocumentControl).DoCalcDistance;
      RTXDocument.Data.Value['Vagon\OwnerId'] := 2;
      (RTXDocument as IDocumentControl).DoCalcTariff;

      period_of_empty := 0;
      period_of_empty := (RTXDocument as IDocumentAttr26).GetRunDays(2);
      period_of_empty := (RTXDocument as IDocumentAttr26).GetPeriodOfDelivery(2);
      period_of_empty := (RTXDocument as IDocumentAttr26).GetPeriodOfDelivery(0);
      period_of_empty := (RTXDocument as IDocumentAttr26).GetPeriodOfDelivery(1);

      price_sum6 := 0;
      RTXResult := RTXDocument.Result;
      RTXResult.AsTable.First;
      while not RTXResult.AsTable.EOF do begin
        // ------- только по России ----------
        if RTXResult.Value['LandId'] = 20 then begin
          price_sum6 := price_sum6 + RTXResult.Value['TotalPriceWoNDS'];
        end;
        RTXResult.AsTable.Next;
      end;


    except
      price_sum1 := -9;
      price_sum3 := -9;
      price_sum6 := -9;
      period_of_empty := -9;
    end;

    ClientDS.Edit;
    ClientDS.FieldByName('calc_otpr_empty1').Value := price_sum1;
    ClientDS.FieldByName('calc_otpr_empty3').Value := price_sum3;
    ClientDS.FieldByName('calc_otpr_empty6').Value := price_sum6;
    ClientDS.FieldByName('period_of_empty' ).Value := period_of_empty;
    ClientDS.Post;


    ClientDS.Next;
  end;

  if set_show_message then ShowTextMessage;

  RTXResult      := nil;
  RTXDocument    := nil;
  RTXApplication := nil;
end;

procedure GetCalcTariffEmpty(date: TDateTime; var ClientDS: TClientDataSet; set_show_message: boolean);
var RTXApplication : RailTariff_TLB.IApplication;
    RTXDocument    : RailTariff_TLB.IDocument;
    RTXResult      : RailTariff_TLB.IDocNode;
    price_sum      : Currency;
    rod_vagon_cod  : integer;
begin
  try
    RTXApplication := RTXCreate2(CTM_Server, CTM_User, CTM_Password);
    RTXApplication.Initialize('');
  except
    RTXApplication := nil;
    exit;
  end;

  RTXDocument := RTXApplication.CreateDocument;

  ClientDS.First;
  while not ClientDS.Eof do begin

    if set_show_message then
      ShowTextMessage('Расчет ставки: ' + IntToStr(ClientDS.RecNo) + ' из ' + IntToStr(ClientDS.RecordCount) + '...' + #10 + ' Маршрут ' + ClientDS.FieldByName('node_begin_cod').AsString + ' - ' + ClientDS.FieldByName('node_end_cod').AsString + '...', False);

    try
      (RTXDocument as IDocumentAttr).OnDate(ClientDS.FieldByName('date_from_to').AsDateTime);
      (RTXDocument as IDocumentAttr).FromStation(ClientDS.FieldByName('node_end_cod'  ).AsString, 20);
      (RTXDocument as IDocumentAttr).ToStation  (ClientDS.FieldByName('node_begin_cod').AsString, 20);

      // 1000 - Повагонная, 100 - Порожние вагоны под погрузку/из-под выгрузки, 0 - Немаршрутная, 2 - Скорость грузовая
      (RTXDocument as IDocumentAttr).Send(1000, 100, 0, 2);
      // Груз - (421034) Вагоны железнодорожные всякие, перевозимые на своих осях
      (RTXDocument as IDocumentAttr5).FreightEx('421034', '', '86069900', 60);


      if ClientDS.FieldByName('rod_vagon_cod').AsString = '1'       then rod_vagon_cod := 1 // крытый
      else if ClientDS.FieldByName('rod_vagon_cod').AsString =  '2' then rod_vagon_cod := 3 // полувагон
      else if ClientDS.FieldByName('rod_vagon_cod').AsString =  '5' then rod_vagon_cod := 2 // платформа
      else if ClientDS.FieldByName('rod_vagon_cod').AsString = '20' then rod_vagon_cod := 2 // платформа
      else if ClientDS.FieldByName('rod_vagon_cod').AsString = '70' then rod_vagon_cod := 96 // цистерна
      else if ClientDS.FieldByName('rod_vagon_cod').AsString = '84' then rod_vagon_cod := 1007 // изотермический
      else if ClientDS.FieldByName('rod_vagon_cod').AsString = '93' then rod_vagon_cod := 32 // хоппер-цементовоз
      else rod_vagon_cod := -9;


      if ClientDS.FindField('VSCount') <> nil then begin
        (RTXDocument as IDocumentAttr).Wagon(rod_vagon_cod, 2, ClientDS.FieldByName('VSCount').AsInteger, 68);
        (RTXDocument as IDocumentAttr8).EmptyWagonEx(rod_vagon_cod, 2, 1, ClientDS.FieldByName('kargoETSNG_cod').AsString, '', 4, 23);
        RTXDocument.Data.Value['Vagon\VSCount']  := ClientDS.FieldByName('VSCount').AsInteger;
      end else begin
        // 2 - Собственный, 4 - кол-во вагонов в отправке
        (RTXDocument as IDocumentAttr).Wagon(rod_vagon_cod, 2, 4, 68);
        // 2 - Собственный, 1 - кол-во вагонов, ранее перевозимый груз, ГНГ, оси, вес тары
        (RTXDocument as IDocumentAttr8).EmptyWagonEx(rod_vagon_cod, 2, 1, ClientDS.FieldByName('kargoETSNG_cod').AsString, '', 4, 23);
        // 4 - кол-во вагонов в отправке
        RTXDocument.Data.Value['Vagon\VSCount']  := 4;
      end;

      RTXDocument.Data.Value['CommonForCalc\ReqCurrencyCode'] := 810;
      (RTXDocument as IDocumentControl).DoCalcDistance;
      RTXDocument.Data.Value['Vagon\OwnerId'] := 2;
      (RTXDocument as IDocumentControl).DoCalcTariff;

      price_sum := 0;
      RTXResult := RTXDocument.Result;
      RTXResult.AsTable.First;
      while not RTXResult.AsTable.EOF do begin
        // ------- только по России ----------
        if RTXResult.Value['LandId'] = 20 then begin
          price_sum := price_sum + RTXResult.Value['TotalPriceWoNDS'];
        end;
        RTXResult.AsTable.Next;
      end;
    except
      price_sum := -9;
    end;

    ClientDS.Edit;
    ClientDS.FieldByName('calc_otpr_empty').Value := price_sum;
    ClientDS.Post;




    ClientDS.Next;
  end;

  if set_show_message then ShowTextMessage;

  RTXResult      := nil;
  RTXDocument    := nil;
  RTXApplication := nil;
end;



function GetCalcRate
    ( FRTXDocument: RailTariff_TLB.IDocument; // Ссылка на документ
      Client_CalcParametrs: TClientDataSet;   // Параметры расчета
      Client_Stations: TClientDataSet;        // Доп. станции
      Client_CargoMulti: TClientDataSet;      // Сборный груз
      Client_Result: TClientDataSet           // Результат расчета
    ): boolean;
var        RTXTax : RailTariff_TLB._RefBook;
       RTXRefBook : RailTariff_TLB._RefBook2;
        RTXResult : RailTariff_TLB.IDocNode;
                i : integer;
multi_cargo_index : OLEvariant;
begin
  try
    FRTXDocument.New;

    // Установка даты
    (FRTXDocument as IDocumentAttr).OnDate(Date);

    // Установка валюты
    case Client_CalcParametrs.FieldByName('currency_id').AsInteger of
      0 : FRTXDocument.Data.Value['CommonForCalc\ReqCurrencyCode'] := 0;
      1 : FRTXDocument.Data.Value['CommonForCalc\ReqCurrencyCode'] := 840;
      2 : FRTXDocument.Data.Value['CommonForCalc\ReqCurrencyCode'] := 978;
      3 : FRTXDocument.Data.Value['CommonForCalc\ReqCurrencyCode'] := 810;
      4 : FRTXDocument.Data.Value['CommonForCalc\ReqCurrencyCode'] := 756;
    end;

    //Установить "Расчет расстояний по приказу № 9 от 22.01.2014 г."
    if not Client_CalcParametrs.FieldByName('NEW_DISTANCES').IsNull  then
      FRTXDocument.Data.Value['NEW_DISTANCES'] := Ord(Client_CalcParametrs.FieldByName('NEW_DISTANCES').AsBoolean)
    else
      FRTXDocument.Data.Value['NEW_DISTANCES'] := 1;

    //Project_Tariff_Index_2018
    if not Client_CalcParametrs.FieldByName('Project_Tariff_Index_2018').IsNull  then
      FRTXDocument.Data.Value['Project_Tariff_Index_2018'] := Ord(Client_CalcParametrs.FieldByName('Project_Tariff_Index_2018').AsBoolean)
    else
      FRTXDocument.Data.Value['Project_Tariff_Index_2018'] := 0;

    //Project_Tariff_AddIndex_2018
    if not Client_CalcParametrs.FieldByName('Project_Tariff_AddIndex_2018').IsNull  then
      FRTXDocument.Data.Value['Project_Tariff_AddIndex_2018'] := Ord(Client_CalcParametrs.FieldByName('Project_Tariff_AddIndex_2018').AsBoolean)
    else
      FRTXDocument.Data.Value['Project_Tariff_AddIndex_2018'] := 0;

    FRTXDocument.Data.Value['Comments'] := Client_CalcParametrs.FieldByName('comment').AsString;

    // Установка станций отправления
    (FRTXDocument as IDocumentAttr).FromStation(Client_CalcParametrs.FieldByName('node_begin_cod').AsString, Client_CalcParametrs.FieldByName('node_begin_PPland').AsInteger);

    //Установка станций назначения
    (FRTXDocument as IDocumentAttr).ToStation(Client_CalcParametrs.FieldByName('node_end_cod').AsString, Client_CalcParametrs.FieldByName('node_end_PPland').AsInteger);

    if Client_CalcParametrs.FieldByName('Send_id').AsInteger = 1900 then begin
      (FRTXDocument as IDocumentAttr).Send(Client_CalcParametrs.FieldByName('Otpr_id').AsInteger, Client_CalcParametrs.FieldByName('Send_id').AsInteger, 0, 2);

      FRTXDocument.Data.Value['BufferCar'] := 0;
      FRTXDocument.Data.Value['BufferCar\UsageMode'] := Client_CalcParametrs.FieldByName('buffer_ID').AsInteger;       //3
      FRTXDocument.Data.Value['BufferCar\VagonId'  ] := Client_CalcParametrs.FieldByName('buffer_TranspId').AsInteger; //1
      FRTXDocument.Data.Value['BufferCar\VagonPID' ] := Client_CalcParametrs.FieldByName('buffer_TranspId').AsInteger; //1


      FRTXDocument.Data.Value['BufferCar\Axis' ] := Client_CalcParametrs.FieldByName('buffer_Axis').AsInteger;
      FRTXDocument.Data.Value['BufferCar\Count' ] := Client_CalcParametrs.FieldByName('buffer_Count').AsInteger;
      FRTXDocument.Data.Value['BufferCar\OwnerId' ] := Client_CalcParametrs.FieldByName('buffer_OwnerId').AsInteger; // 2;
      FRTXDocument.Data.Value['BufferCar\OwnerLand' ] := 99;
      if Client_CalcParametrs.FieldByName('buffer_ControlFrameWeight').IsNull then
        FRTXDocument.Data.Value['BufferCar\ControlFrameWeight' ] := 1
      else
        FRTXDocument.Data.Value['BufferCar\ControlFrameWeight' ] := Client_CalcParametrs.FieldByName('buffer_ControlFrameWeight').AsInteger;

      FRTXDocument.Calculate;
    end else begin
      //Установка промежуточных станций
      (FRTXDocument as IThruRoutes).Clear;
      if Client_Stations <> nil then
        if Client_Stations.RecordCount > 0 then begin
          Client_Stations.First;
          while not Client_Stations.Eof do begin
            if Client_Stations.FieldByName('Activ').AsBoolean then (FRTXDocument as IThruRoutes).AddPP(Client_Stations.FieldByName('cod').AsString, Client_Stations.FieldByName('SecondCode').AsString)
            else (FRTXDocument as IThruRoutes).AddStation(Client_Stations.FieldByName('cod').AsString);
            Client_Stations.Next;
          end;
        end;

      //Установка параметров отправки
      (FRTXDocument as IDocumentAttr).Send(
      Client_CalcParametrs.FieldByName('Otpr_id').AsInteger,
      Client_CalcParametrs.FieldByName('Send_id').AsInteger,
      Client_CalcParametrs.FieldByName('ExitRoute_id').AsInteger, 2);

      //Установка груза
      (FRTXDocument as IDocumentAttr5).FreightEx(Client_CalcParametrs.FieldByName('ETSNG_cod').AsString, '', Client_CalcParametrs.FieldByName('GNG_cod').AsString, Client_CalcParametrs.FieldByName('Weight').AsFloat);
      try
        (FRTXDocument as IDocumentAttr2).WagonOwnerLand(Client_CalcParametrs.FieldByName('LandOwn_id').AsInteger, True);
      except
      end;

      case Client_CalcParametrs.FieldByName('Otpr_id').AsInteger of
        3000 :  begin
                  (FRTXDocument as IDocumentAttr).Container(Client_CalcParametrs.FieldByName('Cars_id').AsInteger, Client_CalcParametrs.FieldByName('Owners_id').AsInteger, Client_CalcParametrs.FieldByName('Kol_PS').AsInteger, Client_CalcParametrs.FieldByName('Cars_TareW').AsFloat);

                  if not Client_CalcParametrs.FieldByName('FlatWagonId').IsNull then begin
                    FRTXDocument.Data.Value['Vagon\FlatWagonId'] := Client_CalcParametrs.FieldByName('FlatWagonId').AsInteger;
                    FRTXDocument.Data.Value['Vagon\OwnerFirmV'  ] := Client_CalcParametrs.FieldByName('Owners_id').AsInteger; // Собственник вагона
                    FRTXDocument.Data.Value['Vagon\FWOwnP'      ] := Client_CalcParametrs.FieldByName('FWOwnP').AsInteger; // Принадлежность платформы
                    FRTXDocument.Data.Value['Vagon\FWOwnerFirmP'] := 0;  //Собственник платформы   (Любой, кроме перечисленных)

                  end;

                end;
        else    begin
                  {Установка вагона}
                  case Client_CalcParametrs.FieldByName('Send_id').AsInteger of
                    100 : begin
                            (FRTXDocument as IDocumentAttr8).EmptyWagonEx(Client_CalcParametrs.FieldByName('Cars_id').AsInteger, Client_CalcParametrs.FieldByName('Owners_id').AsInteger, Client_CalcParametrs.FieldByName('Kol_PS').AsInteger, Client_CalcParametrs.FieldByName('Empty_ETSNG_cod').AsString, '', Client_CalcParametrs.FieldByName('Cars_axis').AsInteger, Client_CalcParametrs.FieldByName('Cars_TareW').AsFloat);
                          end;
                   1900 : begin
                            (FRTXDocument as IDocumentAttr11).BufferWagon(Client_CalcParametrs.FieldByName('buffer_TranspId').AsInteger, Client_CalcParametrs.FieldByName('buffer_OwnerId').AsInteger, Client_CalcParametrs.FieldByName('buffer_Count').AsInteger, Client_CalcParametrs.FieldByName('buffer_Axis').AsInteger);
                            (FRTXDocument as IDocumentAttr11).BufferWagonUsageMode(Client_CalcParametrs.FieldByName('buffer_ID').AsInteger, Client_CalcParametrs.FieldByName('buffer_ControlFrameWeight').AsInteger);
                          end;
                      5 : begin
                            {Определение принадлежности}
                            case Client_CalcParametrs.FieldByName('Owners_id').AsInteger of
                              1,7 : FRTXDocument.Data.Value['RouteProperties\IsBackRoutePresent'] := 0;
                              2,3 : FRTXDocument.Data.Value['RouteProperties\IsBackRoutePresent'] := 1;
                            end;
                            (FRTXDocument as IDocumentAttr).Wagon(Client_CalcParametrs.FieldByName('Cars_id').AsInteger, Client_CalcParametrs.FieldByName('Owners_id').AsInteger, Client_CalcParametrs.FieldByName('Kol_PS').AsInteger, Client_CalcParametrs.FieldByName('Cars_gp').AsInteger);
                            if not Client_CalcParametrs.FieldByName('Bulkiness').IsNull then
                                (FRTXDocument as IDocumentAttr9).Bulkiness(Client_CalcParametrs.FieldByName('Bulkiness').AsString)
                            else
                                (FRTXDocument as IDocumentAttr9).Bulkiness('Н0000');
                          end
                    else  begin
                            {Определение принадлежности}
                            case Client_CalcParametrs.FieldByName('Owners_id').AsInteger of
                              1,7 : FRTXDocument.Data.Value['RouteProperties\IsBackRoutePresent'] := 0;
                              2,3 : FRTXDocument.Data.Value['RouteProperties\IsBackRoutePresent'] := 1;
                            end;
                            (FRTXDocument as IDocumentAttr).Wagon(Client_CalcParametrs.FieldByName('Cars_id').AsInteger, Client_CalcParametrs.FieldByName('Owners_id').AsInteger, Client_CalcParametrs.FieldByName('Kol_PS').AsInteger, Client_CalcParametrs.FieldByName('Cars_gp').AsInteger);
                          end;
                  end;
                end;
      end;

      //---------------------------------------------------------------------------------------
      // Установка сборного груза
      if Client_CargoMulti <> nil then
        if Client_CargoMulti.RecordCount > 0 then begin
          if  Client_CalcParametrs.FieldByName('Send_id').AsInteger = 9 then begin
            (FRTXDocument as IDocumentAttr3).MXFreightClear;
            Client_CargoMulti.First;
            while not Client_CargoMulti.Eof do begin
              (FRTXDocument as IDocumentAttr8).MXFreightAddEx(Client_CargoMulti.FieldByName('EtnCode').AsString, Client_CargoMulti.FieldByName('GngCode').AsString, Client_CargoMulti.FieldByName('Weight').AsFloat, 0, multi_cargo_index);
              Client_CargoMulti.Next;
            end;
          end;
        end;

      // Установить Код универ. контейнера, с параметрами кот. совпадает специализированный
      if not Client_CalcParametrs.FieldByName('Container_id').IsNull then
        FRTXDocument.Data.Value['Vagon\EqUContId'] := Client_CalcParametrs.FieldByName('Container_id').AsInteger
      else
        FRTXDocument.Data.Value['Vagon\EqUContId'] := 0;

      //Установка кол-ва вагонов в отправке
      FRTXDocument.Data.Value['Vagon\VSCount']  := Client_CalcParametrs.FieldByName('Vag_otpr').AsInteger;
      FRTXDocument.Data.Value['Vagon\TareW']    := Client_CalcParametrs.FieldByName('Cars_TareW').AsInteger;
      FRTXDocument.Data.Value['Vagon\OCE']      := Client_CalcParametrs.FieldByName('Cars_axis').AsInteger;

      //Установить "Под таможенным контролем"
      if not Client_CalcParametrs.FieldByName('Option12').IsNull  then
        FRTXDocument.Data.Value['TN\Commodity\Custom'] := Ord(Client_CalcParametrs.FieldByName('Option12').AsBoolean)
      else
        FRTXDocument.Data.Value['TN\Commodity\Custom'] := 1;

      //Установить "Тар. отметка 64. Выполнение жд одной операции погрузки или выгрузки в местах общего пользования"
      if not Client_CalcParametrs.FieldByName('TARIFFMARK64').IsNull  then
        FRTXDocument.Data.Value['TN\Commodity\OneOperat'] := Ord(Client_CalcParametrs.FieldByName('TARIFFMARK64').AsBoolean)
      else
        FRTXDocument.Data.Value['TN\Commodity\OneOperat'] := 0;

      //Установить "Вагон приписан к станции погрузки/выгрузки"
      if not Client_CalcParametrs.FieldByName('ADDSTATION').IsNull  then
        FRTXDocument.Data.Value['Vagon\RegSt'] := Ord(Client_CalcParametrs.FieldByName('ADDSTATION').AsBoolean)
      else
        FRTXDocument.Data.Value['Vagon\RegSt'] := 0;

      //Установить "Полувагоны моделей 12-9761-02, 12-9833-01, 12-9853, 12-9869"
      if not Client_CalcParametrs.FieldByName('MODELOW').IsNull  then
        FRTXDocument.Data.Value['Vagon\ModelOw'] := Ord(Client_CalcParametrs.FieldByName('MODELOW').AsBoolean)
      else
        FRTXDocument.Data.Value['Vagon\ModelOw'] := 0;

      //Установить "Полувагоны моделей 12-196-01, 12-196-02"
      if not Client_CalcParametrs.FieldByName('MODELOWN').IsNull  then
        FRTXDocument.Data.Value['Vagon\ModelOwN'] := Ord(Client_CalcParametrs.FieldByName('MODELOWN').AsBoolean)
      else
        FRTXDocument.Data.Value['Vagon\ModelOwN'] := 0;

      //Установить "Полувагоны модели 12-2143"
      if not Client_CalcParametrs.FieldByName('MODELOWND').IsNull  then
        FRTXDocument.Data.Value['Vagon\ModelOwNd'] := Ord(Client_CalcParametrs.FieldByName('MODELOWND').AsBoolean)
      else
        FRTXDocument.Data.Value['Vagon\ModelOwNd'] := 0;

      //Воинские перевозки
      if not Client_CalcParametrs.FieldByName('Option6').IsNull  then
        FRTXDocument.Data.Value['TN\Commodity\Military'] := Ord(Client_CalcParametrs.FieldByName('Option6').AsBoolean)
      else
        FRTXDocument.Data.Value['TN\Commodity\Military'] := 0;

      //Дополнительное оборудование
      if not Client_CalcParametrs.FieldByName('Option8').IsNull  then
        FRTXDocument.Data.Value['Vagon\VDop'] := Ord(not Client_CalcParametrs.FieldByName('Option8').AsBoolean)
      else
        FRTXDocument.Data.Value['Vagon\VDop'] := 0;

      //Установить "Из-под опасного груза без очистки и промывки"
      if not Client_CalcParametrs.FieldByName('Option14').IsNull  then
        FRTXDocument.Data.Value['Vagon\FrDang'] := Ord(Client_CalcParametrs.FieldByName('Option14').AsBoolean);


      //Возврат порожних вагонов/контейнеров (Initialization)
      FRTXDocument.Data.Value['RouteProperties\IsBackRoutePresent']:= 0;

      //Промывка-пропарка
      //FRTXDocument.Data.Value['RouteProperties\IsWashingSteaming']:= 0;
      if not Client_CalcParametrs.FieldByName('node_washing_cod').IsNull then begin
        (FRTXDocument as IDocumentAttr19).SetWashingStation(Client_CalcParametrs.FieldByName('node_washing_cod').AsString, 20);
        (FRTXDocument as IDocumentAttr19).WashingEnabled := True;
      end;


      //Установка сопровождения
      if not Client_CalcParametrs.FieldByName('Support_id').IsNull  then
        (FRTXDocument as IDocumentAttr).Support(Client_CalcParametrs.FieldByName('Support_id').AsInteger, Client_CalcParametrs.FieldByName('Support_Kol_Conductor').AsInteger, Client_CalcParametrs.FieldByName('Support_Axis').AsInteger)
      else
        (FRTXDocument as IDocumentAttr).Support(0, 0, 0);

      //Установка кол_во вагонов в охране
      if not Client_CalcParametrs.FieldByName('VCGuard').IsNull then
        FRTXDocument.Data.Value['Vagon\VCGuard'] := Client_CalcParametrs.FieldByName('VCGuard').AsInteger
      else if not Client_CalcParametrs.FieldByName('Vag_otpr').IsNull then
        FRTXDocument.Data.Value['Vagon\VCGuard'] := Client_CalcParametrs.FieldByName('Vag_otpr').AsInteger
      else
        FRTXDocument.Data.Value['Vagon\VCGuard'] := 1;


      //Проверка на КИТ
      (FRTXDocument as IDocumentControl).DoCalcDistance;
      FRTXDocument.Result.AsTable.First;

      Client_CalcParametrs.Edit;
      Client_CalcParametrs.FieldByName('Multiple_kit').AsBoolean := False;
      Client_CalcParametrs.Post;

      while not FRTXDocument.Result.AsTable.EOF do  begin
        if (FRTXDocument as ISpecialTariff).IsSTExists then begin
          Client_CalcParametrs.Edit;
          Client_CalcParametrs.FieldByName('Multiple_kit').AsBoolean := True;
          Client_CalcParametrs.Post;
          break;
        end;
        FRTXDocument.Result.AsTable.Next;
      end;

      // Проверка маршрута
      if (FRTXDocument as IDocumentAttr21).AltRoutesAvail then begin
        if (Client_CalcParametrs.FieldByName('route_id').AsInteger <> 0) AND (Client_CalcParametrs.FieldByName('enable_alt_route').AsBoolean = True) then begin
          RTXRefBook := (FRTXDocument as IDocumentAttr21).GetAltRoutesRefBook as _RefBook2;
          RTXRefBook.SeekByKey('ID', Client_CalcParametrs.FieldByName('route_id').AsInteger);
          if (not RTXRefBook.EOF) and (RTXRefBook.FieldValue['ID'] = Client_CalcParametrs.FieldByName('route_id').AsInteger) then begin
            (FRTXDocument as IDocumentAttr21).EnableAltRoute(Client_CalcParametrs.FieldByName('route_id').AsInteger);
          end;
        end;
      end;

      // Расчет дополнительных сборов
  //    if Client_Taxes_id.RecordCount <> 0 then begin
  //
  //       if not Client_CalcParametrs.FieldByName('Option2').IsNull  then
  //        (FRTXDocument as IDocumentAttr12).BackRoutePresent := Client_CalcParametrs.FieldByName('Option2').AsBoolean
  //      else
  //        (FRTXDocument as IDocumentAttr12).BackRoutePresent := False;
  //
  //      RTXTax := FRTXApplication.RefBook['Tax'];
  //      (FRTXDocument as IDocumentControl).DoCalcDistance;
  //      FRTXDocument.Data.Node['LandTrf'].AsTable.First;
  //      while not FRTXDocument.Data.Node['LandTrf'].AsTable.EOF do begin
  //        Client_Taxes_id.Filter := 'LandId = ' + IntToStr(FRTXDocument.Data.Node['LandTrf'].Value['LandId']);
  //        Client_Taxes_id.Filtered := True;
  //        Client_Taxes_id.First;
  //        while not Client_Taxes_id.Eof do begin
  //          if Client_Taxes_id.FieldByName('Automatic').AsBoolean then begin
  //            RTXTax.SeekByKey('TaxID', Client_Taxes_id.FieldByName('TaxesId').AsString);
  //            if RTXTax.FieldValue['TaxID'] = Client_Taxes_id.FieldByName('TaxesId').AsString then begin
  //              case Client_Taxes_id.FieldByName('Type').AsInteger of
  //                0 : (FRTXDocument as ITaxes).SetTax(RTXTax.FieldValue['TaxID'], True, RTXTax.FieldValue['ParamType']);
  //                1 : if not Client_Taxes_id.FieldByName('Param').IsNull then
  //                      (FRTXDocument as ITaxes).SetTax(RTXTax.FieldValue['TaxID'], True, Client_Taxes_id.FieldByName('Param').AsString)
  //                    else
  //                      (FRTXDocument as ITaxes).SetTax(RTXTax.FieldValue['TaxID'], True, RTXTax.FieldValue['ParamType']);
  //                else
  //                    if not Client_Taxes_id.FieldByName('rate').IsNull then
  //                      (FRTXDocument as ITaxes).SetTax(RTXTax.FieldValue['TaxID'], True, Client_Taxes_id.FieldByName('rate').AsString)
  //                    else
  //                      (FRTXDocument as ITaxes).SetTax(RTXTax.FieldValue['TaxID'], True, RTXTax.FieldValue['ParamType']);
  //              end;
  //            end;
  //          end else begin
  //            // Установка охраны
  //            FRTXDocument.Data.Node['LandTrf'].Value['GuardPrice\Enabled'] := ord(Client_Taxes_id.FieldByName('Active').AsBoolean);
  //          end;
  //          Client_Taxes_id.Next;
  //        end;
  //        Client_Taxes_id.Filtered := False;
  //        FRTXDocument.Data.Node['LandTrf'].AsTable.Next;
  //      end;
  //
  //      set_distance := False;
  //      Client_Result.First;
  //      while not Client_Result.Eof do begin
  //        if Client_Result.FieldByName('set_distance').AsBoolean = True then begin
  //          set_distance := True;
  //        end;
  //        Client_Result.Next;
  //      end;
  //
  //      // Возврат порожних вагонов/контейнеров
  //      if not Client_CalcParametrs.FieldByName('Option2').IsNull  then
  //        (FRTXDocument as IDocumentAttr12).BackRoutePresent := Client_CalcParametrs.FieldByName('Option2').AsBoolean
  //      else
  //        (FRTXDocument as IDocumentAttr12).BackRoutePresent := False;
  //
  //      if set_distance = True then begin
  //        FRTXDocument.Data.Node['LandTrf'].AsTable.First;
  //        while not FRTXDocument.Data.Node['LandTrf'].AsTable.EOF do begin
  //          Client_Result.Locate('OrderId', FRTXDocument.Data.Node['LandTrf'].Value['OrderId'], []);
  //          if Client_Result.FieldByName('set_distance').AsBoolean = True then begin
  //            FRTXDocument.Data.Value['LandTrf\Distance\ActualValue'] := True;
  //            FRTXDocument.Data.Value['LandTrf\Distance'] := Client_Result.FieldByName('Distance').Value;
  //          end;
  //          FRTXDocument.Data.Node['LandTrf'].AsTable.Next;
  //        end;
  //      end;
  //      (FRTXDocument as IDocumentControl).DoCalcTariff;
  //      {Расчет тарифа}
  //    end else  begin
  //      set_distance := False;
  //      Client_Result.First;
  //      while not Client_Result.Eof do begin
  //        if Client_Result.FieldByName('set_distance').AsBoolean = True then begin
  //          set_distance := True;
  //        end;
  //        Client_Result.Next;
  //      end;

  //      if set_distance = True then begin
  //        (FRTXDocument as IDocumentControl).DoCalcDistance;
  //
  //        // Возврат порожних вагонов/контейнеров
  //        if not Client_CalcParametrs.FieldByName('Option2').IsNull  then
  //          if Client_CalcParametrs.FieldByName('Option2').Value = True then
  //            FRTXDocument.Data.Value['RouteProperties\IsBackRoutePresent'] := 1
  //          else
  //            (FRTXDocument as IDocumentAttr12).BackRoutePresent := False
  //        else
  //          (FRTXDocument as IDocumentAttr12).BackRoutePresent := False;
  //
  //       (FRTXDocument as IDocumentControl).DoCalcDistance;
  //
  //        FRTXDocument.Data.Node['LandTrf'].AsTable.First;
  //        while not FRTXDocument.Data.Node['LandTrf'].AsTable.EOF do begin
  //          Client_Result.Locate('OrderId', FRTXDocument.Data.Node['LandTrf'].Value['OrderId'], []);
  //          if Client_Result.FieldByName('set_distance').AsBoolean = True then begin
  //            FRTXDocument.Data.Value['LandTrf\Distance\ActualValue'] := True;
  //            FRTXDocument.Data.Value['LandTrf\Distance'] := Client_Result.FieldByName('Distance').Value;
  //          end;
  //          FRTXDocument.Data.Node['LandTrf'].AsTable.Next;
  //        end;
  //
  //
  //        (FRTXDocument as IDocumentControl).DoCalcTariff;
  //      end else begin
          // Возврат порожних вагонов/контейнеров
          if not Client_CalcParametrs.FieldByName('Option2').IsNull  then
            (FRTXDocument as IDocumentAttr12).BackRoutePresent := Client_CalcParametrs.FieldByName('Option2').AsBoolean
          else
            (FRTXDocument as IDocumentAttr12).BackRoutePresent := False;



          FRTXDocument.Calculate;
  //      end;
  //    end;
    end;

    FRTXDocument.Data.Node['Routes'].AsTable.First;

    RTXResult := FRTXDocument.Result;
    RTXResult.AsTable.First;

    i := 0;
    while not RTXResult.AsTable.EOF do  begin
      Client_Result.Append;
      Client_Result.FieldByName('id'              ).Value := i;
      Client_Result.FieldByName('OrderId'         ).Value := RTXResult.Value['OrderId'];
      Client_Result.FieldByName('LandName'        ).Value := RTXResult.Value['LandName'];
      Client_Result.FieldByName('Direction_id'    ).Value := RTXResult.Value['Direction'];        // Направление
      Client_Result.FieldByName('Distance'        ).Value := RTXResult.Value['Distance'];         // Расстояние
      Client_Result.FieldByName('LandId'          ).Value := RTXResult.Value['LandId'];           // Страна (20-Россия)
      Client_Result.FieldByName('CalcDsc'         ).Value := RTXResult.Value['CalcDsc'];          // Описание Тарифа
      Client_Result.FieldByName('BasePrice'       ).Value := RTXResult.Value['BasePrice'];        // Стоимость перевозки без НДС (за все транспрортные средства)
      Client_Result.FieldByName('TotalPrice'      ).Value := RTXResult.Value['TotalPrice'];       // Итоговая стоимость
      Client_Result.FieldByName('NDS'             ).Value := RTXResult.Value['NDS'];              // Суммарный НДС
      Client_Result.FieldByName('GuardPrice'      ).Value := RTXResult.Value['GuardPrice'];       // Охрана и договорная охрана
      Client_Result.FieldByName('GuardNDS'        ).Value := RTXResult.Value['GuardNDS'];         // Охрана и договорная охрана НДС
      Client_Result.FieldByName('PerT'            ).Value := RTXResult.Value['PerT'];             // Стоимость за 1т
      Client_Result.FieldByName('PerT_PP'         ).Value := RTXResult.Value['BasePerT'];         // Стоимость перевозки на 1т. без НДС(за все транспрортные средства)
      Client_Result.FieldByName('ABBR'            ).Value := RTXResult.Value['ABBR'];             // валюта
      Client_Result.FieldByName('CurrencyID'      ).Value := RTXResult.Value['CurrencyID'];       // валюта ID
      Client_Result.FieldByName('ShemaNo'         ).Value := RTXResult.Value['ShemaNo'];
      Client_Result.FieldByName('SoprPrice'       ).Value := RTXResult.Value['SoprPrice'];        // Сопровождение
      Client_Result.FieldByName('AddDues'         ).Value := RTXResult.Value['AddDues'];          // Доп. сборы
      Client_Result.FieldByName('PerTwoNDS'       ).Value := RTXResult.Value['PerTwoNDS'];        // Стоимость за 1т без НДС
      Client_Result.FieldByName('TotalPriceWoNDS' ).Value := RTXResult.Value['TotalPriceWoNDS'];  // Итоговая без НДС
      Client_Result.FieldByName('WashingState'    ).Value := RTXResult.Value['WashingState'];
      Client_Result.FieldByName('FromStationPID'  ).Value := RTXResult.Value['FromStationPID'];
      Client_Result.FieldByName('ToStationPID'    ).Value := RTXResult.Value['ToStationPID'];

      if RTXResult.Value['Direction'] = 1 then Client_Result.FieldByName('Direction').Value := '==>'
      else Client_Result.FieldByName('Direction').Value := '<==';

      if (RTXResult.Value['GuardPrice\Enabled'] = 1) and (RTXResult.Value['Direction'] = 1) then Client_Result.FieldByName('Vohr').Value := True
      else Client_Result.FieldByName('Vohr').Value := False;

      if (FRTXDocument as ISpecialTariff).IsSTExists then Client_Result.FieldByName('KIT').AsInteger := 1
      else Client_Result.FieldByName('KIT').AsInteger := 0;

      Client_Result.Post;

      i := i + 1;
      RTXResult.AsTable.Next;
    end;

    RTXResult := nil;
    RTXTax    := nil;
    Result    := True;
  except
    Result := False;
  end;
end;

function  GetCalcDistance(node_begin_cod, node_end_cod: string; land_id: integer; node_add_cod: string; date_from_to: variant): integer;
var Trf_Result        : RailTariff_TLB.IDocNode;
    RB_I_Node         : RailTariff_TLB._RefBookInfo;
    RB_Node,RB_2_Node : RailTariff_TLB._RefBook;
    distence          : integer;
    ppland_node_begin : integer;
    ppland_node_end   : integer;
    Filter            : OLEvariant;
    mRBFFilter        : RailTariff_TLB._RefBookFilter;

    FRTXApplication : IApplication;
    FRTXDocument    : RailTariff_TLB.IDocument;
    direction       : integer;
begin
  ppland_node_begin := 0;
  ppland_node_end   := 0;
  result    := -9;
  distence  := 0;
  if date_from_to = null then date_from_to := Date;

  if (node_begin_cod<>'') and (node_end_cod<>'') then begin
    try
      FRTXApplication := RTXCreate2(CTM_Server, CTM_User, CTM_Password);
      FRTXApplication.Initialize('');
    except
      FRTXApplication := nil;
      exit;
    end;

    FRTXDocument := FRTXApplication.CreateDocument;

  //--Проверяем какая страна задана по умолчанию у станции, если нет такой задаём "третьи страны"(99)
    RB_Node := FRTXApplication.RefBook['Stations'];
    Filter := VarArrayCreate([0,2,0,0],varvariant);
    Filter[0,0] := 'NewCode';
    Filter[1,0] := RBOP_BEGIN;
    Filter[2,0] := node_begin_cod;

    mRBFFilter := RB_Node as _RefBookFilter;
    mRBFFilter.ClearFilter;
    mRBFFilter.Filter(filter);
    RB_I_Node := mRBFFilter as _RefBookInfo;
    RB_2_Node := RB_I_Node as _RefBook;

    RB_2_Node.First;
    while not RB_2_Node.EOF do begin
      if (RB_2_Node.FieldValue['NewCode'] = node_begin_cod) and (RB_2_Node.FieldValue['PPLand'] = -1) then
        ppland_node_begin := 99;

      RB_2_Node.Next;
    end;

    Filter[2,0] := node_end_cod;
    mRBFFilter.ClearFilter;
    mRBFFilter.Filter(filter);
    RB_I_Node := mRBFFilter as _RefBookInfo;
    RB_2_Node := RB_I_Node as _RefBook;

    RB_2_Node.First;
    while not RB_2_Node.EOF do begin
      if (RB_2_Node.FieldValue['NewCode'] = node_begin_cod) and (RB_2_Node.FieldValue['PPLand'] = -1) then
        ppland_node_begin := 99;
      if (RB_2_Node.FieldValue['NewCode'] = node_end_cod) and (RB_2_Node.FieldValue['PPLand'] = -1) then
        ppland_node_end := 99;

      RB_2_Node.Next;
    end;


    try
      (FRTXDocument as IDocumentAttr).OnDate(date_from_to);
      (FRTXDocument as IDocumentAttr).FromStation(node_begin_cod, ppland_node_begin);
      (FRTXDocument as IDocumentAttr).ToStation(node_end_cod, ppland_node_end);

      if date_from_to > '01.09.2018' then
        FRTXDocument.Data.Value['Zhur_Miller'] := 0
      else
        FRTXDocument.Data.Value['Zhur_Miller'] := 1;

      if node_add_cod <> '' then (FRTXDocument as IThruRoutes).AddStation(node_add_cod);

      (FRTXDocument as IDocumentControl).DoCalcDistance;


      Trf_Result := FRTXDocument.Result;
      Trf_Result.AsTable.First;
      if land_id = -9 then begin
        while not Trf_Result.AsTable.EOF do  begin

          Direction := Trf_Result.Value['Direction'];
          if Direction = 1 then
            distence := distence + Trf_Result.Value['Distance'];

          Trf_Result.AsTable.Next;
        end;
        result := distence;
      end else begin
        while not Trf_Result.AsTable.EOF do  begin
          if Trf_Result.Value['LandId'] = land_id then begin
            Direction := Trf_Result.Value['Direction'];
            if Direction = 1 then
              result := Trf_Result.Value['Distance'];
          end;
          Trf_Result.AsTable.Next;
        end;
      end;
    except
      Trf_Result._Release;
      FRTXDocument._Release;
      RB_Node._Release;
      RB_I_Node._Release;
      RB_2_Node._Release;
      mRBFFilter._Release;
      FRTXApplication._Release;

      Trf_Result  := nil;
      FRTXDocument  := nil;
      RB_Node     := nil;
      RB_I_Node   := nil;
      RB_2_Node   := nil;
      mRBFFilter  := nil;
      FRTXApplication := nil;
    end;

    Trf_Result._Release;
    FRTXDocument._Release;
    RB_Node._Release;
    RB_I_Node._Release;
    RB_2_Node._Release;
    mRBFFilter._Release;
    FRTXApplication._Release;

    Trf_Result  := nil;
    FRTXDocument  := nil;
    RB_Node     := nil;
    RB_I_Node   := nil;
    RB_2_Node   := nil;
    mRBFFilter  := nil;
    FRTXApplication := nil;
  end;
end;

function  GetPeriodOfDelivery(node_begin_cod, node_end_cod: string; kargoETSNG_cod: string): integer; export;
var RTXApplication   : RailTariff_TLB.IApplication;
    RTXDocument      : RailTariff_TLB.IDocument;
    days_run         : integer;
    days_dop         : integer;
    period_of_delivery : integer;
begin
  try
    RTXApplication := RTXCreate2(CTM_Server, CTM_User, CTM_Password);
    RTXApplication.Initialize('');
  except
    RTXApplication := nil;
    exit;
  end;

  RTXDocument := RTXApplication.CreateDocument;
  (RTXDocument as IDocumentAttr).OnDate(Date);
  (RTXDocument as IDocumentAttr).FromStation(node_begin_cod, 0);
  (RTXDocument as IDocumentAttr).ToStation  (node_end_cod, 0);

  (RTXDocument as IDocumentAttr).Send(1000, 2, 0, 2);
  (RTXDocument as IDocumentAttr5).FreightEx(kargoETSNG_cod, '', '10019000', 60);
  (RTXDocument as IDocumentAttr).Wagon(21, 2, 1, 60);
  RTXDocument.Calculate;
//  days_run := (RTXDocument as IDocumentAttr26).GetRunDays(1);
//  days_dop := (RTXDocument as IDocumentAttr26).GetDopDays(1);
  period_of_delivery := (RTXDocument as IDocumentAttr26).GetPeriodOfDelivery(1);

  result := period_of_delivery;
end;

procedure GetPPRoute(node_begin_cod, node_end_cod: string; var ClientDS: TClientDataSet; var distance: integer);
var FRTXApplication : IApplication;
    FRTXDocument    : RailTariff_TLB.IDocument;
    RTXRoutes       : RailTariff_TLB.IDocNode;

    _NewCode : string;
    _Name : string;
    _Distance : integer;
    _LandName : string;
begin
  // Нас интересуют только Погран-переходы и только станции со стороны России

  // Струкрута ClientDS
//  ClientDS := TClientDataSet.Create(nil);
//  ClientDS.FieldDefs.Add('node_cod',   ftString, 50);
//  ClientDS.FieldDefs.Add('node_name',  ftString, 50);
//  ClientDS.FieldDefs.Add('distance',   ftInteger);
//  ClientDS.FieldDefs.Add('set_in_out', ftBoolean); // True - входящая, False - выходящая
//  ClientDS.CreateDataSet;
//  ClientDS.LogChanges := False;

  try
    FRTXApplication := RTXCreate2(CTM_Server, CTM_User, CTM_Password);
    FRTXApplication.Initialize('');
  except
    on E: Exception do begin
      Application.MessageBox(PChar('Не установлена программа Rail-Тариф.' + E.Message), 'Внимание', MB_OK);
      FRTXApplication := nil;
      exit;
    end;
  end;
  FRTXDocument := FRTXApplication.CreateDocument;

  (FRTXDocument as IDocumentAttr).FromStation(node_begin_cod, 0);
  (FRTXDocument as IDocumentAttr).ToStation(node_end_cod, 0);
  (FRTXDocument as IDocumentControl).DoCalcDistance;

// Алгоритм поиска:
// - первую и последнюю станции не рассматриваем - это начало и окончание пути
// - сравниваем 2 подряд идущие станции
// - если страна у них изменилась, это ПП а не переход между дорогами
// Примечание: если маршрут задан с погран перехода или окончивается погран переходом (причем указан ПП за границей),
// то такой ПП будет повторен в маршруте дважды (как начало пути -  первая запись и как стыковка на ПП - вторая запись)
// т.е. полученнй нами список всегда содержит четное количество станций и нам надо искать ПП сравнивая станции 2-3, 4-5, 6-7 и т.д.

  ClientDS.EmptyDataSet;

  RTXRoutes := FRTXDocument.Data.Node['Routes'];
  RTXRoutes.AsTable.First;
// Пропускаем первую станцию
  RTXRoutes.AsTable.Next;
  while not RTXRoutes.AsTable.EOF do  begin
    _NewCode  := RTXRoutes.Value['NewCode'];
    _Name     := RTXRoutes.Value['Name'];
    _Distance := RTXRoutes.Value['Distance'];
    _LandName := RTXRoutes.Value['LandName'];

    RTXRoutes.AsTable.Next;

    // Это не последняя станция (окончание маршрута)
    if (not RTXRoutes.AsTable.EOF) then begin
      // Смена страны + Одна из Стран = Россиия
      if _LandName <> RTXRoutes.Value['LandName'] then begin
        if _LandName = 'Россия' then begin
          ClientDS.Append;
          ClientDS.FieldByName('node_cod').Value   := _NewCode;
          ClientDS.FieldByName('node_name').Value  := _Name;
          ClientDS.FieldByName('distance').Value   := _Distance;
          ClientDS.FieldByName('set_in_out').Value := False;
          ClientDS.Post;
        end;
        if RTXRoutes.Value['LandName'] = 'Россия' then begin
          ClientDS.Append;
          ClientDS.FieldByName('node_cod').Value   := RTXRoutes.Value['NewCode'];
          ClientDS.FieldByName('node_name').Value  := RTXRoutes.Value['Name'];
          ClientDS.FieldByName('distance').Value   := RTXRoutes.Value['Distance'];
          ClientDS.FieldByName('set_in_out').Value := True;
          ClientDS.Post;
        end;

      end;

      RTXRoutes.AsTable.Next;
    end;
  end;

  ClientDS.First;
  distance := _Distance; // дистанция последней станции и есть дистанция всего маршрута :)

  RTXRoutes       := nil;
  FRTXDocument    := nil;
  FRTXApplication := nil;
end;


function CalcDistance(node_begin_cod, node_end_cod: string) : integer;
var Trf_Result  : RailTariff_TLB.IDocNode;
    distence    : integer;
begin
  result    := 0;
  distence  := 0;

  (RaschetDoc as IDocumentAttr).FromStation(node_begin_cod, 0);
  (RaschetDoc as IDocumentAttr).ToStation(node_end_cod, 0);
  (RaschetDoc as IDocumentControl).DoCalcDistance;

  Trf_Result := RaschetDoc.Result;
  Trf_Result.AsTable.First;
  while not Trf_Result.AsTable.EOF do  begin
    distence := distence + Trf_Result.Value['Distance'];
    Trf_Result.AsTable.Next;
  end;
  result := distence;
  Trf_Result  := nil;
end;

procedure CtmStopServer(var mTrfApp :RailTariff_TLB.IApplication);
begin
  mTrfApp:=nil;
end;


function GetTypeContainer(Otpr_id, Send_id, TranspID : integer; var ListContainer : TStringList) : boolean;
var Doc_Kont : RailTariff_TLB.IDocument;
    EqUCont_RB  : RailTariff_TLB.IDocumentRefBook;
    EqUCont_RB2 : RailTariff_TLB._RefBook2;
begin
  try
    ListContainer.Clear;

    Doc_Kont  := mTrfApp.CreateDocument;
    (Doc_Kont as IDocumentAttr).Send(Otpr_id, Send_id, 0, 2);
    if Otpr_id = 3000 then
      (Doc_Kont as IDocumentAttr).Container(TranspID, 1, 1, 60)
    else
      (Doc_Kont as IDocumentAttr).Wagon(TranspID, 1, 1, 60);

//    (Doc_Kont as IDocumentAttr).Send(3000, 6, 0, 2);
//    (Doc_Kont as IDocumentAttr).Container(52, 0, 1, 60);


    (Doc_Kont as IDocumentAttr).QueryInterface(IdocumentRefBook, EqUCont_RB);

    //RaschetDoc.Save('D:\ErrorTarif.trf');

    EqUCont_RB2 := EqUCont_RB.FilteredRefBook('EqUCont', Chr(0)) as _RefBook2;

    EqUCont_RB2.First;
    ListContainer.AddObject('не совпадают с универсальными', pointer(0));
    while not EqUCont_RB2.EOF do begin
      ListContainer.AddObject(EqUCont_RB2.FieldValue['Name'], pointer(StrToInt(EqUCont_RB2.FieldValue['CarID'])));
      EqUCont_RB2.Next;
    end;
    result := True;
  except
    result := false;
  end;
end;

procedure ComboBoxLocateObjects(var ComboBox : TcxComboBox; value : integer);
var i : integer;
begin
  for I := 0 to ComboBox.Properties.Items.Count - 1 do
   if integer(ComboBox.Properties.Items.Objects[i]) = value then begin
//     if ComboBox.ItemIndex = i then
     ComboBox.ItemIndex := i;
//     ComboBox.Properties.OnChange(nil);
     exit;
   end;
end;

procedure OpenRealInfo(Document : string);
var rInf, Chaild_rInf     : HWND;
    WinOpen               : DWORD;
    startInfo             : STARTUPINFO;
    procInfo              : PROCESS_INFORMATION;
    y                     : integer;
    DirRailInfo           : TNetResource;
    Err                   : DWORD;
begin
  try
    DirRailInfo.dwType:=RESOURCETYPE_DISK;
    DirRailInfo.lpLocalName:=nil;
    DirRailInfo.lpRemoteName:=PChar(CTM_RailInfo);
    DirRailInfo.lpProvider:=nil;
    Err := WNetCancelConnection2(DirRailInfo.lpRemoteName, CONNECT_UPDATE_PROFILE, TRUE);
    Err := WNetAddConnection2(DirRailInfo, PChar(CTM_Password), PChar(CTM_User), 0);

    rInf := FindWindow('RBContWn1',nil);
    if rInf = 0 then begin
      ZeroMemory(@startInfo,sizeof(startInfo));
      startInfo.cb := SizeOf(startInfo);
      startInfo.wShowWindow := SW_SHOWDEFAULT;
      //if CreateProcess(PWideChar(nil), PWideChar(Rail_Tarif_Server.DirRailInfo), nil, nil, False, 0, nil, PWideChar(nil), startInfo, procInfo) then begin
      if CreateProcess(PWideChar(nil), PWideChar(CTM_RailInfo), nil, nil, False, 0, nil, PWideChar(nil), startInfo, procInfo) then begin
        rInf := FindWindow('RBContWn1',nil);
        while rInf = 0 do begin
          Sleep(100);
          rInf := FindWindow('RBContWn1',nil);
        end;
      end else begin
        Application.MessageBox(PWideChar('Системная ошибка. (' + CTM_RailInfo + ')'), 'Внимание', MB_OK);
        exit;
      end;
    end else begin
      if Document = '-9' then begin
        Application.MessageBox('Rail-Info уже запущен', 'Внимание', MB_OK);
        exit;
      end;
    end;
    WinOpen := GetWindowThreadProcessId(rInf, WinOpen);
    AttachThreadInput(GetCurrentThreadId(), WinOpen, True);
    Chaild_rInf := GetDlgItem(rInf, $0000DF8A);
    for y := 0 to 10 - 1 do begin
      if Chaild_rInf = 0 then begin
        Chaild_rInf := GetDlgItem(rInf, $0000DF8A);
        Sleep(1000);
      end;
    end;
    if Chaild_rInf = 0 then begin
      Application.MessageBox('Возникли проблемы с открытием документа, попробуйте открыть ещё раз', 'Внимание', MB_OK);
      exit;
    end;
    SendMessage(Chaild_rInf, WM_SETTEXT  , 0, Integer(PChar(Document)));
    AttachThreadInput(GetCurrentThreadId(), WinOpen, False);
  except
    on E: Exception do begin
      Application.MessageBox(PChar('Не установлена программа Rail-Info.' + E.Message), 'Внимание', MB_OK);
    end;
  end;
end;


{$REGION 'Найти расстояние для группы станций'}
procedure  GetCalcDistanceGroup (var Local_DS:TClientDataSet) export;
var Trf_Result  : RailTariff_TLB.IDocNode;
    distance, i : integer;
    FRTXApplication : IApplication;
    FRTXDocument    : RailTariff_TLB.IDocument;
    dt : TDateTime;
begin
  dt := Now;
  try
    FRTXApplication := RTXCreate2(CTM_Server, CTM_User, CTM_Password);
    FRTXApplication.Initialize('');
  except
    FRTXApplication := nil;
    exit;
  end;

//  ShowMessage('1:' + IntToStr(MilliSecondsBetween(Now,dt)));
//  dt := Now;

  FRTXDocument := FRTXApplication.CreateDocument;

//  ShowMessage('2:' + IntToStr(MilliSecondsBetween(Now,dt)));
//  dt := Now;

  Local_DS.First;
  i := 1;

  while not Local_DS.Eof do begin
    ShowTextMessage('Расчет дистанции: обрабатывается запись №'+IntToStr(i)+' из ' + IntToStr(Local_DS.RecordCount) + ' записей...', False);
    distance  := 0;
    try
      (FRTXDocument as IThruRoutes).Clear;
      if Local_DS.FindField('date_from_to') <> nil then
        if Local_DS.FieldByName('date_from_to').Value <> null then
          (FRTXDocument as IDocumentAttr).OnDate(Local_DS.FieldByName('date_from_to').AsDateTime)
        else
          (FRTXDocument as IDocumentAttr).OnDate(Date)
      else
        (FRTXDocument as IDocumentAttr).OnDate(Date);

      (FRTXDocument as IDocumentAttr).FromStation(Local_DS.FieldByName('node_begin_cod').AsString, 0);
      (FRTXDocument as IDocumentAttr).ToStation(Local_DS.FieldByName('node_end_cod').AsString, 0);
      if not Local_DS.FieldByName('node_add_cod').IsNull then
        (FRTXDocument as IThruRoutes).AddStation(Local_DS.FieldByName('node_add_cod').AsString);
      (FRTXDocument as IDocumentControl).DoCalcDistance;

      Trf_Result := FRTXDocument.Result;
      Trf_Result.AsTable.First;
      if Local_DS.FieldByName('land_id').AsInteger = -9 then begin
        while not Trf_Result.AsTable.EOF do  begin
          distance := distance + Trf_Result.Value['Distance'];
          Trf_Result.AsTable.Next;
        end;
        Local_DS.Edit;
        Local_DS.FieldByName('Distance').AsInteger := distance;
        Local_DS.Post;
      end else begin
        while not Trf_Result.AsTable.EOF do  begin
          if Trf_Result.Value['LandId'] = Local_DS.FieldByName('land_id').AsInteger then begin
            Local_DS.Edit;
            Local_DS.FieldByName('Distance').AsInteger := Trf_Result.Value['Distance'];
            Local_DS.Post;
          end;
          Trf_Result.AsTable.Next;
        end;
      end;
    except
//      on E: Exception do begin
//        ShowMessage(E.Message);
//      end;
    end;
    i := i + 1;
    Local_DS.Next;

//    ShowMessage('3:' + IntToStr(MilliSecondsBetween(Now,dt)));
//    dt := Now;
  end;
  Trf_Result  := nil;
  FRTXDocument  := nil;
  FRTXApplication := nil;
end;
{$ENDREGION 'Найти расстояние для группы станций'}


function  GetCalcDistanceFast(node_begin_cod: string; node_end_cod: string): integer;
var RTXApplication : IApplication;
          distance : integer;
begin
  try
    RTXApplication := RTXCreate2(CTM_Server, CTM_User, CTM_Password);
    RTXApplication.Initialize('');
    distance := RTXApplication.RawDistance[node_begin_cod, node_end_cod];
    if distance <> -1 then
      Result := distance
    else
      Result := 0;
  except
    Result := 0;
  end;

  RTXApplication := nil;
end;

// В ClientDS должны быть поля node_begin_cod, node_end_cod, distance
function GetCalcDistanceGroupFast(ClientDS: TClientDataSet; node_begin_cod: string; node_end_cod: string; set_show_message: boolean): integer;
var RTXApplication : IApplication;
     ClientDSLocal : TClientDataSet;
          distance : integer;
begin
  try
    RTXApplication := RTXCreate2(CTM_Server, CTM_User, CTM_Password);
    RTXApplication.Initialize('');
  except
    RTXApplication := nil;
    exit;
  end;
  if set_show_message then ShowTextMessage('Расчет дистанции...', False);


  ClientDS.DisableControls;

  if (node_begin_cod <> '') and (node_end_cod <> '') then begin
    if not ClientDS.Locate('node_begin_cod;node_end_cod', VarArrayOf([node_begin_cod, node_end_cod]), []) then begin
      ClientDS.Append;
      ClientDS.FieldByName('node_begin_cod').AsString := node_begin_cod;
      ClientDS.FieldByName('node_end_cod'  ).AsString := node_end_cod;
      ClientDS.Post;
    end;
  end;

  ClientDSLocal := TClientDataSet.Create(nil);
  ClientDSLocal.FieldDefs.Add('node_begin_cod',  ftString, 50); // станция отправления
  ClientDSLocal.FieldDefs.Add('node_end_cod',    ftString, 50); // станция назначения
  ClientDSLocal.FieldDefs.Add('distance',        ftInteger  ); // Расстояние (возвращаемый параметр)
  ClientDSLocal.IndexFieldNames := 'node_begin_cod;node_end_cod';

  ClientDSLocal.CreateDataSet;
  ClientDSLocal.LogChanges := False;

  ClientDS.First;
  while not ClientDS.Eof do begin

    if ClientDS.FieldByName('distance').IsNull then begin
      if not ClientDSLocal.Locate('node_begin_cod;node_end_cod', VarArrayOf([ClientDS.FieldByName('node_begin_cod').AsString, ClientDS.FieldByName('node_end_cod').AsString]), []) then begin
        ClientDSLocal.Append;
        ClientDSLocal.FieldByName('node_begin_cod').AsString := ClientDS.FieldByName('node_begin_cod').AsString;
        ClientDSLocal.FieldByName('node_end_cod'  ).AsString := ClientDS.FieldByName('node_end_cod').AsString;
        ClientDSLocal.Post;
      end;
    end;

    ClientDS.Next;
  end;

  ClientDSLocal.First;
  while not ClientDSLocal.Eof do begin
    if set_show_message then ShowTextMessage('Расчет дистанции: обрабатывается запись №'+IntToStr(ClientDSLocal.RecNo)+' из ' + IntToStr(ClientDSLocal.RecordCount) + ' записей...', False);

    ClientDSLocal.Edit;
    try
      distance := RTXApplication.RawDistance[ClientDSLocal.FieldByName('node_begin_cod').AsString, ClientDSLocal.FieldByName('node_end_cod').AsString];
      if distance = -1 then distance := 0;
      ClientDSLocal.FieldByName('distance').Value := distance;
    except
      ClientDSLocal.FieldByName('distance').Value := 0;
    end;
    ClientDSLocal.Post;
    ClientDSLocal.Next;
  end;

  ClientDS.First;
  while not ClientDS.Eof do begin
    if ClientDSLocal.Locate('node_begin_cod;node_end_cod', VarArrayOf([ClientDS.FieldByName('node_begin_cod').AsString, ClientDS.FieldByName('node_end_cod').AsString]), []) then begin
      ClientDS.Edit;
      ClientDS.FieldByName('distance').Value := ClientDSLocal.FieldByName('distance').Value;
      ClientDS.Post;
    end;
    ClientDS.Next;
  end;

  if (node_begin_cod <> '') and (node_end_cod <> '') then begin
    if ClientDS.Locate('node_begin_cod;node_end_cod', VarArrayOf([node_begin_cod, node_end_cod]), []) then begin
      Result := ClientDS.FieldByName('distance').AsInteger;
    end;
  end else
    Result := 0;

  ClientDS.EnableControls;
  ClientDSLocal.Free;
  RTXApplication := nil;
  if set_show_message then ShowTextMessage;
end;

procedure GetStationFindAround(ClientDS: TClientDataSet; node_cod: string; radius: integer);
var    RTXApplication : IApplication;
          RTXDocument : RailTariff_TLB.IDocument;
 RTXStationFindAround : RailTariff_TLB.IStationFindAround;
               v1, v2 : OleVariant;

                distance, i, cod_int : integer;
//                Q, Q1 : TADOQuery;
//SP_inf_obj_search_cod : TADOStoredProc;
               s1, s2 : string;
begin
  try
    RTXApplication := RTXCreate2(CTM_Server, CTM_User, CTM_Password);
    RTXApplication.Initialize('');
  except
    RTXApplication := nil;
    exit;
  end;
  RTXDocument := RTXApplication.CreateDocument;
  RTXStationFindAround := (RTXDocument as RailTariff_TLB.IStationFindAround);


  v1 := RTXStationFindAround.FindStationsAround(node_cod, radius, 0);
  for i := 0 to VarArrayHighBound(v1, 1) do begin
    s1 := v1[i, 0];
    if not TryStrToInt(s1, cod_int) then
      continue;

    ClientDS.Append;
    ClientDS.FieldByName('node_begin_cod').Value := node_cod;
    ClientDS.FieldByName('node_end_cod').Value := v1[i,0];
    ClientDS.FieldByName('distance').Value := v1[i,1];
    ClientDS.Post;
  end;

  RTXApplication := nil;
end;


function GetTypeTransportationNew(RTXDocument: IDocument; var Client_ExRtType: TClientDataSet; node_begin_cod: string; node_end_cod: string; date_from_to: TDateTime): boolean;
var ExRtType_RB  : RailTariff_TLB.IDocumentRefBook;
    ExRtType_RB2 : RailTariff_TLB._RefBook2;
begin
  try
    if node_begin_cod <> '' then (RTXDocument as IDocumentAttr).FromStation(node_begin_cod, 0);
    if node_end_cod <> ''   then (RTXDocument as IDocumentAttr).ToStation(node_end_cod, 0);
    (RTXDocument as IThruRoutes).Clear;

    (RTXDocument as IDocumentAttr).OnDate(Int(date_from_to));
    (RTXDocument as IDocumentAttr).QueryInterface(IdocumentRefBook, ExRtType_RB);
    ExRtType_RB2 := ExRtType_RB.FilteredRefBook('ExRtType', Chr(0)) as _RefBook2;

    ExRtType_RB2.First;
    while not ExRtType_RB2.EOF do begin
      Client_ExRtType.Append;
      Client_ExRtType.FieldByName('Caption').AsVariant := ExRtType_RB2.FieldValue['caption'];
      Client_ExRtType.FieldByName('id').AsVariant := ExRtType_RB2.FieldValue['id'];
      Client_ExRtType.Post;
      ExRtType_RB2.Next;
    end;
    result := True;
  except
    result := false;
  end;
end;


procedure GetFullRoute(node_begin_cod: string; node_end_cod: string; Connect: TADOConnection; var ClientDS: TClientDataSet; set_resave: boolean);
var FRTXApplication : IApplication;
    FRTXDocument    : RailTariff_TLB.IDocument;
    RTXRoutes       : RailTariff_TLB.IDocNode;
    Q : TADOQuery;
    sp_CTM_ROUTE_modify : TADOStoredProc;
    i : integer;
begin
  Q := TADOQuery.Create(nil);
  Q.Connection := Connect;
  Q.SQL.Add('SELECT * FROM ctm_route WHERE node_begin_cod = ''' + node_begin_cod + ''' AND node_end_cod = ''' + node_end_cod + ''' ORDER BY route_order_id');
  Q.Open;

  if (Q.RecordCount > 0) AND (set_resave = False) then begin

    Q.First;
    while not Q.EOF do begin
      ClientDS.Append;
      try
        ClientDS.FieldByName('node_cod' ).Value := Q.FieldByName('route_node_cod').Value;
        ClientDS.FieldByName('node_name').Value := Q.FieldByName('route_node_name').Value;
        ClientDS.FieldByName('distance' ).Value := Q.FieldByName('route_distance').Value;
        ClientDS.Post;
      except
        ClientDS.Post;
      end;

      Q.Next;
    end;

  end else begin

    try
      FRTXApplication := RTXCreate2(CTM_Server, CTM_User, CTM_Password);
      FRTXApplication.Initialize('');
    except
      on E: Exception do begin
        Application.MessageBox(PChar('Не установлена программа Rail-Тариф.' + E.Message), 'Внимание', MB_OK);
        FRTXApplication := nil;
        Q.Free;
        exit;
      end;
    end;
    FRTXDocument := FRTXApplication.CreateDocument;

    try
      (FRTXDocument as IDocumentAttr).FromStation(node_begin_cod, 0);
      (FRTXDocument as IDocumentAttr).ToStation(node_end_cod, 0);
      (FRTXDocument as IDocumentControl).DoCalcDistance;

      RTXRoutes := (FRTXDocument as IDocumentAttr19).FullRoute;
      RTXRoutes.AsTable.First;
      i := 1;
      while not RTXRoutes.AsTable.EOF do begin
        ClientDS.Append;
//        try
          ClientDS.FieldByName('id'       ).Value := i;
          ClientDS.FieldByName('node_cod' ).Value := RTXRoutes.Value['NewCode'];
          ClientDS.FieldByName('node_name').Value := RTXRoutes.Value['NewName'];
          ClientDS.FieldByName('distance' ).Value := RTXRoutes.Value['Distance'];
          ClientDS.FieldByName('ReDirect' ).Value := RTXRoutes.Value['ReDirect'];
          ClientDS.FieldByName('Type'     ).Value := RTXRoutes.Value['Type'];
          ClientDS.Post;
//        except
//          ClientDS.Post;
//        end;

        i := i + 1;
        RTXRoutes.AsTable.Next;
      end;
    except
      on E: Exception do begin
        Application.MessageBox(PChar('Ошибка при расчете.' + E.Message), 'Внимание', MB_OK);
        FRTXApplication := nil;
        Q.Free;
        exit;
      end;
    end;

    sp_CTM_ROUTE_modify := TADOStoredProc.Create(nil);
    sp_CTM_ROUTE_modify.Connection := Connect;
    sp_CTM_ROUTE_modify.ProcedureName := 'sp_CTM_ROUTE_modify';
    sp_CTM_ROUTE_modify.Parameters.Refresh;
    sp_CTM_ROUTE_modify.Parameters.ParamByName('@type_action').Value := 0;
    sp_CTM_ROUTE_modify.Parameters.ParamByName('@node_begin_cod').Value := node_begin_cod;
    sp_CTM_ROUTE_modify.Parameters.ParamByName('@node_end_cod').Value := node_end_cod;
    sp_CTM_ROUTE_modify.Parameters.ParamByName('@route_xml').Value := DataXMLToSQL(ClientDS);
    sp_CTM_ROUTE_modify.ExecProc;
    sp_CTM_ROUTE_modify.Free;

    RTXRoutes       := nil;
    FRTXDocument    := nil;
    FRTXApplication := nil;
  end;

  Q.Free;
end;

function DataXMLToSQL(ClientDS: TClientDataSet): string;
var   AStream : TStringStream;
begin
  AStream := TStringStream.Create;
  ClientDS.SaveToStream(AStream, dfXML);
  Result := AStream.DataString;
  AStream.Free;
end;

procedure DrawcxGridColumnOnFiltered(cxGrid: TcxGridDBBandedTableView; Sender: TObject);
var filter_criteria : TcxFilterCriteriaItem;
    data_criteria : TcxDataFilterCriteria;
    i : integer;
begin
  data_criteria := TcxDataFilterCriteria(Sender);
  for i := 0 to cxGrid.ColumnCount - 1 do begin
    filter_criteria := data_criteria.FindItemByItemLink(TcxGridDBBandedColumn(cxGrid.Columns[i]));
    cxGrid.Columns[i].Styles.Header.Free;
    if filter_criteria <> nil then begin
      cxGrid.Columns[i].Styles.Header := TcxStyle.Create(nil);
      cxGrid.Columns[i].Styles.Header.Font.Style := [fsBold];
      cxGrid.Columns[i].Styles.Header.TextColor := clBlue;
    end;
  end;
end;

procedure FilterColumnGridOnKeyPress(cxGridView : TcxGridDBBandedTableView; var Key: Char);
var
  str_Value, str_DisplayValue : string;
  cxFilterCriteriaItem : TcxFilterCriteriaItem;
  cxGridColumn  : TcxGridColumn;
  i : integer;

begin
  if not ((Ord(Key) = 8) or (Ord(Key) >= 32)) then Exit;
  cxGridColumn := cxGridView.Controller.FocusedColumn;
  if cxGridColumn = nil then Exit;

  str_Value := ''; str_DisplayValue := '';
  cxFilterCriteriaItem := cxGridColumn.DataBinding.FilterCriteriaItem;
  if cxFilterCriteriaItem <> nil then begin
    str_Value := VarToStr( cxFilterCriteriaItem.Value );
    str_DisplayValue := cxFilterCriteriaItem.DisplayValue;
    if not ((str_Value <> str_DisplayValue) and (Copy(str_DisplayValue, 1, 1) = '[') and (Copy(str_DisplayValue, Length(str_DisplayValue), 1) = ']')) then str_DisplayValue := '';
  end;

  str_DisplayValue := Copy(str_DisplayValue, 2, Length(str_DisplayValue) - 2);
  if (Ord(Key) <> 8) then str_DisplayValue := str_DisplayValue + Key
  else str_DisplayValue := Copy(str_DisplayValue, 1, Length(str_DisplayValue) - 1);

  cxGridView.Controller.ClearSelection;
  cxGridView.DataController.Filter.Clear;

  if str_DisplayValue <> '' then begin
    str_Value := '%' + str_DisplayValue + '%';
    str_DisplayValue := '[' + str_DisplayValue + ']';

    // Создаем фильтр
    with cxGridView.DataController.Filter do begin
      Clear;
      Options := Options + [fcoCaseInsensitive];
      Root.BoolOperatorKind := fboAnd;
      Root.AddItem(cxGridColumn, foLike, str_Value, str_DisplayValue);
      Active := True;
    end;
  end;

  if cxGridView.DataController.FocusedRowIndex <> -1 then
    cxGridView.DataController.SelectRows(cxGridView.DataController.FocusedRowIndex, cxGridView.DataController.FocusedRowIndex);
end;

procedure PrintcxGrid(cxGridView: TcxGridDBBandedTableView);
type
    TFunc = function(AHandle : THandle; var ClientDS : TClientDataSet) : variant;
var cnt_record : integer;
    cnt_column : integer;
    array_data : Variant;
 i, k, pos_min : integer;
            id : integer;
Client_Columns : TClientDataSet;
   Client_dist : TClientDataSet;

  exApp, exWks, exWkb : Variant;
  range, cell1, cell2 : Variant;
        range_caption : Variant;
         range_footer : Variant;
        column_format : string;
        calc_distance : boolean;
   calc_fact_distance : boolean;

        val_str : string;
       val_date : TDateTime;
        val_int : integer;
    val_boolean : Boolean;
     val_double : Double;
   val_currency : Currency;
       val_type : string;

         FGrid : TFunc;
        handle : THandle;
        v, val : variant;
   ColumnWidth : Extended;
       DataSet : TDataSet;
 KeyFieldNames : string;
 KeyFieldIndex : integer;
       connect : TADOConnection;
begin
  connect := nil;
  // Пытаемся определить connect
  if cxGridView.DataController.DataSource <> nil then begin // Проверка на подключения Grid к данным
    if cxGridView.DataController.DataSource.DataSet <> nil then begin
      if cxGridView.DataController.DataSource.DataSet.InheritsFrom(TCustomADODataSet) then begin // Проверка на ADOQuery, ADOStoreProc и т.д.

        if TCustomADODataSet(cxGridView.DataController.DataSource.DataSet).Connection <> nil then begin // Проверка подключение через ADOConnection или ConnectionString
          if TCustomADODataSet(cxGridView.DataController.DataSource.DataSet).Connection.Connected = True then begin
            connect := TADOConnection.Create(nil);
            connect.ConnectionString := TCustomADODataSet(cxGridView.DataController.DataSource.DataSet).Connection.ConnectionString;
            connect.KeepConnection   := False;
            connect.LoginPrompt      := False;
            connect.Open;
          end
        end else if TCustomADODataSet(cxGridView.DataController.DataSource.DataSet).ConnectionString <> '' then begin // Пробуем подключиться из ADOQuery.ConnectionString
            connect := TADOConnection.Create(nil);
            connect.ConnectionString := TCustomADODataSet(cxGridView.DataController.DataSource.DataSet).ConnectionString;
            connect.KeepConnection   := False;
            connect.LoginPrompt      := False;
            connect.Open;
        end;
      end;
    end;
  end;

  Client_Columns := TClientDataSet.Create(nil);
  Client_Columns.FieldDefs.Add('id'         , ftAutoInc);
  Client_Columns.FieldDefs.Add('caption'    , ftString, 500);
  Client_Columns.FieldDefs.Add('flag'       , ftBoolean);
  Client_Columns.FieldDefs.Add('flag_old'   , ftBoolean);
  Client_Columns.FieldDefs.Add('field_name' , ftString, 500);
  Client_Columns.FieldDefs.Add('field_type' , ftString, 500);
  Client_Columns.FieldDefs.Add('visible_ix' , ftInteger);
  Client_Columns.FieldDefs.Add('fld_index'  , ftInteger);
  Client_Columns.FieldDefs.Add('position'   , ftInteger);
  Client_Columns.FieldDefs.Add('width'      , ftInteger);
  Client_Columns.FieldDefs.Add('field_position', ftInteger);
  Client_Columns.FieldDefs.Add('field_color', ftInteger);
  Client_Columns.FieldDefs.Add('field_focused', ftBoolean);
  Client_Columns.FieldDefs.Add('field_bandindex', ftInteger);
  Client_Columns.CreateDataSet;
  Client_Columns.LogChanges := False;

  Client_dist := TClientDataSet.Create(Application);
  Client_dist.FieldDefs.Add('node_begin_cod',  ftString, 50); // станция отправления
  Client_dist.FieldDefs.Add('node_end_cod',    ftString, 50); // станция назначения
  Client_dist.FieldDefs.Add('node_add_cod',    ftString, 50); // станция дислокации (необязательно)
  Client_dist.FieldDefs.Add('land_id',         ftInteger);    // Расчет расстояния по стране (-9: полное расстояние по всем странам)
  Client_dist.FieldDefs.Add('distance',        ftInteger);    // Расстояние (возвращаемый параметр)
  Client_dist.IndexFieldNames := 'node_begin_cod;node_end_cod';
  Client_dist.CreateDataSet;
  Client_dist.LogChanges := False;


  for i := 0 to cxGridView.ItemCount - 1 do
    if cxGridView.Columns[i].Position.BandIndex <> -1 then begin
      Client_Columns.Append;
      Client_Columns['caption']    := cxGridView.Columns[i].Caption;
      Client_Columns['flag']       := cxGridView.Columns[i].Visible;
      Client_Columns['flag_old']   := cxGridView.Columns[i].Visible;
      Client_Columns['field_name'] := cxGridView.Columns[i].DataBinding.FieldName;
      Client_Columns['visible_ix'] := cxGridView.Columns[i].VisibleIndex;
      Client_Columns['fld_index' ] := cxGridView.Columns[i].Index;
      Client_Columns['position'  ] := cxGridView.Columns[i].Position.ColIndex;
      Client_Columns['width'     ] := cxGridView.Columns[i].width;
      Client_Columns['field_position' ] := cxGridView.Columns[i].Position.ColIndex;
      Client_Columns['field_bandindex'] := cxGridView.Columns[i].Position.BandIndex;
      if cxGridView.Columns[i].Styles.Content <> nil then
        Client_Columns['field_color'] := cxGridView.Columns[i].Styles.Content.Color;
      Client_Columns['field_focused'] := cxGridView.Columns[i].Focused;
      Client_Columns.Post;
    end;

  handle := LoadLibrary('user.dll');
  @FGrid := GetProcAddress(handle, 'CreateWndGridColumns');
  v := FGrid(Application.Handle, Client_Columns);
  FreeLibrary(handle);

  ClientDataSetSort(Client_Columns, 'field_bandindex;field_position', False);

  if v[0] = 0 then begin

    // Расчет расстояний
    if ((cxGridView.DataController.DataSource.DataSet.FieldDefs.IndexOf('node_begin_cod') <> -1) and (cxGridView.DataController.DataSource.DataSet.FieldDefs.IndexOf('node_end_cod') <> -1))
    or ((cxGridView.DataController.DataSource.DataSet.FieldDefs.IndexOf('fact_node_begin_cod') <> -1) and (cxGridView.DataController.DataSource.DataSet.FieldDefs.IndexOf('fact_node_end_cod') <> -1)) then begin
      if Application.MessageBox(PChar('Заполнять колонку расстояние?' +#13#10+ 'Расстояние расчитывается между "Ст.Отпр" и "Ст.Назн"'), 'Вопрос', MB_YESNO + MB_ICONQUESTION) = ID_YES then begin
        calc_distance := ((cxGridView.DataController.DataSource.DataSet.FieldDefs.IndexOf('node_begin_cod') <> -1) and (cxGridView.DataController.DataSource.DataSet.FieldDefs.IndexOf('node_end_cod') <> -1));
        calc_fact_distance := ((cxGridView.DataController.DataSource.DataSet.FieldDefs.IndexOf('fact_node_begin_cod') <> -1) and (cxGridView.DataController.DataSource.DataSet.FieldDefs.IndexOf('fact_node_end_cod') <> -1));
      end else begin
        calc_distance := False;
        calc_fact_distance := False;
      end;

    end else begin
      calc_distance := False;
      calc_fact_distance := False;
    end;

    ShowTextMessage('Печать таблицы в Excel...' + #10 + 'Подготовка данных...', False);
    Client_Columns.First;
    while not Client_Columns.Eof do begin
      if Client_Columns.FieldByName('flag').AsBoolean = False then
        Client_Columns.Delete
      else
        Client_Columns.Next;
    end;

    cnt_record := cxGridView.Controller.SelectedRecordCount+2; // Заголовок+Данные+Итого
    cnt_column := Client_Columns.RecordCount;

    if calc_distance = True then
      cnt_column := cnt_column + 1;
    if calc_fact_distance = True then
      cnt_column := cnt_column + 1;

    if calc_distance or calc_fact_distance then begin
      DataSet       := cxGridView.DataController.DataSource.DataSet;
      KeyFieldNames := cxGridView.DataController.KeyFieldNames;
      KeyFieldIndex := -9;
      for i := 0 to cxGridView.ItemCount - 1 do
        if cxGridView.Columns[i].DataBinding.FieldName = KeyFieldNames then begin
          KeyFieldIndex := cxGridView.Columns[i].Index;
          break
        end;
    end;


    if calc_distance or calc_fact_distance then begin
      try
        DataSet.DisableControls;

        if KeyFieldIndex <> -9 then begin
          for i:=0 to cxGridView.Controller.SelectedRecordCount - 1 do begin
            if DataSet.Locate(KeyFieldNames, cxGridView.Controller.SelectedRows[i].Values[KeyFieldIndex], []) then begin
              if calc_distance then
                if not Client_dist.FindKey([DataSet['node_begin_cod'], DataSet['node_end_cod']]) then begin
                    Client_dist.Append;
                    Client_dist.FieldByName('node_begin_cod').Value := cxGridView.DataController.DataSource.DataSet['node_begin_cod'];
                    Client_dist.FieldByName('node_end_cod'  ).Value := cxGridView.DataController.DataSource.DataSet['node_end_cod'];
                    Client_dist.FieldByName('land_id'       ).AsInteger := -9;
                    Client_dist.Post;
                end;
              if calc_fact_distance then
                if not Client_dist.FindKey([DataSet['fact_node_begin_cod'], DataSet['fact_node_end_cod']]) then begin
                    Client_dist.Append;
                    Client_dist.FieldByName('node_begin_cod').Value := cxGridView.DataController.DataSource.DataSet['fact_node_begin_cod'];
                    Client_dist.FieldByName('node_end_cod'  ).Value := cxGridView.DataController.DataSource.DataSet['fact_node_end_cod'];
                    Client_dist.FieldByName('land_id'       ).AsInteger := -9;
                    Client_dist.Post;
                end;
            end;
          end;
        end;
      finally
        DataSet.EnableControls;
      end;

      ShowTextMessage('Печать таблицы в Excel...' + #10 + 'Расчет расстояний...', False);
      if connect = nil then // Считаем расстояния если нет подключения к БД
        GetCalcDistanceGroup(Client_dist)
      else begin
        ShowTextMessage('Печать таблицы в Excel...' + #10 + 'Расчет расстояний...', False);
        Client_dist.First;
        while not Client_dist.Eof do begin
          Client_dist.Edit;
          //Client_dist.FieldByName('distance').AsInteger := GetCalcDistanceDB(Client_dist.FieldByName('node_begin_cod').AsString, Client_dist.FieldByName('node_end_cod').AsString, connect);
          Client_dist.Post;
          Client_dist.Next;

          ShowTextMessage('Печать таблицы в Excel...' + #10 + 'Расчет расстояний ' + IntToStr(Client_dist.RecNo) + ' из ' + IntToStr(Client_dist.RecordCount) + '...', False);
        end;
      end;
    end;

    array_data := VarArrayCreate([1, cnt_record, 1, cnt_column], varVariant);

    // Колонки
    Client_Columns.First;
    while not Client_Columns.Eof do begin
      array_data[1, Client_Columns.RecNo] := cxGridView.Columns[Client_Columns.FieldByName('fld_index').AsInteger].Caption;
      Client_Columns.Next;
    end;

    if (calc_distance = True)  and (calc_fact_distance = False) then array_data[1, cnt_column] := 'Расстояние';
    if (calc_distance = False) and (calc_fact_distance = True)  then array_data[1, cnt_column] := 'Расстояние (вагон)';
    if (calc_distance = True)  and (calc_fact_distance = True)  then begin
      array_data[1, cnt_column - 1] := 'Расстояние (перевозка)';
      array_data[1, cnt_column]     := 'Расстояние (вагон)';
    end;

    // Данные
    if calc_distance or calc_fact_distance then cxGridView.DataController.DataSource.DataSet.DisableControls;
    try
      for i:=0 to cxGridView.Controller.SelectedRecordCount - 1 do begin
        Client_Columns.First;
        while not Client_Columns.Eof do begin
          val_type := cxGridView.Columns[Client_Columns.FieldByName('fld_index').AsInteger].DataBinding.ValueType;

          if cxGridView.Columns[Client_Columns.FieldByName('fld_index').AsInteger].PropertiesClass = TcxLookupComboBoxProperties then begin
            val_type := 'String';
            val := cxGridView.Controller.SelectedRows[i].DisplayTexts[Client_Columns.FieldByName('fld_index').AsInteger];
          end;


          if cxGridView.Controller.SelectedRows[i].Values[Client_Columns.FieldByName('fld_index').AsInteger] <> null then begin
            case IndexText(val_type, ['Integer','String','DateTime','Currency','Boolean','Float']) of
              //integer
              0:  begin;
                    val_int := cxGridView.Controller.SelectedRows[i].Values[Client_Columns.FieldByName('fld_index').AsInteger];
                    array_data[i+2, Client_Columns.RecNo] := val_int;
                  end;
              //string
              1:  begin
                    val_str := cxGridView.Controller.SelectedRows[i].Values[Client_Columns.FieldByName('fld_index').AsInteger];
                    array_data[i+2, Client_Columns.RecNo] := val_str;
                  end;
              //DateTime
              2:  begin
                    val_date := cxGridView.Controller.SelectedRows[i].Values[Client_Columns.FieldByName('fld_index').AsInteger];
                    array_data[i+2, Client_Columns.RecNo] := val_date;
                    Client_Columns.Edit;
                    Client_Columns.FieldByName('field_type').Value := val_type;
                    Client_Columns.Post;
                  end;
              //currency
              3:  begin
                    val_double := cxGridView.Controller.SelectedRows[i].Values[Client_Columns.FieldByName('fld_index').AsInteger];
                    array_data[i+2, Client_Columns.RecNo] := val_double;
                  end;
              //Boolean
              4:  begin
                    val_boolean := cxGridView.Controller.SelectedRows[i].Values[Client_Columns.FieldByName('fld_index').AsInteger];
                    array_data[i+2, Client_Columns.RecNo] := val_boolean;
                  end;
              //Float
              5:  begin
                    val_double := cxGridView.Controller.SelectedRows[i].Values[Client_Columns.FieldByName('fld_index').AsInteger];
                    array_data[i+2, Client_Columns.RecNo] := val_double;
                  end;
              else begin
                    val := cxGridView.Controller.SelectedRows[i].Values[Client_Columns.FieldByName('fld_index').AsInteger];
                    array_data[i+2, Client_Columns.RecNo] := val;
                   end;
            end;
          end;

          Client_Columns.Next;
        end;

        if calc_distance = True then begin
          if KeyFieldIndex <> -9 then
            if DataSet.Locate(KeyFieldNames, cxGridView.Controller.SelectedRows[i].Values[KeyFieldIndex], []) then begin
                if Client_dist.FindKey([DataSet['node_begin_cod'], DataSet['node_end_cod']]) then
                  array_data[i+2, cnt_column - iif(calc_fact_distance, 1, 0)] := Client_dist.FieldByName('distance').Value
                else
                  array_data[i+2, cnt_column - iif(calc_fact_distance, 1, 0)] := 0;
              end;
        end;
        if calc_fact_distance = True then begin
          if KeyFieldIndex <> -9 then
            if DataSet.Locate(KeyFieldNames, cxGridView.Controller.SelectedRows[i].Values[KeyFieldIndex], []) then begin
                if Client_dist.FindKey([DataSet['fact_node_begin_cod'], DataSet['fact_node_end_cod']]) then
                  array_data[i+2, cnt_column] := Client_dist.FieldByName('distance').Value
                else
                  array_data[i+2, cnt_column] := 0;
              end;
        end;

        if ((i mod 10) = 0) then
          ShowTextMessage('Печать таблицы в Excel...' + #10 + 'Строк ' + IntToStr(i) + ' из ' + IntToStr(cxGridView.Controller.SelectedRecordCount) + '...', False);
      end;
    finally
      if calc_distance or calc_fact_distance then cxGridView.DataController.DataSource.DataSet.EnableControls;
    end;

    ShowTextMessage('Печать таблицы в Excel...' + #10 + 'Вывод в Excel...', False);
    exApp := CreateOleObject('Excel.Application');
    exWkb := exApp.Workbooks.Add;
    exWkb := exApp.ActiveWorkbook;
    exWks := exWkb.WorkSheets[1];

    // Левая верхняя ячейка области, в которую будем выводить данные
    cell1 := exWks.Cells[3, 2];
    // Правая нижняя ячейка области, в которую будем выводить данные
    cell2 := exWks.Cells[3 + cnt_record - 1, 2 + cnt_column - 1];
    // Область, в которую будем выводить данные
    range := exWks.Range[cell1, cell2];

    // Область заголовка
    cell1 := exWks.Cells[3, 2];
    cell2 := exWks.Cells[3, 2 + cnt_column - 1];
    range_caption := exWks.Range[cell1, cell2];

    // Область итогов
    cell1 := exWks.Cells[3 + cnt_record - 1, 2];
    cell2 := exWks.Cells[3 + cnt_record - 1, 2 + cnt_column - 1];
    range_footer := exWks.Range[cell1, cell2];

    ShowTextMessage('Печать таблицы в Excel...' + #10 + 'Установка формата колонок...', False);
    // Формат колонок
    Client_Columns.First;
    while not Client_Columns.Eof do begin
      try
        ColumnWidth := Client_Columns.FieldByName('width').AsFloat*0.14;
        exWks.Columns[Client_Columns.RecNo+1].ColumnWidth := ColumnWidth;
      except
      end;

      if LowerCase(cxGridView.Columns[Client_Columns.FieldByName('fld_index').AsInteger].DataBinding.ValueType) = 'string' then begin
        column_format := '@';
        exWks.Range[exWks.Cells[4, Client_Columns.RecNo + 1], exWks.Cells[4 + cnt_record - 3, Client_Columns.RecNo + 1]].NumberFormat := column_format;
      end;


      if cxGridView.Columns[Client_Columns.FieldByName('fld_index').AsInteger].Properties is TcxCurrencyEditProperties then begin
        column_format := TcxCurrencyEditProperties(cxGridView.Columns[Client_Columns.FieldByName('fld_index').AsInteger].Properties).DisplayFormat;
        column_format := StringReplace(
            StringReplace(column_format, ',', exApp.International[4{ThousandsSeparator}], [rfReplaceAll])
                                   , '.', exApp.International[3{DecimalSeparator}], [rfReplaceAll]);

        exWks.Range[exWks.Cells[4, Client_Columns.RecNo + 1], exWks.Cells[4 + cnt_record - 3, Client_Columns.RecNo + 1]].NumberFormat := column_format;
      end;

      if cxGridView.Columns[Client_Columns.FieldByName('fld_index').AsInteger].Properties is TcxDateEditProperties then begin
        exWks.Range[exWks.Cells[4, Client_Columns.RecNo + 1], exWks.Cells[4 + cnt_record - 3, Client_Columns.RecNo + 1]].NumberFormat := 'ДД'+FormatSettings.DateSeparator+'ММ'+FormatSettings.DateSeparator+'ГГГГ';
      end else if Client_Columns.FieldByName('field_type').AsString = 'DateTime' then begin
        exWks.Range[exWks.Cells[4, Client_Columns.RecNo + 1], exWks.Cells[4 + cnt_record - 3, Client_Columns.RecNo + 1]].NumberFormat := 'ДД'+FormatSettings.DateSeparator+'ММ'+FormatSettings.DateSeparator+'ГГГГ';
      end;

      Client_Columns.Next;
    end;

    // Вывод данных
    range.Value := array_data;

    // Применить стили
    ShowTextMessage('Печать таблицы в Excel...' + #10 + 'Форматирование таблицы...', False);
    exApp.ActiveWindow.DisplayGridlines := False;

    range.Borders[7].LineStyle := 1;
    range.Borders[8].LineStyle := 1;
    range.Borders[9].LineStyle := 1;
    range.Borders[10].LineStyle := 1;
    range.Borders[11].LineStyle := 1;
    range.Borders[12].LineStyle := 1;

    range.Borders[7].Color := $C0C0C0;
    range.Borders[8].Color := $C0C0C0;
    range.Borders[9].Color := $C0C0C0;
    range.Borders[10].Color := $C0C0C0;
    range.Borders[11].Color := $C0C0C0;
    range.Borders[12].Color := $C0C0C0;

    range_caption.Interior.Color := $CCFFCC;
    range_caption.Borders[7].Color := $000000;
    range_caption.Borders[8].Color := $000000;
    range_caption.Borders[9].Color := $000000;
    range_caption.Borders[10].Color := $000000;
    range_caption.Borders[11].Color := $000000;
    range_caption.Borders[12].Color := $000000;

    range_footer.Interior.Color := $CCFFCC;
    range_footer.Borders[7].Color := $000000;
    range_footer.Borders[8].Color := $000000;
    range_footer.Borders[9].Color := $000000;
    range_footer.Borders[10].Color := $000000;
    range_footer.Borders[11].Color := $000000;
    range_footer.Borders[12].Color := $000000;


    exWks.Cells.Font.Size := 8;
    exWks.Cells.Font.Name := 'MS Sans Serif';
    exWks.Cells.Rows.AutoFit;

    range.WrapText := False;
//    range.Columns.AutoFit;

    // Ширина колонок расстояние
    exWks.Columns[Client_Columns.RecordCount+2].EntireColumn.AutoFit;
    exWks.Columns[Client_Columns.RecordCount+3].EntireColumn.AutoFit;

    ShowTextMessage('Печать таблицы в Excel...' + #10 + 'Расчет итоговых сумм...', False);
    // Вывести итоги
    Client_Columns.First;
    while not Client_Columns.Eof do begin
      case cxGridView.Columns[Client_Columns.FieldByName('fld_index').AsInteger].Summary.FooterKind of
        skSum  : exWks.Cells[4 + cnt_record - 2, Client_Columns.RecNo + 1].Value := '=SUM(R[-1]C:R[-' + IntToStr(cnt_record-2) + ']C)';
        skCount: exWks.Cells[4 + cnt_record - 2, Client_Columns.RecNo + 1].Value := '=COUNTA(R[-1]C:R[-' + IntToStr(cnt_record-2) + ']C)';
      end;
      Client_Columns.Next;
    end;

    exWks.Range['A1'].Select;
    exApp.Visible := True;
    exWks := Null; exWkb := Null; exApp := Null;
    VarClear(exWks); VarClear(exWkb); VarClear(exApp);
    ShowTextMessage;
  end;

  Client_Columns.Free;
  Client_dist.Free;
  if connect <> nil then connect.Free;
end;

function ClientDataSetSort(ClientDataSet: TClientDataSet; const FieldsName: string; set_desc: boolean): boolean;
var
  i: integer;
  NewIndexName: string;
  IndexOptions: TIndexOptions;
//  Field: TField;
begin
  Result := False;
//  Field := ClientDataSet.Fields.FindField(FieldName);
  //If invalid field name, exit.
//  if Field = nil then Exit;

  //if invalid field type, exit.
//  if  (Field is TObjectField) or
//      (Field is TBlobField) or
//      (Field is TAggregateField) or
//      (Field is TVariantField) or
//      (Field is TBinaryField) then Exit;

  //Get IndexDefs and IndexName using RTTI
  //Ensure IndexDefs is up-to-date
  ClientDataSet.IndexDefs.Update;

  //If an ascending index is already in use,
  //switch to a descending index
//  if ClientDataSet.IndexName = FieldName + '__IdxA' then  begin
//      NewIndexName := FieldName + '__IdxD';
//      IndexOptions := [ixDescending];
//  end else begin
//      NewIndexName := FieldName + '__IdxA';
//      IndexOptions := [];
//  end;

  if set_desc = True then begin
      NewIndexName := AnsiReplaceStr(FieldsName, ';', '__') + '__IdxD';
      IndexOptions := [ixDescending];
  end else begin
      NewIndexName := AnsiReplaceStr(FieldsName, ';', '__') + '__IdxA';
      IndexOptions := [];
  end;

  if Length(NewIndexName) > 31 then
    NewIndexName := AnsiRightStr(NewIndexName, 31);

  //Look for existing index
  for i := 0 to Pred(ClientDataSet.IndexDefs.Count) do begin
    if ClientDataSet.IndexDefs[i].Name = NewIndexName then begin
        Result := True;
        Break
    end;
  end;

  //If existing index not found, create one
  if not Result then begin
    ClientDataSet.AddIndex(NewIndexName, FieldsName, IndexOptions);
    Result := True;
  end;

  //Set the index
  ClientDataSet.IndexName := NewIndexName;
end;


function iif(param_if: boolean; param_true: Variant; param_false: Variant):Variant;
begin
  if param_if then Result := param_true
  else Result := param_false;
end;

procedure SetdxDBGridColumns(cxGrid : TcxGridDBBandedTableView);
type
  TFunc = function(AHandle : THandle; var ClientDS : TClientDataSet) : variant;
var
   FGrid   : TFunc;
   handle  : THandle;
   v       : variant;
   i       : integer;
   ClientDS : TClientDataSet;
begin
  ClientDS := TClientDataSet.Create(nil);
  ClientDS.FieldDefs.Add('id', ftAutoInc);
  ClientDS.FieldDefs.Add('caption', ftString, 50);
  ClientDS.FieldDefs.Add('flag', ftBoolean);
  ClientDS.FieldDefs.Add('field_name', ftString, 50);
  ClientDS.FieldDefs.Add('field_position', ftInteger);
  ClientDS.FieldDefs.Add('field_color', ftInteger);
  ClientDS.FieldDefs.Add('field_focused', ftBoolean);
  ClientDS.FieldDefs.Add('field_bandindex', ftInteger);
  ClientDS.CreateDataSet;

   for i := 0 to cxGrid.ItemCount-1 do
    if cxGrid.Columns[i].Position.BandIndex <> -1 then begin
      ClientDS.Append;
      ClientDS['caption']         := cxGrid.Columns[i].Caption;
      ClientDS['flag']            := cxGrid.Columns[i].Visible;
      ClientDS['field_name']      := cxGrid.Columns[i].DataBinding.FieldName;
      ClientDS['field_position']  := cxGrid.Columns[i].Position.ColIndex;
      ClientDS['field_bandindex'] := cxGrid.Columns[i].Position.BandIndex;
      if cxGrid.Columns[i].Styles.Content <> nil then
        ClientDS['field_color'] := cxGrid.Columns[i].Styles.Content.Color;

      ClientDS['field_focused'] := cxGrid.Columns[i].Focused;
      ClientDS.Post;
    end;

   handle := LoadLibrary('user.dll');
   @FGrid := GetProcAddress(handle, 'CreateWndGridColumns');
   v := FGrid(Application.Handle, ClientDS);
   FreeLibrary(handle);

   if v[0] = 0 then begin
     ClientDS.First;
     while not ClientDS.Eof do begin
       cxGrid.GetColumnByFieldName(ClientDS.FieldByName('field_name').AsString).Visible           := ClientDS.FieldByName('flag').AsBoolean;
       cxGrid.GetColumnByFieldName(ClientDS.FieldByName('field_name').AsString).Position.ColIndex := ClientDS.FieldByName('field_position').AsInteger;
       cxGrid.GetColumnByFieldName(ClientDS.FieldByName('field_name').AsString).Focused           := ClientDS.FieldByName('field_focused').AsBoolean;
       ClientDS.Next;
     end;
   end;

   ClientDS.Free;
end;

procedure FiltercxGrid4ListID(cxGridView: TcxGridDBBandedTableView; field_name: string = ''; ListID: string = '');
var
  cxGridColumn : TcxGridDBBandedColumn;
  i : integer;
  k : integer;
  ArrListID : Array of string;
begin
  // Если колонка не передана, то берем колонку ключ
  if field_name = '' then
    field_name := cxGridView.DataController.KeyFieldNames;

  // Если нет указанной колонки, то не формируем фильтр
  cxGridColumn := cxGridView.GetColumnByFieldName(field_name);
  if cxGridColumn = nil then
    exit;

  // Если список ID опущен при вызове или пуст, то формируем его по выделенным записям
  if ListID = '' then begin

    // Если список ID опущен при вызове или пуст, то формируем его по выделенным записям
    SetLength(ArrListID, cxGridView.Controller.SelectedRowCount);
    for i := 0 to cxGridView.Controller.SelectedRowCount - 1 do begin
      ArrListID[i] := cxGridView.Controller.SelectedRows[i].Values[cxGridColumn.Index];
      if i > 0 then ListID := ListID + ',';
      if cxGridView.Controller.SelectedRows[i].Values[cxGridColumn.Index] = null then
        ListID := ListID + '<пусто>'
      else
        ListID := ListID + VarToStr(cxGridView.Controller.SelectedRows[i].Values[cxGridColumn.Index]);
    end;

  end else begin

    // Формируем массив для фильтрации (из параметра)
    if LeftStr(ListID, 1) = ',' then ListID := RightStr(ListID, Length(ListID) - 1);
    if RightStr(ListID, 1) = ',' then ListID := LeftStr(ListID, Length(ListID) - 1);

    i := 0;
    SetLength(ArrListID, i + 1);
    ArrListID[i] := ListID;
    k := Pos(',', ArrListID[i]);
    while k > 0 do begin
      inc(i);
      SetLength(ArrListID, i + 1);
      ArrListID[i] := MidStr(ArrListID[i - 1], k + 1, Length(ListID));
      ArrListID[i - 1] := LeftStr(ArrListID[i - 1], k - 1);
      k := Pos(',', ArrListID[i]);
    end;

  end;

  // Формируем фильтр
  with cxGridView.DataController.Filter do begin
    Clear;
    Options := Options + [fcoCaseInsensitive];
    Root.BoolOperatorKind := fboAnd;
    Root.AddItem(cxGridColumn, foInList, ArrListID, ListID);
    Active := True;
  end;

  cxGridView.Controller.ClearSelection;
  if cxGridView.DataController.FocusedRowIndex <> -1 then
    cxGridView.DataController.SelectRows(cxGridView.DataController.FocusedRowIndex, cxGridView.DataController.FocusedRowIndex);
end;

function DateToSQL(value :TDateTime): string;
begin
  result := ''''+FormatDateTime('yyyymmdd',value)+'''';
end;

procedure RefreshQueryGrid(cxGridView: TcxGridDBBandedTableView; field_name: string; values: int64=-9);
begin
  if cxGridView.GetColumnByFieldName(field_name).DataBinding.Field = nil then exit;

  Screen.Cursor := crHourglass;
  if values = -9 then begin
    if cxGridView.GetColumnByFieldName(field_name).DataBinding.Field.IsNull then values := 0
    else  values := StrToInt64(cxGridView.GetColumnByFieldName(field_name).DataBinding.Field.AsString);
  end;
  cxGridView.DataController.DataSource.DataSet.Close;
  cxGridView.DataController.DataSource.DataSet.Open;
  cxGridView.Controller.ClearSelection;
  if cxGridView.DataController.LocateByKey(values) = False then cxGridView.Controller.GoToFirst;;
  if cxGridView.Controller.FocusedRecord <> nil then  cxGridView.Controller.FocusedRecord.Selected := True;

  //cxGrid1DBBandedTableView1.Controller.FocusedRow.Selected := True;

  Screen.Cursor := crDefault;
end;


end.

