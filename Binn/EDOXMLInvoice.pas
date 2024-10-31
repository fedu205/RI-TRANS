
{**********************************************************}
{                                                          }
{                     XML Data Binding                     }
{                                                          }
{         Generated on: 20.11.2018 13:56:21                }
{       Generated from: C:\Fracht\Docs\���\SCHFDOPPR.xsd   }
{   Settings stored in: C:\Fracht\Docs\���\SCHFDOPPR.xdb   }
{                                                          }
{**********************************************************}

unit EDOXMLInvoice;

interface

uses xmldom, XMLDoc, XMLIntf;

type

{ Forward Decls }

  IXML���� = interface;
  IXML����_����������� = interface;
  IXML����_�����������_��������� = interface;
  IXML����_�������� = interface;
  IXML����_��������_�������� = interface;
  IXML����_��������_��������_������� = interface;
  IXML����������� = interface;
  IXML�����������_���� = interface;
  IXML������� = interface;
  IXML������ = interface;
  IXML�����������_����_������ = interface;
  IXML�����������_����_�������� = interface;
  IXML�������� = interface;
  IXML�������� = interface;
  IXML��������� = interface;
  IXML���������� = interface;
  IXML�����������_�������� = interface;
  IXML�����������_��������_������ = interface;
  IXML����_��������_��������_������ = interface;
  IXML����_��������_��������_����� = interface;
  IXML����_��������_��������_�����List = interface;
  IXML����_��������_��������_��������1 = interface;
  IXML����_��������_��������_���������1 = interface;
  IXML����������� = interface;
  IXML�����������List = interface;
  IXML����_��������_���������� = interface;
  IXML����_��������_����������_������� = interface;
  IXML����_��������_����������_�������List = interface;
  IXML����������� = interface;
  IXML��������� = interface;
  IXML����_��������_����������_�������_���� = interface;
  IXML����_��������_����������_�������_����List = interface;
  IXML����_��������_����������_�������_���������� = interface;
  IXML����_��������_����������_�������� = interface;
  IXML����_��������_��������� = interface;
  IXML����_��������_���������_����� = interface;
  IXML����_��������_���������_�����_������ = interface;
  IXML����_��������_���������_�����_������List = interface;
  IXML����_��������_���������_�����_�������� = interface;
  IXML����_��������_���������_�����_��������_���������� = interface;
  IXML����_��������_���������_�����_��������_������ = interface;
  IXML����_��������_���������_�����_��������_������_���������� = interface;
  IXML����_��������_���������_�����_��������_������_����� = interface;
  IXML����_��������_���������_�����_�������� = interface;
  IXML����_��������_���������_�����_��������_�������� = interface;
  IXML����_��������_���������_�����_��������_��������List = interface;
  IXML����_��������_���������_�����_��������� = interface;
  IXML����_��������_���������_���������3 = interface;
  IXML����_��������_��������� = interface;
  IXML����_��������_���������List = interface;
  IXML����_��������_���������_�� = interface;
  IXML����_��������_���������_�� = interface;

{ IXML���� }

  IXML���� = interface(IXMLNode)
    ['{63D1D09A-A16B-4766-9166-0E253043D163}']
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
    ['{BE3A2A26-3F64-4275-BFD1-A9C27BE033E3}']
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
    ['{D7334B9A-A269-40B3-B5AC-466A343ACE78}']
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
    ['{89A4DC0E-F200-4421-9E54-97DF90390402}']
    { Property Accessors }
    function Get_���: UnicodeString;
    function Get_�������: UnicodeString;
    function Get_��������: UnicodeString;
    function Get_����������: UnicodeString;
    function Get_���������: UnicodeString;
    function Get_���������: UnicodeString;
    function Get_���������������: UnicodeString;
    function Get_���������������: UnicodeString;
    function Get_��������: IXML����_��������_��������;
    function Get_����������: IXML����_��������_����������;
    function Get_���������: IXML����_��������_���������;
    function Get_���������: IXML����_��������_���������List;
    procedure Set_���(Value: UnicodeString);
    procedure Set_�������(Value: UnicodeString);
    procedure Set_��������(Value: UnicodeString);
    procedure Set_����������(Value: UnicodeString);
    procedure Set_���������(Value: UnicodeString);
    procedure Set_���������(Value: UnicodeString);
    procedure Set_���������������(Value: UnicodeString);
    procedure Set_���������������(Value: UnicodeString);
    { Methods & Properties }
    property ���: UnicodeString read Get_��� write Set_���;
    property �������: UnicodeString read Get_������� write Set_�������;
    property ��������: UnicodeString read Get_�������� write Set_��������;
    property ����������: UnicodeString read Get_���������� write Set_����������;
    property ���������: UnicodeString read Get_��������� write Set_���������;
    property ���������: UnicodeString read Get_��������� write Set_���������;
    property ���������������: UnicodeString read Get_��������������� write Set_���������������;
    property ���������������: UnicodeString read Get_��������������� write Set_���������������;
    property ��������: IXML����_��������_�������� read Get_��������;
    property ����������: IXML����_��������_���������� read Get_����������;
    property ���������: IXML����_��������_��������� read Get_���������;
    property ���������: IXML����_��������_���������List read Get_���������;
  end;

{ IXML����_��������_�������� }

  IXML����_��������_�������� = interface(IXMLNode)
    ['{7EA5D71A-4C9E-431B-B300-619D720F1928}']
    { Property Accessors }
    function Get_��������: UnicodeString;
    function Get_�������: UnicodeString;
    function Get_������: UnicodeString;
    function Get_�������: IXML����_��������_��������_�������;
    function Get_������: IXML�����������;
    function Get_������: IXML����_��������_��������_������;
    function Get_���������: IXML�����������;
    function Get_�����: IXML����_��������_��������_�����List;
    function Get_�������: IXML�����������;
    function Get_��������1: IXML����_��������_��������_��������1;
    function Get_���������1: IXML����_��������_��������_���������1;
    procedure Set_��������(Value: UnicodeString);
    procedure Set_�������(Value: UnicodeString);
    procedure Set_������(Value: UnicodeString);
    { Methods & Properties }
    property ��������: UnicodeString read Get_�������� write Set_��������;
    property �������: UnicodeString read Get_������� write Set_�������;
    property ������: UnicodeString read Get_������ write Set_������;
    property �������: IXML����_��������_��������_������� read Get_�������;
    property ������: IXML����������� read Get_������;
    property ������: IXML����_��������_��������_������ read Get_������;
    property ���������: IXML����������� read Get_���������;
    property �����: IXML����_��������_��������_�����List read Get_�����;
    property �������: IXML����������� read Get_�������;
    property ��������1: IXML����_��������_��������_��������1 read Get_��������1;
    property ���������1: IXML����_��������_��������_���������1 read Get_���������1;
  end;

{ IXML����_��������_��������_������� }

  IXML����_��������_��������_������� = interface(IXMLNode)
    ['{1BF847E9-D9C8-4172-9715-0AA920BC32EE}']
    { Property Accessors }
    function Get_����������: Integer;
    function Get_�����������: UnicodeString;
    procedure Set_����������(Value: Integer);
    procedure Set_�����������(Value: UnicodeString);
    { Methods & Properties }
    property ����������: Integer read Get_���������� write Set_����������;
    property �����������: UnicodeString read Get_����������� write Set_�����������;
  end;

{ IXML����������� }

  IXML����������� = interface(IXMLNode)
    ['{C5EBB31A-F3CC-4791-B5BF-DE027050A03A}']
    { Property Accessors }
    function Get_����: UnicodeString;
    function Get_����������: UnicodeString;
    function Get_�����������: UnicodeString;
    function Get_����: IXML�����������_����;
    function Get_�����: IXML��������;
    function Get_�������: IXML����������;
    function Get_��������: IXML�����������_��������;
    procedure Set_����(Value: UnicodeString);
    procedure Set_����������(Value: UnicodeString);
    procedure Set_�����������(Value: UnicodeString);
    { Methods & Properties }
    property ����: UnicodeString read Get_���� write Set_����;
    property ����������: UnicodeString read Get_���������� write Set_����������;
    property �����������: UnicodeString read Get_����������� write Set_�����������;
    property ����: IXML�����������_���� read Get_����;
    property �����: IXML�������� read Get_�����;
    property �������: IXML���������� read Get_�������;
    property ��������: IXML�����������_�������� read Get_��������;
  end;

{ IXML�����������_���� }

  IXML�����������_���� = interface(IXMLNode)
    ['{65A6C086-4592-4BB9-A83D-252FB5EC42D0}']
    { Property Accessors }
    function Get_����: IXML�������;
    function Get_������: IXML�����������_����_������;
    function Get_��������: IXML�����������_����_��������;
    { Methods & Properties }
    property ����: IXML������� read Get_����;
    property ������: IXML�����������_����_������ read Get_������;
    property ��������: IXML�����������_����_�������� read Get_��������;
  end;

{ IXML������� }

  IXML������� = interface(IXMLNode)
    ['{CC57995B-1D0C-4C99-AAFA-79B749111520}']
    { Property Accessors }
    function Get_�����: UnicodeString;
    function Get_����������: UnicodeString;
    function Get_��������: UnicodeString;
    function Get_���: IXML������;
    procedure Set_�����(Value: UnicodeString);
    procedure Set_����������(Value: UnicodeString);
    procedure Set_��������(Value: UnicodeString);
    { Methods & Properties }
    property �����: UnicodeString read Get_����� write Set_�����;
    property ����������: UnicodeString read Get_���������� write Set_����������;
    property ��������: UnicodeString read Get_�������� write Set_��������;
    property ���: IXML������ read Get_���;
  end;

{ IXML������ }

  IXML������ = interface(IXMLNode)
    ['{B11F67DB-135F-45B0-848F-AFD37286381C}']
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

{ IXML�����������_����_������ }

  IXML�����������_����_������ = interface(IXMLNode)
    ['{A1871D06-5A89-4808-B7C2-15B18D6E092B}']
    { Property Accessors }
    function Get_�������: UnicodeString;
    function Get_�����: UnicodeString;
    function Get_���: UnicodeString;
    procedure Set_�������(Value: UnicodeString);
    procedure Set_�����(Value: UnicodeString);
    procedure Set_���(Value: UnicodeString);
    { Methods & Properties }
    property �������: UnicodeString read Get_������� write Set_�������;
    property �����: UnicodeString read Get_����� write Set_�����;
    property ���: UnicodeString read Get_��� write Set_���;
  end;

{ IXML�����������_����_�������� }

  IXML�����������_����_�������� = interface(IXMLNode)
    ['{0C6128AA-A4E7-4986-BDCD-17DF27241EFC}']
    { Property Accessors }
    function Get_�������: UnicodeString;
    function Get_��������: UnicodeString;
    procedure Set_�������(Value: UnicodeString);
    procedure Set_��������(Value: UnicodeString);
    { Methods & Properties }
    property �������: UnicodeString read Get_������� write Set_�������;
    property ��������: UnicodeString read Get_�������� write Set_��������;
  end;

{ IXML�������� }

  IXML�������� = interface(IXMLNode)
    ['{50055EA1-249F-4121-B621-11ED64D3DDD7}']
    { Property Accessors }
    function Get_�����: IXML��������;
    function Get_������: IXML���������;
    function Get_������: UnicodeString;
    procedure Set_������(Value: UnicodeString);
    { Methods & Properties }
    property �����: IXML�������� read Get_�����;
    property ������: IXML��������� read Get_������;
    property ������: UnicodeString read Get_������ write Set_������;
  end;

{ IXML�������� }

  IXML�������� = interface(IXMLNode)
    ['{6CD1654F-33BE-41F6-A398-1E0C54E72EEE}']
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
    ['{D2C1CA5B-3353-4A29-9808-22D618C981D8}']
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
    ['{B582EB60-6601-40F5-9BCD-E7373F141C84}']
    { Property Accessors }
    function Get_���: UnicodeString;
    function Get_�������: UnicodeString;
    procedure Set_���(Value: UnicodeString);
    procedure Set_�������(Value: UnicodeString);
    { Methods & Properties }
    property ���: UnicodeString read Get_��� write Set_���;
    property �������: UnicodeString read Get_������� write Set_�������;
  end;

{ IXML�����������_�������� }

  IXML�����������_�������� = interface(IXMLNode)
    ['{15BD433F-0AC6-4F9D-9C2C-AB8EE03BF712}']
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
    ['{2E4B466A-855F-410C-8539-2C97D469CBF3}']
    { Property Accessors }
    function Get_��������: UnicodeString;
    function Get_���: UnicodeString;
    function Get_�������: UnicodeString;
    procedure Set_��������(Value: UnicodeString);
    procedure Set_���(Value: UnicodeString);
    procedure Set_�������(Value: UnicodeString);
    { Methods & Properties }
    property ��������: UnicodeString read Get_�������� write Set_��������;
    property ���: UnicodeString read Get_��� write Set_���;
    property �������: UnicodeString read Get_������� write Set_�������;
  end;

{ IXML����_��������_��������_������ }

  IXML����_��������_��������_������ = interface(IXMLNode)
    ['{82EEB125-8DD1-44DE-B160-369A0F5ABA00}']
    { Property Accessors }
    function Get_��������: IXML�����������;
    function Get_����: UnicodeString;
    procedure Set_����(Value: UnicodeString);
    { Methods & Properties }
    property ��������: IXML����������� read Get_��������;
    property ����: UnicodeString read Get_���� write Set_����;
  end;

{ IXML����_��������_��������_����� }

  IXML����_��������_��������_����� = interface(IXMLNode)
    ['{630989F6-839D-4DC8-AD76-2E5A7DF3073A}']
    { Property Accessors }
    function Get_��������: UnicodeString;
    function Get_�������: UnicodeString;
    procedure Set_��������(Value: UnicodeString);
    procedure Set_�������(Value: UnicodeString);
    { Methods & Properties }
    property ��������: UnicodeString read Get_�������� write Set_��������;
    property �������: UnicodeString read Get_������� write Set_�������;
  end;

