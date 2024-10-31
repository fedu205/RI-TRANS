// ************************************************************************ //
// The types declared in this file were generated from data read from the
// WSDL File described below:
// WSDL     : http://www.cbr.ru/DailyInfoWebServ/DailyInfo.asmx?WSDL
// Encoding : utf-8
// Version  : 1.0
// (12.01.2009 15:20:38 - 1.33.2.5)
// ************************************************************************ //

unit DailyInfo;

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
  // !:dateTime        - "http://www.w3.org/2001/XMLSchema"
  // !:string          - "http://www.w3.org/2001/XMLSchema"
  // !:boolean         - "http://www.w3.org/2001/XMLSchema"

  SaldoResult          = class;                 { "http://web.cbr.ru/" }
  NewsInfoResult       = class;                 { "http://web.cbr.ru/" }
  SwapDynamicResult    = class;                 { "http://web.cbr.ru/" }
  DepoDynamicResult    = class;                 { "http://web.cbr.ru/" }
  OstatDynamicResult   = class;                 { "http://web.cbr.ru/" }
  DragMetDynamicResult = class;                 { "http://web.cbr.ru/" }
  EnumValutesResult    = class;                 { "http://web.cbr.ru/" }
  GetCursDynamicResult = class;                 { "http://web.cbr.ru/" }
  GetSeldCursOnDateResult = class;              { "http://web.cbr.ru/" }
  GetCursOnDateResult  = class;                 { "http://web.cbr.ru/" }

  SaldoXMLResult  =  type WideString;      { "http://web.cbr.ru/" }


  // ************************************************************************ //
  // Namespace : http://web.cbr.ru/
  // ************************************************************************ //
  SaldoResult = class(TRemotable)
  private
    Fschema: WideString;
  published
    property schema: WideString read Fschema write Fschema;
  end;

  NewsInfoXMLResult =  type WideString;      { "http://web.cbr.ru/" }
  OmodInfoXMLResult =  type WideString;      { "http://web.cbr.ru/" }
  XVolXMLResult   =  type WideString;      { "http://web.cbr.ru/" }
  MainInfoXMLResult =  type WideString;      { "http://web.cbr.ru/" }


  // ************************************************************************ //
  // Namespace : http://web.cbr.ru/
  // ************************************************************************ //
  NewsInfoResult = class(TRemotable)
  private
    Fschema: WideString;
  published
    property schema: WideString read Fschema write Fschema;
  end;

  SwapDynamicXMLResult =  type WideString;      { "http://web.cbr.ru/" }


  // ************************************************************************ //
  // Namespace : http://web.cbr.ru/
  // ************************************************************************ //
  SwapDynamicResult = class(TRemotable)
  private
    Fschema: WideString;
  published
    property schema: WideString read Fschema write Fschema;
  end;

  DepoDynamicXMLResult =  type WideString;      { "http://web.cbr.ru/" }


  // ************************************************************************ //
  // Namespace : http://web.cbr.ru/
  // ************************************************************************ //
  DepoDynamicResult = class(TRemotable)
  private
    Fschema: WideString;
  published
    property schema: WideString read Fschema write Fschema;
  end;

  OstatDynamicXMLResult =  type WideString;      { "http://web.cbr.ru/" }


  // ************************************************************************ //
  // Namespace : http://web.cbr.ru/
  // ************************************************************************ //
  OstatDynamicResult = class(TRemotable)
  private
    Fschema: WideString;
  published
    property schema: WideString read Fschema write Fschema;
  end;

  DragMetDynamicXMLResult =  type WideString;      { "http://web.cbr.ru/" }


  // ************************************************************************ //
  // Namespace : http://web.cbr.ru/
  // ************************************************************************ //
  DragMetDynamicResult = class(TRemotable)
  private
    Fschema: WideString;
  published
    property schema: WideString read Fschema write Fschema;
  end;

  EnumValutesXMLResult =  type WideString;      { "http://web.cbr.ru/" }


  // ************************************************************************ //
  // Namespace : http://web.cbr.ru/
  // ************************************************************************ //
  EnumValutesResult = class(TRemotable)
  private
    Fschema: WideString;
  published
    property schema: WideString read Fschema write Fschema;
  end;

  GetCursDynamicXMLResult =  type WideString;      { "http://web.cbr.ru/" }


  // ************************************************************************ //
  // Namespace : http://web.cbr.ru/
  // ************************************************************************ //
  GetCursDynamicResult = class(TRemotable)
  private
    Fschema: WideString;
  published
    property schema: WideString read Fschema write Fschema;
  end;

  GetCursOnDateXMLResult =  type WideString;      { "http://web.cbr.ru/" }
  GetSeldCursOnDateXMLResult =  type WideString;      { "http://web.cbr.ru/" }


  // ************************************************************************ //
  // Namespace : http://web.cbr.ru/
  // ************************************************************************ //
  GetSeldCursOnDateResult = class(TRemotable)
  private
    Fschema: WideString;
  published
    property schema: WideString read Fschema write Fschema;
  end;



  // ************************************************************************ //
  // Namespace : http://web.cbr.ru/
  // ************************************************************************ //
  GetCursOnDateResult = class(TRemotable)
  private
    Fschema: WideString;
  published
    property schema: WideString read Fschema write Fschema;
  end;


  // ************************************************************************ //
  // Namespace : http://web.cbr.ru/
  // soapAction: http://web.cbr.ru/%operationName%
  // transport : http://schemas.xmlsoap.org/soap/http
  // binding   : DailyInfoSoap
  // service   : DailyInfo
  // port      : DailyInfoSoap
  // URL       : http://www.cbr.ru/DailyInfoWebServ/DailyInfo.asmx
  // ************************************************************************ //
  DailyInfoSoap = interface(IInvokable)
  ['{0AF4B455-1A23-845E-90F5-477BED8BDD19}']
    function  SaldoXML(const fromDate: TXSDateTime; const ToDate: TXSDateTime): SaldoXMLResult; stdcall;
    function  Saldo(const fromDate: TXSDateTime; const ToDate: TXSDateTime): SaldoResult; stdcall;
    function  NewsInfoXML(const fromDate: TXSDateTime; const ToDate: TXSDateTime): NewsInfoXMLResult; stdcall;
    function  OmodInfoXML: OmodInfoXMLResult; stdcall;
    function  XVolXML: XVolXMLResult; stdcall;
    function  MainInfoXML: MainInfoXMLResult; stdcall;
    function  NewsInfo(const fromDate: TXSDateTime; const ToDate: TXSDateTime): NewsInfoResult; stdcall;
    function  SwapDynamicXML(const fromDate: TXSDateTime; const ToDate: TXSDateTime): SwapDynamicXMLResult; stdcall;
    function  SwapDynamic(const fromDate: TXSDateTime; const ToDate: TXSDateTime): SwapDynamicResult; stdcall;
    function  DepoDynamicXML(const fromDate: TXSDateTime; const ToDate: TXSDateTime): DepoDynamicXMLResult; stdcall;
    function  DepoDynamic(const fromDate: TXSDateTime; const ToDate: TXSDateTime): DepoDynamicResult; stdcall;
    function  OstatDynamicXML(const fromDate: TXSDateTime; const ToDate: TXSDateTime): OstatDynamicXMLResult; stdcall;
    function  OstatDynamic(const fromDate: TXSDateTime; const ToDate: TXSDateTime): OstatDynamicResult; stdcall;
    function  DragMetDynamicXML(const fromDate: TXSDateTime; const ToDate: TXSDateTime): DragMetDynamicXMLResult; stdcall;
    function  DragMetDynamic(const fromDate: TXSDateTime; const ToDate: TXSDateTime): DragMetDynamicResult; stdcall;
    function  GetLatestDateTime: TXSDateTime; stdcall;
    function  GetLatestDate: WideString; stdcall;
    function  GetLatestDateTimeSeld: TXSDateTime; stdcall;
    function  GetLatestDateSeld: WideString; stdcall;
    function  EnumValutesXML(const Seld: Boolean): EnumValutesXMLResult; stdcall;
    function  EnumValutes(const Seld: Boolean): EnumValutesResult; stdcall;
    function  GetCursDynamicXML(const FromDate: TXSDateTime; const ToDate: TXSDateTime; const ValutaCode: WideString): GetCursDynamicXMLResult; stdcall;
    function  GetCursDynamic(const FromDate: TXSDateTime; const ToDate: TXSDateTime; const ValutaCode: WideString): GetCursDynamicResult; stdcall;
    function  GetCursOnDateXML(const On_date: TXSDateTime): GetCursOnDateXMLResult; stdcall;
    function  GetSeldCursOnDateXML(const On_date: TXSDateTime): GetSeldCursOnDateXMLResult; stdcall;
    function  GetSeldCursOnDate(const On_date: TXSDateTime): GetSeldCursOnDateResult; stdcall;
    function  GetCursOnDate(const On_date: TXSDateTime): GetCursOnDateResult; stdcall;
  end;

