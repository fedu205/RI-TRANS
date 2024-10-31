
{********************************************************************************}
{                                                                                }
{                                XML Data Binding                                }
{                                                                                }
{         Generated on: 14.07.2017 13:21:53                                      }
{       Generated from: C:\Fracht\Utils\Etran\ECPServerEtran\Docs\EtranECP.xsd   }
{   Settings stored in: C:\Fracht\Utils\Etran\ECPServerEtran\Docs\EtranECP.xdb   }
{                                                                                }
{********************************************************************************}

unit EtranECP;

interface

uses xmldom, XMLDoc, XMLIntf;

type

{ Forward Decls }

  IXMLSimpleStatus = interface;
  IXMLSimpleAnswer = interface;
  IXMLSimpleStatusAnswer = interface;
  IXMLECPWaitDocStatusReplay = interface;
  IXMLECPWaitDocument = interface;
  IXMLECPWaitDocumentList = interface;
  IXMLSimpleDocument = interface;
  IXMLDocStateType = interface;
  IXMLDocTypeType = interface;
  IXMLECPDocTypeType = interface;
  IXMLFilteredStatus = interface;
  IXMLTBusinessFunctionResult = interface;
  IXMLTBusinessFunctionResultList = interface;
  IXMLErrorAnswer = interface;
  IXMLErrorCode = interface;
  IXMLErrorMessage = interface;
  IXMLErrorStatusCode = interface;
  IXMLForeingKeyDocument = interface;
  IXMLTOrgType = interface;
  IXMLTOrganization = interface;
  IXMLTOrgPost = interface;
  IXMLTUser = interface;
  IXMLTOrgUser = interface;
  IXMLTStation = interface;
  IXMLTCar = interface;
  IXMLTBusinessFunction = interface;
  IXMLTOperation = interface;

{ IXMLSimpleStatus }

  IXMLSimpleStatus = interface(IXMLNode)
    ['{06D32940-9FAD-48AF-A677-A9B918445847}']
    { Property Accessors }
    function Get_FromDate: UnicodeString;
    function Get_ToDate: UnicodeString;
    function Get_OperId: Int64;
    procedure Set_FromDate(Value: UnicodeString);
    procedure Set_ToDate(Value: UnicodeString);
    procedure Set_OperId(Value: Int64);
    { Methods & Properties }
    property FromDate: UnicodeString read Get_FromDate write Set_FromDate;
    property ToDate: UnicodeString read Get_ToDate write Set_ToDate;
    property OperId: Int64 read Get_OperId write Set_OperId;
  end;

{ IXMLSimpleAnswer }

  IXMLSimpleAnswer = interface(IXMLNode)
    ['{F14E6F47-CE1D-4B5B-BBB8-2557AB51594D}']
    { Property Accessors }
    function Get_Warning: UnicodeString;
    function Get_ErrorCode: UnicodeString;
    function Get_ErrorMessage: UnicodeString;
    function Get_ErrorStatusCode: UnicodeString;
    procedure Set_Warning(Value: UnicodeString);
    procedure Set_ErrorCode(Value: UnicodeString);
    procedure Set_ErrorMessage(Value: UnicodeString);
    procedure Set_ErrorStatusCode(Value: UnicodeString);
    { Methods & Properties }
    property Warning: UnicodeString read Get_Warning write Set_Warning;
    property ErrorCode: UnicodeString read Get_ErrorCode write Set_ErrorCode;
    property ErrorMessage: UnicodeString read Get_ErrorMessage write Set_ErrorMessage;
    property ErrorStatusCode: UnicodeString read Get_ErrorStatusCode write Set_ErrorStatusCode;
  end;

{ IXMLSimpleStatusAnswer }

  IXMLSimpleStatusAnswer = interface(IXMLSimpleAnswer)
    ['{E8027D90-7FBC-4493-A0FB-8F65CCCE9F90}']
    { Property Accessors }
    function Get_OperId: Int64;
    function Get_OperDate: UnicodeString;
    procedure Set_OperId(Value: Int64);
    procedure Set_OperDate(Value: UnicodeString);
    { Methods & Properties }
    property OperId: Int64 read Get_OperId write Set_OperId;
    property OperDate: UnicodeString read Get_OperDate write Set_OperDate;
  end;

{ IXMLECPWaitDocStatusReplay }

  IXMLECPWaitDocStatusReplay = interface(IXMLSimpleStatusAnswer)
    ['{75747521-AA6C-4920-B040-49E664A07E9F}']
    { Property Accessors }
    function Get_ECPWaitDocument: IXMLECPWaitDocumentList;
    { Methods & Properties }
    property ECPWaitDocument: IXMLECPWaitDocumentList read Get_ECPWaitDocument;
  end;

{ IXMLECPWaitDocument }

  IXMLECPWaitDocument = interface(IXMLNode)
    ['{AF89E081-27CC-487B-9336-F6E2F7553DF4}']
    { Property Accessors }
    function Get_Document: IXMLSimpleDocument;
    function Get_ECPDate: UnicodeString;
    function Get_WaitECPDate: UnicodeString;
    function Get_ECPDocType: IXMLECPDocTypeType;
    procedure Set_ECPDate(Value: UnicodeString);
    procedure Set_WaitECPDate(Value: UnicodeString);
    { Methods & Properties }
    property Document: IXMLSimpleDocument read Get_Document;
    property ECPDate: UnicodeString read Get_ECPDate write Set_ECPDate;
    property WaitECPDate: UnicodeString read Get_WaitECPDate write Set_WaitECPDate;
    property ECPDocType: IXMLECPDocTypeType read Get_ECPDocType;
  end;

{ IXMLECPWaitDocumentList }

  IXMLECPWaitDocumentList = interface(IXMLNodeCollection)
    ['{8AE92DEB-F83A-467C-BD55-37D4F412D31C}']
    { Methods & Properties }
    function Add: IXMLECPWaitDocument;
    function Insert(const Index: Integer): IXMLECPWaitDocument;

    function Get_Item(Index: Integer): IXMLECPWaitDocument;
    property Items[Index: Integer]: IXMLECPWaitDocument read Get_Item; default;
  end;

{ IXMLSimpleDocument }

  IXMLSimpleDocument = interface(IXMLNode)
    ['{C1510411-1BE6-472C-A44D-64AC8110B546}']
    { Property Accessors }
    function Get_DOC_ID: Int64;
    function Get_DocDescription: UnicodeString;
    function Get_DocState: IXMLDocStateType;
    function Get_DocType: IXMLDocTypeType;
    procedure Set_DOC_ID(Value: Int64);
    procedure Set_DocDescription(Value: UnicodeString);
    { Methods & Properties }
    property DOC_ID: Int64 read Get_DOC_ID write Set_DOC_ID;
    property DocDescription: UnicodeString read Get_DocDescription write Set_DocDescription;
    property DocState: IXMLDocStateType read Get_DocState;
    property DocType: IXMLDocTypeType read Get_DocType;
  end;

