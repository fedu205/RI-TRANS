unit RailTariff_TLB;

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
// File generated on 19.08.2020 13:09:59 from Type Library described below.

// ************************************************************************  //
// Type Lib: C:\Program Files (x86)\COMPlus Applications\{5FC8FAD9-5D8C-405F-8352-FCB78CA9A747}\TariffX.tlb (1)
// LIBID: {847FC910-0A14-4FB3-8C77-475BBB10DDC2}
// LCID: 0
// Helpfile:
// HelpString: TariffX 1.0 Type Library
// DepndLst:
//   (1) v2.0 stdole, (C:\Windows\SysWOW64\stdole2.tlb)
// SYS_KIND: SYS_WIN32
// Errors:
//   Hint: Symbol 'Type' renamed to 'type_'
//   Hint: Parameter 'Array' of IVBSDocNode.Write changed to 'Array_'
//   Hint: Parameter 'Array' of IDocNodeTransfer.Write changed to 'Array_'
//   Hint: Member 'Record' of 'IVBSRefBook' changed to 'Record_'
//   Hint: Member 'Record' of '_RefBook2' changed to 'Record_'
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
  RailTariffMajorVersion = 1;
  RailTariffMinorVersion = 0;

  LIBID_RailTariff: TGUID = '{847FC910-0A14-4FB3-8C77-475BBB10DDC2}';

  IID_ICallBackSchema: TGUID = '{39919D91-0081-474B-847C-4E8085C60734}';
  IID_IVBSDocument: TGUID = '{14C40CE3-9D23-4589-BB7B-B46BDC3CFF59}';
  IID_IDocument: TGUID = '{072A139C-34E7-4BAA-9097-A4281F1811E7}';
  IID_IDocNode: TGUID = '{1A066906-5C64-411B-848B-43C900296A69}';
  IID_IDocTableNode: TGUID = '{8A83B7E5-1A43-4F60-BDC9-CE10C1AB4EED}';
  IID_IDocumentAttr: TGUID = '{0E3AFF4A-FC19-40F6-8ADB-744ECA492F67}';
  IID_IRateOfExchange: TGUID = '{7DACF81C-F64E-4BAA-87CC-E628A7B7F8D6}';
  IID__RefBook: TGUID = '{232815DC-F11F-4FE4-BDFB-2D4FFBF6492D}';
  IID_IThruRoutes: TGUID = '{AB006C8F-197F-4430-8A67-83C8EB817D44}';
  IID_I2DimArrayHelper: TGUID = '{A92EDDBD-A823-4B59-9860-AF72D296C53A}';
  IID_ISpecialTariff: TGUID = '{A3B3D6FE-6248-42B0-B20B-3EB397180FAB}';
  IID_ICalcParameter: TGUID = '{305B20F0-5655-48C6-951F-5E1D9A6CE163}';
  IID_IDocument1: TGUID = '{7B6538E4-F237-483D-ACE0-D7C92BC878A8}';
  IID_IDocumentAttr2: TGUID = '{0517D794-76AF-4A6F-9851-AB798C666E51}';
  IID_IDocumentAttr3: TGUID = '{7A99F7C0-6404-43FF-9E16-7F3F41B7D944}';
  IID_IDocumentAttr4: TGUID = '{45F95EF0-4D7A-4B88-A7C5-BF921BEFB237}';
  IID_IDocumentAttr5: TGUID = '{5B801580-5DE3-47DE-B89A-2BE781439522}';
  IID_IDocumentAttr6: TGUID = '{2D2F0F89-B441-4655-892F-A462AF996160}';
  IID_IDocumentAttr7: TGUID = '{4E7F6F40-63CF-491A-8CED-C0806C5AF391}';
  IID_IDocumentAttr8: TGUID = '{FB0F0A60-EE41-4EC9-A683-CF10B3723BB1}';
  IID_IDocumentAttr9: TGUID = '{0A86F504-2E2D-44AA-BB4D-88AF10F039D6}';
  IID_IDocumentAttr10: TGUID = '{DE309AD4-360C-4A3C-9C2F-89D136DBC04C}';
  IID_IDocumentAttr11: TGUID = '{35F55BA6-7817-4423-8C17-D6AFCA8B2673}';
  IID_IDocumentAttr12: TGUID = '{F09F89E2-0590-4DDF-A5F3-4D7C8F729872}';
  IID_IDocumentAttr13: TGUID = '{F6041C16-8E02-4C7E-84C1-4D1991BCD531}';
  IID_IDocumentAttr14: TGUID = '{70A46BD1-1F0C-49F0-B329-36BFF3DB67E5}';
  IID_IDocumentAttr15: TGUID = '{FE42550C-1580-46D6-8B5E-BE46AC4C818F}';
  IID_IDocumentAttr16: TGUID = '{F91C281D-A969-4FF3-A2B7-1CFB51CEC769}';
  IID_IDocumentAttr17: TGUID = '{9D358445-E589-40A5-A1F2-E1F77F06C763}';
  IID_IDocumentAttr18: TGUID = '{4505DDFE-BA1B-420E-B522-81EC1A9BCD88}';
  IID_IDocumentAttr19: TGUID = '{CB472752-3D69-4724-B286-5587DB48F85B}';
  IID_IDocumentAttr20: TGUID = '{564B4FA6-7998-43C6-B3A4-C1B70D78D7E8}';
  IID_IDocumentAttr21: TGUID = '{6DDBCB3E-DF7D-40D5-9BED-A6438C49BBA5}';
  IID_IDocumentAttr22: TGUID = '{8D2D2FB4-C799-44C3-A73A-42A19C4693B9}';
  IID_IDocumentAttr23: TGUID = '{ED4CB1E7-E4BB-4D4C-97CC-571D93A5593D}';
  IID_IDocumentAttr24: TGUID = '{287D45E2-C37D-4AC9-913F-30E6227AC7D6}';
  IID_IDocumentAttr25: TGUID = '{504C4A0E-2CA4-49AB-8E31-E3E70B50D4F3}';
  IID_IDocumentAttr26: TGUID = '{F2D83359-FB4E-4A5F-B401-34E1FF11236F}';
  IID_IDocumentAttr27: TGUID = '{FB759267-AE68-4ACC-9E99-7181EBAC2CB0}';
  IID_IDocumentAttr28: TGUID = '{90BEC9D0-9B07-4515-BF78-D1A7B538C77C}';
  IID_IDocumentAttr29: TGUID = '{FE390FE2-9DE6-480A-B906-F31E9B19787E}';
  IID_IDocumentAttr30: TGUID = '{6A142B28-C0F8-4B8B-AAFB-B741AB6A38C1}';
  IID_IDocumentControl: TGUID = '{4D9E2AFA-857B-48D2-8E50-DB760DF15859}';
  IID_IDocumentControl2: TGUID = '{4A37F8B3-D999-403B-BD9E-3FD426993020}';
  IID_IRateOfExchange2: TGUID = '{908CE534-614F-4440-AFD1-A4D2F8C89C58}';
  IID_IRateOfExchange3: TGUID = '{90AAE534-614F-4000-AFD1-A4C2F8C89C58}';
  IID_IRateOfExchange4: TGUID = '{1188F6EF-50F8-4BD6-A683-64041E55E6C8}';
  IID_IThruRoutes2: TGUID = '{1F384277-2C64-408F-8DF7-4FE6D25969DE}';
  IID_IXMLView: TGUID = '{E403DABF-8FF3-4380-9F75-F48AE242D382}';
  IID_IDocumentRefBook: TGUID = '{47D6B4DB-D3EC-4895-9B34-62CAA7FCEF43}';
  IID_IDocumentRefBook2: TGUID = '{4CB6E9EA-CE86-4ABA-9113-15DD8B2E42F4}';
  IID_ISpecialTariff2: TGUID = '{C5FEE6DF-50B0-41AC-ACA0-CB9ABCDDB89B}';
  IID_ISpecialTariff3: TGUID = '{B7825150-5B69-48D4-9D0B-477B4F913C45}';
  IID_ISpecialTariff4: TGUID = '{E13BE38A-C1E4-4373-AFA5-A94E56C48CCE}';
  IID_ITaxes: TGUID = '{C6177E5C-721D-42CC-B976-0F51F626888B}';
  IID_ITaxesInResult: TGUID = '{E3004204-9368-4D63-8240-8C1B807983D1}';
  IID_ITaxesInResult2: TGUID = '{F154DD6B-DDDF-48AC-8CEE-FE36C79F962F}';
  IID_IDocumentConfig: TGUID = '{3B84328C-C31E-442B-BFAE-86E33D444C0F}';
  IID_IUserCalculate: TGUID = '{72ACC23A-941C-4031-BFC2-F1C725443C2F}';
  IID_IStationFindAround: TGUID = '{BD7E2368-31C2-42AA-AD6F-ECF84F2CFFFB}';
  IID_ILanguageSelector: TGUID = '{86A13F30-B25C-4CC3-89F3-E0BC177B8DFC}';
  IID_IDocumentControl3: TGUID = '{4D257DB5-76F2-4EF8-9240-28A082391E47}';
  CLASS_Document: TGUID = '{CDA5F7C3-CE1A-4540-BF7A-DE147D64663A}';
  IID_IVBSDocNode: TGUID = '{060DC8F1-D28C-4A39-AA04-9EA81F66DD2D}';
  IID_IDocTableNode2: TGUID = '{CE4E0009-46F3-470D-BCD9-582F0ED84F2A}';
  IID_IDocNodeTransfer: TGUID = '{4DD339BB-F131-4728-A730-C21F8E50F51F}';
  CLASS_DocNode: TGUID = '{A911BCF8-5871-4C63-9B7E-481034CD1578}';
  IID_IVBSApplication: TGUID = '{BBBC9829-28C7-4627-84B6-4A24EB3E048F}';
  IID_IApplication: TGUID = '{B9EC4BA5-2998-4657-8400-1A96EC3DAB57}';
  IID__RefBookCollection: TGUID = '{E876E051-7CA0-4D2D-A3DA-B93C56799AD2}';
  IID__RefBookInfo: TGUID = '{AD016C43-B650-453F-93EF-67D82105DA51}';
  IID_IApplication2: TGUID = '{643A6924-1FB7-4678-A449-7C784BCD93DB}';
  IID_IApplication3: TGUID = '{3C3ABF76-A923-4331-95F2-853080A39382}';
  IID_IApplication4: TGUID = '{8F56277E-A635-4A84-BE11-838EF1C881AD}';
  IID_IApplicationInfo: TGUID = '{AAF129ED-60DB-404C-8297-3E61E5A89EBE}';
  IID_IBase1001: TGUID = '{452E57AF-ADEF-46C5-9948-F2F1B8F3139E}';
  CLASS_Application: TGUID = '{B0AB347F-2F18-4DDE-AAB3-CB3D43C3F80F}';
  IID_IVBSRefBook: TGUID = '{EBDCFDCD-1DC8-47B8-B8DE-A261B2EA35C6}';
  IID__RefBook2: TGUID = '{51844586-B83F-4ED4-9D2D-3B3DBCEC58F3}';
  IID__RefBookFilter: TGUID = '{8DC2A627-AF5C-419E-82D8-C8951E768BD3}';
  CLASS_RefBook: TGUID = '{C08656F8-F68E-4A5F-A36D-130425272242}';
  CLASS_DemoApplication: TGUID = '{2AA5176D-8734-46EE-9F53-79EBE1BBB866}';
  CLASS_TwoDimArrayHelper: TGUID = '{C1FD93AC-E927-46C3-99BF-02170BFA6E29}';
  CLASS_ThruRoutes: TGUID = '{CAA3FBBF-D28F-46B7-8D99-28C56C4F1185}';
  CLASS_CalcParameter: TGUID = '{C304EB8C-9396-414A-B502-914FD9D29B75}';

// *********************************************************************//
// Declaration of Enumerations defined in Type Library
// *********************************************************************//
// Constants for enum RefBookFilterOpEnum
type
  RefBookFilterOpEnum = TOleEnum;
const
  RBOP_EQ = $00000000;
  RBOP_NEQ = $00000005;
  RBOP_GT = $00000001;
  RBOP_GE = $00000002;
  RBOP_LT = $00000003;
  RBOP_LE = $00000004;
  RBOP_SUBSTRING = $00000009;
  RBOP_BEGIN = $0000000A;

// Constants for enum CurrencyCodeEnum
type
  CurrencyCodeEnum = TOleEnum;
const
  CUR_BASETRF = $00000000;
  CUR_BASERATE = $00000002;
  CUR_CHF = $000002F4;
  CUR_RUR = $0000032A;
  CUR_USD = $00000348;
  CUR_EUR = $000003D2;
  CUR_EEK = $000000E9;
  CUR_LTL = $000001B8;
  CUR_LVL = $000001AC;
  CUR_KZT = $0000018E;
  CUR_BYR = $000003CE;
  CUR_UAH = $000003D4;
  CUR_KGS = $000001A1;
  CUR_UZS = $0000035C;
  CUR_MDL = $000001F2;

// Constants for enum ResultCurrencyTypeEnum
type
  ResultCurrencyTypeEnum = TOleEnum;
const
  RESULT_CURRENCY_BASETRF = $00000000;
  RESULT_CURRENCY_USER = $00000001;
  RESULT_CURRENCY_BASERATE = $00000002;

// Constants for enum PlanFormTypeEnum
type
  PlanFormTypeEnum = TOleEnum;
const
  PF_AUTO = $00000000;
  PF_WAGON = $00000001;
  PF_KT = $00000002;
  PF_CT = $00000003;

// Constants for enum ContTypeEnum
type
  ContTypeEnum = TOleEnum;
const
  CT_CTK = $00000001;
  CT_KTK20 = $00000002;
  CT_KTK40 = $00000004;

// Constants for enum LangTypeEnum
type
  LangTypeEnum = TOleEnum;
const
  LANG_RU = $00000419;
  LANG_EN = $00000409;

type

// *********************************************************************//
// Forward declaration of types defined in TypeLibrary
// *********************************************************************//
  ICallBackSchema = interface;
  ICallBackSchemaDisp = dispinterface;
  IVBSDocument = interface;
  IVBSDocumentDisp = dispinterface;
  IDocument = interface;
  IDocumentDisp = dispinterface;
  IDocNode = interface;
  IDocNodeDisp = dispinterface;
  IDocTableNode = interface;
  IDocTableNodeDisp = dispinterface;
  IDocumentAttr = interface;
  IDocumentAttrDisp = dispinterface;
  IRateOfExchange = interface;
  IRateOfExchangeDisp = dispinterface;
  _RefBook = interface;
  _RefBookDisp = dispinterface;
  IThruRoutes = interface;
  IThruRoutesDisp = dispinterface;
  I2DimArrayHelper = interface;
  I2DimArrayHelperDisp = dispinterface;
  ISpecialTariff = interface;
  ISpecialTariffDisp = dispinterface;
  ICalcParameter = interface;
  ICalcParameterDisp = dispinterface;
  IDocument1 = interface;
  IDocument1Disp = dispinterface;
  IDocumentAttr2 = interface;
  IDocumentAttr2Disp = dispinterface;
  IDocumentAttr3 = interface;
  IDocumentAttr3Disp = dispinterface;
  IDocumentAttr4 = interface;
  IDocumentAttr4Disp = dispinterface;
  IDocumentAttr5 = interface;
  IDocumentAttr5Disp = dispinterface;
  IDocumentAttr6 = interface;
  IDocumentAttr6Disp = dispinterface;
  IDocumentAttr7 = interface;
  IDocumentAttr7Disp = dispinterface;
  IDocumentAttr8 = interface;
  IDocumentAttr8Disp = dispinterface;
  IDocumentAttr9 = interface;
  IDocumentAttr9Disp = dispinterface;
  IDocumentAttr10 = interface;
  IDocumentAttr10Disp = dispinterface;
  IDocumentAttr11 = interface;
  IDocumentAttr11Disp = dispinterface;
  IDocumentAttr12 = interface;
  IDocumentAttr12Disp = dispinterface;
  IDocumentAttr13 = interface;
  IDocumentAttr13Disp = dispinterface;
  IDocumentAttr14 = interface;
  IDocumentAttr14Disp = dispinterface;
  IDocumentAttr15 = interface;
  IDocumentAttr15Disp = dispinterface;
  IDocumentAttr16 = interface;
  IDocumentAttr16Disp = dispinterface;
  IDocumentAttr17 = interface;
  IDocumentAttr17Disp = dispinterface;
  IDocumentAttr18 = interface;
  IDocumentAttr18Disp = dispinterface;
  IDocumentAttr19 = interface;
  IDocumentAttr19Disp = dispinterface;
  IDocumentAttr20 = interface;
  IDocumentAttr20Disp = dispinterface;
  IDocumentAttr21 = interface;
  IDocumentAttr21Disp = dispinterface;
  IDocumentAttr22 = interface;
  IDocumentAttr22Disp = dispinterface;
  IDocumentAttr23 = interface;
  IDocumentAttr23Disp = dispinterface;
  IDocumentAttr24 = interface;
  IDocumentAttr24Disp = dispinterface;
  IDocumentAttr25 = interface;
  IDocumentAttr25Disp = dispinterface;
  IDocumentAttr26 = interface;
  IDocumentAttr26Disp = dispinterface;
  IDocumentAttr27 = interface;
  IDocumentAttr27Disp = dispinterface;
  IDocumentAttr28 = interface;
  IDocumentAttr28Disp = dispinterface;
  IDocumentAttr29 = interface;
  IDocumentAttr29Disp = dispinterface;
  IDocumentAttr30 = interface;
  IDocumentAttr30Disp = dispinterface;
  IDocumentControl = interface;
  IDocumentControlDisp = dispinterface;
  IDocumentControl2 = interface;
  IDocumentControl2Disp = dispinterface;
  IRateOfExchange2 = interface;
  IRateOfExchange2Disp = dispinterface;
  IRateOfExchange3 = interface;
  IRateOfExchange3Disp = dispinterface;
  IRateOfExchange4 = interface;
  IRateOfExchange4Disp = dispinterface;
  IThruRoutes2 = interface;
  IThruRoutes2Disp = dispinterface;
  IXMLView = interface;
  IXMLViewDisp = dispinterface;
  IDocumentRefBook = interface;
  IDocumentRefBookDisp = dispinterface;
  IDocumentRefBook2 = interface;
  IDocumentRefBook2Disp = dispinterface;
  ISpecialTariff2 = interface;
  ISpecialTariff2Disp = dispinterface;
  ISpecialTariff3 = interface;
  ISpecialTariff3Disp = dispinterface;
  ISpecialTariff4 = interface;
  ISpecialTariff4Disp = dispinterface;
  ITaxes = interface;
  ITaxesDisp = dispinterface;
  ITaxesInResult = interface;
  ITaxesInResultDisp = dispinterface;
  ITaxesInResult2 = interface;
  ITaxesInResult2Disp = dispinterface;
  IDocumentConfig = interface;
  IDocumentConfigDisp = dispinterface;
  IUserCalculate = interface;
  IUserCalculateDisp = dispinterface;
  IStationFindAround = interface;
  IStationFindAroundDisp = dispinterface;
  ILanguageSelector = interface;
  ILanguageSelectorDisp = dispinterface;
  IDocumentControl3 = interface;
  IDocumentControl3Disp = dispinterface;
  IVBSDocNode = interface;
  IVBSDocNodeDisp = dispinterface;
  IDocTableNode2 = interface;
  IDocTableNode2Disp = dispinterface;
  IDocNodeTransfer = interface;
  IDocNodeTransferDisp = dispinterface;
  IVBSApplication = interface;
  IVBSApplicationDisp = dispinterface;
  IApplication = interface;
  IApplicationDisp = dispinterface;
  _RefBookCollection = interface;
  _RefBookCollectionDisp = dispinterface;
  _RefBookInfo = interface;
  _RefBookInfoDisp = dispinterface;
  IApplication2 = interface;
  IApplication2Disp = dispinterface;
  IApplication3 = interface;
  IApplication3Disp = dispinterface;
  IApplication4 = interface;
  IApplication4Disp = dispinterface;
  IApplicationInfo = interface;
  IApplicationInfoDisp = dispinterface;
  IBase1001 = interface;
  IBase1001Disp = dispinterface;
  IVBSRefBook = interface;
  IVBSRefBookDisp = dispinterface;
  _RefBook2 = interface;
  _RefBook2Disp = dispinterface;
  _RefBookFilter = interface;
  _RefBookFilterDisp = dispinterface;

// *********************************************************************//
// Declaration of CoClasses defined in Type Library
// (NOTE: Here we map each CoClass to its Default Interface)
// *********************************************************************//
  Document = IVBSDocument;
  DocNode = IVBSDocNode;
  Application = IVBSApplication;
  RefBook = IVBSRefBook;
  DemoApplication = IApplication;
  TwoDimArrayHelper = I2DimArrayHelper;
  ThruRoutes = IThruRoutes;
  CalcParameter = ICalcParameter;


// *********************************************************************//
// Declaration of structures, unions and aliases.
// *********************************************************************//
  POleVariant1 = ^OleVariant; {*}

  KITDesc = record
    Id: Integer;
    Num: Integer;
    IsDefault: WordBool;
    DescShort: WideString;
    DescLong: WideString;
  end;


// *********************************************************************//
// Interface: ICallBackSchema
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {39919D91-0081-474B-847C-4E8085C60734}
// *********************************************************************//
  ICallBackSchema = interface(IDispatch)
    ['{39919D91-0081-474B-847C-4E8085C60734}']
    function BaseValue(ShemaNo: Integer; Distance: Integer; Weight: Double; Axis: Integer): Double; safecall;
  end;

// *********************************************************************//
// DispIntf:  ICallBackSchemaDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {39919D91-0081-474B-847C-4E8085C60734}
// *********************************************************************//
  ICallBackSchemaDisp = dispinterface
    ['{39919D91-0081-474B-847C-4E8085C60734}']
    function BaseValue(ShemaNo: Integer; Distance: Integer; Weight: Double; Axis: Integer): Double; dispid 1;
  end;

// *********************************************************************//
// Interface: IVBSDocument
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {14C40CE3-9D23-4589-BB7B-B46BDC3CFF59}
// *********************************************************************//
  IVBSDocument = interface(IDispatch)
    ['{14C40CE3-9D23-4589-BB7B-B46BDC3CFF59}']
    procedure Initialize(const RootPath: WideString); safecall;
    procedure New; safecall;
    procedure Load(const FileName: WideString); safecall;
    procedure Save(const FileName: WideString); safecall;
    procedure SetParams(const AttrNodeName: WideString; ParamCount: Integer;
                        const ParamNames: OleVariant; const ParamValues: OleVariant); safecall;
    procedure Calculate; safecall;
    function Get_Data: IDocNode; safecall;
    function Get_Result: IDocNode; safecall;
    procedure StationBulkCalculate(const FromStation: OleVariant; const ToStation: OleVariant;
                                   const ResultField: WideString; var Result: OleVariant); safecall;
    function Get_Attributes: IDocumentAttr; safecall;
    function Get_Root: IDocNode; safecall;
    function Get_RateOfExchange: IRateOfExchange; safecall;
    procedure FromStation(const Code: WideString; LandId: Integer); safecall;
    procedure ToStation(const Code: WideString; LandId: Integer); safecall;
    procedure CustomizeCalc(LandId: Integer; CalcType: OleVariant; Distance: OleVariant;
                            Currency: OleVariant); safecall;
    procedure Send(SendCat: Integer; SendId: Integer; ExitRoute: Integer; Speed: Integer); safecall;
    procedure Freight(const ETSNGCode: WideString; Weight: Double); safecall;
    procedure Wagon(TranspID: Integer; OwnerId: Integer; Count: Integer; GP: OleVariant); safecall;
    procedure Container(TranspID: Integer; OwnerId: Integer; ContCount: Integer;
                        TareWeight: OleVariant); safecall;
    procedure ContainerTransport(TranspID: Integer; OwnerId: Integer; Count: Integer); safecall;
    procedure RefWagon(OwnerId: Integer; FullCount: Integer; EmptyCount: Integer;
                       SectionSize: Integer); safecall;
    procedure Support(SupportId: Integer; CounductorCount: Integer; AxisCount: Integer); safecall;
    procedure Rur2Usd(Rate: Double); safecall;
    procedure OnDate(OnDate: TDateTime); safecall;
    procedure EmptyWagon(TranspID: Integer; OwnerId: Integer; Count: Integer;
                         const FromCargoCode: WideString; Axis: Integer; TareWeight: Double); safecall;
    procedure WagonOwnerLand(OwnerLandID: Integer; IsUsageCharge: WordBool); safecall;
    procedure MxFreight(FreightSet: OleVariant); safecall;
    function Get_MXFreightItem(Index: Integer; const ParamName: WideString): OleVariant; safecall;
    procedure MXFreightAdd(CodeType: Integer; const FreightCode: WideString; Weight: Double;
                           IsGuard: Integer; out pIndex: OleVariant); safecall;
    procedure MXFreightDelete(Index: Integer); safecall;
    function Get_MXFreightCount: Integer; safecall;
    procedure MXFreightClear; safecall;
    procedure DispersionStation(const Code: WideString); safecall;
    procedure DoCalcTariff; safecall;
    procedure DoCalcDistance; safecall;
    procedure LoadFromFile(const FilePath: WideString); safecall;
    procedure LoadFromSite; safecall;
    procedure SetRate(FromCurrency: Integer; ToCurrency: Integer; Rate: Double); safecall;
    procedure GetRate(FromCurrency: Integer; ToCurrency: Integer; out pRate: Double); safecall;
    function Get_Rate(FromCurrency: Integer; ToCurrency: Integer): Double; safecall;
    procedure Set_Rate(FromCurrency: Integer; ToCurrency: Integer; pVal: Double); safecall;
    procedure AddStation(const Code: WideString); safecall;
    procedure AddPP(const FirstCode: WideString; const SecondCode: WideString); safecall;
    procedure Clear; safecall;
    function Get_IsExists: WordBool; safecall;
    function Get_Response: WideString; safecall;
    function ShowRoot: WideString; safecall;
    procedure IXMLView_SetParams(const DlgID: WideString; Params: OleVariant); safecall;
    function ShowDialog(const Id: WideString): WideString; safecall;
    procedure ParamSwitch(Params: OleVariant); safecall;
    function Get_Prepare: WordBool; safecall;
    procedure FreightEx(const ETSNGCode: WideString; const GNG6: WideString;
                        const GNG8: WideString; Weight: Double); safecall;
    procedure FlatWagonOwnerFirm(Id: Integer); safecall;
    procedure ContainerOwnerFirm(Id: Integer); safecall;
    function Get_IsSTExists: WordBool; safecall;
    procedure SPTariffArray(var pArray: OleVariant); safecall;
    procedure SetKITCurrentLand(KITNum: Integer); safecall;
    procedure SetKIT(Land: Integer; Road: Integer; Direction: Integer; KITNum: Integer); safecall;
    function FilteredRefBook(const Name: WideString; const FilterName: WideString): _RefBook; safecall;
    procedure SetTax(const TaxID: WideString; bSet: WordBool; const Value: WideString); safecall;
    function Get_ThrowErrorWhenRouteNotFound: WordBool; safecall;
    procedure Set_ThrowErrorWhenRouteNotFound(pVal: WordBool); safecall;
    function Get_FullRoute: IDocNode; safecall;
    procedure LoadUserTaxFile(const FilePath: WideString); safecall;
    procedure LoadUserTax(const XMLData: WideString); safecall;
    procedure MXFreightAddEx(const ETSNGCode: WideString; const GNG8: WideString; Weight: Double;
                             IsGuard: Integer; out pIndex: OleVariant); safecall;
    procedure EmptyWagonEx(TranspID: Integer; OwnerId: Integer; Count: Integer;
                           const ETSNGCode: WideString; const GNG8: WideString; Axis: Integer;
                           TareWeight: Double); safecall;
    procedure AddEquip(IsAddEquip: Integer; ForwardEquipType: Integer; BackwardEquipType: Integer); safecall;
    function IsEquipWeight: WordBool; safecall;
    procedure EquipWeight(pVal: Double); safecall;
    procedure Bulkiness(const Index: WideString); safecall;
    function Get_ForwardThruRoute: IThruRoutes; safecall;
    function Get_BackwardThruRoute: IThruRoutes; safecall;
    procedure CopyThruRouteFwdToBwd; safecall;
    procedure CopyThruRouteBwdToFwd; safecall;
    procedure BufferWagon(TranspID: Integer; OwnerId: Integer; Count: Integer; Axis: OleVariant); safecall;
    procedure BufferWagonOwnerFirm(Id: Integer); safecall;
    procedure BufferWagonUsageMode(Id: Integer; ModelWeight: OleVariant); safecall;
    procedure ContainerTransportKRK(TranspID: Integer; OwnerId: Integer; Count: Integer;
                                    OwnerId_DGV: Integer; NoCalcDGV: OleVariant); safecall;
    function Get_GuardedGroupVCCount: Integer; safecall;
    procedure Set_GuardedGroupVCCount(pVal: Integer); safecall;
    function Get_VagonSectionCount: Integer; safecall;
    procedure Set_VagonSectionCount(pVal: Integer); safecall;
    function Get_BackRoutePresent: WordBool; safecall;
    procedure Set_BackRoutePresent(pVal: WordBool); safecall;
    function Get_PlanFormType: Smallint; safecall;
    procedure Set_PlanFormType(pVal: Smallint); safecall;
    function Get_GuardedGroupBaseVCCount: Integer; safecall;
    procedure Set_GuardedGroupBaseVCCount(pVal: Integer); safecall;
    function Get_GuardedGroupDopVCCount: Integer; safecall;
    procedure Set_GuardedGroupDopVCCount(pVal: Integer); safecall;
    procedure RevertDirection; safecall;
    function Get_RatePresented(OnDate: TDateTime): WordBool; safecall;
    function Get_ProxyConnectionType: Integer; safecall;
    procedure Set_ProxyConnectionType(pVal: Integer); safecall;
    function Get_ProxyAuthType: Integer; safecall;
    procedure Set_ProxyAuthType(pVal: Integer); safecall;
    function Get_ProxyServerName: WideString; safecall;
    procedure Set_ProxyServerName(const pVal: WideString); safecall;
    function Get_ProxyServerPort: WideString; safecall;
    procedure Set_ProxyServerPort(const pVal: WideString); safecall;
    function Get_ProxyUserName: WideString; safecall;
    procedure Set_ProxyUserName(const pVal: WideString); safecall;
    function Get_ProxyUserPass: WideString; safecall;
    procedure Set_ProxyUserPass(const pVal: WideString); safecall;
    procedure SaveProxyUserData; safecall;
    function FindStationsAround(const CodeBeginStation: WideString; Distance: Integer;
                                ContainerFlags: Integer): OleVariant; safecall;
    procedure SetDangPid(DangPid: Integer); safecall;
    procedure SetLandCurrency(LandId: Integer; CurrencyId: Integer; DirectionId: Integer); safecall;
    procedure SetCommonCurrency(CurrencyId: Integer); safecall;
    function GetCalcParameters: I2DimArrayHelper; safecall;
    function GetAllCalcParameters: I2DimArrayHelper; safecall;
    function Get_CalcParameter(const Name: WideString): ICalcParameter; safecall;
    procedure SaveAsXML(const FileName: WideString); safecall;
    function Get_DataAsXML: WideString; safecall;
    procedure SetReturnStation(const Code: WideString; LandId: Integer); safecall;
    procedure SetReturnStationAsFromStation; safecall;
    function GetFilteredCarNumber(const CarNumber: WideString): _RefBook; safecall;
    procedure SetDispStation(const Code: WideString; LandId: Integer); safecall;
    function Get_DispersionEnabled: WordBool; safecall;
    procedure Set_DispersionEnabled(pVal: WordBool); safecall;
    procedure SetReadressingStation(const Code: WideString; LandId: Integer); safecall;
    function Get_ReadressingEnabled: WordBool; safecall;
    procedure Set_ReadressingEnabled(pVal: WordBool); safecall;
    procedure SetWashingStation(const Code: WideString; LandId: Integer); safecall;
    function Get_WashingEnabled: WordBool; safecall;
    procedure Set_WashingEnabled(pVal: WordBool); safecall;
    function GetAvailTaxes: _RefBook; safecall;
    function GetDefaultTaxes: _RefBook; safecall;
    procedure SetUncouplingStation(const Code: WideString; LandId: Integer); safecall;
    procedure SetRepairStation(const Code: WideString; LandId: Integer); safecall;
    function Get_UncouplingAndRepairEnabled: WordBool; safecall;
    procedure Set_UncouplingAndRepairEnabled(pVal: WordBool); safecall;
    function Get_AltRoutesAvail: WordBool; safecall;
    function Get_AltRouteEnabled: WordBool; safecall;
    function Get_AltRouteId: Integer; safecall;
    procedure EnableAltRoute(AltRouteId: Integer); safecall;
    function GetAltRoutesRefBook: _RefBook; safecall;
    procedure SetLandRoadDirCurrency(LandId: Smallint; RoadId: Smallint; CurrencyId: Smallint;
                                     DirectionId: Byte); safecall;
    procedure MxFreightListSetDefaultParams; safecall;
    procedure MxFreightSetDefaultParams(Item: Smallint); safecall;
    procedure MxFreightOversize(Item: Smallint; const OversizeIndex: WideString); safecall;
    procedure MxFreightPerishable(Item: Smallint; Enable: WordBool); safecall;
    procedure MxFreightDangPid(Item: Smallint; DangPid: Integer); safecall;
    procedure MxFreightDanger(Item: Smallint; Enable: WordBool); safecall;
    procedure SetCurrentLandCurrency(CurrencyId: Smallint); safecall;
    function Get_ContFootage: Integer; safecall;
    procedure Set_ContFootage(pVal: Integer); safecall;
    function GetAvailFootage(ContID: Integer): _RefBook; safecall;
    procedure Container2(ContID: Integer; EqUniContID: Integer; OwnershipId: Integer;
                         ContCount: Integer; TareWeight: OleVariant); safecall;
    procedure Container3(ContID: Integer; EqUniContID: Integer; FootageId: Integer;
                         OwnerId: Integer; ContCount: Integer; TareWeight: OleVariant); safecall;
    function GetRunDays(Direction: Integer): Integer; safecall;
    function GetDopDays(Direction: Integer): Integer; safecall;
    function GetPeriodOfDelivery(Direction: Integer): Integer; safecall;
    procedure SetMngFreightGroup(const Code: WideString; Danger: WordBool); safecall;
    procedure SetKIT_ID_CurrentLand(KIT_ID: Integer); safecall;
    procedure SetKIT_ID(Land: Integer; Road: Integer; Direction: Integer; KIT_ID: Integer); safecall;
    procedure SaveOnDateCurrencies; safecall;
    function GngRefbookFilteredByEtsngCode(const Etsng_Code: WideString; pStrong: WordBool): _RefBook; safecall;
    function EtsngRefbookFilteredByGngCode(const Gng_Code: WideString; pStrong: WordBool): _RefBook; safecall;
    function GngCodesFilteredByEtsngCode(const Etsng_Code: WideString; pStrong: WordBool): OleVariant; safecall;
    function EtsngCodesFilteredByGngCode(const Gng_Code: WideString; pStrong: WordBool): OleVariant; safecall;
    procedure SetWagonByNumber(const Number: WideString); safecall;
    function Get_Language: Smallint; safecall;
    procedure Set_Language(pLANGID: Smallint); safecall;
    procedure UpdateDocTextToCurrentLang(Recalc: WordBool); safecall;
    procedure ClearTaxes(bSetToDefault: WordBool); safecall;
    procedure FromStationEx(const Code: WideString; StationLandId: Integer; LandId: Integer); safecall;
    procedure ToStationEx(const Code: WideString; StationLandId: Integer; LandId: Integer); safecall;
    procedure SetReturnStationEx(const StationCode: WideString; StationLandId: Integer;
                                 RetLandId: Integer); safecall;
    procedure AddStationEx(const Code: WideString; StationLandId: Smallint); safecall;
    procedure AddPPEx(const FirstCode: WideString; FirstStationLandId: Smallint;
                      const SecondCode: WideString; SecondStationLandId: Smallint); safecall;
    function GetKIT_ID_CurrentLand: Integer; safecall;
    function GetDefaultKIT_ID_CurrentLand: Integer; safecall;
    procedure ResetKIT_CurrentLand; safecall;
    procedure ResetKIT_All; safecall;
    function GetKIT_ID(Land: Integer; RoadRus: Integer; Direction: Integer): Integer; safecall;
    property Data: IDocNode read Get_Data;
    property Result: IDocNode read Get_Result;
    property Attributes: IDocumentAttr read Get_Attributes;
    property Root: IDocNode read Get_Root;
    property RateOfExchange: IRateOfExchange read Get_RateOfExchange;
    property MXFreightItem[Index: Integer; const ParamName: WideString]: OleVariant read Get_MXFreightItem;
    property MXFreightCount: Integer read Get_MXFreightCount;
    property Rate[FromCurrency: Integer; ToCurrency: Integer]: Double read Get_Rate write Set_Rate;
    property IsExists: WordBool read Get_IsExists;
    property Response: WideString read Get_Response;
    property Prepare: WordBool read Get_Prepare;
    property IsSTExists: WordBool read Get_IsSTExists;
    property ThrowErrorWhenRouteNotFound: WordBool read Get_ThrowErrorWhenRouteNotFound write Set_ThrowErrorWhenRouteNotFound;
    property FullRoute: IDocNode read Get_FullRoute;
    property ForwardThruRoute: IThruRoutes read Get_ForwardThruRoute;
    property BackwardThruRoute: IThruRoutes read Get_BackwardThruRoute;
    property GuardedGroupVCCount: Integer read Get_GuardedGroupVCCount write Set_GuardedGroupVCCount;
    property VagonSectionCount: Integer read Get_VagonSectionCount write Set_VagonSectionCount;
    property BackRoutePresent: WordBool read Get_BackRoutePresent write Set_BackRoutePresent;
    property PlanFormType: Smallint read Get_PlanFormType write Set_PlanFormType;
    property GuardedGroupBaseVCCount: Integer read Get_GuardedGroupBaseVCCount write Set_GuardedGroupBaseVCCount;
    property GuardedGroupDopVCCount: Integer read Get_GuardedGroupDopVCCount write Set_GuardedGroupDopVCCount;
    property RatePresented[OnDate: TDateTime]: WordBool read Get_RatePresented;
    property ProxyConnectionType: Integer read Get_ProxyConnectionType write Set_ProxyConnectionType;
    property ProxyAuthType: Integer read Get_ProxyAuthType write Set_ProxyAuthType;
    property ProxyServerName: WideString read Get_ProxyServerName write Set_ProxyServerName;
    property ProxyServerPort: WideString read Get_ProxyServerPort write Set_ProxyServerPort;
    property ProxyUserName: WideString read Get_ProxyUserName write Set_ProxyUserName;
    property ProxyUserPass: WideString read Get_ProxyUserPass write Set_ProxyUserPass;
    property CalcParameter[const Name: WideString]: ICalcParameter read Get_CalcParameter;
    property DataAsXML: WideString read Get_DataAsXML;
    property DispersionEnabled: WordBool read Get_DispersionEnabled write Set_DispersionEnabled;
    property ReadressingEnabled: WordBool read Get_ReadressingEnabled write Set_ReadressingEnabled;
    property WashingEnabled: WordBool read Get_WashingEnabled write Set_WashingEnabled;
    property UncouplingAndRepairEnabled: WordBool read Get_UncouplingAndRepairEnabled write Set_UncouplingAndRepairEnabled;
    property AltRoutesAvail: WordBool read Get_AltRoutesAvail;
    property AltRouteEnabled: WordBool read Get_AltRouteEnabled;
    property AltRouteId: Integer read Get_AltRouteId;
    property ContFootage: Integer read Get_ContFootage write Set_ContFootage;
    property Language: Smallint read Get_Language write Set_Language;
  end;

