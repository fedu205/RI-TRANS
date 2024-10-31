
{*****************************************************************************}
{                                                                             }
{                              XML Data Binding                               }
{                                                                             }
{         Generated on: 26.07.2016 12:15:33                                   }
{       Generated from: C:\Fracht\Docs\ЭДО\DP_IAKTPRM_1_987_00_05_01_01.xsd   }
{   Settings stored in: C:\Fracht\Docs\ЭДО\DP_IAKTPRM_1_987_00_05_01_01.xdb   }
{                                                                             }
{*****************************************************************************}

unit EDOXMLAct;

interface

uses xmldom, XMLDoc, XMLIntf;

type

{ Forward Decls }

  IXMLФайл = interface;
  IXMLФайл_СвУчДокОбор = interface;
  IXMLФайл_СвУчДокОбор_СвОЭДОтпр = interface;
  IXMLФайл_Документ = interface;
  IXMLФайл_Документ_СвАктИ = interface;
  IXMLУчастникТип = interface;
  IXMLУчастникТип_ИдСв = interface;
  IXMLУчастникТип_ИдСв_СвЮЛ = interface;
  IXMLУчастникТип_ИдСв_СвФЛ = interface;
  IXMLФИОТип = interface;
  IXMLАдресТип = interface;
  IXMLАдрРФ1Тип = interface;
  IXMLАдрИноТип = interface;
  IXMLКонтактТип = interface;
  IXMLУчастникТип_БанкРекв = interface;
  IXMLУчастникТип_БанкРекв_СвБанк = interface;
  IXMLФайл_Документ_СвАктИ_ОписРабот = interface;
  IXMLФайл_Документ_СвАктИ_ОписРаботList = interface;
  IXMLФайл_Документ_СвАктИ_ОписРабот_Работа = interface;
  IXMLФайл_Документ_СвАктИ_Сдал = interface;
  IXMLДолжЛицоТип = interface;
  IXMLДоверенностьТип = interface;
  IXMLДоверенностьТип_ВыданаКем = interface;
  IXMLДоверенностьТип_ВыданаКому = interface;
  IXMLФайл_Документ_СвАктИ_ИнфПол = interface;
  IXMLФайл_Документ_Подписант = interface;
  IXMLФайл_Документ_Подписант_ИП = interface;
  IXMLФайл_Документ_Подписант_ЮЛ = interface;

{ IXMLФайл }

  IXMLФайл = interface(IXMLNode)
    ['{F5E2770D-51D7-4E0D-B4F3-32C9B539B354}']
    { Property Accessors }
    function Get_ИдФайл: UnicodeString;
    function Get_ВерсПрог: UnicodeString;
    function Get_ВерсФорм: UnicodeString;
    function Get_СвУчДокОбор: IXMLФайл_СвУчДокОбор;
    function Get_Документ: IXMLФайл_Документ;
    procedure Set_ИдФайл(Value: UnicodeString);
    procedure Set_ВерсПрог(Value: UnicodeString);
    procedure Set_ВерсФорм(Value: UnicodeString);
    { Methods & Properties }
    property ИдФайл: UnicodeString read Get_ИдФайл write Set_ИдФайл;
    property ВерсПрог: UnicodeString read Get_ВерсПрог write Set_ВерсПрог;
    property ВерсФорм: UnicodeString read Get_ВерсФорм write Set_ВерсФорм;
    property СвУчДокОбор: IXMLФайл_СвУчДокОбор read Get_СвУчДокОбор;
    property Документ: IXMLФайл_Документ read Get_Документ;
  end;

{ IXMLФайл_СвУчДокОбор }

  IXMLФайл_СвУчДокОбор = interface(IXMLNode)
    ['{729460CA-1366-4284-8837-2C75E6217EBD}']
    { Property Accessors }
    function Get_ИдОтпр: UnicodeString;
    function Get_ИдПок: UnicodeString;
    function Get_СвОЭДОтпр: IXMLФайл_СвУчДокОбор_СвОЭДОтпр;
    procedure Set_ИдОтпр(Value: UnicodeString);
    procedure Set_ИдПок(Value: UnicodeString);
    { Methods & Properties }
    property ИдОтпр: UnicodeString read Get_ИдОтпр write Set_ИдОтпр;
    property ИдПок: UnicodeString read Get_ИдПок write Set_ИдПок;
    property СвОЭДОтпр: IXMLФайл_СвУчДокОбор_СвОЭДОтпр read Get_СвОЭДОтпр;
  end;

{ IXMLФайл_СвУчДокОбор_СвОЭДОтпр }

  IXMLФайл_СвУчДокОбор_СвОЭДОтпр = interface(IXMLNode)
    ['{65729703-0366-43B9-8205-ECA13F935850}']
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
    ['{56B6D60F-B9F1-462E-BBE0-306D88FF4C22}']
    { Property Accessors }
    function Get_КНД: UnicodeString;
    function Get_ДатаДок: UnicodeString;
    function Get_ВремДок: UnicodeString;
    function Get_СвАктИ: IXMLФайл_Документ_СвАктИ;
    function Get_Подписант: IXMLФайл_Документ_Подписант;
    procedure Set_КНД(Value: UnicodeString);
    procedure Set_ДатаДок(Value: UnicodeString);
    procedure Set_ВремДок(Value: UnicodeString);
    { Methods & Properties }
    property КНД: UnicodeString read Get_КНД write Set_КНД;
    property ДатаДок: UnicodeString read Get_ДатаДок write Set_ДатаДок;
    property ВремДок: UnicodeString read Get_ВремДок write Set_ВремДок;
    property СвАктИ: IXMLФайл_Документ_СвАктИ read Get_СвАктИ;
    property Подписант: IXMLФайл_Документ_Подписант read Get_Подписант;
  end;

{ IXMLФайл_Документ_СвАктИ }

  IXMLФайл_Документ_СвАктИ = interface(IXMLNode)
    ['{F379F8C2-0240-471A-9E06-31B984748590}']
    { Property Accessors }
    function Get_НаимПервДок: UnicodeString;
    function Get_НомАкт: UnicodeString;
    function Get_ДатаАкт: UnicodeString;
    function Get_Заголовок: UnicodeString;
    function Get_Исполнитель: IXMLУчастникТип;
    function Get_ОписРабот: IXMLФайл_Документ_СвАктИ_ОписРаботList;
    function Get_Сдал: IXMLФайл_Документ_СвАктИ_Сдал;
    function Get_ИнфПол: IXMLФайл_Документ_СвАктИ_ИнфПол;
    procedure Set_НаимПервДок(Value: UnicodeString);
    procedure Set_НомАкт(Value: UnicodeString);
    procedure Set_ДатаАкт(Value: UnicodeString);
    procedure Set_Заголовок(Value: UnicodeString);
    { Methods & Properties }
    property НаимПервДок: UnicodeString read Get_НаимПервДок write Set_НаимПервДок;
    property НомАкт: UnicodeString read Get_НомАкт write Set_НомАкт;
    property ДатаАкт: UnicodeString read Get_ДатаАкт write Set_ДатаАкт;
    property Заголовок: UnicodeString read Get_Заголовок write Set_Заголовок;
    property Исполнитель: IXMLУчастникТип read Get_Исполнитель;
    property ОписРабот: IXMLФайл_Документ_СвАктИ_ОписРаботList read Get_ОписРабот;
    property Сдал: IXMLФайл_Документ_СвАктИ_Сдал read Get_Сдал;
    property ИнфПол: IXMLФайл_Документ_СвАктИ_ИнфПол read Get_ИнфПол;
  end;

{ IXMLУчастникТип }

  IXMLУчастникТип = interface(IXMLNode)
    ['{DCD59C5C-12F9-4EF3-997A-965040ABAD7B}']
    { Property Accessors }
    function Get_ОКПО: UnicodeString;
    function Get_ИдСв: IXMLУчастникТип_ИдСв;
    function Get_Адрес: IXMLАдресТип;
    function Get_Контакт: IXMLКонтактТип;
    function Get_БанкРекв: IXMLУчастникТип_БанкРекв;
    procedure Set_ОКПО(Value: UnicodeString);
    { Methods & Properties }
    property ОКПО: UnicodeString read Get_ОКПО write Set_ОКПО;
    property ИдСв: IXMLУчастникТип_ИдСв read Get_ИдСв;
    property Адрес: IXMLАдресТип read Get_Адрес;
    property Контакт: IXMLКонтактТип read Get_Контакт;
    property БанкРекв: IXMLУчастникТип_БанкРекв read Get_БанкРекв;
  end;

{ IXMLУчастникТип_ИдСв }

  IXMLУчастникТип_ИдСв = interface(IXMLNode)
    ['{D1ABAFCA-D1B7-47C3-BDA6-234F9C9AD0C5}']
    { Property Accessors }
    function Get_СвЮЛ: IXMLУчастникТип_ИдСв_СвЮЛ;
    function Get_СвФЛ: IXMLУчастникТип_ИдСв_СвФЛ;
    { Methods & Properties }
    property СвЮЛ: IXMLУчастникТип_ИдСв_СвЮЛ read Get_СвЮЛ;
    property СвФЛ: IXMLУчастникТип_ИдСв_СвФЛ read Get_СвФЛ;
  end;

