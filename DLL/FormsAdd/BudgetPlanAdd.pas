unit BudgetPlanAdd;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ADODB, StdCtrls, Buttons, ExtCtrls, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore,
  dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee,
  dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
  dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMetropolis, dxSkinMetropolisDark, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013DarkGray,
  dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinPumpkin, dxSkinSeven,
  dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus, dxSkinSilver,
  dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008, dxSkinTheAsphaltWorld,
  dxSkinsDefaultPainters, dxSkinValentine, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue, cxLabel, cxTextEdit, cxMaskEdit, cxButtonEdit,
  cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, cxDropDownEdit,
  cxCurrencyEdit, Default, Raznoe, Filter, cxClasses, cxPropertiesStore,
  dxSkinOffice2016Colorful, dxSkinOffice2016Dark, dxSkinVisualStudio2013Blue,
  dxSkinVisualStudio2013Dark, dxSkinVisualStudio2013Light, dxSkinTheBezier;

type
  TfmBudgetPlanAdd = class(TForm)
    Panel1: TPanel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Panel2: TPanel;
    cxButtonEdit4: TcxButtonEdit;
    cxLabel21: TcxLabel;
    cxCurrencyEdit4: TcxCurrencyEdit;
    cxComboBox1: TcxComboBox;
    cxComboBox2: TcxComboBox;
    DS_Currency: TDataSource;
    Query_Currency: TADOQuery;
    cxLookupComboBox5: TcxLookupComboBox;
    cxLabel1: TcxLabel;
    cxLabel2: TcxLabel;
    Label22: TLabel;
    cxTextEdit1: TcxTextEdit;
    cxTextEdit2: TcxTextEdit;
    cxTextEdit3: TcxTextEdit;
    Label16: TLabel;
    Label17: TLabel;
    cxTextEdit4: TcxTextEdit;
    cxTextEdit5: TcxTextEdit;
    cxPropertiesStore1: TcxPropertiesStore;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn1Click(Sender: TObject);
    procedure cxButtonEdit4PropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
  private
    Fconnect   : TADOConnection;
    Fbudget_id : integer;
    Fbudget_plan_id : integer;
    Fsubdivision_id : integer;

    procedure SetPlanDate(plan_date: TDateTime);
    function  GetPlanDate(): TDateTime;
    procedure SetBudgetId(budget_id: integer);
  public
    constructor CreateDLL(AOwner: TApplication; connect: TADOConnection); reintroduce;
    procedure SetUpdate(budget_id: integer; subdivision_id: integer; plan_period: TDateTime);
  published
    property _SetPlanDate : TDatetime write SetPlanDate;
    property _GetPlanDate : TDatetime read GetPlanDate;
    property _SetBudgetId : integer write SetBudgetId;
    property _GetBudgetPlanId : integer read Fbudget_plan_id;
  end;


var
  fmBudgetPlanAdd: TfmBudgetPlanAdd;

function CreateWndBudgetPlanAdd(AppHand: THandle; budget_id: integer; subdivision_id: integer; plan_period: TDateTime; connect: TADOConnection): variant; export;

implementation

{$R *.dfm}

function CreateWndBudgetPlanAdd(AppHand: THandle; budget_id: integer; subdivision_id: integer; plan_period: TDateTime; connect: TADOConnection): variant;
begin
  Application.Handle := AppHand;
  try
    fmBudgetPlanAdd := TfmBudgetPlanAdd.CreateDLL(Application, connect);
    fmBudgetPlanAdd.SetUpdate(budget_id, subdivision_id, plan_period);


    //-- изменить по мере необходимости возвращаемых параметров
    if  fmBudgetPlanAdd.ShowModal = mrOk then begin
      result := VarArrayOf([fmBudgetPlanAdd._GetBudgetPlanId, '']);
    end else begin
      result := VarArrayOf([-9, '']);
    end;
  finally
    fmBudgetPlanAdd.Free;
  end;
end;

procedure TfmBudgetPlanAdd.BitBtn1Click(Sender: TObject);
var sp_shp_budget_plan_modify : TADOStoredProc;
begin
  sp_shp_budget_plan_modify := TADOStoredProc.Create(nil);
  sp_shp_budget_plan_modify.Connection := Fconnect;
  sp_shp_budget_plan_modify.ProcedureName := 'sp_shp_budget_plan_modify';
  sp_shp_budget_plan_modify.Parameters.Refresh;
  sp_shp_budget_plan_modify.Parameters.ParamByName('@budget_plan_id' ).Value := null;
  sp_shp_budget_plan_modify.Parameters.ParamByName('@type_action'    ).Value := 3;
  sp_shp_budget_plan_modify.Parameters.ParamByName('@budget_id'      ).Value := Fbudget_id;
  sp_shp_budget_plan_modify.Parameters.ParamByName('@subdivision_id' ).Value := Fsubdivision_id;
  sp_shp_budget_plan_modify.Parameters.ParamByName('@plan_period'    ).Value := _GetPlanDate;
  sp_shp_budget_plan_modify.Parameters.ParamByName('@plan_sum'       ).Value := cxCurrencyEdit4.EditValue;
  sp_shp_budget_plan_modify.Parameters.ParamByName('@currency_id'    ).Value := cxLookupComboBox5.EditValue;
  sp_shp_budget_plan_modify.ExecProc;

  Fbudget_plan_id := sp_shp_budget_plan_modify.Parameters.ParamByName('@budget_plan_id').Value;

  sp_shp_budget_plan_modify.Free;
end;

