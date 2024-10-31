
{***********************************************************************}
{                                                                       }
{                           XML Data Binding                            }
{                                                                       }
{         Generated on: 05.06.2017 9:50:38                              }
{       Generated from: C:\Fracht\Docs\ЭДО\XSD_UPD\EDOXMLUniTrDoc.xsd   }
{   Settings stored in: C:\Fracht\Docs\ЭДО\XSD_UPD\EDOXMLUniTrDoc.xdb   }
{                                                                       }
{***********************************************************************}

unit EDOXMLUniTrDoc;

interface

uses xmldom, XMLDoc, XMLIntf;

type

{ Forward Decls }

  IXMLФайл = interface;
  IXMLФайл_СвУчДокОбор = interface;
  IXMLФайл_СвУчДокОбор_СвОЭДОтпр = interface;
  IXMLФайл_Документ = interface;
  IXMLФайл_Документ_СвСчФакт = interface;
  IXMLФайл_Документ_СвСчФакт_ИспрСчФ = interface;
  IXMLУчастникТип = interface;
  IXMLУчастникТип_ИдСв = interface;
  IXMLСвИПТип = interface;
  IXMLФИОТип = interface;
  IXMLУчастникТип_ИдСв_СвЮЛУч = interface;
  IXMLУчастникТип_ИдСв_СвИнНеУч = interface;
  IXMLАдресТип = interface;
  IXMLАдрРФТип = interface;
  IXMLАдрИнфТип = interface;
  IXMLКонтактТип = interface;
  IXMLУчастникТип_БанкРекв = interface;
  IXMLУчастникТип_БанкРекв_СвБанк = interface;
  IXMLФайл_Документ_СвСчФакт_ГрузОт = interface;
  IXMLФайл_Документ_СвСчФакт_СвПРД = interface;
  IXMLФайл_Документ_СвСчФакт_СвПРДList = interface;
  IXMLФайл_Документ_СвСчФакт_ДопСвФХЖ1 = interface;
  IXMLФайл_Документ_СвСчФакт_ИнфПолФХЖ1 = interface;
  IXMLТекстИнфТип = interface;
  IXMLТекстИнфТипList = interface;
  IXMLФайл_Документ_ТаблСчФакт = interface;
  IXMLФайл_Документ_ТаблСчФакт_СведТов = interface;
  IXMLФайл_Документ_ТаблСчФакт_СведТовList = interface;
  IXMLСумАкцизТип = interface;
  IXMLСумНДСТип = interface;
  IXMLФайл_Документ_ТаблСчФакт_СведТов_СвТД = interface;
  IXMLФайл_Документ_ТаблСчФакт_СведТов_СвТДList = interface;
  IXMLФайл_Документ_ТаблСчФакт_СведТов_ДопСведТов = interface;
  IXMLФайл_Документ_ТаблСчФакт_ВсегоОпл = interface;
  IXMLФайл_Документ_СвПродПер = interface;
  IXMLФайл_Документ_СвПродПер_СвПер = interface;
  IXMLФайл_Документ_СвПродПер_СвПер_ОснПер = interface;
  IXMLФайл_Документ_СвПродПер_СвПер_ОснПерList = interface;
  IXMLФайл_Документ_СвПродПер_СвПер_СвЛицПер = interface;
  IXMLФайл_Документ_СвПродПер_СвПер_СвЛицПер_РабОргПрод = interface;
  IXMLФайл_Документ_СвПродПер_СвПер_СвЛицПер_ИнЛицо = interface;
  IXMLФайл_Документ_СвПродПер_СвПер_СвЛицПер_ИнЛицо_ПредОргПер = interface;
  IXMLФайл_Документ_СвПродПер_СвПер_СвЛицПер_ИнЛицо_ФЛПер = interface;
  IXMLФайл_Документ_СвПродПер_СвПер_ТранГруз = interface;
  IXMLФайл_Документ_СвПродПер_СвПер_ТранГруз_ТранНакл = interface;
  IXMLФайл_Документ_СвПродПер_СвПер_ТранГруз_ТранНаклList = interface;
  IXMLФайл_Документ_СвПродПер_СвПер_СвПерВещи = interface;
  IXMLФайл_Документ_СвПродПер_ИнфПолФХЖ3 = interface;
  IXMLФайл_Документ_Подписант = interface;
  IXMLФайл_Документ_ПодписантList = interface;
  IXMLФайл_Документ_Подписант_ФЛ = interface;
  IXMLФайл_Документ_Подписант_ЮЛ = interface;

{ IXMLФайл }

  IXMLФайл = interface(IXMLNode)
    ['{03341BE8-D523-4ADC-943B-75019D0C5FBA}']
    { Property Accessors }
    function Get_ИдФайл: UnicodeString;
    function Get_ВерсФорм: UnicodeString;
    function Get_ВерсПрог: UnicodeString;
    function Get_СвУчДокОбор: IXMLФайл_СвУчДокОбор;
    function Get_Документ: IXMLФайл_Документ;
    procedure Set_ИдФайл(Value: UnicodeString);
    procedure Set_ВерсФорм(Value: UnicodeString);
    procedure Set_ВерсПрог(Value: UnicodeString);
    { Methods & Properties }
    property ИдФайл: UnicodeString read Get_ИдФайл write Set_ИдФайл;
    property ВерсФорм: UnicodeString read Get_ВерсФорм write Set_ВерсФорм;
    property ВерсПрог: UnicodeString read Get_ВерсПрог write Set_ВерсПрог;
    property СвУчДокОбор: IXMLФайл_СвУчДокОбор read Get_СвУчДокОбор;
    property Документ: IXMLФайл_Документ read Get_Документ;
  end;

{ IXMLФайл_СвУчДокОбор }

  IXMLФайл_СвУчДокОбор = interface(IXMLNode)
    ['{7F212382-030E-4C7A-AE9E-24F0CA8BAB77}']
    { Property Accessors }
    function Get_ИдОтпр: UnicodeString;
    function Get_ИдПол: UnicodeString;
    function Get_СвОЭДОтпр: IXMLФайл_СвУчДокОбор_СвОЭДОтпр;
    procedure Set_ИдОтпр(Value: UnicodeString);
    procedure Set_ИдПол(Value: UnicodeString);
    { Methods & Properties }
    property ИдОтпр: UnicodeString read Get_ИдОтпр write Set_ИдОтпр;
    property ИдПол: UnicodeString read Get_ИдПол write Set_ИдПол;
    property СвОЭДОтпр: IXMLФайл_СвУчДокОбор_СвОЭДОтпр read Get_СвОЭДОтпр;
  end;

{ IXMLФайл_СвУчДокОбор_СвОЭДОтпр }

  IXMLФайл_СвУчДокОбор_СвОЭДОтпр = interface(IXMLNode)
    ['{864CFC5F-570F-4382-8820-6A779BCDDA17}']
    { Property Accessors }
    function Get_НаимОрг: UnicodeString;
    function Get_ИННЮЛ: UnicodeString;
    function Get_ИдЭДО: UnicodeString;
    procedure Set_НаимОрг(Value: UnicodeString);
    procedure Set_ИННЮЛ(Value: UnicodeString);
    procedure Set_ИдЭДО(Value: UnicodeString);
    { Methods & Properties }
    property НаимОрг: UnicodeString read Get_НаимОрг write Set_НаимОрг;
    property ИННЮЛ: UnicodeString read Get_ИННЮЛ write Set_ИННЮЛ;
    property ИдЭДО: UnicodeString read Get_ИдЭДО write Set_ИдЭДО;
  end;

{ IXMLФайл_Документ }

  IXMLФайл_Документ = interface(IXMLNode)
    ['{4F5DE994-845A-46FB-924E-4469B3645C3E}']
    { Property Accessors }
    function Get_КНД: UnicodeString;
    function Get_Функция: UnicodeString;
    function Get_ПоФактХЖ: UnicodeString;
    function Get_НаимДокОпр: UnicodeString;
    function Get_ДатаИнфПр: UnicodeString;
    function Get_ВремИнфПр: UnicodeString;
    function Get_НаимЭконСубСост: UnicodeString;
    function Get_ОснДоверОргСост: UnicodeString;
    function Get_СвСчФакт: IXMLФайл_Документ_СвСчФакт;
    function Get_ТаблСчФакт: IXMLФайл_Документ_ТаблСчФакт;
    function Get_СвПродПер: IXMLФайл_Документ_СвПродПер;
    function Get_Подписант: IXMLФайл_Документ_ПодписантList;
    procedure Set_КНД(Value: UnicodeString);
    procedure Set_Функция(Value: UnicodeString);
    procedure Set_ПоФактХЖ(Value: UnicodeString);
    procedure Set_НаимДокОпр(Value: UnicodeString);
    procedure Set_ДатаИнфПр(Value: UnicodeString);
    procedure Set_ВремИнфПр(Value: UnicodeString);
    procedure Set_НаимЭконСубСост(Value: UnicodeString);
    procedure Set_ОснДоверОргСост(Value: UnicodeString);
    { Methods & Properties }
    property КНД: UnicodeString read Get_КНД write Set_КНД;
    property Функция: UnicodeString read Get_Функция write Set_Функция;
    property ПоФактХЖ: UnicodeString read Get_ПоФактХЖ write Set_ПоФактХЖ;
    property НаимДокОпр: UnicodeString read Get_НаимДокОпр write Set_НаимДокОпр;
    property ДатаИнфПр: UnicodeString read Get_ДатаИнфПр write Set_ДатаИнфПр;
    property ВремИнфПр: UnicodeString read Get_ВремИнфПр write Set_ВремИнфПр;
    property НаимЭконСубСост: UnicodeString read Get_НаимЭконСубСост write Set_НаимЭконСубСост;
    property ОснДоверОргСост: UnicodeString read Get_ОснДоверОргСост write Set_ОснДоверОргСост;
    property СвСчФакт: IXMLФайл_Документ_СвСчФакт read Get_СвСчФакт;
    property ТаблСчФакт: IXMLФайл_Документ_ТаблСчФакт read Get_ТаблСчФакт;
    property СвПродПер: IXMLФайл_Документ_СвПродПер read Get_СвПродПер;
    property Подписант: IXMLФайл_Документ_ПодписантList read Get_Подписант;
  end;

{ IXMLФайл_Документ_СвСчФакт }

  IXMLФайл_Документ_СвСчФакт = interface(IXMLNode)
    ['{90635BE4-6669-4DB0-928B-FEBD9750DBE8}']
    { Property Accessors }
    function Get_НомерСчФ: UnicodeString;
    function Get_ДатаСчФ: UnicodeString;
    function Get_КодОКВ: UnicodeString;
    function Get_ИспрСчФ: IXMLФайл_Документ_СвСчФакт_ИспрСчФ;
    function Get_СвПрод: IXMLУчастникТип;
    function Get_ГрузОт: IXMLФайл_Документ_СвСчФакт_ГрузОт;
    function Get_ГрузПолуч: IXMLУчастникТип;
    function Get_СвПРД: IXMLФайл_Документ_СвСчФакт_СвПРДList;
    function Get_СвПокуп: IXMLУчастникТип;
    function Get_ДопСвФХЖ1: IXMLФайл_Документ_СвСчФакт_ДопСвФХЖ1;
    function Get_ИнфПолФХЖ1: IXMLФайл_Документ_СвСчФакт_ИнфПолФХЖ1;
    procedure Set_НомерСчФ(Value: UnicodeString);
    procedure Set_ДатаСчФ(Value: UnicodeString);
    procedure Set_КодОКВ(Value: UnicodeString);
    { Methods & Properties }
    property НомерСчФ: UnicodeString read Get_НомерСчФ write Set_НомерСчФ;
    property ДатаСчФ: UnicodeString read Get_ДатаСчФ write Set_ДатаСчФ;
    property КодОКВ: UnicodeString read Get_КодОКВ write Set_КодОКВ;
    property ИспрСчФ: IXMLФайл_Документ_СвСчФакт_ИспрСчФ read Get_ИспрСчФ;
    property СвПрод: IXMLУчастникТип read Get_СвПрод;
    property ГрузОт: IXMLФайл_Документ_СвСчФакт_ГрузОт read Get_ГрузОт;
    property ГрузПолуч: IXMLУчастникТип read Get_ГрузПолуч;
    property СвПРД: IXMLФайл_Документ_СвСчФакт_СвПРДList read Get_СвПРД;
    property СвПокуп: IXMLУчастникТип read Get_СвПокуп;
    property ДопСвФХЖ1: IXMLФайл_Документ_СвСчФакт_ДопСвФХЖ1 read Get_ДопСвФХЖ1;
    property ИнфПолФХЖ1: IXMLФайл_Документ_СвСчФакт_ИнфПолФХЖ1 read Get_ИнфПолФХЖ1;
  end;

{ IXMLФайл_Документ_СвСчФакт_ИспрСчФ }

  IXMLФайл_Документ_СвСчФакт_ИспрСчФ = interface(IXMLNode)
    ['{E6532EFB-429C-44EB-B4F4-022FF5B693EB}']
    { Property Accessors }
    function Get_НомИспрСчФ: Integer;
    function Get_ДатаИспрСчФ: UnicodeString;
    procedure Set_НомИспрСчФ(Value: Integer);
    procedure Set_ДатаИспрСчФ(Value: UnicodeString);
    { Methods & Properties }
    property НомИспрСчФ: Integer read Get_НомИспрСчФ write Set_НомИспрСчФ;
    property ДатаИспрСчФ: UnicodeString read Get_ДатаИспрСчФ write Set_ДатаИспрСчФ;
  end;

{ IXMLУчастникТип }

  IXMLУчастникТип = interface(IXMLNode)
    ['{B567CC58-99D6-4D45-891E-E9E2E6CE6614}']
    { Property Accessors }
    function Get_ОКПО: UnicodeString;
    function Get_СтруктПодр: UnicodeString;
    function Get_ИнфДляУчаст: UnicodeString;
    function Get_ИдСв: IXMLУчастникТип_ИдСв;
    function Get_Адрес: IXMLАдресТип;
    function Get_Контакт: IXMLКонтактТип;
    function Get_БанкРекв: IXMLУчастникТип_БанкРекв;
    procedure Set_ОКПО(Value: UnicodeString);
    procedure Set_СтруктПодр(Value: UnicodeString);
    procedure Set_ИнфДляУчаст(Value: UnicodeString);
    { Methods & Properties }
    property ОКПО: UnicodeString read Get_ОКПО write Set_ОКПО;
    property СтруктПодр: UnicodeString read Get_СтруктПодр write Set_СтруктПодр;
    property ИнфДляУчаст: UnicodeString read Get_ИнфДляУчаст write Set_ИнфДляУчаст;
    property ИдСв: IXMLУчастникТип_ИдСв read Get_ИдСв;
    property Адрес: IXMLАдресТип read Get_Адрес;
    property Контакт: IXMLКонтактТип read Get_Контакт;
    property БанкРекв: IXMLУчастникТип_БанкРекв read Get_БанкРекв;
  end;

{ IXMLУчастникТип_ИдСв }

  IXMLУчастникТип_ИдСв = interface(IXMLNode)
    ['{B0691B1F-8A46-4149-A2F1-034C1ED28414}']
    { Property Accessors }
    function Get_СвИП: IXMLСвИПТип;
    function Get_СвЮЛУч: IXMLУчастникТип_ИдСв_СвЮЛУч;
    function Get_СвИнНеУч: IXMLУчастникТип_ИдСв_СвИнНеУч;
    { Methods & Properties }
    property СвИП: IXMLСвИПТип read Get_СвИП;
    property СвЮЛУч: IXMLУчастникТип_ИдСв_СвЮЛУч read Get_СвЮЛУч;
    property СвИнНеУч: IXMLУчастникТип_ИдСв_СвИнНеУч read Get_СвИнНеУч;
  end;

{ IXMLСвИПТип }

  IXMLСвИПТип = interface(IXMLNode)
    ['{E32B083B-DFFC-4D20-8815-F0EEC155ADDB}']
    { Property Accessors }
    function Get_ИННФЛ: UnicodeString;
    function Get_СвГосРегИП: UnicodeString;
    function Get_ИныеСвед: UnicodeString;
    function Get_ФИО: IXMLФИОТип;
    procedure Set_ИННФЛ(Value: UnicodeString);
    procedure Set_СвГосРегИП(Value: UnicodeString);
    procedure Set_ИныеСвед(Value: UnicodeString);
    { Methods & Properties }
    property ИННФЛ: UnicodeString read Get_ИННФЛ write Set_ИННФЛ;
    property СвГосРегИП: UnicodeString read Get_СвГосРегИП write Set_СвГосРегИП;
    property ИныеСвед: UnicodeString read Get_ИныеСвед write Set_ИныеСвед;
    property ФИО: IXMLФИОТип read Get_ФИО;
  end;

{ IXMLФИОТип }

  IXMLФИОТип = interface(IXMLNode)
    ['{58A4AAFE-91E1-4637-9735-356A5350FAA6}']
    { Property Accessors }
    function Get_Фамилия: UnicodeString;
    function Get_Имя: UnicodeString;
    function Get_Отчество: UnicodeString;
    procedure Set_Фамилия(Value: UnicodeString);
    procedure Set_Имя(Value: UnicodeString);
    procedure Set_Отчество(Value: UnicodeString);
    { Methods & Properties }
    property Фамилия: UnicodeString read Get_Фамилия write Set_Фамилия;
    property Имя: UnicodeString read Get_Имя write Set_Имя;
    property Отчество: UnicodeString read Get_Отчество write Set_Отчество;
  end;

{ IXMLУчастникТип_ИдСв_СвЮЛУч }

  IXMLУчастникТип_ИдСв_СвЮЛУч = interface(IXMLNode)
    ['{157373EC-80A8-4BDE-9D56-58CFAE9CB203}']
    { Property Accessors }
    function Get_НаимОрг: UnicodeString;
    function Get_ИННЮЛ: UnicodeString;
    function Get_КПП: UnicodeString;
    procedure Set_НаимОрг(Value: UnicodeString);
    procedure Set_ИННЮЛ(Value: UnicodeString);
    procedure Set_КПП(Value: UnicodeString);
    { Methods & Properties }
    property НаимОрг: UnicodeString read Get_НаимОрг write Set_НаимОрг;
    property ИННЮЛ: UnicodeString read Get_ИННЮЛ write Set_ИННЮЛ;
    property КПП: UnicodeString read Get_КПП write Set_КПП;
  end;

{ IXMLУчастникТип_ИдСв_СвИнНеУч }

  IXMLУчастникТип_ИдСв_СвИнНеУч = interface(IXMLNode)
    ['{53FD4DC5-6938-4696-A9FF-8FF886D22DEE}']
    { Property Accessors }
    function Get_НаимОрг: UnicodeString;
    function Get_ИныеСвед: UnicodeString;
    procedure Set_НаимОрг(Value: UnicodeString);
    procedure Set_ИныеСвед(Value: UnicodeString);
    { Methods & Properties }
    property НаимОрг: UnicodeString read Get_НаимОрг write Set_НаимОрг;
    property ИныеСвед: UnicodeString read Get_ИныеСвед write Set_ИныеСвед;
  end;

{ IXMLАдресТип }

  IXMLАдресТип = interface(IXMLNode)
    ['{7EA42A62-5D20-4C9D-A5DF-FB1FDEF075E7}']
    { Property Accessors }
    function Get_АдрРФ: IXMLАдрРФТип;
    function Get_АдрИнф: IXMLАдрИнфТип;
    function Get_КодГАР: UnicodeString;
    procedure Set_КодГАР(Value: UnicodeString);
    { Methods & Properties }
    property АдрРФ: IXMLАдрРФТип read Get_АдрРФ;
    property АдрИнф: IXMLАдрИнфТип read Get_АдрИнф;
    property КодГАР: UnicodeString read Get_КодГАР write Set_КодГАР;
  end;

{ IXMLАдрРФТип }

  IXMLАдрРФТип = interface(IXMLNode)
    ['{F9EFEF7E-5181-4523-B010-75E175D84841}']
    { Property Accessors }
    function Get_Индекс: UnicodeString;
    function Get_КодРегион: UnicodeString;
    function Get_Район: UnicodeString;
    function Get_Город: UnicodeString;
    function Get_НаселПункт: UnicodeString;
    function Get_Улица: UnicodeString;
    function Get_Дом: UnicodeString;
    function Get_Корпус: UnicodeString;
    function Get_Кварт: UnicodeString;
    procedure Set_Индекс(Value: UnicodeString);
    procedure Set_КодРегион(Value: UnicodeString);
    procedure Set_Район(Value: UnicodeString);
    procedure Set_Город(Value: UnicodeString);
    procedure Set_НаселПункт(Value: UnicodeString);
    procedure Set_Улица(Value: UnicodeString);
    procedure Set_Дом(Value: UnicodeString);
    procedure Set_Корпус(Value: UnicodeString);
    procedure Set_Кварт(Value: UnicodeString);
    { Methods & Properties }
    property Индекс: UnicodeString read Get_Индекс write Set_Индекс;
    property КодРегион: UnicodeString read Get_КодРегион write Set_КодРегион;
    property Район: UnicodeString read Get_Район write Set_Район;
    property Город: UnicodeString read Get_Город write Set_Город;
    property НаселПункт: UnicodeString read Get_НаселПункт write Set_НаселПункт;
    property Улица: UnicodeString read Get_Улица write Set_Улица;
    property Дом: UnicodeString read Get_Дом write Set_Дом;
    property Корпус: UnicodeString read Get_Корпус write Set_Корпус;
    property Кварт: UnicodeString read Get_Кварт write Set_Кварт;
  end;

{ IXMLАдрИнфТип }

  IXMLАдрИнфТип = interface(IXMLNode)
    ['{76A33BF2-61AF-4612-91C8-BC60C5816BCF}']
    { Property Accessors }
    function Get_КодСтр: UnicodeString;
    function Get_АдрТекст: UnicodeString;
    procedure Set_КодСтр(Value: UnicodeString);
    procedure Set_АдрТекст(Value: UnicodeString);
    { Methods & Properties }
    property КодСтр: UnicodeString read Get_КодСтр write Set_КодСтр;
    property АдрТекст: UnicodeString read Get_АдрТекст write Set_АдрТекст;
  end;

{ IXMLКонтактТип }

  IXMLКонтактТип = interface(IXMLNode)
    ['{E227BA4F-6D68-4767-A633-3C27C34628D7}']
    { Property Accessors }
    function Get_Тлф: UnicodeString;
    function Get_ЭлПочта: UnicodeString;
    procedure Set_Тлф(Value: UnicodeString);
    procedure Set_ЭлПочта(Value: UnicodeString);
    { Methods & Properties }
    property Тлф: UnicodeString read Get_Тлф write Set_Тлф;
    property ЭлПочта: UnicodeString read Get_ЭлПочта write Set_ЭлПочта;
  end;

