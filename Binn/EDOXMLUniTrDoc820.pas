
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

  IXMLФайл = interface;
  IXMLФайл_СвУчДокОбор = interface;
  IXMLФайл_СвУчДокОбор_СвОЭДОтпр = interface;
  IXMLФайл_Документ = interface;
  IXMLФайл_Документ_СвСчФакт = interface;
  IXMLФайл_Документ_СвСчФакт_ИспрСчФ = interface;
  IXMLУчастникТип = interface;
  IXMLУчастникТипList = interface;
  IXMLУчастникТип_ИдСв = interface;
  IXMLСвИПТип = interface;
  IXMLФИОТип = interface;
  IXMLУчастникТип_ИдСв_СвЮЛУч = interface;
  IXMLУчастникТип_ИдСв_СвИнНеУч = interface;
  IXMLСвФЛТип = interface;
  IXMLАдресТип = interface;
  IXMLАдрРФТип = interface;
  IXMLАдрИнфТип = interface;
  IXMLКонтактТип = interface;
  IXMLУчастникТип_БанкРекв = interface;
  IXMLУчастникТип_БанкРекв_СвБанк = interface;
  IXMLФайл_Документ_СвСчФакт_ГрузОт = interface;
  IXMLФайл_Документ_СвСчФакт_ГрузОтList = interface;
  IXMLФайл_Документ_СвСчФакт_СвПРД = interface;
  IXMLФайл_Документ_СвСчФакт_СвПРДList = interface;
  IXMLФайл_Документ_СвСчФакт_ДопСвФХЖ1 = interface;
  IXMLФайл_Документ_СвСчФакт_ДопСвФХЖ1_ИнфПродГосЗакКазн = interface;
  IXMLОснованиеТип = interface;
  IXMLОснованиеТипList = interface;
  IXMLФайл_Документ_СвСчФакт_ДокПодтвОтгр = interface;
  IXMLФайл_Документ_СвСчФакт_ДокПодтвОтгрList = interface;
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
  IXMLФайл_Документ_ТаблСчФакт_СведТов_ДопСведТов_СведПрослеж = interface;
  IXMLФайл_Документ_ТаблСчФакт_СведТов_ДопСведТов_СведПрослежList = interface;
  IXMLФайл_Документ_ТаблСчФакт_СведТов_ДопСведТов_НомСредИдентТов = interface;
  IXMLФайл_Документ_ТаблСчФакт_СведТов_ДопСведТов_НомСредИдентТовList = interface;
  IXMLФайл_Документ_ТаблСчФакт_ВсегоОпл = interface;
  IXMLФайл_Документ_СвПродПер = interface;
  IXMLФайл_Документ_СвПродПер_СвПер = interface;
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
  IXMLФайл_Документ_Подписант_ЮЛ = interface;
  IXMLФайл_Документ_ТаблСчФакт_СведТов_ДопСведТов_НомСредИдентТов_НомУпакList = interface;
  IXMLФайл_Документ_ТаблСчФакт_СведТов_ДопСведТов_НомСредИдентТов_КИЗList = interface;

{ IXMLФайл }

  IXMLФайл = interface(IXMLNode)
    ['{B9D8C8CE-4C0C-4BDD-A28B-CC21BD27F969}']
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
    ['{D9A0EC49-2EA0-4B8D-A955-EEF5A35C024F}']
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
    ['{6F20952D-5EDD-40E7-A0D0-048998DC014D}']
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
    ['{D3EAE39D-20C5-4F07-9441-DF2E4174BA86}']
    { Property Accessors }
    function Get_КНД: UnicodeString;
    function Get_Функция: UnicodeString;
    function Get_ПоФактХЖ: UnicodeString;
    function Get_НаимДокОпр: UnicodeString;
    function Get_ДатаИнфПр: UnicodeString;
    function Get_ВремИнфПр: UnicodeString;
    function Get_НаимЭконСубСост: UnicodeString;
    function Get_ОснДоверОргСост: UnicodeString;
    function Get_СоглСтрДопИнф: UnicodeString;
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
    procedure Set_СоглСтрДопИнф(Value: UnicodeString);
    { Methods & Properties }
    property КНД: UnicodeString read Get_КНД write Set_КНД;
    property Функция: UnicodeString read Get_Функция write Set_Функция;
    property ПоФактХЖ: UnicodeString read Get_ПоФактХЖ write Set_ПоФактХЖ;
    property НаимДокОпр: UnicodeString read Get_НаимДокОпр write Set_НаимДокОпр;
    property ДатаИнфПр: UnicodeString read Get_ДатаИнфПр write Set_ДатаИнфПр;
    property ВремИнфПр: UnicodeString read Get_ВремИнфПр write Set_ВремИнфПр;
    property НаимЭконСубСост: UnicodeString read Get_НаимЭконСубСост write Set_НаимЭконСубСост;
    property ОснДоверОргСост: UnicodeString read Get_ОснДоверОргСост write Set_ОснДоверОргСост;
    property СоглСтрДопИнф: UnicodeString read Get_СоглСтрДопИнф write Set_СоглСтрДопИнф;
    property СвСчФакт: IXMLФайл_Документ_СвСчФакт read Get_СвСчФакт;
    property ТаблСчФакт: IXMLФайл_Документ_ТаблСчФакт read Get_ТаблСчФакт;
    property СвПродПер: IXMLФайл_Документ_СвПродПер read Get_СвПродПер;
    property Подписант: IXMLФайл_Документ_ПодписантList read Get_Подписант;
  end;

{ IXMLФайл_Документ_СвСчФакт }

  IXMLФайл_Документ_СвСчФакт = interface(IXMLNode)
    ['{2B99F306-4338-4FAF-BBD2-BA498FACC416}']
    { Property Accessors }
    function Get_НомерСчФ: UnicodeString;
    function Get_ДатаСчФ: UnicodeString;
    function Get_КодОКВ: UnicodeString;
    function Get_ИспрСчФ: IXMLФайл_Документ_СвСчФакт_ИспрСчФ;
    function Get_СвПрод: IXMLУчастникТипList;
    function Get_ГрузОт: IXMLФайл_Документ_СвСчФакт_ГрузОтList;
    function Get_ГрузПолуч: IXMLУчастникТипList;
    function Get_СвПРД: IXMLФайл_Документ_СвСчФакт_СвПРДList;
    function Get_СвПокуп: IXMLУчастникТипList;
    function Get_ДопСвФХЖ1: IXMLФайл_Документ_СвСчФакт_ДопСвФХЖ1;
    function Get_ДокПодтвОтгр: IXMLФайл_Документ_СвСчФакт_ДокПодтвОтгрList;
    function Get_ИнфПолФХЖ1: IXMLФайл_Документ_СвСчФакт_ИнфПолФХЖ1;
    procedure Set_НомерСчФ(Value: UnicodeString);
    procedure Set_ДатаСчФ(Value: UnicodeString);
    procedure Set_КодОКВ(Value: UnicodeString);
    { Methods & Properties }
    property НомерСчФ: UnicodeString read Get_НомерСчФ write Set_НомерСчФ;
    property ДатаСчФ: UnicodeString read Get_ДатаСчФ write Set_ДатаСчФ;
    property КодОКВ: UnicodeString read Get_КодОКВ write Set_КодОКВ;
    property ИспрСчФ: IXMLФайл_Документ_СвСчФакт_ИспрСчФ read Get_ИспрСчФ;
    property СвПрод: IXMLУчастникТипList read Get_СвПрод;
    property ГрузОт: IXMLФайл_Документ_СвСчФакт_ГрузОтList read Get_ГрузОт;
    property ГрузПолуч: IXMLУчастникТипList read Get_ГрузПолуч;
    property СвПРД: IXMLФайл_Документ_СвСчФакт_СвПРДList read Get_СвПРД;
    property СвПокуп: IXMLУчастникТипList read Get_СвПокуп;
    property ДопСвФХЖ1: IXMLФайл_Документ_СвСчФакт_ДопСвФХЖ1 read Get_ДопСвФХЖ1;
    property ДокПодтвОтгр: IXMLФайл_Документ_СвСчФакт_ДокПодтвОтгрList read Get_ДокПодтвОтгр;
    property ИнфПолФХЖ1: IXMLФайл_Документ_СвСчФакт_ИнфПолФХЖ1 read Get_ИнфПолФХЖ1;
  end;

{ IXMLФайл_Документ_СвСчФакт_ИспрСчФ }

  IXMLФайл_Документ_СвСчФакт_ИспрСчФ = interface(IXMLNode)
    ['{CB020052-38C0-40CA-95EA-22FC90DABC11}']
    { Property Accessors }
    function Get_НомИспрСчФ: Integer;
    function Get_ДефНомИспрСчФ: UnicodeString;
    function Get_ДатаИспрСчФ: UnicodeString;
    function Get_ДефДатаИспрСчФ: UnicodeString;
    procedure Set_НомИспрСчФ(Value: Integer);
    procedure Set_ДефНомИспрСчФ(Value: UnicodeString);
    procedure Set_ДатаИспрСчФ(Value: UnicodeString);
    procedure Set_ДефДатаИспрСчФ(Value: UnicodeString);
    { Methods & Properties }
    property НомИспрСчФ: Integer read Get_НомИспрСчФ write Set_НомИспрСчФ;
    property ДефНомИспрСчФ: UnicodeString read Get_ДефНомИспрСчФ write Set_ДефНомИспрСчФ;
    property ДатаИспрСчФ: UnicodeString read Get_ДатаИспрСчФ write Set_ДатаИспрСчФ;
    property ДефДатаИспрСчФ: UnicodeString read Get_ДефДатаИспрСчФ write Set_ДефДатаИспрСчФ;
  end;

{ IXMLУчастникТип }

  IXMLУчастникТип = interface(IXMLNode)
    ['{06FF5445-6EE6-4ABE-BFAD-C9081C56FC4A}']
    { Property Accessors }
    function Get_ОКПО: UnicodeString;
    function Get_СтруктПодр: UnicodeString;
    function Get_ИнфДляУчаст: UnicodeString;
    function Get_КраткНазв: UnicodeString;
    function Get_ИдСв: IXMLУчастникТип_ИдСв;
    function Get_Адрес: IXMLАдресТип;
    function Get_Контакт: IXMLКонтактТип;
    function Get_БанкРекв: IXMLУчастникТип_БанкРекв;
    procedure Set_ОКПО(Value: UnicodeString);
    procedure Set_СтруктПодр(Value: UnicodeString);
    procedure Set_ИнфДляУчаст(Value: UnicodeString);
    procedure Set_КраткНазв(Value: UnicodeString);
    { Methods & Properties }
    property ОКПО: UnicodeString read Get_ОКПО write Set_ОКПО;
    property СтруктПодр: UnicodeString read Get_СтруктПодр write Set_СтруктПодр;
    property ИнфДляУчаст: UnicodeString read Get_ИнфДляУчаст write Set_ИнфДляУчаст;
    property КраткНазв: UnicodeString read Get_КраткНазв write Set_КраткНазв;
    property ИдСв: IXMLУчастникТип_ИдСв read Get_ИдСв;
    property Адрес: IXMLАдресТип read Get_Адрес;
    property Контакт: IXMLКонтактТип read Get_Контакт;
    property БанкРекв: IXMLУчастникТип_БанкРекв read Get_БанкРекв;
  end;

{ IXMLУчастникТипList }

  IXMLУчастникТипList = interface(IXMLNodeCollection)
    ['{3E6482D6-81C5-4158-A1AC-6ED183DB1311}']
    { Methods & Properties }
    function Add: IXMLУчастникТип;
    function Insert(const Index: Integer): IXMLУчастникТип;

    function Get_Item(Index: Integer): IXMLУчастникТип;
    property Items[Index: Integer]: IXMLУчастникТип read Get_Item; default;
  end;

{ IXMLУчастникТип_ИдСв }

  IXMLУчастникТип_ИдСв = interface(IXMLNode)
    ['{4A475EE6-88D5-41ED-964A-F87610923232}']
    { Property Accessors }
    function Get_СвИП: IXMLСвИПТип;
    function Get_СвЮЛУч: IXMLУчастникТип_ИдСв_СвЮЛУч;
    function Get_СвИнНеУч: IXMLУчастникТип_ИдСв_СвИнНеУч;
    function Get_СвФЛУчастФХЖ: IXMLСвФЛТип;
    { Methods & Properties }
    property СвИП: IXMLСвИПТип read Get_СвИП;
    property СвЮЛУч: IXMLУчастникТип_ИдСв_СвЮЛУч read Get_СвЮЛУч;
    property СвИнНеУч: IXMLУчастникТип_ИдСв_СвИнНеУч read Get_СвИнНеУч;
    property СвФЛУчастФХЖ: IXMLСвФЛТип read Get_СвФЛУчастФХЖ;
  end;

{ IXMLСвИПТип }

  IXMLСвИПТип = interface(IXMLNode)
    ['{05DF2716-D781-496B-ABBF-087E85F01F37}']
    { Property Accessors }
    function Get_ИННФЛ: UnicodeString;
    function Get_ДефИННФЛ: UnicodeString;
    function Get_СвГосРегИП: UnicodeString;
    function Get_ИныеСвед: UnicodeString;
    function Get_ФИО: IXMLФИОТип;
    procedure Set_ИННФЛ(Value: UnicodeString);
    procedure Set_ДефИННФЛ(Value: UnicodeString);
    procedure Set_СвГосРегИП(Value: UnicodeString);
    procedure Set_ИныеСвед(Value: UnicodeString);
    { Methods & Properties }
    property ИННФЛ: UnicodeString read Get_ИННФЛ write Set_ИННФЛ;
    property ДефИННФЛ: UnicodeString read Get_ДефИННФЛ write Set_ДефИННФЛ;
    property СвГосРегИП: UnicodeString read Get_СвГосРегИП write Set_СвГосРегИП;
    property ИныеСвед: UnicodeString read Get_ИныеСвед write Set_ИныеСвед;
    property ФИО: IXMLФИОТип read Get_ФИО;
  end;

{ IXMLФИОТип }

  IXMLФИОТип = interface(IXMLNode)
    ['{EA1543A4-475A-4C5C-B907-A3331F240139}']
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
    ['{2FA18AC0-9D78-482C-9847-F3BC821765EB}']
    { Property Accessors }
    function Get_НаимОрг: UnicodeString;
    function Get_ИННЮЛ: UnicodeString;
    function Get_ДефИННЮЛ: UnicodeString;
    function Get_КПП: UnicodeString;
    procedure Set_НаимОрг(Value: UnicodeString);
    procedure Set_ИННЮЛ(Value: UnicodeString);
    procedure Set_ДефИННЮЛ(Value: UnicodeString);
    procedure Set_КПП(Value: UnicodeString);
    { Methods & Properties }
    property НаимОрг: UnicodeString read Get_НаимОрг write Set_НаимОрг;
    property ИННЮЛ: UnicodeString read Get_ИННЮЛ write Set_ИННЮЛ;
    property ДефИННЮЛ: UnicodeString read Get_ДефИННЮЛ write Set_ДефИННЮЛ;
    property КПП: UnicodeString read Get_КПП write Set_КПП;
  end;