{ IXMLУчастникТип_ИдСв_СвЮЛ }

  IXMLУчастникТип_ИдСв_СвЮЛ = interface(IXMLNode)
    ['{5CACA1A2-369C-4AC4-B784-EFBDD50F5DF0}']
    { Property Accessors }
    function Get_НаимОрг: UnicodeString;
    function Get_ИННЮЛ: UnicodeString;
    function Get_КПП: UnicodeString;
    function Get_ОКОПФ: UnicodeString;
    procedure Set_НаимОрг(Value: UnicodeString);
    procedure Set_ИННЮЛ(Value: UnicodeString);
    procedure Set_КПП(Value: UnicodeString);
    procedure Set_ОКОПФ(Value: UnicodeString);
    { Methods & Properties }
    property НаимОрг: UnicodeString read Get_НаимОрг write Set_НаимОрг;
    property ИННЮЛ: UnicodeString read Get_ИННЮЛ write Set_ИННЮЛ;
    property КПП: UnicodeString read Get_КПП write Set_КПП;
    property ОКОПФ: UnicodeString read Get_ОКОПФ write Set_ОКОПФ;
  end;

{ IXMLУчастникТип_ИдСв_СвФЛ }

  IXMLУчастникТип_ИдСв_СвФЛ = interface(IXMLNode)
    ['{B2D89E4F-B867-47E6-9DA5-1129656278F8}']
    { Property Accessors }
    function Get_ИННФЛ: UnicodeString;
    function Get_ФИОИП: IXMLФИОТип;
    procedure Set_ИННФЛ(Value: UnicodeString);
    { Methods & Properties }
    property ИННФЛ: UnicodeString read Get_ИННФЛ write Set_ИННФЛ;
    property ФИОИП: IXMLФИОТип read Get_ФИОИП;
  end;

{ IXMLФИОТип }

  IXMLФИОТип = interface(IXMLNode)
    ['{16E05AD1-3815-4EE8-BD4A-8692AB029A1B}']
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

{ IXMLАдресТип }

  IXMLАдресТип = interface(IXMLNode)
    ['{55349FCD-C9DB-49F8-9C30-A647D8C83478}']
    { Property Accessors }
    function Get_АдрРФ: IXMLАдрРФ1Тип;
    function Get_АдрТекст: UnicodeString;
    function Get_АдрИно: IXMLАдрИноТип;
    procedure Set_АдрТекст(Value: UnicodeString);
    { Methods & Properties }
    property АдрРФ: IXMLАдрРФ1Тип read Get_АдрРФ;
    property АдрТекст: UnicodeString read Get_АдрТекст write Set_АдрТекст;
    property АдрИно: IXMLАдрИноТип read Get_АдрИно;
  end;

{ IXMLАдрРФ1Тип }

  IXMLАдрРФ1Тип = interface(IXMLNode)
    ['{C461A50E-78EF-4214-89E5-6AD56C6C0C22}']
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

{ IXMLАдрИноТип }

  IXMLАдрИноТип = interface(IXMLNode)
    ['{1202C2A2-8693-403E-9460-1E6394BA7914}']
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
    ['{CC5A5D5C-7DF4-4FBB-B71B-31E8D4150013}']
    { Property Accessors }
    function Get_Тлф: UnicodeString;
    function Get_Факс: UnicodeString;
    procedure Set_Тлф(Value: UnicodeString);
    procedure Set_Факс(Value: UnicodeString);
    { Methods & Properties }
    property Тлф: UnicodeString read Get_Тлф write Set_Тлф;
    property Факс: UnicodeString read Get_Факс write Set_Факс;
  end;

{ IXMLУчастникТип_БанкРекв }

  IXMLУчастникТип_БанкРекв = interface(IXMLNode)
    ['{9A95D909-6D8A-4168-B23D-6B3674922BCC}']
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
    ['{A07377F2-CBD0-4CC4-B87A-F08C23C395E8}']
    { Property Accessors }
    function Get_НаимБанк: UnicodeString;
    function Get_БИК: UnicodeString;
    procedure Set_НаимБанк(Value: UnicodeString);
    procedure Set_БИК(Value: UnicodeString);
    { Methods & Properties }
    property НаимБанк: UnicodeString read Get_НаимБанк write Set_НаимБанк;
    property БИК: UnicodeString read Get_БИК write Set_БИК;
  end;

{ IXMLФайл_Документ_СвАктИ_ОписРабот }

  IXMLФайл_Документ_СвАктИ_ОписРабот = interface(IXMLNodeCollection)
    ['{522C8CBC-DC9D-445C-A5AA-4A3A6BDE30BF}']
    { Property Accessors }
    function Get_НачРабот: UnicodeString;
    function Get_КонРабот: UnicodeString;
    function Get_СумБезНДСИт: UnicodeString;
    function Get_СумНДСИт: UnicodeString;
    function Get_СумУчНДСИт: UnicodeString;
    function Get_Работа(Index: Integer): IXMLФайл_Документ_СвАктИ_ОписРабот_Работа;
    procedure Set_НачРабот(Value: UnicodeString);
    procedure Set_КонРабот(Value: UnicodeString);
    procedure Set_СумБезНДСИт(Value: UnicodeString);
    procedure Set_СумНДСИт(Value: UnicodeString);
    procedure Set_СумУчНДСИт(Value: UnicodeString);
    { Methods & Properties }
    function Add: IXMLФайл_Документ_СвАктИ_ОписРабот_Работа;
    function Insert(const Index: Integer): IXMLФайл_Документ_СвАктИ_ОписРабот_Работа;
    property НачРабот: UnicodeString read Get_НачРабот write Set_НачРабот;
    property КонРабот: UnicodeString read Get_КонРабот write Set_КонРабот;
    property СумБезНДСИт: UnicodeString read Get_СумБезНДСИт write Set_СумБезНДСИт;
    property СумНДСИт: UnicodeString read Get_СумНДСИт write Set_СумНДСИт;
    property СумУчНДСИт: UnicodeString read Get_СумУчНДСИт write Set_СумУчНДСИт;
    property Работа[Index: Integer]: IXMLФайл_Документ_СвАктИ_ОписРабот_Работа read Get_Работа; default;
  end;

{ IXMLФайл_Документ_СвАктИ_ОписРаботList }

  IXMLФайл_Документ_СвАктИ_ОписРаботList = interface(IXMLNodeCollection)
    ['{290EE544-6932-4C8B-A7B5-FDBFEEBEB325}']
    { Methods & Properties }
    function Add: IXMLФайл_Документ_СвАктИ_ОписРабот;
    function Insert(const Index: Integer): IXMLФайл_Документ_СвАктИ_ОписРабот;

    function Get_Item(Index: Integer): IXMLФайл_Документ_СвАктИ_ОписРабот;
    property Items[Index: Integer]: IXMLФайл_Документ_СвАктИ_ОписРабот read Get_Item; default;
  end;

{ IXMLФайл_Документ_СвАктИ_ОписРабот_Работа }

  IXMLФайл_Документ_СвАктИ_ОписРабот_Работа = interface(IXMLNode)
    ['{6DF1D440-F8AC-4A85-B2E3-9C8953560AAF}']
    { Property Accessors }
    function Get_Номер: UnicodeString;
    function Get_НаимРабот: UnicodeString;
    function Get_НаимЕдИзм: UnicodeString;
    function Get_ОКЕИ: UnicodeString;
    function Get_Цена: UnicodeString;
    function Get_Количество: UnicodeString;
    function Get_СумБезНДС: UnicodeString;
    function Get_СумНДС: UnicodeString;
    function Get_СумУчНДС: UnicodeString;
    function Get_ИнфПолСтр: UnicodeString;
    function Get_Описание: UnicodeString;
    procedure Set_Номер(Value: UnicodeString);
    procedure Set_НаимРабот(Value: UnicodeString);
    procedure Set_НаимЕдИзм(Value: UnicodeString);
    procedure Set_ОКЕИ(Value: UnicodeString);
    procedure Set_Цена(Value: UnicodeString);
    procedure Set_Количество(Value: UnicodeString);
    procedure Set_СумБезНДС(Value: UnicodeString);
    procedure Set_СумНДС(Value: UnicodeString);
    procedure Set_СумУчНДС(Value: UnicodeString);
    procedure Set_ИнфПолСтр(Value: UnicodeString);
    procedure Set_Описание(Value: UnicodeString);
    { Methods & Properties }
    property Номер: UnicodeString read Get_Номер write Set_Номер;
    property НаимРабот: UnicodeString read Get_НаимРабот write Set_НаимРабот;
    property НаимЕдИзм: UnicodeString read Get_НаимЕдИзм write Set_НаимЕдИзм;
    property ОКЕИ: UnicodeString read Get_ОКЕИ write Set_ОКЕИ;
    property Цена: UnicodeString read Get_Цена write Set_Цена;
    property Количество: UnicodeString read Get_Количество write Set_Количество;
    property СумБезНДС: UnicodeString read Get_СумБезНДС write Set_СумБезНДС;
    property СумНДС: UnicodeString read Get_СумНДС write Set_СумНДС;
    property СумУчНДС: UnicodeString read Get_СумУчНДС write Set_СумУчНДС;
    property ИнфПолСтр: UnicodeString read Get_ИнфПолСтр write Set_ИнфПолСтр;
    property Описание: UnicodeString read Get_Описание write Set_Описание;
  end;

