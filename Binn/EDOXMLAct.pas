
{*****************************************************************************}
{                                                                             }
{                              XML Data Binding                               }
{                                                                             }
{         Generated on: 26.07.2016 12:15:33                                   }
{       Generated from: C:\Fracht\Docs\���\DP_IAKTPRM_1_987_00_05_01_01.xsd   }
{   Settings stored in: C:\Fracht\Docs\���\DP_IAKTPRM_1_987_00_05_01_01.xdb   }
{                                                                             }
{*****************************************************************************}

unit EDOXMLAct;

interface

uses xmldom, XMLDoc, XMLIntf;

type

{ Forward Decls }

  IXML���� = interface;
  IXML����_����������� = interface;
  IXML����_�����������_��������� = interface;
  IXML����_�������� = interface;
  IXML����_��������_������ = interface;
  IXML����������� = interface;
  IXML�����������_���� = interface;
  IXML�����������_����_���� = interface;
  IXML�����������_����_���� = interface;
  IXML������ = interface;
  IXML�������� = interface;
  IXML�����1��� = interface;
  IXML��������� = interface;
  IXML���������� = interface;
  IXML�����������_�������� = interface;
  IXML�����������_��������_������ = interface;
  IXML����_��������_������_��������� = interface;
  IXML����_��������_������_���������List = interface;
  IXML����_��������_������_���������_������ = interface;
  IXML����_��������_������_���� = interface;
  IXML����������� = interface;
  IXML��������������� = interface;
  IXML���������������_��������� = interface;
  IXML���������������_���������� = interface;
  IXML����_��������_������_������ = interface;
  IXML����_��������_��������� = interface;
  IXML����_��������_���������_�� = interface;
  IXML����_��������_���������_�� = interface;

{ IXML���� }

  IXML���� = interface(IXMLNode)
    ['{F5E2770D-51D7-4E0D-B4F3-32C9B539B354}']
    { Property Accessors }
    function Get_������: UnicodeString;
    function Get_��������: UnicodeString;
    function Get_��������: UnicodeString;
    function Get_�����������: IXML����_�����������;
    function Get_��������: IXML����_��������;
    procedure Set_������(Value: UnicodeString);
    procedure Set_��������(Value: UnicodeString);
    procedure Set_��������(Value: UnicodeString);
    { Methods & Properties }
    property ������: UnicodeString read Get_������ write Set_������;
    property ��������: UnicodeString read Get_�������� write Set_��������;
    property ��������: UnicodeString read Get_�������� write Set_��������;
    property �����������: IXML����_����������� read Get_�����������;
    property ��������: IXML����_�������� read Get_��������;
  end;

{ IXML����_����������� }

  IXML����_����������� = interface(IXMLNode)
    ['{729460CA-1366-4284-8837-2C75E6217EBD}']
    { Property Accessors }
    function Get_������: UnicodeString;
    function Get_�����: UnicodeString;
    function Get_���������: IXML����_�����������_���������;
    procedure Set_������(Value: UnicodeString);
    procedure Set_�����(Value: UnicodeString);
    { Methods & Properties }
    property ������: UnicodeString read Get_������ write Set_������;
    property �����: UnicodeString read Get_����� write Set_�����;
    property ���������: IXML����_�����������_��������� read Get_���������;
  end;

{ IXML����_�����������_��������� }

  IXML����_�����������_��������� = interface(IXMLNode)
    ['{65729703-0366-43B9-8205-ECA13F935850}']
    { Property Accessors }
    function Get_�������: UnicodeString;
    function Get_�����: UnicodeString;
    function Get_�����: UnicodeString;
    procedure Set_�������(Value: UnicodeString);
    procedure Set_�����(Value: UnicodeString);
    procedure Set_�����(Value: UnicodeString);
    { Methods & Properties }
    property �������: UnicodeString read Get_������� write Set_�������;
    property �����: UnicodeString read Get_����� write Set_�����;
    property �����: UnicodeString read Get_����� write Set_�����;
  end;

{ IXML����_�������� }

  IXML����_�������� = interface(IXMLNode)
    ['{56B6D60F-B9F1-462E-BBE0-306D88FF4C22}']
    { Property Accessors }
    function Get_���: UnicodeString;
    function Get_�������: UnicodeString;
    function Get_�������: UnicodeString;
    function Get_������: IXML����_��������_������;
    function Get_���������: IXML����_��������_���������;
    procedure Set_���(Value: UnicodeString);
    procedure Set_�������(Value: UnicodeString);
    procedure Set_�������(Value: UnicodeString);
    { Methods & Properties }
    property ���: UnicodeString read Get_��� write Set_���;
    property �������: UnicodeString read Get_������� write Set_�������;
    property �������: UnicodeString read Get_������� write Set_�������;
    property ������: IXML����_��������_������ read Get_������;
    property ���������: IXML����_��������_��������� read Get_���������;
  end;

{ IXML����_��������_������ }

  IXML����_��������_������ = interface(IXMLNode)
    ['{F379F8C2-0240-471A-9E06-31B984748590}']
    { Property Accessors }
    function Get_�����������: UnicodeString;
    function Get_������: UnicodeString;
    function Get_�������: UnicodeString;
    function Get_���������: UnicodeString;
    function Get_�����������: IXML�����������;
    function Get_���������: IXML����_��������_������_���������List;
    function Get_����: IXML����_��������_������_����;
    function Get_������: IXML����_��������_������_������;
    procedure Set_�����������(Value: UnicodeString);
    procedure Set_������(Value: UnicodeString);
    procedure Set_�������(Value: UnicodeString);
    procedure Set_���������(Value: UnicodeString);
    { Methods & Properties }
    property �����������: UnicodeString read Get_����������� write Set_�����������;
    property ������: UnicodeString read Get_������ write Set_������;
    property �������: UnicodeString read Get_������� write Set_�������;
    property ���������: UnicodeString read Get_��������� write Set_���������;
    property �����������: IXML����������� read Get_�����������;
    property ���������: IXML����_��������_������_���������List read Get_���������;
    property ����: IXML����_��������_������_���� read Get_����;
    property ������: IXML����_��������_������_������ read Get_������;
  end;

{ IXML����������� }

  IXML����������� = interface(IXMLNode)
    ['{DCD59C5C-12F9-4EF3-997A-965040ABAD7B}']
    { Property Accessors }
    function Get_����: UnicodeString;
    function Get_����: IXML�����������_����;
    function Get_�����: IXML��������;
    function Get_�������: IXML����������;
    function Get_��������: IXML�����������_��������;
    procedure Set_����(Value: UnicodeString);
    { Methods & Properties }
    property ����: UnicodeString read Get_���� write Set_����;
    property ����: IXML�����������_���� read Get_����;
    property �����: IXML�������� read Get_�����;
    property �������: IXML���������� read Get_�������;
    property ��������: IXML�����������_�������� read Get_��������;
  end;

{ IXML�����������_���� }

  IXML�����������_���� = interface(IXMLNode)
    ['{D1ABAFCA-D1B7-47C3-BDA6-234F9C9AD0C5}']
    { Property Accessors }
    function Get_����: IXML�����������_����_����;
    function Get_����: IXML�����������_����_����;
    { Methods & Properties }
    property ����: IXML�����������_����_���� read Get_����;
    property ����: IXML�����������_����_���� read Get_����;
  end;

{ IXML�����������_����_���� }

  IXML�����������_����_���� = interface(IXMLNode)
    ['{5CACA1A2-369C-4AC4-B784-EFBDD50F5DF0}']
    { Property Accessors }
    function Get_�������: UnicodeString;
    function Get_�����: UnicodeString;
    function Get_���: UnicodeString;
    function Get_�����: UnicodeString;
    procedure Set_�������(Value: UnicodeString);
    procedure Set_�����(Value: UnicodeString);
    procedure Set_���(Value: UnicodeString);
    procedure Set_�����(Value: UnicodeString);
    { Methods & Properties }
    property �������: UnicodeString read Get_������� write Set_�������;
    property �����: UnicodeString read Get_����� write Set_�����;
    property ���: UnicodeString read Get_��� write Set_���;
    property �����: UnicodeString read Get_����� write Set_�����;
  end;

