unit TSPCOM_TLB;

// ************************************************************************ //
// WARNING                                                                    
// -------                                                                    
// The types declared in this file were generated from data read from a       
// Type Library. If this type library is explicitly or indirectly (via        
// another type library referring to this type library) re-imported, or the   
// 'Refresh' command of the Type Library Editor activated while editing the   
// Type Library, the contents of this file will be regenerated and all        
// manual modifications will be lost.                                         
// ************************************************************************ //

// $Rev: 52393 $
// File generated on 16.01.2017 15:16:26 from Type Library described below.

// ************************************************************************  //
// Type Lib: C:\Program Files (x86)\Common Files\Crypto Pro\Shared\tspcom.dll (1)
// LIBID: {AE4D769A-AFC6-4480-9C4B-436AF36938F4}
// LCID: 0
// Helpfile: 
// HelpString: Crypto-Pro TSP Client 1.0 Type Library
// DepndLst: 
//   (1) v2.0 stdole, (C:\Windows\SysWOW64\stdole2.tlb)
//   (2) v2.1 CAPICOM, (C:\Program Files (x86)\Common Files\Microsoft Shared\CAPICOM\CapiCom.dll)
// SYS_KIND: SYS_WIN32
// ************************************************************************ //
{$TYPEDADDRESS OFF} // Unit must be compiled without type-checked pointers. 
{$WARN SYMBOL_PLATFORM OFF}
{$WRITEABLECONST ON}
{$VARPROPSETTER ON}
{$ALIGN 4}

interface

uses Winapi.Windows, CAPICOM_TLB, System.Classes, System.Variants, System.Win.StdVCL, Vcl.Graphics, Vcl.OleServer, Winapi.ActiveX;
  


// *********************************************************************//
// GUIDS declared in the TypeLibrary. Following prefixes are used:        
//   Type Libraries     : LIBID_xxxx                                      
//   CoClasses          : CLASS_xxxx                                      
//   DISPInterfaces     : DIID_xxxx                                       
//   Non-DISP interfaces: IID_xxxx                                        
// *********************************************************************//
const
  // TypeLibrary Major and minor versions
  TSPCOMMajorVersion = 1;
  TSPCOMMinorVersion = 0;

  LIBID_TSPCOM: TGUID = '{AE4D769A-AFC6-4480-9C4B-436AF36938F4}';

  IID_ITSPRequest: TGUID = '{D493E84E-4055-4691-AE63-8B6309AAB3AB}';
  IID_ITSPStamp: TGUID = '{F59A43D1-B906-47E0-8AF7-55C726AEC81D}';
  IID_ITSPRequest2: TGUID = '{DB3BE9AB-F041-48E0-9864-B088A471A4EB}';
  IID_ITSPStamp2: TGUID = '{9AC30674-D6BC-4FD3-AD10-257B8C09550E}';
  CLASS_TSPRequest: TGUID = '{9519B122-E646-410C-9D6F-B228F81AEFE8}';
  CLASS_TSPStamp: TGUID = '{CC4DA861-67F1-486A-B062-E27A1C36734B}';

// *********************************************************************//
// Declaration of Enumerations defined in Type Library                    
// *********************************************************************//
// Constants for enum __MIDL___MIDL_itf_tspcom_0000_0000_0001
type
  __MIDL___MIDL_itf_tspcom_0000_0000_0001 = TOleEnum;
const
  TSPCOM_AUTH_TYPE_ANONYMOUS = $00000000;
  TSPCOM_AUTH_TYPE_BASIC = $00000001;
  TSPCOM_AUTH_TYPE_DIGEST = $00000002;
  TSPCOM_AUTH_TYPE_NTLM = $00000003;
  TSPCOM_AUTH_TYPE_NEGOTIATE = $00000004;

type

// *********************************************************************//
// Forward declaration of types defined in TypeLibrary                    
// *********************************************************************//
  ITSPRequest = interface;
  ITSPRequestDisp = dispinterface;
  ITSPStamp = interface;
  ITSPStampDisp = dispinterface;
  ITSPRequest2 = interface;
  ITSPRequest2Disp = dispinterface;
  ITSPStamp2 = interface;
  ITSPStamp2Disp = dispinterface;