{ IXML����_��������_��������_�����List }

  IXML����_��������_��������_�����List = interface(IXMLNodeCollection)
    ['{3BFC189B-F6A7-4C4F-971E-BB5A2E05343A}']
    { Methods & Properties }
    function Add: IXML����_��������_��������_�����;
    function Insert(const Index: Integer): IXML����_��������_��������_�����;

    function Get_Item(Index: Integer): IXML����_��������_��������_�����;
    property Items[Index: Integer]: IXML����_��������_��������_����� read Get_Item; default;
  end;

{ IXML����_��������_��������_��������1 }

  IXML����_��������_��������_��������1 = interface(IXMLNode)
    ['{B33C5244-6332-49D2-BEBF-2BE547F31D34}']
    { Property Accessors }
    function Get_��������: UnicodeString;
    function Get_�������: UnicodeString;
    function Get_�������: UnicodeString;
    procedure Set_��������(Value: UnicodeString);
    procedure Set_�������(Value: UnicodeString);
    procedure Set_�������(Value: UnicodeString);
    { Methods & Properties }
    property ��������: UnicodeString read Get_�������� write Set_��������;
    property �������: UnicodeString read Get_������� write Set_�������;
    property �������: UnicodeString read Get_������� write Set_�������;
  end;

{ IXML����_��������_��������_���������1 }

  IXML����_��������_��������_���������1 = interface(IXMLNodeCollection)
    ['{FDA8EC4F-A6F7-4F3D-844F-E869B4F57142}']
    { Property Accessors }
    function Get_������������: UnicodeString;
    function Get_��������(Index: Integer): IXML�����������;
    procedure Set_������������(Value: UnicodeString);
    { Methods & Properties }
    function Add: IXML�����������;
    function Insert(const Index: Integer): IXML�����������;
    property ������������: UnicodeString read Get_������������ write Set_������������;
    property ��������[Index: Integer]: IXML����������� read Get_��������; default;
  end;

{ IXML����������� }

  IXML����������� = interface(IXMLNode)
    ['{D8CFADC2-5F01-4F7C-B242-31FA0A99DF85}']
    { Property Accessors }
    function Get_�������: UnicodeString;
    function Get_������: UnicodeString;
    procedure Set_�������(Value: UnicodeString);
    procedure Set_������(Value: UnicodeString);
    { Methods & Properties }
    property �������: UnicodeString read Get_������� write Set_�������;
    property ������: UnicodeString read Get_������ write Set_������;
  end;

{ IXML�����������List }

  IXML�����������List = interface(IXMLNodeCollection)
    ['{B8AA438F-0F80-4B4A-8CD4-E56493348B9A}']
    { Methods & Properties }
    function Add: IXML�����������;
    function Insert(const Index: Integer): IXML�����������;

    function Get_Item(Index: Integer): IXML�����������;
    property Items[Index: Integer]: IXML����������� read Get_Item; default;
  end;

{ IXML����_��������_���������� }

  IXML����_��������_���������� = interface(IXMLNode)
    ['{AD57315A-14A7-4194-B650-BC0A3C688609}']
    { Property Accessors }
    function Get_�������: IXML����_��������_����������_�������List;
    function Get_��������: IXML����_��������_����������_��������;
    { Methods & Properties }
    property �������: IXML����_��������_����������_�������List read Get_�������;
    property ��������: IXML����_��������_����������_�������� read Get_��������;
  end;

{ IXML����_��������_����������_������� }

  IXML����_��������_����������_������� = interface(IXMLNode)
    ['{0E856445-BD14-43ED-B48F-F117795131F6}']
    { Property Accessors }
    function Get_������: Integer;
    function Get_�������: UnicodeString;
    function Get_����_���: UnicodeString;
    function Get_������: UnicodeString;
    function Get_�������: UnicodeString;
    function Get_�����������: UnicodeString;
    function Get_�����: UnicodeString;
    function Get_����������: UnicodeString;
    function Get_�����: IXML�����������;
    function Get_������: IXML���������;
    function Get_����: IXML����_��������_����������_�������_����List;
    function Get_���������2: IXML�����������List;
    function Get_����������: IXML����_��������_����������_�������_����������;
    procedure Set_������(Value: Integer);
    procedure Set_�������(Value: UnicodeString);
    procedure Set_����_���(Value: UnicodeString);
    procedure Set_������(Value: UnicodeString);
    procedure Set_�������(Value: UnicodeString);
    procedure Set_�����������(Value: UnicodeString);
    procedure Set_�����(Value: UnicodeString);
    procedure Set_����������(Value: UnicodeString);
    { Methods & Properties }
    property ������: Integer read Get_������ write Set_������;
    property �������: UnicodeString read Get_������� write Set_�������;
    property ����_���: UnicodeString read Get_����_��� write Set_����_���;
    property ������: UnicodeString read Get_������ write Set_������;
    property �������: UnicodeString read Get_������� write Set_�������;
    property �����������: UnicodeString read Get_����������� write Set_�����������;
    property �����: UnicodeString read Get_����� write Set_�����;
    property ����������: UnicodeString read Get_���������� write Set_����������;
    property �����: IXML����������� read Get_�����;
    property ������: IXML��������� read Get_������;
    property ����: IXML����_��������_����������_�������_����List read Get_����;
    property ���������2: IXML�����������List read Get_���������2;
    property ����������: IXML����_��������_����������_�������_���������� read Get_����������;
  end;

{ IXML����_��������_����������_�������List }

  IXML����_��������_����������_�������List = interface(IXMLNodeCollection)
    ['{0BD49F8C-59A5-4344-BBDA-D316AC36E6B4}']
    { Methods & Properties }
    function Add: IXML����_��������_����������_�������;
    function Insert(const Index: Integer): IXML����_��������_����������_�������;

    function Get_Item(Index: Integer): IXML����_��������_����������_�������;
    property Items[Index: Integer]: IXML����_��������_����������_������� read Get_Item; default;
  end;

{ IXML����������� }

  IXML����������� = interface(IXMLNode)
    ['{7826CF0E-13D3-448F-9D7B-CE35E741A6A6}']
    { Property Accessors }
    function Get_��������: UnicodeString;
    function Get_��������: UnicodeString;
    procedure Set_��������(Value: UnicodeString);
    procedure Set_��������(Value: UnicodeString);
    { Methods & Properties }
    property ��������: UnicodeString read Get_�������� write Set_��������;
    property ��������: UnicodeString read Get_�������� write Set_��������;
  end;

{ IXML��������� }

  IXML��������� = interface(IXMLNode)
    ['{5636F64E-8024-4AC6-A7F5-1467BE20EE32}']
    { Property Accessors }
    function Get_������: UnicodeString;
    function Get_������: UnicodeString;
    procedure Set_������(Value: UnicodeString);
    procedure Set_������(Value: UnicodeString);
    { Methods & Properties }
    property ������: UnicodeString read Get_������ write Set_������;
    property ������: UnicodeString read Get_������ write Set_������;
  end;

{ IXML����_��������_����������_�������_���� }

  IXML����_��������_����������_�������_���� = interface(IXMLNode)
    ['{A57C7EA8-84AA-4B0F-B7D7-C909CF0EC590}']
    { Property Accessors }
    function Get_���������: UnicodeString;
    function Get_�������: UnicodeString;
    procedure Set_���������(Value: UnicodeString);
    procedure Set_�������(Value: UnicodeString);
    { Methods & Properties }
    property ���������: UnicodeString read Get_��������� write Set_���������;
    property �������: UnicodeString read Get_������� write Set_�������;
  end;

{ IXML����_��������_����������_�������_����List }

  IXML����_��������_����������_�������_����List = interface(IXMLNodeCollection)
    ['{7FEEC303-4247-4C46-8EDF-5DC6D2DA5476}']
    { Methods & Properties }
    function Add: IXML����_��������_����������_�������_����;
    function Insert(const Index: Integer): IXML����_��������_����������_�������_����;

    function Get_Item(Index: Integer): IXML����_��������_����������_�������_����;
    property Items[Index: Integer]: IXML����_��������_����������_�������_���� read Get_Item; default;
  end;

{ IXML����_��������_����������_�������_���������� }

  IXML����_��������_����������_�������_���������� = interface(IXMLNode)
    ['{BB39CB13-D64F-4BF0-9B00-26DEF0606C3E}']
    { Property Accessors }
    function Get_��������: UnicodeString;
    function Get_��������: UnicodeString;
    function Get_������: UnicodeString;
    function Get_���������: UnicodeString;
    function Get_�����������: UnicodeString;
    function Get_�������: UnicodeString;
    function Get_����������: UnicodeString;
    function Get_�����������: UnicodeString;
    procedure Set_��������(Value: UnicodeString);
    procedure Set_��������(Value: UnicodeString);
    procedure Set_������(Value: UnicodeString);
    procedure Set_���������(Value: UnicodeString);
    procedure Set_�����������(Value: UnicodeString);
    procedure Set_�������(Value: UnicodeString);
    procedure Set_����������(Value: UnicodeString);
    procedure Set_�����������(Value: UnicodeString);
    { Methods & Properties }
    property ��������: UnicodeString read Get_�������� write Set_��������;
    property ��������: UnicodeString read Get_�������� write Set_��������;
    property ������: UnicodeString read Get_������ write Set_������;
    property ���������: UnicodeString read Get_��������� write Set_���������;
    property �����������: UnicodeString read Get_����������� write Set_�����������;
    property �������: UnicodeString read Get_������� write Set_�������;
    property ����������: UnicodeString read Get_���������� write Set_����������;
    property �����������: UnicodeString read Get_����������� write Set_�����������;
  end;

{ IXML����_��������_����������_�������� }

  IXML����_��������_����������_�������� = interface(IXMLNode)
    ['{0DE51F68-C924-42DE-AF09-F300E35E5FE4}']
    { Property Accessors }
    function Get_����������������: UnicodeString;
    function Get_���������������: UnicodeString;
    function Get_�����������: IXML���������;
    function Get_�������: UnicodeString;
    procedure Set_����������������(Value: UnicodeString);
    procedure Set_���������������(Value: UnicodeString);
    procedure Set_�������(Value: UnicodeString);
    { Methods & Properties }
    property ����������������: UnicodeString read Get_���������������� write Set_����������������;
    property ���������������: UnicodeString read Get_��������������� write Set_���������������;
    property �����������: IXML��������� read Get_�����������;
    property �������: UnicodeString read Get_������� write Set_�������;
  end;

{ IXML����_��������_��������� }

  IXML����_��������_��������� = interface(IXMLNode)
    ['{05469324-AD2B-4A33-ACBE-1F6B1E7FFC69}']
    { Property Accessors }
    function Get_�����: IXML����_��������_���������_�����;
    function Get_���������3: IXML����_��������_���������_���������3;
    { Methods & Properties }
    property �����: IXML����_��������_���������_����� read Get_�����;
    property ���������3: IXML����_��������_���������_���������3 read Get_���������3;
  end;

{ IXML����_��������_���������_����� }

  IXML����_��������_���������_����� = interface(IXMLNode)
    ['{24018923-57B4-4144-982C-89A2CD4B2BF7}']
    { Property Accessors }
    function Get_�������: UnicodeString;
    function Get_�������: UnicodeString;
    function Get_�������: UnicodeString;
    function Get_������: IXML����_��������_���������_�����_������List;
    function Get_��������: IXML����_��������_���������_�����_��������;
    function Get_��������: IXML����_��������_���������_�����_��������;
    function Get_���������: IXML����_��������_���������_�����_���������;
    procedure Set_�������(Value: UnicodeString);
    procedure Set_�������(Value: UnicodeString);
    procedure Set_�������(Value: UnicodeString);
    { Methods & Properties }
    property �������: UnicodeString read Get_������� write Set_�������;
    property �������: UnicodeString read Get_������� write Set_�������;
    property �������: UnicodeString read Get_������� write Set_�������;
    property ������: IXML����_��������_���������_�����_������List read Get_������;
    property ��������: IXML����_��������_���������_�����_�������� read Get_��������;
    property ��������: IXML����_��������_���������_�����_�������� read Get_��������;
    property ���������: IXML����_��������_���������_�����_��������� read Get_���������;
  end;

{ IXML����_��������_���������_�����_������ }

  IXML����_��������_���������_�����_������ = interface(IXMLNode)
    ['{1E98D2FF-817B-4C76-8916-028AF48D470C}']
    { Property Accessors }
    function Get_�������: UnicodeString;
    function Get_������: UnicodeString;
    function Get_�������: UnicodeString;
    function Get_��������: UnicodeString;
    procedure Set_�������(Value: UnicodeString);
    procedure Set_������(Value: UnicodeString);
    procedure Set_�������(Value: UnicodeString);
    procedure Set_��������(Value: UnicodeString);
    { Methods & Properties }
    property �������: UnicodeString read Get_������� write Set_�������;
    property ������: UnicodeString read Get_������ write Set_������;
    property �������: UnicodeString read Get_������� write Set_�������;
    property ��������: UnicodeString read Get_�������� write Set_��������;
  end;

{ IXML����_��������_���������_�����_������List }

  IXML����_��������_���������_�����_������List = interface(IXMLNodeCollection)
    ['{6C248C24-2402-4875-9600-7F80CEF2DD4F}']
    { Methods & Properties }
    function Add: IXML����_��������_���������_�����_������;
    function Insert(const Index: Integer): IXML����_��������_���������_�����_������;

    function Get_Item(Index: Integer): IXML����_��������_���������_�����_������;
    property Items[Index: Integer]: IXML����_��������_���������_�����_������ read Get_Item; default;
  end;

