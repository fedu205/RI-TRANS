unit ContractNorm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint,
  dxSkinCaramel, dxSkinCoffee, dxSkinDarkroom, dxSkinDarkSide, dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans,
  dxSkinHighContrast, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMetropolis, dxSkinMetropolisDark, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue,
  dxSkinOffice2010Silver, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinOffice2016Colorful, dxSkinOffice2016Dark,
  dxSkinOffice2019Colorful, dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus, dxSkinSilver, dxSkinSpringtime, dxSkinStardust,
  dxSkinSummer2008, dxSkinTheAsphaltWorld, dxSkinTheBezier, dxSkinsDefaultPainters, dxSkinValentine, dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, dxSkinVS2010, dxSkinWhiteprint, dxSkinXmas2008Blue, cxControls, cxContainer, cxEdit, Vcl.ComCtrls, dxCore, cxDateUtils,
  cxDropDownEdit, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, Data.DB, Data.Win.ADODB, cxCurrencyEdit, cxMaskEdit, cxCalendar, cxLabel, cxTextEdit,
  Vcl.StdCtrls, cxButtons, Vcl.ExtCtrls, cxClasses, cxPropertiesStore;

type
  TfmContractNorm = class(TForm)
    Panel2: TPanel;
    cxButton1: TcxButton;
    cxButton2: TcxButton;
    Panel7: TPanel;
    cxTextEdit2: TcxTextEdit;
    cxTextEdit1: TcxTextEdit;
    cxLabel2: TcxLabel;
    cxLabel12: TcxLabel;
    Panel1: TPanel;
    cxLabel1: TcxLabel;
    cxLabel3: TcxLabel;
    cxDateEdit1: TcxDateEdit;
    cxDateEdit2: TcxDateEdit;
    cxLabel4: TcxLabel;
    cxLabel5: TcxLabel;
    cxLabel6: TcxLabel;
    cxLabel7: TcxLabel;
    cxLabel8: TcxLabel;
    cxCurrencyEdit1: TcxCurrencyEdit;
    cxCurrencyEdit2: TcxCurrencyEdit;
    cxCurrencyEdit3: TcxCurrencyEdit;
    Query_Currency: TADOQuery;
    DS_Currency: TDataSource;
    DS_NDS: TDataSource;
    Query_NDS: TADOQuery;
    cxLookupComboBox2: TcxLookupComboBox;
    cxLookupComboBox1: TcxLookupComboBox;
    cxPropertiesStore1: TcxPropertiesStore;
    cxComboBox1: TcxComboBox;
    cxLabel9: TcxLabel;
    cxCurrencyEdit4: TcxCurrencyEdit;
    cxLabel11: TcxLabel;
    cxCurrencyEdit5: TcxCurrencyEdit;
    cxCurrencyEdit6: TcxCurrencyEdit;
    cxCurrencyEdit7: TcxCurrencyEdit;
    procedure cxButton1Click(Sender: TObject);
    procedure cxCurrencyEdit2PropertiesEditValueChanged(Sender: TObject);
    procedure cxCurrencyEdit5PropertiesEditValueChanged(Sender: TObject);
    procedure cxCurrencyEdit6PropertiesEditValueChanged(Sender: TObject);
  private
    Fconnect : TADOConnection;
    Fcontract_norm_id : integer;
    Fcontract_id : integer;
    Ftype_action : integer;

    procedure SetUpdate(contract_norm_id: integer);
    procedure SetInsert(contract_id: integer);
    function SetRate14WithNDS: Variant;
    function SetRate5WithNDS: Variant;
  public
    constructor Create(AOwner: TApplication; str_connect: string);
  published
    property _SetUpdate : integer write SetUpdate;
    property _SetInsert : integer write SetInsert;
  end;

function CreateWndContractNorm(AppHand: THandle; contract_norm_id, contract_id: integer; str_connect: string) : Variant; export;

var
  fmContractNorm: TfmContractNorm;

implementation
  uses Raznoe;
{$R *.dfm}