{ IXMLУчастникТип_БанкРекв }

  IXMLУчастникТип_БанкРекв = interface(IXMLNode)
    ['{CC30529F-5421-4BB8-8915-9B580A9E4329}']
    { Property Accessors }
    function Get_НомерСчета: UnicodeString;
    function Get_СвБанк: IXMLУчастникТип_БанкРекв_СвБанк;
    procedure Set_НомерСчета(Value: UnicodeString);
    { Methods & Properties }
    property НомерСчета: UnicodeString read Get_НомерСчета write Set_НомерСчета;
    property СвБанк: IXMLУчастникТип_БанкРекв_СвБанк read Get_СвБанк;
  end;

{ IXMLУчастникТип_БанкРекв_СвБанк }

  IXMLУчастникТип_БанкРекв_СвБанк = interface(IXMLNode)
    ['{3A0FFDFD-0BF0-42C5-8003-23343EB9E597}']
    { Property Accessors }
    function Get_НаимБанк: UnicodeString;
    function Get_БИК: UnicodeString;
    function Get_КорСчет: UnicodeString;
    procedure Set_НаимБанк(Value: UnicodeString);
    procedure Set_БИК(Value: UnicodeString);
    procedure Set_КорСчет(Value: UnicodeString);
    { Methods & Properties }
    property НаимБанк: UnicodeString read Get_НаимБанк write Set_НаимБанк;
    property БИК: UnicodeString read Get_БИК write Set_БИК;
    property КорСчет: UnicodeString read Get_КорСчет write Set_КорСчет;
  end;

{ IXMLФайл_Документ_СвСчФакт_ГрузОт }

  IXMLФайл_Документ_СвСчФакт_ГрузОт = interface(IXMLNode)
    ['{5127E300-0E47-4A27-BE75-2DB5CF864D36}']
    { Property Accessors }
    function Get_ГрузОтпр: IXMLУчастникТип;
    function Get_ОнЖе: UnicodeString;
    procedure Set_ОнЖе(Value: UnicodeString);
    { Methods & Properties }
    property ГрузОтпр: IXMLУчастникТип read Get_ГрузОтпр;
    property ОнЖе: UnicodeString read Get_ОнЖе write Set_ОнЖе;
  end;

{ IXMLФайл_Документ_СвСчФакт_СвПРД }

  IXMLФайл_Документ_СвСчФакт_СвПРД = interface(IXMLNode)
    ['{87CDD35E-0B9C-4795-B8D5-6AAB9DC1D5CA}']
    { Property Accessors }
    function Get_НомерПРД: UnicodeString;
    function Get_ДатаПРД: UnicodeString;
    procedure Set_НомерПРД(Value: UnicodeString);
    procedure Set_ДатаПРД(Value: UnicodeString);
    { Methods & Properties }
    property НомерПРД: UnicodeString read Get_НомерПРД write Set_НомерПРД;
    property ДатаПРД: UnicodeString read Get_ДатаПРД write Set_ДатаПРД;
  end;

{ IXMLФайл_Документ_СвСчФакт_СвПРДList }

  IXMLФайл_Документ_СвСчФакт_СвПРДList = interface(IXMLNodeCollection)
    ['{974E8CED-EE7A-472D-84BE-9FB90BCFA2CA}']
    { Methods & Properties }
    function Add: IXMLФайл_Документ_СвСчФакт_СвПРД;
    function Insert(const Index: Integer): IXMLФайл_Документ_СвСчФакт_СвПРД;

    function Get_Item(Index: Integer): IXMLФайл_Документ_СвСчФакт_СвПРД;
    property Items[Index: Integer]: IXMLФайл_Документ_СвСчФакт_СвПРД read Get_Item; default;
  end;

{ IXMLФайл_Документ_СвСчФакт_ДопСвФХЖ1 }

  IXMLФайл_Документ_СвСчФакт_ДопСвФХЖ1 = interface(IXMLNode)
    ['{46BA9F59-3B80-4D39-B461-771247CDAF5C}']
    { Property Accessors }
    function Get_ИдГосКон: UnicodeString;
    function Get_НаимОКВ: UnicodeString;
    function Get_КурсВал: UnicodeString;
    procedure Set_ИдГосКон(Value: UnicodeString);
    procedure Set_НаимОКВ(Value: UnicodeString);
    procedure Set_КурсВал(Value: UnicodeString);
    { Methods & Properties }
    property ИдГосКон: UnicodeString read Get_ИдГосКон write Set_ИдГосКон;
    property НаимОКВ: UnicodeString read Get_НаимОКВ write Set_НаимОКВ;
    property КурсВал: UnicodeString read Get_КурсВал write Set_КурсВал;
  end;

{ IXMLФайл_Документ_СвСчФакт_ИнфПолФХЖ1 }

  IXMLФайл_Документ_СвСчФакт_ИнфПолФХЖ1 = interface(IXMLNodeCollection)
    ['{1EC4C127-27C0-4731-A7C3-DE577D1BD806}']
    { Property Accessors }
    function Get_ИдФайлИнфПол: UnicodeString;
    function Get_ТекстИнф(Index: Integer): IXMLТекстИнфТип;
    procedure Set_ИдФайлИнфПол(Value: UnicodeString);
    { Methods & Properties }
    function Add: IXMLТекстИнфТип;
    function Insert(const Index: Integer): IXMLТекстИнфТип;
    property ИдФайлИнфПол: UnicodeString read Get_ИдФайлИнфПол write Set_ИдФайлИнфПол;
    property ТекстИнф[Index: Integer]: IXMLТекстИнфТип read Get_ТекстИнф; default;
  end;

{ IXMLТекстИнфТип }

  IXMLТекстИнфТип = interface(IXMLNode)
    ['{6A368468-7569-4AB1-AB92-077CFBC980F4}']
    { Property Accessors }
    function Get_Идентиф: UnicodeString;
    function Get_Значен: UnicodeString;
    procedure Set_Идентиф(Value: UnicodeString);
    procedure Set_Значен(Value: UnicodeString);
    { Methods & Properties }
    property Идентиф: UnicodeString read Get_Идентиф write Set_Идентиф;
    property Значен: UnicodeString read Get_Значен write Set_Значен;
  end;

{ IXMLТекстИнфТипList }

  IXMLТекстИнфТипList = interface(IXMLNodeCollection)
    ['{3BF5AC87-00FB-4380-9AE4-B2D3F93ABD23}']
    { Methods & Properties }
    function Add: IXMLТекстИнфТип;
    function Insert(const Index: Integer): IXMLТекстИнфТип;

    function Get_Item(Index: Integer): IXMLТекстИнфТип;
    property Items[Index: Integer]: IXMLТекстИнфТип read Get_Item; default;
  end;

{ IXMLФайл_Документ_ТаблСчФакт }

  IXMLФайл_Документ_ТаблСчФакт = interface(IXMLNode)
    ['{DC563E12-06A8-4ADC-8060-FEAA07CBBCB3}']
    { Property Accessors }
    function Get_СведТов: IXMLФайл_Документ_ТаблСчФакт_СведТовList;
    function Get_ВсегоОпл: IXMLФайл_Документ_ТаблСчФакт_ВсегоОпл;
    { Methods & Properties }
    property СведТов: IXMLФайл_Документ_ТаблСчФакт_СведТовList read Get_СведТов;
    property ВсегоОпл: IXMLФайл_Документ_ТаблСчФакт_ВсегоОпл read Get_ВсегоОпл;
  end;

{ IXMLФайл_Документ_ТаблСчФакт_СведТов }

  IXMLФайл_Документ_ТаблСчФакт_СведТов = interface(IXMLNode)
    ['{CDBECE91-B958-415A-8522-E9BABACAF5B5}']
    { Property Accessors }
    function Get_НомСтр: Integer;
    function Get_НаимТов: UnicodeString;
    function Get_ОКЕИ_Тов: UnicodeString;
    function Get_КолТов: UnicodeString;
    function Get_ЦенаТов: UnicodeString;
    function Get_СтТовБезНДС: UnicodeString;
    function Get_НалСт: UnicodeString;
    function Get_СтТовУчНал: UnicodeString;
    function Get_Акциз: IXMLСумАкцизТип;
    function Get_СумНал: IXMLСумНДСТип;
    function Get_СвТД: IXMLФайл_Документ_ТаблСчФакт_СведТов_СвТДList;
    function Get_ИнфПолФХЖ2: IXMLТекстИнфТипList;
    function Get_ДопСведТов: IXMLФайл_Документ_ТаблСчФакт_СведТов_ДопСведТов;
    procedure Set_НомСтр(Value: Integer);
    procedure Set_НаимТов(Value: UnicodeString);
    procedure Set_ОКЕИ_Тов(Value: UnicodeString);
    procedure Set_КолТов(Value: UnicodeString);
    procedure Set_ЦенаТов(Value: UnicodeString);
    procedure Set_СтТовБезНДС(Value: UnicodeString);
    procedure Set_НалСт(Value: UnicodeString);
    procedure Set_СтТовУчНал(Value: UnicodeString);
    { Methods & Properties }
    property НомСтр: Integer read Get_НомСтр write Set_НомСтр;
    property НаимТов: UnicodeString read Get_НаимТов write Set_НаимТов;
    property ОКЕИ_Тов: UnicodeString read Get_ОКЕИ_Тов write Set_ОКЕИ_Тов;
    property КолТов: UnicodeString read Get_КолТов write Set_КолТов;
    property ЦенаТов: UnicodeString read Get_ЦенаТов write Set_ЦенаТов;
    property СтТовБезНДС: UnicodeString read Get_СтТовБезНДС write Set_СтТовБезНДС;
    property НалСт: UnicodeString read Get_НалСт write Set_НалСт;
    property СтТовУчНал: UnicodeString read Get_СтТовУчНал write Set_СтТовУчНал;
    property Акциз: IXMLСумАкцизТип read Get_Акциз;
    property СумНал: IXMLСумНДСТип read Get_СумНал;
    property СвТД: IXMLФайл_Документ_ТаблСчФакт_СведТов_СвТДList read Get_СвТД;
    property ИнфПолФХЖ2: IXMLТекстИнфТипList read Get_ИнфПолФХЖ2;
    property ДопСведТов: IXMLФайл_Документ_ТаблСчФакт_СведТов_ДопСведТов read Get_ДопСведТов;
  end;

{ IXMLФайл_Документ_ТаблСчФакт_СведТовList }

  IXMLФайл_Документ_ТаблСчФакт_СведТовList = interface(IXMLNodeCollection)
    ['{BF680BFB-9E76-42AA-AD02-20D875635A5B}']
    { Methods & Properties }
    function Add: IXMLФайл_Документ_ТаблСчФакт_СведТов;
    function Insert(const Index: Integer): IXMLФайл_Документ_ТаблСчФакт_СведТов;

    function Get_Item(Index: Integer): IXMLФайл_Документ_ТаблСчФакт_СведТов;
    property Items[Index: Integer]: IXMLФайл_Документ_ТаблСчФакт_СведТов read Get_Item; default;
  end;

{ IXMLСумАкцизТип }

  IXMLСумАкцизТип = interface(IXMLNode)
    ['{5B6A564E-BD4B-4C4F-A6E6-35F64D3F8489}']
    { Property Accessors }
    function Get_СумАкциз: UnicodeString;
    function Get_БезАкциз: UnicodeString;
    procedure Set_СумАкциз(Value: UnicodeString);
    procedure Set_БезАкциз(Value: UnicodeString);
    { Methods & Properties }
    property СумАкциз: UnicodeString read Get_СумАкциз write Set_СумАкциз;
    property БезАкциз: UnicodeString read Get_БезАкциз write Set_БезАкциз;
  end;

{ IXMLСумНДСТип }

  IXMLСумНДСТип = interface(IXMLNode)
    ['{4167595E-4EC3-48EC-926C-A1579873D4A3}']
    { Property Accessors }
    function Get_СумНал: UnicodeString;
    function Get_БезНДС: UnicodeString;
    procedure Set_СумНал(Value: UnicodeString);
    procedure Set_БезНДС(Value: UnicodeString);
    { Methods & Properties }
    property СумНал: UnicodeString read Get_СумНал write Set_СумНал;
    property БезНДС: UnicodeString read Get_БезНДС write Set_БезНДС;
  end;

{ IXMLФайл_Документ_ТаблСчФакт_СведТов_СвТД }

  IXMLФайл_Документ_ТаблСчФакт_СведТов_СвТД = interface(IXMLNode)
    ['{46A6DEF1-4D34-4D43-94FF-302BA66C0884}']
    { Property Accessors }
    function Get_КодПроисх: UnicodeString;
    function Get_НомерТД: UnicodeString;
    procedure Set_КодПроисх(Value: UnicodeString);
    procedure Set_НомерТД(Value: UnicodeString);
    { Methods & Properties }
    property КодПроисх: UnicodeString read Get_КодПроисх write Set_КодПроисх;
    property НомерТД: UnicodeString read Get_НомерТД write Set_НомерТД;
  end;

{ IXMLФайл_Документ_ТаблСчФакт_СведТов_СвТДList }

  IXMLФайл_Документ_ТаблСчФакт_СведТов_СвТДList = interface(IXMLNodeCollection)
    ['{8BB99A49-8971-4E35-866C-A10D5B65275A}']
    { Methods & Properties }
    function Add: IXMLФайл_Документ_ТаблСчФакт_СведТов_СвТД;
    function Insert(const Index: Integer): IXMLФайл_Документ_ТаблСчФакт_СведТов_СвТД;

    function Get_Item(Index: Integer): IXMLФайл_Документ_ТаблСчФакт_СведТов_СвТД;
    property Items[Index: Integer]: IXMLФайл_Документ_ТаблСчФакт_СведТов_СвТД read Get_Item; default;
  end;

{ IXMLФайл_Документ_ТаблСчФакт_СведТов_ДопСведТов }

  IXMLФайл_Документ_ТаблСчФакт_СведТов_ДопСведТов = interface(IXMLNode)
    ['{24E5E72C-0B50-46D9-8AE1-3364886FC5D0}']
    { Property Accessors }
    function Get_ПрТовРаб: UnicodeString;
    function Get_ДопПризн: UnicodeString;
    function Get_КодТов: UnicodeString;
    function Get_НаимЕдИзм: UnicodeString;
    function Get_КрНаимСтрПр: UnicodeString;
    function Get_НадлОтп: UnicodeString;
    function Get_КорСчДебет: UnicodeString;
    function Get_КорСчКредит: UnicodeString;
    procedure Set_ПрТовРаб(Value: UnicodeString);
    procedure Set_ДопПризн(Value: UnicodeString);
    procedure Set_КодТов(Value: UnicodeString);
    procedure Set_НаимЕдИзм(Value: UnicodeString);
    procedure Set_КрНаимСтрПр(Value: UnicodeString);
    procedure Set_НадлОтп(Value: UnicodeString);
    procedure Set_КорСчДебет(Value: UnicodeString);
    procedure Set_КорСчКредит(Value: UnicodeString);
    { Methods & Properties }
    property ПрТовРаб: UnicodeString read Get_ПрТовРаб write Set_ПрТовРаб;
    property ДопПризн: UnicodeString read Get_ДопПризн write Set_ДопПризн;
    property КодТов: UnicodeString read Get_КодТов write Set_КодТов;
    property НаимЕдИзм: UnicodeString read Get_НаимЕдИзм write Set_НаимЕдИзм;
    property КрНаимСтрПр: UnicodeString read Get_КрНаимСтрПр write Set_КрНаимСтрПр;
    property НадлОтп: UnicodeString read Get_НадлОтп write Set_НадлОтп;
    property КорСчДебет: UnicodeString read Get_КорСчДебет write Set_КорСчДебет;
    property КорСчКредит: UnicodeString read Get_КорСчКредит write Set_КорСчКредит;
  end;

{ IXMLФайл_Документ_ТаблСчФакт_ВсегоОпл }

  IXMLФайл_Документ_ТаблСчФакт_ВсегоОпл = interface(IXMLNode)
    ['{34B52D2C-5E68-4150-AC2E-23D58852E560}']
    { Property Accessors }
    function Get_СтТовБезНДСВсего: UnicodeString;
    function Get_СтТовУчНалВсего: UnicodeString;
    function Get_СумНалВсего: IXMLСумНДСТип;
    function Get_НеттоВс: UnicodeString;
    procedure Set_СтТовБезНДСВсего(Value: UnicodeString);
    procedure Set_СтТовУчНалВсего(Value: UnicodeString);
    procedure Set_НеттоВс(Value: UnicodeString);
    { Methods & Properties }
    property СтТовБезНДСВсего: UnicodeString read Get_СтТовБезНДСВсего write Set_СтТовБезНДСВсего;
    property СтТовУчНалВсего: UnicodeString read Get_СтТовУчНалВсего write Set_СтТовУчНалВсего;
    property СумНалВсего: IXMLСумНДСТип read Get_СумНалВсего;
    property НеттоВс: UnicodeString read Get_НеттоВс write Set_НеттоВс;
  end;

{ IXMLФайл_Документ_СвПродПер }

  IXMLФайл_Документ_СвПродПер = interface(IXMLNode)
    ['{03D943FC-A956-401A-A88D-FB4AA94C65FE}']
    { Property Accessors }
    function Get_СвПер: IXMLФайл_Документ_СвПродПер_СвПер;
    function Get_ИнфПолФХЖ3: IXMLФайл_Документ_СвПродПер_ИнфПолФХЖ3;
    { Methods & Properties }
    property СвПер: IXMLФайл_Документ_СвПродПер_СвПер read Get_СвПер;
    property ИнфПолФХЖ3: IXMLФайл_Документ_СвПродПер_ИнфПолФХЖ3 read Get_ИнфПолФХЖ3;
  end;

{ IXMLФайл_Документ_СвПродПер_СвПер }

  IXMLФайл_Документ_СвПродПер_СвПер = interface(IXMLNode)
    ['{552EF836-B589-450A-B539-BD64DC0311AE}']
    { Property Accessors }
    function Get_СодОпер: UnicodeString;
    function Get_ВидОпер: UnicodeString;
    function Get_ДатаПер: UnicodeString;
    function Get_ОснПер: IXMLФайл_Документ_СвПродПер_СвПер_ОснПерList;
    function Get_СвЛицПер: IXMLФайл_Документ_СвПродПер_СвПер_СвЛицПер;
    function Get_ТранГруз: IXMLФайл_Документ_СвПродПер_СвПер_ТранГруз;
    function Get_СвПерВещи: IXMLФайл_Документ_СвПродПер_СвПер_СвПерВещи;
    procedure Set_СодОпер(Value: UnicodeString);
    procedure Set_ВидОпер(Value: UnicodeString);
    procedure Set_ДатаПер(Value: UnicodeString);
    { Methods & Properties }
    property СодОпер: UnicodeString read Get_СодОпер write Set_СодОпер;
    property ВидОпер: UnicodeString read Get_ВидОпер write Set_ВидОпер;
    property ДатаПер: UnicodeString read Get_ДатаПер write Set_ДатаПер;
    property ОснПер: IXMLФайл_Документ_СвПродПер_СвПер_ОснПерList read Get_ОснПер;
    property СвЛицПер: IXMLФайл_Документ_СвПродПер_СвПер_СвЛицПер read Get_СвЛицПер;
    property ТранГруз: IXMLФайл_Документ_СвПродПер_СвПер_ТранГруз read Get_ТранГруз;
    property СвПерВещи: IXMLФайл_Документ_СвПродПер_СвПер_СвПерВещи read Get_СвПерВещи;
  end;

{ IXMLФайл_Документ_СвПродПер_СвПер_ОснПер }

  IXMLФайл_Документ_СвПродПер_СвПер_ОснПер = interface(IXMLNode)
    ['{22858E61-6107-466A-BE70-D16CF092652F}']
    { Property Accessors }
    function Get_НаимОсн: UnicodeString;
    function Get_НомОсн: UnicodeString;
    function Get_ДатаОсн: UnicodeString;
    function Get_ДопСвОсн: UnicodeString;
    procedure Set_НаимОсн(Value: UnicodeString);
    procedure Set_НомОсн(Value: UnicodeString);
    procedure Set_ДатаОсн(Value: UnicodeString);
    procedure Set_ДопСвОсн(Value: UnicodeString);
    { Methods & Properties }
    property НаимОсн: UnicodeString read Get_НаимОсн write Set_НаимОсн;
    property НомОсн: UnicodeString read Get_НомОсн write Set_НомОсн;
    property ДатаОсн: UnicodeString read Get_ДатаОсн write Set_ДатаОсн;
    property ДопСвОсн: UnicodeString read Get_ДопСвОсн write Set_ДопСвОсн;
  end;

{ IXMLФайл_Документ_СвПродПер_СвПер_ОснПерList }

  IXMLФайл_Документ_СвПродПер_СвПер_ОснПерList = interface(IXMLNodeCollection)
    ['{6EE682FE-6165-48B1-9955-D605BF36AC0A}']
    { Methods & Properties }
    function Add: IXMLФайл_Документ_СвПродПер_СвПер_ОснПер;
    function Insert(const Index: Integer): IXMLФайл_Документ_СвПродПер_СвПер_ОснПер;

    function Get_Item(Index: Integer): IXMLФайл_Документ_СвПродПер_СвПер_ОснПер;
    property Items[Index: Integer]: IXMLФайл_Документ_СвПродПер_СвПер_ОснПер read Get_Item; default;
  end;

{ IXMLФайл_Документ_СвПродПер_СвПер_СвЛицПер }

  IXMLФайл_Документ_СвПродПер_СвПер_СвЛицПер = interface(IXMLNode)
    ['{1669C1DD-12BF-40E3-8C1C-3FBB1C06F634}']
    { Property Accessors }
    function Get_РабОргПрод: IXMLФайл_Документ_СвПродПер_СвПер_СвЛицПер_РабОргПрод;
    function Get_ИнЛицо: IXMLФайл_Документ_СвПродПер_СвПер_СвЛицПер_ИнЛицо;
    { Methods & Properties }
    property РабОргПрод: IXMLФайл_Документ_СвПродПер_СвПер_СвЛицПер_РабОргПрод read Get_РабОргПрод;
    property ИнЛицо: IXMLФайл_Документ_СвПродПер_СвПер_СвЛицПер_ИнЛицо read Get_ИнЛицо;
  end;