{ IXML�����������_����_���� }

  IXML�����������_����_���� = interface(IXMLNode)
    ['{B2D89E4F-B867-47E6-9DA5-1129656278F8}']
    { Property Accessors }
    function Get_�����: UnicodeString;
    function Get_�����: IXML������;
    procedure Set_�����(Value: UnicodeString);
    { Methods & Properties }
    property �����: UnicodeString read Get_����� write Set_�����;
    property �����: IXML������ read Get_�����;
  end;

{ IXML������ }

  IXML������ = interface(IXMLNode)
    ['{16E05AD1-3815-4EE8-BD4A-8692AB029A1B}']
    { Property Accessors }
    function Get_�������: UnicodeString;
    function Get_���: UnicodeString;
    function Get_��������: UnicodeString;
    procedure Set_�������(Value: UnicodeString);
    procedure Set_���(Value: UnicodeString);
    procedure Set_��������(Value: UnicodeString);
    { Methods & Properties }
    property �������: UnicodeString read Get_������� write Set_�������;
    property ���: UnicodeString read Get_��� write Set_���;
    property ��������: UnicodeString read Get_�������� write Set_��������;
  end;

{ IXML�������� }

  IXML�������� = interface(IXMLNode)
    ['{55349FCD-C9DB-49F8-9C30-A647D8C83478}']
    { Property Accessors }
    function Get_�����: IXML�����1���;
    function Get_��������: UnicodeString;
    function Get_������: IXML���������;
    procedure Set_��������(Value: UnicodeString);
    { Methods & Properties }
    property �����: IXML�����1��� read Get_�����;
    property ��������: UnicodeString read Get_�������� write Set_��������;
    property ������: IXML��������� read Get_������;
  end;

{ IXML�����1��� }

  IXML�����1��� = interface(IXMLNode)
    ['{C461A50E-78EF-4214-89E5-6AD56C6C0C22}']
    { Property Accessors }
    function Get_������: UnicodeString;
    function Get_���������: UnicodeString;
    function Get_�����: UnicodeString;
    function Get_�����: UnicodeString;
    function Get_����������: UnicodeString;
    function Get_�����: UnicodeString;
    function Get_���: UnicodeString;
    function Get_������: UnicodeString;
    function Get_�����: UnicodeString;
    procedure Set_������(Value: UnicodeString);
    procedure Set_���������(Value: UnicodeString);
    procedure Set_�����(Value: UnicodeString);
    procedure Set_�����(Value: UnicodeString);
    procedure Set_����������(Value: UnicodeString);
    procedure Set_�����(Value: UnicodeString);
    procedure Set_���(Value: UnicodeString);
    procedure Set_������(Value: UnicodeString);
    procedure Set_�����(Value: UnicodeString);
    { Methods & Properties }
    property ������: UnicodeString read Get_������ write Set_������;
    property ���������: UnicodeString read Get_��������� write Set_���������;
    property �����: UnicodeString read Get_����� write Set_�����;
    property �����: UnicodeString read Get_����� write Set_�����;
    property ����������: UnicodeString read Get_���������� write Set_����������;
    property �����: UnicodeString read Get_����� write Set_�����;
    property ���: UnicodeString read Get_��� write Set_���;
    property ������: UnicodeString read Get_������ write Set_������;
    property �����: UnicodeString read Get_����� write Set_�����;
  end;

{ IXML��������� }

  IXML��������� = interface(IXMLNode)
    ['{1202C2A2-8693-403E-9460-1E6394BA7914}']
    { Property Accessors }
    function Get_������: UnicodeString;
    function Get_��������: UnicodeString;
    procedure Set_������(Value: UnicodeString);
    procedure Set_��������(Value: UnicodeString);
    { Methods & Properties }
    property ������: UnicodeString read Get_������ write Set_������;
    property ��������: UnicodeString read Get_�������� write Set_��������;
  end;

{ IXML���������� }

  IXML���������� = interface(IXMLNode)
    ['{CC5A5D5C-7DF4-4FBB-B71B-31E8D4150013}']
    { Property Accessors }
    function Get_���: UnicodeString;
    function Get_����: UnicodeString;
    procedure Set_���(Value: UnicodeString);
    procedure Set_����(Value: UnicodeString);
    { Methods & Properties }
    property ���: UnicodeString read Get_��� write Set_���;
    property ����: UnicodeString read Get_���� write Set_����;
  end;

{ IXML�����������_�������� }

  IXML�����������_�������� = interface(IXMLNode)
    ['{9A95D909-6D8A-4168-B23D-6B3674922BCC}']
    { Property Accessors }
    function Get_����������: UnicodeString;
    function Get_������: IXML�����������_��������_������;
    procedure Set_����������(Value: UnicodeString);
    { Methods & Properties }
    property ����������: UnicodeString read Get_���������� write Set_����������;
    property ������: IXML�����������_��������_������ read Get_������;
  end;

{ IXML�����������_��������_������ }

  IXML�����������_��������_������ = interface(IXMLNode)
    ['{A07377F2-CBD0-4CC4-B87A-F08C23C395E8}']
    { Property Accessors }
    function Get_��������: UnicodeString;
    function Get_���: UnicodeString;
    procedure Set_��������(Value: UnicodeString);
    procedure Set_���(Value: UnicodeString);
    { Methods & Properties }
    property ��������: UnicodeString read Get_�������� write Set_��������;
    property ���: UnicodeString read Get_��� write Set_���;
  end;

{ IXML����_��������_������_��������� }

  IXML����_��������_������_��������� = interface(IXMLNodeCollection)
    ['{522C8CBC-DC9D-445C-A5AA-4A3A6BDE30BF}']
    { Property Accessors }
    function Get_��������: UnicodeString;
    function Get_��������: UnicodeString;
    function Get_�����������: UnicodeString;
    function Get_��������: UnicodeString;
    function Get_����������: UnicodeString;
    function Get_������(Index: Integer): IXML����_��������_������_���������_������;
    procedure Set_��������(Value: UnicodeString);
    procedure Set_��������(Value: UnicodeString);
    procedure Set_�����������(Value: UnicodeString);
    procedure Set_��������(Value: UnicodeString);
    procedure Set_����������(Value: UnicodeString);
    { Methods & Properties }
    function Add: IXML����_��������_������_���������_������;
    function Insert(const Index: Integer): IXML����_��������_������_���������_������;
    property ��������: UnicodeString read Get_�������� write Set_��������;
    property ��������: UnicodeString read Get_�������� write Set_��������;
    property �����������: UnicodeString read Get_����������� write Set_�����������;
    property ��������: UnicodeString read Get_�������� write Set_��������;
    property ����������: UnicodeString read Get_���������� write Set_����������;
    property ������[Index: Integer]: IXML����_��������_������_���������_������ read Get_������; default;
  end;

{ IXML����_��������_������_���������List }

  IXML����_��������_������_���������List = interface(IXMLNodeCollection)
    ['{290EE544-6932-4C8B-A7B5-FDBFEEBEB325}']
    { Methods & Properties }
    function Add: IXML����_��������_������_���������;
    function Insert(const Index: Integer): IXML����_��������_������_���������;

    function Get_Item(Index: Integer): IXML����_��������_������_���������;
    property Items[Index: Integer]: IXML����_��������_������_��������� read Get_Item; default;
  end;

{ IXML����_��������_������_���������_������ }

  IXML����_��������_������_���������_������ = interface(IXMLNode)
    ['{6DF1D440-F8AC-4A85-B2E3-9C8953560AAF}']
    { Property Accessors }
    function Get_�����: UnicodeString;
    function Get_���������: UnicodeString;
    function Get_���������: UnicodeString;
    function Get_����: UnicodeString;
    function Get_����: UnicodeString;
    function Get_����������: UnicodeString;
    function Get_���������: UnicodeString;
    function Get_������: UnicodeString;
    function Get_��������: UnicodeString;
    function Get_���������: UnicodeString;
    function Get_��������: UnicodeString;
    procedure Set_�����(Value: UnicodeString);
    procedure Set_���������(Value: UnicodeString);
    procedure Set_���������(Value: UnicodeString);
    procedure Set_����(Value: UnicodeString);
    procedure Set_����(Value: UnicodeString);
    procedure Set_����������(Value: UnicodeString);
    procedure Set_���������(Value: UnicodeString);
    procedure Set_������(Value: UnicodeString);
    procedure Set_��������(Value: UnicodeString);
    procedure Set_���������(Value: UnicodeString);
    procedure Set_��������(Value: UnicodeString);
    { Methods & Properties }
    property �����: UnicodeString read Get_����� write Set_�����;
    property ���������: UnicodeString read Get_��������� write Set_���������;
    property ���������: UnicodeString read Get_��������� write Set_���������;
    property ����: UnicodeString read Get_���� write Set_����;
    property ����: UnicodeString read Get_���� write Set_����;
    property ����������: UnicodeString read Get_���������� write Set_����������;
    property ���������: UnicodeString read Get_��������� write Set_���������;
    property ������: UnicodeString read Get_������ write Set_������;
    property ��������: UnicodeString read Get_�������� write Set_��������;
    property ���������: UnicodeString read Get_��������� write Set_���������;
    property ��������: UnicodeString read Get_�������� write Set_��������;
  end;

