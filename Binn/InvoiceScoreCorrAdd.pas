unit InvoiceScoreCorrAdd;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, ExtCtrls, cxPropertiesStore, cxControls, cxContainer,
  cxEdit, cxTextEdit, ComCtrls, DBCtrls, Mask, Db, ADODB, cxMaskEdit,
  cxButtonEdit, cxClasses, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridBandedTableView, cxGridDBBandedTableView, Math,
  cxGridLevel, cxGrid, DBClient, Raznoe, cxGridDBTableView, Menus, cxStyles,
  cxCustomData, cxGraphics, cxFilter, cxData, cxDataStorage, cxDBData,
  cxCurrencyEdit, cxGroupBox, cxRadioGroup, Variants, cxCheckBox, Other,
  cxLookAndFeelPainters, StrUtils, cxDropDownEdit, cxLookupEdit, cxDBLookupEdit,
  cxDBLookupComboBox, cxCalendar, cxButtons, DateUtils, cxMemo, cxPC, cxLabel,
  cxCheckComboBox, cxLookAndFeels, XMLDoc, Default, dxCore, cxDateUtils, cxNavigator, dxBarBuiltInMenu,
  dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel,
  dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
  dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMetropolis, dxSkinMetropolisDark, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013DarkGray,
  dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinOffice2016Colorful,
  dxSkinOffice2016Dark, dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic,
  dxSkinSharp, dxSkinSharpPlus, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinTheAsphaltWorld, dxSkinsDefaultPainters,
  dxSkinValentine, dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue, dxSkinscxPCPainter, cxDataControllerConditionalFormattingRulesManagerDialog, dxSkinTheBezier, dxDateRanges, dxSkinOffice2019Colorful;