{ IXMLФайл_Документ_СвПродПер_СвПер_СвЛицПер_РабОргПрод }

  IXMLФайл_Документ_СвПродПер_СвПер_СвЛицПер_РабОргПрод = interface(IXMLNode)
    ['{E01320B3-0E8A-40B1-8229-259BDCE051A0}']
    { Property Accessors }
    function Get_Должность: UnicodeString;
    function Get_ИныеСвед: UnicodeString;
    function Get_ОснПолн: UnicodeString;
    function Get_ФИО: IXMLФИОТип;
    procedure Set_Должность(Value: UnicodeString);
    procedure Set_ИныеСвед(Value: UnicodeString);
    procedure Set_ОснПолн(Value: UnicodeString);
    { Methods & Properties }
    property Должность: UnicodeString read Get_Должность write Set_Должность;
    property ИныеСвед: UnicodeString read Get_ИныеСвед write Set_ИныеСвед;
    property ОснПолн: UnicodeString read Get_ОснПолн write Set_ОснПолн;
    property ФИО: IXMLФИОТип read Get_ФИО;
  end;

{ IXMLФайл_Документ_СвПродПер_СвПер_СвЛицПер_ИнЛицо }

  IXMLФайл_Документ_СвПродПер_СвПер_СвЛицПер_ИнЛицо = interface(IXMLNode)
    ['{8D4BA2E2-2C35-45D6-8368-A2CF8695E507}']
    { Property Accessors }
    function Get_ПредОргПер: IXMLФайл_Документ_СвПродПер_СвПер_СвЛицПер_ИнЛицо_ПредОргПер;
    function Get_ФЛПер: IXMLФайл_Документ_СвПродПер_СвПер_СвЛицПер_ИнЛицо_ФЛПер;
    { Methods & Properties }
    property ПредОргПер: IXMLФайл_Документ_СвПродПер_СвПер_СвЛицПер_ИнЛицо_ПредОргПер read Get_ПредОргПер;
    property ФЛПер: IXMLФайл_Документ_СвПродПер_СвПер_СвЛицПер_ИнЛицо_ФЛПер read Get_ФЛПер;
  end;

{ IXMLФайл_Документ_СвПродПер_СвПер_СвЛицПер_ИнЛицо_ПредОргПер }

  IXMLФайл_Документ_СвПродПер_СвПер_СвЛицПер_ИнЛицо_ПредОргПер = interface(IXMLNode)
    ['{A707B0DF-CE6C-425F-92B3-61A91A97A12B}']
    { Property Accessors }
    function Get_Должность: UnicodeString;
    function Get_ИныеСвед: UnicodeString;
    function Get_НаимОргПер: UnicodeString;
    function Get_ОснДоверОргПер: UnicodeString;
    function Get_ОснПолнПредПер: UnicodeString;
    function Get_ФИО: IXMLФИОТип;
    procedure Set_Должность(Value: UnicodeString);
    procedure Set_ИныеСвед(Value: UnicodeString);
    procedure Set_НаимОргПер(Value: UnicodeString);
    procedure Set_ОснДоверОргПер(Value: UnicodeString);
    procedure Set_ОснПолнПредПер(Value: UnicodeString);
    { Methods & Properties }
    property Должность: UnicodeString read Get_Должность write Set_Должность;
    property ИныеСвед: UnicodeString read Get_ИныеСвед write Set_ИныеСвед;
    property НаимОргПер: UnicodeString read Get_НаимОргПер write Set_НаимОргПер;
    property ОснДоверОргПер: UnicodeString read Get_ОснДоверОргПер write Set_ОснДоверОргПер;
    property ОснПолнПредПер: UnicodeString read Get_ОснПолнПредПер write Set_ОснПолнПредПер;
    property ФИО: IXMLФИОТип read Get_ФИО;
  end;

{ IXMLФайл_Документ_СвПродПер_СвПер_СвЛицПер_ИнЛицо_ФЛПер }

  IXMLФайл_Документ_СвПродПер_СвПер_СвЛицПер_ИнЛицо_ФЛПер = interface(IXMLNode)
    ['{9CC9C008-145F-4301-9C1D-2D835ECA0795}']
    { Property Accessors }
    function Get_ИныеСвед: UnicodeString;
    function Get_ОснДоверФЛ: UnicodeString;
    function Get_ФИО: IXMLФИОТип;
    procedure Set_ИныеСвед(Value: UnicodeString);
    procedure Set_ОснДоверФЛ(Value: UnicodeString);
    { Methods & Properties }
    property ИныеСвед: UnicodeString read Get_ИныеСвед write Set_ИныеСвед;
    property ОснДоверФЛ: UnicodeString read Get_ОснДоверФЛ write Set_ОснДоверФЛ;
    property ФИО: IXMLФИОТип read Get_ФИО;
  end;

{ IXMLФайл_Документ_СвПродПер_СвПер_ТранГруз }

  IXMLФайл_Документ_СвПродПер_СвПер_ТранГруз = interface(IXMLNode)
    ['{3BC8086A-E3FA-4320-9CAC-21518536BD2D}']
    { Property Accessors }
    function Get_СвТранГруз: UnicodeString;
    function Get_ТранНакл: IXMLФайл_Документ_СвПродПер_СвПер_ТранГруз_ТранНаклList;
    function Get_Перевозчик: IXMLУчастникТип;
    procedure Set_СвТранГруз(Value: UnicodeString);
    { Methods & Properties }
    property СвТранГруз: UnicodeString read Get_СвТранГруз write Set_СвТранГруз;
    property ТранНакл: IXMLФайл_Документ_СвПродПер_СвПер_ТранГруз_ТранНаклList read Get_ТранНакл;
    property Перевозчик: IXMLУчастникТип read Get_Перевозчик;
  end;

{ IXMLФайл_Документ_СвПродПер_СвПер_ТранГруз_ТранНакл }

  IXMLФайл_Документ_СвПродПер_СвПер_ТранГруз_ТранНакл = interface(IXMLNode)
    ['{970C7685-9D8F-4AE7-A1B0-D0180DBCCD24}']
    { Property Accessors }
    function Get_НомТранНакл: UnicodeString;
    function Get_ДатаТранНакл: UnicodeString;
    procedure Set_НомТранНакл(Value: UnicodeString);
    procedure Set_ДатаТранНакл(Value: UnicodeString);
    { Methods & Properties }
    property НомТранНакл: UnicodeString read Get_НомТранНакл write Set_НомТранНакл;
    property ДатаТранНакл: UnicodeString read Get_ДатаТранНакл write Set_ДатаТранНакл;
  end;

{ IXMLФайл_Документ_СвПродПер_СвПер_ТранГруз_ТранНаклList }

  IXMLФайл_Документ_СвПродПер_СвПер_ТранГруз_ТранНаклList = interface(IXMLNodeCollection)
    ['{02199B14-80B0-4E0D-99B9-DD49AFCC8C7A}']
    { Methods & Properties }
    function Add: IXMLФайл_Документ_СвПродПер_СвПер_ТранГруз_ТранНакл;
    function Insert(const Index: Integer): IXMLФайл_Документ_СвПродПер_СвПер_ТранГруз_ТранНакл;

    function Get_Item(Index: Integer): IXMLФайл_Документ_СвПродПер_СвПер_ТранГруз_ТранНакл;
    property Items[Index: Integer]: IXMLФайл_Документ_СвПродПер_СвПер_ТранГруз_ТранНакл read Get_Item; default;
  end;

{ IXMLФайл_Документ_СвПродПер_СвПер_СвПерВещи }

  IXMLФайл_Документ_СвПродПер_СвПер_СвПерВещи = interface(IXMLNode)
    ['{847BD64B-BBF0-4903-B38E-7148D24CB716}']
    { Property Accessors }
    function Get_ДатаПерВещ: UnicodeString;
    function Get_СвПерВещ: UnicodeString;
    procedure Set_ДатаПерВещ(Value: UnicodeString);
    procedure Set_СвПерВещ(Value: UnicodeString);
    { Methods & Properties }
    property ДатаПерВещ: UnicodeString read Get_ДатаПерВещ write Set_ДатаПерВещ;
    property СвПерВещ: UnicodeString read Get_СвПерВещ write Set_СвПерВещ;
  end;

{ IXMLФайл_Документ_СвПродПер_ИнфПолФХЖ3 }

  IXMLФайл_Документ_СвПродПер_ИнфПолФХЖ3 = interface(IXMLNodeCollection)
    ['{15CCCF58-6C87-4F7A-BC7D-CB4AF9C487C4}']
    { Property Accessors }
    function Get_ИдФайлИнфПол: UnicodeString;
    function Get_ТекстИнф(Index: Integer): IXMLТекстИнфТип;
    procedure Set_ИдФайлИнфПол(Value: UnicodeString);
    { Methods & Properties }
    function Add: IXMLТекстИнфТип;
    function Insert(const Index: Integer): IXMLТекстИнфТип;
    property ИдФайлИнфПол: UnicodeString read Get_ИдФайлИнфПол write Set_ИдФайлИнфПол;
    property ТекстИнф[Index: Integer]: IXMLТекстИнфТип read Get_ТекстИнф; default;
  end;

{ IXMLФайл_Документ_Подписант }

  IXMLФайл_Документ_Подписант = interface(IXMLNode)
    ['{5D8A6CE7-EF7B-4A8E-9899-F312124CE859}']
    { Property Accessors }
    function Get_ОблПолн: UnicodeString;
    function Get_Статус: UnicodeString;
    function Get_ОснПолн: UnicodeString;
    function Get_ОснПолнОрг: UnicodeString;
    function Get_ФЛ: IXMLФайл_Документ_Подписант_ФЛ;
    function Get_ИП: IXMLСвИПТип;
    function Get_ЮЛ: IXMLФайл_Документ_Подписант_ЮЛ;
    procedure Set_ОблПолн(Value: UnicodeString);
    procedure Set_Статус(Value: UnicodeString);
    procedure Set_ОснПолн(Value: UnicodeString);
    procedure Set_ОснПолнОрг(Value: UnicodeString);
    { Methods & Properties }
    property ОблПолн: UnicodeString read Get_ОблПолн write Set_ОблПолн;
    property Статус: UnicodeString read Get_Статус write Set_Статус;
    property ОснПолн: UnicodeString read Get_ОснПолн write Set_ОснПолн;
    property ОснПолнОрг: UnicodeString read Get_ОснПолнОрг write Set_ОснПолнОрг;
    property ФЛ: IXMLФайл_Документ_Подписант_ФЛ read Get_ФЛ;
    property ИП: IXMLСвИПТип read Get_ИП;
    property ЮЛ: IXMLФайл_Документ_Подписант_ЮЛ read Get_ЮЛ;
  end;

{ IXMLФайл_Документ_ПодписантList }

  IXMLФайл_Документ_ПодписантList = interface(IXMLNodeCollection)
    ['{B699BB00-31A3-4680-AE16-A36A1B1C5814}']
    { Methods & Properties }
    function Add: IXMLФайл_Документ_Подписант;
    function Insert(const Index: Integer): IXMLФайл_Документ_Подписант;

    function Get_Item(Index: Integer): IXMLФайл_Документ_Подписант;
    property Items[Index: Integer]: IXMLФайл_Документ_Подписант read Get_Item; default;
  end;

{ IXMLФайл_Документ_Подписант_ФЛ }

  IXMLФайл_Документ_Подписант_ФЛ = interface(IXMLNode)
    ['{389668D6-9954-432B-AA5C-15EF472E3F4C}']
    { Property Accessors }
    function Get_ГосРегИПВыдДов: UnicodeString;
    function Get_ИННФЛ: UnicodeString;
    function Get_ИныеСвед: UnicodeString;
    function Get_ФИО: IXMLФИОТип;
    procedure Set_ГосРегИПВыдДов(Value: UnicodeString);
    procedure Set_ИННФЛ(Value: UnicodeString);
    procedure Set_ИныеСвед(Value: UnicodeString);
    { Methods & Properties }
    property ГосРегИПВыдДов: UnicodeString read Get_ГосРегИПВыдДов write Set_ГосРегИПВыдДов;
    property ИННФЛ: UnicodeString read Get_ИННФЛ write Set_ИННФЛ;
    property ИныеСвед: UnicodeString read Get_ИныеСвед write Set_ИныеСвед;
    property ФИО: IXMLФИОТип read Get_ФИО;
  end;

{ IXMLФайл_Документ_Подписант_ЮЛ }

  IXMLФайл_Документ_Подписант_ЮЛ = interface(IXMLNode)
    ['{28928840-060A-4956-8C9F-97F2095E9183}']
    { Property Accessors }
    function Get_ГосРегИПВыдДов: UnicodeString;
    function Get_ИННЮЛ: UnicodeString;
    function Get_НаимОрг: UnicodeString;
    function Get_Должн: UnicodeString;
    function Get_ИныеСвед: UnicodeString;
    function Get_ФИО: IXMLФИОТип;
    procedure Set_ГосРегИПВыдДов(Value: UnicodeString);
    procedure Set_ИННЮЛ(Value: UnicodeString);
    procedure Set_НаимОрг(Value: UnicodeString);
    procedure Set_Должн(Value: UnicodeString);
    procedure Set_ИныеСвед(Value: UnicodeString);
    { Methods & Properties }
    property ГосРегИПВыдДов: UnicodeString read Get_ГосРегИПВыдДов write Set_ГосРегИПВыдДов;
    property ИННЮЛ: UnicodeString read Get_ИННЮЛ write Set_ИННЮЛ;
    property НаимОрг: UnicodeString read Get_НаимОрг write Set_НаимОрг;
    property Должн: UnicodeString read Get_Должн write Set_Должн;
    property ИныеСвед: UnicodeString read Get_ИныеСвед write Set_ИныеСвед;
    property ФИО: IXMLФИОТип read Get_ФИО;
  end;

{ Forward Decls }

  TXMLФайл = class;
  TXMLФайл_СвУчДокОбор = class;
  TXMLФайл_СвУчДокОбор_СвОЭДОтпр = class;
  TXMLФайл_Документ = class;
  TXMLФайл_Документ_СвСчФакт = class;
  TXMLФайл_Документ_СвСчФакт_ИспрСчФ = class;
  TXMLУчастникТип = class;
  TXMLУчастникТип_ИдСв = class;
  TXMLСвИПТип = class;
  TXMLФИОТип = class;
  TXMLУчастникТип_ИдСв_СвЮЛУч = class;
  TXMLУчастникТип_ИдСв_СвИнНеУч = class;
  TXMLАдресТип = class;
  TXMLАдрРФТип = class;
  TXMLАдрИнфТип = class;
  TXMLКонтактТип = class;
  TXMLУчастникТип_БанкРекв = class;
  TXMLУчастникТип_БанкРекв_СвБанк = class;
  TXMLФайл_Документ_СвСчФакт_ГрузОт = class;
  TXMLФайл_Документ_СвСчФакт_СвПРД = class;
  TXMLФайл_Документ_СвСчФакт_СвПРДList = class;
  TXMLФайл_Документ_СвСчФакт_ДопСвФХЖ1 = class;
  TXMLФайл_Документ_СвСчФакт_ИнфПолФХЖ1 = class;
  TXMLТекстИнфТип = class;
  TXMLТекстИнфТипList = class;
  TXMLФайл_Документ_ТаблСчФакт = class;
  TXMLФайл_Документ_ТаблСчФакт_СведТов = class;
  TXMLФайл_Документ_ТаблСчФакт_СведТовList = class;
  TXMLСумАкцизТип = class;
  TXMLСумНДСТип = class;
  TXMLФайл_Документ_ТаблСчФакт_СведТов_СвТД = class;
  TXMLФайл_Документ_ТаблСчФакт_СведТов_СвТДList = class;
  TXMLФайл_Документ_ТаблСчФакт_СведТов_ДопСведТов = class;
  TXMLФайл_Документ_ТаблСчФакт_ВсегоОпл = class;
  TXMLФайл_Документ_СвПродПер = class;
  TXMLФайл_Документ_СвПродПер_СвПер = class;
  TXMLФайл_Документ_СвПродПер_СвПер_ОснПер = class;
  TXMLФайл_Документ_СвПродПер_СвПер_ОснПерList = class;
  TXMLФайл_Документ_СвПродПер_СвПер_СвЛицПер = class;
  TXMLФайл_Документ_СвПродПер_СвПер_СвЛицПер_РабОргПрод = class;
  TXMLФайл_Документ_СвПродПер_СвПер_СвЛицПер_ИнЛицо = class;
  TXMLФайл_Документ_СвПродПер_СвПер_СвЛицПер_ИнЛицо_ПредОргПер = class;
  TXMLФайл_Документ_СвПродПер_СвПер_СвЛицПер_ИнЛицо_ФЛПер = class;
  TXMLФайл_Документ_СвПродПер_СвПер_ТранГруз = class;
  TXMLФайл_Документ_СвПродПер_СвПер_ТранГруз_ТранНакл = class;
  TXMLФайл_Документ_СвПродПер_СвПер_ТранГруз_ТранНаклList = class;
  TXMLФайл_Документ_СвПродПер_СвПер_СвПерВещи = class;
  TXMLФайл_Документ_СвПродПер_ИнфПолФХЖ3 = class;
  TXMLФайл_Документ_Подписант = class;
  TXMLФайл_Документ_ПодписантList = class;
  TXMLФайл_Документ_Подписант_ФЛ = class;
  TXMLФайл_Документ_Подписант_ЮЛ = class;

{ TXMLФайл }

  TXMLФайл = class(TXMLNode, IXMLФайл)
  protected
    { IXMLФайл }
    function Get_ИдФайл: UnicodeString;
    function Get_ВерсФорм: UnicodeString;
    function Get_ВерсПрог: UnicodeString;
    function Get_СвУчДокОбор: IXMLФайл_СвУчДокОбор;
    function Get_Документ: IXMLФайл_Документ;
    procedure Set_ИдФайл(Value: UnicodeString);
    procedure Set_ВерсФорм(Value: UnicodeString);
    procedure Set_ВерсПрог(Value: UnicodeString);
  public
    procedure AfterConstruction; override;
  end;

{ TXMLФайл_СвУчДокОбор }

  TXMLФайл_СвУчДокОбор = class(TXMLNode, IXMLФайл_СвУчДокОбор)
  protected
    { IXMLФайл_СвУчДокОбор }
    function Get_ИдОтпр: UnicodeString;
    function Get_ИдПол: UnicodeString;
    function Get_СвОЭДОтпр: IXMLФайл_СвУчДокОбор_СвОЭДОтпр;
    procedure Set_ИдОтпр(Value: UnicodeString);
    procedure Set_ИдПол(Value: UnicodeString);
  public
    procedure AfterConstruction; override;
  end;

{ TXMLФайл_СвУчДокОбор_СвОЭДОтпр }

  TXMLФайл_СвУчДокОбор_СвОЭДОтпр = class(TXMLNode, IXMLФайл_СвУчДокОбор_СвОЭДОтпр)
  protected
    { IXMLФайл_СвУчДокОбор_СвОЭДОтпр }
    function Get_НаимОрг: UnicodeString;
    function Get_ИННЮЛ: UnicodeString;
    function Get_ИдЭДО: UnicodeString;
    procedure Set_НаимОрг(Value: UnicodeString);
    procedure Set_ИННЮЛ(Value: UnicodeString);
    procedure Set_ИдЭДО(Value: UnicodeString);
  end;

{ TXMLФайл_Документ }

  TXMLФайл_Документ = class(TXMLNode, IXMLФайл_Документ)
  private
    FПодписант: IXMLФайл_Документ_ПодписантList;
  protected
    { IXMLФайл_Документ }
    function Get_КНД: UnicodeString;
    function Get_Функция: UnicodeString;
    function Get_ПоФактХЖ: UnicodeString;
    function Get_НаимДокОпр: UnicodeString;
    function Get_ДатаИнфПр: UnicodeString;
    function Get_ВремИнфПр: UnicodeString;
    function Get_НаимЭконСубСост: UnicodeString;
    function Get_ОснДоверОргСост: UnicodeString;
    function Get_СвСчФакт: IXMLФайл_Документ_СвСчФакт;
    function Get_ТаблСчФакт: IXMLФайл_Документ_ТаблСчФакт;
    function Get_СвПродПер: IXMLФайл_Документ_СвПродПер;
    function Get_Подписант: IXMLФайл_Документ_ПодписантList;
    procedure Set_КНД(Value: UnicodeString);
    procedure Set_Функция(Value: UnicodeString);
    procedure Set_ПоФактХЖ(Value: UnicodeString);
    procedure Set_НаимДокОпр(Value: UnicodeString);
    procedure Set_ДатаИнфПр(Value: UnicodeString);
    procedure Set_ВремИнфПр(Value: UnicodeString);
    procedure Set_НаимЭконСубСост(Value: UnicodeString);
    procedure Set_ОснДоверОргСост(Value: UnicodeString);
  public
    procedure AfterConstruction; override;
  end;

{ TXMLФайл_Документ_СвСчФакт }

  TXMLФайл_Документ_СвСчФакт = class(TXMLNode, IXMLФайл_Документ_СвСчФакт)
  private
    FСвПРД: IXMLФайл_Документ_СвСчФакт_СвПРДList;
  protected
    { IXMLФайл_Документ_СвСчФакт }
    function Get_НомерСчФ: UnicodeString;
    function Get_ДатаСчФ: UnicodeString;
    function Get_КодОКВ: UnicodeString;
    function Get_ИспрСчФ: IXMLФайл_Документ_СвСчФакт_ИспрСчФ;
    function Get_СвПрод: IXMLУчастникТип;
    function Get_ГрузОт: IXMLФайл_Документ_СвСчФакт_ГрузОт;
    function Get_ГрузПолуч: IXMLУчастникТип;
    function Get_СвПРД: IXMLФайл_Документ_СвСчФакт_СвПРДList;
    function Get_СвПокуп: IXMLУчастникТип;
    function Get_ДопСвФХЖ1: IXMLФайл_Документ_СвСчФакт_ДопСвФХЖ1;
    function Get_ИнфПолФХЖ1: IXMLФайл_Документ_СвСчФакт_ИнфПолФХЖ1;
    procedure Set_НомерСчФ(Value: UnicodeString);
    procedure Set_ДатаСчФ(Value: UnicodeString);
    procedure Set_КодОКВ(Value: UnicodeString);
  public
    procedure AfterConstruction; override;
  end;