{ IXML����_��������_������_���� }

  IXML����_��������_������_���� = interface(IXMLNode)
    ['{76A82F6C-7982-4675-B36E-CC3E8B786376}']
    { Property Accessors }
    function Get_����������: UnicodeString;
    function Get_�������������: IXML�����������;
    function Get_�������������: IXML���������������;
    procedure Set_����������(Value: UnicodeString);
    { Methods & Properties }
    property ����������: UnicodeString read Get_���������� write Set_����������;
    property �������������: IXML����������� read Get_�������������;
    property �������������: IXML��������������� read Get_�������������;
  end;

{ IXML����������� }

  IXML����������� = interface(IXMLNode)
    ['{69ECF64D-79EA-4870-9311-D77AF0100C61}']
    { Property Accessors }
    function Get_���������: UnicodeString;
    function Get_���: IXML������;
    procedure Set_���������(Value: UnicodeString);
    { Methods & Properties }
    property ���������: UnicodeString read Get_��������� write Set_���������;
    property ���: IXML������ read Get_���;
  end;

{ IXML��������������� }

  IXML��������������� = interface(IXMLNode)
    ['{721D84D0-2A16-429F-8FE9-5533C016F1C4}']
    { Property Accessors }
    function Get_����������: UnicodeString;
    function Get_�����������: UnicodeString;
    function Get_���������: IXML���������������_���������;
    function Get_����������: IXML���������������_����������;
    procedure Set_����������(Value: UnicodeString);
    procedure Set_�����������(Value: UnicodeString);
    { Methods & Properties }
    property ����������: UnicodeString read Get_���������� write Set_����������;
    property �����������: UnicodeString read Get_����������� write Set_�����������;
    property ���������: IXML���������������_��������� read Get_���������;
    property ����������: IXML���������������_���������� read Get_����������;
  end;

{ IXML���������������_��������� }

  IXML���������������_��������� = interface(IXMLNode)
    ['{E75B93CD-9677-4B05-AE80-B6859C027058}']
    { Property Accessors }
    function Get_����������: UnicodeString;
    function Get_��������: UnicodeString;
    function Get_����������: UnicodeString;
    function Get_���: IXML������;
    procedure Set_����������(Value: UnicodeString);
    procedure Set_��������(Value: UnicodeString);
    procedure Set_����������(Value: UnicodeString);
    { Methods & Properties }
    property ����������: UnicodeString read Get_���������� write Set_����������;
    property ��������: UnicodeString read Get_�������� write Set_��������;
    property ����������: UnicodeString read Get_���������� write Set_����������;
    property ���: IXML������ read Get_���;
  end;

{ IXML���������������_���������� }

  IXML���������������_���������� = interface(IXMLNode)
    ['{90967DCF-4C6C-4D31-A70C-325879E4F9F4}']
    { Property Accessors }
    function Get_�����: UnicodeString;
    function Get_�����������: UnicodeString;
    function Get_���: IXML������;
    procedure Set_�����(Value: UnicodeString);
    procedure Set_�����������(Value: UnicodeString);
    { Methods & Properties }
    property �����: UnicodeString read Get_����� write Set_�����;
    property �����������: UnicodeString read Get_����������� write Set_�����������;
    property ���: IXML������ read Get_���;
  end;

{ IXML����_��������_������_������ }

  IXML����_��������_������_������ = interface(IXMLNode)
    ['{50EDF5C6-12DD-4DFE-AE65-B4B89AA77B3C}']
    { Property Accessors }
    function Get_��������: UnicodeString;
    function Get_������������: UnicodeString;
    procedure Set_��������(Value: UnicodeString);
    procedure Set_������������(Value: UnicodeString);
    { Methods & Properties }
    property ��������: UnicodeString read Get_�������� write Set_��������;
    property ������������: UnicodeString read Get_������������ write Set_������������;
  end;

{ IXML����_��������_��������� }

  IXML����_��������_��������� = interface(IXMLNode)
    ['{3E6B38BB-F160-4E63-ABE2-0953B8608F12}']
    { Property Accessors }
    function Get_��: IXML����_��������_���������_��;
    function Get_��: IXML����_��������_���������_��;
    { Methods & Properties }
    property ��: IXML����_��������_���������_�� read Get_��;
    property ��: IXML����_��������_���������_�� read Get_��;
  end;

{ IXML����_��������_���������_�� }

  IXML����_��������_���������_�� = interface(IXMLNode)
    ['{B99303A0-0C38-468C-ABFC-F9CD1616A217}']
    { Property Accessors }
    function Get_�����: UnicodeString;
    function Get_����������: UnicodeString;
    function Get_���: IXML������;
    procedure Set_�����(Value: UnicodeString);
    procedure Set_����������(Value: UnicodeString);
    { Methods & Properties }
    property �����: UnicodeString read Get_����� write Set_�����;
    property ����������: UnicodeString read Get_���������� write Set_����������;
    property ���: IXML������ read Get_���;
  end;

{ IXML����_��������_���������_�� }

  IXML����_��������_���������_�� = interface(IXMLNode)
    ['{7346F0E2-B404-42B3-AB51-06CC19649751}']
    { Property Accessors }
    function Get_�����: UnicodeString;
    function Get_�����: UnicodeString;
    function Get_���: IXML������;
    procedure Set_�����(Value: UnicodeString);
    procedure Set_�����(Value: UnicodeString);
    { Methods & Properties }
    property �����: UnicodeString read Get_����� write Set_�����;
    property �����: UnicodeString read Get_����� write Set_�����;
    property ���: IXML������ read Get_���;
  end;

{ Forward Decls }

  TXML���� = class;
  TXML����_����������� = class;
  TXML����_�����������_��������� = class;
  TXML����_�������� = class;
  TXML����_��������_������ = class;
  TXML����������� = class;
  TXML�����������_���� = class;
  TXML�����������_����_���� = class;
  TXML�����������_����_���� = class;
  TXML������ = class;
  TXML�������� = class;
  TXML�����1��� = class;
  TXML��������� = class;
  TXML���������� = class;
  TXML�����������_�������� = class;
  TXML�����������_��������_������ = class;
  TXML����_��������_������_��������� = class;
  TXML����_��������_������_���������List = class;
  TXML����_��������_������_���������_������ = class;
  TXML����_��������_������_���� = class;
  TXML����������� = class;
  TXML��������������� = class;
  TXML���������������_��������� = class;
  TXML���������������_���������� = class;
  TXML����_��������_������_������ = class;
  TXML����_��������_��������� = class;
  TXML����_��������_���������_�� = class;
  TXML����_��������_���������_�� = class;

{ TXML���� }

  TXML���� = class(TXMLNode, IXML����)
  protected
    { IXML���� }
    function Get_������: UnicodeString;
    function Get_��������: UnicodeString;
    function Get_��������: UnicodeString;
    function Get_�����������: IXML����_�����������;
    function Get_��������: IXML����_��������;
    procedure Set_������(Value: UnicodeString);
    procedure Set_��������(Value: UnicodeString);
    procedure Set_��������(Value: UnicodeString);
  public
    procedure AfterConstruction; override;
  end;

{ TXML����_����������� }

  TXML����_����������� = class(TXMLNode, IXML����_�����������)
  protected
    { IXML����_����������� }
    function Get_������: UnicodeString;
    function Get_�����: UnicodeString;
    function Get_���������: IXML����_�����������_���������;
    procedure Set_������(Value: UnicodeString);
    procedure Set_�����(Value: UnicodeString);
  public
    procedure AfterConstruction; override;
  end;

