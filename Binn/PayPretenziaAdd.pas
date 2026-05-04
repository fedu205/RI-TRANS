unit PayPretenziaAdd;

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
  dxSkinWhiteprint, dxSkinXmas2008Blue, dxSkinOffice2019Colorful, cxButtons,
  dxCoreGraphics, dxSkinBasic, dxSkinOffice2019Black, dxSkinOffice2019DarkGray,
  dxSkinOffice2019White, dxSkinWXI;

type
  TfmPayPretenziaAdd = class(TForm)
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
    Fpretenzia_shape_id : Integer;
    Ftype_invoice : Integer;
    Fpay_id : Integer;
    Fstr_currency_id : string;
    Fpay_pr_id : Integer;
    Ftype_action : Integer;
    Fpay_currency_id : Integer;
    Fpr_currency_id : Integer;

    procedure SetUpdate(pay_pr_id : integer);
    procedure SetInsert(pretenzia_shape_id : integer);
    procedure RefreshSum();
  public
    constructor Create(AOwner: TApplication; type_invoice : Integer);
  published
    property _SetUpdate : integer write SetUpdate;
    property _SetInsert : integer write SetInsert;
    property _GetPayPrId : integer read Fpay_pr_id;

  end;

var
  fmPayPretenziaAdd: TfmPayPretenziaAdd;

implementation
     uses Main, Raznoe, Period, Pay;
{$R *.dfm}

constructor TfmPayPretenziaAdd.Create(AOwner: TApplication; type_invoice : Integer);
begin
  Screen.Cursor := crHourglass;

  inherited Create(AOwner);
  Ftype_invoice := type_invoice;
  Fpay_id := -9;
  Fpay_pr_id := -9;
  Fpay_currency_id := -9;
  Fpr_currency_id := -9;
  Fstr_currency_id := '';
  Ftype_action := 0;

  Query_Currency.Close;
  Query_Currency.SQL.Clear;
  Query_Currency.SQL.Add('SELECT * FROM currency WHERE currency_id IN (3)');
  Query_Currency.Open;
  cxLookupComboBox4.EditValue := Query_Currency.FieldByName('currency_id').Value;

  MonitorEventFormOpen('OPEN_FORM', self.Name, fmMain.Lis, -9);

  Screen.Cursor := crDefault;
end;

procedure TfmPayPretenziaAdd.cxButton1Click(Sender: TObject);
var SP : TADOStoredProc;
begin
  if cxCurrencyEdit10.EditValue > cxCurrencyEdit4.EditValue then begin
    Application.MessageBox('Оплата претензии > остатка претензии.', 'Ошибка', MB_OK);
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
  SP.ProcedureName := 'sp_pay_pr_modify;1';
  SP.Parameters.Refresh;

  SP.Parameters.ParamByName('@pay_pr_id'  ).Value := Fpay_pr_id;
  SP.Parameters.ParamByName('@type_action' ).Value := Ftype_action;
  SP.Parameters.ParamByName('@pay_id'      ).Value := Fpay_id;
  SP.Parameters.ParamByName('@pr_id'      ).Value := Fpretenzia_shape_id;
  SP.Parameters.ParamByName('@pay_pr_sum' ).Value := cxCurrencyEdit7.EditValue;
  SP.Parameters.ParamByName('@pay_pr_date').Value := cxDateEdit3.EditValue;

  SP.Parameters.ParamByName('@exchange_USD_val').Value := StrToFloat(cxButtonEdit14.EditValue);
  SP.Parameters.ParamByName('@exchange_EUR_val').Value := StrToFloat(cxButtonEdit13.EditValue);
  SP.Parameters.ParamByName('@exchange_CHF_val').Value := StrToFloat(cxButtonEdit12.EditValue);

  SP.Parameters.ParamByName('@pr_sum_income').Value := cxCurrencyEdit10.EditValue;
  SP.Parameters.ParamByName('@pay_sum_income').Value := cxCurrencyEdit9.EditValue;
  SP.Parameters.ParamByName('@pay_pr_currency_id').Value := cxLookupComboBox4.EditValue;

  try
    SP.ExecProc;
    Fpay_pr_id := SP.Parameters.ParamByName('@pay_pr_id').Value;
    SP.Free;
  except on E: Exception do begin
      Application.MessageBox(PChar(E.Message),'ВНИМАНИЕ!!!' , MB_OKCANCEL + MB_ICONERROR);
      SP.Free;
      ModalResult := mrNone;
    end;
  end;

  Screen.Cursor := crDefault;

