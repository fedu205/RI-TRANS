unit TariffSupportFunctions;



interface

uses Windows, RailTariff_TLB, Dialogs, Default;

type
PCoAuthIdentity = ^TCoAuthIdentity;
 _COAUTHIDENTITY = record
    User : PChar;
    UserLength : ULONG ;
    Domain : PChar;
    DomainLength : ULONG;
    Password : PChar;
    PasswordLength : ULONG;
    Flags: ULONG;
 end;
TCoAuthIdentity = _COAUTHIDENTITY;


PCoAuthInfo = ^TCoAuthInfo;
_COAUTHINFO = record
    dwAuthnSvc : Longint;
    dwAuthzSvc : Longint;
    pwszServerPrincName   : LPWSTR;
    dwAuthnLevel          : Longint;
    dwImpersonationLevel  : Longint;
    pAuthIdentityData     : Pointer;
    dwCapabilities        : Longint;
  end;
TCoAuthInfo = _COAUTHINFO;

PCoServerInfo2 = ^TCoServerInfo2;
_COSERVERINFO2 = record
    dwReserved1: Longint;
    pwszName: LPWSTR;
    pAuthInfo: Pointer;
    dwReserved2: Longint;
end;
TCoServerInfo2 = _COSERVERINFO2;


{
    Функция создает обьект Application модуля расчета тарифа, в зависимости
    от значения параметра MachineName создается локальный или удаленный обект
    При запуске из под отладчика обьект создается как LocalServer
}
function RTXCreate (const MachineIP:String=''): RailTariff_TLB.IApplication;
function RTXCreate2(const MachineIP: string; UserName: string; UserPassword: string): RailTariff_TLB.IApplication;

{
    Установить параметры создания обекта по умолчанию, если вызван этот метод,
    то в случае вызова RTXCreate без переметров будут использоваться эти данные
}
function RTXSetCreateParams(const MachineIP:String=''):boolean;


implementation

uses ComObj,ActiveX,FileCtrl,shlobj,sysutils,Consts;
var
  gMachineName:String;

{Функциия для создания обьекта как внепроцессного сервера}
function CreateLocalServer(const ClassID: TGUID): RailTariff_tlb.IApplication;
Var
  Unk_Result:IUnknown;
begin
    OleCheck(CoCreateInstance(ClassID, nil, CLSCTX_LOCAL_SERVER, IUnknown,  Unk_Result));
    Result := Unk_Result  as RailTariff_tlb.IApplication;
end;

function CreateRemoteServer(const MachineIP: WideString ): RailTariff_tlb.IApplication;
var
  MQI               : TMultiQI;
  ServerInfo        : TCoServerInfo;
  IID_IAppliction   : TGuid;
  Flags             : DWORD;
  ClassID           : TGUID;
  hr                : HRESULT;
  x                 : TCoAuthInfo;
  AccessUser        : TCoAuthIdentity;
begin
  ClassID:=Railtariff_tlb.CLASS_Application;
  FillChar(ServerInfo, sizeof(ServerInfo), 0);
  FillChar(x, sizeof(x), 0);
  FillChar(AccessUser, sizeof(AccessUser), 0);
  ServerInfo.pwszName := PWideChar(MachineIP);

  AccessUser.User := PChar('CTM_User');
  AccessUser.UserLength := Length('CTM_User');
  AccessUser.Password := PChar('gjlrk.xbnm');
  AccessUser.PasswordLength := Length('gjlrk.xbnm');
  AccessUser.Flags := 2;

  x.dwAuthnSvc := 10;
  x.dwAuthzSvc := 1;
  x.pwszServerPrincName := nil;
  x.dwAuthnLevel := 2;
  x.dwImpersonationLevel := 3;
  x.pAuthIdentityData := @AccessUser;
  x.dwCapabilities := 0;

  ServerInfo.pAuthInfo := @x;

  IID_IAppliction := RailTariff_tlb.IApplication;
  Flags := CLSCTX_REMOTE_SERVER;

  MQI.IID := @IID_IAppliction;
  MQI.itf := nil;
  MQI.hr := 0;

  CoUninitialize();
  CoInitialize(nil);
  hr := CoInitializeSecurity(nil, -1, nil, nil, 1, 3, nil, 0, nil);
  OleCheck(hr);

  hr:=CoCreateInstanceEx(ClassID, nil, Flags, @ServerInfo, 1, @MQI);
  OleCheck(hr);
  OleCheck(MQI.HR);
  Result := MQI.itf as RailTariff_tlb.IApplication;
end;

{Функция проверки наличия отладчика}
function IsDebuggerPresent:boolean; external kernel32 name 'IsDebuggerPresent';

{
    Функция создает обьект Application модуля расчета тарифа, в зависимости
    от значения параметра MachineName создается локальный или удаленный обект
    Для отладочной версии в случае необходимости создания локального обьекта,
    обькт создается как LocalServer
}
function RTXCreate(const MachineIP:String=''):RailTariff_TLB.IApplication;
Var
   Machine_IP:String;
   Object_CLSID:TGUID;