{ IXMLФайл_Документ_СвАктИ_Сдал }

  IXMLФайл_Документ_СвАктИ_Сдал = interface(IXMLNode)
    ['{76A82F6C-7982-4675-B36E-CC3E8B786376}']
    { Property Accessors }
    function Get_ДатаИсполн: UnicodeString;
    function Get_ПодписьИсполн: IXMLДолжЛицоТип;
    function Get_ДоверенИсполн: IXMLДоверенностьТип;
    procedure Set_ДатаИсполн(Value: UnicodeString);
    { Methods & Properties }
    property ДатаИсполн: UnicodeString read Get_ДатаИсполн write Set_ДатаИсполн;
    property ПодписьИсполн: IXMLДолжЛицоТип read Get_ПодписьИсполн;
    property ДоверенИсполн: IXMLДоверенностьТип read Get_ДоверенИсполн;
  end;

{ IXMLДолжЛицоТип }

  IXMLДолжЛицоТип = interface(IXMLNode)
    ['{69ECF64D-79EA-4870-9311-D77AF0100C61}']
    { Property Accessors }
    function Get_Должность: UnicodeString;
    function Get_ФИО: IXMLФИОТип;
    procedure Set_Должность(Value: UnicodeString);
    { Methods & Properties }
    property Должность: UnicodeString read Get_Должность write Set_Должность;
    property ФИО: IXMLФИОТип read Get_ФИО;
  end;

{ IXMLДоверенностьТип }

  IXMLДоверенностьТип = interface(IXMLNode)
    ['{721D84D0-2A16-429F-8FE9-5533C016F1C4}']
    { Property Accessors }
    function Get_НомДоверен: UnicodeString;
    function Get_ДатаДоверен: UnicodeString;
    function Get_ВыданаКем: IXMLДоверенностьТип_ВыданаКем;
    function Get_ВыданаКому: IXMLДоверенностьТип_ВыданаКому;
    procedure Set_НомДоверен(Value: UnicodeString);
    procedure Set_ДатаДоверен(Value: UnicodeString);
    { Methods & Properties }
    property НомДоверен: UnicodeString read Get_НомДоверен write Set_НомДоверен;
    property ДатаДоверен: UnicodeString read Get_ДатаДоверен write Set_ДатаДоверен;
    property ВыданаКем: IXMLДоверенностьТип_ВыданаКем read Get_ВыданаКем;
    property ВыданаКому: IXMLДоверенностьТип_ВыданаКому read Get_ВыданаКому;
  end;

{ IXMLДоверенностьТип_ВыданаКем }

  IXMLДоверенностьТип_ВыданаКем = interface(IXMLNode)
    ['{E75B93CD-9677-4B05-AE80-B6859C027058}']
    { Property Accessors }
    function Get_НаимОргКем: UnicodeString;
    function Get_ДолжнКем: UnicodeString;
    function Get_ДопСведКем: UnicodeString;
    function Get_ФИО: IXMLФИОТип;
    procedure Set_НаимОргКем(Value: UnicodeString);
    procedure Set_ДолжнКем(Value: UnicodeString);
    procedure Set_ДопСведКем(Value: UnicodeString);
    { Methods & Properties }
    property НаимОргКем: UnicodeString read Get_НаимОргКем write Set_НаимОргКем;
    property ДолжнКем: UnicodeString read Get_ДолжнКем write Set_ДолжнКем;
    property ДопСведКем: UnicodeString read Get_ДопСведКем write Set_ДопСведКем;
    property ФИО: IXMLФИОТип read Get_ФИО;
  end;

{ IXMLДоверенностьТип_ВыданаКому }

  IXMLДоверенностьТип_ВыданаКому = interface(IXMLNode)
    ['{90967DCF-4C6C-4D31-A70C-325879E4F9F4}']
    { Property Accessors }
    function Get_Должн: UnicodeString;
    function Get_ДопСведКому: UnicodeString;
    function Get_ФИО: IXMLФИОТип;
    procedure Set_Должн(Value: UnicodeString);
    procedure Set_ДопСведКому(Value: UnicodeString);
    { Methods & Properties }
    property Должн: UnicodeString read Get_Должн write Set_Должн;
    property ДопСведКому: UnicodeString read Get_ДопСведКому write Set_ДопСведКому;
    property ФИО: IXMLФИОТип read Get_ФИО;
  end;

{ IXMLФайл_Документ_СвАктИ_ИнфПол }

  IXMLФайл_Документ_СвАктИ_ИнфПол = interface(IXMLNode)
    ['{50EDF5C6-12DD-4DFE-AE65-B4B89AA77B3C}']
    { Property Accessors }
    function Get_ТекстИнф: UnicodeString;
    function Get_ИдФайлИнфПол: UnicodeString;
    procedure Set_ТекстИнф(Value: UnicodeString);
    procedure Set_ИдФайлИнфПол(Value: UnicodeString);
    { Methods & Properties }
    property ТекстИнф: UnicodeString read Get_ТекстИнф write Set_ТекстИнф;
    property ИдФайлИнфПол: UnicodeString read Get_ИдФайлИнфПол write Set_ИдФайлИнфПол;
  end;

{ IXMLФайл_Документ_Подписант }

  IXMLФайл_Документ_Подписант = interface(IXMLNode)
    ['{3E6B38BB-F160-4E63-ABE2-0953B8608F12}']
    { Property Accessors }
    function Get_ИП: IXMLФайл_Документ_Подписант_ИП;
    function Get_ЮЛ: IXMLФайл_Документ_Подписант_ЮЛ;
    { Methods & Properties }
    property ИП: IXMLФайл_Документ_Подписант_ИП read Get_ИП;
    property ЮЛ: IXMLФайл_Документ_Подписант_ЮЛ read Get_ЮЛ;
  end;

{ IXMLФайл_Документ_Подписант_ИП }

  IXMLФайл_Документ_Подписант_ИП = interface(IXMLNode)
    ['{B99303A0-0C38-468C-ABFC-F9CD1616A217}']
    { Property Accessors }
    function Get_ИННФЛ: UnicodeString;
    function Get_СвГосРегИП: UnicodeString;
    function Get_ФИО: IXMLФИОТип;
    procedure Set_ИННФЛ(Value: UnicodeString);
    procedure Set_СвГосРегИП(Value: UnicodeString);
    { Methods & Properties }
    property ИННФЛ: UnicodeString read Get_ИННФЛ write Set_ИННФЛ;
    property СвГосРегИП: UnicodeString read Get_СвГосРегИП write Set_СвГосРегИП;
    property ФИО: IXMLФИОТип read Get_ФИО;
  end;

{ IXMLФайл_Документ_Подписант_ЮЛ }

  IXMLФайл_Документ_Подписант_ЮЛ = interface(IXMLNode)
    ['{7346F0E2-B404-42B3-AB51-06CC19649751}']
    { Property Accessors }
    function Get_ИННЮЛ: UnicodeString;
    function Get_Должн: UnicodeString;
    function Get_ФИО: IXMLФИОТип;
    procedure Set_ИННЮЛ(Value: UnicodeString);
    procedure Set_Должн(Value: UnicodeString);
    { Methods & Properties }
    property ИННЮЛ: UnicodeString read Get_ИННЮЛ write Set_ИННЮЛ;
    property Должн: UnicodeString read Get_Должн write Set_Должн;
    property ФИО: IXMLФИОТип read Get_ФИО;
  end;

{ Forward Decls }

  TXMLФайл = class;
  TXMLФайл_СвУчДокОбор = class;
  TXMLФайл_СвУчДокОбор_СвОЭДОтпр = class;
  TXMLФайл_Документ = class;
  TXMLФайл_Документ_СвАктИ = class;
  TXMLУчастникТип = class;
  TXMLУчастникТип_ИдСв = class;
  TXMLУчастникТип_ИдСв_СвЮЛ = class;
  TXMLУчастникТип_ИдСв_СвФЛ = class;
  TXMLФИОТип = class;
  TXMLАдресТип = class;
  TXMLАдрРФ1Тип = class;
  TXMLАдрИноТип = class;
  TXMLКонтактТип = class;
  TXMLУчастникТип_БанкРекв = class;
  TXMLУчастникТип_БанкРекв_СвБанк = class;
  TXMLФайл_Документ_СвАктИ_ОписРабот = class;
  TXMLФайл_Документ_СвАктИ_ОписРаботList = class;
  TXMLФайл_Документ_СвАктИ_ОписРабот_Работа = class;
  TXMLФайл_Документ_СвАктИ_Сдал = class;
  TXMLДолжЛицоТип = class;
  TXMLДоверенностьТип = class;
  TXMLДоверенностьТип_ВыданаКем = class;
  TXMLДоверенностьТип_ВыданаКому = class;
  TXMLФайл_Документ_СвАктИ_ИнфПол = class;
  TXMLФайл_Документ_Подписант = class;
  TXMLФайл_Документ_Подписант_ИП = class;
  TXMLФайл_Документ_Подписант_ЮЛ = class;

