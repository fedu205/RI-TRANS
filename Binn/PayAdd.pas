unit PayAdd;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ComCtrls, StdCtrls, ExtCtrls, Db, ADODB, Variants, Menus,
  cxControls, cxContainer, cxEdit, cxTextEdit, cxPropertiesStore, cxGraphics, cxButtonEdit, cxDBEdit, cxMaskEdit,
  cxDropDownEdit, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, cxCalendar, cxCurrencyEdit, cxMemo, cxCheckBox,
  cxLookAndFeelPainters, cxGroupBox, cxLookAndFeels, dxSkinsCore, dxSkinsDefaultPainters, dxCore, cxDateUtils, cxClasses, dxSkinBlack,
  dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMetropolis,
  dxSkinMetropolisDark, dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray,
  dxSkinOffice2013White, dxSkinOffice2016Colorful, dxSkinOffice2016Dark, dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus,
  dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008, dxSkinTheAsphaltWorld, dxSkinValentine, dxSkinVisualStudio2013Blue,
  dxSkinVisualStudio2013Dark, dxSkinVisualStudio2013Light, dxSkinVS2010, dxSkinWhiteprint, dxSkinXmas2008Blue, dxSkinTheBezier, cxButtons,
  dxSkinOffice2019Colorful, dxSkinBasic, dxSkinOffice2019Black,
  dxSkinOffice2019DarkGray, dxSkinOffice2019White, dxSkinWXI, dxCoreGraphics;

