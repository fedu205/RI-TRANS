
{************************************************************************}
{                                                                        }
{                            XML Data Binding                            }
{                                                                        }
{         Generated on: 18.12.2019 15:16:20                              }
{       Generated from: D:\www\820\ON_NSCHFDOPPR_1_997_01_05_01_02.xsd   }
{   Settings stored in: D:\www\820\ON_NSCHFDOPPR_1_997_01_05_01_02.xdb   }
{                                                                        }
{************************************************************************}

unit EDOXMLUniTrDoc820;

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
  IXML�����������List = interface;
  IXML�����������_���� = interface;
  IXML������� = interface;
  IXML������ = interface;
  IXML�����������_����_������ = interface;
  IXML�����������_����_�������� = interface;
  IXML������� = interface;
  IXML�������� = interface;
  IXML�������� = interface;
  IXML��������� = interface;
  IXML���������� = interface;
  IXML�����������_�������� = interface;
  IXML�����������_��������_������ = interface;
  IXML����_��������_��������_������ = interface;
  IXML����_��������_��������_������List = interface;
  IXML����_��������_��������_����� = interface;
  IXML����_��������_��������_�����List = interface;
  IXML����_��������_��������_��������1 = interface;
  IXML����_��������_��������_��������1_����������������� = interface;
  IXML������������ = interface;
  IXML������������List = interface;
  IXML����_��������_��������_������������ = interface;
  IXML����_��������_��������_������������List = interface;
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
  IXML����_��������_����������_�������_����������_����������� = interface;
  IXML����_��������_����������_�������_����������_�����������List = interface;
  IXML����_��������_����������_�������_����������_��������������� = interface;
  IXML����_��������_����������_�������_����������_���������������List = interface;
  IXML����_��������_����������_�������� = interface;
  IXML����_��������_��������� = interface;
  IXML����_��������_���������_����� = interface;
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
  IXML����_��������_����������_�������_����������_���������������_�������List = interface;
  IXML����_��������_����������_�������_����������_���������������_���List = interface;

{ IXML���� }

  IXML���� = interface(IXMLNode)
    ['{B9D8C8CE-4C0C-4BDD-A28B-CC21BD27F969}']
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
    ['{D9A0EC49-2EA0-4B8D-A955-EEF5A35C024F}']
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
    ['{6F20952D-5EDD-40E7-A0D0-048998DC014D}']
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
    ['{D3EAE39D-20C5-4F07-9441-DF2E4174BA86}']
    { Property Accessors }
    function Get_���: UnicodeString;
    function Get_�������: UnicodeString;
    function Get_��������: UnicodeString;
    function Get_����������: UnicodeString;
    function Get_���������: UnicodeString;
    function Get_���������: UnicodeString;
    function Get_���������������: UnicodeString;
    function Get_���������������: UnicodeString;
    function Get_�������������: UnicodeString;
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
    procedure Set_�������������(Value: UnicodeString);
    { Methods & Properties }
    property ���: UnicodeString read Get_��� write Set_���;
    property �������: UnicodeString read Get_������� write Set_�������;
    property ��������: UnicodeString read Get_�������� write Set_��������;
    property ����������: UnicodeString read Get_���������� write Set_����������;
    property ���������: UnicodeString read Get_��������� write Set_���������;
    property ���������: UnicodeString read Get_��������� write Set_���������;
    property ���������������: UnicodeString read Get_��������������� write Set_���������������;
    property ���������������: UnicodeString read Get_��������������� write Set_���������������;
    property �������������: UnicodeString read Get_������������� write Set_�������������;
    property ��������: IXML����_��������_�������� read Get_��������;
    property ����������: IXML����_��������_���������� read Get_����������;
    property ���������: IXML����_��������_��������� read Get_���������;
    property ���������: IXML����_��������_���������List read Get_���������;
  end;

{ IXML����_��������_�������� }

  IXML����_��������_�������� = interface(IXMLNode)
    ['{2B99F306-4338-4FAF-BBD2-BA498FACC416}']
    { Property Accessors }
    function Get_��������: UnicodeString;
    function Get_�������: UnicodeString;
    function Get_������: UnicodeString;
    function Get_�������: IXML����_��������_��������_�������;
    function Get_������: IXML�����������List;
    function Get_������: IXML����_��������_��������_������List;
    function Get_���������: IXML�����������List;
    function Get_�����: IXML����_��������_��������_�����List;
    function Get_�������: IXML�����������List;
    function Get_��������1: IXML����_��������_��������_��������1;
    function Get_������������: IXML����_��������_��������_������������List;
    function Get_���������1: IXML����_��������_��������_���������1;
    procedure Set_��������(Value: UnicodeString);
    procedure Set_�������(Value: UnicodeString);
    procedure Set_������(Value: UnicodeString);
    { Methods & Properties }
    property ��������: UnicodeString read Get_�������� write Set_��������;
    property �������: UnicodeString read Get_������� write Set_�������;
    property ������: UnicodeString read Get_������ write Set_������;
    property �������: IXML����_��������_��������_������� read Get_�������;
    property ������: IXML�����������List read Get_������;
    property ������: IXML����_��������_��������_������List read Get_������;
    property ���������: IXML�����������List read Get_���������;
    property �����: IXML����_��������_��������_�����List read Get_�����;
    property �������: IXML�����������List read Get_�������;
    property ��������1: IXML����_��������_��������_��������1 read Get_��������1;
    property ������������: IXML����_��������_��������_������������List read Get_������������;
    property ���������1: IXML����_��������_��������_���������1 read Get_���������1;
  end;

{ IXML����_��������_��������_������� }

  IXML����_��������_��������_������� = interface(IXMLNode)
    ['{CB020052-38C0-40CA-95EA-22FC90DABC11}']
    { Property Accessors }
    function Get_����������: Integer;
    function Get_�������������: UnicodeString;
    function Get_�����������: UnicodeString;
    function Get_��������������: UnicodeString;
    procedure Set_����������(Value: Integer);
    procedure Set_�������������(Value: UnicodeString);
    procedure Set_�����������(Value: UnicodeString);
    procedure Set_��������������(Value: UnicodeString);
    { Methods & Properties }
    property ����������: Integer read Get_���������� write Set_����������;
    property �������������: UnicodeString read Get_������������� write Set_�������������;
    property �����������: UnicodeString read Get_����������� write Set_�����������;
    property ��������������: UnicodeString read Get_�������������� write Set_��������������;
  end;

{ IXML����������� }

  IXML����������� = interface(IXMLNode)
    ['{06FF5445-6EE6-4ABE-BFAD-C9081C56FC4A}']
    { Property Accessors }
    function Get_����: UnicodeString;
    function Get_����������: UnicodeString;
    function Get_�����������: UnicodeString;
    function Get_���������: UnicodeString;
    function Get_����: IXML�����������_����;
    function Get_�����: IXML��������;
    function Get_�������: IXML����������;
    function Get_��������: IXML�����������_��������;
    procedure Set_����(Value: UnicodeString);
    procedure Set_����������(Value: UnicodeString);
    procedure Set_�����������(Value: UnicodeString);
    procedure Set_���������(Value: UnicodeString);
    { Methods & Properties }
    property ����: UnicodeString read Get_���� write Set_����;
    property ����������: UnicodeString read Get_���������� write Set_����������;
    property �����������: UnicodeString read Get_����������� write Set_�����������;
    property ���������: UnicodeString read Get_��������� write Set_���������;
    property ����: IXML�����������_���� read Get_����;
    property �����: IXML�������� read Get_�����;
    property �������: IXML���������� read Get_�������;
    property ��������: IXML�����������_�������� read Get_��������;
  end;

{ IXML�����������List }

  IXML�����������List = interface(IXMLNodeCollection)
    ['{3E6482D6-81C5-4158-A1AC-6ED183DB1311}']
    { Methods & Properties }
    function Add: IXML�����������;
    function Insert(const Index: Integer): IXML�����������;

    function Get_Item(Index: Integer): IXML�����������;
    property Items[Index: Integer]: IXML����������� read Get_Item; default;
  end;

{ IXML�����������_���� }

  IXML�����������_���� = interface(IXMLNode)
    ['{4A475EE6-88D5-41ED-964A-F87610923232}']
    { Property Accessors }
    function Get_����: IXML�������;
    function Get_������: IXML�����������_����_������;
    function Get_��������: IXML�����������_����_��������;
    function Get_������������: IXML�������;
    { Methods & Properties }
    property ����: IXML������� read Get_����;
    property ������: IXML�����������_����_������ read Get_������;
    property ��������: IXML�����������_����_�������� read Get_��������;
    property ������������: IXML������� read Get_������������;
  end;

{ IXML������� }

  IXML������� = interface(IXMLNode)
    ['{05DF2716-D781-496B-ABBF-087E85F01F37}']
    { Property Accessors }
    function Get_�����: UnicodeString;
    function Get_��������: UnicodeString;
    function Get_����������: UnicodeString;
    function Get_��������: UnicodeString;
    function Get_���: IXML������;
    procedure Set_�����(Value: UnicodeString);
    procedure Set_��������(Value: UnicodeString);
    procedure Set_����������(Value: UnicodeString);
    procedure Set_��������(Value: UnicodeString);
    { Methods & Properties }
    property �����: UnicodeString read Get_����� write Set_�����;
    property ��������: UnicodeString read Get_�������� write Set_��������;
    property ����������: UnicodeString read Get_���������� write Set_����������;
    property ��������: UnicodeString read Get_�������� write Set_��������;
    property ���: IXML������ read Get_���;
  end;