// *********************************************************************//
// DispIntf:  IVBSDocumentDisp
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {14C40CE3-9D23-4589-BB7B-B46BDC3CFF59}
// *********************************************************************//
  IVBSDocumentDisp = dispinterface
    ['{14C40CE3-9D23-4589-BB7B-B46BDC3CFF59}']
    procedure Initialize(const RootPath: WideString); dispid 1610743808;
    procedure New; dispid 1610743809;
    procedure Load(const FileName: WideString); dispid 1610743810;
    procedure Save(const FileName: WideString); dispid 1610743811;
    procedure SetParams(const AttrNodeName: WideString; ParamCount: Integer;
                        const ParamNames: OleVariant; const ParamValues: OleVariant); dispid 1610743812;
    procedure Calculate; dispid 1610743813;
    property Data: IDocNode readonly dispid 1610743814;
    property Result: IDocNode readonly dispid 1610743815;
    procedure StationBulkCalculate(const FromStation: OleVariant; const ToStation: OleVariant;
                                   const ResultField: WideString; var Result: OleVariant); dispid 1610743816;
    property Attributes: IDocumentAttr readonly dispid 1610743817;
    property Root: IDocNode readonly dispid 1610743818;
    property RateOfExchange: IRateOfExchange readonly dispid 1610743819;
    procedure FromStation(const Code: WideString; LandId: Integer); dispid 1610743820;
    procedure ToStation(const Code: WideString; LandId: Integer); dispid 1610743821;
    procedure CustomizeCalc(LandId: Integer; CalcType: OleVariant; Distance: OleVariant;
                            Currency: OleVariant); dispid 1610743822;
    procedure Send(SendCat: Integer; SendId: Integer; ExitRoute: Integer; Speed: Integer); dispid 1610743823;
    procedure Freight(const ETSNGCode: WideString; Weight: Double); dispid 1610743824;
    procedure Wagon(TranspID: Integer; OwnerId: Integer; Count: Integer; GP: OleVariant); dispid 1610743825;
    procedure Container(TranspID: Integer; OwnerId: Integer; ContCount: Integer;
                        TareWeight: OleVariant); dispid 1610743826;
    procedure ContainerTransport(TranspID: Integer; OwnerId: Integer; Count: Integer); dispid 1610743827;
    procedure RefWagon(OwnerId: Integer; FullCount: Integer; EmptyCount: Integer;
                       SectionSize: Integer); dispid 1610743828;
    procedure Support(SupportId: Integer; CounductorCount: Integer; AxisCount: Integer); dispid 1610743829;
    procedure Rur2Usd(Rate: Double); dispid 1610743830;
    procedure OnDate(OnDate: TDateTime); dispid 1610743831;
    procedure EmptyWagon(TranspID: Integer; OwnerId: Integer; Count: Integer;
                         const FromCargoCode: WideString; Axis: Integer; TareWeight: Double); dispid 1610743832;
    procedure WagonOwnerLand(OwnerLandID: Integer; IsUsageCharge: WordBool); dispid 1610743833;
    procedure MxFreight(FreightSet: OleVariant); dispid 1610743834;
    property MXFreightItem[Index: Integer; const ParamName: WideString]: OleVariant readonly dispid 1610743835;
    procedure MXFreightAdd(CodeType: Integer; const FreightCode: WideString; Weight: Double;
                           IsGuard: Integer; out pIndex: OleVariant); dispid 1610743836;
    procedure MXFreightDelete(Index: Integer); dispid 1610743837;
    property MXFreightCount: Integer readonly dispid 1610743838;
    procedure MXFreightClear; dispid 1610743839;
    procedure DispersionStation(const Code: WideString); dispid 1610743840;
    procedure DoCalcTariff; dispid 1610743841;
    procedure DoCalcDistance; dispid 1610743842;
    procedure LoadFromFile(const FilePath: WideString); dispid 1610743843;
    procedure LoadFromSite; dispid 1610743844;
    procedure SetRate(FromCurrency: Integer; ToCurrency: Integer; Rate: Double); dispid 1610743845;
    procedure GetRate(FromCurrency: Integer; ToCurrency: Integer; out pRate: Double); dispid 1610743846;
    property Rate[FromCurrency: Integer; ToCurrency: Integer]: Double dispid 1610743847;
    procedure AddStation(const Code: WideString); dispid 1610743849;
    procedure AddPP(const FirstCode: WideString; const SecondCode: WideString); dispid 1610743850;
    procedure Clear; dispid 1610743851;
    property IsExists: WordBool readonly dispid 1610743852;
    property Response: WideString readonly dispid 1610743853;
    function ShowRoot: WideString; dispid 1610743854;
    procedure IXMLView_SetParams(const DlgID: WideString; Params: OleVariant); dispid 1610743855;
    function ShowDialog(const Id: WideString): WideString; dispid 1610743856;
    procedure ParamSwitch(Params: OleVariant); dispid 1610743857;
    property Prepare: WordBool readonly dispid 1610743858;
    procedure FreightEx(const ETSNGCode: WideString; const GNG6: WideString;
                        const GNG8: WideString; Weight: Double); dispid 1610743859;
    procedure FlatWagonOwnerFirm(Id: Integer); dispid 1610743860;
    procedure ContainerOwnerFirm(Id: Integer); dispid 1610743861;
    property IsSTExists: WordBool readonly dispid 1610743862;
    procedure SPTariffArray(var pArray: OleVariant); dispid 1610743863;
    procedure SetKITCurrentLand(KITNum: Integer); dispid 1610743864;
    procedure SetKIT(Land: Integer; Road: Integer; Direction: Integer; KITNum: Integer); dispid 1610743865;
    function FilteredRefBook(const Name: WideString; const FilterName: WideString): _RefBook; dispid 1610743866;
    procedure SetTax(const TaxID: WideString; bSet: WordBool; const Value: WideString); dispid 1610743867;
    property ThrowErrorWhenRouteNotFound: WordBool dispid 1610743868;
    property FullRoute: IDocNode readonly dispid 1610743870;
    procedure LoadUserTaxFile(const FilePath: WideString); dispid 1610743871;
    procedure LoadUserTax(const XMLData: WideString); dispid 1610743872;
    procedure MXFreightAddEx(const ETSNGCode: WideString; const GNG8: WideString; Weight: Double;
                             IsGuard: Integer; out pIndex: OleVariant); dispid 1610743873;
    procedure EmptyWagonEx(TranspID: Integer; OwnerId: Integer; Count: Integer;
                           const ETSNGCode: WideString; const GNG8: WideString; Axis: Integer;
                           TareWeight: Double); dispid 1610743874;
    procedure AddEquip(IsAddEquip: Integer; ForwardEquipType: Integer; BackwardEquipType: Integer); dispid 1610743875;
    function IsEquipWeight: WordBool; dispid 1610743876;
    procedure EquipWeight(pVal: Double); dispid 1610743877;
    procedure Bulkiness(const Index: WideString); dispid 1610743878;
    property ForwardThruRoute: IThruRoutes readonly dispid 1610743879;
    property BackwardThruRoute: IThruRoutes readonly dispid 1610743880;
    procedure CopyThruRouteFwdToBwd; dispid 1610743881;
    procedure CopyThruRouteBwdToFwd; dispid 1610743882;
    procedure BufferWagon(TranspID: Integer; OwnerId: Integer; Count: Integer; Axis: OleVariant); dispid 1610743883;
    procedure BufferWagonOwnerFirm(Id: Integer); dispid 1610743884;
    procedure BufferWagonUsageMode(Id: Integer; ModelWeight: OleVariant); dispid 1610743885;
    procedure ContainerTransportKRK(TranspID: Integer; OwnerId: Integer; Count: Integer;
                                    OwnerId_DGV: Integer; NoCalcDGV: OleVariant); dispid 1610743886;
    property GuardedGroupVCCount: Integer dispid 1610743887;
    property VagonSectionCount: Integer dispid 1610743889;
    property BackRoutePresent: WordBool dispid 1610743891;
    property PlanFormType: Smallint dispid 1610743893;
    property GuardedGroupBaseVCCount: Integer dispid 1610743895;
    property GuardedGroupDopVCCount: Integer dispid 1610743897;
    procedure RevertDirection; dispid 1610743899;
    property RatePresented[OnDate: TDateTime]: WordBool readonly dispid 1610743900;
    property ProxyConnectionType: Integer dispid 1610743901;
    property ProxyAuthType: Integer dispid 1610743903;
    property ProxyServerName: WideString dispid 1610743905;
    property ProxyServerPort: WideString dispid 1610743907;
    property ProxyUserName: WideString dispid 1610743909;
    property ProxyUserPass: WideString dispid 1610743911;
    procedure SaveProxyUserData; dispid 1610743913;
    function FindStationsAround(const CodeBeginStation: WideString; Distance: Integer;
                                ContainerFlags: Integer): OleVariant; dispid 1610743914;
    procedure SetDangPid(DangPid: Integer); dispid 1610743915;
    procedure SetLandCurrency(LandId: Integer; CurrencyId: Integer; DirectionId: Integer); dispid 1610743916;
    procedure SetCommonCurrency(CurrencyId: Integer); dispid 1610743917;
    function GetCalcParameters: I2DimArrayHelper; dispid 1610743918;
    function GetAllCalcParameters: I2DimArrayHelper; dispid 1610743919;
    property CalcParameter[const Name: WideString]: ICalcParameter readonly dispid 1610743920;
    procedure SaveAsXML(const FileName: WideString); dispid 1610743921;
    property DataAsXML: WideString readonly dispid 1610743922;
    procedure SetReturnStation(const Code: WideString; LandId: Integer); dispid 1610743923;
    procedure SetReturnStationAsFromStation; dispid 1610743924;
    function GetFilteredCarNumber(const CarNumber: WideString): _RefBook; dispid 1610743925;
    procedure SetDispStation(const Code: WideString; LandId: Integer); dispid 1610743926;
    property DispersionEnabled: WordBool dispid 1610743927;
    procedure SetReadressingStation(const Code: WideString; LandId: Integer); dispid 1610743929;
    property ReadressingEnabled: WordBool dispid 1610743930;
    procedure SetWashingStation(const Code: WideString; LandId: Integer); dispid 1610743932;
    property WashingEnabled: WordBool dispid 1610743933;
    function GetAvailTaxes: _RefBook; dispid 1610743935;
    function GetDefaultTaxes: _RefBook; dispid 1610743936;
    procedure SetUncouplingStation(const Code: WideString; LandId: Integer); dispid 1610743937;
    procedure SetRepairStation(const Code: WideString; LandId: Integer); dispid 1610743938;
    property UncouplingAndRepairEnabled: WordBool dispid 1610743939;
    property AltRoutesAvail: WordBool readonly dispid 1610743941;
    property AltRouteEnabled: WordBool readonly dispid 1610743942;
    property AltRouteId: Integer readonly dispid 1610743943;
    procedure EnableAltRoute(AltRouteId: Integer); dispid 1610743944;
    function GetAltRoutesRefBook: _RefBook; dispid 1610743945;
    procedure SetLandRoadDirCurrency(LandId: Smallint; RoadId: Smallint; CurrencyId: Smallint;
                                     DirectionId: Byte); dispid 1610743946;
    procedure MxFreightListSetDefaultParams; dispid 1610743947;
    procedure MxFreightSetDefaultParams(Item: Smallint); dispid 1610743948;
    procedure MxFreightOversize(Item: Smallint; const OversizeIndex: WideString); dispid 1610743949;
    procedure MxFreightPerishable(Item: Smallint; Enable: WordBool); dispid 1610743950;
    procedure MxFreightDangPid(Item: Smallint; DangPid: Integer); dispid 1610743951;
    procedure MxFreightDanger(Item: Smallint; Enable: WordBool); dispid 1610743952;
    procedure SetCurrentLandCurrency(CurrencyId: Smallint); dispid 1610743953;
    property ContFootage: Integer dispid 1610743954;
    function GetAvailFootage(ContID: Integer): _RefBook; dispid 1610743956;
    procedure Container2(ContID: Integer; EqUniContID: Integer; OwnershipId: Integer;
                         ContCount: Integer; TareWeight: OleVariant); dispid 1610743957;
    procedure Container3(ContID: Integer; EqUniContID: Integer; FootageId: Integer;
                         OwnerId: Integer; ContCount: Integer; TareWeight: OleVariant); dispid 1610743958;
    function GetRunDays(Direction: Integer): Integer; dispid 1610743959;
    function GetDopDays(Direction: Integer): Integer; dispid 1610743960;
    function GetPeriodOfDelivery(Direction: Integer): Integer; dispid 1610743961;
    procedure SetMngFreightGroup(const Code: WideString; Danger: WordBool); dispid 1610743962;
    procedure SetKIT_ID_CurrentLand(KIT_ID: Integer); dispid 1610743963;
    procedure SetKIT_ID(Land: Integer; Road: Integer; Direction: Integer; KIT_ID: Integer); dispid 1610743964;
    procedure SaveOnDateCurrencies; dispid 1610743965;
    function GngRefbookFilteredByEtsngCode(const Etsng_Code: WideString; pStrong: WordBool): _RefBook; dispid 1610743966;
    function EtsngRefbookFilteredByGngCode(const Gng_Code: WideString; pStrong: WordBool): _RefBook; dispid 1610743967;
    function GngCodesFilteredByEtsngCode(const Etsng_Code: WideString; pStrong: WordBool): OleVariant; dispid 1610743968;
    function EtsngCodesFilteredByGngCode(const Gng_Code: WideString; pStrong: WordBool): OleVariant; dispid 1610743969;
    procedure SetWagonByNumber(const Number: WideString); dispid 1610743970;
    property Language: Smallint dispid 1610743971;
    procedure UpdateDocTextToCurrentLang(Recalc: WordBool); dispid 1610743973;
    procedure ClearTaxes(bSetToDefault: WordBool); dispid 1610743974;
    procedure FromStationEx(const Code: WideString; StationLandId: Integer; LandId: Integer); dispid 1610743975;
    procedure ToStationEx(const Code: WideString; StationLandId: Integer; LandId: Integer); dispid 1610743976;
    procedure SetReturnStationEx(const StationCode: WideString; StationLandId: Integer;
                                 RetLandId: Integer); dispid 1610743977;
    procedure AddStationEx(const Code: WideString; StationLandId: Smallint); dispid 1610743978;
    procedure AddPPEx(const FirstCode: WideString; FirstStationLandId: Smallint;
                      const SecondCode: WideString; SecondStationLandId: Smallint); dispid 1610743979;
    function GetKIT_ID_CurrentLand: Integer; dispid 1610743980;
    function GetDefaultKIT_ID_CurrentLand: Integer; dispid 1610743981;
    procedure ResetKIT_CurrentLand; dispid 1610743982;
    procedure ResetKIT_All; dispid 1610743983;
    function GetKIT_ID(Land: Integer; RoadRus: Integer; Direction: Integer): Integer; dispid 1610743984;
  end;

// *********************************************************************//
// Interface: IDocument
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {072A139C-34E7-4BAA-9097-A4281F1811E7}
// *********************************************************************//
  IDocument = interface(IDispatch)
    ['{072A139C-34E7-4BAA-9097-A4281F1811E7}']
    procedure Initialize(const RootPath: WideString); safecall;
    procedure New; safecall;
    procedure Load(const FileName: WideString); safecall;
    procedure Save(const FileName: WideString); safecall;
    procedure SetParams(const AttrNodeName: WideString; ParamCount: Integer;
                        const ParamNames: OleVariant; const ParamValues: OleVariant); safecall;
    procedure Calculate; safecall;
    function Get_Data: IDocNode; safecall;
    function Get_Result: IDocNode; safecall;
    procedure StationBulkCalculate(const FromStation: OleVariant; const ToStation: OleVariant;
                                   const ResultField: WideString; var Result: OleVariant); safecall;
    function Get_Attributes: IDocumentAttr; safecall;
    function Get_Root: IDocNode; safecall;
    function Get_RateOfExchange: IRateOfExchange; safecall;
    property Data: IDocNode read Get_Data;
    property Result: IDocNode read Get_Result;
    property Attributes: IDocumentAttr read Get_Attributes;
    property Root: IDocNode read Get_Root;
    property RateOfExchange: IRateOfExchange read Get_RateOfExchange;
  end;

// *********************************************************************//
// DispIntf:  IDocumentDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {072A139C-34E7-4BAA-9097-A4281F1811E7}
// *********************************************************************//
  IDocumentDisp = dispinterface
    ['{072A139C-34E7-4BAA-9097-A4281F1811E7}']
    procedure Initialize(const RootPath: WideString); dispid 1;
    procedure New; dispid 2;
    procedure Load(const FileName: WideString); dispid 3;
    procedure Save(const FileName: WideString); dispid 4;
    procedure SetParams(const AttrNodeName: WideString; ParamCount: Integer;
                        const ParamNames: OleVariant; const ParamValues: OleVariant); dispid 5;
    procedure Calculate; dispid 6;
    property Data: IDocNode readonly dispid 7;
    property Result: IDocNode readonly dispid 8;
    procedure StationBulkCalculate(const FromStation: OleVariant; const ToStation: OleVariant;
                                   const ResultField: WideString; var Result: OleVariant); dispid 9;
    property Attributes: IDocumentAttr readonly dispid 10;
    property Root: IDocNode readonly dispid 11;
    property RateOfExchange: IRateOfExchange readonly dispid 12;
  end;

// *********************************************************************//
// Interface: IDocNode
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {1A066906-5C64-411B-848B-43C900296A69}
// *********************************************************************//
  IDocNode = interface(IDispatch)
    ['{1A066906-5C64-411B-848B-43C900296A69}']
    function Get_Node(const Path: WideString): IDocNode; safecall;
    function Get_Value(const Path: WideString): OleVariant; safecall;
    procedure Set_Value(const Path: WideString; pVal: OleVariant); safecall;
    function Get_IsTable: Integer; safecall;
    function Get_AsTable: IDocTableNode; safecall;
    procedure SetValue(const Name: WideString; Value: OleVariant); safecall;
    property Node[const Path: WideString]: IDocNode read Get_Node;
    property Value[const Path: WideString]: OleVariant read Get_Value write Set_Value;
    property IsTable: Integer read Get_IsTable;
    property AsTable: IDocTableNode read Get_AsTable;
  end;

// *********************************************************************//
// DispIntf:  IDocNodeDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {1A066906-5C64-411B-848B-43C900296A69}
// *********************************************************************//
  IDocNodeDisp = dispinterface
    ['{1A066906-5C64-411B-848B-43C900296A69}']
    property Node[const Path: WideString]: IDocNode readonly dispid 1;
    property Value[const Path: WideString]: OleVariant dispid 2;
    property IsTable: Integer readonly dispid 3;
    property AsTable: IDocTableNode readonly dispid 4;
    procedure SetValue(const Name: WideString; Value: OleVariant); dispid 5;
  end;

// *********************************************************************//
// Interface: IDocTableNode
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {8A83B7E5-1A43-4F60-BDC9-CE10C1AB4EED}
// *********************************************************************//
  IDocTableNode = interface(IDispatch)
    ['{8A83B7E5-1A43-4F60-BDC9-CE10C1AB4EED}']
    procedure First; safecall;
    procedure Last; safecall;
    procedure Next; safecall;
    procedure Prev; safecall;
    function Get_EOF: WordBool; safecall;
    function Get_BOF: WordBool; safecall;
    property EOF: WordBool read Get_EOF;
    property BOF: WordBool read Get_BOF;
  end;

// *********************************************************************//
// DispIntf:  IDocTableNodeDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {8A83B7E5-1A43-4F60-BDC9-CE10C1AB4EED}
// *********************************************************************//
  IDocTableNodeDisp = dispinterface
    ['{8A83B7E5-1A43-4F60-BDC9-CE10C1AB4EED}']
    procedure First; dispid 10;
    procedure Last; dispid 11;
    procedure Next; dispid 12;
    procedure Prev; dispid 13;
    property EOF: WordBool readonly dispid 14;
    property BOF: WordBool readonly dispid 15;
  end;

// *********************************************************************//
// Interface: IDocumentAttr
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {0E3AFF4A-FC19-40F6-8ADB-744ECA492F67}
// *********************************************************************//
  IDocumentAttr = interface(IDispatch)
    ['{0E3AFF4A-FC19-40F6-8ADB-744ECA492F67}']
    procedure FromStation(const StationCode: WideString; SrcLandId: Integer); safecall;
    procedure ToStation(const StationCode: WideString; DstLandId: Integer); safecall;
    procedure CustomizeCalc(LandId: Integer; CalcType: OleVariant; Distance: OleVariant;
                            Currency: OleVariant); safecall;
    procedure Send(SendCat: Integer; SendId: Integer; ExitRoute: Integer; Speed: Integer); safecall;
    procedure Freight(const ETSNGCode: WideString; Weight: Double); safecall;
    procedure Wagon(TranspID: Integer; OwnerId: Integer; Count: Integer; GP: OleVariant); safecall;
    procedure Container(ContID: Integer; OwnershipId: Integer; ContCount: Integer;
                        TareWeight: OleVariant); safecall;
    procedure ContainerTransport(TranspID: Integer; OwnerId: Integer; Count: Integer); safecall;
    procedure RefWagon(OwnerId: Integer; FullCount: Integer; EmptyCount: Integer;
                       SectionSize: Integer); safecall;
    procedure Support(SupportId: Integer; CounductorCount: Integer; AxisCount: Integer); safecall;
    procedure Rur2Usd(Rate: Double); safecall;
    procedure OnDate(OnDate: TDateTime); safecall;
  end;

// *********************************************************************//
// DispIntf:  IDocumentAttrDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {0E3AFF4A-FC19-40F6-8ADB-744ECA492F67}
// *********************************************************************//
  IDocumentAttrDisp = dispinterface
    ['{0E3AFF4A-FC19-40F6-8ADB-744ECA492F67}']
    procedure FromStation(const StationCode: WideString; SrcLandId: Integer); dispid 1;
    procedure ToStation(const StationCode: WideString; DstLandId: Integer); dispid 2;
    procedure CustomizeCalc(LandId: Integer; CalcType: OleVariant; Distance: OleVariant;
                            Currency: OleVariant); dispid 3;
    procedure Send(SendCat: Integer; SendId: Integer; ExitRoute: Integer; Speed: Integer); dispid 10;
    procedure Freight(const ETSNGCode: WideString; Weight: Double); dispid 20;
    procedure Wagon(TranspID: Integer; OwnerId: Integer; Count: Integer; GP: OleVariant); dispid 30;
    procedure Container(ContID: Integer; OwnershipId: Integer; ContCount: Integer;
                        TareWeight: OleVariant); dispid 31;
    procedure ContainerTransport(TranspID: Integer; OwnerId: Integer; Count: Integer); dispid 32;
    procedure RefWagon(OwnerId: Integer; FullCount: Integer; EmptyCount: Integer;
                       SectionSize: Integer); dispid 33;
    procedure Support(SupportId: Integer; CounductorCount: Integer; AxisCount: Integer); dispid 40;
    procedure Rur2Usd(Rate: Double); dispid 50;
    procedure OnDate(OnDate: TDateTime); dispid 51;
  end;

// *********************************************************************//
// Interface: IRateOfExchange
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {7DACF81C-F64E-4BAA-87CC-E628A7B7F8D6}
// *********************************************************************//
  IRateOfExchange = interface(IDispatch)
    ['{7DACF81C-F64E-4BAA-87CC-E628A7B7F8D6}']
    procedure LoadFromFile(const FilePath: WideString); safecall;
    procedure LoadFromSite; safecall;
    procedure SetRate(FromCurrency: Integer; ToCurrency: Integer; Rate: Double); safecall;
    procedure GetRate(FromCurrency: Integer; ToCurrency: Integer; out pRate: Double); safecall;
    function Get_Rate(FromCurrency: Integer; ToCurrency: Integer): Double; safecall;
    procedure Set_Rate(FromCurrency: Integer; ToCurrency: Integer; pVal: Double); safecall;
    property Rate[FromCurrency: Integer; ToCurrency: Integer]: Double read Get_Rate write Set_Rate;
  end;

// *********************************************************************//
// DispIntf:  IRateOfExchangeDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {7DACF81C-F64E-4BAA-87CC-E628A7B7F8D6}
// *********************************************************************//
  IRateOfExchangeDisp = dispinterface
    ['{7DACF81C-F64E-4BAA-87CC-E628A7B7F8D6}']
    procedure LoadFromFile(const FilePath: WideString); dispid 1;
    procedure LoadFromSite; dispid 2;
    procedure SetRate(FromCurrency: Integer; ToCurrency: Integer; Rate: Double); dispid 3;
    procedure GetRate(FromCurrency: Integer; ToCurrency: Integer; out pRate: Double); dispid 4;
    property Rate[FromCurrency: Integer; ToCurrency: Integer]: Double dispid 5;
  end;

// *********************************************************************//
// Interface: _RefBook
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {232815DC-F11F-4FE4-BDFB-2D4FFBF6492D}
// *********************************************************************//
  _RefBook = interface(IDispatch)
    ['{232815DC-F11F-4FE4-BDFB-2D4FFBF6492D}']
    procedure First; safecall;
    procedure Last; safecall;
    procedure Next; safecall;
    procedure Prev; safecall;
    procedure SeekByKey(const FieldName: WideString; Value: OleVariant); safecall;
    function Get_Show: WordBool; safecall;
    function Get_EOF: WordBool; safecall;
    function Get_FieldValue(const FieldName: WideString): OleVariant; safecall;
    property Show: WordBool read Get_Show;
    property EOF: WordBool read Get_EOF;
    property FieldValue[const FieldName: WideString]: OleVariant read Get_FieldValue;
  end;

// *********************************************************************//
// DispIntf:  _RefBookDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {232815DC-F11F-4FE4-BDFB-2D4FFBF6492D}
// *********************************************************************//
  _RefBookDisp = dispinterface
    ['{232815DC-F11F-4FE4-BDFB-2D4FFBF6492D}']
    procedure First; dispid 1;
    procedure Last; dispid 2;
    procedure Next; dispid 3;
    procedure Prev; dispid 4;
    procedure SeekByKey(const FieldName: WideString; Value: OleVariant); dispid 5;
    property Show: WordBool readonly dispid 6;
    property EOF: WordBool readonly dispid 7;
    property FieldValue[const FieldName: WideString]: OleVariant readonly dispid 8;
  end;

// *********************************************************************//
// Interface: IThruRoutes
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {AB006C8F-197F-4430-8A67-83C8EB817D44}
// *********************************************************************//
  IThruRoutes = interface(IDispatch)
    ['{AB006C8F-197F-4430-8A67-83C8EB817D44}']
    procedure AddStation(const StationCode: WideString); safecall;
    procedure AddPP(const FirstCode: WideString; const SecondCode: WideString); safecall;
    procedure Clear; safecall;
    function Get_IsExists: WordBool; safecall;
    property IsExists: WordBool read Get_IsExists;
  end;

// *********************************************************************//
// DispIntf:  IThruRoutesDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {AB006C8F-197F-4430-8A67-83C8EB817D44}
// *********************************************************************//
  IThruRoutesDisp = dispinterface
    ['{AB006C8F-197F-4430-8A67-83C8EB817D44}']
    procedure AddStation(const StationCode: WideString); dispid 1;
    procedure AddPP(const FirstCode: WideString; const SecondCode: WideString); dispid 2;
    procedure Clear; dispid 3;
    property IsExists: WordBool readonly dispid 4;
  end;

// *********************************************************************//
// Interface: I2DimArrayHelper
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {A92EDDBD-A823-4B59-9860-AF72D296C53A}
// *********************************************************************//
  I2DimArrayHelper = interface(IDispatch)
    ['{A92EDDBD-A823-4B59-9860-AF72D296C53A}']
    function Get_Name(Index: Integer): WideString; safecall;
    function Get_Value(Index: Integer): OleVariant; safecall;
    function Get_Count: Integer; safecall;
    procedure Initialize(const pVal: OleVariant); safecall;
    procedure InitSPTariff(const pDoc: ISpecialTariff); safecall;
    property Name[Index: Integer]: WideString read Get_Name;
    property Value[Index: Integer]: OleVariant read Get_Value;
    property Count: Integer read Get_Count;
  end;

// *********************************************************************//
// DispIntf:  I2DimArrayHelperDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {A92EDDBD-A823-4B59-9860-AF72D296C53A}
// *********************************************************************//
  I2DimArrayHelperDisp = dispinterface
    ['{A92EDDBD-A823-4B59-9860-AF72D296C53A}']
    property Name[Index: Integer]: WideString readonly dispid 1;
    property Value[Index: Integer]: OleVariant readonly dispid 2;
    property Count: Integer readonly dispid 3;
    procedure Initialize(const pVal: OleVariant); dispid 4;
    procedure InitSPTariff(const pDoc: ISpecialTariff); dispid 5;
  end;

// *********************************************************************//
// Interface: ISpecialTariff
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {A3B3D6FE-6248-42B0-B20B-3EB397180FAB}
// *********************************************************************//
  ISpecialTariff = interface(IDispatch)
    ['{A3B3D6FE-6248-42B0-B20B-3EB397180FAB}']
    function Get_IsSTExists: WordBool; safecall;
    procedure SPTariffArray(var pArray: OleVariant); safecall;
    property IsSTExists: WordBool read Get_IsSTExists;
  end;

// *********************************************************************//
// DispIntf:  ISpecialTariffDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {A3B3D6FE-6248-42B0-B20B-3EB397180FAB}
// *********************************************************************//
  ISpecialTariffDisp = dispinterface
    ['{A3B3D6FE-6248-42B0-B20B-3EB397180FAB}']
    property IsSTExists: WordBool readonly dispid 1;
    procedure SPTariffArray(var pArray: OleVariant); dispid 2;
  end;

// *********************************************************************//
// Interface: ICalcParameter
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {305B20F0-5655-48C6-951F-5E1D9A6CE163}
// *********************************************************************//
  ICalcParameter = interface(IDispatch)
    ['{305B20F0-5655-48C6-951F-5E1D9A6CE163}']
    function Get_Name: WideString; safecall;
    function Get_Description: WideString; safecall;
    function Get_type_: Integer; safecall;
    function Get_Value: OleVariant; safecall;
    procedure Set_Value(pValue: OleVariant); safecall;
    property Name: WideString read Get_Name;
    property Description: WideString read Get_Description;
    property type_: Integer read Get_type_;
    property Value: OleVariant read Get_Value write Set_Value;
  end;

// *********************************************************************//
// DispIntf:  ICalcParameterDisp
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {305B20F0-5655-48C6-951F-5E1D9A6CE163}
// *********************************************************************//
  ICalcParameterDisp = dispinterface
    ['{305B20F0-5655-48C6-951F-5E1D9A6CE163}']
    property Name: WideString readonly dispid 1610743808;
    property Description: WideString readonly dispid 1610743809;
    property type_: Integer readonly dispid 1610743810;
    property Value: OleVariant dispid 1610743811;
  end;

// *********************************************************************//
// Interface: IDocument1
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {7B6538E4-F237-483D-ACE0-D7C92BC878A8}
// *********************************************************************//
  IDocument1 = interface(IDocument)
    ['{7B6538E4-F237-483D-ACE0-D7C92BC878A8}']
    procedure SaveAsXML(const FileName: WideString); safecall;
    function Get_DataAsXML: WideString; safecall;
    property DataAsXML: WideString read Get_DataAsXML;
  end;

// *********************************************************************//
// DispIntf:  IDocument1Disp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {7B6538E4-F237-483D-ACE0-D7C92BC878A8}
// *********************************************************************//
  IDocument1Disp = dispinterface
    ['{7B6538E4-F237-483D-ACE0-D7C92BC878A8}']
    procedure SaveAsXML(const FileName: WideString); dispid 13;
    property DataAsXML: WideString readonly dispid 14;
    procedure Initialize(const RootPath: WideString); dispid 1;
    procedure New; dispid 2;
    procedure Load(const FileName: WideString); dispid 3;
    procedure Save(const FileName: WideString); dispid 4;
    procedure SetParams(const AttrNodeName: WideString; ParamCount: Integer;
                        const ParamNames: OleVariant; const ParamValues: OleVariant); dispid 5;
    procedure Calculate; dispid 6;
    property Data: IDocNode readonly dispid 7;
    property Result: IDocNode readonly dispid 8;
    procedure StationBulkCalculate(const FromStation: OleVariant; const ToStation: OleVariant;
                                   const ResultField: WideString; var Result: OleVariant); dispid 9;
    property Attributes: IDocumentAttr readonly dispid 10;
    property Root: IDocNode readonly dispid 11;
    property RateOfExchange: IRateOfExchange readonly dispid 12;
  end;

// *********************************************************************//
// Interface: IDocumentAttr2
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {0517D794-76AF-4A6F-9851-AB798C666E51}
// *********************************************************************//
  IDocumentAttr2 = interface(IDocumentAttr)
    ['{0517D794-76AF-4A6F-9851-AB798C666E51}']
    procedure EmptyWagon(TranspID: Integer; OwnerId: Integer; Count: Integer;
                         const FromCargoCode: WideString; Axis: Integer; TareWeight: Double); safecall;
    procedure WagonOwnerLand(OwnerLandID: Integer; IsUsageCharge: WordBool); safecall;
  end;

// *********************************************************************//
// DispIntf:  IDocumentAttr2Disp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {0517D794-76AF-4A6F-9851-AB798C666E51}
// *********************************************************************//
  IDocumentAttr2Disp = dispinterface
    ['{0517D794-76AF-4A6F-9851-AB798C666E51}']
    procedure EmptyWagon(TranspID: Integer; OwnerId: Integer; Count: Integer;
                         const FromCargoCode: WideString; Axis: Integer; TareWeight: Double); dispid 34;
    procedure WagonOwnerLand(OwnerLandID: Integer; IsUsageCharge: WordBool); dispid 35;
    procedure FromStation(const StationCode: WideString; SrcLandId: Integer); dispid 1;
    procedure ToStation(const StationCode: WideString; DstLandId: Integer); dispid 2;
    procedure CustomizeCalc(LandId: Integer; CalcType: OleVariant; Distance: OleVariant;
                            Currency: OleVariant); dispid 3;
    procedure Send(SendCat: Integer; SendId: Integer; ExitRoute: Integer; Speed: Integer); dispid 10;
    procedure Freight(const ETSNGCode: WideString; Weight: Double); dispid 20;
    procedure Wagon(TranspID: Integer; OwnerId: Integer; Count: Integer; GP: OleVariant); dispid 30;
    procedure Container(ContID: Integer; OwnershipId: Integer; ContCount: Integer;
                        TareWeight: OleVariant); dispid 31;
    procedure ContainerTransport(TranspID: Integer; OwnerId: Integer; Count: Integer); dispid 32;
    procedure RefWagon(OwnerId: Integer; FullCount: Integer; EmptyCount: Integer;
                       SectionSize: Integer); dispid 33;
    procedure Support(SupportId: Integer; CounductorCount: Integer; AxisCount: Integer); dispid 40;
    procedure Rur2Usd(Rate: Double); dispid 50;
    procedure OnDate(OnDate: TDateTime); dispid 51;
  end;

// *********************************************************************//
// Interface: IDocumentAttr3
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {7A99F7C0-6404-43FF-9E16-7F3F41B7D944}
// *********************************************************************//
  IDocumentAttr3 = interface(IDocumentAttr2)
    ['{7A99F7C0-6404-43FF-9E16-7F3F41B7D944}']
    procedure MxFreight(FreightSet: OleVariant); safecall;
    function Get_MXFreightItem(Index: Integer; const ParamName: WideString): OleVariant; safecall;
    procedure MXFreightAdd(CodeType: Integer; const FreightCode: WideString; Weight: Double;
                           IsGuard: Integer; out pIndex: OleVariant); safecall;
    procedure MXFreightDelete(Index: Integer); safecall;
    function Get_MXFreightCount: Integer; safecall;
    procedure MXFreightClear; safecall;
    property MXFreightItem[Index: Integer; const ParamName: WideString]: OleVariant read Get_MXFreightItem;
    property MXFreightCount: Integer read Get_MXFreightCount;
  end;