function CreateWndContractNorm(AppHand: THandle; contract_norm_id, contract_id: integer; str_connect: string) : Variant;
begin
  Application.Handle := AppHand;
  try
    fmContractNorm := TfmContractNorm.Create(Application, str_connect);

    if contract_norm_id = -9 then fmContractNorm._SetInsert := contract_id
    else fmContractNorm._SetUpdate := contract_norm_id;

    if fmContractNorm.ShowModal = mrOk then
      result := VarArrayOf([-9, ''])
    else
      result := VarArrayOf([-9, '']);
  finally
    fmContractNorm.Free;
  end;
end;

{ TfmContractNorm }

constructor TfmContractNorm.Create(AOwner: TApplication; str_connect: string);
begin
  inherited Create(AOwner);
  Screen.Cursor := crHourglass;

  Fconnect := TADOConnection.Create(nil);
  Fconnect.ConnectionString := str_connect;
  Fconnect.KeepConnection   := False;
  Fconnect.LoginPrompt      := False;

  Fcontract_norm_id := -9;
  Fcontract_id := -9;
  Ftype_action := 0;

  Query_Currency.Connection := Fconnect;
  Query_Currency.Open;
  Query_NDS.Connection := Fconnect;
  Query_NDS.Open;

  cxComboBox1.ItemIndex := 0;

  Screen.Cursor := crDefault;
end;

procedure TfmContractNorm.SetInsert(contract_id: integer);
var Q : TADOQuery;
begin
  Screen.Cursor := crHourglass;
  Fcontract_id := contract_id;
  Ftype_action := 0;

  Q := TADOQuery.Create(nil);
  Q.Connection := Fconnect;
  Q.SQL.Add('SELECT vc.firm_customer_name, vc.contract_cod, vc.date_begin');
  Q.SQL.Add('FROM view_contract vc');
  Q.SQL.Add('WHERE contract_id = ' + IntToStr(Fcontract_id));
  Q.Open;

  cxTextEdit1.EditValue := Q.FieldByName('firm_customer_name').Value;
  cxTextEdit2.EditValue := Q.FieldByName('contract_cod').AsString + ' от ' + FormatDateTime('dd.mm.yyyyг.', Q.FieldByName('date_begin').AsDateTime);

  cxDateEdit1.EditValue := Q.FieldByName('date_begin').Value;
  cxDateEdit2.EditValue := null;

  cxLookupComboBox1.EditValue := Query_Currency.FieldByName('currency_id').Value;
  Query_NDS.Locate('inf_obj_cod', '20', []);
  cxLookupComboBox2.EditValue := Query_NDS.FieldByName('inf_obj_id').Value;

  Q.Free;
  Screen.Cursor := crDefault;
end;

procedure TfmContractNorm.SetUpdate(contract_norm_id: integer);
var Q : TADOQuery;
begin
  Screen.Cursor := crHourglass;
  Fcontract_norm_id := contract_norm_id;
  Ftype_action := 1;

  Q := TADOQuery.Create(nil);
  Q.Connection := Fconnect;
  Q.SQL.Add('SELECT cn.*, vc.firm_customer_name, vc.contract_cod, vc.date_begin');
  Q.SQL.Add('FROM contract_norm cn INNER JOIN view_contract vc ON cn.contract_id = vc.contract_id');
  Q.SQL.Add('WHERE contract_norm_id = ' + IntToStr(Fcontract_norm_id));
  Q.Open;
  Fcontract_id := Q.FieldByName('contract_id').AsInteger;

  cxTextEdit1.EditValue := Q.FieldByName('firm_customer_name').Value;
  cxTextEdit2.EditValue := Q.FieldByName('contract_cod').AsString + ' от ' + FormatDateTime('dd.mm.yyyyг.', Q.FieldByName('date_begin').AsDateTime);

  cxDateEdit1.EditValue := Q.FieldByName('date_begin').Value;
  cxDateEdit2.EditValue := Q.FieldByName('date_end').Value;
  cxCurrencyEdit1.EditValue := Q.FieldByName('norm_days').Value;

  cxCurrencyEdit2.EditValue := Q.FieldByName('norm_14_sum_without_nds').Value;
  cxCurrencyEdit3.EditValue := Q.FieldByName('norm_14_sum_with_nds').Value;
  cxCurrencyEdit5.EditValue := Q.FieldByName('norm_5_sum_without_nds').Value;
  cxCurrencyEdit4.EditValue := Q.FieldByName('norm_5_sum_with_nds').Value;
  cxCurrencyEdit6.EditValue := Q.FieldByName('days_for_rate').Value;

  cxLookupComboBox1.EditValue := Q.FieldByName('currency_id').Value;
  cxLookupComboBox2.EditValue := Q.FieldByName('nds_id').Value;

  cxComboBox1.ItemIndex := Q.FieldByName('norm_type').AsInteger;

  Q.Free;
  Screen.Cursor := crDefault;