{ IXML������ }

  IXML������ = interface(IXMLNode)
    ['{EA1543A4-475A-4C5C-B907-A3331F240139}']
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
    ['{2FA18AC0-9D78-482C-9847-F3BC821765EB}']
    { Property Accessors }
    function Get_�������: UnicodeString;
    function Get_�����: UnicodeString;
    function Get_��������: UnicodeString;
    function Get_���: UnicodeString;
    procedure Set_�������(Value: UnicodeString);
    procedure Set_�����(Value: UnicodeString);
    procedure Set_��������(Value: UnicodeString);
    procedure Set_���(Value: UnicodeString);
    { Methods & Properties }
    property �������: UnicodeString read Get_������� write Set_�������;
    property �����: UnicodeString read Get_����� write Set_�����;
    property ��������: UnicodeString read Get_�������� write Set_��������;
    property ���: UnicodeString read Get_��� write Set_���;
  end;

{ IXML�����������_����_�������� }

  IXML�����������_����_�������� = interface(IXMLNode)
    ['{B702F741-54D8-493E-A500-1EC83212EEBA}']
    { Property Accessors }
    function Get_�������: UnicodeString;
    function Get_�������: UnicodeString;
    function Get_��������: UnicodeString;
    procedure Set_�������(Value: UnicodeString);
    procedure Set_�������(Value: UnicodeString);
    procedure Set_��������(Value: UnicodeString);
    { Methods & Properties }
    property �������: UnicodeString read Get_������� write Set_�������;
    property �������: UnicodeString read Get_������� write Set_�������;
    property ��������: UnicodeString read Get_�������� write Set_��������;
  end;

{ IXML������� }

  IXML������� = interface(IXMLNode)
    ['{56E31E2D-9635-4BBD-A595-1E8535FB38B4}']
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

{ IXML�������� }

  IXML�������� = interface(IXMLNode)
    ['{5D1E6401-EA90-4EED-B722-06F75B045D21}']
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
    ['{0AFBED19-10BC-4843-9748-C82B105E84F8}']
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
    ['{7E566504-4140-4ED8-AD1C-485D9187CE7B}']
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
    ['{E9FB1E9C-E948-4C80-B715-956418A14534}']
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
    ['{F679A62A-D938-4729-9615-FAC619A99F81}']
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
    ['{88A8212F-C1F8-4FBA-A7A6-4391A0DA455E}']
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
    ['{F45B4F83-5D82-439D-9598-424B25A27E59}']
    { Property Accessors }
    function Get_��������: IXML�����������;
    function Get_����: UnicodeString;
    procedure Set_����(Value: UnicodeString);
    { Methods & Properties }
    property ��������: IXML����������� read Get_��������;
    property ����: UnicodeString read Get_���� write Set_����;
  end;

{ IXML����_��������_��������_������List }

  IXML����_��������_��������_������List = interface(IXMLNodeCollection)
    ['{523DA201-E7BC-4539-B7FA-373B2690B21F}']
    { Methods & Properties }
    function Add: IXML����_��������_��������_������;
    function Insert(const Index: Integer): IXML����_��������_��������_������;

    function Get_Item(Index: Integer): IXML����_��������_��������_������;
    property Items[Index: Integer]: IXML����_��������_��������_������ read Get_Item; default;
  end;

{ IXML����_��������_��������_����� }

  IXML����_��������_��������_����� = interface(IXMLNode)
    ['{E06DB807-409A-4900-97B1-22BDD701322A}']
    { Property Accessors }
    function Get_��������: UnicodeString;
    function Get_�������: UnicodeString;
    function Get_��������: UnicodeString;
    procedure Set_��������(Value: UnicodeString);
    procedure Set_�������(Value: UnicodeString);
    procedure Set_��������(Value: UnicodeString);
    { Methods & Properties }
    property ��������: UnicodeString read Get_�������� write Set_��������;
    property �������: UnicodeString read Get_������� write Set_�������;
    property ��������: UnicodeString read Get_�������� write Set_��������;
  end;

{ IXML����_��������_��������_�����List }

  IXML����_��������_��������_�����List = interface(IXMLNodeCollection)
    ['{1BA3059C-4720-4D2A-B793-0A458EB1B4CE}']
    { Methods & Properties }
    function Add: IXML����_��������_��������_�����;
    function Insert(const Index: Integer): IXML����_��������_��������_�����;

    function Get_Item(Index: Integer): IXML����_��������_��������_�����;
    property Items[Index: Integer]: IXML����_��������_��������_����� read Get_Item; default;
  end;

{ IXML����_��������_��������_��������1 }

  IXML����_��������_��������_��������1 = interface(IXMLNode)
    ['{7428DE56-6A54-44CA-8AEA-E579E7D0079C}']
    { Property Accessors }
    function Get_��������: UnicodeString;
    function Get_�������: UnicodeString;
    function Get_�������: UnicodeString;
    function Get_�����������: UnicodeString;
    function Get_�����������������: IXML����_��������_��������_��������1_�����������������;
    function Get_��������: IXML�����������;
    function Get_�������������: IXML������������;
    procedure Set_��������(Value: UnicodeString);
    procedure Set_�������(Value: UnicodeString);
    procedure Set_�������(Value: UnicodeString);
    procedure Set_�����������(Value: UnicodeString);
    { Methods & Properties }
    property ��������: UnicodeString read Get_�������� write Set_��������;
    property �������: UnicodeString read Get_������� write Set_�������;
    property �������: UnicodeString read Get_������� write Set_�������;
    property �����������: UnicodeString read Get_����������� write Set_�����������;
    property �����������������: IXML����_��������_��������_��������1_����������������� read Get_�����������������;
    property ��������: IXML����������� read Get_��������;
    property �������������: IXML������������ read Get_�������������;
  end;

{ IXML����_��������_��������_��������1_����������������� }

  IXML����_��������_��������_��������1_����������������� = interface(IXMLNode)
    ['{86D61B79-77AF-4F11-BE1B-16D032F63F35}']
    { Property Accessors }
    function Get_�����������: UnicodeString;
    function Get_������������: UnicodeString;
    function Get_�����������: UnicodeString;
    function Get_����������������: UnicodeString;
    function Get_�����������: UnicodeString;
    function Get_�������������: UnicodeString;
    function Get_��������������: UnicodeString;
    procedure Set_�����������(Value: UnicodeString);
    procedure Set_������������(Value: UnicodeString);
    procedure Set_�����������(Value: UnicodeString);
    procedure Set_����������������(Value: UnicodeString);
    procedure Set_�����������(Value: UnicodeString);
    procedure Set_�������������(Value: UnicodeString);
    procedure Set_��������������(Value: UnicodeString);
    { Methods & Properties }
    property �����������: UnicodeString read Get_����������� write Set_�����������;
    property ������������: UnicodeString read Get_������������ write Set_������������;
    property �����������: UnicodeString read Get_����������� write Set_�����������;
    property ����������������: UnicodeString read Get_���������������� write Set_����������������;
    property �����������: UnicodeString read Get_����������� write Set_�����������;
    property �������������: UnicodeString read Get_������������� write Set_�������������;
    property ��������������: UnicodeString read Get_�������������� write Set_��������������;
  end;

{ IXML������������ }

  IXML������������ = interface(IXMLNode)
    ['{5A2263A4-E8AE-4C5E-8931-83A36FE2039A}']
    { Property Accessors }
    function Get_�������: UnicodeString;
    function Get_������: UnicodeString;
    function Get_�������: UnicodeString;
    function Get_��������: UnicodeString;
    function Get_��������: UnicodeString;
    procedure Set_�������(Value: UnicodeString);
    procedure Set_������(Value: UnicodeString);
    procedure Set_�������(Value: UnicodeString);
    procedure Set_��������(Value: UnicodeString);
    procedure Set_��������(Value: UnicodeString);
    { Methods & Properties }
    property �������: UnicodeString read Get_������� write Set_�������;
    property ������: UnicodeString read Get_������ write Set_������;
    property �������: UnicodeString read Get_������� write Set_�������;
    property ��������: UnicodeString read Get_�������� write Set_��������;
    property ��������: UnicodeString read Get_�������� write Set_��������;
  end;

{ IXML������������List }

  IXML������������List = interface(IXMLNodeCollection)
    ['{CE8AEE3F-4158-4F1B-849F-2BDC05D71833}']
    { Methods & Properties }
    function Add: IXML������������;
    function Insert(const Index: Integer): IXML������������;

    function Get_Item(Index: Integer): IXML������������;
    property Items[Index: Integer]: IXML������������ read Get_Item; default;
  end;

{ IXML����_��������_��������_������������ }

  IXML����_��������_��������_������������ = interface(IXMLNode)
    ['{6BF1F28D-4B06-41E4-A04D-EF81B0F1D02F}']
    { Property Accessors }
    function Get_�����������: UnicodeString;
    function Get_����������: UnicodeString;
    function Get_�����������: UnicodeString;
    procedure Set_�����������(Value: UnicodeString);
    procedure Set_����������(Value: UnicodeString);
    procedure Set_�����������(Value: UnicodeString);
    { Methods & Properties }
    property �����������: UnicodeString read Get_����������� write Set_�����������;
    property ����������: UnicodeString read Get_���������� write Set_����������;
    property �����������: UnicodeString read Get_����������� write Set_�����������;
  end;

{ IXML����_��������_��������_������������List }

  IXML����_��������_��������_������������List = interface(IXMLNodeCollection)
    ['{49A62C90-2C5C-4235-9957-9ABA13433CB2}']
    { Methods & Properties }
    function Add: IXML����_��������_��������_������������;
    function Insert(const Index: Integer): IXML����_��������_��������_������������;

    function Get_Item(Index: Integer): IXML����_��������_��������_������������;
    property Items[Index: Integer]: IXML����_��������_��������_������������ read Get_Item; default;
  end;