{ IXMLDocStateType }

  IXMLDocStateType = interface(IXMLNode)
    ['{513D6649-FA01-4E03-A3C4-15960E6C93E1}']
    { Property Accessors }
    function Get_StateId: Integer;
    function Get_StateName: UnicodeString;
    procedure Set_StateId(Value: Integer);
    procedure Set_StateName(Value: UnicodeString);
    { Methods & Properties }
    property StateId: Integer read Get_StateId write Set_StateId;
    property StateName: UnicodeString read Get_StateName write Set_StateName;
  end;

{ IXMLDocTypeType }

  IXMLDocTypeType = interface(IXMLNode)
    ['{044423ED-9FDB-4D6C-9213-18ADEB76AC6B}']
    { Property Accessors }
    function Get_DocTypeId: Integer;
    function Get_DocTypeName: UnicodeString;
    procedure Set_DocTypeId(Value: Integer);
    procedure Set_DocTypeName(Value: UnicodeString);
    { Methods & Properties }
    property DocTypeId: Integer read Get_DocTypeId write Set_DocTypeId;
    property DocTypeName: UnicodeString read Get_DocTypeName write Set_DocTypeName;
  end;

{ IXMLECPDocTypeType }

  IXMLECPDocTypeType = interface(IXMLNode)
    ['{AE0CAD31-843F-4284-9472-33BCCC129E12}']
    { Property Accessors }
    function Get_ECPDocTypeID: Integer;
    function Get_ECPDocTypeName: UnicodeString;
    procedure Set_ECPDocTypeID(Value: Integer);
    procedure Set_ECPDocTypeName(Value: UnicodeString);
    { Methods & Properties }
    property ECPDocTypeID: Integer read Get_ECPDocTypeID write Set_ECPDocTypeID;
    property ECPDocTypeName: UnicodeString read Get_ECPDocTypeName write Set_ECPDocTypeName;
  end;

{ IXMLFilteredStatus }

  IXMLFilteredStatus = interface(IXMLSimpleStatus)
    ['{7A26BD47-EAC8-47A3-AAAC-59DF30E86B25}']
    { Property Accessors }
    function Get_CustomResult: IXMLTBusinessFunctionResultList;
    { Methods & Properties }
    property CustomResult: IXMLTBusinessFunctionResultList read Get_CustomResult;
  end;

{ IXMLTBusinessFunctionResult }

  IXMLTBusinessFunctionResult = interface(IXMLNode)
    ['{D8E2E5F7-6ED6-4B86-BF6D-01924EEA5B60}']
    { Property Accessors }
    function Get_ResultId: Integer;
    function Get_ResultName: UnicodeString;
    procedure Set_ResultId(Value: Integer);
    procedure Set_ResultName(Value: UnicodeString);
    { Methods & Properties }
    property ResultId: Integer read Get_ResultId write Set_ResultId;
    property ResultName: UnicodeString read Get_ResultName write Set_ResultName;
  end;

{ IXMLTBusinessFunctionResultList }

  IXMLTBusinessFunctionResultList = interface(IXMLNodeCollection)
    ['{86DDD00A-FA62-42A7-A830-48D17F7FF0A0}']
    { Methods & Properties }
    function Add: IXMLTBusinessFunctionResult;
    function Insert(const Index: Integer): IXMLTBusinessFunctionResult;

    function Get_Item(Index: Integer): IXMLTBusinessFunctionResult;
    property Items[Index: Integer]: IXMLTBusinessFunctionResult read Get_Item; default;
  end;

{ IXMLErrorAnswer }

  IXMLErrorAnswer = interface(IXMLNode)
    ['{F293D088-0BE0-4298-BA24-83707E0884FD}']
    { Property Accessors }
    function Get_ErrorCode: IXMLErrorCode;
    function Get_ErrorMessage: IXMLErrorMessage;
    function Get_ErrorStatusCode: IXMLErrorStatusCode;
    { Methods & Properties }
    property ErrorCode: IXMLErrorCode read Get_ErrorCode;
    property ErrorMessage: IXMLErrorMessage read Get_ErrorMessage;
    property ErrorStatusCode: IXMLErrorStatusCode read Get_ErrorStatusCode;
  end;

{ IXMLErrorCode }

  IXMLErrorCode = interface(IXMLNode)
    ['{3B21F7C5-8E37-40BB-9509-1A4DD696FF71}']
    { Property Accessors }
    function Get_Value: UnicodeString;
    procedure Set_Value(Value: UnicodeString);
    { Methods & Properties }
    property Value: UnicodeString read Get_Value write Set_Value;
  end;

{ IXMLErrorMessage }

  IXMLErrorMessage = interface(IXMLNode)
    ['{2CACE197-55E6-4454-A30A-C4A265687EB7}']
    { Property Accessors }
    function Get_Value: UnicodeString;
    procedure Set_Value(Value: UnicodeString);
    { Methods & Properties }
    property Value: UnicodeString read Get_Value write Set_Value;
  end;

{ IXMLErrorStatusCode }

  IXMLErrorStatusCode = interface(IXMLNode)
    ['{295805EA-8D19-45C2-8D0A-AC5CD57E30D0}']
    { Property Accessors }
    function Get_Value: UnicodeString;
    procedure Set_Value(Value: UnicodeString);
    { Methods & Properties }
    property Value: UnicodeString read Get_Value write Set_Value;
  end;

{ IXMLForeingKeyDocument }

  IXMLForeingKeyDocument = interface(IXMLNode)
    ['{81164D16-EA68-4C91-8230-3ADE0D74AAB2}']
    { Property Accessors }
    function Get_FrontEndId: UnicodeString;
    procedure Set_FrontEndId(Value: UnicodeString);
    { Methods & Properties }
    property FrontEndId: UnicodeString read Get_FrontEndId write Set_FrontEndId;
  end;

{ IXMLTOrgType }

  IXMLTOrgType = interface(IXMLNode)
    ['{57B5EA54-B0D0-49AA-83BD-34E2AF8ADF8E}']
    { Property Accessors }
    function Get_OrgTypeId: Int64;
    function Get_OrgTypeName: UnicodeString;
    procedure Set_OrgTypeId(Value: Int64);
    procedure Set_OrgTypeName(Value: UnicodeString);
    { Methods & Properties }
    property OrgTypeId: Int64 read Get_OrgTypeId write Set_OrgTypeId;
    property OrgTypeName: UnicodeString read Get_OrgTypeName write Set_OrgTypeName;
  end;