{ TXMLФайл }

  TXMLФайл = class(TXMLNode, IXMLФайл)
  protected
    { IXMLФайл }
    function Get_ИдФайл: UnicodeString;
    function Get_ВерсПрог: UnicodeString;
    function Get_ВерсФорм: UnicodeString;
    function Get_СвУчДокОбор: IXMLФайл_СвУчДокОбор;
    function Get_Документ: IXMLФайл_Документ;
    procedure Set_ИдФайл(Value: UnicodeString);
    procedure Set_ВерсПрог(Value: UnicodeString);
    procedure Set_ВерсФорм(Value: UnicodeString);
  public
    procedure AfterConstruction; override;
  end;

{ TXMLФайл_СвУчДокОбор }

  TXMLФайл_СвУчДокОбор = class(TXMLNode, IXMLФайл_СвУчДокОбор)
  protected
    { IXMLФайл_СвУчДокОбор }
    function Get_ИдОтпр: UnicodeString;
    function Get_ИдПок: UnicodeString;
    function Get_СвОЭДОтпр: IXMLФайл_СвУчДокОбор_СвОЭДОтпр;
    procedure Set_ИдОтпр(Value: UnicodeString);
    procedure Set_ИдПок(Value: UnicodeString);
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
  protected
    { IXMLФайл_Документ }
    function Get_КНД: UnicodeString;
    function Get_ДатаДок: UnicodeString;
    function Get_ВремДок: UnicodeString;
    function Get_СвАктИ: IXMLФайл_Документ_СвАктИ;
    function Get_Подписант: IXMLФайл_Документ_Подписант;
    procedure Set_КНД(Value: UnicodeString);
    procedure Set_ДатаДок(Value: UnicodeString);
    procedure Set_ВремДок(Value: UnicodeString);
  public
    procedure AfterConstruction; override;
  end;

{ TXMLФайл_Документ_СвАктИ }

  TXMLФайл_Документ_СвАктИ = class(TXMLNode, IXMLФайл_Документ_СвАктИ)
  private
    FОписРабот: IXMLФайл_Документ_СвАктИ_ОписРаботList;
  protected
    { IXMLФайл_Документ_СвАктИ }
    function Get_НаимПервДок: UnicodeString;
    function Get_НомАкт: UnicodeString;
    function Get_ДатаАкт: UnicodeString;
    function Get_Заголовок: UnicodeString;
    function Get_Исполнитель: IXMLУчастникТип;
    function Get_ОписРабот: IXMLФайл_Документ_СвАктИ_ОписРаботList;
    function Get_Сдал: IXMLФайл_Документ_СвАктИ_Сдал;
    function Get_ИнфПол: IXMLФайл_Документ_СвАктИ_ИнфПол;
    procedure Set_НаимПервДок(Value: UnicodeString);
    procedure Set_НомАкт(Value: UnicodeString);
    procedure Set_ДатаАкт(Value: UnicodeString);
    procedure Set_Заголовок(Value: UnicodeString);
  public
    procedure AfterConstruction; override;
  end;

{ TXMLУчастникТип }

  TXMLУчастникТип = class(TXMLNode, IXMLУчастникТип)
  protected
    { IXMLУчастникТип }
    function Get_ОКПО: UnicodeString;
    function Get_ИдСв: IXMLУчастникТип_ИдСв;
    function Get_Адрес: IXMLАдресТип;
    function Get_Контакт: IXMLКонтактТип;
    function Get_БанкРекв: IXMLУчастникТип_БанкРекв;
    procedure Set_ОКПО(Value: UnicodeString);
  public
    procedure AfterConstruction; override;
  end;

{ TXMLУчастникТип_ИдСв }

  TXMLУчастникТип_ИдСв = class(TXMLNode, IXMLУчастникТип_ИдСв)
  protected
    { IXMLУчастникТип_ИдСв }
    function Get_СвЮЛ: IXMLУчастникТип_ИдСв_СвЮЛ;
    function Get_СвФЛ: IXMLУчастникТип_ИдСв_СвФЛ;
  public
    procedure AfterConstruction; override;
  end;

{ TXMLУчастникТип_ИдСв_СвЮЛ }

  TXMLУчастникТип_ИдСв_СвЮЛ = class(TXMLNode, IXMLУчастникТип_ИдСв_СвЮЛ)
  protected
    { IXMLУчастникТип_ИдСв_СвЮЛ }
    function Get_НаимОрг: UnicodeString;
    function Get_ИННЮЛ: UnicodeString;
    function Get_КПП: UnicodeString;
    function Get_ОКОПФ: UnicodeString;
    procedure Set_НаимОрг(Value: UnicodeString);
    procedure Set_ИННЮЛ(Value: UnicodeString);
    procedure Set_КПП(Value: UnicodeString);
    procedure Set_ОКОПФ(Value: UnicodeString);
  end;

{ TXMLУчастникТип_ИдСв_СвФЛ }

  TXMLУчастникТип_ИдСв_СвФЛ = class(TXMLNode, IXMLУчастникТип_ИдСв_СвФЛ)
  protected
    { IXMLУчастникТип_ИдСв_СвФЛ }
    function Get_ИННФЛ: UnicodeString;
    function Get_ФИОИП: IXMLФИОТип;
    procedure Set_ИННФЛ(Value: UnicodeString);
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

{ TXMLАдресТип }

  TXMLАдресТип = class(TXMLNode, IXMLАдресТип)
  protected
    { IXMLАдресТип }
    function Get_АдрРФ: IXMLАдрРФ1Тип;
    function Get_АдрТекст: UnicodeString;
    function Get_АдрИно: IXMLАдрИноТип;
    procedure Set_АдрТекст(Value: UnicodeString);
  public
    procedure AfterConstruction; override;
  end;

{ TXMLАдрРФ1Тип }

  TXMLАдрРФ1Тип = class(TXMLNode, IXMLАдрРФ1Тип)
  protected
    { IXMLАдрРФ1Тип }
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

{ TXMLАдрИноТип }

  TXMLАдрИноТип = class(TXMLNode, IXMLАдрИноТип)
  protected
    { IXMLАдрИноТип }
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
    function Get_Факс: UnicodeString;
    procedure Set_Тлф(Value: UnicodeString);
    procedure Set_Факс(Value: UnicodeString);
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
    procedure Set_НаимБанк(Value: UnicodeString);
    procedure Set_БИК(Value: UnicodeString);
  end;

{ TXMLФайл_Документ_СвАктИ_ОписРабот }

  TXMLФайл_Документ_СвАктИ_ОписРабот = class(TXMLNodeCollection, IXMLФайл_Документ_СвАктИ_ОписРабот)
  protected
    { IXMLФайл_Документ_СвАктИ_ОписРабот }
    function Get_НачРабот: UnicodeString;
    function Get_КонРабот: UnicodeString;
    function Get_СумБезНДСИт: UnicodeString;
    function Get_СумНДСИт: UnicodeString;
    function Get_СумУчНДСИт: UnicodeString;
    function Get_Работа(Index: Integer): IXMLФайл_Документ_СвАктИ_ОписРабот_Работа;
    procedure Set_НачРабот(Value: UnicodeString);
    procedure Set_КонРабот(Value: UnicodeString);
    procedure Set_СумБезНДСИт(Value: UnicodeString);
    procedure Set_СумНДСИт(Value: UnicodeString);
    procedure Set_СумУчНДСИт(Value: UnicodeString);
    function Add: IXMLФайл_Документ_СвАктИ_ОписРабот_Работа;
    function Insert(const Index: Integer): IXMLФайл_Документ_СвАктИ_ОписРабот_Работа;
  public
    procedure AfterConstruction; override;
  end;

{ TXMLФайл_Документ_СвАктИ_ОписРаботList }

  TXMLФайл_Документ_СвАктИ_ОписРаботList = class(TXMLNodeCollection, IXMLФайл_Документ_СвАктИ_ОписРаботList)
  protected
    { IXMLФайл_Документ_СвАктИ_ОписРаботList }
    function Add: IXMLФайл_Документ_СвАктИ_ОписРабот;
    function Insert(const Index: Integer): IXMLФайл_Документ_СвАктИ_ОписРабот;

    function Get_Item(Index: Integer): IXMLФайл_Документ_СвАктИ_ОписРабот;
  end;

{ TXMLФайл_Документ_СвАктИ_ОписРабот_Работа }

  TXMLФайл_Документ_СвАктИ_ОписРабот_Работа = class(TXMLNode, IXMLФайл_Документ_СвАктИ_ОписРабот_Работа)
  protected
    { IXMLФайл_Документ_СвАктИ_ОписРабот_Работа }
    function Get_Номер: UnicodeString;
    function Get_НаимРабот: UnicodeString;
    function Get_НаимЕдИзм: UnicodeString;
    function Get_ОКЕИ: UnicodeString;
    function Get_Цена: UnicodeString;
    function Get_Количество: UnicodeString;
    function Get_СумБезНДС: UnicodeString;
    function Get_СумНДС: UnicodeString;
    function Get_СумУчНДС: UnicodeString;
    function Get_ИнфПолСтр: UnicodeString;
    function Get_Описание: UnicodeString;
    procedure Set_Номер(Value: UnicodeString);
    procedure Set_НаимРабот(Value: UnicodeString);
    procedure Set_НаимЕдИзм(Value: UnicodeString);
    procedure Set_ОКЕИ(Value: UnicodeString);
    procedure Set_Цена(Value: UnicodeString);
    procedure Set_Количество(Value: UnicodeString);
    procedure Set_СумБезНДС(Value: UnicodeString);
    procedure Set_СумНДС(Value: UnicodeString);
    procedure Set_СумУчНДС(Value: UnicodeString);
    procedure Set_ИнфПолСтр(Value: UnicodeString);
    procedure Set_Описание(Value: UnicodeString);
  end;