{ IXML����_��������_��������_���������1 }

  IXML����_��������_��������_���������1 = interface(IXMLNodeCollection)
    ['{3822F943-4A81-4962-B13E-04B4AB2FA504}']
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
    ['{881517E8-19C2-45DD-92EF-9F7E628AD2B9}']
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
    ['{2C0699A4-10A7-45EF-8707-A403F086C5DD}']
    { Methods & Properties }
    function Add: IXML�����������;
    function Insert(const Index: Integer): IXML�����������;

    function Get_Item(Index: Integer): IXML�����������;
    property Items[Index: Integer]: IXML����������� read Get_Item; default;
  end;

{ IXML����_��������_���������� }

  IXML����_��������_���������� = interface(IXMLNode)
    ['{C87C2B0D-1F78-4A6E-824D-A69A654B5354}']
    { Property Accessors }
    function Get_�������: IXML����_��������_����������_�������List;
    function Get_��������: IXML����_��������_����������_��������;
    { Methods & Properties }
    property �������: IXML����_��������_����������_�������List read Get_�������;
    property ��������: IXML����_��������_����������_�������� read Get_��������;
  end;

{ IXML����_��������_����������_������� }

  IXML����_��������_����������_������� = interface(IXMLNode)
    ['{C9E515E8-C819-4439-8559-2B32D8FFDD2C}']
    { Property Accessors }
    function Get_������: Integer;
    function Get_�������: UnicodeString;
    function Get_����_���: UnicodeString;
    function Get_�������_���: UnicodeString;
    function Get_������: UnicodeString;
    function Get_�������: UnicodeString;
    function Get_�����������: UnicodeString;
    function Get_�����: UnicodeString;
    function Get_����������: UnicodeString;
    function Get_�������������: UnicodeString;
    function Get_�����: IXML�����������;
    function Get_������: IXML���������;
    function Get_����: IXML����_��������_����������_�������_����List;
    function Get_����������: IXML����_��������_����������_�������_����������;
    function Get_���������2: IXML�����������List;
    procedure Set_������(Value: Integer);
    procedure Set_�������(Value: UnicodeString);
    procedure Set_����_���(Value: UnicodeString);
    procedure Set_�������_���(Value: UnicodeString);
    procedure Set_������(Value: UnicodeString);
    procedure Set_�������(Value: UnicodeString);
    procedure Set_�����������(Value: UnicodeString);
    procedure Set_�����(Value: UnicodeString);
    procedure Set_����������(Value: UnicodeString);
    procedure Set_�������������(Value: UnicodeString);
    { Methods & Properties }
    property ������: Integer read Get_������ write Set_������;
    property �������: UnicodeString read Get_������� write Set_�������;
    property ����_���: UnicodeString read Get_����_��� write Set_����_���;
    property �������_���: UnicodeString read Get_�������_��� write Set_�������_���;
    property ������: UnicodeString read Get_������ write Set_������;
    property �������: UnicodeString read Get_������� write Set_�������;
    property �����������: UnicodeString read Get_����������� write Set_�����������;
    property �����: UnicodeString read Get_����� write Set_�����;
    property ����������: UnicodeString read Get_���������� write Set_����������;
    property �������������: UnicodeString read Get_������������� write Set_�������������;
    property �����: IXML����������� read Get_�����;
    property ������: IXML��������� read Get_������;
    property ����: IXML����_��������_����������_�������_����List read Get_����;
    property ����������: IXML����_��������_����������_�������_���������� read Get_����������;
    property ���������2: IXML�����������List read Get_���������2;
  end;

{ IXML����_��������_����������_�������List }

  IXML����_��������_����������_�������List = interface(IXMLNodeCollection)
    ['{699CE547-6950-4231-89C6-36A315E19BB9}']
    { Methods & Properties }
    function Add: IXML����_��������_����������_�������;
    function Insert(const Index: Integer): IXML����_��������_����������_�������;

    function Get_Item(Index: Integer): IXML����_��������_����������_�������;
    property Items[Index: Integer]: IXML����_��������_����������_������� read Get_Item; default;
  end;

{ IXML����������� }

  IXML����������� = interface(IXMLNode)
    ['{C0031D6D-04C5-486B-BF42-C7294618466B}']
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
    ['{2C99EE03-F983-4953-8196-112C17009B53}']
    { Property Accessors }
    function Get_������: UnicodeString;
    function Get_������: UnicodeString;
    function Get_������: UnicodeString;
    procedure Set_������(Value: UnicodeString);
    procedure Set_������(Value: UnicodeString);
    procedure Set_������(Value: UnicodeString);
    { Methods & Properties }
    property ������: UnicodeString read Get_������ write Set_������;
    property ������: UnicodeString read Get_������ write Set_������;
    property ������: UnicodeString read Get_������ write Set_������;
  end;

{ IXML����_��������_����������_�������_���� }

  IXML����_��������_����������_�������_���� = interface(IXMLNode)
    ['{0AA62535-46B3-44D2-9496-06B94D508922}']
    { Property Accessors }
    function Get_���������: UnicodeString;
    function Get_������������: UnicodeString;
    function Get_�������: UnicodeString;
    procedure Set_���������(Value: UnicodeString);
    procedure Set_������������(Value: UnicodeString);
    procedure Set_�������(Value: UnicodeString);
    { Methods & Properties }
    property ���������: UnicodeString read Get_��������� write Set_���������;
    property ������������: UnicodeString read Get_������������ write Set_������������;
    property �������: UnicodeString read Get_������� write Set_�������;
  end;

{ IXML����_��������_����������_�������_����List }

  IXML����_��������_����������_�������_����List = interface(IXMLNodeCollection)
    ['{55D25C65-C08B-4D26-92BB-D71AACCE19D1}']
    { Methods & Properties }
    function Add: IXML����_��������_����������_�������_����;
    function Insert(const Index: Integer): IXML����_��������_����������_�������_����;

    function Get_Item(Index: Integer): IXML����_��������_����������_�������_����;
    property Items[Index: Integer]: IXML����_��������_����������_�������_���� read Get_Item; default;
  end;

{ IXML����_��������_����������_�������_���������� }

  IXML����_��������_����������_�������_���������� = interface(IXMLNode)
    ['{3C6F04A5-09C1-417F-B1F4-980F1714D204}']
    { Property Accessors }
    function Get_��������: UnicodeString;
    function Get_��������: UnicodeString;
    function Get_���������: UnicodeString;
    function Get_�����������: UnicodeString;
    function Get_�������: UnicodeString;
    function Get_�����������: UnicodeString;
    function Get_�������: UnicodeString;
    function Get_����������: UnicodeString;
    function Get_������: UnicodeString;
    function Get_������: UnicodeString;
    function Get_���������: UnicodeString;
    function Get_�����������: IXML����_��������_����������_�������_����������_�����������List;
    function Get_���������������: IXML����_��������_����������_�������_����������_���������������List;
    procedure Set_��������(Value: UnicodeString);
    procedure Set_��������(Value: UnicodeString);
    procedure Set_���������(Value: UnicodeString);
    procedure Set_�����������(Value: UnicodeString);
    procedure Set_�������(Value: UnicodeString);
    procedure Set_�����������(Value: UnicodeString);
    procedure Set_�������(Value: UnicodeString);
    procedure Set_����������(Value: UnicodeString);
    procedure Set_������(Value: UnicodeString);
    procedure Set_������(Value: UnicodeString);
    procedure Set_���������(Value: UnicodeString);
    { Methods & Properties }
    property ��������: UnicodeString read Get_�������� write Set_��������;
    property ��������: UnicodeString read Get_�������� write Set_��������;
    property ���������: UnicodeString read Get_��������� write Set_���������;
    property �����������: UnicodeString read Get_����������� write Set_�����������;
    property �������: UnicodeString read Get_������� write Set_�������;
    property �����������: UnicodeString read Get_����������� write Set_�����������;
    property �������: UnicodeString read Get_������� write Set_�������;
    property ����������: UnicodeString read Get_���������� write Set_����������;
    property ������: UnicodeString read Get_������ write Set_������;
    property ������: UnicodeString read Get_������ write Set_������;
    property ���������: UnicodeString read Get_��������� write Set_���������;
    property �����������: IXML����_��������_����������_�������_����������_�����������List read Get_�����������;
    property ���������������: IXML����_��������_����������_�������_����������_���������������List read Get_���������������;
  end;

{ IXML����_��������_����������_�������_����������_����������� }

  IXML����_��������_����������_�������_����������_����������� = interface(IXMLNode)
    ['{70495A35-2BFE-4346-BB2D-474EFD754F62}']
    { Property Accessors }
    function Get_�������������: UnicodeString;
    function Get_������������: UnicodeString;
    function Get_����������������: UnicodeString;
    function Get_�������������: UnicodeString;
    function Get_����������: UnicodeString;
    procedure Set_�������������(Value: UnicodeString);
    procedure Set_������������(Value: UnicodeString);
    procedure Set_����������������(Value: UnicodeString);
    procedure Set_�������������(Value: UnicodeString);
    procedure Set_����������(Value: UnicodeString);
    { Methods & Properties }
    property �������������: UnicodeString read Get_������������� write Set_�������������;
    property ������������: UnicodeString read Get_������������ write Set_������������;
    property ����������������: UnicodeString read Get_���������������� write Set_����������������;
    property �������������: UnicodeString read Get_������������� write Set_�������������;
    property ����������: UnicodeString read Get_���������� write Set_����������;
  end;

{ IXML����_��������_����������_�������_����������_�����������List }

  IXML����_��������_����������_�������_����������_�����������List = interface(IXMLNodeCollection)
    ['{25C1EC95-CEE5-4641-92AA-98E1F2467FCB}']
    { Methods & Properties }
    function Add: IXML����_��������_����������_�������_����������_�����������;
    function Insert(const Index: Integer): IXML����_��������_����������_�������_����������_�����������;

    function Get_Item(Index: Integer): IXML����_��������_����������_�������_����������_�����������;
    property Items[Index: Integer]: IXML����_��������_����������_�������_����������_����������� read Get_Item; default;
  end;

