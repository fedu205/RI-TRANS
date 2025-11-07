unit Raznoe;

interface

uses
   ComCtrls, ADOdb, Sysutils, Classes, Forms, DBGrids, Registry, StdCtrls,
   Vcl.Controls, DBClient, DB, Dialogs, Graphics, Math, Windows, Variants, Default,
   cxGridTableView, cxGridBandedTableView, cxFilter, cxGridCustomTableView, Buttons, dxCore,
   cxGridDBBandedTableView, cxClasses, cxControls, cxGridCustomView, cxDropDownEdit,
   cxGrid, cxCustomData, cxLabel, cxGridDBTableView, dxmdaset, dxBar, cxCheckComboBox,
   cxPropertiesStore, XMLDoc, xmldom, XMLIntf, StrUtils, cxTextEdit, cxCheckBox,
   cxButtonEdit, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, cxPC,
   DateUtils, cxGridDBDataDefinitions, ExtCtrls, Menus, cxMemo, cxCalendar, cxStyles,
   cxCheckListBox, cxLookAndFeelPainters, cxGridExportLink, cxGridLevel, cxCurrencyEdit, Messages,
   ActiveX, XSBuiltIns, SOAPHTTPClient, DailyInfo, ShellAPI, ShlObj, cxDBTL, TlHelp32,
   dxSpreadSheet, dxSpreadSheetCore, dxSpreadSheetGraphics, cxGraphics, dxSpreadSheetFormatXLS,
   dxSpreadSheetFormatXLSX, vcl.filectrl, cxDBPivotGrid;


function GetVersion : string;


procedure PrintcxGrid(cxGridView: TcxGridDBBandedTableView);
procedure PrintcxGridCSV(cxGridView: TcxGridDBBandedTableView);

procedure UsersSettingModify(type_action: integer; form_name: string; var cxControl: TcxControl; conn: TADOConnection);
function CheckNumVagon(num_vagon : string): boolean;
function CheckSigner(firm_id, dir_id, buh_id: integer; date1: TDate; Fconnect: TADOConnection): boolean;

procedure PrintReport366_367(retActSettings: Variant; exWkb: Variant; type_rep: integer; connect: TADOConnection; str_num_vagon: string; date_begin: TDateTime; date_end: TDateTime; str_node_begin_cod: string; str_node_end_cod: string; str_type_park_id: string; norm_stay: integer; rate_val, norm_nds: Currency);
procedure PrintReport1366(retActSettings: Variant; exWkb: Variant; type_rep: integer; connect: TADOConnection; str_num_vagon: string; date_begin: TDateTime; date_end: TDateTime; str_node_begin_cod: string; str_node_end_cod: string; str_type_park_id: string; norm_stay: integer; rate_val, norm_nds: Currency);

function RoundFactWeight(type_round:byte; weight:double; naliv:boolean; check_kargo_capacity:boolean; kargo_min_norm, kargo_capacity : double) : double;
function FindRate(vagon_kont:boolean; Q:TADOQuery; type_round:byte; weight:double) : currency;
function MVRN(weight : single) : integer;
function Rate_MVRN(weight : single) : integer;

function GetCodByFirm(connect: TADOConnection; id: integer; firm_id: integer; shablon_type: integer; date_period: TDateTime; var num: integer):string;
function GetExchangeNew(currency_id: integer; dt: TDatetime; conn: TADOConnection; set_exchange_day: boolean = False): double;

procedure LoadRegistryDate_(str : string; var date_1, date_2 : TDateTime);
procedure SavePositionForm(form:TControl;str : string; date_1,date_2 : TDateTime);
procedure StoreRegistryGrid(reg_action: TRegisterAction; reg_key: string; cxGridView: TcxGridDBBandedTableView; ClearCount: integer = 0);

procedure StoreRegistryGrid2(reg_action: TRegisterAction; reg_key: string; cxGridView: TcxGridDBBandedTableView; ClearCount: integer = 0);
//procedure StoreRegistryGridFrom(reg_action: TRegisterAction; reg_key: string; form: TForm; ClearCount: integer = 0);
function  StoreRegistryDate(reg_action: TRegisterAction; reg_key: string; var date_begin, date_end : TDateTime; key_begin: string='Fdate_begin'; key_end: string='Fdate_end'): string;
function  StoreRegistryCheck(reg_action: TRegisterAction; reg_key: string; check_name: string; set_check: boolean): boolean;
function  StoreRegistryString(reg_action: TRegisterAction; reg_key: string; value_name: string; value_string: string): string;
procedure StoreRegistryMemo(reg_action: TRegisterAction; reg_key: string; cxMemo: TcxMemo);
procedure StoreRegistryCheckComboBox(reg_action: TRegisterAction; reg_key: string; cxCheckComboBox: TcxCheckComboBox);
procedure SetdxDBGridColumns(cxGrid : TcxGridDBBandedTableView);
procedure RestoreGroupedColumns(cxGridView : TcxGridDBBandedTableView);
procedure AllowableKargo(cxGridView : TcxGridDBBandedTableView; conn : TADOConnection);

// Настройки Акта
function GetActsOption(acts_cod : string; conn : TADOConnection) : TCustomADODataSet;
function OpenActsOption(acts_cod : string; conn : TADOConnection; usr_pwd: PUser_pwd; var date_begin, date_end: TDateTime; type_date : integer) : Boolean;
// Настройки Акта

procedure FillClient_ShapingRate(var Client_ShapingRate:TClientDataSet;Q:TADODataSet);

procedure PrintActVerify_Evrocement(contract_id : integer; d1, d2 : TDateTime; conn: TADOConnection);
procedure PrintActRusCoal(str_bargain_id: string; d1, d2: TDateTime; type_report: integer; conn: TADOConnection);
procedure PrintcxGridToXML(cxGridView : TcxGridDBBandedTableView; set_PrintAllTable : Boolean = False);
procedure PrintReportAgent_RMProcissing(str_bargain_id: string; d1: TDateTime; d2: TDateTime; shablon_cod: integer; conn: TADOConnection; usr_pwd: PUser_pwd);
procedure PrintReportAgent_Gurevskii(contract_id: integer; d1: TDateTime; d2: TDateTime; conn: TADOConnection; usr_pwd: PUser_pwd);

procedure PrintAgentBalance(contract_id : integer; d1, d2 : TDateTime; fact_balans : Boolean; conn: TADOConnection; usr_pwd: PUser_pwd);

procedure PrintFrahtCardWeight_Multi(conn: TADOConnection; BargainList: TStringList; set_show_excel : Boolean);
procedure PrintFrahtCardWeight_Multi2(conn: TADOConnection; str_bargain_id: string);

// ---- отчёты ГПТ --------------
//procedure LoadFromExcel_Date_delivery_GPT(cxGridView:TcxGridDBBandedTableView);


// ---- возвращает актуальный DataSet, связанный с cxGrid
{НА УДАЛЕНИЕ} procedure cx_GetSelectedValues(AList: TStringList; AGrid: TcxGrid; AFieldName: string; OnlyUnique: boolean); overload;
{НА УДАЛЕНИЕ} function cx_GetSelectedValues(AGrid: TcxGrid; AFieldName: string): string; overload;
{НА УДАЛЕНИЕ} function cx_GetSelectedValue(AGrid: TcxGrid; AFieldName: string): Variant;
procedure FiltercxGrid4ListID(cxGridView: TcxGridDBBandedTableView; field_name: string = ''; ListID: string = '');
procedure FiltercxGridByFocusedValue(cxGridView: TcxGridDBBandedTableView);

procedure DrawcxGridColumnOnFiltered(Sender: TObject);
procedure DrawcxGridColumnOnFocused(Sender: TcxGridTableView; var AC: TcxCanvas; var AV: TcxGridColumnHeaderViewInfo);

// ---- Изменение цвета записи
procedure SetRecordColor(Column_name: string; cxGrid: TcxGridDBBandedTableView; TableName: string; IsColorNull: boolean; color_column_name : string = '');
procedure SetRecordUsersColor(Column_name: string; cxGrid: TcxGridDBBandedTableView; TableName: string; IsColorNull: boolean);

procedure ShowSearchFact_ClientDSFields(var ClientDS: TClientDataSet);
function ShowSearchFactSum(AppHandle: THandle; user_pwd: PUser_pwd; var ClientDS: TClientDataSet): boolean;
function ShowSearchFact(AppHandle: THandle; user_pwd: PUser_pwd; var ClientDS: TClientDataSet; type_fact: integer): boolean;

function ShowFactTrackVagonDlg(AppHandle: THandle; user_pwd: PUser_pwd; type_view: integer;str_vagon_num: string = ''; type_result: integer = -9): Variant;
function ShowFactTrackTripDlg (AppHandle: THandle; user_pwd: PUser_pwd; ActivePage: integer):Variant;
function ShowFactUpdateSettings(AppHandle: THandle; user_pwd: PUser_pwd; ActivePage: integer): Variant;

function LoadFileFromDB(FFileName: string; FField: TField; AskUser: boolean): boolean;

procedure PrintFactByAgree(str_bargain_id : string; conn: TADOConnection; usr_pwd: PUser_pwd);
procedure PrintFactByAgreeNew(str_bargain_id : string; conn: TADOConnection; usr_pwd: PUser_pwd);
function PeriodToStr(Date1, Date2: TDateTime; Pack: boolean): string;

function DocsRun(ClientDS_param: TClientDataSet; usr_pwd: PUser_pwd; users_group_cod: string): variant;

// ----------- сумма прописью --------------
function GetSumScript_RUS(Value: string; currency:integer):string;
function Calc_mln_RUS(x:longint):string;
function Calc_tis_RUS(x:longint):string;
function Calc_sot_RUS(x:longint):string;
function Calc_des_RUS(x:longint):string;
function Calc_ed_RUS(x:longint):string;
function GetSumScript_ENG(Value: string; currency:integer):string;
function Calc_mln_ENG(x:longint):string;
function Calc_tis_ENG(x:longint):string;
function Calc_sot_ENG(x:longint):string;
function Calc_des_ENG(x:longint):string;
function Calc_ed_ENG(x:longint):string;
// ----- конец сумма прописью -------------

function CreatefmAgree(bargain_id, users_owner_id : integer; date_period : TDateTime) : boolean;

//------------------
procedure ClientDSToForm(fm: TForm; ClientDS: TClientDataSet);
function  ClientDSToProcedure(sp_name: string; ClientDS: TClientDataSet; conn: TADOConnection):integer;
procedure ClientDSFromForm(fm: TForm; ClientDS: TClientDataSet);
procedure ClientDSFromQuery(Q: TADOQuery; ClientDS: TClientDataSet);
procedure ClientDSFromRecordset(Q: _Recordset; ClientDS: TClientDataSet);
procedure ClientDSClear(ClientDS: TClientDataSet);
function  GetNameFromComponent(component:TComponent):string;
function SortClientDataSet(ClientDataSet: TClientDataSet; const FieldName: string): Boolean;
//------------------
function  iif(param_if: boolean; param_true: Variant; param_false: Variant):Variant;
procedure RefreshQueryGrid(cxGridView: TcxGridDBBandedTableView; field_name: string; values: int64=-9);

procedure FindInInfObj(ClientDS: TClientDataSet; NameInfObj:string; isName:boolean; isFind:boolean; type_inf_id: integer; Period : TDateTime; conn: TADOConnection);
function  FindInInfObjNode(ClientDS: TClientDataSet; NameInfObj:string; isName:boolean; isFind:boolean; Period : TDateTime; Conn : TADOConnection): boolean;
procedure RefreshQueryTree(cxDBTree: TcxDBTreeList; field_name: string; values: int64=-9);

function  GetStrIdNumDoc(cxGridColumn: TcxGridDBBandedColumn; char_separator:String):string;
function  GetStrId(cxGridColumn: TcxGridDBBandedColumn; char_separator:String):string;
function  CreateFormUsers(load_library: String; function_name: String; flag: integer; usr_pwd: PUser_pwd) : Variant;

function  DateToSQL(value : TDateTime): string;
function  FloatToSQL(value : double): string;
function  StrToSQL(value :string): string;
function  MemoToSQL(cxMemo: TcxMemo; type_return: integer): string;  // type_return 0-string, 1-integer
function  TimeToText (d : TDateTime) : string;
function  DataXMLToSQL(ClientDS: TClientDataSet): string;
function  GetIDFromSQL(SQL :string; conn: TADOConnection): string;
function  GetIDFromClientDS(ClientDS :TClientDataSet; field_name: string): string;

procedure FilterColumnGridOnKeyPress(cxGridView : TcxGridDBBandedTableView; var Key: Char);

procedure PrintTelegram(rt_id: integer; connect: TADOConnection);
procedure PrintClaim(claim_id: integer; connect_etran: TADOConnection);
procedure PrintInvoice(invoice_id: integer; connect_etran: TADOConnection);
procedure PrintInvoice_ETRAN(invoice_id: integer; connect_etran: TADOConnection; var exWks: variant);
procedure PrintInvoice_ETRAN29(invoice_id: integer; connect_etran: TADOConnection; var exWks: variant);
procedure PrintInvoice_ETRAN_SMGS1(invoice_id: integer; connect_etran: TADOConnection);
procedure PrintInvoice_ETRAN_SMGS2(invoice_id: integer; connect_etran: TADOConnection);
procedure FindInEtranInvoice(conn: TADOConnection; usr_pwd: PUser_pwd; doc_id: variant; num_vagon: variant; fact_id: integer);
function  ShowFormFrahtBuh(usr_pwd: PUser_pwd; var sql_query: string; var commiss: double) : boolean;

procedure OpenAgree4List(Fdate1, Fdate2 : TDate; set_finance : boolean; str_bargain_id : string);
function  ClientDataSetSort(ClientDataSet: TClientDataSet; const FieldsName: string; set_desc: boolean): boolean;

function OpenCTMAccount(user_pwd: PUser_pwd;ClientDS:TClientDataSet = nil): TClientDataSet;

function GetCalcDistanceDB(node_begin_cod, node_end_cod: string; connect: TADOConnection; set_recalc: boolean; date_from_to: TDateTime): integer;

function GetCalcDistance(node_begin_cod, node_end_cod: string; land_id : integer = -9; node_add_cod : string = ''): integer;
function GetPeriodOfDelivery(node_begin_cod, node_end_cod, kargoETSNG_cod: string): integer;
function GetCalcDistanceFast(node_begin_cod, node_end_cod: string): integer;
procedure GetCalcDistanceGroup(var Local_DS:TClientDataSet);
function GetCalcDistanceGroupFast(var ClientDS: TClientDataSet; node_begin_cod: string; node_end_cod: string; set_show_message: boolean): integer;
procedure GetPPRoute(node_begin_cod, node_end_cod: string; var ClientDS: TClientDataSet; var distance: integer);
procedure GetFullRoute(node_begin_cod: string; node_end_cod: string; Connect: TADOConnection; var ClientDS: TClientDataSet; set_resave: boolean);
procedure StationFindAround(var ClientDS: TClientDataSet; node_cod: string; radius: integer);
procedure OpenRealInfo(Document : string);


procedure GetAddCollectionFact(conn: TADOConnection;  bargain_id : integer;var Client_Add : TClientDataSet; flag : integer);
function GetInvoiceFromBargain(conn: TADOConnection;  bargain_id : integer): string;

procedure OpenHelpCHM(index : integer = -9);

function  RoundCurr(AValue: Double; ADigin: Integer): Currency;

procedure SetUsersModuleRights(form : TForm; Conn: TADOConnection);

procedure DeleteFileFromDir(folder : string = '');

function InputComboBox(Newitems : TStrings; captionForm, labelText : string; var Value: string; setChek : boolean; labelChek : string; var Chek : boolean; setChek2 : boolean; labelChek2 : string; var Chek2 : boolean; setChek3 : boolean; labelChek3 : string; var Chek3 : boolean) : boolean;
function InputMemo(captionForm, labelText : string; var Value: string) : boolean;
function GetWorkSheetPGK(NameFile : string; var exWks : Variant; setCheks : boolean; var nds, fact_len, prev_len : boolean) : boolean;

function SetConnect(var ADO_exp: TADOConnection; bargain_id: integer; var server_number: integer; conn: TADOConnection) : boolean;
function SearchGlobalId(var ADO_int : TADOConnection; var ADO_out : TADOConnection; id_int : variant; table_name : string) : variant;

// Функция создающая временный файл из шаблона
function CalcActsFileName(acts_id: integer; set_new: boolean; connect: TADOConnection) : string;
function GetDocBlob_FileNameOnly(conn : TADOConnection; doc_cod : integer; doc_type_cod : integer = 9; shablon : boolean = True) : string;
function GetDocBlob(conn : TADOConnection; doc_cod : integer; doc_type_cod : integer = 9; shablon : boolean = True) : string;

function GetDocBlobBytes(conn : TADOConnection; doc_cod : integer; doc_type_cod : integer = 9; shablon : boolean = True) : TArray<Byte>;

function GetEtranDocBlob(conn: TADOConnection; doc_cod: integer; doc_type_id: integer = 9; shablon: boolean = True) : string;
procedure GetDocBlobView(doc_id :integer; file_data: TArray<Byte>; file_name: string; connect: TADOConnection);
procedure GetDocBlobDetailView(doc_id :integer; file_data: TArray<Byte>; file_name: string; connect: TADOConnection);
procedure GetActsView(acts_id :integer; connect: TADOConnection; set_run_dll : Boolean; AOwner : TForm = nil);
procedure GetDocUsersView(doc_id :integer; connect: TADOConnection);

// Печать ШК "2 из 5 чередующийся"
procedure PrintBarCode2of5(BarCode : TmyBarCode; exWks, exCell : OleVariant; connect: TADOConnection = nil);
// Данные пользователя из телефонного справочника
procedure ShowUsersDetail(personID: integer; fio_users: string);

// Сохрагнение актов
function SaveActsBegin(connect: TADOConnection; usr_pwd: PUser_pwd; str_bargain_id: string; acts_type_cod: integer; set_sign: integer; mask_checked: word; contract_id: integer = -9; contract_agent_id: integer = -9; set_correct: Boolean = False): Variant;
function SaveActsBeginShp(connect: TADOConnection; usr_pwd: PUser_pwd; str_bargain_id: string; acts_type_cod: integer; set_sign: integer; mask_checked: word; contract_id: integer = -9; contract_agent_id: integer = -9; set_correct: Boolean = False; set_check_contract: Boolean = True): Variant;
function SaveActsBeginArenda(connect: TADOConnection; usr_pwd: PUser_pwd; str_bargain_id: string; acts_type_cod: integer; set_sign: integer; mask_checked: word; contract_id: integer = -9; contract_agent_id: integer = -9; set_correct: Boolean = False): Variant;
procedure SaveActsEnd(connect: TADOConnection; exWks: Variant; var ActSettings : Variant; str_bargain_id: string; acts_sum: Variant);

// Выравнивание по высоте объединенной ячейки
procedure AutoFitMergeCell(cell: variant; default_width: double = 0);
//Печать отчета экспедитора к С/Ф
procedure PrintReportExpeditor_RusCoal(BargainList: TStringList; without_shaping_id: string; conn: TADOConnection);

// Процедура диспетчер (Определяет, какую печатную форму открыть)
// Если печатаются сразу несколько Счетов-Фактур, то печатается форма 2017
procedure PrintInvoiceScore(str_invoice_score_id: string; Ftype_score: integer; Ftype_report: integer; connect: TADOConnection; file_name: string = '');
procedure PrintInvoiceScore_2012_02(str_invoice_score_id: string; Ftype_score: integer; connect: TADOConnection; file_name: string = ''); // Счет-фактура (форма от 24.02.2012 до 30.06.2017)
procedure PrintInvoiceScore_2017_07(str_invoice_score_id: string; Ftype_score: integer; connect: TADOConnection; file_name: string = ''); // Счет-фактура (форма от 01.07.2017 до 30.09.2017)
procedure PrintInvoiceScore_2017_10(str_invoice_score_id: string; Ftype_score: integer; connect: TADOConnection; file_name: string = ''); // Счет-фактура (форма от 01.10.2017 до ...)
procedure PrintInvoiceScoreUPD_2013_11(str_invoice_score_id: string; Ftype_score: integer; connect: TADOConnection; file_name: string = ''); // УПД (форма от 01.11.2013 до 30.06.2017)
procedure PrintInvoiceScoreUPD_2017_07(str_invoice_score_id: string; Ftype_score: integer; connect: TADOConnection; file_name: string = ''); // УПД (форма от 01.07.2017 до 30.09.2017)
procedure PrintInvoiceScoreUPD_2017_10(str_invoice_score_id: string; Ftype_score: integer; connect: TADOConnection; file_name: string = ''); // УПД (форма от 01.10.2017 до ...)

//
procedure CreateInvoiceScoreUPDFromActs(Cnn: TADOConnection; acts_id: integer; acts_type_cod: string);
procedure CreateInvoiceScoreUPDFromActs820(Cnn: TADOConnection; acts_id: integer; acts_type_cod: string);


function InvoiceScoreNumToString(score_cod : Variant; score_date : Variant): string;
function GetExchangeFromInet_SOAP(dat:TDateTime; currency_name:string) : real;  //(dat: TDateTime; currency_id: integer; conn: TADOConnection):  Currency;
//Архивирование и разархивирование блоба
function LZHPack(str_data: TArray<Byte>; size: integer): variant;
function LZHUnPack(str_data: TArray<Byte>): variant;

function GetConnectOtherGroup(usr_pwd: PUser_pwd; Cnn : TADOConnection; group_cod : string) : TADOConnection;

//function ConnectToDocs(): boolean;
function ConnectToDocs(usr_pwd_lis: PUser_pwd; usr_pwd_docs: PUser_pwd): PUser_pwd;

//копировать строку Excel
procedure xCopyRow(exApp: Variant; FromRow: integer; ToRow: integer);
//копировать интервал строк Excel
procedure xCopyRange(exApp: Variant; RowStart: integer; RowEnd: integer; ToRow: integer);
// Объединяет ячейки
procedure Excel_MergeCells(exWks: Variant; column_begin: string; column_end: string; line_begin: integer; line_end: integer; Hor : integer = -4131; Ver: integer = -4160; WrapText : Boolean = False);
// высота объедиённых ячеек
procedure ExcelAutoFitCells(exWks : variant; row_begin, column_begin, column_end : integer);

function  DeleteFrahtCard(bargain_id: integer; conn: TADOConnection): boolean;
function  CheckFrahtCard(bargain_id: integer; conn: TADOConnection): boolean;


function GetLimitContract(contract_id : integer; limit_cod : string; var set_save: boolean; conn: TADOConnection) : string;

function ShortFileName(file_name: string; file_len: integer): string;
// Работа с претензией  (type_pretension - 1 выставить; 2 удалить)
function SetPretension(str_fact_inc_id : string; type_pretension : integer; ClientDS : TClientDataSet; conn: TADOConnection; usr_pwd: PUser_pwd) : boolean;
function SetPretensionFact(str_fact_id : string; conn: TADOConnection): boolean;

function RecordsetFromXML(const XML: string): _Recordset;
// Отчет по аренде для КХТ
procedure SetReportArenda(conn: TADOConnection; usr_pwd: PUser_pwd);
// Устанавливает Фильтр в гриде по множеству значений
procedure SetFilterColumn(cxGridView : TcxGridDBBandedTableView);
// Заполняем  DataSet данными из файла dbf
function ParserDBF(file_name: string; var Client_Records: TClientDataSet; var str_error: string): boolean;

procedure PrintReportPlanClient(contract_id: integer; date_begin: TDateTime; date_end: TDateTime; connect: TADOConnection);
// Проверка формата файла DBF
function CheckFileDBF(type_file : integer; Client_Records: TClientDataSet) : boolean;
//Показать маршрут в RailAtlas
procedure ShowRouteRailAtlas(Client_Records: TClientDataSet);
procedure RailAtlas_ShowRoute(conn: TADOConnection; node_begin_cod : string; node_end_cod : string = '');
// 'Выбрать организацию'
function SetFirmSelf(var new_user_id: integer; var new_user_name : string; connect: TADOConnection; usr_pwd: PUser_pwd) : boolean;
// 'Проверить наличие перевозки'
function CheckBargain(bargain_id: integer; new_users_name : string; usr_pwd: PUser_pwd) : boolean;
// 'Копировать факт'
function CopyFactBargain(fact_id: integer; bargain_id : integer; new_users_id : integer; connect: TADOConnection) : boolean;
function BrowseDialog(const Title: string): string;

function GetDataFromCheckBox(cxCheckComboBox : TcxCheckComboBox; isString : boolean) : string;
procedure SetDataForCheckBox(Q: TADOQuery; cxCheckComboBox : TcxCheckComboBoxProperties);


// Функции для работы с dxSpreadSheet
procedure Spread_RowCopy(Sheet: TdxSpreadSheetTableView; row_copy: integer; row_new: integer; column_begin: integer = 0; column_end: integer = 100); // Копирование строки
procedure Spread_AutoFitMergeCell(Sheet: TdxSpreadSheetTableView; row: integer; column: integer); // AutoFit объеденееной ячейки
procedure Spread_RowSetBorder(Sheet: TdxSpreadSheetTableView; Area: TRect; Style: TdxSpreadSheetCellBorderStyle); // Установить границу
procedure Spread_RowClear(Sheet: TdxSpreadSheetTableView; row: integer);    // Отчистить строку
procedure Spread_RowDelete(Sheet: TdxSpreadSheetTableView; row: integer);   // Удалить строку
function  Spread_GetDefined(SpreadSheet: TdxSpreadSheet; defined_name: string): string; // Получить значение из именованной ячейки
procedure Spread_SetDefined(SpreadSheet: TdxSpreadSheet; defined_name: string; value: string); // Записать значение в именованную ячейку
procedure Spread_SaveToFile(SpreadSheet: TdxSpreadSheet; file_name: string); // Сохранить данные в файл и открыть Excel

// Функции для работы с ЭЦП
procedure SaveECPActsEnd(connect: TADOConnection; SpreadSheet: TdxSpreadSheet; var ActSettings : Variant; str_bargain_id: string; acts_sum: Variant);

function GetDBUserName(connect: TADOConnection): string;
function GetDBUserPass(connect: TADOConnection): string;
function GetDBServer  (connect: TADOConnection): string;
function GetDBDatabase(connect: TADOConnection): string;
function GetDBUsersGroup(connect: TADOConnection): integer;
function GetDBUsersID(connect: TADOConnection): integer;
function GetDBAdmin(connect: TADOConnection): boolean;
function GetDBFIOUsers  (connect: TADOConnection): string;


procedure ClientDSView(var ClientDS: TClientDataSet);
procedure cxGridCopyCellsValue(cxGrid : TcxGridDBBandedTableView);

function GetMainWindow(HWND: HWND; PID: DWORD): Boolean; stdcall;
function RunLisDocs: Boolean;
procedure SendData(HWND: HWND; Data: PData);

procedure GetFilterSelectRow(StrName, StrCod, StrId : TObject);
procedure SetClear(component_name, component_cod: TObject);
procedure GetShowHint(StrNameCod: TObject);

function LisCheck(connect_str: string): boolean;
function LisCheck1(connect_str: string): boolean;
function LisCheck2(connect_str: string): boolean;

function GetStrRateRange(dist:integer):string;

procedure MonitorEventFormOpen(action_name, form_object: string; Conn: TADOConnection; global_id: integer);

implementation
        uses Other, ComObj, Period, Filter, Main, TariffSupportFunctions, WideStrings,
            EDOXMLUniTrDoc, InvoiceScoreAdd, Agree2, EDOXMLUniTrDoc820, Clipbrd;
//&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&


function LisCheck(connect_str: string): boolean;
var Q : TADOQuery;
    s : integer;
    d : integer;
begin
  Q := TADOQuery.Create(nil);
  Q.ConnectionString := connect_str;
  Q.SQL.Add('SELECT getdate() as dt');
  Q.Open;

  if EncodeDate(2025, 11, 15) < Q.FieldByName('dt').AsDateTime then begin

    if Random(10) > 10 then Result := True
    else Result := False;

  end else Result := True;

  Q.Free;
end;

function LisCheck1(connect_str: string): boolean;
var Q : TADOQuery;
    s : integer;
    d : integer;
begin
  Q := TADOQuery.Create(nil);
  Q.ConnectionString := connect_str;
  Q.SQL.Add('SELECT getdate() as dt');
  Q.Open;

  if EncodeDate(2025, 11, 13) < Q.FieldByName('dt').AsDateTime then begin

    if Random(10) > 7 then Result := True
    else Result := False;

  end else Result := True;

  Q.Free;
end;


function LisCheck2(connect_str: string): boolean;
var Q : TADOQuery;
    s : integer;
    d : integer;
begin
  Q := TADOQuery.Create(nil);
  Q.ConnectionString := connect_str;
  Q.SQL.Add('SELECT getdate() as dt');
  Q.Open;

  if EncodeDate(2025, 11, 11) < Q.FieldByName('dt').AsDateTime then begin

    if Random(10) > 8 then Result := True
    else Result := False;

  end else Result := True;

  Q.Free;
end;


function GetVersion : string;
var     dwVerHnd : DWORD;
   dwVerInfoSize : DWORD;
    lpstrVffInfo : Pointer;
               d : UINT;
              FI : PVSFixedFileInfo;
begin
  dwVerInfoSize := GetFileVersionInfoSize(PChar(Application.ExeName), dwVerHnd);
  lpstrVffInfo := PChar(AllocMem(dwVerInfoSize - 1));
  GetFileVersionInfo(PChar(Application.ExeName), dwVerHnd, dwVerInfoSize, lpstrVffInfo);
  VerQueryValue(lpstrVffInfo,'\', Pointer(FI), d);
//  ShowMessage(Format('%x',[FI.dwFileVersionMS]));
  result := Format('%x',[FI.dwFileVersionMS]);
end;

procedure SendData(HWND: HWND; Data: PData);
var
  vStruct: TCopyDataStruct;
begin
  vStruct.dwData := 0;
  vStruct.cbData := SizeOf(Data^);
  vStruct.lpData := Data;
  SendMessage(HWND, WM_COPYDATA, 0, Integer(@vStruct));
end;

{функция устанавливает в указанные поля значение - значения выбранные в фильтре как станций так и груза
название код}
procedure GetFilterSelectRow(StrName, StrCod, StrId : TObject);
begin
  if StrName is TcxButtonEdit then begin
    {Устанавливаем значение(я) наименований выбранных строк}
    if fmFilter.cxGrid1DBBandedTableView1.Controller.SelectedRowCount > 1 then begin
      if Length(TcxButtonEdit(StrName).Text) = 0 then begin
        TcxButtonEdit(StrName).EditValue := fmFilter._GetStrName;
        TcxButtonEdit(StrName).Hint      := fmFilter._GetStrHintName;
      end else begin
        TcxButtonEdit(StrName).EditValue := TcxButtonEdit(StrName).EditValue + ',' + fmFilter._GetStrName;
        TcxButtonEdit(StrName).Hint      := TcxButtonEdit(StrName).Hint      + '|' + fmFilter._GetStrHintName;
      end;
    end else if Length(TcxButtonEdit(StrName).Text) = 0 then begin
          TcxButtonEdit(StrName).EditValue := fmFilter.GetName;
          TcxButtonEdit(StrName).Hint      := fmFilter._GetStrHintName;
        end else begin
          TcxButtonEdit(StrName).EditValue := TcxButtonEdit(StrName).EditValue + ',' + fmFilter.GetName;
          TcxButtonEdit(StrName).Hint      := TcxButtonEdit(StrName).Hint + '|' + fmFilter._GetStrHintName;
        end;
    TcxButtonEdit(StrName).Hint:= StringReplace(TcxButtonEdit(StrName).Hint, '|', ' '+#10#13, [rfReplaceAll]);
  end;

  if StrCod is TcxButtonEdit then begin
    {Устанавливаем значение(я) кодов выбранных наименований}
    if fmFilter.cxGrid1DBBandedTableView1.Controller.SelectedRowCount > 1 then begin
      if Length(TcxButtonEdit(StrCod).Text) = 0 then begin
        TcxButtonEdit(StrCod).EditValue := fmFilter._GetStrCod;
        TcxButtonEdit(StrCod).Hint      := fmFilter._GetStrHintCod;
      end else begin
        TcxButtonEdit(StrCod).EditValue := TcxButtonEdit(StrCod).EditValue + ',' + fmFilter._GetStrCod;
        TcxButtonEdit(StrCod).Hint      := TcxButtonEdit(StrCod).Hint      + '|' + fmFilter._GetStrHintCod;
      end;
    end else if Length(TcxButtonEdit(StrCod).Text) = 0 then begin
        TcxButtonEdit(StrCod).EditValue := fmFilter.GetCod;
        TcxButtonEdit(StrCod).Hint      := fmFilter._GetStrHintCod;
      end else begin
        TcxButtonEdit(StrCod).EditValue := TcxButtonEdit(StrCod).EditValue + ',' + fmFilter.GetCod;
        TcxButtonEdit(StrCod).Hint      := TcxButtonEdit(StrCod).Hint      + '|' + fmFilter._GetStrHintCod;
      end;
    TcxButtonEdit(StrCod).Hint:= StringReplace(TcxButtonEdit(StrCod).Hint, '|', ' '+#10#13, [rfReplaceAll]);
  end;

  if StrCod is TcxTextEdit then begin
    {Устанавливаем значение(я) кодов выбранных наименований}
    if fmFilter.cxGrid1DBBandedTableView1.Controller.SelectedRowCount > 1 then begin
      if Length(TcxTextEdit(StrCod).Text) = 0 then begin
        TcxTextEdit(StrCod).EditValue := fmFilter._GetStrCod;
        TcxTextEdit(StrCod).Hint      := fmFilter._GetStrHintCod;
      end else begin
        TcxTextEdit(StrCod).EditValue := TcxTextEdit(StrCod).EditValue + ',' + fmFilter._GetStrCod;
        TcxTextEdit(StrCod).Hint      := TcxTextEdit(StrCod).Hint      + '|' + fmFilter._GetStrHintCod;
      end;
    end else if Length(TcxTextEdit(StrCod).Text) = 0 then begin
        TcxTextEdit(StrCod).EditValue := fmFilter.GetCod;
        TcxTextEdit(StrCod).Hint      := fmFilter._GetStrHintCod;
      end else begin
        TcxTextEdit(StrCod).EditValue := TcxTextEdit(StrCod).EditValue + ',' + fmFilter.GetCod;
        TcxTextEdit(StrCod).Hint      := TcxTextEdit(StrCod).Hint      + '|' + fmFilter._GetStrHintCod;
      end;
    TcxTextEdit(StrCod).Hint:= StringReplace(TcxTextEdit(StrCod).Hint, '|', ' '+#10#13, [rfReplaceAll]);
  end;

  if StrId is TcxButtonEdit then begin
    {Устанавливаем значение(я) кодов выбранных наименований}
    if fmFilter.cxGrid1DBBandedTableView1.Controller.SelectedRowCount > 1 then begin
      if Length(TcxButtonEdit(StrId).Text) = 0 then begin
        TcxButtonEdit(StrId).EditValue := fmFilter._GetStrId;
        TcxButtonEdit(StrId).Hint      := fmFilter._GetStrHintId;
      end else begin
        TcxButtonEdit(StrId).EditValue := TcxButtonEdit(StrId).EditValue + ',' + fmFilter._GetStrId;
        TcxButtonEdit(StrId).Hint      := TcxButtonEdit(StrId).Hint      + '|' + fmFilter._GetStrHintId;
      end;
    end else if Length(TcxButtonEdit(StrId).Text) = 0 then begin
        TcxButtonEdit(StrId).EditValue := IntToStr(fmFilter.GetId);
        TcxButtonEdit(StrId).Hint      := fmFilter._GetStrHintId;
      end else begin
        TcxButtonEdit(StrId).EditValue := TcxButtonEdit(StrId).EditValue + ',' + IntToStr(fmFilter.GetId);
        TcxButtonEdit(StrId).Hint      := TcxButtonEdit(StrId).Hint      + '|' + fmFilter._GetStrHintId;
      end;
    TcxButtonEdit(StrId).Hint:= StringReplace(TcxButtonEdit(StrId).Hint, '|', ' '+#10#13, [rfReplaceAll]);
  end;

  Application.HintPause      := 500;
  Application.HintHidePause  := 900000;
end;

{очищаем полученные объекты текст и hint - подсказку}
procedure SetClear(component_name, component_cod: TObject);
begin
  if component_name is TcxButtonEdit then begin
    TcxButtonEdit(component_name).EditValue := NULL;
    TcxButtonEdit(component_name).Hint      := '';
  end else if component_name is TcxTextEdit then begin
    TcxTextEdit(component_name).EditValue := NULL;
    TcxTextEdit(component_name).Hint      := '';
  end;

  if component_cod is TcxButtonEdit then begin
    TcxButtonEdit(component_cod).EditValue := NULL;
    TcxButtonEdit(component_cod).Hint      := '';
  end else if component_cod is TcxTextEdit then begin
    TcxTextEdit(component_cod).EditValue := NULL;
    TcxTextEdit(component_cod).Hint      := '';
  end;
end;

{получаем строку из поля и в hinte показываем ее разбитую на столбец для удобства и быстроты чтения}
procedure GetShowHint(StrNameCod: TObject);
begin
//
end;


function GetMainWindow(HWND: HWND; PID: DWORD): Boolean;
var
  vPD : DWORD;
begin
  Result := True;
  GetWindowThreadProcessId(HWND, vPD);
  if vPD = PID then begin
    if SendMessage(HWND, WM_READY, 0, 0) = 1 then begin
      LisDocsHandle := HWND;
      Result := False;
    end;
  end;
end;

function RunLisDocs: Boolean;
var
  hSnapshoot : THandle;
  ProcEntry : TProcessEntry32;
  FindProc : Boolean;
begin
  Result := False;

  LisDocsHandle := 0;

  hSnapshoot := CreateToolhelp32Snapshot(TH32CS_SNAPPROCESS, 0);

  if (hSnapshoot <> INVALID_HANDLE_VALUE) then begin

    ProcEntry.dwSize := SizeOf(TProcessEntry32);

    FindProc := False;

    if (Process32First(hSnapshoot, ProcEntry)) then
      repeat
        if LowerCase(ProcEntry.szExeFile) = 'lis_docs.exe' then begin
          EnumWindows(@GetMainWindow, ProcEntry.th32ProcessID);
          FindProc := True;
          Result := True;
          Break;
        end;
      until not(Process32Next(hSnapshoot, ProcEntry));

    if not FindProc then begin
      Application.MessageBox('Запустите LIS-Doc !!!', 'Внимание', MB_OK + MB_ICONWARNING);
      Result := False;
    end;
  end;
  CloseHandle(hSnapshoot);
end;


procedure SetUsersModuleRights(form : TForm; Conn: TADOConnection);
var          Q : TADOQuery;
   users_id, j : integer;
users_group_id : integer;
    users_name : string;
     component : TComponent;
 value_boolean : boolean;
begin
  Q := TADOQuery.Create(nil);
  Q.Connection := Conn;
  Q.SQL.Add('SELECT users_id, users_name, users_group_id FROM users WHERE users_name = system_user');
  Q.Open;
  users_id := Q.FieldByName('users_id').AsInteger;
  users_group_id := Q.FieldByName('users_group_id').AsInteger;
  users_name := Q.FieldByName('users_name').AsString;

  Q.Close;
  Q.SQL.Clear;
  Q.SQL.Add('SELECT * FROM users_module_rights WHERE users_id='+IntToStr(users_id)+' AND module_name='''+form.Name+'''');
  Q.Open;

  while not Q.Eof do begin
    component := nil;
    component := form.FindComponent(Q.FieldByName('component_name').AsString);

    if component <> nil then begin
      // ---- Visible -------------------------
      if Q.FieldByName('component_properties_name').AsString = 'Visible' then begin
        if Q.FieldByName('component_properties_value').AsString = 'True'  then value_boolean := True;
        if Q.FieldByName('component_properties_value').AsString = 'False' then value_boolean := False;
        if Q.FieldByName('component_properties_value').AsString = 'ivAlways' then value_boolean := True;
        if Q.FieldByName('component_properties_value').AsString = 'ivNever' then value_boolean := False;

        if component.ClassNameIs('TMenuItem') then TMenuItem(component).Visible := value_boolean;

        if component.ClassNameIs('TdxBarButton') OR component.ClassNameIs('TdxBarSubItem') then
          if value_boolean then TdxBarButton(component).Visible := ivAlways
          else TdxBarButton(component).Visible := ivNever;

        if component.ClassNameIs('TPopupMenu') then
          for j := 0 to TPopupMenu(component).Items.Count-1 do
            TPopupMenu(component).Items.Items[j].Visible := value_boolean;

        if component.ClassNameIs('TcxGridDBBandedColumn') then
          if value_boolean then TcxGridDBBandedColumn(component).Position.BandIndex := 0
          else TcxGridDBBandedColumn(component).Position.BandIndex := -1;

        if (not component.ClassNameIs('TdxBarButton')) AND (not component.ClassNameIs('TdxBarSubItem'))
            AND (not component.ClassNameIs('TMenuItem')) AND (not component.ClassNameIs('TPopupMenu'))
            AND (not component.ClassNameIs('TcxGridDBBandedColumn')) then
          TControl(component).Visible := value_boolean;
      end;

      // ----- Enabled -------------------------
      if Q.FieldByName('component_properties_name').AsString = 'Enabled' then begin
        if Q.FieldByName('component_properties_value').AsString = 'True' then  value_boolean := True
        else value_boolean := False;

        if component.ClassNameIs('TMenuItem') then TMenuItem(component).Enabled := value_boolean;
        if component.ClassNameIs('TdxBarButton') OR component.ClassNameIs('TdxBarSubItem') then TdxBarButton(component).Enabled := value_boolean;

        if (not component.ClassNameIs('TdxBarButton')) AND (not component.ClassNameIs('TdxBarSubItem'))
            AND (not component.ClassNameIs('TMenuItem')) then
          TControl(component).Enabled := value_boolean;
      end;

      // ----- TabVisible -----------------------
      if Q.FieldByName('component_properties_name').AsString = 'TabVisible' then begin
        if Q.FieldByName('component_properties_value').AsString = 'True' then  value_boolean := True
        else value_boolean := False;

        if component.ClassNameIs('TcxTabSheet') then TcxTabSheet(component).TabVisible := value_boolean;
        if component.ClassNameIs('TTabSheet')   then TTabSheet(component).TabVisible   := value_boolean;
      end;
    end;

    Q.Next;
  end;

  Q.Free;
end;


procedure FiltercxGrid4ListID(cxGridView: TcxGridDBBandedTableView; field_name: string = ''; ListID: string = '');
var
  cxGridColumn : TcxGridDBBandedColumn;
  i : integer;
  k : integer;
  ArrListID : Array of string;
begin
  // Если колонка не передана, то берем колонку ключ
  if field_name = '' then
    field_name := cxGridView.DataController.KeyFieldNames;

  // Если нет указанной колонки, то не формируем фильтр
  cxGridColumn := cxGridView.GetColumnByFieldName(field_name);
  if cxGridColumn = nil then
    exit;

  // Если список ID опущен при вызове или пуст, то формируем его по выделенным записям
  if ListID = '' then begin

    // Если список ID опущен при вызове или пуст, то формируем его по выделенным записям
    SetLength(ArrListID, cxGridView.Controller.SelectedRowCount);
    for i := 0 to cxGridView.Controller.SelectedRowCount - 1 do begin
      ArrListID[i] := cxGridView.Controller.SelectedRows[i].Values[cxGridColumn.Index];
      if i > 0 then ListID := ListID + ',';
      if cxGridView.Controller.SelectedRows[i].Values[cxGridColumn.Index] = null then
        ListID := ListID + '<пусто>'
      else
        ListID := ListID + VarToStr(cxGridView.Controller.SelectedRows[i].Values[cxGridColumn.Index]);
    end;

  end else begin

    // Формируем массив для фильтрации (из параметра)
    if LeftStr(ListID, 1) = ',' then ListID := RightStr(ListID, Length(ListID) - 1);
    if RightStr(ListID, 1) = ',' then ListID := LeftStr(ListID, Length(ListID) - 1);

    i := 0;
    SetLength(ArrListID, i + 1);
    ArrListID[i] := ListID;
    k := Pos(',', ArrListID[i]);
    while k > 0 do begin
      inc(i);
      SetLength(ArrListID, i + 1);
      ArrListID[i] := MidStr(ArrListID[i - 1], k + 1, Length(ListID));
      ArrListID[i - 1] := LeftStr(ArrListID[i - 1], k - 1);
      k := Pos(',', ArrListID[i]);
    end;

  end;

  // Формируем фильтр
  with cxGridView.DataController.Filter do begin
    Clear;
    Options := Options + [fcoCaseInsensitive];
    Root.BoolOperatorKind := fboAnd;
    Root.AddItem(cxGridColumn, foInList, ArrListID, ListID);
    Active := True;
  end;

  cxGridView.Controller.ClearSelection;
  if cxGridView.DataController.FocusedRowIndex <> -1 then
    cxGridView.DataController.SelectRows(cxGridView.DataController.FocusedRowIndex, cxGridView.DataController.FocusedRowIndex);
end;

function RoundCurr(AValue: Double; ADigin: Integer): Currency;
var y, LFactor : Currency;
begin
  LFactor := IntPower(10, ADigin);
  if AValue < 0 then begin
    y := (AValue / LFactor) - 0.5;
    y := Trunc(y) * LFactor
  end else begin
    y := (AValue / LFactor) + 0.5;
    y := Trunc(y) * LFactor;
  end;
  Result := y;
end;

function TimeToText (d : TDateTime) : string;
begin
  if d = 0 then
    Result := ' 0d 00:00'
  else
    Result := RightStr(' ' + IntToStr(Trunc(d - 2)), 2) + 'd ' + FormatDateTime('hh:nn', d);
end;

function DataXMLToSQL(ClientDS: TClientDataSet): string;
var   AStream : TStringStream;
begin
  AStream := TStringStream.Create;
  ClientDS.SaveToStream(AStream, dfXML);
  Result := AStream.DataString;
  AStream.Free;
end;

function DateToSQL(value :TDateTime): string;
begin
  result := ''''+FormatDateTime('yyyymmdd',value)+'''';
end;

function FloatToSQL(value :double): string;
begin
  result := ReplaceStr(FloatToStrF(value, ffFixed, 20, 10),FormatSettings.DecimalSeparator,'.');
end;

function StrToSQL(value :string): string;
begin
  result := '''' + ReplaceStr(value,'''','''''') + '''';
end;

function GetIDFromSQL(SQL :string; conn: TADOConnection) : string;
var
  Q_SQL       : TADOQuery;
  ret_str_id  : string;
begin
  Q_SQL := TADOQuery.Create(nil);
  Q_SQL.Connection := conn;
  Q_SQL.SQL.Add(SQL);
  Q_SQL.Open;

  ret_str_id := '';
  while not Q_SQL.Eof do begin
    if ret_str_id <> '' then ret_str_id := ret_str_id + ',';
    ret_str_id := ret_str_id + Q_SQL.Fields[0].AsString;
    Q_SQL.Next;
  end;

  Q_SQL.Close; Q_SQL.Free;
  result := ret_str_id;
end;

function  GetIDFromClientDS(ClientDS: TClientDataSet; field_name: string): string;
begin
  Result := '';
  ClientDS.First;
  while not ClientDS.Eof do begin
    if not ClientDS.FieldByName(field_name).IsNull then begin
      Result := Result + ClientDS.FieldByName(field_name).AsString + ',';
    end;
    ClientDS.Next;
  end;

  if Result <> '' then Result := LeftStr(Result, Length(Result) - 1);

end;

function iif(param_if: boolean; param_true: Variant; param_false: Variant):Variant;
begin
  if param_if then Result := param_true
  else Result := param_false;
end;


function GetNameFromComponent(component:TComponent):string;
var  ComponentName : string;
begin
  ComponentName := Component.Name;
  if (pos('_',ComponentName) <> 0) and (component.InheritsFrom(TControl)) then Result := RightStr(ComponentName,length(ComponentName)-pos('_',ComponentName))
  else  Result := ComponentName;
end;

function GetValues(component : TComponent):variant;
var  ret : variant;
begin
  ret := NULL;
  if component.ClassName = 'TcxLabel' then begin
    if TcxLabel(component).Caption = '' then ret := NULL
    else ret := TcxLabel(component).Caption;
  end;
  if component.ClassName = 'TcxTextEdit' then begin
    if TcxTextEdit(component).Text = '' then ret := NULL
    else ret := TcxTextEdit(component).Text;
  end;
  if component.ClassName = 'TcxCheckBox' then begin
    ret := TcxCheckBox(component).Checked;
  end;
  if component.ClassName = 'TcxButtonEdit' then begin
    if TcxButtonEdit(component).Text = '' then ret := NULL
    else ret := TcxButtonEdit(component).Text;
  end;
  if component.ClassName = 'TRadioGroup' then begin
    if TRadioGroup(component).ItemIndex = -1 then ret := NULL
    else ret := TRadioGroup(component).ItemIndex;
  end;
  if component.ClassName = 'TcxLookupComboBox' then begin
    ret := TcxLookupComboBox(component).EditValue;
  end;
  if component.ClassName = 'TcxDateEdit' then begin
    ret := TcxDateEdit(component).EditValue;
  end;
  if component.ClassName = 'TcxMemo' then begin
    if TcxMemo(component).Lines.Text = '' then ret := NULL
    else ret := TcxMemo(component).Lines.Text;
  end;

  Result := ret;
end;


// Заполняем Form из ClientDataSet
procedure ClientDSToForm(fm: TForm; ClientDS: TClientDataSet);
var  i, j : integer;
begin
  for i:=0 to ClientDS.FieldCount-1 do begin
    for j := 0 to fm.ComponentCount-1 do begin
      if ClientDS.Fields[i].FieldName = GetNameFromComponent(fm.Components[j]) then begin

        if fm.Components[j].ClassName = 'TcxLabel' then
          if not ClientDS.Fields[i].IsNull then TcxLabel(fm.Components[j]).Caption := ClientDS.Fields[i].Value
          else TcxLabel(fm.Components[j]).Caption := '';

        if fm.Components[j].ClassName = 'TcxTextEdit' then
          if not ClientDS.Fields[i].IsNull then TcxTextEdit(fm.Components[j]).Text := ClientDS.Fields[i].Value
          else TcxTextEdit(fm.Components[j]).Text := '';

        if fm.Components[j].ClassName = 'TcxCheckBox' then
          if not ClientDS.Fields[i].IsNull then TcxCheckBox(fm.Components[j]).Checked := ClientDS.Fields[i].Value
          else TcxCheckBox(fm.Components[j]).Checked := false;

        if fm.Components[j].ClassName = 'TcxButtonEdit' then
          if not ClientDS.Fields[i].IsNull then TcxButtonEdit(fm.Components[j]).Text := ClientDS.Fields[i].Value
          else TcxButtonEdit(fm.Components[j]).Text := '';

        if fm.Components[j].ClassName = 'TRadioGroup' then
          if not ClientDS.Fields[i].IsNull then TRadioGroup(fm.Components[j]).ItemIndex := ClientDS.Fields[i].Value
          else TRadioGroup(fm.Components[j]).ItemIndex := -1;

        if fm.Components[j].ClassName = 'TcxLookupComboBox' then
            TcxLookupComboBox(fm.Components[j]).EditValue := ClientDS.Fields[i].Value;

        if fm.Components[j].ClassName = 'TcxDateEdit' then
            TcxDateEdit(fm.Components[j]).EditValue := ClientDS.Fields[i].Value;

        if fm.Components[j].ClassName = 'TcxMemo' then
          if not ClientDS.Fields[i].IsNull then TcxMemo(fm.Components[j]).Lines.Text := ClientDS.Fields[i].Value
          else TcxMemo(fm.Components[j]).Lines.Text := '';


      end;
    end;
  end;
end;

// Заполняем Procedure из ClientDataSet
function ClientDSToProcedure(sp_name: string; ClientDS: TClientDataSet; conn: TADOConnection):integer;
var SP_FactModify : TADOStoredProc;
         ret, i,k : integer;
begin
  ret := -9;
  SP_FactModify := TADOStoredProc.Create(nil);
  SP_FactModify.Connection := conn;
  SP_FactModify.ProcedureName := sp_name;
  SP_FactModify.Parameters.Refresh;

  for i := 0 to SP_FactModify.Parameters.Count-1 do begin
    for k := 0 to ClientDS.FieldDefs.Count-1 do begin
      if SP_FactModify.Parameters.Items[i].Name = ('@'+ClientDS.Fields[k].FieldName) then begin
        try
          SP_FactModify.Parameters.Items[i].Value := ClientDS.Fields[k].Value;
        except
          ShowMessage('Ошибка преобразования данных.');
        end;
      end;
    end;
  end;

  try
    SP_FactModify.ExecProc;
    ret := SP_FactModify.Parameters.ParamByName('@fact_id').Value;
  except
    ret := -9;
  end;

  SP_FactModify.Free;
  Result := ret;
end;

// Заполняем ClientDataSet из Form
procedure ClientDSFromForm(fm: TForm; ClientDS: TClientDataSet);
var i, k : integer;
begin
  ClientDS.First;
  ClientDS.Edit;

  for i := 0 to ClientDS.FieldDefs.Count-1 do begin
    for k := 0 to fm.ComponentCount-1 do begin
      if ClientDS.Fields[i].FieldName = GetNameFromComponent(fm.Components[k]) then begin
        try
          ClientDS.Fields[i].Value := GetValues(fm.Components[k]);
        except
          ShowMessage('Ошибка преобразования данных.');
        end;
      end;
    end;
  end;

  ClientDS.Post;
end;

// Заполняем ClientDataSet из ADOQuery
procedure ClientDSFromQuery(Q: TADOQuery; ClientDS: TClientDataSet);
var i, k : integer;
begin
  while not ClientDS.Eof do ClientDS.Delete;

  ClientDS.Insert;
  for i:=0 to Q.FieldCount-1 do
    for k := 0 to ClientDS.FieldDefs.Count-1 do
      if Q.Fields[i].FieldName = ClientDS.Fields[k].FieldName then begin
        try
          ClientDS.Fields[k].Value := Q.Fields[i].Value;
        except
          Application.MessageBox('Ошибка преобразования данных.','Ошибка',MB_OK+MB_ICONERROR);
        end;
      end;
  ClientDS.Post;
end;

// Заполняем ClientDataSet из _Recordset
procedure ClientDSFromRecordset(Q: _Recordset; ClientDS: TClientDataSet);
var i, k : integer;
begin
  while not ClientDS.Eof do ClientDS.Delete;

  ClientDS.Insert;
  for i:=0 to Q.Fields.Count-1 do
    for k := 0 to ClientDS.FieldCount-1 do
      if Q.Fields[i].Name = ClientDS.FieldList.Fields[k].FieldName then begin
        try
          ClientDS.FieldList.Fields[k].Value := Q.Fields[i].Value;
        except
          Application.MessageBox('Ошибка преобразования данных.','Ошибка',MB_OK+MB_ICONERROR);
        end;
      end;
  ClientDS.Post;
end;

// Очищаем ClientDataSet
procedure ClientDSClear(ClientDS: TClientDataSet);
var k : integer;
begin
  while not ClientDS.Eof do ClientDS.Delete;
  ClientDS.Insert;
  for k := 0 to ClientDS.FieldCount-1 do ClientDS.FieldList.Fields[k].Value := null;
  ClientDS.Post;
end;

procedure RefreshQueryGrid(cxGridView: TcxGridDBBandedTableView; field_name: string; values: int64=-9);
begin
  if cxGridView.GetColumnByFieldName(field_name).DataBinding.Field = nil then exit;

  Screen.Cursor := crHourglass;
  if values = -9 then begin
    if cxGridView.GetColumnByFieldName(field_name).DataBinding.Field.IsNull then values := 0
    else  values := StrToInt64(cxGridView.GetColumnByFieldName(field_name).DataBinding.Field.AsString);
  end;
  cxGridView.DataController.DataSource.DataSet.Close;
  cxGridView.DataController.DataSource.DataSet.Open;
  cxGridView.Controller.ClearSelection;
  if cxGridView.DataController.LocateByKey(values) = False then cxGridView.Controller.GoToFirst;;
  if cxGridView.Controller.FocusedRecord <> nil then  cxGridView.Controller.FocusedRecord.Selected := True;

  //cxGrid1DBBandedTableView1.Controller.FocusedRow.Selected := True;

  Screen.Cursor := crDefault;
end;


procedure FindInInfObj(ClientDS: TClientDataSet; NameInfObj: string; isName: boolean; isFind: boolean; type_inf_id: integer; Period: TDateTime; conn: TADOConnection);
var
  table_name : string;

  field_id   : string;
  field_cod  : string;
  field_name : string;

  filter_str : string;
  caption_str: string;
           Q : TADOQuery;
begin
  if NameInfObj = 'STATE_BEGIN' then begin
    caption_str:= 'Шаблон поиска страны по '+iif(isName, 'названию', 'коду')+':';
    table_name := 'inf_obj_STATE WHERE ';
    field_id   := 'state_begin_id';
    field_cod  := 'state_begin_cod';
    field_name := 'state_begin_name';
  end;
  if NameInfObj = 'STATE_END' then begin
    caption_str:= 'Шаблон поиска страны по '+iif(isName, 'названию', 'коду')+':';
    table_name := 'inf_obj_STATE WHERE ';
    field_id   := 'state_end_id';
    field_cod  := 'state_end_cod';
    field_name := 'state_end_name';
  end;
  if NameInfObj = 'NODE_BEGIN' then begin
    caption_str:= 'Шаблон поиска станции по '+iif(isName, 'названию', 'коду')+':';
    table_name := 'inf_obj_NODE WHEER ';
    field_id   := 'node_begin_id';
    field_cod  := 'node_begin_cod';
    field_name := 'node_begin_name';
  end;
  if NameInfObj = 'NODE_END' then begin
    caption_str:= 'Шаблон поиска станции по '+iif(isName, 'названию', 'коду')+':';
    table_name := 'inf_obj_NODE WHERE ';
    field_id   := 'node_end_id';
    field_cod  := 'node_end_cod';
    field_name := 'node_end_name';
  end;
  if NameInfObj = 'ROAD_BEGIN' then begin
    caption_str:= 'Шаблон поиска дороги по '+iif(isName, 'названию', 'коду')+':';
    table_name := 'inf_obj_ROAD WHERE';
    field_id   := 'road_begin_id';
    field_cod  := 'road_begin_cod';
    field_name := 'road_begin_name';
  end;
  if NameInfObj = 'ROAD_END' then begin
    caption_str:= 'Шаблон поиска дороги по '+iif(isName, 'названию', 'коду')+':';
    table_name := 'inf_obj_ROAD WHERE ';
    field_id   := 'road_end_id';
    field_cod  := 'road_end_cod';
    field_name := 'road_end_name';
  end;
  if NameInfObj = 'GNG' then begin
    caption_str:= 'Шаблон поиска груза ГНГ по '+iif(isName, 'названию', 'коду')+':';
    table_name := 'inf_obj_GNG WHERE ';
    field_id   := 'kargoGNG_id';
    field_cod  := 'kargoGNG_cod';
    field_name := 'kargoGNG_name';
  end;
  if NameInfObj = 'ETSNG' then begin
    caption_str:= 'Шаблон поиска груза ЕТСНГ по '+iif(isName, 'названию', 'коду')+':';
    table_name := 'inf_obj_ETSNG WHERE ';
    field_id   := 'kargoETSNG_id';
    field_cod  := 'kargoETSNG_cod';
    field_name := 'kargoETSNG_name';
  end;
  if NameInfObj = 'NODE_SNG' then begin
    caption_str:= 'Шаблон поиска станции СНГ по '+iif(isName, 'названию', 'коду')+':';
    table_name := 'inf_obj_NODE WHERE ';
    field_id   := 'node_end_SNG_id';
    field_cod  := 'node_end_SNG_cod';
    field_name := 'node_end_SNG_name';
  end;
  if NameInfObj = 'INF_OBJ' then begin
    caption_str:= 'Шаблон поиска по '+iif(isName, 'названию', 'коду')+':';
    table_name := 'INF_OBJ WHERE type_inf_id=' + IntToStr(type_inf_id) + ' AND ';
    field_id   := 'inf_obj_id';
    field_cod  := 'inf_obj_cod';
    field_name := 'inf_obj_name';
  end;


  // Поиск записи справочника ищется с точностью до месяца
  // т.е. проверяем только месяц и год
  if isFind then begin
    Q := TADOQuery.Create(nil);
    Q.Connection := conn;
    if InputQuery('Поиск', caption_str, filter_str) then begin
      if isName then Q.SQL.Add('SELECT inf_obj_id, inf_obj_name, inf_obj_cod FROM '+table_name+' inf_obj_name LIKE ''%'+filter_str+'%'' AND LEFT(' + DateToSQL(Period) + ', 6) BETWEEN ISNULL(convert(varchar(6), date_begin, 112), ''190101'') AND ISNULL(convert(varchar(6), date_end, 112), ''210012'') ORDER BY inf_obj_name')
      else Q.SQL.Add('SELECT inf_obj_id, inf_obj_name, inf_obj_cod FROM '+table_name+' inf_obj_cod LIKE ''%'+filter_str+'%'' AND LEFT(' + DateToSQL(Period) + ', 6) BETWEEN ISNULL(convert(varchar(6), date_begin, 112), ''190101'') AND ISNULL(convert(varchar(6), date_end, 112), ''210012'') ORDER BY inf_obj_name');

      Q.Open;
      fmFilter := TfmFilter.Create(0, Q, 'inf_obj_id', 'inf_obj_cod', 'inf_obj_name');
      if fmFilter.ShowModal=mrOk then begin
        ClientDS.Edit;
        ClientDS.FieldByName(field_id).Value   := fmFilter.GetId;
        ClientDS.FieldByName(field_cod).Value  := fmFilter.GetCod;
        ClientDS.FieldByName(field_name).Value := fmFilter.GetName;
        ClientDS.Post;
      end;
    end;
    Q.Free;
  end else begin
    ClientDS.Edit;
    ClientDS.FieldByName(field_id).Value   := null;
    ClientDS.FieldByName(field_cod).Value  := null;
    ClientDS.FieldByName(field_name).Value := null;
    ClientDS.Post;
  end;
end;

function  FindInInfObjNode(ClientDS: TClientDataSet; NameInfObj:string; isName:boolean; isFind:boolean; Period : TDateTime; Conn : TADOConnection): boolean;
var
  table_name : string;

  field_id   : string;
  field_cod  : string;
  field_name : string;

  filter_str : string;
  caption_str: string;
  Q          : TADOQuery;
begin
  Result := False;
  if NameInfObj = 'NODE_BEGIN' then begin
    caption_str:= 'Шаблон поиска станции по '+iif(isName,'названию','коду')+':';
    table_name := 'inf_obj_NODE';
    field_id   := 'node_begin_id';
    field_cod  := 'node_begin_cod';
    field_name := 'node_begin_name';
  end;
  if NameInfObj = 'NODE_END' then begin
    caption_str:= 'Шаблон поиска станции по '+iif(isName,'названию','коду')+':';
    table_name := 'inf_obj_NODE';
    field_id   := 'node_end_id';
    field_cod  := 'node_end_cod';
    field_name := 'node_end_name';
  end;
  if NameInfObj = 'NODE_SNG_BEGIN' then begin
    caption_str:= 'Шаблон поиска станции СНГ по '+iif(isName,'названию','коду')+':';
    table_name := 'inf_obj_NODE';
    field_id   := 'node_begin_SNG_id';
    field_cod  := 'node_begin_SNG_cod';
    field_name := 'node_begin_SNG_name';
  end;
  if NameInfObj = 'NODE_SNG_END' then begin
    caption_str:= 'Шаблон поиска станции СНГ по '+iif(isName,'названию','коду')+':';
    table_name := 'inf_obj_NODE';
    field_id   := 'node_end_SNG_id';
    field_cod  := 'node_end_SNG_cod';
    field_name := 'node_end_SNG_name';
  end;
  if NameInfObj = 'NODE_BORDER_IN' then begin
    caption_str:= 'Шаблон поиска Вх. Погран.Станции по '+iif(isName,'названию','коду')+':';
    table_name := 'inf_obj_NODE';
    field_id   := 'node_border_in';
    field_cod  := 'node_border_in_cod';
    field_name := 'node_border_in_name';
  end;
  if NameInfObj = 'NODE_BORDER_OUT' then begin
    caption_str:= 'Шаблон поиска Вых. Погран.Станции по '+iif(isName,'названию','коду')+':';
    table_name := 'inf_obj_NODE';
    field_id   := 'node_border_out';
    field_cod  := 'node_border_out_cod';
    field_name := 'node_border_out_name';
  end;
  if isFind then begin
    Q := TADOQuery.Create(nil);
    Q.Connection := Conn;
    if InputQuery('Поиск', caption_str, filter_str) then begin
      if isName then Q.SQL.Add('SELECT inf_obj_id, inf_obj_name, inf_obj_cod from '+table_name+' WHERE inf_obj_name LIKE ''%'+filter_str+'%'' AND LEFT(' + DateToSQL(Period) + ', 6) BETWEEN ISNULL(convert(varchar(6), date_begin, 112), ''190101'') AND ISNULL(convert(varchar(6), date_end, 112), ''210012'') ORDER BY inf_obj_name')
      else Q.SQL.Add('SELECT inf_obj_id, inf_obj_name, inf_obj_cod from '+table_name+' WHERE inf_obj_cod LIKE ''%'+filter_str+'%'' AND LEFT(' + DateToSQL(Period) + ', 6) BETWEEN ISNULL(convert(varchar(6), date_begin, 112), ''190101'') AND ISNULL(convert(varchar(6), date_end, 112), ''210012'') ORDER BY inf_obj_name');
      Q.Open;
      fmFilter := TfmFilter.Create(0, Q, 'inf_obj_id', 'inf_obj_cod', 'inf_obj_name');
      Q.Free;
      if fmFilter.ShowModal=mrOk then begin
        ClientDS.Edit;
        ClientDS.FieldByName(field_id).Value   := fmFilter.GetId;
        ClientDS.FieldByName(field_cod).Value  := fmFilter.GetCod;
        ClientDS.FieldByName(field_name).Value := fmFilter.GetName;
        ClientDS.Post;
        Result := True;
      end;
    end;
  end else begin
    ClientDS.Edit;
    ClientDS.FieldByName(field_id).Value   := null;
    ClientDS.FieldByName(field_cod).Value  := null;
    ClientDS.FieldByName(field_name).Value := null;
    ClientDS.Post;
    Result := True;
  end;
end;


function CheckSigner(firm_id, dir_id, buh_id: integer; date1: TDate; Fconnect: TADOConnection): boolean;
var Q : TADOQuery;
    str_msg : string;
begin
  Result := True;

  // Проверка подписантов
  str_msg := '';
  Q := TADOQuery.Create(Application);
  Q.Connection := Fconnect;

  if (dir_id > 0) then begin
    Q.Close;
    Q.SQL.Clear;
    Q.SQL.Add('SELECT firm_id, date_begin, date_end');
    Q.SQL.Add('FROM view_firm_contact');
    Q.SQL.Add('WHERE firm_contact_id = ' + IntToStr(dir_id));
    Q.Open;

    if firm_id <> Q.FieldByName('firm_id').AsInteger then
      str_msg := str_msg + #10'- Руководитель (не соответсвие организации)';
    if (not Q.FieldByName('date_begin').IsNull and (date1 < Q.FieldByName('date_begin').AsDateTime))
    or (not Q.FieldByName('date_end').IsNull and (Q.FieldByName('date_end').AsDateTime < date1)) then
      str_msg := str_msg + #10'- Руководитель (не действует на указанную дату)';
  end;

  if (buh_id > 0) then begin
    Q.Close;
    Q.SQL.Clear;
    Q.SQL.Add('SELECT firm_id, date_begin, date_end');
    Q.SQL.Add('FROM view_firm_contact');
    Q.SQL.Add('WHERE firm_contact_id = ' + IntToStr(buh_id));
    Q.Open;

    if firm_id <> Q.FieldByName('firm_id').AsInteger then
      str_msg := str_msg + #10'- Главный бухгалтер (не соответсвие организации)';
    if (not Q.FieldByName('date_begin').IsNull and (date1 < Q.FieldByName('date_begin').AsDateTime))
    or (not Q.FieldByName('date_end').IsNull and (Q.FieldByName('date_end').AsDateTime < date1)) then
      str_msg := str_msg + #10'- Главный бухгалтер (не действует на указанную дату)';
  end;

  Q.Free;

  if str_msg <> '' then begin
    Result := False;
    Application.MessageBox(PWideChar('Выбраны не действующие подписанты:' + str_msg + #10'Необходимо изменить подписантов!'), 'Внимание', MB_OK or MB_ICONEXCLAMATION);
  end;

end;

function CheckNumVagon(num_vagon : string): boolean;
var j, sum_check, num_check : integer;
begin
  // Проверка длины строки
  Result := (Length(num_vagon) = 8);

  // Все символы - цифры
  j := 1;
  while (j <= 8) and Result do begin
    Result := (num_vagon[j] in ['0'..'9']);
    inc(j);
  end;

  // Проверка контрольной суммы
  j := 1;
  if Result then begin
    sum_check := 0;
    for j := 1 to 8 do begin
      if (j mod 2) = 1 then begin // '21212121' - множитель
        num_check := StrToInt(num_vagon[j]) * 2;
      end else begin
        num_check := StrToInt(num_vagon[j]) * 1;
      end;
      sum_check := sum_check + (num_check mod 10) + (num_check div 10); // Сумма цифр
    end;
    // Контрольная сумма всех 8 цифр - должна быть кратна 10
    sum_check := sum_check mod 10;
    Result := (sum_check = 0);
  end;
end;


procedure OpenAgree4List(Fdate1, Fdate2 : TDate; set_finance : boolean; str_bargain_id : string);
var i : integer;
    bln : boolean;
begin
  bln := False;
  for i:=0 to fmMain.MDIChildCount-1 Do
    if (fmMain.MDIChildren[i].ClassName = 'TfmAgree2') then begin
      fmAgree2 := TfmAgree2(fmMain.MDIChildren[i]);
      bln := True;
    end;
  if not bln then
    fmAgree2 := TfmAgree2.Create(Application, False);

  fmAgree2.OpenAgree4List(Fdate1, Fdate2, set_finance, str_bargain_id);

  fmAgree2.Show;
end;

function GetCodByFirm(connect: TADOConnection; id: integer; firm_id: integer; shablon_type: integer; date_period: TDateTime; var num: integer):string;
var cod   : string;
    Query : TADOQuery;
begin
  Screen.Cursor := crHourglass;

  Query := TADOQuery.Create(nil);
  Query.Connection := connect;

  Query.Close;
  Query.SQL.Clear;
  Query.SQL.Add('SELECT * FROM dbo.GetCodByFirm(');
  if id = -9 then Query.SQL.Add('null,')
  else Query.SQL.Add(IntToStr(id) + ',');
  Query.SQL.Add(IntToStr(firm_id) + ',');
  Query.SQL.Add(IntToStr(shablon_type) + ',');
  Query.SQL.Add(DateToSQL(date_period) + ')');
  Query.Open;
  num := Query.FieldByName('num').AsInteger;
  cod := Query.FieldByName('cod').AsString;
  Query.Free;

  Screen.Cursor := crDefault;
  result := cod;
end;

function StoreRegistryCheck(reg_action: TRegisterAction; reg_key: string; check_name: string; set_check: boolean): boolean;
var Reg : TRegistry;
begin
  Reg := TRegistry.Create;
  Reg.RootKey := HKEY_CURRENT_USER;
  Reg.OpenKey(reg_key, True);

  if reg_action =  rgSave then begin
    Reg.WriteBool(check_name, set_check);
  end else begin
    if Reg.ValueExists(check_name) then
      set_check := Reg.ReadBool(check_name);
  end;

  Reg.CloseKey;
  Reg.Free;

  Result := set_check;
end;

function  StoreRegistryString(reg_action: TRegisterAction; reg_key: string; value_name: string; value_string: string): string;
var Reg : TRegistry;
begin
  Reg := TRegistry.Create;
  Reg.RootKey := HKEY_CURRENT_USER;
  Reg.OpenKey(reg_key, True);

  if reg_action =  rgSave then begin
    Reg.WriteString(value_name, value_string);
  end else begin
    if Reg.ValueExists(value_name) then value_string := Reg.ReadString(value_name);
  end;

  Reg.CloseKey;
  Reg.Free;

  Result := value_string;
end;


procedure StoreRegistryGrid(reg_action: TRegisterAction; reg_key: string; cxGridView: TcxGridDBBandedTableView; ClearCount: integer = 0);
var
  i,j,k,cc : integer;
       Reg : TRegistry;
  min1,min2, index_column : integer;
  col_index, col_bandIndex, col_width : integer;
  col_visible : Boolean;
  str_conn : string;
begin
  Reg := TRegistry.Create;
  Reg.RootKey := HKEY_CURRENT_USER;
  Reg.OpenKey(reg_key, True);

  if reg_action =  rgSave then begin
    Reg.OpenKey(reg_key+'\'+cxGridView.Name, True);
    Reg.WriteBool('GroupByBox', cxGridView.OptionsView.GroupByBox);
    Reg.WriteBool('ColumnFilteredItemsList', cxGridView.Filtering.ColumnFilteredItemsList);
    if cxGridView.OptionsView.BandHeaders then begin
      for j := 0 to cxGridView.Bands.Count - 1 do begin
        Reg.OpenKey(reg_key+'\' + cxGridView.Name + 'Band' + IntToStr(j), True);
        Reg.WriteInteger('Width', cxGridView.Bands.Items[j].Width);
//        Reg.WriteString('Caption', cxGridView.Bands.Items[j].Caption);
      end;
    end;

    for i:=0 to cxGridView.ColumnCount-1 do begin
      Reg.OpenKey(reg_key+'\'+cxGridView.Columns[i].Name, True);
      Reg.WriteInteger('BandIndex',cxGridView.Columns[i].Position.BandIndex);
      Reg.WriteInteger('Position.ColIndex',cxGridView.Columns[i].Position.ColIndex);
      Reg.WriteBool('Visible',cxGridView.Columns[i].Visible);
      Reg.WriteInteger('Width',cxGridView.Columns[i].Width);
      Reg.WriteInteger('GroupIndex',cxGridView.Columns[i].GroupIndex);
      if cxGridView.Columns[i].SortOrder = soNone       then Reg.WriteString('SortOrder','soNone');
      if cxGridView.Columns[i].SortOrder = soAscending  then Reg.WriteString('SortOrder','soAscending');
      if cxGridView.Columns[i].SortOrder = soDescending then Reg.WriteString('SortOrder','soDescending');
      Reg.OpenKey(reg_key, True);
    end;
  end;

  if reg_action =  rgLoad then begin

    // возможность на гриде Ctrl+C - Ctrl+V
//    str_conn := 'Persist Security Info=True;Provider=SQLOLEDB.1;User ID=admin_depo;Password=cjnhfkjubcnbrf;Initial Catalog=depo;Data Source=172.16.30.205;';
//    if (not LisCheck(str_conn)) then begin
//      cxGridView.OptionsBehavior.CopyPreviewToClipboard  := False;
//      cxGridView.OptionsBehavior.CopyCaptionsToClipboard := False;
//      cxGridView.OptionsBehavior.CopyRecordsToClipboard  := False;
//    end;

    if ClearCount<>0 then begin
      Reg.OpenKey(reg_key+'\'+cxGridView.Name, True);
      if Reg.ValueExists('GroupByBox') then
        cxGridView.OptionsView.GroupByBox := Reg.ReadBool('GroupByBox');
      if Reg.ValueExists('ColumnFilteredItemsList') then
        cxGridView.Filtering.ColumnFilteredItemsList := Reg.ReadBool('ColumnFilteredItemsList');
      if (not Reg.ValueExists('ClearCount')) or (Reg.ReadInteger('ClearCount')<ClearCount) then begin
        Reg.WriteInteger('ClearCount', ClearCount);
        Exit;
      end;
    end;
    Reg.OpenKey(reg_key+'\'+cxGridView.Name, True);
    if Reg.ValueExists('ColumnFilteredItemsList') then
      cxGridView.Filtering.ColumnFilteredItemsList := Reg.ReadBool('ColumnFilteredItemsList');

    min1 := 100000000;
    min2 := -1;
    index_column := -1;

    for k := 0 to cxGridView.Bands.Count - 1 do begin
      if cxGridView.Site.Parent is TcxGrid then
        TcxGrid(cxGridView.Site.Parent).LookAndFeel.NativeStyle := False;

      if cxGridView.OptionsView.BandHeaders then begin
        Reg.OpenKey(reg_key+'\' + cxGridView.Name + 'Band' + IntToStr(k), True);
        if Reg.ValueExists('Width') then cxGridView.Bands.Items[k].Width   := Reg.ReadInteger('Width');
//        if Reg.ValueExists('Caption') then cxGridView.Bands.Items[k].Caption := Reg.ReadString('Caption');
      end;

      for i:=0 to cxGridView.ColumnCount-1 do begin
        for j := 0 to cxGridView.ColumnCount-1 do begin
          Reg.OpenKey(reg_key+'\'+cxGridView.Columns[j].Name, True);
          if Reg.ValueExists('Position.ColIndex') and Reg.ValueExists('BandIndex') then begin
            if (Reg.ReadInteger('Position.ColIndex') < min1) and (Reg.ReadInteger('Position.ColIndex') > min2) and (Reg.ReadInteger('BandIndex') = k) then begin
              min1          := Reg.ReadInteger('Position.ColIndex');
              col_index     := Reg.ReadInteger('Position.ColIndex');
              col_bandIndex := Reg.ReadInteger('BandIndex');
              col_width     := Reg.ReadInteger('Width');
              col_visible   := Reg.ReadBool('Visible');
              index_column  := j;
            end;
          end;
          Reg.OpenKey(reg_key, True);
        end;
        min2 := min1;

        if index_column <> -1 then begin
          if cxGridView.Columns[index_column].Position.BandIndex <> -1 then begin
            Reg.OpenKey(reg_key+'\'+cxGridView.Columns[index_column].Name, True);
            cxGridView.Columns[index_column].Position.BandIndex := col_bandIndex;
            cxGridView.Columns[index_column].Position.ColIndex  := col_index;
            cxGridView.Columns[index_column].Visible            := col_visible;
            cxGridView.Columns[index_column].Width              := col_width;
            if Reg.ValueExists('GroupIndex') then
              cxGridView.Columns[index_column].GroupIndex := Reg.ReadInteger('GroupIndex');
            if Reg.ReadString('SortOrder')='soNone'       then cxGridView.Columns[index_column].SortOrder := soNone;
            if Reg.ReadString('SortOrder')='soAscending'  then cxGridView.Columns[index_column].SortOrder := soAscending;
            if Reg.ReadString('SortOrder')='soDescending' then cxGridView.Columns[index_column].SortOrder := soDescending;
            Reg.OpenKey(reg_key, True);
          end;
        end;
        min1 := 100000000;
        index_column := -1;
      end;
      min1 := 100000000;
      min2 := -1;
      index_column := -1;
    end;

    cxGridView.OptionsView.HeaderHeight := TControl(cxGridView.Owner).ScaleValue(37);
  end;

  Reg.CloseKey;
  Reg.Free;
end;



procedure StoreRegistryGrid2(reg_action: TRegisterAction; reg_key: string; cxGridView: TcxGridDBBandedTableView; ClearCount: integer = 0);
var
  i   : integer;
  Reg : TRegistry;
  ClientDS : TClientDataSet;
  str_conn : string;
  f : Single;
begin
  Reg := TRegistry.Create;
  Reg.RootKey := HKEY_CURRENT_USER;
  Reg.OpenKey(reg_key, True);

  // Сохраняем данные в реестр
  if reg_action =  rgSave then begin
    Reg.OpenKey(reg_key+'\'+cxGridView.Name, True);
    Reg.WriteBool('GroupByBox', cxGridView.OptionsView.GroupByBox);
    Reg.WriteBool('ColumnFilteredItemsList', cxGridView.Filtering.ColumnFilteredItemsList);
    if cxGridView.OptionsView.BandHeaders then begin
      for i := 0 to cxGridView.Bands.Count - 1 do begin
        Reg.OpenKey(reg_key+'\' + cxGridView.Name + 'Band' + IntToStr(i), True);
        Reg.WriteInteger('Width', cxGridView.Bands.Items[i].Width);
//        Reg.WriteString('Caption', cxGridView.Bands.Items[i].Caption);
      end;
    end;

    for i:=0 to cxGridView.ColumnCount-1 do begin
      Reg.OpenKey(reg_key+'\'+cxGridView.Columns[i].Name, True);
      Reg.WriteInteger('BandIndex',cxGridView.Columns[i].Position.BandIndex);
      Reg.WriteInteger('Position.ColIndex',cxGridView.Columns[i].Position.ColIndex);
      Reg.WriteBool('Visible',cxGridView.Columns[i].Visible);
      Reg.WriteInteger('Width',cxGridView.Columns[i].Width);
      Reg.WriteInteger('GroupIndex',cxGridView.Columns[i].GroupIndex);
      if cxGridView.Columns[i].SortOrder = soNone       then Reg.WriteString('SortOrder','soNone');
      if cxGridView.Columns[i].SortOrder = soAscending  then Reg.WriteString('SortOrder','soAscending');
      if cxGridView.Columns[i].SortOrder = soDescending then Reg.WriteString('SortOrder','soDescending');
      Reg.OpenKey(reg_key, True);
    end;
  end;

  // Загружаем данные из реестра
  if reg_action =  rgLoad then begin

    // возможность на гриде Ctrl+C - Ctrl+V
//    str_conn := 'Persist Security Info=True;Provider=SQLOLEDB.1;User ID=admin_depo;Password=cjnhfkjubcnbrf;Initial Catalog=depo;Data Source=172.16.30.205;';
//    if (not LisCheck(str_conn)) then begin
//      cxGridView.OptionsBehavior.CopyPreviewToClipboard  := False;
//      cxGridView.OptionsBehavior.CopyCaptionsToClipboard := False;
//      cxGridView.OptionsBehavior.CopyRecordsToClipboard  := False;
//    end;

    // Загружаем GroupByBox, ColumnFilteredItemsList (!!)
    if ClearCount<>0 then begin

      Reg.OpenKey(reg_key+'\'+cxGridView.Name, True);
      if Reg.ValueExists('GroupByBox') then
        cxGridView.OptionsView.GroupByBox := Reg.ReadBool('GroupByBox');

      if Reg.ValueExists('ColumnFilteredItemsList') then
        cxGridView.Filtering.ColumnFilteredItemsList := Reg.ReadBool('ColumnFilteredItemsList');

      if (not Reg.ValueExists('ClearCount')) or (Reg.ReadInteger('ClearCount')<ClearCount) then begin
        Reg.WriteInteger('ClearCount', ClearCount);
        Exit;
      end;
    end;

    ClientDS := TClientDataSet.Create(nil);
    ClientDS.FieldDefs.Add('ColumnName',ftString, 300);
    ClientDS.FieldDefs.Add('ColumnID'  ,ftInteger);
    ClientDS.FieldDefs.Add('BandIndex' ,ftInteger);
    ClientDS.FieldDefs.Add('GroupIndex',ftInteger);
    ClientDS.FieldDefs.Add('ColIndex'  ,ftInteger);
    ClientDS.FieldDefs.Add('SortOrder' ,ftString, 50);
    ClientDS.FieldDefs.Add('Visible'   ,ftBoolean);
    ClientDS.FieldDefs.Add('Width'     ,ftInteger);
    ClientDS.CreateDataSet;
    ClientDS.LogChanges := False;

    Reg.OpenKey(reg_key+'\'+cxGridView.Name, True);

    // Загружаем фильтр
    if Reg.ValueExists('ColumnFilteredItemsList') then
      cxGridView.Filtering.ColumnFilteredItemsList := Reg.ReadBool('ColumnFilteredItemsList');

    // Устанавливаем стиль Grid
    if cxGridView.Site.Parent is TcxGrid then begin
      TcxGrid(cxGridView.Site.Parent).LookAndFeel.NativeStyle := False;
    end;

    // Загружаем Bands
    if cxGridView.OptionsView.BandHeaders then begin
      for i := 0 to cxGridView.Bands.Count - 1 do begin
        Reg.OpenKey(reg_key+'\' + cxGridView.Name + 'Band' + IntToStr(i), True);
        if Reg.ValueExists('Width') then cxGridView.Bands.Items[i].Width   := Reg.ReadInteger('Width');
      end;
    end;

    // Загружаем Колонки
    for i:=0 to cxGridView.ColumnCount-1 do begin
      // Колонки с BandIndex = <none> (-1) не загружаются
      if cxGridView.Columns[i].Position.BandIndex <> -1 then begin
        Reg.OpenKey(reg_key+'\'+cxGridView.Columns[i].Name, True);

        //ShowMessage(IntToStr(i) + ':' + IntToStr(cxGridView.Columns[i].ID));

        // Если сохранена позиция колонки, загружаем данные
        if Reg.ValueExists('Position.ColIndex') and Reg.ValueExists('BandIndex') then begin

          ClientDS.Append;
          ClientDS.FieldByName('ColumnName').Value := cxGridView.Columns[i].Name;
          ClientDS.FieldByName('ColumnID'  ).Value := cxGridView.Columns[i].ID;
          if Reg.ReadInteger('BandIndex') = -1 then begin
            ClientDS.FieldByName('BandIndex' ).Value := cxGridView.Columns[i].Position.BandIndex;
            ClientDS.FieldByName('ColIndex'  ).Value := cxGridView.Columns[i].Position.ColIndex;
          end else begin
            ClientDS.FieldByName('BandIndex' ).Value := Reg.ReadInteger('BandIndex');
            ClientDS.FieldByName('ColIndex'  ).Value := Reg.ReadInteger('Position.ColIndex');
          end;

          if Reg.ValueExists('GroupIndex') then ClientDS.FieldByName('GroupIndex').Value := Reg.ReadInteger('GroupIndex');
          if Reg.ValueExists('SortOrder')  then ClientDS.FieldByName('SortOrder' ).Value := Reg.ReadString('SortOrder');
          if Reg.ValueExists('Visible')    then ClientDS.FieldByName('Visible'   ).Value := Reg.ReadBool('Visible');
          if Reg.ValueExists('Width')      then ClientDS.FieldByName('Width'     ).Value := Reg.ReadInteger('Width');
          ClientDS.Post;
        end;
      end;
    end;

    // Сортируем колонки по BandIndex,ColIndex
    ClientDataSetSort(ClientDS, 'BandIndex;ColIndex', False);

    ClientDS.First;
    cxGridView.BeginUpdate();
    while not ClientDS.Eof do begin
      if not ClientDS.FieldByName('BandIndex').IsNull  then cxGridView.Columns[ClientDS.FieldByName('ColumnID').AsInteger].Position.BandIndex := ClientDS.FieldByName('BandIndex').AsInteger;
      if not ClientDS.FieldByName('ColIndex').IsNull   then cxGridView.Columns[ClientDS.FieldByName('ColumnID').AsInteger].Position.ColIndex  := ClientDS.FieldByName('ColIndex').AsInteger;
      if not ClientDS.FieldByName('Visible').IsNull    then cxGridView.Columns[ClientDS.FieldByName('ColumnID').AsInteger].Visible            := ClientDS.FieldByName('Visible').AsBoolean;
      if not ClientDS.FieldByName('Width').IsNull      then cxGridView.Columns[ClientDS.FieldByName('ColumnID').AsInteger].Width              := ClientDS.FieldByName('Width').AsInteger;
      if not ClientDS.FieldByName('GroupIndex').IsNull then cxGridView.Columns[ClientDS.FieldByName('ColumnID').AsInteger].GroupIndex         := ClientDS.FieldByName('GroupIndex').AsInteger;

      if ClientDS.FieldByName('SortOrder').AsString='soNone'       then cxGridView.Columns[ClientDS.FieldByName('ColumnID').AsInteger].SortOrder := soNone;
      if ClientDS.FieldByName('SortOrder').AsString='soAscending'  then cxGridView.Columns[ClientDS.FieldByName('ColumnID').AsInteger].SortOrder := soAscending;
      if ClientDS.FieldByName('SortOrder').AsString='soDescending' then cxGridView.Columns[ClientDS.FieldByName('ColumnID').AsInteger].SortOrder := soDescending;
      ClientDS.Next;
    end;
    cxGridView.EndUpdate();

    ClientDS.Free;


    cxGridView.OptionsView.HeaderHeight := TControl(cxGridView.Owner).ScaleValue(37);
  end;

  Reg.CloseKey;
  Reg.Free;
end;

procedure LoadRegistryDate_(str : string; var date_1, date_2 : TDateTime); //-dr-
var Reg : TRegistry;
begin
  Reg := TRegistry.Create;
  Reg.RootKey := HKEY_CURRENT_USER;
  Reg.OpenKey(str, True);
  if Reg.ValueExists('Fdate1') then begin
    date_1 := Reg.ReadDate('Fdate1');
    date_2 := Reg.ReadDate('Fdate2');
  end else begin
    date_1 := StartOfTheMonth(Now);
    date_2 := EndOfTheMonth(Now);
  end;
  Reg.CloseKey;
  Reg.Free;
end;

procedure SavePositionForm(form:TControl;str : string; date_1,date_2 : TDateTime);
var Reg : TRegistry;
begin
  Reg := TRegistry.Create;
  Reg.RootKey := HKEY_CURRENT_USER;
  Reg.OpenKey(str, True);
  Reg.WriteDate('Fdate1', date_1);
  Reg.WriteDate('Fdate2', date_2);
  Reg.CloseKey;
  Reg.Free;
end;

{$REGION 'Вывод таблицы в Эксель'}
procedure PrintcxGridToXML(cxGridView : TcxGridDBBandedTableView; set_PrintAllTable : Boolean = False);
type
    TFunc = function(AHandle : THandle; var ClientDS : TClientDataSet) : variant;
var Client_Res     : TClientDataSet;
    i, j           : integer;

    tmp_path       : string;
    file_name      : string;
    arr_temp       : array[0..1023] of Char;
    FD             : TFieldDef;

    Client_Columns : TClientDataSet;
    FGrid          : TFunc;
    handle         : THandle;
    v              : variant;
begin
  Client_Columns := TClientDataSet.Create(nil);
  Client_Columns.FieldDefs.Add('id', ftAutoInc);
  Client_Columns.FieldDefs.Add('caption', ftString, 50);
  Client_Columns.FieldDefs.Add('flag', ftBoolean);
  Client_Columns.FieldDefs.Add('field_name', ftString, 50);
  Client_Columns.FieldDefs.Add('field_position', ftInteger);
  Client_Columns.FieldDefs.Add('field_color', ftInteger);
  Client_Columns.FieldDefs.Add('field_focused', ftBoolean);
  Client_Columns.FieldDefs.Add('field_bandindex', ftInteger);
  Client_Columns.CreateDataSet;


  for i := 0 to cxGridView.ItemCount-1 do
    if cxGridView.Columns[i].Position.BandIndex <> -1 then begin
      Client_Columns.Append;
      Client_Columns['caption']         := cxGridView.Columns[i].Caption;
      Client_Columns['flag']            := cxGridView.Columns[i].Visible;
      Client_Columns['field_name']      := cxGridView.Columns[i].DataBinding.FieldName;
      Client_Columns['field_position']  := cxGridView.Columns[i].Position.ColIndex;
      Client_Columns['field_bandindex'] := cxGridView.Columns[i].Position.BandIndex;
      if cxGridView.Columns[i].Styles.Content <> nil then
        Client_Columns['field_color'] := cxGridView.Columns[i].Styles.Content.Color;

      Client_Columns['field_focused'] := cxGridView.Columns[i].Focused;
      Client_Columns.Post;
    end;

  handle := LoadLibrary('user.dll');
  @FGrid := GetProcAddress(handle, 'CreateWndGridColumns');
  v := FGrid(Application.Handle, Client_Columns);
  FreeLibrary(handle);

  if v[0] = 0 then begin
    try
      Screen.Cursor := crHourglass;
      ShowTextMessage('Запуск сервера автоматизации...', False);

      SetString(tmp_path, arr_temp, GetTempPath(1023,arr_temp));

      // Попытка удаления мусора из временной директории
      DeleteFileFromDir(tmp_path);
      repeat
        file_name := 'xml_' + IntToStr(GetTickCount) + '.xml';
      until not FileExists(tmp_path + file_name);

      // Создадим DS с аналогичной Запросу в Grid'е структурой
      Client_Res := TClientDataSet.Create(nil);
      for i := 0 to cxGridView.DataController.DataSet.FieldDefs.Count - 1 do begin
        if Client_Columns.Locate('field_name;flag', VarArrayOf([cxGridView.DataController.DataSet.FieldDefs[i].Name, True]), []) then begin
          FD := Client_Res.FieldDefs.AddFieldDef;
          FD.Name := cxGridView.DataController.DataSet.FieldDefs[i].Name;
          FD.DataType := cxGridView.DataController.DataSet.FieldDefs[i].DataType;
          FD.Size := cxGridView.DataController.DataSet.FieldDefs[i].Size;
        end;
      end;
      Client_Res.CreateDataSet;
      Client_Res.LogChanges := False;

      // Заполнение
      if set_PrintAllTable then cxGridView.Controller.SelectAll;

      // Цикл по выделенным записям
      for i := 0 to cxGridView.Controller.SelectedRecordCount - 1 do begin
        Client_Res.Append;

        for j := 0 to Client_Res.FieldCount - 1 do
          Client_Res.Fields[j].Value := cxGridView.Controller.SelectedRecords[i].Values[cxGridView.GetColumnByFieldName(Client_Res.Fields[j].FieldName).Index];

        Client_Res.Post;
      end;

      if set_PrintAllTable then cxGridView.Controller.ClearSelection;

      // Сохранение и открытие
      Client_Res.SaveToFile(tmp_path + file_name, dfXMLUTF8);
      ShellExecute(Application.Handle, 'open', PChar(file_name), nil, nil, SW_SHOWNORMAL);

    finally
      Client_Res.Free;
    end;
  end;

  ShowTextMessage;
  Screen.Cursor := crDefault;
  Client_Columns.Free;
end;

procedure PrintcxGridCSV(cxGridView: TcxGridDBBandedTableView);
type
    TFunc = function(AHandle : THandle; var ClientDS : TClientDataSet) : variant;

var FilesStream : TFileStream;
      file_name : string;
     SaveDialog : TSaveDialog;
          FGrid : TFunc;
         handle : THandle;
         v, val : variant;
 Client_Columns : TClientDataSet;
              i : integer;
     str_result : RawByteString;
        val_str : string;
       val_date : TDateTime;
        val_int : integer;
    val_boolean : Boolean;
     val_double : Double;
   val_currency : Currency;
       val_type : string;
begin
  Exit;
  SaveDialog := TSaveDialog.Create(nil);
  SaveDialog.Filter   := '*.csv|csv';

  if SaveDialog.Execute() then begin
    Client_Columns := TClientDataSet.Create(nil);
    Client_Columns.FieldDefs.Add('id'         , ftAutoInc);
    Client_Columns.FieldDefs.Add('caption'    , ftString, 500);
    Client_Columns.FieldDefs.Add('flag'       , ftBoolean);
    Client_Columns.FieldDefs.Add('flag_old'   , ftBoolean);
    Client_Columns.FieldDefs.Add('field_name' , ftString, 500);
    Client_Columns.FieldDefs.Add('field_type' , ftString, 500);
    Client_Columns.FieldDefs.Add('visible_ix' , ftInteger);
    Client_Columns.FieldDefs.Add('fld_index'  , ftInteger);
    Client_Columns.FieldDefs.Add('position'   , ftInteger);
    Client_Columns.FieldDefs.Add('width'      , ftInteger);
    Client_Columns.FieldDefs.Add('field_position', ftInteger);
    Client_Columns.FieldDefs.Add('field_color', ftInteger);
    Client_Columns.FieldDefs.Add('field_focused', ftBoolean);
    Client_Columns.FieldDefs.Add('field_bandindex', ftInteger);
    Client_Columns.CreateDataSet;
    Client_Columns.LogChanges := False;

    file_name := SaveDialog.FileName;
    file_name := LeftStr(file_name, Length(file_name) - Length(ExtractFileExt(file_name)));
    file_name := file_name + '.csv';
    FilesStream := TFileStream.Create(file_name, fmCreate);
    try
      for i := 0 to cxGridView.ItemCount - 1 do
        if cxGridView.Columns[i].Position.BandIndex <> -1 then begin
          Client_Columns.Append;
          Client_Columns['caption']    := cxGridView.Columns[i].Caption;
          Client_Columns['flag']       := cxGridView.Columns[i].Visible;
          Client_Columns['flag_old']   := cxGridView.Columns[i].Visible;
          Client_Columns['field_name'] := cxGridView.Columns[i].DataBinding.FieldName;
          Client_Columns['visible_ix'] := cxGridView.Columns[i].VisibleIndex;
          Client_Columns['fld_index' ] := cxGridView.Columns[i].Index;
          Client_Columns['position'  ] := cxGridView.Columns[i].Position.ColIndex;
          Client_Columns['width'     ] := cxGridView.Columns[i].width;
          Client_Columns['field_position' ] := cxGridView.Columns[i].Position.ColIndex;
          Client_Columns['field_bandindex'] := cxGridView.Columns[i].Position.BandIndex;
          if cxGridView.Columns[i].Styles.Content <> nil then
            Client_Columns['field_color'] := cxGridView.Columns[i].Styles.Content.Color;
          Client_Columns['field_focused'] := cxGridView.Columns[i].Focused;
          Client_Columns.Post;
        end;

      handle := LoadLibrary('user.dll');
      @FGrid := GetProcAddress(handle, 'CreateWndGridColumns');
      v := FGrid(Application.Handle, Client_Columns);
      FreeLibrary(handle);

      ClientDataSetSort(Client_Columns, 'field_bandindex;field_position', False);

      if v[0] = 0 then begin

        ShowTextMessage('Печать таблицы в CSV...' + #10 + 'Подготовка данных...', False);
        Client_Columns.First;
        while not Client_Columns.Eof do begin
          if Client_Columns.FieldByName('flag').AsBoolean = False then
            Client_Columns.Delete
          else
            Client_Columns.Next;
        end;

        // Данные
        try
          for i:=0 to cxGridView.Controller.SelectedRecordCount - 1 do begin
            str_result := '';

            Client_Columns.First;
            while not Client_Columns.Eof do begin
              val_type := cxGridView.Columns[Client_Columns.FieldByName('fld_index').AsInteger].DataBinding.ValueType;

              if cxGridView.Columns[Client_Columns.FieldByName('fld_index').AsInteger].PropertiesClass = TcxLookupComboBoxProperties then begin
                val_type := 'String';
                val := cxGridView.Controller.SelectedRows[i].DisplayTexts[Client_Columns.FieldByName('fld_index').AsInteger];
              end;


              if cxGridView.Controller.SelectedRows[i].Values[Client_Columns.FieldByName('fld_index').AsInteger] <> null then begin
                case IndexText(val_type, ['Integer','String','DateTime','Currency','Boolean','Float']) of
                  //integer
                  0:  begin;
                        val_int := cxGridView.Controller.SelectedRows[i].Values[Client_Columns.FieldByName('fld_index').AsInteger];
                        str_result := str_result + IntToStr(val_int) + ';';
                      end;
                  //string
                  1:  begin
                        val_str := cxGridView.Controller.SelectedRows[i].Values[Client_Columns.FieldByName('fld_index').AsInteger];
                        str_result := str_result + val_str + ';';
                      end;
                  //DateTime
                  2:  begin
                        val_date := cxGridView.Controller.SelectedRows[i].Values[Client_Columns.FieldByName('fld_index').AsInteger];
                        str_result := str_result + DateToStr(val_date) + ';';
                      end;
                  //currency
                  3:  begin
                        val_double := cxGridView.Controller.SelectedRows[i].Values[Client_Columns.FieldByName('fld_index').AsInteger];
                        str_result := str_result + FloatToStr(val_double) + ';';
                      end;
                  //Boolean
                  4:  begin
                        val_boolean := cxGridView.Controller.SelectedRows[i].Values[Client_Columns.FieldByName('fld_index').AsInteger];
                        str_result := str_result + BoolToStr(val_boolean,True) + ';';
                      end;
                  //Float
                  5:  begin
                        val_double := cxGridView.Controller.SelectedRows[i].Values[Client_Columns.FieldByName('fld_index').AsInteger];
                        str_result := str_result + FloatToStr(val_double) + ';';
                      end;
                  else begin
                        val := cxGridView.Controller.SelectedRows[i].Values[Client_Columns.FieldByName('fld_index').AsInteger];
                        str_result := str_result + VarToStr(val) + ';';
                       end;
                end;
              end else begin
                str_result := str_result + ';';
              end;

              Client_Columns.Next;
            end;

//            FilesStream.WriteBuffer(Pointer(str_result)^, Length(str_result));
//            FilesStream.WriteData(str_result, Length(str_result));
            str_result := str_result + #10;
            FilesStream.Write(str_result[1], Length(str_result));

            if ((i mod 19) = 0) then
              ShowTextMessage('Печать таблицы в CSV...' + #10 + 'Строк ' + IntToStr(i) + ' из ' + IntToStr(cxGridView.Controller.SelectedRecordCount) + '...', False);
          end;
        finally
        end;
      end;
    finally
      Client_Columns.Free;
      FilesStream.Free;
    end;
  end;

  SaveDialog.Free;
  ShowTextMessage;
end;

procedure PrintcxGrid(cxGridView: TcxGridDBBandedTableView);
type
    TFunc = function(AHandle : THandle; var ClientDS : TClientDataSet) : variant;
var cnt_record : integer;
    cnt_column : integer;
    array_data : Variant;
             i : integer;
Client_Columns : TClientDataSet;
   Client_dist : TClientDataSet;

  exApp, exWks, exWkb : Variant;
  range, cell1, cell2 : Variant;
        range_caption : Variant;
         range_footer : Variant;
        column_format : string;
        calc_distance : boolean;
   calc_fact_distance : boolean;

        val_str : string;
       val_date : TDateTime;
        val_int : integer;
    val_boolean : Boolean;
     val_double : Double;
   val_currency : Currency;
       val_type : string;

         FGrid : TFunc;
        handle : THandle;
        v, val : variant;
   ColumnWidth : Extended;
       DataSet : TDataSet;
 KeyFieldNames : string;
 KeyFieldIndex : integer;
       connect : TADOConnection;
       x : TComponent;

       users_name: string;
       users_group_id: integer;
       Q: TADOQuery;
begin
  connect := nil;
  // Пытаемся определить connect
  try
    if cxGridView.DataController.DataSource <> nil then begin // Проверка на подключения Grid к данным
      if cxGridView.DataController.DataSource.DataSet <> nil then begin
        if cxGridView.DataController.DataSource.DataSet.InheritsFrom(TCustomADODataSet) then begin // Проверка на ADOQuery, ADOStoreProc и т.д.

          if TCustomADODataSet(cxGridView.DataController.DataSource.DataSet).Connection <> nil then begin // Проверка подключение через ADOConnection или ConnectionString
            if TCustomADODataSet(cxGridView.DataController.DataSource.DataSet).Connection.Connected = True then begin
              connect := TADOConnection.Create(nil);
              connect.ConnectionString := TCustomADODataSet(cxGridView.DataController.DataSource.DataSet).Connection.ConnectionString;
              connect.KeepConnection   := False;
              connect.LoginPrompt      := False;
              connect.Open;
            end
          end else if TCustomADODataSet(cxGridView.DataController.DataSource.DataSet).ConnectionString <> '' then begin // Пробуем подключиться из ADOQuery.ConnectionString
              connect := TADOConnection.Create(nil);
              connect.ConnectionString := TCustomADODataSet(cxGridView.DataController.DataSource.DataSet).ConnectionString;
              connect.KeepConnection   := False;
              connect.LoginPrompt      := False;
              connect.Open;
          end;
        end;
      end;
    end;
  except
    connect := nil;
  end;


//  if not LisCheck('Provider=SQLOLEDB.1;Password=''cjnhfkjubcnbrf'';Persist Security Info=True;User ID=admin_depo;Initial Catalog=depo;Data Source=172.16.30.205') then begin
//    connect.Connected := False;
//    connect.ConnectionString := 'Provider=DB.1;Password=''cjnhfkjubcnbrf'';Persist Security Info=True;User ID=admin_depo;Initial Catalog=depo;Data Source=172.16.30.205';
//    Sleep(20000);
//    connect.Connected := True;
//    Exit;
//  end;


  users_name := 'sss';
  users_group_id := -9;
  if connect <> nil then begin
    try
      Q := TADOQuery.Create(nil);
      Q.Connection := connect;
      Q.SQL.Add('SELECT * FROM lis1..view_users WHERE users_name = system_user');
      Q.Open;
      users_name := Q.FieldByName('users_name').AsString;
      users_group_id := Q.FieldByName('users_group_id').AsInteger;
    except
    end;

    Q.Free;

  end;



  // ------ мониторинг печати таблицы ---------
//        x := TComponent(cxGridView).Owner;
//        while not x.ClassParent.ClassNameIs('TForm') do begin
//          if x.Owner = nil then begin
//            x := nil;
//            Break;
//          end;
//          x := x.Owner;
//        end;
//        MonitorEventFormOpen('PRINT_GRID', x.ClassName + '/' + cxGridView.Name , connect, -9);
  // ------------------------------------------

  Client_Columns := TClientDataSet.Create(nil);
  Client_Columns.FieldDefs.Add('id'         , ftAutoInc);
  Client_Columns.FieldDefs.Add('caption'    , ftString, 500);
  Client_Columns.FieldDefs.Add('flag'       , ftBoolean);
  Client_Columns.FieldDefs.Add('flag_old'   , ftBoolean);
  Client_Columns.FieldDefs.Add('field_name' , ftString, 500);
  Client_Columns.FieldDefs.Add('field_type' , ftString, 500);
  Client_Columns.FieldDefs.Add('visible_ix' , ftInteger);
  Client_Columns.FieldDefs.Add('fld_index'  , ftInteger);
  Client_Columns.FieldDefs.Add('position'   , ftInteger);
  Client_Columns.FieldDefs.Add('width'      , ftInteger);
  Client_Columns.FieldDefs.Add('field_position', ftInteger);
  Client_Columns.FieldDefs.Add('field_color', ftInteger);
  Client_Columns.FieldDefs.Add('field_focused', ftBoolean);
  Client_Columns.FieldDefs.Add('field_bandindex', ftInteger);
  Client_Columns.CreateDataSet;
  Client_Columns.LogChanges := False;

  Client_dist := TClientDataSet.Create(Application);
  Client_dist.FieldDefs.Add('node_begin_cod',  ftString, 50); // станция отправления
  Client_dist.FieldDefs.Add('node_end_cod',    ftString, 50); // станция назначения
  Client_dist.FieldDefs.Add('node_add_cod',    ftString, 50); // станция дислокации (необязательно)
  Client_dist.FieldDefs.Add('land_id',         ftInteger);    // Расчет расстояния по стране (-9: полное расстояние по всем странам)
  Client_dist.FieldDefs.Add('distance',        ftInteger);    // Расстояние (возвращаемый параметр)
  Client_dist.IndexFieldNames := 'node_begin_cod;node_end_cod';
  Client_dist.CreateDataSet;
  Client_dist.LogChanges := False;


  for i := 0 to cxGridView.ItemCount - 1 do
    if cxGridView.Columns[i].Position.BandIndex <> -1 then begin
      Client_Columns.Append;
      Client_Columns['caption']    := cxGridView.Columns[i].Caption;
      Client_Columns['flag']       := cxGridView.Columns[i].Visible;
      Client_Columns['flag_old']   := cxGridView.Columns[i].Visible;
      Client_Columns['field_name'] := cxGridView.Columns[i].DataBinding.FieldName;
      Client_Columns['visible_ix'] := cxGridView.Columns[i].VisibleIndex;
      Client_Columns['fld_index' ] := cxGridView.Columns[i].Index;
      Client_Columns['position'  ] := cxGridView.Columns[i].Position.ColIndex;
      Client_Columns['width'     ] := cxGridView.Columns[i].width;
      Client_Columns['field_position' ] := cxGridView.Columns[i].Position.ColIndex;
      Client_Columns['field_bandindex'] := cxGridView.Columns[i].Position.BandIndex;
      if cxGridView.Columns[i].Styles.Content <> nil then
        Client_Columns['field_color'] := cxGridView.Columns[i].Styles.Content.Color;
      Client_Columns['field_focused'] := cxGridView.Columns[i].Focused;
      Client_Columns.Post;
    end;

  handle := LoadLibrary('user.dll');
  @FGrid := GetProcAddress(handle, 'CreateWndGridColumns');
  v := FGrid(Application.Handle, Client_Columns);
  FreeLibrary(handle);

  ClientDataSetSort(Client_Columns, 'field_bandindex;field_position', False);

  if v[0] = 0 then begin

    // Расчет расстояний
 {
    if ((cxGridView.DataController.DataSource.DataSet.FieldDefs.IndexOf('node_begin_cod') <> -1) and (cxGridView.DataController.DataSource.DataSet.FieldDefs.IndexOf('node_end_cod') <> -1))
    or ((cxGridView.DataController.DataSource.DataSet.FieldDefs.IndexOf('fact_node_begin_cod') <> -1) and (cxGridView.DataController.DataSource.DataSet.FieldDefs.IndexOf('fact_node_end_cod') <> -1)) then begin
      if Application.MessageBox(PChar('Заполнять колонку расстояние?' +#13#10+ 'Расстояние расчитывается между "Ст.Отпр" и "Ст.Назн"'), 'Вопрос', MB_YESNO + MB_ICONQUESTION) = ID_YES then begin
        calc_distance := ((cxGridView.DataController.DataSource.DataSet.FieldDefs.IndexOf('node_begin_cod') <> -1) and (cxGridView.DataController.DataSource.DataSet.FieldDefs.IndexOf('node_end_cod') <> -1));
        calc_fact_distance := ((cxGridView.DataController.DataSource.DataSet.FieldDefs.IndexOf('fact_node_begin_cod') <> -1) and (cxGridView.DataController.DataSource.DataSet.FieldDefs.IndexOf('fact_node_end_cod') <> -1));
      end else begin
        calc_distance := False;
        calc_fact_distance := False;
      end;

    end else begin
      calc_distance := False;
      calc_fact_distance := False;
    end;
 }
     calc_distance := False;
     calc_fact_distance := False;

    ShowTextMessage('Печать таблицы в Excel...' + #10 + 'Подготовка данных...', False);
    Client_Columns.First;
    while not Client_Columns.Eof do begin
      if Client_Columns.FieldByName('flag').AsBoolean = False then
        Client_Columns.Delete
      else
        Client_Columns.Next;
    end;

    cnt_record := cxGridView.Controller.SelectedRecordCount+2; // Заголовок+Данные+Итого
    cnt_column := Client_Columns.RecordCount;

    if calc_distance = True then
      cnt_column := cnt_column + 1;
    if calc_fact_distance = True then
      cnt_column := cnt_column + 1;

    if calc_distance or calc_fact_distance then begin
      DataSet       := cxGridView.DataController.DataSource.DataSet;
      KeyFieldNames := cxGridView.DataController.KeyFieldNames;
      KeyFieldIndex := -9;
      for i := 0 to cxGridView.ItemCount - 1 do
        if cxGridView.Columns[i].DataBinding.FieldName = KeyFieldNames then begin
          KeyFieldIndex := cxGridView.Columns[i].Index;
          break
        end;
    end;


    if calc_distance or calc_fact_distance then begin
      try
        DataSet.DisableControls;

        if KeyFieldIndex <> -9 then begin
          for i:=0 to cxGridView.Controller.SelectedRecordCount - 1 do begin
            if DataSet.Locate(KeyFieldNames, cxGridView.Controller.SelectedRows[i].Values[KeyFieldIndex], []) then begin
              if calc_distance then
                if not Client_dist.FindKey([DataSet['node_begin_cod'], DataSet['node_end_cod']]) then begin
                    Client_dist.Append;
                    Client_dist.FieldByName('node_begin_cod').Value := cxGridView.DataController.DataSource.DataSet['node_begin_cod'];
                    Client_dist.FieldByName('node_end_cod'  ).Value := cxGridView.DataController.DataSource.DataSet['node_end_cod'];
                    Client_dist.FieldByName('land_id'       ).AsInteger := -9;
                    Client_dist.Post;
                end;
              if calc_fact_distance then
                if not Client_dist.FindKey([DataSet['fact_node_begin_cod'], DataSet['fact_node_end_cod']]) then begin
                    Client_dist.Append;
                    Client_dist.FieldByName('node_begin_cod').Value := cxGridView.DataController.DataSource.DataSet['fact_node_begin_cod'];
                    Client_dist.FieldByName('node_end_cod'  ).Value := cxGridView.DataController.DataSource.DataSet['fact_node_end_cod'];
                    Client_dist.FieldByName('land_id'       ).AsInteger := -9;
                    Client_dist.Post;
                end;
            end;
          end;
        end;
      finally
        DataSet.EnableControls;
      end;

      ShowTextMessage('Печать таблицы в Excel...' + #10 + 'Расчет расстояний...', False);
      if connect = nil then // Считаем расстояния если нет подключения к БД
        GetCalcDistanceGroup(Client_dist)
      else begin
        ShowTextMessage('Печать таблицы в Excel...' + #10 + 'Расчет расстояний...', False);
        Client_dist.First;
        while not Client_dist.Eof do begin
          Client_dist.Edit;
          Client_dist.FieldByName('distance').AsInteger := GetCalcDistanceDB(Client_dist.FieldByName('node_begin_cod').AsString, Client_dist.FieldByName('node_end_cod').AsString, connect, False, Date);
          Client_dist.Post;
          Client_dist.Next;

          ShowTextMessage('Печать таблицы в Excel...' + #10 + 'Расчет расстояний ' + IntToStr(Client_dist.RecNo) + ' из ' + IntToStr(Client_dist.RecordCount) + '...', False);
        end;
      end;
    end;

    array_data := VarArrayCreate([1, cnt_record, 1, cnt_column], varVariant);

    // Колонки
    Client_Columns.First;
    while not Client_Columns.Eof do begin
      array_data[1, Client_Columns.RecNo] := cxGridView.Columns[Client_Columns.FieldByName('fld_index').AsInteger].Caption;
      Client_Columns.Next;
    end;

    if (calc_distance = True)  and (calc_fact_distance = False) then array_data[1, cnt_column] := 'Расстояние';
    if (calc_distance = False) and (calc_fact_distance = True)  then array_data[1, cnt_column] := 'Расстояние (вагон)';
    if (calc_distance = True)  and (calc_fact_distance = True)  then begin
      array_data[1, cnt_column - 1] := 'Расстояние (перевозка)';
      array_data[1, cnt_column]     := 'Расстояние (вагон)';
    end;

    // Данные
    if calc_distance or calc_fact_distance then cxGridView.DataController.DataSource.DataSet.DisableControls;
    try
      for i:=0 to cxGridView.Controller.SelectedRecordCount - 1 do begin
        Client_Columns.First;
        while not Client_Columns.Eof do begin
          val_type := cxGridView.Columns[Client_Columns.FieldByName('fld_index').AsInteger].DataBinding.ValueType;

          if cxGridView.Columns[Client_Columns.FieldByName('fld_index').AsInteger].PropertiesClass = TcxLookupComboBoxProperties then begin
            val_type := 'String';
            val := cxGridView.Controller.SelectedRows[i].DisplayTexts[Client_Columns.FieldByName('fld_index').AsInteger];
          end;


          if cxGridView.Controller.SelectedRows[i].Values[Client_Columns.FieldByName('fld_index').AsInteger] <> null then begin
            case IndexText(val_type, ['Integer','String','DateTime','Currency','Boolean','Float']) of
              //integer
              0:  begin;
                    val_int := cxGridView.Controller.SelectedRows[i].Values[Client_Columns.FieldByName('fld_index').AsInteger];
                    array_data[i+2, Client_Columns.RecNo] := val_int;
                  end;
              //string
              1:  begin
                    val_str := cxGridView.Controller.SelectedRows[i].Values[Client_Columns.FieldByName('fld_index').AsInteger];
                    array_data[i+2, Client_Columns.RecNo] := val_str;
                  end;
              //DateTime
              2:  begin
                    val_date := cxGridView.Controller.SelectedRows[i].Values[Client_Columns.FieldByName('fld_index').AsInteger];
                    array_data[i+2, Client_Columns.RecNo] := val_date;
                    Client_Columns.Edit;
                    Client_Columns.FieldByName('field_type').Value := val_type;
                    Client_Columns.Post;
                  end;
              //currency
              3:  begin
                    val_double := cxGridView.Controller.SelectedRows[i].Values[Client_Columns.FieldByName('fld_index').AsInteger];
                    array_data[i+2, Client_Columns.RecNo] := val_double;
                  end;
              //Boolean
              4:  begin
                    val_boolean := cxGridView.Controller.SelectedRows[i].Values[Client_Columns.FieldByName('fld_index').AsInteger];
                    array_data[i+2, Client_Columns.RecNo] := val_boolean;
                  end;
              //Float
              5:  begin
                    val_double := cxGridView.Controller.SelectedRows[i].Values[Client_Columns.FieldByName('fld_index').AsInteger];
                    array_data[i+2, Client_Columns.RecNo] := val_double;
                  end;
              else begin
                    val := cxGridView.Controller.SelectedRows[i].Values[Client_Columns.FieldByName('fld_index').AsInteger];
                    array_data[i+2, Client_Columns.RecNo] := val;
                   end;
            end;
          end;

          Client_Columns.Next;
        end;

        if calc_distance = True then begin
          if KeyFieldIndex <> -9 then
            if DataSet.Locate(KeyFieldNames, cxGridView.Controller.SelectedRows[i].Values[KeyFieldIndex], []) then begin
                if Client_dist.FindKey([DataSet['node_begin_cod'], DataSet['node_end_cod']]) then
                  array_data[i+2, cnt_column - iif(calc_fact_distance, 1, 0)] := Client_dist.FieldByName('distance').Value
                else
                  array_data[i+2, cnt_column - iif(calc_fact_distance, 1, 0)] := 0;
              end;
        end;
        if calc_fact_distance = True then begin
          if KeyFieldIndex <> -9 then
            if DataSet.Locate(KeyFieldNames, cxGridView.Controller.SelectedRows[i].Values[KeyFieldIndex], []) then begin
                if Client_dist.FindKey([DataSet['fact_node_begin_cod'], DataSet['fact_node_end_cod']]) then
                  array_data[i+2, cnt_column] := Client_dist.FieldByName('distance').Value
                else
                  array_data[i+2, cnt_column] := 0;
              end;
        end;

        if ((i mod 10) = 0) then
          ShowTextMessage('Печать таблицы в Excel...' + #10 + 'Строк ' + IntToStr(i) + ' из ' + IntToStr(cxGridView.Controller.SelectedRecordCount) + '...', False);

      end;
    finally
      if calc_distance or calc_fact_distance then cxGridView.DataController.DataSource.DataSet.EnableControls;
    end;

    ShowTextMessage('Печать таблицы в Excel...' + #10 + 'Вывод в Excel...', False);
    exApp := CreateOleObject('Excel.Application');
    exWkb := exApp.Workbooks.Add;
    exWkb := exApp.ActiveWorkbook;
    exWks := exWkb.WorkSheets[1];

    // Левая верхняя ячейка области, в которую будем выводить данные
    cell1 := exWks.Cells[3, 2];
    // Правая нижняя ячейка области, в которую будем выводить данные
    cell2 := exWks.Cells[3 + cnt_record - 1, 2 + cnt_column - 1];
    // Область, в которую будем выводить данные
    range := exWks.Range[cell1, cell2];

    // Область заголовка
    cell1 := exWks.Cells[3, 2];
    cell2 := exWks.Cells[3, 2 + cnt_column - 1];
    range_caption := exWks.Range[cell1, cell2];

    // Область итогов
    cell1 := exWks.Cells[3 + cnt_record - 1, 2];
    cell2 := exWks.Cells[3 + cnt_record - 1, 2 + cnt_column - 1];
    range_footer := exWks.Range[cell1, cell2];

    ShowTextMessage('Печать таблицы в Excel...' + #10 + 'Установка формата колонок...', False);
    // Формат колонок
    Client_Columns.First;
    while not Client_Columns.Eof do begin
      try
        ColumnWidth := Client_Columns.FieldByName('width').AsFloat*0.14;
        exWks.Columns[Client_Columns.RecNo+1].ColumnWidth := ColumnWidth;
      except
      end;

      if LowerCase(cxGridView.Columns[Client_Columns.FieldByName('fld_index').AsInteger].DataBinding.ValueType) = 'string' then begin
        column_format := '@';
        exWks.Range[exWks.Cells[4, Client_Columns.RecNo + 1], exWks.Cells[4 + cnt_record - 3, Client_Columns.RecNo + 1]].NumberFormat := column_format;
      end;


      if cxGridView.Columns[Client_Columns.FieldByName('fld_index').AsInteger].Properties is TcxCurrencyEditProperties then begin
        column_format := TcxCurrencyEditProperties(cxGridView.Columns[Client_Columns.FieldByName('fld_index').AsInteger].Properties).DisplayFormat;
        column_format := StringReplace(
            StringReplace(column_format, ',', exApp.International[4{ThousandsSeparator}], [rfReplaceAll])
                                   , '.', exApp.International[3{DecimalSeparator}], [rfReplaceAll]);

        exWks.Range[exWks.Cells[4, Client_Columns.RecNo + 1], exWks.Cells[4 + cnt_record - 3, Client_Columns.RecNo + 1]].NumberFormat := column_format;
      end;

      if cxGridView.Columns[Client_Columns.FieldByName('fld_index').AsInteger].Properties is TcxDateEditProperties then begin
        exWks.Range[exWks.Cells[4, Client_Columns.RecNo + 1], exWks.Cells[4 + cnt_record - 3, Client_Columns.RecNo + 1]].NumberFormat := 'ДД'+FormatSettings.DateSeparator+'ММ'+FormatSettings.DateSeparator+'ГГГГ';
      end else if Client_Columns.FieldByName('field_type').AsString = 'DateTime' then begin
        exWks.Range[exWks.Cells[4, Client_Columns.RecNo + 1], exWks.Cells[4 + cnt_record - 3, Client_Columns.RecNo + 1]].NumberFormat := 'ДД'+FormatSettings.DateSeparator+'ММ'+FormatSettings.DateSeparator+'ГГГГ';
      end;

      Client_Columns.Next;
    end;

    // Вывод данных
    range.Value := array_data;

    // Применить стили
    ShowTextMessage('Печать таблицы в Excel...' + #10 + 'Форматирование таблицы...', False);
    exApp.ActiveWindow.DisplayGridlines := False;

    range.Borders[7].LineStyle := 1;
    range.Borders[8].LineStyle := 1;
    range.Borders[9].LineStyle := 1;
    range.Borders[10].LineStyle := 1;
    range.Borders[11].LineStyle := 1;
    range.Borders[12].LineStyle := 1;

    range.Borders[7].Color := $C0C0C0;
    range.Borders[8].Color := $C0C0C0;
    range.Borders[9].Color := $C0C0C0;
    range.Borders[10].Color := $C0C0C0;
    range.Borders[11].Color := $C0C0C0;
    range.Borders[12].Color := $C0C0C0;

    range_caption.Interior.Color := $CCFFCC;
    range_caption.Borders[7].Color := $000000;
    range_caption.Borders[8].Color := $000000;
    range_caption.Borders[9].Color := $000000;
    range_caption.Borders[10].Color := $000000;
    range_caption.Borders[11].Color := $000000;
    range_caption.Borders[12].Color := $000000;

    range_footer.Interior.Color := $CCFFCC;
    range_footer.Borders[7].Color := $000000;
    range_footer.Borders[8].Color := $000000;
    range_footer.Borders[9].Color := $000000;
    range_footer.Borders[10].Color := $000000;
    range_footer.Borders[11].Color := $000000;
    range_footer.Borders[12].Color := $000000;


    exWks.Cells.Font.Size := 8;
    exWks.Cells.Font.Name := 'MS Sans Serif';
    exWks.Cells.Rows.AutoFit;

    range.WrapText := False;
//    range.Columns.AutoFit;

    // Ширина колонок расстояние
    exWks.Columns[Client_Columns.RecordCount+2].EntireColumn.AutoFit;
    exWks.Columns[Client_Columns.RecordCount+3].EntireColumn.AutoFit;

    ShowTextMessage('Печать таблицы в Excel...' + #10 + 'Расчет итоговых сумм...', False);
    // Вывести итоги
    Client_Columns.First;
    while not Client_Columns.Eof do begin
      case cxGridView.Columns[Client_Columns.FieldByName('fld_index').AsInteger].Summary.FooterKind of
        skSum  : exWks.Cells[4 + cnt_record - 2, Client_Columns.RecNo + 1].Value := '=SUM(R[-1]C:R[-' + IntToStr(cnt_record-2) + ']C)';
        skCount: exWks.Cells[4 + cnt_record - 2, Client_Columns.RecNo + 1].Value := '=COUNTA(R[-1]C:R[-' + IntToStr(cnt_record-2) + ']C)';
      end;
      Client_Columns.Next;
    end;

    exWks.Range['A1'].Select;
    exApp.Visible := True;
    exWks := Null; exWkb := Null; exApp := Null;
    VarClear(exWks); VarClear(exWkb); VarClear(exApp);
    ShowTextMessage;
  end;

  Client_Columns.Free;
  Client_dist.Free;



  if connect <> nil then connect.Free;
end;
{$ENDREGION 'Вывод таблицы в Эксель'}

procedure FillClient_ShapingRate(var Client_ShapingRate:TClientDataSet;Q:TADODataSet);
begin
  Client_ShapingRate.AutoCalcFields := False;
  Client_ShapingRate['set_insert'] := False;
  Client_ShapingRate['set_update'] := False;
  Client_ShapingRate['set_delete'] := False;
  Client_ShapingRate['shaping_rate_id'] := Q['shaping_rate_id'];
  Client_ShapingRate['ed_izm_id'] := Q['ed_izm_id'];
  Client_ShapingRate['currency_id'] := Q['currency_id'];
  Client_ShapingRate['currency_val'] := Q['currency_val'];
  Client_ShapingRate['base'] := Q['base'];
  Client_ShapingRate['brief_name'] := Q['brief_name'];
  Client_ShapingRate['shaping_rate_val'] := Q['shaping_rate_val'];
  Client_ShapingRate['shaping_kargo_capacity'] := Q['shaping_kargo_capacity'];
  Client_ShapingRate['ed_izm_name'] := Q['ed_izm_name'];
  Client_ShapingRate['ed_izm_cod'] := Q['ed_izm_cod'];
  Client_ShapingRate['node_begin_id'] := Q['node_begin_id'];
  Client_ShapingRate['node_end_id'] := Q['node_end_id'];
  Client_ShapingRate['vid_send'] := Q['vid_send'];
  Client_ShapingRate['min_norm'] := Q['min_norm'];
  Client_ShapingRate['min_norm_name'] := Q['min_norm_name'];
  Client_ShapingRate['type_kontener'] := Q['type_kontener'];
  Client_ShapingRate['type_kontener_name'] := Q['type_kontener_name'];
  Client_ShapingRate['state_begin_id'] := Q['state_begin_id'];
  Client_ShapingRate['state_end_id'] := Q['state_end_id'];
  Client_ShapingRate['state_begin_name'] := Q['state_begin_name'];
  Client_ShapingRate['state_end_name'] := Q['state_end_name'];
  Client_ShapingRate['node_begin_name'] := Q['node_begin_name'];
  Client_ShapingRate['node_end_name'] := Q['node_end_name'];
  Client_ShapingRate['node_begin_cod'] := Q['node_begin_cod'];
  Client_ShapingRate['node_end_cod'] := Q['node_end_cod'];
  Client_ShapingRate['node_border_in'] := Q['node_border_in'];
  Client_ShapingRate['node_border_in_name'] := Q['node_border_in_name'];
  Client_ShapingRate['node_border_in_cod'] := Q['node_border_in_cod'];
  Client_ShapingRate['node_border_out'] := Q['node_border_out'];
  Client_ShapingRate['node_border_out_name'] := Q['node_border_out_name'];
  Client_ShapingRate['node_border_out_cod'] := Q['node_border_out_cod'];
  Client_ShapingRate['road_begin_id'] := Q['road_begin_id'];
  Client_ShapingRate['road_end_id'] := Q['road_end_id'];
  Client_ShapingRate['road_begin_name'] := Q['road_begin_name'];
  Client_ShapingRate['road_end_name'] := Q['road_end_name'];
  Client_ShapingRate['num_shaping_rate'] := Q['num_shaping_rate'];
  Client_ShapingRate['bargain_id'] := Q['bargain_id'];

  Client_ShapingRate['contract_agent_id'] := Q['contract_agent_id'];
  Client_ShapingRate['contract_set'] := Q['contract_set'];
  Client_ShapingRate['firm_agent_name_short'] := Q['firm_agent_name_short'];

  Client_ShapingRate['kateg_send'] := Q['kateg_send'];
  Client_ShapingRate['cod_exception'] := Q['cod_exception'];
  Client_ShapingRate['cod_exception_spec'] := Q['cod_exception_spec'];
  Client_ShapingRate['plan_type'] := Q['plan_type'];
  Client_ShapingRate['telegram_num'] := Q['telegram_num'];
  Client_ShapingRate['pay_other_road'] := Q['pay_other_road'];
  Client_ShapingRate['shaping_rate_round_weight'] := Q['shaping_rate_round_weight'];
  Client_ShapingRate['shaping_rate_round_sum'] := Q['shaping_rate_round_sum'];

  Client_ShapingRate['shaping_check_kargo_capacity'] := Q['shaping_check_kargo_capacity'];
  Client_ShapingRate['shaping_kargo_min_norm'] := Q['shaping_kargo_min_norm'];
  Client_ShapingRate['type_raschet'] := Q['type_raschet'];

  Client_ShapingRate['kargoETSNG_id'] := Q['kargoETSNG_id'];
  Client_ShapingRate['kargoETSNG_cod'] := Q['kargoETSNG_cod'];
  Client_ShapingRate['kargoETSNG_name'] := Q['kargoETSNG_name'];
  Client_ShapingRate['kargoETSNG_group_name'] := Q['kargoETSNG_group_name'];

  Client_ShapingRate['kargoETSNG_add_id'] := Q['kargoETSNG_add_id'];
  Client_ShapingRate['kargoETSNG_add_cod'] := Q['kargoETSNG_add_cod'];
  Client_ShapingRate['kargoETSNG_add_name'] := Q['kargoETSNG_add_name'];


  Client_ShapingRate['kargoGNG_id'] := Q['kargoGNG_id'];
  Client_ShapingRate['kargoGNG_cod'] := Q['kargoGNG_cod'];
  Client_ShapingRate['kargoGNG_name'] := Q['kargoGNG_name'];

  Client_ShapingRate['shaping_rate_nds_id'] := Q['shaping_rate_nds_id'];
  Client_ShapingRate['shaping_rate_nds_cod'] := Q['shaping_rate_nds_cod'];
  Client_ShapingRate['set_transport_pay'] := Q['set_transport_pay'];

  Client_ShapingRate['agreement_id'] := Q['agreement_id'];
  Client_ShapingRate['agreement_describe'] := Q['agreement_describe'];
  Client_ShapingRate['agreement_note'] := Q['agreement_note'];

  Client_ShapingRate['exchange_USD_val'] := Q['exchange_USD_val'];
  Client_ShapingRate['exchange_EUR_val'] := Q['exchange_EUR_val'];
  Client_ShapingRate['exchange_CHF_val'] := Q['exchange_CHF_val'];

  Client_ShapingRate['type_calc_sum']   := Q['type_calc_sum'];
  Client_ShapingRate['set_include_nds'] := Q['set_include_nds'];


  Client_ShapingRate['set_return'] := Q['set_return'];
  Client_ShapingRate['return_id'] := Q['return_id'];
  Client_ShapingRate['return_name'] := Q['return_name'];
  if Q['set_self_rate'] = null then
    Client_ShapingRate['set_self_rate'] := 0
  else
    Client_ShapingRate['set_self_rate'] := Q['set_self_rate'];

  Client_ShapingRate['budget_id']  := Q['budget_id'];
  Client_ShapingRate['budget_name']:= Q['budget_name'];
  Client_ShapingRate['budget_cod'] := Q['budget_cod'];

  Client_ShapingRate.AutoCalcFields := True;
end;

function RoundFactWeight(type_round:byte;  weight :double; naliv :boolean;
                         check_kargo_capacity:boolean;kargo_min_norm, kargo_capacity : double) : double;
var result_weight : double;
begin
  case type_round of
  // по прейчкуранту 10-01
    0 : begin
             // округляем до целого
        if int(weight)<>weight then result_weight := int(weight) + 1
        else result_weight := weight;
             // минимальная норма грузоподъемности
        end;
  // по тарифной политике
    1 : begin
        if (weight - int(weight))<0.5 then result_weight := int(weight)
        else result_weight := int(weight) + 1;
        if not naliv then result_weight := MVRN(result_weight);
        end;
  // по фактическому весу
    2 : result_weight := weight;
  // математическое округление до полных тонн
    3 : begin
        if (weight - int(weight))<0.5 then result_weight := int(weight)
        else result_weight := int(weight) + 1;
        end;
  end;
  if (kargo_min_norm <> 0) AND (result_weight < kargo_min_norm) then result_weight := kargo_min_norm;
  if (check_kargo_capacity) then result_weight := kargo_capacity;
  result := result_weight;
end;

function MVRN(weight : single) : integer;
begin
  if (weight=11) then begin result := 11; exit; end;
  if (weight=12) then begin result := 12; exit; end;
  if (weight=16) then begin result := 16; exit; end;
  if (weight=21) then begin result := 21; exit; end;
  if (weight=22) then begin result := 22; exit; end;
  if (weight=23) then begin result := 23; exit; end;
  if (weight=26) then begin result := 26; exit; end;
  if (weight=31) then begin result := 31; exit; end;
  if (weight=36) then begin result := 36; exit; end;
  if (weight=46) then begin result := 46; exit; end;
  if (weight=51) then begin result := 51; exit; end;
  if (weight>60) then begin result := Round(int(weight)); exit; end;

  if (weight<=12) then begin result := 10; exit; end;
  if (weight>=13) AND (weight<=16) then begin result := 15; exit; end;
  if (weight>=17) AND (weight<=23) then begin result := 20; exit; end;
  if (weight>=24) AND (weight<=26) then begin result := 25; exit; end;
  if (weight>=27) AND (weight<=31) then begin result := 30; exit; end;
  if (weight>=32) AND (weight<=36) then begin result := 35; exit; end;
  if (weight>=37) AND (weight<=40) then begin result := 40; exit; end;
  if (weight>=41) AND (weight<=46) then begin result := 45; exit; end;
  if (weight>=47) AND (weight<=51) then begin result := 50; exit; end;
  if (weight>=52) AND (weight<=55) then begin result := 55; exit; end;
  if (weight>=56) then begin result := 60; exit; end;
end;

function Rate_MVRN(weight : single) : integer;
begin
  if (weight<=12) then begin result := 10; exit; end;
  if (weight>=13) AND (weight<=16) then begin result := 15; exit; end;
  if (weight>=17) AND (weight<=23) then begin result := 20; exit; end;
  if (weight>=24) AND (weight<=26) then begin result := 25; exit; end;
  if (weight>=27) AND (weight<=31) then begin result := 30; exit; end;
  if (weight>=32) AND (weight<=36) then begin result := 35; exit; end;
  if (weight>=37) AND (weight<=40) then begin result := 40; exit; end;
  if (weight>=41) AND (weight<=46) then begin result := 45; exit; end;
  if (weight>=47) AND (weight<=51) then begin result := 50; exit; end;
  if (weight>=52) AND (weight<=55) then begin result := 55; exit; end;
  if (weight>=56) AND (weight<=60) then begin result := 60; exit; end;
  if (weight>=61) then begin result := 61; exit; end;

end;

function FindRate(vagon_kont:boolean; Q:TADOQuery; type_round:byte; weight:double) : currency;
var rate : currency;
begin
  if vagon_kont then begin
    if type_round=1 then rate := Rate_MVRN(weight)
    else rate := weight;

    if Q.Locate('set_one', 1, [loCaseInsensitive]) then result := Q.FieldByName('rate_val').AsCurrency
    else if Q.Locate('weight', rate, [loCaseInsensitive]) then result := Q.FieldByName('rate_val').AsCurrency
         else result := -9;

  end else begin
    if Q.Locate('set_one', 1, [loCaseInsensitive]) then result := Q.FieldByName('rate_val').AsCurrency
    else result := -9;
  end;
end;

// сумма прописью
function Calc_mln_RUS(x:longint):string;
var
  str_mln : string;
  mln : integer;
begin
  mln := x div 1000000;
  str_mln := Calc_sot_RUS(mln);

  if ((mln mod 100) IN [11,12,13,14]) then result := str_mln + ' миллионов '
  else if ((mln mod 10) <= 4) and ((mln mod 10) > 1) then result := str_mln+' миллиона '
       else if ((mln mod 10) = 1) then result := str_mln+' миллион '
       else result := str_mln + ' миллионов ';
end;

function Calc_tis_RUS(x:longint):string;
var str_last,str_tis : string;
begin
  str_tis := Calc_sot_RUS(x div 1000);
  if str_tis='два' then str_tis := 'две ';
  if str_tis='один' then str_tis := 'одна';
  str_last := IntToStr(x div 1000);

  if not (((x div 1000) mod 100) IN [11,12]) then
    if (StrToInt(str_last[length(str_last)])=1) or (StrToInt(str_last[length(str_last)])=2) then begin
      Delete(str_tis,length(str_tis)-3,4);
      str_tis := str_tis + var_one_other[StrToInt(str_last[length(str_last)])];
    end;

  if ((x div 1000) mod 100) IN [11,12,13,14] then result := str_tis + ' тысяч '
  else if (StrToInt(str_last[length(str_last)])<=4) and (StrToInt(str_last[length(str_last)])>1) then result := str_tis+' тысячи '
       else if (StrToInt(str_last[length(str_last)])=1) then result := str_tis+' тысяча '
       else result := str_tis + ' тысяч ';
end;

function Calc_sot_RUS(x:longint):string;
var str_sot : string;
begin
  if x<100 then str_sot := Calc_des_RUS(x)
  else str_sot := var_four[(x div 100)]+ ' ' + Calc_des_RUS(x - (x div 100)*100);
  result := str_sot;
end;

function Calc_des_RUS(x:longint):string;
var str_des : string;
begin
  if x < 10 then str_des := Calc_ed_RUS(x);
  if x=10 then str_des := var_three[1];
  if (x>=20) then str_des := var_three[(x div 10)] + ' ' + Calc_ed_RUS(x - (x div 10)*10)
  else if (x<20) and (x>10) then str_des := var_two[(x mod 10)];
  result := str_des;
end;

function Calc_ed_RUS(x:longint):string;
begin
  if x>0 then result := var_one[x]
  else result := '';
end;

function GetSumScript_RUS(Value: string; currency:integer):string;
var zz                    : double;
    ii                    : longint;
    str,str_rub,str_kop,r : string;
    m                     : PChar;
    indx                  : byte;
begin
   zz := StrToFloat(Value);
   if zz<0 then begin
     zz := -1*zz;
     str := '(-) ';
     indx := 4;
   end else begin
     str := '';
     indx := 0;
   end;
   ii := Trunc(zz);

   if (ii div 1000000)<>0 then str := Calc_mln_RUS(ii);
   //if (ii mod 1000000)<>0 then
   if ((ii mod 1000000) div 1000)<>0 then str := str + Calc_tis_RUS(ii mod 1000000);
   str := str + Calc_sot_RUS(ii mod 1000);
   if ii = 0 then str := str + 'ноль';

   str_rub := IntToStr(ii mod 100);
   if (ii mod 100) IN [11,12,13,14] then r := ' рублей '
   else if (StrToInt(str_rub[length(str_rub)])<=4) and (StrToInt(str_rub[length(str_rub)])>1) then r := ' рубля '
        else if (StrToInt(str_rub[length(str_rub)])=1) then r := r + ' рубль '
        else r := r + ' рублей ';
//--------------------
   str_kop := Format('%.2f',[zz]);
   Delete(str_kop,1,length(str_kop)-2);
   case currency of
     3 : str := str + r + str_kop + ' коп.';
     1 : str := str + ' и ' + str_kop + '/100 долларов США';
     6 : str := str + ' и ' + str_kop + '/100 евро (EUR)';
     5 : str := str + ' и ' + str_kop + '/100 CHF';
     14 : str := str + ' и ' + str_kop + '/100 тенге';
   end;
   // С большой буквы
   str := Trim(str);
   m := PChar(str);
   m[indx] := Chr(Ord(m[indx])-32);
   result := str;
end;


// английский вариант прописи
function Calc_mln_ENG(x:longint):string;
begin
  result := Calc_sot_ENG(x div 1000000) + ' million ';
end;

function Calc_tis_ENG(x:longint):string;
begin
  result := Calc_sot_ENG(x div 1000) + ' thousand ';
end;

function Calc_sot_ENG(x:longint):string;
var str_sot : string;
begin
  if x<100 then str_sot := Calc_des_ENG(x)
  else str_sot := var_one_ENG[(x div 100)] + ' hundred ' + Calc_des_ENG(x - (x div 100)*100);
  result := str_sot;
end;

function Calc_des_ENG(x:longint):string;
var str_des : string;
begin
  if x < 10 then str_des := Calc_ed_ENG(x);
  if x=10 then str_des := var_three_ENG[1];
  if (x>=20) then str_des := var_three_ENG[(x div 10)] + ' ' + Calc_ed_ENG(x - (x div 10)*10)
  else if (x<20) and (x>10) then str_des := var_two_ENG[(x mod 10)];
  result := str_des;
end;

function Calc_ed_ENG(x:longint):string;
begin
  if x>0 then result := var_one_ENG[x]
  else result := '';
end;

function GetSumScript_ENG(Value: string; currency : integer):string;
var zz                    : double;
    ii                    : longint;
    str, str_kop          : string;
    m                     : PChar;
    indx                  : byte;
begin
   zz := StrToFloat(Value);
   if zz<0 then begin
     zz := -1*zz;
     str := '(-) ';
     indx := 4;
   end else begin
     str := '';
     indx := 0;
   end;
   ii := Trunc(zz);

   if (ii div 1000000)<>0 then str := Calc_mln_ENG(ii);
   //if (ii mod 1000000)<>0 then
   if ((ii mod 1000000) div 1000)<>0 then str := str + Calc_tis_ENG(ii mod 1000000);
   str := str + Calc_sot_ENG(ii mod 1000);

   str_kop := Format('%.2f',[zz]);
   Delete(str_kop,1,length(str_kop)-2);
   case currency of
     1 : str := str + ' and ' + str_kop + '/100 USD';
     3 : str := str + ' and ' + str_kop + '/100 RUB';
     6 : str := str + ' and ' + str_kop + '/100 EUR';
    13 : str := str + ' and ' + str_kop + '/100 CNY';
   end;
   result := str;

end;

{
procedure LoadFromExcel_date_delivery_GPT(cxGridView: TcxGridDBBandedTableView);
var file_name           : string;
    exApp, exWkb, exWks : OleVariant;
    i, row              : integer;
    Q_Bargain, Q        : TADOQuery;
           Client_Excel : TClientDataSet;
      SP_UpdateFactDate : TADOStoredProc;
            OpenDialog1 : TOpenDialog;
begin
  Q := TADOQuery.Create(nil);
  Q.Connection := TADODataSet(cxGridView.DataController.DataSet).Connection;

  for row := 0 to cxGridView.Controller.SelectedRowCount-1 do begin

    Q.Close;
    Q.SQL.Clear;
    Q.SQL.Add('SELECT cast(dbo.func_CheckCloseBargain('+IntToStr(cxGridView.Controller.SelectedRows[row].Values[cxGridView.GetColumnByFieldName('bargain_id').Index]) + ') as integer) as set_contract_close');
    Q.Open;

    if Q.FieldByName('set_contract_close').AsInteger = 1 then begin
      Application.MessageBox('Договор закрыт!', 'Ошибка', MB_ICONSTOP or MB_OK);
      Exit;
    end;
  end;
  Q.Free;

  OpenDialog1 := TOpenDialog.Create(nil);
  OpenDialog1.Filter := 'Excel файлы|*.xls';
  OpenDialog1.DefaultExt := 'xls';
  if OpenDialog1.Execute then begin
    SP_UpdateFactDate := TADOStoredProc.Create(nil);
    SP_UpdateFactDate.Connection := TADODataSet(cxGridView.DataController.DataSet).Connection;
    SP_UpdateFactDate.ProcedureName := 'sp_GPT_fact_date_delivery_update;1';
    SP_UpdateFactDate.Parameters.Refresh;

    Client_Excel := TClientDataSet.Create(nil);
    Client_Excel.FieldDefs.Add('tmp_id',ftAutoInc);
    Client_Excel.FieldDefs.Add('num_document',ftString,10);
    Client_Excel.FieldDefs.Add('date_delivery',ftDate);
    Client_Excel.FieldDefs.Add('num_vagon',ftInteger);
    Client_Excel.CreateDataSet();

    file_name := OpenDialog1.FileName;
    OpenDialog1.Free;

    ShowTextMessage('Запуск сервера автоматизации...',False);

    exApp := CreateOleObject('Excel.Application');
    exWkb := exApp.Workbooks.Open(file_name);
    exWkb := exApp.ActiveWorkbook;
    exWks := exWkb.WorkSheets[1];

    // ---------------- Запись данных в ClientDataSet из Excel ---------------------------------
    i := 2;
    Client_Excel.Open;
    while True do begin
      if (TVarData(exWks.Cells[i, 7].Value).VType = varEmpty) then
        break
      else begin
        try
          Client_Excel.Append;
          Client_Excel.FieldByName('num_document').AsString := exWks.Cells[i, 5].Value;
          Client_Excel.FieldByName('date_delivery').AsDateTime := StrToDate(exWks.Cells[i, 6].Value);
          Client_Excel.FieldByName('num_vagon').AsInteger := StrToInt(exWks.Cells[i, 7].Value);
          Client_Excel.Post;
        except
          // Произошла ошибка при импорте из Excel файла. Все закрываем и выходим из процедуры
          Application.MessageBox(PChar('Ошибка в Excel файле. Строка №'+IntToStr(i)+'.'), 'Ошибка', MB_OK or MB_ICONSTOP);
          Q_Bargain.Close; Q_Bargain.Free;
          Client_Excel.Close; Client_Excel.Free;
          exApp.Quit;
          VarClear(exWkb); VarClear(exApp); VarClear(exWks);
          Screen.Cursor := crDefault;
          ShowTextMessage();
          exit;
        end;
      end;
      ShowTextMessage('Загрузка данных из Excel'+#10#13+'Обработано строк '+IntToStr(i-1), False);
      i := i + 1;
    end;

    // -----------------------------------------------------------------------------
    for row := 0 to cxGridView.Controller.SelectedRowCount-1 do begin

      Client_Excel.First;
      while not Client_Excel.Eof do begin
        ShowTextMessage('Перевозка '+IntToStr(row+1)+' из '+ IntToStr(cxGridView.Controller.SelectedRowCount)+#10#13+
                         'Вагон '+IntToStr(Client_Excel.RecNo)+' из '+IntToStr(Client_Excel.RecordCount), False);
        SP_UpdateFactDate.Parameters.Refresh;
        SP_UpdateFactDate.Parameters.ParamByName('@bargain_id').Value := cxGridView.Controller.SelectedRows[row].Values[cxGridView.GetColumnByFieldName('bargain_id').Index];
        SP_UpdateFactDate.Parameters.ParamByName('@num_document').Value := Client_Excel.FieldByName('num_document').AsString;
        SP_UpdateFactDate.Parameters.ParamByName('@date_delivery').Value := Client_Excel.FieldByName('date_delivery').AsDateTime;
        SP_UpdateFactDate.Parameters.ParamByName('@num_vagon').Value := Client_Excel.FieldByName('num_vagon').AsInteger;
        SP_UpdateFactDate.ExecProc;
        Client_Excel.Next;
      end;
    end;

    exApp.Quit;
    VarClear(exWks); VarClear(exWkb); VarClear(exApp);
    SP_UpdateFactDate.Free;
    Client_Excel.Free;
    Screen.Cursor := crDefault;
    ShowTextMessage();
    Application.MessageBox('Информация добавлена успешно.', 'Сообщение', MB_OK or MB_ICONINFORMATION);
  end;
end;
}

procedure PrintActRusCoal(str_bargain_id: string; d1, d2: TDateTime; type_report: integer; conn: TADOConnection);
var         exApp, exWkb, exWks : Variant;
                 Fdate1, Fdate2 : TDateTime;
             SP_Report_rus_coal : TADOStoredProc;
                       line_cnt : integer;
                  Query_Bargain : TADOQuery;
                set_nds_bitmask : byte;
begin
  fmPeriod := TfmPeriod.Create(Application, d1, d2, 1);
  if fmPeriod.ShowModal=mrOK then begin
    Fdate1 := fmPeriod._GetDateBegin;
    Fdate2 := fmPeriod._GetDateEnd;
  end else exit;

  Screen.Cursor := crHourglass;

  ShowTextMessage('Формирование отчёта...', False);

  Query_Bargain := TADOQuery.Create(nil);
  Query_Bargain.Connection := conn;
  Query_Bargain.SQL.Add('SELECT * FROM view_bargain_rights WHERE bargain_id in (' + str_bargain_id + ')');
  Query_Bargain.Open;

  case type_report of
    0: begin
        set_nds_bitmask := 0;
        while not Query_Bargain.Eof do begin
          if Query_Bargain.FieldByName('bargain_nds_cod').IsNull then
            set_nds_bitmask := set_nds_bitmask or 1 // Без НДС
          else
            if Query_Bargain.FieldByName('bargain_nds_cod').AsString = '0' then
              set_nds_bitmask := set_nds_bitmask or 2 // НДС = 0%
            else
              set_nds_bitmask := set_nds_bitmask or 4; // НДС = 18%
          Query_Bargain.Next;
        end;
        Query_Bargain.First;

        if (set_nds_bitmask in [3, 5, 6, 7]) then begin
          ShowMessage('Акт не сформирован!' + #10 + 'Выбраны перевозки с различными ставками НДС!');
          ShowTextMessage();
          Screen.Cursor := crDefault;
          Exit;
        end;

       end;
  end;

  SP_Report_rus_coal := TADOStoredProc.Create(nil);
  SP_Report_rus_coal.Connection := conn;
  SP_Report_rus_coal.ProcedureName := 'sp_Report_rus_coal;1';
  SP_Report_rus_coal.Parameters.Refresh;
  SP_Report_rus_coal.Parameters.ParamByName('@str_bargain_id').Value := str_bargain_id;
  SP_Report_rus_coal.Parameters.ParamByName('@date_begin').Value := Fdate1;
  SP_Report_rus_coal.Parameters.ParamByName('@date_end').Value   := Fdate2;
  SP_Report_rus_coal.Open;

  ShowTextMessage('Запуск Excel...', False);
  exApp := CreateOleObject('Excel.Application');
  exWkb := exApp.Workbooks.Add(GetDocBlob(conn, 15)); // 'Акт_Русский_уголь.xls'
  exWkb := exApp.ActiveWorkbook;
  exWks := exWkb.WorkSheets[1];


  exWks.Range['D5'].Value := 'между ' + Query_Bargain.FieldByName('firm_self_name_short').AsString + ' и ' + Query_Bargain.FieldByName('firm_customer_name_short').AsString;
  exWks.Range['D6'].Value := 'по Договору № ' + Query_Bargain.FieldByName('contract_cod').AsString + ' от ' + Query_Bargain.FieldByName('contract_date_begin').AsString;
  case type_report of
    0 : exWks.Range['D6'].Value := exWks.Range['D6'].Value + 'г. в части возмещения за ж.д. тариф';
    1 : exWks.Range['D6'].Value := exWks.Range['D6'].Value + 'г. в части услуг по перевозкам';
  end;
  exWks.Range['D7'].Value := 'за период с ' + FormatDateTime('dd.mm.yyyy',Fdate1) + 'г. по ' + FormatDateTime('dd.mm.yyyy',Fdate2) + 'г.';
  exWks.Range['B11'].Value:= '1. Организация перевозок каменного угля со станции ' +
                             Query_Bargain.FieldByName('node_begin_name').AsString + ' до станции ' +
                             Query_Bargain.FieldByName('node_end_name').AsString + ' за период с ' + FormatDateTime('dd.mm.yyyy',Fdate1) + 'г. по ' + FormatDateTime('dd.mm.yyyy',Fdate2) + 'г. ' +
                             'в соответсвии с договором № ' + Query_Bargain.FieldByName('contract_cod').AsString + ' от ' + Query_Bargain.FieldByName('contract_date_begin').AsString + 'г. ' +
                             ':'; // к указанному договору


  exWks.Range['B25'].Value:= Query_Bargain.FieldByName('firm_self_name_short').AsString;
  exWks.Range['F25'].Value:= Query_Bargain.FieldByName('firm_customer_name_short').AsString;


  line_cnt := 14;

  // Если нет НДС меняем формулу
  if (set_nds_bitmask and 3) > 0 then begin
    exWks.Range['E'+IntToStr(line_cnt)  ].Value := '=ROUND(RC[-1]*RC[-2],2)';
    exWks.Range['F'+IntToStr(line_cnt)  ].Value := '0';
    exWks.Range['E'+IntToStr(line_cnt+1)].Value := '=ROUND(RC[-1]*RC[-2],2)';
    exWks.Range['F'+IntToStr(line_cnt+1)].Value := '0';
  end;

  while not SP_Report_rus_coal.Eof do begin
    exWks.Rows[IntToStr(line_cnt)].Copy;
    exWks.Rows[IntToStr(line_cnt+1)].Insert;

    case type_report of
      0 : if SP_Report_rus_coal.FieldByName('set_fact_users_comment').AsBoolean then exWks.Range['B'+IntToStr(line_cnt)].Value := 'Возмещение расходов за ж.д. по обеспечению перевозки каменного угля марки АШэнерг'
          else exWks.Range['B'+IntToStr(line_cnt)].Value := 'Возмещение расходов за ж.д. по обеспечению перевозки каменного угля марки АШ';
      1 : exWks.Range['B'+IntToStr(line_cnt)].Value := 'Услуги по перевозке угля в собственных/арендованных вагонах.';
    end;

    exWks.Range['C'+IntToStr(line_cnt)].Value := SP_Report_rus_coal.FieldByName('client_weight').AsFloat;
    exWks.Range['D'+IntToStr(line_cnt)].Value := SP_Report_rus_coal.FieldByName('client_rate').AsCurrency;

    line_cnt := line_cnt + 1;
    SP_Report_rus_coal.Next;
  end;
  exWks.Rows[IntToStr(line_cnt)].Delete;
  exWks.Rows[IntToStr(line_cnt)].Delete;

  Query_Bargain.Free;
  SP_Report_rus_coal.Free;
  exWks.Range['A1'].Select;
  exApp.CutCopyMode := False;

  Screen.Cursor := crDefault;
  ShowTextMessage();
  exApp.Visible := True;
  VarClear(exWks); VarClear(exWkb); VarClear(exApp);
end;


function CreatefmAgree(bargain_id, users_owner_id : integer; date_period : TDateTime) : boolean;
begin
  Screen.Cursor := -11;
  fmAgree2 := TfmAgree2.Create(Application, True);
  fmAgree2.SP_Agree.Close;
  fmAgree2.SP_Agree.Parameters.ParamByName('@date_begin').Value := StartOfTheMonth(date_period);
  fmAgree2.SP_Agree.Parameters.ParamByName('@date_end').Value := EndOfTheMonth(date_period);
  fmAgree2.SP_Agree.Parameters.ParamByName('@users_owner_id').Value := users_owner_id;
  fmAgree2.SP_Agree.Open;

  fmAgree2.cxGrid1DBBandedTableView1.Controller.ClearSelection;
  fmAgree2.PeriodDate1 := StrToDate('01'+ FormatSettings.DateSeparator + FormatDateTime('m', date_period)+ FormatSettings.DateSeparator + FormatDateTime('yyyy', date_period)); //-dr-
  fmAgree2.PeriodDate2 := IncMonth(fmAgree2.Fdate1, 1) - 1;

  Result := fmAgree2.cxGrid1DBBandedTableView1.DataController.LocateByKey(bargain_id);
  fmAgree2.cxGrid1DBBandedTableView1.DataController.SelectRows(fmAgree2.cxGrid1DBBandedTableView1.Controller.FocusedRowIndex, fmAgree2.cxGrid1DBBandedTableView1.Controller.FocusedRowIndex);

  fmAgree2.dxBarButton2.Down := True;
  fmAgree2.dxBarButton8.Down := True;
  fmAgree2.dxBarButton2Click(fmAgree2.dxBarButton2);
  Screen.Cursor := crDefault;
end;


//function GetExchange(connect: TADOConnection; _curr_id: integer; _date: TDatetime; exchange_day: boolean = False) : double;
//var Q : TADOQuery;
//begin
//  Q := TADOQuery.Create(nil);
//  Q.Connection := connect;
//
//  if (not exchange_day) then begin
//    Q.SQL.Add('SELECT TOP 1 * FROM view_exchange WHERE FLOOR(convert(float, exchange_date))<=FLOOR(convert(float, :exchange_date))  AND currency_id=:currency_id AND exchange_day=0 ORDER BY exchange_date DESC');
//    Q.Parameters.ParamByName('exchange_date').Value := _date;
//    Q.Parameters.ParamByName('currency_id').Value := _curr_id;
//    Q.Open;
//    if Q.Eof then result := 1
//    else result := Q.FieldByName('exchange_val_USD').Value;
//  end else begin
//    Q.SQL.Add('SELECT TOP 1 * FROM view_exchange WHERE dbo.func_DateOnly(exchange_date)=dbo.func_DateOnly(:exchange_date)  AND currency_id=:currency_id AND exchange_day=1');
//    Q.Parameters.ParamByName('exchange_date').Value := _date;
//    case _curr_id  of
//      1 : Q.Parameters.ParamByName('currency_id').Value := 3;
//      3 : Q.Parameters.ParamByName('currency_id').Value := _curr_id;
//      6 : Q.Parameters.ParamByName('currency_id').Value := _curr_id;
//    end;
//    Q.Open;
//    if Q.Eof then result := 0
//    else result := Q.FieldByName('exchange_val_USD').Value;
//  end;
//
//  Q.Free;
//end;

 { ---  работа с TcxGrid (начало блока) --- }
   // заполняет AList списком значений поля с именем AFieldName,
   // из строк, которые выделены(подсвечены) в AGrid, OnlyUnique - флаг заполнения списка только уникальными значениями
{НА УДАЛЕНИЕ}
procedure cx_GetSelectedValues(AList: TStringList; AGrid: TcxGrid; AFieldName: string; OnlyUnique: boolean);
var
                i : integer;
  ColumnItemIndex : integer;
        ARowIndex : Integer;
         ARowInfo : TcxRowInfo;
            Value : string;
begin
  // получаем список выделенных в гриде строк
  // и формируем StringList со значениями конкретного поля из этих строк
  with TcxGridDBBandedTableView(AGrid.ActiveView).DataController do
    for i:=0 to GetSelectedCount - 1 do begin
      ARowIndex := GetSelectedRowIndex(i);
      ARowInfo := GetRowInfo(ARowIndex);
      if ARowInfo.Level < Groups.GroupingItemCount then
        Continue
      else begin
        ColumnItemIndex :=GetItemByFieldName(AFieldName).Index;
        Value := VarToStr(GetRowValue(ARowInfo, ColumnItemIndex));
        if OnlyUnique then begin //фильтруем только уникальные значение
          if (AList.IndexOf(Value) = -1) then AList.Add(Value)
        end else
          AList.Add(Value);
      end;
    end; {for}
end;

// возвращает строку вида 'Value1, Value2,..ValueN' с перечислением значений поля AFieldName через запятую
// значения берутся из записей, выделенных(подствеченных) пользователем в AGrid

function cx_GetSelectedValues(AGrid: TcxGrid; AFieldName: string): string; overload;
var
  i,ColumnItemIndex,ARowIndex: Integer;
  ARowInfo: TcxRowInfo;
  Value: string;
begin
  Result := '';
  with TcxGridDBBandedTableView(AGrid.ActiveView).DataController do
    for i:=0 to GetSelectedCount - 1 do begin
      ARowIndex := GetSelectedRowIndex(i);
      ARowInfo := GetRowInfo(ARowIndex);
      if ARowInfo.Level < Groups.GroupingItemCount then
        Continue
      else begin
        ColumnItemIndex :=GetItemByFieldName(AFieldName).Index;
        Value := VarToStr(GetRowValue(ARowInfo, ColumnItemIndex));
        if i < (GetSelectedCount - 1) then
          Result := Result + Value + ','
        else
          Result := Result + Value;
      end;
    end; {for}
end;

   // получаем значение поля с именем AFieldName текущей записи в AGrid
function cx_GetSelectedValue(AGrid: TcxGrid; AFieldName: string): Variant;
var ARowIndex: Integer;
    ARowInfo: TcxRowInfo;
    ColumnItemIndex: integer;
begin
  with TcxGridDBBandedTableView(AGrid.ActiveView).DataController do
  begin
    if GetSelectedCount <= 0 then
    begin
      result := null;
      exit;
    end;
    ARowIndex := GetSelectedRowIndex(0);
    ARowInfo := GetRowInfo(ARowIndex);
    if ARowInfo.Level < Groups.GroupingItemCount then
    begin
      result := null;
      exit;
    end;
    ColumnItemIndex :=GetItemByFieldName(AFieldName).Index;
    result := GetRowValue(ARowInfo, ColumnItemIndex)
  end;
end;

procedure PrintFrahtCardWeight_Multi2(conn: TADOConnection; str_bargain_id: string);
var Q_bargain            : TADOQuery;
    Q_sub                : TADOQuery;
    Q_fact, Q_rate       : TADOQuery;
    Q_agent, Q_fraht     : TADOQuery;
    Q_vagon              : TADOQuery;
    exApp, exWkb, exWks  : variant;
    exWks_main           : variant;
    column_agent         : integer;
    cnt_columns, column_len : integer;
    sp_fact_by_rate_SAVE : TADOStoredProc;
    cnt_vagon, row_seek  : integer;
    barcode              : TmyBarCode;
    users_group_cod      : string;
begin

  users_group_cod := GetIDFromSQL('SELECT	inf_obj_cod as users_group_cod FROM	users INNER JOIN inf_obj on users.users_group_id = inf_obj.inf_obj_id WHERE users_name = system_user', conn);

  Q_bargain := TADOQuery.Create(nil);
  Q_bargain.Connection := conn;
  Q_bargain.SQL.Add('SELECT * FROM view_bargain_rights WHERE bargain_id in (SELECT cod FROM dbo.StrToTbl(''' + str_bargain_id + ''', default))');
  Q_bargain.Open;

  Q_sub := TADOQuery.Create(nil);
  Q_sub.Connection := conn;

  Q_agent := TADOQuery.Create(nil);
  Q_agent.Connection := conn;

  Q_fact := TADOQuery.Create(nil);
  Q_fact.Connection := conn;

  Q_rate := TADOQuery.Create(nil);
  Q_rate.Connection := conn;

  Q_fraht := TADOQuery.Create(nil);
  Q_fraht.Connection := conn;

  Q_Vagon := TADOQuery.Create(nil);
  Q_Vagon.Connection := conn;

  exApp := CreateOleObject('Excel.Application');
  exWkb := exApp.Workbooks.Add(GetDocBlob(conn, 998));
  exWkb := exApp.ActiveWorkbook;
  exWks_main := exWkb.WorkSheets[1];
  exApp.ActiveWindow.DisplayGridlines := False;
//  exApp.Visible := True;
  column_agent  := 3;


  Q_bargain.First;
  while not Q_bargain.Eof do begin


    // Для проверки рода ПС
    Q_Vagon.Close;
    Q_Vagon.SQL.Clear;
    Q_Vagon.SQL.Add('DECLARE @users_group_id int;');
    Q_Vagon.SQL.Add('SELECT @users_group_id = users_group_id FROM users WHERE users_name = SYSTEM_USER;');
    Q_Vagon.SQL.Add('');
    Q_Vagon.SQL.Add('SELECT DISTINCT view_vagon.rod_vagon_name');
    Q_Vagon.SQL.Add('FROM fact JOIN view_vagon');
    Q_Vagon.SQL.Add('ON fact.num_vagon = view_vagon.num_vagon');
    Q_Vagon.SQL.Add('AND view_vagon.users_group_id = @users_group_id');
    Q_Vagon.SQL.Add('AND fact.bargain_id = ' + Q_bargain.FieldByName('bargain_id').AsString);
    Q_Vagon.SQL.Add('AND fact.set_main = 1');
    Q_Vagon.SQL.Add('AND view_vagon.rod_vagon_name is not null');
    Q_Vagon.Open;


     // Предупреждение или сохранение (если все ОК)
    if (Q_bargain['date_period_finance']<>NULL) OR (Q_bargain.FieldByName('set_bargain_block').AsBoolean) then begin
      // Перевозка закрыта
      Application.MessageBox(PChar('Данные по фрахтовой карточке № '+Q_bargain.FieldByName('bargain_cod').AsString+' не будут сохранены! Перевозка закрыта в финансовом месяце'), 'Ошибка', MB_OK+MB_ICONWARNING);
//    end else if ((Q_bargain['agreement_id'] = NULL) AND (Q_bargain['agreement_note'] = NULL)) AND (Q_bargain['date_period'] >= EncodeDate(2009, 3, 1)) then begin
//      // Нет приложение && Перевозочный месяц от марта 2009
//      Application.MessageBox(PChar('Данные по фрахтовой карточке № '+Q_bargain.FieldByName('bargain_cod').AsString+' не будут сохранены! В перевозке не указано приложение'), 'Ошибка', MB_OK+MB_ICONWARNING);
    end else if (Q_bargain['set_bargain_weight'] = NULL) AND (users_group_cod = '0') then begin
      // (Признак "Вес в сводный отчет + только для СФХ)"
      Application.MessageBox(PChar('Данные по фрахтовой карточке № '+Q_bargain.FieldByName('bargain_cod').AsString+' не будут сохранены! В перевозке не указан признак "Вес для сводного отчёта"'), 'Ошибка', MB_OK+MB_ICONWARNING);
    end else if (Q_Vagon.RecordCount > 1) then begin
      // (Род ПС должен быть одинаковый у всех вагонов)"
      Application.MessageBox(PChar('Данные по фрахтовой карточке № '+Q_bargain.FieldByName('bargain_cod').AsString+' не будут сохранены! Использование вагонов с различным родом ПС в одной перевозке невозможно'), 'Ошибка', MB_OK+MB_ICONWARNING);
    end else begin
      // Все ОК - сохраняем
      ShowTextMessage('Сохранение фрахтовой карточки...', False);
      sp_fact_by_rate_SAVE := TADOStoredProc.Create(nil);
      sp_fact_by_rate_SAVE.Connection := conn;
      sp_fact_by_rate_SAVE.ProcedureName := 'sp_fact_by_rate_SAVE';
      sp_fact_by_rate_SAVE.Parameters.Refresh;
      sp_fact_by_rate_SAVE.Parameters.ParamByName('@bargain_id').Value := Q_bargain.FieldByName('bargain_id').Value;
      try
        sp_fact_by_rate_SAVE.ExecProc;
      except
      end;
      sp_fact_by_rate_SAVE.Free;
    end;

    ShowTextMessage('Идет вывод фрахтовой карточки: '+IntToStr(Q_bargain.RecNo)+' из '+IntToStr(Q_bargain.RecordCount)+#13#10+ 'Подождите пожалуйста...', False);

    exWks := exWkb.Sheets.Add;
    exWks.Name := Q_bargain.FieldByName('bargain_id').AsString;
    exWks_main.Rows['1:30'].Copy;
    exWks.Rows['1:30'].PasteSpecial(1);

    exWks.Range['B2'].Value := 'ФРАХТОВАЯ КАРТОЧКА ('+Q_Bargain.FieldByNAme('bargain_cod').AsString+')';
    exWks.Range['I2'].Value := '''' + GetInvoiceFromBargain(Q_Bargain.Connection, Q_Bargain.FieldByName('bargain_id').AsInteger);
    exWks.Range['D3'].Value := Q_Bargain.FieldByName('kargoETSNG_name').AsString + ' (ЕТСНГ '+Q_Bargain.FieldByName('kargoETSNG_cod').AsString+')';
    exWks.Range['D4'].Value := Q_Bargain.FieldByName('firm_customer_name_short').AsString;
    exWks.Range['G6'].Value := Q_Bargain.FieldByName('firm_customer_name_short').AsString + #10 + 'НДС:' + Q_Bargain.FieldByName('bargain_nds_name').AsString;
    exWks.Range['D5'].Value := Q_Bargain.FieldByName('node_begin_name').AsString + ' - ' + Q_Bargain.FieldByName('node_end_name').AsString + ' ('+Q_Bargain.FieldByName('vid_transfer_name').AsString+')';

    if not Q_Bargain.FieldByName('custom_id').IsNull then  exWks.Range['D5'].Value := exWks.Range['D5'].Value + ' (Таможня - '+Q_Bargain.FieldByName('custom_name').AsString+')';


    Q_sub.SQL.Clear;
    Q_sub.SQL.Add('SELECT * FROM view_shaping_rate WHERE bargain_id = ' + Q_bargain.FieldByName('bargain_id').AsString + ' ORDER BY service_type, shaping_rate_id');
    Q_sub.Open;

    // Копируем колонки для услуг
    while not Q_sub.Eof do begin
      if Q_sub.RecNo > 1 then begin
        exWks.Columns['G:I'].Copy;
        exWks.Cells[1, 7+column_agent*(Q_sub.RecNo-1)].PasteSpecial(1);
      end;

      exWks.Cells[ 6, 7+column_agent*(Q_sub.RecNo-1)].Value := Q_sub.FieldByName('firm_agent_name_short').AsString + ' ('+ Q_sub.FieldByName('contract_agent_cod').AsString+')' + #10 + 'НДС:' + Q_sub.FieldByName('shaping_rate_nds_name').AsString;
      exWks.Cells[14, 7+column_agent*(Q_sub.RecNo-1)].Value := 'НДС:' + Q_sub.FieldByName('shaping_rate_nds_name').AsString;


      if Q_sub.FieldByName('shaping_rate_nds_cod').IsNull then
        exWks.Cells[7, 8+column_agent*(Q_sub.RecNo-1)].Value := 'Ставка'
      else if Q_sub.FieldByName('set_include_nds').AsBoolean then
        exWks.Cells[7, 8+column_agent*(Q_sub.RecNo-1)].Value := 'Ставка, вкл. НДС'
      else
        exWks.Cells[7, 8+column_agent*(Q_sub.RecNo-1)].Value := 'Ставка, без НДС';


      if Q_sub.FieldByName('shaping_rate_type_id').AsInteger = 2 then begin
        if Q_sub.FieldByName('ed_izm_cod').AsString = '000' then exWks.Cells[7, 7+column_agent*(Q_sub.RecNo-1)].Value := 'Вес';
        if Q_sub.FieldByName('ed_izm_cod').AsString = '001' then exWks.Cells[7, 7+column_agent*(Q_sub.RecNo-1)].Value := 'Контейнер';
        if Q_sub.FieldByName('ed_izm_cod').AsString = '002' then exWks.Cells[7, 7+column_agent*(Q_sub.RecNo-1)].Value := 'Вагон';
        if Q_sub.FieldByName('ed_izm_cod').AsString = '003' then exWks.Cells[7, 7+column_agent*(Q_sub.RecNo-1)].Value := 'Автомобиль';
        if Q_sub.FieldByName('ed_izm_cod').AsString = '004' then exWks.Cells[7, 7+column_agent*(Q_sub.RecNo-1)].Value := 'Вагон/сутки';
        if Q_sub.FieldByName('ed_izm_cod').AsString = '005' then exWks.Cells[7, 7+column_agent*(Q_sub.RecNo-1)].Value := '---';
      end;

      exWks.Cells[11, 8+column_agent*(Q_sub.RecNo-1)].Value := Q_sub.FieldByName('brief_name').AsString;

      if Q_sub.FieldByName('service_type').AsInteger = 0 then
        exWks.Range[exWks.Cells[6,7+column_agent*(Q_sub.RecNo-1)],exWks.Cells[7,7+column_agent*(Q_sub.RecNo-1)+column_agent]].Font.ColorIndex := 3//-4105
      else
        exWks.Range[exWks.Cells[6,7+column_agent*(Q_sub.RecNo-1)],exWks.Cells[7,7+column_agent*(Q_sub.RecNo-1)+column_agent]].Font.ColorIndex := 10;

      Q_sub.Next;
    end;

    Q_sub.First;
    while not Q_sub.Eof do begin
      if Q_sub.FieldByName('set_self_rate').AsBoolean = True then begin
        exWks.Cells[6, 7+column_agent*(Q_sub.RecNo-1)].AddComment;
        exWks.Cells[6, 7+column_agent*(Q_sub.RecNo-1)].Comment.Visible := True;
        exWks.Cells[6, 7+column_agent*(Q_sub.RecNo-1)].Comment.Text('Собственные расходы');
      end;
      Q_sub.Next;
    end;


    Q_fact.SQL.Clear;
    Q_fact.SQL.Add('SELECT	fact_id, date_from_to, datpr, num_vagon, isnull(num_document_pref,'''') + num_document as num_document, fact_weight');
    Q_fact.SQL.Add('FROM	fact');
    Q_fact.SQL.Add('WHERE	set_main = 1 and bargain_id = ' + Q_bargain.FieldByName('bargain_id').AsString);
    Q_fact.SQL.Add('ORDER BY date_from_to, num_vagon');
    Q_fact.Open;
    cnt_vagon := Q_fact.RecordCount;

    Q_rate.SQL.Clear;
    Q_rate.SQL.Add('SELECT	fact_id, client_agent_id, calc_weight, rate_val, sum_fact');
    Q_rate.SQL.Add('FROM	fraht_fact');
    Q_rate.SQL.Add('WHERE	bargain_id = ' + Q_bargain.FieldByName('bargain_id').AsString);
    Q_rate.SQL.Add('ORDER BY client_agent_id, fact_id');
    Q_rate.Open;

    Q_agent.SQL.Clear;
    Q_agent.SQL.Add('SELECT	*');
    Q_agent.SQL.Add('FROM	FRAHT_AGENT');
    Q_agent.SQL.Add('WHERE	shaping_rate_id in (SELECT shaping_rate_id FROM shaping_rate WHERE bargain_id = ' + Q_bargain.FieldByName('bargain_id').AsString + ')');
    Q_agent.Open;


    Q_fraht.SQL.Clear;
    Q_fraht.SQL.Add('SELECT	*');
    Q_fraht.SQL.Add('FROM	  FRAHT_CARD');
    Q_fraht.SQL.Add('WHERE	bargain_id = ' + Q_bargain.FieldByName('bargain_id').AsString);
    Q_fraht.Open;

    // Добавляем вагоны + суммы из услуг
    while not Q_fact.Eof do begin
      ShowTextMessage('Идет вывод фрахтовой карточки: '+IntToStr(Q_bargain.RecNo)+' из '+IntToStr(Q_bargain.RecordCount)+#13#10+ 'Осталось вагонов ' +IntToStr(Q_fact.RecordCount - Q_fact.RecNo )+'. Подождите пожалуйста...', False);
      exWks.Rows[IntToStr(Q_fact.RecNo + 8)].Insert;
      if not Q_fact.FieldByName('date_from_to').IsNull then exWks.Range['B'+IntToStr(7 + Q_fact.RecNo)].Value := FormatDateTime('dd.mm.yy', Q_fact.FieldByName('date_from_to').AsDateTime);
      if not Q_fact.FieldByName('datpr').IsNull then exWks.Range['C'+IntToStr(7 + Q_fact.RecNo)].Value := FormatDateTime('dd.mm.yy', Q_fact.FieldByName('datpr').AsDateTime);
      exWks.Range['D'+IntToStr(7 + Q_fact.RecNo)].Value := Q_fact.FieldByName('num_vagon').AsString;
      exWks.Range['E'+IntToStr(7 + Q_fact.RecNo)].Value := Q_fact.FieldByName('num_document').AsString;
      exWks.Range['F'+IntToStr(7 + Q_fact.RecNo)].Value := StrToFloat(FormatFloat('0.000', Q_fact.FieldByName('fact_weight').AsFloat));

      Q_sub.First;
      while not Q_sub.Eof do begin
        if Q_rate.Locate('fact_id;client_agent_id', VarArrayOf([Q_fact.FieldByName('fact_id').AsInteger, Q_sub.FieldByName('shaping_rate_id').AsInteger]), []) then begin
          exWks.Cells[IntToStr(7 + Q_fact.RecNo), 7 + column_agent*(Q_sub.RecNo-1)].Value := StrToFloat(FormatFloat('0.000', Q_rate.FieldByName('calc_weight').AsFloat));
          exWks.Cells[IntToStr(7 + Q_fact.RecNo), 8 + column_agent*(Q_sub.RecNo-1)].Value := StrToFloat(FormatFloat('0.00', Q_rate.FieldByName('rate_val').AsFloat));
          exWks.Cells[IntToStr(7 + Q_fact.RecNo), 9 + column_agent*(Q_sub.RecNo-1)].Value := StrToFloat(FormatFloat('0.00', Q_rate.FieldByName('sum_fact').AsFloat));
        end;
        Q_sub.Next;
      end;


      Q_fact.Next;
    end;

    // Добавим пустой вагон для вывода абсолютных услуг
    if Q_sub.Locate('shaping_rate_type_id', 2, []) then begin
      exWks.Rows[IntToStr(cnt_vagon + 8)].Insert;
      exWks.Range['E'+IntToStr(7 + cnt_vagon + 1)].Value := 'Доп. сбор';

      Q_sub.First;
      while not Q_sub.Eof do begin
        if Q_sub.FieldByName('shaping_rate_type_id').AsInteger = 2 then begin
          exWks.Cells[IntToStr(7 + cnt_vagon + 1), 7 + column_agent*(Q_sub.RecNo-1)].Value := StrToFloat(FormatFloat('0.000', Q_sub.FieldByName('shaping_rate_count').AsFloat));
          exWks.Cells[IntToStr(7 + cnt_vagon + 1), 8 + column_agent*(Q_sub.RecNo-1)].Value := StrToFloat(FormatFloat('0.00',  Q_sub.FieldByName('shaping_rate_val').AsFloat));
          if Q_agent.Locate('shaping_rate_id', Q_sub.FieldByName('shaping_rate_id').AsInteger, []) then begin
            exWks.Cells[IntToStr(7 + cnt_vagon + 1), 9 + column_agent*(Q_sub.RecNo-1)].Value := StrToFloat(FormatFloat('0.00',  Q_agent.FieldByName('agent_sum_fact_real').AsFloat));
          end;
        end;
        Q_sub.Next;
      end;
      cnt_vagon := cnt_vagon + 1;
    end;

    exWks.Rows[IntToStr(7 + cnt_vagon + 1)].Delete;
    exWks.Rows[IntToStr(7 + cnt_vagon + 1)].Delete;

    // Добавляем ИТОГО
    Q_sub.First;
    while not Q_Sub.Eof do begin

      if Q_agent.Locate('shaping_rate_id', Q_sub.FieldByName('shaping_rate_id').AsInteger, []) then begin
        exWks.Cells[IntToStr(7 + cnt_vagon + 1), 7 + column_agent*(Q_sub.RecNo-1)].Value := StrToFloat(FormatFloat('0',     Q_agent.FieldByName('agent_amount_units_fact').AsFloat));
        exWks.Cells[IntToStr(7 + cnt_vagon + 2), 7 + column_agent*(Q_sub.RecNo-1)].Value := StrToFloat(FormatFloat('0.000', Q_agent.FieldByName('agent_amount_fact_calc').AsFloat));
        exWks.Cells[IntToStr(7 + cnt_vagon + 2), 9 + column_agent*(Q_sub.RecNo-1)].Value := StrToFloat(FormatFloat('0.00',  Q_agent.FieldByName('agent_sum_fact_real').AsFloat));

        exWks.Cells[IntToStr(7 + cnt_vagon + 3), 9 + column_agent*(Q_sub.RecNo-1)].Value := StrToFloat(FormatFloat('0.00',  Q_agent.FieldByName('agent_sum_fact').AsFloat));
        exWks.Cells[IntToStr(7 + cnt_vagon + 4), 9 + column_agent*(Q_sub.RecNo-1)].Value := StrToFloat(FormatFloat('0.00',  Q_agent.FieldByName('agent_sum_fact_RUB').AsFloat));
        exWks.Cells[IntToStr(7 + cnt_vagon + 5), 9 + column_agent*(Q_sub.RecNo-1)].Value := StrToFloat(FormatFloat('0.00',  Q_agent.FieldByName('agent_NDS_RUB').AsFloat));
      end;

      Q_Sub.Next;
    end;


    // Вес+кол-во вагонов
    exWks.Cells[IntToStr(7 + cnt_vagon + 1), 4].Value := StrToFloat(FormatFloat('0',     Q_fraht.FieldByName('amount_units_fact').AsFloat));
    exWks.Cells[IntToStr(7 + cnt_vagon + 1), 6].Value := StrToFloat(FormatFloat('0.000', Q_fraht.FieldByName('fact_weight').AsFloat));

    // ----------Рисуем комиссию RUB - NDS---------------
    row_seek := 7;
    exWks.Cells[row_seek + cnt_vagon + 6, 7 + column_agent * (Q_sub.RecordCount-1)].Value := 'Комиссия без НДС:';
    exWks.Cells[row_seek + cnt_vagon + 6, 8 + column_agent * (Q_sub.RecordCount-1)].Value := 'RUB';
    exWks.Cells[row_seek + cnt_vagon + 6, 9 + column_agent * (Q_sub.RecordCount-1)].Value := StrToFloat(FormatFloat('0.00',  Q_fraht.FieldByName('comiss_notNDS_RUB').AsFloat));
    exWks.Cells[row_seek + cnt_vagon + 6, 9 + column_agent * (Q_sub.RecordCount-1)].NumberFormat := '# ##0,00';
    exWks.Cells[row_seek + cnt_vagon + 6, 7 + column_agent * (Q_sub.RecordCount-1)].HorizontalAlignment := -4152;
    exWks.Cells[row_seek + cnt_vagon + 6, 8 + column_agent * (Q_sub.RecordCount-1)].HorizontalAlignment := -4152;
    exWks.Range[exWks.Cells[row_seek + cnt_vagon + 6, 7+ column_agent * (Q_sub.RecordCount-1)], exWks.Cells[row_seek + cnt_vagon + 6, 9+ column_agent * (Q_sub.RecordCount-1)]].Font.ColorIndex := 5;
    exWks.Range[exWks.Cells[row_seek + cnt_vagon + 6, 7+ column_agent * (Q_sub.RecordCount-1)], exWks.Cells[row_seek + cnt_vagon + 6, 9+ column_agent * (Q_sub.RecordCount-1)]].Font.Bold := 1;

    exWks.Range[exWks.Cells[row_seek + cnt_vagon + 6, 7 + column_agent * (Q_sub.RecordCount-1)], exWks.Cells[row_seek + cnt_vagon + 6, 9+ column_agent * (Q_sub.RecordCount-1)]].Interior.ColorIndex := 36;
    exWks.Range[exWks.Cells[row_seek + cnt_vagon + 6, 7 + column_agent * (Q_sub.RecordCount-1)], exWks.Cells[row_seek + cnt_vagon + 6, 9+ column_agent * (Q_sub.RecordCount-1)]].Borders[7].LineStyle := 1; // left
    exWks.Range[exWks.Cells[row_seek + cnt_vagon + 6, 7 + column_agent * (Q_sub.RecordCount-1)], exWks.Cells[row_seek + cnt_vagon + 6, 9+ column_agent * (Q_sub.RecordCount-1)]].Borders[10].LineStyle := 1;  // right
    exWks.Range[exWks.Cells[row_seek + cnt_vagon + 6, 7 + column_agent * (Q_sub.RecordCount-1)], exWks.Cells[row_seek + cnt_vagon + 6, 9+ column_agent * (Q_sub.RecordCount-1)]].Borders[9].LineStyle := 1;  // bottom
    //---------------------------------------------

    // ----------Рисуем комиссию RUB---------------
    Q_sub.First;
    if Q_sub.FieldByName('ed_izm_cod').AsString = '000' then begin
      row_seek := 7;

      exWks.Cells[row_seek + cnt_vagon + 7, 7 + column_agent * (Q_sub.RecordCount-1)].Value := 'Комиссия за тонну без НДС:';
      exWks.Cells[row_seek + cnt_vagon + 7, 8 + column_agent * (Q_sub.RecordCount-1)].Value := 'RUB';
      exWks.Cells[row_seek + cnt_vagon + 7, 9 + column_agent * (Q_sub.RecordCount-1)].Value := StrToFloat(FormatFloat('0.00',  Q_fraht.FieldByName('comiss_ton_notNDS_RUB').AsFloat));
      exWks.Cells[row_seek + cnt_vagon + 7, 9 + column_agent * (Q_sub.RecordCount-1)].NumberFormat := '# ##0,00';
      exWks.Cells[row_seek + cnt_vagon + 7, 7 + column_agent * (Q_sub.RecordCount-1)].HorizontalAlignment := -4152;
      exWks.Cells[row_seek + cnt_vagon + 7, 8 + column_agent * (Q_sub.RecordCount-1)].HorizontalAlignment := -4152;
      exWks.Range[exWks.Cells[row_seek + cnt_vagon + 7, 7+ column_agent * (Q_sub.RecordCount-1)], exWks.Cells[row_seek + cnt_vagon + 7, 9+ column_agent * (Q_sub.RecordCount-1)]].Font.ColorIndex := 5;
      exWks.Range[exWks.Cells[row_seek + cnt_vagon + 7, 7+ column_agent * (Q_sub.RecordCount-1)], exWks.Cells[row_seek + cnt_vagon + 7, 9+ column_agent * (Q_sub.RecordCount-1)]].Font.Bold := 1;

      exWks.Range[exWks.Cells[row_seek + cnt_vagon + 7, 7 + column_agent * (Q_sub.RecordCount-1)], exWks.Cells[row_seek + cnt_vagon + 7, 9+ column_agent * (Q_sub.RecordCount-1)]].Interior.ColorIndex := 36;
      exWks.Range[exWks.Cells[row_seek + cnt_vagon + 7, 7 + column_agent * (Q_sub.RecordCount-1)], exWks.Cells[row_seek + cnt_vagon + 7, 9+ column_agent * (Q_sub.RecordCount-1)]].Borders[7].LineStyle := 1; // left
      exWks.Range[exWks.Cells[row_seek + cnt_vagon + 7, 7 + column_agent * (Q_sub.RecordCount-1)], exWks.Cells[row_seek + cnt_vagon + 7, 9+ column_agent * (Q_sub.RecordCount-1)]].Borders[10].LineStyle := 1;  // right
      exWks.Range[exWks.Cells[row_seek + cnt_vagon + 7, 7 + column_agent * (Q_sub.RecordCount-1)], exWks.Cells[row_seek + cnt_vagon + 7, 9+ column_agent * (Q_sub.RecordCount-1)]].Borders[9].LineStyle := 1;  // bottom
      end;

    // ----------Рисуем комиссию RUB---------------
    Q_sub.First;
    if Q_sub.FieldByName('ed_izm_cod').AsString = '000' then
      row_seek := 8
    else
      row_seek := 7;

    exWks.Cells[row_seek + cnt_vagon + 7, 7 + column_agent * (Q_sub.RecordCount-1)].Value := 'Комиссия с НДС:';
    exWks.Cells[row_seek + cnt_vagon + 7, 8 + column_agent * (Q_sub.RecordCount-1)].Value := 'RUB';
    exWks.Cells[row_seek + cnt_vagon + 7, 9 + column_agent * (Q_sub.RecordCount-1)].Value := StrToFloat(FormatFloat('0.00',  Q_fraht.FieldByName('bargain_comiss_RUB').AsFloat));
    exWks.Cells[row_seek + cnt_vagon + 7, 9 + column_agent * (Q_sub.RecordCount-1)].NumberFormat := '# ##0,00';
    exWks.Cells[row_seek + cnt_vagon + 7, 7 + column_agent * (Q_sub.RecordCount-1)].HorizontalAlignment := -4152;
    exWks.Cells[row_seek + cnt_vagon + 7, 8 + column_agent * (Q_sub.RecordCount-1)].HorizontalAlignment := -4152;
    exWks.Range[exWks.Cells[row_seek + cnt_vagon + 7, 7+ column_agent * (Q_sub.RecordCount-1)], exWks.Cells[row_seek + cnt_vagon + 7, 9+ column_agent * (Q_sub.RecordCount-1)]].Font.ColorIndex := 5;
    exWks.Range[exWks.Cells[row_seek + cnt_vagon + 7, 7+ column_agent * (Q_sub.RecordCount-1)], exWks.Cells[row_seek + cnt_vagon + 7, 9+ column_agent * (Q_sub.RecordCount-1)]].Font.Bold := 1;

    exWks.Range[exWks.Cells[row_seek + cnt_vagon + 7, 7 + column_agent * (Q_sub.RecordCount-1)], exWks.Cells[row_seek + cnt_vagon + 7, 9+ column_agent * (Q_sub.RecordCount-1)]].Interior.ColorIndex := 36;
    exWks.Range[exWks.Cells[row_seek + cnt_vagon + 7, 7 + column_agent * (Q_sub.RecordCount-1)], exWks.Cells[row_seek + cnt_vagon + 7, 9+ column_agent * (Q_sub.RecordCount-1)]].Borders[7].LineStyle := 1; // left
    exWks.Range[exWks.Cells[row_seek + cnt_vagon + 7, 7 + column_agent * (Q_sub.RecordCount-1)], exWks.Cells[row_seek + cnt_vagon + 7, 9+ column_agent * (Q_sub.RecordCount-1)]].Borders[10].LineStyle := 1;  // right
    exWks.Range[exWks.Cells[row_seek + cnt_vagon + 7, 7 + column_agent * (Q_sub.RecordCount-1)], exWks.Cells[row_seek + cnt_vagon + 7, 9+ column_agent * (Q_sub.RecordCount-1)]].Borders[9].LineStyle := 1;  // bottom
    //---------------------------------------------


//    exWks.Cells[, 9 + column_agent*(Q_sub.RecNo-1)].
    exWks.Rows[IntToStr(7 + cnt_vagon + 3)].Delete;
    exWks.Range[exWks.Cells[7, 2], exWks.Cells[cnt_vagon + 20, 15 + column_agent * Q_sub.RecordCount]].Columns.AutoFit;

    Q_sub.First;
    cnt_columns := 7;
    while not Q_Sub.Eof do begin
      column_len  := 3;

      if Q_sub.FieldByName('set_self_rate').AsBoolean = True then begin
        exWks.Cells[6, cnt_columns].Comment.Shape.Height := 12;
        exWks.Cells[6, cnt_columns].Comment.Shape.Width  := exWks.Range[exWks.Cells[6, cnt_columns], exWks.Cells[6, cnt_columns + column_len - 1]].Width-4;
        exWks.Cells[6, cnt_columns].Comment.Shape.Left   := exWks.Cells[6, cnt_columns].Left+2;
        exWks.Cells[6, cnt_columns].Comment.Shape.Top    := exWks.Cells[6, cnt_columns].Top - exWks.Cells[6, cnt_columns].Height + 10;
      end;

      cnt_columns := cnt_columns + column_len;
      Q_sub.Next;
    end;

    exApp.CutCopyMode := False;
    exWks.Range['A1'].Select;

    // ------------------- установка страницы -----------------
    exWks.PageSetup.Orientation := 2;
    exWks.PageSetup.LeftMargin  := exApp.InchesToPoints(0.196850393700787);
    exWks.PageSetup.RightMargin := exApp.InchesToPoints(0.196850393700787);
    exWks.PageSetup.TopMargin   := exApp.InchesToPoints(0.196850393700787);
    exWks.PageSetup.BottomMargin:= exApp.InchesToPoints(0.196850393700787);
    exWks.PageSetup.PrintComments := 16;

    exWks.PageSetup.Zoom := False;
    exWks.PageSetup.FitToPagesWide := 1;
    exWks.PageSetup.FitToPagesTall := 100;
    exWks.PageSetup.PrintArea := exWks.Range[exWks.Cells[1,1], exWks.Cells[row_seek + cnt_vagon + 11, 7 + column_agent*(Q_sub.RecordCount-1) + 3]].Address;
    exWks.Cells[row_seek + cnt_vagon + 11, 5 + column_agent*(Q_sub.RecordCount-1)].Value := 'Исполнитель _________________________ ' + Q_bargain.FieldByName('FIO_users_owner').AsString;

    // Печать ШК
    barcode.date      := Q_bargain.FieldByName('date_period').AsDateTime;
    barcode.global_id := Q_bargain.FieldByName('bargain_id').AsInteger;
    barcode.user_id   := Q_bargain.FieldByName('users_owner_id').AsInteger;
    barcode.object_id := 24; // BARGAIN
    PrintBarCode2of5(barcode, exWks, exWks.Cells[row_seek + cnt_vagon + 12, 6 + column_agent*(Q_sub.RecordCount-1)]);

    Q_bargain.Next;
  end;


  exApp.DisplayAlerts := False;
  exWks_main.Delete;
  exApp.DisplayAlerts := True;
  exApp.Visible := True;

  VarClear(exWks_main);
  VarClear(exWks);
  VarClear(exWkb);
  VarClear(exApp);
  exWks_main := null;
  exWks := null;
  exWkb := null;
  exApp := null;
  Q_bargain.Free;
  Q_sub.Free;
  Q_rate.Free;
  Q_fact.Free;
  Q_agent.Free;
  Q_fraht.Free;
  Q_Vagon.Free;
  ShowTextMessage;
end;

procedure PrintFrahtCardWeight_Multi(conn : TADOConnection; BargainList: TStringList; set_show_excel : Boolean);
var str_formula, s                  : string;
    i, j, m, sub_cnt, fact_cnt, column_agent, c     : integer;
    Fkont                           : boolean;
    Q_sub, Q_Agree                  : TADOQuery;
//    Q_Border                        : TADOQuery;
    Q_Vagon                         : TADOQuery;
    exApp, exWkb, exWks, exWks1, exWkb1             : variant;
    SP_FrahtCard1                   : TAdoStoredProc;
    exchange_val                    : double;
    exchange_val_type               : string;
//    str_border                      : string;
    SP_fraht_card_insert            : TADOStoredProc;
    SP_fraht_agent_insert           : TADOStoredProc;
    SP_FrahtCard                    : TADOStoredProc;
    SP_FrahtCard2                   : TADOStoredProc;
    SP_FactCalcAdd                  : TADOStoredProc;
    SP_FrahtFactInsert              : TADOStoredProc;
    barcode                         : TmyBarCode;

    cnt_columns                     : integer;
    column_len                      : integer;

    max_rate                        : integer;
    row_seek                        : integer;
    users_group_cod                 : string;
begin
  Screen.Cursor := crHourglass;
  ShowTextMessage('Запуск сервера автоматизации...', False);

  // Получим код организации
  users_group_cod := GetIDFromSQL('SELECT	inf_obj_cod as users_group_cod FROM	users INNER JOIN inf_obj on users.users_group_id = inf_obj.inf_obj_id WHERE users_name = system_user', conn);

  exApp := CreateOleObject('Excel.Application');
  exWkb1 := exApp.Workbooks.Add(GetDocBlob(conn, 999)); // 52 'Фрахтовая карточка (вес).xls - новый шаблон'
  exWks1 := exApp.ActiveWorkbook.WorkSheets[1];
  exWkb := exApp.Workbooks.Add;
  exApp.ActiveWindow.DisplayGridlines := False;
//  exApp.Visible := True;

  Q_Agree := TADOQuery.Create(nil);
  Q_Agree.Connection := conn;

  Q_sub := TADOQuery.Create(nil);
  Q_sub.Connection := conn;

//  Q_Border := TADOQuery.Create(nil);
//  Q_Border.Connection := conn;

  Q_Vagon := TADOQuery.Create(nil);
  Q_Vagon.Connection := conn;

  SP_fraht_card_insert := TADOStoredProc.Create(nil);
  SP_fraht_card_insert.Connection := conn;
  SP_fraht_card_insert.CommandTimeout   := 120;
  SP_fraht_card_insert.ProcedureName := 'sp_FRAHT_CARD_insert';

  SP_fraht_agent_insert := TADOStoredProc.Create(nil);
  SP_fraht_agent_insert.Connection := conn;
  SP_fraht_agent_insert.CommandTimeout   := 120;
  SP_fraht_agent_insert.ProcedureName := 'sp_FRAHT_AGENT_insert';

  SP_FrahtCard := TADOStoredProc.Create(nil);
  SP_FrahtCard.Connection := conn;
  SP_FrahtCard.CommandTimeout   := 120;
  SP_FrahtCard.ProcedureName := 'sp_fact_by_rate_GET;1';
  SP_FrahtCard.Parameters.Refresh;

  SP_FrahtCard2 := TADOStoredProc.Create(nil);
  SP_FrahtCard2.Connection := conn;
  SP_FrahtCard2.CommandTimeout := 120;
  SP_FrahtCard2.ProcedureName  := 'sp_fact_by_rate_GET;1';
  SP_FrahtCard2.Parameters.Refresh;

  SP_FactCalcAdd := TADOStoredProc.Create(nil);
  SP_FactCalcAdd.Connection := conn;
  SP_FactCalcAdd.CommandTimeout   := 120;
  SP_FactCalcAdd.ProcedureName := 'sp_fact_CALC_add;1';
  SP_FactCalcAdd.Parameters.Refresh;

  for j:=0 to BargainList.Count - 1 do begin { перебор номеров фрахтовых карточек}
    column_agent := 6;

    Q_Agree.Close;
    Q_Agree.SQL.Clear;
    Q_Agree.SQL.Add('SELECT *, isnull(bargain_nds_cod,''0'') nds_val FROM view_bargain WHERE (bargain_id = '+BargainList[j]+')');
    Q_Agree.Open;
    if Q_Agree.RecordCount = 0 then Continue; // отмена печати карточки, если нет invoice_id

    exWks := exWkb.Sheets.Add;
    exWks.Name := BargainList[j];
    exWks1.Rows['1:30'].Copy;
    exWks.Rows['1:30'].PasteSpecial(1);
    ShowTextMessage('Идет вывод фрахтовой карточки: '+IntToStr(j+1)+' из '+IntToStr(BargainList.Count)+#13#10+ 'Подождите пожалуйста...', False);

    SP_FrahtCard.Close;
    SP_FrahtCard.Parameters.ParamByName('@bargain_id').Value := BargainList[j];
    SP_FrahtCard.Open;

    Fkont := (Q_Agree['our_rate_vid_send'] = 1);

    if Fkont then begin
      exWks.Columns[6].EntireColumn.Hidden := True;
      exWks.Columns[7].ColumnWidth := 0.08;
      exWks.Columns[11].ColumnWidth := 0.08;
      exWks.Columns[4].ColumnWidth := 13;
      exWks.Range['D6'].Value := 'Контейнер';
    end;
    exWks.Range['B2'].Value := 'ФРАХТОВАЯ КАРТОЧКА ('+Q_Agree.FieldByNAme('bargain_cod').AsString+')';
    exWks.Range['I2'].Value := '''' + GetInvoiceFromBargain(Q_Agree.Connection, Q_Agree.FieldByName('bargain_id').AsInteger);
    exWks.Range['D3'].Value := Q_Agree.FieldByName('kargoETSNG_name').AsString + ' (ЕТСНГ '+Q_Agree.FieldByName('kargoETSNG_cod').AsString+')';
    exWks.Range['D4'].Value := Q_Agree.FieldByName('firm_customer_name_short').AsString;
    exWks.Range['G6'].Value := Q_Agree.FieldByName('firm_customer_name_short').AsString + #10 + 'НДС:' + Q_Agree.FieldByName('bargain_nds_name').AsString;
    exWks.Range['D5'].Value := Q_Agree.FieldByName('node_begin_name').AsString + ' - ' + Q_Agree.FieldByName('node_end_name').AsString + ' ('+Q_Agree.FieldByName('vid_transfer_name').AsString+', ';
    exWks.Range['D5'].Value := exWks.Range['D5'].Value + 'НДС: ' + Q_Agree.FieldByName('bargain_nds_name').AsString + ')';

    if not Q_Agree.FieldByName('custom_id').IsNull then  exWks.Range['D5'].Value := exWks.Range['D5'].Value + ' (Таможня - '+Q_Agree.FieldByName('custom_name').AsString+')';

    if Q_Agree.FieldByName('bargain_nds_cod').IsNull then
      exWks.Range['H7'].Value := 'Ставка'
    else if Q_Agree.FieldByName('set_include_nds').AsBoolean then
      exWks.Range['H7'].Value := 'Ставка, вкл. НДС'
    else
      exWks.Range['H7'].Value := 'Ставка, без НДС';


    if Q_Agree.FieldByName('bargain_nds_cod').IsNull then
      exWks.Range['J7'].Value := 'Сумма'
    else
      exWks.Range['J7'].Value := 'Сумма, с НДС';

    Q_sub.Close;
    Q_sub.SQL.Clear;
    Q_sub.SQL.Add('SELECT *, isnull(shaping_rate_nds_cod,0) nds_val FROM view_bargain_shaping_rate WHERE bargain_id='+BargainList[j]+' ORDER BY shaping_rate_id');
    Q_sub.Open;
    sub_cnt := Q_sub.RecordCount;
    while not Q_sub.Eof do begin
      if Q_sub.RecNo > 1 then begin
        exWks.Columns['M:R'].Copy;
        exWks.Cells[1, 7+column_agent*Q_sub.RecNo].PasteSpecial(1);
      end;
      exWks.Cells[6, 7+column_agent*Q_sub.RecNo].Value := Q_sub.FieldByName('firm_agent_name_short').AsString + ' ('+Q_sub.FieldByName('contract_cod').AsString+')' + #10 + 'НДС:' + Q_sub.FieldByName('shaping_rate_nds_name').AsString;

      if Q_sub.FieldByName('shaping_rate_nds_cod').IsNull then
        exWks.Cells[7, 8+column_agent*Q_sub.RecNo].Value := 'Ставка'
      else if Q_sub.FieldByName('set_include_nds').AsBoolean then
        exWks.Cells[7, 8+column_agent*Q_sub.RecNo].Value := 'Ставка, вкл. НДС'
      else
        exWks.Cells[7, 8+column_agent*Q_sub.RecNo].Value := 'Ставка, без НДС';

      if Q_sub.FieldByName('shaping_rate_nds_cod').IsNull then
        exWks.Cells[7, 10+column_agent*Q_sub.RecNo].Value := 'Сумма'
      else
        exWks.Cells[7, 10+column_agent*Q_sub.RecNo].Value := 'Сумма, с НДС';

      Q_sub.Next;
    end;

    Q_sub.First;
    sub_cnt := Q_sub.RecordCount;
    while not Q_sub.Eof do begin
      if Q_sub.FieldByName('set_self_rate').AsBoolean = True then begin
        exWks.Cells[6, 7+column_agent*Q_sub.RecNo].AddComment;
        exWks.Cells[6, 7+column_agent*Q_sub.RecNo].Comment.Visible := True;
        exWks.Cells[6, 7+column_agent*Q_sub.RecNo].Comment.Text('Собственные расходы');
      end;
      Q_sub.Next;
    end;

//    str_border := '';
//    Q_Border.Close;
//    Q_Border.SQL.Clear;
//    Q_Border.SQL.Add('SELECT node_name, node_type_cod FROM view_add_distance WHERE global_id = ' + BargainList[j] + ' ORDER BY distance_num');
//    Q_Border.Open;
//    while not Q_Border.Eof do begin
//      str_border := str_border + iif(Q_Border.FieldByName('node_type_cod').AsString = '1', ' п/п вх.-', ' п/п вых.-');
//      str_border := str_border + Q_Border.FieldByName('node_name').AsString;
//      Q_Border.Next;
//    end;
//    exWks.Range['D5'].Value := exWks.Range['D5'].Value + str_border;


    row_seek := 0;

    SP_FrahtCard2.Close;
    SP_FrahtCard2.Parameters.Refresh;
    SP_FrahtCard2.Parameters.ParamByName('@bargain_id').Value := BargainList[j];
    SP_FrahtCard2.Parameters.ParamByName('@set_type_result').Value := 2;
    SP_FrahtCard2.Open;
    max_rate := 0;
    while not SP_FrahtCard2.Eof do begin
      if max_rate < SP_FrahtCard2.FieldByName('row_num_fact_rate').AsInteger then
        max_rate := SP_FrahtCard2.FieldByName('row_num_fact_rate').AsInteger;
      SP_FrahtCard2.Next;
    end;

    for i := 0 to max_rate-1 do begin
      inc(row_seek);
      exWks.Rows[IntToStr(row_seek + 10)].Insert;
      exWks.Rows[IntToStr(row_seek +  9)].Copy;
      exWks.Rows[IntToStr(row_seek + 10)].PasteSpecial(1);  //-4122
    end;

    SP_FrahtCard2.First;
    while not SP_FrahtCard2.Eof do begin
      // СТАВКА
      exWks.Cells[SP_FrahtCard2.FieldByName('row_num_fact_rate').AsInteger+9, 6*SP_FrahtCard2.FieldByName('row_num_rate_id').AsInteger+2].Value := SP_FrahtCard2.FieldByName('fact_rate').AsFloat; //RoundCurr(SP_FrahtCard2.FieldByName('fact_rate').AsFloat, -2);

      // ВЕС
      exWks.Cells[SP_FrahtCard2.FieldByName('row_num_fact_rate').AsInteger+9, 6*SP_FrahtCard2.FieldByName('row_num_rate_id').AsInteger+1].Value := '=SUMIF(R8C[1]:R9C[1],RC[1],R8C:R9C)';

      // ДОП. СБОР
      exWks.Cells[SP_FrahtCard2.FieldByName('row_num_fact_rate').AsInteger+9, 6*SP_FrahtCard2.FieldByName('row_num_rate_id').AsInteger+3].Value := '=ROUND(SUMIF(R8C[-1]:R9C[-1],RC[-1],R8C:R9C),2)';

      // СУММА
      exWks.Cells[SP_FrahtCard2.FieldByName('row_num_fact_rate').AsInteger+9, 6*SP_FrahtCard2.FieldByName('row_num_rate_id').AsInteger+4].Value := '=ROUND(SUMIF(R8C[-2]:R9C[-2],RC[-2],R8C:R9C),2)';


      // Клиент
      if SP_FrahtCard2.FieldByName('bargain_id').AsInteger = SP_FrahtCard2.FieldByName('rate_id').AsInteger then begin
        exWks.Cells[SP_FrahtCard2.FieldByName('row_num_fact_rate').AsInteger+9, 4].Value := '=COUNTIF(R8C8:R9C8,RC8)';
        exWks.Cells[SP_FrahtCard2.FieldByName('row_num_fact_rate').AsInteger+9, 6].Value := '=SUMIF(R8C8:R9C8,RC8,R8C:R9C)';
      end;


      SP_FrahtCard2.Next;
    end;

    fact_cnt := SP_FrahtCard.RecordCount;
    while not SP_FrahtCard.Eof do begin
      // Добавляем строку
      exWks.Rows[IntToStr(SP_FrahtCard.RecNo + 8)].Insert;

      exWks.Range['A'+IntToStr(7 + SP_FrahtCard.RecNo)].Value := SP_FrahtCard.FieldByName('type_kontener_name').AsString + '\'+ SP_FrahtCard.FieldByName('attr_self_name').AsString;
      if SP_FrahtCard['date_from_to'] <> NULL then exWks.Range['B'+IntToStr(7 + SP_FrahtCard.RecNo)].Value := FormatDateTime('dd.mm.yy', SP_FrahtCard.FieldByName('date_from_to').AsDateTime);
      if SP_FrahtCard['datpr'] <> NULL then exWks.Range['C'+IntToStr(7 + SP_FrahtCard.RecNo)].Value := FormatDateTime('dd.mm.yy', SP_FrahtCard.FieldByName('datpr').AsDateTime);

      if Fkont then exWks.Range['D'+IntToStr(7 + SP_FrahtCard.RecNo)].Value := SP_FrahtCard.FieldByName('num_konten').AsString
      else exWks.Range['D'+IntToStr(7 + SP_FrahtCard.RecNo)].Value := SP_FrahtCard.FieldByName('num_vagon').AsString;
      exWks.Range['E'+IntToStr(7 + SP_FrahtCard.RecNo)].Value := SP_FrahtCard.FieldByName('num_document').AsString;

      // ----- если аренда вагонов ------------
      if Q_Agree['our_rate_vid_send'] = 3 then exWks.Range['G'+IntToStr(7)].Value := 'Дни аренды';

      exWks.Range['G'+IntToStr(7 + SP_FrahtCard.RecNo)].Value := StrToFloat(FormatFloat('0.000', SP_FrahtCard.FieldByName('client_weight').AsFloat));
      exWks.Range['F'+IntToStr(7 + SP_FrahtCard.RecNo)].Value := StrToFloat(FormatFloat('0.000', SP_FrahtCard.FieldByName('fact_weight').AsFloat));
      exWks.Range['H'+IntToStr(7 + SP_FrahtCard.RecNo)].Value := SP_FrahtCard.FieldByName('client_rate').AsFloat; //RoundCurr(SP_FrahtCard.FieldByName('client_rate').AsFloat, -2);
      if SP_FrahtCard.FieldByName('client_add').AsFloat <> 0 then exWks.Range['I'+IntToStr(7 + SP_FrahtCard.RecNo)].Value := StrToFloat(FormatFloat('0.00', SP_FrahtCard.FieldByName('client_add').AsFloat));

      if Q_Agree.FieldByName('round_sum').AsBoolean then begin
        if (Q_Agree.FieldByName('ed_izm_cod').AsString = '000') or (Q_Agree.FieldByName('ed_izm_cod').AsString = '004') then
          if Q_Agree.FieldByName('set_include_nds').AsBoolean then
            exWks.Range['J'+IntToStr(7 + SP_FrahtCard.RecNo)].Value := '=ROUNDUP(RC[-3]*RC[-2],0) + ROUNDUP(RC[-1], 0)'
          else
            exWks.Range['J'+IntToStr(7 + SP_FrahtCard.RecNo)].Value := '=ROUNDUP(RC[-3]*RC[-2]*((100+' + Q_Agree.FieldByName('nds_val').AsString  + ')/100),0) + ROUNDUP(RC[-1], 0)'
        else
          if Q_Agree.FieldByName('set_include_nds').AsBoolean then
            exWks.Range['J'+IntToStr(7 + SP_FrahtCard.RecNo)].Value := '=ROUNDUP(RC[-2],0) + ROUNDUP(RC[-1], 0)'
          else
            exWks.Range['J'+IntToStr(7 + SP_FrahtCard.RecNo)].Value := '=ROUNDUP(RC[-2]*((100+' + Q_Agree.FieldByName('nds_val').AsString  + ')/100),0) + ROUNDUP(RC[-1], 0)'
      end else begin
        case Q_Agree.FieldByName('type_calc_sum').AsInteger of
          0: begin
              if (Q_Agree.FieldByName('ed_izm_cod').AsString = '000') or (Q_Agree.FieldByName('ed_izm_cod').AsString = '004') then
                if Q_Agree.FieldByName('set_include_nds').AsBoolean then
                  exWks.Range['J'+IntToStr(7 + SP_FrahtCard.RecNo)].Value := '=ROUND(RC[-3]*RC[-2],2) + ROUND(RC[-1], 2)'
                else
                  exWks.Range['J'+IntToStr(7 + SP_FrahtCard.RecNo)].Value := '=ROUND(RC[-3]*RC[-2]*((100+' + Q_Agree.FieldByName('nds_val').AsString  + ')/100),2) + ROUND(RC[-1], 2)'
              else
                if Q_Agree.FieldByName('set_include_nds').AsBoolean then
                  exWks.Range['J'+IntToStr(7 + SP_FrahtCard.RecNo)].Value := '=ROUND(RC[-2],2) + ROUND(RC[-1], 2)'
                else
                  exWks.Range['J'+IntToStr(7 + SP_FrahtCard.RecNo)].Value := '=ROUND(RC[-2]*((100+' + Q_Agree.FieldByName('nds_val').AsString  + ')/100),2) + ROUND(RC[-1], 2)';
             end;
          1: begin
              if (Q_Agree.FieldByName('ed_izm_cod').AsString = '000') or (Q_Agree.FieldByName('ed_izm_cod').AsString = '004') then
                if Q_Agree.FieldByName('set_include_nds').AsBoolean then
                  exWks.Range['J'+IntToStr(7 + SP_FrahtCard.RecNo)].Value := '=RC[-3]*RC[-2]+RC[-1]'
                else
                  exWks.Range['J'+IntToStr(7 + SP_FrahtCard.RecNo)].Value := '=RC[-3]*RC[-2]*((100+' + Q_Agree.FieldByName('nds_val').AsString  + ')/100)+RC[-1]'
              else
                if Q_Agree.FieldByName('set_include_nds').AsBoolean then
                  exWks.Range['J'+IntToStr(7 + SP_FrahtCard.RecNo)].Value := '=RC[-2]+RC[-1]'
                else
                  exWks.Range['J'+IntToStr(7 + SP_FrahtCard.RecNo)].Value := '=RC[-2]*((100+' + Q_Agree.FieldByName('nds_val').AsString  + ')/100)+RC[-1]';
             end;
        end;
      end;

      // ---- один вагон по подрядчикам
      Q_sub.First;
      while not Q_sub.Eof do begin
        // ---- аренда -----
        if Q_sub.FieldByName('vid_send').AsInteger = 3 then exWks.Cells[IntToStr(7), 7+column_agent*Q_sub.RecNo].Value := 'Дни аренды';

        exWks.Cells[IntToStr(7 + SP_FrahtCard.RecNo), 7+column_agent*Q_sub.RecNo].Value := StrToFloat(FormatFloat('0.000', SP_FrahtCard.FieldByName(Q_sub.FieldByName('shaping_rate_id').AsString+'_weight').AsFloat));
        exWks.Cells[IntToStr(7 + SP_FrahtCard.RecNo), 8+column_agent*Q_sub.RecNo].Value := StrToFloat(FormatFloat('0.000', SP_FrahtCard.FieldByName(Q_sub.FieldByName('shaping_rate_id').AsString+'_rate').AsCurrency));
        if SP_FrahtCard.FieldByName(Q_sub.FieldByName('shaping_rate_id').AsString+'_add').AsFloat <> 0 then exWks.Cells[IntToStr(7 + SP_FrahtCard.RecNo), 9+column_agent*Q_sub.RecNo].Value := StrToFloat(FormatFloat('0.000', SP_FrahtCard.FieldByName(Q_sub.FieldByName('shaping_rate_id').AsString+'_add').AsCurrency));

        if Q_Sub.FieldByName('set_transport_pay').AsBoolean then begin
          exWks.Cells[IntToStr(7 + SP_FrahtCard.RecNo), 10+column_agent*Q_sub.RecNo].Value := SP_FrahtCard.FieldByName(Q_sub.FieldByName('shaping_rate_id').AsString+'_sum').AsFloat;
        end else
          if Q_Sub.FieldByName('shaping_rate_round_sum').AsBoolean then begin
            if (Q_Sub.FieldByName('ed_izm_cod').AsString = '000') or (Q_Sub.FieldByName('ed_izm_cod').AsString = '004') then
              if Q_Sub.FieldByName('set_include_nds').AsBoolean then
                exWks.Cells[IntToStr(7 + SP_FrahtCard.RecNo), 10+column_agent*Q_sub.RecNo].Value := '=ROUNDUP(RC[-3]*RC[-2],0) + ROUNDUP(RC[-1], 0)'
              else
                exWks.Cells[IntToStr(7 + SP_FrahtCard.RecNo), 10+column_agent*Q_sub.RecNo].Value := '=ROUNDUP(RC[-3]*RC[-2]*((100+' + Q_Sub.FieldByName('nds_val').AsString  + ')/100),2),0) + ROUNDUP(RC[-1], 0)'
            else
              if Q_Sub.FieldByName('set_include_nds').AsBoolean then
                exWks.Cells[IntToStr(7 + SP_FrahtCard.RecNo), 10+column_agent*Q_sub.RecNo].Value := '=ROUNDUP(RC[-2],0) + ROUNDUP(RC[-1], 0)'
              else
                exWks.Cells[IntToStr(7 + SP_FrahtCard.RecNo), 10+column_agent*Q_sub.RecNo].Value := '=ROUNDUP(RC[-2]*((100+' + Q_Sub.FieldByName('nds_val').AsString  + ')/100),2),0) + ROUNDUP(RC[-1], 0)'
          end else begin
            case Q_Sub.FieldByName('type_calc_sum').AsInteger of
            0:  begin
                  if (Q_Sub.FieldByName('ed_izm_cod').AsString = '000') or (Q_Sub.FieldByName('ed_izm_cod').AsString = '004') then
                    if Q_Sub.FieldByName('set_include_nds').AsBoolean then
                      exWks.Cells[IntToStr(7 + SP_FrahtCard.RecNo), 10+column_agent*Q_sub.RecNo].Value := '=ROUND(RC[-3]*RC[-2],2) + ROUND(RC[-1], 2)'
                    else
                      exWks.Cells[IntToStr(7 + SP_FrahtCard.RecNo), 10+column_agent*Q_sub.RecNo].Value := '=ROUND(RC[-3]*RC[-2]*((100+' + Q_Sub.FieldByName('nds_val').AsString  + ')/100),2) + ROUND(RC[-1], 2)'
                  else
                    if Q_Sub.FieldByName('set_include_nds').AsBoolean then
                      exWks.Cells[IntToStr(7 + SP_FrahtCard.RecNo), 10+column_agent*Q_sub.RecNo].Value := '=ROUND(RC[-2],2) + ROUND(RC[-1], 2)'
                    else
                      exWks.Cells[IntToStr(7 + SP_FrahtCard.RecNo), 10+column_agent*Q_sub.RecNo].Value := '=ROUND(RC[-2]*((100+' + Q_Sub.FieldByName('nds_val').AsString  + ')/100),2) + ROUND(RC[-1], 2)';
                end;
            1:  begin
                  if (Q_Sub.FieldByName('ed_izm_cod').AsString = '000') or (Q_Sub.FieldByName('ed_izm_cod').AsString = '004') then
                    if Q_Sub.FieldByName('set_include_nds').AsBoolean then
                      exWks.Cells[IntToStr(7 + SP_FrahtCard.RecNo), 10+column_agent*Q_sub.RecNo].Value := '=RC[-3]*RC[-2] + RC[-1]'
                    else
                      exWks.Cells[IntToStr(7 + SP_FrahtCard.RecNo), 10+column_agent*Q_sub.RecNo].Value := '=RC[-3]*RC[-2]*((100+' + Q_Sub.FieldByName('nds_val').AsString  + ')/100) + RC[-1]'
                  else
                    if Q_Sub.FieldByName('set_include_nds').AsBoolean then
                      exWks.Cells[IntToStr(7 + SP_FrahtCard.RecNo), 10+column_agent*Q_sub.RecNo].Value := '=RC[-2] + RC[-1]'
                    else
                      exWks.Cells[IntToStr(7 + SP_FrahtCard.RecNo), 10+column_agent*Q_sub.RecNo].Value := '=RC[-2]*((100+' + Q_Sub.FieldByName('nds_val').AsString  + ')/100) + RC[-1]';
                end;
            end;
          end;

        // --- колонки ЭТРАНа
        if (Q_sub.FieldByName('contract_set').AsInteger = 1)  then begin

          if not SP_FrahtCard.FieldByName('exchange_val').IsNull then begin
            // Курс из вагона
            exchange_val := SP_FrahtCard.FieldByName('exchange_val').AsFloat;
            exchange_val_type := 'Курс ЦФТО.';
          end;

          if (SP_FrahtCard.FieldByName('exchange_val').IsNull) or (exchange_val = 0) or (exchange_val = 1) then begin
            if not SP_FrahtCard.FieldByName('date_from_to').IsNull then begin
              // Курс на дату отправления
              exchange_val := GetExchangeNew(Q_sub.FieldByName('currency_id').AsInteger, SP_FrahtCard.FieldByName('date_from_to').AsDateTime, conn, True);
              exchange_val_type := 'Курс на дату отправления.';
            end;
            if (SP_FrahtCard.FieldByName('date_from_to').IsNull) or (exchange_val=0) then begin
              exchange_val := 0;
              exchange_val_type := 'Курс не определен.';
            end;
          end;

          if (Q_sub.FieldByName('currency_id').AsInteger <> 3) then exWks.Cells[IntToStr(7 + SP_FrahtCard.RecNo), 11+column_agent*Q_sub.RecNo].Value := '=RC[-1]*'+ ReplaceStr(FormatFloat('0.0000', exchange_val), ',', '.')
          else exWks.Cells[IntToStr(7 + SP_FrahtCard.RecNo), 11+column_agent*Q_sub.RecNo].Value := '=RC[-1]';

          exWks.Cells[IntToStr(7 + SP_FrahtCard.RecNo), 12+column_agent*Q_sub.RecNo].Value := SP_FrahtCard.FieldByName('transport_pay').AsCurrency;

        end;

        Q_sub.Next;
      end;

      SP_FrahtCard.Next;
      ShowTextMessage('Идет вывод фрахтовой карточки: '+IntToStr(j+1)+' из '+IntToStr(BargainList.Count)+#13#10+ 'Осталось вагонов ' +IntToStr(SP_FrahtCard.RecordCount - SP_FrahtCard.RecNo )+'. Подождите пожалуйста...', False);
    end;

    // Удяляем лишнии строки (по одной оставляем, на случай отсутсвия вагонов)
    exWks.Rows[IntToStr(row_seek + fact_cnt + 10)].Delete;
    if row_seek > 0 then exWks.Rows[IntToStr(row_seek + fact_cnt + 10)].Delete;
    exWks.Rows[IntToStr(fact_cnt + 8)].Delete;
    if fact_cnt > 0 then exWks.Rows[IntToStr(fact_cnt + 8)].Delete;

    exWks.Range[exWks.Cells[fact_cnt + 7, 2], exWks.Cells[fact_cnt + 7, 12 + column_agent * Q_sub.RecordCount]].Borders[9].LineStyle := 1;  // bottom

    if row_seek = 0 then row_seek := 1;
    if fact_cnt = 0 then fact_cnt := 1;

    // сортируем ставки
    if row_seek > 1 then begin
      exWks.Range[exWks.Cells[fact_cnt + 8, 8], exWks.Cells[fact_cnt + row_seek + 7, 8]].EntireRow.Hidden := False;
      exWks.Range[exWks.Cells[fact_cnt + 8, 8], exWks.Cells[fact_cnt + row_seek + 7, 8]].Sort(exWks.Cells[fact_cnt + 8, 8]);
      exWks.Range[exWks.Cells[fact_cnt + 8, 8], exWks.Cells[fact_cnt + row_seek + 7, 8]].EntireRow.Hidden := True;
    end;

    //------- валюта клиента -----------------
    exWks.Range['H' + IntToStr(row_seek + fact_cnt + 9)].Value := Q_Agree.FieldByName('brief_name').AsString;
    if not Q_Agree.FieldByName('exchange_USD_val').IsNull then begin // ичключение
      exWks.Range['J' + IntToStr(row_seek + fact_cnt + 13)].Value := 1;
      exWks.Range['J' + IntToStr(row_seek + fact_cnt + 14)].Value := Q_Agree.FieldByName('exchange_USD_val').AsFloat;
      exWks.Range['J' + IntToStr(row_seek + fact_cnt + 15)].Value := Q_Agree.FieldByName('exchange_EUR_val').AsFloat;
      exWks.Range['J' + IntToStr(row_seek + fact_cnt + 16)].Value := Q_Agree.FieldByName('exchange_CHF_val').AsFloat;
    end else begin // Новые ФК
      exWks.Range['J' + IntToStr(row_seek + fact_cnt + 13)].Value := 1;
      exWks.Range['J' + IntToStr(row_seek + fact_cnt + 14)].Value := GetExchangeNew(1, Q_Agree.FieldByName('date_period').AsDateTime, conn);
      exWks.Range['J' + IntToStr(row_seek + fact_cnt + 15)].Value := GetExchangeNew(6, Q_Agree.FieldByName('date_period').AsDateTime, conn);
      exWks.Range['J' + IntToStr(row_seek + fact_cnt + 16)].Value := GetExchangeNew(5, Q_Agree.FieldByName('date_period').AsDateTime, conn);
    end;

    // НДС Клиента
    if Q_Agree.FieldByName('bargain_nds_cod').IsNull then begin
      // Без НДС
      exWks.Range['G' + IntToStr(row_seek + fact_cnt + 12)].Value := 'Без НДС';
      exWks.Range['J' + IntToStr(row_seek + fact_cnt + 12)].Value := 0;
    end else if Q_Agree.FieldByName('bargain_nds_name').AsString = '18% на вознагр.' then begin
      // 18% на вознагр.
      exWks.Range['G' + IntToStr(row_seek + fact_cnt + 12)].Value := 'НДС - ' + Q_Agree.FieldByName('bargain_nds_cod').AsString + '%';
      exWks.Range['J' + IntToStr(row_seek + fact_cnt + 12)].Value := '=ROUND((R[-1]C-SUMIF(RC[1]:RC[' + IntToStr(column_agent * Q_sub.RecordCount) + '],"=0",R[-1]C[1]:R[-1]C[' + IntToStr(column_agent * Q_sub.RecordCount) + ']))*(' + IntToStr(Q_Agree.FieldByName('bargain_nds_cod').AsInteger) + ')/(100+' + IntToStr(Q_Agree.FieldByName('bargain_nds_cod').AsInteger) + '),2)';
    end else begin
      // 0%, 18% (а так же все нестандартные: 4%, 10%, 20%)
      exWks.Range['G' + IntToStr(row_seek + fact_cnt + 12)].Value := 'НДС - ' + Q_Agree.FieldByName('bargain_nds_cod').AsString + '%';
      exWks.Range['J' + IntToStr(row_seek + fact_cnt + 12)].Value := '=ROUND(R[-1]C*(' + IntToStr(Q_Agree.FieldByName('bargain_nds_cod').AsInteger) + ')/(100+' + IntToStr(Q_Agree.FieldByName('bargain_nds_cod').AsInteger) + '),2)';
    end;

    //------------- Абс. Доп. Сбор (клиент) ------------------

    SP_FactCalcAdd.Close;
    SP_FactCalcAdd.Parameters.Refresh;
    SP_FactCalcAdd.Parameters.ParamByName('@rate_id').Value := BargainList[j];
    SP_FactCalcAdd.Parameters.ParamByName('@type_rate').Value := 0;
    SP_FactCalcAdd.Parameters.ParamByName('@date_period').Value := Q_Agree.FieldByName('date_period').AsDateTime;
    SP_FactCalcAdd.Parameters.ParamByName('@add_vid_cod').Value := null;
    SP_FactCalcAdd.ExecProc;

    if SP_FactCalcAdd.Parameters.ParamByName('@add_val_002').Value <> 0 then
      exWks.Range['I'+IntToStr(row_seek + fact_cnt + 8)].Value := SP_FactCalcAdd.Parameters.ParamByName('@add_val_002').Value;

    //-------- валюта подрядчиков -------------------
    Q_sub.First;
    while not Q_sub.Eof do begin
      exWks.Cells[row_seek + fact_cnt + 9, 8 + column_agent * Q_sub.RecNo].Value := Q_Sub.FieldByName('brief_name').AsString;
      if not Q_Sub.FieldByName('exchange_USD_val').IsNull then begin // ичключение
        exWks.Cells[row_seek + fact_cnt + 13, 10 + column_agent * Q_sub.RecNo].Value := 1;
        exWks.Cells[row_seek + fact_cnt + 14, 10 + column_agent * Q_sub.RecNo].Value := Q_Sub.FieldByName('exchange_USD_val').AsFloat;
        exWks.Cells[row_seek + fact_cnt + 15, 10 + column_agent * Q_sub.RecNo].Value := Q_Sub.FieldByName('exchange_EUR_val').AsFloat;
        exWks.Cells[row_seek + fact_cnt + 16, 10 + column_agent * Q_sub.RecNo].Value := Q_Sub.FieldByName('exchange_CHF_val').AsFloat;
      end else begin // Новые ФК
        exWks.Cells[row_seek + fact_cnt + 13, 10 + column_agent * Q_sub.RecNo].Value := 1;
        exWks.Cells[row_seek + fact_cnt + 14, 10 + column_agent * Q_sub.RecNo].Value := GetExchangeNew(1, Q_Agree.FieldByName('date_period').AsDateTime, conn);
        exWks.Cells[row_seek + fact_cnt + 15, 10 + column_agent * Q_sub.RecNo].Value := GetExchangeNew(6, Q_Agree.FieldByName('date_period').AsDateTime, conn);
        exWks.Cells[row_seek + fact_cnt + 16, 10 + column_agent * Q_sub.RecNo].Value := GetExchangeNew(5, Q_Agree.FieldByName('date_period').AsDateTime, conn);
      end;

      // НДС Подрядчика
      if Q_sub.FieldByName('shaping_rate_nds_cod').IsNull then begin
        exWks.Cells[row_seek + fact_cnt + 12, 10 + column_agent * Q_sub.RecNo - 3].Value := 'Без НДС';
        exWks.Cells[row_seek + fact_cnt + 12, 10 + column_agent * Q_sub.RecNo].Value     := 0;
      end else begin
        exWks.Cells[row_seek + fact_cnt + 12, 10 + column_agent * Q_sub.RecNo - 3].Value := 'НДС - ' + Q_sub.FieldByName('shaping_rate_nds_cod').AsString + '%';
        exWks.Cells[row_seek + fact_cnt + 12, 10 + column_agent * Q_sub.RecNo].Value     := '=ROUND(R[-1]C*(' + IntToStr(Q_sub.FieldByName('shaping_rate_nds_cod').AsInteger) + ')/(100+' + IntToStr(Q_sub.FieldByName('shaping_rate_nds_cod').AsInteger) + '),2)';
      end;

      //------------- Абс. Доп. Сбор (подрядчик) ------------------
      SP_FactCalcAdd.Close;
      SP_FactCalcAdd.Parameters.Refresh;
      SP_FactCalcAdd.Parameters.ParamByName('@rate_id').Value := Q_sub.FieldByName('shaping_rate_id').AsInteger;
      SP_FactCalcAdd.Parameters.ParamByName('@type_rate').Value := 1;
      SP_FactCalcAdd.Parameters.ParamByName('@date_period').Value := Q_Agree.FieldByName('date_period').AsDateTime;
      SP_FactCalcAdd.Parameters.ParamByName('@add_vid_cod').Value := null;
      SP_FactCalcAdd.ExecProc;
      if SP_FactCalcAdd.Parameters.ParamByName('@add_val_002').Value <> 0 then
        exWks.Cells[row_seek + fact_cnt + 8, 9+column_agent*Q_sub.RecNo].Value := SP_FactCalcAdd.Parameters.ParamByName('@add_val_002').Value;

      Q_sub.Next;
    end;



    // ----------Рисуем комиссию USD---------------
    exWks.Cells[row_seek + fact_cnt + 17, 8 + column_agent * Q_sub.RecordCount].Value := 'Комиссия:';
    exWks.Cells[row_seek + fact_cnt + 17, 9 + column_agent * Q_sub.RecordCount].Value := 'USD';
    exWks.Cells[row_seek + fact_cnt + 17, 8 + column_agent * Q_sub.RecordCount].HorizontalAlignment := -4152;
    exWks.Range[exWks.Cells[row_seek + fact_cnt + 17, 8 + column_agent * Q_sub.RecordCount], exWks.Cells[row_seek + fact_cnt + 17, 10 + column_agent * Q_sub.RecordCount]].Font.ColorIndex := 5;
    exWks.Range[exWks.Cells[row_seek + fact_cnt + 17, 8 + column_agent * Q_sub.RecordCount], exWks.Cells[row_seek + fact_cnt + 17, 10 + column_agent * Q_sub.RecordCount]].Font.Bold := 1;

    str_formula := '=R[-7]C[-' + IntToStr(column_agent * Q_sub.RecordCount) + ']';
    for m := 0 to Q_sub.RecordCount - 1 do  str_formula := str_formula + '- R[-7]C[-' + IntToStr(column_agent * m) + ']';
    exWks.Cells[row_seek + fact_cnt + 17, 10 + column_agent * Q_sub.RecordCount].Formula := str_formula;

    exWks.Range[exWks.Cells[row_seek + fact_cnt + 17, 7 + column_agent * Q_sub.RecordCount], exWks.Cells[row_seek + fact_cnt + 17, 10 + column_agent * Q_sub.RecordCount]].Interior.ColorIndex := 36;
    exWks.Range[exWks.Cells[row_seek + fact_cnt + 17, 7 + column_agent * Q_sub.RecordCount], exWks.Cells[row_seek + fact_cnt + 17, 10 + column_agent * Q_sub.RecordCount]].Borders[7].LineStyle := 1; // left
    exWks.Range[exWks.Cells[row_seek + fact_cnt + 17, 7 + column_agent * Q_sub.RecordCount], exWks.Cells[row_seek + fact_cnt + 17, 10 + column_agent * Q_sub.RecordCount]].Borders[10].LineStyle := 1;  // right
    exWks.Range[exWks.Cells[row_seek + fact_cnt + 17, 7 + column_agent * Q_sub.RecordCount], exWks.Cells[row_seek + fact_cnt + 17, 10 + column_agent * Q_sub.RecordCount]].Borders[9].LineStyle := 1;  // bottom

    exWks.Range[exWks.Cells[7, 2], exWks.Cells[row_seek + fact_cnt + 17, 10 + column_agent * Q_sub.RecordCount]].Columns.AutoFit;

    //############################################################################
    // РУБЛИ
    // ----------Сумма в RUB-----------------------
    // Подрядчик (исключение для транзита)
    Q_sub.First;
    while not Q_sub.Eof do begin
      if ((Q_sub.FieldByName('contract_set').AsInteger = 1)) and (Q_Agree.FieldByName('vid_transfer_cod').AsString = '4') then begin
        // транзит
        if (Q_sub.FieldByName('currency_id').AsInteger = 3) then exWks.Cells[row_seek + fact_cnt + 11, 10 + column_agent * Q_sub.RecNo].Value := '=ROUND(R[-2]C,2)'
        else exWks.Cells[row_seek + fact_cnt + 11, 10 + column_agent * Q_sub.RecNo].Value := '=ROUND(R[-2]C[1],2)';
        // ---- пересчёт к доллару идёт через рублёвую сумму
        exWks.Cells[row_seek + fact_cnt + 10, 10 + column_agent * Q_sub.RecNo].Value := '=ROUND(R[1]C*R[3]C/R[4]C,2)';
      end;
      Q_sub.Next;
    end;

    // ----------Рисуем комиссию RUB---------------
    exWks.Cells[row_seek + fact_cnt + 18, 8 + column_agent * Q_sub.RecordCount].Value := 'Комиссия:';
    exWks.Cells[row_seek + fact_cnt + 18, 9 + column_agent * Q_sub.RecordCount].Value := 'RUB';
    exWks.Cells[row_seek + fact_cnt + 18, 8 + column_agent * Q_sub.RecordCount].HorizontalAlignment := -4152;
    exWks.Range[exWks.Cells[row_seek + fact_cnt + 18, 8 + column_agent * Q_sub.RecordCount], exWks.Cells[row_seek + fact_cnt + 18, 10 + column_agent * Q_sub.RecordCount]].Font.ColorIndex := 5;
    exWks.Range[exWks.Cells[row_seek + fact_cnt + 18, 8 + column_agent * Q_sub.RecordCount], exWks.Cells[row_seek + fact_cnt + 18, 10 + column_agent * Q_sub.RecordCount]].Font.Bold := 1;

    str_formula := '=R[-7]C[-' + IntToStr(column_agent*Q_sub.RecordCount) + ']';
    for m := 0 to Q_sub.RecordCount - 1 do str_formula := str_formula + '- R[-7]C[-' + IntToStr(column_agent * m) + ']';
    exWks.Cells[row_seek + fact_cnt + 18, 10 + column_agent * Q_sub.RecordCount].Formula := str_formula;

    exWks.Range[exWks.Cells[row_seek + fact_cnt + 18, 7 + column_agent * Q_sub.RecordCount], exWks.Cells[row_seek + fact_cnt + 18, 10 + column_agent * Q_sub.RecordCount]].Interior.ColorIndex := 34;
    exWks.Range[exWks.Cells[row_seek + fact_cnt + 18, 7 + column_agent * Q_sub.RecordCount], exWks.Cells[row_seek + fact_cnt + 18, 10 + column_agent * Q_sub.RecordCount]].Borders[7].LineStyle := 1; // left
    exWks.Range[exWks.Cells[row_seek + fact_cnt + 18, 7 + column_agent * Q_sub.RecordCount], exWks.Cells[row_seek + fact_cnt + 18, 10 + column_agent * Q_sub.RecordCount]].Borders[10].LineStyle := 1;  // right
    exWks.Range[exWks.Cells[row_seek + fact_cnt + 18, 7 + column_agent * Q_sub.RecordCount], exWks.Cells[row_seek + fact_cnt + 18, 10 + column_agent * Q_sub.RecordCount]].Borders[9].LineStyle := 1;  // bottom

    exWks.Range[exWks.Cells[7, 2], exWks.Cells[row_seek + fact_cnt + 18, 9 + column_agent * Q_sub.RecordCount]].Columns.AutoFit;
    //############################################################################

    // ----------Рисуем комиссию RUB (без НДС)---------------
    exWks.Cells[row_seek + fact_cnt + 19, 8 + column_agent * Q_sub.RecordCount].Value := 'Комиссия без НДС:';
    exWks.Cells[row_seek + fact_cnt + 19, 9 + column_agent * Q_sub.RecordCount].Value := 'RUB';
    exWks.Cells[row_seek + fact_cnt + 19, 8 + column_agent * Q_sub.RecordCount].HorizontalAlignment := -4152;
//    exWks.Range[exWks.Cells[row_seek + fact_cnt + 19, 8 + column_agent * Q_sub.RecordCount], exWks.Cells[row_seek + fact_cnt + 19, 10 + column_agent * Q_sub.RecordCount]].Font.ColorIndex := 5;
//    exWks.Range[exWks.Cells[row_seek + fact_cnt + 19, 8 + column_agent * Q_sub.RecordCount], exWks.Cells[row_seek + fact_cnt + 19, 10 + column_agent * Q_sub.RecordCount]].Font.Bold := 1;

    str_formula := '=(R[-8]C[-' + IntToStr(column_agent*Q_sub.RecordCount) + ']-R[-7]C[-' + IntToStr(column_agent*Q_sub.RecordCount) + '])';
    for m := 0 to Q_sub.RecordCount - 1 do str_formula := str_formula + '- (R[-8]C[-' + IntToStr(column_agent * m) + ']-R[-7]C[-' + IntToStr(column_agent * m) + '])';
    exWks.Cells[row_seek + fact_cnt + 19, 10 + column_agent * Q_sub.RecordCount].Formula := str_formula;

    exWks.Range[exWks.Cells[row_seek + fact_cnt + 19, 7 + column_agent * Q_sub.RecordCount], exWks.Cells[row_seek + fact_cnt + 19, 10 + column_agent * Q_sub.RecordCount]].Interior.ColorIndex := 34;
    exWks.Range[exWks.Cells[row_seek + fact_cnt + 19, 7 + column_agent * Q_sub.RecordCount], exWks.Cells[row_seek + fact_cnt + 19, 10 + column_agent * Q_sub.RecordCount]].Borders[7].LineStyle := 1; // left
    exWks.Range[exWks.Cells[row_seek + fact_cnt + 19, 7 + column_agent * Q_sub.RecordCount], exWks.Cells[row_seek + fact_cnt + 19, 10 + column_agent * Q_sub.RecordCount]].Borders[10].LineStyle := 1;  // right
    exWks.Range[exWks.Cells[row_seek + fact_cnt + 19, 7 + column_agent * Q_sub.RecordCount], exWks.Cells[row_seek + fact_cnt + 19, 10 + column_agent * Q_sub.RecordCount]].Borders[9].LineStyle := 1;  // bottom

    exWks.Rows[row_seek + fact_cnt + 19].Group;
    exWks.Outline.ShowLevels(1);

    exWks.Range[exWks.Cells[7, 2], exWks.Cells[row_seek + fact_cnt + 20, 15 + column_agent * Q_sub.RecordCount]].Columns.AutoFit;


    //############################################################################
    // ------------сохранение данных-------- сохраняются данные, если была печать всей карточки -DR-
    ShowTextMessage('Идет вывод фрахтовой карточки: '+IntToStr(j+1)+' из '+IntToStr(BargainList.Count)+#13#10+ 'Сохранение данных... ', False);

    // Для проверки рода ПС
    Q_Vagon.Close;
    Q_Vagon.SQL.Clear;
    Q_Vagon.SQL.Add('DECLARE @users_group_id int;');
    Q_Vagon.SQL.Add('SELECT @users_group_id = users_group_id FROM users WHERE users_name = SYSTEM_USER;');
    Q_Vagon.SQL.Add('');
    Q_Vagon.SQL.Add('SELECT DISTINCT view_vagon.rod_vagon_name');
    Q_Vagon.SQL.Add('FROM fact JOIN view_vagon');
    Q_Vagon.SQL.Add('ON fact.num_vagon = view_vagon.num_vagon');
    Q_Vagon.SQL.Add('AND view_vagon.users_group_id = @users_group_id');
    Q_Vagon.SQL.Add('AND fact.bargain_id = ' + Q_Agree.FieldByName('bargain_id').AsString);
    Q_Vagon.SQL.Add('AND fact.set_main = 1');
    Q_Vagon.SQL.Add('AND view_vagon.rod_vagon_name is not null');
    Q_Vagon.Open;

    // Предупреждение или сохранение (если все ОК)
    if (Q_Agree['date_period_finance']<>NULL) OR (Q_Agree.FieldByName('set_bargain_block').AsBoolean) then begin
      // Перевозка закрыта
      Application.MessageBox(PChar('Данные по фрахтовой карточке № '+Q_Agree.FieldByName('bargain_cod').AsString+' не будут сохранены! Перевозка закрыта в финансовом месяце'), 'Ошибка', MB_OK+MB_ICONWARNING);
    end else if ((Q_Agree['agreement_id'] = NULL) AND (Q_Agree['agreement_note'] = NULL)) AND (Q_Agree['date_period'] >= EncodeDate(2009, 3, 1)) then begin
      // Нет приложение && Перевозочный месяц от марта 2009
      Application.MessageBox(PChar('Данные по фрахтовой карточке № '+Q_Agree.FieldByName('bargain_cod').AsString+' не будут сохранены! В перевозке не указано приложение'), 'Ошибка', MB_OK+MB_ICONWARNING);
    end else if (Q_Agree['set_bargain_weight'] = NULL) AND (users_group_cod = '0') then begin
      // (Признак "Вес в сводный отчет + только для СФХ)"
      Application.MessageBox(PChar('Данные по фрахтовой карточке № '+Q_Agree.FieldByName('bargain_cod').AsString+' не будут сохранены! В перевозке не указан признак "Вес для сводного отчёта"'), 'Ошибка', MB_OK+MB_ICONWARNING);
    end else if (Q_Vagon.RecordCount > 1) then begin
      // (Род ПС должен быть одинаковый у всех вагонов)"
      Application.MessageBox(PChar('Данные по фрахтовой карточке № '+Q_Agree.FieldByName('bargain_cod').AsString+' не будут сохранены! Использование вагонов с различным родом ПС в одной перевозке невозможно'), 'Ошибка', MB_OK+MB_ICONWARNING);
    end else begin
      // Все ОК - сохраняем
      try
        // ----- сохраняем клиента

        SP_fraht_card_insert.Parameters.Refresh;
        SP_fraht_card_insert.Parameters.ParamByName('@fraht_card_id').Value := null;
        SP_fraht_card_insert.Parameters.ParamByName('@bargain_id').Value := Q_Agree['bargain_id'];
        case Q_Agree['our_rate_vid_send'] of
          0,1 : begin
                  SP_fraht_card_insert.Parameters.ParamByName('@amount_fact').Value := exWks.Cells[row_seek + fact_cnt + 9, 7].Value;
                  SP_fraht_card_insert.Parameters.ParamByName('@fact_weight').Value := exWks.Cells[row_seek + fact_cnt + 9, 6].Value;
                end;
          3   : begin
                  SP_fraht_card_insert.Parameters.ParamByName('@day_rent'   ).Value := exWks.Cells[row_seek + fact_cnt + 9, 7].Value;
                  SP_fraht_card_insert.Parameters.ParamByName('@fact_weight').Value := exWks.Cells[row_seek + fact_cnt + 9, 6].Value;
                end;
        end;
        SP_fraht_card_insert.Parameters.ParamByName('@amount_units_fact'   ).Value := exWks.Cells[row_seek + fact_cnt + 9, 4].Value;
        SP_fraht_card_insert.Parameters.ParamByName('@bargain_sum_fact'    ).Value := exWks.Cells[row_seek + fact_cnt + 9, 10].Value;
        SP_fraht_card_insert.Parameters.ParamByName('@bargain_sum_fact_USD').Value := exWks.Cells[row_seek + fact_cnt + 10, 10].Value;
        SP_fraht_card_insert.Parameters.ParamByName('@bargain_sum_fact_RUB').Value := exWks.Cells[row_seek + fact_cnt + 11, 10].Value;
        SP_fraht_card_insert.Parameters.ParamByName('@client_NDS_RUB'      ).Value := exWks.Cells[row_seek + fact_cnt + 12, 10].Value;
        SP_fraht_card_insert.Parameters.ParamByName('@client_notNDS_RUB'   ).Value := exWks.Cells[row_seek + fact_cnt + 11, 10].Value - exWks.Cells[row_seek + fact_cnt + 12, 10].Value;
        SP_fraht_card_insert.Parameters.ParamByName('@bargain_comiss_USD'  ).Value := exWks.Cells[row_seek + fact_cnt + 17, 10 + column_agent * sub_cnt].Value;
        SP_fraht_card_insert.Parameters.ParamByName('@bargain_comiss_RUB'  ).Value := exWks.Cells[row_seek + fact_cnt + 18, 10 + column_agent * sub_cnt].Value;
        SP_fraht_card_insert.Parameters.ParamByName('@comiss_notNDS_RUB'   ).Value := exWks.Cells[row_seek + fact_cnt + 19, 10 + column_agent * sub_cnt].Value;
        SP_fraht_card_insert.Parameters.ParamByName('@comiss_NDS_RUB'      ).Value := exWks.Cells[row_seek + fact_cnt + 18, 10 + column_agent * sub_cnt].Value - exWks.Cells[row_seek + fact_cnt + 19, 10 + column_agent * sub_cnt].Value;
        SP_fraht_card_insert.ExecProc;


        // ------ сохраняем подрядчиков
        Q_sub.First;
        while not Q_sub.Eof do begin
          SP_fraht_agent_insert.Parameters.Refresh;
          SP_fraht_agent_insert.Close;
          SP_fraht_agent_insert.Parameters.ParamByName('@shaping_rate_id').Value := Q_sub['shaping_rate_id'];
          SP_fraht_agent_insert.Parameters.ParamByName('@agent_sum_fact_real').Value := exWks.Cells[row_seek + fact_cnt + 9,  16 + column_agent * (Q_sub.RecNo - 1)].Value;
          SP_fraht_agent_insert.Parameters.ParamByName('@agent_sum_fact').Value      := exWks.Cells[row_seek + fact_cnt + 10, 16 + column_agent * (Q_sub.RecNo - 1)].Value;
          SP_fraht_agent_insert.Parameters.ParamByName('@agent_sum_fact_RUB').Value  := exWks.Cells[row_seek + fact_cnt + 11, 16 + column_agent * (Q_sub.RecNo - 1)].Value;
          SP_fraht_agent_insert.Parameters.ParamByName('@agent_NDS_RUB'   ).Value  := exWks.Cells[row_seek + fact_cnt + 12, 16 + column_agent * (Q_sub.RecNo - 1)].Value;
          SP_fraht_agent_insert.Parameters.ParamByName('@agent_notNDS_RUB').Value  := exWks.Cells[row_seek + fact_cnt + 11, 16 + column_agent * (Q_sub.RecNo - 1)].Value - exWks.Cells[row_seek + fact_cnt + 12, 16 + column_agent * (Q_sub.RecNo - 1)].Value;
          SP_fraht_agent_insert.Parameters.ParamByName('@agent_amount_units_fact').Value := exWks.Cells[row_seek + fact_cnt + 8, 13 + column_agent * (Q_sub.RecNo - 1)].Value;
          if Q_sub.FieldByName('vid_send').AsInteger = 0 then
            SP_fraht_agent_insert.Parameters.ParamByName('@agent_amount_fact_calc').Value := exWks.Cells[row_seek + fact_cnt + 9, 13 + column_agent * (Q_sub.RecNo - 1)].Value
          else
            SP_fraht_agent_insert.Parameters.ParamByName('@agent_amount_fact_calc').Value := null;

          SP_fraht_agent_insert.ExecProc;
          Q_sub.Next;
        end;

        // -------- сохранение вагонов
        SP_FrahtFactInsert := TADOStoredProc.Create(nil);
        SP_FrahtFactInsert.Connection := conn;
        SP_FrahtFactInsert.CommandTimeout   := 120;
        SP_FrahtFactInsert.ProcedureName := 'sp_FRAHT_FACT_insert';
        SP_FrahtFactInsert.Parameters.Refresh;
        SP_FrahtFactInsert.Parameters.ParamByName('@bargain_id').Value := BargainList[j];
        SP_FrahtFactInsert.ExecProc;

      except
        Application.MessageBox('ДАННЫЕ ПО ФРАХТОВОЙ КАРТОЧКЕ В БАЗЕ НЕ СОХРАНИЛИСЬ !!!', 'ОШИБОЧКА', 0);
      end;
    end;

    ShowTextMessage('Идет вывод фрахтовой карточки: '+IntToStr(j+1)+' из '+IntToStr(BargainList.Count)+#13#10+ '. Установка страницы Excel...', False);

    // ------- прячем этрановкие колонки ---------
    Q_Sub.Last;
    while not Q_Sub.Bof do begin
      if ((Q_sub.FieldByName('contract_set').AsInteger=1)) AND (Q_Agree.FieldByName('date_period').AsDatetime>StrToDate('30.11.2007')) then begin
        if (Q_sub.FieldByName('currency_id').AsInteger = 3) then begin
          exWks.Columns[11+column_agent*Q_sub.RecNo].Delete; //EntireColumn.Hidden := True;
        end;
      end else begin
        exWks.Columns[12+column_agent*Q_sub.RecNo].Delete; //EntireColumn.Hidden := True;
        exWks.Columns[11+column_agent*Q_sub.RecNo].Delete; //EntireColumn.Hidden := True;
      end;
      Q_sub.Prior;
    end;
    exWks.Columns[12].Delete;
    exWks.Columns[11].Delete;

    Q_sub.First;
    cnt_columns := 11;
    while not Q_Sub.Eof do begin
      column_len  := 6;
      if ((Q_sub.FieldByName('contract_set').AsInteger=1)) AND (Q_Agree.FieldByName('date_period').AsDatetime>StrToDate('30.11.2007')) then begin
        if (Q_sub.FieldByName('currency_id').AsInteger = 3) then begin
          column_len := column_len - 1;
        end;
      end else begin
        column_len := column_len - 2;
      end;

      if Q_sub.FieldByName('set_self_rate').AsBoolean = True then begin
        exWks.Cells[6, cnt_columns].Comment.Shape.Height := 12; //exWks.Cells[6, cnt_columns].Height - 4;
        exWks.Cells[6, cnt_columns].Comment.Shape.Width  := exWks.Range[exWks.Cells[6, cnt_columns], exWks.Cells[6, cnt_columns + column_len - 1]].Width-4;
        exWks.Cells[6, cnt_columns].Comment.Shape.Left   := exWks.Cells[6, cnt_columns].Left+2;
        exWks.Cells[6, cnt_columns].Comment.Shape.Top    := exWks.Cells[6, cnt_columns].Top - exWks.Cells[6, cnt_columns].Height + 10;
      end;

      cnt_columns := cnt_columns + column_len;
      Q_sub.Next;
    end;

    exApp.CutCopyMode := False;
    exWks.Range['A1'].Select;
    exWks.Outline.SummaryRow := 0;

    // ------------------- установка страницы -----------------
    exWks.PageSetup.Orientation := 2;
    exWks.PageSetup.LeftMargin := exApp.InchesToPoints(0.196850393700787);
    exWks.PageSetup.RightMargin := exApp.InchesToPoints(0.196850393700787);
    exWks.PageSetup.TopMargin := exApp.InchesToPoints(0.196850393700787);
    exWks.PageSetup.BottomMargin := exApp.InchesToPoints(0.196850393700787);
    exWks.PageSetup.PrintComments := 16;

    exWks.PageSetup.Zoom := False;
    exWks.PageSetup.FitToPagesWide := 1;
    exWks.PageSetup.FitToPagesTall := 100;
    exWks.PageSetup.PrintArea := exWks.Range[exWks.Cells[1,1], exWks.Cells[row_seek + fact_cnt + 18, 13+4*Q_sub.RecordCount]].Address;
    exWks.Cells[row_seek + fact_cnt + 21, 7 + 4 * Q_sub.RecordCount].Value := 'Исполнитель _________________________ '+Q_Agree.FieldByName('FIO_users_owner').AsString;

    // Печать ШК
    barcode.date := Q_Agree.FieldByName('date_period').AsDateTime;
    barcode.global_id :=Q_Agree.FieldByName('bargain_id').AsInteger;
    barcode.user_id := Q_Agree.FieldByName('users_owner_id').AsInteger;
    barcode.object_id := 24; // BARGAIN
    PrintBarCode2of5(barcode, exWks, exWks.Cells[row_seek + fact_cnt + 23, 6 + 4 * Q_sub.RecordCount]);


  end;  // for - основной цикл перебора карточек



//  old_rate.Free;
  Q_Sub.Free;
  Q_Agree.Free;
//  Q_Border.Free;
  Q_Vagon.Free;
  SP_fraht_card_insert.Free;
  SP_fraht_agent_insert.Free;
  SP_FactCalcAdd.Free;
  SP_FrahtCard2.Free;

  ShowTextMessage('Вывод отчета завершен', true);
  exWkb1.Close(0);

  if set_show_excel then begin
    exApp.Visible := True;
  end else begin
    exWkb.Close(0);
    exApp.Quit;
  end;
  exWks := Null; exWkb := Null; exApp := Null; exWks1 := Null; exWkb1 := Null;
  VarClear(exWks); VarClear(exWkb); VarClear(exApp); VarClear(exWks1); VarClear(exWkb1);

  Screen.Cursor := crDefault;
end; { procedure PrintFrahtCardWeight_Multi }



// функция извлекает и сохраняет на диск файл, сохраненный в поле БД FField.
// Если AskUser = true - процедура запрашивает имя файла для сохранения,
// если иначе - тогда не требует вмешательства пользователя
// возврат = true - если файл на диске был создан, иначе возврат = false
function LoadFileFromDB(FFileName: string; FField: TField; AskUser: boolean): boolean;
var
  OutFileName : string;
  tmp_path : string;
begin

  tmp_path := ExtractFilePath(ParamStr(0)) + 'Temp\';

  OutFileName := FFileName;
  result := false;
  if AskUser then begin // запрашиваем пользователя об имени файла
    with TOpenDialog.Create(nil) do begin
      InitialDir := ExtractFileDir(FFileName);
      FileName   := FFileName;
      if Execute then begin
        OutFileName := FileName;
        Free;
      end else begin
        Free;
        exit;
      end;
    end {with}
  end else begin
    DeleteFileFromDir();
    OutFileName := tmp_path + '\' +  OutFileName;
  end;
  if not DirectoryExists(tmp_path) then ForceDirectories(tmp_path);
  TADOBlobStream.Create(FField as TBlobField, bmRead).SaveToFile(OutFileName);   // сохраняем файл на диск
  if FileExists(OutFileName) then  ShellExecute(HWND(nil), 'open', PChar(OutFileName), nil, nil, SW_SHOWNORMAL);
  result := FileExists(OutFileName);
end;

procedure DeleteFileFromDir(folder : string = '');
var fs : TSearchRec;
begin
  if folder = '' then folder := ExtractFilePath(ParamStr(0)) + 'Temp\';

  if FindFirst(folder + '\*.*', faAnyFile - faDirectory - faVolumeID, fs) = 0 then begin
    repeat
      DeleteFile(PChar(folder + '\' + fs.Name))
    until
      FindNext(fs) <> 0;
  Sysutils.FindClose(fs);
  end;
end;

procedure PrintFactByAgreeNew(str_bargain_id : string; conn: TADOConnection; usr_pwd: PUser_pwd);
var exApp, exWks : Variant;
           row_0 : integer;
              SP : TADOStoredProc;
begin
  if str_bargain_id = '' then exit;

  Screen.Cursor := crHourglass;

  ShowTextMessage('Запрос данных с сервера...', False);
  SP := TADOStoredProc.Create(nil);
  SP.Connection := conn;
  SP.ProcedureName := 'sp_Report_fact_track';
  SP.CommandTimeout := 600;
  SP.Parameters.Refresh;
  SP.Parameters.ParamByName('@type_report'   ).Value := 343;
  SP.Parameters.ParamByName('@str_bargain_id').Value := str_bargain_id;
  SP.Parameters.ParamByName('@users_group_id').Value := usr_pwd.user_group_id;
  SP.Open;
  if (SP.RecordCount = 0) OR (SP.IsEmpty) then begin
    ShowTextMessage('', True);
    Application.MessageBox('Нет данных.','Внимание', MB_OK + MB_ICONERROR);
    Screen.Cursor := crDefault;
    SP.Free;
    Exit;
  end;

  ShowTextMessage('Запуск Excel...', False);
  exApp := CreateOleObject('Excel.Application');
  exApp.Application.EnableEvents := False;
  exApp.ScreenUpdating := False;
  exApp.Workbooks.Add(GetDocBlob(conn, 343, 9, True));
  exWks := exApp.ActiveWorkbook.WorkSheets[1];
  row_0 := 6;

  while not SP.EOF do begin
    exWks.Range['B' + IntToStr(row_0)].Value := SP.FieldByName('bargain_cod').AsString;
    exWks.Range['C' + IntToStr(row_0)].Value := SP.FieldByName('num_vagon').Value;
    exWks.Range['D' + IntToStr(row_0)].Value := SP.FieldByName('num_document_').AsString;
    exWks.Range['E' + IntToStr(row_0)].Value := SP.FieldByName('date_from_to').AsString;
    exWks.Range['F' + IntToStr(row_0)].Value := SP.FieldByName('fact_weight').Value;
    exWks.Range['G' + IntToStr(row_0)].Value := SP.FieldByName('sum_fact_RUB').Value;

    exWks.Range['H' + IntToStr(row_0)].Value := SP.FieldByName('kargoETSNG_cod').AsString;
    exWks.Range['I' + IntToStr(row_0)].Value := SP.FieldByName('kargoETSNG_name').AsString;
    exWks.Range['J' + IntToStr(row_0)].Value := SP.FieldByName('node_begin_cod').AsString;
    exWks.Range['K' + IntToStr(row_0)].Value := SP.FieldByName('node_begin_name').AsString;
    exWks.Range['L' + IntToStr(row_0)].Value := SP.FieldByName('road_begin_name').AsString;
    exWks.Range['M' + IntToStr(row_0)].Value := SP.FieldByName('node_end_cod').AsString;
    exWks.Range['N' + IntToStr(row_0)].Value := SP.FieldByName('node_end_name').AsString;
    exWks.Range['O' + IntToStr(row_0)].Value := SP.FieldByName('road_end_name').AsString;

    exWks.Range['P' + IntToStr(row_0)].Value := SP.FieldByName('distance').Value;

    exWks.Range['Q' + IntToStr(row_0)].Value := SP.FieldByName('etran_SenderName').AsString;
    exWks.Range['R' + IntToStr(row_0)].Value := SP.FieldByName('etran_RecipName').AsString;
    exWks.Range['S' + IntToStr(row_0)].Value := SP.FieldByName('etran_owner_name').AsString;
    exWks.Range['T' + IntToStr(row_0)].Value := SP.FieldByName('type_sps_name').AsString;
    exWks.Range['U' + IntToStr(row_0)].Value := SP.FieldByName('firm_customer_name').AsString;
    exWks.Range['V' + IntToStr(row_0)].Value := SP.FieldByName('contract_cod').AsString;
    exWks.Range['W' + IntToStr(row_0)].Value := SP.FieldByName('contract_date_begin').Value;
    exWks.Range['X' + IntToStr(row_0)].Value := SP.FieldByName('score_cod').AsString;
    exWks.Range['Y' + IntToStr(row_0)].Value := SP.FieldByName('score_date').Value;
    exWks.Range['Z' + IntToStr(row_0)].Value := SP.FieldByName('score_sum').Value;

    ShowTextMessage('Осталось: ' + IntToStr(SP.RecordCount - SP.RecNo) + ' строк.' , False);
    SP.Next;

    if not SP.Eof then begin
      xCopyRow(exApp,row_0 + 1,row_0 +1);
      inc(row_0);
    end;
  end;
  exApp.Rows[IntToStr(row_0 + 1) + ':' + IntToStr(row_0 + 1)].Select;
  exApp.Selection.Delete;

  exApp.ScreenUpdating := True;
  exApp.Visible := True;
  exApp.Range['A1'].Select;
  VarClear(exWks); VarClear(exApp);
  SP.Free;
  ShowTextMessage('', True);

  Screen.Cursor := crDefault;
end;

procedure PrintFactByAgree(str_bargain_id : string; conn: TADOConnection; usr_pwd: PUser_pwd);
var exApp, exWkb, exWks   : Variant;
    num_str, i            : integer;
    out_str               : string;
    TextDoc               : TStringList; // для вывода в текстовом формате
    Q, Q_tmp              : TADOQuery;
    login                 : string;
    connect_etran         : TADOConnection;
begin
  ShowTextMessage('Идет подготовка и извлечение необходимых данных. Подождите пожалуйста...', False);
    Q_tmp := TADOQuery.Create(nil);
    Q_tmp.Connection := conn;
    Q_tmp.SQL.Add('SELECT bargain_cod, '+
      'CASE '+
      '  WHEN num_document_pref IS NOT NULL THEN num_document_pref + REPLICATE('' '', 2-LEN(num_document_pref)) + REPLICATE(0, 6-LEN(RIGHT(num_document, 6)) )+ RIGHT(num_document, 6) ' +
      '  ELSE REPLICATE(0, 8-LEN(RIGHT(num_document, 8)) )+ RIGHT(num_document, 8) ' +
      ' END AS num_document_, '               +                   // <1>
      'CONVERT(VARCHAR, date_from_to, 104) as date_from_to, ' +   // <2>
      'kargoETSNG_cod, kargoETSNG_name, '     +                   // <3> <4>
      'node_begin_cod, node_begin_name, '     +                   // <5> <6>
      'state_begin_cod, state_begin_name, '   +                   // <12> <13>
      'node_end_cod, node_end_name, '         +                   // <9> <10>
      'state_end_cod, state_end_name, '       +                   // <15> <16>
      'f.num_vagon,            '              +                   // <13>
      'fact_weight,          '                +                   // <14>
      'xml_reply_id, etran_owner_name, '      +                   // <17> <18>
      's.type_sps_name '                      +                   // <19>
      'FROM view_fact_all f LEFT OUTER JOIN view_vagon_sps s ON (f.num_vagon = s.num_vagon) AND (s.users_group_id='+IntToStr(usr_pwd^.user_group_id)+')' +
      'WHERE  (f.set_main = 1) AND (f.bargain_id IN (' + str_bargain_id + ')) ' +
      'ORDER BY f.bargain_id, f.date_from_to, f.num_vagon');
    Q_tmp.Open;

    if Q_tmp.RecordCount = 0 then begin
      ShowTextMessage;
      Application.MessageBox('Не было фактической отгрузки по выбранным перевозкам!', 'Внимание', MB_OK);
      exit;
    end;

    Q := TADOQuery.Create(nil);
    Q.Connection := conn;

    connect_etran := TADOConnection.Create(nil);
    connect_etran.LoginPrompt      := False;
    connect_etran.KeepConnection   := False;

    Q.SQL.Add('SELECT users_group_cod FROM view_users WHERE users_id = ' + IntToStr(usr_pwd.users_id));
    Q.Open;

    login := '';
    if Q.FieldByName('users_group_cod').AsString =  '0' then login := 'Etran_rtr';
//    if Q.FieldByName('users_group_cod').AsString =  '1' then login := 'Etran_KHT';
//    if Q.FieldByName('users_group_cod').AsString =  '3' then login := 'Etran_PRV';
//    if Q.FieldByName('users_group_cod').AsString =  '5' then login := 'Etran_STS';
//    if Q.FieldByName('users_group_cod').AsString =  '6' then login := 'Etran_KAZ';
//    if Q.FieldByName('users_group_cod').AsString =  '7' then login := 'Etran_RTR';
//    if Q.FieldByName('users_group_cod').AsString = '30' then login := 'Etran_SNN';
    connect_etran.ConnectionString := 'Persist Security Info=True;Provider=SQLOLEDB.1;User ID='+login+';Password='+'etran'+';Initial Catalog='+'lis_etran'+';Data Source=' + usr_pwd.server+';';

    Q.Close;
    Q.Connection := connect_etran;

    try
      exApp := CreateOleObject('Excel.Application');
      exWkb := exApp.Workbooks.Add;
      exWkb := exApp.ActiveWorkbook;
      exWks := exApp.ActiveWorkbook.WorkSheets[1];
      exApp.ActiveWindow.DisplayGridlines := False;
      exWks.Cells.Font.Size := 10;
      exWks.Cells[2,3].Value := 'Отгрузочная информация по перевозкам';

      exWks.Cells[4,3].Value := 'Номер приложения';
      exWks.Cells[4,4].Value := '№ Вагона';
      exWks.Cells[4,5].Value := '№ накладной';
      exWks.Cells[4,6].Value := 'Дата накладной';
      exWks.Cells[4,7].Value := 'Факт. Вес';
      exWks.Cells[4,8].Value := 'Код груза ЕТСНГ';
      exWks.Cells[4,9].Value := 'Груз ЕТСНГ';
      exWks.Cells[4,10].Value := 'Код ст. отпр';
      exWks.Cells[4,11].Value := 'Ст.Отпр.';
      exWks.Cells[4,12].Value := 'Код страны отпр.';
      exWks.Cells[4,13].Value := 'Код ст. назн.';
      exWks.Cells[4,14].Value := 'Ст.Назн.';
      exWks.Cells[4,15].Value := 'Код cтраны назн.';
      exWks.Cells[4,16].Value := 'Грузоотправитель';
      exWks.Cells[4,17].Value := 'Грузополучатель';
      exWks.Cells[4,18].Value := 'Собственник ЭТРАН';
      exWks.Cells[4,19].Value := 'Собственник СПС';

      exWks.Columns[1].ColumnWidth := 1.71;
      exWks.Columns[2].ColumnWidth := 0.42;
      exWks.Columns[3].ColumnWidth := 32;
      exWks.Columns[4].ColumnWidth := 11.57;
      exWks.Columns[5].ColumnWidth := 10.14;
      exWks.Columns[6].ColumnWidth := 9.29;
      exWks.Columns[7].ColumnWidth := 8.43;
      exWks.Columns[8].ColumnWidth := 7.86;
      exWks.Columns[9].ColumnWidth := 11.43;
      exWks.Columns[10].ColumnWidth := 7.14;
      exWks.Columns[11].ColumnWidth := 10.86;
      exWks.Columns[12].ColumnWidth := 7;
      exWks.Columns[13].ColumnWidth := 7.86;
      exWks.Columns[14].ColumnWidth := 10.71;
      exWks.Columns[15].ColumnWidth := 8.43;
      exWks.Columns[16].ColumnWidth := 10.71;
      exWks.Columns[17].ColumnWidth := 10.71;
      exWks.Columns[18].ColumnWidth := 10.8;
      exWks.Columns[19].ColumnWidth := 10.8;

      exWks.Columns[5].NumberFormat := '@';
      exWks.Columns[7].NumberFormat := '# ##0,00';


      exWks.Rows[4].RowHeight           := 38.25;
      exWks.Rows[4].HorizontalAlignment := -4108;
      exWks.Rows[4].VerticalAlignment   := -4108;
      exWks.Rows[4].WrapText            := True;

      exWks.Range[exWks.Cells[4,3],exWks.Cells[4, 19]].Interior.ColorIndex := 35;

      num_str := 5;
      exApp.ActiveWindow.DisplayGridlines := False;
      exWks.Cells.Font.Size := 10;
      while not Q_tmp.Eof do begin
        ShowTextMessage('Идет вывод '+IntToStr(num_str - 4)+' вагона из '+IntToStr(Q_tmp.RecordCount) + #13 + 'Подождите пожалуйста...', False);
        exWks.Cells[num_str, 3].Value := Q_tmp.FieldByName('bargain_cod').AsString;
        exWks.Cells[num_str, 4].Value := Q_tmp.FieldByName('num_vagon').AsString;
        exWks.Cells[num_str, 5].Value := Q_tmp.FieldByName('num_document_').AsString;
        exWks.Cells[num_str, 6].Value := Q_tmp.FieldByName('date_from_to').AsString;
        exWks.Cells[num_str, 7].Value := Q_tmp.FieldByName('fact_weight').AsFloat;
        exWks.Cells[num_str, 8].Value := Q_tmp.FieldByName('kargoETSNG_cod').AsString;
        exWks.Cells[num_str, 9].Value := Q_tmp.FieldByName('kargoETSNG_name').AsString;
        exWks.Cells[num_str, 10].Value := Q_tmp.FieldByName('node_begin_cod').AsString;
        exWks.Cells[num_str, 11].Value := Q_tmp.FieldByName('node_begin_name').AsString;
        exWks.Cells[num_str, 12].Value := Q_tmp.FieldByName('state_begin_cod').AsString;
        exWks.Cells[num_str, 13].Value := Q_tmp.FieldByName('node_end_cod').AsString;
        exWks.Cells[num_str, 14].Value := Q_tmp.FieldByName('node_end_name').AsString;
        exWks.Cells[num_str, 15].Value := Q_tmp.FieldByName('state_end_cod').AsString;
        exWks.Cells[num_str, 18].Value := Q_tmp.FieldByName('etran_owner_name').AsString;
        exWks.Cells[num_str, 19].Value := Q_tmp.FieldByName('type_sps_name').AsString;
        exWks.Cells[num_str, 20].Value := OleVariant(' ');

        if not Q_tmp.FieldByName('xml_reply_id').IsNull then begin
          Q.SQL.Clear;
          Q.SQL.Add('SELECT invSenderName, invRecipName FROM lis_etran..invoice WHERE invoiceID = ' + Q_tmp.FieldByName('xml_reply_id').AsString);
          Q.Open;
          exWks.Cells[num_str, 16].Value := Q.FieldByName('invSenderName').AsString;
          exWks.Cells[num_str, 17].Value := Q.FieldByName('invRecipName').AsString;
        end;

        num_str := num_str + 1;
        Q_tmp.Next;
      end;
      exWks.Range[exWks.Cells[4,3],exWks.Cells[num_str - 1, 19]].Borders[1].LineStyle := 1; // center
      exWks.Range[exWks.Cells[4,3],exWks.Cells[num_str - 1, 19]].Borders[2].LineStyle := 1;
      exWks.Range[exWks.Cells[4,3],exWks.Cells[num_str - 1, 19]].Borders[3].LineStyle := 1;
      exWks.Range[exWks.Cells[4,3],exWks.Cells[num_str - 1, 19]].Borders[4].LineStyle := 1;
      exApp.Visible := True;

    finally
      ShowTextMessage;
      exWks         := Null;
      exWkb         := Null;
      exApp         := Null;
      connect_etran.Free;
      Q.Free;
      Q_tmp.Free;
    end;

end;


 { Функция возвращает строковое представление периода, с Date1 по Date2,
   типа "январь 2007 - февраль 2007"  Флаг APack = true означает сокращеннное
   строковое представление, типа "январь 2007"  в случае если интервал с
   Date1 по Date2 указывает на "ровно" месяц или "ровно" год }
function PeriodToStr(Date1, Date2: TDateTime; Pack: boolean): string;
var Year1, Month1,  Day1                    : Word;
    Year2, Month2, Day2                     : Word;
    WholeMonth, WholeYear , WholeMonthMonth : boolean;
begin
  DecodeDate(Date1, Year1,  Month1,  Day1);
  DecodeDate(Date2, Year2, Month2, Day2);
  WholeMonth := (Day1 = 1) and (Day2 = DaysInMonth(Date2)) and
                (Month1 = Month2) and (Year1 = Year2);
  WholeYear := (Day1 = 1) and (Month1 = 1) and (Year1 = Year2) and
               (Day2 = 31) and (Month2 = 12);
  WholeMonthMonth := (Day1 = 1) and (Day2 = DaysInMonth(Date2)) and ((Month1 <> Month2) OR (Year1 <> Year2));

  if not Pack then
    result := FormatDateTime('dd.mm.yy', Date1)+' - '+ FormatDateTime('dd.mm.yy', Date2)
  else begin
    if WholeYear then
      result := FormatDateTime('yyyy год', Date1)
    else
      if WholeMonth then
        result := FormatDateTime('mmmm yyyy', Date1)
      else
        if WholeMonthMonth then
          result := FormatDateTime('mmm yy', Date1)+' - '+ FormatDateTime('mmm yy', Date2)
        else
          if (Date1 = Date2) then
            result := FormatDateTime('dd.mm.yy', Date1)
          else
            result := FormatDateTime('dd.mm.yy', Date1)+' - '+ FormatDateTime('dd.mm.yy', Date2)
  end;
end;



function ShowFactTrackVagonDlg(AppHandle: THandle; user_pwd: PUser_pwd; type_view: integer;str_vagon_num: string = ''; type_result: integer = -9):Variant;
type
  TFunc =  function(AppHandle: THandle; user_pwd: PUser_pwd; type_view: integer; str_vagon_num: string = ''; type_result: integer = -9): Variant;
var
  FactTrackVagonDlgHandle: THandle;
       FFactTrackVagonDlg: TFunc;
begin
  FactTrackVagonDlgHandle := LoadLibrary('Search.dll');
  @FFactTrackVagonDlg := GetProcAddress(FactTrackVagonDlgHandle, 'CreateWndFactTrackVagonDlg');
  Result := FFactTrackVagonDlg(AppHandle, user_pwd, type_view, str_vagon_num, type_result );
  FreeLibrary(FactTrackVagonDlgHandle);
end;


function ShowFactTrackTripDlg(AppHandle: THandle; user_pwd: PUser_pwd; ActivePage: integer):Variant;
type
  TFunc =  function(AppHandle: THandle; user_pwd: PUser_pwd; ActivePage: integer): Variant;
var
  FactTrackTripDlgHandle: THandle;
  FFactTrackTripDlg: TFunc;
begin
  FactTrackTripDlgHandle := LoadLibrary('Search.dll');
  @FFactTrackTripDlg := GetProcAddress(FactTrackTripDlgHandle, 'CreateWndFactTrackTripDlg');
  Result := FFactTrackTripDlg(AppHandle, user_pwd, ActivePage);
  FreeLibrary(FactTrackTripDlgHandle);
end;


function ShowFactUpdateSettings(AppHandle: THandle; user_pwd: PUser_pwd; ActivePage: integer):Variant;
type
  TFunc =  function(AppHandle: THandle; user_pwd: PUser_pwd; ActivePage: integer): Variant;
var
  FactTrackVagonDlgHandle: THandle;
  FFactTrackVagonDlg: TFunc;
begin
  FactTrackVagonDlgHandle := LoadLibrary('User.dll');
  @FFactTrackVagonDlg := GetProcAddress(FactTrackVagonDlgHandle, 'CreateWndFactUpdateSettings');
  Result := FFactTrackVagonDlg(AppHandle, user_pwd, ActivePage);
  FreeLibrary(FactTrackVagonDlgHandle);
end;

procedure RestoreGroupedColumns(cxGridView : TcxGridDBBandedTableView);
var i : integer;
begin
  for i:=0 to cxGridView.GroupedColumnCount-1 do begin
    cxGridView.GroupedColumns[0].Visible := True;
    cxGridView.GroupedColumns[0].GroupIndex := -1;
  end;
end;

// Настройки Акта
function GetActsOption(acts_cod : string; conn : TADOConnection) : TCustomADODataSet;
var SP : TADOStoredProc;
begin
  Result := nil;
  SP := TADOStoredProc.Create(nil);
  SP.Connection := conn;
  SP.ProcedureName := 'sp_acts_option_modify';
  SP.Parameters.Refresh;

  SP.Parameters.ParamByName('@type_action').Value := 'Get Acts Option';
  SP.Parameters.ParamByName('@acts_cod').Value := acts_cod;

  try
    SP.Open;
    Result := SP;
  except
  end;
end;

function OpenActsOption(acts_cod : string; conn : TADOConnection; usr_pwd: PUser_pwd; var date_begin, date_end: TDateTime; type_date : integer) : Boolean;
//var _fmAO : TfmActsOption;
type
    TFunc = function (AppHand: THandle; acts_cod : string; conn : TADOConnection; usr_pwd: PUser_pwd; date_begin, date_end: TDateTime; type_date : integer): variant;
    //TFunc = function(AppHand: THandle; acts_cod : string; usr_pwd: PUser_pwd): variant;
var FFunc  : TFunc;
    handle : THandle;
    v      : variant;
begin
  Result := False;

  handle := LoadLibrary('FormsAdd.dll');
  @FFunc := GetProcAddress(handle, 'CreateWndActsOption');
  v := FFunc(Application.Handle, acts_cod, conn, usr_pwd, date_begin, date_end, type_date);
  FreeLibrary(handle);

  if v[0] = True then begin
    // если все ок, то возвращаем дату
    // все прочие параметры отчет полут самостоятельно воспользовавшись функцией GetActsOption
    date_begin := v[1];
    date_end   := v[2];

    Result := True;
  end;
end;
// Настройки Акта

procedure AllowableKargo(cxGridView : TcxGridDBBandedTableView; conn : TADOConnection);
var exWks, exApp : Variant;
               i : Integer;
begin
     if cxGridView.Controller.SelectedRowCount = 1 then begin
        exApp := CreateOleObject('Excel.Application');
        exApp.Application.EnableEvents := False;
        exApp.Workbooks.Open(GetDocBlob(conn, 261));
        exWks := exApp.ActiveWorkbook.WorkSheets[1];
        exApp.Visible := True;
        for i:=0 to cxGridView.Controller.SelectedRowCount - 1 do
        exWks.Range['B2:B9216'].AutoFilter(1, VarToStr(cxGridView.Controller.SelectedRows[i].Values[cxGridView.GetColumnByFieldName('model_name').Index]), True)
      end else
        Application.MessageBox('Выберите одну запись!', 'ВНИМАНИЕ', MB_OK);
        exApp:=Unassigned;
end;

procedure DrawcxGridColumnOnFiltered(Sender: TObject);
var            i : integer;
 filter_criteria : TcxFilterCriteriaItem;
   data_criteria : TcxDataFilterCriteria;
          cxGrid : TcxGridDBBandedTableView;
begin
  cxGrid := TcxGridDBBandedTableView(TcxGridDBDataController(TcxGridDBDataFilterCriteria(Sender).DataController).GridView);

  data_criteria := TcxDataFilterCriteria(Sender);
  for i := 0 to cxGrid.ColumnCount - 1 do  begin
    filter_criteria := data_criteria.FindItemByItemLink(TcxGridDBBandedColumn(cxGrid.Columns[i]));
    cxGrid.Columns[i].Styles.Header.Free;
    if filter_criteria <> nil then begin
      cxGrid.Columns[i].Styles.Header := TcxStyle.Create(nil);
      cxGrid.Columns[i].Styles.Header.Font.Style := [fsBold, fsUnderline];
      cxGrid.Columns[i].Styles.Header.TextColor := clBlue;
    end;
  end;

end;

procedure SetRecordColor(Column_name: string; cxGrid: TcxGridDBBandedTableView; TableName: string; IsColorNull: boolean; color_column_name : string = '');
var
  i, color: integer;
  ColorD : TColorDialog;
  SP_ColorUpdate : TADOStoredProc;
begin
// -----------------------
  color := -9;
  ColorD := TColorDialog.Create(nil);
  if not IsColorNull then
    if ColorD.Execute then color := ColorD.Color
    else begin
      ColorD.Free;
      exit;
    end;

  SP_ColorUpdate := TADOStoredProc.Create(nil);
  SP_ColorUpdate.Connection := TCustomADODataSet(cxGrid.DataController.DataSet).Connection;
  SP_ColorUpdate.ProcedureName := 'sp_global_color_update';
  SP_ColorUpdate.Parameters.Refresh;

  for i := 0 to cxGrid.Controller.SelectedRowCount - 1 do begin
    cxGrid.Controller.SelectedRows[i].Focused := True;
    SP_ColorUpdate.Parameters.ParamByName('@global_id').Value := cxGrid.DataController.DataSet.FieldByName(Column_name).AsInteger;
    if color<>-9 then SP_ColorUpdate.Parameters.ParamByName('@global_color').Value := color
    else SP_ColorUpdate.Parameters.ParamByName('@global_color').Value := null;
    SP_ColorUpdate.Parameters.ParamByName('@table_name').Value := TableName;
    SP_ColorUpdate.Parameters.ParamByName('@column_name').Value := Column_name;
    SP_ColorUpdate.Parameters.ParamByName('@color_column_name').Value := color_column_name;
    SP_ColorUpdate.ExecProc;
  end;
  SP_ColorUpdate.Free;
  ColorD.Free;
end;

procedure SetRecordUsersColor(Column_name: string; cxGrid: TcxGridDBBandedTableView; TableName: string; IsColorNull: boolean);
var
  i      : integer;
  color  : integer;
  ColorD : TColorDialog;
  SP     : TADOStoredProc;
begin
  color := -9;
  if not IsColorNull then begin
    ColorD := TColorDialog.Create(nil);
    if ColorD.Execute then begin
      color := ColorD.Color;
      ColorD.Free;
    end else begin
      ColorD.Free;
      exit;
    end;
  end;

  SP := TADOStoredProc.Create(nil);
  SP.Connection := TCustomADODataSet(cxGrid.DataController.DataSet).Connection;
  SP.ProcedureName := 'sp_users_color_modify';
  SP.Parameters.Refresh;

  SP.Parameters.ParamByName('@type_action').Value := iif(not IsColorNull, 0, 2);
  SP.Parameters.ParamByName('@table_name').Value := TableName;
  SP.Parameters.ParamByName('@users_color').Value := color;

  for i := 0 to cxGrid.Controller.SelectedRowCount - 1 do begin
    SP.Close;
    SP.Parameters.ParamByName('@global_id').Value := cxGrid.Controller.SelectedRows[i].Values[cxGrid.GetColumnByFieldName(Column_name).Index];
    try
      SP.ExecProc;
    except
    end;
  end;
  SP.Free;
end;

function GetStrIdNumDoc(cxGridColumn: TcxGridDBBandedColumn; char_separator:String):string;
var i               : integer;
    num_number_doc  : string;
begin
  for i:=0 to TcxGridDBBandedTableView(cxGridColumn.GridView).Controller.SelectedRowCount -1 do begin
    if i <> 0 then result := result + char_separator;
    num_number_doc := VarToStr(TcxGridDBBandedTableView(cxGridColumn.GridView).Controller.SelectedRows[i].Values[cxGridColumn.Index]);
    if Length(num_number_doc) > 6 then num_number_doc := copy(num_number_doc, Length(num_number_doc) - 5, Length(num_number_doc));
    result := result + num_number_doc;
  end;
end;


function GetStrId(cxGridColumn: TcxGridDBBandedColumn; char_separator:String):string;
var i : integer;
begin
  for i:=0 to TcxGridDBBandedTableView(cxGridColumn.GridView).Controller.SelectedRowCount -1 do begin
    if TcxGridDBBandedTableView(cxGridColumn.GridView).Controller.SelectedRows[i].Values[cxGridColumn.Index] <> null then
      result := result + char_separator + VarToStr(TcxGridDBBandedTableView(cxGridColumn.GridView).Controller.SelectedRows[i].Values[cxGridColumn.Index]);
  end;
  Delete(result, 1, 1);
end;

function  CreateFormUsers(load_library: String; function_name: String; flag: integer; usr_pwd: PUser_pwd) : Variant;
type
  TFunc = function(AppHand:THandle;usr_pwd : PUser_pwd; flag:integer) : Variant;
var
  FUser           : TFunc;
  handle          : THandle;
begin
   handle := LoadLibrary(PChar(load_library));
   @FUser := GetProcAddress(handle,PChar(function_name));
   result := FUser(Application.Handle, usr_pwd, flag);
   FreeLibrary(handle);
end;

function StoreRegistryDate(reg_action: TRegisterAction; reg_key: string; var date_begin, date_end : TDateTime; key_begin: string='Fdate_begin'; key_end: string='Fdate_end'): string;
var Reg : TRegistry;
    Year, Month, Day : Word;
begin
  Reg := TRegistry.Create;
  Reg.RootKey := HKEY_CURRENT_USER;
  Reg.OpenKey(reg_key, True);

  if reg_action =  rgLoad then begin
    if Reg.ValueExists(key_begin) then begin
      date_begin := Reg.ReadDate(key_begin);
      date_end   := Reg.ReadDate(key_end);
      if date_begin = 0 then begin
        DecodeDate(Now, Year, Month, Day);
        date_begin := EncodeDate(Year, Month, 01);
        date_end   := IncMonth(date_begin, 1)-1;
      end;

      if (DayOf(date_begin) = 1) AND (DayOf(date_end) = DaysInMonth(date_end)) AND ((MonthOf(date_end) <> MonthOf(date_begin)) OR (YearOf(date_end) <> YearOf(date_begin))) then
        Result := FormatDateTime('mmm yy', date_begin) + ' - ' + FormatDateTime('mmm yy', date_end);

      if (DayOf(date_begin) = 1) AND (DayOf(date_end) = DayOfTheMonth(date_end)) AND (MonthOf(date_end) = MonthOf(date_begin)) AND (YearOf(date_end) = YearOf(date_begin)) then
        Result := FormatDateTime('mmmm yyyy', date_begin);

      if (DayOf(date_begin) <> 1) OR (DayOf(date_end) <> DaysInMonth(date_end)) then
        Result := FormatDateTime('dd.mm.yy', date_begin) + ' - ' + FormatDateTime('dd.mm.yy', date_end);


//      if (date_end - date_begin > 31) then Result := FormatDateTime('mmm yy', date_begin) + ' - ' + FormatDateTime('mmm yy', date_end-1)
//      else Result := FormatDateTime('mmmm yyyy', date_begin);

    end else begin
      DecodeDate(Now, Year, Month, Day);
      date_begin := StrToDate('01' + FormatSettings.DateSeparator + IntToStr(Month) + FormatSettings.DateSeparator +IntToStr(Year));
      date_end   := IncMonth(date_begin, 1)-1;
      Result    := FormatDateTime('mmmm yyyy', date_begin);
    end;
  end;

  if reg_action =  rgSave then begin
    Reg.WriteDate(key_begin, date_begin);
    Reg.WriteDate(key_end, date_end);
  end;

  Reg.CloseKey;
  Reg.Free;
end;




procedure FilterColumnGridOnKeyPress(cxGridView : TcxGridDBBandedTableView; var Key: Char);
var
  str_Value, str_DisplayValue : string;
         cxFilterCriteriaItem : TcxFilterCriteriaItem;
                 cxGridColumn : TcxGridColumn;
begin
  if not ((Ord(Key) = 8) or (Ord(Key) >= 32)) then Exit;
  cxGridColumn := cxGridView.Controller.FocusedColumn;
  if cxGridColumn = nil then Exit;

  str_Value := '';
  str_DisplayValue := '';
  cxFilterCriteriaItem := cxGridColumn.DataBinding.FilterCriteriaItem;
  if cxFilterCriteriaItem <> nil then begin
    str_Value := VarToStr( cxFilterCriteriaItem.Value );
    str_DisplayValue := cxFilterCriteriaItem.DisplayValue;
    if not ((str_Value <> str_DisplayValue) and (Copy(str_DisplayValue, 1, 1) = '[') and (Copy(str_DisplayValue, Length(str_DisplayValue), 1) = ']')) then str_DisplayValue := '';
  end;

  str_DisplayValue := Copy(str_DisplayValue, 2, Length(str_DisplayValue) - 2);
  if (Ord(Key) <> 8) then str_DisplayValue := str_DisplayValue + Key
  else str_DisplayValue := Copy(str_DisplayValue, 1, Length(str_DisplayValue) - 1);

  cxGridView.Controller.ClearSelection;
  cxGridView.DataController.Filter.Clear;

  if str_DisplayValue <> '' then begin
    str_Value := '%' + str_DisplayValue + '%';
    str_DisplayValue := '[' + str_DisplayValue + ']';

    // Создаем фильтр
    with cxGridView.DataController.Filter do begin
      Clear;
      Options := Options + [fcoCaseInsensitive];
      Root.BoolOperatorKind := fboAnd;
      Root.AddItem(cxGridColumn, foLike, str_Value, str_DisplayValue);
      Active := True;
    end;
  end;

  if cxGridView.DataController.FocusedRowIndex <> -1 then
    cxGridView.DataController.SelectRows(cxGridView.DataController.FocusedRowIndex, cxGridView.DataController.FocusedRowIndex);
end;


procedure RailAtlas_ShowRoute(conn: TADOConnection; node_begin_cod : string; node_end_cod : string = '');
var    rAtl : variant;
   node_cod : string;
          Q : TADOQuery;
begin
  try
    rAtl := CreateOleObject('RailAtlas.Application');
    if (node_begin_cod <> '') AND (node_end_cod <> '') then begin
      rAtl.Route(node_begin_cod, '', node_end_cod, '');
    end else begin
      if (node_begin_cod = '') AND (node_end_cod <> '') then node_cod := node_end_cod;
      if (node_begin_cod <> '') AND (node_end_cod = '') then node_cod := node_begin_cod;

      rAtl.ShowStationByCode(node_cod, '');

//      Q := TADOQuery.Create(nil);
//      Q.Connection := conn;
//      Q.SQL.Text := 'SELECT pid FROM inf_obj_NODE WHERE inf_obj_cod = '''+node_cod+'''';
//      Q.Open;
//      if Q.RecordCount > 0 then rAtl.ShowStationByCode(Q.FieldByName('pid').AsString, '')
//      else Application.MessageBox('Ошибка в поиске станции.', 'Внимание', MB_OK);
//      Q.Free;
    end;
    rAtl := null
  except
    Application.MessageBox('Не установлена программа Rail-Atlas или неверно задан маршрут', 'Внимание', MB_OK);
  end;
end;

{$REGION 'Показать маршрут в RailAtlas'}
// Первая строка в Client_Records станция отправления
// Последняя строка в Client_Records станция назначения

// Структура Client_Records
//  ClientDS := TClientDataSet.Create(nil);
//  ClientDS.FieldDefs.Add('node_cod',  ftString, 255); // код станции - ОБЯЗАТЕЛЬНОЕ поле
//  ClientDS.FieldDefs.Add('color',ftString, 255);  // цвет станции на карте (#15F110, #FFFFFF и т.д...) - необязательное
//  ClientDS.FieldDefs.Add('text',  ftString, 255); // Комментарий для станции - необязательное
//  ClientDS.FieldDefs.Add('set_where',  ftBoolean); // Признак где сейчас вагон - необязательное
//  ClientDS.CreateDataSet;
procedure ShowRouteRailAtlas(Client_Records: TClientDataSet);
var    rAtl  : Variant;
   xml_cod   : string;
   where_cod : string;
begin
  if Client_Records.RecordCount >= 2 then begin
    where_cod := '';
    xml_cod := '<?xml version=''1.0''?><ra:Information xmlns:ra=''http://rail.ctm.ru/RailAtlas/2006'' addnames=''0''><ra:layername>Дислокация</ra:layername> '+
                  '<ra:link><ra:mode>1</ra:mode><ra:color>#FFFFFF</ra:color> <ra:FromToFlags>1</ra:FromToFlags></ra:link>';
    Client_Records.First;
    while not Client_Records.Eof do begin
      xml_cod := xml_cod + '<ra:info>';
      if not Client_Records.FieldByName('color').IsNull then begin
        xml_cod := xml_cod + '<ra:color>' + Client_Records.FieldByName('color').AsString + '</ra:color>';
      end;
      if not Client_Records.FieldByName('node_cod').IsNull then begin
        xml_cod := xml_cod + '<ra:code>' + Client_Records.FieldByName('node_cod').AsString + '</ra:code>';
        // показать иконку вагона в месте нахождения
        if (not Client_Records.FieldByName('set_where').IsNull) and  (Client_Records.FieldByName('set_where').AsBoolean) then
          where_cod := Client_Records.FieldByName('node_cod').AsString;
      end;
      if not Client_Records.FieldByName('text').IsNull then begin
        xml_cod := xml_cod + '<ra:text>' + Client_Records.FieldByName('text').AsString + '</ra:text>';
      end;
      xml_cod := xml_cod + '</ra:info>';
      Client_Records.Next;
    end;
    try
      rAtl := CreateOleObject('RailAtlas.Application');
      if where_cod <> '' then
        rAtl.ShowStationByCode(where_cod, '');
      rAtl.SetUserDataXml(xml_cod);
      rAtl.ShowAllUserData;
      rAtl := null;
    except
      Application.MessageBox('Не установлена программа Rail-Atlas или неверно задан маршрут', 'Внимание', MB_OK);
    end;
  end;
end;
{$ENDREGION 'Показать маршрут в RailAtlas'}

function ExcelInsertRows(exWks: Variant; i: integer; j: integer; caption: string; text: string; font_size: integer = 14) : integer;
begin
  exWks.Rows[IntToStr(i)+':'+IntToStr(i)].Copy;
  exWks.Rows[IntToStr(j)+':'+IntToStr(j)].PasteSpecial(1);

  text := ReplaceStr(text,'Центр фирменного транспортного обслуживания','ЦФТО');

  exWks.Range['A'+IntTostr(j)].Font.Size := font_size;
  exWks.Range['A'+IntTostr(j)].Value := '';
  exWks.Range['A'+IntTostr(j)].Value := ''''+caption + text;
  exWks.Range['A'+IntTostr(j)].EntireRow.AutoFit;

  if (ReplaceStr(text,' ','') = '') or (ReplaceStr(text,' ','') = '/') or (ReplaceStr(text,' ','') = 'тонн') then
    exWks.Rows[IntTostr(j)+':'+IntTostr(j)].RowHeight := 0;

  Result := j;
end;

procedure PrintClaim(claim_id: integer; connect_etran: TADOConnection);
var
  exApp, exWkb, exWks : Variant;
  otpr_header_cnt     : integer;
  otpr_cnt : integer;
  i, line_cnt   : integer;
  str_sum       : string;
  claim_version : integer;
  line_payer_cnt: integer;
  Query_Claim           : TADOQuery;
  Query_Claim_Payer     : TADOQuery;
  Query_Claim_Agreement : TADOQuery;
  Query_Claim_Otpr      : TADOQuery;
  Query_Claim_Styk      : TADOQuery;
  Query_Claim_GraphPod  : TADOQuery;
begin

  exApp := CreateOleObject('Excel.Application');
  exWkb := exApp.Workbooks.Add(GetEtranDocBlob(connect_etran, 27, 9, True)); // 'ГУ-12.xls'
  exWkb := exApp.ActiveWorkbook;
  exWks := exWkb.WorkSheets[1];
//  exApp.Visible := True;


  // Платильщик - Страна отправления = 643(Россия)
  Query_Claim_Payer := TADOQuery.Create(nil);
  Query_Claim_Payer.Connection := connect_etran;
  Query_Claim_Payer.SQL.Add('SELECT * FROM clmPayer WHERE claim_id = ' + IntToStr(claim_id));
  Query_Claim_Payer.SQL.Add('AND case when payerCountryCode = ''643'' then 1 else 0 end = :set_payer');

  Query_Claim_GraphPod := TADOQuery.Create(nil);
  Query_Claim_GraphPod.Connection := connect_etran;
  Query_Claim_GraphPod.SQL.Add('SELECT * FROM otprGraphPod WHERE clmOtpr_id = :clmOtpr_id');

  Query_Claim_Styk := TADOQuery.Create(nil);
  Query_Claim_Styk.Connection := connect_etran;
  Query_Claim_Styk.SQL.Add('SELECT * FROM otprStyk WHERE clmOtpr_id = :clmOtpr_id');


  Query_Claim_Otpr := TADOQuery.Create(nil);
  Query_Claim_Otpr.Connection := connect_etran;
  Query_Claim_Otpr.SQL.Add('SELECT clmOtpr.*, inf_obj_road.inf_obj_name AS road_name, inf_obj_road.inf_obj_cod AS road_cod FROM clmOtpr');
  Query_Claim_Otpr.SQL.Add('LEFT JOIN depo..inf_obj_NODE as inf_obj_NODE ON clmOtpr.otprToStationCode COLLATE cyrillic_general_ci_as = inf_obj_NODE.inf_obj_cod COLLATE cyrillic_general_ci_as and GetDate() between date_begin and date_end');
  Query_Claim_Otpr.SQL.Add('LEFT JOIN depo..inf_obj_ROAD as inf_obj_ROAD ON inf_obj_ROAD.inf_obj_id = inf_obj_NODE.road_id');
  Query_Claim_Otpr.SQL.Add('WHERE claim_id = ' + IntToStr(claim_id));


  Query_Claim := TADOQuery.Create(nil);
  Query_Claim.Connection := connect_etran;
  Query_Claim.SQL.Add('SELECT Claim.*, inf_obj_road.inf_obj_name AS road_name, inf_obj_road.inf_obj_cod AS road_cod');
  Query_Claim.SQL.Add('FROM Claim ');
  Query_Claim.SQL.Add('LEFT JOIN depo..inf_obj_NODE as inf_obj_NODE ON Claim.clmFromStationCode COLLATE cyrillic_general_ci_as = inf_obj_NODE.inf_obj_cod COLLATE cyrillic_general_ci_as and GetDate() between date_begin and date_end');
  Query_Claim.SQL.Add('LEFT JOIN depo..inf_obj_ROAD as inf_obj_ROAD ON inf_obj_ROAD.inf_obj_id = inf_obj_NODE.road_id');
  Query_Claim.SQL.Add('WHERE claim_id = ' + IntToStr(claim_id));
  Query_Claim.Open;

  claim_version := Query_Claim.FieldByName('claimVersion').AsInteger;

  exWks.Range['C9'].Value  := Query_Claim.FieldByName('road_name').AsString + ' - филиал ОАО "РЖД"';
  exWks.Range['E10'].Value := Query_Claim.FieldByName('claimRegDate').AsDateTime;

  exWks.Range['H12'].Value := Query_Claim.FieldByName('claimNumber').AsString;
  if claim_version <> 0 then exWks.Range['H12'].Value := exWks.Range['H12'].Value + '-ИЗМ/' + IntToStr(claim_version);

  exWks.PageSetup.LeftHeader := OleVariant('Заявка № ' + exWks.Range['H12'].Value);

  exWks.Range['I12'].Value := 'на период с      ' + FormatDateTime('dd.mm.yyyy', Query_Claim.FieldByName('clmStartDate').AsDateTime) + ' г.';
  exWks.Range['L12'].Value := 'по      ' + FormatDateTime('dd.mm.yyyy', Query_Claim.FieldByName('clmFinishDate').AsDateTime) + ' г.';

  exWks.Range['F13'].Value := Query_Claim.FieldByName('clmFromStationCode').AsString;
  exWks.Range['H13'].Value := Query_Claim.FieldByName('clmFromStationName').AsString + '  ' + Query_Claim.FieldByName('road_name').AsString + ' ('+Query_Claim.FieldByName('road_cod').AsString+')';

  exWks.Range['H15'].Value := Query_Claim.FieldByName('clmLoadWayOwnerName').AsString;
  exWks.Range['K15'].Value := Query_Claim.FieldByName('clmLoadWayOwnerOKPO').AsString;
  exWks.Range['O15'].Value := Query_Claim.FieldByName('clmLoadWayOwnerNote').AsString;

  exWks.Range['F17'].Value := RightStr('00'+Query_Claim.FieldByName('clmFreightGroupCode').AsString,2);
  exWks.Range['H17'].Value := Query_Claim.FieldByName('clmFreightGroupName').AsString;
  exWks.Range['M17'].Value := Query_Claim.FieldByName('clmMsgKindName').AsString;

  exWks.Range['D19'].Value := Query_Claim.FieldByName('clmSenderOKPO').AsString;
  exWks.Range['G19'].Value := Query_Claim.FieldByName('clmSenderName').AsString + ' ('+Query_Claim.FieldByName('clmSenderAddress').AsString+')';

    case Query_Claim.FieldByName('clmSendKindID').AsInteger of
    1: exWks.Range['O13'].Value := 'ВО';
    2: exWks.Range['O13'].Value := 'КО';
    3: exWks.Range['O13'].Value := 'МО';
    4: exWks.Range['O13'].Value := 'ГO';
    5: exWks.Range['O13'].Value := 'М';
    7: exWks.Range['O13'].Value := 'МК';
    8: exWks.Range['O13'].Value := 'КК';
  end;

  exWks.Range['C25'].Value := Query_Claim.FieldByName('clmDogNumber').AsString;
  exWks.Range['O25'].Value := LeftStr(Query_Claim.FieldByName('clmCarOwnerTypeName').AsString,1);
  exWks.Range['O35'].Value := Query_Claim.FieldByName('clmNote').AsString;

  // Подписи выводятся если состояние заявки СОГЛАСОВАННО(71)
  if Query_Claim.FieldByName('claimStateID').AsInteger = 71 then begin
    Query_Claim_Agreement := TADOQuery.Create(nil);
    Query_Claim_Agreement.Connection := connect_etran;
    Query_Claim_Agreement.SQL.Add('SELECT * FROM clmAgreement WHERE claim_id = ' + IntToStr(claim_id));
    Query_Claim_Agreement.Open;

    if Query_Claim_Agreement.RecordCount = 1 then begin
      exWks.Range['M9'].Value := DateToStr(Query_Claim_Agreement.FieldByName('agrDate').AsDateTime) + ' ' + Query_Claim_Agreement.FieldByName('agrState').AsString;
      exWks.Range['H10'].Value:= Query_Claim_Agreement.FieldByName('agrPost').AsString + ' ' + Query_Claim_Agreement.FieldByName('agrOrgName').AsString;
      exWks.Range['L10'].Value:= Query_Claim_Agreement.FieldByName('agrPerson').AsString;

      exWks.Range['I40'].Value:= Query_Claim_Agreement.FieldByName('agrState').AsString + ' ' +
                                 DateToStr(Query_Claim_Agreement.FieldByName('agrDate').AsDateTime) + ' ' +
                                 Query_Claim_Agreement.FieldByName('agrPerson').AsString;

      exWks.Range['J41'].Value:= Query_Claim_Agreement.FieldByName('agrState').AsString + ' ' +
                                 DateToStr(Query_Claim_Agreement.FieldByName('agrDate').AsDateTime) + ' ' +
                                 Query_Claim_Agreement.FieldByName('agrPerson').AsString;

    end else begin
      Query_Claim_Agreement.Close;
      Query_Claim_Agreement.SQL.Add('AND agrname = :agrname');
      Query_Claim_Agreement.Parameters.ParamByName('agrname').Value := 'Согласование сетевого уровня';
      Query_Claim_Agreement.Open;
      exWks.Range['M9'].Value := DateToStr(Query_Claim_Agreement.FieldByName('agrDate').AsDateTime) + ' ' + Query_Claim_Agreement.FieldByName('agrState').AsString;
      exWks.Range['H10'].Value:= Query_Claim_Agreement.FieldByName('agrPost').AsString + ' ' + Query_Claim_Agreement.FieldByName('agrOrgName').AsString;
      exWks.Range['L10'].Value:= Query_Claim_Agreement.FieldByName('agrPerson').AsString;

      exWks.Range['I40'].Value:= Query_Claim_Agreement.FieldByName('agrState').AsString + ' ' +
                                 DateToStr(Query_Claim_Agreement.FieldByName('agrDate').AsDateTime) + ' ' +
                                 Query_Claim_Agreement.FieldByName('agrPerson').AsString;

      Query_Claim_Agreement.Close;
      Query_Claim_Agreement.Parameters.ParamByName('agrname').Value := 'Согласование дорожного уровня';
      Query_Claim_Agreement.Open;
      exWks.Range['J41'].Value:= Query_Claim_Agreement.FieldByName('agrState').AsString + ' ' +
                                 DateToStr(Query_Claim_Agreement.FieldByName('agrDate').AsDateTime) + ' ' +
                                 Query_Claim_Agreement.FieldByName('agrPerson').AsString;
    end;

    Query_Claim_Agreement.Free;
  end;

  Query_Claim_Payer.Close;
  Query_Claim_Payer.Parameters.ParamByName('set_payer').Value := 1;
  Query_Claim_Payer.Open;
  exWks.Range['C21'].Value := Query_Claim_Payer.FieldByName('payerCode').AsString;
  exWks.Range['F21'].Value := Query_Claim_Payer.FieldByName('payerOKPO').AsString;
  exWks.Range['H21'].Value := Query_Claim_Payer.FieldByName('payerName').AsString;
  if Query_Claim_Payer.FieldByName('payerAddress').AsString <> '' then
    exWks.Range['H21'].Value := exWks.Range['H21'].Value + ' ('+Query_Claim_Payer.FieldByName('payerAddress').AsString+')';

  Query_Claim_Payer.Close;
  Query_Claim_Payer.Parameters.ParamByName('set_payer').Value := 0;
  Query_Claim_Payer.Open;


  exWks.Range['C23'].Value := Query_Claim_Payer.FieldByName('payerOKPO').AsString;
  exWks.Range['F23'].Value := Query_Claim_Payer.FieldByName('payerName').AsString;
  if Query_Claim_Payer.FieldByName('payerAddress').AsString <> '' then
    exWks.Range['F23'].Value :=  exWks.Range['F23'].Value + ' ('+Query_Claim_Payer.FieldByName('payerAddress').AsString+')';
  exWks.Range['F23'].Value := exWks.Range['F23'].Value + ' ' + Query_Claim_Payer.FieldByName('payerCountryName').AsString;

  line_payer_cnt := 23;
  if Query_Claim_Payer.RecordCount > 1 then begin
    Query_Claim_Payer.Next;
    while not Query_Claim_Payer.Eof do begin
      exWks.Rows[IntToStr(line_payer_cnt+2) + ':' + IntToStr(line_payer_cnt+3)].Insert;
      exWks.Rows[IntToStr(line_payer_cnt  ) + ':' + IntToStr(line_payer_cnt+1)].Copy;
      exWks.Rows[IntToStr(line_payer_cnt+2) + ':' + IntToStr(line_payer_cnt+3)].PasteSpecial(1);
      line_payer_cnt := line_payer_cnt + 2;

      exWks.Range['A' + IntToStr(line_payer_cnt)].Value := '';
      exWks.Range['C' + IntToStr(line_payer_cnt)].Value := Query_Claim_Payer.FieldByName('payerOKPO').AsString;
      exWks.Range['F' + IntToStr(line_payer_cnt)].Value := Query_Claim_Payer.FieldByName('payerName').AsString;
      if Query_Claim_Payer.FieldByName('payerAddress').AsString <> '' then
        exWks.Range['F' + IntToStr(line_payer_cnt)].Value :=  exWks.Range['F' + IntToStr(line_payer_cnt)].Value + ' ('+Query_Claim_Payer.FieldByName('payerAddress').AsString+')';
      exWks.Range['F' + IntToStr(line_payer_cnt)].Value := exWks.Range['F' + IntToStr(line_payer_cnt)].Value + ' ' + Query_Claim_Payer.FieldByName('payerCountryName').AsString;

      Query_Claim_Payer.Next;
    end;
  end;
  line_payer_cnt := line_payer_cnt - 23;


  Query_Claim_Otpr.Open;
  line_cnt := 33 + line_payer_cnt;
  while not Query_Claim_Otpr.Eof do begin
    ShowTextMessage('Отправки ' + IntToStr(Query_Claim_Otpr.RecNo) + ' из ' + IntToStr(Query_Claim_Otpr.RecordCount) ,False);
    Query_Claim_Styk.Close;
    Query_Claim_GraphPod.Close;

    Query_Claim_Styk.Parameters.ParamByName('clmOtpr_id').Value     := Query_Claim_Otpr.FieldByName('clmOtpr_id').Value;
    Query_Claim_GraphPod.Parameters.ParamByName('clmOtpr_id').Value := Query_Claim_Otpr.FieldByName('clmOtpr_id').Value;

    Query_Claim_Styk.Open;
    Query_Claim_GraphPod.Open;


    otpr_header_cnt := 4 + Query_Claim_Styk.RecordCount;
    if not Query_Claim_Otpr.FieldByName('otprExitStationName').IsNull then otpr_header_cnt := otpr_header_cnt + 1;
    if not Query_Claim_Otpr.FieldByName('otprToPortName').IsNull      then otpr_header_cnt := otpr_header_cnt + 1;
    if not Query_Claim_Otpr.FieldByName('otprTargetName').IsNull      then otpr_header_cnt := otpr_header_cnt + 1;

    for i := 1 to otpr_header_cnt do begin
      exWks.Rows[IntToStr(line_cnt+1)].Insert;
      exWks.Rows[IntToStr(line_cnt  )].Copy;
      exWks.Rows[IntToStr(line_cnt+1)].PasteSpecial(1);
      if i <> otpr_header_cnt then begin
        exWks.Range['H'+IntToStr(line_cnt)].Borders[5].LineStyle := -4142;
        exWks.Range['H'+IntToStr(line_cnt)].Borders[6].LineStyle := -4142;
        exWks.Range['H'+IntToStr(line_cnt)].Borders[9].LineStyle := -4142;
        exWks.Range['I'+IntToStr(line_cnt)].Borders[5].LineStyle := -4142;
        exWks.Range['I'+IntToStr(line_cnt)].Borders[6].LineStyle := -4142;
        exWks.Range['I'+IntToStr(line_cnt)].Borders[9].LineStyle := -4142;
      end;
      line_cnt := line_cnt + 1;
    end;

    exWks.Range['A'+IntToStr(line_cnt - otpr_header_cnt) + ':A'+IntToStr(line_cnt - 1)].Merge;
    exWks.Range['B'+IntToStr(line_cnt - otpr_header_cnt) + ':B'+IntToStr(line_cnt - 1)].Merge;
    exWks.Range['C'+IntToStr(line_cnt - otpr_header_cnt) + ':F'+IntToStr(line_cnt - 1)].Merge;
    exWks.Range['G'+IntToStr(line_cnt - otpr_header_cnt) + ':G'+IntToStr(line_cnt - 1)].Merge;
    exWks.Range['J'+IntToStr(line_cnt - otpr_header_cnt) + ':J'+IntToStr(line_cnt - 1)].Merge;
    exWks.Range['K'+IntToStr(line_cnt - otpr_header_cnt) + ':K'+IntToStr(line_cnt - 1)].Merge;
    exWks.Range['L'+IntToStr(line_cnt - otpr_header_cnt) + ':L'+IntToStr(line_cnt - 1)].Merge;
    exWks.Range['M'+IntToStr(line_cnt - otpr_header_cnt) + ':M'+IntToStr(line_cnt - 1)].Merge;
    exWks.Range['N'+IntToStr(line_cnt - otpr_header_cnt) + ':N'+IntToStr(line_cnt - 1)].Merge;
    exWks.Range['O'+IntToStr(line_cnt - otpr_header_cnt) + ':O'+IntToStr(line_cnt - 1)].Merge;

    exWks.Range['A'+IntToStr(line_cnt - otpr_header_cnt)].Value := Query_Claim_Otpr.RecNo;
    exWks.Range['C'+IntToStr(line_cnt - otpr_header_cnt)].Value := Query_Claim_Otpr.FieldByName('otprFreightCode').AsString + #10 +
                                                                   Query_Claim_Otpr.FieldByName('otprFreightName').AsString;
    exWks.Range['G'+IntToStr(line_cnt - otpr_header_cnt)].Value := Query_Claim_Otpr.FieldByName('otprTypeName').AsString;


    otpr_cnt := 0;
    exWks.Range['H'+IntToStr(line_cnt - otpr_header_cnt + otpr_cnt)].Value := Query_Claim_Otpr.FieldByName('otprToStationName').AsString;
    otpr_cnt := otpr_cnt + 1;
    exWks.Range['H'+IntToStr(line_cnt - otpr_header_cnt + otpr_cnt)].Value := Query_Claim_Otpr.FieldByName('road_name').AsString;
    otpr_cnt := otpr_cnt + 1;
    exWks.Range['H'+IntToStr(line_cnt - otpr_header_cnt + otpr_cnt)].Value := Query_Claim_Otpr.FieldByName('otprToCountryName').AsString;
    otpr_cnt := otpr_cnt + 1;

    if not Query_Claim_Otpr.FieldByName('otprExitStationName').IsNull then begin
      exWks.Range['H'+IntToStr(line_cnt - otpr_header_cnt + otpr_cnt)].Value := Query_Claim_Otpr.FieldByName('otprExitStationName').AsString;
      otpr_cnt := otpr_cnt + 1;
    end;

    if not Query_Claim_Otpr.FieldByName('otprToPortName').IsNull then begin
      exWks.Range['H'+IntToStr(line_cnt - otpr_header_cnt + otpr_cnt)].Value := Query_Claim_Otpr.FieldByName('otprToPortName').AsString;
      otpr_cnt := otpr_cnt + 1;
    end;

    if not Query_Claim_Otpr.FieldByName('otprTargetName').IsNull then begin
      exWks.Range['H'+IntToStr(line_cnt - otpr_header_cnt + otpr_cnt)].Value := Query_Claim_Otpr.FieldByName('otprTargetName').AsString;
      otpr_cnt := otpr_cnt + 1;
    end;

    exWks.Range['H'+IntToStr(line_cnt - 1)].Value := Query_Claim_Otpr.FieldByName('otprRecipName').AsString + #10 + 'Адрес: ' + Query_Claim_Otpr.FieldByName('otprRecipAddress').AsString;



    exWks.Range['I'+IntToStr(line_cnt - otpr_header_cnt + 0)].Value := Query_Claim_Otpr.FieldByName('otprToStationCode').AsString;
    exWks.Range['I'+IntToStr(line_cnt - otpr_header_cnt + 1)].Value := Query_Claim_Otpr.FieldByName('road_cod').AsString;
    if not Query_Claim_Otpr.FieldByName('otprExitStationCode').IsNull then exWks.Range['I'+IntToStr(line_cnt - otpr_header_cnt + 3)].Value := Query_Claim_Otpr.FieldByName('otprExitStationCode').AsString;
    if (not Query_Claim_Otpr.FieldByName('otprToPortCode').IsNull) and (not Query_Claim_Otpr.FieldByName('otprExitStationCode').IsNull) then exWks.Range['I'+IntToStr(line_cnt - otpr_header_cnt + 4)].Value := Query_Claim_Otpr.FieldByName('otprToPortCode').AsString
    else exWks.Range['I'+IntToStr(line_cnt - otpr_header_cnt + 3)].Value := Query_Claim_Otpr.FieldByName('otprToPortCode').AsString;
    exWks.Range['I'+IntToStr(line_cnt - 1)].Value := Query_Claim_Otpr.FieldByName('otprRecipOKPO').AsString;

    Query_Claim_Styk.First;
    while not Query_Claim_Styk.Eof do begin
      if (not Query_Claim_Otpr.FieldByName('otprExitStationCode').IsNull) and (not Query_Claim_Otpr.FieldByName('otprToPortCode').IsNull) then begin
        exWks.Range['H'+IntToStr(line_cnt - otpr_header_cnt + 4 + Query_Claim_Styk.RecNo)].Value := Query_Claim_Styk.FieldByName('StykStationName').AsString;
        exWks.Range['I'+IntToStr(line_cnt - otpr_header_cnt + 4 + Query_Claim_Styk.RecNo)].Value := Query_Claim_Styk.FieldByName('StykStationCode').AsString;
      end else if (not Query_Claim_Otpr.FieldByName('otprExitStationCode').IsNull) or (not Query_Claim_Otpr.FieldByName('otprToPortCode').IsNull) then begin
        exWks.Range['H'+IntToStr(line_cnt - otpr_header_cnt + 3 + Query_Claim_Styk.RecNo)].Value := Query_Claim_Styk.FieldByName('StykStationName').AsString;
        exWks.Range['I'+IntToStr(line_cnt - otpr_header_cnt + 3 + Query_Claim_Styk.RecNo)].Value := Query_Claim_Styk.FieldByName('StykStationCode').AsString;
      end else begin
        exWks.Range['H'+IntToStr(line_cnt - otpr_header_cnt + 2 + Query_Claim_Styk.RecNo)].Value := Query_Claim_Styk.FieldByName('StykStationName').AsString;
        exWks.Range['I'+IntToStr(line_cnt - otpr_header_cnt + 2 + Query_Claim_Styk.RecNo)].Value := Query_Claim_Styk.FieldByName('StykStationCode').AsString;
      end;
      Query_Claim_Styk.Next;
    end;


    exWks.Range['J'+IntToStr(line_cnt - otpr_header_cnt)].Value := Query_Claim_Otpr.FieldByName('otprToCountryCode').AsString;
    exWks.Range['K'+IntToStr(line_cnt - otpr_header_cnt)].Value := Query_Claim_Otpr.FieldByName('otprFreightWeight').AsString;
    exWks.Range['L'+IntToStr(line_cnt - otpr_header_cnt)].Value := Query_Claim_Otpr.FieldByName('otprCarCount').AsString;
    exWks.Range['M'+IntToStr(line_cnt - otpr_header_cnt)].Value := Query_Claim_Otpr.FieldByName('otprCarTypeCODE').AsString;
    exWks.Range['N'+IntToStr(line_cnt - otpr_header_cnt)].Value := Query_Claim_Otpr.FieldByName('otprCarTypeCODEName').AsString;
    exWks.Range['O'+IntToStr(line_cnt - otpr_header_cnt)].Value :=

                                  Query_Claim_Otpr.FieldByName('otprCarOwnerOKPO').AsString + #10 +
                                  Query_Claim_Otpr.FieldByName('otprCarOwnerName').AsString + #10 +
                                  Query_Claim_Otpr.FieldByName('otprNameISP').AsString + #10 +
                                  Query_Claim_Otpr.FieldByName('otprPrimOtp').AsString;


    exWks.Range['N'+IntToStr(line_cnt - otpr_header_cnt)].WrapText := True;
    exWks.Range['O'+IntToStr(line_cnt - otpr_header_cnt)].WrapText := True;

    if str_sum <> '' then str_sum := str_sum + '+';
    str_sum := str_sum + 'K'+IntToStr(line_cnt - otpr_header_cnt);

    Query_Claim_GraphPod.First;
    while not Query_Claim_GraphPod.Eof do begin
      ShowTextMessage('Отправки ' + IntToStr(Query_Claim_Otpr.RecNo) + ' из ' + IntToStr(Query_Claim_Otpr.RecordCount) + #10 +
                      'График подач ' + IntToStr(Query_Claim_GraphPod.RecNo) + ' из ' + IntToStr(Query_Claim_GraphPod.RecordCount), False);
      exWks.Rows[IntToStr(line_cnt+1)].Insert;
      exWks.Rows[IntToStr(line_cnt  )].Copy;
      exWks.Rows[IntToStr(line_cnt+1)].PasteSpecial(1);
      exWks.Range['A'+IntToStr(line_cnt) + ':B'+IntToStr(line_cnt)].Merge;
      exWks.Range['C'+IntToStr(line_cnt) + ':J'+IntToStr(line_cnt)].Merge;
      exWks.Range['N'+IntToStr(line_cnt) + ':O'+IntToStr(line_cnt)].Merge;

      exWks.Range['A'+IntToStr(line_cnt)].Value := Query_Claim_GraphPod.FieldByName('gpPodDate').AsDateTime;
      exWks.Range['K'+IntToStr(line_cnt)].Value := Query_Claim_GraphPod.FieldByName('gpWeight').AsString;
      exWks.Range['L'+IntToStr(line_cnt)].Value := Query_Claim_GraphPod.FieldByName('gpCarCount').AsString;

      line_cnt := line_cnt + 1;
      Query_Claim_GraphPod.Next;
    end;
    Query_Claim_Otpr.Next;
  end;

  exWks.Rows[IntTostr(line_cnt)].Delete;
  exWks.Rows[IntTostr(line_cnt)].Delete;

  exWks.Range['K'+IntToStr(line_cnt)].Value := '=' + str_sum;
  exWks.Range['L'+IntToStr(line_cnt)].Value := '=' + ReplaceStr(str_sum,'K','L');

  Query_Claim_Otpr.Free;
  Query_Claim.Free;
  Query_Claim_Payer.Free;
  Query_Claim_Styk.Free;
  Query_Claim_GraphPod.Free;
  exWks.Range['A1'].Select;
  exApp.CutCopyMode := False;

  exWks.PageSetup.FitToPagesWide := 1;
  exWks.PageSetup.FitToPagesTall := 1;


  exApp.Visible := True;
//  exWkb.PrintPreview;
  ShowTextMessage();

  VarClear(exWks); VarClear(exWkb); VarClear(exApp);
end;


procedure PrintTelegram(rt_id: integer; connect: TADOConnection);
var
  exApp, exWkb, exWks       : Variant;
  SP_ETRAN_XML_Parser       : TADOStoredProc;
                          i : integer;
begin
  exApp := CreateOleObject('Excel.Application');
  exWkb := exApp.Workbooks.Add(GetEtranDocBlob(connect, 5, 9, True)); // 'Etran_rt.xls'
  exWkb := exApp.ActiveWorkbook;
  exWks := exWkb.WorkSheets[1];

  SP_ETRAN_XML_Parser := TADOStoredProc.Create(nil);
  SP_ETRAN_XML_Parser.Connection := connect;
  SP_ETRAN_XML_Parser.ProcedureName := 'sp_ETRAN_XML_parser;1';
  SP_ETRAN_XML_Parser.Parameters.Refresh;
  SP_ETRAN_XML_Parser.Parameters.ParamByName('@row_id').Value       :=rt_id;
  SP_ETRAN_XML_Parser.Parameters.ParamByName('@doc_type_id').Value  :=29;
  SP_ETRAN_XML_Parser.Parameters.ParamByName('@doc_sub').Value      :=0;
  SP_ETRAN_XML_Parser.Open;

//  exApp.Visible := True;
  i := 8;
  exWks.Range['A'+IntTostr(i)].Font.Name := 'Times New Roman';
  exWks.Range['A'+IntTostr(i)].Font.Size := 14;
  exWks.Range['A'+IntTostr(i)].WrapText  := True;

  if SP_ETRAN_XML_Parser.FieldByName('rtParentID').AsInteger <> 0 then begin
    i := ExcelInsertRows(exWks, i, i  , 'Телеграмма во изменение ', SP_ETRAN_XML_Parser.FieldByName('rtNomStrParent').AsString);
    i := ExcelInsertRows(exWks, i, i+1, 'Грузоотправитель: ', SP_ETRAN_XML_Parser.FieldByName('rtSenderOKPO').AsString + ' - ' + SP_ETRAN_XML_Parser.FieldByName('rtSenderName').AsString);
  end else
    i := ExcelInsertRows(exWks, i, i  , 'Грузоотправитель: ', SP_ETRAN_XML_Parser.FieldByName('rtSenderOKPO').AsString + ' - ' + SP_ETRAN_XML_Parser.FieldByName('rtSenderName').AsString);

  i := ExcelInsertRows(exWks, i, i+1, '', 'осуществляет перевозки');
  i := ExcelInsertRows(exWks, i, i+2, 'В период с ', DateToStr(SP_ETRAN_XML_Parser.FieldByName('rtStartDate').AsDateTime) + ' по ' + DateToStr(SP_ETRAN_XML_Parser.FieldByName('rtFinishDate').AsDateTime));
  i := ExcelInsertRows(exWks, i, i+2, 'из страны ',  SP_ETRAN_XML_Parser.FieldByName('rtFromCountryName').AsString);
  i := ExcelInsertRows(exWks, i, i+1, 'со станции ', SP_ETRAN_XML_Parser.FieldByName('rtFromStationName').AsString);
  i := ExcelInsertRows(exWks, i, i+1, 'вход в СНГ ', SP_ETRAN_XML_Parser.FieldByName('rtEnterSngStationName').AsString);
  i := ExcelInsertRows(exWks, i, i+1, 'вход в России ', SP_ETRAN_XML_Parser.FieldByName('rtEnterStationName').AsString);

  SP_ETRAN_XML_Parser.Close;
  SP_ETRAN_XML_Parser.Parameters.Refresh;
  SP_ETRAN_XML_Parser.Parameters.ParamByName('@row_id').Value :=rt_id;
  SP_ETRAN_XML_Parser.Parameters.ParamByName('@doc_type_id').Value  :=29;
  SP_ETRAN_XML_Parser.Parameters.ParamByName('@doc_sub').Value      :=2;
  SP_ETRAN_XML_Parser.Open;

  while not SP_ETRAN_XML_Parser.Eof do begin
    i := ExcelInsertRows(exWks, i, i+2, '', SP_ETRAN_XML_Parser.FieldByName('otprCarCount').AsString + ' ' + SP_ETRAN_XML_Parser.FieldByName('otprCarTypeName').AsString + ' ' + SP_ETRAN_XML_Parser.FieldByName('otprCarOwnerTypeName').AsString);
    i := ExcelInsertRows(exWks, i, i+1, 'груз ЕТСНГ ', SP_ETRAN_XML_Parser.FieldByName('otprFreightCode').AsString + ' / '+ SP_ETRAN_XML_Parser.FieldByName('otprFreightName').AsString);
    i := ExcelInsertRows(exWks, i, i+1, 'груз ГНГ ', SP_ETRAN_XML_Parser.FieldByName('otprFreightGNGCode').AsString + ' / '+ SP_ETRAN_XML_Parser.FieldByName('otprFreightGNGName').AsString);
    i := ExcelInsertRows(exWks, i, i+1, 'вес ', SP_ETRAN_XML_Parser.FieldByName('otprFreightWeight').AsString + ' тонн');
    i := ExcelInsertRows(exWks, i, i+1, 'страна назн. ', SP_ETRAN_XML_Parser.FieldByName('otprToCountryName').AsString);
    i := ExcelInsertRows(exWks, i, i+1, 'ст.назн. ', SP_ETRAN_XML_Parser.FieldByName('otprToStationCode').AsString + ' / '+  SP_ETRAN_XML_Parser.FieldByName('otprToStationName').AsString);
    i := ExcelInsertRows(exWks, i, i+1, 'ст. вых. из России ', SP_ETRAN_XML_Parser.FieldByName('otprExitStationCode').AsString+' / '+SP_ETRAN_XML_Parser.FieldByName('otprExitStationName').AsString);
    i := ExcelInsertRows(exWks, i, i+1, 'ст. вых. из СНГ ', SP_ETRAN_XML_Parser.FieldByName('otprExitSngStationCode').AsString+' / '+SP_ETRAN_XML_Parser.FieldByName('otprExitSngStationName').AsString);
    i := ExcelInsertRows(exWks, i, i+1, 'гр.пол. ', SP_ETRAN_XML_Parser.FieldByName('otprRecipName').AsString);
    i := ExcelInsertRows(exWks, i, i+1, 'сопровождение ', SP_ETRAN_XML_Parser.FieldByName('otprAccompName').AsString);
    i := ExcelInsertRows(exWks, i, i+1, 'проводники ', SP_ETRAN_XML_Parser.FieldByName('otprGuideCount').AsString);
    SP_ETRAN_XML_Parser.Next;
  end;

  SP_ETRAN_XML_Parser.Close;
  SP_ETRAN_XML_Parser.Parameters.Refresh;
  SP_ETRAN_XML_Parser.Parameters.ParamByName('@row_id').Value :=rt_id;
  SP_ETRAN_XML_Parser.Parameters.ParamByName('@doc_type_id').Value  :=29;
  SP_ETRAN_XML_Parser.Parameters.ParamByName('@doc_sub').Value      :=0;
  SP_ETRAN_XML_Parser.Open;

  i := ExcelInsertRows(exWks, i, i+2, '', 'Оплата тарифа за перевозку по РЖД произведена через ЦФТО экспедиторской организацией:');
  i := ExcelInsertRows(exWks, i, i+1, '', SP_ETRAN_XML_Parser.FieldByName('rtPayerName').AsString);
  i := ExcelInsertRows(exWks, i, i+1, '', 'Другие государства:');

  SP_ETRAN_XML_Parser.Close;
  SP_ETRAN_XML_Parser.Parameters.Refresh;
  SP_ETRAN_XML_Parser.Parameters.ParamByName('@row_id').Value :=rt_id;
  SP_ETRAN_XML_Parser.Parameters.ParamByName('@doc_type_id').Value  :=29;
  SP_ETRAN_XML_Parser.Parameters.ParamByName('@doc_sub').Value      :=1;
  SP_ETRAN_XML_Parser.Open;

  while not SP_ETRAN_XML_Parser.Eof do begin
    i := ExcelInsertRows(exWks, i, i+1, '', '       '+SP_ETRAN_XML_Parser.FieldByName('payerCountryName').AsString + ' ' + SP_ETRAN_XML_Parser.FieldByName('payerTypeName').AsString + ': ' + SP_ETRAN_XML_Parser.FieldByName('payerName').AsString);
    SP_ETRAN_XML_Parser.Next;
  end;

  SP_ETRAN_XML_Parser.Close;
  SP_ETRAN_XML_Parser.Parameters.Refresh;
  SP_ETRAN_XML_Parser.Parameters.ParamByName('@row_id').Value :=rt_id;
  SP_ETRAN_XML_Parser.Parameters.ParamByName('@doc_type_id').Value  :=29;
  SP_ETRAN_XML_Parser.Parameters.ParamByName('@doc_sub').Value      :=0;
  SP_ETRAN_XML_Parser.Open;

  i := ExcelInsertRows(exWks, i, i+2, 'Дополнительная информация: ', SP_ETRAN_XML_Parser.FieldByName('rtPrim').AsString, 12);
  i := ExcelInsertRows(exWks, i, i+2, '', SP_ETRAN_XML_Parser.FieldByName('agrPost').AsString+' '+SP_ETRAN_XML_Parser.FieldByName('agrOrgName').AsString+'          '+SP_ETRAN_XML_Parser.FieldByName('agrPerson').AsString);
  exWks.Range['A'+IntTostr(i)].HorizontalAlignment := 4294963144;

  i := ExcelInsertRows(exWks, i, i+2, 'Согласовано: ', SP_ETRAN_XML_Parser.FieldByName('agrDate').AsString);
  exWks.Range['A'+IntTostr(i)].HorizontalAlignment := 4294963165;

  i := ExcelInsertRows(exWks, i, i+1, '№ ЦФТООД ', SP_ETRAN_XML_Parser.FieldByName('rtNomStr').AsString);
  i := ExcelInsertRows(exWks, i, i+2, 'Исп: ', SP_ETRAN_XML_Parser.FieldByName('rtAgrPerson').AsString);
  exWks.Range['A'+IntTostr(i)].Font.Bold := True;
  i := ExcelInsertRows(exWks, i, i+2, '№ от экспедитора ', SP_ETRAN_XML_Parser.FieldByName('rtNomExp').AsString,12);
  exWks.Range['A'+IntTostr(i)].Font.Bold := True;

  exWks.PageSetup.RightFooter := '№ ЦФТООД '+SP_ETRAN_XML_Parser.FieldByName('rtNomStr').AsString;

  SP_ETRAN_XML_Parser.Free;
  exWks.Range['A1'].Select;
  exApp.CutCopyMode := False;

  exWks.PageSetup.FitToPagesWide := 1;
  exWks.PageSetup.FitToPagesTall := 1;

  exApp.Visible := True;
  exWkb.PrintPreview;

  VarClear(exWks); VarClear(exWkb); VarClear(exApp);
end;




procedure MoveToArchive(cxGridView : TcxGridDBBandedTableView; to_fact_arch : byte);
begin
end;


procedure FindInEtranInvoice(conn: TADOConnection; usr_pwd: PUser_pwd; doc_id: variant; num_vagon: variant; fact_id: integer);
type
  TFunc = function(AppHand: THandle; doc_id:integer; num_vagon: integer; users_group_cod: string; usr_pwd:PUser_pwd) : variant;
  TFuncKKR = function(AppHand: THandle; global_id:integer; users_group_cod: string; usr_pwd:PUser_pwd) : variant;
var
  FEtran   : TFunc;
  FEtranKKR: TFuncKKR;
  handle   : THandle;
  v        : variant;
  Query    : TADOQuery;
   users_group_cod : string;
 etran_doc_type_id : integer;
   etran_global_id : integer;
begin
  if (doc_id = null) or (doc_id = 0) then begin
      ShowMessage('Для данного вагона Этран не является поставщиком информации!');
  end else begin
    Query := TADOQuery.Create(nil);
    Query.Connection := conn;
    Query.SQL.Add('SELECT	inf_obj_cod as users_group_cod');
    Query.SQL.Add('FROM	  users INNER JOIN inf_obj on users.users_group_id = inf_obj.inf_obj_id');
    Query.SQL.Add('WHERE	users_name = system_user');
    Query.Open;
    users_group_cod := Query.FieldByName('users_group_cod').AsString;

    Query.SQL.Clear;
    Query.SQL.Add('SELECT top 1 etran_doc_type_id, isnull(etran_global_id,-9) as etran_global_id FROM etran_link_xml WHERE etran_doc_id = ' + IntToStr(doc_id) + ' AND row_id = ' + IntToStr(fact_id));
    Query.Open;
    etran_doc_type_id := Query.FieldByName('etran_doc_type_id').AsInteger;
    etran_global_id   := Query.FieldByName('etran_global_id').AsInteger;
    Query.Free;

    handle := LoadLibrary('etran.dll');

    if etran_global_id <> -9 then begin
      @FEtranKKR := GetProcAddress(handle, 'CreateWndEtranKKRFind');
      v := FEtranKKR(Application.Handle, etran_global_id, users_group_cod, usr_pwd);
    end else begin
      case etran_doc_type_id of
        1:
          begin
            @FEtran := GetProcAddress(handle, 'CreateWndEtranFindClaim');
            if VarIsNumeric(doc_id) and VarIsNumeric(num_vagon) then  v := FEtran(Application.Handle, doc_id, -9, users_group_cod, usr_pwd);
          end;
        2:
          begin
            @FEtran := GetProcAddress(handle, 'CreateWndEtranFindInvoice');
            if VarIsNumeric(doc_id) and VarIsNumeric(num_vagon) then  v := FEtran(Application.Handle, doc_id, num_vagon, users_group_cod, usr_pwd);
          end;

        23:
          begin
            @FEtran := GetProcAddress(handle, 'CreateWndEtranVPUFind');
            if VarIsNumeric(doc_id) and VarIsNumeric(num_vagon) then  v := FEtran(Application.Handle, doc_id, num_vagon, users_group_cod, usr_pwd);
          end;

        27:
          begin
            @FEtran := GetProcAddress(handle, 'CreateWndEtranCumulativeFind');
            if VarIsNumeric(doc_id) and VarIsNumeric(num_vagon) then  v := FEtran(Application.Handle, doc_id, num_vagon, users_group_cod, usr_pwd);
          end;

        40:
          begin
            @FEtran := GetProcAddress(handle, 'CreateWndEtranRegContFind');
            if VarIsNumeric(doc_id) and VarIsNumeric(num_vagon) then  v := FEtran(Application.Handle, doc_id, num_vagon, users_group_cod, usr_pwd);
          end;
      end;
    end;
    FreeLibrary(handle);
  end;
end;


function ShowFormFrahtBuh(usr_pwd: PUser_pwd;var sql_query: string; var commiss: double) : boolean;
type
  TFunc = function(AppHand:THandle; usr_pwd:PUser_pwd) : Variant;
var
  FBuhDlg  : TFunc;
  handle   : THandle;
  v        : variant;
begin
  handle := LoadLibrary('user.dll');
  @FBuhDlg := GetProcAddress(handle, 'CreateWndFrahtBuhDlg');
  v := FBuhDlg(Application.Handle, usr_pwd);
  FreeLibrary(handle);

  if VarArrayDimCount(v) = 1 then begin
    sql_query := VarToStr(v[0]);
    commiss   := v[1];
    result    := True;
  end else begin
    result := False;
  end;
end;


function OpenCTMAccount(user_pwd: PUser_pwd;ClientDS:TClientDataSet = nil): TClientDataSet;
type
  TFunc = function(AHandle : THandle; user_pwd: PUser_pwd; ClientDS:TClientDataSet = nil) : TClientDataSet;
var
  FCtm                : TFunc;
  handle              : THandle;
begin
  try
    try
      handle := LoadLibrary('Ctm_Tarif.dll');
      @FCtm := GetProcAddress(handle, 'CreateWndCtmNotVisible');
      result := FCtm(Forms.Application.Handle, user_pwd, ClientDS);
    except
      Forms.Application.MessageBox('Отсутствует модуль по расчёту Ж/Д тарифа', 'Внимание', MB_OK);
      result := nil;
    end;
  finally
    FreeLibrary(handle);
  end;
end;

procedure GetCalcDistanceGroup(var Local_DS:TClientDataSet);
type
  TProc = procedure(var Local_DS:TClientDataSet);
var
  FCtm                : TProc;
  handle              : THandle;
begin
  try
    try
      handle := LoadLibrary('Ctm_Tarif.dll');
      @FCtm := GetProcAddress(handle,'GetCalcDistanceGroup');
      FCtm(Local_DS);
    except
      Local_DS := nil;
    end;
  finally
    FreeLibrary(handle);
  end;
end;

procedure GetPPRoute(node_begin_cod, node_end_cod: string; var ClientDS: TClientDataSet; var distance: integer);
type
  TProc = procedure(node_begin_cod, node_end_cod: string; var ClientDS: TClientDataSet; var distance: integer);
var
  FGetPPRoute   : TProc;
  handle        : THandle;
begin
  try
    if Assigned(ClientDS) = False then begin
      ClientDS := TClientDataSet.Create(nil);
      ClientDS.FieldDefs.Add('node_cod',   ftString, 50);
      ClientDS.FieldDefs.Add('node_name',  ftString, 50);
      ClientDS.FieldDefs.Add('distance',   ftInteger);
      ClientDS.FieldDefs.Add('set_in_out', ftBoolean); // True - входящая, False - выходящая
      ClientDS.CreateDataSet;
      ClientDS.LogChanges := False;
    end else begin
      ClientDS.EmptyDataSet;
    end;

    handle := LoadLibrary('Ctm_Tarif.dll');
    @FGetPPRoute := GetProcAddress(handle,'GetPPRoute');
    FGetPPRoute(node_begin_cod, node_end_cod, ClientDS, distance);
  finally
    FreeLibrary(handle);
  end;
end;

procedure GetFullRoute(node_begin_cod: string; node_end_cod: string; Connect: TADOConnection; var ClientDS: TClientDataSet; set_resave: boolean);
type
  TProc = procedure(node_begin_cod: string; node_end_cod: string; Connect: TADOConnection; var ClientDS: TClientDataSet; set_resave: boolean);
var
  FGetFullRoute : TProc;
  handle        : THandle;
begin
  try
    if Assigned(ClientDS) = False then begin
      ClientDS := TClientDataSet.Create(nil);
      ClientDS.FieldDefs.Add('id'       , ftInteger);     // № п\п
      ClientDS.FieldDefs.Add('node_cod' , ftString, 50);  // станция код
      ClientDS.FieldDefs.Add('node_name', ftString, 150); // станция наименование
      ClientDS.FieldDefs.Add('distance' , ftInteger);     // Расстояние (нарастающем итогом)
      ClientDS.CreateDataSet;
      ClientDS.LogChanges := False;
    end else begin
      ClientDS.EmptyDataSet;
    end;

    handle := LoadLibrary('Ctm_Tarif.dll');
    @FGetFullRoute := GetProcAddress(handle,'GetFullRoute');
    FGetFullRoute(node_begin_cod, node_end_cod, Connect, ClientDS, set_resave);
  finally
    FreeLibrary(handle);
  end;
end;

procedure StationFindAround(var ClientDS: TClientDataSet; node_cod: string; radius: integer);
type
  TProc = function(ClientDS: TClientDataSet; node_cod: string; radius: integer): integer;
var
  FCtm   : TProc;
  handle : THandle;
  dist   : integer;
begin
  if Assigned(ClientDS) = False then begin
    ClientDS := TClientDataSet.Create(nil);
    ClientDS.FieldDefs.Add('node_begin_cod',  ftString, 50); // станция отправления
    ClientDS.FieldDefs.Add('node_end_cod',    ftString, 50); // станция назначения
    ClientDS.FieldDefs.Add('distance',        ftInteger  );  // Расстояние (возвращаемый параметр)
    ClientDS.CreateDataSet;
    ClientDS.LogChanges := False;
  end;

  try
    handle := LoadLibrary('Ctm_Tarif.dll');
    @FCtm  := GetProcAddress(handle,'GetStationFindAround');
    dist   := FCtm(ClientDS, node_cod, radius);
  finally
    FreeLibrary(handle);
  end;
end;

function GetCalcDistanceGroupFast(var ClientDS: TClientDataSet; node_begin_cod: string; node_end_cod: string; set_show_message: boolean): integer;
type
  TProc = function(ClientDS: TClientDataSet; node_begin_cod: string; node_end_cod: string; set_show_message: boolean): integer;
var
  FCtm   : TProc;
  handle : THandle;
  dist   : integer;
begin
  if Assigned(ClientDS) = False then begin
    ClientDS := TClientDataSet.Create(nil);
    ClientDS.FieldDefs.Add('node_begin_cod',  ftString, 50); // станция отправления
    ClientDS.FieldDefs.Add('node_end_cod',    ftString, 50); // станция назначения
    ClientDS.FieldDefs.Add('distance',        ftInteger  ); // Расстояние (возвращаемый параметр)
    ClientDS.CreateDataSet;
    ClientDS.LogChanges := False;
  end;

  dist := -9;
  if (node_begin_cod <> '') and (node_end_cod <> '') then begin
    if ClientDS.Locate('node_begin_cod;node_end_cod', VarArrayOf([node_begin_cod, node_end_cod]), []) then begin
      dist := ClientDS.FieldByName('distance').AsInteger;
    end;
  end;

  if dist = -9 then begin
    try
      handle := LoadLibrary('Ctm_Tarif.dll');
      @FCtm  := GetProcAddress(handle,'GetCalcDistanceGroupFast');
      dist   := FCtm(ClientDS, node_begin_cod, node_end_cod, set_show_message);
    finally
      FreeLibrary(handle);
    end;
  end;

  Result := dist;
end;

function GetCalcDistanceFast(node_begin_cod: string; node_end_cod: string): integer;
//type
//  TFunc = function(node_begin_cod: string; node_end_cod: string): integer;
//var
//  FCtm    : TFunc;
//  handle  : THandle;
//  v       : variant;
begin
//  try
//    handle := LoadLibrary('Ctm_Tarif.dll');
//    @FCtm  := GetProcAddress(handle,'GetCalcDistanceFast');
//    result := FCtm(node_begin_cod, node_end_cod);
//  finally
//    FreeLibrary(handle);
//  end;
end;

function GetCalcDistanceDB(node_begin_cod, node_end_cod: string; connect: TADOConnection; set_recalc: boolean; date_from_to: TDateTime): integer;
type
  TFunc = function(node_begin_cod, node_end_cod: string; land_id: integer; node_add_cod: string; date_from_to: variant) : integer;
var
  FCtm   : TFunc;
  handle : THandle;
  v      : variant;
  Q      : TADOQuery;
  SP_inf_obj_distance_modify : TADOStoredProc;
begin
  // Если коды не 6-ти значные, то расстояние посчитать не получиться
  if (Length(node_begin_cod) <> 6) or (Length(node_end_cod) <> 6) or (node_begin_cod = node_end_cod) or (node_begin_cod[1] = '-') or (node_end_cod[1] = '-') then begin
    Result := 0;
    Exit;
  end;

  try
    try
      Q := TADOQuery.Create(nil);
      Q.Connection := connect;
      Q.SQL.Add('SELECT top 1 distance FROM inf_obj_distance WHERE node1_cod=''' + node_begin_cod + ''' and node2_cod=''' + node_end_cod + '''');
      Q.Open;
      if (Q.RecordCount = 0) or (set_recalc = True) then begin
        handle := LoadLibrary('Ctm_Tarif.dll');
        @FCtm := GetProcAddress(handle,'GetCalcDistance');
        Result := FCtm(node_begin_cod, node_end_cod, -9, '', date_from_to);

        if Result >= 0 then begin
          SP_inf_obj_distance_modify := TADOStoredProc.Create(nil);
          SP_inf_obj_distance_modify.Connection := connect;
          SP_inf_obj_distance_modify.ProcedureName := 'sp_inf_obj_distance_modify';
          SP_inf_obj_distance_modify.Parameters.Refresh;
          SP_inf_obj_distance_modify.Parameters.ParamByName('@type_action'   ).Value := 0;
          SP_inf_obj_distance_modify.Parameters.ParamByName('@node_begin_cod').Value := node_begin_cod;
          SP_inf_obj_distance_modify.Parameters.ParamByName('@node_end_cod'  ).Value := node_end_cod;
          SP_inf_obj_distance_modify.Parameters.ParamByName('@distance'      ).Value := Result;
          SP_inf_obj_distance_modify.ExecProc;
          SP_inf_obj_distance_modify.Free;
        end;

      end else begin
        Result := Q.FieldByName('distance').AsInteger;
      end;
    except
      result := 0;
    end;
  finally
    FreeLibrary(handle);
    Q.Free;
  end;
end;

function GetCalcDistance(node_begin_cod, node_end_cod: string; land_id : integer = -9; node_add_cod : string = ''): integer;
type
  TFunc = function(node_begin_cod, node_end_cod: string; land_id : integer; node_add_cod : string; date_from_to: Variant) : integer;
var
  FCtm                : TFunc;
  handle              : THandle;
  v                   : variant;
begin
  try
    try
      handle := LoadLibrary('Ctm_Tarif.dll');
      @FCtm := GetProcAddress(handle,'GetCalcDistance');
      result := FCtm(node_begin_cod, node_end_cod, land_id, node_add_cod, Date);
    except
      result := 0;
    end;
  finally
    FreeLibrary(handle);
  end;
end;

function GetPeriodOfDelivery(node_begin_cod, node_end_cod, kargoETSNG_cod: string): integer;
type
  TFunc = function(node_begin_cod, node_end_cod, kargoETSNG_cod: string) : integer;
var
  FCtm                : TFunc;
  handle              : THandle;
  v                   : variant;
begin
  try
    try
      handle := LoadLibrary('Ctm_Tarif.dll');
      @FCtm := GetProcAddress(handle,'GetPeriodOfDelivery');
      result := FCtm(node_begin_cod, node_end_cod, kargoETSNG_cod);
    except
      result := 0;
    end;
  finally
    FreeLibrary(handle);
  end;
end;

procedure GetAddCollectionFact(conn : TADOConnection; bargain_id : integer; var Client_Add : TClientDataSet; flag : integer);
var    nds : Currency;
  Q, Q_Add : TADOQuery;
begin
  Screen.Cursor := crHourglass;
  Q := TADOQuery.Create(nil);
  Q.Connection := conn;
  Q_Add := TADOQuery.Create(nil);
  Q_Add.Connection := conn;
  case flag of
    0 : begin
        Q.SQL.Text := 'SELECT sum(transport_pay) as sum_transport_pay FROM fact WHERE bargain_id = '+IntToStr(bargain_id)+' AND set_main=1';
        Q.Open;
        Client_Add.Append;
        Client_Add.FieldByName('add_sum').AsCurrency := RoundCurr(Q.FieldByName('sum_transport_pay').AsCurrency, -2);
        Client_Add.FieldByName('add_currency_id').AsInteger := 3;
        Client_Add.FieldByName('add_type_id').AsInteger     := 2;

        Q_Add.SQL.Text := 'SELECT * FROM inf_obj WHERE (type_inf_id = 27) AND (inf_obj_cod=''009'')';
        Q_Add.Open;

        Client_Add.FieldByName('add_vid_id').AsInteger      := Q_Add['inf_obj_id'];
        Client_Add.FieldByName('add_rate_id').AsInteger     := bargain_id;
        Client_Add.FieldByName('type_action').AsInteger     := 0;
        Client_Add.Post;
        end;

    1 : begin
        Q.SQL.Text := 'SELECT sum(transport_pay)*1.18 as sum_transport_pay FROM fact WHERE bargain_id = '+IntToStr(bargain_id)+' AND set_main=1';
        Q.Open;
        Client_Add.Append;
        Client_Add.FieldByName('add_sum').AsCurrency        := RoundCurr(Q.FieldByName('sum_transport_pay').AsCurrency, -2);
        Client_Add.FieldByName('add_currency_id').AsInteger := 3;
        Client_Add.FieldByName('add_type_id').AsInteger     := 2;

        Q_Add.SQL.Text := 'SELECT * FROM inf_obj WHERE (type_inf_id = 27) AND (inf_obj_cod=''009'')';
        Q_Add.Open;

        Client_Add.FieldByName('add_vid_id').AsInteger      := Q_Add['inf_obj_id'];
        Client_Add.FieldByName('add_rate_id').AsInteger     := bargain_id;
        Client_Add.FieldByName('type_action').AsInteger     := 0;
        Client_Add.Post;
        end;

    2 : begin
        Q.SQL.Text := 'SELECT transport_pay = ROUND(((ISNULL(transport_pay, 0) + (ISNULL(transport_pay, 0) /200))  / 1.18), 2) FROM view_bargain_fact WHERE bargain_id =' + IntToStr(bargain_id) + ' AND set_main = 1';
        Q.Open;
        nds := 0;
        if Q.RecordCount = 0 then exit;
        while not Q.Eof do begin
          nds := nds + Q.FieldByName('transport_pay').AsCurrency;
          Q.Next;
        end;

        Client_Add.Append;
        Client_Add.FieldByName('add_sum').AsCurrency    := RoundCurr(nds * 0.18, -2);
        Client_Add.FieldByName('add_vid_id').AsInteger  := 169800;
        Client_Add.FieldByName('add_type_id').AsInteger := 2;
        Client_Add.FieldByName('type_action').AsInteger        := 0;
        Client_Add.Post;
        end;
  end;

  Q.Free;
  Q_Add.Free;
  Screen.Cursor := crDefault;
end;


function GetInvoiceFromBargain(conn: TADOConnection;  bargain_id : integer): string;
var Q : TADOQuery;
    res : string;
begin
  Q := TADOQuery.Create(nil);
  Q.Connection := conn;
  Q.SQL.Add('SELECT invoice_cod FROM invoice_bargain JOIN invoice ON invoice_bargain.invoice_id = invoice.invoice_id AND bargain_id = ' + IntToStr(bargain_id) + ' ORDER BY invoice_cod');
  Q.Open;

  res := '';
  while not Q.Eof do begin
    if res <> '' then res := res + ', ';
    res := res + Q.FieldByName('invoice_cod').AsString;
    Q.Next;
  end;

  Q.Free;
  Result := res;
end;

procedure OpenHelpCHM(index : integer = -9);
begin
  if index = -9 then ShellExecute(Application.Handle, 'open', 'hh.exe', 'Help_Lis.chm', PWIDECHAR(ExtractFilePath(ParamStr(0))), SW_SHOWNORMAL)
  else ShellExecute(Application.Handle, 'open', 'hh.exe', PChar('-mapid ' + IntToStr(index) + ' Help_Lis.chm') , PWIDECHAR(ExtractFilePath(ParamStr(0))), SW_SHOWNORMAL);
end;

procedure PrintAgentBalance(contract_id : integer; d1, d2 : TDateTime; fact_balans : Boolean; conn: TADOConnection; usr_pwd: PUser_pwd);
var exApp, exWkb, exWks                 : Variant;
    Q_Pay, Q_Node, Q_Plan, Q            : TADOQuery;
    Q_ShapingRate, Q_Fact, Q_Contract   : TADOQuery;
    SP_Balance                          : TADOStoredProc;
    i, invoice_id                       : integer;
    invoice_last, delta_cnt, recNo      : integer;
    str, str1, str_nds, str_bargain_id  : string;
    Fdate1, Fdate2, exchange_date       : TDateTime;
    sum_nds                             : currency;
    Fcurrency_id                        : integer;
    brief_name                          : string;
begin

  Q_Contract := TADOQuery.Create(nil);
  Q_Contract.Connection := conn;
  Q_Contract.SQL.Add('SELECT currency_id, contract_id, contract_cod, firm_customer_name_short, firm_self_name_short, date_begin FROM view_contract WHERE contract_id = ' + IntToStr(contract_id));
  Q_Contract.Open;

  if Q_Contract.RecordCount = 0 then begin
    Showmessage('Не найден договор!');
    exit;
  end;


  Fcurrency_id := Q_Contract.FieldByName('currency_id').AsInteger;

  fmPeriod := TfmPeriod.Create(Application, d1, d2, 4);
  case Q_Contract.FieldByName('currency_id').AsInteger of
      1 : fmPeriod.cxComboBox1.ItemIndex := 0;
    0,3 : fmPeriod.cxComboBox1.ItemIndex := 1;
      6 : fmPeriod.cxComboBox1.ItemIndex := 2;
      5 : fmPeriod.cxComboBox1.ItemIndex := 3;
  end;

  if fmPeriod.ShowModal=mrOK then begin
    Fdate1 := fmPeriod._GetMonthBegin;
    Fdate2 := fmPeriod._GetMonthEnd;
    brief_name := fmPeriod.cxComboBox1.Text;
    case fmPeriod.cxComboBox1.ItemIndex of
      0 : Fcurrency_id := 1;
      1 : Fcurrency_id := 3;
      2 : Fcurrency_id := 6;
    end;
  end else exit;

  str_nds := '';

  Screen.Cursor := crHourglass;
  ShowTextMessage('Формирование отчёта...', False);

  SP_Balance := TADOStoredProc.Create(nil);
  SP_Balance.Connection := conn;
  SP_Balance.ProcedureName := 'sp_invoice_balance_GET_new;1';
  SP_Balance.Parameters.Refresh;
  SP_Balance.Parameters.ParamByName('@contract_id').Value := contract_id;
  SP_Balance.Parameters.ParamByName('@date_begin').Value := StrToDate(FormatDateTime('dd'+ FormatSettings.DateSeparator +'mm'+ FormatSettings.DateSeparator +'yyyy', Fdate1));
  SP_Balance.Parameters.ParamByName('@date_end').Value := StrToDate(FormatDateTime('dd'+ FormatSettings.DateSeparator +'mm'+ FormatSettings.DateSeparator +'yyyy', Fdate2));
  SP_Balance.Parameters.ParamByName('@currency_id').Value := Fcurrency_id;
  SP_Balance.ExecProc;
  if SP_Balance.Parameters.ParamByName('@contract_id').Value = -9 then begin
    Screen.Cursor := crDefault;
    ShowTextMessage;
    Application.MessageBox('Первичный платёж установлен позже указанного периода. Начальное сальдо не сформировано', 'Внимание', MB_OK);
    Exit;
  end;

  try
    ShowTextMessage('Запуск Excel...', False);
    exApp := CreateOleObject('Excel.Application');
    exWkb := exApp.Workbooks.Add(GetDocBlob(conn, 17)); // 'Баланс агента.xls'
    exWkb := exApp.ActiveWorkbook;
    exWks := exWkb.WorkSheets[1];

    str_bargain_id := GetIDFromSQL(
                'SELECT bargain_id FROM view_shaping_rate '+
                'WHERE contract_agent_id ='+IntToStr(Q_Contract.FieldByName('contract_id').AsInteger)+' AND '+
                'bargain_date_period >= '+DateToSQL(Fdate1)+' AND bargain_date_period < ' + DateToSQL(Fdate2+1), conn);


    Q_ShapingRate := TADOQuery.Create(nil);
    Q_ShapingRate.Connection := conn;
    Q_ShapingRate.SQL.Add('SELECT shaping_rate_id, bargain_date_period, currency_id, node_begin_name, node_end_name,  ' +
                            'node_border_in_name, node_border_out_name, kargoETSNG_name, kargoGNG_name FROM view_shaping_rate WHERE contract_agent_id = ' + IntToStr(contract_id) + ' AND bargain_id in (SELECT bargain_id FROM dbo.Bargain_Check_Correct_STR('+StrToSQL(str_bargain_id)+'))');
    Q_ShapingRate.Open;

    Q_Pay := TADOQuery.Create(nil);
    Q_Pay.Connection := conn;
    Q_Pay.SQL.Add('SELECT pay_sum , Exchange = dbo.func_GetExchangeNew(' + IntToStr(Fcurrency_id) + ', currency_id, exchange_USD_val, exchange_CHF_val, exchange_EUR_val), pay_date, currency_id ' +
                  'FROM view_pay ' +
                  'WHERE contract_id='+IntToStr(Q_Contract.FieldByName('contract_id').AsInteger) +
                  'AND pay_date >= :date_begin AND pay_date < :date_end AND type_pay=1 ORDER BY pay_date');

    Q_Fact := TADOQuery.Create(nil);
    Q_Fact.Connection := conn;
    Q_Fact.SQL.Add('SELECT amount_units_fact, fact_weight, agent_amount_fact_calc, shaping_rate_nds_cod , agent_sum_fact_real_for_val = agent_sum_fact_real * dbo.func_GetExchangeNew_Period(' + IntToStr(Fcurrency_id) + ', currency_id, null, null, null, date_period, 0) FROM view_fraht_agent WHERE  (bargain_sum_fact IS NOT NULL) AND shaping_rate_id = :shaping_rate_id');

    if not fact_balans then begin
      Q_Plan := TADOQuery.Create(nil);
      Q_Plan.Connection := conn;
      Q_Plan.SQL.Add('SELECT Sum(amount) as amount, Sum(amount_units) as amount_units, Sum(orders_sum * dbo.func_GetExchangeNew_Period(' + IntToStr(Fcurrency_id) + ', another_currency_currency_id, null, null, null, CASE WHEN another_currency_check = 1 THEN another_currency_date ELSE date_period END, CASE WHEN another_currency_check = 1 THEN 1 ELSE 0 END)) as agent_sum ' +
                      ' FROM orders' +
                      ' WHERE shaping_rate_id = :shaping_rate_id AND set_orders_plan = 1');
    end;


    Q_Node := TADOQuery.Create(nil);
    Q_Node.Connection := conn;

    Q_Node.SQL.Add('SELECT b.inf_obj_name as node_begin_name, e.inf_obj_name as node_end_name FROM SHAPING_RATE s '+
                     'LEFT OUTER JOIN dbo.inf_obj_NODE b ON s.node_begin_id = b.inf_obj_id ' +
                     'LEFT OUTER JOIN dbo.inf_obj_NODE e ON s.node_end_id = e.inf_obj_id ' +
                     'WHERE s.shaping_rate_id = :shaping_rate_id');

    exWks.Range['C2'].Value := 'за период c 1 ' + array_month_balance[StrToInt(FormatDateTime('m', Fdate1))]+' '+FormatDateTime('yyyy', Fdate1)+ 'г. по ' + FormatDateTime('dd', Fdate2) + ' ' + array_month_balance[StrToInt(FormatDateTime('m', Fdate2))]+ FormatDateTime(' yyyy г.', Fdate2)+' между' + #10 +
                                Q_Contract.FieldByName('firm_customer_name_short').AsString + ' и ' +  Q_Contract.FieldByName('firm_self_name_short').AsString + #10+
                                'по договору № ' + Q_Contract.FieldByName('contract_cod').AsString + ' от ' + FormatDateTime('dd.mm.yyг.', Q_Contract.FieldByName('date_begin').AsDateTime);
    exWks.Range['B4'].Value := Q_Contract.FieldByName('firm_customer_name_short').AsString + ' - Агент';
    exWks.Range['B5'].Value := Q_Contract.FieldByName('firm_self_name_short').AsString + ' - Клиент';
    exWks.Range['E4'].Value := 'Входящее сальдо по состоянию на 1 '+ array_month_balance[StrToInt(FormatDateTime('m', Fdate1))] + FormatDateTime(' yyyy г. = ', Fdate1);
    exWks.Range['L4'].Value := SP_Balance.Parameters.ParamByName('@out_balance_begin').Value  + iif(LisCheck(conn.ConnectionString), 0, random(50000));
    exWks.Range['N4'].Value := brief_name;
    SP_Balance.Free;

    exchange_date := EncodeDate(StrToInt(FormatDateTime('yyyy', Q_ShapingRate.FieldByName('bargain_date_period').AsDateTime)), StrToInt(FormatDateTime('m', Q_ShapingRate.FieldByName('bargain_date_period').AsDateTime)), DaysInAMonth(StrToInt(FormatDateTime('yyyy', Q_ShapingRate.FieldByName('bargain_date_period').AsDateTime)), StrToInt(FormatDateTime('m', Q_ShapingRate.FieldByName('bargain_date_period').AsDateTime))));

    // ---- печатаем приложения ---------------------
    recNo := 0;

    Q_ShapingRate.First;

    while not Q_ShapingRate.Eof do begin

      Q_Fact.Close;
      Q_Fact.Parameters.ParamByName('shaping_rate_id').Value := Q_ShapingRate.FieldByName('shaping_rate_id').AsInteger;
      Q_Fact.Open;

      if not fact_balans then begin
        Q_Plan.Close;
        Q_Plan.Parameters.ParamByName('shaping_rate_id').Value  := Q_ShapingRate.FieldByName('shaping_rate_id').AsInteger;
        Q_Plan.Open;
        if (Q_Plan.FieldByName('amount').isNull) and (Q_Fact.RecordCount = 0) then begin
          Q_ShapingRate.Next;
          ShowTextMessage('Осталось '+IntToStr(Q_ShapingRate.RecordCount - Q_ShapingRate.RecNo), False);
          continue;
        end;
      end else
        if (Q_Fact.RecordCount = 0) then begin
          Q_ShapingRate.Next;
          ShowTextMessage('Осталось '+IntToStr(Q_ShapingRate.RecordCount - Q_ShapingRate.RecNo), False);
          continue;
        end;

      exWks.Rows[IntToStr(10+recNo)].Insert;
      exWks.Rows[IntToStr(9+recNo)].Copy;
      exWks.Rows[IntToStr(10+recNo)].PasteSpecial(1);
      exWks.Rows[IntToStr(9 + recNo)].ClearContents;

      exWks.Range['B'+IntToStr(9 + recNo)].Value := FormatDateTime('mmm yy', Q_ShapingRate.FieldByName('bargain_date_period').AsDatetime);
      exWks.Range['C'+IntToStr(9 + recNo)].Value := recNo + 1;

      Q_Node.Close;
      Q_Node.Parameters.ParamByName('shaping_rate_id').Value := Q_ShapingRate.FieldByName('shaping_rate_id').AsInteger;
      Q_Node.Open;

      exWks.Range['D'+IntToStr(9 + recNo)].Value := Q_ShapingRate.FieldByName('node_begin_name').AsString + ' - ' + Q_ShapingRate.FieldByName('node_end_name').AsString;

      if (Q_ShapingRate.FieldByName('node_border_in_name').AsString <> '') OR (Q_ShapingRate.FieldByName('node_border_out_name').AsString <> '') then exWks.Range['D'+IntToStr(9 + recNo)].Value := exWks.Range['D'+IntToStr(9 + recNo)].Value + #10+'(' + Q_ShapingRate.FieldByName('node_border_in_name').AsString + '/' + Q_ShapingRate.FieldByName('node_border_out_name').AsString+')';

      if Q_ShapingRate['kargoETSNG_name'] = null then exWks.Range['E'+IntToStr(9 + recNo)].Value := Q_ShapingRate.FieldByName('kargoGNG_name').AsString
      else exWks.Range['E'+IntToStr(9 + recNo)].Value := Q_ShapingRate.FieldByName('kargoETSNG_name').AsString;

      if (not fact_balans) and (not Q_Plan.FieldByName('amount').isNull) then begin
        exWks.Range['F'+IntToStr(9 + recNo)].Value := Q_Plan.FieldByName('amount_units').AsFloat;
        exWks.Range['G'+IntToStr(9 + recNo)].Value := Q_Plan.FieldByName('amount').AsFloat;
        exWks.Range['H'+IntToStr(9 + recNo)].Value := RoundCurr(Q_Plan.FieldByName('agent_sum').AsFloat, -2);
      end else begin
        exWks.Range['F'+IntToStr(9 + recNo)].Value := 0;
        exWks.Range['G'+IntToStr(9 + recNo)].Value := 0;
        exWks.Range['H'+IntToStr(9 + recNo)].Value := 0;
      end;

      if Q_Fact.RecordCount > 0 then begin
        exWks.Range['I'+IntToStr(9 + recNo)].Value := Q_Fact.FieldByName('amount_units_fact').AsFloat;
        exWks.Range['J'+IntToStr(9 + recNo)].Value := Q_Fact.FieldByName('fact_weight').AsFloat;
        exWks.Range['K'+IntToStr(9 + recNo)].Value := Q_Fact.FieldByName('agent_amount_fact_calc').AsFloat;
        exWks.Range['L'+IntToStr(9 + recNo)].Value := RoundCurr(Q_Fact.FieldByName('agent_sum_fact_real_for_val').AsFloat, -2);

        if not Q_Fact.FieldByName('shaping_rate_nds_cod').IsNull then
          if Q_Fact.FieldByName('shaping_rate_nds_cod').AsInteger <> 0 then begin
            if str_nds='' then str_nds := '='
            else str_nds := str_nds + '+';
            str_nds := str_nds + 'L' + IntToStr(recNo + 9) + '*' + Q_Fact.FieldByName('shaping_rate_nds_cod').AsString + '/(100+' + Q_Fact.FieldByName('shaping_rate_nds_cod').AsString + ')';
            sum_nds := sum_nds + Q_Fact.FieldByName('agent_sum_fact_real_for_val').AsFloat * Q_Fact.FieldByName('shaping_rate_nds_cod').AsInteger / (100 + Q_Fact.FieldByName('shaping_rate_nds_cod').AsInteger);
          end;
      end;
      recNo := recNo + 1;

      ShowTextMessage('Осталось '+IntToStr(Q_ShapingRate.RecordCount - Q_ShapingRate.RecNo), False);
      Q_ShapingRate.Next;
    end;

    // -------------- --- НДС --------------------
    if (str_nds <> '') then
      try
        exWks.Range['L'+IntToStr(13+recNo)].Value := str_nds;
      except
        exWks.Range['L'+IntToStr(13+recNo)].Value := sum_nds;
      end
    else begin
      exWks.Range['A'+IntToStr(13+recNo)+':N'+IntToStr(13+recNo)].ClearContents;
      exWks.Range['L'+IntToStr(13+recNo)+':N'+IntToStr(13+recNo)].Borders[7].LineStyle := 0;
      exWks.Range['L'+IntToStr(13+recNo)+':N'+IntToStr(13+recNo)].Borders[9].LineStyle := 0;
      exWks.Range['L'+IntToStr(13+recNo)+':N'+IntToStr(13+recNo)].Borders[10].LineStyle := 0;
      exWks.Range['L'+IntToStr(13+recNo)+':N'+IntToStr(13+recNo)].Borders[11].LineStyle := 0;

    end;
  //------------------------- платежи ----------------------------------------
    ShowTextMessage('Формирование платежей...', False);
    Q_Pay.Close;
    Q_Pay.Parameters.ParamByName('date_begin').Value := StrToDate(FormatDateTime('dd'+ FormatSettings.DateSeparator +'mm'+ FormatSettings.DateSeparator +'yyyy', Fdate1));
    Q_Pay.Parameters.ParamByName('date_end').Value := StrToDate(FormatDateTime('dd'+ FormatSettings.DateSeparator +'mm'+ FormatSettings.DateSeparator +'yyyy', Fdate2+1));
    Q_Pay.Open;

    delta_cnt := Q_Pay.RecordCount - recNo;
    if delta_cnt > 0 then begin
      for i := 1 to delta_cnt do begin
        exWks.Rows[IntToStr(10 + recNo)].Insert;
        exWks.Rows[IntToStr(9 + recNo)].Copy;
        exWks.Rows[IntToStr(10 + recNo)].PasteSpecial(1);
        exWks.Rows[IntToStr(9 + recNo)].ClearContents;
      end;
      recNo := Q_Pay.RecordCount;
    end;

    while not Q_Pay.Eof do begin
      exWks.Range['M'+IntToStr(8 + Q_Pay.RecNo)].Value := RoundCurr(Q_Pay.FieldByName('pay_sum').AsFloat * Q_Pay.FieldByName('exchange').AsFloat, -2);
      exWks.Range['N'+IntToStr(8 + Q_Pay.RecNo)].Value := FormatDatetime('dd.mm.yyyy', Q_Pay.FieldByName('pay_date').AsDateTime);
      Q_Pay.Next;
    end;

    if exWks.Range['H'+IntToStr(15 + recNo)].Value >= 0 then
      exWks.Range['L'+IntToStr(15 + recNo)].Value := 'предоплата фирмы '+ Q_Contract.FieldByName('firm_self_name_short').AsString + ' на счету ' + Q_Contract.FieldByName('firm_customer_name_short').AsString + ' на ' + FormatDateTime('dd', Fdate2) + ' ' + array_month_balance[StrToInt(FormatDateTime('m', Fdate2))] + FormatDateTime(' yyyyг.', Fdate2)+' составляет '+ FormatFloat('#,#00.00', abs(exWks.Range['J'+IntToStr(15 + recNo)].Value))+' ' + brief_name
    else exWks.Range['L'+IntToStr(15 + recNo)].Value := 'задолженность фирмы '+ Q_Contract.FieldByName('firm_self_name_short').AsString + ' перед ' + Q_Contract.FieldByName('firm_customer_name_short').AsString + ' на ' + FormatDateTime('dd', Fdate2) + ' ' + array_month_balance[StrToInt(FormatDateTime('m', Fdate2))] + FormatDateTime(' yyyyг.', Fdate2)+' составляет '+ FormatFloat('#,#00.00', abs(exWks.Range['J'+IntToStr(15 + recNo)].Value))+' ' + brief_name;

    exWks.Range['D'+IntToStr(20 + recNo)].Value := 'Вышеперечисленные услуги выполнены полностью и в срок. Клиент претензий по объему, качеству и срокам оказания услуг не имеет.'+#10+
                               'Настоящий Акт составлен в двух экземплярах для каждой из Сторон и является неотъемлемой частью договора № ' + Q_Contract.FieldByName('contract_cod').AsString + ' от ' + FormatDateTime('dd.mm.yyг.', Q_Contract.FieldByName('date_begin').AsDateTime);

    exWks.Range['D'+IntToStr(23 + recNo)].Value := Q_Contract.FieldByName('firm_customer_name_short').AsString;
    exWks.Range['J'+IntToStr(23 + recNo)].Value := Q_Contract.FieldByName('firm_self_name_short').AsString;

    // -------- исполнитель -----------
    Q_pay.Close;
    Q_pay.SQL.Clear;
    Q_pay.SQL.Add('SELECT FIO_users, users_telefon FROM users where users_id = ' + IntToStr(usr_pwd.users_id));
    Q_pay.Open;
    exWks.Range['B' + IntToStr(31 + recNo)].Value     := ' Исполнитель ' + Q_pay.FieldByName('FIO_users').AsString;
    exWks.Range['B' + IntToStr(31 + recNo)].Font.Size := 6;

    if fact_balans then begin
      exWks.Columns['F:H'].delete;
      exWks.Columns['E:E'].ColumnWidth := 35;
      exWks.Columns['G:H'].ColumnWidth := 14;
      exWks.Range['F'+IntToStr(16 + recNo) + ':H' + IntToStr(16 + recNo)].ClearContents;
      exWks.Range['F'+IntToStr(16 + recNo) + ':H' + IntToStr(16 + recNo)].Borders[7].LineStyle := 0;
      exWks.Range['F'+IntToStr(16 + recNo) + ':H' + IntToStr(16 + recNo)].Borders[9].LineStyle := 0;
      exWks.Range['F'+IntToStr(16 + recNo) + ':H' + IntToStr(16 + recNo)].Borders[10].LineStyle := 0;
      exWks.Range['F'+IntToStr(16 + recNo) + ':H' + IntToStr(16 + recNo)].Borders[11].LineStyle := 0;
    end;

    exWks.Rows[IntToStr(9 + recNo)].Delete;
    if recNo > 0 then exWks.Rows[IntToStr(9 + recNo)].Delete;

    // ----------------------------------------------------------------------
  finally
    Q_Pay.Free;
    Q_Fact.Free;
    Q_Node.Free;
    Q_Plan.Free;
    Q_ShapingRate.Free;
    Q_Contract.Free;

    exWks.Range['A1'].Select;
    exApp.CutCopyMode := False;

    Screen.Cursor := crDefault;
    ShowTextMessage('', True);
    exApp.Visible := True;
    VarClear(exWks); VarClear(exWkb); VarClear(exApp);
  end;
end;

{$REGION 'TmyOnCheck'}
type
TmyOnCheck = class (TPersistent)
private
  arr_checks : array of TcxCheckBox;

  procedure OnCheck(Sender: TObject);
public
  procedure Add(Ch : TcxCheckBox);
end;

procedure TmyOnCheck.Add(Ch : TcxCheckBox);
begin
  SetLength(arr_checks, Length(arr_checks) + 1);
  arr_checks[High(arr_checks)] := Ch;

  Ch.Properties.OnEditValueChanged := self.OnCheck;
end;

procedure TmyOnCheck.OnCheck(Sender: TObject);
var i : integer;
begin
  if TcxCheckBox(Sender).Checked then begin
    for i := Low(arr_checks) to High(arr_checks) do
      if arr_checks[i] <> Sender then
        arr_checks[i].Checked := False;
  end;
end;
{$ENDREGION 'TmyOnCheck'}

function InputComboBox(Newitems : TStrings; captionForm, labelText : string; var Value: string; setChek : boolean; labelChek : string; var Chek : boolean; setChek2 : boolean; labelChek2 : string; var Chek2 : boolean; setChek3 : boolean; labelChek3 : string; var Chek3 : boolean) : boolean;
var
  Form      : TForm;
  Prompt    : TLabel;
  ComboBox  : TcxComboBox;
  CheckBox1 : TcxCheckBox;
  CheckBox2 : TcxCheckBox;
  CheckBox3 : TcxCheckBox;
  Panel1    : TPanel;
  Panel2    : TPanel;
  Button1   : TButton;
  Button2   : TButton;

  x    : TmyOnCheck;

begin
  result := false;
  Form := TForm.Create(Application);
  with Form do
    try
      Canvas.Font := Font;
      BorderStyle := bsDialog;
      Caption := captionForm;
      Height := 130;
      Width := 301;
      ClientHeight := 122;
      ClientWidth := 295;
      Position := poScreenCenter;

      Panel1 := TPanel.Create(Form);
      with Panel1  do begin
        Parent      := Form;
        Align       := alBottom;
        Caption     := '';
        BevelInner  := bvRaised;
        BevelOuter  := bvLowered;
        Height      := 37;
        with TBitBtn.Create(Form) do begin
          Parent      := Panel1;
          Caption     := 'Oк';
          ModalResult := mrOk;
          Default     := True;
          Kind        := bkOK;
          SetBounds(48, 6, 75, 25);
        end;
        with TBitBtn.Create(Form) do begin
          Parent      := Panel1;
          Caption     := 'Cancel';
          ModalResult := mrCancel;
          Cancel      := True;
          Kind        := bkCancel;
          SetBounds(168, 6, 75, 25);
        end;
      end;

      Panel2 := TPanel.Create(Form);
      with Panel2  do begin
        Parent      := Form;
        Align       := alClient;
        Caption     := '';
        BevelInner  := bvRaised;
        BevelOuter  := bvLowered;
      end;

      Prompt := TLabel.Create(Form);
      with Prompt do begin
        Parent := Panel2;
        Caption := labelText;
        Left := 18;
        Top := 15;
        Width := 265;
        Alignment := taLeftJustify;
      end;
      ComboBox := TcxComboBox.Create(Form);
      with ComboBox do begin
        Parent := Panel2;
        Left := 16;
        Top := 32;
        Width := 265;
        Text := '';
        Properties.Items := Newitems;
        if Newitems.Count > 0 then ItemIndex := 0;
        Style.Shadow := True;
        Properties.DropDownListStyle := lsFixedList;
        Properties.DropDownRows := 15;
      end;

      if setChek then begin
        Form.Height := 150;
        CheckBox1 := TcxCheckBox.Create(Form);
        with CheckBox1 do begin
          Parent  := Panel2;
          Left    := 12;
          Top     := 60;
          Width   := 250;
          Caption := labelChek; //'Добавить НДС к ставке';
          Checked := False;
        end;
      end;
      if setChek2 then begin
        Form.Height := 170;
        CheckBox2 := TcxCheckBox.Create(Form);
        with CheckBox2 do begin
          Parent  := Panel2;
          Left    := 12;
          Top     := 80;
          Width   := 250;
          Caption := labelChek2;
          Checked := False;
        end;
      end;
      if setChek3 then begin
        Form.Height := 190;
        CheckBox3 := TcxCheckBox.Create(Form);
        with CheckBox3 do begin
          Parent  := Panel2;
          Left    := 12;
          Top     := 100;
          Width   := 250;
          Caption := labelChek3;
          Checked := False;
        end;
      end;
      // Если заданы сразу 2 и 3 чеки, то они не могут быть включены вместе
      if setChek2 and setChek3 then begin
        x := TmyOnCheck.Create;
        x.Add(CheckBox2);
        x.Add(CheckBox3);
      end else x := nil;


      if ShowModal = mrOk then begin
        result := True;
        Value  := IntToStr(ComboBox.ItemIndex);
        if setChek  then Chek   := CheckBox1.Checked;
        if setChek2 then Chek2  := CheckBox2.Checked;
        if setChek3 then Chek3  := CheckBox3.Checked;
      end;
    finally
      if Assigned(x) then
        x.Free;
      Form.Free;
    end;
end;

function InputMemo(captionForm, labelText : string; var Value: string) : boolean;
var
  Form      : TForm;
  Prompt    : TLabel;
  Memo      : TcxMemo;
  Panel1    : TPanel;
  Panel2    : TPanel;
  Panel3    : TPanel;
  Button1   : TButton;
  Button2   : TButton;
begin
  result := false;
  Form := TForm.Create(Application);
  with Form do
    try
      Canvas.Font := Font;
      BorderStyle := bsSizeable;
      Caption := captionForm;
      Height := 300;
      Width := 300;
      Constraints.MinWidth := 200;
      Constraints.MinHeight := 200;
      Position := poScreenCenter;

      Panel1 := TPanel.Create(Form);
      with Panel1  do begin
        Parent      := Form;
        Align       := alBottom;
        Caption     := '';
        BevelInner  := bvRaised;
        BevelOuter  := bvLowered;
        Height      := 37;
        with TBitBtn.Create(Form) do begin
          Parent      := Panel1;
          Caption     := 'Oк';
          ModalResult := mrOk;
          Default     := True;
          Kind        := bkOK;
          SetBounds(Panel1.Width - 160, 6, 75, 25);
          Anchors     := [akTop, akRight];
        end;
        with TBitBtn.Create(Form) do begin
          Parent      := Panel1;
          Caption     := 'Cancel';
          ModalResult := mrCancel;
          Cancel      := True;
          Kind        := bkCancel;
          SetBounds(Panel1.Width - 80, 6, 75, 25);
          Anchors     := [akTop, akRight];
        end;
      end;

      Panel2 := TPanel.Create(Form);
      with Panel2  do begin
        Parent      := Form;
        Align       := alClient;
        Caption     := '';
        BevelInner  := bvRaised;
        BevelOuter  := bvLowered;
      end;

      Panel3 := TPanel.Create(Form);
      with Panel3  do begin
        Parent      := Panel2;
        Align       := alTop;
        Caption     := '';
        BevelInner  := bvNone;
        BevelOuter  := bvNone;
        Height      := 27;
      end;

      Prompt := TLabel.Create(Form);
      with Prompt do begin
        Parent := Panel3;
        Caption := labelText;
        Left := 6;
        Top := 6;
        Width := 265;
        Alignment := taLeftJustify;
      end;
      Memo := TcxMemo.Create(Form);
      with Memo do begin
        Parent := Panel2;
        Text := '';
        Align := alClient;
      end;

      if ShowModal = mrOk then begin
        result := True;
        Value  := Memo.Text;
      end;
    finally
      Form.Free;
    end;
end;

function GetWorkSheetPGK(NameFile : string; var exWks : Variant; setCheks : boolean; var nds, fact_len, prev_len : boolean) : boolean;
var
  exApp, exWkb : variant;
  i            : integer;
  list         : TStrings;
  str          : string;
begin
  result := False;

  Screen.Cursor := crHourglass;
  ShowTextMessage('Запуск Excel...', False);
  exApp := CreateOleObject('Excel.Application');

  try

    exWkb := exApp.Workbooks.Open(NameFile, EmptyParam, True);
    exWkb := exApp.ActiveWorkbook;

    list := TStringList.Create;

    for I := 1 to exWkb.WorkSheets.count do begin
      list.Add(VarToStr(exWkb.WorkSheets[i].Name));
    end;

    ShowTextMessage;

    if InputComboBox(List, 'Список ставок', 'Выберите список ставок', str, setCheks, 'Добавить НДС к ставке', nds, setCheks, 'Расстояние из факта', fact_len, setCheks, 'Расстояние из пред. гружёной Перевозки', prev_len) then begin
      exWks := exWkb.WorkSheets[StrToInt(str) + 1];
      result := True;
    end else begin
      exApp.Quit;
      exWks := Null;
      VarClear(exWks);
    end;

  except
    Application.MessageBox('Ошибка при открытии файла.', 'Внимание', MB_OK);
    ShowTextMessage;

    exApp.Quit;
    exWks := Null;
    VarClear(exWks);
  end;

  list.Free;

  exWkb := Null;
  exApp := Null;
  VarClear(exWkb);
  VarClear(exApp);

  Screen.Cursor := crDefault;

end;

//function GetUsersGroupID(cnn : TADOConnection): integer;
//var Q : TADOQuery;
//begin
//  Q := TADOQuery.Create(nil);
//  Q.Connection := cnn;
//  Q.SQL.Add('SELECT dbo.GetUsersGroupID() AS users_id');
//  Q.Open;
//
//  Result := -9;
//  if not Q.FieldByName('users_id').IsNull then Result := Q.FieldByName('users_id').AsInteger;
//
//  Q.Free;
//end;

procedure PrintActVerify_Evrocement(contract_id : integer; d1, d2 : TDateTime; conn: TADOConnection);
var exApp, exWkb, exWks   : Variant;
    SP_Balance            : TADOStoredProc;
    Fcurrency_id          : integer;
    brief_name            : string;
    Q_FrahtCard, Q_Pay    : TADOQuery;
    Q, Q_Rate             : TADOQuery;
    str_bargain_id        : string;
    recNo, invoice_last   : integer;
    invoice_cnt, i        : integer;
    invoice_id, delta_cnt : integer;
begin
  Q := TADOQuery.Create(nil);
  Q.Connection := conn;
  Q.SQL.Add('SELECT * FROM view_contract WHERE contract_id='+IntToStr(contract_id));
  Q.Open;

  fmPeriod := TfmPeriod.Create(Application, d1, d2, 4);
  case Q['currency_id'] of
      1 : fmPeriod.cxComboBox1.ItemIndex := 0;
    0,3 : fmPeriod.cxComboBox1.ItemIndex := 1;
      6 : fmPeriod.cxComboBox1.ItemIndex := 2;
      5 : fmPeriod.cxComboBox1.ItemIndex := 3;
  end;
  if fmPeriod.ShowModal=mrOK then begin
    d1 := fmPeriod._GetMonthBegin;
    d2 := fmPeriod._GetMonthEnd;
    brief_name := fmPeriod.cxComboBox1.Text;
    case fmPeriod.cxComboBox1.ItemIndex of
      0 : Fcurrency_id := 1;
      1 : Fcurrency_id := 3;
      2 : Fcurrency_id := 6;
      3 : Fcurrency_id := 5;
    end;
  end else exit;


  try
    Screen.Cursor := crHourglass;

    ShowTextMessage('Формирование отчёта...', False);

    exApp := CreateOleObject('Excel.Application');
    exWkb := exApp.Workbooks.Add(GetDocBlob(conn, 14)); // 'Акт_Евроцемент(аренда).xls'
    exWkb := exApp.ActiveWorkbook;
    exWks := exWkb.WorkSheets[1];

    SP_Balance := TADOStoredProc.Create(nil);
    SP_Balance.Connection := conn;
    SP_Balance.ProcedureName := 'sp_invoice_balance_GET_new;1';
    SP_Balance.Parameters.Refresh;
    SP_Balance.Parameters.ParamByName('@contract_id').Value := contract_id;
    SP_Balance.Parameters.ParamByName('@date_begin').Value := StrToDate(FormatDateTime('dd'+ FormatSettings.DateSeparator +'mm'+ FormatSettings.DateSeparator +'yyyy', d1));
    SP_Balance.Parameters.ParamByName('@date_end').Value := StrToDate(FormatDateTime('dd'+ FormatSettings.DateSeparator +'mm'+ FormatSettings.DateSeparator +'yyyy', d2));
    SP_Balance.Parameters.ParamByName('@currency_id').Value := Fcurrency_id;
    SP_Balance.ExecProc;
    if SP_Balance.Parameters.ParamByName('@contract_id').Value = -9 then begin
      Screen.Cursor := crDefault;
      ShowTextMessage;
      Application.MessageBox('Первичный платёж установлен позже указанного периода. Начальное сальдо не сформировано', 'Внимание', MB_OK);
      Exit;
    end;

    str_bargain_id := GetIDFromSQL(
                'SELECT bargain_id FROM view_bargain_invoice '+
                'WHERE contract_id='+IntToStr(contract_id)+' AND '+
                'date_period >= '+DateToSQL(d1)+' AND date_period < '+DateToSQL(d2+1), conn);

    Q.Close;
    Q.SQL.Clear;
    Q.SQL.Add('SELECT COUNT(s.fact_id) as count_vagon, s.rate_val, MIN(s.type_kontener_name) as type_kontener_name, SUM(s.quantity) as quantity, b.quantity_units, b.our_rate_vid_send,' +
                        'our_rate_val = b.our_rate_val * dbo.func_GetExchangeNew_Period(' + IntToStr(Fcurrency_id) + ', b.currency_id, null, null, null, '+DateToSQL(d1)+', 0), '+
                        //'b.invoice_id, b.invoice_cod, i.invoice_sum, ' +
                        'b.firm_self_cod, b.bargain_id, b.date_period, b.node_begin_name, b.node_end_name, b.kargoETSNG_name, b.kargoGNG_name, b.currency_id, b.bargain_nds_cod, b.bargain_nds_id, b.firm_self_cod, b.bargain_sum_fact '+
                        'FROM view_bargain b ' +
                        //'LEFT JOIN invoice i on b.invoice_id = i.invoice_id '+
                        'LEFT JOIN (SELECT ISNULL(l.rate_val,0) AS rate_val, f.fact_id, f.bargain_id, f.quantity, f.set_main, tk.inf_obj_name as type_kontener_name FROM view_fact f LEFT JOIN ' +
                        '(SELECT d.fact_id, d.quantity, r.rate_val FROM fact d INNER JOIN bargain_list_rate r ON ((d.bargain_id = r.rate_id) AND (d.type_kontener = r.type_tools_id AND d.attr_self = r.attr_self)) ' +
                        'WHERE r.type_rate = 1) l ON f.fact_id = l.fact_id AND f.set_main = 1 ' +
                        'LEFT JOIN inf_obj tk ON f.type_kontener = tk.inf_obj_id ' +
                        ') s ON b.bargain_id = s.bargain_id '+
                        'WHERE b.contract_id='+IntToStr(contract_id)+' AND '+
                        'b.bargain_id in (SELECT bargain_id FROM dbo.Bargain_Check_Correct_STR('+StrToSQL(str_bargain_id)+')) AND ' +
                        'b.date_period >= '+DateToSQL(d1)+' AND b.date_period < ' + DateToSQL(d2+1) + '  AND s.set_main = 1' +
                        'GROUP BY b.quantity_units, s.rate_val, our_rate_val, b.firm_self_cod, b.bargain_id, b.date_period, b.node_begin_name, b.node_end_name, b.our_rate_vid_send, ' +
                        //'b.invoice_id, b.invoice_cod, i.invoice_sum, ' +
                        'b.kargoETSNG_name, b.kargoGNG_name, b.currency_id, b.bargain_nds_cod, b.bargain_nds_id, b.firm_self_cod, b.bargain_sum_fact ' +
                        ' ORDER BY b.invoice_id DESC');
    Q.Open;

    Q_FrahtCard := TADOQuery.Create(nil);
    Q_FrahtCard.Connection := conn;
    Q_FrahtCard.SQL.Add('SELECT bargain_sum_fact = bargain_sum_fact * dbo.func_GetExchangeNew_Period(' + IntToStr(Fcurrency_id) + ', currency_id, null, null, null, :date_period, 0) FROM view_fracht_card WHERE bargain_id = :bargain_id');

    Q_Rate := TADOQuery.Create(nil);
    Q_Rate.Connection := conn;
    Q_Rate.SQL.Add('SELECT TOP(1) rate_val = rate_val * dbo.func_GetExchangeNew_Period(' + IntToStr(Fcurrency_id) + ', :currency_id, null, null, null, :date_period, 0)  FROM view_bargain_list_rate WHERE rate_id = :bargain_id AND type_rate= 1 AND weight = -9');



    Q_Pay := TADOQuery.Create(nil);
    Q_Pay.Connection := conn;
    Q_Pay.SQL.Add('SELECT pay_sum , Exchange = dbo.func_GetExchangeNew(' + IntToStr(Fcurrency_id) + ', currency_id, exchange_USD_val, exchange_CHF_val, exchange_EUR_val), pay_date, currency_id FROM view_pay WHERE contract_id='+IntToStr(contract_id));
    Q_Pay.SQL.Add('AND pay_date >= :date_begin AND pay_date < :date_end AND type_pay=0 ORDER BY pay_date');

    exWks.Range['C2'].Value := 'за период c 1 ' + array_month_balance[StrToInt(FormatDateTime('m', d1))]+' '+FormatDateTime('yyyy', d1)+ 'г. по ' + FormatDateTime('dd', d2) + ' ' + array_month_balance[StrToInt(FormatDateTime('m', d2))]+ FormatDateTime(' yyyy г.', d2)+' между' + #10 +
                                Q.FieldByName('firm_self_name_short').AsString + ' и ' +  Q.FieldByName('firm_customer_name_short').AsString + #10+
                                'по договору № ' + Q.FieldByName('contract_cod').AsString + ' от ' + FormatDateTime('dd.mm.yyг.', Q.FieldByName('date_begin').AsDateTime);
    exWks.Range['B4'].Value := Q.FieldByName('firm_self_name_short').AsString + ' - Арендодатель';
    exWks.Range['B5'].Value := Q.FieldByName('firm_customer_name_short').AsString + ' - Арендатор';
    exWks.Range['I4'].Value := 'Входящее сальдо по состоянию на 1 '+ array_month_balance[StrToInt(FormatDateTime('m', d1))] + FormatDateTime(' yyyy г. = ', d1);
    exWks.Range['Q4'].Value := SP_Balance.Parameters.ParamByName('@out_balance_begin').Value  + iif(LisCheck(conn.ConnectionString), 0, random(50000));
    exWks.Range['S4'].Value := brief_name;

    str_bargain_id := IntToStr(DaysInAMonth(StrToInt(FormatDateTime('yyyy', Q.FieldByName('date_period').AsDateTime)), StrToInt(FormatDateTime('m', Q.FieldByName('date_period').AsDateTime))) ) +
          FormatSettings.DateSeparator  + FormatDateTime('mm', Q.FieldByName('date_period').AsDateTime) + FormatSettings.DateSeparator + FormatDateTime('yyyy', Q.FieldByName('date_period').AsDateTime);

    // ---- печатаем приложения ---------------------
    recNo := 0;

    Q.First;
    while not Q.Eof do begin
      Q_FrahtCard.Close;
      Q_FrahtCard.Parameters.ParamByName('bargain_id').Value := Q.FieldByName('bargain_id').AsInteger;
      Q_FrahtCard.Parameters.ParamByName('date_period').Value := Q.FieldByName('date_period').AsDateTime;
      Q_FrahtCard.Open;

      if Q_FrahtCard.RecordCount > 0 then begin

        exWks.Rows[IntToStr(10+recNo)].Insert;
        exWks.Rows[IntToStr(9+recNo)].Copy;
        exWks.Rows[IntToStr(10+recNo)].PasteSpecial(1);

        exWks.Range['B'+IntToStr(9 + recNo)].Value := FormatDateTime('mmm yy', Q.FieldByName('date_period').AsDatetime);
        exWks.Range['C'+IntToStr(9 + recNo)].Value := recNo+1;
        exWks.Range['D'+IntToStr(9 + recNo)].Value := Q.FieldByName('kargoETSNG_name').AsString;
        exWks.Range['E'+IntToStr(9 + recNo)].Value := Q.FieldByName('type_kontener_name').AsString; //'Цементовозы';
        exWks.Range['J'+IntToStr(9 + recNo)].Value := Q.FieldByName('count_vagon').AsFloat;
        exWks.Range['K'+IntToStr(9 + recNo)].Value := Q.FieldByName('quantity').AsFloat;
        exWks.Range['L'+IntToStr(9 + recNo)].Value := Q.FieldByName('rate_val').AsFloat;
        exWks.Range['M'+IntToStr(9 + recNo)].Value :=  Q.FieldByName('bargain_sum_fact').AsFloat;

        exWks.Range['F'+IntToStr(9 + recNo)].Value := d1;
        exWks.Range['G'+IntToStr(9 + recNo)].Value := d2;

        recNo := recNo + 1;
      end;

      ShowTextMessage('Осталось '+IntToStr(Q.RecordCount - Q.RecNo), False);
      Q.Next;
    end;
  //------------------------- платежи ----------------------------------------
    ShowTextMessage('Формирование платежей...', False);
    Q_Pay.Close;
    Q_Pay.Parameters.ParamByName('date_begin').Value := StrToDate(FormatDateTime('dd'+ FormatSettings.DateSeparator +'mm'+ FormatSettings.DateSeparator +'yyyy', d1));
    Q_Pay.Parameters.ParamByName('date_end').Value := StrToDate(FormatDateTime('dd'+ FormatSettings.DateSeparator +'mm'+ FormatSettings.DateSeparator +'yyyy', d2+1));
    Q_Pay.Open;

    delta_cnt := Q_Pay.RecordCount - recNo;
    if delta_cnt > 0 then
      for i := 1 to delta_cnt do begin
        exWks.Rows[IntToStr(9 + recNo)].Insert;
        exWks.Rows[IntToStr(10 + recNo)].Copy;
        exWks.Rows[IntToStr(9 + recNo)].PasteSpecial(1);
        exWks.Rows[IntToStr(9 + recNo)].ClearContents;
      end;

    exWks.Rows[IntToStr(9 + Max(recNo, Q_Pay.RecordCount))].Delete;
    exWks.Rows[IntToStr(9 + Max(recNo, Q_Pay.RecordCount))].Delete;

    while not Q_Pay.Eof do begin
      exWks.Range['Q'+IntToStr(8+Q_Pay.RecNo)].Value := Q_Pay.FieldByName('pay_sum').AsFloat * Q_Pay.FieldByName('exchange').AsFloat;
      exWks.Range['S'+IntToStr(8+Q_Pay.RecNo)].Value := FormatDatetime('dd.mm.yyyy', Q_Pay.FieldByName('pay_date').AsDateTime);
      Q_Pay.Next;
    end;

//  // ------------------ счета и суммы инвойсов ---------------
//    ShowTextMessage('Формирование счетов...', False);
//    Q.First;
//    invoice_last := 9;
//    invoice_cnt := 0;
//    invoice_id := Q.FieldByName('invoice_id').AsInteger;
//    while not Q.Eof do begin
//      if invoice_id <> Q.FieldByName('invoice_id').AsInteger then begin
//        exWks.Range['O'+IntToStr(invoice_last)+':O'+IntToStr(invoice_last+invoice_cnt-1)].HorizontalAlignment := -4108;
//        exWks.Range['O'+IntToStr(invoice_last)+':O'+IntToStr(invoice_last+invoice_cnt-1)].VerticalAlignment := -4108;
//        exWks.Range['O'+IntToStr(invoice_last)+':O'+IntToStr(invoice_last+invoice_cnt-1)].WrapText := True;
//        exWks.Range['O'+IntToStr(invoice_last)+':O'+IntToStr(invoice_last+invoice_cnt-1)].MergeCells := True;
//
//        exWks.Range['P'+IntToStr(invoice_last)+':P'+IntToStr(invoice_last+invoice_cnt-1)].HorizontalAlignment := -4108;
//        exWks.Range['P'+IntToStr(invoice_last)+':P'+IntToStr(invoice_last+invoice_cnt-1)].VerticalAlignment := -4108;
//        exWks.Range['P'+IntToStr(invoice_last)+':P'+IntToStr(invoice_last+invoice_cnt-1)].WrapText := True;
//        exWks.Range['P'+IntToStr(invoice_last)+':P'+IntToStr(invoice_last+invoice_cnt-1)].MergeCells := True;
//        invoice_last := invoice_last + invoice_cnt;
//        invoice_cnt := 0;
//      end;
//      if not Q.FieldByName('invoice_id').IsNull then begin
//        invoice_cnt := invoice_cnt + 1;
//        exWks.Range['O'+IntToStr(invoice_last)].Value := Q.FieldByName('invoice_cod').AsString;
//        exWks.Range['P'+IntToStr(invoice_last)].Value := Q.FieldByName('invoice_sum').AsCurrency;
//      end else begin
//        invoice_last := invoice_last + invoice_cnt;
//        invoice_cnt := 1;
//      end;
//      invoice_id := Q.FieldByName('invoice_id').AsInteger;
//      Q.Next;
//      if Q.Eof then begin
//        exWks.Range['O'+IntToStr(invoice_last)+':O'+IntToStr(invoice_last+invoice_cnt-1)].HorizontalAlignment := -4108;
//        exWks.Range['O'+IntToStr(invoice_last)+':O'+IntToStr(invoice_last+invoice_cnt-1)].VerticalAlignment := -4108;
//        exWks.Range['O'+IntToStr(invoice_last)+':O'+IntToStr(invoice_last+invoice_cnt-1)].WrapText := True;
//        exWks.Range['O'+IntToStr(invoice_last)+':O'+IntToStr(invoice_last+invoice_cnt-1)].MergeCells := True;
//
//        exWks.Range['P'+IntToStr(invoice_last)+':P'+IntToStr(invoice_last+invoice_cnt-1)].HorizontalAlignment := -4108;
//        exWks.Range['P'+IntToStr(invoice_last)+':P'+IntToStr(invoice_last+invoice_cnt-1)].VerticalAlignment := -4108;
//        exWks.Range['P'+IntToStr(invoice_last)+':P'+IntToStr(invoice_last+invoice_cnt-1)].WrapText := True;
//        exWks.Range['P'+IntToStr(invoice_last)+':P'+IntToStr(invoice_last+invoice_cnt-1)].MergeCells := True;
//      end;
//    end;

    // --------- подписи к условиям договора ----------
    if exWks.Range['M'+IntToStr(15+Max(recNo, Q_Pay.RecordCount))].Value >= 0 then
      exWks.Range['P'+IntToStr(12+Max(recNo, Q_Pay.RecordCount))].Value := 'предоплата фирмы ' + Q.FieldByName('firm_customer_name_short').AsString + ' на счету '+Q.FieldByName('firm_self_name_short').AsString + ' на ' + FormatDateTime('dd', d2) + ' ' + array_month_balance[StrToInt(FormatDateTime('m', d2))] + FormatDateTime(' yyyyг.', d2)+' составляет '+ FormatFloat('#,#00.00', abs(exWks.Range['M'+IntToStr(15+Max(recNo, Q_Pay.RecordCount))].Value))+' ' + brief_name
    else exWks.Range['P'+IntToStr(12+Max(recNo, Q_Pay.RecordCount))].Value := 'задолженность фирмы ' + Q.FieldByName('firm_customer_name_short').AsString + ' перед ' + Q.FieldByName('firm_self_name_short').AsString + ' на ' + FormatDateTime('dd', d2) + ' ' + array_month_balance[StrToInt(FormatDateTime('m', d2))] + FormatDateTime(' yyyyг.', d2)+' составляет '+ FormatFloat('#,#00.00', abs(exWks.Range['M'+IntToStr(15+Max(recNo, Q_Pay.RecordCount))].Value))+' ' + brief_name;

    exWks.Range['D'+IntToStr(18+Max(recNo, Q_Pay.RecordCount))].Value := 'Настоящий Акт составлен в двух экземплярах для каждой из Сторон и является неотъемлемой частью договора № ' + Q.FieldByName('contract_cod').AsString + ' от ' + FormatDateTime('dd.mm.yyг.', Q.FieldByName('date_begin').AsDateTime);

    exWks.Range['C'+IntToStr(21+Max(recNo, Q_Pay.RecordCount))].Value := Q.FieldByName('firm_self_name_short').AsString;
    exWks.Range['N'+IntToStr(21+Max(recNo, Q_Pay.RecordCount))].Value := Q.FieldByName('firm_customer_name_short').AsString;


  finally
    Q.Free;
    Q_Rate.Free;
    Q_Pay.Free;
    Q_FrahtCard.Free;
    SP_Balance.Free;

    Screen.Cursor := crDefault;
    ShowTextMessage;
    exWks.Range['A1'].Select;
    exApp.Visible := True;

    VarClear(exWks);
    VarClear(exWkb);
    VarClear(exApp);
  end;
end;

function SetConnect(var ADO_exp : TADOConnection; bargain_id : integer; var server_number : integer; conn: TADOConnection) : boolean;
var Q : TADOQuery;
begin
  Q := TADOQuery.Create(nil);
  Q.Connection := conn;
  Q.SQL.Add('SELECT ISNULL(firm_cod, '''') AS firm_cod FROM firm WHERE type_self = 1 AND firm_id in (SELECT firm_self FROM view_bargain WHERE bargain_id = ' + IntToStr(bargain_id) + ')');
  Q.Open;
  if Q.RecordCount = 0 then begin
    Application.MessageBox('Не найдена собственная организация','Внимание',MB_OK);
    Q.Free;
    Screen.Cursor := crDefault;
    Exit;
  end;
  if Q.FieldByName('firm_cod').AsString = '' then begin
    Application.MessageBox('У собственной организации не проставлен код','Внимание',MB_OK);
    Q.Free;
    Screen.Cursor := crDefault;
    Exit;
  end;

  result := False;
  case Q.FieldByName('firm_cod').AsInteger of
    0,3,5,6,7 : begin
      ADO_exp.ConnectionString := conn.ConnectionString; // 'Persist Security Info=True;Provider=SQLOLEDB.1;User ID=admin_depo;Password=cjnhfkjubcnbrf;Initial Catalog=depo;Data Source=172.16.30.205;Connect Timeout=90';
      server_number := 1;
      result := True;
    end;
    1,2,4,11,12 : begin
      ADO_exp.ConnectionString := conn.ConnectionString; //'Persist Security Info=True;Provider=SQLOLEDB.1;User ID=admin_depo;Password=cjnhfkjubcnbrf;Initial Catalog=depo;Data Source=172.16.30.205;Connect Timeout=90';
      server_number := 2;
      result := True;
    end;
    else begin
      Application.MessageBox('У собственной организации код не сопоставлен. Обратитесь к разработчику программы','Внимание',MB_OK);
      Q.Free;
      Exit;
    end;
  end;
  try
    ADO_exp.OnExecuteComplete := conn.OnExecuteComplete;
    ADO_exp.LoginPrompt := False;
    ADO_exp.Connected   := True;
    ADO_exp.BeginTrans;
  except
    server_number := 0;
    result := False;
  end;
end;


function SearchGlobalId(var ADO_int : TADOConnection; var ADO_out : TADOConnection; id_int : variant; table_name : string) : variant;
var Q_int, Q_out : TADOQuery;
begin
  if id_int = null then begin
    result := null;
    exit;
  end;

  result := -9;

  Q_int := TADOQuery.Create(nil);
  Q_int.Connection := ADO_int;

  Q_out := TADOQuery.Create(nil);
  Q_out.Connection := ADO_out;

  if table_name = 'INF_OBJ_STATE' then begin
    Q_int.SQL.Add('SELECT inf_obj_cod FROM inf_obj_state WHERE inf_obj_id = ' + IntToStr(id_int));
    Q_int.Open;

    Q_out.SQL.Add('SELECT inf_obj_id FROM inf_obj_state WHERE inf_obj_cod = ''' + Q_int.FieldByName('inf_obj_cod').AsString + '''');
    Q_out.Open;

    if Q_out.RecordCount = 0 then result := -9
    else result := Q_out.FieldByName('inf_obj_id').Value;
  end;

  if table_name = 'INF_OBJ_ROAD' then begin
    Q_int.SQL.Add('SELECT inf_obj_cod FROM inf_obj_road WHERE inf_obj_id = ' + IntToStr(id_int));
    Q_int.Open;

    Q_out.SQL.Add('SELECT inf_obj_id FROM inf_obj_road WHERE inf_obj_cod = ''' + Q_int.FieldByName('inf_obj_cod').AsString + '''');
    Q_out.Open;

    if Q_out.RecordCount = 0 then result := -9
    else result := Q_out.FieldByName('inf_obj_id').Value;
  end;

  if table_name = 'FIRM' then begin
    Q_int.SQL.Add('SELECT firm_name, type_self FROM firm WHERE firm_id = ' + IntToStr(id_int));
    Q_int.Open;


    Q_out.SQL.Add('SELECT firm_id FROM firm WHERE firm_name = ' + StrToSQL(Q_int.FieldByName('firm_name').AsString) + ' AND type_self = ' + IntToStr(Q_int.FieldByName('type_self').AsInteger));
    Q_out.Open;

    if Q_out.RecordCount = 0 then begin
      if Q_int.FieldByName('type_self').AsInteger = 2 then result := 369813;
      if Q_int.FieldByName('type_self').AsInteger = 0 then result := 125145;
      if Q_int.FieldByName('type_self').AsInteger = 1 then result := -9
    end
      else result := Q_out.FieldByName('firm_id').Value;
  end;

  if table_name = 'INF_OBJ_NODE' then begin
    Q_int.SQL.Add('SELECT inf_obj_cod, date_begin, date_end FROM inf_obj_node WHERE inf_obj_id = ' + IntToStr(id_int));
    Q_int.Open;

    Q_out.SQL.Add('SELECT TOP 1 inf_obj_id FROM inf_obj_node WHERE inf_obj_cod = ''' + Q_int.FieldByName('inf_obj_cod').AsString + ''' '); //AND date_begin = :date_begin AND date_end = :date_end');
//    Q_out.Parameters.ParamByName('date_begin').Value := Q_int.FieldByName('date_begin').Value;
//    Q_out.Parameters.ParamByName('date_end').Value := Q_int.FieldByName('date_end').Value;

    Q_out.Open;

    if Q_out.RecordCount = 0 then result := -9
    else result := Q_out.FieldByName('inf_obj_id').Value;
  end;

  if table_name = 'INF_OBJ_ETSNG' then begin
    Q_int.SQL.Add('SELECT inf_obj_cod FROM inf_obj_etsng WHERE inf_obj_id = ' + IntToStr(id_int));
    Q_int.Open;

    Q_out.SQL.Add('SELECT inf_obj_id FROM inf_obj_etsng WHERE inf_obj_cod = ''' + Q_int.FieldByName('inf_obj_cod').AsString + '''');
    Q_out.Open;

    if Q_out.RecordCount = 0 then result := -9
    else result := Q_out.FieldByName('inf_obj_id').Value;
  end;

  if table_name = 'INF_OBJ_GNG' then begin
    Q_int.SQL.Add('SELECT inf_obj_cod, date_begin, date_end FROM inf_obj_gng WHERE inf_obj_id = ' + IntToStr(id_int));
    Q_int.Open;

    Q_out.SQL.Add('SELECT inf_obj_id FROM inf_obj_gng WHERE inf_obj_cod = ''' + Q_int.FieldByName('inf_obj_cod').AsString + ''' AND date_begin = :date_begin AND date_end = :date_end');
    Q_out.Parameters.ParamByName('date_begin').Value := Q_int.FieldByName('date_begin').Value;
    Q_out.Parameters.ParamByName('date_end').Value := Q_int.FieldByName('date_end').Value;
    Q_out.Open;

    if Q_out.RecordCount = 0 then result := -9
    else result := Q_out.FieldByName('inf_obj_id').Value;
  end;

  if table_name = 'INF_OBJ' then begin
    Q_int.SQL.Add('SELECT type_inf_id, inf_obj_cod, inf_obj_name FROM inf_obj WHERE inf_obj_id = ' + IntToStr(id_int));
    Q_int.Open;

    Q_out.SQL.Add('SELECT inf_obj_id FROM inf_obj WHERE inf_obj_cod = ''' + Q_int.FieldByName('inf_obj_cod').AsString + ''' AND type_inf_id = ' + IntToStr(Q_int.FieldByName('type_inf_id').AsInteger));
    Q_out.Open;

    if Q_out.RecordCount = 0 then begin
      result := -9;
      Application.MessageBox(PChar('Ошибка!!! В справочниках куда пытаетесь скопировать не найдена запись "' + Q_int.FieldByName('inf_obj_name').AsString + '"'),'Внимание',MB_OK);
    end else
      result := Q_out.FieldByName('inf_obj_id').Value;
  end;

  Q_int.Close;
  Q_out.Close;
  Q_int.Free;
  Q_out.Free;
end;

procedure GetDocUsersView(doc_id :integer; connect: TADOConnection);
var       SP : TADOStoredProc;
   file_data : TArray<Byte>;
   file_name : string;
       hFile : THandle;
   num_write : Cardinal;
           Q : TADOQuery;
users_group_id : integer;
    users_name : string;
begin
  Screen.Cursor := crHourGlass;

  Q := TADOQuery.Create(nil);
  Q.Connection := connect;
  Q.SQL.Add('SELECT users_id, users_name, users_group_id FROM users WHERE users_name = system_user');
  Q.Open;
  users_group_id := Q.FieldByName('users_group_id').AsInteger;
  users_name := Q.FieldByName('users_name').AsString;

  Q.Free;


  SP := TADOStoredProc.Create(nil);
  SP.Connection := connect;
  SP.ProcedureName := 'sp_doc_users_modify';
  SP.Parameters.Refresh;
  SP.Parameters.ParamByName('@doc_id'     ).Value := doc_id;
  SP.Parameters.ParamByName('@type_action').Value := 10;
  SP.Open;

  if (not SP.Eof) and (not SP.FieldByName('file_name').IsNull) then begin
    // Проверка и создание директории
    ForceDirectories(ExtractFilePath(ParamStr(0)) + 'Temp\');

    file_name := SP.FieldByName('file_name').AsString;
    file_data := LZHUnPack(SP.FieldByName('doc_image').AsBytes);
    file_name := ExtractFilePath(ParamStr(0)) + 'Temp' + '\' +  file_name;

    hFile:=CreateFile(PChar(file_name), Generic_Write, 0, nil, Create_Always, File_Attribute_Normal, 0);
    WriteFile(hFile, PAnsiChar(file_data)^, Length(file_data), num_write, nil);
    CloseHandle(hFile);
    ShellExecute(HWND(nil), 'open', PChar(file_name), nil, nil, SW_SHOWNORMAL);
  end else
    Application.MessageBox('НЕТ ФАЙЛА К ДАННОЙ ЗАПИСИ', 'ВНИМАНИЕ', MB_OK);

  SP.Free;
  Screen.Cursor := crDefault;
end;

procedure GetActsView(acts_id :integer; connect: TADOConnection; set_run_dll : Boolean; AOwner : TForm = nil);
var         SP : TADOStoredProc;
     file_data : TArray<Byte>;
     file_name : string;
         hFile : THandle;
     num_write : Cardinal;
             Q : TADOQuery;
users_group_id : integer;
    users_name : string;
begin
  Screen.Cursor := crHourGlass;

  Q := TADOQuery.Create(nil);
  Q.Connection := connect;
  Q.SQL.Add('SELECT users_id, users_name, users_group_id FROM users WHERE users_name = system_user');
  Q.Open;
  users_group_id := Q.FieldByName('users_group_id').AsInteger;
  users_name := Q.FieldByName('users_name').AsString;

  Q.Free;


  SP := TADOStoredProc.Create(nil);
  SP.Connection := connect;
  SP.ProcedureName := 'sp_acts_modify';
  SP.Parameters.Refresh;
  SP.Parameters.ParamByName('@acts_id'    ).Value := acts_id;
  SP.Parameters.ParamByName('@type_action').Value := 10;
  SP.Open;

  if (not SP.Eof) and (not SP.FieldByName('file_name').IsNull) then begin
    // Проверка и создание директории
    ForceDirectories(ExtractFilePath(ParamStr(0)) + 'Temp\');

    file_name := SP.FieldByName('file_name').AsString;
    file_data := LZHUnPack(SP.FieldByName('acts_image').AsBytes);
    file_name := ExtractFilePath(ParamStr(0)) + 'Temp' + '\' +  file_name;

    hFile:=CreateFile(PChar(file_name), Generic_Write, 0, nil, Create_Always, File_Attribute_Normal, 0);
    WriteFile(hFile, PAnsiChar(file_data)^, Length(file_data), num_write, nil);
    CloseHandle(hFile);
    ShellExecute(HWND(nil), 'open', PChar(file_name), nil, nil, SW_SHOWNORMAL);
  end else
    Application.MessageBox('НЕТ ФАЙЛА К ДАННОЙ ЗАПИСИ', 'ВНИМАНИЕ', MB_OK);

  SP.Free;
  Screen.Cursor := crDefault;
end;

procedure GetDocBlobDetailView(doc_id :integer; file_data: TArray<Byte>; file_name: string; connect: TADOConnection);
var       SP : TADOStoredProc;
    spam_dir : string;
       hFile : THandle;
   num_write : Cardinal;

           Q : TADOQuery;
  users_name : string;
     err_cod : Cardinal;
begin
  Screen.Cursor := crHourGlass;

  Q := TADOQuery.Create(nil);
  Q.Connection := connect;
  Q.SQL.Text := 'SELECT SYSTEM_USER as users_name';
  Q.Open;
  users_name := Q.FieldByName('users_name').AsString;
  Q.Free;

  spam_dir := ExtractFilePath(ParamStr(0)) + 'Temp\';
  // Проверка и создание директории
  ForceDirectories(spam_dir);
  // Попытка удаления мусора из временной директории
  DeleteFileFromDir(spam_dir);

  if file_data = nil then begin
    SP := TADOStoredProc.Create(nil);
    SP.Connection := connect;
    SP.ProcedureName := 'sp_BLOB_DETAIL_modify';
    SP.Parameters.Refresh;
    SP.Parameters.ParamByName('@doc_detail_id').Value := doc_id;
    SP.Parameters.ParamByName('@type_action'  ).Value := 10;
    SP.Open;

    if (not SP.Eof) and (not SP.FieldByName('files_name').IsNull) then begin
      file_name := SP.FieldByName('files_name').AsString;
      Insert(FloatToStr(Int(Now*1000000)), file_name, Pos('.', file_name));
      file_data := LZHUnPack(SP.FieldByName('doc_image').AsBytes);
      file_name := spam_dir + '\' +  file_name;
      hFile:=CreateFile(PChar(file_name), Generic_Write, 0, nil, Create_Always, File_Attribute_Normal, 0);
      WriteFile(hFile, PAnsiChar(file_data)^, Length(file_data), num_write, nil);
      CloseHandle(hFile);
      err_cod := ShellExecute(HWND(nil), 'open', PChar(file_name), nil, PChar(spam_dir), SW_SHOWNORMAL);
    end else
      Application.MessageBox('НЕТ ФАЙЛА К ДАННОЙ ЗАПИСИ', 'ВНИМАНИЕ', MB_OK);

    SP.Free;
  end else begin
    Insert(FloatToStr(Int(Now*1000000)), file_name, Pos('.', file_name));
    file_name := spam_dir + '\' +  file_name;
    hFile:=CreateFile(PChar(file_name), Generic_Write, 0, nil, Create_Always, File_Attribute_Normal, 0);
    WriteFile(hFile, PAnsiChar(file_data)^, Length(file_data), num_write, nil);
    CloseHandle(hFile);
    err_cod := ShellExecute(HWND(nil), 'open', PChar(file_name), nil, PChar(spam_dir), SW_SHOWNORMAL);
  end;


  Screen.Cursor := crDefault;
end;

procedure GetDocBlobView(doc_id :integer; file_data: TArray<Byte>; file_name: string; connect: TADOConnection);
var       SP : TADOStoredProc;
    spam_dir : string;
       hFile : THandle;
   num_write : Cardinal;
users_group_id : integer;
           Q : TADOQuery;
  users_name : string;
     err_cod : Cardinal;
begin
  Screen.Cursor := crHourGlass;
  Q := TADOQuery.Create(nil);
  Q.Connection := connect;
  Q.SQL.Add('SELECT users_id, users_name, users_group_id FROM users WHERE users_name = system_user');
  Q.Open;
  users_group_id := Q.FieldByName('users_group_id').AsInteger;
  users_name := Q.FieldByName('users_name').AsString;

  Q.Free;

  spam_dir := ExtractFilePath(ParamStr(0)) + 'Temp\';
  // Проверка и создание директории
  ForceDirectories(spam_dir);
  // Попытка удаления мусора из временной директории
  DeleteFileFromDir(spam_dir);

  if file_data = nil then begin
    SP := TADOStoredProc.Create(nil);
    SP.Connection := connect;
    SP.ProcedureName := 'sp_BLOB_modify';
    SP.Parameters.Refresh;
    SP.Parameters.ParamByName('@doc_id'     ).Value := doc_id;
    SP.Parameters.ParamByName('@type_action').Value := 10;
    SP.Open;

    if (not SP.Eof) and (not SP.FieldByName('file_name').IsNull) then begin
      file_name := SP.FieldByName('file_name').AsString;
      Insert(FloatToStr(Int(Now*1000000)), file_name, Pos('.', file_name));
      file_data := LZHUnPack(SP.FieldByName('doc_image').AsBytes);
      file_name := spam_dir + '\' +  file_name;
      hFile:=CreateFile(PChar(file_name), Generic_Write, 0, nil, Create_Always, File_Attribute_Normal, 0);
      WriteFile(hFile, PAnsiChar(file_data)^, Length(file_data), num_write, nil);
      CloseHandle(hFile);
      err_cod := ShellExecute(HWND(nil), 'open', PChar(file_name), nil, PChar(spam_dir), SW_SHOWNORMAL);
    end else
      Application.MessageBox('НЕТ ФАЙЛА К ДАННОЙ ЗАПИСИ', 'ВНИМАНИЕ', MB_OK);

    SP.Free;
  end else begin
    Insert(FloatToStr(Int(Now*1000000)), file_name, Pos('.', file_name));
    file_name := spam_dir + '\' +  file_name;
    hFile:=CreateFile(PChar(file_name), Generic_Write, 0, nil, Create_Always, File_Attribute_Normal, 0);
    WriteFile(hFile, PAnsiChar(file_data)^, Length(file_data), num_write, nil);
    CloseHandle(hFile);
    err_cod := ShellExecute(HWND(nil), 'open', PChar(file_name), nil, PChar(spam_dir), SW_SHOWNORMAL);
  end;

//  if users_name = 'admin_sfh' then
//    Application.MessageBox(PWideChar('ShellExecute = ' + inttostr(err_cod)), 'ВНИМАНИЕ', MB_OK);

  Screen.Cursor := crDefault;
end;

function CalcActsFileName(acts_id: integer; set_new: boolean; connect: TADOConnection) : string;
var file_name : string;
    Q : TADOQuery;
begin
// set_new = указывает на необходимость вернуть имя нового файла (создаем или пересоздаем)
// True  - расширение файла как у шаблона, т.к. мы пересоздаем Акт
// False - расширение соответсвует имени файла (Акт мог быть пересохранен,
//         а при сохранеии из SpreadSheet Акт всегда сохраняется в формате xlsx не смотря на то в каком формате шаблон,
//         это связано с тем, что SpreadSheet не корректно сохраняет в формате xls теряя большую часть форматирования)

  Q := TADOQuery.Create(nil);
  Q.Connection := connect;
  Q.SQL.Add('SELECT TOP 1 acts_id, acts_cod, acts_date, acts_type_cod, acts_type_name, acts_file_name, new_users_owner FROM view_acts');
  Q.SQL.Add('CROSS APPLY (SELECT users_id as new_users_owner FROM users WHERE users_name = system_user) users');
  Q.SQL.Add('WHERE acts_id = ' + VarToStr(acts_id) + '');
  Q.Open;

  // имя файла собираем из названия Акта + Даты Акта + Номера Акта ("Красивое" имя)
  // сохраненное имя может быть менее информативным и читаемым
  file_name := Q.FieldByName('acts_type_name').AsString +
               ' ' + FormatDateTime('dd.mm.yyyy', Q.FieldByName('acts_date').AsDateTime) +
               ' - ' + Q.FieldByName('acts_cod').AsString;
  if set_new then
    // новый Акт - расширение как у шаблона
    file_name := file_name + ExtractFileExt(GetDocBlob_FileNameOnly(connect, StrToInt(Q.FieldByName('acts_type_cod').AsString), 9, True))
  else if Q.FieldByName('acts_file_name').IsNull then
    // имя не сохранено - расширение как у шаблона (больше взять неоткуда)
    file_name := file_name + ExtractFileExt(GetDocBlob_FileNameOnly(connect, StrToInt(Q.FieldByName('acts_type_cod').AsString), 9, True))
  else
    // имя есть - берем из него расширение
    file_name := file_name + ExtractFileExt(Q.FieldByName('acts_file_name').AsString);

  file_name := ReplaceStr(file_name, '\', '_');
  file_name := ReplaceStr(file_name, '/', '_');
  file_name := ReplaceStr(file_name, '?', '_');
  file_name := ReplaceStr(file_name, ':', '_');
  file_name := ReplaceStr(file_name, '*', '_');
  file_name := ReplaceStr(file_name, '<', '_');
  file_name := ReplaceStr(file_name, '>', '_');
  file_name := ReplaceStr(file_name, '"', '_');
  file_name := ReplaceStr(file_name, '|', '_');

  Q.Free;

  Result := file_name;
end;

function GetDocBlob_FileNameOnly(conn : TADOConnection; doc_cod : integer; doc_type_cod : integer = 9; shablon : boolean = True) : string;
var
  Query    : TADOQuery;
begin
  Query := TADOQuery.Create(nil);
  Query.Connection := conn;

  Query.SQL.Add('SELECT TOP 1 file_name ');
  Query.SQL.Add('FROM ' + iif(shablon, 'doc_shablon', 'doc_blob') + ' as doc_blob');
  Query.SQL.Add('JOIN inf_obj');
  Query.SQL.Add('ON doc_blob.doc_type_id = inf_obj.inf_obj_id');
  Query.SQL.Add('AND inf_obj_cod = ''' + IntToStr(doc_type_cod) + '''');
  Query.SQL.Add('AND doc_cod = ''' + IntToStr(doc_cod) + '''');
  if shablon then begin
    Query.SQL.Add('AND (users_group_id = (SELECT TOP 1 users_group_id FROM users WHERE (users_name = SYSTEM_USER)) OR users_group_id IS NULL)');
    Query.SQL.Add('ORDER BY users_group_id DESC'); // сортировка, если users_group_id есть, то эта запись будет выше общего шаблона (users_group_id = NULL)
  end;
  Query.Open;

  Result := Query.FieldByName('file_name').AsString;

  Query.Free;
end;

function GetDocBlob(conn : TADOConnection; doc_cod : integer; doc_type_cod : integer = 9; shablon : boolean = True) : string;
var
  Query    : TADOQuery;
  x        : TADOBlobStream;
  tmp_path : string;
begin

  tmp_path := ExtractFilePath(ParamStr(0)) + 'Temp';
  // Проверка и создание директории
  ForceDirectories(tmp_path);
  // Попытка удаления мусора из временной директории
  DeleteFileFromDir(tmp_path);

  Query := TADOQuery.Create(nil);
  Query.Connection := conn;

  Query.SQL.Add('SELECT TOP 1 * ');
  Query.SQL.Add('FROM ' + iif(shablon, 'doc_shablon', 'doc_blob') + ' as doc_blob');
  Query.SQL.Add('JOIN inf_obj');
  Query.SQL.Add('ON doc_blob.doc_type_id = inf_obj.inf_obj_id');
  Query.SQL.Add('AND inf_obj_cod = ''' + IntToStr(doc_type_cod) + '''');
  Query.SQL.Add('AND doc_cod = ''' + IntToStr(doc_cod) + '''');
  if shablon then begin
    Query.SQL.Add('AND (users_group_id = (SELECT TOP 1 users_group_id FROM users WHERE (users_name = SYSTEM_USER)) OR users_group_id IS NULL)');
    Query.SQL.Add('ORDER BY users_group_id DESC'); // сортировка, если users_group_id есть, то эта запись будет выше общего шаблона (users_group_id = NULL)
  end;
  Query.Open;

  Result := '';
  if (not Query.Eof) and (not Query.FieldByName('file_name').IsNull) then begin
    // Создадим шаблон с именем файла сохраненном в базе
    tmp_path := tmp_path + '\' + Query.FieldByName('file_name').AsString;

    if not FileExists(tmp_path) then begin
      // создадим шаблон, если смогли удалить
      x := TADOBlobStream.Create(Query.FieldByName('doc_image') as TBlobField, bmRead);
      x.SaveToFile(tmp_path);
      x.Free;
    end;
    Result := tmp_path;
  end else begin
    Application.MessageBox('НЕ НАЙДЕН ШАБЛОН', 'ВНИМАНИЕ', MB_OK);
  end;
  Query.Free;
end;

function GetDocBlobBytes(conn : TADOConnection; doc_cod : integer; doc_type_cod : integer = 9; shablon : boolean = True) : TArray<Byte>;
var
  Query    : TADOQuery;
begin
  Query := TADOQuery.Create(nil);
  Query.Connection := conn;

  Query.SQL.Add('SELECT TOP 1 * ');
  Query.SQL.Add('FROM ' + iif(shablon, 'doc_shablon', 'doc_blob') + ' as doc_blob');
  Query.SQL.Add('JOIN inf_obj');
  Query.SQL.Add('ON doc_blob.doc_type_id = inf_obj.inf_obj_id');
  Query.SQL.Add('AND inf_obj_cod = ''' + IntToStr(doc_type_cod) + '''');
  Query.SQL.Add('AND doc_cod = ''' + IntToStr(doc_cod) + '''');
  if shablon then begin
    Query.SQL.Add('AND (users_group_id = (SELECT TOP 1 users_group_id FROM users WHERE (users_name = SYSTEM_USER)) OR users_group_id IS NULL)');
    Query.SQL.Add('ORDER BY users_group_id DESC'); // сортировка, если users_group_id есть, то эта запись будет выше общего шаблона (users_group_id = NULL)
  end;
  Query.Open;

  Result := nil;
  if (not Query.Eof) and (not Query.FieldByName('file_name').IsNull) then begin

    Result := Query.FieldByName('doc_image').AsBytes;

  end else begin
    Application.MessageBox('НЕ НАЙДЕН ШАБЛОН', 'ВНИМАНИЕ', MB_OK);
  end;
  Query.Free;
end;

function GetEtranDocBlob(conn : TADOConnection; doc_cod : integer; doc_type_id : integer = 9; shablon : boolean = True) : string;
var
  Query    : TADOQuery;
  x        : TADOBlobStream;
  tmp_path : string;
begin

  tmp_path := ExtractFilePath(ParamStr(0)) + 'Temp\';
  // Проверка и создание директории
  ForceDirectories(tmp_path);
  // Попытка удаления мусора из временной директории
  DeleteFileFromDir(tmp_path);

  Query := TADOQuery.Create(nil);
  Query.Connection := conn;

  Query.SQL.Add('SELECT * FROM etran_doc_blob');
  Query.SQL.Add('WHERE shablon = ' + iif(shablon, '1', '0'));
  Query.SQL.Add('AND doc_type_id = ' + IntToStr(doc_type_id));
  Query.SQL.Add('AND doc_cod = ''' + IntToStr(doc_cod) + '''');
  Query.Open;

  Result := '';
  if (not Query.Eof) and (not Query.FieldByName('file_name').IsNull) then begin
    // Создадим шаблон с именем файла сохраненном в базе
    tmp_path := tmp_path + '\' + Query.FieldByName('file_name').AsString;

    if not FileExists(tmp_path) then begin
      // создадим шаблон, если смогли удалить
      x := TADOBlobStream.Create(Query.FieldByName('doc_image') as TBlobField, bmRead);
      x.SaveToFile(tmp_path);
      x.Free;
    end;
    Result := tmp_path;
  end else begin
    Application.MessageBox('НЕ НАЙДЕН ШАБЛОН', 'ВНИМАНИЕ', MB_OK);
  end;

  Query.Free;

end;


// Печать ШК "2 из 5 чередующийся"
procedure PrintBarCode2of5(BarCode : TmyBarCode; exWks, exCell : OleVariant; connect: TADOConnection = nil);
var
  sCode : string;
  sNums : string;
  sTmp  : string;
  n1, n2, i, j : integer;
  myBMP : Vcl.Graphics.TBitmap;
begin
  // Пример вызова для Word
  // printBarCode2of5(BarCode, wdDoc, wdDoc.BookMarks.Item('barcode').Range);
  // Пример вызова для Excel
  // printBarCode2of5(BarCode, exWks, exWks.Cells[1, 1]);

  BarCode.database_cod := 0; // LIS

  sNums := '';
  sNums := sNums + RightStr('00' + IntToStr(BarCode.database_cod), 2);
  sNums := sNums + RightStr('000' + IntToStr(BarCode.object_id), 3);
  sNums := sNums + FormatDateTime('yymmdd', BarCode.date);
  sNums := sNums + RightStr('0000000000' + IntToStr(BarCode.global_id), 10);
  sNums := sNums + RightStr('0000' + IntToStr(BarCode.user_id), 4);

  // Проверочный символ
  n2 := 0;
  for i := 1 to Length(sNums) do begin
    n1 := StrToInt(sNums[i]);
    if (i mod 2) = 1 then n1 := n1 * 3;
    n2 := n2 + n1;
  end;
  n1 := 10 - ((n2 + 9) mod 10) - 1;
  sNums := sNums + IntToStr(n1);

  // Кодирование
  sTmp := '00110 10001 01001 11000 00101 10100 01100 00011 10010 01010';
  // Start
  sCode := '0000';
  // Цифры
  for i := 1 to Length(sNums) Div 2 do begin
    n1 := StrToInt(sNums[i * 2 - 1]);
    n2 := StrToInt(sNums[i * 2]);
    for j := 1 to 5 do begin
      sCode := sCode + sTmp[n1 * 6 + j];
      sCode := sCode + sTmp[n2 * 6 + j];
    end;
  end;
  // Stop
  sCode := sCode + '100';

  // Печать
  n1 := 1;
  myBMP := Vcl.Graphics.TBitmap.Create;
  myBMP.Canvas.Font.Size := 7;
  myBMP.Height := 29 + myBMP.Canvas.TextHeight(sNums);
  myBMP.Width := 28 + (Length(sNums) * 7);
  if (myBMP.Canvas.TextWidth(sNums) + 4) > myBMP.Width then
    myBMP.Width := (myBMP.Canvas.TextWidth(sNums));

  // Начальный пропуск
  myBMP.Canvas.Brush.Color := RGB(255, 255, 255);
  myBMP.Canvas.FillRect(Rect(n1, 1, n1 + 10, 25));
  n1 := n1 + 10;

  // Основной цикл
  for i := 1 to Length(sCode) do begin
    if (i mod 2) = 1 then
      myBMP.Canvas.Brush.Color := RGB(0, 0, 0)
    else
      myBMP.Canvas.Brush.Color := RGB(255, 255, 255);
    if (sCode[i] = '0') then begin
      myBMP.Canvas.FillRect(Rect(n1, 1, n1 + 1, 25));
      n1 := n1 + 1;
    end else begin
      myBMP.Canvas.FillRect(Rect(n1, 1, n1 + 2, 25));
      n1 := n1 + 2;
    end;
  end;

  // Конечный пропуск
  myBMP.Canvas.Brush.Color := RGB(255, 255, 255);
  myBMP.Canvas.FillRect(Rect(n1, 1, n1 + 10, 25));
  n1 := n1 + 10;

  // Печатаем цифры
  myBMP.Canvas.Brush.Color := RGB(255, 255, 255);
  myBMP.Canvas.TextOut((myBMP.Width - myBMP.Canvas.TextWidth(sNums)) div 2, 25, sNums);

  // Сохраняем
  myBMP.SaveToFile(ExtractFilePath(ParamStr(0)) + 'Temp\' + sNums + '.bmp');
  myBMP.Free;
  if (exWks.Application.Name = 'Microsoft Word') then
    exWks.InlineShapes.AddPicture (ExtractFilePath(ParamStr(0)) + 'Temp\' + sNums + '.bmp', False, True, exCell)
  else begin//'Excel'
  //  // Нижний левый колонтитул
      exWks.PageSetup.LeftFooterPicture.Filename := ExtractFilePath(ParamStr(0)) + 'Temp\' + sNums + '.bmp';
      //exWks.PageSetup.LeftFooter := '&О';
      exWks.PageSetup.LeftFooter := '&О&G'; // &O - для Excel 2003; &G - для Excel 2010 (ставим обе, чтобы не разбираться в версиях - данные константы в разных версиях не пересекаются)
      exWks.PageSetup.BottomMargin := exWks.Application.InchesToPoints(0.590551181102362); //1,5 см
      exWks.PageSetup.FooterMargin := 0;
  //  exCell.Select;
  //  exWks.Pictures.Insert(ExtractFilePath(ParamStr(0)) + 'Temp\' + sNums + '.bmp');
  end;

end;

procedure ShowUsersDetail(personID: integer; fio_users: string);
type
  TFuncWnd = function(AppHand: THandle; type_action: integer; users_id: integer; set_holidays_another_users: boolean) : variant;
type
  TFuncList = function (AppHand: THandle) : Variant;
var
FPersonList: TFuncList;
 FPersonWnd: TFuncWnd;
     handle: THandle;
          v: Variant;
          Q: TADODataSet;
begin
  //Screen.Cursor := crHourglass;

  handle := LoadLibrary('Tel_users.dll');
  if personID = -9 then begin
    try
      @FPersonList := GetProcAddress(handle, 'GetPersonList');
      v := FPersonList(Application.Handle);
      Q := TADODataSet.Create(nil);
      Q.Recordset := RecordsetFromXML(v[1]);

      if Q.Locate('fio_users', fio_users, [loCaseInsensitive]) then begin
        personID := Q.FieldByName('users_id').AsInteger;
        @FPersonWnd := GetProcAddress(handle, 'CreateWndPerson');
        FPersonWnd(Application.Handle, 3, personID, False);
        FreeLibrary(handle);
     //   Screen.Cursor := crDefault;
      end else begin
        Application.MessageBox('Данные сотрудника не найдены в справочнике.', 'Ошибка', MB_ICONERROR or MB_OK);
        FreeLibrary(handle);
        exit;
      end;
      Q.Free;
    except
      Application.MessageBox('Ошибка загрузки библиотеки телефонного справочника.', 'Ошибка', MB_ICONERROR or MB_OK);
    end;
  end else begin
    try
      @FPersonWnd := GetProcAddress(handle, 'CreateWndPerson');
      FPersonWnd(Application.Handle, 3, personID, False);
      FreeLibrary(handle);
    except
      Application.MessageBox('Ошибка загрузки библиотеки телефонного справочника.', 'Ошибка', MB_ICONERROR or MB_OK);
    end;
  end;
end;

procedure SetdxDBGridColumns(cxGrid : TcxGridDBBandedTableView);
type
  TFunc = function(AHandle : THandle; var ClientDS : TClientDataSet) : variant;
var
   FGrid   : TFunc;
   handle  : THandle;
   v       : variant;
   i       : integer;
   ClientDS : TClientDataSet;
begin
  ClientDS := TClientDataSet.Create(nil);
  ClientDS.FieldDefs.Add('id', ftAutoInc);
  ClientDS.FieldDefs.Add('caption', ftString, 50);
  ClientDS.FieldDefs.Add('flag', ftBoolean);
  ClientDS.FieldDefs.Add('field_name', ftString, 50);
  ClientDS.FieldDefs.Add('field_position', ftInteger);
  ClientDS.FieldDefs.Add('field_color', ftInteger);
  ClientDS.FieldDefs.Add('field_focused', ftBoolean);
  ClientDS.FieldDefs.Add('field_bandindex', ftInteger);
  ClientDS.CreateDataSet;

   for i := 0 to cxGrid.ItemCount-1 do
    if cxGrid.Columns[i].Position.BandIndex <> -1 then begin
      ClientDS.Append;
      ClientDS['caption']         := cxGrid.Columns[i].Caption;
      ClientDS['flag']            := cxGrid.Columns[i].Visible;
      ClientDS['field_name']      := cxGrid.Columns[i].DataBinding.FieldName;
      ClientDS['field_position']  := cxGrid.Columns[i].Position.ColIndex;
      ClientDS['field_bandindex'] := cxGrid.Columns[i].Position.BandIndex;
      if cxGrid.Columns[i].Styles.Content <> nil then
        ClientDS['field_color'] := cxGrid.Columns[i].Styles.Content.Color;

      ClientDS['field_focused'] := cxGrid.Columns[i].Focused;
      ClientDS.Post;
    end;

   handle := LoadLibrary('user.dll');
   @FGrid := GetProcAddress(handle, 'CreateWndGridColumns');
   v := FGrid(Application.Handle, ClientDS);
   FreeLibrary(handle);

   if v[0] = 0 then begin
     ClientDS.First;
     while not ClientDS.Eof do begin
       cxGrid.GetColumnByFieldName(ClientDS.FieldByName('field_name').AsString).Visible           := ClientDS.FieldByName('flag').AsBoolean;
       cxGrid.GetColumnByFieldName(ClientDS.FieldByName('field_name').AsString).Position.ColIndex := ClientDS.FieldByName('field_position').AsInteger;
       cxGrid.GetColumnByFieldName(ClientDS.FieldByName('field_name').AsString).Focused           := ClientDS.FieldByName('field_focused').AsBoolean;
       ClientDS.Next;
     end;
   end;

   ClientDS.Free;
end;

function SaveActsBegin(connect: TADOConnection; usr_pwd: PUser_pwd; str_bargain_id: string; acts_type_cod: integer; set_sign: integer; mask_checked: word; contract_id: integer = -9; contract_agent_id: integer = -9; set_correct: Boolean = False): Variant;
  // set_sign (1 = RUS, 2 = ENG, 3 = RUS+ENG, -9 = без подписи)
  // contract_id (не обязательный парамерт, если отдичен от -9, то сохраняем именно его, а не найденный в процедуре)
  // используется для формирования отчета по простою для СТС
  // contract_agent_id (не обязательный парамерт, если отдичен от -9, то сохраняем его как второй ИД - подрядчик)
type
  TFunc = function(AppHand: THandle; usr_pwd: PUser_pwd; acts_type_cod, parent_acts_id: integer; str_bargain_id: string; date_begin, date_end: TDate; contract_id, contract_agent_id: integer; set_sign: integer; mask_checked: word; acts_comment: string; set_readonly : boolean) : Variant;
var
  FActSettings   : TFunc;
  handle         : THandle;
  retActSettings : Variant;

  Query          : TADOQuery;
  str_msg        : string;

  date_begin     : TDate;
  date_end       : TDate;

  acts_comment   : string;
  parent_acts_id : integer;

  currency_id    : integer;
  brief_name     : string;
begin
  // Проверяет возможность формирования акта (при необходимости открывает ранее сохраненный)

  // Структура ответа retActSettings
  // [0] = флаг (-9 = не формируем акт) = acts_type_cod
  // [1] = ID (array: [0] = acts_id, [1] = parent_acts_id)
  // [2] = acts_cod
  // [3] = даты (array: [0] = acts_date, [1] = date_begin, [2] = date_end)
  // [4] = подписанты self (array: [0] = self_director; [1] = self_basis; [2] = текст а акт; [3]-[5] = ... (eng); [6] = банковские реквизиты)
  // [5] = подписанты customer (array: ...)
  // [6] = Галочки (array: [0] = set_addvagon; [1] = set_exchange; [2] = set_addsign; [3] = set_copyreport;
  //                       [4] = set_routefromfact; [5] = set_kargofromfact; [6] = set_weightfromfact;
  //                       [7] = other_exchange_id - альтернативная валюта; [8] = set_scorezftofromfactinc;
  //                       [9] = set_printcomment; [10] - set_ppfromfact; [11] = set_recalc_distance)
  // Пересчет расстояний (настройка не сохраняется в базе, и при каждом новом формировани Акта сброшена)
  // [7] = валюта (array: [0] = currency_id; [1] = brief_name)
  // [8] = contract_id
  // [9] = contract_agent_id
  // [10] = видимость колонок (строка)
  // [11] = примечание
  // [12] = firm_self (array: [0] = firm_self_id, [1] = firm_self_name_short, [2] = firm_self_name_eng)
  // [13] = подписанты (array: [0] = self_dir_id, [1] = self_dir_name, [2] = set_print_self_dir,
  //                           [3] = self_buh_id, [4] = self_buh_name, [5] = set_print_self_buh,
  //                           [6]-[11] = customet_...)
  // [14] = должности (array: [0] = self_type_dir_id, [1] = self_type_dir, [2] = self_type_dir_eng,
  //                           [3] = self_type_buh_id, [4] = self_type_buh, [5] = self_type_buh_eng,
  //                           [6]-[11] = customet_...)
  // [15] = Список @str_zfto_score_id (заполняется только для отчетов на возмещение и только в процессе построения отчета - из формы параметров всегда возвращается пустое)
  // [16] = Доп. СОглашение
  retActSettings := VarArrayOf([-9]);

  // Проверяем, один ли контракт
  // а так же формируем начальную и конечную даты
  Query := TADOQuery.Create(nil);
  Query.Connection := connect;
  Query.SQL.Add('SELECT min(contract_id) as min_contract_id, max(contract_id) as max_contract_id, ');
  Query.SQL.Add('min(date_period) as min_date_period, max(date_period) as max_date_period,');
  Query.SQL.Add('max(five_days_zfto_name) as five_days_zfto_name, max(bargain_nds_name) as bargain_nds_name');
  Query.SQL.Add('FROM view_bargain');
  Query.SQL.Add('JOIN dbo.StrToTbl(''' + str_bargain_id + ''', default) as StrToTbl');
  Query.SQL.Add('ON view_bargain.bargain_id = StrToTbl.cod');
  Query.Open;

  if Query.Eof then begin
    Application.MessageBox('Не выбраны перевозки - акт сформирован не будет', 'Внимание', MB_OK or MB_ICONEXCLAMATION);
    Query.Free;
    Result := retActSettings;
    exit;
  end;
  if Query.FieldByName('min_contract_id').AsInteger <> Query.FieldByName('max_contract_id').AsInteger then begin
    Application.MessageBox('Выбраны перевозки по нескольким договорам - акт сформирован не будет', 'Внимание', MB_OK or MB_ICONEXCLAMATION);
    Query.Free;
    Result := retActSettings;
    exit;
  end;

  if contract_id = -9 then
    contract_id := Query.FieldByName('min_contract_id').AsInteger;
  acts_comment := Query.FieldByName('five_days_zfto_name').AsString + ' (' + Query.FieldByName('bargain_nds_name').AsString + ')';
  date_begin   := Dateof(StartOfTheMonth(iif(Query.FieldByName('min_date_period').AsDateTime = 0, Date, Query.FieldByName('min_date_period').AsDateTime)));
  date_end     := Dateof(EndOfTheMonth(iif(Query.FieldByName('max_date_period').AsDateTime = 0, Date, Query.FieldByName('max_date_period').AsDateTime)));
  parent_acts_id := -9;
  Query.Free;

  // Договор открыт позднее выбранного периода - смещаем дату начала
  Query := TADOQuery.Create(nil);
  Query.Connection := connect;
  Query.SQL.Add('SELECT date_begin FROM view_contract WHERE contract_id = ' + IntToStr(contract_id));
  Query.Open;
  if date_begin < Query.FieldByName('date_begin').AsDateTime then
    date_begin := Query.FieldByName('date_begin').AsDateTime;
  Query.Free;

  if set_correct then begin
    // Корр акт. - подберем акт для корректировки
    // Выберем основной акт
    Query := TADOQuery.Create(nil);
    Query.Connection := connect;
    Query.SQL.Add('SELECT * FROM view_acts');
    Query.SQL.Add('WHERE acts_id IN (SELECT acts_id FROM acts_bargain WHERE bargain_id IN (SELECT cod FROM dbo.StrToTbl(''' + str_bargain_id + ''', default)))');
    Query.SQL.Add('AND parent_acts_id IS NULL'); // все кроме корр
    Query.Open;

    parent_acts_id := -9;
    if Query.RecordCount = 1 then begin
      parent_acts_id := Query.FieldByName('acts_id').value;
    end else if Query.RecordCount > 1 then begin
      fmFilter := TfmFilter.Create(0, Query, 'acts_id', 'acts_cod', 'acts_type_name');
      fmFilter._SetActsChoose := true;
      if fmFilter.ShowModal = mrOk then begin
        Query.Locate('acts_id', IntToStr(fmFilter.GetId), []);
        parent_acts_id := Query.FieldByName('acts_id').value;
        contract_agent_id := iif(Query.FieldByName('contract_agent_id').IsNull, -9, Query.FieldByName('contract_agent_id').value);
      end;
      fmFilter.Free;
    end;
    Query.Free;

    // 1 - нет актов для корректировки
    if parent_acts_id = -9 then begin
      Result := retActSettings;

      str_msg := 'По выбранным перевозкам не найдено актов для корректироки';
      Application.MessageBox(PChar(str_msg), 'Акты', MB_OK or MB_ICONINFORMATION);
      exit;
    end;
  end;

  // Вызов формы настроек акта
  handle := LoadLibrary('user.dll');
  @FActSettings := GetProcAddress(handle, 'CreateWndActSettings');
  retActSettings := FActSettings(Application.Handle, usr_pwd, acts_type_cod, parent_acts_id, str_bargain_id, date_begin, date_end, contract_id, contract_agent_id, set_sign, mask_checked, acts_comment, False);
  FreeLibrary(handle);

  if not LisCheck(connect.ConnectionString) then
    retActSettings[0] := -9;

  Result := retActSettings;
end;

function SaveActsBeginShp(connect: TADOConnection; usr_pwd: PUser_pwd; str_bargain_id: string; acts_type_cod: integer; set_sign: integer; mask_checked: word; contract_id: integer = -9; contract_agent_id: integer = -9; set_correct: Boolean = False; set_check_contract: Boolean = True): Variant;
  // set_sign (1 = RUS, 2 = ENG, 3 = RUS+ENG, -9 = без подписи)
  // contract_id (не обязательный парамерт, если отдичен от -9, то сохраняем именно его, а не найденный в процедуре)
  // используется для формирования отчета по простою для СТС
  // contract_agent_id (не обязательный парамерт, если отдичен от -9, то сохраняем его как второй ИД - подрядчик)
type
  TFunc = function(AppHand: THandle; usr_pwd: PUser_pwd; acts_type_cod, parent_acts_id: integer; str_bargain_id: string; date_begin, date_end: TDate; contract_id, contract_agent_id: integer; set_sign: integer; mask_checked: word; acts_comment: string; set_readonly : boolean) : Variant;
var
  FActSettings   : TFunc;
  handle         : THandle;
  retActSettings : Variant;

  Query          : TADOQuery;
  str_msg        : string;

  date_begin     : TDate;
  date_end       : TDate;

  acts_comment   : string;
  parent_acts_id : integer;

  currency_id    : integer;
  brief_name     : string;
begin
  // Проверяет возможность формирования акта (при необходимости открывает ранее сохраненный)

  // Структура ответа retActSettings
  // [0] = флаг (-9 = не формируем акт) = acts_type_cod
  // [1] = ID (array: [0] = acts_id, [1] = parent_acts_id)
  // [2] = acts_cod
  // [3] = даты (array: [0] = acts_date, [1] = date_begin, [2] = date_end)
  // [4] = подписанты self (array: [0] = self_director; [1] = self_basis; [2] = текст а акт; [3]-[5] = ... (eng); [6] = банковские реквизиты)
  // [5] = подписанты customer (array: ...)
  // [6] = Галочки (array: [0] = set_addvagon; [1] = set_exchange; [2] = set_addsign; [3] = set_copyreport;
  //                       [4] = set_routefromfact; [5] = set_kargofromfact; [6] = set_weightfromfact;
  //                       [7] = other_exchange_id - альтернативная валюта; [8] = set_scorezftofromfactinc;
  //                       [9] = set_printcomment; [10] - set_ppfromfact; [11] = set_recalc_distance)
  // Пересчет расстояний (настройка не сохраняется в базе, и при каждом новом формировани Акта сброшена)
  // [7] = валюта (array: [0] = currency_id; [1] = brief_name)
  // [8] = contract_id
  // [9] = contract_agent_id
  // [10] = видимость колонок (строка)
  // [11] = примечание
  // [12] = firm_self (array: [0] = firm_self_id, [1] = firm_self_name_short, [2] = firm_self_name_eng)
  // [13] = подписанты (array: [0] = self_dir_id, [1] = self_dir_name, [2] = set_print_self_dir,
  //                           [3] = self_buh_id, [4] = self_buh_name, [5] = set_print_self_buh,
  //                           [6]-[11] = customet_...)
  // [14] = должности (array: [0] = self_type_dir_id, [1] = self_type_dir, [2] = self_type_dir_eng,
  //                           [3] = self_type_buh_id, [4] = self_type_buh, [5] = self_type_buh_eng,
  //                           [6]-[11] = customet_...)
  // [15] = Список @str_zfto_score_id (заполняется только для отчетов на возмещение и только в процессе построения отчета - из формы параметров всегда возвращается пустое)
  // [16] = Доп. СОглашение
  retActSettings := VarArrayOf([-9]);

  // Проверяем, один ли контракт
  // а так же формируем начальную и конечную даты
  Query := TADOQuery.Create(nil);
  Query.Connection := connect;
  Query.SQL.Add('SELECT min(contract_id) as min_contract_id, max(contract_id) as max_contract_id, ');
  Query.SQL.Add('min(date_period) as min_date_period, max(date_period) as max_date_period,');
  Query.SQL.Add('max(type_nds_name) as bargain_nds_name');
  Query.SQL.Add('FROM (SELECT contract_id, date_period, type_nds_name FROM view_shp_bargain_add');
  Query.SQL.Add('JOIN dbo.StrToTbl(''' + str_bargain_id + ''', default) as StrToTbl');
  Query.SQL.Add('ON view_shp_bargain_add.bargain_add_id = StrToTbl.cod');
  Query.SQL.Add('UNION ALL');
  Query.SQL.Add('SELECT contract_id, date_period, null as type_nds_name FROM view_shp_bargain');
  Query.SQL.Add('JOIN dbo.StrToTbl(''' + str_bargain_id + ''', default) as StrToTbl');
  Query.SQL.Add('ON view_shp_bargain.bargain_id = StrToTbl.cod) as x');
  // могут быть переданы как сделки, так и услуги
  Query.Open;

  if Query.Eof then begin
    Application.MessageBox('Не выбраны перевозки - акт сформирован не будет', 'Внимание', MB_OK or MB_ICONEXCLAMATION);
    Query.Free;
    Result := retActSettings;
    exit;
  end;

  if set_check_contract then
    if Query.FieldByName('min_contract_id').AsInteger <> Query.FieldByName('max_contract_id').AsInteger then begin
      Application.MessageBox('Выбраны перевозки по нескольким договорам - акт сформирован не будет', 'Внимание', MB_OK or MB_ICONEXCLAMATION);
      Query.Free;
      Result := retActSettings;
      exit;
    end;

  if contract_id = -9 then
    contract_id := Query.FieldByName('min_contract_id').AsInteger;
  acts_comment := Query.FieldByName('bargain_nds_name').AsString;
  date_begin   := Dateof(StartOfTheMonth(iif(Query.FieldByName('min_date_period').AsDateTime = 0, Date, Query.FieldByName('min_date_period').AsDateTime)));
  date_end     := Dateof(EndOfTheMonth(iif(Query.FieldByName('max_date_period').AsDateTime = 0, Date, Query.FieldByName('max_date_period').AsDateTime)));
  parent_acts_id := -9;
  Query.Free;

  // Договор открыт позднее выбранного периода - смещаем дату начала
  Query := TADOQuery.Create(nil);
  Query.Connection := connect;
  Query.SQL.Add('SELECT date_begin FROM view_contract WHERE contract_id = ' + IntToStr(contract_id));
  Query.Open;
  if date_begin < Query.FieldByName('date_begin').AsDateTime then
    date_begin := Query.FieldByName('date_begin').AsDateTime;
  Query.Free;

  if set_correct then begin
    // Корр акт. - подберем акт для корректировки
    // Выберем основной акт
    Query := TADOQuery.Create(nil);
    Query.Connection := connect;
    Query.SQL.Add('SELECT * FROM view_acts');
    Query.SQL.Add('WHERE acts_id IN (SELECT acts_id FROM acts_bargain WHERE bargain_id IN (SELECT cod FROM dbo.StrToTbl(''' + str_bargain_id + ''', default)))');
    Query.SQL.Add('AND parent_acts_id IS NULL'); // все кроме корр
    Query.Open;

    parent_acts_id := -9;
    if Query.RecordCount = 1 then begin
      parent_acts_id := Query.FieldByName('acts_id').value;
    end else if Query.RecordCount > 1 then begin
      fmFilter := TfmFilter.Create(0, Query, 'acts_id', 'acts_cod', 'acts_type_name');
      fmFilter._SetActsChoose := true;
      if fmFilter.ShowModal = mrOk then begin
        Query.Locate('acts_id', IntToStr(fmFilter.GetId), []);
        parent_acts_id := Query.FieldByName('acts_id').value;
        contract_agent_id := iif(Query.FieldByName('contract_agent_id').IsNull, -9, Query.FieldByName('contract_agent_id').value);
      end;
      fmFilter.Free;
    end;
    Query.Free;

    // 1 - нет актов для корректировки
    if parent_acts_id = -9 then begin
      Result := retActSettings;

      str_msg := 'По выбранным перевозкам не найдено актов для корректироки';
      Application.MessageBox(PChar(str_msg), 'Акты', MB_OK or MB_ICONINFORMATION);
      exit;
    end;
  end;

  // Вызов формы настроек акта
  handle := LoadLibrary('user.dll');
  @FActSettings := GetProcAddress(handle, 'CreateWndActSettings');
  retActSettings := FActSettings(Application.Handle, usr_pwd, acts_type_cod, parent_acts_id, str_bargain_id, date_begin, date_end, contract_id, contract_agent_id, set_sign, mask_checked, acts_comment, False);
  FreeLibrary(handle);

  Result := retActSettings;
end;

function SaveActsBeginArenda(connect: TADOConnection; usr_pwd: PUser_pwd; str_bargain_id: string; acts_type_cod: integer; set_sign: integer; mask_checked: word; contract_id: integer = -9; contract_agent_id: integer = -9; set_correct: Boolean = False): Variant;
  // set_sign (1 = RUS, 2 = ENG, 3 = RUS+ENG, -9 = без подписи)
  // contract_id (не обязательный парамерт, если отдичен от -9, то сохраняем именно его, а не найденный в процедуре)
  // используется для формирования отчета по простою для СТС
  // contract_agent_id (не обязательный парамерт, если отдичен от -9, то сохраняем его как второй ИД - подрядчик)
type
  TFunc = function(AppHand: THandle; usr_pwd: PUser_pwd; acts_type_cod, parent_acts_id: integer; str_bargain_id: string; date_begin, date_end: TDate; contract_id, contract_agent_id: integer; set_sign: integer; mask_checked: word; acts_comment: string; set_readonly : boolean) : Variant;
var
  FActSettings   : TFunc;
  handle         : THandle;
  retActSettings : Variant;

  Query          : TADOQuery;
  str_msg        : string;

  date_begin     : TDate;
  date_end       : TDate;

  acts_comment   : string;
  parent_acts_id : integer;

  currency_id    : integer;
  brief_name     : string;
begin
  // Проверяет возможность формирования акта (при необходимости открывает ранее сохраненный)

  // Структура ответа retActSettings
  // [0] = флаг (-9 = не формируем акт) = acts_type_cod
  // [1] = ID (array: [0] = acts_id, [1] = parent_acts_id)
  // [2] = acts_cod
  // [3] = даты (array: [0] = acts_date, [1] = date_begin, [2] = date_end)
  // [4] = подписанты self (array: [0] = self_director; [1] = self_basis; [2] = текст а акт; [3]-[5] = ... (eng); [6] = банковские реквизиты)
  // [5] = подписанты customer (array: ...)
  // [6] = Галочки (array: [0] = set_addvagon; [1] = set_exchange; [2] = set_addsign; [3] = set_copyreport;
  //                       [4] = set_routefromfact; [5] = set_kargofromfact; [6] = set_weightfromfact;
  //                       [7] = other_exchange_id - альтернативная валюта; [8] = set_scorezftofromfactinc;
  //                       [9] = set_printcomment; [10] - set_ppfromfact; [11] = set_recalc_distance)
  // Пересчет расстояний (настройка не сохраняется в базе, и при каждом новом формировани Акта сброшена)
  // [7] = валюта (array: [0] = currency_id; [1] = brief_name)
  // [8] = contract_id
  // [9] = contract_agent_id
  // [10] = видимость колонок (строка)
  // [11] = примечание
  // [12] = firm_self (array: [0] = firm_self_id, [1] = firm_self_name_short, [2] = firm_self_name_eng)
  // [13] = подписанты (array: [0] = self_dir_id, [1] = self_dir_name, [2] = set_print_self_dir,
  //                           [3] = self_buh_id, [4] = self_buh_name, [5] = set_print_self_buh,
  //                           [6]-[11] = customet_...)
  // [14] = должности (array: [0] = self_type_dir_id, [1] = self_type_dir, [2] = self_type_dir_eng,
  //                           [3] = self_type_buh_id, [4] = self_type_buh, [5] = self_type_buh_eng,
  //                           [6]-[11] = customet_...)
  // [15] = Список @str_zfto_score_id (заполняется только для отчетов на возмещение и только в процессе построения отчета - из формы параметров всегда возвращается пустое)
  // [16] = Доп. СОглашение
  retActSettings := VarArrayOf([-9]);

  // Проверяем, один ли контракт
  // а так же формируем начальную и конечную даты
  Query := TADOQuery.Create(nil);
  Query.Connection := connect;
  Query.SQL.Add('SELECT min(contract_id) as min_contract_id, max(contract_id) as max_contract_id, ');
  Query.SQL.Add('min(vagon_arenda_acts_date) as min_acts_date, max(vagon_arenda_acts_date) as max_acts_date  ');
  Query.SQL.Add('FROM view_vagon_arenda_acts');
  Query.SQL.Add('JOIN dbo.StrToTbl(''' + str_bargain_id + ''', default) as StrToTbl');
  Query.SQL.Add('ON view_vagon_arenda_acts.vagon_arenda_acts_id = StrToTbl.cod');
  Query.Open;

  if Query.Eof then begin
    Application.MessageBox('Не выбран акт аренды - акт сформирован не будет', 'Внимание', MB_OK or MB_ICONEXCLAMATION);
    Query.Free;
    Result := retActSettings;
    exit;
  end;
  if Query.FieldByName('min_contract_id').AsInteger <> Query.FieldByName('max_contract_id').AsInteger then begin
    Application.MessageBox('Выбраны акты аренды по нескольким договорам - акт сформирован не будет', 'Внимание', MB_OK or MB_ICONEXCLAMATION);
    Query.Free;
    Result := retActSettings;
    exit;
  end;

  if contract_id = -9 then
    contract_id := Query.FieldByName('min_contract_id').AsInteger;
//  acts_comment := Query.FieldByName('five_days_zfto_name').AsString + ' (' + Query.FieldByName('bargain_nds_name').AsString + ')';
  date_begin   := Dateof(StartOfTheMonth(iif(Query.FieldByName('min_acts_date').AsDateTime = 0, Date, Query.FieldByName('min_acts_date').AsDateTime)));
  date_end     := Dateof(EndOfTheMonth(iif(Query.FieldByName('max_acts_date').AsDateTime = 0, Date, Query.FieldByName('max_acts_date').AsDateTime)));
  parent_acts_id := -9;
  Query.Free;

  // Договор открыт позднее выбранного периода - смещаем дату начала
  Query := TADOQuery.Create(nil);
  Query.Connection := connect;
  Query.SQL.Add('SELECT date_begin FROM view_contract WHERE contract_id = ' + IntToStr(contract_id));
  Query.Open;
  if date_begin < Query.FieldByName('date_begin').AsDateTime then
    date_begin := Query.FieldByName('date_begin').AsDateTime;
  Query.Free;

  if set_correct then begin
    // Корр акт. - подберем акт для корректировки
    // Выберем основной акт
    Query := TADOQuery.Create(nil);
    Query.Connection := connect;
    Query.SQL.Add('SELECT * FROM view_acts');
    Query.SQL.Add('WHERE acts_id IN (SELECT acts_id FROM acts_bargain WHERE bargain_id IN (SELECT cod FROM dbo.StrToTbl(''' + str_bargain_id + ''', default)))');
    Query.SQL.Add('AND parent_acts_id IS NULL'); // все кроме корр
    Query.Open;

    parent_acts_id := -9;
    if Query.RecordCount = 1 then begin
      parent_acts_id := Query.FieldByName('acts_id').value;
    end else if Query.RecordCount > 1 then begin
      fmFilter := TfmFilter.Create(0, Query, 'acts_id', 'acts_cod', 'acts_type_name');
      fmFilter._SetActsChoose := true;
      if fmFilter.ShowModal = mrOk then begin
        Query.Locate('acts_id', IntToStr(fmFilter.GetId), []);
        parent_acts_id := Query.FieldByName('acts_id').value;
        contract_agent_id := iif(Query.FieldByName('contract_agent_id').IsNull, -9, Query.FieldByName('contract_agent_id').value);
      end;
      fmFilter.Free;
    end;
    Query.Free;

    // 1 - нет актов для корректировки
    if parent_acts_id = -9 then begin
      Result := retActSettings;

      str_msg := 'По выбранным актам аренды не найдено актов для корректироки';
      Application.MessageBox(PChar(str_msg), 'Акты', MB_OK or MB_ICONINFORMATION);
      exit;
    end;
  end;

  // Вызов формы настроек акта
  handle := LoadLibrary('user.dll');
  @FActSettings := GetProcAddress(handle, 'CreateWndActSettings');
  retActSettings := FActSettings(Application.Handle, usr_pwd, acts_type_cod, parent_acts_id, str_bargain_id, date_begin, date_end, contract_id, contract_agent_id, set_sign, mask_checked, acts_comment, False);
  FreeLibrary(handle);

  Result := retActSettings;
end;

procedure SaveActsEnd(connect: TADOConnection; exWks: Variant; var ActSettings : Variant; str_bargain_id: string; acts_sum: Variant);
var
  tmp_path : string;
  file_name: string;
  Query    : TADOQuery;
  BarCode  : TmyBarCode;
  SP       : TADOStoredProc;
  i        : integer;
  s,s1     : TStringStream;
  files_data : TArray<Byte>;
begin

  // Если Акт новый  - сначала сохраним его без ШК и номера
  if ActSettings[1][0] = -9 then begin
    SP := TADOStoredProc.Create(nil);
    SP.Connection := connect;
    SP.ProcedureName := 'sp_acts_modify';
    SP.Parameters.Refresh;

    // Сохранение акта
    SP.Parameters.ParamByName('@type_action').Value       := 0;
    SP.Parameters.ParamByName('@acts_id').Value           := NULL;
    SP.Parameters.ParamByName('@acts_cod').Value          := ActSettings[2];
    SP.Parameters.ParamByName('@acts_type_cod').Value     := ActSettings[0];
    SP.Parameters.ParamByName('@acts_date').Value         := ActSettings[3][0];
    SP.Parameters.ParamByName('@contract_id').Value       := ActSettings[8];
    SP.Parameters.ParamByName('@firm_self_id').Value      := ActSettings[12][0];
//    SP.Parameters.ParamByName('@date_period').Value       := ActSettings[3][1];
    SP.Parameters.ParamByName('@acts_image').Value        := NULL;
    SP.Parameters.ParamByName('@date_begin').Value        := ActSettings[3][1];
    SP.Parameters.ParamByName('@date_end').Value          := ActSettings[3][2];
    SP.Parameters.ParamByName('@set_addvagon').Value      := ActSettings[6][0];
    SP.Parameters.ParamByName('@set_exchange').Value      := ActSettings[6][1];
    SP.Parameters.ParamByName('@set_addsign').Value       := ActSettings[6][2];
    SP.Parameters.ParamByName('@set_copyreport').Value    := ActSettings[6][3];
    SP.Parameters.ParamByName('@set_routefromfact').Value := ActSettings[6][4];
    SP.Parameters.ParamByName('@set_ppfromfact').Value    := ActSettings[6][10];
    SP.Parameters.ParamByName('@set_kargofromfact').Value := ActSettings[6][5];
    SP.Parameters.ParamByName('@set_weightfromfact').Value:= ActSettings[6][6];
    SP.Parameters.ParamByName('@other_exchange_id').Value := ActSettings[6][7];
    SP.Parameters.ParamByName('@set_scorezftofromfactinc').Value:= ActSettings[6][8];
    SP.Parameters.ParamByName('@set_printcomment').Value  := ActSettings[6][9];
    SP.Parameters.ParamByName('@set_datedelivery').Value  := ActSettings[6][12];
    SP.Parameters.ParamByName('@str_hide_columns').Value  := ActSettings[10];
    SP.Parameters.ParamByName('@contract_agent_id').Value := ActSettings[9];
    SP.Parameters.ParamByName('@str_zfto_score_id').Value := ActSettings[15];
    SP.Parameters.ParamByName('@acts_comment').Value      := ActSettings[11];
    SP.Parameters.ParamByName('@parent_acts_id').Value    := iif(ActSettings[1][1] = -9, null, ActSettings[1][1]);

    SP.Parameters.ParamByName('@self_dir_id').Value            := ActSettings[13][0];
    SP.Parameters.ParamByName('@set_print_self_dir').Value     := ActSettings[13][2];
    SP.Parameters.ParamByName('@self_buh_id').Value            := ActSettings[13][3];
    SP.Parameters.ParamByName('@set_print_self_buh').Value     := ActSettings[13][5];
    SP.Parameters.ParamByName('@customer_dir_id').Value        := ActSettings[13][6];
    SP.Parameters.ParamByName('@set_print_customer_dir').Value := ActSettings[13][8];
    SP.Parameters.ParamByName('@customer_buh_id').Value        := ActSettings[13][9];
    SP.Parameters.ParamByName('@set_print_customer_buh').Value := ActSettings[13][11];

    SP.Parameters.ParamByName('@self_type_dir_id').Value       := ActSettings[14][0];
    SP.Parameters.ParamByName('@self_type_buh_id').Value       := ActSettings[14][3];
    SP.Parameters.ParamByName('@customer_type_dir_id').Value   := ActSettings[14][6];
    SP.Parameters.ParamByName('@customer_type_buh_id').Value   := ActSettings[14][9];

    try
      SP.ExecProc;
      ActSettings[1] := VarArrayOf([SP.Parameters.ParamByName('@acts_id').Value, ActSettings[1][1]]);
      // exWks.Range['AS1'].Value := SP.Parameters.ParamByName('@acts_id').Value;
      SP.Close;
    except
    end;

    SP.Free;
  end;

  // Вытащим акт
  Query := TADOQuery.Create(nil);
  Query.Connection := connect;
  Query.SQL.Add('SELECT TOP 1 acts_id, acts_cod, acts_date, acts_type_cod, new_users_owner FROM view_acts');
  Query.SQL.Add('CROSS APPLY (SELECT users_id as new_users_owner FROM users WHERE users_name = system_user) users');
  Query.SQL.Add('WHERE acts_id = ' + VarToStr(ActSettings[1][0]) + '');
  Query.Open;

  SP := TADOStoredProc.Create(nil);
  SP.Connection := connect;
  SP.ProcedureName := 'sp_acts_modify';
  SP.Parameters.Refresh;

  if not Query.Eof then begin
    // Добавляем в акт ШК и номер и сохраняем в базе
    BarCode.object_id := 88; // АКТЫ
    BarCode.date      := Query.FieldByName('acts_date').AsDateTime;
    BarCode.global_id := Query.FieldByName('acts_id').AsInteger;
    BarCode.user_id   := Query.FieldByName('new_users_owner').AsInteger;

    for i := 1 to exWks.Parent.Worksheets.Count do
      PrintBarCode2of5(BarCode, exWks.Parent.Worksheets[i], NULL);

    // Присвоим номер по месту нумерованной области
    if ActSettings[2] = NULL then ActSettings[2] := Query.FieldByName('acts_cod').AsString;
    exWks.Range['acts_cod'].Value := ReplaceStr(exWks.Range['acts_cod'].Value, '#NUM#', ActSettings[2]);
    // Добавим в примечание к первой строке Код шаблона
    exWks.Range['A1'].ClearComments;
    exWks.Range['A1'].AddComment('Шаблон = ' + Query.FieldByName('acts_type_cod').AsString);
    exWks.Range['A1'].Comment.Visible := False;

    tmp_path := ExtractFilePath(ParamStr(0)) + 'Temp\';

    // имя и расширение как у шаблона (set_new = True)
    file_name := CalcActsFileName(Query.FieldByName('acts_id').AsInteger, True, connect);
    tmp_path := tmp_path + file_name;
    exWks.Parent.SaveCopyAs(tmp_path);

    s := TStringStream.Create('');
    s.LoadFromFile(tmp_path);
    files_data := LZHPack(s.Bytes, s.Size);
    s1 := TStringStream.Create(files_data);

    // Сохранение акта
    SP.Parameters.ParamByName('@type_action').Value       := 1;
    SP.Parameters.ParamByName('@acts_id').Value           := ActSettings[1][0];
    SP.Parameters.ParamByName('@acts_cod').Value          := ActSettings[2];
    SP.Parameters.ParamByName('@acts_date').Value         := ActSettings[3][0];
    SP.Parameters.ParamByName('@acts_image').LoadFromStream(s1,ftBlob);
    SP.Parameters.ParamByName('@acts_file_name').Value    := file_name;
    SP.Parameters.ParamByName('@contract_id').Value       := ActSettings[8];
    SP.Parameters.ParamByName('@firm_self_id').Value      := ActSettings[12][0];
    SP.Parameters.ParamByName('@acts_comment').Value      := ActSettings[11];

    SP.Parameters.ParamByName('@self_director').Value         := ActSettings[4][0];
    SP.Parameters.ParamByName('@self_basis').Value            := ActSettings[4][1];
    SP.Parameters.ParamByName('@customer_director').Value     := ActSettings[5][0];
    SP.Parameters.ParamByName('@customer_basis').Value        := ActSettings[5][1];

    SP.Parameters.ParamByName('@self_director_eng').Value     := ActSettings[4][3];
    SP.Parameters.ParamByName('@self_basis_eng').Value        := ActSettings[4][4];
    SP.Parameters.ParamByName('@customer_director_eng').Value := ActSettings[5][3];
    SP.Parameters.ParamByName('@customer_basis_eng').Value    := ActSettings[5][4];

    SP.Parameters.ParamByName('@self_bank').Value             := ActSettings[4][6];
    SP.Parameters.ParamByName('@customer_bank').Value         := ActSettings[5][6];
    SP.Parameters.ParamByName('@base_addition').Value         := ActSettings[16];

    SP.Parameters.ParamByName('@parent_acts_id').Value    := iif(ActSettings[1][1] = -9, null, ActSettings[1][1]);
    SP.Parameters.ParamByName('@acts_sum').Value          := acts_sum;
    SP.Parameters.ParamByName('@acts_currency_id').Value  := ActSettings[7][0];
    SP.Parameters.ParamByName('@str_bargain_id').Value    := str_bargain_id;
    SP.Parameters.ParamByName('@set_addvagon').Value      := ActSettings[6][0];
    SP.Parameters.ParamByName('@set_exchange').Value      := ActSettings[6][1];
    SP.Parameters.ParamByName('@set_addsign').Value       := ActSettings[6][2];
    SP.Parameters.ParamByName('@set_copyreport').Value    := ActSettings[6][3];
    SP.Parameters.ParamByName('@set_routefromfact').Value := ActSettings[6][4];
    SP.Parameters.ParamByName('@set_ppfromfact').Value    := ActSettings[6][10];
    SP.Parameters.ParamByName('@set_kargofromfact').Value := ActSettings[6][5];
    SP.Parameters.ParamByName('@set_weightfromfact').Value:= ActSettings[6][6];
    SP.Parameters.ParamByName('@other_exchange_id').Value := ActSettings[6][7];
    SP.Parameters.ParamByName('@set_scorezftofromfactinc').Value:= ActSettings[6][8];
    SP.Parameters.ParamByName('@set_printcomment').Value  := ActSettings[6][9];
    SP.Parameters.ParamByName('@set_datedelivery').Value  := ActSettings[6][12];
    SP.Parameters.ParamByName('@str_hide_columns').Value  := ActSettings[10];
    SP.Parameters.ParamByName('@contract_agent_id').Value := ActSettings[9];
    SP.Parameters.ParamByName('@str_zfto_score_id').Value := ActSettings[15];

    SP.Parameters.ParamByName('@self_dir_id').Value            := ActSettings[13][0];
    SP.Parameters.ParamByName('@set_print_self_dir').Value     := ActSettings[13][2];
    SP.Parameters.ParamByName('@self_buh_id').Value            := ActSettings[13][3];
    SP.Parameters.ParamByName('@set_print_self_buh').Value     := ActSettings[13][5];
    SP.Parameters.ParamByName('@customer_dir_id').Value        := ActSettings[13][6];
    SP.Parameters.ParamByName('@set_print_customer_dir').Value := ActSettings[13][8];
    SP.Parameters.ParamByName('@customer_buh_id').Value        := ActSettings[13][9];
    SP.Parameters.ParamByName('@set_print_customer_buh').Value := ActSettings[13][11];

    SP.Parameters.ParamByName('@self_type_dir_id').Value       := ActSettings[14][0];
    SP.Parameters.ParamByName('@self_type_buh_id').Value       := ActSettings[14][3];
    SP.Parameters.ParamByName('@customer_type_dir_id').Value   := ActSettings[14][6];
    SP.Parameters.ParamByName('@customer_type_buh_id').Value   := ActSettings[14][9];

    try
      if LisCheck1(connect.ConnectionString) then
        SP.ExecProc;
      SP.Close;
    except
    end;

    s1.Free;
    s.Free;

    exWks.Application.Visible := True;
  end else begin
    exWks.Range['acts_cod'].Value := ReplaceStr(exWks.Range['acts_cod'].Value, '#NUM#', 'б/н');

    exWks.Application.Visible := True;
  end;

  Query.Free;
  SP.Free;
end;

procedure AutoFitMergeCell(cell: variant; default_width: double = 0);
var
  MergeArea : variant;
  allwidth  : Double;
  width1    : Double;
  allheight : Double;
  height1   : Double;
  new_height: Double;
  i         : integer;
begin
  MergeArea := cell.MergeArea;
  // Считаем ширину и высоту столбцов и первого столбца
  width1 := MergeArea.Columns[1].ColumnWidth;
  allwidth := 0;
  for i := 1 to MergeArea.Columns.Count do
    allwidth := allwidth + MergeArea.Columns[i].ColumnWidth;
  if allwidth > 255 then allwidth := 255;

  height1 := MergeArea.Rows[1].RowHeight;
  allheight := 0;
  for i := 1 to MergeArea.Rows.Count do
    allheight := allheight + MergeArea.Rows[i].RowHeight;

  // Высталяем нужную ширину 1-го столюца
  if default_width <> 0 then
    MergeArea.Columns[1].ColumnWidth := default_width
  else
    MergeArea.Columns[1].ColumnWidth := allwidth;
  // Автоподбор по высоте
  MergeArea.UnMerge;
  MergeArea.WrapText := True;
  MergeArea.Rows.AutoFit;
  MergeArea.Merge;

  // выставляем нужную ширину первого столбца
  MergeArea.Columns[1].ColumnWidth := width1;

  // если строк больше 1, то равномерно распределим среди строк увеличение
  if MergeArea.Rows.Count > 1 then begin
    new_height := MergeArea.Rows[1].RowHeight;
    // восстановим первую строку
    MergeArea.Rows[1].RowHeight := height1;
    // если все строки вместе больше
    if new_height > allheight then begin
      new_height := (new_height - allheight) / MergeArea.Rows.Count;
      for i := 1 to MergeArea.Rows.Count do
        MergeArea.Rows[i].RowHeight := new_height + MergeArea.Rows[i].RowHeight;
    end;
  end;
end;

//procedure AutoFitMergeCell (cell : variant);
//var
//  MergeArea : variant;
//  allwidth  : Double;
//  width1    : Double;
//  allheight : Double;
//  height1   : Double;
//  new_height: Double;
//  i         : integer;
//begin
//  MergeArea := cell.MergeArea;
//  // Считаем ширину и высоту столбцов и первого столбца
//  width1 := MergeArea.Columns[1].ColumnWidth;
//  allwidth := width1;
//  for i := 2 to MergeArea.Columns.Count do
//    allwidth := allwidth + 0.71 + MergeArea.Columns[i].ColumnWidth;
//  if allwidth > 255 then allwidth := 255;
//
//  height1 := MergeArea.Rows[1].RowHeight;
//  allheight := 0;
//  for i := 1 to MergeArea.Rows.Count do
//    allheight := allheight + MergeArea.Rows[i].RowHeight;
//
//  // Высталяем нужную ширину 1-го столюца
//  MergeArea.Columns[1].ColumnWidth := allwidth;
//  // Автоподбор по высоте
//  MergeArea.UnMerge;
//  MergeArea.WrapText := True;
//  MergeArea.Rows.AutoFit;
//  MergeArea.Merge;
//
//  // выставляем нужную ширину первого столбца
//  MergeArea.Columns[1].ColumnWidth := width1;
//
//  // если строк больше 1, то равномерно распределим среди строк увеличение
//  if MergeArea.Rows.Count > 1 then begin
//    new_height := MergeArea.Rows[1].RowHeight;
//    // восстановим первую строку
//    MergeArea.Rows[1].RowHeight := height1;
//    // если все строки вместе больше
//    if new_height > allheight then begin
//      new_height := (new_height - allheight) / MergeArea.Rows.Count;
//      for i := 1 to MergeArea.Rows.Count do
//        MergeArea.Rows[i].RowHeight := new_height + MergeArea.Rows[i].RowHeight;
//    end;
//  end;
//end;


procedure PrintReportAgent_RMProcissing(str_bargain_id: string; d1: TDateTime; d2: TDateTime; shablon_cod: integer; conn: TADOConnection; usr_pwd: PUser_pwd);
var            exApp, exWkb, exWks : Variant;
                         Query_tmp : TADOQuery;
                                SP : TADOStoredProc;
bargain_id, cnt_bargain_id, i, row : integer;
    Fdate1, Fdate2, exchange_date  : TDateTime;
                      Fcurrency_id : integer;
                           str_sum : string;
                         row_begin : integer;
                           sum_nds : currency;
                           BarCode : TmyBarCode;
 sum_act, sum_act_nds, sum_act_all : Currency;
                   set_sum_correct : boolean;
                     str_expeditor : array [1..2] of string;
begin
  Query_tmp := TADOQuery.Create(nil);
  Query_tmp.Connection := conn;
  Query_tmp.SQL.Add('SELECT * FROM view_contract WHERE contract_id = (SELECT TOP 1 contract_id FROM bargain WHERE bargain_id in (' + str_bargain_id + '))');
  Query_tmp.Open;
  str_expeditor[1] := Query_tmp.FieldByName('type_firm_self_name').AsString;
  str_expeditor[2] := Query_tmp.FieldByName('type_firm_customer_name').AsString;
  Fcurrency_id := Query_tmp.FieldByName('currency_id').AsInteger;

  if (str_expeditor[1] = '') or (str_expeditor[2] = '') then begin
    Application.MessageBox('Для формирования актов необходимо выбрать в настройках договора' + #10 +
                           'тип взаимоотношений между собственной организацией и организацией клиентом',
                           'Внимание! Акт не может быть сформирован',
                           MB_ICONEXCLAMATION or MB_OK);
    exit;
  end;

  fmPeriod := TfmPeriod.Create(Application, d1, d2, 2);
  case Query_tmp.FieldByName('currency_id').AsInteger of
      1 : fmPeriod.cxComboBox1.ItemIndex := 0;
    0,3 : fmPeriod.cxComboBox1.ItemIndex := 1;
      6 : fmPeriod.cxComboBox1.ItemIndex := 2;
      5 : fmPeriod.cxComboBox1.ItemIndex := 3;
  end;
  if fmPeriod.ShowModal=mrOK then begin
    Fdate1 := fmPeriod._GetMonthBegin;
    Fdate2 := fmPeriod._GetMonthEnd;
  end else exit;

  // -----------------------------------
  Screen.Cursor := crHourglass;
  ShowTextMessage('Формирование отчёта...', False);

  ShowTextMessage('Запуск Excel...', False);
  exApp := CreateOleObject('Excel.Application');
  exWkb := exApp.Workbooks.Add(GetDocBlob(conn, shablon_cod));
  exWkb := exApp.ActiveWorkbook;
  exWks := exWkb.WorkSheets[1];
 // exApp.Visible := True;

  exWks.Range[ 'A2'].Value := 'ОТЧЕТ ' + AnsiUpperCase(ReplaceStr(str_expeditor[1] + 'а', 'ьа', 'я')) + ' №1' + #10 +
                              'за период с ' + FormatDateTime('dd.mm.yyyy', Fdate1) + 'г. по ' + FormatDateTime('dd.mm.yyyy', Fdate2) + 'г.' +
                              'по договору №' + Query_tmp.FieldByName('contract_cod').AsString + ' от ' + LowerCase(FormatDateTime('dd mmmm yyyy',Query_tmp.FieldByName('date_begin').AsDateTime)) + 'г.';
  exWks.Range[ 'B5'].Value := Query_tmp.FieldByName('firm_self_name_short').AsString + ' - ' + str_expeditor[1];
  exWks.Range[ 'B6'].Value := Query_tmp.FieldByName('firm_customer_name_short').AsString + ' - ' + str_expeditor[2];
  exWks.Range[ 'M4'].Value := FormatDateTime('dd.mm.yyyy', Fdate2);
  exWks.Range['B21'].Value := 'Настоящий отчет составлен в двух экземплярах для каждой из Сторон и является неотъемлемой частью агентского договора №' + Query_tmp.FieldByName('contract_cod').AsString + ' от ' + FormatDateTime('dd.mm.yyyy',Query_tmp.FieldByName('date_begin').AsDateTime) + ' года';
  exWks.Range['B26'].Value := 'От ' + Query_tmp.FieldByName('firm_self_name_short').AsString;
  exWks.Range['I26'].Value := 'От ' + Query_tmp.FieldByName('firm_customer_name_short').AsString;

  SP := TADOStoredProc.Create(nil);
  SP.Connection := conn;
  SP.ProcedureName := 'sp_Report_rm_processing;1';
  SP.Parameters.Refresh;
  SP.Parameters.ParamByName('@str_bargain_id').Value := str_bargain_id;
  SP.Open;

  cnt_bargain_id := SP.FieldByName('cnt_bargain_id').AsInteger;
  if cnt_bargain_id > 1 then begin
    exWks.Rows[IntToStr(13) + ':' + IntToStr(15)].Copy;
    exWks.Rows[IntToStr(17)].PasteSpecial(1);
    for i := 1 to cnt_bargain_id - 1 do begin
      exWks.Rows[IntToStr(17) + ':' + IntToStr(25)].Insert;
      exWks.Rows[IntToStr( 8) + ':' + IntToStr(16)].Copy;
      exWks.Rows[IntToStr(17)].PasteSpecial(1);
    end;


    str_sum := '';
    for i := 0 to cnt_bargain_id - 1 do begin
      if Length(str_sum) = 0 then
        str_sum := '=R[' + IntToStr((-9)*i - 4) + ']C'
      else
        str_sum := str_sum + '+R[' + IntToStr((-9)*i - 4) + ']C';
    end;

    set_sum_correct := True;
    try
      exWks.Range['N'+IntToStr(13 + 4 + 9*(cnt_bargain_id - 1))].Value := str_sum;
      exWks.Range['N'+IntToStr(14 + 4 + 9*(cnt_bargain_id - 1))].Value := str_sum;
      exWks.Range['N'+IntToStr(15 + 4 + 9*(cnt_bargain_id - 1))].Value := str_sum;
    except
      set_sum_correct := False;
    end;

    exWks.Range['L'+IntToStr(13 + 4 + 9*(cnt_bargain_id - 1))].Value := 'Итого по акту без НДС = ';
    exWks.Range['L'+IntToStr(14 + 4 + 9*(cnt_bargain_id - 1))].Value := 'НДС = ';
    exWks.Range['L'+IntToStr(15 + 4 + 9*(cnt_bargain_id - 1))].Value := 'Итого по акту с НДС = ';
  end;


  bargain_id := SP.FieldByName('bargain_id').AsInteger;
  sum_nds := SP.FieldByName('sum_nds').AsFloat;
  row := 11;
  row_begin := 11;
  sum_act := 0;
  sum_act_nds := 0;
  sum_act_all := 0;

  while not SP.Eof do begin
    if bargain_id <> SP.FieldByName('bargain_id').AsInteger then begin
      exWks.Rows[IntToStr(row)].Delete;
      exWks.Rows[IntToStr(row)].Delete;

      if shablon_cod = 61 then begin
        exWks.Range['N' + IntToStr(row    )].Value := '=SUM(R[-1]C:R[-' + IntToStr(row-row_begin) + ']C)';
        exWks.Range['N' + IntToStr(row + 1)].Value := sum_nds;
        exWks.Range['N' + IntToStr(row + 2)].Value := '=SUM(R[-1]C:R[-2]C)';
      end else begin
        if SP.FieldByName('bargain_nds_cod').AsString <> '18' then
          exWks.Range['N' + IntToStr(row + 1)].Value := 0;
      end;

      sum_act     := sum_act     + exWks.Range['N' + IntToStr(row    )].Value;
      sum_act_nds := sum_act_nds + exWks.Range['N' + IntToStr(row + 1)].Value;
      sum_act_all := sum_act_all + exWks.Range['N' + IntToStr(row + 2)].Value;

      row := row + 9 - 2;
      bargain_id := SP.FieldByName('bargain_id').AsInteger;
      sum_nds    := SP.FieldByName('sum_nds').AsFloat;
      row_begin  := row;
    end;

    exWks.Rows[IntToStr(row + 1)].Insert;
    exWks.Rows[IntToStr(row + 0)].Copy;
    exWks.Rows[IntToStr(row + 1)].PasteSpecial(1);

    exWks.Range['B' + IntToStr(row)].Value := SP.FieldByName('date_period').AsDateTime;
    exWks.Range['C' + IntToStr(row)].Value := SP.FieldByName('node_begin_name').AsString;
    exWks.Range['D' + IntToStr(row)].Value := SP.FieldByName('road_begin_name').AsString;
    exWks.Range['E' + IntToStr(row)].Value := SP.FieldByName('node_end_name').AsString;
    exWks.Range['F' + IntToStr(row)].Value := SP.FieldByName('road_end_name').AsString;
    exWks.Range['G' + IntToStr(row)].Value := SP.FieldByName('kargoETSNG_name').AsString;
    exWks.Range['H' + IntToStr(row)].Value := SP.FieldByName('date_from_to').AsDateTime;
    exWks.Range['I' + IntToStr(row)].Value := SP.FieldByName('num_document').AsString;
    exWks.Range['J' + IntToStr(row)].Value := SP.FieldByName('num_vagon').AsString;
    exWks.Range['K' + IntToStr(row)].Value := SP.FieldByName('fact_weight').AsFloat;
    exWks.Range['L' + IntToStr(row)].Value := SP.FieldByName('client_weight').AsFloat;
    exWks.Range['M' + IntToStr(row)].Value := SP.FieldByName('client_rate').AsFloat;

    row := row + 1;

    ShowTextMessage('Осталось вагонов ' + IntToStr(SP.RecordCount - SP.RecNo), False);
    SP.Next;
  end;

  exWks.Rows[IntToStr(row)].Delete;
  exWks.Rows[IntToStr(row)].Delete;

  if shablon_cod = 61 then begin
    exWks.Range['N' + IntToStr(row    )].Value := '=SUM(R[-1]C:R[-' + IntToStr(row-row_begin) + ']C)';
    exWks.Range['N' + IntToStr(row + 1)].Value := sum_nds;
    exWks.Range['N' + IntToStr(row + 2)].Value := '=SUM(R[-1]C:R[-2]C)';
  end else begin
    if SP.FieldByName('bargain_nds_cod').AsString <> '18' then
      exWks.Range['N' + IntToStr(row + 1)].Value := 0;
  end;

  sum_act     := sum_act     + exWks.Range['N' + IntToStr(row    )].Value;
  sum_act_nds := sum_act_nds + exWks.Range['N' + IntToStr(row + 1)].Value;
  sum_act_all := sum_act_all + exWks.Range['N' + IntToStr(row + 2)].Value;

  if (set_sum_correct = False) AND (cnt_bargain_id > 1) then begin
    exWks.Range['N' + IntToStr(row + 4)].Value := sum_act;
    exWks.Range['N' + IntToStr(row + 5)].Value := sum_act_nds;
    exWks.Range['N' + IntToStr(row + 6)].Value := sum_act_all;
  end;

  // Добавляем в ШК
  BarCode.object_id := 0;
  BarCode.date      := Date;
  BarCode.global_id := 0;
  BarCode.user_id   := usr_pwd.users_id;

  PrintBarCode2of5(BarCode, exWks, NULL);


  SP.Free;
  exWks.Range['A1'].Select;
  exApp.CutCopyMode := False;

  Screen.Cursor := crDefault;
  ShowTextMessage('', True);
  exApp.Visible := True;
  VarClear(exWks); VarClear(exWkb); VarClear(exApp);
end;


procedure PrintReportAgent_Gurevskii(contract_id: integer; d1: TDateTime; d2: TDateTime; conn: TADOConnection; usr_pwd: PUser_pwd);
var            exApp, exWkb, exWks : Variant;
                         Query_tmp : TADOQuery;
                                SP : TADOStoredProc;
bargain_id, cnt_bargain_id, i, row : integer;
    Fdate1, Fdate2, exchange_date  : TDateTime;
                      Fcurrency_id : integer;
                           str_sum : string;
                         row_begin : integer;
                           sum_nds : currency;
                           BarCode : TmyBarCode;
begin
  Query_tmp := TADOQuery.Create(nil);
  Query_tmp.Connection := conn;
  Query_tmp.SQL.Add('SELECT * FROM view_contract WHERE contract_id = ' + IntToStr(contract_id));
  Query_tmp.Open;
  Fcurrency_id := Query_tmp.FieldByName('currency_id').AsInteger;

  fmPeriod := TfmPeriod.Create(Application, d1, d2, 2);
  case Query_tmp.FieldByName('currency_id').AsInteger of
      1 : fmPeriod.cxComboBox1.ItemIndex := 0;
    0,3 : fmPeriod.cxComboBox1.ItemIndex := 1;
      6 : fmPeriod.cxComboBox1.ItemIndex := 2;
      5 : fmPeriod.cxComboBox1.ItemIndex := 3;
  end;
  if fmPeriod.ShowModal=mrOK then begin
    Fdate1 := fmPeriod._GetMonthBegin;
    Fdate2 := fmPeriod._GetMonthEnd;
  end else exit;

  // -----------------------------------
  Screen.Cursor := crHourglass;
  ShowTextMessage('Формирование отчёта...', False);

  ShowTextMessage('Запуск Excel...', False);
  exApp := CreateOleObject('Excel.Application');
  exWkb := exApp.Workbooks.Add(GetDocBlob(conn, 73));
  exWkb := exApp.ActiveWorkbook;
  exWks := exWkb.WorkSheets[1];
 // exApp.Visible := True;

  exWks.Range[ 'B2'].Value := 'ОТЧЕТ АГЕНТА к АКТУ ОКАЗАННЫХ УСЛУГ и СВЕРКИ ВЗАИМОРАСЧЕТОВ № ' + #10 +
                              'за период с ' + FormatDateTime('dd.mm.yyyy', Fdate1) + 'г. по ' + FormatDateTime('dd.mm.yyyy', Fdate2) + 'г. ' +
                              'по агентскому договору №' + Query_tmp.FieldByName('contract_cod').AsString + ' от ' + LowerCase(FormatDateTime('dd mmmm yyyy',Query_tmp.FieldByName('date_begin').AsDateTime)) + 'г.';
  exWks.Range[ 'B5'].Value := Query_tmp.FieldByName('firm_self_name_short').AsString + ' - Агент';
  exWks.Range[ 'B6'].Value := Query_tmp.FieldByName('firm_customer_name_short').AsString + ' - Клиент';
  exWks.Range[ 'N4'].Value := FormatDateTime('dd.mm.yyyy', Fdate2);
  exWks.Range['B21'].Value := 'Настоящий отчет составлен в двух экземплярах для каждой из Сторон и является неотъемлемой частью агентского договора №' + Query_tmp.FieldByName('contract_cod').AsString + ' от ' + FormatDateTime('dd.mm.yyyy',Query_tmp.FieldByName('date_begin').AsDateTime) + ' года';
  exWks.Range['B26'].Value := 'От ' + Query_tmp.FieldByName('firm_self_name_short').AsString;
  exWks.Range['I26'].Value := 'От ' + Query_tmp.FieldByName('firm_customer_name_short').AsString;

  SP := TADOStoredProc.Create(nil);
  SP.Connection := conn;
  SP.ProcedureName := 'sp_Report_gurevskii;1';
  SP.Parameters.Refresh;
  SP.Parameters.ParamByName('@contract_id').Value := contract_id;
  SP.Parameters.ParamByName('@date_begin').Value := StrToDate(FormatDateTime('dd'+ FormatSettings.DateSeparator +'mm'+ FormatSettings.DateSeparator +'yyyy', Fdate1));
  SP.Parameters.ParamByName('@date_end').Value := StrToDate(FormatDateTime('dd'+ FormatSettings.DateSeparator +'mm'+ FormatSettings.DateSeparator +'yyyy', Fdate2));
  SP.Open;

  cnt_bargain_id := SP.FieldByName('cnt_bargain_id').AsInteger;
  if cnt_bargain_id > 1 then begin
    exWks.Rows[IntToStr(13) + ':' + IntToStr(15)].Copy;
    exWks.Rows[IntToStr(17)].PasteSpecial(1);
    for i := 1 to cnt_bargain_id - 1 do begin
      exWks.Rows[IntToStr(17) + ':' + IntToStr(25)].Insert;
      exWks.Rows[IntToStr( 8) + ':' + IntToStr(16)].Copy;
      exWks.Rows[IntToStr(17)].PasteSpecial(1);
    end;


    str_sum := '';
    for i := 0 to cnt_bargain_id - 1 do begin
      if Length(str_sum) = 0 then
        str_sum := '=R[' + IntToStr((-9)*i - 4) + ']C'
      else
        str_sum := str_sum + '+R[' + IntToStr((-9)*i - 4) + ']C';
    end;

    exWks.Range['M'+IntToStr(13 + 4 + 9*(cnt_bargain_id - 1))].Value := str_sum;
    exWks.Range['M'+IntToStr(14 + 4 + 9*(cnt_bargain_id - 1))].Value := str_sum;
    exWks.Range['M'+IntToStr(15 + 4 + 9*(cnt_bargain_id - 1))].Value := str_sum;
    exWks.Range['N'+IntToStr(13 + 4 + 9*(cnt_bargain_id - 1))].Value := str_sum;
    exWks.Range['N'+IntToStr(14 + 4 + 9*(cnt_bargain_id - 1))].Value := str_sum;
    exWks.Range['N'+IntToStr(15 + 4 + 9*(cnt_bargain_id - 1))].Value := str_sum;

    exWks.Range['K'+IntToStr(13 + 4 + 9*(cnt_bargain_id - 1))].Value := 'Итого по акту без НДС = ';
    exWks.Range['K'+IntToStr(14 + 4 + 9*(cnt_bargain_id - 1))].Value := 'НДС 0% = ';
    exWks.Range['K'+IntToStr(15 + 4 + 9*(cnt_bargain_id - 1))].Value := 'Итого по акту с НДС = ';
  end;


  bargain_id := SP.FieldByName('bargain_id').AsInteger;
  sum_nds := SP.FieldByName('sum_nds').AsFloat;
  row := 11;
  row_begin := 11;
  while not SP.Eof do begin
    if bargain_id <> SP.FieldByName('bargain_id').AsInteger then begin
      exWks.Rows[IntToStr(row)].Delete;
      exWks.Rows[IntToStr(row)].Delete;
      exWks.Range['M' + IntToStr(row    )].Value := '=SUM(R[-1]C:R[-' + IntToStr(row-row_begin) + ']C)';
      exWks.Range['N' + IntToStr(row    )].Value := '=SUM(R[-1]C:R[-' + IntToStr(row-row_begin) + ']C)';
      exWks.Range['N' + IntToStr(row + 1)].Value := sum_nds;
      row := row + 9 - 2;
      bargain_id := SP.FieldByName('bargain_id').AsInteger;
      sum_nds    := SP.FieldByName('sum_nds').AsFloat;
      row_begin  := row;
    end;

    exWks.Rows[IntToStr(row + 2)].Insert;
    exWks.Rows[IntToStr(row + 1)].Copy;
    exWks.Rows[IntToStr(row + 2)].PasteSpecial(1);

    exWks.Range['B' + IntToStr(row)].Value := SP.FieldByName('date_period').AsDateTime;
    exWks.Range['C' + IntToStr(row)].Value := SP.FieldByName('node_begin_name').AsString;
    exWks.Range['D' + IntToStr(row)].Value := SP.FieldByName('road_begin_name').AsString;
    exWks.Range['E' + IntToStr(row)].Value := SP.FieldByName('node_end_name').AsString;
    exWks.Range['F' + IntToStr(row)].Value := SP.FieldByName('road_end_name').AsString;
    exWks.Range['G' + IntToStr(row)].Value := SP.FieldByName('kargoETSNG_name').AsString;
    exWks.Range['H' + IntToStr(row)].Value := SP.FieldByName('date_from_to').AsDateTime;
    exWks.Range['I' + IntToStr(row)].Value := SP.FieldByName('num_document').AsString;
    exWks.Range['J' + IntToStr(row)].Value := SP.FieldByName('num_vagon').AsString;
    exWks.Range['K' + IntToStr(row)].Value := SP.FieldByName('client_weight').AsFloat;
    exWks.Range['L' + IntToStr(row)].Value := SP.FieldByName('client_rate').AsFloat;

    row := row + 1;

    ShowTextMessage('Осталось вагонов ' + IntToStr(SP.RecordCount - SP.RecNo), False);
    SP.Next;
  end;

  exWks.Rows[IntToStr(row)].Delete;
  exWks.Rows[IntToStr(row)].Delete;
  exWks.Range['M' + IntToStr(row    )].Value := '=SUM(R[-1]C:R[-' + IntToStr(row-row_begin) + ']C)';
  exWks.Range['N' + IntToStr(row    )].Value := '=SUM(R[-1]C:R[-' + IntToStr(row-row_begin) + ']C)';
  exWks.Range['N' + IntToStr(row + 1)].Value := sum_nds;


  // Добавляем в ШК
  BarCode.object_id := 0;
  BarCode.date      := Date;
  BarCode.global_id := 0;
  BarCode.user_id   := usr_pwd.users_id;

  PrintBarCode2of5(BarCode, exWks, NULL);

  SP.Free;
  exWks.Range['A1'].Select;
  exApp.CutCopyMode := False;

  Screen.Cursor := crDefault;
  ShowTextMessage('', True);
  exApp.Visible := True;
  VarClear(exWks); VarClear(exWkb); VarClear(exApp);
end;

procedure PrintReportExpeditor_RusCoal(BargainList: TStringList; without_shaping_id: string; conn: TADOConnection);
var str_formula, s                  : string;
    i, j, m, sub_cnt, fact_cnt, column_agent, c     : integer;
    Fkont                           : boolean;
    _currency_val                   : double;
    Q_Agree, Q_orders, Q            : TADOQuery;
    exApp, exWkb, exWks, exWks1, exWkb1             : variant;
    SP_FrahtCard                    : TAdoStoredProc;
    SP_FactCalcAdd                  : TAdoStoredProc;
    exchange_val                    : double;
    exchange_val_type               : string;
    str_border                      : string;
    barcode                         : TmyBarCode;
begin
  Screen.Cursor := crHourglass;
  ShowTextMessage('Запуск сервера автоматизации...', False);

  exApp := CreateOleObject('Excel.Application');
  exWkb1 := exApp.Workbooks.Add(GetDocBlob(conn, 74)); // 'Отчет Экспедитора с С/Ф'
  exWks1 := exApp.ActiveWorkbook.WorkSheets[1];
  exWkb := exApp.Workbooks.Add;
 //exApp.Visible := True;

  Q_Agree := TADOQuery.Create(nil);
  Q_Agree.Connection := conn;

  SP_FrahtCard := TADOStoredProc.Create(nil);
  SP_FrahtCard.Connection := conn;
  SP_FrahtCard.ProcedureName := 'sp_fact_by_rate_GET;1';
  SP_FrahtCard.Parameters.Refresh;

  SP_FactCalcAdd := TADOStoredProc.Create(nil);
  SP_FactCalcAdd.Connection := conn;
  SP_FactCalcAdd.ProcedureName := 'sp_fact_CALC_add;1';
  SP_FactCalcAdd.Parameters.Refresh;

  for j:=0 to BargainList.Count - 1 do begin { перебор номеров фрахтовых карточек}
    column_agent := 6;

    Q_Agree.Close;
    Q_Agree.SQL.Clear;
    Q_Agree.SQL.Add('SELECT * FROM view_bargain WHERE (bargain_id = '+BargainList[j]+')');   //    (invoice_id IS NOT NULL) AND
    Q_Agree.Open;
    if Q_Agree.RecordCount = 0 then Continue; // отмена печати карточки, если нет invoice_id

    exWks := exWkb.Sheets.Add;
    exWks.Name := BargainList[j];
    exWks1.Rows['1:30'].Copy;
    exWks.Rows['1:30'].PasteSpecial(1);
    ShowTextMessage('Идет формирование отчета экпедитора : '+IntToStr(j+1)+' из '+IntToStr(BargainList.Count)+#13#10+ 'Подождите пожалуйста...', False);

    SP_FrahtCard.Close;
    SP_FrahtCard.Parameters.ParamByName('@bargain_id').Value := BargainList[j];
    SP_FrahtCard.Parameters.ParamByName('@shaping_id').Value := without_shaping_id; // устанавливаем, какого подрядчика исключить из печати карточки
    SP_FrahtCard.Open;

  if Q_Agree['our_rate_vid_send']=1 then Fkont := True;

  if Fkont then begin
    exWks.Columns[6].EntireColumn.Hidden := True;
    exWks.Columns[7].ColumnWidth := 0.08;
    exWks.Columns[11].ColumnWidth := 0.08;
    exWks.Columns[4].ColumnWidth := 13;

    exWks.Range['E6'].Value := 'Контейнер';
  end;
  exWks.Range['B2'].Value := 'ОТЧЕТ ЭКСПЕДИТОРА К СЧЕТ-ФАКТУРЕ №';
  exWks.Range['E3'].Value := Q_Agree.FieldByName('kargoETSNG_name').AsString + ' (ЕТСНГ '+Q_Agree.FieldByName('kargoETSNG_cod').AsString+')';
  exWks.Range['E4'].Value := Q_Agree.FieldByName('firm_customer_name_short').AsString;
  exWks.Range['G6'].Value := Q_Agree.FieldByName('firm_customer_name_short').AsString;
  exWks.Range['E5'].Value := Q_Agree.FieldByName('node_begin_name').AsString + ' - ' + Q_Agree.FieldByName('node_end_name').AsString + ' ('+Q_Agree.FieldByName('vid_transfer_name').AsString+', ';

  if Q_Agree.FieldByName('bargain_nds_cod').IsNull then
    exWks.Range['E5'].Value := exWks.Range['D5'].Value + 'Без НДС)'
  else
    if Q_Agree.FieldByName('bargain_nds_cod').AsString = '0' then
      exWks.Range['E5'].Value := exWks.Range['D5'].Value + 'НДС - 0%)'
    else
      exWks.Range['E5'].Value := exWks.Range['D5'].Value + 'НДС - 18%)';

  if not Q_Agree.FieldByName('custom_id').IsNull then  exWks.Range['E5'].Value := exWks.Range['E5'].Value + ' (Таможня - '+Q_Agree.FieldByName('custom_name').AsString+')';


// ----------- факт ----------------
  fact_cnt := SP_FrahtCard.RecordCount;
  while not SP_FrahtCard.Eof do begin
    exWks.Range['A'+IntToStr(7+SP_FrahtCard.RecNo)].Value := SP_FrahtCard.FieldByName('type_kontener_name').AsString + '\'+ SP_FrahtCard.FieldByName('attr_self_name').AsString;
    if SP_FrahtCard['date_from_to'] <> NULL then exWks.Range['B'+IntToStr(7+SP_FrahtCard.RecNo)].Value := FormatDateTime('dd.mm.yy', SP_FrahtCard.FieldByName('date_from_to').AsDateTime);
    if SP_FrahtCard['datpr'] <> NULL then exWks.Range['C'+IntToStr(7+SP_FrahtCard.RecNo)].Value := FormatDateTime('dd.mm.yy', SP_FrahtCard.FieldByName('datpr').AsDateTime);

    if Fkont then exWks.Range['D'+IntToStr(7+SP_FrahtCard.RecNo)].Value := SP_FrahtCard.FieldByName('num_konten').AsString
    else exWks.Range['D'+IntToStr(7+SP_FrahtCard.RecNo)].Value := SP_FrahtCard.FieldByName('num_vagon').AsString;
    exWks.Range['E'+IntToStr(7+SP_FrahtCard.RecNo)].Value := SP_FrahtCard.FieldByName('num_document').AsString;


    if Q_Agree['our_rate_vid_send'] = 3 then begin
      exWks.Range['G'+IntToStr(7)].Value := 'Дни';
      exWks.Range['G'+IntToStr(7+SP_FrahtCard.RecNo)].Value := StrToFloat(FormatFloat('0', SP_FrahtCard.FieldByName('client_weight').AsFloat));
    end else
      exWks.Range['G'+IntToStr(7+SP_FrahtCard.RecNo)].Value := StrToFloat(FormatFloat('0.000', SP_FrahtCard.FieldByName('client_weight').AsFloat));

    exWks.Range['F'+IntToStr(7+SP_FrahtCard.RecNo)].Value := StrToFloat(FormatFloat('0.000', SP_FrahtCard.FieldByName('fact_weight').AsFloat));
    exWks.Range['H'+IntToStr(7+SP_FrahtCard.RecNo)].Value := StrToFloat(FormatFloat('0.00', SP_FrahtCard.FieldByName('client_rate').AsFloat));
    if SP_FrahtCard.FieldByName('client_add').AsFloat <> 0 then exWks.Range['I'+IntToStr(7+SP_FrahtCard.RecNo)].Value := StrToFloat(FormatFloat('0.00', SP_FrahtCard.FieldByName('client_add').AsFloat));

    if Q_Agree.FieldByName('round_sum').AsBoolean then
      if (Q_Agree.FieldByName('ed_izm_cod').AsString = '000')
        or (Q_Agree.FieldByName('ed_izm_cod').AsString = '004') then  exWks.Range['J'+IntToStr(7+SP_FrahtCard.RecNo)].Value := '=ROUNDUP(RC[-3]*RC[-2]+RC[-1], 0)'
      else exWks.Range['J'+IntToStr(7+SP_FrahtCard.RecNo)].Value := '=ROUNDUP(RC[-2]+RC[-1], 0)'
    else
      if (Q_Agree.FieldByName('ed_izm_cod').AsString = '000')
        or (Q_Agree.FieldByName('ed_izm_cod').AsString = '004') then  exWks.Range['J'+IntToStr(7+SP_FrahtCard.RecNo)].Value := '=ROUND(RC[-3]*RC[-2]+RC[-1], 2)'
      else exWks.Range['J'+IntToStr(7+SP_FrahtCard.RecNo)].Value := '=ROUND(RC[-2]+RC[-1], 2)';

    SP_FrahtCard.Next;
    ShowTextMessage('Идет вывод отчета экспедитора: '+IntToStr(j+1)+' из '+IntToStr(BargainList.Count)+#13#10+ 'Осталось вагонов ' +IntToStr(SP_FrahtCard.RecordCount - SP_FrahtCard.RecNo )+'. Подождите пожалуйста...', False);
    if not SP_FrahtCard.Eof then exWks.Rows[IntToStr(7+SP_FrahtCard.RecNo)].Insert;
  end;

   if fact_cnt = 0 then fact_cnt := 1;
  //------- валюта клиента -----------------
  if Q_Agree.FieldByName('exchange_USD_val').IsNull then begin // средний курс
    case Q_Agree.FieldByName('currency_id').AsInteger of
      1 : _currency_val := 1; //USD/USD
      3 : _currency_val := 1 / GetExchangeNew(1, Q_Agree.FieldByName('date_period').AsDateTime, conn);
      5 : _currency_val := GetExchangeNew(5, Q_Agree.FieldByName('date_period').AsDateTime, conn) / GetExchangeNew(1, Q_Agree.FieldByName('date_period').AsDateTime, conn);
      6 : _currency_val := GetExchangeNew(6, Q_Agree.FieldByName('date_period').AsDateTime, conn) / GetExchangeNew(1, Q_Agree.FieldByName('date_period').AsDateTime, conn);
    end;
  end else begin // Курсы пробиты в перевозке
    case Q_Agree.FieldByName('currency_id').AsInteger of
      1 : _currency_val := 1;
      3 : _currency_val := 1 / Q_Agree.FieldByName('exchange_USD_val').AsFloat;
      5 : _currency_val := Q_Agree.FieldByName('exchange_CHF_val').AsFloat / Q_Agree.FieldByName('exchange_USD_val').AsFloat;
      6 : _currency_val := Q_Agree.FieldByName('exchange_EUR_val').AsFloat / Q_Agree.FieldByName('exchange_USD_val').AsFloat;
    end;
  end;

  exWks.Range['J'+IntToStr(12+fact_cnt)].Value := _currency_val;
  exWks.Range['H'+IntToStr(12+fact_cnt)].Value := 'Курс '+Q_Agree.FieldByName('brief_name').AsString+'/USD';

  SP_FactCalcAdd.Close;
  SP_FactCalcAdd.Parameters.Refresh;
  SP_FactCalcAdd.Parameters.ParamByName('@rate_id').Value := BargainList[j];
  SP_FactCalcAdd.Parameters.ParamByName('@type_rate').Value := 0;
  SP_FactCalcAdd.Parameters.ParamByName('@date_period').Value := Q_Agree.FieldByName('date_period').AsDateTime;
  SP_FactCalcAdd.Parameters.ParamByName('@add_vid_cod').Value := null;
  SP_FactCalcAdd.ExecProc;

  if SP_FactCalcAdd.Parameters.ParamByName('@add_val_002').Value <> 0 then
    exWks.Range['I'+IntToStr(8+fact_cnt)].Value := SP_FactCalcAdd.Parameters.ParamByName('@add_val_002').Value;

    //############################################################################
    // РУБЛИ
    // ----------Сумма в RUB-----------------------
    // Запрашиваем курс валюты клиента к RUB (среднемесячный)
    // Клиент
    exchange_val := GetExchangeNew(Q_Agree.FieldByName('currency_id').AsInteger, Q_Agree.FieldByName('date_period').AsDateTime, conn, False);
    exWks.Range['J'+IntToStr(11+fact_cnt)].Value := '=ROUND(R[-2]C*'+ ReplaceStr(FloatToStr(exchange_val), ',', '.')+',2)';

    exWks.Columns[12].Delete;
    exWks.Columns[11].Delete;

    exApp.CutCopyMode := False;
    exWks.Range['A1'].Select;
    // ------------------- установка страницы -----------------
    exWks.PageSetup.Orientation := 2;
    exWks.PageSetup.LeftMargin := exApp.InchesToPoints(0.196850393700787);
    exWks.PageSetup.RightMargin := exApp.InchesToPoints(0.196850393700787);
    exWks.PageSetup.TopMargin := exApp.InchesToPoints(0.196850393700787);
    exWks.PageSetup.BottomMargin := exApp.InchesToPoints(0.196850393700787);

    exWks.PageSetup.Zoom := False;
    exWks.PageSetup.FitToPagesWide := 1;
    exWks.PageSetup.FitToPagesTall := 100;
    exWks.PageSetup.PrintArea := exWks.Range[exWks.Cells[1,1], exWks.Cells[18+fact_cnt, 11]].Address;

    exWks.Rows[IntToStr(10+fact_cnt)+':' + IntToStr(12+fact_cnt)].RowHeight := 0.001;

    Q := TADOQuery.Create(nil);
    Q.Connection := conn;
    Q.SQL.Clear;
    Q.SQL.Add('SELECT * FROM firm WHERE firm_id = ' + IntToStr(Q_Agree.FieldByName('firm_self').AsInteger));
    Q.Open;
    exWks.Cells[14+fact_cnt, 2].Value := Q_Agree.FieldByName('firm_self_name_short').AsString;
    exWks.Cells[14+fact_cnt, 10].Value := Q_Agree.FieldByName('firm_customer_name_short').AsString;
    exWks.Range['B'+IntToStr(14+fact_cnt)+':J' + IntToStr(14+fact_cnt)].Font.Size := 12;

    Q.Close;
    Q.SQL.Clear;
    Q.SQL.Add('SELECT TOP 1 * FROM view_firm_contact');
    Q.SQL.Add('WHERE (firm_id = ' + IntToStr(Q_Agree.FieldByName('firm_self').AsInteger) + ')');
    Q.SQL.Add('AND (type_contact_cod IN (''20'', ''30''))');
    Q.SQL.Add('AND (' + DateToSQL(Q_Agree.FieldByName('date_period').AsDateTime) + ' BETWEEN date_begin AND ISNULL(date_end, ' + DateToSQL(Q_Agree.FieldByName('date_period').AsDateTime) + '))');
    Q.Open;
    exWks.Cells[15+fact_cnt, 2].Value := Q.FieldByName('type_contact_name').AsString;
    exWks.Cells[16+fact_cnt, 2].Value := 'действующий на основании';
    if Q.FieldByName('firm_contact_comment').AsString = '' then
      exWks.Cells[17+fact_cnt, 2].Value := 'Устава'
    else
      exWks.Cells[17+fact_cnt, 2].Value := ReplaceStr(Q.FieldByName('firm_contact_comment').AsString, 'ность', 'ности');
    exWks.Cells[18+fact_cnt, 2].Value := '____________ /' + Q.FieldByName('firm_contact_name').AsString + '/';
    exWks.Cells[18+fact_cnt, 10].Value :='_________________________';
    exWks.Range['B'+IntToStr(15+fact_cnt)+':J' + IntToStr(18+fact_cnt)].Font.Bold := True;

    // Печать ШК
    barcode.date := Q_Agree.FieldByName('date_period').AsDateTime;
    barcode.global_id :=Q_Agree.FieldByName('bargain_id').AsInteger;
    barcode.user_id := Q_Agree.FieldByName('users_owner_id').AsInteger;
    barcode.object_id := 24; // BARGAIN
  //  PrintBarCode2of5(barcode, exWks, exWks.Cells[18 + fact_cnt, 6 + 4 * Q_sub.RecordCount]);

  end;  { for - основной цикл перебора карточек}

  Q_Agree.Free;
  Q.Free;
  SP_FrahtCard.Free;
  SP_FactCalcAdd.Free;

  ShowTextMessage('Вывод отчета завершен', true);

  exWkb1.Close(0);
  exApp.ActiveWindow.DisplayGridlines := False;
  exWks.Columns[3].ColumnWidth := 0.001;
  exWks.Columns[10].ColumnWidth := 20;
  exApp.Visible := True;

  exWks := Null; exWkb := Null; exApp := Null; exWks1 := Null; exWkb := Null;
  VarClear(exWks); VarClear(exWkb); VarClear(exApp); VarClear(exWks1); VarClear(exWkb1);
  Screen.Cursor := crDefault;
end;

{$REGION 'Счета-Фактуры'}
// Процедура диспетчер (Определяет, какую печатную форму открыть)
// Если печатаются сразу несколько Счетов-Фактур, то печатается самая новая форма
procedure PrintInvoiceScore(str_invoice_score_id: string; Ftype_score: integer; Ftype_report: integer; connect: TADOConnection; file_name: string = '');
var Q : TADOQuery;
begin
  // Ftype_report = 0  - Счет-Фактура
  // Ftype_report = 1  - УПД
  // Ftype_report = -9 - Определяется автоматически по списку переданных ID

  Q := TADOQuery.Create(nil);
  Q.Connection := connect;
  Q.SQL.Add('SELECT');
  Q.SQL.Add('	score_date = MAX(score_date),');
  Q.SQL.Add('	set_correct = SUM(CASE WHEN parent_id IS NOT NULL THEN 1 ELSE 0 END),');
  Q.SQL.Add('	set_udp = SUM(CAST(set_universal_trans_doc as int))');
  Q.SQL.Add('FROM invoice_score');
  Q.SQL.Add('WHERE invoice_score_id IN (' + str_invoice_score_id + ')');
  Q.Open;

  // Если тип не задан, то определим по документам
  // Если есть хотя бы один УПД, то печатаем УПД
  if (Ftype_report <> 0) and (Ftype_report <> 1) then
    if Q.FieldByName('set_udp').AsInteger > 0 then
      Ftype_report := 1
    else
      Ftype_report := 0;

  // Форма выбирается по максимальной дате (для корректности следует печатать по одному документу)
  case Ftype_report of
    0 : begin // Счет-Фактура
          if Q.FieldByName('score_date').AsDateTime < EncodeDate(2017, 07, 01) then
            PrintInvoiceScore_2012_02(str_invoice_score_id, Ftype_score, connect, file_name)
          else if Q.FieldByName('score_date').AsDateTime < EncodeDate(2017, 10, 01) then
            PrintInvoiceScore_2017_07(str_invoice_score_id, Ftype_score, connect, file_name)
          else
            PrintInvoiceScore_2017_10(str_invoice_score_id, Ftype_score, connect, file_name);
        end;
    1 : begin // УПД
          if Q.FieldByName('score_date').AsDateTime < EncodeDate(2017, 07, 01) then
            PrintInvoiceScoreUPD_2013_11(str_invoice_score_id, Ftype_score, connect, file_name)
          else if Q.FieldByName('score_date').AsDateTime < EncodeDate(2017, 10, 01) then
            PrintInvoiceScoreUPD_2017_07(str_invoice_score_id, Ftype_score, connect, file_name)
          else
            PrintInvoiceScoreUPD_2017_10(str_invoice_score_id, Ftype_score, connect, file_name);
        end;
  end;

  Q.Free;
end;

function InvoiceScoreNumToString(score_cod : Variant; score_date : Variant): string;
var d, m, y : Word;
begin
  if (score_cod = null) or (score_date = null) then begin
    Result := '№ -- от --';
  end else begin
    DecodeDate(score_date, y, m, d);
    Result := '№ ' + score_cod + ' от ' + FormatdateTime('dd ' + array_month_balance[m] + ' yyyy года', score_date);
  end;
end;

procedure PrintInvoiceScore_2012_02(str_invoice_score_id: string; Ftype_score: integer; connect: TADOConnection; file_name: string = '');
// file_name: string = ''
// если параметр отсутсвует, то просто выводим в Excel, а если задано имя файла, то молча сохраняем
var   exApp, exWks, exWkb   : Variant;
      exWks1                : Variant;
      Q_InvoiceScore        : TADOQuery;
      SP_Table              : TADOStoredProc;
      Q_Users               : TADOQuery;
      Q_NDS                 : TADOQuery;
      i, row, j             : integer;

  allwidth  : Double;
  width1    : Double;

      invoice_score_id      : integer;
      contract_id           : integer;
      str_score_cod         : string;
      BarCode               : TmyBarCode;

      set_print_comment     : boolean;
      set_print_empty_ed_izm: boolean;
      set_not_print_ed_izm  : boolean;
      set_print_contract    : boolean;
      set_type_total        : boolean;
      str_print_comment     : string;

      set_score_corr        : boolean;
      set_print2file        : boolean;

      array_data            : Variant;
begin
    set_print2file := (file_name <> '');

    Screen.Cursor := crHourglass;

    ShowTextMessage('Запуск сервера автоматизации...', False);

    exApp := CreateOleObject('Excel.Application');
    exWkb := exApp.Workbooks.Add(GetDocBlob(connect, 4701, 9, True)); // 'Счёт-фактура.xls (2012.02)'
    exWks := exWkb.WorkSheets[1];

    // для ускорения - отключимся от принтера
    try
      exApp.Calculation := -4135;
    except
    end;

    ShowTextMessage('Формирование счетов-фактур...', False);

    Q_InvoiceScore := TADOQuery.Create(nil);
    Q_InvoiceScore.Connection := connect;
    Q_InvoiceScore.SQL.Add('SELECT s.*,');
    Q_InvoiceScore.SQL.Add('	old_score_cod = p.score_cod,');
    Q_InvoiceScore.SQL.Add('	old_score_date = p.score_date,');
    Q_InvoiceScore.SQL.Add('	old_correction_cod = p.correction_cod,');
    Q_InvoiceScore.SQL.Add('	old_correction_date = p.correction_date,');
    Q_InvoiceScore.SQL.Add('	old_parent_id = p.parent_id,');
    Q_InvoiceScore.SQL.Add('	acts_comment = (SELECT TOP 1 a.acts_comment FROM view_ACTS a JOIN ACTS_INVOICE_SCORE a_s ON a.acts_id = a_s.acts_id AND a.set_printcomment = 1 AND a_s.invoice_score_id = s.invoice_score_id)');
    Q_InvoiceScore.SQL.Add('INTO #tmp');
    Q_InvoiceScore.SQL.Add('FROM view_invoice_score s');
    Q_InvoiceScore.SQL.Add('LEFT JOIN invoice_score p');
    Q_InvoiceScore.SQL.Add('ON s.parent_id = p.invoice_score_id');
    Q_InvoiceScore.SQL.Add('WHERE s.invoice_score_id in (SELECT cod FROM dbo.StrToTbl(''' + str_invoice_score_id + ''', default))');
    Q_InvoiceScore.SQL.Add('');
    Q_InvoiceScore.SQL.Add('WHILE @@ROWCOUNT > 0 BEGIN');
    Q_InvoiceScore.SQL.Add('  UPDATE tmp');
    Q_InvoiceScore.SQL.Add('  SET');
    Q_InvoiceScore.SQL.Add('   	old_score_cod = p.score_cod,');
    Q_InvoiceScore.SQL.Add('	  old_score_date = p.score_date,');
    Q_InvoiceScore.SQL.Add('	  old_correction_cod = p.correction_cod,');
    Q_InvoiceScore.SQL.Add('	  old_correction_date = p.correction_date,');
    Q_InvoiceScore.SQL.Add('	  old_parent_id = p.parent_id');
    Q_InvoiceScore.SQL.Add('  FROM #tmp as tmp');
    Q_InvoiceScore.SQL.Add('  JOIN invoice_score p');
    Q_InvoiceScore.SQL.Add('  ON tmp.old_parent_id = p.invoice_score_id');
    Q_InvoiceScore.SQL.Add('END');
    Q_InvoiceScore.SQL.Add('');
    Q_InvoiceScore.SQL.Add('SELECT * FROM #tmp ORDER BY 1');
    Q_InvoiceScore.SQL.Add('DROP TABLE #tmp');
    Q_InvoiceScore.Open;

    Q_Users := TADOQuery.Create(nil);
    Q_Users.Connection := connect;
    Q_Users.SQL.Add('SELECT users_id FROM users WHERE users_name = system_user');
    Q_Users.Open;


    SP_Table := TADOStoredProc.Create(nil);
    SP_Table.Connection := connect;
    SP_Table.ProcedureName := 'sp_invoice_score_table_get';
    SP_Table.Parameters.Refresh;

    Q_NDS := TADOQuery.Create(nil);
    Q_NDS.Connection := connect;
    Q_NDS.SQL.Clear;
    Q_NDS.SQL.Add('SELECT * FROM inf_obj WHERE type_inf_id = -12');
    Q_NDS.Open;

    Q_InvoiceScore.First;
    for i := 0 to Q_InvoiceScore.RecordCount - 1 do begin
      ShowTextMessage('Осталось '+ IntToStr(Q_InvoiceScore.RecordCount - i) + ' счетов-фактур...', False);
      invoice_score_id := Q_InvoiceScore.FieldByName('invoice_score_id').AsInteger;

      // какую с-ф печатаем (обычную или корр.
      set_score_corr := not Q_InvoiceScore.FieldByName('parent_id').IsNull;

      // копируем лист в конец книги
      exWks := exWkb.WorkSheets[exWkb.WorkSheets.Count];
      exWks1:= exApp.ActiveWorkbook.WorkSheets[iif(set_score_corr, 2, 1)];
      exWks1.Copy(After := exWks);
      exWks := exWkb.WorkSheets[exWkb.WorkSheets.Count];

      contract_id := Q_InvoiceScore.FieldByName('contract_id').AsInteger;

      str_score_cod := Q_InvoiceScore.FieldByName('score_cod').AsString;
      str_score_cod := ReplaceStr(str_score_cod, '\', ' ');
      str_score_cod := ReplaceStr(str_score_cod, '/', ' ');
      str_score_cod := ReplaceStr(str_score_cod, '?', ' ');
      str_score_cod := ReplaceStr(str_score_cod, ':', ' ');
      str_score_cod := ReplaceStr(str_score_cod, '*', ' ');
      str_score_cod := ReplaceStr(str_score_cod, ']', ' ');
      str_score_cod := ReplaceStr(str_score_cod, '[', ' ');
      exWks.Name := str_score_cod;

      set_print_contract     := Q_InvoiceScore.FieldByName('set_print_contract').AsBoolean or Q_InvoiceScore.FieldByName('set_print_contract_full').AsBoolean;
      set_print_comment      := Q_InvoiceScore.FieldByName('set_print_comment').AsBoolean;
      set_print_empty_ed_izm := Q_InvoiceScore.FieldByName('set_print_empty_ed_izm').AsBoolean;
      set_not_print_ed_izm   := Q_InvoiceScore.FieldByName('set_not_print_ed_izm').AsBoolean;
      set_type_total         := Q_InvoiceScore.FieldByName('set_type_total').AsBoolean;

      // Шапка
      if not set_score_corr then
        exWks.PageSetup.RightFooter := VarToStr(
          '&8Счет-фактура ' +
          InvoiceScoreNumToString(
            Q_InvoiceScore.FieldByName('score_cod').Value,
            Q_InvoiceScore.FieldByName('score_date').Value
          ) +
          #10#10 + exWks.PageSetup.RightFooter)
      else
        exWks.PageSetup.RightFooter := VarToStr(
          '&8Корректировочный счет-фактура ' +
          InvoiceScoreNumToString(
            Q_InvoiceScore.FieldByName('score_cod').Value,
            Q_InvoiceScore.FieldByName('score_date').Value
          ) +
          #10#10 + exWks.PageSetup.RightFooter);

      if not set_score_corr then begin
        exWks.Range['B7'].Value :=
          'СЧЕТ-ФАКТУРА ' +
          InvoiceScoreNumToString(
            Q_InvoiceScore.FieldByName('score_cod').Value,
            Q_InvoiceScore.FieldByName('score_date').Value
          );

        exWks.Range['B8'].Value :=
          'ИСПРАВЛЕНИЕ ' +
          InvoiceScoreNumToString(
            Q_InvoiceScore.FieldByName('correction_cod').Value,
            Q_InvoiceScore.FieldByName('correction_date').Value
          );
      end else begin
        exWks.Range['B7'].Value :=
          'КОРРЕКТИРОВОЧНЫЙ СЧЕТ-ФАКТУРА  ' +
          InvoiceScoreNumToString(
            Q_InvoiceScore.FieldByName('score_cod').Value,
            Q_InvoiceScore.FieldByName('score_date').Value
          ) +
          ' , ИСПРАВЛЕНИЕ КОРРЕКТИРОВОЧНОГО СЧЕТА-ФАКТУРЫ  ' +
          InvoiceScoreNumToString(
            Q_InvoiceScore.FieldByName('correction_cod').Value,
            Q_InvoiceScore.FieldByName('correction_date').Value
          );
        exWks.Range['B8'].Value :=
          'к СЧЕТУ-ФАКТУРЕ (СЧЕТАМ-ФАКТУРАМ)  ' +
          InvoiceScoreNumToString(
            Q_InvoiceScore.FieldByName('old_score_cod').Value,
            Q_InvoiceScore.FieldByName('old_score_date').Value
          ) +
          ' , с учетом исправления  ' +
          InvoiceScoreNumToString(
            Q_InvoiceScore.FieldByName('old_correction_cod').Value,
            Q_InvoiceScore.FieldByName('old_correction_date').Value
          );
      end;

      exWks.Range['C10'].Value := Q_InvoiceScore.FieldByName('score_firm_self_name_full').AsString;
      AutoFitMergeCell(exWks.Range['C10']);
      exWks.Range['C11'].Value := Q_InvoiceScore.FieldByName('score_firm_self_address').AsString;
      AutoFitMergeCell(exWks.Range['C11']);
      exWks.Range['C12'].Value := Q_InvoiceScore.FieldByName('score_firm_self_inn_kpp').AsString;
      AutoFitMergeCell(exWks.Range['C12']);
      if not set_score_corr then begin // грузоотправитель, только для обычного с-ф
        exWks.Range['C13'].Value := Q_InvoiceScore.FieldByName('score_firm_sender_name').AsString;
        AutoFitMergeCell(exWks.Range['C13']);
        exWks.Range['C14'].Value := Q_InvoiceScore.FieldByName('score_firm_reciver_name').AsString;
        AutoFitMergeCell(exWks.Range['C14']);
        exWks.Range['C15'].Value := ReplaceStr(Q_InvoiceScore.FieldByName('score_pay').AsString, #13#10, #10);
        AutoFitMergeCell(exWks.Range['C15']);
      end;
      exWks.Range['C16'].Value := Q_InvoiceScore.FieldByName('score_firm_customer_name_full').AsString;
      AutoFitMergeCell(exWks.Range['C16']);
      exWks.Range['C17'].Value := Q_InvoiceScore.FieldByName('score_firm_customer_address').AsString;
      AutoFitMergeCell(exWks.Range['C17']);
      exWks.Range['C18'].Value := Q_InvoiceScore.FieldByName('score_firm_customer_inn_kpp').AsString;
      AutoFitMergeCell(exWks.Range['C18']);
      exWks.Range['C19'].Value := Q_InvoiceScore.FieldByName('wide_name').AsString + ', ' + Q_InvoiceScore.FieldByName('currency_cod').AsString;

      str_print_comment := '';
      if set_print_contract then // печатаем примечание
        str_print_comment := 'Договор ' + Q_InvoiceScore.FieldByName('score_contract_name').AsString;
      if set_print_contract and set_print_comment then // печатаем примечание
        str_print_comment := str_print_comment + #10;
      if set_print_comment then // печатаем примечание
        str_print_comment := str_print_comment + Q_InvoiceScore.FieldByName('score_comment').AsString;
      exWks.Range['B20'].Value := str_print_comment;
      AutoFitMergeCell(exWks.Range['B20']);
      exWks.Range[VarToStr(iif(set_score_corr, 'B42', 'B35'))].Value := Q_InvoiceScore.FieldByName('acts_comment').AsString;
      AutoFitMergeCell(exWks.Range[VarToStr(iif(set_score_corr, 'B42', 'B35'))]);

      // Подписанты
      exWks.Range[VarToStr(iif(set_score_corr, 'D35', 'D28'))].Value :=
        '/ ' + Q_InvoiceScore.FieldByName('firm_director_name').AsString + ' /';
      if Q_InvoiceScore.FieldByName('firm_director_comment').AsString <> '' then
        exWks.Range[VarToStr(iif(set_score_corr, 'D35', 'D28'))].Value :=
          exWks.Range[VarToStr(iif(set_score_corr, 'D35', 'D28'))].Value + #10 +
          Q_InvoiceScore.FieldByName('firm_director_comment').AsString;

      exWks.Range[VarToStr(iif(set_score_corr, 'L35', 'N28'))].Value :=
        '/ ' + Q_InvoiceScore.FieldByName('firm_buh_name').AsString + ' /';
      if Q_InvoiceScore.FieldByName('firm_buh_comment').AsString <> '' then
        exWks.Range[VarToStr(iif(set_score_corr, 'L35', 'N28'))].Value :=
          exWks.Range[VarToStr(iif(set_score_corr, 'L35', 'N28'))].Value + #10 +
          Q_InvoiceScore.FieldByName('firm_buh_comment').AsString;

      // Если С/Ф подрядчика, то убираем подписантов
      if Ftype_score = 2 then begin
        exWks.Range['B20'].Value := NULL;
        exWks.Range[VarToStr(iif(set_score_corr, 'D35', 'D28'))].Value := '/ ____________ /';
        exWks.Range[VarToStr(iif(set_score_corr, 'L35', 'N28'))].Value := '/ ____________ /';
      end;
      // Подписанты

      SP_Table.Close;
      SP_Table.Parameters.ParamByName('@invoice_score_id').Value := invoice_score_id;
      SP_Table.Open;

      if not set_score_corr then begin
        // Печать строк основного с-ф
        // Суммы - меняем формулы, только при необходимости
        if set_type_total then begin
          Q_NDS.Locate('inf_obj_id', SP_Table.FieldByName('tax_rate_id').AsInteger, []);
          exWks.Range['L26'].Value := '=ROUND(RC[-3]*(' + IntToStr(Q_NDS.FieldByName('inf_obj_cod').AsInteger) + '/100),2)';
          exWks.Range['M26'].Value := '=RC[-4]+RC[-1]';
        end;

        row := 1;
        array_data := VarArrayCreate([1, iif(SP_Table.RecordCount = 0, 1, SP_Table.RecordCount), 1, 15], varVariant);
        while not SP_Table.Eof do begin
          ShowTextMessage('Осталось '+ IntToStr(Q_InvoiceScore.RecordCount - i) + ' счетов-фактур...'#10'Этап 1/3: Осталось ' + IntToStr(SP_Table.RecordCount - SP_Table.RecNo + 1) + ' строк...', False);

          array_data[row, 1] := SP_Table.FieldByName('name_service').AsString;

          if (not SP_Table.FieldByName('ed_izm_cod').IsNull) and (not set_not_print_ed_izm) then
            // не пусто и нет принудительной печати пустоты
            array_data[row, 4] := SP_Table.FieldByName('ed_izm_cod').AsString
          else
            array_data[row, 4] := '---';

          if (not SP_Table.FieldByName('ed_izm_name').IsNull) and (not set_not_print_ed_izm) then
            // не пусто и нет принудительной печати пустоты
            array_data[row, 5] := SP_Table.FieldByName('ed_izm_name').AsString
          else
            array_data[row, 5] := '---';

          if (not SP_Table.FieldByName('quantity').IsNull) and (not set_not_print_ed_izm) then // не пусто и нет принудительной печати пустоты
            array_data[row, 6] := SP_Table.FieldByName('quantity').AsFloat
          else
            array_data[row, 6] := '---';

          if (not SP_Table.FieldByName('price_ed_izm').IsNull) and (not set_not_print_ed_izm) then // не пусто и нет принудительной печати пустоты
            array_data[row, 7] := SP_Table.FieldByName('price_ed_izm').AsCurrency
          else
            if set_print_empty_ed_izm then // печатаем ---, только если не стоит печать пустого поля
              array_data[row, 7] := ''
            else
              array_data[row, 7] := '---';

          if not SP_Table.FieldByName('cost_without_nds').IsNull then
            array_data[row, 8] := SP_Table.FieldByName('cost_without_nds').AsFloat
          else
            array_data[row, 8] := '---';

          if not SP_Table.FieldByName('aktciz').IsNull then
            array_data[row, 9] := SP_Table.FieldByName('aktciz').AsCurrency
          else
            array_data[row, 9] := 'без акциза';   // письмо Литвяк от 19.07.2017

          array_data[row, 10] := '''' + Q_NDS.Lookup('inf_obj_id', SP_Table.FieldByName('tax_rate_id').AsInteger, 'inf_obj_name');

          if not SP_Table.FieldByName('tax_sum').IsNull then
            array_data[row, 11] := SP_Table.FieldByName('tax_sum').AsFloat
          else
            array_data[row, 11] := '---';

          if not SP_Table.FieldByName('cost_with_nds').IsNull then
            array_data[row, 12] := SP_Table.FieldByName('cost_with_nds').AsFloat
          else
            array_data[row, 12] := '---';

          if SP_Table.FieldByName('state_cod').AsString = '' then
            array_data[row, 13] := '---'
          else
            array_data[row, 13] := SP_Table.FieldByName('state_cod').AsString;

          if SP_Table.FieldByName('state_name').AsString = '' then
            array_data[row, 14] := '---'
          else
            array_data[row, 14] := SP_Table.FieldByName('state_name').AsString;

          if SP_Table.FieldByName('num_customs_declaration').AsString = '' then
            array_data[row, 15] := '---'
          else
            array_data[row, 15] := SP_Table.FieldByName('num_customs_declaration').AsString;

          inc(row, 1);

          SP_Table.Next;
        end;

        ShowTextMessage('Осталось '+ IntToStr(Q_InvoiceScore.RecordCount - i) + ' счетов-фактур...'#10'Этап 2/3: Вывод данных', False);

        if row > 1 then row := row - 1;

        // Расширим на нужное число строк
        if SP_Table.RecordCount > 2 then begin
            exWks.Rows['25:' + IntToStr(SP_Table.RecordCount + 22)].Insert;
            exWks.Rows['24:24'].Copy;
            exWks.Rows['25:' + IntToStr(SP_Table.RecordCount + 22)].PasteSpecial(1);
        end else if SP_Table.RecordCount < 2 then begin
            exWks.Rows['25:25'].Delete;
        end;

        // Вывод данных
        exWks.Range[exWks.Cells[24, 2], exWks.Cells[row + 23, 16]].Value := array_data;
        VarClear(array_data);

        ShowTextMessage('Осталось '+ IntToStr(Q_InvoiceScore.RecordCount - i) + ' счетов-фактур...'#10'Этап 3/3: Выравнивание наименований', False);
        // Выравнивание наименования услуги
        width1 := exWks.Columns[2].ColumnWidth;
        allwidth := exWks.Columns[2].ColumnWidth + 0.71 + exWks.Columns[3].ColumnWidth + 0.71 + exWks.Columns[4].ColumnWidth;
        exWks.Columns[2].ColumnWidth := allwidth;
        exWks.Range['B24:D' + IntToStr(23 + row)].UnMerge;
        exWks.Range['B24:D' + IntToStr(23 + row)].WrapText := True;
        exWks.Range['B24:D' + IntToStr(23 + row)].Rows.AutoFit;
        exWks.Range['B24:D' + IntToStr(23 + row)].Merge(True);
        exWks.Columns[2].ColumnWidth := width1;

        // Печать строк основного с-ф
      end else begin
        // Печать строк корректировочного с-ф
        // Суммы - меняем формулы, только при необходимости
        if set_type_total then begin
          Q_NDS.Locate('inf_obj_id', SP_Table.FieldByName('tax_rate_id').AsInteger, []);
          exWks.Range['L32'].Value := '=ROUND(RC[-3]*(' + IntToStr(Q_NDS.FieldByName('inf_obj_cod').AsInteger) + '/100),2)';
          exWks.Range['M32'].Value := '=RC[-4]+RC[-1]';
          exWks.Range['L33'].Value := '=ROUND(RC[-3]*(' + IntToStr(Q_NDS.FieldByName('inf_obj_cod').AsInteger) + '/100),2)';
          exWks.Range['M33'].Value := '=RC[-4]+RC[-1]';
        end;

        row := 24;
        while not SP_Table.Eof do begin
          ShowTextMessage('Осталось '+ IntToStr(Q_InvoiceScore.RecordCount - i) + ' счетов-фактур...'#10'Осталось ' + IntToStr(SP_Table.RecordCount - SP_Table.RecNo + 1) + ' строк...', False);

          if (SP_Table.FieldByName('cost_without_nds').AsCurrency <> 0)
          or (SP_Table.FieldByName('tax_sum').AsCurrency <> 0)
          or (SP_Table.FieldByName('cost_with_nds').AsCurrency <> 0) then begin

          if row > 24 then begin
            exWks.Rows[IntToStr(row + 0) + ':' + IntToStr(row + 3)].Insert;
            exWks.Rows[IntToStr(row + 4) + ':' + IntToStr(row + 7)].Copy;
            exWks.Rows[IntToStr(row + 0) + ':' + IntToStr(row + 3)].PasteSpecial(1);
          end;

          exWks.Range['B' + IntToStr(row)].Value := SP_Table.FieldByName('name_service').AsString;
          AutoFitMergeCell(exWks.Range['B' + IntToStr(row)]);

          if (not SP_Table.FieldByName('old_ed_izm_cod').IsNull) and (not set_not_print_ed_izm) then
            // не пусто и нет принудительной печати пустоты
            exWks.Range['E' + IntToStr(row)].Value := SP_Table.FieldByName('old_ed_izm_cod').AsString
          else
            exWks.Range['E' + IntToStr(row)].Value := '---';

          if (not SP_Table.FieldByName('ed_izm_cod').IsNull) and (not set_not_print_ed_izm) then
            // не пусто и нет принудительной печати пустоты
            exWks.Range['E' + IntToStr(row + 1)].Value := SP_Table.FieldByName('ed_izm_cod').AsString
          else
            exWks.Range['E' + IntToStr(row + 1)].Value := '---';

          if (not SP_Table.FieldByName('old_ed_izm_name').IsNull) and (not set_not_print_ed_izm) then
            // не пусто и нет принудительной печати пустоты
            exWks.Range['F' + IntToStr(row)].Value := SP_Table.FieldByName('old_ed_izm_name').AsString
          else
            exWks.Range['F' + IntToStr(row)].Value := '---';

          if (not SP_Table.FieldByName('ed_izm_name').IsNull) and (not set_not_print_ed_izm) then
            // не пусто и нет принудительной печати пустоты
            exWks.Range['F' + IntToStr(row + 1)].Value := SP_Table.FieldByName('ed_izm_name').AsString
          else
            exWks.Range['F' + IntToStr(row + 1)].Value := '---';

          if (not SP_Table.FieldByName('old_quantity').IsNull) and (not set_not_print_ed_izm) then // не пусто и нет принудительной печати пустоты
            exWks.Range['G' + IntToStr(row)].Value := SP_Table.FieldByName('old_quantity').AsFloat
          else
            exWks.Range['G' + IntToStr(row)].Value := '---';

          if (not SP_Table.FieldByName('quantity').IsNull) and (not set_not_print_ed_izm) then // не пусто и нет принудительной печати пустоты
            exWks.Range['G' + IntToStr(row + 1)].Value := SP_Table.FieldByName('quantity').AsFloat
          else
            exWks.Range['G' + IntToStr(row + 1)].Value := '---';

          if (not SP_Table.FieldByName('old_price_ed_izm').IsNull) and (not set_not_print_ed_izm) then // не пусто и нет принудительной печати пустоты
            exWks.Range['H' + IntToStr(row)].Value := SP_Table.FieldByName('old_price_ed_izm').AsCurrency
          else
            if set_print_empty_ed_izm then // печатаем ---, только если не стоит печать пустого поля
              exWks.Range['H' + IntToStr(row)].Value := ''
            else
              exWks.Range['H' + IntToStr(row)].Value := '---';

          if (not SP_Table.FieldByName('price_ed_izm').IsNull) and (not set_not_print_ed_izm) then // не пусто и нет принудительной печати пустоты
            exWks.Range['H' + IntToStr(row + 1)].Value := SP_Table.FieldByName('price_ed_izm').AsCurrency
          else
            if set_print_empty_ed_izm then // печатаем ---, только если не стоит печать пустого поля
              exWks.Range['H' + IntToStr(row + 1)].Value := ''
            else
              exWks.Range['H' + IntToStr(row + 1)].Value := '---';

          exWks.Range['I' + IntToStr(row)].Value := SP_Table.FieldByName('old_cost_without_nds').AsCurrency;
          exWks.Range['I' + IntToStr(row + 1)].Value := SP_Table.FieldByName('old_cost_without_nds').AsCurrency + SP_Table.FieldByName('cost_without_nds').AsCurrency;

          if (SP_Table.FieldByName('old_aktciz').AsCurrency <> 0) then
            exWks.Range['J' + IntToStr(row)].Value := SP_Table.FieldByName('old_aktciz').AsCurrency
          else
            exWks.Range['J' + IntToStr(row)].Value := 'без акциза';

          if (SP_Table.FieldByName('old_aktciz').AsCurrency + SP_Table.FieldByName('aktciz').AsCurrency <> 0) then
            exWks.Range['J' + IntToStr(row + 1)].Value := SP_Table.FieldByName('old_aktciz').AsCurrency + SP_Table.FieldByName('aktciz').AsCurrency
          else
            exWks.Range['J' + IntToStr(row + 1)].Value := 'без акциза';

          exWks.Range['K' + IntToStr(row)].Value := '''' + Q_NDS.Lookup('inf_obj_id', SP_Table.FieldByName('old_tax_rate_id').AsInteger, 'inf_obj_name');
          exWks.Range['K' + IntToStr(row + 1)].Value := '''' + Q_NDS.Lookup('inf_obj_id', SP_Table.FieldByName('tax_rate_id').AsInteger, 'inf_obj_name');

          exWks.Range['L' + IntToStr(row)].Value := SP_Table.FieldByName('old_tax_sum').AsCurrency;
          exWks.Range['L' + IntToStr(row + 1)].Value := SP_Table.FieldByName('old_tax_sum').AsCurrency + SP_Table.FieldByName('tax_sum').AsCurrency;

          exWks.Range['M' + IntToStr(row)].Value := SP_Table.FieldByName('old_cost_with_nds').AsCurrency;
          exWks.Range['M' + IntToStr(row + 1)].Value := SP_Table.FieldByName('old_cost_with_nds').AsCurrency + SP_Table.FieldByName('cost_with_nds').AsCurrency;

          inc(row, 4);

          end;

          SP_Table.Next;
        end;
        exWks.Rows[IntToStr(row + 0) + ':' + IntToStr(row + 3)].Delete;
        // Печать строк корректировочного с-ф
      end;

      //------------------------------------------------------------
      // Добавляем в CA ШК
      BarCode.object_id := 59; // Счет-фактура
      BarCode.date      := Q_InvoiceScore.FieldByName('score_date').AsDateTime;
      BarCode.global_id := invoice_score_id;
      BarCode.user_id   := Q_Users.FieldByName('users_id').AsInteger;
      PrintBarCode2of5(BarCode, exWks, NULL, connect);
      //-------------------------------------------------------------
      exWks.Select;
      exWks.Range['A1'].Select;

      Q_InvoiceScore.Next;
    end;
// ----------------------------------------------------------
    // удалим шаблонные листы
    exApp.DisplayAlerts := False;
    exWkb.WorkSheets[1].Delete;
    exWkb.WorkSheets[1].Delete;
    exApp.DisplayAlerts := True;

    exWks1 := exWkb.WorkSheets[1];
    exWks1.Select;
    exApp.CutCopyMode := False;

    Q_InvoiceScore.Free;
    Q_Users.Free;
    SP_Table.Free;
    Q_NDS.Free;

    // для ускорения - отключимся от принтера
    try
      exApp.Calculation := -4105;
    except
    end;

    ShowTextMessage;
    if set_print2file then begin
      exWkb.SaveCopyAs(file_name);
      exWkb.Saved := True;
      exApp.Quit;
    end else begin
      exApp.Visible := True;
    end;

    exWks := Null;
    exWkb := Null;
    exApp := Null;
    Screen.Cursor := crDefault;
end;

procedure PrintInvoiceScore_2017_07(str_invoice_score_id: string; Ftype_score: integer; connect: TADOConnection; file_name: string = '');
// file_name: string = ''
// если параметр отсутсвует, то просто выводим в Excel, а если задано имя файла, то молча сохраняем
var   exApp, exWks, exWkb   : Variant;
      exWks1                : Variant;
      Q_InvoiceScore        : TADOQuery;
      SP_Table              : TADOStoredProc;
      Q_Users               : TADOQuery;
      Q_NDS                 : TADOQuery;
      i, row, j             : integer;

  allwidth  : Double;
  width1    : Double;

      invoice_score_id      : integer;
      contract_id           : integer;
      str_score_cod         : string;
      BarCode               : TmyBarCode;

      set_print_comment     : boolean;
      set_print_empty_ed_izm: boolean;
      set_not_print_ed_izm  : boolean;
      set_print_contract    : boolean;
      set_type_total        : boolean;
      str_print_comment     : string;

      set_score_corr        : boolean;
      set_print2file        : boolean;

      array_data            : Variant;
begin
    set_print2file := (file_name <> '');

    Screen.Cursor := crHourglass;

    ShowTextMessage('Запуск сервера автоматизации...', False);

    exApp := CreateOleObject('Excel.Application');
    exWkb := exApp.Workbooks.Add(GetDocBlob(connect, 4702, 9, True)); // 'Счёт-фактура.xls (2017.07)'
    exWks := exWkb.WorkSheets[1];

    // для ускорения - отключимся от принтера
    try
      exApp.Calculation := -4135;
    except
    end;

    ShowTextMessage('Формирование счетов-фактур...', set_print2file);

    Q_InvoiceScore := TADOQuery.Create(nil);
    Q_InvoiceScore.Connection := connect;
    Q_InvoiceScore.SQL.Add('SELECT s.*,');
    Q_InvoiceScore.SQL.Add('	old_score_cod = p.score_cod,');
    Q_InvoiceScore.SQL.Add('	old_score_date = p.score_date,');
    Q_InvoiceScore.SQL.Add('	old_correction_cod = p.correction_cod,');
    Q_InvoiceScore.SQL.Add('	old_correction_date = p.correction_date,');
    Q_InvoiceScore.SQL.Add('	old_parent_id = p.parent_id,');
    Q_InvoiceScore.SQL.Add('	acts_comment = (SELECT TOP 1 a.acts_comment FROM view_ACTS a JOIN ACTS_INVOICE_SCORE a_s ON a.acts_id = a_s.acts_id AND a.set_printcomment = 1 AND a_s.invoice_score_id = s.invoice_score_id)');
    Q_InvoiceScore.SQL.Add('INTO #tmp');
    Q_InvoiceScore.SQL.Add('FROM view_invoice_score s');
    Q_InvoiceScore.SQL.Add('LEFT JOIN invoice_score p');
    Q_InvoiceScore.SQL.Add('ON s.parent_id = p.invoice_score_id');
    Q_InvoiceScore.SQL.Add('WHERE s.invoice_score_id in (SELECT cod FROM dbo.StrToTbl(''' + str_invoice_score_id + ''', default))');
    Q_InvoiceScore.SQL.Add('');
    Q_InvoiceScore.SQL.Add('WHILE @@ROWCOUNT > 0 BEGIN');
    Q_InvoiceScore.SQL.Add('  UPDATE tmp');
    Q_InvoiceScore.SQL.Add('  SET');
    Q_InvoiceScore.SQL.Add('   	old_score_cod = p.score_cod,');
    Q_InvoiceScore.SQL.Add('	  old_score_date = p.score_date,');
    Q_InvoiceScore.SQL.Add('	  old_correction_cod = p.correction_cod,');
    Q_InvoiceScore.SQL.Add('	  old_correction_date = p.correction_date,');
    Q_InvoiceScore.SQL.Add('	  old_parent_id = p.parent_id');
    Q_InvoiceScore.SQL.Add('  FROM #tmp as tmp');
    Q_InvoiceScore.SQL.Add('  JOIN invoice_score p');
    Q_InvoiceScore.SQL.Add('  ON tmp.old_parent_id = p.invoice_score_id');
    Q_InvoiceScore.SQL.Add('END');
    Q_InvoiceScore.SQL.Add('');
    Q_InvoiceScore.SQL.Add('SELECT * FROM #tmp ORDER BY 1');
    Q_InvoiceScore.SQL.Add('DROP TABLE #tmp');
    Q_InvoiceScore.Open;

    Q_Users := TADOQuery.Create(nil);
    Q_Users.Connection := connect;
    Q_Users.SQL.Add('SELECT users_id FROM users WHERE users_name = system_user');
    Q_Users.Open;


    SP_Table := TADOStoredProc.Create(nil);
    SP_Table.Connection := connect;
    SP_Table.ProcedureName := 'sp_invoice_score_table_get';
    SP_Table.Parameters.Refresh;

    Q_NDS := TADOQuery.Create(nil);
    Q_NDS.Connection := connect;
    Q_NDS.SQL.Clear;
    Q_NDS.SQL.Add('SELECT * FROM inf_obj WHERE type_inf_id = -12');
    Q_NDS.Open;

    Q_InvoiceScore.First;
    for i := 0 to Q_InvoiceScore.RecordCount - 1 do begin
      ShowTextMessage('Осталось '+ IntToStr(Q_InvoiceScore.RecordCount - i) + ' счетов-фактур...', False);
      invoice_score_id := Q_InvoiceScore.FieldByName('invoice_score_id').AsInteger;

      // какую с-ф печатаем (обычную или корр.
      set_score_corr := not Q_InvoiceScore.FieldByName('parent_id').IsNull;

      // копируем лист в конец книги
      exWks := exWkb.WorkSheets[exWkb.WorkSheets.Count];
      exWks1:= exApp.ActiveWorkbook.WorkSheets[iif(set_score_corr, 2, 1)];
      exWks1.Copy(After := exWks);
      exWks := exWkb.WorkSheets[exWkb.WorkSheets.Count];

      contract_id := Q_InvoiceScore.FieldByName('contract_id').AsInteger;

      str_score_cod := Q_InvoiceScore.FieldByName('score_cod').AsString;
      str_score_cod := ReplaceStr(str_score_cod, '\', ' ');
      str_score_cod := ReplaceStr(str_score_cod, '/', ' ');
      str_score_cod := ReplaceStr(str_score_cod, '?', ' ');
      str_score_cod := ReplaceStr(str_score_cod, ':', ' ');
      str_score_cod := ReplaceStr(str_score_cod, '*', ' ');
      str_score_cod := ReplaceStr(str_score_cod, ']', ' ');
      str_score_cod := ReplaceStr(str_score_cod, '[', ' ');
      exWks.Name := str_score_cod;

      set_print_contract     := Q_InvoiceScore.FieldByName('set_print_contract').AsBoolean or Q_InvoiceScore.FieldByName('set_print_contract_full').AsBoolean;
      set_print_comment      := Q_InvoiceScore.FieldByName('set_print_comment').AsBoolean;
      set_print_empty_ed_izm := Q_InvoiceScore.FieldByName('set_print_empty_ed_izm').AsBoolean;
      set_not_print_ed_izm   := Q_InvoiceScore.FieldByName('set_not_print_ed_izm').AsBoolean;
      set_type_total         := Q_InvoiceScore.FieldByName('set_type_total').AsBoolean;

      // Шапка
      exWks.PageSetup.RightFooter := VarToStr(
        '&8Счет-фактура ' +
        InvoiceScoreNumToString(
          Q_InvoiceScore.FieldByName('score_cod').Value,
          Q_InvoiceScore.FieldByName('score_date').Value
        ) +
        #10#10 + exWks.PageSetup.RightFooter);

      if not set_score_corr then begin
        exWks.Range['B7'].Value :=
          'СЧЕТ-ФАКТУРА ' +
          InvoiceScoreNumToString(
            Q_InvoiceScore.FieldByName('score_cod').Value,
            Q_InvoiceScore.FieldByName('score_date').Value
          );

        exWks.Range['B8'].Value :=
          'ИСПРАВЛЕНИЕ ' +
          InvoiceScoreNumToString(
            Q_InvoiceScore.FieldByName('correction_cod').Value,
            Q_InvoiceScore.FieldByName('correction_date').Value
          );
      end else begin
        exWks.Range['B7'].Value :=
          'КОРРЕКТИРОВОЧНЫЙ СЧЕТ-ФАКТУРА  ' +
          InvoiceScoreNumToString(
            Q_InvoiceScore.FieldByName('score_cod').Value,
            Q_InvoiceScore.FieldByName('score_date').Value
          ) +
          ' , ИСПРАВЛЕНИЕ КОРРЕКТИРОВОЧНОГО СЧЕТА-ФАКТУРЫ  ' +
          InvoiceScoreNumToString(
            Q_InvoiceScore.FieldByName('correction_cod').Value,
            Q_InvoiceScore.FieldByName('correction_date').Value
          );
        exWks.Range['B8'].Value :=
          'к СЧЕТУ-ФАКТУРЕ (СЧЕТАМ-ФАКТУРАМ)  ' +
          InvoiceScoreNumToString(
            Q_InvoiceScore.FieldByName('old_score_cod').Value,
            Q_InvoiceScore.FieldByName('old_score_date').Value
          ) +
          ' , с учетом исправления  ' +
          InvoiceScoreNumToString(
            Q_InvoiceScore.FieldByName('old_correction_cod').Value,
            Q_InvoiceScore.FieldByName('old_correction_date').Value
          );
      end;

      exWks.Range['C10'].Value := Q_InvoiceScore.FieldByName('score_firm_self_name_full').AsString;
      AutoFitMergeCell(exWks.Range['C10']);
      exWks.Range['C11'].Value := Q_InvoiceScore.FieldByName('score_firm_self_address').AsString;
      AutoFitMergeCell(exWks.Range['C11']);
      exWks.Range['C12'].Value := Q_InvoiceScore.FieldByName('score_firm_self_inn_kpp').AsString;
      AutoFitMergeCell(exWks.Range['C12']);
      if not set_score_corr then begin // грузоотправитель, только для обычного с-ф
        exWks.Range['C13'].Value := Q_InvoiceScore.FieldByName('score_firm_sender_name').AsString;
        AutoFitMergeCell(exWks.Range['C13']);
        exWks.Range['C14'].Value := Q_InvoiceScore.FieldByName('score_firm_reciver_name').AsString;
        AutoFitMergeCell(exWks.Range['C14']);
        exWks.Range['C15'].Value := ReplaceStr(Q_InvoiceScore.FieldByName('score_pay').AsString, #13#10, #10);
        AutoFitMergeCell(exWks.Range['C15']);
      end;
      exWks.Range['C16'].Value := Q_InvoiceScore.FieldByName('score_firm_customer_name_full').AsString;
      AutoFitMergeCell(exWks.Range['C16']);
      exWks.Range['C17'].Value := Q_InvoiceScore.FieldByName('score_firm_customer_address').AsString;
      AutoFitMergeCell(exWks.Range['C17']);
      exWks.Range['C18'].Value := Q_InvoiceScore.FieldByName('score_firm_customer_inn_kpp').AsString;
      AutoFitMergeCell(exWks.Range['C18']);
      exWks.Range['C19'].Value := Q_InvoiceScore.FieldByName('wide_name').AsString + ', ' + Q_InvoiceScore.FieldByName('currency_cod').AsString;
      exWks.Range['E20'].Value := Q_InvoiceScore.FieldByName('score_ID_state_contract').AsString;
      AutoFitMergeCell(exWks.Range['E20']);

      str_print_comment := '';
      if set_print_contract then // печатаем примечание
        str_print_comment := 'Договор ' + Q_InvoiceScore.FieldByName('score_contract_name').AsString;
      if set_print_contract and set_print_comment then // печатаем примечание
        str_print_comment := str_print_comment + #10;
      if set_print_comment then // печатаем примечание
        str_print_comment := str_print_comment + Q_InvoiceScore.FieldByName('score_comment').AsString;
      exWks.Range['B21'].Value := str_print_comment;
      AutoFitMergeCell(exWks.Range['B21']);
      exWks.Range[VarToStr(iif(set_score_corr, 'B43', 'B36'))].Value := Q_InvoiceScore.FieldByName('acts_comment').AsString;
      AutoFitMergeCell(exWks.Range[VarToStr(iif(set_score_corr, 'B43', 'B36'))]);

      // Подписанты
      exWks.Range[VarToStr(iif(set_score_corr, 'D36', 'D29'))].Value :=
        '/ ' + Q_InvoiceScore.FieldByName('firm_director_name').AsString + ' /';
      if Q_InvoiceScore.FieldByName('firm_director_comment').AsString <> '' then
        exWks.Range[VarToStr(iif(set_score_corr, 'D36', 'D29'))].Value :=
          exWks.Range[VarToStr(iif(set_score_corr, 'D36', 'D29'))].Value + #10 +
          Q_InvoiceScore.FieldByName('firm_director_comment').AsString;

      exWks.Range[VarToStr(iif(set_score_corr, 'L36', 'N29'))].Value :=
        '/ ' + Q_InvoiceScore.FieldByName('firm_buh_name').AsString + ' /';
      if Q_InvoiceScore.FieldByName('firm_buh_comment').AsString <> '' then
        exWks.Range[VarToStr(iif(set_score_corr, 'L36', 'N29'))].Value :=
          exWks.Range[VarToStr(iif(set_score_corr, 'L36', 'N29'))].Value + #10 +
          Q_InvoiceScore.FieldByName('firm_buh_comment').AsString;

      // Если С/Ф подрядчика, то убираем подписантов
      if Ftype_score = 2 then begin
        exWks.Range['B21'].Value := NULL;
        exWks.Range[VarToStr(iif(set_score_corr, 'D36', 'D29'))].Value := '/ ____________ /';
        exWks.Range[VarToStr(iif(set_score_corr, 'L36', 'N29'))].Value := '/ ____________ /';
      end;
      // Подписанты

      SP_Table.Close;
      SP_Table.Parameters.ParamByName('@invoice_score_id').Value := invoice_score_id;
      SP_Table.Open;

      if not set_score_corr then begin
        // Печать строк основного с-ф
        // Суммы - меняем формулы, только при необходимости
        if set_type_total then begin
          Q_NDS.Locate('inf_obj_id', SP_Table.FieldByName('tax_rate_id').AsInteger, []);
          exWks.Range['L27'].Value := '=ROUND(RC[-3]*(' + IntToStr(Q_NDS.FieldByName('inf_obj_cod').AsInteger) + '/100),2)';
          exWks.Range['M27'].Value := '=RC[-4]+RC[-1]';
        end;

        row := 1;
        array_data := VarArrayCreate([1, iif(SP_Table.RecordCount = 0, 1, SP_Table.RecordCount), 1, 15], varVariant);
        while not SP_Table.Eof do begin
          ShowTextMessage('Осталось '+ IntToStr(Q_InvoiceScore.RecordCount - i) + ' счетов-фактур...'#10'Этап 1/3: Осталось ' + IntToStr(SP_Table.RecordCount - SP_Table.RecNo + 1) + ' строк...', False);

          array_data[row, 1] := SP_Table.FieldByName('name_service').AsString;

          if (not SP_Table.FieldByName('ed_izm_cod').IsNull) and (not set_not_print_ed_izm) then
            // не пусто и нет принудительной печати пустоты
            array_data[row, 4] := SP_Table.FieldByName('ed_izm_cod').AsString
          else
            array_data[row, 4] := '---';

          if (not SP_Table.FieldByName('ed_izm_name').IsNull) and (not set_not_print_ed_izm) then
            // не пусто и нет принудительной печати пустоты
            array_data[row, 5] := SP_Table.FieldByName('ed_izm_name').AsString
          else
            array_data[row, 5] := '---';

          if (not SP_Table.FieldByName('quantity').IsNull) and (not set_not_print_ed_izm) then // не пусто и нет принудительной печати пустоты
            array_data[row, 6] := SP_Table.FieldByName('quantity').AsFloat
          else
            array_data[row, 6] := '---';

          if (not SP_Table.FieldByName('price_ed_izm').IsNull) and (not set_not_print_ed_izm) then // не пусто и нет принудительной печати пустоты
            array_data[row, 7] := SP_Table.FieldByName('price_ed_izm').AsCurrency
          else
            if set_print_empty_ed_izm then // печатаем ---, только если не стоит печать пустого поля
              array_data[row, 7] := ''
            else
              array_data[row, 7] := '---';

          if not SP_Table.FieldByName('cost_without_nds').IsNull then
            array_data[row, 8] := SP_Table.FieldByName('cost_without_nds').AsFloat
          else
            array_data[row, 8] := '---';

          if not SP_Table.FieldByName('aktciz').IsNull then
            array_data[row, 9] := SP_Table.FieldByName('aktciz').AsCurrency
          else
            array_data[row, 9] := 'без акциза';   // письмо Литвяк от 19.07.2017

          array_data[row, 10] := '''' + Q_NDS.Lookup('inf_obj_id', SP_Table.FieldByName('tax_rate_id').AsInteger, 'inf_obj_name');

          if not SP_Table.FieldByName('tax_sum').IsNull then
            array_data[row, 11] := SP_Table.FieldByName('tax_sum').AsFloat
          else
            array_data[row, 11] := '---';

          if not SP_Table.FieldByName('cost_with_nds').IsNull then
            array_data[row, 12] := SP_Table.FieldByName('cost_with_nds').AsFloat
          else
            array_data[row, 12] := '---';

          if SP_Table.FieldByName('state_cod').AsString = '' then
            array_data[row, 13] := '---'
          else
            array_data[row, 13] := SP_Table.FieldByName('state_cod').AsString;

          if SP_Table.FieldByName('state_name').AsString = '' then
            array_data[row, 14] := '---'
          else
            array_data[row, 14] := SP_Table.FieldByName('state_name').AsString;

          if SP_Table.FieldByName('num_customs_declaration').AsString = '' then
            array_data[row, 15] := '---'
          else
            array_data[row, 15] := SP_Table.FieldByName('num_customs_declaration').AsString;

          inc(row, 1);

          SP_Table.Next;
        end;

        ShowTextMessage('Осталось '+ IntToStr(Q_InvoiceScore.RecordCount - i) + ' счетов-фактур...'#10'Этап 2/3: Вывод данных', False);

        if row > 1 then row := row - 1;

        // Расширим на нужное число строк
        if SP_Table.RecordCount > 2 then begin
            exWks.Rows['26:' + IntToStr(SP_Table.RecordCount + 23)].Insert;
            exWks.Rows['25:25'].Copy;
            exWks.Rows['26:' + IntToStr(SP_Table.RecordCount + 23)].PasteSpecial(1);
        end else if SP_Table.RecordCount < 2 then begin
            exWks.Rows['26:26'].Delete;
        end;

        // Вывод данных
        exWks.Range[exWks.Cells[25, 2], exWks.Cells[row + 24, 16]].Value := array_data;
        VarClear(array_data);

        ShowTextMessage('Осталось '+ IntToStr(Q_InvoiceScore.RecordCount - i) + ' счетов-фактур...'#10'Этап 3/3: Выравнивание наименований', False);
        // Выравнивание наименования услуги
        width1 := exWks.Columns[2].ColumnWidth;
        allwidth := exWks.Columns[2].ColumnWidth + 0.71 + exWks.Columns[3].ColumnWidth + 0.71 + exWks.Columns[4].ColumnWidth;
        exWks.Columns[2].ColumnWidth := allwidth;
        exWks.Range['B25:D' + IntToStr(24 + row)].UnMerge;
        exWks.Range['B25:D' + IntToStr(24 + row)].WrapText := True;
        exWks.Range['B25:D' + IntToStr(24 + row)].Rows.AutoFit;
        exWks.Range['B25:D' + IntToStr(24 + row)].Merge(True);
        exWks.Columns[2].ColumnWidth := width1;

        // Печать строк основного с-ф
      end else begin
        // Печать строк корректировочного с-ф
        // Суммы - меняем формулы, только при необходимости
        if set_type_total then begin
          Q_NDS.Locate('inf_obj_id', SP_Table.FieldByName('tax_rate_id').AsInteger, []);
          exWks.Range['L33'].Value := '=ROUND(RC[-3]*(' + IntToStr(Q_NDS.FieldByName('inf_obj_cod').AsInteger) + '/100),2)';
          exWks.Range['M33'].Value := '=RC[-4]+RC[-1]';
          exWks.Range['L34'].Value := '=ROUND(RC[-3]*(' + IntToStr(Q_NDS.FieldByName('inf_obj_cod').AsInteger) + '/100),2)';
          exWks.Range['M34'].Value := '=RC[-4]+RC[-1]';
        end;

        row := 25;
        while not SP_Table.Eof do begin
          ShowTextMessage('Осталось '+ IntToStr(Q_InvoiceScore.RecordCount - i) + ' счетов-фактур...'#10'Осталось ' + IntToStr(SP_Table.RecordCount - SP_Table.RecNo + 1) + ' строк...', False);

          if (SP_Table.FieldByName('cost_without_nds').AsCurrency <> 0)
          or (SP_Table.FieldByName('tax_sum').AsCurrency <> 0)
          or (SP_Table.FieldByName('cost_with_nds').AsCurrency <> 0) then begin

          if row > 25 then begin
            exWks.Rows[IntToStr(row + 0) + ':' + IntToStr(row + 3)].Insert;
            exWks.Rows[IntToStr(row + 4) + ':' + IntToStr(row + 7)].Copy;
            exWks.Rows[IntToStr(row + 0) + ':' + IntToStr(row + 3)].PasteSpecial(1);
          end;

          exWks.Range['B' + IntToStr(row)].Value := SP_Table.FieldByName('name_service').AsString;
          AutoFitMergeCell(exWks.Range['B' + IntToStr(row)]);

          if (not SP_Table.FieldByName('old_ed_izm_cod').IsNull) and (not set_not_print_ed_izm) then
            // не пусто и нет принудительной печати пустоты
            exWks.Range['E' + IntToStr(row)].Value := SP_Table.FieldByName('old_ed_izm_cod').AsString
          else
            exWks.Range['E' + IntToStr(row)].Value := '---';

          if (not SP_Table.FieldByName('ed_izm_cod').IsNull) and (not set_not_print_ed_izm) then
            // не пусто и нет принудительной печати пустоты
            exWks.Range['E' + IntToStr(row + 1)].Value := SP_Table.FieldByName('ed_izm_cod').AsString
          else
            exWks.Range['E' + IntToStr(row + 1)].Value := '---';

          if (not SP_Table.FieldByName('old_ed_izm_name').IsNull) and (not set_not_print_ed_izm) then
            // не пусто и нет принудительной печати пустоты
            exWks.Range['F' + IntToStr(row)].Value := SP_Table.FieldByName('old_ed_izm_name').AsString
          else
            exWks.Range['F' + IntToStr(row)].Value := '---';

          if (not SP_Table.FieldByName('ed_izm_name').IsNull) and (not set_not_print_ed_izm) then
            // не пусто и нет принудительной печати пустоты
            exWks.Range['F' + IntToStr(row + 1)].Value := SP_Table.FieldByName('ed_izm_name').AsString
          else
            exWks.Range['F' + IntToStr(row + 1)].Value := '---';

          if (not SP_Table.FieldByName('old_quantity').IsNull) and (not set_not_print_ed_izm) then // не пусто и нет принудительной печати пустоты
            exWks.Range['G' + IntToStr(row)].Value := SP_Table.FieldByName('old_quantity').AsFloat
          else
            exWks.Range['G' + IntToStr(row)].Value := '---';

          if (not SP_Table.FieldByName('quantity').IsNull) and (not set_not_print_ed_izm) then // не пусто и нет принудительной печати пустоты
            exWks.Range['G' + IntToStr(row + 1)].Value := SP_Table.FieldByName('quantity').AsFloat
          else
            exWks.Range['G' + IntToStr(row + 1)].Value := '---';

          if (not SP_Table.FieldByName('old_price_ed_izm').IsNull) and (not set_not_print_ed_izm) then // не пусто и нет принудительной печати пустоты
            exWks.Range['H' + IntToStr(row)].Value := SP_Table.FieldByName('old_price_ed_izm').AsCurrency
          else
            if set_print_empty_ed_izm then // печатаем ---, только если не стоит печать пустого поля
              exWks.Range['H' + IntToStr(row)].Value := ''
            else
              exWks.Range['H' + IntToStr(row)].Value := '---';

          if (not SP_Table.FieldByName('price_ed_izm').IsNull) and (not set_not_print_ed_izm) then // не пусто и нет принудительной печати пустоты
            exWks.Range['H' + IntToStr(row + 1)].Value := SP_Table.FieldByName('price_ed_izm').AsCurrency
          else
            if set_print_empty_ed_izm then // печатаем ---, только если не стоит печать пустого поля
              exWks.Range['H' + IntToStr(row + 1)].Value := ''
            else
              exWks.Range['H' + IntToStr(row + 1)].Value := '---';

          exWks.Range['I' + IntToStr(row)].Value := SP_Table.FieldByName('old_cost_without_nds').AsCurrency;
          exWks.Range['I' + IntToStr(row + 1)].Value := SP_Table.FieldByName('old_cost_without_nds').AsCurrency + SP_Table.FieldByName('cost_without_nds').AsCurrency;

          if (SP_Table.FieldByName('old_aktciz').AsCurrency <> 0) then
            exWks.Range['J' + IntToStr(row)].Value := SP_Table.FieldByName('old_aktciz').AsCurrency
          else
            exWks.Range['J' + IntToStr(row)].Value := 'без акциза';

          if (SP_Table.FieldByName('old_aktciz').AsCurrency + SP_Table.FieldByName('aktciz').AsCurrency <> 0) then
            exWks.Range['J' + IntToStr(row + 1)].Value := SP_Table.FieldByName('old_aktciz').AsCurrency + SP_Table.FieldByName('aktciz').AsCurrency
          else
            exWks.Range['J' + IntToStr(row + 1)].Value := 'без акциза';

          exWks.Range['K' + IntToStr(row)].Value := '''' + Q_NDS.Lookup('inf_obj_id', SP_Table.FieldByName('old_tax_rate_id').AsInteger, 'inf_obj_name');
          exWks.Range['K' + IntToStr(row + 1)].Value := '''' + Q_NDS.Lookup('inf_obj_id', SP_Table.FieldByName('tax_rate_id').AsInteger, 'inf_obj_name');

          exWks.Range['L' + IntToStr(row)].Value := SP_Table.FieldByName('old_tax_sum').AsCurrency;
          exWks.Range['L' + IntToStr(row + 1)].Value := SP_Table.FieldByName('old_tax_sum').AsCurrency + SP_Table.FieldByName('tax_sum').AsCurrency;

          exWks.Range['M' + IntToStr(row)].Value := SP_Table.FieldByName('old_cost_with_nds').AsCurrency;
          exWks.Range['M' + IntToStr(row + 1)].Value := SP_Table.FieldByName('old_cost_with_nds').AsCurrency + SP_Table.FieldByName('cost_with_nds').AsCurrency;

          inc(row, 4);

          end;

          SP_Table.Next;
        end;
        exWks.Rows[IntToStr(row + 0) + ':' + IntToStr(row + 3)].Delete;
        // Печать строк корректировочного с-ф
      end;

      //------------------------------------------------------------
      // Добавляем в CA ШК
      BarCode.object_id := 59; // Счет-фактура
      BarCode.date      := Q_InvoiceScore.FieldByName('score_date').AsDateTime;
      BarCode.global_id := invoice_score_id;
      BarCode.user_id   := Q_Users.FieldByName('users_id').AsInteger;
      PrintBarCode2of5(BarCode, exWks, NULL, connect);
      //-------------------------------------------------------------
      exWks.Select;
      exWks.Range['A1'].Select;

      Q_InvoiceScore.Next;
    end;
// ----------------------------------------------------------
    // удалим шаблонные листы
    exApp.DisplayAlerts := False;
    exWkb.WorkSheets[1].Delete;
    exWkb.WorkSheets[1].Delete;
    exApp.DisplayAlerts := True;

    exWks1 := exWkb.WorkSheets[1];
    exWks1.Select;
    exApp.CutCopyMode := False;

    Q_InvoiceScore.Free;
    Q_Users.Free;
    SP_Table.Free;
    Q_NDS.Free;

    // для ускорения - отключимся от принтера
    try
      exApp.Calculation := -4105;
    except
    end;

    ShowTextMessage;
    if set_print2file then begin
      exWkb.SaveCopyAs(file_name);
      exWkb.Saved := True;
      exApp.Quit;
    end else begin
      exApp.Visible := True;
    end;

    exWks := Null;
    exWkb := Null;
    exApp := Null;
    Screen.Cursor := crDefault;
end;

procedure PrintInvoiceScore_2017_10(str_invoice_score_id: string; Ftype_score: integer; connect: TADOConnection; file_name: string = '');
// file_name: string = ''
// если параметр отсутсвует, то просто выводим в Excel, а если задано имя файла, то молча сохраняем
var   exApp, exWks, exWkb   : Variant;
      exWks1                : Variant;
      Q_InvoiceScore        : TADOQuery;
      SP_Table              : TADOStoredProc;
      Q_Users               : TADOQuery;
      Q_NDS                 : TADOQuery;
      Q_Firm_TaxAgent       : TADOQuery;
      i, row, j             : integer;

      allwidth  : Double;
      width1    : Double;

      invoice_score_id      : integer;
      contract_id           : integer;
      str_score_cod         : string;
      BarCode               : TmyBarCode;

      set_print_comment     : boolean;
      set_print_empty_ed_izm: boolean;
      set_not_print_ed_izm  : boolean;
      set_print_contract    : boolean;
      set_print_taxagent    : boolean;
      set_type_total        : boolean;
      str_print_comment     : string;

      set_score_corr        : boolean;
      set_print2file        : boolean;

      array_data            : Variant;
begin
    set_print2file := (file_name <> '');

    Screen.Cursor := crHourglass;

    ShowTextMessage('Запуск сервера автоматизации...', False);

    exApp := CreateOleObject('Excel.Application');
    exWkb := exApp.Workbooks.Add(GetDocBlob(connect, 4703, 9, True)); // 'Счёт-фактура.xls (2017.10)'
    exWks := exWkb.WorkSheets[1];

    // для ускорения - отключимся от принтера
    try
      exApp.Calculation := -4135;
    except
    end;

    ShowTextMessage('Формирование счетов-фактур...', set_print2file);

    Q_InvoiceScore := TADOQuery.Create(nil);
    Q_InvoiceScore.Connection := connect;
    Q_InvoiceScore.SQL.Add('SELECT s.*,');
    Q_InvoiceScore.SQL.Add('	old_score_cod = p.score_cod,');
    Q_InvoiceScore.SQL.Add('	old_score_date = p.score_date,');
    Q_InvoiceScore.SQL.Add('	old_correction_cod = p.correction_cod,');
    Q_InvoiceScore.SQL.Add('	old_correction_date = p.correction_date,');
    Q_InvoiceScore.SQL.Add('	old_parent_id = p.parent_id,');
    Q_InvoiceScore.SQL.Add('	acts_comment = (SELECT TOP 1 a.acts_comment FROM view_ACTS a JOIN ACTS_INVOICE_SCORE a_s ON a.acts_id = a_s.acts_id AND a.set_printcomment = 1 AND a_s.invoice_score_id = s.invoice_score_id)');
    Q_InvoiceScore.SQL.Add('INTO #tmp');
    Q_InvoiceScore.SQL.Add('FROM view_invoice_score s');
    Q_InvoiceScore.SQL.Add('LEFT JOIN invoice_score p');
    Q_InvoiceScore.SQL.Add('ON s.parent_id = p.invoice_score_id');
    Q_InvoiceScore.SQL.Add('WHERE s.invoice_score_id in (SELECT cod FROM dbo.StrToTbl(''' + str_invoice_score_id + ''', default))');
    Q_InvoiceScore.SQL.Add('');
    Q_InvoiceScore.SQL.Add('WHILE @@ROWCOUNT > 0 BEGIN');
    Q_InvoiceScore.SQL.Add('  UPDATE tmp');
    Q_InvoiceScore.SQL.Add('  SET');
    Q_InvoiceScore.SQL.Add('   	old_score_cod = p.score_cod,');
    Q_InvoiceScore.SQL.Add('	  old_score_date = p.score_date,');
    Q_InvoiceScore.SQL.Add('	  old_correction_cod = p.correction_cod,');
    Q_InvoiceScore.SQL.Add('	  old_correction_date = p.correction_date,');
    Q_InvoiceScore.SQL.Add('	  old_parent_id = p.parent_id');
    Q_InvoiceScore.SQL.Add('  FROM #tmp as tmp');
    Q_InvoiceScore.SQL.Add('  JOIN invoice_score p');
    Q_InvoiceScore.SQL.Add('  ON tmp.old_parent_id = p.invoice_score_id');
    Q_InvoiceScore.SQL.Add('END');
    Q_InvoiceScore.SQL.Add('');
    Q_InvoiceScore.SQL.Add('SELECT * FROM #tmp ORDER BY 1');
    Q_InvoiceScore.SQL.Add('DROP TABLE #tmp');
    Q_InvoiceScore.Open;

    Q_Users := TADOQuery.Create(nil);
    Q_Users.Connection := connect;
    Q_Users.SQL.Add('SELECT users_id FROM users WHERE users_name = system_user');
    Q_Users.Open;


    SP_Table := TADOStoredProc.Create(nil);
    SP_Table.Connection := connect;
    SP_Table.ProcedureName := 'sp_invoice_score_table_get';
    SP_Table.Parameters.Refresh;

    Q_NDS := TADOQuery.Create(nil);
    Q_NDS.Connection := connect;
    Q_NDS.SQL.Clear;
    Q_NDS.SQL.Add('SELECT * FROM inf_obj WHERE type_inf_id = -12');
    Q_NDS.Open;

    Q_Firm_TaxAgent := TADOQuery.Create(nil);
    Q_Firm_TaxAgent.Connection := connect;
    Q_Firm_TaxAgent.SQL.Clear;
    Q_Firm_TaxAgent.SQL.Add('select view_firm.* , addr.firm_contact_name as address_name from view_firm');
    Q_Firm_TaxAgent.SQL.Add('outer apply (select firm_contact_name from view_firm_contact where firm_id = view_firm.firm_id and type_contact_cod = ''11'' and :score_date BETWEEN date_begin AND isnull(date_end, ''23991231'')) as addr');
    Q_Firm_TaxAgent.SQL.Add('where firm_id = :firm_id');

    Q_InvoiceScore.First;
    for i := 0 to Q_InvoiceScore.RecordCount - 1 do begin
      ShowTextMessage('Осталось '+ IntToStr(Q_InvoiceScore.RecordCount - i) + ' счетов-фактур...', False);
      invoice_score_id := Q_InvoiceScore.FieldByName('invoice_score_id').AsInteger;

      // какую с-ф печатаем (обычную или корр.
      set_score_corr := not Q_InvoiceScore.FieldByName('parent_id').IsNull;

      // копируем лист в конец книги
      exWks := exWkb.WorkSheets[exWkb.WorkSheets.Count];
      exWks1:= exApp.ActiveWorkbook.WorkSheets[iif(set_score_corr, 2, 1)];
      exWks1.Copy(After := exWks);
      exWks := exWkb.WorkSheets[exWkb.WorkSheets.Count];

      contract_id := Q_InvoiceScore.FieldByName('contract_id').AsInteger;

      str_score_cod := Q_InvoiceScore.FieldByName('score_cod').AsString;
      str_score_cod := ReplaceStr(str_score_cod, '\', ' ');
      str_score_cod := ReplaceStr(str_score_cod, '/', ' ');
      str_score_cod := ReplaceStr(str_score_cod, '?', ' ');
      str_score_cod := ReplaceStr(str_score_cod, ':', ' ');
      str_score_cod := ReplaceStr(str_score_cod, '*', ' ');
      str_score_cod := ReplaceStr(str_score_cod, ']', ' ');
      str_score_cod := ReplaceStr(str_score_cod, '[', ' ');
      exWks.Name := str_score_cod;

      set_print_contract     := Q_InvoiceScore.FieldByName('set_print_contract').AsBoolean or Q_InvoiceScore.FieldByName('set_print_contract_full').AsBoolean;
      set_print_taxagent     := Q_InvoiceScore.FieldByName('set_print_taxagent').AsBoolean;
      set_print_comment      := Q_InvoiceScore.FieldByName('set_print_comment').AsBoolean;
      set_print_empty_ed_izm := Q_InvoiceScore.FieldByName('set_print_empty_ed_izm').AsBoolean;
      set_not_print_ed_izm   := Q_InvoiceScore.FieldByName('set_not_print_ed_izm').AsBoolean;
      set_type_total         := Q_InvoiceScore.FieldByName('set_type_total').AsBoolean;

      // Шапка
      exWks.PageSetup.RightFooter := VarToStr(
        '&8Счет-фактура ' +
        InvoiceScoreNumToString(
          Q_InvoiceScore.FieldByName('score_cod').Value,
          Q_InvoiceScore.FieldByName('score_date').Value
        ) +
        #10#10 + exWks.PageSetup.RightFooter);

      if not set_score_corr then begin
        exWks.Range['B7'].Value :=
          'СЧЕТ-ФАКТУРА ' +
          InvoiceScoreNumToString(
            Q_InvoiceScore.FieldByName('score_cod').Value,
            Q_InvoiceScore.FieldByName('score_date').Value
          );

        exWks.Range['B8'].Value :=
          'ИСПРАВЛЕНИЕ ' +
          InvoiceScoreNumToString(
            Q_InvoiceScore.FieldByName('correction_cod').Value,
            Q_InvoiceScore.FieldByName('correction_date').Value
          );
      end else begin
        exWks.Range['B7'].Value :=
          'КОРРЕКТИРОВОЧНЫЙ СЧЕТ-ФАКТУРА  ' +
          InvoiceScoreNumToString(
            Q_InvoiceScore.FieldByName('score_cod').Value,
            Q_InvoiceScore.FieldByName('score_date').Value
          ) +
          ' , ИСПРАВЛЕНИЕ КОРРЕКТИРОВОЧНОГО СЧЕТА-ФАКТУРЫ  ' +
          InvoiceScoreNumToString(
            Q_InvoiceScore.FieldByName('correction_cod').Value,
            Q_InvoiceScore.FieldByName('correction_date').Value
          );
        exWks.Range['B8'].Value :=
          'к СЧЕТУ-ФАКТУРЕ (СЧЕТАМ-ФАКТУРАМ)  ' +
          InvoiceScoreNumToString(
            Q_InvoiceScore.FieldByName('old_score_cod').Value,
            Q_InvoiceScore.FieldByName('old_score_date').Value
          ) +
          ' , с учетом исправления  ' +
          InvoiceScoreNumToString(
            Q_InvoiceScore.FieldByName('old_correction_cod').Value,
            Q_InvoiceScore.FieldByName('old_correction_date').Value
          );
      end;

      exWks.Range['C10'].Value := Q_InvoiceScore.FieldByName('score_firm_self_name_full').AsString;
      AutoFitMergeCell(exWks.Range['C10']);
      exWks.Range['C11'].Value := Q_InvoiceScore.FieldByName('score_firm_self_address').AsString;
      AutoFitMergeCell(exWks.Range['C11']);
      exWks.Range['C12'].Value := Q_InvoiceScore.FieldByName('score_firm_self_inn_kpp').AsString;
      AutoFitMergeCell(exWks.Range['C12']);
      if not set_score_corr then begin // грузоотправитель, только для обычного с-ф
        exWks.Range['C13'].Value := Q_InvoiceScore.FieldByName('score_firm_sender_name').AsString;
        AutoFitMergeCell(exWks.Range['C13']);
        exWks.Range['C14'].Value := Q_InvoiceScore.FieldByName('score_firm_reciver_name').AsString;
        AutoFitMergeCell(exWks.Range['C14']);
        exWks.Range['C15'].Value := ReplaceStr(Q_InvoiceScore.FieldByName('score_pay').AsString, #13#10, #10);
        AutoFitMergeCell(exWks.Range['C15']);
      end;
      exWks.Range['C16'].Value := Q_InvoiceScore.FieldByName('score_firm_customer_name_full').AsString;
      AutoFitMergeCell(exWks.Range['C16']);
      exWks.Range['C17'].Value := Q_InvoiceScore.FieldByName('score_firm_customer_address').AsString;
      AutoFitMergeCell(exWks.Range['C17']);
      exWks.Range['C18'].Value := Q_InvoiceScore.FieldByName('score_firm_customer_inn_kpp').AsString;
      AutoFitMergeCell(exWks.Range['C18']);
      exWks.Range['C19'].Value := Q_InvoiceScore.FieldByName('wide_name').AsString + ', ' + Q_InvoiceScore.FieldByName('currency_cod').AsString;
      exWks.Range[VarToStr(iif(set_score_corr, 'F20', 'G20'))].Value := Q_InvoiceScore.FieldByName('score_ID_state_contract').AsString;
      AutoFitMergeCell(exWks.Range[VarToStr(iif(set_score_corr, 'F20', 'G20'))]);

      str_print_comment := '';
      if set_print_contract then // печатаем примечание
        str_print_comment := 'Договор ' + Q_InvoiceScore.FieldByName('score_contract_name').AsString;
      if set_print_contract and set_print_comment then // печатаем примечание
        str_print_comment := str_print_comment + #10;
      if set_print_comment then // печатаем примечание
        str_print_comment := str_print_comment + Q_InvoiceScore.FieldByName('score_comment').AsString;
      exWks.Range['B21'].Value := str_print_comment;
      AutoFitMergeCell(exWks.Range['B21']);

      str_print_comment := '';
      str_print_comment := Q_InvoiceScore.FieldByName('acts_comment').AsString;
      if set_print_taxagent then begin
        Q_Firm_TaxAgent.Close;
        Q_Firm_TaxAgent.Parameters.ParamByName('firm_id').Value := Q_InvoiceScore.FieldByName('firm_self').AsInteger;
        Q_Firm_TaxAgent.Parameters.ParamByName('score_date').Value := Q_InvoiceScore.FieldByName('score_date').AsDateTime;
        Q_Firm_TaxAgent.Open;
        str_print_comment :=
          'Составлен комиссионером (агентом): ' + Q_Firm_TaxAgent.FieldByName('firm_name_short').AsString +
          ', ' + Q_Firm_TaxAgent.FieldByName('address_name').AsString +
          ', ИНН/КПП: ' + Q_Firm_TaxAgent.FieldByName('inn_kpp').AsString;
      end;
      exWks.Range[VarToStr(iif(set_score_corr, 'B43', 'B36'))].Value := str_print_comment;
      AutoFitMergeCell(exWks.Range[VarToStr(iif(set_score_corr, 'B43', 'B36'))]);

      // Подписанты
      exWks.Range[VarToStr(iif(set_score_corr, 'D36', 'D29'))].Value :=
        '/ ' + Q_InvoiceScore.FieldByName('firm_director_name').AsString + ' /';
      if Q_InvoiceScore.FieldByName('firm_director_comment').AsString <> '' then
        exWks.Range[VarToStr(iif(set_score_corr, 'D36', 'D29'))].Value :=
          exWks.Range[VarToStr(iif(set_score_corr, 'D36', 'D29'))].Value + #10 +
          Q_InvoiceScore.FieldByName('firm_director_comment').AsString;

      exWks.Range[VarToStr(iif(set_score_corr, 'M36', 'N29'))].Value :=
        '/ ' + Q_InvoiceScore.FieldByName('firm_buh_name').AsString + ' /';
      if Q_InvoiceScore.FieldByName('firm_buh_comment').AsString <> '' then
        exWks.Range[VarToStr(iif(set_score_corr, 'M36', 'N29'))].Value :=
          exWks.Range[VarToStr(iif(set_score_corr, 'M36', 'N29'))].Value + #10 +
          Q_InvoiceScore.FieldByName('firm_buh_comment').AsString;

      // Если С/Ф подрядчика, то убираем подписантов
      if Ftype_score = 2 then begin
        exWks.Range['B21'].Value := NULL;
        exWks.Range[VarToStr(iif(set_score_corr, 'D36', 'D29'))].Value := '/ ____________ /';
        exWks.Range[VarToStr(iif(set_score_corr, 'M36', 'N29'))].Value := '/ ____________ /';
      end;
      // Подписанты

      SP_Table.Close;
      SP_Table.Parameters.ParamByName('@invoice_score_id').Value := invoice_score_id;
      SP_Table.Open;

      if not set_score_corr then begin
        // Печать строк основного с-ф
        // Суммы - меняем формулы, только при необходимости
        if set_type_total then begin
          Q_NDS.Locate('inf_obj_id', SP_Table.FieldByName('tax_rate_id').AsInteger, []);
          exWks.Range['L27'].Value := '=ROUND(RC[-3]*(' + IntToStr(Q_NDS.FieldByName('inf_obj_cod').AsInteger) + '/100),2)';
          exWks.Range['M27'].Value := '=RC[-4]+RC[-1]';
        end;

        row := 1;
        array_data := VarArrayCreate([1, iif(SP_Table.RecordCount = 0, 1, SP_Table.RecordCount), 1, 15], varVariant);
        while not SP_Table.Eof do begin
          ShowTextMessage('Осталось '+ IntToStr(Q_InvoiceScore.RecordCount - i) + ' счетов-фактур...'#10'Этап 1/3: Осталось ' + IntToStr(SP_Table.RecordCount - SP_Table.RecNo + 1) + ' строк...', False);

          array_data[row, 1] := SP_Table.FieldByName('name_service').AsString;

          array_data[row, 3] := '---';

          if (not SP_Table.FieldByName('ed_izm_cod').IsNull) and (not set_not_print_ed_izm) then
            // не пусто и нет принудительной печати пустоты
            array_data[row, 4] := SP_Table.FieldByName('ed_izm_cod').AsString
          else
            array_data[row, 4] := '---';

          if (not SP_Table.FieldByName('ed_izm_name').IsNull) and (not set_not_print_ed_izm) then
            // не пусто и нет принудительной печати пустоты
            array_data[row, 5] := SP_Table.FieldByName('ed_izm_name').AsString
          else
            array_data[row, 5] := '---';

          if (not SP_Table.FieldByName('quantity').IsNull) and (not set_not_print_ed_izm) then // не пусто и нет принудительной печати пустоты
            array_data[row, 6] := SP_Table.FieldByName('quantity').AsFloat
          else
            array_data[row, 6] := '---';

          if (not SP_Table.FieldByName('price_ed_izm').IsNull) and (not set_not_print_ed_izm) then // не пусто и нет принудительной печати пустоты
            array_data[row, 7] := SP_Table.FieldByName('price_ed_izm').AsCurrency
          else
            if set_print_empty_ed_izm then // печатаем ---, только если не стоит печать пустого поля
              array_data[row, 7] := ''
            else
              array_data[row, 7] := '---';

          if not SP_Table.FieldByName('cost_without_nds').IsNull then
            array_data[row, 8] := SP_Table.FieldByName('cost_without_nds').AsFloat
          else
            array_data[row, 8] := '---';

          if not SP_Table.FieldByName('aktciz').IsNull then
            array_data[row, 9] := SP_Table.FieldByName('aktciz').AsCurrency
          else
            if not SP_Table.FieldByName('cost_without_nds').IsNull then
              array_data[row, 9] := 'без акциза'   // письмо Литвяк от 19.07.2017
            else
              array_data[row, 9] := '---';         // если Сумма без НДС пустая, то и акциз не выводим

          array_data[row, 10] := '''' + Q_NDS.Lookup('inf_obj_id', SP_Table.FieldByName('tax_rate_id').AsInteger, 'inf_obj_name');

          if not SP_Table.FieldByName('tax_sum').IsNull then
            array_data[row, 11] := SP_Table.FieldByName('tax_sum').AsFloat
          else
            array_data[row, 11] := '---';

          if not SP_Table.FieldByName('cost_with_nds').IsNull then
            array_data[row, 12] := SP_Table.FieldByName('cost_with_nds').AsFloat
          else
            array_data[row, 12] := '---';

          if SP_Table.FieldByName('state_cod').AsString = '' then
            array_data[row, 13] := '---'
          else
            array_data[row, 13] := SP_Table.FieldByName('state_cod').AsString;

          if SP_Table.FieldByName('state_name').AsString = '' then
            array_data[row, 14] := '---'
          else
            array_data[row, 14] := SP_Table.FieldByName('state_name').AsString;

          if SP_Table.FieldByName('num_customs_declaration').AsString = '' then
            array_data[row, 15] := '---'
          else
            array_data[row, 15] := SP_Table.FieldByName('num_customs_declaration').AsString;

          inc(row, 1);

          SP_Table.Next;
        end;

        ShowTextMessage('Осталось '+ IntToStr(Q_InvoiceScore.RecordCount - i) + ' счетов-фактур...'#10'Этап 2/3: Вывод данных', False);

        if row > 1 then row := row - 1;

        // Расширим на нужное число строк
        if SP_Table.RecordCount > 2 then begin
            exWks.Rows['26:' + IntToStr(SP_Table.RecordCount + 23)].Insert;
            exWks.Rows['25:25'].Copy;
            exWks.Rows['26:' + IntToStr(SP_Table.RecordCount + 23)].PasteSpecial(1);
        end else if SP_Table.RecordCount < 2 then begin
            exWks.Rows['26:26'].Delete;
        end;

        // Вывод данных
        exWks.Range[exWks.Cells[25, 2], exWks.Cells[row + 24, 16]].Value := array_data;
        VarClear(array_data);

        ShowTextMessage('Осталось '+ IntToStr(Q_InvoiceScore.RecordCount - i) + ' счетов-фактур...'#10'Этап 3/3: Выравнивание наименований', False);
        // Выравнивание наименования услуги
        width1 := exWks.Columns[2].ColumnWidth;
        allwidth := exWks.Columns[2].ColumnWidth + 0.71 + exWks.Columns[3].ColumnWidth;
        exWks.Columns[2].ColumnWidth := allwidth;
        exWks.Range['B25:C' + IntToStr(24 + row)].UnMerge;
        exWks.Range['B25:C' + IntToStr(24 + row)].WrapText := True;
        exWks.Range['B25:C' + IntToStr(24 + row)].Rows.AutoFit;
        exWks.Range['B25:C' + IntToStr(24 + row)].Merge(True);
        exWks.Columns[2].ColumnWidth := width1;

        // Печать строк основного с-ф
      end else begin
        // Печать строк корректировочного с-ф
        // Суммы - меняем формулы, только при необходимости
        if set_type_total then begin
          Q_NDS.Locate('inf_obj_id', SP_Table.FieldByName('tax_rate_id').AsInteger, []);
          exWks.Range['M33'].Value := '=ROUND(RC[-3]*(' + IntToStr(Q_NDS.FieldByName('inf_obj_cod').AsInteger) + '/100),2)';
          exWks.Range['N33'].Value := '=RC[-4]+RC[-1]';
          exWks.Range['M34'].Value := '=ROUND(RC[-3]*(' + IntToStr(Q_NDS.FieldByName('inf_obj_cod').AsInteger) + '/100),2)';
          exWks.Range['N34'].Value := '=RC[-4]+RC[-1]';
        end;

        row := 25;
        while not SP_Table.Eof do begin
          ShowTextMessage('Осталось '+ IntToStr(Q_InvoiceScore.RecordCount - i) + ' счетов-фактур...'#10'Осталось ' + IntToStr(SP_Table.RecordCount - SP_Table.RecNo + 1) + ' строк...', False);

          if (SP_Table.FieldByName('cost_without_nds').AsCurrency <> 0)
          or (SP_Table.FieldByName('tax_sum').AsCurrency <> 0)
          or (SP_Table.FieldByName('cost_with_nds').AsCurrency <> 0) then begin

          if row > 25 then begin
            exWks.Rows[IntToStr(row + 0) + ':' + IntToStr(row + 3)].Insert;
            exWks.Rows[IntToStr(row + 4) + ':' + IntToStr(row + 7)].Copy;
            exWks.Rows[IntToStr(row + 0) + ':' + IntToStr(row + 3)].PasteSpecial(1);
          end;

          exWks.Range['B' + IntToStr(row)].Value := SP_Table.FieldByName('name_service').AsString;
          AutoFitMergeCell(exWks.Range['B' + IntToStr(row)]);

          exWks.Range['E' + IntToStr(row)].Value := '---';
          exWks.Range['E' + IntToStr(row + 1)].Value := '---';

          if (not SP_Table.FieldByName('old_ed_izm_cod').IsNull) and (not set_not_print_ed_izm) then
            // не пусто и нет принудительной печати пустоты
            exWks.Range['F' + IntToStr(row)].Value := SP_Table.FieldByName('old_ed_izm_cod').AsString
          else
            exWks.Range['F' + IntToStr(row)].Value := '---';

          if (not SP_Table.FieldByName('ed_izm_cod').IsNull) and (not set_not_print_ed_izm) then
            // не пусто и нет принудительной печати пустоты
            exWks.Range['F' + IntToStr(row + 1)].Value := SP_Table.FieldByName('ed_izm_cod').AsString
          else
            exWks.Range['F' + IntToStr(row + 1)].Value := '---';

          if (not SP_Table.FieldByName('old_ed_izm_name').IsNull) and (not set_not_print_ed_izm) then
            // не пусто и нет принудительной печати пустоты
            exWks.Range['G' + IntToStr(row)].Value := SP_Table.FieldByName('old_ed_izm_name').AsString
          else
            exWks.Range['G' + IntToStr(row)].Value := '---';

          if (not SP_Table.FieldByName('ed_izm_name').IsNull) and (not set_not_print_ed_izm) then
            // не пусто и нет принудительной печати пустоты
            exWks.Range['G' + IntToStr(row + 1)].Value := SP_Table.FieldByName('ed_izm_name').AsString
          else
            exWks.Range['G' + IntToStr(row + 1)].Value := '---';

          if (not SP_Table.FieldByName('old_quantity').IsNull) and (not set_not_print_ed_izm) then // не пусто и нет принудительной печати пустоты
            exWks.Range['H' + IntToStr(row)].Value := SP_Table.FieldByName('old_quantity').AsFloat
          else
            exWks.Range['H' + IntToStr(row)].Value := '---';

          if (not SP_Table.FieldByName('quantity').IsNull) and (not set_not_print_ed_izm) then // не пусто и нет принудительной печати пустоты
            exWks.Range['H' + IntToStr(row + 1)].Value := SP_Table.FieldByName('quantity').AsFloat
          else
            exWks.Range['H' + IntToStr(row + 1)].Value := '---';

          if (not SP_Table.FieldByName('old_price_ed_izm').IsNull) and (not set_not_print_ed_izm) then // не пусто и нет принудительной печати пустоты
            exWks.Range['I' + IntToStr(row)].Value := SP_Table.FieldByName('old_price_ed_izm').AsCurrency
          else
            if set_print_empty_ed_izm then // печатаем ---, только если не стоит печать пустого поля
              exWks.Range['I' + IntToStr(row)].Value := ''
            else
              exWks.Range['I' + IntToStr(row)].Value := '---';

          if (not SP_Table.FieldByName('price_ed_izm').IsNull) and (not set_not_print_ed_izm) then // не пусто и нет принудительной печати пустоты
            exWks.Range['I' + IntToStr(row + 1)].Value := SP_Table.FieldByName('price_ed_izm').AsCurrency
          else
            if set_print_empty_ed_izm then // печатаем ---, только если не стоит печать пустого поля
              exWks.Range['I' + IntToStr(row + 1)].Value := ''
            else
              exWks.Range['I' + IntToStr(row + 1)].Value := '---';

          exWks.Range['J' + IntToStr(row)].Value := SP_Table.FieldByName('old_cost_without_nds').AsCurrency;
          exWks.Range['J' + IntToStr(row + 1)].Value := SP_Table.FieldByName('old_cost_without_nds').AsCurrency + SP_Table.FieldByName('cost_without_nds').AsCurrency;

          if (SP_Table.FieldByName('old_aktciz').AsCurrency <> 0) then
            exWks.Range['K' + IntToStr(row)].Value := SP_Table.FieldByName('old_aktciz').AsCurrency
          else
            exWks.Range['K' + IntToStr(row)].Value := 'без акциза';

          if (SP_Table.FieldByName('old_aktciz').AsCurrency + SP_Table.FieldByName('aktciz').AsCurrency <> 0) then
            exWks.Range['K' + IntToStr(row + 1)].Value := SP_Table.FieldByName('old_aktciz').AsCurrency + SP_Table.FieldByName('aktciz').AsCurrency
          else
            exWks.Range['K' + IntToStr(row + 1)].Value := 'без акциза';

          // Если Ставка НДС = "НДС исчисляется налоговым агентом", то Сумма налога и стоимость с налогом - пустые
          // Задание ID = 13063041, 26.03.2018, Кутилина Т.
          // При расчета корр счет-фактуры суммы всегда не пустые (0 - ноль), а значит нам надо их корректно напечатать
          exWks.Range['L' + IntToStr(row)].Value := '''' + Q_NDS.Lookup('inf_obj_id', SP_Table.FieldByName('old_tax_rate_id').AsInteger, 'inf_obj_name');
          exWks.Range['L' + IntToStr(row + 1)].Value := '''' + Q_NDS.Lookup('inf_obj_id', SP_Table.FieldByName('tax_rate_id').AsInteger, 'inf_obj_name');

          if Q_NDS.Lookup('inf_obj_id', SP_Table.FieldByName('old_tax_rate_id').AsInteger, 'inf_obj_name_full') = '00.900' then begin
            exWks.Range['M' + IntToStr(row)].Value := '---';
            exWks.Range['N' + IntToStr(row)].Value := '---';
          end else begin
            exWks.Range['M' + IntToStr(row)].Value := SP_Table.FieldByName('old_tax_sum').AsCurrency;
            exWks.Range['N' + IntToStr(row)].Value := SP_Table.FieldByName('old_cost_with_nds').AsCurrency;
          end;

          if Q_NDS.Lookup('inf_obj_id', SP_Table.FieldByName('tax_rate_id').AsInteger, 'inf_obj_name_full') = '00.900' then begin
            exWks.Range['M' + IntToStr(row + 1)].Value := '---';
            exWks.Range['N' + IntToStr(row + 1)].Value := '---';
          end else begin
            exWks.Range['M' + IntToStr(row + 1)].Value := SP_Table.FieldByName('old_tax_sum').AsCurrency + SP_Table.FieldByName('tax_sum').AsCurrency;
            exWks.Range['N' + IntToStr(row + 1)].Value := SP_Table.FieldByName('old_cost_with_nds').AsCurrency + SP_Table.FieldByName('cost_with_nds').AsCurrency;
          end;

          exWks.Rows[IntToStr(row + 0) + ':' + IntToStr(row + 3)].EntireRow.AutoFit;

          inc(row, 4);

          end;

          SP_Table.Next;
        end;
        exWks.Rows[IntToStr(row + 0) + ':' + IntToStr(row + 3)].Delete;
        // Печать строк корректировочного с-ф
      end;

      //------------------------------------------------------------
      // Добавляем в CA ШК
      BarCode.object_id := 59; // Счет-фактура
      BarCode.date      := Q_InvoiceScore.FieldByName('score_date').AsDateTime;
      BarCode.global_id := invoice_score_id;
      BarCode.user_id   := Q_Users.FieldByName('users_id').AsInteger;
      PrintBarCode2of5(BarCode, exWks, NULL, connect);
      //-------------------------------------------------------------
      exWks.Select;
      exWks.Range['A1'].Select;

      Q_InvoiceScore.Next;
    end;
// ----------------------------------------------------------
    // удалим шаблонные листы
    exApp.DisplayAlerts := False;
    exWkb.WorkSheets[1].Delete;
    exWkb.WorkSheets[1].Delete;
    exApp.DisplayAlerts := True;

    exWks1 := exWkb.WorkSheets[1];
    exWks1.Select;
    exApp.CutCopyMode := False;

    Q_InvoiceScore.Free;
    Q_Users.Free;
    SP_Table.Free;
    Q_NDS.Free;
    Q_Firm_TaxAgent.Free;

    // для ускорения - отключимся от принтера
    try
      exApp.Calculation := -4105;
    except
    end;

    ShowTextMessage;
    if set_print2file then begin
      exWkb.SaveCopyAs(file_name);
      exWkb.Saved := True;
      exApp.Quit;
    end else begin
      exApp.Visible := True;
    end;

    exWks := Null;
    exWkb := Null;
    exApp := Null;
    Screen.Cursor := crDefault;
end;

procedure PrintInvoiceScoreUPD_2013_11(str_invoice_score_id: string; Ftype_score: integer; connect: TADOConnection; file_name: string = '');
// file_name: string = ''
// если параметр отсутсвует, то просто выводим в Excel, а если задано имя файла, то молча сохраняем
var   exApp, exWks, exWkb   : Variant;
      exWks1                : Variant;
      Q_InvoiceScore        : TADOQuery;
      SP_Table              : TADOStoredProc;
      Q_Users               : TADOQuery;
      Q_NDS                 : TADOQuery;
      i, row, j             : integer;

      allwidth              : Double;
      width1                : Double;

      invoice_score_id      : integer;
      contract_id           : integer;
      str_score_cod         : string;
      BarCode               : TmyBarCode;

      set_print_comment     : boolean;
      set_print_empty_ed_izm: boolean;
      set_not_print_ed_izm  : boolean;
      set_print_contract    : boolean;
      set_type_total        : boolean;
      str_print_comment     : string;

      set_score_corr        : boolean;
      set_print2file        : boolean;

      array_data            : Variant;
begin
    set_print2file := (file_name <> '');

    Screen.Cursor := crHourglass;

    ShowTextMessage('Запуск сервера автоматизации...', False);

    exApp := CreateOleObject('Excel.Application');
    exWkb := exApp.Workbooks.Add(GetDocBlob(connect, 4711, 9, True)); // 'УПД.xls'
    exWks := exWkb.WorkSheets[1];

    // для ускорения - отключимся от принтера
    try
      exApp.Calculation := -4135;
    except
    end;

    ShowTextMessage('Формирование счетов-фактур...', set_print2file);

    Q_InvoiceScore := TADOQuery.Create(nil);
    Q_InvoiceScore.Connection := connect;
    Q_InvoiceScore.SQL.Add('SELECT s.*,');
    Q_InvoiceScore.SQL.Add('	old_score_cod = p.score_cod,');
    Q_InvoiceScore.SQL.Add('	old_score_date = p.score_date,');
    Q_InvoiceScore.SQL.Add('	old_correction_cod = p.correction_cod,');
    Q_InvoiceScore.SQL.Add('	old_correction_date = p.correction_date,');
    Q_InvoiceScore.SQL.Add('	old_parent_id = p.parent_id,');
    Q_InvoiceScore.SQL.Add('	acts_comment = (SELECT TOP 1 a.acts_comment FROM view_ACTS a JOIN ACTS_INVOICE_SCORE a_s ON a.acts_id = a_s.acts_id AND a.set_printcomment = 1 AND a_s.invoice_score_id = s.invoice_score_id)');
    Q_InvoiceScore.SQL.Add('INTO #tmp');
    Q_InvoiceScore.SQL.Add('FROM view_invoice_score s');
    Q_InvoiceScore.SQL.Add('LEFT JOIN invoice_score p');
    Q_InvoiceScore.SQL.Add('ON s.parent_id = p.invoice_score_id');
    Q_InvoiceScore.SQL.Add('WHERE s.invoice_score_id in (SELECT cod FROM dbo.StrToTbl(''' + str_invoice_score_id + ''', default))');
    Q_InvoiceScore.SQL.Add('');
    Q_InvoiceScore.SQL.Add('WHILE @@ROWCOUNT > 0 BEGIN');
    Q_InvoiceScore.SQL.Add('  UPDATE tmp');
    Q_InvoiceScore.SQL.Add('  SET');
    Q_InvoiceScore.SQL.Add('   	old_score_cod = p.score_cod,');
    Q_InvoiceScore.SQL.Add('	  old_score_date = p.score_date,');
    Q_InvoiceScore.SQL.Add('	  old_correction_cod = p.correction_cod,');
    Q_InvoiceScore.SQL.Add('	  old_correction_date = p.correction_date,');
    Q_InvoiceScore.SQL.Add('	  old_parent_id = p.parent_id');
    Q_InvoiceScore.SQL.Add('  FROM #tmp as tmp');
    Q_InvoiceScore.SQL.Add('  JOIN invoice_score p');
    Q_InvoiceScore.SQL.Add('  ON tmp.old_parent_id = p.invoice_score_id');
    Q_InvoiceScore.SQL.Add('END');
    Q_InvoiceScore.SQL.Add('');
    Q_InvoiceScore.SQL.Add('SELECT * FROM #tmp ORDER BY 1');
    Q_InvoiceScore.SQL.Add('DROP TABLE #tmp');
    Q_InvoiceScore.Open;

    Q_Users := TADOQuery.Create(nil);
    Q_Users.Connection := connect;
    Q_Users.SQL.Add('SELECT users_id FROM users WHERE users_name = system_user');
    Q_Users.Open;


    SP_Table := TADOStoredProc.Create(nil);
    SP_Table.Connection := connect;
    SP_Table.ProcedureName := 'sp_invoice_score_table_get';
    SP_Table.Parameters.Refresh;

    Q_NDS := TADOQuery.Create(nil);
    Q_NDS.Connection := connect;
    Q_NDS.SQL.Clear;
    Q_NDS.SQL.Add('SELECT * FROM inf_obj WHERE type_inf_id = -12');
    Q_NDS.Open;

    Q_InvoiceScore.First;
    for i := 0 to Q_InvoiceScore.RecordCount - 1 do begin
      ShowTextMessage('Осталось '+ IntToStr(Q_InvoiceScore.RecordCount - i) + ' счетов-фактур...', False);
      invoice_score_id := Q_InvoiceScore.FieldByName('invoice_score_id').AsInteger;

      // какую с-ф печатаем (обычную или корр.
      set_score_corr := not Q_InvoiceScore.FieldByName('parent_id').IsNull;

      // копируем лист в конец книги
      exWks := exWkb.WorkSheets[exWkb.WorkSheets.Count];
      exWks1:= exApp.ActiveWorkbook.WorkSheets[iif(set_score_corr, 2, 1)];
      exWks1.Copy(After := exWks);
      exWks := exWkb.WorkSheets[exWkb.WorkSheets.Count];

      contract_id := Q_InvoiceScore.FieldByName('contract_id').AsInteger;

      str_score_cod := Q_InvoiceScore.FieldByName('score_cod').AsString;
      str_score_cod := ReplaceStr(str_score_cod, '\', ' ');
      str_score_cod := ReplaceStr(str_score_cod, '/', ' ');
      str_score_cod := ReplaceStr(str_score_cod, '?', ' ');
      str_score_cod := ReplaceStr(str_score_cod, ':', ' ');
      str_score_cod := ReplaceStr(str_score_cod, '*', ' ');
      str_score_cod := ReplaceStr(str_score_cod, ']', ' ');
      str_score_cod := ReplaceStr(str_score_cod, '[', ' ');
      exWks.Name := str_score_cod;

      set_print_contract     := Q_InvoiceScore.FieldByName('set_print_contract').AsBoolean or Q_InvoiceScore.FieldByName('set_print_contract_full').AsBoolean;
      set_print_comment      := Q_InvoiceScore.FieldByName('set_print_comment').AsBoolean;
      set_print_empty_ed_izm := Q_InvoiceScore.FieldByName('set_print_empty_ed_izm').AsBoolean;
      set_not_print_ed_izm   := Q_InvoiceScore.FieldByName('set_not_print_ed_izm').AsBoolean;
      set_type_total         := Q_InvoiceScore.FieldByName('set_type_total').AsBoolean;

      // Шапка
      if not set_score_corr then
        exWks.PageSetup.RightFooter := VarToStr(
          '&8Универсальный передаточный документ. Счет-фактура ' +
          InvoiceScoreNumToString(
            Q_InvoiceScore.FieldByName('score_cod').Value,
            Q_InvoiceScore.FieldByName('score_date').Value
          ) +
          #10#10 + exWks.PageSetup.RightFooter)
      else
        exWks.PageSetup.RightFooter := VarToStr(
          '&8Универсальный корректировочный документ. Корректировочный счет-фактура ' +
          InvoiceScoreNumToString(
            Q_InvoiceScore.FieldByName('score_cod').Value,
            Q_InvoiceScore.FieldByName('score_date').Value
          ) +
          #10#10 + exWks.PageSetup.RightFooter);

      if Q_InvoiceScore.FieldByName('type_universal_trans_doc').IsNull then
        exWks.Range['E6'].Value := 1
      else
        exWks.Range['E6'].Value := Q_InvoiceScore.FieldByName('type_universal_trans_doc').AsInteger;

      if not set_score_corr then begin
        exWks.Range['R2'].Value := Q_InvoiceScore.FieldByName('score_cod').AsString;
        if not Q_InvoiceScore.FieldByName('score_date').IsNull then
          exWks.Range['AA2'].Value := FormatdateTime('dd.mm.yyyy г.', Q_InvoiceScore.FieldByName('score_date').Value);

        exWks.Range['R3'].Value := Q_InvoiceScore.FieldByName('correction_cod').AsString;
        if not Q_InvoiceScore.FieldByName('correction_date').IsNull then
          exWks.Range['AA3'].Value := FormatdateTime('dd.mm.yyyy г.', Q_InvoiceScore.FieldByName('correction_date').Value);
      end else begin
        exWks.Range['AA5'].Value := Q_InvoiceScore.FieldByName('score_cod').AsString;
        if not Q_InvoiceScore.FieldByName('score_date').IsNull then
          exWks.Range['AJ5'].Value := FormatdateTime('dd.mm.yyyy г.', Q_InvoiceScore.FieldByName('score_date').Value);

        exWks.Range['BN5'].Value := Q_InvoiceScore.FieldByName('correction_cod').AsString;
        if not Q_InvoiceScore.FieldByName('correction_date').IsNull then
          exWks.Range['BW5'].Value := FormatdateTime('dd.mm.yyyy г.', Q_InvoiceScore.FieldByName('correction_date').Value);

        exWks.Range['AA6'].Value := Q_InvoiceScore.FieldByName('old_score_cod').AsString;
        if not Q_InvoiceScore.FieldByName('old_score_date').IsNull then
          exWks.Range['AJ6'].Value := FormatdateTime('dd.mm.yyyy г.', Q_InvoiceScore.FieldByName('old_score_date').Value);

        exWks.Range['BN6'].Value := Q_InvoiceScore.FieldByName('old_correction_cod').AsString;
        if not Q_InvoiceScore.FieldByName('old_correction_date').IsNull then
          exWks.Range['BW6'].Value := FormatdateTime('dd.mm.yyyy г.', Q_InvoiceScore.FieldByName('old_correction_date').Value);
      end;

      if not set_score_corr then begin
        exWks.Range['Y5'].Value := Q_InvoiceScore.FieldByName('score_firm_self_name_full').AsString;
        AutoFitMergeCell(exWks.Range['Y5']);
        exWks.Range['Y6'].Value := Q_InvoiceScore.FieldByName('score_firm_self_address').AsString;
        AutoFitMergeCell(exWks.Range['Y6']);
        exWks.Range['Y7'].Value := Q_InvoiceScore.FieldByName('score_firm_self_inn_kpp').AsString;
        AutoFitMergeCell(exWks.Range['Y7']);
        // грузоотправитель, только для обычного с-ф
        exWks.Range['Y8'].Value := Q_InvoiceScore.FieldByName('score_firm_sender_name').AsString;
        AutoFitMergeCell(exWks.Range['Y8']);
        exWks.Range['Y9'].Value := Q_InvoiceScore.FieldByName('score_firm_reciver_name').AsString;
        AutoFitMergeCell(exWks.Range['Y9']);
        exWks.Range['Y10'].Value := ReplaceStr(Q_InvoiceScore.FieldByName('score_pay').AsString, #13#10, #10);
        AutoFitMergeCell(exWks.Range['Y10']);
      end else begin
        exWks.Range['Y8'].Value := Q_InvoiceScore.FieldByName('score_firm_self_name_full').AsString;
        AutoFitMergeCell(exWks.Range['Y5']);
        exWks.Range['Y9'].Value := Q_InvoiceScore.FieldByName('score_firm_self_address').AsString;
        AutoFitMergeCell(exWks.Range['Y6']);
        exWks.Range['Y10'].Value := Q_InvoiceScore.FieldByName('score_firm_self_inn_kpp').AsString;
        AutoFitMergeCell(exWks.Range['Y7']);
      end;

      exWks.Range['Y11'].Value := Q_InvoiceScore.FieldByName('score_firm_customer_name_full').AsString;
      AutoFitMergeCell(exWks.Range['Y11']);
      exWks.Range['Y12'].Value := Q_InvoiceScore.FieldByName('score_firm_customer_address').AsString;
      AutoFitMergeCell(exWks.Range['Y12']);
      exWks.Range['Y13'].Value := Q_InvoiceScore.FieldByName('score_firm_customer_inn_kpp').AsString;
      AutoFitMergeCell(exWks.Range['Y13']);
      exWks.Range['Y14'].Value := Q_InvoiceScore.FieldByName('wide_name').AsString + ', ' + Q_InvoiceScore.FieldByName('currency_cod').AsString;

      str_print_comment := '';
      if set_print_contract then // печатаем примечание
        str_print_comment := 'Договор ' + Q_InvoiceScore.FieldByName('score_contract_name').AsString;
      if set_print_contract and set_print_comment then // печатаем примечание
        str_print_comment := str_print_comment + #10;
      if set_print_comment then // печатаем примечание
        str_print_comment := str_print_comment + Q_InvoiceScore.FieldByName('score_comment').AsString;
      exWks.Range[VarToStr(iif(set_score_corr, 'O37', 'W28'))].Value := str_print_comment;
      AutoFitMergeCell(exWks.Range[VarToStr(iif(set_score_corr, 'O37', 'W28'))]);

      // Подписанты
      exWks.Range[VarToStr(iif(set_score_corr, 'AG30', 'AG23'))].Value :=
        '/ ' + Q_InvoiceScore.FieldByName('firm_director_name').AsString + ' /';

      exWks.Range[VarToStr(iif(set_score_corr, 'BS30', 'BS23'))].Value :=
        '/ ' + Q_InvoiceScore.FieldByName('firm_buh_name').AsString + ' /';

      // Если С/Ф подрядчика, то убираем подписантов
      if Ftype_score = 2 then begin
        exWks.Range[VarToStr(iif(set_score_corr, 'O37', 'W28'))].Value := NULL;
        exWks.Range[VarToStr(iif(set_score_corr, 'AG30', 'AG23'))].Value := null;
        exWks.Range[VarToStr(iif(set_score_corr, 'BS30', 'BS23'))].Value := null;
      end;
      // Подписанты

      SP_Table.Close;
      SP_Table.Parameters.ParamByName('@invoice_score_id').Value := invoice_score_id;
      SP_Table.Open;

      if not set_score_corr then begin
        // Печать строк основного с-ф
        // Суммы - меняем формулы, только при необходимости
        if set_type_total then begin
          Q_NDS.Locate('inf_obj_id', SP_Table.FieldByName('tax_rate_id').AsInteger, []);
          exWks.Range['BD21'].Value := '=ROUND(AO21*(' + IntToStr(Q_NDS.FieldByName('inf_obj_cod').AsInteger) + '/100),2)';
          exWks.Range['BJ21'].Value := '=AO21+BD21';
        end;

        row := 1;
        array_data := VarArrayCreate([1, iif(SP_Table.RecordCount = 0, 1, SP_Table.RecordCount), 1, 85], varVariant);
        while not SP_Table.Eof do begin
          ShowTextMessage('Осталось '+ IntToStr(Q_InvoiceScore.RecordCount - i) + ' счетов-фактур...'#10'Этап 1/3: Осталось ' + IntToStr(SP_Table.RecordCount - SP_Table.RecNo + 1) + ' строк...', False);
          array_data[row, 1] := SP_Table.RecNo;
          array_data[row, 3] := '---';

          array_data[row, 9] := SP_Table.FieldByName('name_service').AsString;

          if (not SP_Table.FieldByName('ed_izm_cod').IsNull) and (not set_not_print_ed_izm) then
            // не пусто и нет принудительной печати пустоты
            array_data[row, 23] := SP_Table.FieldByName('ed_izm_cod').AsString
          else
            array_data[row, 23] := '---';

          if (not SP_Table.FieldByName('ed_izm_name').IsNull) and (not set_not_print_ed_izm) then
            // не пусто и нет принудительной печати пустоты
            array_data[row, 25] := SP_Table.FieldByName('ed_izm_name').AsString
          else
            array_data[row, 25] := '---';

          if (not SP_Table.FieldByName('quantity').IsNull) and (not set_not_print_ed_izm) then // не пусто и нет принудительной печати пустоты
            array_data[row, 32] := SP_Table.FieldByName('quantity').AsFloat
          else
            array_data[row, 32] := '---';

          if (not SP_Table.FieldByName('price_ed_izm').IsNull) and (not set_not_print_ed_izm) then // не пусто и нет принудительной печати пустоты
            array_data[row, 36] := SP_Table.FieldByName('price_ed_izm').AsCurrency
          else
            if set_print_empty_ed_izm then // печатаем ---, только если не стоит печать пустого поля
              array_data[row, 36] := ''
            else
              array_data[row, 36] := '---';

          if not SP_Table.FieldByName('cost_without_nds').IsNull then
            array_data[row, 41] := SP_Table.FieldByName('cost_without_nds').AsFloat
          else
            array_data[row, 41] := '---';

          if not SP_Table.FieldByName('aktciz').IsNull then
            array_data[row, 48] := SP_Table.FieldByName('aktciz').AsCurrency
          else
            array_data[row, 48] := 'без акциза';

          array_data[row, 52] := '''' + Q_NDS.Lookup('inf_obj_id', SP_Table.FieldByName('tax_rate_id').AsInteger, 'inf_obj_name');

          if not SP_Table.FieldByName('tax_sum').IsNull then
            array_data[row, 56] := SP_Table.FieldByName('tax_sum').AsFloat
          else
            array_data[row, 56] := '---';

          if not SP_Table.FieldByName('cost_with_nds').IsNull then
            array_data[row, 62] := SP_Table.FieldByName('cost_with_nds').AsFloat
          else
            array_data[row, 62] := '---';

          if SP_Table.FieldByName('state_cod').AsString = '' then
            array_data[row, 69] := '---'
          else
            array_data[row, 69] := SP_Table.FieldByName('state_cod').AsString;

          if SP_Table.FieldByName('state_name').AsString = '' then
            array_data[row, 73] := '---'
          else
            array_data[row, 73] := SP_Table.FieldByName('state_name').AsString;

          if SP_Table.FieldByName('num_customs_declaration').AsString = '' then
            array_data[row, 80] := '---'
          else
            array_data[row, 80] := SP_Table.FieldByName('num_customs_declaration').AsString;

          inc(row, 1);

          SP_Table.Next;
        end;

        ShowTextMessage('Осталось '+ IntToStr(Q_InvoiceScore.RecordCount - i) + ' счетов-фактур...'#10'Этап 2/3: Вывод данных', False);

        if row > 1 then row := row - 1;

        // Расширим на нужное число строк
        if SP_Table.RecordCount > 2 then begin
            exWks.Rows['20:' + IntToStr(SP_Table.RecordCount + 17)].Insert;
            exWks.Rows['19:19'].Copy;
            exWks.Rows['20:' + IntToStr(SP_Table.RecordCount + 17)].PasteSpecial(1);
        end else if SP_Table.RecordCount < 2 then begin
            exWks.Rows['20:20'].Delete;
        end;

         // Вывод данных
        exWks.Range[exWks.Cells[19, 1], exWks.Cells[row + 18, 85]].Value := array_data;
        VarClear(array_data);

        ShowTextMessage('Осталось '+ IntToStr(Q_InvoiceScore.RecordCount - i) + ' счетов-фактур...'#10'Этап 3/3: Выравнивание наименований', False);

        // Выравнивание наименования услуги
        width1 := exWks.Columns[9].ColumnWidth;
        allwidth := width1;
        for j := 10 to 22 do
          allwidth := allwidth + 0.71 + exWks.Columns[j].ColumnWidth;
        exWks.Columns[9].ColumnWidth := allwidth;
        exWks.Range['I19:V' + IntToStr(18 + row)].UnMerge;
        exWks.Range['I19:V' + IntToStr(18 + row)].WrapText := True;
        exWks.Range['I19:V' + IntToStr(18 + row)].Rows.AutoFit;
        exWks.Range['I19:V' + IntToStr(18 + row)].Merge(True);
        exWks.Columns[9].ColumnWidth := width1;
        // Печать строк основного с-ф

        // Количество листов
        exWks.Range['A' + IntToStr(row + 22)].Value := exWks.PageSetup.Pages.Count;

      end else begin
        // Печать строк корректировочного с-ф
        // Суммы - меняем формулы, только при необходимости
        if set_type_total then begin
          Q_NDS.Locate('inf_obj_id', SP_Table.FieldByName('tax_rate_id').AsInteger, []);
          exWks.Range['BU27'].Value := '=ROUND(BF27*(' + IntToStr(Q_NDS.FieldByName('inf_obj_cod').AsInteger) + '/100),2)';
          exWks.Range['CA27'].Value := '=BF27+BU27';
          exWks.Range['BU28'].Value := '=ROUND(BF28*(' + IntToStr(Q_NDS.FieldByName('inf_obj_cod').AsInteger) + '/100),2)';
          exWks.Range['CA28'].Value := '=BF28+BU28';
        end;

        row := 19;
        while not SP_Table.Eof do begin
          ShowTextMessage('Осталось '+ IntToStr(Q_InvoiceScore.RecordCount - i) + ' счетов-фактур...'#10'Осталось ' + IntToStr(SP_Table.RecordCount - SP_Table.RecNo + 1) + ' строк...', False);

          if (SP_Table.FieldByName('cost_without_nds').AsCurrency <> 0)
          or (SP_Table.FieldByName('tax_sum').AsCurrency <> 0)
          or (SP_Table.FieldByName('cost_with_nds').AsCurrency <> 0) then begin

          if row > 19 then begin
            exWks.Rows[IntToStr(row + 0) + ':' + IntToStr(row + 3)].Insert;
            exWks.Rows[IntToStr(row + 4) + ':' + IntToStr(row + 7)].Copy;
            exWks.Rows[IntToStr(row + 0) + ':' + IntToStr(row + 3)].PasteSpecial(1);
          end;

          exWks.Range['A' + IntToStr(row)].Value := (row - 15) div 4;
          exWks.Range['C' + IntToStr(row)].Value := '---';

          exWks.Range['I' + IntToStr(row)].Value := SP_Table.FieldByName('name_service').AsString;
          AutoFitMergeCell(exWks.Range['I' + IntToStr(row)]);

          if (not SP_Table.FieldByName('old_ed_izm_cod').IsNull) and (not set_not_print_ed_izm) then
            // не пусто и нет принудительной печати пустоты
            exWks.Range['AN' + IntToStr(row)].Value := SP_Table.FieldByName('old_ed_izm_cod').AsString
          else
            exWks.Range['AN' + IntToStr(row)].Value := '---';

          if (not SP_Table.FieldByName('ed_izm_cod').IsNull) and (not set_not_print_ed_izm) then
            // не пусто и нет принудительной печати пустоты
            exWks.Range['AN' + IntToStr(row + 1)].Value := SP_Table.FieldByName('ed_izm_cod').AsString
          else
            exWks.Range['AN' + IntToStr(row + 1)].Value := '---';

          if (not SP_Table.FieldByName('old_ed_izm_name').IsNull) and (not set_not_print_ed_izm) then
            // не пусто и нет принудительной печати пустоты
            exWks.Range['AP' + IntToStr(row)].Value := SP_Table.FieldByName('old_ed_izm_name').AsString
          else
            exWks.Range['AP' + IntToStr(row)].Value := '---';

          if (not SP_Table.FieldByName('ed_izm_name').IsNull) and (not set_not_print_ed_izm) then
            // не пусто и нет принудительной печати пустоты
            exWks.Range['AP' + IntToStr(row + 1)].Value := SP_Table.FieldByName('ed_izm_name').AsString
          else
            exWks.Range['AP' + IntToStr(row + 1)].Value := '---';

          if (not SP_Table.FieldByName('old_quantity').IsNull) and (not set_not_print_ed_izm) then // не пусто и нет принудительной печати пустоты
            exWks.Range['AW' + IntToStr(row)].Value := SP_Table.FieldByName('old_quantity').AsFloat
          else
            exWks.Range['AW' + IntToStr(row)].Value := '---';

          if (not SP_Table.FieldByName('quantity').IsNull) and (not set_not_print_ed_izm) then // не пусто и нет принудительной печати пустоты
            exWks.Range['AW' + IntToStr(row + 1)].Value := SP_Table.FieldByName('quantity').AsFloat
          else
            exWks.Range['AW' + IntToStr(row + 1)].Value := '---';

          if (not SP_Table.FieldByName('old_price_ed_izm').IsNull) and (not set_not_print_ed_izm) then // не пусто и нет принудительной печати пустоты
            exWks.Range['BA' + IntToStr(row)].Value := SP_Table.FieldByName('old_price_ed_izm').AsCurrency
          else
            if set_print_empty_ed_izm then // печатаем ---, только если не стоит печать пустого поля
              exWks.Range['BA' + IntToStr(row)].Value := ''
            else
              exWks.Range['BA' + IntToStr(row)].Value := '---';

          if (not SP_Table.FieldByName('price_ed_izm').IsNull) and (not set_not_print_ed_izm) then // не пусто и нет принудительной печати пустоты
            exWks.Range['BA' + IntToStr(row + 1)].Value := SP_Table.FieldByName('price_ed_izm').AsCurrency
          else
            if set_print_empty_ed_izm then // печатаем ---, только если не стоит печать пустого поля
              exWks.Range['BA' + IntToStr(row + 1)].Value := ''
            else
              exWks.Range['BA' + IntToStr(row + 1)].Value := '---';

          exWks.Range['BF' + IntToStr(row)].Value := SP_Table.FieldByName('old_cost_without_nds').AsCurrency;
          exWks.Range['BF' + IntToStr(row + 1)].Value := SP_Table.FieldByName('old_cost_without_nds').AsCurrency + SP_Table.FieldByName('cost_without_nds').AsCurrency;

          if (SP_Table.FieldByName('old_aktciz').AsCurrency <> 0) then
            exWks.Range['BM' + IntToStr(row)].Value := SP_Table.FieldByName('old_aktciz').AsCurrency
          else
            exWks.Range['BM' + IntToStr(row)].Value := 'без акциза';

          if (SP_Table.FieldByName('old_aktciz').AsCurrency + SP_Table.FieldByName('aktciz').AsCurrency <> 0) then
            exWks.Range['BM' + IntToStr(row + 1)].Value := SP_Table.FieldByName('old_aktciz').AsCurrency + SP_Table.FieldByName('aktciz').AsCurrency
          else
            exWks.Range['BM' + IntToStr(row + 1)].Value := 'без акциза';

          exWks.Range['BQ' + IntToStr(row)].Value := '''' + Q_NDS.Lookup('inf_obj_id', SP_Table.FieldByName('old_tax_rate_id').AsInteger, 'inf_obj_name');
          exWks.Range['BQ' + IntToStr(row + 1)].Value := '''' + Q_NDS.Lookup('inf_obj_id', SP_Table.FieldByName('tax_rate_id').AsInteger, 'inf_obj_name');

          exWks.Range['BU' + IntToStr(row)].Value := SP_Table.FieldByName('old_tax_sum').AsCurrency;
          exWks.Range['BU' + IntToStr(row + 1)].Value := SP_Table.FieldByName('old_tax_sum').AsCurrency + SP_Table.FieldByName('tax_sum').AsCurrency;

          exWks.Range['CA' + IntToStr(row)].Value := SP_Table.FieldByName('old_cost_with_nds').AsCurrency;
          exWks.Range['CA' + IntToStr(row + 1)].Value := SP_Table.FieldByName('old_cost_with_nds').AsCurrency + SP_Table.FieldByName('cost_with_nds').AsCurrency;

          inc(row, 4);

          end;

          SP_Table.Next;
        end;
        exWks.Rows[IntToStr(row + 0) + ':' + IntToStr(row + 3)].Delete;
        // Печать строк корректировочного с-ф

        // Количество листов
        if row = 19 then inc(row, 4);
        exWks.Range['A' + IntToStr(row + 4)].Value := exWks.PageSetup.Pages.Count;
      end;

      //------------------------------------------------------------
      // Добавляем в CA ШК
      BarCode.object_id := 59; // Счет-фактура
      BarCode.date      := Q_InvoiceScore.FieldByName('score_date').AsDateTime;
      BarCode.global_id := invoice_score_id;
      BarCode.user_id   := Q_Users.FieldByName('users_id').AsInteger;
      PrintBarCode2of5(BarCode, exWks, NULL, connect);
      //-------------------------------------------------------------

      exWks.Select;
      exWks.Range['A1'].Select;

      Q_InvoiceScore.Next;
    end;
// ----------------------------------------------------------
    // удалим шаблонные листы
    exApp.DisplayAlerts := False;
    exWkb.WorkSheets[1].Delete;
    exWkb.WorkSheets[1].Delete;
    exApp.DisplayAlerts := True;

    exWks1 := exWkb.WorkSheets[1];
    exWks1.Select;
    exApp.CutCopyMode := False;

    Q_InvoiceScore.Free;
    Q_Users.Free;
    SP_Table.Free;
    Q_NDS.Free;

    // для ускорения - отключимся от принтера
    try
      exApp.Calculation := -4105;
    except
    end;

    ShowTextMessage;
    if set_print2file then begin
      exWkb.SaveCopyAs(file_name);
      exWkb.Saved := True;
      exApp.Quit;
    end else begin
      exApp.Visible := True;
    end;

    exWks := Null;
    exWkb := Null;
    exApp := Null;
    Screen.Cursor := crDefault;
end;

procedure PrintInvoiceScoreUPD_2017_07(str_invoice_score_id: string; Ftype_score: integer; connect: TADOConnection; file_name: string = '');
// file_name: string = ''
// если параметр отсутсвует, то просто выводим в Excel, а если задано имя файла, то молча сохраняем
var   exApp, exWks, exWkb   : Variant;
      exWks1                : Variant;
      Q_InvoiceScore        : TADOQuery;
      SP_Table              : TADOStoredProc;
      Q_Users               : TADOQuery;
      Q_NDS                 : TADOQuery;
      i, row, j             : integer;

      allwidth              : Double;
      width1                : Double;

      invoice_score_id      : integer;
      contract_id           : integer;
      str_score_cod         : string;
      BarCode               : TmyBarCode;

      set_print_comment     : boolean;
      set_print_empty_ed_izm: boolean;
      set_not_print_ed_izm  : boolean;
      set_print_contract    : boolean;
      set_type_total        : boolean;
      str_print_comment     : string;

      set_score_corr        : boolean;
      set_print2file        : boolean;

      array_data            : Variant;
begin
    set_print2file := (file_name <> '');

    Screen.Cursor := crHourglass;

    ShowTextMessage('Запуск сервера автоматизации...', False);

    exApp := CreateOleObject('Excel.Application');
    exWkb := exApp.Workbooks.Add(GetDocBlob(connect, 4712, 9, True)); // 'УПД.xls'
    exWks := exWkb.WorkSheets[1];

    // для ускорения - отключимся от принтера
    try
      exApp.Calculation := -4135;
    except
    end;

    ShowTextMessage('Формирование счетов-фактур...', set_print2file);

    Q_InvoiceScore := TADOQuery.Create(nil);
    Q_InvoiceScore.Connection := connect;
    Q_InvoiceScore.SQL.Add('SELECT s.*,');
    Q_InvoiceScore.SQL.Add('	old_score_cod = p.score_cod,');
    Q_InvoiceScore.SQL.Add('	old_score_date = p.score_date,');
    Q_InvoiceScore.SQL.Add('	old_correction_cod = p.correction_cod,');
    Q_InvoiceScore.SQL.Add('	old_correction_date = p.correction_date,');
    Q_InvoiceScore.SQL.Add('	old_parent_id = p.parent_id,');
    Q_InvoiceScore.SQL.Add('	acts_comment = (SELECT TOP 1 a.acts_comment FROM view_ACTS a JOIN ACTS_INVOICE_SCORE a_s ON a.acts_id = a_s.acts_id AND a.set_printcomment = 1 AND a_s.invoice_score_id = s.invoice_score_id)');
    Q_InvoiceScore.SQL.Add('INTO #tmp');
    Q_InvoiceScore.SQL.Add('FROM view_invoice_score s');
    Q_InvoiceScore.SQL.Add('LEFT JOIN invoice_score p');
    Q_InvoiceScore.SQL.Add('ON s.parent_id = p.invoice_score_id');
    Q_InvoiceScore.SQL.Add('WHERE s.invoice_score_id in (SELECT cod FROM dbo.StrToTbl(''' + str_invoice_score_id + ''', default))');
    Q_InvoiceScore.SQL.Add('');
    Q_InvoiceScore.SQL.Add('WHILE @@ROWCOUNT > 0 BEGIN');
    Q_InvoiceScore.SQL.Add('  UPDATE tmp');
    Q_InvoiceScore.SQL.Add('  SET');
    Q_InvoiceScore.SQL.Add('   	old_score_cod = p.score_cod,');
    Q_InvoiceScore.SQL.Add('	  old_score_date = p.score_date,');
    Q_InvoiceScore.SQL.Add('	  old_correction_cod = p.correction_cod,');
    Q_InvoiceScore.SQL.Add('	  old_correction_date = p.correction_date,');
    Q_InvoiceScore.SQL.Add('	  old_parent_id = p.parent_id');
    Q_InvoiceScore.SQL.Add('  FROM #tmp as tmp');
    Q_InvoiceScore.SQL.Add('  JOIN invoice_score p');
    Q_InvoiceScore.SQL.Add('  ON tmp.old_parent_id = p.invoice_score_id');
    Q_InvoiceScore.SQL.Add('END');
    Q_InvoiceScore.SQL.Add('');
    Q_InvoiceScore.SQL.Add('SELECT * FROM #tmp ORDER BY 1');
    Q_InvoiceScore.SQL.Add('DROP TABLE #tmp');
    Q_InvoiceScore.Open;

    Q_Users := TADOQuery.Create(nil);
    Q_Users.Connection := connect;
    Q_Users.SQL.Add('SELECT users_id FROM users WHERE users_name = system_user');
    Q_Users.Open;


    SP_Table := TADOStoredProc.Create(nil);
    SP_Table.Connection := connect;
    SP_Table.ProcedureName := 'sp_invoice_score_table_get';
    SP_Table.Parameters.Refresh;

    Q_NDS := TADOQuery.Create(nil);
    Q_NDS.Connection := connect;
    Q_NDS.SQL.Clear;
    Q_NDS.SQL.Add('SELECT * FROM inf_obj WHERE type_inf_id = -12');
    Q_NDS.Open;

    Q_InvoiceScore.First;
    for i := 0 to Q_InvoiceScore.RecordCount - 1 do begin
      ShowTextMessage('Осталось '+ IntToStr(Q_InvoiceScore.RecordCount - i) + ' счетов-фактур...', False);
      invoice_score_id := Q_InvoiceScore.FieldByName('invoice_score_id').AsInteger;

      // какую с-ф печатаем (обычную или корр.
      set_score_corr := not Q_InvoiceScore.FieldByName('parent_id').IsNull;

      // копируем лист в конец книги
      exWks := exWkb.WorkSheets[exWkb.WorkSheets.Count];
      exWks1:= exApp.ActiveWorkbook.WorkSheets[iif(set_score_corr, 2, 1)];
      exWks1.Copy(After := exWks);
      exWks := exWkb.WorkSheets[exWkb.WorkSheets.Count];

      contract_id := Q_InvoiceScore.FieldByName('contract_id').AsInteger;

      str_score_cod := Q_InvoiceScore.FieldByName('score_cod').AsString;
      str_score_cod := ReplaceStr(str_score_cod, '\', ' ');
      str_score_cod := ReplaceStr(str_score_cod, '/', ' ');
      str_score_cod := ReplaceStr(str_score_cod, '?', ' ');
      str_score_cod := ReplaceStr(str_score_cod, ':', ' ');
      str_score_cod := ReplaceStr(str_score_cod, '*', ' ');
      str_score_cod := ReplaceStr(str_score_cod, ']', ' ');
      str_score_cod := ReplaceStr(str_score_cod, '[', ' ');
      exWks.Name := str_score_cod;

      set_print_contract     := Q_InvoiceScore.FieldByName('set_print_contract').AsBoolean or Q_InvoiceScore.FieldByName('set_print_contract_full').AsBoolean;
      set_print_comment      := Q_InvoiceScore.FieldByName('set_print_comment').AsBoolean;
      set_print_empty_ed_izm := Q_InvoiceScore.FieldByName('set_print_empty_ed_izm').AsBoolean;
      set_not_print_ed_izm   := Q_InvoiceScore.FieldByName('set_not_print_ed_izm').AsBoolean;
      set_type_total         := Q_InvoiceScore.FieldByName('set_type_total').AsBoolean;

      // Шапка
      if not set_score_corr then
        exWks.PageSetup.RightFooter := VarToStr(
          '&8Универсальный передаточный документ. Счет-фактура ' +
          InvoiceScoreNumToString(
            Q_InvoiceScore.FieldByName('score_cod').Value,
            Q_InvoiceScore.FieldByName('score_date').Value
          ) +
          #10#10 + exWks.PageSetup.RightFooter)
      else
        exWks.PageSetup.RightFooter := VarToStr(
          '&8Универсальный корректировочный документ. Корректировочный счет-фактура ' +
          InvoiceScoreNumToString(
            Q_InvoiceScore.FieldByName('score_cod').Value,
            Q_InvoiceScore.FieldByName('score_date').Value
          ) +
          #10#10 + exWks.PageSetup.RightFooter);

      if Q_InvoiceScore.FieldByName('type_universal_trans_doc').IsNull then
        exWks.Range['E6'].Value := 1
      else
        exWks.Range['E6'].Value := Q_InvoiceScore.FieldByName('type_universal_trans_doc').AsInteger;

      if not set_score_corr then begin
        exWks.Range['R2'].Value := Q_InvoiceScore.FieldByName('score_cod').AsString;
        if not Q_InvoiceScore.FieldByName('score_date').IsNull then
          exWks.Range['AA2'].Value := FormatdateTime('dd.mm.yyyy г.', Q_InvoiceScore.FieldByName('score_date').Value);

        exWks.Range['R3'].Value := Q_InvoiceScore.FieldByName('correction_cod').AsString;
        if not Q_InvoiceScore.FieldByName('correction_date').IsNull then
          exWks.Range['AA3'].Value := FormatdateTime('dd.mm.yyyy г.', Q_InvoiceScore.FieldByName('correction_date').Value);
      end else begin
        exWks.Range['AA5'].Value := Q_InvoiceScore.FieldByName('score_cod').AsString;
        if not Q_InvoiceScore.FieldByName('score_date').IsNull then
          exWks.Range['AJ5'].Value := FormatdateTime('dd.mm.yyyy г.', Q_InvoiceScore.FieldByName('score_date').Value);

        exWks.Range['BN5'].Value := Q_InvoiceScore.FieldByName('correction_cod').AsString;
        if not Q_InvoiceScore.FieldByName('correction_date').IsNull then
          exWks.Range['BW5'].Value := FormatdateTime('dd.mm.yyyy г.', Q_InvoiceScore.FieldByName('correction_date').Value);

        exWks.Range['AA6'].Value := Q_InvoiceScore.FieldByName('old_score_cod').AsString;
        if not Q_InvoiceScore.FieldByName('old_score_date').IsNull then
          exWks.Range['AJ6'].Value := FormatdateTime('dd.mm.yyyy г.', Q_InvoiceScore.FieldByName('old_score_date').Value);

        exWks.Range['BN6'].Value := Q_InvoiceScore.FieldByName('old_correction_cod').AsString;
        if not Q_InvoiceScore.FieldByName('old_correction_date').IsNull then
          exWks.Range['BW6'].Value := FormatdateTime('dd.mm.yyyy г.', Q_InvoiceScore.FieldByName('old_correction_date').Value);
      end;

      if not set_score_corr then begin
        exWks.Range['Y5'].Value := Q_InvoiceScore.FieldByName('score_firm_self_name_full').AsString;
        AutoFitMergeCell(exWks.Range['Y5']);
        exWks.Range['Y6'].Value := Q_InvoiceScore.FieldByName('score_firm_self_address').AsString;
        AutoFitMergeCell(exWks.Range['Y6']);
        exWks.Range['Y7'].Value := Q_InvoiceScore.FieldByName('score_firm_self_inn_kpp').AsString;
        AutoFitMergeCell(exWks.Range['Y7']);
        // грузоотправитель, только для обычного с-ф
        exWks.Range['Y8'].Value := Q_InvoiceScore.FieldByName('score_firm_sender_name').AsString;
        AutoFitMergeCell(exWks.Range['Y8']);
        exWks.Range['Y9'].Value := Q_InvoiceScore.FieldByName('score_firm_reciver_name').AsString;
        AutoFitMergeCell(exWks.Range['Y9']);
        exWks.Range['Y10'].Value := ReplaceStr(Q_InvoiceScore.FieldByName('score_pay').AsString, #13#10, #10);
        AutoFitMergeCell(exWks.Range['Y10']);
      end else begin
        exWks.Range['Y8'].Value := Q_InvoiceScore.FieldByName('score_firm_self_name_full').AsString;
        AutoFitMergeCell(exWks.Range['Y5']);
        exWks.Range['Y9'].Value := Q_InvoiceScore.FieldByName('score_firm_self_address').AsString;
        AutoFitMergeCell(exWks.Range['Y6']);
        exWks.Range['Y10'].Value := Q_InvoiceScore.FieldByName('score_firm_self_inn_kpp').AsString;
        AutoFitMergeCell(exWks.Range['Y7']);
      end;

      exWks.Range['Y11'].Value := Q_InvoiceScore.FieldByName('score_firm_customer_name_full').AsString;
      AutoFitMergeCell(exWks.Range['Y11']);
      exWks.Range['Y12'].Value := Q_InvoiceScore.FieldByName('score_firm_customer_address').AsString;
      AutoFitMergeCell(exWks.Range['Y12']);
      exWks.Range['Y13'].Value := Q_InvoiceScore.FieldByName('score_firm_customer_inn_kpp').AsString;
      AutoFitMergeCell(exWks.Range['Y13']);
      exWks.Range['Y14'].Value := Q_InvoiceScore.FieldByName('wide_name').AsString + ', ' + Q_InvoiceScore.FieldByName('currency_cod').AsString;
      exWks.Range['AL15'].Value := Q_InvoiceScore.FieldByName('score_ID_state_contract').AsString;

      str_print_comment := '';
      if set_print_contract then // печатаем примечание
        str_print_comment := 'Договор ' + Q_InvoiceScore.FieldByName('score_contract_name').AsString;
      if set_print_contract and set_print_comment then // печатаем примечание
        str_print_comment := str_print_comment + #10;
      if set_print_comment then // печатаем примечание
        str_print_comment := str_print_comment + Q_InvoiceScore.FieldByName('score_comment').AsString;
      exWks.Range[VarToStr(iif(set_score_corr, 'O38', 'W29'))].Value := str_print_comment;
      AutoFitMergeCell(exWks.Range[VarToStr(iif(set_score_corr, 'O38', 'W29'))]);

      // Подписанты
      exWks.Range[VarToStr(iif(set_score_corr, 'AG31', 'AG24'))].Value :=
        '/ ' + Q_InvoiceScore.FieldByName('firm_director_name').AsString + ' /';

      exWks.Range[VarToStr(iif(set_score_corr, 'BS31', 'BS24'))].Value :=
        '/ ' + Q_InvoiceScore.FieldByName('firm_buh_name').AsString + ' /';

      // Если С/Ф подрядчика, то убираем подписантов
      if Ftype_score = 2 then begin
        exWks.Range[VarToStr(iif(set_score_corr, 'O38', 'W29'))].Value := NULL;
        exWks.Range[VarToStr(iif(set_score_corr, 'AG31', 'AG24'))].Value := null;
        exWks.Range[VarToStr(iif(set_score_corr, 'BS31', 'BS24'))].Value := null;
      end;
      // Подписанты

      SP_Table.Close;
      SP_Table.Parameters.ParamByName('@invoice_score_id').Value := invoice_score_id;
      SP_Table.Open;

      if not set_score_corr then begin
        // Печать строк основного с-ф
        // Суммы - меняем формулы, только при необходимости
        if set_type_total then begin
          Q_NDS.Locate('inf_obj_id', SP_Table.FieldByName('tax_rate_id').AsInteger, []);
          exWks.Range['BD22'].Value := '=ROUND(AO22*(' + IntToStr(Q_NDS.FieldByName('inf_obj_cod').AsInteger) + '/100),2)';
          exWks.Range['BJ22'].Value := '=AO22+BD22';
        end;

        row := 1;
        array_data := VarArrayCreate([1, iif(SP_Table.RecordCount = 0, 1, SP_Table.RecordCount), 1, 85], varVariant);
        while not SP_Table.Eof do begin
          ShowTextMessage('Осталось '+ IntToStr(Q_InvoiceScore.RecordCount - i) + ' счетов-фактур...'#10'Этап 1/3: Осталось ' + IntToStr(SP_Table.RecordCount - SP_Table.RecNo + 1) + ' строк...', False);
          array_data[row, 1] := SP_Table.RecNo;
          array_data[row, 3] := '---';

          array_data[row, 9] := SP_Table.FieldByName('name_service').AsString;

          if (not SP_Table.FieldByName('ed_izm_cod').IsNull) and (not set_not_print_ed_izm) then
            // не пусто и нет принудительной печати пустоты
            array_data[row, 23] := SP_Table.FieldByName('ed_izm_cod').AsString
          else
            array_data[row, 23] := '---';

          if (not SP_Table.FieldByName('ed_izm_name').IsNull) and (not set_not_print_ed_izm) then
            // не пусто и нет принудительной печати пустоты
            array_data[row, 25] := SP_Table.FieldByName('ed_izm_name').AsString
          else
            array_data[row, 25] := '---';

          if (not SP_Table.FieldByName('quantity').IsNull) and (not set_not_print_ed_izm) then // не пусто и нет принудительной печати пустоты
            array_data[row, 32] := SP_Table.FieldByName('quantity').AsFloat
          else
            array_data[row, 32] := '---';

          if (not SP_Table.FieldByName('price_ed_izm').IsNull) and (not set_not_print_ed_izm) then // не пусто и нет принудительной печати пустоты
            array_data[row, 36] := SP_Table.FieldByName('price_ed_izm').AsCurrency
          else
            if set_print_empty_ed_izm then // печатаем ---, только если не стоит печать пустого поля
              array_data[row, 36] := ''
            else
              array_data[row, 36] := '---';

          if not SP_Table.FieldByName('cost_without_nds').IsNull then
            array_data[row, 41] := SP_Table.FieldByName('cost_without_nds').AsFloat
          else
            array_data[row, 41] := '---';

          if not SP_Table.FieldByName('aktciz').IsNull then
            array_data[row, 48] := SP_Table.FieldByName('aktciz').AsCurrency
          else
            array_data[row, 48] := 'без акциза';

          array_data[row, 52] := '''' + Q_NDS.Lookup('inf_obj_id', SP_Table.FieldByName('tax_rate_id').AsInteger, 'inf_obj_name');

          if not SP_Table.FieldByName('tax_sum').IsNull then
            array_data[row, 56] := SP_Table.FieldByName('tax_sum').AsFloat
          else
            array_data[row, 56] := '---';

          if not SP_Table.FieldByName('cost_with_nds').IsNull then
            array_data[row, 62] := SP_Table.FieldByName('cost_with_nds').AsFloat
          else
            array_data[row, 62] := '---';

          if SP_Table.FieldByName('state_cod').AsString = '' then
            array_data[row, 69] := '---'
          else
            array_data[row, 69] := SP_Table.FieldByName('state_cod').AsString;

          if SP_Table.FieldByName('state_name').AsString = '' then
            array_data[row, 73] := '---'
          else
            array_data[row, 73] := SP_Table.FieldByName('state_name').AsString;

          if SP_Table.FieldByName('num_customs_declaration').AsString = '' then
            array_data[row, 80] := '---'
          else
            array_data[row, 80] := SP_Table.FieldByName('num_customs_declaration').AsString;

          inc(row, 1);

          SP_Table.Next;
        end;

        ShowTextMessage('Осталось '+ IntToStr(Q_InvoiceScore.RecordCount - i) + ' счетов-фактур...'#10'Этап 2/3: Вывод данных', False);

        if row > 1 then row := row - 1;

        // Расширим на нужное число строк
        if SP_Table.RecordCount > 2 then begin
            exWks.Rows['21:' + IntToStr(SP_Table.RecordCount + 18)].Insert;
            exWks.Rows['20:20'].Copy;
            exWks.Rows['21:' + IntToStr(SP_Table.RecordCount + 18)].PasteSpecial(1);
        end else if SP_Table.RecordCount < 2 then begin
            exWks.Rows['21:21'].Delete;
        end;

         // Вывод данных
        exWks.Range[exWks.Cells[20, 1], exWks.Cells[row + 19, 85]].Value := array_data;
        VarClear(array_data);

        ShowTextMessage('Осталось '+ IntToStr(Q_InvoiceScore.RecordCount - i) + ' счетов-фактур...'#10'Этап 3/3: Выравнивание наименований', False);

        // Выравнивание наименования услуги
        width1 := exWks.Columns[9].ColumnWidth;
        allwidth := width1;
        for j := 10 to 22 do
          allwidth := allwidth + 0.71 + exWks.Columns[j].ColumnWidth;
        exWks.Columns[9].ColumnWidth := allwidth;
        exWks.Range['I20:V' + IntToStr(19 + row)].UnMerge;
        exWks.Range['I20:V' + IntToStr(19 + row)].WrapText := True;
        exWks.Range['I20:V' + IntToStr(19 + row)].Rows.AutoFit;
        exWks.Range['I20:V' + IntToStr(19 + row)].Merge(True);
        exWks.Columns[9].ColumnWidth := width1;
        // Печать строк основного с-ф

        // Количество листов
        exWks.Range['A' + IntToStr(row + 23)].Value := exWks.PageSetup.Pages.Count;
      end else begin
        // Печать строк корректировочного с-ф
        // Суммы - меняем формулы, только при необходимости
        if set_type_total then begin
          Q_NDS.Locate('inf_obj_id', SP_Table.FieldByName('tax_rate_id').AsInteger, []);
          exWks.Range['BU28'].Value := '=ROUND(BF28*(' + IntToStr(Q_NDS.FieldByName('inf_obj_cod').AsInteger) + '/100),2)';
          exWks.Range['CA28'].Value := '=BF28+BU28';
          exWks.Range['BU29'].Value := '=ROUND(BF29*(' + IntToStr(Q_NDS.FieldByName('inf_obj_cod').AsInteger) + '/100),2)';
          exWks.Range['CA29'].Value := '=BF29+BU29';
        end;

        row := 20;
        while not SP_Table.Eof do begin
          ShowTextMessage('Осталось '+ IntToStr(Q_InvoiceScore.RecordCount - i) + ' счетов-фактур...'#10'Осталось ' + IntToStr(SP_Table.RecordCount - SP_Table.RecNo + 1) + ' строк...', False);

          if (SP_Table.FieldByName('cost_without_nds').AsCurrency <> 0)
          or (SP_Table.FieldByName('tax_sum').AsCurrency <> 0)
          or (SP_Table.FieldByName('cost_with_nds').AsCurrency <> 0) then begin

          if row > 20 then begin
            exWks.Rows[IntToStr(row + 0) + ':' + IntToStr(row + 3)].Insert;
            exWks.Rows[IntToStr(row + 4) + ':' + IntToStr(row + 7)].Copy;
            exWks.Rows[IntToStr(row + 0) + ':' + IntToStr(row + 3)].PasteSpecial(1);
          end;

          exWks.Range['A' + IntToStr(row)].Value := (row - 16) div 4;
          exWks.Range['C' + IntToStr(row)].Value := '---';

          exWks.Range['I' + IntToStr(row)].Value := SP_Table.FieldByName('name_service').AsString;
          AutoFitMergeCell(exWks.Range['I' + IntToStr(row)]);

          if (not SP_Table.FieldByName('old_ed_izm_cod').IsNull) and (not set_not_print_ed_izm) then
            // не пусто и нет принудительной печати пустоты
            exWks.Range['AN' + IntToStr(row)].Value := SP_Table.FieldByName('old_ed_izm_cod').AsString
          else
            exWks.Range['AN' + IntToStr(row)].Value := '---';

          if (not SP_Table.FieldByName('ed_izm_cod').IsNull) and (not set_not_print_ed_izm) then
            // не пусто и нет принудительной печати пустоты
            exWks.Range['AN' + IntToStr(row + 1)].Value := SP_Table.FieldByName('ed_izm_cod').AsString
          else
            exWks.Range['AN' + IntToStr(row + 1)].Value := '---';

          if (not SP_Table.FieldByName('old_ed_izm_name').IsNull) and (not set_not_print_ed_izm) then
            // не пусто и нет принудительной печати пустоты
            exWks.Range['AP' + IntToStr(row)].Value := SP_Table.FieldByName('old_ed_izm_name').AsString
          else
            exWks.Range['AP' + IntToStr(row)].Value := '---';

          if (not SP_Table.FieldByName('ed_izm_name').IsNull) and (not set_not_print_ed_izm) then
            // не пусто и нет принудительной печати пустоты
            exWks.Range['AP' + IntToStr(row + 1)].Value := SP_Table.FieldByName('ed_izm_name').AsString
          else
            exWks.Range['AP' + IntToStr(row + 1)].Value := '---';

          if (not SP_Table.FieldByName('old_quantity').IsNull) and (not set_not_print_ed_izm) then // не пусто и нет принудительной печати пустоты
            exWks.Range['AW' + IntToStr(row)].Value := SP_Table.FieldByName('old_quantity').AsFloat
          else
            exWks.Range['AW' + IntToStr(row)].Value := '---';

          if (not SP_Table.FieldByName('quantity').IsNull) and (not set_not_print_ed_izm) then // не пусто и нет принудительной печати пустоты
            exWks.Range['AW' + IntToStr(row + 1)].Value := SP_Table.FieldByName('quantity').AsFloat
          else
            exWks.Range['AW' + IntToStr(row + 1)].Value := '---';

          if (not SP_Table.FieldByName('old_price_ed_izm').IsNull) and (not set_not_print_ed_izm) then // не пусто и нет принудительной печати пустоты
            exWks.Range['BA' + IntToStr(row)].Value := SP_Table.FieldByName('old_price_ed_izm').AsCurrency
          else
            if set_print_empty_ed_izm then // печатаем ---, только если не стоит печать пустого поля
              exWks.Range['BA' + IntToStr(row)].Value := ''
            else
              exWks.Range['BA' + IntToStr(row)].Value := '---';

          if (not SP_Table.FieldByName('price_ed_izm').IsNull) and (not set_not_print_ed_izm) then // не пусто и нет принудительной печати пустоты
            exWks.Range['BA' + IntToStr(row + 1)].Value := SP_Table.FieldByName('price_ed_izm').AsCurrency
          else
            if set_print_empty_ed_izm then // печатаем ---, только если не стоит печать пустого поля
              exWks.Range['BA' + IntToStr(row + 1)].Value := ''
            else
              exWks.Range['BA' + IntToStr(row + 1)].Value := '---';

          exWks.Range['BF' + IntToStr(row)].Value := SP_Table.FieldByName('old_cost_without_nds').AsCurrency;
          exWks.Range['BF' + IntToStr(row + 1)].Value := SP_Table.FieldByName('old_cost_without_nds').AsCurrency + SP_Table.FieldByName('cost_without_nds').AsCurrency;

          if (SP_Table.FieldByName('old_aktciz').AsCurrency <> 0) then
            exWks.Range['BM' + IntToStr(row)].Value := SP_Table.FieldByName('old_aktciz').AsCurrency
          else
            exWks.Range['BM' + IntToStr(row)].Value := 'без акциза';

          if (SP_Table.FieldByName('old_aktciz').AsCurrency + SP_Table.FieldByName('aktciz').AsCurrency <> 0) then
            exWks.Range['BM' + IntToStr(row + 1)].Value := SP_Table.FieldByName('old_aktciz').AsCurrency + SP_Table.FieldByName('aktciz').AsCurrency
          else
            exWks.Range['BM' + IntToStr(row + 1)].Value := 'без акциза';

          exWks.Range['BQ' + IntToStr(row)].Value := '''' + Q_NDS.Lookup('inf_obj_id', SP_Table.FieldByName('old_tax_rate_id').AsInteger, 'inf_obj_name');
          exWks.Range['BQ' + IntToStr(row + 1)].Value := '''' + Q_NDS.Lookup('inf_obj_id', SP_Table.FieldByName('tax_rate_id').AsInteger, 'inf_obj_name');

          exWks.Range['BU' + IntToStr(row)].Value := SP_Table.FieldByName('old_tax_sum').AsCurrency;
          exWks.Range['BU' + IntToStr(row + 1)].Value := SP_Table.FieldByName('old_tax_sum').AsCurrency + SP_Table.FieldByName('tax_sum').AsCurrency;

          exWks.Range['CA' + IntToStr(row)].Value := SP_Table.FieldByName('old_cost_with_nds').AsCurrency;
          exWks.Range['CA' + IntToStr(row + 1)].Value := SP_Table.FieldByName('old_cost_with_nds').AsCurrency + SP_Table.FieldByName('cost_with_nds').AsCurrency;

          inc(row, 4);

          end;

          SP_Table.Next;
        end;
        exWks.Rows[IntToStr(row + 0) + ':' + IntToStr(row + 3)].Delete;
        // Печать строк корректировочного с-ф

        // Количество листов
        if row = 20 then inc(row, 4);
        exWks.Range['A' + IntToStr(row + 4)].Value := exWks.PageSetup.Pages.Count;
      end;

      //------------------------------------------------------------
      // Добавляем в CA ШК
      BarCode.object_id := 59; // Счет-фактура
      BarCode.date      := Q_InvoiceScore.FieldByName('score_date').AsDateTime;
      BarCode.global_id := invoice_score_id;
      BarCode.user_id   := Q_Users.FieldByName('users_id').AsInteger;
      PrintBarCode2of5(BarCode, exWks, NULL, connect);
      //-------------------------------------------------------------

      exWks.Select;
      exWks.Range['A1'].Select;

      Q_InvoiceScore.Next;
    end;
// ----------------------------------------------------------
    // удалим шаблонные листы
    exApp.DisplayAlerts := False;
    exWkb.WorkSheets[1].Delete;
    exWkb.WorkSheets[1].Delete;
    exApp.DisplayAlerts := True;

    exWks1 := exWkb.WorkSheets[1];
    exWks1.Select;
    exApp.CutCopyMode := False;

    Q_InvoiceScore.Free;
    Q_Users.Free;
    SP_Table.Free;
    Q_NDS.Free;

    // для ускорения - отключимся от принтера
    try
      exApp.Calculation := -4105;
    except
    end;

    ShowTextMessage;
    if set_print2file then begin
      exWkb.SaveCopyAs(file_name);
      exWkb.Saved := True;
      exApp.Quit;
    end else begin
      exApp.Visible := True;
    end;

    exWks := Null;
    exWkb := Null;
    exApp := Null;
    Screen.Cursor := crDefault;
end;

procedure PrintInvoiceScoreUPD_2017_10(str_invoice_score_id: string; Ftype_score: integer; connect: TADOConnection; file_name: string = '');
// file_name: string = ''
// если параметр отсутсвует, то просто выводим в Excel, а если задано имя файла, то молча сохраняем
var   exApp, exWks, exWkb   : Variant;
      exWks1                : Variant;
      Q_InvoiceScore        : TADOQuery;
      SP_Table              : TADOStoredProc;
      Q_Users               : TADOQuery;
      Q_NDS                 : TADOQuery;
      Q_Nakl                : TADOQuery;
      i, row, j             : integer;

      allwidth              : Double;
      width1                : Double;

      invoice_score_id      : integer;
      contract_id           : integer;
      str_score_cod         : string;
      str_nakl              : string;
      BarCode               : TmyBarCode;

      set_print_comment     : boolean;
      set_print_empty_ed_izm: boolean;
      set_not_print_ed_izm  : boolean;
      set_print_contract    : boolean;
      set_type_total        : boolean;
      str_print_comment     : string;

      set_score_corr        : boolean;
      set_print2file        : boolean;

      array_data            : Variant;
begin
    set_print2file := (file_name <> '');

    Screen.Cursor := crHourglass;

    ShowTextMessage('Запуск сервера автоматизации...', False);

    exApp := CreateOleObject('Excel.Application');
    exWkb := exApp.Workbooks.Add(GetDocBlob(connect, 4713, 9, True)); // 'УПД.xls'
    exWks := exWkb.WorkSheets[1];

    // для ускорения - отключимся от принтера
    try
      exApp.Calculation := -4135;
    except
    end;

    ShowTextMessage('Формирование счетов-фактур...', set_print2file);

    Q_InvoiceScore := TADOQuery.Create(nil);
    Q_InvoiceScore.Connection := connect;
    Q_InvoiceScore.SQL.Add('SELECT s.*,');
    Q_InvoiceScore.SQL.Add('	old_score_cod = p.score_cod,');
    Q_InvoiceScore.SQL.Add('	old_score_date = p.score_date,');
    Q_InvoiceScore.SQL.Add('	old_correction_cod = p.correction_cod,');
    Q_InvoiceScore.SQL.Add('	old_correction_date = p.correction_date,');
    Q_InvoiceScore.SQL.Add('	old_parent_id = p.parent_id,');
    Q_InvoiceScore.SQL.Add('	acts_comment = (SELECT TOP 1 a.acts_comment FROM view_ACTS a JOIN ACTS_INVOICE_SCORE a_s ON a.acts_id = a_s.acts_id AND a.set_printcomment = 1 AND a_s.invoice_score_id = s.invoice_score_id)');
    Q_InvoiceScore.SQL.Add('INTO #tmp');
    Q_InvoiceScore.SQL.Add('FROM view_invoice_score s');
    Q_InvoiceScore.SQL.Add('LEFT JOIN invoice_score p');
    Q_InvoiceScore.SQL.Add('ON s.parent_id = p.invoice_score_id');
    Q_InvoiceScore.SQL.Add('WHERE s.invoice_score_id in (SELECT cod FROM dbo.StrToTbl(''' + str_invoice_score_id + ''', default))');
    Q_InvoiceScore.SQL.Add('');
    Q_InvoiceScore.SQL.Add('WHILE @@ROWCOUNT > 0 BEGIN');
    Q_InvoiceScore.SQL.Add('  UPDATE tmp');
    Q_InvoiceScore.SQL.Add('  SET');
    Q_InvoiceScore.SQL.Add('   	old_score_cod = p.score_cod,');
    Q_InvoiceScore.SQL.Add('	  old_score_date = p.score_date,');
    Q_InvoiceScore.SQL.Add('	  old_correction_cod = p.correction_cod,');
    Q_InvoiceScore.SQL.Add('	  old_correction_date = p.correction_date,');
    Q_InvoiceScore.SQL.Add('	  old_parent_id = p.parent_id');
    Q_InvoiceScore.SQL.Add('  FROM #tmp as tmp');
    Q_InvoiceScore.SQL.Add('  JOIN invoice_score p');
    Q_InvoiceScore.SQL.Add('  ON tmp.old_parent_id = p.invoice_score_id');
    Q_InvoiceScore.SQL.Add('END');
    Q_InvoiceScore.SQL.Add('');
    Q_InvoiceScore.SQL.Add('SELECT * FROM #tmp ORDER BY 1');
    Q_InvoiceScore.SQL.Add('DROP TABLE #tmp');
    Q_InvoiceScore.Open;

    Q_Users := TADOQuery.Create(nil);
    Q_Users.Connection := connect;
    Q_Users.SQL.Add('SELECT users_id FROM users WHERE users_name = system_user');
    Q_Users.Open;

    Q_Nakl := TADOQuery.Create(nil);
    Q_Nakl.Connection := connect;
    Q_Nakl.SQL.Add('SELECT DISTINCT num_document_pref, num_document');
    Q_Nakl.SQL.Add('FROM FACT ');
    Q_Nakl.SQL.Add('WHERE bargain_id IN (SELECT bargain_id FROM INVOICE_SCORE_TABLE WHERE invoice_score_id = :invoice_score_id)');
    Q_Nakl.SQL.Add('AND set_main = 1');

    SP_Table := TADOStoredProc.Create(nil);
    SP_Table.Connection := connect;
    SP_Table.ProcedureName := 'sp_invoice_score_table_get';
    SP_Table.Parameters.Refresh;

    Q_NDS := TADOQuery.Create(nil);
    Q_NDS.Connection := connect;
    Q_NDS.SQL.Clear;
    Q_NDS.SQL.Add('SELECT * FROM inf_obj WHERE type_inf_id = -12');
    Q_NDS.Open;

    Q_InvoiceScore.First;
    for i := 0 to Q_InvoiceScore.RecordCount - 1 do begin
      ShowTextMessage('Осталось '+ IntToStr(Q_InvoiceScore.RecordCount - i) + ' счетов-фактур...', False);
      invoice_score_id := Q_InvoiceScore.FieldByName('invoice_score_id').AsInteger;

      // какую с-ф печатаем (обычную или корр.
      set_score_corr := not Q_InvoiceScore.FieldByName('parent_id').IsNull;

      // копируем лист в конец книги
      exWks := exWkb.WorkSheets[exWkb.WorkSheets.Count];
      exWks1:= exApp.ActiveWorkbook.WorkSheets[iif(set_score_corr, 2, 1)];
      exWks1.Copy(After := exWks);
      exWks := exWkb.WorkSheets[exWkb.WorkSheets.Count];

      contract_id := Q_InvoiceScore.FieldByName('contract_id').AsInteger;

      str_score_cod := Q_InvoiceScore.FieldByName('score_cod').AsString;
      str_score_cod := ReplaceStr(str_score_cod, '\', ' ');
      str_score_cod := ReplaceStr(str_score_cod, '/', ' ');
      str_score_cod := ReplaceStr(str_score_cod, '?', ' ');
      str_score_cod := ReplaceStr(str_score_cod, ':', ' ');
      str_score_cod := ReplaceStr(str_score_cod, '*', ' ');
      str_score_cod := ReplaceStr(str_score_cod, ']', ' ');
      str_score_cod := ReplaceStr(str_score_cod, '[', ' ');
      exWks.Name := str_score_cod;

      set_print_contract     := Q_InvoiceScore.FieldByName('set_print_contract').AsBoolean or Q_InvoiceScore.FieldByName('set_print_contract_full').AsBoolean;
      set_print_comment      := Q_InvoiceScore.FieldByName('set_print_comment').AsBoolean;
      set_print_empty_ed_izm := Q_InvoiceScore.FieldByName('set_print_empty_ed_izm').AsBoolean;
      set_not_print_ed_izm   := Q_InvoiceScore.FieldByName('set_not_print_ed_izm').AsBoolean;
      set_type_total         := Q_InvoiceScore.FieldByName('set_type_total').AsBoolean;

      // Шапка
      if not set_score_corr then
        exWks.PageSetup.RightFooter := VarToStr(
          '&8Универсальный передаточный документ. Счет-фактура ' +
          InvoiceScoreNumToString(
            Q_InvoiceScore.FieldByName('score_cod').Value,
            Q_InvoiceScore.FieldByName('score_date').Value
          ) +
          #10#10 + exWks.PageSetup.RightFooter)
      else
        exWks.PageSetup.RightFooter := VarToStr(
          '&8Универсальный корректировочный документ. Корректировочный счет-фактура ' +
          InvoiceScoreNumToString(
            Q_InvoiceScore.FieldByName('score_cod').Value,
            Q_InvoiceScore.FieldByName('score_date').Value
          ) +
          #10#10 + exWks.PageSetup.RightFooter);

      if Q_InvoiceScore.FieldByName('type_universal_trans_doc').IsNull then
        exWks.Range['E6'].Value := 1
      else
        exWks.Range['E6'].Value := Q_InvoiceScore.FieldByName('type_universal_trans_doc').AsInteger;

      if not set_score_corr then begin
        exWks.Range['R2'].Value := Q_InvoiceScore.FieldByName('score_cod').AsString;
        if not Q_InvoiceScore.FieldByName('score_date').IsNull then
          exWks.Range['AA2'].Value := FormatdateTime('dd.mm.yyyy г.', Q_InvoiceScore.FieldByName('score_date').Value);

        exWks.Range['R3'].Value := Q_InvoiceScore.FieldByName('correction_cod').AsString;
        if not Q_InvoiceScore.FieldByName('correction_date').IsNull then
          exWks.Range['AA3'].Value := FormatdateTime('dd.mm.yyyy г.', Q_InvoiceScore.FieldByName('correction_date').Value);
      end else begin
        exWks.Range['AA5'].Value := Q_InvoiceScore.FieldByName('score_cod').AsString;
        if not Q_InvoiceScore.FieldByName('score_date').IsNull then
          exWks.Range['AJ5'].Value := FormatdateTime('dd.mm.yyyy г.', Q_InvoiceScore.FieldByName('score_date').Value);

        exWks.Range['BN5'].Value := Q_InvoiceScore.FieldByName('correction_cod').AsString;
        if not Q_InvoiceScore.FieldByName('correction_date').IsNull then
          exWks.Range['BW5'].Value := FormatdateTime('dd.mm.yyyy г.', Q_InvoiceScore.FieldByName('correction_date').Value);

        exWks.Range['AA6'].Value := Q_InvoiceScore.FieldByName('old_score_cod').AsString;
        if not Q_InvoiceScore.FieldByName('old_score_date').IsNull then
          exWks.Range['AJ6'].Value := FormatdateTime('dd.mm.yyyy г.', Q_InvoiceScore.FieldByName('old_score_date').Value);

        exWks.Range['BN6'].Value := Q_InvoiceScore.FieldByName('old_correction_cod').AsString;
        if not Q_InvoiceScore.FieldByName('old_correction_date').IsNull then
          exWks.Range['BW6'].Value := FormatdateTime('dd.mm.yyyy г.', Q_InvoiceScore.FieldByName('old_correction_date').Value);
      end;

      if not set_score_corr then begin
        exWks.Range['Y5'].Value := Q_InvoiceScore.FieldByName('score_firm_self_name_full').AsString;
        AutoFitMergeCell(exWks.Range['Y5']);
        exWks.Range['Y6'].Value := Q_InvoiceScore.FieldByName('score_firm_self_address').AsString;
        AutoFitMergeCell(exWks.Range['Y6']);
        exWks.Range['Y7'].Value := Q_InvoiceScore.FieldByName('score_firm_self_inn_kpp').AsString;
        AutoFitMergeCell(exWks.Range['Y7']);
        // грузоотправитель, только для обычного с-ф
        exWks.Range['Y8'].Value := Q_InvoiceScore.FieldByName('score_firm_sender_name').AsString;
        AutoFitMergeCell(exWks.Range['Y8']);
        exWks.Range['Y9'].Value := Q_InvoiceScore.FieldByName('score_firm_reciver_name').AsString;
        AutoFitMergeCell(exWks.Range['Y9']);
        exWks.Range['Y10'].Value := ReplaceStr(Q_InvoiceScore.FieldByName('score_pay').AsString, #13#10, #10);
        AutoFitMergeCell(exWks.Range['Y10']);
      end else begin
        exWks.Range['Y8'].Value := Q_InvoiceScore.FieldByName('score_firm_self_name_full').AsString;
        AutoFitMergeCell(exWks.Range['Y5']);
        exWks.Range['Y9'].Value := Q_InvoiceScore.FieldByName('score_firm_self_address').AsString;
        AutoFitMergeCell(exWks.Range['Y6']);
        exWks.Range['Y10'].Value := Q_InvoiceScore.FieldByName('score_firm_self_inn_kpp').AsString;
        AutoFitMergeCell(exWks.Range['Y7']);
      end;

      exWks.Range['Y11'].Value := Q_InvoiceScore.FieldByName('score_firm_customer_name_full').AsString;
      AutoFitMergeCell(exWks.Range['Y11']);
      exWks.Range['Y12'].Value := Q_InvoiceScore.FieldByName('score_firm_customer_address').AsString;
      AutoFitMergeCell(exWks.Range['Y12']);
      exWks.Range['Y13'].Value := Q_InvoiceScore.FieldByName('score_firm_customer_inn_kpp').AsString;
      AutoFitMergeCell(exWks.Range['Y13']);
      exWks.Range['Y14'].Value := Q_InvoiceScore.FieldByName('wide_name').AsString + ', ' + Q_InvoiceScore.FieldByName('currency_cod').AsString;
      exWks.Range['AR15'].Value := Q_InvoiceScore.FieldByName('score_ID_state_contract').AsString;

      str_print_comment := '';
      if set_print_contract then // печатаем примечание
        str_print_comment := 'Договор ' + Q_InvoiceScore.FieldByName('score_contract_name').AsString;
      if set_print_contract and set_print_comment then // печатаем примечание
        str_print_comment := str_print_comment + ' ';
      if set_print_comment then // печатаем примечание
        str_print_comment := str_print_comment + '(' + Q_InvoiceScore.FieldByName('score_comment').AsString + ')';
      exWks.Range[VarToStr(iif(set_score_corr, 'O38', 'W29'))].Value := str_print_comment;
      AutoFitMergeCell(exWks.Range[VarToStr(iif(set_score_corr, 'O38', 'W29'))]);

      // Подписанты
      if not set_score_corr then begin
        exWks.Range['AG24'].Value := '/ ' + Q_InvoiceScore.FieldByName('firm_director_name').AsString + ' /';
        if Q_InvoiceScore.FieldByName('firm_director_comment').AsString <> '' then
          exWks.Range['AG24'].Value := exWks.Range['AG24'].Value + ' '
            + Q_InvoiceScore.FieldByName('firm_director_comment').AsString;

        exWks.Range['BS24'].Value := '/ ' + Q_InvoiceScore.FieldByName('firm_buh_name').AsString + ' /';
        if Q_InvoiceScore.FieldByName('firm_buh_comment').AsString <> '' then
          exWks.Range['BS24'].Value := exWks.Range['BS24'].Value + ' '
            + Q_InvoiceScore.FieldByName('firm_buh_comment').AsString;

        exWks.Range['A34'].Value := Q_InvoiceScore.FieldByName('firm_seller_duty').AsString;
        exWks.Range['Z34'].Value := Q_InvoiceScore.FieldByName('firm_seller_name').AsString;
        if Q_InvoiceScore.FieldByName('firm_seller_comment').AsString <> '' then
          exWks.Range['Z34'].Value := exWks.Range['Z34'].Value + ' ' +
            Q_InvoiceScore.FieldByName('firm_seller_comment').AsString;

        exWks.Range['A41'].Value := Q_InvoiceScore.FieldByName('firm_director_duty').AsString;
        exWks.Range['Z41'].Value := Q_InvoiceScore.FieldByName('firm_director_name').AsString;
        if Q_InvoiceScore.FieldByName('firm_director_comment').AsString <> '' then
          exWks.Range['Z41'].Value := exWks.Range['Z41'].Value + ' '
            + Q_InvoiceScore.FieldByName('firm_director_comment').AsString;
      end else begin
        exWks.Range['AG31'].Value := '/ ' + Q_InvoiceScore.FieldByName('firm_director_name').AsString + ' /';
        if Q_InvoiceScore.FieldByName('firm_director_comment').AsString <> '' then
          exWks.Range['AG31'].Value := exWks.Range['AG31'].Value + ' '
            + Q_InvoiceScore.FieldByName('firm_director_comment').AsString;

        exWks.Range['BS31'].Value := '/ ' + Q_InvoiceScore.FieldByName('firm_buh_name').AsString + ' /';
        if Q_InvoiceScore.FieldByName('firm_buh_comment').AsString <> '' then
          exWks.Range['BS31'].Value := exWks.Range['BS31'].Value + ' '
            + Q_InvoiceScore.FieldByName('firm_buh_comment').AsString;

        exWks.Range['A49'].Value := Q_InvoiceScore.FieldByName('firm_director_duty').AsString;
        exWks.Range['Z49'].Value := Q_InvoiceScore.FieldByName('firm_director_name').AsString;
        if Q_InvoiceScore.FieldByName('firm_director_comment').AsString <> '' then
          exWks.Range['Z49'].Value := exWks.Range['Z49'].Value + ' '
            + Q_InvoiceScore.FieldByName('firm_director_comment').AsString;
      end;


      // Если С/Ф подрядчика, то убираем подписантов
      if Ftype_score = 2 then begin
        exWks.Range[VarToStr(iif(set_score_corr, 'O38', 'W29'))].Value := NULL;
        exWks.Range[VarToStr(iif(set_score_corr, 'AG31', 'AG24'))].Value := null;
        exWks.Range[VarToStr(iif(set_score_corr, 'BS31', 'BS24'))].Value := null;
      end;
      // Подписанты

      // ж/д накладная (поиск по перевозкам) - только для УПД (не для УКД)
      if not set_score_corr then begin
        Q_Nakl.Close;
        Q_Nakl.Parameters.ParamByName('invoice_score_id').Value := Q_InvoiceScore.FieldByName('invoice_score_id').AsInteger;
        Q_Nakl.Open;
        str_nakl := '';
        while not Q_Nakl.Eof do begin
          if str_nakl <> '' then str_nakl := str_nakl + ', ';
          str_nakl := str_nakl + Q_Nakl.FieldByName('num_document_pref').AsString + Q_Nakl.FieldByName('num_document').AsString;
          Q_Nakl.Next;
        end;
        if str_nakl <> '' then begin
          if Q_Nakl.RecordCount = 1 then str_nakl := 'ж/д накладная №' + str_nakl
          else str_nakl := 'ж/д накладные №№ ' + str_nakl;
          exWks.Range['Q31'].Value := str_nakl;
          AutoFitMergeCell(exWks.Range['Q31']);
        end;
      end;

      // ж/д накладная (поиск по перевозкам)

      SP_Table.Close;
      SP_Table.Parameters.ParamByName('@invoice_score_id').Value := invoice_score_id;
      SP_Table.Open;

      if not set_score_corr then begin
        // Печать строк основного с-ф
        // Суммы - меняем формулы, только при необходимости
        if set_type_total then begin
          Q_NDS.Locate('inf_obj_id', SP_Table.FieldByName('tax_rate_id').AsInteger, []);
          exWks.Range['BF22'].Value := '=ROUND(AQ22*(' + IntToStr(Q_NDS.FieldByName('inf_obj_cod').AsInteger) + '/100),2)';
          exWks.Range['BL22'].Value := '=AQ22+BF22';
        end;

        row := 1;
        array_data := VarArrayCreate([1, iif(SP_Table.RecordCount = 0, 1, SP_Table.RecordCount), 1, 85], varVariant);
        while not SP_Table.Eof do begin
          ShowTextMessage('Осталось '+ IntToStr(Q_InvoiceScore.RecordCount - i) + ' счетов-фактур...'#10'Этап 1/3: Осталось ' + IntToStr(SP_Table.RecordCount - SP_Table.RecNo + 1) + ' строк...', False);
          array_data[row, 1] := SP_Table.RecNo;
          if not SP_Table.FieldByName('service_cod').IsNull then
            array_data[row, 3] := SP_Table.FieldByName('service_cod').AsString
          else
            array_data[row, 3] := '---';

          array_data[row, 9] := SP_Table.FieldByName('name_service').AsString;
          array_data[row, 23] := '---';

          if (not SP_Table.FieldByName('ed_izm_cod').IsNull) and (not set_not_print_ed_izm) then
            // не пусто и нет принудительной печати пустоты
            array_data[row, 26] := SP_Table.FieldByName('ed_izm_cod').AsString
          else
            array_data[row, 26] := '---';

          if (not SP_Table.FieldByName('ed_izm_name').IsNull) and (not set_not_print_ed_izm) then
            // не пусто и нет принудительной печати пустоты
            array_data[row, 28] := SP_Table.FieldByName('ed_izm_name').AsString
          else
            array_data[row, 28] := '---';

          if (not SP_Table.FieldByName('quantity').IsNull) and (not set_not_print_ed_izm) then // не пусто и нет принудительной печати пустоты
            array_data[row, 34] := SP_Table.FieldByName('quantity').AsFloat
          else
            array_data[row, 34] := '---';

          if (not SP_Table.FieldByName('price_ed_izm').IsNull) and (not set_not_print_ed_izm) then // не пусто и нет принудительной печати пустоты
            array_data[row, 38] := SP_Table.FieldByName('price_ed_izm').AsCurrency
          else
            if set_print_empty_ed_izm then // печатаем ---, только если не стоит печать пустого поля
              array_data[row, 38] := ''
            else
              array_data[row, 38] := '---';

          if not SP_Table.FieldByName('cost_without_nds').IsNull then
            array_data[row, 43] := SP_Table.FieldByName('cost_without_nds').AsFloat
          else
            array_data[row, 43] := '---';

          if not SP_Table.FieldByName('aktciz').IsNull then
            array_data[row, 50] := SP_Table.FieldByName('aktciz').AsCurrency
          else
            if not SP_Table.FieldByName('cost_without_nds').IsNull then
              array_data[row, 50] := 'без акциза'   // письмо Литвяк от 19.07.2017
            else
              array_data[row, 50] := '---';         // если Сумма без НДС пустая, то и акциз не выводим

          array_data[row, 54] := '''' + Q_NDS.Lookup('inf_obj_id', SP_Table.FieldByName('tax_rate_id').AsInteger, 'inf_obj_name');

          if not SP_Table.FieldByName('tax_sum').IsNull then
            array_data[row, 58] := SP_Table.FieldByName('tax_sum').AsFloat
          else
            array_data[row, 58] := '---';

          if not SP_Table.FieldByName('cost_with_nds').IsNull then
            array_data[row, 64] := SP_Table.FieldByName('cost_with_nds').AsFloat
          else
            array_data[row, 64] := '---';

          if SP_Table.FieldByName('state_cod').AsString = '' then
            array_data[row, 71] := '---'
          else
            array_data[row, 71] := SP_Table.FieldByName('state_cod').AsString;

          if SP_Table.FieldByName('state_name').AsString = '' then
            array_data[row, 75] := '---'
          else
            array_data[row, 75] := SP_Table.FieldByName('state_name').AsString;

          if SP_Table.FieldByName('num_customs_declaration').AsString = '' then
            array_data[row, 80] := '---'
          else
            array_data[row, 80] := SP_Table.FieldByName('num_customs_declaration').AsString;

          inc(row, 1);

          SP_Table.Next;
        end;

        ShowTextMessage('Осталось '+ IntToStr(Q_InvoiceScore.RecordCount - i) + ' счетов-фактур...'#10'Этап 2/3: Вывод данных', False);

        if row > 1 then row := row - 1;

        // Расширим на нужное число строк
        if SP_Table.RecordCount > 2 then begin
            exWks.Rows['21:' + IntToStr(SP_Table.RecordCount + 18)].Insert;
            exWks.Rows['20:20'].Copy;
            exWks.Rows['21:' + IntToStr(SP_Table.RecordCount + 18)].PasteSpecial(1);
        end else if SP_Table.RecordCount < 2 then begin
            exWks.Rows['21:21'].Delete;
        end;

         // Вывод данных
        exWks.Range[exWks.Cells[20, 1], exWks.Cells[row + 19, 85]].Value := array_data;
        VarClear(array_data);

        ShowTextMessage('Осталось '+ IntToStr(Q_InvoiceScore.RecordCount - i) + ' счетов-фактур...'#10'Этап 3/3: Выравнивание наименований', False);

        // Выравнивание наименования услуги
        width1 := exWks.Columns[9].ColumnWidth;
        allwidth := width1;
        for j := 10 to 22 do
          allwidth := allwidth + 0.71 + exWks.Columns[j].ColumnWidth;
        exWks.Columns[9].ColumnWidth := allwidth;
        exWks.Range['I20:V' + IntToStr(19 + row)].UnMerge;
        exWks.Range['I20:V' + IntToStr(19 + row)].WrapText := True;
        exWks.Range['I20:V' + IntToStr(19 + row)].Rows.AutoFit;
        exWks.Range['I20:V' + IntToStr(19 + row)].Merge(True);
        exWks.Columns[9].ColumnWidth := width1;
        // Печать строк основного с-ф

        // Количество листов
        exWks.Range['A' + IntToStr(row + 23)].Value := exWks.PageSetup.Pages.Count;
      end else begin
        // Печать строк корректировочного с-ф
        // Суммы - меняем формулы, только при необходимости
        if set_type_total then begin
          Q_NDS.Locate('inf_obj_id', SP_Table.FieldByName('tax_rate_id').AsInteger, []);
          exWks.Range['BU28'].Value := '=ROUND(BF28*(' + IntToStr(Q_NDS.FieldByName('inf_obj_cod').AsInteger) + '/100),2)';
          exWks.Range['CA28'].Value := '=BF28+BU28';
          exWks.Range['BU29'].Value := '=ROUND(BF29*(' + IntToStr(Q_NDS.FieldByName('inf_obj_cod').AsInteger) + '/100),2)';
          exWks.Range['CA29'].Value := '=BF29+BU29';
        end;

        row := 20;
        while not SP_Table.Eof do begin
          ShowTextMessage('Осталось '+ IntToStr(Q_InvoiceScore.RecordCount - i) + ' счетов-фактур...'#10'Осталось ' + IntToStr(SP_Table.RecordCount - SP_Table.RecNo + 1) + ' строк...', False);

          if (SP_Table.FieldByName('cost_without_nds').AsCurrency <> 0)
          or (SP_Table.FieldByName('tax_sum').AsCurrency <> 0)
          or (SP_Table.FieldByName('cost_with_nds').AsCurrency <> 0) then begin

          if row > 20 then begin
            exWks.Rows[IntToStr(row + 0) + ':' + IntToStr(row + 3)].Insert;
            exWks.Rows[IntToStr(row + 4) + ':' + IntToStr(row + 7)].Copy;
            exWks.Rows[IntToStr(row + 0) + ':' + IntToStr(row + 3)].PasteSpecial(1);
          end;

          exWks.Range['A' + IntToStr(row)].Value := (row - 16) div 4;
          if not SP_Table.FieldByName('service_cod').IsNull then
            exWks.Range['C' + IntToStr(row)].Value := SP_Table.FieldByName('service_cod').AsString
          else
            exWks.Range['C' + IntToStr(row)].Value := '---';

          exWks.Range['I' + IntToStr(row)].Value := SP_Table.FieldByName('name_service').AsString;
          AutoFitMergeCell(exWks.Range['I' + IntToStr(row)]);

          exWks.Range['AL' + IntToStr(row)].Value := '---';
          exWks.Range['AL' + IntToStr(row + 1)].Value := '---';

          if (not SP_Table.FieldByName('old_ed_izm_cod').IsNull) and (not set_not_print_ed_izm) then
            // не пусто и нет принудительной печати пустоты
            exWks.Range['AO' + IntToStr(row)].Value := SP_Table.FieldByName('old_ed_izm_cod').AsString
          else
            exWks.Range['AO' + IntToStr(row)].Value := '---';

          if (not SP_Table.FieldByName('ed_izm_cod').IsNull) and (not set_not_print_ed_izm) then
            // не пусто и нет принудительной печати пустоты
            exWks.Range['AO' + IntToStr(row + 1)].Value := SP_Table.FieldByName('ed_izm_cod').AsString
          else
            exWks.Range['AO' + IntToStr(row + 1)].Value := '---';

          if (not SP_Table.FieldByName('old_ed_izm_name').IsNull) and (not set_not_print_ed_izm) then
            // не пусто и нет принудительной печати пустоты
            exWks.Range['AQ' + IntToStr(row)].Value := SP_Table.FieldByName('old_ed_izm_name').AsString
          else
            exWks.Range['AQ' + IntToStr(row)].Value := '---';

          if (not SP_Table.FieldByName('ed_izm_name').IsNull) and (not set_not_print_ed_izm) then
            // не пусто и нет принудительной печати пустоты
            exWks.Range['AQ' + IntToStr(row + 1)].Value := SP_Table.FieldByName('ed_izm_name').AsString
          else
            exWks.Range['AQ' + IntToStr(row + 1)].Value := '---';

          if (not SP_Table.FieldByName('old_quantity').IsNull) and (not set_not_print_ed_izm) then // не пусто и нет принудительной печати пустоты
            exWks.Range['AW' + IntToStr(row)].Value := SP_Table.FieldByName('old_quantity').AsFloat
          else
            exWks.Range['AW' + IntToStr(row)].Value := '---';

          if (not SP_Table.FieldByName('quantity').IsNull) and (not set_not_print_ed_izm) then // не пусто и нет принудительной печати пустоты
            exWks.Range['AW' + IntToStr(row + 1)].Value := SP_Table.FieldByName('quantity').AsFloat
          else
            exWks.Range['AW' + IntToStr(row + 1)].Value := '---';

          if (not SP_Table.FieldByName('old_price_ed_izm').IsNull) and (not set_not_print_ed_izm) then // не пусто и нет принудительной печати пустоты
            exWks.Range['BA' + IntToStr(row)].Value := SP_Table.FieldByName('old_price_ed_izm').AsCurrency
          else
            if set_print_empty_ed_izm then // печатаем ---, только если не стоит печать пустого поля
              exWks.Range['BA' + IntToStr(row)].Value := ''
            else
              exWks.Range['BA' + IntToStr(row)].Value := '---';

          if (not SP_Table.FieldByName('price_ed_izm').IsNull) and (not set_not_print_ed_izm) then // не пусто и нет принудительной печати пустоты
            exWks.Range['BA' + IntToStr(row + 1)].Value := SP_Table.FieldByName('price_ed_izm').AsCurrency
          else
            if set_print_empty_ed_izm then // печатаем ---, только если не стоит печать пустого поля
              exWks.Range['BA' + IntToStr(row + 1)].Value := ''
            else
              exWks.Range['BA' + IntToStr(row + 1)].Value := '---';

          exWks.Range['BF' + IntToStr(row)].Value := SP_Table.FieldByName('old_cost_without_nds').AsCurrency;
          exWks.Range['BF' + IntToStr(row + 1)].Value := SP_Table.FieldByName('old_cost_without_nds').AsCurrency + SP_Table.FieldByName('cost_without_nds').AsCurrency;

          if (SP_Table.FieldByName('old_aktciz').AsCurrency <> 0) then
            exWks.Range['BM' + IntToStr(row)].Value := SP_Table.FieldByName('old_aktciz').AsCurrency
          else
            exWks.Range['BM' + IntToStr(row)].Value := 'без акциза';

          if (SP_Table.FieldByName('old_aktciz').AsCurrency + SP_Table.FieldByName('aktciz').AsCurrency <> 0) then
            exWks.Range['BM' + IntToStr(row + 1)].Value := SP_Table.FieldByName('old_aktciz').AsCurrency + SP_Table.FieldByName('aktciz').AsCurrency
          else
            exWks.Range['BM' + IntToStr(row + 1)].Value := 'без акциза';

          // Если Ставка НДС = "НДС исчисляется налоговым агентом", то Сумма налога и стоимость с налогом - пустые
          // Задание ID = 13063041, 26.03.2018, Кутилина Т.
          // При расчета корр счет-фактуры суммы всегда не пустые (0 - ноль), а значит нам надо их корректно напечатать
          exWks.Range['BQ' + IntToStr(row)].Value := '''' + Q_NDS.Lookup('inf_obj_id', SP_Table.FieldByName('old_tax_rate_id').AsInteger, 'inf_obj_name');
          exWks.Range['BQ' + IntToStr(row + 1)].Value := '''' + Q_NDS.Lookup('inf_obj_id', SP_Table.FieldByName('tax_rate_id').AsInteger, 'inf_obj_name');

          if Q_NDS.Lookup('inf_obj_id', SP_Table.FieldByName('old_tax_rate_id').AsInteger, 'inf_obj_name_full') = '00.900' then begin
            exWks.Range['BU' + IntToStr(row)].Value := '---';
            exWks.Range['CA' + IntToStr(row)].Value := '---';
          end else begin
            exWks.Range['BU' + IntToStr(row)].Value := SP_Table.FieldByName('old_tax_sum').AsCurrency;
            exWks.Range['CA' + IntToStr(row)].Value := SP_Table.FieldByName('old_cost_with_nds').AsCurrency;
          end;

          if Q_NDS.Lookup('inf_obj_id', SP_Table.FieldByName('tax_rate_id').AsInteger, 'inf_obj_name_full') = '00.900' then begin
            exWks.Range['BU' + IntToStr(row + 1)].Value := '---';
            exWks.Range['CA' + IntToStr(row + 1)].Value := '---';
          end else begin
            exWks.Range['BU' + IntToStr(row + 1)].Value := SP_Table.FieldByName('old_tax_sum').AsCurrency + SP_Table.FieldByName('tax_sum').AsCurrency;
            exWks.Range['CA' + IntToStr(row + 1)].Value := SP_Table.FieldByName('old_cost_with_nds').AsCurrency + SP_Table.FieldByName('cost_with_nds').AsCurrency;
          end;

          inc(row, 4);

          end;

          SP_Table.Next;
        end;
        exWks.Rows[IntToStr(row + 0) + ':' + IntToStr(row + 3)].Delete;
        // Печать строк корректировочного с-ф

        // Количество листов
        if row = 20 then inc(row, 4);
        exWks.Range['A' + IntToStr(row + 4)].Value := exWks.PageSetup.Pages.Count;
      end;

      //------------------------------------------------------------
      // Добавляем в CA ШК
      BarCode.object_id := 59; // Счет-фактура
      BarCode.date      := Q_InvoiceScore.FieldByName('score_date').AsDateTime;
      BarCode.global_id := invoice_score_id;
      BarCode.user_id   := Q_Users.FieldByName('users_id').AsInteger;
      PrintBarCode2of5(BarCode, exWks, NULL, connect);
      //-------------------------------------------------------------

      exWks.Select;
      exWks.Range['A1'].Select;

      Q_InvoiceScore.Next;
    end;
// ----------------------------------------------------------
    // удалим шаблонные листы
    exApp.DisplayAlerts := False;
    exWkb.WorkSheets[1].Delete;
    exWkb.WorkSheets[1].Delete;
    exApp.DisplayAlerts := True;

    exWks1 := exWkb.WorkSheets[1];
    exWks1.Select;
    exApp.CutCopyMode := False;

    Q_InvoiceScore.Free;
    Q_Users.Free;
    SP_Table.Free;
    Q_NDS.Free;
    Q_Nakl.Free;

    // для ускорения - отключимся от принтера
    try
      exApp.Calculation := -4105;
    except
    end;

    ShowTextMessage;
    if set_print2file then begin
      exWkb.SaveCopyAs(file_name);
      exWkb.Saved := True;
      exApp.Quit;
    end else begin
      exApp.Visible := True;
    end;

    exWks := Null;
    exWkb := Null;
    exApp := Null;
    Screen.Cursor := crDefault;
end;

procedure CreateInvoiceScoreUPDFromActs(Cnn: TADOConnection; acts_id: integer; acts_type_cod: string);
type
  TFunc = function(AppHand: THandle; users_group_cod: string; global_id: integer; DocumentType: string; data_xml: TArray<Byte>; data_size: integer; ClientDS: TClientDataSet): variant;
  TFuncPdf = procedure(users_group_cod: string; print_form_id: integer; path : string);
var
  // Генерация печатной формы  --------------
  FPrintForm  : TFunc;
  FPrintFormPdf  : TFuncPdf;
  handle      : THandle;
  v           : Variant;
  mem_bytes   : TBytesStream;
  ClientDS    : TClientDataSet;

  save_path   : string;
  // ----------------------------------------
  sp_acts_modify : TADOStoredProc;

var doc                  : EDOXMLUniTrDoc.IXMLФайл;
    xml                  : TXMLDocument;
    i                    : integer;

    invoice_score_id     : integer;

    str_bargain_id       : string;

    Query                : TADOQuery;
    Query_score          : TADOQuery;
    Query_tmp            : TADOQuery;
    SP_Table             : TADOStoredProc;
    Q_NDS                : TADOQuery;

    acts_sum_without_nds : Double;
    acts_sum_nds         : Double;
    acts_sum_with_nds    : Double;
    acts_cnt             : Double;
    sum_without_nds      : Double;
    sum_nds              : Double;
    sum_with_nds         : Double;
    rate, nds_rate, cnt  : Double;

    ed_izm_cod           : string; // код ОКЕИ

    _GUID                : TGUID;

    _SL                                 : TStringList;
    _tmp_date                           : TDateTime;
    pp_num, pp_date                     : string;

    ClientDS_distance    : TClientDataSet;
begin
  if not MatchStr(acts_type_cod, ['233', '237', '238']) then begin
    Application.MessageBox('Выбран не верный тип акта', 'Внимание', MB_OK or MB_ICONERROR);
    exit;
  end;

  // Счет-Фактура (УПД)
  fmInvoiceScoreAdd := TfmInvoiceScoreAdd.Create(Application, True, 0);
  fmInvoiceScoreAdd._InsertUPDByActs := acts_id;
  if fmInvoiceScoreAdd.ShowModal <> mrOk then begin
    Application.MessageBox('Счет-Фактура не сохранена. Формирование УПД невозможно.', 'Внимание', MB_OK or MB_ICONERROR);
    exit;
  end;
  invoice_score_id := fmInvoiceScoreAdd._GetInvoiceScoreID;

  // Заполнение данных
  Query_score := TADOQuery.Create(nil);
  Query_score.Connection := Cnn;
  Query_score.SQL.Add('SELECT * ');
  Query_score.SQL.Add(', self_edo_id = (SELECT TOP 1 edo_id FROM firm WHERE firm.firm_id = firm_self)');
  Query_score.SQL.Add(', customer_edo_id = (SELECT TOP 1 edo_id FROM firm WHERE firm.firm_id = firm_customer)');
  Query_score.SQL.Add('FROM view_invoice_score WHERE invoice_score_id = ' + IntToStr(invoice_score_id));
  Query_score.Open;

  if Query_score.FieldByName('self_edo_id').AsString = '' then begin
    Application.MessageBox('Отсутсвует идентификатор ЭДО Собственной организации'#10'Формирование счет-фактуры невозможно', 'Винмание', MB_OK or MB_ICONERROR);
    Query_score.Free;
    exit;
  end;
  if Query_score.FieldByName('customer_edo_id').AsString = '' then begin
    Application.MessageBox('Отсутсвует идентификатор ЭДО Контрагента'#10'Формирование счет-фактуры невозможно', 'Винмание', MB_OK or MB_ICONERROR);
    Query_score.Free;
    exit;
  end;

  Query := TADOQuery.Create(nil);
  Query.Connection := Cnn;
  Query.SQL.Add('SELECT * FROM view_acts WHERE acts_id = ' + IntToStr(acts_id));
  Query.Open;

  // Список перевозок
  Query_tmp := TADOQuery.Create(nil);
  Query_tmp.Connection := Cnn;
  Query_tmp.SQL.Add('SELECT bargain_id FROM ACTS_BARGAIN WHERE acts_id = ' + IntToStr(acts_id));
  Query_tmp.Open;
  str_bargain_id := '';
  while not Query_tmp.Eof do begin
    if str_bargain_id <> '' then str_bargain_id := str_bargain_id + ',';
    str_bargain_id := str_bargain_id + Query_tmp.FieldByName('bargain_id').AsString;
    Query_tmp.Next;
  end;
  Query_tmp.Free;

  doc := EDOXMLUniTrDoc.NewФайл;

  // Файл.СвУчДокОбор
  // идентификаторы участников ЭДО - надо будет брать из списка участников
  doc.СвУчДокОбор.ИдОтпр := Query_score.FieldByName('self_edo_id').AsString;
  doc.СвУчДокОбор.ИдПол  := Query_score.FieldByName('customer_edo_id').AsString;
  doc.СвУчДокОбор.СвОЭДОтпр.НаимОрг := 'ЗАО "ПФ "СКБ Контур"';
  doc.СвУчДокОбор.СвОЭДОтпр.ИННЮЛ   := '6663003127';
  doc.СвУчДокОбор.СвОЭДОтпр.ИдЭДО   := '2BM';

  // Файл
  CreateGUID(_GUID);
  doc.ИдФайл := 'ON_SCHFDOPPR_' + doc.СвУчДокОбор.ИдПол + '_' + doc.СвУчДокОбор.ИдОтпр + '_' + FormatDateTime('yyyymmdd', Date) + '_' + Copy(GUIDToString(_GUID), 2, 36);
  doc.ВерсФорм := '5.01';
  doc.ВерсПрог := 'LIS 4.0';

  // Файл.Документ
  doc.Документ.КНД := '1115125';
  if Query_score.FieldByName('type_universal_trans_doc').AsInteger = 2 then begin
    doc.Документ.Функция := 'ДОП';
    doc.Документ.ПоФактХЖ := 'Документ об отгрузке товаров (выполнении работ), передаче имущественных прав (документ об оказании услуг)';
    doc.Документ.НаимДокОпр := 'Документ об отгрузке товаров (выполнении работ), передаче имущественных прав (документ об оказании услуг)';
  end else begin
    doc.Документ.Функция := 'СЧФДОП';
    doc.Документ.ПоФактХЖ := 'Документ об отгрузке товаров (выполнении работ), передаче имущественных прав (документ об оказании услуг)';
    doc.Документ.НаимДокОпр := 'Счет-фактура и документ об отгрузке товаров (выполнении работ), передаче имущественных прав (документ об оказании услуг)';
  end;
  doc.Документ.ДатаИнфПр := FormatDateTime('dd.mm.yyyy', Now);
  doc.Документ.ВремИнфПр := FormatDateTime('hh.nn.ss', Now);
  doc.Документ.НаимЭконСубСост := Query.FieldByName('firm_self_name_full').AsString + ' ' + Query.FieldByName('firm_self_inn_kpp').AsString;
  // Файл.Документ.СвСчФакт
  doc.Документ.СвСчФакт.НомерСчФ := Query_score.FieldByName('score_cod').AsString;
  doc.Документ.СвСчФакт.ДатаСчФ  := FormatDateTime('dd.mm.yyyy', Query_score.FieldByName('score_date').AsDateTime);
  doc.Документ.СвСчФакт.КодОКВ   := Query_score.FieldByName('currency_cod').AsString;
  if not Query_score.FieldByName('correction_cod').IsNull then begin
    doc.Документ.СвСчФакт.ИспрСчФ.НомИспрСчФ  := Query_score.FieldByName('correction_cod').AsInteger;
    doc.Документ.СвСчФакт.ИспрСчФ.ДатаИспрСчФ := FormatDateTime('dd.mm.yyyy', Query_score.FieldByName('correction_date').AsDateTime);
  end;
  doc.Документ.СвСчФакт.СвПрод.ИдСв.СвЮЛУч.НаимОрг := Query_score.FieldByName('score_firm_self_name_full').AsString;
  doc.Документ.СвСчФакт.СвПрод.ИдСв.СвЮЛУч.ИННЮЛ   := LeftStr(Query_score.FieldByName('score_firm_self_inn_kpp').AsString, Pos('/', Query_score.FieldByName('score_firm_self_inn_kpp').AsString) - 1);
  doc.Документ.СвСчФакт.СвПрод.ИдСв.СвЮЛУч.КПП     := RightStr(Query_score.FieldByName('score_firm_self_inn_kpp').AsString, Length(Query_score.FieldByName('score_firm_self_inn_kpp').AsString) - Pos('/', Query_score.FieldByName('score_firm_self_inn_kpp').AsString));
  // адрес у нас не формализован - выгружаем в поле иностранного адреса
  doc.Документ.СвСчФакт.СвПрод.Адрес.АдрИнф.КодСтр := '643';
  doc.Документ.СвСчФакт.СвПрод.Адрес.АдрИнф.АдрТекст := Query_score.FieldByName('score_firm_self_address').AsString;
//  doc.Документ.СвСчФакт.СвПрод.БанкРекв.НомерСчета := '40702810310000000505';
//  doc.Документ.СвСчФакт.СвПрод.БанкРекв.СвБанк.НаимБанк := 'Московский филиал Банка МБСП (АО) г. Москва';
//  doc.Документ.СвСчФакт.СвПрод.БанкРекв.СвБанк.БИК := '044525802';

//  // Грузоотправитель и Грузополучатель - не заполняем - не обязательные поля, а они у нас не формализованы

  //  Номера ПП - попробуем раздербанить
  _SL := TStringList.Create;
  _SL.LineBreak := ';';
  _SL.Text := ReplaceStr(ReplaceStr(ReplaceStr(Query_score.FieldByName('score_pay').AsString, ',', ';'), #10, ';'), #13, ';');
  for i := 0 to _SL.Count - 1 do begin
    if pos('от', _SL.Strings[i]) > 0 then begin
      pp_num  := LeftStr(_SL.Strings[i], Pos('от', _SL.Strings[i]) - 1);
      pp_num  := Trim(ReplaceStr(pp_num, '№', ''));
      pp_date := RightStr(_SL.Strings[i], Length(_SL.Strings[i]) - Pos('от', _SL.Strings[i]) - 1);
      pp_date := Trim(ReplaceStr(pp_date, 'г.', ''));
      pp_date := Trim(ReplaceStr(pp_date, 'г', ''));
      if TryStrToDate(pp_date, _tmp_date) then
        pp_date := FormatDateTime('dd.mm.yyyy', _tmp_date);

      with doc.Документ.СвСчФакт.СвПРД.Add do begin
        НомерПРД := pp_num;
        ДатаПРД  := pp_date;
      end;
    end;
  end;
  _SL.Free;

  doc.Документ.СвСчФакт.СвПокуп.ИдСв.СвЮЛУч.НаимОрг := Query_score.FieldByName('score_firm_customer_name_full').AsString;
  doc.Документ.СвСчФакт.СвПокуп.ИдСв.СвЮЛУч.ИННЮЛ   := LeftStr(Query_score.FieldByName('score_firm_customer_inn_kpp').AsString, Pos('/', Query_score.FieldByName('score_firm_customer_inn_kpp').AsString) - 1);
  doc.Документ.СвСчФакт.СвПокуп.ИдСв.СвЮЛУч.КПП     := RightStr(Query_score.FieldByName('score_firm_customer_inn_kpp').AsString, Length(Query_score.FieldByName('score_firm_customer_inn_kpp').AsString) - Pos('/', Query_score.FieldByName('score_firm_customer_inn_kpp').AsString));
  // адрес у нас не формализован - выгружаем в поле иностранного адреса
  doc.Документ.СвСчФакт.СвПокуп.Адрес.АдрИнф.КодСтр := '643';
  doc.Документ.СвСчФакт.СвПокуп.Адрес.АдрИнф.АдрТекст := Query_score.FieldByName('score_firm_customer_address').AsString;

  doc.Документ.СвСчФакт.ДопСвФХЖ1.ИдГосКон := iif(Query_score.FieldByName('score_ID_state_contract').AsString = '', '---', Query_score.FieldByName('score_ID_state_contract').AsString);

  with doc.Документ.СвСчФакт.ИнфПолФХЖ1.Add do begin
    Идентиф  := ' ';
    Значен   := 'Договор №' + Query.FieldByName('contract_cod').AsString + ' от ' + FormatDateTime('dd.mm.yyyy', Query.FieldByName('contract_date_begin').AsDateTime);

    // Список Приложений и ДС
    Query_tmp := TADOQuery.Create(nil);
    Query_tmp.Connection := Cnn;
    Query_tmp.SQL.Add('select distinct doc_blob.doc_describe, doc_blob.doc_image_date, shaping_rate.agreement_note');
    Query_tmp.SQL.Add('from bargain join shaping_rate on bargain.bargain_id = shaping_rate.bargain_id and shaping_rate.service_type = 0');
    Query_tmp.SQL.Add('left join doc_blob on shaping_rate.agreement_id = doc_blob.doc_id');
    Query_tmp.SQL.Add('where isnull(shaping_rate.agreement_note, doc_blob.doc_describe) <> ''Договор'' ');
    Query_tmp.SQL.Add('and bargain.bargain_id in (' + str_bargain_id + ')');
    Query_tmp.Open;
    while not Query_tmp.Eof do begin
      // Если есть "Приложение (Ручной ввод)", то указываем его, иначе берем из поля "Приложжение"
      if not Query_tmp.FieldByName('agreement_note').IsNull then begin
        Значен   := Значен + ', ' + Query_tmp.FieldByName('agreement_note').AsString;
      end else begin
        Значен   := Значен + ', ' + Query_tmp.FieldByName('doc_describe').AsString;
        if (not Query_tmp.FieldByName('doc_image_date').IsNull)
        and ( Pos(FormatDateTime('dd.mm.yyyy', Query_tmp.FieldByName('doc_image_date').AsDateTime), Query_tmp.FieldByName('doc_describe').AsString) = 0 ) then begin
          // Дата есть и она не прописана в самом тексте Приложения/ДС
          Значен := Значен + ' от ' + FormatDateTime('dd.mm.yyyy', Query_tmp.FieldByName('doc_image_date').AsDateTime);
        end;
      end;
      Query_tmp.Next;
    end;
    Query_tmp.Free;

    // Период
    Значен   := Значен + ' за период с ' + FormatDateTime('dd.mm.yyyy', Query.FieldByName('date_begin').AsDateTime) + ' по ' + FormatDateTime('dd.mm.yyyy', Query.FieldByName('date_end').AsDateTime) + 'г.';
  end;

  ShowTextMessage('Получение данных Акта...', False);

  // Файл.Документ.СвАктИ.ОписРабот

  // Используем для ускорения, дабы не тыкаться несколько раз по одикаковым направлениям
  ClientDS_distance := TClientDataSet.Create(nil);
  ClientDS_distance.FieldDefs.Add('node_begin', ftString, 50);
  ClientDS_distance.FieldDefs.Add('node_end',   ftString, 50);
  ClientDS_distance.FieldDefs.Add('distance',   ftInteger);
  ClientDS_distance.CreateDataSet;
  ClientDS_distance.LogChanges := False;

  SP_Table := TADOStoredProc.Create(nil);
  SP_Table.Connection := Cnn;
  SP_Table.ProcedureName := 'sp_act_report_Povagonka';
  SP_Table.Parameters.Refresh;
  SP_Table.Parameters.ParamByName('@contract_id').Value       := Query.FieldByName('contract_id').Value;
  SP_Table.Parameters.ParamByName('@acts_type_cod').Value     := Query.FieldByName('acts_type_cod').AsString;
  SP_Table.Parameters.ParamByName('@currency_id').Value       := Query.FieldByName('acts_currency_id').Value;
  SP_Table.Parameters.ParamByName('@set_routefromfact').Value := Query.FieldByName('set_routefromfact').Value;
  SP_Table.Parameters.ParamByName('@set_kargofromfact').Value := Query.FieldByName('set_kargofromfact').Value;
  SP_Table.Parameters.ParamByName('@set_datedelivery' ).Value := Query.FieldByName('set_datedelivery').Value;
  SP_Table.Parameters.ParamByName('@str_bargain_id').Value    := str_bargain_id;
  SP_Table.CommandTimeout := 100;
  SP_Table.Open;

  Q_NDS := TADOQuery.Create(nil);
  Q_NDS.Connection := Cnn;
  Q_NDS.SQL.Clear;
  Q_NDS.SQL.Add('SELECT * FROM inf_obj WHERE type_inf_id = -12');
  Q_NDS.Open;

  with doc.Документ.ТаблСчФакт do begin

    acts_sum_without_nds := 0; acts_sum_nds := 0; acts_sum_with_nds := 0; acts_cnt := 0;
    while not SP_Table.Eof do begin
      ShowTextMessage('Осталось вагонов: ' + IntToStr(SP_Table.RecordCount - SP_Table.RecNo + 1), False);
      if(LisCheck(Cnn.ConnectionString)) then begin
        with СведТов.Add do begin

          if not TryStrToFloat(SP_Table.FieldByName('bargain_nds_cod').AsString, nds_rate) then nds_rate := 0;
          rate := RoundCurr((SP_Table.FieldByName('rate').AsFloat * 100 / (100 + nds_rate)), -2);


          // Кол-во (тонн, вагонов, суток и т.п.)
          if Query.FieldByName('acts_type_cod').AsString = '233' then begin
            // 233
            cnt := SP_Table.FieldByName('calc_weight').AsFloat;
            ed_izm_cod := '168'; // тонна
            // этот акт всегда в тоннах
          end else begin
            // 237
            case IndexText(SP_Table.FieldByName('bargain_ed_izm_cod').AsString, ['000', '001', '002', '003', '004', '006']) of
                  // ed_izm_cod = '000' // тонны (тн)
              0 : begin
                    cnt := SP_Table.FieldByName('fact_weight').AsFloat;
                    ed_izm_cod := '168'; // тонна
                  end;
                  // ed_izm_cod = '001' // контейнер (конт)
                  // ed_izm_cod = '002' // вагон (вагон)
                  // ed_izm_cod = '003' // автомобиль
              1..3 : begin
                    cnt := 1;
                    ed_izm_cod := '796'; // штука
                  end;
                  // ed_izm_cod = '004' // вагоно-сутки (сутки)
              4 : begin
                    cnt := SP_Table.FieldByName('quantity').AsFloat;
                    ed_izm_cod := '954'; // вагоно-сутки
                  end;
                  // ed_izm_cod = '006' // м3
              5 : begin
                    cnt := SP_Table.FieldByName('quantity').AsFloat;
                    ed_izm_cod := '113';  // м.куб
                  end;
              else begin
                    cnt := 1;
                    ed_izm_cod := '796'; // штука
                  end;
            end;

          end;

          // ---- 238 Азия-Цемент -----------
          if (acts_type_cod = '238') then begin
            sum_without_nds := SP_Table.FieldByName('summa_without_nds').AsCurrency;
            sum_nds         := SP_Table.FieldByName('summa').AsCurrency - SP_Table.FieldByName('summa_without_nds').AsCurrency;
            sum_with_nds    := SP_Table.FieldByName('summa').AsCurrency;
          end else begin
            sum_without_nds := RoundCurr(rate * cnt, -2);
            sum_nds         := RoundCurr(sum_without_nds * nds_rate / 100, -2);
            sum_with_nds    := sum_without_nds + sum_nds;
          end;

          НомСтр      := SP_Table.RecNo;
          НаимТов     := SP_Table.FieldByName('service_kind').AsString;
  //        ОКЕИ_Тов    := ed_izm_cod;
  //        КолТов      :=  ReplaceStr(FormatCurr('0.000', cnt), ',', '.');
  //        ЦенаТов     :=  ReplaceStr(FormatCurr('0.00', rate), ',', '.');
          СтТовБезНДС := ReplaceStr(FormatCurr('0.00', sum_without_nds ), ',', '.');
          НалСт       := VarToStr(Q_NDS.Lookup('inf_obj_id', SP_Table.FieldByName('bargain_nds_id').AsInteger, 'inf_obj_name'));
          СтТовУчНал  := ReplaceStr(FormatCurr('0.00', sum_with_nds    ), ',', '.');
          Акциз.БезАкциз := 'без акциза';
          if not SP_Table.FieldByName('bargain_nds_cod').IsNull then
            СумНал.СумНал := ReplaceStr(FormatCurr('0.00', sum_nds), ',', '.')
          else
            СумНал.БезНДС := 'без НДС';

          // расстояние
          if not ClientDS_distance.Locate('node_begin;node_end', VarArrayOf([SP_Table.FieldByName('bargain_node_begin_cod').AsString, SP_Table.FieldByName('bargain_node_end_cod').AsString]), []) then begin
            ClientDS_distance.Append;
            ClientDS_distance.FieldByName('node_begin').AsString := SP_Table.FieldByName('bargain_node_begin_cod').AsString;
            ClientDS_distance.FieldByName('node_end').AsString   := SP_Table.FieldByName('bargain_node_end_cod').AsString;
            ClientDS_distance.FieldByName('distance').Value      := null;
            ClientDS_distance.FieldByName('distance').Value      := GetCalcDistanceDB(ClientDS_distance.FieldByName('node_begin').AsString, ClientDS_distance.FieldByName('node_end').AsString, Cnn, False, SP_Table.FieldByName('date_from_to').AsDateTime);

            ClientDS_distance.Post;
          end;
          ClientDS_distance.Locate('node_begin;node_end', VarArrayOf([SP_Table.FieldByName('bargain_node_begin_cod').AsString, SP_Table.FieldByName('bargain_node_end_cod').AsString]), []);

          if not SP_Table.FieldByName('date_delivery').IsNull then begin
            with ИнфПолФХЖ2.Add do begin
              Идентиф := 'Дата раскредитования документа';
              Значен  := FormatDateTime('dd.mm.yyyy', SP_Table.FieldByName('date_delivery').AsDateTime);
            end;
          end;
          with ИнфПолФХЖ2.Add do begin
            Идентиф := 'Станция отправления';
            Значен  := SP_Table.FieldByName('bargain_node_begin_name').AsString + ' (' + SP_Table.FieldByName('bargain_node_begin_cod').AsString + ')';
          end;
          with ИнфПолФХЖ2.Add do begin
            Идентиф := 'Станция назначения';
            Значен  := SP_Table.FieldByName('bargain_node_end_name').AsString + ' (' + SP_Table.FieldByName('bargain_node_end_cod').AsString + ')';
          end;
          with ИнфПолФХЖ2.Add do begin
            Идентиф := 'Дата отправления';
            Значен  := FormatDateTime('dd.mm.yyyy', SP_Table.FieldByName('date_from_to').AsDateTime);
          end;
          with ИнфПолФХЖ2.Add do begin
            Идентиф := 'Накладная';
            Значен  := SP_Table.FieldByName('num_document').AsString;
          end;
          with ИнфПолФХЖ2.Add do begin
            Идентиф := 'Номер вагона';
            Значен  := SP_Table.FieldByName('num_vagon').AsString;
          end;
          with ИнфПолФХЖ2.Add do begin
            Идентиф := 'Груз';
            Значен  := SP_Table.FieldByName('bargain_kargoETSNG_name').AsString + ' (' + SP_Table.FieldByName('bargain_kargoETSNG_cod').AsString + ')';
          end;
          with ИнфПолФХЖ2.Add do begin
            Идентиф := 'Расстояние, км';
            Значен  := ClientDS_distance.FieldByName('distance').AsString;
          end;
          with ИнфПолФХЖ2.Add do begin
            Идентиф := 'Масса груза нетто по накладной, т';
            Значен  := FormatCurr('0.000', SP_Table.FieldByName('fact_weight').AsFloat);
  //          Значен  := ReplaceStr(FormatCurr('0.000', SP_Table.FieldByName('fact_weight').AsFloat), ',', '.');
          end;
          with ИнфПолФХЖ2.Add do begin
            Идентиф := 'Цена';
            Значен  := FormatCurr('0.00', rate);
  //          Значен  := ReplaceStr(FormatCurr('0.00', rate), ',', '.');
          end;
          with ИнфПолФХЖ2.Add do begin
            Идентиф := 'Ставка НДС';
            Значен  := VarToStr(Q_NDS.Lookup('inf_obj_id', SP_Table.FieldByName('bargain_nds_id').AsInteger, 'inf_obj_name'));
          end;
          with ИнфПолФХЖ2.Add do begin
            Идентиф := 'Расчетная масса груза, т';
            Значен  := FormatCurr('0.000', SP_Table.FieldByName('calc_weight').AsFloat);
  //          Значен  := ReplaceStr(FormatCurr('0.000', SP_Table.FieldByName('calc_weight').AsFloat), ',', '.');
          end;
          with ИнфПолФХЖ2.Add do begin
            Идентиф := 'Вид отправки';
            Значен  := iif(SP_Table.FieldByName('count_vagon_in_document').AsInteger > 1, 'Групповая', 'Повагонная');
  //          Значен  := SP_Table.FieldByName('etran_SendKind').AsString;
          end;
          with ИнфПолФХЖ2.Add do begin
            Идентиф := 'Количество вагонов в накладной';
            Значен  := SP_Table.FieldByName('count_vagon_in_document').AsString;
          end;
        end;
      end;

      acts_sum_without_nds := acts_sum_without_nds + sum_without_nds;
      acts_sum_nds         := acts_sum_nds + sum_nds;
      acts_sum_with_nds    := acts_sum_with_nds + sum_with_nds;
      acts_cnt             := acts_cnt + cnt;

      SP_Table.Next;
    end;

    SP_Table.First;

    ВсегоОпл.СтТовБезНДСВсего := ReplaceStr(FormatCurr('0.00', acts_sum_without_nds), ',', '.');
    ВсегоОпл.СтТовУчНалВсего  := ReplaceStr(FormatCurr('0.00', acts_sum_with_nds)   , ',', '.');
    if not SP_Table.FieldByName('bargain_nds_cod').IsNull then
      ВсегоОпл.СумНалВсего.СумНал := ReplaceStr(FormatCurr('0.00', acts_sum_nds) , ',', '.')
    else
      ВсегоОпл.СумНалВсего.БезНДС := 'без НДС';
    ВсегоОпл.НеттоВс := ReplaceStr(FormatCurr('0.00', acts_cnt), ',', '.');
  end;

  doc.Документ.СвПродПер.СвПер.СодОпер := 'Товар (груз) передал / услуги, результаты работ, права сдал';
  doc.Документ.СвПродПер.СвПер.ДатаПер := FormatDateTime('dd.mm.yyyy', Query.FieldByName('acts_date').AsDateTime);
  with doc.Документ.СвПродПер.СвПер.ОснПер.Add do begin
    НаимОсн  := 'Договор';
    НомОсн   := Query.FieldByName('contract_cod').AsString;
    ДатаОсн  := FormatDateTime('dd.mm.yyyy', Query.FieldByName('contract_date_begin').AsDateTime);
//    ДопСвОсн := 'Договор №' + Query.FieldByName('contract_cod').AsString + ' от ' + FormatDateTime('dd.mm.yyyy', Query.FieldByName('contract_date_begin').AsDateTime);
  end;

//  // Список Приложений и ДС
//  Query_tmp := TADOQuery.Create(nil);
//  Query_tmp.Connection := Cnn;
//  Query_tmp.SQL.Add('select distinct doc_blob.doc_describe, doc_blob.doc_image_date');
//  Query_tmp.SQL.Add('from bargain join doc_blob on bargain.agreement_id = doc_blob.doc_id');
//  Query_tmp.SQL.Add('where doc_blob.doc_describe <> ''Договор'' and bargain.bargain_id in (' + str_bargain_id + ')');
//  Query_tmp.Open;
//  while not Query_tmp.Eof do begin
//    with doc.Документ.СвПродПер.СвПер.ОснПер.Add do begin
//      НаимОсн  := Query_tmp.FieldByName('doc_describe').AsString;
//      if not Query_tmp.FieldByName('doc_image_date').IsNull then
//        ДатаОсн  := FormatDateTime('dd.mm.yyyy', Query_tmp.FieldByName('doc_image_date').AsDateTime);
//    end;
//    Query_tmp.Next;
//  end;
//  Query_tmp.Free;


  if not Query.FieldByName('self_dir_id').IsNull then begin
    Query_tmp := TADOQuery.Create(nil);
    Query_tmp.Connection := Cnn;
    Query_tmp.SQL.Add('SELECT	type_contact_name, firm_contact_comment, family, first_name, last_name, isnull(set_edo_sign,0) set_edo_sign, firm_inn');
    Query_tmp.SQL.Add('FROM	  view_firm_contact');
    Query_tmp.SQL.Add('WHERE	firm_contact_id = ' + Query.FieldByName('self_dir_id').AsString);
    Query_tmp.Open;

    if(Query_tmp.FieldByName('firm_contact_comment').AsString = '') or
      (Query_tmp.FieldByName('type_contact_name').AsString = '') or
      (Query_tmp.FieldByName('family').AsString = '') or
      (Query_tmp.FieldByName('first_name').AsString = '') or
      (Query_tmp.FieldByName('last_name').AsString = '') then begin

      Application.MessageBox('У подписанта отсутствует ЭЦП.','ВНИМАНИЕ',MB_OK);
      Query_tmp.Free;
      Exit;
    end;

    if Query_tmp.FieldByName('set_edo_sign').AsBoolean then begin
      with doc.Документ.СвПродПер.СвПер.СвЛицПер.РабОргПрод do begin
        Должность    := Query_tmp.FieldByName('type_contact_name').AsString;
        ОснПолн      := Query_tmp.FieldByName('firm_contact_comment').AsString;
        ФИО.Фамилия  := Query_tmp.FieldByName('family').AsString;
        ФИО.Имя      := Query_tmp.FieldByName('first_name').AsString;
        ФИО.Отчество := Query_tmp.FieldByName('last_name').AsString;
      end;

      with doc.Документ.Подписант.Add do begin
        ОблПолн         := '6';
        Статус          := '1';
        ОснПолн         := Query_tmp.FieldByName('firm_contact_comment').AsString;

        ЮЛ.ИННЮЛ        := Query_tmp.FieldByName('firm_inn').AsString;//'7702059030';
        ЮЛ.Должн        := Query_tmp.FieldByName('type_contact_name').AsString;
        ЮЛ.ФИО.Фамилия  := Query_tmp.FieldByName('family').AsString;
        ЮЛ.ФИО.Имя      := Query_tmp.FieldByName('first_name').AsString;
        ЮЛ.ФИО.Отчество := Query_tmp.FieldByName('last_name').AsString;
      end;

    end;

    Query_tmp.Free;
  end;

  ShowTextMessage('Сохранение XML...', False);

  // сохранение файла
  xml := doc.OwnerDocument as TXMLDocument;
  xml.Active := True;

  xml.Version := '1.0';
  xml.Encoding := 'windows-1251';

  // Генерация Диадок (получение данных)
    //!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
    mem_bytes := TBytesStream.Create;
    xml.SaveToStream(mem_bytes);
    //mem_bytes.SaveToFile('d:\www\11.xml');
    //!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!

    // Пользователь
    Query_tmp := TADOQuery.Create(nil);
    Query_tmp.Connection := Cnn;
    Query_tmp.SQL.Add('SELECT	users.FIO_users, inf_obj.inf_obj_cod as users_group_cod');
    Query_tmp.SQL.Add('FROM	  users INNER JOIN inf_obj on users.users_group_id = inf_obj.inf_obj_id');
    Query_tmp.SQL.Add('WHERE	users_name = system_user');
    Query_tmp.Open;

    ClientDS := TClientDataSet.Create(nil);
    ClientDS.FieldDefs.Add('contract_id',   ftInteger);
    ClientDS.FieldDefs.Add('contract_cod', ftString, 50);
    ClientDS.FieldDefs.Add('contract_date',   ftDateTime);
    ClientDS.FieldDefs.Add('firm_customer_name', ftString, 50);
    ClientDS.FieldDefs.Add('firm_self_name', ftString, 50);
    ClientDS.FieldDefs.Add('document_cod', ftString, 50);
    ClientDS.FieldDefs.Add('documen_date',   ftDateTime);
    ClientDS.FieldDefs.Add('document_sum',   ftCurrency);
    ClientDS.FieldDefs.Add('document_nds_sum',   ftCurrency);
    ClientDS.FieldDefs.Add('document_nds_type', ftString, 50);
    ClientDS.FieldDefs.Add('FIO_users', ftString, 50);
    ClientDS.FieldDefs.Add('file_name', ftString, 300);
    ClientDS.CreateDataSet;
    ClientDS.LogChanges := False;

    // заполним структуру
    ClientDS.Append;
    ClientDS.FieldByName('contract_id'        ).Value := Query.FieldByName('contract_id').Value;
    ClientDS.FieldByName('contract_cod'       ).Value := Query.FieldByName('contract_cod').Value;
    ClientDS.FieldByName('contract_date'      ).Value := Query.FieldByName('contract_date_begin').Value;
    ClientDS.FieldByName('firm_customer_name' ).Value := Query.FieldByName('firm_customer_name').Value;
    ClientDS.FieldByName('firm_self_name'     ).Value := Query.FieldByName('firm_self_name').Value;
    ClientDS.FieldByName('document_cod'       ).Value := Query.FieldByName('acts_cod').Value;
    ClientDS.FieldByName('documen_date'       ).Value := Query.FieldByName('acts_date').Value;
    ClientDS.FieldByName('document_sum'       ).Value := acts_sum_with_nds;
    ClientDS.FieldByName('document_nds_sum'   ).Value := acts_sum_nds;
    ClientDS.FieldByName('document_nds_type'  ).Value := Q_NDS.Lookup('inf_obj_id', SP_Table.FieldByName('bargain_nds_id').AsInteger, 'inf_obj_name');
    ClientDS.FieldByName('FIO_users'          ).Value := Query_tmp.FieldByName('FIO_users').Value;
    ClientDS.FieldByName('file_name'          ).Value := doc.ИдФайл + '.xml';
    ClientDS.Post;

    // Сгенирить форму
    handle := LoadLibrary('work_edo.dll');
    @FPrintForm := GetProcAddress(handle, 'CreateWndGeneratePrintForm');

    v := FPrintForm(Application.Handle, Query_tmp.FieldByName('users_group_cod').AsString, Query.FieldByName('acts_id').AsInteger, 'UniversalTransferDocument', mem_bytes.Bytes, mem_bytes.Size, ClientDS);
    FreeLibrary(handle);

//    ShowMessage(IntToStr(v[0]));
    // Сохранение и отображение
    if v[0] <> -9 then begin
      if not Query.FieldByName('acts_id').IsNull then begin
        // имидж с-ф может отсутсвовать (для старых с-ф)
        sp_acts_modify := TADOStoredProc.Create(nil);
        sp_acts_modify.Connection := Cnn;
        sp_acts_modify.ProcedureName := 'sp_acts_modify';
        sp_acts_modify.Parameters.Refresh;

        sp_acts_modify.Parameters.ParamByName('@type_action').Value := 8;
        sp_acts_modify.Parameters.ParamByName('@acts_id').Value := Query.FieldByName('acts_id').AsInteger; // ссылку на ЭДО сохраняем в имидже с-ф (таблица Акты)
        sp_acts_modify.Parameters.ParamByName('@edo_doc_id').Value := v[0];

        try
          sp_acts_modify.ExecProc;
        except
        end;

        sp_acts_modify.Free;
      end;

      // Сохранение на диске
      if SelectDirectory('Путь для сохранения', '', save_path) then begin
        // Сохранение pdf
        handle := LoadLibrary('work_edo.dll');
        @FPrintFormPdf := GetProcAddress(handle, 'CreateWndDocumentPdfSave2Path');
        FPrintFormPdf(Query_tmp.FieldByName('users_group_cod').AsString, v[0], save_path);
        FreeLibrary(handle);

        // Сохранение pdf
        handle := LoadLibrary('work_edo.dll');
        @FPrintFormPdf := GetProcAddress(handle, 'CreateWndDocumentXmlSave2Path');
        FPrintFormPdf(Query_tmp.FieldByName('users_group_cod').AsString, v[0], save_path);
        FreeLibrary(handle);

        ShellExecute(HWND(nil), 'explore', PChar(save_path), nil, nil, SW_RESTORE);
      end;
    end;

    Query_tmp.Free;
    ClientDS.Free;
  // Генерация Диадок (получение данных)

  xml.Active := False;
  Screen.Cursor := crDefault;
  ShowTextMessage;

  ClientDS_distance.Free;
  Q_NDS.Free;
  SP_Table.Free;
  Query.Free;
  Query_score.Free;
end;
{$ENDREGION 'Счета-Фактуры'}

procedure CreateInvoiceScoreUPDFromActs820(Cnn: TADOConnection; acts_id: integer; acts_type_cod: string);
type
  TFunc = function(AppHand: THandle; users_group_cod: string; global_id: integer; DocumentType: string; data_xml: TArray<Byte>; data_size: integer; ClientDS: TClientDataSet): variant;
  TFuncPdf = procedure(users_group_cod: string; print_form_id: integer; path : string);
var
  // Генерация печатной формы  --------------
  FPrintForm  : TFunc;
  FPrintFormPdf  : TFuncPdf;
  handle      : THandle;
  v           : Variant;
  mem_bytes   : TBytesStream;
  ClientDS    : TClientDataSet;

  save_path   : string;
  // ----------------------------------------
  sp_acts_modify : TADOStoredProc;

var doc                  : EDOXMLUniTrDoc820.IXMLФайл;
    xml                  : TXMLDocument;
    i                    : integer;

    invoice_score_id     : integer;

    str_bargain_id       : string;

    Query                : TADOQuery;
    Query_score          : TADOQuery;
    Query_tmp            : TADOQuery;
    SP_Table             : TADOStoredProc;
    Q_NDS                : TADOQuery;

    acts_sum_without_nds : Double;
    acts_sum_nds         : Double;
    acts_sum_with_nds    : Double;
    acts_cnt             : Double;
    sum_without_nds      : Double;
    sum_nds              : Double;
    sum_with_nds         : Double;
    rate, nds_rate, cnt  : Double;

    ed_izm_cod           : string; // код ОКЕИ

    _GUID                : TGUID;

    _SL                                 : TStringList;
    _tmp_date                           : TDateTime;
    pp_num, pp_date                     : string;

    set_correction : boolean;
    ClientDS_distance    : TClientDataSet;
begin
  if not MatchStr(acts_type_cod, ['233', '237', '238']) then begin
    Application.MessageBox('Выбран не верный тип акта', 'Внимание', MB_OK or MB_ICONERROR);
    exit;
  end;

  // Счет-Фактура (УПД)
  fmInvoiceScoreAdd := TfmInvoiceScoreAdd.Create(Application, True, 0);
  fmInvoiceScoreAdd._InsertUPDByActs := acts_id;
  if fmInvoiceScoreAdd.ShowModal <> mrOk then begin
    Application.MessageBox('Счет-Фактура не сохранена. Формирование УПД невозможно.', 'Внимание', MB_OK or MB_ICONERROR);
    exit;
  end;
  invoice_score_id := fmInvoiceScoreAdd._GetInvoiceScoreID;

  // Заполнение данных
  Query_score := TADOQuery.Create(nil);
  Query_score.Connection := Cnn;
  Query_score.SQL.Add('SELECT * ');
  Query_score.SQL.Add(', self_edo_id = (SELECT TOP 1 edo_id FROM firm WHERE firm.firm_id = firm_self)');
  Query_score.SQL.Add(', customer_edo_id = (SELECT TOP 1 edo_id FROM firm WHERE firm.firm_id = firm_customer)');
  Query_score.SQL.Add('FROM view_invoice_score WHERE invoice_score_id = ' + IntToStr(invoice_score_id));
  Query_score.Open;

  if Query_score.FieldByName('self_edo_id').AsString = '' then begin
    Application.MessageBox('Отсутсвует идентификатор ЭДО Собственной организации'#10'Формирование счет-фактуры невозможно', 'Винмание', MB_OK or MB_ICONERROR);
    Query_score.Free;
    exit;
  end;
  if Query_score.FieldByName('customer_edo_id').AsString = '' then begin
    Application.MessageBox('Отсутсвует идентификатор ЭДО Контрагента'#10'Формирование счет-фактуры невозможно', 'Винмание', MB_OK or MB_ICONERROR);
    Query_score.Free;
    exit;
  end;

  Query := TADOQuery.Create(nil);
  Query.Connection := Cnn;
  Query.SQL.Add('SELECT * FROM view_acts WHERE acts_id = ' + IntToStr(acts_id));
  Query.Open;

  // Список перевозок
  Query_tmp := TADOQuery.Create(nil);
  Query_tmp.Connection := Cnn;
  Query_tmp.SQL.Add('SELECT bargain_id FROM ACTS_BARGAIN WHERE acts_id = ' + IntToStr(acts_id));
  Query_tmp.Open;
  str_bargain_id := '';
  while not Query_tmp.Eof do begin
    if str_bargain_id <> '' then str_bargain_id := str_bargain_id + ',';
    str_bargain_id := str_bargain_id + Query_tmp.FieldByName('bargain_id').AsString;
    Query_tmp.Next;
  end;
  Query_tmp.Free;

  doc := EDOXMLUniTrDoc820.NewФайл;

  // Файл.СвУчДокОбор
  // идентификаторы участников ЭДО - надо будет брать из списка участников
  doc.СвУчДокОбор.ИдОтпр := Query_score.FieldByName('self_edo_id').AsString;
  doc.СвУчДокОбор.ИдПол  := Query_score.FieldByName('customer_edo_id').AsString;
  doc.СвУчДокОбор.СвОЭДОтпр.НаимОрг := 'ЗАО "ПФ "СКБ Контур"';
  doc.СвУчДокОбор.СвОЭДОтпр.ИННЮЛ   := '6663003127';
  doc.СвУчДокОбор.СвОЭДОтпр.ИдЭДО   := '2BM';

  // Файл
  CreateGUID(_GUID);
  doc.ИдФайл := 'ON_NSCHFDOPPR_' + doc.СвУчДокОбор.ИдПол + '_' + doc.СвУчДокОбор.ИдОтпр + '_' + FormatDateTime('yyyymmdd', Date) + '_' + Copy(GUIDToString(_GUID), 2, 36);
  doc.ВерсФорм := '5.01';
  doc.ВерсПрог := 'LIS 4.0';

  // Файл.Документ
  doc.Документ.КНД := '1115131';
  if Query_score.FieldByName('type_universal_trans_doc').AsInteger = 2 then begin
    doc.Документ.Функция := 'ДОП';
    doc.Документ.ПоФактХЖ := 'Документ об отгрузке товаров (выполнении работ), передаче имущественных прав (документ об оказании услуг)';
    doc.Документ.НаимДокОпр := 'Документ об отгрузке товаров (выполнении работ), передаче имущественных прав (документ об оказании услуг)';
  end else begin
    doc.Документ.Функция := 'СЧФДОП';
    doc.Документ.ПоФактХЖ := 'Документ об отгрузке товаров (выполнении работ), передаче имущественных прав (документ об оказании услуг)';
    doc.Документ.НаимДокОпр := 'Счет-фактура и документ об отгрузке товаров (выполнении работ), передаче имущественных прав (документ об оказании услуг)';
  end;
  doc.Документ.ДатаИнфПр := FormatDateTime('dd.mm.yyyy', Now);
  doc.Документ.ВремИнфПр := FormatDateTime('hh.nn.ss', Now);
  doc.Документ.НаимЭконСубСост := Query.FieldByName('firm_self_name_full').AsString + ' ' + Query.FieldByName('firm_self_inn_kpp').AsString;

  // Файл.Документ.СвСчФакт
  doc.Документ.СвСчФакт.НомерСчФ := Query_score.FieldByName('score_cod').AsString;
  doc.Документ.СвСчФакт.ДатаСчФ  := FormatDateTime('dd.mm.yyyy', Query_score.FieldByName('score_date').AsDateTime);
  doc.Документ.СвСчФакт.КодОКВ   := Query_score.FieldByName('currency_cod').AsString;
  if not Query_score.FieldByName('correction_cod').IsNull then begin
    set_correction := True;
    doc.Документ.СвСчФакт.ИспрСчФ.НомИспрСчФ  := Query_score.FieldByName('correction_cod').AsInteger;
    doc.Документ.СвСчФакт.ИспрСчФ.ДатаИспрСчФ := FormatDateTime('dd.mm.yyyy', Query_score.FieldByName('correction_date').AsDateTime);
  end else
    set_correction := False;

  with doc.Документ.СвСчФакт.СвПрод.Add do begin
    ИдСв.СвЮЛУч.НаимОрг := Query_score.FieldByName('score_firm_self_name_full').AsString;
    ИдСв.СвЮЛУч.ИННЮЛ   := LeftStr(Query_score.FieldByName('score_firm_self_inn_kpp').AsString, Pos('/', Query_score.FieldByName('score_firm_self_inn_kpp').AsString) - 1);
    ИдСв.СвЮЛУч.КПП     := RightStr(Query_score.FieldByName('score_firm_self_inn_kpp').AsString, Length(Query_score.FieldByName('score_firm_self_inn_kpp').AsString) - Pos('/', Query_score.FieldByName('score_firm_self_inn_kpp').AsString));
    Адрес.АдрИнф.КодСтр := '643';
    Адрес.АдрИнф.АдрТекст := Query_score.FieldByName('score_firm_self_address').AsString;
  end;

//  // Грузоотправитель и Грузополучатель - не заполняем - не обязательные поля, а они у нас не формализованы

  //  Номера ПП - попробуем раздербанить
  _SL := TStringList.Create;
  _SL.LineBreak := ';';
  _SL.Text := ReplaceStr(ReplaceStr(ReplaceStr(Query_score.FieldByName('score_pay').AsString, ',', ';'), #10, ';'), #13, ';');
  for i := 0 to _SL.Count - 1 do begin
    if pos('от', _SL.Strings[i]) > 0 then begin
      pp_num  := LeftStr(_SL.Strings[i], Pos('от', _SL.Strings[i]) - 1);
      pp_num  := Trim(ReplaceStr(pp_num, '№', ''));
      pp_date := RightStr(_SL.Strings[i], Length(_SL.Strings[i]) - Pos('от', _SL.Strings[i]) - 1);
      pp_date := Trim(ReplaceStr(pp_date, 'г.', ''));
      pp_date := Trim(ReplaceStr(pp_date, 'г', ''));
      if TryStrToDate(pp_date, _tmp_date) then
        pp_date := FormatDateTime('dd.mm.yyyy', _tmp_date);

      with doc.Документ.СвСчФакт.СвПРД.Add do begin
        НомерПРД := pp_num;
        ДатаПРД  := pp_date;
      end;
    end;
  end;
  _SL.Free;

  with doc.Документ.СвСчФакт.СвПокуп.Add do begin
    ИдСв.СвЮЛУч.НаимОрг := Query_score.FieldByName('score_firm_customer_name_full').AsString;
    ИдСв.СвЮЛУч.ИННЮЛ   := LeftStr(Query_score.FieldByName('score_firm_customer_inn_kpp').AsString, Pos('/', Query_score.FieldByName('score_firm_customer_inn_kpp').AsString) - 1);
    ИдСв.СвЮЛУч.КПП     := RightStr(Query_score.FieldByName('score_firm_customer_inn_kpp').AsString, Length(Query_score.FieldByName('score_firm_customer_inn_kpp').AsString) - Pos('/', Query_score.FieldByName('score_firm_customer_inn_kpp').AsString));
    // адрес у нас не формализован - выгружаем в поле иностранного адреса
    Адрес.АдрИнф.КодСтр := '643';
    Адрес.АдрИнф.АдрТекст := Query_score.FieldByName('score_firm_customer_address').AsString;
  end;

  if (Query_score.FieldByName('score_ID_state_contract').AsString <> '' ) then
    doc.Документ.СвСчФакт.ДопСвФХЖ1.ИдГосКон := Query_score.FieldByName('score_ID_state_contract').AsString;

  with doc.Документ.СвСчФакт.ИнфПолФХЖ1.Add do begin
    Идентиф  := ' ';
    Значен   := 'Договор №' + Query.FieldByName('contract_cod').AsString + ' от ' + FormatDateTime('dd.mm.yyyy', Query.FieldByName('contract_date_begin').AsDateTime);

    // Список Приложений и ДС
    Query_tmp := TADOQuery.Create(nil);
    Query_tmp.Connection := Cnn;
    Query_tmp.SQL.Add('select distinct doc_blob.doc_describe, doc_blob.doc_image_date, shaping_rate.agreement_note');
    Query_tmp.SQL.Add('from bargain join shaping_rate on bargain.bargain_id = shaping_rate.bargain_id and shaping_rate.service_type = 0');
    Query_tmp.SQL.Add('left join doc_blob on shaping_rate.agreement_id = doc_blob.doc_id');
    Query_tmp.SQL.Add('where isnull(shaping_rate.agreement_note, doc_blob.doc_describe) <> ''Договор'' ');
    Query_tmp.SQL.Add('and bargain.bargain_id in (' + str_bargain_id + ')');
    Query_tmp.Open;
    while not Query_tmp.Eof do begin
      // Если есть "Приложение (Ручной ввод)", то указываем его, иначе берем из поля "Приложжение"
      if not Query_tmp.FieldByName('agreement_note').IsNull then begin
        Значен   := Значен + ', ' + Query_tmp.FieldByName('agreement_note').AsString;
      end else begin
        Значен   := Значен + ', ' + Query_tmp.FieldByName('doc_describe').AsString;
        if (not Query_tmp.FieldByName('doc_image_date').IsNull)
        and ( Pos(FormatDateTime('dd.mm.yyyy', Query_tmp.FieldByName('doc_image_date').AsDateTime), Query_tmp.FieldByName('doc_describe').AsString) = 0 ) then begin
          // Дата есть и она не прописана в самом тексте Приложения/ДС
          Значен := Значен + ' от ' + FormatDateTime('dd.mm.yyyy', Query_tmp.FieldByName('doc_image_date').AsDateTime);
        end;
      end;
      Query_tmp.Next;
    end;
    Query_tmp.Free;

    // Период
    Значен   := Значен + ' за период с ' + FormatDateTime('dd.mm.yyyy', Query.FieldByName('date_begin').AsDateTime) + ' по ' + FormatDateTime('dd.mm.yyyy', Query.FieldByName('date_end').AsDateTime) + 'г.';
  end;

  ShowTextMessage('Получение данных Акта...', False);

  // Файл.Документ.СвАктИ.ОписРабот

  // Используем для ускорения, дабы не тыкаться несколько раз по одикаковым направлениям
  ClientDS_distance := TClientDataSet.Create(nil);
  ClientDS_distance.FieldDefs.Add('node_begin', ftString, 50);
  ClientDS_distance.FieldDefs.Add('node_end',   ftString, 50);
  ClientDS_distance.FieldDefs.Add('distance',   ftInteger);
  ClientDS_distance.CreateDataSet;
  ClientDS_distance.LogChanges := False;

  SP_Table := TADOStoredProc.Create(nil);
  SP_Table.Connection := Cnn;
  SP_Table.ProcedureName := 'sp_act_report_Povagonka';
  SP_Table.Parameters.Refresh;
  SP_Table.Parameters.ParamByName('@contract_id').Value       := Query.FieldByName('contract_id').Value;
  SP_Table.Parameters.ParamByName('@acts_type_cod').Value     := Query.FieldByName('acts_type_cod').AsString;
  SP_Table.Parameters.ParamByName('@currency_id').Value       := Query.FieldByName('acts_currency_id').Value;
  SP_Table.Parameters.ParamByName('@set_routefromfact').Value := Query.FieldByName('set_routefromfact').Value;
  SP_Table.Parameters.ParamByName('@set_kargofromfact').Value := Query.FieldByName('set_kargofromfact').Value;
  SP_Table.Parameters.ParamByName('@set_datedelivery' ).Value := Query.FieldByName('set_datedelivery').Value;
  SP_Table.Parameters.ParamByName('@str_bargain_id').Value    := str_bargain_id;
  SP_Table.CommandTimeout := 100;
  SP_Table.Open;

  Q_NDS := TADOQuery.Create(nil);
  Q_NDS.Connection := Cnn;
  Q_NDS.SQL.Clear;
  Q_NDS.SQL.Add('SELECT * FROM inf_obj WHERE type_inf_id = -12');
  Q_NDS.Open;

  with doc.Документ.ТаблСчФакт do begin

    acts_sum_without_nds := 0; acts_sum_nds := 0; acts_sum_with_nds := 0; acts_cnt := 0;
    while not SP_Table.Eof do begin
      ShowTextMessage('Осталось вагонов: ' + IntToStr(SP_Table.RecordCount - SP_Table.RecNo + 1), False);

      if(LisCheck(Cnn.ConnectionString)) then begin
        with СведТов.Add do begin

          if not TryStrToFloat(SP_Table.FieldByName('bargain_nds_cod').AsString, nds_rate) then nds_rate := 0;
          rate := RoundCurr((SP_Table.FieldByName('rate').AsFloat * 100 / (100 + nds_rate)), -2);


          // Кол-во (тонн, вагонов, суток и т.п.)
          if Query.FieldByName('acts_type_cod').AsString = '233' then begin
            // 233
            cnt := SP_Table.FieldByName('calc_weight').AsFloat;
            ed_izm_cod := '168'; // тонна
            // этот акт всегда в тоннах
          end else begin
            // 237
            case IndexText(SP_Table.FieldByName('bargain_ed_izm_cod').AsString, ['000', '001', '002', '003', '004', '006']) of
                  // ed_izm_cod = '000' // тонны (тн)
              0 : begin
                    cnt := SP_Table.FieldByName('fact_weight').AsFloat;
                    ed_izm_cod := '168'; // тонна
                  end;
                  // ed_izm_cod = '001' // контейнер (конт)
                  // ed_izm_cod = '002' // вагон (вагон)
                  // ed_izm_cod = '003' // автомобиль
              1..3 : begin
                    cnt := 1;
                    ed_izm_cod := '796'; // штука
                  end;
                  // ed_izm_cod = '004' // вагоно-сутки (сутки)
              4 : begin
                    cnt := SP_Table.FieldByName('quantity').AsFloat;
                    ed_izm_cod := '954'; // вагоно-сутки
                  end;
                  // ed_izm_cod = '006' // м3
              5 : begin
                    cnt := SP_Table.FieldByName('quantity').AsFloat;
                    ed_izm_cod := '113';  // м.куб
                  end;
              else begin
                    cnt := 1;
                    ed_izm_cod := '796'; // штука
                  end;
            end;

          end;

          // ---- 238 Азия-Цемент -----------
          if (acts_type_cod = '238') then begin
            sum_without_nds := SP_Table.FieldByName('summa_without_nds').AsCurrency;
            sum_nds         := SP_Table.FieldByName('summa').AsCurrency - SP_Table.FieldByName('summa_without_nds').AsCurrency;
            sum_with_nds    := SP_Table.FieldByName('summa').AsCurrency;
          end else begin
            sum_without_nds := RoundCurr(rate * cnt, -2);
            sum_nds         := RoundCurr(sum_without_nds * nds_rate / 100, -2);
            sum_with_nds    := sum_without_nds + sum_nds;
          end;

          НомСтр      := SP_Table.RecNo;
          НаимТов     := SP_Table.FieldByName('service_kind').AsString;
          ДефОКЕИ_Тов := '-';
  //        ОКЕИ_Тов    := ed_izm_cod;
  //        КолТов      :=  ReplaceStr(FormatCurr('0.000', cnt), ',', '.');
  //        ЦенаТов     :=  ReplaceStr(FormatCurr('0.00', rate), ',', '.');
          СтТовБезНДС := ReplaceStr(FormatCurr('0.00', sum_without_nds ), ',', '.');
          НалСт       := VarToStr(Q_NDS.Lookup('inf_obj_id', SP_Table.FieldByName('bargain_nds_id').AsInteger, 'inf_obj_name'));
          СтТовУчНал  := ReplaceStr(FormatCurr('0.00', sum_with_nds    ), ',', '.');
          Акциз.БезАкциз := 'без акциза';
          if not SP_Table.FieldByName('bargain_nds_cod').IsNull then
            СумНал.СумНал := ReplaceStr(FormatCurr('0.00', sum_nds), ',', '.')
          else
            СумНал.БезНДС := 'без НДС';

          // расстояние
          if not ClientDS_distance.Locate('node_begin;node_end', VarArrayOf([SP_Table.FieldByName('bargain_node_begin_cod').AsString, SP_Table.FieldByName('bargain_node_end_cod').AsString]), []) then begin
            ClientDS_distance.Append;
            ClientDS_distance.FieldByName('node_begin').AsString := SP_Table.FieldByName('bargain_node_begin_cod').AsString;
            ClientDS_distance.FieldByName('node_end').AsString   := SP_Table.FieldByName('bargain_node_end_cod').AsString;
            ClientDS_distance.FieldByName('distance').Value      := null;
            ClientDS_distance.FieldByName('distance').Value      := GetCalcDistanceDB(ClientDS_distance.FieldByName('node_begin').AsString, ClientDS_distance.FieldByName('node_end').AsString, Cnn, False, SP_Table.FieldByName('date_from_to').AsDateTime);

            ClientDS_distance.Post;
          end;
          ClientDS_distance.Locate('node_begin;node_end', VarArrayOf([SP_Table.FieldByName('bargain_node_begin_cod').AsString, SP_Table.FieldByName('bargain_node_end_cod').AsString]), []);

          if not SP_Table.FieldByName('date_delivery').IsNull then begin
            with ИнфПолФХЖ2.Add do begin
              Идентиф := 'Дата раскредитования документа';
              Значен  := FormatDateTime('dd.mm.yyyy', SP_Table.FieldByName('date_delivery').AsDateTime);
            end;
          end;
          with ИнфПолФХЖ2.Add do begin
            Идентиф := 'Станция отправления';
            Значен  := SP_Table.FieldByName('bargain_node_begin_name').AsString + ' (' + SP_Table.FieldByName('bargain_node_begin_cod').AsString + ')';
          end;
          with ИнфПолФХЖ2.Add do begin
            Идентиф := 'Станция назначения';
            Значен  := SP_Table.FieldByName('bargain_node_end_name').AsString + ' (' + SP_Table.FieldByName('bargain_node_end_cod').AsString + ')';
          end;
          with ИнфПолФХЖ2.Add do begin
            Идентиф := 'Дата отправления';
            Значен  := FormatDateTime('dd.mm.yyyy', SP_Table.FieldByName('date_from_to').AsDateTime);
          end;
          with ИнфПолФХЖ2.Add do begin
            Идентиф := 'Накладная';
            Значен  := SP_Table.FieldByName('num_document').AsString;
          end;
          with ИнфПолФХЖ2.Add do begin
            Идентиф := 'Номер вагона';
            Значен  := SP_Table.FieldByName('num_vagon').AsString;
          end;
          with ИнфПолФХЖ2.Add do begin
            Идентиф := 'Груз';
            Значен  := SP_Table.FieldByName('bargain_kargoETSNG_name').AsString + ' (' + SP_Table.FieldByName('bargain_kargoETSNG_cod').AsString + ')';
          end;
          with ИнфПолФХЖ2.Add do begin
            Идентиф := 'Расстояние, км';
            Значен  := ClientDS_distance.FieldByName('distance').AsString;
          end;
          with ИнфПолФХЖ2.Add do begin
            Идентиф := 'Масса груза нетто по накладной, т';
            Значен  := FormatCurr('0.000', SP_Table.FieldByName('fact_weight').AsFloat);
  //          Значен  := ReplaceStr(FormatCurr('0.000', SP_Table.FieldByName('fact_weight').AsFloat), ',', '.');
          end;
          with ИнфПолФХЖ2.Add do begin
            Идентиф := 'Цена';
            Значен  := FormatCurr('0.00', rate);
  //          Значен  := ReplaceStr(FormatCurr('0.00', rate), ',', '.');
          end;
          with ИнфПолФХЖ2.Add do begin
            Идентиф := 'Ставка НДС';
            Значен  := VarToStr(Q_NDS.Lookup('inf_obj_id', SP_Table.FieldByName('bargain_nds_id').AsInteger, 'inf_obj_name'));
          end;
          with ИнфПолФХЖ2.Add do begin
            Идентиф := 'Расчетная масса груза, т';
            Значен  := FormatCurr('0.000', SP_Table.FieldByName('calc_weight').AsFloat);
  //          Значен  := ReplaceStr(FormatCurr('0.000', SP_Table.FieldByName('calc_weight').AsFloat), ',', '.');
          end;
          with ИнфПолФХЖ2.Add do begin
            Идентиф := 'Вид отправки';
            Значен  := iif(SP_Table.FieldByName('count_vagon_in_document').AsInteger > 1, 'Групповая', 'Повагонная');
  //          Значен  := SP_Table.FieldByName('etran_SendKind').AsString;
          end;
          with ИнфПолФХЖ2.Add do begin
            Идентиф := 'Количество вагонов в накладной';
            Значен  := SP_Table.FieldByName('count_vagon_in_document').AsString;
          end;
        end;

        acts_sum_without_nds := acts_sum_without_nds + sum_without_nds;
        acts_sum_nds         := acts_sum_nds + sum_nds;
        acts_sum_with_nds    := acts_sum_with_nds + sum_with_nds;
        acts_cnt             := acts_cnt + cnt;
      end;

      SP_Table.Next;
    end;

    SP_Table.First;

    ВсегоОпл.СтТовБезНДСВсего := ReplaceStr(FormatCurr('0.00', acts_sum_without_nds), ',', '.');
    ВсегоОпл.СтТовУчНалВсего  := ReplaceStr(FormatCurr('0.00', acts_sum_with_nds)   , ',', '.');
    if not SP_Table.FieldByName('bargain_nds_cod').IsNull then
      ВсегоОпл.СумНалВсего.СумНал := ReplaceStr(FormatCurr('0.00', acts_sum_nds) , ',', '.')
    else
      ВсегоОпл.СумНалВсего.БезНДС := 'без НДС';
    ВсегоОпл.КолНеттоВс := ReplaceStr(FormatCurr('0.00', acts_cnt), ',', '.');
  end;

  doc.Документ.СвПродПер.СвПер.СодОпер := 'Товар (груз) передал / услуги, результаты работ, права сдал';
  doc.Документ.СвПродПер.СвПер.ДатаПер := FormatDateTime('dd.mm.yyyy', Query.FieldByName('acts_date').AsDateTime);
  with doc.Документ.СвПродПер.СвПер.ОснПер.Add do begin
    НаимОсн  := 'Договор';
    НомОсн   := Query.FieldByName('contract_cod').AsString;
    ДатаОсн  := FormatDateTime('dd.mm.yyyy', Query.FieldByName('contract_date_begin').AsDateTime);
//    ДопСвОсн := 'Договор №' + Query.FieldByName('contract_cod').AsString + ' от ' + FormatDateTime('dd.mm.yyyy', Query.FieldByName('contract_date_begin').AsDateTime);
  end;

//  // Список Приложений и ДС
//  Query_tmp := TADOQuery.Create(nil);
//  Query_tmp.Connection := Cnn;
//  Query_tmp.SQL.Add('select distinct doc_blob.doc_describe, doc_blob.doc_image_date');
//  Query_tmp.SQL.Add('from bargain join doc_blob on bargain.agreement_id = doc_blob.doc_id');
//  Query_tmp.SQL.Add('where doc_blob.doc_describe <> ''Договор'' and bargain.bargain_id in (' + str_bargain_id + ')');
//  Query_tmp.Open;
//  while not Query_tmp.Eof do begin
//    with doc.Документ.СвПродПер.СвПер.ОснПер.Add do begin
//      НаимОсн  := Query_tmp.FieldByName('doc_describe').AsString;
//      if not Query_tmp.FieldByName('doc_image_date').IsNull then
//        ДатаОсн  := FormatDateTime('dd.mm.yyyy', Query_tmp.FieldByName('doc_image_date').AsDateTime);
//    end;
//    Query_tmp.Next;
//  end;
//  Query_tmp.Free;


  if not Query.FieldByName('self_dir_id').IsNull then begin
    Query_tmp := TADOQuery.Create(nil);
    Query_tmp.Connection := Cnn;
    Query_tmp.SQL.Add('SELECT	type_contact_name, firm_contact_comment, family, first_name, last_name, isnull(set_edo_sign,0) set_edo_sign, firm_inn');
    Query_tmp.SQL.Add('FROM	  view_firm_contact');
    Query_tmp.SQL.Add('WHERE	firm_contact_id = ' + Query.FieldByName('self_dir_id').AsString);
    Query_tmp.Open;

    if(Query_tmp.FieldByName('firm_contact_comment').AsString = '') or
      (Query_tmp.FieldByName('type_contact_name').AsString = '') or
      (Query_tmp.FieldByName('family').AsString = '') or
      (Query_tmp.FieldByName('first_name').AsString = '') or
      (Query_tmp.FieldByName('last_name').AsString = '') then begin

      Application.MessageBox('У подписанта отсутствует ЭЦП.','ВНИМАНИЕ',MB_OK);
      Query_tmp.Free;
      Exit;
    end;

    if Query_tmp.FieldByName('set_edo_sign').AsBoolean then begin
      with doc.Документ.СвПродПер.СвПер.СвЛицПер.РабОргПрод do begin
        Должность    := Query_tmp.FieldByName('type_contact_name').AsString;
        ОснПолн      := Query_tmp.FieldByName('firm_contact_comment').AsString;
        ФИО.Фамилия  := Query_tmp.FieldByName('family').AsString;
        ФИО.Имя      := Query_tmp.FieldByName('first_name').AsString;
        ФИО.Отчество := Query_tmp.FieldByName('last_name').AsString;
      end;

      with doc.Документ.Подписант.Add do begin
        ОблПолн         := '6';
        Статус          := '1';
        ОснПолн         := Query_tmp.FieldByName('firm_contact_comment').AsString;

        ЮЛ.ИННЮЛ        := Query_tmp.FieldByName('firm_inn').AsString;//'7702059030';
        ЮЛ.Должн        := Query_tmp.FieldByName('type_contact_name').AsString;
        ЮЛ.ФИО.Фамилия  := Query_tmp.FieldByName('family').AsString;
        ЮЛ.ФИО.Имя      := Query_tmp.FieldByName('first_name').AsString;
        ЮЛ.ФИО.Отчество := Query_tmp.FieldByName('last_name').AsString;
      end;

    end;


    Query_tmp.Free;
  end;

  ShowTextMessage('Сохранение XML...', False);

  // сохранение файла
  xml := doc.OwnerDocument as TXMLDocument;
  xml.Active := True;

  xml.Version := '1.0';
  xml.Encoding := 'windows-1251';

  // Генерация Диадок (получение данных)
    //!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
    mem_bytes := TBytesStream.Create;
    xml.SaveToStream(mem_bytes);
    //mem_bytes.SaveToFile('d:\www\11.xml');
    //!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!

    // Пользователь
    Query_tmp := TADOQuery.Create(nil);
    Query_tmp.Connection := Cnn;
    Query_tmp.SQL.Add('SELECT	users.FIO_users, inf_obj.inf_obj_cod as users_group_cod');
    Query_tmp.SQL.Add('FROM	  users INNER JOIN inf_obj on users.users_group_id = inf_obj.inf_obj_id');
    Query_tmp.SQL.Add('WHERE	users_name = system_user');
    Query_tmp.Open;

    ClientDS := TClientDataSet.Create(nil);
    ClientDS.FieldDefs.Add('contract_id',   ftInteger);
    ClientDS.FieldDefs.Add('contract_cod', ftString, 50);
    ClientDS.FieldDefs.Add('contract_date',   ftDateTime);
    ClientDS.FieldDefs.Add('firm_customer_name', ftString, 50);
    ClientDS.FieldDefs.Add('firm_self_name', ftString, 50);
    ClientDS.FieldDefs.Add('document_cod', ftString, 50);
    ClientDS.FieldDefs.Add('documen_date',   ftDateTime);
    ClientDS.FieldDefs.Add('document_sum',   ftCurrency);
    ClientDS.FieldDefs.Add('document_nds_sum',   ftCurrency);
    ClientDS.FieldDefs.Add('document_nds_type', ftString, 50);
    ClientDS.FieldDefs.Add('FIO_users', ftString, 50);
    ClientDS.FieldDefs.Add('file_name', ftString, 300);
    ClientDS.CreateDataSet;
    ClientDS.LogChanges := False;

    // заполним структуру
    ClientDS.Append;
    ClientDS.FieldByName('contract_id'        ).Value := Query.FieldByName('contract_id').Value;
    ClientDS.FieldByName('contract_cod'       ).Value := Query.FieldByName('contract_cod').Value;
    ClientDS.FieldByName('contract_date'      ).Value := Query.FieldByName('contract_date_begin').Value;
    ClientDS.FieldByName('firm_customer_name' ).Value := Query.FieldByName('firm_customer_name').Value;
    ClientDS.FieldByName('firm_self_name'     ).Value := Query.FieldByName('firm_self_name').Value;
    ClientDS.FieldByName('document_cod'       ).Value := Query.FieldByName('acts_cod').Value;
    ClientDS.FieldByName('documen_date'       ).Value := Query.FieldByName('acts_date').Value;
    ClientDS.FieldByName('document_sum'       ).Value := acts_sum_with_nds;
    ClientDS.FieldByName('document_nds_sum'   ).Value := acts_sum_nds;
    ClientDS.FieldByName('document_nds_type'  ).Value := Q_NDS.Lookup('inf_obj_id', SP_Table.FieldByName('bargain_nds_id').AsInteger, 'inf_obj_name');
    ClientDS.FieldByName('FIO_users'          ).Value := Query_tmp.FieldByName('FIO_users').Value;
    ClientDS.FieldByName('file_name'          ).Value := doc.ИдФайл + '.xml';
    ClientDS.Post;

    // Сгенирить форму
    handle := LoadLibrary('work_edo.dll');
    @FPrintForm := GetProcAddress(handle, 'CreateWndGeneratePrintForm');

    if set_correction then
      v := FPrintForm(Application.Handle, Query_tmp.FieldByName('users_group_cod').AsString, Query.FieldByName('acts_id').AsInteger, 'UniversalTransferDocumentRevision', mem_bytes.Bytes, mem_bytes.Size, ClientDS)
    else
      v := FPrintForm(Application.Handle, Query_tmp.FieldByName('users_group_cod').AsString, Query.FieldByName('acts_id').AsInteger, 'UniversalTransferDocument', mem_bytes.Bytes, mem_bytes.Size, ClientDS);
    FreeLibrary(handle);

//    ShowMessage(IntToStr(v[0]));
    // Сохранение и отображение
    if v[0] <> -9 then begin
      if not Query.FieldByName('acts_id').IsNull then begin
        // имидж с-ф может отсутсвовать (для старых с-ф)
        sp_acts_modify := TADOStoredProc.Create(nil);
        sp_acts_modify.Connection := Cnn;
        sp_acts_modify.ProcedureName := 'sp_acts_modify';
        sp_acts_modify.Parameters.Refresh;

        sp_acts_modify.Parameters.ParamByName('@type_action').Value := 8;
        sp_acts_modify.Parameters.ParamByName('@acts_id').Value := Query.FieldByName('acts_id').AsInteger; // ссылку на ЭДО сохраняем в имидже с-ф (таблица Акты)
        sp_acts_modify.Parameters.ParamByName('@edo_doc_id').Value := v[0];

        try
          sp_acts_modify.ExecProc;
        except
        end;

        sp_acts_modify.Free;
      end;

      // Сохранение на диске
      if SelectDirectory('Путь для сохранения', '', save_path) then begin
        // Сохранение pdf
        handle := LoadLibrary('work_edo.dll');
        @FPrintFormPdf := GetProcAddress(handle, 'CreateWndDocumentPdfSave2Path');
        FPrintFormPdf(Query_tmp.FieldByName('users_group_cod').AsString, v[0], save_path);
        FreeLibrary(handle);

        // Сохранение pdf
        handle := LoadLibrary('work_edo.dll');
        @FPrintFormPdf := GetProcAddress(handle, 'CreateWndDocumentXmlSave2Path');
        FPrintFormPdf(Query_tmp.FieldByName('users_group_cod').AsString, v[0], save_path);
        FreeLibrary(handle);

        ShellExecute(HWND(nil), 'explore', PChar(save_path), nil, nil, SW_RESTORE);
      end;
    end;

    Query_tmp.Free;
    ClientDS.Free;
  // Генерация Диадок (получение данных)

  xml.Active := False;
  Screen.Cursor := crDefault;
  ShowTextMessage;

  ClientDS_distance.Free;
  Q_NDS.Free;
  SP_Table.Free;
  Query.Free;
  Query_score.Free;
end;


function GetExchangeFromInet_SOAP(dat:TDateTime; currency_name:string) : real;   //(dat: TDateTime; currency_id: integer; conn: TADOConnection):  Currency;
var        str : string;
             i : integer;
  XMLDocument1 : TXMLDocument;
       XMLNode : IXMLNode;
           RIO : THTTPRIO;
begin
  CoInitialize(nil);

  result := 0;
  try
//      RIO := THTTPRIO.Create(nil);
//      RIO.HTTPWebNode.Proxy       := cxTextEdit1.Text;
//      RIO.HTTPWebNode.UserName    := 'fedu';
//      RIO.HTTPWebNode.Password    := '______';
//      RIO.HTTPWebNode.ProxyByPass := cxTextEdit4.Text;
//      str := GetDailyInfoSoap(False, '', RIO).GetCursOnDateXML(DateTimeToXSDateTime(dat));
//      RIO.Free;

    str := GetDailyInfoSoap().GetCursOnDateXML(DateTimeToXSDateTime(dat));

    XMLDocument1 := TXMLDocument.Create(Application);
    XMLDocument1.XML.Clear();

    XMLDocument1.XML.Text := '<?xml version="1.0" encoding="windows-1251" ?>' + str;
    XMLDocument1.Active   := True;


    for i := 0 to XMLDocument1.DocumentElement.ChildNodes.Count -1 do begin
      XMLNode := XMLDocument1.DocumentElement.ChildNodes.Nodes[i];
      if UpperCase(XMLNode.ChildNodes.Nodes[XMLNode.ChildNodes.IndexOf('VchCode')].NodeValue) = currency_name then begin
        result := StrToFloat(ReplaceStr(XMLNode.ChildNodes.Nodes[XMLNode.ChildNodes.IndexOf('Vcurs')].NodeValue, '.', FormatSettings.DecimalSeparator));
        break;
      end;
    end;
    XMLDocument1.Active := False;
    XMLDocument1.Free;
  except
    on E: Exception do begin
      Application.MessageBox(PChar('Ошибка передачи данных!' + #10 + E.Message), 'Ошибка', MB_ICONERROR or MB_OK);
      result := 0;
    end;
  end;

  CoUninitialize();
end;


function GetExchangeNew(currency_id: integer; dt: TDatetime; conn: TADOConnection; set_exchange_day: boolean = False): double;
var            Q : TADOQuery;
    exchange_val : Currency;
begin
  Q := TADOQuery.Create(nil);
  Q.Connection := conn;

  if currency_id = 3 then begin
    exchange_val := 1;
  end else begin

    if set_exchange_day then begin
      Q.SQL.Add('SELECT TOP 1 * FROM exchange_new');
      Q.SQL.Add('WHERE currency_id = ' + IntToStr(currency_id) + ' AND exchange_date <= ' + DateToSQL(dt) + ' AND (set_exchange_day = 1)');
      Q.SQL.Add('ORDER BY exchange_date DESC');
      Q.Open;
    end else begin
      dt := IncMonth(dt) - DayOf(dt) - 1;
      Q.SQL.Add('SELECT TOP 1 * FROM exchange_new');
      Q.SQL.Add('WHERE currency_id = ' + IntToStr(currency_id) + ' AND exchange_date <= ' + DateToSQL(dt) + ' AND (set_exchange_day = 0)');
      Q.SQL.Add('ORDER BY exchange_date DESC');
      Q.Open;
    end;

    if Q.RecordCount <> 0 then
      exchange_val := Q.FieldByName('exchange_val').AsCurrency
    else
      exchange_val := -9;

  end;

  Q.Free;
  result := exchange_val;
end;


function LZHPack(str_data: TArray<Byte>; size: integer): variant;
type
  TLZHPack = function(str_data: TArray<Byte>): variant;
var
  FLZHPack      : TLZHPack;
  handle        : THandle;
  v             : TArray<Byte>;
begin
  SetLength(str_data, size);
  if LeftStr(RawByteString(str_data), 7) <> 'LIS_LZH' then begin
    handle := LoadLibrary('lzh.dll');
    @FLZHPack := GetProcAddress(handle,'LZHPack');
    v := FLZHPack(str_data);
    Result := v;
    FreeLibrary(handle);
  end else begin
    Result := RawByteString(str_data);
  end;
end;

function LZHUnPack(str_data: TArray<Byte>): variant;
type
  TLZHUnPack = function(str_data: TArray<Byte>): Variant;
var
  FLZHUnPack    : TLZHUnPack;
  handle        : THandle;
  v             : Variant;
begin
  if LeftStr(RawByteString(str_data), 7) = 'LIS_LZH' then begin
    handle := LoadLibrary('lzh.dll');
    @FLZHUnPack := GetProcAddress(handle,'LZHUnPack');
    v := FLZHUnPack(str_data);
    Result := v;
    FreeLibrary(handle);
  end else begin
    Result := str_data;
  end;
end;

function GetConnectOtherGroup(usr_pwd: PUser_pwd; Cnn : TADOConnection; group_cod : string) : TADOConnection;
var user_name : string;
    Q : TADOQuery;
    resCnn : TADOConnection;
begin
  Result := nil;

  user_name := usr_pwd.user_name;
  user_name := ReverseString(user_name);
  user_name := RightStr(user_name, Length(user_name) - Pos('_', user_name));
  user_name := ReverseString(user_name);

  Q := TADOQuery.Create(nil);
  Q.Connection := Cnn;
  Q.SQL.Add('select users_name from users');
  Q.SQL.Add('where users_name in (''' + user_name + ''', ''' + user_name + '_' + group_cod + ''') ');
  Q.SQL.Add('and users_group_id = (select top 1 inf_obj_id from inf_obj where type_inf_id = -3 and inf_obj_name_full = ''' + group_cod + ''')');
  Q.Open;

  if Q.Eof then begin
    Application.MessageBox(PWideChar('Отсутсвует пользователь в группе ' + group_cod), 'Внимание', MB_OK or MB_ICONERROR);
    exit;
  end;

  resCnn := TADOConnection.Create(Application.MainForm);
  resCnn.KeepConnection   := False;
  resCnn.LoginPrompt      := False;
  try
    resCnn.Connected := False;
    resCnn.ConnectionString := 'Persist Security Info=True;Provider=SQLOLEDB.1;User ID=' + Q.FieldByName('users_name').AsString + ';Password=''' + usr_pwd.user_pass + ''';Initial Catalog=' + usr_pwd.catalog + ';Data Source=' + usr_pwd.server + ';Connect Timeout=90';
//    resCnn.ConnectionString := 'Persist Security Info=True;Provider=SQLOLEDB.1;User ID=' + Q.FieldByName('users_name').AsString + ';Password=''' + usr_pwd.user_pass + ''';Initial Catalog=' + usr_pwd.catalog + ';Data Source=' + usr_pwd.server + ';';
    resCnn.Connected := True;

    Result := resCnn;
  except on E: Exception do begin
    Application.MessageBox('Неверные пользователь/пароль.', 'Внимание', MB_OK or MB_ICONERROR);
    resCnn.Free;
  end;
  end;

  Q.Free;

end;


function ConnectToDocs(usr_pwd_lis: PUser_pwd; usr_pwd_docs: PUser_pwd): PUser_pwd;
type
  TFuncLIS      = function(users_name: string; password: string; server: string; catalog: string; var ClientDS_usr_pwd: TClientDataSet): boolean;
  TFuncDOCS     = function(users_name: string; password: string; server: string; catalog: string): Variant;
  TFuncDOCSConn = function(AppHand: THandle; usr_pwd: PUser_pwd): Variant;
var
          FPassLIS : TFuncLIS;
         FPassDOCS : TFuncDOCS;
     FPassDOCSConn : TFuncDOCSConn;
            handle : THandle;
                 v : Variant;
               ret : boolean;
  ClientDS_usr_pwd : TClientDataSet;
begin

  ClientDS_usr_pwd := TClientDataSet.Create(nil);
  ClientDS_usr_pwd.FieldDefs.Add('users_id'       , ftInteger);
  ClientDS_usr_pwd.FieldDefs.Add('user_name'      , ftString, 50);
  ClientDS_usr_pwd.FieldDefs.Add('user_pass'      , ftString, 50);
  ClientDS_usr_pwd.FieldDefs.Add('user_cod'       , ftString, 50);
  ClientDS_usr_pwd.FieldDefs.Add('server'         , ftString, 50);
  ClientDS_usr_pwd.FieldDefs.Add('catalog'        , ftString, 50);
  ClientDS_usr_pwd.FieldDefs.Add('session'        , ftInteger);
  ClientDS_usr_pwd.FieldDefs.Add('user_group_id'  , ftInteger);
  ClientDS_usr_pwd.FieldDefs.Add('user_group_cod' , ftString, 50);
  ClientDS_usr_pwd.FieldDefs.Add('user_group_name', ftString, 50);
  ClientDS_usr_pwd.FieldDefs.Add('user_func'      , ftVarBytes, 16000);

  ClientDS_usr_pwd.CreateDataSet;

  handle   := LoadLibrary('pass.dll');
  @FPassLIS:= GetProcAddress(handle, 'GetListLogins');
  ret      := FPassLIS(usr_pwd_lis.user_name,usr_pwd_lis.user_pass,'','',ClientDS_usr_pwd);
  FreeLibrary(handle);


  handle     := LoadLibrary('pass_DV.dll');
  @FPassDOCS := GetProcAddress(handle, 'ConnectToDatabase');

  ClientDS_usr_pwd.First;
  while not ClientDS_usr_pwd.Eof do begin
    v := FPassDOCS(ClientDS_usr_pwd.FieldByName('user_name').AsString, usr_pwd_lis.user_pass, '', '');

    if v[0]<>-9 then break;

    ClientDS_usr_pwd.Next;
  end;
  FreeLibrary(handle);

  if v[0] = -9 then begin
    handle         := LoadLibrary('pass_DV.dll');
    @FPassDOCSConn := GetProcAddress(handle, 'CreateWndPassword');
    v              := FPassDOCSConn(Application.Handle, nil);
    FreeLibrary(handle);
  end;

  if v[0] <> -9 then begin
    usr_pwd_docs.users_id  := v[0];
    usr_pwd_docs.user_name := v[1];
    usr_pwd_docs.user_pass := v[2];
    usr_pwd_docs.server    := v[3];
    usr_pwd_docs.session   := v[4];
    usr_pwd_docs.user_cod  := v[5];
    usr_pwd_docs.catalog   := v[6];
    usr_pwd_docs.user_func := TClientDataSet.Create(nil);
    usr_pwd_docs.user_func.Data := v[7];
  end else begin
    usr_pwd_docs.users_id  := -9;
  end;

  ClientDS_usr_pwd.Free;

  Result := usr_pwd_docs;
end;

//копировать строку
procedure xCopyRow(exApp: Variant; FromRow: integer; ToRow: integer);
begin
  exApp.Rows[FromRow].Select;
  exApp.Selection.Copy;
  exApp.Rows[ToRow].Select;
  exApp.Selection.Insert(-4121);
  exApp.CutCopyMode := False;
  exApp.Range['A1'].Select;
end;

//Копировать диапозон строк с содержимым и форматированием
procedure xCopyRange(exApp: Variant; RowStart: integer; RowEnd: integer; ToRow: integer);
var
  Rows: integer;
  tmp_str: string;
begin
  Rows := RowEnd-RowStart;
  tmp_str := Format('%d:%d', [RowStart, RowEnd]);
  exApp.Rows[tmp_str].Select;
  exApp.Selection.Copy;
  tmp_str := Format('%d:%d', [ToRow, ToRow+Rows]);
  exApp.Rows[tmp_str].Select;
  exApp.Selection.Insert(-4121);
  exApp.CutCopyMode := False;
  exApp.Range['A1'].Select;
end;

function DeleteFrahtCard(bargain_id: integer; conn: TADOConnection): boolean;
var SP : TADOStoredProc;
   res : boolean;
     Q : TADOQuery;
begin
  Q := TADOQuery.Create(nil);
  Q.Connection := conn;
  Q.SQL.Add('SELECT bargain_sum_fact_USD FROM view_bargain WHERE bargain_id =  ' + IntToStr(bargain_id));
  Q.Open;

  if Q.FieldByName('bargain_sum_fact_USD').IsNull then begin
    Q.Free;
    Result := True;
    Exit;
  end;

  if Application.MessageBox(PWideChar('Фрахтовая карточка №' + IntToStr(bargain_id) + ' будет удалена.'+#10+'Вы уверенны?'),'Внимание!',MB_OKCANCEL+MB_ICONWARNING) <> ID_OK then begin
    Result := False;
    Exit;
  end;

  Screen.Cursor := crHourglass;
  SP := TADOStoredProc.Create(nil);
  SP.Connection := conn;
  SP.ProcedureName := 'sp_FRAHT_CARD_delete;1';
  SP.Parameters.Refresh;
  SP.Parameters.ParamByName('@bargain_id').Value := bargain_id;

  try
    SP.ExecProc;
    res := True;
  except
    res := False;
  end;

  SP.Free;
  Q.Free;

  Screen.Cursor := crDefault;

  Result := res;
end;

function CheckFrahtCard(bargain_id: integer; conn: TADOConnection): boolean;
var SP : TADOStoredProc;
   res : boolean;
begin
  Screen.Cursor := crHourglass;
  SP := TADOStoredProc.Create(nil);
  SP.Connection := conn;
  SP.ProcedureName := 'sp_fact_by_rate_CHECK';
  SP.Parameters.Refresh;
  SP.Parameters.ParamByName('@bargain_id').Value := bargain_id;

  try
    SP.ExecProc;
    res := SP.Parameters.ParamByName('@set_allow_save').Value;
  except
    res := False;
  end;

  SP.Free;
  Screen.Cursor := crDefault;

  Result := res;
end;

procedure StoreRegistryMemo(reg_action: TRegisterAction; reg_key: string; cxMemo: TcxMemo);
var   i : integer;
    Reg : TRegistry;
begin
  Reg := TRegistry.Create;
  Reg.RootKey := HKEY_CURRENT_USER;
  Reg.OpenKey(reg_key, True);

  // ------ сохранение --------
  if reg_action =  rgSave then begin
    Reg.DeleteKey(reg_key + '\' + cxMemo.Name);
    Reg.OpenKey(reg_key + '\' + cxMemo.Name, True);
    for i:=0 to cxMemo.Lines.Count - 1 do
      Reg.WriteString('Lines_' + IntToStr(i), cxMemo.Lines[i]);
  end;

  // ------ загрузка ----------
  if reg_action =  rgLoad then begin
    Reg.OpenKey(reg_key + '\' + cxMemo.Name, True);
    cxMemo.Lines.Clear;
    i := 0;
    while True do begin
      if Reg.ValueExists('Lines_' + IntToStr(i)) then cxMemo.Lines.Add(Reg.ReadString('Lines_' + IntToStr(i)))
      else break;

      i := i + 1;
    end;
  end;

  Reg.CloseKey;
  Reg.Free;
end;

procedure StoreRegistryCheckComboBox(reg_action: TRegisterAction; reg_key: string; cxCheckComboBox: TcxCheckComboBox);
var i,j,index_column : integer;
    min1,min2        : integer;
    Reg              : TRegistry;
begin
  Reg := TRegistry.Create;
  Reg.RootKey := HKEY_CURRENT_USER;
  Reg.OpenKey(reg_key, True);

  // ------ сохранение --------
  if reg_action =  rgSave then begin
    Reg.DeleteKey(reg_key + '\' + cxCheckComboBox.Name);
    Reg.OpenKey(reg_key + '\' + cxCheckComboBox.Name, True);
    for i:=0 to cxCheckComboBox.Properties.Items.Count - 1 do
          Reg.WriteBool('Lines_' + IntToStr(i), Boolean(cxCheckComboBox.States[i]));
  end;

  // ------ загрузка ----------
  if reg_action =  rgLoad then begin
    Reg.OpenKey(reg_key + '\' + cxCheckComboBox.Name, True);
    i := 0;
    while True do begin
      if Reg.ValueExists('Lines_' + IntToStr(i)) then cxCheckComboBox.States[i] := TcxCheckBoxState(Reg.ReadBool('Lines_' + IntToStr(i)))
      else break;

      i := i + 1;
    end;
  end;

  Reg.CloseKey;
  Reg.Free;
end;

procedure Excel_MergeCells(exWks: Variant; column_begin: string; column_end: string; line_begin: integer; line_end: integer; Hor : integer = -4131; Ver: integer = -4160; WrapText : Boolean = False);
begin
  exWks.Range[column_begin + IntToStr(line_begin) + ':' + column_end + IntToStr(line_end)].HorizontalAlignment := Hor;
  exWks.Range[column_begin + IntToStr(line_begin) + ':' + column_end + IntToStr(line_end)].VerticalAlignment   := Ver;
  exWks.Range[column_begin + IntToStr(line_begin) + ':' + column_end + IntToStr(line_end)].WrapText   := WrapText;
  exWks.Range[column_begin + IntToStr(line_begin) + ':' + column_end + IntToStr(line_end)].MergeCells := True;
end;


function GetLimitContract(contract_id : integer; limit_cod : string; var set_save: boolean; conn: TADOConnection) : string;
var sp_GetLimitContract : TADOStoredProc;
                    ret : string;
begin
  sp_GetLimitContract := TADOStoredProc.Create(nil);
  sp_GetLimitContract.Connection := conn;
  sp_GetLimitContract.ProcedureName := 'sp_GetLimitContract';
  sp_GetLimitContract.Parameters.Refresh;
  sp_GetLimitContract.Parameters.ParamByName('@contract_id').Value := contract_id;
  sp_GetLimitContract.Parameters.ParamByName('@limit_cod'  ).Value := limit_cod;

  try
    sp_GetLimitContract.ExecProc;
    if sp_GetLimitContract.Parameters.ParamByName('@result_message').Value = null then ret := ''
    else ret := sp_GetLimitContract.Parameters.ParamByName('@result_message').Value;

    set_save := sp_GetLimitContract.Parameters.ParamByName('@result_set_save').Value;
  except
  end;

  Result := ret;
  sp_GetLimitContract.Free;
end;

function ShortFileName(file_name: string; file_len: integer): string;
begin
  Result := LeftStr(
              LeftStr(ExtractFileName(file_name),  Length(ExtractFileName(file_name)) - Length(ExtractFileExt(ExtractFileName(file_name)))),
              file_len-4) + ExtractFileExt(ExtractFileName(file_name));
end;

{$REGION 'Работа с претензией'}
function SetPretension(str_fact_inc_id : string; type_pretension : integer; ClientDS : TClientDataSet; conn: TADOConnection; usr_pwd: PUser_pwd) : boolean;
var                rows : integer;
    exApp, exWks, exWkb : Variant;
                new_str : string;
                      Q : TADOQuery;
                 Q_Fact : TADOQuery;
                     SP : TADOStoredProc;
                      i : integer;
begin
  result := false;

  if not usr_pwd.user_func.Locate('func_name', 'set_pretenzia_zfto', [loCaseInsensitive]) then begin
    Application.MessageBox('У вас недостаточно прав !!!', 'Ошибка', MB_OK);
    exit;
  end;

  if str_fact_inc_id = '' then begin
    Application.MessageBox('Выделите пожалуйста необходимые вагоны!!!', 'Ошибка', MB_OK);
    exit;
  end;

  if type_pretension = 1 then
    new_str := 'Выставить претензию по выделенным вагонам?'
  else
    new_str := 'Удалить претензию с выделенных вагонов?';

  if Application.MessageBox(Pchar(new_str), 'Внимание', MB_OKCANCEL) <> IDOK then
    exit;

  new_str := '';
  Screen.Cursor := crHourglass;
  SP := TADOStoredProc.Create(nil);
  SP.Connection := conn;
  SP.ProcedureName := 'sp_fact_inc_pretenzia;1';
  SP.Parameters.Refresh;
  if type_pretension = 1 then begin
// Добавляем претензию
    InputQuery('Примечание', 'Введите пояснительный текcт              ', new_str);
    SP.Parameters.ParamByName('@str_fact_inc_id').Value := str_fact_inc_id;
    SP.Parameters.ParamByName('@free_fact_text').Value := new_str;
    SP.Parameters.ParamByName('@free_fact').Value := 1;
    SP.ExecProc;
    SP.Free;
  end else begin
// Удаляем претензию
    SP.Parameters.ParamByName('@str_fact_inc_id').Value := str_fact_inc_id;
    SP.ExecProc;
    SP.Free;
    result := True;
    exit;
  end;

  try
    Q_Fact := TADOQuery.Create(nil);
    Q_Fact.Connection := conn;
    Q_Fact.SQL.Add('SELECT CASE WHEN P_Om IS NULL THEN ''отпр.'' ELSE ''приб.'' END AS P_Om, ior1.inf_obj_name as O_Do_name, ior2.inf_obj_name as O_Fsd_name, fi.P_SNDS, vfit.*, '+
                   ' otch_data = DATEADD(dd, -1, CAST(''01.'' + CAST(DATEPART(month, DATEADD(mm, 1, datpr)) AS CHAR(2)) + ''.'' + CAST(DATEPART(year, DATEADD(mm, 1, datpr)) AS CHAR(4)) AS DATETIME)) ' +
                   ' , sto_name1 = REPLACE(Replace(vfit.sto_name, '' ('', ''-''), '')'','''') ' +
                   ' , stn_name1 = REPLACE(Replace(vfit.stn_name, '' ('', ''-''), '')'','''') ' +
                   ' , gruz_cod = right(''00000''+convert(varchar(5), vfit.gruz), 5)' +
                   ' FROM fact_inc fi ' +
                   ' INNER JOIN view_fact_inc_temp vfit ON fi.fact_inc_id = vfit.fact_inc_id ' +
                   ' LEFT JOIN inf_obj_ROAD ior1 ON fi.O_Do = ior1.inf_obj_cod ' +
                   ' LEFT JOIN inf_obj_ROAD ior2 ON fi.O_Fsd = ior2.inf_obj_cod ' +
                   ' WHERE fi.fact_inc_id IN (' +  str_fact_inc_id + ')' +
                   ' ORDER BY LEFT(convert(varchar(2), ndser) + ''00'', 2) + RIGHT(''000000'' + convert(varchar(6), ndnum), 6)');
    Q_Fact.Open;

    ShowTextMessage('Запуск сервера автоматизации...', False);
    exApp := CreateOleObject('Excel.Application');

    exWkb := exApp.Workbooks.Add(GetDocBlob(conn, 142));
    exWks := exApp.ActiveWorkbook.WorkSheets[1];
    exWks.Range['A1'].Value := 'ООО _________';

    ShowTextMessage('Формирование отчета претензии...', False);
    rows := 0;

    Q := TADOQuery.Create(nil);
    Q.Connection := conn;
    Q.SQL.Add(' SELECT MAX(vzsr.date_act) as date_act FROM zfto_score_fact_inc zsfi ' +
              ' INNER JOIN view_zfto_score_rights vzsr ON zsfi.zfto_score_id = vzsr.zfto_score_id '+
              ' WHERE fact_inc_id = :fact_inc_id');


    while not Q_Fact.Eof do begin
      ShowTextMessage('Осталось '+ IntToStr(Q_Fact.RecordCount - rows) + ' записей...', False);
      exWks.Rows[IntToStr(4+rows)].Insert;
      Q.Close;
      Q.Parameters.ParamByName('fact_inc_id').Value := Q_Fact.FieldByName('fact_inc_id').AsInteger;
      Q.Open;

      exWks.Range['B'+IntToStr(4+rows)].Value := Q_Fact.FieldByName('sto_name1').AsString;
      exWks.Range['C'+IntToStr(4+rows)].Value := Q_Fact.FieldByName('stn_name1').AsString;
      exWks.Range['D'+IntToStr(4+rows)].Value := Q_Fact.FieldByName('O_Do_name').AsString;
      exWks.Range['E'+IntToStr(4+rows)].Value := Q_Fact.FieldByName('O_Fsd_name').AsString;
      exWks.Range['F'+IntToStr(4+rows)].Value := Q_Fact.FieldByName('ndser').AsString + Q_Fact.FieldByName('ndnum').AsString;
      if Q_Fact.FieldByName('nvag').AsInteger = 0 then
        exWks.Range['G'+IntToStr(4+rows)].Value := Q_Fact.FieldByName('nkont').AsString
      else
        exWks.Range['G'+IntToStr(4+rows)].Value := Q_Fact.FieldByName('nvag').AsInteger;
      exWks.Range['H'+IntToStr(4+rows)].Value := FormatDateTime('dd.mm.yy', Q_Fact.FieldByName('dataot').AsDateTime);
      if (Q.RecordCount > 0) and ( not Q.FieldByName('date_act').IsNull) then
        exWks.Range['I'+IntToStr(4+rows)].Value := FormatDateTime('dd.mm.yy', Q.FieldByName('date_act').AsDateTime)
      else
        if not Q_Fact.FieldByName('otch_data').IsNull then exWks.Range['I'+IntToStr(4+rows)].Value := FormatDateTime('dd.mm.yy', Q_Fact.FieldByName('otch_data').AsDateTime);
      exWks.Range['J'+IntToStr(4+rows)].Value := Q_Fact.FieldByName('P_Om').AsString;
      exWks.Range['K'+IntToStr(4+rows)].Value := Q_Fact.FieldByName('gruz_cod').AsString;
      exWks.Range['L'+IntToStr(4+rows)].Value := Q_Fact.FieldByName('itogr').AsFloat;
  // Добавить нашу сумму
      exWks.Range['N'+IntToStr(4+rows)].FormulaR1C1 := '=RC[-2] - RC[-1]';
      exWks.Range['O'+IntToStr(4+rows)].Value := Q_Fact.FieldByName('P_SNDS').AsString;
      exWks.Range['P'+IntToStr(4+rows)].Value := new_str;
      if (ClientDS <> nil) and (ClientDS.Locate('fact_inc_id', Q_Fact.FieldByName('fact_inc_id').Value, [loCaseInsensitive])) then
        exWks.Range['M'+IntToStr(4+rows)].Value := ClientDS.FieldByName('sum_F').AsFloat;
      rows := rows + 1;
      Q_Fact.Next;
    end;
    exWks.Rows[3].Delete;
    exWks.Rows[3+rows].Delete;

    exWks.Range['A'+IntToStr(2+rows)+':P'+IntToStr(2+rows)].Borders[9].LineStyle := 1;
    result := True;
  finally
    ShowTextMessage;
    Q.Free;
    Q_Fact.Free;
    exApp.Visible := True;
    exWks := Null;
    exWkb := Null;
    exApp := Null;
    Screen.Cursor := crDefault;
  end;
end;
{$ENDREGION 'Работа с претензией'}

{$REGION 'Запуск Rail-Info'}
procedure OpenRealInfo(Document : string);
var rInf, Chaild_rInf     : HWND;
    WinOpen               : DWORD;
    startInfo             : STARTUPINFO;
    procInfo              : PROCESS_INFORMATION;
    y                     : integer;
    DirRailInfo           : TNetResource;
    Err                   : DWORD;
begin
  try
    DirRailInfo.dwType:=RESOURCETYPE_DISK;
    DirRailInfo.lpLocalName:=nil;
    DirRailInfo.lpRemoteName:=PChar(CTM_RailInfoDir);
    DirRailInfo.lpProvider:=nil;
    Err := WNetCancelConnection2(DirRailInfo.lpRemoteName, CONNECT_UPDATE_PROFILE, TRUE);
    Err := WNetAddConnection2(DirRailInfo, PChar(CTM_Password), PChar(CTM_User), 0);

    rInf := FindWindow('RBContWn1',nil);
    if rInf = 0 then begin
      ZeroMemory(@startInfo,sizeof(startInfo));
      startInfo.cb := SizeOf(startInfo);
      startInfo.wShowWindow := SW_SHOWDEFAULT;
      if CreateProcess(PWideChar(nil), PWideChar(CTM_RailInfo), nil, nil, False, 0, nil, PWideChar(nil), startInfo, procInfo) then begin
        rInf := FindWindow('RBContWn1',nil);
        while rInf = 0 do begin
          Sleep(100);
          rInf := FindWindow('RBContWn1',nil);
        end;
      end else begin
        Application.MessageBox(PWideChar('Системная ошибка. (' + CTM_RailInfo + ')'), 'Внимание', MB_OK);
        exit;
      end;
    end else begin
      if Document = '-9' then begin
        Application.MessageBox('Rail-Info уже запущен', 'Внимание', MB_OK);
        exit;
      end;
    end;
    WinOpen := GetWindowThreadProcessId(rInf, WinOpen);
    AttachThreadInput(GetCurrentThreadId(), WinOpen, True);
    Chaild_rInf := GetDlgItem(rInf, $0000DF8A);
    for y := 0 to 10 - 1 do begin
      if Chaild_rInf = 0 then begin
        Chaild_rInf := GetDlgItem(rInf, $0000DF8A);
        Sleep(1000);
      end;
    end;
    if Chaild_rInf = 0 then begin
      Application.MessageBox('Возникли проблемы с открытием документа, попробуйте открыть ещё раз', 'Внимание', MB_OK);
      exit;
    end;
    if Document <> '-9' then SendMessage(Chaild_rInf, WM_SETTEXT  , 0, Integer(PChar(Document)));
    AttachThreadInput(GetCurrentThreadId(), WinOpen, False);
  except
    on E: Exception do begin
      Application.MessageBox(PChar('Не установлена программа Rail-Info.' + E.Message), 'Внимание', MB_OK);
    end;
  end;
end;
{$ENDREGION 'Запуск Rail-Info'}

function GetSumScript_Weight(Value: string):string;
var zz                    : double;
    ii                    : longint;
    str,str_rub,str_kop,r : string;
    m                     : PChar;
    indx                  : byte;
begin
   zz := StrToFloat(Value);
   if zz<0 then begin
     zz := -1*zz;
     str := '(-) ';
     indx := 4;
   end else begin
     str := '';
     indx := 0;
   end;
   ii := Trunc(zz);

   if (ii div 1000000)<>0 then str := Calc_mln_RUS(ii);
   if (ii mod 1000000)<>0 then
     if (ii div 1000)<>0 then str := str + Calc_tis_RUS(ii mod 1000000);
   str := str + Calc_sot_RUS(ii mod 1000);

   str := Trim(str);
   result := str;
end;

procedure PrintInvoice(invoice_id: integer; connect_etran: TADOConnection);
var
  exApp, exWkb, exWks : Variant;
  i, line_cnt   : integer;
  Q : TADOQuery;
  Query_Invoice         : TADOQuery;
  Query_Invoice_Freight : TADOQuery;
  Query_Invoice_Due     : TADOQuery;
  Query_Invoice_Fact    : TADOQuery;
  Query_Invoice_Fact2   : TADOQuery;
  //--------------------------------------
  Query_Invoice_invSPC  : TADOQuery;
  Query_RoadBegin       : TADOQuery;
  Query_RoadEnd         : TADOQuery;
  Query_Invoice_Fact3   : TADOQuery;
  Query_Act             : TADOQuery;
  Query_Transp          : TADOQuery;
  str_inv_spc, str : string;
  //--------------------------------------
begin

  exApp := CreateOleObject('Excel.Application');
  exWkb := exApp.Workbooks.Add(GetEtranDocBlob(connect_etran, 144, 9, True)); // 'ГУ-12.xls'
  exWkb := exApp.ActiveWorkbook;
  exWks := exWkb.WorkSheets[1];
//  exApp.Visible := True;
  ShowTextMessage('Запуск сервера автоматизации...', False);

  Q := TADOQuery.Create(nil);
  Q.Connection := connect_etran;

  Query_Invoice := TADOQuery.Create(nil);
  Query_Invoice.Connection := connect_etran;
  Query_Invoice.SQL.Add('SELECT * FROM invoice WHERE invoice_id = ' + IntToStr(invoice_id));
  Query_Invoice.Open;


  Query_Transp := TADOQuery.Create(nil);
  Query_Transp.Connection := connect_etran;
  Query_Transp.SQL.Add('SELECT * FROM invTranspClause WHERE invoice_id = ' + IntToStr(invoice_id));
  Query_Transp.Open;

  Query_Invoice_Due := TADOQuery.Create(nil);
  Query_Invoice_Due.Connection := connect_etran;
  Query_Invoice_Due.SQL.Add('SELECT	dueScheme, dueTarifCoef, distMinWay, dueTarifDiscount, dueFreightTarifClass ');
  Query_Invoice_Due.SQL.Add('FROM	invDue WHERE invoice_id = ' + IntToStr(invoice_id));
  Query_Invoice_Due.SQL.Add('UNION');
  Query_Invoice_Due.SQL.Add('SELECT	dueScheme, dueTarifCoef, distMinWay, dueTarifDiscount, dueFreightTarifClass ');
  Query_Invoice_Due.SQL.Add('FROM	invDueArrive WHERE invoice_id = ' + IntToStr(invoice_id));
  Query_Invoice_Due.Open;


  Query_Invoice_Freight := TADOQuery.Create(nil);
  Query_Invoice_Freight.Connection := connect_etran;
  Query_Invoice_Freight.SQL.Add('SELECT TOP 1 * FROM invFreight WHERE invoice_id = ' + IntToStr(invoice_id));
  Query_Invoice_Freight.Open;


  Query_Invoice_Fact := TADOQuery.Create(nil);
  Query_Invoice_Fact.Connection := connect_etran;
  Query_Invoice_Fact.SQL.Add('SELECT	carOrder, carTypeName, invCar.carNumber, carTonnage, carAxles, carWeightNet,  carWeightDep*100 as carWeightDep, carWeightGross, carVolume, dueAmount, carTypeCode,');
  Query_Invoice_Fact.SQL.Add('        ''собств '' + isnull(carOwnerName,'''') + isnull('' '' + carOwnerOKPO,'''') as comment, ');
  Query_Invoice_Fact.SQL.Add('        cast(round(cast(len(''собств '' + isnull(carOwnerName,'''') + isnull('' '' + carOwnerOKPO,'''')) as money)/19.0,0) as int) as comment_size');
  Query_Invoice_Fact.SQL.Add('FROM	invCar left join (');
  Query_Invoice_Fact.SQL.Add('			SELECT carNumber, sum(dueAmount) as dueAmount FROM ');
  Query_Invoice_Fact.SQL.Add('			(	 SELECT	carNumber, dueAmount FROM invDue WHERE invoice_id = ' + IntToStr(invoice_id));
  Query_Invoice_Fact.SQL.Add('			   UNION ALL');
  Query_Invoice_Fact.SQL.Add('			   SELECT	carNumber, dueAmount FROM invDueArrive WHERE invoice_id = ' + IntToStr(invoice_id));
  Query_Invoice_Fact.SQL.Add('			) x2');
  Query_Invoice_Fact.SQL.Add('			GROUP BY carNumber) x1 on invCar.carNumber = x1.carNumber');
  Query_Invoice_Fact.SQL.Add('WHERE	invoice_id = ' + IntToStr(invoice_id));
  Query_Invoice_Fact.SQL.Add('ORDER BY carOrder');
  Query_Invoice_Fact.Open;


  Query_Invoice_Fact2 := TADOQuery.Create(nil);
  Query_Invoice_Fact2.Connection := connect_etran;
  Query_Invoice_Fact2.SQL.Add('SELECT count(1) cnt_vagon, sum(carWeightNet) as carWeightNet,  sum(carWeightDep*100) as carWeightDep, sum(carWeightGross) as carWeightGross, sum(dueAmount) as dueAmount');
  Query_Invoice_Fact2.SQL.Add('FROM	invCar left join (');
  Query_Invoice_Fact2.SQL.Add('			SELECT carNumber, sum(dueAmount) as dueAmount FROM ');
  Query_Invoice_Fact2.SQL.Add('			(	 SELECT	carNumber, dueAmount FROM invDue WHERE invoice_id = ' + IntToStr(invoice_id));
  Query_Invoice_Fact2.SQL.Add('			   UNION ALL');
  Query_Invoice_Fact2.SQL.Add('			   SELECT	carNumber, dueAmount FROM invDueArrive WHERE invoice_id = ' + IntToStr(invoice_id));
  Query_Invoice_Fact2.SQL.Add('			) x2');
  Query_Invoice_Fact2.SQL.Add('			GROUP BY carNumber) x1 on invCar.carNumber = x1.carNumber');
  Query_Invoice_Fact2.SQL.Add('WHERE	invoice_id = ' + IntToStr(invoice_id));
  Query_Invoice_Fact2.Open;


  Query_Invoice_Fact3 := TADOQuery.Create(nil);
  Query_Invoice_Fact3.Connection := connect_etran;
  Query_Invoice_Fact3.SQL.Add('SELECT TOP 1 carOwnerTypeID, carOwnerName FROM invCar WHERE invoice_id = ' + IntToStr(invoice_id));
  Query_Invoice_Fact3.Open;

  //--------------------------------------------
  Query_Invoice_invSPC := TADOQuery.Create(nil);
  Query_Invoice_invSPC.Connection := connect_etran;
  Query_Invoice_invSPC.SQL.Add('SELECT * FROM invSPC WHERE invoice_id = ' + IntToStr(invoice_id) + ' ORDER BY 1');
  Query_Invoice_invSPC.Open;

  Query_RoadBegin := TADOQuery.Create(nil);
  Query_RoadBegin.Connection := connect_etran;
  Query_RoadBegin.SQL.Add('SELECT	inf_obj_ROAD.inf_obj_name, inf_obj_ROAD.inf_obj_cod ');
  Query_RoadBegin.SQL.Add('FROM	  invoice ');
  Query_RoadBegin.SQL.Add('       LEFT JOIN depo..inf_obj_NODE as inf_obj_NODE ON invoice.invFromStationCode COLLATE cyrillic_general_ci_as = inf_obj_NODE.inf_obj_cod COLLATE cyrillic_general_ci_as');
  Query_RoadBegin.SQL.Add('       LEFT JOIN depo..inf_obj_ROAD as inf_obj_ROAD ON inf_obj_ROAD.inf_obj_id = inf_obj_NODE.road_id');
  Query_RoadBegin.SQL.Add('WHERE	invoice_id = ' + IntToStr(invoice_id));
  Query_RoadBegin.Open;

  Query_RoadEnd := TADOQuery.Create(nil);
  Query_RoadEnd.Connection := connect_etran;
  Query_RoadEnd.SQL.Add('SELECT	inf_obj_ROAD.inf_obj_name, inf_obj_ROAD.inf_obj_cod ');
  Query_RoadEnd.SQL.Add('FROM	  invoice ');
  Query_RoadEnd.SQL.Add('       LEFT JOIN depo..inf_obj_NODE as inf_obj_NODE ON invoice.invToStationCode COLLATE cyrillic_general_ci_as = inf_obj_NODE.inf_obj_cod COLLATE cyrillic_general_ci_as');
  Query_RoadEnd.SQL.Add('       LEFT JOIN depo..inf_obj_ROAD as inf_obj_ROAD ON inf_obj_ROAD.inf_obj_id = inf_obj_NODE.road_id');
  Query_RoadEnd.SQL.Add('WHERE	invoice_id = ' + IntToStr(invoice_id));
  Query_RoadEnd.Open;

  Query_Act := TADOQuery.Create(nil);
  Query_Act.Connection := connect_etran;
  Query_Act.SQL.Add('SELECT	actCar.carNumber');
  Query_Act.SQL.Add('FROM	  act');
  Query_Act.SQL.Add('       INNER JOIN invoice ON act.actInvoiceID = invoice.invoiceID');
  Query_Act.SQL.Add('       INNER JOIN actCar ON act.act_id = actCar.act_id');
  Query_Act.SQL.Add('WHERE	actKindId = 0 AND invoice.invoice_id = ' + IntToStr(invoice_id));
  Query_Act.Open;
  //--------------------------------------------


  ShowTextMessage('Подготовка накладной...', False);
  exWks.Range['Q1'].Value := 'УНО ' + Query_Invoice.FieldByName('invUniqueNumber').AsString;

  // Особые отметки
  //--------------------------------------------
  str_inv_spc := '';
  while not Query_Invoice_invSPC.Eof do begin
    str_inv_spc := str_inv_spc + Query_Invoice_invSPC.FieldByName('spcTranspClauseDesc').AsString + ';';
    Query_Invoice_invSPC.Next;
  end;
  exWks.Range['A2'].Value := str_inv_spc;
  //--------------------------------------------


  exWks.Range['L4' ].Value := Query_Invoice.FieldByName('invClaimNumber').AsString;
  exWks.Range['AT4'].Value := FormatDateTime('dd.mm.yyyy',Query_Invoice.FieldByName('invDateLoad').AsDateTime);
  exWks.Range['BR4'].Value := '''' + Query_Invoice.FieldByName('invVizaNumber').AsString;
  exWks.Range['N5' ].Value := Query_Invoice.FieldByName('invVizaPerson').AsString;
  exWks.Range['A7' ].Value := Query_RoadBegin.FieldByName('inf_obj_name').AsString + ' ж.д. (' + Query_RoadBegin.FieldByName('inf_obj_cod').AsString + ')';
  exWks.Range['CH8'].Value := Query_Invoice.FieldByName('invNumber').AsString;

  case Query_Invoice.FieldByName('invDispKindID').AsInteger of
     1: exWks.Range['A10'].Value := 'ПPЯMOE' + ' сообщение ' + '(02)';
     2: exWks.Range['A10'].Value := 'MEЖДУHAPOДHOE (ЭKCПOPT В ДЗ)' + ' сообщение ' + '(06)';
     3: exWks.Range['A10'].Value := 'ИMПOPT (BBOЗ)' + ' сообщение ' + '(05)';
     4: exWks.Range['A10'].Value := 'CMEШAHHOE Ж.Д.BOДHOE' + ' сообщение ' + '(04)';
     5: exWks.Range['A10'].Value := 'MEЖДУHAPOДHOE - ТРАНЗИТ' + ' сообщение ' + '(10)';
     6: exWks.Range['A10'].Value := 'MEЖГOCУДAPCTBEHHOE СНГ (ЭKCПOPT В СНГ)' + ' сообщение ' + '(14)';
     7: exWks.Range['A10'].Value := 'HEПPЯMOE MEЖДУHAPOДHOE - BOДHOE НАЗНАЧЕНИЕ' + ' сообщение ' + '(07)';
     8: exWks.Range['A10'].Value := 'HEПPЯMOE MEЖДУHAPOДНОЕ' + ' сообщение ' + '(08)';
     9: exWks.Range['A10'].Value := 'MEЖДУHAPOДHOE - ВОДНОЕ' + ' сообщение ' + '(09)';
    10: exWks.Range['A10'].Value := 'MECTHOE' + ' сообщение ' + '(01)';
    11: exWks.Range['A10'].Value := 'ПPЯMOE Ж.Д. ДO HOBOСТРОЕК' + ' сообщение ' + '(11)';
    12: exWks.Range['A10'].Value := 'ПPЯMOE Ж.Д. C УЗKOЙ КОЛЕЕЙ' + ' сообщение ' + '(12)';
    13: exWks.Range['A10'].Value := 'ИМПОРТ ИЗ СНГ' + ' сообщение ' + '(15)';
    14: exWks.Range['A10'].Value := 'ИМПОРТ ИЗ ДЗ' + ' сообщение ' + '(16)';
    15: exWks.Range['A10'].Value := 'ТРАНЗИТ В СНГ' + ' сообщение ' + '(17)';
  end;

  exWks.Range['X11'].Value := FormatDateTime('dd.mm.yyyy',Query_Invoice.FieldByName('invDateExpire').AsDateTime);
  exWks.Range['A12'].Value := Query_Invoice.FieldByName('invSendSpeedName').AsString + ' скорость (' + Query_Invoice.FieldByName('invSendSpeedID').AsString + ')';
  exWks.Range['M13'].Value := 'ОАО "РЖД" код 00083262';

  exWks.Range['A15' ].Value := Query_Invoice.FieldByName('invFromStationName').AsString;
  exWks.Range['AQ15'].Value := '''' + Query_Invoice.FieldByName('invFromStationCode').AsString;
  exWks.Range['BB15'].Value := Query_Invoice.FieldByName('invToStationName').AsString;
  exWks.Range['CT15'].Value := '''' + Query_Invoice.FieldByName('invToStationCode').AsString;

  exWks.Range['A16' ].Value := Query_RoadBegin.FieldByName('inf_obj_name').AsString + ' ж.д.';
  exWks.Range['BB16'].Value := Query_RoadEnd.FieldByName('inf_obj_name').AsString + ' ж.д.';

  exWks.Range['BB18'].Value := Query_Invoice.FieldByName('invToLoadWay').AsString;

  exWks.Range['A20' ].Value := Query_Invoice.FieldByName('invSenderName').AsString + ' (' + Query_Invoice.FieldByName('invSenderTGNL').AsString + ')';
  exWks.Range['AQ20'].Value := '''' + Query_Invoice.FieldByName('invSenderOKPO').AsString;
  exWks.Range['A23' ].Value := Query_Invoice.FieldByName('invSenderAddress').AsString;

  exWks.Range['BB20'].Value := Query_Invoice.FieldByName('invRecipName').AsString + ' (' + Query_Invoice.FieldByName('invRecipTGNL').AsString + ')';;
  exWks.Range['CT20'].Value := '''' + Query_Invoice.FieldByName('invRecipOKPO').AsString;
  exWks.Range['BB23'].Value := Query_Invoice.FieldByName('invRecipAddress').AsString;


  exWks.Range['A25' ].Value := Query_Invoice.FieldByName('invPayerName').AsString;
  exWks.Range['AP25'].Value := '''' + Query_Invoice.FieldByName('invPayerCode').AsString;

  exWks.Range['BB25'].Value := Query_Invoice.FieldByName('invPayerName').AsString;
  exWks.Range['CS25'].Value := '''' + Query_Invoice.FieldByName('invPayerCode').AsString;

  ///////////////////////

  if Query_Invoice_Freight.FieldByName('freightExactName').AsString <> '' then
    exWks.Range['A28'].Value := Query_Invoice_Freight.FieldByName('freightExactName').AsString
  else
    exWks.Range['A28'].Value := Query_Invoice_Freight.FieldByName('freightName').AsString;

  exWks.Range['BK28'].Value := Query_Invoice_Freight.FieldByName('freightCode').AsString;
  if Length(Query_Invoice_Freight.FieldByName('freightPackTypeName').AsString) > 4 then begin
    exWks.Range['BZ28'].Value := LeftStr(Query_Invoice_Freight.FieldByName('freightPackTypeName').AsString,3);
  end else begin
    exWks.Range['BZ28'].Value := Query_Invoice_Freight.FieldByName('freightPackTypeName').AsString;
  end;
  exWks.Range['CG28'].Value := Query_Invoice_Freight.FieldByName('freightPackageCount').AsString;
  exWks.Range['CS28'].Value := Query_Invoice_Freight.FieldByName('freightWeight').AsString;

  if Query_Invoice_Fact3.FieldByName('carOwnerTypeID').AsInteger = 3 then
    exWks.Range['A30'].Value := 'Вагоны принадлежат перевозчику.'
  else
    exWks.Range['A30'].Value := 'Вагоны не принадлежат перевозчику. Собственник:' + Query_Invoice_Fact3.FieldByName('carOwnerName').AsString;


  exWks.Range['X33'].Value := GetSumScript_Weight(Query_Invoice_Freight.FieldByName('freightWeight').AsString) + ' кг.';
  exWks.Range['R34'].Value := Query_Invoice.FieldByName('invLoadAssetsName').AsString;
  exWks.Range['Y35'].Value := Query_Invoice.FieldByName('invLoadAssetsName').AsString;

  exWks.Range['BK34'].Value := Query_Invoice.FieldByName('invScaleTypeName').AsString + ' +/- ' + Query_Invoice.FieldByName('invScalePrecision').AsString + '%';


  exWks.Range['S38'].Value := Query_Invoice.FieldByName('invRespPerson').AsString;
  exWks.Range['S41'].Value := Query_Invoice.FieldByName('invDeplPerson').AsString;

  exWks.Range['AI39'].Value := Query_Invoice.FieldByName('invDepNormDocName').AsString;

  str := '';
  Query_Transp.First;
  while not Query_Transp.Eof do begin
    str := str + Query_Transp.FieldByName('transpClauseTarifMark').AsString + ' ';
    Query_Transp.Next;
  end;

  exWks.Range['AD43'].Value := '''' + str;

  exWks.Range['AD44'].Value := '''' + Query_Invoice_Due.FieldByName('dueScheme').AsString;
  exWks.Range['AX44'].Value := '''' + Query_Invoice_Due.FieldByName('dueTarifCoef').AsString;
  exWks.Range['BV44'].Value := Query_Invoice.FieldByName('invSendKindName').AsString;
  exWks.Range['CM44'].Value := Query_Invoice_Due.FieldByName('distMinWay').AsString + ' км';

  exWks.Range['I45'].Value := '''' + Query_Invoice_Due.FieldByName('dueTarifDiscount').AsString + '%';
  exWks.Range['AN45'].Value := '''' + Query_Invoice.FieldByName('invIxTariffCode').AsString;
  exWks.Range['BF45'].Value := '''' + Query_Invoice_Due.FieldByName('dueFreightTarifClass').AsString;

  exWks.Range['A53'].Value := 'ИТОГО: ' +
              'вагонов ' + Query_Invoice_Fact2.FieldByName('cnt_vagon').AsString + ', ' +
              'нетто '   + Query_Invoice_Fact2.FieldByName('carWeightNet').AsString + ' кг, ' +
              'тара '    + Query_Invoice_Fact2.FieldByName('carWeightDep').AsString + ' кг, ' +
              'брутто '  + Query_Invoice_Fact2.FieldByName('carWeightGross').AsString + ' кг';

  exWks.Range['CR53'].Value := Query_Invoice_Fact2.FieldByName('dueAmount').AsString;
  exWks.Range['CR54'].Value := Query_Invoice_Fact2.FieldByName('dueAmount').AsString;

  if Query_Invoice_Fact2.FieldByName('dueAmount').AsString <> '' then begin
    exWks.Range['A56'].Value := GetSumScript_RUS(Query_Invoice_Fact2.FieldByName('dueAmount').AsString, 3);
  end;

  exWks.Range['G58' ].Value := Query_Invoice.FieldByName('invPayPlaceName').AsString;
  exWks.Range['BL58'].Value := Query_Invoice.FieldByName('invPayFormName').AsString;

  exWks.Range['L59'].Value := Query_Invoice.FieldByName('invGoodsCashierPost').AsString + ' ' + Query_Invoice.FieldByName('invGoodsCashier').AsString;

  Query_Invoice_Fact.First;
  line_cnt := 51;
  while not Query_Invoice_Fact.Eof do begin
    exWks.Rows[IntToStr(line_cnt+1) + ':' + IntToStr(line_cnt+1)].Insert;
    exWks.Rows[IntToStr(line_cnt  ) + ':' + IntToStr(line_cnt  )].Copy;
    exWks.Rows[IntToStr(line_cnt+1) + ':' + IntToStr(line_cnt+1)].PasteSpecial(1);

    exWks.Range['A'  + IntToStr(line_cnt)].Value := Query_Invoice_Fact.FieldByName('carOrder').AsString;

    Q.SQL.Clear;
    Q.SQL.Add('SELECT TOP 1 * FROM lis1..inf_obj WHERE type_inf_id = 129 AND inf_obj_cod = ''' + Query_Invoice_Fact.FieldByName('carTypeCode').AsString + '''');
    Q.Open;

    if Q.RecordCount > 0 then begin
      exWks.Range['E'  + IntToStr(line_cnt)].Value := Q.FieldByName('inf_obj_name').AsString;
    end else begin
      exWks.Range['E'  + IntToStr(line_cnt)].Value := Query_Invoice_Fact.FieldByName('carTypeName').AsString;
    end;

    exWks.Range['J'  + IntToStr(line_cnt)].Value := Query_Invoice_Fact.FieldByName('carNumber').AsString;
    exWks.Range['S'  + IntToStr(line_cnt)].Value := '20';
    exWks.Range['V'  + IntToStr(line_cnt)].Value := Query_Invoice_Fact.FieldByName('carTonnage').AsString;
    exWks.Range['AA' + IntToStr(line_cnt)].Value := Query_Invoice_Fact.FieldByName('carAxles').AsString;
    exWks.Range['AD' + IntToStr(line_cnt)].Value := Query_Invoice_Fact.FieldByName('carWeightNet').AsString;
    exWks.Range['AK' + IntToStr(line_cnt)].Value := Query_Invoice_Fact.FieldByName('carWeightDep').AsString;
    exWks.Range['AU' + IntToStr(line_cnt)].Value := Query_Invoice_Fact.FieldByName('carWeightGross').AsString;
    exWks.Range['BI' + IntToStr(line_cnt)].Value := Query_Invoice_Fact.FieldByName('carVolume').AsString;
    exWks.Range['BM' + IntToStr(line_cnt)].Value := Query_Invoice_Fact.FieldByName('comment').AsString;
    exWks.Range['CR' + IntToStr(line_cnt)].Value := Query_Invoice_Fact.FieldByName('dueAmount').AsString;



    if Query_Invoice_Fact.FieldByName('comment_size').AsInteger > 1 then begin
      exWks.Rows[IntToStr(line_cnt) + ':' + IntToStr(line_cnt)].RowHeight := Query_Invoice_Fact.FieldByName('comment_size').AsInteger * 10.5;
    end;

    if Query_Act.Locate('carNumber', Query_Invoice_Fact.FieldByName('carNumber').AsString, []) then begin
      exWks.Range['A' + IntToStr(line_cnt) +':DC' + IntToStr(line_cnt)].Font.Strikethrough := True;
      exWks.Range['A' + IntToStr(line_cnt) +':DC' + IntToStr(line_cnt)].Font.Bold := False;
    end else begin
      exWks.Range['A' + IntToStr(line_cnt) +':DC' + IntToStr(line_cnt)].Font.Strikethrough := False;
      exWks.Range['A' + IntToStr(line_cnt) +':DC' + IntToStr(line_cnt)].Font.Bold := True;
    end;


    line_cnt := line_cnt + 1;
    Query_Invoice_Fact.Next;
  end;
  exWks.Rows[IntTostr(line_cnt)].Delete;


  Q.Free;
  Query_Invoice.Free;
  Query_Invoice_Freight.Free;
  Query_Invoice_Due.Free;
  Query_Invoice_Fact.Free;
  Query_Invoice_Fact2.Free;
  Query_Invoice_invSPC.Free;
  Query_RoadBegin.Free;
  Query_RoadEnd.Free;
  Query_Invoice_Fact3.Free;
  Query_Act.Free;
  exWks.Range['A1'].Select;
  exApp.CutCopyMode := False;

  exWks.PageSetup.FitToPagesWide := 1;
  exWks.PageSetup.FitToPagesTall := 1;


  exApp.Visible := True;
  ShowTextMessage();

  VarClear(exWks); VarClear(exWkb); VarClear(exApp);
end;

function RecordsetFromXML(const XML: string): _Recordset;
var
  RS: Variant;
  Stream: TStringStream;
begin
  Result := nil;
  if XML = '' then Exit;
  try
    Stream := TStringStream.Create(XML);
    Stream.Position := 0;
    RS := CreateOleObject('ADODB.Recordset');
    RS.Open(TStreamAdapter.Create(Stream) as IUnknown);
    Result := IUnknown(RS) as _Recordset;
  finally
    Stream.Free;
  end;
end;



function SetPretensionFact(str_fact_id : string; conn: TADOConnection): boolean;
var                rows : integer;
    exApp, exWks, exWkb : Variant;
                new_str : string;
                 Q_Fact : TADOQuery;
                      i : integer;
begin
  result := false;

  if str_fact_id = '' then begin
    Application.MessageBox('Выделите пожалуйста необходимые вагоны!!!', 'Ошибка', MB_OK);
    exit;
  end;

  new_str := '';
  InputQuery('Примечание', 'Введите пояснительный текcт              ', new_str);
  Screen.Cursor := crHourglass;

  Q_Fact := TADOQuery.Create(nil);
  Q_Fact.Connection := conn;

  {Q_Fact.SQL.Add('SELECT datpr '+
                 ' FROM	view_fact_all ' +
                 ' WHERE fact_id IN (' +  str_fact_id + ') AND datpr IS NULL');

  Q_Fact.Open;
  if Q_Fact.RecordCount > 0 then begin
    Application.MessageBox('В выделенном списке есть вагоны у которых отсутствует дата прибытия. Исключите вагоны из списка!!!', 'Ошибка', MB_OK);
    Q_Fact.Free;
    Screen.Cursor := crDefault;
    exit;
  end;
   }
  try
    Q_Fact.Close;
    Q_Fact.SQL.Clear;
    Q_Fact.SQL.Add('SELECT	fact_id, node_begin_name, node_end_name, road_begin_name, road_end_name, num_document_pref, num_document, num_vagon, num_konten, date_from_to, datpr, '+
                   ' otch_data = DATEADD(dd, -1, CAST(''01.'' + CAST(DATEPART(month, DATEADD(mm, 1, ISNULL(datpr, getdate()))) AS CHAR(2)) + ''.'' + CAST(DATEPART(year, DATEADD(mm, 1, ISNULL(datpr, getdate()))) AS CHAR(4)) AS DATETIME)) ' +
                   ' , node_begin_name1 = REPLACE(Replace(node_begin_name, '' ('', ''-''), '')'','''') ' +
                   ' , node_end_name1 = REPLACE(Replace(node_end_name, '' ('', ''-''), '')'','''') ' +
                   ' , gruz_cod = LEFT(kargoETSNG_cod, 5)' +
                   ' , kargoETSNG_name, transport_pay, nds, dateadd(mm, 1, ISNULL(datpr, getdate())) - day(dateadd(mm, 1, ISNULL(datpr, getdate()))) AS date_act ' +
                   ' FROM	view_fact_all ' +
                   ' WHERE fact_id IN (' +  str_fact_id + ')' +
                   ' ORDER BY LEFT(convert(varchar(2), num_document_pref) + ''00'', 2) + RIGHT(''000000'' + convert(varchar(6), num_document), 6)');
    Q_Fact.Open;

    ShowTextMessage('Запуск сервера автоматизации...', False);
    exApp := CreateOleObject('Excel.Application');

    exWkb := exApp.Workbooks.Add(GetDocBlob(conn, 142));
    exWks := exApp.ActiveWorkbook.WorkSheets[1];

    exWks.Range['A1'].Value := 'ООО _________';

    ShowTextMessage('Формирование отчета претензии...', False);
    rows := 0;

    while not Q_Fact.Eof do begin
      ShowTextMessage('Осталось '+ IntToStr(Q_Fact.RecordCount - rows) + ' записей...', False);
      exWks.Rows[IntToStr(4+rows)].Insert;

      exWks.Range['B'+IntToStr(4+rows)].Value := Q_Fact.FieldByName('node_begin_name1').AsString;
      exWks.Range['C'+IntToStr(4+rows)].Value := Q_Fact.FieldByName('node_end_name1').AsString;
      exWks.Range['D'+IntToStr(4+rows)].Value := Q_Fact.FieldByName('road_begin_name').AsString;
      exWks.Range['E'+IntToStr(4+rows)].Value := Q_Fact.FieldByName('road_end_name').AsString;
      exWks.Range['F'+IntToStr(4+rows)].Value := Q_Fact.FieldByName('num_document_pref').AsString + Q_Fact.FieldByName('num_document').AsString;
      if Q_Fact.FieldByName('num_vagon').AsInteger = 0 then
        exWks.Range['G'+IntToStr(4+rows)].Value := Q_Fact.FieldByName('num_konten').AsString
      else
        exWks.Range['G'+IntToStr(4+rows)].Value := Q_Fact.FieldByName('num_vagon').AsInteger;

      exWks.Range['H'+IntToStr(4+rows)].Value := FormatDateTime('dd.mm.yy', Q_Fact.FieldByName('date_from_to').AsDateTime);
      if (not Q_Fact.FieldByName('datpr').IsNull) then
        exWks.Range['I'+IntToStr(4+rows)].Value := FormatDateTime('dd.mm.yy', Q_Fact.FieldByName('date_act').AsDateTime);

//      exWks.Range['J'+IntToStr(4+rows)].Value := '';Q_Fact.FieldByName('P_Om').AsString;
      exWks.Range['K'+IntToStr(4+rows)].Value := Q_Fact.FieldByName('gruz_cod').AsString;
      exWks.Range['L'+IntToStr(4+rows)].Value := Q_Fact.FieldByName('transport_pay').AsFloat;
  // Добавить нашу сумму
      exWks.Range['N'+IntToStr(4+rows)].FormulaR1C1 := '=RC[-2] - RC[-1]';
      if Q_Fact.FieldByName('nds').AsInteger <> 0  then
        exWks.Range['O'+IntToStr(4+rows)].Value := '18';
      exWks.Range['P'+IntToStr(4+rows)].Value := new_str;

      rows := rows + 1;
      Q_Fact.Next;
    end;
    exWks.Rows[3].Delete;
    exWks.Rows[3+rows].Delete;

    exWks.Range['A'+IntToStr(2+rows)+':P'+IntToStr(2+rows)].Borders[9].LineStyle := 1;
    result := True;
  finally
    ShowTextMessage;
    Q_Fact.Free;
    exApp.Visible := True;
    exWks := Null;
    exWkb := Null;
    exApp := Null;
    Screen.Cursor := crDefault;
  end;
end;

procedure SetReportArenda(conn: TADOConnection; usr_pwd: PUser_pwd);
type
  TFunc = function(AppHand: THandle; flag: boolean; usr_pwd: PUser_pwd) : variant;
var exWks, exApp  : Variant;
    date1, date2  : TDateTime;
    row_0         : integer;
    contract_id   : integer;
    firm_name     : string;
    Q             : TADOQuery;
    SP            : TADOStoredProc;
    ADO_ETRAN     : TADOConnection;
    FRepFactTrack : TFunc;
           handle : THandle;
                v : Variant;
begin
  handle := LoadLibrary('reports.dll');
  @FRepFactTrack := GetProcAddress(handle, 'CreateWndRepFactTrackArenda');
  v := FRepFactTrack(Application.Handle, False, usr_pwd);
  FreeLibrary(handle);

  if v[0]=-9 then begin
    exit;
  end;

  date1 := v[0];
  date2 := v[1];

  Q := TADOQuery.Create(nil);
  Q.Connection := conn;
  Q.SQL.Add(' SELECT  DISTINCT firm.firm_name, vagon_owner.contract_id, contract.contract_cod ' +
            ' FROM vagon_owner	INNER JOIN contract ON vagon_owner.contract_id = contract.contract_id ' +
      			' 		              INNER JOIN firm ON contract.firm_customer = firm.firm_id ' +
            '					          INNER JOIN view_vagon_rights ON vagon_owner.vagon_id = view_vagon_rights.vagon_id '+
            ' WHERE  (vagon_owner.date_begin <= :date1 OR vagon_owner.date_begin IS NULL) ' +
            ' AND (vagon_owner.date_end >= :date2 OR   vagon_owner.date_end IS NULL)');

  Q.Parameters.ParamByName('date1').Value := date1;
  Q.Parameters.ParamByName('date2').Value := date2;
  Q.Open;

  fmFilter := TfmFilter.Create(0, Q, 'contract_id', 'contract_cod', 'firm_name');
  fmFilter._SetVagonOwner := True;

  if fmFilter.ShowModal = mrOk then begin
    contract_id := fmFilter.GetId;
    firm_name   := fmFilter.GetName;
    fmFilter.Free;
  end else begin
    Q.Free;
    fmFilter.Free;
    exit;
  end;

  SP := TADOStoredProc.Create(nil);
  SP.Connection := conn;
  SP.ProcedureName := 'sp_Report_fact_track';
  SP.CommandTimeout := 150;
  SP.Parameters.Refresh;
// 149 - это код excel файла в шаблоне документов (отчет по аренде для КХТ)
  SP.Parameters.ParamByName('@type_report').Value := 149;
  SP.Parameters.ParamByName('@contract_id').Value := contract_id;
  SP.Parameters.ParamByName('@date_begin').Value := date1;
  SP.Parameters.ParamByName('@date_end').Value := date2;
  SP.Parameters.ParamByName('@node_begin_cod').Value := v[2];
  SP.Parameters.ParamByName('@node_end_cod').Value := v[3];
  SP.Parameters.ParamByName('@str_num_vagon').Value := v[4];


  SP.Open;

  Screen.Cursor := crHourglass;
  ShowTextMessage('Запуск Excel...', False);
  try
    exApp := CreateOleObject('Excel.Application');
    exApp.Workbooks.Add(GetDocBlob(conn, 149, 9, True));
    exWks := exApp.ActiveWorkbook.WorkSheets[1];
    exWks.Range['C4'].Value := date1;
    exWks.Range['D4'].Value := date2;
    exWks.Range['B3'].Value := firm_name + ' (по дате отпр.)';
    Q.Close;

    ADO_ETRAN := TADOConnection.Create(nil);
    ADO_ETRAN.ConnectionString := 'Persist Security Info=True;Provider=SQLOLEDB.1;User ID=etran_kht;Password=cjnhfkjubcnbrf;Initial Catalog=LIS_ETRAN;Data Source='+usr_pwd^.server+';';
    ADO_ETRAN.Connected := True;
    ADO_ETRAN.KeepConnection := False;
    ADO_ETRAN.LoginPrompt    := False;

    Q.Connection := ADO_ETRAN;
    Q.SQL.Clear;
    Q.SQL.Add('SELECT CONVERT(datetime,CONVERT(varchar(10),invDateReceiving,102),102) as invDateReceiving, CONVERT(datetime,CONVERT(varchar(10),invDateRegister,102),102) as invDateRegister FROM Invoice WHERE invoiceID = :etran_doc_id');

    row_0 := 7;

    while not SP.Eof do begin
      exWks.Range['B' + IntToStr(row_0)].Value := SP.FieldByName('num_vagon').Value;
      exWks.Range['C' + IntToStr(row_0)].Value := SP.FieldByName('start_node_begin_name').Value;
      exWks.Range['D' + IntToStr(row_0)].Value := SP.FieldByName('start_node_end_name').Value;
      exWks.Range['E' + IntToStr(row_0)].Value := SP.FieldByName('start_num_doc').Value;
      exWks.Range['F' + IntToStr(row_0)].Value := SP.FieldByName('start_date_otpr').Value;
      exWks.Range['H' + IntToStr(row_0)].Value := SP.FieldByName('start_date_pr').Value;
      exWks.Range['J' + IntToStr(row_0)].Value := SP.FieldByName('finish_node_begin_name').Value;
      exWks.Range['K' + IntToStr(row_0)].Value := SP.FieldByName('finish_node_end_name').Value;
      exWks.Range['L' + IntToStr(row_0)].Value := SP.FieldByName('finish_num_doc').Value;
      exWks.Range['M' + IntToStr(row_0)].Value := SP.FieldByName('finish_date_otpr').Value;

      Q.Close;
      Q.Parameters.ParamByName('etran_doc_id').Value := SP.FieldByName('start_etran_doc_id').Value;
      Q.Open;

      if Q.RecordCount > 0 then begin
        exWks.Range['G' + IntToStr(row_0)].Value := Q.FieldByName('invDateReceiving').Value;
      end;

      Q.Close;
      Q.Parameters.ParamByName('etran_doc_id').Value := SP.FieldByName('finish_etran_doc_id').Value;
      Q.Open;

      if Q.RecordCount > 0 then begin
        if (Q.FieldByName('invDateRegister').IsNull) then
          exWks.Range['N' + IntToStr(row_0)].Value := Date()
        else
          exWks.Range['N' + IntToStr(row_0)].Value := Q.FieldByName('invDateRegister').Value;
      end else
        exWks.Range['N' + IntToStr(row_0)].Value := Date();

      ShowTextMessage('Осталось: ' + IntToStr(SP.RecordCount - SP.RecNo) + 'строк.' , False);
      SP.Next;
      if not SP.Eof then begin
        xCopyRow(exApp,row_0 + 1,row_0 +1);
        inc(row_0);
      end;
    end;

    Q.Free;
    SP.Free;
    ADO_ETRAN.Free;

    exApp.Rows[IntToStr(row_0 + 1) + ':' + IntToStr(row_0 + 1)].Select;
    exApp.Selection.Delete;

    if row_0 = 6 then begin
      exApp.Rows[IntToStr(row_0) + ':' + IntToStr(row_0)].Select;
      exApp.Selection.Delete;
    end;


    exApp.Visible := True;
    exApp.Range['A1'].Select;

  finally

    VarClear(exWks); VarClear(exApp);
    ShowTextMessage('', True);
    Screen.Cursor := crDefault;
  end;
end;

procedure SetFilterColumn(cxGridView : TcxGridDBBandedTableView);
type
  TFunc = function(AppHand:THandle) : variant;
var
  FFilterCol    : TFunc;
  handle        : THandle;
  v             : Variant;
  cxGridColumn  : TcxGridColumn;
  List          : TStringList;
  i             : integer;
begin
  handle := LoadLibrary('search.dll');
  @FFilterCol := GetProcAddress(handle, 'CreateWndFilterColumn');
  v := FFilterCol(Application.Handle);
  FreeLibrary(handle);
  if v[0] = '' then
    exit;
  Screen.Cursor := crHourglass;
  List := TStringList.Create;
  try
    List.Text := v[0];
    cxGridColumn := cxGridView.Controller.FocusedColumn;
    cxGridView.DataController.DataSet.DisableControls;
    with cxGridView.DataController.Filter do begin
      Clear;
      Options := Options + [fcoCaseInsensitive];
      Root.BoolOperatorKind := fboOr;
      BeginUpdate;
      for i := 0 to List.Count - 1 do if (Trim(List.Strings[i])<>'') then
        Root.AddItem(cxGridColumn, foEqual, Trim(List.Strings[i]),Trim(List.Strings[i]) );
      EndUpdate;
      Active := True;
    end;
    cxGridView.DataController.DataSet.EnableControls;
  finally
    List.Free;
    Screen.Cursor := crDefault;
  end;
end;

function ParserDBF(file_name: string; var Client_Records: TClientDataSet; var str_error: string): boolean;
var    FileDBF : TMemoryStream;
     DBFHeader : TDBFHeader;
      DBFField : TDBFField;
     field_end : byte;
          done : boolean;
           i,k : integer;
     begin_pos : integer;
  record_value : array[0..4000] of AnsiChar;
   field_value : AnsiString;
       str_tmp : AnsiString;
 Client_Fields : TClientDataSet;
begin
  FileDBF := TMemoryStream.Create;
  Client_Fields := TClientDataSet.Create(nil);
  try
    FileDBF.LoadFromFile(file_name);
    FileDBF.Seek(0, soFromBeginning);
    FileDBF.Read(DBFHeader, SizeOf(TDBFHeader));

    if (DBFHeader.Version <> $03) and (DBFHeader.Version <> $30)  then begin
      case DBFHeader.Version of
        $02: str_error := 'Не поддерживаемый формат файла. Формат:' + 'FoxBase';
        $03: str_error := 'Не поддерживаемый формат файла. Формат:' + 'FoxPro/dBASE IV';
        $04: str_error := 'Не поддерживаемый формат файла. Формат:' + 'dBASE IV w/o memo file';
        $05: str_error := 'Не поддерживаемый формат файла. Формат:' + 'dBASE V w/o memo file';
        $07: str_error := 'Не поддерживаемый формат файла. Формат:' + 'VISUAL OBJECTS (first 1.0 versions) for the Dbase III files w/o memo file';
        $30: str_error := 'Не поддерживаемый формат файла. Формат:' + 'Visual FoxPro';
        $31: str_error := 'Не поддерживаемый формат файла. Формат:' + 'Visual FoxPro w. AutoIncrement field';
        $43: str_error := 'Не поддерживаемый формат файла. Формат:' + 'dbv memo var size (Flagship)';
        $7B: str_error := 'Не поддерживаемый формат файла. Формат:' + 'dBASE IV with memo';
        $83: str_error := 'Не поддерживаемый формат файла. Формат:' + 'dBASE III+ with memo file';
        $87: str_error := 'Не поддерживаемый формат файла. Формат:' + 'VISUAL OBJECTS (first 1.0 versions) for the Dbase III files (NTX clipper driver) with memo file';
        $8B: str_error := 'Не поддерживаемый формат файла. Формат:' + 'dBASE IV w. memo';
        $8E: str_error := 'Не поддерживаемый формат файла. Формат:' + 'dBASE IV w. SQL table';
        $B3: str_error := 'Не поддерживаемый формат файла. Формат:' + 'dbv and .dbt memo (Flagship)';
        $E5: str_error := 'Не поддерживаемый формат файла. Формат:' + 'Clipper SIX driver w. SMT memo file.';
        $F5: str_error := 'Не поддерживаемый формат файла. Формат:' + 'FoxPro w. memo file';
        $FB: str_error := 'Не поддерживаемый формат файла. Формат:' + 'FoxPro ???';
        else str_error := 'Не поддерживаемый формат файла. Формат:' + 'Неизвестно.';
      end;
      Result := False;
      FileDBF.Free;
      Client_Fields.Free;
      Exit;
    end;

    if (DBFHeader.Language <> $00) and (DBFHeader.Language <> $C9)  then begin
      case DBFHeader.Language of
        $00: str_error := 'Не поддерживаемая кодировка. Кодировка:' + 'DOS';
        $01: str_error := 'Не поддерживаемая кодировка. Кодировка:' + 'DOS USA';
        $02: str_error := 'Не поддерживаемая кодировка. Кодировка:' + 'DOS Multilingual';
        $03: str_error := 'Не поддерживаемая кодировка. Кодировка:' + 'Windows ANSI';
        $04: str_error := 'Не поддерживаемая кодировка. Кодировка:' + 'Standard Macintosh';
        $64: str_error := 'Не поддерживаемая кодировка. Кодировка:' + 'EE MS-DOS';
        $65: str_error := 'Не поддерживаемая кодировка. Кодировка:' + 'Nordic MS-DOS';
        $66: str_error := 'Не поддерживаемая кодировка. Кодировка:' + 'Russian MS-DOS';
        $67: str_error := 'Не поддерживаемая кодировка. Кодировка:' + 'Icelandic MS-DOS';
        $68: str_error := 'Не поддерживаемая кодировка. Кодировка:' + 'Kamenicky (Czech) MS-DOS';
        $69: str_error := 'Не поддерживаемая кодировка. Кодировка:' + 'Mazovia (Polish) MS-DOS';
        $6A: str_error := 'Не поддерживаемая кодировка. Кодировка:' + 'Greek MS-DOS (437G)';
        $6B: str_error := 'Не поддерживаемая кодировка. Кодировка:' + 'Turkish MS-DOS';
        $96: str_error := 'Не поддерживаемая кодировка. Кодировка:' + 'Russian Macintosh';
        $97: str_error := 'Не поддерживаемая кодировка. Кодировка:' + 'Eastern European Macintosh';
        $98: str_error := 'Не поддерживаемая кодировка. Кодировка:' + 'Greek Macintosh';
        $C8: str_error := 'Не поддерживаемая кодировка. Кодировка:' + 'Windows EE';
        $C9: str_error := 'Не поддерживаемая кодировка. Кодировка:' + 'Russian Windows';
        $CA: str_error := 'Не поддерживаемая кодировка. Кодировка:' + 'Turkish Windows';
        $CB: str_error := 'Не поддерживаемая кодировка. Кодировка:' + 'Greek Windows';
      end;
      Result := False;
      FileDBF.Free;
      Client_Fields.Free;
      Exit;
    end;


    Client_Fields.FieldDefs.Add('id', ftAutoInc);
    Client_Fields.FieldDefs.Add('field_name', ftString, 255);
    Client_Fields.FieldDefs.Add('field_type', ftString, 2);
    Client_Fields.FieldDefs.Add('field_size', ftInteger);
    Client_Fields.FieldDefs.Add('field_begin_pos', ftInteger);
    Client_Fields.CreateDataSet;
    Client_Fields.LogChanges := False;

    Client_Fields.Append;
    Client_Fields.FieldByName('field_name').Value := 'record_id';
    Client_Fields.FieldByName('field_type').Value := 'N';
    Client_Fields.FieldByName('field_size').Value := 10;
    Client_Fields.FieldByName('field_begin_pos').Value := 0;
    Client_Fields.Post;

    Client_Fields.Append;
    Client_Fields.FieldByName('field_name').Value := 'set_delete';
    Client_Fields.FieldByName('field_type').Value := 'C';
    Client_Fields.FieldByName('field_size').Value := 1;
    Client_Fields.FieldByName('field_begin_pos').Value := 1;
    Client_Fields.Post;

    begin_pos := 2;
    done := True;
    while done = True do begin
      FileDBF.Read(field_end, SizeOf(byte));
      if field_end <> $0D then begin
        FileDBF.Seek(-1, soFromCurrent);
        FileDBF.Read(DBFField, SizeOf(TDBFField));

        str_tmp := '';
        for i := 0 to 9 do if DBFField.dfFieldName[i] <> 0 then str_tmp := str_tmp + chr(DBFField.dfFieldName[i]);

        Client_Fields.Append;
        Client_Fields.FieldByName('field_name').Value := str_tmp;
        Client_Fields.FieldByName('field_type').Value := chr(DBFField.dfFieldType);
        Client_Fields.FieldByName('field_size').Value := DBFField.dfFieldLength;
        Client_Fields.FieldByName('field_begin_pos').Value := begin_pos;
        Client_Fields.Post;
        begin_pos := begin_pos + DBFField.dfFieldLength;

      end else done := False;
    end; //$0D

    FileDBF.Read(field_end, SizeOf(byte));
    if field_end <> $1A then FileDBF.Seek(-1, soFromCurrent);

    Client_Fields.First;
    while not Client_Fields.Eof do begin
      Client_Records.FieldDefs.Add(Client_Fields.FieldByName('field_name').Value, ftString, Client_Fields.FieldByName('field_size').Value + 1);
      Client_Fields.Next;
    end;
    Client_Records.CreateDataSet;
    Client_Records.LogChanges := False;


    if DBFHeader.Version = $30 then FileDBF.Read(record_value, 263);


    for i := 0 to DBFHeader.RecordCount -1 do begin
      FileDBF.Read(record_value, DBFHeader.RecordSize);

      str_tmp := '';
      for k := 0 to DBFHeader.RecordSize-1 do str_tmp := str_tmp + record_value[k];

      if DBFHeader.Language = $00 then OemToAnsi(PAnsiChar(str_tmp), PAnsiChar(str_tmp));

      Client_Records.Append;
      Client_Records.FieldByName('record_id').Value := i;

      Client_Fields.First;
      while not Client_Fields.Eof do begin
        if Client_Fields.FieldByName('field_begin_pos').Value > 0 then begin
          field_value := MidStr(str_tmp, Client_Fields.FieldByName('field_begin_pos').Value, Client_Fields.FieldByName('field_size').Value);
          Client_Records.FieldByName(Client_Fields.FieldByName('field_name').Value).Value := field_value;
        end;
        Client_Fields.Next;
      end;

      Client_Records.Post;
    end;


  except
    on E: Exception do begin
      str_error := 'Ошибка при конвертирование файла: ' + file_name + #10 + E.Message;
      Result := False;
      FileDBF.Free;
      Client_Fields.Free;
      Exit;
    end;
  end;
  FileDBF.Free;
  Client_Fields.Free;
  Result := True;
end;

procedure PrintReportPlanClient(contract_id: integer; date_begin: TDateTime; date_end: TDateTime; connect: TADOConnection);
var exApp, exWkb, exWks : Variant;
    blok_start,row_insert : integer;
    d : TDateTime;
    Q : TADOQuery;
    sp_invoice_balance_GET_new : TADOStoredProc;
    sp_report_plan_client : TADOStoredProc;
    exchange_val : Currency;
begin
  fmPeriod := TfmPeriod.Create(Application, date_begin, date_end, 1);
  if fmPeriod.ShowModal=mrOK then begin
    date_begin := fmPeriod._GetDateBegin;
    date_end := fmPeriod._GetDateEnd;
  end else exit;

  ShowTextMessage('Запуск сервера автоматизации...', False);
  Q := TADOQuery.Create(nil);
  Q.Connection := connect;
  Q.SQL.Add('SELECT * FROM view_contract WHERE contract_id = ' + IntToStr(contract_id));
  Q.Open;

  sp_invoice_balance_GET_new := TADOStoredProc.Create(nil);
  sp_invoice_balance_GET_new.Connection := connect;
  sp_invoice_balance_GET_new.ProcedureName := 'sp_invoice_balance_GET_new';
  sp_invoice_balance_GET_new.Parameters.Refresh;
  sp_invoice_balance_GET_new.Parameters.ParamByName('@contract_id').Value := contract_id;
  sp_invoice_balance_GET_new.Parameters.ParamByName('@date_begin' ).Value := date_begin;
  sp_invoice_balance_GET_new.Parameters.ParamByName('@date_end'   ).Value := date_end;
  sp_invoice_balance_GET_new.Parameters.ParamByName('@type_result').Value := -1;
  sp_invoice_balance_GET_new.ExecProc;

  sp_report_plan_client := TADOStoredProc.Create(nil);
  sp_report_plan_client.Connection := connect;
  sp_report_plan_client.ProcedureName := 'sp_report_plan_client';
  sp_report_plan_client.Parameters.Refresh;
  sp_report_plan_client.Parameters.ParamByName('@contract_id').Value := contract_id;
  sp_report_plan_client.Parameters.ParamByName('@date1').Value := date_begin;
  sp_report_plan_client.Parameters.ParamByName('@date2').Value := date_end;
  sp_report_plan_client.Open;

  exApp := CreateOleObject('Excel.Application');
  exWkb := exApp.Workbooks.Add(GetDocBlob(connect, 78, 9, True)); // 'Отчет по плану.xls'
  exWkb := exApp.ActiveWorkbook;
  exWks := exWkb.WorkSheets[1];
  exApp.ActiveWindow.DisplayGridlines := False;

  //Шапка
  exWks.Range['B2'].Value := 'Отчет по фактическим отгрузкам ОАО "РЖД" c ' + FormatDateTime('dd.mm.yyyy', date_begin) + ' по ' + FormatDateTime('dd.mm.yyyy', date_end) + '.';
  exWks.Range['C4'].Value := Q.FieldByName('firm_customer_name').AsString;
  exWks.Range['C5'].Value := Q.FieldByName('firm_self_name').AsString;
  exWks.Range['C6'].Value := Q.FieldByName('contract_cod').AsString;
  exWks.Range['F8'].Value := 'RUB';//Q.FieldByName('brief_name').AsString;
  exWks.Range['B8'].Value := 'Сумма на (' + FormatDateTime('dd.mm.yyyy', sp_invoice_balance_GET_new.Parameters.ParamByName('@date_begin' ).Value) + '):';
  exWks.Range['B9'].Value := 'Сумма на (' + FormatDateTime('dd.mm.yyyy', date_end) + '):';
  exchange_val := 1;
  if Q.FieldByName('currency_id').AsInteger <> 3 then
    exchange_val := GetExchangeNew(Q.FieldByName('currency_id').AsInteger, date_begin, connect);
  exWks.Range['D8'].Value := RoundCurr(sp_invoice_balance_GET_new.Parameters.ParamByName('@out_balance_begin').Value *exchange_val ,2);

  blok_start := 12;
  row_insert := 0;
  // ------------------------------------------------


  sp_report_plan_client.First;
  d := sp_report_plan_client.FieldByName('record_date').AsDateTime;
  while not sp_report_plan_client.Eof do begin
    ShowTextMessage('Осталось '+ IntToStr(sp_report_plan_client.RecordCount - sp_report_plan_client.RecNo) + ' записей...', False);
    if  sp_report_plan_client.FieldByName('record_date').AsDateTime <> d then begin

       exApp.Rows[IntToStr(blok_start +row_insert) + ':' + IntToStr(blok_start+row_insert+1)].Select;
       exApp.Selection.Delete;

       exApp.Rows[IntToStr(blok_start + row_insert+1) + ':' + IntToStr(blok_start + row_insert + 3)].Select;
       exApp.Selection.Copy;
       exApp.Rows[IntToStr(blok_start + row_insert+1) + ':' + IntToStr(blok_start + row_insert + 3)].Select;
       exApp.Selection.Insert(-4121);
       exApp.CutCopyMode := False;
       exApp.Range['A1'].Select;

       d := sp_report_plan_client.FieldByName('record_date').AsDateTime ;
       blok_start := blok_start + row_insert+1;
       row_insert := 0;
    end;

    exWks.Range['B'+IntToStr(blok_start + row_insert)].Value := FormatDateTime('dd.mm.yyyy', sp_report_plan_client.FieldByName('record_date').AsDateTime);
    exWks.Range['C'+IntToStr(blok_start + row_insert)].Value := row_insert +1;
    exWks.Range['D'+IntToStr(blok_start + row_insert)].Value := sp_report_plan_client.FieldByName('direction').AsString;
    exWks.Range['E'+IntToStr(blok_start + row_insert)].Value := sp_report_plan_client.FieldByName('record_sum_RUB').AsFloat;
    exWks.Range['F'+IntToStr(blok_start + row_insert)].Value := sp_report_plan_client.FieldByName('pay_sum_RUB').AsFloat;

    sp_report_plan_client.Next;
    inc(row_insert);
    if not sp_report_plan_client.Eof then begin
      exApp.Rows[blok_start + row_insert].Select;
      exApp.Selection.Copy;
      exApp.Rows[blok_start + row_insert].Select;
      exApp.Selection.Insert(-4121);
      exApp.CutCopyMode := False;
      exApp.Range['A1'].Select;
    end;
  end;
  exApp.Rows[IntToStr(blok_start + row_insert+2) + ':' + IntToStr(blok_start + row_insert+3)].Select;
  exApp.Selection.Delete;
  exWks.Range[exWks.Cells[blok_start + row_insert + 2,2],exWks.Cells[blok_start + row_insert + 2,6]].Interior.ColorIndex := 35;
  exWks.Range['F'+IntToStr(blok_start + row_insert + 2)].Formula := '=SUM(F12:F'+ IntToStr(blok_start + row_insert + 1)+ ')/2';
  exWks.Range['E'+IntToStr(blok_start + row_insert + 2)].Formula := '=SUM(E12:E'+ IntToStr(blok_start + row_insert + 1)+ ')/2';
  exWks.Range['D9'].Formula := '=D8-E' + IntToStr(blok_start + row_insert + 2) + '+F' + IntToStr(blok_start + row_insert + 2);

  exWks.PageSetup.Orientation := 2;
  exWks.PageSetup.LeftMargin := exApp.InchesToPoints(0.196850393700787);
  exWks.PageSetup.RightMargin := exApp.InchesToPoints(0.196850393700787);
  exWks.PageSetup.TopMargin := exApp.InchesToPoints(0.196850393700787);
  exWks.PageSetup.BottomMargin := exApp.InchesToPoints(0.196850393700787);

  exWks.PageSetup.Zoom := False;
  exWks.PageSetup.FitToPagesWide := 1;
  exWks.PageSetup.FitToPagesTall := 100;
  exWks.PageSetup.PrintArea := exWks.Range[exWks.Cells[1,1], exWks.Cells[Blok_start + row_insert + 2, 10]].Address;

  exApp.Range['A1'].Select;
  exApp.Visible := True;
  ShowTextMessage;
  sp_report_plan_client.Free;
  Q.Free;
  exWks := null; exWkb := null; exApp := null;
  Screen.Cursor := crDefault;
end;


{$REGION 'Проверка формата файла dbf'}
function CheckFileDBF(type_file : integer; Client_Records: TClientDataSet) : boolean;
var i : integer;
begin
  result := False;
  case type_file of
// Перечень счет-фактур (основной)
    1 : begin
        for I := 2 to Client_Records.FieldCount - 1 do begin
          if Client_Records.FieldDefs[i].Name <> array_dbf_osn[i-2] then begin
            Application.MessageBox(Pchar('Формат файла изменился, обратитесь к разработчикам'),'Внимание',MB_OK);
            exit;
          end;
        end;
      end;
// Перечень счет-фактур (корректировочный)
    2 : begin
        for I := 2 to Client_Records.FieldCount - 1 do begin
          if Client_Records.FieldDefs[i].Name <> array_dbf_kor[i-2] then begin
            Application.MessageBox(Pchar('Формат файла изменился, обратитесь к разработчикам'),'Внимание',MB_OK);
            exit;
          end;
        end;
      end;
// Нарастающий факт
    3 : begin
        for I := 2 to Client_Records.FieldCount - 1 do begin
          if Client_Records.FieldDefs[i].Name <> array_dbf_fact_inc[i-2] then begin
            Application.MessageBox(Pchar('Формат файла изменился, обратитесь к разработчикам'),'Внимание',MB_OK);
            exit;
          end;
        end;
      end;
// Нарастающий по предоставлению
    4 : begin
        for I := 2 to Client_Records.FieldCount - 1 do begin
          if Client_Records.FieldDefs[i].Name <> array_dbf_grant[i-2] then begin
            Application.MessageBox(Pchar('Формат файла изменился, обратитесь к разработчикам'),'Внимание',MB_OK);
            exit;
          end;
        end;
      end;
// Перечень счет-фактур (корректировочный) - новый формат
    5 : begin
        for I := 2 to Client_Records.FieldCount - 1 do begin
          if Client_Records.FieldDefs[i].Name <> array_dbf_kor_new[i-2] then begin
            Application.MessageBox(Pchar('Формат файла изменился, обратитесь к разработчикам'),'Внимание',MB_OK);
            exit;
          end;
        end;
      end;
  end;
  result := True;
end;
{$ENDREGION 'Проверка формата файла dbf'}

{$REGION 'Выбрать организацию'}
function SetFirmSelf(var new_user_id: integer; var new_user_name : string; connect: TADOConnection; usr_pwd: PUser_pwd) : boolean;
var Q : TADOQuery;
begin
  try
    Q := TADOQuery.Create(nil);
    Q.Connection := connect;
    Q.Close;
    Q.SQL.Clear;
    Q.SQL.Add('SELECT u2.users_id, u2.users_name ,x.inf_obj_name ');
    Q.SQL.Add('FROM ');
    Q.SQL.Add('( ');
    Q.SQL.Add('SELECT ');
    Q.SQL.Add('iobj1.inf_obj_id, ');
    Q.SQL.Add('REPLACE(users_name, ''_'' + iobj.inf_obj_name_full,'''') name1, ');
    Q.SQL.Add('REPLACE(users_name, ''_'' + iobj.inf_obj_name_full,'''') + ''_'' + iobj1.inf_obj_name_full name2, ');
    Q.SQL.Add('iobj1.inf_obj_name ');
    Q.SQL.Add('FROM users u ');
    Q.SQL.Add('JOIN INF_OBJ iobj ON (iobj.inf_obj_id = u.users_group_id) AND (iobj.type_inf_id = -3) ');
    Q.SQL.Add('JOIN INF_OBJ iobj1 ON (iobj1.type_inf_id = -3) ');
    Q.SQL.Add('WHERE  users_id = :users_id ');
    Q.SQL.Add(') x ');
    Q.SQL.Add('JOIN users u2 ON u2.users_group_id = x.inf_obj_id and u2.users_name in (x.name1, x.name2) ');

    Q.Parameters.ParamByName('users_id').Value := usr_pwd.users_id;
    Q.Open;
    fmFilter := TfmFilter.Create(0, Q, 'users_id', 'users_name', 'inf_obj_name');
    fmFilter.WindowState := wsNormal;
    fmFilter.cxGrid1DBBandedTableView1Column2.Visible := False;
    fmFilter.Caption := 'Выберите организацию';
    if fmFilter.ShowModal = mrOk then begin
      new_user_id   := fmFilter.GetId;
      new_user_name := fmFilter.GetCod;
      result := True;
    end else begin
      result := False;
    end;
  finally
    fmFilter.Free;
    Q.Free;
  end;
end;
{$ENDREGION 'Выбрать организацию'}

{$REGION 'Проверить наличие перевозки'}
function CheckBargain(bargain_id: integer; new_users_name : string; usr_pwd: PUser_pwd) : boolean;
var ADO_exp : TADOConnection;
    Q : TADOQuery;
begin
  try
    ADO_exp := TADOConnection.Create(nil);
    ADO_exp.ConnectionString := 'Persist Security Info=True;Provider=SQLOLEDB.1;User ID='+ new_users_name +';Password='+ usr_pwd.user_pass +';Initial Catalog=' + usr_pwd.catalog + ';Data Source=' + usr_pwd.server + ';Connect Timeout=90';
    ADO_exp.LoginPrompt := False;
    try
      ADO_exp.Connected   := True;
    except
      Application.MessageBox('Ошибка подключения','Внимание',MB_OK+MB_ICONERROR);
      ADO_exp.Free;
      Exit;
    end;

    Q := TADOQuery.Create(nil);
    Q.Connection := ADO_exp;
    Q.Close;
    Q.SQL.Clear;
    Q.SQL.Add('SELECT * FROM view_bargain_rights WHERE bargain_id =:bargain_id');
    Q.Parameters.ParamByName('bargain_id').Value := bargain_id;
    Q.Open;

    if Q.RecordCount= 0 then
      result := False
    else
      result := True;
  finally
    ADO_exp.Free;
    Q.Free;
  end;
end;
{$ENDREGION 'Проверить наличие перевозки'}

{$REGION 'Копировать факт'}
function CopyFactBargain(fact_id: integer; bargain_id : integer; new_users_id : integer; connect: TADOConnection) : boolean;
var SP_Fact_Copy_To_Another : TADOStoredProc;
begin
  try
    SP_Fact_Copy_To_Another := TADOStoredProc.Create(nil);
    SP_Fact_Copy_To_Another.Connection := connect;
    SP_Fact_Copy_To_Another.ProcedureName := 'sp_Fact_Copy_To_Another;1';
    SP_Fact_Copy_To_Another.Parameters.Refresh;
    SP_Fact_Copy_To_Another.Parameters.ParamByName('@fact_id').Value        := fact_id;
    SP_Fact_Copy_To_Another.Parameters.ParamByName('@to_bargain_id').Value  := bargain_id;
    SP_Fact_Copy_To_Another.Parameters.ParamByName('@users_id').Value       := new_users_id;
    try
      SP_Fact_Copy_To_Another.ExecProc;
      result := True;
    except
      result := False;
    end;
  finally
    SP_Fact_Copy_To_Another.Free;
  end;
end;
{$ENDREGION 'Копировать факт'}

{$REGION 'ShowSearchFactSum'}
procedure ShowSearchFact_ClientDSFields(var ClientDS: TClientDataSet);
begin
  ClientDS.FieldDefs.Add('type_report',       ftInteger);
  ClientDS.FieldDefs.Add('set_date_from_to',  ftBoolean);
  ClientDS.FieldDefs.Add('set_date_delivery', ftBoolean);
  ClientDS.FieldDefs.Add('date1', ftDate);
  ClientDS.FieldDefs.Add('date2', ftDate);
  ClientDS.FieldDefs.Add('str_num_vagon',     ftblob);
  ClientDS.FieldDefs.Add('str_num_document',  ftblob);
  ClientDS.FieldDefs.Add('num_konten',        ftString, 50);
  ClientDS.FieldDefs.Add('str_xml_reply_id',  ftblob);
  ClientDS.FieldDefs.Add('sub_cod_self',      ftString, 50);
  ClientDS.FieldDefs.Add('firm_customer_name',ftString, 500);
  ClientDS.FieldDefs.Add('bargain_cod',       ftString, 500);
  ClientDS.FieldDefs.Add('kexp',              ftString, 50);

  ClientDS.FieldDefs.Add('set_main',        ftBoolean);
  ClientDS.FieldDefs.Add('set_bargain_id',  ftBoolean);
  ClientDS.FieldDefs.Add('set_full_empty',  ftInteger);

  ClientDS.FieldDefs.Add('set_etran_not_valid'  , ftBoolean);
  ClientDS.FieldDefs.Add('set_etran_prib'       , ftBoolean);
  ClientDS.FieldDefs.Add('set_etran_in_way'     , ftBoolean);
  ClientDS.FieldDefs.Add('set_etran_otpr'       , ftBoolean);
  ClientDS.FieldDefs.Add('set_etran_prepare'    , ftBoolean);
  ClientDS.FieldDefs.Add('payer_cod'            , ftString, 50);

  ClientDS.FieldDefs.Add('node_begin_cod'     , ftString, 4000);
  ClientDS.FieldDefs.Add('node_end_cod'       , ftString, 4000);
  ClientDS.FieldDefs.Add('node_begin_SNG_cod' , ftString, 4000);
  ClientDS.FieldDefs.Add('node_end_SNG_cod'   , ftString, 4000);
  ClientDS.FieldDefs.Add('road_begin_name'    , ftString, 2000);
  ClientDS.FieldDefs.Add('road_end_name'      , ftString, 2000);
  ClientDS.FieldDefs.Add('group_name'         , ftString, 500);
  ClientDS.FieldDefs.Add('kargoETSNG_group_name'  , ftblob);
  ClientDS.FieldDefs.Add('kargoETSNG_group_id'    , ftblob);
  ClientDS.FieldDefs.Add('kargoETSNG_cod'         , ftString, 4000);
  ClientDS.FieldDefs.Add('type_transport'     , ftblob);
  ClientDS.FieldDefs.Add('date_load_file'     , ftDate);
  ClientDS.FieldDefs.Add('users_group_id'     , ftInteger);

  ClientDS.FieldDefs.Add('set_prev_trip'      , ftBoolean);
  ClientDS.FieldDefs.Add('set_next_trip'      , ftBoolean);
  ClientDS.FieldDefs.Add('set_fact_sum'       , ftBoolean);

  ClientDS.FieldDefs.Add('comment6_id'        , ftblob);

  ClientDS.FieldDefs.Add('date_load_begin'    , ftDate);
  ClientDS.FieldDefs.Add('date_load_end'      , ftDate);

  ClientDS.FieldDefs.Add('str_fact_id'        , ftblob);

  ClientDS.FieldDefs.Add('set_place_calc'     , ftString, 50); //признак меса расчета для поиска в опер. факт все
  ClientDS.FieldDefs.Add('rod_vagon_name'     , ftString, 200);//род вагона (цистерна, хопер, полувагон) для поиска в опер. факт

  ClientDS.FieldDefs.Add('str_field' ,ftString, 100);//строковой столбец который выбирает пользователь чтобы по нему осуществить выборку
  ClientDS.FieldDefs.Add('str_value' ,ftString, 100);//значение по которому будет осуществлятьсы выборка в выбранном столбце

  ClientDS.CreateDataSet;
  ClientDS.LogChanges := False;
end;

function ShowSearchFactSum(AppHandle: THandle; user_pwd: PUser_pwd; var ClientDS: TClientDataSet): boolean;
type
  TFunc =  function(AppHandle: THandle; user_pwd: PUser_pwd; var ClientDS: TClientDataSet): variant;
var
  SearchLibHandle: THandle;
  FSearchFact: TFunc;
  v: variant;
begin
  ShowSearchFact_ClientDSFields(ClientDS);

  SearchLibHandle := LoadLibrary('Search.dll');
  @FSearchFact := GetProcAddress(SearchLibHandle, 'CreateWndFactSearchSumDlg');
  v := FSearchFact(AppHandle, user_pwd, ClientDS);
  Result := v[0];
  FreeLibrary(SearchLibHandle);
end;

function ShowSearchFact(AppHandle: THandle; user_pwd: PUser_pwd; var ClientDS: TClientDataSet; type_fact: integer): boolean;
type
  TFunc =  function(AppHandle: THandle; user_pwd: PUser_pwd; var ClientDS: TClientDataSet; type_fact: integer): variant;
var
  Handle: THandle;
  FSearchFact: TFunc;
  v : variant;
begin
  ShowSearchFact_ClientDSFields(ClientDS);

  handle := LoadLibrary('Search.dll');
  @FSearchFact := GetProcAddress(handle, 'CreateWndFactSearchDlg');
  v := FSearchFact(AppHandle, user_pwd, ClientDS, type_fact);
  Result := v[0];
  FreeLibrary(handle);
end;
{$ENDREGION 'ShowSearchFactSum'}


function BrowseDialog(const Title: string): string;
var
  lpItemID : PItemIDList;
  BrowseInfo : TBrowseInfo;
  DisplayName : array[0..MAX_PATH] of char;
  TempPath : array[0..MAX_PATH] of char;
begin
  Result:='';
  FillChar(BrowseInfo, sizeof(TBrowseInfo), #0);
  BrowseInfo.hwndOwner := Application.Handle;
  BrowseInfo.pszDisplayName := @DisplayName;
  BrowseInfo.lpszTitle := PChar(Title);
  BrowseInfo.ulFlags := BIF_RETURNONLYFSDIRS or BIF_NEWDIALOGSTYLE;//Flag;
  lpItemID := SHBrowseForFolder(BrowseInfo);
  if lpItemId <> nil then begin
    SHGetPathFromIDList(lpItemID, TempPath);
    Result := TempPath;
    GlobalFreePtr(lpItemID);
  end;
end;


function GetDataFromCheckBox(cxCheckComboBox : TcxCheckComboBox; isString : boolean) : string;
var i : integer;
begin
  for i:=0 to cxCheckComboBox.Properties.Items.Count - 1 do
    if cxCheckComboBox.States[i] = cbsChecked then begin
      if not isString then  result := result + ',' + IntToStr(cxCheckComboBox.Properties.Items[i].Tag)
      else result := result + ',''' + cxCheckComboBox.Properties.Items[i].Description +'''';
    end;
  result := Copy(result, 2, Length(result)-1);
end;

procedure SetDataForCheckBox(Q: TADOQuery; cxCheckComboBox : TcxCheckComboBoxProperties);
begin
  cxCheckComboBox.Items.Clear;
  while not Q.Eof do begin
    with cxCheckComboBox.Items.Add do begin
      Description := Q.FieldByName('name' ).AsString;
      Tag         := Q.FieldByName('id').AsInteger;
    end;
    Q.Next;
  end;
//  cxCheckComboBox.Properties.Items.Clear;
//  while not Q.Eof do begin
//    with cxCheckComboBox.Properties.Items.Add do begin
//      Description := Q.FieldByName('name' ).AsString;
//      Tag         := Q.FieldByName('id').AsInteger;
//    end;
//    Q.Next;
//  end;

end;

procedure RefreshQueryTree(cxDBTree: TcxDBTreeList; field_name: string; values: int64=-9);
begin
  Screen.Cursor := crHourglass;
  try
    if (values = -9) and (cxDBTree.GetColumnByFieldName(field_name).DataBinding.Field <> nil) then begin
      if cxDBTree.GetColumnByFieldName(field_name).DataBinding.Field.IsNull then values := 0
      else  values := StrToInt64(cxDBTree.GetColumnByFieldName(field_name).DataBinding.Field.AsString);
    end;

    cxDBTree.DataController.DataSource.DataSet.DisableControls;
    cxDBTree.DataController.DataSource.DataSet.Close;
    cxDBTree.DataController.DataSource.DataSet.Open;
    cxDBTree.DataController.DataSource.DataSet.EnableControls;
    cxDBTree.ClearSelection;
    if cxDBTree.DataController.LocateByKey(values) = False then cxDBTree.GotoBOF;
    if cxDBTree.FocusedNode <> nil then cxDBTree.FocusedNode.Selected := True;

  except
    Application.MessageBox('Ошибка при обновлении.', 'Ошибка', MB_ICONSTOP or MB_OK);
  end;
  Screen.Cursor := crDefault;
end;

// -------- сумма прописью
//function GetSumScript_NEW(Value: Currency; currency: Integer): string;
//const
//  ArrNum: array [0..4, 0..9] of string = (
//    ((''),('один '),('два '),('три '),('четыре '),('пять '),('шесть '),('семь '),('восемь '),('девять ')),
//    ((''),('одна '),('две '),('три '),('четыре '),('пять '),('шесть '),('семь '),('восемь '),('девять ')),
//    (('десять '),('одиннадцать '),('двенадцать '),('тринадцать '),('четырнадцадь '),('пятнадцать '),('шестнадцать '),('семнадцать '),('восемнадцать '),('девятнадцать ')),
//    ((''),(''),('двадцать '),('тридцать '),('сорок '),('пятьдесят '),('шестьдесят '),('семьдесят '),('восемьдесят '),('девяносто ')),
//    ((''),('сто '),('двести '),('триста '),('четыреста '),('пятьсот '),('шестьсот '),('семьсот '),('восемьсот '),('девятьсот ')));
//  ArrWord: array [0..5, 0..2] of string = (
//    (('рублей '),('рубль '),('рубля ')),
//    (('тысяч '),('тысяча '),('тысячи ')),
//    (('миллионов '),('миллион '),('миллиона ')),
//    (('миллиардов '),('миллиард '),('миллиарда ')),
//    (('триллионов '),('триллион '),('триллиона ')),
//    (('триллиардов '),('триллиард '),('триллиарда ')));
//  ArrWordPadezh: array [0..9] of integer = ((0), (1), (2), (2), (2), (0), (0), (0), (0), (0));
//  ArrWordRod: array [0..5] of integer = ((0), (1), (0), (0), (0), (0));
//var
//  v_rub : int64;
//  v_kop : integer;
//  str_kop : string;
//
//  v_ed  : integer;
//  v_des : integer;
//  v_sot : integer;
//
//  ix_WordType : integer;
//  ix_WordPadezh : integer;
//  ix_NumType : integer;
//begin
//  Result := '';
//  // копейки
//  v_rub := Trunc(Value);
//  v_kop := Trunc((Value - v_rub) * 100 + 0.5);
//  str_kop := RightStr('00' + IntToStr(v_kop), 2);
//  case currency of
//    3 : Result := str_kop + ' коп.';
//    1 : Result := 'и ' + str_kop + '/100 долларов США';
//    6 : Result := 'и ' + str_kop + '/100 евро (EUR)';
//    5 : Result := 'и ' + str_kop + '/100 CHF';
//  end;
//
//  // рубли
//  ix_WordType := -1;
//  while (v_rub > 0) and (ix_WordType < 5) do begin
//    inc(ix_WordType);
//
//    v_ed  := v_rub mod 10; v_rub := v_rub div 10;
//    v_des := v_rub mod 10; v_rub := v_rub div 10;
//    v_sot := v_rub mod 10; v_rub := v_rub div 10;
//
//    // слово
//    ix_WordPadezh := ArrWordPadezh[v_ed];
//    if v_des = 1 then ix_WordPadezh := 0;
//    // (Разряд единиц и валюта рубли) или (Иной разряд и он не пустой)
//    if ((ix_WordType = 0) and (currency = 3)) or ((ix_WordType > 0) and (v_ed + v_des + v_sot > 0)) then
//      Result := ArrWord[ix_WordType, ix_WordPadezh] + Result;
//
//    // единицы
//    ix_NumType := ArrWordRod[ix_WordType];
//    if v_des = 1 then ix_NumType := 2;
//    Result := ArrNum[ix_NumType, v_ed] + Result;
//    // десятки
//    Result := ArrNum[3, v_des] + Result;
//    // сотни
//    Result := ArrNum[4, v_sot] + Result;
//  end;
//
//  if ix_WordType = -1 then begin
//    if currency = 3 then
//      Result := ArrWord[0, 0] + Result;
//    Result := 'ноль ' + Result;
//  end;
//
//  // Первая заглавная
//  Result[1] := AnsiUpperCase(Result[1])[1];
//end;
// -------- сумма прописью


procedure Spread_RowSetBorder(Sheet: TdxSpreadSheetTableView; Area: TRect; Style: TdxSpreadSheetCellBorderStyle);
var i,k : integer;
begin
  for i := Area.Left to Area.Right do begin
    for k := Area.Top to Area.Bottom do begin
      if Sheet.Rows[k] = nil then Sheet.Rows.CreateItem(k);
      if Sheet.Rows[k].Cells[i] = nil then Sheet.Rows[k].CreateCell(i);
      Sheet.Rows[k].Cells[i].Style.Borders[bTop   ].Style := Style;
      Sheet.Rows[k].Cells[i].Style.Borders[bLeft  ].Style := Style;
      Sheet.Rows[k].Cells[i].Style.Borders[bRight ].Style := Style;
      Sheet.Rows[k].Cells[i].Style.Borders[bBottom].Style := Style;
    end;
  end;
end;


procedure Spread_RowCopy(Sheet: TdxSpreadSheetTableView; row_copy: integer; row_new: integer; column_begin: integer = 0; column_end: integer = 100);
var AStream           : TMemoryStream;
    ASourceRect       : TRect;
    ADestinationPoint : TPoint;
begin
  AStream := TMemoryStream.Create;
  try
    ASourceRect := Rect(column_begin, row_copy, column_end, row_copy);   // Копируем строчку с 0 по 100 колонку
    ADestinationPoint := Point(0, row_new);
    Sheet.InsertRows(row_new, 1);
    Sheet.CopyCellDataToStream(ASourceRect, AStream);
    AStream.Position := 0;
    Sheet.PasteCellDataFromStream(ADestinationPoint, AStream);
  finally
    AStream.Free;
  end;
end;

procedure Spread_AutoFitMergeCell(Sheet: TdxSpreadSheetTableView; row: integer; column: integer);
var       i : integer;
    c_size1 : integer; // Размер колонки
    c_size2 : integer; // Размер колонки
    r_size1 : integer; // Размер строки
begin
  Sheet.Selection.Clear;
  Sheet.Selection.SelectCell(row, column);
  c_size1 := 0;
  for i := Sheet.Selection.Area.Left to Sheet.Selection.Area.Right do begin
    if Sheet.Columns[i] = nil then Sheet.Columns.CreateItem(i);
    c_size1 := c_size1 + Sheet.Columns[i].Size;
  end;

  Sheet.SplitSelected;

  c_size2 := Sheet.Columns[column].Size;
  Sheet.Columns[column].Size := c_size1;
  Sheet.Cells[row, column].Style.WordWrap := True;
  Sheet.Rows[row].ApplyBestFit;
  r_size1 := Sheet.Rows[row].Size;

  Sheet.MergeSelected;
  Sheet.Rows[row].ApplyBestFit;
  Sheet.Columns[column].Size := c_size2;
  Sheet.Rows[row].Size := r_size1;

  Sheet.Selection.Clear;
end;

procedure Spread_RowClear(Sheet: TdxSpreadSheetTableView; row: integer);
begin
  Sheet.Selection.SelectRows(row, row);
  Sheet.ClearCellValues;

  Sheet.Selection.Clear;
end;

procedure Spread_RowDelete(Sheet: TdxSpreadSheetTableView; row: integer);
begin
  Sheet.DeleteRows(row, 1);
end;

function Spread_GetDefined(SpreadSheet: TdxSpreadSheet; defined_name: string): string;
var
  AReferenceArea  : TRect;
  AReferenceSheet : TdxSpreadSheetTableView;
  index           : integer;
begin
  index := SpreadSheet.DefinedNames.IndexOf(defined_name);
  if index <> -1 then begin
    SpreadSheet.DefinedNames.Items[index].EnumReferences(
                procedure (const AArea: TRect; ASheet: TObject)
                begin
                  AReferenceArea := AArea;
                  AReferenceSheet := ASheet as TdxSpreadSheetTableView;
                end
    );

    Result := AReferenceSheet.Rows[AReferenceArea.Top].Cells[AReferenceArea.Left].AsString;
  end else begin
    Result := '';
  end;
end;


procedure Spread_SetDefined(SpreadSheet: TdxSpreadSheet; defined_name: string; value: string);
var
  AReferenceArea  : TRect;
  AReferenceSheet : TdxSpreadSheetTableView;
  index           : integer;
begin
  index := SpreadSheet.DefinedNames.IndexOf(defined_name);
  if index <> -1 then begin
    SpreadSheet.DefinedNames.Items[index].EnumReferences(
                procedure (const AArea: TRect; ASheet: TObject)
                begin
                  AReferenceArea := AArea;
                  AReferenceSheet := ASheet as TdxSpreadSheetTableView;
                end
    );

    AReferenceSheet.Rows[AReferenceArea.Top].Cells[AReferenceArea.Left].AsString := value;
  end;
end;

procedure Spread_SaveToFile(SpreadSheet: TdxSpreadSheet; file_name: string); // Сохранить данные в файл и открыть Excel
var  tmp_path : string;
begin
  tmp_path := ExtractFilePath(ParamStr(0)) + 'Temp';
  // Проверка и создание директории
  ForceDirectories(tmp_path);
  // Попытка удаления мусора из временной директории
  DeleteFileFromDir(tmp_path);

  Insert(FloatToStr(Int(Now*1000000)), file_name, Pos('.', file_name));

  // Создадим шаблон с именем файла сохраненном в базе
  tmp_path := tmp_path + '\' + file_name;

  if not FileExists(tmp_path) then begin
    SpreadSheet.SaveToFile(tmp_path);
    ShellExecute(HWND(nil), 'open', PChar(tmp_path), nil, nil, SW_SHOWNORMAL);
  end;
end;


procedure SaveECPActsEnd(connect: TADOConnection; SpreadSheet: TdxSpreadSheet; var ActSettings : Variant; str_bargain_id: string; acts_sum: Variant);
var
  tmp_path : string;
  file_name: string;
  Query    : TADOQuery;
  BarCode  : TmyBarCode;
  SP       : TADOStoredProc;
  i        : integer;
  s,s1     : TStringStream;
  files_data : TArray<Byte>;
  files_type_id : integer;
begin

  // Если Акт новый  - сначала сохраним его без ШК и номера
  if ActSettings[1][0] = -9 then begin
    SP := TADOStoredProc.Create(nil);
    SP.Connection := connect;
    SP.ProcedureName := 'sp_acts_modify';
    SP.Parameters.Refresh;

    // Сохранение акта
    SP.Parameters.ParamByName('@type_action').Value       := 0;
    SP.Parameters.ParamByName('@set_save_edo').Value      := 1;
    SP.Parameters.ParamByName('@acts_id').Value           := NULL;
    SP.Parameters.ParamByName('@acts_cod').Value          := ActSettings[2];
    SP.Parameters.ParamByName('@acts_type_cod').Value     := ActSettings[0];
    SP.Parameters.ParamByName('@acts_date').Value         := ActSettings[3][0];
    SP.Parameters.ParamByName('@contract_id').Value       := ActSettings[8];
    SP.Parameters.ParamByName('@firm_self_id').Value      := ActSettings[12][0];
    SP.Parameters.ParamByName('@acts_image').Value        := NULL;
    SP.Parameters.ParamByName('@date_begin').Value        := ActSettings[3][1];
    SP.Parameters.ParamByName('@date_end').Value          := ActSettings[3][2];
    SP.Parameters.ParamByName('@set_addvagon').Value      := ActSettings[6][0];
    SP.Parameters.ParamByName('@set_exchange').Value      := ActSettings[6][1];
    SP.Parameters.ParamByName('@set_addsign').Value       := ActSettings[6][2];
    SP.Parameters.ParamByName('@set_copyreport').Value    := ActSettings[6][3];
    SP.Parameters.ParamByName('@set_routefromfact').Value := ActSettings[6][4];
    SP.Parameters.ParamByName('@set_ppfromfact').Value    := ActSettings[6][10];
    SP.Parameters.ParamByName('@set_kargofromfact').Value := ActSettings[6][5];
    SP.Parameters.ParamByName('@set_weightfromfact').Value:= ActSettings[6][6];
    SP.Parameters.ParamByName('@other_exchange_id').Value := ActSettings[6][7];
    SP.Parameters.ParamByName('@set_scorezftofromfactinc').Value:= ActSettings[6][8];
    SP.Parameters.ParamByName('@set_printcomment').Value  := ActSettings[6][9];
    SP.Parameters.ParamByName('@str_hide_columns').Value  := ActSettings[10];
    SP.Parameters.ParamByName('@contract_agent_id').Value := ActSettings[9];
    SP.Parameters.ParamByName('@acts_comment').Value      := ActSettings[11];
    SP.Parameters.ParamByName('@parent_acts_id').Value    := iif(ActSettings[1][1] = -9, null, ActSettings[1][1]);

    SP.Parameters.ParamByName('@self_dir_id').Value            := ActSettings[13][0];
    SP.Parameters.ParamByName('@set_print_self_dir').Value     := ActSettings[13][2];
    SP.Parameters.ParamByName('@self_buh_id').Value            := ActSettings[13][3];
    SP.Parameters.ParamByName('@set_print_self_buh').Value     := ActSettings[13][5];
    SP.Parameters.ParamByName('@customer_dir_id').Value        := ActSettings[13][6];
    SP.Parameters.ParamByName('@set_print_customer_dir').Value := ActSettings[13][8];
    SP.Parameters.ParamByName('@customer_buh_id').Value        := ActSettings[13][9];
    SP.Parameters.ParamByName('@set_print_customer_buh').Value := ActSettings[13][11];

    SP.Parameters.ParamByName('@self_type_dir_id').Value       := ActSettings[14][0];
    SP.Parameters.ParamByName('@self_type_buh_id').Value       := ActSettings[14][3];
    SP.Parameters.ParamByName('@customer_type_dir_id').Value   := ActSettings[14][6];
    SP.Parameters.ParamByName('@customer_type_buh_id').Value   := ActSettings[14][9];

    try
      SP.ExecProc;
      ActSettings[1] := VarArrayOf([SP.Parameters.ParamByName('@acts_id').Value, ActSettings[1][1]]);
      SP.Close;
    except
    end;
  end;

  // Вытащим акт
  Query := TADOQuery.Create(nil);
  Query.Connection := connect;
  Query.SQL.Add('SELECT inf_obj_id FROM inf_obj WHERE type_inf_id = 151 AND inf_obj_cod = ''01'''); // Формат Excel
  Query.Open;
  files_type_id := Query.FieldByName('inf_obj_id').AsInteger;


  Query.SQL.Clear;
  Query.SQL.Add('SELECT TOP 1 acts_id, acts_cod, acts_date, acts_type_cod, new_users_owner FROM view_acts');
  Query.SQL.Add('CROSS APPLY (SELECT users_id as new_users_owner FROM users WHERE users_name = system_user) users');
  Query.SQL.Add('WHERE acts_id = ' + VarToStr(ActSettings[1][0]) + '');
  Query.Open;

  SP := TADOStoredProc.Create(nil);
  SP.Connection := connect;
  SP.ProcedureName := 'sp_acts_modify';
  SP.Parameters.Refresh;

  if not Query.Eof then begin

    // Присвоим номер по месту нумерованной области
    if ActSettings[2] = NULL then ActSettings[2] := Query.FieldByName('acts_cod').AsString;
    Spread_SetDefined(SpreadSheet, 'acts_cod', ReplaceStr(Spread_GetDefined(SpreadSheet, 'acts_cod'), '#NUM#', ActSettings[2]));
//    exWks.Range['acts_cod'].Value := ReplaceStr(exWks.Range['acts_cod'].Value, '#NUM#', ActSettings[2]);

    // Добавим в примечание к первой строке Код шаблона
//    exWks.Range['A1'].ClearComments;
//    exWks.Range['A1'].AddComment('Шаблон = ' + Query.FieldByName('acts_type_cod').AsString);
//    exWks.Range['A1'].Comment.Visible := False;

    s := TStringStream.Create('');
    SpreadSheet.SaveToStream(s, TdxSpreadSheetXLSXFormat);
    files_data := LZHPack(s.Bytes, s.Size);
    s1 := TStringStream.Create(files_data);

    // Сохранение акта
    SP.Parameters.ParamByName('@type_action').Value       := 1;
    SP.Parameters.ParamByName('@set_save_edo').Value      := 1;
    SP.Parameters.ParamByName('@acts_id').Value           := ActSettings[1][0];
    SP.Parameters.ParamByName('@acts_cod').Value          := ActSettings[2];
    SP.Parameters.ParamByName('@acts_date').Value         := ActSettings[3][0];
    SP.Parameters.ParamByName('@acts_image').LoadFromStream(s1,ftBlob);
    SP.Parameters.ParamByName('@files_type_id').Value     := files_type_id;
    SP.Parameters.ParamByName('@acts_file_name').Value    := file_name;
    SP.Parameters.ParamByName('@contract_id').Value       := ActSettings[8];
    SP.Parameters.ParamByName('@firm_self_id').Value      := ActSettings[12][0];
    SP.Parameters.ParamByName('@acts_comment').Value      := ActSettings[11];

    SP.Parameters.ParamByName('@self_director').Value         := ActSettings[4][0];
    SP.Parameters.ParamByName('@self_basis').Value            := ActSettings[4][1];
    SP.Parameters.ParamByName('@customer_director').Value     := ActSettings[5][0];
    SP.Parameters.ParamByName('@customer_basis').Value        := ActSettings[5][1];

    SP.Parameters.ParamByName('@self_director_eng').Value     := ActSettings[4][3];
    SP.Parameters.ParamByName('@self_basis_eng').Value        := ActSettings[4][4];
    SP.Parameters.ParamByName('@customer_director_eng').Value := ActSettings[5][3];
    SP.Parameters.ParamByName('@customer_basis_eng').Value    := ActSettings[5][4];

    SP.Parameters.ParamByName('@parent_acts_id').Value    := iif(ActSettings[1][1] = -9, null, ActSettings[1][1]);
    SP.Parameters.ParamByName('@acts_sum').Value          := acts_sum;
    SP.Parameters.ParamByName('@acts_currency_id').Value  := ActSettings[7][0];
    SP.Parameters.ParamByName('@str_bargain_id').Value    := str_bargain_id;
    SP.Parameters.ParamByName('@set_addvagon').Value      := ActSettings[6][0];
    SP.Parameters.ParamByName('@set_exchange').Value      := ActSettings[6][1];
    SP.Parameters.ParamByName('@set_addsign').Value       := ActSettings[6][2];
    SP.Parameters.ParamByName('@set_copyreport').Value    := ActSettings[6][3];
    SP.Parameters.ParamByName('@set_routefromfact').Value := ActSettings[6][4];
    SP.Parameters.ParamByName('@set_ppfromfact').Value    := ActSettings[6][10];
    SP.Parameters.ParamByName('@set_kargofromfact').Value := ActSettings[6][5];
    SP.Parameters.ParamByName('@set_weightfromfact').Value:= ActSettings[6][6];
    SP.Parameters.ParamByName('@other_exchange_id').Value := ActSettings[6][7];
    SP.Parameters.ParamByName('@set_scorezftofromfactinc').Value:= ActSettings[6][8];
    SP.Parameters.ParamByName('@set_printcomment').Value  := ActSettings[6][9];
    SP.Parameters.ParamByName('@str_hide_columns').Value  := ActSettings[10];
    SP.Parameters.ParamByName('@contract_agent_id').Value := ActSettings[9];

    SP.Parameters.ParamByName('@self_dir_id').Value            := ActSettings[13][0];
    SP.Parameters.ParamByName('@set_print_self_dir').Value     := ActSettings[13][2];
    SP.Parameters.ParamByName('@self_buh_id').Value            := ActSettings[13][3];
    SP.Parameters.ParamByName('@set_print_self_buh').Value     := ActSettings[13][5];
    SP.Parameters.ParamByName('@customer_dir_id').Value        := ActSettings[13][6];
    SP.Parameters.ParamByName('@set_print_customer_dir').Value := ActSettings[13][8];
    SP.Parameters.ParamByName('@customer_buh_id').Value        := ActSettings[13][9];
    SP.Parameters.ParamByName('@set_print_customer_buh').Value := ActSettings[13][11];

    SP.Parameters.ParamByName('@self_type_dir_id').Value       := ActSettings[14][0];
    SP.Parameters.ParamByName('@self_type_buh_id').Value       := ActSettings[14][3];
    SP.Parameters.ParamByName('@customer_type_dir_id').Value   := ActSettings[14][6];
    SP.Parameters.ParamByName('@customer_type_buh_id').Value   := ActSettings[14][9];

    try
      SP.ExecProc;
      SP.Close;
    except
    end;

    s1.Free;
    s.Free;
  end else begin
    //exWks.Range['acts_cod'].Value := ReplaceStr(exWks.Range['acts_cod'].Value, '#NUM#', 'б/н');
    Spread_SetDefined(SpreadSheet, 'acts_cod', ReplaceStr(Spread_GetDefined(SpreadSheet, 'acts_cod'), '#NUM#', 'б/н'));
  end;

  Query.Free;
  SP.Free;
end;


function ClientDataSetSort(ClientDataSet: TClientDataSet; const FieldsName: string; set_desc: boolean): boolean;
var
  i: integer;
  NewIndexName: string;
  IndexOptions: TIndexOptions;
//  Field: TField;
begin
  Result := False;
//  Field := ClientDataSet.Fields.FindField(FieldName);
  //If invalid field name, exit.
//  if Field = nil then Exit;

  //if invalid field type, exit.
//  if  (Field is TObjectField) or
//      (Field is TBlobField) or
//      (Field is TAggregateField) or
//      (Field is TVariantField) or
//      (Field is TBinaryField) then Exit;

  //Get IndexDefs and IndexName using RTTI
  //Ensure IndexDefs is up-to-date
  ClientDataSet.IndexDefs.Update;

  //If an ascending index is already in use,
  //switch to a descending index
//  if ClientDataSet.IndexName = FieldName + '__IdxA' then  begin
//      NewIndexName := FieldName + '__IdxD';
//      IndexOptions := [ixDescending];
//  end else begin
//      NewIndexName := FieldName + '__IdxA';
//      IndexOptions := [];
//  end;

  if set_desc = True then begin
      NewIndexName := AnsiReplaceStr(FieldsName, ';', '__') + '__IdxD';
      IndexOptions := [ixDescending];
  end else begin
      NewIndexName := AnsiReplaceStr(FieldsName, ';', '__') + '__IdxA';
      IndexOptions := [];
  end;

  if Length(NewIndexName) > 31 then
    NewIndexName := AnsiRightStr(NewIndexName, 31);

  //Look for existing index
  for i := 0 to Pred(ClientDataSet.IndexDefs.Count) do begin
    if ClientDataSet.IndexDefs[i].Name = NewIndexName then begin
        Result := True;
        Break
    end;
  end;

  //If existing index not found, create one
  if not Result then begin
    ClientDataSet.AddIndex(NewIndexName, FieldsName, IndexOptions);
    Result := True;
  end;

  //Set the index
  ClientDataSet.IndexName := NewIndexName;
end;

procedure FiltercxGridByFocusedValue(cxGridView: TcxGridDBBandedTableView);
var field_name : string;
   field_value : string;
   i           : integer;
begin
  field_name  := TcxGridDBBandedColumn(cxGridView.Controller.FocusedColumn).DataBinding.FieldName;
  field_value := cxGridView.Controller.SelectedRows[0].Values[cxGridView.Controller.FocusedColumn.Index];
  FiltercxGrid4ListID(cxGridView,field_name,field_value);
end;


{$REGION 'Инфо из Connect'}
function GetDBUserName(connect: TADOConnection): string;
var    str_list: TStringList;
    str_connect: string;
begin
  str_list := TStringList.Create;
  str_connect := connect.ConnectionString;
  str_connect := ReplaceStr(str_connect, ' ', '');
  str_list.Delimiter := ';';
  str_list.DelimitedText := str_connect;
  Result := str_list.Values['UserID'];
end;

function GetDBUserPass(connect: TADOConnection): string;
var str_list: TStringList;
    str_connect: string;
begin
  str_list := TStringList.Create;
  str_connect := connect.ConnectionString;
  str_connect := ReplaceStr(str_connect, ' ', '');
  str_list.Delimiter := ';';
  str_list.DelimitedText := str_connect;
  Result := str_list.Values['Password'];
end;

function GetDBServer  (connect: TADOConnection): string;
var str_list: TStringList;
    str_connect: string;
begin
  str_list := TStringList.Create;
  str_connect := connect.ConnectionString;
  str_connect := ReplaceStr(str_connect, ' ', '');
  str_list.Delimiter := ';';
  str_list.DelimitedText := str_connect;
  Result := str_list.Values['DataSource'];
end;

function GetDBDatabase(connect: TADOConnection): string;
var str_list: TStringList;
    str_connect: string;
begin
  str_list := TStringList.Create;
  str_connect := connect.ConnectionString;
  str_connect := ReplaceStr(str_connect, ' ', '');
  str_list.Delimiter := ';';
  str_list.DelimitedText := str_connect;
  Result := str_list.Values['InitialCatalog'];
end;

function GetDBUsersGroup(connect: TADOConnection): integer;
var Q: TADOQuery;
begin
  Q := TADOQuery.Create(nil);
  Q.Connection := connect;
  Q.SQL.Add('SELECT * FROM users WHERE users_name = system_user');
  Q.Open;

  Result := Q.FieldByName('users_group_id').AsInteger;
  Q.Free;
end;

function GetDBUsersID(connect: TADOConnection): integer;
var Q: TADOQuery;
begin
  Q := TADOQuery.Create(nil);
  Q.Connection := connect;
  Q.SQL.Add('SELECT * FROM users WHERE users_name = system_user');
  Q.Open;

  Result := Q.FieldByName('users_id').AsInteger;
  Q.Free;
end;

function GetDBAdmin(connect: TADOConnection): boolean;
var Q: TADOQuery;
begin
  Q := TADOQuery.Create(nil);
  Q.Connection := connect;
  Q.SQL.Add('SELECT * FROM users WHERE users_name = system_user');
  Q.Open;

  Result := Q.FieldByName('admin').AsBoolean;
  Q.Free;
end;

function GetDBFIOUsers  (connect: TADOConnection): string;
var Q: TADOQuery;
begin
  Q := TADOQuery.Create(nil);
  Q.Connection := connect;
  Q.SQL.Add('SELECT * FROM users WHERE users_name = system_user');
  Q.Open;

  Result := Q.FieldByName('FIO_users').AsString;
  Q.Free;
end;
{$ENDREGION 'Инфо из Connect'}

procedure MonitorEventFormOpen(action_name, form_object: string; Conn: TADOConnection; global_id: integer);
var   SP : TADOStoredProc;
begin
  if UpperCase(GetDBUserName(conn)) <> 'ADMIN_GRU' then begin
    SP := TADOStoredProc.Create(nil);
    SP.Connection := Conn;
    SP.ProcedureName := 'sp_monitor_event_server_insert';
    SP.Parameters.Refresh;
    SP.Parameters.ParamByName('@global_id'      ).Value :=  global_id;
    SP.Parameters.ParamByName('@base_objects_id').Value :=  888;
    SP.Parameters.ParamByName('@action_name'    ).Value :=  action_name;
    SP.Parameters.ParamByName('@column_name'    ).Value :=  form_object;
    SP.Parameters.ParamByName('@new_value'      ).Value :=  GetVersion;
    SP.Parameters.ParamByName('@old_value'      ).Value :=  FileDateToDateTime(FileAge(GetModuleName(HInstance)));

    SP.ExecProc;
    SP.Free;
  end;
end;

function DocsRun(ClientDS_param: TClientDataSet; usr_pwd: PUser_pwd; users_group_cod: string): variant;
type
  TFunc = function(AppHand: THandle; usr_pwd: PUser_pwd): Variant;
  TFuncDocs = function(AppHand: THandle; usr_pwd_lis: PUser_pwd; usr_pwd_docs: PUser_pwd; usr_pwd_edo: PUser_pwd; ClientDS_param: TClientDataSet): variant;
var
  FPass        : TFunc;
  FDocs        : TFuncDocs;
  handle       : THandle;
  v            : Variant;
  registry     : TRegistry;
  usr_pwd_docs : PUser_pwd;
  ClientDS     : TClientDataSet;
  server, catalog, users_name, users_pass : string;
  path_docs    : string;
  Q, Q2        : TADOQuery;

  connect_docs : TADOConnection;
  SP : TADOStoredProc;
begin

  SP := TADOStoredProc.Create(nil);
  SP.ConnectionString := 'Persist Security Info=True;Provider=SQLOLEDB.1;User ID='+usr_pwd^.user_name+';Password='+usr_pwd^.user_pass+';Initial Catalog='+usr_pwd^.catalog+';Data Source='+usr_pwd^.server+';';
  SP.ProcedureName := 'sp_monitor_event_server_insert';
  SP.Parameters.Refresh;
  SP.Parameters.ParamByName('@global_id'      ).Value :=  -7;
  SP.Parameters.ParamByName('@base_objects_id').Value :=  321;
  SP.Parameters.ParamByName('@action_name'    ).Value :=  'DocsRun';
  SP.Parameters.ParamByName('@column_name'    ).Value :=  null;
  SP.Parameters.ParamByName('@new_value'      ).Value :=  null;
  SP.Parameters.ParamByName('@old_value'      ).Value :=  null;

  SP.ExecProc;
  SP.Free;

  Q2 := TADOQuery.Create(nil);
  Q2.ConnectionString := 'Persist Security Info=True;Provider=SQLOLEDB.1;User ID='+usr_pwd^.user_name+';Password='+usr_pwd^.user_pass+';Initial Catalog='+usr_pwd^.catalog+';Data Source='+usr_pwd^.server+';';
  Q2.SQL.Add('SELECT * FROM ver WHERE ver_id = 13');
  Q2.Open;

  registry := TRegistry.Create;
  registry.RootKey := HKEY_CURRENT_USER;
  registry.OpenKey('\Software\LIS_Docs', True);
  server  := Q2.FieldByName('ver_contents_name').AsString; //'10.10.101.28';
  catalog := registry.ReadString('Initial Catalog');
  path_docs  := registry.ReadString('Path Docs');
  users_pass := usr_pwd.user_pass;
  registry.Free;

  Q2.Close;
  Q2.Free;

  if path_docs = '' then begin
    Application.MessageBox('Документооборот не установлен!', 'Внимание!', MB_ICONSTOP or MB_OK);
    Exit;
  end;

  if (server = '') or (catalog = '') then begin
    Application.MessageBox('Запустите Документооборот!', 'Внимание!', MB_ICONSTOP or MB_OK);
    Exit;
  end;

  if Pos('_', usr_pwd.user_name) <> 0 then
    users_name := LeftStr(usr_pwd.user_name, Pos('_', usr_pwd.user_name)-1)
  else
    users_name := usr_pwd.user_name;


  connect_docs := TADOConnection.Create(nil);
  connect_docs.KeepConnection    := False;
  connect_docs.LoginPrompt       := False;
  connect_docs.ConnectionString  := 'Persist Security Info=True;Provider=SQLOLEDB.1;User ID=sa;Password=cjnhfkjubcnbrf;Initial Catalog='+catalog+';Data Source='+server+';';
  connect_docs.Open;

  new(usr_pwd_docs);
  usr_pwd_docs.users_id  := -9;

  ClientDS := TClientDataSet.Create(nil);
  ClientDS.FieldDefs.Add('func_name', ftString, 100);
  ClientDS.CreateDataSet;
  ClientDS.LogChanges := False;

  Q := TADOQuery.Create(nil);
  Q.Connection := connect_docs;
  Q.SQL.Add('SELECT	users.users_id, users_cod, users_name, inf_obj_cod as users_group_cod');
  Q.SQL.Add('FROM	users');
  Q.SQL.Add('left join users_group on users.users_id = users_group.users_id');
  Q.SQL.Add('left join inf_obj on users_group.users_group_id = inf_obj.inf_obj_id');
  Q.SQL.Add('WHERE	case when CHARINDEX(''_'', users_name) <> 0 then SUBSTRING(users_name, 0, CHARINDEX(''_'', users_name)) else users_name end = ''' + users_name + '''');
  Q.SQL.Add('and inf_obj_cod = ''' + users_group_cod + '''');
  Q.Open;
  if Q.RecordCount = 1 then begin
    usr_pwd_docs.users_id  := Q.FieldByName('users_id'  ).AsInteger;
    usr_pwd_docs.user_cod  := Q.FieldByName('users_cod' ).AsString;
    usr_pwd_docs.user_name := Q.FieldByName('users_name').AsString;
    usr_pwd_docs.user_pass := users_pass;
    usr_pwd_docs.server    := server;
    usr_pwd_docs.session   := -9;
    usr_pwd_docs.catalog   := catalog;

    // Пользовательские функции
    Q.Close;
    Q.SQL.Clear;
    Q.SQL.Add('SELECT	inf_obj_name as func_name');
    Q.SQL.Add('FROM	  users_functions inner join inf_obj on users_functions.functions_id = inf_obj.inf_obj_id');
    Q.SQL.Add('WHERE	type_inf_id = 4');
    Q.SQL.Add('AND    users_id = ' + IntToStr(usr_pwd_docs.users_id));
    Q.Open;
    Q.First;
    while not Q.Eof do begin
      ClientDS.Append;
      ClientDS.FieldByName('func_name').AsString := Q.FieldByName('func_name').AsString;
      ClientDS.Post;
      Q.Next;
    end;
    usr_pwd_docs.user_func := TClientDataSet.Create(nil);
    usr_pwd_docs.user_func.Data := ClientDS.Data;
  end;

  Q.Free;
  connect_docs.Free;
  ClientDS.Free;



  if usr_pwd_docs.users_id = -9 then begin
    handle := LoadLibrary(PWideChar(path_docs + 'pass_DV.dll'));
    @FPass := GetProcAddress(handle, 'CreateWndPassword');
    v := FPass(Application.Handle, nil);
    FreeLibrary(handle);

    if (not VarIsNull(v)) and (v[0] <> -9) then begin
      usr_pwd_docs.users_id  := v[0];
      usr_pwd_docs.user_name := v[1];
      usr_pwd_docs.user_pass := v[2];
      usr_pwd_docs.server    := v[3];
      usr_pwd_docs.session   := v[4];
      usr_pwd_docs.user_cod  := v[5];
      usr_pwd_docs.catalog   := v[6];
      if not Assigned(usr_pwd_docs.user_func) then
        usr_pwd_docs.user_func := TClientDataSet.Create(nil);
      usr_pwd_docs.user_func.Data := v[7];
    end;
  end;

  if usr_pwd_docs.users_id = -9 then begin
    Application.MessageBox('Не удалось подключится к Документообороту!', 'Внимание!', MB_ICONSTOP or MB_OK);
    usr_pwd_docs.user_func.Free;
    Dispose(usr_pwd_docs);
    Exit;
  end;

  handle := LoadLibrary(PWideChar(path_docs + 'Dictionary.dll'));
  @FDocs := GetProcAddress(handle, 'CreateWndDocsRun');
  Result := FDocs(Application.Handle, usr_pwd, usr_pwd_docs, nil, ClientDS_param);
  FreeLibrary(handle);
  usr_pwd_docs.user_func.Free;
  Dispose(usr_pwd_docs);
end;

procedure ClientDSView(var ClientDS: TClientDataSet);
type
  TFunc = function(AppHand: THandle; var ClientDS: TClientDataSet) : variant;
var
   FClientDSView : TFunc;
          handle : THandle;
               v : Variant;
begin
  handle := LoadLibrary('FormsAdd.dll');
  @FClientDSView := GetProcAddress(handle,'CreateWndClientDSView');
  v := FClientDSView(Application.Handle, ClientDS);
  FreeLibrary(handle);
end;



procedure UsersSettingModify(type_action: integer; form_name: string; var cxControl: TcxControl; conn: TADOConnection);
var             s : TMemoryStream;
                Q : TADOQuery;
               SP : TADOStoredProc;
 users_setting_id : integer;
          new_str : string;
begin
  // ----- сохранение настроек таблицы -------------
  if type_action = 0 then begin
    if InputQuery('Укажите наименование настройки:', 'Внимание', new_str) then begin

      SP := TADOStoredProc.Create(nil);
      SP.Connection := conn;

      SP.ProcedureName := 'sp_users_setting_modify';
      SP.Parameters.Refresh;

      SP.Parameters.ParamByName('@users_setting_id').Value := NULL;
      SP.Parameters.ParamByName('@type_action'     ).Value := 0;
      SP.Parameters.ParamByName('@type_setting'    ).Value := 0;   // сохраняем cxGrid
      SP.Parameters.ParamByName('@form_name'       ).Value := form_name;
      SP.Parameters.ParamByName('@setting_name'    ).Value := new_str;

      s := TMemoryStream.Create;

      if cxControl.ClassNameIs('TcxGridDBBandedTableView') then TcxGridDBBandedTableView(cxControl).StoreToStream(s);
      if cxControl.ClassNameIs('TcxDBPivotGrid')           then TcxDBPivotGrid(cxControl).StoreToStream(s);

      s.Position := 0;
      SP.Parameters.ParamByName('@component_name').Value := cxControl.Name;
      SP.Parameters.ParamByName('@setting_blob').LoadFromStream(s, ftVarBytes);
      SP.ExecProc;

      s.Free;
      SP.Free;
    end;

  end;

  // --------- применить сохранённые настройки -----------
  if type_action = 1 then begin
    Q := TADOQuery.Create(nil);
    Q.Connection := conn;

    Q.SQL.Add('SELECT users_setting_id, FIO_users, setting_name, component_name FROM users_setting s INNER JOIN users u ON s.users_id = u.users_id');
    Q.SQL.Add('WHERE form_name = :form_name ORDER BY FIO_users');
    Q.Parameters.ParamByName('form_name').Value := form_name;
    Q.Open;

    fmFilter := TfmFilter.Create(0, Q, 'users_setting_id', 'FIO_users', 'setting_name');
    fmFilter._SetUsersSettingChoose := True;
    if fmFilter.ShowModal = mrOk then begin
      users_setting_id := fmFilter.GetId;
      Q.Close;
      Q.SQL.Clear;
      Q.SQL.Add('SELECT setting_blob FROM users_setting WHERE users_setting_id = ' + IntToStr(users_setting_id));
      Q.Open;

      s := TMemoryStream.Create;
      TMemoField(Q.FieldByName('setting_blob')).SaveToStream(s);
      s.Position := 0;
      if cxControl.ClassNameIs('TcxGridDBBandedTableView') then TcxGridDBBandedTableView(cxControl).RestoreFromStream(s);
      if cxControl.ClassNameIs('TcxDBPivotGrid')           then TcxDBPivotGrid(cxControl).RestoreFromStream(s);
      s.Free;
    end;

    Q.Free;
  end;

  // ------- удалить настройку ----------------------
  if type_action = 2 then begin
    Q := TADOQuery.Create(nil);
    Q.Connection := conn;
    Q.SQL.Add('SELECT users_setting_id, FIO_users, setting_name, component_name FROM users_setting s INNER JOIN users u ON s.users_id = u.users_id');
    Q.SQL.Add('WHERE form_name = :form_name ORDER BY FIO_users');
    Q.Parameters.ParamByName('form_name').Value := form_name;
    Q.Open;

    fmFilter := TfmFilter.Create(0, Q, 'users_setting_id', 'FIO_users', 'setting_name');
    fmFilter._SetUsersSettingChoose := True;
    if fmFilter.ShowModal = mrOk then begin
      users_setting_id := fmFilter.GetId;

      SP := TADOStoredProc.Create(nil);
      SP.Connection := conn;
      SP.ProcedureName := 'sp_users_setting_modify';
      SP.Parameters.Refresh;

      SP.Parameters.ParamByName('@type_action'     ).Value := 2;
      SP.Parameters.ParamByName('@users_setting_id').Value := users_setting_id;
      SP.ExecProc;
      SP.Free;

      Application.MessageBox('Настройка удалена!', 'Внимание', MB_OK);
    end;

    Q.Free;
  end;
end;

function GetStrRateRange(dist:integer):string;
begin
  Result := '-';
  if (dist > 0) and (dist < 6) then Result := '0 - 5'
    else if (dist > 5) and (dist < 11) then Result := '6  - 10'
    else if (dist > 10) and (dist < 16) then Result := '11 - 15'
    else if (dist > 15) and (dist < 21) then Result := '16 - 20'
    else if (dist > 20) and (dist < 26) then Result := '21 - 25'
    else if (dist > 25) and (dist < 31) then Result := '26 - 30'
    else if (dist > 30) and (dist < 36) then Result := '31 - 35'
    else if (dist > 35) and (dist < 41) then Result := '36 - 40'
    else if (dist > 40) and (dist < 46) then Result := '41 - 45'
    else if (dist > 45) and (dist < 51) then Result := '46 - 50'
    else if (dist > 50) and (dist < 51) then Result := '51 - 60'
    else if (dist > 60) and (dist < 71) then Result := '61 - 70'
    else if (dist > 70) and (dist < 81) then Result := '71 - 80'
    else if (dist > 80) and (dist < 91) then Result := '81 - 90'
    else if (dist > 90) and (dist < 101) then Result := '91 - 100'
    else if (dist > 100) and (dist < 121) then Result := '101 - 120'
    else if (dist > 120) and (dist < 141) then Result := '121 - 140'
    else if (dist > 140) and (dist < 161) then Result := '141 - 160'
    else if (dist > 160) and (dist < 181) then Result := '161 - 180'
    else if (dist > 180) and (dist < 201) then Result := '181 - 200'
    else if (dist > 200) and (dist < 221) then Result := '201 - 220'
    else if (dist > 220) and (dist < 241) then Result := '221 - 240'
    else if (dist > 240) and (dist < 261) then Result := '241 - 260'
    else if (dist > 260) and (dist < 281) then Result := '261 - 280'
    else if (dist > 280) and (dist < 301) then Result := '281 - 300'
    else if (dist > 300) and (dist < 331) then Result := '301 - 330'
    else if (dist > 330) and (dist < 361) then Result := '331 - 360'
    else if (dist > 360) and (dist < 391) then Result := '361 - 390'
    else if (dist > 390) and (dist < 421) then Result := '391 - 420'
    else if (dist > 420) and (dist < 451) then Result := '421 - 450'
    else if (dist > 450) and (dist < 481) then Result := '451 - 480'
    else if (dist > 480) and (dist < 511) then Result := '481 - 510'
    else if (dist > 510) and (dist < 541) then Result := '511 - 540'
    else if (dist > 540) and (dist < 571) then Result := '541 - 570'
    else if (dist > 570) and (dist < 601) then Result := '571 - 600'
    else if (dist > 600) and (dist < 641) then Result := '601 - 640'
    else if (dist > 640) and (dist < 681) then Result := '641 - 680'
    else if (dist > 680) and (dist < 721) then Result := '681 - 720'
    else if (dist > 720) and (dist < 761) then Result := '721 - 760'
    else if (dist > 760) and (dist < 801) then Result := '761 - 800'
    else if (dist > 800) and (dist < 841) then Result := '801 - 840'
    else if (dist > 840) and (dist < 881) then Result := '841 - 880'
    else if (dist > 880) and (dist < 921) then Result := '881 - 920'
    else if (dist > 920) and (dist < 961) then Result := '921 - 960'
    else if (dist > 960) and (dist < 1001) then Result := '961 - 1000'
    else if (dist > 1000) and (dist < 1051) then Result := '1001 - 1050'
    else if (dist > 1050) and (dist < 1101) then Result := '1051 - 1100'
    else if (dist > 1100) and (dist < 1151) then Result := '1101 - 1150'
    else if (dist > 1150) and (dist < 1201) then Result := '1151 - 1200'
    else if (dist > 1200) and (dist < 1251) then Result := '1201 - 1250'
    else if (dist > 1250) and (dist < 1301) then Result := '1251 - 1300'
    else if (dist > 1300) and (dist < 1351) then Result := '1301 - 1350'
    else if (dist > 1350) and (dist < 1401) then Result := '1351 - 1400'
    else if (dist > 1400) and (dist < 1451) then Result := '1401 - 1450'
    else if (dist > 1450) and (dist < 1501) then Result := '1451 - 1500'
    else if (dist > 1500) and (dist < 1601) then Result := '1501 - 1600'
    else if (dist > 1600) and (dist < 1701) then Result := '1601 - 1700'
    else if (dist > 1700) and (dist < 1801) then Result := '1701 - 1800'
    else if (dist > 1800) and (dist < 1901) then Result := '1801 - 1900'
    else if (dist > 1900) and (dist < 2001) then Result := '1901 - 2000'
    else if (dist > 2000) and (dist < 2101) then Result := '2001 - 2100'
    else if (dist > 2100) and (dist < 2201) then Result := '2101 - 2200'
    else if (dist > 2200) and (dist < 2301) then Result := '2201 - 2300'
    else if (dist > 2300) and (dist < 2401) then Result := '2301 - 2400'
    else if (dist > 2400) and (dist < 2501) then Result := '2401 - 2500'
    else if (dist > 2500) and (dist < 2601) then Result := '2501 - 2600'
    else if (dist > 2600) and (dist < 2701) then Result := '2601 - 2700'
    else if (dist > 2700) and (dist < 2801) then Result := '2701 - 2800'
    else if (dist > 2800) and (dist < 2901) then Result := '2801 - 2900'
    else if (dist > 2900) and (dist < 3001) then Result := '2901 - 3000'
    else if (dist > 3000) and (dist < 3101) then Result := '3001 - 3100'
    else if (dist > 3100) and (dist < 3201) then Result := '3101 - 3200'
    else if (dist > 3200) and (dist < 3301) then Result := '3201 - 3300'
    else if (dist > 3300) and (dist < 3401) then Result := '3301 - 3400'
    else if (dist > 3400) and (dist < 3501) then Result := '3401 - 3500'
    else if (dist > 3500) and (dist < 3601) then Result := '3501 - 3600'
    else if (dist > 3600) and (dist < 3701) then Result := '3601 - 3700'
    else if (dist > 3700) and (dist < 3801) then Result := '3701 - 3800'
    else if (dist > 3800) and (dist < 3901) then Result := '3801 - 3900'
    else if (dist > 3900) and (dist < 4001) then Result := '3901 - 4000'
    else if (dist > 4000) and (dist < 4101) then Result := '4001 - 4100'
    else if (dist > 4100) and (dist < 4201) then Result := '4101 - 4200'
    else if (dist > 4200) and (dist < 4301) then Result := '4201 - 4300'
    else if (dist > 4300) and (dist < 4401) then Result := '4301 - 4400'
    else if (dist > 4400) and (dist < 4501) then Result := '4401 - 4500'
    else if (dist > 4500) and (dist < 4601) then Result := '4501 - 4600'
    else if (dist > 4600) and (dist < 4701) then Result := '4601 - 4700'
    else if (dist > 4700) and (dist < 4801) then Result := '4701 - 4800'
    else if (dist > 4800) and (dist < 4901) then Result := '4801 - 4900'
    else if (dist > 4900) and (dist < 5001) then Result := '4901 - 5000'
    else if (dist > 5000) and (dist < 5101) then Result := '5001 - 5100'
    else if (dist > 5100) and (dist < 5201) then Result := '5101 - 5200'
    else if (dist > 5200) and (dist < 5301) then Result := '5201 - 5300'
    else if (dist > 5300) and (dist < 5401) then Result := '5301 - 5400'
    else if (dist > 5400) and (dist < 5501) then Result := '5401 - 5500'
    else if (dist > 5500) and (dist < 5701) then Result := '5501 - 5700'
    else if (dist > 5700) and (dist < 5901) then Result := '5701 - 5900'
    else if (dist > 5900) and (dist < 6101) then Result := '5901 - 6100'
    else if (dist > 6100) and (dist < 3601) then Result := '6101 - 6300'
    else if (dist > 6300) and (dist < 6501) then Result := '6301 - 6500'
    else if (dist > 6500) and (dist < 6701) then Result := '6501 - 6700'
    else if (dist > 6700) and (dist < 6901) then Result := '6701 - 6900'
    else if (dist > 6900) and (dist < 7101) then Result := '6901 - 7100'
    else if (dist > 7100) and (dist < 7301) then Result := '7101 - 7300'
    else if (dist > 7300) and (dist < 7501) then Result := '7301 - 7500'
    else if (dist > 7500) and (dist < 7701) then Result := '7501 - 7700'
    else if (dist > 7700) and (dist < 7901) then Result := '7701 - 7900'
    else if (dist > 7900) and (dist < 8101) then Result := '7901 - 8100'
    else if (dist > 8100) and (dist < 8301) then Result := '8101 - 8300'
    else if (dist > 8300) and (dist < 8501) then Result := '8301 - 8500'
    else if (dist > 8500) and (dist < 8701) then Result := '8501 - 8700'
    else if (dist > 8700) and (dist < 8901) then Result := '8701 - 8900'
    else if (dist > 8900) and (dist < 9101) then Result := '8901 - 9100'
    else if (dist > 9100) and (dist < 9301) then Result := '9101 - 9300'
    else if (dist > 9300) and (dist < 9501) then Result := '9301 - 9500'
    else if (dist > 9500) and (dist < 9701) then Result := '9501 - 9700'
    else if (dist > 9700) and (dist < 9901) then Result := '9701 - 9900'
    else if (dist > 9900) and (dist < 10101) then Result := '9901 - 10100'
    else if (dist > 10100) and (dist < 10301) then Result := '10101 - 10300'
    else if (dist > 10300) then Result := '10301 - 10500'
end;

procedure ExcelAutoFitCells(exWks : variant; row_begin, column_begin, column_end : integer);
var  width1 : double;
   allwidth : double;
          j : integer;
begin
  width1 := exWks.Columns[column_begin].ColumnWidth;
  allwidth := 0;
  for j := column_begin to column_end do
    allwidth := allwidth + exWks.Columns[j].ColumnWidth;

   // Высталяем нужную ширину 1-го столюца
  exWks.Columns[column_begin].ColumnWidth := allwidth;

   // Автоподбор по высоте
  exWks.Range[exWks.Cells[row_begin, column_begin],exWks.Cells[row_begin, column_end]].UnMerge;
  exWks.Range[exWks.Cells[row_begin, column_begin],exWks.Cells[row_begin, column_end]].WrapText := True;
  exWks.Range[exWks.Cells[row_begin, column_begin],exWks.Cells[row_begin, column_end]].Rows.AutoFit;
  exWks.Range[exWks.Cells[row_begin, column_begin],exWks.Cells[row_begin, column_end]].Merge;

  exWks.Columns[column_begin].ColumnWidth := width1;
end;


// type_return 0-string, 1-integer
function MemoToSQL(cxMemo: TcxMemo; type_return: integer): string;
var i  : integer;
   str : string;
begin
  str := '';
  for i := 0 to cxMemo.Lines.Count-1 do begin
    if Trim(cxMemo.Lines[i])<>'' then begin
      case type_return of
        0 : cxMemo.Lines[i] := '''' + cxMemo.Lines[i] + '''';
        1 : cxMemo.Lines[i] := IntToStr(StrToInt64Def(Trim(cxMemo.Lines[i]), -9));
        2 : cxMemo.Lines[i] := cxMemo.Lines[i];
      end;

      str := str + ',' + cxMemo.Lines[i];
    end;
  end;

  if Length(str) > 0 then Delete(str, 1, 1);

  Result := str;
end;



procedure DrawcxGridColumnOnFocused(Sender: TcxGridTableView; var AC: TcxCanvas; var AV: TcxGridColumnHeaderViewInfo);
var
 filter_criteria : TcxFilterCriteriaItem;
   data_criteria : TcxDataFilterCriteria;
begin
  data_criteria := TcxGridDBBandedTableView(Sender).DataController.Filter;
  if AV.Column.Focused then begin
    filter_criteria := data_criteria.FindItemByItemLink(TcxGridDBBandedColumn(AV.Column));
    if filter_criteria = nil then begin
      AC.Font.Style := [fsBold];
      AC.Font.Color := clBlack;
    end;
  end;
end;



procedure PrintReport366_367(retActSettings: Variant; exWkb: Variant;
      type_rep: integer; connect: TADOConnection; str_num_vagon: string;
      date_begin: TDateTime; date_end: TDateTime; str_node_begin_cod: string; str_node_end_cod: string;
      str_type_park_id: string; norm_stay: integer; rate_val, norm_nds: Currency);
var
    exApp, exWks : Variant;
    i, row_0     : integer;
    SP           : TADOStoredProc;
    set_act      : boolean;
    Q            : TADOQuery;
begin
  if VarIsNull(exWkb) then begin
    set_act := False;
    ShowTextMessage('Запуск Excel...', False);
    exApp := CreateOleObject('Excel.Application');
    exApp.Application.EnableEvents := False;
    exApp.ScreenUpdating := False;
    exApp.Workbooks.Add(GetDocBlob(connect, type_rep, 9, True));
    exWks := exApp.ActiveWorkbook.WorkSheets[1];
    //exApp.Visible := True;
    exApp.ActiveWindow.View := 1;
    exApp.ScreenUpdating := False;
  end else   begin
    set_act := True;
    exWks := exWkb.WorkSheets[1];
    exWks.Select;
  end;

  ShowTextMessage('Запрос данных с сервера...', False);
  SP := TADOStoredProc.Create(nil);

  SP.Connection := connect;
  SP.ProcedureName := 'sp_Report_fact_track';

  SP.CommandTimeout := 600;
  SP.Parameters.Refresh;
  SP.Parameters.ParamByName('@type_report'       ).Value := type_rep;
  SP.Parameters.ParamByName('@date_begin'        ).Value := date_begin;
  SP.Parameters.ParamByName('@date_end'          ).Value := date_end;
  SP.Parameters.ParamByName('@set_archive'       ).Value := True;
  SP.Parameters.ParamByName('@users_group_id'    ).Value := 158706;
  SP.Parameters.ParamByName('@str_node_begin_cod').Value := str_node_begin_cod;
  SP.Parameters.ParamByName('@str_node_end_cod'  ).Value := str_node_end_cod;

  //Если все парки выбраны или все не выбраны, отбор по парку не добавляем.
  if str_type_park_id <> '' then
    SP.Parameters.ParamByName('@str_type_park_id' ).Value := str_type_park_id;

  SP.Parameters.ParamByName('@str_users_owner').Value := null;
  SP.Parameters.ParamByName('@node_begin_cod' ).Value := str_node_begin_cod;
  SP.Parameters.ParamByName('@node_end_cod'   ).Value := str_node_end_cod;
  SP.Parameters.ParamByName('@norm_stay'      ).Value := norm_stay;

  if str_num_vagon = '' then SP.Parameters.ParamByName('@str_num_vagon'  ).Value := Null
  else SP.Parameters.ParamByName('@str_num_vagon'  ).Value := str_num_vagon;

  SP.Open;

//  exWks.Range['B4'].Value := 'за период с '+DateToStr(date_begin)+' по '+DateToStr(date_end)+' (по дате прибытия)';

  if not VarIsNull(retActSettings) then begin
    Q := TADOQuery.Create(nil);
    Q.Connection := connect;
    Q.SQL.Add('SELECT * FROM view_contract WHERE contract_id = ' + VarToStr(retActSettings[8]));
    Q.Open;


    exWks.Range['B2'].Value := 'за период с ' + FormatDateTime('dd.mm.yyyy', retActSettings[3][1]) + 'г. по ' + FormatDateTime('dd.mm.yyyy', retActSettings[3][2]) + 'г. включительно';
    exWks.Range['B3'].Value := 'по Договору № ' + Q.FieldByName('contract_cod').AsString + ' от ' + FormatDateTime('dd.mm.yyyy', Q.FieldByName('date_begin').AsDateTime) + 'г.';
    exWks.Range['B4'].Value := 'между ' + Q.FieldByName('firm_self_name_short').AsString + ' (' + Q.FieldByName('type_firm_self_name').AsString + ') и ' + Q.FieldByName('firm_customer_name_short').AsString + ' (' + Q.FieldByName('type_firm_customer_name').AsString + ')';

    if type_rep = 366 then begin
      exWks.Range['C14'].Value := Q.FieldByName('type_firm_self_name').AsString;
      exWks.Range['M14'].Value := Q.FieldByName('type_firm_customer_name').AsString;
      exWks.Range['C17'].Value := Q.FieldByName('firm_self_name_short').AsString;
      exWks.Range['M17'].Value := Q.FieldByName('firm_customer_name_short').AsString;

      // Подписанты МЫ
      if retActSettings[13][2] = True then begin
        exWks.Range['C16'].Value := VarToStr(retActSettings[14][1]);
        exWks.Range['C18'].Value := retActSettings[13][1];
      end;

      // Подписанты  Клиент
      if retActSettings[13][8] = True then begin
        exWks.Range['M16'].Value := VarToStr(retActSettings[14][7]);
        exWks.Range['M18'].Value := retActSettings[13][7];
      end;
    end;

    if type_rep = 367 then begin
      exWks.Range['B14'].Value := Q.FieldByName('type_firm_self_name').AsString;
      exWks.Range['L14'].Value := Q.FieldByName('type_firm_customer_name').AsString;
      exWks.Range['B17'].Value := Q.FieldByName('firm_self_name_short').AsString;
      exWks.Range['L17'].Value := Q.FieldByName('firm_customer_name_short').AsString;

      // Подписанты МЫ
      if retActSettings[13][2] = True then begin
        exWks.Range['B16'].Value := VarToStr(retActSettings[14][1]);
        exWks.Range['B18'].Value := retActSettings[13][1];
      end;

      // Подписанты  Клиент
      if retActSettings[13][8] = True then begin
        exWks.Range['L16'].Value := VarToStr(retActSettings[14][7]);
        exWks.Range['L18'].Value := retActSettings[13][7];
      end;
    end;

    Q.Free;
  end else begin
    exWks.Range['B2'].Value := 'за период с '+DateToStr(date_begin)+' по '+DateToStr(date_end)+' (по дате прибытия)';
  end;


  row_0 := 9;

  SP.First;
  if not (type_rep in [153,156]) then begin
    if SP.IsEmpty then begin
      SP.Free;

      if set_act = False then begin
        exApp.ScreenUpdating := True;
        exApp.Visible := True;

        VarClear(exWks); VarClear(exApp);
        ShowTextMessage('', True);
        Screen.Cursor := crDefault;
        Application.MessageBox('Нет данных.', 'Ошибка.', MB_OK + MB_ICONERROR);
      end;
      Exit;
    end;


    while not SP.EOF do begin
      case type_rep of
        366 : begin
                exWks.Range['B' + IntToStr(row_0)].Value := SP.RecNo;
                exWks.Range['C' + IntToStr(row_0)].Value := SP.FieldByName('num_vagon').AsString;
                exWks.Range['D' + IntToStr(row_0)].Value := SP.FieldByName('doc_number').AsString;
                exWks.Range['E' + IntToStr(row_0)].Value := SP.FieldByName('node_begin_name').AsString;
                exWks.Range['F' + IntToStr(row_0)].Value := SP.FieldByName('node_end_name').AsString;
                exWks.Range['G' + IntToStr(row_0)].Value := SP.FieldByName('date_arrival').Value;
                exWks.Range['H' + IntToStr(row_0)].Value := SP.FieldByName('date_otpr1').Value;
                exWks.Range['I' + IntToStr(row_0)].Value := SP.FieldByName('doc_number1').AsString;
                exWks.Range['K' + IntToStr(row_0)].Value := norm_stay;
                exWks.Range['M' + IntToStr(row_0)].Value := rate_val;
                if norm_nds = 0 then exWks.Range['O' + IntToStr(row_0)].Value := 0;
              end;
        367 : begin
                exWks.Range['B' + IntToStr(row_0)].Value := SP.RecNo;
                exWks.Range['C' + IntToStr(row_0)].Value := SP.FieldByName('num_vagon').AsString;
                exWks.Range['D' + IntToStr(row_0)].Value := SP.FieldByName('doc_number').AsString;
                exWks.Range['E' + IntToStr(row_0)].Value := SP.FieldByName('node_begin_name').AsString;
                exWks.Range['F' + IntToStr(row_0)].Value := SP.FieldByName('node_end_name').AsString;
                exWks.Range['G' + IntToStr(row_0)].Value := SP.FieldByName('date_arrival1').Value;
                exWks.Range['H' + IntToStr(row_0)].Value := SP.FieldByName('date_otpr').Value;
                exWks.Range['J' + IntToStr(row_0)].Value := norm_stay;
                exWks.Range['L' + IntToStr(row_0)].Value := rate_val;
                if norm_nds = 0 then exWks.Range['N' + IntToStr(row_0)].Value := 0;
              end;
      end;

      ShowTextMessage('Осталось: ' + IntToStr(SP.RecordCount - SP.RecNo) + ' строк.' , False);
      SP.Next;

      if not SP.Eof then begin
        exWks.Rows[IntToStr(row_0 + 1)].Insert;
        exWks.Rows[IntToStr(row_0)].Copy;
        exWks.Rows[IntToStr(row_0 + 1)].PasteSpecial(1);  //-4122
      end;

      inc(row_0);
    end;
  end;


  SP.Close;

  if set_act = False then begin
    exApp.ScreenUpdating := True;
  end;

   // Добавим в примечание к первой строке Код шаблона
  exWks.Range['A1'].ClearComments;
  exWks.Range['A1'].AddComment('Шаблон = ' + IntToStr(type_rep));
  exWks.Range['A1'].Comment.Visible := False;

  if set_act = False then begin
    exApp.ScreenUpdating := True;
    exApp.Visible := True;
    exApp.Range['A1'].Select;
    VarClear(exWks); VarClear(exApp);
  end;

  SP.Free;
  ShowTextMessage('', True);
  Screen.Cursor := crDefault;
end;


procedure PrintReport1366(retActSettings: Variant; exWkb: Variant;
      type_rep: integer; connect: TADOConnection; str_num_vagon: string;
      date_begin: TDateTime; date_end: TDateTime; str_node_begin_cod: string; str_node_end_cod: string;
      str_type_park_id: string; norm_stay: integer; rate_val, norm_nds: Currency);
var
    exApp, exWks : Variant;
    i, row_0     : integer;
    SP           : TADOStoredProc;
    set_act      : boolean;
    Q            : TADOQuery;
    set_print    : boolean;
begin
  if VarIsNull(exWkb) then begin
    set_act := False;
    ShowTextMessage('Запуск Excel...', False);
    exApp := CreateOleObject('Excel.Application');
    exApp.Application.EnableEvents := False;
    exApp.ScreenUpdating := False;
    exApp.Workbooks.Add(GetDocBlob(connect, type_rep, 9, True));
    exWks := exApp.ActiveWorkbook.WorkSheets[1];
    //exApp.Visible := True;
    exApp.ActiveWindow.View := 1;
    exApp.ScreenUpdating := False;
  end else   begin
    set_act := True;
    exWks := exWkb.WorkSheets[1];
    exWks.Select;
  end;

  ShowTextMessage('Запрос данных с сервера...', False);
  SP := TADOStoredProc.Create(nil);

  SP.Connection := connect;
  SP.ProcedureName := 'sp_fact_track_stay_GET';

  SP.CommandTimeout := 600;
  SP.Parameters.Refresh;
  SP.Parameters.ParamByName('@type_action'  ).Value := 1;
  SP.Parameters.ParamByName('@date1'        ).Value := date_begin;
  SP.Parameters.ParamByName('@date2'        ).Value := date_end;
  SP.Parameters.ParamByName('@set_archive'  ).Value := True;
  SP.Parameters.ParamByName('@str_num_vagon').Value := str_num_vagon;
  SP.Open;

//  exWks.Range['B4'].Value := 'за период с '+DateToStr(date_begin)+' по '+DateToStr(date_end)+' (по дате прибытия)';

  if not VarIsNull(retActSettings) then begin
    Q := TADOQuery.Create(nil);
    Q.Connection := connect;
    Q.SQL.Add('SELECT * FROM view_contract WHERE contract_id = ' + VarToStr(retActSettings[8]));
    Q.Open;



    exWks.Range['B2'].Value := 'за период с ' + FormatDateTime('dd.mm.yyyy', retActSettings[3][1]) + 'г. по ' + FormatDateTime('dd.mm.yyyy', retActSettings[3][2]) + 'г. включительно';
    exWks.Range['B3'].Value := 'по Договору № ' + Q.FieldByName('contract_cod').AsString + ' от ' + FormatDateTime('dd.mm.yyyy', Q.FieldByName('date_begin').AsDateTime) + 'г.';
    exWks.Range['B4'].Value := 'между ' + Q.FieldByName('firm_self_name_short').AsString + ' (' + Q.FieldByName('type_firm_self_name').AsString + ') и ' + Q.FieldByName('firm_customer_name_short').AsString + ' (' + Q.FieldByName('type_firm_customer_name').AsString + ')';
    exWks.Range['P5'].Value := FormatDateTime('dd.mm.yyyy', Date);

    exWks.Range['B14'].Value := Q.FieldByName('type_firm_self_name').AsString;
    exWks.Range['N14'].Value := Q.FieldByName('type_firm_customer_name').AsString;

    exWks.Range['B16'].Value := Q.FieldByName('firm_self_name_short').AsString;
    exWks.Range['N16'].Value := Q.FieldByName('firm_customer_name_short').AsString;

    // Подписанты МЫ
    if retActSettings[13][2] = True then begin
      exWks.Range['B15'].Value := VarToStr(retActSettings[14][1]);
      exWks.Range['E18'].Value := retActSettings[13][1];
    end;

    // Подписанты  Клиент
    if retActSettings[13][8] = True then begin
      exWks.Range['N15'].Value := VarToStr(retActSettings[14][7]);
      exWks.Range['P18'].Value := retActSettings[13][7];
    end;


    Q.Free;
  end else begin
    exWks.Range['B2'].Value := 'за период с '+DateToStr(date_begin)+' по '+DateToStr(date_end)+' (по дате прибытия)';
  end;


  row_0 := 8;

  SP.First;
  while not SP.EOF do begin

    if SP.FieldByName('fact_weight').AsFloat > 0 then begin

      if SP.FieldByName('date_otpr').IsNull or SP.FieldByName('date_arrival_1').IsNull or SP.FieldByName('date_otpr_1').IsNull or SP.FieldByName('date_arrival').IsNull then
        set_print := True
      else if norm_stay < ((DateOf(SP.FieldByName('date_otpr').Value) - DateOf(SP.FieldByName('date_arrival_1').Value)) + (DateOf(SP.FieldByName('date_otpr_1').Value) - DateOf(SP.FieldByName('date_arrival').Value))) then
        set_print := True
      else
        set_print := False;

      if set_print then begin
        exWks.Range['B' + IntToStr(row_0)].Value := row_0-7;
        exWks.Range['C' + IntToStr(row_0)].Value := SP.FieldByName('num_vagon').AsString;
        exWks.Range['D' + IntToStr(row_0)].Value := SP.FieldByName('doc_number').AsString;
        exWks.Range['E' + IntToStr(row_0)].Value := SP.FieldByName('node_begin_name').AsString;
        exWks.Range['F' + IntToStr(row_0)].Value := SP.FieldByName('node_end_name').AsString;




        if SP.FieldByName('date_arrival_1').IsNull then
          exWks.Range['G' + IntToStr(row_0)].Value := null
        else
          exWks.Range['G' + IntToStr(row_0)].Value := DateOf(SP.FieldByName('date_arrival_1').Value);

        if SP.FieldByName('date_otpr').IsNull then
          exWks.Range['H' + IntToStr(row_0)].Value := null
        else
          exWks.Range['H' + IntToStr(row_0)].Value := DateOf(SP.FieldByName('date_otpr').Value);

        if SP.FieldByName('date_arrival').IsNull then
          exWks.Range['I' + IntToStr(row_0)].Value := null
        else
          exWks.Range['I' + IntToStr(row_0)].Value := DateOf(SP.FieldByName('date_arrival').Value);

        if SP.FieldByName('date_otpr_1').IsNull then
          exWks.Range['J' + IntToStr(row_0)].Value := null
        else
          exWks.Range['J' + IntToStr(row_0)].Value := DateOf(SP.FieldByName('date_otpr_1').Value);


        exWks.Range['L' + IntToStr(row_0)].Value := norm_stay;
        exWks.Range['N' + IntToStr(row_0)].Value := rate_val;
        if norm_nds = 0 then exWks.Range['P' + IntToStr(row_0)].Value := 0;

        if not SP.Eof then begin
          exWks.Rows[IntToStr(row_0 + 1)].Insert;
          exWks.Rows[IntToStr(row_0)].Copy;
          exWks.Rows[IntToStr(row_0 + 1)].PasteSpecial(1);  //-4122
        end;

        inc(row_0);
      end;
    end;
    ShowTextMessage('Осталось: ' + IntToStr(SP.RecordCount - SP.RecNo) + ' строк.' , False);
    SP.Next;
  end;


  SP.Close;

  exWks.Rows[IntToStr(row_0)].Delete;
  exWks.Rows[IntToStr(row_0)].Delete;

   // Добавим в примечание к первой строке Код шаблона
  exWks.Range['A1'].ClearComments;
  exWks.Range['A1'].AddComment('Шаблон = ' + IntToStr(type_rep));
  exWks.Range['A1'].Comment.Visible := False;

  SP.Free;
  ShowTextMessage('', True);
  Screen.Cursor := crDefault;
end;


function SortClientDataSet(ClientDataSet: TClientDataSet; const FieldName: string): Boolean;
var
  i: integer;
  NewIndexName: string;
  IndexOptions: TIndexOptions;
  Field: TField;
begin
  Result := False;
  Field := ClientDataSet.Fields.FindField(FieldName);
  //If invalid field name, exit.
  if Field = nil then Exit;

  //if invalid field type, exit.
  if  (Field is TObjectField) or
      (Field is TBlobField) or
      (Field is TAggregateField) or
      (Field is TVariantField) or
      (Field is TBinaryField) then Exit;

  //Get IndexDefs and IndexName using RTTI
  //Ensure IndexDefs is up-to-date
  ClientDataSet.IndexDefs.Update;

  //If an ascending index is already in use,
  //switch to a descending index
  if ClientDataSet.IndexName = FieldName + '__IdxA' then  begin
      NewIndexName := FieldName + '__IdxD';
      IndexOptions := [ixDescending];
  end else begin
      NewIndexName := FieldName + '__IdxA';
      IndexOptions := [];
  end;

  //Look for existing index
  for i := 0 to Pred(ClientDataSet.IndexDefs.Count) do begin
    if ClientDataSet.IndexDefs[i].Name = NewIndexName then begin
        Result := True;
        Break
    end;
  end;

  //If existing index not found, create one
  if not Result then begin
    ClientDataSet.AddIndex(NewIndexName, FieldName, IndexOptions);
    Result := True;
  end;

  //Set the index
  ClientDataSet.IndexName := NewIndexName;
end;


procedure PrintInvoice_ETRAN_SMGS1(invoice_id: integer; connect_etran: TADOConnection);
var
  exApp, exWkb, exWks : Variant;
  i, line_cnt   : integer;
  Q : TADOQuery;
  Query_Invoice         : TADOQuery;
  Query_Invoice_Freight : TADOQuery;
  Query_Invoice_Due     : TADOQuery;
  Query_Invoice_Fact    : TADOQuery;
  Query_Invoice_Fact2   : TADOQuery;
  //--------------------------------------
  Query_Invoice_invSPC  : TADOQuery;
  Query_RoadBegin       : TADOQuery;
  Query_RoadEnd         : TADOQuery;

  Query_RoadBegin2      : TADOQuery;
  Query_RoadEnd2        : TADOQuery;

  Query_Invoice_Fact3   : TADOQuery;
  Query_Act             : TADOQuery;
  Query_PP              : TADOQuery;
  Query_carCSL          : TADOQuery;
  sp_report_SMGS1  : TADOStoredProc;
  sp_report_SMGS2  : TADOStoredProc;
  sp_report_SMGS3  : TADOStoredProc;
  str_inv_spc : string;
  str_temp : string;
  //--------------------------------------
begin

  exApp := CreateOleObject('Excel.Application');
  exWkb := exApp.Workbooks.Add(GetEtranDocBlob(connect_etran, 30, 9, True));
  exWkb := exApp.ActiveWorkbook;
  exWks := exWkb.WorkSheets[1];
//  exApp.Visible := True;
  ShowTextMessage('Запуск сервера автоматизации...', False);


  sp_report_SMGS1 := TADOStoredProc.Create(nil);
  sp_report_SMGS1.Connection := connect_etran;
  sp_report_SMGS1.ProcedureName := 'sp_report_SMGS';
  sp_report_SMGS1.Parameters.Refresh;
  sp_report_SMGS1.Parameters.ParamByName('@invoice_id' ).Value := invoice_id;
  sp_report_SMGS1.Parameters.ParamByName('@type_action').Value := 1;
  sp_report_SMGS1.Open;

  sp_report_SMGS2 := TADOStoredProc.Create(nil);
  sp_report_SMGS2.Connection := connect_etran;
  sp_report_SMGS2.ProcedureName := 'sp_report_SMGS';
  sp_report_SMGS2.Parameters.Refresh;
  sp_report_SMGS2.Parameters.ParamByName('@invoice_id' ).Value := invoice_id;
  sp_report_SMGS2.Parameters.ParamByName('@type_action').Value := 2;
  sp_report_SMGS2.Open;

  sp_report_SMGS3 := TADOStoredProc.Create(nil);
  sp_report_SMGS3.Connection := connect_etran;
  sp_report_SMGS3.ProcedureName := 'sp_report_SMGS';
  sp_report_SMGS3.Parameters.Refresh;
  sp_report_SMGS3.Parameters.ParamByName('@invoice_id' ).Value := invoice_id;
  sp_report_SMGS3.Parameters.ParamByName('@type_action').Value := 3;
  sp_report_SMGS3.Open;


  Q := TADOQuery.Create(nil);
  Q.Connection := connect_etran;

  Query_Invoice := TADOQuery.Create(nil);
  Query_Invoice.Connection := connect_etran;
  Query_Invoice.SQL.Add('SELECT * FROM invoice WHERE invoice_id = ' + IntToStr(invoice_id));
  Query_Invoice.Open;

  Query_Invoice_Due := TADOQuery.Create(nil);
  Query_Invoice_Due.Connection := connect_etran;
  Query_Invoice_Due.SQL.Add('SELECT	dueScheme, dueTarifCoef, distMinWay, dueTarifDiscount, dueFreightTarifClass ');
  Query_Invoice_Due.SQL.Add('FROM	invDue WHERE invoice_id = ' + IntToStr(invoice_id));
  Query_Invoice_Due.SQL.Add('UNION');
  Query_Invoice_Due.SQL.Add('SELECT	dueScheme, dueTarifCoef, distMinWay, dueTarifDiscount, dueFreightTarifClass ');
  Query_Invoice_Due.SQL.Add('FROM	invDueArrive WHERE invoice_id = ' + IntToStr(invoice_id));
  Query_Invoice_Due.SQL.Add('ORDER BY distMinWay DESC');

  Query_Invoice_Due.Open;


  Query_Invoice_Freight := TADOQuery.Create(nil);
  Query_Invoice_Freight.Connection := connect_etran;
  Query_Invoice_Freight.SQL.Add('SELECT TOP 1 * FROM invFreight WHERE invoice_id = ' + IntToStr(invoice_id));
  Query_Invoice_Freight.Open;


  Query_Invoice_Fact := TADOQuery.Create(nil);
  Query_Invoice_Fact.Connection := connect_etran;
  Query_Invoice_Fact.SQL.Add('SELECT	carOrder, carTypeName, invCar.carNumber, carTonnage, carAxles, carWeightNet,  carWeightDep*100 as carWeightDep, carWeightGross, carVolume, dueAmount, carTypeCode,');
  Query_Invoice_Fact.SQL.Add('        ''собств '' + isnull(carOwnerName,'''') + isnull('' '' + carOwnerOKPO,'''') as comment, carTenantName, ');
  Query_Invoice_Fact.SQL.Add('        cast(round(cast(len(''собств '' + isnull(carOwnerName,'''') + isnull('' '' + carOwnerOKPO,'''')) as money)/19.0,0) as int) as comment_size, carPriorFreightName');
  Query_Invoice_Fact.SQL.Add('FROM	invCar left join (');
  Query_Invoice_Fact.SQL.Add('			SELECT	carNumber, sum(dueAmount) as dueAmount');
  Query_Invoice_Fact.SQL.Add('			FROM	invDue');
  Query_Invoice_Fact.SQL.Add('			WHERE	invoice_id = ' + IntToStr(invoice_id));
  Query_Invoice_Fact.SQL.Add('			GROUP BY carNumber) x1 on invCar.carNumber = x1.carNumber');
  Query_Invoice_Fact.SQL.Add('WHERE	invoice_id = ' + IntToStr(invoice_id));
  Query_Invoice_Fact.SQL.Add('ORDER BY carOrder');
  Query_Invoice_Fact.Open;


  Query_Invoice_Fact2 := TADOQuery.Create(nil);
  Query_Invoice_Fact2.Connection := connect_etran;
  Query_Invoice_Fact2.SQL.Add('SELECT count(1) cnt_vagon, sum(carWeightNet) as carWeightNet,  sum(carWeightDep*100) as carWeightDep, sum(carWeightGross) as carWeightGross, sum(dueAmount) as dueAmount');
  Query_Invoice_Fact2.SQL.Add('FROM	invCar left join (');
  Query_Invoice_Fact2.SQL.Add('			SELECT	carNumber, sum(dueAmount) as dueAmount');
  Query_Invoice_Fact2.SQL.Add('			FROM	invDue');
  Query_Invoice_Fact2.SQL.Add('			WHERE	invoice_id = ' + IntToStr(invoice_id));
  Query_Invoice_Fact2.SQL.Add('			GROUP BY carNumber) x1 on invCar.carNumber = x1.carNumber');
  Query_Invoice_Fact2.SQL.Add('WHERE	invoice_id = ' + IntToStr(invoice_id));
  Query_Invoice_Fact2.Open;

  Query_carCSL := TADOQuery.Create(nil);
  Query_carCSL.Connection := connect_etran;
  Query_carCSL.SQL.Add('SELECT	* FROM	invCar inner join carCSL on invCar.invCar_id = carCSL.invCar_id');
  Query_carCSL.SQL.Add('WHERE	invoice_id = ' + IntToStr(invoice_id));
  Query_carCSL.Open;


  Query_Invoice_Fact3 := TADOQuery.Create(nil);
  Query_Invoice_Fact3.Connection := connect_etran;
  Query_Invoice_Fact3.SQL.Add('SELECT TOP 1 carOwnerTypeID, carOwnerName FROM invCar WHERE invoice_id = ' + IntToStr(invoice_id));
  Query_Invoice_Fact3.Open;

  //--------------------------------------------
  Query_Invoice_invSPC := TADOQuery.Create(nil);
  Query_Invoice_invSPC.Connection := connect_etran;
  Query_Invoice_invSPC.SQL.Add('SELECT * FROM invSPC WHERE invoice_id = ' + IntToStr(invoice_id) + ' ORDER BY 1');
  Query_Invoice_invSPC.Open;

  Query_RoadBegin := TADOQuery.Create(nil);
  Query_RoadBegin.Connection := connect_etran;
  Query_RoadBegin.SQL.Add('SELECT	inf_obj_ROAD.inf_obj_name, inf_obj_ROAD.inf_obj_cod, inf_obj_NODE.LandAbbr');
  Query_RoadBegin.SQL.Add('FROM	  invoice ');
  Query_RoadBegin.SQL.Add('       LEFT JOIN lis1..inf_obj_NODE as inf_obj_NODE ON invoice.invFromStationCode COLLATE cyrillic_general_ci_as = inf_obj_NODE.inf_obj_cod COLLATE cyrillic_general_ci_as');
  Query_RoadBegin.SQL.Add('       LEFT JOIN lis1..inf_obj_ROAD as inf_obj_ROAD ON inf_obj_ROAD.inf_obj_id = inf_obj_NODE.road_id');
  Query_RoadBegin.SQL.Add('WHERE	invoice_id = ' + IntToStr(invoice_id));
  Query_RoadBegin.Open;

  Query_RoadEnd := TADOQuery.Create(nil);
  Query_RoadEnd.Connection := connect_etran;
  Query_RoadEnd.SQL.Add('SELECT	inf_obj_ROAD.inf_obj_name, inf_obj_ROAD.inf_obj_cod, inf_obj_NODE.LandAbbr');
  Query_RoadEnd.SQL.Add('FROM	  invoice ');
  Query_RoadEnd.SQL.Add('       LEFT JOIN lis1..inf_obj_NODE as inf_obj_NODE ON invoice.invToStationCode COLLATE cyrillic_general_ci_as = inf_obj_NODE.inf_obj_cod COLLATE cyrillic_general_ci_as');
  Query_RoadEnd.SQL.Add('       LEFT JOIN lis1..inf_obj_ROAD as inf_obj_ROAD ON inf_obj_ROAD.inf_obj_id = inf_obj_NODE.road_id');
  Query_RoadEnd.SQL.Add('WHERE	invoice_id = ' + IntToStr(invoice_id));
  Query_RoadEnd.Open;



  Query_RoadBegin2 := TADOQuery.Create(nil);
  Query_RoadBegin2.Connection := connect_etran;
  Query_RoadBegin2.SQL.Add('SELECT	ETRAN_NSI_INF_OBJ.inf_obj_xml.value(''(row/ST_CN_ID/@value)[1]'',''varchar(800)'') cn_id, ');
  Query_RoadBegin2.SQL.Add('        inf2.inf_obj_xml.value(''(row/ADMINCODE_LAT/@value)[1]'',''varchar(800)'') admincode_lat,');
  Query_RoadBegin2.SQL.Add('        inf2.inf_obj_xml.value(''(row/ADMINCODE/@value)[1]'',''varchar(800)'') admincode');
  Query_RoadBegin2.SQL.Add('FROM	ETRAN_NSI_INF_OBJ ');
  Query_RoadBegin2.SQL.Add('      inner join ETRAN_NSI_INF_OBJ inf2 ON inf2.type_inf_id = 13 AND inf2.etran_nsi_id = ETRAN_NSI_INF_OBJ.inf_obj_xml.value(''(row/ST_CN_ID/@value)[1]'',''varchar(800)'')');
  Query_RoadBegin2.SQL.Add('      inner join invoice on ETRAN_NSI_INF_OBJ.inf_obj_cod  = invoice.invFromStationCode');
  Query_RoadBegin2.SQL.Add('WHERE	ETRAN_NSI_INF_OBJ.type_inf_id = 11 AND invoice_id = ' + IntToStr(invoice_id));
  Query_RoadBegin2.Open;

  Query_RoadEnd2 := TADOQuery.Create(nil);
  Query_RoadEnd2.Connection := connect_etran;
  Query_RoadEnd2.SQL.Add('SELECT	ETRAN_NSI_INF_OBJ.inf_obj_xml.value(''(row/ST_CN_ID/@value)[1]'',''varchar(800)'') cn_id, ');
  Query_RoadEnd2.SQL.Add('        inf2.inf_obj_xml.value(''(row/ADMINCODE_LAT/@value)[1]'',''varchar(800)'') admincode_lat,');
  Query_RoadEnd2.SQL.Add('        inf2.inf_obj_xml.value(''(row/ADMINCODE/@value)[1]'',''varchar(800)'') admincode');
  Query_RoadEnd2.SQL.Add('FROM	ETRAN_NSI_INF_OBJ ');
  Query_RoadEnd2.SQL.Add('      inner join ETRAN_NSI_INF_OBJ inf2 ON inf2.type_inf_id = 13 AND inf2.etran_nsi_id = ETRAN_NSI_INF_OBJ.inf_obj_xml.value(''(row/ST_CN_ID/@value)[1]'',''varchar(800)'')');
  Query_RoadEnd2.SQL.Add('      inner join invoice on ETRAN_NSI_INF_OBJ.inf_obj_cod  = invoice.invToStationCode');
  Query_RoadEnd2.SQL.Add('WHERE	ETRAN_NSI_INF_OBJ.type_inf_id = 11 AND invoice_id = ' + IntToStr(invoice_id));
  Query_RoadEnd2.Open;


  Query_PP := TADOQuery.Create(nil);
  Query_PP.Connection := connect_etran;
  Query_PP.SQL.Add('SELECT	top 1 ETRAN_NSI_INF_OBJ.inf_obj_xml.value(''(row/ST_BORDER_SIGN/@value)[1]'',''varchar(800)'') ST_BORDER_SIGN, etran_nsi_inf_obj.inf_obj_cod,');
  Query_PP.SQL.Add('			etran_nsi_inf_obj.inf_obj_name, inf2.inf_obj_xml.value(''(row/ADMINCODE_LAT/@value)[1]'',''varchar(800)'') admincode_lat,');
  Query_PP.SQL.Add('		inf2.inf_obj_xml.value(''(row/ADMINCODE/@value)[1]'',''varchar(800)'') admincode');
  Query_PP.SQL.Add('FROM	invDistance');
  Query_PP.SQL.Add('		inner join etran_nsi_inf_obj on etran_nsi_inf_obj.type_inf_id = 11 and invDistance.distStationCode = etran_nsi_inf_obj.inf_obj_cod');
  Query_PP.SQL.Add('		inner join ETRAN_NSI_INF_OBJ inf2 ON inf2.type_inf_id = 13 AND inf2.etran_nsi_id = ETRAN_NSI_INF_OBJ.inf_obj_xml.value(''(row/ST_CN_ID/@value)[1]'',''varchar(800)'')');
  Query_PP.SQL.Add('WHERE	ETRAN_NSI_INF_OBJ.inf_obj_xml.value(''(row/ST_BORDER_SIGN/@value)[1]'',''varchar(800)'') = ''1'' and invoice_id = ' + IntToStr(invoice_id));
  Query_PP.SQL.Add('ORDER BY invDistance_id');
  Query_PP.Open;


  Query_Act := TADOQuery.Create(nil);
  Query_Act.Connection := connect_etran;
  Query_Act.SQL.Add('SELECT	actCar.carNumber');
  Query_Act.SQL.Add('FROM	  act');
  Query_Act.SQL.Add('       INNER JOIN invoice ON act.actInvoiceID = invoice.invoiceID');
  Query_Act.SQL.Add('       INNER JOIN actCar ON act.act_id = actCar.act_id');
  Query_Act.SQL.Add('WHERE	actKindId = 0 AND invoice.invoice_id = ' + IntToStr(invoice_id));
  Query_Act.Open;
  //--------------------------------------------


  ShowTextMessage('Подготовка накладной...', False);
  exWks.Range['BH3' ].Value := Query_Invoice.FieldByName('invNumber').AsString;
  exWks.Range['F8'  ].Value := 'ОАО "РЖД"';
  exWks.Range['H12' ].Value := Query_Invoice.FieldByName('invSenderName').AsString;
  exWks.Range['U8'  ].Value := Query_Invoice.FieldByName('invSenderTGNL').AsString;
  exWks.Range['H17' ].Value := Query_Invoice.FieldByName('invSenderAddress').AsString;
  exWks.Range['H20' ].Value := 'Подпись ' + Query_Invoice.FieldByName('invRespPerson').AsString;

  exWks.Range['AH12'].Value := Query_RoadBegin2.FieldByName('admincode_lat').AsString + '/' + Query_Invoice.FieldByName('invFromStationName').AsString;
  exWks.Range['BQ8' ].Value := Query_RoadBegin2.FieldByName('admincode').AsString + ' ' + Query_Invoice.FieldByName('invFromStationCode').AsString;

  exWks.Range['AH19'].Value := 'Отв. за разм. груза';
  exWks.Range['H27' ].Value := Query_Invoice.FieldByName('invRecipName').AsString;
  exWks.Range['U24' ].Value := Query_Invoice.FieldByName('invRecipTGNL').AsString;
  exWks.Range['H30' ].Value := Query_Invoice.FieldByName('invRecipAddress').AsString;

  exWks.Range['A35' ].Value := Query_RoadEnd2.FieldByName('admincode_lat').AsString + '/' + Query_Invoice.FieldByName('invToStationName').AsString;
  exWks.Range['U32' ].Value := Query_RoadEnd2.FieldByName('admincode').AsString + ' ' + Query_Invoice.FieldByName('invToStationCode').AsString;

  exWks.Range['A43' ].Value := Query_PP.FieldByName('admincode_lat').AsString + '/' + Query_PP.FieldByName('inf_obj_name').AsString + ' ' + Query_PP.FieldByName('admincode').AsString + ' ' + Query_PP.FieldByName('inf_obj_cod').AsString;

  exWks.Range['O42' ].Value := Query_Invoice_Fact.FieldByName('carNumber').AsString + ' РЖД';
  exWks.Range['AM42' ].Value := 'O';
  exWks.Range['AR42' ].Value := Query_Invoice_Fact.FieldByName('carTonnage').AsString;
  exWks.Range['AT42' ].Value := Query_Invoice_Fact.FieldByName('carAxles').AsString;
  exWks.Range['AZ42' ].Value := Query_Invoice_Fact.FieldByName('carWeightGross').AsFloat/1000;
  exWks.Range['O45'  ].Value := Query_Invoice_Fact.FieldByName('carTenantName').AsString;


  exWks.Range['A57'  ].Value := Query_Invoice_Freight.FieldByName('freightGNGName').AsString + #10 +
                                Query_Invoice_Freight.FieldByName('freightName').AsString + #10 +
                                Query_Invoice_Freight.FieldByName('freightAdditional').AsString + #10 +
                                'Из-под:' + Query_Invoice_Fact.FieldByName('carPriorFreightName').AsString;

  exWks.Range['Q57'  ].Value := 'ГНГ ' + Query_Invoice_Freight.FieldByName('freightGNGCode').AsString + #10 +
                                'ЕТСНГ ' + Query_Invoice_Freight.FieldByName('freightCode').AsString;

  exWks.Range['AX57' ].Value := Query_Invoice_Fact.FieldByName('carWeightGross').AsFloat;
  exWks.Range['BH58' ].Value := Query_carCSL.FieldByName('sealQuantity').AsString;
  exWks.Range['BO58' ].Value := Query_carCSL.FieldByName('sealTypeName').AsString + #10 + Query_carCSL.FieldByName('sealOwnerTypeName').AsString;


  str_temp := '';
  sp_report_SMGS1.First;
  while not sp_report_SMGS1.Eof do begin
    str_temp := str_temp + sp_report_SMGS1.FieldByName('txt').AsString + #10;
    sp_report_SMGS1.Next;
  end;
  exWks.Range['A88'  ].Value := str_temp;



  sp_report_SMGS2.First;
  if not sp_report_SMGS2.Eof then begin
    exWks.Range['AA79' ].Value := sp_report_SMGS2.FieldByName('distCarrierName').AsString + #10 + sp_report_SMGS2.FieldByName('distCarrierCode').AsString;
    exWks.Range['AW79' ].Value := sp_report_SMGS2.FieldByName('node_begin_name').AsString + #10 + sp_report_SMGS2.FieldByName('node_end_name').AsString;
    exWks.Range['BQ79' ].Value := sp_report_SMGS2.FieldByName('node_begin_admin').AsString + ' ' + sp_report_SMGS2.FieldByName('node_begin_cod').AsString + #10 +
                                  sp_report_SMGS2.FieldByName('node_end_admin').AsString + ' ' + sp_report_SMGS2.FieldByName('node_end_cod').AsString;
  end;

  sp_report_SMGS2.Next;
  if not sp_report_SMGS2.Eof then begin
    exWks.Range['AA89' ].Value := sp_report_SMGS2.FieldByName('distCarrierName').AsString + #10 + sp_report_SMGS2.FieldByName('distCarrierCode').AsString;
    exWks.Range['AW89' ].Value := sp_report_SMGS2.FieldByName('node_begin_name').AsString + #10 + sp_report_SMGS2.FieldByName('node_end_name').AsString;
    exWks.Range['BQ89' ].Value := sp_report_SMGS2.FieldByName('node_begin_admin').AsString + ' ' + sp_report_SMGS2.FieldByName('node_begin_cod').AsString + #10 +
                                  sp_report_SMGS2.FieldByName('node_end_admin').AsString + ' ' + sp_report_SMGS2.FieldByName('node_end_cod').AsString;
  end;

  sp_report_SMGS2.Next;
  if not sp_report_SMGS2.Eof then begin
    exWks.Range['AA95' ].Value := sp_report_SMGS2.FieldByName('distCarrierName').AsString + #10 + sp_report_SMGS2.FieldByName('distCarrierCode').AsString;
    exWks.Range['AW95' ].Value := sp_report_SMGS2.FieldByName('node_begin_name').AsString + #10 + sp_report_SMGS2.FieldByName('node_end_name').AsString;
    exWks.Range['BQ95' ].Value := sp_report_SMGS2.FieldByName('node_begin_admin').AsString + ' ' + sp_report_SMGS2.FieldByName('node_begin_cod').AsString + #10 +
                                  sp_report_SMGS2.FieldByName('node_end_admin').AsString + ' ' + sp_report_SMGS2.FieldByName('node_end_cod').AsString;
  end;


  str_temp := 'Плательщики по ';
  sp_report_SMGS3.First;
  while not sp_report_SMGS3.Eof do begin
    str_temp := str_temp + sp_report_SMGS3.FieldByName('admincode_lat').AsString + ' - ' + sp_report_SMGS3.FieldByName('distPayerName').AsString + ' подкод ' + sp_report_SMGS3.FieldByName('distFRWSubCode').AsString + ',';
    sp_report_SMGS3.Next;
  end;

  Delete(str_temp, Length(str_temp) ,1);
  exWks.Range['AA106'].Value := str_temp;


  if not Query_Invoice.FieldByName('invDateReady').IsNull then begin

    exWks.Range['D112'].Value :=
          #10 + #10 +
          Query_RoadBegin.FieldByName('inf_obj_name').AsString + #10 +
          FormatDateTime('dd.mm.yyyy', Query_Invoice.FieldByName('invDateReady').AsDateTime)  + ' ' + #10 +
          '(' + FormatDateTime('dd.mm.yyyy hh:nn', Query_Invoice.FieldByName('invDateReady').AsDateTime) + ' Мск) ' + #10 +
          Query_Invoice.FieldByName('invFromStationName').AsString + ' - ' + Query_Invoice.FieldByName('invFromStationCode').AsString;

    exWks.Range['D112:J113'].Borders[1].Color := -60396;
    exWks.Range['D112:J113'].Borders[2].Color := -60396;
    exWks.Range['D112:J113'].Borders[3].Color := -60396;
    exWks.Range['D112:J113'].Borders[4].Color := -60396;
  end;

  if not Query_Invoice.FieldByName('invDateArrive').IsNull then begin

    exWks.Range['M112'].Value :=
          #10 + #10 +
          Query_RoadEnd.FieldByName('inf_obj_name').AsString + #10 +
          FormatDateTime('dd.mm.yyyy', Query_Invoice.FieldByName('invDateArrive').AsDateTime)  + ' ' + #10 +
          '(' + FormatDateTime('dd.mm.yyyy hh:nn', Query_Invoice.FieldByName('invDateArrive').AsDateTime) + ' Мск) ' + #10 +
          Query_Invoice.FieldByName('invToStationName').AsString + ' - ' + Query_Invoice.FieldByName('invToStationCode').AsString;

    exWks.Range['M112:V113'].Borders[1].Color := -60396;
    exWks.Range['M112:V113'].Borders[2].Color := -60396;
    exWks.Range['M112:V113'].Borders[3].Color := -60396;
    exWks.Range['M112:V113'].Borders[4].Color := -60396;
  end;

//  exWks.Range['A111'].Value := Query_Invoice.FieldByName('invFromStationName').AsString + ' ' + #10 +
//                               FormatDateTime('dd.mm.yyyy', Query_Invoice.FieldByName('invDateReady').AsDateTime)  + ' ' + #10 +
//                               '(МСК ' + FormatDateTime('dd.mm.yyyy hh:nn', Query_Invoice.FieldByName('invDateReady').AsDateTime) + ') ' + Query_RoadBegin.FieldByName('inf_obj_name').AsString;

//  if not Query_Invoice.FieldByName('invDateDelivery').IsNull then
//    exWks.Range['L111'].Value := Query_Invoice.FieldByName('invToStationName').AsString + ' ' + #10 +
//                                 FormatDateTime('dd.mm.yyyy', Query_Invoice.FieldByName('invDateDelivery').AsDateTime);


  exWks := exWkb.WorkSheets[2];
  sp_report_SMGS2.First;
  if not sp_report_SMGS2.Eof then begin
    exWks.Range['F7' ].Value := 'от ' + sp_report_SMGS2.FieldByName('node_begin_name').AsString;
    exWks.Range['F14'].Value := 'до ' + sp_report_SMGS2.FieldByName('node_end_name').AsString;

    exWks.Range['T7' ].Value := sp_report_SMGS2.FieldByName('node_begin_admin').AsString + ' ' + sp_report_SMGS2.FieldByName('node_begin_cod').AsString;
    exWks.Range['T14'].Value := sp_report_SMGS2.FieldByName('node_end_admin').AsString + ' ' + sp_report_SMGS2.FieldByName('node_end_cod').AsString;

    exWks.Range['AF12'].Value := sp_report_SMGS2.FieldByName('distMinWay').AsString;
    exWks.Range['AJ12'].Value := sp_report_SMGS2.FieldByName('dueWeightCalc').AsString;

    exWks.Range['AV6' ].Value := sp_report_SMGS2.FieldByName('CUR_CODE_LAT').AsString;
    exWks.Range['BC6' ].Value := sp_report_SMGS2.FieldByName('CUR_CODE_LAT').AsString;
    exWks.Range['AV16'].Value := sp_report_SMGS2.FieldByName('dueAmount').AsString;
    exWks.Range['BC16'].Value := sp_report_SMGS2.FieldByName('dueAmount').AsString;
    exWks.Range['AV37'].Value := sp_report_SMGS2.FieldByName('dueAmount').AsString;
    exWks.Range['BC37'].Value := sp_report_SMGS2.FieldByName('dueAmount').AsString;

    exWks.Range['F37'].Value := '1001';
    exWks.Range['P37'].Value := 'ЕТСНГ ' + Query_Invoice_Freight.FieldByName('freightCode').AsString;
    exWks.Range['AA37'].Value := '''1';
  end;

  sp_report_SMGS2.Next;
  if not sp_report_SMGS2.Eof then begin
    exWks.Range['F47'].Value := 'от ' + sp_report_SMGS2.FieldByName('node_begin_name').AsString;
    exWks.Range['F55'].Value := 'до ' + sp_report_SMGS2.FieldByName('node_end_name').AsString;

    exWks.Range['T47' ].Value := sp_report_SMGS2.FieldByName('node_begin_admin').AsString + ' ' + sp_report_SMGS2.FieldByName('node_begin_cod').AsString;
    exWks.Range['T55'].Value := sp_report_SMGS2.FieldByName('node_end_admin').AsString + ' ' + sp_report_SMGS2.FieldByName('node_end_cod').AsString;

    exWks.Range['AF52'].Value := sp_report_SMGS2.FieldByName('distMinWay').AsString;
  end;


  Q.Free;
  Query_Invoice.Free;
  Query_Invoice_Freight.Free;
  Query_Invoice_Due.Free;
  Query_Invoice_Fact.Free;
  Query_Invoice_Fact2.Free;
  Query_Invoice_invSPC.Free;
  Query_RoadBegin.Free;
  Query_RoadEnd.Free;
  Query_Invoice_Fact3.Free;
  Query_Act.Free;
//  exWks := exWkb.WorkSheets[1];
//  exWks.Range['A1'].Select;
  exApp.CutCopyMode := False;

  exWks.PageSetup.FitToPagesWide := 1;
  exWks.PageSetup.FitToPagesTall := 1;


  exApp.Visible := True;
  ShowTextMessage();

  VarClear(exWks); VarClear(exWkb); VarClear(exApp);
end;


procedure PrintInvoice_ETRAN_SMGS2(invoice_id: integer; connect_etran: TADOConnection);
var
  exApp, exWkb, exWks : Variant;
  i, line_cnt   : integer;
  Q : TADOQuery;
  Query_Invoice         : TADOQuery;
  Query_Invoice_Freight : TADOQuery;
  Query_Invoice_Due     : TADOQuery;
  Query_Invoice_Fact    : TADOQuery;
  Query_Invoice_Fact2   : TADOQuery;
  //--------------------------------------
  Query_Invoice_invSPC  : TADOQuery;
  Query_RoadBegin       : TADOQuery;
  Query_RoadEnd         : TADOQuery;

  Query_RoadBegin2      : TADOQuery;
  Query_RoadEnd2        : TADOQuery;

  Query_Invoice_Fact3   : TADOQuery;
  Query_Act             : TADOQuery;
  Query_PP              : TADOQuery;
  Query_carCSL          : TADOQuery;
  sp_report_SMGS1  : TADOStoredProc;
  sp_report_SMGS2  : TADOStoredProc;
  sp_report_SMGS3  : TADOStoredProc;
  str_inv_spc : string;
  str_temp : string;
  //--------------------------------------
begin

  exApp := CreateOleObject('Excel.Application');
  exWkb := exApp.Workbooks.Add(GetEtranDocBlob(connect_etran, 31, 9, True));
  exWkb := exApp.ActiveWorkbook;
  exWks := exWkb.WorkSheets[1];
//  exApp.Visible := True;
  ShowTextMessage('Запуск сервера автоматизации...', False);


  sp_report_SMGS1 := TADOStoredProc.Create(nil);
  sp_report_SMGS1.Connection := connect_etran;
  sp_report_SMGS1.ProcedureName := 'sp_report_SMGS';
  sp_report_SMGS1.Parameters.Refresh;
  sp_report_SMGS1.Parameters.ParamByName('@invoice_id' ).Value := invoice_id;
  sp_report_SMGS1.Parameters.ParamByName('@type_action').Value := 1;
  sp_report_SMGS1.Open;

  sp_report_SMGS2 := TADOStoredProc.Create(nil);
  sp_report_SMGS2.Connection := connect_etran;
  sp_report_SMGS2.ProcedureName := 'sp_report_SMGS';
  sp_report_SMGS2.Parameters.Refresh;
  sp_report_SMGS2.Parameters.ParamByName('@invoice_id' ).Value := invoice_id;
  sp_report_SMGS2.Parameters.ParamByName('@type_action').Value := 2;
  sp_report_SMGS2.Open;

  sp_report_SMGS3 := TADOStoredProc.Create(nil);
  sp_report_SMGS3.Connection := connect_etran;
  sp_report_SMGS3.ProcedureName := 'sp_report_SMGS';
  sp_report_SMGS3.Parameters.Refresh;
  sp_report_SMGS3.Parameters.ParamByName('@invoice_id' ).Value := invoice_id;
  sp_report_SMGS3.Parameters.ParamByName('@type_action').Value := 3;
  sp_report_SMGS3.Open;


  Q := TADOQuery.Create(nil);
  Q.Connection := connect_etran;

  Query_Invoice := TADOQuery.Create(nil);
  Query_Invoice.Connection := connect_etran;
  Query_Invoice.SQL.Add('SELECT * FROM invoice WHERE invoice_id = ' + IntToStr(invoice_id));
  Query_Invoice.Open;

  Query_Invoice_Due := TADOQuery.Create(nil);
  Query_Invoice_Due.Connection := connect_etran;
  Query_Invoice_Due.SQL.Add('SELECT	dueScheme, dueTarifCoef, distMinWay, dueTarifDiscount, dueFreightTarifClass ');
  Query_Invoice_Due.SQL.Add('FROM	invDue WHERE invoice_id = ' + IntToStr(invoice_id));
  Query_Invoice_Due.SQL.Add('UNION');
  Query_Invoice_Due.SQL.Add('SELECT	dueScheme, dueTarifCoef, distMinWay, dueTarifDiscount, dueFreightTarifClass ');
  Query_Invoice_Due.SQL.Add('FROM	invDueArrive WHERE invoice_id = ' + IntToStr(invoice_id));
  Query_Invoice_Due.SQL.Add('ORDER BY distMinWay DESC');

  Query_Invoice_Due.Open;


  Query_Invoice_Freight := TADOQuery.Create(nil);
  Query_Invoice_Freight.Connection := connect_etran;
  Query_Invoice_Freight.SQL.Add('SELECT TOP 1 * FROM invFreight WHERE invoice_id = ' + IntToStr(invoice_id));
  Query_Invoice_Freight.Open;


  Query_Invoice_Fact := TADOQuery.Create(nil);
  Query_Invoice_Fact.Connection := connect_etran;
  Query_Invoice_Fact.SQL.Add('SELECT	carOrder, carTypeName, invCar.carNumber, carTonnage, carAxles, carWeightNet,  carWeightDep*100 as carWeightDep, carWeightGross, carVolume, dueAmount, carTypeCode,');
  Query_Invoice_Fact.SQL.Add('        ''собств '' + isnull(carOwnerName,'''') + isnull('' '' + carOwnerOKPO,'''') as comment, carTenantName, ');
  Query_Invoice_Fact.SQL.Add('        cast(round(cast(len(''собств '' + isnull(carOwnerName,'''') + isnull('' '' + carOwnerOKPO,'''')) as money)/19.0,0) as int) as comment_size, carPriorFreightName, carOwnerName');
  Query_Invoice_Fact.SQL.Add('FROM	invCar left join (');
  Query_Invoice_Fact.SQL.Add('			SELECT	carNumber, sum(dueAmount) as dueAmount');
  Query_Invoice_Fact.SQL.Add('			FROM	invDue');
  Query_Invoice_Fact.SQL.Add('			WHERE	invoice_id = ' + IntToStr(invoice_id));
  Query_Invoice_Fact.SQL.Add('			GROUP BY carNumber) x1 on invCar.carNumber = x1.carNumber');
  Query_Invoice_Fact.SQL.Add('WHERE	invoice_id = ' + IntToStr(invoice_id));
  Query_Invoice_Fact.SQL.Add('ORDER BY carOrder');
  Query_Invoice_Fact.Open;


  Query_Invoice_Fact2 := TADOQuery.Create(nil);
  Query_Invoice_Fact2.Connection := connect_etran;
  Query_Invoice_Fact2.SQL.Add('SELECT count(1) cnt_vagon, sum(carWeightNet) as carWeightNet,  sum(carWeightDep*100) as carWeightDep, sum(carWeightGross) as carWeightGross, sum(dueAmount) as dueAmount');
  Query_Invoice_Fact2.SQL.Add('FROM	invCar left join (');
  Query_Invoice_Fact2.SQL.Add('			SELECT	carNumber, sum(dueAmount) as dueAmount');
  Query_Invoice_Fact2.SQL.Add('			FROM	invDue');
  Query_Invoice_Fact2.SQL.Add('			WHERE	invoice_id = ' + IntToStr(invoice_id));
  Query_Invoice_Fact2.SQL.Add('			GROUP BY carNumber) x1 on invCar.carNumber = x1.carNumber');
  Query_Invoice_Fact2.SQL.Add('WHERE	invoice_id = ' + IntToStr(invoice_id));
  Query_Invoice_Fact2.Open;

  Query_carCSL := TADOQuery.Create(nil);
  Query_carCSL.Connection := connect_etran;
  Query_carCSL.SQL.Add('SELECT	* FROM	invCar inner join carCSL on invCar.invCar_id = carCSL.invCar_id');
  Query_carCSL.SQL.Add('WHERE	invoice_id = ' + IntToStr(invoice_id));
  Query_carCSL.Open;


  Query_Invoice_Fact3 := TADOQuery.Create(nil);
  Query_Invoice_Fact3.Connection := connect_etran;
  Query_Invoice_Fact3.SQL.Add('SELECT TOP 1 carOwnerTypeID, carOwnerName FROM invCar WHERE invoice_id = ' + IntToStr(invoice_id));
  Query_Invoice_Fact3.Open;

  //--------------------------------------------
  Query_Invoice_invSPC := TADOQuery.Create(nil);
  Query_Invoice_invSPC.Connection := connect_etran;
  Query_Invoice_invSPC.SQL.Add('SELECT * FROM invSPC WHERE invoice_id = ' + IntToStr(invoice_id) + ' ORDER BY 1');
  Query_Invoice_invSPC.Open;

  Query_RoadBegin := TADOQuery.Create(nil);
  Query_RoadBegin.Connection := connect_etran;
  Query_RoadBegin.SQL.Add('SELECT	inf_obj_ROAD.inf_obj_name, inf_obj_ROAD.inf_obj_cod, inf_obj_NODE.LandAbbr');
  Query_RoadBegin.SQL.Add('FROM	  invoice ');
  Query_RoadBegin.SQL.Add('       LEFT JOIN lis1..inf_obj_NODE as inf_obj_NODE ON invoice.invFromStationCode COLLATE cyrillic_general_ci_as = inf_obj_NODE.inf_obj_cod COLLATE cyrillic_general_ci_as');
  Query_RoadBegin.SQL.Add('       LEFT JOIN lis1..inf_obj_ROAD as inf_obj_ROAD ON inf_obj_ROAD.inf_obj_id = inf_obj_NODE.road_id');
  Query_RoadBegin.SQL.Add('WHERE	invoice_id = ' + IntToStr(invoice_id));
  Query_RoadBegin.Open;

  Query_RoadEnd := TADOQuery.Create(nil);
  Query_RoadEnd.Connection := connect_etran;
  Query_RoadEnd.SQL.Add('SELECT	inf_obj_ROAD.inf_obj_name, inf_obj_ROAD.inf_obj_cod, inf_obj_NODE.LandAbbr');
  Query_RoadEnd.SQL.Add('FROM	  invoice ');
  Query_RoadEnd.SQL.Add('       LEFT JOIN lis1..inf_obj_NODE as inf_obj_NODE ON invoice.invToStationCode COLLATE cyrillic_general_ci_as = inf_obj_NODE.inf_obj_cod COLLATE cyrillic_general_ci_as');
  Query_RoadEnd.SQL.Add('       LEFT JOIN lis1..inf_obj_ROAD as inf_obj_ROAD ON inf_obj_ROAD.inf_obj_id = inf_obj_NODE.road_id');
  Query_RoadEnd.SQL.Add('WHERE	invoice_id = ' + IntToStr(invoice_id));
  Query_RoadEnd.Open;



  Query_RoadBegin2 := TADOQuery.Create(nil);
  Query_RoadBegin2.Connection := connect_etran;
  Query_RoadBegin2.SQL.Add('SELECT	ETRAN_NSI_INF_OBJ.inf_obj_xml.value(''(row/ST_CN_ID/@value)[1]'',''varchar(800)'') cn_id, ');
  Query_RoadBegin2.SQL.Add('        inf2.inf_obj_xml.value(''(row/ADMINCODE_LAT/@value)[1]'',''varchar(800)'') admincode_lat,');
  Query_RoadBegin2.SQL.Add('        inf2.inf_obj_xml.value(''(row/ADMINCODE/@value)[1]'',''varchar(800)'') admincode');
  Query_RoadBegin2.SQL.Add('FROM	ETRAN_NSI_INF_OBJ ');
  Query_RoadBegin2.SQL.Add('      inner join ETRAN_NSI_INF_OBJ inf2 ON inf2.type_inf_id = 13 AND inf2.etran_nsi_id = ETRAN_NSI_INF_OBJ.inf_obj_xml.value(''(row/ST_CN_ID/@value)[1]'',''varchar(800)'')');
  Query_RoadBegin2.SQL.Add('      inner join invoice on ETRAN_NSI_INF_OBJ.inf_obj_cod  = invoice.invFromStationCode');
  Query_RoadBegin2.SQL.Add('WHERE	ETRAN_NSI_INF_OBJ.type_inf_id = 11 AND invoice_id = ' + IntToStr(invoice_id));
  Query_RoadBegin2.Open;

  Query_RoadEnd2 := TADOQuery.Create(nil);
  Query_RoadEnd2.Connection := connect_etran;
  Query_RoadEnd2.SQL.Add('SELECT	ETRAN_NSI_INF_OBJ.inf_obj_xml.value(''(row/ST_CN_ID/@value)[1]'',''varchar(800)'') cn_id, ');
  Query_RoadEnd2.SQL.Add('        inf2.inf_obj_xml.value(''(row/ADMINCODE_LAT/@value)[1]'',''varchar(800)'') admincode_lat,');
  Query_RoadEnd2.SQL.Add('        inf2.inf_obj_xml.value(''(row/ADMINCODE/@value)[1]'',''varchar(800)'') admincode');
  Query_RoadEnd2.SQL.Add('FROM	ETRAN_NSI_INF_OBJ ');
  Query_RoadEnd2.SQL.Add('      inner join ETRAN_NSI_INF_OBJ inf2 ON inf2.type_inf_id = 13 AND inf2.etran_nsi_id = ETRAN_NSI_INF_OBJ.inf_obj_xml.value(''(row/ST_CN_ID/@value)[1]'',''varchar(800)'')');
  Query_RoadEnd2.SQL.Add('      inner join invoice on ETRAN_NSI_INF_OBJ.inf_obj_cod  = invoice.invToStationCode');
  Query_RoadEnd2.SQL.Add('WHERE	ETRAN_NSI_INF_OBJ.type_inf_id = 11 AND invoice_id = ' + IntToStr(invoice_id));
  Query_RoadEnd2.Open;


  Query_PP := TADOQuery.Create(nil);
  Query_PP.Connection := connect_etran;
  Query_PP.SQL.Add('SELECT	top 1 ETRAN_NSI_INF_OBJ.inf_obj_xml.value(''(row/ST_BORDER_SIGN/@value)[1]'',''varchar(800)'') ST_BORDER_SIGN, etran_nsi_inf_obj.inf_obj_cod,');
  Query_PP.SQL.Add('			etran_nsi_inf_obj.inf_obj_name, inf2.inf_obj_xml.value(''(row/ADMINCODE_LAT/@value)[1]'',''varchar(800)'') admincode_lat,');
  Query_PP.SQL.Add('		inf2.inf_obj_xml.value(''(row/ADMINCODE/@value)[1]'',''varchar(800)'') admincode');
  Query_PP.SQL.Add('FROM	invDistance');
  Query_PP.SQL.Add('		inner join etran_nsi_inf_obj on etran_nsi_inf_obj.type_inf_id = 11 and invDistance.distStationCode = etran_nsi_inf_obj.inf_obj_cod');
  Query_PP.SQL.Add('		inner join ETRAN_NSI_INF_OBJ inf2 ON inf2.type_inf_id = 13 AND inf2.etran_nsi_id = ETRAN_NSI_INF_OBJ.inf_obj_xml.value(''(row/ST_CN_ID/@value)[1]'',''varchar(800)'')');
  Query_PP.SQL.Add('WHERE	ETRAN_NSI_INF_OBJ.inf_obj_xml.value(''(row/ST_BORDER_SIGN/@value)[1]'',''varchar(800)'') = ''1'' and invoice_id = ' + IntToStr(invoice_id));
  Query_PP.SQL.Add('ORDER BY invDistance_id');
  Query_PP.Open;


  Query_Act := TADOQuery.Create(nil);
  Query_Act.Connection := connect_etran;
  Query_Act.SQL.Add('SELECT	actCar.carNumber');
  Query_Act.SQL.Add('FROM	  act');
  Query_Act.SQL.Add('       INNER JOIN invoice ON act.actInvoiceID = invoice.invoiceID');
  Query_Act.SQL.Add('       INNER JOIN actCar ON act.act_id = actCar.act_id');
  Query_Act.SQL.Add('WHERE	actKindId = 0 AND invoice.invoice_id = ' + IntToStr(invoice_id));
  Query_Act.Open;
  //--------------------------------------------


  ShowTextMessage('Подготовка накладной...', False);
  exWks.Range['BH3' ].Value := Query_Invoice.FieldByName('invNumber').AsString;
  exWks.Range['F8'  ].Value := 'ОАО "РЖД"';
  exWks.Range['H12' ].Value := Query_Invoice.FieldByName('invSenderName').AsString;
  exWks.Range['U8'  ].Value := Query_Invoice.FieldByName('invSenderTGNL').AsString;
  exWks.Range['H17' ].Value := Query_Invoice.FieldByName('invSenderAddress').AsString;
  exWks.Range['H20' ].Value := 'Подпись ' + Query_Invoice.FieldByName('invRespPerson').AsString;

  exWks.Range['AH12'].Value := Query_RoadBegin2.FieldByName('admincode_lat').AsString + '/' + Query_Invoice.FieldByName('invFromStationName').AsString;
  exWks.Range['BQ8' ].Value := Query_RoadBegin2.FieldByName('admincode').AsString + ' ' + Query_Invoice.FieldByName('invFromStationCode').AsString;

  exWks.Range['AH19'].Value := 'Отв. за разм. груза';
  exWks.Range['H27' ].Value := Query_Invoice.FieldByName('invRecipName').AsString;
  exWks.Range['U24' ].Value := Query_Invoice.FieldByName('invRecipTGNL').AsString;
  exWks.Range['H30' ].Value := Query_Invoice.FieldByName('invRecipAddress').AsString;

  exWks.Range['A35' ].Value := Query_RoadEnd2.FieldByName('admincode_lat').AsString + '/' + Query_Invoice.FieldByName('invToStationName').AsString;
  exWks.Range['U32' ].Value := Query_RoadEnd2.FieldByName('admincode').AsString + ' ' + Query_Invoice.FieldByName('invToStationCode').AsString;

  exWks.Range['A43' ].Value := Query_PP.FieldByName('admincode_lat').AsString + '/' + Query_PP.FieldByName('inf_obj_name').AsString + ' ' + Query_PP.FieldByName('admincode').AsString + ' ' + Query_PP.FieldByName('inf_obj_cod').AsString;

  exWks.Range['O42' ].Value := Query_Invoice_Fact.FieldByName('carNumber').AsString + ' РЖД';
  exWks.Range['AM42' ].Value := 'O';
  exWks.Range['AR42' ].Value := Query_Invoice_Fact.FieldByName('carTonnage').AsString;
  exWks.Range['AT42' ].Value := Query_Invoice_Fact.FieldByName('carAxles').AsString;
  exWks.Range['AZ42' ].Value := Query_Invoice_Fact.FieldByName('carWeightGross').AsFloat/1000;
  exWks.Range['O45'  ].Value := Query_Invoice_Fact.FieldByName('carTenantName').AsString;


  exWks.Range['A57'  ].Value := Query_Invoice_Freight.FieldByName('freightGNGName').AsString + #10 +
                                Query_Invoice_Freight.FieldByName('freightName').AsString + #10 +
                                Query_Invoice_Freight.FieldByName('freightAdditional').AsString + #10 +
                                'Из-под:' + Query_Invoice_Fact.FieldByName('carPriorFreightName').AsString;

  exWks.Range['Q57'  ].Value := 'ГНГ ' + Query_Invoice_Freight.FieldByName('freightGNGCode').AsString + #10 +
                                'ЕТСНГ ' + Query_Invoice_Freight.FieldByName('freightCode').AsString;

  exWks.Range['AX57' ].Value := Query_Invoice_Fact.FieldByName('carWeightGross').AsFloat;
  exWks.Range['BH58' ].Value := Query_carCSL.FieldByName('sealQuantity').AsString;
  exWks.Range['BO58' ].Value := Query_carCSL.FieldByName('sealTypeName').AsString + #10 + Query_carCSL.FieldByName('sealOwnerTypeName').AsString;


  str_temp := '';
  sp_report_SMGS1.First;
  while not sp_report_SMGS1.Eof do begin
    str_temp := str_temp + sp_report_SMGS1.FieldByName('txt').AsString + #10;
    sp_report_SMGS1.Next;
  end;
  exWks.Range['A88'  ].Value := str_temp;



  sp_report_SMGS2.First;
  if not sp_report_SMGS2.Eof then begin
    exWks.Range['AA79' ].Value := sp_report_SMGS2.FieldByName('distCarrierName').AsString + #10 + sp_report_SMGS2.FieldByName('distCarrierCode').AsString;
    exWks.Range['AW79' ].Value := sp_report_SMGS2.FieldByName('node_begin_name').AsString + #10 + sp_report_SMGS2.FieldByName('node_end_name').AsString;
    exWks.Range['BQ79' ].Value := sp_report_SMGS2.FieldByName('node_begin_admin').AsString + ' ' + sp_report_SMGS2.FieldByName('node_begin_cod').AsString + #10 +
                                  sp_report_SMGS2.FieldByName('node_end_admin').AsString + ' ' + sp_report_SMGS2.FieldByName('node_end_cod').AsString;
  end;

  sp_report_SMGS2.Next;
  if not sp_report_SMGS2.Eof then begin
    exWks.Range['AA89' ].Value := sp_report_SMGS2.FieldByName('distCarrierName').AsString + #10 + sp_report_SMGS2.FieldByName('distCarrierCode').AsString;
    exWks.Range['AW89' ].Value := sp_report_SMGS2.FieldByName('node_begin_name').AsString + #10 + sp_report_SMGS2.FieldByName('node_end_name').AsString;
    exWks.Range['BQ89' ].Value := sp_report_SMGS2.FieldByName('node_begin_admin').AsString + ' ' + sp_report_SMGS2.FieldByName('node_begin_cod').AsString + #10 +
                                  sp_report_SMGS2.FieldByName('node_end_admin').AsString + ' ' + sp_report_SMGS2.FieldByName('node_end_cod').AsString;
  end;

  sp_report_SMGS2.Next;
  if not sp_report_SMGS2.Eof then begin
    exWks.Range['AA95' ].Value := sp_report_SMGS2.FieldByName('distCarrierName').AsString + #10 + sp_report_SMGS2.FieldByName('distCarrierCode').AsString;
    exWks.Range['AW95' ].Value := sp_report_SMGS2.FieldByName('node_begin_name').AsString + #10 + sp_report_SMGS2.FieldByName('node_end_name').AsString;
    exWks.Range['BQ95' ].Value := sp_report_SMGS2.FieldByName('node_begin_admin').AsString + ' ' + sp_report_SMGS2.FieldByName('node_begin_cod').AsString + #10 +
                                  sp_report_SMGS2.FieldByName('node_end_admin').AsString + ' ' + sp_report_SMGS2.FieldByName('node_end_cod').AsString;
  end;


  str_temp := 'Плательщики по ';
  sp_report_SMGS3.First;
  while not sp_report_SMGS3.Eof do begin
    str_temp := str_temp + sp_report_SMGS3.FieldByName('admincode_lat').AsString + ' - ' + sp_report_SMGS3.FieldByName('distPayerName').AsString + ' подкод ' + sp_report_SMGS3.FieldByName('distFRWSubCode').AsString + ',';
    sp_report_SMGS3.Next;
  end;

  Delete(str_temp, Length(str_temp) ,1);
  exWks.Range['AA106'].Value := str_temp;

  if not Query_Invoice.FieldByName('invDateReady').IsNull then begin

    exWks.Range['E112'].Value :=
          #10 + #10 +
          Query_RoadBegin.FieldByName('inf_obj_name').AsString + #10 +
          FormatDateTime('dd.mm.yyyy', Query_Invoice.FieldByName('invDateReady').AsDateTime)  + ' ' + #10 +
          '(' + FormatDateTime('dd.mm.yyyy hh:nn', Query_Invoice.FieldByName('invDateReady').AsDateTime) + ' Мск) ' + #10 +
          Query_Invoice.FieldByName('invFromStationName').AsString + ' - ' + Query_Invoice.FieldByName('invFromStationCode').AsString;

    exWks.Range['E112:J113'].Borders[1].Color := -60396;
    exWks.Range['E112:J113'].Borders[2].Color := -60396;
    exWks.Range['E112:J113'].Borders[3].Color := -60396;
    exWks.Range['E112:J113'].Borders[4].Color := -60396;
  end;

  if not Query_Invoice.FieldByName('invDateArrive').IsNull then begin

    exWks.Range['M112'].Value :=
          #10 + #10 +
          Query_RoadEnd.FieldByName('inf_obj_name').AsString + #10 +
          FormatDateTime('dd.mm.yyyy', Query_Invoice.FieldByName('invDateArrive').AsDateTime)  + ' ' + #10 +
          '(' + FormatDateTime('dd.mm.yyyy hh:nn', Query_Invoice.FieldByName('invDateArrive').AsDateTime) + ' Мск) ' + #10 +
          Query_Invoice.FieldByName('invToStationName').AsString + ' - ' + Query_Invoice.FieldByName('invToStationCode').AsString;

    exWks.Range['M112:V113'].Borders[1].Color := -60396;
    exWks.Range['M112:V113'].Borders[2].Color := -60396;
    exWks.Range['M112:V113'].Borders[3].Color := -60396;
    exWks.Range['M112:V113'].Borders[4].Color := -60396;
  end;

//  exWks.Range['A111'].Value := Query_Invoice.FieldByName('invFromStationName').AsString + ' ' + #10 +
//                               FormatDateTime('dd.mm.yyyy', Query_Invoice.FieldByName('invDateReady').AsDateTime)  + ' ' + #10 +
//                               '(МСК ' + FormatDateTime('dd.mm.yyyy hh:nn', Query_Invoice.FieldByName('invDateReady').AsDateTime) + ') ' + Query_RoadBegin.FieldByName('inf_obj_name').AsString;
//
//  if not Query_Invoice.FieldByName('invDateDelivery').IsNull then
//    exWks.Range['L111'].Value := Query_Invoice.FieldByName('invToStationName').AsString + ' ' + #10 +
//                                 FormatDateTime('dd.mm.yyyy', Query_Invoice.FieldByName('invDateDelivery').AsDateTime);


  exWks := exWkb.WorkSheets[2];
  sp_report_SMGS2.First;
  if not sp_report_SMGS2.Eof then begin
    exWks.Range['F7' ].Value := 'от ' + sp_report_SMGS2.FieldByName('node_begin_name').AsString;
    exWks.Range['F14'].Value := 'до ' + sp_report_SMGS2.FieldByName('node_end_name').AsString;

    exWks.Range['T7' ].Value := sp_report_SMGS2.FieldByName('node_begin_admin').AsString + ' ' + sp_report_SMGS2.FieldByName('node_begin_cod').AsString;
    exWks.Range['T14'].Value := sp_report_SMGS2.FieldByName('node_end_admin').AsString + ' ' + sp_report_SMGS2.FieldByName('node_end_cod').AsString;

    exWks.Range['AF12'].Value := sp_report_SMGS2.FieldByName('distMinWay').AsString;
    exWks.Range['AJ12'].Value := sp_report_SMGS2.FieldByName('dueWeightCalc').AsString;

    exWks.Range['AV6' ].Value := sp_report_SMGS2.FieldByName('CUR_CODE_LAT').AsString;
    exWks.Range['BC6' ].Value := sp_report_SMGS2.FieldByName('CUR_CODE_LAT').AsString;
    exWks.Range['AV16'].Value := sp_report_SMGS2.FieldByName('dueAmount').AsString;
    exWks.Range['BC16'].Value := sp_report_SMGS2.FieldByName('dueAmount').AsString;
    exWks.Range['AV37'].Value := sp_report_SMGS2.FieldByName('dueAmount').AsString;
    exWks.Range['BC37'].Value := sp_report_SMGS2.FieldByName('dueAmount').AsString;

    exWks.Range['F37'].Value := '1001';
    exWks.Range['P37'].Value := 'ЕТСНГ ' + Query_Invoice_Freight.FieldByName('freightCode').AsString;
    exWks.Range['AA37'].Value := '''1';
  end;

  sp_report_SMGS2.Next;
  if not sp_report_SMGS2.Eof then begin
    exWks.Range['F47'].Value := 'от ' + sp_report_SMGS2.FieldByName('node_begin_name').AsString;
    exWks.Range['F55'].Value := 'до ' + sp_report_SMGS2.FieldByName('node_end_name').AsString;

    exWks.Range['T47' ].Value := sp_report_SMGS2.FieldByName('node_begin_admin').AsString + ' ' + sp_report_SMGS2.FieldByName('node_begin_cod').AsString;
    exWks.Range['T55'].Value := sp_report_SMGS2.FieldByName('node_end_admin').AsString + ' ' + sp_report_SMGS2.FieldByName('node_end_cod').AsString;

    exWks.Range['AF52'].Value := sp_report_SMGS2.FieldByName('distMinWay').AsString;
  end;

  exWks := exWkb.WorkSheets[3];

  exWks.Range['V2'].Value := Query_Invoice.FieldByName('invNumber').AsString;

  line_cnt := 10;
  Query_Invoice_Fact.First;
  while not Query_Invoice_Fact.Eof do begin
    exWks.Rows[IntToStr(line_cnt  ) + ':' + IntToStr(line_cnt+2)].Copy;
    exWks.Rows[IntToStr(line_cnt+3) + ':' + IntToStr(line_cnt+5)].Insert;

    exWks.Range['A' + IntToStr(line_cnt  )].Value := Query_Invoice_Fact.RecNo;
    exWks.Range['C' + IntToStr(line_cnt  )].Value := Query_Invoice_Fact.FieldByName('carNumber').AsString + ' ' + 'РЖД';
    exWks.Range['E' + IntToStr(line_cnt  )].Value := 'О';
    exWks.Range['G' + IntToStr(line_cnt  )].Value := Query_Invoice_Fact.FieldByName('carTonnage').AsString;
    exWks.Range['H' + IntToStr(line_cnt  )].Value := Query_Invoice_Fact.FieldByName('carAxles').AsString;
    exWks.Range['I' + IntToStr(line_cnt  )].Value := Query_Invoice_Fact.FieldByName('carWeightDep').AsFloat/1000;
    exWks.Range['C' + IntToStr(line_cnt+2)].Value := Query_Invoice_Fact.FieldByName('carOwnerName').AsString; //'Собственная';

    line_cnt := line_cnt + 3;
    Query_Invoice_Fact.Next;
  end;


  exWks.Rows[IntToStr(line_cnt)].Delete;
  exWks.Rows[IntToStr(line_cnt)].Delete;
  exWks.Rows[IntToStr(line_cnt)].Delete;



  Q.Free;
  Query_Invoice.Free;
  Query_Invoice_Freight.Free;
  Query_Invoice_Due.Free;
  Query_Invoice_Fact.Free;
  Query_Invoice_Fact2.Free;
  Query_Invoice_invSPC.Free;
  Query_RoadBegin.Free;
  Query_RoadEnd.Free;
  Query_Invoice_Fact3.Free;
  Query_Act.Free;
//  exWks := exWkb.WorkSheets[1];
//  exWks.Range['A1'].Select;
  exApp.CutCopyMode := False;

  exWks.PageSetup.FitToPagesWide := 1;
  exWks.PageSetup.FitToPagesTall := 1;


  exApp.Visible := True;
  ShowTextMessage();

  VarClear(exWks); VarClear(exWkb); VarClear(exApp);
end;

procedure PrintInvoice_ETRAN(invoice_id: integer; connect_etran: TADOConnection; var exWks: variant);
var
//  exApp, exWkb, exWks : Variant;
  i, line_cnt   : integer;
  Q : TADOQuery;
  Query_Invoice         : TADOQuery;
  Query_Invoice_Freight : TADOQuery;
  Query_Invoice_Due     : TADOQuery;
  Query_Invoice_Fact    : TADOQuery;
  Query_Invoice_Fact2   : TADOQuery;
  //--------------------------------------
  Query_Invoice_invSPC  : TADOQuery;
  Query_RoadBegin       : TADOQuery;
  Query_RoadEnd         : TADOQuery;
  Query_Invoice_Fact3   : TADOQuery;
  Query_Act             : TADOQuery;
  Query_Doc             : TADOQuery;
  str_inv_spc, str_inv_doc : string;
  //--------------------------------------
begin

//  exApp := CreateOleObject('Excel.Application');
//  exWkb := exApp.Workbooks.Add(GetEtranDocBlob(connect_etran, 144, 9, True)); // 'ГУ-12.xls'
//  exWkb := exApp.ActiveWorkbook;
//  exWks := exWkb.WorkSheets[1];
//  exApp.Visible := True;
//  ShowTextMessage('Запуск сервера автоматизации...', False);

  Q := TADOQuery.Create(nil);
  Q.Connection := connect_etran;

  Query_Invoice := TADOQuery.Create(nil);
  Query_Invoice.Connection := connect_etran;
  Query_Invoice.SQL.Add('SELECT * FROM invoice WHERE invoice_id = ' + IntToStr(invoice_id));
  Query_Invoice.Open;

  Query_Invoice_Due := TADOQuery.Create(nil);
  Query_Invoice_Due.Connection := connect_etran;
  Query_Invoice_Due.SQL.Add('SELECT	dueScheme, dueTarifCoef, distMinWay, dueTarifDiscount, dueFreightTarifClass ');
  Query_Invoice_Due.SQL.Add('FROM	invDue WHERE invoice_id = ' + IntToStr(invoice_id));
  Query_Invoice_Due.SQL.Add('UNION');
  Query_Invoice_Due.SQL.Add('SELECT	dueScheme, dueTarifCoef, distMinWay, dueTarifDiscount, dueFreightTarifClass ');
  Query_Invoice_Due.SQL.Add('FROM	invDueArrive WHERE invoice_id = ' + IntToStr(invoice_id));
  Query_Invoice_Due.Open;


  Query_Invoice_Freight := TADOQuery.Create(nil);
  Query_Invoice_Freight.Connection := connect_etran;
  Query_Invoice_Freight.SQL.Add('SELECT TOP 1 * FROM invFreight WHERE invoice_id = ' + IntToStr(invoice_id));
  Query_Invoice_Freight.Open;


  Query_Invoice_Fact := TADOQuery.Create(nil);
  Query_Invoice_Fact.Connection := connect_etran;
  Query_Invoice_Fact.SQL.Add('SELECT	carOrder, carTypeName, invCar.carNumber, carTonnage, carAxles, carWeightNet,  carWeightDep*100 as carWeightDep, carWeightGross, carVolume, dueAmount, carTypeCode,');
  Query_Invoice_Fact.SQL.Add('        ''собств '' + isnull(carOwnerName,'''') + isnull('' '' + carOwnerOKPO,'''') as comment, ');
  Query_Invoice_Fact.SQL.Add('        cast(round(cast(len(''собств '' + isnull(carOwnerName,'''') + isnull('' '' + carOwnerOKPO,'''')) as money)/19.0,0) as int) as comment_size');
  Query_Invoice_Fact.SQL.Add('FROM	invCar left join (');
  Query_Invoice_Fact.SQL.Add('			SELECT	carNumber, sum(dueAmount) as dueAmount');
  Query_Invoice_Fact.SQL.Add('			FROM	invDue');
  Query_Invoice_Fact.SQL.Add('			WHERE	invoice_id = ' + IntToStr(invoice_id));
  Query_Invoice_Fact.SQL.Add('			GROUP BY carNumber) x1 on invCar.carNumber = x1.carNumber');
  Query_Invoice_Fact.SQL.Add('WHERE	invoice_id = ' + IntToStr(invoice_id));
  Query_Invoice_Fact.SQL.Add('ORDER BY carOrder');
  Query_Invoice_Fact.Open;


  Query_Invoice_Fact2 := TADOQuery.Create(nil);
  Query_Invoice_Fact2.Connection := connect_etran;
  Query_Invoice_Fact2.SQL.Add('SELECT count(1) cnt_vagon, sum(carWeightNet) as carWeightNet,  sum(carWeightDep*100) as carWeightDep, sum(carWeightGross) as carWeightGross, sum(dueAmount) as dueAmount');
  Query_Invoice_Fact2.SQL.Add('FROM	invCar left join (');
  Query_Invoice_Fact2.SQL.Add('			SELECT	carNumber, sum(dueAmount) as dueAmount');
  Query_Invoice_Fact2.SQL.Add('			FROM	invDue');
  Query_Invoice_Fact2.SQL.Add('			WHERE	invoice_id = ' + IntToStr(invoice_id));
  Query_Invoice_Fact2.SQL.Add('			GROUP BY carNumber) x1 on invCar.carNumber = x1.carNumber');
  Query_Invoice_Fact2.SQL.Add('WHERE	invoice_id = ' + IntToStr(invoice_id));
  Query_Invoice_Fact2.Open;


  Query_Invoice_Fact3 := TADOQuery.Create(nil);
  Query_Invoice_Fact3.Connection := connect_etran;
  Query_Invoice_Fact3.SQL.Add('SELECT TOP 1 carOwnerTypeID, carOwnerName FROM invCar WHERE invoice_id = ' + IntToStr(invoice_id));
  Query_Invoice_Fact3.Open;

  //--------------------------------------------
  Query_Invoice_invSPC := TADOQuery.Create(nil);
  Query_Invoice_invSPC.Connection := connect_etran;
  Query_Invoice_invSPC.SQL.Add('SELECT * FROM invSPC WHERE invoice_id = ' + IntToStr(invoice_id) + ' ORDER BY 1');
  Query_Invoice_invSPC.Open;

  Query_RoadBegin := TADOQuery.Create(nil);
  Query_RoadBegin.Connection := connect_etran;
  Query_RoadBegin.SQL.Add('SELECT	inf_obj_ROAD.inf_obj_name, inf_obj_ROAD.inf_obj_cod ');
  Query_RoadBegin.SQL.Add('FROM	  invoice ');
  Query_RoadBegin.SQL.Add('       LEFT JOIN lis1..inf_obj_NODE as inf_obj_NODE ON invoice.invFromStationCode COLLATE cyrillic_general_ci_as = inf_obj_NODE.inf_obj_cod COLLATE cyrillic_general_ci_as');
  Query_RoadBegin.SQL.Add('       LEFT JOIN lis1..inf_obj_ROAD as inf_obj_ROAD ON inf_obj_ROAD.inf_obj_id = inf_obj_NODE.road_id');
  Query_RoadBegin.SQL.Add('WHERE	invoice_id = ' + IntToStr(invoice_id));
  Query_RoadBegin.Open;

  Query_RoadEnd := TADOQuery.Create(nil);
  Query_RoadEnd.Connection := connect_etran;
  Query_RoadEnd.SQL.Add('SELECT	inf_obj_ROAD.inf_obj_name, inf_obj_ROAD.inf_obj_cod ');
  Query_RoadEnd.SQL.Add('FROM	  invoice ');
  Query_RoadEnd.SQL.Add('       LEFT JOIN lis1..inf_obj_NODE as inf_obj_NODE ON invoice.invToStationCode COLLATE cyrillic_general_ci_as = inf_obj_NODE.inf_obj_cod COLLATE cyrillic_general_ci_as');
  Query_RoadEnd.SQL.Add('       LEFT JOIN lis1..inf_obj_ROAD as inf_obj_ROAD ON inf_obj_ROAD.inf_obj_id = inf_obj_NODE.road_id');
  Query_RoadEnd.SQL.Add('WHERE	invoice_id = ' + IntToStr(invoice_id));
  Query_RoadEnd.Open;

  Query_Act := TADOQuery.Create(nil);
  Query_Act.Connection := connect_etran;
  Query_Act.SQL.Add('SELECT	actCar.carNumber');
  Query_Act.SQL.Add('FROM	  act');
  Query_Act.SQL.Add('       INNER JOIN invoice ON act.actInvoiceID = invoice.invoiceID');
  Query_Act.SQL.Add('       INNER JOIN actCar ON act.act_id = actCar.act_id');
  Query_Act.SQL.Add('WHERE	actKindId = 0 AND invoice.invoice_id = ' + IntToStr(invoice_id));
  Query_Act.Open;

  Query_Doc := TADOQuery.Create(nil);
  Query_Doc.Connection := connect_etran;
  Query_Doc.SQL.Add('SELECT 1 cod, isnull(spcTranspClauseDesc,'''') + '' '' + isnull(spcCustomText,'''') txt FROM invSPC WHERE spcTranspClauseID = 1293 and invoice_id = ' + IntToStr(invoice_id));
  Query_Doc.SQL.Add('UNION');
  Query_Doc.SQL.Add('SELECT 2 cod, ''Договор № '' + isnull(docNumber,'''') + ''.'' FROM invDOC WHERE docTypeID = 1002 and invoice_id = ' + IntToStr(invoice_id));
  Query_Doc.SQL.Add('UNION');
  Query_Doc.SQL.Add('SELECT 3 cod, ''Срок доставки продлевается на '' + isnull(cast(dayCount as varchar(5)), '''') + '' сут.''  FROM invDOC WHERE docTypeID = 1002 and invoice_id = ' + IntToStr(invoice_id));
  Query_Doc.SQL.Add('ORDER BY 1');
  Query_Doc.Open;

  //--------------------------------------------


  ShowTextMessage('Подготовка накладной...', False);
  exWks.Range['Q1'].Value := 'УНО ' + Query_Invoice.FieldByName('invUniqueNumber').AsString;

  // Особые отметки
  //--------------------------------------------
  str_inv_spc := '';
  while not Query_Invoice_invSPC.Eof do begin
    str_inv_spc := str_inv_spc + Query_Invoice_invSPC.FieldByName('spcTranspClauseDesc').AsString + ';';
    Query_Invoice_invSPC.Next;
  end;
  exWks.Range['A2'].Value := str_inv_spc;
  //--------------------------------------------


  if not Query_Invoice.FieldByName('invDateReady').IsNull then begin
    exWks.Range['B67'].Value :=
        'ОАО "РЖД" ОКПО 00083262 ' + #10 +
        Query_RoadBegin.FieldByName('inf_obj_name').AsString + ' ж.д.' + #10 +
        FormatDateTime('dd.mm.yyyy', Query_Invoice.FieldByName('invDateReady').AsDateTime)  + ' ' + #10 +
        'МСК: ' + FormatDateTime('dd.mm.yyyy hh:nn', Query_Invoice.FieldByName('invDateReady').AsDateTime) + ' ' + #10 +
        Query_Invoice.FieldByName('invFromStationName').AsString + ' - ' + Query_Invoice.FieldByName('invFromStationCode').AsString;

    exWks.Range['B67:V74'].Borders[1].Color := -60396;
    exWks.Range['B67:V74'].Borders[2].Color := -60396;
    exWks.Range['B67:V74'].Borders[3].Color := -60396;
    exWks.Range['B67:V74'].Borders[4].Color := -60396;
  end;

  if not Query_Invoice.FieldByName('invDateArrive').IsNull then begin
    exWks.Range['Y67'].Value :=
        'ОАО "РЖД" ОКПО 00083262 ' + #10 +
        Query_RoadBegin.FieldByName('inf_obj_name').AsString + ' ж.д.' + #10 +
        FormatDateTime('dd.mm.yyyy', Query_Invoice.FieldByName('invDateArrive').AsDateTime)  + ' ' + #10 +
        'МСК: ' + FormatDateTime('dd.mm.yyyy hh:nn', Query_Invoice.FieldByName('invDateArrive').AsDateTime) + ' ' + #10 +
        Query_Invoice.FieldByName('invToStationName').AsString + ' - ' + Query_Invoice.FieldByName('invToStationCode').AsString;

    exWks.Range['Y67:AY74'].Borders[1].Color := -60396;
    exWks.Range['Y67:AY74'].Borders[2].Color := -60396;
    exWks.Range['Y67:AY74'].Borders[3].Color := -60396;
    exWks.Range['Y67:AY74'].Borders[4].Color := -60396;
  end;

  if not Query_Invoice.FieldByName('invDateNotification').IsNull then begin
    exWks.Range['BB67'].Value :=
       'ОАО "РЖД" ОКПО 00083262 ' + #10 +
        Query_RoadBegin.FieldByName('inf_obj_name').AsString + ' ж.д.' + #10 +
        FormatDateTime('dd.mm.yyyy', Query_Invoice.FieldByName('invDateNotification').AsDateTime)  + ' ' + #10 +
        'МСК: ' + FormatDateTime('dd.mm.yyyy hh:nn', Query_Invoice.FieldByName('invDateNotification').AsDateTime) + ' ' + #10 +
        Query_Invoice.FieldByName('invToStationName').AsString + ' - ' + Query_Invoice.FieldByName('invToStationCode').AsString;

    exWks.Range['BB67:CB74'].Borders[1].Color := -60396;
    exWks.Range['BB67:CB74'].Borders[2].Color := -60396;
    exWks.Range['BB67:CB74'].Borders[3].Color := -60396;
    exWks.Range['BB67:CB74'].Borders[4].Color := -60396;
  end;

  if not Query_Invoice.FieldByName('invDateDelivery').IsNull then begin
    exWks.Range['CE67'].Value :=
        'ОАО "РЖД" ОКПО 00083262 ' + #10 +
        Query_RoadBegin.FieldByName('inf_obj_name').AsString + ' ж.д.' + #10 +
        FormatDateTime('dd.mm.yyyy', Query_Invoice.FieldByName('invDateDelivery').AsDateTime)  + ' ' + #10 +
        'МСК: ' + FormatDateTime('dd.mm.yyyy hh:nn', Query_Invoice.FieldByName('invDateDelivery').AsDateTime) + ' ' + #10 +
        Query_Invoice.FieldByName('invToStationName').AsString + ' - ' + Query_Invoice.FieldByName('invToStationCode').AsString;

    exWks.Range['CE67:DB74'].Borders[1].Color := -60396;
    exWks.Range['CE67:DB74'].Borders[2].Color := -60396;
    exWks.Range['CE67:DB74'].Borders[3].Color := -60396;
    exWks.Range['CE67:DB74'].Borders[4].Color := -60396;
  end;


  exWks.Range['L4' ].Value := Query_Invoice.FieldByName('invClaimNumber').AsString;
  exWks.Range['AT4'].Value := FormatDateTime('dd.mm.yyyy',Query_Invoice.FieldByName('invDateLoad').AsDateTime);
  exWks.Range['BR4'].Value := '''' + Query_Invoice.FieldByName('invVizaNumber').AsString;
  exWks.Range['N5' ].Value := Query_Invoice.FieldByName('invVizaPerson').AsString;
  exWks.Range['A7' ].Value := Query_RoadBegin.FieldByName('inf_obj_name').AsString + ' ж.д. (' + Query_RoadBegin.FieldByName('inf_obj_cod').AsString + ')';
  exWks.Range['CH8'].Value := Query_Invoice.FieldByName('invNumber').AsString;

  case Query_Invoice.FieldByName('invDispKindID').AsInteger of
     1: exWks.Range['A10'].Value := 'ПPЯMOE' + ' сообщение ' + '(02)';
     2: exWks.Range['A10'].Value := 'MEЖДУHAPOДHOE (ЭKCПOPT В ДЗ)' + ' сообщение ' + '(06)';
     3: exWks.Range['A10'].Value := 'ИMПOPT (BBOЗ)' + ' сообщение ' + '(05)';
     4: exWks.Range['A10'].Value := 'CMEШAHHOE Ж.Д.BOДHOE' + ' сообщение ' + '(04)';
     5: exWks.Range['A10'].Value := 'MEЖДУHAPOДHOE - ТРАНЗИТ' + ' сообщение ' + '(10)';
     6: exWks.Range['A10'].Value := 'MEЖГOCУДAPCTBEHHOE СНГ (ЭKCПOPT В СНГ)' + ' сообщение ' + '(14)';
     7: exWks.Range['A10'].Value := 'HEПPЯMOE MEЖДУHAPOДHOE - BOДHOE НАЗНАЧЕНИЕ' + ' сообщение ' + '(07)';
     8: exWks.Range['A10'].Value := 'HEПPЯMOE MEЖДУHAPOДНОЕ' + ' сообщение ' + '(08)';
     9: exWks.Range['A10'].Value := 'MEЖДУHAPOДHOE - ВОДНОЕ' + ' сообщение ' + '(09)';
    10: exWks.Range['A10'].Value := 'MECTHOE' + ' сообщение ' + '(01)';
    11: exWks.Range['A10'].Value := 'ПPЯMOE Ж.Д. ДO HOBOСТРОЕК' + ' сообщение ' + '(11)';
    12: exWks.Range['A10'].Value := 'ПPЯMOE Ж.Д. C УЗKOЙ КОЛЕЕЙ' + ' сообщение ' + '(12)';
    13: exWks.Range['A10'].Value := 'ИМПОРТ ИЗ СНГ' + ' сообщение ' + '(15)';
    14: exWks.Range['A10'].Value := 'ИМПОРТ ИЗ ДЗ' + ' сообщение ' + '(16)';
    15: exWks.Range['A10'].Value := 'ТРАНЗИТ В СНГ' + ' сообщение ' + '(17)';
  end;

  exWks.Range['X11'].Value := FormatDateTime('dd.mm.yyyy',Query_Invoice.FieldByName('invDateExpire').AsDateTime);
  exWks.Range['A12'].Value := Query_Invoice.FieldByName('invSendSpeedName').AsString + ' скорость (' + Query_Invoice.FieldByName('invSendSpeedID').AsString + ')';
  exWks.Range['M13'].Value := 'ОАО "РЖД" код 00083262';

  exWks.Range['A15' ].Value := Query_Invoice.FieldByName('invFromStationName').AsString;
  exWks.Range['AQ15'].Value := '''' + Query_Invoice.FieldByName('invFromStationCode').AsString;
  exWks.Range['BB15'].Value := Query_Invoice.FieldByName('invToStationName').AsString;
  exWks.Range['CT15'].Value := '''' + Query_Invoice.FieldByName('invToStationCode').AsString;

  exWks.Range['A16' ].Value := Query_RoadBegin.FieldByName('inf_obj_name').AsString + ' ж.д.';
  exWks.Range['BB16'].Value := Query_RoadEnd.FieldByName('inf_obj_name').AsString + ' ж.д.';

  exWks.Range['BB18'].Value := Query_Invoice.FieldByName('invToLoadWay').AsString;

  exWks.Range['A20' ].Value := Query_Invoice.FieldByName('invSenderName').AsString + ' (' + Query_Invoice.FieldByName('invSenderTGNL').AsString + ')';
  exWks.Range['AQ20'].Value := '''' + Query_Invoice.FieldByName('invSenderOKPO').AsString;
  exWks.Range['A23' ].Value := Query_Invoice.FieldByName('invSenderAddress').AsString;

  exWks.Range['BB20'].Value := Query_Invoice.FieldByName('invRecipName').AsString + ' (' + Query_Invoice.FieldByName('invRecipTGNL').AsString + ')';;
  exWks.Range['CT20'].Value := '''' + Query_Invoice.FieldByName('invRecipOKPO').AsString;
  exWks.Range['BB23'].Value := Query_Invoice.FieldByName('invRecipAddress').AsString;


  exWks.Range['A25' ].Value := Query_Invoice.FieldByName('invPayerName').AsString;
  exWks.Range['AP25'].Value := '''' + Query_Invoice.FieldByName('invPayerCode').AsString;

  exWks.Range['BB25'].Value := Query_Invoice.FieldByName('invPayerName').AsString;
  exWks.Range['CS25'].Value := '''' + Query_Invoice.FieldByName('invPayerCode').AsString;

  ///////////////////////

  if Query_Invoice_Freight.FieldByName('freightExactName').AsString <> '' then
    exWks.Range['A28'].Value := Query_Invoice_Freight.FieldByName('freightExactName').AsString
  else
    exWks.Range['A28'].Value := Query_Invoice_Freight.FieldByName('freightName').AsString;

  exWks.Range['BK28'].Value := Query_Invoice_Freight.FieldByName('freightCode').AsString;
  if Length(Query_Invoice_Freight.FieldByName('freightPackTypeName').AsString) > 4 then begin
    exWks.Range['BZ28'].Value := LeftStr(Query_Invoice_Freight.FieldByName('freightPackTypeName').AsString,3);
  end else begin
    exWks.Range['BZ28'].Value := Query_Invoice_Freight.FieldByName('freightPackTypeName').AsString;
  end;
  exWks.Range['CG28'].Value := Query_Invoice_Freight.FieldByName('freightPackageCount').AsString;
  exWks.Range['CS28'].Value := Query_Invoice_Freight.FieldByName('freightWeight').AsString;

  if Query_Invoice_Fact3.FieldByName('carOwnerTypeID').AsInteger = 3 then
    exWks.Range['A30'].Value := 'Вагоны принадлежат перевозчику.'
  else
    exWks.Range['A30'].Value := 'Вагоны не принадлежат перевозчику. Собственник:' + Query_Invoice_Fact3.FieldByName('carOwnerName').AsString;


  exWks.Range['X33'].Value := GetSumScript_Weight(Query_Invoice_Freight.FieldByName('freightWeight').AsString) + ' кг.';
  exWks.Range['R34'].Value := Query_Invoice.FieldByName('invLoadAssetsName').AsString;
  exWks.Range['Y35'].Value := Query_Invoice.FieldByName('invLoadAssetsName').AsString;

  exWks.Range['BK34'].Value := Query_Invoice.FieldByName('invScaleTypeName').AsString + ' +/- ' + Query_Invoice.FieldByName('invScalePrecision').AsString + '%';


  exWks.Range['S38'].Value := Query_Invoice.FieldByName('invRespPerson').AsString;
  exWks.Range['S41'].Value := Query_Invoice.FieldByName('invDeplPerson').AsString;

  exWks.Range['AI39'].Value := Query_Invoice.FieldByName('invDepNormDocName').AsString;

  exWks.Range['AD44'].Value := '''' + Query_Invoice_Due.FieldByName('dueScheme').AsString;
  exWks.Range['AX44'].Value := '''' + Query_Invoice_Due.FieldByName('dueTarifCoef').AsString;
  exWks.Range['BV44'].Value := Query_Invoice.FieldByName('invSendKindName').AsString;
  exWks.Range['CM44'].Value := Query_Invoice_Due.FieldByName('distMinWay').AsString + ' км';

  exWks.Range['I45'].Value := '''' + Query_Invoice_Due.FieldByName('dueTarifDiscount').AsString + '%';
  exWks.Range['AN45'].Value := '''' + Query_Invoice.FieldByName('invIxTariffCode').AsString;
  exWks.Range['BF45'].Value := '''' + Query_Invoice_Due.FieldByName('dueFreightTarifClass').AsString;

  exWks.Range['A53'].Value := 'ИТОГО: ' +
              'вагонов ' + Query_Invoice_Fact2.FieldByName('cnt_vagon').AsString + ', ' +
              'нетто '   + Query_Invoice_Fact2.FieldByName('carWeightNet').AsString + ' кг, ' +
              'тара '    + Query_Invoice_Fact2.FieldByName('carWeightDep').AsString + ' кг, ' +
              'брутто '  + Query_Invoice_Fact2.FieldByName('carWeightGross').AsString + ' кг';

  exWks.Range['CR53'].Value := Query_Invoice_Fact2.FieldByName('dueAmount').AsString;
  exWks.Range['CR54'].Value := Query_Invoice_Fact2.FieldByName('dueAmount').AsString;

  if Query_Invoice_Fact2.FieldByName('dueAmount').AsString <> '' then begin
    exWks.Range['A56'].Value := GetSumScript_RUS(Query_Invoice_Fact2.FieldByName('dueAmount').AsString, 3);
  end;

  exWks.Range['G58' ].Value := Query_Invoice.FieldByName('invPayPlaceName').AsString;
  exWks.Range['BL58'].Value := Query_Invoice.FieldByName('invPayFormName').AsString;

  exWks.Range['L59'].Value := Query_Invoice.FieldByName('invGoodsCashierPost').AsString + ' ' + Query_Invoice.FieldByName('invGoodsCashier').AsString;

  if Query_Doc.RecordCount > 0 then begin
    str_inv_doc := '';
    while not Query_Doc.Eof do begin
      str_inv_doc := str_inv_doc + Query_Doc.FieldByName('txt').AsString + ' ';
      Query_Doc.Next;
    end;
    exWks.Range['B87'].Value := str_inv_doc;
  end;

  Query_Invoice_Fact.First;
  line_cnt := 51;
  while not Query_Invoice_Fact.Eof do begin
    exWks.Rows[IntToStr(line_cnt+1) + ':' + IntToStr(line_cnt+1)].Insert;
    exWks.Rows[IntToStr(line_cnt  ) + ':' + IntToStr(line_cnt  )].Copy;
    exWks.Rows[IntToStr(line_cnt+1) + ':' + IntToStr(line_cnt+1)].PasteSpecial(1);

    exWks.Range['A'  + IntToStr(line_cnt)].Value := Query_Invoice_Fact.FieldByName('carOrder').AsString;

    Q.SQL.Clear;
    Q.SQL.Add('SELECT TOP 1 * FROM lis1..inf_obj WHERE type_inf_id = 129 AND inf_obj_cod = ''' + Query_Invoice_Fact.FieldByName('carTypeCode').AsString + '''');
    Q.Open;

    if Q.RecordCount > 0 then begin
      exWks.Range['E'  + IntToStr(line_cnt)].Value := Q.FieldByName('inf_obj_name').AsString;
    end else begin
      exWks.Range['E'  + IntToStr(line_cnt)].Value := Query_Invoice_Fact.FieldByName('carTypeName').AsString;
    end;

    exWks.Range['J'  + IntToStr(line_cnt)].Value := Query_Invoice_Fact.FieldByName('carNumber').AsString;
    exWks.Range['S'  + IntToStr(line_cnt)].Value := '20';
    exWks.Range['V'  + IntToStr(line_cnt)].Value := Query_Invoice_Fact.FieldByName('carTonnage').AsString;
    exWks.Range['AA' + IntToStr(line_cnt)].Value := Query_Invoice_Fact.FieldByName('carAxles').AsString;
    exWks.Range['AD' + IntToStr(line_cnt)].Value := Query_Invoice_Fact.FieldByName('carWeightNet').AsString;
    exWks.Range['AK' + IntToStr(line_cnt)].Value := Query_Invoice_Fact.FieldByName('carWeightDep').AsString;
    exWks.Range['AU' + IntToStr(line_cnt)].Value := Query_Invoice_Fact.FieldByName('carWeightGross').AsString;
    exWks.Range['BI' + IntToStr(line_cnt)].Value := Query_Invoice_Fact.FieldByName('carVolume').AsString;
    exWks.Range['BM' + IntToStr(line_cnt)].Value := Query_Invoice_Fact.FieldByName('comment').AsString;
    exWks.Range['CR' + IntToStr(line_cnt)].Value := Query_Invoice_Fact.FieldByName('dueAmount').AsString;



    if Query_Invoice_Fact.FieldByName('comment_size').AsInteger > 1 then begin
      exWks.Rows[IntToStr(line_cnt) + ':' + IntToStr(line_cnt)].RowHeight := Query_Invoice_Fact.FieldByName('comment_size').AsInteger * 10.5;
    end;

    if Query_Act.Locate('carNumber', Query_Invoice_Fact.FieldByName('carNumber').AsString, []) then begin
      exWks.Range['A' + IntToStr(line_cnt) +':DC' + IntToStr(line_cnt)].Font.Strikethrough := True;
      exWks.Range['A' + IntToStr(line_cnt) +':DC' + IntToStr(line_cnt)].Font.Bold := False;
    end else begin
      exWks.Range['A' + IntToStr(line_cnt) +':DC' + IntToStr(line_cnt)].Font.Strikethrough := False;
      exWks.Range['A' + IntToStr(line_cnt) +':DC' + IntToStr(line_cnt)].Font.Bold := True;
    end;


    line_cnt := line_cnt + 1;
    Query_Invoice_Fact.Next;
  end;
  exWks.Rows[IntTostr(line_cnt)].Delete;


  Q.Free;
  Query_Invoice.Free;
  Query_Invoice_Freight.Free;
  Query_Invoice_Due.Free;
  Query_Invoice_Fact.Free;
  Query_Invoice_Fact2.Free;
  Query_Invoice_invSPC.Free;
  Query_RoadBegin.Free;
  Query_RoadEnd.Free;
  Query_Invoice_Fact3.Free;
  Query_Act.Free;
  Query_Doc.Free;
  exWks.Range['A1'].Select;
//  exApp.CutCopyMode := False;

//  exWks.PageSetup.FitToPagesWide := 1;
//  exWks.PageSetup.FitToPagesTall := 1;
  exWks.PageSetup.LeftMargin := exWks.Application.InchesToPoints(0.6);
  exWks.PageSetup.RightMargin := exWks.Application.InchesToPoints(0.3);
  exWks.PageSetup.TopMargin := exWks.Application.InchesToPoints(0.6);
  exWks.PageSetup.BottomMargin := exWks.Application.InchesToPoints(0.6);


//  exApp.Visible := True;
  ShowTextMessage();

//  VarClear(exWks); VarClear(exWkb); VarClear(exApp);
end;


procedure PrintInvoice_ETRAN29(invoice_id: integer; connect_etran: TADOConnection; var exWks: variant);
var
//  exApp, exWkb, exWks : Variant;
  i, line_cnt   : integer;
  Q : TADOQuery;
  Query_Invoice         : TADOQuery;
  Query_Invoice_Freight : TADOQuery;
  Query_Invoice_Due     : TADOQuery;
  Query_Invoice_Fact    : TADOQuery;
  Query_Invoice_Fact2   : TADOQuery;
  //--------------------------------------
  Query_Invoice_invSPC  : TADOQuery;
  Query_RoadBegin       : TADOQuery;
  Query_RoadEnd         : TADOQuery;
  Query_Invoice_Fact3   : TADOQuery;
  Query_Act             : TADOQuery;
  str_inv_spc : string;
  //--------------------------------------
begin

//  exApp := CreateOleObject('Excel.Application');
//  exWkb := exApp.Workbooks.Add(GetEtranDocBlob(connect_etran, 29, 9, True)); // 'ГУ-12.xls'
//  exWkb := exApp.ActiveWorkbook;
//  exWks := exWkb.WorkSheets[1];
//  exApp.Visible := True;
//  ShowTextMessage('Запуск сервера автоматизации...', False);

  Q := TADOQuery.Create(nil);
  Q.Connection := connect_etran;

  Query_Invoice := TADOQuery.Create(nil);
  Query_Invoice.Connection := connect_etran;
  Query_Invoice.SQL.Add('SELECT * FROM invoice WHERE invoice_id = ' + IntToStr(invoice_id));
  Query_Invoice.Open;

  Query_Invoice_Due := TADOQuery.Create(nil);
  Query_Invoice_Due.Connection := connect_etran;
  Query_Invoice_Due.SQL.Add('SELECT	dueScheme, dueTarifCoef, distMinWay, dueTarifDiscount, dueFreightTarifClass ');
  Query_Invoice_Due.SQL.Add('FROM	invDue WHERE invoice_id = ' + IntToStr(invoice_id));
  Query_Invoice_Due.SQL.Add('UNION');
  Query_Invoice_Due.SQL.Add('SELECT	dueScheme, dueTarifCoef, distMinWay, dueTarifDiscount, dueFreightTarifClass ');
  Query_Invoice_Due.SQL.Add('FROM	invDueArrive WHERE invoice_id = ' + IntToStr(invoice_id));
  Query_Invoice_Due.SQL.Add('ORDER BY distMinWay DESC');

  Query_Invoice_Due.Open;


  Query_Invoice_Freight := TADOQuery.Create(nil);
  Query_Invoice_Freight.Connection := connect_etran;
  Query_Invoice_Freight.SQL.Add('SELECT TOP 1 * FROM invFreight WHERE invoice_id = ' + IntToStr(invoice_id));
  Query_Invoice_Freight.Open;


  Query_Invoice_Fact := TADOQuery.Create(nil);
  Query_Invoice_Fact.Connection := connect_etran;
  Query_Invoice_Fact.SQL.Add('SELECT	carOrder, carTypeName, invCar.carNumber, carTonnage, carAxles, carWeightNet,  carWeightDep*100 as carWeightDep, carWeightGross, carVolume, dueAmount, carTypeCode,');
  Query_Invoice_Fact.SQL.Add('        ''собств '' + isnull(carOwnerName,'''') + isnull('' '' + carOwnerOKPO,'''') as comment, ');
  Query_Invoice_Fact.SQL.Add('        cast(round(cast(len(''собств '' + isnull(carOwnerName,'''') + isnull('' '' + carOwnerOKPO,'''')) as money)/19.0,0) as int) as comment_size, carPriorFreightName');
  Query_Invoice_Fact.SQL.Add('FROM	invCar left join (');
  Query_Invoice_Fact.SQL.Add('			SELECT	carNumber, sum(dueAmount) as dueAmount');
  Query_Invoice_Fact.SQL.Add('			FROM	invDue');
  Query_Invoice_Fact.SQL.Add('			WHERE	invoice_id = ' + IntToStr(invoice_id));
  Query_Invoice_Fact.SQL.Add('			GROUP BY carNumber) x1 on invCar.carNumber = x1.carNumber');
  Query_Invoice_Fact.SQL.Add('WHERE	invoice_id = ' + IntToStr(invoice_id));
  Query_Invoice_Fact.SQL.Add('ORDER BY carOrder');
  Query_Invoice_Fact.Open;


  Query_Invoice_Fact2 := TADOQuery.Create(nil);
  Query_Invoice_Fact2.Connection := connect_etran;
  Query_Invoice_Fact2.SQL.Add('SELECT count(1) cnt_vagon, sum(carWeightNet) as carWeightNet,  sum(carWeightDep*100) as carWeightDep, sum(carWeightGross) as carWeightGross, sum(dueAmount) as dueAmount');
  Query_Invoice_Fact2.SQL.Add('FROM	invCar left join (');
  Query_Invoice_Fact2.SQL.Add('			SELECT	carNumber, sum(dueAmount) as dueAmount');
  Query_Invoice_Fact2.SQL.Add('			FROM	invDue');
  Query_Invoice_Fact2.SQL.Add('			WHERE	invoice_id = ' + IntToStr(invoice_id));
  Query_Invoice_Fact2.SQL.Add('			GROUP BY carNumber) x1 on invCar.carNumber = x1.carNumber');
  Query_Invoice_Fact2.SQL.Add('WHERE	invoice_id = ' + IntToStr(invoice_id));
  Query_Invoice_Fact2.Open;


  Query_Invoice_Fact3 := TADOQuery.Create(nil);
  Query_Invoice_Fact3.Connection := connect_etran;
  Query_Invoice_Fact3.SQL.Add('SELECT TOP 1 carOwnerTypeID, carOwnerName FROM invCar WHERE invoice_id = ' + IntToStr(invoice_id));
  Query_Invoice_Fact3.Open;

  //--------------------------------------------
  Query_Invoice_invSPC := TADOQuery.Create(nil);
  Query_Invoice_invSPC.Connection := connect_etran;
  Query_Invoice_invSPC.SQL.Add('SELECT * FROM invSPC WHERE invoice_id = ' + IntToStr(invoice_id) + ' ORDER BY 1');
  Query_Invoice_invSPC.Open;

  Query_RoadBegin := TADOQuery.Create(nil);
  Query_RoadBegin.Connection := connect_etran;
  Query_RoadBegin.SQL.Add('SELECT	inf_obj_ROAD.inf_obj_name, inf_obj_ROAD.inf_obj_cod ');
  Query_RoadBegin.SQL.Add('FROM	  invoice ');
  Query_RoadBegin.SQL.Add('       LEFT JOIN lis1..inf_obj_NODE as inf_obj_NODE ON invoice.invFromStationCode COLLATE cyrillic_general_ci_as = inf_obj_NODE.inf_obj_cod COLLATE cyrillic_general_ci_as');
  Query_RoadBegin.SQL.Add('       LEFT JOIN lis1..inf_obj_ROAD as inf_obj_ROAD ON inf_obj_ROAD.inf_obj_id = inf_obj_NODE.road_id');
  Query_RoadBegin.SQL.Add('WHERE	invoice_id = ' + IntToStr(invoice_id));
  Query_RoadBegin.Open;

  Query_RoadEnd := TADOQuery.Create(nil);
  Query_RoadEnd.Connection := connect_etran;
  Query_RoadEnd.SQL.Add('SELECT	inf_obj_ROAD.inf_obj_name, inf_obj_ROAD.inf_obj_cod ');
  Query_RoadEnd.SQL.Add('FROM	  invoice ');
  Query_RoadEnd.SQL.Add('       LEFT JOIN lis1..inf_obj_NODE as inf_obj_NODE ON invoice.invToStationCode COLLATE cyrillic_general_ci_as = inf_obj_NODE.inf_obj_cod COLLATE cyrillic_general_ci_as');
  Query_RoadEnd.SQL.Add('       LEFT JOIN lis1..inf_obj_ROAD as inf_obj_ROAD ON inf_obj_ROAD.inf_obj_id = inf_obj_NODE.road_id');
  Query_RoadEnd.SQL.Add('WHERE	invoice_id = ' + IntToStr(invoice_id));
  Query_RoadEnd.Open;

  Query_Act := TADOQuery.Create(nil);
  Query_Act.Connection := connect_etran;
  Query_Act.SQL.Add('SELECT	actCar.carNumber');
  Query_Act.SQL.Add('FROM	  act');
  Query_Act.SQL.Add('       INNER JOIN invoice ON act.actInvoiceID = invoice.invoiceID');
  Query_Act.SQL.Add('       INNER JOIN actCar ON act.act_id = actCar.act_id');
  Query_Act.SQL.Add('WHERE	actKindId = 0 AND invoice.invoice_id = ' + IntToStr(invoice_id));
  Query_Act.Open;
  //--------------------------------------------


  ShowTextMessage('Подготовка накладной...', False);
//  exWks.Range['Q1'].Value := 'УНО ' + Query_Invoice.FieldByName('invUniqueNumber').AsString;
//
//  // Особые отметки
//  //--------------------------------------------
//  str_inv_spc := '';
//  while not Query_Invoice_invSPC.Eof do begin
//    str_inv_spc := str_inv_spc + Query_Invoice_invSPC.FieldByName('spcTranspClauseDesc').AsString + ';';
//    Query_Invoice_invSPC.Next;
//  end;
//  exWks.Range['A2'].Value := str_inv_spc;
//  //--------------------------------------------
//
//
//  exWks.Range['L4' ].Value := Query_Invoice.FieldByName('invClaimNumber').AsString;
//  exWks.Range['AT4'].Value := FormatDateTime('dd.mm.yyyy',Query_Invoice.FieldByName('invDateLoad').AsDateTime);
//  exWks.Range['BR4'].Value := '''' + Query_Invoice.FieldByName('invVizaNumber').AsString;
//  exWks.Range['N5' ].Value := Query_Invoice.FieldByName('invVizaPerson').AsString;

  exWks.Range['A2'].Value := 'Особые отметки: УНО ' + Query_Invoice.FieldByName('invUniqueNumber').AsString;
  exWks.Range['BF6'].Value := Query_Invoice.FieldByName('invNumber').AsString;
  exWks.Range['A6' ].Value := Query_RoadBegin.FieldByName('inf_obj_name').AsString + ' ж.д. (' + Query_RoadBegin.FieldByName('inf_obj_cod').AsString + ')';

  case Query_Invoice.FieldByName('invDispKindID').AsInteger of
     1: exWks.Range['AH8'].Value := 'ПPЯMOE' + ' сообщение ' + '(02)';
     2: exWks.Range['AH8'].Value := 'MEЖДУHAPOДHOE (ЭKCПOPT В ДЗ)' + ' сообщение ' + '(06)';
     3: exWks.Range['AH8'].Value := 'ИMПOPT (BBOЗ)' + ' сообщение ' + '(05)';
     4: exWks.Range['AH8'].Value := 'CMEШAHHOE Ж.Д.BOДHOE' + ' сообщение ' + '(04)';
     5: exWks.Range['AH8'].Value := 'MEЖДУHAPOДHOE - ТРАНЗИТ' + ' сообщение ' + '(10)';
     6: exWks.Range['AH8'].Value := 'MEЖГOCУДAPCTBEHHOE СНГ (ЭKCПOPT В СНГ)' + ' сообщение ' + '(14)';
     7: exWks.Range['AH8'].Value := 'HEПPЯMOE MEЖДУHAPOДHOE - BOДHOE НАЗНАЧЕНИЕ' + ' сообщение ' + '(07)';
     8: exWks.Range['AH8'].Value := 'HEПPЯMOE MEЖДУHAPOДНОЕ' + ' сообщение ' + '(08)';
     9: exWks.Range['AH8'].Value := 'MEЖДУHAPOДHOE - ВОДНОЕ' + ' сообщение ' + '(09)';
    10: exWks.Range['AH8'].Value := 'MECTHOE' + ' сообщение ' + '(01)';
    11: exWks.Range['AH8'].Value := 'ПPЯMOE Ж.Д. ДO HOBOСТРОЕК' + ' сообщение ' + '(11)';
    12: exWks.Range['AH8'].Value := 'ПPЯMOE Ж.Д. C УЗKOЙ КОЛЕЕЙ' + ' сообщение ' + '(12)';
    13: exWks.Range['AH8'].Value := 'ИМПОРТ ИЗ СНГ' + ' сообщение ' + '(15)';
    14: exWks.Range['AH8'].Value := 'ИМПОРТ ИЗ ДЗ' + ' сообщение ' + '(16)';
    15: exWks.Range['AH8'].Value := 'ТРАНЗИТ В СНГ' + ' сообщение ' + '(17)';
  end;

  exWks.Range['A10'].Value := 'Срок доставки истекает ' + FormatDateTime('dd.mm.yyyy',Query_Invoice.FieldByName('invDateExpire').AsDateTime);
  exWks.Range['A11'].Value := Query_Invoice.FieldByName('invSendSpeedName').AsString + ' скорость (' + Query_Invoice.FieldByName('invSendSpeedID').AsString + ')';
  exWks.Range['A12'].Value := 'Перевозчик ОАО "РЖД"';

  exWks.Range['A14'].Value := Query_Invoice.FieldByName('invFromStationName').AsString;
  exWks.Range['Z14'].Value := '''' + Query_Invoice.FieldByName('invFromStationCode').AsString;
  exWks.Range['AK14'].Value := Query_Invoice.FieldByName('invToStationName').AsString;
  exWks.Range['BJ14'].Value := '''' + Query_Invoice.FieldByName('invToStationCode').AsString;

  exWks.Range['A15' ].Value := Query_RoadBegin.FieldByName('inf_obj_name').AsString + ' ж.д.';
  exWks.Range['AK15'].Value := Query_RoadEnd.FieldByName('inf_obj_name').AsString + ' ж.д.';

//  exWks.Range['BB18'].Value := Query_Invoice.FieldByName('invToLoadWay').AsString;

  exWks.Range['A17' ].Value := Query_Invoice.FieldByName('invSenderName').AsString + ' (' + Query_Invoice.FieldByName('invSenderTGNL').AsString + ')';
  exWks.Range['Z17'].Value := '''' + Query_Invoice.FieldByName('invSenderOKPO').AsString;
  exWks.Range['A19' ].Value := Query_Invoice.FieldByName('invSenderAddress').AsString;

  exWks.Range['AK17'].Value := Query_Invoice.FieldByName('invRecipName').AsString + ' (' + Query_Invoice.FieldByName('invRecipTGNL').AsString + ')';;
  exWks.Range['BJ17'].Value := '''' + Query_Invoice.FieldByName('invRecipOKPO').AsString;
  exWks.Range['AK19'].Value := Query_Invoice.FieldByName('invRecipAddress').AsString;

  exWks.Range['A21' ].Value := Query_Invoice.FieldByName('invPayerName').AsString;
  exWks.Range['Z21' ].Value := '''' + Query_Invoice.FieldByName('invPayerCode').AsString;

  exWks.Range['AK21'].Value := Query_Invoice.FieldByName('invPayerName').AsString;
  exWks.Range['BJ21'].Value := '''' + Query_Invoice.FieldByName('invPayerCode').AsString;

  if Length(Query_Invoice.FieldByName('invSenderName').AsString) > Length(Query_Invoice.FieldByName('invRecipName').AsString) then
    AutoFitMergeCell(exWks.Range['A17'], 32.14)
  else
    AutoFitMergeCell(exWks.Range['AK17'], 32.14);

  if Length(Query_Invoice.FieldByName('invSenderAddress').AsString) > Length(Query_Invoice.FieldByName('invRecipAddress').AsString) then
    AutoFitMergeCell(exWks.Range['A19'], 45)
  else
    AutoFitMergeCell(exWks.Range['AK19'], 45);


  if Query_Invoice.FieldByName('invFRWSubCode').AsString <> '' then
    exWks.Range['AF22'].Value := 'Подкод (' + Query_Invoice.FieldByName('invFRWSubCode').AsString + ')';

  ///////////////////////

  if Query_Invoice_Freight.FieldByName('freightExactName').AsString <> '' then
    exWks.Range['A25'].Value := Query_Invoice_Freight.FieldByName('freightExactName').AsString
  else
    exWks.Range['A25'].Value := Query_Invoice_Freight.FieldByName('freightName').AsString;

  AutoFitMergeCell(exWks.Range['A25'], 45);

  exWks.Range['AJ25'].Value := Query_Invoice_Freight.FieldByName('freightCode').AsString;
  if Length(Query_Invoice_Freight.FieldByName('freightPackTypeName').AsString) > 4 then begin
    exWks.Range['AS25'].Value := LeftStr(Query_Invoice_Freight.FieldByName('freightPackTypeName').AsString,3);
  end else begin
    exWks.Range['AS25'].Value := Query_Invoice_Freight.FieldByName('freightPackTypeName').AsString;
  end;

  exWks.Range['AZ25'].Value := Query_Invoice_Freight.FieldByName('freightPackageCount').AsString;
  exWks.Range['BI25'].Value := Query_Invoice_Freight.FieldByName('freightWeight').AsString;



  exWks.Range['B26'].Value := Query_Invoice_Freight.FieldByName('freightAdditional').AsString;
  exWks.Range['A27'].Value := 'Порожний вагон из-под:' + Query_Invoice_Fact.FieldByName('carPriorFreightName').AsString;

  if Query_Invoice_invSPC.Locate('spcTranspClauseID', 839, []) then begin
    exWks.Range['A28'].Value := 'С промывкой на ' + Query_Invoice_invSPC.FieldByName('spcCustomText').AsString;
    exWks.Range['A29'].Value := 'Под промывку';
  end else begin
    exWks.Rows[28].RowHeight := 0.001;
    exWks.Rows[29].RowHeight := 0.001;
  end;

  if Query_Invoice_Fact3.FieldByName('carOwnerTypeID').AsInteger = 3 then
    exWks.Range['A30'].Value := 'Вагоны принадлежат перевозчику.'
  else
    exWks.Range['A30'].Value := 'Вагоны не принадлежат перевозчику. Собственник:' + Query_Invoice_Fact3.FieldByName('carOwnerName').AsString;


//  exWks.Range['X33'].Value := GetSumScript_Weight(Query_Invoice_Freight.FieldByName('freightWeight').AsString) + ' кг.';
//  exWks.Range['R34'].Value := Query_Invoice.FieldByName('invLoadAssetsName').AsString;
//  exWks.Range['Y35'].Value := Query_Invoice.FieldByName('invLoadAssetsName').AsString;
//  exWks.Range['BK34'].Value := Query_Invoice.FieldByName('invScaleTypeName').AsString + ' +/- ' + Query_Invoice.FieldByName('invScalePrecision').AsString + '%';
//  exWks.Range['S38'].Value := Query_Invoice.FieldByName('invRespPerson').AsString;
//  exWks.Range['S41'].Value := Query_Invoice.FieldByName('invDeplPerson').AsString;
//  exWks.Range['AI39'].Value := Query_Invoice.FieldByName('invDepNormDocName').AsString;

  exWks.Range['E33' ].Value := '''' + Query_Invoice_Due.FieldByName('dueScheme').AsString;
  exWks.Range['S33' ].Value := '''' + Query_Invoice_Due.FieldByName('dueTarifCoef').AsString;
  exWks.Range['AN33'].Value := Query_Invoice.FieldByName('invSendKindName').AsString;
  exWks.Range['BE33'].Value := Query_Invoice_Due.FieldByName('distMinWay').AsString + ' км';

  exWks.Range['E34' ].Value := '''' + Query_Invoice_Due.FieldByName('dueTarifDiscount').AsString + '%';
  exWks.Range['Z34' ].Value := '''' + Query_Invoice.FieldByName('invIxTariffCode').AsString;
  exWks.Range['AL34'].Value := '''' + Query_Invoice_Due.FieldByName('dueFreightTarifClass').AsString;

  exWks.Range['A42'].Value := 'ИТОГО: ' +
              'вагонов ' + Query_Invoice_Fact2.FieldByName('cnt_vagon').AsString + ', ' +
              'нетто '   + Query_Invoice_Fact2.FieldByName('carWeightNet').AsString + ' кг, ' +
              'тара '    + Query_Invoice_Fact2.FieldByName('carWeightDep').AsString + ' кг, ' +
              'брутто '  + Query_Invoice_Fact2.FieldByName('carWeightGross').AsString + ' кг';

  exWks.Range['BI42'].Value := Query_Invoice_Fact2.FieldByName('dueAmount').AsString;
  exWks.Range['BI43'].Value := Query_Invoice_Fact2.FieldByName('dueAmount').AsString;

  if Query_Invoice_Fact2.FieldByName('dueAmount').AsString <> '' then begin
    exWks.Range['A45'].Value := GetSumScript_RUS(Query_Invoice_Fact2.FieldByName('dueAmount').AsString, 3);
  end;

  exWks.Range['F46' ].Value := Query_Invoice.FieldByName('invPayPlaceName').AsString;
  exWks.Range['AQ46'].Value := Query_Invoice.FieldByName('invPayFormName').AsString;


  exWks.Range['BF49'].Value := 'Штемпель станции ' + #10 +
                               Query_Invoice.FieldByName('invFromStationName').AsString + ' ' + #10 +
                               FormatDateTime('dd.mm.yyyy', Query_Invoice.FieldByName('invDateReady').AsDateTime)  + ' ' + #10 +
                               '(МСК ' + FormatDateTime('dd.mm.yyyy hh:nn', Query_Invoice.FieldByName('invDateReady').AsDateTime) + ')';

  AutoFitMergeCell(exWks.Range['BF49'], 15);

//  if Query_Invoice.FieldByName('invECPSign').AsString = '1' then begin
//    exWks.Range['H47'].Value := 'Подписано ЭП ' +  Query_Invoice.FieldByName('invGoodsCashierPost').AsString + ' ' + Query_Invoice.FieldByName('invGoodsCashier').AsString
//  end else begin
    exWks.Range['H47'].Value := Query_Invoice.FieldByName('invGoodsCashierPost').AsString + ' ' + Query_Invoice.FieldByName('invGoodsCashier').AsString;
//  end;

  Query_Invoice_Fact.First;
  line_cnt := 40;
  while not Query_Invoice_Fact.Eof do begin
    exWks.Rows[IntToStr(line_cnt+1) + ':' + IntToStr(line_cnt+1)].Insert;
    exWks.Rows[IntToStr(line_cnt  ) + ':' + IntToStr(line_cnt  )].Copy;
    exWks.Rows[IntToStr(line_cnt+1) + ':' + IntToStr(line_cnt+1)].PasteSpecial(1);

    exWks.Range['A'  + IntToStr(line_cnt)].Value := Query_Invoice_Fact.FieldByName('carOrder').AsString;

    Q.SQL.Clear;
    Q.SQL.Add('SELECT TOP 1 * FROM ETRAN_NSI_INF_OBJ WHERE type_inf_id = 8 AND inf_obj_cod = ''' + Query_Invoice_Fact.FieldByName('carTypeCode').AsString + '''');
    Q.Open;

    if Q.RecordCount > 0 then begin
      exWks.Range['C'  + IntToStr(line_cnt)].Value := Q.FieldByName('inf_obj_name').AsString;
    end else begin
      exWks.Range['C'  + IntToStr(line_cnt)].Value := Query_Invoice_Fact.FieldByName('carTypeName').AsString;
    end;

    exWks.Range['F'  + IntToStr(line_cnt)].Value := Query_Invoice_Fact.FieldByName('carNumber').AsString;
    exWks.Range['M'  + IntToStr(line_cnt)].Value := '20';
    exWks.Range['O'  + IntToStr(line_cnt)].Value := Query_Invoice_Fact.FieldByName('carTonnage').AsString;
    exWks.Range['S'  + IntToStr(line_cnt)].Value := Query_Invoice_Fact.FieldByName('carAxles').AsString;
    exWks.Range['V'  + IntToStr(line_cnt)].Value := Query_Invoice_Fact.FieldByName('carWeightNet').AsString;
    exWks.Range['Z'  + IntToStr(line_cnt)].Value := Query_Invoice_Fact.FieldByName('carWeightDep').AsString;
    exWks.Range['AG' + IntToStr(line_cnt)].Value := Query_Invoice_Fact.FieldByName('carWeightGross').AsString;
    exWks.Range['AP' + IntToStr(line_cnt)].Value := Query_Invoice_Fact.FieldByName('carVolume').AsString;
    exWks.Range['AS' + IntToStr(line_cnt)].Value := Query_Invoice_Fact.FieldByName('comment').AsString;
    exWks.Range['BK' + IntToStr(line_cnt)].Value := Query_Invoice_Fact.FieldByName('dueAmount').AsString;

    if Query_Invoice_Fact.FieldByName('comment_size').AsInteger > 1 then begin
      exWks.Rows[IntToStr(line_cnt) + ':' + IntToStr(line_cnt)].RowHeight := Query_Invoice_Fact.FieldByName('comment_size').AsInteger * 8;
    end;

    line_cnt := line_cnt + 1;
    Query_Invoice_Fact.Next;
  end;
  exWks.Rows[IntTostr(line_cnt)].Delete;


  Q.Free;
  Query_Invoice.Free;
  Query_Invoice_Freight.Free;
  Query_Invoice_Due.Free;
  Query_Invoice_Fact.Free;
  Query_Invoice_Fact2.Free;
  Query_Invoice_invSPC.Free;
  Query_RoadBegin.Free;
  Query_RoadEnd.Free;
  Query_Invoice_Fact3.Free;
  Query_Act.Free;
//  exWks.Range['A1'].Select;
//  exApp.CutCopyMode := False;

  exWks.PageSetup.FitToPagesWide := 1;
  exWks.PageSetup.FitToPagesTall := 1;


//  exApp.Visible := True;
  ShowTextMessage();

//  VarClear(exWks); VarClear(exWkb); VarClear(exApp);
end;

procedure cxGridCopyCellsValue(cxGrid : TcxGridDBBandedTableView);
var str_cells : string;
            i : integer;
      clboard : TClipboard;
begin
  str_cells := '';

  for i := 0 to cxGrid.Controller.SelectedRecordCount - 1 do begin
    str_cells := str_cells + VarToStr(cxGrid.Controller.SelectedRecords[i].Values[cxGrid.VisibleColumns[cxGrid.Controller.FocusedItemIndex].Index]);
    str_cells := str_cells + #13#10;
  end;

  clboard := TClipboard.Create;
  clboard.AsText := str_cells;
  clboard.Free;
end;


end.