{ IXMLУчастникТип_ИдСв_СвИнНеУч }

  IXMLУчастникТип_ИдСв_СвИнНеУч = interface(IXMLNode)
    ['{B702F741-54D8-493E-A500-1EC83212EEBA}']
    { Property Accessors }
    function Get_НаимОрг: UnicodeString;
    function Get_Идентиф: UnicodeString;
    function Get_ИныеСвед: UnicodeString;
    procedure Set_НаимОрг(Value: UnicodeString);
    procedure Set_Идентиф(Value: UnicodeString);
    procedure Set_ИныеСвед(Value: UnicodeString);
    { Methods & Properties }
    property НаимОрг: UnicodeString read Get_НаимОрг write Set_НаимОрг;
    property Идентиф: UnicodeString read Get_Идентиф write Set_Идентиф;
    property ИныеСвед: UnicodeString read Get_ИныеСвед write Set_ИныеСвед;
  end;

{ IXMLСвФЛТип }

  IXMLСвФЛТип = interface(IXMLNode)
    ['{56E31E2D-9635-4BBD-A595-1E8535FB38B4}']
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

{ IXMLАдресТип }

  IXMLАдресТип = interface(IXMLNode)
    ['{5D1E6401-EA90-4EED-B722-06F75B045D21}']
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
    ['{0AFBED19-10BC-4843-9748-C82B105E84F8}']
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
    ['{7E566504-4140-4ED8-AD1C-485D9187CE7B}']
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
    ['{E9FB1E9C-E948-4C80-B715-956418A14534}']
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
    ['{F679A62A-D938-4729-9615-FAC619A99F81}']
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
    ['{88A8212F-C1F8-4FBA-A7A6-4391A0DA455E}']
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
    ['{F45B4F83-5D82-439D-9598-424B25A27E59}']
    { Property Accessors }
    function Get_ГрузОтпр: IXMLУчастникТип;
    function Get_ОнЖе: UnicodeString;
    procedure Set_ОнЖе(Value: UnicodeString);
    { Methods & Properties }
    property ГрузОтпр: IXMLУчастникТип read Get_ГрузОтпр;
    property ОнЖе: UnicodeString read Get_ОнЖе write Set_ОнЖе;
  end;

{ IXMLФайл_Документ_СвСчФакт_ГрузОтList }

  IXMLФайл_Документ_СвСчФакт_ГрузОтList = interface(IXMLNodeCollection)
    ['{523DA201-E7BC-4539-B7FA-373B2690B21F}']
    { Methods & Properties }
    function Add: IXMLФайл_Документ_СвСчФакт_ГрузОт;
    function Insert(const Index: Integer): IXMLФайл_Документ_СвСчФакт_ГрузОт;

    function Get_Item(Index: Integer): IXMLФайл_Документ_СвСчФакт_ГрузОт;
    property Items[Index: Integer]: IXMLФайл_Документ_СвСчФакт_ГрузОт read Get_Item; default;
  end;

{ IXMLФайл_Документ_СвСчФакт_СвПРД }

  IXMLФайл_Документ_СвСчФакт_СвПРД = interface(IXMLNode)
    ['{E06DB807-409A-4900-97B1-22BDD701322A}']
    { Property Accessors }
    function Get_НомерПРД: UnicodeString;
    function Get_ДатаПРД: UnicodeString;
    function Get_СуммаПРД: UnicodeString;
    procedure Set_НомерПРД(Value: UnicodeString);
    procedure Set_ДатаПРД(Value: UnicodeString);
    procedure Set_СуммаПРД(Value: UnicodeString);
    { Methods & Properties }
    property НомерПРД: UnicodeString read Get_НомерПРД write Set_НомерПРД;
    property ДатаПРД: UnicodeString read Get_ДатаПРД write Set_ДатаПРД;
    property СуммаПРД: UnicodeString read Get_СуммаПРД write Set_СуммаПРД;
  end;

{ IXMLФайл_Документ_СвСчФакт_СвПРДList }

  IXMLФайл_Документ_СвСчФакт_СвПРДList = interface(IXMLNodeCollection)
    ['{1BA3059C-4720-4D2A-B793-0A458EB1B4CE}']
    { Methods & Properties }
    function Add: IXMLФайл_Документ_СвСчФакт_СвПРД;
    function Insert(const Index: Integer): IXMLФайл_Документ_СвСчФакт_СвПРД;

    function Get_Item(Index: Integer): IXMLФайл_Документ_СвСчФакт_СвПРД;
    property Items[Index: Integer]: IXMLФайл_Документ_СвСчФакт_СвПРД read Get_Item; default;
  end;

{ IXMLФайл_Документ_СвСчФакт_ДопСвФХЖ1 }

  IXMLФайл_Документ_СвСчФакт_ДопСвФХЖ1 = interface(IXMLNode)
    ['{7428DE56-6A54-44CA-8AEA-E579E7D0079C}']
    { Property Accessors }
    function Get_ИдГосКон: UnicodeString;
    function Get_НаимОКВ: UnicodeString;
    function Get_КурсВал: UnicodeString;
    function Get_ОбстФормСЧФ: UnicodeString;
    function Get_ИнфПродГосЗакКазн: IXMLФайл_Документ_СвСчФакт_ДопСвФХЖ1_ИнфПродГосЗакКазн;
    function Get_СвФактор: IXMLУчастникТип;
    function Get_ОснУстДенТреб: IXMLОснованиеТип;
    procedure Set_ИдГосКон(Value: UnicodeString);
    procedure Set_НаимОКВ(Value: UnicodeString);
    procedure Set_КурсВал(Value: UnicodeString);
    procedure Set_ОбстФормСЧФ(Value: UnicodeString);
    { Methods & Properties }
    property ИдГосКон: UnicodeString read Get_ИдГосКон write Set_ИдГосКон;
    property НаимОКВ: UnicodeString read Get_НаимОКВ write Set_НаимОКВ;
    property КурсВал: UnicodeString read Get_КурсВал write Set_КурсВал;
    property ОбстФормСЧФ: UnicodeString read Get_ОбстФормСЧФ write Set_ОбстФормСЧФ;
    property ИнфПродГосЗакКазн: IXMLФайл_Документ_СвСчФакт_ДопСвФХЖ1_ИнфПродГосЗакКазн read Get_ИнфПродГосЗакКазн;
    property СвФактор: IXMLУчастникТип read Get_СвФактор;
    property ОснУстДенТреб: IXMLОснованиеТип read Get_ОснУстДенТреб;
  end;

{ IXMLФайл_Документ_СвСчФакт_ДопСвФХЖ1_ИнфПродГосЗакКазн }

  IXMLФайл_Документ_СвСчФакт_ДопСвФХЖ1_ИнфПродГосЗакКазн = interface(IXMLNode)
    ['{86D61B79-77AF-4F11-BE1B-16D032F63F35}']
    { Property Accessors }
    function Get_ДатаГосКонт: UnicodeString;
    function Get_НомерГосКонт: UnicodeString;
    function Get_ЛицСчетПрод: UnicodeString;
    function Get_КодПродБюджКласс: UnicodeString;
    function Get_КодЦелиПрод: UnicodeString;
    function Get_КодКазначПрод: UnicodeString;
    function Get_НаимКазначПрод: UnicodeString;
    procedure Set_ДатаГосКонт(Value: UnicodeString);
    procedure Set_НомерГосКонт(Value: UnicodeString);
    procedure Set_ЛицСчетПрод(Value: UnicodeString);
    procedure Set_КодПродБюджКласс(Value: UnicodeString);
    procedure Set_КодЦелиПрод(Value: UnicodeString);
    procedure Set_КодКазначПрод(Value: UnicodeString);
    procedure Set_НаимКазначПрод(Value: UnicodeString);
    { Methods & Properties }
    property ДатаГосКонт: UnicodeString read Get_ДатаГосКонт write Set_ДатаГосКонт;
    property НомерГосКонт: UnicodeString read Get_НомерГосКонт write Set_НомерГосКонт;
    property ЛицСчетПрод: UnicodeString read Get_ЛицСчетПрод write Set_ЛицСчетПрод;
    property КодПродБюджКласс: UnicodeString read Get_КодПродБюджКласс write Set_КодПродБюджКласс;
    property КодЦелиПрод: UnicodeString read Get_КодЦелиПрод write Set_КодЦелиПрод;
    property КодКазначПрод: UnicodeString read Get_КодКазначПрод write Set_КодКазначПрод;
    property НаимКазначПрод: UnicodeString read Get_НаимКазначПрод write Set_НаимКазначПрод;
  end;

{ IXMLОснованиеТип }

  IXMLОснованиеТип = interface(IXMLNode)
    ['{5A2263A4-E8AE-4C5E-8931-83A36FE2039A}']
    { Property Accessors }
    function Get_НаимОсн: UnicodeString;
    function Get_НомОсн: UnicodeString;
    function Get_ДатаОсн: UnicodeString;
    function Get_ДопСвОсн: UnicodeString;
    function Get_ИдентОсн: UnicodeString;
    procedure Set_НаимОсн(Value: UnicodeString);
    procedure Set_НомОсн(Value: UnicodeString);
    procedure Set_ДатаОсн(Value: UnicodeString);
    procedure Set_ДопСвОсн(Value: UnicodeString);
    procedure Set_ИдентОсн(Value: UnicodeString);
    { Methods & Properties }
    property НаимОсн: UnicodeString read Get_НаимОсн write Set_НаимОсн;
    property НомОсн: UnicodeString read Get_НомОсн write Set_НомОсн;
    property ДатаОсн: UnicodeString read Get_ДатаОсн write Set_ДатаОсн;
    property ДопСвОсн: UnicodeString read Get_ДопСвОсн write Set_ДопСвОсн;
    property ИдентОсн: UnicodeString read Get_ИдентОсн write Set_ИдентОсн;
  end;

{ IXMLОснованиеТипList }

  IXMLОснованиеТипList = interface(IXMLNodeCollection)
    ['{CE8AEE3F-4158-4F1B-849F-2BDC05D71833}']
    { Methods & Properties }
    function Add: IXMLОснованиеТип;
    function Insert(const Index: Integer): IXMLОснованиеТип;

    function Get_Item(Index: Integer): IXMLОснованиеТип;
    property Items[Index: Integer]: IXMLОснованиеТип read Get_Item; default;
  end;

{ IXMLФайл_Документ_СвСчФакт_ДокПодтвОтгр }

  IXMLФайл_Документ_СвСчФакт_ДокПодтвОтгр = interface(IXMLNode)
    ['{6BF1F28D-4B06-41E4-A04D-EF81B0F1D02F}']
    { Property Accessors }
    function Get_НаимДокОтгр: UnicodeString;
    function Get_НомДокОтгр: UnicodeString;
    function Get_ДатаДокОтгр: UnicodeString;
    procedure Set_НаимДокОтгр(Value: UnicodeString);
    procedure Set_НомДокОтгр(Value: UnicodeString);
    procedure Set_ДатаДокОтгр(Value: UnicodeString);
    { Methods & Properties }
    property НаимДокОтгр: UnicodeString read Get_НаимДокОтгр write Set_НаимДокОтгр;
    property НомДокОтгр: UnicodeString read Get_НомДокОтгр write Set_НомДокОтгр;
    property ДатаДокОтгр: UnicodeString read Get_ДатаДокОтгр write Set_ДатаДокОтгр;
  end;

{ IXMLФайл_Документ_СвСчФакт_ДокПодтвОтгрList }

  IXMLФайл_Документ_СвСчФакт_ДокПодтвОтгрList = interface(IXMLNodeCollection)
    ['{49A62C90-2C5C-4235-9957-9ABA13433CB2}']
    { Methods & Properties }
    function Add: IXMLФайл_Документ_СвСчФакт_ДокПодтвОтгр;
    function Insert(const Index: Integer): IXMLФайл_Документ_СвСчФакт_ДокПодтвОтгр;

    function Get_Item(Index: Integer): IXMLФайл_Документ_СвСчФакт_ДокПодтвОтгр;
    property Items[Index: Integer]: IXMLФайл_Документ_СвСчФакт_ДокПодтвОтгр read Get_Item; default;
  end;

{ IXMLФайл_Документ_СвСчФакт_ИнфПолФХЖ1 }

  IXMLФайл_Документ_СвСчФакт_ИнфПолФХЖ1 = interface(IXMLNodeCollection)
    ['{3822F943-4A81-4962-B13E-04B4AB2FA504}']
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
    ['{881517E8-19C2-45DD-92EF-9F7E628AD2B9}']
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
    ['{2C0699A4-10A7-45EF-8707-A403F086C5DD}']
    { Methods & Properties }
    function Add: IXMLТекстИнфТип;
    function Insert(const Index: Integer): IXMLТекстИнфТип;

    function Get_Item(Index: Integer): IXMLТекстИнфТип;
    property Items[Index: Integer]: IXMLТекстИнфТип read Get_Item; default;
  end;

{ IXMLФайл_Документ_ТаблСчФакт }

  IXMLФайл_Документ_ТаблСчФакт = interface(IXMLNode)
    ['{C87C2B0D-1F78-4A6E-824D-A69A654B5354}']
    { Property Accessors }
    function Get_СведТов: IXMLФайл_Документ_ТаблСчФакт_СведТовList;
    function Get_ВсегоОпл: IXMLФайл_Документ_ТаблСчФакт_ВсегоОпл;
    { Methods & Properties }
    property СведТов: IXMLФайл_Документ_ТаблСчФакт_СведТовList read Get_СведТов;
    property ВсегоОпл: IXMLФайл_Документ_ТаблСчФакт_ВсегоОпл read Get_ВсегоОпл;
  end;