{ IXML����_��������_����������_�������_����������_��������������� }

  IXML����_��������_����������_�������_����������_��������������� = interface(IXMLNode)
    ['{7369E3EA-520B-4300-AD8E-E3573A28BC59}']
    { Property Accessors }
    function Get_��������������: UnicodeString;
    function Get_���: IXML����_��������_����������_�������_����������_���������������_���List;
    function Get_�������: IXML����_��������_����������_�������_����������_���������������_�������List;
    procedure Set_��������������(Value: UnicodeString);
    { Methods & Properties }
    property ��������������: UnicodeString read Get_�������������� write Set_��������������;
    property ���: IXML����_��������_����������_�������_����������_���������������_���List read Get_���;
    property �������: IXML����_��������_����������_�������_����������_���������������_�������List read Get_�������;
  end;

{ IXML����_��������_����������_�������_����������_���������������List }

  IXML����_��������_����������_�������_����������_���������������List = interface(IXMLNodeCollection)
    ['{698A0330-0382-45F2-8A18-04E37C5F8F6A}']
    { Methods & Properties }
    function Add: IXML����_��������_����������_�������_����������_���������������;
    function Insert(const Index: Integer): IXML����_��������_����������_�������_����������_���������������;

    function Get_Item(Index: Integer): IXML����_��������_����������_�������_����������_���������������;
    property Items[Index: Integer]: IXML����_��������_����������_�������_����������_��������������� read Get_Item; default;
  end;

{ IXML����_��������_����������_�������� }

  IXML����_��������_����������_�������� = interface(IXMLNode)
    ['{7B19A5BD-055E-4109-A2C4-C98200DB00D0}']
    { Property Accessors }
    function Get_����������������: UnicodeString;
    function Get_���������������: UnicodeString;
    function Get_������������������: UnicodeString;
    function Get_�����������: IXML���������;
    function Get_����������: UnicodeString;
    procedure Set_����������������(Value: UnicodeString);
    procedure Set_���������������(Value: UnicodeString);
    procedure Set_������������������(Value: UnicodeString);
    procedure Set_����������(Value: UnicodeString);
    { Methods & Properties }
    property ����������������: UnicodeString read Get_���������������� write Set_����������������;
    property ���������������: UnicodeString read Get_��������������� write Set_���������������;
    property ������������������: UnicodeString read Get_������������������ write Set_������������������;
    property �����������: IXML��������� read Get_�����������;
    property ����������: UnicodeString read Get_���������� write Set_����������;
  end;

{ IXML����_��������_��������� }

  IXML����_��������_��������� = interface(IXMLNode)
    ['{95856A91-0734-48F9-855F-8AD5A0D984B6}']
    { Property Accessors }
    function Get_�����: IXML����_��������_���������_�����;
    function Get_���������3: IXML����_��������_���������_���������3;
    { Methods & Properties }
    property �����: IXML����_��������_���������_����� read Get_�����;
    property ���������3: IXML����_��������_���������_���������3 read Get_���������3;
  end;

{ IXML����_��������_���������_����� }

  IXML����_��������_���������_����� = interface(IXMLNode)
    ['{A3289869-C955-4B42-8EA0-66B5176769F0}']
    { Property Accessors }
    function Get_�������: UnicodeString;
    function Get_�������: UnicodeString;
    function Get_�������: UnicodeString;
    function Get_�������: UnicodeString;
    function Get_��������: UnicodeString;
    function Get_������: IXML������������List;
    function Get_��������: IXML����_��������_���������_�����_��������;
    function Get_��������: IXML����_��������_���������_�����_��������;
    function Get_���������: IXML����_��������_���������_�����_���������;
    procedure Set_�������(Value: UnicodeString);
    procedure Set_�������(Value: UnicodeString);
    procedure Set_�������(Value: UnicodeString);
    procedure Set_�������(Value: UnicodeString);
    procedure Set_��������(Value: UnicodeString);
    { Methods & Properties }
    property �������: UnicodeString read Get_������� write Set_�������;
    property �������: UnicodeString read Get_������� write Set_�������;
    property �������: UnicodeString read Get_������� write Set_�������;
    property �������: UnicodeString read Get_������� write Set_�������;
    property ��������: UnicodeString read Get_�������� write Set_��������;
    property ������: IXML������������List read Get_������;
    property ��������: IXML����_��������_���������_�����_�������� read Get_��������;
    property ��������: IXML����_��������_���������_�����_�������� read Get_��������;
    property ���������: IXML����_��������_���������_�����_��������� read Get_���������;
  end;

{ IXML����_��������_���������_�����_�������� }

  IXML����_��������_���������_�����_�������� = interface(IXMLNode)
    ['{084F1769-B1EE-4234-81A9-0D3C07F7E187}']
    { Property Accessors }
    function Get_����������: IXML����_��������_���������_�����_��������_����������;
    function Get_������: IXML����_��������_���������_�����_��������_������;
    { Methods & Properties }
    property ����������: IXML����_��������_���������_�����_��������_���������� read Get_����������;
    property ������: IXML����_��������_���������_�����_��������_������ read Get_������;
  end;

{ IXML����_��������_���������_�����_��������_���������� }

  IXML����_��������_���������_�����_��������_���������� = interface(IXMLNode)
    ['{BC3D82F7-B28F-4844-BD06-B3369A0F2921}']
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
    ['{90134675-AB2A-4A43-B714-C03F67723C63}']
    { Property Accessors }
    function Get_����������: IXML����_��������_���������_�����_��������_������_����������;
    function Get_�����: IXML����_��������_���������_�����_��������_������_�����;
    { Methods & Properties }
    property ����������: IXML����_��������_���������_�����_��������_������_���������� read Get_����������;
    property �����: IXML����_��������_���������_�����_��������_������_����� read Get_�����;
  end;

{ IXML����_��������_���������_�����_��������_������_���������� }

  IXML����_��������_���������_�����_��������_������_���������� = interface(IXMLNode)
    ['{09DE3864-C512-4498-A5CE-C33167AF0366}']
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
    ['{4B609DC8-7C22-43A4-B00A-07E62967B248}']
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
    ['{8E5B50F4-9AE9-4BCD-8B29-10F5D986D892}']
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
    ['{13241313-AB9A-4608-BBFD-76A7BAAA08F6}']
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
    ['{24E8CD1C-8851-4B87-AEF2-026AACD5AA81}']
    { Methods & Properties }
    function Add: IXML����_��������_���������_�����_��������_��������;
    function Insert(const Index: Integer): IXML����_��������_���������_�����_��������_��������;

    function Get_Item(Index: Integer): IXML����_��������_���������_�����_��������_��������;
    property Items[Index: Integer]: IXML����_��������_���������_�����_��������_�������� read Get_Item; default;
  end;

{ IXML����_��������_���������_�����_��������� }

  IXML����_��������_���������_�����_��������� = interface(IXMLNode)
    ['{32097D19-0486-42AD-A2D5-711D6C13D126}']
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
    ['{349A96FC-F166-4C52-BF04-75EE58C0A61A}']
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
    ['{77105686-1C49-4423-9D71-0ED7A081168C}']
    { Property Accessors }
    function Get_�������: UnicodeString;
    function Get_������: UnicodeString;
    function Get_�������: UnicodeString;
    function Get_����������: UnicodeString;
    function Get_��: IXML�������;
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
    property ��: IXML������� read Get_��;
    property ��: IXML������� read Get_��;
    property ��: IXML����_��������_���������_�� read Get_��;
  end;

{ IXML����_��������_���������List }

  IXML����_��������_���������List = interface(IXMLNodeCollection)
    ['{BC13D1C9-C3DA-4C48-8AF8-D6828DAB2813}']
    { Methods & Properties }
    function Add: IXML����_��������_���������;
    function Insert(const Index: Integer): IXML����_��������_���������;

    function Get_Item(Index: Integer): IXML����_��������_���������;
    property Items[Index: Integer]: IXML����_��������_��������� read Get_Item; default;
  end;

{ IXML����_��������_���������_�� }

  IXML����_��������_���������_�� = interface(IXMLNode)
    ['{C32C1FA9-9DE8-4CDD-ACA9-02755C6FEAD3}']
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

{ IXML����_��������_����������_�������_����������_���������������_�������List }

  IXML����_��������_����������_�������_����������_���������������_�������List = interface(IXMLNodeCollection)
    ['{6C1DD439-2187-4453-BE8F-5EBB6A08ECB8}']
    { Methods & Properties }
    function Add(const Value: UnicodeString): IXMLNode;
    function Insert(const Index: Integer; const Value: UnicodeString): IXMLNode;

    function Get_Item(Index: Integer): UnicodeString;
    property Items[Index: Integer]: UnicodeString read Get_Item; default;
  end;

{ IXML����_��������_����������_�������_����������_���������������_���List }

  IXML����_��������_����������_�������_����������_���������������_���List = interface(IXMLNodeCollection)
    ['{21F95BBB-3ED6-4205-9677-43F576706A92}']
    { Methods & Properties }
    function Add(const Value: UnicodeString): IXMLNode;
    function Insert(const Index: Integer; const Value: UnicodeString): IXMLNode;

    function Get_Item(Index: Integer): UnicodeString;
    property Items[Index: Integer]: UnicodeString read Get_Item; default;
  end;