{ IXMLTOrganization }

  IXMLTOrganization = interface(IXMLNode)
    ['{76F6DB2B-3ACD-4A07-8D03-07555F52D395}']
    { Property Accessors }
    function Get_OrgType: IXMLTOrgType;
    function Get_OrgId: Int64;
    function Get_OrgName: UnicodeString;
    procedure Set_OrgId(Value: Int64);
    procedure Set_OrgName(Value: UnicodeString);
    { Methods & Properties }
    property OrgType: IXMLTOrgType read Get_OrgType;
    property OrgId: Int64 read Get_OrgId write Set_OrgId;
    property OrgName: UnicodeString read Get_OrgName write Set_OrgName;
  end;

{ IXMLTOrgPost }

  IXMLTOrgPost = interface(IXMLNode)
    ['{BB153B27-265F-4A97-974A-949F096F3ED1}']
    { Property Accessors }
    function Get_PostId: Integer;
    function Get_PostName: UnicodeString;
    procedure Set_PostId(Value: Integer);
    procedure Set_PostName(Value: UnicodeString);
    { Methods & Properties }
    property PostId: Integer read Get_PostId write Set_PostId;
    property PostName: UnicodeString read Get_PostName write Set_PostName;
  end;

{ IXMLTUser }

  IXMLTUser = interface(IXMLNode)
    ['{EFD61C97-7E69-414B-B42C-281B5048FD80}']
    { Property Accessors }
    function Get_UserId: Int64;
    function Get_LastName: UnicodeString;
    function Get_FirstName: UnicodeString;
    function Get_SecondName: UnicodeString;
    function Get_Post: IXMLTOrgPost;
    procedure Set_UserId(Value: Int64);
    procedure Set_LastName(Value: UnicodeString);
    procedure Set_FirstName(Value: UnicodeString);
    procedure Set_SecondName(Value: UnicodeString);
    { Methods & Properties }
    property UserId: Int64 read Get_UserId write Set_UserId;
    property LastName: UnicodeString read Get_LastName write Set_LastName;
    property FirstName: UnicodeString read Get_FirstName write Set_FirstName;
    property SecondName: UnicodeString read Get_SecondName write Set_SecondName;
    property Post: IXMLTOrgPost read Get_Post;
  end;

{ IXMLTOrgUser }

  IXMLTOrgUser = interface(IXMLTUser)
    ['{66C7CF22-0E56-45BC-A3C8-2B2179B82283}']
    { Property Accessors }
    function Get_Organization: IXMLTOrganization;
    { Methods & Properties }
    property Organization: IXMLTOrganization read Get_Organization;
  end;

{ IXMLTStation }

  IXMLTStation = interface(IXMLNode)
    ['{6600E204-17AB-4EE6-9D72-ECFF435A6317}']
    { Property Accessors }
    function Get_StationId: Integer;
    function Get_StationCode: UnicodeString;
    function Get_StationCodeMod11: UnicodeString;
    function Get_StationName: UnicodeString;
    procedure Set_StationId(Value: Integer);
    procedure Set_StationCode(Value: UnicodeString);
    procedure Set_StationCodeMod11(Value: UnicodeString);
    procedure Set_StationName(Value: UnicodeString);
    { Methods & Properties }
    property StationId: Integer read Get_StationId write Set_StationId;
    property StationCode: UnicodeString read Get_StationCode write Set_StationCode;
    property StationCodeMod11: UnicodeString read Get_StationCodeMod11 write Set_StationCodeMod11;
    property StationName: UnicodeString read Get_StationName write Set_StationName;
  end;

{ IXMLTCar }

  IXMLTCar = interface(IXMLNode)
    ['{59AA726B-DEA8-4DA1-B21C-2B4C1BCEA938}']
    { Property Accessors }
    function Get_CarNumber: UnicodeString;
    procedure Set_CarNumber(Value: UnicodeString);
    { Methods & Properties }
    property CarNumber: UnicodeString read Get_CarNumber write Set_CarNumber;
  end;

{ IXMLTBusinessFunction }

  IXMLTBusinessFunction = interface(IXMLNode)
    ['{F830D01F-0FAB-4BF2-949E-B9DA39AD352C}']
    { Property Accessors }
    function Get_BusFuncId: Integer;
    function Get_BusFuncName: UnicodeString;
    procedure Set_BusFuncId(Value: Integer);
    procedure Set_BusFuncName(Value: UnicodeString);
    { Methods & Properties }
    property BusFuncId: Integer read Get_BusFuncId write Set_BusFuncId;
    property BusFuncName: UnicodeString read Get_BusFuncName write Set_BusFuncName;
  end;

{ IXMLTOperation }

  IXMLTOperation = interface(IXMLNode)
    ['{BC3F419A-6F13-4A53-A94E-0EDBC3A36302}']
    { Property Accessors }
    function Get_OperId: Int64;
    function Get_OperDate: UnicodeString;
    function Get_DateFact: UnicodeString;
    function Get_PreviosState: IXMLDocStateType;
    function Get_BusinessFunction: IXMLTBusinessFunction;
    function Get_BusinessFunctionResult: IXMLTBusinessFunctionResult;
    function Get_User: IXMLTOrgUser;
    function Get_Remark: UnicodeString;
    procedure Set_OperId(Value: Int64);
    procedure Set_OperDate(Value: UnicodeString);
    procedure Set_DateFact(Value: UnicodeString);
    procedure Set_Remark(Value: UnicodeString);
    { Methods & Properties }
    property OperId: Int64 read Get_OperId write Set_OperId;
    property OperDate: UnicodeString read Get_OperDate write Set_OperDate;
    property DateFact: UnicodeString read Get_DateFact write Set_DateFact;
    property PreviosState: IXMLDocStateType read Get_PreviosState;
    property BusinessFunction: IXMLTBusinessFunction read Get_BusinessFunction;
    property BusinessFunctionResult: IXMLTBusinessFunctionResult read Get_BusinessFunctionResult;
    property User: IXMLTOrgUser read Get_User;
    property Remark: UnicodeString read Get_Remark write Set_Remark;
  end;

{ Forward Decls }

  TXMLSimpleStatus = class;
  TXMLSimpleAnswer = class;
  TXMLSimpleStatusAnswer = class;
  TXMLECPWaitDocStatusReplay = class;
  TXMLECPWaitDocument = class;
  TXMLECPWaitDocumentList = class;
  TXMLSimpleDocument = class;
  TXMLDocStateType = class;
  TXMLDocTypeType = class;
  TXMLECPDocTypeType = class;
  TXMLFilteredStatus = class;
  TXMLTBusinessFunctionResult = class;
  TXMLTBusinessFunctionResultList = class;
  TXMLErrorAnswer = class;
  TXMLErrorCode = class;
  TXMLErrorMessage = class;
  TXMLErrorStatusCode = class;
  TXMLForeingKeyDocument = class;
  TXMLTOrgType = class;
  TXMLTOrganization = class;
  TXMLTOrgPost = class;
  TXMLTUser = class;
  TXMLTOrgUser = class;
  TXMLTStation = class;
  TXMLTCar = class;
  TXMLTBusinessFunction = class;
  TXMLTOperation = class;

