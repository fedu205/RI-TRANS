unit PlanRateClientAdd;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Default,
  Dialogs, cxGraphics, cxTextEdit, cxDropDownEdit, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox,
  cxDBEdit, cxCalendar, cxControls, cxContainer, cxEdit, cxMaskEdit, cxButtonEdit, StdCtrls,
  Buttons, ExtCtrls, cxCurrencyEdit, DB, ADODB, cxPropertiesStore, DBClient, DateUtils, cxCheckBox,
  cxLookAndFeels, cxLookAndFeelPainters, ComCtrls, dxCore, cxDateUtils,
  cxClasses, ComObj, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMetropolis, dxSkinMetropolisDark, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue, dxSkinOffice2010Silver,
  dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinOffice2016Colorful, dxSkinOffice2016Dark, dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic, dxSkinSharp,
  dxSkinSharpPlus, dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008, dxSkinTheAsphaltWorld, dxSkinsDefaultPainters, dxSkinValentine, dxSkinVisualStudio2013Blue,
  dxSkinVisualStudio2013Dark, dxSkinVisualStudio2013Light, dxSkinVS2010, dxSkinWhiteprint, dxSkinXmas2008Blue, dxSkinscxPCPainter, dxBarBuiltInMenu, cxPC,
  cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxNavigator,
  cxDBData, cxGridLevel, cxGridCustomTableView, cxGridTableView,
  cxGridBandedTableView, cxGridDBBandedTableView, cxGridCustomView, cxGrid,
  dxBar, dxSkinsdxBarPainter, Vcl.Menus, cxButtons, cxLabel, cxGroupBox,
  cxRadioGroup, cxMemo, cxDataControllerConditionalFormattingRulesManagerDialog, dxSkinTheBezier, dxDateRanges, dxSkinOffice2019Colorful;

