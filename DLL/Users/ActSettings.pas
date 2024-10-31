unit ActSettings;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ADODB, Default, cxStyles, cxCustomData, cxGraphics, cxFilter,
  cxData, cxDataStorage, cxEdit, cxDBData, cxGridCustomTableView,
  cxGridTableView, cxGridBandedTableView, cxGridDBBandedTableView, cxControls,
  cxGridCustomView, cxClasses, cxGridLevel, cxGrid, ExtCtrls, StdCtrls, Menus,
  cxSplitter, cxPC, ImgList, ComCtrls, ToolWin, cxImageComboBox, cxContainer,
  cxLabel, cxCurrencyEdit, cxCheckBox, cxCalendar, cxPropertiesStore,
  dxGDIPlusClasses, cxImage, dxBar, cxLookAndFeelPainters,
  cxGroupBox, cxDBLookupComboBox, cxDropDownEdit, DBClient, StrUtils,
  cxRichEdit, cxColorComboBox, Buttons, cxLookupEdit, cxDBLookupEdit,
  cxTextEdit, cxMaskEdit, DateUtils, cxButtonEdit, cxLookAndFeels, cxMemo, dxBarBuiltInMenu, dxCore, cxDateUtils, cxNavigator, dxSkinsForm, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMetropolis, dxSkinMetropolisDark, dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus, dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008, dxSkinTheAsphaltWorld, dxSkinsDefaultPainters, dxSkinValentine, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue, dxSkinscxPCPainter, dxSkinOffice2016Colorful, dxSkinOffice2016Dark, dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark, dxSkinVisualStudio2013Light, cxButtons,
  dxSkinTheBezier, cxDataControllerConditionalFormattingRulesManagerDialog, dxDateRanges, dxSkinOffice2019Colorful, dxScrollbarAnnotations;