{ TXMLSimpleStatus }

  TXMLSimpleStatus = class(TXMLNode, IXMLSimpleStatus)
  protected
    { IXMLSimpleStatus }
    function Get_FromDate: UnicodeString;
    function Get_ToDate: UnicodeString;
    function Get_OperId: Int64;
    procedure Set_FromDate(Value: UnicodeString);
    procedure Set_ToDate(Value: UnicodeString);
    procedure Set_OperId(Value: Int64);
  end;

{ TXMLSimpleAnswer }

  TXMLSimpleAnswer = class(TXMLNode, IXMLSimpleAnswer)
  protected
    { IXMLSimpleAnswer }
    function Get_Warning: UnicodeString;
    function Get_ErrorCode: UnicodeString;
    function Get_ErrorMessage: UnicodeString;
    function Get_ErrorStatusCode: UnicodeString;
    procedure Set_Warning(Value: UnicodeString);
    procedure Set_ErrorCode(Value: UnicodeString);
    procedure Set_ErrorMessage(Value: UnicodeString);
    procedure Set_ErrorStatusCode(Value: UnicodeString);
  end;

{ TXMLSimpleStatusAnswer }

  TXMLSimpleStatusAnswer = class(TXMLSimpleAnswer, IXMLSimpleStatusAnswer)
  protected
    { IXMLSimpleStatusAnswer }
    function Get_OperId: Int64;
    function Get_OperDate: UnicodeString;
    procedure Set_OperId(Value: Int64);
    procedure Set_OperDate(Value: UnicodeString);
  end;

{ TXMLECPWaitDocStatusReplay }

  TXMLECPWaitDocStatusReplay = class(TXMLSimpleStatusAnswer, IXMLECPWaitDocStatusReplay)
  private
    FECPWaitDocument: IXMLECPWaitDocumentList;
  protected
    { IXMLECPWaitDocStatusReplay }
    function Get_ECPWaitDocument: IXMLECPWaitDocumentList;
  public
    procedure AfterConstruction; override;
  end;

{ TXMLECPWaitDocument }

  TXMLECPWaitDocument = class(TXMLNode, IXMLECPWaitDocument)
  protected
    { IXMLECPWaitDocument }
    function Get_Document: IXMLSimpleDocument;
    function Get_ECPDate: UnicodeString;
    function Get_WaitECPDate: UnicodeString;
    function Get_ECPDocType: IXMLECPDocTypeType;
    procedure Set_ECPDate(Value: UnicodeString);
    procedure Set_WaitECPDate(Value: UnicodeString);
  public
    procedure AfterConstruction; override;
  end;

{ TXMLECPWaitDocumentList }

  TXMLECPWaitDocumentList = class(TXMLNodeCollection, IXMLECPWaitDocumentList)
  protected
    { IXMLECPWaitDocumentList }
    function Add: IXMLECPWaitDocument;
    function Insert(const Index: Integer): IXMLECPWaitDocument;

    function Get_Item(Index: Integer): IXMLECPWaitDocument;
  end;

{ TXMLSimpleDocument }

  TXMLSimpleDocument = class(TXMLNode, IXMLSimpleDocument)
  protected
    { IXMLSimpleDocument }
    function Get_DOC_ID: Int64;
    function Get_DocDescription: UnicodeString;
    function Get_DocState: IXMLDocStateType;
    function Get_DocType: IXMLDocTypeType;
    procedure Set_DOC_ID(Value: Int64);
    procedure Set_DocDescription(Value: UnicodeString);
  public
    procedure AfterConstruction; override;
  end;

{ TXMLDocStateType }

  TXMLDocStateType = class(TXMLNode, IXMLDocStateType)
  protected
    { IXMLDocStateType }
    function Get_StateId: Integer;
    function Get_StateName: UnicodeString;
    procedure Set_StateId(Value: Integer);
    procedure Set_StateName(Value: UnicodeString);
  end;

{ TXMLDocTypeType }

  TXMLDocTypeType = class(TXMLNode, IXMLDocTypeType)
  protected
    { IXMLDocTypeType }
    function Get_DocTypeId: Integer;
    function Get_DocTypeName: UnicodeString;
    procedure Set_DocTypeId(Value: Integer);
    procedure Set_DocTypeName(Value: UnicodeString);
  end;

{ TXMLECPDocTypeType }

  TXMLECPDocTypeType = class(TXMLNode, IXMLECPDocTypeType)
  protected
    { IXMLECPDocTypeType }
    function Get_ECPDocTypeID: Integer;
    function Get_ECPDocTypeName: UnicodeString;
    procedure Set_ECPDocTypeID(Value: Integer);
    procedure Set_ECPDocTypeName(Value: UnicodeString);
  end;

{ TXMLFilteredStatus }

  TXMLFilteredStatus = class(TXMLSimpleStatus, IXMLFilteredStatus)
  private
    FCustomResult: IXMLTBusinessFunctionResultList;
  protected
    { IXMLFilteredStatus }
    function Get_CustomResult: IXMLTBusinessFunctionResultList;
  public
    procedure AfterConstruction; override;
  end;

{ TXMLTBusinessFunctionResult }

  TXMLTBusinessFunctionResult = class(TXMLNode, IXMLTBusinessFunctionResult)
  protected
    { IXMLTBusinessFunctionResult }
    function Get_ResultId: Integer;
    function Get_ResultName: UnicodeString;
    procedure Set_ResultId(Value: Integer);
    procedure Set_ResultName(Value: UnicodeString);
  end;

{ TXMLTBusinessFunctionResultList }

  TXMLTBusinessFunctionResultList = class(TXMLNodeCollection, IXMLTBusinessFunctionResultList)
  protected
    { IXMLTBusinessFunctionResultList }
    function Add: IXMLTBusinessFunctionResult;
    function Insert(const Index: Integer): IXMLTBusinessFunctionResult;

    function Get_Item(Index: Integer): IXMLTBusinessFunctionResult;
  end;

{ TXMLErrorAnswer }

  TXMLErrorAnswer = class(TXMLNode, IXMLErrorAnswer)
  protected
    { IXMLErrorAnswer }
    function Get_ErrorCode: IXMLErrorCode;
    function Get_ErrorMessage: IXMLErrorMessage;
    function Get_ErrorStatusCode: IXMLErrorStatusCode;
  public
    procedure AfterConstruction; override;
  end;

{ TXMLErrorCode }

  TXMLErrorCode = class(TXMLNode, IXMLErrorCode)
  protected
    { IXMLErrorCode }
    function Get_Value: UnicodeString;
    procedure Set_Value(Value: UnicodeString);
  end;

