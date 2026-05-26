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
    cxDBButtonEdit1: TcxDBButtonEdit;
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
    cxDateEdit5: TcxDateEdit;
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
    cxCurrencyEdit6: TcxCurrencyEdit;
    Label19: TLabel;
    Label20: TLabel;
    cxCurrencyEdit7: TcxCurrencyEdit;
    cxCurrencyEdit8: TcxCurrencyEdit;
    Label21: TLabel;
    Label3: TLabel;
    cxCurrencyEdit9: TcxCurrencyEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cxDBButtonEdit1PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure FormCreate(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure cxCurrencyEdit3PropertiesChange(Sender: TObject);
    procedure cxCurrencyEdit6PropertiesChange(Sender: TObject);
  private
    Fpretenzia_shape_id : integer;
    Fpretenzia_type : integer;
    Faction : boolean;
    Ftype_action : Integer;
    Fcontract_id: integer;
    procedure SetUpdate(pretenzia_shape_id : integer);
  public
    constructor Create(AOwner: TApplication; action: boolean; pretenzia_type: integer);
    property _GetPretenziaShapeId : integer read Fpretenzia_shape_id;
    property _SetUpdate : integer write SetUpdate;
    procedure _SetInsert;
  end;

var
  fmLowClaimAdd: TfmLowClaimAdd;

implementation
      uses Main, Raznoe, Contract, ClientInvoice;
{$R *.DFM}

constructor TfmLowClaimAdd.Create(AOwner: TApplication; action: boolean; pretenzia_type: integer);
begin
  Screen.Cursor := crHourglass;
  inherited Create(AOwner);
  Faction    := action;
  Ftype_action := 0;
  Fpretenzia_type := pretenzia_type;


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

procedure TfmLowClaimAdd.SetUpdate(pretenzia_shape_id : integer);
var Q : TADOQuery;
begin
  Screen.Cursor := crHourglass;
  Ftype_action := 1;
  Fpretenzia_shape_id := pretenzia_shape_id;
  Caption := Caption + ' (' + IntToStr(Fpretenzia_shape_id) + ')';

  try
    Q := TADOQuery.Create(nil);
    Q.Connection := fmMain.Lis;
    Q.SQL.Add('SELECT * FROM view_pretenzia_shape WHERE pretenzia_shape_id='+IntToStr(Fpretenzia_shape_id));
    Q.Open;

    Fpretenzia_type := Q.FieldByName('pretenzia_type').AsInteger;
    cxDateEdit1.Date := Q.FieldByName('pretenzia_date').AsDatetime;

    Query_Contract.Close;
    Query_Contract.Open;
    Query_Contract.Locate('contract_id', Q.FieldByName('contract_id').AsInteger, []);

    Fcontract_id := Q['contract_id'];
    cxTextEdit1.Text := Q.FieldByName('pretenzia_cod').AsString;
    cxTextEdit2.Text := Q.FieldByName('contract_cod').AsString;
    cxTextEdit3.Text := Q.FieldByName('firm_self_name').AsString;
    Memo2.EditValue    := Q.FieldByName('comment').Value;
    cxCurrencyEdit1.EditValue := Q.FieldByName('pretenzia_sum').Value;

//    cxTextEdit4.EditValue := Q.FieldByName('pretenzia_our_cod').AsString;
//    cxDateEdit2.EditValue := Q.FieldByName('pretenzia_our_date').Value;
//    cxDateEdit3.EditValue := Q.FieldByName('stay_date_begin').Value;
//    cxDateEdit4.EditValue := Q.FieldByName('stay_date_end').Value;
//    cxComboBox1.ItemIndex := Q.FieldByName('stay_type').AsInteger;

  finally
    Q.Free;
  end;

  MonitorEventFormOpen('UPDATE_FORM', self.Name, fmMain.Lis, Fpretenzia_shape_id);
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

procedure TfmLowClaimAdd.cxDBButtonEdit1PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
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

procedure TfmLowClaimAdd.cxButton1Click(Sender: TObject);
var  SP          : TADOStoredProc;
begin
  Screen.Cursor := crHourglass;

  SP := TADOStoredProc.Create(nil);
  SP.Connection := fmMain.Lis;
  SP.ProcedureName := 'sp_lowclaim_modify';
  SP.Parameters.Refresh;

  SP.Parameters.ParamByName('@lowclaim_id'   ).Value := Flowclaim_id;
  SP.Parameters.ParamByName('@type_action'   ).Value := Ftype_action;
  SP.Parameters.ParamByName('@lowclaim_type').Value := Flowclaim_type;
  SP.Parameters.ParamByName('@contract_id'   ).Value := Fcontract_id;
  SP.Parameters.ParamByName('@lowclaim_cod'  ).Value := cxTextEdit5.Text;
  SP.Parameters.ParamByName('@lowclaim_date' ).Value := cxDateEdit1.Date;
  SP.Parameters.ParamByName('@court_name'    ).Value := cxTextEdit1.Date;
  SP.Parameters.ParamByName('@claim_sum'     ).Value := cxCurrencyEdit1.EditValue;
  SP.Parameters.ParamByName('@gos_fee_sum'   ).Value := cxCurrencyEdit2.EditValue;
  SP.Parameters.ParamByName('@court_num'     ).Value := cxtextEdit6.EditValue
  SP.Parameters.ParamByName('@court_status'  ).Value := cxComboBox2.ItemIndex;

  SP.Parameters.ParamByName('@prepare_documents').Value := cxTextEdit7.EditValue;;
  SP.Parameters.ParamByName('@court_data'       ).Value := cxTextEdit8.EditValue;;

  SP.Parameters.ParamByName('@sum_1').Value := cxCurrencyEdit3.EditValue;
  SP.Parameters.ParamByName('@sum_2').Value := cxCurrencyEdit4.EditValue;
  SP.Parameters.ParamByName('@sum_3').Value := cxCurrencyEdit5.EditValue;
  SP.Parameters.ParamByName('@access_code').Value := cxTextEdit4.EditValue;
  SP.Parameters.ParamByName('@sum_4').Value := cxCurrencyEdit6.EditValue;
  SP.Parameters.ParamByName('@sum_5').Value := cxCurrencyEdit7.EditValue;
  SP.Parameters.ParamByName('@sum_6').Value := cxCurrencyEdit8.EditValue;
  SP.Parameters.ParamByName('@sum_7').Value := cxCurrencyEdit9.EditValue;

  SP.Parameters.ParamByName('@comment').Value := Memo2.EditValue;
end;
  SP.ExecProc;
  Fpretenzia_shape_id := SP.Parameters.ParamByName('@lowclaim_id').Value;

  Screen.Cursor := crDefault;
end;

eprocedure TfmLowClaimAdd.cxCurrencyEdit3PropertiesChange(Sender: TObject);
begin

eprocedure TfmLowClaimAdd.cxCurrencyEdit6PropertiesChange(Sender: TObject);
begin

end;

nd;

nd.