{ Forward Decls }

  TXML���� = class;
  TXML����_����������� = class;
  TXML����_�����������_��������� = class;
  TXML����_�������� = class;
  TXML����_��������_�������� = class;
  TXML����_��������_��������_������� = class;
  TXML����������� = class;
  TXML�����������List = class;
  TXML�����������_���� = class;
  TXML������� = class;
  TXML������ = class;
  TXML�����������_����_������ = class;
  TXML�����������_����_�������� = class;
  TXML������� = class;
  TXML�������� = class;
  TXML�������� = class;
  TXML��������� = class;
  TXML���������� = class;
  TXML�����������_�������� = class;
  TXML�����������_��������_������ = class;
  TXML����_��������_��������_������ = class;
  TXML����_��������_��������_������List = class;
  TXML����_��������_��������_����� = class;
  TXML����_��������_��������_�����List = class;
  TXML����_��������_��������_��������1 = class;
  TXML����_��������_��������_��������1_����������������� = class;
  TXML������������ = class;
  TXML������������List = class;
  TXML����_��������_��������_������������ = class;
  TXML����_��������_��������_������������List = class;
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
  TXML����_��������_����������_�������_����������_����������� = class;
  TXML����_��������_����������_�������_����������_�����������List = class;
  TXML����_��������_����������_�������_����������_��������������� = class;
  TXML����_��������_����������_�������_����������_���������������List = class;
  TXML����_��������_����������_�������� = class;
  TXML����_��������_��������� = class;
  TXML����_��������_���������_����� = class;
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
  TXML����_��������_����������_�������_����������_���������������_�������List = class;
  TXML����_��������_����������_�������_����������_���������������_���List = class;

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
    function Get_�������������: UnicodeString;
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
    procedure Set_�������������(Value: UnicodeString);
  public
    procedure AfterConstruction; override;
  end;

{ TXML����_��������_�������� }

  TXML����_��������_�������� = class(TXMLNode, IXML����_��������_��������)
  private
    F������: IXML�����������List;
    F������: IXML����_��������_��������_������List;
    F���������: IXML�����������List;
    F�����: IXML����_��������_��������_�����List;
    F�������: IXML�����������List;
    F������������: IXML����_��������_��������_������������List;
  protected
    { IXML����_��������_�������� }
    function Get_��������: UnicodeString;
    function Get_�������: UnicodeString;
    function Get_������: UnicodeString;
    function Get_�������: IXML����_��������_��������_�������;
    function Get_������: IXML�����������List;
    function Get_������: IXML����_��������_��������_������List;
    function Get_���������: IXML�����������List;
    function Get_�����: IXML����_��������_��������_�����List;
    function Get_�������: IXML�����������List;
    function Get_��������1: IXML����_��������_��������_��������1;
    function Get_������������: IXML����_��������_��������_������������List;
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
    function Get_�������������: UnicodeString;
    function Get_�����������: UnicodeString;
    function Get_��������������: UnicodeString;
    procedure Set_����������(Value: Integer);
    procedure Set_�������������(Value: UnicodeString);
    procedure Set_�����������(Value: UnicodeString);
    procedure Set_��������������(Value: UnicodeString);
  end;

{ TXML����������� }

  TXML����������� = class(TXMLNode, IXML�����������)
  protected
    { IXML����������� }
    function Get_����: UnicodeString;
    function Get_����������: UnicodeString;
    function Get_�����������: UnicodeString;
    function Get_���������: UnicodeString;
    function Get_����: IXML�����������_����;
    function Get_�����: IXML��������;
    function Get_�������: IXML����������;
    function Get_��������: IXML�����������_��������;
    procedure Set_����(Value: UnicodeString);
    procedure Set_����������(Value: UnicodeString);
    procedure Set_�����������(Value: UnicodeString);
    procedure Set_���������(Value: UnicodeString);
  public
    procedure AfterConstruction; override;
  end;

{ TXML�����������List }

  TXML�����������List = class(TXMLNodeCollection, IXML�����������List)
  protected
    { IXML�����������List }
    function Add: IXML�����������;
    function Insert(const Index: Integer): IXML�����������;

    function Get_Item(Index: Integer): IXML�����������;
  end;

{ TXML�����������_���� }

  TXML�����������_���� = class(TXMLNode, IXML�����������_����)
  protected
    { IXML�����������_���� }
    function Get_����: IXML�������;
    function Get_������: IXML�����������_����_������;
    function Get_��������: IXML�����������_����_��������;
    function Get_������������: IXML�������;
  public
    procedure AfterConstruction; override;
  end;

{ TXML������� }

  TXML������� = class(TXMLNode, IXML�������)
  protected
    { IXML������� }
    function Get_�����: UnicodeString;
    function Get_��������: UnicodeString;
    function Get_����������: UnicodeString;
    function Get_��������: UnicodeString;
    function Get_���: IXML������;
    procedure Set_�����(Value: UnicodeString);
    procedure Set_��������(Value: UnicodeString);
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
    function Get_��������: UnicodeString;
    function Get_���: UnicodeString;
    procedure Set_�������(Value: UnicodeString);
    procedure Set_�����(Value: UnicodeString);
    procedure Set_��������(Value: UnicodeString);
    procedure Set_���(Value: UnicodeString);
  end;

{ TXML�����������_����_�������� }

  TXML�����������_����_�������� = class(TXMLNode, IXML�����������_����_��������)
  protected
    { IXML�����������_����_�������� }
    function Get_�������: UnicodeString;
    function Get_�������: UnicodeString;
    function Get_��������: UnicodeString;
    procedure Set_�������(Value: UnicodeString);
    procedure Set_�������(Value: UnicodeString);
    procedure Set_��������(Value: UnicodeString);
  end;

{ TXML������� }

  TXML������� = class(TXMLNode, IXML�������)
  protected
    { IXML������� }
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

{ TXML����_��������_��������_������List }

  TXML����_��������_��������_������List = class(TXMLNodeCollection, IXML����_��������_��������_������List)
  protected
    { IXML����_��������_��������_������List }
    function Add: IXML����_��������_��������_������;
    function Insert(const Index: Integer): IXML����_��������_��������_������;

    function Get_Item(Index: Integer): IXML����_��������_��������_������;
  end;

{ TXML����_��������_��������_����� }

  TXML����_��������_��������_����� = class(TXMLNode, IXML����_��������_��������_�����)
  protected
    { IXML����_��������_��������_����� }
    function Get_��������: UnicodeString;
    function Get_�������: UnicodeString;
    function Get_��������: UnicodeString;
    procedure Set_��������(Value: UnicodeString);
    procedure Set_�������(Value: UnicodeString);
    procedure Set_��������(Value: UnicodeString);
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
    function Get_�����������: UnicodeString;
    function Get_�����������������: IXML����_��������_��������_��������1_�����������������;
    function Get_��������: IXML�����������;
    function Get_�������������: IXML������������;
    procedure Set_��������(Value: UnicodeString);
    procedure Set_�������(Value: UnicodeString);
    procedure Set_�������(Value: UnicodeString);
    procedure Set_�����������(Value: UnicodeString);
  public
    procedure AfterConstruction; override;
  end;

{ TXML����_��������_��������_��������1_����������������� }

  TXML����_��������_��������_��������1_����������������� = class(TXMLNode, IXML����_��������_��������_��������1_�����������������)
  protected
    { IXML����_��������_��������_��������1_����������������� }
    function Get_�����������: UnicodeString;
    function Get_������������: UnicodeString;
    function Get_�����������: UnicodeString;
    function Get_����������������: UnicodeString;
    function Get_�����������: UnicodeString;
    function Get_�������������: UnicodeString;
    function Get_��������������: UnicodeString;
    procedure Set_�����������(Value: UnicodeString);
    procedure Set_������������(Value: UnicodeString);
    procedure Set_�����������(Value: UnicodeString);
    procedure Set_����������������(Value: UnicodeString);
    procedure Set_�����������(Value: UnicodeString);
    procedure Set_�������������(Value: UnicodeString);
    procedure Set_��������������(Value: UnicodeString);
  end;

{ TXML������������ }

  TXML������������ = class(TXMLNode, IXML������������)
  protected
    { IXML������������ }
    function Get_�������: UnicodeString;
    function Get_������: UnicodeString;
    function Get_�������: UnicodeString;
    function Get_��������: UnicodeString;
    function Get_��������: UnicodeString;
    procedure Set_�������(Value: UnicodeString);
    procedure Set_������(Value: UnicodeString);
    procedure Set_�������(Value: UnicodeString);
    procedure Set_��������(Value: UnicodeString);
    procedure Set_��������(Value: UnicodeString);
  end;

{ TXML������������List }

  TXML������������List = class(TXMLNodeCollection, IXML������������List)
  protected
    { IXML������������List }
    function Add: IXML������������;
    function Insert(const Index: Integer): IXML������������;

    function Get_Item(Index: Integer): IXML������������;
  end;

{ TXML����_��������_��������_������������ }

  TXML����_��������_��������_������������ = class(TXMLNode, IXML����_��������_��������_������������)
  protected
    { IXML����_��������_��������_������������ }
    function Get_�����������: UnicodeString;
    function Get_����������: UnicodeString;
    function Get_�����������: UnicodeString;
    procedure Set_�����������(Value: UnicodeString);
    procedure Set_����������(Value: UnicodeString);
    procedure Set_�����������(Value: UnicodeString);
  end;

{ TXML����_��������_��������_������������List }

  TXML����_��������_��������_������������List = class(TXMLNodeCollection, IXML����_��������_��������_������������List)
  protected
    { IXML����_��������_��������_������������List }
    function Add: IXML����_��������_��������_������������;
    function Insert(const Index: Integer): IXML����_��������_��������_������������;

    function Get_Item(Index: Integer): IXML����_��������_��������_������������;
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
    function Get_�������_���: UnicodeString;
    function Get_������: UnicodeString;
    function Get_�������: UnicodeString;
    function Get_�����������: UnicodeString;
    function Get_�����: UnicodeString;
    function Get_����������: UnicodeString;
    function Get_�������������: UnicodeString;
    function Get_�����: IXML�����������;
    function Get_������: IXML���������;
    function Get_����: IXML����_��������_����������_�������_����List;
    function Get_����������: IXML����_��������_����������_�������_����������;
    function Get_���������2: IXML�����������List;
    procedure Set_������(Value: Integer);
    procedure Set_�������(Value: UnicodeString);
    procedure Set_����_���(Value: UnicodeString);
    procedure Set_�������_���(Value: UnicodeString);
    procedure Set_������(Value: UnicodeString);
    procedure Set_�������(Value: UnicodeString);
    procedure Set_�����������(Value: UnicodeString);
    procedure Set_�����(Value: UnicodeString);
    procedure Set_����������(Value: UnicodeString);
    procedure Set_�������������(Value: UnicodeString);
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
    function Get_������: UnicodeString;
    procedure Set_������(Value: UnicodeString);
    procedure Set_������(Value: UnicodeString);
    procedure Set_������(Value: UnicodeString);
  end;