{ IXMLФайл_Документ_ТаблСчФакт_СведТов }

  IXMLФайл_Документ_ТаблСчФакт_СведТов = interface(IXMLNode)
    ['{C9E515E8-C819-4439-8559-2B32D8FFDD2C}']
    { Property Accessors }
    function Get_НомСтр: Integer;
    function Get_НаимТов: UnicodeString;
    function Get_ОКЕИ_Тов: UnicodeString;
    function Get_ДефОКЕИ_Тов: UnicodeString;
    function Get_КолТов: UnicodeString;
    function Get_ЦенаТов: UnicodeString;
    function Get_СтТовБезНДС: UnicodeString;
    function Get_НалСт: UnicodeString;
    function Get_СтТовУчНал: UnicodeString;
    function Get_ДефСтТовУчНал: UnicodeString;
    function Get_Акциз: IXMLСумАкцизТип;
    function Get_СумНал: IXMLСумНДСТип;
    function Get_СвТД: IXMLФайл_Документ_ТаблСчФакт_СведТов_СвТДList;
    function Get_ДопСведТов: IXMLФайл_Документ_ТаблСчФакт_СведТов_ДопСведТов;
    function Get_ИнфПолФХЖ2: IXMLТекстИнфТипList;
    procedure Set_НомСтр(Value: Integer);
    procedure Set_НаимТов(Value: UnicodeString);
    procedure Set_ОКЕИ_Тов(Value: UnicodeString);
    procedure Set_ДефОКЕИ_Тов(Value: UnicodeString);
    procedure Set_КолТов(Value: UnicodeString);
    procedure Set_ЦенаТов(Value: UnicodeString);
    procedure Set_СтТовБезНДС(Value: UnicodeString);
    procedure Set_НалСт(Value: UnicodeString);
    procedure Set_СтТовУчНал(Value: UnicodeString);
    procedure Set_ДефСтТовУчНал(Value: UnicodeString);
    { Methods & Properties }
    property НомСтр: Integer read Get_НомСтр write Set_НомСтр;
    property НаимТов: UnicodeString read Get_НаимТов write Set_НаимТов;
    property ОКЕИ_Тов: UnicodeString read Get_ОКЕИ_Тов write Set_ОКЕИ_Тов;
    property ДефОКЕИ_Тов: UnicodeString read Get_ДефОКЕИ_Тов write Set_ДефОКЕИ_Тов;
    property КолТов: UnicodeString read Get_КолТов write Set_КолТов;
    property ЦенаТов: UnicodeString read Get_ЦенаТов write Set_ЦенаТов;
    property СтТовБезНДС: UnicodeString read Get_СтТовБезНДС write Set_СтТовБезНДС;
    property НалСт: UnicodeString read Get_НалСт write Set_НалСт;
    property СтТовУчНал: UnicodeString read Get_СтТовУчНал write Set_СтТовУчНал;
    property ДефСтТовУчНал: UnicodeString read Get_ДефСтТовУчНал write Set_ДефСтТовУчНал;
    property Акциз: IXMLСумАкцизТип read Get_Акциз;
    property СумНал: IXMLСумНДСТип read Get_СумНал;
    property СвТД: IXMLФайл_Документ_ТаблСчФакт_СведТов_СвТДList read Get_СвТД;
    property ДопСведТов: IXMLФайл_Документ_ТаблСчФакт_СведТов_ДопСведТов read Get_ДопСведТов;
    property ИнфПолФХЖ2: IXMLТекстИнфТипList read Get_ИнфПолФХЖ2;
  end;

{ IXMLФайл_Документ_ТаблСчФакт_СведТовList }

  IXMLФайл_Документ_ТаблСчФакт_СведТовList = interface(IXMLNodeCollection)
    ['{699CE547-6950-4231-89C6-36A315E19BB9}']
    { Methods & Properties }
    function Add: IXMLФайл_Документ_ТаблСчФакт_СведТов;
    function Insert(const Index: Integer): IXMLФайл_Документ_ТаблСчФакт_СведТов;

    function Get_Item(Index: Integer): IXMLФайл_Документ_ТаблСчФакт_СведТов;
    property Items[Index: Integer]: IXMLФайл_Документ_ТаблСчФакт_СведТов read Get_Item; default;
  end;

{ IXMLСумАкцизТип }

  IXMLСумАкцизТип = interface(IXMLNode)
    ['{C0031D6D-04C5-486B-BF42-C7294618466B}']
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
    ['{2C99EE03-F983-4953-8196-112C17009B53}']
    { Property Accessors }
    function Get_СумНал: UnicodeString;
    function Get_БезНДС: UnicodeString;
    function Get_ДефНДС: UnicodeString;
    procedure Set_СумНал(Value: UnicodeString);
    procedure Set_БезНДС(Value: UnicodeString);
    procedure Set_ДефНДС(Value: UnicodeString);
    { Methods & Properties }
    property СумНал: UnicodeString read Get_СумНал write Set_СумНал;
    property БезНДС: UnicodeString read Get_БезНДС write Set_БезНДС;
    property ДефНДС: UnicodeString read Get_ДефНДС write Set_ДефНДС;
  end;

{ IXMLФайл_Документ_ТаблСчФакт_СведТов_СвТД }

  IXMLФайл_Документ_ТаблСчФакт_СведТов_СвТД = interface(IXMLNode)
    ['{0AA62535-46B3-44D2-9496-06B94D508922}']
    { Property Accessors }
    function Get_КодПроисх: UnicodeString;
    function Get_ДефКодПроисх: UnicodeString;
    function Get_НомерТД: UnicodeString;
    procedure Set_КодПроисх(Value: UnicodeString);
    procedure Set_ДефКодПроисх(Value: UnicodeString);
    procedure Set_НомерТД(Value: UnicodeString);
    { Methods & Properties }
    property КодПроисх: UnicodeString read Get_КодПроисх write Set_КодПроисх;
    property ДефКодПроисх: UnicodeString read Get_ДефКодПроисх write Set_ДефКодПроисх;
    property НомерТД: UnicodeString read Get_НомерТД write Set_НомерТД;
  end;

{ IXMLФайл_Документ_ТаблСчФакт_СведТов_СвТДList }

  IXMLФайл_Документ_ТаблСчФакт_СведТов_СвТДList = interface(IXMLNodeCollection)
    ['{55D25C65-C08B-4D26-92BB-D71AACCE19D1}']
    { Methods & Properties }
    function Add: IXMLФайл_Документ_ТаблСчФакт_СведТов_СвТД;
    function Insert(const Index: Integer): IXMLФайл_Документ_ТаблСчФакт_СведТов_СвТД;

    function Get_Item(Index: Integer): IXMLФайл_Документ_ТаблСчФакт_СведТов_СвТД;
    property Items[Index: Integer]: IXMLФайл_Документ_ТаблСчФакт_СведТов_СвТД read Get_Item; default;
  end;

{ IXMLФайл_Документ_ТаблСчФакт_СведТов_ДопСведТов }

  IXMLФайл_Документ_ТаблСчФакт_СведТов_ДопСведТов = interface(IXMLNode)
    ['{3C6F04A5-09C1-417F-B1F4-980F1714D204}']
    { Property Accessors }
    function Get_ПрТовРаб: UnicodeString;
    function Get_ДопПризн: UnicodeString;
    function Get_НаимЕдИзм: UnicodeString;
    function Get_КрНаимСтрПр: UnicodeString;
    function Get_НадлОтп: UnicodeString;
    function Get_ХарактерТов: UnicodeString;
    function Get_СортТов: UnicodeString;
    function Get_АртикулТов: UnicodeString;
    function Get_КодТов: UnicodeString;
    function Get_КодКат: UnicodeString;
    function Get_КодВидТов: UnicodeString;
    function Get_СведПрослеж: IXMLФайл_Документ_ТаблСчФакт_СведТов_ДопСведТов_СведПрослежList;
    function Get_НомСредИдентТов: IXMLФайл_Документ_ТаблСчФакт_СведТов_ДопСведТов_НомСредИдентТовList;
    procedure Set_ПрТовРаб(Value: UnicodeString);
    procedure Set_ДопПризн(Value: UnicodeString);
    procedure Set_НаимЕдИзм(Value: UnicodeString);
    procedure Set_КрНаимСтрПр(Value: UnicodeString);
    procedure Set_НадлОтп(Value: UnicodeString);
    procedure Set_ХарактерТов(Value: UnicodeString);
    procedure Set_СортТов(Value: UnicodeString);
    procedure Set_АртикулТов(Value: UnicodeString);
    procedure Set_КодТов(Value: UnicodeString);
    procedure Set_КодКат(Value: UnicodeString);
    procedure Set_КодВидТов(Value: UnicodeString);
    { Methods & Properties }
    property ПрТовРаб: UnicodeString read Get_ПрТовРаб write Set_ПрТовРаб;
    property ДопПризн: UnicodeString read Get_ДопПризн write Set_ДопПризн;
    property НаимЕдИзм: UnicodeString read Get_НаимЕдИзм write Set_НаимЕдИзм;
    property КрНаимСтрПр: UnicodeString read Get_КрНаимСтрПр write Set_КрНаимСтрПр;
    property НадлОтп: UnicodeString read Get_НадлОтп write Set_НадлОтп;
    property ХарактерТов: UnicodeString read Get_ХарактерТов write Set_ХарактерТов;
    property СортТов: UnicodeString read Get_СортТов write Set_СортТов;
    property АртикулТов: UnicodeString read Get_АртикулТов write Set_АртикулТов;
    property КодТов: UnicodeString read Get_КодТов write Set_КодТов;
    property КодКат: UnicodeString read Get_КодКат write Set_КодКат;
    property КодВидТов: UnicodeString read Get_КодВидТов write Set_КодВидТов;
    property СведПрослеж: IXMLФайл_Документ_ТаблСчФакт_СведТов_ДопСведТов_СведПрослежList read Get_СведПрослеж;
    property НомСредИдентТов: IXMLФайл_Документ_ТаблСчФакт_СведТов_ДопСведТов_НомСредИдентТовList read Get_НомСредИдентТов;
  end;

{ IXMLФайл_Документ_ТаблСчФакт_СведТов_ДопСведТов_СведПрослеж }

  IXMLФайл_Документ_ТаблСчФакт_СведТов_ДопСведТов_СведПрослеж = interface(IXMLNode)
    ['{70495A35-2BFE-4346-BB2D-474EFD754F62}']
    { Property Accessors }
    function Get_НомТовПрослеж: UnicodeString;
    function Get_ЕдИзмПрослеж: UnicodeString;
    function Get_НаимЕдИзмПрослеж: UnicodeString;
    function Get_КолВЕдПрослеж: UnicodeString;
    function Get_ДопПрослеж: UnicodeString;
    procedure Set_НомТовПрослеж(Value: UnicodeString);
    procedure Set_ЕдИзмПрослеж(Value: UnicodeString);
    procedure Set_НаимЕдИзмПрослеж(Value: UnicodeString);
    procedure Set_КолВЕдПрослеж(Value: UnicodeString);
    procedure Set_ДопПрослеж(Value: UnicodeString);
    { Methods & Properties }
    property НомТовПрослеж: UnicodeString read Get_НомТовПрослеж write Set_НомТовПрослеж;
    property ЕдИзмПрослеж: UnicodeString read Get_ЕдИзмПрослеж write Set_ЕдИзмПрослеж;
    property НаимЕдИзмПрослеж: UnicodeString read Get_НаимЕдИзмПрослеж write Set_НаимЕдИзмПрослеж;
    property КолВЕдПрослеж: UnicodeString read Get_КолВЕдПрослеж write Set_КолВЕдПрослеж;
    property ДопПрослеж: UnicodeString read Get_ДопПрослеж write Set_ДопПрослеж;
  end;

{ IXMLФайл_Документ_ТаблСчФакт_СведТов_ДопСведТов_СведПрослежList }

  IXMLФайл_Документ_ТаблСчФакт_СведТов_ДопСведТов_СведПрослежList = interface(IXMLNodeCollection)
    ['{25C1EC95-CEE5-4641-92AA-98E1F2467FCB}']
    { Methods & Properties }
    function Add: IXMLФайл_Документ_ТаблСчФакт_СведТов_ДопСведТов_СведПрослеж;
    function Insert(const Index: Integer): IXMLФайл_Документ_ТаблСчФакт_СведТов_ДопСведТов_СведПрослеж;

    function Get_Item(Index: Integer): IXMLФайл_Документ_ТаблСчФакт_СведТов_ДопСведТов_СведПрослеж;
    property Items[Index: Integer]: IXMLФайл_Документ_ТаблСчФакт_СведТов_ДопСведТов_СведПрослеж read Get_Item; default;
  end;

{ IXMLФайл_Документ_ТаблСчФакт_СведТов_ДопСведТов_НомСредИдентТов }

  IXMLФайл_Документ_ТаблСчФакт_СведТов_ДопСведТов_НомСредИдентТов = interface(IXMLNode)
    ['{7369E3EA-520B-4300-AD8E-E3573A28BC59}']
    { Property Accessors }
    function Get_ИдентТрансУпак: UnicodeString;
    function Get_КИЗ: IXMLФайл_Документ_ТаблСчФакт_СведТов_ДопСведТов_НомСредИдентТов_КИЗList;
    function Get_НомУпак: IXMLФайл_Документ_ТаблСчФакт_СведТов_ДопСведТов_НомСредИдентТов_НомУпакList;
    procedure Set_ИдентТрансУпак(Value: UnicodeString);
    { Methods & Properties }
    property ИдентТрансУпак: UnicodeString read Get_ИдентТрансУпак write Set_ИдентТрансУпак;
    property КИЗ: IXMLФайл_Документ_ТаблСчФакт_СведТов_ДопСведТов_НомСредИдентТов_КИЗList read Get_КИЗ;
    property НомУпак: IXMLФайл_Документ_ТаблСчФакт_СведТов_ДопСведТов_НомСредИдентТов_НомУпакList read Get_НомУпак;
  end;

{ IXMLФайл_Документ_ТаблСчФакт_СведТов_ДопСведТов_НомСредИдентТовList }

  IXMLФайл_Документ_ТаблСчФакт_СведТов_ДопСведТов_НомСредИдентТовList = interface(IXMLNodeCollection)
    ['{698A0330-0382-45F2-8A18-04E37C5F8F6A}']
    { Methods & Properties }
    function Add: IXMLФайл_Документ_ТаблСчФакт_СведТов_ДопСведТов_НомСредИдентТов;
    function Insert(const Index: Integer): IXMLФайл_Документ_ТаблСчФакт_СведТов_ДопСведТов_НомСредИдентТов;

    function Get_Item(Index: Integer): IXMLФайл_Документ_ТаблСчФакт_СведТов_ДопСведТов_НомСредИдентТов;
    property Items[Index: Integer]: IXMLФайл_Документ_ТаблСчФакт_СведТов_ДопСведТов_НомСредИдентТов read Get_Item; default;
  end;

{ IXMLФайл_Документ_ТаблСчФакт_ВсегоОпл }

  IXMLФайл_Документ_ТаблСчФакт_ВсегоОпл = interface(IXMLNode)
    ['{7B19A5BD-055E-4109-A2C4-C98200DB00D0}']
    { Property Accessors }
    function Get_СтТовБезНДСВсего: UnicodeString;
    function Get_СтТовУчНалВсего: UnicodeString;
    function Get_ДефСтТовУчНалВсего: UnicodeString;
    function Get_СумНалВсего: IXMLСумНДСТип;
    function Get_КолНеттоВс: UnicodeString;
    procedure Set_СтТовБезНДСВсего(Value: UnicodeString);
    procedure Set_СтТовУчНалВсего(Value: UnicodeString);
    procedure Set_ДефСтТовУчНалВсего(Value: UnicodeString);
    procedure Set_КолНеттоВс(Value: UnicodeString);
    { Methods & Properties }
    property СтТовБезНДСВсего: UnicodeString read Get_СтТовБезНДСВсего write Set_СтТовБезНДСВсего;
    property СтТовУчНалВсего: UnicodeString read Get_СтТовУчНалВсего write Set_СтТовУчНалВсего;
    property ДефСтТовУчНалВсего: UnicodeString read Get_ДефСтТовУчНалВсего write Set_ДефСтТовУчНалВсего;
    property СумНалВсего: IXMLСумНДСТип read Get_СумНалВсего;
    property КолНеттоВс: UnicodeString read Get_КолНеттоВс write Set_КолНеттоВс;
  end;