{ TXML����_�����������_��������� }

  TXML����_�����������_��������� = class(TXMLNode, IXML����_�����������_���������)
  protected
    { IXML����_�����������_��������� }
    function Get_�������: UnicodeString;
    function Get_�����: UnicodeString;
    function Get_�����: UnicodeString;
    procedure Set_�������(Value: UnicodeString);
    procedure Set_�����(Value: UnicodeString);
    procedure Set_�����(Value: UnicodeString);
  end;

{ TXML����_�������� }

  TXML����_�������� = class(TXMLNode, IXML����_��������)
  protected
    { IXML����_�������� }
    function Get_���: UnicodeString;
    function Get_�������: UnicodeString;
    function Get_�������: UnicodeString;
    function Get_������: IXML����_��������_������;
    function Get_���������: IXML����_��������_���������;
    procedure Set_���(Value: UnicodeString);
    procedure Set_�������(Value: UnicodeString);
    procedure Set_�������(Value: UnicodeString);
  public
    procedure AfterConstruction; override;
  end;

{ TXML����_��������_������ }

  TXML����_��������_������ = class(TXMLNode, IXML����_��������_������)
  private
    F���������: IXML����_��������_������_���������List;
  protected
    { IXML����_��������_������ }
    function Get_�����������: UnicodeString;
    function Get_������: UnicodeString;
    function Get_�������: UnicodeString;
    function Get_���������: UnicodeString;
    function Get_�����������: IXML�����������;
    function Get_���������: IXML����_��������_������_���������List;
    function Get_����: IXML����_��������_������_����;
    function Get_������: IXML����_��������_������_������;
    procedure Set_�����������(Value: UnicodeString);
    procedure Set_������(Value: UnicodeString);
    procedure Set_�������(Value: UnicodeString);
    procedure Set_���������(Value: UnicodeString);
  public
    procedure AfterConstruction; override;
  end;

{ TXML����������� }

  TXML����������� = class(TXMLNode, IXML�����������)
  protected
    { IXML����������� }
    function Get_����: UnicodeString;
    function Get_����: IXML�����������_����;
    function Get_�����: IXML��������;
    function Get_�������: IXML����������;
    function Get_��������: IXML�����������_��������;
    procedure Set_����(Value: UnicodeString);
  public
    procedure AfterConstruction; override;
  end;

{ TXML�����������_���� }

  TXML�����������_���� = class(TXMLNode, IXML�����������_����)
  protected
    { IXML�����������_���� }
    function Get_����: IXML�����������_����_����;
    function Get_����: IXML�����������_����_����;
  public
    procedure AfterConstruction; override;
  end;

{ TXML�����������_����_���� }

  TXML�����������_����_���� = class(TXMLNode, IXML�����������_����_����)
  protected
    { IXML�����������_����_���� }
    function Get_�������: UnicodeString;
    function Get_�����: UnicodeString;
    function Get_���: UnicodeString;
    function Get_�����: UnicodeString;
    procedure Set_�������(Value: UnicodeString);
    procedure Set_�����(Value: UnicodeString);
    procedure Set_���(Value: UnicodeString);
    procedure Set_�����(Value: UnicodeString);
  end;

{ TXML�����������_����_���� }

  TXML�����������_����_���� = class(TXMLNode, IXML�����������_����_����)
  protected
    { IXML�����������_����_���� }
    function Get_�����: UnicodeString;
    function Get_�����: IXML������;
    procedure Set_�����(Value: UnicodeString);
  public
    procedure AfterConstruction; override;
  end;

{ TXML������ }

  TXML������ = class(TXMLNode, IXML������)
  protected
    { IXML������ }
    function Get_�������: UnicodeString;
    function Get_���: UnicodeString;
    function Get_��������: UnicodeString;
    procedure Set_�������(Value: UnicodeString);
    procedure Set_���(Value: UnicodeString);
    procedure Set_��������(Value: UnicodeString);
  end;

{ TXML�������� }

  TXML�������� = class(TXMLNode, IXML��������)
  protected
    { IXML�������� }
    function Get_�����: IXML�����1���;
    function Get_��������: UnicodeString;
    function Get_������: IXML���������;
    procedure Set_��������(Value: UnicodeString);
  public
    procedure AfterConstruction; override;
  end;

{ TXML�����1��� }

  TXML�����1��� = class(TXMLNode, IXML�����1���)
  protected
    { IXML�����1��� }
    function Get_������: UnicodeString;
    function Get_���������: UnicodeString;
    function Get_�����: UnicodeString;
    function Get_�����: UnicodeString;
    function Get_����������: UnicodeString;
    function Get_�����: UnicodeString;
    function Get_���: UnicodeString;
    function Get_������: UnicodeString;
    function Get_�����: UnicodeString;
    procedure Set_������(Value: UnicodeString);
    procedure Set_���������(Value: UnicodeString);
    procedure Set_�����(Value: UnicodeString);
    procedure Set_�����(Value: UnicodeString);
    procedure Set_����������(Value: UnicodeString);
    procedure Set_�����(Value: UnicodeString);
    procedure Set_���(Value: UnicodeString);
    procedure Set_������(Value: UnicodeString);
    procedure Set_�����(Value: UnicodeString);
  end;

{ TXML��������� }

  TXML��������� = class(TXMLNode, IXML���������)
  protected
    { IXML��������� }
    function Get_������: UnicodeString;
    function Get_��������: UnicodeString;
    procedure Set_������(Value: UnicodeString);
    procedure Set_��������(Value: UnicodeString);
  end;

{ TXML���������� }

  TXML���������� = class(TXMLNode, IXML����������)
  protected
    { IXML���������� }
    function Get_���: UnicodeString;
    function Get_����: UnicodeString;
    procedure Set_���(Value: UnicodeString);
    procedure Set_����(Value: UnicodeString);
  end;

{ TXML�����������_�������� }

  TXML�����������_�������� = class(TXMLNode, IXML�����������_��������)
  protected
    { IXML�����������_�������� }
    function Get_����������: UnicodeString;
    function Get_������: IXML�����������_��������_������;
    procedure Set_����������(Value: UnicodeString);
  public
    procedure AfterConstruction; override;
  end;

{ TXML�����������_��������_������ }

  TXML�����������_��������_������ = class(TXMLNode, IXML�����������_��������_������)
  protected
    { IXML�����������_��������_������ }
    function Get_��������: UnicodeString;
    function Get_���: UnicodeString;
    procedure Set_��������(Value: UnicodeString);
    procedure Set_���(Value: UnicodeString);
  end;

{ TXML����_��������_������_��������� }

  TXML����_��������_������_��������� = class(TXMLNodeCollection, IXML����_��������_������_���������)
  protected
    { IXML����_��������_������_��������� }
    function Get_��������: UnicodeString;
    function Get_��������: UnicodeString;
    function Get_�����������: UnicodeString;
    function Get_��������: UnicodeString;
    function Get_����������: UnicodeString;
    function Get_������(Index: Integer): IXML����_��������_������_���������_������;
    procedure Set_��������(Value: UnicodeString);
    procedure Set_��������(Value: UnicodeString);
    procedure Set_�����������(Value: UnicodeString);
    procedure Set_��������(Value: UnicodeString);
    procedure Set_����������(Value: UnicodeString);
    function Add: IXML����_��������_������_���������_������;
    function Insert(const Index: Integer): IXML����_��������_������_���������_������;
  public
    procedure AfterConstruction; override;
  end;

{ TXML����_��������_������_���������List }

  TXML����_��������_������_���������List = class(TXMLNodeCollection, IXML����_��������_������_���������List)
  protected
    { IXML����_��������_������_���������List }
    function Add: IXML����_��������_������_���������;
    function Insert(const Index: Integer): IXML����_��������_������_���������;

    function Get_Item(Index: Integer): IXML����_��������_������_���������;
  end;

