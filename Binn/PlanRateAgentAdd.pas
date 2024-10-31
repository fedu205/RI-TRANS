unit PlanRateAgentAdd;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Raznoe,
  Dialogs, cxGraphics, cxTextEdit, cxDropDownEdit, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox,
  cxDBEdit, cxCalendar, cxControls, cxContainer, cxEdit, cxMaskEdit, cxButtonEdit, StdCtrls,
  Buttons, ExtCtrls, cxCurrencyEdit, DB, ADODB, cxPropertiesStore, DBClient, DateUtils, cxCheckBox,
  cxLookAndFeels, cxLookAndFeelPainters, ComCtrls, dxCore, cxDateUtils,
  cxClasses, ComObj, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMetropolis, dxSkinMetropolisDark, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue, dxSkinOffice2010Silver,
  dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinOffice2016Colorful, dxSkinOffice2016Dark, dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic, dxSkinSharp,
  dxSkinSharpPlus, dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008, dxSkinTheAsphaltWorld, dxSkinsDefaultPainters, dxSkinValentine, dxSkinVisualStudio2013Blue,
  dxSkinVisualStudio2013Dark, dxSkinVisualStudio2013Light, dxSkinVS2010, dxSkinWhiteprint, dxSkinXmas2008Blue,
  cxGroupBox, cxRadioGroup, dxBarBuiltInMenu, cxPC, dxSkinscxPCPainter,
  dxSkinTheBezier, Vcl.Menus, cxButtons, dxSkinOffice2019Colorful;

