program Lis;

uses
  RailTariff_TLB,
  Midas,
  MidasLib,
  Forms,
  Sysutils,
  Windows,
  ActiveX,
  Dialogs,
  ComObj,
  Classes,
  Registry,
  StrUtils,
  Default in 'Default.pas',
  main in 'main.pas' {fmMain},
  Raznoe in 'Raznoe.pas',
  ContractAdd in 'ContractAdd.pas' {fmContractAdd},
  Contract in 'Contract.pas' {fmContract},
  Fact in 'Fact.pas' {fmFact},
  FactCard in 'FactCard.pas' {fmFactCard},
  Agree2 in 'Agree2.pas' {fmAgree2},
  Other in 'Other.pas' {fmOther},
  Period in 'Period.pas' {fmPeriod},
  LoadFact in 'LoadFact.pas' {fmLoadFact},
  LoadFactAdd in 'LoadFactAdd.pas' {fmLoadFactAdd},
  PayAdd in 'PayAdd.pas' {fmPayAdd},
  FactInc in 'FactInc.pas' {fmFactInc},
  AgreeFactInc in 'AgreeFactInc.pas' {fmAgreeFactInc},
  ClientInvoice in 'ClientInvoice.pas' {fmClientInvoice},
  ClientInvoiceAdd in 'ClientInvoiceAdd.pas' {fmClientInvoiceAdd},
  FactIncCard in 'FactIncCard.pas' {fmFactIncCard},
  Filter in 'Filter.pas' {fmFilter},
  Pay in 'Pay.pas' {fmPay},
  FirmAdd in 'FirmAdd.pas' {fmFirmAdd},
  Firm in 'Firm.pas' {fmFirm},
  FactTrack in 'FactTrack.pas' {fmFactTrack},
  TariffSupportFunctions in 'TariffSupportFunctions.pas',
  ZFTOScore in 'ZFTOScore.pas' {fmZFTOScore},
  OrdersAgreeAdd in 'OrdersAgreeAdd.pas' {fmOrdersAgreeAdd},
  OrdersAgree in 'OrdersAgree.pas' {fmOrdersAgree},
  OrdersAgreeRailAdd in 'OrdersAgreeRailAdd.pas' {fmOrdersAgreeRailAdd},
  FirmContactAdd in 'FirmContactAdd.pas' {fmFirmContactAdd},
  FactTech in 'FactTech.pas' {fmFactTech},
  FactTechAdd in 'FactTechAdd.pas' {fmFactTech},
  PlanClient in 'PlanClient.pas' {fmPlanClient},
  InvoiceScore in 'InvoiceScore.pas' {fmInvoiceScore},
  OrdersPay in 'OrdersPay.pas' {fmOrdersPay},
  FactTrackAdd in 'FactTrackAdd.pas' {fmFactTrackAdd},
  PayInvoiceAdd in 'PayInvoiceAdd.pas' {fmPayInvoiceAdd},
  FactSum in 'FactSum.pas' {fmFactSum},
  ZFTOScoreAdd in 'ZFTOScoreAdd.pas' {fmZFTOScoreAdd},
  DailyInfo in 'DailyInfo.pas',
  UsersActive in 'UsersActive.pas' {fmUsersActive},
  Acts in 'Acts.pas' {fmActs},
  BargainListAdd in 'BargainListAdd.pas' {fmBargainListAdd},
  Stat in 'Stat.pas' {fmStat},
  StatFrame in 'StatFrame.pas' {frStatFrame: TFrame},
  VagonArendaRepairAdd in 'VagonArendaRepairAdd.pas' {fmVagonArendaRepairAdd},
  InvoiceScoreCorrAdd in 'InvoiceScoreCorrAdd.pas' {fmInvoiceScoreCorrAdd},
  InvoiceScoreAdd in 'InvoiceScoreAdd.pas' {fmInvoiceScoreAdd},
  Budget in 'Budget.pas' {fmBudget},
  VagonArenda in 'VagonArenda.pas' {fmVagonArenda},
  VagonArendaAdd in 'VagonArendaAdd.pas' {fmVagonArendaAdd},
  VagonArendaRateAdd in 'VagonArendaRateAdd.pas' {fmVagonArendaRateAdd},
  EDOXMLAct in 'EDOXMLAct.pas',
  TrafficManagment in 'TrafficManagment.pas' {fmTrafficManagment},
  EDOXMLUniTrDoc in 'EDOXMLUniTrDoc.pas',
  AgreeAdd2 in 'AgreeAdd2.pas' {fmAgreeAdd2},
  ShapeRateAdd2 in 'ShapeRateAdd2.pas' {fmShapeRateAdd2},
  PlanRateAgentAdd in 'PlanRateAgentAdd.pas' {fmPlanRateAgentAdd},
  PlanClientRateAdd in 'PlanClientRateAdd.pas' {fmPlanClientRateAdd},
  PlanClientAdd in 'PlanClientAdd.pas' {fmPlanClientAdd},
  PlanRateClientAdd in 'PlanRateClientAdd.pas' {fmPlanRateClientAdd},
  ClientFrahtCard2 in 'ClientFrahtCard2.pas' {fmClientFrahtCard2},
  ContractCloseAdd in 'ContractCloseAdd.pas' {fmContractCloseAdd},
  EDOXMLInvoice in 'EDOXMLInvoice.pas',
  FirmBalance in 'FirmBalance.pas' {fmFirmBalance},
  InvoiceScoreReserve in 'InvoiceScoreReserve.pas' {fmInvoiceScoreReserve},
  InvoiceScoreReserveAdd in 'InvoiceScoreReserveAdd.pas' {fmInvoiceScoreReserveAdd},
  EDOXMLUniTrDoc820 in 'EDOXMLUniTrDoc820.pas',
  Raznoe1C in 'Raznoe1C.pas',
  EffectSPS in 'EffectSPS.pas' {fmEffectSPS},
  EffectSPSAdd in 'EffectSPSAdd.pas' {fmEffectSPSAdd};