{ TXML����_��������_������_���������_������ }

  TXML����_��������_������_���������_������ = class(TXMLNode, IXML����_��������_������_���������_������)
  protected
    { IXML����_��������_������_���������_������ }
    function Get_�����: UnicodeString;
    function Get_���������: UnicodeString;
    function Get_���������: UnicodeString;
    function Get_����: UnicodeString;
    function Get_����: UnicodeString;
    function Get_����������: UnicodeString;
    function Get_���������: UnicodeString;
    function Get_������: UnicodeString;
    function Get_��������: UnicodeString;
    function Get_���������: UnicodeString;
    function Get_��������: UnicodeString;
    procedure Set_�����(Value: UnicodeString);
    procedure Set_���������(Value: UnicodeString);
    procedure Set_���������(Value: UnicodeString);
    procedure Set_����(Value: UnicodeString);
    procedure Set_����(Value: UnicodeString);
    procedure Set_����������(Value: UnicodeString);
    procedure Set_���������(Value: UnicodeString);
    procedure Set_������(Value: UnicodeString);
    procedure Set_��������(Value: UnicodeString);
    procedure Set_���������(Value: UnicodeString);
    procedure Set_��������(Value: UnicodeString);
  end;

{ TXML����_��������_������_���� }

  TXML����_��������_������_���� = class(TXMLNode, IXML����_��������_������_����)
  protected
    { IXML����_��������_������_���� }
    function Get_����������: UnicodeString;
    function Get_�������������: IXML�����������;
    function Get_�������������: IXML���������������;
    procedure Set_����������(Value: UnicodeString);
  public
    procedure AfterConstruction; override;
  end;

{ TXML����������� }

  TXML����������� = class(TXMLNode, IXML�����������)
  protected
    { IXML����������� }
    function Get_���������: UnicodeString;
    function Get_���: IXML������;
    procedure Set_���������(Value: UnicodeString);
  public
    procedure AfterConstruction; override;
  end;

{ TXML��������������� }

  TXML��������������� = class(TXMLNode, IXML���������������)
  protected
    { IXML��������������� }
    function Get_����������: UnicodeString;
    function Get_�����������: UnicodeString;
    function Get_���������: IXML���������������_���������;
    function Get_����������: IXML���������������_����������;
    procedure Set_����������(Value: UnicodeString);
    procedure Set_�����������(Value: UnicodeString);
  public
    procedure AfterConstruction; override;
  end;

{ TXML���������������_��������� }

  TXML���������������_��������� = class(TXMLNode, IXML���������������_���������)
  protected
    { IXML���������������_��������� }
    function Get_����������: UnicodeString;
    function Get_��������: UnicodeString;
    function Get_����������: UnicodeString;
    function Get_���: IXML������;
    procedure Set_����������(Value: UnicodeString);
    procedure Set_��������(Value: UnicodeString);
    procedure Set_����������(Value: UnicodeString);
  public
    procedure AfterConstruction; override;
  end;

{ TXML���������������_���������� }

  TXML���������������_���������� = class(TXMLNode, IXML���������������_����������)
  protected
    { IXML���������������_���������� }
    function Get_�����: UnicodeString;
    function Get_�����������: UnicodeString;
    function Get_���: IXML������;
    procedure Set_�����(Value: UnicodeString);
    procedure Set_�����������(Value: UnicodeString);
  public
    procedure AfterConstruction; override;
  end;

{ TXML����_��������_������_������ }

  TXML����_��������_������_������ = class(TXMLNode, IXML����_��������_������_������)
  protected
    { IXML����_��������_������_������ }
    function Get_��������: UnicodeString;
    function Get_������������: UnicodeString;
    procedure Set_��������(Value: UnicodeString);
    procedure Set_������������(Value: UnicodeString);
  end;

{ TXML����_��������_��������� }

  TXML����_��������_��������� = class(TXMLNode, IXML����_��������_���������)
  protected
    { IXML����_��������_��������� }
    function Get_��: IXML����_��������_���������_��;
    function Get_��: IXML����_��������_���������_��;
  public
    procedure AfterConstruction; override;
  end;

{ TXML����_��������_���������_�� }

  TXML����_��������_���������_�� = class(TXMLNode, IXML����_��������_���������_��)
  protected
    { IXML����_��������_���������_�� }
    function Get_�����: UnicodeString;
    function Get_����������: UnicodeString;
    function Get_���: IXML������;
    procedure Set_�����(Value: UnicodeString);
    procedure Set_����������(Value: UnicodeString);
  public
    procedure AfterConstruction; override;
  end;

{ TXML����_��������_���������_�� }

  TXML����_��������_���������_�� = class(TXMLNode, IXML����_��������_���������_��)
  protected
    { IXML����_��������_���������_�� }
    function Get_�����: UnicodeString;
    function Get_�����: UnicodeString;
    function Get_���: IXML������;
    procedure Set_�����(Value: UnicodeString);
    procedure Set_�����(Value: UnicodeString);
  public
    procedure AfterConstruction; override;
  end;

{ Global Functions }

function Get����(Doc: IXMLDocument): IXML����;
function Load����(const FileName: string): IXML����;
function New����: IXML����;

const
  TargetNamespace = '';

implementation

{ Global Functions }

function Get����(Doc: IXMLDocument): IXML����;
begin
  Result := Doc.GetDocBinding('����', TXML����, TargetNamespace) as IXML����;
end;

function Load����(const FileName: string): IXML����;
begin
  Result := LoadXMLDocument(FileName).GetDocBinding('����', TXML����, TargetNamespace) as IXML����;
end;

function New����: IXML����;
begin
  Result := NewXMLDocument.GetDocBinding('����', TXML����, TargetNamespace) as IXML����;
end;

{ TXML���� }

procedure TXML����.AfterConstruction;
begin
  RegisterChildNode('�����������', TXML����_�����������);
  RegisterChildNode('��������', TXML����_��������);
  inherited;
end;

function TXML����.Get_������: UnicodeString;
begin
  Result := AttributeNodes['������'].Text;
end;

procedure TXML����.Set_������(Value: UnicodeString);
begin
  SetAttribute('������', Value);
end;

function TXML����.Get_��������: UnicodeString;
begin
  Result := AttributeNodes['��������'].Text;
end;

procedure TXML����.Set_��������(Value: UnicodeString);
begin
  SetAttribute('��������', Value);
end;

function TXML����.Get_��������: UnicodeString;
begin
  Result := AttributeNodes['��������'].Text;
end;

procedure TXML����.Set_��������(Value: UnicodeString);
begin
  SetAttribute('��������', Value);
end;

function TXML����.Get_�����������: IXML����_�����������;
begin
  Result := ChildNodes['�����������'] as IXML����_�����������;
end;

function TXML����.Get_��������: IXML����_��������;
begin
  Result := ChildNodes['��������'] as IXML����_��������;
end;

{ TXML����_����������� }

procedure TXML����_�����������.AfterConstruction;
begin
  RegisterChildNode('���������', TXML����_�����������_���������);
  inherited;
end;

function TXML����_�����������.Get_������: UnicodeString;
begin
  Result := AttributeNodes['������'].Text;
end;

procedure TXML����_�����������.Set_������(Value: UnicodeString);
begin
  SetAttribute('������', Value);
end;

function TXML����_�����������.Get_�����: UnicodeString;
begin
  Result := AttributeNodes['�����'].Text;
end;

procedure TXML����_�����������.Set_�����(Value: UnicodeString);
begin
  SetAttribute('�����', Value);
end;

function TXML����_�����������.Get_���������: IXML����_�����������_���������;
begin
  Result := ChildNodes['���������'] as IXML����_�����������_���������;
end;

{ TXML����_�����������_��������� }

function TXML����_�����������_���������.Get_�������: UnicodeString;
begin
  Result := AttributeNodes['�������'].Text;
end;

procedure TXML����_�����������_���������.Set_�������(Value: UnicodeString);
begin
  SetAttribute('�������', Value);
end;

function TXML����_�����������_���������.Get_�����: UnicodeString;
begin
  Result := AttributeNodes['�����'].Text;
end;

procedure TXML����_�����������_���������.Set_�����(Value: UnicodeString);
begin
  SetAttribute('�����', Value);
end;

function TXML����_�����������_���������.Get_�����: UnicodeString;
begin
  Result := AttributeNodes['�����'].Text;
end;

procedure TXML����_�����������_���������.Set_�����(Value: UnicodeString);
begin
  SetAttribute('�����', Value);
end;

{ TXML����_�������� }

procedure TXML����_��������.AfterConstruction;
begin
  RegisterChildNode('������', TXML����_��������_������);
  RegisterChildNode('���������', TXML����_��������_���������);
  inherited;
