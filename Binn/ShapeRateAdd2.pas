unit ShapeRateAdd2;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore, dxSkinBlack,
  dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom,
  dxSkinDarkSide, dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMetropolis,
  dxSkinMetropolisDark, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue,
  dxSkinOffice2010Silver, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray,
  dxSkinOffice2013White, dxSkinOffice2016Colorful, dxSkinOffice2016Dark,
  dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus,
  dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008,
  dxSkinTheAsphaltWorld, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue, dxSkinscxPCPainter, dxBarBuiltInMenu, cxMemo, cxPC,
  cxCheckBox, cxCurrencyEdit, cxTextEdit, cxButtonEdit, cxMaskEdit,
  cxDropDownEdit, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox,
  Vcl.StdCtrls, cxGroupBox, cxLabel, Vcl.Buttons, Vcl.ExtCtrls, Vcl.Menus,
  cxButtons, cxRadioGroup, Data.DB, Datasnap.DBClient, cxClasses,
  cxPropertiesStore, Data.Win.ADODB, Raznoe, Default, Filter, Period, DateUtils, dxSkinTheBezier, StrUtils,
  dxBar, dxSkinOffice2019Colorful, dxSkinBasic, dxSkinOffice2019Black, dxSkinOffice2019DarkGray, dxSkinOffice2019White;

