unit Default;

interface

uses
   Vcl.Controls, DBClient, Windows, Messages;

type
  TFactCompare = (fcDoubleVagon, fcForReversing); // тип сравнения двух "фактов" fcDoubleVagon - для удаления двйных вагонов; fcForReversing - для сторнирования
  TRegisterAction = (rgSave, rgLoad);    // при загрузке и сохранения колонок cxGrid

  PUser_pwd = ^TUser_pwd;
  TUser_pwd = record
     users_id       : integer;
     user_name      : string;
     user_pass      : string;
     user_cod       : string;
     server         : string;
     catalog        : string;
     session        : integer;
     user_func      : TClientDataSet;
     user_group_id  : integer;
  end;

  PTVDictionary = ^TTVDictionary;
  TTVDictionary = record
     id          : integer;
     owner_id    : integer;
     group_cod   : byte;
  end;

  TmyBarCode = record
    database_cod : integer;  // 2 цифры (0 - Lis, 1 - Lis_Ship, 2 - Lis_Docs, 3 - Lis "зеленый")
    object_id    : integer;  // 3 цифры (ИД объекта - для BARGAIN = 24)
    date         : TDate;    // 6 цифр (дата - для BARGAIN = date_period)
    global_id    : integer;  // 10 цифр
    user_id      : integer;  // 4 цифры (владелец - users_owner_id)
    //chek_sum    : integer;  // 1 цифра
    //ИТОГО = 26 цифр
  end;

  TDBFHeader = packed record
    Version      : byte;                      // 1 b
    LastUpdate   : array[0..2] of AnsiChar;   // 3 b
    RecordCount  : Longword;                  // 4 b
    HeaderSize   : word;                      // 2 b
    RecordSize   : word;                      // 2 b
    Reserved1    : array[0..1] of byte;       // 2 b
    IncomTrans   : byte;                      // 1 b
    Encryption   : byte;                      // 1 b
    RecordThread : Longword;                  // 4 b
    Reserved2    : array[0..7] of byte;       // 8 b
    MDX          : byte;                      // 1 b
    Language     : byte;                      // 1 b
    Reserved3    : array[0..1] of byte;       // 2 b
  end;

  TDBFField = packed record
    dfFieldName   : array[0..10] of byte;
    dfFieldType   : byte;
    dfFieldWhere  : Longword;
    dfFieldLength : byte;
    dfFiller      : array[0..14] of byte;
  end;

  TShellLinkInfo = record
    PathName: string;
    Arguments: string;
    Description: string;
    WorkingDirectory: string;
    IconLocation: string;
    IconIndex: integer;
    ShowCmd: integer;
    HotKey: word;
  end;

// ----- тип функции для вызова справочника -----
type
  TFunc = function(AppHand: THandle; f: boolean; usr_pwd: PUser_pwd) : variant;


const open_users_group: array[0..5] of integer = (1626295, 4633962, 502778, 418556, 265606, 606672) ;

const array_round_weight : array[0..2] of string = ('10-01', 'ТП', '');
const filter_from_to  : array[0..2] of string = (' AND (from_to <> 0)', ' AND (from_to <> 1)', ' AND (from_to <> 2)');
const crHourglass = -11;
const str_from_to  : array[1..2] of string = ('o_', 'p_');

const var_one_other : array[1..2] of string = ('одна',' две');
const var_one : array[1..10] of string = ('один','два','три','четыре','пять','шесть','семь','восемь','девять','ноль');
const var_two : array[1..9] of string = ('одиннадцать','двенадцать','тринадцать','четырнадцать','пятнадцать','шестнадцать','семнадцать','восемнадцать','девятнадцать');
const var_three : array[1..9] of string = ('десять','двадцать','тридцать','сорок','пятьдесят','шестьдесят','семьдесят','восемьдесят','девяносто');
const var_four : array[1..9] of string = ('сто','двести','триста','четыреста','пятьсот','шестьсот','семьсот','восемьсот','девятьсот');

