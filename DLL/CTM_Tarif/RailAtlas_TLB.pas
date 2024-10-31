unit RailAtlas_TLB;

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
// File generated on 09.12.2019 10:38:45 from Type Library described below.

// ************************************************************************  //
// Type Lib: C:\Program Files (x86)\CTM\RAILATLAS\AtlasCom.dll (1)
// LIBID: {E96DB3CC-040E-4D04-9752-D4205E845412}
// LCID: 0
// Helpfile: 
// HelpString: RailAtlas Type Library
// DepndLst: 
//   (1) v2.0 stdole, (C:\Windows\SysWOW64\stdole2.tlb)
// SYS_KIND: SYS_WIN32
// ************************************************************************ //
{$TYPEDADDRESS OFF} // Unit must be compiled without type-checked pointers. 
{$WARN SYMBOL_PLATFORM OFF}
{$WRITEABLECONST ON}
{$VARPROPSETTER ON}
{$ALIGN 4}

interface

uses Winapi.Windows, System.Classes, System.Variants, System.Win.StdVCL, Vcl.Graphics, Vcl.OleServer, Winapi.ActiveX;
  

// *********************************************************************//
// GUIDS declared in the TypeLibrary. Following prefixes are used:        
//   Type Libraries     : LIBID_xxxx                                      
//   CoClasses          : CLASS_xxxx                                      
//   DISPInterfaces     : DIID_xxxx                                       
//   Non-DISP interfaces: IID_xxxx                                        
// *********************************************************************//
const
  // TypeLibrary Major and minor versions
  RailAtlasMajorVersion = 2;
  RailAtlasMinorVersion = 0;

  LIBID_RailAtlas: TGUID = '{E96DB3CC-040E-4D04-9752-D4205E845412}';

  IID_IApplication: TGUID = '{A431FE21-F1D9-4C01-8B73-64CDE33A94CC}';
  CLASS_Application: TGUID = '{1712B328-B63B-4269-8F8E-81D7EAFFD888}';
type

// *********************************************************************//
// Forward declaration of types defined in TypeLibrary                    
// *********************************************************************//
  IApplication = interface;
  IApplicationDisp = dispinterface;

// *********************************************************************//
// Declaration of CoClasses defined in Type Library                       
// (NOTE: Here we map each CoClass to its Default Interface)              
// *********************************************************************//
  Application = IApplication;


// *********************************************************************//
// Interface: IApplication
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {A431FE21-F1D9-4C01-8B73-64CDE33A94CC}
// *********************************************************************//
  IApplication = interface(IDispatch)
    ['{A431FE21-F1D9-4C01-8B73-64CDE33A94CC}']
    function SetUserDataFile(const FileName: WideString): Integer; safecall;
    function SetUserDataXml(const XML: WideString): Integer; safecall;
    procedure ShowAllUserData; safecall;
    procedure ClearAllUserData; safecall;
    procedure Route(const FromCode: WideString; const FromLand: WideString; 
                    const ToCode: WideString; const ToLand: WideString); safecall;
    procedure RouteColor(const FromCode: WideString; const FromLand: WideString; 
                         const ToCode: WideString; const ToLand: WideString; const Color: WideString); safecall;
    procedure ShowStationByCode(const Code: WideString; const LandId: WideString); safecall;
  end;

// *********************************************************************//
// DispIntf:  IApplicationDisp
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {A431FE21-F1D9-4C01-8B73-64CDE33A94CC}
// *********************************************************************//
  IApplicationDisp = dispinterface
    ['{A431FE21-F1D9-4C01-8B73-64CDE33A94CC}']
    function SetUserDataFile(const FileName: WideString): Integer; dispid 4;
    function SetUserDataXml(const XML: WideString): Integer; dispid 5;
    procedure ShowAllUserData; dispid 6;
    procedure ClearAllUserData; dispid 8;
    procedure Route(const FromCode: WideString; const FromLand: WideString; 
                    const ToCode: WideString; const ToLand: WideString); dispid 21;
    procedure RouteColor(const FromCode: WideString; const FromLand: WideString; 
                         const ToCode: WideString; const ToLand: WideString; const Color: WideString); dispid 22;
    procedure ShowStationByCode(const Code: WideString; const LandId: WideString); dispid 23;
  end;

// *********************************************************************//
// The Class CoApplication provides a Create and CreateRemote method to          
// create instances of the default interface IApplication exposed by              
// the CoClass Application. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoApplication = class
    class function Create: IApplication;
    class function CreateRemote(const MachineName: string): IApplication;
  end;

implementation

uses System.Win.ComObj;

class function CoApplication.Create: IApplication;
begin
  Result := CreateComObject(CLASS_Application) as IApplication;
end;

class function CoApplication.CreateRemote(const MachineName: string): IApplication;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_Application) as IApplication;
end;

end.