{ IXMLФайл_Документ_СвПродПер }

  IXMLФайл_Документ_СвПродПер = interface(IXMLNode)
    ['{95856A91-0734-48F9-855F-8AD5A0D984B6}']
    { Property Accessors }
    function Get_СвПер: IXMLФайл_Документ_СвПродПер_СвПер;
    function Get_ИнфПолФХЖ3: IXMLФайл_Документ_СвПродПер_ИнфПолФХЖ3;
    { Methods & Properties }
    property СвПер: IXMLФайл_Документ_СвПродПер_СвПер read Get_СвПер;
    property ИнфПолФХЖ3: IXMLФайл_Документ_СвПродПер_ИнфПолФХЖ3 read Get_ИнфПолФХЖ3;
  end;

{ IXMLФайл_Документ_СвПродПер_СвПер }

  IXMLФайл_Документ_СвПродПер_СвПер = interface(IXMLNode)
    ['{A3289869-C955-4B42-8EA0-66B5176769F0}']
    { Property Accessors }
    function Get_СодОпер: UnicodeString;
    function Get_ВидОпер: UnicodeString;
    function Get_ДатаПер: UnicodeString;
    function Get_ДатаНач: UnicodeString;
    function Get_ДатаОкон: UnicodeString;
    function Get_ОснПер: IXMLОснованиеТипList;
    function Get_СвЛицПер: IXMLФайл_Документ_СвПродПер_СвПер_СвЛицПер;
    function Get_ТранГруз: IXMLФайл_Документ_СвПродПер_СвПер_ТранГруз;
    function Get_СвПерВещи: IXMLФайл_Документ_СвПродПер_СвПер_СвПерВещи;
    procedure Set_СодОпер(Value: UnicodeString);
    procedure Set_ВидОпер(Value: UnicodeString);
    procedure Set_ДатаПер(Value: UnicodeString);
    procedure Set_ДатаНач(Value: UnicodeString);
    procedure Set_ДатаОкон(Value: UnicodeString);
    { Methods & Properties }
    property СодОпер: UnicodeString read Get_СодОпер write Set_СодОпер;
    property ВидОпер: UnicodeString read Get_ВидОпер write Set_ВидОпер;
    property ДатаПер: UnicodeString read Get_ДатаПер write Set_ДатаПер;
    property ДатаНач: UnicodeString read Get_ДатаНач write Set_ДатаНач;
    property ДатаОкон: UnicodeString read Get_ДатаОкон write Set_ДатаОкон;
    property ОснПер: IXMLОснованиеТипList read Get_ОснПер;
    property СвЛицПер: IXMLФайл_Документ_СвПродПер_СвПер_СвЛицПер read Get_СвЛицПер;
    property ТранГруз: IXMLФайл_Документ_СвПродПер_СвПер_ТранГруз read Get_ТранГруз;
    property СвПерВещи: IXMLФайл_Документ_СвПродПер_СвПер_СвПерВещи read Get_СвПерВещи;
  end;

{ IXMLФайл_Документ_СвПродПер_СвПер_СвЛицПер }

  IXMLФайл_Документ_СвПродПер_СвПер_СвЛицПер = interface(IXMLNode)
    ['{084F1769-B1EE-4234-81A9-0D3C07F7E187}']
    { Property Accessors }
    function Get_РабОргПрод: IXMLФайл_Документ_СвПродПер_СвПер_СвЛицПер_РабОргПрод;
    function Get_ИнЛицо: IXMLФайл_Документ_СвПродПер_СвПер_СвЛицПер_ИнЛицо;
    { Methods & Properties }
    property РабОргПрод: IXMLФайл_Документ_СвПродПер_СвПер_СвЛицПер_РабОргПрод read Get_РабОргПрод;
    property ИнЛицо: IXMLФайл_Документ_СвПродПер_СвПер_СвЛицПер_ИнЛицо read Get_ИнЛицо;
  end;

{ IXMLФайл_Документ_СвПродПер_СвПер_СвЛицПер_РабОргПрод }

  IXMLФайл_Документ_СвПродПер_СвПер_СвЛицПер_РабОргПрод = interface(IXMLNode)
    ['{BC3D82F7-B28F-4844-BD06-B3369A0F2921}']
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
    ['{90134675-AB2A-4A43-B714-C03F67723C63}']
    { Property Accessors }
    function Get_ПредОргПер: IXMLФайл_Документ_СвПродПер_СвПер_СвЛицПер_ИнЛицо_ПредОргПер;
    function Get_ФЛПер: IXMLФайл_Документ_СвПродПер_СвПер_СвЛицПер_ИнЛицо_ФЛПер;
    { Methods & Properties }
    property ПредОргПер: IXMLФайл_Документ_СвПродПер_СвПер_СвЛицПер_ИнЛицо_ПредОргПер read Get_ПредОргПер;
    property ФЛПер: IXMLФайл_Документ_СвПродПер_СвПер_СвЛицПер_ИнЛицо_ФЛПер read Get_ФЛПер;
  end;

{ IXMLФайл_Документ_СвПродПер_СвПер_СвЛицПер_ИнЛицо_ПредОргПер }

  IXMLФайл_Документ_СвПродПер_СвПер_СвЛицПер_ИнЛицо_ПредОргПер = interface(IXMLNode)
    ['{09DE3864-C512-4498-A5CE-C33167AF0366}']
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
    ['{4B609DC8-7C22-43A4-B00A-07E62967B248}']
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
    ['{8E5B50F4-9AE9-4BCD-8B29-10F5D986D892}']
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
    ['{13241313-AB9A-4608-BBFD-76A7BAAA08F6}']
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
    ['{24E8CD1C-8851-4B87-AEF2-026AACD5AA81}']
    { Methods & Properties }
    function Add: IXMLФайл_Документ_СвПродПер_СвПер_ТранГруз_ТранНакл;
    function Insert(const Index: Integer): IXMLФайл_Документ_СвПродПер_СвПер_ТранГруз_ТранНакл;

    function Get_Item(Index: Integer): IXMLФайл_Документ_СвПродПер_СвПер_ТранГруз_ТранНакл;
    property Items[Index: Integer]: IXMLФайл_Документ_СвПродПер_СвПер_ТранГруз_ТранНакл read Get_Item; default;
  end;

{ IXMLФайл_Документ_СвПродПер_СвПер_СвПерВещи }

  IXMLФайл_Документ_СвПродПер_СвПер_СвПерВещи = interface(IXMLNode)
    ['{32097D19-0486-42AD-A2D5-711D6C13D126}']
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
    ['{349A96FC-F166-4C52-BF04-75EE58C0A61A}']
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
    ['{77105686-1C49-4423-9D71-0ED7A081168C}']
    { Property Accessors }
    function Get_ОблПолн: UnicodeString;
    function Get_Статус: UnicodeString;
    function Get_ОснПолн: UnicodeString;
    function Get_ОснПолнОрг: UnicodeString;
    function Get_ФЛ: IXMLСвФЛТип;
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
    property ФЛ: IXMLСвФЛТип read Get_ФЛ;
    property ИП: IXMLСвИПТип read Get_ИП;
    property ЮЛ: IXMLФайл_Документ_Подписант_ЮЛ read Get_ЮЛ;
  end;

{ IXMLФайл_Документ_ПодписантList }

  IXMLФайл_Документ_ПодписантList = interface(IXMLNodeCollection)
    ['{BC13D1C9-C3DA-4C48-8AF8-D6828DAB2813}']
    { Methods & Properties }
    function Add: IXMLФайл_Документ_Подписант;
    function Insert(const Index: Integer): IXMLФайл_Документ_Подписант;

    function Get_Item(Index: Integer): IXMLФайл_Документ_Подписант;
    property Items[Index: Integer]: IXMLФайл_Документ_Подписант read Get_Item; default;
  end;

{ IXMLФайл_Документ_Подписант_ЮЛ }

  IXMLФайл_Документ_Подписант_ЮЛ = interface(IXMLNode)
    ['{C32C1FA9-9DE8-4CDD-ACA9-02755C6FEAD3}']
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

{ IXMLФайл_Документ_ТаблСчФакт_СведТов_ДопСведТов_НомСредИдентТов_НомУпакList }

  IXMLФайл_Документ_ТаблСчФакт_СведТов_ДопСведТов_НомСредИдентТов_НомУпакList = interface(IXMLNodeCollection)
    ['{6C1DD439-2187-4453-BE8F-5EBB6A08ECB8}']
    { Methods & Properties }
    function Add(const Value: UnicodeString): IXMLNode;
    function Insert(const Index: Integer; const Value: UnicodeString): IXMLNode;

    function Get_Item(Index: Integer): UnicodeString;
    property Items[Index: Integer]: UnicodeString read Get_Item; default;
  end;

{ IXMLФайл_Документ_ТаблСчФакт_СведТов_ДопСведТов_НомСредИдентТов_КИЗList }

  IXMLФайл_Документ_ТаблСчФакт_СведТов_ДопСведТов_НомСредИдентТов_КИЗList = interface(IXMLNodeCollection)
    ['{21F95BBB-3ED6-4205-9677-43F576706A92}']
    { Methods & Properties }
    function Add(const Value: UnicodeString): IXMLNode;
    function Insert(const Index: Integer; const Value: UnicodeString): IXMLNode;

    function Get_Item(Index: Integer): UnicodeString;
    property Items[Index: Integer]: UnicodeString read Get_Item; default;
  end;

{ Forward Decls }

  TXMLФайл = class;
  TXMLФайл_СвУчДокОбор = class;
  TXMLФайл_СвУчДокОбор_СвОЭДОтпр = class;
  TXMLФайл_Документ = class;
  TXMLФайл_Документ_СвСчФакт = class;
  TXMLФайл_Документ_СвСчФакт_ИспрСчФ = class;
  TXMLУчастникТип = class;
  TXMLУчастникТипList = class;
  TXMLУчастникТип_ИдСв = class;
  TXMLСвИПТип = class;
  TXMLФИОТип = class;
  TXMLУчастникТип_ИдСв_СвЮЛУч = class;
  TXMLУчастникТип_ИдСв_СвИнНеУч = class;
  TXMLСвФЛТип = class;
  TXMLАдресТип = class;
  TXMLАдрРФТип = class;
  TXMLАдрИнфТип = class;
  TXMLКонтактТип = class;
  TXMLУчастникТип_БанкРекв = class;
  TXMLУчастникТип_БанкРекв_СвБанк = class;
  TXMLФайл_Документ_СвСчФакт_ГрузОт = class;
  TXMLФайл_Документ_СвСчФакт_ГрузОтList = class;
  TXMLФайл_Документ_СвСчФакт_СвПРД = class;
  TXMLФайл_Документ_СвСчФакт_СвПРДList = class;
  TXMLФайл_Документ_СвСчФакт_ДопСвФХЖ1 = class;
  TXMLФайл_Документ_СвСчФакт_ДопСвФХЖ1_ИнфПродГосЗакКазн = class;
  TXMLОснованиеТип = class;
  TXMLОснованиеТипList = class;
  TXMLФайл_Документ_СвСчФакт_ДокПодтвОтгр = class;
  TXMLФайл_Документ_СвСчФакт_ДокПодтвОтгрList = class;
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
  TXMLФайл_Документ_ТаблСчФакт_СведТов_ДопСведТов_СведПрослеж = class;
  TXMLФайл_Документ_ТаблСчФакт_СведТов_ДопСведТов_СведПрослежList = class;
  TXMLФайл_Документ_ТаблСчФакт_СведТов_ДопСведТов_НомСредИдентТов = class;
  TXMLФайл_Документ_ТаблСчФакт_СведТов_ДопСведТов_НомСредИдентТовList = class;
  TXMLФайл_Документ_ТаблСчФакт_ВсегоОпл = class;
  TXMLФайл_Документ_СвПродПер = class;
  TXMLФайл_Документ_СвПродПер_СвПер = class;
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
  TXMLФайл_Документ_Подписант_ЮЛ = class;
  TXMLФайл_Документ_ТаблСчФакт_СведТов_ДопСведТов_НомСредИдентТов_НомУпакList = class;
  TXMLФайл_Документ_ТаблСчФакт_СведТов_ДопСведТов_НомСредИдентТов_КИЗList = class;

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
    function Get_СоглСтрДопИнф: UnicodeString;
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
    procedure Set_СоглСтрДопИнф(Value: UnicodeString);
  public
    procedure AfterConstruction; override;
  end;

{ TXMLФайл_Документ_СвСчФакт }

  TXMLФайл_Документ_СвСчФакт = class(TXMLNode, IXMLФайл_Документ_СвСчФакт)
  private
    FСвПрод: IXMLУчастникТипList;
    FГрузОт: IXMLФайл_Документ_СвСчФакт_ГрузОтList;
    FГрузПолуч: IXMLУчастникТипList;
    FСвПРД: IXMLФайл_Документ_СвСчФакт_СвПРДList;
    FСвПокуп: IXMLУчастникТипList;
    FДокПодтвОтгр: IXMLФайл_Документ_СвСчФакт_ДокПодтвОтгрList;
  protected
    { IXMLФайл_Документ_СвСчФакт }
    function Get_НомерСчФ: UnicodeString;
    function Get_ДатаСчФ: UnicodeString;
    function Get_КодОКВ: UnicodeString;
    function Get_ИспрСчФ: IXMLФайл_Документ_СвСчФакт_ИспрСчФ;
    function Get_СвПрод: IXMLУчастникТипList;
    function Get_ГрузОт: IXMLФайл_Документ_СвСчФакт_ГрузОтList;
    function Get_ГрузПолуч: IXMLУчастникТипList;
    function Get_СвПРД: IXMLФайл_Документ_СвСчФакт_СвПРДList;
    function Get_СвПокуп: IXMLУчастникТипList;
    function Get_ДопСвФХЖ1: IXMLФайл_Документ_СвСчФакт_ДопСвФХЖ1;
    function Get_ДокПодтвОтгр: IXMLФайл_Документ_СвСчФакт_ДокПодтвОтгрList;
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
    function Get_ДефНомИспрСчФ: UnicodeString;
    function Get_ДатаИспрСчФ: UnicodeString;
    function Get_ДефДатаИспрСчФ: UnicodeString;
    procedure Set_НомИспрСчФ(Value: Integer);
    procedure Set_ДефНомИспрСчФ(Value: UnicodeString);
    procedure Set_ДатаИспрСчФ(Value: UnicodeString);
    procedure Set_ДефДатаИспрСчФ(Value: UnicodeString);
  end;

{ TXMLУчастникТип }

  TXMLУчастникТип = class(TXMLNode, IXMLУчастникТип)
  protected
    { IXMLУчастникТип }
    function Get_ОКПО: UnicodeString;
    function Get_СтруктПодр: UnicodeString;
    function Get_ИнфДляУчаст: UnicodeString;
    function Get_КраткНазв: UnicodeString;
    function Get_ИдСв: IXMLУчастникТип_ИдСв;
    function Get_Адрес: IXMLАдресТип;
    function Get_Контакт: IXMLКонтактТип;
    function Get_БанкРекв: IXMLУчастникТип_БанкРекв;
    procedure Set_ОКПО(Value: UnicodeString);
    procedure Set_СтруктПодр(Value: UnicodeString);
    procedure Set_ИнфДляУчаст(Value: UnicodeString);
    procedure Set_КраткНазв(Value: UnicodeString);
  public
    procedure AfterConstruction; override;
  end;