type
  TfmPlanRateClientAdd = class(TForm)
    Panel2: TPanel;
    Query_Currency: TADOQuery;
    DS_Currency: TDataSource;
    Query_Client: TADOQuery;
    DS_Client: TDataSource;
    Query_Node: TADOQuery;
    Query_Ed_Izm: TADOQuery;
    DS_Ed_Izm: TDataSource;
    cxPropertiesStore1: TcxPropertiesStore;
    ClientDataSet1: TClientDataSet;
    ClientDataSet1fact_id: TIntegerField;
    ClientDataSet1bargain_id: TIntegerField;
    ClientDataSet1num_document_pref: TStringField;
    ClientDataSet1num_document: TStringField;
    ClientDataSet1num_vagon: TIntegerField;
    ClientDataSet1num_konten: TStringField;
    ClientDataSet1date_from_to: TDateField;
    ClientDataSet1from_to: TSmallintField;
    ClientDataSet1datpr: TDateField;
    ClientDataSet1fact_weight: TFloatField;
    ClientDataSet1calc_weight: TFloatField;
    ClientDataSet1kargo_capacity: TIntegerField;
    ClientDataSet1fkv: TIntegerField;
    ClientDataSet1cod_exception: TIntegerField;
    ClientDataSet1vid_transfer: TIntegerField;
    ClientDataSet1calc_weight_check: TBooleanField;
    ClientDataSet1kateg_send: TIntegerField;
    ClientDataSet1tip_zap: TIntegerField;
    ClientDataSet1state_begin_id: TIntegerField;
    ClientDataSet1state_begin_cod: TStringField;
    ClientDataSet1state_begin_name: TStringField;
    ClientDataSet1state_end_id: TIntegerField;
    ClientDataSet1state_end_cod: TStringField;
    ClientDataSet1state_end_name: TStringField;
    ClientDataSet1node_begin_id: TIntegerField;
    ClientDataSet1node_begin_cod: TStringField;
    ClientDataSet1node_begin_name: TStringField;
    ClientDataSet1node_end_id: TIntegerField;
    ClientDataSet1node_end_cod: TStringField;
    ClientDataSet1node_end_name: TStringField;
    ClientDataSet1road_begin_id: TIntegerField;
    ClientDataSet1road_begin_cod: TStringField;
    ClientDataSet1road_begin_name: TStringField;
    ClientDataSet1road_end_id: TIntegerField;
    ClientDataSet1road_end_cod: TStringField;
    ClientDataSet1road_end_name: TStringField;
    ClientDataSet1kargoGNG_id: TIntegerField;
    ClientDataSet1kargoGNG_cod: TStringField;
    ClientDataSet1kargoGNG_name: TStringField;
    ClientDataSet1kargoETSNG_id: TIntegerField;
    ClientDataSet1kargoETSNG_cod: TStringField;
    ClientDataSet1kargoETSNG_name: TStringField;
    ClientDataSet1node_end_SNG_id: TIntegerField;
    ClientDataSet1node_end_SNG_cod: TStringField;
    ClientDataSet1node_end_SNG_name: TStringField;
    ClientDataSet1transport_pay: TFloatField;
    ClientDataSet1nds: TFloatField;
    ClientDataSet1add_collection: TFloatField;
    ClientDataSet1currency_id: TIntegerField;
    ClientDataSet1firm_info_id: TIntegerField;
    ClientDataSet1file_load_info: TStringField;
    ClientDataSet1sub_cod_self: TStringField;
    ClientDataSet1set_main: TBooleanField;
    ClientDataSet1kargoETSNG_add_id: TIntegerField;
    ClientDataSet1kargoETSNG_add_cod: TStringField;
    ClientDataSet1kargoETSNG_add_name: TStringField;
    DS_Type_Rate: TDataSource;
    Query_Type_Rate: TADOQuery;
    Query_TypeBargain: TADOQuery;
    DS_TypeBargain: TDataSource;
    Query_SHABLON: TADOQuery;
    DS_SHABLON: TDataSource;
    cxPageControl1: TcxPageControl;
    cxTabSheet1: TcxTabSheet;
    cxTabSheet2: TcxTabSheet;
    Panel4: TPanel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    cxButtonEdit8: TcxButtonEdit;
    cxButtonEdit9: TcxButtonEdit;
    cxButtonEdit10: TcxButtonEdit;
    cxButtonEdit11: TcxButtonEdit;
    Panel3: TPanel;
    Label10: TLabel;
    Label11: TLabel;
    Label6: TLabel;
    cxLookupComboBox6: TcxLookupComboBox;
    cxComboBox1: TcxComboBox;
    cxCurrencyEdit2: TcxCurrencyEdit;
    cxLookupComboBox3: TcxLookupComboBox;
    cxLookupComboBox2: TcxLookupComboBox;
    Button1: TButton;
    Query_RodVagon: TADOQuery;
    DS_RodVagon: TDataSource;
    DS_NDSName: TDataSource;
    Query_NDSName: TADOQuery;
    cxLookupComboBox8: TcxLookupComboBox;
    Panel5: TPanel;
    dxBarManager1: TdxBarManager;
    dxBarPopupMenu1: TdxBarPopupMenu;
    dxBarButton1: TdxBarButton;
    dxBarButton2: TdxBarButton;
    dxBarButton3: TdxBarButton;
    DS_ShapingRate: TDataSource;
    ClientDS_ShapingRate: TClientDataSet;
    ClientDS_ShapingRateid: TAutoIncField;
    ClientDS_ShapingRatecontract_agent_id: TIntegerField;
    ClientDS_ShapingRatefirm_customer_name: TStringField;
    ClientDS_ShapingRatecontract_cod: TStringField;
    ClientDS_ShapingRatecontract_date_begin: TDateField;
    ClientDS_ShapingRateed_izm_id: TIntegerField;
    ClientDS_ShapingRateed_izm_cod: TStringField;
    ClientDS_ShapingRateed_izm_name: TStringField;
    ClientDS_ShapingRatecurrency_id: TIntegerField;
    ClientDS_ShapingRatebrief_name: TStringField;
    ClientDS_ShapingRateshaping_rate_val: TCurrencyField;
    ClientDS_ShapingRatenode_begin_id: TIntegerField;
    ClientDS_ShapingRatenode_begin_cod: TStringField;
    ClientDS_ShapingRatenode_begin_name: TStringField;
    ClientDS_ShapingRatenode_end_id: TIntegerField;
    ClientDS_ShapingRatenode_end_cod: TStringField;
    ClientDS_ShapingRatenode_end_name: TStringField;
    ClientDS_ShapingRateshaping_rate_round_weight: TIntegerField;
    ClientDS_ShapingRateshaping_check_kargo_capacity: TBooleanField;
    ClientDS_ShapingRateshaping_kargo_min_norm: TCurrencyField;
    ClientDS_ShapingRatekargoETSNG_id: TIntegerField;
    ClientDS_ShapingRatekargoETSNG_cod: TStringField;
    ClientDS_ShapingRatekargoETSNG_name: TStringField;
    ClientDS_ShapingRateshaping_rate_nds_id: TIntegerField;
    ClientDS_ShapingRateshaping_rate_nds_name: TStringField;
    ClientDS_ShapingRatebudget_id: TIntegerField;
    ClientDS_ShapingRatebudget_cod: TStringField;
    ClientDS_ShapingRatebudget_name: TStringField;
    ClientDS_ShapingRatetype_calc_sum: TIntegerField;
    ClientDS_ShapingRateset_include_nds: TBooleanField;
    ClientDS_ShapingRatetype_park_id: TIntegerField;
    ClientDS_ShapingRatetype_park_name: TStringField;
    ClientDS_ShapingRaterod_vagon_id: TIntegerField;
    ClientDS_ShapingRaterod_vagon_name: TStringField;
    ClientDS_ShapingRatetable_rate_id: TIntegerField;
    ClientDS_ShapingRatesheet_num: TIntegerField;
    ClientDS_ShapingRatetype_rate_id: TIntegerField;
    ClientDS_ShapingRatetype_rate_name: TStringField;
    cxTabSheet3: TcxTabSheet;
    ClientDS_TableRate: TClientDataSet;
    ClientDS_TableRatedist_begin: TIntegerField;
    ClientDS_TableRatedist_end: TIntegerField;
    DS_TableRate: TDataSource;
    ClientDS_TableRatedist_rate_val: TFloatField;
    ClientDS_ShapingRatetable_rate_xml: TStringField;
    dxBarSubItem1: TdxBarSubItem;
    dxBarButton4: TdxBarButton;
    dxBarButton5: TdxBarButton;
    ClientDS_ShapingRateset_find_contract: TBooleanField;
    cxGrid1: TcxGrid;
    cxGrid1DBBandedTableView1: TcxGridDBBandedTableView;
    cxGrid1DBBandedTableView1id: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1firm_customer_name: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1contract_cod: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1ed_izm_name: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1shaping_rate_val: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1budget_name: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1brief_name: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1rate_nds_name: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1type_park_name: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1rod_vagon_name: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1set_find_contract: TcxGridDBBandedColumn;
    cxGrid1Level1: TcxGridLevel;
    ClientDS_ShapingRateels_cod: TStringField;
    ClientDS_ShapingRatetype_calc: TIntegerField;
    cxCheckBox1: TcxCheckBox;
    Query_Agreement: TADOQuery;
    DS_Agreement: TDataSource;
    cxGroupBox1: TcxGroupBox;
    cxDateEdit2: TcxDateEdit;
    Label7: TLabel;
    cxDateEdit1: TcxDateEdit;
    Label2: TLabel;
    cxGroupBox3: TcxGroupBox;
    Label3: TLabel;
    cxButtonEdit2: TcxButtonEdit;
    cxButtonEdit4: TcxButtonEdit;
    Label4: TLabel;
    cxButtonEdit3: TcxButtonEdit;
    cxButtonEdit6: TcxButtonEdit;
    cxGroupBox4: TcxGroupBox;
    Label5: TLabel;
    cxButtonEdit5: TcxButtonEdit;
    cxButtonEdit7: TcxButtonEdit;
    cxGroupBox5: TcxGroupBox;
    Label1: TLabel;
    cxLookupComboBox1: TcxLookupComboBox;
    cxButtonEdit1: TcxButtonEdit;
    cxPageControl2: TcxPageControl;
    cxTabSheet6: TcxTabSheet;
    BitBtn3: TBitBtn;
    cxLookupComboBox9: TcxLookupComboBox;
    cxTabSheet7: TcxTabSheet;
    cxTextEdit11: TcxTextEdit;
    cxComboBox3: TcxComboBox;
    Label18: TLabel;
    cxLookupComboBox7: TcxLookupComboBox;
    Label12: TLabel;
    Label23: TLabel;
    cxButtonEdit12: TcxButtonEdit;
    cxTextEdit6: TcxTextEdit;
    Label8: TLabel;
    cxLookupComboBox4: TcxLookupComboBox;
    Label9: TLabel;
    cxLookupComboBox5: TcxLookupComboBox;
    Label20: TLabel;
    cxButtonEdit14: TcxButtonEdit;
    cxButtonEdit16: TcxButtonEdit;
    cxTabSheet4: TcxTabSheet;
    cxGroupBox2: TcxGroupBox;
    Label34: TLabel;
    Label36: TLabel;
    Label38: TLabel;
    Label39: TLabel;
    Label31: TLabel;
    cxButtonEdit15: TcxButtonEdit;
    cxButtonEdit13: TcxButtonEdit;
    cxButtonEdit18: TcxButtonEdit;
    cxButtonEdit19: TcxButtonEdit;
    cxTextEdit17: TcxTextEdit;
    cxTabSheet5: TcxTabSheet;
    cxCheckBox2: TcxCheckBox;
    cxRadioGroup2: TcxRadioGroup;
    cxCheckBox4: TcxCheckBox;
    cxTextEdit5: TcxTextEdit;
    RadioGroup2: TRadioGroup;
    cxButtonEdit17: TcxButtonEdit;
    Label21: TLabel;
    cxButtonEdit20: TcxButtonEdit;
    cxTextEdit1: TcxTextEdit;
    Label22: TLabel;
    GroupBox1: TGroupBox;
    cxMemo1: TcxMemo;
    dxBarButton6: TdxBarButton;
    ClientDS_ShapingRateplan_agent_rate_id: TIntegerField;
    cxGrid1DBBandedTableView1type_rate_name: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1type_calc_name: TcxGridDBBandedColumn;
    ClientDS_ShapingRatetype_calc_name: TStringField;
    cxGrid1DBBandedTableView1els_cod: TcxGridDBBandedColumn;
    Label19: TLabel;
    cxComboBox2: TcxComboBox;
    Label24: TLabel;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    cxCheckBox5: TcxCheckBox;
    ClientDS_ShapingRateset_round_notNDS_sum: TBooleanField;
    cxButtonEdit21: TcxButtonEdit;
    cxButtonEdit22: TcxButtonEdit;
    Label25: TLabel;
    cxCurrencyEdit1: TcxCurrencyEdit;
    Label26: TLabel;
    cxTextEdit2: TcxTextEdit;
    cxButton1: TcxButton;
    cxButton3: TcxButton;
    procedure cxLookupComboBox4PropertiesEditValueChanged(Sender: TObject);
    procedure cxButtonEdit7PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure cxButtonEdit5PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure cxButtonEdit2PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure cxLookupComboBox1PropertiesEditValueChanged(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cxLookupComboBox6PropertiesEditValueChanged(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure cxButtonEdit9PropertiesButtonClick(Sender: TObject;  AButtonIndex: Integer);
    procedure cxButtonEdit10PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure cxButtonEdit11PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure cxButtonEdit12PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure dxBarButton1Click(Sender: TObject);
    procedure dxBarButton2Click(Sender: TObject);
    procedure cxGrid1DBBandedTableView1CustomDrawCell(Sender: TcxCustomGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
    procedure cxGrid1DBBandedTableView1CustomDrawColumnHeader(Sender: TcxGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxGridColumnHeaderViewInfo; var ADone: Boolean);
    procedure dxBarButton3Click(Sender: TObject);
    procedure cxComboBox1PropertiesChange(Sender: TObject);
    procedure dxBarButton4Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure cxButtonEdit15PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure cxButtonEdit14PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure cxButtonEdit16PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure cxCheckBox4PropertiesEditValueChanged(Sender: TObject);
    procedure cxButtonEdit17PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure cxButtonEdit20PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure dxBarButton6Click(Sender: TObject);
    procedure cxGrid1DBBandedTableView1FocusedItemChanged(Sender: TcxCustomGridTableView; APrevFocusedItem, AFocusedItem: TcxCustomGridTableItem);
    procedure cxButtonEdit22PropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure cxButtonEdit21PropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure cxLookupComboBox7PropertiesChange(Sender: TObject);
    procedure cxCurrencyEdit2PropertiesChange(Sender: TObject);
    procedure cxLookupComboBox3PropertiesChange(Sender: TObject);
    procedure cxLookupComboBox8PropertiesChange(Sender: TObject);
    procedure cxLookupComboBox2PropertiesChange(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
  private
    Fplan_client_rate_id : integer;
    Ftype_action : integer;
    Ftype_rate   : integer;
    Fnode_begin_id, Fnode_end_id, FkargoETSNG_id, FkargoGNG_id,

    Ffive_days_zfto_type : integer;

    Fdual_oper_id,        //id сдвоенной операции
    Fgroup_vagon_id,      //id группы вагонов inf_obj 29
    Fowner_id,            //id владельца вагона
    Fnode_border_full_id, //id станции груженого погран перехода
    Fnode_border_empty_id,//id станции порожнего погран перехода
    Fbudget_id,           // id услуги из справочника услуг
    Fservice_kind_id,
    Fservice_kind_rep_id: integer;
    Fkateg_send_id      : integer;
    Fbudget_type_cod : string; // Тип бюджета 1-доход, 2-расход
    Fclosed_rate : Boolean;
    Fcontract_agent_id : integer;
    procedure SetUpdate(plan_client_rate_id: integer);
    procedure SetCopy(plan_client_rate_id: integer);
    procedure SetUpdatePlanAgent(plan_agent_rate_id: integer);
    function GetPlanRateCalc(): boolean;

  public
    constructor Create(AOwner: TApplication; type_rate: integer);
  published
    property _SetUpdate : integer write SetUpdate;
    property _SetUpdatePlanAgent : integer write SetUpdatePlanAgent;
    property _SetCopy : integer write SetCopy;
    property _GetPlanClientRateId : integer read Fplan_client_rate_id;
  end;

var
  fmPlanRateClientAdd: TfmPlanRateClientAdd;

implementation
   uses Main, PlanClient, Filter, Other, Raznoe, PlanRateAgentAdd, Contract;
{$R *.dfm}

constructor TfmPlanRateClientAdd.Create(AOwner: TApplication; type_rate: integer);
begin
  inherited Create(AOwner);
  Screen.Cursor := crHourglass;

  Ftype_action := 0;
  Ftype_rate := type_rate;  // 0-для факта отгрузки Толстошеева, 1-для авт. разноса вагонов по ставкам
  Fplan_client_rate_id := -9;
  Fnode_begin_id       := -9;
  Fnode_end_id         := -9;
  Fbudget_id           := -9;
  Fdual_oper_id        := -9;
  Ffive_days_zfto_type := -9;
  Fservice_kind_id     := -9;
  Fservice_kind_rep_id := -9;
  Fkateg_send_id       := -9;
  Fcontract_agent_id   := -9;

  cxDateEdit1.EditValue := Date;
  cxCheckBox1.Checked   := False;
  cxCheckBox5.Checked   := False;

  Query_Client.Open;
  cxLookupComboBox1.EditValue := Query_Client.FieldByName('contract_id').Value;

  Query_Currency.Open;
  cxLookupComboBox2.EditValue := Query_Currency.FieldByName('currency_id').Value;

  Query_Ed_Izm.Open;
  cxLookupComboBox3.EditValue := Query_Ed_Izm.FieldByName('inf_obj_id').Value;

  Query_Type_Rate.Open;
  cxLookupComboBox4.EditValue := Query_Type_Rate.FieldByName('inf_obj_id').Value;

  Query_TypeBargain.Open;
  cxLookupComboBox5.EditValue := Query_TypeBargain.FieldByName('inf_obj_id').Value;

  Query_RodVagon.Open;
  cxLookupComboBox7.EditValue := Query_RodVagon.FieldByName('inf_obj_id').Value;

  Query_NDSName.Open;
  cxLookupComboBox8.EditValue := Query_NDSName.FieldByName('inf_obj_id').AsInteger;

  Query_SHABLON.Parameters.ParamByName('owner_users_group_id').Value := usr_pwd.user_group_id;
  Query_SHABLON.Open;

  cxDateEdit1.EditValue := Date;
  cxDateEdit2.EditValue := DateOF(EndOfTheYear(Date));

  ClientDataSet1.CreateDataSet;
  ClientDataSet1.LogChanges := False;

  cxPageControl1.ActivePageIndex := 0;

  ClientDS_ShapingRate.CreateDataSet;
  ClientDS_ShapingRate.LogChanges := False;

  ClientDS_TableRate.CreateDataSet;
  ClientDS_TableRate.LogChanges := False;

  cxComboBox3.ItemIndex := 0;
  cxComboBox2.ItemIndex := 0;
  cxRadioGroup2.ItemIndex := 2;

  MonitorEventFormOpen('OPEN_FORM', self.Name, fmMain.Lis, -9);
  Screen.Cursor := crDefault;
end;


procedure TfmPlanRateClientAdd.SetUpdatePlanAgent(plan_agent_rate_id: integer);
var Q: TADOQuery;
begin
  Q := TADOQuery.Create(nil);
  Q.Connection := fmMain.Lis;
  Q.SQL.Add('SELECT * FROM view_plan_agent_rate WHERE plan_agent_rate_id = ' + IntToStr(plan_agent_rate_id));
  Q.Open;
  _SetUpdate := Q.FieldByName('plan_client_rate_id').AsInteger;
  Q.Free;


  if ClientDS_ShapingRate.Locate('plan_agent_rate_id', plan_agent_rate_id, []) then begin
    fmPlanRateAgentAdd := TfmPlanRateAgentAdd.Create(Application, ClientDS_ShapingRate);
    fmPlanRateAgentAdd._SetUpdate := cxGrid1DBBandedTableView1id.DataBinding.Field.AsInteger;
    if fmPlanRateAgentAdd.ShowModal = mrOk then
    else exit;
  end;
end;


procedure TfmPlanRateClientAdd.cxButtonEdit20PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
var _fmContract : TfmContract;
begin
  case AButtonIndex of
    0 : begin
          _fmContract := TfmContract.Create(Application, True, 1);
          _fmContract.Visible := False;
          _fmContract._SetContractId := Fcontract_agent_id;
          if _fmContract.ShowModal = mrOk then begin
            Fcontract_agent_id := _fmContract._GetContractId;
            cxButtonEdit20.EditValue := _fmContract._GetFirmCustomerName;
            cxTextEdit1.EditValue    := _fmContract._GetContractCod;
          end;
        end;
    1 : begin
            Fcontract_agent_id := -9;
            cxButtonEdit20.EditValue := null;
            cxTextEdit1.EditValue    := null;
        end;
  end;

end;

procedure TfmPlanRateClientAdd.cxButtonEdit21PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
var  new_str : string;
begin
  case AButtonIndex of
    0 : begin
          Query_Node.Close;
          Query_Node.SQL.Clear;
          if InputQuery('Поиск', 'Шаблон КОДА для груза ГНГ:', new_str) then begin
            Query_Node.SQL.Add('SELECT inf_obj_id, inf_obj_name, inf_obj_cod FROM inf_obj_GNG WHERE inf_obj_cod LIKE ''%'+new_str+'%'' ORDER BY inf_obj_name');
            Query_Node.Open;
            fmFilter := TfmFilter.Create(0, Query_Node, 'inf_obj_id', 'inf_obj_cod', 'inf_obj_name');
            if fmFilter.ShowModal = mrOk then begin
              cxButtonEdit22.Text := fmFilter.GetName;
              cxButtonEdit21.Text := fmFilter.GetCod;;
              FkargoGNG_id     := fmFilter.GetId;
            end;
          end;
        end;
    1 : begin
          FkargoGNG_id     := -9;
          cxButtonEdit22.Text := '';
          cxButtonEdit21.Text := '';
        end;
  end;
  cxCurrencyEdit1.EditValue := null;
end;

procedure TfmPlanRateClientAdd.cxButtonEdit22PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
var  new_str : string;
begin
  case AButtonIndex of
    0 : begin
          Query_Node.Close;
          Query_Node.SQL.Clear;
          if InputQuery('Поиск', 'Шаблон НАИМЕНОВАНИЯ для груза ГНГ:', new_str) then begin
            Query_Node.SQL.Add('SELECT inf_obj_id, inf_obj_name, inf_obj_cod FROM inf_obj_GNG WHERE inf_obj_name LIKE ''%'+new_str+'%'' ORDER BY inf_obj_name');
            Query_Node.Open;
            fmFilter := TfmFilter.Create(0, Query_Node, 'inf_obj_id', 'inf_obj_cod', 'inf_obj_name');
            if fmFilter.ShowModal = mrOk then begin
              cxButtonEdit22.Text := fmFilter.GetName;
              cxButtonEdit21.Text := fmFilter.GetCod;;
              FkargoGNG_id     := fmFilter.GetId;
            end;
          end;
        end;
    1 : begin
          FkargoGNG_id     := -9;
          cxButtonEdit22.Text := '';
          cxButtonEdit21.Text := '';
        end;
  end;
  cxCurrencyEdit1.EditValue := null;
end;

procedure TfmPlanRateClientAdd.cxButtonEdit2PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  case AButtonIndex of
    0 : begin
          case TcxButtonEdit(Sender).Tag of
            2 : begin
                  if FindInInfObjNode(ClientDataSet1,'NODE_BEGIN', True, True,  cxDateEdit1.Date, fmMain.Lis) then begin
                    Fnode_begin_id := ClientDataSet1.FieldByName('node_begin_id').AsInteger;
                    cxButtonEdit2.Text := ClientDataSet1.FieldByName('node_begin_name').AsString;
                    cxButtonEdit4.Text := ClientDataSet1.FieldByName('node_begin_cod').AsString;
                  end;
                end;
            3 : begin
                  if FindInInfObjNode(ClientDataSet1,'NODE_END', True, True,  cxDateEdit1.Date, fmMain.Lis) then begin
                    Fnode_end_id := ClientDataSet1.FieldByName('node_end_id').AsInteger;
                    cxButtonEdit3.Text := ClientDataSet1.FieldByName('node_end_name').AsString;
                    cxButtonEdit6.Text := ClientDataSet1.FieldByName('node_end_cod').AsString;
                  end;
                end;
            4 : begin
                  if FindInInfObjNode(ClientDataSet1,'NODE_BEGIN', False, True,  cxDateEdit1.Date, fmMain.Lis) then begin
                    Fnode_begin_id := ClientDataSet1.FieldByName('node_begin_id').AsInteger;
                    cxButtonEdit2.Text := ClientDataSet1.FieldByName('node_begin_name').AsString;
                    cxButtonEdit4.Text := ClientDataSet1.FieldByName('node_begin_cod').AsString;
                  end;
                end;
            5 : begin
                  if FindInInfObjNode(ClientDataSet1,'NODE_END', False, True,  cxDateEdit1.Date, fmMain.Lis) then begin
                    Fnode_end_id := ClientDataSet1.FieldByName('node_end_id').AsInteger;
                    cxButtonEdit3.Text := ClientDataSet1.FieldByName('node_end_name').AsString;
                    cxButtonEdit6.Text := ClientDataSet1.FieldByName('node_end_cod').AsString;
                  end;
                end;

          end;
        end;
    1 : case TcxButtonEdit(Sender).Tag of
          2,4 : begin
                  Fnode_begin_id := -9;
                  cxButtonEdit2.Text := '';
                  cxButtonEdit4.Text := '';
                end;
          3,5 : begin
                  Fnode_end_id := -9;
                  cxButtonEdit3.Text := '';
                  cxButtonEdit6.Text := '';
                end;
        end;
  end;

  if Fnode_end_id = -9 then begin
   cxLookupComboBox6.Enabled := True;
   cxComboBox1.Enabled := True;
  end else begin
   cxLookupComboBox6.Enabled := False;
   cxComboBox1.Enabled := False;
   cxCurrencyEdit2.Enabled:= True;
   ClientDS_TableRate.EmptyDataSet;
   cxLookupComboBox6.EditValue := NULL;
   cxComboBox1.ItemIndex := -1;
  end;

  cxCurrencyEdit1.EditValue := null;
end;

procedure TfmPlanRateClientAdd.cxButtonEdit5PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
var  new_str : string;
begin
  case AButtonIndex of
    0 : begin
          Query_Node.Close;
          Query_Node.SQL.Clear;
          if InputQuery('Поиск', 'Шаблон НАИМЕНОВАНИЯ для груза ЕТСНГ:', new_str) then begin
            Query_Node.SQL.Add('SELECT inf_obj_id, inf_obj_name, inf_obj_cod, mvrn FROM inf_obj_ETSNG where inf_obj_name LIKE ''%'+new_str+'%'' and (dbo.GetInfObjVisible(str_group_visible) = 1) order by inf_obj_name');
            Query_Node.Open;
            fmFilter := TfmFilter.Create(0, Query_Node, 'inf_obj_id', 'inf_obj_cod', 'inf_obj_name');
            fmFilter._SetKargoETSNG := True;
            if fmFilter.ShowModal = mrOk then begin
              cxButtonEdit5.Text := fmFilter.GetName;
              cxButtonEdit7.Text := fmFilter.GetCod;
              FkargoETSNG_id     := fmFilter.GetId;
              Query_Node.Locate('inf_obj_id', FkargoETSNG_id, []);
              cxTextEdit2.EditValue := Query_Node.FieldByName('mvrn').AsString;
            end;
          end;
        end;
    1 : begin
          FkargoETSNG_id     := -9;
          cxButtonEdit5.Text := '';
          cxButtonEdit7.Text := '';
          cxTextEdit2.EditValue := null;
        end;
  end;
  cxCurrencyEdit1.EditValue := null;
end;

procedure TfmPlanRateClientAdd.cxButtonEdit7PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
var  new_str : string;
begin
  case AButtonIndex of
    0 : begin
          Query_Node.Close;
          Query_Node.SQL.Clear;
          if InputQuery('Поиск', 'Шаблон КОДА для груза ЕТСНГ:', new_str) then begin
            Query_Node.SQL.Add('SELECT inf_obj_id, inf_obj_name, inf_obj_cod, mvrn FROM inf_obj_ETSNG where inf_obj_cod LIKE ''%'+new_str+'%'' and (dbo.GetInfObjVisible(str_group_visible) = 1) order by inf_obj_cod');
            Query_Node.Open;
            fmFilter := TfmFilter.Create(0, Query_Node, 'inf_obj_id', 'inf_obj_cod', 'inf_obj_name');
            fmFilter._SetKargoETSNG := True;
            if fmFilter.ShowModal = mrOk then begin
              cxButtonEdit5.Text := fmFilter.GetName;
              cxButtonEdit7.Text := fmFilter.GetCod;
              FkargoETSNG_id     := fmFilter.GetId;

              Query_Node.Locate('inf_obj_id', FkargoETSNG_id, []);
              cxTextEdit2.EditValue := Query_Node.FieldByName('mvrn').AsString;
            end;
          end;
        end;
    1 : begin
          FkargoETSNG_id     := -9;
          cxButtonEdit5.Text := '';
          cxButtonEdit7.Text := '';
          cxTextEdit2.EditValue := null;
        end;
  end;
  cxCurrencyEdit1.EditValue := null;
end;

procedure TfmPlanRateClientAdd.cxButtonEdit9PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
var  new_str : string;
begin
  case AButtonIndex of
    0 : begin
          Query_Node.Close;
          if InputQuery('Поиск', 'Шаблон НАИМЕНОВАНИЯ для станции П/п:', new_str) then begin
            Query_Node.SQL.Text := 'SELECT inf_obj_id, inf_obj_name, inf_obj_cod FROM inf_obj_NODE WHERE inf_obj_name LIKE ''%' + new_str + '%'' AND set_ppland = 1 AND LEFT(' + DateToSQL(Date) + ', 6) BETWEEN convert(varchar(6), date_begin, 112) AND convert(varchar(6), date_end, 112) ORDER BY inf_obj_name';
            Query_Node.Open;
            fmFilter := TfmFilter.Create(0, Query_Node, 'inf_obj_id', 'inf_obj_cod', 'inf_obj_name');
            if fmFilter.ShowModal = mrOk then begin
              case TcxButtonEdit(Sender).Tag of
              6 : begin
                cxButtonEdit9.Text   := fmFilter.GetName;
                Fnode_border_full_id := fmFilter.GetId;
              end;
              7 : begin
                cxButtonEdit8.Text    := fmFilter.GetName;
                Fnode_border_empty_id := fmFilter.GetId;
              end;
            end;
          end;
        end;
    end;
    1 : case TcxButtonEdit(Sender).Tag of
      6 : begin
        cxButtonEdit9.Text   := '';
        Fnode_border_full_id := -9;
      end;
      7 : begin
        cxButtonEdit8.Text    := '';
        Fnode_border_empty_id := -9;
      end;
    end;
  end;
end;


procedure TfmPlanRateClientAdd.cxCheckBox4PropertiesEditValueChanged(
  Sender: TObject);
begin
 cxTextEdit5.Visible := cxCheckBox4.Checked;
end;

procedure TfmPlanRateClientAdd.cxComboBox1PropertiesChange(
  Sender: TObject);
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

  cxCurrencyEdit2.EditValue:= NULL;
  cxCurrencyEdit2.Enabled:= False;

  ShowTextMessage;
  exApp.Quit;
  exWks := Null;
  VarClear(exWks);
  VarClear(exWkb);
  cxCurrencyEdit1.EditValue := null;
end;

procedure TfmPlanRateClientAdd.cxCurrencyEdit2PropertiesChange(Sender: TObject);
begin
  cxCurrencyEdit1.EditValue := null;
end;

procedure TfmPlanRateClientAdd.cxGrid1DBBandedTableView1CustomDrawCell(Sender: TcxCustomGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
	if AViewInfo.GridRecord.Selected or AViewInfo.GridRecord.Focused then begin
		ACanvas.Brush.Color := clNavy;
		ACanvas.Font.Color := clWhite;
		if AViewInfo.Focused then ACanvas.Brush.Color := clBlue;
	end;
end;

procedure TfmPlanRateClientAdd.cxGrid1DBBandedTableView1CustomDrawColumnHeader(Sender: TcxGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxGridColumnHeaderViewInfo; var ADone: Boolean);
begin
	if AViewInfo.Column.Focused then begin
		ACanvas.Brush.Color := clNavy;
		ACanvas.Font.Color := clWhite;
	end;
end;


procedure TfmPlanRateClientAdd.cxGrid1DBBandedTableView1FocusedItemChanged(Sender: TcxCustomGridTableView; APrevFocusedItem, AFocusedItem: TcxCustomGridTableItem);
begin
  Sender.Painter.Invalidate;
end;

function TfmPlanRateClientAdd.GetPlanRateCalc(): boolean;
type
  TFunc = function(date: TDateTime; var ClientDS_param: TClientDataSet; set_show_message: boolean): variant;
var
       FFunc : TFunc;
      handle : THandle;
           v : Variant;
    ClientDS : TClientDataSet;
           i : integer;
     nds_val : integer;
    rate_val : Currency;
  ed_izm_cod : string;
      stat_w : Currency;
           Q : TADOQuery;
rate_avg_val : Currency;
begin
if VarIsNull(cxLookupComboBox7.EditValue) then begin
    Application.MessageBox('Не указан род вагона.', 'Внимание', MB_OK+MB_ICONERROR);
    Result := False;
    exit;
  end;

  if VarIsNull(cxLookupComboBox8.EditValue) then begin
    Application.MessageBox('Не указана ставка НДС.', 'Внимание', MB_OK+MB_ICONERROR);
    Result := False;
    exit;
  end;

  if VarIsNull(cxLookupComboBox3.EditValue) then begin
    Application.MessageBox('Не указана ед. измерения.', 'Внимание', MB_OK+MB_ICONERROR);
    Result := False;
    exit;
  end;

  if cxButtonEdit4.Text = '' then begin
    Application.MessageBox('Не указана станция отправления.', 'Внимание', MB_OK+MB_ICONERROR);
    Result := False;
    exit;
  end;

  if cxLookupComboBox6.Enabled = True then begin
    if cxComboBox1.ItemIndex = -1 then begin
      Application.MessageBox('Не указана сетка или станция назначения.', 'Внимание', MB_OK+MB_ICONERROR);
      Result := False;
      exit;
     end;
  end else
  if cxButtonEdit6.Text = '' then begin
    Application.MessageBox('Не указана сетка или станция назначения.', 'Внимание', MB_OK+MB_ICONERROR);
    Result := False;
    exit;
  end;

  if cxButtonEdit7.Text = '' then begin
    Application.MessageBox('Не указан груз ЕТСНГ.', 'Внимание', MB_OK+MB_ICONERROR);
    Result := False;
    exit;
  end;

//  if cxButtonEdit21.Text = '' then begin
//    Application.MessageBox('Не указан груз ГНГ.', 'Внимание', MB_OK+MB_ICONERROR);
//    Result := False;
//    exit;
//  end;


  ClientDS := TClientDataSet.Create(nil);
  ClientDS.FieldDefs.Add('date_from_to'   ,ftDateTime);
  ClientDS.FieldDefs.Add('node_begin_cod' ,ftString, 10);
  ClientDS.FieldDefs.Add('node_end_cod'   ,ftString, 10);
  ClientDS.FieldDefs.Add('kargoETSNG_cod' ,ftString, 10);
  ClientDS.FieldDefs.Add('kargoGNG_cod'   ,ftString, 10);
  ClientDS.FieldDefs.Add('rod_vagon_cod'  ,ftString, 10);

  ClientDS.FieldDefs.Add('distance'       ,ftInteger); // Растояние для которого расчитываем ставку
  ClientDS.FieldDefs.Add('route_days'     ,ftInteger); // Оборот груж.+пор. (Rail-Тариф)
  ClientDS.FieldDefs.Add('route_full'     ,ftInteger); // Оборот груж. (Rail-Тариф)
  ClientDS.FieldDefs.Add('route_empty'    ,ftInteger); // Оборот пор. (Rail-Тариф)

  ClientDS.FieldDefs.Add('rate_full_val'  ,ftCurrency); // Ставка груженый (Вводим сами)
  ClientDS.FieldDefs.Add('rate_empty_val' ,ftCurrency); // Ставка порожний (Rail-Тариф)
  ClientDS.FieldDefs.Add('rate_avg_val'   ,ftCurrency); // Ставка средняя
  ClientDS.CreateDataSet;
  ClientDS.LogChanges := False;

  Query_RodVagon.Locate('inf_obj_id', cxLookupComboBox7.EditValue, []);

  Query_NDSName.Locate('inf_obj_id', cxLookupComboBox8.EditValue, []);
  nds_val := Query_NDSName.FieldByName('inf_obj_cod').AsInteger;

  Query_Ed_Izm.Locate('inf_obj_id', cxLookupComboBox3.EditValue, []);
  ed_izm_cod := Query_Ed_Izm.FieldByName('inf_obj_cod').AsString;

  Q := TADOQuery.Create(nil);
  Q.Connection := fmMain.Lis;
  Q.SQL.Add('SELECT mvrn FROM inf_obj_ETSNG WHERE inf_obj_id = ' + IntToStr(FkargoETSNG_id));
  Q.Open;
  stat_w := Q.FieldByName('mvrn').AsFloat;
  Q.Free;

  if cxButtonEdit6.Text <> '' then begin
    if cxCheckBox1.Checked then begin // ставка c НДС
      rate_val := cxCurrencyEdit2.EditValue*100/(100+nds_val);
    end else begin
      rate_val := cxCurrencyEdit2.EditValue;
    end;

    // Умножаем на "Статическая нагрузка"
    if ed_izm_cod = '000' then
      rate_val := rate_val * stat_w;

    ClientDS.Append;
    ClientDS.FieldByName('date_from_to'  ).Value := cxDateEdit1.Date;
    ClientDS.FieldByName('node_begin_cod').Value := cxButtonEdit4.Text;
    ClientDS.FieldByName('node_end_cod'  ).Value := cxButtonEdit6.Text;
    ClientDS.FieldByName('kargoETSNG_cod').Value := cxButtonEdit7.Text;
    ClientDS.FieldByName('kargoGNG_cod'  ).Value := cxButtonEdit21.Text;
    ClientDS.FieldByName('rod_vagon_cod' ).Value := Query_RodVagon.FieldByName('inf_obj_cod').AsString;
    ClientDS.FieldByName('distance'      ).Value := -9;
    ClientDS.FieldByName('rate_full_val' ).Value := rate_val;
    ClientDS.Post;
  end else begin
    ClientDS_TableRate.DisableControls;
    ClientDS_TableRate.First;
    while not ClientDS_TableRate.Eof do begin

      if cxCheckBox1.Checked then begin // ставка c НДС
        rate_val := ClientDS_TableRate.FieldByName('dist_rate_val').AsCurrency*100/(100+nds_val);
      end else begin
        rate_val := ClientDS_TableRate.FieldByName('dist_rate_val').AsCurrency;
      end;

      // Умножаем на "Статическая нагрузка"
      if ed_izm_cod = '000' then
        rate_val := rate_val * stat_w;

      ClientDS.Append;
      ClientDS.FieldByName('date_from_to'  ).Value := cxDateEdit1.Date;
      ClientDS.FieldByName('node_begin_cod').Value := cxButtonEdit4.Text;
      ClientDS.FieldByName('node_end_cod'  ).Value := cxButtonEdit4.Text;
      ClientDS.FieldByName('kargoETSNG_cod').Value := cxButtonEdit7.Text;
      ClientDS.FieldByName('kargoGNG_cod'  ).Value := cxButtonEdit21.Text;
      ClientDS.FieldByName('rod_vagon_cod' ).Value := Query_RodVagon.FieldByName('inf_obj_cod').AsString;
      ClientDS.FieldByName('distance'      ).Value := ClientDS_TableRate.FieldByName('dist_end').Value;
      ClientDS.FieldByName('rate_full_val' ).Value := rate_val;
      ClientDS.Post;
      ClientDS_TableRate.Next;
    end;
    ClientDS_TableRate.EnableControls;
  end;

  handle := LoadLibrary('ctm_tarif.dll');
  @FFunc := GetProcAddress(handle, 'GetCalcTariffCalculate');
  rate_avg_val := FFunc(Date, ClientDS, True);
  FreeLibrary(handle);
  //ClientDSView(ClientDS);

  cxCurrencyEdit1.EditValue := RoundCurr(rate_avg_val,-2);

  ClientDS.Free;

  Result := True;
end;

procedure TfmPlanRateClientAdd.cxButton1Click(Sender: TObject);
var  SP : TADOStoredProc;
    res : integer;
begin
  Screen.Cursor := crHourglass;
  res := Application.MessageBox('Рассчитать плановую доходность?', 'Внимание', MB_ICONQUESTION or MB_YESNOCANCEL);
  if res = ID_YES then begin
    if GetPlanRateCalc = False then begin
      ModalResult := mrNone;
      Screen.Cursor := crDefault;
      exit;
    end;
  end else if res = ID_NO then begin
    cxCurrencyEdit1.EditValue := null;
  end else begin
    ModalResult := mrNone;
    Screen.Cursor := crDefault;
    exit;
  end;

  if Fclosed_rate then begin
    //ModalResult := mrOk;
    //exit;
  end;

  if VarIsNull(cxLookupComboBox1.EditValue) then begin
    Application.MessageBox('Не указан договор.', 'Внимание', MB_OK+MB_ICONERROR);
    ModalResult := mrNone;
    Screen.Cursor := crDefault;
    exit;
  end;

  if VarIsNull(cxDateEdit1.EditValue) then begin
    Application.MessageBox('Не указана дата начала.','Внимание',MB_OK+MB_ICONERROR);
    ModalResult := mrNone;
    Screen.Cursor := crDefault;
    exit;
  end;

  if VarIsNull(cxDateEdit2.EditValue) then begin
    Application.MessageBox('Не указана дата окончания.', 'Внимание', MB_OK+MB_ICONERROR);
    ModalResult := mrNone;
    Screen.Cursor := crDefault;
    exit;
  end;

  if Fnode_begin_id = -9 then begin
    Application.MessageBox('Не указана станция отправления.', 'Внимание', MB_OK+MB_ICONERROR);
    ModalResult := mrNone;
    Screen.Cursor := crDefault;
    exit;
  end;

  if FkargoETSNG_id = -9 then begin
    Application.MessageBox('Не указан груз вагона.', 'Внимание', MB_OK+MB_ICONERROR);
    ModalResult := mrNone;
    Screen.Cursor := crDefault;
    exit;
  end;

  if VarIsNull(cxLookupComboBox7.EditValue) then begin
    Application.MessageBox('Не указан род вагона.', 'Внимание', MB_OK+MB_ICONERROR);
    ModalResult := mrNone;
    Screen.Cursor := crDefault;
    exit;
  end;

  if (Fnode_end_id = -9) and (cxComboBox1.ItemIndex = -1) then begin
    Application.MessageBox('Выберите ставку или сетку ставок.', 'Внимание', MB_OK+MB_ICONERROR);
    ModalResult := mrNone;
    Screen.Cursor := crDefault;
    exit;
  end;

  if (not VarIsNull(cxLookupComboBox6.EditValue)) and (cxComboBox1.ItemIndex = -1)  then begin
    Application.MessageBox('Не указан лист сетки.', 'Внимание', MB_OK+MB_ICONERROR);
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

//  if VarIsNull(cxLookupComboBox9.EditValue) and ((VarIsNull(cxTextEdit11.EditValue)) or (cxTextEdit11.EditValue = ''))  then begin
//      Application.MessageBox('Не указано приложение.','Внимание',MB_OK+MB_ICONERROR);
//      ModalResult := mrNone;
//      Screen.Cursor := crDefault;
//      exit;
//  end;

  SP := TADOStoredProc.Create(nil);
  SP.Connection := fmMain.Lis;
  SP.CommandTimeout := 200;
  SP.ProcedureName := 'sp_plan_client_rate_modify';
  SP.Parameters.Refresh;
  SP.Parameters.ParamByName('@type_action').Value         :=  Ftype_action;
  SP.Parameters.ParamByName('@plan_client_rate_id').Value := iif(Fplan_client_rate_id = -9, null, Fplan_client_rate_id);
  SP.Parameters.ParamByName('@type_rate').Value           := Ftype_rate;
  SP.Parameters.ParamByName('@date_begin').Value          := cxDateEdit1.EditValue;
  SP.Parameters.ParamByName('@date_end').Value            := cxDateEdit2.EditValue;
  SP.Parameters.ParamByName('@contract_id').Value         := cxLookupComboBox1.EditValue;
  SP.Parameters.ParamByName('@node_begin_id').Value       := iif((Fnode_begin_id = -9) or (Fnode_begin_id = 0), null, Fnode_begin_id);
  SP.Parameters.ParamByName('@node_end_id').Value         := iif((Fnode_end_id = -9) or (Fnode_end_id = 0), null, Fnode_end_id);
  SP.Parameters.ParamByName('@kargoETSNG_id').Value       := iif((FkargoETSNG_id = -9) or (FkargoETSNG_id = 0), null, FkargoETSNG_id);
  SP.Parameters.ParamByName('@kargoGNG_id').Value         := iif((FkargoGNG_id = -9) or (FkargoGNG_id = 0), null, FkargoGNG_id);
  SP.Parameters.ParamByName('@plan_rate').Value           := cxCurrencyEdit2.EditValue;
  SP.Parameters.ParamByName('@plan_rate_calc').Value      := cxCurrencyEdit1.EditValue;
  SP.Parameters.ParamByName('@currency_id').Value         := cxLookupComboBox2.EditValue;
  SP.Parameters.ParamByName('@ed_izm_id').Value           := cxLookupComboBox3.EditValue;
  SP.Parameters.ParamByName('@type_rate_id').Value        := cxLookupComboBox4.EditValue;
  SP.Parameters.ParamByName('@type_plan_client_id').Value := cxLookupComboBox5.EditValue;
  SP.Parameters.ParamByName('@rod_vagon_id').Value        := cxLookupComboBox7.EditValue;

  SP.Parameters.ParamByName('@dual_oper_id').Value        := iif((Fdual_oper_id   = -9), null, Fdual_oper_id);//id сдвоенной операции
  SP.Parameters.ParamByName('@group_vagon_id').Value      := iif((Fgroup_vagon_id = -9) or (Fgroup_vagon_id = 0), null, Fgroup_vagon_id);//id группы вагонов
  SP.Parameters.ParamByName('@owner_id'            ).Value            := iif((Fowner_id       = -9) or (Fowner_id       = 0), null, Fowner_id);//id Собственника транспорта (вагоны, пароходы, авто)
  SP.Parameters.ParamByName('@node_border_full_id' ).Value := iif((Fnode_border_full_id = -9) or (Fnode_border_full_id = 0), null, Fnode_border_full_id);//id станции груженого погран перехода
  SP.Parameters.ParamByName('@node_border_empty_id').Value:= iif((Fnode_border_empty_id= -9) or (Fnode_border_empty_id= 0), null, Fnode_border_empty_id);//id станции порожнего погран перехода

  SP.Parameters.ParamByName('@rate_nds_id'        ).Value := cxLookupComboBox8.EditValue;//id НДС
  SP.Parameters.ParamByName('@budget_id'          ).Value := iif(Fbudget_id = -9, null, Fbudget_id);
  SP.Parameters.ParamByName('@table_rate_id'      ).Value := cxLookupComboBox6.EditValue;
  SP.Parameters.ParamByName('@sheet_num'          ).Value := cxComboBox1.ItemIndex;
  SP.Parameters.ParamByName('@set_calc_date'      ).Value := cxComboBox3.ItemIndex;
  SP.Parameters.ParamByName('@type_bargain_date'  ).Value := cxComboBox2.ItemIndex;
  SP.Parameters.ParamByName('@set_include_nds'    ).Value := cxCheckBox1.Checked;
  SP.Parameters.ParamByName('@agreement_id'       ).Value := cxLookupComboBox9.EditValue;
  SP.Parameters.ParamByName('@agreement_note'     ).Value := cxTextEdit11.EditValue;
  SP.Parameters.ParamByName('@service_kind_id'    ).Value := iif(Fservice_kind_id <> -9, Fservice_kind_id, null);
  SP.Parameters.ParamByName('@service_kind_rep_id').Value := iif(Fservice_kind_rep_id <> -9, Fservice_kind_rep_id, null);
  SP.Parameters.ParamByName('@bargain_acts_note'  ).Value := iif(cxTextEdit17.Text <> '', cxTextEdit17.Text, null);
  SP.Parameters.ParamByName('@five_days_zfto_type').Value := iif(Ffive_days_zfto_type=-9, null, Ffive_days_zfto_type);
  SP.Parameters.ParamByName('@set_bargain_weight' ).Value := iif(not SpeedButton1.Down and not SpeedButton2.Down, null, SpeedButton1.Down); // Если ничего не выбрано, то null... В случае выбора указываем Да или Нет

  SP.Parameters.ParamByName('@shaping_rate_round_weight').Value := cxRadioGroup2.ItemIndex;
  SP.Parameters.ParamByName('@shaping_kargo_min_norm').Value := iif(cxCheckBox4.Checked, cxTextEdit5.EditValue, null);
  SP.Parameters.ParamByName('@shaping_check_kargo_capacity').Value := cxCheckBox2.Checked;;
  SP.Parameters.ParamByName('@type_calc_sum'       ).Value := RadioGroup2.ItemIndex;
  SP.Parameters.ParamByName('@kateg_send_id'       ).Value := iif(Fkateg_send_id <> -9, Fkateg_send_id, null);
  SP.Parameters.ParamByName('@contract_agent_id'   ).Value := iif(Fcontract_agent_id <> -9, Fcontract_agent_id, null);
  SP.Parameters.ParamByName('@set_round_notNDS_sum').Value := cxCheckBox5.Checked;

  if ClientDS_ShapingRate.RecordCount = 0 then SP.Parameters.ParamByName('@shaping_rate_xml').Value := null
  else SP.Parameters.ParamByName('@shaping_rate_xml').Value := DataXMLToSQL(ClientDS_ShapingRate);

  if ClientDS_TableRate.RecordCount = 0 then SP.Parameters.ParamByName('@table_rate_xml' ).Value := null
  else SP.Parameters.ParamByName('@table_rate_xml' ).Value  := DataXMLToSQL(ClientDS_TableRate);

  SP.Parameters.ParamByName('@comment' ).Value := cxMemo1.EditValue;

  try
    SP.ExecProc;
    Fplan_client_rate_id := SP.Parameters.ParamByName('@plan_client_rate_id').Value;

    // ------ пересчёт расстояния -----------
    SP.Close;
    SP.ProcedureName := 'sp_inf_obj_distance_modify';
    SP.Parameters.Refresh;
    SP.Parameters.ParamByName('@type_action').Value := 0;
    SP.Parameters.ParamByName('@node1_cod').Value := cxButtonEdit4.EditValue;
    SP.Parameters.ParamByName('@node2_cod').Value := cxButtonEdit6.EditValue;
    SP.Parameters.ParamByName('@distance').Value := GetCalcDistance(VarToStr(cxButtonEdit4.EditValue), VarToStr(cxButtonEdit6.EditValue));
    SP.ExecProc;
  except on E: Exception do
    ModalResult := mrNone;
  end;

  SP.Free;
  Screen.Cursor := crDefault;
end;

procedure TfmPlanRateClientAdd.cxButtonEdit10PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
var  new_str : string;
begin
  case AButtonIndex of
    0 : begin
          Query_Node.Close;
          if InputQuery('Поиск', 'Шаблон НАИМЕНОВАНИЯ для Собственника вагонов:', new_str) then begin
            Query_Node.SQL.Text := 'SELECT DISTINCT contract_id, contract_cod, firm_customer_name FROM view_vagon_owner WHERE firm_customer_name LIKE ''%' + new_str + '%'' AND users_group_id = ''' + IntToStr(usr_pwd.user_group_id) + ''' AND GetDate() BETWEEN date_begin AND ISNULL(date_end, GetDate() + 1) ORDER BY firm_customer_name ';
            Query_Node.Open;
            fmFilter := TfmFilter.Create(0, Query_Node, 'contract_id', 'contract_cod', 'firm_customer_name');
            if fmFilter.ShowModal = mrOk then begin
              Fowner_id           := fmFilter.GetId;
              cxButtonEdit10.Text := fmFilter.GetName;
            end;
          end;
        end;
    1 : begin
          Fowner_id           := -9;
          cxButtonEdit10.Text := '';
        end;
  end;
end;


procedure TfmPlanRateClientAdd.cxButtonEdit11PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
var  new_str : string;
begin
  case AButtonIndex of
    0 : begin
          Query_Node.Close;
          //if InputQuery('Поиск', 'Шаблон НАИМЕНОВАНИЯ для Группы вагонов:', new_str) then begin
            Query_Node.SQL.Text := 'SELECT inf_obj_id, inf_obj_name, inf_obj_cod FROM inf_obj WHERE inf_obj_name LIKE ''%' + new_str + '%'' AND type_inf_id = 29 AND inf_obj_cod IS NOT NULL ORDER BY inf_obj_name';
            Query_Node.Open;
            fmFilter := TfmFilter.Create(0, Query_Node, 'inf_obj_id', 'inf_obj_cod', 'inf_obj_name');
            if fmFilter.ShowModal = mrOk then begin
              cxButtonEdit11.Text := fmFilter.GetName;
              Fgroup_vagon_id     := fmFilter.GetId;
            end;
         // end;
        end;
    1 : begin
          Fgroup_vagon_id     := -9;
          cxButtonEdit11.Text := '';
        end;
  end;
end;

procedure TfmPlanRateClientAdd.cxButtonEdit12PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
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
            cxTextEdit6.Text   := Query_Service.FieldByName('budget_cod').AsString;

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

procedure TfmPlanRateClientAdd.cxButtonEdit14PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
var DS_result : TADODataSet;
begin
  case AButtonIndex of
    0:  begin
          DS_result := TADODataSet.Create(nil);
          DS_result.FieldDefs.Add('id'        , ftInteger);
          DS_result.FieldDefs.Add('field_cod' , ftString, 50);
          DS_result.FieldDefs.Add('field_name', ftString, 50);
          DS_result.CreateDataSet;

          DS_result.AppendRecord([0, '0', 'Пятидневка']);
          DS_result.AppendRecord([1, '1', 'Декада']);
          DS_result.AppendRecord([2, '2', 'Полмесяца']);

          fmFilter := TfmFilter.Create(0, DS_result, 'id', 'field_cod', 'field_name');
          if fmFilter.ShowModal = mrOk then begin
            Ffive_days_zfto_type     := fmFilter.GetId;
            cxButtonEdit14.EditValue := fmFilter.GetName;
          end;

          DS_result.Free;
        end;
    1:  begin
          Ffive_days_zfto_type := -9;
          cxButtonEdit14.EditValue := null;
        end;
  end;
end;

procedure TfmPlanRateClientAdd.cxButtonEdit15PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
var Q : TADOQuery;
begin
  Q := TADOQuery.Create(nil);
  Q.Connection := fmMain.Lis;
  Q.SQL.Add('SELECT * FROM inf_obj WHERE (type_inf_id IN (128)) and ISNULL(inf_obj_cod, '''') <> ''999'' and (dbo.GetInfObjVisible(str_group_visible) = 1)');
  Q.Open;

  fmFilter := TfmFilter.Create(0, Q, 'inf_obj_id', 'inf_obj_name_full', 'inf_obj_name');
  fmFilter._SetServiceKind := True;
  if fmFilter.ShowModal = mrOk then begin
    case TComponent(Sender).Tag of
      0 : begin
            Fservice_kind_id     := fmFilter.GetId;
            cxButtonEdit15.Text  := fmFilter.GetName;
            cxButtonEdit13.Text  := fmFilter.GetCod;
          end;
      1 : begin
            Fservice_kind_rep_id := fmFilter.GetId;
            cxButtonEdit18.Text  := fmFilter.GetName;
            cxButtonEdit19.Text  := fmFilter.GetCod;
          end;
    end;
  end;

  fmFilter.Free;
  Q.Free;

end;

procedure TfmPlanRateClientAdd.cxButtonEdit16PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
var DS_result : TADODataSet;
begin
  case AButtonIndex of
    0:  begin
          DS_result := TADODataSet.Create(nil);
          DS_result.FieldDefs.Add('id'        , ftInteger);
          DS_result.FieldDefs.Add('field_cod' , ftString, 50);
          DS_result.FieldDefs.Add('field_name', ftString, 50);
          DS_result.CreateDataSet;

          DS_result.AppendRecord([0, '0', 'Сдвойка']);
          DS_result.AppendRecord([1, '1', 'Кольцо']);

          fmFilter := TfmFilter.Create(0, DS_result, 'id', 'field_cod', 'field_name');
          if fmFilter.ShowModal = mrOk then begin
            Fdual_oper_id := fmFilter.GetId;
            cxButtonEdit16.EditValue := fmFilter.GetName;
          end;

          DS_result.Free;
        end;
    1:  begin
          Fdual_oper_id := -9;
          cxButtonEdit16.EditValue := null;
        end;
  end;
end;

procedure TfmPlanRateClientAdd.cxButtonEdit17PropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
var  new_str : string;
begin
  case AButtonIndex of
    0 : begin
          Query_Node.Close;
         // if InputQuery('Поиск', 'Шаблон НАИМЕНОВАНИЯ для Группы вагонов:', new_str) then begin
            Query_Node.SQL.Text := 'SELECT inf_obj_id, inf_obj_name, inf_obj_cod FROM inf_obj WHERE inf_obj_name LIKE ''%' + new_str + '%'' AND type_inf_id = -9 AND inf_obj_cod IS NOT NULL ORDER BY inf_obj_name';
            Query_Node.Open;
            fmFilter := TfmFilter.Create(0, Query_Node, 'inf_obj_id', 'inf_obj_cod', 'inf_obj_name');
            if fmFilter.ShowModal = mrOk then begin
              cxButtonEdit17.Text := fmFilter.GetName;
              Fkateg_send_id     := fmFilter.GetId;
              Query_Node.Locate('inf_obj_id', Fkateg_send_id,[]);
              if Query_Node.FieldByName('inf_obj_cod').Value = '4' then begin
                Label16.Enabled := True;
                cxButtonEdit11.Enabled  := True;
              end else begin
                Label16.Enabled := False;
                cxButtonEdit11.Enabled   := False;
                cxButtonEdit11.EditValue := NULL;
                Fgroup_vagon_id          := -9;
              end;
            end;
          end;
        //end;
    1 : begin
          Fkateg_send_id      := -9;
          cxButtonEdit17.Text := '';
          Label16.Enabled := False;
          cxButtonEdit11.Enabled  := False;
          cxButtonEdit11.EditValue:= NULL;
          Fgroup_vagon_id         := -9;
        end;
  end;
end;

procedure TfmPlanRateClientAdd.cxLookupComboBox1PropertiesEditValueChanged(Sender: TObject);
begin
  Query_Client.Locate('contract_id', cxLookupComboBox1.EditValue, []);
  cxButtonEdit1.EditText := Query_Client.FieldByName('contract_cod').AsString;
  Query_Agreement.Close;
  Query_Agreement.Parameters.ParamByName('contract_id').Value := cxLookupComboBox1.EditValue;
  Query_Agreement.Open;
end;

procedure TfmPlanRateClientAdd.cxLookupComboBox2PropertiesChange(Sender: TObject);
begin
  cxCurrencyEdit1.EditValue := null;
end;

procedure TfmPlanRateClientAdd.cxLookupComboBox3PropertiesChange(Sender: TObject);
begin
  cxCurrencyEdit1.EditValue := null;
end;

procedure TfmPlanRateClientAdd.cxLookupComboBox4PropertiesEditValueChanged(Sender: TObject);
begin
 Query_Type_Rate.Locate('inf_obj_id',cxLookupComboBox4.EditValue,[]);
 case Query_Type_Rate.FieldByName('inf_obj_cod').AsInteger of
   1: begin
        Label6.Caption := 'Ставка .....................';
        cxLookupComboBox3.Visible := True;
        cxLookupComboBox3.EditValue := Query_Ed_Izm.FieldByName('inf_obj_id').Value;

        cxButtonEdit20.Enabled := False;
        cxButtonEdit20.EditValue := null;
        cxTextEdit1.EditValue := null;
      end;
   2: begin
        Label6.Caption := 'Процент.....................';
        cxLookupComboBox3.Visible := False;
        cxLookupComboBox3.EditValue := NULL;

        cxButtonEdit20.Enabled := True;
      end;
 3,4: begin
        Label6.Caption := 'Фикс. сумма....................';
        cxLookupComboBox3.Visible := False;
        cxLookupComboBox3.EditValue := NULL;

        cxButtonEdit20.Enabled := True;
      end;
 end;
end;

procedure TfmPlanRateClientAdd.SetCopy(plan_client_rate_id: integer);
begin
 SetUpdate(plan_client_rate_id);
 Ftype_action := 0;
 Fplan_client_rate_id := -9;
end;

procedure TfmPlanRateClientAdd.SetUpdate(plan_client_rate_id: integer);
var Q : TADOQuery;
begin
  Screen.Cursor := crHourglass;

  Fplan_client_rate_id := plan_client_rate_id;
  Ftype_action := 1;
  Fclosed_rate :=False;

  Q := TADOQuery.Create(nil);
  Q.Connection := fmMain.Lis;
  Q.SQL.Add('SELECT * FROM view_plan_client_rate_rights WHERE plan_client_rate_id=' + IntToStr(Fplan_client_rate_id));
  Q.Open;

  cxDateEdit1.EditValue := Q.FieldByName('date_begin').Value;
  cxDateEdit2.EditValue := Q.FieldByName('date_end').Value;
  cxCheckBox1.Checked   := Q.FieldByName('set_include_nds').Value;
  cxCheckBox5.Checked   := Q.FieldByName('set_round_notNDS_sum').Value;

  cxLookupComboBox1.EditValue := Q.FieldByName('contract_id').Value;
  cxLookupComboBox2.EditValue := Q.FieldByName('currency_id').Value;
  cxLookupComboBox3.EditValue := Q.FieldByName('ed_izm_id').Value;
  cxLookupComboBox4.EditValue := Q.FieldByName('type_rate_id').Value;
  cxLookupComboBox5.EditValue := Q.FieldByName('type_plan_client_id').Value;
  cxLookupComboBox7.EditValue := Q.FieldByName('rod_vagon_id').Value;

  cxButtonEdit2.EditValue := Q.FieldByName('node_begin_name').Value;
  cxButtonEdit3.EditValue := Q.FieldByName('node_end_name').Value;
  cxButtonEdit5.EditValue := Q.FieldByName('kargoETSNG_name').Value;
  cxButtonEdit22.EditValue:= Q.FieldByName('kargoGNG_name').Value;

  cxButtonEdit4.EditValue := Q.FieldByName('node_begin_cod').Value;
  cxButtonEdit6.EditValue := Q.FieldByName('node_end_cod').Value;
  cxButtonEdit7.EditValue := Q.FieldByName('kargoETSNG_cod').Value;
  cxTextEdit2.EditValue   := Q.FieldByName('MVRN').AsString;
  cxButtonEdit21.EditValue:= Q.FieldByName('kargoGNG_cod').Value;

  //cxComboBox2.ItemIndex    := iif(VarIsNull(Q.FieldByName('dual_oper_id').Value), -1, Q.FieldByName('dual_oper_id').Value);

  cxButtonEdit16.EditValue := Q.FieldByName('dual_oper_name').Value;

  Ffive_days_zfto_type     := iif(Q.FieldByName('five_days_zfto_type').IsNull, -9, Q.FieldByName('five_days_zfto_type').Value);
  cxButtonEdit14.EditValue := Q.FieldByName('five_days_zfto_type_name').Value;

  cxButtonEdit11.EditValue := Q.FieldByName('group_vagon_name').Value;
  cxButtonEdit10.EditValue := Q.FieldByName('owner_name').Value;
  cxButtonEdit9.EditValue  := Q.FieldByName('node_border_full_name').Value;
  cxButtonEdit8.EditValue  := Q.FieldByName('node_border_empty_name').Value;

  cxButtonEdit12.EditValue  := Q.FieldByName('budget_name').Value;
  cxTextEdit6.EditValue     := Q.FieldByName('budget_cod').Value;
  Fbudget_id := iif(VarIsNull(Q.FieldByName('budget_id').Value), -9, Q.FieldByName('budget_id').AsInteger);

  Fnode_begin_id := iif(VarIsNull(Q.FieldByName('node_begin_id').Value), -9, Q.FieldByName('node_begin_id').Value);
  Fnode_end_id   := iif(VarIsNull(Q.FieldByName('node_end_id').Value)  , -9, Q.FieldByName('node_end_id').Value);
  FkargoETSNG_id := iif(VarIsNull(Q.FieldByName('kargoETSNG_id').Value), -9, Q.FieldByName('kargoETSNG_id').Value);
  FkargoGNG_id   := iif(VarIsNull(Q.FieldByName('kargoGNG_id').Value),   -9, Q.FieldByName('kargoGNG_id').Value);

  Fdual_oper_id               := iif(VarIsNull(Q.FieldByName('dual_oper_id').Value),  -9, Q.FieldByName('dual_oper_id').Value);
  Fgroup_vagon_id             := iif(VarIsNull(Q.FieldByName('group_vagon_id').Value),-9, Q.FieldByName('group_vagon_id').Value);
  Fowner_id                   := iif(VarIsNull(Q.FieldByName('owner_id').Value),      -9, Q.FieldByName('owner_id').Value);
  Fnode_border_full_id        := iif(VarIsNull(Q.FieldByName('node_border_full_id').Value), -9, Q.FieldByName('node_border_full_id').Value);//id станции груженого погран перехода
  Fnode_border_empty_id       := iif(VarIsNull(Q.FieldByName('node_border_empty_id').Value),-9, Q.FieldByName('node_border_empty_id').Value);//id станции порожнего погран перехода
  cxComboBox3.ItemIndex       := iif(VarIsNull(Q.FieldByName('set_calc_date').Value), -1, Q.FieldByName('set_calc_date').Value);
  cxComboBox2.ItemIndex       := iif(VarIsNull(Q.FieldByName('type_bargain_date').Value), -1, Q.FieldByName('type_bargain_date').Value);
  cxLookupComboBox9.EditValue := Q.FieldByName('agreement_id').Value;
  if not Q.FieldByName('agreement_note').IsNull then
   cxPageControl2.ActivePageIndex := 1
  else
   cxPageControl2.ActivePageIndex := 0;

  cxTextEdit11.EditValue      := Q.FieldByName('agreement_note').Value;
  cxCurrencyEdit2.EditValue   := Q.FieldByName('plan_rate').Value;
  cxLookupComboBox8.EditValue := Q.FieldByName('rate_nds_id').Value;
  cxLookupComboBox6.EditValue := Q.FieldByName('table_rate_id').Value;
  cxTextEdit17.EditValue      := Q.FieldByName('bargain_acts_note').Value;
  Fservice_kind_id            := iif(VarIsNull(Q.FieldByName('service_kind_id').Value), -9, Q.FieldByName('service_kind_id').Value);
  Fservice_kind_rep_id        := iif(VarIsNull(Q.FieldByName('service_kind_rep_id').Value), -9, Q.FieldByName('service_kind_rep_id').Value);
  cxButtonEdit15.EditValue    := Q.FieldByName('service_kind_name').Value;
  cxButtonEdit13.EditValue    := Q.FieldByName('service_kind_name_full').Value;
  cxButtonEdit18.EditValue    := Q.FieldByName('service_kind_rep_name').Value;
  cxButtonEdit19.EditValue    := Q.FieldByName('service_kind_rep_name_full').Value;

  cxRadioGroup2.ItemIndex := iif(VarIsNull(Q.FieldByName('shaping_rate_round_weight').Value),0 , Q.FieldByName('shaping_rate_round_weight').Value);
  cxTextEdit5.EditValue   := Q.FieldByName('shaping_kargo_min_norm').Value;
  if not VarIsNull(Q.FieldByName('shaping_kargo_min_norm').Value) then begin
   cxTextEdit5.Visible := True;
   cxCheckBox4.Checked := True;
  end;

  cxCheckBox2.Checked     := Q.FieldByName('shaping_check_kargo_capacity').AsBoolean;
  RadioGroup2.ItemIndex   := Q.FieldByName('type_calc_sum').AsInteger;
  Fkateg_send_id          := iif(VarIsNull(Q.FieldByName('kateg_send_id').Value), -9, Q.FieldByName('kateg_send_id').Value);
  cxButtonEdit17.EditValue := Q.FieldByName('kateg_send_name').Value;

  if not Q.FieldByName('set_bargain_weight').IsNull then begin
    SpeedButton1.Down := Q.FieldByName('set_bargain_weight').AsBoolean;
    SpeedButton2.Down := not Q.FieldByName('set_bargain_weight').AsBoolean;
  end;

  if Q.FieldByName('kateg_send_cod').Value = '4' then begin
    cxButtonEdit11.Enabled := True;
    Label16.Enabled := True;
  end;

  if not Q.FieldByName('contract_agent_id').IsNull then begin
    Fcontract_agent_id := Q.FieldByName('contract_agent_id').Value;
    cxButtonEdit20.Enabled := True;
    cxButtonEdit20.EditValue := Q.FieldByName('contract_agent_name').Value;
    cxTextEdit1.EditValue := Q.FieldByName('contract_agent_cod').Value;
  end;

  cxMemo1.EditValue := Q.FieldByName('comment').Value;

  if not Q.FieldByName('sheet_num').IsNull then
   cxComboBox1.ItemIndex       :=  Q.FieldByName('sheet_num').Value;

  cxCurrencyEdit1.EditValue   := Q.FieldByName('plan_rate_calc').Value;

  Q.Close;
  Q.SQL.Clear;
  Q.SQL.Add('SELECT * FROM view_plan_client_rights WHERE plan_client_rate_id=' + IntToStr(Fplan_client_rate_id));
  Q.Open;
  if Q.RecordCount <> 0 then begin
    Application.MessageBox('Редактирование ставки невозможно. Она используется в планируемых перевозках!', 'Внимание', MB_OK+MB_ICONWARNING);
    cxDateEdit1.Enabled := False;
    cxLookupComboBox1.Enabled := False;
    cxLookupComboBox2.Enabled := False;
    cxLookupComboBox3.Enabled := False;
    cxLookupComboBox4.Enabled := False;
    cxLookupComboBox8.Enabled := False;
    cxButtonEdit2.Enabled := False;
    cxButtonEdit3.Enabled := False;
    cxButtonEdit5.Enabled := False;
    cxButtonEdit4.Enabled := False;
    cxButtonEdit6.Enabled := False;
    cxButtonEdit7.Enabled := False;
    cxCurrencyEdit2.Enabled := False;
    cxLookupComboBox6.Enabled := False;
    cxComboBox1.Enabled := False;
    Button1.Enabled := False;

    Fclosed_rate :=True;
  end;

  // -------- заполняем подрядчиков -----------------
  Q.Close;
  Q.SQL.Clear;
  Q.SQL.Add('SELECT * FROM view_plan_agent_rate WHERE plan_client_rate_id=' + IntToStr(Fplan_client_rate_id));
  Q.Open;
  while not Q.Eof do begin
    ClientDS_ShapingRate.Append;
    ClientDS_ShapingRate.FieldByName('plan_agent_rate_id'           ).Value := Q.FieldByName('plan_agent_rate_id').Value;
    ClientDS_ShapingRate.FieldByName('contract_agent_id'            ).Value := Q.FieldByName('contract_id').Value;
    ClientDS_ShapingRate.FieldByName('firm_customer_name'           ).Value := Q.FieldByName('firm_customer_name').Value;
    ClientDS_ShapingRate.FieldByName('contract_cod'                 ).Value := Q.FieldByName('contract_cod').Value;
    ClientDS_ShapingRate.FieldByName('shaping_rate_val'             ).Value := Q.FieldByName('plan_rate').Value;
    ClientDS_ShapingRate.FieldByName('shaping_rate_nds_id'          ).Value := Q.FieldByName('rate_nds_id').Value;
    ClientDS_ShapingRate.FieldByName('shaping_rate_nds_name'        ).Value := Q.FieldByName('rate_nds_name').Value;
    ClientDS_ShapingRate.FieldByName('ed_izm_id'                    ).Value := Q.FieldByName('ed_izm_id').Value;
    ClientDS_ShapingRate.FieldByName('ed_izm_name'                  ).Value := Q.FieldByName('ed_izm_name').Value;
    ClientDS_ShapingRate.FieldByName('currency_id'                  ).Value := Q.FieldByName('currency_id').Value;
    ClientDS_ShapingRate.FieldByName('brief_name'                   ).Value := Q.FieldByName('brief_name').Value;
    ClientDS_ShapingRate.FieldByName('budget_id'                    ).Value := Q.FieldByName('budget_id').Value;
    ClientDS_ShapingRate.FieldByName('budget_cod'                   ).Value := Q.FieldByName('budget_cod').Value;
    ClientDS_ShapingRate.FieldByName('budget_name'                  ).Value := Q.FieldByName('budget_name').Value;
    ClientDS_ShapingRate.FieldByName('type_park_id'                 ).Value := Q.FieldByName('type_park_id').Value;
    ClientDS_ShapingRate.FieldByName('type_park_name'               ).Value := Q.FieldByName('type_park_name').Value;
    ClientDS_ShapingRate.FieldByName('rod_vagon_id'                 ).Value := Q.FieldByName('rod_vagon_id').Value;
    ClientDS_ShapingRate.FieldByName('rod_vagon_name'               ).Value := Q.FieldByName('rod_vagon_name').Value;
    ClientDS_ShapingRate.FieldByName('table_rate_id'                ).Value := Q.FieldByName('table_rate_id').Value;
    ClientDS_ShapingRate.FieldByName('sheet_num'                    ).Value := Q.FieldByName('sheet_num').Value;
    ClientDS_ShapingRate.FieldByName('type_rate_id'                 ).Value := Q.FieldByName('type_rate_id').Value;
    ClientDS_ShapingRate.FieldByName('type_rate_name'               ).Value := Q.FieldByName('type_rate_name').Value;
    ClientDS_ShapingRate.FieldByName('table_rate_xml'               ).Value := Q.FieldByName('table_rate_xml').Value;
    ClientDS_ShapingRate.FieldByName('set_find_contract'            ).Value := Q.FieldByName('set_find_contract').Value;
    ClientDS_ShapingRate.FieldByName('els_cod'                      ).Value := Q.FieldByName('els_cod').Value;
    ClientDS_ShapingRate.FieldByName('type_calc'                    ).Value := Q.FieldByName('type_calc').Value;
    ClientDS_ShapingRate.FieldByName('type_calc_name'               ).Value := iif(Q.FieldByName('type_calc').AsInteger=0, 'Предоставление', 'Груж. тариф');
    ClientDS_ShapingRate.FieldByName('set_include_nds'              ).Value := Q.FieldByName('set_include_nds').Value;
    ClientDS_ShapingRate.FieldByName('set_round_notNDS_sum'         ).Value := Q.FieldByName('set_round_notNDS_sum').Value;

    ClientDS_ShapingRate.FieldByName('shaping_rate_round_weight'    ).Value := Q.FieldByName('shaping_rate_round_weight').Value;
    ClientDS_ShapingRate.FieldByName('shaping_kargo_min_norm'       ).Value := Q.FieldByName('shaping_kargo_min_norm').Value;
    ClientDS_ShapingRate.FieldByName('shaping_check_kargo_capacity' ).Value := Q.FieldByName('shaping_check_kargo_capacity').Value;
    ClientDS_ShapingRate.FieldByName('type_calc_sum'                ).Value := Q.FieldByName('type_calc_sum').Value;

    ClientDS_ShapingRate.Post;
    Q.Next;
  end;

  Q.Free;
  if Fnode_end_id = -9 then begin
   cxLookupComboBox6.Enabled := True;
   cxComboBox1.Enabled := True;
  end else begin
   cxLookupComboBox6.Enabled := False;
   cxComboBox1.Enabled := False;
   cxCurrencyEdit2.Enabled:= True;
   ClientDS_TableRate.EmptyDataSet;
   cxLookupComboBox6.EditValue := NULL;
   cxComboBox1.ItemIndex := -1;
  end;

  MonitorEventFormOpen('UPDATE_FORM', self.Name, fmMain.Lis, Fplan_client_rate_id);
  Screen.Cursor := crDefault;
end;

procedure TfmPlanRateClientAdd.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TfmPlanRateClientAdd.cxLookupComboBox6PropertiesEditValueChanged(Sender: TObject);
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
   cxCurrencyEdit2.Enabled:= True
  else begin
   cxCurrencyEdit2.Enabled:= False;
   cxCurrencyEdit2.EditValue:= NULL;
  end;
  cxCurrencyEdit1.EditValue := null;
end;

procedure TfmPlanRateClientAdd.cxLookupComboBox7PropertiesChange(Sender: TObject);
begin
  cxCurrencyEdit1.EditValue := null;
end;

procedure TfmPlanRateClientAdd.cxLookupComboBox8PropertiesChange(Sender: TObject);
begin
  cxCurrencyEdit1.EditValue := null;
end;

procedure TfmPlanRateClientAdd.dxBarButton1Click(Sender: TObject);
begin
  fmPlanRateAgentAdd := TfmPlanRateAgentAdd.Create(Application, ClientDS_ShapingRate);
  fmPlanRateAgentAdd.cxLookupComboBox7.EditValue := cxLookupComboBox7.EditValue;
  fmPlanRateAgentAdd.ShowModal;
end;

procedure TfmPlanRateClientAdd.dxBarButton2Click(Sender: TObject);
begin
  fmPlanRateAgentAdd := TfmPlanRateAgentAdd.Create(Application, ClientDS_ShapingRate);
  fmPlanRateAgentAdd._SetUpdate := cxGrid1DBBandedTableView1id.DataBinding.Field.AsInteger;
  fmPlanRateAgentAdd.ShowModal;
end;

procedure TfmPlanRateClientAdd.dxBarButton6Click(Sender: TObject);
begin
  fmPlanRateAgentAdd := TfmPlanRateAgentAdd.Create(Application, ClientDS_ShapingRate);
  fmPlanRateAgentAdd._SetUpdate  := cxGrid1DBBandedTableView1id.DataBinding.Field.AsInteger;
  fmPlanRateAgentAdd._SetType_action := 0;
  fmPlanRateAgentAdd.Caption := 'Копирование ставки подрядчика';
  if fmPlanRateAgentAdd.ShowModal = mrOk then begin
    cxGrid1DBBandedTableView1.DataController.ClearSelection;
  end;

end;


procedure TfmPlanRateClientAdd.dxBarButton3Click(Sender: TObject);
begin
  ClientDS_ShapingRate.Delete;
  ClientDS_ShapingRate.DisableControls;
  ClientDS_ShapingRate.First;
  while not ClientDS_ShapingRate.Eof do begin
    ClientDS_ShapingRate.Edit;
    ClientDS_ShapingRate.FieldByName('id').Value := ClientDS_ShapingRate.RecNo;
    ClientDS_ShapingRate.Post;
    ClientDS_ShapingRate.Next;
  end;
  ClientDS_ShapingRate.EnableControls;
end;

procedure TfmPlanRateClientAdd.dxBarButton4Click(Sender: TObject);
begin
  PrintcxGrid(cxGrid1DBBandedTableView1);
end;

procedure TfmPlanRateClientAdd.BitBtn3Click(Sender: TObject);
begin
  if cxLookupComboBox4.EditValue <> null then begin
    GetDocBlobView(cxLookupComboBox9.EditValue, nil, '', fmMain.Lis);
  end;
end;

procedure TfmPlanRateClientAdd.Button1Click(Sender: TObject);
begin
  cxCurrencyEdit2.Enabled:= True;
  ClientDS_TableRate.EmptyDataSet;
  cxLookupComboBox6.EditValue := NULL;
  cxComboBox1.Properties.Items.Clear;
  cxComboBox1.EditValue := NULL;
  cxComboBox1.ItemIndex := -1;
  cxCurrencyEdit1.EditValue := null;
end;

end.


