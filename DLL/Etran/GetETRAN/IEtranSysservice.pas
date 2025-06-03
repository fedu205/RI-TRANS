// ************************************************************************ //
// The types declared in this file were generated from data read from the
// WSDL File described below:
// WSDL     : D:\Project\SFH\NKK\DLL\Etran\GetETRAN\IEtranSysservice.xml
// Encoding : UTF-8
// Version  : 1.0
// (28.11.2023 22:24:18 - - $Rev: 112483 $)
// ************************************************************************ //

unit IEtranSysservice;

interface

uses Soap.InvokeRegistry, Soap.SOAPHTTPClient, System.Types, Soap.XSBuiltIns;

type

  // ************************************************************************ //
  // The following types, referred to in the WSDL document are not being represented
  // in this file. They are either aliases[@] of other types represented or were referred
  // to but never[!] declared in the document. The types from the latter category
  // typically map to predefined/known XML or Embarcadero types; however, they could also 
  // indicate incorrect WSDL documents that failed to declare or import a schema type.
  // ************************************************************************ //
  // !:string          - "http://www.w3.org/2001/XMLSchema"[]
  // !:boolean         - "http://www.w3.org/2001/XMLSchema"[]


  // ************************************************************************ //
  // Namespace : SysEtranInt
  // soapAction: urn:SysEtranInt
  // transport : http://schemas.xmlsoap.org/soap/http
  // style     : rpc
  // use       : ????
  // binding   : IEtranSysbinding
  // service   : IEtranSysservice
  // port      : IEtranSysPort
  // URL       : http://10.248.35.14:8092/AppServer/IEtranSysservice
  // ************************************************************************ //
  IEtranSys = interface(IInvokable)
  ['{6875F8B4-D9BC-8C0B-4827-D00FE7F0839B}']
    function  SendBlock(const Text: string): Boolean; stdcall;
    function  GetBlock(const Login: string; const Password: string; var Text: string): Boolean; stdcall;
  end;

function GetIEtranSys(UseWSDL: Boolean=System.False; Addr: string=''; HTTPRIO: THTTPRIO = nil): IEtranSys;


implementation
  uses System.SysUtils;

function GetIEtranSys(UseWSDL: Boolean; Addr: string; HTTPRIO: THTTPRIO): IEtranSys;
const
  defWSDL = 'D:\Project\SFH\NKK\DLL\Etran\GetETRAN\IEtranSysservice.xml';
  defURL  = 'http://10.248.35.14:8092/AppServer/IEtranSysservice';
  defSvc  = 'IEtranSysservice';
  defPrt  = 'IEtranSysPort';
var
  RIO: THTTPRIO;
begin
  Result := nil;
  if (Addr = '') then
  begin
    if UseWSDL then
      Addr := defWSDL
    else
      Addr := defURL;
  end;
  if HTTPRIO = nil then
    RIO := THTTPRIO.Create(nil)
  else
    RIO := HTTPRIO;
  try

    RIO.HTTPWebNode.ConnectTimeout := 60000; //1 мин;
    RIO.HTTPWebNode.SendTimeout    := 60000; //1 мин;
    RIO.HTTPWebNode.ReceiveTimeout := 60000; //1 мин;

    Result := (RIO as IEtranSys);
    if UseWSDL then
    begin
      RIO.WSDLLocation := Addr;
      RIO.Service := defSvc;
      RIO.Port := defPrt;
    end else
      RIO.URL := Addr;
  finally
    if (Result = nil) and (HTTPRIO = nil) then
      RIO.Free;
  end;
end;


initialization
  { IEtranSys }
  InvRegistry.RegisterInterface(TypeInfo(IEtranSys), 'SysEtranInt', 'UTF-8');
  InvRegistry.RegisterDefaultSOAPAction(TypeInfo(IEtranSys), 'urn:SysEtranInt');

end.