{ TXMLФайл_Документ_СвСчФакт_ИспрСчФ }

  TXMLФайл_Документ_СвСчФакт_ИспрСчФ = class(TXMLNode, IXMLФайл_Документ_СвСчФакт_ИспрСчФ)
  protected
    { IXMLФайл_Документ_СвСчФакт_ИспрСчФ }
    function Get_НомИспрСчФ: Integer;
    function Get_ДатаИспрСчФ: UnicodeString;
    procedure Set_НомИспрСчФ(Value: Integer);
    procedure Set_ДатаИспрСчФ(Value: UnicodeString);
  end;

{ TXMLУчастникТип }

  TXMLУчастникТип = class(TXMLNode, IXMLУчастникТип)
  protected
    { IXMLУчастникТип }
    function Get_ОКПО: UnicodeString;
    function Get_СтруктПодр: UnicodeString;
    function Get_ИнфДляУчаст: UnicodeString;
    function Get_ИдСв: IXMLУчастникТип_ИдСв;
    function Get_Адрес: IXMLАдресТип;
    function Get_Контакт: IXMLКонтактТип;
    function Get_БанкРекв: IXMLУчастникТип_БанкРекв;
    procedure Set_ОКПО(Value: UnicodeString);
    procedure Set_СтруктПодр(Value: UnicodeString);
    procedure Set_ИнфДляУчаст(Value: UnicodeString);
  public
    procedure AfterConstruction; override;
  end;

{ TXMLУчастникТип_ИдСв }

  TXMLУчастникТип_ИдСв = class(TXMLNode, IXMLУчастникТип_ИдСв)
  protected
    { IXMLУчастникТип_ИдСв }
    function Get_СвИП: IXMLСвИПТип;
    function Get_СвЮЛУч: IXMLУчастникТип_ИдСв_СвЮЛУч;
    function Get_СвИнНеУч: IXMLУчастникТип_ИдСв_СвИнНеУч;
  public
    procedure AfterConstruction; override;
  end;

{ TXMLСвИПТип }

  TXMLСвИПТип = class(TXMLNode, IXMLСвИПТип)
  protected
    { IXMLСвИПТип }
    function Get_ИННФЛ: UnicodeString;
    function Get_СвГосРегИП: UnicodeString;
    function Get_ИныеСвед: UnicodeString;
    function Get_ФИО: IXMLФИОТип;
    procedure Set_ИННФЛ(Value: UnicodeString);
    procedure Set_СвГосРегИП(Value: UnicodeString);
    procedure Set_ИныеСвед(Value: UnicodeString);
  public
    procedure AfterConstruction; override;
  end;

{ TXMLФИОТип }

  TXMLФИОТип = class(TXMLNode, IXMLФИОТип)
  protected
    { IXMLФИОТип }
    function Get_Фамилия: UnicodeString;
    function Get_Имя: UnicodeString;
    function Get_Отчество: UnicodeString;
    procedure Set_Фамилия(Value: UnicodeString);
    procedure Set_Имя(Value: UnicodeString);
    procedure Set_Отчество(Value: UnicodeString);
  end;

{ TXMLУчастникТип_ИдСв_СвЮЛУч }

  TXMLУчастникТип_ИдСв_СвЮЛУч = class(TXMLNode, IXMLУчастникТип_ИдСв_СвЮЛУч)
  protected
    { IXMLУчастникТип_ИдСв_СвЮЛУч }
    function Get_НаимОрг: UnicodeString;
    function Get_ИННЮЛ: UnicodeString;
    function Get_КПП: UnicodeString;
    procedure Set_НаимОрг(Value: UnicodeString);
    procedure Set_ИННЮЛ(Value: UnicodeString);
    procedure Set_КПП(Value: UnicodeString);
  end;

{ TXMLУчастникТип_ИдСв_СвИнНеУч }

  TXMLУчастникТип_ИдСв_СвИнНеУч = class(TXMLNode, IXMLУчастникТип_ИдСв_СвИнНеУч)
  protected
    { IXMLУчастникТип_ИдСв_СвИнНеУч }
    function Get_НаимОрг: UnicodeString;
    function Get_ИныеСвед: UnicodeString;
    procedure Set_НаимОрг(Value: UnicodeString);
    procedure Set_ИныеСвед(Value: UnicodeString);
  end;

{ TXMLАдресТип }

  TXMLАдресТип = class(TXMLNode, IXMLАдресТип)
  protected
    { IXMLАдресТип }
    function Get_АдрРФ: IXMLАдрРФТип;
    function Get_АдрИнф: IXMLАдрИнфТип;
    function Get_КодГАР: UnicodeString;
    procedure Set_КодГАР(Value: UnicodeString);
  public
    procedure AfterConstruction; override;
  end;

{ TXMLАдрРФТип }

  TXMLАдрРФТип = class(TXMLNode, IXMLАдрРФТип)
  protected
    { IXMLАдрРФТип }
    function Get_Индекс: UnicodeString;
    function Get_КодРегион: UnicodeString;
    function Get_Район: UnicodeString;
    function Get_Город: UnicodeString;
    function Get_НаселПункт: UnicodeString;
    function Get_Улица: UnicodeString;
    function Get_Дом: UnicodeString;
    function Get_Корпус: UnicodeString;
    function Get_Кварт: UnicodeString;
    procedure Set_Индекс(Value: UnicodeString);
    procedure Set_КодРегион(Value: UnicodeString);
    procedure Set_Район(Value: UnicodeString);
    procedure Set_Город(Value: UnicodeString);
    procedure Set_НаселПункт(Value: UnicodeString);
    procedure Set_Улица(Value: UnicodeString);
    procedure Set_Дом(Value: UnicodeString);
    procedure Set_Корпус(Value: UnicodeString);
    procedure Set_Кварт(Value: UnicodeString);
  end;

{ TXMLАдрИнфТип }

  TXMLАдрИнфТип = class(TXMLNode, IXMLАдрИнфТип)
  protected
    { IXMLАдрИнфТип }
    function Get_КодСтр: UnicodeString;
    function Get_АдрТекст: UnicodeString;
    procedure Set_КодСтр(Value: UnicodeString);
    procedure Set_АдрТекст(Value: UnicodeString);
  end;

{ TXMLКонтактТип }

  TXMLКонтактТип = class(TXMLNode, IXMLКонтактТип)
  protected
    { IXMLКонтактТип }
    function Get_Тлф: UnicodeString;
    function Get_ЭлПочта: UnicodeString;
    procedure Set_Тлф(Value: UnicodeString);
    procedure Set_ЭлПочта(Value: UnicodeString);
  end;

{ TXMLУчастникТип_БанкРекв }

  TXMLУчастникТип_БанкРекв = class(TXMLNode, IXMLУчастникТип_БанкРекв)
  protected
    { IXMLУчастникТип_БанкРекв }
    function Get_НомерСчета: UnicodeString;
    function Get_СвБанк: IXMLУчастникТип_БанкРекв_СвБанк;
    procedure Set_НомерСчета(Value: UnicodeString);
  public
    procedure AfterConstruction; override;
  end;

{ TXMLУчастникТип_БанкРекв_СвБанк }

  TXMLУчастникТип_БанкРекв_СвБанк = class(TXMLNode, IXMLУчастникТип_БанкРекв_СвБанк)
  protected
    { IXMLУчастникТип_БанкРекв_СвБанк }
    function Get_НаимБанк: UnicodeString;
    function Get_БИК: UnicodeString;
    function Get_КорСчет: UnicodeString;
    procedure Set_НаимБанк(Value: UnicodeString);
    procedure Set_БИК(Value: UnicodeString);
    procedure Set_КорСчет(Value: UnicodeString);
  end;

{ TXMLФайл_Документ_СвСчФакт_ГрузОт }

  TXMLФайл_Документ_СвСчФакт_ГрузОт = class(TXMLNode, IXMLФайл_Документ_СвСчФакт_ГрузОт)
  protected
    { IXMLФайл_Документ_СвСчФакт_ГрузОт }
    function Get_ГрузОтпр: IXMLУчастникТип;
    function Get_ОнЖе: UnicodeString;
    procedure Set_ОнЖе(Value: UnicodeString);
  public
    procedure AfterConstruction; override;
  end;

{ TXMLФайл_Документ_СвСчФакт_СвПРД }

  TXMLФайл_Документ_СвСчФакт_СвПРД = class(TXMLNode, IXMLФайл_Документ_СвСчФакт_СвПРД)
  protected
    { IXMLФайл_Документ_СвСчФакт_СвПРД }
    function Get_НомерПРД: UnicodeString;
    function Get_ДатаПРД: UnicodeString;
    procedure Set_НомерПРД(Value: UnicodeString);
    procedure Set_ДатаПРД(Value: UnicodeString);
  end;

{ TXMLФайл_Документ_СвСчФакт_СвПРДList }

  TXMLФайл_Документ_СвСчФакт_СвПРДList = class(TXMLNodeCollection, IXMLФайл_Документ_СвСчФакт_СвПРДList)
  protected
    { IXMLФайл_Документ_СвСчФакт_СвПРДList }
    function Add: IXMLФайл_Документ_СвСчФакт_СвПРД;
    function Insert(const Index: Integer): IXMLФайл_Документ_СвСчФакт_СвПРД;

    function Get_Item(Index: Integer): IXMLФайл_Документ_СвСчФакт_СвПРД;
  end;

{ TXMLФайл_Документ_СвСчФакт_ДопСвФХЖ1 }

  TXMLФайл_Документ_СвСчФакт_ДопСвФХЖ1 = class(TXMLNode, IXMLФайл_Документ_СвСчФакт_ДопСвФХЖ1)
  protected
    { IXMLФайл_Документ_СвСчФакт_ДопСвФХЖ1 }
    function Get_ИдГосКон: UnicodeString;
    function Get_НаимОКВ: UnicodeString;
    function Get_КурсВал: UnicodeString;
    procedure Set_ИдГосКон(Value: UnicodeString);
    procedure Set_НаимОКВ(Value: UnicodeString);
    procedure Set_КурсВал(Value: UnicodeString);
  end;

{ TXMLФайл_Документ_СвСчФакт_ИнфПолФХЖ1 }

  TXMLФайл_Документ_СвСчФакт_ИнфПолФХЖ1 = class(TXMLNodeCollection, IXMLФайл_Документ_СвСчФакт_ИнфПолФХЖ1)
  protected
    { IXMLФайл_Документ_СвСчФакт_ИнфПолФХЖ1 }
    function Get_ИдФайлИнфПол: UnicodeString;
    function Get_ТекстИнф(Index: Integer): IXMLТекстИнфТип;
    procedure Set_ИдФайлИнфПол(Value: UnicodeString);
    function Add: IXMLТекстИнфТип;
    function Insert(const Index: Integer): IXMLТекстИнфТип;
  public
    procedure AfterConstruction; override;
  end;

{ TXMLТекстИнфТип }

  TXMLТекстИнфТип = class(TXMLNode, IXMLТекстИнфТип)
  protected
    { IXMLТекстИнфТип }
    function Get_Идентиф: UnicodeString;
    function Get_Значен: UnicodeString;
    procedure Set_Идентиф(Value: UnicodeString);
    procedure Set_Значен(Value: UnicodeString);
  end;

{ TXMLТекстИнфТипList }

  TXMLТекстИнфТипList = class(TXMLNodeCollection, IXMLТекстИнфТипList)
  protected
    { IXMLТекстИнфТипList }
    function Add: IXMLТекстИнфТип;
    function Insert(const Index: Integer): IXMLТекстИнфТип;

    function Get_Item(Index: Integer): IXMLТекстИнфТип;
  end;

{ TXMLФайл_Документ_ТаблСчФакт }

  TXMLФайл_Документ_ТаблСчФакт = class(TXMLNode, IXMLФайл_Документ_ТаблСчФакт)
  private
    FСведТов: IXMLФайл_Документ_ТаблСчФакт_СведТовList;
  protected
    { IXMLФайл_Документ_ТаблСчФакт }
    function Get_СведТов: IXMLФайл_Документ_ТаблСчФакт_СведТовList;
    function Get_ВсегоОпл: IXMLФайл_Документ_ТаблСчФакт_ВсегоОпл;
  public
    procedure AfterConstruction; override;
  end;

{ TXMLФайл_Документ_ТаблСчФакт_СведТов }

  TXMLФайл_Документ_ТаблСчФакт_СведТов = class(TXMLNode, IXMLФайл_Документ_ТаблСчФакт_СведТов)
  private
    FСвТД: IXMLФайл_Документ_ТаблСчФакт_СведТов_СвТДList;
    FИнфПолФХЖ2: IXMLТекстИнфТипList;
  protected
    { IXMLФайл_Документ_ТаблСчФакт_СведТов }
    function Get_НомСтр: Integer;
    function Get_НаимТов: UnicodeString;
    function Get_ОКЕИ_Тов: UnicodeString;
    function Get_КолТов: UnicodeString;
    function Get_ЦенаТов: UnicodeString;
    function Get_СтТовБезНДС: UnicodeString;
    function Get_НалСт: UnicodeString;
    function Get_СтТовУчНал: UnicodeString;
    function Get_Акциз: IXMLСумАкцизТип;
    function Get_СумНал: IXMLСумНДСТип;
    function Get_СвТД: IXMLФайл_Документ_ТаблСчФакт_СведТов_СвТДList;
    function Get_ИнфПолФХЖ2: IXMLТекстИнфТипList;
    function Get_ДопСведТов: IXMLФайл_Документ_ТаблСчФакт_СведТов_ДопСведТов;
    procedure Set_НомСтр(Value: Integer);
    procedure Set_НаимТов(Value: UnicodeString);
    procedure Set_ОКЕИ_Тов(Value: UnicodeString);
    procedure Set_КолТов(Value: UnicodeString);
    procedure Set_ЦенаТов(Value: UnicodeString);
    procedure Set_СтТовБезНДС(Value: UnicodeString);
    procedure Set_НалСт(Value: UnicodeString);
    procedure Set_СтТовУчНал(Value: UnicodeString);
  public
    procedure AfterConstruction; override;
  end;

{ TXMLФайл_Документ_ТаблСчФакт_СведТовList }

  TXMLФайл_Документ_ТаблСчФакт_СведТовList = class(TXMLNodeCollection, IXMLФайл_Документ_ТаблСчФакт_СведТовList)
  protected
    { IXMLФайл_Документ_ТаблСчФакт_СведТовList }
    function Add: IXMLФайл_Документ_ТаблСчФакт_СведТов;
    function Insert(const Index: Integer): IXMLФайл_Документ_ТаблСчФакт_СведТов;

    function Get_Item(Index: Integer): IXMLФайл_Документ_ТаблСчФакт_СведТов;
  end;

{ TXMLСумАкцизТип }

  TXMLСумАкцизТип = class(TXMLNode, IXMLСумАкцизТип)
  protected
    { IXMLСумАкцизТип }
    function Get_СумАкциз: UnicodeString;
    function Get_БезАкциз: UnicodeString;
    procedure Set_СумАкциз(Value: UnicodeString);
    procedure Set_БезАкциз(Value: UnicodeString);
  end;

{ TXMLСумНДСТип }

  TXMLСумНДСТип = class(TXMLNode, IXMLСумНДСТип)
  protected
    { IXMLСумНДСТип }
    function Get_СумНал: UnicodeString;
    function Get_БезНДС: UnicodeString;
    procedure Set_СумНал(Value: UnicodeString);
    procedure Set_БезНДС(Value: UnicodeString);
  end;

{ TXMLФайл_Документ_ТаблСчФакт_СведТов_СвТД }

  TXMLФайл_Документ_ТаблСчФакт_СведТов_СвТД = class(TXMLNode, IXMLФайл_Документ_ТаблСчФакт_СведТов_СвТД)
  protected
    { IXMLФайл_Документ_ТаблСчФакт_СведТов_СвТД }
    function Get_КодПроисх: UnicodeString;
    function Get_НомерТД: UnicodeString;
    procedure Set_КодПроисх(Value: UnicodeString);
    procedure Set_НомерТД(Value: UnicodeString);
  end;

{ TXMLФайл_Документ_ТаблСчФакт_СведТов_СвТДList }

  TXMLФайл_Документ_ТаблСчФакт_СведТов_СвТДList = class(TXMLNodeCollection, IXMLФайл_Документ_ТаблСчФакт_СведТов_СвТДList)
  protected
    { IXMLФайл_Документ_ТаблСчФакт_СведТов_СвТДList }
    function Add: IXMLФайл_Документ_ТаблСчФакт_СведТов_СвТД;
    function Insert(const Index: Integer): IXMLФайл_Документ_ТаблСчФакт_СведТов_СвТД;

    function Get_Item(Index: Integer): IXMLФайл_Документ_ТаблСчФакт_СведТов_СвТД;
  end;

{ TXMLФайл_Документ_ТаблСчФакт_СведТов_ДопСведТов }

  TXMLФайл_Документ_ТаблСчФакт_СведТов_ДопСведТов = class(TXMLNode, IXMLФайл_Документ_ТаблСчФакт_СведТов_ДопСведТов)
  protected
    { IXMLФайл_Документ_ТаблСчФакт_СведТов_ДопСведТов }
    function Get_ПрТовРаб: UnicodeString;
    function Get_ДопПризн: UnicodeString;
    function Get_КодТов: UnicodeString;
    function Get_НаимЕдИзм: UnicodeString;
    function Get_КрНаимСтрПр: UnicodeString;
    function Get_НадлОтп: UnicodeString;
    function Get_КорСчДебет: UnicodeString;
    function Get_КорСчКредит: UnicodeString;
    procedure Set_ПрТовРаб(Value: UnicodeString);
    procedure Set_ДопПризн(Value: UnicodeString);
    procedure Set_КодТов(Value: UnicodeString);
    procedure Set_НаимЕдИзм(Value: UnicodeString);
    procedure Set_КрНаимСтрПр(Value: UnicodeString);
    procedure Set_НадлОтп(Value: UnicodeString);
    procedure Set_КорСчДебет(Value: UnicodeString);
    procedure Set_КорСчКредит(Value: UnicodeString);
  end;

{ TXMLФайл_Документ_ТаблСчФакт_ВсегоОпл }

  TXMLФайл_Документ_ТаблСчФакт_ВсегоОпл = class(TXMLNode, IXMLФайл_Документ_ТаблСчФакт_ВсегоОпл)
  protected
    { IXMLФайл_Документ_ТаблСчФакт_ВсегоОпл }
    function Get_СтТовБезНДСВсего: UnicodeString;
    function Get_СтТовУчНалВсего: UnicodeString;
    function Get_СумНалВсего: IXMLСумНДСТип;
    function Get_НеттоВс: UnicodeString;
    procedure Set_СтТовБезНДСВсего(Value: UnicodeString);
    procedure Set_СтТовУчНалВсего(Value: UnicodeString);
    procedure Set_НеттоВс(Value: UnicodeString);
  public
    procedure AfterConstruction; override;
  end;

{ TXMLФайл_Документ_СвПродПер }

  TXMLФайл_Документ_СвПродПер = class(TXMLNode, IXMLФайл_Документ_СвПродПер)
  protected
    { IXMLФайл_Документ_СвПродПер }
    function Get_СвПер: IXMLФайл_Документ_СвПродПер_СвПер;
    function Get_ИнфПолФХЖ3: IXMLФайл_Документ_СвПродПер_ИнфПолФХЖ3;
  public
    procedure AfterConstruction; override;
  end;

{ TXMLФайл_Документ_СвПродПер_СвПер }

  TXMLФайл_Документ_СвПродПер_СвПер = class(TXMLNode, IXMLФайл_Документ_СвПродПер_СвПер)
  private
    FОснПер: IXMLФайл_Документ_СвПродПер_СвПер_ОснПерList;
  protected
    { IXMLФайл_Документ_СвПродПер_СвПер }
    function Get_СодОпер: UnicodeString;
    function Get_ВидОпер: UnicodeString;
    function Get_ДатаПер: UnicodeString;
    function Get_ОснПер: IXMLФайл_Документ_СвПродПер_СвПер_ОснПерList;
    function Get_СвЛицПер: IXMLФайл_Документ_СвПродПер_СвПер_СвЛицПер;
    function Get_ТранГруз: IXMLФайл_Документ_СвПродПер_СвПер_ТранГруз;
    function Get_СвПерВещи: IXMLФайл_Документ_СвПродПер_СвПер_СвПерВещи;
    procedure Set_СодОпер(Value: UnicodeString);
    procedure Set_ВидОпер(Value: UnicodeString);
    procedure Set_ДатаПер(Value: UnicodeString);
  public
    procedure AfterConstruction; override;
  end;

{ TXMLФайл_Документ_СвПродПер_СвПер_ОснПер }

  TXMLФайл_Документ_СвПродПер_СвПер_ОснПер = class(TXMLNode, IXMLФайл_Документ_СвПродПер_СвПер_ОснПер)
  protected
    { IXMLФайл_Документ_СвПродПер_СвПер_ОснПер }
    function Get_НаимОсн: UnicodeString;
    function Get_НомОсн: UnicodeString;
    function Get_ДатаОсн: UnicodeString;
    function Get_ДопСвОсн: UnicodeString;
    procedure Set_НаимОсн(Value: UnicodeString);
    procedure Set_НомОсн(Value: UnicodeString);
    procedure Set_ДатаОсн(Value: UnicodeString);
    procedure Set_ДопСвОсн(Value: UnicodeString);
  end;

{ TXMLФайл_Документ_СвПродПер_СвПер_ОснПерList }

  TXMLФайл_Документ_СвПродПер_СвПер_ОснПерList = class(TXMLNodeCollection, IXMLФайл_Документ_СвПродПер_СвПер_ОснПерList)
  protected
    { IXMLФайл_Документ_СвПродПер_СвПер_ОснПерList }
    function Add: IXMLФайл_Документ_СвПродПер_СвПер_ОснПер;
    function Insert(const Index: Integer): IXMLФайл_Документ_СвПродПер_СвПер_ОснПер;

    function Get_Item(Index: Integer): IXMLФайл_Документ_СвПродПер_СвПер_ОснПер;
  end;

{ TXMLФайл_Документ_СвПродПер_СвПер_СвЛицПер }

  TXMLФайл_Документ_СвПродПер_СвПер_СвЛицПер = class(TXMLNode, IXMLФайл_Документ_СвПродПер_СвПер_СвЛицПер)
  protected
    { IXMLФайл_Документ_СвПродПер_СвПер_СвЛицПер }
    function Get_РабОргПрод: IXMLФайл_Документ_СвПродПер_СвПер_СвЛицПер_РабОргПрод;
    function Get_ИнЛицо: IXMLФайл_Документ_СвПродПер_СвПер_СвЛицПер_ИнЛицо;
  public
    procedure AfterConstruction; override;
  end;