{ IXML����_��������_���������_�����_�������� }

  IXML����_��������_���������_�����_�������� = interface(IXMLNode)
    ['{B7A7590D-4741-41B2-ADEA-5DFA82D8673C}']
    { Property Accessors }
    function Get_����������: IXML����_��������_���������_�����_��������_����������;
    function Get_������: IXML����_��������_���������_�����_��������_������;
    { Methods & Properties }
    property ����������: IXML����_��������_���������_�����_��������_���������� read Get_����������;
    property ������: IXML����_��������_���������_�����_��������_������ read Get_������;
  end;

{ IXML����_��������_���������_�����_��������_���������� }

  IXML����_��������_���������_�����_��������_���������� = interface(IXMLNode)
    ['{41F99971-050F-499F-B2DD-1F48795F36D2}']
    { Property Accessors }
    function Get_���������: UnicodeString;
    function Get_��������: UnicodeString;
    function Get_�������: UnicodeString;
    function Get_���: IXML������;
    procedure Set_���������(Value: UnicodeString);
    procedure Set_��������(Value: UnicodeString);
    procedure Set_�������(Value: UnicodeString);
    { Methods & Properties }
    property ���������: UnicodeString read Get_��������� write Set_���������;
    property ��������: UnicodeString read Get_�������� write Set_��������;
    property �������: UnicodeString read Get_������� write Set_�������;
    property ���: IXML������ read Get_���;
  end;

{ IXML����_��������_���������_�����_��������_������ }

  IXML����_��������_���������_�����_��������_������ = interface(IXMLNode)
    ['{2C7C9228-F462-4004-BF05-E1AA12E09EC7}']
    { Property Accessors }
    function Get_����������: IXML����_��������_���������_�����_��������_������_����������;
    function Get_�����: IXML����_��������_���������_�����_��������_������_�����;
    { Methods & Properties }
    property ����������: IXML����_��������_���������_�����_��������_������_���������� read Get_����������;
    property �����: IXML����_��������_���������_�����_��������_������_����� read Get_�����;
  end;

{ IXML����_��������_���������_�����_��������_������_���������� }

  IXML����_��������_���������_�����_��������_������_���������� = interface(IXMLNode)
    ['{16433B4B-54E7-4DCB-987D-BA8803678381}']
    { Property Accessors }
    function Get_���������: UnicodeString;
    function Get_��������: UnicodeString;
    function Get_����������: UnicodeString;
    function Get_��������������: UnicodeString;
    function Get_��������������: UnicodeString;
    function Get_���: IXML������;
    procedure Set_���������(Value: UnicodeString);
    procedure Set_��������(Value: UnicodeString);
    procedure Set_����������(Value: UnicodeString);
    procedure Set_��������������(Value: UnicodeString);
    procedure Set_��������������(Value: UnicodeString);
    { Methods & Properties }
    property ���������: UnicodeString read Get_��������� write Set_���������;
    property ��������: UnicodeString read Get_�������� write Set_��������;
    property ����������: UnicodeString read Get_���������� write Set_����������;
    property ��������������: UnicodeString read Get_�������������� write Set_��������������;
    property ��������������: UnicodeString read Get_�������������� write Set_��������������;
    property ���: IXML������ read Get_���;
  end;

{ IXML����_��������_���������_�����_��������_������_����� }

  IXML����_��������_���������_�����_��������_������_����� = interface(IXMLNode)
    ['{51DB0836-7D0C-48C6-9972-D3B89F743E6F}']
    { Property Accessors }
    function Get_��������: UnicodeString;
    function Get_����������: UnicodeString;
    function Get_���: IXML������;
    procedure Set_��������(Value: UnicodeString);
    procedure Set_����������(Value: UnicodeString);
    { Methods & Properties }
    property ��������: UnicodeString read Get_�������� write Set_��������;
    property ����������: UnicodeString read Get_���������� write Set_����������;
    property ���: IXML������ read Get_���;
  end;

{ IXML����_��������_���������_�����_�������� }

  IXML����_��������_���������_�����_�������� = interface(IXMLNode)
    ['{39CC9FDA-94A3-4B6E-AB1D-DEAB5FDC6F1F}']
    { Property Accessors }
    function Get_����������: UnicodeString;
    function Get_��������: IXML����_��������_���������_�����_��������_��������List;
    function Get_����������: IXML�����������;
    procedure Set_����������(Value: UnicodeString);
    { Methods & Properties }
    property ����������: UnicodeString read Get_���������� write Set_����������;
    property ��������: IXML����_��������_���������_�����_��������_��������List read Get_��������;
    property ����������: IXML����������� read Get_����������;
  end;

{ IXML����_��������_���������_�����_��������_�������� }

  IXML����_��������_���������_�����_��������_�������� = interface(IXMLNode)
    ['{DB9DD571-34B5-4B88-B65F-4674E332C393}']
    { Property Accessors }
    function Get_�����������: UnicodeString;
    function Get_������������: UnicodeString;
    procedure Set_�����������(Value: UnicodeString);
    procedure Set_������������(Value: UnicodeString);
    { Methods & Properties }
    property �����������: UnicodeString read Get_����������� write Set_�����������;
    property ������������: UnicodeString read Get_������������ write Set_������������;
  end;

{ IXML����_��������_���������_�����_��������_��������List }

  IXML����_��������_���������_�����_��������_��������List = interface(IXMLNodeCollection)
    ['{5874CD54-2C80-4FF6-8801-384B0CBB7298}']
    { Methods & Properties }
    function Add: IXML����_��������_���������_�����_��������_��������;
    function Insert(const Index: Integer): IXML����_��������_���������_�����_��������_��������;

    function Get_Item(Index: Integer): IXML����_��������_���������_�����_��������_��������;
    property Items[Index: Integer]: IXML����_��������_���������_�����_��������_�������� read Get_Item; default;
  end;

{ IXML����_��������_���������_�����_��������� }

  IXML����_��������_���������_�����_��������� = interface(IXMLNode)
    ['{FA45CF89-66D0-44EC-962E-03A4B6A5BC2B}']
    { Property Accessors }
    function Get_����������: UnicodeString;
    function Get_��������: UnicodeString;
    procedure Set_����������(Value: UnicodeString);
    procedure Set_��������(Value: UnicodeString);
    { Methods & Properties }
    property ����������: UnicodeString read Get_���������� write Set_����������;
    property ��������: UnicodeString read Get_�������� write Set_��������;
  end;

{ IXML����_��������_���������_���������3 }

  IXML����_��������_���������_���������3 = interface(IXMLNodeCollection)
    ['{B640A185-1364-4900-99C6-7158D67630B7}']
    { Property Accessors }
    function Get_������������: UnicodeString;
    function Get_��������(Index: Integer): IXML�����������;
    procedure Set_������������(Value: UnicodeString);
    { Methods & Properties }
    function Add: IXML�����������;
    function Insert(const Index: Integer): IXML�����������;
    property ������������: UnicodeString read Get_������������ write Set_������������;
    property ��������[Index: Integer]: IXML����������� read Get_��������; default;
  end;

{ IXML����_��������_��������� }

  IXML����_��������_��������� = interface(IXMLNode)
    ['{87CA651D-70A8-42EB-8C6E-81C697A02FBE}']
    { Property Accessors }
    function Get_�������: UnicodeString;
    function Get_������: UnicodeString;
    function Get_�������: UnicodeString;
    function Get_����������: UnicodeString;
    function Get_��: IXML����_��������_���������_��;
    function Get_��: IXML�������;
    function Get_��: IXML����_��������_���������_��;
    procedure Set_�������(Value: UnicodeString);
    procedure Set_������(Value: UnicodeString);
    procedure Set_�������(Value: UnicodeString);
    procedure Set_����������(Value: UnicodeString);
    { Methods & Properties }
    property �������: UnicodeString read Get_������� write Set_�������;
    property ������: UnicodeString read Get_������ write Set_������;
    property �������: UnicodeString read Get_������� write Set_�������;
    property ����������: UnicodeString read Get_���������� write Set_����������;
    property ��: IXML����_��������_���������_�� read Get_��;
    property ��: IXML������� read Get_��;
    property ��: IXML����_��������_���������_�� read Get_��;
  end;

{ IXML����_��������_���������List }

  IXML����_��������_���������List = interface(IXMLNodeCollection)
    ['{7138FCFD-0AEB-48F6-A746-4266E30F0BDE}']
    { Methods & Properties }
    function Add: IXML����_��������_���������;
    function Insert(const Index: Integer): IXML����_��������_���������;

    function Get_Item(Index: Integer): IXML����_��������_���������;
    property Items[Index: Integer]: IXML����_��������_��������� read Get_Item; default;
  end;

{ IXML����_��������_���������_�� }

  IXML����_��������_���������_�� = interface(IXMLNode)
    ['{C72C1724-02DF-48A9-8A0C-8D522D08D23D}']
    { Property Accessors }
    function Get_��������������: UnicodeString;
    function Get_�����: UnicodeString;
    function Get_��������: UnicodeString;
    function Get_���: IXML������;
    procedure Set_��������������(Value: UnicodeString);
    procedure Set_�����(Value: UnicodeString);
    procedure Set_��������(Value: UnicodeString);
    { Methods & Properties }
    property ��������������: UnicodeString read Get_�������������� write Set_��������������;
    property �����: UnicodeString read Get_����� write Set_�����;
    property ��������: UnicodeString read Get_�������� write Set_��������;
    property ���: IXML������ read Get_���;
  end;

{ IXML����_��������_���������_�� }

  IXML����_��������_���������_�� = interface(IXMLNode)
    ['{52F513CD-51FE-4484-9D5A-C206C8AF619D}']
    { Property Accessors }
    function Get_��������������: UnicodeString;
    function Get_�����: UnicodeString;
    function Get_�������: UnicodeString;
    function Get_�����: UnicodeString;
    function Get_��������: UnicodeString;
    function Get_���: IXML������;
    procedure Set_��������������(Value: UnicodeString);
    procedure Set_�����(Value: UnicodeString);
    procedure Set_�������(Value: UnicodeString);
    procedure Set_�����(Value: UnicodeString);
    procedure Set_��������(Value: UnicodeString);
    { Methods & Properties }
    property ��������������: UnicodeString read Get_�������������� write Set_��������������;
    property �����: UnicodeString read Get_����� write Set_�����;
    property �������: UnicodeString read Get_������� write Set_�������;
    property �����: UnicodeString read Get_����� write Set_�����;
    property ��������: UnicodeString read Get_�������� write Set_��������;
    property ���: IXML������ read Get_���;
  end;

{ Forward Decls }

  TXML���� = class;
  TXML����_����������� = class;
  TXML����_�����������_��������� = class;
  TXML����_�������� = class;
  TXML����_��������_�������� = class;
  TXML����_��������_��������_������� = class;
  TXML����������� = class;
  TXML�����������_���� = class;
  TXML������� = class;
  TXML������ = class;
  TXML�����������_����_������ = class;
  TXML�����������_����_�������� = class;
  TXML�������� = class;
  TXML�������� = class;
  TXML��������� = class;
  TXML���������� = class;
  TXML�����������_�������� = class;
  TXML�����������_��������_������ = class;
  TXML����_��������_��������_������ = class;
  TXML����_��������_��������_����� = class;
  TXML����_��������_��������_�����List = class;
  TXML����_��������_��������_��������1 = class;
  TXML����_��������_��������_���������1 = class;
  TXML����������� = class;
  TXML�����������List = class;
  TXML����_��������_���������� = class;
  TXML����_��������_����������_������� = class;
  TXML����_��������_����������_�������List = class;
  TXML����������� = class;
  TXML��������� = class;
  TXML����_��������_����������_�������_���� = class;
  TXML����_��������_����������_�������_����List = class;
  TXML����_��������_����������_�������_���������� = class;
  TXML����_��������_����������_�������� = class;
  TXML����_��������_��������� = class;
  TXML����_��������_���������_����� = class;
  TXML����_��������_���������_�����_������ = class;
  TXML����_��������_���������_�����_������List = class;
  TXML����_��������_���������_�����_�������� = class;
  TXML����_��������_���������_�����_��������_���������� = class;
  TXML����_��������_���������_�����_��������_������ = class;
  TXML����_��������_���������_�����_��������_������_���������� = class;
  TXML����_��������_���������_�����_��������_������_����� = class;
  TXML����_��������_���������_�����_�������� = class;
  TXML����_��������_���������_�����_��������_�������� = class;
  TXML����_��������_���������_�����_��������_��������List = class;
  TXML����_��������_���������_�����_��������� = class;
  TXML����_��������_���������_���������3 = class;
  TXML����_��������_��������� = class;
  TXML����_��������_���������List = class;
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
  private
    F���������: IXML����_��������_���������List;
  protected
    { IXML����_�������� }
    function Get_���: UnicodeString;
    function Get_�������: UnicodeString;
    function Get_��������: UnicodeString;
    function Get_����������: UnicodeString;
    function Get_���������: UnicodeString;
    function Get_���������: UnicodeString;
    function Get_���������������: UnicodeString;
    function Get_���������������: UnicodeString;
    function Get_��������: IXML����_��������_��������;
    function Get_����������: IXML����_��������_����������;
    function Get_���������: IXML����_��������_���������;
    function Get_���������: IXML����_��������_���������List;
    procedure Set_���(Value: UnicodeString);
    procedure Set_�������(Value: UnicodeString);
    procedure Set_��������(Value: UnicodeString);
    procedure Set_����������(Value: UnicodeString);
    procedure Set_���������(Value: UnicodeString);
    procedure Set_���������(Value: UnicodeString);
    procedure Set_���������������(Value: UnicodeString);
    procedure Set_���������������(Value: UnicodeString);
  public
    procedure AfterConstruction; override;
  end;