{ TXMLФайл_Документ_СвАктИ_Сдал }

  TXMLФайл_Документ_СвАктИ_Сдал = class(TXMLNode, IXMLФайл_Документ_СвАктИ_Сдал)
  protected
    { IXMLФайл_Документ_СвАктИ_Сдал }
    function Get_ДатаИсполн: UnicodeString;
    function Get_ПодписьИсполн: IXMLДолжЛицоТип;
    function Get_ДоверенИсполн: IXMLДоверенностьТип;
    procedure Set_ДатаИсполн(Value: UnicodeString);
  public
    procedure AfterConstruction; override;
  end;

{ TXMLДолжЛицоТип }

  TXMLДолжЛицоТип = class(TXMLNode, IXMLДолжЛицоТип)
  protected
    { IXMLДолжЛицоТип }
    function Get_Должность: UnicodeString;
    function Get_ФИО: IXMLФИОТип;
    procedure Set_Должность(Value: UnicodeString);
  public
    procedure AfterConstruction; override;
  end;

{ TXMLДоверенностьТип }

  TXMLДоверенностьТип = class(TXMLNode, IXMLДоверенностьТип)
  protected
    { IXMLДоверенностьТип }
    function Get_НомДоверен: UnicodeString;
    function Get_ДатаДоверен: UnicodeString;
    function Get_ВыданаКем: IXMLДоверенностьТип_ВыданаКем;
    function Get_ВыданаКому: IXMLДоверенностьТип_ВыданаКому;
    procedure Set_НомДоверен(Value: UnicodeString);
    procedure Set_ДатаДоверен(Value: UnicodeString);
  public
    procedure AfterConstruction; override;
  end;

{ TXMLДоверенностьТип_ВыданаКем }

  TXMLДоверенностьТип_ВыданаКем = class(TXMLNode, IXMLДоверенностьТип_ВыданаКем)
  protected
    { IXMLДоверенностьТип_ВыданаКем }
    function Get_НаимОргКем: UnicodeString;
    function Get_ДолжнКем: UnicodeString;
    function Get_ДопСведКем: UnicodeString;
    function Get_ФИО: IXMLФИОТип;
    procedure Set_НаимОргКем(Value: UnicodeString);
    procedure Set_ДолжнКем(Value: UnicodeString);
    procedure Set_ДопСведКем(Value: UnicodeString);
  public
    procedure AfterConstruction; override;
  end;

{ TXMLДоверенностьТип_ВыданаКому }

  TXMLДоверенностьТип_ВыданаКому = class(TXMLNode, IXMLДоверенностьТип_ВыданаКому)
  protected
    { IXMLДоверенностьТип_ВыданаКому }
    function Get_Должн: UnicodeString;
    function Get_ДопСведКому: UnicodeString;
    function Get_ФИО: IXMLФИОТип;
    procedure Set_Должн(Value: UnicodeString);
    procedure Set_ДопСведКому(Value: UnicodeString);
  public
    procedure AfterConstruction; override;
  end;

{ TXMLФайл_Документ_СвАктИ_ИнфПол }

  TXMLФайл_Документ_СвАктИ_ИнфПол = class(TXMLNode, IXMLФайл_Документ_СвАктИ_ИнфПол)
  protected
    { IXMLФайл_Документ_СвАктИ_ИнфПол }
    function Get_ТекстИнф: UnicodeString;
    function Get_ИдФайлИнфПол: UnicodeString;
    procedure Set_ТекстИнф(Value: UnicodeString);
    procedure Set_ИдФайлИнфПол(Value: UnicodeString);
  end;

{ TXMLФайл_Документ_Подписант }

  TXMLФайл_Документ_Подписант = class(TXMLNode, IXMLФайл_Документ_Подписант)
  protected
    { IXMLФайл_Документ_Подписант }
    function Get_ИП: IXMLФайл_Документ_Подписант_ИП;
    function Get_ЮЛ: IXMLФайл_Документ_Подписант_ЮЛ;
  public
    procedure AfterConstruction; override;
  end;

{ TXMLФайл_Документ_Подписант_ИП }

  TXMLФайл_Документ_Подписант_ИП = class(TXMLNode, IXMLФайл_Документ_Подписант_ИП)
  protected
    { IXMLФайл_Документ_Подписант_ИП }
    function Get_ИННФЛ: UnicodeString;
    function Get_СвГосРегИП: UnicodeString;
    function Get_ФИО: IXMLФИОТип;
    procedure Set_ИННФЛ(Value: UnicodeString);
    procedure Set_СвГосРегИП(Value: UnicodeString);
  public
    procedure AfterConstruction; override;
  end;

{ TXMLФайл_Документ_Подписант_ЮЛ }

  TXMLФайл_Документ_Подписант_ЮЛ = class(TXMLNode, IXMLФайл_Документ_Подписант_ЮЛ)
  protected
    { IXMLФайл_Документ_Подписант_ЮЛ }
    function Get_ИННЮЛ: UnicodeString;
    function Get_Должн: UnicodeString;
    function Get_ФИО: IXMLФИОТип;
    procedure Set_ИННЮЛ(Value: UnicodeString);
    procedure Set_Должн(Value: UnicodeString);
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

function TXMLФайл.Get_ВерсПрог: UnicodeString;
begin
  Result := AttributeNodes['ВерсПрог'].Text;
end;

procedure TXMLФайл.Set_ВерсПрог(Value: UnicodeString);
begin
  SetAttribute('ВерсПрог', Value);
end;

function TXMLФайл.Get_ВерсФорм: UnicodeString;
begin
  Result := AttributeNodes['ВерсФорм'].Text;
end;

procedure TXMLФайл.Set_ВерсФорм(Value: UnicodeString);
begin
  SetAttribute('ВерсФорм', Value);
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

function TXMLФайл_СвУчДокОбор.Get_ИдПок: UnicodeString;
begin
  Result := AttributeNodes['ИдПок'].Text;
end;

procedure TXMLФайл_СвУчДокОбор.Set_ИдПок(Value: UnicodeString);
begin
  SetAttribute('ИдПок', Value);
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
  RegisterChildNode('СвАктИ', TXMLФайл_Документ_СвАктИ);
  RegisterChildNode('Подписант', TXMLФайл_Документ_Подписант);
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

function TXMLФайл_Документ.Get_ДатаДок: UnicodeString;
begin
  Result := AttributeNodes['ДатаДок'].Text;
end;

procedure TXMLФайл_Документ.Set_ДатаДок(Value: UnicodeString);
begin
  SetAttribute('ДатаДок', Value);
end;

function TXMLФайл_Документ.Get_ВремДок: UnicodeString;
begin
  Result := AttributeNodes['ВремДок'].Text;
end;

procedure TXMLФайл_Документ.Set_ВремДок(Value: UnicodeString);
begin
  SetAttribute('ВремДок', Value);
end;

function TXMLФайл_Документ.Get_СвАктИ: IXMLФайл_Документ_СвАктИ;
begin
  Result := ChildNodes['СвАктИ'] as IXMLФайл_Документ_СвАктИ;
end;

function TXMLФайл_Документ.Get_Подписант: IXMLФайл_Документ_Подписант;
begin
  Result := ChildNodes['Подписант'] as IXMLФайл_Документ_Подписант;
end;

{ TXMLФайл_Документ_СвАктИ }

procedure TXMLФайл_Документ_СвАктИ.AfterConstruction;
begin
  RegisterChildNode('Исполнитель', TXMLУчастникТип);
  RegisterChildNode('ОписРабот', TXMLФайл_Документ_СвАктИ_ОписРабот);
  RegisterChildNode('Сдал', TXMLФайл_Документ_СвАктИ_Сдал);
  RegisterChildNode('ИнфПол', TXMLФайл_Документ_СвАктИ_ИнфПол);
  FОписРабот := CreateCollection(TXMLФайл_Документ_СвАктИ_ОписРаботList, IXMLФайл_Документ_СвАктИ_ОписРабот, 'ОписРабот') as IXMLФайл_Документ_СвАктИ_ОписРаботList;
  inherited;
end;

function TXMLФайл_Документ_СвАктИ.Get_НаимПервДок: UnicodeString;
begin
  Result := AttributeNodes['НаимПервДок'].Text;
end;

procedure TXMLФайл_Документ_СвАктИ.Set_НаимПервДок(Value: UnicodeString);
begin
  SetAttribute('НаимПервДок', Value);
end;

function TXMLФайл_Документ_СвАктИ.Get_НомАкт: UnicodeString;
begin
  Result := AttributeNodes['НомАкт'].Text;
end;

procedure TXMLФайл_Документ_СвАктИ.Set_НомАкт(Value: UnicodeString);
begin
  SetAttribute('НомАкт', Value);