// *********************************************************************//
// DispIntf:  IDocumentAttr3Disp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {7A99F7C0-6404-43FF-9E16-7F3F41B7D944}
// *********************************************************************//
  IDocumentAttr3Disp = dispinterface
    ['{7A99F7C0-6404-43FF-9E16-7F3F41B7D944}']
    procedure MxFreight(FreightSet: OleVariant); dispid 21;
    property MXFreightItem[Index: Integer; const ParamName: WideString]: OleVariant readonly dispid 22;
    procedure MXFreightAdd(CodeType: Integer; const FreightCode: WideString; Weight: Double;
                           IsGuard: Integer; out pIndex: OleVariant); dispid 23;
    procedure MXFreightDelete(Index: Integer); dispid 24;
    property MXFreightCount: Integer readonly dispid 25;
    procedure MXFreightClear; dispid 26;
    procedure EmptyWagon(TranspID: Integer; OwnerId: Integer; Count: Integer;
                         const FromCargoCode: WideString; Axis: Integer; TareWeight: Double); dispid 34;
    procedure WagonOwnerLand(OwnerLandID: Integer; IsUsageCharge: WordBool); dispid 35;
    procedure FromStation(const StationCode: WideString; SrcLandId: Integer); dispid 1;
    procedure ToStation(const StationCode: WideString; DstLandId: Integer); dispid 2;
    procedure CustomizeCalc(LandId: Integer; CalcType: OleVariant; Distance: OleVariant;
                            Currency: OleVariant); dispid 3;
    procedure Send(SendCat: Integer; SendId: Integer; ExitRoute: Integer; Speed: Integer); dispid 10;
    procedure Freight(const ETSNGCode: WideString; Weight: Double); dispid 20;
    procedure Wagon(TranspID: Integer; OwnerId: Integer; Count: Integer; GP: OleVariant); dispid 30;
    procedure Container(ContID: Integer; OwnershipId: Integer; ContCount: Integer;
                        TareWeight: OleVariant); dispid 31;
    procedure ContainerTransport(TranspID: Integer; OwnerId: Integer; Count: Integer); dispid 32;
    procedure RefWagon(OwnerId: Integer; FullCount: Integer; EmptyCount: Integer;
                       SectionSize: Integer); dispid 33;
    procedure Support(SupportId: Integer; CounductorCount: Integer; AxisCount: Integer); dispid 40;
    procedure Rur2Usd(Rate: Double); dispid 50;
    procedure OnDate(OnDate: TDateTime); dispid 51;
  end;

// *********************************************************************//
// Interface: IDocumentAttr4
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {45F95EF0-4D7A-4B88-A7C5-BF921BEFB237}
// *********************************************************************//
  IDocumentAttr4 = interface(IDocumentAttr3)
    ['{45F95EF0-4D7A-4B88-A7C5-BF921BEFB237}']
    procedure DispersionStation(const Code: WideString); safecall;
  end;

// *********************************************************************//
// DispIntf:  IDocumentAttr4Disp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {45F95EF0-4D7A-4B88-A7C5-BF921BEFB237}
// *********************************************************************//
  IDocumentAttr4Disp = dispinterface
    ['{45F95EF0-4D7A-4B88-A7C5-BF921BEFB237}']
    procedure DispersionStation(const Code: WideString); dispid 27;
    procedure MxFreight(FreightSet: OleVariant); dispid 21;
    property MXFreightItem[Index: Integer; const ParamName: WideString]: OleVariant readonly dispid 22;
    procedure MXFreightAdd(CodeType: Integer; const FreightCode: WideString; Weight: Double;
                           IsGuard: Integer; out pIndex: OleVariant); dispid 23;
    procedure MXFreightDelete(Index: Integer); dispid 24;
    property MXFreightCount: Integer readonly dispid 25;
    procedure MXFreightClear; dispid 26;
    procedure EmptyWagon(TranspID: Integer; OwnerId: Integer; Count: Integer;
                         const FromCargoCode: WideString; Axis: Integer; TareWeight: Double); dispid 34;
    procedure WagonOwnerLand(OwnerLandID: Integer; IsUsageCharge: WordBool); dispid 35;
    procedure FromStation(const StationCode: WideString; SrcLandId: Integer); dispid 1;
    procedure ToStation(const StationCode: WideString; DstLandId: Integer); dispid 2;
    procedure CustomizeCalc(LandId: Integer; CalcType: OleVariant; Distance: OleVariant;
                            Currency: OleVariant); dispid 3;
    procedure Send(SendCat: Integer; SendId: Integer; ExitRoute: Integer; Speed: Integer); dispid 10;
    procedure Freight(const ETSNGCode: WideString; Weight: Double); dispid 20;
    procedure Wagon(TranspID: Integer; OwnerId: Integer; Count: Integer; GP: OleVariant); dispid 30;
    procedure Container(ContID: Integer; OwnershipId: Integer; ContCount: Integer;
                        TareWeight: OleVariant); dispid 31;
    procedure ContainerTransport(TranspID: Integer; OwnerId: Integer; Count: Integer); dispid 32;
    procedure RefWagon(OwnerId: Integer; FullCount: Integer; EmptyCount: Integer;
                       SectionSize: Integer); dispid 33;
    procedure Support(SupportId: Integer; CounductorCount: Integer; AxisCount: Integer); dispid 40;
    procedure Rur2Usd(Rate: Double); dispid 50;
    procedure OnDate(OnDate: TDateTime); dispid 51;
  end;

// *********************************************************************//
// Interface: IDocumentAttr5
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {5B801580-5DE3-47DE-B89A-2BE781439522}
// *********************************************************************//
  IDocumentAttr5 = interface(IDocumentAttr4)
    ['{5B801580-5DE3-47DE-B89A-2BE781439522}']
    procedure FreightEx(const ETSNGCode: WideString; const GNG6: WideString;
                        const GNG8: WideString; Weight: Double); safecall;
  end;

// *********************************************************************//
// DispIntf:  IDocumentAttr5Disp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {5B801580-5DE3-47DE-B89A-2BE781439522}
// *********************************************************************//
  IDocumentAttr5Disp = dispinterface
    ['{5B801580-5DE3-47DE-B89A-2BE781439522}']
    procedure FreightEx(const ETSNGCode: WideString; const GNG6: WideString;
                        const GNG8: WideString; Weight: Double); dispid 28;
    procedure DispersionStation(const Code: WideString); dispid 27;
    procedure MxFreight(FreightSet: OleVariant); dispid 21;
    property MXFreightItem[Index: Integer; const ParamName: WideString]: OleVariant readonly dispid 22;
    procedure MXFreightAdd(CodeType: Integer; const FreightCode: WideString; Weight: Double;
                           IsGuard: Integer; out pIndex: OleVariant); dispid 23;
    procedure MXFreightDelete(Index: Integer); dispid 24;
    property MXFreightCount: Integer readonly dispid 25;
    procedure MXFreightClear; dispid 26;
    procedure EmptyWagon(TranspID: Integer; OwnerId: Integer; Count: Integer;
                         const FromCargoCode: WideString; Axis: Integer; TareWeight: Double); dispid 34;
    procedure WagonOwnerLand(OwnerLandID: Integer; IsUsageCharge: WordBool); dispid 35;
    procedure FromStation(const StationCode: WideString; SrcLandId: Integer); dispid 1;
    procedure ToStation(const StationCode: WideString; DstLandId: Integer); dispid 2;
    procedure CustomizeCalc(LandId: Integer; CalcType: OleVariant; Distance: OleVariant;
                            Currency: OleVariant); dispid 3;
    procedure Send(SendCat: Integer; SendId: Integer; ExitRoute: Integer; Speed: Integer); dispid 10;
    procedure Freight(const ETSNGCode: WideString; Weight: Double); dispid 20;
    procedure Wagon(TranspID: Integer; OwnerId: Integer; Count: Integer; GP: OleVariant); dispid 30;
    procedure Container(ContID: Integer; OwnershipId: Integer; ContCount: Integer;
                        TareWeight: OleVariant); dispid 31;
    procedure ContainerTransport(TranspID: Integer; OwnerId: Integer; Count: Integer); dispid 32;
    procedure RefWagon(OwnerId: Integer; FullCount: Integer; EmptyCount: Integer;
                       SectionSize: Integer); dispid 33;
    procedure Support(SupportId: Integer; CounductorCount: Integer; AxisCount: Integer); dispid 40;
    procedure Rur2Usd(Rate: Double); dispid 50;
    procedure OnDate(OnDate: TDateTime); dispid 51;
  end;

// *********************************************************************//
// Interface: IDocumentAttr6
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {2D2F0F89-B441-4655-892F-A462AF996160}
// *********************************************************************//
  IDocumentAttr6 = interface(IDocumentAttr5)
    ['{2D2F0F89-B441-4655-892F-A462AF996160}']
    procedure FlatWagonOwnerFirm(Id: Integer); safecall;
    procedure ContainerOwnerFirm(Id: Integer); safecall;
  end;

// *********************************************************************//
// DispIntf:  IDocumentAttr6Disp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {2D2F0F89-B441-4655-892F-A462AF996160}
// *********************************************************************//
  IDocumentAttr6Disp = dispinterface
    ['{2D2F0F89-B441-4655-892F-A462AF996160}']
    procedure FlatWagonOwnerFirm(Id: Integer); dispid 36;
    procedure ContainerOwnerFirm(Id: Integer); dispid 37;
    procedure FreightEx(const ETSNGCode: WideString; const GNG6: WideString;
                        const GNG8: WideString; Weight: Double); dispid 28;
    procedure DispersionStation(const Code: WideString); dispid 27;
    procedure MxFreight(FreightSet: OleVariant); dispid 21;
    property MXFreightItem[Index: Integer; const ParamName: WideString]: OleVariant readonly dispid 22;
    procedure MXFreightAdd(CodeType: Integer; const FreightCode: WideString; Weight: Double;
                           IsGuard: Integer; out pIndex: OleVariant); dispid 23;
    procedure MXFreightDelete(Index: Integer); dispid 24;
    property MXFreightCount: Integer readonly dispid 25;
    procedure MXFreightClear; dispid 26;
    procedure EmptyWagon(TranspID: Integer; OwnerId: Integer; Count: Integer;
                         const FromCargoCode: WideString; Axis: Integer; TareWeight: Double); dispid 34;
    procedure WagonOwnerLand(OwnerLandID: Integer; IsUsageCharge: WordBool); dispid 35;
    procedure FromStation(const StationCode: WideString; SrcLandId: Integer); dispid 1;
    procedure ToStation(const StationCode: WideString; DstLandId: Integer); dispid 2;
    procedure CustomizeCalc(LandId: Integer; CalcType: OleVariant; Distance: OleVariant;
                            Currency: OleVariant); dispid 3;
    procedure Send(SendCat: Integer; SendId: Integer; ExitRoute: Integer; Speed: Integer); dispid 10;
    procedure Freight(const ETSNGCode: WideString; Weight: Double); dispid 20;
    procedure Wagon(TranspID: Integer; OwnerId: Integer; Count: Integer; GP: OleVariant); dispid 30;
    procedure Container(ContID: Integer; OwnershipId: Integer; ContCount: Integer;
                        TareWeight: OleVariant); dispid 31;
    procedure ContainerTransport(TranspID: Integer; OwnerId: Integer; Count: Integer); dispid 32;
    procedure RefWagon(OwnerId: Integer; FullCount: Integer; EmptyCount: Integer;
                       SectionSize: Integer); dispid 33;
    procedure Support(SupportId: Integer; CounductorCount: Integer; AxisCount: Integer); dispid 40;
    procedure Rur2Usd(Rate: Double); dispid 50;
    procedure OnDate(OnDate: TDateTime); dispid 51;
  end;

// *********************************************************************//
// Interface: IDocumentAttr7
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {4E7F6F40-63CF-491A-8CED-C0806C5AF391}
// *********************************************************************//
  IDocumentAttr7 = interface(IDocumentAttr6)
    ['{4E7F6F40-63CF-491A-8CED-C0806C5AF391}']
    function Get_FullRoute: IDocNode; safecall;
    property FullRoute: IDocNode read Get_FullRoute;
  end;

// *********************************************************************//
// DispIntf:  IDocumentAttr7Disp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {4E7F6F40-63CF-491A-8CED-C0806C5AF391}
// *********************************************************************//
  IDocumentAttr7Disp = dispinterface
    ['{4E7F6F40-63CF-491A-8CED-C0806C5AF391}']
    property FullRoute: IDocNode readonly dispid 38;
    procedure FlatWagonOwnerFirm(Id: Integer); dispid 36;
    procedure ContainerOwnerFirm(Id: Integer); dispid 37;
    procedure FreightEx(const ETSNGCode: WideString; const GNG6: WideString;
                        const GNG8: WideString; Weight: Double); dispid 28;
    procedure DispersionStation(const Code: WideString); dispid 27;
    procedure MxFreight(FreightSet: OleVariant); dispid 21;
    property MXFreightItem[Index: Integer; const ParamName: WideString]: OleVariant readonly dispid 22;
    procedure MXFreightAdd(CodeType: Integer; const FreightCode: WideString; Weight: Double;
                           IsGuard: Integer; out pIndex: OleVariant); dispid 23;
    procedure MXFreightDelete(Index: Integer); dispid 24;
    property MXFreightCount: Integer readonly dispid 25;
    procedure MXFreightClear; dispid 26;
    procedure EmptyWagon(TranspID: Integer; OwnerId: Integer; Count: Integer;
                         const FromCargoCode: WideString; Axis: Integer; TareWeight: Double); dispid 34;
    procedure WagonOwnerLand(OwnerLandID: Integer; IsUsageCharge: WordBool); dispid 35;
    procedure FromStation(const StationCode: WideString; SrcLandId: Integer); dispid 1;
    procedure ToStation(const StationCode: WideString; DstLandId: Integer); dispid 2;
    procedure CustomizeCalc(LandId: Integer; CalcType: OleVariant; Distance: OleVariant;
                            Currency: OleVariant); dispid 3;
    procedure Send(SendCat: Integer; SendId: Integer; ExitRoute: Integer; Speed: Integer); dispid 10;
    procedure Freight(const ETSNGCode: WideString; Weight: Double); dispid 20;
    procedure Wagon(TranspID: Integer; OwnerId: Integer; Count: Integer; GP: OleVariant); dispid 30;
    procedure Container(ContID: Integer; OwnershipId: Integer; ContCount: Integer;
                        TareWeight: OleVariant); dispid 31;
    procedure ContainerTransport(TranspID: Integer; OwnerId: Integer; Count: Integer); dispid 32;
    procedure RefWagon(OwnerId: Integer; FullCount: Integer; EmptyCount: Integer;
                       SectionSize: Integer); dispid 33;
    procedure Support(SupportId: Integer; CounductorCount: Integer; AxisCount: Integer); dispid 40;
    procedure Rur2Usd(Rate: Double); dispid 50;
    procedure OnDate(OnDate: TDateTime); dispid 51;
  end;

// *********************************************************************//
// Interface: IDocumentAttr8
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {FB0F0A60-EE41-4EC9-A683-CF10B3723BB1}
// *********************************************************************//
  IDocumentAttr8 = interface(IDocumentAttr7)
    ['{FB0F0A60-EE41-4EC9-A683-CF10B3723BB1}']
    procedure MXFreightAddEx(const ETSNGCode: WideString; const GNG8: WideString; Weight: Double;
                             IsGuard: Integer; out pIndex: OleVariant); safecall;
    procedure EmptyWagonEx(TranspID: Integer; OwnerId: Integer; Count: Integer;
                           const ETSNGCode: WideString; const GNG8: WideString; Axis: Integer;
                           TareWeight: Double); safecall;
  end;

// *********************************************************************//
// DispIntf:  IDocumentAttr8Disp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {FB0F0A60-EE41-4EC9-A683-CF10B3723BB1}
// *********************************************************************//
  IDocumentAttr8Disp = dispinterface
    ['{FB0F0A60-EE41-4EC9-A683-CF10B3723BB1}']
    procedure MXFreightAddEx(const ETSNGCode: WideString; const GNG8: WideString; Weight: Double;
                             IsGuard: Integer; out pIndex: OleVariant); dispid 39;
    procedure EmptyWagonEx(TranspID: Integer; OwnerId: Integer; Count: Integer;
                           const ETSNGCode: WideString; const GNG8: WideString; Axis: Integer;
                           TareWeight: Double); dispid 41;
    property FullRoute: IDocNode readonly dispid 38;
    procedure FlatWagonOwnerFirm(Id: Integer); dispid 36;
    procedure ContainerOwnerFirm(Id: Integer); dispid 37;
    procedure FreightEx(const ETSNGCode: WideString; const GNG6: WideString;
                        const GNG8: WideString; Weight: Double); dispid 28;
    procedure DispersionStation(const Code: WideString); dispid 27;
    procedure MxFreight(FreightSet: OleVariant); dispid 21;
    property MXFreightItem[Index: Integer; const ParamName: WideString]: OleVariant readonly dispid 22;
    procedure MXFreightAdd(CodeType: Integer; const FreightCode: WideString; Weight: Double;
                           IsGuard: Integer; out pIndex: OleVariant); dispid 23;
    procedure MXFreightDelete(Index: Integer); dispid 24;
    property MXFreightCount: Integer readonly dispid 25;
    procedure MXFreightClear; dispid 26;
    procedure EmptyWagon(TranspID: Integer; OwnerId: Integer; Count: Integer;
                         const FromCargoCode: WideString; Axis: Integer; TareWeight: Double); dispid 34;
    procedure WagonOwnerLand(OwnerLandID: Integer; IsUsageCharge: WordBool); dispid 35;
    procedure FromStation(const StationCode: WideString; SrcLandId: Integer); dispid 1;
    procedure ToStation(const StationCode: WideString; DstLandId: Integer); dispid 2;
    procedure CustomizeCalc(LandId: Integer; CalcType: OleVariant; Distance: OleVariant;
                            Currency: OleVariant); dispid 3;
    procedure Send(SendCat: Integer; SendId: Integer; ExitRoute: Integer; Speed: Integer); dispid 10;
    procedure Freight(const ETSNGCode: WideString; Weight: Double); dispid 20;
    procedure Wagon(TranspID: Integer; OwnerId: Integer; Count: Integer; GP: OleVariant); dispid 30;
    procedure Container(ContID: Integer; OwnershipId: Integer; ContCount: Integer;
                        TareWeight: OleVariant); dispid 31;
    procedure ContainerTransport(TranspID: Integer; OwnerId: Integer; Count: Integer); dispid 32;
    procedure RefWagon(OwnerId: Integer; FullCount: Integer; EmptyCount: Integer;
                       SectionSize: Integer); dispid 33;
    procedure Support(SupportId: Integer; CounductorCount: Integer; AxisCount: Integer); dispid 40;
    procedure Rur2Usd(Rate: Double); dispid 50;
    procedure OnDate(OnDate: TDateTime); dispid 51;
  end;

// *********************************************************************//
// Interface: IDocumentAttr9
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {0A86F504-2E2D-44AA-BB4D-88AF10F039D6}
// *********************************************************************//
  IDocumentAttr9 = interface(IDocumentAttr8)
    ['{0A86F504-2E2D-44AA-BB4D-88AF10F039D6}']
    procedure AddEquip(EquipType: Integer; ForwardEquipWeightType: Integer;
                       BackwardEquipWeightType: Integer); safecall;
    function IsEquipWeight: WordBool; safecall;
    procedure EquipWeight(pVal: Double); safecall;
    procedure Bulkiness(const Index: WideString); safecall;
  end;

// *********************************************************************//
// DispIntf:  IDocumentAttr9Disp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {0A86F504-2E2D-44AA-BB4D-88AF10F039D6}
// *********************************************************************//
  IDocumentAttr9Disp = dispinterface
    ['{0A86F504-2E2D-44AA-BB4D-88AF10F039D6}']
    procedure AddEquip(EquipType: Integer; ForwardEquipWeightType: Integer;
                       BackwardEquipWeightType: Integer); dispid 42;
    function IsEquipWeight: WordBool; dispid 43;
    procedure EquipWeight(pVal: Double); dispid 44;
    procedure Bulkiness(const Index: WideString); dispid 52;
    procedure MXFreightAddEx(const ETSNGCode: WideString; const GNG8: WideString; Weight: Double;
                             IsGuard: Integer; out pIndex: OleVariant); dispid 39;
    procedure EmptyWagonEx(TranspID: Integer; OwnerId: Integer; Count: Integer;
                           const ETSNGCode: WideString; const GNG8: WideString; Axis: Integer;
                           TareWeight: Double); dispid 41;
    property FullRoute: IDocNode readonly dispid 38;
    procedure FlatWagonOwnerFirm(Id: Integer); dispid 36;
    procedure ContainerOwnerFirm(Id: Integer); dispid 37;
    procedure FreightEx(const ETSNGCode: WideString; const GNG6: WideString;
                        const GNG8: WideString; Weight: Double); dispid 28;
    procedure DispersionStation(const Code: WideString); dispid 27;
    procedure MxFreight(FreightSet: OleVariant); dispid 21;
    property MXFreightItem[Index: Integer; const ParamName: WideString]: OleVariant readonly dispid 22;
    procedure MXFreightAdd(CodeType: Integer; const FreightCode: WideString; Weight: Double;
                           IsGuard: Integer; out pIndex: OleVariant); dispid 23;
    procedure MXFreightDelete(Index: Integer); dispid 24;
    property MXFreightCount: Integer readonly dispid 25;
    procedure MXFreightClear; dispid 26;
    procedure EmptyWagon(TranspID: Integer; OwnerId: Integer; Count: Integer;
                         const FromCargoCode: WideString; Axis: Integer; TareWeight: Double); dispid 34;
    procedure WagonOwnerLand(OwnerLandID: Integer; IsUsageCharge: WordBool); dispid 35;
    procedure FromStation(const StationCode: WideString; SrcLandId: Integer); dispid 1;
    procedure ToStation(const StationCode: WideString; DstLandId: Integer); dispid 2;
    procedure CustomizeCalc(LandId: Integer; CalcType: OleVariant; Distance: OleVariant;
                            Currency: OleVariant); dispid 3;
    procedure Send(SendCat: Integer; SendId: Integer; ExitRoute: Integer; Speed: Integer); dispid 10;
    procedure Freight(const ETSNGCode: WideString; Weight: Double); dispid 20;
    procedure Wagon(TranspID: Integer; OwnerId: Integer; Count: Integer; GP: OleVariant); dispid 30;
    procedure Container(ContID: Integer; OwnershipId: Integer; ContCount: Integer;
                        TareWeight: OleVariant); dispid 31;
    procedure ContainerTransport(TranspID: Integer; OwnerId: Integer; Count: Integer); dispid 32;
    procedure RefWagon(OwnerId: Integer; FullCount: Integer; EmptyCount: Integer;
                       SectionSize: Integer); dispid 33;
    procedure Support(SupportId: Integer; CounductorCount: Integer; AxisCount: Integer); dispid 40;
    procedure Rur2Usd(Rate: Double); dispid 50;
    procedure OnDate(OnDate: TDateTime); dispid 51;
  end;

// *********************************************************************//
// Interface: IDocumentAttr10
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {DE309AD4-360C-4A3C-9C2F-89D136DBC04C}
// *********************************************************************//
  IDocumentAttr10 = interface(IDocumentAttr9)
    ['{DE309AD4-360C-4A3C-9C2F-89D136DBC04C}']
    function Get_ForwardThruRoute: IThruRoutes; safecall;
    function Get_BackwardThruRoute: IThruRoutes; safecall;
    procedure CopyThruRouteFwdToBwd; safecall;
    procedure CopyThruRouteBwdToFwd; safecall;
    property ForwardThruRoute: IThruRoutes read Get_ForwardThruRoute;
    property BackwardThruRoute: IThruRoutes read Get_BackwardThruRoute;
  end;

// *********************************************************************//
// DispIntf:  IDocumentAttr10Disp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {DE309AD4-360C-4A3C-9C2F-89D136DBC04C}
// *********************************************************************//
  IDocumentAttr10Disp = dispinterface
    ['{DE309AD4-360C-4A3C-9C2F-89D136DBC04C}']
    property ForwardThruRoute: IThruRoutes readonly dispid 53;
    property BackwardThruRoute: IThruRoutes readonly dispid 54;
    procedure CopyThruRouteFwdToBwd; dispid 55;
    procedure CopyThruRouteBwdToFwd; dispid 56;
    procedure AddEquip(EquipType: Integer; ForwardEquipWeightType: Integer;
                       BackwardEquipWeightType: Integer); dispid 42;
    function IsEquipWeight: WordBool; dispid 43;
    procedure EquipWeight(pVal: Double); dispid 44;
    procedure Bulkiness(const Index: WideString); dispid 52;
    procedure MXFreightAddEx(const ETSNGCode: WideString; const GNG8: WideString; Weight: Double;
                             IsGuard: Integer; out pIndex: OleVariant); dispid 39;
    procedure EmptyWagonEx(TranspID: Integer; OwnerId: Integer; Count: Integer;
                           const ETSNGCode: WideString; const GNG8: WideString; Axis: Integer;
                           TareWeight: Double); dispid 41;
    property FullRoute: IDocNode readonly dispid 38;
    procedure FlatWagonOwnerFirm(Id: Integer); dispid 36;
    procedure ContainerOwnerFirm(Id: Integer); dispid 37;
    procedure FreightEx(const ETSNGCode: WideString; const GNG6: WideString;
                        const GNG8: WideString; Weight: Double); dispid 28;
    procedure DispersionStation(const Code: WideString); dispid 27;
    procedure MxFreight(FreightSet: OleVariant); dispid 21;
    property MXFreightItem[Index: Integer; const ParamName: WideString]: OleVariant readonly dispid 22;
    procedure MXFreightAdd(CodeType: Integer; const FreightCode: WideString; Weight: Double;
                           IsGuard: Integer; out pIndex: OleVariant); dispid 23;
    procedure MXFreightDelete(Index: Integer); dispid 24;
    property MXFreightCount: Integer readonly dispid 25;
    procedure MXFreightClear; dispid 26;
    procedure EmptyWagon(TranspID: Integer; OwnerId: Integer; Count: Integer;
                         const FromCargoCode: WideString; Axis: Integer; TareWeight: Double); dispid 34;
    procedure WagonOwnerLand(OwnerLandID: Integer; IsUsageCharge: WordBool); dispid 35;
    procedure FromStation(const StationCode: WideString; SrcLandId: Integer); dispid 1;
    procedure ToStation(const StationCode: WideString; DstLandId: Integer); dispid 2;
    procedure CustomizeCalc(LandId: Integer; CalcType: OleVariant; Distance: OleVariant;
                            Currency: OleVariant); dispid 3;
    procedure Send(SendCat: Integer; SendId: Integer; ExitRoute: Integer; Speed: Integer); dispid 10;
    procedure Freight(const ETSNGCode: WideString; Weight: Double); dispid 20;
    procedure Wagon(TranspID: Integer; OwnerId: Integer; Count: Integer; GP: OleVariant); dispid 30;
    procedure Container(ContID: Integer; OwnershipId: Integer; ContCount: Integer;
                        TareWeight: OleVariant); dispid 31;
    procedure ContainerTransport(TranspID: Integer; OwnerId: Integer; Count: Integer); dispid 32;
    procedure RefWagon(OwnerId: Integer; FullCount: Integer; EmptyCount: Integer;
                       SectionSize: Integer); dispid 33;
    procedure Support(SupportId: Integer; CounductorCount: Integer; AxisCount: Integer); dispid 40;
    procedure Rur2Usd(Rate: Double); dispid 50;
    procedure OnDate(OnDate: TDateTime); dispid 51;
  end;

// *********************************************************************//
// Interface: IDocumentAttr11
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {35F55BA6-7817-4423-8C17-D6AFCA8B2673}
// *********************************************************************//
  IDocumentAttr11 = interface(IDocumentAttr10)
    ['{35F55BA6-7817-4423-8C17-D6AFCA8B2673}']
    procedure BufferWagon(TranspID: Integer; OwnerId: Integer; Count: Integer; Axis: OleVariant); safecall;
    procedure BufferWagonOwnerFirm(Id: Integer); safecall;
    procedure BufferWagonUsageMode(Id: Integer; ControlFrameWeight: OleVariant); safecall;
  end;

// *********************************************************************//
// DispIntf:  IDocumentAttr11Disp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {35F55BA6-7817-4423-8C17-D6AFCA8B2673}
// *********************************************************************//
  IDocumentAttr11Disp = dispinterface
    ['{35F55BA6-7817-4423-8C17-D6AFCA8B2673}']
    procedure BufferWagon(TranspID: Integer; OwnerId: Integer; Count: Integer; Axis: OleVariant); dispid 1101;
    procedure BufferWagonOwnerFirm(Id: Integer); dispid 1102;
    procedure BufferWagonUsageMode(Id: Integer; ControlFrameWeight: OleVariant); dispid 1103;
    property ForwardThruRoute: IThruRoutes readonly dispid 53;
    property BackwardThruRoute: IThruRoutes readonly dispid 54;
    procedure CopyThruRouteFwdToBwd; dispid 55;
    procedure CopyThruRouteBwdToFwd; dispid 56;
    procedure AddEquip(EquipType: Integer; ForwardEquipWeightType: Integer;
                       BackwardEquipWeightType: Integer); dispid 42;
    function IsEquipWeight: WordBool; dispid 43;
    procedure EquipWeight(pVal: Double); dispid 44;
    procedure Bulkiness(const Index: WideString); dispid 52;
    procedure MXFreightAddEx(const ETSNGCode: WideString; const GNG8: WideString; Weight: Double;
                             IsGuard: Integer; out pIndex: OleVariant); dispid 39;
    procedure EmptyWagonEx(TranspID: Integer; OwnerId: Integer; Count: Integer;
                           const ETSNGCode: WideString; const GNG8: WideString; Axis: Integer;
                           TareWeight: Double); dispid 41;
    property FullRoute: IDocNode readonly dispid 38;
    procedure FlatWagonOwnerFirm(Id: Integer); dispid 36;
    procedure ContainerOwnerFirm(Id: Integer); dispid 37;
    procedure FreightEx(const ETSNGCode: WideString; const GNG6: WideString;
                        const GNG8: WideString; Weight: Double); dispid 28;
    procedure DispersionStation(const Code: WideString); dispid 27;
    procedure MxFreight(FreightSet: OleVariant); dispid 21;
    property MXFreightItem[Index: Integer; const ParamName: WideString]: OleVariant readonly dispid 22;
    procedure MXFreightAdd(CodeType: Integer; const FreightCode: WideString; Weight: Double;
                           IsGuard: Integer; out pIndex: OleVariant); dispid 23;
    procedure MXFreightDelete(Index: Integer); dispid 24;
    property MXFreightCount: Integer readonly dispid 25;
    procedure MXFreightClear; dispid 26;
    procedure EmptyWagon(TranspID: Integer; OwnerId: Integer; Count: Integer;
                         const FromCargoCode: WideString; Axis: Integer; TareWeight: Double); dispid 34;
    procedure WagonOwnerLand(OwnerLandID: Integer; IsUsageCharge: WordBool); dispid 35;
    procedure FromStation(const StationCode: WideString; SrcLandId: Integer); dispid 1;
    procedure ToStation(const StationCode: WideString; DstLandId: Integer); dispid 2;
    procedure CustomizeCalc(LandId: Integer; CalcType: OleVariant; Distance: OleVariant;
                            Currency: OleVariant); dispid 3;
    procedure Send(SendCat: Integer; SendId: Integer; ExitRoute: Integer; Speed: Integer); dispid 10;
    procedure Freight(const ETSNGCode: WideString; Weight: Double); dispid 20;
    procedure Wagon(TranspID: Integer; OwnerId: Integer; Count: Integer; GP: OleVariant); dispid 30;
    procedure Container(ContID: Integer; OwnershipId: Integer; ContCount: Integer;
                        TareWeight: OleVariant); dispid 31;
    procedure ContainerTransport(TranspID: Integer; OwnerId: Integer; Count: Integer); dispid 32;
    procedure RefWagon(OwnerId: Integer; FullCount: Integer; EmptyCount: Integer;
                       SectionSize: Integer); dispid 33;
    procedure Support(SupportId: Integer; CounductorCount: Integer; AxisCount: Integer); dispid 40;
    procedure Rur2Usd(Rate: Double); dispid 50;
    procedure OnDate(OnDate: TDateTime); dispid 51;
  end;

// *********************************************************************//
// Interface: IDocumentAttr12
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {F09F89E2-0590-4DDF-A5F3-4D7C8F729872}
// *********************************************************************//
  IDocumentAttr12 = interface(IDocumentAttr11)
    ['{F09F89E2-0590-4DDF-A5F3-4D7C8F729872}']
    procedure ContainerTransportKRK(TranspID: Integer; OwnerId: Integer; Count: Integer;
                                    OwnerId_DGV: Integer; NoCalcDGV: OleVariant); safecall;
    function Get_GuardedGroupVCCount: Integer; safecall;
    procedure Set_GuardedGroupVCCount(pVal: Integer); safecall;
    function Get_VagonSectionCount: Integer; safecall;
    procedure Set_VagonSectionCount(pVal: Integer); safecall;
    function Get_BackRoutePresent: WordBool; safecall;
    procedure Set_BackRoutePresent(pVal: WordBool); safecall;
    property GuardedGroupVCCount: Integer read Get_GuardedGroupVCCount write Set_GuardedGroupVCCount;
    property VagonSectionCount: Integer read Get_VagonSectionCount write Set_VagonSectionCount;
    property BackRoutePresent: WordBool read Get_BackRoutePresent write Set_BackRoutePresent;
  end;

// *********************************************************************//
// DispIntf:  IDocumentAttr12Disp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {F09F89E2-0590-4DDF-A5F3-4D7C8F729872}
// *********************************************************************//
  IDocumentAttr12Disp = dispinterface
    ['{F09F89E2-0590-4DDF-A5F3-4D7C8F729872}']
    procedure ContainerTransportKRK(TranspID: Integer; OwnerId: Integer; Count: Integer;
                                    OwnerId_DGV: Integer; NoCalcDGV: OleVariant); dispid 1201;
    property GuardedGroupVCCount: Integer dispid 1202;
    property VagonSectionCount: Integer dispid 1203;
    property BackRoutePresent: WordBool dispid 1204;
    procedure BufferWagon(TranspID: Integer; OwnerId: Integer; Count: Integer; Axis: OleVariant); dispid 1101;
    procedure BufferWagonOwnerFirm(Id: Integer); dispid 1102;
    procedure BufferWagonUsageMode(Id: Integer; ControlFrameWeight: OleVariant); dispid 1103;
    property ForwardThruRoute: IThruRoutes readonly dispid 53;
    property BackwardThruRoute: IThruRoutes readonly dispid 54;
    procedure CopyThruRouteFwdToBwd; dispid 55;
    procedure CopyThruRouteBwdToFwd; dispid 56;
    procedure AddEquip(EquipType: Integer; ForwardEquipWeightType: Integer;
                       BackwardEquipWeightType: Integer); dispid 42;
    function IsEquipWeight: WordBool; dispid 43;
    procedure EquipWeight(pVal: Double); dispid 44;
    procedure Bulkiness(const Index: WideString); dispid 52;
    procedure MXFreightAddEx(const ETSNGCode: WideString; const GNG8: WideString; Weight: Double;
                             IsGuard: Integer; out pIndex: OleVariant); dispid 39;
    procedure EmptyWagonEx(TranspID: Integer; OwnerId: Integer; Count: Integer;
                           const ETSNGCode: WideString; const GNG8: WideString; Axis: Integer;
                           TareWeight: Double); dispid 41;
    property FullRoute: IDocNode readonly dispid 38;
    procedure FlatWagonOwnerFirm(Id: Integer); dispid 36;
    procedure ContainerOwnerFirm(Id: Integer); dispid 37;
    procedure FreightEx(const ETSNGCode: WideString; const GNG6: WideString;
                        const GNG8: WideString; Weight: Double); dispid 28;
    procedure DispersionStation(const Code: WideString); dispid 27;
    procedure MxFreight(FreightSet: OleVariant); dispid 21;
    property MXFreightItem[Index: Integer; const ParamName: WideString]: OleVariant readonly dispid 22;
    procedure MXFreightAdd(CodeType: Integer; const FreightCode: WideString; Weight: Double;
                           IsGuard: Integer; out pIndex: OleVariant); dispid 23;
    procedure MXFreightDelete(Index: Integer); dispid 24;
    property MXFreightCount: Integer readonly dispid 25;
    procedure MXFreightClear; dispid 26;
    procedure EmptyWagon(TranspID: Integer; OwnerId: Integer; Count: Integer;
                         const FromCargoCode: WideString; Axis: Integer; TareWeight: Double); dispid 34;
    procedure WagonOwnerLand(OwnerLandID: Integer; IsUsageCharge: WordBool); dispid 35;
    procedure FromStation(const StationCode: WideString; SrcLandId: Integer); dispid 1;
    procedure ToStation(const StationCode: WideString; DstLandId: Integer); dispid 2;
    procedure CustomizeCalc(LandId: Integer; CalcType: OleVariant; Distance: OleVariant;
                            Currency: OleVariant); dispid 3;
    procedure Send(SendCat: Integer; SendId: Integer; ExitRoute: Integer; Speed: Integer); dispid 10;
    procedure Freight(const ETSNGCode: WideString; Weight: Double); dispid 20;
    procedure Wagon(TranspID: Integer; OwnerId: Integer; Count: Integer; GP: OleVariant); dispid 30;
    procedure Container(ContID: Integer; OwnershipId: Integer; ContCount: Integer;
                        TareWeight: OleVariant); dispid 31;
    procedure ContainerTransport(TranspID: Integer; OwnerId: Integer; Count: Integer); dispid 32;
    procedure RefWagon(OwnerId: Integer; FullCount: Integer; EmptyCount: Integer;
                       SectionSize: Integer); dispid 33;
    procedure Support(SupportId: Integer; CounductorCount: Integer; AxisCount: Integer); dispid 40;
    procedure Rur2Usd(Rate: Double); dispid 50;
    procedure OnDate(OnDate: TDateTime); dispid 51;
  end;

// *********************************************************************//
// Interface: IDocumentAttr13
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {F6041C16-8E02-4C7E-84C1-4D1991BCD531}
// *********************************************************************//
  IDocumentAttr13 = interface(IDocumentAttr12)
    ['{F6041C16-8E02-4C7E-84C1-4D1991BCD531}']
    function Get_PlanFormType: Smallint; safecall;
    procedure Set_PlanFormType(pVal: Smallint); safecall;
    property PlanFormType: Smallint read Get_PlanFormType write Set_PlanFormType;
  end;