{ TXMLErrorMessage }

  TXMLErrorMessage = class(TXMLNode, IXMLErrorMessage)
  protected
    { IXMLErrorMessage }
    function Get_Value: UnicodeString;
    procedure Set_Value(Value: UnicodeString);
  end;

{ TXMLErrorStatusCode }

  TXMLErrorStatusCode = class(TXMLNode, IXMLErrorStatusCode)
  protected
    { IXMLErrorStatusCode }
    function Get_Value: UnicodeString;
    procedure Set_Value(Value: UnicodeString);
  end;

{ TXMLForeingKeyDocument }

  TXMLForeingKeyDocument = class(TXMLNode, IXMLForeingKeyDocument)
  protected
    { IXMLForeingKeyDocument }
    function Get_FrontEndId: UnicodeString;
    procedure Set_FrontEndId(Value: UnicodeString);
  end;

{ TXMLTOrgType }

  TXMLTOrgType = class(TXMLNode, IXMLTOrgType)
  protected
    { IXMLTOrgType }
    function Get_OrgTypeId: Int64;
    function Get_OrgTypeName: UnicodeString;
    procedure Set_OrgTypeId(Value: Int64);
    procedure Set_OrgTypeName(Value: UnicodeString);
  end;

{ TXMLTOrganization }

  TXMLTOrganization = class(TXMLNode, IXMLTOrganization)
  protected
    { IXMLTOrganization }
    function Get_OrgType: IXMLTOrgType;
    function Get_OrgId: Int64;
    function Get_OrgName: UnicodeString;
    procedure Set_OrgId(Value: Int64);
    procedure Set_OrgName(Value: UnicodeString);
  public
    procedure AfterConstruction; override;
  end;

{ TXMLTOrgPost }

  TXMLTOrgPost = class(TXMLNode, IXMLTOrgPost)
  protected
    { IXMLTOrgPost }
    function Get_PostId: Integer;
    function Get_PostName: UnicodeString;
    procedure Set_PostId(Value: Integer);
    procedure Set_PostName(Value: UnicodeString);
  end;

{ TXMLTUser }

  TXMLTUser = class(TXMLNode, IXMLTUser)
  protected
    { IXMLTUser }
    function Get_UserId: Int64;
    function Get_LastName: UnicodeString;
    function Get_FirstName: UnicodeString;
    function Get_SecondName: UnicodeString;
    function Get_Post: IXMLTOrgPost;
    procedure Set_UserId(Value: Int64);
    procedure Set_LastName(Value: UnicodeString);
    procedure Set_FirstName(Value: UnicodeString);
    procedure Set_SecondName(Value: UnicodeString);
  public
    procedure AfterConstruction; override;
  end;

{ TXMLTOrgUser }

  TXMLTOrgUser = class(TXMLTUser, IXMLTOrgUser)
  protected
    { IXMLTOrgUser }
    function Get_Organization: IXMLTOrganization;
  public
    procedure AfterConstruction; override;
  end;

{ TXMLTStation }

  TXMLTStation = class(TXMLNode, IXMLTStation)
  protected
    { IXMLTStation }
    function Get_StationId: Integer;
    function Get_StationCode: UnicodeString;
    function Get_StationCodeMod11: UnicodeString;
    function Get_StationName: UnicodeString;
    procedure Set_StationId(Value: Integer);
    procedure Set_StationCode(Value: UnicodeString);
    procedure Set_StationCodeMod11(Value: UnicodeString);
    procedure Set_StationName(Value: UnicodeString);
  end;

{ TXMLTCar }

  TXMLTCar = class(TXMLNode, IXMLTCar)
  protected
    { IXMLTCar }
    function Get_CarNumber: UnicodeString;
    procedure Set_CarNumber(Value: UnicodeString);
  end;

{ TXMLTBusinessFunction }

  TXMLTBusinessFunction = class(TXMLNode, IXMLTBusinessFunction)
  protected
    { IXMLTBusinessFunction }
    function Get_BusFuncId: Integer;
    function Get_BusFuncName: UnicodeString;
    procedure Set_BusFuncId(Value: Integer);
    procedure Set_BusFuncName(Value: UnicodeString);
  end;

{ TXMLTOperation }

  TXMLTOperation = class(TXMLNode, IXMLTOperation)
  protected
    { IXMLTOperation }
    function Get_OperId: Int64;
    function Get_OperDate: UnicodeString;
    function Get_DateFact: UnicodeString;
    function Get_PreviosState: IXMLDocStateType;
    function Get_BusinessFunction: IXMLTBusinessFunction;
    function Get_BusinessFunctionResult: IXMLTBusinessFunctionResult;
    function Get_User: IXMLTOrgUser;
    function Get_Remark: UnicodeString;
    procedure Set_OperId(Value: Int64);
    procedure Set_OperDate(Value: UnicodeString);
    procedure Set_DateFact(Value: UnicodeString);
    procedure Set_Remark(Value: UnicodeString);
  public
    procedure AfterConstruction; override;
  end;

{ Global Functions }

function GetECPWaitDocStatus(Doc: IXMLDocument): IXMLSimpleStatus;
function LoadECPWaitDocStatus(const FileName: string): IXMLSimpleStatus;
function NewECPWaitDocStatus: IXMLSimpleStatus;

const
  TargetNamespace = '';

implementation

{ Global Functions }

function GetECPWaitDocStatus(Doc: IXMLDocument): IXMLSimpleStatus;
begin
  Result := Doc.GetDocBinding('ECPWaitDocStatus', TXMLSimpleStatus, TargetNamespace) as IXMLSimpleStatus;
end;

function LoadECPWaitDocStatus(const FileName: string): IXMLSimpleStatus;
begin
  Result := LoadXMLDocument(FileName).GetDocBinding('ECPWaitDocStatus', TXMLSimpleStatus, TargetNamespace) as IXMLSimpleStatus;
end;

function NewECPWaitDocStatus: IXMLSimpleStatus;
begin
  Result := NewXMLDocument.GetDocBinding('ECPWaitDocStatus', TXMLSimpleStatus, TargetNamespace) as IXMLSimpleStatus;
end;

{ TXMLSimpleStatus }

function TXMLSimpleStatus.Get_FromDate: UnicodeString;
begin
  Result := ChildNodes['fromDate'].Text;
end;

procedure TXMLSimpleStatus.Set_FromDate(Value: UnicodeString);
begin
  ChildNodes['fromDate'].NodeValue := Value;
end;

function TXMLSimpleStatus.Get_ToDate: UnicodeString;
begin
  Result := ChildNodes['toDate'].Text;
end;

procedure TXMLSimpleStatus.Set_ToDate(Value: UnicodeString);
begin
  ChildNodes['toDate'].NodeValue := Value;
