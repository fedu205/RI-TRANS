unit PayInvoiceAdd;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, ComCtrls, DB, ADODB, Menus,
  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit, cxDBEdit, cxMaskEdit, cxButtonEdit, cxGroupBox,
  cxTextEdit, cxMemo, cxCurrencyEdit, cxDropDownEdit, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, cxCalendar, dxCore, cxDateUtils,
  dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkroom, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
  dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMetropolis, dxSkinMetropolisDark, dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013DarkGray,
  dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinOffice2016Colorful, dxSkinOffice2016Dark, dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic,
  dxSkinSharp, dxSkinSharpPlus, dxSkinSilver, dxSkinSpringtime, dxSkinStardust, dxSkinSummer2008, dxSkinTheAsphaltWorld, dxSkinTheBezier,
  dxSkinsDefaultPainters, dxSkinValentine, dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark, dxSkinVisualStudio2013Light, dxSkinVS2010,
  dxSkinWhiteprint, dxSkinXmas2008Blue, dxSkinOffice2019Colorful, cxButtons;

type
  TfmPayInvoiceAdd = class(TForm)
    GroupBox11: TGroupBox;
    GroupBox51: TGroupBox;
    Memo1: TcxMemo;
    cxGroupBox31: TcxGroupBox;
    Label4: TLabel;
    Label10: TLabel;
    Label19: TLabel;
    cxButtonEdit14: TcxButtonEdit;
    cxButtonEdit13: TcxButtonEdit;
    cxButtonEdit12: TcxButtonEdit;
    cxButtonEdit1: TcxButtonEdit;
    cxTextEdit1: TcxTextEdit;
    cxCurrencyEdit1: TcxCurrencyEdit;
    cxCurrencyEdit2: TcxCurrencyEdit;
    cxCurrencyEdit4: TcxCurrencyEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    cxTextEdit3: TcxTextEdit;
    GroupBox21: TGroupBox;
    Label5: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    cxButtonEdit2: TcxButtonEdit;
    cxTextEdit2: TcxTextEdit;
    cxCurrencyEdit3: TcxCurrencyEdit;
    cxCurrencyEdit5: TcxCurrencyEdit;
    cxCurrencyEdit6: TcxCurrencyEdit;
    cxTextEdit4: TcxTextEdit;
    Panel1: TPanel;
    GroupBox41: TGroupBox;
    Label12: TLabel;
    Label11: TLabel;
    Label14: TLabel;
    cxDateEdit3: TcxDateEdit;
    cxLookupComboBox4: TcxLookupComboBox;
    Query_Currency: TADOQuery;
    DS_Currency: TDataSource;
    Label15: TLabel;
    Label16: TLabel;
    cxDateEdit1: TcxDateEdit;
    Label17: TLabel;
    cxCurrencyEdit7: TcxCurrencyEdit;
    Label18: TLabel;
    Label20: TLabel;
    cxDateEdit2: TcxDateEdit;
    Label21: TLabel;
    cxCurrencyEdit9: TcxCurrencyEdit;
    cxCurrencyEdit10: TcxCurrencyEdit;
    Label22: TLabel;
    Label23: TLabel;
    cxButton1: TcxButton;
    cxButton3: TcxButton;
    procedure cxButtonEdit2PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure cxLookupComboBox4PropertiesEditValueChanged(Sender: TObject);
    procedure cxButtonEdit12PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure cxDateEdit3PropertiesEditValueChanged(Sender: TObject);
    procedure cxCurrencyEdit7PropertiesEditValueChanged(Sender: TObject);
    procedure cxButtonEdit14PropertiesEditValueChanged(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
  private
    Finvoice_id : Integer;
    Ftype_invoice : Integer;
    Fpay_id : Integer;
    Fstr_currency_id : string;
    Fpay_inv_id : Integer;
    Ftype_action : Integer;
    Fpay_currency_id : Integer;
    Finvoice_currency_id : Integer;

    procedure SetUpdate(pay_invoice_id : integer);
    procedure SetInsert(invoice_id : integer);
    procedure RefreshSum();
  public
    constructor Create(AOwner: TApplication; type_invoice : Integer);
  published
    property _SetUpdate : integer write SetUpdate;
    property _SetInsert : integer write SetInsert;
    property _GetPayInvId : integer read Fpay_inv_id;

  end;

var
  fmPayInvoiceAdd: TfmPayInvoiceAdd;

implementation
     uses Main, Raznoe, Period, Pay;
{$R *.dfm}

constructor TfmPayInvoiceAdd.Create(AOwner: TApplication; type_invoice : Integer);
begin
  Screen.Cursor := crHourglass;

  inherited Create(AOwner);
  Ftype_invoice := type_invoice;
  Fpay_id := -9;
  Fpay_inv_id := -9;
  Fpay_currency_id := -9;
  Finvoice_currency_id := -9;
  Fstr_currency_id := '';
  Ftype_action := 0;

  MonitorEventFormOpen('OPEN_FORM', self.Name, fmMain.Lis, -9);

  Screen.Cursor := crDefault;
end;

procedure TfmPayInvoiceAdd.cxButton1Click(Sender: TObject);
var SP : TADOStoredProc;
begin
  if cxCurrencyEdit10.EditValue > cxCurrencyEdit4.EditValue then begin
    Application.MessageBox('Оплата счета > остатка счета.', 'Ошибка', MB_OK);
    ModalResult := mrNone;
    exit;
  end;

  if cxCurrencyEdit9.EditValue > cxCurrencyEdit6.EditValue then begin
    Application.MessageBox('Оплата с платежа > остатка платежа.', 'Ошибка', MB_OK);
    ModalResult := mrNone;
    exit;
  end;

  Screen.Cursor := crHourGlass;
  SP := TADOStoredProc.Create(nil);
  SP.Connection := fmMain.Lis;
  SP.ProcedureName := 'sp_pay_invoice_modify;1';
  SP.Parameters.Refresh;

  SP.Parameters.ParamByName('@pay_inv_id'  ).Value := Fpay_inv_id;
  SP.Parameters.ParamByName('@type_action' ).Value := Ftype_action;
  SP.Parameters.ParamByName('@pay_id'      ).Value := Fpay_id;
  SP.Parameters.ParamByName('@inv_id'      ).Value := Finvoice_id;
  SP.Parameters.ParamByName('@pay_inv_sum' ).Value := cxCurrencyEdit7.EditValue;
  SP.Parameters.ParamByName('@pay_inv_date').Value := cxDateEdit3.EditValue;

  SP.Parameters.ParamByName('@exchange_USD_val').Value := StrToFloat(cxButtonEdit14.EditValue);
  SP.Parameters.ParamByName('@exchange_EUR_val').Value := StrToFloat(cxButtonEdit13.EditValue);
  SP.Parameters.ParamByName('@exchange_CHF_val').Value := StrToFloat(cxButtonEdit12.EditValue);

  SP.Parameters.ParamByName('@inv_sum_income').Value := cxCurrencyEdit10.EditValue;
  SP.Parameters.ParamByName('@pay_sum_income').Value := cxCurrencyEdit9.EditValue;
  SP.Parameters.ParamByName('@pay_inv_currency_id').Value := cxLookupComboBox4.EditValue;

  try
    SP.ExecProc;
    Fpay_inv_id := SP.Parameters.ParamByName('@pay_inv_id').Value;
    SP.Free;
  except on E: Exception do begin
      Application.MessageBox(PChar(E.Message),'ВНИМАНИЕ!!!' , MB_OKCANCEL + MB_ICONERROR);
      SP.Free;
      ModalResult := mrNone;
    end;
  end;

  Screen.Cursor := crDefault;

end;

procedure TfmPayInvoiceAdd.cxButtonEdit12PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  fmPeriod := TfmPeriod.Create(Application, cxDateEdit1.EditValue, cxDateEdit1.EditValue,5);
  if fmPeriod.ShowModal = mrOK then begin
    case TComponent(Sender).Tag of
      1 : cxButtonEdit14.EditValue := CurrToStr(GetExchangeNew(1, fmPeriod._GetDateBegin, fmMain.Lis, True));
      5 : cxButtonEdit12.EditValue := CurrToStr(GetExchangeNew(5, fmPeriod._GetDateBegin, fmMain.Lis, True));
      6 : cxButtonEdit13.EditValue := CurrToStr(GetExchangeNew(6, fmPeriod._GetDateBegin, fmMain.Lis, True));
    end;
  end;
end;

procedure TfmPayInvoiceAdd.cxButtonEdit2PropertiesButtonClick(Sender: TObject;AButtonIndex: Integer);
var Q : TADOQuery;
begin
  fmPay := TfmPay.Create(Application, Ftype_invoice, True);
  if fmPay.ShowModal = mrOk then begin
    Fpay_id := fmPay._GetPayId;
  end;
  fmPay.Free;

  if Fpay_id <> -9 then begin
    Screen.Cursor := crHourglass;

    Q := TADOQuery.Create(nil);
    Q.Connection := fmMain.Lis;
    Q.SQL.Add('SELECT * FROM view_pay WHERE pay_id = :pay_id');
    Q.Parameters.ParamByName('pay_id').Value := Fpay_id;
    Q.Open;

    cxButtonEdit2.Text :=  Q.FieldByName('pay_cod').Value;
    cxDateEdit2.EditValue := Q.FieldByName('pay_date').Value;
    cxTextEdit2.Text := Q.FieldByName('firm_customer_name_short').Value;
    cxTextEdit4.Text := Q.FieldByName('brief_name').Value;
    cxCurrencyEdit3.EditValue := Q.FieldByName('pay_sum').AsCurrency;
    cxCurrencyEdit5.EditValue := Q.FieldByName('pay_sum_inv').AsCurrency;
    cxCurrencyEdit6.EditValue := Q.FieldByName('pay_rest').AsCurrency;
    cxCurrencyEdit7.EditValue := Q.FieldByName('pay_rest').AsCurrency;
    cxDateEdit3.EditValue := Q.FieldByName('pay_date').Value;
    Fpay_currency_id := Q.FieldByName('currency_id').AsInteger;
    Fstr_currency_id := Fstr_currency_id + ',' + Q.FieldByName('currency_id').AsString;

    Query_Currency.Close;
    Query_Currency.SQL.Clear;
    Query_Currency.SQL.Add('SELECT * FROM currency WHERE currency_id IN ('+ Fstr_currency_id+')');
    Query_Currency.Open;
    cxLookupComboBox4.EditValue := Q.FieldByName('currency_id').Value;

    RefreshSum;

    Screen.Cursor := crDefault;
  end;
end;

procedure TfmPayInvoiceAdd.cxCurrencyEdit7PropertiesEditValueChanged(Sender: TObject);
begin
  RefreshSum;
end;

procedure TfmPayInvoiceAdd.cxDateEdit3PropertiesEditValueChanged(Sender: TObject);
begin
  cxButtonEdit14.EditValue := CurrToStr(GetExchangeNew(1, cxDateEdit3.EditingValue, fmMain.Lis, True));
  cxButtonEdit12.EditValue := CurrToStr(GetExchangeNew(5, cxDateEdit3.EditingValue, fmMain.Lis, True));
  cxButtonEdit13.EditValue := CurrToStr(GetExchangeNew(6, cxDateEdit3.EditingValue, fmMain.Lis, True));
end;

procedure TfmPayInvoiceAdd.cxLookupComboBox4PropertiesEditValueChanged(
  Sender: TObject);
begin
  Label12.Caption := 'Оплата ' + cxLookupComboBox4.EditingText;
  RefreshSum;
end;

procedure TfmPayInvoiceAdd.SetInsert(invoice_id:integer);
var Q : TADOQuery;
begin
  Screen.Cursor := crHourglass;

  Finvoice_id := invoice_id;
  Ftype_action := 0;

  Q := TADOQuery.Create(nil);
  Q.Connection := fmMain.Lis;
  Q.SQL.Add('SELECT * FROM view_invoice WHERE invoice_id = :invoice_id');
  Q.Parameters.ParamByName('invoice_id').Value := Finvoice_id;
  Q.Open;

  cxButtonEdit1.Text := Q.FieldByName('invoice_cod').AsString;
  cxTextEdit1.Text := Q.FieldByName('firm_customer_name_short').AsString;
  cxCurrencyEdit1.EditValue := Q.FieldByName('invoice_sum').AsCurrency;
  cxTextEdit3.Text := Q.FieldByName('brief_name').AsString;
  cxCurrencyEdit2.Value := Q.FieldByName('inv_sum_pay').AsCurrency;
  cxCurrencyEdit4.EditValue := Q.FieldByName('rest_invoice_sum').AsCurrency;
  cxDateEdit1.EditValue := Q.FieldByName('invoice_date').Value;
  Finvoice_currency_id := Q.FieldByName('currency_id').AsInteger;
  Fstr_currency_id := Q.FieldByName('currency_id').AsString;

  Query_Currency.Close;
  Query_Currency.SQL.Clear;
  Query_Currency.SQL.Add('SELECT * FROM currency WHERE currency_id IN ('+ Fstr_currency_id+')');
  Query_Currency.Open;
  cxLookupComboBox4.EditValue := Query_Currency.FieldByName('currency_id').Value;

  Screen.Cursor := crDefault;
end;

procedure TfmPayInvoiceAdd.SetUpdate(pay_invoice_id: integer);
var Q : TADOQuery;
begin
  Screen.Cursor := crHourglass;
  Ftype_action := 1;
  Fpay_inv_id := pay_invoice_id;

  Q := TADOQuery.Create(nil);
  Q.Connection := fmMain.Lis;
  Q.SQL.Add('SELECT * FROM view_pay_invoice WITH (NOLOCK) WHERE pay_inv_id = :pay_inv_id');
  Q.Parameters.ParamByName('pay_inv_id').Value := Fpay_inv_id;
  Q.Open;

  Fpay_id := Q.FieldByName('pay_id').AsInteger;
  Finvoice_id := Q.FieldByName('inv_id').AsInteger;
  Fpay_currency_id := Q.FieldByName('pay_currency_id').AsInteger;
  Finvoice_currency_id := Q.FieldByName('inv_currency_id').AsInteger;

  cxButtonEdit1.Text := Q.FieldByName('invoice_cod').AsString;
  cxTextEdit1.Text := Q.FieldByName('inv_firm_customer_name_short').AsString;
  cxCurrencyEdit1.EditValue := Q.FieldByName('invoice_sum').AsCurrency;
  cxTextEdit3.Text := Q.FieldByName('inv_brief_name').AsString;
  cxCurrencyEdit2.Value := Q.FieldByName('invoice_sum').AsCurrency;
  cxCurrencyEdit4.EditValue := Q.FieldByName('rest_invoice_sum').AsCurrency;
  cxDateEdit1.EditValue := Q.FieldByName('invoice_date').Value;

  cxButtonEdit2.Text :=  Q.FieldByName('pay_cod').Value;
  cxDateEdit2.EditValue := Q.FieldByName('pay_date').Value;
  cxTextEdit2.Text := Q.FieldByName('pay_firm_customer_name_short').Value;
  cxTextEdit4.Text := Q.FieldByName('pay_brief_name').Value;
  cxCurrencyEdit3.EditValue := Q.FieldByName('pay_sum').AsCurrency;
  cxCurrencyEdit5.EditValue := Q.FieldByName('pay_sum_inv').AsCurrency;
  cxCurrencyEdit6.EditValue := Q.FieldByName('pay_rest').AsCurrency;

  Fstr_currency_id := Q.FieldByName('inv_currency_id').AsString + ',' + Q.FieldByName('pay_currency_id').AsString;

  Query_Currency.Close;
  Query_Currency.SQL.Clear;
  Query_Currency.SQL.Add('SELECT * FROM currency WHERE currency_id IN ('+ Fstr_currency_id+')');
  Query_Currency.Open;

  cxCurrencyEdit7.EditValue := Q.FieldByName('pay_inv_sum').AsCurrency;
  cxLookupComboBox4.EditValue := Q.FieldByName('pay_inv_currency_id').Value;
  cxDateEdit3.EditValue     := Q.FieldByName('pay_inv_date').Value;

  cxCurrencyEdit2.EditValue := cxCurrencyEdit2.EditValue - cxCurrencyEdit10.EditValue;
  cxCurrencyEdit4.EditValue := cxCurrencyEdit4.EditValue + cxCurrencyEdit10.EditValue;

  cxCurrencyEdit5.EditValue := cxCurrencyEdit5.EditValue - cxCurrencyEdit9.EditValue;
  cxCurrencyEdit6.EditValue := cxCurrencyEdit6.EditValue + cxCurrencyEdit9.EditValue;

  MonitorEventFormOpen('UPDATE_FORM', self.Name, fmMain.Lis, Fpay_inv_id);
  Screen.Cursor := crDefault;
end;

procedure TfmPayInvoiceAdd.cxButtonEdit14PropertiesEditValueChanged(Sender: TObject);
begin
  RefreshSum;
end;

procedure TfmPayInvoiceAdd.RefreshSum;
var Q : TADOQuery;
begin

if VarIsNull(cxLookupComboBox4.EditValue)
    or VarIsNull(cxButtonEdit14.EditValue)
    or VarIsNull(cxButtonEdit13.EditValue)
    or VarIsNull(cxButtonEdit12.EditValue)
    or VarIsNull(cxCurrencyEdit7.EditValue) then exit;

  Q := TADOQuery.Create(Application);
  Q.Connection := fmMain.Lis;
  Q.SQL.Add('SELECT  dbo.func_GetExchangeNew(:to_currency_id, :from_currency_id, :exchange_USD_val, :exchange_CHF_val, :exchange_EUR_val) as ExchangeVal');

  if cxLookupComboBox4.EditValue = Finvoice_currency_id then
    cxCurrencyEdit10.EditValue := cxCurrencyEdit7.EditValue
  else begin
    Q.Close;
    Q.Parameters.ParamByName('to_currency_id').Value := Finvoice_currency_id;
    Q.Parameters.ParamByName('from_currency_id').Value := cxLookupComboBox4.EditingValue;
    Q.Parameters.ParamByName('exchange_USD_val').Value := StrToFloat(cxButtonEdit14.EditValue);
    Q.Parameters.ParamByName('exchange_EUR_val').Value := StrToFloat(cxButtonEdit13.EditValue);
    Q.Parameters.ParamByName('exchange_CHF_val').Value := StrToFloat(cxButtonEdit12.EditValue);
    Q.Open;
    cxCurrencyEdit10.EditValue :=  RoundCurr(cxCurrencyEdit7.EditValue * Q.FieldByName('ExchangeVal').AsFloat, -2);
  end;

  if cxLookupComboBox4.EditValue = Fpay_currency_id then
    cxCurrencyEdit9.EditValue := cxCurrencyEdit7.EditValue
  else begin
    Q.Close;
    Q.Parameters.ParamByName('to_currency_id').Value := Fpay_currency_id;
    Q.Parameters.ParamByName('from_currency_id').Value := cxLookupComboBox4.EditingValue;
    Q.Parameters.ParamByName('exchange_USD_val').Value := StrToFloat(cxButtonEdit14.EditValue);
    Q.Parameters.ParamByName('exchange_EUR_val').Value := StrToFloat(cxButtonEdit13.EditValue);
    Q.Parameters.ParamByName('exchange_CHF_val').Value := StrToFloat(cxButtonEdit12.EditValue);
    Q.Open;
    cxCurrencyEdit9.EditValue :=  RoundCurr(cxCurrencyEdit7.EditValue * Q.FieldByName('ExchangeVal').AsFloat, -2);
  end;
end;

end.