{ TXMLФайл_Документ_СвПродПер_СвПер_СвЛицПер_РабОргПрод }

  TXMLФайл_Документ_СвПродПер_СвПер_СвЛицПер_РабОргПрод = class(TXMLNode, IXMLФайл_Документ_СвПродПер_СвПер_СвЛицПер_РабОргПрод)
  protected
    { IXMLФайл_Документ_СвПродПер_СвПер_СвЛицПер_РабОргПрод }
    function Get_Должность: UnicodeString;
    function Get_ИныеСвед: UnicodeString;
    function Get_ОснПолн: UnicodeString;
    function Get_ФИО: IXMLФИОТип;
    procedure Set_Должность(Value: UnicodeString);
    procedure Set_ИныеСвед(Value: UnicodeString);
    procedure Set_ОснПолн(Value: UnicodeString);
  public
    procedure AfterConstruction; override;
  end;

{ TXMLФайл_Документ_СвПродПер_СвПер_СвЛицПер_ИнЛицо }

  TXMLФайл_Документ_СвПродПер_СвПер_СвЛицПер_ИнЛицо = class(TXMLNode, IXMLФайл_Документ_СвПродПер_СвПер_СвЛицПер_ИнЛицо)
  protected
    { IXMLФайл_Документ_СвПродПер_СвПер_СвЛицПер_ИнЛицо }
    function Get_ПредОргПер: IXMLФайл_Документ_СвПродПер_СвПер_СвЛицПер_ИнЛицо_ПредОргПер;
    function Get_ФЛПер: IXMLФайл_Документ_СвПродПер_СвПер_СвЛицПер_ИнЛицо_ФЛПер;
  public
    procedure AfterConstruction; override;
  end;

{ TXMLФайл_Документ_СвПродПер_СвПер_СвЛицПер_ИнЛицо_ПредОргПер }

  TXMLФайл_Документ_СвПродПер_СвПер_СвЛицПер_ИнЛицо_ПредОргПер = class(TXMLNode, IXMLФайл_Документ_СвПродПер_СвПер_СвЛицПер_ИнЛицо_ПредОргПер)
  protected
    { IXMLФайл_Документ_СвПродПер_СвПер_СвЛицПер_ИнЛицо_ПредОргПер }
    function Get_Должность: UnicodeString;
    function Get_ИныеСвед: UnicodeString;
    function Get_НаимОргПер: UnicodeString;
    function Get_ОснДоверОргПер: UnicodeString;
    function Get_ОснПолнПредПер: UnicodeString;
    function Get_ФИО: IXMLФИОТип;
    procedure Set_Должность(Value: UnicodeString);
    procedure Set_ИныеСвед(Value: UnicodeString);
    procedure Set_НаимОргПер(Value: UnicodeString);
    procedure Set_ОснДоверОргПер(Value: UnicodeString);
    procedure Set_ОснПолнПредПер(Value: UnicodeString);
  public
    procedure AfterConstruction; override;
  end;

{ TXMLФайл_Документ_СвПродПер_СвПер_СвЛицПер_ИнЛицо_ФЛПер }

  TXMLФайл_Документ_СвПродПер_СвПер_СвЛицПер_ИнЛицо_ФЛПер = class(TXMLNode, IXMLФайл_Документ_СвПродПер_СвПер_СвЛицПер_ИнЛицо_ФЛПер)
  protected
    { IXMLФайл_Документ_СвПродПер_СвПер_СвЛицПер_ИнЛицо_ФЛПер }
    function Get_ИныеСвед: UnicodeString;
    function Get_ОснДоверФЛ: UnicodeString;
    function Get_ФИО: IXMLФИОТип;
    procedure Set_ИныеСвед(Value: UnicodeString);
    procedure Set_ОснДоверФЛ(Value: UnicodeString);
  public
    procedure AfterConstruction; override;
  end;

{ TXMLФайл_Документ_СвПродПер_СвПер_ТранГруз }

  TXMLФайл_Документ_СвПродПер_СвПер_ТранГруз = class(TXMLNode, IXMLФайл_Документ_СвПродПер_СвПер_ТранГруз)
  private
    FТранНакл: IXMLФайл_Документ_СвПродПер_СвПер_ТранГруз_ТранНаклList;
  protected
    { IXMLФайл_Документ_СвПродПер_СвПер_ТранГруз }
    function Get_СвТранГруз: UnicodeString;
    function Get_ТранНакл: IXMLФайл_Документ_СвПродПер_СвПер_ТранГруз_ТранНаклList;
    function Get_Перевозчик: IXMLУчастникТип;
    procedure Set_СвТранГруз(Value: UnicodeString);
  public
    procedure AfterConstruction; override;
  end;

{ TXMLФайл_Документ_СвПродПер_СвПер_ТранГруз_ТранНакл }

  TXMLФайл_Документ_СвПродПер_СвПер_ТранГруз_ТранНакл = class(TXMLNode, IXMLФайл_Документ_СвПродПер_СвПер_ТранГруз_ТранНакл)
  protected
    { IXMLФайл_Документ_СвПродПер_СвПер_ТранГруз_ТранНакл }
    function Get_НомТранНакл: UnicodeString;
    function Get_ДатаТранНакл: UnicodeString;
    procedure Set_НомТранНакл(Value: UnicodeString);
    procedure Set_ДатаТранНакл(Value: UnicodeString);
  end;

{ TXMLФайл_Документ_СвПродПер_СвПер_ТранГруз_ТранНаклList }

  TXMLФайл_Документ_СвПродПер_СвПер_ТранГруз_ТранНаклList = class(TXMLNodeCollection, IXMLФайл_Документ_СвПродПер_СвПер_ТранГруз_ТранНаклList)
  protected
    { IXMLФайл_Документ_СвПродПер_СвПер_ТранГруз_ТранНаклList }
    function Add: IXMLФайл_Документ_СвПродПер_СвПер_ТранГруз_ТранНакл;
    function Insert(const Index: Integer): IXMLФайл_Документ_СвПродПер_СвПер_ТранГруз_ТранНакл;

    function Get_Item(Index: Integer): IXMLФайл_Документ_СвПродПер_СвПер_ТранГруз_ТранНакл;
  end;

{ TXMLФайл_Документ_СвПродПер_СвПер_СвПерВещи }

  TXMLФайл_Документ_СвПродПер_СвПер_СвПерВещи = class(TXMLNode, IXMLФайл_Документ_СвПродПер_СвПер_СвПерВещи)
  protected
    { IXMLФайл_Документ_СвПродПер_СвПер_СвПерВещи }
    function Get_ДатаПерВещ: UnicodeString;
    function Get_СвПерВещ: UnicodeString;
    procedure Set_ДатаПерВещ(Value: UnicodeString);
    procedure Set_СвПерВещ(Value: UnicodeString);
  end;

{ TXMLФайл_Документ_СвПродПер_ИнфПолФХЖ3 }

  TXMLФайл_Документ_СвПродПер_ИнфПолФХЖ3 = class(TXMLNodeCollection, IXMLФайл_Документ_СвПродПер_ИнфПолФХЖ3)
  protected
    { IXMLФайл_Документ_СвПродПер_ИнфПолФХЖ3 }
    function Get_ИдФайлИнфПол: UnicodeString;
    function Get_ТекстИнф(Index: Integer): IXMLТекстИнфТип;
    procedure Set_ИдФайлИнфПол(Value: UnicodeString);
    function Add: IXMLТекстИнфТип;
    function Insert(const Index: Integer): IXMLТекстИнфТип;
  public
    procedure AfterConstruction; override;
  end;

{ TXMLФайл_Документ_Подписант }

  TXMLФайл_Документ_Подписант = class(TXMLNode, IXMLФайл_Документ_Подписант)
  protected
    { IXMLФайл_Документ_Подписант }
    function Get_ОблПолн: UnicodeString;
    function Get_Статус: UnicodeString;
    function Get_ОснПолн: UnicodeString;
    function Get_ОснПолнОрг: UnicodeString;
    function Get_ФЛ: IXMLФайл_Документ_Подписант_ФЛ;
    function Get_ИП: IXMLСвИПТип;
    function Get_ЮЛ: IXMLФайл_Документ_Подписант_ЮЛ;
    procedure Set_ОблПолн(Value: UnicodeString);
    procedure Set_Статус(Value: UnicodeString);
    procedure Set_ОснПолн(Value: UnicodeString);
    procedure Set_ОснПолнОрг(Value: UnicodeString);
  public
    procedure AfterConstruction; override;
  end;

{ TXMLФайл_Документ_ПодписантList }

  TXMLФайл_Документ_ПодписантList = class(TXMLNodeCollection, IXMLФайл_Документ_ПодписантList)
  protected
    { IXMLФайл_Документ_ПодписантList }
    function Add: IXMLФайл_Документ_Подписант;
    function Insert(const Index: Integer): IXMLФайл_Документ_Подписант;

    function Get_Item(Index: Integer): IXMLФайл_Документ_Подписант;
  end;

{ TXMLФайл_Документ_Подписант_ФЛ }

  TXMLФайл_Документ_Подписант_ФЛ = class(TXMLNode, IXMLФайл_Документ_Подписант_ФЛ)
  protected
    { IXMLФайл_Документ_Подписант_ФЛ }
    function Get_ГосРегИПВыдДов: UnicodeString;
    function Get_ИННФЛ: UnicodeString;
    function Get_ИныеСвед: UnicodeString;
    function Get_ФИО: IXMLФИОТип;
    procedure Set_ГосРегИПВыдДов(Value: UnicodeString);
    procedure Set_ИННФЛ(Value: UnicodeString);
    procedure Set_ИныеСвед(Value: UnicodeString);
  public
    procedure AfterConstruction; override;
  end;

{ TXMLФайл_Документ_Подписант_ЮЛ }

  TXMLФайл_Документ_Подписант_ЮЛ = class(TXMLNode, IXMLФайл_Документ_Подписант_ЮЛ)
  protected
    { IXMLФайл_Документ_Подписант_ЮЛ }
    function Get_ГосРегИПВыдДов: UnicodeString;
    function Get_ИННЮЛ: UnicodeString;
    function Get_НаимОрг: UnicodeString;
    function Get_Должн: UnicodeString;
    function Get_ИныеСвед: UnicodeString;
    function Get_ФИО: IXMLФИОТип;
    procedure Set_ГосРегИПВыдДов(Value: UnicodeString);
    procedure Set_ИННЮЛ(Value: UnicodeString);
    procedure Set_НаимОрг(Value: UnicodeString);
    procedure Set_Должн(Value: UnicodeString);
    procedure Set_ИныеСвед(Value: UnicodeString);
  public
    procedure AfterConstruction; override;
  end;

{ Global Functions }

function GetФайл(Doc: IXMLDocument): IXMLФайл;
function LoadФайл(const FileName: string): IXMLФайл;
function NewФайл: IXMLФайл;

const
  TargetNamespace = '';

implementation

{ Global Functions }

function GetФайл(Doc: IXMLDocument): IXMLФайл;
begin
  Result := Doc.GetDocBinding('Файл', TXMLФайл, TargetNamespace) as IXMLФайл;
end;

function LoadФайл(const FileName: string): IXMLФайл;
begin
  Result := LoadXMLDocument(FileName).GetDocBinding('Файл', TXMLФайл, TargetNamespace) as IXMLФайл;
end;

function NewФайл: IXMLФайл;
begin
  Result := NewXMLDocument.GetDocBinding('Файл', TXMLФайл, TargetNamespace) as IXMLФайл;
end;

{ TXMLФайл }

procedure TXMLФайл.AfterConstruction;
begin
  RegisterChildNode('СвУчДокОбор', TXMLФайл_СвУчДокОбор);
  RegisterChildNode('Документ', TXMLФайл_Документ);
  inherited;
end;

function TXMLФайл.Get_ИдФайл: UnicodeString;
begin
  Result := AttributeNodes['ИдФайл'].Text;
end;

procedure TXMLФайл.Set_ИдФайл(Value: UnicodeString);
begin
  SetAttribute('ИдФайл', Value);
end;

function TXMLФайл.Get_ВерсФорм: UnicodeString;
begin
  Result := AttributeNodes['ВерсФорм'].Text;
end;

procedure TXMLФайл.Set_ВерсФорм(Value: UnicodeString);
begin
  SetAttribute('ВерсФорм', Value);
end;

function TXMLФайл.Get_ВерсПрог: UnicodeString;
begin
  Result := AttributeNodes['ВерсПрог'].Text;
end;

procedure TXMLФайл.Set_ВерсПрог(Value: UnicodeString);
begin
  SetAttribute('ВерсПрог', Value);
end;

function TXMLФайл.Get_СвУчДокОбор: IXMLФайл_СвУчДокОбор;
begin
  Result := ChildNodes['СвУчДокОбор'] as IXMLФайл_СвУчДокОбор;
end;

function TXMLФайл.Get_Документ: IXMLФайл_Документ;
begin
  Result := ChildNodes['Документ'] as IXMLФайл_Документ;
end;

{ TXMLФайл_СвУчДокОбор }

procedure TXMLФайл_СвУчДокОбор.AfterConstruction;
begin
  RegisterChildNode('СвОЭДОтпр', TXMLФайл_СвУчДокОбор_СвОЭДОтпр);
  inherited;
end;

function TXMLФайл_СвУчДокОбор.Get_ИдОтпр: UnicodeString;
begin
  Result := AttributeNodes['ИдОтпр'].Text;
end;

procedure TXMLФайл_СвУчДокОбор.Set_ИдОтпр(Value: UnicodeString);
begin
  SetAttribute('ИдОтпр', Value);
end;

function TXMLФайл_СвУчДокОбор.Get_ИдПол: UnicodeString;
begin
  Result := AttributeNodes['ИдПол'].Text;
end;

procedure TXMLФайл_СвУчДокОбор.Set_ИдПол(Value: UnicodeString);
begin
  SetAttribute('ИдПол', Value);
end;

function TXMLФайл_СвУчДокОбор.Get_СвОЭДОтпр: IXMLФайл_СвУчДокОбор_СвОЭДОтпр;
begin
  Result := ChildNodes['СвОЭДОтпр'] as IXMLФайл_СвУчДокОбор_СвОЭДОтпр;
end;

{ TXMLФайл_СвУчДокОбор_СвОЭДОтпр }

function TXMLФайл_СвУчДокОбор_СвОЭДОтпр.Get_НаимОрг: UnicodeString;
begin
  Result := AttributeNodes['НаимОрг'].Text;
end;

procedure TXMLФайл_СвУчДокОбор_СвОЭДОтпр.Set_НаимОрг(Value: UnicodeString);
begin
  SetAttribute('НаимОрг', Value);
end;

function TXMLФайл_СвУчДокОбор_СвОЭДОтпр.Get_ИННЮЛ: UnicodeString;
begin
  Result := AttributeNodes['ИННЮЛ'].Text;
end;

procedure TXMLФайл_СвУчДокОбор_СвОЭДОтпр.Set_ИННЮЛ(Value: UnicodeString);
begin
  SetAttribute('ИННЮЛ', Value);
end;

function TXMLФайл_СвУчДокОбор_СвОЭДОтпр.Get_ИдЭДО: UnicodeString;
begin
  Result := AttributeNodes['ИдЭДО'].Text;
end;

procedure TXMLФайл_СвУчДокОбор_СвОЭДОтпр.Set_ИдЭДО(Value: UnicodeString);
begin
  SetAttribute('ИдЭДО', Value);
end;

{ TXMLФайл_Документ }

procedure TXMLФайл_Документ.AfterConstruction;
begin
  RegisterChildNode('СвСчФакт', TXMLФайл_Документ_СвСчФакт);
  RegisterChildNode('ТаблСчФакт', TXMLФайл_Документ_ТаблСчФакт);
  RegisterChildNode('СвПродПер', TXMLФайл_Документ_СвПродПер);
  RegisterChildNode('Подписант', TXMLФайл_Документ_Подписант);
  FПодписант := CreateCollection(TXMLФайл_Документ_ПодписантList, IXMLФайл_Документ_Подписант, 'Подписант') as IXMLФайл_Документ_ПодписантList;
  inherited;
end;

function TXMLФайл_Документ.Get_КНД: UnicodeString;
begin
  Result := AttributeNodes['КНД'].Text;
end;

procedure TXMLФайл_Документ.Set_КНД(Value: UnicodeString);
begin
  SetAttribute('КНД', Value);
end;

function TXMLФайл_Документ.Get_Функция: UnicodeString;
begin
  Result := AttributeNodes['Функция'].Text;
end;

procedure TXMLФайл_Документ.Set_Функция(Value: UnicodeString);
begin
  SetAttribute('Функция', Value);
end;

function TXMLФайл_Документ.Get_ПоФактХЖ: UnicodeString;
begin
  Result := AttributeNodes['ПоФактХЖ'].Text;
end;

procedure TXMLФайл_Документ.Set_ПоФактХЖ(Value: UnicodeString);
begin
  SetAttribute('ПоФактХЖ', Value);
end;

function TXMLФайл_Документ.Get_НаимДокОпр: UnicodeString;
begin
  Result := AttributeNodes['НаимДокОпр'].Text;
end;

procedure TXMLФайл_Документ.Set_НаимДокОпр(Value: UnicodeString);
begin
  SetAttribute('НаимДокОпр', Value);
end;

function TXMLФайл_Документ.Get_ДатаИнфПр: UnicodeString;
begin
  Result := AttributeNodes['ДатаИнфПр'].Text;
end;

procedure TXMLФайл_Документ.Set_ДатаИнфПр(Value: UnicodeString);
begin
  SetAttribute('ДатаИнфПр', Value);
end;

function TXMLФайл_Документ.Get_ВремИнфПр: UnicodeString;
begin
  Result := AttributeNodes['ВремИнфПр'].Text;
end;

procedure TXMLФайл_Документ.Set_ВремИнфПр(Value: UnicodeString);
begin
  SetAttribute('ВремИнфПр', Value);
end;

function TXMLФайл_Документ.Get_НаимЭконСубСост: UnicodeString;
begin
  Result := AttributeNodes['НаимЭконСубСост'].Text;
end;

procedure TXMLФайл_Документ.Set_НаимЭконСубСост(Value: UnicodeString);
begin
  SetAttribute('НаимЭконСубСост', Value);
end;

function TXMLФайл_Документ.Get_ОснДоверОргСост: UnicodeString;
begin
  Result := AttributeNodes['ОснДоверОргСост'].Text;
end;

procedure TXMLФайл_Документ.Set_ОснДоверОргСост(Value: UnicodeString);
begin
  SetAttribute('ОснДоверОргСост', Value);
end;

function TXMLФайл_Документ.Get_СвСчФакт: IXMLФайл_Документ_СвСчФакт;
begin
  Result := ChildNodes['СвСчФакт'] as IXMLФайл_Документ_СвСчФакт;
end;

function TXMLФайл_Документ.Get_ТаблСчФакт: IXMLФайл_Документ_ТаблСчФакт;
begin
  Result := ChildNodes['ТаблСчФакт'] as IXMLФайл_Документ_ТаблСчФакт;
end;

function TXMLФайл_Документ.Get_СвПродПер: IXMLФайл_Документ_СвПродПер;
begin
  Result := ChildNodes['СвПродПер'] as IXMLФайл_Документ_СвПродПер;
end;

function TXMLФайл_Документ.Get_Подписант: IXMLФайл_Документ_ПодписантList;
begin
  Result := FПодписант;
end;

{ TXMLФайл_Документ_СвСчФакт }

procedure TXMLФайл_Документ_СвСчФакт.AfterConstruction;
begin
  RegisterChildNode('ИспрСчФ', TXMLФайл_Документ_СвСчФакт_ИспрСчФ);
  RegisterChildNode('СвПрод', TXMLУчастникТип);
  RegisterChildNode('ГрузОт', TXMLФайл_Документ_СвСчФакт_ГрузОт);
  RegisterChildNode('ГрузПолуч', TXMLУчастникТип);
  RegisterChildNode('СвПРД', TXMLФайл_Документ_СвСчФакт_СвПРД);
  RegisterChildNode('СвПокуп', TXMLУчастникТип);
  RegisterChildNode('ДопСвФХЖ1', TXMLФайл_Документ_СвСчФакт_ДопСвФХЖ1);
  RegisterChildNode('ИнфПолФХЖ1', TXMLФайл_Документ_СвСчФакт_ИнфПолФХЖ1);
  FСвПРД := CreateCollection(TXMLФайл_Документ_СвСчФакт_СвПРДList, IXMLФайл_Документ_СвСчФакт_СвПРД, 'СвПРД') as IXMLФайл_Документ_СвСчФакт_СвПРДList;
  inherited;
end;

function TXMLФайл_Документ_СвСчФакт.Get_НомерСчФ: UnicodeString;
begin
  Result := AttributeNodes['НомерСчФ'].Text;
end;

procedure TXMLФайл_Документ_СвСчФакт.Set_НомерСчФ(Value: UnicodeString);
begin
  SetAttribute('НомерСчФ', Value);
end;

function TXMLФайл_Документ_СвСчФакт.Get_ДатаСчФ: UnicodeString;
begin
  Result := AttributeNodes['ДатаСчФ'].Text;
end;

procedure TXMLФайл_Документ_СвСчФакт.Set_ДатаСчФ(Value: UnicodeString);
begin
  SetAttribute('ДатаСчФ', Value);
end;

function TXMLФайл_Документ_СвСчФакт.Get_КодОКВ: UnicodeString;
begin
  Result := AttributeNodes['КодОКВ'].Text;
end;

procedure TXMLФайл_Документ_СвСчФакт.Set_КодОКВ(Value: UnicodeString);
begin
  SetAttribute('КодОКВ', Value);
end;

function TXMLФайл_Документ_СвСчФакт.Get_ИспрСчФ: IXMLФайл_Документ_СвСчФакт_ИспрСчФ;
begin
  Result := ChildNodes['ИспрСчФ'] as IXMLФайл_Документ_СвСчФакт_ИспрСчФ;
end;

function TXMLФайл_Документ_СвСчФакт.Get_СвПрод: IXMLУчастникТип;
begin
  Result := ChildNodes['СвПрод'] as IXMLУчастникТип;
end;

function TXMLФайл_Документ_СвСчФакт.Get_ГрузОт: IXMLФайл_Документ_СвСчФакт_ГрузОт;
begin
  Result := ChildNodes['ГрузОт'] as IXMLФайл_Документ_СвСчФакт_ГрузОт;