const var_one_eng : array[1..10] of string = ('one', 'two', 'three', 'four', 'five', 'six', 'seven', 'eight', 'nine', 'null');
const var_two_eng : array[1..9] of string = ('eleven', 'twelve', 'thirteen', 'fourteen', 'fifteen', 'sixteen', 'seventeen', 'eighteen', 'nineteen');
const var_three_eng : array[1..9] of string = ('ten', 'twenty', 'thirty', 'forty', 'fifty', 'sixty', 'seventy', 'eighty', 'ninety');

const array_month_RUS : array[1..12] of string = ('ЯНВАРЕ', 'ФЕВРАЛЕ', 'МАРТЕ', 'АПРЕЛЕ', 'МАЕ', 'ИЮНЕ', 'ИЮЛЕ', 'АВГУСТЕ', 'СЕНТЯБРЕ' ,'ОКТЯБРЕ' ,'НОЯБРЕ' ,'ДЕКАБРЕ');
const array_month_ENG : array[1..12] of string = ('JANUARY', 'FEBRUARY', 'MARCH', 'APRIL', 'MAY', 'JUNE', 'JULY', 'AUGUST', 'SEPTEMBER' ,'OCTOBER' ,'NOVEMBER' ,'DECEMBER');
const array_month_balance : array[1..12] of string = ('января', 'февраля', 'марта', 'апреля', 'мая', 'июня', 'июля', 'августа', 'сентября' ,'октября' ,'ноября' ,'декабря');
const array_month : array[1..12] of string = ('Январь', 'Февраль', 'Март', 'Апрель', 'Май', 'Июнь', 'Июль', 'Август', 'Сентябрь' ,'Октябрь' ,'Ноябрь' ,'Декабрь');

const array_fields_name : array [0..3] of string = ('transport_pay','fact_weight','calc_weight','kargo_capacity');