{ TXML����_��������_�������� }

  TXML����_��������_�������� = class(TXMLNode, IXML����_��������_��������)
  private
    F�����: IXML����_��������_��������_�����List;
  protected
    { IXML����_��������_�������� }
    function Get_��������: UnicodeString;
    function Get_�������: UnicodeString;
    function Get_������: UnicodeString;
    function Get_�������: IXML����_��������_��������_�������;
    function Get_������: IXML�����������;
    function Get_������: IXML����_��������_��������_������;
    function Get_���������: IXML�����������;
    function Get_�����: IXML����_��������_��������_�����List;
    function Get_�������: IXML�����������;
    function Get_��������1: IXML����_��������_��������_��������1;
    function Get_���������1: IXML����_��������_��������_���������1;
    procedure Set_��������(Value: UnicodeString);
    procedure Set_�������(Value: UnicodeString);
    procedure Set_������(Value: UnicodeString);
  public
    procedure AfterConstruction; override;
  end;

{ TXML����_��������_��������_������� }

  TXML����_��������_��������_������� = class(TXMLNode, IXML����_��������_��������_�������)
  protected
    { IXML����_��������_��������_������� }
    function Get_����������: Integer;
    function Get_�����������: UnicodeString;
    procedure Set_����������(Value: Integer);
    procedure Set_�����������(Value: UnicodeString);
  end;

{ TXML����������� }

  TXML����������� = class(TXMLNode, IXML�����������)
  protected
    { IXML����������� }
    function Get_����: UnicodeString;
    function Get_����������: UnicodeString;
    function Get_�����������: UnicodeString;
    function Get_����: IXML�����������_����;
    function Get_�����: IXML��������;
    function Get_�������: IXML����������;
    function Get_��������: IXML�����������_��������;
    procedure Set_����(Value: UnicodeString);
    procedure Set_����������(Value: UnicodeString);
    procedure Set_�����������(Value: UnicodeString);
  public
    procedure AfterConstruction; override;
  end;

{ TXML�����������_���� }

  TXML�����������_���� = class(TXMLNode, IXML�����������_����)
  protected
    { IXML�����������_���� }
    function Get_����: IXML�������;
    function Get_������: IXML�����������_����_������;
    function Get_��������: IXML�����������_����_��������;
  public
    procedure AfterConstruction; override;
  end;

{ TXML������� }

  TXML������� = class(TXMLNode, IXML�������)
  protected
    { IXML������� }
    function Get_�����: UnicodeString;
    function Get_����������: UnicodeString;
    function Get_��������: UnicodeString;
    function Get_���: IXML������;
    procedure Set_�����(Value: UnicodeString);
    procedure Set_����������(Value: UnicodeString);
    procedure Set_��������(Value: UnicodeString);
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

{ TXML�����������_����_������ }

  TXML�����������_����_������ = class(TXMLNode, IXML�����������_����_������)
  protected
    { IXML�����������_����_������ }
    function Get_�������: UnicodeString;
    function Get_�����: UnicodeString;
    function Get_���: UnicodeString;
    procedure Set_�������(Value: UnicodeString);
    procedure Set_�����(Value: UnicodeString);
    procedure Set_���(Value: UnicodeString);
  end;

{ TXML�����������_����_�������� }

  TXML�����������_����_�������� = class(TXMLNode, IXML�����������_����_��������)
  protected
    { IXML�����������_����_�������� }
    function Get_�������: UnicodeString;
    function Get_��������: UnicodeString;
    procedure Set_�������(Value: UnicodeString);
    procedure Set_��������(Value: UnicodeString);
  end;

{ TXML�������� }

  TXML�������� = class(TXMLNode, IXML��������)
  protected
    { IXML�������� }
    function Get_�����: IXML��������;
    function Get_������: IXML���������;
    function Get_������: UnicodeString;
    procedure Set_������(Value: UnicodeString);
  public
    procedure AfterConstruction; override;
  end;

{ TXML�������� }

  TXML�������� = class(TXMLNode, IXML��������)
  protected
    { IXML�������� }
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
    function Get_�������: UnicodeString;
    procedure Set_���(Value: UnicodeString);
    procedure Set_�������(Value: UnicodeString);
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
    function Get_�������: UnicodeString;
    procedure Set_��������(Value: UnicodeString);
    procedure Set_���(Value: UnicodeString);
    procedure Set_�������(Value: UnicodeString);
  end;

{ TXML����_��������_��������_������ }

  TXML����_��������_��������_������ = class(TXMLNode, IXML����_��������_��������_������)
  protected
    { IXML����_��������_��������_������ }
    function Get_��������: IXML�����������;
    function Get_����: UnicodeString;
    procedure Set_����(Value: UnicodeString);
  public
    procedure AfterConstruction; override;
  end;

{ TXML����_��������_��������_����� }

  TXML����_��������_��������_����� = class(TXMLNode, IXML����_��������_��������_�����)
  protected
    { IXML����_��������_��������_����� }
    function Get_��������: UnicodeString;
    function Get_�������: UnicodeString;
    procedure Set_��������(Value: UnicodeString);
    procedure Set_�������(Value: UnicodeString);
  end;

{ TXML����_��������_��������_�����List }

  TXML����_��������_��������_�����List = class(TXMLNodeCollection, IXML����_��������_��������_�����List)
  protected
    { IXML����_��������_��������_�����List }
    function Add: IXML����_��������_��������_�����;
    function Insert(const Index: Integer): IXML����_��������_��������_�����;

    function Get_Item(Index: Integer): IXML����_��������_��������_�����;
  end;

{ TXML����_��������_��������_��������1 }

  TXML����_��������_��������_��������1 = class(TXMLNode, IXML����_��������_��������_��������1)
  protected
    { IXML����_��������_��������_��������1 }
    function Get_��������: UnicodeString;
    function Get_�������: UnicodeString;
    function Get_�������: UnicodeString;
    procedure Set_��������(Value: UnicodeString);
    procedure Set_�������(Value: UnicodeString);
    procedure Set_�������(Value: UnicodeString);
  end;

{ TXML����_��������_��������_���������1 }

  TXML����_��������_��������_���������1 = class(TXMLNodeCollection, IXML����_��������_��������_���������1)
  protected
    { IXML����_��������_��������_���������1 }
    function Get_������������: UnicodeString;
    function Get_��������(Index: Integer): IXML�����������;
    procedure Set_������������(Value: UnicodeString);
    function Add: IXML�����������;
    function Insert(const Index: Integer): IXML�����������;
  public
    procedure AfterConstruction; override;
  end;

{ TXML����������� }

  TXML����������� = class(TXMLNode, IXML�����������)
  protected
    { IXML����������� }
    function Get_�������: UnicodeString;
    function Get_������: UnicodeString;
    procedure Set_�������(Value: UnicodeString);
    procedure Set_������(Value: UnicodeString);
  end;

{ TXML�����������List }

  TXML�����������List = class(TXMLNodeCollection, IXML�����������List)
  protected
    { IXML�����������List }
    function Add: IXML�����������;
    function Insert(const Index: Integer): IXML�����������;

    function Get_Item(Index: Integer): IXML�����������;
  end;

{ TXML����_��������_���������� }

  TXML����_��������_���������� = class(TXMLNode, IXML����_��������_����������)
  private
    F�������: IXML����_��������_����������_�������List;
  protected
    { IXML����_��������_���������� }
    function Get_�������: IXML����_��������_����������_�������List;
    function Get_��������: IXML����_��������_����������_��������;
  public
    procedure AfterConstruction; override;
  end;

{ TXML����_��������_����������_������� }

  TXML����_��������_����������_������� = class(TXMLNode, IXML����_��������_����������_�������)
  private
    F����: IXML����_��������_����������_�������_����List;
    F���������2: IXML�����������List;
  protected
    { IXML����_��������_����������_������� }
    function Get_������: Integer;
    function Get_�������: UnicodeString;
    function Get_����_���: UnicodeString;
    function Get_������: UnicodeString;
    function Get_�������: UnicodeString;
    function Get_�����������: UnicodeString;
    function Get_�����: UnicodeString;
    function Get_����������: UnicodeString;
    function Get_�����: IXML�����������;
    function Get_������: IXML���������;
    function Get_����: IXML����_��������_����������_�������_����List;
    function Get_���������2: IXML�����������List;
    function Get_����������: IXML����_��������_����������_�������_����������;
    procedure Set_������(Value: Integer);
    procedure Set_�������(Value: UnicodeString);
    procedure Set_����_���(Value: UnicodeString);
    procedure Set_������(Value: UnicodeString);
    procedure Set_�������(Value: UnicodeString);
    procedure Set_�����������(Value: UnicodeString);
    procedure Set_�����(Value: UnicodeString);
    procedure Set_����������(Value: UnicodeString);
  public
    procedure AfterConstruction; override;
  end;

{ TXML����_��������_����������_�������List }

  TXML����_��������_����������_�������List = class(TXMLNodeCollection, IXML����_��������_����������_�������List)
  protected
    { IXML����_��������_����������_�������List }
    function Add: IXML����_��������_����������_�������;
    function Insert(const Index: Integer): IXML����_��������_����������_�������;

    function Get_Item(Index: Integer): IXML����_��������_����������_�������;
  end;

{ TXML����������� }

  TXML����������� = class(TXMLNode, IXML�����������)
  protected
    { IXML����������� }
    function Get_��������: UnicodeString;
    function Get_��������: UnicodeString;
    procedure Set_��������(Value: UnicodeString);
    procedure Set_��������(Value: UnicodeString);
  end;

{ TXML��������� }

  TXML��������� = class(TXMLNode, IXML���������)
  protected
    { IXML��������� }
    function Get_������: UnicodeString;
    function Get_������: UnicodeString;
    procedure Set_������(Value: UnicodeString);
    procedure Set_������(Value: UnicodeString);
  end;

{ TXML����_��������_����������_�������_���� }

  TXML����_��������_����������_�������_���� = class(TXMLNode, IXML����_��������_����������_�������_����)
  protected
    { IXML����_��������_����������_�������_���� }
    function Get_���������: UnicodeString;
    function Get_�������: UnicodeString;
    procedure Set_���������(Value: UnicodeString);
    procedure Set_�������(Value: UnicodeString);
  end;

{ TXML����_��������_����������_�������_����List }

  TXML����_��������_����������_�������_����List = class(TXMLNodeCollection, IXML����_��������_����������_�������_����List)
  protected
    { IXML����_��������_����������_�������_����List }
    function Add: IXML����_��������_����������_�������_����;
    function Insert(const Index: Integer): IXML����_��������_����������_�������_����;

    function Get_Item(Index: Integer): IXML����_��������_����������_�������_����;
  end;

{ TXML����_��������_����������_�������_���������� }

  TXML����_��������_����������_�������_���������� = class(TXMLNode, IXML����_��������_����������_�������_����������)
  protected
    { IXML����_��������_����������_�������_���������� }
    function Get_��������: UnicodeString;
    function Get_��������: UnicodeString;
    function Get_������: UnicodeString;
    function Get_���������: UnicodeString;
    function Get_�����������: UnicodeString;
    function Get_�������: UnicodeString;
    function Get_����������: UnicodeString;
    function Get_�����������: UnicodeString;
    procedure Set_��������(Value: UnicodeString);
    procedure Set_��������(Value: UnicodeString);
    procedure Set_������(Value: UnicodeString);
    procedure Set_���������(Value: UnicodeString);
    procedure Set_�����������(Value: UnicodeString);
    procedure Set_�������(Value: UnicodeString);
    procedure Set_����������(Value: UnicodeString);
    procedure Set_�����������(Value: UnicodeString);
  end;

{ TXML����_��������_����������_�������� }

  TXML����_��������_����������_�������� = class(TXMLNode, IXML����_��������_����������_��������)
  protected
    { IXML����_��������_����������_�������� }
    function Get_����������������: UnicodeString;
    function Get_���������������: UnicodeString;
    function Get_�����������: IXML���������;
    function Get_�������: UnicodeString;
    procedure Set_����������������(Value: UnicodeString);
    procedure Set_���������������(Value: UnicodeString);
    procedure Set_�������(Value: UnicodeString);
  public
    procedure AfterConstruction; override;
  end;

{ TXML����_��������_��������� }

  TXML����_��������_��������� = class(TXMLNode, IXML����_��������_���������)
  protected
    { IXML����_��������_��������� }
    function Get_�����: IXML����_��������_���������_�����;
    function Get_���������3: IXML����_��������_���������_���������3;
  public
    procedure AfterConstruction; override;
  end;

{ TXML����_��������_���������_����� }

  TXML����_��������_���������_����� = class(TXMLNode, IXML����_��������_���������_�����)
  private
    F������: IXML����_��������_���������_�����_������List;
  protected
    { IXML����_��������_���������_����� }
    function Get_�������: UnicodeString;
    function Get_�������: UnicodeString;
    function Get_�������: UnicodeString;
    function Get_������: IXML����_��������_���������_�����_������List;
    function Get_��������: IXML����_��������_���������_�����_��������;
    function Get_��������: IXML����_��������_���������_�����_��������;
    function Get_���������: IXML����_��������_���������_�����_���������;
    procedure Set_�������(Value: UnicodeString);
    procedure Set_�������(Value: UnicodeString);
    procedure Set_�������(Value: UnicodeString);
  public
    procedure AfterConstruction; override;
  end;