{ TXML����_��������_����������_�������_���� }

  TXML����_��������_����������_�������_���� = class(TXMLNode, IXML����_��������_����������_�������_����)
  protected
    { IXML����_��������_����������_�������_���� }
    function Get_���������: UnicodeString;
    function Get_������������: UnicodeString;
    function Get_�������: UnicodeString;
    procedure Set_���������(Value: UnicodeString);
    procedure Set_������������(Value: UnicodeString);
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
  private
    F�����������: IXML����_��������_����������_�������_����������_�����������List;
    F���������������: IXML����_��������_����������_�������_����������_���������������List;
  protected
    { IXML����_��������_����������_�������_���������� }
    function Get_��������: UnicodeString;
    function Get_��������: UnicodeString;
    function Get_���������: UnicodeString;
    function Get_�����������: UnicodeString;
    function Get_�������: UnicodeString;
    function Get_�����������: UnicodeString;
    function Get_�������: UnicodeString;
    function Get_����������: UnicodeString;
    function Get_������: UnicodeString;
    function Get_������: UnicodeString;
    function Get_���������: UnicodeString;
    function Get_�����������: IXML����_��������_����������_�������_����������_�����������List;
    function Get_���������������: IXML����_��������_����������_�������_����������_���������������List;
    procedure Set_��������(Value: UnicodeString);
    procedure Set_��������(Value: UnicodeString);
    procedure Set_���������(Value: UnicodeString);
    procedure Set_�����������(Value: UnicodeString);
    procedure Set_�������(Value: UnicodeString);
    procedure Set_�����������(Value: UnicodeString);
    procedure Set_�������(Value: UnicodeString);
    procedure Set_����������(Value: UnicodeString);
    procedure Set_������(Value: UnicodeString);
    procedure Set_������(Value: UnicodeString);
    procedure Set_���������(Value: UnicodeString);
  public
    procedure AfterConstruction; override;
  end;

{ TXML����_��������_����������_�������_����������_����������� }

  TXML����_��������_����������_�������_����������_����������� = class(TXMLNode, IXML����_��������_����������_�������_����������_�����������)
  protected
    { IXML����_��������_����������_�������_����������_����������� }
    function Get_�������������: UnicodeString;
    function Get_������������: UnicodeString;
    function Get_����������������: UnicodeString;
    function Get_�������������: UnicodeString;
    function Get_����������: UnicodeString;
    procedure Set_�������������(Value: UnicodeString);
    procedure Set_������������(Value: UnicodeString);
    procedure Set_����������������(Value: UnicodeString);
    procedure Set_�������������(Value: UnicodeString);
    procedure Set_����������(Value: UnicodeString);
  end;

{ TXML����_��������_����������_�������_����������_�����������List }

  TXML����_��������_����������_�������_����������_�����������List = class(TXMLNodeCollection, IXML����_��������_����������_�������_����������_�����������List)
  protected
    { IXML����_��������_����������_�������_����������_�����������List }
    function Add: IXML����_��������_����������_�������_����������_�����������;
    function Insert(const Index: Integer): IXML����_��������_����������_�������_����������_�����������;

    function Get_Item(Index: Integer): IXML����_��������_����������_�������_����������_�����������;
  end;

{ TXML����_��������_����������_�������_����������_��������������� }

  TXML����_��������_����������_�������_����������_��������������� = class(TXMLNode, IXML����_��������_����������_�������_����������_���������������)
  private
    F���: IXML����_��������_����������_�������_����������_���������������_���List;
    F�������: IXML����_��������_����������_�������_����������_���������������_�������List;
  protected
    { IXML����_��������_����������_�������_����������_��������������� }
    function Get_��������������: UnicodeString;
    function Get_���: IXML����_��������_����������_�������_����������_���������������_���List;
    function Get_�������: IXML����_��������_����������_�������_����������_���������������_�������List;
    procedure Set_��������������(Value: UnicodeString);
  public
    procedure AfterConstruction; override;
  end;

{ TXML����_��������_����������_�������_����������_���������������List }

  TXML����_��������_����������_�������_����������_���������������List = class(TXMLNodeCollection, IXML����_��������_����������_�������_����������_���������������List)
  protected
    { IXML����_��������_����������_�������_����������_���������������List }
    function Add: IXML����_��������_����������_�������_����������_���������������;
    function Insert(const Index: Integer): IXML����_��������_����������_�������_����������_���������������;

    function Get_Item(Index: Integer): IXML����_��������_����������_�������_����������_���������������;
  end;

{ TXML����_��������_����������_�������� }

  TXML����_��������_����������_�������� = class(TXMLNode, IXML����_��������_����������_��������)
  protected
    { IXML����_��������_����������_�������� }
    function Get_����������������: UnicodeString;
    function Get_���������������: UnicodeString;
    function Get_������������������: UnicodeString;
    function Get_�����������: IXML���������;
    function Get_����������: UnicodeString;
    procedure Set_����������������(Value: UnicodeString);
    procedure Set_���������������(Value: UnicodeString);
    procedure Set_������������������(Value: UnicodeString);
    procedure Set_����������(Value: UnicodeString);
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
    F������: IXML������������List;
  protected
    { IXML����_��������_���������_����� }
    function Get_�������: UnicodeString;
    function Get_�������: UnicodeString;
    function Get_�������: UnicodeString;
    function Get_�������: UnicodeString;
    function Get_��������: UnicodeString;
    function Get_������: IXML������������List;
    function Get_��������: IXML����_��������_���������_�����_��������;
    function Get_��������: IXML����_��������_���������_�����_��������;
    function Get_���������: IXML����_��������_���������_�����_���������;
    procedure Set_�������(Value: UnicodeString);
    procedure Set_�������(Value: UnicodeString);
    procedure Set_�������(Value: UnicodeString);
    procedure Set_�������(Value: UnicodeString);
    procedure Set_��������(Value: UnicodeString);
  public
    procedure AfterConstruction; override;
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
    function Get_��: IXML�������;
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

{ TXML����_��������_����������_�������_����������_���������������_�������List }

  TXML����_��������_����������_�������_����������_���������������_�������List = class(TXMLNodeCollection, IXML����_��������_����������_�������_����������_���������������_�������List)
  protected
    { IXML����_��������_����������_�������_����������_���������������_�������List }
    function Add(const Value: UnicodeString): IXMLNode;
    function Insert(const Index: Integer; const Value: UnicodeString): IXMLNode;

    function Get_Item(Index: Integer): UnicodeString;
  end;

{ TXML����_��������_����������_�������_����������_���������������_���List }

  TXML����_��������_����������_�������_����������_���������������_���List = class(TXMLNodeCollection, IXML����_��������_����������_�������_����������_���������������_���List)
  protected
    { IXML����_��������_����������_�������_����������_���������������_���List }
    function Add(const Value: UnicodeString): IXMLNode;
    function Insert(const Index: Integer; const Value: UnicodeString): IXMLNode;

    function Get_Item(Index: Integer): UnicodeString;
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

function TXML����_��������.Get_�������������: UnicodeString;
begin
  Result := AttributeNodes['�������������'].Text;
end;

procedure TXML����_��������.Set_�������������(Value: UnicodeString);
begin
  SetAttribute('�������������', Value);
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
  RegisterChildNode('������������', TXML����_��������_��������_������������);
  RegisterChildNode('���������1', TXML����_��������_��������_���������1);
  F������ := CreateCollection(TXML�����������List, IXML�����������, '������') as IXML�����������List;
  F������ := CreateCollection(TXML����_��������_��������_������List, IXML����_��������_��������_������, '������') as IXML����_��������_��������_������List;
  F��������� := CreateCollection(TXML�����������List, IXML�����������, '���������') as IXML�����������List;
  F����� := CreateCollection(TXML����_��������_��������_�����List, IXML����_��������_��������_�����, '�����') as IXML����_��������_��������_�����List;
  F������� := CreateCollection(TXML�����������List, IXML�����������, '�������') as IXML�����������List;
  F������������ := CreateCollection(TXML����_��������_��������_������������List, IXML����_��������_��������_������������, '������������') as IXML����_��������_��������_������������List;
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

function TXML����_��������_��������.Get_������: IXML�����������List;
begin
  Result := F������;
end;

function TXML����_��������_��������.Get_������: IXML����_��������_��������_������List;
begin
  Result := F������;
end;

function TXML����_��������_��������.Get_���������: IXML�����������List;
begin
  Result := F���������;
end;

function TXML����_��������_��������.Get_�����: IXML����_��������_��������_�����List;
begin
  Result := F�����;
end;

function TXML����_��������_��������.Get_�������: IXML�����������List;
begin
  Result := F�������;
end;

function TXML����_��������_��������.Get_��������1: IXML����_��������_��������_��������1;
begin
  Result := ChildNodes['��������1'] as IXML����_��������_��������_��������1;
end;

function TXML����_��������_��������.Get_������������: IXML����_��������_��������_������������List;
begin
  Result := F������������;
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

function TXML����_��������_��������_�������.Get_�������������: UnicodeString;
begin
  Result := AttributeNodes['�������������'].Text;
end;

procedure TXML����_��������_��������_�������.Set_�������������(Value: UnicodeString);
begin
  SetAttribute('�������������', Value);
end;