// *********************************************************************//
// Declaration of CoClasses defined in Type Library                       
// (NOTE: Here we map each CoClass to its Default Interface)              
// *********************************************************************//
  TSPRequest = ITSPRequest;
  TSPStamp = ITSPStamp;


// *********************************************************************//
// Declaration of structures, unions and aliases.                         
// *********************************************************************//

  TSPCOM_AUTH_TYPE = __MIDL___MIDL_itf_tspcom_0000_0000_0001; 

// *********************************************************************//
// Interface: ITSPRequest
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {D493E84E-4055-4691-AE63-8B6309AAB3AB}
// *********************************************************************//
  ITSPRequest = interface(IDispatch)
    ['{D493E84E-4055-4691-AE63-8B6309AAB3AB}']
    procedure Import(const strRequest: WideString); safecall;
    function Export: WideString; safecall;
    function Send(Verify: WordBool): ITSPStamp; safecall;
    procedure Display(hwndParent: Integer; const Title: WideString); safecall;
    function Get_TSAAddress: WideString; safecall;
    procedure Set_TSAAddress(const pVal: WideString); safecall;
    function Get_CertReq: WordBool; safecall;
    procedure Set_CertReq(pVal: WordBool); safecall;
    function Get_UseNonce: WordBool; safecall;
    procedure Set_UseNonce(pVal: WordBool); safecall;
    function Get_TSAPassword: WideString; safecall;
    procedure Set_TSAPassword(const pVal: WideString); safecall;
    function Get_PolicyID: WideString; safecall;
    procedure Set_PolicyID(const pVal: WideString); safecall;
    function Get_ProxyAddress: WideString; safecall;
    procedure Set_ProxyAddress(const pVal: WideString); safecall;
    function Get_ProxyPassword: WideString; safecall;
    procedure Set_ProxyPassword(const pVal: WideString); safecall;
    function Get_ProxyUserName: WideString; safecall;
    procedure Set_ProxyUserName(const pVal: WideString); safecall;
    function Get_TSAUserName: WideString; safecall;
    procedure Set_TSAUserName(const pVal: WideString); safecall;
    procedure _Set_Hash(const Param1: IHashedData); safecall;
    function Get_ClientCertificate: ICertContext; safecall;
    procedure _Set_ClientCertificate(const pVal: ICertContext); safecall;
    function Get_TSAAuthType: TSPCOM_AUTH_TYPE; safecall;
    procedure Set_TSAAuthType(pVal: TSPCOM_AUTH_TYPE); safecall;
    function Get_ProxyAuthType: TSPCOM_AUTH_TYPE; safecall;
    procedure Set_ProxyAuthType(pVal: TSPCOM_AUTH_TYPE); safecall;
    function Get_HashValue: WideString; safecall;
    function Get_HashAlgorithm: IOID; safecall;
    function Get_HTTPStatus: Integer; safecall;
    property TSAAddress: WideString read Get_TSAAddress write Set_TSAAddress;
    property CertReq: WordBool read Get_CertReq write Set_CertReq;
    property UseNonce: WordBool read Get_UseNonce write Set_UseNonce;
    property TSAPassword: WideString read Get_TSAPassword write Set_TSAPassword;
    property PolicyID: WideString read Get_PolicyID write Set_PolicyID;
    property ProxyAddress: WideString read Get_ProxyAddress write Set_ProxyAddress;
    property ProxyPassword: WideString read Get_ProxyPassword write Set_ProxyPassword;
    property ProxyUserName: WideString read Get_ProxyUserName write Set_ProxyUserName;
    property TSAUserName: WideString read Get_TSAUserName write Set_TSAUserName;
    property Hash: IHashedData write _Set_Hash;
    property ClientCertificate: ICertContext read Get_ClientCertificate write _Set_ClientCertificate;
    property TSAAuthType: TSPCOM_AUTH_TYPE read Get_TSAAuthType write Set_TSAAuthType;
    property ProxyAuthType: TSPCOM_AUTH_TYPE read Get_ProxyAuthType write Set_ProxyAuthType;
    property HashValue: WideString read Get_HashValue;
    property HashAlgorithm: IOID read Get_HashAlgorithm;
    property HTTPStatus: Integer read Get_HTTPStatus;
  end;

