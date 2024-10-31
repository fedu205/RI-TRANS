unit ContractCloseAdd;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ADODB, cxGraphics, cxLookAndFeels,
  cxLookAndFeelPainters, Vcl.Menus, cxControls, cxContainer, cxEdit, cxTextEdit,
  cxCurrencyEdit, Vcl.StdCtrls, cxMaskEdit, cxDropDownEdit, cxMemo, cxButtons,
  Vcl.ExtCtrls, DateUtils, dxBar, cxClasses, cxPropertiesStore, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkroom, dxSkinDarkSide,
  dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin,
  dxSkinMetropolis, dxSkinMetropolisDark, dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinOffice2016Colorful, dxSkinOffice2016Dark, dxSkinPumpkin, dxSkinSeven,
  dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus, dxSkinSilver, dxSkinSpringtime, dxSkinStardust, dxSkinSummer2008, dxSkinTheAsphaltWorld, dxSkinTheBezier, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark, dxSkinVisualStudio2013Light, dxSkinVS2010, dxSkinWhiteprint, dxSkinXmas2008Blue ;

type
  TfmContractCloseAdd = class(TForm)
    Panel2: TPanel;
    cxButton1: TcxButton;
    cxButton2: TcxButton;
    Panel1: TPanel;
    Panel3: TPanel;
    GroupBox1: TGroupBox;
    cxMemo1: TcxMemo;
    cxComboBox2: TcxComboBox;
    cxComboBox1: TcxComboBox;
    cxComboBox3: TcxComboBox;
    Label10: TLabel;
    cxCurrencyEdit1: TcxCurrencyEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    cxTextEdit2: TcxTextEdit;
    cxTextEdit1: TcxTextEdit;
    Label4: TLabel;
    cxPropertiesStore1: TcxPropertiesStore;
    dxBarManager1: TdxBarManager;
    dxBarManager1Bar1: TdxBar;
    dxBarButton9: TdxBarButton;
    dxBarButton4: TdxBarButton;
    dxBarSubItem1: TdxBarSubItem;
    dxBarButton5: TdxBarButton;
    dxBarButton6: TdxBarButton;
    dxBarButton7: TdxBarButton;
    dxBarButton8: TdxBarButton;
    cxTextEdit3: TcxTextEdit;
    procedure SetInsert(value: boolean);
    procedure SetUpdate(contract_period_close_id : integer);
    procedure cxButton1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    Ftype_action              : byte;
    Fcontract_period_close_id,
    Fcontract_id              : integer;
    Ffirm_customer_name,
    Fcontract_cod,
    Fbrief_name               : string;
  public
    constructor Create(AOwner: TApplication; type_action, contract_id: integer; firm_customer_name, contract_cod, brief_name: string);
    // Форма сама определяет необходимость открытия новой записи или изменения существующей
    constructor CreatePeriodEdit(AOwner: TApplication; contract_id: integer; date_period: TDate; type_close: integer; act_sum: Currency);
  published
    property _SetInsert                 : boolean write SetInsert;
    property _SetUpdate                 : integer write SetUpdate;
    property _GetContractPeriodCloseId  : integer read  Fcontract_period_close_id;
  end;

var
  fmContractCloseAdd: TfmContractCloseAdd;

implementation

 uses Main, Contract, Raznoe;

{$R *.dfm}


constructor TfmContractCloseAdd.CreatePeriodEdit(AOwner: TApplication; contract_id: integer; date_period: TDate; type_close: integer; act_sum: Currency);
var i : integer;
    Q : TADOQuery;