// *********************************************************************//
// DispIntf:  IDocumentAttr13Disp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {F6041C16-8E02-4C7E-84C1-4D1991BCD531}
// *********************************************************************//
  IDocumentAttr13Disp = dispinterface
    ['{F6041C16-8E02-4C7E-84C1-4D1991BCD531}']
    property PlanFormType: Smallint dispid 1301;
    procedure ContainerTransportKRK(TranspID: Integer; OwnerId: Integer; Count: Integer;
                                    OwnerId_DGV: Integer; NoCalcDGV: OleVariant); dispid 1201;
    property GuardedGroupVCCount: Integer dispid 1202;
    property VagonSectionCount: Integer dispid 1203;
    property BackRoutePresent: WordBool dispid 1204;
    procedure BufferWagon(TranspID: Integer; OwnerId: Integer; Count: Integer; Axis: OleVariant); dispid 1101;
    procedure BufferWagonOwnerFirm(Id: Integer); dispid 1102;
    procedure BufferWagonUsageMode(Id: Integer; ControlFrameWeight: OleVariant); dispid 1103;
    property ForwardThruRoute: IThruRoutes readonly dispid 53;
    property BackwardThruRoute: IThruRoutes readonly dispid 54;
    procedure CopyThruRouteFwdToBwd; dispid 55;
    procedure CopyThruRouteBwdToFwd; dispid 56;
    procedure AddEquip(EquipType: Integer; ForwardEquipWeightType: Integer;
                       BackwardEquipWeightType: Integer); dispid 42;
    function IsEquipWeight: WordBool; dispid 43;
    procedure EquipWeight(pVal: Double); dispid 44;
    procedure Bulkiness(const Index: WideString); dispid 52;
    procedure MXFreightAddEx(const ETSNGCode: WideString; const GNG8: WideString; Weight: Double;
                             IsGuard: Integer; out pIndex: OleVariant); dispid 39;
    procedure EmptyWagonEx(TranspID: Integer; OwnerId: Integer; Count: Integer;
                           const ETSNGCode: WideString; const GNG8: WideString; Axis: Integer;
                           TareWeight: Double); dispid 41;
    property FullRoute: IDocNode readonly dispid 38;
    procedure FlatWagonOwnerFirm(Id: Integer); dispid 36;
    procedure ContainerOwnerFirm(Id: Integer); dispid 37;
    procedure FreightEx(const ETSNGCode: WideString; const GNG6: WideString;
                        const GNG8: WideString; Weight: Double); dispid 28;
    procedure DispersionStation(const Code: WideString); dispid 27;
    procedure MxFreight(FreightSet: OleVariant); dispid 21;
    property MXFreightItem[Index: Integer; const ParamName: WideString]: OleVariant readonly dispid 22;
    procedure MXFreightAdd(CodeType: Integer; const FreightCode: WideString; Weight: Double;
                           IsGuard: Integer; out pIndex: OleVariant); dispid 23;
    procedure MXFreightDelete(Index: Integer); dispid 24;
    property MXFreightCount: Integer readonly dispid 25;
    procedure MXFreightClear; dispid 26;
    procedure EmptyWagon(TranspID: Integer; OwnerId: Integer; Count: Integer;
                         const FromCargoCode: WideString; Axis: Integer; TareWeight: Double); dispid 34;
    procedure WagonOwnerLand(OwnerLandID: Integer; IsUsageCharge: WordBool); dispid 35;
    procedure FromStation(const StationCode: WideString; SrcLandId: Integer); dispid 1;
    procedure ToStation(const StationCode: WideString; DstLandId: Integer); dispid 2;
    procedure CustomizeCalc(LandId: Integer; CalcType: OleVariant; Distance: OleVariant;
                            Currency: OleVariant); dispid 3;
    procedure Send(SendCat: Integer; SendId: Integer; ExitRoute: Integer; Speed: Integer); dispid 10;
    procedure Freight(const ETSNGCode: WideString; Weight: Double); dispid 20;
    procedure Wagon(TranspID: Integer; OwnerId: Integer; Count: Integer; GP: OleVariant); dispid 30;
    procedure Container(ContID: Integer; OwnershipId: Integer; ContCount: Integer;
                        TareWeight: OleVariant); dispid 31;
    procedure ContainerTransport(TranspID: Integer; OwnerId: Integer; Count: Integer); dispid 32;
    procedure RefWagon(OwnerId: Integer; FullCount: Integer; EmptyCount: Integer;
                       SectionSize: Integer); dispid 33;
    procedure Support(SupportId: Integer; CounductorCount: Integer; AxisCount: Integer); dispid 40;
    procedure Rur2Usd(Rate: Double); dispid 50;
    procedure OnDate(OnDate: TDateTime); dispid 51;
  end;

// *********************************************************************//
// Interface: IDocumentAttr14
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {70A46BD1-1F0C-49F0-B329-36BFF3DB67E5}
// *********************************************************************//
  IDocumentAttr14 = interface(IDocumentAttr13)
    ['{70A46BD1-1F0C-49F0-B329-36BFF3DB67E5}']
    function Get_GuardedGroupBaseVCCount: Integer; safecall;
    procedure Set_GuardedGroupBaseVCCount(pVal: Integer); safecall;
    function Get_GuardedGroupDopVCCount: Integer; safecall;
    procedure Set_GuardedGroupDopVCCount(pVal: Integer); safecall;
    property GuardedGroupBaseVCCount: Integer read Get_GuardedGroupBaseVCCount write Set_GuardedGroupBaseVCCount;
    property GuardedGroupDopVCCount: Integer read Get_GuardedGroupDopVCCount write Set_GuardedGroupDopVCCount;
  end;

// *********************************************************************//
// DispIntf:  IDocumentAttr14Disp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {70A46BD1-1F0C-49F0-B329-36BFF3DB67E5}
// *********************************************************************//
  IDocumentAttr14Disp = dispinterface
    ['{70A46BD1-1F0C-49F0-B329-36BFF3DB67E5}']
    property GuardedGroupBaseVCCount: Integer dispid 1401;
    property GuardedGroupDopVCCount: Integer dispid 1402;
    property PlanFormType: Smallint dispid 1301;
    procedure ContainerTransportKRK(TranspID: Integer; OwnerId: Integer; Count: Integer;
                                    OwnerId_DGV: Integer; NoCalcDGV: OleVariant); dispid 1201;
    property GuardedGroupVCCount: Integer dispid 1202;
    property VagonSectionCount: Integer dispid 1203;
    property BackRoutePresent: WordBool dispid 1204;
    procedure BufferWagon(TranspID: Integer; OwnerId: Integer; Count: Integer; Axis: OleVariant); dispid 1101;
    procedure BufferWagonOwnerFirm(Id: Integer); dispid 1102;
    procedure BufferWagonUsageMode(Id: Integer; ControlFrameWeight: OleVariant); dispid 1103;
    property ForwardThruRoute: IThruRoutes readonly dispid 53;
    property BackwardThruRoute: IThruRoutes readonly dispid 54;
    procedure CopyThruRouteFwdToBwd; dispid 55;
    procedure CopyThruRouteBwdToFwd; dispid 56;
    procedure AddEquip(EquipType: Integer; ForwardEquipWeightType: Integer;
                       BackwardEquipWeightType: Integer); dispid 42;
    function IsEquipWeight: WordBool; dispid 43;
    procedure EquipWeight(pVal: Double); dispid 44;
    procedure Bulkiness(const Index: WideString); dispid 52;
    procedure MXFreightAddEx(const ETSNGCode: WideString; const GNG8: WideString; Weight: Double;
                             IsGuard: Integer; out pIndex: OleVariant); dispid 39;
    procedure EmptyWagonEx(TranspID: Integer; OwnerId: Integer; Count: Integer;
                           const ETSNGCode: WideString; const GNG8: WideString; Axis: Integer;
                           TareWeight: Double); dispid 41;
    property FullRoute: IDocNode readonly dispid 38;
    procedure FlatWagonOwnerFirm(Id: Integer); dispid 36;
    procedure ContainerOwnerFirm(Id: Integer); dispid 37;
    procedure FreightEx(const ETSNGCode: WideString; const GNG6: WideString;
                        const GNG8: WideString; Weight: Double); dispid 28;
    procedure DispersionStation(const Code: WideString); dispid 27;
    procedure MxFreight(FreightSet: OleVariant); dispid 21;
    property MXFreightItem[Index: Integer; const ParamName: WideString]: OleVariant readonly dispid 22;
    procedure MXFreightAdd(CodeType: Integer; const FreightCode: WideString; Weight: Double;
                           IsGuard: Integer; out pIndex: OleVariant); dispid 23;
    procedure MXFreightDelete(Index: Integer); dispid 24;
    property MXFreightCount: Integer readonly dispid 25;
    procedure MXFreightClear; dispid 26;
    procedure EmptyWagon(TranspID: Integer; OwnerId: Integer; Count: Integer;
                         const FromCargoCode: WideString; Axis: Integer; TareWeight: Double); dispid 34;
    procedure WagonOwnerLand(OwnerLandID: Integer; IsUsageCharge: WordBool); dispid 35;
    procedure FromStation(const StationCode: WideString; SrcLandId: Integer); dispid 1;
    procedure ToStation(const StationCode: WideString; DstLandId: Integer); dispid 2;
    procedure CustomizeCalc(LandId: Integer; CalcType: OleVariant; Distance: OleVariant;
                            Currency: OleVariant); dispid 3;
    procedure Send(SendCat: Integer; SendId: Integer; ExitRoute: Integer; Speed: Integer); dispid 10;
    procedure Freight(const ETSNGCode: WideString; Weight: Double); dispid 20;
    procedure Wagon(TranspID: Integer; OwnerId: Integer; Count: Integer; GP: OleVariant); dispid 30;
    procedure Container(ContID: Integer; OwnershipId: Integer; ContCount: Integer;
                        TareWeight: OleVariant); dispid 31;
    procedure ContainerTransport(TranspID: Integer; OwnerId: Integer; Count: Integer); dispid 32;
    procedure RefWagon(OwnerId: Integer; FullCount: Integer; EmptyCount: Integer;
                       SectionSize: Integer); dispid 33;
    procedure Support(SupportId: Integer; CounductorCount: Integer; AxisCount: Integer); dispid 40;
    procedure Rur2Usd(Rate: Double); dispid 50;
    procedure OnDate(OnDate: TDateTime); dispid 51;
  end;

// *********************************************************************//
// Interface: IDocumentAttr15
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {FE42550C-1580-46D6-8B5E-BE46AC4C818F}
// *********************************************************************//
  IDocumentAttr15 = interface(IDocumentAttr14)
    ['{FE42550C-1580-46D6-8B5E-BE46AC4C818F}']
    procedure SetDangPid(DangPid: Integer); safecall;
  end;

// *********************************************************************//
// DispIntf:  IDocumentAttr15Disp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {FE42550C-1580-46D6-8B5E-BE46AC4C818F}
// *********************************************************************//
  IDocumentAttr15Disp = dispinterface
    ['{FE42550C-1580-46D6-8B5E-BE46AC4C818F}']
    procedure SetDangPid(DangPid: Integer); dispid 1501;
    property GuardedGroupBaseVCCount: Integer dispid 1401;
    property GuardedGroupDopVCCount: Integer dispid 1402;
    property PlanFormType: Smallint dispid 1301;
    procedure ContainerTransportKRK(TranspID: Integer; OwnerId: Integer; Count: Integer;
                                    OwnerId_DGV: Integer; NoCalcDGV: OleVariant); dispid 1201;
    property GuardedGroupVCCount: Integer dispid 1202;
    property VagonSectionCount: Integer dispid 1203;
    property BackRoutePresent: WordBool dispid 1204;
    procedure BufferWagon(TranspID: Integer; OwnerId: Integer; Count: Integer; Axis: OleVariant); dispid 1101;
    procedure BufferWagonOwnerFirm(Id: Integer); dispid 1102;
    procedure BufferWagonUsageMode(Id: Integer; ControlFrameWeight: OleVariant); dispid 1103;
    property ForwardThruRoute: IThruRoutes readonly dispid 53;
    property BackwardThruRoute: IThruRoutes readonly dispid 54;
    procedure CopyThruRouteFwdToBwd; dispid 55;
    procedure CopyThruRouteBwdToFwd; dispid 56;
    procedure AddEquip(EquipType: Integer; ForwardEquipWeightType: Integer;
                       BackwardEquipWeightType: Integer); dispid 42;
    function IsEquipWeight: WordBool; dispid 43;
    procedure EquipWeight(pVal: Double); dispid 44;
    procedure Bulkiness(const Index: WideString); dispid 52;
    procedure MXFreightAddEx(const ETSNGCode: WideString; const GNG8: WideString; Weight: Double;
                             IsGuard: Integer; out pIndex: OleVariant); dispid 39;
    procedure EmptyWagonEx(TranspID: Integer; OwnerId: Integer; Count: Integer;
                           const ETSNGCode: WideString; const GNG8: WideString; Axis: Integer;
                           TareWeight: Double); dispid 41;
    property FullRoute: IDocNode readonly dispid 38;
    procedure FlatWagonOwnerFirm(Id: Integer); dispid 36;
    procedure ContainerOwnerFirm(Id: Integer); dispid 37;
    procedure FreightEx(const ETSNGCode: WideString; const GNG6: WideString;
                        const GNG8: WideString; Weight: Double); dispid 28;
    procedure DispersionStation(const Code: WideString); dispid 27;
    procedure MxFreight(FreightSet: OleVariant); dispid 21;
    property MXFreightItem[Index: Integer; const ParamName: WideString]: OleVariant readonly dispid 22;
    procedure MXFreightAdd(CodeType: Integer; const FreightCode: WideString; Weight: Double;
                           IsGuard: Integer; out pIndex: OleVariant); dispid 23;
    procedure MXFreightDelete(Index: Integer); dispid 24;
    property MXFreightCount: Integer readonly dispid 25;
    procedure MXFreightClear; dispid 26;
    procedure EmptyWagon(TranspID: Integer; OwnerId: Integer; Count: Integer;
                         const FromCargoCode: WideString; Axis: Integer; TareWeight: Double); dispid 34;
    procedure WagonOwnerLand(OwnerLandID: Integer; IsUsageCharge: WordBool); dispid 35;
    procedure FromStation(const StationCode: WideString; SrcLandId: Integer); dispid 1;
    procedure ToStation(const StationCode: WideString; DstLandId: Integer); dispid 2;
    procedure CustomizeCalc(LandId: Integer; CalcType: OleVariant; Distance: OleVariant;
                            Currency: OleVariant); dispid 3;
    procedure Send(SendCat: Integer; SendId: Integer; ExitRoute: Integer; Speed: Integer); dispid 10;
    procedure Freight(const ETSNGCode: WideString; Weight: Double); dispid 20;
    procedure Wagon(TranspID: Integer; OwnerId: Integer; Count: Integer; GP: OleVariant); dispid 30;
    procedure Container(ContID: Integer; OwnershipId: Integer; ContCount: Integer;
                        TareWeight: OleVariant); dispid 31;
    procedure ContainerTransport(TranspID: Integer; OwnerId: Integer; Count: Integer); dispid 32;
    procedure RefWagon(OwnerId: Integer; FullCount: Integer; EmptyCount: Integer;
                       SectionSize: Integer); dispid 33;
    procedure Support(SupportId: Integer; CounductorCount: Integer; AxisCount: Integer); dispid 40;
    procedure Rur2Usd(Rate: Double); dispid 50;
    procedure OnDate(OnDate: TDateTime); dispid 51;
  end;

// *********************************************************************//
// Interface: IDocumentAttr16
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {F91C281D-A969-4FF3-A2B7-1CFB51CEC769}
// *********************************************************************//
  IDocumentAttr16 = interface(IDocumentAttr15)
    ['{F91C281D-A969-4FF3-A2B7-1CFB51CEC769}']
    procedure SetLandCurrency(LandId: Integer; CurrencyId: Integer; DirectionId: Integer); safecall;
    procedure SetCommonCurrency(CurrencyId: Integer); safecall;
  end;

// *********************************************************************//
// DispIntf:  IDocumentAttr16Disp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {F91C281D-A969-4FF3-A2B7-1CFB51CEC769}
// *********************************************************************//
  IDocumentAttr16Disp = dispinterface
    ['{F91C281D-A969-4FF3-A2B7-1CFB51CEC769}']
    procedure SetLandCurrency(LandId: Integer; CurrencyId: Integer; DirectionId: Integer); dispid 1601;
    procedure SetCommonCurrency(CurrencyId: Integer); dispid 1602;
    procedure SetDangPid(DangPid: Integer); dispid 1501;
    property GuardedGroupBaseVCCount: Integer dispid 1401;
    property GuardedGroupDopVCCount: Integer dispid 1402;
    property PlanFormType: Smallint dispid 1301;
    procedure ContainerTransportKRK(TranspID: Integer; OwnerId: Integer; Count: Integer;
                                    OwnerId_DGV: Integer; NoCalcDGV: OleVariant); dispid 1201;
    property GuardedGroupVCCount: Integer dispid 1202;
    property VagonSectionCount: Integer dispid 1203;
    property BackRoutePresent: WordBool dispid 1204;
    procedure BufferWagon(TranspID: Integer; OwnerId: Integer; Count: Integer; Axis: OleVariant); dispid 1101;
    procedure BufferWagonOwnerFirm(Id: Integer); dispid 1102;
    procedure BufferWagonUsageMode(Id: Integer; ControlFrameWeight: OleVariant); dispid 1103;
    property ForwardThruRoute: IThruRoutes readonly dispid 53;
    property BackwardThruRoute: IThruRoutes readonly dispid 54;
    procedure CopyThruRouteFwdToBwd; dispid 55;
    procedure CopyThruRouteBwdToFwd; dispid 56;
    procedure AddEquip(EquipType: Integer; ForwardEquipWeightType: Integer;
                       BackwardEquipWeightType: Integer); dispid 42;
    function IsEquipWeight: WordBool; dispid 43;
    procedure EquipWeight(pVal: Double); dispid 44;
    procedure Bulkiness(const Index: WideString); dispid 52;
    procedure MXFreightAddEx(const ETSNGCode: WideString; const GNG8: WideString; Weight: Double;
                             IsGuard: Integer; out pIndex: OleVariant); dispid 39;
    procedure EmptyWagonEx(TranspID: Integer; OwnerId: Integer; Count: Integer;
                           const ETSNGCode: WideString; const GNG8: WideString; Axis: Integer;
                           TareWeight: Double); dispid 41;
    property FullRoute: IDocNode readonly dispid 38;
    procedure FlatWagonOwnerFirm(Id: Integer); dispid 36;
    procedure ContainerOwnerFirm(Id: Integer); dispid 37;
    procedure FreightEx(const ETSNGCode: WideString; const GNG6: WideString;
                        const GNG8: WideString; Weight: Double); dispid 28;
    procedure DispersionStation(const Code: WideString); dispid 27;
    procedure MxFreight(FreightSet: OleVariant); dispid 21;
    property MXFreightItem[Index: Integer; const ParamName: WideString]: OleVariant readonly dispid 22;
    procedure MXFreightAdd(CodeType: Integer; const FreightCode: WideString; Weight: Double;
                           IsGuard: Integer; out pIndex: OleVariant); dispid 23;
    procedure MXFreightDelete(Index: Integer); dispid 24;
    property MXFreightCount: Integer readonly dispid 25;
    procedure MXFreightClear; dispid 26;
    procedure EmptyWagon(TranspID: Integer; OwnerId: Integer; Count: Integer;
                         const FromCargoCode: WideString; Axis: Integer; TareWeight: Double); dispid 34;
    procedure WagonOwnerLand(OwnerLandID: Integer; IsUsageCharge: WordBool); dispid 35;
    procedure FromStation(const StationCode: WideString; SrcLandId: Integer); dispid 1;
    procedure ToStation(const StationCode: WideString; DstLandId: Integer); dispid 2;
    procedure CustomizeCalc(LandId: Integer; CalcType: OleVariant; Distance: OleVariant;
                            Currency: OleVariant); dispid 3;
    procedure Send(SendCat: Integer; SendId: Integer; ExitRoute: Integer; Speed: Integer); dispid 10;
    procedure Freight(const ETSNGCode: WideString; Weight: Double); dispid 20;
    procedure Wagon(TranspID: Integer; OwnerId: Integer; Count: Integer; GP: OleVariant); dispid 30;
    procedure Container(ContID: Integer; OwnershipId: Integer; ContCount: Integer;
                        TareWeight: OleVariant); dispid 31;
    procedure ContainerTransport(TranspID: Integer; OwnerId: Integer; Count: Integer); dispid 32;
    procedure RefWagon(OwnerId: Integer; FullCount: Integer; EmptyCount: Integer;
                       SectionSize: Integer); dispid 33;
    procedure Support(SupportId: Integer; CounductorCount: Integer; AxisCount: Integer); dispid 40;
    procedure Rur2Usd(Rate: Double); dispid 50;
    procedure OnDate(OnDate: TDateTime); dispid 51;
  end;

// *********************************************************************//
// Interface: IDocumentAttr17
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {9D358445-E589-40A5-A1F2-E1F77F06C763}
// *********************************************************************//
  IDocumentAttr17 = interface(IDocumentAttr16)
    ['{9D358445-E589-40A5-A1F2-E1F77F06C763}']
    function GetCalcParameters: I2DimArrayHelper; safecall;
    function GetAllCalcParameters: I2DimArrayHelper; safecall;
    function Get_CalcParameter(const Name: WideString): ICalcParameter; safecall;
    property CalcParameter[const Name: WideString]: ICalcParameter read Get_CalcParameter;
  end;

// *********************************************************************//
// DispIntf:  IDocumentAttr17Disp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {9D358445-E589-40A5-A1F2-E1F77F06C763}
// *********************************************************************//
  IDocumentAttr17Disp = dispinterface
    ['{9D358445-E589-40A5-A1F2-E1F77F06C763}']
    function GetCalcParameters: I2DimArrayHelper; dispid 1701;
    function GetAllCalcParameters: I2DimArrayHelper; dispid 1702;
    property CalcParameter[const Name: WideString]: ICalcParameter readonly dispid 1703;
    procedure SetLandCurrency(LandId: Integer; CurrencyId: Integer; DirectionId: Integer); dispid 1601;
    procedure SetCommonCurrency(CurrencyId: Integer); dispid 1602;
    procedure SetDangPid(DangPid: Integer); dispid 1501;
    property GuardedGroupBaseVCCount: Integer dispid 1401;
    property GuardedGroupDopVCCount: Integer dispid 1402;
    property PlanFormType: Smallint dispid 1301;
    procedure ContainerTransportKRK(TranspID: Integer; OwnerId: Integer; Count: Integer;
                                    OwnerId_DGV: Integer; NoCalcDGV: OleVariant); dispid 1201;
    property GuardedGroupVCCount: Integer dispid 1202;
    property VagonSectionCount: Integer dispid 1203;
    property BackRoutePresent: WordBool dispid 1204;
    procedure BufferWagon(TranspID: Integer; OwnerId: Integer; Count: Integer; Axis: OleVariant); dispid 1101;
    procedure BufferWagonOwnerFirm(Id: Integer); dispid 1102;
    procedure BufferWagonUsageMode(Id: Integer; ControlFrameWeight: OleVariant); dispid 1103;
    property ForwardThruRoute: IThruRoutes readonly dispid 53;
    property BackwardThruRoute: IThruRoutes readonly dispid 54;
    procedure CopyThruRouteFwdToBwd; dispid 55;
    procedure CopyThruRouteBwdToFwd; dispid 56;
    procedure AddEquip(EquipType: Integer; ForwardEquipWeightType: Integer;
                       BackwardEquipWeightType: Integer); dispid 42;
    function IsEquipWeight: WordBool; dispid 43;
    procedure EquipWeight(pVal: Double); dispid 44;
    procedure Bulkiness(const Index: WideString); dispid 52;
    procedure MXFreightAddEx(const ETSNGCode: WideString; const GNG8: WideString; Weight: Double;
                             IsGuard: Integer; out pIndex: OleVariant); dispid 39;
    procedure EmptyWagonEx(TranspID: Integer; OwnerId: Integer; Count: Integer;
                           const ETSNGCode: WideString; const GNG8: WideString; Axis: Integer;
                           TareWeight: Double); dispid 41;
    property FullRoute: IDocNode readonly dispid 38;
    procedure FlatWagonOwnerFirm(Id: Integer); dispid 36;
    procedure ContainerOwnerFirm(Id: Integer); dispid 37;
    procedure FreightEx(const ETSNGCode: WideString; const GNG6: WideString;
                        const GNG8: WideString; Weight: Double); dispid 28;
    procedure DispersionStation(const Code: WideString); dispid 27;
    procedure MxFreight(FreightSet: OleVariant); dispid 21;
    property MXFreightItem[Index: Integer; const ParamName: WideString]: OleVariant readonly dispid 22;
    procedure MXFreightAdd(CodeType: Integer; const FreightCode: WideString; Weight: Double;
                           IsGuard: Integer; out pIndex: OleVariant); dispid 23;
    procedure MXFreightDelete(Index: Integer); dispid 24;
    property MXFreightCount: Integer readonly dispid 25;
    procedure MXFreightClear; dispid 26;
    procedure EmptyWagon(TranspID: Integer; OwnerId: Integer; Count: Integer;
                         const FromCargoCode: WideString; Axis: Integer; TareWeight: Double); dispid 34;
    procedure WagonOwnerLand(OwnerLandID: Integer; IsUsageCharge: WordBool); dispid 35;
    procedure FromStation(const StationCode: WideString; SrcLandId: Integer); dispid 1;
    procedure ToStation(const StationCode: WideString; DstLandId: Integer); dispid 2;
    procedure CustomizeCalc(LandId: Integer; CalcType: OleVariant; Distance: OleVariant;
                            Currency: OleVariant); dispid 3;
    procedure Send(SendCat: Integer; SendId: Integer; ExitRoute: Integer; Speed: Integer); dispid 10;
    procedure Freight(const ETSNGCode: WideString; Weight: Double); dispid 20;
    procedure Wagon(TranspID: Integer; OwnerId: Integer; Count: Integer; GP: OleVariant); dispid 30;
    procedure Container(ContID: Integer; OwnershipId: Integer; ContCount: Integer;
                        TareWeight: OleVariant); dispid 31;
    procedure ContainerTransport(TranspID: Integer; OwnerId: Integer; Count: Integer); dispid 32;
    procedure RefWagon(OwnerId: Integer; FullCount: Integer; EmptyCount: Integer;
                       SectionSize: Integer); dispid 33;
    procedure Support(SupportId: Integer; CounductorCount: Integer; AxisCount: Integer); dispid 40;
    procedure Rur2Usd(Rate: Double); dispid 50;
    procedure OnDate(OnDate: TDateTime); dispid 51;
  end;

// *********************************************************************//
// Interface: IDocumentAttr18
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {4505DDFE-BA1B-420E-B522-81EC1A9BCD88}
// *********************************************************************//
  IDocumentAttr18 = interface(IDocumentAttr17)
    ['{4505DDFE-BA1B-420E-B522-81EC1A9BCD88}']
    procedure SetReturnStation(const StationCode: WideString; RetLandId: Integer); safecall;
    procedure SetReturnStationAsFromStation; safecall;
  end;

// *********************************************************************//
// DispIntf:  IDocumentAttr18Disp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {4505DDFE-BA1B-420E-B522-81EC1A9BCD88}
// *********************************************************************//
  IDocumentAttr18Disp = dispinterface
    ['{4505DDFE-BA1B-420E-B522-81EC1A9BCD88}']
    procedure SetReturnStation(const StationCode: WideString; RetLandId: Integer); dispid 1801;
    procedure SetReturnStationAsFromStation; dispid 1802;
    function GetCalcParameters: I2DimArrayHelper; dispid 1701;
    function GetAllCalcParameters: I2DimArrayHelper; dispid 1702;
    property CalcParameter[const Name: WideString]: ICalcParameter readonly dispid 1703;
    procedure SetLandCurrency(LandId: Integer; CurrencyId: Integer; DirectionId: Integer); dispid 1601;
    procedure SetCommonCurrency(CurrencyId: Integer); dispid 1602;
    procedure SetDangPid(DangPid: Integer); dispid 1501;
    property GuardedGroupBaseVCCount: Integer dispid 1401;
    property GuardedGroupDopVCCount: Integer dispid 1402;
    property PlanFormType: Smallint dispid 1301;
    procedure ContainerTransportKRK(TranspID: Integer; OwnerId: Integer; Count: Integer;
                                    OwnerId_DGV: Integer; NoCalcDGV: OleVariant); dispid 1201;
    property GuardedGroupVCCount: Integer dispid 1202;
    property VagonSectionCount: Integer dispid 1203;
    property BackRoutePresent: WordBool dispid 1204;
    procedure BufferWagon(TranspID: Integer; OwnerId: Integer; Count: Integer; Axis: OleVariant); dispid 1101;
    procedure BufferWagonOwnerFirm(Id: Integer); dispid 1102;
    procedure BufferWagonUsageMode(Id: Integer; ControlFrameWeight: OleVariant); dispid 1103;
    property ForwardThruRoute: IThruRoutes readonly dispid 53;
    property BackwardThruRoute: IThruRoutes readonly dispid 54;
    procedure CopyThruRouteFwdToBwd; dispid 55;
    procedure CopyThruRouteBwdToFwd; dispid 56;
    procedure AddEquip(EquipType: Integer; ForwardEquipWeightType: Integer;
                       BackwardEquipWeightType: Integer); dispid 42;
    function IsEquipWeight: WordBool; dispid 43;
    procedure EquipWeight(pVal: Double); dispid 44;
    procedure Bulkiness(const Index: WideString); dispid 52;
    procedure MXFreightAddEx(const ETSNGCode: WideString; const GNG8: WideString; Weight: Double;
                             IsGuard: Integer; out pIndex: OleVariant); dispid 39;
    procedure EmptyWagonEx(TranspID: Integer; OwnerId: Integer; Count: Integer;
                           const ETSNGCode: WideString; const GNG8: WideString; Axis: Integer;
                           TareWeight: Double); dispid 41;
    property FullRoute: IDocNode readonly dispid 38;
    procedure FlatWagonOwnerFirm(Id: Integer); dispid 36;
    procedure ContainerOwnerFirm(Id: Integer); dispid 37;
    procedure FreightEx(const ETSNGCode: WideString; const GNG6: WideString;
                        const GNG8: WideString; Weight: Double); dispid 28;
    procedure DispersionStation(const Code: WideString); dispid 27;
    procedure MxFreight(FreightSet: OleVariant); dispid 21;
    property MXFreightItem[Index: Integer; const ParamName: WideString]: OleVariant readonly dispid 22;
    procedure MXFreightAdd(CodeType: Integer; const FreightCode: WideString; Weight: Double;
                           IsGuard: Integer; out pIndex: OleVariant); dispid 23;
    procedure MXFreightDelete(Index: Integer); dispid 24;
    property MXFreightCount: Integer readonly dispid 25;
    procedure MXFreightClear; dispid 26;
    procedure EmptyWagon(TranspID: Integer; OwnerId: Integer; Count: Integer;
                         const FromCargoCode: WideString; Axis: Integer; TareWeight: Double); dispid 34;
    procedure WagonOwnerLand(OwnerLandID: Integer; IsUsageCharge: WordBool); dispid 35;
    procedure FromStation(const StationCode: WideString; SrcLandId: Integer); dispid 1;
    procedure ToStation(const StationCode: WideString; DstLandId: Integer); dispid 2;
    procedure CustomizeCalc(LandId: Integer; CalcType: OleVariant; Distance: OleVariant;
                            Currency: OleVariant); dispid 3;
    procedure Send(SendCat: Integer; SendId: Integer; ExitRoute: Integer; Speed: Integer); dispid 10;
    procedure Freight(const ETSNGCode: WideString; Weight: Double); dispid 20;
    procedure Wagon(TranspID: Integer; OwnerId: Integer; Count: Integer; GP: OleVariant); dispid 30;
    procedure Container(ContID: Integer; OwnershipId: Integer; ContCount: Integer;
                        TareWeight: OleVariant); dispid 31;
    procedure ContainerTransport(TranspID: Integer; OwnerId: Integer; Count: Integer); dispid 32;
    procedure RefWagon(OwnerId: Integer; FullCount: Integer; EmptyCount: Integer;
                       SectionSize: Integer); dispid 33;
    procedure Support(SupportId: Integer; CounductorCount: Integer; AxisCount: Integer); dispid 40;
    procedure Rur2Usd(Rate: Double); dispid 50;
    procedure OnDate(OnDate: TDateTime); dispid 51;
  end;

// *********************************************************************//
// Interface: IDocumentAttr19
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {CB472752-3D69-4724-B286-5587DB48F85B}
// *********************************************************************//
  IDocumentAttr19 = interface(IDocumentAttr18)
    ['{CB472752-3D69-4724-B286-5587DB48F85B}']
    procedure SetDispStation(const Code: WideString; LandId: Integer); safecall;
    function Get_DispersionEnabled: WordBool; safecall;
    procedure Set_DispersionEnabled(pVal: WordBool); safecall;
    procedure SetReadressingStation(const Code: WideString; LandId: Integer); safecall;
    function Get_ReadressingEnabled: WordBool; safecall;
    procedure Set_ReadressingEnabled(pVal: WordBool); safecall;
    procedure SetWashingStation(const Code: WideString; LandId: Integer); safecall;
    function Get_WashingEnabled: WordBool; safecall;
    procedure Set_WashingEnabled(pVal: WordBool); safecall;
    property DispersionEnabled: WordBool read Get_DispersionEnabled write Set_DispersionEnabled;
    property ReadressingEnabled: WordBool read Get_ReadressingEnabled write Set_ReadressingEnabled;
    property WashingEnabled: WordBool read Get_WashingEnabled write Set_WashingEnabled;
  end;

// *********************************************************************//
// DispIntf:  IDocumentAttr19Disp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {CB472752-3D69-4724-B286-5587DB48F85B}
// *********************************************************************//
  IDocumentAttr19Disp = dispinterface
    ['{CB472752-3D69-4724-B286-5587DB48F85B}']
    procedure SetDispStation(const Code: WideString; LandId: Integer); dispid 1901;
    property DispersionEnabled: WordBool dispid 14;
    procedure SetReadressingStation(const Code: WideString; LandId: Integer); dispid 1902;
    property ReadressingEnabled: WordBool dispid 15;
    procedure SetWashingStation(const Code: WideString; LandId: Integer); dispid 1903;
    property WashingEnabled: WordBool dispid 16;
    procedure SetReturnStation(const StationCode: WideString; RetLandId: Integer); dispid 1801;
    procedure SetReturnStationAsFromStation; dispid 1802;
    function GetCalcParameters: I2DimArrayHelper; dispid 1701;
    function GetAllCalcParameters: I2DimArrayHelper; dispid 1702;
    property CalcParameter[const Name: WideString]: ICalcParameter readonly dispid 1703;
    procedure SetLandCurrency(LandId: Integer; CurrencyId: Integer; DirectionId: Integer); dispid 1601;
    procedure SetCommonCurrency(CurrencyId: Integer); dispid 1602;
    procedure SetDangPid(DangPid: Integer); dispid 1501;
    property GuardedGroupBaseVCCount: Integer dispid 1401;
    property GuardedGroupDopVCCount: Integer dispid 1402;
    property PlanFormType: Smallint dispid 1301;
    procedure ContainerTransportKRK(TranspID: Integer; OwnerId: Integer; Count: Integer;
                                    OwnerId_DGV: Integer; NoCalcDGV: OleVariant); dispid 1201;
    property GuardedGroupVCCount: Integer dispid 1202;
    property VagonSectionCount: Integer dispid 1203;
    property BackRoutePresent: WordBool dispid 1204;
    procedure BufferWagon(TranspID: Integer; OwnerId: Integer; Count: Integer; Axis: OleVariant); dispid 1101;
    procedure BufferWagonOwnerFirm(Id: Integer); dispid 1102;
    procedure BufferWagonUsageMode(Id: Integer; ControlFrameWeight: OleVariant); dispid 1103;
    property ForwardThruRoute: IThruRoutes readonly dispid 53;
    property BackwardThruRoute: IThruRoutes readonly dispid 54;
    procedure CopyThruRouteFwdToBwd; dispid 55;
    procedure CopyThruRouteBwdToFwd; dispid 56;
    procedure AddEquip(EquipType: Integer; ForwardEquipWeightType: Integer;
                       BackwardEquipWeightType: Integer); dispid 42;
    function IsEquipWeight: WordBool; dispid 43;
    procedure EquipWeight(pVal: Double); dispid 44;
    procedure Bulkiness(const Index: WideString); dispid 52;
    procedure MXFreightAddEx(const ETSNGCode: WideString; const GNG8: WideString; Weight: Double;
                             IsGuard: Integer; out pIndex: OleVariant); dispid 39;
    procedure EmptyWagonEx(TranspID: Integer; OwnerId: Integer; Count: Integer;
                           const ETSNGCode: WideString; const GNG8: WideString; Axis: Integer;
                           TareWeight: Double); dispid 41;
    property FullRoute: IDocNode readonly dispid 38;
    procedure FlatWagonOwnerFirm(Id: Integer); dispid 36;
    procedure ContainerOwnerFirm(Id: Integer); dispid 37;
    procedure FreightEx(const ETSNGCode: WideString; const GNG6: WideString;
                        const GNG8: WideString; Weight: Double); dispid 28;
    procedure DispersionStation(const Code: WideString); dispid 27;
    procedure MxFreight(FreightSet: OleVariant); dispid 21;
    property MXFreightItem[Index: Integer; const ParamName: WideString]: OleVariant readonly dispid 22;
    procedure MXFreightAdd(CodeType: Integer; const FreightCode: WideString; Weight: Double;
                           IsGuard: Integer; out pIndex: OleVariant); dispid 23;
    procedure MXFreightDelete(Index: Integer); dispid 24;
    property MXFreightCount: Integer readonly dispid 25;
    procedure MXFreightClear; dispid 26;
    procedure EmptyWagon(TranspID: Integer; OwnerId: Integer; Count: Integer;
                         const FromCargoCode: WideString; Axis: Integer; TareWeight: Double); dispid 34;
    procedure WagonOwnerLand(OwnerLandID: Integer; IsUsageCharge: WordBool); dispid 35;
    procedure FromStation(const StationCode: WideString; SrcLandId: Integer); dispid 1;
    procedure ToStation(const StationCode: WideString; DstLandId: Integer); dispid 2;
    procedure CustomizeCalc(LandId: Integer; CalcType: OleVariant; Distance: OleVariant;
                            Currency: OleVariant); dispid 3;
    procedure Send(SendCat: Integer; SendId: Integer; ExitRoute: Integer; Speed: Integer); dispid 10;
    procedure Freight(const ETSNGCode: WideString; Weight: Double); dispid 20;
    procedure Wagon(TranspID: Integer; OwnerId: Integer; Count: Integer; GP: OleVariant); dispid 30;
    procedure Container(ContID: Integer; OwnershipId: Integer; ContCount: Integer;
                        TareWeight: OleVariant); dispid 31;
    procedure ContainerTransport(TranspID: Integer; OwnerId: Integer; Count: Integer); dispid 32;
    procedure RefWagon(OwnerId: Integer; FullCount: Integer; EmptyCount: Integer;
                       SectionSize: Integer); dispid 33;
    procedure Support(SupportId: Integer; CounductorCount: Integer; AxisCount: Integer); dispid 40;
    procedure Rur2Usd(Rate: Double); dispid 50;
    procedure OnDate(OnDate: TDateTime); dispid 51;
  end;

