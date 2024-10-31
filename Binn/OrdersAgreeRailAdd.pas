unit OrdersAgreeRailAdd;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxLookAndFeelPainters, cxGraphics, Menus, Buttons, cxDropDownEdit,
  cxCurrencyEdit, cxGroupBox, cxRadioGroup, StdCtrls, cxCheckBox, cxTextEdit,
  cxButtons, cxPC, cxButtonEdit, cxMaskEdit, cxLookupEdit, cxDBLookupEdit,
  cxDBLookupComboBox, cxControls, cxContainer, cxEdit, cxLabel, ExtCtrls, Default,
  DB, ADODB, DBClient, DateUtils, cxPropertiesStore, cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxDBData,
  cxLookAndFeels, dxBarBuiltInMenu, cxNavigator, ComCtrls, dxCore, cxDateUtils,
  dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel,
  dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
  dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMetropolis, dxSkinMetropolisDark, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013DarkGray,
  dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinOffice2016Colorful,
  dxSkinOffice2016Dark, dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic,
  dxSkinSharp, dxSkinSharpPlus, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinTheAsphaltWorld, dxSkinsDefaultPainters,
  dxSkinValentine, dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue, dxSkinscxPCPainter, dxSkinsdxBarPainter, cxClasses,
  cxCalendar, cxMemo, dxSkinTheBezier;