{ TXML����_��������_���������_�����_������ }

  TXML����_��������_���������_�����_������ = class(TXMLNode, IXML����_��������_���������_�����_������)
  protected
    { IXML����_��������_���������_�����_������ }
    function Get_�������: UnicodeString;
    function Get_������: UnicodeString;
    function Get_�������: UnicodeString;
    function Get_��������: UnicodeString;
    procedure Set_�������(Value: UnicodeString);
    procedure Set_������(Value: UnicodeString);
    procedure Set_�������(Value: UnicodeString);
    procedure Set_��������(Value: UnicodeString);
  end;

{ TXML����_��������_���������_�����_������List }

  TXML����_��������_���������_�����_������List = class(TXMLNodeCollection, IXML����_��������_���������_�����_������List)
  protected
    { IXML����_��������_���������_�����_������List }
    function Add: IXML����_��������_���������_�����_������;
    function Insert(const Index: Integer): IXML����_��������_���������_�����_������;

    function Get_Item(Index: Integer): IXML����_��������_���������_�����_������;
  end;

{ TXML����_��������_���������_�����_�������� }

  TXML����_��������_���������_�����_�������� = class(TXMLNode, IXML����_��������_���������_�����_��������)
  protected
    { IXML����_��������_���������_�����_�������� }
    function Get_����������: IXML����_��������_���������_�����_��������_����������;
    function Get_������: IXML����_��������_���������_�����_��������_������;
  public
    procedure AfterConstruction; override;
  end;

{ TXML����_��������_���������_�����_��������_���������� }

  TXML����_��������_���������_�����_��������_���������� = class(TXMLNode, IXML����_��������_���������_�����_��������_����������)
  protected
    { IXML����_��������_���������_�����_��������_���������� }
    function Get_���������: UnicodeString;
    function Get_��������: UnicodeString;
    function Get_�������: UnicodeString;
    function Get_���: IXML������;
    procedure Set_���������(Value: UnicodeString);
    procedure Set_��������(Value: UnicodeString);
    procedure Set_�������(Value: UnicodeString);
  public
    procedure AfterConstruction; override;
  end;

{ TXML����_��������_���������_�����_��������_������ }

  TXML����_��������_���������_�����_��������_������ = class(TXMLNode, IXML����_��������_���������_�����_��������_������)
  protected
    { IXML����_��������_���������_�����_��������_������ }
    function Get_����������: IXML����_��������_���������_�����_��������_������_����������;
    function Get_�����: IXML����_��������_���������_�����_��������_������_�����;
  public
    procedure AfterConstruction; override;
  end;

{ TXML����_��������_���������_�����_��������_������_���������� }

  TXML����_��������_���������_�����_��������_������_���������� = class(TXMLNode, IXML����_��������_���������_�����_��������_������_����������)
  protected
    { IXML����_��������_���������_�����_��������_������_���������� }
    function Get_���������: UnicodeString;
    function Get_��������: UnicodeString;
    function Get_����������: UnicodeString;
    function Get_��������������: UnicodeString;
    function Get_��������������: UnicodeString;
    function Get_���: IXML������;
    procedure Set_���������(Value: UnicodeString);
    procedure Set_��������(Value: UnicodeString);
    procedure Set_����������(Value: UnicodeString);
    procedure Set_��������������(Value: UnicodeString);
    procedure Set_��������������(Value: UnicodeString);
  public
    procedure AfterConstruction; override;
  end;

{ TXML����_��������_���������_�����_��������_������_����� }

  TXML����_��������_���������_�����_��������_������_����� = class(TXMLNode, IXML����_��������_���������_�����_��������_������_�����)
  protected
    { IXML����_��������_���������_�����_��������_������_����� }
    function Get_��������: UnicodeString;
    function Get_����������: UnicodeString;
    function Get_���: IXML������;
    procedure Set_��������(Value: UnicodeString);
    procedure Set_����������(Value: UnicodeString);
  public
    procedure AfterConstruction; override;
  end;

{ TXML����_��������_���������_�����_�������� }

  TXML����_��������_���������_�����_�������� = class(TXMLNode, IXML����_��������_���������_�����_��������)
  private
    F��������: IXML����_��������_���������_�����_��������_��������List;
  protected
    { IXML����_��������_���������_�����_�������� }
    function Get_����������: UnicodeString;
    function Get_��������: IXML����_��������_���������_�����_��������_��������List;
    function Get_����������: IXML�����������;
    procedure Set_����������(Value: UnicodeString);
  public
    procedure AfterConstruction; override;
  end;

{ TXML����_��������_���������_�����_��������_�������� }

  TXML����_��������_���������_�����_��������_�������� = class(TXMLNode, IXML����_��������_���������_�����_��������_��������)
  protected
    { IXML����_��������_���������_�����_��������_�������� }
    function Get_�����������: UnicodeString;
    function Get_������������: UnicodeString;
    procedure Set_�����������(Value: UnicodeString);
    procedure Set_������������(Value: UnicodeString);
  end;

{ TXML����_��������_���������_�����_��������_��������List }

  TXML����_��������_���������_�����_��������_��������List = class(TXMLNodeCollection, IXML����_��������_���������_�����_��������_��������List)
  protected
    { IXML����_��������_���������_�����_��������_��������List }
    function Add: IXML����_��������_���������_�����_��������_��������;
    function Insert(const Index: Integer): IXML����_��������_���������_�����_��������_��������;

    function Get_Item(Index: Integer): IXML����_��������_���������_�����_��������_��������;
  end;

{ TXML����_��������_���������_�����_��������� }

  TXML����_��������_���������_�����_��������� = class(TXMLNode, IXML����_��������_���������_�����_���������)
  protected
    { IXML����_��������_���������_�����_��������� }
    function Get_����������: UnicodeString;
    function Get_��������: UnicodeString;
    procedure Set_����������(Value: UnicodeString);
    procedure Set_��������(Value: UnicodeString);
  end;

{ TXML����_��������_���������_���������3 }

  TXML����_��������_���������_���������3 = class(TXMLNodeCollection, IXML����_��������_���������_���������3)
  protected
    { IXML����_��������_���������_���������3 }
    function Get_������������: UnicodeString;
    function Get_��������(Index: Integer): IXML�����������;
    procedure Set_������������(Value: UnicodeString);
    function Add: IXML�����������;
    function Insert(const Index: Integer): IXML�����������;
  public
    procedure AfterConstruction; override;
  end;

{ TXML����_��������_��������� }

  TXML����_��������_��������� = class(TXMLNode, IXML����_��������_���������)
  protected
    { IXML����_��������_��������� }
    function Get_�������: UnicodeString;
    function Get_������: UnicodeString;
    function Get_�������: UnicodeString;
    function Get_����������: UnicodeString;
    function Get_��: IXML����_��������_���������_��;
    function Get_��: IXML�������;
    function Get_��: IXML����_��������_���������_��;
    procedure Set_�������(Value: UnicodeString);
    procedure Set_������(Value: UnicodeString);
    procedure Set_�������(Value: UnicodeString);
    procedure Set_����������(Value: UnicodeString);
  public
    procedure AfterConstruction; override;
  end;

{ TXML����_��������_���������List }

  TXML����_��������_���������List = class(TXMLNodeCollection, IXML����_��������_���������List)
  protected
    { IXML����_��������_���������List }
    function Add: IXML����_��������_���������;
    function Insert(const Index: Integer): IXML����_��������_���������;

    function Get_Item(Index: Integer): IXML����_��������_���������;
  end;

{ TXML����_��������_���������_�� }

  TXML����_��������_���������_�� = class(TXMLNode, IXML����_��������_���������_��)
  protected
    { IXML����_��������_���������_�� }
    function Get_��������������: UnicodeString;
    function Get_�����: UnicodeString;
    function Get_��������: UnicodeString;
    function Get_���: IXML������;
    procedure Set_��������������(Value: UnicodeString);
    procedure Set_�����(Value: UnicodeString);
    procedure Set_��������(Value: UnicodeString);
  public
    procedure AfterConstruction; override;
  end;

{ TXML����_��������_���������_�� }

  TXML����_��������_���������_�� = class(TXMLNode, IXML����_��������_���������_��)
  protected
    { IXML����_��������_���������_�� }
    function Get_��������������: UnicodeString;
    function Get_�����: UnicodeString;
    function Get_�������: UnicodeString;
    function Get_�����: UnicodeString;
    function Get_��������: UnicodeString;
    function Get_���: IXML������;
    procedure Set_��������������(Value: UnicodeString);
    procedure Set_�����(Value: UnicodeString);
    procedure Set_�������(Value: UnicodeString);
    procedure Set_�����(Value: UnicodeString);
    procedure Set_��������(Value: UnicodeString);
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
  RegisterChildNode('��������', TXML����_��������_��������);
  RegisterChildNode('����������', TXML����_��������_����������);
  RegisterChildNode('���������', TXML����_��������_���������);
  RegisterChildNode('���������', TXML����_��������_���������);
  F��������� := CreateCollection(TXML����_��������_���������List, IXML����_��������_���������, '���������') as IXML����_��������_���������List;
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

function TXML����_��������.Get_��������: UnicodeString;
begin
  Result := AttributeNodes['��������'].Text;
end;

procedure TXML����_��������.Set_��������(Value: UnicodeString);
begin
  SetAttribute('��������', Value);
end;

function TXML����_��������.Get_����������: UnicodeString;
begin
  Result := AttributeNodes['����������'].Text;
end;

procedure TXML����_��������.Set_����������(Value: UnicodeString);
begin
  SetAttribute('����������', Value);
end;

function TXML����_��������.Get_���������: UnicodeString;
begin
  Result := AttributeNodes['���������'].Text;
end;

procedure TXML����_��������.Set_���������(Value: UnicodeString);
begin
  SetAttribute('���������', Value);
end;

function TXML����_��������.Get_���������: UnicodeString;
begin
  Result := AttributeNodes['���������'].Text;
end;

procedure TXML����_��������.Set_���������(Value: UnicodeString);
begin
  SetAttribute('���������', Value);
end;

function TXML����_��������.Get_���������������: UnicodeString;
begin
  Result := AttributeNodes['���������������'].Text;
end;

procedure TXML����_��������.Set_���������������(Value: UnicodeString);
begin
  SetAttribute('���������������', Value);
end;

function TXML����_��������.Get_���������������: UnicodeString;
begin
  Result := AttributeNodes['���������������'].Text;
end;

procedure TXML����_��������.Set_���������������(Value: UnicodeString);
begin
  SetAttribute('���������������', Value);
end;

function TXML����_��������.Get_��������: IXML����_��������_��������;
begin
  Result := ChildNodes['��������'] as IXML����_��������_��������;
end;

function TXML����_��������.Get_����������: IXML����_��������_����������;
begin
  Result := ChildNodes['����������'] as IXML����_��������_����������;
end;

function TXML����_��������.Get_���������: IXML����_��������_���������;
begin
  Result := ChildNodes['���������'] as IXML����_��������_���������;
end;

function TXML����_��������.Get_���������: IXML����_��������_���������List;
begin
  Result := F���������;
end;

{ TXML����_��������_�������� }

procedure TXML����_��������_��������.AfterConstruction;
begin
  RegisterChildNode('�������', TXML����_��������_��������_�������);
  RegisterChildNode('������', TXML�����������);
  RegisterChildNode('������', TXML����_��������_��������_������);
  RegisterChildNode('���������', TXML�����������);
  RegisterChildNode('�����', TXML����_��������_��������_�����);
  RegisterChildNode('�������', TXML�����������);
  RegisterChildNode('��������1', TXML����_��������_��������_��������1);
  RegisterChildNode('���������1', TXML����_��������_��������_���������1);
  F����� := CreateCollection(TXML����_��������_��������_�����List, IXML����_��������_��������_�����, '�����') as IXML����_��������_��������_�����List;
  inherited;
end;

function TXML����_��������_��������.Get_��������: UnicodeString;
begin
  Result := AttributeNodes['��������'].Text;
end;

procedure TXML����_��������_��������.Set_��������(Value: UnicodeString);
begin
  SetAttribute('��������', Value);
end;

function TXML����_��������_��������.Get_�������: UnicodeString;
begin
  Result := AttributeNodes['�������'].Text;
end;

procedure TXML����_��������_��������.Set_�������(Value: UnicodeString);
begin
  SetAttribute('�������', Value);
end;

function TXML����_��������_��������.Get_������: UnicodeString;
begin
  Result := AttributeNodes['������'].Text;
end;

procedure TXML����_��������_��������.Set_������(Value: UnicodeString);
begin
  SetAttribute('������', Value);
end;

function TXML����_��������_��������.Get_�������: IXML����_��������_��������_�������;
begin
  Result := ChildNodes['�������'] as IXML����_��������_��������_�������;
end;

function TXML����_��������_��������.Get_������: IXML�����������;
begin
  Result := ChildNodes['������'] as IXML�����������;
end;

function TXML����_��������_��������.Get_������: IXML����_��������_��������_������;
begin
  Result := ChildNodes['������'] as IXML����_��������_��������_������;
end;

function TXML����_��������_��������.Get_���������: IXML�����������;
begin
  Result := ChildNodes['���������'] as IXML�����������;
end;

function TXML����_��������_��������.Get_�����: IXML����_��������_��������_�����List;
begin
  Result := F�����;
end;

function TXML����_��������_��������.Get_�������: IXML�����������;
begin
  Result := ChildNodes['�������'] as IXML�����������;
end;

function TXML����_��������_��������.Get_��������1: IXML����_��������_��������_��������1;
begin
  Result := ChildNodes['��������1'] as IXML����_��������_��������_��������1;
end;

function TXML����_��������_��������.Get_���������1: IXML����_��������_��������_���������1;
begin
  Result := ChildNodes['���������1'] as IXML����_��������_��������_���������1;
end;

{ TXML����_��������_��������_������� }

function TXML����_��������_��������_�������.Get_����������: Integer;
begin
  Result := AttributeNodes['����������'].NodeValue;
end;