// *********************************************************************//
// Interface: IDocumentAttr20
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {564B4FA6-7998-43C6-B3A4-C1B70D78D7E8}
// *********************************************************************//
  IDocumentAttr20 = interface(IDocumentAttr19)
    ['{564B4FA6-7998-43C6-B3A4-C1B70D78D7E8}']
    procedure SetUncouplingStation(const Code: WideString; LandId: Integer); safecall;
    procedure SetRepairStation(const Code: WideString; LandId: Integer); safecall;
    function Get_UncouplingAndRepairEnabled: WordBool; safecall;
    procedure Set_UncouplingAndRepairEnabled(pVal: WordBool); safecall;
    property UncouplingAndRepairEnabled: WordBool read Get_UncouplingAndRepairEnabled write Set_UncouplingAndRepairEnabled;
  end;

// *********************************************************************//
// DispIntf:  IDocumentAttr20Disp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {564B4FA6-7998-43C6-B3A4-C1B70D78D7E8}
// *********************************************************************//
  IDocumentAttr20Disp = dispinterface
    ['{564B4FA6-7998-43C6-B3A4-C1B70D78D7E8}']
    procedure SetUncouplingStation(const Code: WideString; LandId: Integer); dispid 2001;
    procedure SetRepairStation(const Code: WideString; LandId: Integer); dispid 2002;
    property UncouplingAndRepairEnabled: WordBool dispid 2003;
    procedure SetDispStation(const Code: WideString; LandId: Integer); dispid 1901;
    property DispersionEnabled: WordBool dispid 14;
    procedure SetReadressingStation(const Code: WideString; LandId: Integer); dispid 1902;
    property ReadressingEnabled: WordBool dispid 15;
    procedure SetWashingStation(const Code: WideString; LandId: Integer); dispid 1903;
    property WashingEnabled: WordBool dispid 16;
    procedure SetReturnStation(const StationCode: WideString; RetLandId: Integer); dispid 1801;
    procedure SetReturnStationAsFromStation; dispid 1802;
    function GetCalcParameters: I2DimArrayHelper; dispid 1701;
    function GetAllCalcParameters: I2DimArrayHelper; dispid 1702;
    property CalcParameter[const Name: WideString]: ICalcParameter readonly dispid 1703;
    procedure SetLandCurrency(LandId: Integer; CurrencyId: Integer; DirectionId: Integer); dispid 1601;
    procedure SetCommonCurrency(CurrencyId: Integer); dispid 1602;
    procedure SetDangPid(DangPid: Integer); dispid 1501;
    property GuardedGroupBaseVCCount: Integer dispid 1401;
    property GuardedGroupDopVCCount: Integer dispid 1402;
    property PlanFormType: Smallint dispid 1301;
    procedure ContainerTransportKRK(TranspID: Integer; OwnerId: Integer; Count: Integer;
                                    OwnerId_DGV: Integer; NoCalcDGV: OleVariant); dispid 1201;
    property GuardedGroupVCCount: Integer dispid 1202;
    property VagonSectionCount: Integer dispid 1203;
    property BackRoutePresent: WordBool dispid 1204;
    procedure BufferWagon(TranspID: Integer; OwnerId: Integer; Count: Integer; Axis: OleVariant); dispid 1101;
    procedure BufferWagonOwnerFirm(Id: Integer); dispid 1102;
    procedure BufferWagonUsageMode(Id: Integer; ControlFrameWeight: OleVariant); dispid 1103;
    property ForwardThruRoute: IThruRoutes readonly dispid 53;
    property BackwardThruRoute: IThruRoutes readonly dispid 54;
    procedure CopyThruRouteFwdToBwd; dispid 55;
    procedure CopyThruRouteBwdToFwd; dispid 56;
    procedure AddEquip(EquipType: Integer; ForwardEquipWeightType: Integer;
                       BackwardEquipWeightType: Integer); dispid 42;
    function IsEquipWeight: WordBool; dispid 43;
    procedure EquipWeight(pVal: Double); dispid 44;
    procedure Bulkiness(const Index: WideString); dispid 52;
    procedure MXFreightAddEx(const ETSNGCode: WideString; const GNG8: WideString; Weight: Double;
                             IsGuard: Integer; out pIndex: OleVariant); dispid 39;
    procedure EmptyWagonEx(TranspID: Integer; OwnerId: Integer; Count: Integer;
                           const ETSNGCode: WideString; const GNG8: WideString; Axis: Integer;
                           TareWeight: Double); dispid 41;
    property FullRoute: IDocNode readonly dispid 38;
    procedure FlatWagonOwnerFirm(Id: Integer); dispid 36;
    procedure ContainerOwnerFirm(Id: Integer); dispid 37;
    procedure FreightEx(const ETSNGCode: WideString; const GNG6: WideString;
                        const GNG8: WideString; Weight: Double); dispid 28;
    procedure DispersionStation(const Code: WideString); dispid 27;
    procedure MxFreight(FreightSet: OleVariant); dispid 21;
    property MXFreightItem[Index: Integer; const ParamName: WideString]: OleVariant readonly dispid 22;
    procedure MXFreightAdd(CodeType: Integer; const FreightCode: WideString; Weight: Double;
                           IsGuard: Integer; out pIndex: OleVariant); dispid 23;
    procedure MXFreightDelete(Index: Integer); dispid 24;
    property MXFreightCount: Integer readonly dispid 25;
    procedure MXFreightClear; dispid 26;
    procedure EmptyWagon(TranspID: Integer; OwnerId: Integer; Count: Integer;
                         const FromCargoCode: WideString; Axis: Integer; TareWeight: Double); dispid 34;
    procedure WagonOwnerLand(OwnerLandID: Integer; IsUsageCharge: WordBool); dispid 35;
    procedure FromStation(const StationCode: WideString; SrcLandId: Integer); dispid 1;
    procedure ToStation(const StationCode: WideString; DstLandId: Integer); dispid 2;
    procedure CustomizeCalc(LandId: Integer; CalcType: OleVariant; Distance: OleVariant;
                            Currency: OleVariant); dispid 3;
    procedure Send(SendCat: Integer; SendId: Integer; ExitRoute: Integer; Speed: Integer); dispid 10;
    procedure Freight(const ETSNGCode: WideString; Weight: Double); dispid 20;
    procedure Wagon(TranspID: Integer; OwnerId: Integer; Count: Integer; GP: OleVariant); dispid 30;
    procedure Container(ContID: Integer; OwnershipId: Integer; ContCount: Integer;
                        TareWeight: OleVariant); dispid 31;
    procedure ContainerTransport(TranspID: Integer; OwnerId: Integer; Count: Integer); dispid 32;
    procedure RefWagon(OwnerId: Integer; FullCount: Integer; EmptyCount: Integer;
                       SectionSize: Integer); dispid 33;
    procedure Support(SupportId: Integer; CounductorCount: Integer; AxisCount: Integer); dispid 40;
    procedure Rur2Usd(Rate: Double); dispid 50;
    procedure OnDate(OnDate: TDateTime); dispid 51;
  end;

// *********************************************************************//
// Interface: IDocumentAttr21
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {6DDBCB3E-DF7D-40D5-9BED-A6438C49BBA5}
// *********************************************************************//
  IDocumentAttr21 = interface(IDocumentAttr20)
    ['{6DDBCB3E-DF7D-40D5-9BED-A6438C49BBA5}']
    function Get_AltRoutesAvail: WordBool; safecall;
    function Get_AltRouteEnabled: WordBool; safecall;
    function Get_AltRouteId: Integer; safecall;
    procedure EnableAltRoute(AltRouteId: Integer); safecall;
    function GetAltRoutesRefBook: _RefBook; safecall;
    property AltRoutesAvail: WordBool read Get_AltRoutesAvail;
    property AltRouteEnabled: WordBool read Get_AltRouteEnabled;
    property AltRouteId: Integer read Get_AltRouteId;
  end;

// *********************************************************************//
// DispIntf:  IDocumentAttr21Disp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {6DDBCB3E-DF7D-40D5-9BED-A6438C49BBA5}
// *********************************************************************//
  IDocumentAttr21Disp = dispinterface
    ['{6DDBCB3E-DF7D-40D5-9BED-A6438C49BBA5}']
    property AltRoutesAvail: WordBool readonly dispid 2101;
    property AltRouteEnabled: WordBool readonly dispid 2102;
    property AltRouteId: Integer readonly dispid 2103;
    procedure EnableAltRoute(AltRouteId: Integer); dispid 2104;
    function GetAltRoutesRefBook: _RefBook; dispid 2105;
    procedure SetUncouplingStation(const Code: WideString; LandId: Integer); dispid 2001;
    procedure SetRepairStation(const Code: WideString; LandId: Integer); dispid 2002;
    property UncouplingAndRepairEnabled: WordBool dispid 2003;
    procedure SetDispStation(const Code: WideString; LandId: Integer); dispid 1901;
    property DispersionEnabled: WordBool dispid 14;
    procedure SetReadressingStation(const Code: WideString; LandId: Integer); dispid 1902;
    property ReadressingEnabled: WordBool dispid 15;
    procedure SetWashingStation(const Code: WideString; LandId: Integer); dispid 1903;
    property WashingEnabled: WordBool dispid 16;
    procedure SetReturnStation(const StationCode: WideString; RetLandId: Integer); dispid 1801;
    procedure SetReturnStationAsFromStation; dispid 1802;
    function GetCalcParameters: I2DimArrayHelper; dispid 1701;
    function GetAllCalcParameters: I2DimArrayHelper; dispid 1702;
    property CalcParameter[const Name: WideString]: ICalcParameter readonly dispid 1703;
    procedure SetLandCurrency(LandId: Integer; CurrencyId: Integer; DirectionId: Integer); dispid 1601;
    procedure SetCommonCurrency(CurrencyId: Integer); dispid 1602;
    procedure SetDangPid(DangPid: Integer); dispid 1501;
    property GuardedGroupBaseVCCount: Integer dispid 1401;
    property GuardedGroupDopVCCount: Integer dispid 1402;
    property PlanFormType: Smallint dispid 1301;
    procedure ContainerTransportKRK(TranspID: Integer; OwnerId: Integer; Count: Integer;
                                    OwnerId_DGV: Integer; NoCalcDGV: OleVariant); dispid 1201;
    property GuardedGroupVCCount: Integer dispid 1202;
    property VagonSectionCount: Integer dispid 1203;
    property BackRoutePresent: WordBool dispid 1204;
    procedure BufferWagon(TranspID: Integer; OwnerId: Integer; Count: Integer; Axis: OleVariant); dispid 1101;
    procedure BufferWagonOwnerFirm(Id: Integer); dispid 1102;
    procedure BufferWagonUsageMode(Id: Integer; ControlFrameWeight: OleVariant); dispid 1103;
    property ForwardThruRoute: IThruRoutes readonly dispid 53;
    property BackwardThruRoute: IThruRoutes readonly dispid 54;
    procedure CopyThruRouteFwdToBwd; dispid 55;
    procedure CopyThruRouteBwdToFwd; dispid 56;
    procedure AddEquip(EquipType: Integer; ForwardEquipWeightType: Integer;
                       BackwardEquipWeightType: Integer); dispid 42;
    function IsEquipWeight: WordBool; dispid 43;
    procedure EquipWeight(pVal: Double); dispid 44;
    procedure Bulkiness(const Index: WideString); dispid 52;
    procedure MXFreightAddEx(const ETSNGCode: WideString; const GNG8: WideString; Weight: Double;
                             IsGuard: Integer; out pIndex: OleVariant); dispid 39;
    procedure EmptyWagonEx(TranspID: Integer; OwnerId: Integer; Count: Integer;
                           const ETSNGCode: WideString; const GNG8: WideString; Axis: Integer;
                           TareWeight: Double); dispid 41;
    property FullRoute: IDocNode readonly dispid 38;
    procedure FlatWagonOwnerFirm(Id: Integer); dispid 36;
    procedure ContainerOwnerFirm(Id: Integer); dispid 37;
    procedure FreightEx(const ETSNGCode: WideString; const GNG6: WideString;
                        const GNG8: WideString; Weight: Double); dispid 28;
    procedure DispersionStation(const Code: WideString); dispid 27;
    procedure MxFreight(FreightSet: OleVariant); dispid 21;
    property MXFreightItem[Index: Integer; const ParamName: WideString]: OleVariant readonly dispid 22;
    procedure MXFreightAdd(CodeType: Integer; const FreightCode: WideString; Weight: Double;
                           IsGuard: Integer; out pIndex: OleVariant); dispid 23;
    procedure MXFreightDelete(Index: Integer); dispid 24;
    property MXFreightCount: Integer readonly dispid 25;
    procedure MXFreightClear; dispid 26;
    procedure EmptyWagon(TranspID: Integer; OwnerId: Integer; Count: Integer;
                         const FromCargoCode: WideString; Axis: Integer; TareWeight: Double); dispid 34;
    procedure WagonOwnerLand(OwnerLandID: Integer; IsUsageCharge: WordBool); dispid 35;
    procedure FromStation(const StationCode: WideString; SrcLandId: Integer); dispid 1;
    procedure ToStation(const StationCode: WideString; DstLandId: Integer); dispid 2;
    procedure CustomizeCalc(LandId: Integer; CalcType: OleVariant; Distance: OleVariant;
                            Currency: OleVariant); dispid 3;
    procedure Send(SendCat: Integer; SendId: Integer; ExitRoute: Integer; Speed: Integer); dispid 10;
    procedure Freight(const ETSNGCode: WideString; Weight: Double); dispid 20;
    procedure Wagon(TranspID: Integer; OwnerId: Integer; Count: Integer; GP: OleVariant); dispid 30;
    procedure Container(ContID: Integer; OwnershipId: Integer; ContCount: Integer;
                        TareWeight: OleVariant); dispid 31;
    procedure ContainerTransport(TranspID: Integer; OwnerId: Integer; Count: Integer); dispid 32;
    procedure RefWagon(OwnerId: Integer; FullCount: Integer; EmptyCount: Integer;
                       SectionSize: Integer); dispid 33;
    procedure Support(SupportId: Integer; CounductorCount: Integer; AxisCount: Integer); dispid 40;
    procedure Rur2Usd(Rate: Double); dispid 50;
    procedure OnDate(OnDate: TDateTime); dispid 51;
  end;

// *********************************************************************//
// Interface: IDocumentAttr22
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {8D2D2FB4-C799-44C3-A73A-42A19C4693B9}
// *********************************************************************//
  IDocumentAttr22 = interface(IDocumentAttr21)
    ['{8D2D2FB4-C799-44C3-A73A-42A19C4693B9}']
    procedure SetLandRoadDirCurrency(LandId: Smallint; RoadId: Smallint; CurrencyId: Smallint;
                                     DirectionId: Byte); safecall;
  end;

// *********************************************************************//
// DispIntf:  IDocumentAttr22Disp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {8D2D2FB4-C799-44C3-A73A-42A19C4693B9}
// *********************************************************************//
  IDocumentAttr22Disp = dispinterface
    ['{8D2D2FB4-C799-44C3-A73A-42A19C4693B9}']
    procedure SetLandRoadDirCurrency(LandId: Smallint; RoadId: Smallint; CurrencyId: Smallint;
                                     DirectionId: Byte); dispid 2201;
    property AltRoutesAvail: WordBool readonly dispid 2101;
    property AltRouteEnabled: WordBool readonly dispid 2102;
    property AltRouteId: Integer readonly dispid 2103;
    procedure EnableAltRoute(AltRouteId: Integer); dispid 2104;
    function GetAltRoutesRefBook: _RefBook; dispid 2105;
    procedure SetUncouplingStation(const Code: WideString; LandId: Integer); dispid 2001;
    procedure SetRepairStation(const Code: WideString; LandId: Integer); dispid 2002;
    property UncouplingAndRepairEnabled: WordBool dispid 2003;
    procedure SetDispStation(const Code: WideString; LandId: Integer); dispid 1901;
    property DispersionEnabled: WordBool dispid 14;
    procedure SetReadressingStation(const Code: WideString; LandId: Integer); dispid 1902;
    property ReadressingEnabled: WordBool dispid 15;
    procedure SetWashingStation(const Code: WideString; LandId: Integer); dispid 1903;
    property WashingEnabled: WordBool dispid 16;
    procedure SetReturnStation(const StationCode: WideString; RetLandId: Integer); dispid 1801;
    procedure SetReturnStationAsFromStation; dispid 1802;
    function GetCalcParameters: I2DimArrayHelper; dispid 1701;
    function GetAllCalcParameters: I2DimArrayHelper; dispid 1702;
    property CalcParameter[const Name: WideString]: ICalcParameter readonly dispid 1703;
    procedure SetLandCurrency(LandId: Integer; CurrencyId: Integer; DirectionId: Integer); dispid 1601;
    procedure SetCommonCurrency(CurrencyId: Integer); dispid 1602;
    procedure SetDangPid(DangPid: Integer); dispid 1501;
    property GuardedGroupBaseVCCount: Integer dispid 1401;
    property GuardedGroupDopVCCount: Integer dispid 1402;
    property PlanFormType: Smallint dispid 1301;
    procedure ContainerTransportKRK(TranspID: Integer; OwnerId: Integer; Count: Integer;
                                    OwnerId_DGV: Integer; NoCalcDGV: OleVariant); dispid 1201;
    property GuardedGroupVCCount: Integer dispid 1202;
    property VagonSectionCount: Integer dispid 1203;
    property BackRoutePresent: WordBool dispid 1204;
    procedure BufferWagon(TranspID: Integer; OwnerId: Integer; Count: Integer; Axis: OleVariant); dispid 1101;
    procedure BufferWagonOwnerFirm(Id: Integer); dispid 1102;
    procedure BufferWagonUsageMode(Id: Integer; ControlFrameWeight: OleVariant); dispid 1103;
    property ForwardThruRoute: IThruRoutes readonly dispid 53;
    property BackwardThruRoute: IThruRoutes readonly dispid 54;
    procedure CopyThruRouteFwdToBwd; dispid 55;
    procedure CopyThruRouteBwdToFwd; dispid 56;
    procedure AddEquip(EquipType: Integer; ForwardEquipWeightType: Integer;
                       BackwardEquipWeightType: Integer); dispid 42;
    function IsEquipWeight: WordBool; dispid 43;
    procedure EquipWeight(pVal: Double); dispid 44;
    procedure Bulkiness(const Index: WideString); dispid 52;
    procedure MXFreightAddEx(const ETSNGCode: WideString; const GNG8: WideString; Weight: Double;
                             IsGuard: Integer; out pIndex: OleVariant); dispid 39;
    procedure EmptyWagonEx(TranspID: Integer; OwnerId: Integer; Count: Integer;
                           const ETSNGCode: WideString; const GNG8: WideString; Axis: Integer;
                           TareWeight: Double); dispid 41;
    property FullRoute: IDocNode readonly dispid 38;
    procedure FlatWagonOwnerFirm(Id: Integer); dispid 36;
    procedure ContainerOwnerFirm(Id: Integer); dispid 37;
    procedure FreightEx(const ETSNGCode: WideString; const GNG6: WideString;
                        const GNG8: WideString; Weight: Double); dispid 28;
    procedure DispersionStation(const Code: WideString); dispid 27;
    procedure MxFreight(FreightSet: OleVariant); dispid 21;
    property MXFreightItem[Index: Integer; const ParamName: WideString]: OleVariant readonly dispid 22;
    procedure MXFreightAdd(CodeType: Integer; const FreightCode: WideString; Weight: Double;
                           IsGuard: Integer; out pIndex: OleVariant); dispid 23;
    procedure MXFreightDelete(Index: Integer); dispid 24;
    property MXFreightCount: Integer readonly dispid 25;
    procedure MXFreightClear; dispid 26;
    procedure EmptyWagon(TranspID: Integer; OwnerId: Integer; Count: Integer;
                         const FromCargoCode: WideString; Axis: Integer; TareWeight: Double); dispid 34;
    procedure WagonOwnerLand(OwnerLandID: Integer; IsUsageCharge: WordBool); dispid 35;
    procedure FromStation(const StationCode: WideString; SrcLandId: Integer); dispid 1;
    procedure ToStation(const StationCode: WideString; DstLandId: Integer); dispid 2;
    procedure CustomizeCalc(LandId: Integer; CalcType: OleVariant; Distance: OleVariant;
                            Currency: OleVariant); dispid 3;
    procedure Send(SendCat: Integer; SendId: Integer; ExitRoute: Integer; Speed: Integer); dispid 10;
    procedure Freight(const ETSNGCode: WideString; Weight: Double); dispid 20;
    procedure Wagon(TranspID: Integer; OwnerId: Integer; Count: Integer; GP: OleVariant); dispid 30;
    procedure Container(ContID: Integer; OwnershipId: Integer; ContCount: Integer;
                        TareWeight: OleVariant); dispid 31;
    procedure ContainerTransport(TranspID: Integer; OwnerId: Integer; Count: Integer); dispid 32;
    procedure RefWagon(OwnerId: Integer; FullCount: Integer; EmptyCount: Integer;
                       SectionSize: Integer); dispid 33;
    procedure Support(SupportId: Integer; CounductorCount: Integer; AxisCount: Integer); dispid 40;
    procedure Rur2Usd(Rate: Double); dispid 50;
    procedure OnDate(OnDate: TDateTime); dispid 51;
  end;

// *********************************************************************//
// Interface: IDocumentAttr23
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {ED4CB1E7-E4BB-4D4C-97CC-571D93A5593D}
// *********************************************************************//
  IDocumentAttr23 = interface(IDocumentAttr22)
    ['{ED4CB1E7-E4BB-4D4C-97CC-571D93A5593D}']
    procedure MxFreightListSetDefaultParams; safecall;
    procedure MxFreightSetDefaultParams(Item: Smallint); safecall;
    procedure MxFreightOversize(Item: Smallint; const OversizeIndex: WideString); safecall;
    procedure MxFreightPerishable(Item: Smallint; Enable: WordBool); safecall;
    procedure MxFreightDangPid(Item: Smallint; DangPid: Integer); safecall;
    procedure MxFreightDanger(Item: Smallint; Enable: WordBool); safecall;
  end;

// *********************************************************************//
// DispIntf:  IDocumentAttr23Disp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {ED4CB1E7-E4BB-4D4C-97CC-571D93A5593D}
// *********************************************************************//
  IDocumentAttr23Disp = dispinterface
    ['{ED4CB1E7-E4BB-4D4C-97CC-571D93A5593D}']
    procedure MxFreightListSetDefaultParams; dispid 2301;
    procedure MxFreightSetDefaultParams(Item: Smallint); dispid 2302;
    procedure MxFreightOversize(Item: Smallint; const OversizeIndex: WideString); dispid 2303;
    procedure MxFreightPerishable(Item: Smallint; Enable: WordBool); dispid 2304;
    procedure MxFreightDangPid(Item: Smallint; DangPid: Integer); dispid 2305;
    procedure MxFreightDanger(Item: Smallint; Enable: WordBool); dispid 2306;
    procedure SetLandRoadDirCurrency(LandId: Smallint; RoadId: Smallint; CurrencyId: Smallint;
                                     DirectionId: Byte); dispid 2201;
    property AltRoutesAvail: WordBool readonly dispid 2101;
    property AltRouteEnabled: WordBool readonly dispid 2102;
    property AltRouteId: Integer readonly dispid 2103;
    procedure EnableAltRoute(AltRouteId: Integer); dispid 2104;
    function GetAltRoutesRefBook: _RefBook; dispid 2105;
    procedure SetUncouplingStation(const Code: WideString; LandId: Integer); dispid 2001;
    procedure SetRepairStation(const Code: WideString; LandId: Integer); dispid 2002;
    property UncouplingAndRepairEnabled: WordBool dispid 2003;
    procedure SetDispStation(const Code: WideString; LandId: Integer); dispid 1901;
    property DispersionEnabled: WordBool dispid 14;
    procedure SetReadressingStation(const Code: WideString; LandId: Integer); dispid 1902;
    property ReadressingEnabled: WordBool dispid 15;
    procedure SetWashingStation(const Code: WideString; LandId: Integer); dispid 1903;
    property WashingEnabled: WordBool dispid 16;
    procedure SetReturnStation(const StationCode: WideString; RetLandId: Integer); dispid 1801;
    procedure SetReturnStationAsFromStation; dispid 1802;
    function GetCalcParameters: I2DimArrayHelper; dispid 1701;
    function GetAllCalcParameters: I2DimArrayHelper; dispid 1702;
    property CalcParameter[const Name: WideString]: ICalcParameter readonly dispid 1703;
    procedure SetLandCurrency(LandId: Integer; CurrencyId: Integer; DirectionId: Integer); dispid 1601;
    procedure SetCommonCurrency(CurrencyId: Integer); dispid 1602;
    procedure SetDangPid(DangPid: Integer); dispid 1501;
    property GuardedGroupBaseVCCount: Integer dispid 1401;
    property GuardedGroupDopVCCount: Integer dispid 1402;
    property PlanFormType: Smallint dispid 1301;
    procedure ContainerTransportKRK(TranspID: Integer; OwnerId: Integer; Count: Integer;
                                    OwnerId_DGV: Integer; NoCalcDGV: OleVariant); dispid 1201;
    property GuardedGroupVCCount: Integer dispid 1202;
    property VagonSectionCount: Integer dispid 1203;
    property BackRoutePresent: WordBool dispid 1204;
    procedure BufferWagon(TranspID: Integer; OwnerId: Integer; Count: Integer; Axis: OleVariant); dispid 1101;
    procedure BufferWagonOwnerFirm(Id: Integer); dispid 1102;
    procedure BufferWagonUsageMode(Id: Integer; ControlFrameWeight: OleVariant); dispid 1103;
    property ForwardThruRoute: IThruRoutes readonly dispid 53;
    property BackwardThruRoute: IThruRoutes readonly dispid 54;
    procedure CopyThruRouteFwdToBwd; dispid 55;
    procedure CopyThruRouteBwdToFwd; dispid 56;
    procedure AddEquip(EquipType: Integer; ForwardEquipWeightType: Integer;
                       BackwardEquipWeightType: Integer); dispid 42;
    function IsEquipWeight: WordBool; dispid 43;
    procedure EquipWeight(pVal: Double); dispid 44;
    procedure Bulkiness(const Index: WideString); dispid 52;
    procedure MXFreightAddEx(const ETSNGCode: WideString; const GNG8: WideString; Weight: Double;
                             IsGuard: Integer; out pIndex: OleVariant); dispid 39;
    procedure EmptyWagonEx(TranspID: Integer; OwnerId: Integer; Count: Integer;
                           const ETSNGCode: WideString; const GNG8: WideString; Axis: Integer;
                           TareWeight: Double); dispid 41;
    property FullRoute: IDocNode readonly dispid 38;
    procedure FlatWagonOwnerFirm(Id: Integer); dispid 36;
    procedure ContainerOwnerFirm(Id: Integer); dispid 37;
    procedure FreightEx(const ETSNGCode: WideString; const GNG6: WideString;
                        const GNG8: WideString; Weight: Double); dispid 28;
    procedure DispersionStation(const Code: WideString); dispid 27;
    procedure MxFreight(FreightSet: OleVariant); dispid 21;
    property MXFreightItem[Index: Integer; const ParamName: WideString]: OleVariant readonly dispid 22;
    procedure MXFreightAdd(CodeType: Integer; const FreightCode: WideString; Weight: Double;
                           IsGuard: Integer; out pIndex: OleVariant); dispid 23;
    procedure MXFreightDelete(Index: Integer); dispid 24;
    property MXFreightCount: Integer readonly dispid 25;
    procedure MXFreightClear; dispid 26;
    procedure EmptyWagon(TranspID: Integer; OwnerId: Integer; Count: Integer;
                         const FromCargoCode: WideString; Axis: Integer; TareWeight: Double); dispid 34;
    procedure WagonOwnerLand(OwnerLandID: Integer; IsUsageCharge: WordBool); dispid 35;
    procedure FromStation(const StationCode: WideString; SrcLandId: Integer); dispid 1;
    procedure ToStation(const StationCode: WideString; DstLandId: Integer); dispid 2;
    procedure CustomizeCalc(LandId: Integer; CalcType: OleVariant; Distance: OleVariant;
                            Currency: OleVariant); dispid 3;
    procedure Send(SendCat: Integer; SendId: Integer; ExitRoute: Integer; Speed: Integer); dispid 10;
    procedure Freight(const ETSNGCode: WideString; Weight: Double); dispid 20;
    procedure Wagon(TranspID: Integer; OwnerId: Integer; Count: Integer; GP: OleVariant); dispid 30;
    procedure Container(ContID: Integer; OwnershipId: Integer; ContCount: Integer;
                        TareWeight: OleVariant); dispid 31;
    procedure ContainerTransport(TranspID: Integer; OwnerId: Integer; Count: Integer); dispid 32;
    procedure RefWagon(OwnerId: Integer; FullCount: Integer; EmptyCount: Integer;
                       SectionSize: Integer); dispid 33;
    procedure Support(SupportId: Integer; CounductorCount: Integer; AxisCount: Integer); dispid 40;
    procedure Rur2Usd(Rate: Double); dispid 50;
    procedure OnDate(OnDate: TDateTime); dispid 51;
  end;

// *********************************************************************//
// Interface: IDocumentAttr24
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {287D45E2-C37D-4AC9-913F-30E6227AC7D6}
// *********************************************************************//
  IDocumentAttr24 = interface(IDocumentAttr23)
    ['{287D45E2-C37D-4AC9-913F-30E6227AC7D6}']
    procedure SetCurrentLandCurrency(CurrencyId: Smallint); safecall;
  end;

// *********************************************************************//
// DispIntf:  IDocumentAttr24Disp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {287D45E2-C37D-4AC9-913F-30E6227AC7D6}
// *********************************************************************//
  IDocumentAttr24Disp = dispinterface
    ['{287D45E2-C37D-4AC9-913F-30E6227AC7D6}']
    procedure SetCurrentLandCurrency(CurrencyId: Smallint); dispid 2307;
    procedure MxFreightListSetDefaultParams; dispid 2301;
    procedure MxFreightSetDefaultParams(Item: Smallint); dispid 2302;
    procedure MxFreightOversize(Item: Smallint; const OversizeIndex: WideString); dispid 2303;
    procedure MxFreightPerishable(Item: Smallint; Enable: WordBool); dispid 2304;
    procedure MxFreightDangPid(Item: Smallint; DangPid: Integer); dispid 2305;
    procedure MxFreightDanger(Item: Smallint; Enable: WordBool); dispid 2306;
    procedure SetLandRoadDirCurrency(LandId: Smallint; RoadId: Smallint; CurrencyId: Smallint;
                                     DirectionId: Byte); dispid 2201;
    property AltRoutesAvail: WordBool readonly dispid 2101;
    property AltRouteEnabled: WordBool readonly dispid 2102;
    property AltRouteId: Integer readonly dispid 2103;
    procedure EnableAltRoute(AltRouteId: Integer); dispid 2104;
    function GetAltRoutesRefBook: _RefBook; dispid 2105;
    procedure SetUncouplingStation(const Code: WideString; LandId: Integer); dispid 2001;
    procedure SetRepairStation(const Code: WideString; LandId: Integer); dispid 2002;
    property UncouplingAndRepairEnabled: WordBool dispid 2003;
    procedure SetDispStation(const Code: WideString; LandId: Integer); dispid 1901;
    property DispersionEnabled: WordBool dispid 14;
    procedure SetReadressingStation(const Code: WideString; LandId: Integer); dispid 1902;
    property ReadressingEnabled: WordBool dispid 15;
    procedure SetWashingStation(const Code: WideString; LandId: Integer); dispid 1903;
    property WashingEnabled: WordBool dispid 16;
    procedure SetReturnStation(const StationCode: WideString; RetLandId: Integer); dispid 1801;
    procedure SetReturnStationAsFromStation; dispid 1802;
    function GetCalcParameters: I2DimArrayHelper; dispid 1701;
    function GetAllCalcParameters: I2DimArrayHelper; dispid 1702;
    property CalcParameter[const Name: WideString]: ICalcParameter readonly dispid 1703;
    procedure SetLandCurrency(LandId: Integer; CurrencyId: Integer; DirectionId: Integer); dispid 1601;
    procedure SetCommonCurrency(CurrencyId: Integer); dispid 1602;
    procedure SetDangPid(DangPid: Integer); dispid 1501;
    property GuardedGroupBaseVCCount: Integer dispid 1401;
    property GuardedGroupDopVCCount: Integer dispid 1402;
    property PlanFormType: Smallint dispid 1301;
    procedure ContainerTransportKRK(TranspID: Integer; OwnerId: Integer; Count: Integer;
                                    OwnerId_DGV: Integer; NoCalcDGV: OleVariant); dispid 1201;
    property GuardedGroupVCCount: Integer dispid 1202;
    property VagonSectionCount: Integer dispid 1203;
    property BackRoutePresent: WordBool dispid 1204;
    procedure BufferWagon(TranspID: Integer; OwnerId: Integer; Count: Integer; Axis: OleVariant); dispid 1101;
    procedure BufferWagonOwnerFirm(Id: Integer); dispid 1102;
    procedure BufferWagonUsageMode(Id: Integer; ControlFrameWeight: OleVariant); dispid 1103;
    property ForwardThruRoute: IThruRoutes readonly dispid 53;
    property BackwardThruRoute: IThruRoutes readonly dispid 54;
    procedure CopyThruRouteFwdToBwd; dispid 55;
    procedure CopyThruRouteBwdToFwd; dispid 56;
    procedure AddEquip(EquipType: Integer; ForwardEquipWeightType: Integer;
                       BackwardEquipWeightType: Integer); dispid 42;
    function IsEquipWeight: WordBool; dispid 43;
    procedure EquipWeight(pVal: Double); dispid 44;
    procedure Bulkiness(const Index: WideString); dispid 52;
    procedure MXFreightAddEx(const ETSNGCode: WideString; const GNG8: WideString; Weight: Double;
                             IsGuard: Integer; out pIndex: OleVariant); dispid 39;
    procedure EmptyWagonEx(TranspID: Integer; OwnerId: Integer; Count: Integer;
                           const ETSNGCode: WideString; const GNG8: WideString; Axis: Integer;
                           TareWeight: Double); dispid 41;
    property FullRoute: IDocNode readonly dispid 38;
    procedure FlatWagonOwnerFirm(Id: Integer); dispid 36;
    procedure ContainerOwnerFirm(Id: Integer); dispid 37;
    procedure FreightEx(const ETSNGCode: WideString; const GNG6: WideString;
                        const GNG8: WideString; Weight: Double); dispid 28;
    procedure DispersionStation(const Code: WideString); dispid 27;
    procedure MxFreight(FreightSet: OleVariant); dispid 21;
    property MXFreightItem[Index: Integer; const ParamName: WideString]: OleVariant readonly dispid 22;
    procedure MXFreightAdd(CodeType: Integer; const FreightCode: WideString; Weight: Double;
                           IsGuard: Integer; out pIndex: OleVariant); dispid 23;
    procedure MXFreightDelete(Index: Integer); dispid 24;
    property MXFreightCount: Integer readonly dispid 25;
    procedure MXFreightClear; dispid 26;
    procedure EmptyWagon(TranspID: Integer; OwnerId: Integer; Count: Integer;
                         const FromCargoCode: WideString; Axis: Integer; TareWeight: Double); dispid 34;
    procedure WagonOwnerLand(OwnerLandID: Integer; IsUsageCharge: WordBool); dispid 35;
    procedure FromStation(const StationCode: WideString; SrcLandId: Integer); dispid 1;
    procedure ToStation(const StationCode: WideString; DstLandId: Integer); dispid 2;
    procedure CustomizeCalc(LandId: Integer; CalcType: OleVariant; Distance: OleVariant;
                            Currency: OleVariant); dispid 3;
    procedure Send(SendCat: Integer; SendId: Integer; ExitRoute: Integer; Speed: Integer); dispid 10;
    procedure Freight(const ETSNGCode: WideString; Weight: Double); dispid 20;
    procedure Wagon(TranspID: Integer; OwnerId: Integer; Count: Integer; GP: OleVariant); dispid 30;
    procedure Container(ContID: Integer; OwnershipId: Integer; ContCount: Integer;
                        TareWeight: OleVariant); dispid 31;
    procedure ContainerTransport(TranspID: Integer; OwnerId: Integer; Count: Integer); dispid 32;
    procedure RefWagon(OwnerId: Integer; FullCount: Integer; EmptyCount: Integer;
                       SectionSize: Integer); dispid 33;
    procedure Support(SupportId: Integer; CounductorCount: Integer; AxisCount: Integer); dispid 40;
    procedure Rur2Usd(Rate: Double); dispid 50;
    procedure OnDate(OnDate: TDateTime); dispid 51;
  end;

// *********************************************************************//
// Interface: IDocumentAttr25
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {504C4A0E-2CA4-49AB-8E31-E3E70B50D4F3}
// *********************************************************************//
  IDocumentAttr25 = interface(IDocumentAttr24)
    ['{504C4A0E-2CA4-49AB-8E31-E3E70B50D4F3}']
    function Get_ContFootage: Integer; safecall;
    procedure Set_ContFootage(pVal: Integer); safecall;
    function GetAvailFootage(ContID: Integer): _RefBook; safecall;
    procedure Container2(ContID: Integer; EqUniContID: Integer; OwnershipId: Integer;
                         ContCount: Integer; TareWeight: OleVariant); safecall;
    procedure Container3(ContID: Integer; EqUniContID: Integer; Reserved: Integer;
                         OwnerId: Integer; ContCount: Integer; TareWeight: OleVariant); safecall;
    property ContFootage: Integer read Get_ContFootage write Set_ContFootage;
  end;