end;

function TXML����_��������.Get_���: UnicodeString;
begin
  Result := AttributeNodes['���'].Text;
end;

procedure TXML����_��������.Set_���(Value: UnicodeString);
begin
  SetAttribute('���', Value);
end;

function TXML����_��������.Get_�������: UnicodeString;
begin
  Result := AttributeNodes['�������'].Text;
end;

procedure TXML����_��������.Set_�������(Value: UnicodeString);
begin
  SetAttribute('�������', Value);
end;

function TXML����_��������.Get_�������: UnicodeString;
begin
  Result := AttributeNodes['�������'].Text;
end;

procedure TXML����_��������.Set_�������(Value: UnicodeString);
begin
  SetAttribute('�������', Value);
end;

function TXML����_��������.Get_������: IXML����_��������_������;
begin
  Result := ChildNodes['������'] as IXML����_��������_������;
end;

function TXML����_��������.Get_���������: IXML����_��������_���������;
begin
  Result := ChildNodes['���������'] as IXML����_��������_���������;
end;

{ TXML����_��������_������ }

procedure TXML����_��������_������.AfterConstruction;
begin
  RegisterChildNode('�����������', TXML�����������);
  RegisterChildNode('���������', TXML����_��������_������_���������);
  RegisterChildNode('����', TXML����_��������_������_����);
  RegisterChildNode('������', TXML����_��������_������_������);
  F��������� := CreateCollection(TXML����_��������_������_���������List, IXML����_��������_������_���������, '���������') as IXML����_��������_������_���������List;
  inherited;
end;

function TXML����_��������_������.Get_�����������: UnicodeString;
begin
  Result := AttributeNodes['�����������'].Text;
end;

procedure TXML����_��������_������.Set_�����������(Value: UnicodeString);
begin
  SetAttribute('�����������', Value);
end;

function TXML����_��������_������.Get_������: UnicodeString;
begin
  Result := AttributeNodes['������'].Text;
end;

procedure TXML����_��������_������.Set_������(Value: UnicodeString);
begin
  SetAttribute('������', Value);
end;

function TXML����_��������_������.Get_�������: UnicodeString;
begin
  Result := AttributeNodes['�������'].Text;
end;

procedure TXML����_��������_������.Set_�������(Value: UnicodeString);
begin
  SetAttribute('�������', Value);
end;

function TXML����_��������_������.Get_���������: UnicodeString;
begin
  Result := ChildNodes['���������'].Text;
end;

procedure TXML����_��������_������.Set_���������(Value: UnicodeString);
begin
  ChildNodes['���������'].NodeValue := Value;
end;

function TXML����_��������_������.Get_�����������: IXML�����������;
begin
  Result := ChildNodes['�����������'] as IXML�����������;
end;

function TXML����_��������_������.Get_���������: IXML����_��������_������_���������List;
begin
  Result := F���������;
end;

function TXML����_��������_������.Get_����: IXML����_��������_������_����;
begin
  Result := ChildNodes['����'] as IXML����_��������_������_����;
end;

function TXML����_��������_������.Get_������: IXML����_��������_������_������;
begin
  Result := ChildNodes['������'] as IXML����_��������_������_������;
end;

{ TXML����������� }

procedure TXML�����������.AfterConstruction;
begin
  RegisterChildNode('����', TXML�����������_����);
  RegisterChildNode('�����', TXML��������);
  RegisterChildNode('�������', TXML����������);
  RegisterChildNode('��������', TXML�����������_��������);
  inherited;
end;

function TXML�����������.Get_����: UnicodeString;
begin
  Result := AttributeNodes['����'].Text;
end;

procedure TXML�����������.Set_����(Value: UnicodeString);
begin
  SetAttribute('����', Value);
end;

function TXML�����������.Get_����: IXML�����������_����;
begin
  Result := ChildNodes['����'] as IXML�����������_����;
end;

function TXML�����������.Get_�����: IXML��������;
begin
  Result := ChildNodes['�����'] as IXML��������;
end;

function TXML�����������.Get_�������: IXML����������;
begin
  Result := ChildNodes['�������'] as IXML����������;
end;

function TXML�����������.Get_��������: IXML�����������_��������;
begin
  Result := ChildNodes['��������'] as IXML�����������_��������;
end;

{ TXML�����������_���� }

procedure TXML�����������_����.AfterConstruction;
begin
  RegisterChildNode('����', TXML�����������_����_����);
  RegisterChildNode('����', TXML�����������_����_����);
  inherited;
end;

function TXML�����������_����.Get_����: IXML�����������_����_����;
begin
  Result := ChildNodes['����'] as IXML�����������_����_����;
end;

function TXML�����������_����.Get_����: IXML�����������_����_����;
begin
  Result := ChildNodes['����'] as IXML�����������_����_����;
end;

{ TXML�����������_����_���� }

function TXML�����������_����_����.Get_�������: UnicodeString;
begin
  Result := AttributeNodes['�������'].Text;
end;

procedure TXML�����������_����_����.Set_�������(Value: UnicodeString);
begin
  SetAttribute('�������', Value);
end;

function TXML�����������_����_����.Get_�����: UnicodeString;
begin
  Result := AttributeNodes['�����'].Text;
end;

procedure TXML�����������_����_����.Set_�����(Value: UnicodeString);
begin
  SetAttribute('�����', Value);
end;

function TXML�����������_����_����.Get_���: UnicodeString;
begin
  Result := AttributeNodes['���'].Text;
end;

procedure TXML�����������_����_����.Set_���(Value: UnicodeString);
begin
  SetAttribute('���', Value);
end;

function TXML�����������_����_����.Get_�����: UnicodeString;
begin
  Result := AttributeNodes['�����'].Text;
end;

procedure TXML�����������_����_����.Set_�����(Value: UnicodeString);
begin
  SetAttribute('�����', Value);
end;

{ TXML�����������_����_���� }

procedure TXML�����������_����_����.AfterConstruction;
begin
  RegisterChildNode('�����', TXML������);
  inherited;
end;

function TXML�����������_����_����.Get_�����: UnicodeString;
begin
  Result := AttributeNodes['�����'].Text;
end;

procedure TXML�����������_����_����.Set_�����(Value: UnicodeString);
begin
  SetAttribute('�����', Value);
end;

function TXML�����������_����_����.Get_�����: IXML������;
begin
  Result := ChildNodes['�����'] as IXML������;
end;

{ TXML������ }

function TXML������.Get_�������: UnicodeString;
begin
  Result := AttributeNodes['�������'].Text;
end;

procedure TXML������.Set_�������(Value: UnicodeString);
begin
  SetAttribute('�������', Value);
end;

function TXML������.Get_���: UnicodeString;
begin
  Result := AttributeNodes['���'].Text;
end;

procedure TXML������.Set_���(Value: UnicodeString);
begin
  SetAttribute('���', Value);
end;

function TXML������.Get_��������: UnicodeString;
begin
  Result := AttributeNodes['��������'].Text;
end;

procedure TXML������.Set_��������(Value: UnicodeString);
begin
  SetAttribute('��������', Value);
end;

{ TXML�������� }

procedure TXML��������.AfterConstruction;
begin
  RegisterChildNode('�����', TXML�����1���);
  RegisterChildNode('������', TXML���������);
  inherited;
end;

function TXML��������.Get_�����: IXML�����1���;
begin
  Result := ChildNodes['�����'] as IXML�����1���;
end;

function TXML��������.Get_��������: UnicodeString;
begin
  Result := ChildNodes['��������'].Text;
end;

procedure TXML��������.Set_��������(Value: UnicodeString);
begin
  ChildNodes['��������'].NodeValue := Value;
end;

function TXML��������.Get_������: IXML���������;
begin
  Result := ChildNodes['������'] as IXML���������;
end;

{ TXML�����1��� }

function TXML�����1���.Get_������: UnicodeString;
begin
  Result := AttributeNodes['������'].Text;
end;

procedure TXML�����1���.Set_������(Value: UnicodeString);
begin
  SetAttribute('������', Value);
end;

function TXML�����1���.Get_���������: UnicodeString;
begin
  Result := AttributeNodes['���������'].Text;
end;

procedure TXML�����1���.Set_���������(Value: UnicodeString);
begin
  SetAttribute('���������', Value);
end;