procedure TXML����_��������_��������_�������.Set_����������(Value: Integer);
begin
  SetAttribute('����������', Value);
end;

function TXML����_��������_��������_�������.Get_�����������: UnicodeString;
begin
  Result := AttributeNodes['�����������'].Text;
end;

procedure TXML����_��������_��������_�������.Set_�����������(Value: UnicodeString);
begin
  SetAttribute('�����������', Value);
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

function TXML�����������.Get_����������: UnicodeString;
begin
  Result := AttributeNodes['����������'].Text;
end;

procedure TXML�����������.Set_����������(Value: UnicodeString);
begin
  SetAttribute('����������', Value);
end;

function TXML�����������.Get_�����������: UnicodeString;
begin
  Result := AttributeNodes['�����������'].Text;
end;

procedure TXML�����������.Set_�����������(Value: UnicodeString);
begin
  SetAttribute('�����������', Value);
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
  RegisterChildNode('����', TXML�������);
  RegisterChildNode('������', TXML�����������_����_������);
  RegisterChildNode('��������', TXML�����������_����_��������);
  inherited;
end;

function TXML�����������_����.Get_����: IXML�������;
begin
  Result := ChildNodes['����'] as IXML�������;
end;

function TXML�����������_����.Get_������: IXML�����������_����_������;
begin
  Result := ChildNodes['������'] as IXML�����������_����_������;
end;

function TXML�����������_����.Get_��������: IXML�����������_����_��������;
begin
  Result := ChildNodes['��������'] as IXML�����������_����_��������;
end;

{ TXML������� }

procedure TXML�������.AfterConstruction;
begin
  RegisterChildNode('���', TXML������);
  inherited;
end;

function TXML�������.Get_�����: UnicodeString;
begin
  Result := AttributeNodes['�����'].Text;
end;

procedure TXML�������.Set_�����(Value: UnicodeString);
begin
  SetAttribute('�����', Value);
end;

function TXML�������.Get_����������: UnicodeString;
begin
  Result := AttributeNodes['����������'].Text;
end;

procedure TXML�������.Set_����������(Value: UnicodeString);
begin
  SetAttribute('����������', Value);
end;

function TXML�������.Get_��������: UnicodeString;
begin
  Result := AttributeNodes['��������'].Text;
end;

procedure TXML�������.Set_��������(Value: UnicodeString);
begin
  SetAttribute('��������', Value);
end;

function TXML�������.Get_���: IXML������;
begin
  Result := ChildNodes['���'] as IXML������;
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

{ TXML�����������_����_������ }

function TXML�����������_����_������.Get_�������: UnicodeString;
begin
  Result := AttributeNodes['�������'].Text;
end;

procedure TXML�����������_����_������.Set_�������(Value: UnicodeString);
begin
  SetAttribute('�������', Value);
end;

function TXML�����������_����_������.Get_�����: UnicodeString;
begin
  Result := AttributeNodes['�����'].Text;
end;

procedure TXML�����������_����_������.Set_�����(Value: UnicodeString);
begin
  SetAttribute('�����', Value);
end;

function TXML�����������_����_������.Get_���: UnicodeString;
begin
  Result := AttributeNodes['���'].Text;
end;

procedure TXML�����������_����_������.Set_���(Value: UnicodeString);
begin
  SetAttribute('���', Value);
end;

{ TXML�����������_����_�������� }

function TXML�����������_����_��������.Get_�������: UnicodeString;
begin
  Result := AttributeNodes['�������'].Text;
end;

procedure TXML�����������_����_��������.Set_�������(Value: UnicodeString);
begin
  SetAttribute('�������', Value);
end;

function TXML�����������_����_��������.Get_��������: UnicodeString;
begin
  Result := AttributeNodes['��������'].Text;
end;

procedure TXML�����������_����_��������.Set_��������(Value: UnicodeString);
begin
  SetAttribute('��������', Value);
end;

{ TXML�������� }

procedure TXML��������.AfterConstruction;
begin
  RegisterChildNode('�����', TXML��������);
  RegisterChildNode('������', TXML���������);
  inherited;
end;

function TXML��������.Get_�����: IXML��������;
begin
  Result := ChildNodes['�����'] as IXML��������;
end;

function TXML��������.Get_������: IXML���������;
begin
  Result := ChildNodes['������'] as IXML���������;
end;

function TXML��������.Get_������: UnicodeString;
begin
  Result := ChildNodes['������'].Text;
end;

procedure TXML��������.Set_������(Value: UnicodeString);
begin
  ChildNodes['������'].NodeValue := Value;
end;

{ TXML�������� }

function TXML��������.Get_������: UnicodeString;
begin
  Result := AttributeNodes['������'].Text;
end;

procedure TXML��������.Set_������(Value: UnicodeString);
begin
  SetAttribute('������', Value);
end;

function TXML��������.Get_���������: UnicodeString;
begin
  Result := AttributeNodes['���������'].Text;
end;

procedure TXML��������.Set_���������(Value: UnicodeString);
begin
  SetAttribute('���������', Value);
end;

function TXML��������.Get_�����: UnicodeString;
begin
  Result := AttributeNodes['�����'].Text;
end;

procedure TXML��������.Set_�����(Value: UnicodeString);
begin
  SetAttribute('�����', Value);
end;

function TXML��������.Get_�����: UnicodeString;
begin
  Result := AttributeNodes['�����'].Text;
end;

procedure TXML��������.Set_�����(Value: UnicodeString);
begin
  SetAttribute('�����', Value);
end;

function TXML��������.Get_����������: UnicodeString;
begin
  Result := AttributeNodes['����������'].Text;
end;

procedure TXML��������.Set_����������(Value: UnicodeString);
begin
  SetAttribute('����������', Value);
end;

function TXML��������.Get_�����: UnicodeString;
begin
  Result := AttributeNodes['�����'].Text;
end;

procedure TXML��������.Set_�����(Value: UnicodeString);
begin
  SetAttribute('�����', Value);
end;

function TXML��������.Get_���: UnicodeString;
begin
  Result := AttributeNodes['���'].Text;
end;

procedure TXML��������.Set_���(Value: UnicodeString);
begin
  SetAttribute('���', Value);
end;

function TXML��������.Get_������: UnicodeString;
begin
  Result := AttributeNodes['������'].Text;
end;

procedure TXML��������.Set_������(Value: UnicodeString);
begin
  SetAttribute('������', Value);
end;

function TXML��������.Get_�����: UnicodeString;
begin
  Result := AttributeNodes['�����'].Text;
end;

procedure TXML��������.Set_�����(Value: UnicodeString);
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

function TXML����������.Get_�������: UnicodeString;
begin
  Result := AttributeNodes['�������'].Text;
end;

procedure TXML����������.Set_�������(Value: UnicodeString);
begin
  SetAttribute('�������', Value);
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

function TXML�����������_��������_������.Get_�������: UnicodeString;
begin
  Result := AttributeNodes['�������'].Text;
end;

procedure TXML�����������_��������_������.Set_�������(Value: UnicodeString);
begin
  SetAttribute('�������', Value);
end;

{ TXML����_��������_��������_������ }

procedure TXML����_��������_��������_������.AfterConstruction;
begin
  RegisterChildNode('��������', TXML�����������);
  inherited;
end;

function TXML����_��������_��������_������.Get_��������: IXML�����������;
begin
  Result := ChildNodes['��������'] as IXML�����������;
end;

function TXML����_��������_��������_������.Get_����: UnicodeString;
begin
  Result := ChildNodes['����'].Text;
end;

procedure TXML����_��������_��������_������.Set_����(Value: UnicodeString);
begin
  ChildNodes['����'].NodeValue := Value;
end;

{ TXML����_��������_��������_����� }

function TXML����_��������_��������_�����.Get_��������: UnicodeString;
begin
  Result := AttributeNodes['��������'].Text;
end;

procedure TXML����_��������_��������_�����.Set_��������(Value: UnicodeString);
begin
  SetAttribute('��������', Value);
end;

function TXML����_��������_��������_�����.Get_�������: UnicodeString;
begin
  Result := AttributeNodes['�������'].Text;
end;

procedure TXML����_��������_��������_�����.Set_�������(Value: UnicodeString);
begin
  SetAttribute('�������', Value);
end;

{ TXML����_��������_��������_�����List }

function TXML����_��������_��������_�����List.Add: IXML����_��������_��������_�����;
begin
  Result := AddItem(-1) as IXML����_��������_��������_�����;
end;

function TXML����_��������_��������_�����List.Insert(const Index: Integer): IXML����_��������_��������_�����;
begin
  Result := AddItem(Index) as IXML����_��������_��������_�����;
end;

function TXML����_��������_��������_�����List.Get_Item(Index: Integer): IXML����_��������_��������_�����;
begin
  Result := List[Index] as IXML����_��������_��������_�����;
end;

{ TXML����_��������_��������_��������1 }

function TXML����_��������_��������_��������1.Get_��������: UnicodeString;
begin
  Result := AttributeNodes['��������'].Text;
end;

procedure TXML����_��������_��������_��������1.Set_��������(Value: UnicodeString);
begin
  SetAttribute('��������', Value);
end;

function TXML����_��������_��������_��������1.Get_�������: UnicodeString;
begin
  Result := AttributeNodes['�������'].Text;
end;

procedure TXML����_��������_��������_��������1.Set_�������(Value: UnicodeString);
begin
  SetAttribute('�������', Value);
end;

function TXML����_��������_��������_��������1.Get_�������: UnicodeString;
begin
  Result := AttributeNodes['�������'].Text;
end;

procedure TXML����_��������_��������_��������1.Set_�������(Value: UnicodeString);
begin
  SetAttribute('�������', Value);
end;

{ TXML����_��������_��������_���������1 }

procedure TXML����_��������_��������_���������1.AfterConstruction;
begin
  RegisterChildNode('��������', TXML�����������);
  ItemTag := '��������';
  ItemInterface := IXML�����������;
  inherited;
end;

function TXML����_��������_��������_���������1.Get_������������: UnicodeString;
begin
  Result := AttributeNodes['������������'].Text;
end;

procedure TXML����_��������_��������_���������1.Set_������������(Value: UnicodeString);
begin
  SetAttribute('������������', Value);
end;

function TXML����_��������_��������_���������1.Get_��������(Index: Integer): IXML�����������;
begin
  Result := List[Index] as IXML�����������;
end;

function TXML����_��������_��������_���������1.Add: IXML�����������;
begin
  Result := AddItem(-1) as IXML�����������;
end;

function TXML����_��������_��������_���������1.Insert(const Index: Integer): IXML�����������;
begin
  Result := AddItem(Index) as IXML�����������;
end;

{ TXML����������� }

function TXML�����������.Get_�������: UnicodeString;
begin
  Result := AttributeNodes['�������'].Text;
end;

procedure TXML�����������.Set_�������(Value: UnicodeString);
begin
  SetAttribute('�������', Value);
end;

function TXML�����������.Get_������: UnicodeString;
begin
  Result := AttributeNodes['������'].Text;
end;

procedure TXML�����������.Set_������(Value: UnicodeString);
begin
  SetAttribute('������', Value);
end;

{ TXML�����������List }

function TXML�����������List.Add: IXML�����������;
begin
  Result := AddItem(-1) as IXML�����������;
end;

function TXML�����������List.Insert(const Index: Integer): IXML�����������;
begin
  Result := AddItem(Index) as IXML�����������;
end;

function TXML�����������List.Get_Item(Index: Integer): IXML�����������;
begin
  Result := List[Index] as IXML�����������;
end;

{ TXML����_��������_���������� }

procedure TXML����_��������_����������.AfterConstruction;
begin
  RegisterChildNode('�������', TXML����_��������_����������_�������);
  RegisterChildNode('��������', TXML����_��������_����������_��������);
  F������� := CreateCollection(TXML����_��������_����������_�������List, IXML����_��������_����������_�������, '�������') as IXML����_��������_����������_�������List;
  inherited;
end;

function TXML����_��������_����������.Get_�������: IXML����_��������_����������_�������List;
begin
  Result := F�������;
end;

function TXML����_��������_����������.Get_��������: IXML����_��������_����������_��������;
begin
  Result := ChildNodes['��������'] as IXML����_��������_����������_��������;
end;

{ TXML����_��������_����������_������� }

procedure TXML����_��������_����������_�������.AfterConstruction;
begin
  RegisterChildNode('�����', TXML�����������);
  RegisterChildNode('������', TXML���������);
  RegisterChildNode('����', TXML����_��������_����������_�������_����);
  RegisterChildNode('���������2', TXML�����������);
  RegisterChildNode('����������', TXML����_��������_����������_�������_����������);
  F���� := CreateCollection(TXML����_��������_����������_�������_����List, IXML����_��������_����������_�������_����, '����') as IXML����_��������_����������_�������_����List;
  F���������2 := CreateCollection(TXML�����������List, IXML�����������, '���������2') as IXML�����������List;
  inherited;
end;

function TXML����_��������_����������_�������.Get_������: Integer;
begin
  Result := AttributeNodes['������'].NodeValue;
end;

procedure TXML����_��������_����������_�������.Set_������(Value: Integer);
begin
  SetAttribute('������', Value);
end;

function TXML����_��������_����������_�������.Get_�������: UnicodeString;
begin
  Result := AttributeNodes['�������'].Text;
end;

procedure TXML����_��������_����������_�������.Set_�������(Value: UnicodeString);
begin
  SetAttribute('�������', Value);
end;

function TXML����_��������_����������_�������.Get_����_���: UnicodeString;
begin
  Result := AttributeNodes['����_���'].Text;
end;

procedure TXML����_��������_����������_�������.Set_����_���(Value: UnicodeString);
begin
  SetAttribute('����_���', Value);
end;