const array_dbf_osn : array [0..34] of string = ('LOCCO','NUMBER_ACT','DATE_ACT','TYPE_INCOM','INN','KPP','DEB_NAME','NUM_CONTR','FACT_NUM','FACT_DATE','SERV_CODE','KTGRM_TEXT','DATE_DEP','DATE_SERV','DATE_PR','CARDDOCTYP','RR_SRC','ST_SRC','RR_TGT','ST_TGT','VIDSOOB','TYPE_TR','NUMBER_DOC','VAGON_NUM','CONT_NUM','FR_CODE','FR_WEIGHT','SUM_WNDS_R','NDS_RUB','SUM_RUB','SUM_WNDS_U','NDS_USD','SUM_USD','WAERS','INVOICEIDC');
const array_dbf_kor : array [0..28] of string = ('LOCCO','NUMBER_ACT','DATE_ACT','TYPE_INCOM','INN','KPP','DEB_NAME','NUM_CONTR','FACT_NUM','FACT_DATE','NUMACT_COR','DATACT_COR','DATE_SERV','CARDDOCTYP','NUMBER_DOC','SUM_R_PREV','NDS_R_PREV','SUM_R_DIFF','NDS_R_DIFF','SUM_RUB','NDS_RUB','SUM_PREV','NDS_PREV','SUM_DIFF','NDS_DIFF','SUM_C','NDS_C','WAERS','INVOICEIDC');
const array_dbf_fact_inc : array [0..209] of string = ('O_NDSER','O_NDNUM','O_FKAT','O_NVAG','O_FSOB','O_FKV','O_GRP','O_DATAOT','O_VG','O_GRVES','O_GPMAR','O_FEXAN','O_STRO','O_DO','O_STO','O_STRN','O_FSD','O_STN','O_STNM','O_GNG','O_GRUZ','O_LKR','O_CIT','O_OTPRGR','O_POLUCHGR','O_PODKOD','O_NOMTLG','O_CODAG','O_RODV','O_KOLPROV','O_NKONT','O_FSOBKONT','O_FGRK','O_GSTAV','O_KOFFDATO','O_FVAL','O_DVDO',
    'O_OM','O_GOD','O_STOM','O_GK85','O_GKR','O_GPPP','P_NDSER','P_NDNUM','P_FKAT','P_NVAG','P_FSOB','P_FKV','P_GRP','P_DATAOT','P_DATPR','P_VG','P_GRVES','P_GPMAR','P_FEXAN','P_STRO','P_DO','P_STO','P_STRN','P_FSD','P_STN','P_STNM','P_GNG','P_GRUZ','P_LKR','P_LMAR','P_CIT','P_OTPRGR','P_POLUCHGR','P_PODKOD','P_NOMTLG','P_CODAG','P_RODV','P_KOLPROV','P_NKONT','P_FSOBKONT','P_FGRK','P_GSTAV','P_KOFFDATO','P_FVAL',
    'P_DVDO','P_OM','P_GOD','P_DATV','P_STOM','P_GK85','P_GKR','P_GPPP','O_PLMPS','O_GDS','O_ITOG','O_NDS','P_PLMPS','P_GDS','P_ITOG','P_NDS','PEREB_PLMP','PEREB_GDS','PEREB_ITOG','PEREB_NDS','NEDOB_PLMP','NEDOB_GDS','NEDOB_ITOG','NEDOB_NDS','ITOG_PLMPS','ITOG_GDS','ITOG_ITOG','ITOG_NDS','ID_UCH','DELTA_PLMP','DELTA_GDS','DELTA_ITOG','DELTA_NDS','O_TIPZAP','O_FM','P_TIPZAP','P_FM','O_IDKOR','O_IDNEW','O_IDNEW2',
    'P_IDKOR','P_IDNEW','P_IDNEW2','P_GNSX','O_GNSX','O_NS','P_NS','PSS','O_DATEOTVZ','P_DATEOTVZ','ITOG_OSN','ITOG_EXP','DELTA_OSN','DELTA_EXP','O_VOHR6ITG','O_VOHR6NDS','P_VOHR6ITG','P_VOHR6NDS','P_VOHR7ITG','P_VOHR7NDS','O_KURSDR','P_KURSDR','O_GNG8','P_GNG8','ITOG_OSN18','DELTA_OS18','ITOG_PLMPR','ITOG_GDSR','ITOG_ITOGR','ITOG_NDSR','DELTA_PLMR','DELTA_GDSR','DELTA_ITGR','DELTA_NDSR','ITOG_OSNR','ITOG_EXPR',
    'DELTA_OSNR','DELTA_EXPR','ITOG_OS18R','DELT_OS18R','O_VHR6ITGR','O_VHR6NDSR','P_VHR6ITGR','P_VHR6NDSR','P_VHR7ITGR','P_VHR7NDSR','P_TD5ITG','P_TD5NDS','P_TD20ITG','P_TD20NDS','P_TD5ITGR','P_TD5NDSR','P_TD20ITGR','P_TD20NDSR','P_SHTRAFR','PRZ01','P_STRPLAT1','P_STRPLAT2','P_STRPLAT3','P_STRPLAT4','P_STRPLAT5','P_STRPLAT6','P_STR1ITGR','P_STR2ITGR','P_STR3ITGR','P_STR4ITGR','P_STR5ITGR','P_STR6ITGR','P_STR1ITG',
    'P_STR2ITG','P_STR3ITG','P_STR4ITG','P_STR5ITG','P_STR6ITG','P_PAR','P_PARNDS','P_KTB2','P_TD1ITGR','P_TD1NDSR','P_TD2ITGR','P_TD2NDSR','O_KONTRAG','P_KONTRAG','P_SNDS','P_SORT','P_OD','P_YAKITGR','O_YAK','P_KURSFR');
const array_dbf_grant : array [0..22] of string = ('TAXABLE','GRO','NUM','GR1','GR2','GR3','GR4','GR5','GR6','GR7','GR8','GR9','GR10','GR11','GR12','DTTO','DTFROM','OW','OWN','STO_CODE','STN_CODE','FR_CODE_ET','DIST');
const array_dbf_kor_new : array [0..29] of string = ('LOCCO','NUMBER_ACT','DATE_ACT','TYPE_INCOM','INN','KPP','DEB_NAME','NUM_CONTR','FACT_NUM_C','FACT_NUM','FACT_DATE','NUMACT_COR','DATACT_COR','DATE_SERV','CARDDOCTYP','NUMBER_DOC','SUM_R_PREV','NDS_R_PREV','SUM_R_DIFF','NDS_R_DIFF','SUM_RUB','NDS_RUB','SUM_PREV','NDS_PREV','SUM_DIFF','NDS_DIFF','SUM_C','NDS_C','WAERS','INVOICEIDC');

