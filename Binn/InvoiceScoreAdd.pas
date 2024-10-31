unit InvoiceScoreAdd;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs, Default,
  StdCtrls, ExtCtrls, cxPropertiesStore, cxControls, cxContainer, cxEdit, cxTextEdit, ComCtrls, Mask, Db, ADODB, cxMaskEdit,
  cxButtonEdit, cxClasses, cxGridCustomView, cxGridCustomTableView, cxGridTableView, cxGridBandedTableView, cxGridDBBandedTableView, Math,
  cxGridLevel, cxGrid, DBClient, cxGridDBTableView, cxStyles, cxCustomData, cxGraphics, cxFilter, cxData, cxDataStorage, cxDBData,
  cxCurrencyEdit, cxGroupBox, cxRadioGroup, Variants, cxCheckBox, cxLookAndFeelPainters, cxDropDownEdit, cxLookupEdit, cxDBLookupEdit,
  cxDBLookupComboBox, cxCalendar, cxButtons, cxMemo, cxPC, cxLabel, cxCheckComboBox, cxLookAndFeels, dxCore, cxDateUtils,
  cxNavigator, dxBarBuiltInMenu, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom,
  dxSkinDarkSide, dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary,
  dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMetropolis, dxSkinMetropolisDark, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray, dxSkinOffice2013White,
  dxSkinOffice2016Colorful, dxSkinOffice2016Dark, dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus, dxSkinSilver,
  dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008, dxSkinTheAsphaltWorld, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark, dxSkinVisualStudio2013Light, dxSkinVS2010, dxSkinWhiteprint, dxSkinXmas2008Blue,
  dxSkinscxPCPainter, cxDataControllerConditionalFormattingRulesManagerDialog, dxSkinTheBezier, dxDateRanges, dxBar, Vcl.Menus,
  dxSkinOffice2019Colorful, dxScrollbarAnnotations;