end;

procedure TfmPayPretenziaAdd.cxButtonEdit12PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
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

procedure TfmPayPretenziaAdd.cxButtonEdit2PropertiesButtonClick(Sender: TObject;AButtonIndex: Integer);
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
    cxTextEdit2.Text := Q.FieldByName('firm_customer_name').AsString;
    cxTextEdit4.Text := Q.FieldByName('brief_name').AsString;
    cxCurrencyEdit3.EditValue := Q.FieldByName('pay_sum').AsCurrency;
    cxCurrencyEdit5.EditValue := Q.FieldByName('pay_sum_inv').AsCurrency;
    cxCurrencyEdit6.EditValue := Q.FieldByName('pay_rest').AsCurrency;
    cxCurrencyEdit7.EditValue := Q.FieldByName('pay_rest').AsCurrency;
    cxDateEdit3.EditValue := Q.FieldByName('pay_date').Value;
    Fpay_currency_id := Q.FieldByName('currency_id').AsInteger;
    Fstr_currency_id := Fstr_currency_id + ',' + Q.FieldByName('currency_id').AsString;

    RefreshSum;

    Screen.Cursor := crDefault;
  end;
end;

procedure TfmPayPretenziaAdd.cxCurrencyEdit7PropertiesEditValueChanged(Sender: TObject);
begin
  RefreshSum;
end;

procedure TfmPayPretenziaAdd.cxDateEdit3PropertiesEditValueChanged(Sender: TObject);
begin
  cxButtonEdit14.EditValue := CurrToStr(GetExchangeNew(1, cxDateEdit3.EditingValue, fmMain.Lis, True));
  cxButtonEdit12.EditValue := CurrToStr(GetExchangeNew(5, cxDateEdit3.EditingValue, fmMain.Lis, True));
  cxButtonEdit13.EditValue := CurrToStr(GetExchangeNew(6, cxDateEdit3.EditingValue, fmMain.Lis, True));
end;

procedure TfmPayPretenziaAdd.cxLookupComboBox4PropertiesEditValueChanged(
  Sender: TObject);
begin
  Label12.Caption := 'Оплата ' + cxLookupComboBox4.EditingText;
  RefreshSum;
end;

procedure TfmPayPretenziaAdd.SetInsert(pretenzia_shape_id:integer);
var Q : TADOQuery;
begin
  Screen.Cursor := crHourglass;

  Fpretenzia_shape_id := pretenzia_shape_id;
  Ftype_action := 0;

  Q := TADOQuery.Create(nil);
  Q.Connection := fmMain.Lis;
  Q.SQL.Add('SELECT * FROM view_pretenzia_shape WHERE pretenzia_shape_id = :pretenzia_shape_id');
  Q.Parameters.ParamByName('pretenzia_shape_id').Value := Fpretenzia_shape_id;
  Q.Open;

  cxButtonEdit1.Text := Q.FieldByName('pretenzia_cod').AsString;
  cxTextEdit1.Text := Q.FieldByName('firm_customer_name_short').AsString;
  cxCurrencyEdit1.EditValue := Q.FieldByName('pretenzia_sum').AsCurrency;
  cxCurrencyEdit2.Value := Q.FieldByName('pr_sum_pay').AsCurrency;
  cxCurrencyEdit4.EditValue := Q.FieldByName('rest_pr_sum').AsCurrency;
  cxDateEdit1.EditValue := Q.FieldByName('pretenzia_date').Value;

  Screen.Cursor := crDefault;
end;