//const spam_dir : string = 'C:\Lis_NEW\Temp';

// Констанлы для галочек в Акт
const
  ACT_SET_ADDVAGON             = $00000001; // Номера вагонов в наименование услуги
  ACT_SET_EXCHANGE             = $00000002; // Выводить эквивалень в рублях
  ACT_SET_ADDSIGN              = $00000004; // Выводить "Дату подписания"
  ACT_SET_COPYREPORT           = $00000008; // Формировать акт к отчету
  ACT_SET_ROUTEFROMFACT        = $00000010; // Маршрут из Факта
  ACT_SET_KARGOFROMFACT        = $00000020; // Груз из Факта
  ACT_SET_WEIGHTFROMFACT       = $00000040; // Р.Вес из Факта
  ACT_SET_OTHER_EXCHANGE       = $00000080; // Выводить эквивалень в ...(валюта выбирается)
  ACT_SET_SCOREZFTOFROMFACTINC = $00000100; // Сч-ф. из нарастающего итога
  ACT_SET_PRINTCOMMENT         = $00000200; // Выводить примечание в акте/отчете

  ACT_CHOOSE_EXCHANGE          = $00000400; // Возможность выбора Валюты акта
  ACT_CHOOSE_BANK_ACCOUNT      = $00000800; // Возможность выбора Банковских реквизитов (Для ТОРГ-12)

  ACT_SET_PP_FROMFACT          = $00001000; // Погран переходы из факта (работает только совместно с ACT_SET_ROUTEFROMFACT)
  ACT_SET_RECALC_DISTANCE      = $00002000; // Пересчет расстояний (настройка не сохраняется в базе, и при каждом новом формировани Акта сброшена)
  ACT_SET_DATEDELIVERY         = $00003000; // Не выводить колонку "Дата раскредитации" (date_delivery)

  ACT_SET_BASE_ADDITION        = $00004000; // Возможность указания Доп. Соглашения/Пунктов Договора
  ACT_SET_COUNTRY_NAME         = $00008000; // Возможность территории
  // ACT_SET_BASE_ADDITION и ACT_SET_COUNTRY_NAME - взаимоисключающие, т.к. используют одно и то же поля для сохранения и отображения

  ACT_SET_ROUTE_n_PP_FROMFACT = ACT_SET_ROUTEFROMFACT or ACT_SET_PP_FROMFACT; // Маршрут и ПП из Факта

  // Для отображения группы галочек (Маршрут из Факта + Груз из Факта)
  ACT_SET_ROUTE_n_KARGOFROMFACT = ACT_SET_ROUTEFROMFACT or ACT_SET_KARGOFROMFACT; // Маршрут и Груз из Факта
  // Для отображения группы галочек (Все из Факта)
  ACT_SET_ALLPARAMFROMFACT = ACT_SET_ROUTEFROMFACT or ACT_SET_KARGOFROMFACT or ACT_SET_WEIGHTFROMFACT; // Все из Факта

const

//  CTM_User     : string = 'CTM_User';
//  CTM_Password : string = '!Q@W3e4r';
//  CTM_Server   : string = '172.16.200.33';


  CTM_User     : string = 'ctm';
  CTM_Password : string = 'Ctm1';
  CTM_Server   : string = '172.25.45.2';


//  CTM_RailInfo    : WideString = '\\172.16.200.15\RAILINFO$\railinfo.exe';
//  CTM_RailInfoDir : WideString = '\\172.16.200.15\RAILINFO$';

  CTM_RailInfo    : WideString = '\\172.16.200.33\ctm\RAILINFO\railinfo.exe';
  CTM_RailInfoDir : WideString = '\\172.16.200.33\ctm\RAILINFO';
  EtranDatabase : string = 'Lis_Etran';




const
  WM_READY = WM_USER + 1;

type
  TData = packed record
    CmdType : integer;
    Id : integer;
  end;

  PData = ^TData;

var
  LisDocsHandle : HWND;

implementation

end.