{ TXMLУчастникТипList }

  TXMLУчастникТипList = class(TXMLNodeCollection, IXMLУчастникТипList)
  protected
    { IXMLУчастникТипList }
    function Add: IXMLУчастникТип;
    function Insert(const Index: Integer): IXMLУчастникТип;

    function Get_Item(Index: Integer): IXMLУчастникТип;
  end;

{ TXMLУчастникТип_ИдСв }

  TXMLУчастникТип_ИдСв = class(TXMLNode, IXMLУчастникТип_ИдСв)
  protected
    { IXMLУчастникТип_ИдСв }
    function Get_СвИП: IXMLСвИПТип;
    function Get_СвЮЛУч: IXMLУчастникТип_ИдСв_СвЮЛУч;
    function Get_СвИнНеУч: IXMLУчастникТип_ИдСв_СвИнНеУч;
    function Get_СвФЛУчастФХЖ: IXMLСвФЛТип;
  public
    procedure AfterConstruction; override;
  end;

{ TXMLСвИПТип }

  TXMLСвИПТип = class(TXMLNode, IXMLСвИПТип)
  protected
    { IXMLСвИПТип }
    function Get_ИННФЛ: UnicodeString;
    function Get_ДефИННФЛ: UnicodeString;
    function Get_СвГосРегИП: UnicodeString;
    function Get_ИныеСвед: UnicodeString;
    function Get_ФИО: IXMLФИОТип;
    procedure Set_ИННФЛ(Value: UnicodeString);
    procedure Set_ДефИННФЛ(Value: UnicodeString);
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
    function Get_ДефИННЮЛ: UnicodeString;
    function Get_КПП: UnicodeString;
    procedure Set_НаимОрг(Value: UnicodeString);
    procedure Set_ИННЮЛ(Value: UnicodeString);
    procedure Set_ДефИННЮЛ(Value: UnicodeString);
    procedure Set_КПП(Value: UnicodeString);
  end;

{ TXMLУчастникТип_ИдСв_СвИнНеУч }

  TXMLУчастникТип_ИдСв_СвИнНеУч = class(TXMLNode, IXMLУчастникТип_ИдСв_СвИнНеУч)
  protected
    { IXMLУчастникТип_ИдСв_СвИнНеУч }
    function Get_НаимОрг: UnicodeString;
    function Get_Идентиф: UnicodeString;
    function Get_ИныеСвед: UnicodeString;
    procedure Set_НаимОрг(Value: UnicodeString);
    procedure Set_Идентиф(Value: UnicodeString);
    procedure Set_ИныеСвед(Value: UnicodeString);
  end;

{ TXMLСвФЛТип }

  TXMLСвФЛТип = class(TXMLNode, IXMLСвФЛТип)
  protected
    { IXMLСвФЛТип }
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

{ TXMLФайл_Документ_СвСчФакт_ГрузОтList }

  TXMLФайл_Документ_СвСчФакт_ГрузОтList = class(TXMLNodeCollection, IXMLФайл_Документ_СвСчФакт_ГрузОтList)
  protected
    { IXMLФайл_Документ_СвСчФакт_ГрузОтList }
    function Add: IXMLФайл_Документ_СвСчФакт_ГрузОт;
    function Insert(const Index: Integer): IXMLФайл_Документ_СвСчФакт_ГрузОт;

    function Get_Item(Index: Integer): IXMLФайл_Документ_СвСчФакт_ГрузОт;
  end;

{ TXMLФайл_Документ_СвСчФакт_СвПРД }

  TXMLФайл_Документ_СвСчФакт_СвПРД = class(TXMLNode, IXMLФайл_Документ_СвСчФакт_СвПРД)
  protected
    { IXMLФайл_Документ_СвСчФакт_СвПРД }
    function Get_НомерПРД: UnicodeString;
    function Get_ДатаПРД: UnicodeString;
    function Get_СуммаПРД: UnicodeString;
    procedure Set_НомерПРД(Value: UnicodeString);
    procedure Set_ДатаПРД(Value: UnicodeString);
    procedure Set_СуммаПРД(Value: UnicodeString);
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
    function Get_ОбстФормСЧФ: UnicodeString;
    function Get_ИнфПродГосЗакКазн: IXMLФайл_Документ_СвСчФакт_ДопСвФХЖ1_ИнфПродГосЗакКазн;
    function Get_СвФактор: IXMLУчастникТип;
    function Get_ОснУстДенТреб: IXMLОснованиеТип;
    procedure Set_ИдГосКон(Value: UnicodeString);
    procedure Set_НаимОКВ(Value: UnicodeString);
    procedure Set_КурсВал(Value: UnicodeString);
    procedure Set_ОбстФормСЧФ(Value: UnicodeString);
  public
    procedure AfterConstruction; override;
  end;

{ TXMLФайл_Документ_СвСчФакт_ДопСвФХЖ1_ИнфПродГосЗакКазн }

  TXMLФайл_Документ_СвСчФакт_ДопСвФХЖ1_ИнфПродГосЗакКазн = class(TXMLNode, IXMLФайл_Документ_СвСчФакт_ДопСвФХЖ1_ИнфПродГосЗакКазн)
  protected
    { IXMLФайл_Документ_СвСчФакт_ДопСвФХЖ1_ИнфПродГосЗакКазн }
    function Get_ДатаГосКонт: UnicodeString;
    function Get_НомерГосКонт: UnicodeString;
    function Get_ЛицСчетПрод: UnicodeString;
    function Get_КодПродБюджКласс: UnicodeString;
    function Get_КодЦелиПрод: UnicodeString;
    function Get_КодКазначПрод: UnicodeString;
    function Get_НаимКазначПрод: UnicodeString;
    procedure Set_ДатаГосКонт(Value: UnicodeString);
    procedure Set_НомерГосКонт(Value: UnicodeString);
    procedure Set_ЛицСчетПрод(Value: UnicodeString);
    procedure Set_КодПродБюджКласс(Value: UnicodeString);
    procedure Set_КодЦелиПрод(Value: UnicodeString);
    procedure Set_КодКазначПрод(Value: UnicodeString);
    procedure Set_НаимКазначПрод(Value: UnicodeString);
  end;

{ TXMLОснованиеТип }

  TXMLОснованиеТип = class(TXMLNode, IXMLОснованиеТип)
  protected
    { IXMLОснованиеТип }
    function Get_НаимОсн: UnicodeString;
    function Get_НомОсн: UnicodeString;
    function Get_ДатаОсн: UnicodeString;
    function Get_ДопСвОсн: UnicodeString;
    function Get_ИдентОсн: UnicodeString;
    procedure Set_НаимОсн(Value: UnicodeString);
    procedure Set_НомОсн(Value: UnicodeString);
    procedure Set_ДатаОсн(Value: UnicodeString);
    procedure Set_ДопСвОсн(Value: UnicodeString);
    procedure Set_ИдентОсн(Value: UnicodeString);
  end;

{ TXMLОснованиеТипList }

  TXMLОснованиеТипList = class(TXMLNodeCollection, IXMLОснованиеТипList)
  protected
    { IXMLОснованиеТипList }
    function Add: IXMLОснованиеТип;
    function Insert(const Index: Integer): IXMLОснованиеТип;

    function Get_Item(Index: Integer): IXMLОснованиеТип;
  end;

{ TXMLФайл_Документ_СвСчФакт_ДокПодтвОтгр }

  TXMLФайл_Документ_СвСчФакт_ДокПодтвОтгр = class(TXMLNode, IXMLФайл_Документ_СвСчФакт_ДокПодтвОтгр)
  protected
    { IXMLФайл_Документ_СвСчФакт_ДокПодтвОтгр }
    function Get_НаимДокОтгр: UnicodeString;
    function Get_НомДокОтгр: UnicodeString;
    function Get_ДатаДокОтгр: UnicodeString;
    procedure Set_НаимДокОтгр(Value: UnicodeString);
    procedure Set_НомДокОтгр(Value: UnicodeString);
    procedure Set_ДатаДокОтгр(Value: UnicodeString);
  end;

{ TXMLФайл_Документ_СвСчФакт_ДокПодтвОтгрList }

  TXMLФайл_Документ_СвСчФакт_ДокПодтвОтгрList = class(TXMLNodeCollection, IXMLФайл_Документ_СвСчФакт_ДокПодтвОтгрList)
  protected
    { IXMLФайл_Документ_СвСчФакт_ДокПодтвОтгрList }
    function Add: IXMLФайл_Документ_СвСчФакт_ДокПодтвОтгр;
    function Insert(const Index: Integer): IXMLФайл_Документ_СвСчФакт_ДокПодтвОтгр;

    function Get_Item(Index: Integer): IXMLФайл_Документ_СвСчФакт_ДокПодтвОтгр;
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
    function Get_ДефОКЕИ_Тов: UnicodeString;
    function Get_КолТов: UnicodeString;
    function Get_ЦенаТов: UnicodeString;
    function Get_СтТовБезНДС: UnicodeString;
    function Get_НалСт: UnicodeString;
    function Get_СтТовУчНал: UnicodeString;
    function Get_ДефСтТовУчНал: UnicodeString;
    function Get_Акциз: IXMLСумАкцизТип;
    function Get_СумНал: IXMLСумНДСТип;
    function Get_СвТД: IXMLФайл_Документ_ТаблСчФакт_СведТов_СвТДList;
    function Get_ДопСведТов: IXMLФайл_Документ_ТаблСчФакт_СведТов_ДопСведТов;
    function Get_ИнфПолФХЖ2: IXMLТекстИнфТипList;
    procedure Set_НомСтр(Value: Integer);
    procedure Set_НаимТов(Value: UnicodeString);
    procedure Set_ОКЕИ_Тов(Value: UnicodeString);
    procedure Set_ДефОКЕИ_Тов(Value: UnicodeString);
    procedure Set_КолТов(Value: UnicodeString);
    procedure Set_ЦенаТов(Value: UnicodeString);
    procedure Set_СтТовБезНДС(Value: UnicodeString);
    procedure Set_НалСт(Value: UnicodeString);
    procedure Set_СтТовУчНал(Value: UnicodeString);
    procedure Set_ДефСтТовУчНал(Value: UnicodeString);
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
    function Get_ДефНДС: UnicodeString;
    procedure Set_СумНал(Value: UnicodeString);
    procedure Set_БезНДС(Value: UnicodeString);
    procedure Set_ДефНДС(Value: UnicodeString);
  end;

{ TXMLФайл_Документ_ТаблСчФакт_СведТов_СвТД }

  TXMLФайл_Документ_ТаблСчФакт_СведТов_СвТД = class(TXMLNode, IXMLФайл_Документ_ТаблСчФакт_СведТов_СвТД)
  protected
    { IXMLФайл_Документ_ТаблСчФакт_СведТов_СвТД }
    function Get_КодПроисх: UnicodeString;
    function Get_ДефКодПроисх: UnicodeString;
    function Get_НомерТД: UnicodeString;
    procedure Set_КодПроисх(Value: UnicodeString);
    procedure Set_ДефКодПроисх(Value: UnicodeString);
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
  private
    FСведПрослеж: IXMLФайл_Документ_ТаблСчФакт_СведТов_ДопСведТов_СведПрослежList;
    FНомСредИдентТов: IXMLФайл_Документ_ТаблСчФакт_СведТов_ДопСведТов_НомСредИдентТовList;
  protected
    { IXMLФайл_Документ_ТаблСчФакт_СведТов_ДопСведТов }
    function Get_ПрТовРаб: UnicodeString;
    function Get_ДопПризн: UnicodeString;
    function Get_НаимЕдИзм: UnicodeString;
    function Get_КрНаимСтрПр: UnicodeString;
    function Get_НадлОтп: UnicodeString;
    function Get_ХарактерТов: UnicodeString;
    function Get_СортТов: UnicodeString;
    function Get_АртикулТов: UnicodeString;
    function Get_КодТов: UnicodeString;
    function Get_КодКат: UnicodeString;
    function Get_КодВидТов: UnicodeString;
    function Get_СведПрослеж: IXMLФайл_Документ_ТаблСчФакт_СведТов_ДопСведТов_СведПрослежList;
    function Get_НомСредИдентТов: IXMLФайл_Документ_ТаблСчФакт_СведТов_ДопСведТов_НомСредИдентТовList;
    procedure Set_ПрТовРаб(Value: UnicodeString);
    procedure Set_ДопПризн(Value: UnicodeString);
    procedure Set_НаимЕдИзм(Value: UnicodeString);
    procedure Set_КрНаимСтрПр(Value: UnicodeString);
    procedure Set_НадлОтп(Value: UnicodeString);
    procedure Set_ХарактерТов(Value: UnicodeString);
    procedure Set_СортТов(Value: UnicodeString);
    procedure Set_АртикулТов(Value: UnicodeString);
    procedure Set_КодТов(Value: UnicodeString);
    procedure Set_КодКат(Value: UnicodeString);
    procedure Set_КодВидТов(Value: UnicodeString);
  public
    procedure AfterConstruction; override;
  end;

{ TXMLФайл_Документ_ТаблСчФакт_СведТов_ДопСведТов_СведПрослеж }

  TXMLФайл_Документ_ТаблСчФакт_СведТов_ДопСведТов_СведПрослеж = class(TXMLNode, IXMLФайл_Документ_ТаблСчФакт_СведТов_ДопСведТов_СведПрослеж)
  protected
    { IXMLФайл_Документ_ТаблСчФакт_СведТов_ДопСведТов_СведПрослеж }
    function Get_НомТовПрослеж: UnicodeString;
    function Get_ЕдИзмПрослеж: UnicodeString;
    function Get_НаимЕдИзмПрослеж: UnicodeString;
    function Get_КолВЕдПрослеж: UnicodeString;
    function Get_ДопПрослеж: UnicodeString;
    procedure Set_НомТовПрослеж(Value: UnicodeString);
    procedure Set_ЕдИзмПрослеж(Value: UnicodeString);
    procedure Set_НаимЕдИзмПрослеж(Value: UnicodeString);
    procedure Set_КолВЕдПрослеж(Value: UnicodeString);
    procedure Set_ДопПрослеж(Value: UnicodeString);
  end;

{ TXMLФайл_Документ_ТаблСчФакт_СведТов_ДопСведТов_СведПрослежList }

  TXMLФайл_Документ_ТаблСчФакт_СведТов_ДопСведТов_СведПрослежList = class(TXMLNodeCollection, IXMLФайл_Документ_ТаблСчФакт_СведТов_ДопСведТов_СведПрослежList)
  protected
    { IXMLФайл_Документ_ТаблСчФакт_СведТов_ДопСведТов_СведПрослежList }
    function Add: IXMLФайл_Документ_ТаблСчФакт_СведТов_ДопСведТов_СведПрослеж;
    function Insert(const Index: Integer): IXMLФайл_Документ_ТаблСчФакт_СведТов_ДопСведТов_СведПрослеж;

    function Get_Item(Index: Integer): IXMLФайл_Документ_ТаблСчФакт_СведТов_ДопСведТов_СведПрослеж;
  end;