function TXML����_��������_��������_�������.Get_�����������: UnicodeString;
begin
  Result := AttributeNodes['�����������'].Text;
end;

procedure TXML����_��������_��������_�������.Set_�����������(Value: UnicodeString);
begin
  SetAttribute('�����������', Value);
end;

function TXML����_��������_��������_�������.Get_��������������: UnicodeString;
begin
  Result := AttributeNodes['��������������'].Text;
end;

procedure TXML����_��������_��������_�������.Set_��������������(Value: UnicodeString);
begin
  SetAttribute('��������������', Value);
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

function TXML�����������.Get_���������: UnicodeString;
begin
  Result := AttributeNodes['���������'].Text;
end;

procedure TXML�����������.Set_���������(Value: UnicodeString);
begin
  SetAttribute('���������', Value);
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

{ TXML�����������_���� }

procedure TXML�����������_����.AfterConstruction;
begin
  RegisterChildNode('����', TXML�������);
  RegisterChildNode('������', TXML�����������_����_������);
  RegisterChildNode('��������', TXML�����������_����_��������);
  RegisterChildNode('������������', TXML�������);
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

function TXML�����������_����.Get_������������: IXML�������;
begin
  Result := ChildNodes['������������'] as IXML�������;
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

function TXML�������.Get_��������: UnicodeString;
begin
  Result := AttributeNodes['��������'].Text;
end;

procedure TXML�������.Set_��������(Value: UnicodeString);
begin
  SetAttribute('��������', Value);
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

function TXML�����������_����_������.Get_��������: UnicodeString;
begin
  Result := AttributeNodes['��������'].Text;
end;

procedure TXML�����������_����_������.Set_��������(Value: UnicodeString);
begin
  SetAttribute('��������', Value);
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

{ TXML������� }

procedure TXML�������.AfterConstruction;
begin
  RegisterChildNode('���', TXML������);
  inherited;
end;

function TXML�������.Get_��������������: UnicodeString;
begin
  Result := AttributeNodes['��������������'].Text;
end;

procedure TXML�������.Set_��������������(Value: UnicodeString);
begin
  SetAttribute('��������������', Value);
end;

function TXML�������.Get_�����: UnicodeString;
begin
  Result := AttributeNodes['�����'].Text;
end;

procedure TXML�������.Set_�����(Value: UnicodeString);
begin
  SetAttribute('�����', Value);
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

{ TXML����_��������_��������_������List }

function TXML����_��������_��������_������List.Add: IXML����_��������_��������_������;
begin
  Result := AddItem(-1) as IXML����_��������_��������_������;
end;

function TXML����_��������_��������_������List.Insert(const Index: Integer): IXML����_��������_��������_������;
begin
  Result := AddItem(Index) as IXML����_��������_��������_������;
end;

function TXML����_��������_��������_������List.Get_Item(Index: Integer): IXML����_��������_��������_������;
begin
  Result := List[Index] as IXML����_��������_��������_������;
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

function TXML����_��������_��������_�����.Get_��������: UnicodeString;
begin
  Result := AttributeNodes['��������'].Text;
end;

procedure TXML����_��������_��������_�����.Set_��������(Value: UnicodeString);
begin
  SetAttribute('��������', Value);
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

procedure TXML����_��������_��������_��������1.AfterConstruction;
begin
  RegisterChildNode('�����������������', TXML����_��������_��������_��������1_�����������������);
  RegisterChildNode('��������', TXML�����������);
  RegisterChildNode('�������������', TXML������������);
  inherited;
end;

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

function TXML����_��������_��������_��������1.Get_�����������: UnicodeString;
begin
  Result := AttributeNodes['�����������'].Text;
end;

procedure TXML����_��������_��������_��������1.Set_�����������(Value: UnicodeString);
begin
  SetAttribute('�����������', Value);
end;

function TXML����_��������_��������_��������1.Get_�����������������: IXML����_��������_��������_��������1_�����������������;
begin
  Result := ChildNodes['�����������������'] as IXML����_��������_��������_��������1_�����������������;
end;

function TXML����_��������_��������_��������1.Get_��������: IXML�����������;
begin
  Result := ChildNodes['��������'] as IXML�����������;
end;

function TXML����_��������_��������_��������1.Get_�������������: IXML������������;
begin
  Result := ChildNodes['�������������'] as IXML������������;
end;

{ TXML����_��������_��������_��������1_����������������� }

function TXML����_��������_��������_��������1_�����������������.Get_�����������: UnicodeString;
begin
  Result := AttributeNodes['�����������'].Text;
end;

procedure TXML����_��������_��������_��������1_�����������������.Set_�����������(Value: UnicodeString);
begin
  SetAttribute('�����������', Value);
end;

function TXML����_��������_��������_��������1_�����������������.Get_������������: UnicodeString;
begin
  Result := AttributeNodes['������������'].Text;
end;

procedure TXML����_��������_��������_��������1_�����������������.Set_������������(Value: UnicodeString);
begin
  SetAttribute('������������', Value);
end;

function TXML����_��������_��������_��������1_�����������������.Get_�����������: UnicodeString;
begin
  Result := AttributeNodes['�����������'].Text;
end;

procedure TXML����_��������_��������_��������1_�����������������.Set_�����������(Value: UnicodeString);
begin
  SetAttribute('�����������', Value);
end;

function TXML����_��������_��������_��������1_�����������������.Get_����������������: UnicodeString;
begin
  Result := AttributeNodes['����������������'].Text;
end;

procedure TXML����_��������_��������_��������1_�����������������.Set_����������������(Value: UnicodeString);
begin
  SetAttribute('����������������', Value);
end;

function TXML����_��������_��������_��������1_�����������������.Get_�����������: UnicodeString;
begin
  Result := AttributeNodes['�����������'].Text;
end;

procedure TXML����_��������_��������_��������1_�����������������.Set_�����������(Value: UnicodeString);
begin
  SetAttribute('�����������', Value);
end;

function TXML����_��������_��������_��������1_�����������������.Get_�������������: UnicodeString;
begin
  Result := AttributeNodes['�������������'].Text;
end;

procedure TXML����_��������_��������_��������1_�����������������.Set_�������������(Value: UnicodeString);
begin
  SetAttribute('�������������', Value);
end;

function TXML����_��������_��������_��������1_�����������������.Get_��������������: UnicodeString;
begin
  Result := AttributeNodes['��������������'].Text;
end;

procedure TXML����_��������_��������_��������1_�����������������.Set_��������������(Value: UnicodeString);
begin
  SetAttribute('��������������', Value);
end;

{ TXML������������ }

function TXML������������.Get_�������: UnicodeString;
begin
  Result := AttributeNodes['�������'].Text;
end;

procedure TXML������������.Set_�������(Value: UnicodeString);
begin
  SetAttribute('�������', Value);
end;

function TXML������������.Get_������: UnicodeString;
begin
  Result := AttributeNodes['������'].Text;
end;

procedure TXML������������.Set_������(Value: UnicodeString);
begin
  SetAttribute('������', Value);
end;

function TXML������������.Get_�������: UnicodeString;
begin
  Result := AttributeNodes['�������'].Text;
end;

procedure TXML������������.Set_�������(Value: UnicodeString);
begin
  SetAttribute('�������', Value);
end;

function TXML������������.Get_��������: UnicodeString;
begin
  Result := AttributeNodes['��������'].Text;
end;

procedure TXML������������.Set_��������(Value: UnicodeString);
begin
  SetAttribute('��������', Value);
end;

function TXML������������.Get_��������: UnicodeString;
begin
  Result := AttributeNodes['��������'].Text;
end;

procedure TXML������������.Set_��������(Value: UnicodeString);
begin
  SetAttribute('��������', Value);
end;

{ TXML������������List }

function TXML������������List.Add: IXML������������;
begin
  Result := AddItem(-1) as IXML������������;
end;

function TXML������������List.Insert(const Index: Integer): IXML������������;
begin
  Result := AddItem(Index) as IXML������������;
end;

function TXML������������List.Get_Item(Index: Integer): IXML������������;
begin
  Result := List[Index] as IXML������������;
end;

{ TXML����_��������_��������_������������ }

function TXML����_��������_��������_������������.Get_�����������: UnicodeString;
begin
  Result := AttributeNodes['�����������'].Text;
end;

procedure TXML����_��������_��������_������������.Set_�����������(Value: UnicodeString);
begin
  SetAttribute('�����������', Value);
end;

function TXML����_��������_��������_������������.Get_����������: UnicodeString;
begin
  Result := AttributeNodes['����������'].Text;
end;

procedure TXML����_��������_��������_������������.Set_����������(Value: UnicodeString);
begin
  SetAttribute('����������', Value);
end;

function TXML����_��������_��������_������������.Get_�����������: UnicodeString;
begin
  Result := AttributeNodes['�����������'].Text;
end;

procedure TXML����_��������_��������_������������.Set_�����������(Value: UnicodeString);
begin
  SetAttribute('�����������', Value);
end;

{ TXML����_��������_��������_������������List }

function TXML����_��������_��������_������������List.Add: IXML����_��������_��������_������������;
begin
  Result := AddItem(-1) as IXML����_��������_��������_������������;
end;

function TXML����_��������_��������_������������List.Insert(const Index: Integer): IXML����_��������_��������_������������;
begin
  Result := AddItem(Index) as IXML����_��������_��������_������������;
end;

function TXML����_��������_��������_������������List.Get_Item(Index: Integer): IXML����_��������_��������_������������;
begin
  Result := List[Index] as IXML����_��������_��������_������������;
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
  RegisterChildNode('����������', TXML����_��������_����������_�������_����������);
  RegisterChildNode('���������2', TXML�����������);
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

function TXML����_��������_����������_�������.Get_�������_���: UnicodeString;
begin
  Result := AttributeNodes['�������_���'].Text;
end;