// *********************************************************************//
// DispIntf:  IDocumentAttr25Disp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {504C4A0E-2CA4-49AB-8E31-E3E70B50D4F3}
// *********************************************************************//
  IDocumentAttr25Disp = dispinterface
    ['{504C4A0E-2CA4-49AB-8E31-E3E70B50D4F3}']
    property ContFootage: Integer dispid 2501;
    function GetAvailFootage(ContID: Integer): _RefBook; dispid 2502;
    procedure Container2(ContID: Integer; EqUniContID: Integer; OwnershipId: Integer;
                         ContCount: Integer; TareWeight: OleVariant); dispid 2503;
    procedure Container3(ContID: Integer; EqUniContID: Integer; Reserved: Integer;
                         OwnerId: Integer; ContCount: Integer; TareWeight: OleVariant); dispid 2504;
    procedure SetCurrentLandCurrency(CurrencyId: Smallint); dispid 2307;
    procedure MxFreightListSetDefaultParams; dispid 2301;
    procedure MxFreightSetDefaultParams(Item: Smallint); dispid 2302;
    procedure MxFreightOversize(Item: Smallint; const OversizeIndex: WideString); dispid 2303;
    procedure MxFreightPerishable(Item: Smallint; Enable: WordBool); dispid 2304;
    procedure MxFreightDangPid(Item: Smallint; DangPid: Integer); dispid 2305;
    procedure MxFreightDanger(Item: Smallint; Enable: WordBool); dispid 2306;
    procedure SetLandRoadDirCurrency(LandId: Smallint; RoadId: Smallint; CurrencyId: Smallint;
                                     DirectionId: Byte); dispid 2201;
    property AltRoutesAvail: WordBool readonly dispid 2101;
    property AltRouteEnabled: WordBool readonly dispid 2102;
    property AltRouteId: Integer readonly dispid 2103;
    procedure EnableAltRoute(AltRouteId: Integer); dispid 2104;
    function GetAltRoutesRefBook: _RefBook; dispid 2105;
    procedure SetUncouplingStation(const Code: WideString; LandId: Integer); dispid 2001;
    procedure SetRepairStation(const Code: WideString; LandId: Integer); dispid 2002;
    property UncouplingAndRepairEnabled: WordBool dispid 2003;
    procedure SetDispStation(const Code: WideString; LandId: Integer); dispid 1901;
    property DispersionEnabled: WordBool dispid 14;
    procedure SetReadressingStation(const Code: WideString; LandId: Integer); dispid 1902;
    property ReadressingEnabled: WordBool dispid 15;
    procedure SetWashingStation(const Code: WideString; LandId: Integer); dispid 1903;
    property WashingEnabled: WordBool dispid 16;
    procedure SetReturnStation(const StationCode: WideString; RetLandId: Integer); dispid 1801;
    procedure SetReturnStationAsFromStation; dispid 1802;
    function GetCalcParameters: I2DimArrayHelper; dispid 1701;
    function GetAllCalcParameters: I2DimArrayHelper; dispid 1702;
    property CalcParameter[const Name: WideString]: ICalcParameter readonly dispid 1703;
    procedure SetLandCurrency(LandId: Integer; CurrencyId: Integer; DirectionId: Integer); dispid 1601;
    procedure SetCommonCurrency(CurrencyId: Integer); dispid 1602;
    procedure SetDangPid(DangPid: Integer); dispid 1501;
    property GuardedGroupBaseVCCount: Integer dispid 1401;
    property GuardedGroupDopVCCount: Integer dispid 1402;
    property PlanFormType: Smallint dispid 1301;
    procedure ContainerTransportKRK(TranspID: Integer; OwnerId: Integer; Count: Integer;
                                    OwnerId_DGV: Integer; NoCalcDGV: OleVariant); dispid 1201;
    property GuardedGroupVCCount: Integer dispid 1202;
    property VagonSectionCount: Integer dispid 1203;
    property BackRoutePresent: WordBool dispid 1204;
    procedure BufferWagon(TranspID: Integer; OwnerId: Integer; Count: Integer; Axis: OleVariant); dispid 1101;
    procedure BufferWagonOwnerFirm(Id: Integer); dispid 1102;
    procedure BufferWagonUsageMode(Id: Integer; ControlFrameWeight: OleVariant); dispid 1103;
    property ForwardThruRoute: IThruRoutes readonly dispid 53;
    property BackwardThruRoute: IThruRoutes readonly dispid 54;
    procedure CopyThruRouteFwdToBwd; dispid 55;
    procedure CopyThruRouteBwdToFwd; dispid 56;
    procedure AddEquip(EquipType: Integer; ForwardEquipWeightType: Integer;
                       BackwardEquipWeightType: Integer); dispid 42;
    function IsEquipWeight: WordBool; dispid 43;
    procedure EquipWeight(pVal: Double); dispid 44;
    procedure Bulkiness(const Index: WideString); dispid 52;
    procedure MXFreightAddEx(const ETSNGCode: WideString; const GNG8: WideString; Weight: Double;
                             IsGuard: Integer; out pIndex: OleVariant); dispid 39;
    procedure EmptyWagonEx(TranspID: Integer; OwnerId: Integer; Count: Integer;
                           const ETSNGCode: WideString; const GNG8: WideString; Axis: Integer;
                           TareWeight: Double); dispid 41;
    property FullRoute: IDocNode readonly dispid 38;
    procedure FlatWagonOwnerFirm(Id: Integer); dispid 36;
    procedure ContainerOwnerFirm(Id: Integer); dispid 37;
    procedure FreightEx(const ETSNGCode: WideString; const GNG6: WideString;
                        const GNG8: WideString; Weight: Double); dispid 28;
    procedure DispersionStation(const Code: WideString); dispid 27;
    procedure MxFreight(FreightSet: OleVariant); dispid 21;
    property MXFreightItem[Index: Integer; const ParamName: WideString]: OleVariant readonly dispid 22;
    procedure MXFreightAdd(CodeType: Integer; const FreightCode: WideString; Weight: Double;
                           IsGuard: Integer; out pIndex: OleVariant); dispid 23;
    procedure MXFreightDelete(Index: Integer); dispid 24;
    property MXFreightCount: Integer readonly dispid 25;
    procedure MXFreightClear; dispid 26;
    procedure EmptyWagon(TranspID: Integer; OwnerId: Integer; Count: Integer;
                         const FromCargoCode: WideString; Axis: Integer; TareWeight: Double); dispid 34;
    procedure WagonOwnerLand(OwnerLandID: Integer; IsUsageCharge: WordBool); dispid 35;
    procedure FromStation(const StationCode: WideString; SrcLandId: Integer); dispid 1;
    procedure ToStation(const StationCode: WideString; DstLandId: Integer); dispid 2;
    procedure CustomizeCalc(LandId: Integer; CalcType: OleVariant; Distance: OleVariant;
                            Currency: OleVariant); dispid 3;
    procedure Send(SendCat: Integer; SendId: Integer; ExitRoute: Integer; Speed: Integer); dispid 10;
    procedure Freight(const ETSNGCode: WideString; Weight: Double); dispid 20;
    procedure Wagon(TranspID: Integer; OwnerId: Integer; Count: Integer; GP: OleVariant); dispid 30;
    procedure Container(ContID: Integer; OwnershipId: Integer; ContCount: Integer;
                        TareWeight: OleVariant); dispid 31;
    procedure ContainerTransport(TranspID: Integer; OwnerId: Integer; Count: Integer); dispid 32;
    procedure RefWagon(OwnerId: Integer; FullCount: Integer; EmptyCount: Integer;
                       SectionSize: Integer); dispid 33;
    procedure Support(SupportId: Integer; CounductorCount: Integer; AxisCount: Integer); dispid 40;
    procedure Rur2Usd(Rate: Double); dispid 50;
    procedure OnDate(OnDate: TDateTime); dispid 51;
  end;

// *********************************************************************//
// Interface: IDocumentAttr26
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {F2D83359-FB4E-4A5F-B401-34E1FF11236F}
// *********************************************************************//
  IDocumentAttr26 = interface(IDocumentAttr25)
    ['{F2D83359-FB4E-4A5F-B401-34E1FF11236F}']
    function GetRunDays(Direction: Integer): Integer; safecall;
    function GetDopDays(Direction: Integer): Integer; safecall;
    function GetPeriodOfDelivery(Direction: Integer): Integer; safecall;
  end;

// *********************************************************************//
// DispIntf:  IDocumentAttr26Disp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {F2D83359-FB4E-4A5F-B401-34E1FF11236F}
// *********************************************************************//
  IDocumentAttr26Disp = dispinterface
    ['{F2D83359-FB4E-4A5F-B401-34E1FF11236F}']
    function GetRunDays(Direction: Integer): Integer; dispid 2601;
    function GetDopDays(Direction: Integer): Integer; dispid 2602;
    function GetPeriodOfDelivery(Direction: Integer): Integer; dispid 2603;
    property ContFootage: Integer dispid 2501;
    function GetAvailFootage(ContID: Integer): _RefBook; dispid 2502;
    procedure Container2(ContID: Integer; EqUniContID: Integer; OwnershipId: Integer;
                         ContCount: Integer; TareWeight: OleVariant); dispid 2503;
    procedure Container3(ContID: Integer; EqUniContID: Integer; Reserved: Integer;
                         OwnerId: Integer; ContCount: Integer; TareWeight: OleVariant); dispid 2504;
    procedure SetCurrentLandCurrency(CurrencyId: Smallint); dispid 2307;
    procedure MxFreightListSetDefaultParams; dispid 2301;
    procedure MxFreightSetDefaultParams(Item: Smallint); dispid 2302;
    procedure MxFreightOversize(Item: Smallint; const OversizeIndex: WideString); dispid 2303;
    procedure MxFreightPerishable(Item: Smallint; Enable: WordBool); dispid 2304;
    procedure MxFreightDangPid(Item: Smallint; DangPid: Integer); dispid 2305;
    procedure MxFreightDanger(Item: Smallint; Enable: WordBool); dispid 2306;
    procedure SetLandRoadDirCurrency(LandId: Smallint; RoadId: Smallint; CurrencyId: Smallint;
                                     DirectionId: Byte); dispid 2201;
    property AltRoutesAvail: WordBool readonly dispid 2101;
    property AltRouteEnabled: WordBool readonly dispid 2102;
    property AltRouteId: Integer readonly dispid 2103;
    procedure EnableAltRoute(AltRouteId: Integer); dispid 2104;
    function GetAltRoutesRefBook: _RefBook; dispid 2105;
    procedure SetUncouplingStation(const Code: WideString; LandId: Integer); dispid 2001;
    procedure SetRepairStation(const Code: WideString; LandId: Integer); dispid 2002;
    property UncouplingAndRepairEnabled: WordBool dispid 2003;
    procedure SetDispStation(const Code: WideString; LandId: Integer); dispid 1901;
    property DispersionEnabled: WordBool dispid 14;
    procedure SetReadressingStation(const Code: WideString; LandId: Integer); dispid 1902;
    property ReadressingEnabled: WordBool dispid 15;
    procedure SetWashingStation(const Code: WideString; LandId: Integer); dispid 1903;
    property WashingEnabled: WordBool dispid 16;
    procedure SetReturnStation(const StationCode: WideString; RetLandId: Integer); dispid 1801;
    procedure SetReturnStationAsFromStation; dispid 1802;
    function GetCalcParameters: I2DimArrayHelper; dispid 1701;
    function GetAllCalcParameters: I2DimArrayHelper; dispid 1702;
    property CalcParameter[const Name: WideString]: ICalcParameter readonly dispid 1703;
    procedure SetLandCurrency(LandId: Integer; CurrencyId: Integer; DirectionId: Integer); dispid 1601;
    procedure SetCommonCurrency(CurrencyId: Integer); dispid 1602;
    procedure SetDangPid(DangPid: Integer); dispid 1501;
    property GuardedGroupBaseVCCount: Integer dispid 1401;
    property GuardedGroupDopVCCount: Integer dispid 1402;
    property PlanFormType: Smallint dispid 1301;
    procedure ContainerTransportKRK(TranspID: Integer; OwnerId: Integer; Count: Integer;
                                    OwnerId_DGV: Integer; NoCalcDGV: OleVariant); dispid 1201;
    property GuardedGroupVCCount: Integer dispid 1202;
    property VagonSectionCount: Integer dispid 1203;
    property BackRoutePresent: WordBool dispid 1204;
    procedure BufferWagon(TranspID: Integer; OwnerId: Integer; Count: Integer; Axis: OleVariant); dispid 1101;
    procedure BufferWagonOwnerFirm(Id: Integer); dispid 1102;
    procedure BufferWagonUsageMode(Id: Integer; ControlFrameWeight: OleVariant); dispid 1103;
    property ForwardThruRoute: IThruRoutes readonly dispid 53;
    property BackwardThruRoute: IThruRoutes readonly dispid 54;
    procedure CopyThruRouteFwdToBwd; dispid 55;
    procedure CopyThruRouteBwdToFwd; dispid 56;
    procedure AddEquip(EquipType: Integer; ForwardEquipWeightType: Integer;
                       BackwardEquipWeightType: Integer); dispid 42;
    function IsEquipWeight: WordBool; dispid 43;
    procedure EquipWeight(pVal: Double); dispid 44;
    procedure Bulkiness(const Index: WideString); dispid 52;
    procedure MXFreightAddEx(const ETSNGCode: WideString; const GNG8: WideString; Weight: Double;
                             IsGuard: Integer; out pIndex: OleVariant); dispid 39;
    procedure EmptyWagonEx(TranspID: Integer; OwnerId: Integer; Count: Integer;
                           const ETSNGCode: WideString; const GNG8: WideString; Axis: Integer;
                           TareWeight: Double); dispid 41;
    property FullRoute: IDocNode readonly dispid 38;
    procedure FlatWagonOwnerFirm(Id: Integer); dispid 36;
    procedure ContainerOwnerFirm(Id: Integer); dispid 37;
    procedure FreightEx(const ETSNGCode: WideString; const GNG6: WideString;
                        const GNG8: WideString; Weight: Double); dispid 28;
    procedure DispersionStation(const Code: WideString); dispid 27;
    procedure MxFreight(FreightSet: OleVariant); dispid 21;
    property MXFreightItem[Index: Integer; const ParamName: WideString]: OleVariant readonly dispid 22;
    procedure MXFreightAdd(CodeType: Integer; const FreightCode: WideString; Weight: Double;
                           IsGuard: Integer; out pIndex: OleVariant); dispid 23;
    procedure MXFreightDelete(Index: Integer); dispid 24;
    property MXFreightCount: Integer readonly dispid 25;
    procedure MXFreightClear; dispid 26;
    procedure EmptyWagon(TranspID: Integer; OwnerId: Integer; Count: Integer;
                         const FromCargoCode: WideString; Axis: Integer; TareWeight: Double); dispid 34;
    procedure WagonOwnerLand(OwnerLandID: Integer; IsUsageCharge: WordBool); dispid 35;
    procedure FromStation(const StationCode: WideString; SrcLandId: Integer); dispid 1;
    procedure ToStation(const StationCode: WideString; DstLandId: Integer); dispid 2;
    procedure CustomizeCalc(LandId: Integer; CalcType: OleVariant; Distance: OleVariant;
                            Currency: OleVariant); dispid 3;
    procedure Send(SendCat: Integer; SendId: Integer; ExitRoute: Integer; Speed: Integer); dispid 10;
    procedure Freight(const ETSNGCode: WideString; Weight: Double); dispid 20;
    procedure Wagon(TranspID: Integer; OwnerId: Integer; Count: Integer; GP: OleVariant); dispid 30;
    procedure Container(ContID: Integer; OwnershipId: Integer; ContCount: Integer;
                        TareWeight: OleVariant); dispid 31;
    procedure ContainerTransport(TranspID: Integer; OwnerId: Integer; Count: Integer); dispid 32;
    procedure RefWagon(OwnerId: Integer; FullCount: Integer; EmptyCount: Integer;
                       SectionSize: Integer); dispid 33;
    procedure Support(SupportId: Integer; CounductorCount: Integer; AxisCount: Integer); dispid 40;
    procedure Rur2Usd(Rate: Double); dispid 50;
    procedure OnDate(OnDate: TDateTime); dispid 51;
  end;

// *********************************************************************//
// Interface: IDocumentAttr27
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {FB759267-AE68-4ACC-9E99-7181EBAC2CB0}
// *********************************************************************//
  IDocumentAttr27 = interface(IDocumentAttr26)
    ['{FB759267-AE68-4ACC-9E99-7181EBAC2CB0}']
    procedure SetMngFreightGroup(const Code: WideString; Danger: WordBool); safecall;
  end;

// *********************************************************************//
// DispIntf:  IDocumentAttr27Disp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {FB759267-AE68-4ACC-9E99-7181EBAC2CB0}
// *********************************************************************//
  IDocumentAttr27Disp = dispinterface
    ['{FB759267-AE68-4ACC-9E99-7181EBAC2CB0}']
    procedure SetMngFreightGroup(const Code: WideString; Danger: WordBool); dispid 2701;
    function GetRunDays(Direction: Integer): Integer; dispid 2601;
    function GetDopDays(Direction: Integer): Integer; dispid 2602;
    function GetPeriodOfDelivery(Direction: Integer): Integer; dispid 2603;
    property ContFootage: Integer dispid 2501;
    function GetAvailFootage(ContID: Integer): _RefBook; dispid 2502;
    procedure Container2(ContID: Integer; EqUniContID: Integer; OwnershipId: Integer;
                         ContCount: Integer; TareWeight: OleVariant); dispid 2503;
    procedure Container3(ContID: Integer; EqUniContID: Integer; Reserved: Integer;
                         OwnerId: Integer; ContCount: Integer; TareWeight: OleVariant); dispid 2504;
    procedure SetCurrentLandCurrency(CurrencyId: Smallint); dispid 2307;
    procedure MxFreightListSetDefaultParams; dispid 2301;
    procedure MxFreightSetDefaultParams(Item: Smallint); dispid 2302;
    procedure MxFreightOversize(Item: Smallint; const OversizeIndex: WideString); dispid 2303;
    procedure MxFreightPerishable(Item: Smallint; Enable: WordBool); dispid 2304;
    procedure MxFreightDangPid(Item: Smallint; DangPid: Integer); dispid 2305;
    procedure MxFreightDanger(Item: Smallint; Enable: WordBool); dispid 2306;
    procedure SetLandRoadDirCurrency(LandId: Smallint; RoadId: Smallint; CurrencyId: Smallint;
                                     DirectionId: Byte); dispid 2201;
    property AltRoutesAvail: WordBool readonly dispid 2101;
    property AltRouteEnabled: WordBool readonly dispid 2102;
    property AltRouteId: Integer readonly dispid 2103;
    procedure EnableAltRoute(AltRouteId: Integer); dispid 2104;
    function GetAltRoutesRefBook: _RefBook; dispid 2105;
    procedure SetUncouplingStation(const Code: WideString; LandId: Integer); dispid 2001;
    procedure SetRepairStation(const Code: WideString; LandId: Integer); dispid 2002;
    property UncouplingAndRepairEnabled: WordBool dispid 2003;
    procedure SetDispStation(const Code: WideString; LandId: Integer); dispid 1901;
    property DispersionEnabled: WordBool dispid 14;
    procedure SetReadressingStation(const Code: WideString; LandId: Integer); dispid 1902;
    property ReadressingEnabled: WordBool dispid 15;
    procedure SetWashingStation(const Code: WideString; LandId: Integer); dispid 1903;
    property WashingEnabled: WordBool dispid 16;
    procedure SetReturnStation(const StationCode: WideString; RetLandId: Integer); dispid 1801;
    procedure SetReturnStationAsFromStation; dispid 1802;
    function GetCalcParameters: I2DimArrayHelper; dispid 1701;
    function GetAllCalcParameters: I2DimArrayHelper; dispid 1702;
    property CalcParameter[const Name: WideString]: ICalcParameter readonly dispid 1703;
    procedure SetLandCurrency(LandId: Integer; CurrencyId: Integer; DirectionId: Integer); dispid 1601;
    procedure SetCommonCurrency(CurrencyId: Integer); dispid 1602;
    procedure SetDangPid(DangPid: Integer); dispid 1501;
    property GuardedGroupBaseVCCount: Integer dispid 1401;
    property GuardedGroupDopVCCount: Integer dispid 1402;
    property PlanFormType: Smallint dispid 1301;
    procedure ContainerTransportKRK(TranspID: Integer; OwnerId: Integer; Count: Integer;
                                    OwnerId_DGV: Integer; NoCalcDGV: OleVariant); dispid 1201;
    property GuardedGroupVCCount: Integer dispid 1202;
    property VagonSectionCount: Integer dispid 1203;
    property BackRoutePresent: WordBool dispid 1204;
    procedure BufferWagon(TranspID: Integer; OwnerId: Integer; Count: Integer; Axis: OleVariant); dispid 1101;
    procedure BufferWagonOwnerFirm(Id: Integer); dispid 1102;
    procedure BufferWagonUsageMode(Id: Integer; ControlFrameWeight: OleVariant); dispid 1103;
    property ForwardThruRoute: IThruRoutes readonly dispid 53;
    property BackwardThruRoute: IThruRoutes readonly dispid 54;
    procedure CopyThruRouteFwdToBwd; dispid 55;
    procedure CopyThruRouteBwdToFwd; dispid 56;
    procedure AddEquip(EquipType: Integer; ForwardEquipWeightType: Integer;
                       BackwardEquipWeightType: Integer); dispid 42;
    function IsEquipWeight: WordBool; dispid 43;
    procedure EquipWeight(pVal: Double); dispid 44;
    procedure Bulkiness(const Index: WideString); dispid 52;
    procedure MXFreightAddEx(const ETSNGCode: WideString; const GNG8: WideString; Weight: Double;
                             IsGuard: Integer; out pIndex: OleVariant); dispid 39;
    procedure EmptyWagonEx(TranspID: Integer; OwnerId: Integer; Count: Integer;
                           const ETSNGCode: WideString; const GNG8: WideString; Axis: Integer;
                           TareWeight: Double); dispid 41;
    property FullRoute: IDocNode readonly dispid 38;
    procedure FlatWagonOwnerFirm(Id: Integer); dispid 36;
    procedure ContainerOwnerFirm(Id: Integer); dispid 37;
    procedure FreightEx(const ETSNGCode: WideString; const GNG6: WideString;
                        const GNG8: WideString; Weight: Double); dispid 28;
    procedure DispersionStation(const Code: WideString); dispid 27;
    procedure MxFreight(FreightSet: OleVariant); dispid 21;
    property MXFreightItem[Index: Integer; const ParamName: WideString]: OleVariant readonly dispid 22;
    procedure MXFreightAdd(CodeType: Integer; const FreightCode: WideString; Weight: Double;
                           IsGuard: Integer; out pIndex: OleVariant); dispid 23;
    procedure MXFreightDelete(Index: Integer); dispid 24;
    property MXFreightCount: Integer readonly dispid 25;
    procedure MXFreightClear; dispid 26;
    procedure EmptyWagon(TranspID: Integer; OwnerId: Integer; Count: Integer;
                         const FromCargoCode: WideString; Axis: Integer; TareWeight: Double); dispid 34;
    procedure WagonOwnerLand(OwnerLandID: Integer; IsUsageCharge: WordBool); dispid 35;
    procedure FromStation(const StationCode: WideString; SrcLandId: Integer); dispid 1;
    procedure ToStation(const StationCode: WideString; DstLandId: Integer); dispid 2;
    procedure CustomizeCalc(LandId: Integer; CalcType: OleVariant; Distance: OleVariant;
                            Currency: OleVariant); dispid 3;
    procedure Send(SendCat: Integer; SendId: Integer; ExitRoute: Integer; Speed: Integer); dispid 10;
    procedure Freight(const ETSNGCode: WideString; Weight: Double); dispid 20;
    procedure Wagon(TranspID: Integer; OwnerId: Integer; Count: Integer; GP: OleVariant); dispid 30;
    procedure Container(ContID: Integer; OwnershipId: Integer; ContCount: Integer;
                        TareWeight: OleVariant); dispid 31;
    procedure ContainerTransport(TranspID: Integer; OwnerId: Integer; Count: Integer); dispid 32;
    procedure RefWagon(OwnerId: Integer; FullCount: Integer; EmptyCount: Integer;
                       SectionSize: Integer); dispid 33;
    procedure Support(SupportId: Integer; CounductorCount: Integer; AxisCount: Integer); dispid 40;
    procedure Rur2Usd(Rate: Double); dispid 50;
    procedure OnDate(OnDate: TDateTime); dispid 51;
  end;

// *********************************************************************//
// Interface: IDocumentAttr28
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {90BEC9D0-9B07-4515-BF78-D1A7B538C77C}
// *********************************************************************//
  IDocumentAttr28 = interface(IDocumentAttr27)
    ['{90BEC9D0-9B07-4515-BF78-D1A7B538C77C}']
    function GngRefbookFilteredByEtsngCode(const ETSNGCode: WideString; Strong: WordBool): _RefBook; safecall;
    function EtsngRefbookFilteredByGngCode(const GngCode: WideString; Strong: WordBool): _RefBook; safecall;
    function GngCodesFilteredByEtsngCode(const ETSNGCode: WideString; Strong: WordBool): OleVariant; safecall;
    function EtsngCodesFilteredByGngCode(const GngCode: WideString; Strong: WordBool): OleVariant; safecall;
  end;

// *********************************************************************//
// DispIntf:  IDocumentAttr28Disp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {90BEC9D0-9B07-4515-BF78-D1A7B538C77C}
// *********************************************************************//
  IDocumentAttr28Disp = dispinterface
    ['{90BEC9D0-9B07-4515-BF78-D1A7B538C77C}']
    function GngRefbookFilteredByEtsngCode(const ETSNGCode: WideString; Strong: WordBool): _RefBook; dispid 2801;
    function EtsngRefbookFilteredByGngCode(const GngCode: WideString; Strong: WordBool): _RefBook; dispid 2802;
    function GngCodesFilteredByEtsngCode(const ETSNGCode: WideString; Strong: WordBool): OleVariant; dispid 2803;
    function EtsngCodesFilteredByGngCode(const GngCode: WideString; Strong: WordBool): OleVariant; dispid 2804;
    procedure SetMngFreightGroup(const Code: WideString; Danger: WordBool); dispid 2701;
    function GetRunDays(Direction: Integer): Integer; dispid 2601;
    function GetDopDays(Direction: Integer): Integer; dispid 2602;
    function GetPeriodOfDelivery(Direction: Integer): Integer; dispid 2603;
    property ContFootage: Integer dispid 2501;
    function GetAvailFootage(ContID: Integer): _RefBook; dispid 2502;
    procedure Container2(ContID: Integer; EqUniContID: Integer; OwnershipId: Integer;
                         ContCount: Integer; TareWeight: OleVariant); dispid 2503;
    procedure Container3(ContID: Integer; EqUniContID: Integer; Reserved: Integer;
                         OwnerId: Integer; ContCount: Integer; TareWeight: OleVariant); dispid 2504;
    procedure SetCurrentLandCurrency(CurrencyId: Smallint); dispid 2307;
    procedure MxFreightListSetDefaultParams; dispid 2301;
    procedure MxFreightSetDefaultParams(Item: Smallint); dispid 2302;
    procedure MxFreightOversize(Item: Smallint; const OversizeIndex: WideString); dispid 2303;
    procedure MxFreightPerishable(Item: Smallint; Enable: WordBool); dispid 2304;
    procedure MxFreightDangPid(Item: Smallint; DangPid: Integer); dispid 2305;
    procedure MxFreightDanger(Item: Smallint; Enable: WordBool); dispid 2306;
    procedure SetLandRoadDirCurrency(LandId: Smallint; RoadId: Smallint; CurrencyId: Smallint;
                                     DirectionId: Byte); dispid 2201;
    property AltRoutesAvail: WordBool readonly dispid 2101;
    property AltRouteEnabled: WordBool readonly dispid 2102;
    property AltRouteId: Integer readonly dispid 2103;
    procedure EnableAltRoute(AltRouteId: Integer); dispid 2104;
    function GetAltRoutesRefBook: _RefBook; dispid 2105;
    procedure SetUncouplingStation(const Code: WideString; LandId: Integer); dispid 2001;
    procedure SetRepairStation(const Code: WideString; LandId: Integer); dispid 2002;
    property UncouplingAndRepairEnabled: WordBool dispid 2003;
    procedure SetDispStation(const Code: WideString; LandId: Integer); dispid 1901;
    property DispersionEnabled: WordBool dispid 14;
    procedure SetReadressingStation(const Code: WideString; LandId: Integer); dispid 1902;
    property ReadressingEnabled: WordBool dispid 15;
    procedure SetWashingStation(const Code: WideString; LandId: Integer); dispid 1903;
    property WashingEnabled: WordBool dispid 16;
    procedure SetReturnStation(const StationCode: WideString; RetLandId: Integer); dispid 1801;
    procedure SetReturnStationAsFromStation; dispid 1802;
    function GetCalcParameters: I2DimArrayHelper; dispid 1701;
    function GetAllCalcParameters: I2DimArrayHelper; dispid 1702;
    property CalcParameter[const Name: WideString]: ICalcParameter readonly dispid 1703;
    procedure SetLandCurrency(LandId: Integer; CurrencyId: Integer; DirectionId: Integer); dispid 1601;
    procedure SetCommonCurrency(CurrencyId: Integer); dispid 1602;
    procedure SetDangPid(DangPid: Integer); dispid 1501;
    property GuardedGroupBaseVCCount: Integer dispid 1401;
    property GuardedGroupDopVCCount: Integer dispid 1402;
    property PlanFormType: Smallint dispid 1301;
    procedure ContainerTransportKRK(TranspID: Integer; OwnerId: Integer; Count: Integer;
                                    OwnerId_DGV: Integer; NoCalcDGV: OleVariant); dispid 1201;
    property GuardedGroupVCCount: Integer dispid 1202;
    property VagonSectionCount: Integer dispid 1203;
    property BackRoutePresent: WordBool dispid 1204;
    procedure BufferWagon(TranspID: Integer; OwnerId: Integer; Count: Integer; Axis: OleVariant); dispid 1101;
    procedure BufferWagonOwnerFirm(Id: Integer); dispid 1102;
    procedure BufferWagonUsageMode(Id: Integer; ControlFrameWeight: OleVariant); dispid 1103;
    property ForwardThruRoute: IThruRoutes readonly dispid 53;
    property BackwardThruRoute: IThruRoutes readonly dispid 54;
    procedure CopyThruRouteFwdToBwd; dispid 55;
    procedure CopyThruRouteBwdToFwd; dispid 56;
    procedure AddEquip(EquipType: Integer; ForwardEquipWeightType: Integer;
                       BackwardEquipWeightType: Integer); dispid 42;
    function IsEquipWeight: WordBool; dispid 43;
    procedure EquipWeight(pVal: Double); dispid 44;
    procedure Bulkiness(const Index: WideString); dispid 52;
    procedure MXFreightAddEx(const ETSNGCode: WideString; const GNG8: WideString; Weight: Double;
                             IsGuard: Integer; out pIndex: OleVariant); dispid 39;
    procedure EmptyWagonEx(TranspID: Integer; OwnerId: Integer; Count: Integer;
                           const ETSNGCode: WideString; const GNG8: WideString; Axis: Integer;
                           TareWeight: Double); dispid 41;
    property FullRoute: IDocNode readonly dispid 38;
    procedure FlatWagonOwnerFirm(Id: Integer); dispid 36;
    procedure ContainerOwnerFirm(Id: Integer); dispid 37;
    procedure FreightEx(const ETSNGCode: WideString; const GNG6: WideString;
                        const GNG8: WideString; Weight: Double); dispid 28;
    procedure DispersionStation(const Code: WideString); dispid 27;
    procedure MxFreight(FreightSet: OleVariant); dispid 21;
    property MXFreightItem[Index: Integer; const ParamName: WideString]: OleVariant readonly dispid 22;
    procedure MXFreightAdd(CodeType: Integer; const FreightCode: WideString; Weight: Double;
                           IsGuard: Integer; out pIndex: OleVariant); dispid 23;
    procedure MXFreightDelete(Index: Integer); dispid 24;
    property MXFreightCount: Integer readonly dispid 25;
    procedure MXFreightClear; dispid 26;
    procedure EmptyWagon(TranspID: Integer; OwnerId: Integer; Count: Integer;
                         const FromCargoCode: WideString; Axis: Integer; TareWeight: Double); dispid 34;
    procedure WagonOwnerLand(OwnerLandID: Integer; IsUsageCharge: WordBool); dispid 35;
    procedure FromStation(const StationCode: WideString; SrcLandId: Integer); dispid 1;
    procedure ToStation(const StationCode: WideString; DstLandId: Integer); dispid 2;
    procedure CustomizeCalc(LandId: Integer; CalcType: OleVariant; Distance: OleVariant;
                            Currency: OleVariant); dispid 3;
    procedure Send(SendCat: Integer; SendId: Integer; ExitRoute: Integer; Speed: Integer); dispid 10;
    procedure Freight(const ETSNGCode: WideString; Weight: Double); dispid 20;
    procedure Wagon(TranspID: Integer; OwnerId: Integer; Count: Integer; GP: OleVariant); dispid 30;
    procedure Container(ContID: Integer; OwnershipId: Integer; ContCount: Integer;
                        TareWeight: OleVariant); dispid 31;
    procedure ContainerTransport(TranspID: Integer; OwnerId: Integer; Count: Integer); dispid 32;
    procedure RefWagon(OwnerId: Integer; FullCount: Integer; EmptyCount: Integer;
                       SectionSize: Integer); dispid 33;
    procedure Support(SupportId: Integer; CounductorCount: Integer; AxisCount: Integer); dispid 40;
    procedure Rur2Usd(Rate: Double); dispid 50;
    procedure OnDate(OnDate: TDateTime); dispid 51;
  end;

// *********************************************************************//
// Interface: IDocumentAttr29
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {FE390FE2-9DE6-480A-B906-F31E9B19787E}
// *********************************************************************//
  IDocumentAttr29 = interface(IDocumentAttr28)
    ['{FE390FE2-9DE6-480A-B906-F31E9B19787E}']
    procedure SetWagonByNumber(const Number: WideString); safecall;
  end;

// *********************************************************************//
// DispIntf:  IDocumentAttr29Disp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {FE390FE2-9DE6-480A-B906-F31E9B19787E}
// *********************************************************************//
  IDocumentAttr29Disp = dispinterface
    ['{FE390FE2-9DE6-480A-B906-F31E9B19787E}']
    procedure SetWagonByNumber(const Number: WideString); dispid 2901;
    function GngRefbookFilteredByEtsngCode(const ETSNGCode: WideString; Strong: WordBool): _RefBook; dispid 2801;
    function EtsngRefbookFilteredByGngCode(const GngCode: WideString; Strong: WordBool): _RefBook; dispid 2802;
    function GngCodesFilteredByEtsngCode(const ETSNGCode: WideString; Strong: WordBool): OleVariant; dispid 2803;
    function EtsngCodesFilteredByGngCode(const GngCode: WideString; Strong: WordBool): OleVariant; dispid 2804;
    procedure SetMngFreightGroup(const Code: WideString; Danger: WordBool); dispid 2701;
    function GetRunDays(Direction: Integer): Integer; dispid 2601;
    function GetDopDays(Direction: Integer): Integer; dispid 2602;
    function GetPeriodOfDelivery(Direction: Integer): Integer; dispid 2603;
    property ContFootage: Integer dispid 2501;
    function GetAvailFootage(ContID: Integer): _RefBook; dispid 2502;
    procedure Container2(ContID: Integer; EqUniContID: Integer; OwnershipId: Integer;
                         ContCount: Integer; TareWeight: OleVariant); dispid 2503;
    procedure Container3(ContID: Integer; EqUniContID: Integer; Reserved: Integer;
                         OwnerId: Integer; ContCount: Integer; TareWeight: OleVariant); dispid 2504;
    procedure SetCurrentLandCurrency(CurrencyId: Smallint); dispid 2307;
    procedure MxFreightListSetDefaultParams; dispid 2301;
    procedure MxFreightSetDefaultParams(Item: Smallint); dispid 2302;
    procedure MxFreightOversize(Item: Smallint; const OversizeIndex: WideString); dispid 2303;
    procedure MxFreightPerishable(Item: Smallint; Enable: WordBool); dispid 2304;
    procedure MxFreightDangPid(Item: Smallint; DangPid: Integer); dispid 2305;
    procedure MxFreightDanger(Item: Smallint; Enable: WordBool); dispid 2306;
    procedure SetLandRoadDirCurrency(LandId: Smallint; RoadId: Smallint; CurrencyId: Smallint;
                                     DirectionId: Byte); dispid 2201;
    property AltRoutesAvail: WordBool readonly dispid 2101;
    property AltRouteEnabled: WordBool readonly dispid 2102;
    property AltRouteId: Integer readonly dispid 2103;
    procedure EnableAltRoute(AltRouteId: Integer); dispid 2104;
    function GetAltRoutesRefBook: _RefBook; dispid 2105;
    procedure SetUncouplingStation(const Code: WideString; LandId: Integer); dispid 2001;
    procedure SetRepairStation(const Code: WideString; LandId: Integer); dispid 2002;
    property UncouplingAndRepairEnabled: WordBool dispid 2003;
    procedure SetDispStation(const Code: WideString; LandId: Integer); dispid 1901;
    property DispersionEnabled: WordBool dispid 14;
    procedure SetReadressingStation(const Code: WideString; LandId: Integer); dispid 1902;
    property ReadressingEnabled: WordBool dispid 15;
    procedure SetWashingStation(const Code: WideString; LandId: Integer); dispid 1903;
    property WashingEnabled: WordBool dispid 16;
    procedure SetReturnStation(const StationCode: WideString; RetLandId: Integer); dispid 1801;
    procedure SetReturnStationAsFromStation; dispid 1802;
    function GetCalcParameters: I2DimArrayHelper; dispid 1701;
    function GetAllCalcParameters: I2DimArrayHelper; dispid 1702;
    property CalcParameter[const Name: WideString]: ICalcParameter readonly dispid 1703;
    procedure SetLandCurrency(LandId: Integer; CurrencyId: Integer; DirectionId: Integer); dispid 1601;
    procedure SetCommonCurrency(CurrencyId: Integer); dispid 1602;
    procedure SetDangPid(DangPid: Integer); dispid 1501;
    property GuardedGroupBaseVCCount: Integer dispid 1401;
    property GuardedGroupDopVCCount: Integer dispid 1402;
    property PlanFormType: Smallint dispid 1301;
    procedure ContainerTransportKRK(TranspID: Integer; OwnerId: Integer; Count: Integer;
                                    OwnerId_DGV: Integer; NoCalcDGV: OleVariant); dispid 1201;
    property GuardedGroupVCCount: Integer dispid 1202;
    property VagonSectionCount: Integer dispid 1203;
    property BackRoutePresent: WordBool dispid 1204;
    procedure BufferWagon(TranspID: Integer; OwnerId: Integer; Count: Integer; Axis: OleVariant); dispid 1101;
    procedure BufferWagonOwnerFirm(Id: Integer); dispid 1102;
    procedure BufferWagonUsageMode(Id: Integer; ControlFrameWeight: OleVariant); dispid 1103;
    property ForwardThruRoute: IThruRoutes readonly dispid 53;
    property BackwardThruRoute: IThruRoutes readonly dispid 54;
    procedure CopyThruRouteFwdToBwd; dispid 55;
    procedure CopyThruRouteBwdToFwd; dispid 56;
    procedure AddEquip(EquipType: Integer; ForwardEquipWeightType: Integer;
                       BackwardEquipWeightType: Integer); dispid 42;
    function IsEquipWeight: WordBool; dispid 43;
    procedure EquipWeight(pVal: Double); dispid 44;
    procedure Bulkiness(const Index: WideString); dispid 52;
    procedure MXFreightAddEx(const ETSNGCode: WideString; const GNG8: WideString; Weight: Double;
                             IsGuard: Integer; out pIndex: OleVariant); dispid 39;
    procedure EmptyWagonEx(TranspID: Integer; OwnerId: Integer; Count: Integer;
                           const ETSNGCode: WideString; const GNG8: WideString; Axis: Integer;
                           TareWeight: Double); dispid 41;
    property FullRoute: IDocNode readonly dispid 38;
    procedure FlatWagonOwnerFirm(Id: Integer); dispid 36;
    procedure ContainerOwnerFirm(Id: Integer); dispid 37;
    procedure FreightEx(const ETSNGCode: WideString; const GNG6: WideString;
                        const GNG8: WideString; Weight: Double); dispid 28;
    procedure DispersionStation(const Code: WideString); dispid 27;
    procedure MxFreight(FreightSet: OleVariant); dispid 21;
    property MXFreightItem[Index: Integer; const ParamName: WideString]: OleVariant readonly dispid 22;
    procedure MXFreightAdd(CodeType: Integer; const FreightCode: WideString; Weight: Double;
                           IsGuard: Integer; out pIndex: OleVariant); dispid 23;
    procedure MXFreightDelete(Index: Integer); dispid 24;
    property MXFreightCount: Integer readonly dispid 25;
    procedure MXFreightClear; dispid 26;
    procedure EmptyWagon(TranspID: Integer; OwnerId: Integer; Count: Integer;
                         const FromCargoCode: WideString; Axis: Integer; TareWeight: Double); dispid 34;
    procedure WagonOwnerLand(OwnerLandID: Integer; IsUsageCharge: WordBool); dispid 35;
    procedure FromStation(const StationCode: WideString; SrcLandId: Integer); dispid 1;
    procedure ToStation(const StationCode: WideString; DstLandId: Integer); dispid 2;
    procedure CustomizeCalc(LandId: Integer; CalcType: OleVariant; Distance: OleVariant;
                            Currency: OleVariant); dispid 3;
    procedure Send(SendCat: Integer; SendId: Integer; ExitRoute: Integer; Speed: Integer); dispid 10;
    procedure Freight(const ETSNGCode: WideString; Weight: Double); dispid 20;
    procedure Wagon(TranspID: Integer; OwnerId: Integer; Count: Integer; GP: OleVariant); dispid 30;
    procedure Container(ContID: Integer; OwnershipId: Integer; ContCount: Integer;
                        TareWeight: OleVariant); dispid 31;
    procedure ContainerTransport(TranspID: Integer; OwnerId: Integer; Count: Integer); dispid 32;
    procedure RefWagon(OwnerId: Integer; FullCount: Integer; EmptyCount: Integer;
                       SectionSize: Integer); dispid 33;
    procedure Support(SupportId: Integer; CounductorCount: Integer; AxisCount: Integer); dispid 40;
    procedure Rur2Usd(Rate: Double); dispid 50;
    procedure OnDate(OnDate: TDateTime); dispid 51;
  end;