{ TXMLФайл_Документ_ТаблСчФакт_СведТов_ДопСведТов_НомСредИдентТов }

  TXMLФайл_Документ_ТаблСчФакт_СведТов_ДопСведТов_НомСредИдентТов = class(TXMLNode, IXMLФайл_Документ_ТаблСчФакт_СведТов_ДопСведТов_НомСредИдентТов)
  private
    FКИЗ: IXMLФайл_Документ_ТаблСчФакт_СведТов_ДопСведТов_НомСредИдентТов_КИЗList;
    FНомУпак: IXMLФайл_Документ_ТаблСчФакт_СведТов_ДопСведТов_НомСредИдентТов_НомУпакList;
  protected
    { IXMLФайл_Документ_ТаблСчФакт_СведТов_ДопСведТов_НомСредИдентТов }
    function Get_ИдентТрансУпак: UnicodeString;
    function Get_КИЗ: IXMLФайл_Документ_ТаблСчФакт_СведТов_ДопСведТов_НомСредИдентТов_КИЗList;
    function Get_НомУпак: IXMLФайл_Документ_ТаблСчФакт_СведТов_ДопСведТов_НомСредИдентТов_НомУпакList;
    procedure Set_ИдентТрансУпак(Value: UnicodeString);
  public
    procedure AfterConstruction; override;
  end;

{ TXMLФайл_Документ_ТаблСчФакт_СведТов_ДопСведТов_НомСредИдентТовList }

  TXMLФайл_Документ_ТаблСчФакт_СведТов_ДопСведТов_НомСредИдентТовList = class(TXMLNodeCollection, IXMLФайл_Документ_ТаблСчФакт_СведТов_ДопСведТов_НомСредИдентТовList)
  protected
    { IXMLФайл_Документ_ТаблСчФакт_СведТов_ДопСведТов_НомСредИдентТовList }
    function Add: IXMLФайл_Документ_ТаблСчФакт_СведТов_ДопСведТов_НомСредИдентТов;
    function Insert(const Index: Integer): IXMLФайл_Документ_ТаблСчФакт_СведТов_ДопСведТов_НомСредИдентТов;

    function Get_Item(Index: Integer): IXMLФайл_Документ_ТаблСчФакт_СведТов_ДопСведТов_НомСредИдентТов;
  end;

{ TXMLФайл_Документ_ТаблСчФакт_ВсегоОпл }

  TXMLФайл_Документ_ТаблСчФакт_ВсегоОпл = class(TXMLNode, IXMLФайл_Документ_ТаблСчФакт_ВсегоОпл)
  protected
    { IXMLФайл_Документ_ТаблСчФакт_ВсегоОпл }
    function Get_СтТовБезНДСВсего: UnicodeString;
    function Get_СтТовУчНалВсего: UnicodeString;
    function Get_ДефСтТовУчНалВсего: UnicodeString;
    function Get_СумНалВсего: IXMLСумНДСТип;
    function Get_КолНеттоВс: UnicodeString;
    procedure Set_СтТовБезНДСВсего(Value: UnicodeString);
    procedure Set_СтТовУчНалВсего(Value: UnicodeString);
    procedure Set_ДефСтТовУчНалВсего(Value: UnicodeString);
    procedure Set_КолНеттоВс(Value: UnicodeString);
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
    FОснПер: IXMLОснованиеТипList;
  protected
    { IXMLФайл_Документ_СвПродПер_СвПер }
    function Get_СодОпер: UnicodeString;
    function Get_ВидОпер: UnicodeString;
    function Get_ДатаПер: UnicodeString;
    function Get_ДатаНач: UnicodeString;
    function Get_ДатаОкон: UnicodeString;
    function Get_ОснПер: IXMLОснованиеТипList;
    function Get_СвЛицПер: IXMLФайл_Документ_СвПродПер_СвПер_СвЛицПер;
    function Get_ТранГруз: IXMLФайл_Документ_СвПродПер_СвПер_ТранГруз;
    function Get_СвПерВещи: IXMLФайл_Документ_СвПродПер_СвПер_СвПерВещи;
    procedure Set_СодОпер(Value: UnicodeString);
    procedure Set_ВидОпер(Value: UnicodeString);
    procedure Set_ДатаПер(Value: UnicodeString);
    procedure Set_ДатаНач(Value: UnicodeString);
    procedure Set_ДатаОкон(Value: UnicodeString);
  public
    procedure AfterConstruction; override;
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
    function Get_ФЛ: IXMLСвФЛТип;
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

{ TXMLФайл_Документ_ТаблСчФакт_СведТов_ДопСведТов_НомСредИдентТов_НомУпакList }

  TXMLФайл_Документ_ТаблСчФакт_СведТов_ДопСведТов_НомСредИдентТов_НомУпакList = class(TXMLNodeCollection, IXMLФайл_Документ_ТаблСчФакт_СведТов_ДопСведТов_НомСредИдентТов_НомУпакList)
  protected
    { IXMLФайл_Документ_ТаблСчФакт_СведТов_ДопСведТов_НомСредИдентТов_НомУпакList }
    function Add(const Value: UnicodeString): IXMLNode;
    function Insert(const Index: Integer; const Value: UnicodeString): IXMLNode;

    function Get_Item(Index: Integer): UnicodeString;
  end;

{ TXMLФайл_Документ_ТаблСчФакт_СведТов_ДопСведТов_НомСредИдентТов_КИЗList }

  TXMLФайл_Документ_ТаблСчФакт_СведТов_ДопСведТов_НомСредИдентТов_КИЗList = class(TXMLNodeCollection, IXMLФайл_Документ_ТаблСчФакт_СведТов_ДопСведТов_НомСредИдентТов_КИЗList)
  protected
    { IXMLФайл_Документ_ТаблСчФакт_СведТов_ДопСведТов_НомСредИдентТов_КИЗList }
    function Add(const Value: UnicodeString): IXMLNode;
    function Insert(const Index: Integer; const Value: UnicodeString): IXMLNode;

    function Get_Item(Index: Integer): UnicodeString;
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

function TXMLФайл_Документ.Get_СоглСтрДопИнф: UnicodeString;
begin
  Result := AttributeNodes['СоглСтрДопИнф'].Text;
end;

procedure TXMLФайл_Документ.Set_СоглСтрДопИнф(Value: UnicodeString);
begin
  SetAttribute('СоглСтрДопИнф', Value);
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
  RegisterChildNode('ДокПодтвОтгр', TXMLФайл_Документ_СвСчФакт_ДокПодтвОтгр);
  RegisterChildNode('ИнфПолФХЖ1', TXMLФайл_Документ_СвСчФакт_ИнфПолФХЖ1);
  FСвПрод := CreateCollection(TXMLУчастникТипList, IXMLУчастникТип, 'СвПрод') as IXMLУчастникТипList;
  FГрузОт := CreateCollection(TXMLФайл_Документ_СвСчФакт_ГрузОтList, IXMLФайл_Документ_СвСчФакт_ГрузОт, 'ГрузОт') as IXMLФайл_Документ_СвСчФакт_ГрузОтList;
  FГрузПолуч := CreateCollection(TXMLУчастникТипList, IXMLУчастникТип, 'ГрузПолуч') as IXMLУчастникТипList;
  FСвПРД := CreateCollection(TXMLФайл_Документ_СвСчФакт_СвПРДList, IXMLФайл_Документ_СвСчФакт_СвПРД, 'СвПРД') as IXMLФайл_Документ_СвСчФакт_СвПРДList;
  FСвПокуп := CreateCollection(TXMLУчастникТипList, IXMLУчастникТип, 'СвПокуп') as IXMLУчастникТипList;
  FДокПодтвОтгр := CreateCollection(TXMLФайл_Документ_СвСчФакт_ДокПодтвОтгрList, IXMLФайл_Документ_СвСчФакт_ДокПодтвОтгр, 'ДокПодтвОтгр') as IXMLФайл_Документ_СвСчФакт_ДокПодтвОтгрList;
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

function TXMLФайл_Документ_СвСчФакт.Get_СвПрод: IXMLУчастникТипList;
begin
  Result := FСвПрод;
end;

function TXMLФайл_Документ_СвСчФакт.Get_ГрузОт: IXMLФайл_Документ_СвСчФакт_ГрузОтList;
begin
  Result := FГрузОт;
end;

function TXMLФайл_Документ_СвСчФакт.Get_ГрузПолуч: IXMLУчастникТипList;
begin
  Result := FГрузПолуч;
end;

function TXMLФайл_Документ_СвСчФакт.Get_СвПРД: IXMLФайл_Документ_СвСчФакт_СвПРДList;
begin
  Result := FСвПРД;
end;

function TXMLФайл_Документ_СвСчФакт.Get_СвПокуп: IXMLУчастникТипList;
begin
  Result := FСвПокуп;
end;

function TXMLФайл_Документ_СвСчФакт.Get_ДопСвФХЖ1: IXMLФайл_Документ_СвСчФакт_ДопСвФХЖ1;
begin
  Result := ChildNodes['ДопСвФХЖ1'] as IXMLФайл_Документ_СвСчФакт_ДопСвФХЖ1;
end;

function TXMLФайл_Документ_СвСчФакт.Get_ДокПодтвОтгр: IXMLФайл_Документ_СвСчФакт_ДокПодтвОтгрList;
begin
  Result := FДокПодтвОтгр;
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

function TXMLФайл_Документ_СвСчФакт_ИспрСчФ.Get_ДефНомИспрСчФ: UnicodeString;
begin
  Result := AttributeNodes['ДефНомИспрСчФ'].Text;
end;

procedure TXMLФайл_Документ_СвСчФакт_ИспрСчФ.Set_ДефНомИспрСчФ(Value: UnicodeString);
begin
  SetAttribute('ДефНомИспрСчФ', Value);
end;

function TXMLФайл_Документ_СвСчФакт_ИспрСчФ.Get_ДатаИспрСчФ: UnicodeString;
begin
  Result := AttributeNodes['ДатаИспрСчФ'].Text;
end;

procedure TXMLФайл_Документ_СвСчФакт_ИспрСчФ.Set_ДатаИспрСчФ(Value: UnicodeString);
begin
  SetAttribute('ДатаИспрСчФ', Value);
end;

function TXMLФайл_Документ_СвСчФакт_ИспрСчФ.Get_ДефДатаИспрСчФ: UnicodeString;
begin
  Result := AttributeNodes['ДефДатаИспрСчФ'].Text;
end;

procedure TXMLФайл_Документ_СвСчФакт_ИспрСчФ.Set_ДефДатаИспрСчФ(Value: UnicodeString);
begin
  SetAttribute('ДефДатаИспрСчФ', Value);
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

function TXMLУчастникТип.Get_КраткНазв: UnicodeString;
begin
  Result := AttributeNodes['КраткНазв'].Text;
end;

procedure TXMLУчастникТип.Set_КраткНазв(Value: UnicodeString);
begin
  SetAttribute('КраткНазв', Value);
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

{ TXMLУчастникТипList }

function TXMLУчастникТипList.Add: IXMLУчастникТип;
begin
  Result := AddItem(-1) as IXMLУчастникТип;
end;

function TXMLУчастникТипList.Insert(const Index: Integer): IXMLУчастникТип;
begin
  Result := AddItem(Index) as IXMLУчастникТип;
end;

function TXMLУчастникТипList.Get_Item(Index: Integer): IXMLУчастникТип;
begin
  Result := List[Index] as IXMLУчастникТип;
end;

{ TXMLУчастникТип_ИдСв }

procedure TXMLУчастникТип_ИдСв.AfterConstruction;
begin
  RegisterChildNode('СвИП', TXMLСвИПТип);
  RegisterChildNode('СвЮЛУч', TXMLУчастникТип_ИдСв_СвЮЛУч);
  RegisterChildNode('СвИнНеУч', TXMLУчастникТип_ИдСв_СвИнНеУч);
  RegisterChildNode('СвФЛУчастФХЖ', TXMLСвФЛТип);
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

function TXMLУчастникТип_ИдСв.Get_СвФЛУчастФХЖ: IXMLСвФЛТип;
begin
  Result := ChildNodes['СвФЛУчастФХЖ'] as IXMLСвФЛТип;
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

function TXMLСвИПТип.Get_ДефИННФЛ: UnicodeString;
begin
  Result := AttributeNodes['ДефИННФЛ'].Text;
end;

procedure TXMLСвИПТип.Set_ДефИННФЛ(Value: UnicodeString);
begin
  SetAttribute('ДефИННФЛ', Value);
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

function TXMLУчастникТип_ИдСв_СвЮЛУч.Get_ДефИННЮЛ: UnicodeString;
begin
  Result := AttributeNodes['ДефИННЮЛ'].Text;
end;

procedure TXMLУчастникТип_ИдСв_СвЮЛУч.Set_ДефИННЮЛ(Value: UnicodeString);
begin
  SetAttribute('ДефИННЮЛ', Value);
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

function TXMLУчастникТип_ИдСв_СвИнНеУч.Get_Идентиф: UnicodeString;
begin
  Result := AttributeNodes['Идентиф'].Text;
end;

procedure TXMLУчастникТип_ИдСв_СвИнНеУч.Set_Идентиф(Value: UnicodeString);
begin
  SetAttribute('Идентиф', Value);
end;

function TXMLУчастникТип_ИдСв_СвИнНеУч.Get_ИныеСвед: UnicodeString;
begin
  Result := AttributeNodes['ИныеСвед'].Text;
end;

procedure TXMLУчастникТип_ИдСв_СвИнНеУч.Set_ИныеСвед(Value: UnicodeString);
begin
  SetAttribute('ИныеСвед', Value);
end;

{ TXMLСвФЛТип }

procedure TXMLСвФЛТип.AfterConstruction;
begin
  RegisterChildNode('ФИО', TXMLФИОТип);
  inherited;
end;

function TXMLСвФЛТип.Get_ГосРегИПВыдДов: UnicodeString;
begin
  Result := AttributeNodes['ГосРегИПВыдДов'].Text;
end;

procedure TXMLСвФЛТип.Set_ГосРегИПВыдДов(Value: UnicodeString);
begin
  SetAttribute('ГосРегИПВыдДов', Value);
end;

function TXMLСвФЛТип.Get_ИННФЛ: UnicodeString;
begin
  Result := AttributeNodes['ИННФЛ'].Text;
end;

procedure TXMLСвФЛТип.Set_ИННФЛ(Value: UnicodeString);
begin
  SetAttribute('ИННФЛ', Value);
end;

function TXMLСвФЛТип.Get_ИныеСвед: UnicodeString;
begin
  Result := AttributeNodes['ИныеСвед'].Text;
end;