end;

function TXMLФайл_Документ_СвАктИ.Get_ДатаАкт: UnicodeString;
begin
  Result := AttributeNodes['ДатаАкт'].Text;
end;

procedure TXMLФайл_Документ_СвАктИ.Set_ДатаАкт(Value: UnicodeString);
begin
  SetAttribute('ДатаАкт', Value);
end;

function TXMLФайл_Документ_СвАктИ.Get_Заголовок: UnicodeString;
begin
  Result := ChildNodes['Заголовок'].Text;
end;

procedure TXMLФайл_Документ_СвАктИ.Set_Заголовок(Value: UnicodeString);
begin
  ChildNodes['Заголовок'].NodeValue := Value;
end;

function TXMLФайл_Документ_СвАктИ.Get_Исполнитель: IXMLУчастникТип;
begin
  Result := ChildNodes['Исполнитель'] as IXMLУчастникТип;
end;

function TXMLФайл_Документ_СвАктИ.Get_ОписРабот: IXMLФайл_Документ_СвАктИ_ОписРаботList;
begin
  Result := FОписРабот;
end;

function TXMLФайл_Документ_СвАктИ.Get_Сдал: IXMLФайл_Документ_СвАктИ_Сдал;
begin
  Result := ChildNodes['Сдал'] as IXMLФайл_Документ_СвАктИ_Сдал;
end;

function TXMLФайл_Документ_СвАктИ.Get_ИнфПол: IXMLФайл_Документ_СвАктИ_ИнфПол;
begin
  Result := ChildNodes['ИнфПол'] as IXMLФайл_Документ_СвАктИ_ИнфПол;
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
  RegisterChildNode('СвЮЛ', TXMLУчастникТип_ИдСв_СвЮЛ);
  RegisterChildNode('СвФЛ', TXMLУчастникТип_ИдСв_СвФЛ);
  inherited;
end;

function TXMLУчастникТип_ИдСв.Get_СвЮЛ: IXMLУчастникТип_ИдСв_СвЮЛ;
begin
  Result := ChildNodes['СвЮЛ'] as IXMLУчастникТип_ИдСв_СвЮЛ;
end;

function TXMLУчастникТип_ИдСв.Get_СвФЛ: IXMLУчастникТип_ИдСв_СвФЛ;
begin
  Result := ChildNodes['СвФЛ'] as IXMLУчастникТип_ИдСв_СвФЛ;
end;

{ TXMLУчастникТип_ИдСв_СвЮЛ }

function TXMLУчастникТип_ИдСв_СвЮЛ.Get_НаимОрг: UnicodeString;
begin
  Result := AttributeNodes['НаимОрг'].Text;
end;

procedure TXMLУчастникТип_ИдСв_СвЮЛ.Set_НаимОрг(Value: UnicodeString);
begin
  SetAttribute('НаимОрг', Value);
end;

function TXMLУчастникТип_ИдСв_СвЮЛ.Get_ИННЮЛ: UnicodeString;
begin
  Result := AttributeNodes['ИННЮЛ'].Text;
end;

procedure TXMLУчастникТип_ИдСв_СвЮЛ.Set_ИННЮЛ(Value: UnicodeString);
begin
  SetAttribute('ИННЮЛ', Value);
end;

function TXMLУчастникТип_ИдСв_СвЮЛ.Get_КПП: UnicodeString;
begin
  Result := AttributeNodes['КПП'].Text;
end;

procedure TXMLУчастникТип_ИдСв_СвЮЛ.Set_КПП(Value: UnicodeString);
begin
  SetAttribute('КПП', Value);
end;

function TXMLУчастникТип_ИдСв_СвЮЛ.Get_ОКОПФ: UnicodeString;
begin
  Result := AttributeNodes['ОКОПФ'].Text;
end;

procedure TXMLУчастникТип_ИдСв_СвЮЛ.Set_ОКОПФ(Value: UnicodeString);
begin
  SetAttribute('ОКОПФ', Value);
end;

{ TXMLУчастникТип_ИдСв_СвФЛ }

procedure TXMLУчастникТип_ИдСв_СвФЛ.AfterConstruction;
begin
  RegisterChildNode('ФИОИП', TXMLФИОТип);
  inherited;
end;

function TXMLУчастникТип_ИдСв_СвФЛ.Get_ИННФЛ: UnicodeString;
begin
  Result := AttributeNodes['ИННФЛ'].Text;
end;

procedure TXMLУчастникТип_ИдСв_СвФЛ.Set_ИННФЛ(Value: UnicodeString);
begin
  SetAttribute('ИННФЛ', Value);
end;

function TXMLУчастникТип_ИдСв_СвФЛ.Get_ФИОИП: IXMLФИОТип;
begin
  Result := ChildNodes['ФИОИП'] as IXMLФИОТип;
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

{ TXMLАдресТип }

procedure TXMLАдресТип.AfterConstruction;
begin
  RegisterChildNode('АдрРФ', TXMLАдрРФ1Тип);
  RegisterChildNode('АдрИно', TXMLАдрИноТип);
  inherited;
end;

function TXMLАдресТип.Get_АдрРФ: IXMLАдрРФ1Тип;
begin
  Result := ChildNodes['АдрРФ'] as IXMLАдрРФ1Тип;
end;

function TXMLАдресТип.Get_АдрТекст: UnicodeString;
begin
  Result := ChildNodes['АдрТекст'].Text;
end;

procedure TXMLАдресТип.Set_АдрТекст(Value: UnicodeString);
begin
  ChildNodes['АдрТекст'].NodeValue := Value;
end;

function TXMLАдресТип.Get_АдрИно: IXMLАдрИноТип;
begin
  Result := ChildNodes['АдрИно'] as IXMLАдрИноТип;
end;

{ TXMLАдрРФ1Тип }

function TXMLАдрРФ1Тип.Get_Индекс: UnicodeString;
begin
  Result := AttributeNodes['Индекс'].Text;
end;

procedure TXMLАдрРФ1Тип.Set_Индекс(Value: UnicodeString);
begin
  SetAttribute('Индекс', Value);
end;

function TXMLАдрРФ1Тип.Get_КодРегион: UnicodeString;
begin
  Result := AttributeNodes['КодРегион'].Text;
end;

procedure TXMLАдрРФ1Тип.Set_КодРегион(Value: UnicodeString);
begin
  SetAttribute('КодРегион', Value);
end;

function TXMLАдрРФ1Тип.Get_Район: UnicodeString;
begin
  Result := AttributeNodes['Район'].Text;
end;

procedure TXMLАдрРФ1Тип.Set_Район(Value: UnicodeString);
begin
  SetAttribute('Район', Value);
end;

function TXMLАдрРФ1Тип.Get_Город: UnicodeString;
begin
  Result := AttributeNodes['Город'].Text;
end;

procedure TXMLАдрРФ1Тип.Set_Город(Value: UnicodeString);
begin
  SetAttribute('Город', Value);
end;

function TXMLАдрРФ1Тип.Get_НаселПункт: UnicodeString;
begin
  Result := AttributeNodes['НаселПункт'].Text;
end;

procedure TXMLАдрРФ1Тип.Set_НаселПункт(Value: UnicodeString);
begin
  SetAttribute('НаселПункт', Value);
end;

function TXMLАдрРФ1Тип.Get_Улица: UnicodeString;
begin
  Result := AttributeNodes['Улица'].Text;
end;

procedure TXMLАдрРФ1Тип.Set_Улица(Value: UnicodeString);
begin
  SetAttribute('Улица', Value);
end;

function TXMLАдрРФ1Тип.Get_Дом: UnicodeString;
begin
  Result := AttributeNodes['Дом'].Text;
end;

procedure TXMLАдрРФ1Тип.Set_Дом(Value: UnicodeString);
begin
  SetAttribute('Дом', Value);
end;

function TXMLАдрРФ1Тип.Get_Корпус: UnicodeString;
begin
  Result := AttributeNodes['Корпус'].Text;
end;

procedure TXMLАдрРФ1Тип.Set_Корпус(Value: UnicodeString);
begin
  SetAttribute('Корпус', Value);
end;

function TXMLАдрРФ1Тип.Get_Кварт: UnicodeString;
begin
  Result := AttributeNodes['Кварт'].Text;
end;

procedure TXMLАдрРФ1Тип.Set_Кварт(Value: UnicodeString);
begin
  SetAttribute('Кварт', Value);
end;

{ TXMLАдрИноТип }

function TXMLАдрИноТип.Get_КодСтр: UnicodeString;
begin
  Result := AttributeNodes['КодСтр'].Text;
end;

procedure TXMLАдрИноТип.Set_КодСтр(Value: UnicodeString);
begin
  SetAttribute('КодСтр', Value);
end;

function TXMLАдрИноТип.Get_АдрТекст: UnicodeString;
begin
  Result := AttributeNodes['АдрТекст'].Text;
end;

procedure TXMLАдрИноТип.Set_АдрТекст(Value: UnicodeString);
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

function TXMLКонтактТип.Get_Факс: UnicodeString;
begin
  Result := AttributeNodes['Факс'].Text;
end;

procedure TXMLКонтактТип.Set_Факс(Value: UnicodeString);
begin
  SetAttribute('Факс', Value);
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