// *********************************************************************//
// DispIntf:  ITSPRequestDisp
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {D493E84E-4055-4691-AE63-8B6309AAB3AB}
// *********************************************************************//
  ITSPRequestDisp = dispinterface
    ['{D493E84E-4055-4691-AE63-8B6309AAB3AB}']
    procedure Import(const strRequest: WideString); dispid 16;
    function Export: WideString; dispid 12;
    function Send(Verify: WordBool): ITSPStamp; dispid 10;
    procedure Display(hwndParent: Integer; const Title: WideString); dispid 20;
    property TSAAddress: WideString dispid 1;
    property CertReq: WordBool dispid 2;
    property UseNonce: WordBool dispid 3;
    property TSAPassword: WideString dispid 4;
    property PolicyID: WideString dispid 5;
    property ProxyAddress: WideString dispid 6;
    property ProxyPassword: WideString dispid 7;
    property ProxyUserName: WideString dispid 8;
    property TSAUserName: WideString dispid 9;
    property Hash: IHashedData writeonly dispid 11;
    property ClientCertificate: ICertContext dispid 13;
    property TSAAuthType: TSPCOM_AUTH_TYPE dispid 14;
    property ProxyAuthType: TSPCOM_AUTH_TYPE dispid 15;
    property HashValue: WideString readonly dispid 17;
    property HashAlgorithm: IOID readonly dispid 18;
    property HTTPStatus: Integer readonly dispid 19;
  end;

// *********************************************************************//
// Interface: ITSPStamp
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {F59A43D1-B906-47E0-8AF7-55C726AEC81D}
// *********************************************************************//
  ITSPStamp = interface(IDispatch)
    ['{F59A43D1-B906-47E0-8AF7-55C726AEC81D}']
    procedure Import(const strStamp: WideString; Request: OleVariant); safecall;
    function Export: WideString; safecall;
    function Compare(const Stamp: ITSPStamp): Integer; safecall;
    function VerifyStamp(const TSACertificate: ICertContext): Integer; safecall;
    function VerifyCertificate(const TSACertificate: ICertContext): Integer; safecall;
    function TimePart(const Interval: WideString): Integer; safecall;
    procedure Display(hwndParent: Integer; const Title: WideString); safecall;
    function Get_Certificates: ICertificates; safecall;
    function Get_TSACertificate(Store: OleVariant): ICertificate; safecall;
    function Get_FailInfo: Integer; safecall;
    function Get_StatusString: WideString; safecall;
    function Get_Status: Integer; safecall;
    function Get_PolicyID: WideString; safecall;
    function Get_SerialNumber: WideString; safecall;
    function Get_Ordering: WordBool; safecall;
    function Get_TSAName: WideString; safecall;
    function Get_Accuracy: Integer; safecall;
    function Get_Time: TDateTime; safecall;
    function Get_HashValue: WideString; safecall;
    function Get_HashAlgorithm: IOID; safecall;
    function Get_HasNonce: WordBool; safecall;
    function Get_DefaultAccuracy: Integer; safecall;
    procedure Set_DefaultAccuracy(pVal: Integer); safecall;
    property Certificates: ICertificates read Get_Certificates;
    property TSACertificate[Store: OleVariant]: ICertificate read Get_TSACertificate;
    property FailInfo: Integer read Get_FailInfo;
    property StatusString: WideString read Get_StatusString;
    property Status: Integer read Get_Status;
    property PolicyID: WideString read Get_PolicyID;
    property SerialNumber: WideString read Get_SerialNumber;
    property Ordering: WordBool read Get_Ordering;
    property TSAName: WideString read Get_TSAName;
    property Accuracy: Integer read Get_Accuracy;
    property Time: TDateTime read Get_Time;
    property HashValue: WideString read Get_HashValue;
    property HashAlgorithm: IOID read Get_HashAlgorithm;
    property HasNonce: WordBool read Get_HasNonce;
    property DefaultAccuracy: Integer read Get_DefaultAccuracy write Set_DefaultAccuracy;
  end;