type
  TfmPlanRateAgentAdd = class(TForm)
    Panel2: TPanel;
    Query_Currency: TADOQuery;
    DS_Currency: TDataSource;
    Query_Ed_Izm: TADOQuery;
    DS_Ed_Izm: TDataSource;
    cxPropertiesStore1: TcxPropertiesStore;
    Panel1: TPanel;
    Query_SHABLON: TADOQuery;
    DS_SHABLON: TDataSource;
    Panel3: TPanel;
    Label10: TLabel;
    cxLookupComboBox6: TcxLookupComboBox;
    Label11: TLabel;
    cxComboBox1: TcxComboBox;
    Label6: TLabel;
    cxCurrencyEdit2: TcxCurrencyEdit;
    cxLookupComboBox3: TcxLookupComboBox;
    cxLookupComboBox2: TcxLookupComboBox;
    cxTextEdit1: TcxTextEdit;
    Label1: TLabel;
    cxButtonEdit1: TcxButtonEdit;
    cxButtonEdit8: TcxButtonEdit;
    Label8: TLabel;
    cxLookupComboBox4: TcxLookupComboBox;
    Label9: TLabel;
    cxLookupComboBox5: TcxLookupComboBox;
    Label12: TLabel;
    cxLookupComboBox7: TcxLookupComboBox;
    cxTextEdit6: TcxTextEdit;
    cxButtonEdit12: TcxButtonEdit;
    Label23: TLabel;
    Query_TypePark: TADOQuery;
    DS_TypePark: TDataSource;
    Query_Type_Rate: TADOQuery;
    DS_Type_Rate: TDataSource;
    Query_RodVagon: TADOQuery;
    DS_RodVagon: TDataSource;
    Query_Client: TADOQuery;
    Query_NDSName: TADOQuery;
    DS_NDSName: TDataSource;
    cxLookupComboBox8: TcxLookupComboBox;
    ClientDS_TableRate: TClientDataSet;
    ClientDS_TableRatedist_begin: TIntegerField;
    ClientDS_TableRatedist_end: TIntegerField;
    ClientDS_TableRatedist_rate_val: TFloatField;
    cxCheckBox1: TcxCheckBox;
    Button2: TButton;
    cxTextEdit2: TcxTextEdit;
    Label14: TLabel;
    cxComboBox2: TcxComboBox;
    Label15: TLabel;
    cxCheckBox2: TcxCheckBox;
    Panel4: TPanel;
    cxRadioGroup2: TcxRadioGroup;
    cxCheckBox4: TcxCheckBox;
    cxTextEdit5: TcxTextEdit;
    cxCheckBox3: TcxCheckBox;
    cxPageControl1: TcxPageControl;
    cxTabSheet1: TcxTabSheet;
    cxTabSheet2: TcxTabSheet;
    cxRadioGroup1: TcxRadioGroup;
    cxCheckBox5: TcxCheckBox;
    cxButton1: TcxButton;
    cxButton3: TcxButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cxLookupComboBox6PropertiesEditValueChanged(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure cxButtonEdit1PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure cxButtonEdit12PropertiesButtonClick(Sender: TObject;AButtonIndex: Integer);
    procedure cxComboBox1PropertiesChange(Sender: TObject);
    procedure cxComboBox2PropertiesEditValueChanged(Sender: TObject);
    procedure cxCheckBox4PropertiesEditValueChanged(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
  private
    Fplan_agent_rate_id : integer;
    Ftype_action : integer;
    Fcontract_id : integer;

    Fclosed_rate : Boolean;

//    Fplan_client_rate_id : integer;
    FClientAdd  : TClientDataSet;
    Fid         :integer;
    Fbudget_id  :integer;
    Fbudget_type_cod : string;

    procedure SetUpdate(plan_agent_rate_id: integer);

  public
    constructor Create(AOwner: TApplication; ClientDS: TClientDataSet);
  published
    property _SetUpdate : integer write SetUpdate;
//    property _SetClientAdd  : TClientDataSet write FClientAdd;
    property _SetType_action : integer write Ftype_action;

    property _GetPlanAgentRateId : integer read Fplan_agent_rate_id;
    property _GetContract_id : integer read Fcontract_id;
    property _GetAddId      : integer   read  Fid;

  end;

var
  fmPlanRateAgentAdd: TfmPlanRateAgentAdd;

implementation
   uses PlanClient, Filter, main, Other, Contract, Default;
{$R *.dfm}

constructor TfmPlanRateAgentAdd.Create(AOwner: TApplication; ClientDS: TClientDataSet);
begin
  inherited Create(AOwner);
  Screen.Cursor := crHourglass;

  FClientAdd := ClientDS;
  Ftype_action        := 0;
  Fplan_agent_rate_id := -9;
  Fcontract_id        := -9;
  Fid                 := -9;

  cxCheckBox2.Checked   := False;

  Query_Currency.Open;
  cxLookupComboBox2.EditValue := 3;

  Query_Ed_Izm.Open;
  cxLookupComboBox3.EditValue := Query_Ed_Izm.FieldByName('inf_obj_id').Value;

  Query_Client.Open;

  Query_Currency.Open;
  cxLookupComboBox2.EditValue := Query_Currency.FieldByName('currency_id').Value;

  Query_Ed_Izm.Open;
  cxLookupComboBox3.EditValue := Query_Ed_Izm.FieldByName('inf_obj_id').Value;

  Query_Type_Rate.Open;
  cxLookupComboBox4.EditValue := Query_Type_Rate.FieldByName('inf_obj_id').Value;

  Query_TypePark.Open;
  Query_RodVagon.Open;

  Query_NDSName.Open;
  cxLookupComboBox8.EditValue := Query_NDSName.FieldByName('inf_obj_id').AsInteger;

  Query_SHABLON.Open;

  ClientDS_TableRate.CreateDataSet;
  ClientDS_TableRate.LogChanges := False;

  cxComboBox2.ItemIndex := 0;

  MonitorEventFormOpen('OPEN_FORM', self.Name, fmMain.Lis, -9);
  cxRadioGroup2.ItemIndex := 2;

  Screen.Cursor := crDefault;
end;

procedure TfmPlanRateAgentAdd.cxButton1Click(Sender: TObject);
var  SP : TADOStoredProc;
begin
  Screen.Cursor := crHourglass;

  if (not cxCurrencyEdit2.Enabled) and (cxComboBox1.ItemIndex = -1) and (cxComboBox2.ItemIndex <> 1) then begin
    Application.MessageBox('Укажите ставку или сетку','Внимание',MB_OK+MB_ICONERROR);
    ModalResult := mrNone;
    Screen.Cursor := crDefault;
    exit;
  end;

  if Fcontract_id = -9 then begin
   Application.MessageBox('Не указан договор.','Внимание',MB_OK+MB_ICONERROR);
   ModalResult := mrNone;
   Screen.Cursor := crDefault;
   exit;
  end;

  if VarIsNull(cxLookupComboBox7.EditValue) then begin
    Application.MessageBox('Не указан род вагона.','Внимание',MB_OK+MB_ICONERROR);
    ModalResult := mrNone;
    Screen.Cursor := crDefault;
    exit;
  end;

  if (not VarIsNull(cxLookupComboBox6.EditValue)) and (cxComboBox1.ItemIndex = -1) and (cxComboBox2.ItemIndex <> 1)  then begin
    Application.MessageBox('Не указан лист сетки.','Внимание',MB_OK+MB_ICONERROR);
    ModalResult := mrNone;
    Screen.Cursor := crDefault;
    exit;
  end;

  if (VarIsNull(cxTextEdit2.EditValue)) and (cxComboBox2.ItemIndex = 1)  then begin
    Application.MessageBox('Не указан ЕЛС.','Внимание',MB_OK+MB_ICONERROR);
    ModalResult := mrNone;
    Screen.Cursor := crDefault;
    exit;
  end;

  if Fbudget_id = -9 then begin
    Application.MessageBox('Не указана услуга.', 'Внимание', MB_OK+MB_ICONERROR);
    ModalResult := mrNone;
    Screen.Cursor := crDefault;
    exit;
  end;



  if Ftype_action = 0 then begin
   FClientAdd.Append;
  end else begin
   FClientAdd.Locate('id', Fid, []);
   FClientAdd.Edit;
  end;

  //  FClientAdd.FieldByName('shaping_rate_id'              ).Value := Fplan_agent_rate_id;
    FClientAdd.FieldByName('contract_agent_id'            ).Value := iif(Fcontract_id<>-9, Fcontract_id, null);;
    FClientAdd.FieldByName('firm_customer_name'           ).Value := cxButtonEdit1.Text;
    FClientAdd.FieldByName('contract_cod'                 ).Value := cxButtonEdit8.Text;
    FClientAdd.FieldByName('shaping_rate_val'             ).Value := cxCurrencyEdit2.EditValue;
    FClientAdd.FieldByName('shaping_rate_nds_id'          ).Value := cxLookupComboBox8.EditValue;
    FClientAdd.FieldByName('shaping_rate_nds_name'        ).Value := cxLookupComboBox8.Text;
    FClientAdd.FieldByName('ed_izm_id'                    ).Value := cxLookupComboBox3.EditValue;
    FClientAdd.FieldByName('ed_izm_name'                  ).Value := iif(cxLookupComboBox3.EditValue <> null, cxLookupComboBox3.Text, null);
    FClientAdd.FieldByName('currency_id'                  ).Value := cxLookupComboBox2.EditValue;
    FClientAdd.FieldByName('brief_name'                   ).Value := iif(cxLookupComboBox2.EditValue <> null, cxLookupComboBox2.Text, null);
    FClientAdd.FieldByName('budget_id'                    ).Value := iif(Fbudget_id=-9, null, Fbudget_id);
    FClientAdd.FieldByName('budget_name'                  ).Value := cxButtonEdit12.Text;
    FClientAdd.FieldByName('budget_cod'                   ).Value := cxTextEdit6.Text;
    FClientAdd.FieldByName('type_park_id'                 ).Value := cxLookupComboBox5.EditValue;
    FClientAdd.FieldByName('type_park_name'               ).Value := iif(cxLookupComboBox5.EditValue <> null, cxLookupComboBox5.Text, null);
    FClientAdd.FieldByName('rod_vagon_id'                 ).Value := cxLookupComboBox7.EditValue;
    FClientAdd.FieldByName('rod_vagon_name'               ).Value := iif(cxLookupComboBox7.EditValue <> null, cxLookupComboBox7.Text, null);
    FClientAdd.FieldByName('table_rate_id'                ).Value := cxLookupComboBox6.EditValue;
    FClientAdd.FieldByName('sheet_num'                    ).Value := cxComboBox1.ItemIndex;
    FClientAdd.FieldByName('type_rate_id'                 ).Value := cxLookupComboBox4.EditValue;
    FClientAdd.FieldByName('type_rate_name'               ).Value := iif(cxLookupComboBox4.EditValue <> null, cxLookupComboBox4.Text, null);
    FClientAdd.FieldByName('table_rate_xml'               ).Value := DataXMLToSQL(ClientDS_TableRate);
    FClientAdd.FieldByName('set_find_contract'            ).Value := cxCheckBox1.Checked;
    FClientAdd.FieldByName('els_cod'                      ).Value := cxTextEdit2.EditValue;
    FClientAdd.FieldByName('type_calc'                    ).Value := cxComboBox2.ItemIndex;
    FClientAdd.FieldByName('type_calc_name'               ).Value := iif(cxComboBox2.ItemIndex=0, 'Предоставление', 'Гружёный тариф');
    FClientAdd.FieldByName('set_include_nds'              ).Value := cxCheckBox2.Checked;
    FClientAdd.FieldByName('type_calc_sum'                ).Value := cxRadioGroup1.ItemIndex;

    FClientAdd.FieldByName('shaping_rate_round_weight'    ).Value := cxRadioGroup2.ItemIndex;
    FClientAdd.FieldByName('shaping_kargo_min_norm'       ).Value := iif(cxCheckBox4.Checked, cxTextEdit5.EditValue, null);
    FClientAdd.FieldByName('shaping_check_kargo_capacity' ).Value := cxCheckBox3.Checked;
    FClientAdd.FieldByName('set_round_notNDS_sum'         ).Value := cxCheckBox5.Checked;



    FClientAdd.Post;

    ModalResult := mrOk;

  Screen.Cursor := crDefault;
end;

procedure TfmPlanRateAgentAdd.cxButtonEdit12PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
type
  TFunc = function(AppHand:THandle; f:boolean; usr_pwd: PUser_pwd; budget_type_cod: string; budget_id: integer) : variant;
var
  FDic          : TFunc;
  handle        : THandle;
  v             : Variant;
  Query_Service : TADOQuery;
begin
  case AButtonIndex of
    0 : begin
          handle := LoadLibrary('dictionary.dll');
          @FDic := GetProcAddress(handle, 'CreateWndDictService');
          v := FDic(Application.Handle, True, usr_pwd, '1', Fbudget_id);
          FreeLibrary(handle);

          if v[0] <> -9 then begin
            Fbudget_id := v[0];

            Query_Service := TADOQuery.Create(self);
            Query_Service.Connection := Query_Client.Connection;
            Query_Service.SQL.Text := 'SELECT * FROM view_shp_budget_service where budget_id = :budget_id';
            Query_Service.Parameters.ParamByName('budget_id').Value := Fbudget_id;
            Query_Service.Open;

            cxButtonEdit12.Text := Query_Service.FieldByName('budget_name').AsString;
            cxTextEdit6.Text    := Query_Service.FieldByName('budget_cod').AsString;

            Query_Service.Free;
          end;
        end;
    1 : begin
          cxButtonEdit12.EditValue := null;
          cxTextEdit6.EditValue := null;
          Fbudget_id := -9;
        end;
  end;
end;

procedure TfmPlanRateAgentAdd.cxButtonEdit1PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
var _fmContract : TfmContract;
              Q : TADOQuery;
begin
  case AButtonIndex of
    0 : begin
          _fmContract := TfmContract.Create(Application, True, 1);
          _fmContract.Visible := False;
          _fmContract._SetContractId := Fcontract_id;
          if _fmContract.ShowModal = mrOk then begin
            Fcontract_id := _fmContract._GetContractId;

            Q := TADOQuery.Create(nil);
            Q.Connection := fmMain.Lis;
            Q.SQL.Add('SELECT * FROM view_contract WHERE contract_id = ' + IntToStr(Fcontract_id));
            Q.Open;

            cxButtonEdit1.EditValue  := Q.FieldByName('firm_customer_name').AsString;
            cxButtonEdit8.EditValue  := Q.FieldByName('contract_cod').AsString;
            cxButtonEdit12.EditValue := Q.FieldByName('budget_name').AsString;
            cxTextEdit6.EditValue    := Q.FieldByName('budget_cod').AsString;
            Fbudget_id := iif(Q.FieldByName('budget_id').AsInteger=0, -9, Q.FieldByName('budget_id').AsInteger);

            Q.Free;
          end;
        end;
    1 : begin
            Fcontract_id := -9;
            cxButtonEdit1.EditValue := null;
            cxButtonEdit8.EditValue := null;
        end;
  end;
end;

procedure TfmPlanRateAgentAdd.cxCheckBox4PropertiesEditValueChanged( Sender: TObject);
begin
 cxTextEdit5.Visible := cxCheckBox4.Checked;
end;

procedure TfmPlanRateAgentAdd.cxComboBox1PropertiesChange(Sender: TObject);
var
  exWks, exApp, exWkb : variant;
  dist                : variant;
  rate_val            : currency;
  nds                 : boolean;
  rows                : integer;
begin
  if cxComboBox1.ItemIndex = -1 then begin
    exit;
  end;

  exApp := CreateOleObject('Excel.Application');
  exWkb := exApp.Workbooks.Open(GetDocBlob(fmMain.Lis, Query_SHABLON.FieldByName('doc_cod').AsInteger, 5), EmptyParam, True);
  exWks := exWkb.WorkSheets[cxComboBox1.ItemIndex + 1];

  rows := 2;
  ClientDS_TableRate.EmptyDataSet;
  ClientDS_TableRate.DisableControls;
  while True do begin
    if TVarData(exWks.Cells[rows, 1].Value).VType = varEmpty then break;
    ClientDS_TableRate.Append;
    ClientDS_TableRate.FieldByName('dist_begin').Value    := exWks.Range['A'+IntToStr(rows)].Value;
    ClientDS_TableRate.FieldByName('dist_end').Value      := exWks.Range['B'+IntToStr(rows)].Value;
    ClientDS_TableRate.FieldByName('dist_rate_val').Value := exWks.Range['C'+IntToStr(rows)].Value;
    ClientDS_TableRate.Post;
    rows := rows + 1;
  end;
  ClientDS_TableRate.EnableControls;

  ShowTextMessage;
  exApp.Quit;
  exWks := Null;
  VarClear(exWks);
  VarClear(exWkb);
end;

procedure TfmPlanRateAgentAdd.cxComboBox2PropertiesEditValueChanged(Sender: TObject);
begin
  if cxComboBox2.ItemIndex = 1 then begin
    cxLookupComboBox6.Enabled   := False;
    cxComboBox1.Enabled         := False;
    cxCurrencyEdit2.Enabled     := False;
    cxLookupComboBox5.Enabled   := False;
    cxLookupComboBox5.EditValue := NULL;
    cxLookupComboBox6.EditValue := NULL;
    cxComboBox1.ItemIndex       := -1;
    cxCurrencyEdit2.EditValue   := NULL;
    cxTextEdit2.Style.Color     := $00C6FFFF;
    cxTextEdit2.Enabled         := True;
  end else begin
    cxLookupComboBox6.Enabled := True;
    cxComboBox1.Enabled       := True;
    cxCurrencyEdit2.Enabled   := True;
    cxLookupComboBox5.Enabled := True;
    cxTextEdit2.Style.Color   := clWhite;
    cxTextEdit2.Enabled       := False;
  end;
end;


procedure TfmPlanRateAgentAdd.SetUpdate(plan_agent_rate_id: integer);
var Q : TADOQuery;
begin
  Screen.Cursor := crHourglass;

  Ftype_action := 1;
  Fid := plan_agent_rate_id;

  FClientAdd.Locate('id', Fid, []);
  Fcontract_id                := iif(FClientAdd.FieldByName('contract_agent_id').IsNull, -9, FClientAdd.FieldByName('contract_agent_id').Value);
  cxCheckBox2.Checked         := FClientAdd.FieldByName('set_include_nds').Value;
  cxButtonEdit1.EditValue     := FClientAdd.FieldByName('firm_customer_name').Value;
  cxButtonEdit8.EditValue     := FClientAdd.FieldByName('contract_cod').Value;
  cxCurrencyEdit2.EditValue   := FClientAdd.FieldByName('shaping_rate_val').Value;
  cxLookupComboBox3.EditValue := FClientAdd.FieldByName('ed_izm_id').Value;
  cxLookupComboBox2.EditValue := FClientAdd.FieldByName('currency_id').Value;
  cxLookupComboBox8.EditValue := FClientAdd.FieldByName('shaping_rate_nds_id').Value;
  Fbudget_id                  := iif(FClientAdd.FieldByName('budget_id').IsNull, -9, FClientAdd.FieldByName('budget_id').Value);
  cxButtonEdit12.Text         := iif(FClientAdd.FieldByName('budget_name').IsNull, '' ,FClientAdd.FieldByName('budget_name').Value);
  cxTextEdit6.Text            := iif(FClientAdd.FieldByName('budget_cod').IsNull, '', FClientAdd.FieldByName('budget_cod').Value);;
  cxLookupComboBox5.EditValue := FClientAdd.FieldByName('type_park_id').Value;
  cxLookupComboBox7.EditValue := FClientAdd.FieldByName('rod_vagon_id').Value;
  cxLookupComboBox6.EditValue := FClientAdd.FieldByName('table_rate_id').Value;
  cxLookupComboBox4.EditValue := FClientAdd.FieldByName('type_rate_id').Value;
  if not FClientAdd.FieldByName('sheet_num').IsNull then
    cxComboBox1.ItemIndex := FClientAdd.FieldByName('sheet_num').Value;

  cxCheckBox1.Checked     := FClientAdd.FieldByName('set_find_contract').Value;
  cxTextEdit2.EditValue   := FClientAdd.FieldByName('els_cod').Value;
  cxComboBox2.ItemIndex   := FClientAdd.FieldByName('type_calc').AsInteger;

  cxRadioGroup2.ItemIndex := FClientAdd.FieldByName('shaping_rate_round_weight').AsInteger;
  cxRadioGroup1.ItemIndex := FClientAdd.FieldByName('type_calc_sum').AsInteger;
  cxCheckBox3.Checked     := FClientAdd.FieldByName('shaping_check_kargo_capacity').AsBoolean;
  cxCheckBox5.Checked     := FClientAdd.FieldByName('set_round_notNDS_sum').AsBoolean;

  if not VarIsNull(FClientAdd.FieldByName('shaping_kargo_min_norm').Value) then begin
    cxTextEdit5.Visible := True;
    cxCheckBox4.Checked := True;
    cxTextEdit5.EditValue   := FClientAdd.FieldByName('shaping_kargo_min_norm').Value;
  end;

  MonitorEventFormOpen('UPDATE_FORM', self.Name, fmMain.Lis, Fplan_agent_rate_id);
  Screen.Cursor := crDefault;
end;

procedure TfmPlanRateAgentAdd.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TfmPlanRateAgentAdd.cxLookupComboBox6PropertiesEditValueChanged(Sender: TObject);
var                 i : integer;
  exWks, exApp, exWkb : variant;
begin
  Query_SHABLON.Locate('doc_id',cxLookupComboBox6.EditValue,[]);
  Query_SHABLON.FieldByName('doc_cod');
  ShowTextMessage('Запуск Excel...', False);
  exApp := CreateOleObject('Excel.Application');
  exWkb := exApp.Workbooks.Open(GetDocBlob(fmMain.Lis, Query_SHABLON.FieldByName('doc_cod').AsInteger, 5), EmptyParam, True);
  exWkb := exApp.ActiveWorkbook;

  cxComboBox1.Properties.Items.Clear;
  for i := 1 to exWkb.WorkSheets.count do begin
    cxComboBox1.Properties.Items.Add(VarToStr(exWkb.WorkSheets[i].Name));
  end;
  ShowTextMessage;
  exApp.Quit;
  exWks := Null;
  VarClear(exWks);
  VarClear(exWkb);

  if VarIsNull(cxLookupComboBox6.EditValue) then
    cxCurrencyEdit2.Enabled := True
    else begin
      cxCurrencyEdit2.Enabled   := False;
      cxCurrencyEdit2.EditValue := NULL;
    end;
end;

procedure TfmPlanRateAgentAdd.Button1Click(Sender: TObject);
var
  exWks, exApp, exWkb : variant;
  dist                : variant;
  rate_val            : currency;
  nds                 : boolean;
  rows                : integer;
begin
  cxCurrencyEdit2.Enabled:= True;
  cxLookupComboBox6.EditValue := NULL;
  cxComboBox1.Properties.Items.Clear;
  cxComboBox1.ItemIndex := -1;
end;

end.