function TXML����_��������_����������_�������.Get_������: UnicodeString;
begin
  Result := AttributeNodes['������'].Text;
end;

procedure TXML����_��������_����������_�������.Set_������(Value: UnicodeString);
begin
  SetAttribute('������', Value);
end;

function TXML����_��������_����������_�������.Get_�������: UnicodeString;
begin
  Result := AttributeNodes['�������'].Text;
end;

procedure TXML����_��������_����������_�������.Set_�������(Value: UnicodeString);
begin
  SetAttribute('�������', Value);
end;

function TXML����_��������_����������_�������.Get_�����������: UnicodeString;
begin
  Result := AttributeNodes['�����������'].Text;
end;

procedure TXML����_��������_����������_�������.Set_�����������(Value: UnicodeString);
begin
  SetAttribute('�����������', Value);
end;

function TXML����_��������_����������_�������.Get_�����: UnicodeString;
begin
  Result := AttributeNodes['�����'].Text;
end;

procedure TXML����_��������_����������_�������.Set_�����(Value: UnicodeString);
begin
  SetAttribute('�����', Value);
end;

function TXML����_��������_����������_�������.Get_����������: UnicodeString;
begin
  Result := AttributeNodes['����������'].Text;
end;

procedure TXML����_��������_����������_�������.Set_����������(Value: UnicodeString);
begin
  SetAttribute('����������', Value);
end;

function TXML����_��������_����������_�������.Get_�����: IXML�����������;
begin
  Result := ChildNodes['�����'] as IXML�����������;
end;

function TXML����_��������_����������_�������.Get_������: IXML���������;
begin
  Result := ChildNodes['������'] as IXML���������;
end;

function TXML����_��������_����������_�������.Get_����: IXML����_��������_����������_�������_����List;
begin
  Result := F����;
end;

function TXML����_��������_����������_�������.Get_���������2: IXML�����������List;
begin
  Result := F���������2;
end;

function TXML����_��������_����������_�������.Get_����������: IXML����_��������_����������_�������_����������;
begin
  Result := ChildNodes['����������'] as IXML����_��������_����������_�������_����������;
end;

{ TXML����_��������_����������_�������List }

function TXML����_��������_����������_�������List.Add: IXML����_��������_����������_�������;
begin
  Result := AddItem(-1) as IXML����_��������_����������_�������;
end;

function TXML����_��������_����������_�������List.Insert(const Index: Integer): IXML����_��������_����������_�������;
begin
  Result := AddItem(Index) as IXML����_��������_����������_�������;
end;

function TXML����_��������_����������_�������List.Get_Item(Index: Integer): IXML����_��������_����������_�������;
begin
  Result := List[Index] as IXML����_��������_����������_�������;
end;

{ TXML����������� }

function TXML�����������.Get_��������: UnicodeString;
begin
  Result := ChildNodes['��������'].Text;
end;

procedure TXML�����������.Set_��������(Value: UnicodeString);
begin
  ChildNodes['��������'].NodeValue := Value;
end;

function TXML�����������.Get_��������: UnicodeString;
begin
  Result := ChildNodes['��������'].Text;
end;

procedure TXML�����������.Set_��������(Value: UnicodeString);
begin
  ChildNodes['��������'].NodeValue := Value;
end;

{ TXML��������� }

function TXML���������.Get_������: UnicodeString;
begin
  Result := ChildNodes['������'].Text;
end;

procedure TXML���������.Set_������(Value: UnicodeString);
begin
  ChildNodes['������'].NodeValue := Value;
end;

function TXML���������.Get_������: UnicodeString;
begin
  Result := ChildNodes['������'].Text;
end;

procedure TXML���������.Set_������(Value: UnicodeString);
begin
  ChildNodes['������'].NodeValue := Value;
end;

{ TXML����_��������_����������_�������_���� }

function TXML����_��������_����������_�������_����.Get_���������: UnicodeString;
begin
  Result := AttributeNodes['���������'].Text;
end;

procedure TXML����_��������_����������_�������_����.Set_���������(Value: UnicodeString);
begin
  SetAttribute('���������', Value);
end;

function TXML����_��������_����������_�������_����.Get_�������: UnicodeString;
begin
  Result := AttributeNodes['�������'].Text;
end;

procedure TXML����_��������_����������_�������_����.Set_�������(Value: UnicodeString);
begin
  SetAttribute('�������', Value);
end;

{ TXML����_��������_����������_�������_����List }

function TXML����_��������_����������_�������_����List.Add: IXML����_��������_����������_�������_����;
begin
  Result := AddItem(-1) as IXML����_��������_����������_�������_����;
end;

function TXML����_��������_����������_�������_����List.Insert(const Index: Integer): IXML����_��������_����������_�������_����;
begin
  Result := AddItem(Index) as IXML����_��������_����������_�������_����;
end;

function TXML����_��������_����������_�������_����List.Get_Item(Index: Integer): IXML����_��������_����������_�������_����;
begin
  Result := List[Index] as IXML����_��������_����������_�������_����;
end;

{ TXML����_��������_����������_�������_���������� }

function TXML����_��������_����������_�������_����������.Get_��������: UnicodeString;
begin
  Result := AttributeNodes['��������'].Text;
end;

procedure TXML����_��������_����������_�������_����������.Set_��������(Value: UnicodeString);
begin
  SetAttribute('��������', Value);
end;

function TXML����_��������_����������_�������_����������.Get_��������: UnicodeString;
begin
  Result := AttributeNodes['��������'].Text;
end;

procedure TXML����_��������_����������_�������_����������.Set_��������(Value: UnicodeString);
begin
  SetAttribute('��������', Value);
end;

function TXML����_��������_����������_�������_����������.Get_������: UnicodeString;
begin
  Result := AttributeNodes['������'].Text;
end;

procedure TXML����_��������_����������_�������_����������.Set_������(Value: UnicodeString);
begin
  SetAttribute('������', Value);
end;

function TXML����_��������_����������_�������_����������.Get_���������: UnicodeString;
begin
  Result := AttributeNodes['���������'].Text;
end;

procedure TXML����_��������_����������_�������_����������.Set_���������(Value: UnicodeString);
begin
  SetAttribute('���������', Value);
end;

function TXML����_��������_����������_�������_����������.Get_�����������: UnicodeString;
begin
  Result := AttributeNodes['�����������'].Text;
end;

procedure TXML����_��������_����������_�������_����������.Set_�����������(Value: UnicodeString);
begin
  SetAttribute('�����������', Value);
end;

function TXML����_��������_����������_�������_����������.Get_�������: UnicodeString;
begin
  Result := AttributeNodes['�������'].Text;
end;

procedure TXML����_��������_����������_�������_����������.Set_�������(Value: UnicodeString);
begin
  SetAttribute('�������', Value);
end;

function TXML����_��������_����������_�������_����������.Get_����������: UnicodeString;
begin
  Result := AttributeNodes['����������'].Text;
end;

procedure TXML����_��������_����������_�������_����������.Set_����������(Value: UnicodeString);
begin
  SetAttribute('����������', Value);
end;

function TXML����_��������_����������_�������_����������.Get_�����������: UnicodeString;
begin
  Result := AttributeNodes['�����������'].Text;
end;

procedure TXML����_��������_����������_�������_����������.Set_�����������(Value: UnicodeString);
begin
  SetAttribute('�����������', Value);
end;

{ TXML����_��������_����������_�������� }

procedure TXML����_��������_����������_��������.AfterConstruction;
begin
  RegisterChildNode('�����������', TXML���������);
  inherited;
end;

function TXML����_��������_����������_��������.Get_����������������: UnicodeString;
begin
  Result := AttributeNodes['����������������'].Text;
end;

procedure TXML����_��������_����������_��������.Set_����������������(Value: UnicodeString);
begin
  SetAttribute('����������������', Value);
end;

function TXML����_��������_����������_��������.Get_���������������: UnicodeString;
begin
  Result := AttributeNodes['���������������'].Text;
end;

procedure TXML����_��������_����������_��������.Set_���������������(Value: UnicodeString);
begin
  SetAttribute('���������������', Value);
end;

function TXML����_��������_����������_��������.Get_�����������: IXML���������;
begin
  Result := ChildNodes['�����������'] as IXML���������;
end;

function TXML����_��������_����������_��������.Get_�������: UnicodeString;
begin
  Result := ChildNodes['�������'].Text;
end;

procedure TXML����_��������_����������_��������.Set_�������(Value: UnicodeString);
begin
  ChildNodes['�������'].NodeValue := Value;
end;

{ TXML����_��������_��������� }

procedure TXML����_��������_���������.AfterConstruction;
begin
  RegisterChildNode('�����', TXML����_��������_���������_�����);
  RegisterChildNode('���������3', TXML����_��������_���������_���������3);
  inherited;
end;

function TXML����_��������_���������.Get_�����: IXML����_��������_���������_�����;
begin
  Result := ChildNodes['�����'] as IXML����_��������_���������_�����;
end;

function TXML����_��������_���������.Get_���������3: IXML����_��������_���������_���������3;
begin
  Result := ChildNodes['���������3'] as IXML����_��������_���������_���������3;
end;

{ TXML����_��������_���������_����� }

procedure TXML����_��������_���������_�����.AfterConstruction;
begin
  RegisterChildNode('������', TXML����_��������_���������_�����_������);
  RegisterChildNode('��������', TXML����_��������_���������_�����_��������);
  RegisterChildNode('��������', TXML����_��������_���������_�����_��������);
  RegisterChildNode('���������', TXML����_��������_���������_�����_���������);
  F������ := CreateCollection(TXML����_��������_���������_�����_������List, IXML����_��������_���������_�����_������, '������') as IXML����_��������_���������_�����_������List;
  inherited;
end;

function TXML����_��������_���������_�����.Get_�������: UnicodeString;
begin
  Result := AttributeNodes['�������'].Text;
end;

procedure TXML����_��������_���������_�����.Set_�������(Value: UnicodeString);
begin
  SetAttribute('�������', Value);
end;

function TXML����_��������_���������_�����.Get_�������: UnicodeString;
begin
  Result := AttributeNodes['�������'].Text;
end;

procedure TXML����_��������_���������_�����.Set_�������(Value: UnicodeString);
begin
  SetAttribute('�������', Value);
end;

function TXML����_��������_���������_�����.Get_�������: UnicodeString;
begin
  Result := AttributeNodes['�������'].Text;
end;

procedure TXML����_��������_���������_�����.Set_�������(Value: UnicodeString);
begin
  SetAttribute('�������', Value);
end;

function TXML����_��������_���������_�����.Get_������: IXML����_��������_���������_�����_������List;
begin
  Result := F������;
end;

function TXML����_��������_���������_�����.Get_��������: IXML����_��������_���������_�����_��������;
begin
  Result := ChildNodes['��������'] as IXML����_��������_���������_�����_��������;
end;

function TXML����_��������_���������_�����.Get_��������: IXML����_��������_���������_�����_��������;
begin
  Result := ChildNodes['��������'] as IXML����_��������_���������_�����_��������;
end;

function TXML����_��������_���������_�����.Get_���������: IXML����_��������_���������_�����_���������;
begin
  Result := ChildNodes['���������'] as IXML����_��������_���������_�����_���������;
end;

{ TXML����_��������_���������_�����_������ }

function TXML����_��������_���������_�����_������.Get_�������: UnicodeString;
begin
  Result := AttributeNodes['�������'].Text;
end;

procedure TXML����_��������_���������_�����_������.Set_�������(Value: UnicodeString);
begin
  SetAttribute('�������', Value);
end;

function TXML����_��������_���������_�����_������.Get_������: UnicodeString;
begin
  Result := AttributeNodes['������'].Text;
end;

procedure TXML����_��������_���������_�����_������.Set_������(Value: UnicodeString);
begin
  SetAttribute('������', Value);
end;

function TXML����_��������_���������_�����_������.Get_�������: UnicodeString;
begin
  Result := AttributeNodes['�������'].Text;
end;

procedure TXML����_��������_���������_�����_������.Set_�������(Value: UnicodeString);
begin
  SetAttribute('�������', Value);
end;

function TXML����_��������_���������_�����_������.Get_��������: UnicodeString;
begin
  Result := AttributeNodes['��������'].Text;
end;

procedure TXML����_��������_���������_�����_������.Set_��������(Value: UnicodeString);
begin
  SetAttribute('��������', Value);
end;

{ TXML����_��������_���������_�����_������List }

function TXML����_��������_���������_�����_������List.Add: IXML����_��������_���������_�����_������;
begin
  Result := AddItem(-1) as IXML����_��������_���������_�����_������;
end;

function TXML����_��������_���������_�����_������List.Insert(const Index: Integer): IXML����_��������_���������_�����_������;
begin
  Result := AddItem(Index) as IXML����_��������_���������_�����_������;
end;

function TXML����_��������_���������_�����_������List.Get_Item(Index: Integer): IXML����_��������_���������_�����_������;
begin
  Result := List[Index] as IXML����_��������_���������_�����_������;
end;

{ TXML����_��������_���������_�����_�������� }

procedure TXML����_��������_���������_�����_��������.AfterConstruction;
begin
  RegisterChildNode('����������', TXML����_��������_���������_�����_��������_����������);
  RegisterChildNode('������', TXML����_��������_���������_�����_��������_������);
  inherited;
end;

function TXML����_��������_���������_�����_��������.Get_����������: IXML����_��������_���������_�����_��������_����������;
begin
  Result := ChildNodes['����������'] as IXML����_��������_���������_�����_��������_����������;
end;

function TXML����_��������_���������_�����_��������.Get_������: IXML����_��������_���������_�����_��������_������;
begin
  Result := ChildNodes['������'] as IXML����_��������_���������_�����_��������_������;
end;

{ TXML����_��������_���������_�����_��������_���������� }