end;

procedure TfmContractNorm.cxButton1Click(Sender: TObject);
var SP : TADOStoredProc;
begin
  Screen.Cursor := crHourglass;

  SP := TADOStoredProc.Create(nil);
  SP.Connection := Fconnect;
  SP.ProcedureName := 'sp_contract_norm_modify';
  SP.Parameters.Refresh;

  SP.Parameters.ParamByName('@type_action'      ).Value := Ftype_action;
  SP.Parameters.ParamByName('@contract_norm_id' ).Value := iif(Fcontract_norm_id=-9, null, Fcontract_norm_id);
  SP.Parameters.ParamByName('@contract_id'      ).Value := iif(Fcontract_id=-9, null, Fcontract_id);
  SP.Parameters.ParamByName('@date_begin'       ).Value := cxDateEdit1.EditValue;
  SP.Parameters.ParamByName('@date_end'         ).Value := cxDateEdit2.EditValue;
  SP.Parameters.ParamByName('@norm_days'        ).Value := cxCurrencyEdit1.EditValue;
  SP.Parameters.ParamByName('@norm_14_sum_without_nds').Value := cxCurrencyEdit2.EditValue;
  SP.Parameters.ParamByName('@norm_14_sum_with_nds'   ).Value := cxCurrencyEdit3.EditValue;
  SP.Parameters.ParamByName('@norm_5_sum_without_nds' ).Value := cxCurrencyEdit5.EditValue;
  SP.Parameters.ParamByName('@norm_5_sum_with_nds'    ).Value := cxCurrencyEdit4.EditValue;
  SP.Parameters.ParamByName('@currency_id'            ).Value := cxLookupComboBox1.EditValue;
  SP.Parameters.ParamByName('@nds_id'                 ).Value := cxLookupComboBox2.EditValue;
  SP.Parameters.ParamByName('@norm_type'              ).Value := cxComboBox1.ItemIndex;
  SP.Parameters.ParamByName('@days_for_rate'          ).Value := cxCurrencyEdit6.EditValue;
  SP.ExecProc;

  SP.Free;
  Screen.Cursor := crDefault;
end;

procedure TfmContractNorm.cxCurrencyEdit2PropertiesEditValueChanged(Sender: TObject);
begin
  cxCurrencyEdit3.EditValue := SetRate14WithNDS;
end;

procedure TfmContractNorm.cxCurrencyEdit5PropertiesEditValueChanged(Sender: TObject);
begin
  cxCurrencyEdit4.EditValue := SetRate5WithNDS;
end;

procedure TfmContractNorm.cxCurrencyEdit6PropertiesEditValueChanged(Sender: TObject);
begin
  cxCurrencyEdit7.Value := cxCurrencyEdit6.Value;
end;

function TfmContractNorm.SetRate14WithNDS: Variant;
begin
  if Query_NDS.Locate('inf_obj_id', cxLookupComboBox2.EditValue, []) then
    Result := cxCurrencyEdit2.Value * (1.00 + Query_NDS.FieldByName('inf_obj_cod_int').AsInteger/100)
  else
    Result := 0;
end;

function TfmContractNorm.SetRate5WithNDS: Variant;
begin
  if Query_NDS.Locate('inf_obj_id', cxLookupComboBox2.EditValue, []) then
    Result := cxCurrencyEdit5.Value * (1.00 + Query_NDS.FieldByName('inf_obj_cod_int').AsInteger/100)
  else
    Result := 0;
end;

end.
