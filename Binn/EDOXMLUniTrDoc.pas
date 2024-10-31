
{***********************************************************************}
{                                                                       }
{                           XML Data Binding                            }
{                                                                       }
{         Generated on: 05.06.2017 9:50:38                              }
{       Generated from: C:\Fracht\Docs\���\XSD_UPD\EDOXMLUniTrDoc.xsd   }
{   Settings stored in: C:\Fracht\Docs\���\XSD_UPD\EDOXMLUniTrDoc.xdb   }
{                                                                       }
{***********************************************************************}

unit EDOXMLUniTrDoc;

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
    ['{03341BE8-D523-4ADC-943B-75019D0C5FBA}']
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
    ['{7F212382-030E-4C7A-AE9E-24F0CA8BAB77}']
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
    ['{864CFC5F-570F-4382-8820-6A779BCDDA17}']
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
    ['{4F5DE994-845A-46FB-924E-4469B3645C3E}']
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
    ['{90635BE4-6669-4DB0-928B-FEBD9750DBE8}']
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
    ['{E6532EFB-429C-44EB-B4F4-022FF5B693EB}']
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
    ['{B567CC58-99D6-4D45-891E-E9E2E6CE6614}']
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
    ['{B0691B1F-8A46-4149-A2F1-034C1ED28414}']
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
    ['{E32B083B-DFFC-4D20-8815-F0EEC155ADDB}']
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
    ['{58A4AAFE-91E1-4637-9735-356A5350FAA6}']
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
    ['{157373EC-80A8-4BDE-9D56-58CFAE9CB203}']
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
    ['{53FD4DC5-6938-4696-A9FF-8FF886D22DEE}']
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
    ['{7EA42A62-5D20-4C9D-A5DF-FB1FDEF075E7}']
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
    ['{F9EFEF7E-5181-4523-B010-75E175D84841}']
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
    ['{76A33BF2-61AF-4612-91C8-BC60C5816BCF}']
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
    ['{E227BA4F-6D68-4767-A633-3C27C34628D7}']
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
    ['{CC30529F-5421-4BB8-8915-9B580A9E4329}']
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
    ['{3A0FFDFD-0BF0-42C5-8003-23343EB9E597}']
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
    ['{5127E300-0E47-4A27-BE75-2DB5CF864D36}']
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
    ['{87CDD35E-0B9C-4795-B8D5-6AAB9DC1D5CA}']
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
    ['{974E8CED-EE7A-472D-84BE-9FB90BCFA2CA}']
    { Methods & Properties }
    function Add: IXML����_��������_��������_�����;
    function Insert(const Index: Integer): IXML����_��������_��������_�����;

    function Get_Item(Index: Integer): IXML����_��������_��������_�����;
    property Items[Index: Integer]: IXML����_��������_��������_����� read Get_Item; default;
  end;

{ IXML����_��������_��������_��������1 }

  IXML����_��������_��������_��������1 = interface(IXMLNode)
    ['{46BA9F59-3B80-4D39-B461-771247CDAF5C}']
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
    ['{1EC4C127-27C0-4731-A7C3-DE577D1BD806}']
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
    ['{6A368468-7569-4AB1-AB92-077CFBC980F4}']
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
    ['{3BF5AC87-00FB-4380-9AE4-B2D3F93ABD23}']
    { Methods & Properties }
    function Add: IXML�����������;
    function Insert(const Index: Integer): IXML�����������;

    function Get_Item(Index: Integer): IXML�����������;
    property Items[Index: Integer]: IXML����������� read Get_Item; default;
  end;

{ IXML����_��������_���������� }

  IXML����_��������_���������� = interface(IXMLNode)
    ['{DC563E12-06A8-4ADC-8060-FEAA07CBBCB3}']
    { Property Accessors }
    function Get_�������: IXML����_��������_����������_�������List;
    function Get_��������: IXML����_��������_����������_��������;
    { Methods & Properties }
    property �������: IXML����_��������_����������_�������List read Get_�������;
    property ��������: IXML����_��������_����������_�������� read Get_��������;
  end;

{ IXML����_��������_����������_������� }

  IXML����_��������_����������_������� = interface(IXMLNode)
    ['{CDBECE91-B958-415A-8522-E9BABACAF5B5}']
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
    ['{BF680BFB-9E76-42AA-AD02-20D875635A5B}']
    { Methods & Properties }
    function Add: IXML����_��������_����������_�������;
    function Insert(const Index: Integer): IXML����_��������_����������_�������;

    function Get_Item(Index: Integer): IXML����_��������_����������_�������;
    property Items[Index: Integer]: IXML����_��������_����������_������� read Get_Item; default;
  end;

{ IXML����������� }

  IXML����������� = interface(IXMLNode)
    ['{5B6A564E-BD4B-4C4F-A6E6-35F64D3F8489}']
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
    ['{4167595E-4EC3-48EC-926C-A1579873D4A3}']
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
    ['{46A6DEF1-4D34-4D43-94FF-302BA66C0884}']
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
    ['{8BB99A49-8971-4E35-866C-A10D5B65275A}']
    { Methods & Properties }
    function Add: IXML����_��������_����������_�������_����;
    function Insert(const Index: Integer): IXML����_��������_����������_�������_����;

    function Get_Item(Index: Integer): IXML����_��������_����������_�������_����;
    property Items[Index: Integer]: IXML����_��������_����������_�������_���� read Get_Item; default;
  end;