begin
  Machine_IP := '';
  if MachineIP <> '' then   // Имя машины передано
    Machine_IP := MachineIP
  else // Проверка глобального имени
    if gMachineName <> '' then
      Machine_IP:=gMachineName;

  Object_CLSID:= RailTariff_TLB.CLASS_Application;
  if Machine_IP <> '' then
    Result:=CreateRemoteServer(Machine_IP)
  else if IsDebuggerPresent then
    Result:=CreateLocalServer(Object_CLSID)
  else
    Result:=CreateComObject(Object_CLSID) as RailTariff_TLB.IApplication;
end;

{
    Установить параметры создания обекта по умолчанию
}

function RTXSetCreateParams(const MachineIP:String=''):boolean;
begin
    gMachineName:=MachineIP;
    Result:=true;
end;


function CreateRemoteServerDomain(const MachineIP: WideString; UserName: string; UserPassword: string): RailTariff_tlb.IApplication;
var
  MQI               : TMultiQI;
  ServerInfo        : TCoServerInfo;
  IID_IAppliction   : TGuid;
  Flags             : DWORD;
  ClassID           : TGUID;
  hr                : HRESULT;
  x                 : TCoAuthInfo;
  AccessUser        : TCoAuthIdentity;
  Domain : WideString;
begin
  ClassID:=Railtariff_tlb.CLASS_Application;
  FillChar(ServerInfo, sizeof(ServerInfo), 0);
  FillChar(x, sizeof(x), 0);
  FillChar(AccessUser, sizeof(AccessUser), 0);
  ServerInfo.pwszName := PWideChar(MachineIP);

  Domain := 'PC-CTM';
  AccessUser.User := PChar(UserName);
  AccessUser.UserLength := Length(UserName);
  AccessUser.Domain := PChar(Domain);
  AccessUser.DomainLength := Length(Domain);
  AccessUser.Password := PChar(UserPassword);
  AccessUser.PasswordLength := Length(UserPassword);
  AccessUser.Flags := 2;

  x.dwAuthnSvc := 10;
  x.dwAuthzSvc := 1;
  x.pwszServerPrincName := nil;
  x.dwAuthnLevel := 2;
  x.dwImpersonationLevel := 3;
  x.pAuthIdentityData := @AccessUser;
  x.dwCapabilities := 0;

  ServerInfo.pAuthInfo := @x;

  IID_IAppliction := RailTariff_tlb.IApplication;
  Flags := CLSCTX_REMOTE_SERVER;

  MQI.IID := @IID_IAppliction;
  MQI.itf := nil;
  MQI.hr := 0;

  CoUninitialize();
  CoInitialize(nil);
  hr := CoInitializeSecurity(nil, -1, nil, nil, 1, 3, nil, 0, nil);
  if (hr <> S_OK) AND (hr <> RPC_E_TOO_LATE) then begin
    OleCheck(hr);
  end;

  hr:=CoCreateInstanceEx(ClassID, nil, Flags, @ServerInfo, 1, @MQI);
  OleCheck(hr);
  OleCheck(MQI.HR);
  Result := MQI.itf as RailTariff_tlb.IApplication;
end;

function CreateRemoteServerNotDomain(const MachineName: WideString): RailTariff_tlb.IApplication;
var
  MQI:              TMultiQI;
  ServerInfo:       TCoServerInfo;
  IID_IAppliction:  TGuid;
  Flags:            DWORD;
  ClassID:          TGUID;
  hr:               HRESULT;
begin
  ClassID:=Railtariff_tlb.CLASS_Application;
  FillChar(ServerInfo, sizeof(ServerInfo), 0);
  ServerInfo.pwszName := PWideChar(MachineName);
  IID_IAppliction := RailTariff_tlb.IApplication;
  Flags := CLSCTX_REMOTE_SERVER;

  {  Запрос интерфейса IID_IAppliction у обьекта CLASS_Application}
  MQI.IID := @IID_IAppliction;
  MQI.itf := nil;
  MQI.hr := 0;
  hr:=CoCreateInstanceEx(ClassID, nil, Flags, @ServerInfo, 1, @MQI);
  OleCheck(hr);
  OleCheck(MQI.HR);
  Result := MQI.itf as RailTariff_tlb.IApplication;
end;


function RTXCreate2(const MachineIP: string; UserName: string; UserPassword: string): RailTariff_TLB.IApplication;
Var
   Machine_IP:String;
   Object_CLSID:TGUID;
begin
  Machine_IP := '';

  // Имя машины передано
  if MachineIP <> '' then begin
    Machine_IP := MachineIP;
  end else begin
    // Проверка глобального имени
    if gMachineName <> '' then
      Machine_IP := gMachineName;
  end;

  Object_CLSID:= RailTariff_TLB.CLASS_Application;
  if Machine_IP <> '' then begin
    if UserName <> '' then
      Result := CreateRemoteServerDomain(Machine_IP, UserName, UserPassword)
    else
      Result := CreateRemoteServerNotDomain(Machine_IP)
  end else if IsDebuggerPresent then
    Result:=CreateLocalServer(Object_CLSID)
  else
    Result:=CreateComObject(Object_CLSID) as RailTariff_TLB.IApplication;
end;


end.