type
  TfmInvoiceScoreCorrAdd = class(TForm)
    cxPropertiesStore1: TcxPropertiesStore;
    Query_Currency: TADOQuery;
    DS_Currency: TDataSource;
    Panel4: TPanel;
    Panel5: TPanel;
    Panel3: TPanel;
    Panel6: TPanel;
    Label2: TLabel;
    Label3: TLabel;
    cxTextEdit1: TcxTextEdit;
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
    cxGrid1Level1: TcxGridLevel;
    Client_InvoiceScoreTableprice_ed_izm: TCurrencyField;
    Client_InvoiceScoreTablecost_without_nds: TCurrencyField;
    Client_InvoiceScoreTabletax_sum: TCurrencyField;
    PopupMenu1: TPopupMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    Client_InvoiceScoreTablebargain_id: TIntegerField;
    cxGrid1DBBandedTableView1bargain_id: TcxGridDBBandedColumn;
    DBLookupComboBox2: TcxLookupComboBox;
    DateTimePicker3: TcxDateEdit;
    ComboBox2: TcxComboBox;
    ComboBox3: TcxComboBox;
    Query_NameService: TADOQuery;
    DS_NameService: TDataSource;
    N7: TMenuItem;
    Client_InvoiceScoreTableset_hand_edit: TBooleanField;
    cxGrid1DBBandedTableView1invoice_score_table_id: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1set_hand_edit: TcxGridDBBandedColumn;
    N3: TMenuItem;
    Client_InvoiceScoreTablerec_num: TIntegerField;
    cxGrid1DBBandedTableView1rec_num: TcxGridDBBandedColumn;
    N10: TMenuItem;
    N11: TMenuItem;
    N12: TMenuItem;
    Client_InvoiceScoreTableglobal_color: TIntegerField;
    cxGrid1DBBandedTableView1global_color: TcxGridDBBandedColumn;
    N13: TMenuItem;
    DS_NDS: TDataSource;
    BitBtn3: TBitBtn;
    Query_NDS: TADOQuery;
    Client_InvoiceScoreTabletax_rate_id: TIntegerField;
    cxPageControl1: TcxPageControl;
    cxTabSheet1: TcxTabSheet;
    cxTabSheet2: TcxTabSheet;
    Panel1: TPanel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label8: TLabel;
    cxButtonEdit2: TcxButtonEdit;
    cxButtonEdit3: TcxButtonEdit;
    cxButtonEdit4: TcxButtonEdit;
    cxButtonEdit8: TcxButtonEdit;
    cxButtonEdit9: TcxButtonEdit;
    cxButtonEdit10: TcxButtonEdit;
    cxTextEdit5: TcxTextEdit;
    Panel7: TPanel;
    GroupBox1: TGroupBox;
    GroupBox3: TGroupBox;
    cxCheckBox3: TcxCheckBox;
    cxRadioGroup3: TcxRadioGroup;
    cxCheckBox4: TcxCheckBox;
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
    cxCheckBox7: TcxCheckBox;
    Label9: TLabel;
    cxTextEdit3: TcxTextEdit;
    cxDateEdit1: TcxDateEdit;
    Label21: TLabel;
    Client_InvoiceScoreTableed_izm_cod: TStringField;
    cxGrid1DBBandedTableView1ed_izm_cod: TcxGridDBBandedColumn;
    GroupBox5: TGroupBox;
    cxCheckBox8: TcxCheckBox;
    cxTextEdit4: TcxTextEdit;
    N14: TMenuItem;
    cxCheckBox10: TcxCheckBox;
    Label22: TLabel;
    cxButtonEdit15: TcxButtonEdit;
    Client_InvoiceScoreTableold_ed_izm_cod: TStringField;
    Client_InvoiceScoreTableold_ed_izm_name: TStringField;
    Client_InvoiceScoreTableold_quantity: TCurrencyField;
    Client_InvoiceScoreTableold_aktciz: TCurrencyField;
    Client_InvoiceScoreTableold_cost_with_nds: TCurrencyField;
    Client_InvoiceScoreTableold_price_ed_izm: TCurrencyField;
    Client_InvoiceScoreTableold_cost_without_nds: TCurrencyField;
    Client_InvoiceScoreTableold_tax_sum: TCurrencyField;
    Client_InvoiceScoreTableold_tax_rate_id: TIntegerField;
    cxGrid1DBBandedTableView1old_ed_izm_cod: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1old_ed_izm_name: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1old_quantity: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1old_aktciz: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1old_cost_with_nds: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1old_price_ed_izm: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1old_cost_without_nds: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1old_tax_sum: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1old_tax_rate_id: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1Column1: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1Column2: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1Column3: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1Column4: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1Column5: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1Column6: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1Column7: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1Column8: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1Column9: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1Column10: TcxGridDBBandedColumn;
    Client_InvoiceScoreTablenew_aktciz: TCurrencyField;
    Client_InvoiceScoreTablenew_cost_with_nds: TCurrencyField;
    Client_InvoiceScoreTablenew_cost_without_nds: TCurrencyField;
    Client_InvoiceScoreTablenew_tax_sum: TCurrencyField;
    Client_InvoiceScoreTableparent_id: TIntegerField;
    Client_InvoiceScoreTableinc_aktciz: TCurrencyField;
    Client_InvoiceScoreTableinc_cost_with_nds: TCurrencyField;
    Client_InvoiceScoreTableinc_cost_without_nds: TCurrencyField;
    Client_InvoiceScoreTableinc_tax_sum: TCurrencyField;
    Client_InvoiceScoreTabledec_aktciz: TCurrencyField;
    Client_InvoiceScoreTabledec_cost_with_nds: TCurrencyField;
    Client_InvoiceScoreTabledec_cost_without_nds: TCurrencyField;
    Client_InvoiceScoreTabledec_tax_sum: TCurrencyField;
    cxGrid1DBBandedTableView1inc_tax_sum: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1inc_cost_without_nds: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1inc_cost_with_nds: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1inc_aktciz: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1dec_aktciz: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1dec_cost_with_nds: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1dec_cost_without_nds: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1dec_tax_sum: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1Column11: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1Column12: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1Column13: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1Column14: TcxGridDBBandedColumn;
    Client_InvoiceScoreTableservice_cod: TStringField;
    cxGrid1DBBandedTableView1service_cod: TcxGridDBBandedColumn;
    PopupMenu2: TPopupMenu;
    N18: TMenuItem;
    N17: TMenuItem;
    N15: TMenuItem;
    N16: TMenuItem;
    Label23: TLabel;
    cxTextEdit6: TcxTextEdit;
    Label24: TLabel;
    cxComboBox1: TcxComboBox;
    Label25: TLabel;
    cxComboBox2: TcxComboBox;
    cxLabel3: TcxLabel;
    cxButtonEdit16: TcxButtonEdit;
    cxCheckBox6: TcxCheckBox;
    cxCheckBox9: TcxCheckBox;
    cxCheckBox11: TcxCheckBox;
    cxCheckBox13: TcxCheckBox;
    cxButton1: TcxButton;
    cxButton3: TcxButton;
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
    procedure cxGrid1DBBandedTableView1Editing(Sender: TcxCustomGridTableView; AItem: TcxCustomGridTableItem; var AAllow: Boolean);
    procedure Client_InvoiceScoreTableCalcFields(DataSet: TDataSet);
    procedure Client_InvoiceScoreTableNewRecord(DataSet: TDataSet);
    procedure cxButtonEdit2PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure DBLookupComboBox2PropertiesChange(Sender: TObject);
    procedure cxGrid1DBBandedTableView1name_servicePropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
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
    procedure cxCheckBox10Click(Sender: TObject);
    procedure cxGrid1DBBandedTableView1FocusedRecordChanged(Sender: TcxCustomGridTableView; APrevFocusedRecord, AFocusedRecord: TcxCustomGridRecord; ANewItemRecordFocusingChanged: Boolean);
    procedure cxCheckBox11PropertiesEditValueChanged(Sender: TObject);
    procedure cxCheckBox9PropertiesEditValueChanged(Sender: TObject);
    procedure cxGrid1DBBandedTableView1TcxGridDBDataControllerTcxDataSummaryFooterSummaryItems3GetText(Sender: TcxDataSummaryItem; const AValue: Variant; AIsFooter: Boolean; var AText: string);
    procedure cxGrid1DBBandedTableView1TcxGridDBDataControllerTcxDataSummaryFooterSummaryItems4GetText(Sender: TcxDataSummaryItem; const AValue: Variant; AIsFooter: Boolean; var AText: string);
    procedure cxGrid1DBBandedTableView1cost_with_ndsPropertiesEditValueChanged(Sender: TObject);
    procedure cxGrid1DBBandedTableView1Column11GetDisplayText(Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord; var AText: string);

    procedure OnNodeClick(Sender: TObject);
    procedure OnKargoClick(Sender: TObject);
    procedure OnServiceClick(Sender: TObject);
    procedure cxComboBox1PropertiesEditValueChanged(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure cxButton3Click(Sender: TObject);
  private
    Faction              : boolean;
    Fcontract_id         : integer;
    Ffirm_self_id        : integer;
    Finvoice_score_id    : integer;
    sum_itog             : currency;
    FFindStr             : string;
    Fset_save            : boolean;
    Ftype_score          : integer;
    Ffirm_director_id    : integer;
    Ffirm_buh_id         : integer;
    Ffirm_seller_id      : integer;
    Fcontract_agent_id   : integer;

    Fset_print_empty_ed_izm : Boolean;

        // Запущена как DLL
    Fset_run_dll : boolean;
    Fconnect     : TADOConnection;
    Fusr_pwd_lis : PUser_pwd;

    procedure UpdateInvoiceScore(invoice_score_id : integer);

    function  GetLocalExchange(currency_from, currency_to : integer) : Double;
    procedure ReCalcNum;
    procedure EdIzm2OKEI;

    procedure DragRecord(record_from, record_to: integer; record_select: array of integer);

    procedure SetContractID(contract_id, firm_self_id : integer);
    procedure SetContractAgentID(contract_id : integer);
  public
    constructor Create(AOwner : TApplication; action : boolean; type_score : integer);
    constructor CreateDLL(AOwner : TApplication; action : boolean; type_score : integer; usr_pwd_lis: PUser_pwd);
  published
    property _GetInvoiceScoreID  : integer read Finvoice_score_id;
    property _UpdateInvoiceScore : integer write UpdateInvoiceScore;
  end;

var
  fmInvoiceScoreCorrAdd: TfmInvoiceScoreCorrAdd;

implementation
     uses Main, Filter, Contract, Acts, Period, Firm;
{$R *.DFM}

{ TfmInvoiceScoreAdd }

constructor TfmInvoiceScoreCorrAdd.CreateDLL(AOwner : TApplication; action : boolean; type_score : integer; usr_pwd_lis: PUser_pwd);
begin
  inherited Create(Aowner);
  Screen.Cursor := crHourglass;

  Caption := Caption + ' [Новая запись]';

  Fset_save          := False;
  Faction            := action;
  Ftype_score        := type_score;
  Finvoice_score_id  := -9;
  Ffirm_director_id  := -9;
  Ffirm_buh_id       := -9;
  Ffirm_seller_id    := -9;
  Fcontract_agent_id := -9;

  Fset_run_dll  := True;
  Fusr_pwd_lis  := usr_pwd_lis;
  Fconnect := TADOConnection.Create(nil);
  Fconnect.ConnectionString := 'Persist Security Info=True;Provider=SQLOLEDB.1;User ID='+Fusr_pwd_lis^.user_name+';Password='+Fusr_pwd_lis^.user_pass+';Initial Catalog='+Fusr_pwd_lis^.catalog+';Data Source='+Fusr_pwd_lis^.server+';';
  Fconnect.KeepConnection   := False;
  Fconnect.LoginPrompt      := False;

  Query_NameService.Connection := Fconnect;
  Query_NDS.Connection := Fconnect;
  Query_Currency.Connection := Fconnect;

  if type_score = 2 then begin
    GroupBox4.Visible     := false;
    GroupBox1.Visible     := false;
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
  DBLookupComboBox2.EditValue := Query_Currency.FieldByNAme('currency_id').AsInteger;

  // Формирование PopupMenu со стандартными фразами
  Query_NameService.Open;

  cxButton1.Enabled := False;
  BitBtn3.Enabled := False;

  cxButtonEdit1.Enabled := False;
  cxButtonEdit2.Enabled := False;
  cxButtonEdit3.Enabled := False;
  cxButtonEdit4.Enabled := False;
//  cxButtonEdit5.Enabled := False;
//  cxButtonEdit6.Enabled := False;
//  cxMemo2.Enabled := False;
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
  DBLookupComboBox2.Properties.OnChange := nil;

  cxPageControl1.ActivePageIndex := 0;
  Screen.Cursor := crDefault;
end;


constructor TfmInvoiceScoreCorrAdd.Create(AOwner : TApplication; action : boolean; type_score : integer);
begin
  inherited Create(Aowner);
  Screen.Cursor := crHourglass;

  Caption := Caption + ' [Новая запись]';

  Fset_save         := False;
  Faction           := action;
  Ftype_score       := type_score;
  Finvoice_score_id := -9;
  Ffirm_director_id := -9;
  Ffirm_buh_id      := -9;
  Ffirm_seller_id   := -9;

  Fconnect := fmMain.Lis;

  if type_score = 2 then begin
    GroupBox4.Visible     := false;
    GroupBox1.Visible     := false;
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
  DBLookupComboBox2.EditValue := Query_Currency.FieldByNAme('currency_id').AsInteger;

  // Формирование PopupMenu со стандартными фразами
  Query_NameService.Open;

  cxPageControl1.ActivePageIndex := 0;
  MonitorEventFormOpen('OPEN_FORM', self.Name, Fconnect, -9);
  Screen.Cursor := crDefault;
end;

function TfmInvoiceScoreCorrAdd.GetLocalExchange(currency_from, currency_to : integer): Double;
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

procedure TfmInvoiceScoreCorrAdd.GroupBox4PropertiesChange(Sender: TObject);
begin
  cxButtonEdit14.Enabled := (cxRadioGroup3.EditValue = 2);
  cxButtonEdit13.Enabled := (cxRadioGroup3.EditValue = 2);
  cxButtonEdit12.Enabled := (cxRadioGroup3.EditValue = 2);
end;

procedure TfmInvoiceScoreCorrAdd.UpdateInvoiceScore(invoice_score_id: integer);
var
  Query   : TADOQuery;
  SP      : TADOStoredProc;
  old_nds_cod : string;
  new_nds_cod : string;
begin
  Screen.Cursor := crHourglass;

  Caption := AnsiReplaceStr(Caption, '[Новая запись]', '[№ Записи = ' + IntToStr(invoice_score_id) + ']');

  Finvoice_score_id := invoice_score_id;

  Query := TADOQuery.Create(nil);
  Query.Connection := Fconnect;
  Query.SQL.Add('SELECT * FROM view_invoice_score WHERE invoice_score_id = ' + IntToStr(invoice_score_id));
  Query.Open;

  cxTextEdit1.Text            := Query.FieldByName('score_cod').AsString;
  DateTimePicker3.Date        := Query.FieldByName('score_date').AsDateTime;
  cxTextEdit3.EditValue       := Query.FieldByName('correction_cod').Value;
  cxDateEdit1.EditValue       := Query.FieldByName('correction_date').Value;

  cxComboBox1.ItemIndex       := iif(Query.FieldByName('set_universal_trans_doc').AsBoolean, 1, 0);
  if Query.FieldByName('type_universal_trans_doc').AsInteger = 2 then
    cxComboBox2.ItemIndex := 1
  else
    cxComboBox2.ItemIndex := 0;

  SetContractID(Query.FieldByName('contract_id').AsInteger, Query.FieldByName('firm_self').AsInteger);

  cxButtonEdit1.Text          := Query.FieldByName('firm_customer_name').AsString;
  cxTextEdit2.Text            := Query.FieldByName('contract_cod').AsString;
  DBLookupComboBox2.EditValue := Query.FieldByName('currency_id').AsInteger;

  cxButtonEdit14.Text         := FormatFloat('#,##0.0000', Query.FieldByName('exchange_val_USD').AsCurrency);
  cxButtonEdit13.Text         := FormatFloat('#,##0.0000', Query.FieldByName('exchange_val_EUR').AsCurrency);
  cxButtonEdit12.Text         := FormatFloat('#,##0.0000', Query.FieldByName('exchange_val_CHF').AsCurrency);

  ComboBox2.ItemIndex         := StrToInt(FormatDateTime('m', Query.FieldByName('score_period_date').AsDatetime)) - 1;
  ComboBox3.ItemIndex         := ComboBox3.Properties.Items.IndexOf(Query.FieldByName('score_period_date_year').AsString);
//  cxMemo2.Text                := Query.FieldByName('score_pay').AsString;

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
  end;

  // подписанты - гл.бухгалтер
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

//  Fstr_acts_id := GetIDFromSQL('SELECT acts_id FROM acts_invoice_score WHERE invoice_score_id = ' + IntToStr(Finvoice_score_id), Fconnect);
//  SetActs(Fstr_acts_id);

  // Шапка
  cxButtonEdit2.EditValue  := Query.FieldByName('score_firm_self_name_full').Value;
  cxButtonEdit3.EditValue  := Query.FieldByName('score_firm_self_address').Value;
  cxButtonEdit4.EditValue  := Query.FieldByName('score_firm_self_inn_kpp').Value;
//  cxButtonEdit5.EditValue  := Query.FieldByName('score_firm_sender_name').Value;
//  cxButtonEdit6.EditValue  := Query.FieldByName('score_firm_reciver_name').Value;
//  cxMemo2.Text             := Query.FieldByName('score_pay').AsString;
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
  Query.Close;

  // Таблица
//  Query.Close;
//  Query.SQL.Clear;
//  Query.SQL.Add('SELECT new.*, ');
//  Query.SQL.Add('  old.ed_izm_cod       as old_ed_izm_cod, ');
//  Query.SQL.Add('  old.ed_izm_name      as old_ed_izm_name, ');
//  Query.SQL.Add('  old.quantity         as old_quantity, ');
//  Query.SQL.Add('  old.price_ed_izm     as old_price_ed_izm, ');
//  Query.SQL.Add('  old.cost_without_nds as old_cost_without_nds, ');
//  Query.SQL.Add('  old.aktciz           as old_aktciz, ');
//  Query.SQL.Add('  old.tax_rate_id      as old_tax_rate_id, ');
//  Query.SQL.Add('  old.tax_sum          as old_tax_sum, ');
//  Query.SQL.Add('  old.cost_with_nds    as old_cost_with_nds ');
//  Query.SQL.Add('FROM invoice_score_table as new');
//  Query.SQL.Add('LEFT JOIN invoice_score_table as old ON new.parent_id = old.invoice_score_table_id');
//  Query.SQL.Add('WHERE new.invoice_score_id = ' + IntToStr(invoice_score_id) + ' ');
//  Query.SQL.Add('ORDER BY new.invoice_score_table_id');
//  Query.Open;

  SP := TADOStoredProc.Create(self);
  SP.Connection := Fconnect;
  SP.ProcedureName := 'sp_invoice_score_table_get';
  SP.Parameters.Refresh;
  SP.Parameters.ParamByName('@invoice_score_id').Value := invoice_score_id;
  SP.Open;

  Client_InvoiceScoreTable.AutoCalcFields := False;
  Client_InvoiceScoreTable.EmptyDataSet;
  Client_InvoiceScoreTable.DisableControls;
  while not SP.Eof do begin
      ShowTextMessage('Осталось строк ' + IntToStr(SP.RecordCount - SP.RecNo + 1) + '...', False);

      // Если Ставка НДС = "НДС исчисляется налоговым агентом", то Сумма налога и стоимость с налогом - пустые
      // Расчет ведем не от Суммы с НДС, а от Суммы без НДС
      // Задание ID = 13063041, 26.03.2018, Кутилина Т.
      old_nds_cod := VarToStr(Query_NDS.Lookup('inf_obj_id', SP['old_tax_rate_id'], 'inf_obj_name_full'));
      new_nds_cod := VarToStr(Query_NDS.Lookup('inf_obj_id', SP['tax_rate_id'],     'inf_obj_name_full'));

      Client_InvoiceScoreTable.Append;
      Client_InvoiceScoreTable['tax_rate_id']          := SP['tax_rate_id'];

      Client_InvoiceScoreTable['set_hand_edit']        := SP['set_hand_edit'];
      Client_InvoiceScoreTable['name_service']         := SP['name_service'];
      Client_InvoiceScoreTable['service_cod']          := SP['service_cod'];

      Client_InvoiceScoreTable['ed_izm_cod']           := SP['ed_izm_cod'];
      Client_InvoiceScoreTable['ed_izm_name']          := SP['ed_izm_name'];
      Client_InvoiceScoreTable['quantity']             := SP['quantity'];
      Client_InvoiceScoreTable['price_ed_izm']         := SP['price_ed_izm'];
      Client_InvoiceScoreTable['new_cost_without_nds'] := SP.FieldByName('old_cost_without_nds').AsCurrency + SP.FieldByName('cost_without_nds').AsCurrency;
      Client_InvoiceScoreTable['new_aktciz']           := SP.FieldByName('old_aktciz').AsCurrency + SP.FieldByName('aktciz').AsCurrency;
      if Client_InvoiceScoreTable['new_aktciz'] = 0 then Client_InvoiceScoreTable['new_aktciz'] := null;
      if new_nds_cod = '00.900' then begin
        Client_InvoiceScoreTable['new_tax_sum']        := null;
        Client_InvoiceScoreTable['new_cost_with_nds']  := null;
      end else begin
        Client_InvoiceScoreTable['new_tax_sum']        := SP.FieldByName('old_tax_sum').AsCurrency + SP.FieldByName('tax_sum').AsCurrency;
        Client_InvoiceScoreTable['new_cost_with_nds']  := SP.FieldByName('old_cost_with_nds').AsCurrency + SP.FieldByName('cost_with_nds').AsCurrency;
      end;

      Client_InvoiceScoreTable['old_tax_rate_id']      := SP['old_tax_rate_id'];

      Client_InvoiceScoreTable['old_ed_izm_cod']       := SP['old_ed_izm_cod'];
      Client_InvoiceScoreTable['old_ed_izm_name']      := SP['old_ed_izm_name'];
      Client_InvoiceScoreTable['old_quantity']         := SP['old_quantity'];
      Client_InvoiceScoreTable['old_price_ed_izm']     := SP['old_price_ed_izm'];
      Client_InvoiceScoreTable['old_cost_without_nds'] := SP['old_cost_without_nds'];
      Client_InvoiceScoreTable['old_aktciz']           := SP['old_aktciz'];
      if Client_InvoiceScoreTable['old_aktciz'] = 0 then Client_InvoiceScoreTable['old_aktciz'] := null;
      if old_nds_cod = '00.900' then begin
        Client_InvoiceScoreTable['old_tax_sum']        := null;
        Client_InvoiceScoreTable['old_cost_with_nds']  := null;
      end else begin
        Client_InvoiceScoreTable['old_tax_sum']        := SP['old_tax_sum'];
        Client_InvoiceScoreTable['old_cost_with_nds']  := SP['old_cost_with_nds'];
      end;

      Client_InvoiceScoreTable['parent_id']            := SP['parent_id'];
      Client_InvoiceScoreTable['bargain_id']           := SP['bargain_id'];
      Client_InvoiceScoreTable.Post;
      SP.Next;
  end;
  SP.Close;

  SP.Free;
  Query.Free;

  Client_InvoiceScoreTable.First;
  Client_InvoiceScoreTable.EnableControls;
  Client_InvoiceScoreTable.AutoCalcFields := True;

  ShowTextMessage();
  MonitorEventFormOpen('UPDATE_FORM', self.Name, Fconnect, Finvoice_score_id);
  Screen.Cursor := crDefault;
end;

procedure TfmInvoiceScoreCorrAdd.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if Fset_run_dll then Fconnect.Free;
  Action := caFree;
  if Fset_save then
    Self.ModalResult := mrOk;
end;



// Процедура заполняет значения Продавца по данным подрядчика
// Нужна для формирования с-ф по Отчетам на возмещение
procedure TfmInvoiceScoreCorrAdd.SetContractAgentID(contract_id: integer);
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

procedure TfmInvoiceScoreCorrAdd.SetContractID(contract_id, firm_self_id: integer);
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
  DBLookupComboBox2.EditValue := Query.FieldByName('currency_id').AsInteger;

  Query_Contact := TADOQuery.Create(self);
  Query_Contact.Connection := Fconnect;
  Query_Contact.SQL.Add('SELECT TOP 1 firm_contact_id, firm_contact_name, firm_contact_comment FROM view_firm_contact');
  Query_Contact.SQL.Add('WHERE firm_id = ' + IntToStr(firm_self_id));
  Query_Contact.SQL.Add('AND type_contact_cod BETWEEN ''20'' AND ''99'' AND type_contact_cod NOT IN (''23'', ''24'')');
  Query_Contact.SQL.Add('AND ' + DateToSQL(d1) + ' BETWEEN date_begin AND ISNULL(date_end, ' + DateToSQL(d1) + ')');
  Query_Contact.SQL.Add('ORDER BY set_default DESC, type_contact_cod, firm_contact_name');
  Query_Contact.Open;

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

  if Query_Contact.Eof then begin
    Ffirm_buh_id := -9;
    cxButtonEdit11.Text := '';
  end else begin
    Ffirm_buh_id := Query_Contact.FieldByName('firm_contact_id').AsInteger;
    cxButtonEdit11.Text := Query_Contact.FieldByName('firm_contact_name').AsString;
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

    cxButtonEdit8.Text := Query.FieldByName('firm_customer_name_full').AsString;
    cxButtonEdit9.Text := Query_Customer_Address.FieldByName('firm_customer_address').AsString;
    cxButtonEdit10.Text := Query.FieldByName('firm_customer_inn_kpp').AsString;

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

//    if MatchText(Facts_type_cod, ['253','308','306','309']) then begin
//      cxButtonEdit2.Text := Query_Firm_Self.FieldByName('firm_name_full').AsString;
//
//      cxButtonEdit5.Text := '---';
//      cxButtonEdit6.Text := '---';
//
//      cxButtonEdit8.Text := Query.FieldByName('firm_customer_name_eng').AsString;
//    end;

  end else begin
    cxButtonEdit2.Text := Query.FieldByName('firm_customer_name_full').AsString;
    cxButtonEdit3.Text := Query_Customer_Address.FieldByName('firm_customer_address').AsString;
    cxButtonEdit4.Text := Query.FieldByName('firm_customer_inn_kpp').AsString;

//    cxButtonEdit5.Text := '---';
//    cxButtonEdit6.Text := '---';

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

//    if MatchText(Facts_type_cod, ['253','308','306','309']) then begin
//      cxButtonEdit2.Text := Query.FieldByName('firm_customer_name_eng').AsString;
//
//      cxButtonEdit5.Text := '---';
//      cxButtonEdit6.Text := '---';
//
//      cxButtonEdit8.Text := Query_Firm_Self.FieldByName('firm_name_full').AsString;
//    end;
  end;

  Query_Firm_Self.Free;
  Query.Free;

//  cxMemo2.Text := '';
//  if contract_id <> - 9 then begin
//    Query := TADOQuery.Create(nil);
//    Query.Connection := Fconnect;
//    Query.SQL.Add('SELECT * FROM view_pay WHERE YEAR(pay_date) = ' + ComboBox3.Text + ' AND MONTH(pay_date) = ' + IntToStr(ComboBox2.ItemIndex + 1) + ' AND contract_id =' + IntToStr(contract_id) + ' AND type_pay = 0');
//    Query.Open;
//    str_pay := '';
//    while not Query.Eof do begin
//      if Query.FieldByName('incomming_cod').AsString <> '' then
//        str_pay := str_pay + Query.FieldByName('incomming_cod').AsString + ' от '+ FormatDateTime('dd.mm.yyг., ', Query.FieldByName('pay_date').AsDateTime);
//      Query.Next;
//    end;
//    if Length(str_pay) > 2 then
//      str_pay := Copy(str_pay, 1, Length(str_pay) - 2);
//    cxMemo2.Text := str_pay;
//    Query.Free;
//  end;

  Query_Self_Address.Free;
  Query_Customer_Address.Free;
end;

procedure TfmInvoiceScoreCorrAdd.cxButton1Click(Sender: TObject);
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

  SP_InvoiceScore := TADOStoredProc.Create(self);
  SP_InvoiceScore.Connection := Fconnect;
  SP_InvoiceScore.ProcedureName := 'sp_invoice_score_modify';
  SP_InvoiceScore.Parameters.Refresh;

  SP_InvoiceScore.Parameters.ParamByName('@type_action').Value                   := iif(Faction, 0, 1);

  SP_InvoiceScore.Parameters.ParamByName('@invoice_score_id').Value              := Finvoice_score_id;
  SP_InvoiceScore.Parameters.ParamByName('@set_universal_trans_doc').Value       := (cxComboBox1.ItemIndex = 1);
  SP_InvoiceScore.Parameters.ParamByName('@type_universal_trans_doc').Value      := cxComboBox2.ItemIndex + 1;
  SP_InvoiceScore.Parameters.ParamByName('@score_cod').Value                     := cxTextEdit1.Text;
  SP_InvoiceScore.Parameters.ParamByName('@score_date').Value                    := DateTimePicker3.EditValue;
  SP_InvoiceScore.Parameters.ParamByName('@correction_cod').Value                := cxTextEdit3.EditValue;
  SP_InvoiceScore.Parameters.ParamByName('@correction_date').Value               := cxDateEdit1.EditValue;
  SP_InvoiceScore.Parameters.ParamByName('@score_period_date').Value             := EncodeDate(StrToInt(ComboBox3.Text), ComboBox2.ItemIndex + 1, 15);
  SP_InvoiceScore.Parameters.ParamByName('@contract_id').Value                   := Fcontract_id;
  SP_InvoiceScore.Parameters.ParamByName('@score_sum').Value                     := StrToCurr(FormatFloat('0.00', cxGrid1DBBandedTableView1.DataController.Summary.FooterSummaryValues[0]));
  SP_InvoiceScore.Parameters.ParamByName('@currency_id').Value                   := DBLookupComboBox2.EditValue;

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
//  SP_InvoiceScore.Parameters.ParamByName('@score_firm_sender_name').Value        := cxButtonEdit5.EditValue;
//  SP_InvoiceScore.Parameters.ParamByName('@score_firm_reciver_name').Value       := cxButtonEdit6.EditValue;
//  SP_InvoiceScore.Parameters.ParamByName('@score_pay').Value                     := cxMemo2.EditValue;
  SP_InvoiceScore.Parameters.ParamByName('@score_firm_customer_name_full').Value := cxButtonEdit8.EditValue;
  SP_InvoiceScore.Parameters.ParamByName('@score_firm_customer_address').Value   := cxButtonEdit9.EditValue;
  SP_InvoiceScore.Parameters.ParamByName('@score_firm_customer_inn_kpp').Value   := cxButtonEdit10.EditValue;
  SP_InvoiceScore.Parameters.ParamByName('@score_ID_state_contract').Value       := cxTextEdit6.EditValue;
  SP_InvoiceScore.Parameters.ParamByName('@score_contract_name').Value           := cxButtonEdit15.EditValue;

  SP_InvoiceScore.Parameters.ParamByName('@score_doc_type_name').Value           := iif(cxCheckBox8.Checked, cxTextEdit4.EditValue, null);

//  SP_InvoiceScore.Parameters.ParamByName('@str_acts_id').Value                   := Fstr_acts_id;
  SP_InvoiceScore.Parameters.ParamByName('@xml_score_table').Value               := FormatXMLData(Client_InvoiceScoreTable.XMLData);

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
    AStream.Seek(0,0);
    s.CopyFrom(AStream, AStream.Size);
    files_data := LZHPack(s.Bytes, s.Size);
    s1 := TStringStream.Create(files_data);

    SP_InvoiceScore.Parameters.ParamByName('@type_action').Value      := 99;
    SP_InvoiceScore.Parameters.ParamByName('@invoice_score_id').Value := Finvoice_score_id;
    SP_InvoiceScore.Parameters.ParamByName('@score_file_name').Value  := ExtractFileName(file_name);
    SP_InvoiceScore.Parameters.ParamByName('@score_image').LoadFromStream(s1,ftBlob);

    SP_InvoiceScore.ExecProc;

    s.Free;
    s1.Free;
    AStream.Free;

    Fset_save := True;
    Faction   := False;

    if TBitBtn(Sender).ModalResult = mrNone then
      Application.MessageBox(PChar('Cчёта-фактура (' + cxTextEdit1.Text + ') успешно сохранена.'), 'Сохранение', MB_OK or MB_ICONINFORMATION);
  except
    ModalResult := mrNone;
  end;
  SP_InvoiceScore.Free;

end;

procedure TfmInvoiceScoreCorrAdd.cxButton3Click(Sender: TObject);
begin
  Close;
end;

procedure TfmInvoiceScoreCorrAdd.cxButtonEdit14KeyPress(Sender: TObject; var Key: Char);
begin
  if not (Key in ['0'..'9', FormatSettings.DecimalSeparator, #8])  then key := #0;
end;

procedure TfmInvoiceScoreCorrAdd.cxButtonEdit14PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
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

procedure TfmInvoiceScoreCorrAdd.cxButtonEdit1PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
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
//            cxButtonEdit_ActsPropertiesButtonClick(cxButtonEdit_Acts, 1); // Очистить акты
          end;

          Query.Free;
        end;
      end;
  1 : begin
        SetContractID(-9, -9);
//        cxButtonEdit_ActsPropertiesButtonClick(cxButtonEdit_Acts, 1); // Очистить акты
      end;
  end;
end;

procedure TfmInvoiceScoreCorrAdd.cxButtonEdit2PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
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
//      10:       cxButtonEdit5.Text  := '---';
//      11:       cxButtonEdit6.Text  := '---';
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
//      10:       cxButtonEdit5.Text  := '---';
//      11:       cxButtonEdit6.Text  := '---';
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

procedure TfmInvoiceScoreCorrAdd.cxButtonEdit4PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
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

procedure TfmInvoiceScoreCorrAdd.cxButtonEdit7PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
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

procedure TfmInvoiceScoreCorrAdd.cxCheckBox10Click(Sender: TObject);
begin
  cxGrid1DBBandedTableView1.DataController.Summary.Recalculate;
end;

procedure TfmInvoiceScoreCorrAdd.cxCheckBox11PropertiesEditValueChanged(Sender: TObject);
begin
  cxCheckBox9.Checked := cxCheckBox9.Checked and (not cxCheckBox11.Checked);
  // пересчитаем значение поля
  cxButtonEdit2PropertiesButtonClick(cxButtonEdit15, -1);
end;

procedure TfmInvoiceScoreCorrAdd.cxCheckBox3PropertiesChange(Sender: TObject);
begin
  cxCheckBox4.Checked := cxCheckBox4.Checked and (not cxCheckBox3.Checked);
end;

procedure TfmInvoiceScoreCorrAdd.cxCheckBox4PropertiesChange(Sender: TObject);
begin
  cxCheckBox3.Checked := cxCheckBox3.Checked and (not cxCheckBox4.Checked);
end;

procedure TfmInvoiceScoreCorrAdd.cxCheckBox6PropertiesEditValueChanged(Sender: TObject);
begin
  if cxCheckBox6.Checked then begin
    cxGrid1DBBandedTableView1ed_izm_cod.DataBinding.FieldName   := '';
    cxGrid1DBBandedTableView1ed_izm_name.DataBinding.FieldName  := '';
    cxGrid1DBBandedTableView1price_ed_izm.DataBinding.FieldName := '';
    cxGrid1DBBandedTableView1quantity.DataBinding.FieldName     := '';

    cxGrid1DBBandedTableView1old_ed_izm_cod.DataBinding.FieldName   := '';
    cxGrid1DBBandedTableView1old_ed_izm_name.DataBinding.FieldName  := '';
    cxGrid1DBBandedTableView1old_price_ed_izm.DataBinding.FieldName := '';
    cxGrid1DBBandedTableView1old_quantity.DataBinding.FieldName     := '';
  end else begin
    cxGrid1DBBandedTableView1ed_izm_cod.DataBinding.FieldName   := 'ed_izm_cod';
    cxGrid1DBBandedTableView1ed_izm_name.DataBinding.FieldName  := 'ed_izm_name';
    cxGrid1DBBandedTableView1price_ed_izm.DataBinding.FieldName := 'price_ed_izm';
    cxGrid1DBBandedTableView1quantity.DataBinding.FieldName     := 'quantity';

    cxGrid1DBBandedTableView1old_ed_izm_cod.DataBinding.FieldName   := 'old_ed_izm_cod';
    cxGrid1DBBandedTableView1old_ed_izm_name.DataBinding.FieldName  := 'old_ed_izm_name';
    cxGrid1DBBandedTableView1old_price_ed_izm.DataBinding.FieldName := 'old_price_ed_izm';
    cxGrid1DBBandedTableView1old_quantity.DataBinding.FieldName     := 'old_quantity';
  end;
end;

procedure TfmInvoiceScoreCorrAdd.cxCheckBox8PropertiesEditValueChanged(Sender: TObject);
begin
  cxTextEdit4.Enabled := cxCheckBox8.Checked;
end;

procedure TfmInvoiceScoreCorrAdd.cxCheckBox9PropertiesEditValueChanged(Sender: TObject);
begin
  cxCheckBox11.Checked := cxCheckBox11.Checked and (not cxCheckBox9.Checked);
  // пересчитаем значение поля
  cxButtonEdit2PropertiesButtonClick(cxButtonEdit15, -1);
end;

procedure TfmInvoiceScoreCorrAdd.cxComboBox1PropertiesEditValueChanged(Sender: TObject);
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

procedure TfmInvoiceScoreCorrAdd.cxGrid1DBBandedTableView1Column11GetDisplayText(Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord; var AText: string);
begin
  AText := Sender.Caption;
end;

procedure TfmInvoiceScoreCorrAdd.cxGrid1DBBandedTableView1cost_with_ndsPropertiesEditValueChanged(Sender: TObject);
begin
  Client_InvoiceScoreTable.Post;

  // Отображаем редактор, т.к. после Пересчета он был закрыт, из-за чего возникает ошибка по окончании данной процедуры
  cxGrid1DBBandedTableView1.Controller.EditingController.ShowEdit;
end;

procedure TfmInvoiceScoreCorrAdd.cxGrid1DBBandedTableView1CustomDrawCell(Sender: TcxCustomGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
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

procedure TfmInvoiceScoreCorrAdd.cxGrid1DBBandedTableView1CustomDrawColumnHeader(Sender: TcxGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxGridColumnHeaderViewInfo; var ADone: Boolean);
begin
  if AViewInfo.Column.Focused then begin
    ACanvas.Brush.Color := clNavy;
    ACanvas.Font.Color  := clWhite;
  end;
end;

procedure TfmInvoiceScoreCorrAdd.ReCalcNum;
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

procedure TfmInvoiceScoreCorrAdd.DragRecord(record_from, record_to: integer; record_select: array of integer);
var
  i        : integer;
  cnt_select  : integer;
  cnt_all  : integer;
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

procedure TfmInvoiceScoreCorrAdd.cxGrid1DBBandedTableView1DragDrop(Sender, Source: TObject; X, Y: Integer);
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

procedure TfmInvoiceScoreCorrAdd.cxGrid1DBBandedTableView1DragOver(Sender, Source: TObject; X, Y: Integer; State: TDragState; var Accept: Boolean);
begin
  Accept := False;
  if (Sender is TcxGridSite) and (Source is TcxDragControlObject) then
    if (TcxGridSite(Sender).GridView = cxGrid1DBBandedTableView1) then
      if TcxDragControlObject(Source).Control is TcxGridSite then
        if (TcxGridSite(TcxDragControlObject(Source).Control).GridView = cxGrid1DBBandedTableView1) then
          if cxGrid1DBBandedTableView1.GetHitTest(X, Y) is TcxGridRecordHitTest then
            Accept := not TcxGridRecordHitTest(cxGrid1DBBandedTableView1.GetHitTest(X, Y)).GridRecord.Selected;
end;

procedure TfmInvoiceScoreCorrAdd.cxGrid1DBBandedTableView1Editing(Sender: TcxCustomGridTableView; AItem: TcxCustomGridTableItem; var AAllow: Boolean);
var nds_id : integer;
begin
  // Закрываем часть полей (ручная правка)
  if not TcxGridDBBandedTableView(Sender).DataController.DataSet.FieldByName('set_hand_edit').AsBoolean then begin
    if TcxGridDBBandedColumn(AItem).DataBinding.FieldName = 'price_ed_izm'          then AAllow := False;
    if TcxGridDBBandedColumn(AItem).DataBinding.FieldName = 'new_cost_without_nds'  then AAllow := False;
    if TcxGridDBBandedColumn(AItem).DataBinding.FieldName = 'new_tax_sum'           then AAllow := False;
  end;

  // Если Ставка НДС = "НДС исчисляется налоговым агентом", то Сумма налога и стоимость с налогом - пустые
  // Не зависимо от типа вычислений
  // Задание ID = 13063041, 26.03.2018, Кутилина Т.
  nds_id := TcxGridDBBandedTableView(Sender).DataController.DataSet.FieldByName('tax_rate_id').AsInteger;
  if Query_NDS.Lookup('inf_obj_id', nds_id, 'inf_obj_name_full') = '00.900' then begin
    if TcxGridDBBandedColumn(AItem).DataBinding.FieldName = 'new_cost_without_nds'  then AAllow := True;
    if TcxGridDBBandedColumn(AItem).DataBinding.FieldName = 'new_tax_sum'           then AAllow := False;
    if TcxGridDBBandedColumn(AItem).DataBinding.FieldName = 'new_cost_with_nds'     then AAllow := False;
  end;

  // Если Ставка НДС = "18/118", то Цена - пустые (авансовая СчФ)
  // Не зависимо от типа вычислений
  if (Query_NDS.Lookup('inf_obj_id', nds_id, 'inf_obj_name_full') = '18.118')
  or (Query_NDS.Lookup('inf_obj_id', nds_id, 'inf_obj_name_full') = '20.120') then begin
    if TcxGridDBBandedColumn(AItem).DataBinding.FieldName = 'ed_izm_cod'        then AAllow := False;
    if TcxGridDBBandedColumn(AItem).DataBinding.FieldName = 'ed_izm_name'       then AAllow := False;
    if TcxGridDBBandedColumn(AItem).DataBinding.FieldName = 'quantity'          then AAllow := False;
    if TcxGridDBBandedColumn(AItem).DataBinding.FieldName = 'price_ed_izm'      then AAllow := False;
    if TcxGridDBBandedColumn(AItem).DataBinding.FieldName = 'new_cost_without_nds'  then AAllow := False;
    if TcxGridDBBandedColumn(AItem).DataBinding.FieldName = 'new_aktciz'            then AAllow := False;
  end;

  // Закрываем поле наименоввание, если строка связана с основной с-ф
  if not TcxGridDBBandedTableView(Sender).DataController.DataSet.FieldByName('parent_id').IsNull then begin
    if TcxGridDBBandedColumn(AItem).DataBinding.FieldName = 'name_service'           then AAllow := False;
    if TcxGridDBBandedColumn(AItem).DataBinding.FieldName = 'service_cod'            then AAllow := False;
  end;
end;

procedure TfmInvoiceScoreCorrAdd.cxGrid1DBBandedTableView1FocusedItemChanged(Sender: TcxCustomGridTableView; APrevFocusedItem, AFocusedItem: TcxCustomGridTableItem);
begin
  Sender.Painter.Invalidate;
end;

procedure TfmInvoiceScoreCorrAdd.cxGrid1DBBandedTableView1FocusedRecordChanged(Sender: TcxCustomGridTableView; APrevFocusedRecord, AFocusedRecord: TcxCustomGridRecord; ANewItemRecordFocusingChanged: Boolean);
begin
  if (AFocusedRecord <> nil) and (Query_NDS.Active) then
    Query_NDS.Locate('inf_obj_id', AFocusedRecord.Values[cxGrid1DBBandedTableView1tax_rate_id.Index], []);
end;

procedure TfmInvoiceScoreCorrAdd.cxGrid1DBBandedTableView1KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  cxGrid1DBBandedTableView1.Painter.Invalidate;
end;

procedure TfmInvoiceScoreCorrAdd.cxGrid1DBBandedTableView1MouseDown(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  cxGrid1DBBandedTableView1.Painter.Invalidate;
end;

procedure TfmInvoiceScoreCorrAdd.cxGrid1DBBandedTableView1name_servicePropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  PopupMenu2.Popup(Mouse.CursorPos.X, Mouse.CursorPos.Y);
end;

procedure TfmInvoiceScoreCorrAdd.cxGrid1DBBandedTableView1rec_numPropertiesValidate(Sender: TObject; var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
begin
  if DisplayValue < 1 then DisplayValue := 1;
  if DisplayValue > Client_InvoiceScoreTable.RecordCount then DisplayValue := Client_InvoiceScoreTable.RecordCount;

  if (TcxCustomEdit(Sender).EditValue <> DisplayValue) then
    DragRecord(TcxCustomEdit(Sender).EditValue, DisplayValue, [TcxCustomEdit(Sender).EditValue]);

  // Отображаем редактор, т.к. после Пересчета он был закрыт, из-за чего возникает ошибка по окончании данной процедуры
  cxGrid1DBBandedTableView1.Controller.EditingController.ShowEdit;
end;

procedure TfmInvoiceScoreCorrAdd.cxGrid1DBBandedTableView1TcxGridDBDataControllerTcxDataSummaryFooterSummaryItems3GetText(Sender: TcxDataSummaryItem; const AValue: Variant; AIsFooter: Boolean; var AText: string);
var ix : integer;
    val : Variant;
    tax_rate : Double;
begin
  if cxCheckBox10.Checked and Query_NDS.Active then begin

    ix := cxGrid1DBBandedTableView1.DataController.Summary.FooterSummaryItems.IndexOfItemLink(cxGrid1DBBandedTableView1inc_cost_without_nds);
    val := cxGrid1DBBandedTableView1.DataController.Summary.FooterSummaryValues[ix];
    tax_rate := Query_NDS.FieldByName('inf_obj_cod').AsFloat;
    if not VarIsNull(val) then begin
      if Sender.ItemLink = cxGrid1DBBandedTableView1inc_tax_sum then val := val * tax_rate / 100
      else val := val * (100 + tax_rate) / 100;

      val := RoundCurr(val, -2);

      AText := FormatFloat(Sender.Format, val);
    end else
      AText := '';

  end;

end;

procedure TfmInvoiceScoreCorrAdd.cxGrid1DBBandedTableView1TcxGridDBDataControllerTcxDataSummaryFooterSummaryItems4GetText(Sender: TcxDataSummaryItem; const AValue: Variant; AIsFooter: Boolean; var AText: string);
var ix : integer;
    val : Variant;
    tax_rate : Double;
begin
  if cxCheckBox10.Checked and Query_NDS.Active then begin

    ix := cxGrid1DBBandedTableView1.DataController.Summary.FooterSummaryItems.IndexOfItemLink(cxGrid1DBBandedTableView1dec_cost_without_nds);
    val := cxGrid1DBBandedTableView1.DataController.Summary.FooterSummaryValues[ix];
    tax_rate := Query_NDS.FieldByName('inf_obj_cod').AsFloat;
    if not VarIsNull(val) then begin
      if Sender.ItemLink = cxGrid1DBBandedTableView1dec_tax_sum then val := val * tax_rate / 100
      else val := val * (100 + tax_rate) / 100;

      val := RoundCurr(val, -2);

      AText := FormatFloat(Sender.Format, val);
    end else
      AText := '';

  end;

end;

procedure TfmInvoiceScoreCorrAdd.DateTimePicker3PropertiesEditValueChanged(Sender: TObject);
var d1 : TDate;
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
end;

procedure TfmInvoiceScoreCorrAdd.DBLookupComboBox2PropertiesChange(Sender: TObject);
begin
  Query_Currency.Locate('currency_id', DBLookupComboBox2.EditValue, []);
end;

procedure TfmInvoiceScoreCorrAdd.EdIzm2OKEI;
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
      else  str_tmp := '---'; // без кода
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

procedure TfmInvoiceScoreCorrAdd.Client_InvoiceScoreTableCalcFields(DataSet: TDataSet);
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

  // Обычный расчет
  if not DataSet.FieldByName('set_hand_edit').AsBoolean then begin
    if nds_cod = '00.900' then begin
      // Считаем от суммы без НДС
      if (DataSet.FieldByName('quantity').AsCurrency <> 0) and not DataSet.FieldByName('new_cost_without_nds').IsNull then
        DataSet['price_ed_izm']   := DataSet.FieldByName('new_cost_without_nds').AsCurrency / DataSet.FieldByName('quantity').AsCurrency
      else
        DataSet['price_ed_izm']   := null;
    end else begin
      // Стандартный алгоритм расчета (от суммы с НДС)
      tax_rate := Query_NDS.Lookup('inf_obj_id', DataSet.FieldByName('tax_rate_id').AsInteger, 'inf_obj_cod');
      if tax_rate = null then tax_rate := 0;
      DataSet['new_tax_sum']          := DataSet['new_cost_with_nds'] * tax_rate /(100 + tax_rate);
      if not DataSet.FieldByName('new_tax_sum').IsNull then
        DataSet['new_tax_sum']        := RoundCurr(DataSet['new_tax_sum'], -2);
      DataSet['new_cost_without_nds'] := DataSet['new_cost_with_nds'] - DataSet['new_tax_sum'];
      if (DataSet.FieldByName('quantity').AsCurrency <> 0) and not DataSet.FieldByName('new_cost_without_nds').IsNull then
        DataSet['price_ed_izm']   := DataSet.FieldByName('new_cost_without_nds').AsCurrency / DataSet.FieldByName('quantity').AsCurrency
      else
        DataSet['price_ed_izm']   := null;
    end;
  end;

  if nds_cod = '00.900' then begin
    // Сумма налога и сумма с НДС - пустые
    DataSet['new_tax_sum']          := null;
    DataSet['new_cost_with_nds']    := null;
  end else if (nds_cod = '18.118') or (nds_cod = '20.120') then begin
    // Если Ставка НДС = "18/118", то Цена, кол-во и ед. изм. - пустые (авансовая СчФ)
    // А расчеты сумм не отличаются от стандартного алгоритма
    DataSet['ed_izm_cod']           := null;
    DataSet['ed_izm_name']          := null;
    DataSet['quantity']             := null;
    DataSet['price_ed_izm']         := null;
    DataSet['new_cost_without_nds'] := null;
    DataSet['new_aktciz']           := null;
  end;

  // рассчитаем изменения
  DataSet['cost_without_nds'] := DataSet.FieldByName('new_cost_without_nds').AsCurrency - DataSet.FieldByName('old_cost_without_nds').AsCurrency;
  DataSet['inc_cost_without_nds'] := iif(DataSet['cost_without_nds'] > 0, DataSet['cost_without_nds'], null);
  DataSet['dec_cost_without_nds'] := iif(DataSet['cost_without_nds'] < 0, -DataSet['cost_without_nds'], null);

  DataSet['aktciz'] := DataSet.FieldByName('new_aktciz').AsCurrency - DataSet.FieldByName('old_aktciz').AsCurrency;
  DataSet['inc_aktciz'] := iif(DataSet['aktciz'] > 0, DataSet['aktciz'], null);
  DataSet['dec_aktciz'] := iif(DataSet['aktciz'] < 0, -DataSet['aktciz'], null);
  if DataSet['aktciz'] = 0 then DataSet['aktciz'] := null;

  DataSet['tax_sum'] := DataSet.FieldByName('new_tax_sum').AsCurrency - DataSet.FieldByName('old_tax_sum').AsCurrency;
  DataSet['inc_tax_sum'] := iif(DataSet['tax_sum'] > 0, DataSet['tax_sum'], null);
  DataSet['dec_tax_sum'] := iif(DataSet['tax_sum'] < 0, -DataSet['tax_sum'], null);

  DataSet['cost_with_nds'] := DataSet.FieldByName('new_cost_with_nds').AsCurrency - DataSet.FieldByName('old_cost_with_nds').AsCurrency;
  DataSet['inc_cost_with_nds'] := iif(DataSet['cost_with_nds'] > 0, DataSet['cost_with_nds'], null);
  DataSet['dec_cost_with_nds'] := iif(DataSet['cost_with_nds'] < 0, -DataSet['cost_with_nds'], null);

  Client_InvoiceScoreTable.AutoCalcFields := True;
end;

procedure TfmInvoiceScoreCorrAdd.Client_InvoiceScoreTableNewRecord(DataSet: TDataSet);
begin
  DataSet.FieldByName('rec_num').AsInteger := DataSet.RecordCount + 1;
  DataSet.FieldByName('set_hand_edit').AsBoolean := False;
  DataSet.FieldByName('tax_rate_id').AsInteger := Query_NDS.Lookup('inf_obj_cod', 18, 'inf_obj_id');
end;

procedure TfmInvoiceScoreCorrAdd.N11Click(Sender: TObject);
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

procedure TfmInvoiceScoreCorrAdd.N13Click(Sender: TObject);
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

procedure TfmInvoiceScoreCorrAdd.N1Click(Sender: TObject);
begin
  if Client_InvoiceScoreTable.Eof then exit;

  if not Client_InvoiceScoreTable.FieldByName('parent_id').IsNull then begin
    Application.MessageBox('Нельзя удалить строку связанную с основным счетом-фактурой!', 'Внимание', MB_OK or MB_ICONERROR);
    exit;
  end;

  Client_InvoiceScoreTable.Delete;
  // Пересчитываем номера
  Client_InvoiceScoreTable.DisableControls;
  ReCalcNum;
  Client_InvoiceScoreTable.EnableControls;
end;

procedure TfmInvoiceScoreCorrAdd.N2Click(Sender: TObject);
begin
  Client_InvoiceScoreTable.Append;
end;

procedure TfmInvoiceScoreCorrAdd.OnServiceClick(Sender: TObject);
begin
  fmFilter := TfmFilter.Create(0, Query_NameService, 'inf_obj_id', 'inf_obj_cod', 'inf_obj_name_full');
  fmFilter._SetServiceKind := True;
  fmFilter._SelectIndexColumn := 1;
  if fmFilter.ShowModal = mrOk then begin
    if Query_NameService.Locate('inf_obj_id', fmFilter.GetId, []) then begin
      Client_InvoiceScoreTable['name_service'] := Query_NameService.FieldByName('inf_obj_name_full').Value;
      Client_InvoiceScoreTable['service_cod'] := Query_NameService.FieldByName('inf_obj_cod').Value;
    end;
  end;
end;

procedure TfmInvoiceScoreCorrAdd.OnKargoClick(Sender: TObject);
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

procedure TfmInvoiceScoreCorrAdd.OnNodeClick(Sender: TObject);
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

end.