type
  TfmActSettings = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    cxLabel1: TcxLabel;
    cxTextEdit_ActNum: TcxTextEdit;
    cxLabel2: TcxLabel;
    cxDateEdit_ActDate: TcxDateEdit;
    cxCheckBox_AddVagon: TcxCheckBox;
    ADOConnActs: TADOConnection;
    Panel3: TPanel;
    Panel4: TPanel;
    cxLabel3: TcxLabel;
    cxLabel4: TcxLabel;
    cxLabel5: TcxLabel;
    cxLabel6: TcxLabel;
    cxLabel8: TcxLabel;
    cxTextEdit2: TcxButtonEdit;
    cxTextEdit4: TcxButtonEdit;
    cxTextEdit1: TcxButtonEdit;
    cxTextEdit3: TcxButtonEdit;
    Panel5: TPanel;
    Panel6: TPanel;
    cxCheckBox_Exchange: TcxCheckBox;
    Panel7: TPanel;
    cxLabel9: TcxLabel;
    cxLabel10: TcxLabel;
    cxLabel11: TcxLabel;
    cxLabel12: TcxLabel;
    cxLabel14: TcxLabel;
    cxTextEdit6: TcxButtonEdit;
    cxTextEdit8: TcxButtonEdit;
    cxTextEdit5: TcxButtonEdit;
    cxTextEdit7: TcxButtonEdit;
    Client_Columns: TClientDataSet;
    DS_Columns: TDataSource;
    Client_Columnsid: TAutoIncField;
    Client_Columnsrange: TStringField;
    Client_Columnscaption: TStringField;
    Client_Columnsset_always_visible: TBooleanField;
    Client_Columnsset_visible: TBooleanField;
    GroupBox1: TGroupBox;
    cxMemo1: TcxMemo;
    cxPageControl1: TcxPageControl;
    cxTabSheet1: TcxTabSheet;
    cxTabSheet2: TcxTabSheet;
    cxLabel15: TcxLabel;
    cxDateEdit1: TcxDateEdit;
    cxLabel16: TcxLabel;
    cxDateEdit2: TcxDateEdit;
    Panel8: TPanel;
    cxCheckBox_AddSign: TcxCheckBox;
    Panel9: TPanel;
    cxCheckBox_CopyReport: TcxCheckBox;
    Panel10: TPanel;
    cxCheckBox_RouteFromFact: TcxCheckBox;
    Panel11: TPanel;
    cxCheckBox_KargoFromFact: TcxCheckBox;
    Panel12: TPanel;
    cxCheckBox_WeightFromFact: TcxCheckBox;
    BitBtn3: TBitBtn;
    Query_FirmSelf: TADOQuery;
    DS_FirmSelf: TDataSource;
    cxLookupComboBox1: TcxLookupComboBox;
    cxLookupComboBox2: TcxLookupComboBox;
    cxLabel7: TcxLabel;
    cxLabel13: TcxLabel;
    cxLabel17: TcxLabel;
    cxLabel18: TcxLabel;
    Panel13: TPanel;
    cxLabel19: TcxLabel;
    cxLabel20: TcxLabel;
    cxLabel21: TcxLabel;
    cxButtonEdit1: TcxButtonEdit;
    cxLabel22: TcxLabel;
    cxButtonEdit2: TcxButtonEdit;
    cxCheckBox1: TcxCheckBox;
    cxCheckBox2: TcxCheckBox;
    cxLabel23: TcxLabel;
    cxLabel24: TcxLabel;
    cxLabel25: TcxLabel;
    cxLabel26: TcxLabel;
    cxButtonEdit3: TcxButtonEdit;
    cxButtonEdit4: TcxButtonEdit;
    cxCheckBox3: TcxCheckBox;
    cxCheckBox4: TcxCheckBox;
    Query_Type_Dir: TADOQuery;
    DS_Type_Dir: TDataSource;
    Query_Type_Buh: TADOQuery;
    DS_Type_Buh: TDataSource;
    cxLookupComboBox3: TcxLookupComboBox;
    cxLookupComboBox4: TcxLookupComboBox;
    cxLookupComboBox5: TcxLookupComboBox;
    cxLookupComboBox6: TcxLookupComboBox;
    Panel14: TPanel;
    cxCheckBox_OtherExchange: TcxCheckBox;
    Query_Currency: TADOQuery;
    DS_Currency: TDataSource;
    cxLookupComboBox7: TcxLookupComboBox;
    Panel15: TPanel;
    cxCheckBox_ScoreZFTOFromFactInc: TcxCheckBox;
    dxSkinController1: TdxSkinController;
    cxLookAndFeelController1: TcxLookAndFeelController;
    Panel16: TPanel;
    cxCheckBox_PrintComment: TcxCheckBox;
    Panel17: TPanel;
    cxLookupComboBox8: TcxLookupComboBox;
    Label1: TLabel;
    cxLabel27: TcxLabel;
    Panel18: TPanel;
    cxLabel28: TcxLabel;
    cxLabel30: TcxLabel;
    cxButtonEdit7: TcxButtonEdit;
    cxButtonEdit8: TcxButtonEdit;
    cxLabel32: TcxLabel;
    cxLookupComboBox9: TcxLookupComboBox;
    cxLabel33: TcxLabel;
    cxLabel34: TcxLabel;
    cxButton1: TcxButton;
    cxCheckBox_PPFromFact: TcxCheckBox;
    Panel19: TPanel;
    cxCheckBox_RecalcDistance: TcxCheckBox;
    cxTabSheet3: TcxTabSheet;
    Panel_Space_Tab2: TPanel;
    Panel20: TPanel;
    cxLabel29: TcxLabel;
    cxLabel35: TcxLabel;
    cxTextEdit9: TcxTextEdit;
    cxLabel31: TcxLabel;
    Panel21: TPanel;
    Panel22: TPanel;
    cxCheckBox_DateDelivery: TcxCheckBox;
    cxGrid1: TcxGrid;
    cxGrid1DBBandedTableView1: TcxGridDBBandedTableView;
    cxGrid1DBBandedTableView1id: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1range: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1caption: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1set_always_visible: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1set_visible: TcxGridDBBandedColumn;
    cxGrid1Level1: TcxGridLevel;
    cxButton2: TcxButton;
    cxButton3: TcxButton;
    procedure cxTextEdit1PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cxGrid1DBBandedTableView1CustomDrawCell(Sender: TcxCustomGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
    procedure cxGrid1DBBandedTableView1Editing(Sender: TcxCustomGridTableView; AItem: TcxCustomGridTableItem; var AAllow: Boolean);
    procedure cxDateEdit1PropertiesEditValueChanged(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure cxLookupComboBox1PropertiesEditValueChanged(Sender: TObject);
    procedure cxButtonEdit1PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure cxLookupComboBox3PropertiesEditValueChanged(Sender: TObject);
    procedure cxCheckBox_OtherExchangePropertiesEditValueChanged(Sender: TObject);
    procedure cxButtonEdit7PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure cxButtonEdit8PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure cxButton1Click(Sender: TObject);
    procedure cxCheckBox_RouteFromFactPropertiesEditValueChanged(Sender: TObject);
    procedure cxButton2Click(Sender: TObject);
  private
    Fusr_pwd  : PUser_pwd;
    Fset_sign : integer;
    Fstr_bargain_id : string;
    Facts_id : integer;
    Fparent_acts_id : integer;
    Facts_type_cod : integer;
    Fcontract_id: integer;
    Fcontract_agent_id: integer;

    // Данные по контракту
    // Выбор контактныл лиц производим в соответсвии с контрактом, хотя фирму можем выбрать другую
    // т.е. при печати актов, мы подменяем только наименование, оставляя все остальное как есть
    Ffirm_self_id : integer;
    Ffirm_customer_id : integer;

    procedure SetColumnsVisible (str_hide_columns: string);
  public
    constructor Create(AOwner: TApplication; usr_pwd: PUser_pwd; acts_type_cod, parent_acts_id: integer; str_bargain_id: string; date_begin, date_end: TDate; contract_id, contract_agent_id: integer; set_sign: integer; mask_checked: word; acts_comment: string; set_readonly : boolean);

    function GetCod      : Variant;
    function GetID       : Variant;
    function GetDate     : Variant;
    function GetSelf     : Variant;
    function GetCustomer : Variant;
    function GetCheckeds : Variant;
    function GetCurrency : Variant;
    function GetColumnsVisible : string;
    function GetFirmSelf : Variant;
    function GetDirBuhID : Variant;
    function GetTypeDirBuhID : Variant;
    function GetBaseAddition : Variant;
  end;

function CreateWndActSettings(AppHand: THandle; usr_pwd: PUser_pwd; acts_type_cod, parent_acts_id: integer; str_bargain_id: string; date_begin, date_end: TDate; contract_id, contract_agent_id: integer; set_sign: integer; mask_checked: word; acts_comment: string; set_readonly : boolean) : Variant;

var
  fmActSettings: TfmActSettings;

implementation
      uses Filter, Other, Raznoe;

{$R *.dfm}

function CreateWndActSettings(AppHand: THandle; usr_pwd: PUser_pwd; acts_type_cod, parent_acts_id: integer; str_bargain_id: string; date_begin, date_end: TDate; contract_id, contract_agent_id: integer; set_sign: integer; mask_checked: word; acts_comment: string; set_readonly : boolean) : Variant;
begin
  // set_sign (1 = RUS, 2 = ENG, 3 = RUS+ENG, -9 = без подписи)

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
  //                       [9] = set_printcomment; [10] - set_ppfromfact; [11] = set_recalc_distance
  //                       [12] = set_date_delivery)
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

  Application.Handle := AppHand;
  try
    fmActSettings := TfmActSettings.Create(Application, usr_pwd, acts_type_cod, parent_acts_id, str_bargain_id, date_begin, date_end, contract_id, contract_agent_id, set_sign, mask_checked, acts_comment, set_readonly);
    if fmActSettings.ShowModal = mrOk then
      result := VarArrayOf([
     { [0]}   acts_type_cod,
     { [1]}   fmActSettings.GetID,
     { [2]}   fmActSettings.GetCod,
     { [3]}   fmActSettings.GetDate,
     { [4]}   fmActSettings.GetSelf,
     { [5]}   fmActSettings.GetCustomer,
     { [6]}   fmActSettings.GetCheckeds,
     { [7]}   fmActSettings.GetCurrency,
     { [8]}   contract_id,
     { [9]}   contract_agent_id,
     {[10]}   fmActSettings.GetColumnsVisible,
     {[11]}   fmActSettings.cxMemo1.Text,
     {[12]}   fmActSettings.GetFirmSelf,
     {[13]}   fmActSettings.GetDirBuhID,
     {[14]}   fmActSettings.GetTypeDirBuhID,
     {[15]}   null,
     {[16]}   fmActSettings.GetBaseAddition
      ])
    else
      result := VarArrayOf([
     { [0]}   -9, // Не формируем = Отмена
     { [1]}   fmActSettings.GetID,
     { [2]}   fmActSettings.GetCod,
     { [3]}   fmActSettings.GetDate,
     { [4]}   fmActSettings.GetSelf,
     { [5]}   fmActSettings.GetCustomer,
     { [6]}   fmActSettings.GetCheckeds,
     { [7]}   fmActSettings.GetCurrency,
     { [8]}   contract_id,
     { [9]}   contract_agent_id,
     {[10]}   fmActSettings.GetColumnsVisible,
     {[11]}   fmActSettings.cxMemo1.Text,
     {[12]}   fmActSettings.GetFirmSelf,
     {[13]}   fmActSettings.GetDirBuhID,
     {[14]}   fmActSettings.GetTypeDirBuhID,
     {[15]}   null,
     {[16]}   fmActSettings.GetBaseAddition
      ]);
  finally
    fmActSettings.Free;
  end;
end;

procedure TfmActSettings.BitBtn3Click(Sender: TObject);
begin
  OpenHelpCHM(1003);
end;

constructor TfmActSettings.Create(AOwner: TApplication; usr_pwd: PUser_pwd; acts_type_cod, parent_acts_id: integer; str_bargain_id: string; date_begin, date_end: TDate; contract_id, contract_agent_id: integer; set_sign: integer; mask_checked: word; acts_comment: string; set_readonly : boolean);
var
  Query : TADOQuery;

  mask_checked_panel4 : word;

  height_tab1, height_tab2 : integer;
begin
  inherited Create(AOwner);
  Screen.Cursor := crHourglass;

  cxDateEdit1.Properties.OnEditValueChanged := nil;
  cxDateEdit2.Properties.OnEditValueChanged := nil;

  cxPageControl1.ActivePageIndex := 0;

  cxButton2.Visible := not set_readonly;

  Fusr_pwd := usr_pwd;
  Facts_id := -9;
  Fparent_acts_id := parent_acts_id;
  Fstr_bargain_id := str_bargain_id;
  Facts_type_cod := acts_type_cod;
  Fcontract_id := contract_id;
  Fcontract_agent_id := contract_agent_id;
  ADOConnActs.Connected := False;
  ADOConnActs.ConnectionString := 'Persist Security Info=True;Provider=SQLOLEDB.1;User ID=' + usr_pwd^.user_name + ';Password=' + usr_pwd^.user_pass + ';Initial Catalog=' + usr_pwd^.catalog + ';Data Source=' + usr_pwd^.server + ';';
  ADOConnActs.Connected := True;

  Query_FirmSelf.Open;
  Query_Type_Dir.Open;
  Query_Type_Dir.Locate('inf_obj_name', 'Руководитель', []);
  Query_Type_Buh.Open;
  Query_Type_Buh.Locate('inf_obj_name', 'Главный бухгалтер', []);
  Query_Currency.Open;
  cxLookupComboBox7.EditValue := 3;

  cxLookupComboBox3.EditValue := Query_Type_Dir.FieldByName('inf_obj_id').Value;
  cxLookupComboBox5.EditValue := Query_Type_Buh.FieldByName('inf_obj_id').Value;
  cxLookupComboBox4.EditValue := Query_Type_Dir.FieldByName('inf_obj_id').Value;
  cxLookupComboBox6.EditValue := Query_Type_Buh.FieldByName('inf_obj_id').Value;

  // Если корр. акт, то нельзя изменить номер и период
  if Fparent_acts_id <> -9 then begin
    cxTextEdit_ActNum.Enabled := False;
    cxDateEdit1.Enabled := False;
    cxDateEdit2.Enabled := False;
  end;

  mask_checked_panel4 := mask_checked
    and (not ACT_CHOOSE_BANK_ACCOUNT)
    and (not ACT_SET_BASE_ADDITION);
  // Добавлять вагоны
  if mask_checked_panel4 = 0 then begin
    cxTabSheet3.TabVisible := False;
  end else begin
    if (mask_checked and ACT_SET_ADDVAGON) = 0 then begin
      Panel5.Visible := False;
    end;
    if (mask_checked and ACT_SET_EXCHANGE) = 0 then begin
      Panel6.Visible := False;
    end;
    if (mask_checked and ACT_SET_ADDSIGN) = 0 then begin
      Panel8.Visible := False;
    end;
    if (mask_checked and ACT_SET_COPYREPORT) = 0 then begin
      Panel9.Visible := False;
    end;
    if (mask_checked and ACT_SET_ROUTEFROMFACT) = 0 then begin
      Panel10.Visible := False;
    end;
    // ПП из факта будет видно только если видна сама галочка + виден маршрут из факта
    if (mask_checked and ACT_SET_PP_FROMFACT) = 0 then begin
      cxCheckBox_PPFromFact.Visible := False;
    end;
    if (mask_checked and ACT_SET_KARGOFROMFACT) = 0 then begin
      Panel11.Visible := False;
    end;
    if (mask_checked and ACT_SET_WEIGHTFROMFACT) = 0 then begin
      Panel12.Visible := False;
    end;
    if (mask_checked and ACT_SET_OTHER_EXCHANGE) = 0 then begin
      Panel14.Visible := False;
    end;
    if (mask_checked and ACT_SET_SCOREZFTOFROMFACTINC) = 0 then begin
      Panel15.Visible := False;
    end;
    if (mask_checked and ACT_SET_PRINTCOMMENT) = 0 then begin
      Panel16.Visible := False;
    end;
    if (mask_checked and ACT_CHOOSE_EXCHANGE) = 0 then begin
      Panel17.Visible := False;
    end;
    if (mask_checked and ACT_SET_RECALC_DISTANCE) = 0 then begin
      Panel19.Visible := False;
    end;
    if (mask_checked and ACT_SET_DATEDELIVERY) = 0 then begin
      Panel22.Visible := False;
    end;

  end;

  // Подписанты // set_sign (1 = RUS, 2 = ENG, 3 = RUS+ENG, -9 = без подписи)
  Fset_sign := set_sign;
  if (set_sign <> 1) and (set_sign <> 3) then begin // RUS
    Panel3.Visible := False;
  end;
  if (set_sign <> 2) and (set_sign <> 3) then begin // ENG
    Panel7.Visible := False;
  end;

  // Банковские реквизиты
  if (mask_checked and ACT_CHOOSE_BANK_ACCOUNT) = 0 then begin
    Panel18.Visible := False;
  end;
  // Доп. Соглашение
  if (mask_checked and (ACT_SET_BASE_ADDITION or ACT_SET_COUNTRY_NAME)) = 0 then begin
    Panel20.Visible := False;
  end;
  if (mask_checked and ACT_SET_COUNTRY_NAME) <> 0 then begin
    cxLabel31.Visible := True;

    cxLabel29.Visible := False;
    cxLabel35.Visible := False;
  end;

  // Убираем лишнее пространство
  // минимальный размер вкладки 1
  height_tab1 := self.Height - GroupBox1.Height + 64;
  // минимальный размер вкладки 2 (только если вкладка видна)
  if cxTabSheet3.TabVisible then
    height_tab2 := self.Height - Panel_Space_Tab2.Height
  else
    height_tab2 := 0;
  // выбираем наибольший из минимальных
  if height_tab1 > height_tab2 then
    self.Constraints.MinHeight := height_tab1
  else
    self.Constraints.MinHeight := height_tab2;
  self.Height := self.Constraints.MinHeight;

  // Колонки акта
  Query := TADOQuery.Create(nil);
  Query.Connection := ADOConnActs;
  Query.SQL.Add('SELECT * FROM acts_columns WHERE acts_type_id = (SELECT TOP 1 inf_obj_id FROM inf_obj WHERE type_inf_id = -100 and inf_obj_cod = ''' + IntToStr(acts_type_cod) + ''') ORDER BY range');
  Query.Open;

  Client_Columns.CreateDataSet;
  Client_Columns.LogChanges := False;

  if Query.Eof then begin
    cxTabSheet2.TabVisible := False;
//    cxGroupBox1.Visible := False;
//    Panel7.Align := alBottom;
//    Panel3.Align := alBottom;
//    Panel1.Align := alClient;
//    self.Constraints.MinHeight := self.Constraints.MinHeight - cxGroupBox1.Height;
//    self.Height := self.Height - cxGroupBox1.Height;
  end else begin

    Client_Columns.DisableControls;
    while not Query.Eof do begin
      Client_Columns.Append;
      Client_Columns.FieldByName('range').Value               := Query.FieldByName('range').Value;
      Client_Columns.FieldByName('caption').Value             := Query.FieldByName('caption').Value;
      Client_Columns.FieldByName('set_always_visible').Value  := Query.FieldByName('set_always_visible').Value;
      Client_Columns.FieldByName('set_visible').Value         := Query.FieldByName('set_default_visible').Value;
      Client_Columns.Post;
      Query.Next;
    end;
    Client_Columns.First;
    Client_Columns.EnableControls;
  end;

  Query.Free;

  // Заполняем из договора нужными словами
  Query := TADOQuery.Create(nil);
  Query.Connection := ADOConnActs;
  Query.SQL.Add('SELECT firm_self_cod, firm_self_name_short, firm_self.firm_name_eng as firm_self_name_eng,');
  Query.SQL.Add('firm_customer_name_short, ISNULL(NULLIF(firm_customer.firm_name_eng, ''''), firm_customer_name_short) as firm_customer_name_eng,');
  Query.SQL.Add('view_contract.firm_customer, view_contract.firm_self, view_contract.currency_id, ');
  Query.SQL.Add('view_contract.contract_cod, view_contract.date_begin ');
  Query.SQL.Add('FROM view_contract');
  Query.SQL.Add('JOIN firm as firm_self ON view_contract.firm_self = firm_self.firm_id');
  Query.SQL.Add('JOIN firm as firm_customer ON view_contract.firm_customer = firm_customer.firm_id');
  Query.SQL.Add('WHERE contract_id = ' + IntToStr(contract_id));
  Query.Open;

  // Данные по контракту
  Ffirm_self_id := Query.FieldByName('firm_self').AsInteger;
  Ffirm_customer_id := Query.FieldByName('firm_customer').AsInteger;

  cxLookupComboBox8.EditValue := Query.FieldByName('currency_id').Value;

  cxLookupComboBox1.EditValue := Ffirm_self_id;
  cxLookupComboBox2.EditValue := Ffirm_self_id;
  cxLookupComboBox9.EditValue := Ffirm_self_id;

  cxLabel8.Caption := Query.FieldByName('firm_customer_name_short').AsString;// + ', ... ';
  cxLabel14.Caption := Query.FieldByName('firm_customer_name_eng').AsString;// + ', ... ';
  cxLabel24.Caption := Query.FieldByName('firm_customer_name_short').AsString;// + ', ... ';
  cxLabel34.Caption := Query.FieldByName('firm_customer_name_short').AsString;// + ', ... ';
  cxLabel35.Caption := 'Договором № ' + Query.FieldByName('contract_cod').AsString + ' от ' + FormatDateTime('dd.mm.yyyy г.', Query.FieldByName('date_begin').AsDateTime);

  Query.Free;

  Self.Caption := 'Параметры акта [Новый акт]';
  cxTabSheet1.Caption := 'Параметры акта [Новый акт]';
  cxTextEdit_ActNum.EditValue := null;
//  cxTextEdit_ActNum.Text := Query.FieldByName('cod').AsString;
//  Fold_acts_cod := cxTextEdit_ActNum.Text;
  cxDateEdit1.Date := date_begin;
  cxDateEdit2.Date := date_end;
  cxDateEdit_ActDate.Date := date_end;
  cxMemo1.Text := acts_comment;

//  Query.Free;

  // Заполняем полями из похожего акта
  Query := TADOQuery.Create(nil);
  Query.Connection := ADOConnActs;
  Query.SQL.Add('SELECT TOP 1 * FROM view_acts');
  Query.SQL.Add('WHERE contract_id = ' + IntToStr(contract_id));
  Query.SQL.Add('AND acts_type_cod = ''' + IntToStr(acts_type_cod) + '''');
  //Query.SQL.Add('AND acts_date <= ' + DateToSQL(acts_date));
  Query.SQL.Add('ORDER BY acts_id DESC');
  Query.Open;

  if not Query.Eof then begin
    cxTextEdit1.Text := Query.FieldByName('self_director').AsString;
    cxTextEdit2.Text := Query.FieldByName('self_basis').AsString;
    cxTextEdit3.Text := Query.FieldByName('customer_director').AsString;
    cxTextEdit4.Text := Query.FieldByName('customer_basis').AsString;
    cxTextEdit5.Text := Query.FieldByName('self_director_eng').AsString;
    cxTextEdit6.Text := Query.FieldByName('self_basis_eng').AsString;
    cxTextEdit7.Text := Query.FieldByName('customer_director_eng').AsString;
    cxTextEdit8.Text := Query.FieldByName('customer_basis_eng').AsString;
    cxButtonEdit7.Text := Query.FieldByName('self_bank').AsString;
    cxButtonEdit8.Text := Query.FieldByName('customer_bank').AsString;
    cxTextEdit9.Text := Query.FieldByName('base_addition').AsString;

    cxLookupComboBox8.EditValue := Query.FieldByName('acts_currency_id').Value;

    cxLookupComboBox1.EditValue := Query.FieldByName('firm_self_id').Value;
    cxLookupComboBox2.EditValue := Query.FieldByName('firm_self_id').Value;
    cxLookupComboBox9.EditValue := Query.FieldByName('firm_self_id').Value;

    cxLookupComboBox3.EditValue := Query.FieldByName('self_type_dir_id').Value;
    cxButtonEdit1.Tag   := Query.FieldByName('self_dir_id').AsInteger;
    cxButtonEdit1.Text  := Query.FieldByName('self_dir_name').AsString + iif(Query.FieldByName('self_dir_comment').AsString = '', '', ' (' + Query.FieldByName('self_dir_comment').AsString + ')');
    cxCheckBox1.Checked := Query.FieldByName('set_print_self_dir').AsBoolean;

    cxLookupComboBox5.EditValue := Query.FieldByName('self_type_buh_id').Value;
    cxButtonEdit2.Tag   := Query.FieldByName('self_buh_id').AsInteger;
    cxButtonEdit2.Text  := Query.FieldByName('self_buh_name').AsString + iif(Query.FieldByName('self_buh_comment').AsString = '', '', ' (' + Query.FieldByName('self_buh_comment').AsString + ')');
    cxCheckBox2.Checked := Query.FieldByName('set_print_self_buh').AsBoolean;

    cxLookupComboBox4.EditValue := Query.FieldByName('customer_type_dir_id').Value;
    cxButtonEdit3.Tag   := Query.FieldByName('customer_dir_id').AsInteger;
    cxButtonEdit3.Text  := Query.FieldByName('customer_dir_name').AsString + iif(Query.FieldByName('customer_dir_comment').AsString = '', '', ' (' + Query.FieldByName('customer_dir_comment').AsString + ')');
    cxCheckBox3.Checked := Query.FieldByName('set_print_customer_dir').AsBoolean;

    cxLookupComboBox6.EditValue := Query.FieldByName('customer_type_buh_id').Value;
    cxButtonEdit4.Tag   := Query.FieldByName('customer_buh_id').AsInteger;
    cxButtonEdit4.Text  := Query.FieldByName('customer_buh_name').AsString + iif(Query.FieldByName('customer_buh_comment').AsString = '', '', ' (' + Query.FieldByName('customer_buh_comment').AsString + ')');
    cxCheckBox4.Checked := Query.FieldByName('set_print_customer_buh').AsBoolean;


    cxCheckBox_AddVagon.Checked       := Query.FieldByName('set_addvagon').AsBoolean;
    cxCheckBox_Exchange.Checked       := Query.FieldByName('set_exchange').AsBoolean;
    cxCheckBox_AddSign.Checked        := Query.FieldByName('set_addsign').AsBoolean;
    cxCheckBox_CopyReport.Checked     := Query.FieldByName('set_copyreport').AsBoolean;
    cxCheckBox_RouteFromFact.Checked  := Query.FieldByName('set_routefromfact').AsBoolean;
    cxCheckBox_PPFromFact.Checked     := Query.FieldByName('set_ppfromfact').AsBoolean;
    cxCheckBox_KargoFromFact.Checked  := Query.FieldByName('set_kargofromfact').AsBoolean;
    cxCheckBox_WeightFromFact.Checked := Query.FieldByName('set_weightfromfact').AsBoolean;
    cxCheckBox_DateDelivery.Checked   := Query.FieldByName('set_datedelivery').AsBoolean;
    cxCheckBox_OtherExchange.Checked  := not Query.FieldByName('other_exchange_id').IsNull;
    if cxCheckBox_OtherExchange.Checked then
      cxLookupComboBox7.EditValue := Query.FieldByName('other_exchange_id').Value;
    cxCheckBox_ScoreZFTOFromFactInc.Checked := Query.FieldByName('set_scorezftofromfactinc').AsBoolean;
    cxCheckBox_PrintComment.Checked   := Query.FieldByName('set_printcomment').AsBoolean;
    if cxCheckBox_PrintComment.Checked then // если прим. печатается в акте, то перебиваем его из пред. акта
      cxMemo1.Text := Query.FieldByName('acts_comment').AsString;

    if not Query.FieldByName('str_hide_columns').IsNull then
      SetColumnsVisible(Query.FieldByName('str_hide_columns').AsString);
  end else begin
    // Нет похожих актов, заполняем контактами по умолчанию
    Query.Close;
    Query.SQL.Clear;
    Query.SQL.Add('SELECT TOP 1 firm_contact_id, firm_contact_name, firm_contact_comment, type_contact_name, type_contact_id,');
    Query.SQL.Add('type_contact_name + '' '' + firm_contact_name as [name], ISNULL(firm_contact_comment, ''Устав'') as [basis],');
    Query.SQL.Add('inf_obj_name_translit + '' '' + dbo.Translit(REPLACE(firm_contact_name, ''ё'', ''е'')) as [name_eng], REPLACE(REPLACE(REPLACE(ISNULL(firm_contact_comment, ''Statute''), ''доверенность'', ''power of attorney''), '' от '', '' d.d. ''), ''г.'', '''') as [basis_eng]');
    Query.SQL.Add('FROM view_firm_contact fc');
    Query.SQL.Add('JOIN INF_OBJ i ON type_contact_id = inf_obj_id');
    Query.SQL.Add('WHERE type_contact_cod BETWEEN ''20'' AND ''99'''); // SQL.Strings[5]
    Query.SQL.Add('AND firm_id = ' + IntToStr(Ffirm_self_id)); // SQL.Strings[6]
    Query.SQL.Add('AND ' + DateToSQL(cxDateEdit_ActDate.Date) + ' BETWEEN fc.date_begin AND ISNULL(fc.date_end, ' + DateToSQL(cxDateEdit_ActDate.Date) + ')');
    Query.SQL.Add('ORDER BY set_default DESC, type_contact_cod, firm_contact_name');
    Query.Open;

    cxTextEdit1.Text := Query.FieldByName('name').AsString;
    cxTextEdit2.Text := Query.FieldByName('basis').AsString;
    cxTextEdit5.Text := Query.FieldByName('name_eng').AsString;
    cxTextEdit6.Text := Query.FieldByName('basis_eng').AsString;
    cxLookupComboBox3.EditValue := Query.FieldByName('type_contact_id').Value;
    cxButtonEdit1.Tag   := Query.FieldByName('firm_contact_id').AsInteger;
    cxButtonEdit1.Text  := Query.FieldByName('firm_contact_name').AsString + iif(Query.FieldByName('firm_contact_comment').AsString = '', '', ' (' + Query.FieldByName('firm_contact_comment').AsString + ')');

    Query.Close;
    Query.SQL.Strings[5] := 'WHERE type_contact_cod IN (''23'', ''24'')';
    Query.Open;
    cxLookupComboBox5.EditValue := Query.FieldByName('type_contact_id').Value;
    cxButtonEdit2.Tag   := Query.FieldByName('firm_contact_id').AsInteger;
    cxButtonEdit2.Text  := Query.FieldByName('firm_contact_name').AsString + iif(Query.FieldByName('firm_contact_comment').AsString = '', '', ' (' + Query.FieldByName('firm_contact_comment').AsString + ')');

    Query.Close;
    Query.SQL.Strings[5] := 'WHERE type_contact_cod BETWEEN ''20'' AND ''99''';
    Query.SQL.Strings[6] := 'AND firm_id = ' + IntToStr(Ffirm_customer_id);
    Query.Open;

    cxTextEdit3.Text := Query.FieldByName('name').AsString;
    cxTextEdit4.Text := Query.FieldByName('basis').AsString;
    cxTextEdit7.Text := Query.FieldByName('name_eng').AsString;
    cxTextEdit8.Text := Query.FieldByName('basis_eng').AsString;
    cxLookupComboBox4.EditValue := Query.FieldByName('type_contact_id').Value;
    cxButtonEdit3.Tag   := Query.FieldByName('firm_contact_id').AsInteger;
    cxButtonEdit3.Text  := Query.FieldByName('firm_contact_name').AsString + iif(Query.FieldByName('firm_contact_comment').AsString = '', '', ' (' + Query.FieldByName('firm_contact_comment').AsString + ')');

    Query.Close;
    Query.SQL.Strings[5] := 'WHERE type_contact_cod IN (''23'', ''24'')';
    Query.Open;
    cxLookupComboBox6.EditValue := Query.FieldByName('type_contact_id').Value;
    cxButtonEdit4.Tag   := Query.FieldByName('firm_contact_id').AsInteger;
    cxButtonEdit4.Text  := Query.FieldByName('firm_contact_name').AsString + iif(Query.FieldByName('firm_contact_comment').AsString = '', '', ' (' + Query.FieldByName('firm_contact_comment').AsString + ')');
  end;

  Query.Free;

  if parent_acts_id > 0 then begin // id родителя для Корректировочного
    // Заполняем полями из акта
    Query := TADOQuery.Create(nil);
    Query.Connection := ADOConnActs;
    Query.SQL.Add('SELECT * FROM view_acts');
    Query.SQL.Add('WHERE acts_id = ' + IntToStr(parent_acts_id));
    Query.Open;

    cxTextEdit_ActNum.EditValue := Query.FieldByName('acts_cod').Value;
//    Fold_acts_cod := 'номер акта задается в ручном режиме - т.к. у корр. номер совпадает с основным';
    cxDateEdit1.Date := Query.FieldByName('date_begin').AsDateTime;
    cxDateEdit2.Date := Query.FieldByName('date_end').AsDateTime;
    cxDateEdit_ActDate.Date := Query.FieldByName('acts_date').AsDateTime;
    cxMemo1.Text := Query.FieldByName('acts_comment').AsString;

    cxLookupComboBox8.EditValue := Query.FieldByName('acts_currency_id').Value;

    cxLookupComboBox1.EditValue := Query.FieldByName('firm_self_id').Value;
    cxLookupComboBox2.EditValue := Query.FieldByName('firm_self_id').Value;
    cxLookupComboBox9.EditValue := Query.FieldByName('firm_self_id').Value;

    cxTextEdit1.Text := Query.FieldByName('self_director').AsString;
    cxTextEdit2.Text := Query.FieldByName('self_basis').AsString;
    cxTextEdit3.Text := Query.FieldByName('customer_director').AsString;
    cxTextEdit4.Text := Query.FieldByName('customer_basis').AsString;
    cxTextEdit5.Text := Query.FieldByName('self_director_eng').AsString;
    cxTextEdit6.Text := Query.FieldByName('self_basis_eng').AsString;
    cxTextEdit7.Text := Query.FieldByName('customer_director_eng').AsString;
    cxTextEdit8.Text := Query.FieldByName('customer_basis_eng').AsString;
    cxButtonEdit7.Text := Query.FieldByName('self_bank').AsString;
    cxButtonEdit8.Text := Query.FieldByName('customer_bank').AsString;
    cxTextEdit9.Text := Query.FieldByName('base_addition').AsString;

    cxLookupComboBox3.EditValue := Query.FieldByName('self_type_dir_id').Value;
    cxButtonEdit1.Tag   := Query.FieldByName('self_dir_id').AsInteger;
    cxButtonEdit1.Text  := Query.FieldByName('self_dir_name').AsString + iif(Query.FieldByName('self_dir_comment').AsString = '', '', ' (' + Query.FieldByName('self_dir_comment').AsString + ')');
    cxCheckBox1.Checked := Query.FieldByName('set_print_self_dir').AsBoolean;

    cxLookupComboBox5.EditValue := Query.FieldByName('self_type_buh_id').Value;
    cxButtonEdit2.Tag   := Query.FieldByName('self_buh_id').AsInteger;
    cxButtonEdit2.Text  := Query.FieldByName('self_buh_name').AsString + iif(Query.FieldByName('self_buh_comment').AsString = '', '', ' (' + Query.FieldByName('self_buh_comment').AsString + ')');
    cxCheckBox2.Checked := Query.FieldByName('set_print_self_buh').AsBoolean;

    cxLookupComboBox4.EditValue := Query.FieldByName('customer_type_dir_id').Value;
    cxButtonEdit3.Tag   := Query.FieldByName('customer_dir_id').AsInteger;
    cxButtonEdit3.Text  := Query.FieldByName('customer_dir_name').AsString + iif(Query.FieldByName('customer_dir_comment').AsString = '', '', ' (' + Query.FieldByName('customer_dir_comment').AsString + ')');
    cxCheckBox3.Checked := Query.FieldByName('set_print_customer_dir').AsBoolean;

    cxLookupComboBox6.EditValue := Query.FieldByName('customer_type_buh_id').Value;
    cxButtonEdit4.Tag   := Query.FieldByName('customer_buh_id').AsInteger;
    cxButtonEdit4.Text  := Query.FieldByName('customer_buh_name').AsString + iif(Query.FieldByName('customer_buh_comment').AsString = '', '', ' (' + Query.FieldByName('customer_buh_comment').AsString + ')');
    cxCheckBox4.Checked := Query.FieldByName('set_print_customer_buh').AsBoolean;

    cxCheckBox_AddVagon.Checked       := Query.FieldByName('set_addvagon').AsBoolean;
    cxCheckBox_Exchange.Checked       := Query.FieldByName('set_exchange').AsBoolean;
    cxCheckBox_AddSign.Checked        := Query.FieldByName('set_addsign').AsBoolean;
    cxCheckBox_CopyReport.Checked     := Query.FieldByName('set_copyreport').AsBoolean;
    cxCheckBox_RouteFromFact.Checked  := Query.FieldByName('set_routefromfact').AsBoolean;
    cxCheckBox_PPFromFact.Checked     := Query.FieldByName('set_ppfromfact').AsBoolean;
    cxCheckBox_KargoFromFact.Checked  := Query.FieldByName('set_kargofromfact').AsBoolean;
    cxCheckBox_WeightFromFact.Checked := Query.FieldByName('set_weightfromfact').AsBoolean;
    cxCheckBox_DateDelivery.Checked   := Query.FieldByName('set_datedelivery').AsBoolean;
    cxCheckBox_OtherExchange.Checked  := not Query.FieldByName('other_exchange_id').IsNull;
    cxCheckBox_ScoreZFTOFromFactInc.Checked := Query.FieldByName('set_scorezftofromfactinc').AsBoolean;
    cxCheckBox_PrintComment.Checked   := Query.FieldByName('set_printcomment').AsBoolean;
    if cxCheckBox_OtherExchange.Checked then
      cxLookupComboBox7.EditValue := Query.FieldByName('other_exchange_id').Value;

    if not Query.FieldByName('str_hide_columns').IsNull then
      SetColumnsVisible(Query.FieldByName('str_hide_columns').AsString);

    Query.Free;
  end;

  // Поиск акта для перезаписи
  cxDateEdit1.Properties.OnEditValueChanged := cxDateEdit1PropertiesEditValueChanged;
  cxDateEdit2.Properties.OnEditValueChanged := cxDateEdit1PropertiesEditValueChanged;
  cxDateEdit1PropertiesEditValueChanged(nil);

  // Акт создан на основании Акта Аренды - номер и дату влзъмем из аренды
  // только для нового акта
  if cxTextEdit_ActNum.EditValue = null then begin
    Query := TADOQuery.Create(nil);
    Query.Connection := ADOConnActs;
    Query.SQL.Add('SELECT TOP 1 * FROM view_vagon_arenda_acts');
    Query.SQL.Add('WHERE vagon_arenda_acts_id IN (' + Fstr_bargain_id + ')');
    Query.SQL.Add('ORDER BY vagon_arenda_acts_id DESC');
    Query.Open;

    if not Query.Eof then begin
      cxTextEdit_ActNum.EditValue := Query.FieldByName('vagon_arenda_acts_cod').Value;
      cxDateEdit_ActDate.EditValue := Query.FieldByName('vagon_arenda_acts_date').Value;
    end;

    Query.Free;
  end;

  Screen.Cursor := crDefault;
end;

procedure TfmActSettings.SetColumnsVisible (str_hide_columns: string);
var TS : TStringList;
    i : integer;
    r1, r2: string;
begin
  TS := TStringList.Create;
  TS.Delimiter := ';';
  TS.DelimitedText := str_hide_columns;

  Client_Columns.DisableControls;
  Client_Columns.First;
  while not Client_Columns.Eof do begin
    Client_Columns.Edit;
    Client_Columns.FieldByName('set_visible').Value := True;
    Client_Columns.Post;
    Client_Columns.Next;
  end;
  for i := 0 to TS.Count - 1 do begin
    r1 := TS.Strings[i];
    r2 := LeftStr(r1, Length(r1) div 2);
    if Client_Columns.Locate('range', r1, []) or Client_Columns.Locate('range', r2, []) then
      if not Client_Columns.FieldByName('set_always_visible').AsBoolean then begin
        Client_Columns.Edit;
        Client_Columns.FieldByName('set_visible').Value := False;
        Client_Columns.Post;
      end;
  end;
  Client_Columns.First;
  Client_Columns.EnableControls;
end;

function TfmActSettings.GetID : Variant;
begin
    result := VarArrayOf([Facts_id, Fparent_acts_id]);
end;

function TfmActSettings.GetDate : Variant;
begin
    result := VarArrayOf([cxDateEdit_ActDate.Date, cxDateEdit1.Date, cxDateEdit2.Date]);
end;

function TfmActSettings.GetCod : Variant;
begin
  Result := cxTextEdit_ActNum.EditValue;
//  if (Facts_id = -9) and (Fold_acts_cod = cxTextEdit_ActNum.Text) then
//    result := NULL
//  else
//    result := cxTextEdit_ActNum.Text;
end;

function TfmActSettings.GetSelf : Variant;
begin
  result := VarArrayOf([
    cxTextEdit1.Text, cxTextEdit2.Text, cxTextEdit1.Text + ', действующего на основании ' + cxTextEdit2.Text,
    cxTextEdit5.Text, cxTextEdit6.Text, cxTextEdit5.Text + ', acting on the basis of ' + cxTextEdit6.Text,
    cxButtonEdit7.Text
  ]);
end;

function TfmActSettings.GetBaseAddition : Variant;
begin
  Result := cxTextEdit9.Text;
end;

function TfmActSettings.GetTypeDirBuhID : Variant;
begin
  result := VarArrayOf([
    cxLookupComboBox3.EditValue, cxLookupComboBox3.Text, Query_Type_Dir.Lookup('inf_obj_id', cxLookupComboBox3.EditValue, 'inf_obj_eng'),
    cxLookupComboBox5.EditValue, cxLookupComboBox5.Text, Query_Type_Buh.Lookup('inf_obj_id', cxLookupComboBox5.EditValue, 'inf_obj_eng'),
    cxLookupComboBox4.EditValue, cxLookupComboBox4.Text, Query_Type_Dir.Lookup('inf_obj_id', cxLookupComboBox4.EditValue, 'inf_obj_eng'),
    cxLookupComboBox6.EditValue, cxLookupComboBox6.Text, Query_Type_Buh.Lookup('inf_obj_id', cxLookupComboBox6.EditValue, 'inf_obj_eng')
  ]);
end;

function TfmActSettings.GetDirBuhID : Variant;
begin
  result := VarArrayOf([
    iif(cxButtonEdit1.Tag = 0, null, cxButtonEdit1.Tag), cxButtonEdit1.Text, cxCheckBox1.Checked,
    iif(cxButtonEdit2.Tag = 0, null, cxButtonEdit2.Tag), cxButtonEdit2.Text, cxCheckBox2.Checked,
    iif(cxButtonEdit3.Tag = 0, null, cxButtonEdit3.Tag), cxButtonEdit3.Text, cxCheckBox3.Checked,
    iif(cxButtonEdit4.Tag = 0, null, cxButtonEdit4.Tag), cxButtonEdit4.Text, cxCheckBox4.Checked
  ]);
end;

function TfmActSettings.GetFirmSelf : Variant;
begin
  result := VarArrayOf([
    cxLookupComboBox1.EditValue,
    cxLookupComboBox1.EditText,
    cxLookupComboBox2.EditText
  ]);
end;

function TfmActSettings.GetCustomer : Variant;
begin
  result := VarArrayOf([
    cxTextEdit3.Text, cxTextEdit4.Text, cxTextEdit3.Text + ', действующего на основании ' + cxTextEdit4.Text,
    cxTextEdit7.Text, cxTextEdit8.Text, cxTextEdit7.Text + ', acting on the basis of ' + cxTextEdit8.Text,
    cxButtonEdit8.Text
  ]);
end;

function TfmActSettings.GetCurrency : Variant;
var Query : TADOQuery;
begin
  if (not Panel17.Visible) OR (not cxTabSheet3.Visible) OR (not Panel4.Visible) then begin
    // валюта договора
    Query := TADOQuery.Create(nil);
    Query.Connection := ADOConnActs;
    Query.SQL.Add('SELECT * FROM view_contract');
    Query.SQL.Add('WHERE contract_id = ' + IntToStr(Fcontract_id));
    Query.Open;

    Result := VarArrayOf([Query.FieldByName('currency_id').AsInteger, Query.FieldByName('brief_name').AsString]);

    Query.Free;
  end else begin
    // выбор валюты
    Query_Currency.Locate('currency_id', cxLookupComboBox8.EditValue, []);

    Result := VarArrayOf([Query_Currency.FieldByName('currency_id').AsInteger, Query_Currency.FieldByName('brief_name').AsString]);
  end;
end;

function TfmActSettings.GetColumnsVisible : string;
var ret : string;
begin
  result := '';
  Client_Columns.DisableControls;
  Client_Columns.First;
  while not Client_Columns.Eof do begin
    if not Client_Columns.FieldByName('set_visible').AsBoolean then begin
      ret := Client_Columns.FieldByName('range').AsString;
      if Pos(':', ret) <= 0 then ret := ret + ':' + ret;
      if Result <> '' then Result := Result + ';';
      Result := Result + ret;
    end;
    Client_Columns.Next;
  end;
  Client_Columns.EnableControls;
end;

function TfmActSettings.GetCheckeds : Variant;
begin
  result := VarArrayOf([
    cxCheckBox_AddVagon.Checked,
    cxCheckBox_Exchange.Checked,
    cxCheckBox_AddSign.Checked,
    cxCheckBox_CopyReport.Checked,
    cxCheckBox_RouteFromFact.Checked,
    cxCheckBox_KargoFromFact.Checked,
    cxCheckBox_WeightFromFact.Checked,
    iif(cxCheckBox_OtherExchange.Checked, cxLookupComboBox7.EditValue, null),
    cxCheckBox_ScoreZFTOFromFactInc.Checked,
    cxCheckBox_PrintComment.Checked,
    cxCheckBox_PPFromFact.Checked,
    cxCheckBox_RecalcDistance.Checked,
    cxCheckBox_DateDelivery.Checked
  ]);
end;

procedure TfmActSettings.cxButton1Click(Sender: TObject);
var Query : TADOQuery;
begin
    Query := TADOQuery.Create(nil);
    Query.Connection := ADOConnActs;
    Query.SQL.Add('SELECT max(date_from_to) as date_acts');
    Query.SQL.Add('FROM fact');
    Query.SQL.Add('WHERE bargain_id IN (' + Fstr_bargain_id + ')');
    Query.SQL.Add('AND set_main = 1');
    Query.SQL.Add('AND date_from_to IS NOT NULL');
    Query.Open;

    if Query.FieldByName('date_acts').IsNull then
      Application.MessageBox('Нет вагонов'#10'Дата акта останется без изменений', 'Внимание', MB_ICONEXCLAMATION or MB_OK)
    else
      cxDateEdit_ActDate.EditValue := Query.FieldByName('date_acts').Value;

    Query.Close;
    Query.Free;
end;

procedure TfmActSettings.cxButton2Click(Sender: TObject);
var SP : TADOStoredProc;
begin
  // проверка даты
  if cxDateEdit_ActDate.EditValue = null then begin
    Application.MessageBox(PWideChar('Не указана дата акта '), 'Внимание', MB_OK or MB_ICONERROR);
    self.ModalResult := mrNone;
    exit;
  end;

  // проверка подписантов
  if not CheckSigner(Ffirm_self_id, cxButtonEdit1.Tag, cxButtonEdit2.Tag, cxDateEdit_ActDate.EditValue, ADOConnActs) then begin
    self.ModalResult := mrNone;
    exit;
  end;


  // Проведем проверку возможности сохранения акта
  SP := TADOStoredProc.Create(nil);
  SP.Connection := ADOConnActs;
  SP.ProcedureName := 'sp_acts_modify';
  SP.Parameters.Refresh;
  SP.Parameters.ParamByName('@type_action').Value := 99;
  SP.Parameters.ParamByName('@acts_id').Value := iif(Facts_id = -9, null, Facts_id);
  try
    SP.ExecProc
  except on E: Exception do begin
    if Application.MessageBox(PWideChar(E.Message + #10#10 + 'Открыть ранее сохраненный Акт?'), 'Внимание', MB_YESNO or MB_ICONERROR) = ID_YES then
      GetActsView(Facts_id, ADOConnActs, True);
    self.ModalResult := mrNone;
  end;
  end;
  SP.Free;
end;

procedure TfmActSettings.cxButtonEdit1PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
var
  cxLookCB : TcxLookupComboBox;
  Query : TADOQuery;
  d1 : TDate;
begin
  if Sender = cxButtonEdit1 then cxLookCB := cxLookupComboBox3;
  if Sender = cxButtonEdit2 then cxLookCB := cxLookupComboBox5;
  if Sender = cxButtonEdit3 then cxLookCB := cxLookupComboBox4;
  if Sender = cxButtonEdit4 then cxLookCB := cxLookupComboBox6;

  case AButtonIndex of
    0 : begin
          Query := TADOQuery.Create(nil);
          Query.Connection := ADOConnActs;

          if cxDateEdit_ActDate.EditValue <> null then
            d1 := cxDateEdit_ActDate.EditValue
          else
            d1 := Date;

          Query.SQL.Add('SELECT firm_contact_id, firm_contact_name, firm_contact_comment, type_contact_name, type_contact_id, date_begin, date_end');
          Query.SQL.Add('FROM view_firm_contact');
          if (Sender = cxButtonEdit1) or (Sender = cxButtonEdit3) then
            Query.SQL.Add('WHERE type_contact_cod BETWEEN ''20'' AND ''99'' AND type_contact_cod NOT IN (''23'', ''24'')')
          else
            Query.SQL.Add('WHERE type_contact_cod IN (''23'', ''24'')');
          if (Sender = cxButtonEdit1) or (Sender = cxButtonEdit2) then
            Query.SQL.Add('AND firm_id = ' + IntToStr(Ffirm_self_id))
          else
            Query.SQL.Add('AND firm_id = ' + IntToStr(Ffirm_customer_id));
          Query.SQL.Add('AND ' + DateToSQL(d1) + ' BETWEEN date_begin AND ISNULL(date_end, ' + DateToSQL(d1) + ')');
          Query.SQL.Add('ORDER BY set_default DESC, type_contact_cod, firm_contact_name');
          Query.Open;

          fmFilter := TfmFilter.Create(0, Query, 'firm_contact_id', 'type_contact_name', 'firm_contact_name');
          fmFilter._SetFirmContact4ActsSetting := True;
          if fmFilter.ShowModal = mrOk then begin
            Query.Locate('firm_contact_id', fmFilter.GetId, []);
            cxLookCB.EditValue := Query.FieldByName('type_contact_id').Value;
            TcxButtonEdit(Sender).Tag := Query.FieldByName('firm_contact_id').AsInteger;
            TcxButtonEdit(Sender).Text := Query.FieldByName('firm_contact_name').AsString;
            if Query.FieldByName('firm_contact_comment').AsString <> '' then
              TcxButtonEdit(Sender).Text := TcxButtonEdit(Sender).Text + ' (' + Query.FieldByName('firm_contact_comment').AsString + ')'
          end;

          fmFilter.Free;
          Query.Free;
        end;
    1 : begin
            cxLookCB.EditValue := null;
            TcxButtonEdit(Sender).Tag := 0;
            TcxButtonEdit(Sender).EditValue := null;
        end;
  end;
end;

procedure TfmActSettings.cxButtonEdit7PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
var
  Query : TADOQuery;
  d1    : TDate;
begin
  case AButtonIndex of
    0 : begin
          if cxDateEdit_ActDate.EditValue <> null then
            d1 := cxDateEdit_ActDate.EditValue
          else
            d1 := Date;

          Query := TADOQuery.Create(nil);
          Query.Connection := ADOConnActs;

          Query.SQL.Add('SELECT invoice_header_id, header_description, header_bank = REPLACE(REPLACE(CAST(header_bank as varchar(max)), CHAR(13), ''''), CHAR(10) , '' '') FROM view_invoice_header_rights ');
          Query.SQL.Add('WHERE ' + DateToSQL(d1) + ' BETWEEN date_begin AND ISNULL(date_end, ' + DateToSQL(d1) + ')');
          Query.SQL.Add('ORDER BY invoice_header_id');
          Query.Open;

          fmFilter := TfmFilter.Create(0, Query, 'invoice_header_id', 'header_description', 'header_bank');
          fmFilter._SetInviceHeaderChoose := True;
          if fmFilter.ShowModal = mrOk then begin
            cxButtonEdit7.Text := fmFilter.GetName;
          end;

          fmFilter.Free;
          Query.Free;
        end;
  end;
end;

procedure TfmActSettings.cxButtonEdit8PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
var
  Query : TADOQuery;
  d1 : TDate;
begin
  case AButtonIndex of
    0 : begin
          if cxDateEdit_ActDate.EditValue <> null then
            d1 := cxDateEdit_ActDate.EditValue
          else
            d1 := Date;

          Query := TADOQuery.Create(nil);
          Query.Connection := ADOConnActs;

          Query.SQL.Add('SELECT firm_contact_id, type_contact_name, firm_contact_name = REPLACE(REPLACE(firm_contact_name, CHAR(13), ''''), CHAR(10) , '' '') FROM view_firm_contact ');
          Query.SQL.Add('WHERE type_contact_cod = ''01'' ');
          Query.SQL.Add('AND firm_id = ' + IntToStr(Ffirm_customer_id));
          Query.SQL.Add('AND ' + DateToSQL(d1) + ' BETWEEN date_begin AND ISNULL(date_end, ' + DateToSQL(d1) + ')');
          Query.SQL.Add('ORDER BY set_default DESC, type_contact_cod, firm_contact_name');
          Query.Open;

          fmFilter := TfmFilter.Create(0, Query, 'firm_contact_id', 'type_contact_name', 'firm_contact_name');
          fmFilter._SetFirmContactBankAccount := True;
          if fmFilter.ShowModal = mrOk then begin
            cxButtonEdit8.Text := fmFilter.GetName;
          end;

          fmFilter.Free;
          Query.Free;
        end;
  end;
end;

procedure TfmActSettings.cxCheckBox_OtherExchangePropertiesEditValueChanged(Sender: TObject);
begin
  cxLookupComboBox7.Enabled := cxCheckBox_OtherExchange.Checked;
end;

procedure TfmActSettings.cxCheckBox_RouteFromFactPropertiesEditValueChanged(Sender: TObject);
begin
  cxCheckBox_PPFromFact.Enabled := cxCheckBox_RouteFromFact.Checked;
end;

procedure TfmActSettings.cxDateEdit1PropertiesEditValueChanged(Sender: TObject);
var Query : TADOQuery;
begin
  Screen.Cursor := crHourglass;
  // Поиск похожего акта, а случае нахождения - перезапись
  // Проверка сохранения акта
  Query := TADOQuery.Create(nil);
  Query.Connection := ADOConnActs;
  Query.SQL.Add('SELECT TOP 1 b.bargain_id, a.* FROM view_acts a LEFT JOIN acts_bargain b ON a.acts_id = b.acts_id');
  Query.SQL.Add('WHERE acts_type_cod = ''' + IntToStr(Facts_type_cod) + '''');    // Тип акта
  Query.SQL.Add('AND contract_id = ' + IntToStr(Fcontract_id));                   // Договор
  Query.SQL.Add('AND date_begin = ' + DateToSQL(cxDateEdit1.Date));                    // Период акта
  Query.SQL.Add('AND date_end = ' + DateToSQL(cxDateEdit2.Date));                        // Период акта
  Query.SQL.Add('AND ISNULL(bargain_id, -9) IN (-9, ' + Fstr_bargain_id + ')');   // Хотя бы одина перевозка совпадает с имеющимися
  Query.SQL.Add('AND ISNULL(contract_agent_id, -9) = ' + IntToStr(Fcontract_agent_id));
                        // Договор с подрядчиком - для возможности формирования одного и того же акта
                        // для разных подрядчиков
  Query.Open;

  if (Query.Eof) then begin
//    if ((Facts_id <> -9) or (Fold_acts_cod = cxTextEdit_ActNum.Text)) then begin
      // Не важно, что было до этого - просто все перезапишем
      // Новый акт
//      Query.Close;
//      Query.SQL.Clear;
//      Query.SQL.Add('SELECT num, cod');
//      Query.SQL.Add('FROM dbo.GetCodByFirm(NULL, (SELECT TOP 1 firm_self FROM view_contract WHERE contract_id = ' + IntToStr(Fcontract_id) + '), 10, ' + DateToSQL(cxDateEdit1.Date) + ')');
//      Query.Open;

      Self.Caption := 'Параметры акта [Новый акт]';
      cxTabSheet1.Caption := 'Параметры акта [Новый акт]';
      Facts_id := -9;
      cxLookupComboBox1.EditValue := Ffirm_self_id;
      cxLookupComboBox2.EditValue := Ffirm_self_id;
      cxLookupComboBox9.EditValue := Ffirm_self_id;

      if Fparent_acts_id <= 0 then begin
        // только если акт не корр
        cxTextEdit_ActNum.EditValue := null;
//        cxTextEdit_ActNum.Text := Query.FieldByName('cod').AsString;
//        Fold_acts_cod := cxTextEdit_ActNum.Text;
      end;
//    end;
  end else begin
    if (Facts_id <> Query.FieldByName('acts_id').AsInteger) then begin
      // Заполняем данными старого акта + Указываем, что мы переписываем акт

      Self.Caption := 'Параметры акта [Переформировать акт № ' + Query.FieldByName('acts_cod').AsString + ']';
      cxTabSheet1.Caption := 'Параметры акта [Переформировать акт № ' + Query.FieldByName('acts_cod').AsString + ']';
      Facts_id := Query.FieldByName('acts_id').AsInteger;
      cxTextEdit_ActNum.EditValue := null;
//      cxTextEdit_ActNum.Text := Query.FieldByName('acts_cod').AsString;
//      Fold_acts_cod := cxTextEdit_ActNum.Text;
      cxDateEdit_ActDate.Date := Query.FieldByName('acts_date').AsDateTime;
      cxMemo1.Text := Query.FieldByName('acts_comment').AsString;

      cxLookupComboBox8.EditValue := Query.FieldByName('acts_currency_id').Value;

      cxLookupComboBox1.EditValue := Query.FieldByName('firm_self_id').Value;
      cxLookupComboBox2.EditValue := Query.FieldByName('firm_self_id').Value;
      cxLookupComboBox9.EditValue := Query.FieldByName('firm_self_id').Value;

      cxTextEdit1.Text := Query.FieldByName('self_director').AsString;
      cxTextEdit2.Text := Query.FieldByName('self_basis').AsString;
      cxTextEdit3.Text := Query.FieldByName('customer_director').AsString;
      cxTextEdit4.Text := Query.FieldByName('customer_basis').AsString;
      cxTextEdit5.Text := Query.FieldByName('self_director_eng').AsString;
      cxTextEdit6.Text := Query.FieldByName('self_basis_eng').AsString;
      cxTextEdit7.Text := Query.FieldByName('customer_director_eng').AsString;
      cxTextEdit8.Text := Query.FieldByName('customer_basis_eng').AsString;
      cxButtonEdit7.Text := Query.FieldByName('self_bank').AsString;
      cxButtonEdit8.Text := Query.FieldByName('customer_bank').AsString;
      cxTextEdit9.Text := Query.FieldByName('base_addition').AsString;

      cxLookupComboBox3.EditValue := Query.FieldByName('self_type_dir_id').Value;
      cxButtonEdit1.Tag   := Query.FieldByName('self_dir_id').AsInteger;
      cxButtonEdit1.Text  := Query.FieldByName('self_dir_name').AsString + iif(Query.FieldByName('self_dir_comment').AsString = '', '', ' (' + Query.FieldByName('self_dir_comment').AsString + ')');
      cxCheckBox1.Checked := Query.FieldByName('set_print_self_dir').AsBoolean;

      cxLookupComboBox5.EditValue := Query.FieldByName('self_type_buh_id').Value;
      cxButtonEdit2.Tag   := Query.FieldByName('self_buh_id').AsInteger;
      cxButtonEdit2.Text  := Query.FieldByName('self_buh_name').AsString + iif(Query.FieldByName('self_buh_comment').AsString = '', '', ' (' + Query.FieldByName('self_buh_comment').AsString + ')');
      cxCheckBox2.Checked := Query.FieldByName('set_print_self_buh').AsBoolean;

      cxLookupComboBox4.EditValue := Query.FieldByName('customer_type_dir_id').Value;
      cxButtonEdit3.Tag   := Query.FieldByName('customer_dir_id').AsInteger;
      cxButtonEdit3.Text  := Query.FieldByName('customer_dir_name').AsString + iif(Query.FieldByName('customer_dir_comment').AsString = '', '', ' (' + Query.FieldByName('customer_dir_comment').AsString + ')');
      cxCheckBox3.Checked := Query.FieldByName('set_print_customer_dir').AsBoolean;

      cxLookupComboBox6.EditValue := Query.FieldByName('customer_type_buh_id').Value;
      cxButtonEdit4.Tag   := Query.FieldByName('customer_buh_id').AsInteger;
      cxButtonEdit4.Text  := Query.FieldByName('customer_buh_name').AsString + iif(Query.FieldByName('customer_buh_comment').AsString = '', '', ' (' + Query.FieldByName('customer_buh_comment').AsString + ')');
      cxCheckBox4.Checked := Query.FieldByName('set_print_customer_buh').AsBoolean;

      cxCheckBox_AddVagon.Checked       := Query.FieldByName('set_addvagon').AsBoolean;
      cxCheckBox_Exchange.Checked       := Query.FieldByName('set_exchange').AsBoolean;
      cxCheckBox_AddSign.Checked        := Query.FieldByName('set_addsign').AsBoolean;
      cxCheckBox_CopyReport.Checked     := Query.FieldByName('set_copyreport').AsBoolean;
      cxCheckBox_RouteFromFact.Checked  := Query.FieldByName('set_routefromfact').AsBoolean;
      cxCheckBox_PPFromFact.Checked     := Query.FieldByName('set_ppfromfact').AsBoolean;
      cxCheckBox_KargoFromFact.Checked  := Query.FieldByName('set_kargofromfact').AsBoolean;
      cxCheckBox_WeightFromFact.Checked := Query.FieldByName('set_weightfromfact').AsBoolean;
      cxCheckBox_OtherExchange.Checked  := not Query.FieldByName('other_exchange_id').IsNull;
      cxCheckBox_ScoreZFTOFromFactInc.Checked := Query.FieldByName('set_scorezftofromfactinc').AsBoolean;
      cxCheckBox_PrintComment.Checked   := Query.FieldByName('set_printcomment').AsBoolean;
      if cxCheckBox_OtherExchange.Checked then
        cxLookupComboBox7.EditValue := Query.FieldByName('other_exchange_id').Value;

      if not Query.FieldByName('str_hide_columns').IsNull then
        SetColumnsVisible(Query.FieldByName('str_hide_columns').AsString);
    end;
  end;

  Query.Free;
  Screen.Cursor := crDefault;
end;

procedure TfmActSettings.cxGrid1DBBandedTableView1CustomDrawCell(Sender: TcxCustomGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin

  if (AViewInfo.GridRecord.Values[cxGrid1DBBandedTableView1set_always_visible.Index] = True) then begin
//    ACanvas.Font.Color := clGrayText;
//    ACanvas.Font.Style := [fsItalic];
      ACanvas.Brush.Color := clBtnFace;
  end;

  if AViewInfo.GridRecord.Selected or AViewInfo.GridRecord.Focused then begin
    ACanvas.Brush.Color := clNavy;
    ACanvas.Font.Color := clWhite;
    if AViewInfo.Focused then ACanvas.Brush.Color := clBlue;
  end;

end;

procedure TfmActSettings.cxGrid1DBBandedTableView1Editing(Sender: TcxCustomGridTableView; AItem: TcxCustomGridTableItem; var AAllow: Boolean);
begin
  AAllow := not cxGrid1DBBandedTableView1set_always_visible.DataBinding.Field.AsBoolean;
end;

procedure TfmActSettings.cxLookupComboBox1PropertiesEditValueChanged(Sender: TObject);
begin
  cxLookupComboBox1.EditValue := TcxLookupComboBox(Sender).EditValue;
  cxLookupComboBox2.EditValue := TcxLookupComboBox(Sender).EditValue;
  cxLookupComboBox9.EditValue := TcxLookupComboBox(Sender).EditValue;
  Ffirm_self_id := TcxLookupComboBox(Sender).EditValue;

  cxLabel20.Caption := TcxLookupComboBox(Sender).Text;
end;

procedure TfmActSettings.cxLookupComboBox3PropertiesEditValueChanged(Sender: TObject);
begin
  if TcxLookupComboBox(Sender).EditValue = null then
    TcxLookupComboBox(Sender).EditValue := TcxLookupComboBox(Sender).Properties.DataController.DataSet.FieldByName('inf_obj_id').Value;
end;

procedure TfmActSettings.cxTextEdit1PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
var
  Query : TADOQuery;
begin
  case AButtonIndex of
    0 : begin
          Query := TADOQuery.Create(nil);
          Query.Connection := ADOConnActs;

          Query.SQL.Add('SELECT firm_contact_id, firm_contact_name, firm_contact_comment, type_contact_name, fc.date_begin, fc.date_end,');
          Query.SQL.Add('type_contact_name + '' '' + firm_contact_name as [name], ISNULL(firm_contact_comment, ''Устав'') as [basis],');
          Query.SQL.Add('inf_obj_name_translit + '' '' + dbo.Translit(REPLACE(firm_contact_name, ''ё'', ''е'')) as [name_eng], REPLACE(REPLACE(REPLACE(ISNULL(firm_contact_comment, ''Statute''), ''доверенность'', ''power of attorney''), '' от '', '' d.d. ''), ''г.'', '''') as [basis_eng]');
          Query.SQL.Add('FROM view_firm_contact fc');
          Query.SQL.Add('JOIN INF_OBJ i ON type_contact_id = inf_obj_id');
          Query.SQL.Add('WHERE type_contact_cod BETWEEN ''20'' AND ''99''');
          case TComponent(Sender).Tag of
            0 : Query.SQL.Add('AND firm_id = ' + IntToStr(cxLookupComboBox1.EditValue));
            1 : Query.SQL.Add('AND firm_id = ' + IntToStr(Ffirm_customer_id));
          end;
          Query.SQL.Add('AND ' + DateToSQL(cxDateEdit_ActDate.Date) + ' BETWEEN fc.date_begin AND ISNULL(fc.date_end, ' + DateToSQL(cxDateEdit_ActDate.Date) + ')');
          Query.SQL.Add('ORDER BY set_default DESC, type_contact_cod, firm_contact_name');
          Query.Open;

          fmFilter := TfmFilter.Create(0, Query, 'firm_contact_id', 'type_contact_name', 'firm_contact_name');
          fmFilter._SetFirmContact4ActsSetting := True;
          if fmFilter.ShowModal = mrOk then begin
            Query.Locate('firm_contact_id', fmFilter.GetId, []);
            case TComponent(Sender).Tag of
              0 : begin
                    cxTextEdit1.Text := Query.FieldByName('name').AsString;
                    cxTextEdit2.Text := Query.FieldByName('basis').AsString;
                    cxTextEdit5.Text := Query.FieldByName('name_eng').AsString;
                    cxTextEdit6.Text := Query.FieldByName('basis_eng').AsString;
                  end;
              1 : begin
                    cxTextEdit3.Text := Query.FieldByName('name').AsString;
                    cxTextEdit4.Text := Query.FieldByName('basis').AsString;
                    cxTextEdit7.Text := Query.FieldByName('name_eng').AsString;
                    cxTextEdit8.Text := Query.FieldByName('basis_eng').AsString;
                  end;
            end;
          end;

          fmFilter.Free;
          Query.Free;
        end;
  end;
end;

procedure TfmActSettings.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

end.