end;

function TXMLФайл_Документ_СвСчФакт.Get_ГрузПолуч: IXMLУчастникТип;
begin
  Result := ChildNodes['ГрузПолуч'] as IXMLУчастникТип;
end;

function TXMLФайл_Документ_СвСчФакт.Get_СвПРД: IXMLФайл_Документ_СвСчФакт_СвПРДList;
begin
  Result := FСвПРД;
end;

function TXMLФайл_Документ_СвСчФакт.Get_СвПокуп: IXMLУчастникТип;
begin
  Result := ChildNodes['СвПокуп'] as IXMLУчастникТип;
end;

function TXMLФайл_Документ_СвСчФакт.Get_ДопСвФХЖ1: IXMLФайл_Документ_СвСчФакт_ДопСвФХЖ1;
begin
  Result := ChildNodes['ДопСвФХЖ1'] as IXMLФайл_Документ_СвСчФакт_ДопСвФХЖ1;
end;

function TXMLФайл_Документ_СвСчФакт.Get_ИнфПолФХЖ1: IXMLФайл_Документ_СвСчФакт_ИнфПолФХЖ1;
begin
  Result := ChildNodes['ИнфПолФХЖ1'] as IXMLФайл_Документ_СвСчФакт_ИнфПолФХЖ1;
end;

{ TXMLФайл_Документ_СвСчФакт_ИспрСчФ }

function TXMLФайл_Документ_СвСчФакт_ИспрСчФ.Get_НомИспрСчФ: Integer;
begin
  Result := AttributeNodes['НомИспрСчФ'].NodeValue;
end;

procedure TXMLФайл_Документ_СвСчФакт_ИспрСчФ.Set_НомИспрСчФ(Value: Integer);
begin
  SetAttribute('НомИспрСчФ', Value);
end;

function TXMLФайл_Документ_СвСчФакт_ИспрСчФ.Get_ДатаИспрСчФ: UnicodeString;
begin
  Result := AttributeNodes['ДатаИспрСчФ'].Text;
end;

procedure TXMLФайл_Документ_СвСчФакт_ИспрСчФ.Set_ДатаИспрСчФ(Value: UnicodeString);
begin
  SetAttribute('ДатаИспрСчФ', Value);
end;

{ TXMLУчастникТип }

procedure TXMLУчастникТип.AfterConstruction;
begin
  RegisterChildNode('ИдСв', TXMLУчастникТип_ИдСв);
  RegisterChildNode('Адрес', TXMLАдресТип);
  RegisterChildNode('Контакт', TXMLКонтактТип);
  RegisterChildNode('БанкРекв', TXMLУчастникТип_БанкРекв);
  inherited;
end;

function TXMLУчастникТип.Get_ОКПО: UnicodeString;
begin
  Result := AttributeNodes['ОКПО'].Text;
end;

procedure TXMLУчастникТип.Set_ОКПО(Value: UnicodeString);
begin
  SetAttribute('ОКПО', Value);
end;

function TXMLУчастникТип.Get_СтруктПодр: UnicodeString;
begin
  Result := AttributeNodes['СтруктПодр'].Text;
end;

procedure TXMLУчастникТип.Set_СтруктПодр(Value: UnicodeString);
begin
  SetAttribute('СтруктПодр', Value);
end;

function TXMLУчастникТип.Get_ИнфДляУчаст: UnicodeString;
begin
  Result := AttributeNodes['ИнфДляУчаст'].Text;
end;

procedure TXMLУчастникТип.Set_ИнфДляУчаст(Value: UnicodeString);
begin
  SetAttribute('ИнфДляУчаст', Value);
end;

function TXMLУчастникТип.Get_ИдСв: IXMLУчастникТип_ИдСв;
begin
  Result := ChildNodes['ИдСв'] as IXMLУчастникТип_ИдСв;
end;

function TXMLУчастникТип.Get_Адрес: IXMLАдресТип;
begin
  Result := ChildNodes['Адрес'] as IXMLАдресТип;
end;

function TXMLУчастникТип.Get_Контакт: IXMLКонтактТип;
begin
  Result := ChildNodes['Контакт'] as IXMLКонтактТип;
end;

function TXMLУчастникТип.Get_БанкРекв: IXMLУчастникТип_БанкРекв;
begin
  Result := ChildNodes['БанкРекв'] as IXMLУчастникТип_БанкРекв;
end;

{ TXMLУчастникТип_ИдСв }

procedure TXMLУчастникТип_ИдСв.AfterConstruction;
begin
  RegisterChildNode('СвИП', TXMLСвИПТип);
  RegisterChildNode('СвЮЛУч', TXMLУчастникТип_ИдСв_СвЮЛУч);
  RegisterChildNode('СвИнНеУч', TXMLУчастникТип_ИдСв_СвИнНеУч);
  inherited;
end;

function TXMLУчастникТип_ИдСв.Get_СвИП: IXMLСвИПТип;
begin
  Result := ChildNodes['СвИП'] as IXMLСвИПТип;
end;

function TXMLУчастникТип_ИдСв.Get_СвЮЛУч: IXMLУчастникТип_ИдСв_СвЮЛУч;
begin
  Result := ChildNodes['СвЮЛУч'] as IXMLУчастникТип_ИдСв_СвЮЛУч;
end;

function TXMLУчастникТип_ИдСв.Get_СвИнНеУч: IXMLУчастникТип_ИдСв_СвИнНеУч;
begin
  Result := ChildNodes['СвИнНеУч'] as IXMLУчастникТип_ИдСв_СвИнНеУч;
end;

{ TXMLСвИПТип }

procedure TXMLСвИПТип.AfterConstruction;
begin
  RegisterChildNode('ФИО', TXMLФИОТип);
  inherited;
end;

function TXMLСвИПТип.Get_ИННФЛ: UnicodeString;
begin
  Result := AttributeNodes['ИННФЛ'].Text;
end;

procedure TXMLСвИПТип.Set_ИННФЛ(Value: UnicodeString);
begin
  SetAttribute('ИННФЛ', Value);
end;

function TXMLСвИПТип.Get_СвГосРегИП: UnicodeString;
begin
  Result := AttributeNodes['СвГосРегИП'].Text;
end;

procedure TXMLСвИПТип.Set_СвГосРегИП(Value: UnicodeString);
begin
  SetAttribute('СвГосРегИП', Value);
end;

function TXMLСвИПТип.Get_ИныеСвед: UnicodeString;
begin
  Result := AttributeNodes['ИныеСвед'].Text;
end;

procedure TXMLСвИПТип.Set_ИныеСвед(Value: UnicodeString);
begin
  SetAttribute('ИныеСвед', Value);
end;

function TXMLСвИПТип.Get_ФИО: IXMLФИОТип;
begin
  Result := ChildNodes['ФИО'] as IXMLФИОТип;
end;

{ TXMLФИОТип }

function TXMLФИОТип.Get_Фамилия: UnicodeString;
begin
  Result := AttributeNodes['Фамилия'].Text;
end;

procedure TXMLФИОТип.Set_Фамилия(Value: UnicodeString);
begin
  SetAttribute('Фамилия', Value);
end;

function TXMLФИОТип.Get_Имя: UnicodeString;
begin
  Result := AttributeNodes['Имя'].Text;
end;

procedure TXMLФИОТип.Set_Имя(Value: UnicodeString);
begin
  SetAttribute('Имя', Value);
end;

function TXMLФИОТип.Get_Отчество: UnicodeString;
begin
  Result := AttributeNodes['Отчество'].Text;
end;

procedure TXMLФИОТип.Set_Отчество(Value: UnicodeString);
begin
  SetAttribute('Отчество', Value);
end;

{ TXMLУчастникТип_ИдСв_СвЮЛУч }

function TXMLУчастникТип_ИдСв_СвЮЛУч.Get_НаимОрг: UnicodeString;
begin
  Result := AttributeNodes['НаимОрг'].Text;
end;

procedure TXMLУчастникТип_ИдСв_СвЮЛУч.Set_НаимОрг(Value: UnicodeString);
begin
  SetAttribute('НаимОрг', Value);
end;

function TXMLУчастникТип_ИдСв_СвЮЛУч.Get_ИННЮЛ: UnicodeString;
begin
  Result := AttributeNodes['ИННЮЛ'].Text;
end;

procedure TXMLУчастникТип_ИдСв_СвЮЛУч.Set_ИННЮЛ(Value: UnicodeString);
begin
  SetAttribute('ИННЮЛ', Value);
end;

function TXMLУчастникТип_ИдСв_СвЮЛУч.Get_КПП: UnicodeString;
begin
  Result := AttributeNodes['КПП'].Text;
end;

procedure TXMLУчастникТип_ИдСв_СвЮЛУч.Set_КПП(Value: UnicodeString);
begin
  SetAttribute('КПП', Value);
end;

{ TXMLУчастникТип_ИдСв_СвИнНеУч }

function TXMLУчастникТип_ИдСв_СвИнНеУч.Get_НаимОрг: UnicodeString;
begin
  Result := AttributeNodes['НаимОрг'].Text;
end;

procedure TXMLУчастникТип_ИдСв_СвИнНеУч.Set_НаимОрг(Value: UnicodeString);
begin
  SetAttribute('НаимОрг', Value);
end;

function TXMLУчастникТип_ИдСв_СвИнНеУч.Get_ИныеСвед: UnicodeString;
begin
  Result := AttributeNodes['ИныеСвед'].Text;
end;

procedure TXMLУчастникТип_ИдСв_СвИнНеУч.Set_ИныеСвед(Value: UnicodeString);
begin
  SetAttribute('ИныеСвед', Value);
end;

{ TXMLАдресТип }

procedure TXMLАдресТип.AfterConstruction;
begin
  RegisterChildNode('АдрРФ', TXMLАдрРФТип);
  RegisterChildNode('АдрИнф', TXMLАдрИнфТип);
  inherited;
end;

function TXMLАдресТип.Get_АдрРФ: IXMLАдрРФТип;
begin
  Result := ChildNodes['АдрРФ'] as IXMLАдрРФТип;
end;

function TXMLАдресТип.Get_АдрИнф: IXMLАдрИнфТип;
begin
  Result := ChildNodes['АдрИнф'] as IXMLАдрИнфТип;
end;

function TXMLАдресТип.Get_КодГАР: UnicodeString;
begin
  Result := ChildNodes['КодГАР'].Text;
end;

procedure TXMLАдресТип.Set_КодГАР(Value: UnicodeString);
begin
  ChildNodes['КодГАР'].NodeValue := Value;
end;

{ TXMLАдрРФТип }

function TXMLАдрРФТип.Get_Индекс: UnicodeString;
begin
  Result := AttributeNodes['Индекс'].Text;
end;

procedure TXMLАдрРФТип.Set_Индекс(Value: UnicodeString);
begin
  SetAttribute('Индекс', Value);
end;

function TXMLАдрРФТип.Get_КодРегион: UnicodeString;
begin
  Result := AttributeNodes['КодРегион'].Text;
end;

procedure TXMLАдрРФТип.Set_КодРегион(Value: UnicodeString);
begin
  SetAttribute('КодРегион', Value);
end;

function TXMLАдрРФТип.Get_Район: UnicodeString;
begin
  Result := AttributeNodes['Район'].Text;
end;

procedure TXMLАдрРФТип.Set_Район(Value: UnicodeString);
begin
  SetAttribute('Район', Value);
end;

function TXMLАдрРФТип.Get_Город: UnicodeString;
begin
  Result := AttributeNodes['Город'].Text;
end;

procedure TXMLАдрРФТип.Set_Город(Value: UnicodeString);
begin
  SetAttribute('Город', Value);
end;

function TXMLАдрРФТип.Get_НаселПункт: UnicodeString;
begin
  Result := AttributeNodes['НаселПункт'].Text;
end;

procedure TXMLАдрРФТип.Set_НаселПункт(Value: UnicodeString);
begin
  SetAttribute('НаселПункт', Value);
end;

function TXMLАдрРФТип.Get_Улица: UnicodeString;
begin
  Result := AttributeNodes['Улица'].Text;
end;

procedure TXMLАдрРФТип.Set_Улица(Value: UnicodeString);
begin
  SetAttribute('Улица', Value);
end;

function TXMLАдрРФТип.Get_Дом: UnicodeString;
begin
  Result := AttributeNodes['Дом'].Text;
end;

procedure TXMLАдрРФТип.Set_Дом(Value: UnicodeString);
begin
  SetAttribute('Дом', Value);
end;

function TXMLАдрРФТип.Get_Корпус: UnicodeString;
begin
  Result := AttributeNodes['Корпус'].Text;
end;

procedure TXMLАдрРФТип.Set_Корпус(Value: UnicodeString);
begin
  SetAttribute('Корпус', Value);
end;

function TXMLАдрРФТип.Get_Кварт: UnicodeString;
begin
  Result := AttributeNodes['Кварт'].Text;
end;

procedure TXMLАдрРФТип.Set_Кварт(Value: UnicodeString);
begin
  SetAttribute('Кварт', Value);
end;

{ TXMLАдрИнфТип }

function TXMLАдрИнфТип.Get_КодСтр: UnicodeString;
begin
  Result := AttributeNodes['КодСтр'].Text;
end;

procedure TXMLАдрИнфТип.Set_КодСтр(Value: UnicodeString);
begin
  SetAttribute('КодСтр', Value);
end;

function TXMLАдрИнфТип.Get_АдрТекст: UnicodeString;
begin
  Result := AttributeNodes['АдрТекст'].Text;
end;

procedure TXMLАдрИнфТип.Set_АдрТекст(Value: UnicodeString);
begin
  SetAttribute('АдрТекст', Value);
end;

{ TXMLКонтактТип }

function TXMLКонтактТип.Get_Тлф: UnicodeString;
begin
  Result := AttributeNodes['Тлф'].Text;
end;

procedure TXMLКонтактТип.Set_Тлф(Value: UnicodeString);
begin
  SetAttribute('Тлф', Value);
end;

function TXMLКонтактТип.Get_ЭлПочта: UnicodeString;
begin
  Result := AttributeNodes['ЭлПочта'].Text;
end;

procedure TXMLКонтактТип.Set_ЭлПочта(Value: UnicodeString);
begin
  SetAttribute('ЭлПочта', Value);
end;

{ TXMLУчастникТип_БанкРекв }

procedure TXMLУчастникТип_БанкРекв.AfterConstruction;
begin
  RegisterChildNode('СвБанк', TXMLУчастникТип_БанкРекв_СвБанк);
  inherited;
end;

function TXMLУчастникТип_БанкРекв.Get_НомерСчета: UnicodeString;
begin
  Result := AttributeNodes['НомерСчета'].Text;
end;

procedure TXMLУчастникТип_БанкРекв.Set_НомерСчета(Value: UnicodeString);
begin
  SetAttribute('НомерСчета', Value);
end;

function TXMLУчастникТип_БанкРекв.Get_СвБанк: IXMLУчастникТип_БанкРекв_СвБанк;
begin
  Result := ChildNodes['СвБанк'] as IXMLУчастникТип_БанкРекв_СвБанк;
end;

{ TXMLУчастникТип_БанкРекв_СвБанк }

function TXMLУчастникТип_БанкРекв_СвБанк.Get_НаимБанк: UnicodeString;
begin
  Result := AttributeNodes['НаимБанк'].Text;
end;

procedure TXMLУчастникТип_БанкРекв_СвБанк.Set_НаимБанк(Value: UnicodeString);
begin
  SetAttribute('НаимБанк', Value);
end;

function TXMLУчастникТип_БанкРекв_СвБанк.Get_БИК: UnicodeString;
begin
  Result := AttributeNodes['БИК'].Text;
end;

procedure TXMLУчастникТип_БанкРекв_СвБанк.Set_БИК(Value: UnicodeString);
begin
  SetAttribute('БИК', Value);
end;

function TXMLУчастникТип_БанкРекв_СвБанк.Get_КорСчет: UnicodeString;
begin
  Result := AttributeNodes['КорСчет'].Text;
end;

procedure TXMLУчастникТип_БанкРекв_СвБанк.Set_КорСчет(Value: UnicodeString);
begin
  SetAttribute('КорСчет', Value);
end;

{ TXMLФайл_Документ_СвСчФакт_ГрузОт }

procedure TXMLФайл_Документ_СвСчФакт_ГрузОт.AfterConstruction;
begin
  RegisterChildNode('ГрузОтпр', TXMLУчастникТип);
  inherited;
end;

function TXMLФайл_Документ_СвСчФакт_ГрузОт.Get_ГрузОтпр: IXMLУчастникТип;
begin
  Result := ChildNodes['ГрузОтпр'] as IXMLУчастникТип;
end;

function TXMLФайл_Документ_СвСчФакт_ГрузОт.Get_ОнЖе: UnicodeString;
begin
  Result := ChildNodes['ОнЖе'].Text;
end;

procedure TXMLФайл_Документ_СвСчФакт_ГрузОт.Set_ОнЖе(Value: UnicodeString);
begin
  ChildNodes['ОнЖе'].NodeValue := Value;
end;

{ TXMLФайл_Документ_СвСчФакт_СвПРД }

function TXMLФайл_Документ_СвСчФакт_СвПРД.Get_НомерПРД: UnicodeString;
begin
  Result := AttributeNodes['НомерПРД'].Text;
end;

procedure TXMLФайл_Документ_СвСчФакт_СвПРД.Set_НомерПРД(Value: UnicodeString);
begin
  SetAttribute('НомерПРД', Value);
end;

function TXMLФайл_Документ_СвСчФакт_СвПРД.Get_ДатаПРД: UnicodeString;
begin
  Result := AttributeNodes['ДатаПРД'].Text;
end;

procedure TXMLФайл_Документ_СвСчФакт_СвПРД.Set_ДатаПРД(Value: UnicodeString);
begin
  SetAttribute('ДатаПРД', Value);
end;

{ TXMLФайл_Документ_СвСчФакт_СвПРДList }

function TXMLФайл_Документ_СвСчФакт_СвПРДList.Add: IXMLФайл_Документ_СвСчФакт_СвПРД;
begin
  Result := AddItem(-1) as IXMLФайл_Документ_СвСчФакт_СвПРД;
end;

function TXMLФайл_Документ_СвСчФакт_СвПРДList.Insert(const Index: Integer): IXMLФайл_Документ_СвСчФакт_СвПРД;
begin
  Result := AddItem(Index) as IXMLФайл_Документ_СвСчФакт_СвПРД;
end;

function TXMLФайл_Документ_СвСчФакт_СвПРДList.Get_Item(Index: Integer): IXMLФайл_Документ_СвСчФакт_СвПРД;
begin
  Result := List[Index] as IXMLФайл_Документ_СвСчФакт_СвПРД;
end;

{ TXMLФайл_Документ_СвСчФакт_ДопСвФХЖ1 }

function TXMLФайл_Документ_СвСчФакт_ДопСвФХЖ1.Get_ИдГосКон: UnicodeString;
begin
  Result := AttributeNodes['ИдГосКон'].Text;
end;

procedure TXMLФайл_Документ_СвСчФакт_ДопСвФХЖ1.Set_ИдГосКон(Value: UnicodeString);
begin
  SetAttribute('ИдГосКон', Value);
end;

function TXMLФайл_Документ_СвСчФакт_ДопСвФХЖ1.Get_НаимОКВ: UnicodeString;
begin
  Result := AttributeNodes['НаимОКВ'].Text;
end;

procedure TXMLФайл_Документ_СвСчФакт_ДопСвФХЖ1.Set_НаимОКВ(Value: UnicodeString);
begin
  SetAttribute('НаимОКВ', Value);
end;

function TXMLФайл_Документ_СвСчФакт_ДопСвФХЖ1.Get_КурсВал: UnicodeString;
begin
  Result := AttributeNodes['КурсВал'].Text;
end;

procedure TXMLФайл_Документ_СвСчФакт_ДопСвФХЖ1.Set_КурсВал(Value: UnicodeString);
begin
  SetAttribute('КурсВал', Value);
end;

{ TXMLФайл_Документ_СвСчФакт_ИнфПолФХЖ1 }

procedure TXMLФайл_Документ_СвСчФакт_ИнфПолФХЖ1.AfterConstruction;
begin
  RegisterChildNode('ТекстИнф', TXMLТекстИнфТип);
  ItemTag := 'ТекстИнф';
  ItemInterface := IXMLТекстИнфТип;
  inherited;
end;

function TXMLФайл_Документ_СвСчФакт_ИнфПолФХЖ1.Get_ИдФайлИнфПол: UnicodeString;
begin
  Result := AttributeNodes['ИдФайлИнфПол'].Text;
end;

procedure TXMLФайл_Документ_СвСчФакт_ИнфПолФХЖ1.Set_ИдФайлИнфПол(Value: UnicodeString);
begin
  SetAttribute('ИдФайлИнфПол', Value);
end;

function TXMLФайл_Документ_СвСчФакт_ИнфПолФХЖ1.Get_ТекстИнф(Index: Integer): IXMLТекстИнфТип;
begin
  Result := List[Index] as IXMLТекстИнфТип;
end;

function TXMLФайл_Документ_СвСчФакт_ИнфПолФХЖ1.Add: IXMLТекстИнфТип;
begin
  Result := AddItem(-1) as IXMLТекстИнфТип;
end;

function TXMLФайл_Документ_СвСчФакт_ИнфПолФХЖ1.Insert(const Index: Integer): IXMLТекстИнфТип;
begin
  Result := AddItem(Index) as IXMLТекстИнфТип;
end;

{ TXMLТекстИнфТип }

function TXMLТекстИнфТип.Get_Идентиф: UnicodeString;
begin
  Result := AttributeNodes['Идентиф'].Text;
end;

procedure TXMLТекстИнфТип.Set_Идентиф(Value: UnicodeString);
begin
  SetAttribute('Идентиф', Value);
end;

function TXMLТекстИнфТип.Get_Значен: UnicodeString;
begin
  Result := AttributeNodes['Значен'].Text;
end;

procedure TXMLТекстИнфТип.Set_Значен(Value: UnicodeString);
begin
  SetAttribute('Значен', Value);
end;

{ TXMLТекстИнфТипList }

function TXMLТекстИнфТипList.Add: IXMLТекстИнфТип;
begin
  Result := AddItem(-1) as IXMLТекстИнфТип;
end;

function TXMLТекстИнфТипList.Insert(const Index: Integer): IXMLТекстИнфТип;
begin
  Result := AddItem(Index) as IXMLТекстИнфТип;
end;