// *********************************************************************//
// Interface: IDocumentAttr30
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {6A142B28-C0F8-4B8B-AAFB-B741AB6A38C1}
// *********************************************************************//
  IDocumentAttr30 = interface(IDocumentAttr29)
    ['{6A142B28-C0F8-4B8B-AAFB-B741AB6A38C1}']
    procedure FromStationEx(const StationCode: WideString; StationLandId: Integer;
                            SrcLandId: Integer); safecall;
    procedure ToStationEx(const StationCode: WideString; StationLandId: Integer; DstLandId: Integer); safecall;
    procedure SetReturnStationEx(const StationCode: WideString; StationLandId: Integer;
                                 RetLandId: Integer); safecall;
  end;

// *********************************************************************//
// DispIntf:  IDocumentAttr30Disp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {6A142B28-C0F8-4B8B-AAFB-B741AB6A38C1}
// *********************************************************************//
  IDocumentAttr30Disp = dispinterface
    ['{6A142B28-C0F8-4B8B-AAFB-B741AB6A38C1}']
    procedure FromStationEx(const StationCode: WideString; StationLandId: Integer;
                            SrcLandId: Integer); dispid 3001;
    procedure ToStationEx(const StationCode: WideString; StationLandId: Integer; DstLandId: Integer); dispid 3002;
    procedure SetReturnStationEx(const StationCode: WideString; StationLandId: Integer;
                                 RetLandId: Integer); dispid 3003;
    procedure SetWagonByNumber(const Number: WideString); dispid 2901;
    function GngRefbookFilteredByEtsngCode(const ETSNGCode: WideString; Strong: WordBool): _RefBook; dispid 2801;
    function EtsngRefbookFilteredByGngCode(const GngCode: WideString; Strong: WordBool): _RefBook; dispid 2802;
    function GngCodesFilteredByEtsngCode(const ETSNGCode: WideString; Strong: WordBool): OleVariant; dispid 2803;
    function EtsngCodesFilteredByGngCode(const GngCode: WideString; Strong: WordBool): OleVariant; dispid 2804;
    procedure SetMngFreightGroup(const Code: WideString; Danger: WordBool); dispid 2701;
    function GetRunDays(Direction: Integer): Integer; dispid 2601;
    function GetDopDays(Direction: Integer): Integer; dispid 2602;
    function GetPeriodOfDelivery(Direction: Integer): Integer; dispid 2603;
    property ContFootage: Integer dispid 2501;
    function GetAvailFootage(ContID: Integer): _RefBook; dispid 2502;
    procedure Container2(ContID: Integer; EqUniContID: Integer; OwnershipId: Integer;
                         ContCount: Integer; TareWeight: OleVariant); dispid 2503;
    procedure Container3(ContID: Integer; EqUniContID: Integer; Reserved: Integer;
                         OwnerId: Integer; ContCount: Integer; TareWeight: OleVariant); dispid 2504;
    procedure SetCurrentLandCurrency(CurrencyId: Smallint); dispid 2307;
    procedure MxFreightListSetDefaultParams; dispid 2301;
    procedure MxFreightSetDefaultParams(Item: Smallint); dispid 2302;
    procedure MxFreightOversize(Item: Smallint; const OversizeIndex: WideString); dispid 2303;
    procedure MxFreightPerishable(Item: Smallint; Enable: WordBool); dispid 2304;
    procedure MxFreightDangPid(Item: Smallint; DangPid: Integer); dispid 2305;
    procedure MxFreightDanger(Item: Smallint; Enable: WordBool); dispid 2306;
    procedure SetLandRoadDirCurrency(LandId: Smallint; RoadId: Smallint; CurrencyId: Smallint;
                                     DirectionId: Byte); dispid 2201;
    property AltRoutesAvail: WordBool readonly dispid 2101;
    property AltRouteEnabled: WordBool readonly dispid 2102;
    property AltRouteId: Integer readonly dispid 2103;
    procedure EnableAltRoute(AltRouteId: Integer); dispid 2104;
    function GetAltRoutesRefBook: _RefBook; dispid 2105;
    procedure SetUncouplingStation(const Code: WideString; LandId: Integer); dispid 2001;
    procedure SetRepairStation(const Code: WideString; LandId: Integer); dispid 2002;
    property UncouplingAndRepairEnabled: WordBool dispid 2003;
    procedure SetDispStation(const Code: WideString; LandId: Integer); dispid 1901;
    property DispersionEnabled: WordBool dispid 14;
    procedure SetReadressingStation(const Code: WideString; LandId: Integer); dispid 1902;
    property ReadressingEnabled: WordBool dispid 15;
    procedure SetWashingStation(const Code: WideString; LandId: Integer); dispid 1903;
    property WashingEnabled: WordBool dispid 16;
    procedure SetReturnStation(const StationCode: WideString; RetLandId: Integer); dispid 1801;
    procedure SetReturnStationAsFromStation; dispid 1802;
    function GetCalcParameters: I2DimArrayHelper; dispid 1701;
    function GetAllCalcParameters: I2DimArrayHelper; dispid 1702;
    property CalcParameter[const Name: WideString]: ICalcParameter readonly dispid 1703;
    procedure SetLandCurrency(LandId: Integer; CurrencyId: Integer; DirectionId: Integer); dispid 1601;
    procedure SetCommonCurrency(CurrencyId: Integer); dispid 1602;
    procedure SetDangPid(DangPid: Integer); dispid 1501;
    property GuardedGroupBaseVCCount: Integer dispid 1401;
    property GuardedGroupDopVCCount: Integer dispid 1402;
    property PlanFormType: Smallint dispid 1301;
    procedure ContainerTransportKRK(TranspID: Integer; OwnerId: Integer; Count: Integer;
                                    OwnerId_DGV: Integer; NoCalcDGV: OleVariant); dispid 1201;
    property GuardedGroupVCCount: Integer dispid 1202;
    property VagonSectionCount: Integer dispid 1203;
    property BackRoutePresent: WordBool dispid 1204;
    procedure BufferWagon(TranspID: Integer; OwnerId: Integer; Count: Integer; Axis: OleVariant); dispid 1101;
    procedure BufferWagonOwnerFirm(Id: Integer); dispid 1102;
    procedure BufferWagonUsageMode(Id: Integer; ControlFrameWeight: OleVariant); dispid 1103;
    property ForwardThruRoute: IThruRoutes readonly dispid 53;
    property BackwardThruRoute: IThruRoutes readonly dispid 54;
    procedure CopyThruRouteFwdToBwd; dispid 55;
    procedure CopyThruRouteBwdToFwd; dispid 56;
    procedure AddEquip(EquipType: Integer; ForwardEquipWeightType: Integer;
                       BackwardEquipWeightType: Integer); dispid 42;
    function IsEquipWeight: WordBool; dispid 43;
    procedure EquipWeight(pVal: Double); dispid 44;
    procedure Bulkiness(const Index: WideString); dispid 52;
    procedure MXFreightAddEx(const ETSNGCode: WideString; const GNG8: WideString; Weight: Double;
                             IsGuard: Integer; out pIndex: OleVariant); dispid 39;
    procedure EmptyWagonEx(TranspID: Integer; OwnerId: Integer; Count: Integer;
                           const ETSNGCode: WideString; const GNG8: WideString; Axis: Integer;
                           TareWeight: Double); dispid 41;
    property FullRoute: IDocNode readonly dispid 38;
    procedure FlatWagonOwnerFirm(Id: Integer); dispid 36;
    procedure ContainerOwnerFirm(Id: Integer); dispid 37;
    procedure FreightEx(const ETSNGCode: WideString; const GNG6: WideString;
                        const GNG8: WideString; Weight: Double); dispid 28;
    procedure DispersionStation(const Code: WideString); dispid 27;
    procedure MxFreight(FreightSet: OleVariant); dispid 21;
    property MXFreightItem[Index: Integer; const ParamName: WideString]: OleVariant readonly dispid 22;
    procedure MXFreightAdd(CodeType: Integer; const FreightCode: WideString; Weight: Double;
                           IsGuard: Integer; out pIndex: OleVariant); dispid 23;
    procedure MXFreightDelete(Index: Integer); dispid 24;
    property MXFreightCount: Integer readonly dispid 25;
    procedure MXFreightClear; dispid 26;
    procedure EmptyWagon(TranspID: Integer; OwnerId: Integer; Count: Integer;
                         const FromCargoCode: WideString; Axis: Integer; TareWeight: Double); dispid 34;
    procedure WagonOwnerLand(OwnerLandID: Integer; IsUsageCharge: WordBool); dispid 35;
    procedure FromStation(const StationCode: WideString; SrcLandId: Integer); dispid 1;
    procedure ToStation(const StationCode: WideString; DstLandId: Integer); dispid 2;
    procedure CustomizeCalc(LandId: Integer; CalcType: OleVariant; Distance: OleVariant;
                            Currency: OleVariant); dispid 3;
    procedure Send(SendCat: Integer; SendId: Integer; ExitRoute: Integer; Speed: Integer); dispid 10;
    procedure Freight(const ETSNGCode: WideString; Weight: Double); dispid 20;
    procedure Wagon(TranspID: Integer; OwnerId: Integer; Count: Integer; GP: OleVariant); dispid 30;
    procedure Container(ContID: Integer; OwnershipId: Integer; ContCount: Integer;
                        TareWeight: OleVariant); dispid 31;
    procedure ContainerTransport(TranspID: Integer; OwnerId: Integer; Count: Integer); dispid 32;
    procedure RefWagon(OwnerId: Integer; FullCount: Integer; EmptyCount: Integer;
                       SectionSize: Integer); dispid 33;
    procedure Support(SupportId: Integer; CounductorCount: Integer; AxisCount: Integer); dispid 40;
    procedure Rur2Usd(Rate: Double); dispid 50;
    procedure OnDate(OnDate: TDateTime); dispid 51;
  end;

// *********************************************************************//
// Interface: IDocumentControl
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {4D9E2AFA-857B-48D2-8E50-DB760DF15859}
// *********************************************************************//
  IDocumentControl = interface(IDispatch)
    ['{4D9E2AFA-857B-48D2-8E50-DB760DF15859}']
    procedure DoCalcTariff; safecall;
    procedure DoCalcDistance; safecall;
  end;

// *********************************************************************//
// DispIntf:  IDocumentControlDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {4D9E2AFA-857B-48D2-8E50-DB760DF15859}
// *********************************************************************//
  IDocumentControlDisp = dispinterface
    ['{4D9E2AFA-857B-48D2-8E50-DB760DF15859}']
    procedure DoCalcTariff; dispid 1;
    procedure DoCalcDistance; dispid 2;
  end;

// *********************************************************************//
// Interface: IDocumentControl2
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {4A37F8B3-D999-403B-BD9E-3FD426993020}
// *********************************************************************//
  IDocumentControl2 = interface(IDocumentControl)
    ['{4A37F8B3-D999-403B-BD9E-3FD426993020}']
    procedure RevertDirection; safecall;
  end;

// *********************************************************************//
// DispIntf:  IDocumentControl2Disp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {4A37F8B3-D999-403B-BD9E-3FD426993020}
// *********************************************************************//
  IDocumentControl2Disp = dispinterface
    ['{4A37F8B3-D999-403B-BD9E-3FD426993020}']
    procedure RevertDirection; dispid 21;
    procedure DoCalcTariff; dispid 1;
    procedure DoCalcDistance; dispid 2;
  end;

// *********************************************************************//
// Interface: IRateOfExchange2
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {908CE534-614F-4440-AFD1-A4D2F8C89C58}
// *********************************************************************//
  IRateOfExchange2 = interface(IRateOfExchange)
    ['{908CE534-614F-4440-AFD1-A4D2F8C89C58}']
    function Get_RatePresented(OnDate: TDateTime): WordBool; safecall;
    property RatePresented[OnDate: TDateTime]: WordBool read Get_RatePresented;
  end;

// *********************************************************************//
// DispIntf:  IRateOfExchange2Disp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {908CE534-614F-4440-AFD1-A4D2F8C89C58}
// *********************************************************************//
  IRateOfExchange2Disp = dispinterface
    ['{908CE534-614F-4440-AFD1-A4D2F8C89C58}']
    property RatePresented[OnDate: TDateTime]: WordBool readonly dispid 6;
    procedure LoadFromFile(const FilePath: WideString); dispid 1;
    procedure LoadFromSite; dispid 2;
    procedure SetRate(FromCurrency: Integer; ToCurrency: Integer; Rate: Double); dispid 3;
    procedure GetRate(FromCurrency: Integer; ToCurrency: Integer; out pRate: Double); dispid 4;
    property Rate[FromCurrency: Integer; ToCurrency: Integer]: Double dispid 5;
  end;

// *********************************************************************//
// Interface: IRateOfExchange3
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {90AAE534-614F-4000-AFD1-A4C2F8C89C58}
// *********************************************************************//
  IRateOfExchange3 = interface(IRateOfExchange2)
    ['{90AAE534-614F-4000-AFD1-A4C2F8C89C58}']
    function Get_ProxyConnectionType: Integer; safecall;
    procedure Set_ProxyConnectionType(pVal: Integer); safecall;
    function Get_ProxyAuthType: Integer; safecall;
    procedure Set_ProxyAuthType(pVal: Integer); safecall;
    function Get_ProxyServerName: WideString; safecall;
    procedure Set_ProxyServerName(const pVal: WideString); safecall;
    function Get_ProxyServerPort: WideString; safecall;
    procedure Set_ProxyServerPort(const pVal: WideString); safecall;
    function Get_ProxyUserName: WideString; safecall;
    procedure Set_ProxyUserName(const pVal: WideString); safecall;
    function Get_ProxyUserPass: WideString; safecall;
    procedure Set_ProxyUserPass(const pVal: WideString); safecall;
    procedure SaveProxyUserData; safecall;
    property ProxyConnectionType: Integer read Get_ProxyConnectionType write Set_ProxyConnectionType;
    property ProxyAuthType: Integer read Get_ProxyAuthType write Set_ProxyAuthType;
    property ProxyServerName: WideString read Get_ProxyServerName write Set_ProxyServerName;
    property ProxyServerPort: WideString read Get_ProxyServerPort write Set_ProxyServerPort;
    property ProxyUserName: WideString read Get_ProxyUserName write Set_ProxyUserName;
    property ProxyUserPass: WideString read Get_ProxyUserPass write Set_ProxyUserPass;
  end;

// *********************************************************************//
// DispIntf:  IRateOfExchange3Disp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {90AAE534-614F-4000-AFD1-A4C2F8C89C58}
// *********************************************************************//
  IRateOfExchange3Disp = dispinterface
    ['{90AAE534-614F-4000-AFD1-A4C2F8C89C58}']
    property ProxyConnectionType: Integer dispid 7;
    property ProxyAuthType: Integer dispid 8;
    property ProxyServerName: WideString dispid 9;
    property ProxyServerPort: WideString dispid 10;
    property ProxyUserName: WideString dispid 11;
    property ProxyUserPass: WideString dispid 12;
    procedure SaveProxyUserData; dispid 13;
    property RatePresented[OnDate: TDateTime]: WordBool readonly dispid 6;
    procedure LoadFromFile(const FilePath: WideString); dispid 1;
    procedure LoadFromSite; dispid 2;
    procedure SetRate(FromCurrency: Integer; ToCurrency: Integer; Rate: Double); dispid 3;
    procedure GetRate(FromCurrency: Integer; ToCurrency: Integer; out pRate: Double); dispid 4;
    property Rate[FromCurrency: Integer; ToCurrency: Integer]: Double dispid 5;
  end;

// *********************************************************************//
// Interface: IRateOfExchange4
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {1188F6EF-50F8-4BD6-A683-64041E55E6C8}
// *********************************************************************//
  IRateOfExchange4 = interface(IRateOfExchange3)
    ['{1188F6EF-50F8-4BD6-A683-64041E55E6C8}']
    procedure SaveOnDateCurrencies; safecall;
  end;

// *********************************************************************//
// DispIntf:  IRateOfExchange4Disp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {1188F6EF-50F8-4BD6-A683-64041E55E6C8}
// *********************************************************************//
  IRateOfExchange4Disp = dispinterface
    ['{1188F6EF-50F8-4BD6-A683-64041E55E6C8}']
    procedure SaveOnDateCurrencies; dispid 14;
    property ProxyConnectionType: Integer dispid 7;
    property ProxyAuthType: Integer dispid 8;
    property ProxyServerName: WideString dispid 9;
    property ProxyServerPort: WideString dispid 10;
    property ProxyUserName: WideString dispid 11;
    property ProxyUserPass: WideString dispid 12;
    procedure SaveProxyUserData; dispid 13;
    property RatePresented[OnDate: TDateTime]: WordBool readonly dispid 6;
    procedure LoadFromFile(const FilePath: WideString); dispid 1;
    procedure LoadFromSite; dispid 2;
    procedure SetRate(FromCurrency: Integer; ToCurrency: Integer; Rate: Double); dispid 3;
    procedure GetRate(FromCurrency: Integer; ToCurrency: Integer; out pRate: Double); dispid 4;
    property Rate[FromCurrency: Integer; ToCurrency: Integer]: Double dispid 5;
  end;

// *********************************************************************//
// Interface: IThruRoutes2
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {1F384277-2C64-408F-8DF7-4FE6D25969DE}
// *********************************************************************//
  IThruRoutes2 = interface(IThruRoutes)
    ['{1F384277-2C64-408F-8DF7-4FE6D25969DE}']
    procedure AddStationEx(const StationCode: WideString; StationLandId: Smallint); safecall;
    procedure AddPPEx(const FirstCode: WideString; FirstStationLandId: Smallint;
                      const SecondCode: WideString; SecondStationLandId: Smallint); safecall;
  end;

// *********************************************************************//
// DispIntf:  IThruRoutes2Disp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {1F384277-2C64-408F-8DF7-4FE6D25969DE}
// *********************************************************************//
  IThruRoutes2Disp = dispinterface
    ['{1F384277-2C64-408F-8DF7-4FE6D25969DE}']
    procedure AddStationEx(const StationCode: WideString; StationLandId: Smallint); dispid 5;
    procedure AddPPEx(const FirstCode: WideString; FirstStationLandId: Smallint;
                      const SecondCode: WideString; SecondStationLandId: Smallint); dispid 6;
    procedure AddStation(const StationCode: WideString); dispid 1;
    procedure AddPP(const FirstCode: WideString; const SecondCode: WideString); dispid 2;
    procedure Clear; dispid 3;
    property IsExists: WordBool readonly dispid 4;
  end;

// *********************************************************************//
// Interface: IXMLView
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {E403DABF-8FF3-4380-9F75-F48AE242D382}
// *********************************************************************//
  IXMLView = interface(IDispatch)
    ['{E403DABF-8FF3-4380-9F75-F48AE242D382}']
    function Get_Response: WideString; safecall;
    function ShowRoot: WideString; safecall;
    procedure SetParams(const DlgID: WideString; Params: OleVariant); safecall;
    function ShowDialog(const Id: WideString): WideString; safecall;
    procedure ParamSwitch(Params: OleVariant); safecall;
    function Get_Prepare: WordBool; safecall;
    property Response: WideString read Get_Response;
    property Prepare: WordBool read Get_Prepare;
  end;

// *********************************************************************//
// DispIntf:  IXMLViewDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {E403DABF-8FF3-4380-9F75-F48AE242D382}
// *********************************************************************//
  IXMLViewDisp = dispinterface
    ['{E403DABF-8FF3-4380-9F75-F48AE242D382}']
    property Response: WideString readonly dispid 1;
    function ShowRoot: WideString; dispid 2;
    procedure SetParams(const DlgID: WideString; Params: OleVariant); dispid 3;
    function ShowDialog(const Id: WideString): WideString; dispid 4;
    procedure ParamSwitch(Params: OleVariant); dispid 5;
    property Prepare: WordBool readonly dispid 6;
  end;

// *********************************************************************//
// Interface: IDocumentRefBook
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {47D6B4DB-D3EC-4895-9B34-62CAA7FCEF43}
// *********************************************************************//
  IDocumentRefBook = interface(IDispatch)
    ['{47D6B4DB-D3EC-4895-9B34-62CAA7FCEF43}']
    function FilteredRefBook(const Name: WideString; const FilterName: WideString): _RefBook; safecall;
  end;

// *********************************************************************//
// DispIntf:  IDocumentRefBookDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {47D6B4DB-D3EC-4895-9B34-62CAA7FCEF43}
// *********************************************************************//
  IDocumentRefBookDisp = dispinterface
    ['{47D6B4DB-D3EC-4895-9B34-62CAA7FCEF43}']
    function FilteredRefBook(const Name: WideString; const FilterName: WideString): _RefBook; dispid 1;
  end;

// *********************************************************************//
// Interface: IDocumentRefBook2
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {4CB6E9EA-CE86-4ABA-9113-15DD8B2E42F4}
// *********************************************************************//
  IDocumentRefBook2 = interface(IDocumentRefBook)
    ['{4CB6E9EA-CE86-4ABA-9113-15DD8B2E42F4}']
    function GetFilteredCarNumber(const CarNumber: WideString): _RefBook; safecall;
  end;

// *********************************************************************//
// DispIntf:  IDocumentRefBook2Disp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {4CB6E9EA-CE86-4ABA-9113-15DD8B2E42F4}
// *********************************************************************//
  IDocumentRefBook2Disp = dispinterface
    ['{4CB6E9EA-CE86-4ABA-9113-15DD8B2E42F4}']
    function GetFilteredCarNumber(const CarNumber: WideString): _RefBook; dispid 21;
    function FilteredRefBook(const Name: WideString; const FilterName: WideString): _RefBook; dispid 1;
  end;

// *********************************************************************//
// Interface: ISpecialTariff2
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {C5FEE6DF-50B0-41AC-ACA0-CB9ABCDDB89B}
// *********************************************************************//
  ISpecialTariff2 = interface(ISpecialTariff)
    ['{C5FEE6DF-50B0-41AC-ACA0-CB9ABCDDB89B}']
    procedure SetKITCurrentLand(KITNum: Integer); safecall;
    procedure SetKIT(Land: Integer; RoadRus: Integer; Direction: Integer; KITNum: Integer); safecall;
  end;

// *********************************************************************//
// DispIntf:  ISpecialTariff2Disp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {C5FEE6DF-50B0-41AC-ACA0-CB9ABCDDB89B}
// *********************************************************************//
  ISpecialTariff2Disp = dispinterface
    ['{C5FEE6DF-50B0-41AC-ACA0-CB9ABCDDB89B}']
    procedure SetKITCurrentLand(KITNum: Integer); dispid 3;
    procedure SetKIT(Land: Integer; RoadRus: Integer; Direction: Integer; KITNum: Integer); dispid 4;
    property IsSTExists: WordBool readonly dispid 1;
    procedure SPTariffArray(var pArray: OleVariant); dispid 2;
  end;

// *********************************************************************//
// Interface: ISpecialTariff3
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {B7825150-5B69-48D4-9D0B-477B4F913C45}
// *********************************************************************//
  ISpecialTariff3 = interface(ISpecialTariff2)
    ['{B7825150-5B69-48D4-9D0B-477B4F913C45}']
    procedure SetKIT_ID_CurrentLand(KIT_ID: Integer); safecall;
    procedure SetKIT_ID(Land: Integer; RoadRus: Integer; Direction: Integer; KIT_ID: Integer); safecall;
  end;

// *********************************************************************//
// DispIntf:  ISpecialTariff3Disp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {B7825150-5B69-48D4-9D0B-477B4F913C45}
// *********************************************************************//
  ISpecialTariff3Disp = dispinterface
    ['{B7825150-5B69-48D4-9D0B-477B4F913C45}']
    procedure SetKIT_ID_CurrentLand(KIT_ID: Integer); dispid 5;
    procedure SetKIT_ID(Land: Integer; RoadRus: Integer; Direction: Integer; KIT_ID: Integer); dispid 6;
    procedure SetKITCurrentLand(KITNum: Integer); dispid 3;
    procedure SetKIT(Land: Integer; RoadRus: Integer; Direction: Integer; KITNum: Integer); dispid 4;
    property IsSTExists: WordBool readonly dispid 1;
    procedure SPTariffArray(var pArray: OleVariant); dispid 2;
  end;

// *********************************************************************//
// Interface: ISpecialTariff4
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {E13BE38A-C1E4-4373-AFA5-A94E56C48CCE}
// *********************************************************************//
  ISpecialTariff4 = interface(ISpecialTariff3)
    ['{E13BE38A-C1E4-4373-AFA5-A94E56C48CCE}']
    function GetKIT_ID_CurrentLand: Integer; safecall;
    function GetDefaultKIT_ID_CurrentLand: Integer; safecall;
    procedure ResetKIT_CurrentLand; safecall;
    procedure ResetKIT_All; safecall;
    function GetKIT_Info_CurrentLand: KITDesc; safecall;
    function GetDefaultKIT_Info_CurrentLand: KITDesc; safecall;
    function GetAvailKIT_Info_CurrentLand: PSafeArray; safecall;
    function GetKIT_ID(Land: Integer; RoadRus: Integer; Direction: Integer): Integer; safecall;
  end;

// *********************************************************************//
// DispIntf:  ISpecialTariff4Disp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {E13BE38A-C1E4-4373-AFA5-A94E56C48CCE}
// *********************************************************************//
  ISpecialTariff4Disp = dispinterface
    ['{E13BE38A-C1E4-4373-AFA5-A94E56C48CCE}']
    function GetKIT_ID_CurrentLand: Integer; dispid 7;
    function GetDefaultKIT_ID_CurrentLand: Integer; dispid 8;
    procedure ResetKIT_CurrentLand; dispid 9;
    procedure ResetKIT_All; dispid 10;
    function GetKIT_Info_CurrentLand: {NOT_OLEAUTO(KITDesc)}OleVariant; dispid 11;
    function GetDefaultKIT_Info_CurrentLand: {NOT_OLEAUTO(KITDesc)}OleVariant; dispid 12;
    function GetAvailKIT_Info_CurrentLand: {NOT_OLEAUTO(PSafeArray)}OleVariant; dispid 13;
    function GetKIT_ID(Land: Integer; RoadRus: Integer; Direction: Integer): Integer; dispid 14;
    procedure SetKIT_ID_CurrentLand(KIT_ID: Integer); dispid 5;
    procedure SetKIT_ID(Land: Integer; RoadRus: Integer; Direction: Integer; KIT_ID: Integer); dispid 6;
    procedure SetKITCurrentLand(KITNum: Integer); dispid 3;
    procedure SetKIT(Land: Integer; RoadRus: Integer; Direction: Integer; KITNum: Integer); dispid 4;
    property IsSTExists: WordBool readonly dispid 1;
    procedure SPTariffArray(var pArray: OleVariant); dispid 2;
  end;

// *********************************************************************//
// Interface: ITaxes
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {C6177E5C-721D-42CC-B976-0F51F626888B}
// *********************************************************************//
  ITaxes = interface(IDispatch)
    ['{C6177E5C-721D-42CC-B976-0F51F626888B}']
    procedure SetTax(const TaxID: WideString; bSet: WordBool; const Value: WideString); safecall;
  end;

// *********************************************************************//
// DispIntf:  ITaxesDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {C6177E5C-721D-42CC-B976-0F51F626888B}
// *********************************************************************//
  ITaxesDisp = dispinterface
    ['{C6177E5C-721D-42CC-B976-0F51F626888B}']
    procedure SetTax(const TaxID: WideString; bSet: WordBool; const Value: WideString); dispid 1;
  end;

// *********************************************************************//
// Interface: ITaxesInResult
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {E3004204-9368-4D63-8240-8C1B807983D1}
// *********************************************************************//
  ITaxesInResult = interface(ITaxes)
    ['{E3004204-9368-4D63-8240-8C1B807983D1}']
    function GetAvailTaxes: _RefBook; safecall;
    function GetDefaultTaxes: _RefBook; safecall;
  end;

// *********************************************************************//
// DispIntf:  ITaxesInResultDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {E3004204-9368-4D63-8240-8C1B807983D1}
// *********************************************************************//
  ITaxesInResultDisp = dispinterface
    ['{E3004204-9368-4D63-8240-8C1B807983D1}']
    function GetAvailTaxes: _RefBook; dispid 11;
    function GetDefaultTaxes: _RefBook; dispid 12;
    procedure SetTax(const TaxID: WideString; bSet: WordBool; const Value: WideString); dispid 1;
  end;

// *********************************************************************//
// Interface: ITaxesInResult2
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {F154DD6B-DDDF-48AC-8CEE-FE36C79F962F}
// *********************************************************************//
  ITaxesInResult2 = interface(ITaxesInResult)
    ['{F154DD6B-DDDF-48AC-8CEE-FE36C79F962F}']
    procedure ClearTaxes(bSetToDefault: WordBool); safecall;
  end;

// *********************************************************************//
// DispIntf:  ITaxesInResult2Disp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {F154DD6B-DDDF-48AC-8CEE-FE36C79F962F}
// *********************************************************************//
  ITaxesInResult2Disp = dispinterface
    ['{F154DD6B-DDDF-48AC-8CEE-FE36C79F962F}']
    procedure ClearTaxes(bSetToDefault: WordBool); dispid 13;
    function GetAvailTaxes: _RefBook; dispid 11;
    function GetDefaultTaxes: _RefBook; dispid 12;
    procedure SetTax(const TaxID: WideString; bSet: WordBool; const Value: WideString); dispid 1;
  end;

// *********************************************************************//
// Interface: IDocumentConfig
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {3B84328C-C31E-442B-BFAE-86E33D444C0F}
// *********************************************************************//
  IDocumentConfig = interface(IDispatch)
    ['{3B84328C-C31E-442B-BFAE-86E33D444C0F}']
    function Get_ThrowErrorWhenRouteNotFound: WordBool; safecall;
    procedure Set_ThrowErrorWhenRouteNotFound(pVal: WordBool); safecall;
    property ThrowErrorWhenRouteNotFound: WordBool read Get_ThrowErrorWhenRouteNotFound write Set_ThrowErrorWhenRouteNotFound;
  end;

// *********************************************************************//
// DispIntf:  IDocumentConfigDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {3B84328C-C31E-442B-BFAE-86E33D444C0F}
// *********************************************************************//
  IDocumentConfigDisp = dispinterface
    ['{3B84328C-C31E-442B-BFAE-86E33D444C0F}']
    property ThrowErrorWhenRouteNotFound: WordBool dispid 1;
  end;

// *********************************************************************//
// Interface: IUserCalculate
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {72ACC23A-941C-4031-BFC2-F1C725443C2F}
// *********************************************************************//
  IUserCalculate = interface(IDispatch)
    ['{72ACC23A-941C-4031-BFC2-F1C725443C2F}']
    procedure LoadUserTaxFile(const FilePath: WideString); safecall;
    procedure LoadUserTax(const XMLData: WideString); safecall;
    procedure SetTaxProcessor(const pCallBack: IUnknown); safecall;
    procedure SetTaxProcessorWS(const TaxProcessorWSUrl: WideString;
                                const TPRegistrationId: WideString); safecall;
  end;

// *********************************************************************//
// DispIntf:  IUserCalculateDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {72ACC23A-941C-4031-BFC2-F1C725443C2F}
// *********************************************************************//
  IUserCalculateDisp = dispinterface
    ['{72ACC23A-941C-4031-BFC2-F1C725443C2F}']
    procedure LoadUserTaxFile(const FilePath: WideString); dispid 1;
    procedure LoadUserTax(const XMLData: WideString); dispid 2;
    procedure SetTaxProcessor(const pCallBack: IUnknown); dispid 3;
    procedure SetTaxProcessorWS(const TaxProcessorWSUrl: WideString;
                                const TPRegistrationId: WideString); dispid 4;
  end;

// *********************************************************************//
// Interface: IStationFindAround
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {BD7E2368-31C2-42AA-AD6F-ECF84F2CFFFB}
// *********************************************************************//
  IStationFindAround = interface(IDispatch)
    ['{BD7E2368-31C2-42AA-AD6F-ECF84F2CFFFB}']
    function FindStationsAround(const CodeBeginStation: WideString; Distance: Integer;
                                ContainerFlags: Integer): OleVariant; safecall;
  end;

// *********************************************************************//
// DispIntf:  IStationFindAroundDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {BD7E2368-31C2-42AA-AD6F-ECF84F2CFFFB}
// *********************************************************************//
  IStationFindAroundDisp = dispinterface
    ['{BD7E2368-31C2-42AA-AD6F-ECF84F2CFFFB}']
    function FindStationsAround(const CodeBeginStation: WideString; Distance: Integer;
                                ContainerFlags: Integer): OleVariant; dispid 1;
  end;

// *********************************************************************//
// Interface: ILanguageSelector
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {86A13F30-B25C-4CC3-89F3-E0BC177B8DFC}
// *********************************************************************//
  ILanguageSelector = interface(IDispatch)
    ['{86A13F30-B25C-4CC3-89F3-E0BC177B8DFC}']
    function Get_Language: Smallint; safecall;
    procedure Set_Language(pLANGID: Smallint); safecall;
    property Language: Smallint read Get_Language write Set_Language;
  end;

// *********************************************************************//
// DispIntf:  ILanguageSelectorDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {86A13F30-B25C-4CC3-89F3-E0BC177B8DFC}
// *********************************************************************//
  ILanguageSelectorDisp = dispinterface
    ['{86A13F30-B25C-4CC3-89F3-E0BC177B8DFC}']
    property Language: Smallint dispid 1;
  end;

// *********************************************************************//
// Interface: IDocumentControl3
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {4D257DB5-76F2-4EF8-9240-28A082391E47}
// *********************************************************************//
  IDocumentControl3 = interface(IDocumentControl2)
    ['{4D257DB5-76F2-4EF8-9240-28A082391E47}']
    procedure UpdateDocTextToCurrentLang(Recalc: WordBool); safecall;
  end;

// *********************************************************************//
// DispIntf:  IDocumentControl3Disp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {4D257DB5-76F2-4EF8-9240-28A082391E47}
// *********************************************************************//
  IDocumentControl3Disp = dispinterface
    ['{4D257DB5-76F2-4EF8-9240-28A082391E47}']
    procedure UpdateDocTextToCurrentLang(Recalc: WordBool); dispid 3000;
    procedure RevertDirection; dispid 21;
    procedure DoCalcTariff; dispid 1;
    procedure DoCalcDistance; dispid 2;
  end;