function TXML�����1���.Get_�����: UnicodeString;
begin
  Result := AttributeNodes['�����'].Text;
end;

procedure TXML�����1���.Set_�����(Value: UnicodeString);
begin
  SetAttribute('�����', Value);
end;

function TXML�����1���.Get_�����: UnicodeString;
begin
  Result := AttributeNodes['�����'].Text;
end;

procedure TXML�����1���.Set_�����(Value: UnicodeString);
begin
  SetAttribute('�����', Value);
end;

function TXML�����1���.Get_����������: UnicodeString;
begin
  Result := AttributeNodes['����������'].Text;
end;

procedure TXML�����1���.Set_����������(Value: UnicodeString);
begin
  SetAttribute('����������', Value);
end;

function TXML�����1���.Get_�����: UnicodeString;
begin
  Result := AttributeNodes['�����'].Text;
end;

procedure TXML�����1���.Set_�����(Value: UnicodeString);
begin
  SetAttribute('�����', Value);
end;

function TXML�����1���.Get_���: UnicodeString;
begin
  Result := AttributeNodes['���'].Text;
end;

procedure TXML�����1���.Set_���(Value: UnicodeString);
begin
  SetAttribute('���', Value);
end;

function TXML�����1���.Get_������: UnicodeString;
begin
  Result := AttributeNodes['������'].Text;
end;

procedure TXML�����1���.Set_������(Value: UnicodeString);
begin
  SetAttribute('������', Value);
end;

function TXML�����1���.Get_�����: UnicodeString;
begin
  Result := AttributeNodes['�����'].Text;
end;

procedure TXML�����1���.Set_�����(Value: UnicodeString);
begin
  SetAttribute('�����', Value);
end;

{ TXML��������� }

function TXML���������.Get_������: UnicodeString;
begin
  Result := AttributeNodes['������'].Text;
end;

procedure TXML���������.Set_������(Value: UnicodeString);
begin
  SetAttribute('������', Value);
end;

function TXML���������.Get_��������: UnicodeString;
begin
  Result := AttributeNodes['��������'].Text;
end;

procedure TXML���������.Set_��������(Value: UnicodeString);
begin
  SetAttribute('��������', Value);
end;

{ TXML���������� }

function TXML����������.Get_���: UnicodeString;
begin
  Result := AttributeNodes['���'].Text;
end;

procedure TXML����������.Set_���(Value: UnicodeString);
begin
  SetAttribute('���', Value);
end;

function TXML����������.Get_����: UnicodeString;
begin
  Result := AttributeNodes['����'].Text;
end;

procedure TXML����������.Set_����(Value: UnicodeString);
begin
  SetAttribute('����', Value);
end;

{ TXML�����������_�������� }

procedure TXML�����������_��������.AfterConstruction;
begin
  RegisterChildNode('������', TXML�����������_��������_������);
  inherited;
end;

function TXML�����������_��������.Get_����������: UnicodeString;
begin
  Result := AttributeNodes['����������'].Text;
end;

procedure TXML�����������_��������.Set_����������(Value: UnicodeString);
begin
  SetAttribute('����������', Value);
end;

function TXML�����������_��������.Get_������: IXML�����������_��������_������;
begin
  Result := ChildNodes['������'] as IXML�����������_��������_������;
end;

{ TXML�����������_��������_������ }

function TXML�����������_��������_������.Get_��������: UnicodeString;
begin
  Result := AttributeNodes['��������'].Text;
end;

procedure TXML�����������_��������_������.Set_��������(Value: UnicodeString);
begin
  SetAttribute('��������', Value);
end;

function TXML�����������_��������_������.Get_���: UnicodeString;
begin
  Result := AttributeNodes['���'].Text;
end;

procedure TXML�����������_��������_������.Set_���(Value: UnicodeString);
begin
  SetAttribute('���', Value);
end;

{ TXML����_��������_������_��������� }

procedure TXML����_��������_������_���������.AfterConstruction;
begin
  RegisterChildNode('������', TXML����_��������_������_���������_������);
  ItemTag := '������';
  ItemInterface := IXML����_��������_������_���������_������;
  inherited;
end;

function TXML����_��������_������_���������.Get_��������: UnicodeString;
begin
  Result := AttributeNodes['��������'].Text;
end;

procedure TXML����_��������_������_���������.Set_��������(Value: UnicodeString);
begin
  SetAttribute('��������', Value);
end;

function TXML����_��������_������_���������.Get_��������: UnicodeString;
begin
  Result := AttributeNodes['��������'].Text;
end;

procedure TXML����_��������_������_���������.Set_��������(Value: UnicodeString);
begin
  SetAttribute('��������', Value);
end;

function TXML����_��������_������_���������.Get_�����������: UnicodeString;
begin
  Result := AttributeNodes['�����������'].Text;
end;

procedure TXML����_��������_������_���������.Set_�����������(Value: UnicodeString);
begin
  SetAttribute('�����������', Value);
end;

function TXML����_��������_������_���������.Get_��������: UnicodeString;
begin
  Result := AttributeNodes['��������'].Text;
end;

procedure TXML����_��������_������_���������.Set_��������(Value: UnicodeString);
begin
  SetAttribute('��������', Value);
end;

function TXML����_��������_������_���������.Get_����������: UnicodeString;
begin
  Result := AttributeNodes['����������'].Text;
end;

procedure TXML����_��������_������_���������.Set_����������(Value: UnicodeString);
begin
  SetAttribute('����������', Value);
end;

function TXML����_��������_������_���������.Get_������(Index: Integer): IXML����_��������_������_���������_������;
begin
  Result := List[Index] as IXML����_��������_������_���������_������;
end;

function TXML����_��������_������_���������.Add: IXML����_��������_������_���������_������;
begin
  Result := AddItem(-1) as IXML����_��������_������_���������_������;
end;

function TXML����_��������_������_���������.Insert(const Index: Integer): IXML����_��������_������_���������_������;
begin
  Result := AddItem(Index) as IXML����_��������_������_���������_������;
end;

{ TXML����_��������_������_���������List }

function TXML����_��������_������_���������List.Add: IXML����_��������_������_���������;
begin
  Result := AddItem(-1) as IXML����_��������_������_���������;
end;

function TXML����_��������_������_���������List.Insert(const Index: Integer): IXML����_��������_������_���������;
begin
  Result := AddItem(Index) as IXML����_��������_������_���������;
end;

function TXML����_��������_������_���������List.Get_Item(Index: Integer): IXML����_��������_������_���������;
begin
  Result := List[Index] as IXML����_��������_������_���������;
end;

{ TXML����_��������_������_���������_������ }

function TXML����_��������_������_���������_������.Get_�����: UnicodeString;
begin
  Result := AttributeNodes['�����'].Text;
end;

procedure TXML����_��������_������_���������_������.Set_�����(Value: UnicodeString);
begin
  SetAttribute('�����', Value);
end;

function TXML����_��������_������_���������_������.Get_���������: UnicodeString;
begin
  Result := AttributeNodes['���������'].Text;
end;

procedure TXML����_��������_������_���������_������.Set_���������(Value: UnicodeString);
begin
  SetAttribute('���������', Value);
end;

function TXML����_��������_������_���������_������.Get_���������: UnicodeString;
begin
  Result := AttributeNodes['���������'].Text;
end;

procedure TXML����_��������_������_���������_������.Set_���������(Value: UnicodeString);
begin
  SetAttribute('���������', Value);
end;

function TXML����_��������_������_���������_������.Get_����: UnicodeString;
begin
  Result := AttributeNodes['����'].Text;
end;

procedure TXML����_��������_������_���������_������.Set_����(Value: UnicodeString);
begin
  SetAttribute('����', Value);
end;

function TXML����_��������_������_���������_������.Get_����: UnicodeString;
begin
  Result := AttributeNodes['����'].Text;
end;

procedure TXML����_��������_������_���������_������.Set_����(Value: UnicodeString);
begin
  SetAttribute('����', Value);
end;

function TXML����_��������_������_���������_������.Get_����������: UnicodeString;
begin
  Result := AttributeNodes['����������'].Text;
end;

procedure TXML����_��������_������_���������_������.Set_����������(Value: UnicodeString);
begin
  SetAttribute('����������', Value);
end;

function TXML����_��������_������_���������_������.Get_���������: UnicodeString;
begin
  Result := AttributeNodes['���������'].Text;
