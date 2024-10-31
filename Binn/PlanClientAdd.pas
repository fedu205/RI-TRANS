unit PlanClientAdd;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Raznoe,
  Dialogs, cxGraphics, cxTextEdit, cxDropDownEdit, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox,
  cxDBEdit, cxCalendar, cxControls, cxContainer, cxEdit, cxMaskEdit, cxButtonEdit, StdCtrls,
  Buttons, ExtCtrls, cxCurrencyEdit, DB, ADODB, cxPropertiesStore, DBClient,Default,
  cxLookAndFeels, cxLookAndFeelPainters, Vcl.ComCtrls, dxCore, cxDateUtils,
  cxClasses, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMetropolis, dxSkinMetropolisDark, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue, dxSkinOffice2010Silver,
  dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinOffice2016Colorful, dxSkinOffice2016Dark, dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic, dxSkinSharp,
  dxSkinSharpPlus, dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008, dxSkinTheAsphaltWorld, dxSkinsDefaultPainters, dxSkinValentine, dxSkinVisualStudio2013Blue,
  dxSkinVisualStudio2013Dark, dxSkinVisualStudio2013Light, dxSkinVS2010, dxSkinWhiteprint, dxSkinXmas2008Blue, dxSkinTheBezier, Vcl.Menus, cxButtons,
  dxSkinOffice2019Colorful;

