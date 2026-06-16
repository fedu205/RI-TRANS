unit LowClaimAdd;
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
  dxSkinOffice2019DarkGray, dxSkinOffice2019White, dxSkinWXI, dxCoreGraphics, cxLabel;
type
  TfmLowClaimAdd = class(TForm)
    Panel2: TPanel;
    Label1: TLabel;
    Panel4: TPanel;
    Label2: TLabel;
    cxPropertiesStore1: TcxPropertiesStore;
    Panel1: TPanel;
    GroupBox1: TGroupBox;
    cxCurrencyEdit1: TcxCurrencyEdit;
    Memo2: TcxMemo;
    cxDateEdit1: TcxDateEdit;
    Label5: TLabel;
    cxTextEdit2: TcxTextEdit;
    cxTextEdit3: TcxTextEdit;
    Query_Contract: TADOQuery;
    DS_Contract: TDataSource;
    cxButton1: TcxButton;
    cxButton3: TcxButton;
    cxTextEdit1: TcxTextEdit;
    Label11: TLabel;
    cxCurrencyEdit2: TcxCurrencyEdit;
    Label8: TLabel;
    Label9: TLabel;
    cxTextEdit5: TcxTextEdit;
    cxTextEdit6: TcxTextEdit;
    Label10: TLabel;
    Label12: TLabel;
    cxComboBox2: TcxComboBox;
    Label13: TLabel;
    cxTextEdit7: TcxTextEdit;
    Label14: TLabel;
    Label15: TLabel;
    cxTextEdit8: TcxTextEdit;
    Panel3: TPanel;
    cxCurrencyEdit3: TcxCurrencyEdit;
    Label16: TLabel;
    Label17: TLabel;
    cxCurrencyEdit4: TcxCurrencyEdit;
    cxCurrencyEdit5: TcxCurrencyEdit;
    Label18: TLabel;
    Label4: TLabel;
    cxTextEdit4: TcxTextEdit;
    Label19: TLabel;
    Label20: TLabel;
    cxCurrencyEdit7: TcxCurrencyEdit;
    cxCurrencyEdit8: TcxCurrencyEdit;
    Label21: TLabel;
    Label3: TLabel;
    cxCurrencyEdit9: TcxCurrencyEdit;
    cxDateEdit5: TcxDateEdit;
    cxButtonEdit2: TcxButtonEdit;
    cxTextEdit9: TcxTextEdit;
    cxTextEdit10: TcxTextEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure cxButtonEdit2PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
  private
    Flow_claim_id : integer;
    Flow_claim_type : integer;
    Faction : boolean;
    Ftype_action : Integer;
    Fcontract_id: integer;
    procedure SetUpdate(low_claim_id : integer);
  public
    constructor Create(AOwner: TApplication; action: boolean; low_claim_type: integer);
    property _GetLowClaimId : integer read Flow_claim_id;
    property _SetUpdate : integer write SetUpdate;
    procedure _SetInsert;
  end;
var
  fmLowClaimAdd: TfmLowClaimAdd;
implementation
      uses Main, Raznoe, Contract, ClientInvoice;
{$R *.DFM}
constructor TfmLowClaimAdd.Create(AOwner: TApplication; action: boolean; low_claim_type: integer);
begin
  Screen.Cursor := crHourglass;
  inherited Create(AOwner);
  Faction    := action;
  Ftype_action := 0;
  Flow_claim_type := low_claim_type;

  Query_Contract.Close;
  cxDateEdit1.EditValue := Date;
  cxDateEdit5.EditValue := Date;
  Screen.Cursor := crDefault;
end;
procedure TfmLowClaimAdd._SetInsert;
begin
  Screen.Cursor := crHourglass;
  cxDateEdit1.Date := Date();
  Query_Contract.Close;
  Query_Contract.Open;
  cxTextEdit2.Text := Query_Contract.FieldByName('contract_cod').AsString;

  MonitorEventFormOpen('NEW_FORM', self.Name, fmMain.Lis, -9);
  Screen.Cursor := crDefault;
end;
procedure TfmLowClaimAdd.SetUpdate(low_claim_id : integer);
var Q : TADOQuery;
begin
  Screen.Cursor := crHourglass;
  Ftype_action := 1;
  Flow_claim_id := low_claim_id;
  Caption := Caption + ' (' + IntToStr(Flow_claim_id) + ')';
  Q := TADOQuery.Create(nil);
  Q.Connection := fmMain.Lis;
  Q.SQL.Add('SELECT * FROM view_low_claim WHERE low_claim_id='+IntToStr(Flow_claim_id));
  Q.Open;
  Fcontract_id := Q.FieldByName('contract_id').AsInteger;
  cxButtonEdit2.EditValue := Q.FieldByName('firm_customer_name').AsString;
  cxTextEdit3.Text := Q.FieldByName('contract_cod').AsString;
  cxTextEdit2.Text := Q.FieldByName('contract_date_begin').AsString;
  cxTextEdit9.Text := Q.FieldByName('firm_self_name').AsString;
  cxDateEdit1.Date := Q.FieldByName('low_claim_date').AsDatetime;
  cxTextEdit5.Text := Q.FieldByName('low_claim_cod').AsString;
  cxTextEdit1.EditValue := Q.FieldByName('court_name'    ).Value;
  cxCurrencyEdit1.EditValue := Q.FieldByName('claim_sum'     ).Value;
  cxCurrencyEdit2.EditValue := Q.FieldByName('gos_fee_sum'   ).Value;
  cxDateEdit5.EditValue := Q.FieldByName('date_sz'     ).Value;
  cxtextEdit6.EditValue := Q.FieldByName('court_num'     ).Value;
  cxComboBox2.ItemIndex := Q.FieldByName('court_status'  ).Value;
  cxTextEdit7.EditValue := Q.FieldByName('prepare_documents').Value;
  cxTextEdit8.EditValue := Q.FieldByName('court_data'       ).Value;
  cxCurrencyEdit3.EditValue := Q.FieldByName('sum_1').Value;
  cxCurrencyEdit4.EditValue := Q.FieldByName('sum_2').Value;
  cxCurrencyEdit5.EditValue := Q.FieldByName('sum_3').Value;
  cxTextEdit4.EditValue := Q.FieldByName('access_code').Value;
  cxTextEdit10.EditValue := Q.FieldByName('penalty_num').Value;