procedure TXML����_��������_����������_�������.Set_�������_���(Value: UnicodeString);
begin
  SetAttribute('�������_���', Value);
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

function TXML����_��������_����������_�������.Get_�������������: UnicodeString;
begin
  Result := AttributeNodes['�������������'].Text;
end;

procedure TXML����_��������_����������_�������.Set_�������������(Value: UnicodeString);
begin
  SetAttribute('�������������', Value);
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

function TXML����_��������_����������_�������.Get_����������: IXML����_��������_����������_�������_����������;
begin
  Result := ChildNodes['����������'] as IXML����_��������_����������_�������_����������;
end;

function TXML����_��������_����������_�������.Get_���������2: IXML�����������List;
begin
  Result := F���������2;
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

function TXML����_��������_����������_�������_����.Get_������������: UnicodeString;
begin
  Result := AttributeNodes['������������'].Text;
end;

procedure TXML����_��������_����������_�������_����.Set_������������(Value: UnicodeString);
begin
  SetAttribute('������������', Value);
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

procedure TXML����_��������_����������_�������_����������.AfterConstruction;
begin
  RegisterChildNode('�����������', TXML����_��������_����������_�������_����������_�����������);
  RegisterChildNode('���������������', TXML����_��������_����������_�������_����������_���������������);
  F����������� := CreateCollection(TXML����_��������_����������_�������_����������_�����������List, IXML����_��������_����������_�������_����������_�����������, '�����������') as IXML����_��������_����������_�������_����������_�����������List;
  F��������������� := CreateCollection(TXML����_��������_����������_�������_����������_���������������List, IXML����_��������_����������_�������_����������_���������������, '���������������') as IXML����_��������_����������_�������_����������_���������������List;
  inherited;
end;

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

function TXML����_��������_����������_�������_����������.Get_������: UnicodeString;
begin
  Result := AttributeNodes['������'].Text;
end;

procedure TXML����_��������_����������_�������_����������.Set_������(Value: UnicodeString);
begin
  SetAttribute('������', Value);
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

function TXML����_��������_����������_�������_����������.Get_�����������: IXML����_��������_����������_�������_����������_�����������List;
begin
  Result := F�����������;
end;

function TXML����_��������_����������_�������_����������.Get_���������������: IXML����_��������_����������_�������_����������_���������������List;
begin
  Result := F���������������;
end;

{ TXML����_��������_����������_�������_����������_����������� }

function TXML����_��������_����������_�������_����������_�����������.Get_�������������: UnicodeString;
begin
  Result := AttributeNodes['�������������'].Text;
end;

procedure TXML����_��������_����������_�������_����������_�����������.Set_�������������(Value: UnicodeString);
begin
  SetAttribute('�������������', Value);
end;

function TXML����_��������_����������_�������_����������_�����������.Get_������������: UnicodeString;
begin
  Result := AttributeNodes['������������'].Text;
end;

procedure TXML����_��������_����������_�������_����������_�����������.Set_������������(Value: UnicodeString);
begin
  SetAttribute('������������', Value);
end;

function TXML����_��������_����������_�������_����������_�����������.Get_����������������: UnicodeString;
begin
  Result := AttributeNodes['����������������'].Text;
end;

procedure TXML����_��������_����������_�������_����������_�����������.Set_����������������(Value: UnicodeString);
begin
  SetAttribute('����������������', Value);
end;

function TXML����_��������_����������_�������_����������_�����������.Get_�������������: UnicodeString;
begin
  Result := AttributeNodes['�������������'].Text;
end;

procedure TXML����_��������_����������_�������_����������_�����������.Set_�������������(Value: UnicodeString);
begin
  SetAttribute('�������������', Value);
end;

function TXML����_��������_����������_�������_����������_�����������.Get_����������: UnicodeString;
begin
  Result := AttributeNodes['����������'].Text;
end;

procedure TXML����_��������_����������_�������_����������_�����������.Set_����������(Value: UnicodeString);
begin
  SetAttribute('����������', Value);
end;

{ TXML����_��������_����������_�������_����������_�����������List }

function TXML����_��������_����������_�������_����������_�����������List.Add: IXML����_��������_����������_�������_����������_�����������;
begin
  Result := AddItem(-1) as IXML����_��������_����������_�������_����������_�����������;
end;

function TXML����_��������_����������_�������_����������_�����������List.Insert(const Index: Integer): IXML����_��������_����������_�������_����������_�����������;
begin
  Result := AddItem(Index) as IXML����_��������_����������_�������_����������_�����������;
end;

function TXML����_��������_����������_�������_����������_�����������List.Get_Item(Index: Integer): IXML����_��������_����������_�������_����������_�����������;
begin
  Result := List[Index] as IXML����_��������_����������_�������_����������_�����������;
end;

{ TXML����_��������_����������_�������_����������_��������������� }

procedure TXML����_��������_����������_�������_����������_���������������.AfterConstruction;
begin
  F��� := CreateCollection(TXML����_��������_����������_�������_����������_���������������_���List, IXMLNode, '���') as IXML����_��������_����������_�������_����������_���������������_���List;
  F������� := CreateCollection(TXML����_��������_����������_�������_����������_���������������_�������List, IXMLNode, '�������') as IXML����_��������_����������_�������_����������_���������������_�������List;
  inherited;
end;

function TXML����_��������_����������_�������_����������_���������������.Get_��������������: UnicodeString;
begin
  Result := AttributeNodes['��������������'].Text;
end;

procedure TXML����_��������_����������_�������_����������_���������������.Set_��������������(Value: UnicodeString);
begin
  SetAttribute('��������������', Value);
end;

function TXML����_��������_����������_�������_����������_���������������.Get_���: IXML����_��������_����������_�������_����������_���������������_���List;
begin
  Result := F���;
end;

function TXML����_��������_����������_�������_����������_���������������.Get_�������: IXML����_��������_����������_�������_����������_���������������_�������List;
begin
  Result := F�������;
end;

{ TXML����_��������_����������_�������_����������_���������������List }

function TXML����_��������_����������_�������_����������_���������������List.Add: IXML����_��������_����������_�������_����������_���������������;
begin
  Result := AddItem(-1) as IXML����_��������_����������_�������_����������_���������������;
end;

function TXML����_��������_����������_�������_����������_���������������List.Insert(const Index: Integer): IXML����_��������_����������_�������_����������_���������������;
begin
  Result := AddItem(Index) as IXML����_��������_����������_�������_����������_���������������;
end;

function TXML����_��������_����������_�������_����������_���������������List.Get_Item(Index: Integer): IXML����_��������_����������_�������_����������_���������������;
begin
  Result := List[Index] as IXML����_��������_����������_�������_����������_���������������;
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

function TXML����_��������_����������_��������.Get_������������������: UnicodeString;
begin
  Result := AttributeNodes['������������������'].Text;
end;

procedure TXML����_��������_����������_��������.Set_������������������(Value: UnicodeString);
begin
  SetAttribute('������������������', Value);
end;

function TXML����_��������_����������_��������.Get_�����������: IXML���������;
begin
  Result := ChildNodes['�����������'] as IXML���������;
end;

function TXML����_��������_����������_��������.Get_����������: UnicodeString;
begin
  Result := ChildNodes['����������'].Text;
end;

procedure TXML����_��������_����������_��������.Set_����������(Value: UnicodeString);
begin
  ChildNodes['����������'].NodeValue := Value;
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
  RegisterChildNode('������', TXML������������);
  RegisterChildNode('��������', TXML����_��������_���������_�����_��������);
  RegisterChildNode('��������', TXML����_��������_���������_�����_��������);
  RegisterChildNode('���������', TXML����_��������_���������_�����_���������);
  F������ := CreateCollection(TXML������������List, IXML������������, '������') as IXML������������List;
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

function TXML����_��������_���������_�����.Get_�������: UnicodeString;
begin
  Result := AttributeNodes['�������'].Text;
end;

procedure TXML����_��������_���������_�����.Set_�������(Value: UnicodeString);
begin
  SetAttribute('�������', Value);
end;

function TXML����_��������_���������_�����.Get_��������: UnicodeString;
begin
  Result := AttributeNodes['��������'].Text;
end;

procedure TXML����_��������_���������_�����.Set_��������(Value: UnicodeString);
begin
  SetAttribute('��������', Value);
end;

function TXML����_��������_���������_�����.Get_������: IXML������������List;
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
  RegisterChildNode('��', TXML�������);
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

function TXML����_��������_���������.Get_��: IXML�������;
begin
  Result := ChildNodes['��'] as IXML�������;
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

{ TXML����_��������_����������_�������_����������_���������������_�������List }

function TXML����_��������_����������_�������_����������_���������������_�������List.Add(const Value: UnicodeString): IXMLNode;
begin
  Result := AddItem(-1);
  Result.NodeValue := Value;
end;

function TXML����_��������_����������_�������_����������_���������������_�������List.Insert(const Index: Integer; const Value: UnicodeString): IXMLNode;
begin
  Result := AddItem(Index);
  Result.NodeValue := Value;
end;

function TXML����_��������_����������_�������_����������_���������������_�������List.Get_Item(Index: Integer): UnicodeString;
begin
  Result := List[Index].NodeValue;
end;

{ TXML����_��������_����������_�������_����������_���������������_���List }

function TXML����_��������_����������_�������_����������_���������������_���List.Add(const Value: UnicodeString): IXMLNode;
begin
  Result := AddItem(-1);
  Result.NodeValue := Value;
end;

function TXML����_��������_����������_�������_����������_���������������_���List.Insert(const Index: Integer; const Value: UnicodeString): IXMLNode;
begin
  Result := AddItem(Index);
  Result.NodeValue := Value;
end;

function TXML����_��������_����������_�������_����������_���������������_���List.Get_Item(Index: Integer): UnicodeString;
begin
  Result := List[Index].NodeValue;
end;

end.