{ IXML����_��������_����������_�������_���������� }

  IXML����_��������_����������_�������_���������� = interface(IXMLNode)
    ['{24E5E72C-0B50-46D9-8AE1-3364886FC5D0}']
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
    ['{34B52D2C-5E68-4150-AC2E-23D58852E560}']
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
    ['{03D943FC-A956-401A-A88D-FB4AA94C65FE}']
    { Property Accessors }
    function Get_�����: IXML����_��������_���������_�����;
    function Get_���������3: IXML����_��������_���������_���������3;
    { Methods & Properties }
    property �����: IXML����_��������_���������_����� read Get_�����;
    property ���������3: IXML����_��������_���������_���������3 read Get_���������3;
  end;

{ IXML����_��������_���������_����� }

  IXML����_��������_���������_����� = interface(IXMLNode)
    ['{552EF836-B589-450A-B539-BD64DC0311AE}']
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
    ['{22858E61-6107-466A-BE70-D16CF092652F}']
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
    ['{6EE682FE-6165-48B1-9955-D605BF36AC0A}']
    { Methods & Properties }
    function Add: IXML����_��������_���������_�����_������;
    function Insert(const Index: Integer): IXML����_��������_���������_�����_������;

    function Get_Item(Index: Integer): IXML����_��������_���������_�����_������;
    property Items[Index: Integer]: IXML����_��������_���������_�����_������ read Get_Item; default;
  end;

{ IXML����_��������_���������_�����_�������� }

  IXML����_��������_���������_�����_�������� = interface(IXMLNode)
    ['{1669C1DD-12BF-40E3-8C1C-3FBB1C06F634}']
    { Property Accessors }
    function Get_����������: IXML����_��������_���������_�����_��������_����������;
    function Get_������: IXML����_��������_���������_�����_��������_������;
    { Methods & Properties }
    property ����������: IXML����_��������_���������_�����_��������_���������� read Get_����������;
    property ������: IXML����_��������_���������_�����_��������_������ read Get_������;
  end;

{ IXML����_��������_���������_�����_��������_���������� }

  IXML����_��������_���������_�����_��������_���������� = interface(IXMLNode)
    ['{E01320B3-0E8A-40B1-8229-259BDCE051A0}']
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
    ['{8D4BA2E2-2C35-45D6-8368-A2CF8695E507}']
    { Property Accessors }
    function Get_����������: IXML����_��������_���������_�����_��������_������_����������;
    function Get_�����: IXML����_��������_���������_�����_��������_������_�����;
    { Methods & Properties }
    property ����������: IXML����_��������_���������_�����_��������_������_���������� read Get_����������;
    property �����: IXML����_��������_���������_�����_��������_������_����� read Get_�����;
  end;

{ IXML����_��������_���������_�����_��������_������_���������� }

  IXML����_��������_���������_�����_��������_������_���������� = interface(IXMLNode)
    ['{A707B0DF-CE6C-425F-92B3-61A91A97A12B}']
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
    ['{9CC9C008-145F-4301-9C1D-2D835ECA0795}']
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
    ['{3BC8086A-E3FA-4320-9CAC-21518536BD2D}']
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
    ['{970C7685-9D8F-4AE7-A1B0-D0180DBCCD24}']
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
    ['{02199B14-80B0-4E0D-99B9-DD49AFCC8C7A}']
    { Methods & Properties }
    function Add: IXML����_��������_���������_�����_��������_��������;
    function Insert(const Index: Integer): IXML����_��������_���������_�����_��������_��������;

    function Get_Item(Index: Integer): IXML����_��������_���������_�����_��������_��������;
    property Items[Index: Integer]: IXML����_��������_���������_�����_��������_�������� read Get_Item; default;
  end;

{ IXML����_��������_���������_�����_��������� }

  IXML����_��������_���������_�����_��������� = interface(IXMLNode)
    ['{847BD64B-BBF0-4903-B38E-7148D24CB716}']
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
    ['{15CCCF58-6C87-4F7A-BC7D-CB4AF9C487C4}']
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
    ['{5D8A6CE7-EF7B-4A8E-9899-F312124CE859}']
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
    ['{B699BB00-31A3-4680-AE16-A36A1B1C5814}']
    { Methods & Properties }
    function Add: IXML����_��������_���������;
    function Insert(const Index: Integer): IXML����_��������_���������;

    function Get_Item(Index: Integer): IXML����_��������_���������;
    property Items[Index: Integer]: IXML����_��������_��������� read Get_Item; default;
  end;

{ IXML����_��������_���������_�� }

  IXML����_��������_���������_�� = interface(IXMLNode)
    ['{389668D6-9954-432B-AA5C-15EF472E3F4C}']
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
    ['{28928840-060A-4956-8C9F-97F2095E9183}']
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