type
  TfmShapeRateAdd2 = class(TForm)
    Panel4: TPanel;
    Panel1: TPanel;
    cxLabel5: TcxLabel;
    cxGroupBox1: TcxGroupBox;
    cxLabel12: TcxLabel;
    cxLabel3: TcxLabel;
    cxLabel2: TcxLabel;
    cxButtonEdit9: TcxButtonEdit;
    cxButtonEdit16: TcxButtonEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label12: TLabel;
    Label14: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    cxCurrencyEdit4: TcxCurrencyEdit;
    cxCurrencyEdit5: TcxCurrencyEdit;
    cxLookupComboBox3: TcxLookupComboBox;
    cxLookupComboBox5: TcxLookupComboBox;
    cxCurrencyEdit6: TcxCurrencyEdit;
    cxLookupComboBox9: TcxLookupComboBox;
    cxCheckBox6: TcxCheckBox;
    cxButtonEdit15: TcxButtonEdit;
    cxButtonEdit1: TcxButtonEdit;
    cxButtonEdit17: TcxButtonEdit;
    cxCurrencyEdit1: TcxCurrencyEdit;
    cxCurrencyEdit2: TcxCurrencyEdit;
    Panel5: TPanel;
    cxPageControl1: TcxPageControl;
    cxTabSheet1: TcxTabSheet;
    cxTabSheet3: TcxTabSheet;
    cxLookupComboBox4: TcxLookupComboBox;
    cxButton1: TcxButton;
    cxCheckBox5: TcxCheckBox;
    cxLabel9: TcxLabel;
    cxLabel10: TcxLabel;
    cxCheckBox4: TcxCheckBox;
    cxButtonEdit12: TcxButtonEdit;
    cxButtonEdit13: TcxButtonEdit;
    cxButtonEdit2: TcxButtonEdit;
    cxButtonEdit14: TcxButtonEdit;
    cxButtonEdit10: TcxButtonEdit;
    cxButtonEdit11: TcxButtonEdit;
    cxTextEdit14: TcxTextEdit;
    cxTabSheet4: TcxTabSheet;
    cxTabSheet5: TcxTabSheet;
    Memo1: TcxMemo;
    Label34: TLabel;
    cxButtonEdit3: TcxButtonEdit;
    Label36: TLabel;
    cxButtonEdit4: TcxButtonEdit;
    cxButtonEdit18: TcxButtonEdit;
    Label38: TLabel;
    Label39: TLabel;
    cxButtonEdit19: TcxButtonEdit;
    cxMemo1: TcxMemo;
    Label31: TLabel;
    cxButtonEdit5: TcxButtonEdit;
    cxButtonEdit6: TcxButtonEdit;
    cxButtonEdit7: TcxButtonEdit;
    cxButtonEdit8: TcxButtonEdit;
    cxTextEdit4: TcxTextEdit;
    cxTextEdit3: TcxTextEdit;
    cxRadioGroup2: TcxRadioGroup;
    cxCheckBox1: TcxCheckBox;
    cxTextEdit5: TcxTextEdit;
    cxCheckBox2: TcxCheckBox;
    RadioGroup2: TRadioGroup;
    cxPropertiesStore1: TcxPropertiesStore;
    cxLabel1: TcxLabel;
    cxLabel4: TcxLabel;
    cxLabel6: TcxLabel;
    cxLabel7: TcxLabel;
    cxCheckBox8: TcxCheckBox;
    cxCheckBox7: TcxCheckBox;
    Label10: TLabel;
    cxComboBox3: TcxComboBox;
    cxComboBox4: TcxComboBox;
    cxComboBox6: TcxComboBox;
    cxComboBox5: TcxComboBox;
    Label11: TLabel;
    cxLookupComboBox6: TcxLookupComboBox;
    cxTextEdit7: TcxTextEdit;
    cxButtonEdit24: TcxButtonEdit;
    Label32: TLabel;
    Query_Agent: TADOQuery;
    DS_Agent: TDataSource;
    cxLookupComboBox8: TcxLookupComboBox;
    Query_Agreement: TADOQuery;
    DS_Agreement: TDataSource;
    Query_NDS: TADOQuery;
    DS_NDS: TDataSource;
    Query_Ed_Izm: TADOQuery;
    DS_Ed_izm: TDataSource;
    Query_Currency: TADOQuery;
    DS_Currency: TDataSource;
    DS_Return: TDataSource;
    Query_Return: TADOQuery;
    cxLabel16: TcxLabel;
    cxLookupComboBox1: TcxLookupComboBox;
    Query_ShapingRateType: TADOQuery;
    DS_ShapingRateType: TDataSource;
    Panel2: TPanel;
    cxTabSheet6: TcxTabSheet;
    cxLookupComboBox2: TcxLookupComboBox;
    Query_FiveDaysZFTO: TADOQuery;
    DS_FiveDaysZFTO: TDataSource;
    cxTextEdit6: TcxTextEdit;
    cxRadioButton1: TcxRadioButton;
    cxRadioButton2: TcxRadioButton;
    cxRadioGroup1: TcxRadioGroup;
    Panel3: TPanel;
    cxGroupBox2: TcxGroupBox;
    cxCheckBox3: TcxCheckBox;
    cxCheckBox9: TcxCheckBox;
    dxBarManager1: TdxBarManager;
    cxButton2: TcxButton;
    cxButton3: TcxButton;
    Label13: TLabel;
    cxCurrencyEdit3: TcxCurrencyEdit;
    cxLabel13: TcxLabel;
    cxLabel15: TcxLabel;
    cxButtonEdit23: TcxButtonEdit;
    cxButtonEdit22: TcxButtonEdit;
    cxLabel8: TcxLabel;
    cxLabel11: TcxLabel;
    cxButtonEdit21: TcxButtonEdit;
    cxTextEdit1: TcxTextEdit;
    cxTextEdit2: TcxTextEdit;
    cxButtonEdit20: TcxButtonEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cxLookupComboBox8PropertiesChange(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure cxCheckBox5PropertiesEditValueChanged(Sender: TObject);
    procedure cxButtonEdit10PropertiesButtonClick(Sender: TObject;  AButtonIndex: Integer);
    procedure cxButtonEdit24PropertiesButtonClick(Sender: TObject;  AButtonIndex: Integer);
    procedure cxButtonEdit14PropertiesButtonClick(Sender: TObject;  AButtonIndex: Integer);
    procedure cxCheckBox4PropertiesEditValueChanged(Sender: TObject);
    procedure cxButtonEdit12PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure cxButtonEdit5PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure cxButtonEdit6PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure cxButtonEdit20PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure cxCheckBox1PropertiesEditValueChanged(Sender: TObject);
    procedure cxButtonEdit3PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure cxButtonEdit15PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure cxCheckBox8PropertiesEditValueChanged(Sender: TObject);
    procedure cxCurrencyEdit4PropertiesEditValueChanged(Sender: TObject);
    procedure cxCurrencyEdit5PropertiesEditValueChanged(Sender: TObject);
    procedure cxLookupComboBox9PropertiesEditValueChanged(Sender: TObject);
    procedure cxCheckBox6PropertiesEditValueChanged(Sender: TObject);
    procedure cxButtonEdit22PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure cxButtonEdit23PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure cxLookupComboBox1PropertiesChange(Sender: TObject);
    procedure cxRadioButton1Click(Sender: TObject);
    procedure cxButtonEdit16PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure cxCheckBox3PropertiesEditValueChanged(Sender: TObject);
    procedure cxButton2Click(Sender: TObject);
  private
    FClientAdd  : TClientDataSet;
    Fid         : integer;
    Fservice_type  : integer;
    Fdate_period   : TDateTime;

    FkargoETSNG_add_id : integer;
    Fnode_begin_id     : integer;
    Fnode_end_id       : integer;
    Fstate_begin_id    : integer;
    Fstate_end_id      : integer;
    FkargoETSNG_id     : integer;
    FkargoGNG_id       : integer;
    Fnode_border_in    : integer;
    Fnode_border_out   : integer;
    Froad_begin_id     : integer;
    Froad_end_id       : integer;
    Fbudget_id         : integer;
    Fshaping_rate_round_sum : boolean; // Округлять сумму вверх, до полных рублей

    Fservice_kind_id     : integer;
    Fservice_kind_rep_id : integer;

    Fset_calc_enabled    : boolean;


    procedure SetUpdate(id: integer);
    function  FindInfObj(caption_name: string; table_name: string; set_cod: boolean; var id: integer; var cod: string; var name: string): boolean;
    procedure SetKargoEmptyAdd(set_enable: boolean);
    procedure GetAvgExchange();
    procedure CalcSum();

    function  GetDateService(): TDateTime;             // Получить дату оказания услуги
    procedure SetDateService(date_service: TDateTime); // Установить дату оказания услуги


    procedure SetContractId(contract_id: integer);
    procedure SetAgreementId(agreement_id: integer);
    procedure SetNodeBeginId(node_begin_id: integer);
    procedure SetNodeEndId(node_end_id: integer);
    procedure SetStateBeginId(state_begin_id: integer);
    procedure SetStateEndId(state_end_id: integer);
    procedure SetKargoETSNGId(kargoETSNG_id: integer);
    procedure SetKargoETSNGAddId(kargoETSNG_add_id: integer);
    procedure SetKargoGNGId(kargoGNG_id: integer);
    procedure SetDatePeriod(date_period: TDateTime);
    procedure SetDateFinance(date_finance: TDateTime);
  public
    constructor Create(AOwner: TApplication; service_type: integer); // type_service - услуга 0-Клиент (Доход), 1-Агент (Расход)
  published
    property _SetClientAdd  : TClientDataSet write FClientAdd;
    property _SetUpdate     : integer        write SetUpdate;

    property _SetContractId      : integer write SetContractId;
    property _SetAgreementId     : integer write SetAgreementId;
    property _SetNodeBeginId     : integer write SetNodeBeginId;
    property _SetNodeEndId       : integer write SetNodeEndId;
    property _SetStateBeginId    : integer write SetStateBeginId;
    property _SetStateEndId      : integer write SetStateEndId;
    property _SetKargoETSNGId    : integer write SetKargoETSNGId;
    property _SetKargoETSNGAddId : integer write SetKargoETSNGAddId;
    property _SetKargoGNGId      : integer write SetKargoGNGId;
    property _SetDatePeriod      : TDateTime write SetDatePeriod;
    property _SetDateFinance     : TDateTime write SetDateFinance;
    property _SetDateService     : TDateTime write SetDateService; // Установить дату оказания услуги

    property _GetDateService: TDateTime read  GetDateService; // Получить дату оказания услуги
    property _GetAddId      : integer   read  Fid;
  end;

var
  fmShapeRateAdd2: TfmShapeRateAdd2;

implementation

{$R *.dfm}

uses main, Contract;

constructor TfmShapeRateAdd2.Create(AOwner: TApplication; service_type: integer);
begin
  Screen.Cursor := crHourglass;
  inherited Create(AOwner);

  Fset_calc_enabled := False;

  Fservice_type := service_type;

  if Fservice_type = 0 then begin // Клиент
    Caption := 'Услуга Доход';
    cxLabel5.Caption := 'Услуга Доход';
    //cxLabel5.Style.Color := RGB(255, 203, 173);
    Panel2.Color := RGB(255, 203, 173);
    cxLabel2.Caption := 'Клиент......................................';
  end else begin // Агент
    Caption := 'Услуга Расход';
    cxLabel5.Caption := 'Услуга Расход';
    //cxLabel5.Style.Color := RGB(198, 227, 181);
    Panel2.Color := RGB(198, 227, 181);
    cxLabel2.Caption := 'Агент......................................';
  end;

  Query_NDS.Open;
  cxLookupComboBox9.EditValue := Query_NDS.FieldByName('inf_obj_id').Value;

  Query_Ed_Izm.Open;
  cxLookupComboBox3.EditValue := Query_Ed_Izm.FieldByName('inf_obj_id').Value;

  Query_Currency.Open;
  cxLookupComboBox5.EditValue := Query_Currency.FieldByName('currency_id').Value;

  Query_Return.Open;

  Query_FiveDaysZFTO.Open;

  Query_ShapingRateType.Open;
  Query_ShapingRateType.Locate('inf_obj_id', 1, []);
  cxLookupComboBox1.EditValue := Query_ShapingRateType.FieldByName('inf_obj_id').Value;

  Fid := -9;
  FkargoETSNG_add_id := -9;
  Fnode_begin_id     := -9;
  Fnode_end_id       := -9;
  Fstate_begin_id    := -9;
  Fstate_end_id      := -9;
  FkargoETSNG_id     := -9;
  FkargoGNG_id       := -9;
  Fnode_border_in    := -9;
  Fnode_border_out   := -9;
  Froad_begin_id     := -9;
  Froad_end_id       := -9;
  Fbudget_id         := -9;
  Fservice_kind_id     := -9;
  Fservice_kind_rep_id := -9;
  Fshaping_rate_round_sum := False;

  cxCurrencyEdit4.EditValue := 0;
  cxCurrencyEdit5.EditValue := 0;


  GetAvgExchange;


  Fset_calc_enabled := True;
  CalcSum;

  Screen.Cursor := crDefault;
end;


procedure TfmShapeRateAdd2.SetUpdate(id: integer);
var Q : TADOQuery;
begin
  Screen.Cursor := crHourglass;

  Q := TADOQuery.Create(nil);
  Q.Connection := fmMain.Lis;

  Fset_calc_enabled := False;

  Fid := id;
  FClientAdd.Locate('id', Fid, []);

  Caption := Caption + ' [ID: ' + IntToStr(FClientAdd.FieldByName('shaping_rate_id').AsInteger) + ']';

  _SetDateService  := FClientAdd.FieldByName('date_period_service').AsDateTime;
  _SetDatePeriod   := FClientAdd.FieldByName('date_period').AsDateTime;


  if not FClientAdd.FieldByName('agreement_note').IsNull then cxRadioButton2.Checked := True;
  cxTextEdit6.EditValue       := FClientAdd.FieldByName('agreement_note').Value;

  if not FClientAdd.FieldByName('contract_agent_id').IsNull then begin
    cxLookupComboBox8.Properties.OnChange := nil;

    Q.SQL.Clear;
    Q.SQL.Add('SELECT *');
    Q.SQL.Add('FROM   view_contract_rights');
    Q.SQL.Add('WHERE  contract_id = ' + IntToStr(FClientAdd.FieldByName('contract_agent_id').AsInteger));
    Q.SQL.Add('       and ' + DateToSQL(Fdate_period) + ' between cast(date_begin as datetime)-day(date_begin)+1 and cast(dateadd(month, 1, date_end) as datetime)-day(dateadd(month, 1, date_end))');
    Q.Open;

    if Q.RecordCount > 0 then begin

//      if Q.FieldByName('type_contract').AsInteger = 0 then cxButton2.Down := True;
//      if Q.FieldByName('type_contract').AsInteger = 1 then cxButton3.Down := True;
//      if Q.FieldByName('type_contract').AsInteger = 2 then cxButton4.Down := True;
//      Ftype_contract := Q.FieldByName('type_contract').AsInteger;
      Query_Agent.Close;
      Query_Agent.Parameters.ParamByName('date_current' ).Value := Fdate_period;
      // Тип Договора = Типу Услуги
      // Доход = Клиент, Расход = Плдрядчик или Администрация
      Query_Agent.Parameters.ParamByName('type_contract').Value := Fservice_type;
      Query_Agent.Open;

      cxLookupComboBox8.EditValue := FClientAdd.FieldByName('contract_agent_id').Value;
    end else begin
      Application.MessageBox('Договор прекратил своё действие!', 'Внимание', MB_OK);
      Query_Agent.Close;
      Query_Agent.Parameters.ParamByName('date_current' ).Value := Fdate_period;
      // Тип Договора = Типу Услуги
      // Доход = Клиент, Расход = Плдрядчик или Администрация
      Query_Agent.Parameters.ParamByName('type_contract').Value := Fservice_type;
      Query_Agent.Open;
    end;

    cxLookupComboBox8.Properties.OnChange := cxLookupComboBox8PropertiesChange;
    cxLookupComboBox8PropertiesChange(nil);

    if Query_Agreement.Active then
      if Query_Agreement.Locate('doc_id', FClientAdd.FieldByName('agreement_id').Value, []) then
        cxLookupComboBox4.EditValue := FClientAdd.FieldByName('agreement_id').Value;
  end;

  cxLookupComboBox3.EditValue := FClientAdd.FieldByName('ed_izm_id').Value;
  cxLookupComboBox5.EditValue := FClientAdd.FieldByName('currency_id').Value;
  cxCheckBox3.Checked         := iif(FClientAdd.FieldByName('five_days_zfto_id').IsNull, False, True);
  cxLookupComboBox2.EditValue := FClientAdd.FieldByName('five_days_zfto_id').Value;
  Fnode_begin_id              := iif(FClientAdd.FieldByName('node_begin_id').IsNull,   -9, FClientAdd.FieldByName('node_begin_id').AsInteger);
  cxTextEdit3.EditValue       := iif(FClientAdd.FieldByName('node_begin_id').IsNull, null, FClientAdd.FieldByName('node_begin_cod').Value);
  cxButtonEdit6.EditValue     := iif(FClientAdd.FieldByName('node_begin_id').IsNull, null, FClientAdd.FieldByName('node_begin_name').Value);
  Fnode_end_id                := iif(FClientAdd.FieldByName('node_end_id').IsNull,   -9, FClientAdd.FieldByName('node_end_id').AsInteger);
  cxTextEdit4.EditValue       := iif(FClientAdd.FieldByName('node_end_id').IsNull, null, FClientAdd.FieldByName('node_end_cod').Value);
  cxButtonEdit7.EditValue     := iif(FClientAdd.FieldByName('node_end_id').IsNull, null, FClientAdd.FieldByName('node_end_name').Value);
  Fstate_begin_id             := iif(FClientAdd.FieldByName('state_begin_id').IsNull,   -9, FClientAdd.FieldByName('state_begin_id').AsInteger);
  cxButtonEdit5.EditValue     := iif(FClientAdd.FieldByName('state_begin_id').IsNull, null, FClientAdd.FieldByName('state_begin_name').Value);
  Fstate_end_id               := iif(FClientAdd.FieldByName('state_end_id').IsNull,   -9, FClientAdd.FieldByName('state_end_id').AsInteger);
  cxButtonEdit8.EditValue     := iif(FClientAdd.FieldByName('state_end_id').IsNull, null, FClientAdd.FieldByName('state_end_name').Value);
  Fnode_border_in             := iif(FClientAdd.FieldByName('node_border_in').IsNull,   -9, FClientAdd.FieldByName('node_border_in').AsInteger);
  cxTextEdit1.EditValue       := iif(FClientAdd.FieldByName('node_border_in').IsNull, null, FClientAdd.FieldByName('node_border_in_cod').Value);
  cxButtonEdit20.EditValue    := iif(FClientAdd.FieldByName('node_border_in').IsNull, null, FClientAdd.FieldByName('node_border_in_name').Value);
  Fnode_border_out            := iif(FClientAdd.FieldByName('node_border_out').IsNull,   -9, FClientAdd.FieldByName('node_border_out').AsInteger);
  cxTextEdit2.EditValue       := iif(FClientAdd.FieldByName('node_border_out').IsNull, null, FClientAdd.FieldByName('node_border_out_cod').Value);
  cxButtonEdit21.EditValue    := iif(FClientAdd.FieldByName('node_border_out').IsNull, null, FClientAdd.FieldByName('node_border_out_name').Value);
  Froad_begin_id              := iif(FClientAdd.FieldByName('road_begin_id').IsNull,   -9, FClientAdd.FieldByName('road_begin_id').AsInteger);
  cxButtonEdit22.EditValue    := iif(FClientAdd.FieldByName('road_begin_id').IsNull, null, FClientAdd.FieldByName('road_begin_name').Value);
  Froad_end_id                := iif(FClientAdd.FieldByName('road_end_id').IsNull,   -9, FClientAdd.FieldByName('road_end_id').AsInteger);
  cxButtonEdit23.EditValue    := iif(FClientAdd.FieldByName('road_end_id').IsNull, null, FClientAdd.FieldByName('road_end_name').Value);
  FkargoETSNG_id              := iif(FClientAdd.FieldByName('kargoETSNG_id').IsNull,   -9, FClientAdd.FieldByName('kargoETSNG_id').AsInteger);
  cxButtonEdit11.EditValue    := iif(FClientAdd.FieldByName('kargoETSNG_id').IsNull, null, FClientAdd.FieldByName('kargoETSNG_cod').Value);
  cxButtonEdit10.EditValue    := iif(FClientAdd.FieldByName('kargoETSNG_id').IsNull, null, FClientAdd.FieldByName('kargoETSNG_name').Value);
  cxTextEdit14.EditValue      := iif(FClientAdd.FieldByName('kargoETSNG_id').IsNull, null, FClientAdd.FieldByName('kargoETSNG_group_name').Value);
  cxButtonEdit2.Enabled       := iif(FClientAdd.FieldByName('kargoETSNG_add_id').IsNull, False, True);
  cxButtonEdit14.Enabled      := iif(FClientAdd.FieldByName('kargoETSNG_add_id').IsNull, False, True);
  FkargoETSNG_add_id          := iif(FClientAdd.FieldByName('kargoETSNG_add_id').IsNull,   -9, FClientAdd.FieldByName('kargoETSNG_add_id').AsInteger);
  cxButtonEdit2.EditValue     := iif(FClientAdd.FieldByName('kargoETSNG_add_id').IsNull, null, FClientAdd.FieldByName('kargoETSNG_add_cod').Value);
  cxButtonEdit14.EditValue    := iif(FClientAdd.FieldByName('kargoETSNG_add_id').IsNull, null, FClientAdd.FieldByName('kargoETSNG_add_name').Value);
  cxCheckBox4.Checked         := iif(FClientAdd.FieldByName('kargoGNG_id').IsNull, False, True);
  FkargoGNG_id                := iif(FClientAdd.FieldByName('kargoGNG_id').IsNull, -9, FClientAdd.FieldByName('kargoGNG_id').AsInteger);
  cxButtonEdit13.EditValue    := iif(FClientAdd.FieldByName('kargoGNG_id').IsNull, null, FClientAdd.FieldByName('kargoGNG_cod').Value);
  cxButtonEdit12.EditValue    := iif(FClientAdd.FieldByName('kargoGNG_id').IsNull, null, FClientAdd.FieldByName('kargoGNG_name').Value);
  cxRadioGroup2.ItemIndex     := FClientAdd.FieldByName('shaping_rate_round_weight').AsInteger;
  cxCheckBox2.Checked         := FClientAdd.FieldByName('shaping_check_kargo_capacity').AsBoolean;
  cxCheckBox9.Checked         := FClientAdd.FieldByName('set_round_notNDS_sum').AsBoolean;
  cxCheckBox1.Checked         := iif(FClientAdd.FieldByName('shaping_kargo_min_norm').IsNull, False, True);
  cxTextEdit5.EditValue       := iif(FClientAdd.FieldByName('shaping_kargo_min_norm').IsNull, null, FClientAdd.FieldByName('shaping_kargo_min_norm').Value);
  Fshaping_rate_round_sum     := FClientAdd.FieldByName('shaping_rate_round_sum').AsBoolean;
  cxCheckBox5.Checked         := FClientAdd.FieldByName('set_return').AsBoolean;
  cxLookupComboBox6.EditValue := iif(FClientAdd.FieldByName('set_return').AsBoolean, FClientAdd.FieldByName('return_id').Value, null);

  cxCheckBox7.Checked         := FClientAdd.FieldByName('set_self_rate').AsBoolean;
  cxLookupComboBox9.EditValue := FClientAdd.FieldByName('shaping_rate_nds_id').Value;
  Fbudget_id                  := iif(FClientAdd.FieldByName('budget_id').IsNull,   -9, FClientAdd.FieldByName('budget_id').AsInteger);
  cxTextEdit7.EditValue       := iif(FClientAdd.FieldByName('budget_id').IsNull, null, FClientAdd.FieldByName('budget_cod').Value);
  cxButtonEdit24.EditValue    := iif(FClientAdd.FieldByName('budget_id').IsNull, null, FClientAdd.FieldByName('budget_name').Value);
  RadioGroup2.ItemIndex       := FClientAdd.FieldByName('type_calc_sum').AsInteger;
  cxCheckBox6.Checked         := FClientAdd.FieldByName('set_include_nds').AsBoolean;
  Fservice_type               := FClientAdd.FieldByName('service_type').AsInteger;
  cxLookupComboBox1.EditValue := FClientAdd.FieldByName('shaping_rate_type_id').AsInteger;

  cxCurrencyEdit4.EditValue   := FClientAdd.FieldByName('shaping_rate_val').Value;
  cxCurrencyEdit5.EditValue   := FClientAdd.FieldByName('shaping_rate_count').Value;
  cxCurrencyEdit6.EditValue   := FClientAdd.FieldByName('shaping_rate_sum').Value;
  cxCurrencyEdit2.EditValue   := FClientAdd.FieldByName('shaping_rate_NDS_sum').Value;
  cxCurrencyEdit1.EditValue   := FClientAdd.FieldByName('shaping_rate_notNDS_sum').Value;
  cxCurrencyEdit3.EditValue   := FClientAdd.FieldByName('shaping_rate_fee').Value;

  cxRadioGroup1.ItemIndex     := FClientAdd.FieldByName('vid_send').AsInteger;
  Memo1.EditValue             := FClientAdd.FieldByName('shaping_rate_note').Value;

  cxMemo1.EditValue           := FClientAdd.FieldByName('shaping_rate_acts_note').Value;

  Fservice_kind_id            := iif(FClientAdd.FieldByName('service_kind_id').IsNull, -9, FClientAdd.FieldByName('service_kind_id').Value);
  cxButtonEdit3.EditValue     := iif(FClientAdd.FieldByName('service_kind_id').IsNull, null, FClientAdd.FieldByName('service_kind').Value);
  cxButtonEdit4.EditValue     := iif(FClientAdd.FieldByName('service_kind_id').IsNull, null, FClientAdd.FieldByName('service_kind_inv').Value);

  Fservice_kind_rep_id        := iif(FClientAdd.FieldByName('service_kind_rep_id').IsNull, -9, FClientAdd.FieldByName('service_kind_rep_id').Value);
  cxButtonEdit18.EditValue    := iif(FClientAdd.FieldByName('service_kind_rep_id').IsNull, null, FClientAdd.FieldByName('service_kind_rep').Value);
  cxButtonEdit19.EditValue    := iif(FClientAdd.FieldByName('service_kind_rep_id').IsNull, null, FClientAdd.FieldByName('service_kind_rep_inv').Value);


  if FClientAdd.FieldByName('exchange_USD_val').IsNull then begin
    cxCheckBox8.Checked       := True;
    GetAvgExchange;
  end else begin
    cxCheckBox8.Checked       := False;
    cxButtonEdit15.EditValue  := FClientAdd.FieldByName('exchange_USD_val').Value;
    cxButtonEdit1.EditValue   := FClientAdd.FieldByName('exchange_EUR_val').Value;
    cxButtonEdit17.EditValue  := FClientAdd.FieldByName('exchange_CHF_val').Value;
  end;

  Q.Free;
  Fset_calc_enabled := True;
  CalcSum();

  Screen.Cursor := crDefault;
end;

procedure TfmShapeRateAdd2.cxButton1Click(Sender: TObject);
begin
  if cxLookupComboBox4.EditValue <> null then begin
    GetDocBlobView(cxLookupComboBox4.EditValue, nil, '', fmMain.Lis);
  end;
end;

procedure TfmShapeRateAdd2.cxButton2Click(Sender: TObject);
begin
  if cxLookupComboBox8.EditValue = null then begin
    Application.MessageBox('Выберите договор.', 'Ошибка', MB_OK);
    ModalResult := mrNone;
    Exit;
  end;
//  if Fbudget_id = -9 then begin
//    Application.MessageBox('Выберите услугу.', 'Ошибка', MB_OK);
//    ModalResult := mrNone;
//    Exit;
//  end;

  // Проверки
  // Ставка + кол-во + ед. измерения + валюта + НДС

  if Fid = -9 then begin
    FClientAdd.Append;
  end else begin
    FClientAdd.Locate('id', Fid, []);
    FClientAdd.Edit;
  end;

  Query_Agent.Locate('contract_id', cxLookupComboBox8.EditValue, []);
  FClientAdd.FieldByName('contract_agent_id'            ).Value := cxLookupComboBox8.EditValue;
  FClientAdd.FieldByName('firm_self_name'               ).Value := Query_Agent.FieldByName('firm_self_name').AsString;
  FClientAdd.FieldByName('firm_customer_name'           ).Value := Query_Agent.FieldByName('firm_customer_name').AsString;
  FClientAdd.FieldByName('contract_cod'                 ).Value := Query_Agent.FieldByName('contract_cod').AsString;
  FClientAdd.FieldByName('contract_date_begin'          ).Value := Query_Agent.FieldByName('date_begin').AsString;

  FClientAdd.FieldByName('five_days_zfto_id'            ).Value := cxLookupComboBox2.EditValue;
  FClientAdd.FieldByName('five_days_zfto_name'          ).Value := cxLookupComboBox2.Text;
  FClientAdd.FieldByName('agreement_id'                 ).Value := cxLookupComboBox4.EditValue;
  FClientAdd.FieldByName('agreement_name'               ).Value := iif(cxLookupComboBox4.EditValue <> null, cxLookupComboBox4.Text, null);
  FClientAdd.FieldByName('agreement_note'               ).Value := cxTextEdit6.EditValue;
  FClientAdd.FieldByName('ed_izm_id'                    ).Value := cxLookupComboBox3.EditValue;
  FClientAdd.FieldByName('ed_izm_cod'                   ).Value := Query_Ed_Izm.Lookup('inf_obj_id', cxLookupComboBox3.EditValue, 'inf_obj_cod');
  FClientAdd.FieldByName('ed_izm_name'                  ).Value := iif(cxLookupComboBox3.EditValue <> null, cxLookupComboBox3.Text, null);
  FClientAdd.FieldByName('currency_id'                  ).Value := cxLookupComboBox5.EditValue;
  FClientAdd.FieldByName('brief_name'                   ).Value := iif(cxLookupComboBox5.EditValue <> null, cxLookupComboBox5.Text, null);
  FClientAdd.FieldByName('node_begin_id'                ).Value := iif(Fnode_begin_id<>-9, Fnode_begin_id, null);
  FClientAdd.FieldByName('node_begin_cod'               ).Value := iif(Fnode_begin_id<>-9, cxTextEdit3.EditValue, null);
  FClientAdd.FieldByName('node_begin_name'              ).Value := iif(Fnode_begin_id<>-9, cxButtonEdit6.EditValue, null);
  FClientAdd.FieldByName('node_end_id'                  ).Value := iif(Fnode_end_id<>-9, Fnode_end_id, null);
  FClientAdd.FieldByName('node_end_cod'                 ).Value := iif(Fnode_end_id<>-9, cxTextEdit4.EditValue, null);
  FClientAdd.FieldByName('node_end_name'                ).Value := iif(Fnode_end_id<>-9, cxButtonEdit7.EditValue, null);
  FClientAdd.FieldByName('state_begin_id'               ).Value := iif(Fstate_begin_id<>-9, Fstate_begin_id, null);
  FClientAdd.FieldByName('state_begin_name'             ).Value := iif(Fstate_begin_id<>-9, cxButtonEdit5.EditValue, null);
  FClientAdd.FieldByName('state_end_id'                 ).Value := iif(Fstate_end_id<>-9, Fstate_end_id, null);
  FClientAdd.FieldByName('state_end_name'               ).Value := iif(Fstate_end_id<>-9, cxButtonEdit8.EditValue, null);
  FClientAdd.FieldByName('node_border_in'               ).Value := iif(Fnode_border_in<>-9, Fnode_border_in, null);
  FClientAdd.FieldByName('node_border_in_cod'           ).Value := iif(Fnode_border_in<>-9, cxTextEdit1.EditValue, null);
  FClientAdd.FieldByName('node_border_in_name'          ).Value := iif(Fnode_border_in<>-9, cxButtonEdit20.EditValue, null);
  FClientAdd.FieldByName('node_border_out'              ).Value := iif(Fnode_border_out<>-9, Fnode_border_out, null);
  FClientAdd.FieldByName('node_border_out_cod'          ).Value := iif(Fnode_border_out<>-9, cxTextEdit2.EditValue, null);
  FClientAdd.FieldByName('node_border_out_name'         ).Value := iif(Fnode_border_out<>-9, cxButtonEdit21.EditValue, null);
  FClientAdd.FieldByName('road_begin_id'                ).Value := iif(Froad_begin_id<>-9, Froad_begin_id, null);
  FClientAdd.FieldByName('road_begin_name'              ).Value := iif(Froad_begin_id<>-9, cxButtonEdit22.EditValue, null);
  FClientAdd.FieldByName('road_end_id'                  ).Value := iif(Froad_end_id<>-9, Froad_end_id, null);
  FClientAdd.FieldByName('road_end_name'                ).Value := iif(Froad_end_id<>-9, cxButtonEdit23.EditValue, null);
  FClientAdd.FieldByName('kargoETSNG_id'                ).Value := iif(FkargoETSNG_id<>-9, FkargoETSNG_id, null);
  FClientAdd.FieldByName('kargoETSNG_cod'               ).Value := iif(FkargoETSNG_id<>-9, cxButtonEdit11.EditValue, null);
  FClientAdd.FieldByName('kargoETSNG_name'              ).Value := iif(FkargoETSNG_id<>-9, cxButtonEdit10.EditValue, null);
  FClientAdd.FieldByName('kargoETSNG_group_name'        ).Value := iif(FkargoETSNG_id<>-9, cxTextEdit14.EditValue, null);
  FClientAdd.FieldByName('kargoETSNG_add_id'            ).Value := iif(FkargoETSNG_add_id<>-9, FkargoETSNG_add_id, null);
  FClientAdd.FieldByName('kargoETSNG_add_cod'           ).Value := iif(FkargoETSNG_add_id<>-9, cxButtonEdit2.EditValue, null);
  FClientAdd.FieldByName('kargoETSNG_add_name'          ).Value := iif(FkargoETSNG_add_id<>-9, cxButtonEdit14.EditValue, null);
  FClientAdd.FieldByName('kargoGNG_id'                  ).Value := iif((FkargoGNG_id<>-9) and cxCheckBox4.Checked, FkargoGNG_id, null);
  FClientAdd.FieldByName('kargoGNG_cod'                 ).Value := iif((FkargoGNG_id<>-9) and cxCheckBox4.Checked, cxButtonEdit13.EditValue, null);
  FClientAdd.FieldByName('kargoGNG_name'                ).Value := iif((FkargoGNG_id<>-9) and cxCheckBox4.Checked, cxButtonEdit12.EditValue, null);
  FClientAdd.FieldByName('shaping_rate_round_weight'    ).Value := cxRadioGroup2.ItemIndex;
  FClientAdd.FieldByName('shaping_check_kargo_capacity' ).Value := cxCheckBox2.Checked;
  FClientAdd.FieldByName('shaping_kargo_min_norm'       ).Value := iif(cxCheckBox1.Checked, cxTextEdit5.EditValue, null);
  FClientAdd.FieldByName('shaping_rate_round_sum'       ).Value := Fshaping_rate_round_sum;
  FClientAdd.FieldByName('set_return'                   ).Value := cxCheckBox5.Checked;
  FClientAdd.FieldByName('return_id'                    ).Value := iif(cxCheckBox5.Checked, cxLookupComboBox6.EditValue, null);
  FClientAdd.FieldByName('return_name'                  ).Value := iif(cxCheckBox5.Checked, cxLookupComboBox6.Text,      null);
  FClientAdd.FieldByName('exchange_USD_val'             ).Value := iif(cxCheckBox8.Checked, null, cxButtonEdit15.EditValue);
  FClientAdd.FieldByName('exchange_EUR_val'             ).Value := iif(cxCheckBox8.Checked, null, cxButtonEdit1.EditValue);
  FClientAdd.FieldByName('exchange_CHF_val'             ).Value := iif(cxCheckBox8.Checked, null, cxButtonEdit17.EditValue);
  FClientAdd.FieldByName('set_self_rate'                ).Value := cxCheckBox7.Checked;
  FClientAdd.FieldByName('shaping_rate_nds_id'          ).Value := cxLookupComboBox9.EditValue;
  FClientAdd.FieldByName('shaping_rate_nds_name'        ).Value := cxLookupComboBox9.Text;
  FClientAdd.FieldByName('budget_id'                    ).Value := iif(Fbudget_id<>-9, Fbudget_id, null);
  FClientAdd.FieldByName('budget_cod'                   ).Value := iif(Fbudget_id<>-9, cxTextEdit7.EditValue, null);
  FClientAdd.FieldByName('budget_name'                  ).Value := iif(Fbudget_id<>-9, cxButtonEdit24.EditValue, null);
  FClientAdd.FieldByName('type_calc_sum'                ).Value := RadioGroup2.ItemIndex;
  FClientAdd.FieldByName('set_include_nds'              ).Value := cxCheckBox6.Checked;
  FClientAdd.FieldByName('date_period'                  ).Value := Fdate_period;

  FClientAdd.FieldByName('date_period_service'          ).Value := _GetDateService;
  FClientAdd.FieldByName('service_type'                 ).Value := Fservice_type;
  FClientAdd.FieldByName('service_type_name'            ).Value := iif(Fservice_type = 0, 'Доход', 'Расход');
  FClientAdd.FieldByName('shaping_rate_type_id'         ).Value := cxLookupComboBox1.EditValue;
  FClientAdd.FieldByName('shaping_rate_type_name'       ).Value := iif(cxLookupComboBox1.EditValue <> null, cxLookupComboBox1.Text, null);
  FClientAdd.FieldByName('set_round_notNDS_sum'         ).Value := cxCheckBox9.Checked;

  FClientAdd.FieldByName('shaping_rate_val'             ).Value := cxCurrencyEdit4.EditValue;
  FClientAdd.FieldByName('shaping_rate_count'           ).Value := cxCurrencyEdit5.EditValue;
  FClientAdd.FieldByName('shaping_rate_sum'             ).Value := cxCurrencyEdit6.EditValue;
  FClientAdd.FieldByName('shaping_rate_NDS_sum'         ).Value := cxCurrencyEdit2.EditValue;
  FClientAdd.FieldByName('shaping_rate_notNDS_sum'      ).Value := cxCurrencyEdit1.EditValue;
  FClientAdd.FieldByName('shaping_rate_fee'             ).Value := cxCurrencyEdit3.EditValue;

  FClientAdd.FieldByName('vid_send'                     ).Value := cxRadioGroup1.ItemIndex;
  FClientAdd.FieldByName('shaping_rate_note'            ).Value := iif(Memo1.EditValue='', null, Memo1.EditValue);

  FClientAdd.FieldByName('shaping_rate_acts_note'       ).Value := iif(cxMemo1.EditValue='', null, cxMemo1.EditValue);
  FClientAdd.FieldByName('service_kind_id'              ).Value := iif(Fservice_kind_id<>-9, Fservice_kind_id, null);
  FClientAdd.FieldByName('service_kind'                 ).Value := iif(Fservice_kind_id<>-9, cxButtonEdit3.EditValue, null);
  FClientAdd.FieldByName('service_kind_inv'             ).Value := iif(Fservice_kind_id<>-9, cxButtonEdit4.EditValue, null);
  FClientAdd.FieldByName('service_kind_rep_id'          ).Value := iif(Fservice_kind_rep_id<>-9, Fservice_kind_rep_id, null);
  FClientAdd.FieldByName('service_kind_rep'             ).Value := iif(Fservice_kind_rep_id<>-9, cxButtonEdit18.EditValue, null);
  FClientAdd.FieldByName('service_kind_rep_inv'         ).Value := iif(Fservice_kind_rep_id<>-9, cxButtonEdit19.EditValue, null);


  FClientAdd.Post;

  Fid := FClientAdd.FieldByName('id').AsInteger;

  ModalResult := mrOk;
end;

procedure TfmShapeRateAdd2.cxButtonEdit10PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
var
  id  : integer;
  cod : string;
  name: string;
  Q   : TADOQuery;
begin
  case AButtonIndex of
    0 : begin
          case TcxButtonEdit(Sender).Tag of
            0:  if FindInfObj('Шаблон поиска груза по наименованию:', 'inf_obj_etsng', False, id, cod, name) then begin
                  FkargoETSNG_id := id;
                  cxButtonEdit10.EditValue := name;
                  cxButtonEdit11.EditValue := cod;
                  Q := TADOQuery.Create(nil);
                  Q.Connection := fmMain.Lis;
                  Q.SQL.Add('SELECT * FROM view_kargoETSNG  WHERE inf_obj_id = ' + IntToStr(id));
                  Q.Open;
                  cxTextEdit14.EditValue  := Q.FieldByName('group_name').Value;

                  if Q.FieldByName('group_cod').AsString = '9' then
                    SetKargoEmptyAdd(True)
                  else
                    SetKargoEmptyAdd(False);

                  Q.Free;
                end;
            1:  if FindInfObj('Шаблон поиска груза по коду:', 'inf_obj_etsng', True, id, cod, name) then begin
                  FkargoETSNG_id := id;
                  cxButtonEdit10.EditValue := name;
                  cxButtonEdit11.EditValue := cod;
                  Q := TADOQuery.Create(nil);
                  Q.Connection := fmMain.Lis;
                  Q.SQL.Add('SELECT * FROM view_kargoETSNG  WHERE inf_obj_id = ' + IntToStr(id));
                  Q.Open;
                  cxTextEdit14.EditValue  := Q.FieldByName('group_name').Value;

                  if Q.FieldByName('group_cod').AsString = '9' then
                    SetKargoEmptyAdd(True)
                  else
                    SetKargoEmptyAdd(False);

                  Q.Free;
                end;
          end;
        end;
    1 : begin
          FkargoETSNG_id := -9;
          cxButtonEdit10.EditValue := null;
          cxButtonEdit11.EditValue := null;
          cxTextEdit14.EditValue  := null;
          SetKargoEmptyAdd(False);
        end;
  end;
end;

procedure TfmShapeRateAdd2.cxButtonEdit12PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
var
  id  : integer;
  cod : string;
  name: string;
begin
  case AButtonIndex of
    0 : begin
          case TcxButtonEdit(Sender).Tag of
            0:  if FindInfObj('Шаблон поиска груза по наименованию:', 'inf_obj_gng', False, id, cod, name) then begin
                  FkargoGNG_id := id;
                  cxButtonEdit12.EditValue := name;
                  cxButtonEdit13.EditValue := cod;
                end;
            1:  if FindInfObj('Шаблон поиска груза по коду:', 'inf_obj_gng', True, id, cod, name) then begin
                  FkargoGNG_id := id;
                  cxButtonEdit12.EditValue := name;
                  cxButtonEdit13.EditValue := cod;
                end;
          end;
        end;
    1 : begin
          FkargoGNG_id := -9;
          cxButtonEdit12.EditValue := null;
          cxButtonEdit13.EditValue := null;
        end;
  end;
end;

procedure TfmShapeRateAdd2.cxButtonEdit14PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
var
  id  : integer;
  cod : string;
  name: string;
begin
  case AButtonIndex of
    0 : begin
          case TcxButtonEdit(Sender).Tag of
            0:  if FindInfObj('Шаблон поиска груза по наименованию:', 'inf_obj_etsng', False, id, cod, name) then begin
                  FkargoETSNG_add_id := id;
                  cxButtonEdit14.EditValue := name;
                  cxButtonEdit2.EditValue := cod;
                end;
            1:  if FindInfObj('Шаблон поиска груза по коду:', 'inf_obj_etsng', True, id, cod, name) then begin
                  FkargoETSNG_add_id := id;
                  cxButtonEdit14.EditValue := name;
                  cxButtonEdit2.EditValue := cod;
                end;
          end;
        end;
    1 : begin
          FkargoETSNG_add_id := -9;
          cxButtonEdit14.EditValue := null;
          cxButtonEdit2.EditValue := null;
        end;
  end;
end;

procedure TfmShapeRateAdd2.cxButtonEdit15PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
var d : TDate;
begin
  d := EndOfAMonth(YearOf(Fdate_period), MonthOf(Fdate_period));
  fmPeriod := TfmPeriod.Create(Application, d, d, 5);
  if fmPeriod.ShowModal = mrOK then begin
    TcxButtonEdit(Sender).Text := FormatFloat('0.0000', GetExchangeNew(TcxButtonEdit(Sender).Tag, fmPeriod._GetDateBegin, fmMain.Lis, True));
  end;
end;

procedure TfmShapeRateAdd2.cxButtonEdit16PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  fmContract := TfmContract.Create(Application, True, Fservice_type);
  fmContract.Visible := False;

  if cxLookupComboBox8.EditValue <> null then
    fmContract._SetContractId := cxLookupComboBox8.EditValue;

  if fmContract.ShowModal=mrOk then begin
    Query_Agent.Close;
    Query_Agent.Open;
    if Query_Agent.Locate('contract_id', fmContract._GetContractId, []) then cxLookupComboBox8.EditValue := fmContract._GetContractId
    else begin
      Application.MessageBox('Выбранный договор в этом периоде не действует!', 'Внимание', MB_OK);
      cxLookupComboBox8.EditValue := null;
    end;
  end;
end;

procedure TfmShapeRateAdd2.cxButtonEdit20PropertiesButtonClick(Sender: TObject;  AButtonIndex: Integer);
var
  id  : integer;
  cod : string;
  name: string;
begin
  case AButtonIndex of
    0 : begin
          case TcxButtonEdit(Sender).Tag of
            2 : begin // Станция отправления
                  if FindInfObj('Шаблон поиска станции по названию:', 'inf_obj_node', False, id, cod, name) then begin
                    Fnode_border_in := id;
                    cxButtonEdit20.Text := name;
                    cxTextEdit1.Text := cod;
                  end;
                end;
            3 : begin
                  // Станция назначения
                  if FindInfObj('Шаблон поиска станции по названию:', 'inf_obj_node', False, id, cod, name) then begin
                    Fnode_border_out  := id;
                    cxButtonEdit21.Text  := name;
                    cxTextEdit2.Text := cod;
                  end;
                end;
          end;
        end;
    1 : case TcxButtonEdit(Sender).Tag of
          2 : begin
                Fnode_border_in := -9;
                cxButtonEdit20.Text := '';
                cxTextEdit1.Text := '';
              end;
          3 : begin
                Fnode_border_out := -9;
                cxButtonEdit20.Text := '';
                cxTextEdit2.Text := '';
              end;
        end;
  end;
end;

procedure TfmShapeRateAdd2.cxButtonEdit22PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
var
  id  : integer;
  cod : string;
  name: string;
begin
  case AButtonIndex of
    0 : begin
          if FindInfObj('Шаблон поиска дороги по названию:', 'inf_obj_road', False, id, cod, name) then begin
            Froad_begin_id := id;
            cxButtonEdit22.Text := name;
          end;
        end;
    1 : begin
          Froad_begin_id := -9;
          cxButtonEdit22.Text := '';
        end;
  end;
end;

procedure TfmShapeRateAdd2.cxButtonEdit23PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
var
  id  : integer;
  cod : string;
  name: string;
begin
  case AButtonIndex of
    0 : begin
          if FindInfObj('Шаблон поиска дороги по названию:', 'inf_obj_road', False, id, cod, name) then begin
            Froad_end_id := id;
            cxButtonEdit23.Text := name;
          end;
        end;
    1 : begin
          Froad_end_id := -9;
          cxButtonEdit23.Text := '';
        end;
  end;
end;

procedure TfmShapeRateAdd2.cxButtonEdit24PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
type
  TFunc = function(AppHand: THandle; f: boolean; usr_pwd: PUser_pwd; budget_type_cod: string; budget_id: integer) : variant;
var
  FDic   : TFunc;
  handle : THandle;
  v      : Variant;
  Q      : TADOQuery;
begin
  case AButtonIndex of
    0 : begin

          handle := LoadLibrary('dictionary.dll');
          @FDic := GetProcAddress(handle, 'CreateWndDictService');
          v := FDic(Application.Handle, True, usr_pwd, '1', Fbudget_id);
          FreeLibrary(handle);

          if v[0] <> -9 then begin
            Fbudget_id := v[0];

            Q := TADOQuery.Create(self);
           // Q.ConnectionString := 'Persist Security Info=True;Provider=SQLOLEDB.1;User ID=admin_sfh;Password=cjnhfkjubcnbrf;Initial Catalog=lis1;Data Source=87.255.201.237;';
            Q.Connection := fmMain.Lis;
            Q.SQL.Add('SELECT * FROM view_shp_budget_service WHERE budget_id = ' + IntToStr(Fbudget_id));
            Q.Open;

            cxButtonEdit24.Text := Q.FieldByName('budget_name').AsString;
            cxTextEdit7.Text    := Q.FieldByName('budget_cod').AsString;

            Q.Free;
          end;

        end;
    1 : begin
          cxButtonEdit24.EditValue := null;
          cxTextEdit7.EditValue    := null;
          Fbudget_id := -9;
        end;
  end;
end;

procedure TfmShapeRateAdd2.cxButtonEdit3PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
var Q : TADOQuery;
begin
  if AButtonIndex = 0 then begin

    Q := TADOQuery.Create(nil);
    Q.Connection := fmMain.Lis;
    Q.SQL.Add('SELECT * FROM inf_obj WHERE (type_inf_id IN (128)) and ISNULL(inf_obj_cod, '''') <> ''999'' and (dbo.GetInfObjVisible(str_group_visible) = 1)');
    Q.Open;

    fmFilter := TfmFilter.Create(0, Q, 'inf_obj_id', 'inf_obj_name_full', 'inf_obj_name');
    fmFilter._SetServiceKind := True;
    if fmFilter.ShowModal = mrOk then begin
      case TComponent(Sender).Tag of
        0 : begin
              Fservice_kind_id     := fmFilter.GetId;
              cxButtonEdit3.Text  := fmFilter.GetName;
              cxButtonEdit4.Text  := fmFilter.GetCod;
            end;
        1 : begin
              Fservice_kind_rep_id := fmFilter.GetId;
              cxButtonEdit18.Text  := fmFilter.GetName;
              cxButtonEdit19.Text  := fmFilter.GetCod;
            end;
      end;
    end;

    fmFilter.Free;
    Q.Free;
  end else begin
    case TComponent(Sender).Tag of
        0 : begin
              Fservice_kind_id     := -9;
              cxButtonEdit3.Text  := '';
              cxButtonEdit4.Text  := '';
            end;
        1 : begin
              Fservice_kind_rep_id := -9;
              cxButtonEdit18.Text  := '';
              cxButtonEdit19.Text  := '';
            end;
      end;
  end;
end;

procedure TfmShapeRateAdd2.cxButtonEdit5PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
var
  id  : integer;
  cod : string;
  name: string;
begin
  case AButtonIndex of
    0 : begin
          case TcxButtonEdit(Sender).Tag of
            1 : begin // Страна отправления
                  if FindInfObj('Шаблон поиска страны по названию:', 'inf_obj_state', False, id, cod, name) then begin
                    Fstate_begin_id    := id;
                    cxButtonEdit5.Text := name;
                  end;
                end;
            4 : begin // Страна назначения
                  if FindInfObj('Шаблон поиска страны по названию:', 'inf_obj_state', True, id, cod, name) then begin
                    Fstate_end_id      := id;
                    cxButtonEdit8.Text := name;
                  end;
                end;
          end;
        end;
    1 : case TcxButtonEdit(Sender).Tag of
          1 : begin
                Fstate_begin_id    := -9;
                cxButtonEdit5.Text := '';
              end;
          4 : begin
                Fstate_end_id      := -9;
                cxButtonEdit8.Text := '';
              end;
        end;
  end;
end;

procedure TfmShapeRateAdd2.cxButtonEdit6PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
var
  id  : integer;
  cod : string;
  name: string;
begin
  case AButtonIndex of
    0 : begin
          case TcxButtonEdit(Sender).Tag of
            2 : begin // Станция отправления
                  if FindInfObj('Шаблон поиска станции по названию:', 'inf_obj_node', False, id, cod, name) then begin
                    Fnode_begin_id     := id;
                    cxButtonEdit6.Text := name;
                    cxTextEdit3.Text := cod;
                  end;
                end;
            3 : begin
                  // Станция назначения
                  if FindInfObj('Шаблон поиска станции по названию:', 'inf_obj_node', False, id, cod, name) then begin
                    Fnode_end_id        := id;
                    cxButtonEdit7.Text  := name;
                    cxTextEdit4.Text := cod;
                  end;
                end;
          end;
        end;
    1 : case TcxButtonEdit(Sender).Tag of
          2 : begin
                Fnode_begin_id := -9;
                cxButtonEdit6.Text := '';
                cxTextEdit3.Text := '';
              end;
          3 : begin
                Fnode_end_id := -9;
                cxButtonEdit7.Text := '';
                cxTextEdit4.Text := '';
              end;
        end;
  end;
end;

procedure TfmShapeRateAdd2.cxCheckBox1PropertiesEditValueChanged(Sender: TObject);
begin
  cxTextEdit5.Visible := cxCheckBox1.Checked;
end;

procedure TfmShapeRateAdd2.cxCheckBox3PropertiesEditValueChanged(
  Sender: TObject);
begin
  cxLookupComboBox2.Enabled   := cxCheckBox3.Checked;
  cxLookupComboBox2.EditValue := null;
end;

procedure TfmShapeRateAdd2.cxCheckBox4PropertiesEditValueChanged(Sender: TObject);
begin
  cxButtonEdit12.Enabled := cxCheckBox4.Checked;
  cxButtonEdit13.Enabled := cxCheckBox4.Checked;
  cxButtonEdit12.EditValue := null;
  cxButtonEdit13.EditValue := null;
  FkargoGNG_id := -9;

end;

procedure TfmShapeRateAdd2.cxCheckBox5PropertiesEditValueChanged(Sender: TObject);
begin
  cxLookupComboBox6.Enabled   := cxCheckBox5.Checked;
  cxLookupComboBox6.EditValue := null;
end;

procedure TfmShapeRateAdd2.cxCheckBox6PropertiesEditValueChanged(Sender: TObject);
begin
  CalcSum();
end;

procedure TfmShapeRateAdd2.cxCheckBox8PropertiesEditValueChanged(Sender: TObject);
begin
  if cxCheckBox8.Checked = True then begin
    cxButtonEdit15.Enabled := False;
    cxButtonEdit1.Enabled  := False;
    cxButtonEdit17.Enabled := False;
    GetAvgExchange();
  end else begin
    cxButtonEdit15.Enabled := True;
    cxButtonEdit1.Enabled  := True;
    cxButtonEdit17.Enabled := True;
  end;
end;

procedure TfmShapeRateAdd2.cxCurrencyEdit4PropertiesEditValueChanged(Sender: TObject);
begin
  CalcSum();
end;

procedure TfmShapeRateAdd2.cxCurrencyEdit5PropertiesEditValueChanged(Sender: TObject);
begin
  CalcSum();
end;

procedure TfmShapeRateAdd2.cxLookupComboBox1PropertiesChange(Sender: TObject);
begin
  if cxLookupComboBox1.EditValue = 2 then begin
    cxRadioGroup2.Visible := False;
    cxCheckBox1.Visible := False;
    cxCheckBox2.Visible := False;
    cxTextEdit5.Visible := False;
    RadioGroup2.Visible := False;
  end else begin
    cxRadioGroup2.Visible := True;
    cxCheckBox1.Visible := True;
    cxCheckBox2.Visible := True;
    cxTextEdit5.Visible := True;
    RadioGroup2.Visible := True;
  end;
end;

procedure TfmShapeRateAdd2.cxLookupComboBox8PropertiesChange(Sender: TObject);
var contract_id  : integer;
    agreement_id : integer;
begin
  cxButtonEdit9.EditValue := '';
  cxButtonEdit16.EditValue := '';

  if Query_Agent.Active then begin
    contract_id := iif(cxLookupComboBox8.EditValue = null, -9, cxLookupComboBox8.EditValue);

    if Query_Agent.Locate('contract_id', contract_id, []) then begin
      cxButtonEdit16.EditValue    := Query_Agent.FieldByName('firm_self_name').AsString;
      cxButtonEdit9.EditValue     := Query_Agent.FieldByName('contract_cod'  ).AsString;
      if not Query_Agent.FieldByName('currency_id').IsNull then
        cxLookupComboBox5.EditValue := Query_Agent.FieldByName('currency_id'   ).Value;
    end;

    // Проверка приложения к договору
    agreement_id := iif(cxLookupComboBox4.EditValue = null, -9, cxLookupComboBox4.EditValue);
    Query_Agreement.Close;
    Query_Agreement.Parameters.ParamByName('contract_id').Value := contract_id;
    Query_Agreement.Open;
    if Query_Agreement.Locate('doc_id', agreement_id, []) then
      cxLookupComboBox4.EditValue := Query_Agreement.FieldByName('doc_id').Value
    else
      cxLookupComboBox4.EditValue := null;
  end;
end;

procedure TfmShapeRateAdd2.cxLookupComboBox9PropertiesEditValueChanged(Sender: TObject);
begin
  CalcSum();
end;

procedure TfmShapeRateAdd2.cxRadioButton1Click(Sender: TObject);
begin
  if cxRadioButton1.Checked then begin
    cxLookupComboBox4.Properties.ReadOnly := False;
    cxLookupComboBox4.Style.Color := clWindow;

    cxTextEdit6.Properties.ReadOnly := True;
    cxTextEdit6.Style.Color := clBtnFace;
    cxTextEdit6.EditValue := null;

  end else begin
    cxLookupComboBox4.Properties.ReadOnly := True;
    cxLookupComboBox4.Style.Color := clBtnFace;
    cxLookupComboBox4.EditValue := null;

    cxTextEdit6.Properties.ReadOnly := False;
    cxTextEdit6.Style.Color := clWindow;
  end;
end;

procedure TfmShapeRateAdd2.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

function TfmShapeRateAdd2.FindInfObj(caption_name: string; table_name: string; set_cod: boolean; var id: integer; var cod: string; var name: string): boolean;
var new_str : string;
    Q : TADOQuery;
    res : boolean;
begin
  table_name := LowerCase(table_name);

  if InputQuery('Поиск', caption_name, new_str) then begin
    Q := TADOQuery.Create(nil);
    Q.Connection := fmMain.Lis;
    Q.SQL.Add('SELECT inf_obj_id, inf_obj_name, inf_obj_cod');
    Q.SQL.Add('FROM ' + table_name);
    Q.SQL.Add('WHERE (' + iif(set_cod, 'inf_obj_cod', 'inf_obj_name') + ' LIKE ''%' + new_str + '%'')');
    Q.SQL.Add('AND (LEFT(' + DateToSQL(Fdate_period) + ', 6) BETWEEN convert(varchar(6), date_begin, 112) AND convert(varchar(6), date_end, 112) OR date_end is null)');
    if (table_name = 'inf_obj') or (table_name = 'inf_obj_etsng') then
      Q.SQL.Add('AND (dbo.GetInfObjVisible(str_group_visible) = 1)');
    Q.SQL.Add('ORDER BY inf_obj_name');
    Q.Open;
    fmFilter := TfmFilter.Create(0, Q, 'inf_obj_id', 'inf_obj_cod', 'inf_obj_name');
    if fmFilter.ShowModal=mrOk then begin
      id  := fmFilter.GetId;
      cod := fmFilter.GetCod;
      name:= fmFilter.GetName;
      res := True;
    end else res := False;
    Q.Free;
  end else res := False;

  Result := res;
end;

procedure TfmShapeRateAdd2.SetKargoEmptyAdd(set_enable: boolean);
begin
  if not set_enable then begin
    FkargoETSNG_add_id  := -9;
    cxButtonEdit14.EditValue:= null;
    cxButtonEdit2.EditValue := null;
    cxButtonEdit14.Enabled  := False;
    cxButtonEdit2.Enabled   := False;
  end else begin
    cxButtonEdit2.Enabled   := True;
    cxButtonEdit14.Enabled  := True;
  end;
end;

procedure TfmShapeRateAdd2.GetAvgExchange();
begin
  //---- курсы валют ----------
  cxButtonEdit15.Text := FormatFloat('0.0000', GetExchangeNew(1, StartOfAMonth(YearOf(Fdate_period), MonthOf(Fdate_period)), fmMain.Lis));
  cxButtonEdit1.Text :=  FormatFloat('0.0000', GetExchangeNew(6, StartOfAMonth(YearOf(Fdate_period), MonthOf(Fdate_period)), fmMain.Lis));
  cxButtonEdit17.Text := FormatFloat('0.0000', GetExchangeNew(5, StartOfAMonth(YearOf(Fdate_period), MonthOf(Fdate_period)), fmMain.Lis));
end;

procedure TfmShapeRateAdd2.CalcSum();
var sp_shaping_rate_CALC: TADOStoredProc;
begin
  if Fset_calc_enabled = True then begin
    sp_shaping_rate_CALC := TADOStoredProc.Create(nil);
    sp_shaping_rate_CALC.Connection := fmMain.Lis;
    sp_shaping_rate_CALC.ProcedureName := 'sp_shaping_rate_CALC';
    sp_shaping_rate_CALC.Parameters.Refresh;
    sp_shaping_rate_CALC.Parameters.ParamByName('@currency_id'          ).Value := cxLookupComboBox5.EditValue;
    sp_shaping_rate_CALC.Parameters.ParamByName('@shaping_rate_val'     ).Value := cxCurrencyEdit4.EditValue;
    sp_shaping_rate_CALC.Parameters.ParamByName('@shaping_rate_count'   ).Value := cxCurrencyEdit5.EditValue;
    sp_shaping_rate_CALC.Parameters.ParamByName('@shaping_rate_nds_id'  ).Value := cxLookupComboBox9.EditValue;
    sp_shaping_rate_CALC.Parameters.ParamByName('@set_include_nds'      ).Value := cxCheckBox6.Checked;
    sp_shaping_rate_CALC.Parameters.ParamByName('@exchange_USD_val'     ).Value := StrToFloat(cxButtonEdit15.Text);
    sp_shaping_rate_CALC.Parameters.ParamByName('@exchange_CHF_val'     ).Value := StrToFloat(cxButtonEdit1.Text);
    sp_shaping_rate_CALC.Parameters.ParamByName('@exchange_EUR_val'     ).Value := StrToFloat(cxButtonEdit17.Text);
    sp_shaping_rate_CALC.Parameters.ParamByName('@set_hand_edit'        ).Value := False;
    sp_shaping_rate_CALC.Parameters.ParamByName('@shaping_rate_notNDS_sum').Value := null;
    sp_shaping_rate_CALC.Parameters.ParamByName('@shaping_rate_NDS_sum'   ).Value := null;
    sp_shaping_rate_CALC.Parameters.ParamByName('@shaping_rate_sum'       ).Value := null;
    try
      sp_shaping_rate_CALC.ExecProc;
    except
    end;

    cxCurrencyEdit1.EditValue := sp_shaping_rate_CALC.Parameters.ParamByName('@shaping_rate_notNDS_sum').Value;
    cxCurrencyEdit2.EditValue := sp_shaping_rate_CALC.Parameters.ParamByName('@shaping_rate_NDS_sum').Value;
    cxCurrencyEdit6.EditValue := sp_shaping_rate_CALC.Parameters.ParamByName('@shaping_rate_sum').Value;

    sp_shaping_rate_CALC.Free;
  end;
end;

procedure TfmShapeRateAdd2.SetDateService(date_service: TDateTime);
begin
  if date_service <> null then begin
    cxComboBox3.ItemIndex := StrToInt(FormatDateTime('m', date_service))-1;
    cxComboBox4.ItemIndex := cxComboBox4.Properties.Items.IndexOf(FormatDateTime('yyyy', date_service));
  end else begin
    cxComboBox3.ItemIndex := -1;
    cxComboBox4.ItemIndex := -1;
  end;
end;


procedure TfmShapeRateAdd2.SetContractId(contract_id: integer);
var Q: TADOQuery;
begin
  cxLookupComboBox8.Properties.OnChange := nil;
  Q := TADOQuery.Create(nil);
  Q.Connection := fmMain.Lis;
  Q.SQL.Add('SELECT *');
  Q.SQL.Add('FROM   view_contract_rights');
  Q.SQL.Add('WHERE  contract_id = ' + IntToStr(contract_id));
  Q.SQL.Add('       and ' + DateToSQL(Fdate_period) + ' between cast(date_begin as datetime)-day(date_begin)+1 and cast(dateadd(month, 1, date_end) as datetime)-day(dateadd(month, 1, date_end))');
  Q.Open;

  if Q.RecordCount > 0 then begin

//    if Q.FieldByName('type_contract').AsInteger = 0 then cxButton2.Down := True;
//    if Q.FieldByName('type_contract').AsInteger = 1 then cxButton3.Down := True;
//    if Q.FieldByName('type_contract').AsInteger = 2 then cxButton4.Down := True;
//    Ftype_contract := Q.FieldByName('type_contract').AsInteger;
    Query_Agent.Close;
    Query_Agent.Parameters.ParamByName('date_current' ).Value := Fdate_period;
    // Тип Договора = Типу Услуги
    // Доход = Клиент, Расход = Плдрядчик или Администрация
    Query_Agent.Parameters.ParamByName('type_contract').Value := Fservice_type;
    Query_Agent.Open;

    cxLookupComboBox8.EditValue := contract_id;
  end else begin
    Application.MessageBox('Договор прекратил своё действие!', 'Внимание', MB_OK);
  end;

  cxLookupComboBox8.Properties.OnChange := cxLookupComboBox8PropertiesChange;
  cxLookupComboBox8PropertiesChange(nil);

  Q.Free;
end;

procedure TfmShapeRateAdd2.SetAgreementId(agreement_id: integer);
begin
  if Query_Agreement.Locate('doc_id', agreement_id, []) then
      cxLookupComboBox4.EditValue := agreement_id;
end;

procedure TfmShapeRateAdd2.SetNodeBeginId(node_begin_id: integer);
var Q: TADOQuery;
begin
  Q := TADOQuery.Create(nil);
  Q.Connection := fmMain.Lis;
  Q.SQL.Add('SELECT * FROM inf_obj_NODE WHERE inf_obj_id = ' + IntToStr(node_begin_id));
  Q.Open;
  if Q.FieldByName('inf_obj_id').IsNull then begin
    Fnode_begin_id     := -9;
    cxButtonEdit6.Text := '';
    cxTextEdit3.Text   := '';
  end else begin
    Fnode_begin_id     := Q.FieldByName('inf_obj_id').AsInteger;
    cxButtonEdit6.Text := Q.FieldByName('inf_obj_name').AsString;
    cxTextEdit3.Text   := Q.FieldByName('inf_obj_cod').AsString;
  end;

  Q.Free;
end;

procedure TfmShapeRateAdd2.SetNodeEndId(node_end_id: integer);
var Q: TADOQuery;
begin
  Q := TADOQuery.Create(nil);
  Q.Connection := fmMain.Lis;
  Q.SQL.Add('SELECT * FROM inf_obj_NODE WHERE inf_obj_id = ' + IntToStr(node_end_id));
  Q.Open;
  if Q.FieldByName('inf_obj_id').IsNull then begin
    Fnode_end_id       := -9;
    cxButtonEdit7.Text := '';
    cxTextEdit4.Text   := '';
  end else begin
    Fnode_end_id       := Q.FieldByName('inf_obj_id').AsInteger;
    cxButtonEdit7.Text := Q.FieldByName('inf_obj_name').AsString;
    cxTextEdit4.Text   := Q.FieldByName('inf_obj_cod').AsString;
  end;

  Q.Free;
end;

procedure TfmShapeRateAdd2.SetStateBeginId(state_begin_id: integer);
var Q: TADOQuery;
begin
  Q := TADOQuery.Create(nil);
  Q.Connection := fmMain.Lis;
  Q.SQL.Add('SELECT * FROM inf_obj_STATE WHERE inf_obj_id = ' + IntToStr(state_begin_id));
  Q.Open;
  if Q.FieldByName('inf_obj_id').IsNull then begin
    Fstate_begin_id    := -9;
    cxButtonEdit5.Text := '';
  end else begin
    Fstate_begin_id    := Q.FieldByName('inf_obj_id').AsInteger;
    cxButtonEdit5.Text := Q.FieldByName('inf_obj_name').AsString;
  end;

  Q.Free;
end;

procedure TfmShapeRateAdd2.SetStateEndId(state_end_id: integer);
var Q: TADOQuery;
begin
  Q := TADOQuery.Create(nil);
  Q.Connection := fmMain.Lis;
  Q.SQL.Add('SELECT * FROM inf_obj_STATE WHERE inf_obj_id = ' + IntToStr(state_end_id));
  Q.Open;
  if Q.FieldByName('inf_obj_id').IsNull then begin
    Fstate_end_id      := -9;
    cxButtonEdit8.Text := '';
  end else begin
    Fstate_end_id      := Q.FieldByName('inf_obj_id').AsInteger;
    cxButtonEdit8.Text := Q.FieldByName('inf_obj_name').AsString;
  end;

  Q.Free;
end;

procedure TfmShapeRateAdd2.SetKargoETSNGId(kargoETSNG_id: integer);
var Q: TADOQuery;
begin
  Q := TADOQuery.Create(nil);
  Q.Connection := fmMain.Lis;
  Q.SQL.Add('SELECT * FROM view_kargoETSNG  WHERE inf_obj_id = ' + IntToStr(kargoETSNG_id));
  Q.Open;
  if Q.FieldByName('inf_obj_id').IsNull then begin
    FkargoETSNG_id      := -9;
    cxButtonEdit10.Text := '';
    cxButtonEdit11.Text := '';
    cxTextEdit14.Text   := '';
    SetKargoEmptyAdd(False);
  end else begin
    FkargoETSNG_id           := Q.FieldByName('inf_obj_id').AsInteger;
    cxButtonEdit10.EditValue := Q.FieldByName('inf_obj_name').AsString;
    cxButtonEdit11.EditValue := Q.FieldByName('inf_obj_cod').AsString;
    cxTextEdit14.EditValue   := Q.FieldByName('group_name').Value;

    if Q.FieldByName('group_cod').AsString = '9' then
      SetKargoEmptyAdd(True)
    else
      SetKargoEmptyAdd(False);
  end;

  Q.Free;
end;

procedure TfmShapeRateAdd2.SetKargoETSNGAddId(kargoETSNG_add_id: integer);
var Q: TADOQuery;
begin
  Q := TADOQuery.Create(nil);
  Q.Connection := fmMain.Lis;
  Q.SQL.Add('SELECT * FROM view_kargoETSNG  WHERE inf_obj_id = ' + IntToStr(kargoETSNG_add_id));
  Q.Open;
  if Q.FieldByName('inf_obj_id').IsNull then begin
    FkargoETSNG_add_id  := -9;
    cxButtonEdit14.Text := '';
    cxButtonEdit2.Text  := '';
  end else begin
    FkargoETSNG_add_id       := Q.FieldByName('inf_obj_id').AsInteger;
    cxButtonEdit14.EditValue := Q.FieldByName('inf_obj_name').AsString;
    cxButtonEdit2.EditValue  := Q.FieldByName('inf_obj_cod').AsString;
  end;
  Q.Free;
end;

procedure TfmShapeRateAdd2.SetKargoGNGId(kargoGNG_id: integer);
var Q: TADOQuery;
begin
  Q := TADOQuery.Create(nil);
  Q.Connection := fmMain.Lis;
  Q.SQL.Add('SELECT * FROM inf_obj_GNG WHERE inf_obj_id = ' + IntToStr(kargoGNG_id));
  Q.Open;
  if Q.FieldByName('inf_obj_id').IsNull then begin
    cxCheckBox4.Checked := False;
    FkargoGNG_id        := -9;
    cxButtonEdit12.Text := '';
    cxButtonEdit13.Text := '';
  end else begin
    cxCheckBox4.Checked := True;
    FkargoGNG_id             := Q.FieldByName('inf_obj_id').AsInteger;
    cxButtonEdit12.EditValue := Q.FieldByName('inf_obj_name').AsString;
    cxButtonEdit13.EditValue := Q.FieldByName('inf_obj_cod').AsString;
  end;
  Q.Free;
end;

procedure TfmShapeRateAdd2.SetDatePeriod(date_period: TDateTime);
begin
  if Fdate_period <> date_period then begin
    Fdate_period  := date_period;

    Query_Agent.Close;
    Query_Agent.Parameters.ParamByName('date_current' ).Value := Fdate_period;
    // Тип Договора = Типу Услуги
    // Доход = Клиент, Расход = Плдрядчик или Администрация
    Query_Agent.Parameters.ParamByName('type_contract').Value := Fservice_type;
    Query_Agent.Open;


    if cxCheckBox8.Checked then
      GetAvgExchange;
  end;
end;

procedure TfmShapeRateAdd2.SetDateFinance(date_finance: TDateTime);
begin
  if date_finance <> null then begin
    cxComboBox5.ItemIndex := StrToInt(FormatDateTime('m', date_finance))-1;
    cxComboBox6.ItemIndex := cxComboBox4.Properties.Items.IndexOf(FormatDateTime('yyyy', date_finance));
  end else begin
    cxComboBox5.ItemIndex := -1;
    cxComboBox6.ItemIndex := -1;
  end;
end;

function TfmShapeRateAdd2.GetDateService(): TDateTime;
begin
  if (cxComboBox3.ItemIndex = -1) or (cxComboBox4.ItemIndex = -1) then
    Result := null
  else
    Result := EncodeDate(StrToInt(cxComboBox4.Text), cxComboBox3.ItemIndex+1, 15);
end;


end.