type
  TfmPayAdd = class(TForm)
    Panel2: TPanel;
    Label1: TLabel;
    Panel3: TPanel;
    Query_Currency: TADOQuery;
    DS_Currency: TDataSource;
    Panel4: TPanel;
    Label2: TLabel;
    cxTextEdit4: TcxTextEdit;
    Label7: TLabel;
    cxPropertiesStore1: TcxPropertiesStore;
    cxDBButtonEdit1: TcxDBButtonEdit;
    cxLookupComboBox2: TcxLookupComboBox;
    Panel1: TPanel;
    GroupBox1: TGroupBox;
    cxLookupComboBox3: TcxLookupComboBox;
    Label6: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Query_Type_Nds: TADOQuery;
    DS_Type_Nds: TDataSource;
    cxCurrencyEdit1: TcxCurrencyEdit;
    cxCurrencyEdit2: TcxCurrencyEdit;
    Memo2: TcxMemo;
    cxGroupBox6: TcxGroupBox;
    Label4: TLabel;
    Label10: TLabel;
    Label19: TLabel;
    cxButtonEdit14: TcxButtonEdit;
    cxButtonEdit13: TcxButtonEdit;
    cxButtonEdit12: TcxButtonEdit;
    cxDateEdit1: TcxDateEdit;
    Label5: TLabel;
    CheckBox2: TcxCheckBox;
    CheckBox1: TcxCheckBox;
    cxDateEdit2: TcxDateEdit;
    cxCheckBox1: TcxCheckBox;
    Panel5: TPanel;
    Label14: TLabel;
    Label18: TLabel;
    cxTextEdit7: TcxTextEdit;
    cxTextEdit11: TcxTextEdit;
    cxDBTextEdit1: TcxDBTextEdit;
    Panel6: TPanel;
    Label3: TLabel;
    cxTextEdit5: TcxTextEdit;
    cxTextEdit1: TcxTextEdit;
    Label11: TLabel;
    cxTextEdit2: TcxTextEdit;
    cxTextEdit3: TcxTextEdit;
    Query_Contract: TADOQuery;
    DS_Contract: TDataSource;
    Label12: TLabel;
    cxButtonEdit1: TcxButtonEdit;
    cxButton1: TcxButton;
    cxButton3: TcxButton;
    procedure cxButtonEdit9PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure cxLookupComboBox2PropertiesEditValueChanged(Sender: TObject);
    procedure cxLookupComboBox3PropertiesEditValueChanged(Sender: TObject);
    procedure cxDateEdit1PropertiesEditValueChanged(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cxDBButtonEdit1PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure cxCheckBox1PropertiesEditValueChanged(Sender: TObject);
    procedure cxButtonEdit14PropertiesValidate(Sender: TObject; var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
    procedure FormCreate(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure cxCurrencyEdit1PropertiesEditValueChanged(Sender: TObject);
  private
    Fpay_id : integer;
    Faction : boolean;
    Ftype_pay : byte;
    Ftype_action : Integer;
    Fcontract_id: integer;
    procedure SetUpdate(pay_id : integer);
    procedure Set_Nds_Sum();
  public
    Fpay_inv_id     : integer;
	  Finv_id         : integer;
    Fpay_inv_action : integer;
    Ftype_form      :boolean;

    constructor Create(AOwner: TApplication; type_pay:byte; action: boolean; type_form :boolean);
    property _GetPayId : integer read Fpay_id;
    property _SetUpdate : integer write SetUpdate;
    procedure _SetInsert;
  end;

var
  fmPayAdd: TfmPayAdd;

implementation
      uses Main, Raznoe, Contract, ClientInvoice, Period;
{$R *.DFM}

constructor TfmPayAdd.Create(AOwner: TApplication; type_pay:byte; action: boolean; type_form :boolean);
begin
  Screen.Cursor := crHourglass;
  inherited Create(AOwner);
  Faction    := action;
  Ftype_action := 0;
  Ftype_pay  := type_pay;
  Ftype_form := type_form;

  Query_Currency.Open;
  Query_Type_Nds.Open;
  Query_Type_Nds.Locate('inf_obj_cod', '20', []);

  Query_Contract.Close;
  Query_Contract.Parameters.ParamByName('type_contract').Value := 0;
  case Ftype_pay of
    3 : begin
        Caption := 'Платежи администрации';
        Query_Contract.Parameters.ParamByName('type_contract').Value := 2;
        end;
    2 : begin
        Caption := 'Накладные расходы клиентов';
        end;
    1 : Query_Contract.Parameters.ParamByName('type_contract').Value := 1;
  end;

  if Ftype_form then begin
    cxTextEdit4.Properties.ReadOnly := True;
    cxTextEdit4.Style.Color := clBtnFace;
    cxDateEdit1.Properties.ReadOnly := True;
    cxDateEdit1.Style.Color := clBtnFace;
    cxLookupComboBox2.Properties.ReadOnly := True;
    cxLookupComboBox2.Style.Color := clBtnFace;
    cxCurrencyEdit1.Properties.ReadOnly := True;
    cxCurrencyEdit1.Style.Color := clBtnFace;
    cxLookupComboBox3.Properties.ReadOnly := True;
    cxLookupComboBox3.Style.Color := clBtnFace;
    cxButtonEdit14.Properties.ReadOnly := True;
    cxButtonEdit14.Style.Color := clBtnFace;
    cxButtonEdit13.Properties.ReadOnly := True;
    cxButtonEdit13.Style.Color := clBtnFace;
    cxButtonEdit12.Properties.ReadOnly := True;
    cxButtonEdit12.Style.Color := clBtnFace;
    cxButtonEdit1.Properties.ReadOnly := True;
    cxButtonEdit1.Style.Color := clBtnFace;
    CheckBox2.Properties.ReadOnly := True;
    CheckBox2.Style.Color := clBtnFace;
    CheckBox1.Properties.ReadOnly := True;
    CheckBox1.Style.Color := clBtnFace;
    cxCheckBox1.Properties.ReadOnly := True;
    cxCheckBox1.Style.Color := clBtnFace;
  end;

  Screen.Cursor := crDefault;
end;

procedure TfmPayAdd._SetInsert;
begin
  Screen.Cursor := crHourglass;

  cxDateEdit1.Date := Date();

  Query_Contract.Close;
  Query_Contract.Parameters.ParamByName('date_current').Value := Date();
  Query_Contract.Open;
  cxTextEdit2.Text := Query_Contract.FieldByName('contract_cod').AsString;
  cxLookupComboBox2.EditValue := Query_Currency['currency_id'];
  cxLookupComboBox3.EditValue := Query_Type_Nds['inf_obj_id'];

  //заполним курсы
  cxButtonEdit14.EditValue := CurrToStr(GetExchangeNew(1, Date(), fmMain.Lis, True));
  cxButtonEdit12.EditValue := CurrToStr(GetExchangeNew(5, Date(), fmMain.Lis, True));
  cxButtonEdit13.EditValue := CurrToStr(GetExchangeNew(6, Date(), fmMain.Lis, True));
  cxButtonEdit1.EditValue  := CurrToStr(GetExchangeNew(13, Date(), fmMain.Lis, True));

  MonitorEventFormOpen('NEW_FORM', self.Name, fmMain.Lis, -9);

  Screen.Cursor := crDefault;
end;

procedure TfmPayAdd.SetUpdate(pay_id : integer);
var Q : TADOQuery;
begin
  Screen.Cursor := crHourglass;
  Ftype_action := 1;
  Fpay_id := pay_id;
  Caption := Caption + ' (' + IntToStr(Fpay_id) + ')';

  try
    Q := TADOQuery.Create(nil);
    Q.Connection := fmMain.Lis;
    Q.SQL.Add('SELECT * FROM view_pay WHERE pay_id='+IntToStr(pay_id));
    Q.Open;

    cxDateEdit1.Date := Q.FieldByName('pay_date').AsDatetime;

    if not Q.FieldByName('first_pay').AsBoolean then begin
      Query_Contract.Close;
      Query_Contract.Parameters.ParamByName('date_current').Value := Q.FieldByName('pay_date').AsDatetime;
      Query_Contract.Open;

      if not Query_Contract.Locate('contract_id', Q.FieldByName('contract_id').AsInteger, []) then begin
        Application.MessageBox('Договор прекратил своё действие!', 'Внимание', MB_OK);
        cxButton1.Enabled := False;
      end;
    end
    else begin
      Query_Contract.Close;
      Query_Contract.Parameters.ParamByName('date_current').Value := varEmpty;
      Query_Contract.Open;
      Query_Contract.Locate('contract_id', Q.FieldByName('contract_id').AsInteger, [])
    end;

    Fcontract_id := Q['contract_id'];
    cxTextEdit2.Text := Q.FieldByName('contract_cod').AsString;
    cxTextEdit3.Text := Q.FieldByName('firm_self_name').AsString;
    cxTextEdit4.Text := Q.FieldByName('pay_cod').AsString;
    cxTextEdit1.Text := Q.FieldByName('incomming_cod').AsString;
    cxLookupComboBox2.EditValue := Q['currency_id'];
    cxLookupComboBox3.EditValue := Q['type_nds_id'];

    cxCurrencyEdit1.Properties.OnEditValueChanged := nil;
    cxLookupComboBox3.Properties.OnEditValueChanged := nil;
    cxCurrencyEdit1.EditValue := Q.FieldByName('pay_sum').Value;
    cxCurrencyEdit2.EditValue := Q.FieldByName('nds_sum').Value;
    cxCurrencyEdit1.Properties.OnEditValueChanged := cxCurrencyEdit1PropertiesEditValueChanged;
    cxLookupComboBox3.Properties.OnEditValueChanged := cxLookupComboBox3PropertiesEditValueChanged;

    CheckBox1.Checked  := Q.FieldByName('first_pay').AsBoolean;
    CheckBox2.Checked  := Q.FieldByName('set_return').AsBoolean;
    cxTextEdit5.Text   := Q.FieldByName('pay_note').AsString;
    Memo2.EditValue    := Q.FieldByName('pay_comment').Value;

    cxCheckBox1.Checked := Q.FieldByName('set_plan').AsBoolean;
    cxCheckBox1PropertiesEditValueChanged(cxCheckBox1);
    cxDateEdit2.EditValue := Q.FieldByName('pay_date_plan').Value;

    cxButtonEdit14.EditValue := Q.FieldByName('exchange_USD_val').AsString;
    cxButtonEdit13.EditValue := Q.FieldByName('exchange_EUR_val').AsString;
    cxButtonEdit12.EditValue := Q.FieldByName('exchange_CHF_val').AsString;
    cxButtonEdit1.EditValue := Q.FieldByName('exchange_CNY_val').AsString;
    cxTextEdit7.Text := FormatFloat('# ##0.00', Q.FieldByName('pay_rest').AsCurrency);

    Q.Close;
    Q.SQL.Clear;
    Q.SQL.Add('SELECT sum(pay_inv_sum) AS sum_pay_inv FROM pay_invoice WHERE pay_id='+IntToStr(pay_id));
    Q.Open;

    cxTextEdit11.Text := FormatFloat('# ##0.00', Q.FieldByName('sum_pay_inv').AsCurrency);
    cxDBTextEdit1.Text := cxLookupComboBox2.Text;
  finally
    Q.Free;
  end;

  MonitorEventFormOpen('UPDATE_FORM', self.Name, fmMain.Lis, Fpay_id);
  Screen.Cursor := crDefault;
end;

procedure TfmPayAdd.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TfmPayAdd.FormCreate(Sender: TObject);
begin
  Fcontract_id := -1;
end;

procedure TfmPayAdd.cxDBButtonEdit1PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  fmContract := TfmContract.Create(Application, True, 0);
  fmContract.cxTabSheet2.Visible := False;
  fmContract.Visible := False;
  fmContract.Query_Contract.Locate('contract_id', Fcontract_id, [loCaseInsensitive]);
  if fmContract.ShowModal=mrOk then begin
    Query_Contract.Close;
    Query_Contract.Open;
    Fcontract_id := fmContract.Query_Contract.FieldByName('contract_id').AsInteger;
    cxTextEdit2.Text := fmContract.Query_Contract.FieldByName('contract_cod').AsString;
    cxTextEdit3.Text := fmContract.Query_Contract.FieldByName('firm_self_name').AsString;
    Query_Contract.Locate('contract_id', Fcontract_id, [loCaseInsensitive]);
    cxButton1.Enabled := True;
  end;
end;

procedure TfmPayAdd.cxLookupComboBox2PropertiesEditValueChanged(Sender: TObject);
begin
  if cxLookupComboBox2.EditValue = 1 then begin
    Label4.Font.Style :=  [fsBold];
    Label10.Font.Style := [];
    Label19.Font.Style := [];
  end;

  if cxLookupComboBox2.EditValue = 3 then begin
    Label4.Font.Style :=  [];
    Label10.Font.Style := [];
    Label19.Font.Style := [];
  end;

  if cxLookupComboBox2.EditValue = 5 then begin
    Label4.Font.Style :=  [];
    Label10.Font.Style := [];
    Label19.Font.Style := [fsBold];
  end;

  if cxLookupComboBox2.EditValue = 6 then begin
    Label4.Font.Style :=  [];
    Label10.Font.Style := [fsBold];
    Label19.Font.Style := [];
  end;
end;

procedure TfmPayAdd.cxLookupComboBox3PropertiesEditValueChanged(Sender: TObject);
begin
  Set_Nds_Sum;
end;

procedure TfmPayAdd.cxCheckBox1PropertiesEditValueChanged(Sender: TObject);
begin
    if cxCheckBox1.Checked then begin
      cxDateEdit2.Properties.ReadOnly := False;
      cxDateEdit2.Style.Color := clWindow;
      cxDateEdit2.EditValue := Now + 2;
    end else begin
      cxDateEdit2.Properties.ReadOnly := True;
      cxDateEdit2.Style.Color := clBtnFace;
      cxDateEdit2.EditValue := null;
    end;
end;

procedure TfmPayAdd.cxCurrencyEdit1PropertiesEditValueChanged(Sender: TObject);
begin
  Set_Nds_Sum;
end;

procedure TfmPayAdd.cxDateEdit1PropertiesEditValueChanged(Sender: TObject);
begin

  if Fcontract_id <> -1 then begin
    Screen.Cursor := crHourglass;

    Query_Contract.Close;
    Query_Contract.Parameters.ParamByName('date_current').Value := cxDateEdit1.Date;
    Query_Contract.Open;

    if Query_Contract.Locate('contract_id', Fcontract_id, []) then begin
      Fcontract_id := Query_Contract.FieldByName('contract_id').AsInteger;
      cxTextEdit2.Text := Query_Contract.FieldByName('contract_cod').AsString;
      cxTextEdit3.Text := Query_Contract.FieldByName('firm_self_name').AsString;
    end
    else
      Application.MessageBox('Договор не действует в этот момент времени!', 'Внимание', MB_OK);
    Screen.Cursor := crDefault;
  end;

  //пересчет курсов
  cxButtonEdit14.EditValue := CurrToStr(GetExchangeNew(1, cxDateEdit1.Date, fmMain.Lis, True));
  cxButtonEdit12.EditValue := CurrToStr(GetExchangeNew(5, cxDateEdit1.Date, fmMain.Lis, True));
  cxButtonEdit13.EditValue := CurrToStr(GetExchangeNew(6, cxDateEdit1.Date, fmMain.Lis, True));
  cxButtonEdit1.EditValue := CurrToStr(GetExchangeNew(13, cxDateEdit1.Date, fmMain.Lis, True));

end;

procedure TfmPayAdd.Set_Nds_Sum;
begin
  if  Query_Type_Nds.Locate('inf_obj_id', cxLookupComboBox3.EditValue , []) Then
    if NOT VarIsNull(Query_Type_Nds.FieldByName('inf_obj_cod').Value) then
      cxCurrencyEdit2.EditValue := RoundCurr(cxCurrencyEdit1.Value * Query_Type_Nds.FieldByName('inf_obj_cod').AsInteger/(100 + Query_Type_Nds.FieldByName('inf_obj_cod').AsInteger), -2)
    else cxCurrencyEdit2.EditValue := NULL;
end;

procedure TfmPayAdd.cxButton1Click(Sender: TObject);
var SP_pay_invoice_modify : TADOStoredProc;
    SP_PayModify          : TADOStoredProc;
begin
  Screen.Cursor := crHourglass;

  SP_PayModify := TADOStoredProc.Create(nil);
  SP_PayModify.Connection := fmMain.Lis;
  SP_PayModify.ProcedureName := 'sp_pay_modify';
  SP_PayModify.Parameters.Refresh;
  SP_PayModify.Parameters.ParamByName('@type_action'  ).Value := Ftype_action;
  SP_PayModify.Parameters.ParamByName('@pay_id'       ).Value := Fpay_id;
  SP_PayModify.Parameters.ParamByName('@pay_cod'      ).Value := cxTextEdit4.Text;
  SP_PayModify.Parameters.ParamByName('@incomming_cod').Value := cxTextEdit1.Text;
  SP_PayModify.Parameters.ParamByName('@contract_id'  ).Value := Fcontract_id;
  SP_PayModify.Parameters.ParamByName('@pay_date'     ).Value := cxDateEdit1.Date;
  SP_PayModify.Parameters.ParamByName('@pay_sum'      ).Value := cxCurrencyEdit1.EditValue;
  SP_PayModify.Parameters.ParamByName('@nds_sum'      ).Value := cxCurrencyEdit2.EditValue;
  SP_PayModify.Parameters.ParamByName('@currency_id'  ).Value := cxLookupComboBox2.EditValue;
  SP_PayModify.Parameters.ParamByName('@type_nds_id'  ).Value := cxLookupComboBox3.EditValue;
  SP_PayModify.Parameters.ParamByName('@first_pay'    ).Value := CheckBox1.Checked;
  SP_PayModify.Parameters.ParamByName('@set_return'   ).Value := CheckBox2.Checked;
  SP_PayModify.Parameters.ParamByName('@pay_note'     ).Value := cxTextEdit5.Text;
  SP_PayModify.Parameters.ParamByName('@pay_comment'  ).Value := Memo2.EditValue;
  SP_PayModify.Parameters.ParamByName('@type_pay'     ).Value := Ftype_pay;
  SP_PayModify.Parameters.ParamByName('@set_plan'     ).Value := cxCheckBox1.Checked;
  SP_PayModify.Parameters.ParamByName('@pay_date_plan').Value := cxDateEdit2.EditValue;

  SP_PayModify.Parameters.ParamByName('@exchange_USD_val').Value := StrToFloatDef(cxButtonEdit14.EditValue, 0.00);
  SP_PayModify.Parameters.ParamByName('@exchange_EUR_val').Value := StrToFloatDef(cxButtonEdit13.EditValue, 0.00);
  SP_PayModify.Parameters.ParamByName('@exchange_CHF_val').Value := StrToFloatDef(cxButtonEdit12.EditValue, 0.00);
  SP_PayModify.Parameters.ParamByName('@exchange_CNY_val').Value := StrToFloatDef(cxButtonEdit1.EditValue, 0.00);

  try
    SP_PayModify.ExecProc;
    Fpay_id := SP_PayModify.Parameters.ParamByName('@pay_id').Value;
  except
  end;

  if Fpay_id = -9 then begin
    Application.MessageBox('Невозможно добавить/редактировать платёж!', 'Ошибка', MB_OK);
    ModalResult := mrNone;
  end;
  Screen.Cursor := crDefault;
end;

procedure TfmPayAdd.cxButtonEdit14PropertiesValidate(Sender: TObject; var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
var test : Extended;
begin
  Error := not TryStrToFloat(DisplayValue, test);
  if Error then
    ErrorText := 'Необходимо ввести число';
end;

procedure TfmPayAdd.cxButtonEdit9PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  fmPeriod := TfmPeriod.Create(Application, cxDateEdit1.EditValue, cxDateEdit1.EditValue, 5);
  if fmPeriod.ShowModal = mrOK then begin
    case TComponent(Sender).Tag of
       1 : cxButtonEdit14.EditValue := CurrToStr(GetExchangeNew(1, fmPeriod._GetDateBegin, fmMain.Lis, True));
       5 : cxButtonEdit12.EditValue := CurrToStr(GetExchangeNew(5, fmPeriod._GetDateBegin, fmMain.Lis, True));
       6 : cxButtonEdit13.EditValue := CurrToStr(GetExchangeNew(6, fmPeriod._GetDateBegin, fmMain.Lis, True));
      13 : cxButtonEdit1.EditValue  := CurrToStr(GetExchangeNew(13, fmPeriod._GetDateBegin, fmMain.Lis, True));
    end;
  end;
end;

end.