end;

function TXMLSimpleStatus.Get_OperId: Int64;
begin
  Result := ChildNodes['OperId'].NodeValue;
end;

procedure TXMLSimpleStatus.Set_OperId(Value: Int64);
begin
  ChildNodes['OperId'].NodeValue := Value;
end;

{ TXMLSimpleAnswer }

function TXMLSimpleAnswer.Get_Warning: UnicodeString;
begin
  Result := ChildNodes['Warning'].Text;
end;

procedure TXMLSimpleAnswer.Set_Warning(Value: UnicodeString);
begin
  ChildNodes['Warning'].NodeValue := Value;
end;

function TXMLSimpleAnswer.Get_ErrorCode: UnicodeString;
begin
  Result := ChildNodes['errorCode'].Text;
end;

procedure TXMLSimpleAnswer.Set_ErrorCode(Value: UnicodeString);
begin
  ChildNodes['errorCode'].NodeValue := Value;
end;

function TXMLSimpleAnswer.Get_ErrorMessage: UnicodeString;
begin
  Result := ChildNodes['errorMessage'].Text;
end;

procedure TXMLSimpleAnswer.Set_ErrorMessage(Value: UnicodeString);
begin
  ChildNodes['errorMessage'].NodeValue := Value;
end;

function TXMLSimpleAnswer.Get_ErrorStatusCode: UnicodeString;
begin
  Result := ChildNodes['errorStatusCode'].Text;
end;

procedure TXMLSimpleAnswer.Set_ErrorStatusCode(Value: UnicodeString);
begin
  ChildNodes['errorStatusCode'].NodeValue := Value;
end;

{ TXMLSimpleStatusAnswer }

function TXMLSimpleStatusAnswer.Get_OperId: Int64;
begin
  Result := ChildNodes['OperId'].NodeValue;
end;

procedure TXMLSimpleStatusAnswer.Set_OperId(Value: Int64);
begin
  ChildNodes['OperId'].NodeValue := Value;
end;

function TXMLSimpleStatusAnswer.Get_OperDate: UnicodeString;
begin
  Result := ChildNodes['OperDate'].Text;
end;

procedure TXMLSimpleStatusAnswer.Set_OperDate(Value: UnicodeString);
begin
  ChildNodes['OperDate'].NodeValue := Value;
end;

{ TXMLECPWaitDocStatusReplay }

procedure TXMLECPWaitDocStatusReplay.AfterConstruction;
begin
  RegisterChildNode('ECPWaitDocument', TXMLECPWaitDocument);
  FECPWaitDocument := CreateCollection(TXMLECPWaitDocumentList, IXMLECPWaitDocument, 'ECPWaitDocument') as IXMLECPWaitDocumentList;
  inherited;
end;

function TXMLECPWaitDocStatusReplay.Get_ECPWaitDocument: IXMLECPWaitDocumentList;
begin
  Result := FECPWaitDocument;
end;

{ TXMLECPWaitDocument }

procedure TXMLECPWaitDocument.AfterConstruction;
begin
  RegisterChildNode('Document', TXMLSimpleDocument);
  RegisterChildNode('ECPDocType', TXMLECPDocTypeType);
  inherited;
end;

function TXMLECPWaitDocument.Get_Document: IXMLSimpleDocument;
begin
  Result := ChildNodes['Document'] as IXMLSimpleDocument;
end;

function TXMLECPWaitDocument.Get_ECPDate: UnicodeString;
begin
  Result := ChildNodes['ECPDate'].Text;
end;

procedure TXMLECPWaitDocument.Set_ECPDate(Value: UnicodeString);
begin
  ChildNodes['ECPDate'].NodeValue := Value;
end;

function TXMLECPWaitDocument.Get_WaitECPDate: UnicodeString;
begin
  Result := ChildNodes['WaitECPDate'].Text;
end;

procedure TXMLECPWaitDocument.Set_WaitECPDate(Value: UnicodeString);
begin
  ChildNodes['WaitECPDate'].NodeValue := Value;
end;

function TXMLECPWaitDocument.Get_ECPDocType: IXMLECPDocTypeType;
begin
  Result := ChildNodes['ECPDocType'] as IXMLECPDocTypeType;
end;

{ TXMLECPWaitDocumentList }

function TXMLECPWaitDocumentList.Add: IXMLECPWaitDocument;
begin
  Result := AddItem(-1) as IXMLECPWaitDocument;
end;

function TXMLECPWaitDocumentList.Insert(const Index: Integer): IXMLECPWaitDocument;
begin
  Result := AddItem(Index) as IXMLECPWaitDocument;
end;

function TXMLECPWaitDocumentList.Get_Item(Index: Integer): IXMLECPWaitDocument;
begin
  Result := List[Index] as IXMLECPWaitDocument;
end;

{ TXMLSimpleDocument }

procedure TXMLSimpleDocument.AfterConstruction;
begin
  RegisterChildNode('DocState', TXMLDocStateType);
  RegisterChildNode('DocType', TXMLDocTypeType);
  inherited;
end;

function TXMLSimpleDocument.Get_DOC_ID: Int64;
begin
  Result := ChildNodes['DOC_ID'].NodeValue;
end;

procedure TXMLSimpleDocument.Set_DOC_ID(Value: Int64);
begin
  ChildNodes['DOC_ID'].NodeValue := Value;
end;

function TXMLSimpleDocument.Get_DocDescription: UnicodeString;
begin
  Result := ChildNodes['DocDescription'].Text;
end;

procedure TXMLSimpleDocument.Set_DocDescription(Value: UnicodeString);
begin
  ChildNodes['DocDescription'].NodeValue := Value;
end;

function TXMLSimpleDocument.Get_DocState: IXMLDocStateType;
begin
  Result := ChildNodes['DocState'] as IXMLDocStateType;
end;

function TXMLSimpleDocument.Get_DocType: IXMLDocTypeType;
begin
  Result := ChildNodes['DocType'] as IXMLDocTypeType;
end;

{ TXMLDocStateType }

function TXMLDocStateType.Get_StateId: Integer;
begin
  Result := ChildNodes['StateId'].NodeValue;
end;

procedure TXMLDocStateType.Set_StateId(Value: Integer);
begin
  ChildNodes['StateId'].NodeValue := Value;
end;

function TXMLDocStateType.Get_StateName: UnicodeString;
begin
  Result := ChildNodes['StateName'].Text;
end;

procedure TXMLDocStateType.Set_StateName(Value: UnicodeString);
begin
  ChildNodes['StateName'].NodeValue := Value;
end;

{ TXMLDocTypeType }

function TXMLDocTypeType.Get_DocTypeId: Integer;
begin
  Result := ChildNodes['DocTypeId'].NodeValue;
end;