constructor TfmBudgetPlanAdd.CreateDLL(AOwner: TApplication; connect: TADOConnection);
begin
  Screen.Cursor := crHourglass;
  inherited Create(AOwner);
  Fconnect := connect;

  Fbudget_id      := -9;
  Fbudget_plan_id := -9;
  Fsubdivision_id := -9;

  Query_Currency.Connection := Fconnect;
  Query_Currency.Open;
  Query_Currency.Locate('currency_id', 3, []);
  cxLookupComboBox5.EditValue := Query_Currency.FieldByName('currency_id').AsInteger;


  _SetPlanDate := Date;

  Screen.Cursor := crDefault;
end;

procedure TfmBudgetPlanAdd.cxButtonEdit4PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
var Q: TADOQuery;
begin
  case AButtonIndex of
  0 : begin
        Q := TADOQuery.Create(nil);
        Q.Connection := Fconnect;
        Q.SQL.Add('SELECT * FROM inf_obj WHERE type_inf_id = 147');
        Q.Open;

        fmFilter := TfmFilter.Create(0, Q, 'inf_obj_id', 'inf_obj_cod', 'inf_obj_name');
        fmFilter._SetSubdivision := True;
        if fmFilter.ShowModal = mrOk then begin
          Fsubdivision_id    := fmFilter.GetId;
          cxButtonEdit4.Text := fmFilter.GetName;
        end;
        Q.Free;
      end;
  1 : begin
        Fsubdivision_id    := -9;
        cxButtonEdit4.Text := '';
      end;
  end;
end;

procedure TfmBudgetPlanAdd.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TfmBudgetPlanAdd.SetPlanDate(plan_date: TDateTime);
begin
  cxComboBox1.ItemIndex := StrToInt(FormatDateTime('m', plan_date))-1;
  cxComboBox2.ItemIndex := cxComboBox2.Properties.Items.IndexOf(FormatDateTime('yyyy', plan_date));
end;

procedure TfmBudgetPlanAdd.SetBudgetId(budget_id: integer);
var Q: TADOQuery;
    str_budget : string;
     parent_id : integer;
begin
  Fbudget_id := budget_id;

  Q := TADOQuery.Create(nil);
  Q.Connection := Fconnect;
  Q.SQL.Add('SELECT * FROM view_shp_budget WHERE budget_id = ' + IntToStr(Fbudget_id));
  Q.Open;

  cxTextEdit5.EditValue := Q.FieldByName('budget_name').Value;
  cxTextEdit1.EditValue := Q.FieldByName('budget_cod').Value;
  cxTextEdit2.EditValue := Q.FieldByName('budget_parent_cod').Value;
  cxTextEdit4.EditValue := Q.FieldByName('budget_type_name').Value;

  str_budget := Q.FieldByName('budget_parent_name').AsString;
  parent_id  := iif(Q.FieldByName('budget_parent_id').IsNull, -9, Q.FieldByName('budget_parent_id').AsInteger);
  while parent_id <> -9 do begin
    Q.SQL.Clear;
    Q.SQL.Add('SELECT * FROM view_shp_budget WHERE budget_id = ' + IntToStr(parent_id));
    Q.Open;
    if not Q.FieldByName('budget_parent_name').IsNull then str_budget := Q.FieldByName('budget_parent_name').AsString + ' \ ' + str_budget;
    parent_id  := iif(Q.FieldByName('budget_parent_id').IsNull, -9, Q.FieldByName('budget_parent_id').AsInteger);
  end;

  cxTextEdit3.EditValue := str_budget;


  Q.Free;
end;

//procedure TfmBudgetPlanAdd.SetUpdate(budget_plan_id: integer);
procedure TfmBudgetPlanAdd.SetUpdate(budget_id: integer; subdivision_id: integer; plan_period: TDateTime);
var Q : TADOQuery;
    budget_plan_id : integer;
begin
  Q := TADOQuery.Create(nil);
  Q.Connection := Fconnect;
  Q.SQL.Add('SELECT top 1 * FROM view_shp_budget_plan WHERE budget_id = ' + IntToStr(budget_id) + ' and subdivision_id = ' + IntToStr(subdivision_id));
  Q.SQL.Add('and convert(varchar(6),plan_period,112) = '''+FormatDateTime('yyyymm',plan_period)+'''');
  Q.Open;

  if Q.RecordCount = 1 then begin
    _SetBudgetId                := Q.FieldByName('budget_id').Value;
    Fsubdivision_id             := Q.FieldByName('subdivision_id').AsInteger;
    cxButtonEdit4.Text          := Q.FieldByName('subdivision_name').Value;
    _SetPlanDate                := Q.FieldByName('plan_period').AsDateTime;
    cxCurrencyEdit4.EditValue   := Q.FieldByName('plan_sum').Value;
    cxLookupComboBox5.EditValue := Q.FieldByName('currency_id').Value;
  end else begin
    _SetBudgetId                := budget_id;
    Fsubdivision_id             := subdivision_id;
    Q.SQL.Clear;
    Q.SQL.Add('SELECT * FROM inf_obj WHERE inf_obj_id = ' + IntToStr(Fsubdivision_id));
    Q.Open;
    cxButtonEdit4.Text          := Q.FieldByName('inf_obj_name').Value;
    _SetPlanDate                := plan_period;
    cxCurrencyEdit4.EditValue   := 0;
    cxLookupComboBox5.EditValue := 3;
  end;

  Q.Free;
end;

function TfmBudgetPlanAdd.GetPlanDate(): TDateTime;
begin
  Result := StrToDate('15' + FormatSettings.DateSeparator + IntToStr(cxComboBox1.ItemIndex+1) + FormatSettings.DateSeparator + cxComboBox2.Text);
end;

end.