type
  TfmInvoiceScoreAdd = class(TForm)
    cxPropertiesStore1: TcxPropertiesStore;
    Query_Currency: TADOQuery;
    DS_Currency: TDataSource;
    Panel4: TPanel;
    Panel5: TPanel;
    Panel3: TPanel;
    Panel6: TPanel;
    Label2: TLabel;
    Label3: TLabel;
    Panel2: TPanel;
    Label1: TLabel;
    Label6: TLabel;
    cxButtonEdit1: TcxButtonEdit;
    cxTextEdit2: TcxTextEdit;
    Client_InvoiceScoreTable: TClientDataSet;
    DS_InvoiceScoreTable: TDataSource;
    Client_InvoiceScoreTablename_service: TStringField;
    Client_InvoiceScoreTableed_izm_name: TStringField;
    Client_InvoiceScoreTablequantity: TCurrencyField;
    Client_InvoiceScoreTableaktciz: TCurrencyField;
    Client_InvoiceScoreTablecost_with_nds: TCurrencyField;
    Client_InvoiceScoreTablestate_name: TStringField;
    Client_InvoiceScoreTablenum_customs_declaration: TStringField;
    Client_InvoiceScoreTableinvoice_score_table_id: TIntegerField;
    Label4: TLabel;
    cxGrid1: TcxGrid;
    cxGrid1DBBandedTableView1: TcxGridDBBandedTableView;
    cxGrid1DBBandedTableView1name_service: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1ed_izm_name: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1price_ed_izm: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1quantity: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1cost_without_nds: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1aktciz: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1tax_rate_id: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1tax_sum: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1cost_with_nds: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1state_name: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1num_customs_declaration: TcxGridDBBandedColumn;
    cxGrid1Level1: TcxGridLevel;
    Client_InvoiceScoreTableprice_ed_izm: TCurrencyField;
    Client_InvoiceScoreTablecost_without_nds: TCurrencyField;
    Client_InvoiceScoreTabletax_sum: TCurrencyField;
    Client_InvoiceScoreTablebargain_id: TIntegerField;
    cxGrid1DBBandedTableView1bargain_id: TcxGridDBBandedColumn;
    cxLookupComboBox2: TcxLookupComboBox;
    DateTimePicker3: TcxDateEdit;
    ComboBox2: TcxComboBox;
    ComboBox3: TcxComboBox;
    Query_NameService: TADOQuery;
    DS_NameService: TDataSource;
    Client_InvoiceScoreTableset_hand_edit: TBooleanField;
    cxGrid1DBBandedTableView1invoice_score_table_id: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1set_hand_edit: TcxGridDBBandedColumn;
    Client_InvoiceScoreTablerec_num: TIntegerField;
    cxGrid1DBBandedTableView1rec_num: TcxGridDBBandedColumn;
    Client_InvoiceScoreTableglobal_color: TIntegerField;
    cxGrid1DBBandedTableView1global_color: TcxGridDBBandedColumn;
    DS_NDS: TDataSource;
    Query_NDS: TADOQuery;
    Client_InvoiceScoreTabletax_rate_id: TIntegerField;
    cxPageControl1: TcxPageControl;
    cxTabSheet1: TcxTabSheet;
    cxTabSheet2: TcxTabSheet;
    Panel1: TPanel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label8: TLabel;
    cxButtonEdit2: TcxButtonEdit;
    cxButtonEdit3: TcxButtonEdit;
    cxButtonEdit4: TcxButtonEdit;
    cxButtonEdit5: TcxButtonEdit;
    cxButtonEdit6: TcxButtonEdit;
    cxButtonEdit8: TcxButtonEdit;
    cxButtonEdit9: TcxButtonEdit;
    cxButtonEdit10: TcxButtonEdit;
    cxTextEdit5: TcxTextEdit;
    Panel7: TPanel;
    GroupBox1: TGroupBox;
    cxCheckBox1: TcxCheckBox;
    cxCheckBox2: TcxCheckBox;
    GroupBox3: TGroupBox;
    cxCheckBox3: TcxCheckBox;
    cxRadioGroup3: TcxRadioGroup;
    Label19: TLabel;
    cxCheckBox4: TcxCheckBox;
    cxButtonEdit_Acts: TcxButtonEdit;
    GroupBox4: TGroupBox;
    cxButtonEdit7: TcxButtonEdit;
    cxButtonEdit11: TcxButtonEdit;
    cxLabel1: TcxLabel;
    cxLabel2: TcxLabel;
    Panel8: TPanel;
    cxGroupBox6: TcxGroupBox;
    Label5: TLabel;
    Label7: TLabel;
    Label20: TLabel;
    cxButtonEdit14: TcxButtonEdit;
    cxButtonEdit13: TcxButtonEdit;
    cxButtonEdit12: TcxButtonEdit;
    Client_InvoiceScoreTablecalc: TIntegerField;
    cxCheckBox5: TcxCheckBox;
    GroupBox2: TGroupBox;
    cxCheckBox6: TcxCheckBox;
    cxCheckBox7: TcxCheckBox;
    Label9: TLabel;
    cxTextEdit3: TcxTextEdit;
    cxDateEdit1: TcxDateEdit;
    Label21: TLabel;
    Client_InvoiceScoreTableed_izm_cod: TStringField;
    Client_InvoiceScoreTablestate_cod: TStringField;
    cxGrid1DBBandedTableView1ed_izm_cod: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1state_cod: TcxGridDBBandedColumn;
    GroupBox5: TGroupBox;
    cxCheckBox8: TcxCheckBox;
    cxTextEdit4: TcxTextEdit;
    cxCheckBox10: TcxCheckBox;
    Label22: TLabel;
    cxButtonEdit15: TcxButtonEdit;
    cxCheckBox9: TcxCheckBox;
    cxCheckBox11: TcxCheckBox;
    Client_InvoiceScoreTableservice_cod: TStringField;
    cxGrid1DBBandedTableView1service_cod: TcxGridDBBandedColumn;
    Label23: TLabel;
    cxTextEdit6: TcxTextEdit;
    Label24: TLabel;
    cxComboBox1: TcxComboBox;
    Label25: TLabel;
    cxComboBox2: TcxComboBox;
    cxLabel3: TcxLabel;
    cxButtonEdit16: TcxButtonEdit;
    cxCheckBox12: TcxCheckBox;
    cxCheckBox13: TcxCheckBox;
    cxTextEdit1: TcxButtonEdit;
    cxButtonEdit17: TcxButtonEdit;
    dxBarManager1: TdxBarManager;
    dxBarPopupMenu2: TdxBarPopupMenu;
    N18: TdxBarButton;
    N15: TdxBarButton;
    N16: TdxBarButton;
    dxBarPopupMenu1: TdxBarPopupMenu;
    N2: TdxBarButton;
    N8: TdxBarButton;
    N1: TdxBarButton;
    N6: TdxBarButton;
    N4: TdxBarButton;
    N5: TdxBarButton;
    N13: TdxBarButton;
    N11: TdxBarButton;
    N12: TdxBarButton;
    N10: TdxBarSubItem;
    cxButton1: TcxButton;
    cxButton2: TcxButton;
    cxButton3: TcxButton;
    cxButton4: TcxButton;
    cxButton5: TcxButton;
    procedure cxButtonEdit_ActsPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure cxCheckBox4PropertiesChange(Sender: TObject);
    procedure cxCheckBox3PropertiesChange(Sender: TObject);
    procedure GroupBox4PropertiesChange(Sender: TObject);
    procedure N13Click(Sender: TObject);
    procedure N11Click(Sender: TObject);
    procedure cxGrid1DBBandedTableView1rec_numPropertiesValidate(Sender: TObject; var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
    procedure cxGrid1DBBandedTableView1FocusedItemChanged(Sender: TcxCustomGridTableView; APrevFocusedItem, AFocusedItem: TcxCustomGridTableItem);
    procedure cxGrid1DBBandedTableView1DragDrop(Sender, Source: TObject; X, Y: Integer);
    procedure cxGrid1DBBandedTableView1CustomDrawCell(Sender: TcxCustomGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
    procedure cxGrid1DBBandedTableView1DragOver(Sender, Source: TObject; X, Y: Integer; State: TDragState; var Accept: Boolean);
    procedure N8Click(Sender: TObject);
    procedure cxGrid1DBBandedTableView1Editing(Sender: TcxCustomGridTableView; AItem: TcxCustomGridTableItem; var AAllow: Boolean);
    procedure Client_InvoiceScoreTableCalcFields(DataSet: TDataSet);
    procedure Client_InvoiceScoreTableNewRecord(DataSet: TDataSet);
    procedure cxButtonEdit2PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure cxGrid1DBBandedTableView1name_servicePropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure N6Click(Sender: TObject);
    procedure N5Click(Sender: TObject);
    procedure PopupMenu1Popup(Sender: TObject);
    procedure N4Click(Sender: TObject);
    procedure cxGrid1DBBandedTableView1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure cxGrid1DBBandedTableView1MouseDown(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure cxGrid1DBBandedTableView1CustomDrawColumnHeader(Sender: TcxGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxGridColumnHeaderViewInfo; var ADone: Boolean);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cxButtonEdit1PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure N1Click(Sender: TObject);
    procedure N2Click(Sender: TObject);
    procedure cxButtonEdit7PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure DateTimePicker3PropertiesEditValueChanged(Sender: TObject);
    procedure cxButtonEdit14KeyPress(Sender: TObject; var Key: Char);
    procedure cxButtonEdit14PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure cxCheckBox6PropertiesEditValueChanged(Sender: TObject);
    procedure cxButtonEdit4PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure cxCheckBox8PropertiesEditValueChanged(Sender: TObject);
    procedure cxGrid1DBBandedTableView1TcxGridDBDataControllerTcxDataSummaryFooterSummaryItems1GetText(Sender: TcxDataSummaryItem; const AValue: Variant; AIsFooter: Boolean; var AText: string);
    procedure cxCheckBox10Click(Sender: TObject);
    procedure cxGrid1DBBandedTableView1FocusedRecordChanged(Sender: TcxCustomGridTableView; APrevFocusedRecord, AFocusedRecord: TcxCustomGridRecord; ANewItemRecordFocusingChanged: Boolean);
    procedure cxCheckBox11PropertiesEditValueChanged(Sender: TObject);
    procedure cxCheckBox9PropertiesEditValueChanged(Sender: TObject);

    procedure OnNodeClick(Sender: TObject);
    procedure OnKargoClick(Sender: TObject);
    procedure OnServiceClick(Sender: TObject);
    procedure cxComboBox1PropertiesEditValueChanged(Sender: TObject);
    procedure cxCheckBox12PropertiesChange(Sender: TObject);
    procedure cxTextEdit1PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure cxButtonEdit17PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure cxButton1Click(Sender: TObject);
    procedure cxButton2Click(Sender: TObject);
    procedure cxButton4Click(Sender: TObject);
    procedure cxGrid1DBBandedTableView1DataControllerFilterChanged(Sender: TObject);
    procedure cxButton5Click(Sender: TObject);
  private
    Faction              : boolean;
    Fcontract_id         : integer;
    Ffirm_self_id        : integer;
    Finvoice_score_id    : integer;
    FFindStr             : string;
    Fset_save            : boolean;
    Ftype_score          : integer;
    Fstr_acts_id         : string;
    Fstr_pays_id         : string;
    Fstr_bargain_id_3    : string; // Список перевозок для формирования УПД
    Fstr_bargain_id_4    : string;
    Ffirm_director_id    : integer;
    Ffirm_buh_id         : integer;
    Ffirm_seller_id      : integer;
    Fcontract_agent_id   : integer;
    Facts_type_cod       : string;
    Fstr_fact_repair_table_id : string;
    Fstr_score_pay_id    : string;

    Fset_print_empty_ed_izm : boolean;

    Fset_use_part : boolean;
    Fset_act2upd  : boolean;

        // Запущена как DLL
    Fset_run_dll : boolean;
    Fconnect     : TADOConnection;
    Fusr_pwd_lis : PUser_pwd;

    Fold_num : string;
    // запомним номер присвоенный системой
    // если номер изменился, значит его перебили руками

    procedure InsertInvoiceRecord(bargain_id : integer);
    procedure UpdateInvoiceScore(invoice_score_id : integer);
    procedure InsertInvoiceScore(invoice_score_id : integer);
    procedure InsertInvoiceScoreByBargainAdd(invoice_score_id : integer);
    procedure InsertInvoiceScoreByActs(acts_id : integer);
    procedure InsertUPDByActs(acts_id : integer);

    procedure CalcInvoiceScoreAct;
    procedure CalcInvoiceScorePay;
    procedure CalcUPDBargain_3;


    function  GetLocalExchange(currency_from, currency_to : integer) : Double;
    procedure ReCalcNum;
    procedure EdIzm2OKEI;

    procedure DragRecord(record_from, record_to: integer; record_select: array of integer);

    procedure SetContractID(contract_id, firm_self_id : integer);
    procedure SetContractAgentID(contract_id : integer);
    procedure SetActs(str_acts_id : string);
    procedure SetPays(str_pays_id : string);
  public
    constructor Create(AOwner : TApplication; action : boolean; type_score : integer);
    constructor CreateDLL(AOwner : TApplication; action : boolean; type_score : integer; usr_pwd_lis: PUser_pwd);
  published
    property _GetInvoiceScoreID  : integer read Finvoice_score_id;
    property _UpdateInvoiceScore : integer write UpdateInvoiceScore;
    property _InsertInvoiceScore : integer write InsertInvoiceScore;
    property _InsertInvoiceScoreByBargainAdd : integer write InsertInvoiceScoreByBargainAdd;
    property _InsertInvoiceScoreByActs : integer write InsertInvoiceScoreByActs;
    property _InsertUPDByActs : integer write InsertUPDByActs;

    function _InsertUPDByBargain(str_bargain_id : string; calc_type : integer) : boolean;
  end;

var
  fmInvoiceScoreAdd: TfmInvoiceScoreAdd;

implementation
     uses Main, Raznoe, Filter, Contract, Acts, DateUtils, StrUtils, XMLDoc, Period, Other, Firm, Agree2,
          Pay, InvoiceScoreReserve;
{$R *.DFM}

{ TfmInvoiceScoreAdd }

constructor TfmInvoiceScoreAdd.CreateDLL(AOwner : TApplication; action : boolean; type_score : integer; usr_pwd_lis: PUser_pwd);
begin
  inherited Create(Aowner);
  Screen.Cursor := crHourglass;

  Caption := Caption + ' [Новая запись]';

  Fset_save                 := False;
  Faction                   := action;
  Ftype_score               := type_score;
  Finvoice_score_id         := -9;
  Ffirm_director_id         := -9;
  Ffirm_buh_id              := -9;
  Ffirm_seller_id           := -9;
  Fcontract_agent_id        := -9;
  Facts_type_cod            := '-9';
  Fstr_fact_repair_table_id := '-9';
  Fstr_score_pay_id         := '';
  Fset_use_part             := False;
  Fset_act2upd              := False;

  Fset_run_dll  := True;
  Fusr_pwd_lis  := usr_pwd_lis;
  Fconnect := TADOConnection.Create(nil);
  Fconnect.ConnectionString := 'Persist Security Info=True;Provider=SQLOLEDB.1;User ID='+Fusr_pwd_lis^.user_name+';Password='+Fusr_pwd_lis^.user_pass+';Initial Catalog='+Fusr_pwd_lis^.catalog+';Data Source='+Fusr_pwd_lis^.server+';';
  Fconnect.KeepConnection   := False;
  Fconnect.LoginPrompt      := False;

  if not usr_pwd.user_func.Locate('func_name', 'set_invoice_score_modify', [loCaseInsensitive]) then begin
    // Нет прав - нельзя менять номер
    cxTextEdit1.Properties.Buttons[0].Visible := False;
    cxTextEdit1.Properties.Buttons[1].Visible := False;
  end;


  Query_NameService.Connection := Fconnect;
  Query_NDS.Connection := Fconnect;
  Query_Currency.Connection := Fconnect;

  if type_score = 2 then begin
    GroupBox4.Visible := false;
    GroupBox1.Visible := false;
    cxButton4.Visible := false;
  end;

  SetContractID(-9, -9);
  Client_InvoiceScoreTable.CreateDataSet;
  Client_InvoiceScoreTable.LogChanges := False;
  // Для ставок НДС
  Query_NDS.Open;

  DateTimePicker3.EditValue := Date();

  FFindStr := '';

  ComboBox2.ItemIndex := StrToInt(FormatDateTime('m', Date)) - 1;
  ComboBox3.ItemIndex := ComboBox3.Properties.Items.IndexOf(FormatDateTime('yyyy', Date));

  Query_Currency.Open;
  Query_NameService.Open;
  cxLookupComboBox2.EditValue := Query_Currency.FieldByNAme('currency_id').AsInteger;

  // Формирование PopupMenu со стандартными фразами
  Query_NameService.Open;

  cxButton4.Enabled := False;
  cxButton1.Enabled := False;
  cxButton3.Enabled := False;
  cxButton5.Enabled := False;

  cxRadioGroup3.Enabled := False;
  cxButtonEdit_Acts.Enabled := False;
  cxButtonEdit1.Enabled := False;

  cxButtonEdit2.Enabled := False;
  cxButtonEdit3.Enabled := False;
  cxButtonEdit4.Enabled := False;
  cxButtonEdit5.Enabled := False;
  cxButtonEdit6.Enabled := False;
  cxButtonEdit17.Enabled := False;
  cxButtonEdit8.Enabled := False;
  cxButtonEdit9.Enabled := False;
  cxButtonEdit10.Enabled := False;
  cxTextEdit6.Enabled := False;

  cxButtonEdit7.Enabled := False;
  cxButtonEdit11.Enabled := False;

  cxButtonEdit15.Enabled := False;

  cxGrid1DBBandedTableView1.PopupMenu := nil;
  DateTimePicker3.Properties.OnEditValueChanged := nil;
  cxDateEdit1.Properties.OnEditValueChanged := nil;
  cxLookupComboBox2.Properties.OnChange := nil;

  cxPageControl1.ActivePageIndex := 0;
  Screen.Cursor := crDefault;
end;


constructor TfmInvoiceScoreAdd.Create(AOwner : TApplication; action : boolean; type_score : integer);
begin
  inherited Create(Aowner);
  Screen.Cursor := crHourglass;

  Caption := Caption + ' [Новая запись]';

  Fset_save                 := False;
  Faction                   := action;
  Ftype_score               := type_score;
  Finvoice_score_id         := -9;
  Ffirm_director_id         := -9;
  Ffirm_buh_id              := -9;
  Ffirm_seller_id           := -9;
  Fcontract_agent_id        := -9;
  Facts_type_cod            := '-9';
  Fstr_fact_repair_table_id := '-9';
  Fstr_score_pay_id         := '';
  Fset_use_part             := False;
  Fset_act2upd              := False;

  Fconnect := fmMain.Lis;
  Fusr_pwd_lis  := usr_pwd;

  if type_score = 2 then begin
    GroupBox4.Visible := false;
    GroupBox1.Visible := false;
    cxButton4.Visible := false;
    Label1.Caption    := 'Агент......';
  end;

  SetContractID(-9, -9);
  Client_InvoiceScoreTable.CreateDataSet;
  Client_InvoiceScoreTable.LogChanges := False;
  // Для ставок НДС
  Query_NDS.Open;

  DateTimePicker3.EditValue := Date();

  FFindStr := '';

  ComboBox2.ItemIndex := StrToInt(FormatDateTime('m', Date)) - 1;
  ComboBox3.ItemIndex := ComboBox3.Properties.Items.IndexOf(FormatDateTime('yyyy', Date));

  Query_Currency.Open;
  Query_NameService.Open;
  cxLookupComboBox2.EditValue := Query_Currency.FieldByNAme('currency_id').AsInteger;

  // Формирование PopupMenu со стандартными фразами
  Query_NameService.Open;

  MonitorEventFormOpen('OPEN_FORM', self.Name, Fconnect, -9);
  cxPageControl1.ActivePageIndex := 0;
  Screen.Cursor := crDefault;
end;

procedure TfmInvoiceScoreAdd.CalcUPDBargain_3;
var
  SP_Balans_Detail : TADOStoredProc;
begin
  Screen.Cursor := crHourglass;

  // Данные отчета - перевозки
  ShowTextMessage('Подготовка данных ...', False);

  SP_Balans_Detail := TADOStoredProc.Create(nil);
  SP_Balans_Detail.Connection := fmMain.Lis;
  SP_Balans_Detail.ProcedureName := 'sp_act_report_basic_SFH;1';
  SP_Balans_Detail.Parameters.Refresh;
  SP_Balans_Detail.Parameters.ParamByName('@contract_id'        ).Value := Fcontract_id;
  SP_Balans_Detail.Parameters.ParamByName('@date_begin'         ).Value := null;
  SP_Balans_Detail.Parameters.ParamByName('@date_end'           ).Value := null;
  SP_Balans_Detail.Parameters.ParamByName('@currency_id'        ).Value := cxLookupComboBox2.EditValue;
  SP_Balans_Detail.Parameters.ParamByName('@set_routefromfact'  ).Value := cxCheckBox1.Checked;
  SP_Balans_Detail.Parameters.ParamByName('@set_kargofromfact'  ).Value := cxCheckBox2.Checked;
  SP_Balans_Detail.Parameters.ParamByName('@str_bargain_id'     ).Value := Fstr_bargain_id_4;
  SP_Balans_Detail.CommandTimeout := 200;

  try
    SP_Balans_Detail.Open;
  except
  end;

  Client_InvoiceScoreTable.DisableControls;
  Client_InvoiceScoreTable.EmptyDataSet;

  while not SP_Balans_Detail.Eof do begin
    ShowTextMessage('Осталось записей ' + IntToStr(SP_Balans_Detail.RecordCount - SP_Balans_Detail.RecNo + 1) + '...', False);

    Client_InvoiceScoreTable.Append;
    Client_InvoiceScoreTable['bargain_id']    := SP_Balans_Detail.FieldByName('bargain_id').Value;
    Client_InvoiceScoreTable['name_service']  := SP_Balans_Detail.FieldByName('service_kind_inv').Value;
    Client_InvoiceScoreTable['service_cod']   := SP_Balans_Detail.FieldByName('service_kind_cod').Value;
    Client_InvoiceScoreTable['ed_izm_cod']    := SP_Balans_Detail.FieldByName('ed_izm_cod').Value;
    Client_InvoiceScoreTable['ed_izm_name']   := SP_Balans_Detail.FieldByName('ed_izm_name').Value;
    case SP_Balans_Detail.FieldByName('unit_measure').Value of
      0:   Client_InvoiceScoreTable['quantity']      := SP_Balans_Detail.FieldByName('calc_weight').Value;
      1:   Client_InvoiceScoreTable['quantity']      := SP_Balans_Detail.FieldByName('cnt').Value;
      else Client_InvoiceScoreTable['quantity']      := null;
    end;
    Client_InvoiceScoreTable['tax_rate_id']   := SP_Balans_Detail.FieldByName('bargain_nds_id').Value;
    Client_InvoiceScoreTable['cost_with_nds'] := SP_Balans_Detail.FieldByName('summa').Value;

//    if SP_Balans_Detail.FieldByName('set_hand_edit').Value = True then begin
//      Client_InvoiceScoreTable['set_hand_edit'] := True;
//      Client_InvoiceScoreTable['tax_sum'] := SP_Balans_Detail.FieldByName('tax_sum').Value;
//      Client_InvoiceScoreTable['cost_without_nds'] := SP_Balans_Detail.FieldByName('cost_with_nds').AsCurrency - SP_Balans_Detail.FieldByName('tax_sum').AsCurrency;
//      if Client_InvoiceScoreTable.FieldByName('quantity').AsCurrency <> 0 then
//        Client_InvoiceScoreTable['price_ed_izm']   := Client_InvoiceScoreTable['cost_without_nds'] / Client_InvoiceScoreTable.FieldByName('quantity').AsCurrency
//      else
//        Client_InvoiceScoreTable['price_ed_izm']   := null;
//    end;

    Client_InvoiceScoreTable.Post;

    SP_Balans_Detail.Next;
  end;
  Client_InvoiceScoreTable.EnableControls;

  ShowTextMessage();
  SP_Balans_Detail.Free;
  Screen.Cursor := crDefault;
end;

procedure TfmInvoiceScoreAdd.CalcInvoiceScorePay;
var
  SP_Balans_Detail : TADOStoredProc;
begin
  Screen.Cursor := crHourglass;

  // Данные отчета - перевозки
  ShowTextMessage('Подготовка данных ...', False);

  SP_Balans_Detail := TADOStoredProc.Create(nil);
  SP_Balans_Detail.Connection := Fconnect;
  SP_Balans_Detail.ProcedureName := 'sp_pay_invoice_score_get';
  SP_Balans_Detail.Parameters.Refresh;
  SP_Balans_Detail.Parameters.ParamByName('@str_pays_id').Value := Fstr_pays_id;
  SP_Balans_Detail.CommandTimeout := 200;
  try
    SP_Balans_Detail.Open;
  except
  end;

  Client_InvoiceScoreTable.DisableControls;
  Client_InvoiceScoreTable.EmptyDataSet;

  while not SP_Balans_Detail.Eof do begin
    ShowTextMessage('Осталось записей ' + IntToStr(SP_Balans_Detail.RecordCount - SP_Balans_Detail.RecNo + 1) + '...', False);

    Client_InvoiceScoreTable.Append;
    Client_InvoiceScoreTable['bargain_id']    := SP_Balans_Detail.FieldByName('bargain_id').Value;
    Client_InvoiceScoreTable['name_service']  := SP_Balans_Detail.FieldByName('name_service').Value;
    Client_InvoiceScoreTable['service_cod']   := SP_Balans_Detail.FieldByName('service_cod').Value;
    Client_InvoiceScoreTable['ed_izm_cod']    := SP_Balans_Detail.FieldByName('ed_izm_cod').Value;
    Client_InvoiceScoreTable['ed_izm_name']   := SP_Balans_Detail.FieldByName('ed_izm_name').Value;
    Client_InvoiceScoreTable['quantity']      := SP_Balans_Detail.FieldByName('quantity').Value;
    Client_InvoiceScoreTable['tax_rate_id']   := SP_Balans_Detail.FieldByName('bargain_nds_id').Value;
    Client_InvoiceScoreTable['cost_with_nds'] := SP_Balans_Detail.FieldByName('cost_with_nds').Value;

    if SP_Balans_Detail.FieldByName('set_hand_edit').Value = True then begin
      Client_InvoiceScoreTable['set_hand_edit'] := True;
      Client_InvoiceScoreTable['tax_sum'] := SP_Balans_Detail.FieldByName('tax_sum').Value;
      Client_InvoiceScoreTable['cost_without_nds'] := SP_Balans_Detail.FieldByName('cost_with_nds').AsCurrency - SP_Balans_Detail.FieldByName('tax_sum').AsCurrency;
      if Client_InvoiceScoreTable.FieldByName('quantity').AsCurrency <> 0 then
        Client_InvoiceScoreTable['price_ed_izm']   := Client_InvoiceScoreTable['cost_without_nds'] / Client_InvoiceScoreTable.FieldByName('quantity').AsCurrency
      else
        Client_InvoiceScoreTable['price_ed_izm']   := null;
    end;

    Client_InvoiceScoreTable.Post;

    SP_Balans_Detail.Next;
  end;
  Client_InvoiceScoreTable.EnableControls;

  ShowTextMessage();
  SP_Balans_Detail.Free;
  Screen.Cursor := crDefault;
end;

procedure TfmInvoiceScoreAdd.CalcInvoiceScoreAct;
var
  SP_Balans_Detail : TADOStoredProc;
  set_test_return  : boolean;

  set_minus_message : boolean;
  sum_acts, sum_score, sum_without_nds, tax_rate : Double;
  str_msg : string;

  str_bargain_id : string;
begin
  Screen.Cursor := crHourglass;

  set_minus_message := false;

  // Данные отчета - перевозки
  ShowTextMessage('Подготовка данных ...', False);

  SP_Balans_Detail := TADOStoredProc.Create(nil);
  SP_Balans_Detail.Connection := Fconnect;
  SP_Balans_Detail.ProcedureName := 'sp_acts_invoice_score_GET;1';
  SP_Balans_Detail.Parameters.Refresh;
  SP_Balans_Detail.Parameters.ParamByName('@str_acts_id').Value := Fstr_acts_id;
  SP_Balans_Detail.Parameters.ParamByName('@set_calc4report').Value := (cxRadioGroup3.EditingValue = 1); // по актам или по актам (данные отчета на возмещение)
  SP_Balans_Detail.Parameters.ParamByName('@str_fact_repair_table_id').Value := Fstr_fact_repair_table_id;
  SP_Balans_Detail.Parameters.ParamByName('@invoice_score_id').Value := Finvoice_score_id;
  SP_Balans_Detail.CommandTimeout := 200;
  try
    SP_Balans_Detail.Open;
  except
  end;

  sum_acts := 0; sum_score := 0; sum_without_nds := 0;
  sum_acts := StrToFloat(GetIDFromSQL('select isnull(sum(acts_sum), 0) as acts_sum from view_acts where acts_id in (' + Fstr_acts_id + ')' , Fconnect));

  Client_InvoiceScoreTable.DisableControls;
  Client_InvoiceScoreTable.EmptyDataSet;

  Fset_use_part := (SP_Balans_Detail.Parameters.ParamByName('@set_use_part').Value =  True);
  cxCheckBox10.Checked := (SP_Balans_Detail.Parameters.ParamByName('@set_type_total').Value =  True);

  if Fset_use_part then begin
    fmFilter := TfmFilter.Create(0, SP_Balans_Detail, 'bargain_id', 'service_cod', 'name_service');
    fmFilter._SetChooseRow4Score := True;

    str_bargain_id := '';
    if fmFilter.ShowModal = mrOk then
      str_bargain_id := fmFilter._GetStrId;
  end;

  while not SP_Balans_Detail.Eof do begin
    ShowTextMessage('Осталось записей ' + IntToStr(SP_Balans_Detail.RecordCount - SP_Balans_Detail.RecNo + 1) + '...', False);

    // Проверка - возврат или нет
    set_test_return := (SP_Balans_Detail.FieldByName('bargain_correct_type').AsInteger <> 1); // не удаляющее приложение
    set_test_return := set_test_return and (SP_Balans_Detail.FieldByName('cost_with_nds').AsCurrency < 0); // отридцательная сумма

    // добавлем запись, если это возврат и возведен соответсвующий флаг или если не возврат и нет флага
    if set_test_return = (cxCheckBox3.Checked or cxCheckBox4.Checked) then begin

      // Часть строк можно пропустить
      if (not Fset_use_part) or (Pos(',' + SP_Balans_Detail.FieldByName('bargain_id').AsString + ',', ',' + str_bargain_id + ',') > 0) then begin
        Client_InvoiceScoreTable.Append;
        Client_InvoiceScoreTable['bargain_id']    := SP_Balans_Detail.FieldByName('bargain_id').Value;
        Client_InvoiceScoreTable['name_service']  := SP_Balans_Detail.FieldByName('name_service').Value;
        Client_InvoiceScoreTable['service_cod']   := SP_Balans_Detail.FieldByName('service_cod').Value;
        Client_InvoiceScoreTable['ed_izm_cod']    := SP_Balans_Detail.FieldByName('ed_izm_cod').Value;
        Client_InvoiceScoreTable['ed_izm_name']   := SP_Balans_Detail.FieldByName('ed_izm_name').Value;
        Client_InvoiceScoreTable['quantity']      := SP_Balans_Detail.FieldByName('quantity').Value;
        Client_InvoiceScoreTable['tax_rate_id']   := SP_Balans_Detail.FieldByName('bargain_nds_id').Value;
        Client_InvoiceScoreTable['cost_with_nds'] := abs(SP_Balans_Detail.FieldByName('cost_with_nds').AsCurrency);

        if SP_Balans_Detail.FieldByName('set_hand_edit').Value = True then begin
          Client_InvoiceScoreTable['set_hand_edit'] := True;
          Client_InvoiceScoreTable['tax_sum'] := abs(SP_Balans_Detail.FieldByName('tax_sum').AsCurrency);
          Client_InvoiceScoreTable['cost_without_nds'] := abs(SP_Balans_Detail.FieldByName('cost_with_nds').AsCurrency) - abs(SP_Balans_Detail.FieldByName('tax_sum').AsCurrency);
          if Client_InvoiceScoreTable.FieldByName('quantity').AsCurrency <> 0 then
            Client_InvoiceScoreTable['price_ed_izm']   := Client_InvoiceScoreTable['cost_without_nds'] / Client_InvoiceScoreTable.FieldByName('quantity').AsCurrency
          else
            Client_InvoiceScoreTable['price_ed_izm']   := null;
        end;

        if  (MatchText(Facts_type_cod, ['133', '182', '253','306','308','309','375','404'])) then begin
          Client_InvoiceScoreTable['set_hand_edit']       := True;
          Client_InvoiceScoreTable['tax_sum']             := abs(SP_Balans_Detail.FieldByName('tax_sum').AsCurrency);
          Client_InvoiceScoreTable['cost_without_nds']    := abs(SP_Balans_Detail.FieldByName('summa').AsCurrency);
          cxGrid1DBBandedTableView1.OptionsData.Editing   := True;
          cxGrid1DBBandedTableView1.OptionsData.Inserting := True;
          cxGrid1DBBandedTableView1.OptionsData.Deleting  := True;
        end;

        Client_InvoiceScoreTable.Post;

        sum_score       := sum_score + Client_InvoiceScoreTable['cost_with_nds'];
        sum_without_nds := sum_without_nds + Client_InvoiceScoreTable['cost_without_nds'];
      end;

    end else begin
      set_minus_message := True;
    end;

    SP_Balans_Detail.Next;
  end;
  Client_InvoiceScoreTable.EnableControls;

  ShowTextMessage();
  SP_Balans_Detail.Free;
  Screen.Cursor := crDefault;

  if cxCheckBox10.Checked and Query_NDS.Active then begin
    if not TryStrToFloat(Query_NDS.FieldByName('inf_obj_cod').AsString, tax_rate) then tax_rate := 0;
    sum_score := sum_without_nds * (100 + tax_rate) / 100;
  end;

  sum_acts  := RoundCurr(sum_acts, -2);
  sum_score := RoundCurr(sum_score, -2);

  str_msg := '';
  if set_minus_message then begin
    str_msg := 'Cчет-фактура была сформирована по части данных акта,'#10'т.к. в акте присутствуют отрицательные суммы'#10#10;
    Application.MessageBox(PWideChar(str_msg), 'Внимание', MB_ICONEXCLAMATION);
  end else if (not Fset_use_part) {and (not set_minus_message)} and (sum_acts <> sum_score) then begin
    str_msg := 'Сумма акта не равна сумме сформированного счета-фактуры'#10'Возможно были изменены Перевозки, на основании которых был сформирован акт'#10#10;
    Application.MessageBox(PWideChar(str_msg), 'Внимание', MB_ICONEXCLAMATION);
  end;
end;

function TfmInvoiceScoreAdd._InsertUPDByBargain(str_bargain_id : string; calc_type : integer) : boolean;
var Q : TADOQuery;
begin
  Result := False;
  if str_bargain_id = '' then begin
    Application.MessageBox('Не выбраны перевозки'#10'Формирование УПД невозмоно', 'Внимание', MB_OK or MB_ICONERROR);
    Self.Close;
    exit;
  end;

  Fset_act2upd := True;
  cxComboBox1.ItemIndex := 1; // УПД
  cxComboBox2.ItemIndex := 0; // Статус УПД

  cxRadioGroup3.EditValue := calc_type;

  cxCheckBox6.Checked := False;

  // Проверка на один договор
  Q := TADOQuery.Create(nil);
  Q.Connection := Fconnect;
  Q.SQL.Add('SELECT DISTINCT contract_id, firm_self');
  Q.SQL.Add('FROM view_bargain');
  Q.SQL.Add('WHERE bargain_id in (' + str_bargain_id + ')');
  Q.Open;
  if Q.RecordCount <> 1 then begin
    Application.MessageBox('Выбраны перевозки по нескольким договорам'#10'Формирование УПД невозмоно', 'Внимание', MB_OK or MB_ICONERROR);
    Q.Free;
    Self.Close;
    exit;
  end;

  Fcontract_id := Q['contract_id'];
  Ffirm_self_id := Q['firm_self'];
  SetContractID(Fcontract_id, Ffirm_self_id);
  cxButtonEdit17.EditValue := null;
  Fstr_score_pay_id        := '';
  Q.Close;

  // найдем УПД (СчФ), если он был ранее создан
  Q.SQL.Clear;
  Q.SQL.Add('SELECT invoice_score_id');
  Q.SQL.Add('FROM INVOICE_SCORE');
  Q.SQL.Add('WHERE INVOICE_SCORE.contract_id = ' + IntToStr(Fcontract_id) + '');
  Q.SQL.Add('AND INVOICE_SCORE.calc_type = ' + IntToStr(calc_type));
  Q.SQL.Add('AND EXISTS (SELECT 1 FROM INVOICE_SCORE_TABLE WHERE invoice_score_id = INVOICE_SCORE.invoice_score_id AND bargain_id in (' + str_bargain_id + '))');
  Q.Open;

  if not Q.Eof then begin
    _UpdateInvoiceScore := Q.FieldByName('invoice_score_id').AsInteger
  end;

  Q.Free;

  // Присваиваем в конце, т.к. в случае загрузки сущ. УПД список перевозок может различаться
  Fstr_bargain_id_4 := str_bargain_id;

  // Сформируем УПД по переданным нам данным
  cxButton4Click(cxButton4);

  // После Загрузки/Создания СчФ заблокируем лишие элементы формы
  cxButton1.Enabled := True;
  cxButton3.Enabled := False;
  cxComboBox1.Enabled := False;
  cxRadioGroup3.Enabled := False;

  cxButtonEdit_Acts.Enabled := False;
  cxButtonEdit1.Enabled := False;
  cxButtonEdit2.Enabled := False;
  cxButtonEdit3.Enabled := False;
  cxButtonEdit4.Enabled := False;
  cxButtonEdit5.Enabled := False;
  cxButtonEdit6.Enabled := False;
  cxButtonEdit17.Enabled := True;
  cxButtonEdit8.Enabled := False;
  cxButtonEdit9.Enabled := False;
  cxButtonEdit10.Enabled := False;
  cxTextEdit6.Enabled := False;

//  cxButtonEdit7.Enabled := False;
//  cxButtonEdit11.Enabled := False;

//  cxButtonEdit15.Enabled := False;

//  DBLookupComboBox2.Enabled := False;

  Result := True;
end;


procedure TfmInvoiceScoreAdd.InsertUPDByActs(acts_id : integer);
var Q : TADOQuery;
begin
  Fset_act2upd := True;
  cxComboBox1.ItemIndex := 1; // УПД
  cxComboBox2.ItemIndex := 0; // Статус УПД

  // найдем УПД (СчФ), если он был ранее создан
  Q := TADOQuery.Create(nil);
  Q.Connection := Fconnect;
  Q.SQL.Add('SELECT TOP 1 INVOICE_SCORE.invoice_score_id');
  Q.SQL.Add('FROM ACTS_INVOICE_SCORE');
  Q.SQL.Add('JOIN INVOICE_SCORE');
  Q.SQL.Add('ON ACTS_INVOICE_SCORE.invoice_score_id = INVOICE_SCORE.invoice_score_id');
  Q.SQL.Add('WHERE ACTS_INVOICE_SCORE.acts_id = ' + IntToStr(acts_id) + '');
  Q.SQL.Add('AND INVOICE_SCORE.set_universal_trans_doc = 1');
  Q.Open;

  if not Q.Eof then begin
    _UpdateInvoiceScore := Q.FieldByName('invoice_score_id').AsInteger
  end else begin
    _InsertInvoiceScoreByActs := acts_id;
  end;

  Q.Free;

  // После Загрузки/Создания СчФ заблокируем лишие элементы формы
  cxButton1.Enabled := True;
  cxButton3.Enabled := False;
  cxComboBox1.Enabled := False;
  cxRadioGroup3.Enabled := False;

  cxButtonEdit_Acts.Enabled := False;
  cxButtonEdit1.Enabled := False;
  cxButtonEdit2.Enabled := False;
  cxButtonEdit3.Enabled := False;
  cxButtonEdit4.Enabled := False;
  cxButtonEdit5.Enabled := False;
  cxButtonEdit6.Enabled := False;
  cxButtonEdit17.Enabled := True;
  cxButtonEdit8.Enabled := False;
  cxButtonEdit9.Enabled := False;
  cxButtonEdit10.Enabled := False;
  cxTextEdit6.Enabled := False;

  cxLookupComboBox2.Enabled := False;
end;

procedure TfmInvoiceScoreAdd.InsertInvoiceScoreByActs(acts_id: integer);
var
  Q : TADOQuery;
begin
  // установим контакты собственной орг. = контактам в акте
  Q := TADOQuery.Create(nil);
  Q.Connection := Fconnect;
  Q.SQL.Add('SELECT TOP 1 *');
  Q.SQL.Add('FROM view_acts WHERE acts_id = ' + IntToStr(acts_id));
  Q.Open;

  Facts_type_cod := Q.FieldByName('acts_type_cod').AsString;

  DateTimePicker3.EditValue := IncMonth(StartOfTheMonth(Q.FieldByName('acts_date').AsDateTime)) - 1;
  ComboBox2.ItemIndex := StrToInt(FormatDateTime('m', DateTimePicker3.EditValue)) - 1;
  ComboBox3.ItemIndex := ComboBox3.Properties.Items.IndexOf(FormatDateTime('yyyy', DateTimePicker3.EditValue));

  SetContractID(Q.FieldByName('contract_id').AsInteger, Q.FieldByName('firm_self_id').AsInteger); // Выбираем контракт, такой же как у актов

  // При выборе контракта - проставляются подписанты по умолчанию - мы их переписываем, только если в Акте указаны подписанты
  // а так же проставим валюту как в Акте (в акте валюта может отличаться от договора)
  cxLookupComboBox2.EditValue := Q.FieldByName('acts_currency_id').Value;
  if not Q.FieldByName('self_dir_id').IsNull then begin
    Ffirm_director_id := Q.FieldByName('self_dir_id').AsInteger;
    cxButtonEdit7.Text := Q.FieldByName('self_dir_name').AsString;
    if Q.FieldByName('self_dir_comment').AsString <> '' then
      cxButtonEdit7.Text := cxButtonEdit7.Text + ' (' + Q.FieldByName('self_dir_comment').AsString + ')'
  end;

  if not Q.FieldByName('self_buh_id').IsNull then begin
    Ffirm_buh_id := Q.FieldByName('self_buh_id').AsInteger;
    cxButtonEdit11.Text := Q.FieldByName('self_buh_name').AsString;
    if Q.FieldByName('self_buh_comment').AsString <> '' then
      cxButtonEdit11.Text := cxButtonEdit11.Text + ' (' + Q.FieldByName('self_buh_comment').AsString + ')'
  end;

  SetActs(IntToStr(acts_id)); // Заполнение акта
  // Если Отчет на возмещение, то перебиваем Продавца (отчеты поименованы списком)
  if MatchText(Facts_type_cod, ['190', '191', '194', '198', '210', '215', '229', '239', '273', '274', '276', '304', '365', '371']) then
    SetContractAgentID(Q.FieldByName('contract_agent_id').AsInteger);
  Q.Free;
  Fstr_acts_id := IntToStr(acts_id);
  CalcInvoiceScoreAct;
end;

procedure TfmInvoiceScoreAdd.InsertInvoiceScoreByBargainAdd(invoice_score_id: integer);
var
  Q : TADOQuery;
begin
   Q := TADOQuery.Create(nil);
   Q.Connection := Fconnect;
   Q.SQL.Add('SELECT * FROM view_shp_bargain_add WHERE bargain_add_id = ' + IntToStr(invoice_score_id));
   Q.Open;

   Fstr_acts_id := IntToStr(invoice_score_id);
   SetContractID(Q.FieldByName('contract_id').AsInteger, Q.FieldByName('firm_self').AsInteger);

   Client_InvoiceScoreTable.Append;
   Client_InvoiceScoreTable['bargain_id']   := Q.FieldByName('bargain_add_id').AsInteger;
   Client_InvoiceScoreTable['name_service'] := Q.FieldByName('service_kind_name').AsString;
   Client_InvoiceScoreTable['service_cod']  := Q.FieldByName('service_kind_cod').Value;
   Client_InvoiceScoreTable['ed_izm_cod']   := Q.FieldByName('ed_izm_cod').AsString;
   Client_InvoiceScoreTable['ed_izm_name']  := Q.FieldByName('ed_izm_name').AsString;
   Client_InvoiceScoreTable['quantity']     := Q.FieldByName('add_count').AsInteger;

   Client_InvoiceScoreTable['tax_rate_id']   := Q.FieldByName('type_nds_id').AsInteger;
   Client_InvoiceScoreTable['cost_with_nds'] := Q.FieldByName('add_sum').AsCurrency;

   Client_InvoiceScoreTable.Post;
end;

procedure TfmInvoiceScoreAdd.InsertInvoiceScore;
var
  Query          : TADOQuery;
  str_bargain_id : string;
begin
   Fstr_acts_id := '';
   Screen.Cursor := crHourglass;

   Client_InvoiceScoreTable.EmptyDataSet;

   str_bargain_id := GetIDFromSQL(
   ' SELECT bargain_id FROM view_bargain WHERE MONTH(date_period) = ' + IntToStr(ComboBox2.ItemIndex + 1) + ' AND YEAR(date_period) = ' + ComboBox3.Text +
   ' AND contract_id = ' + IntToStr(Fcontract_id) + ' AND (bargain_sum_fact <> 0)', Fconnect);

   Query := TADOQuery.Create(nil);
   Query.Connection := Fconnect;
   Query.SQL.Add('SELECT * FROM view_bargain WHERE MONTH(date_period) = :date_month AND YEAR(date_period) = :date_year');
   Query.SQL.Add('AND contract_id = :contract_id AND (bargain_sum_fact <> 0)');
   Query.SQL.Add('AND bargain_id in (SELECT bargain_id FROM dbo.Bargain_Check_Correct_STR(' + StrToSQL(str_bargain_id) + '))');
   Query.Parameters.ParamByName('contract_id').Value := Fcontract_id;
   Query.Parameters.ParamByName('date_month').Value  := ComboBox2.ItemIndex + 1;
   Query.Parameters.ParamByName('date_year').Value   := StrToInt(ComboBox3.Text);
   Query.Open;

   Client_InvoiceScoreTable.DisableControls;
   while not Query.Eof do begin
    ShowTextMessage('Осталось приложений ' + IntToStr(Query.RecordCount - Query.RecNo + 1) + '...', False);
    InsertInvoiceRecord(Query.FieldByName('bargain_id').AsInteger);
    Query.Next;
   end;
   Client_InvoiceScoreTable.EnableControls;

  ShowTextMessage();
  Query.Free;
  Screen.Cursor := crDefault;
end;

function TfmInvoiceScoreAdd.GetLocalExchange(currency_from, currency_to : integer): Double;
var
  usd, eur, chf : double;
begin
  // От чего считаем
  usd := StrToFloat(cxButtonEdit14.Text);
  eur := StrToFloat(cxButtonEdit13.Text);
  chf := StrToFloat(cxButtonEdit12.Text);

  Result := 1;
  case currency_to of
    1 : case currency_from of
          1: Result := 1;
          3: Result := 1 / usd;
          6: Result := eur / usd;
          5: Result := chf / usd;
        end;
    3 : case currency_from of
          1: Result := usd;
          3: Result := 1;
          6: Result := eur;
          5: Result := chf;
        end;
    6 : case currency_from of
          1: Result := usd / eur;
          3: Result := 1 / eur;
          6: Result := 1;
          5: Result := chf / eur;
        end;
    5 : case currency_from of
          1: Result := usd / chf;
          3: Result := 1 / chf;
          6: Result := eur / chf;
          5: Result := 1;
        end;
  end;
end;

procedure TfmInvoiceScoreAdd.GroupBox4PropertiesChange(Sender: TObject);
begin
  case cxRadioGroup3.EditValue of
    0, 1 : begin
      // По Акту
      cxButtonEdit14.Enabled := False;
      cxButtonEdit13.Enabled := False;
      cxButtonEdit12.Enabled := False;

      cxButtonEdit_Acts.Enabled := True;
      cxCheckBox12.Enabled := True;
    end;
    2 : begin
      // По ФК за период
      cxButtonEdit14.Enabled := True;
      cxButtonEdit13.Enabled := True;
      cxButtonEdit12.Enabled := True;

      cxButtonEdit_Acts.Enabled := False;
      // Авансовый
      cxCheckBox12.Enabled := False;
    end;

    // Пункта такого нет в группе, но мы можем его присвоитть программо для формирования УПД по Перевозкам
    // 3 - Формирование по sp_act_report_basic_SFH
    else begin
      // По ФК (формирование УПД)
      cxCheckBox1.Enabled := True;
      cxCheckBox2.Enabled := True;
      cxCheckBox1.Visible := True;
      cxCheckBox2.Visible := True;
      cxCheckBox1.Caption := 'Маршрут из Факта';
      cxCheckBox2.Caption := 'Груз из Факта';

      cxButtonEdit14.Enabled := False;
      cxButtonEdit13.Enabled := False;
      cxButtonEdit12.Enabled := False;

      cxButtonEdit_Acts.Enabled := False;
      // Авансовый
      cxCheckBox12.Enabled := False;
      // Сама группа выбора алгоритма
      cxRadioGroup3.Enabled := False;
    end;
  end;

  // очистим данные в таблице
  if not cxCheckBox12.Checked then
    SetActs(Fstr_acts_id)
  else
    SetPays(Fstr_pays_id);
end;

procedure TfmInvoiceScoreAdd.InsertInvoiceRecord(bargain_id : integer);
var SP_bargain_CALC_add : TADOStoredProc;
    Query               : TADOQuery;
    Query_tmp           : TADOQuery;
//    add_val_vohr        : Variant;
//    add_val_all         : Variant;
    cost_with_nds       : Currency;
    test_return         : boolean;
begin

  Query_tmp := TADOQuery.Create(nil);
  Query_tmp.Connection := Fconnect;

  Query := TADOQuery.Create(nil);
  Query.Connection := Fconnect;
  Query.SQL.Add('SELECT *, ' +
                'ServiceKind = dbo.func_GetBargainServiceKind(bargain_id, service_kind_INV, bargain_acts_note, 0) ' +
                'FROM view_bargain WHERE bargain_id = ' + IntToStr(bargain_id));
  Query.Open;

  SP_bargain_CALC_add := TADOStoredProc.Create(nil);
  SP_bargain_CALC_add.Connection := Fconnect;
  SP_bargain_CALC_add.ProcedureName := 'sp_bargain_CALC_add;1';

//  // Считаем ВОХР
//  if cxCheckBox1.Checked then begin
//    SP_bargain_CALC_add.Close;
//    SP_bargain_CALC_add.Parameters.Refresh;
//    SP_bargain_CALC_add.Parameters.ParamByName('@global_id').Value   := Query.FieldByName('bargain_id').AsInteger;
//    SP_bargain_CALC_add.Parameters.ParamByName('@add_vid_cod').Value := '000';
//    SP_bargain_CALC_add.Parameters.ParamByName('@add_val').Value     := null;
//    SP_bargain_CALC_add.ExecProc;
//    add_val_vohr := SP_bargain_CALC_add.Parameters.ParamByName('@add_val').Value;
//
//    if add_val_vohr = 0 then add_val_vohr := null;
//  end else begin
//    add_val_vohr := null;
//  end;
//  if add_val_vohr <> null then begin
//    // Доп. сборы приходят в валюте приложения
//    add_val_vohr := add_val_vohr * GetLocalExchange(Query.FieldByName('currency_id').AsInteger, Query_Currency['currency_id']);
//    add_val_vohr :=  RoundCurr(add_val_vohr, -2);
//  end;

//  // Считаем Все Доп. Сборы
//  if cxCheckBox2.Checked then begin
//    SP_bargain_CALC_add.Close;
//    SP_bargain_CALC_add.Parameters.Refresh;
//    SP_bargain_CALC_add.Parameters.ParamByName('@global_id').Value   := Query.FieldByName('bargain_id').AsInteger;
//    SP_bargain_CALC_add.Parameters.ParamByName('@add_vid_cod').Value := null;
//    SP_bargain_CALC_add.Parameters.ParamByName('@add_val').Value     := null;
//    SP_bargain_CALC_add.ExecProc;
//    add_val_all := SP_bargain_CALC_add.Parameters.ParamByName('@add_val').Value;
//
//    if add_val_all = 0 then add_val_all := null;
//  end else begin
//    add_val_all := null;
//  end;
//  if add_val_all <> null then begin
//    // Доп. сборы приходят в валюте приложения
//    add_val_all := add_val_all * GetLocalExchange(Query.FieldByName('currency_id').AsInteger, Query_Currency['currency_id']);
//    add_val_all := RoundCurr(add_val_all, -2);
//  end;

//  // При необходимости вычитаем ВОХР из Доп. сборов
//  if (add_val_all <> null) and (add_val_vohr <> null) then
//    add_val_all := add_val_all - add_val_vohr;

//  // Нули в Доп.Сборах не выводим
//  if add_val_vohr = 0 then
//    add_val_vohr := null;
//  if add_val_all = 0 then
//    add_val_all := null;

  // Добавляем основную запись
  // Сумма
  cost_with_nds := Query.FieldByName('bargain_sum_fact').AsCurrency;
  cost_with_nds := cost_with_nds * GetLocalExchange(Query.FieldByName('currency_id').AsInteger, Query_Currency['currency_id']);
  cost_with_nds := RoundCurr(cost_with_nds, -2);
//  // При необходимости вычитаем Доп. сборы и ВОХР
//  if add_val_vohr <> null then cost_with_nds := cost_with_nds - add_val_vohr;
//  if add_val_all <> null then cost_with_nds := cost_with_nds - add_val_all;

  // Проверка - возврат или нет
  test_return := (Query.FieldByName('bargain_correct_type').AsInteger <> 1); // не удаляющее приложение
  test_return := test_return and (cost_with_nds < 0); // отридцательная сумма

  // добавлем запись, если это возврат и возведен соответсвующий флаг или если не возврат и нет флага
  if test_return = (cxCheckBox3.Checked or cxCheckBox4.Checked) then begin
    Client_InvoiceScoreTable.Append;
    Client_InvoiceScoreTable['bargain_id']   := Query.FieldByName('bargain_id').AsInteger;
    Client_InvoiceScoreTable['name_service'] := Query.FieldByName('ServiceKind').AsString;
    Client_InvoiceScoreTable['service_cod']  := Query.FieldByName('service_kind_cod').Value;
    Client_InvoiceScoreTable['ed_izm_cod']   := Query.FieldByName('ed_izm_cod').AsString;
    Client_InvoiceScoreTable['ed_izm_name']  := Query.FieldByName('ed_izm_name').AsString;
    if (Query.FieldByName('ed_izm_cod').AsString = '000') or (Query.FieldByName('ed_izm_cod').AsString = '004') then
      Client_InvoiceScoreTable['quantity']   := Query.FieldByName('amount_fact').AsCurrency
    else
      Client_InvoiceScoreTable['quantity']   := Query.FieldByName('amount_units_fact').AsInteger;

    Client_InvoiceScoreTable['tax_rate_id']   := Query.FieldByName('bargain_nds_id').AsInteger;
    Client_InvoiceScoreTable['cost_with_nds'] := abs(cost_with_nds);

    Client_InvoiceScoreTable.Post;
  end;

//  // Добавляем запись ВОХР
//  if add_val_vohr <> null then begin
//    // Проверка - возврат или нет
//    test_return := (Query.FieldByName('bargain_correct_type').AsInteger <> 1); // не удаляющее приложение
//    test_return := test_return and (add_val_vohr < 0); // отридцательная сумма
//
//    // добавлем запись, если это возврат и возведен соответсвующий флаг или если не возврат и нет флага
//    if test_return = (cxCheckBox3.Checked or cxCheckBox4.Checked) then begin
//      Query_tmp.Close;
//      Query_tmp.SQL.Clear;
//      Query_tmp.SQL.Add('SELECT TOP 1 *, ServiceKind = dbo.func_GetBargainServiceKind(add_rate_id, add_service_kind_inv, add_comment, 0)');
//      Query_tmp.SQL.Add('from dbo.view_add_collection');
//      Query_tmp.SQL.Add('where client_agent = 0');
//      Query_tmp.SQL.Add('and add_vid_cod = ''000''');
//      Query_tmp.SQL.Add('and add_rate_id = ' + Query.FieldByName('bargain_id').AsString);
//      Query_tmp.Open;
//
//      Client_InvoiceScoreTable.Append;
//      Client_InvoiceScoreTable['bargain_id']    := Query.FieldByName('bargain_id').AsInteger;
//      Client_InvoiceScoreTable['name_service']  := Query_tmp.FieldByName('ServiceKind').AsString;
//      Client_InvoiceScoreTable['service_cod']   := Query_tmp.FieldByName('add_service_kind_cod').Value;
//      Client_InvoiceScoreTable['ed_izm_cod']    := '---';
//      Client_InvoiceScoreTable['ed_izm_name']   := '---';
//      Client_InvoiceScoreTable['quantity']      := null;
//      Client_InvoiceScoreTable['tax_rate_id']   := Query.FieldByName('bargain_nds_id').AsInteger;
//      Client_InvoiceScoreTable['cost_with_nds'] := abs(add_val_vohr);
//      Client_InvoiceScoreTable.Post;
//    end;
//  end;

//  // Добавляем запись Доп. сборы
//  if add_val_all <> null then begin
//    // Проверка - возврат или нет
//    test_return := (Query.FieldByName('bargain_correct_type').AsInteger <> 1); // не удаляющее приложение
//    test_return := test_return and (add_val_all < 0); // отридцательная сумма
//
//    // добавлем запись, если это возврат и возведен соответсвующий флаг или если не возврат и нет флага
//    if test_return = (cxCheckBox3.Checked or cxCheckBox4.Checked) then begin
//      Query_tmp.Close;
//      Query_tmp.SQL.Clear;
//      Query_tmp.SQL.Add('SELECT TOP 1 *, ServiceKind = dbo.func_GetBargainServiceKind(add_rate_id, add_service_kind_inv, add_comment, 0)');
//      Query_tmp.SQL.Add('from dbo.view_add_collection');
//      Query_tmp.SQL.Add('where client_agent = 0');
//      if cxCheckBox1.Checked then // Если ВОХР выделяется, то берем любой Доп.Сбор отличный от ВОХР
//        Query_tmp.SQL.Add('and add_vid_cod <> ''000''');
//      Query_tmp.SQL.Add('and add_rate_id = ' + Query.FieldByName('bargain_id').AsString);
//      Query_tmp.Open;
//
//      Client_InvoiceScoreTable.Append;
//      Client_InvoiceScoreTable['bargain_id']    := Query.FieldByName('bargain_id').AsInteger;
//      Client_InvoiceScoreTable['name_service']  := Query_tmp.FieldByName('ServiceKind').AsString;
//      Client_InvoiceScoreTable['service_cod']   := Query_tmp.FieldByName('add_service_kind_cod').Value;
//      Client_InvoiceScoreTable['ed_izm_cod']    := '---';
//      Client_InvoiceScoreTable['ed_izm_name']   := '---';
//      Client_InvoiceScoreTable['quantity']      := null;
//      Client_InvoiceScoreTable['tax_rate_id']   := Query.FieldByName('bargain_nds_id').AsInteger;
//      Client_InvoiceScoreTable['cost_with_nds'] := abs(add_val_all);
//      Client_InvoiceScoreTable.Post;
//    end;
//  end;

  SP_bargain_CALC_add.Free;
  Query.Free;
  Query_tmp.Free;
end;

procedure TfmInvoiceScoreAdd.UpdateInvoiceScore(invoice_score_id: integer);
var
  Query : TADOQuery;
begin
  Screen.Cursor := crHourglass;

  Caption := AnsiReplaceStr(Caption, '[Новая запись]', '[№ Записи = ' + IntToStr(invoice_score_id) + ']');

  Finvoice_score_id := invoice_score_id;
  Faction := False;

  Query := TADOQuery.Create(nil);
  Query.Connection := Fconnect;
  Query.SQL.Add('SELECT * FROM view_invoice_score WHERE invoice_score_id = ' + IntToStr(invoice_score_id));
  Query.Open;

  Fold_num := '';
  DateTimePicker3.Date        := Query.FieldByName('score_date').AsDateTime;
  cxTextEdit1.Text            := Query.FieldByName('score_cod').AsString;

  cxTextEdit3.EditValue       := Query.FieldByName('correction_cod').Value;
  cxDateEdit1.EditValue       := Query.FieldByName('correction_date').Value;
  cxCheckBox12.Checked        := Query.FieldByName('set_avance').AsBoolean;

  cxComboBox1.ItemIndex       := iif(Query.FieldByName('set_universal_trans_doc').AsBoolean, 1, 0);
  if Query.FieldByName('type_universal_trans_doc').AsInteger = 2 then
    cxComboBox2.ItemIndex := 1
  else
    cxComboBox2.ItemIndex := 0;

  SetContractID(Query.FieldByName('contract_id').AsInteger, Query.FieldByName('firm_self').AsInteger);

  cxButtonEdit1.Text          := Query.FieldByName('firm_customer_name').AsString;
  cxTextEdit2.Text            := Query.FieldByName('contract_cod').AsString;
  cxLookupComboBox2.EditValue := Query.FieldByName('currency_id').AsInteger;

  cxButtonEdit14.Text         := FormatFloat('#,##0.0000', Query.FieldByName('exchange_val_USD').AsCurrency);
  cxButtonEdit13.Text         := FormatFloat('#,##0.0000', Query.FieldByName('exchange_val_EUR').AsCurrency);
  cxButtonEdit12.Text         := FormatFloat('#,##0.0000', Query.FieldByName('exchange_val_CHF').AsCurrency);

  ComboBox2.ItemIndex         := StrToInt(FormatDateTime('m', Query.FieldByName('score_period_date').AsDatetime)) - 1;
  ComboBox3.ItemIndex         := ComboBox3.Properties.Items.IndexOf(Query.FieldByName('score_period_date_year').AsString);

  // подписанты - руководитель
  if not Query.FieldByName('firm_director_id').IsNull then begin
    Ffirm_director_id         := Query.FieldByName('firm_director_id').AsInteger;
    cxButtonEdit7.Text        := Query.FieldByName('firm_director_name').AsString;
    if Query.FieldByName('firm_director_comment').AsString <> '' then
      cxButtonEdit7.Text := cxButtonEdit7.Text + ' (' + Query.FieldByName('firm_director_comment').AsString + ')';
  end;

  // подписанты - гл.бухгалтер
  if not Query.FieldByName('firm_buh_id').IsNull then begin
    Ffirm_buh_id              := Query.FieldByName('firm_buh_id').AsInteger;
    cxButtonEdit11.Text       := Query.FieldByName('firm_buh_name').AsString;
    if Query.FieldByName('firm_buh_comment').AsString <> '' then
      cxButtonEdit11.Text := cxButtonEdit11.Text + ' (' + Query.FieldByName('firm_buh_comment').AsString + ')';
  end;

  // подписанты - товар передал
  if not Query.FieldByName('firm_seller_id').IsNull then begin
    Ffirm_seller_id           := Query.FieldByName('firm_seller_id').AsInteger;
    cxButtonEdit16.Text       := Query.FieldByName('firm_seller_name').AsString;
    if Query.FieldByName('firm_seller_comment').AsString <> '' then
      cxButtonEdit16.Text := cxButtonEdit16.Text + ' (' + Query.FieldByName('firm_seller_comment').AsString + ')';
  end;

  cxCheckBox3.Checked         := Query.FieldByName('set_return').AsBoolean;
  cxCheckBox4.Checked         := Query.FieldByName('set_clearing').AsBoolean;
  cxCheckBox7.Checked         := Query.FieldByName('set_okei').AsBoolean;
  cxCheckBox10.Checked        := Query.FieldByName('set_type_total').AsBoolean;
  cxTextEdit5.Text            := Query.FieldByName('score_comment').AsString;

  Fstr_acts_id := GetIDFromSQL('SELECT acts_id FROM acts_invoice_score WHERE invoice_score_id = ' + IntToStr(Finvoice_score_id), Fconnect);
  Fstr_pays_id := GetIDFromSQL('SELECT pay_id FROM pay_invoice_score WHERE invoice_score_id = ' + IntToStr(Finvoice_score_id), Fconnect);
  if not Query.FieldByName('set_avance').AsBoolean then
    SetActs(Fstr_acts_id)
  else
    SetPays(Fstr_pays_id);

  // Шапка
  cxButtonEdit2.EditValue  := Query.FieldByName('score_firm_self_name_full').Value;
  cxButtonEdit3.EditValue  := Query.FieldByName('score_firm_self_address').Value;
  cxButtonEdit4.EditValue  := Query.FieldByName('score_firm_self_inn_kpp').Value;
  cxButtonEdit5.EditValue  := Query.FieldByName('score_firm_sender_name').Value;
  cxButtonEdit6.EditValue  := Query.FieldByName('score_firm_reciver_name').Value;
  cxButtonEdit17.EditValue := Query.FieldByName('score_pay').Value;
  Fstr_score_pay_id        := Query.FieldByName('str_score_pay_id').AsString;
  cxButtonEdit8.EditValue  := Query.FieldByName('score_firm_customer_name_full').Value;
  cxButtonEdit9.EditValue  := Query.FieldByName('score_firm_customer_address').Value;
  cxButtonEdit10.EditValue := Query.FieldByName('score_firm_customer_inn_kpp').Value;
  cxTextEdit6.EditValue    := Query.FieldByName('score_ID_state_contract').Value;
  cxButtonEdit15.EditValue := Query.FieldByName('score_contract_name').Value;

  // Настройка печати
  cxCheckBox9.Checked     := Query.FieldByName('set_print_contract').AsBoolean;
  cxCheckBox11.Checked    := Query.FieldByName('set_print_contract_full').AsBoolean;
  cxCheckBox13.Checked    := Query.FieldByName('set_print_taxagent').AsBoolean;
  // и только потом перечитаем, что у нас хранится
  cxButtonEdit15.EditValue := Query.FieldByName('score_contract_name').Value;

  cxCheckBox5.Checked     := Query.FieldByName('set_print_comment').AsBoolean;
  Fset_print_empty_ed_izm := Query.FieldByName('set_print_empty_ed_izm').AsBoolean;
  cxCheckBox6.Checked     := Query.FieldByName('set_not_print_ed_izm').AsBoolean;
  cxRadioGroup3.EditValue := Query.FieldByName('calc_type').AsInteger;

  cxCheckBox8.Checked     := not Query.FieldByName('score_doc_type_name').IsNull;
  cxTextEdit4.Enabled     := cxCheckBox8.Checked;
  cxTextEdit4.EditValue   := Query.FieldByName('score_doc_type_name').Value;

  // Использование части строк акта
  if Fstr_acts_id <> '' then begin
    Query.Close;
    Query.SQL.Clear;
    Query.SQL.Add('SELECT TOP 1 bargain_id FROM ACTS_BARGAIN WHERE acts_id IN (' + Fstr_acts_id + ') and invoice_score_id = ' + IntToStr(invoice_score_id) + ' ');
    Query.Open;
    // у акта проставлена наша СчФ, занчит она была построена по части строк Акта
    Fset_use_part := not Query.Eof;
  end;

  // Список используемых в СФ перевозок
  Fstr_bargain_id_3 := '';
  // Таблица
  Query.Close;
  Query.SQL.Clear;
  Query.SQL.Add('SELECT * FROM invoice_score_table WHERE invoice_score_id = ' + IntToStr(invoice_score_id) + ' ORDER BY invoice_score_table_id');
  Query.Open;
  Client_InvoiceScoreTable.AutoCalcFields := False;
  Client_InvoiceScoreTable.EmptyDataSet;
  Client_InvoiceScoreTable.DisableControls;
  while not Query.Eof do begin
      ShowTextMessage('Осталось строк ' + IntToStr(Query.RecordCount - Query.RecNo + 1) + '...', False);
      Client_InvoiceScoreTable.Append;
      Client_InvoiceScoreTable['tax_rate_id']             := Query['tax_rate_id'];

      Client_InvoiceScoreTable['set_hand_edit']           := Query['set_hand_edit'];
      Client_InvoiceScoreTable['name_service']            := Query['name_service'];
      Client_InvoiceScoreTable['service_cod']             := Query['service_cod'];
      Client_InvoiceScoreTable['ed_izm_cod']              := Query['ed_izm_cod'];
      Client_InvoiceScoreTable['ed_izm_name']             := Query['ed_izm_name'];
      Client_InvoiceScoreTable['quantity']                := Query['quantity'];
      Client_InvoiceScoreTable['price_ed_izm']            := Query['price_ed_izm'];
      Client_InvoiceScoreTable['cost_without_nds']        := Query['cost_without_nds'];
      Client_InvoiceScoreTable['aktciz']                  := Query['aktciz'];
      Client_InvoiceScoreTable['tax_sum']                 := Query['tax_sum'];
      Client_InvoiceScoreTable['cost_with_nds']           := Query['cost_with_nds'];
      Client_InvoiceScoreTable['state_cod']               := Query['state_cod'];
      Client_InvoiceScoreTable['state_name']              := Query['state_name'];
      Client_InvoiceScoreTable['num_customs_declaration'] := Query['num_customs_declaration'];
      Client_InvoiceScoreTable['bargain_id']              := Query['bargain_id'];

      if not Query.FieldByName('bargain_id').IsNull
      and (Pos(',' + Query.FieldByName('bargain_id').AsString + ',', ',' + Fstr_bargain_id_3 + ',') = 0) then begin
        if Fstr_bargain_id_3 = '' then Fstr_bargain_id_3 := Fstr_bargain_id_3 + ',';
        Fstr_bargain_id_3 := Fstr_bargain_id_3 + Query.FieldByName('bargain_id').AsString;
      end;

      Client_InvoiceScoreTable.Post;
      Query.Next;
  end;

  Query.Free;
  
  Client_InvoiceScoreTable.First;
  Client_InvoiceScoreTable.EnableControls;
  Client_InvoiceScoreTable.AutoCalcFields := True;
  ShowTextMessage();

  MonitorEventFormOpen('UPDATE_FORM', self.Name, fmMain.Lis, Finvoice_score_id);
  Screen.Cursor := crDefault;
end;

procedure TfmInvoiceScoreAdd.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if Fset_run_dll then Fconnect.Free;
  Action := caFree;
  if Fset_save then
    Self.ModalResult := mrOk;
end;

// Процедура заполняет значения Продавца по данным подрядчика
// Нужна для формирования с-ф по Отчетам на возмещение
procedure TfmInvoiceScoreAdd.SetContractAgentID(contract_id: integer);
var
  Query         : TADOQuery;
  Query_Customer_Address : TADOQuery;
  firm_customer_id : integer;
  d1 : TDate;
begin
  Query := TADOQuery.Create(self);
  Query.Connection := Fconnect;
  Query.SQL.Add('SELECT * FROM view_contract WHERE contract_id = ' + IntToStr(contract_id));
  Query.Open;

  firm_customer_id  := iif(Query.FieldByName('firm_customer').IsNull, -9, Query.FieldByName('firm_customer').AsInteger);

  if cxDateEdit1.EditValue <> null then
    d1 := cxDateEdit1.EditValue
  else
    if DateTimePicker3.EditValue <> null then
      d1 := DateTimePicker3.EditValue
    else
      d1 := Date;

  Query_Customer_Address := TADOQuery.Create(self);
  Query_Customer_Address.Connection := Fconnect;
  Query_Customer_Address.SQL.Add('SELECT	TOP 1 firm_contact_name as firm_customer_address');
  Query_Customer_Address.SQL.Add('FROM	  view_firm_contact');
  Query_Customer_Address.SQL.Add('WHERE	  firm_id = ' + IntToStr(firm_customer_id));
  Query_Customer_Address.SQL.Add('        AND type_contact_cod = ''11'' ');
  Query_Customer_Address.SQL.Add('        AND ' + DateToSQL(d1) + ' BETWEEN date_begin AND ISNULL(date_end, ' + DateToSQL(d1) + ')');
  Query_Customer_Address.Open;

  if Ftype_score = 0 then begin
    cxButtonEdit2.Text := Query.FieldByName('firm_customer_name_full').AsString;
    cxButtonEdit3.Text := Query_Customer_Address.FieldByName('firm_customer_address').AsString;
    cxButtonEdit4.Text := Query.FieldByName('firm_customer_inn_kpp').AsString;
  end else begin
    cxButtonEdit8.Text := Query.FieldByName('firm_customer_name_full').AsString;
    cxButtonEdit9.Text := Query_Customer_Address.FieldByName('firm_customer_address').AsString;
    cxButtonEdit10.Text := Query.FieldByName('firm_customer_inn_kpp').AsString;
  end;
  Query.Free;

  Query_Customer_Address.Free;
end;

procedure TfmInvoiceScoreAdd.SetContractID(contract_id, firm_self_id: integer);
var
  Query,Q         : TADOQuery;
  Query_Contact   : TADOQuery;
  Query_Firm_Self : TADOQuery;
  str_pay         : string;
  Query_Self_Address     : TADOQuery;
  Query_Customer_Address : TADOQuery;
//  firm_self_id     : integer;
  firm_customer_id : integer;
  d1 : TDate;
begin
  Fcontract_id := contract_id;
  Ffirm_self_id := firm_self_id;

  // Дата с-ф = дата действия контакта
  if cxDateEdit1.EditValue <> null then
    d1 := cxDateEdit1.EditValue
  else
    if DateTimePicker3.EditValue <> null then
      d1 := DateTimePicker3.EditValue
    else
      d1 := Date;

  Query := TADOQuery.Create(self);
  Query.Connection := Fconnect;
  Query.SQL.Add('SELECT * FROM view_contract WHERE contract_id = ' + IntToStr(Fcontract_id));
  Query.Open;

//  firm_self_id      := iif(Query.FieldByName('firm_self').IsNull, -9, Query.FieldByName('firm_self').AsInteger);
  firm_customer_id  := iif(Query.FieldByName('firm_customer').IsNull, -9, Query.FieldByName('firm_customer').AsInteger);

  Query_Self_Address := TADOQuery.Create(self);
  Query_Self_Address.Connection := Fconnect;
  Query_Self_Address.SQL.Add('SELECT	TOP 1 firm_contact_name as firm_self_address');
  Query_Self_Address.SQL.Add('FROM	  view_firm_contact');
  Query_Self_Address.SQL.Add('WHERE	  firm_id = ' + IntToStr(firm_self_id));
  Query_Self_Address.SQL.Add('        AND type_contact_cod = ''11'' ');
  Query_Self_Address.SQL.Add('        AND ' + DateToSQL(d1) + ' BETWEEN date_begin AND ISNULL(date_end, ' + DateToSQL(d1) + ')');
  Query_Self_Address.Open;

  Query_Customer_Address := TADOQuery.Create(self);
  Query_Customer_Address.Connection := Fconnect;
  Query_Customer_Address.SQL.Add('SELECT	TOP 1 firm_contact_name as firm_customer_address');
  Query_Customer_Address.SQL.Add('FROM	  view_firm_contact');
  Query_Customer_Address.SQL.Add('WHERE	  firm_id = ' + IntToStr(firm_customer_id));
  Query_Customer_Address.SQL.Add('        AND type_contact_cod = ''11'' ');
  Query_Customer_Address.SQL.Add('        AND ' + DateToSQL(d1) + ' BETWEEN date_begin AND ISNULL(date_end, ' + DateToSQL(d1) + ')');
  Query_Customer_Address.Open;

  cxButtonEdit1.Text := Query.FieldByName('firm_customer_name').AsString;
  cxTextEdit2.Text   := Query.FieldByName('contract_cod').AsString;
  cxLookupComboBox2.EditValue := Query.FieldByName('currency_id').AsInteger;

  Query_Contact := TADOQuery.Create(self);
  Query_Contact.Connection := Fconnect;
  Query_Contact.SQL.Add('SELECT TOP 1 firm_contact_id, firm_contact_name, firm_contact_comment FROM view_firm_contact');
  Query_Contact.SQL.Add('WHERE firm_id = ' + IntToStr(firm_self_id));
  Query_Contact.SQL.Add('AND type_contact_cod BETWEEN ''20'' AND ''99'' AND type_contact_cod NOT IN (''23'', ''24'')');
  Query_Contact.SQL.Add('AND ' + DateToSQL(d1) + ' BETWEEN date_begin AND ISNULL(date_end, ' + DateToSQL(d1) + ')');
  if Fset_act2upd then
    Query_Contact.SQL.Add('ORDER BY set_default DESC, type_contact_cod, firm_contact_name')
  else
    Query_Contact.SQL.Add('ORDER BY set_default DESC, type_contact_cod, firm_contact_name');

  Query_Contact.Open;

  // руководитель
  if Query_Contact.Eof then begin
    Ffirm_director_id := -9;
    cxButtonEdit7.Text := '';
  end else begin
    Ffirm_director_id := Query_Contact.FieldByName('firm_contact_id').AsInteger;
    cxButtonEdit7.Text := Query_Contact.FieldByName('firm_contact_name').AsString;
    if Query_Contact.FieldByName('firm_contact_comment').AsString <> '' then
      cxButtonEdit7.Text := cxButtonEdit7.Text + ' (' + Query_Contact.FieldByName('firm_contact_comment').AsString + ')'
  end;

  Query_Contact.Close;
  Query_Contact.SQL.Strings[2] := 'AND type_contact_cod IN (''23'', ''24'')';
  Query_Contact.Open;

  // гла.бухгалтер
  if Query_Contact.Eof then begin
    Ffirm_buh_id := -9;
    cxButtonEdit11.Text := '';
  end else begin
    Ffirm_buh_id := Query_Contact.FieldByName('firm_contact_id').AsInteger;
    cxButtonEdit11.Text := Query_Contact.FieldByName('firm_contact_name').AsString;
    if Query_Contact.FieldByName('firm_contact_comment').AsString <> '' then
      cxButtonEdit11.Text := cxButtonEdit11.Text + ' (' + Query_Contact.FieldByName('firm_contact_comment').AsString + ')';
  end;

  Query_Contact.Free;

  Query_Firm_Self := TADOQuery.Create(self);
  Query_Firm_Self.Connection := Fconnect;
  Query_Firm_Self.SQL.Add('SELECT * FROM view_firm WHERE firm_id = ' + IntToStr(firm_self_id));
  Query_Firm_Self.Open;


  if Ftype_score = 0 then begin
    cxButtonEdit2.Text := Query_Firm_Self.FieldByName('firm_name_full').AsString;
    cxButtonEdit3.Text := Query_Self_Address.FieldByName('firm_self_address').AsString;
    cxButtonEdit4.Text := Query_Firm_Self.FieldByName('inn_kpp').AsString;

    cxButtonEdit5.Text := '-';
    cxButtonEdit6.Text := '-';

    cxButtonEdit8.Text  := Query.FieldByName('firm_customer_name_full').AsString;
    cxButtonEdit9.Text  := Query_Customer_Address.FieldByName('firm_customer_address').AsString;
    cxButtonEdit10.Text := Query.FieldByName('firm_customer_inn_kpp').AsString;
    cxTextEdit6.Text    := Query.FieldByName('igk_cod').AsString;

    if (Fcontract_id <> -9)  and (Ffirm_self_id <> -9) then begin
      // Выводить Договор + Стороны
      if cxCheckBox11.Checked then
        cxButtonEdit15.Text := '№ ' + Query.FieldByName('contract_cod').AsString + ' от ' + FormatDateTime('dd.mm.yyyy г.', Query.FieldByName('date_begin').AsDateTime)
                            + ' между '  + Query_Firm_Self.FieldByName('firm_name_short').AsString + ' и ' + Query.FieldByName('firm_customer_name_short').AsString
      // Выводить Договор
      else if cxCheckBox9.Checked then
        cxButtonEdit15.Text := '№ ' + Query.FieldByName('contract_cod').AsString + ' от ' + FormatDateTime('dd.mm.yyyy г.', Query.FieldByName('date_begin').AsDateTime)
      // Ничего не выводим
      else
        cxButtonEdit15.Text := '';
    end else
      cxButtonEdit15.Text := '';

    if MatchText(Facts_type_cod, ['253','308','306','309','375','404']) then begin
      cxButtonEdit2.Text := Query_Firm_Self.FieldByName('firm_name_full').AsString;

      cxButtonEdit5.Text := '-';
      cxButtonEdit6.Text := '-';

      cxButtonEdit8.Text := Query.FieldByName('firm_customer_name_eng').AsString;
    end;

  end else begin
    cxButtonEdit2.Text := Query.FieldByName('firm_customer_name_full').AsString;
    cxButtonEdit3.Text := Query_Customer_Address.FieldByName('firm_customer_address').AsString;
    cxButtonEdit4.Text := Query.FieldByName('firm_customer_inn_kpp').AsString;

    cxButtonEdit5.Text := '-';
    cxButtonEdit6.Text := '-';

    cxButtonEdit8.Text := Query_Firm_Self.FieldByName('firm_name_full').AsString;
    cxButtonEdit9.Text := Query_Self_Address.FieldByName('firm_self_address').AsString;
    cxButtonEdit10.Text := Query_Firm_Self.FieldByName('inn_kpp').AsString;

    if (Fcontract_id <> -9)  and (Ffirm_self_id <> -9) then begin
      // Выводить Договор + Стороны
      if cxCheckBox11.Checked then
        cxButtonEdit15.Text := '№ ' + Query.FieldByName('contract_cod').AsString + ' от ' + FormatDateTime('dd.mm.yyyy г.', Query.FieldByName('date_begin').AsDateTime)
                            + ' между '  + Query_Firm_Self.FieldByName('firm_name_short').AsString + ' и ' + Query.FieldByName('firm_customer_name_short').AsString
      // Выводить Договор
      else if cxCheckBox9.Checked then
        cxButtonEdit15.Text := '№ ' + Query.FieldByName('contract_cod').AsString + ' от ' + FormatDateTime('dd.mm.yyyy г.', Query.FieldByName('date_begin').AsDateTime)
      // Ничего не выводим
      else
        cxButtonEdit15.Text := '';
    end else
      cxButtonEdit15.Text := '';

    if MatchText(Facts_type_cod, ['253','308','306','309','375','404']) then begin
      cxButtonEdit2.Text := Query.FieldByName('firm_customer_name_eng').AsString;

      cxButtonEdit5.Text := '-';
      cxButtonEdit6.Text := '-';

      cxButtonEdit8.Text := Query_Firm_Self.FieldByName('firm_name_full').AsString;
    end;
  end;

  Query_Firm_Self.Free;
  Query.Free;

  cxButtonEdit17.EditValue := Null;
  Fstr_score_pay_id := '';
  if contract_id <> - 9 then begin
    Query := TADOQuery.Create(nil);
    Query.Connection := Fconnect;
    Query.SQL.Add('SELECT * FROM view_pay WHERE YEAR(pay_date) = ' + ComboBox3.Text + ' AND MONTH(pay_date) = ' + IntToStr(ComboBox2.ItemIndex + 1) + ' AND contract_id =' + IntToStr(contract_id) + ' AND type_pay = 0');
    Query.Open;
    str_pay := '';
    while not Query.Eof do begin
      if Query.FieldByName('incomming_cod').AsString <> '' then begin
        if str_pay <> '' then str_pay := str_pay + ', ';
        str_pay := str_pay + Query.FieldByName('incomming_cod').AsString + ' от '+ FormatDateTime('dd.mm.yyг.', Query.FieldByName('pay_date').AsDateTime);
        if Fstr_score_pay_id <> '' then Fstr_score_pay_id := Fstr_score_pay_id + ',';
        Fstr_score_pay_id := Fstr_score_pay_id + Query.FieldByName('pay_id').AsString;
      end;
      Query.Next;
    end;
    cxButtonEdit17.EditValue := str_pay;
    Query.Free;
  end;

  Query_Self_Address.Free;
  Query_Customer_Address.Free;
end;

procedure TfmInvoiceScoreAdd.cxButton1Click(Sender: TObject);
var
  SP_InvoiceScore      : TADOStoredProc;
  file_name : string;
  AStream  : TMemoryStream;
  s,s1     : TStringStream;
  files_data : TArray<Byte>;
  d1 : TDate;
begin
  if Client_InvoiceScoreTable.State in [dsEdit, dsInsert] then
    Client_InvoiceScoreTable.Post;

  if (Fcontract_id = -9) then begin
    Application.MessageBox('Не выбран клиент!', 'Внимание', MB_OK or MB_ICONEXCLAMATION);
    ModalResult := mrNone;
    exit;
  end;
  if Client_InvoiceScoreTable.RecordCount = 0 then begin
    Application.MessageBox('Не определены перевозки в счёт-фактуре!', 'Внимание', MB_OK or MB_ICONEXCLAMATION);
    ModalResult := mrNone;
    exit;
  end;

  if (cxLookupComboBox2.EditValue = null) then begin
    Application.MessageBox('Не определена валюта счёт-фактуры!', 'Внимание', MB_OK or MB_ICONEXCLAMATION);
    ModalResult := mrNone;
    exit;
  end;


  if cxDateEdit1.EditValue <> null then
    d1 := cxDateEdit1.EditValue
  else
    if DateTimePicker3.EditValue <> null then
      d1 := DateTimePicker3.EditValue
    else
      d1 := Date;

  if not CheckSigner(Ffirm_self_id, Ffirm_director_id, Ffirm_buh_id, d1, Fconnect) then begin
    ModalResult := mrNone;
    exit;
  end;

  // ---------------------------------------------------------------------
  Screen.Cursor := crHourglass;

  SP_InvoiceScore := TADOStoredProc.Create(self);
  SP_InvoiceScore.Connection := Fconnect;
  SP_InvoiceScore.ProcedureName := 'sp_invoice_score_modify';
  SP_InvoiceScore.CommandTimeout := 300;
  SP_InvoiceScore.Parameters.Refresh;

  SP_InvoiceScore.Parameters.ParamByName('@type_action').Value                   := iif(Finvoice_score_id = -9, 0, 1);
                                                                                //iif(Faction, 0, 1);
  SP_InvoiceScore.Parameters.ParamByName('@invoice_score_id').Value              := Finvoice_score_id;
  SP_InvoiceScore.Parameters.ParamByName('@set_universal_trans_doc').Value       := (cxComboBox1.ItemIndex = 1);
  SP_InvoiceScore.Parameters.ParamByName('@type_universal_trans_doc').Value      := cxComboBox2.ItemIndex + 1;
  SP_InvoiceScore.Parameters.ParamByName('@set_avance').Value                    := cxCheckBox12.Checked;
  SP_InvoiceScore.Parameters.ParamByName('@score_cod').Value                     := iif(cxTextEdit1.EditValue = Fold_num, null, cxTextEdit1.EditValue);
  SP_InvoiceScore.Parameters.ParamByName('@score_date').Value                    := DateTimePicker3.EditValue;
  SP_InvoiceScore.Parameters.ParamByName('@correction_cod').Value                := cxTextEdit3.EditValue;
  SP_InvoiceScore.Parameters.ParamByName('@correction_date').Value               := cxDateEdit1.EditValue;
  SP_InvoiceScore.Parameters.ParamByName('@score_period_date').Value             := EncodeDate(StrToInt(ComboBox3.Text), ComboBox2.ItemIndex + 1, 15);
  SP_InvoiceScore.Parameters.ParamByName('@contract_id').Value                   := Fcontract_id;
  SP_InvoiceScore.Parameters.ParamByName('@score_sum').Value                     := StrToCurr(FormatFloat('0.00', cxGrid1DBBandedTableView1.DataController.Summary.FooterSummaryValues[0]));
  SP_InvoiceScore.Parameters.ParamByName('@currency_id').Value                   := cxLookupComboBox2.EditValue;

  SP_InvoiceScore.Parameters.ParamByName('@exchange_val_USD').Value              := StrToCurr(cxButtonEdit14.Text);
  SP_InvoiceScore.Parameters.ParamByName('@exchange_val_EUR').Value              := StrToCurr(cxButtonEdit13.Text);
  SP_InvoiceScore.Parameters.ParamByName('@exchange_val_CHF').Value              := StrToCurr(cxButtonEdit12.Text);

  SP_InvoiceScore.Parameters.ParamByName('@firm_director_id').Value              := iif(Ffirm_director_id = -9, null, Ffirm_director_id);
  SP_InvoiceScore.Parameters.ParamByName('@firm_buh_id').Value                   := iif(Ffirm_buh_id = -9, null, Ffirm_buh_id);
  SP_InvoiceScore.Parameters.ParamByName('@firm_seller_id').Value                := iif(Ffirm_seller_id = -9, null, Ffirm_seller_id);
  SP_InvoiceScore.Parameters.ParamByName('@type_invoice_score').Value            := Ftype_score;
  SP_InvoiceScore.Parameters.ParamByName('@set_return').Value                    := cxCheckBox3.Checked;
  SP_InvoiceScore.Parameters.ParamByName('@set_clearing').Value                  := cxCheckBox4.Checked;
  SP_InvoiceScore.Parameters.ParamByName('@set_okei').Value                      := cxCheckBox7.Checked;
  SP_InvoiceScore.Parameters.ParamByName('@set_type_total').Value                := cxCheckBox10.Checked;
  SP_InvoiceScore.Parameters.ParamByName('@set_print_contract').Value            := cxCheckBox9.Checked;
  SP_InvoiceScore.Parameters.ParamByName('@set_print_contract_full').Value       := cxCheckBox11.Checked;
  SP_InvoiceScore.Parameters.ParamByName('@set_print_taxagent').Value            := cxCheckBox13.Checked;
  SP_InvoiceScore.Parameters.ParamByName('@set_print_comment').Value             := cxCheckBox5.Checked;
  SP_InvoiceScore.Parameters.ParamByName('@set_print_empty_ed_izm').Value        := Fset_print_empty_ed_izm;
  SP_InvoiceScore.Parameters.ParamByName('@set_not_print_ed_izm').Value          := cxCheckBox6.Checked;
  SP_InvoiceScore.Parameters.ParamByName('@calc_type').Value                     := cxRadioGroup3.EditValue;

  SP_InvoiceScore.Parameters.ParamByName('@score_comment').Value                 := cxTextEdit5.EditValue;

  SP_InvoiceScore.Parameters.ParamByName('@score_firm_self_name_full').Value     := cxButtonEdit2.EditValue;
  SP_InvoiceScore.Parameters.ParamByName('@score_firm_self_address').Value       := cxButtonEdit3.EditValue;
  SP_InvoiceScore.Parameters.ParamByName('@score_firm_self_inn_kpp').Value       := cxButtonEdit4.EditValue;
  SP_InvoiceScore.Parameters.ParamByName('@score_firm_sender_name').Value        := cxButtonEdit5.EditValue;
  SP_InvoiceScore.Parameters.ParamByName('@score_firm_reciver_name').Value       := cxButtonEdit6.EditValue;
  SP_InvoiceScore.Parameters.ParamByName('@score_pay').Value                     := cxButtonEdit17.EditValue;
  SP_InvoiceScore.Parameters.ParamByName('@str_score_pay_id').Value              := iif(Fstr_score_pay_id = '', null, Fstr_score_pay_id);
  SP_InvoiceScore.Parameters.ParamByName('@score_firm_customer_name_full').Value := cxButtonEdit8.EditValue;
  SP_InvoiceScore.Parameters.ParamByName('@score_firm_customer_address').Value   := cxButtonEdit9.EditValue;
  SP_InvoiceScore.Parameters.ParamByName('@score_firm_customer_inn_kpp').Value   := cxButtonEdit10.EditValue;
  SP_InvoiceScore.Parameters.ParamByName('@score_ID_state_contract').Value       := cxTextEdit6.EditValue;
  SP_InvoiceScore.Parameters.ParamByName('@score_contract_name').Value           := cxButtonEdit15.EditValue;

  SP_InvoiceScore.Parameters.ParamByName('@score_doc_type_name').Value           := iif(cxCheckBox8.Checked, cxTextEdit4.EditValue, null);

  SP_InvoiceScore.Parameters.ParamByName('@str_acts_id').Value                   := Fstr_acts_id;
  SP_InvoiceScore.Parameters.ParamByName('@str_pays_id').Value                   := Fstr_pays_id;
  SP_InvoiceScore.Parameters.ParamByName('@xml_score_table').Value               := FormatXMLData(Client_InvoiceScoreTable.XMLData);
  SP_InvoiceScore.Parameters.ParamByName('@set_use_part').Value                  := Fset_use_part;
  SP_InvoiceScore.Parameters.ParamByName('@set_act2upd').Value                   := Fset_act2upd;

  try
    SP_InvoiceScore.ExecProc;
    Finvoice_score_id := SP_InvoiceScore.Parameters.ParamByName('@invoice_score_id').Value;

    // сохранение с-ф ввиде файла
    SP_InvoiceScore.Close;

    file_name := ExtractFilePath(ParamStr(0)) + 'Temp\';
    file_name := file_name + 'InvScore_' + FormatDateTime('yyyymmdd', DateTimePicker3.Date) + '_' + IntToStr(Finvoice_score_id) + '.xls';

//    PrintInvoiceScore2012(IntToStr(Finvoice_score_id), Ftype_score, Fconnect, file_name);
    PrintInvoiceScore(IntToStr(Finvoice_score_id), Ftype_score, -9, Fconnect, file_name);

    AStream := TMemoryStream.Create;
    AStream.LoadFromFile(file_name);
    s := TStringStream.Create('');
    AStream.Seek(0, 0);
    s.CopyFrom(AStream, AStream.Size);
    files_data := LZHPack(s.Bytes, s.Size);
    s1 := TStringStream.Create(files_data);

    SP_InvoiceScore.Parameters.ParamByName('@type_action').Value      := 99;
    SP_InvoiceScore.Parameters.ParamByName('@invoice_score_id').Value := Finvoice_score_id;
    SP_InvoiceScore.Parameters.ParamByName('@str_bargain_id').Value   := Fstr_bargain_id_4;
    SP_InvoiceScore.Parameters.ParamByName('@score_file_name').Value  := ExtractFileName(file_name);
    SP_InvoiceScore.Parameters.ParamByName('@score_image').LoadFromStream(s1, ftBlob);
    SP_InvoiceScore.ExecProc;

    s.Free;
    s1.Free;
    AStream.Free;

    Fset_save := True;
    Faction   := False;

    if TcxButton(Sender).ModalResult = mrNone then
      Application.MessageBox(PChar('Cчёта-фактура (' + cxTextEdit1.Text + ') успешно сохранена.'), 'Сохранение', MB_OK or MB_ICONINFORMATION);

  except
    on E: Exception do begin
      Application.MessageBox(PChar(E.Message), 'Внимание', MB_OK);
      Screen.Cursor := crDefault;
      ModalResult := mrNone;
    end;
  end;

  SP_InvoiceScore.Free;
  Screen.Cursor := crDefault;
end;

procedure TfmInvoiceScoreAdd.cxButton2Click(Sender: TObject);
begin
  Close;
end;

procedure TfmInvoiceScoreAdd.cxButton4Click(Sender: TObject);
begin
  if cxCheckBox12.Checked = False then begin
    case cxRadioGroup3.EditValue of
      0: CalcInvoiceScoreAct;
      1: CalcInvoiceScoreAct;
      2: InsertInvoiceScore(0);
      3: CalcUPDBargain_3;
    end;
  end else begin
    CalcInvoiceScorePay;
  end;

  if cxCheckBox7.Checked then
    EdIzm2OKEI;
end;

procedure TfmInvoiceScoreAdd.cxButton5Click(Sender: TObject);
var
//  file_name : string;
  Q         : TADOQuery;
begin
  if (Fstr_acts_id = '') then
    exit;

  Q := TADOQuery.Create(nil);
  Q.Connection := Fconnect;
  Q.SQL.Add('SELECT acts_id FROM view_acts WHERE acts_id in (' + Fstr_acts_id + ')');
  Q.Open;

  while not Q.Eof do begin
//    file_name := 'Act_' + Q.FieldByName('acts_type_cod').AsString +
//                '_' + FormatDateTime('yyyymmddhhnnss', Now) + '_' + IntToStr(Q.RecNo) + '.xls';
//
//    LoadFileFromDB(file_name, Q.FieldByName('acts_image'), False);

    GetActsView(Q.FieldByName('acts_id').AsInteger, Fconnect, Fset_run_dll, Self);
    Q.Next;
  end;

  Q.Free;
end;

procedure TfmInvoiceScoreAdd.cxButtonEdit14KeyPress(Sender: TObject; var Key: Char);
begin
  if not (Key in ['0'..'9', FormatSettings.DecimalSeparator, #8])  then key := #0;
end;

procedure TfmInvoiceScoreAdd.cxButtonEdit14PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
var d1 : TDate;
begin
  if cxDateEdit1.EditValue <> null then
    d1 := cxDateEdit1.EditValue
  else
    if DateTimePicker3.EditValue <> null then
      d1 := DateTimePicker3.EditValue
    else
      d1 := Date;

  fmPeriod := TfmPeriod.Create(Application, d1, d1, 5);
  if fmPeriod.ShowModal = mrOK then begin
    case TComponent(Sender).Tag of
      1 : cxButtonEdit14.EditValue := FormatFloat('#,##0.0000', GetExchangeNew(1, fmPeriod._GetDateBegin, Fconnect, True));
      6 : cxButtonEdit13.EditValue := FormatFloat('#,##0.0000', GetExchangeNew(6, fmPeriod._GetDateBegin, Fconnect, True));
      5 : cxButtonEdit12.EditValue := FormatFloat('#,##0.0000', GetExchangeNew(5, fmPeriod._GetDateBegin, Fconnect, True));
    end;
  end;
end;

procedure TfmInvoiceScoreAdd.cxButtonEdit17PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
var
  _fmPay : TfmPay;
  Q : TADOQuery;
  SP : TADOStoredProc;
  str_pay : string;
begin
  case AButtonIndex of
    0 : begin
          _fmPay := TfmPay.Create(Application, 0, True);
          _fmPay._SetFilterPay(StartOfAMonth(StrToInt(ComboBox3.Text), ComboBox2.ItemIndex + 1), EndOfAMonth(StrToInt(ComboBox3.Text), ComboBox2.ItemIndex + 1), Fstr_score_pay_id, Fcontract_id);
          if _fmPay.ShowModal = mrOk then begin
            Fstr_score_pay_id := _fmPay._GetStrPayID;

            Q := TADOQuery.Create(nil);
            Q.Connection := Fconnect;
            if Fstr_score_pay_id = '' then
              Q.SQL.Add('SELECT * FROM view_pay WHERE pay_id = -9')
            else
              Q.SQL.Add('SELECT * FROM view_pay WHERE pay_id IN (' + Fstr_score_pay_id + ')');
            Q.Open;
            str_pay := '';
            while not Q.Eof do begin
              if Q.FieldByName('incomming_cod').AsString <> '' then begin
                if str_pay <> '' then str_pay := str_pay + ', ';
                str_pay := str_pay + Q.FieldByName('incomming_cod').AsString + ' от '+ FormatDateTime('dd.mm.yyг.', Q.FieldByName('pay_date').AsDateTime);
              end;
              Q.Next;
            end;
            cxButtonEdit17.EditValue := str_pay;
            Q.Free;
          end;
        end;
    1 : begin
          SP := TADOStoredProc.Create(nil);
          SP.Connection := Fconnect;
          SP.ProcedureName := 'sp_1c_invoice_score_pay_GET';
          SP.Parameters.Refresh;
          SP.Parameters.ParamByName('@sf_num'          ).Value := cxTextEdit1.EditValue;
          SP.Parameters.ParamByName('@sf_date'         ).Value := DateTimePicker3.EditValue;
          SP.Parameters.ParamByName('@users_group_id'  ).Value := Fusr_pwd_lis.user_group_id;
          SP.Parameters.ParamByName('@contract_id'     ).Value := Fcontract_id;

          try
            SP.Open;

            Fstr_score_pay_id := '';
            str_pay := '';
            while not SP.Eof do begin
              if SP.FieldByName('incomming_cod').AsString <> '' then begin
                if str_pay <> '' then str_pay := str_pay + ', ';
                str_pay := str_pay + SP.FieldByName('incomming_cod').AsString + ' от '+ FormatDateTime('dd.mm.yyг.', SP.FieldByName('pay_date').AsDateTime);
              end;
              if not SP.FieldByName('pay_id').IsNull then begin
                if Fstr_score_pay_id <> '' then Fstr_score_pay_id := Fstr_score_pay_id + ',';
                Fstr_score_pay_id := Fstr_score_pay_id + SP.FieldByName('pay_id').AsString;
              end;
              SP.Next;
            end;
            cxButtonEdit17.EditValue := str_pay;

          except on E: Exception do
            Application.MessageBox(PWideChar(E.Message), 'Внимание', MB_OK or MB_ICONERROR);
          end;

          SP.Free;
        end;
    2 : begin
          cxButtonEdit17.EditValue := null;
          Fstr_score_pay_id := '';
        end;
  end;
end;

procedure TfmInvoiceScoreAdd.cxButtonEdit1PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
var
  new_str : string;
  Query   : TADOQuery;
begin
  case AButtonIndex of
  0 : begin
        if InputQuery('Поиск', 'Шаблон поиска организации:', new_str) then begin
          Query := TADOQuery.Create(Self);
          Query.Connection := Fconnect;
          Query.SQL.Add('SELECT contract_id, firm_customer_name, firm_self_name, contract_cod, currency_id, note, firm_self');
          Query.SQL.Add(' , type_contract_name = CASE type_contract WHEN 0 THEN ''Клиент'' WHEN 1 THEN ''Агент'' WHEN 2 THEN ''Администрация'' ELSE ''---'' END');
          Query.SQL.Add('FROM view_contract_rights');
          Query.SQL.Add('WHERE firm_customer_name LIKE ''%' + new_str + '%''');
          Query.SQL.Add('AND date_begin_period <= ' + DateToSQL(EndOfAMonth(StrToInt(ComboBox3.Text), ComboBox2.ItemIndex + 1)));
          Query.SQL.Add('AND date_end >= ' + DateToSQL(StartOfAMonth(StrToInt(ComboBox3.Text), ComboBox2.ItemIndex + 1)));
          Query.SQL.Add('ORDER BY firm_customer_name, type_contract, contract_cod');
          Query.Open;
          fmFilter := TfmFilter.Create(0, Query, 'contract_id', 'contract_cod', 'firm_customer_name');
          fmFilter._SetContract4ScoreInvoice := True;
          fmFilter._SelectIndexColumn := 1;
          if fmFilter.ShowModal = mrOk then begin
            Query.Locate('contract_id', fmFilter.GetId, []);
            SetContractID(fmFilter.GetId, Query.FieldByName('firm_self').AsInteger);
            cxButtonEdit_ActsPropertiesButtonClick(cxButtonEdit_Acts, 1); // Очистить акты
          end;

          Query.Free;
        end;
      end;
  1 : begin
        SetContractID(-9, -9);
        cxButtonEdit_ActsPropertiesButtonClick(cxButtonEdit_Acts, 1); // Очистить акты
      end;
  end;
end;

procedure TfmInvoiceScoreAdd.cxButtonEdit2PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
var
  Query      : TADOQuery;
  Query_Firm_Self : TADOQuery;
  firm_self_id     : integer;
  firm_customer_id : integer;
  Query_Self_Address     : TADOQuery;
  Query_Customer_Address : TADOQuery;
  d1 : TDate;
begin
  // Дата с-ф = дата действия контакта
  if cxDateEdit1.EditValue <> null then
    d1 := cxDateEdit1.EditValue
  else
    if DateTimePicker3.EditValue <> null then
      d1 := DateTimePicker3.EditValue
    else
      d1 := Date;

  Query := TADOQuery.Create(self);
  Query.Connection := Fconnect;
  Query.SQL.Add('SELECT * FROM view_contract WHERE contract_id = ' + IntToStr(Fcontract_id));
  Query.Open;

//  firm_self_id      := iif(Query.FieldByName('firm_self').IsNull, -9, Query.FieldByName('firm_self').AsInteger);
  firm_self_id      := Ffirm_self_id;
  firm_customer_id  := iif(Query.FieldByName('firm_customer').IsNull, -9, Query.FieldByName('firm_customer').AsInteger);

  Query_Self_Address := TADOQuery.Create(self);
  Query_Self_Address.Connection := Fconnect;
  Query_Self_Address.SQL.Add('SELECT	TOP 1 firm_contact_name as firm_self_address');
  Query_Self_Address.SQL.Add('FROM	  view_firm_contact');
  Query_Self_Address.SQL.Add('WHERE	  firm_id = ' + IntToStr(firm_self_id));
  Query_Self_Address.SQL.Add('        AND type_contact_cod = ''11'' ');
  Query_Self_Address.SQL.Add('        AND ' + DateToSQL(d1) + ' BETWEEN date_begin AND ISNULL(date_end, ' + DateToSQL(d1) + ')');
  Query_Self_Address.Open;

  Query_Customer_Address := TADOQuery.Create(self);
  Query_Customer_Address.Connection := Fconnect;
  Query_Customer_Address.SQL.Add('SELECT	TOP 1 firm_contact_name as firm_customer_address');
  Query_Customer_Address.SQL.Add('FROM	  view_firm_contact');
  Query_Customer_Address.SQL.Add('WHERE	  firm_id = ' + IntToStr(firm_customer_id));
  Query_Customer_Address.SQL.Add('        AND type_contact_cod = ''11'' ');
  Query_Customer_Address.SQL.Add('        AND ' + DateToSQL(d1) + ' BETWEEN date_begin AND ISNULL(date_end, ' + DateToSQL(d1) + ')');
  Query_Customer_Address.Open;

  Query_Firm_Self := TADOQuery.Create(self);
  Query_Firm_Self.Connection := Fconnect;
  Query_Firm_Self.SQL.Add('SELECT * FROM view_firm WHERE firm_id = ' + IntToStr(firm_self_id));
  Query_Firm_Self.Open;

  if Ftype_score = 0 then begin
    case TControl(Sender).Tag of
      7..9:   begin
                cxButtonEdit2.Text  := Query_Firm_Self.FieldByName('firm_name_full').AsString;
                cxButtonEdit3.Text  := Query_Self_Address.FieldByName('firm_self_address').AsString;
                cxButtonEdit4.Text  := Query_Firm_Self.FieldByName('inn_kpp').AsString;
              end;
      10:       cxButtonEdit5.Text  := '-';
      11:       cxButtonEdit6.Text  := '-';
      13..15: begin
                cxButtonEdit8.Text  := Query.FieldByName('firm_customer_name_full').AsString;
                cxButtonEdit9.Text  := Query_Customer_Address.FieldByName('firm_customer_address').AsString;
                cxButtonEdit10.Text := Query.FieldByName('firm_customer_inn_kpp').AsString;
              end;
      16:     begin
                // По умолчанию мывыводим только Договор
                // При удалении информации, убираем все
                if AButtonIndex > -1 then begin
                  cxCheckBox11.Properties.OnEditValueChanged := nil;
                  cxCheckBox11.Checked := False;
                  cxCheckBox11.Properties.OnEditValueChanged := cxCheckBox11PropertiesEditValueChanged;

                  cxCheckBox9.Properties.OnEditValueChanged := nil;
                  cxCheckBox9.Checked := (AButtonIndex = 0); // кнопка 1 - по умолчанию, кнопка 2 - не выводим ничего
                  cxCheckBox9.Properties.OnEditValueChanged := cxCheckBox9PropertiesEditValueChanged;
                end;

                if (Fcontract_id <> -9)  and (Ffirm_self_id <> -9) then begin
                  // Выводить Договор + Стороны
                  if cxCheckBox11.Checked then
                    cxButtonEdit15.Text := '№ ' + Query.FieldByName('contract_cod').AsString + ' от ' + FormatDateTime('dd.mm.yyyy г.', Query.FieldByName('date_begin').AsDateTime)
                                        + ' между '  + Query_Firm_Self.FieldByName('firm_name_short').AsString + ' и ' + Query.FieldByName('firm_customer_name_short').AsString
                  // Выводить Договор
                  else if cxCheckBox9.Checked then
                    cxButtonEdit15.Text := '№ ' + Query.FieldByName('contract_cod').AsString + ' от ' + FormatDateTime('dd.mm.yyyy г.', Query.FieldByName('date_begin').AsDateTime)
                  // Ничего не выводим
                  else
                    cxButtonEdit15.Text := '';
                end else
                  cxButtonEdit15.Text := '';
              end;
    end;
  end else begin
    case TControl(Sender).Tag of
      7..9:   begin
                cxButtonEdit2.Text  := Query.FieldByName('firm_customer_name_full').AsString;
                cxButtonEdit3.Text  := Query_Customer_Address.FieldByName('firm_customer_address').AsString;
                cxButtonEdit4.Text  := Query.FieldByName('firm_customer_inn_kpp').AsString;
              end;
      10:       cxButtonEdit5.Text  := '-';
      11:       cxButtonEdit6.Text  := '-';
      13..15: begin
                cxButtonEdit8.Text  := Query_Firm_Self.FieldByName('firm_name_full').AsString;
                cxButtonEdit9.Text  := Query_Self_Address.FieldByName('firm_self_address').AsString;
                cxButtonEdit10.Text := Query_Firm_Self.FieldByName('inn_kpp').AsString;
              end;
      16:     begin
                // По умолчанию мывыводим только Договор
                // При удалении информации, убираем все
                if AButtonIndex > -1 then begin
                  cxCheckBox11.Properties.OnEditValueChanged := nil;
                  cxCheckBox11.Checked := False;
                  cxCheckBox11.Properties.OnEditValueChanged := cxCheckBox11PropertiesEditValueChanged;

                  cxCheckBox9.Properties.OnEditValueChanged := nil;
                  cxCheckBox9.Checked := (AButtonIndex = 0); // кнопка 1 - по умолчанию, кнопка 2 - не выводим ничего
                  cxCheckBox9.Properties.OnEditValueChanged := cxCheckBox9PropertiesEditValueChanged;
                end;

                if (Fcontract_id <> -9)  and (Ffirm_self_id <> -9) then begin
                  // Выводить Договор + Стороны
                  if cxCheckBox11.Checked then
                    cxButtonEdit15.Text := '№ ' + Query.FieldByName('contract_cod').AsString + ' от ' + FormatDateTime('dd.mm.yyyy г.', Query.FieldByName('date_begin').AsDateTime)
                                        + ' между '  + Query_Firm_Self.FieldByName('firm_name_short').AsString + ' и ' + Query.FieldByName('firm_customer_name_short').AsString
                  // Выводить Договор
                  else if cxCheckBox9.Checked then
                    cxButtonEdit15.Text := '№ ' + Query.FieldByName('contract_cod').AsString + ' от ' + FormatDateTime('dd.mm.yyyy г.', Query.FieldByName('date_begin').AsDateTime)
                  // Ничего не выводим
                  else
                    cxButtonEdit15.Text := '';
                end else
                  cxButtonEdit15.Text := '';
              end;
    end;
  end;
  Query.Free;
  Query_Customer_Address.Free;
  Query_Self_Address.Free;
end;

procedure TfmInvoiceScoreAdd.cxButtonEdit4PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
var _fmFirm : TfmFirm;
    Q : TADOQuery;
    Q_Address : TADOQuery;
    d1 : TDate;
begin
  case AButtonIndex of
    0 : begin
      _fmFirm := TfmFirm.Create(Application, True, 0, 0, usr_pwd);
      _fmFirm._LocateFirmId := Ffirm_self_id;
      if _fmFirm.ShowModal = mrOk then begin
        Q := TADOQuery.Create(nil);
        Q.Connection := Fconnect;
        Q.SQL.Add('SELECT * FROM view_firm WHERE firm_id = ' + IntToStr(_fmFirm._GetFirmId));
        Q.Open;

        if cxDateEdit1.EditValue <> null then
          d1 := cxDateEdit1.EditValue
        else
          if DateTimePicker3.EditValue <> null then
            d1 := DateTimePicker3.EditValue
          else
            d1 := Date;

        Q_Address := TADOQuery.Create(nil);
        Q_Address.Connection := Fconnect;
        Q_Address.SQL.Add('SELECT	TOP 1 firm_contact_name as firm_address');
        Q_Address.SQL.Add('FROM	  view_firm_contact');
        Q_Address.SQL.Add('WHERE	 firm_id = ' + IntToStr(_fmFirm._GetFirmId));
        Q_Address.SQL.Add('        AND type_contact_cod = ''11'' ');
        Q_Address.SQL.Add('        AND ' + DateToSQL(d1) + ' BETWEEN date_begin AND ISNULL(date_end, ' + DateToSQL(d1) + ')');
        Q_Address.Open;

        cxButtonEdit2.EditValue := Q.FieldByName('firm_name_full').Value;
        cxButtonEdit3.EditValue := Q_Address.FieldByName('firm_address').Value;
        cxButtonEdit4.EditValue := Q.FieldByName('inn_kpp').Value;

        Q_Address.Free;
        Q.Free;
      end;
    end;
    1 : begin
      cxButtonEdit2PropertiesButtonClick(Sender, 0);
    end;
  end;
end;

procedure TfmInvoiceScoreAdd.cxButtonEdit7PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
var
  Query : TADOQuery;
  d1 : TDate;
begin
  case AButtonIndex of
    0 : begin
          Query := TADOQuery.Create(nil);
          Query.Connection := Fconnect;

          if cxDateEdit1.EditValue <> null then
            d1 := cxDateEdit1.EditValue
          else
            if DateTimePicker3.EditValue <> null then
              d1 := DateTimePicker3.EditValue
            else
              d1 := Date;

          Query.SQL.Add('SELECT firm_contact_id, firm_contact_name, firm_contact_comment, type_contact_name, date_begin, date_end');
          Query.SQL.Add('FROM view_firm_contact');
          Query.SQL.Add('WHERE type_contact_cod BETWEEN ''20'' AND ''99''');
          Query.SQL.Add('AND firm_id = ' + IntToStr(Ffirm_self_id));
          Query.SQL.Add('AND ' + DateToSQL(d1) + ' BETWEEN date_begin AND ISNULL(date_end, ' + DateToSQL(d1) + ')');
          Query.SQL.Add('ORDER BY set_default DESC, type_contact_cod, firm_contact_name');
          Query.Open;

          fmFilter := TfmFilter.Create(0, Query, 'firm_contact_id', 'type_contact_name', 'firm_contact_name');
          fmFilter._SetFirmContact4ActsSetting := True;
          if fmFilter.ShowModal = mrOk then begin
            Query.Locate('firm_contact_id', fmFilter.GetId, []);
            case TComponent(Sender).Tag of
              0 : begin
                    Ffirm_director_id := Query.FieldByName('firm_contact_id').AsInteger;
                    cxButtonEdit7.Text := Query.FieldByName('firm_contact_name').AsString;
                    if Query.FieldByName('firm_contact_comment').AsString <> '' then
                      cxButtonEdit7.Text := cxButtonEdit7.Text + ' (' + Query.FieldByName('firm_contact_comment').AsString + ')'
                  end;
              1 : begin
                    Ffirm_buh_id := Query.FieldByName('firm_contact_id').AsInteger;
                    cxButtonEdit11.Text := Query.FieldByName('firm_contact_name').AsString;
                    if Query.FieldByName('firm_contact_comment').AsString <> '' then
                      cxButtonEdit11.Text := cxButtonEdit11.Text + ' (' + Query.FieldByName('firm_contact_comment').AsString + ')'
                  end;
              2 : begin
                    Ffirm_seller_id := Query.FieldByName('firm_contact_id').AsInteger;
                    cxButtonEdit16.Text := Query.FieldByName('firm_contact_name').AsString;
                    if Query.FieldByName('firm_contact_comment').AsString <> '' then
                      cxButtonEdit16.Text := cxButtonEdit16.Text + ' (' + Query.FieldByName('firm_contact_comment').AsString + ')'
                  end;
            end;
          end;

          fmFilter.Free;
          Query.Free;
        end;
  end;
end;

procedure TfmInvoiceScoreAdd.cxButtonEdit_ActsPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
var
  _fmActs : TfmActs;
  _fmPay : TfmPay;
  Q : TADOQuery;
  Q_Firm : TADOQuery;

  date_begin_period : TDate;
  date_end_period   : TDate;

begin
  cxRadioGroup3.ItemIndex := 0;
  if not cxCheckBox12.Checked then begin
    // Обычная счФ
    case AButtonIndex of
    0 : begin
          date_begin_period := DateOf(StartOfAMonth(StrToInt(ComboBox3.Text), ComboBox2.ItemIndex + 1));
          date_end_period   := DateOf(EndOfAMonth(StrToInt(ComboBox3.Text), ComboBox2.ItemIndex + 1));

          _fmActs := TfmActs.Create(Application, False);
          _fmActs._SetFilterActs(-9, StartOfAMonth(StrToInt(ComboBox3.Text), ComboBox2.ItemIndex + 1), EndOfAMonth(StrToInt(ComboBox3.Text), ComboBox2.ItemIndex + 1), Fstr_acts_id, Fcontract_id, False);
          if _fmActs.ShowModal = mrOk then begin
            Facts_type_cod := _fmActs._GetActsTypeCod;
            SetContractID(_fmActs._GetContractID, _fmActs._GetFirmSelfID); // Выбираем контракт, такой же как у актов

            // установим контакты собственной орг. = контактам в акте
            Q := TADOQuery.Create(nil);
            Q.Connection := Fconnect;
            Q.SQL.Add('SELECT TOP 1 *');
            Q.SQL.Add('FROM view_acts WHERE acts_id in (' + _fmActs._GetStrActsID + ')');
            Q.Open;
            // При выборе контракта - проставляются подписанты по умолчанию - мы их переписываем, только если в Акте указаны подписанты
            // а так же проставим валюту как в Акте (в акте валюта может отличаться от договора)
            cxLookupComboBox2.EditValue := Q.FieldByName('acts_currency_id').Value;
            if not Q.FieldByName('self_dir_id').IsNull then begin
              Ffirm_director_id := Q.FieldByName('self_dir_id').AsInteger;
              cxButtonEdit7.Text := Q.FieldByName('self_dir_name').AsString;
              if Q.FieldByName('self_dir_comment').AsString <> '' then
                cxButtonEdit7.Text := cxButtonEdit7.Text + ' (' + Q.FieldByName('self_dir_comment').AsString + ')'
            end;

            if not Q.FieldByName('self_buh_id').IsNull then begin
              Ffirm_buh_id := Q.FieldByName('self_buh_id').AsInteger;
              cxButtonEdit11.Text := Q.FieldByName('self_buh_name').AsString;
              if Q.FieldByName('self_buh_comment').AsString <> '' then
                cxButtonEdit11.Text := cxButtonEdit11.Text + ' (' + Q.FieldByName('self_buh_comment').AsString + ')'

            end;
            Q.Free;

            // 0 - Запрос с реквизитами компании
            Q_Firm := TADOQuery.Create(nil);
            Q_Firm.Connection := Fconnect;
            Q_Firm.SQL.Add('select firm_id, firm_name_short, inn, kpp, cod_okpo,');
            Q_Firm.SQL.Add('address = (select top 1 firm_contact_name from view_firm_contact');
            Q_Firm.SQL.Add('  where firm_id = firm.firm_id and type_contact_cod = ''11''');
            Q_Firm.SQL.Add('  and ' + DateToSQL(date_begin_period) + ' <= isnull(date_end, ' + DateToSQL(date_begin_period) + ')');
            Q_Firm.SQL.Add('  and date_begin <= ' + DateToSQL(date_end_period) + '');
            Q_Firm.SQL.Add('), ');
            Q_Firm.SQL.Add('telefon = (select top 1 firm_contact_telefon from view_firm_contact');
            Q_Firm.SQL.Add('  where firm_id = firm.firm_id and type_contact_cod = ''15''');
            Q_Firm.SQL.Add('  and ' + DateToSQL(date_begin_period) + ' <= isnull(date_end, ' + DateToSQL(date_begin_period) + ')');
            Q_Firm.SQL.Add('  and date_begin <= ' + DateToSQL(date_end_period) + '');
            Q_Firm.SQL.Add(')');
            Q_Firm.SQL.Add('from firm');
            Q_Firm.SQL.Add('where firm_id = :firm_id');

            // Грузоотправитель/Грузополучатель (для актов сформированных по Перевозкам)
            Q := TADOQuery.Create(nil);
            Q.Connection := Fconnect;
            Q.SQL.Add('SELECT TOP 1 b.sender_id ');
            Q.SQL.Add('FROM ACTS_BARGAIN a ');
            Q.SQL.Add('JOIN bargain b ');
            Q.SQL.Add('ON b.bargain_id = a.bargain_id ');
            Q.SQL.Add('AND b.sender_id IS NOT NULL ');
            Q.SQL.Add('AND a.type_acts = 0'); // 0 - bargain
            Q.SQL.Add('AND a.acts_id in (' + _fmActs._GetStrActsID + ')');

            Q.Open;
            if not Q.Eof then begin
              Q_Firm.Close;
              Q_Firm.Parameters.ParamByName('firm_id').Value := Q.FieldByName('sender_id').Value;
              Q_Firm.Open;
              cxButtonEdit5.EditValue :=
                Q_Firm.FieldByName('firm_name_short').AsString + ', ИНН ' + Q_Firm.FieldByName('inn').AsString + ', ' +
                Q_Firm.FieldByName('address').AsString +
                VarToStr(iif(Q_Firm.FieldByName('telefon').IsNull, '', ', тел.: ' + Q_Firm.FieldByName('telefon').AsString));
            end;
            Q.Close;

            Q.SQL.Clear;
            Q.SQL.Add('SELECT TOP 1 b.receiver_id ');
            Q.SQL.Add('FROM ACTS_BARGAIN a ');
            Q.SQL.Add('JOIN view_bargain b ');
            Q.SQL.Add('ON b.bargain_id = a.bargain_id ');
            Q.SQL.Add('AND b.receiver_id IS NOT NULL ');
            Q.SQL.Add('AND a.type_acts = 0'); // 0 - bargain
            Q.SQL.Add('AND a.acts_id in (' + _fmActs._GetStrActsID + ')');
            Q.Open;
            if not Q.Eof then begin
              Q_Firm.Close;
              Q_Firm.Parameters.ParamByName('firm_id').Value := Q.FieldByName('receiver_id').Value;
              Q_Firm.Open;
              cxButtonEdit6.EditValue :=
                Q_Firm.FieldByName('firm_name_short').AsString + ', ИНН ' + Q_Firm.FieldByName('inn').AsString + ', ' +
                Q_Firm.FieldByName('address').AsString +
                VarToStr(iif(Q_Firm.FieldByName('telefon').IsNull, '', ', тел.: ' + Q_Firm.FieldByName('telefon').AsString));
            end;
            Q.Free;
            Q_Firm.Free;

            SetActs(_fmActs._GetStrActsID); // Заполнение акта
            // Если Отчет на возмещение, то перебиваем Продавца (отчеты поименованы списком)
            if MatchText(_fmActs._GetActsTypeCod, ['190', '191', '194', '198', '210', '215', '229', '239', '273', '274', '276', '304', '365', '371']) then
              SetContractAgentID(_fmActs._GetContractAgentID);

            if  MatchText(Facts_type_cod, ['189']) then
              cxRadioGroup3.ItemIndex := 1;


            if MatchText(_fmActs._GetActsTypeCod, ['253','306','308','309','375','404']) then begin
              Q := TADOQuery.Create(nil);
              Q.Connection := Fconnect;
              Q.SQL.Add('SELECT TOP 1 depo_name_eng ');
              Q.SQL.Add(' FROM dbo.ACTS_BARGAIN a WITH (NOLOCK) LEFT OUTER JOIN view_fact_repair_table f ON f.fact_repair_table_id = a.bargain_id WHERE acts_id in (' + _fmActs._GetStrActsID + ')');
              Q.Open;

              //Грузополучатель
              cxButtonEdit6.EditValue :=  Q.FieldByName('depo_name_eng').Value;
              if  MatchText(Facts_type_cod, ['306','309','375','404']) then
                cxButtonEdit6.EditValue :=  cxButtonEdit8.Text + ' ' + cxButtonEdit9.Text;

              //Грузотправитель
              if  MatchText(Facts_type_cod, ['306','308','375','404']) then begin
                cxButtonEdit5.EditValue :=  Q.FieldByName('depo_name_eng').Value;
              end;

              if MatchText(Facts_type_cod, ['253','309']) then begin
                 cxButtonEdit5.EditValue :=  'он же';
              end;

              Q.Close;
              Q.Free;
            end;

            if MatchText(_fmActs._GetActsTypeCod, ['133', '182']) then begin
              Q := TADOQuery.Create(nil);
              Q.Connection := Fconnect;
              Q.SQL.Add('SELECT DISTINCT firm_customer_name_short, contract_id, contract_cod, f.score_cod,f.score_date, f.fact_repair_table_id ');
              Q.SQL.Add(' FROM dbo.ACTS_BARGAIN a WITH (NOLOCK) LEFT OUTER JOIN view_fact_repair_table f ON f.fact_repair_table_id = a.bargain_id WHERE acts_id in (' + _fmActs._GetStrActsID + ')');
              Q.Open;
              fmFilter := TfmFilter.Create(0, Q, 'fact_repair_table_id', 'contract_id', 'firm_customer_name_short');
              fmFilter._SetContractRepair := True;
              if fmFilter.ShowModal=mrOk then begin
                Fstr_fact_repair_table_id := fmFilter._GetStrId;
                Fcontract_agent_id := StrToInt(fmFilter.GetCod);
                SetContractAgentID(Fcontract_agent_id);
              end;
              Q.Close;
              Q.Free;
              fmFilter.Free;
              if Application.MessageBox('Выбрать другой договор?', 'Внимание', MB_ICONQUESTION or MB_OKCANCEL) = ID_OK then begin
                Q := TADOQuery.Create(Self);
                Q.Connection := Fconnect;
                Q.SQL.Add('SELECT contract_id, firm_customer_name, firm_self_name, contract_cod, currency_id, note');
                Q.SQL.Add(' , type_contract_name = CASE type_contract WHEN 0 THEN ''Клиент'' WHEN 1 THEN ''Агент'' WHEN 2 THEN ''Администрация'' ELSE ''---'' END');
                Q.SQL.Add('FROM view_contract_rights ');
                Q.SQL.Add('WHERE date_begin_period <= ' + DateToSQL(date_end_period));
                Q.SQL.Add('AND date_end >= ' + DateToSQL(date_begin_period));
                Q.SQL.Add('ORDER BY firm_customer_name, type_contract, contract_cod');
                Q.Open;
                fmFilter := TfmFilter.Create(0, Q, 'contract_id', 'contract_cod', 'firm_customer_name');
                fmFilter._SetContract4ScoreInvoice := True;
                fmFilter._SelectIndexColumn := 1;
                if fmFilter.ShowModal = mrOk then begin
                  Fcontract_agent_id := fmFilter.GetId;
                end;
                Q.Free;
                fmFilter.Free;
                SetContractAgentID(Fcontract_agent_id);
              end;

            end;
          //_fmActs.Free;
          end;

        end;
    1 : begin
          SetActs(''); // Очистка
        end;
    end;
  end else begin
    // Обычная счФ
    case AButtonIndex of
    0 : begin
          date_begin_period := DateOf(StartOfAMonth(StrToInt(ComboBox3.Text), ComboBox2.ItemIndex + 1));
          date_end_period   := DateOf(EndOfAMonth(StrToInt(ComboBox3.Text), ComboBox2.ItemIndex + 1));

          _fmPay := TfmPay.Create(Application, 0, True);
          _fmPay._SetFilterPay(StartOfAMonth(StrToInt(ComboBox3.Text), ComboBox2.ItemIndex + 1), EndOfAMonth(StrToInt(ComboBox3.Text), ComboBox2.ItemIndex + 1), Fstr_pays_id, Fcontract_id);
          if _fmPay.ShowModal = mrOk then begin
            SetContractID(_fmPay._GetContractId, _fmPay._GetFirmSelfID); // Выбираем контракт, такой же как у платежей

            // проставим валюту как в Платеже
            Q := TADOQuery.Create(nil);
            Q.Connection := Fconnect;
            Q.SQL.Add('SELECT TOP 1 *');
            Q.SQL.Add('FROM view_pay WHERE pay_id in (' + _fmPay._GetStrPayID + ')');
            Q.Open;
            // проставим валюту как в Платеже
            cxLookupComboBox2.EditValue := Q.FieldByName('currency_id').Value;
            Q.Free;

            SetPays(_fmPay._GetStrPayId); // Заполнение платежа
          end;

        end;
    1 : begin
          SetPays(''); // Очистка
        end;
    end;
  end;
end;

procedure TfmInvoiceScoreAdd.cxCheckBox10Click(Sender: TObject);
begin
  cxGrid1DBBandedTableView1.DataController.Summary.Recalculate;
end;

procedure TfmInvoiceScoreAdd.cxCheckBox11PropertiesEditValueChanged(Sender: TObject);
begin
  cxCheckBox9.Checked := cxCheckBox9.Checked and (not cxCheckBox11.Checked);
  // пересчитаем значение поля
  cxButtonEdit2PropertiesButtonClick(cxButtonEdit15, -1);
end;

procedure TfmInvoiceScoreAdd.cxCheckBox12PropertiesChange(Sender: TObject);
begin
  if cxCheckBox12.Checked = False then begin
    // Обычная счФ
    Label19.Caption := 'Акты ..........';
    cxButton5.Visible := True;
    cxRadioGroup3.Enabled := True;
  end else begin
    // Авансовая счФ
    Label19.Caption := 'Платежи ..........';
    cxButton5.Visible := False;
    cxRadioGroup3.Enabled := False;
  end;

  SetActs(''); // Очистка актов
  SetPays(''); // Очистка платежей
end;

procedure TfmInvoiceScoreAdd.cxCheckBox3PropertiesChange(Sender: TObject);
begin
  cxCheckBox4.Checked := cxCheckBox4.Checked and (not cxCheckBox3.Checked);
end;

procedure TfmInvoiceScoreAdd.cxCheckBox4PropertiesChange(Sender: TObject);
begin
  cxCheckBox3.Checked := cxCheckBox3.Checked and (not cxCheckBox4.Checked);
end;

procedure TfmInvoiceScoreAdd.cxCheckBox6PropertiesEditValueChanged(Sender: TObject);
begin
  if cxCheckBox6.Checked then begin
    cxGrid1DBBandedTableView1ed_izm_cod.DataBinding.FieldName   := '';
    cxGrid1DBBandedTableView1ed_izm_name.DataBinding.FieldName  := '';
    cxGrid1DBBandedTableView1price_ed_izm.DataBinding.FieldName := '';
    cxGrid1DBBandedTableView1quantity.DataBinding.FieldName     := '';
  end else begin
    cxGrid1DBBandedTableView1ed_izm_cod.DataBinding.FieldName   := 'ed_izm_cod';
    cxGrid1DBBandedTableView1ed_izm_name.DataBinding.FieldName  := 'ed_izm_name';
    cxGrid1DBBandedTableView1price_ed_izm.DataBinding.FieldName := 'price_ed_izm';
    cxGrid1DBBandedTableView1quantity.DataBinding.FieldName     := 'quantity';
  end;
end;

procedure TfmInvoiceScoreAdd.cxCheckBox8PropertiesEditValueChanged(Sender: TObject);
begin
  cxTextEdit4.Enabled := cxCheckBox8.Checked;
end;

procedure TfmInvoiceScoreAdd.cxCheckBox9PropertiesEditValueChanged(Sender: TObject);
begin
  cxCheckBox11.Checked := cxCheckBox11.Checked and (not cxCheckBox9.Checked);
  // пересчитаем значение поля
  cxButtonEdit2PropertiesButtonClick(cxButtonEdit15, -1);
end;

procedure TfmInvoiceScoreAdd.cxComboBox1PropertiesEditValueChanged(Sender: TObject);
begin
  // Показать/скрыть поля относящмеся только к УПД
  // Статус УПД
  Label25.Visible := (cxComboBox1.ItemIndex = 1);
  cxComboBox2.Visible := (cxComboBox1.ItemIndex = 1);
  if cxComboBox1.ItemIndex = 0 then cxComboBox2.ItemIndex := 0;

  // Товар (груз) передал
  cxLabel3.Visible := (cxComboBox1.ItemIndex = 1);
  cxButtonEdit16.Visible := (cxComboBox1.ItemIndex = 1);
end;

procedure TfmInvoiceScoreAdd.cxGrid1DBBandedTableView1CustomDrawCell(Sender: TcxCustomGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
  if (AViewInfo.GridRecord.Values[cxGrid1DBBandedTableView1global_color.Index] <> NULL) then
    ACanvas.Brush.Color := AViewInfo.GridRecord.Values[cxGrid1DBBandedTableView1global_color.Index];

  if AViewInfo.GridRecord.Selected or AViewInfo.GridRecord.Focused then begin
    ACanvas.Brush.Color := clNavy;
    ACanvas.Font.Color := clWhite;
  end else
    if AViewInfo.GridRecord.DragHighlighted then
      ACanvas.Brush.Color := clGreen;

end;

procedure TfmInvoiceScoreAdd.cxGrid1DBBandedTableView1CustomDrawColumnHeader(Sender: TcxGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxGridColumnHeaderViewInfo; var ADone: Boolean);
begin
  DrawcxGridColumnOnFocused(Sender, ACanvas, AViewInfo);
end;

procedure TfmInvoiceScoreAdd.ReCalcNum;
var
  i : integer;
begin
  i := Client_InvoiceScoreTable.RecNo;
  Client_InvoiceScoreTable.First;
  while not Client_InvoiceScoreTable.Eof do begin
    Client_InvoiceScoreTable.Edit;
    Client_InvoiceScoreTable.FieldByName('rec_num').AsInteger := Client_InvoiceScoreTable.RecNo;
    Client_InvoiceScoreTable.Post;
    Client_InvoiceScoreTable.Next;
  end;
  Client_InvoiceScoreTable.RecNo := i;
end;

procedure TfmInvoiceScoreAdd.DragRecord(record_from, record_to: integer; record_select: array of integer);
var
           i : integer;
  cnt_select : integer;
     cnt_all : integer;
begin
  // перемещения
  Client_InvoiceScoreTable.DisableControls;
  cnt_select := Length(record_select);
  cnt_all := Client_InvoiceScoreTable.RecordCount;

  // Переносим выделенные в самый конец
  for i := 0 to cnt_select - 1 do begin
    if Client_InvoiceScoreTable.Locate('rec_num', record_select[i], []) then begin
      Client_InvoiceScoreTable.Edit;
      Client_InvoiceScoreTable.FieldByName('rec_num').AsInteger := Client_InvoiceScoreTable.FieldByName('rec_num').AsInteger + cnt_all;
      Client_InvoiceScoreTable.Post;
    end;
  end;

  // Находим позицию разделения
  if Client_InvoiceScoreTable.Locate('rec_num', record_to, []) then begin
    // Уточнение в зависимости от того куда тащим
    if record_from < record_to then
      Client_InvoiceScoreTable.Next;

    i := Client_InvoiceScoreTable.RecNo;
    // Перекидываем отставшиеся записи в хвост
    while Client_InvoiceScoreTable.FieldByName('rec_num').AsInteger <= cnt_all do begin
      Client_InvoiceScoreTable.Edit;
      Client_InvoiceScoreTable.FieldByName('rec_num').AsInteger := Client_InvoiceScoreTable.FieldByName('rec_num').AsInteger + (cnt_all * 2);
      Client_InvoiceScoreTable.Post;
      Client_InvoiceScoreTable.RecNo := i;
    end;
  end;

  // Пересчитываем номера
  ReCalcNum;

  Client_InvoiceScoreTable.EnableControls;

  // Фокусируем и выделяем перемещенные строки
  // Снимаем выделение
  while cxGrid1DBBandedTableView1.Controller.SelectedRecordCount > 0 do
    cxGrid1DBBandedTableView1.Controller.SelectedRecords[0].Selected := False;

  // Устанавливаем выделение
  while cnt_select > 0 do begin
    Client_InvoiceScoreTable.RecNo := i + cnt_select - 1;
    cxGrid1DBBandedTableView1.Controller.FocusedRecord.Selected := True;
    cnt_select := cnt_select - 1;
  end;
end;

procedure TfmInvoiceScoreAdd.cxGrid1DBBandedTableView1DataControllerFilterChanged(Sender: TObject);
begin
  DrawcxGridColumnOnFiltered(Sender);
end;

procedure TfmInvoiceScoreAdd.cxGrid1DBBandedTableView1DragDrop(Sender, Source: TObject; X, Y: Integer);
var
  i        : integer;
  record_from : integer;
  record_to   : integer;
  record_select  : array of integer;
begin
  if (Sender is TcxGridSite) and (Source is TcxDragControlObject) then
    if (TcxGridSite(Sender).GridView = cxGrid1DBBandedTableView1) then
      if TcxDragControlObject(Source).Control is TcxGridSite then
        if (TcxGridSite(TcxDragControlObject(Source).Control).GridView = cxGrid1DBBandedTableView1) then
          if cxGrid1DBBandedTableView1.GetHitTest(X, Y) is TcxGridRecordHitTest then begin
            // Откуда и куда
            record_from := cxGrid1DBBandedTableView1rec_num.DataBinding.Field.AsInteger;
            record_to   := integer(TcxGridRecordHitTest(cxGrid1DBBandedTableView1.GetHitTest(X, Y)).GridRecord.Values[cxGrid1DBBandedTableView1rec_num.Index]);

            // список перемещаемых строк
            if cxGrid1DBBandedTableView1.Controller.SelectedRecordCount = 0 then exit;

            SetLength(record_select, cxGrid1DBBandedTableView1.Controller.SelectedRecordCount);
            for i := 0 to cxGrid1DBBandedTableView1.Controller.SelectedRecordCount - 1 do
              record_select[i] := integer(cxGrid1DBBandedTableView1.Controller.SelectedRecords[i].Values[cxGrid1DBBandedTableView1rec_num.Index]);

            // Перемнещаем
            DragRecord(record_from, record_to, record_select);
          end;
end;

procedure TfmInvoiceScoreAdd.cxGrid1DBBandedTableView1DragOver(Sender, Source: TObject; X, Y: Integer; State: TDragState; var Accept: Boolean);
begin
  Accept := False;
  if (Sender is TcxGridSite) and (Source is TcxDragControlObject) then
    if (TcxGridSite(Sender).GridView = cxGrid1DBBandedTableView1) then
      if TcxDragControlObject(Source).Control is TcxGridSite then
        if (TcxGridSite(TcxDragControlObject(Source).Control).GridView = cxGrid1DBBandedTableView1) then
          if cxGrid1DBBandedTableView1.GetHitTest(X, Y) is TcxGridRecordHitTest then
            Accept := not TcxGridRecordHitTest(cxGrid1DBBandedTableView1.GetHitTest(X, Y)).GridRecord.Selected;
end;

procedure TfmInvoiceScoreAdd.cxGrid1DBBandedTableView1Editing(Sender: TcxCustomGridTableView; AItem: TcxCustomGridTableItem; var AAllow: Boolean);
var nds_id : integer;
begin
  if not TcxGridDBBandedTableView(Sender).DataController.DataSet.FieldByName('set_hand_edit').AsBoolean then begin
    if TcxGridDBBandedColumn(AItem).DataBinding.FieldName = 'price_ed_izm'      then AAllow := False;
    if TcxGridDBBandedColumn(AItem).DataBinding.FieldName = 'cost_without_nds'  then AAllow := False;
    if TcxGridDBBandedColumn(AItem).DataBinding.FieldName = 'tax_sum'           then AAllow := False;
  end;

  // Если Ставка НДС = "НДС исчисляется налоговым агентом", то Сумма налога и стоимость с налогом - пустые
  // Не зависимо от типа вычислений
  // Задание ID = 13063041, 26.03.2018, Кутилина Т.
  nds_id := TcxGridDBBandedTableView(Sender).DataController.DataSet.FieldByName('tax_rate_id').AsInteger;
  if Query_NDS.Lookup('inf_obj_id', nds_id, 'inf_obj_name_full') = '00.900' then begin
    if TcxGridDBBandedColumn(AItem).DataBinding.FieldName = 'cost_without_nds'  then AAllow := True;
    if TcxGridDBBandedColumn(AItem).DataBinding.FieldName = 'tax_sum'           then AAllow := False;
    if TcxGridDBBandedColumn(AItem).DataBinding.FieldName = 'cost_with_nds'     then AAllow := False;
  end;

  // Если Ставка НДС = "18/118", то Цена - пустые (авансовая СчФ)
  // Не зависимо от типа вычислений
  if (Query_NDS.Lookup('inf_obj_id', nds_id, 'inf_obj_name_full') = '18.118')
  or (Query_NDS.Lookup('inf_obj_id', nds_id, 'inf_obj_name_full') = '20.120') then begin
    if TcxGridDBBandedColumn(AItem).DataBinding.FieldName = 'ed_izm_cod'        then AAllow := False;
    if TcxGridDBBandedColumn(AItem).DataBinding.FieldName = 'ed_izm_name'       then AAllow := False;
    if TcxGridDBBandedColumn(AItem).DataBinding.FieldName = 'quantity'          then AAllow := False;
    if TcxGridDBBandedColumn(AItem).DataBinding.FieldName = 'price_ed_izm'      then AAllow := False;
    if TcxGridDBBandedColumn(AItem).DataBinding.FieldName = 'cost_without_nds'  then AAllow := False;
    if TcxGridDBBandedColumn(AItem).DataBinding.FieldName = 'aktciz'            then AAllow := False;
  end;
end;

procedure TfmInvoiceScoreAdd.cxGrid1DBBandedTableView1FocusedItemChanged(Sender: TcxCustomGridTableView; APrevFocusedItem, AFocusedItem: TcxCustomGridTableItem);
begin
  Sender.Painter.Invalidate;
end;

procedure TfmInvoiceScoreAdd.cxGrid1DBBandedTableView1FocusedRecordChanged(Sender: TcxCustomGridTableView; APrevFocusedRecord, AFocusedRecord: TcxCustomGridRecord; ANewItemRecordFocusingChanged: Boolean);
begin
  if (AFocusedRecord <> nil) and (Query_NDS.Active) then
    Query_NDS.Locate('inf_obj_id', AFocusedRecord.Values[cxGrid1DBBandedTableView1tax_rate_id.Index], []);
end;

procedure TfmInvoiceScoreAdd.cxGrid1DBBandedTableView1KeyDown(Sender: TObject;  var Key: Word; Shift: TShiftState);
begin
  cxGrid1DBBandedTableView1.Painter.Invalidate;
end;

procedure TfmInvoiceScoreAdd.cxGrid1DBBandedTableView1MouseDown(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  cxGrid1DBBandedTableView1.Painter.Invalidate;
end;

procedure TfmInvoiceScoreAdd.cxGrid1DBBandedTableView1name_servicePropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  dxBarPopupMenu2.Popup(Mouse.CursorPos.X, Mouse.CursorPos.Y);
end;

procedure TfmInvoiceScoreAdd.cxGrid1DBBandedTableView1rec_numPropertiesValidate(Sender: TObject; var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
begin
  if DisplayValue < 1 then DisplayValue := 1;
  if DisplayValue > Client_InvoiceScoreTable.RecordCount then DisplayValue := Client_InvoiceScoreTable.RecordCount;

  if (TcxCustomEdit(Sender).EditValue <> DisplayValue) then
    DragRecord(TcxCustomEdit(Sender).EditValue, DisplayValue, [TcxCustomEdit(Sender).EditValue]);

  // Отображаем редактор, т.к. после Пересчета он был закрыт, из-за чего возникает ошибка по окончании данной процедуры
  cxGrid1DBBandedTableView1.Controller.EditingController.ShowEdit;
end;

procedure TfmInvoiceScoreAdd.cxGrid1DBBandedTableView1TcxGridDBDataControllerTcxDataSummaryFooterSummaryItems1GetText(Sender: TcxDataSummaryItem; const AValue: Variant; AIsFooter: Boolean; var AText: string);
var ix : integer;
    val : Variant;
    tax_rate : Double;
begin
  if cxCheckBox10.Checked and Query_NDS.Active then begin

    ix := cxGrid1DBBandedTableView1.DataController.Summary.FooterSummaryItems.IndexOfItemLink(cxGrid1DBBandedTableView1cost_without_nds);
    val := cxGrid1DBBandedTableView1.DataController.Summary.FooterSummaryValues[ix];

    if not TryStrToFloat(Query_NDS.FieldByName('inf_obj_cod').AsString, tax_rate) then tax_rate := 0;
    if not VarIsNull(val) then begin
      if Sender.ItemLink = cxGrid1DBBandedTableView1tax_sum then val := val * tax_rate / 100
      else val := val * (100 + tax_rate) / 100;

      val := RoundCurr(val, -2);

      AText := FormatFloat(Sender.Format, val);
    end else
      AText := '';

  end;
end;


procedure TfmInvoiceScoreAdd.cxTextEdit1PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
var n : integer;
begin
  if Faction = True then begin
    // Новя СФ - можем выбирать номер из реестра
    case AButtonIndex of
      0 : begin
            fmInvoiceScoreReserve := TfmInvoiceScoreReserve.Create(Application, True);
            fmInvoiceScoreReserve._SetConnection := Fconnect;
            if DateTimePicker3.EditValue = null then
              fmInvoiceScoreReserve._SetDate := Date
            else
              fmInvoiceScoreReserve._SetDate := DateTimePicker3.EditValue;

            if fmInvoiceScoreReserve.ShowModal = mrOk then begin
              Finvoice_score_id := fmInvoiceScoreReserve._GetInvoiceScoreID;
              Fold_num := ''; // Как и при обновлении считаем, что номер был изменен (т.е. передадим реально существующий номер
              DateTimePicker3.EditValue := fmInvoiceScoreReserve._GetScoreDate;
              cxTextEdit1.EditValue := fmInvoiceScoreReserve._GetScoreCod;
            end;
          end;
      1 : begin
            Finvoice_score_id := -9;
            Fold_num := GetCodByFirm(Fconnect, Finvoice_score_id, -9, 99, DateTimePicker3.Date, n);
            cxTextEdit1.EditValue := Fold_num;
          end;
    end;
  end else begin
    // Сущ. СФ - Номер можно править только в реестре номеров
    Application.MessageBox('Управление номерами УПД/СФ производится в реестре номеров'#10'Для изменения номера существующего УПД/СФ необходимо изменить соответствующую запись в реестре', 'Внимание', MB_OK or MB_ICONINFORMATION);
  end;
end;

procedure TfmInvoiceScoreAdd.DateTimePicker3PropertiesEditValueChanged(Sender: TObject);
var d1 : TDate;
    n : Integer;
begin
  if cxDateEdit1.EditValue <> null then
    d1 := cxDateEdit1.EditValue
  else
    if DateTimePicker3.EditValue <> null then
      d1 := DateTimePicker3.EditValue
    else
      d1 := Date;

  cxButtonEdit14.Text := FormatFloat('#,##0.0000', GetExchangeNew(1, d1, Fconnect, True));
  cxButtonEdit13.Text := FormatFloat('#,##0.0000', GetExchangeNew(6, d1, Fconnect, True));
  cxButtonEdit12.Text := FormatFloat('#,##0.0000', GetExchangeNew(5, d1, Fconnect, True));

  CheckSigner(Ffirm_self_id, Ffirm_director_id, Ffirm_buh_id, d1, Fconnect);

  Fold_num := GetCodByFirm(Fconnect, Finvoice_score_id, -9, 99, DateTimePicker3.Date, n);
  cxTextEdit1.EditValue := Fold_num;
end;

procedure TfmInvoiceScoreAdd.EdIzm2OKEI;
var Q_OKEI : TADOQuery;
    str_tmp : string;
begin
  Q_OKEI := TADOQuery.Create(nil);
  Q_OKEI.Connection := Fconnect;
  Q_OKEI.SQL.Add('SELECT * FROM inf_obj WHERE type_inf_id = 7');
  Q_OKEI.Open;

  Client_InvoiceScoreTable.DisableControls;
  Client_InvoiceScoreTable.First;
  while not Client_InvoiceScoreTable.Eof do begin
    str_tmp := Client_InvoiceScoreTable.FieldByName('ed_izm_cod').AsString;

    case IndexText(str_tmp, ['000', '001', '002', '003', '004', '006']) of
      0:    str_tmp := '168'; // тонна
      1..3: str_tmp := '796'; // штука
      4:    str_tmp := '954'; // вагоно-сутки
      5:    str_tmp := '113';  // м.куб
      //else  str_tmp := '---'; // без кода
      // если код не подходит, возможно н уже в ОКЕИ
    end;

    Client_InvoiceScoreTable.Edit;
    Client_InvoiceScoreTable.FieldByName('ed_izm_cod').Value := str_tmp;
    if (str_tmp <> '---') then
      Client_InvoiceScoreTable.FieldByName('ed_izm_name').Value := Q_OKEI.Lookup('inf_obj_cod', str_tmp, 'inf_obj_name');
    Client_InvoiceScoreTable.Post;
    Client_InvoiceScoreTable.Next;
  end;
  Client_InvoiceScoreTable.First;
  Client_InvoiceScoreTable.EnableControls;

  Q_OKEI.Free;
end;

procedure TfmInvoiceScoreAdd.Client_InvoiceScoreTableCalcFields(DataSet: TDataSet);
var  tax_rate : Variant;
     nds_cod : string;
begin
  Client_InvoiceScoreTable.AutoCalcFields := False;

  // Если Ставка НДС = "НДС исчисляется налоговым агентом", то Сумма налога и стоимость с налогом - пустые
  // Не зависимо от типа вычислений
  // Расчет ведем не от Суммы с НДС, а от Суммы без НДС
  // Задание ID = 13063041, 26.03.2018, Кутилина Т.
  nds_cod := VarToStr(Query_NDS.Lookup('inf_obj_id', DataSet.FieldByName('tax_rate_id').AsInteger, 'inf_obj_name_full'));

  // Если Ставка НДС = "18/118", то Цена, кол-во и ед. изм. - пустые (авансовая СчФ)
  // Не зависимо от типа вычислений

  if not DataSet.FieldByName('set_hand_edit').AsBoolean then begin
    if nds_cod = '00.900' then begin
      // Считаем от суммы без НДС
      if (DataSet.FieldByName('quantity').AsCurrency <> 0) and not DataSet.FieldByName('cost_without_nds').IsNull then
        DataSet['price_ed_izm']   := DataSet.FieldByName('cost_without_nds').AsCurrency / DataSet.FieldByName('quantity').AsCurrency
      else
        DataSet['price_ed_izm']   := null;
    end else begin
      // Стандартный алгоритм расчета (от суммы с НДС)
      tax_rate := Query_NDS.Lookup('inf_obj_id', DataSet.FieldByName('tax_rate_id').AsInteger, 'inf_obj_cod');
      if tax_rate = null then tax_rate := 0;
      DataSet['tax_sum']          := DataSet['cost_with_nds'] * tax_rate /(100 + tax_rate);
      if not DataSet.FieldByName('tax_sum').IsNull then
        DataSet['tax_sum']        := RoundCurr(DataSet['tax_sum'], -2);
      DataSet['cost_without_nds'] := DataSet['cost_with_nds'] - DataSet['tax_sum'];
      if (DataSet.FieldByName('quantity').AsCurrency <> 0) and not DataSet.FieldByName('cost_without_nds').IsNull then
        DataSet['price_ed_izm']   := DataSet.FieldByName('cost_without_nds').AsCurrency / DataSet.FieldByName('quantity').AsCurrency
      else
        DataSet['price_ed_izm']   := null;
    end;
  end;

  if nds_cod = '00.900' then begin
    // Сумма налога и сумма с НДС - пустые
    DataSet['tax_sum']          := null;
    DataSet['cost_with_nds']    := null;
  end else if (nds_cod = '18.118') or (nds_cod = '20.120') then begin
    // Если Ставка НДС = "18/118", то Цена, кол-во и ед. изм. - пустые (авансовая СчФ)
    // А расчеты сумм не отличаются от стандартного алгоритма
    DataSet['ed_izm_cod']       := null;
    DataSet['ed_izm_name']      := null;
    DataSet['quantity']         := null;
    DataSet['price_ed_izm']     := null;
    DataSet['cost_without_nds'] := null;
    DataSet['aktciz']           := null;
  end;

  Client_InvoiceScoreTable.AutoCalcFields := True;
end;

procedure TfmInvoiceScoreAdd.Client_InvoiceScoreTableNewRecord(DataSet: TDataSet);
begin
  DataSet.FieldByName('rec_num').AsInteger := DataSet.RecordCount + 1;
  DataSet.FieldByName('set_hand_edit').AsBoolean := False;
  DataSet.FieldByName('tax_rate_id').AsInteger := Query_NDS.Lookup('inf_obj_cod', 18, 'inf_obj_id');
end;

procedure TfmInvoiceScoreAdd.N11Click(Sender: TObject);
var
  i, color : integer;
  ColorD   : TColorDialog;
begin
// -----------------------
  color := -9;
  ColorD := TColorDialog.Create(nil);
  if (TControl(Sender).Tag = 0) then
    if ColorD.Execute then color := ColorD.Color
    else begin
      ColorD.Free;
      exit;
    end;

  Client_InvoiceScoreTable.DisableControls;

  for i := 0 to cxGrid1DBBandedTableView1.Controller.SelectedRowCount - 1 do begin
    if Client_InvoiceScoreTable.Locate('rec_num', cxGrid1DBBandedTableView1.Controller.SelectedRows[i].Values[cxGrid1DBBandedTableView1rec_num.Index], []) then begin
      Client_InvoiceScoreTable.Edit;
      if color <> -9 then
        Client_InvoiceScoreTable.FieldByName('global_color').Value := color
      else
        Client_InvoiceScoreTable.FieldByName('global_color').Value := null;
      Client_InvoiceScoreTable.Post;
    end;
  end;

  Client_InvoiceScoreTable.EnableControls;

  ColorD.Free;
end;

procedure TfmInvoiceScoreAdd.N13Click(Sender: TObject);
var
  rec      : integer;
  col      : integer;
  cur_rec  : integer;
  cur_col  : integer;
  set_find : boolean;
  set_end  : boolean;
  find_text: string;
begin
  if not InputQuery('Поиск', 'Строка поиска:', FFindStr) then
    Exit;

  rec      := cxGrid1DBBandedTableView1.DataController.FocusedRecordIndex;
  rec      := cxGrid1DBBandedTableView1.DataController.FilteredIndexByRecordIndex[rec];
  cur_rec  := rec;
  col      := cxGrid1DBBandedTableView1.Controller.FocusedColumnIndex;
  cur_col  := col;

  set_find := False;
  set_end  := False;
  while not set_end do begin
    // Следующая ячейка
    Inc(cur_col);
    if (cur_col >= cxGrid1DBBandedTableView1.VisibleColumnCount) then begin
      cur_col := 0;
      Inc(cur_rec);
      if (cur_rec >= cxGrid1DBBandedTableView1.DataController.FilteredRecordCount) then
        cur_rec := 0;
    end;

    cxGrid1DBBandedTableView1.ViewData.GetDisplayText(cxGrid1DBBandedTableView1.DataController.FilteredRecordIndex[cur_rec], cxGrid1DBBandedTableView1.VisibleColumns[cur_col].Index, find_text);
    find_text := ReplaceStr(find_text, FormatSettings.ThousandSeparator, '');
    if find_text = '' then
      find_text := VarToStr(cxGrid1DBBandedTableView1.DataController.Values[cxGrid1DBBandedTableView1.DataController.FilteredRecordIndex[cur_rec], cxGrid1DBBandedTableView1.VisibleColumns[cur_col].Index]);

    if Pos(FFindStr, find_text) > 0 then begin
      set_find := True;
      set_end  := True;
      cxGrid1DBBandedTableView1.Controller.FocusRecord(cur_rec, True);
      cxGrid1DBBandedTableView1.VisibleColumns[cur_col].Focused := True;
    end;

    set_end := set_end or ((col = cur_col) and (rec = cur_rec));
  end;

  if not set_find then
    Application.MessageBox(PChar('Ничего не было найдено по шаблону <' + FFindStr + '>'), 'Поиск', MB_OK or MB_ICONINFORMATION);

end;

procedure TfmInvoiceScoreAdd.N1Click(Sender: TObject);
begin
  Client_InvoiceScoreTable.Delete;
  // Пересчитываем номера
  Client_InvoiceScoreTable.DisableControls;
  ReCalcNum;
  Client_InvoiceScoreTable.EnableControls;
end;

procedure TfmInvoiceScoreAdd.N2Click(Sender: TObject);
begin
  Client_InvoiceScoreTable.Append;
end;

procedure TfmInvoiceScoreAdd.N4Click(Sender: TObject);
var
  Query : TADOQuery;
begin
  Query := TADOQuery.Create(Self);
  Query.Connection := Fconnect;
  Query.SQL.Add('SELECT * FROM view_bargain WHERE bargain_id = ' + IntToStr(Client_InvoiceScoreTable.FieldByName('bargain_id').AsInteger));
  Query.Open;

  CreatefmAgree(Query.FieldByName('bargain_id').AsInteger, Query.FieldByName('users_owner_id').AsInteger, Query.FieldByName('date_period').AsDateTime);
  fmAgree2.ShowModal;

  Query.Free;
end;

procedure TfmInvoiceScoreAdd.N5Click(Sender: TObject);
begin
  PrintFrahtCardWeight_Multi2(Fconnect, Client_InvoiceScoreTable.FieldByName('bargain_id').AsString);
end;

procedure TfmInvoiceScoreAdd.N6Click(Sender: TObject);
var i : integer;
begin
  if Application.MessageBox('Вы уверены в необходимости удаления не отмеченных строк ?', 'Удаление', MB_YESNO or MB_ICONQUESTION) = IDYES then begin
    for i := cxGrid1DBBandedTableView1.DataController.RowCount - 1 downto 0 do begin
      cxGrid1DBBandedTableView1.Controller.FocusRecord(i, False);
      if not cxGrid1DBBandedTableView1.Controller.FocusedRecord.Selected then begin
        Client_InvoiceScoreTable.Delete;
      end;
    end;

    // Пересчитываем номера
    Client_InvoiceScoreTable.DisableControls;
    ReCalcNum;
    Client_InvoiceScoreTable.EnableControls;
  end;
end;

procedure TfmInvoiceScoreAdd.N8Click(Sender: TObject);
var
  arr : Array of Variant;
  i : integer;
  rec_num : integer;
begin
  if Client_InvoiceScoreTable.Eof then exit;

  Client_InvoiceScoreTable.DisableControls;

  rec_num := Client_InvoiceScoreTable.FieldByName('rec_num').AsInteger;

  // Сдвигаем поля
  Client_InvoiceScoreTable.Last;
  while Client_InvoiceScoreTable.FieldByName('rec_num').AsInteger > rec_num do begin
    Client_InvoiceScoreTable.Edit;
    Client_InvoiceScoreTable.FieldByName('rec_num').AsInteger := Client_InvoiceScoreTable.FieldByName('rec_num').AsInteger + 1;
    Client_InvoiceScoreTable.Post;
    Client_InvoiceScoreTable.Prior;
  end;

  SetLength(arr, Client_InvoiceScoreTable.FieldCount);
  for i := 0 to Client_InvoiceScoreTable.FieldCount - 1 do begin
    arr[i] := Client_InvoiceScoreTable.Fields.Fields[i].Value;
  end;
  Client_InvoiceScoreTable.Append;
  for i := 0 to Client_InvoiceScoreTable.FieldCount - 1 do begin
    Client_InvoiceScoreTable.Fields.Fields[i].Value := arr[i];
  end;
  Client_InvoiceScoreTable.FieldByName('rec_num').AsInteger := rec_num + 1;
  Client_InvoiceScoreTable.Post;

  Client_InvoiceScoreTable.Prior;

  Client_InvoiceScoreTable.EnableControls;
end;

procedure TfmInvoiceScoreAdd.OnServiceClick(Sender: TObject);
begin
  fmFilter := TfmFilter.Create(0, Query_NameService, 'inf_obj_id', 'inf_obj_cod', 'inf_obj_name_full');
  fmFilter._SetServiceKind := True;
  fmFilter._SelectIndexColumn := 1;
  if fmFilter.ShowModal = mrOk then begin
    if Query_NameService.Locate('inf_obj_id', fmFilter.GetId, []) then begin
      Client_InvoiceScoreTable['name_service'] := Query_NameService.FieldByName('inf_obj_name_full').Value;
      Client_InvoiceScoreTable['service_cod'] := Query_NameService.FieldByName('inf_obj_cod').Value;
      //Client_InvoiceScoreTable.Post;
      // Отображаем редактор, т.к. после Пересчета он был закрыт, из-за чего возникает ошибка по окончании данной процедуры
      //cxGrid1DBBandedTableView1.Controller.EditingController.ShowEdit;
    end;
  end;
end;

procedure TfmInvoiceScoreAdd.OnKargoClick(Sender: TObject);
var
  Query : TADOQuery;
begin
  Query := TADOQuery.Create(nil);
  Query.Connection := Fconnect;

  Query.SQL.Add('SELECT inf_obj_id, inf_obj_name, inf_obj_cod');
  Query.SQL.Add('FROM inf_obj_ETSNG');
  Query.SQL.Add('WHERE (dbo.GetInfObjVisible(str_group_visible) = 1)');
  Query.SQL.Add('ORDER BY inf_obj_cod');

  Query.Open;
  fmFilter := TfmFilter.Create(0, Query, 'inf_obj_id', 'inf_obj_cod', 'inf_obj_name');
  fmFilter._SelectIndexColumn := 1;
  if fmFilter.ShowModal = mrOk then begin
    if (TcxTextEdit(cxGrid1DBBandedTableView1.Controller.EditingController.Edit).SelText = TcxTextEdit(cxGrid1DBBandedTableView1.Controller.EditingController.Edit).Text) then
      TcxTextEdit(cxGrid1DBBandedTableView1.Controller.EditingController.Edit).SelStart := 10000;
    if TcxTextEdit(cxGrid1DBBandedTableView1.Controller.EditingController.Edit).SelStart = Length(TcxTextEdit(cxGrid1DBBandedTableView1.Controller.EditingController.Edit).Text) then
      TcxTextEdit(cxGrid1DBBandedTableView1.Controller.EditingController.Edit).SelText := ' ';
    TcxTextEdit(cxGrid1DBBandedTableView1.Controller.EditingController.Edit).SelText := fmFilter.GetName;
  end;
  Query.Free;
end;

procedure TfmInvoiceScoreAdd.OnNodeClick(Sender: TObject);
var
  Query : TADOQuery;
begin
  Query := TADOQuery.Create(nil);
  Query.Connection := Fconnect;

  Query.SQL.Add('SELECT n.inf_obj_id, n.inf_obj_cod, n.inf_obj_name, n.state_id, state_cod = s.inf_obj_cod, state_name = s.inf_obj_name, n.RoadAbbr');
  Query.SQL.Add('FROM inf_obj_NODE n');
  Query.SQL.Add('JOIN inf_obj_STATE s');
  Query.SQL.Add('ON n.state_id = s.inf_obj_id');
  Query.SQL.Add('WHERE (' + DateToSQL(EndOfAMonth(StrToInt(ComboBox3.Text), ComboBox2.ItemIndex + 1)) + ' Between n.FromDate And n.ToDate)');
  Query.SQL.Add('ORDER BY n.inf_obj_name');

  Query.Open;
  fmFilter := TfmFilter.Create(0, Query, 'inf_obj_id', 'inf_obj_cod', 'inf_obj_name');
  fmFilter._SetNodeChoose := True;
  fmFilter._SelectIndexColumn := 1;
  if fmFilter.ShowModal = mrOk then begin
    if (TcxTextEdit(cxGrid1DBBandedTableView1.Controller.EditingController.Edit).SelText = TcxTextEdit(cxGrid1DBBandedTableView1.Controller.EditingController.Edit).Text) then
      TcxTextEdit(cxGrid1DBBandedTableView1.Controller.EditingController.Edit).SelStart := 10000;
    if TcxTextEdit(cxGrid1DBBandedTableView1.Controller.EditingController.Edit).SelStart = Length(TcxTextEdit(cxGrid1DBBandedTableView1.Controller.EditingController.Edit).Text) then
      TcxTextEdit(cxGrid1DBBandedTableView1.Controller.EditingController.Edit).SelText := ' ';
    TcxTextEdit(cxGrid1DBBandedTableView1.Controller.EditingController.Edit).SelText := fmFilter.GetName;
  end;
  Query.Free;
end;

procedure TfmInvoiceScoreAdd.PopupMenu1Popup(Sender: TObject);
begin
  N4.Enabled := (Client_InvoiceScoreTable.FieldByName('bargain_id').Value <> null);
  N5.Enabled := (Client_InvoiceScoreTable.FieldByName('bargain_id').Value <> null);
  if MatchText(Facts_type_cod, ['133', '182', '253']) then begin
    N4.Enabled := True;
    N5.Enabled := True;
  end;
end;

procedure TfmInvoiceScoreAdd.SetActs(str_acts_id : string);
var
  Query : TADOQuery;
begin
  Fstr_acts_id := str_acts_id;
  cxButtonEdit_Acts.Text := '';
  Facts_type_cod := '-9';

  if Fstr_acts_id <> '' then begin
    Query := TADOQuery.Create(nil);
    Query.Connection := Fconnect;
    Query.SQL.Clear;
    Query.SQL.Add('SELECT * FROM view_acts WHERE acts_id in (' + Fstr_acts_id + ')');
    Query.Open;
    Facts_type_cod := Query.FieldByName('acts_type_cod').AsString;
    while not Query.Eof do begin
      if cxButtonEdit_Acts.Text <> '' then cxButtonEdit_Acts.Text := cxButtonEdit_Acts.Text + '; ';
      cxButtonEdit_Acts.Text := cxButtonEdit_Acts.Text + '№ ' + Query.FieldByName('acts_cod').AsString + ' от ' + FormatDateTime('dd.mm.yy', Query.FieldByName('acts_date').AsDateTime);

      if MatchText(Query.FieldByName('acts_type_cod').AsString, ['133', '182']) then
        cxTextEdit5.Text := 'Отчет № ' + Query.FieldByName('acts_cod').AsString + ' от ' + FormatDateTime('dd.mm.yy', Query.FieldByName('acts_date').AsDateTime);
      if MatchText(Query.FieldByName('acts_type_cod').AsString, ['253','306', '308', '309','375','404'])then
        cxTextEdit5.Text := Query.FieldByName('acts_cod').AsString + ' от ' + FormatDateTime('dd.mm.yy', Query.FieldByName('acts_date').AsDateTime);
      if MatchText(Query.FieldByName('acts_type_cod').AsString, ['195']) then
        cxTextEdit5.Text := 'Акт № ' + Query.FieldByName('acts_cod').AsString + ' от ' + FormatDateTime('dd.mm.yy', Query.FieldByName('acts_date').AsDateTime);

//      // Не понятно зачем это требуется, потом эти свойства все равно перетираются
//      if MatchText(Query.FieldByName('acts_type_cod').AsString, ['133', '182', '253', '306', '308', '309', '375', '404']) then begin
//        cxGrid1DBBandedTableView1.OptionsData.Editing   := True;
//        cxGrid1DBBandedTableView1.OptionsData.Inserting := True;
//        cxGrid1DBBandedTableView1.OptionsData.Deleting  := True;
//      end;
      Query.Next;
    end;
    Query.Free;
  end;

  // изменение акта в любую сторону ведет к очистке таблицы
  if Client_InvoiceScoreTable.Active then
    Client_InvoiceScoreTable.EmptyDataSet;

  // не закрываем поля на редактирование при создании по акту
  // можно подкорректировать счет-фактуру
//  cxGrid1DBBandedTableView1.OptionsData.Deleting  := (Fstr_acts_id = '') and (Fstr_pays_id = '');
//  cxGrid1DBBandedTableView1.OptionsData.Editing   := (Fstr_acts_id = '') and (Fstr_pays_id = '');
//  cxGrid1DBBandedTableView1.OptionsData.Inserting := (Fstr_acts_id = '') and (Fstr_pays_id = '');
//
//  N1.Enabled := (Fstr_acts_id = '') and (Fstr_pays_id = '');
//  N2.Enabled := (Fstr_acts_id = '') and (Fstr_pays_id = '');
//  N6.Enabled := (Fstr_acts_id = '') and (Fstr_pays_id = '');
//  N8.Enabled := (Fstr_acts_id = '') and (Fstr_pays_id = '');
//
//  DBLookupComboBox2.Properties.ReadOnly := not ((Fstr_acts_id = '') and (Fstr_pays_id = ''));
//
//  //на основании актов по ремонту
//  if MatchText(Facts_type_cod, ['133', '182', '253']) then begin
//    cxGrid1DBBandedTableView1.OptionsData.Editing   := True;
//    cxGrid1DBBandedTableView1.OptionsData.Inserting := True;
//    cxGrid1DBBandedTableView1.OptionsData.Deleting  := True;
//    N1.Enabled := True;
//    N2.Enabled := True;
//    N6.Enabled := True;
//    N8.Enabled := True;
//  end;
end;

procedure TfmInvoiceScoreAdd.SetPays(str_pays_id : string);
var
  Query : TADOQuery;
begin
  Fstr_pays_id := str_pays_id;
  cxButtonEdit_Acts.Text := '';

  if Fstr_pays_id <> '' then begin
    Query := TADOQuery.Create(nil);
    Query.Connection := Fconnect;
    Query.SQL.Clear;
    Query.SQL.Add('SELECT * FROM view_pay WHERE pay_id in (' + Fstr_pays_id + ')');
    Query.Open;

    cxCheckBox3.Checked := Query.FieldByName('set_return').AsBoolean;

    while not Query.Eof do begin
      if cxButtonEdit_Acts.Text <> '' then cxButtonEdit_Acts.Text := cxButtonEdit_Acts.Text + '; ';
      cxButtonEdit_Acts.Text := cxButtonEdit_Acts.Text + '№ ' + Query.FieldByName('pay_num').AsString + ' от ' + FormatDateTime('dd.mm.yy', Query.FieldByName('pay_date').AsDateTime);

      Query.Next;
    end;
    Query.Free;
  end;

  // изменение акта/платежа в любую сторону ведет к очистке таблицы
  if Client_InvoiceScoreTable.Active then
    Client_InvoiceScoreTable.EmptyDataSet;

  // не закрываем поля на редактирование при создании по платежу
  // можно подкорректировать счет-фактуру
//  cxGrid1DBBandedTableView1.OptionsData.Deleting  := (Fstr_acts_id = '') and (Fstr_pays_id = '');
//  cxGrid1DBBandedTableView1.OptionsData.Editing   := (Fstr_acts_id = '') and (Fstr_pays_id = '');
//  cxGrid1DBBandedTableView1.OptionsData.Inserting := (Fstr_acts_id = '') and (Fstr_pays_id = '');
//
//  N1.Enabled := (Fstr_acts_id = '') and (Fstr_pays_id = '');
//  N2.Enabled := (Fstr_acts_id = '') and (Fstr_pays_id = '');
//  N6.Enabled := (Fstr_acts_id = '') and (Fstr_pays_id = '');
//  N8.Enabled := (Fstr_acts_id = '') and (Fstr_pays_id = '');
//
//  DBLookupComboBox2.Properties.ReadOnly := not ((Fstr_acts_id = '') and (Fstr_pays_id = ''));
end;

end.