{ TXMLФайл_Документ_СвАктИ_ОписРабот }

procedure TXMLФайл_Документ_СвАктИ_ОписРабот.AfterConstruction;
begin
  RegisterChildNode('Работа', TXMLФайл_Документ_СвАктИ_ОписРабот_Работа);
  ItemTag := 'Работа';
  ItemInterface := IXMLФайл_Документ_СвАктИ_ОписРабот_Работа;
  inherited;
end;

function TXMLФайл_Документ_СвАктИ_ОписРабот.Get_НачРабот: UnicodeString;
begin
  Result := AttributeNodes['НачРабот'].Text;
end;

procedure TXMLФайл_Документ_СвАктИ_ОписРабот.Set_НачРабот(Value: UnicodeString);
begin
  SetAttribute('НачРабот', Value);
end;

function TXMLФайл_Документ_СвАктИ_ОписРабот.Get_КонРабот: UnicodeString;
begin
  Result := AttributeNodes['КонРабот'].Text;
end;

procedure TXMLФайл_Документ_СвАктИ_ОписРабот.Set_КонРабот(Value: UnicodeString);
begin
  SetAttribute('КонРабот', Value);
end;

function TXMLФайл_Документ_СвАктИ_ОписРабот.Get_СумБезНДСИт: UnicodeString;
begin
  Result := AttributeNodes['СумБезНДСИт'].Text;
end;

procedure TXMLФайл_Документ_СвАктИ_ОписРабот.Set_СумБезНДСИт(Value: UnicodeString);
begin
  SetAttribute('СумБезНДСИт', Value);
end;

function TXMLФайл_Документ_СвАктИ_ОписРабот.Get_СумНДСИт: UnicodeString;
begin
  Result := AttributeNodes['СумНДСИт'].Text;
end;

procedure TXMLФайл_Документ_СвАктИ_ОписРабот.Set_СумНДСИт(Value: UnicodeString);
begin
  SetAttribute('СумНДСИт', Value);
end;

function TXMLФайл_Документ_СвАктИ_ОписРабот.Get_СумУчНДСИт: UnicodeString;
begin
  Result := AttributeNodes['СумУчНДСИт'].Text;
end;

procedure TXMLФайл_Документ_СвАктИ_ОписРабот.Set_СумУчНДСИт(Value: UnicodeString);
begin
  SetAttribute('СумУчНДСИт', Value);
end;

function TXMLФайл_Документ_СвАктИ_ОписРабот.Get_Работа(Index: Integer): IXMLФайл_Документ_СвАктИ_ОписРабот_Работа;
begin
  Result := List[Index] as IXMLФайл_Документ_СвАктИ_ОписРабот_Работа;
end;

function TXMLФайл_Документ_СвАктИ_ОписРабот.Add: IXMLФайл_Документ_СвАктИ_ОписРабот_Работа;
begin
  Result := AddItem(-1) as IXMLФайл_Документ_СвАктИ_ОписРабот_Работа;
end;

function TXMLФайл_Документ_СвАктИ_ОписРабот.Insert(const Index: Integer): IXMLФайл_Документ_СвАктИ_ОписРабот_Работа;
begin
  Result := AddItem(Index) as IXMLФайл_Документ_СвАктИ_ОписРабот_Работа;
end;

{ TXMLФайл_Документ_СвАктИ_ОписРаботList }

function TXMLФайл_Документ_СвАктИ_ОписРаботList.Add: IXMLФайл_Документ_СвАктИ_ОписРабот;
begin
  Result := AddItem(-1) as IXMLФайл_Документ_СвАктИ_ОписРабот;
end;

function TXMLФайл_Документ_СвАктИ_ОписРаботList.Insert(const Index: Integer): IXMLФайл_Документ_СвАктИ_ОписРабот;
begin
  Result := AddItem(Index) as IXMLФайл_Документ_СвАктИ_ОписРабот;
end;

function TXMLФайл_Документ_СвАктИ_ОписРаботList.Get_Item(Index: Integer): IXMLФайл_Документ_СвАктИ_ОписРабот;
begin
  Result := List[Index] as IXMLФайл_Документ_СвАктИ_ОписРабот;
end;

{ TXMLФайл_Документ_СвАктИ_ОписРабот_Работа }

function TXMLФайл_Документ_СвАктИ_ОписРабот_Работа.Get_Номер: UnicodeString;
begin
  Result := AttributeNodes['Номер'].Text;
end;

procedure TXMLФайл_Документ_СвАктИ_ОписРабот_Работа.Set_Номер(Value: UnicodeString);
begin
  SetAttribute('Номер', Value);
end;

function TXMLФайл_Документ_СвАктИ_ОписРабот_Работа.Get_НаимРабот: UnicodeString;
begin
  Result := AttributeNodes['НаимРабот'].Text;
end;

procedure TXMLФайл_Документ_СвАктИ_ОписРабот_Работа.Set_НаимРабот(Value: UnicodeString);
begin
  SetAttribute('НаимРабот', Value);
end;

function TXMLФайл_Документ_СвАктИ_ОписРабот_Работа.Get_НаимЕдИзм: UnicodeString;
begin
  Result := AttributeNodes['НаимЕдИзм'].Text;
end;

procedure TXMLФайл_Документ_СвАктИ_ОписРабот_Работа.Set_НаимЕдИзм(Value: UnicodeString);
begin
  SetAttribute('НаимЕдИзм', Value);
end;

function TXMLФайл_Документ_СвАктИ_ОписРабот_Работа.Get_ОКЕИ: UnicodeString;
begin
  Result := AttributeNodes['ОКЕИ'].Text;
end;

procedure TXMLФайл_Документ_СвАктИ_ОписРабот_Работа.Set_ОКЕИ(Value: UnicodeString);
begin
  SetAttribute('ОКЕИ', Value);
end;

function TXMLФайл_Документ_СвАктИ_ОписРабот_Работа.Get_Цена: UnicodeString;
begin
  Result := AttributeNodes['Цена'].Text;
end;

procedure TXMLФайл_Документ_СвАктИ_ОписРабот_Работа.Set_Цена(Value: UnicodeString);
begin
  SetAttribute('Цена', Value);
end;

function TXMLФайл_Документ_СвАктИ_ОписРабот_Работа.Get_Количество: UnicodeString;
begin
  Result := AttributeNodes['Количество'].Text;
end;

procedure TXMLФайл_Документ_СвАктИ_ОписРабот_Работа.Set_Количество(Value: UnicodeString);
begin
  SetAttribute('Количество', Value);
end;

function TXMLФайл_Документ_СвАктИ_ОписРабот_Работа.Get_СумБезНДС: UnicodeString;
begin
  Result := AttributeNodes['СумБезНДС'].Text;
end;

procedure TXMLФайл_Документ_СвАктИ_ОписРабот_Работа.Set_СумБезНДС(Value: UnicodeString);
begin
  SetAttribute('СумБезНДС', Value);
end;

function TXMLФайл_Документ_СвАктИ_ОписРабот_Работа.Get_СумНДС: UnicodeString;
begin
  Result := AttributeNodes['СумНДС'].Text;
end;

procedure TXMLФайл_Документ_СвАктИ_ОписРабот_Работа.Set_СумНДС(Value: UnicodeString);
begin
  SetAttribute('СумНДС', Value);
end;

function TXMLФайл_Документ_СвАктИ_ОписРабот_Работа.Get_СумУчНДС: UnicodeString;
begin
  Result := AttributeNodes['СумУчНДС'].Text;
end;

procedure TXMLФайл_Документ_СвАктИ_ОписРабот_Работа.Set_СумУчНДС(Value: UnicodeString);
begin
  SetAttribute('СумУчНДС', Value);
end;

function TXMLФайл_Документ_СвАктИ_ОписРабот_Работа.Get_ИнфПолСтр: UnicodeString;
begin
  Result := AttributeNodes['ИнфПолСтр'].Text;
end;

procedure TXMLФайл_Документ_СвАктИ_ОписРабот_Работа.Set_ИнфПолСтр(Value: UnicodeString);
begin
  SetAttribute('ИнфПолСтр', Value);
end;

function TXMLФайл_Документ_СвАктИ_ОписРабот_Работа.Get_Описание: UnicodeString;
begin
  Result := ChildNodes['Описание'].Text;
end;

procedure TXMLФайл_Документ_СвАктИ_ОписРабот_Работа.Set_Описание(Value: UnicodeString);
begin
  ChildNodes['Описание'].NodeValue := Value;
end;

{ TXMLФайл_Документ_СвАктИ_Сдал }

procedure TXMLФайл_Документ_СвАктИ_Сдал.AfterConstruction;
begin
  RegisterChildNode('ПодписьИсполн', TXMLДолжЛицоТип);
  RegisterChildNode('ДоверенИсполн', TXMLДоверенностьТип);
  inherited;
end;

function TXMLФайл_Документ_СвАктИ_Сдал.Get_ДатаИсполн: UnicodeString;
begin
  Result := AttributeNodes['ДатаИсполн'].Text;
end;

procedure TXMLФайл_Документ_СвАктИ_Сдал.Set_ДатаИсполн(Value: UnicodeString);
begin
  SetAttribute('ДатаИсполн', Value);