procedure TXMLDocTypeType.Set_DocTypeId(Value: Integer);
begin
  ChildNodes['DocTypeId'].NodeValue := Value;
end;

function TXMLDocTypeType.Get_DocTypeName: UnicodeString;
begin
  Result := ChildNodes['DocTypeName'].Text;
end;

procedure TXMLDocTypeType.Set_DocTypeName(Value: UnicodeString);
begin
  ChildNodes['DocTypeName'].NodeValue := Value;
end;

{ TXMLECPDocTypeType }

function TXMLECPDocTypeType.Get_ECPDocTypeID: Integer;
begin
  Result := ChildNodes['ECPDocTypeID'].NodeValue;
end;

procedure TXMLECPDocTypeType.Set_ECPDocTypeID(Value: Integer);
begin
  ChildNodes['ECPDocTypeID'].NodeValue := Value;
end;

function TXMLECPDocTypeType.Get_ECPDocTypeName: UnicodeString;
begin
  Result := ChildNodes['ECPDocTypeName'].Text;
end;

procedure TXMLECPDocTypeType.Set_ECPDocTypeName(Value: UnicodeString);
begin
  ChildNodes['ECPDocTypeName'].NodeValue := Value;
end;

{ TXMLFilteredStatus }

procedure TXMLFilteredStatus.AfterConstruction;
begin
  RegisterChildNode('CustomResult', TXMLTBusinessFunctionResult);
  FCustomResult := CreateCollection(TXMLTBusinessFunctionResultList, IXMLTBusinessFunctionResult, 'CustomResult') as IXMLTBusinessFunctionResultList;
  inherited;
end;

function TXMLFilteredStatus.Get_CustomResult: IXMLTBusinessFunctionResultList;
begin
  Result := FCustomResult;
end;

{ TXMLTBusinessFunctionResult }

function TXMLTBusinessFunctionResult.Get_ResultId: Integer;
begin
  Result := ChildNodes['ResultId'].NodeValue;
end;

procedure TXMLTBusinessFunctionResult.Set_ResultId(Value: Integer);
begin
  ChildNodes['ResultId'].NodeValue := Value;
end;

function TXMLTBusinessFunctionResult.Get_ResultName: UnicodeString;
begin
  Result := ChildNodes['ResultName'].Text;
end;

procedure TXMLTBusinessFunctionResult.Set_ResultName(Value: UnicodeString);
begin
  ChildNodes['ResultName'].NodeValue := Value;
end;

{ TXMLTBusinessFunctionResultList }

function TXMLTBusinessFunctionResultList.Add: IXMLTBusinessFunctionResult;
begin
  Result := AddItem(-1) as IXMLTBusinessFunctionResult;
end;

function TXMLTBusinessFunctionResultList.Insert(const Index: Integer): IXMLTBusinessFunctionResult;
begin
  Result := AddItem(Index) as IXMLTBusinessFunctionResult;
end;

function TXMLTBusinessFunctionResultList.Get_Item(Index: Integer): IXMLTBusinessFunctionResult;
begin
  Result := List[Index] as IXMLTBusinessFunctionResult;
end;

{ TXMLErrorAnswer }

procedure TXMLErrorAnswer.AfterConstruction;
begin
  RegisterChildNode('errorCode', TXMLErrorCode);
  RegisterChildNode('errorMessage', TXMLErrorMessage);
  RegisterChildNode('errorStatusCode', TXMLErrorStatusCode);
  inherited;
end;

function TXMLErrorAnswer.Get_ErrorCode: IXMLErrorCode;
begin
  Result := ChildNodes['errorCode'] as IXMLErrorCode;
end;

function TXMLErrorAnswer.Get_ErrorMessage: IXMLErrorMessage;
begin
  Result := ChildNodes['errorMessage'] as IXMLErrorMessage;
end;

function TXMLErrorAnswer.Get_ErrorStatusCode: IXMLErrorStatusCode;
begin
  Result := ChildNodes['errorStatusCode'] as IXMLErrorStatusCode;
end;

{ TXMLErrorCode }

function TXMLErrorCode.Get_Value: UnicodeString;
begin
  Result := AttributeNodes['value'].Text;
end;

procedure TXMLErrorCode.Set_Value(Value: UnicodeString);
begin
  SetAttribute('value', Value);
end;

{ TXMLErrorMessage }

function TXMLErrorMessage.Get_Value: UnicodeString;
begin
  Result := AttributeNodes['value'].Text;
end;

procedure TXMLErrorMessage.Set_Value(Value: UnicodeString);
begin
  SetAttribute('value', Value);
end;

{ TXMLErrorStatusCode }

function TXMLErrorStatusCode.Get_Value: UnicodeString;
begin
  Result := AttributeNodes['value'].Text;
end;

procedure TXMLErrorStatusCode.Set_Value(Value: UnicodeString);
begin
  SetAttribute('value', Value);
end;

{ TXMLForeingKeyDocument }

function TXMLForeingKeyDocument.Get_FrontEndId: UnicodeString;
begin
  Result := ChildNodes['frontEndId'].Text;
end;

procedure TXMLForeingKeyDocument.Set_FrontEndId(Value: UnicodeString);
begin
  ChildNodes['frontEndId'].NodeValue := Value;
end;

{ TXMLTOrgType }

function TXMLTOrgType.Get_OrgTypeId: Int64;
begin
  Result := ChildNodes['OrgTypeId'].NodeValue;
end;

procedure TXMLTOrgType.Set_OrgTypeId(Value: Int64);
begin
  ChildNodes['OrgTypeId'].NodeValue := Value;
end;

function TXMLTOrgType.Get_OrgTypeName: UnicodeString;
begin
  Result := ChildNodes['OrgTypeName'].Text;
end;

procedure TXMLTOrgType.Set_OrgTypeName(Value: UnicodeString);
begin
  ChildNodes['OrgTypeName'].NodeValue := Value;
end;

{ TXMLTOrganization }

procedure TXMLTOrganization.AfterConstruction;
begin
  RegisterChildNode('OrgType', TXMLTOrgType);
  inherited;
end;

function TXMLTOrganization.Get_OrgType: IXMLTOrgType;
begin
  Result := ChildNodes['OrgType'] as IXMLTOrgType;
end;

function TXMLTOrganization.Get_OrgId: Int64;
begin
  Result := ChildNodes['OrgId'].NodeValue;
end;

procedure TXMLTOrganization.Set_OrgId(Value: Int64);
begin
  ChildNodes['OrgId'].NodeValue := Value;
end;

function TXMLTOrganization.Get_OrgName: UnicodeString;
begin
  Result := ChildNodes['OrgName'].Text;
end;

procedure TXMLTOrganization.Set_OrgName(Value: UnicodeString);
begin
  ChildNodes['OrgName'].NodeValue := Value;