begin
  inherited Create(AOwner);
  Screen.Cursor := crHourglass;

  Q := TADOQuery.Create(nil);
  Q.Connection := fmMain.Lis;
  Q.SQL.Add('SELECT * FROM view_contract WHERE contract_id = ' + IntToStr(contract_id));
  Q.Open;

  Fcontract_id              := contract_id;
  Ffirm_customer_name       := Q.FieldByName('firm_customer_name').AsString;
  Fcontract_cod             := Q.FieldByName('contract_cod').AsString;
  Fbrief_name               := Q.FieldByName('brief_name').AsString;

  if Q.FieldByName('type_contract').AsInteger = 0 then
    Label1.caption := 'Клиент..................................................'
  else
    Label1.caption := 'Подрядчик...............................................';

  Q.Close;

  Ftype_action              := 3; // пока добавление
  Fcontract_period_close_id := -9;

  cxTextEdit1.EditValue := Ffirm_customer_name;
  cxTextEdit2.EditValue := Fcontract_cod;
  cxTextEdit3.EditValue := Fbrief_name;

  cxTextEdit1.Properties.ReadOnly := True;
  cxTextEdit2.Properties.ReadOnly := True;
  cxTextEdit3.Properties.ReadOnly := True;

  cxComboBox2.Properties.Items.Clear;

  for i := YearOf(now) + 1 downto YearOf(now) - 18 do
    cxComboBox2.Properties.Items.Add(IntToStr(i));

  cxComboBox3.ItemIndex := type_close - 1;
  cxComboBox1.ItemIndex := MonthOf(date_period) - 1;
  cxComboBox2.EditText  := IntToStr(YearOf(date_period));

  cxCurrencyEdit1.EditValue := act_sum;
  cxMemo1.EditValue := null;

  // Пробуем найти запись с таким периодом
  Q := TADOQuery.Create(nil);
  Q.Connection := fmMain.Lis;
  Q.SQL.Add('SELECT * FROM view_contract_period_close');
  Q.SQL.Add('WHERE contract_id = ' + IntToStr(Fcontract_id));
  Q.SQL.Add('AND type_close = ' + IntToStr(type_close));
  Q.SQL.Add('AND convert(varchar(6), date_period, 112) = ''' + FormatDateTime('yyyymm', date_period) + '''');
  Q.Open;

  if not Q.Eof then
    _SetUpdate := Q.FieldByName('contract_period_close_id').AsInteger;

  Q.Free;

  Screen.Cursor := crDefault;
end;

constructor TfmContractCloseAdd.Create(AOwner: TApplication; type_action, contract_id: integer; firm_customer_name, contract_cod, brief_name: string);
var i : integer;
begin
  inherited Create(AOwner);
  Screen.Cursor := crHourglass;

  Ftype_action              := type_action;
  Fcontract_period_close_id := -9;
  Fcontract_id              := -9;
  Fcontract_id              := contract_id;
  Ffirm_customer_name       := firm_customer_name;
  Fcontract_cod             := contract_cod;
  Fbrief_name               := brief_name;

  cxTextEdit1.EditValue := Ffirm_customer_name;
  cxTextEdit2.EditValue := Fcontract_cod;
  cxTextEdit3.EditValue := Fbrief_name;

  cxTextEdit1.Properties.ReadOnly := True;
  cxTextEdit2.Properties.ReadOnly := True;
  cxTextEdit3.Properties.ReadOnly := True;

  cxComboBox2.Properties.Items.Clear;

  if fmContract.cxPageControl1.ActivePageIndex = 0 then
    Label1.caption := 'Клиент..................................................'
  else
    Label1.caption := 'Подрядчик...............................................';

  for i := YearOf(now) + 1 downto YearOf(now) - 18 do
    cxComboBox2.Properties.Items.Add(IntToStr(i));

  Screen.Cursor := crDefault;
end;

procedure TfmContractCloseAdd.SetInsert(value: boolean);
begin
  Screen.Cursor := crHourglass;

  cxComboBox1.ItemIndex := MonthOf(now) - 1;
  cxComboBox2.ItemIndex := 1;
  cxComboBox3.ItemIndex := 0;

  cxCurrencyEdit1.EditValue := null;

  Screen.Cursor := crDefault;
end;

procedure TfmContractCloseAdd.SetUpdate(contract_period_close_id: integer);
var Q : TADOQuery;
begin
  Screen.Cursor := crHourglass;
  Fcontract_period_close_id := contract_period_close_id;
  Ftype_action := 4;

  Q := TADOQuery.Create(nil);
  Q.Connection := fmMain.Lis;
  Q.SQL.Add('SELECT * FROM view_contract_period_close WHERE contract_period_close_id = ' + IntToStr(Fcontract_period_close_id));
  Q.Open;

  cxComboBox3.ItemIndex := iif(Q.FieldByName('type_close').Value  <> null, Q.FieldByName('type_close').AsInteger - 1, -1);
  cxComboBox1.ItemIndex := iif(Q.FieldByName('date_period').Value <> null, MonthOf(Q.FieldByName('date_period').AsDateTime) - 1, -1);
  cxComboBox2.EditText  := iif(Q.FieldByName('date_period').Value <> null, IntToStr(YearOf(Q.FieldByName('date_period').AsDateTime)), '');

  cxCurrencyEdit1.EditValue := Q.FieldByName('act_sum').Value;
  cxMemo1.EditValue := Q.FieldByName('note').Value;

  Q.Free;
  Screen.Cursor := crDefault;
end;

procedure TfmContractCloseAdd.cxButton1Click(Sender: TObject);
var SP_contract_period_modify : TADOStoredProc;
                    str_error : string;
begin
  str_error := '';
  if Fcontract_id = -9 then str_error := 'Не указан ID договора!';
  if (cxComboBox1.ItemIndex = -1) then str_error := 'Не указан месяц движения средств!';
  if (cxComboBox2.ItemIndex = -1) then str_error := 'Не указан год движения средств!';
  if (cxComboBox3.ItemIndex = -1) then str_error := 'Не указан тип движения средств!';

  if (str_error <> '') then begin
    Application.MessageBox(PChar(str_error), 'Ошибка', MB_OK OR MB_ICONEXCLAMATION);
    ModalResult := mrNone;
    Exit;
  end;

  SP_contract_period_modify := TADOStoredProc.Create(nil);
  SP_contract_period_modify.Connection := fmmain.Lis;
  SP_contract_period_modify.ProcedureName := 'sp_contract_period_modify';
  SP_contract_period_modify.Parameters.Refresh;
  SP_contract_period_modify.Parameters.ParamByName('@contract_period_close_id').Value := iif(Fcontract_period_close_id <> -9, Fcontract_period_close_id, null);
  SP_contract_period_modify.Parameters.ParamByName('@contract_id'             ).Value := Fcontract_id;
  SP_contract_period_modify.Parameters.ParamByName('@type_action'             ).Value := Ftype_action;
  SP_contract_period_modify.Parameters.ParamByName('@type_close'              ).Value := cxComboBox3.ItemIndex + 1;
  SP_contract_period_modify.Parameters.ParamByName('@date_period'             ).Value := StrToDate('15' + FormatSettings.DateSeparator + IntToStr(cxComboBox1.ItemIndex + 1) + FormatSettings.DateSeparator + cxComboBox2.Text);
  SP_contract_period_modify.Parameters.ParamByName('@act_sum'                 ).Value := cxCurrencyEdit1.EditValue;
  SP_contract_period_modify.Parameters.ParamByName('@note'                    ).Value := iif(cxMemo1.Lines.Text <> '', cxMemo1.Lines.Text, null);

  SP_contract_period_modify.ExecProc;

  Fcontract_period_close_id := SP_contract_period_modify.Parameters.ParamByName('@contract_period_close_id').Value;

  SP_contract_period_modify.Free;

  ModalResult := mrOk;
end;

procedure TfmContractCloseAdd.FormClose(Sender: TObject;var Action: TCloseAction);
begin
  Action := caFree;
end;

end.