procedure TXMLСвФЛТип.Set_ИныеСвед(Value: UnicodeString);
begin
  SetAttribute('ИныеСвед', Value);
end;

function TXMLСвФЛТип.Get_ФИО: IXMLФИОТип;
begin
  Result := ChildNodes['ФИО'] as IXMLФИОТип;
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

{ TXMLФайл_Документ_СвСчФакт_ГрузОтList }

function TXMLФайл_Документ_СвСчФакт_ГрузОтList.Add: IXMLФайл_Документ_СвСчФакт_ГрузОт;
begin
  Result := AddItem(-1) as IXMLФайл_Документ_СвСчФакт_ГрузОт;
end;

function TXMLФайл_Документ_СвСчФакт_ГрузОтList.Insert(const Index: Integer): IXMLФайл_Документ_СвСчФакт_ГрузОт;
begin
  Result := AddItem(Index) as IXMLФайл_Документ_СвСчФакт_ГрузОт;
end;

function TXMLФайл_Документ_СвСчФакт_ГрузОтList.Get_Item(Index: Integer): IXMLФайл_Документ_СвСчФакт_ГрузОт;
begin
  Result := List[Index] as IXMLФайл_Документ_СвСчФакт_ГрузОт;
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

function TXMLФайл_Документ_СвСчФакт_СвПРД.Get_СуммаПРД: UnicodeString;
begin
  Result := AttributeNodes['СуммаПРД'].Text;
end;

procedure TXMLФайл_Документ_СвСчФакт_СвПРД.Set_СуммаПРД(Value: UnicodeString);
begin
  SetAttribute('СуммаПРД', Value);
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

procedure TXMLФайл_Документ_СвСчФакт_ДопСвФХЖ1.AfterConstruction;
begin
  RegisterChildNode('ИнфПродГосЗакКазн', TXMLФайл_Документ_СвСчФакт_ДопСвФХЖ1_ИнфПродГосЗакКазн);
  RegisterChildNode('СвФактор', TXMLУчастникТип);
  RegisterChildNode('ОснУстДенТреб', TXMLОснованиеТип);
  inherited;
end;

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

function TXMLФайл_Документ_СвСчФакт_ДопСвФХЖ1.Get_ОбстФормСЧФ: UnicodeString;
begin
  Result := AttributeNodes['ОбстФормСЧФ'].Text;
end;

procedure TXMLФайл_Документ_СвСчФакт_ДопСвФХЖ1.Set_ОбстФормСЧФ(Value: UnicodeString);
begin
  SetAttribute('ОбстФормСЧФ', Value);
end;

function TXMLФайл_Документ_СвСчФакт_ДопСвФХЖ1.Get_ИнфПродГосЗакКазн: IXMLФайл_Документ_СвСчФакт_ДопСвФХЖ1_ИнфПродГосЗакКазн;
begin
  Result := ChildNodes['ИнфПродГосЗакКазн'] as IXMLФайл_Документ_СвСчФакт_ДопСвФХЖ1_ИнфПродГосЗакКазн;
end;

function TXMLФайл_Документ_СвСчФакт_ДопСвФХЖ1.Get_СвФактор: IXMLУчастникТип;
begin
  Result := ChildNodes['СвФактор'] as IXMLУчастникТип;
end;

function TXMLФайл_Документ_СвСчФакт_ДопСвФХЖ1.Get_ОснУстДенТреб: IXMLОснованиеТип;
begin
  Result := ChildNodes['ОснУстДенТреб'] as IXMLОснованиеТип;
end;

{ TXMLФайл_Документ_СвСчФакт_ДопСвФХЖ1_ИнфПродГосЗакКазн }

function TXMLФайл_Документ_СвСчФакт_ДопСвФХЖ1_ИнфПродГосЗакКазн.Get_ДатаГосКонт: UnicodeString;
begin
  Result := AttributeNodes['ДатаГосКонт'].Text;
end;

procedure TXMLФайл_Документ_СвСчФакт_ДопСвФХЖ1_ИнфПродГосЗакКазн.Set_ДатаГосКонт(Value: UnicodeString);
begin
  SetAttribute('ДатаГосКонт', Value);
end;

function TXMLФайл_Документ_СвСчФакт_ДопСвФХЖ1_ИнфПродГосЗакКазн.Get_НомерГосКонт: UnicodeString;
begin
  Result := AttributeNodes['НомерГосКонт'].Text;
end;

procedure TXMLФайл_Документ_СвСчФакт_ДопСвФХЖ1_ИнфПродГосЗакКазн.Set_НомерГосКонт(Value: UnicodeString);
begin
  SetAttribute('НомерГосКонт', Value);
end;

function TXMLФайл_Документ_СвСчФакт_ДопСвФХЖ1_ИнфПродГосЗакКазн.Get_ЛицСчетПрод: UnicodeString;
begin
  Result := AttributeNodes['ЛицСчетПрод'].Text;
end;

procedure TXMLФайл_Документ_СвСчФакт_ДопСвФХЖ1_ИнфПродГосЗакКазн.Set_ЛицСчетПрод(Value: UnicodeString);
begin
  SetAttribute('ЛицСчетПрод', Value);
end;

function TXMLФайл_Документ_СвСчФакт_ДопСвФХЖ1_ИнфПродГосЗакКазн.Get_КодПродБюджКласс: UnicodeString;
begin
  Result := AttributeNodes['КодПродБюджКласс'].Text;
end;

procedure TXMLФайл_Документ_СвСчФакт_ДопСвФХЖ1_ИнфПродГосЗакКазн.Set_КодПродБюджКласс(Value: UnicodeString);
begin
  SetAttribute('КодПродБюджКласс', Value);
end;

function TXMLФайл_Документ_СвСчФакт_ДопСвФХЖ1_ИнфПродГосЗакКазн.Get_КодЦелиПрод: UnicodeString;
begin
  Result := AttributeNodes['КодЦелиПрод'].Text;
end;

procedure TXMLФайл_Документ_СвСчФакт_ДопСвФХЖ1_ИнфПродГосЗакКазн.Set_КодЦелиПрод(Value: UnicodeString);
begin
  SetAttribute('КодЦелиПрод', Value);
end;

function TXMLФайл_Документ_СвСчФакт_ДопСвФХЖ1_ИнфПродГосЗакКазн.Get_КодКазначПрод: UnicodeString;
begin
  Result := AttributeNodes['КодКазначПрод'].Text;
end;

procedure TXMLФайл_Документ_СвСчФакт_ДопСвФХЖ1_ИнфПродГосЗакКазн.Set_КодКазначПрод(Value: UnicodeString);
begin
  SetAttribute('КодКазначПрод', Value);
end;

function TXMLФайл_Документ_СвСчФакт_ДопСвФХЖ1_ИнфПродГосЗакКазн.Get_НаимКазначПрод: UnicodeString;
begin
  Result := AttributeNodes['НаимКазначПрод'].Text;
end;

procedure TXMLФайл_Документ_СвСчФакт_ДопСвФХЖ1_ИнфПродГосЗакКазн.Set_НаимКазначПрод(Value: UnicodeString);
begin
  SetAttribute('НаимКазначПрод', Value);
end;

{ TXMLОснованиеТип }

function TXMLОснованиеТип.Get_НаимОсн: UnicodeString;
begin
  Result := AttributeNodes['НаимОсн'].Text;
end;

procedure TXMLОснованиеТип.Set_НаимОсн(Value: UnicodeString);
begin
  SetAttribute('НаимОсн', Value);
end;

function TXMLОснованиеТип.Get_НомОсн: UnicodeString;
begin
  Result := AttributeNodes['НомОсн'].Text;
end;

procedure TXMLОснованиеТип.Set_НомОсн(Value: UnicodeString);
begin
  SetAttribute('НомОсн', Value);
end;

function TXMLОснованиеТип.Get_ДатаОсн: UnicodeString;
begin
  Result := AttributeNodes['ДатаОсн'].Text;
end;

procedure TXMLОснованиеТип.Set_ДатаОсн(Value: UnicodeString);
begin
  SetAttribute('ДатаОсн', Value);
end;

function TXMLОснованиеТип.Get_ДопСвОсн: UnicodeString;
begin
  Result := AttributeNodes['ДопСвОсн'].Text;
end;

procedure TXMLОснованиеТип.Set_ДопСвОсн(Value: UnicodeString);
begin
  SetAttribute('ДопСвОсн', Value);
end;

function TXMLОснованиеТип.Get_ИдентОсн: UnicodeString;
begin
  Result := AttributeNodes['ИдентОсн'].Text;
end;

procedure TXMLОснованиеТип.Set_ИдентОсн(Value: UnicodeString);
begin
  SetAttribute('ИдентОсн', Value);
end;

{ TXMLОснованиеТипList }

function TXMLОснованиеТипList.Add: IXMLОснованиеТип;
begin
  Result := AddItem(-1) as IXMLОснованиеТип;
end;

function TXMLОснованиеТипList.Insert(const Index: Integer): IXMLОснованиеТип;
begin
  Result := AddItem(Index) as IXMLОснованиеТип;
end;

function TXMLОснованиеТипList.Get_Item(Index: Integer): IXMLОснованиеТип;
begin
  Result := List[Index] as IXMLОснованиеТип;
end;

{ TXMLФайл_Документ_СвСчФакт_ДокПодтвОтгр }

function TXMLФайл_Документ_СвСчФакт_ДокПодтвОтгр.Get_НаимДокОтгр: UnicodeString;
begin
  Result := AttributeNodes['НаимДокОтгр'].Text;
end;

procedure TXMLФайл_Документ_СвСчФакт_ДокПодтвОтгр.Set_НаимДокОтгр(Value: UnicodeString);
begin
  SetAttribute('НаимДокОтгр', Value);
end;

function TXMLФайл_Документ_СвСчФакт_ДокПодтвОтгр.Get_НомДокОтгр: UnicodeString;
begin
  Result := AttributeNodes['НомДокОтгр'].Text;
end;

procedure TXMLФайл_Документ_СвСчФакт_ДокПодтвОтгр.Set_НомДокОтгр(Value: UnicodeString);
begin
  SetAttribute('НомДокОтгр', Value);
end;

function TXMLФайл_Документ_СвСчФакт_ДокПодтвОтгр.Get_ДатаДокОтгр: UnicodeString;
begin
  Result := AttributeNodes['ДатаДокОтгр'].Text;
end;

procedure TXMLФайл_Документ_СвСчФакт_ДокПодтвОтгр.Set_ДатаДокОтгр(Value: UnicodeString);
begin
  SetAttribute('ДатаДокОтгр', Value);
end;

{ TXMLФайл_Документ_СвСчФакт_ДокПодтвОтгрList }

function TXMLФайл_Документ_СвСчФакт_ДокПодтвОтгрList.Add: IXMLФайл_Документ_СвСчФакт_ДокПодтвОтгр;
begin
  Result := AddItem(-1) as IXMLФайл_Документ_СвСчФакт_ДокПодтвОтгр;
end;

function TXMLФайл_Документ_СвСчФакт_ДокПодтвОтгрList.Insert(const Index: Integer): IXMLФайл_Документ_СвСчФакт_ДокПодтвОтгр;
begin
  Result := AddItem(Index) as IXMLФайл_Документ_СвСчФакт_ДокПодтвОтгр;
end;

function TXMLФайл_Документ_СвСчФакт_ДокПодтвОтгрList.Get_Item(Index: Integer): IXMLФайл_Документ_СвСчФакт_ДокПодтвОтгр;
begin
  Result := List[Index] as IXMLФайл_Документ_СвСчФакт_ДокПодтвОтгр;
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
  RegisterChildNode('ДопСведТов', TXMLФайл_Документ_ТаблСчФакт_СведТов_ДопСведТов);
  RegisterChildNode('ИнфПолФХЖ2', TXMLТекстИнфТип);
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

function TXMLФайл_Документ_ТаблСчФакт_СведТов.Get_ДефОКЕИ_Тов: UnicodeString;
begin
  Result := AttributeNodes['ДефОКЕИ_Тов'].Text;
end;

procedure TXMLФайл_Документ_ТаблСчФакт_СведТов.Set_ДефОКЕИ_Тов(Value: UnicodeString);
begin
  SetAttribute('ДефОКЕИ_Тов', Value);
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

function TXMLФайл_Документ_ТаблСчФакт_СведТов.Get_ДефСтТовУчНал: UnicodeString;
begin
  Result := AttributeNodes['ДефСтТовУчНал'].Text;
end;

procedure TXMLФайл_Документ_ТаблСчФакт_СведТов.Set_ДефСтТовУчНал(Value: UnicodeString);
begin
  SetAttribute('ДефСтТовУчНал', Value);
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

function TXMLФайл_Документ_ТаблСчФакт_СведТов.Get_ДопСведТов: IXMLФайл_Документ_ТаблСчФакт_СведТов_ДопСведТов;
begin
  Result := ChildNodes['ДопСведТов'] as IXMLФайл_Документ_ТаблСчФакт_СведТов_ДопСведТов;
end;

function TXMLФайл_Документ_ТаблСчФакт_СведТов.Get_ИнфПолФХЖ2: IXMLТекстИнфТипList;
begin
  Result := FИнфПолФХЖ2;
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

function TXMLСумНДСТип.Get_ДефНДС: UnicodeString;
begin
  Result := ChildNodes['ДефНДС'].Text;
end;

procedure TXMLСумНДСТип.Set_ДефНДС(Value: UnicodeString);
begin
  ChildNodes['ДефНДС'].NodeValue := Value;
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

function TXMLФайл_Документ_ТаблСчФакт_СведТов_СвТД.Get_ДефКодПроисх: UnicodeString;
begin
  Result := AttributeNodes['ДефКодПроисх'].Text;
end;

procedure TXMLФайл_Документ_ТаблСчФакт_СведТов_СвТД.Set_ДефКодПроисх(Value: UnicodeString);
begin
  SetAttribute('ДефКодПроисх', Value);
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

procedure TXMLФайл_Документ_ТаблСчФакт_СведТов_ДопСведТов.AfterConstruction;
begin
  RegisterChildNode('СведПрослеж', TXMLФайл_Документ_ТаблСчФакт_СведТов_ДопСведТов_СведПрослеж);
  RegisterChildNode('НомСредИдентТов', TXMLФайл_Документ_ТаблСчФакт_СведТов_ДопСведТов_НомСредИдентТов);
  FСведПрослеж := CreateCollection(TXMLФайл_Документ_ТаблСчФакт_СведТов_ДопСведТов_СведПрослежList, IXMLФайл_Документ_ТаблСчФакт_СведТов_ДопСведТов_СведПрослеж, 'СведПрослеж') as IXMLФайл_Документ_ТаблСчФакт_СведТов_ДопСведТов_СведПрослежList;
  FНомСредИдентТов := CreateCollection(TXMLФайл_Документ_ТаблСчФакт_СведТов_ДопСведТов_НомСредИдентТовList, IXMLФайл_Документ_ТаблСчФакт_СведТов_ДопСведТов_НомСредИдентТов, 'НомСредИдентТов') as IXMLФайл_Документ_ТаблСчФакт_СведТов_ДопСведТов_НомСредИдентТовList;
  inherited;