type
  TfmOrdersAgreeRailAdd = class(TForm)
    Panel1: TPanel;
    cxLabel5: TcxLabel;
    cxGroupBox1: TcxGroupBox;
    cxLookupComboBox8: TcxLookupComboBox;
    cxButtonEdit9: TcxButtonEdit;
    cxButtonEdit16: TcxButtonEdit;
    cxPageControl1: TcxPageControl;
    cxTabSheet1: TcxTabSheet;
    Label8: TLabel;
    Label19: TLabel;
    Label4: TLabel;
    Label9: TLabel;
    cxButtonEdit1: TcxButtonEdit;
    cxButtonEdit2: TcxButtonEdit;
    cxButtonEdit3: TcxButtonEdit;
    cxButtonEdit4: TcxButtonEdit;
    cxButton1: TcxButton;
    cxTextEdit3: TcxTextEdit;
    cxTextEdit4: TcxTextEdit;
    Label14: TLabel;
    Label1: TLabel;
    cxButtonEdit10: TcxButtonEdit;
    cxButtonEdit11: TcxButtonEdit;
    cxButtonEdit15: TcxButtonEdit;
    cxButtonEdit14: TcxButtonEdit;
    cxButtonEdit12: TcxButtonEdit;
    cxButtonEdit13: TcxButtonEdit;
    cxCheckBox1: TcxCheckBox;
    cxGroupBox5: TcxGroupBox;
    Label5: TLabel;
    Label6: TLabel;
    Label11: TLabel;
    Label13: TLabel;
    cxLookupComboBox1: TcxLookupComboBox;
    cxLookupComboBox2: TcxLookupComboBox;
    cxCurrencyEdit2: TcxCurrencyEdit;
    cxCurrencyEdit3: TcxCurrencyEdit;
    Panel4: TPanel;
    BitBtn2: TBitBtn;
    BitBtn1: TBitBtn;
    Label7: TLabel;
    Query_Agent: TADOQuery;
    DS_Agent: TDataSource;
    Query_Ed_Izm: TADOQuery;
    DS_Ed_izm: TDataSource;
    Query_Currency: TADOQuery;
    DS_Currency: TDataSource;
    cxCurrencyEdit15: TcxCurrencyEdit;
    cxCurrencyEdit4: TcxCurrencyEdit;
    Label3: TLabel;
    Label16: TLabel;
    Label20: TLabel;
    cxCurrencyEdit5: TcxCurrencyEdit;
    cxDateEdit1: TcxDateEdit;
    Label23: TLabel;
    cxPropertiesStore1: TcxPropertiesStore;
    cxTabSheet2: TcxTabSheet;
    cxTabSheet3: TcxTabSheet;
    cxMemo1: TcxMemo;
    Panel2: TPanel;
    Label2: TLabel;
    cxDateEdit2: TcxDateEdit;
    cxLabel1: TcxLabel;
    cxLabel2: TcxLabel;
    cxLabel3: TcxLabel;
    cxButton2: TcxButton;
    cxButton3: TcxButton;
    cxButton4: TcxButton;
    Label10: TLabel;
    cxButtonEdit7: TcxButtonEdit;
    cxTextEdit1: TcxTextEdit;
    cxTextEdit2: TcxTextEdit;
    cxButtonEdit8: TcxButtonEdit;
    procedure cxCurrencyEdit3PropertiesEditValueChanged(Sender: TObject);
    procedure cxCurrencyEdit1PropertiesEditValueChanged(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure cxButtonEdit9PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure cxButtonEdit12PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure cxCheckBox1PropertiesEditValueChanged(Sender: TObject);
    procedure cxButtonEdit14PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure cxButtonEdit10PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure cxButton1Click(Sender: TObject);
    procedure cxButtonEdit3PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure cxButtonEdit2PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure cxButtonEdit4PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure cxButtonEdit1PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cxButton2Click(Sender: TObject);
    procedure cxLookupComboBox8PropertiesChange(Sender: TObject);
    procedure cxButtonEdit7PropertiesButtonClick(Sender: TObject;AButtonIndex: Integer);
    procedure cxLookupComboBox2PropertiesChange(Sender: TObject);
    procedure cxCurrencyEdit4PropertiesEditValueChanged(Sender: TObject);
    procedure cxButtonEdit8PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
  private
    Fservice_type         : integer;
    Fset_calc_enabled     : boolean; // Автоматический расчет разрешен

    Fdate_period          : TDateTime;
    Fid                   : integer;
    Fcontract_id          : integer;
    Fbudget_id            : integer;
    FkargoETSNG_id        : integer;
    FkargoETSNG_add_id    : integer;
    FkargoGNG_id          : integer;
    Fstate_begin_id       : integer;
    Fstate_end_id         : integer;
    Fnode_begin_id        : integer;
    Fnode_end_id          : integer;
    Fcurrency_id          : integer;
    Fed_izm_id            : integer;
    Fplan_client_rate_id  : integer;

    FClient_OrdersAgreeRail : TClientDataSet;

    function  FindInfObj(caption_name: string; table_name: string; set_cod: boolean; var id: integer; var cod: string; var name: string): boolean;
    procedure SetUpdate(id: integer);

    procedure SetDatePeriod(date_period: TDateTime);
    procedure SetKargoAdd(set_kargo_add: boolean);
    function  CalcSum(): Currency;

    procedure SetContractId(contract_id: integer);
    procedure SetNodeBeginId(node_begin_id: integer);
    procedure SetNodeEndId(node_end_id: integer);
    procedure SetStateBeginId(state_begin_id: integer);
    procedure SetStateEndId(state_end_id: integer);
    procedure SetKargoETSNGId(kargoETSNG_id: integer);
    procedure SetKargoETSNGAddId(kargoETSNG_add_id: integer);
    procedure SetKargoGNGId(kargoGNG_id: integer);
    procedure SetFirmSenderId(firm_sender_id: integer);
    procedure SetFirmRecieverId(firm_reciever_id: integer);
    procedure LockInputData(set_enable : boolean);
  public
    constructor Create(AOwner: TApplication; service_type: integer); reintroduce; // type_service - услуга 0-Клиент (Доход), 1-Агент (Расход)
  published
    property _GetAddId           : integer read Fid;

    property _SetDatePeriod      : TDateTime write SetDatePeriod;
    property _SetClientId        : integer write Fid;
    property _SetUpdate          : integer write SetUpdate;
    property _SetContractId      : integer write SetContractId;
    property _SetNodeBeginId     : integer write SetNodeBeginId;
    property _SetNodeEndId       : integer write SetNodeEndId;
    property _SetStateBeginId    : integer write SetStateBeginId;
    property _SetStateEndId      : integer write SetStateEndId;
    property _SetKargoETSNGId    : integer write SetKargoETSNGId;
    property _SetKargoETSNGAddId : integer write SetKargoETSNGAddId;
    property _SetKargoGNGId      : integer write SetKargoGNGId;
    property _SetFirmSenderId    : integer write SetFirmSenderId;
    property _SetFirmRecieverId  : integer write SetFirmRecieverId;

    property _SetClientOrdersAgreeRail : TClientDataSet write FClient_OrdersAgreeRail;
  end;

var
  fmOrdersAgreeRailAdd: TfmOrdersAgreeRailAdd;

implementation

uses Raznoe, main, Filter, Contract, PlanClient;

{$R *.dfm}

constructor TfmOrdersAgreeRailAdd.Create(AOwner: TApplication; service_type: integer);
begin
  Screen.Cursor := crHourglass;
  inherited Create(AOwner);
  Fset_calc_enabled := False;

  Fservice_type := service_type;

  if Fservice_type = 0 then begin // Клиент
    //Caption := 'Услуга Доход';
    cxLabel5.Caption := 'Услуга Доход';
    cxLabel5.Style.Color := RGB(255, 203, 173);
    cxLabel1.Caption := 'Клиент......................................';
    cxButton2.Down := True;
  end else begin // Агент
    //Caption := 'Услуга Расход';
    cxLabel5.Caption := 'Услуга Расход';
    cxLabel5.Style.Color := RGB(198, 227, 181);
    cxLabel1.Caption := 'Агент......................................';
    cxButton3.Down := True;
  end;

  Fid                   := -9;
  Fcontract_id          := -9;
  FkargoETSNG_id        := -9;
  FkargoETSNG_add_id    := -9;
  FkargoGNG_id          := -9;
  Fstate_begin_id       := -9;
  Fstate_end_id         := -9;
  Fnode_begin_id        := -9;
  Fnode_end_id          := -9;
  Fcurrency_id          := -9;
  Fed_izm_id            := -9;
  Fbudget_id            := -9;
  Fplan_client_rate_id  := -9;

  Query_Currency.Open;
  cxLookupComboBox1.EditValue := Query_Currency.FieldByName('currency_id').Value;

  Query_Ed_Izm.Open;
  cxLookupComboBox2.EditValue := Query_Ed_Izm.FieldByName('inf_obj_id').Value;

  cxPageControl1.ActivePageIndex := 0;

  Fset_calc_enabled := True;
  Screen.Cursor := crDefault;
end;

procedure TfmOrdersAgreeRailAdd.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TfmOrdersAgreeRailAdd.LockInputData(set_enable: boolean);
begin
  if set_enable then begin
    cxLookupComboBox1.Enabled := True;
    cxLookupComboBox2.Enabled := True;
    cxLookupComboBox8.Enabled := True;

    cxButton2.Enabled         := True;
    cxButton3.Enabled         := True;
    cxButton4.Enabled         := True;

    cxTextEdit3.Enabled       := True;
    cxTextEdit4.Enabled       := True;

    cxButtonEdit1.Enabled     := True;
    cxButtonEdit2.Enabled     := True;
    cxButtonEdit3.Enabled     := True;
    cxButtonEdit4.Enabled     := True;
    cxButtonEdit7.Enabled     := True;
    cxButtonEdit8.Enabled     := True;
    cxButtonEdit9.Enabled     := True;
    cxButtonEdit10.Enabled    := True;
    cxButtonEdit11.Enabled    := True;
    cxButtonEdit16.Enabled    := True;

    cxCheckBox1.Enabled       := True;

    cxMemo1.Enabled           := True;

    cxDateEdit1.Enabled       := True;
    cxDateEdit2.Enabled       := True;

    cxCurrencyEdit3.Enabled   := True;
//    cxCurrencyEdit4.Enabled   := True;
    cxCurrencyEdit5.Enabled   := True;
    cxCurrencyEdit15.Enabled  := True;
  end else begin
    cxLookupComboBox1.Enabled := False;
    cxLookupComboBox2.Enabled := False;
//    cxLookupComboBox6.Enabled := False;
    cxLookupComboBox8.Enabled := False;

    cxButton2.Enabled         := False;
    cxButton3.Enabled         := False;
    cxButton4.Enabled         := False;

    cxTextEdit3.Enabled       := False;
    cxTextEdit4.Enabled       := False;

//    cxButtonEdit1.Enabled     := False;
    cxButtonEdit2.Enabled     := False;
    cxButtonEdit3.Enabled     := False;
//    cxButtonEdit4.Enabled     := False;
//    cxButtonEdit5.Enabled     := False;
//    cxButtonEdit6.Enabled     := False;
    cxButtonEdit7.Enabled     := False;
    cxButtonEdit8.Enabled     := False;
    cxButtonEdit9.Enabled     := False;
    cxButtonEdit10.Enabled    := False;
    cxButtonEdit11.Enabled    := False;
    cxButtonEdit16.Enabled    := False;

//    cxCheckBox1.Enabled       := False;

//    cxMemo1.Enabled           := False;

//    cxDateEdit1.Enabled       := False;
//    cxDateEdit2.Enabled       := False;

    cxCurrencyEdit3.Enabled   := False;
//    cxCurrencyEdit4.Enabled   := False;
//    cxCurrencyEdit5.Enabled   := False;
//    cxCurrencyEdit15.Enabled  := False;
  end;

end;

procedure TfmOrdersAgreeRailAdd.SetUpdate(id: integer);
begin
  Fset_calc_enabled := False;

  Fid := id;
  FClient_OrdersAgreeRail.Locate('id', Fid, []);

  Fcontract_id              := iif(FClient_OrdersAgreeRail.FieldByName('contract_id').IsNull, -9, FClient_OrdersAgreeRail.FieldByName('contract_id').Value);
  Fcurrency_id              := iif(FClient_OrdersAgreeRail.FieldByName('currency_id').IsNull, -9, FClient_OrdersAgreeRail.FieldByName('currency_id').Value);
  Fed_izm_id                := iif(FClient_OrdersAgreeRail.FieldByName('ed_izm_id').IsNull, -9, FClient_OrdersAgreeRail.FieldByName('ed_izm_id').Value);
  cxCurrencyEdit3.EditValue := FClient_OrdersAgreeRail.FieldByName('add_count').Value;

  Fplan_client_rate_id      := iif(FClient_OrdersAgreeRail.FieldByName('plan_client_rate_id').IsNull,   -9, FClient_OrdersAgreeRail.FieldByName('plan_client_rate_id').Value);
  //Fplan_agent_rate_id       := iif(FClient_OrdersAgreeRail.FieldByName('plan_agent_rate_id').IsNull,    -9, FClient_OrdersAgreeRail.FieldByName('plan_agent_rate_id').Value);
  //cxButtonEdit8.EditValue   := iif(FClient_OrdersAgreeRail.FieldByName('plan_client_rate_id').IsNull, null, FClient_OrdersAgreeRail.FieldByName('add_rate').Value);
  cxButtonEdit8.EditValue   := FClient_OrdersAgreeRail.FieldByName('add_rate').Value;

  cxDateEdit1.EditValue     := FClient_OrdersAgreeRail.FieldByName('date_plan_pay').Value;
  cxDateEdit2.EditValue     := FClient_OrdersAgreeRail.FieldByName('date_plan_send').Value;

  Fbudget_id                := iif(FClient_OrdersAgreeRail.FieldByName('budget_id').IsNull, -9, FClient_OrdersAgreeRail.FieldByName('budget_id').Value);
  cxButtonEdit7.EditValue   := iif(FClient_OrdersAgreeRail.FieldByName('budget_id').IsNull, '', FClient_OrdersAgreeRail.FieldByName('budget_name').Value);
  cxTextEdit1.EditValue     := iif(FClient_OrdersAgreeRail.FieldByName('budget_id').IsNull, '', FClient_OrdersAgreeRail.FieldByName('budget_cod').Value);

  FkargoETSNG_id            := iif(FClient_OrdersAgreeRail.FieldByName('kargoETSNG_id').IsNull, -9, FClient_OrdersAgreeRail.FieldByName('kargoETSNG_id').Value);
  cxButtonEdit11.EditValue  := iif(FClient_OrdersAgreeRail.FieldByName('kargoETSNG_id').IsNull, '', FClient_OrdersAgreeRail.FieldByName('kargoETSNG_cod').Value);
  cxButtonEdit10.EditValue  := iif(FClient_OrdersAgreeRail.FieldByName('kargoETSNG_id').IsNull, '', FClient_OrdersAgreeRail.FieldByName('kargoETSNG_name').Value);
  cxTextEdit2.EditValue     := iif(FClient_OrdersAgreeRail.FieldByName('kargoETSNG_id').IsNull, '', FClient_OrdersAgreeRail.FieldByName('kargoETSNG_group_name').Value);

  FkargoETSNG_add_id        := iif(FClient_OrdersAgreeRail.FieldByName('kargoETSNG_add_id').IsNull, -9, FClient_OrdersAgreeRail.FieldByName('kargoETSNG_add_id').Value);
  cxButtonEdit15.EditValue  := iif(FClient_OrdersAgreeRail.FieldByName('kargoETSNG_add_id').IsNull, '', FClient_OrdersAgreeRail.FieldByName('kargoETSNG_add_cod').Value);
  cxButtonEdit14.EditValue  := iif(FClient_OrdersAgreeRail.FieldByName('kargoETSNG_add_id').IsNull, '', FClient_OrdersAgreeRail.FieldByName('kargoETSNG_add_name').Value);

  cxCheckBox1.Checked       := iif(FClient_OrdersAgreeRail.FieldByName('kargoGNG_id').IsNull, False, True);
  FkargoGNG_id              := iif(FClient_OrdersAgreeRail.FieldByName('kargoGNG_id').IsNull, -9, FClient_OrdersAgreeRail.FieldByName('kargoGNG_id').Value);
  cxButtonEdit13.EditValue  := iif(FClient_OrdersAgreeRail.FieldByName('kargoGNG_id').IsNull, '', FClient_OrdersAgreeRail.FieldByName('kargoGNG_cod').Value);
  cxButtonEdit12.EditValue  := iif(FClient_OrdersAgreeRail.FieldByName('kargoGNG_id').IsNull, '', FClient_OrdersAgreeRail.FieldByName('kargoGNG_name').Value);

  Fstate_begin_id           := iif(FClient_OrdersAgreeRail.FieldByName('state_begin_id').IsNull, -9, FClient_OrdersAgreeRail.FieldByName('state_begin_id').Value);
  cxButtonEdit1.EditValue   := iif(FClient_OrdersAgreeRail.FieldByName('state_begin_id').IsNull, '', FClient_OrdersAgreeRail.FieldByName('state_begin_name').Value);

  Fstate_end_id             := iif(FClient_OrdersAgreeRail.FieldByName('state_end_id').IsNull, -9, FClient_OrdersAgreeRail.FieldByName('state_end_id').Value);
  cxButtonEdit4.EditValue   := iif(FClient_OrdersAgreeRail.FieldByName('state_end_id').IsNull, '', FClient_OrdersAgreeRail.FieldByName('state_end_name').Value);

  Fnode_begin_id            := iif(FClient_OrdersAgreeRail.FieldByName('node_begin_id').IsNull, -9, FClient_OrdersAgreeRail.FieldByName('node_begin_id').Value);
  cxTextEdit3.EditValue     := iif(FClient_OrdersAgreeRail.FieldByName('node_begin_id').IsNull, '', FClient_OrdersAgreeRail.FieldByName('node_begin_cod').Value);
  cxButtonEdit2.EditValue   := iif(FClient_OrdersAgreeRail.FieldByName('node_begin_id').IsNull, '', FClient_OrdersAgreeRail.FieldByName('node_begin_name').Value);

  Fnode_end_id              := iif(FClient_OrdersAgreeRail.FieldByName('node_end_id').IsNull, -9, FClient_OrdersAgreeRail.FieldByName('node_end_id').Value);
  cxTextEdit4.EditValue     := iif(FClient_OrdersAgreeRail.FieldByName('node_end_id').IsNull, '', FClient_OrdersAgreeRail.FieldByName('node_end_cod').Value);
  cxButtonEdit3.EditValue   := iif(FClient_OrdersAgreeRail.FieldByName('node_end_id').IsNull, '', FClient_OrdersAgreeRail.FieldByName('node_end_name').Value);

  cxMemo1.EditValue         := FClient_OrdersAgreeRail.FieldByName('comment').Value;

  cxLookupComboBox8.EditValue := iif(Fcontract_id       = -9, null, Fcontract_id);
  cxLookupComboBox1.EditValue := iif(Fcurrency_id       = -9, null, Fcurrency_id);
  cxLookupComboBox2.EditValue := iif(Fed_izm_id         = -9, null, Fed_izm_id);

  cxCurrencyEdit3.EditValue  := FClient_OrdersAgreeRail.FieldByName('add_count').Value;
  cxCurrencyEdit5.EditValue  := FClient_OrdersAgreeRail.FieldByName('count_day_vagon').Value;
  cxCurrencyEdit15.EditValue := FClient_OrdersAgreeRail.FieldByName('count_vagon').Value;
  cxCurrencyEdit4.EditValue  := FClient_OrdersAgreeRail.FieldByName('count_weight').Value;

  Fset_calc_enabled := True;
  CalcSum();
  LockInputData(False);
end;

procedure TfmOrdersAgreeRailAdd.SetDatePeriod(date_period: TDateTime);
begin
  if Fdate_period <> date_period then begin
    Fdate_period  := date_period;

    Query_Agent.Close;
    Query_Agent.Parameters.ParamByName('date_current' ).Value := Fdate_period;
    Query_Agent.Parameters.ParamByName('type_contract').Value := iif(Fservice_type=0, 0, 1);
    Query_Agent.Open;
  end;
end;

procedure TfmOrdersAgreeRailAdd.cxButton1Click(Sender: TObject);
begin
  RailAtlas_ShowRoute(fmMain.Lis, cxTextEdit3.Text, cxTextEdit4.Text);
end;

procedure TfmOrdersAgreeRailAdd.cxButton2Click(Sender: TObject);
begin
  Screen.Cursor := -11;
  Query_Agent.Close;
  Query_Agent.Parameters.ParamByName('type_contract').Value := TcxButton(Sender).Tag;
  Query_Agent.Parameters.ParamByName('date_current' ).Value := Fdate_period;
  Query_Agent.Open;
  Screen.Cursor := 0;
end;

procedure TfmOrdersAgreeRailAdd.cxButtonEdit10PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
var
  id  : integer;
  cod : string;
  name: string;
  res : boolean;
  Q   : TADOQuery;
begin
  case AButtonIndex of
    0:  begin
          if TControl(Sender).Tag = 0 then res := FindInfObj('Шаблон поиска груза ЕТСНГ по названию:', 'inf_obj_etsng', False, id, cod, name)
          else res := FindInfObj('Шаблон поиска груза ЕТСНГ по коду:', 'inf_obj_etsng', True, id, cod, name);
          if res then begin
            FkargoETSNG_id      := id;
            cxButtonEdit10.Text := name;
            cxButtonEdit11.Text := cod;
            Q := TADOQuery.Create(nil);
            Q.Connection := fmMain.Lis;
            Q.SQL.Add('SELECT group_id, group_name, group_cod FROM view_kargoETSNG WHERE inf_obj_id='+IntToStr(FkargoETSNG_id));
            Q.Open;
            cxTextEdit2.Text := iif(Q.FieldByName('group_id').Value = null, '', Q.FieldByName('group_name').Value);
            if Q.FieldByName('group_cod').AsString = '9' then SetKargoAdd(True)
            else SetKargoAdd(False);
            Q.Free;
          end;
        end;
    1:  begin
          FkargoETSNG_id     := -9;
          cxButtonEdit10.Text:= '';
          cxButtonEdit11.Text:= '';
          cxTextEdit2.Text  := '';
          SetKargoAdd(False);
        end;
  end;
end;

procedure TfmOrdersAgreeRailAdd.cxButtonEdit12PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
var
  id  : integer;
  cod : string;
  name: string;
  res : boolean;
begin
  case AButtonIndex of
    0:  begin
          if TControl(Sender).Tag = 0 then res := FindInfObj('Шаблон поиска груза ГНГ по названию:', 'inf_obj_GNG', False, id, cod, name)
          else res := FindInfObj('Шаблон поиска груза ГНГ по коду:', 'inf_obj_GNG', True, id, cod, name);
          if res then begin
            FkargoGNG_id        := id;
            cxButtonEdit12.Text := name;
            cxButtonEdit13.Text := cod;
          end;
        end;
    1:  begin
          FkargoGNG_id        := -9;
          cxButtonEdit12.Text := '';
          cxButtonEdit13.Text := '';
        end;
  end;
end;

procedure TfmOrdersAgreeRailAdd.cxButtonEdit14PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
var
  id  : integer;
  cod : string;
  name: string;
  res : boolean;
begin
  case AButtonIndex of
    0:  begin
          if TControl(Sender).Tag = 0 then res := FindInfObj('Шаблон поиска груза ЕТСНГ по названию:', 'inf_obj_etsng', False, id, cod, name)
          else res := FindInfObj('Шаблон поиска груза ЕТСНГ по коду:', 'inf_obj_etsng', True, id, cod, name);
          if res then begin
            FkargoETSNG_add_id := id;
            cxButtonEdit14.Text:= name;
            cxButtonEdit15.Text:= cod;
          end;
        end;
    1:  begin
          FkargoETSNG_add_id := -9;
          cxButtonEdit14.Text:= '';
          cxButtonEdit15.Text:= '';
        end;
  end;
end;

procedure TfmOrdersAgreeRailAdd.cxButtonEdit1PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
var
  id  : integer;
  cod : string;
  name: string;
  res : boolean;
begin
  case AButtonIndex of
    0:  begin
          res := FindInfObj('Шаблон поиска страны по названию:', 'inf_obj_state', False, id, cod, name);
          if res then begin
            Fstate_begin_id    := id;
            cxButtonEdit1.Text := name;
          end;
        end;
    1:  begin
          Fstate_begin_id    := -9;
          cxButtonEdit1.Text := '';
        end;
  end;
end;

procedure TfmOrdersAgreeRailAdd.cxButtonEdit2PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
var
  id  : integer;
  cod : string;
  name: string;
  res : boolean;
begin
  case AButtonIndex of
    0:  begin
          if TControl(Sender).Tag = 0 then res := FindInfObj('Шаблон поиска станции по названию:', 'inf_obj_node', False, id, cod, name)
          else res := FindInfObj('Шаблон поиска станции по коду:', 'inf_obj_node', True, id, cod, name);
          if res then begin
            Fnode_begin_id     := id;
            cxButtonEdit2.Text := name;
            cxTextEdit3.Text   := cod;
          end;
        end;
    1:  begin
          Fnode_begin_id     := -9;
          cxButtonEdit2.Text := '';
          cxTextEdit3.Text   := '';
        end;
  end;
end;

procedure TfmOrdersAgreeRailAdd.cxButtonEdit3PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
var
  id  : integer;
  cod : string;
  name: string;
  res : boolean;
begin
  case AButtonIndex of
    0:  begin
          if TControl(Sender).Tag = 0 then res := FindInfObj('Шаблон поиска станции по названию:', 'inf_obj_node', False, id, cod, name)
          else res := FindInfObj('Шаблон поиска станции по коду:', 'inf_obj_node', True, id, cod, name);
          if res then begin
            Fnode_end_id       := id;
            cxButtonEdit3.Text := name;
            cxTextEdit4.Text   := cod;
          end;
        end;
    1:  begin
          Fnode_end_id       := -9;
          cxButtonEdit3.Text := '';
          cxTextEdit4.Text   := '';
        end;
  end;
end;

procedure TfmOrdersAgreeRailAdd.cxButtonEdit4PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
var
  id  : integer;
  cod : string;
  name: string;
  res : boolean;
begin
  case AButtonIndex of
    0:  begin
          res := FindInfObj('Шаблон поиска страны по названию:', 'inf_obj_state', False, id, cod, name);
          if res then begin
            Fstate_end_id    := id;
            cxButtonEdit4.Text := name;
          end;
        end;
    1:  begin
          Fstate_end_id    := -9;
          cxButtonEdit4.Text := '';
        end;
  end;
end;

procedure TfmOrdersAgreeRailAdd.cxButtonEdit7PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
type
  TFunc = function(AppHand: THandle; f: boolean; usr_pwd: PUser_pwd; budget_type_cod: string; budget_id: integer) : variant;
var
  FDic   : TFunc;
  handle : THandle;
  v      : Variant;
  Q      : TADOQuery;
  budget_type_cod : string;
begin
  case AButtonIndex of
    0 : begin

          if Fservice_type = 0 then
            budget_type_cod := '1' // Доход
          else
            budget_type_cod := '2'; // Расход


          handle := LoadLibrary('dictionary.dll');
          @FDic := GetProcAddress(handle, 'CreateWndDictService');
          v := FDic(Application.Handle, True, usr_pwd, '1', Fbudget_id);
          FreeLibrary(handle);

          if v[0] <> -9 then begin
            Fbudget_id := v[0];

            Q := TADOQuery.Create(self);
            Q.Connection := fmMain.Lis;
            Q.SQL.Add('SELECT * FROM view_shp_budget_service where budget_id = ' + IntToStr(Fbudget_id));
            Q.Open;

            cxButtonEdit7.Text := Q.FieldByName('budget_name').AsString;
            cxTextEdit1.Text    := Q.FieldByName('budget_cod').AsString;

            Q.Free;
          end;

        end;
    1 : begin
          cxButtonEdit7.EditValue := null;
          cxTextEdit1.EditValue    := null;
          Fbudget_id := -9;
        end;
  end;
end;

procedure TfmOrdersAgreeRailAdd.cxButtonEdit8PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
var Q : TADOQuery;
begin
  fmPlanClient := TfmPlanClient.Create(Application, True, 1);
  if fmPlanClient.ShowModal = mrOk then begin
    Q := TADOQuery.Create(nil);
    Q.Connection := fmMain.Lis;
    Q.SQL.Add('SELECT	* FROM view_plan_client_rate_rights WHERE plan_client_rate_id = ' + IntToStr(fmPlanClient._GetPlanClientRateId));
    Q.Open;

    if Q.FieldByName('plan_rate').Value = null then begin
      Application.MessageBox('Возможен только выбор ставки!', 'ВНИМАНИЕ', MB_ICONINFORMATION or MB_OK);
      Exit;
    end;

//    if Fservice_type = 0 then
    Fplan_client_rate_id := fmPlanClient._GetPlanClientRateId;


    Fset_calc_enabled := False;
    //Fcontract_id              := iif(FClient_OrdersAgreeRail.FieldByName('contract_id').IsNull, -9, FClient_OrdersAgreeRail.FieldByName('contract_id').Value);
    Fcurrency_id              := iif(Q.FieldByName('currency_id').IsNull, -9, Q.FieldByName('currency_id').Value);
    Fed_izm_id                := iif(Q.FieldByName('ed_izm_id').IsNull,   -9, Q.FieldByName('ed_izm_id').Value);

    FkargoETSNG_id            := iif(Q.FieldByName('kargoETSNG_id').IsNull, -9, Q.FieldByName('kargoETSNG_id').Value);
    cxButtonEdit11.EditValue  := iif(Q.FieldByName('kargoETSNG_id').IsNull, '', Q.FieldByName('kargoETSNG_cod').Value);
    cxButtonEdit10.EditValue  := iif(Q.FieldByName('kargoETSNG_id').IsNull, '', Q.FieldByName('kargoETSNG_name').Value);
    cxTextEdit2.EditValue     := null;

    cxCheckBox1.Checked       := False;
    FkargoGNG_id              := -9;
    cxButtonEdit13.EditValue  := null;
    cxButtonEdit12.EditValue  := null;

    Fnode_begin_id            := iif(Q.FieldByName('node_begin_id').IsNull, -9, Q.FieldByName('node_begin_id').Value);
    cxTextEdit3.EditValue     := iif(Q.FieldByName('node_begin_id').IsNull, '', Q.FieldByName('node_begin_cod').Value);
    cxButtonEdit2.EditValue   := iif(Q.FieldByName('node_begin_id').IsNull, '', Q.FieldByName('node_begin_name').Value);

    Fnode_end_id              := iif(Q.FieldByName('node_end_id').IsNull, -9, Q.FieldByName('node_end_id').Value);
    cxTextEdit4.EditValue     := iif(Q.FieldByName('node_end_id').IsNull, '', Q.FieldByName('node_end_cod').Value);
    cxButtonEdit3.EditValue   := iif(Q.FieldByName('node_end_id').IsNull, '', Q.FieldByName('node_end_name').Value);

    cxLookupComboBox1.EditValue := iif(Fcurrency_id = -9, null, Fcurrency_id);
    cxLookupComboBox2.EditValue := iif(Fed_izm_id = -9, null, Fed_izm_id);

    Fbudget_id                := Q.FieldByName('budget_id').Value;
    cxButtonEdit7.EditValue   := Q.FieldByName('budget_name').Value;
    cxButtonEdit8.EditValue   := Q.FieldByName('plan_rate').Value;

    Fset_calc_enabled := True;
    CalcSum();
  end;
  Q.Free;

end;

procedure TfmOrdersAgreeRailAdd.cxButtonEdit9PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  fmContract := TfmContract.Create(Application, True, 0);
  fmContract.cxTabSheet2.Visible := False;
  fmContract.Visible := False;
  if cxLookupComboBox8.EditValue <> null then fmContract._SetContractId := cxLookupComboBox8.EditValue;
  if fmContract.ShowModal=mrOk then begin
    Query_Agent.Close;
    Query_Agent.Open;
    if Query_Agent.Locate('contract_id', fmContract._GetContractId, []) then cxLookupComboBox8.EditValue := fmContract._GetContractId
    else begin
      Application.MessageBox('Выбранный договор в этом периоде не действует!', 'Внимание', MB_OK);
      cxLookupComboBox1.EditValue := null;
    end;
  end;
end;

procedure TfmOrdersAgreeRailAdd.cxCheckBox1PropertiesEditValueChanged(Sender: TObject);
begin
  if cxCheckBox1.Checked then begin
    cxButtonEdit12.Enabled := True;
    cxButtonEdit13.Enabled := True;
    cxButtonEdit12.Style.Color := clWhite;
    cxButtonEdit13.Style.Color := clWhite;
  end else begin
    cxButtonEdit12.Enabled := False;
    cxButtonEdit13.Enabled := False;
    cxButtonEdit12.Style.Color := clBtnFace;
    cxButtonEdit13.Style.Color := clBtnFace;
    FkargoGNG_id := -9;
  end;
end;

procedure TfmOrdersAgreeRailAdd.cxCurrencyEdit1PropertiesEditValueChanged(Sender: TObject);
begin
  CalcSum();
end;

procedure TfmOrdersAgreeRailAdd.cxCurrencyEdit3PropertiesEditValueChanged(Sender: TObject);
begin
  CalcSum();
end;

procedure TfmOrdersAgreeRailAdd.cxCurrencyEdit4PropertiesEditValueChanged(Sender: TObject);
begin
  CalcSum();
end;

procedure TfmOrdersAgreeRailAdd.cxLookupComboBox2PropertiesChange(Sender: TObject);
begin
  CalcSum();
end;

procedure TfmOrdersAgreeRailAdd.cxLookupComboBox8PropertiesChange(Sender: TObject);
var contract_id  : integer;
begin
  cxButtonEdit9.EditValue  := '';
  cxButtonEdit16.EditValue := '';

  if Query_Agent.Active then begin
    contract_id := iif(cxLookupComboBox8.EditValue = null, -9, cxLookupComboBox8.EditValue);

    if Query_Agent.Locate('contract_id', contract_id, []) then begin
      cxButtonEdit16.EditValue    := Query_Agent.FieldByName('firm_self_name').AsString;
      cxButtonEdit9.EditValue     := Query_Agent.FieldByName('contract_cod'  ).AsString;
      if not Query_Agent.FieldByName('currency_id').IsNull then
        cxLookupComboBox1.EditValue := Query_Agent.FieldByName('currency_id'   ).Value;
    end;
  end;

end;

function TfmOrdersAgreeRailAdd.FindInfObj(caption_name: string; table_name: string; set_cod: boolean; var id: integer; var cod: string; var name: string): boolean;
var new_str : string;
    Q : TADOQuery;
    res : boolean;
begin
  table_name := LowerCase(table_name);

  if InputQuery('Поиск', caption_name, new_str) then begin
    Q := TADOQuery.Create(nil);
    Q.Connection := fmMain.Lis;
    Q.SQL.Add('SELECT inf_obj_id, inf_obj_name, inf_obj_cod');
    Q.SQL.Add('FROM ' + table_name);
    Q.SQL.Add('WHERE (' + iif(set_cod, 'inf_obj_cod', 'inf_obj_name') + ' LIKE ''%' + new_str + '%'')');
    Q.SQL.Add('AND (LEFT(' + DateToSQL(Fdate_period) + ', 6) BETWEEN convert(varchar(6), date_begin, 112) AND convert(varchar(6), date_end, 112) OR date_end is null)');
    if (table_name = 'inf_obj') or (table_name = 'inf_obj_etsng') then
      Q.SQL.Add('AND (dbo.GetInfObjVisible(str_group_visible) = 1)');
    Q.SQL.Add('ORDER BY inf_obj_name');
    Q.Open;
    fmFilter := TfmFilter.Create(0, Q, 'inf_obj_id', 'inf_obj_cod', 'inf_obj_name');
    if fmFilter.ShowModal=mrOk then begin
      id  := fmFilter.GetId;
      cod := fmFilter.GetCod;
      name:= fmFilter.GetName;
      res := True;
    end else res := False;
    Q.Free;
  end else res := False;

  Result := res;
end;

procedure TfmOrdersAgreeRailAdd.SetKargoAdd(set_kargo_add: boolean);
begin
  if set_kargo_add = True then begin
    Label1.Enabled         := True;
    cxButtonEdit14.Enabled := True;
    cxButtonEdit15.Enabled := True;

  end else begin
    FkargoETSNG_add_id  := -9;
    cxButtonEdit14.Text := '';
    cxButtonEdit15.Text := '';

    Label1.Enabled         := False;
    cxButtonEdit14.Enabled := False;
    cxButtonEdit15.Enabled := False;
  end;
end;

procedure TfmOrdersAgreeRailAdd.BitBtn1Click(Sender: TObject);
var Q : TADOQuery;
begin
  CalcSum();
  Fcontract_id      := iif(cxLookupComboBox8.EditValue = null, -9, cxLookupComboBox8.EditValue);
  Fcurrency_id      := iif(cxLookupComboBox1.EditValue = null, -9, cxLookupComboBox1.EditValue);
  Fed_izm_id        := iif(cxLookupComboBox2.EditValue = null, -9, cxLookupComboBox2.EditValue);

  if Fcontract_id = -9 then begin
    Application.MessageBox('Выберите договор.', 'Ошибка', MB_OK);
    ModalResult := mrNone;
    Exit;
  end;

  if cxButtonEdit8.EditValue = Null then begin
    Application.MessageBox('Выберите ставку.', 'Ошибка', MB_OK);
    ModalResult := mrNone;
    Exit;
  end;

  if Fed_izm_id = -9 then begin
    Application.MessageBox('Выберите единицу измерения.', 'Ошибка', MB_OK);
    ModalResult := mrNone;
    Exit;
  end;

  if Fcurrency_id = -9 then begin
    Application.MessageBox('Выберите валюту.', 'Ошибка', MB_OK);
    ModalResult := mrNone;
    Exit;
  end;

  ModalResult := mrOK;

  if Fid = -9 then begin
    FClient_OrdersAgreeRail.Append;
  end else begin
    FClient_OrdersAgreeRail.Locate('id', Fid, []);
    FClient_OrdersAgreeRail.Edit;
  end;

  FClient_OrdersAgreeRail.FieldByName('service_type'            ).Value := Fservice_type;
  FClient_OrdersAgreeRail.FieldByName('service_type_name'       ).Value := iif(Fservice_type = 0, 'Доход', 'Расход');
  FClient_OrdersAgreeRail.FieldByName('budget_id'               ).Value := iif(Fbudget_id = -9, null, Fbudget_id);
  FClient_OrdersAgreeRail.FieldByName('budget_name'             ).Value := iif(Fbudget_id = -9, null, cxButtonEdit7.EditValue);
  FClient_OrdersAgreeRail.FieldByName('budget_cod'              ).Value := iif(Fbudget_id = -9, null, cxTextEdit1.EditValue);
  FClient_OrdersAgreeRail.FieldByName('contract_id'             ).Value := iif(Fcontract_id = -9, null, Fcontract_id);
  FClient_OrdersAgreeRail.FieldByName('firm_customer_name'      ).Value := cxLookupComboBox8.Text;
  FClient_OrdersAgreeRail.FieldByName('contract_cod'            ).Value := cxButtonEdit9.EditValue;
  FClient_OrdersAgreeRail.FieldByName('currency_id'             ).Value := iif(Fcurrency_id = -9, null, Fcurrency_id);
  FClient_OrdersAgreeRail.FieldByName('brief_name'              ).Value := cxLookupComboBox1.Text;
  FClient_OrdersAgreeRail.FieldByName('ed_izm_id'               ).Value := iif(Fed_izm_id = -9, null, Fed_izm_id);
  FClient_OrdersAgreeRail.FieldByName('ed_izm_cod'              ).Value := Query_Ed_Izm.Lookup('inf_obj_id', cxLookupComboBox2.EditValue, 'inf_obj_cod');
  FClient_OrdersAgreeRail.FieldByName('ed_izm_name'             ).Value := cxLookupComboBox2.Text;
  FClient_OrdersAgreeRail.FieldByName('add_sum'                 ).Value := CalcSum();
  FClient_OrdersAgreeRail.FieldByName('add_count'               ).Value := cxCurrencyEdit3.EditValue;
  FClient_OrdersAgreeRail.FieldByName('plan_client_rate_id'     ).Value := iif(Fplan_client_rate_id = -9, null, Fplan_client_rate_id);
  FClient_OrdersAgreeRail.FieldByName('add_rate'                ).Value := iif(Fplan_client_rate_id = -9, null, cxButtonEdit8.EditValue);
  FClient_OrdersAgreeRail.FieldByName('count_day_vagon'         ).Value := cxCurrencyEdit5.EditValue;
  FClient_OrdersAgreeRail.FieldByName('count_vagon'             ).Value := cxCurrencyEdit15.EditValue;
  FClient_OrdersAgreeRail.FieldByName('count_weight'            ).Value := cxCurrencyEdit4.EditValue;
  FClient_OrdersAgreeRail.FieldByName('kargoETSNG_id'           ).Value := iif(FkargoETSNG_id = -9, null, FkargoETSNG_id);
  FClient_OrdersAgreeRail.FieldByName('kargoETSNG_cod'          ).Value := cxButtonEdit11.EditValue;
  FClient_OrdersAgreeRail.FieldByName('kargoETSNG_name'         ).Value := cxButtonEdit10.EditValue;
  FClient_OrdersAgreeRail.FieldByName('kargoETSNG_group_name'   ).Value := cxTextEdit2.EditValue;
  FClient_OrdersAgreeRail.FieldByName('kargoETSNG_add_id'       ).Value := iif(FkargoETSNG_add_id = -9, null, FkargoETSNG_add_id);
  FClient_OrdersAgreeRail.FieldByName('kargoETSNG_add_cod'      ).Value := cxButtonEdit15.EditValue;
  FClient_OrdersAgreeRail.FieldByName('kargoETSNG_add_name'     ).Value := cxButtonEdit14.EditValue;
  FClient_OrdersAgreeRail.FieldByName('kargoGNG_id'             ).Value := iif(FkargoGNG_id = -9, null, FkargoGNG_id);
  FClient_OrdersAgreeRail.FieldByName('kargoGNG_cod'            ).Value := cxButtonEdit13.EditValue;
  FClient_OrdersAgreeRail.FieldByName('kargoGNG_name'           ).Value := cxButtonEdit12.EditValue;
  FClient_OrdersAgreeRail.FieldByName('state_begin_id'          ).Value := iif(Fstate_begin_id = -9, null, Fstate_begin_id);
  FClient_OrdersAgreeRail.FieldByName('state_begin_name'        ).Value := cxButtonEdit1.EditValue;
  FClient_OrdersAgreeRail.FieldByName('state_end_id'            ).Value := iif(Fstate_end_id = -9, null, Fstate_end_id);
  FClient_OrdersAgreeRail.FieldByName('state_end_name'          ).Value := cxButtonEdit4.EditValue;
  FClient_OrdersAgreeRail.FieldByName('node_begin_id'           ).Value := iif(Fnode_begin_id = -9, null, Fnode_begin_id);
  FClient_OrdersAgreeRail.FieldByName('node_begin_cod'          ).Value := cxTextEdit3.EditValue;
  FClient_OrdersAgreeRail.FieldByName('node_begin_name'         ).Value := cxButtonEdit2.EditValue;
  FClient_OrdersAgreeRail.FieldByName('node_end_id'             ).Value := iif(Fnode_end_id = -9, null, Fnode_end_id);
  FClient_OrdersAgreeRail.FieldByName('node_end_cod'            ).Value := cxTextEdit4.EditValue;
  FClient_OrdersAgreeRail.FieldByName('node_end_name'           ).Value := cxButtonEdit3.EditValue;
  FClient_OrdersAgreeRail.FieldByName('comment'                 ).Value := cxMemo1.EditValue;
  FClient_OrdersAgreeRail.FieldByName('date_plan_pay'           ).Value := cxDateEdit1.EditValue;
  FClient_OrdersAgreeRail.FieldByName('date_plan_send'          ).Value := cxDateEdit2.EditValue;
  FClient_OrdersAgreeRail.Post;

  //Fid := FClient_OrdersAgreeRail.FieldByName('id').AsInteger;

  if Fid = -9 then begin
    if Application.MessageBox('Создать расходные услуги?', 'ВНИМАНИЕ', MB_ICONQUESTION or MB_YESNO) = IDYES then begin
      Q := TADOQuery.Create(nil);
      Q.Connection := fmMain.Lis;
      Q.Sql.Text := 'SELECT a.*, c.node_begin_id AS client_node_begin_id,c.node_begin_cod AS client_node_begin_cod,c.node_begin_name AS client_node_begin_name, ' +
      'c.node_end_id    AS client_node_end_id, c.node_end_cod     AS client_node_end_cod, c.node_end_name     AS client_node_end_name, ' +
      'c.kargoETSNG_id	AS client_kargoETSNG_id, c.kargoETSNG_cod	AS client_kargoETSNG_cod, c.kargoETSNG_name	AS client_kargoETSNG_name, ' +
      'c.currency_id		AS client_currency_id, c.brief_name		    AS client_brief_name, ' +
      'c.ed_izm_id			AS client_ed_izm_id, c.ed_izm_cod		      AS client_ed_izm_cod, c.ed_izm_name		      AS client_ed_izm_name, ' +
      'c.budget_id			AS client_budget_id, c.budget_cod		      AS client_budget_cod, c.budget_name		      AS client_budget_name ' +
      'FROM view_plan_agent_rate a LEFT JOIN view_plan_client_rate_rights c ON a.plan_client_rate_id = c.plan_client_rate_id ' +
      'WHERE a.plan_client_rate_id = ' + IntToStr(Fplan_client_rate_id);
      Q.Open;
      Q.First;

      while not Q.Eof do begin

        FClient_OrdersAgreeRail.Append;

        FClient_OrdersAgreeRail.FieldByName('service_type'            ).Value := 1;
        FClient_OrdersAgreeRail.FieldByName('service_type_name'       ).Value := 'Расход';

        FClient_OrdersAgreeRail.FieldByName('budget_id'               ).Value := iif(Q.FieldByName('budget_id').value   = null, Q.FieldByName('client_budget_id').value,  Q.FieldByName('budget_id').value);
        FClient_OrdersAgreeRail.FieldByName('budget_cod'              ).Value := iif(Q.FieldByName('budget_cod').value  = null, Q.FieldByName('client_budget_cod').value, Q.FieldByName('budget_cod').value);
        FClient_OrdersAgreeRail.FieldByName('budget_name'             ).Value := iif(Q.FieldByName('budget_name').value = null, Q.FieldByName('client_budget_name').value,Q.FieldByName('budget_name').value);

        FClient_OrdersAgreeRail.FieldByName('contract_id'             ).Value := iif(Q.FieldByName('contract_id').value         = null, null, Q.FieldByName('contract_id').value);
        FClient_OrdersAgreeRail.FieldByName('contract_cod'            ).Value := iif(Q.FieldByName('contract_cod').value        = null, null, Q.FieldByName('contract_cod').value);
        FClient_OrdersAgreeRail.FieldByName('firm_customer_name'      ).Value := iif(Q.FieldByName('firm_customer_name').value  = null, null, Q.FieldByName('firm_customer_name').value);

        FClient_OrdersAgreeRail.FieldByName('currency_id'             ).Value := iif(Q.FieldByName('currency_id').value = null, Q.FieldByName('client_currency_id').value,Q.FieldByName('currency_id').value);
        FClient_OrdersAgreeRail.FieldByName('brief_name'              ).Value := iif(Q.FieldByName('brief_name').value  = null, Q.FieldByName('client_brief_name').value, Q.FieldByName('brief_name').value);

        FClient_OrdersAgreeRail.FieldByName('ed_izm_id'               ).Value := iif(Q.FieldByName('ed_izm_id').value   = null, Q.FieldByName('client_ed_izm_id').value,  Q.FieldByName('ed_izm_id').value);
        FClient_OrdersAgreeRail.FieldByName('ed_izm_cod'              ).Value := iif(Q.FieldByName('ed_izm_cod').value  = null, Q.FieldByName('client_ed_izm_cod').value, Q.FieldByName('ed_izm_cod').value);
        FClient_OrdersAgreeRail.FieldByName('ed_izm_name'             ).Value := iif(Q.FieldByName('ed_izm_name').value = null, Q.FieldByName('client_ed_izm_name').value,Q.FieldByName('ed_izm_name').value);

        FClient_OrdersAgreeRail.FieldByName('add_sum'                 ).Value := iif((Q.FieldByName('plan_rate').value * cxCurrencyEdit3.EditValue) = null, 0, (Q.FieldByName('plan_rate').value * cxCurrencyEdit3.EditValue));
        FClient_OrdersAgreeRail.FieldByName('add_count'               ).Value := cxCurrencyEdit3.EditValue;
        FClient_OrdersAgreeRail.FieldByName('plan_client_rate_id'     ).Value := iif(Q.FieldByName('plan_agent_rate_id').value  = null, null,  Q.FieldByName('plan_agent_rate_id').value);
        FClient_OrdersAgreeRail.FieldByName('add_rate'                ).Value := iif(Q.FieldByName('plan_rate').value           = null, null,  Q.FieldByName('plan_rate').value);

        FClient_OrdersAgreeRail.FieldByName('count_day_vagon'         ).Value := cxCurrencyEdit5.EditValue;
        FClient_OrdersAgreeRail.FieldByName('count_vagon'             ).Value := cxCurrencyEdit15.EditValue;
        FClient_OrdersAgreeRail.FieldByName('count_weight'            ).Value := cxCurrencyEdit4.EditValue;

        FClient_OrdersAgreeRail.FieldByName('kargoETSNG_id'           ).Value := iif(Q.FieldByName('kargoETSNG_id').value   = null, Q.FieldByName('client_kargoETSNG_id').value,  Q.FieldByName('kargoETSNG_id').value);
        FClient_OrdersAgreeRail.FieldByName('kargoETSNG_cod'          ).Value := iif(Q.FieldByName('kargoETSNG_cod').value  = null, Q.FieldByName('client_kargoETSNG_cod').value, Q.FieldByName('kargoETSNG_cod').value);
        FClient_OrdersAgreeRail.FieldByName('kargoETSNG_name'         ).Value := iif(Q.FieldByName('kargoETSNG_name').value = null, Q.FieldByName('client_kargoETSNG_name').value,Q.FieldByName('kargoETSNG_name').value);

        FClient_OrdersAgreeRail.FieldByName('kargoETSNG_group_name'   ).Value := cxTextEdit2.EditValue;

        FClient_OrdersAgreeRail.FieldByName('kargoETSNG_add_id'       ).Value := iif(FkargoETSNG_add_id = -9, null, FkargoETSNG_add_id);
        FClient_OrdersAgreeRail.FieldByName('kargoETSNG_add_cod'      ).Value := cxButtonEdit15.EditValue;
        FClient_OrdersAgreeRail.FieldByName('kargoETSNG_add_name'     ).Value := cxButtonEdit14.EditValue;

        FClient_OrdersAgreeRail.FieldByName('kargoGNG_id'             ).Value := iif(FkargoGNG_id = -9, null, FkargoGNG_id);
        FClient_OrdersAgreeRail.FieldByName('kargoGNG_cod'            ).Value := cxButtonEdit13.EditValue;
        FClient_OrdersAgreeRail.FieldByName('kargoGNG_name'           ).Value := cxButtonEdit12.EditValue;

        FClient_OrdersAgreeRail.FieldByName('state_begin_id'          ).Value := iif(Fstate_begin_id = -9, null, Fstate_begin_id);
        FClient_OrdersAgreeRail.FieldByName('state_begin_name'        ).Value := cxButtonEdit1.EditValue;

        FClient_OrdersAgreeRail.FieldByName('state_end_id'            ).Value := iif(Fstate_end_id = -9, null, Fstate_end_id);
        FClient_OrdersAgreeRail.FieldByName('state_end_name'          ).Value := cxButtonEdit4.EditValue;

        FClient_OrdersAgreeRail.FieldByName('node_begin_id'           ).Value := iif(Q.FieldByName('node_begin_id').value   = null, Q.FieldByName('client_node_begin_id').value,  Q.FieldByName('node_begin_id').value);
        FClient_OrdersAgreeRail.FieldByName('node_begin_cod'          ).Value := iif(Q.FieldByName('node_begin_cod').value  = null, Q.FieldByName('client_node_begin_cod').value, Q.FieldByName('node_begin_cod').value);
        FClient_OrdersAgreeRail.FieldByName('node_begin_name'         ).Value := iif(Q.FieldByName('node_begin_name').value = null, Q.FieldByName('client_node_begin_name').value,Q.FieldByName('node_begin_name').value);

        FClient_OrdersAgreeRail.FieldByName('node_end_id'             ).Value := iif(Q.FieldByName('node_end_id').value   = null,   Q.FieldByName('client_node_end_id').value,    Q.FieldByName('node_end_id').value);
        FClient_OrdersAgreeRail.FieldByName('node_end_cod'            ).Value := iif(Q.FieldByName('node_end_cod').value  = null,   Q.FieldByName('client_node_end_cod').value,   Q.FieldByName('node_end_cod').value);
        FClient_OrdersAgreeRail.FieldByName('node_end_name'           ).Value := iif(Q.FieldByName('node_end_name').value = null,   Q.FieldByName('client_node_end_name').value,  Q.FieldByName('node_end_name').value);

        FClient_OrdersAgreeRail.FieldByName('comment'                 ).Value := cxMemo1.EditValue;

        FClient_OrdersAgreeRail.FieldByName('date_plan_pay'           ).Value := cxDateEdit1.EditValue;
        FClient_OrdersAgreeRail.FieldByName('date_plan_send'          ).Value := cxDateEdit2.EditValue;

        FClient_OrdersAgreeRail.Post;

        Q.Next;
      end;
    end;
  end;


end;

function  TfmOrdersAgreeRailAdd.CalcSum(): Currency;
var SP_orders_agree_rail_CALC: TADOStoredProc;
begin
  if Fset_calc_enabled = True then begin
    Fcurrency_id      := iif(cxLookupComboBox1.EditValue = null, -9, cxLookupComboBox1.EditValue);
    Fed_izm_id        := iif(cxLookupComboBox2.EditValue = null, -9, cxLookupComboBox2.EditValue);

    SP_orders_agree_rail_CALC := TADOStoredProc.Create(nil);
    SP_orders_agree_rail_CALC.Connection := fmMain.Lis;
    SP_orders_agree_rail_CALC.ProcedureName := 'sp_orders_agree_rail_CALC';
    SP_orders_agree_rail_CALC.Parameters.Refresh;
    SP_orders_agree_rail_CALC.Parameters.ParamByName('@currency_id'              ).Value := iif(Fcurrency_id = -9, null, Fcurrency_id);
    SP_orders_agree_rail_CALC.Parameters.ParamByName('@ed_izm_id'                ).Value := iif(Fed_izm_id = -9, null, Fed_izm_id);
    SP_orders_agree_rail_CALC.Parameters.ParamByName('@count_day_vagon'          ).Value := cxCurrencyEdit5.EditValue;
    SP_orders_agree_rail_CALC.Parameters.ParamByName('@count_vagon'              ).Value := cxCurrencyEdit15.EditValue;
    SP_orders_agree_rail_CALC.Parameters.ParamByName('@count_weight'             ).Value := cxCurrencyEdit4.EditValue;
    SP_orders_agree_rail_CALC.Parameters.ParamByName('@add_rate'                 ).Value := cxButtonEdit8.EditValue;

    SP_orders_agree_rail_CALC.ExecProc;

    cxCurrencyEdit2.EditValue  := SP_orders_agree_rail_CALC.Parameters.ParamByName('@add_sum').Value;
    cxCurrencyEdit5.EditValue  := SP_orders_agree_rail_CALC.Parameters.ParamByName('@count_day_vagon').Value;
    cxCurrencyEdit15.EditValue := SP_orders_agree_rail_CALC.Parameters.ParamByName('@count_vagon').Value;
    cxCurrencyEdit4.EditValue  := SP_orders_agree_rail_CALC.Parameters.ParamByName('@count_weight').Value;
    cxButtonEdit8.EditValue    := SP_orders_agree_rail_CALC.Parameters.ParamByName('@add_rate').Value;
    cxCurrencyEdit3.EditValue  := SP_orders_agree_rail_CALC.Parameters.ParamByName('@add_count').Value;

    SP_orders_agree_rail_CALC.Free;
  end;

  Result := cxCurrencyEdit2.EditValue;
end;



procedure TfmOrdersAgreeRailAdd.SetContractId(contract_id: integer);
var Q: TADOQuery;
begin
  cxLookupComboBox8.Properties.OnChange := nil;
  cxButton2.OnClick := nil;
  cxButton3.OnClick := nil;
  cxButton4.OnClick := nil;

  Q := TADOQuery.Create(nil);
  Q.Connection := fmMain.Lis;
  Q.SQL.Add('SELECT *');
  Q.SQL.Add('FROM   view_contract_rights');
  Q.SQL.Add('WHERE  contract_id = ' + IntToStr(contract_id));
  Q.SQL.Add('       and ' + DateToSQL(Fdate_period) + ' between cast(date_begin as datetime)-day(date_begin)+1 and cast(dateadd(month, 1, date_end) as datetime)-day(dateadd(month, 1, date_end))');
  Q.Open;

  if Q.RecordCount > 0 then begin

    if Q.FieldByName('type_contract').AsInteger = 0 then cxButton2.Down := True;
    if Q.FieldByName('type_contract').AsInteger = 1 then cxButton3.Down := True;
    if Q.FieldByName('type_contract').AsInteger = 2 then cxButton4.Down := True;
    Query_Agent.Close;
    Query_Agent.Parameters.ParamByName('date_current' ).Value := Fdate_period;
    Query_Agent.Parameters.ParamByName('type_contract').Value := Q.FieldByName('type_contract').Value;
    Query_Agent.Open;

    cxLookupComboBox8.EditValue := contract_id;
  end else begin
    Application.MessageBox('Договор прекратил своё действие!', 'Внимание', MB_OK);
  end;

  cxLookupComboBox8.Properties.OnChange := cxLookupComboBox8PropertiesChange;
  cxButton2.OnClick := cxButton2Click;
  cxButton3.OnClick := cxButton2Click;
  cxButton4.OnClick := cxButton2Click;
  cxLookupComboBox8PropertiesChange(nil);

  Q.Free;
end;

procedure TfmOrdersAgreeRailAdd.SetNodeBeginId(node_begin_id: integer);
var Q: TADOQuery;
begin
  Q := TADOQuery.Create(nil);
  Q.Connection := fmMain.Lis;
  Q.SQL.Add('SELECT * FROM inf_obj_NODE WHERE inf_obj_id = ' + IntToStr(node_begin_id));
  Q.Open;
  if Q.FieldByName('inf_obj_id').IsNull then begin
    Fnode_begin_id     := -9;
    cxButtonEdit2.Text := '';
    cxTextEdit3.Text   := '';
  end else begin
    Fnode_begin_id     := Q.FieldByName('inf_obj_id').AsInteger;
    cxButtonEdit2.Text := Q.FieldByName('inf_obj_name').AsString;
    cxTextEdit3.Text   := Q.FieldByName('inf_obj_cod').AsString;
  end;

  Q.Free;
end;

procedure TfmOrdersAgreeRailAdd.SetFirmSenderId(firm_sender_id: integer);
begin

end;

procedure TfmOrdersAgreeRailAdd.SetFirmRecieverId(firm_reciever_id: integer);
begin

end;

procedure TfmOrdersAgreeRailAdd.SetNodeEndId(node_end_id: integer);
var Q: TADOQuery;
begin
  Q := TADOQuery.Create(nil);
  Q.Connection := fmMain.Lis;
  Q.SQL.Add('SELECT * FROM inf_obj_NODE WHERE inf_obj_id = ' + IntToStr(node_end_id));
  Q.Open;
  if Q.FieldByName('inf_obj_id').IsNull then begin
    Fnode_end_id       := -9;
    cxButtonEdit3.Text := '';
    cxTextEdit4.Text   := '';
  end else begin
    Fnode_end_id       := Q.FieldByName('inf_obj_id').AsInteger;
    cxButtonEdit3.Text := Q.FieldByName('inf_obj_name').AsString;
    cxTextEdit4.Text   := Q.FieldByName('inf_obj_cod').AsString;
  end;

  Q.Free;
end;

procedure TfmOrdersAgreeRailAdd.SetStateBeginId(state_begin_id: integer);
var Q: TADOQuery;
begin
  Q := TADOQuery.Create(nil);
  Q.Connection := fmMain.Lis;
  Q.SQL.Add('SELECT * FROM inf_obj_STATE WHERE inf_obj_id = ' + IntToStr(state_begin_id));
  Q.Open;
  if Q.FieldByName('inf_obj_id').IsNull then begin
    Fstate_begin_id    := -9;
    cxButtonEdit1.Text := '';
  end else begin
    Fstate_begin_id    := Q.FieldByName('inf_obj_id').AsInteger;
    cxButtonEdit1.Text := Q.FieldByName('inf_obj_name').AsString;
  end;

  Q.Free;
end;

procedure TfmOrdersAgreeRailAdd.SetStateEndId(state_end_id: integer);
var Q: TADOQuery;
begin
  Q := TADOQuery.Create(nil);
  Q.Connection := fmMain.Lis;
  Q.SQL.Add('SELECT * FROM inf_obj_STATE WHERE inf_obj_id = ' + IntToStr(state_end_id));
  Q.Open;
  if Q.FieldByName('inf_obj_id').IsNull then begin
    Fstate_end_id      := -9;
    cxButtonEdit4.Text := '';
  end else begin
    Fstate_end_id      := Q.FieldByName('inf_obj_id').AsInteger;
    cxButtonEdit4.Text := Q.FieldByName('inf_obj_name').AsString;
  end;

  Q.Free;
end;

procedure TfmOrdersAgreeRailAdd.SetKargoETSNGId(kargoETSNG_id: integer);
var Q: TADOQuery;
begin
  Q := TADOQuery.Create(nil);
  Q.Connection := fmMain.Lis;
  Q.SQL.Add('SELECT * FROM view_kargoETSNG  WHERE inf_obj_id = ' + IntToStr(kargoETSNG_id));
  Q.Open;
  if Q.FieldByName('inf_obj_id').IsNull then begin
    FkargoETSNG_id      := -9;
    cxButtonEdit10.Text := '';
    cxButtonEdit11.Text := '';
    cxTextEdit2.Text   := '';
    SetKargoAdd(False);
  end else begin
    FkargoETSNG_id           := Q.FieldByName('inf_obj_id').AsInteger;
    cxButtonEdit10.EditValue := Q.FieldByName('inf_obj_name').AsString;
    cxButtonEdit11.EditValue := Q.FieldByName('inf_obj_cod').AsString;
    cxTextEdit2.EditValue    := Q.FieldByName('group_name').Value;

    if Q.FieldByName('group_cod').AsString = '9' then
      SetKargoAdd(True)
    else
      SetKargoAdd(False);
  end;

  Q.Free;
end;

procedure TfmOrdersAgreeRailAdd.SetKargoETSNGAddId(kargoETSNG_add_id: integer);
var Q: TADOQuery;
begin
  Q := TADOQuery.Create(nil);
  Q.Connection := fmMain.Lis;
  Q.SQL.Add('SELECT * FROM view_kargoETSNG WHERE inf_obj_id = ' + IntToStr(kargoETSNG_add_id));
  Q.Open;
  if Q.FieldByName('inf_obj_id').IsNull then begin
    FkargoETSNG_add_id  := -9;
    cxButtonEdit14.Text := '';
    cxButtonEdit15.Text  := '';
  end else begin
    FkargoETSNG_add_id       := Q.FieldByName('inf_obj_id').AsInteger;
    cxButtonEdit14.EditValue := Q.FieldByName('inf_obj_name').AsString;
    cxButtonEdit15.EditValue := Q.FieldByName('inf_obj_cod').AsString;
  end;
  Q.Free;
end;

procedure TfmOrdersAgreeRailAdd.SetKargoGNGId(kargoGNG_id: integer);
var Q: TADOQuery;
begin
  Q := TADOQuery.Create(nil);
  Q.Connection := fmMain.Lis;
  Q.SQL.Add('SELECT * FROM inf_obj_GNG WHERE inf_obj_id = ' + IntToStr(kargoGNG_id));
  Q.Open;
  if Q.FieldByName('inf_obj_id').IsNull then begin
    cxCheckBox1.Checked := False;
    FkargoGNG_id        := -9;
    cxButtonEdit12.Text := '';
    cxButtonEdit13.Text := '';
  end else begin
    cxCheckBox1.Checked := True;
    FkargoGNG_id             := Q.FieldByName('inf_obj_id').AsInteger;
    cxButtonEdit12.EditValue := Q.FieldByName('inf_obj_name').AsString;
    cxButtonEdit13.EditValue := Q.FieldByName('inf_obj_cod').AsString;
  end;
  Q.Free;
end;

end.