end;

{ TXMLTOrgPost }

function TXMLTOrgPost.Get_PostId: Integer;
begin
  Result := ChildNodes['PostId'].NodeValue;
end;

procedure TXMLTOrgPost.Set_PostId(Value: Integer);
begin
  ChildNodes['PostId'].NodeValue := Value;
end;

function TXMLTOrgPost.Get_PostName: UnicodeString;
begin
  Result := ChildNodes['PostName'].Text;
end;

procedure TXMLTOrgPost.Set_PostName(Value: UnicodeString);
begin
  ChildNodes['PostName'].NodeValue := Value;
end;

{ TXMLTUser }

procedure TXMLTUser.AfterConstruction;
begin
  RegisterChildNode('Post', TXMLTOrgPost);
  inherited;
end;

function TXMLTUser.Get_UserId: Int64;
begin
  Result := ChildNodes['UserId'].NodeValue;
end;

procedure TXMLTUser.Set_UserId(Value: Int64);
begin
  ChildNodes['UserId'].NodeValue := Value;
end;

function TXMLTUser.Get_LastName: UnicodeString;
begin
  Result := ChildNodes['LastName'].Text;
end;

procedure TXMLTUser.Set_LastName(Value: UnicodeString);
begin
  ChildNodes['LastName'].NodeValue := Value;
end;

function TXMLTUser.Get_FirstName: UnicodeString;
begin
  Result := ChildNodes['FirstName'].Text;
end;

procedure TXMLTUser.Set_FirstName(Value: UnicodeString);
begin
  ChildNodes['FirstName'].NodeValue := Value;
end;

function TXMLTUser.Get_SecondName: UnicodeString;
begin
  Result := ChildNodes['SecondName'].Text;
end;

procedure TXMLTUser.Set_SecondName(Value: UnicodeString);
begin
  ChildNodes['SecondName'].NodeValue := Value;
end;

function TXMLTUser.Get_Post: IXMLTOrgPost;
begin
  Result := ChildNodes['Post'] as IXMLTOrgPost;
end;

{ TXMLTOrgUser }

procedure TXMLTOrgUser.AfterConstruction;
begin
  RegisterChildNode('Organization', TXMLTOrganization);
  inherited;
end;

function TXMLTOrgUser.Get_Organization: IXMLTOrganization;
begin
  Result := ChildNodes['Organization'] as IXMLTOrganization;
end;

{ TXMLTStation }

function TXMLTStation.Get_StationId: Integer;
begin
  Result := ChildNodes['StationId'].NodeValue;
end;

procedure TXMLTStation.Set_StationId(Value: Integer);
begin
  ChildNodes['StationId'].NodeValue := Value;
end;

function TXMLTStation.Get_StationCode: UnicodeString;
begin
  Result := ChildNodes['StationCode'].Text;
end;

procedure TXMLTStation.Set_StationCode(Value: UnicodeString);
begin
  ChildNodes['StationCode'].NodeValue := Value;
end;

function TXMLTStation.Get_StationCodeMod11: UnicodeString;
begin
  Result := ChildNodes['StationCodeMod11'].Text;
end;

procedure TXMLTStation.Set_StationCodeMod11(Value: UnicodeString);
begin
  ChildNodes['StationCodeMod11'].NodeValue := Value;
end;

function TXMLTStation.Get_StationName: UnicodeString;
begin
  Result := ChildNodes['StationName'].Text;
end;

procedure TXMLTStation.Set_StationName(Value: UnicodeString);
begin
  ChildNodes['StationName'].NodeValue := Value;
end;

{ TXMLTCar }

function TXMLTCar.Get_CarNumber: UnicodeString;
begin
  Result := ChildNodes['carNumber'].Text;
end;

procedure TXMLTCar.Set_CarNumber(Value: UnicodeString);
begin
  ChildNodes['carNumber'].NodeValue := Value;
end;

{ TXMLTBusinessFunction }

function TXMLTBusinessFunction.Get_BusFuncId: Integer;
begin
  Result := ChildNodes['BusFuncId'].NodeValue;
end;

procedure TXMLTBusinessFunction.Set_BusFuncId(Value: Integer);
begin
  ChildNodes['BusFuncId'].NodeValue := Value;
end;

function TXMLTBusinessFunction.Get_BusFuncName: UnicodeString;
begin
  Result := ChildNodes['BusFuncName'].Text;
end;

procedure TXMLTBusinessFunction.Set_BusFuncName(Value: UnicodeString);
begin
  ChildNodes['BusFuncName'].NodeValue := Value;
end;

{ TXMLTOperation }

procedure TXMLTOperation.AfterConstruction;
begin
  RegisterChildNode('PreviosState', TXMLDocStateType);
  RegisterChildNode('BusinessFunction', TXMLTBusinessFunction);
  RegisterChildNode('BusinessFunctionResult', TXMLTBusinessFunctionResult);
  RegisterChildNode('User', TXMLTOrgUser);
  inherited;
end;

function TXMLTOperation.Get_OperId: Int64;
begin
  Result := ChildNodes['OperId'].NodeValue;
end;

procedure TXMLTOperation.Set_OperId(Value: Int64);
begin
  ChildNodes['OperId'].NodeValue := Value;
end;

function TXMLTOperation.Get_OperDate: UnicodeString;
begin
  Result := ChildNodes['OperDate'].Text;
end;

procedure TXMLTOperation.Set_OperDate(Value: UnicodeString);
begin
  ChildNodes['OperDate'].NodeValue := Value;
end;

function TXMLTOperation.Get_DateFact: UnicodeString;
begin
  Result := ChildNodes['DateFact'].Text;
end;

procedure TXMLTOperation.Set_DateFact(Value: UnicodeString);
begin
  ChildNodes['DateFact'].NodeValue := Value;
end;

function TXMLTOperation.Get_PreviosState: IXMLDocStateType;
begin
  Result := ChildNodes['PreviosState'] as IXMLDocStateType;
end;

function TXMLTOperation.Get_BusinessFunction: IXMLTBusinessFunction;
begin
  Result := ChildNodes['BusinessFunction'] as IXMLTBusinessFunction;
end;

function TXMLTOperation.Get_BusinessFunctionResult: IXMLTBusinessFunctionResult;
begin
  Result := ChildNodes['BusinessFunctionResult'] as IXMLTBusinessFunctionResult;
end;

function TXMLTOperation.Get_User: IXMLTOrgUser;
begin
  Result := ChildNodes['User'] as IXMLTOrgUser;
end;

function TXMLTOperation.Get_Remark: UnicodeString;
begin
  Result := ChildNodes['Remark'].Text;
end;

procedure TXMLTOperation.Set_Remark(Value: UnicodeString);
begin
  ChildNodes['Remark'].NodeValue := Value;
end;

end.