end;

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

function TXMLФайл_Документ_ТаблСчФакт_СведТов_ДопСведТов.Get_ХарактерТов: UnicodeString;
begin
  Result := AttributeNodes['ХарактерТов'].Text;
end;

procedure TXMLФайл_Документ_ТаблСчФакт_СведТов_ДопСведТов.Set_ХарактерТов(Value: UnicodeString);
begin
  SetAttribute('ХарактерТов', Value);
end;

function TXMLФайл_Документ_ТаблСчФакт_СведТов_ДопСведТов.Get_СортТов: UnicodeString;
begin
  Result := AttributeNodes['СортТов'].Text;
end;

procedure TXMLФайл_Документ_ТаблСчФакт_СведТов_ДопСведТов.Set_СортТов(Value: UnicodeString);
begin
  SetAttribute('СортТов', Value);
end;

function TXMLФайл_Документ_ТаблСчФакт_СведТов_ДопСведТов.Get_АртикулТов: UnicodeString;
begin
  Result := AttributeNodes['АртикулТов'].Text;
end;

procedure TXMLФайл_Документ_ТаблСчФакт_СведТов_ДопСведТов.Set_АртикулТов(Value: UnicodeString);
begin
  SetAttribute('АртикулТов', Value);
end;

function TXMLФайл_Документ_ТаблСчФакт_СведТов_ДопСведТов.Get_КодТов: UnicodeString;
begin
  Result := AttributeNodes['КодТов'].Text;
end;

procedure TXMLФайл_Документ_ТаблСчФакт_СведТов_ДопСведТов.Set_КодТов(Value: UnicodeString);
begin
  SetAttribute('КодТов', Value);
end;

function TXMLФайл_Документ_ТаблСчФакт_СведТов_ДопСведТов.Get_КодКат: UnicodeString;
begin
  Result := AttributeNodes['КодКат'].Text;
end;

procedure TXMLФайл_Документ_ТаблСчФакт_СведТов_ДопСведТов.Set_КодКат(Value: UnicodeString);
begin
  SetAttribute('КодКат', Value);
end;

function TXMLФайл_Документ_ТаблСчФакт_СведТов_ДопСведТов.Get_КодВидТов: UnicodeString;
begin
  Result := AttributeNodes['КодВидТов'].Text;
end;

procedure TXMLФайл_Документ_ТаблСчФакт_СведТов_ДопСведТов.Set_КодВидТов(Value: UnicodeString);
begin
  SetAttribute('КодВидТов', Value);
end;

function TXMLФайл_Документ_ТаблСчФакт_СведТов_ДопСведТов.Get_СведПрослеж: IXMLФайл_Документ_ТаблСчФакт_СведТов_ДопСведТов_СведПрослежList;
begin
  Result := FСведПрослеж;
end;

function TXMLФайл_Документ_ТаблСчФакт_СведТов_ДопСведТов.Get_НомСредИдентТов: IXMLФайл_Документ_ТаблСчФакт_СведТов_ДопСведТов_НомСредИдентТовList;
begin
  Result := FНомСредИдентТов;
end;

{ TXMLФайл_Документ_ТаблСчФакт_СведТов_ДопСведТов_СведПрослеж }

function TXMLФайл_Документ_ТаблСчФакт_СведТов_ДопСведТов_СведПрослеж.Get_НомТовПрослеж: UnicodeString;
begin
  Result := AttributeNodes['НомТовПрослеж'].Text;
end;

procedure TXMLФайл_Документ_ТаблСчФакт_СведТов_ДопСведТов_СведПрослеж.Set_НомТовПрослеж(Value: UnicodeString);
begin
  SetAttribute('НомТовПрослеж', Value);
end;

function TXMLФайл_Документ_ТаблСчФакт_СведТов_ДопСведТов_СведПрослеж.Get_ЕдИзмПрослеж: UnicodeString;
begin
  Result := AttributeNodes['ЕдИзмПрослеж'].Text;
end;

procedure TXMLФайл_Документ_ТаблСчФакт_СведТов_ДопСведТов_СведПрослеж.Set_ЕдИзмПрослеж(Value: UnicodeString);
begin
  SetAttribute('ЕдИзмПрослеж', Value);
end;

function TXMLФайл_Документ_ТаблСчФакт_СведТов_ДопСведТов_СведПрослеж.Get_НаимЕдИзмПрослеж: UnicodeString;
begin
  Result := AttributeNodes['НаимЕдИзмПрослеж'].Text;
end;

procedure TXMLФайл_Документ_ТаблСчФакт_СведТов_ДопСведТов_СведПрослеж.Set_НаимЕдИзмПрослеж(Value: UnicodeString);
begin
  SetAttribute('НаимЕдИзмПрослеж', Value);
end;

function TXMLФайл_Документ_ТаблСчФакт_СведТов_ДопСведТов_СведПрослеж.Get_КолВЕдПрослеж: UnicodeString;
begin
  Result := AttributeNodes['КолВЕдПрослеж'].Text;
end;

procedure TXMLФайл_Документ_ТаблСчФакт_СведТов_ДопСведТов_СведПрослеж.Set_КолВЕдПрослеж(Value: UnicodeString);
begin
  SetAttribute('КолВЕдПрослеж', Value);
end;

function TXMLФайл_Документ_ТаблСчФакт_СведТов_ДопСведТов_СведПрослеж.Get_ДопПрослеж: UnicodeString;
begin
  Result := AttributeNodes['ДопПрослеж'].Text;
end;

procedure TXMLФайл_Документ_ТаблСчФакт_СведТов_ДопСведТов_СведПрослеж.Set_ДопПрослеж(Value: UnicodeString);
begin
  SetAttribute('ДопПрослеж', Value);
end;

{ TXMLФайл_Документ_ТаблСчФакт_СведТов_ДопСведТов_СведПрослежList }

function TXMLФайл_Документ_ТаблСчФакт_СведТов_ДопСведТов_СведПрослежList.Add: IXMLФайл_Документ_ТаблСчФакт_СведТов_ДопСведТов_СведПрослеж;
begin
  Result := AddItem(-1) as IXMLФайл_Документ_ТаблСчФакт_СведТов_ДопСведТов_СведПрослеж;
end;

function TXMLФайл_Документ_ТаблСчФакт_СведТов_ДопСведТов_СведПрослежList.Insert(const Index: Integer): IXMLФайл_Документ_ТаблСчФакт_СведТов_ДопСведТов_СведПрослеж;
begin
  Result := AddItem(Index) as IXMLФайл_Документ_ТаблСчФакт_СведТов_ДопСведТов_СведПрослеж;
end;

function TXMLФайл_Документ_ТаблСчФакт_СведТов_ДопСведТов_СведПрослежList.Get_Item(Index: Integer): IXMLФайл_Документ_ТаблСчФакт_СведТов_ДопСведТов_СведПрослеж;
begin
  Result := List[Index] as IXMLФайл_Документ_ТаблСчФакт_СведТов_ДопСведТов_СведПрослеж;
end;

{ TXMLФайл_Документ_ТаблСчФакт_СведТов_ДопСведТов_НомСредИдентТов }

procedure TXMLФайл_Документ_ТаблСчФакт_СведТов_ДопСведТов_НомСредИдентТов.AfterConstruction;
begin
  FКИЗ := CreateCollection(TXMLФайл_Документ_ТаблСчФакт_СведТов_ДопСведТов_НомСредИдентТов_КИЗList, IXMLNode, 'КИЗ') as IXMLФайл_Документ_ТаблСчФакт_СведТов_ДопСведТов_НомСредИдентТов_КИЗList;
  FНомУпак := CreateCollection(TXMLФайл_Документ_ТаблСчФакт_СведТов_ДопСведТов_НомСредИдентТов_НомУпакList, IXMLNode, 'НомУпак') as IXMLФайл_Документ_ТаблСчФакт_СведТов_ДопСведТов_НомСредИдентТов_НомУпакList;
  inherited;
end;

function TXMLФайл_Документ_ТаблСчФакт_СведТов_ДопСведТов_НомСредИдентТов.Get_ИдентТрансУпак: UnicodeString;
begin
  Result := AttributeNodes['ИдентТрансУпак'].Text;
end;

procedure TXMLФайл_Документ_ТаблСчФакт_СведТов_ДопСведТов_НомСредИдентТов.Set_ИдентТрансУпак(Value: UnicodeString);
begin
  SetAttribute('ИдентТрансУпак', Value);
end;

function TXMLФайл_Документ_ТаблСчФакт_СведТов_ДопСведТов_НомСредИдентТов.Get_КИЗ: IXMLФайл_Документ_ТаблСчФакт_СведТов_ДопСведТов_НомСредИдентТов_КИЗList;
begin
  Result := FКИЗ;
end;

function TXMLФайл_Документ_ТаблСчФакт_СведТов_ДопСведТов_НомСредИдентТов.Get_НомУпак: IXMLФайл_Документ_ТаблСчФакт_СведТов_ДопСведТов_НомСредИдентТов_НомУпакList;
begin
  Result := FНомУпак;
end;

{ TXMLФайл_Документ_ТаблСчФакт_СведТов_ДопСведТов_НомСредИдентТовList }

function TXMLФайл_Документ_ТаблСчФакт_СведТов_ДопСведТов_НомСредИдентТовList.Add: IXMLФайл_Документ_ТаблСчФакт_СведТов_ДопСведТов_НомСредИдентТов;
begin
  Result := AddItem(-1) as IXMLФайл_Документ_ТаблСчФакт_СведТов_ДопСведТов_НомСредИдентТов;
end;

function TXMLФайл_Документ_ТаблСчФакт_СведТов_ДопСведТов_НомСредИдентТовList.Insert(const Index: Integer): IXMLФайл_Документ_ТаблСчФакт_СведТов_ДопСведТов_НомСредИдентТов;
begin
  Result := AddItem(Index) as IXMLФайл_Документ_ТаблСчФакт_СведТов_ДопСведТов_НомСредИдентТов;
end;

function TXMLФайл_Документ_ТаблСчФакт_СведТов_ДопСведТов_НомСредИдентТовList.Get_Item(Index: Integer): IXMLФайл_Документ_ТаблСчФакт_СведТов_ДопСведТов_НомСредИдентТов;
begin
  Result := List[Index] as IXMLФайл_Документ_ТаблСчФакт_СведТов_ДопСведТов_НомСредИдентТов;
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

function TXMLФайл_Документ_ТаблСчФакт_ВсегоОпл.Get_ДефСтТовУчНалВсего: UnicodeString;
begin
  Result := AttributeNodes['ДефСтТовУчНалВсего'].Text;
end;

procedure TXMLФайл_Документ_ТаблСчФакт_ВсегоОпл.Set_ДефСтТовУчНалВсего(Value: UnicodeString);
begin
  SetAttribute('ДефСтТовУчНалВсего', Value);
end;

function TXMLФайл_Документ_ТаблСчФакт_ВсегоОпл.Get_СумНалВсего: IXMLСумНДСТип;
begin
  Result := ChildNodes['СумНалВсего'] as IXMLСумНДСТип;
end;

function TXMLФайл_Документ_ТаблСчФакт_ВсегоОпл.Get_КолНеттоВс: UnicodeString;
begin
  Result := ChildNodes['КолНеттоВс'].Text;
end;

procedure TXMLФайл_Документ_ТаблСчФакт_ВсегоОпл.Set_КолНеттоВс(Value: UnicodeString);
begin
  ChildNodes['КолНеттоВс'].NodeValue := Value;
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
  RegisterChildNode('ОснПер', TXMLОснованиеТип);
  RegisterChildNode('СвЛицПер', TXMLФайл_Документ_СвПродПер_СвПер_СвЛицПер);
  RegisterChildNode('ТранГруз', TXMLФайл_Документ_СвПродПер_СвПер_ТранГруз);
  RegisterChildNode('СвПерВещи', TXMLФайл_Документ_СвПродПер_СвПер_СвПерВещи);
  FОснПер := CreateCollection(TXMLОснованиеТипList, IXMLОснованиеТип, 'ОснПер') as IXMLОснованиеТипList;
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

function TXMLФайл_Документ_СвПродПер_СвПер.Get_ДатаНач: UnicodeString;
begin
  Result := AttributeNodes['ДатаНач'].Text;
end;

procedure TXMLФайл_Документ_СвПродПер_СвПер.Set_ДатаНач(Value: UnicodeString);
begin
  SetAttribute('ДатаНач', Value);
end;

function TXMLФайл_Документ_СвПродПер_СвПер.Get_ДатаОкон: UnicodeString;
begin
  Result := AttributeNodes['ДатаОкон'].Text;
end;

procedure TXMLФайл_Документ_СвПродПер_СвПер.Set_ДатаОкон(Value: UnicodeString);
begin
  SetAttribute('ДатаОкон', Value);
end;

function TXMLФайл_Документ_СвПродПер_СвПер.Get_ОснПер: IXMLОснованиеТипList;
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
  RegisterChildNode('ФЛ', TXMLСвФЛТип);
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

function TXMLФайл_Документ_Подписант.Get_ФЛ: IXMLСвФЛТип;
begin
  Result := ChildNodes['ФЛ'] as IXMLСвФЛТип;
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

{ TXMLФайл_Документ_ТаблСчФакт_СведТов_ДопСведТов_НомСредИдентТов_НомУпакList }

function TXMLФайл_Документ_ТаблСчФакт_СведТов_ДопСведТов_НомСредИдентТов_НомУпакList.Add(const Value: UnicodeString): IXMLNode;
begin
  Result := AddItem(-1);
  Result.NodeValue := Value;
end;

function TXMLФайл_Документ_ТаблСчФакт_СведТов_ДопСведТов_НомСредИдентТов_НомУпакList.Insert(const Index: Integer; const Value: UnicodeString): IXMLNode;
begin
  Result := AddItem(Index);
  Result.NodeValue := Value;
end;

function TXMLФайл_Документ_ТаблСчФакт_СведТов_ДопСведТов_НомСредИдентТов_НомУпакList.Get_Item(Index: Integer): UnicodeString;
begin
  Result := List[Index].NodeValue;
end;

{ TXMLФайл_Документ_ТаблСчФакт_СведТов_ДопСведТов_НомСредИдентТов_КИЗList }

function TXMLФайл_Документ_ТаблСчФакт_СведТов_ДопСведТов_НомСредИдентТов_КИЗList.Add(const Value: UnicodeString): IXMLNode;
begin
  Result := AddItem(-1);
  Result.NodeValue := Value;
end;

function TXMLФайл_Документ_ТаблСчФакт_СведТов_ДопСведТов_НомСредИдентТов_КИЗList.Insert(const Index: Integer; const Value: UnicodeString): IXMLNode;
begin
  Result := AddItem(Index);
  Result.NodeValue := Value;
end;

function TXMLФайл_Документ_ТаблСчФакт_СведТов_ДопСведТов_НомСредИдентТов_КИЗList.Get_Item(Index: Integer): UnicodeString;
begin
  Result := List[Index].NodeValue;
end;

end.