//  cxCurrencyEdit6.EditValue := Q.FieldByName('sum_4').Value;
  cxCurrencyEdit7.EditValue := Q.FieldByName('sum_5').Value;
  cxCurrencyEdit8.EditValue := Q.FieldByName('sum_6').Value;
  cxCurrencyEdit9.EditValue := Q.FieldByName('sum_7').Value;
  Memo2.EditValue := Q.FieldByName('comment').Value;
  Q.Free;
  MonitorEventFormOpen('UPDATE_FORM', self.Name, fmMain.Lis, Flow_claim_id);
  Screen.Cursor := crDefault;
end;
procedure TfmLowClaimAdd.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;
procedure TfmLowClaimAdd.FormCreate(Sender: TObject);
begin
  Fcontract_id := -1;
end;
procedure TfmLowClaimAdd.cxButton1Click(Sender: TObject);
var  SP          : TADOStoredProc;
begin
  Screen.Cursor := crHourglass;
  SP := TADOStoredProc.Create(nil);
  SP.Connection := fmMain.Lis;
  SP.ProcedureName := 'sp_low_claim_modify';
  SP.Parameters.Refresh;
  SP.Parameters.ParamByName('@low_claim_id'   ).Value := Flow_claim_id;
  SP.Parameters.ParamByName('@type_action'   ).Value := Ftype_action;
  SP.Parameters.ParamByName('@low_claim_type').Value := Flow_claim_type;
  SP.Parameters.ParamByName('@contract_id'   ).Value := Fcontract_id;
  SP.Parameters.ParamByName('@low_claim_cod'  ).Value := cxTextEdit5.EditValue;
  SP.Parameters.ParamByName('@low_claim_date' ).Value := cxDateEdit1.Date;
  SP.Parameters.ParamByName('@court_name'    ).Value := cxTextEdit1.EditValue;
  SP.Parameters.ParamByName('@claim_sum'     ).Value := cxCurrencyEdit1.EditValue;
  SP.Parameters.ParamByName('@gos_fee_sum'   ).Value := cxCurrencyEdit2.EditValue;
  SP.Parameters.ParamByName('@court_num'     ).Value := cxtextEdit6.EditValue;
  SP.Parameters.ParamByName('@court_status'  ).Value := cxComboBox2.ItemIndex;
  SP.Parameters.ParamByName('@prepare_documents').Value := cxTextEdit7.EditValue;;
  SP.Parameters.ParamByName('@court_data'       ).Value := cxTextEdit8.EditValue;;
  SP.Parameters.ParamByName('@sum_1').Value := cxCurrencyEdit3.EditValue;
  SP.Parameters.ParamByName('@sum_2').Value := cxCurrencyEdit4.EditValue;
  SP.Parameters.ParamByName('@sum_3').Value := cxCurrencyEdit5.EditValue;
  SP.Parameters.ParamByName('@access_code').Value := cxTextEdit4.EditValue;
  SP.Parameters.ParamByName('@penalty_num').Value := cxTextEdit10.EditValue;
//  SP.Parameters.ParamByName('@sum_4').Value := cxCurrencyEdit6.EditValue;
  SP.Parameters.ParamByName('@sum_5').Value := cxCurrencyEdit7.EditValue;
  SP.Parameters.ParamByName('@sum_6').Value := cxCurrencyEdit8.EditValue;
  SP.Parameters.ParamByName('@sum_7').Value := cxCurrencyEdit9.EditValue;
  SP.Parameters.ParamByName('@comment').Value := Memo2.EditValue;
  SP.ExecProc;
  Flow_claim_id := SP.Parameters.ParamByName('@low_claim_id').Value;
  Screen.Cursor := crDefault;
end;

procedure TfmLowClaimAdd.cxButtonEdit2PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  fmContract := TfmContract.Create(Application, True, 0);
  fmContract.Visible := False;
  fmContract.Query_Contract.Locate('contract_id', Fcontract_id, [loCaseInsensitive]);
  if fmContract.ShowModal=mrOk then begin
    Fcontract_id := fmContract._GetContractID;
    cxButtonEdit2.EditValue := fmContract._GetFirmCustomerName;
    cxTextEdit3.Text := fmContract.Query_Contract.FieldByName('contract_cod').AsString;
    cxTextEdit2.Text := fmContract.Query_Contract.FieldByName('date_begin').AsString;
    cxTextEdit9.Text := fmContract.Query_Contract.FieldByName('firm_self_name').AsString;
  end;
end;

end.