procedure TfmPayPretenziaAdd.SetUpdate(pay_pr_id: integer);
var Q : TADOQuery;
begin
  Screen.Cursor := crHourglass;
  Ftype_action := 1;
  Fpay_pr_id := pay_pr_id;

  Q := TADOQuery.Create(nil);
  Q.Connection := fmMain.Lis;
  Q.SQL.Add('SELECT * FROM view_pay_pretenzia WITH (NOLOCK) WHERE pay_pr_id = :pay_pr_id');
  Q.Parameters.ParamByName('pay_pr_id').Value := Fpay_pr_id;
  Q.Open;

  Fpay_id := Q.FieldByName('pay_id').AsInteger;
  Fpretenzia_shape_id := Q.FieldByName('pr_id').AsInteger;
  Fpay_currency_id := Q.FieldByName('pay_currency_id').AsInteger;


  cxButtonEdit1.Text := Q.FieldByName('pretenzia_cod').AsString;
  cxTextEdit1.Text := Q.FieldByName('inv_firm_customer_name').AsString;
  cxCurrencyEdit1.EditValue := Q.FieldByName('pretenzia_sum').AsCurrency;
//  cxTextEdit3.Text := Q.FieldByName('inv_brief_name').AsString;
  cxCurrencyEdit2.Value := Q.FieldByName('pretenzia_sum').AsCurrency;
  cxCurrencyEdit4.EditValue := Q.FieldByName('rest_pr_sum').AsCurrency;
  cxDateEdit1.EditValue := Q.FieldByName('pretenzia_date').Value;

  cxButtonEdit2.Text :=  Q.FieldByName('pay_cod').Value;
  cxDateEdit2.EditValue := Q.FieldByName('pay_date').Value;
  cxTextEdit2.Text := Q.FieldByName('pay_firm_customer_name').Value;
  cxTextEdit4.Text := Q.FieldByName('pay_brief_name').Value;
  cxCurrencyEdit3.EditValue := Q.FieldByName('pay_sum').AsCurrency;
  cxCurrencyEdit5.EditValue := Q.FieldByName('pay_sum_inv').AsCurrency;
  cxCurrencyEdit6.EditValue := Q.FieldByName('pay_rest').AsCurrency;


  cxCurrencyEdit7.EditValue := Q.FieldByName('pay_pr_sum').AsCurrency;
  cxLookupComboBox4.EditValue := Q.FieldByName('pay_pr_currency_id').Value;
  cxDateEdit3.EditValue     := Q.FieldByName('pay_pr_date').Value;

  cxCurrencyEdit2.EditValue := cxCurrencyEdit2.EditValue - cxCurrencyEdit10.EditValue;
  cxCurrencyEdit4.EditValue := cxCurrencyEdit4.EditValue + cxCurrencyEdit10.EditValue;

  cxCurrencyEdit5.EditValue := cxCurrencyEdit5.EditValue - cxCurrencyEdit9.EditValue;
  cxCurrencyEdit6.EditValue := cxCurrencyEdit6.EditValue + cxCurrencyEdit9.EditValue;

  RefreshSum;

  MonitorEventFormOpen('UPDATE_FORM', self.Name, fmMain.Lis, Fpay_pr_id);
  Screen.Cursor := crDefault;

end;

procedure TfmPayPretenziaAdd.cxButtonEdit14PropertiesEditValueChanged(Sender: TObject);
begin
  RefreshSum;
end;

procedure TfmPayPretenziaAdd.RefreshSum;
var Q : TADOQuery;
begin

if VarIsNull(cxLookupComboBox4.EditValue)
    or VarIsNull(cxButtonEdit14.EditValue)
    or VarIsNull(cxButtonEdit13.EditValue)
    or VarIsNull(cxButtonEdit12.EditValue)
    or VarIsNull(cxCurrencyEdit7.EditValue) then exit;

  cxCurrencyEdit10.EditValue := cxCurrencyEdit7.EditValue;
  cxCurrencyEdit9.EditValue := cxCurrencyEdit7.EditValue;

end;

end.