// *********************************************************************//
// Interface: IVBSDocNode
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {060DC8F1-D28C-4A39-AA04-9EA81F66DD2D}
// *********************************************************************//
  IVBSDocNode = interface(IDispatch)
    ['{060DC8F1-D28C-4A39-AA04-9EA81F66DD2D}']
    function Get_Node(const Path: WideString): IDocNode; safecall;
    function Get_Value(const Path: WideString): OleVariant; safecall;
    procedure Set_Value(const Path: WideString; pVal: OleVariant); safecall;
    function Get_IsTable: Integer; safecall;
    function Get_AsTable: IDocTableNode; safecall;
    procedure SetValue(const Name: WideString; Value: OleVariant); safecall;
    procedure First; safecall;
    procedure Last; safecall;
    procedure Next; safecall;
    procedure Prev; safecall;
    function Get_EOF: WordBool; safecall;
    function Get_BOF: WordBool; safecall;
    procedure Read(out pArray: PSafeArray); safecall;
    procedure Write(Array_: PSafeArray); safecall;
    function Get_RecordCount: Integer; safecall;
    function Get_Position: Integer; safecall;
    procedure Set_Position(pVal: Integer); safecall;
    property Node[const Path: WideString]: IDocNode read Get_Node;
    property Value[const Path: WideString]: OleVariant read Get_Value write Set_Value;
    property IsTable: Integer read Get_IsTable;
    property AsTable: IDocTableNode read Get_AsTable;
    property EOF: WordBool read Get_EOF;
    property BOF: WordBool read Get_BOF;
    property RecordCount: Integer read Get_RecordCount;
    property Position: Integer read Get_Position write Set_Position;
  end;

// *********************************************************************//
// DispIntf:  IVBSDocNodeDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {060DC8F1-D28C-4A39-AA04-9EA81F66DD2D}
// *********************************************************************//
  IVBSDocNodeDisp = dispinterface
    ['{060DC8F1-D28C-4A39-AA04-9EA81F66DD2D}']
    property Node[const Path: WideString]: IDocNode readonly dispid 1610743808;
    property Value[const Path: WideString]: OleVariant dispid 1610743809;
    property IsTable: Integer readonly dispid 1610743811;
    property AsTable: IDocTableNode readonly dispid 1610743812;
    procedure SetValue(const Name: WideString; Value: OleVariant); dispid 1610743813;
    procedure First; dispid 1610743814;
    procedure Last; dispid 1610743815;
    procedure Next; dispid 1610743816;
    procedure Prev; dispid 1610743817;
    property EOF: WordBool readonly dispid 1610743818;
    property BOF: WordBool readonly dispid 1610743819;
    procedure Read(out pArray: {NOT_OLEAUTO(PSafeArray)}OleVariant); dispid 1610743820;
    procedure Write(Array_: {NOT_OLEAUTO(PSafeArray)}OleVariant); dispid 1610743821;
    property RecordCount: Integer readonly dispid 1610743822;
    property Position: Integer dispid 1610743823;
  end;

// *********************************************************************//
// Interface: IDocTableNode2
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {CE4E0009-46F3-470D-BCD9-582F0ED84F2A}
// *********************************************************************//
  IDocTableNode2 = interface(IDocTableNode)
    ['{CE4E0009-46F3-470D-BCD9-582F0ED84F2A}']
    function Get_RecordCount: Integer; safecall;
    function Get_Position: Integer; safecall;
    procedure Set_Position(pVal: Integer); safecall;
    property RecordCount: Integer read Get_RecordCount;
    property Position: Integer read Get_Position write Set_Position;
  end;

// *********************************************************************//
// DispIntf:  IDocTableNode2Disp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {CE4E0009-46F3-470D-BCD9-582F0ED84F2A}
// *********************************************************************//
  IDocTableNode2Disp = dispinterface
    ['{CE4E0009-46F3-470D-BCD9-582F0ED84F2A}']
    property RecordCount: Integer readonly dispid 21;
    property Position: Integer dispid 22;
    procedure First; dispid 10;
    procedure Last; dispid 11;
    procedure Next; dispid 12;
    procedure Prev; dispid 13;
    property EOF: WordBool readonly dispid 14;
    property BOF: WordBool readonly dispid 15;
  end;

// *********************************************************************//
// Interface: IDocNodeTransfer
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {4DD339BB-F131-4728-A730-C21F8E50F51F}
// *********************************************************************//
  IDocNodeTransfer = interface(IDispatch)
    ['{4DD339BB-F131-4728-A730-C21F8E50F51F}']
    procedure Read(out pArray: PSafeArray); safecall;
    procedure Write(Array_: PSafeArray); safecall;
  end;

// *********************************************************************//
// DispIntf:  IDocNodeTransferDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {4DD339BB-F131-4728-A730-C21F8E50F51F}
// *********************************************************************//
  IDocNodeTransferDisp = dispinterface
    ['{4DD339BB-F131-4728-A730-C21F8E50F51F}']
    procedure Read(out pArray: {NOT_OLEAUTO(PSafeArray)}OleVariant); dispid 1;
    procedure Write(Array_: {NOT_OLEAUTO(PSafeArray)}OleVariant); dispid 2;
  end;

// *********************************************************************//
// Interface: IVBSApplication
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {BBBC9829-28C7-4627-84B6-4A24EB3E048F}
// *********************************************************************//
  IVBSApplication = interface(IDispatch)
    ['{BBBC9829-28C7-4627-84B6-4A24EB3E048F}']
    function Get_ShowRefBook(const Name: WideString; var FirstKey: OleVariant;
                             var SecondKey: OleVariant): Integer; safecall;
    function Get_CreateDocument: IDocument; safecall;
    procedure Initialize(const ApplicationPath: WideString); safecall;
    function Get_RawDistance(const FromSt: WideString; const ToSt: WideString): Integer; safecall;
    function Get_Calc1001Base(Shema: Integer; Weight: Double; Distance: Integer; Axis: Integer): Double; safecall;
    function Get_RefBook(const Name: WideString): _RefBook; safecall;
    function Get_RawDistance2(const FromSt: WideString; const ToSt: WideString; OnDate: TDateTime): Integer; safecall;
    function Get_RawDistance3(const FromSt: WideString; const ToSt: WideString; OnDate: TDateTime;
                              ExitRoute: Integer): Integer; safecall;
    function Get_Version: WideString; safecall;
    function Get_ComputerKey: WideString; safecall;
    procedure SetActivationKey(const Local: WideString; const Server: WideString;
                               const Port: WideString); safecall;
    function Get_ActivateKey: WideString; safecall;
    function Get_RefBookCollection: _RefBookCollection; safecall;
    function Get_RefBooksCount: Integer; safecall;
    function Get_RefBookByIndex(Index: Integer): _RefBookInfo; safecall;
    function Get_Language: Smallint; safecall;
    procedure Set_Language(pLANGID: Smallint); safecall;
    function Get_RawDistance4(const FromSt: WideString; FromStLand: Smallint;
                              const ToSt: WideString; ToStLand: Smallint; OnDate: TDateTime;
                              PlanFormId: Integer): Integer; safecall;
    property ShowRefBook[const Name: WideString; var FirstKey: OleVariant; var SecondKey: OleVariant]: Integer read Get_ShowRefBook;
    property CreateDocument: IDocument read Get_CreateDocument;
    property RawDistance[const FromSt: WideString; const ToSt: WideString]: Integer read Get_RawDistance;
    property Calc1001Base[Shema: Integer; Weight: Double; Distance: Integer; Axis: Integer]: Double read Get_Calc1001Base;
    property RefBook[const Name: WideString]: _RefBook read Get_RefBook;
    property RawDistance2[const FromSt: WideString; const ToSt: WideString; OnDate: TDateTime]: Integer read Get_RawDistance2;
    property RawDistance3[const FromSt: WideString; const ToSt: WideString; OnDate: TDateTime;
                          ExitRoute: Integer]: Integer read Get_RawDistance3;
    property Version: WideString read Get_Version;
    property ComputerKey: WideString read Get_ComputerKey;
    property ActivateKey: WideString read Get_ActivateKey;
    property RefBookCollection: _RefBookCollection read Get_RefBookCollection;
    property RefBooksCount: Integer read Get_RefBooksCount;
    property RefBookByIndex[Index: Integer]: _RefBookInfo read Get_RefBookByIndex;
    property Language: Smallint read Get_Language write Set_Language;
    property RawDistance4[const FromSt: WideString; FromStLand: Smallint; const ToSt: WideString;
                          ToStLand: Smallint; OnDate: TDateTime; PlanFormId: Integer]: Integer read Get_RawDistance4;
  end;

// *********************************************************************//
// DispIntf:  IVBSApplicationDisp
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {BBBC9829-28C7-4627-84B6-4A24EB3E048F}
// *********************************************************************//
  IVBSApplicationDisp = dispinterface
    ['{BBBC9829-28C7-4627-84B6-4A24EB3E048F}']
    property ShowRefBook[const Name: WideString; var FirstKey: OleVariant; var SecondKey: OleVariant]: Integer readonly dispid 1610743808;
    property CreateDocument: IDocument readonly dispid 1610743809;
    procedure Initialize(const ApplicationPath: WideString); dispid 3;
    property RawDistance[const FromSt: WideString; const ToSt: WideString]: Integer readonly dispid 1610743811;
    property Calc1001Base[Shema: Integer; Weight: Double; Distance: Integer; Axis: Integer]: Double readonly dispid 1610743812;
    property RefBook[const Name: WideString]: _RefBook readonly dispid 1610743813;
    property RawDistance2[const FromSt: WideString; const ToSt: WideString; OnDate: TDateTime]: Integer readonly dispid 1610743814;
    property RawDistance3[const FromSt: WideString; const ToSt: WideString; OnDate: TDateTime;
                          ExitRoute: Integer]: Integer readonly dispid 1610743815;
    property Version: WideString readonly dispid 1610743816;
    property ComputerKey: WideString readonly dispid 1610743817;
    procedure SetActivationKey(const Local: WideString; const Server: WideString;
                               const Port: WideString); dispid 1610743818;
    property ActivateKey: WideString readonly dispid 1610743819;
    property RefBookCollection: _RefBookCollection readonly dispid 1610743820;
    property RefBooksCount: Integer readonly dispid 1610743821;
    property RefBookByIndex[Index: Integer]: _RefBookInfo readonly dispid 1610743822;
    property Language: Smallint dispid 1610743823;
    property RawDistance4[const FromSt: WideString; FromStLand: Smallint; const ToSt: WideString;
                          ToStLand: Smallint; OnDate: TDateTime; PlanFormId: Integer]: Integer readonly dispid 1610743825;
  end;

// *********************************************************************//
// Interface: IApplication
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {B9EC4BA5-2998-4657-8400-1A96EC3DAB57}
// *********************************************************************//
  IApplication = interface(IDispatch)
    ['{B9EC4BA5-2998-4657-8400-1A96EC3DAB57}']
    function Get_ShowRefBook(const Name: WideString; var FirstKey: OleVariant;
                             var SecondKey: OleVariant): Integer; safecall;
    function Get_CreateDocument: IDocument; safecall;
    procedure Initialize(const ApplicationPath: WideString); safecall;
    function Get_RawDistance(const FromSt: WideString; const ToSt: WideString): Integer; safecall;
    function Get_Calc1001Base(Shema: Integer; Weight: Double; Distance: Integer; Axis: Integer): Double; safecall;
    function Get_RefBook(const Name: WideString): _RefBook; safecall;
    property ShowRefBook[const Name: WideString; var FirstKey: OleVariant; var SecondKey: OleVariant]: Integer read Get_ShowRefBook;
    property CreateDocument: IDocument read Get_CreateDocument;
    property RawDistance[const FromSt: WideString; const ToSt: WideString]: Integer read Get_RawDistance;
    property Calc1001Base[Shema: Integer; Weight: Double; Distance: Integer; Axis: Integer]: Double read Get_Calc1001Base;
    property RefBook[const Name: WideString]: _RefBook read Get_RefBook;
  end;

// *********************************************************************//
// DispIntf:  IApplicationDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {B9EC4BA5-2998-4657-8400-1A96EC3DAB57}
// *********************************************************************//
  IApplicationDisp = dispinterface
    ['{B9EC4BA5-2998-4657-8400-1A96EC3DAB57}']
    property ShowRefBook[const Name: WideString; var FirstKey: OleVariant; var SecondKey: OleVariant]: Integer readonly dispid 1;
    property CreateDocument: IDocument readonly dispid 2;
    procedure Initialize(const ApplicationPath: WideString); dispid 3;
    property RawDistance[const FromSt: WideString; const ToSt: WideString]: Integer readonly dispid 4;
    property Calc1001Base[Shema: Integer; Weight: Double; Distance: Integer; Axis: Integer]: Double readonly dispid 5;
    property RefBook[const Name: WideString]: _RefBook readonly dispid 6;
  end;

// *********************************************************************//
// Interface: _RefBookCollection
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {E876E051-7CA0-4D2D-A3DA-B93C56799AD2}
// *********************************************************************//
  _RefBookCollection = interface(IDispatch)
    ['{E876E051-7CA0-4D2D-A3DA-B93C56799AD2}']
    function Get_Item(Index: Integer): _RefBookInfo; safecall;
    function Get_Count: Integer; safecall;
    function Get__NewEnum: IUnknown; safecall;
    property Item[Index: Integer]: _RefBookInfo read Get_Item; default;
    property Count: Integer read Get_Count;
    property _NewEnum: IUnknown read Get__NewEnum;
  end;

// *********************************************************************//
// DispIntf:  _RefBookCollectionDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {E876E051-7CA0-4D2D-A3DA-B93C56799AD2}
// *********************************************************************//
  _RefBookCollectionDisp = dispinterface
    ['{E876E051-7CA0-4D2D-A3DA-B93C56799AD2}']
    property Item[Index: Integer]: _RefBookInfo readonly dispid 0; default;
    property Count: Integer readonly dispid 2;
    property _NewEnum: IUnknown readonly dispid -4;
  end;

// *********************************************************************//
// Interface: _RefBookInfo
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {AD016C43-B650-453F-93EF-67D82105DA51}
// *********************************************************************//
  _RefBookInfo = interface(IDispatch)
    ['{AD016C43-B650-453F-93EF-67D82105DA51}']
    function Get_Id: WideString; safecall;
    function Get_Caption: WideString; safecall;
    function Get_type_: Integer; safecall;
    function Get_KeyField: WideString; safecall;
    function Get_SubKeyField: WideString; safecall;
    function Get_FieldCount: Integer; safecall;
    procedure FieldDesc(Index: Integer; out FieldName: WideString; out FieldDesc: WideString); safecall;
    function Get_Data: _RefBook; safecall;
    function Get_TableDesc(AddKeyValues: WordBool): OleVariant; safecall;
    function Get_TableDigest: Integer; safecall;
    property Id: WideString read Get_Id;
    property Caption: WideString read Get_Caption;
    property type_: Integer read Get_type_;
    property KeyField: WideString read Get_KeyField;
    property SubKeyField: WideString read Get_SubKeyField;
    property FieldCount: Integer read Get_FieldCount;
    property Data: _RefBook read Get_Data;
    property TableDesc[AddKeyValues: WordBool]: OleVariant read Get_TableDesc;
    property TableDigest: Integer read Get_TableDigest;
  end;

// *********************************************************************//
// DispIntf:  _RefBookInfoDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {AD016C43-B650-453F-93EF-67D82105DA51}
// *********************************************************************//
  _RefBookInfoDisp = dispinterface
    ['{AD016C43-B650-453F-93EF-67D82105DA51}']
    property Id: WideString readonly dispid 1;
    property Caption: WideString readonly dispid 2;
    property type_: Integer readonly dispid 3;
    property KeyField: WideString readonly dispid 4;
    property SubKeyField: WideString readonly dispid 5;
    property FieldCount: Integer readonly dispid 6;
    procedure FieldDesc(Index: Integer; out FieldName: WideString; out FieldDesc: WideString); dispid 7;
    property Data: _RefBook readonly dispid 8;
    property TableDesc[AddKeyValues: WordBool]: OleVariant readonly dispid 9;
    property TableDigest: Integer readonly dispid 10;
  end;

// *********************************************************************//
// Interface: IApplication2
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {643A6924-1FB7-4678-A449-7C784BCD93DB}
// *********************************************************************//
  IApplication2 = interface(IApplication)
    ['{643A6924-1FB7-4678-A449-7C784BCD93DB}']
    function Get_RawDistance2(const FromSt: WideString; const ToSt: WideString; OnDate: TDateTime): Integer; safecall;
    function Get_RawDistance3(const FromSt: WideString; const ToSt: WideString; OnDate: TDateTime;
                              PlanFormId: Integer): Integer; safecall;
    property RawDistance2[const FromSt: WideString; const ToSt: WideString; OnDate: TDateTime]: Integer read Get_RawDistance2;
    property RawDistance3[const FromSt: WideString; const ToSt: WideString; OnDate: TDateTime;
                          PlanFormId: Integer]: Integer read Get_RawDistance3;
  end;

// *********************************************************************//
// DispIntf:  IApplication2Disp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {643A6924-1FB7-4678-A449-7C784BCD93DB}
// *********************************************************************//
  IApplication2Disp = dispinterface
    ['{643A6924-1FB7-4678-A449-7C784BCD93DB}']
    property RawDistance2[const FromSt: WideString; const ToSt: WideString; OnDate: TDateTime]: Integer readonly dispid 10;
    property RawDistance3[const FromSt: WideString; const ToSt: WideString; OnDate: TDateTime;
                          PlanFormId: Integer]: Integer readonly dispid 11;
    property ShowRefBook[const Name: WideString; var FirstKey: OleVariant; var SecondKey: OleVariant]: Integer readonly dispid 1;
    property CreateDocument: IDocument readonly dispid 2;
    procedure Initialize(const ApplicationPath: WideString); dispid 3;
    property RawDistance[const FromSt: WideString; const ToSt: WideString]: Integer readonly dispid 4;
    property Calc1001Base[Shema: Integer; Weight: Double; Distance: Integer; Axis: Integer]: Double readonly dispid 5;
    property RefBook[const Name: WideString]: _RefBook readonly dispid 6;
  end;

// *********************************************************************//
// Interface: IApplication3
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {3C3ABF76-A923-4331-95F2-853080A39382}
// *********************************************************************//
  IApplication3 = interface(IApplication2)
    ['{3C3ABF76-A923-4331-95F2-853080A39382}']
    function Get_RefBookCollection: _RefBookCollection; safecall;
    property RefBookCollection: _RefBookCollection read Get_RefBookCollection;
  end;

// *********************************************************************//
// DispIntf:  IApplication3Disp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {3C3ABF76-A923-4331-95F2-853080A39382}
// *********************************************************************//
  IApplication3Disp = dispinterface
    ['{3C3ABF76-A923-4331-95F2-853080A39382}']
    property RefBookCollection: _RefBookCollection readonly dispid 12;
    property RawDistance2[const FromSt: WideString; const ToSt: WideString; OnDate: TDateTime]: Integer readonly dispid 10;
    property RawDistance3[const FromSt: WideString; const ToSt: WideString; OnDate: TDateTime;
                          PlanFormId: Integer]: Integer readonly dispid 11;
    property ShowRefBook[const Name: WideString; var FirstKey: OleVariant; var SecondKey: OleVariant]: Integer readonly dispid 1;
    property CreateDocument: IDocument readonly dispid 2;
    procedure Initialize(const ApplicationPath: WideString); dispid 3;
    property RawDistance[const FromSt: WideString; const ToSt: WideString]: Integer readonly dispid 4;
    property Calc1001Base[Shema: Integer; Weight: Double; Distance: Integer; Axis: Integer]: Double readonly dispid 5;
    property RefBook[const Name: WideString]: _RefBook readonly dispid 6;
  end;

// *********************************************************************//
// Interface: IApplication4
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {8F56277E-A635-4A84-BE11-838EF1C881AD}
// *********************************************************************//
  IApplication4 = interface(IApplication3)
    ['{8F56277E-A635-4A84-BE11-838EF1C881AD}']
    function Get_RawDistance4(const FromSt: WideString; FromStLand: Smallint;
                              const ToSt: WideString; ToStLand: Smallint; OnDate: TDateTime;
                              PlanFormId: Integer): Integer; safecall;
    property RawDistance4[const FromSt: WideString; FromStLand: Smallint; const ToSt: WideString;
                          ToStLand: Smallint; OnDate: TDateTime; PlanFormId: Integer]: Integer read Get_RawDistance4;
  end;

// *********************************************************************//
// DispIntf:  IApplication4Disp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {8F56277E-A635-4A84-BE11-838EF1C881AD}
// *********************************************************************//
  IApplication4Disp = dispinterface
    ['{8F56277E-A635-4A84-BE11-838EF1C881AD}']
    property RawDistance4[const FromSt: WideString; FromStLand: Smallint; const ToSt: WideString;
                          ToStLand: Smallint; OnDate: TDateTime; PlanFormId: Integer]: Integer readonly dispid 13;
    property RefBookCollection: _RefBookCollection readonly dispid 12;
    property RawDistance2[const FromSt: WideString; const ToSt: WideString; OnDate: TDateTime]: Integer readonly dispid 10;
    property RawDistance3[const FromSt: WideString; const ToSt: WideString; OnDate: TDateTime;
                          PlanFormId: Integer]: Integer readonly dispid 11;
    property ShowRefBook[const Name: WideString; var FirstKey: OleVariant; var SecondKey: OleVariant]: Integer readonly dispid 1;
    property CreateDocument: IDocument readonly dispid 2;
    procedure Initialize(const ApplicationPath: WideString); dispid 3;
    property RawDistance[const FromSt: WideString; const ToSt: WideString]: Integer readonly dispid 4;
    property Calc1001Base[Shema: Integer; Weight: Double; Distance: Integer; Axis: Integer]: Double readonly dispid 5;
    property RefBook[const Name: WideString]: _RefBook readonly dispid 6;
  end;

// *********************************************************************//
// Interface: IApplicationInfo
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {AAF129ED-60DB-404C-8297-3E61E5A89EBE}
// *********************************************************************//
  IApplicationInfo = interface(IDispatch)
    ['{AAF129ED-60DB-404C-8297-3E61E5A89EBE}']
    function Get_Version: WideString; safecall;
    function Get_ComputerKey: WideString; safecall;
    procedure SetActivationKey(const Local: WideString; const Server: WideString;
                               const Port: WideString); safecall;
    function Get_ActivateKey: WideString; safecall;
    property Version: WideString read Get_Version;
    property ComputerKey: WideString read Get_ComputerKey;
    property ActivateKey: WideString read Get_ActivateKey;
  end;

// *********************************************************************//
// DispIntf:  IApplicationInfoDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {AAF129ED-60DB-404C-8297-3E61E5A89EBE}
// *********************************************************************//
  IApplicationInfoDisp = dispinterface
    ['{AAF129ED-60DB-404C-8297-3E61E5A89EBE}']
    property Version: WideString readonly dispid 1;
    property ComputerKey: WideString readonly dispid 2;
    procedure SetActivationKey(const Local: WideString; const Server: WideString;
                               const Port: WideString); dispid 3;
    property ActivateKey: WideString readonly dispid 4;
  end;

// *********************************************************************//
// Interface: IBase1001
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {452E57AF-ADEF-46C5-9948-F2F1B8F3139E}
// *********************************************************************//
  IBase1001 = interface(IDispatch)
    ['{452E57AF-ADEF-46C5-9948-F2F1B8F3139E}']
    function Get_Calc1001Base94(Shema: Integer; Weight: Double; Distance: Integer; Axis: Integer): Double; safecall;
    function Get_Calc1001BaseAdd(Shema: Integer; Weight: Double; Distance: Integer; Axis: Integer): Double; safecall;
    function Get_Calc1001BaseR15(Shema: Integer; Weight: Double; Distance: Integer; Axis: Integer): Double; safecall;
    function Get_Calc1001Base2003(Shema: Integer; Weight: Double; Distance: Integer; Axis: Integer): Double; safecall;
    function Get_Calc1001BaseKZH(Shema: Integer; Weight: Double; Distance: Integer; Axis: Integer;
                                 Params: Integer): Double; safecall;
    function Get_Shema2003IdByName(const ShemaName: WideString): Integer; safecall;
    property Calc1001Base94[Shema: Integer; Weight: Double; Distance: Integer; Axis: Integer]: Double read Get_Calc1001Base94;
    property Calc1001BaseAdd[Shema: Integer; Weight: Double; Distance: Integer; Axis: Integer]: Double read Get_Calc1001BaseAdd;
    property Calc1001BaseR15[Shema: Integer; Weight: Double; Distance: Integer; Axis: Integer]: Double read Get_Calc1001BaseR15;
    property Calc1001Base2003[Shema: Integer; Weight: Double; Distance: Integer; Axis: Integer]: Double read Get_Calc1001Base2003;
    property Calc1001BaseKZH[Shema: Integer; Weight: Double; Distance: Integer; Axis: Integer;
                             Params: Integer]: Double read Get_Calc1001BaseKZH;
    property Shema2003IdByName[const ShemaName: WideString]: Integer read Get_Shema2003IdByName;
  end;

// *********************************************************************//
// DispIntf:  IBase1001Disp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {452E57AF-ADEF-46C5-9948-F2F1B8F3139E}
// *********************************************************************//
  IBase1001Disp = dispinterface
    ['{452E57AF-ADEF-46C5-9948-F2F1B8F3139E}']
    property Calc1001Base94[Shema: Integer; Weight: Double; Distance: Integer; Axis: Integer]: Double readonly dispid 1;
    property Calc1001BaseAdd[Shema: Integer; Weight: Double; Distance: Integer; Axis: Integer]: Double readonly dispid 2;
    property Calc1001BaseR15[Shema: Integer; Weight: Double; Distance: Integer; Axis: Integer]: Double readonly dispid 3;
    property Calc1001Base2003[Shema: Integer; Weight: Double; Distance: Integer; Axis: Integer]: Double readonly dispid 4;
    property Calc1001BaseKZH[Shema: Integer; Weight: Double; Distance: Integer; Axis: Integer;
                             Params: Integer]: Double readonly dispid 5;
    property Shema2003IdByName[const ShemaName: WideString]: Integer readonly dispid 6;
  end;

// *********************************************************************//
// Interface: IVBSRefBook
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {EBDCFDCD-1DC8-47B8-B8DE-A261B2EA35C6}
// *********************************************************************//
  IVBSRefBook = interface(IDispatch)
    ['{EBDCFDCD-1DC8-47B8-B8DE-A261B2EA35C6}']
    procedure First; safecall;
    procedure Last; safecall;
    procedure Next; safecall;
    procedure Prev; safecall;
    procedure SeekByKey(const FieldName: WideString; Value: OleVariant); safecall;
    function Get_Show: WordBool; safecall;
    function Get_EOF: WordBool; safecall;
    function Get_FieldValue(const FieldName: WideString): OleVariant; safecall;
    function Get_RecordCount: Integer; safecall;
    function Get_Position: Integer; safecall;
    procedure Set_Position(pVal: Integer); safecall;
    function Get_Record_(AddKeyValues: WordBool): OleVariant; safecall;
    procedure ClearFilter; safecall;
    procedure Filter(FilterParams: OleVariant); safecall;
    procedure SetIndex(const IndexName: WideString); safecall;
    function Get_Id: WideString; safecall;
    function Get_Caption: WideString; safecall;
    function Get_type_: Integer; safecall;
    function Get_KeyField: WideString; safecall;
    function Get_SubKeyField: WideString; safecall;
    function Get_FieldsCount: Integer; safecall;
    procedure FieldDesc(Index: Integer; out FieldName: OleVariant; out FieldDesc: OleVariant); safecall;
    function Get_TableDesc(AddKeyValues: WordBool): OleVariant; safecall;
    function Get_TableDigest: Integer; safecall;
    function Get_Language: Smallint; safecall;
    procedure Set_Language(pLANGID: Smallint); safecall;
    property Show: WordBool read Get_Show;
    property EOF: WordBool read Get_EOF;
    property FieldValue[const FieldName: WideString]: OleVariant read Get_FieldValue;
    property RecordCount: Integer read Get_RecordCount;
    property Position: Integer read Get_Position write Set_Position;
    property Record_[AddKeyValues: WordBool]: OleVariant read Get_Record_;
    property Id: WideString read Get_Id;
    property Caption: WideString read Get_Caption;
    property type_: Integer read Get_type_;
    property KeyField: WideString read Get_KeyField;
    property SubKeyField: WideString read Get_SubKeyField;
    property FieldsCount: Integer read Get_FieldsCount;
    property TableDesc[AddKeyValues: WordBool]: OleVariant read Get_TableDesc;
    property TableDigest: Integer read Get_TableDigest;
    property Language: Smallint read Get_Language write Set_Language;
  end;

// *********************************************************************//
// DispIntf:  IVBSRefBookDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {EBDCFDCD-1DC8-47B8-B8DE-A261B2EA35C6}
// *********************************************************************//
  IVBSRefBookDisp = dispinterface
    ['{EBDCFDCD-1DC8-47B8-B8DE-A261B2EA35C6}']
    procedure First; dispid 1;
    procedure Last; dispid 2;
    procedure Next; dispid 3;
    procedure Prev; dispid 4;
    procedure SeekByKey(const FieldName: WideString; Value: OleVariant); dispid 5;
    property Show: WordBool readonly dispid 6;
    property EOF: WordBool readonly dispid 7;
    property FieldValue[const FieldName: WideString]: OleVariant readonly dispid 8;
    property RecordCount: Integer readonly dispid 9;
    property Position: Integer dispid 10;
    property Record_[AddKeyValues: WordBool]: OleVariant readonly dispid 11;
    procedure ClearFilter; dispid 20;
    procedure Filter(FilterParams: OleVariant); dispid 21;
    procedure SetIndex(const IndexName: WideString); dispid 22;
    property Id: WideString readonly dispid 12;
    property Caption: WideString readonly dispid 13;
    property type_: Integer readonly dispid 14;
    property KeyField: WideString readonly dispid 15;
    property SubKeyField: WideString readonly dispid 16;
    property FieldsCount: Integer readonly dispid 17;
    procedure FieldDesc(Index: Integer; out FieldName: OleVariant; out FieldDesc: OleVariant); dispid 18;
    property TableDesc[AddKeyValues: WordBool]: OleVariant readonly dispid 19;
    property TableDigest: Integer readonly dispid 23;
    property Language: Smallint dispid 24;
  end;

// *********************************************************************//
// Interface: _RefBook2
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {51844586-B83F-4ED4-9D2D-3B3DBCEC58F3}
// *********************************************************************//
  _RefBook2 = interface(_RefBook)
    ['{51844586-B83F-4ED4-9D2D-3B3DBCEC58F3}']
    function Get_RecordCount: Integer; safecall;
    function Get_Position: Integer; safecall;
    procedure Set_Position(pVal: Integer); safecall;
    function Get_Record_(AddKeyValues: WordBool): OleVariant; safecall;
    property RecordCount: Integer read Get_RecordCount;
    property Position: Integer read Get_Position write Set_Position;
    property Record_[AddKeyValues: WordBool]: OleVariant read Get_Record_;
  end;

// *********************************************************************//
// DispIntf:  _RefBook2Disp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {51844586-B83F-4ED4-9D2D-3B3DBCEC58F3}
// *********************************************************************//
  _RefBook2Disp = dispinterface
    ['{51844586-B83F-4ED4-9D2D-3B3DBCEC58F3}']
    property RecordCount: Integer readonly dispid 9;
    property Position: Integer dispid 10;
    property Record_[AddKeyValues: WordBool]: OleVariant readonly dispid 11;
    procedure First; dispid 1;
    procedure Last; dispid 2;
    procedure Next; dispid 3;
    procedure Prev; dispid 4;
    procedure SeekByKey(const FieldName: WideString; Value: OleVariant); dispid 5;
    property Show: WordBool readonly dispid 6;
    property EOF: WordBool readonly dispid 7;
    property FieldValue[const FieldName: WideString]: OleVariant readonly dispid 8;
  end;

// *********************************************************************//
// Interface: _RefBookFilter
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {8DC2A627-AF5C-419E-82D8-C8951E768BD3}
// *********************************************************************//
  _RefBookFilter = interface(_RefBook2)
    ['{8DC2A627-AF5C-419E-82D8-C8951E768BD3}']
    procedure ClearFilter; safecall;
    procedure Filter(FilterParams: OleVariant); safecall;
    procedure SetIndex(const IndexName: WideString); safecall;
  end;

// *********************************************************************//
// DispIntf:  _RefBookFilterDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {8DC2A627-AF5C-419E-82D8-C8951E768BD3}
// *********************************************************************//
  _RefBookFilterDisp = dispinterface
    ['{8DC2A627-AF5C-419E-82D8-C8951E768BD3}']
    procedure ClearFilter; dispid 20;
    procedure Filter(FilterParams: OleVariant); dispid 21;
    procedure SetIndex(const IndexName: WideString); dispid 22;
    property RecordCount: Integer readonly dispid 9;
    property Position: Integer dispid 10;
    property Record_[AddKeyValues: WordBool]: OleVariant readonly dispid 11;
    procedure First; dispid 1;
    procedure Last; dispid 2;
    procedure Next; dispid 3;
    procedure Prev; dispid 4;
    procedure SeekByKey(const FieldName: WideString; Value: OleVariant); dispid 5;
    property Show: WordBool readonly dispid 6;
    property EOF: WordBool readonly dispid 7;
    property FieldValue[const FieldName: WideString]: OleVariant readonly dispid 8;
  end;

// *********************************************************************//
// The Class CoDocument provides a Create and CreateRemote method to
// create instances of the default interface IVBSDocument exposed by
// the CoClass Document. The functions are intended to be used by
// clients wishing to automate the CoClass objects exposed by the
// server of this typelibrary.
// *********************************************************************//
  CoDocument = class
    class function Create: IVBSDocument;
    class function CreateRemote(const MachineName: string): IVBSDocument;
  end;

// *********************************************************************//
// The Class CoDocNode provides a Create and CreateRemote method to
// create instances of the default interface IVBSDocNode exposed by
// the CoClass DocNode. The functions are intended to be used by
// clients wishing to automate the CoClass objects exposed by the
// server of this typelibrary.
// *********************************************************************//
  CoDocNode = class
    class function Create: IVBSDocNode;
    class function CreateRemote(const MachineName: string): IVBSDocNode;
  end;

// *********************************************************************//
// The Class CoApplication provides a Create and CreateRemote method to
// create instances of the default interface IVBSApplication exposed by
// the CoClass Application. The functions are intended to be used by
// clients wishing to automate the CoClass objects exposed by the
// server of this typelibrary.
// *********************************************************************//
  CoApplication = class
    class function Create: IVBSApplication;
    class function CreateRemote(const MachineName: string): IVBSApplication;
  end;

// *********************************************************************//
// The Class CoRefBook provides a Create and CreateRemote method to
// create instances of the default interface IVBSRefBook exposed by
// the CoClass RefBook. The functions are intended to be used by
// clients wishing to automate the CoClass objects exposed by the
// server of this typelibrary.
// *********************************************************************//
  CoRefBook = class
    class function Create: IVBSRefBook;
    class function CreateRemote(const MachineName: string): IVBSRefBook;
  end;

// *********************************************************************//
// The Class CoDemoApplication provides a Create and CreateRemote method to
// create instances of the default interface IApplication exposed by
// the CoClass DemoApplication. The functions are intended to be used by
// clients wishing to automate the CoClass objects exposed by the
// server of this typelibrary.
// *********************************************************************//
  CoDemoApplication = class
    class function Create: IApplication;
    class function CreateRemote(const MachineName: string): IApplication;
  end;

// *********************************************************************//
// The Class CoTwoDimArrayHelper provides a Create and CreateRemote method to
// create instances of the default interface I2DimArrayHelper exposed by
// the CoClass TwoDimArrayHelper. The functions are intended to be used by
// clients wishing to automate the CoClass objects exposed by the
// server of this typelibrary.
// *********************************************************************//
  CoTwoDimArrayHelper = class
    class function Create: I2DimArrayHelper;
    class function CreateRemote(const MachineName: string): I2DimArrayHelper;
  end;

// *********************************************************************//
// The Class CoThruRoutes provides a Create and CreateRemote method to
// create instances of the default interface IThruRoutes exposed by
// the CoClass ThruRoutes. The functions are intended to be used by
// clients wishing to automate the CoClass objects exposed by the
// server of this typelibrary.
// *********************************************************************//
  CoThruRoutes = class
    class function Create: IThruRoutes;
    class function CreateRemote(const MachineName: string): IThruRoutes;
  end;

// *********************************************************************//
// The Class CoCalcParameter provides a Create and CreateRemote method to
// create instances of the default interface ICalcParameter exposed by
// the CoClass CalcParameter. The functions are intended to be used by
// clients wishing to automate the CoClass objects exposed by the
// server of this typelibrary.
// *********************************************************************//
  CoCalcParameter = class
    class function Create: ICalcParameter;
    class function CreateRemote(const MachineName: string): ICalcParameter;
  end;

implementation

uses System.Win.ComObj;

class function CoDocument.Create: IVBSDocument;
begin
  Result := CreateComObject(CLASS_Document) as IVBSDocument;
end;

class function CoDocument.CreateRemote(const MachineName: string): IVBSDocument;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_Document) as IVBSDocument;
end;

class function CoDocNode.Create: IVBSDocNode;
begin
  Result := CreateComObject(CLASS_DocNode) as IVBSDocNode;
end;

class function CoDocNode.CreateRemote(const MachineName: string): IVBSDocNode;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_DocNode) as IVBSDocNode;
end;

class function CoApplication.Create: IVBSApplication;
begin
  Result := CreateComObject(CLASS_Application) as IVBSApplication;
end;

class function CoApplication.CreateRemote(const MachineName: string): IVBSApplication;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_Application) as IVBSApplication;
end;

class function CoRefBook.Create: IVBSRefBook;
begin
  Result := CreateComObject(CLASS_RefBook) as IVBSRefBook;
end;

class function CoRefBook.CreateRemote(const MachineName: string): IVBSRefBook;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_RefBook) as IVBSRefBook;
end;

class function CoDemoApplication.Create: IApplication;
begin
  Result := CreateComObject(CLASS_DemoApplication) as IApplication;
end;

class function CoDemoApplication.CreateRemote(const MachineName: string): IApplication;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_DemoApplication) as IApplication;
end;

class function CoTwoDimArrayHelper.Create: I2DimArrayHelper;
begin
  Result := CreateComObject(CLASS_TwoDimArrayHelper) as I2DimArrayHelper;
end;

class function CoTwoDimArrayHelper.CreateRemote(const MachineName: string): I2DimArrayHelper;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_TwoDimArrayHelper) as I2DimArrayHelper;
end;

class function CoThruRoutes.Create: IThruRoutes;
begin
  Result := CreateComObject(CLASS_ThruRoutes) as IThruRoutes;
end;

class function CoThruRoutes.CreateRemote(const MachineName: string): IThruRoutes;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_ThruRoutes) as IThruRoutes;
end;

class function CoCalcParameter.Create: ICalcParameter;
begin
  Result := CreateComObject(CLASS_CalcParameter) as ICalcParameter;
end;

class function CoCalcParameter.CreateRemote(const MachineName: string): ICalcParameter;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_CalcParameter) as ICalcParameter;
end;

end.