procedure TXML����_��������_���������_�����_��������_����������.AfterConstruction;
begin
  RegisterChildNode('���', TXML������);
  inherited;
end;

function TXML����_��������_���������_�����_��������_����������.Get_���������: UnicodeString;
begin
  Result := AttributeNodes['���������'].Text;
end;

procedure TXML����_��������_���������_�����_��������_����������.Set_���������(Value: UnicodeString);
begin
  SetAttribute('���������', Value);
end;

function TXML����_��������_���������_�����_��������_����������.Get_��������: UnicodeString;
begin
  Result := AttributeNodes['��������'].Text;
end;

procedure TXML����_��������_���������_�����_��������_����������.Set_��������(Value: UnicodeString);
begin
  SetAttribute('��������', Value);
end;

function TXML����_��������_���������_�����_��������_����������.Get_�������: UnicodeString;
begin
  Result := AttributeNodes['�������'].Text;
end;

procedure TXML����_��������_���������_�����_��������_����������.Set_�������(Value: UnicodeString);
begin
  SetAttribute('�������', Value);
end;

function TXML����_��������_���������_�����_��������_����������.Get_���: IXML������;
begin
  Result := ChildNodes['���'] as IXML������;
end;

{ TXML����_��������_���������_�����_��������_������ }

procedure TXML����_��������_���������_�����_��������_������.AfterConstruction;
begin
  RegisterChildNode('����������', TXML����_��������_���������_�����_��������_������_����������);
  RegisterChildNode('�����', TXML����_��������_���������_�����_��������_������_�����);
  inherited;
end;

function TXML����_��������_���������_�����_��������_������.Get_����������: IXML����_��������_���������_�����_��������_������_����������;
begin
  Result := ChildNodes['����������'] as IXML����_��������_���������_�����_��������_������_����������;
end;

function TXML����_��������_���������_�����_��������_������.Get_�����: IXML����_��������_���������_�����_��������_������_�����;
begin
  Result := ChildNodes['�����'] as IXML����_��������_���������_�����_��������_������_�����;
end;

{ TXML����_��������_���������_�����_��������_������_���������� }

procedure TXML����_��������_���������_�����_��������_������_����������.AfterConstruction;
begin
  RegisterChildNode('���', TXML������);
  inherited;
end;

function TXML����_��������_���������_�����_��������_������_����������.Get_���������: UnicodeString;
begin
  Result := AttributeNodes['���������'].Text;
end;

procedure TXML����_��������_���������_�����_��������_������_����������.Set_���������(Value: UnicodeString);
begin
  SetAttribute('���������', Value);
end;

function TXML����_��������_���������_�����_��������_������_����������.Get_��������: UnicodeString;
begin
  Result := AttributeNodes['��������'].Text;
end;

procedure TXML����_��������_���������_�����_��������_������_����������.Set_��������(Value: UnicodeString);
begin
  SetAttribute('��������', Value);
end;

function TXML����_��������_���������_�����_��������_������_����������.Get_����������: UnicodeString;
begin
  Result := AttributeNodes['����������'].Text;
end;

procedure TXML����_��������_���������_�����_��������_������_����������.Set_����������(Value: UnicodeString);
begin
  SetAttribute('����������', Value);
end;

function TXML����_��������_���������_�����_��������_������_����������.Get_��������������: UnicodeString;
begin
  Result := AttributeNodes['��������������'].Text;
end;

procedure TXML����_��������_���������_�����_��������_������_����������.Set_��������������(Value: UnicodeString);
begin
  SetAttribute('��������������', Value);
end;

function TXML����_��������_���������_�����_��������_������_����������.Get_��������������: UnicodeString;
begin
  Result := AttributeNodes['��������������'].Text;
end;

procedure TXML����_��������_���������_�����_��������_������_����������.Set_��������������(Value: UnicodeString);
begin
  SetAttribute('��������������', Value);
end;

function TXML����_��������_���������_�����_��������_������_����������.Get_���: IXML������;
begin
  Result := ChildNodes['���'] as IXML������;
end;

{ TXML����_��������_���������_�����_��������_������_����� }

procedure TXML����_��������_���������_�����_��������_������_�����.AfterConstruction;
begin
  RegisterChildNode('���', TXML������);
  inherited;
end;

function TXML����_��������_���������_�����_��������_������_�����.Get_��������: UnicodeString;
begin
  Result := AttributeNodes['��������'].Text;
end;

procedure TXML����_��������_���������_�����_��������_������_�����.Set_��������(Value: UnicodeString);
begin
  SetAttribute('��������', Value);
end;

function TXML����_��������_���������_�����_��������_������_�����.Get_����������: UnicodeString;
begin
  Result := AttributeNodes['����������'].Text;
end;

procedure TXML����_��������_���������_�����_��������_������_�����.Set_����������(Value: UnicodeString);
begin
  SetAttribute('����������', Value);
end;

function TXML����_��������_���������_�����_��������_������_�����.Get_���: IXML������;
begin
  Result := ChildNodes['���'] as IXML������;
end;

{ TXML����_��������_���������_�����_�������� }

procedure TXML����_��������_���������_�����_��������.AfterConstruction;
begin
  RegisterChildNode('��������', TXML����_��������_���������_�����_��������_��������);
  RegisterChildNode('����������', TXML�����������);
  F�������� := CreateCollection(TXML����_��������_���������_�����_��������_��������List, IXML����_��������_���������_�����_��������_��������, '��������') as IXML����_��������_���������_�����_��������_��������List;
  inherited;
end;

function TXML����_��������_���������_�����_��������.Get_����������: UnicodeString;
begin
  Result := AttributeNodes['����������'].Text;
end;

procedure TXML����_��������_���������_�����_��������.Set_����������(Value: UnicodeString);
begin
  SetAttribute('����������', Value);
end;

function TXML����_��������_���������_�����_��������.Get_��������: IXML����_��������_���������_�����_��������_��������List;
begin
  Result := F��������;
end;

function TXML����_��������_���������_�����_��������.Get_����������: IXML�����������;
begin
  Result := ChildNodes['����������'] as IXML�����������;
end;

{ TXML����_��������_���������_�����_��������_�������� }

function TXML����_��������_���������_�����_��������_��������.Get_�����������: UnicodeString;
begin
  Result := AttributeNodes['�����������'].Text;
end;

procedure TXML����_��������_���������_�����_��������_��������.Set_�����������(Value: UnicodeString);
begin
  SetAttribute('�����������', Value);
end;

function TXML����_��������_���������_�����_��������_��������.Get_������������: UnicodeString;
begin
  Result := AttributeNodes['������������'].Text;
end;

procedure TXML����_��������_���������_�����_��������_��������.Set_������������(Value: UnicodeString);
begin
  SetAttribute('������������', Value);
end;

{ TXML����_��������_���������_�����_��������_��������List }

function TXML����_��������_���������_�����_��������_��������List.Add: IXML����_��������_���������_�����_��������_��������;
begin
  Result := AddItem(-1) as IXML����_��������_���������_�����_��������_��������;
end;

function TXML����_��������_���������_�����_��������_��������List.Insert(const Index: Integer): IXML����_��������_���������_�����_��������_��������;
begin
  Result := AddItem(Index) as IXML����_��������_���������_�����_��������_��������;
end;

function TXML����_��������_���������_�����_��������_��������List.Get_Item(Index: Integer): IXML����_��������_���������_�����_��������_��������;
begin
  Result := List[Index] as IXML����_��������_���������_�����_��������_��������;
end;

{ TXML����_��������_���������_�����_��������� }

function TXML����_��������_���������_�����_���������.Get_����������: UnicodeString;
begin
  Result := AttributeNodes['����������'].Text;
end;

procedure TXML����_��������_���������_�����_���������.Set_����������(Value: UnicodeString);
begin
  SetAttribute('����������', Value);
end;

function TXML����_��������_���������_�����_���������.Get_��������: UnicodeString;
begin
  Result := AttributeNodes['��������'].Text;
end;

procedure TXML����_��������_���������_�����_���������.Set_��������(Value: UnicodeString);
begin
  SetAttribute('��������', Value);
end;

{ TXML����_��������_���������_���������3 }

procedure TXML����_��������_���������_���������3.AfterConstruction;
begin
  RegisterChildNode('��������', TXML�����������);
  ItemTag := '��������';
  ItemInterface := IXML�����������;
  inherited;
end;

function TXML����_��������_���������_���������3.Get_������������: UnicodeString;
begin
  Result := AttributeNodes['������������'].Text;
end;

procedure TXML����_��������_���������_���������3.Set_������������(Value: UnicodeString);
begin
  SetAttribute('������������', Value);
end;

function TXML����_��������_���������_���������3.Get_��������(Index: Integer): IXML�����������;
begin
  Result := List[Index] as IXML�����������;
end;

function TXML����_��������_���������_���������3.Add: IXML�����������;
begin
  Result := AddItem(-1) as IXML�����������;
end;

function TXML����_��������_���������_���������3.Insert(const Index: Integer): IXML�����������;
begin
  Result := AddItem(Index) as IXML�����������;
end;

{ TXML����_��������_��������� }

procedure TXML����_��������_���������.AfterConstruction;
begin
  RegisterChildNode('��', TXML����_��������_���������_��);
  RegisterChildNode('��', TXML�������);
  RegisterChildNode('��', TXML����_��������_���������_��);
  inherited;
end;

function TXML����_��������_���������.Get_�������: UnicodeString;
begin
  Result := AttributeNodes['�������'].Text;
end;

procedure TXML����_��������_���������.Set_�������(Value: UnicodeString);
begin
  SetAttribute('�������', Value);
end;

function TXML����_��������_���������.Get_������: UnicodeString;
begin
  Result := AttributeNodes['������'].Text;
end;

procedure TXML����_��������_���������.Set_������(Value: UnicodeString);
begin
  SetAttribute('������', Value);
end;

function TXML����_��������_���������.Get_�������: UnicodeString;
begin
  Result := AttributeNodes['�������'].Text;
end;

procedure TXML����_��������_���������.Set_�������(Value: UnicodeString);
begin
  SetAttribute('�������', Value);
end;

function TXML����_��������_���������.Get_����������: UnicodeString;
begin
  Result := AttributeNodes['����������'].Text;
end;

procedure TXML����_��������_���������.Set_����������(Value: UnicodeString);
begin
  SetAttribute('����������', Value);
end;

function TXML����_��������_���������.Get_��: IXML����_��������_���������_��;
begin
  Result := ChildNodes['��'] as IXML����_��������_���������_��;
end;

function TXML����_��������_���������.Get_��: IXML�������;
begin
  Result := ChildNodes['��'] as IXML�������;
end;

function TXML����_��������_���������.Get_��: IXML����_��������_���������_��;
begin
  Result := ChildNodes['��'] as IXML����_��������_���������_��;
end;

{ TXML����_��������_���������List }

function TXML����_��������_���������List.Add: IXML����_��������_���������;
begin
  Result := AddItem(-1) as IXML����_��������_���������;
end;

function TXML����_��������_���������List.Insert(const Index: Integer): IXML����_��������_���������;
begin
  Result := AddItem(Index) as IXML����_��������_���������;
end;

function TXML����_��������_���������List.Get_Item(Index: Integer): IXML����_��������_���������;
begin
  Result := List[Index] as IXML����_��������_���������;
end;

{ TXML����_��������_���������_�� }

procedure TXML����_��������_���������_��.AfterConstruction;
begin
  RegisterChildNode('���', TXML������);
  inherited;
end;

function TXML����_��������_���������_��.Get_��������������: UnicodeString;
begin
  Result := AttributeNodes['��������������'].Text;
end;

procedure TXML����_��������_���������_��.Set_��������������(Value: UnicodeString);
begin
  SetAttribute('��������������', Value);
end;

function TXML����_��������_���������_��.Get_�����: UnicodeString;
begin
  Result := AttributeNodes['�����'].Text;
end;

procedure TXML����_��������_���������_��.Set_�����(Value: UnicodeString);
begin
  SetAttribute('�����', Value);
end;

function TXML����_��������_���������_��.Get_��������: UnicodeString;
begin
  Result := AttributeNodes['��������'].Text;
end;

procedure TXML����_��������_���������_��.Set_��������(Value: UnicodeString);
begin
  SetAttribute('��������', Value);
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

function TXML����_��������_���������_��.Get_��������������: UnicodeString;
begin
  Result := AttributeNodes['��������������'].Text;
end;

procedure TXML����_��������_���������_��.Set_��������������(Value: UnicodeString);
begin
  SetAttribute('��������������', Value);
end;

function TXML����_��������_���������_��.Get_�����: UnicodeString;
begin
  Result := AttributeNodes['�����'].Text;
end;

procedure TXML����_��������_���������_��.Set_�����(Value: UnicodeString);
begin
  SetAttribute('�����', Value);
end;

function TXML����_��������_���������_��.Get_�������: UnicodeString;
begin
  Result := AttributeNodes['�������'].Text;
end;

procedure TXML����_��������_���������_��.Set_�������(Value: UnicodeString);
begin
  SetAttribute('�������', Value);
end;

function TXML����_��������_���������_��.Get_�����: UnicodeString;
begin
  Result := AttributeNodes['�����'].Text;
end;

procedure TXML����_��������_���������_��.Set_�����(Value: UnicodeString);
begin
  SetAttribute('�����', Value);
end;

function TXML����_��������_���������_��.Get_��������: UnicodeString;
begin
  Result := AttributeNodes['��������'].Text;
end;

procedure TXML����_��������_���������_��.Set_��������(Value: UnicodeString);
begin
  SetAttribute('��������', Value);
end;

function TXML����_��������_���������_��.Get_���: IXML������;
begin
  Result := ChildNodes['���'] as IXML������;
end;

end.