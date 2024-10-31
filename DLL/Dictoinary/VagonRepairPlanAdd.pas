unit VagonRepairPlanAdd;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, cxPropertiesStore, DB, ADODB, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxContainer,
  cxEdit, cxMemo, cxCurrencyEdit, cxTextEdit, cxCheckBox, cxDropDownEdit, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, cxMaskEdit,
  cxButtonEdit, DBClient, cxCalendar, DateUtils, Vcl.ComCtrls, dxCore, cxDateUtils, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint,
  dxSkinCaramel, dxSkinCoffee, dxSkinDarkroom, dxSkinDarkSide, dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin,
  dxSkinMetropolis, dxSkinMetropolisDark, dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013DarkGray,
  dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinOffice2016Colorful, dxSkinOffice2016Dark, dxSkinPumpkin, dxSkinSeven,
  dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus, dxSkinSilver, dxSkinSpringtime, dxSkinStardust, dxSkinSummer2008, dxSkinTheAsphaltWorld,
  dxSkinTheBezier, dxSkinsDefaultPainters, dxSkinValentine, dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark, dxSkinVisualStudio2013Light,
  dxSkinVS2010, dxSkinWhiteprint, dxSkinXmas2008Blue, Vcl.Menus, cxButtons;

type
  TfmVagonRepairPlanAdd = class(TForm)
    Panel2: TPanel;
    Panel1: TPanel;
    Label2: TLabel;
    GroupBox1: TGroupBox;
    cxMemo1: TcxMemo;
    Label1: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    GroupBox2: TGroupBox;
    cxCurrencyEdit1: TcxCurrencyEdit;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    cxCurrencyEdit2: TcxCurrencyEdit;
    Label13: TLabel;
    cxCurrencyEdit3: TcxCurrencyEdit;
    cxCurrencyEdit4: TcxCurrencyEdit;
    cxCurrencyEdit5: TcxCurrencyEdit;
    cxCurrencyEdit6: TcxCurrencyEdit;
    cxCurrencyEdit7: TcxCurrencyEdit;
    cxCurrencyEdit8: TcxCurrencyEdit;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    cxCurrencyEdit10: TcxCurrencyEdit;
    cxCurrencyEdit11: TcxCurrencyEdit;
    cxCurrencyEdit12: TcxCurrencyEdit;
    cxCurrencyEdit9: TcxCurrencyEdit;
    cxButtonEdit2: TcxButtonEdit;
    cxLookupComboBox3: TcxLookupComboBox;
    cxLookupComboBox1: TcxLookupComboBox;
    DS_Type_Repair: TDataSource;
    Query_Type_Repair: TADOQuery;
    ClientDataSet1: TClientDataSet;
    ClientDataSet1node_begin_id: TIntegerField;
    ClientDataSet1node_begin_cod: TStringField;
    ClientDataSet1node_begin_name: TStringField;
    Query_Depo: TADOQuery;
    DS_Depo: TDataSource;
    Label14: TLabel;
    cxDateEdit1: TcxDateEdit;
    cxButton3: TcxButton;
    cxButton1: TcxButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cxButtonEdit2PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure cxDateEdit1PropertiesEditValueChanged(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
  private
    Ffact_repair_plan_id : integer;
    Ftype_action    : integer;
    Fnode_begin_id  : integer;
    procedure SetUpdate(fact_repair_plan_id: integer);
  public
    constructor Create(Aowner: TApplication);
  published
    property _GetFact_repair_plan_id : integer read Ffact_repair_plan_id;
    property _SetUpdate : integer write SetUpdate;
  end;

var
  fmVagonRepairPlanAdd: TfmVagonRepairPlanAdd;

implementation
  uses VagonRepairPlan, Raznoe;
{$R *.dfm}

constructor TfmVagonRepairPlanAdd.Create(Aowner: TApplication);
begin
  Screen.Cursor := crHourglass;

  inherited Create(Aowner);
  Ftype_action := 0;
  Ffact_repair_plan_id := -9;
  Fnode_begin_id := -9;
  ClientDataSet1.CreateDataSet;
  Query_Type_Repair.Open;
  cxLookupComboBox3.EditValue :=  Query_Type_Repair.FieldByName('inf_obj_id').Value;
  Query_Depo.Open;
  cxLookupComboBox1.EditValue :=  Query_Depo.FieldByName('inf_obj_id').Value;
  cxDateEdit1.EditValue := StartOfTheMonth(IncMonth(Date));

  SetUsersModuleRights(self, fmVagonRepairPlan.ADOVagonRepairPlan);

  MonitorEventFormOpen('OPEN_FORM', self.Name, fmVagonRepairPlan.ADOVagonRepairPlan, -9);

  Screen.Cursor := crDefault;
end;

procedure TfmVagonRepairPlanAdd.cxButton1Click(Sender: TObject);
var SP : TADOStoredProc;
begin

  if VarIsNullDate(cxDateEdit1.EditValue) then begin
      Application.MessageBox('ÕÂ Á‡‰‡Ì ÔÂËÓ‰!', '¬Õ»Ã¿Õ»≈', MB_OK);
      ModalResult := mrNone;
      exit;
  end;

  Screen.Cursor := crHourglass;
  SP := TADOStoredProc.Create(nil);
  SP.Connection := fmVagonRepairPlan.ADOVagonRepairPlan;
  SP.ProcedureName := 'sp_fact_repair_plan_modify;1';
  SP.Parameters.Refresh;

  SP.Parameters.ParamByName('@date_begin'         ).Value := cxDateEdit1.EditValue;
  SP.Parameters.ParamByName('@fact_repair_plan_id').Value := Ffact_repair_plan_id;
  SP.Parameters.ParamByName('@type_action'        ).Value := Ftype_action;
  SP.Parameters.ParamByName('@node_id'            ).Value := iif(Fnode_begin_id=-9, null, Fnode_begin_id);
  SP.Parameters.ParamByName('@depo_id'            ).Value := cxLookupComboBox1.EditValue;
  SP.Parameters.ParamByName('@type_repair_id'     ).Value := cxLookupComboBox3.EditValue;
  SP.Parameters.ParamByName('@repair_quantity'    ).Value := cxCurrencyEdit9.EditValue;
  SP.Parameters.ParamByName('@repair_rate'        ).Value := cxCurrencyEdit10.EditValue;
  SP.Parameters.ParamByName('@prerare_rate'       ).Value := cxCurrencyEdit11.EditValue;
  SP.Parameters.ParamByName('@zch_kp_rate'        ).Value := cxCurrencyEdit1.EditValue;
  SP.Parameters.ParamByName('@zch_kp_quantity'    ).Value := cxCurrencyEdit2.EditValue;
  SP.Parameters.ParamByName('@zch_nb_quantity'    ).Value := cxCurrencyEdit3.EditValue;
  SP.Parameters.ParamByName('@zch_nb_rate'        ).Value := cxCurrencyEdit6.EditValue;
  SP.Parameters.ParamByName('@zch_br_quantity'    ).Value := cxCurrencyEdit4.EditValue;
  SP.Parameters.ParamByName('@zch_br_rate'        ).Value := cxCurrencyEdit7.EditValue;
  SP.Parameters.ParamByName('@zch_pa_quantity'    ).Value := cxCurrencyEdit5.EditValue;
  SP.Parameters.ParamByName('@zch_pa_rate'        ).Value := cxCurrencyEdit8.EditValue;
  SP.Parameters.ParamByName('@tarif_rate'         ).Value := cxCurrencyEdit12.EditValue;
  SP.Parameters.ParamByName('@comment'            ).Value := cxMemo1.EditValue;

  try
    SP.ExecProc;
  except
    SP.Free;
    Screen.Cursor := crDefault;
  end;

  SP.Free;
  Screen.Cursor := crDefault;
end;

procedure TfmVagonRepairPlanAdd.cxButtonEdit2PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  case AButtonIndex of
    0 : begin
          case TcxButtonEdit(Sender).Tag of
            2 : begin
                  if FindInInfObjNode(ClientDataSet1,'NODE_BEGIN' ,True, True, NOW , fmVagonRepairPlan.ADOVagonRepairPlan) then begin
                    Fnode_begin_id := ClientDataSet1.FieldByName('node_begin_id').AsInteger;
                    cxButtonEdit2.Text := ClientDataSet1.FieldByName('node_begin_name').AsString;
                  end;
                end;
          end;
        end;
    1 : case TcxButtonEdit(Sender).Tag of
            2 : begin
                  Fnode_begin_id := -9;
                  cxButtonEdit2.Text := '';
                end;
        end;
  end;
end;

procedure TfmVagonRepairPlanAdd.cxDateEdit1PropertiesEditValueChanged(Sender: TObject);
begin
  if not VarIsNull(cxDateEdit1.EditingValue) then
    cxDateEdit1.EditValue := StartOfTheMonth(cxDateEdit1.EditingValue)
  else
    cxDateEdit1.EditValue := StartOfTheMonth(IncMonth(Date));
end;

procedure TfmVagonRepairPlanAdd.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TfmVagonRepairPlanAdd.SetUpdate(fact_repair_plan_id: integer);
var Q : TADOQuery;
begin
  Screen.Cursor := crHourglass;

  Ftype_action := 1;
  Ffact_repair_plan_id := fact_repair_plan_id;
  Q := TADOQuery.Create(nil);
  Q.Connection := fmVagonRepairPlan.ADOVagonRepairPlan;
  Q.SQL.Add('SELECT * FROM view_fact_rapair_plan WHERE fact_repair_plan_id=' + IntToStr(FFact_repair_plan_id));
  Q.Open;

  if VarIsNull(Q.FieldByName('node_id').Value) then
    Fnode_begin_id := -9
  else  Fnode_begin_id        := Q.FieldByName('node_id').Value;
  cxButtonEdit2.EditValue     := Q.FieldByName('node_name').Value;

  cxDateEdit1.EditValue       := Q.FieldByName('date_begin'     ).Value;
  cxLookupComboBox1.EditValue := Q.FieldByName('depo_id'        ).Value;
  cxLookupComboBox3.EditValue := Q.FieldByName('type_repair_id' ).Value;
  cxCurrencyEdit9.EditValue   := Q.FieldByName('repair_quantity').Value;
  cxCurrencyEdit10.EditValue  := Q.FieldByName('repair_rate'    ).Value;
  cxCurrencyEdit11.EditValue  := Q.FieldByName('prerare_rate'   ).Value;
  cxCurrencyEdit1.EditValue   := Q.FieldByName('zch_kp_rate'    ).Value;
  cxCurrencyEdit2.EditValue   := Q.FieldByName('zch_kp_quantity').Value;
  cxCurrencyEdit3.EditValue   := Q.FieldByName('zch_nb_quantity').Value;
  cxCurrencyEdit6.EditValue   := Q.FieldByName('zch_nb_rate'    ).Value;
  cxCurrencyEdit4.EditValue   := Q.FieldByName('zch_br_quantity').Value;
  cxCurrencyEdit7.EditValue   := Q.FieldByName('zch_br_rate'    ).Value;
  cxCurrencyEdit5.EditValue   := Q.FieldByName('zch_pa_quantity').Value;
  cxCurrencyEdit8.EditValue   := Q.FieldByName('zch_pa_rate'    ).Value;
  cxCurrencyEdit12.EditValue  := Q.FieldByName('tarif_rate'     ).Value;
  cxMemo1.EditValue           := Q.FieldByName('comment'        ).Value;
  Caption := Caption + ' [' + IntToStr(fact_repair_plan_id) + ']';

  Q.Free;

  MonitorEventFormOpen('UPDATE_FORM', self.Name, fmVagonRepairPlan.ADOVagonRepairPlan, Ffact_repair_plan_id);

  Screen.Cursor := crDefault;
end;

end.