type
  TfmPlanClientAdd = class(TForm)
    Panel2: TPanel;
    Panel1: TPanel;
    Query_Currency: TADOQuery;
    DS_Currency: TDataSource;
    Query_Client: TADOQuery;
    DS_Client: TDataSource;
    Query_Node: TADOQuery;
    Query_Ed_Izm: TADOQuery;
    DS_Ed_Izm: TDataSource;
    cxPropertiesStore1: TcxPropertiesStore;
    Query_Rate: TADOQuery;
    DS_Rate: TDataSource;
    GroupBox1: TGroupBox;
    cxButtonEdit2: TcxButtonEdit;
    cxButtonEdit4: TcxButtonEdit;
    Label3: TLabel;
    cxButtonEdit3: TcxButtonEdit;
    cxButtonEdit5: TcxButtonEdit;
    cxButtonEdit6: TcxButtonEdit;
    cxButtonEdit7: TcxButtonEdit;
    Label4: TLabel;
    Label5: TLabel;
    GroupBox2: TGroupBox;
    Label2: TLabel;
    Label1: TLabel;
    Label6: TLabel;
    Label8: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    cxDateEdit1: TcxDateEdit;
    cxLookupComboBox1: TcxLookupComboBox;
    cxButtonEdit8: TcxButtonEdit;
    cxCurrencyEdit4: TcxCurrencyEdit;
    cxCurrencyEdit1: TcxCurrencyEdit;
    cxCurrencyEdit3: TcxCurrencyEdit;
    cxButtonEdit1: TcxButtonEdit;
    cxLookupComboBox3: TcxLookupComboBox;
    cxLookupComboBox2: TcxLookupComboBox;
    cxCurrencyEdit5: TcxCurrencyEdit;
    Label9: TLabel;
    Label7: TLabel;
    cxButtonEdit9: TcxButtonEdit;
    Label12: TLabel;
    cxButtonEdit10: TcxButtonEdit;
    Label13: TLabel;
    Label14: TLabel;
    cxLookupComboBox4: TcxLookupComboBox;
    cxButtonEdit11: TcxButtonEdit;
    DS_Agent: TDataSource;
    Query_Agent: TADOQuery;
    cxButton1: TcxButton;
    cxButton3: TcxButton;
    procedure cxCurrencyEdit3PropertiesEditValueChanged(Sender: TObject);
    procedure cxButtonEdit8PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure cxCurrencyEdit4PropertiesEditValueChanged(Sender: TObject);
    procedure cxLookupComboBox1PropertiesEditValueChanged(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cxLookupComboBox4PropertiesEditValueChanged(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
  private
    Fplan_client_id : integer;
    Ftype_action : integer;
    Fplan_client_rate_id : integer;
    Fset_auto_calc : Boolean;
    Fset_correct_sum : Boolean;

    procedure SetUpdate(plan_client_id: integer);
    procedure CalcClientSum();
    function  CheckClientSum(plan_client_sum: currency): boolean;
  public
    constructor Create(AOwner: TApplication);
  published
    property _SetUpdate : integer write SetUpdate;
    property _GetPlanClientId : integer read Fplan_client_id;
  end;

var
  fmPlanClientAdd: TfmPlanClientAdd;

implementation
   uses PlanClient, Filter, main;
{$R *.dfm}

{ TfmPalnClientAdd }

constructor TfmPlanClientAdd.Create(AOwner: TApplication);
begin
  inherited Create(AOwner);
  Screen.Cursor := crHourglass;
  Ftype_action := 0;
  Fplan_client_id := -9;

  Fset_auto_calc   := False;
  Fset_correct_sum := True;

  cxDateEdit1.EditValue := Date;
  Query_Client.Open;
  cxLookupComboBox1.EditValue := Query_Client.FieldByName('contract_id').Value;
  cxDateEdit1.EditValue := Date;

  Query_Agent.Open;
  cxLookupComboBox4.EditValue := Query_Agent.FieldByName('contract_id').Value;

  Query_Currency.Open;

  Query_Ed_Izm.Open;

  Fset_auto_calc := True;

  MonitorEventFormOpen('OPEN_FORM', self.Name, fmMain.Lis, -9);
  Screen.Cursor := crDefault;
end;

procedure TfmPlanClientAdd.cxButton1Click(Sender: TObject);
var  SP : TADOStoredProc;
begin
  Screen.Cursor := crHourglass;
  if VarIsNull(cxDateEdit1.EditValue) then begin
    Application.MessageBox('Не указана дата.','Внимание',MB_OK+MB_ICONERROR);
    ModalResult := mrNone;
    Screen.Cursor := crDefault;
    exit;
  end;

  if Fplan_client_rate_id = -9 then begin
    Application.MessageBox('Не указана "Ставка".','Внимание',MB_OK+MB_ICONERROR);
    ModalResult := mrNone;
    Screen.Cursor := crDefault;
    exit;
  end;


  SP := TADOStoredProc.Create(nil);
  SP.Connection := fmMain.Lis;
  SP.ProcedureName := 'sp_plan_client_modify';
  SP.Parameters.Refresh;

  SP.Parameters.ParamByName('@type_action').Value     :=  Ftype_action;
  SP.Parameters.ParamByName('@plan_client_id').Value  := iif(Fplan_client_id = -9, null, Fplan_client_id);
  SP.Parameters.ParamByName('@plan_date').Value       := cxDateEdit1.EditValue;
  SP.Parameters.ParamByName('@plan_client_rate_id').Value := Fplan_client_rate_id;
  SP.Parameters.ParamByName('@contract_id').Value  := cxLookupComboBox1.EditValue;
  SP.Parameters.ParamByName('@currency_id').Value  := cxLookupComboBox2.EditValue;
  SP.Parameters.ParamByName('@contract_agent_id').Value  := cxLookupComboBox4.EditValue;

  SP.ExecProc;

  Fplan_client_id := SP.Parameters.ParamByName('@plan_client_id').Value;

  SP.Free;
  Screen.Cursor := crDefault;

end;

procedure TfmPlanClientAdd.cxButtonEdit8PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  case AButtonIndex of
    0 : begin
          Query_Rate.Close;
          Query_Rate.Parameters.ParamByName('contract_id').Value := cxLookupComboBox1.EditValue;
          Query_Rate.Parameters.ParamByName('date1').Value := cxDateEdit1.EditValue;
          Query_Rate.Open;
          fmFilter := TfmFilter.Create(0, Query_Rate, 'plan_client_rate_id', 'node_begin_name', 'node_end_name');
          fmFilter._SetRate := True;
            if fmFilter.ShowModal=mrOk then begin
              Query_Rate.Locate('plan_client_rate_id', fmFilter.GetId, []);
              cxLookupComboBox2.EditValue := Query_Rate.FieldByName('currency_id').Value;
              cxLookupComboBox3.EditValue := Query_Rate.FieldByName('ed_izm_id').Value;
              cxButtonEdit2.EditValue := Query_Rate.FieldByName('node_begin_name').Value;
              cxButtonEdit3.EditValue := Query_Rate.FieldByName('node_end_name').Value;
              cxButtonEdit5.EditValue := Query_Rate.FieldByName('kargoETSNG_name').Value;
              cxButtonEdit4.EditValue := Query_Rate.FieldByName('node_begin_cod').AsString;
              cxButtonEdit6.EditValue := Query_Rate.FieldByName('node_end_cod').AsString;
              cxButtonEdit7.EditValue := Query_Rate.FieldByName('kargoETSNG_cod').AsString;
              cxButtonEdit9.EditValue := Query_Rate.FieldByName('type_rate_name').AsString;
              cxButtonEdit10.EditValue := Query_Rate.FieldByName('type_plan_client_name').AsString;
              cxButtonEdit8.EditValue := FormatFloat('#,####0.0000',Query_Rate.FieldByName('plan_rate').AsFloat);
              Fplan_client_rate_id := fmFilter.GetId;
            end;
          end;
    1 : begin
        cxLookupComboBox2.EditValue := NULL;
        cxLookupComboBox3.EditValue := NULL;

        cxButtonEdit2.EditValue := '';
        cxButtonEdit3.EditValue := '';
        cxButtonEdit5.EditValue := '';

        cxButtonEdit4.EditValue := '';
        cxButtonEdit6.EditValue := '';
        cxButtonEdit7.EditValue := '';

        Fplan_client_rate_id := -9;
        cxCurrencyEdit1.EditValue := 0;
        cxButtonEdit8.EditValue := '0,00';
        cxCurrencyEdit3.EditValue := 0;
        cxCurrencyEdit4.EditValue := 0;
        cxCurrencyEdit5.EditValue := 0;
        end;
  end;
  CalcClientSum();
end;

procedure TfmPlanClientAdd.cxLookupComboBox1PropertiesEditValueChanged(Sender: TObject);
begin
  Query_Client.Locate('contract_id', cxLookupComboBox1.EditValue, []);
  cxButtonEdit1.EditText := Query_Client.FieldByName('contract_cod').AsString;
  cxButtonEdit8PropertiesButtonClick(Sender, 1);
end;

procedure TfmPlanClientAdd.cxLookupComboBox4PropertiesEditValueChanged(Sender: TObject);
begin
  if Query_Agent.Locate('contract_id', cxLookupComboBox4.EditValue, []) then
    cxButtonEdit11.EditText := Query_Agent.FieldByName('contract_cod').AsString
  else
    cxButtonEdit11.EditText := '';
end;

procedure TfmPlanClientAdd.SetUpdate(plan_client_id: integer);
var Q : TADOQuery;
begin
  Screen.Cursor := crHourglass;

  Fset_auto_calc := False;
  Fplan_client_id := plan_client_id;
  Ftype_action := 1;

  Q := TADOQuery.Create(nil);
  Q.Connection := fmMain.Lis;
  Q.SQL.Add('SELECT * FROM view_plan_client_rights WHERE plan_client_id=' + IntToStr(Fplan_client_id));
  Q.Open;
  cxDateEdit1.EditValue := Q.FieldByName('plan_date').Value;
  cxLookupComboBox1.EditValue := Q.FieldByName('contract_id').Value;
  cxLookupComboBox2.EditValue := Q.FieldByName('currency_id').Value;
  cxLookupComboBox3.EditValue := Q.FieldByName('ed_izm_id').Value;
  cxLookupComboBox4.EditValue := Q.FieldByName('contract_agent_id').Value;

  cxButtonEdit2.EditValue := Q.FieldByName('node_begin_name').Value;
  cxButtonEdit3.EditValue := Q.FieldByName('node_end_name').Value;
  cxButtonEdit5.EditValue := Q.FieldByName('kargoETSNG_name').Value;

  cxButtonEdit4.EditValue := Q.FieldByName('node_begin_cod').AsString;
  cxButtonEdit6.EditValue := Q.FieldByName('node_end_cod').AsString;
  cxButtonEdit7.EditValue := Q.FieldByName('kargoETSNG_cod').AsString;

  Fplan_client_rate_id :=iif(VarIsNull(Q.FieldByName('plan_client_rate_id').Value), -9, Q.FieldByName('plan_client_rate_id').Value);
  cxButtonEdit8.EditValue := FormatFloat('#,##0.00',Q.FieldByName('plan_rate').AsFloat);
  cxCurrencyEdit3.EditValue := Q.FieldByName('plan_ZFTO_sum').Value;
  cxCurrencyEdit4.EditValue := Q.FieldByName('plan_weight').Value;
  cxCurrencyEdit5.EditValue := Q.FieldByName('plan_count').Value;
  cxCurrencyEdit1.EditValue := Q.FieldByName('plan_client_sum').Value;
  cxButtonEdit9.EditValue   := Q.FieldByName('type_rate_name').AsString;
  cxButtonEdit10.EditValue  := Q.FieldByName('type_plan_client_name').AsString;


//  Fset_correct_sum := CheckClientSum(Q.FieldByName('plan_client_sum').AsFloat);
//
//  if Fset_correct_sum = False then begin
//    BitBtn1.Enabled := False;
//  end;

  Fset_auto_calc := True;
  CalcClientSum();

  Q.Free;

  MonitorEventFormOpen('UPDATE_FORM', self.Name, fmMain.Lis, Fplan_client_id);
  Screen.Cursor := crDefault;
end;

procedure TfmPlanClientAdd.cxCurrencyEdit3PropertiesEditValueChanged(Sender: TObject);
begin
  CalcClientSum;
end;

procedure TfmPlanClientAdd.cxCurrencyEdit4PropertiesEditValueChanged(Sender: TObject);
begin
  CalcClientSum;
end;

procedure TfmPlanClientAdd.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TfmPlanClientAdd.CalcClientSum;
var SP : TADOStoredProc;
begin
  if (Fset_auto_calc = True) AND (Fset_correct_sum = True) then begin
    if (Fplan_client_id <> -9) AND (Fplan_client_rate_id <> -9) then begin
      SP := TADOStoredProc.Create(nil);
      SP.Connection := fmMain.Lis;
      SP.ProcedureName := 'sp_plan_client_CALC';
      SP.Parameters.Refresh;
      SP.Parameters.ParamByName('@plan_client_id'     ).Value := Fplan_client_id;
      SP.Parameters.ParamByName('@plan_client_rate_id').Value := Fplan_client_rate_id;
      SP.ExecProc;
      cxCurrencyEdit1.EditValue := SP.Parameters.ParamByName('@plan_client_sum').Value;
      cxCurrencyEdit5.EditValue := SP.Parameters.ParamByName('@fact_cnt').Value;
      cxCurrencyEdit4.EditValue := SP.Parameters.ParamByName('@fact_weight').Value;
      cxCurrencyEdit3.EditValue := SP.Parameters.ParamByName('@transport_pay').Value;
    end else begin
      cxCurrencyEdit1.EditValue := 0;
      cxCurrencyEdit5.EditValue := 0;
      cxCurrencyEdit4.EditValue := 0;
      cxCurrencyEdit3.EditValue := 0;
    end;
  end;
end;


function TfmPlanClientAdd.CheckClientSum(plan_client_sum: currency): boolean;
var SP : TADOStoredProc;
begin
  SP := TADOStoredProc.Create(nil);
  SP.Connection := fmMain.Lis;
  SP.ProcedureName := 'sp_plan_client_CALC';
  SP.Parameters.Refresh;
  SP.Parameters.ParamByName('@plan_client_id'     ).Value := Fplan_client_id;
  SP.Parameters.ParamByName('@plan_client_rate_id').Value := Fplan_client_rate_id;
  SP.ExecProc;

  if SP.Parameters.ParamByName('@plan_client_sum').Value <> plan_client_sum then Result := False
  else Result := True;
end;

end.