end;

function TXMLФайл_Документ_СвАктИ_Сдал.Get_ПодписьИсполн: IXMLДолжЛицоТип;
begin
  Result := ChildNodes['ПодписьИсполн'] as IXMLДолжЛицоТип;
end;

function TXMLФайл_Документ_СвАктИ_Сдал.Get_ДоверенИсполн: IXMLДоверенностьТип;
begin
  Result := ChildNodes['ДоверенИсполн'] as IXMLДоверенностьТип;
end;

{ TXMLДолжЛицоТип }

procedure TXMLДолжЛицоТип.AfterConstruction;
begin
  RegisterChildNode('ФИО', TXMLФИОТип);
  inherited;
end;

function TXMLДолжЛицоТип.Get_Должность: UnicodeString;
begin
  Result := AttributeNodes['Должность'].Text;
end;

procedure TXMLДолжЛицоТип.Set_Должность(Value: UnicodeString);
begin
  SetAttribute('Должность', Value);
end;

function TXMLДолжЛицоТип.Get_ФИО: IXMLФИОТип;
begin
  Result := ChildNodes['ФИО'] as IXMLФИОТип;
end;

{ TXMLДоверенностьТип }

procedure TXMLДоверенностьТип.AfterConstruction;
begin
  RegisterChildNode('ВыданаКем', TXMLДоверенностьТип_ВыданаКем);
  RegisterChildNode('ВыданаКому', TXMLДоверенностьТип_ВыданаКому);
  inherited;
end;

function TXMLДоверенностьТип.Get_НомДоверен: UnicodeString;
begin
  Result := AttributeNodes['НомДоверен'].Text;
end;

procedure TXMLДоверенностьТип.Set_НомДоверен(Value: UnicodeString);
begin
  SetAttribute('НомДоверен', Value);
end;

function TXMLДоверенностьТип.Get_ДатаДоверен: UnicodeString;
begin
  Result := AttributeNodes['ДатаДоверен'].Text;
end;

procedure TXMLДоверенностьТип.Set_ДатаДоверен(Value: UnicodeString);
begin
  SetAttribute('ДатаДоверен', Value);
end;

function TXMLДоверенностьТип.Get_ВыданаКем: IXMLДоверенностьТип_ВыданаКем;
begin
  Result := ChildNodes['ВыданаКем'] as IXMLДоверенностьТип_ВыданаКем;
end;

function TXMLДоверенностьТип.Get_ВыданаКому: IXMLДоверенностьТип_ВыданаКому;
begin
  Result := ChildNodes['ВыданаКому'] as IXMLДоверенностьТип_ВыданаКому;
end;

{ TXMLДоверенностьТип_ВыданаКем }

procedure TXMLДоверенностьТип_ВыданаКем.AfterConstruction;
begin
  RegisterChildNode('ФИО', TXMLФИОТип);
  inherited;
end;

function TXMLДоверенностьТип_ВыданаКем.Get_НаимОргКем: UnicodeString;
begin
  Result := AttributeNodes['НаимОргКем'].Text;
end;

procedure TXMLДоверенностьТип_ВыданаКем.Set_НаимОргКем(Value: UnicodeString);
begin
  SetAttribute('НаимОргКем', Value);
end;

function TXMLДоверенностьТип_ВыданаКем.Get_ДолжнКем: UnicodeString;
begin
  Result := AttributeNodes['ДолжнКем'].Text;
end;

procedure TXMLДоверенностьТип_ВыданаКем.Set_ДолжнКем(Value: UnicodeString);
begin
  SetAttribute('ДолжнКем', Value);
end;

function TXMLДоверенностьТип_ВыданаКем.Get_ДопСведКем: UnicodeString;
begin
  Result := AttributeNodes['ДопСведКем'].Text;
end;

procedure TXMLДоверенностьТип_ВыданаКем.Set_ДопСведКем(Value: UnicodeString);
begin
  SetAttribute('ДопСведКем', Value);
end;

function TXMLДоверенностьТип_ВыданаКем.Get_ФИО: IXMLФИОТип;
begin
  Result := ChildNodes['ФИО'] as IXMLФИОТип;
end;

{ TXMLДоверенностьТип_ВыданаКому }

procedure TXMLДоверенностьТип_ВыданаКому.AfterConstruction;
begin
  RegisterChildNode('ФИО', TXMLФИОТип);
  inherited;
end;

function TXMLДоверенностьТип_ВыданаКому.Get_Должн: UnicodeString;
begin
  Result := AttributeNodes['Должн'].Text;
end;

procedure TXMLДоверенностьТип_ВыданаКому.Set_Должн(Value: UnicodeString);
begin
  SetAttribute('Должн', Value);
end;

function TXMLДоверенностьТип_ВыданаКому.Get_ДопСведКому: UnicodeString;
begin
  Result := AttributeNodes['ДопСведКому'].Text;
end;

procedure TXMLДоверенностьТип_ВыданаКому.Set_ДопСведКому(Value: UnicodeString);
begin
  SetAttribute('ДопСведКому', Value);
end;

function TXMLДоверенностьТип_ВыданаКому.Get_ФИО: IXMLФИОТип;
begin
  Result := ChildNodes['ФИО'] as IXMLФИОТип;
end;

{ TXMLФайл_Документ_СвАктИ_ИнфПол }

function TXMLФайл_Документ_СвАктИ_ИнфПол.Get_ТекстИнф: UnicodeString;
begin
  Result := AttributeNodes['ТекстИнф'].Text;
end;

procedure TXMLФайл_Документ_СвАктИ_ИнфПол.Set_ТекстИнф(Value: UnicodeString);
begin
  SetAttribute('ТекстИнф', Value);
end;

function TXMLФайл_Документ_СвАктИ_ИнфПол.Get_ИдФайлИнфПол: UnicodeString;
begin
  Result := AttributeNodes['ИдФайлИнфПол'].Text;
end;

procedure TXMLФайл_Документ_СвАктИ_ИнфПол.Set_ИдФайлИнфПол(Value: UnicodeString);
begin
  SetAttribute('ИдФайлИнфПол', Value);
end;

{ TXMLФайл_Документ_Подписант }

procedure TXMLФайл_Документ_Подписант.AfterConstruction;
begin
  RegisterChildNode('ИП', TXMLФайл_Документ_Подписант_ИП);
  RegisterChildNode('ЮЛ', TXMLФайл_Документ_Подписант_ЮЛ);
  inherited;
end;

function TXMLФайл_Документ_Подписант.Get_ИП: IXMLФайл_Документ_Подписант_ИП;
begin
  Result := ChildNodes['ИП'] as IXMLФайл_Документ_Подписант_ИП;
end;

function TXMLФайл_Документ_Подписант.Get_ЮЛ: IXMLФайл_Документ_Подписант_ЮЛ;
begin
  Result := ChildNodes['ЮЛ'] as IXMLФайл_Документ_Подписант_ЮЛ;
end;

{ TXMLФайл_Документ_Подписант_ИП }

procedure TXMLФайл_Документ_Подписант_ИП.AfterConstruction;
begin
  RegisterChildNode('ФИО', TXMLФИОТип);
  inherited;
end;

function TXMLФайл_Документ_Подписант_ИП.Get_ИННФЛ: UnicodeString;
begin
  Result := AttributeNodes['ИННФЛ'].Text;
end;

procedure TXMLФайл_Документ_Подписант_ИП.Set_ИННФЛ(Value: UnicodeString);
begin
  SetAttribute('ИННФЛ', Value);
end;

function TXMLФайл_Документ_Подписант_ИП.Get_СвГосРегИП: UnicodeString;
begin
  Result := AttributeNodes['СвГосРегИП'].Text;
end;

procedure TXMLФайл_Документ_Подписант_ИП.Set_СвГосРегИП(Value: UnicodeString);
begin
  SetAttribute('СвГосРегИП', Value);
end;

function TXMLФайл_Документ_Подписант_ИП.Get_ФИО: IXMLФИОТип;
begin
  Result := ChildNodes['ФИО'] as IXMLФИОТип;
end;

{ TXMLФайл_Документ_Подписант_ЮЛ }

procedure TXMLФайл_Документ_Подписант_ЮЛ.AfterConstruction;
begin
  RegisterChildNode('ФИО', TXMLФИОТип);
  inherited;
end;

function TXMLФайл_Документ_Подписант_ЮЛ.Get_ИННЮЛ: UnicodeString;
begin
  Result := AttributeNodes['ИННЮЛ'].Text;
end;

procedure TXMLФайл_Документ_Подписант_ЮЛ.Set_ИННЮЛ(Value: UnicodeString);
begin
  SetAttribute('ИННЮЛ', Value);
end;

function TXMLФайл_Документ_Подписант_ЮЛ.Get_Должн: UnicodeString;
begin
  Result := AttributeNodes['Должн'].Text;
end;

procedure TXMLФайл_Документ_Подписант_ЮЛ.Set_Должн(Value: UnicodeString);
begin
  SetAttribute('Должн', Value);
end;

function TXMLФайл_Документ_Подписант_ЮЛ.Get_ФИО: IXMLФИОТип;
begin
  Result := ChildNodes['ФИО'] as IXMLФИОТип;
end;

end.