end;

procedure TXML����_��������_������_���������_������.Set_���������(Value: UnicodeString);
begin
  SetAttribute('���������', Value);
end;

function TXML����_��������_������_���������_������.Get_������: UnicodeString;
begin
  Result := AttributeNodes['������'].Text;
end;

procedure TXML����_��������_������_���������_������.Set_������(Value: UnicodeString);
begin
  SetAttribute('������', Value);
end;

function TXML����_��������_������_���������_������.Get_��������: UnicodeString;
begin
  Result := AttributeNodes['��������'].Text;
end;

procedure TXML����_��������_������_���������_������.Set_��������(Value: UnicodeString);
begin
  SetAttribute('��������', Value);
end;

function TXML����_��������_������_���������_������.Get_���������: UnicodeString;
begin
  Result := AttributeNodes['���������'].Text;
end;

procedure TXML����_��������_������_���������_������.Set_���������(Value: UnicodeString);
begin
  SetAttribute('���������', Value);
end;

function TXML����_��������_������_���������_������.Get_��������: UnicodeString;
begin
  Result := ChildNodes['��������'].Text;
end;

procedure TXML����_��������_������_���������_������.Set_��������(Value: UnicodeString);
begin
  ChildNodes['��������'].NodeValue := Value;
end;

{ TXML����_��������_������_���� }

procedure TXML����_��������_������_����.AfterConstruction;
begin
  RegisterChildNode('�������������', TXML�����������);
  RegisterChildNode('�������������', TXML���������������);
  inherited;
end;

function TXML����_��������_������_����.Get_����������: UnicodeString;
begin
  Result := AttributeNodes['����������'].Text;
end;

procedure TXML����_��������_������_����.Set_����������(Value: UnicodeString);
begin
  SetAttribute('����������', Value);
end;

function TXML����_��������_������_����.Get_�������������: IXML�����������;
begin
  Result := ChildNodes['�������������'] as IXML�����������;
end;

function TXML����_��������_������_����.Get_�������������: IXML���������������;
begin
  Result := ChildNodes['�������������'] as IXML���������������;
end;

{ TXML����������� }

procedure TXML�����������.AfterConstruction;
begin
  RegisterChildNode('���', TXML������);
  inherited;
end;

function TXML�����������.Get_���������: UnicodeString;
begin
  Result := AttributeNodes['���������'].Text;
end;

procedure TXML�����������.Set_���������(Value: UnicodeString);
begin
  SetAttribute('���������', Value);
end;

function TXML�����������.Get_���: IXML������;
begin
  Result := ChildNodes['���'] as IXML������;
end;

{ TXML��������������� }

procedure TXML���������������.AfterConstruction;
begin
  RegisterChildNode('���������', TXML���������������_���������);
  RegisterChildNode('����������', TXML���������������_����������);
  inherited;
end;

function TXML���������������.Get_����������: UnicodeString;
begin
  Result := AttributeNodes['����������'].Text;
end;

procedure TXML���������������.Set_����������(Value: UnicodeString);
begin
  SetAttribute('����������', Value);
end;

function TXML���������������.Get_�����������: UnicodeString;
begin
  Result := AttributeNodes['�����������'].Text;
end;

procedure TXML���������������.Set_�����������(Value: UnicodeString);
begin
  SetAttribute('�����������', Value);
end;

function TXML���������������.Get_���������: IXML���������������_���������;
begin
  Result := ChildNodes['���������'] as IXML���������������_���������;
end;

function TXML���������������.Get_����������: IXML���������������_����������;
begin
  Result := ChildNodes['����������'] as IXML���������������_����������;
end;

{ TXML���������������_��������� }

procedure TXML���������������_���������.AfterConstruction;
begin
  RegisterChildNode('���', TXML������);
  inherited;
end;

function TXML���������������_���������.Get_����������: UnicodeString;
begin
  Result := AttributeNodes['����������'].Text;
end;

procedure TXML���������������_���������.Set_����������(Value: UnicodeString);
begin
  SetAttribute('����������', Value);
end;

function TXML���������������_���������.Get_��������: UnicodeString;
begin
  Result := AttributeNodes['��������'].Text;
end;

procedure TXML���������������_���������.Set_��������(Value: UnicodeString);
begin
  SetAttribute('��������', Value);
end;

function TXML���������������_���������.Get_����������: UnicodeString;
begin
  Result := AttributeNodes['����������'].Text;
end;

procedure TXML���������������_���������.Set_����������(Value: UnicodeString);
begin
  SetAttribute('����������', Value);
end;

function TXML���������������_���������.Get_���: IXML������;
begin
  Result := ChildNodes['���'] as IXML������;
end;

{ TXML���������������_���������� }

procedure TXML���������������_����������.AfterConstruction;
begin
  RegisterChildNode('���', TXML������);
  inherited;
end;

function TXML���������������_����������.Get_�����: UnicodeString;
begin
  Result := AttributeNodes['�����'].Text;
end;

procedure TXML���������������_����������.Set_�����(Value: UnicodeString);
begin
  SetAttribute('�����', Value);
end;

function TXML���������������_����������.Get_�����������: UnicodeString;
begin
  Result := AttributeNodes['�����������'].Text;
end;

procedure TXML���������������_����������.Set_�����������(Value: UnicodeString);
begin
  SetAttribute('�����������', Value);
end;

function TXML���������������_����������.Get_���: IXML������;
begin
  Result := ChildNodes['���'] as IXML������;
end;

{ TXML����_��������_������_������ }

function TXML����_��������_������_������.Get_��������: UnicodeString;
begin
  Result := AttributeNodes['��������'].Text;
end;

procedure TXML����_��������_������_������.Set_��������(Value: UnicodeString);
begin
  SetAttribute('��������', Value);
end;

function TXML����_��������_������_������.Get_������������: UnicodeString;
begin
  Result := AttributeNodes['������������'].Text;
end;

procedure TXML����_��������_������_������.Set_������������(Value: UnicodeString);
begin
  SetAttribute('������������', Value);
end;

{ TXML����_��������_��������� }

procedure TXML����_��������_���������.AfterConstruction;
begin
  RegisterChildNode('��', TXML����_��������_���������_��);
  RegisterChildNode('��', TXML����_��������_���������_��);
  inherited;
end;

function TXML����_��������_���������.Get_��: IXML����_��������_���������_��;
begin
  Result := ChildNodes['��'] as IXML����_��������_���������_��;
end;

function TXML����_��������_���������.Get_��: IXML����_��������_���������_��;
begin
  Result := ChildNodes['��'] as IXML����_��������_���������_��;
end;

{ TXML����_��������_���������_�� }

procedure TXML����_��������_���������_��.AfterConstruction;
begin
  RegisterChildNode('���', TXML������);
  inherited;
end;

function TXML����_��������_���������_��.Get_�����: UnicodeString;
begin
  Result := AttributeNodes['�����'].Text;
end;

procedure TXML����_��������_���������_��.Set_�����(Value: UnicodeString);
begin
  SetAttribute('�����', Value);
end;

function TXML����_��������_���������_��.Get_����������: UnicodeString;
begin
  Result := AttributeNodes['����������'].Text;
end;

procedure TXML����_��������_���������_��.Set_����������(Value: UnicodeString);
begin
  SetAttribute('����������', Value);
end;

function TXML����_��������_���������_��.Get_���: IXML������;
begin
  Result := ChildNodes['���'] as IXML������;
end;

{ TXML����_��������_���������_�� }

procedure TXML����_��������_���������_��.AfterConstruction;
begin
  RegisterChildNode('���', TXML������);
  inherited;
end;

function TXML����_��������_���������_��.Get_�����: UnicodeString;
begin
  Result := AttributeNodes['�����'].Text;
end;

procedure TXML����_��������_���������_��.Set_�����(Value: UnicodeString);
begin
  SetAttribute('�����', Value);
end;

function TXML����_��������_���������_��.Get_�����: UnicodeString;
begin
  Result := AttributeNodes['�����'].Text;
end;

procedure TXML����_��������_���������_��.Set_�����(Value: UnicodeString);
begin
  SetAttribute('�����', Value);
end;

function TXML����_��������_���������_��.Get_���: IXML������;
begin
  Result := ChildNodes['���'] as IXML������;
end;

end.