function TXMLТекстИнфТипList.Get_Item(Index: Integer): IXMLТекстИнфТип;
begin
  Result := List[Index] as IXMLТекстИнфТип;
end;

{ TXMLФайл_Документ_ТаблСчФакт }

procedure TXMLФайл_Документ_ТаблСчФакт.AfterConstruction;
begin
  RegisterChildNode('СведТов', TXMLФайл_Документ_ТаблСчФакт_СведТов);
  RegisterChildNode('ВсегоОпл', TXMLФайл_Документ_ТаблСчФакт_ВсегоОпл);
  FСведТов := CreateCollection(TXMLФайл_Документ_ТаблСчФакт_СведТовList, IXMLФайл_Документ_ТаблСчФакт_СведТов, 'СведТов') as IXMLФайл_Документ_ТаблСчФакт_СведТовList;
  inherited;
end;

function TXMLФайл_Документ_ТаблСчФакт.Get_СведТов: IXMLФайл_Документ_ТаблСчФакт_СведТовList;
begin
  Result := FСведТов;
end;

function TXMLФайл_Документ_ТаблСчФакт.Get_ВсегоОпл: IXMLФайл_Документ_ТаблСчФакт_ВсегоОпл;
begin
  Result := ChildNodes['ВсегоОпл'] as IXMLФайл_Документ_ТаблСчФакт_ВсегоОпл;
end;

{ TXMLФайл_Документ_ТаблСчФакт_СведТов }

procedure TXMLФайл_Документ_ТаблСчФакт_СведТов.AfterConstruction;
begin
  RegisterChildNode('Акциз', TXMLСумАкцизТип);
  RegisterChildNode('СумНал', TXMLСумНДСТип);
  RegisterChildNode('СвТД', TXMLФайл_Документ_ТаблСчФакт_СведТов_СвТД);
  RegisterChildNode('ИнфПолФХЖ2', TXMLТекстИнфТип);
  RegisterChildNode('ДопСведТов', TXMLФайл_Документ_ТаблСчФакт_СведТов_ДопСведТов);
  FСвТД := CreateCollection(TXMLФайл_Документ_ТаблСчФакт_СведТов_СвТДList, IXMLФайл_Документ_ТаблСчФакт_СведТов_СвТД, 'СвТД') as IXMLФайл_Документ_ТаблСчФакт_СведТов_СвТДList;
  FИнфПолФХЖ2 := CreateCollection(TXMLТекстИнфТипList, IXMLТекстИнфТип, 'ИнфПолФХЖ2') as IXMLТекстИнфТипList;
  inherited;
end;

function TXMLФайл_Документ_ТаблСчФакт_СведТов.Get_НомСтр: Integer;
begin
  Result := AttributeNodes['НомСтр'].NodeValue;
end;

procedure TXMLФайл_Документ_ТаблСчФакт_СведТов.Set_НомСтр(Value: Integer);
begin
  SetAttribute('НомСтр', Value);
end;

function TXMLФайл_Документ_ТаблСчФакт_СведТов.Get_НаимТов: UnicodeString;
begin
  Result := AttributeNodes['НаимТов'].Text;
end;

procedure TXMLФайл_Документ_ТаблСчФакт_СведТов.Set_НаимТов(Value: UnicodeString);
begin
  SetAttribute('НаимТов', Value);
end;

function TXMLФайл_Документ_ТаблСчФакт_СведТов.Get_ОКЕИ_Тов: UnicodeString;
begin
  Result := AttributeNodes['ОКЕИ_Тов'].Text;
end;

procedure TXMLФайл_Документ_ТаблСчФакт_СведТов.Set_ОКЕИ_Тов(Value: UnicodeString);
begin
  SetAttribute('ОКЕИ_Тов', Value);
end;

function TXMLФайл_Документ_ТаблСчФакт_СведТов.Get_КолТов: UnicodeString;
begin
  Result := AttributeNodes['КолТов'].Text;
end;

procedure TXMLФайл_Документ_ТаблСчФакт_СведТов.Set_КолТов(Value: UnicodeString);
begin
  SetAttribute('КолТов', Value);
end;

function TXMLФайл_Документ_ТаблСчФакт_СведТов.Get_ЦенаТов: UnicodeString;
begin
  Result := AttributeNodes['ЦенаТов'].Text;
end;

procedure TXMLФайл_Документ_ТаблСчФакт_СведТов.Set_ЦенаТов(Value: UnicodeString);
begin
  SetAttribute('ЦенаТов', Value);
end;

function TXMLФайл_Документ_ТаблСчФакт_СведТов.Get_СтТовБезНДС: UnicodeString;
begin
  Result := AttributeNodes['СтТовБезНДС'].Text;
end;

procedure TXMLФайл_Документ_ТаблСчФакт_СведТов.Set_СтТовБезНДС(Value: UnicodeString);
begin
  SetAttribute('СтТовБезНДС', Value);
end;

function TXMLФайл_Документ_ТаблСчФакт_СведТов.Get_НалСт: UnicodeString;
begin
  Result := AttributeNodes['НалСт'].Text;
end;

procedure TXMLФайл_Документ_ТаблСчФакт_СведТов.Set_НалСт(Value: UnicodeString);
begin
  SetAttribute('НалСт', Value);
end;

function TXMLФайл_Документ_ТаблСчФакт_СведТов.Get_СтТовУчНал: UnicodeString;
begin
  Result := AttributeNodes['СтТовУчНал'].Text;
end;

procedure TXMLФайл_Документ_ТаблСчФакт_СведТов.Set_СтТовУчНал(Value: UnicodeString);
begin
  SetAttribute('СтТовУчНал', Value);
end;

function TXMLФайл_Документ_ТаблСчФакт_СведТов.Get_Акциз: IXMLСумАкцизТип;
begin
  Result := ChildNodes['Акциз'] as IXMLСумАкцизТип;
end;

function TXMLФайл_Документ_ТаблСчФакт_СведТов.Get_СумНал: IXMLСумНДСТип;
begin
  Result := ChildNodes['СумНал'] as IXMLСумНДСТип;
end;

function TXMLФайл_Документ_ТаблСчФакт_СведТов.Get_СвТД: IXMLФайл_Документ_ТаблСчФакт_СведТов_СвТДList;
begin
  Result := FСвТД;
end;

function TXMLФайл_Документ_ТаблСчФакт_СведТов.Get_ИнфПолФХЖ2: IXMLТекстИнфТипList;
begin
  Result := FИнфПолФХЖ2;
end;

function TXMLФайл_Документ_ТаблСчФакт_СведТов.Get_ДопСведТов: IXMLФайл_Документ_ТаблСчФакт_СведТов_ДопСведТов;
begin
  Result := ChildNodes['ДопСведТов'] as IXMLФайл_Документ_ТаблСчФакт_СведТов_ДопСведТов;
end;

{ TXMLФайл_Документ_ТаблСчФакт_СведТовList }

function TXMLФайл_Документ_ТаблСчФакт_СведТовList.Add: IXMLФайл_Документ_ТаблСчФакт_СведТов;
begin
  Result := AddItem(-1) as IXMLФайл_Документ_ТаблСчФакт_СведТов;
end;

function TXMLФайл_Документ_ТаблСчФакт_СведТовList.Insert(const Index: Integer): IXMLФайл_Документ_ТаблСчФакт_СведТов;
begin
  Result := AddItem(Index) as IXMLФайл_Документ_ТаблСчФакт_СведТов;
end;

function TXMLФайл_Документ_ТаблСчФакт_СведТовList.Get_Item(Index: Integer): IXMLФайл_Документ_ТаблСчФакт_СведТов;
begin
  Result := List[Index] as IXMLФайл_Документ_ТаблСчФакт_СведТов;
end;

{ TXMLСумАкцизТип }

function TXMLСумАкцизТип.Get_СумАкциз: UnicodeString;
begin
  Result := ChildNodes['СумАкциз'].Text;
end;

procedure TXMLСумАкцизТип.Set_СумАкциз(Value: UnicodeString);
begin
  ChildNodes['СумАкциз'].NodeValue := Value;
end;

function TXMLСумАкцизТип.Get_БезАкциз: UnicodeString;
begin
  Result := ChildNodes['БезАкциз'].Text;
end;

procedure TXMLСумАкцизТип.Set_БезАкциз(Value: UnicodeString);
begin
  ChildNodes['БезАкциз'].NodeValue := Value;
end;

{ TXMLСумНДСТип }

function TXMLСумНДСТип.Get_СумНал: UnicodeString;
begin
  Result := ChildNodes['СумНал'].Text;
end;

procedure TXMLСумНДСТип.Set_СумНал(Value: UnicodeString);
begin
  ChildNodes['СумНал'].NodeValue := Value;
end;

function TXMLСумНДСТип.Get_БезНДС: UnicodeString;
begin
  Result := ChildNodes['БезНДС'].Text;
end;

procedure TXMLСумНДСТип.Set_БезНДС(Value: UnicodeString);
begin
  ChildNodes['БезНДС'].NodeValue := Value;
end;

{ TXMLФайл_Документ_ТаблСчФакт_СведТов_СвТД }

function TXMLФайл_Документ_ТаблСчФакт_СведТов_СвТД.Get_КодПроисх: UnicodeString;
begin
  Result := AttributeNodes['КодПроисх'].Text;
end;

procedure TXMLФайл_Документ_ТаблСчФакт_СведТов_СвТД.Set_КодПроисх(Value: UnicodeString);
begin
  SetAttribute('КодПроисх', Value);
end;

function TXMLФайл_Документ_ТаблСчФакт_СведТов_СвТД.Get_НомерТД: UnicodeString;
begin
  Result := AttributeNodes['НомерТД'].Text;
end;

procedure TXMLФайл_Документ_ТаблСчФакт_СведТов_СвТД.Set_НомерТД(Value: UnicodeString);
begin
  SetAttribute('НомерТД', Value);
end;

{ TXMLФайл_Документ_ТаблСчФакт_СведТов_СвТДList }

function TXMLФайл_Документ_ТаблСчФакт_СведТов_СвТДList.Add: IXMLФайл_Документ_ТаблСчФакт_СведТов_СвТД;
begin
  Result := AddItem(-1) as IXMLФайл_Документ_ТаблСчФакт_СведТов_СвТД;
end;

function TXMLФайл_Документ_ТаблСчФакт_СведТов_СвТДList.Insert(const Index: Integer): IXMLФайл_Документ_ТаблСчФакт_СведТов_СвТД;
begin
  Result := AddItem(Index) as IXMLФайл_Документ_ТаблСчФакт_СведТов_СвТД;
end;

function TXMLФайл_Документ_ТаблСчФакт_СведТов_СвТДList.Get_Item(Index: Integer): IXMLФайл_Документ_ТаблСчФакт_СведТов_СвТД;
begin
  Result := List[Index] as IXMLФайл_Документ_ТаблСчФакт_СведТов_СвТД;
end;

{ TXMLФайл_Документ_ТаблСчФакт_СведТов_ДопСведТов }

function TXMLФайл_Документ_ТаблСчФакт_СведТов_ДопСведТов.Get_ПрТовРаб: UnicodeString;
begin
  Result := AttributeNodes['ПрТовРаб'].Text;
end;

procedure TXMLФайл_Документ_ТаблСчФакт_СведТов_ДопСведТов.Set_ПрТовРаб(Value: UnicodeString);
begin
  SetAttribute('ПрТовРаб', Value);
end;

function TXMLФайл_Документ_ТаблСчФакт_СведТов_ДопСведТов.Get_ДопПризн: UnicodeString;
begin
  Result := AttributeNodes['ДопПризн'].Text;
end;

procedure TXMLФайл_Документ_ТаблСчФакт_СведТов_ДопСведТов.Set_ДопПризн(Value: UnicodeString);
begin
  SetAttribute('ДопПризн', Value);
end;

function TXMLФайл_Документ_ТаблСчФакт_СведТов_ДопСведТов.Get_КодТов: UnicodeString;
begin
  Result := AttributeNodes['КодТов'].Text;
end;

procedure TXMLФайл_Документ_ТаблСчФакт_СведТов_ДопСведТов.Set_КодТов(Value: UnicodeString);
begin
  SetAttribute('КодТов', Value);
end;

function TXMLФайл_Документ_ТаблСчФакт_СведТов_ДопСведТов.Get_НаимЕдИзм: UnicodeString;
begin
  Result := AttributeNodes['НаимЕдИзм'].Text;
end;

procedure TXMLФайл_Документ_ТаблСчФакт_СведТов_ДопСведТов.Set_НаимЕдИзм(Value: UnicodeString);
begin
  SetAttribute('НаимЕдИзм', Value);
end;

function TXMLФайл_Документ_ТаблСчФакт_СведТов_ДопСведТов.Get_КрНаимСтрПр: UnicodeString;
begin
  Result := AttributeNodes['КрНаимСтрПр'].Text;
end;

procedure TXMLФайл_Документ_ТаблСчФакт_СведТов_ДопСведТов.Set_КрНаимСтрПр(Value: UnicodeString);
begin
  SetAttribute('КрНаимСтрПр', Value);
end;

function TXMLФайл_Документ_ТаблСчФакт_СведТов_ДопСведТов.Get_НадлОтп: UnicodeString;
begin
  Result := AttributeNodes['НадлОтп'].Text;
end;

procedure TXMLФайл_Документ_ТаблСчФакт_СведТов_ДопСведТов.Set_НадлОтп(Value: UnicodeString);
begin
  SetAttribute('НадлОтп', Value);
end;

function TXMLФайл_Документ_ТаблСчФакт_СведТов_ДопСведТов.Get_КорСчДебет: UnicodeString;
begin
  Result := AttributeNodes['КорСчДебет'].Text;
end;

procedure TXMLФайл_Документ_ТаблСчФакт_СведТов_ДопСведТов.Set_КорСчДебет(Value: UnicodeString);
begin
  SetAttribute('КорСчДебет', Value);
end;

function TXMLФайл_Документ_ТаблСчФакт_СведТов_ДопСведТов.Get_КорСчКредит: UnicodeString;
begin
  Result := AttributeNodes['КорСчКредит'].Text;
end;

procedure TXMLФайл_Документ_ТаблСчФакт_СведТов_ДопСведТов.Set_КорСчКредит(Value: UnicodeString);
begin
  SetAttribute('КорСчКредит', Value);
end;

{ TXMLФайл_Документ_ТаблСчФакт_ВсегоОпл }

procedure TXMLФайл_Документ_ТаблСчФакт_ВсегоОпл.AfterConstruction;
begin
  RegisterChildNode('СумНалВсего', TXMLСумНДСТип);
  inherited;
end;

function TXMLФайл_Документ_ТаблСчФакт_ВсегоОпл.Get_СтТовБезНДСВсего: UnicodeString;
begin
  Result := AttributeNodes['СтТовБезНДСВсего'].Text;
end;

procedure TXMLФайл_Документ_ТаблСчФакт_ВсегоОпл.Set_СтТовБезНДСВсего(Value: UnicodeString);
begin
  SetAttribute('СтТовБезНДСВсего', Value);
end;

function TXMLФайл_Документ_ТаблСчФакт_ВсегоОпл.Get_СтТовУчНалВсего: UnicodeString;
begin
  Result := AttributeNodes['СтТовУчНалВсего'].Text;
end;

procedure TXMLФайл_Документ_ТаблСчФакт_ВсегоОпл.Set_СтТовУчНалВсего(Value: UnicodeString);
begin
  SetAttribute('СтТовУчНалВсего', Value);
end;

function TXMLФайл_Документ_ТаблСчФакт_ВсегоОпл.Get_СумНалВсего: IXMLСумНДСТип;
begin
  Result := ChildNodes['СумНалВсего'] as IXMLСумНДСТип;
end;

function TXMLФайл_Документ_ТаблСчФакт_ВсегоОпл.Get_НеттоВс: UnicodeString;
begin
  Result := ChildNodes['НеттоВс'].Text;
end;

procedure TXMLФайл_Документ_ТаблСчФакт_ВсегоОпл.Set_НеттоВс(Value: UnicodeString);
begin
  ChildNodes['НеттоВс'].NodeValue := Value;
end;

{ TXMLФайл_Документ_СвПродПер }

procedure TXMLФайл_Документ_СвПродПер.AfterConstruction;
begin
  RegisterChildNode('СвПер', TXMLФайл_Документ_СвПродПер_СвПер);
  RegisterChildNode('ИнфПолФХЖ3', TXMLФайл_Документ_СвПродПер_ИнфПолФХЖ3);
  inherited;
end;

function TXMLФайл_Документ_СвПродПер.Get_СвПер: IXMLФайл_Документ_СвПродПер_СвПер;
begin
  Result := ChildNodes['СвПер'] as IXMLФайл_Документ_СвПродПер_СвПер;
end;

function TXMLФайл_Документ_СвПродПер.Get_ИнфПолФХЖ3: IXMLФайл_Документ_СвПродПер_ИнфПолФХЖ3;
begin
  Result := ChildNodes['ИнфПолФХЖ3'] as IXMLФайл_Документ_СвПродПер_ИнфПолФХЖ3;
end;

{ TXMLФайл_Документ_СвПродПер_СвПер }

procedure TXMLФайл_Документ_СвПродПер_СвПер.AfterConstruction;
begin
  RegisterChildNode('ОснПер', TXMLФайл_Документ_СвПродПер_СвПер_ОснПер);
  RegisterChildNode('СвЛицПер', TXMLФайл_Документ_СвПродПер_СвПер_СвЛицПер);
  RegisterChildNode('ТранГруз', TXMLФайл_Документ_СвПродПер_СвПер_ТранГруз);
  RegisterChildNode('СвПерВещи', TXMLФайл_Документ_СвПродПер_СвПер_СвПерВещи);
  FОснПер := CreateCollection(TXMLФайл_Документ_СвПродПер_СвПер_ОснПерList, IXMLФайл_Документ_СвПродПер_СвПер_ОснПер, 'ОснПер') as IXMLФайл_Документ_СвПродПер_СвПер_ОснПерList;
  inherited;
end;

function TXMLФайл_Документ_СвПродПер_СвПер.Get_СодОпер: UnicodeString;
begin
  Result := AttributeNodes['СодОпер'].Text;
end;

procedure TXMLФайл_Документ_СвПродПер_СвПер.Set_СодОпер(Value: UnicodeString);
begin
  SetAttribute('СодОпер', Value);
end;

function TXMLФайл_Документ_СвПродПер_СвПер.Get_ВидОпер: UnicodeString;
begin
  Result := AttributeNodes['ВидОпер'].Text;
end;

procedure TXMLФайл_Документ_СвПродПер_СвПер.Set_ВидОпер(Value: UnicodeString);
begin
  SetAttribute('ВидОпер', Value);
end;

function TXMLФайл_Документ_СвПродПер_СвПер.Get_ДатаПер: UnicodeString;
begin
  Result := AttributeNodes['ДатаПер'].Text;
end;

procedure TXMLФайл_Документ_СвПродПер_СвПер.Set_ДатаПер(Value: UnicodeString);
begin
  SetAttribute('ДатаПер', Value);
end;

function TXMLФайл_Документ_СвПродПер_СвПер.Get_ОснПер: IXMLФайл_Документ_СвПродПер_СвПер_ОснПерList;
begin
  Result := FОснПер;
end;

function TXMLФайл_Документ_СвПродПер_СвПер.Get_СвЛицПер: IXMLФайл_Документ_СвПродПер_СвПер_СвЛицПер;
begin
  Result := ChildNodes['СвЛицПер'] as IXMLФайл_Документ_СвПродПер_СвПер_СвЛицПер;
end;

function TXMLФайл_Документ_СвПродПер_СвПер.Get_ТранГруз: IXMLФайл_Документ_СвПродПер_СвПер_ТранГруз;
begin
  Result := ChildNodes['ТранГруз'] as IXMLФайл_Документ_СвПродПер_СвПер_ТранГруз;
end;

function TXMLФайл_Документ_СвПродПер_СвПер.Get_СвПерВещи: IXMLФайл_Документ_СвПродПер_СвПер_СвПерВещи;
begin
  Result := ChildNodes['СвПерВещи'] as IXMLФайл_Документ_СвПродПер_СвПер_СвПерВещи;
end;

{ TXMLФайл_Документ_СвПродПер_СвПер_ОснПер }

function TXMLФайл_Документ_СвПродПер_СвПер_ОснПер.Get_НаимОсн: UnicodeString;
begin
  Result := AttributeNodes['НаимОсн'].Text;
end;

procedure TXMLФайл_Документ_СвПродПер_СвПер_ОснПер.Set_НаимОсн(Value: UnicodeString);
begin
  SetAttribute('НаимОсн', Value);
end;

function TXMLФайл_Документ_СвПродПер_СвПер_ОснПер.Get_НомОсн: UnicodeString;
begin
  Result := AttributeNodes['НомОсн'].Text;
end;

procedure TXMLФайл_Документ_СвПродПер_СвПер_ОснПер.Set_НомОсн(Value: UnicodeString);
begin
  SetAttribute('НомОсн', Value);
end;

function TXMLФайл_Документ_СвПродПер_СвПер_ОснПер.Get_ДатаОсн: UnicodeString;
begin
  Result := AttributeNodes['ДатаОсн'].Text;
end;

procedure TXMLФайл_Документ_СвПродПер_СвПер_ОснПер.Set_ДатаОсн(Value: UnicodeString);
begin
  SetAttribute('ДатаОсн', Value);
end;

function TXMLФайл_Документ_СвПродПер_СвПер_ОснПер.Get_ДопСвОсн: UnicodeString;
begin
  Result := AttributeNodes['ДопСвОсн'].Text;
end;

procedure TXMLФайл_Документ_СвПродПер_СвПер_ОснПер.Set_ДопСвОсн(Value: UnicodeString);
begin
  SetAttribute('ДопСвОсн', Value);
end;

{ TXMLФайл_Документ_СвПродПер_СвПер_ОснПерList }

function TXMLФайл_Документ_СвПродПер_СвПер_ОснПерList.Add: IXMLФайл_Документ_СвПродПер_СвПер_ОснПер;
begin
  Result := AddItem(-1) as IXMLФайл_Документ_СвПродПер_СвПер_ОснПер;
end;

function TXMLФайл_Документ_СвПродПер_СвПер_ОснПерList.Insert(const Index: Integer): IXMLФайл_Документ_СвПродПер_СвПер_ОснПер;
begin
  Result := AddItem(Index) as IXMLФайл_Документ_СвПродПер_СвПер_ОснПер;
end;

