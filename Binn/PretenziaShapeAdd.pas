unit PretenziaShapeAdd;

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
  TfmPretenziaShapeAdd = class(TForm)
    Panel2: TPanel;
    Label1: TLabel;
    Panel4: TPanel;
    Label2: TLabel;
    cxTextEdit4: TcxTextEdit;
    Label7: TLabel;
    cxPropertiesStore1: TcxPropertiesStore;
    cxDBButtonEdit1: TcxDBButtonEdit;
    Panel1: TPanel;
    GroupBox1: TGroupBox;
    Label9: TLabel;
    cxCurrencyEdit1: TcxCurrencyEdit;
    cxCurrencyEdit2: TcxCurrencyEdit;
    Memo2: TcxMemo;
    cxDateEdit1: TcxDateEdit;
    Label5: TLabel;
    Panel6: TPanel;
    Label3: TLabel;
    cxTextEdit5: TcxTextEdit;
    cxTextEdit1: TcxTextEdit;
    Label11: TLabel;
    cxTextEdit2: TcxTextEdit;
    cxTextEdit3: TcxTextEdit;
    Query_Contract: TADOQuery;
    DS_Contract: TDataSource;
    cxButton1: TcxButton;
    cxButton3: TcxButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cxDBButtonEdit1PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure cxButtonEdit14PropertiesValidate(Sender: TObject; var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
    procedure FormCreate(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
  private
    Fpay_id : integer;
    Faction : boolean;
    Ftype_pay : byte;
    Ftype_action : Integer;
    Fcontract_id: integer;
    procedure SetUpdate(pay_id : integer);
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
  fmPretenziaShapeAdd: TfmPretenziaShapeAdd;

implementation
      uses Main, Raznoe, Contract, ClientInvoice;
{$R *.DFM}

constructor TfmPretenziaShapeAdd.Create(AOwner: TApplication; type_pay:byte; action: boolean; type_form :boolean);
begin
  Screen.Cursor := crHourglass;
  inherited Create(AOwner);
  Faction    := action;
  Ftype_action := 0;
  Ftype_pay  := type_pay;
  Ftype_form := type_form;


  Query_Contract.Close;
  Query_Contract.Parameters.ParamByName('type_contract').Value := 0;

  Screen.Cursor := crDefault;
end;

procedure TfmPretenziaShapeAdd._SetInsert;
begin
  Screen.Cursor := crHourglass;

  cxDateEdit1.Date := Date();

  Query_Contract.Close;
  Query_Contract.Parameters.ParamByName('date_current').Value := Date();
  Query_Contract.Open;
  cxTextEdit2.Text := Query_Contract.FieldByName('contract_cod').AsString;


  MonitorEventFormOpen('NEW_FORM', self.Name, fmMain.Lis, -9);

  Screen.Cursor := crDefault;
end;

procedure TfmPretenziaShapeAdd.SetUpdate(pay_id : integer);
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


    cxTextEdit5.Text   := Q.FieldByName('pay_note').AsString;
    Memo2.EditValue    := Q.FieldByName('pay_comment').Value;

  finally
    Q.Free;
  end;

  MonitorEventFormOpen('UPDATE_FORM', self.Name, fmMain.Lis, Fpay_id);
  Screen.Cursor := crDefault;
end;

procedure TfmPretenziaShapeAdd.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TfmPretenziaShapeAdd.FormCreate(Sender: TObject);
begin
  Fcontract_id := -1;
end;

procedure TfmPretenziaShapeAdd.cxDBButtonEdit1PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
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

procedure TfmPretenziaShapeAdd.cxButton1Click(Sender: TObject);
var SP_pay_invoice_modify : TADOStoredProc;
    SP_PayModify          : TADOStoredProc;
begin
  Screen.Cursor := crHourglass;

  SP_PayModify := TADOStoredProc.Create(nil);
  SP_PayModify.Connection := fmMain.Lis;
  SP_PayModify.ProcedureName := '';
  SP_PayModify.Parameters.Refresh;
  SP_PayModify.Parameters.ParamByName('@type_action'  ).Value := Ftype_action;
  SP_PayModify.Parameters.ParamByName('@pay_id'       ).Value := Fpay_id;
  SP_PayModify.Parameters.ParamByName('@pay_cod'      ).Value := cxTextEdit4.Text;
  SP_PayModify.Parameters.ParamByName('@incomming_cod').Value := cxTextEdit1.Text;
  SP_PayModify.Parameters.ParamByName('@contract_id'  ).Value := Fcontract_id;
  SP_PayModify.Parameters.ParamByName('@pay_date'     ).Value := cxDateEdit1.Date;
  SP_PayModify.Parameters.ParamByName('@pay_sum'      ).Value := cxCurrencyEdit1.EditValue;
  SP_PayModify.Parameters.ParamByName('@nds_sum'      ).Value := cxCurrencyEdit2.EditValue;
  SP_PayModify.Parameters.ParamByName('@pay_note'     ).Value := cxTextEdit5.Text;
  SP_PayModify.Parameters.ParamByName('@pay_comment'  ).Value := Memo2.EditValue;
  SP_PayModify.Parameters.ParamByName('@type_pay'     ).Value := Ftype_pay;

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

procedure TfmPretenziaShapeAdd.cxButtonEdit14PropertiesValidate(Sender: TObject; var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
var test : Extended;
begin
  Error := not TryStrToFloat(DisplayValue, test);
  if Error then
    ErrorText := 'Необходимо ввести число';
end;

end.









