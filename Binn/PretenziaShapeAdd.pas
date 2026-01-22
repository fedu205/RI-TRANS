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
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cxDBButtonEdit1PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure FormCreate(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
  private
    Fpretenzia_shape_id : integer;
    Faction : boolean;
    Ftype_action : Integer;
    Fcontract_id: integer;
    procedure SetUpdate(pretenzia_shape_id : integer);
  public
    constructor Create(AOwner: TApplication; type_pay:byte; action: boolean);
    property _GetPretenziaShapeId : integer read Fpretenzia_shape_id;
    property _SetUpdate : integer write SetUpdate;
    procedure _SetInsert;
  end;

var
  fmPretenziaShapeAdd: TfmPretenziaShapeAdd;

implementation
      uses Main, Raznoe, Contract, ClientInvoice;
{$R *.DFM}

constructor TfmPretenziaShapeAdd.Create(AOwner: TApplication; type_pay:byte; action: boolean);
begin
  Screen.Cursor := crHourglass;
  inherited Create(AOwner);
  Faction    := action;
  Ftype_action := 0;


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

procedure TfmPretenziaShapeAdd.SetUpdate(pretenzia_shape_id : integer);
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

    cxDateEdit1.Date := Q.FieldByName('pretenzia_date').AsDatetime;

    Query_Contract.Close;
    Query_Contract.Parameters.ParamByName('date_current').Value := varEmpty;
    Query_Contract.Open;
    Query_Contract.Locate('contract_id', Q.FieldByName('contract_id').AsInteger, []);

    Fcontract_id := Q['contract_id'];
    cxTextEdit2.Text := Q.FieldByName('contract_cod').AsString;
    cxTextEdit3.Text := Q.FieldByName('firm_self_name').AsString;
    Memo2.EditValue    := Q.FieldByName('comment').Value;
    cxCurrencyEdit1.EditValue := Q.FieldByName('pretenzia_sum').Value;


  finally
    Q.Free;
  end;

  MonitorEventFormOpen('UPDATE_FORM', self.Name, fmMain.Lis, Fpretenzia_shape_id);
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
  SP_PayModify.Parameters.ParamByName('@type_action'       ).Value := Ftype_action;
  SP_PayModify.Parameters.ParamByName('@pretenzia_shape_id').Value := Fpretenzia_shape_id;
  SP_PayModify.Parameters.ParamByName('@contract_id'       ).Value := Fcontract_id;
  SP_PayModify.Parameters.ParamByName('@pretenzia_date'    ).Value := cxDateEdit1.Date;
  SP_PayModify.Parameters.ParamByName('@pretenzia_sum'     ).Value := cxCurrencyEdit1.EditValue;
  SP_PayModify.Parameters.ParamByName('@comment'           ).Value := Memo2.EditValue;

  SP_PayModify.ExecProc;
  Fpretenzia_shape_id := SP_PayModify.Parameters.ParamByName('@pay_id').Value;

  Screen.Cursor := crDefault;
end;

end.