// *********************************************************************//
// DispIntf:  ITSPStampDisp
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {F59A43D1-B906-47E0-8AF7-55C726AEC81D}
// *********************************************************************//
  ITSPStampDisp = dispinterface
    ['{F59A43D1-B906-47E0-8AF7-55C726AEC81D}']
    procedure Import(const strStamp: WideString; Request: OleVariant); dispid 1;
    function Export: WideString; dispid 2;
    function Compare(const Stamp: ITSPStamp): Integer; dispid 3;
    function VerifyStamp(const TSACertificate: ICertContext): Integer; dispid 9;
    function VerifyCertificate(const TSACertificate: ICertContext): Integer; dispid 10;
    function TimePart(const Interval: WideString): Integer; dispid 17;
    procedure Display(hwndParent: Integer; const Title: WideString); dispid 22;
    property Certificates: ICertificates readonly dispid 4;
    property TSACertificate[Store: OleVariant]: ICertificate readonly dispid 5;
    property FailInfo: Integer readonly dispid 6;
    property StatusString: WideString readonly dispid 7;
    property Status: Integer readonly dispid 8;
    property PolicyID: WideString readonly dispid 11;
    property SerialNumber: WideString readonly dispid 12;
    property Ordering: WordBool readonly dispid 13;
    property TSAName: WideString readonly dispid 14;
    property Accuracy: Integer readonly dispid 15;
    property Time: TDateTime readonly dispid 16;
    property HashValue: WideString readonly dispid 18;
    property HashAlgorithm: IOID readonly dispid 19;
    property HasNonce: WordBool readonly dispid 20;
    property DefaultAccuracy: Integer dispid 21;
  end;

// *********************************************************************//
// Interface: ITSPRequest2
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {DB3BE9AB-F041-48E0-9864-B088A471A4EB}
// *********************************************************************//
  ITSPRequest2 = interface(ITSPRequest)
    ['{DB3BE9AB-F041-48E0-9864-B088A471A4EB}']
    procedure Import2(Request: PSafeArray); safecall;
    function Export2: PSafeArray; safecall;
    procedure AddData(Data: PSafeArray); safecall;
    procedure ResetData; safecall;
    function Get_ClientCertificate2: ICertificate; safecall;
    procedure _Set_ClientCertificate2(const pVal: ICertificate); safecall;
    function Get_HashAlgorithm2: IOID; safecall;
    procedure _Set_HashAlgorithm2(const pVal: IOID); safecall;
    property ClientCertificate2: ICertificate read Get_ClientCertificate2 write _Set_ClientCertificate2;
    property HashAlgorithm2: IOID read Get_HashAlgorithm2 write _Set_HashAlgorithm2;
  end;

// *********************************************************************//
// DispIntf:  ITSPRequest2Disp
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {DB3BE9AB-F041-48E0-9864-B088A471A4EB}
// *********************************************************************//
  ITSPRequest2Disp = dispinterface
    ['{DB3BE9AB-F041-48E0-9864-B088A471A4EB}']
    procedure Import2(Request: {NOT_OLEAUTO(PSafeArray)}OleVariant); dispid 21;
    function Export2: {NOT_OLEAUTO(PSafeArray)}OleVariant; dispid 22;
    procedure AddData(Data: {NOT_OLEAUTO(PSafeArray)}OleVariant); dispid 24;
    procedure ResetData; dispid 25;
    property ClientCertificate2: ICertificate dispid 23;
    property HashAlgorithm2: IOID dispid 26;
    procedure Import(const strRequest: WideString); dispid 16;
    function Export: WideString; dispid 12;
    function Send(Verify: WordBool): ITSPStamp; dispid 10;
    procedure Display(hwndParent: Integer; const Title: WideString); dispid 20;
    property TSAAddress: WideString dispid 1;
    property CertReq: WordBool dispid 2;
    property UseNonce: WordBool dispid 3;
    property TSAPassword: WideString dispid 4;
    property PolicyID: WideString dispid 5;
    property ProxyAddress: WideString dispid 6;
    property ProxyPassword: WideString dispid 7;
    property ProxyUserName: WideString dispid 8;
    property TSAUserName: WideString dispid 9;
    property Hash: IHashedData writeonly dispid 11;
    property ClientCertificate: ICertContext dispid 13;
    property TSAAuthType: TSPCOM_AUTH_TYPE dispid 14;
    property ProxyAuthType: TSPCOM_AUTH_TYPE dispid 15;
    property HashValue: WideString readonly dispid 17;
    property HashAlgorithm: IOID readonly dispid 18;
    property HTTPStatus: Integer readonly dispid 19;
  end;

