// ************************************************************************ //
// The types declared in this file were generated from data read from the
// WSDL File described below:
// WSDL     : C:\Temp\test.WSDL
// Version  : 1.0
// (29.10.2007 12:48:12 - 1.33.2.5)
// ************************************************************************ //

unit SOAP;

interface

uses InvokeRegistry, SOAPHTTPClient, Types, XSBuiltIns;

type

  // ************************************************************************ //
  // The following types, referred to in the WSDL document are not being represented
  // in this file. They are either aliases[@] of other types represented or were referred
  // to but never[!] declared in the document. The types from the latter category
  // typically map to predefined/known XML or Borland types; however, they could also 
  // indicate incorrect WSDL documents that failed to declare or import a schema type.
  // ************************************************************************ //
  // !:string          - "http://www.w3.org/2001/XMLSchema"
  // !:boolean         - "http://www.w3.org/2001/XMLSchema"


  // ************************************************************************ //
  // Namespace : SysEtranInt
  // soapAction: urn:SysEtranInt
  // transport : http://schemas.xmlsoap.org/soap/http
  // style     : rpc
  // binding   : IEtranSysbinding
  // service   : IEtranSysservice
  // port      : IEtranSysPort
  // URL       : http://12.0.0.1:8092/EtranServer/EtranLR.dll/soap
  // ************************************************************************ //
  IEtranSys = interface(IInvokable)
  ['{6875F8B4-D9BC-8C0B-4827-D00FE7F0839B}']
    function  SendBlock(const Text: WideString): Boolean; stdcall;
    function  GetBlock(const Login: WideString; const Password: WideString; var Text: WideString; const ECP: WideString; const TSP: WideString): Boolean; stdcall;
  end;

function GetIEtranSys(UseWSDL: Boolean=System.False; Addr: string=''; HTTPRIO: THTTPRIO = nil): IEtranSys;


implementation

function GetIEtranSys(UseWSDL: Boolean; Addr: string; HTTPRIO: THTTPRIO): IEtranSys;
const
  defWSDL = 'C:\Temp\test.WSDL';
  defURL  = 'http://12.0.0.1:8092/EtranServer/EtranLR.dll/soap';
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
  InvRegistry.RegisterInterface(TypeInfo(IEtranSys), 'SysEtranInt', '');
  InvRegistry.RegisterDefaultSOAPAction(TypeInfo(IEtranSys), 'urn:SysEtranInt');

end.