{fmFactTrack}

 {$R *.RES} {$R RusDevU.RES}

type
  TFunc = function(AppHand: THandle; usr_pwd: PUser_pwd; param: string): Variant;
  TFuncConnect = function(users_name: string; password: string; server: string; catalog: string): Variant;
var
  FPass        : TFunc;
  FPassConnect : TFuncConnect;

  handle    : THandle;
  v         : Variant;
  param     : string;
  i         : integer;

  p_name    : string;
  p_val     : string;
  global_id : integer;
  user_name, user_pas, server, catalog : string;
begin
    //---------------------------------------------------------
    // Для RailTarif, RailInfo
    CoUninitialize();
    CoInitialize(nil);
    CoInitializeSecurity(nil, -1, nil, nil, 1, 3, nil, 0, nil);
    //---------------------------------------------------------

    user_name := '';
    user_pas  := '';
    server    := '';
    catalog   := '';
    global_id := -9;
    for i:=1 to ParamCount do begin
      if Pos('=', ParamStr(i)) <> 0 then begin
        p_name := LeftStr(ParamStr(i), Pos('=', ParamStr(i))-1);
        p_val  := RightStr(ParamStr(i), Length(ParamStr(i)) - Pos('=', ParamStr(i)));

        if LowerCase(p_name) = 'user_name' then user_name := p_val;
        if LowerCase(p_name) = 'user_pas'  then user_pas  := p_val;
        if LowerCase(p_name) = 'server'    then server    := p_val;
        if LowerCase(p_name) = 'catalog'   then catalog   := p_val;
        if LowerCase(p_name) = 'global_id' then global_id := StrToIntDef(p_val,-9);
      end;
    end;


    param := '';
    for i:=1 to ParamCount do begin
      if LowerCase(ParamStr(i)) = 'lis' then begin
        param := ParamStr(i);
      end;
      if LowerCase(ParamStr(i)) = 'mas' then begin
        param := ParamStr(i);
      end;
      if LowerCase(ParamStr(i)) = 'sym' then begin
        param := ParamStr(i);
      end;
      if LowerCase(ParamStr(i)) = 'gshp' then begin
        param := ParamStr(i);
      end;
    end;

    if param = '' then begin
      Application.MessageBox('ПРОГРАММУ НЕОБХОДИМО ЗАПУСКАТЬ С РАБОЧЕГО СТОЛА !!!', 'ВНИМАНИЕ', MB_OK);
    end else begin
      Application.Initialize;
      if (user_pas <> '') and (user_name <> '') then begin
        handle        := LoadLibrary('pass.dll');
        @FPassConnect := GetProcAddress(handle, 'ConnectToDatabase');
        v             := FPassConnect(user_name, user_pas, server, catalog);
        FreeLibrary(handle);
      end else begin
        handle := LoadLibrary('pass.dll');
        @FPass := GetProcAddress(handle,'CreateWndPasswordParam');
        v := FPass(Application.Handle, nil, param);
        FreeLibrary(handle);
      end;

      if v[0]<>-9 then begin
        Application.Title := 'Logistics Information System';
        Application.CreateForm(TfmMain, fmMain);
        Application.CreateForm(TfmOther, fmOther);
        fmMain.SetPar(v);
        if global_id <> -9 then
          fmMain.SetGlobalId(global_id);
      end;
      Application.Run;
    end;
end.