// *********************************************************************//
// Interface: ITSPStamp2
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {9AC30674-D6BC-4FD3-AD10-257B8C09550E}
// *********************************************************************//
  ITSPStamp2 = interface(ITSPStamp)
    ['{9AC30674-D6BC-4FD3-AD10-257B8C09550E}']
    procedure Import2(Stamp: PSafeArray; Request: OleVariant); safecall;
    function Export2: PSafeArray; safecall;
    function Verify(TSACertificate: OleVariant; const AllowedCriticalExtensions: WideString): Integer; safecall;
    function VerifyCertificate2(TSACertificate: OleVariant; Store: OleVariant): Integer; safecall;
  end;

// *********************************************************************//
// DispIntf:  ITSPStamp2Disp
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {9AC30674-D6BC-4FD3-AD10-257B8C09550E}
// *********************************************************************//
  ITSPStamp2Disp = dispinterface
    ['{9AC30674-D6BC-4FD3-AD10-257B8C09550E}']
    procedure Import2(Stamp: {NOT_OLEAUTO(PSafeArray)}OleVariant; Request: OleVariant); dispid 23;
    function Export2: {NOT_OLEAUTO(PSafeArray)}OleVariant; dispid 24;
    function Verify(TSACertificate: OleVariant; const AllowedCriticalExtensions: WideString): Integer; dispid 25;
    function VerifyCertificate2(TSACertificate: OleVariant; Store: OleVariant): Integer; dispid 26;
    procedure Import(const strStamp: WideString; Request: OleVariant); dispid 1;
    function Export: WideString; dispid 2;
    function Compare(const Stamp: ITSPStamp): Integer; dispid 3;
    function VerifyStamp(const TSACertificate: ICertContext): Integer; dispid 9;
    function VerifyCertificate(const TSACertificate: ICertContext): Integer; dispid 10;
    function TimePart(const Interval: WideString): Integer; dispid 17;
    procedure Display(hwndParent: Integer; const Title: WideString); dispid 22;
    property Certificates: ICertificates readonly dispid 4;
    property TSACertificate[Store: OleVariant]: ICertificate readonly dispid 5;
    property FailInfo: Integer readonly dispid 6;
    property StatusString: WideString readonly dispid 7;
    property Status: Integer readonly dispid 8;
    property PolicyID: WideString readonly dispid 11;
    property SerialNumber: WideString readonly dispid 12;
    property Ordering: WordBool readonly dispid 13;
    property TSAName: WideString readonly dispid 14;
    property Accuracy: Integer readonly dispid 15;
    property Time: TDateTime readonly dispid 16;
    property HashValue: WideString readonly dispid 18;
    property HashAlgorithm: IOID readonly dispid 19;
    property HasNonce: WordBool readonly dispid 20;
    property DefaultAccuracy: Integer dispid 21;
  end;

// *********************************************************************//
// The Class CoTSPRequest provides a Create and CreateRemote method to          
// create instances of the default interface ITSPRequest exposed by              
// the CoClass TSPRequest. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoTSPRequest = class
    class function Create: ITSPRequest;
    class function CreateRemote(const MachineName: string): ITSPRequest;
  end;

// *********************************************************************//
// The Class CoTSPStamp provides a Create and CreateRemote method to          
// create instances of the default interface ITSPStamp exposed by              
// the CoClass TSPStamp. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoTSPStamp = class
    class function Create: ITSPStamp;
    class function CreateRemote(const MachineName: string): ITSPStamp;
  end;

implementation

uses System.Win.ComObj;

class function CoTSPRequest.Create: ITSPRequest;
begin
  Result := CreateComObject(CLASS_TSPRequest) as ITSPRequest;
end;

class function CoTSPRequest.CreateRemote(const MachineName: string): ITSPRequest;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_TSPRequest) as ITSPRequest;
end;

class function CoTSPStamp.Create: ITSPStamp;
begin
  Result := CreateComObject(CLASS_TSPStamp) as ITSPStamp;
end;

class function CoTSPStamp.CreateRemote(const MachineName: string): ITSPStamp;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_TSPStamp) as ITSPStamp;
end;

end.