function GetDailyInfoSoap(UseWSDL: Boolean=System.False; Addr: string=''; HTTPRIO: THTTPRIO = nil): DailyInfoSoap;


implementation

function GetDailyInfoSoap(UseWSDL: Boolean; Addr: string; HTTPRIO: THTTPRIO): DailyInfoSoap;
const
  defWSDL = 'http://www.cbr.ru/DailyInfoWebServ/DailyInfo.asmx?WSDL';
  defURL  = 'http://www.cbr.ru/DailyInfoWebServ/DailyInfo.asmx';
  defSvc  = 'DailyInfo';
  defPrt  = 'DailyInfoSoap';
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
    Result := (RIO as DailyInfoSoap);
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
  InvRegistry.RegisterInterface(TypeInfo(DailyInfoSoap), 'http://web.cbr.ru/', 'utf-8');
  InvRegistry.RegisterDefaultSOAPAction(TypeInfo(DailyInfoSoap), 'http://web.cbr.ru/%operationName%');
  InvRegistry.RegisterInvokeOptions(TypeInfo(DailyInfoSoap), ioDocument);
  RemClassRegistry.RegisterXSInfo(TypeInfo(SaldoXMLResult), 'http://web.cbr.ru/', 'SaldoXMLResult');
  RemClassRegistry.RegisterXSClass(SaldoResult, 'http://web.cbr.ru/', 'SaldoResult');
  RemClassRegistry.RegisterXSInfo(TypeInfo(NewsInfoXMLResult), 'http://web.cbr.ru/', 'NewsInfoXMLResult');
  RemClassRegistry.RegisterXSInfo(TypeInfo(OmodInfoXMLResult), 'http://web.cbr.ru/', 'OmodInfoXMLResult');
  RemClassRegistry.RegisterXSInfo(TypeInfo(XVolXMLResult), 'http://web.cbr.ru/', 'XVolXMLResult');
  RemClassRegistry.RegisterXSInfo(TypeInfo(MainInfoXMLResult), 'http://web.cbr.ru/', 'MainInfoXMLResult');
  RemClassRegistry.RegisterXSClass(NewsInfoResult, 'http://web.cbr.ru/', 'NewsInfoResult');
  RemClassRegistry.RegisterXSInfo(TypeInfo(SwapDynamicXMLResult), 'http://web.cbr.ru/', 'SwapDynamicXMLResult');
  RemClassRegistry.RegisterXSClass(SwapDynamicResult, 'http://web.cbr.ru/', 'SwapDynamicResult');
  RemClassRegistry.RegisterXSInfo(TypeInfo(DepoDynamicXMLResult), 'http://web.cbr.ru/', 'DepoDynamicXMLResult');
  RemClassRegistry.RegisterXSClass(DepoDynamicResult, 'http://web.cbr.ru/', 'DepoDynamicResult');
  RemClassRegistry.RegisterXSInfo(TypeInfo(OstatDynamicXMLResult), 'http://web.cbr.ru/', 'OstatDynamicXMLResult');
  RemClassRegistry.RegisterXSClass(OstatDynamicResult, 'http://web.cbr.ru/', 'OstatDynamicResult');
  RemClassRegistry.RegisterXSInfo(TypeInfo(DragMetDynamicXMLResult), 'http://web.cbr.ru/', 'DragMetDynamicXMLResult');
  RemClassRegistry.RegisterXSClass(DragMetDynamicResult, 'http://web.cbr.ru/', 'DragMetDynamicResult');
  RemClassRegistry.RegisterXSInfo(TypeInfo(EnumValutesXMLResult), 'http://web.cbr.ru/', 'EnumValutesXMLResult');
  RemClassRegistry.RegisterXSClass(EnumValutesResult, 'http://web.cbr.ru/', 'EnumValutesResult');
  RemClassRegistry.RegisterXSInfo(TypeInfo(GetCursDynamicXMLResult), 'http://web.cbr.ru/', 'GetCursDynamicXMLResult');
  RemClassRegistry.RegisterXSClass(GetCursDynamicResult, 'http://web.cbr.ru/', 'GetCursDynamicResult');
  RemClassRegistry.RegisterXSInfo(TypeInfo(GetCursOnDateXMLResult), 'http://web.cbr.ru/', 'GetCursOnDateXMLResult');
  RemClassRegistry.RegisterXSInfo(TypeInfo(GetSeldCursOnDateXMLResult), 'http://web.cbr.ru/', 'GetSeldCursOnDateXMLResult');
  RemClassRegistry.RegisterXSClass(GetSeldCursOnDateResult, 'http://web.cbr.ru/', 'GetSeldCursOnDateResult');
  RemClassRegistry.RegisterXSClass(GetCursOnDateResult, 'http://web.cbr.ru/', 'GetCursOnDateResult');

end.