function TXMLФайл_Документ_СвПродПер_СвПер_ОснПерList.Get_Item(Index: Integer): IXMLФайл_Документ_СвПродПер_СвПер_ОснПер;
begin
  Result := List[Index] as IXMLФайл_Документ_СвПродПер_СвПер_ОснПер;
end;

{ TXMLФайл_Документ_СвПродПер_СвПер_СвЛицПер }

procedure TXMLФайл_Документ_СвПродПер_СвПер_СвЛицПер.AfterConstruction;
begin
  RegisterChildNode('РабОргПрод', TXMLФайл_Документ_СвПродПер_СвПер_СвЛицПер_РабОргПрод);
  RegisterChildNode('ИнЛицо', TXMLФайл_Документ_СвПродПер_СвПер_СвЛицПер_ИнЛицо);
  inherited;
end;

function TXMLФайл_Документ_СвПродПер_СвПер_СвЛицПер.Get_РабОргПрод: IXMLФайл_Документ_СвПродПер_СвПер_СвЛицПер_РабОргПрод;
begin
  Result := ChildNodes['РабОргПрод'] as IXMLФайл_Документ_СвПродПер_СвПер_СвЛицПер_РабОргПрод;
end;

function TXMLФайл_Документ_СвПродПер_СвПер_СвЛицПер.Get_ИнЛицо: IXMLФайл_Документ_СвПродПер_СвПер_СвЛицПер_ИнЛицо;
begin
  Result := ChildNodes['ИнЛицо'] as IXMLФайл_Документ_СвПродПер_СвПер_СвЛицПер_ИнЛицо;
end;

{ TXMLФайл_Документ_СвПродПер_СвПер_СвЛицПер_РабОргПрод }

procedure TXMLФайл_Документ_СвПродПер_СвПер_СвЛицПер_РабОргПрод.AfterConstruction;
begin
  RegisterChildNode('ФИО', TXMLФИОТип);
  inherited;
end;

function TXMLФайл_Документ_СвПродПер_СвПер_СвЛицПер_РабОргПрод.Get_Должность: UnicodeString;
begin
  Result := AttributeNodes['Должность'].Text;
end;

procedure TXMLФайл_Документ_СвПродПер_СвПер_СвЛицПер_РабОргПрод.Set_Должность(Value: UnicodeString);
begin
  SetAttribute('Должность', Value);
end;

function TXMLФайл_Документ_СвПродПер_СвПер_СвЛицПер_РабОргПрод.Get_ИныеСвед: UnicodeString;
begin
  Result := AttributeNodes['ИныеСвед'].Text;
end;

procedure TXMLФайл_Документ_СвПродПер_СвПер_СвЛицПер_РабОргПрод.Set_ИныеСвед(Value: UnicodeString);
begin
  SetAttribute('ИныеСвед', Value);
end;

function TXMLФайл_Документ_СвПродПер_СвПер_СвЛицПер_РабОргПрод.Get_ОснПолн: UnicodeString;
begin
  Result := AttributeNodes['ОснПолн'].Text;
end;

procedure TXMLФайл_Документ_СвПродПер_СвПер_СвЛицПер_РабОргПрод.Set_ОснПолн(Value: UnicodeString);
begin
  SetAttribute('ОснПолн', Value);
end;

function TXMLФайл_Документ_СвПродПер_СвПер_СвЛицПер_РабОргПрод.Get_ФИО: IXMLФИОТип;
begin
  Result := ChildNodes['ФИО'] as IXMLФИОТип;
end;

{ TXMLФайл_Документ_СвПродПер_СвПер_СвЛицПер_ИнЛицо }

procedure TXMLФайл_Документ_СвПродПер_СвПер_СвЛицПер_ИнЛицо.AfterConstruction;
begin
  RegisterChildNode('ПредОргПер', TXMLФайл_Документ_СвПродПер_СвПер_СвЛицПер_ИнЛицо_ПредОргПер);
  RegisterChildNode('ФЛПер', TXMLФайл_Документ_СвПродПер_СвПер_СвЛицПер_ИнЛицо_ФЛПер);
  inherited;
end;

function TXMLФайл_Документ_СвПродПер_СвПер_СвЛицПер_ИнЛицо.Get_ПредОргПер: IXMLФайл_Документ_СвПродПер_СвПер_СвЛицПер_ИнЛицо_ПредОргПер;
begin
  Result := ChildNodes['ПредОргПер'] as IXMLФайл_Документ_СвПродПер_СвПер_СвЛицПер_ИнЛицо_ПредОргПер;
end;

function TXMLФайл_Документ_СвПродПер_СвПер_СвЛицПер_ИнЛицо.Get_ФЛПер: IXMLФайл_Документ_СвПродПер_СвПер_СвЛицПер_ИнЛицо_ФЛПер;
begin
  Result := ChildNodes['ФЛПер'] as IXMLФайл_Документ_СвПродПер_СвПер_СвЛицПер_ИнЛицо_ФЛПер;
end;

{ TXMLФайл_Документ_СвПродПер_СвПер_СвЛицПер_ИнЛицо_ПредОргПер }

procedure TXMLФайл_Документ_СвПродПер_СвПер_СвЛицПер_ИнЛицо_ПредОргПер.AfterConstruction;
begin
  RegisterChildNode('ФИО', TXMLФИОТип);
  inherited;
end;

function TXMLФайл_Документ_СвПродПер_СвПер_СвЛицПер_ИнЛицо_ПредОргПер.Get_Должность: UnicodeString;
begin
  Result := AttributeNodes['Должность'].Text;
end;

procedure TXMLФайл_Документ_СвПродПер_СвПер_СвЛицПер_ИнЛицо_ПредОргПер.Set_Должность(Value: UnicodeString);
begin
  SetAttribute('Должность', Value);
end;

function TXMLФайл_Документ_СвПродПер_СвПер_СвЛицПер_ИнЛицо_ПредОргПер.Get_ИныеСвед: UnicodeString;
begin
  Result := AttributeNodes['ИныеСвед'].Text;
end;

procedure TXMLФайл_Документ_СвПродПер_СвПер_СвЛицПер_ИнЛицо_ПредОргПер.Set_ИныеСвед(Value: UnicodeString);
begin
  SetAttribute('ИныеСвед', Value);
end;

function TXMLФайл_Документ_СвПродПер_СвПер_СвЛицПер_ИнЛицо_ПредОргПер.Get_НаимОргПер: UnicodeString;
begin
  Result := AttributeNodes['НаимОргПер'].Text;
end;

procedure TXMLФайл_Документ_СвПродПер_СвПер_СвЛицПер_ИнЛицо_ПредОргПер.Set_НаимОргПер(Value: UnicodeString);
begin
  SetAttribute('НаимОргПер', Value);
end;

function TXMLФайл_Документ_СвПродПер_СвПер_СвЛицПер_ИнЛицо_ПредОргПер.Get_ОснДоверОргПер: UnicodeString;
begin
  Result := AttributeNodes['ОснДоверОргПер'].Text;
end;

procedure TXMLФайл_Документ_СвПродПер_СвПер_СвЛицПер_ИнЛицо_ПредОргПер.Set_ОснДоверОргПер(Value: UnicodeString);
begin
  SetAttribute('ОснДоверОргПер', Value);
end;

function TXMLФайл_Документ_СвПродПер_СвПер_СвЛицПер_ИнЛицо_ПредОргПер.Get_ОснПолнПредПер: UnicodeString;
begin
  Result := AttributeNodes['ОснПолнПредПер'].Text;
end;

procedure TXMLФайл_Документ_СвПродПер_СвПер_СвЛицПер_ИнЛицо_ПредОргПер.Set_ОснПолнПредПер(Value: UnicodeString);
begin
  SetAttribute('ОснПолнПредПер', Value);
end;

function TXMLФайл_Документ_СвПродПер_СвПер_СвЛицПер_ИнЛицо_ПредОргПер.Get_ФИО: IXMLФИОТип;
begin
  Result := ChildNodes['ФИО'] as IXMLФИОТип;
end;

{ TXMLФайл_Документ_СвПродПер_СвПер_СвЛицПер_ИнЛицо_ФЛПер }

procedure TXMLФайл_Документ_СвПродПер_СвПер_СвЛицПер_ИнЛицо_ФЛПер.AfterConstruction;
begin
  RegisterChildNode('ФИО', TXMLФИОТип);
  inherited;
end;

function TXMLФайл_Документ_СвПродПер_СвПер_СвЛицПер_ИнЛицо_ФЛПер.Get_ИныеСвед: UnicodeString;
begin
  Result := AttributeNodes['ИныеСвед'].Text;
end;

procedure TXMLФайл_Документ_СвПродПер_СвПер_СвЛицПер_ИнЛицо_ФЛПер.Set_ИныеСвед(Value: UnicodeString);
begin
  SetAttribute('ИныеСвед', Value);
end;

function TXMLФайл_Документ_СвПродПер_СвПер_СвЛицПер_ИнЛицо_ФЛПер.Get_ОснДоверФЛ: UnicodeString;
begin
  Result := AttributeNodes['ОснДоверФЛ'].Text;
end;

procedure TXMLФайл_Документ_СвПродПер_СвПер_СвЛицПер_ИнЛицо_ФЛПер.Set_ОснДоверФЛ(Value: UnicodeString);
begin
  SetAttribute('ОснДоверФЛ', Value);
end;

function TXMLФайл_Документ_СвПродПер_СвПер_СвЛицПер_ИнЛицо_ФЛПер.Get_ФИО: IXMLФИОТип;
begin
  Result := ChildNodes['ФИО'] as IXMLФИОТип;
end;

{ TXMLФайл_Документ_СвПродПер_СвПер_ТранГруз }

procedure TXMLФайл_Документ_СвПродПер_СвПер_ТранГруз.AfterConstruction;
begin
  RegisterChildNode('ТранНакл', TXMLФайл_Документ_СвПродПер_СвПер_ТранГруз_ТранНакл);
  RegisterChildNode('Перевозчик', TXMLУчастникТип);
  FТранНакл := CreateCollection(TXMLФайл_Документ_СвПродПер_СвПер_ТранГруз_ТранНаклList, IXMLФайл_Документ_СвПродПер_СвПер_ТранГруз_ТранНакл, 'ТранНакл') as IXMLФайл_Документ_СвПродПер_СвПер_ТранГруз_ТранНаклList;
  inherited;
end;

function TXMLФайл_Документ_СвПродПер_СвПер_ТранГруз.Get_СвТранГруз: UnicodeString;
begin
  Result := AttributeNodes['СвТранГруз'].Text;
end;

procedure TXMLФайл_Документ_СвПродПер_СвПер_ТранГруз.Set_СвТранГруз(Value: UnicodeString);
begin
  SetAttribute('СвТранГруз', Value);
end;

function TXMLФайл_Документ_СвПродПер_СвПер_ТранГруз.Get_ТранНакл: IXMLФайл_Документ_СвПродПер_СвПер_ТранГруз_ТранНаклList;
begin
  Result := FТранНакл;
end;

function TXMLФайл_Документ_СвПродПер_СвПер_ТранГруз.Get_Перевозчик: IXMLУчастникТип;
begin
  Result := ChildNodes['Перевозчик'] as IXMLУчастникТип;
end;

{ TXMLФайл_Документ_СвПродПер_СвПер_ТранГруз_ТранНакл }

function TXMLФайл_Документ_СвПродПер_СвПер_ТранГруз_ТранНакл.Get_НомТранНакл: UnicodeString;
begin
  Result := AttributeNodes['НомТранНакл'].Text;
end;

procedure TXMLФайл_Документ_СвПродПер_СвПер_ТранГруз_ТранНакл.Set_НомТранНакл(Value: UnicodeString);
begin
  SetAttribute('НомТранНакл', Value);
end;

function TXMLФайл_Документ_СвПродПер_СвПер_ТранГруз_ТранНакл.Get_ДатаТранНакл: UnicodeString;
begin
  Result := AttributeNodes['ДатаТранНакл'].Text;
end;

procedure TXMLФайл_Документ_СвПродПер_СвПер_ТранГруз_ТранНакл.Set_ДатаТранНакл(Value: UnicodeString);
begin
  SetAttribute('ДатаТранНакл', Value);
end;

{ TXMLФайл_Документ_СвПродПер_СвПер_ТранГруз_ТранНаклList }

function TXMLФайл_Документ_СвПродПер_СвПер_ТранГруз_ТранНаклList.Add: IXMLФайл_Документ_СвПродПер_СвПер_ТранГруз_ТранНакл;
begin
  Result := AddItem(-1) as IXMLФайл_Документ_СвПродПер_СвПер_ТранГруз_ТранНакл;
end;

function TXMLФайл_Документ_СвПродПер_СвПер_ТранГруз_ТранНаклList.Insert(const Index: Integer): IXMLФайл_Документ_СвПродПер_СвПер_ТранГруз_ТранНакл;
begin
  Result := AddItem(Index) as IXMLФайл_Документ_СвПродПер_СвПер_ТранГруз_ТранНакл;
end;

function TXMLФайл_Документ_СвПродПер_СвПер_ТранГруз_ТранНаклList.Get_Item(Index: Integer): IXMLФайл_Документ_СвПродПер_СвПер_ТранГруз_ТранНакл;
begin
  Result := List[Index] as IXMLФайл_Документ_СвПродПер_СвПер_ТранГруз_ТранНакл;
end;

{ TXMLФайл_Документ_СвПродПер_СвПер_СвПерВещи }

function TXMLФайл_Документ_СвПродПер_СвПер_СвПерВещи.Get_ДатаПерВещ: UnicodeString;
begin
  Result := AttributeNodes['ДатаПерВещ'].Text;
end;

procedure TXMLФайл_Документ_СвПродПер_СвПер_СвПерВещи.Set_ДатаПерВещ(Value: UnicodeString);
begin
  SetAttribute('ДатаПерВещ', Value);
end;

function TXMLФайл_Документ_СвПродПер_СвПер_СвПерВещи.Get_СвПерВещ: UnicodeString;
begin
  Result := AttributeNodes['СвПерВещ'].Text;
end;

procedure TXMLФайл_Документ_СвПродПер_СвПер_СвПерВещи.Set_СвПерВещ(Value: UnicodeString);
begin
  SetAttribute('СвПерВещ', Value);
end;

{ TXMLФайл_Документ_СвПродПер_ИнфПолФХЖ3 }

procedure TXMLФайл_Документ_СвПродПер_ИнфПолФХЖ3.AfterConstruction;
begin
  RegisterChildNode('ТекстИнф', TXMLТекстИнфТип);
  ItemTag := 'ТекстИнф';
  ItemInterface := IXMLТекстИнфТип;
  inherited;
end;

function TXMLФайл_Документ_СвПродПер_ИнфПолФХЖ3.Get_ИдФайлИнфПол: UnicodeString;
begin
  Result := AttributeNodes['ИдФайлИнфПол'].Text;
end;

procedure TXMLФайл_Документ_СвПродПер_ИнфПолФХЖ3.Set_ИдФайлИнфПол(Value: UnicodeString);
begin
  SetAttribute('ИдФайлИнфПол', Value);
end;

function TXMLФайл_Документ_СвПродПер_ИнфПолФХЖ3.Get_ТекстИнф(Index: Integer): IXMLТекстИнфТип;
begin
  Result := List[Index] as IXMLТекстИнфТип;
end;

function TXMLФайл_Документ_СвПродПер_ИнфПолФХЖ3.Add: IXMLТекстИнфТип;
begin
  Result := AddItem(-1) as IXMLТекстИнфТип;
end;

function TXMLФайл_Документ_СвПродПер_ИнфПолФХЖ3.Insert(const Index: Integer): IXMLТекстИнфТип;
begin
  Result := AddItem(Index) as IXMLТекстИнфТип;
end;

{ TXMLФайл_Документ_Подписант }

procedure TXMLФайл_Документ_Подписант.AfterConstruction;
begin
  RegisterChildNode('ФЛ', TXMLФайл_Документ_Подписант_ФЛ);
  RegisterChildNode('ИП', TXMLСвИПТип);
  RegisterChildNode('ЮЛ', TXMLФайл_Документ_Подписант_ЮЛ);
  inherited;
end;

function TXMLФайл_Документ_Подписант.Get_ОблПолн: UnicodeString;
begin
  Result := AttributeNodes['ОблПолн'].Text;
end;

procedure TXMLФайл_Документ_Подписант.Set_ОблПолн(Value: UnicodeString);
begin
  SetAttribute('ОблПолн', Value);
end;

function TXMLФайл_Документ_Подписант.Get_Статус: UnicodeString;
begin
  Result := AttributeNodes['Статус'].Text;
end;

procedure TXMLФайл_Документ_Подписант.Set_Статус(Value: UnicodeString);
begin
  SetAttribute('Статус', Value);
end;

function TXMLФайл_Документ_Подписант.Get_ОснПолн: UnicodeString;
begin
  Result := AttributeNodes['ОснПолн'].Text;
end;

procedure TXMLФайл_Документ_Подписант.Set_ОснПолн(Value: UnicodeString);
begin
  SetAttribute('ОснПолн', Value);
end;

function TXMLФайл_Документ_Подписант.Get_ОснПолнОрг: UnicodeString;
begin
  Result := AttributeNodes['ОснПолнОрг'].Text;
end;

procedure TXMLФайл_Документ_Подписант.Set_ОснПолнОрг(Value: UnicodeString);
begin
  SetAttribute('ОснПолнОрг', Value);
end;

function TXMLФайл_Документ_Подписант.Get_ФЛ: IXMLФайл_Документ_Подписант_ФЛ;
begin
  Result := ChildNodes['ФЛ'] as IXMLФайл_Документ_Подписант_ФЛ;
end;

function TXMLФайл_Документ_Подписант.Get_ИП: IXMLСвИПТип;
begin
  Result := ChildNodes['ИП'] as IXMLСвИПТип;
end;

function TXMLФайл_Документ_Подписант.Get_ЮЛ: IXMLФайл_Документ_Подписант_ЮЛ;
begin
  Result := ChildNodes['ЮЛ'] as IXMLФайл_Документ_Подписант_ЮЛ;
end;

{ TXMLФайл_Документ_ПодписантList }

function TXMLФайл_Документ_ПодписантList.Add: IXMLФайл_Документ_Подписант;
begin
  Result := AddItem(-1) as IXMLФайл_Документ_Подписант;
end;

function TXMLФайл_Документ_ПодписантList.Insert(const Index: Integer): IXMLФайл_Документ_Подписант;
begin
  Result := AddItem(Index) as IXMLФайл_Документ_Подписант;
end;

function TXMLФайл_Документ_ПодписантList.Get_Item(Index: Integer): IXMLФайл_Документ_Подписант;
begin
  Result := List[Index] as IXMLФайл_Документ_Подписант;
end;

{ TXMLФайл_Документ_Подписант_ФЛ }

procedure TXMLФайл_Документ_Подписант_ФЛ.AfterConstruction;
begin
  RegisterChildNode('ФИО', TXMLФИОТип);
  inherited;
end;

function TXMLФайл_Документ_Подписант_ФЛ.Get_ГосРегИПВыдДов: UnicodeString;
begin
  Result := AttributeNodes['ГосРегИПВыдДов'].Text;
end;

procedure TXMLФайл_Документ_Подписант_ФЛ.Set_ГосРегИПВыдДов(Value: UnicodeString);
begin
  SetAttribute('ГосРегИПВыдДов', Value);
end;

function TXMLФайл_Документ_Подписант_ФЛ.Get_ИННФЛ: UnicodeString;
begin
  Result := AttributeNodes['ИННФЛ'].Text;
end;

procedure TXMLФайл_Документ_Подписант_ФЛ.Set_ИННФЛ(Value: UnicodeString);
begin
  SetAttribute('ИННФЛ', Value);
end;

function TXMLФайл_Документ_Подписант_ФЛ.Get_ИныеСвед: UnicodeString;
begin
  Result := AttributeNodes['ИныеСвед'].Text;
end;

procedure TXMLФайл_Документ_Подписант_ФЛ.Set_ИныеСвед(Value: UnicodeString);
begin
  SetAttribute('ИныеСвед', Value);
end;

function TXMLФайл_Документ_Подписант_ФЛ.Get_ФИО: IXMLФИОТип;
begin
  Result := ChildNodes['ФИО'] as IXMLФИОТип;
end;

{ TXMLФайл_Документ_Подписант_ЮЛ }

procedure TXMLФайл_Документ_Подписант_ЮЛ.AfterConstruction;
begin
  RegisterChildNode('ФИО', TXMLФИОТип);
  inherited;
end;

function TXMLФайл_Документ_Подписант_ЮЛ.Get_ГосРегИПВыдДов: UnicodeString;
begin
  Result := AttributeNodes['ГосРегИПВыдДов'].Text;
end;

procedure TXMLФайл_Документ_Подписант_ЮЛ.Set_ГосРегИПВыдДов(Value: UnicodeString);
begin
  SetAttribute('ГосРегИПВыдДов', Value);
end;

function TXMLФайл_Документ_Подписант_ЮЛ.Get_ИННЮЛ: UnicodeString;
begin
  Result := AttributeNodes['ИННЮЛ'].Text;
end;

procedure TXMLФайл_Документ_Подписант_ЮЛ.Set_ИННЮЛ(Value: UnicodeString);
begin
  SetAttribute('ИННЮЛ', Value);
end;

function TXMLФайл_Документ_Подписант_ЮЛ.Get_НаимОрг: UnicodeString;
begin
  Result := AttributeNodes['НаимОрг'].Text;
end;

procedure TXMLФайл_Документ_Подписант_ЮЛ.Set_НаимОрг(Value: UnicodeString);
begin
  SetAttribute('НаимОрг', Value);
end;

function TXMLФайл_Документ_Подписант_ЮЛ.Get_Должн: UnicodeString;
begin
  Result := AttributeNodes['Должн'].Text;
end;

procedure TXMLФайл_Документ_Подписант_ЮЛ.Set_Должн(Value: UnicodeString);
begin
  SetAttribute('Должн', Value);
end;

function TXMLФайл_Документ_Подписант_ЮЛ.Get_ИныеСвед: UnicodeString;
begin
  Result := AttributeNodes['ИныеСвед'].Text;
end;

procedure TXMLФайл_Документ_Подписант_ЮЛ.Set_ИныеСвед(Value: UnicodeString);
begin
  SetAttribute('ИныеСвед', Value);
end;

function TXMLФайл_Документ_Подписант_ЮЛ.Get_ФИО: IXMLФИОТип;
begin
  Result := ChildNodes['ФИО'] as IXMLФИОТип;
end;

end.