unit VagonRepairAdd;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Default,
  Dialogs, ComObj, DB, ADODB, XMLDoc, ExtCtrls, DBClient, Menus,
  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit, cxMemo, StdCtrls, cxTextEdit, cxDropDownEdit, cxCalendar,
  cxMaskEdit, cxLookupEdit, cxDBLookupEdit,cxDBLookupComboBox, cxCurrencyEdit, cxPropertiesStore,cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxDBData, dxBar,cxClasses, cxGridLevel, cxGridCustomView, cxGridCustomTableView,cxGridTableView, cxGridBandedTableView,
  cxGridDBBandedTableView, cxGrid, cxButtonEdit, cxCheckBox, cxGridDBTableView, cxNavigator, ComCtrls, dxCore, cxDateUtils, dxSkinsCore,
  dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
  dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMetropolis, dxSkinMetropolisDark, dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013DarkGray,
  dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus, dxSkinSilver,
  dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008, dxSkinTheAsphaltWorld, dxSkinsDefaultPainters, dxSkinValentine, dxSkinWhiteprint,
  dxSkinscxPCPainter, dxSkinsdxBarPainter,  dxSkinOffice2016Colorful, dxSkinOffice2016Dark, dxSkinVisualStudio2013Blue,  dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, dxSkinVS2010, dxSkinXmas2008Blue, dxDateRanges, dxSkinTheBezier, cxButtons,  dxScrollbarAnnotations, cxSpinEdit,
  cxDBEdit, dxCoreGraphics;

type
  TfmVagonRepairAdd = class(TForm)
    Panel2: TPanel;
    Panel1: TPanel;
    DS_Vagon_Repair_Table: TDataSource;
    Panel5: TPanel;
    Panel3: TPanel;
    cxGrid1: TcxGrid;
    cxGrid1DBBandedTableView1: TcxGridDBBandedTableView;
    cxGrid1Level1: TcxGridLevel;
    dxBarManager1: TdxBarManager;
    dxBarManager1Bar1: TdxBar;
    dxBarContainerItem1: TdxBarContainerItem;
    N1: TdxBarButton;
    N5: TdxBarButton;
    N2: TdxBarButton;
    dxBarDockControl1: TdxBarDockControl;
    PopupMenu1: TdxBarPopupMenu;
    Client_Vagon_Repair_Table: TClientDataSet;
    Label2: TLabel;
    Label1: TLabel;
    Label3: TLabel;
    cxDateEdit_ActDate: TcxDateEdit;
    cxDateEdit2: TcxDateEdit;
    cxTextEdit1: TcxTextEdit;
    cxTextEdit2: TcxTextEdit;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Query_Contract: TADOQuery;
    DS_Contract: TDataSource;
    cxLookupComboBox1: TcxLookupComboBox;
    cxTextEdit3: TcxTextEdit;
    Label8: TLabel;
    cxLookupComboBox2: TcxLookupComboBox;
    Query_Depo: TADOQuery;
    DS_Depo: TDataSource;
    Query_Node: TADOQuery;
    DS_Node: TDataSource;
    cxButtonEdit2: TcxButtonEdit;
    cxButtonEdit_NodeCod: TcxButtonEdit;
    cxTextEdit4: TcxTextEdit;
    ClientDataSet1: TClientDataSet;
    ClientDataSet1node_begin_id: TIntegerField;
    ClientDataSet1node_begin_cod: TStringField;
    ClientDataSet1node_begin_name: TStringField;
    Query_Type_nds: TADOQuery;
    cxGrid1DBBandedTableView1fact_repair_table_id: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1fact_repair_id: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1look_service: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1look_detail: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1detail_num: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1act_breakage_date: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1look_detail_status: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1look_num_vagon: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1rate: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1quantity: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1look_rate_nds: TcxGridDBBandedColumn;
    DS_Type_nds: TDataSource;
    cxGrid1DBBandedTableView1owner_name: TcxGridDBBandedColumn;
    Query_Service: TADOQuery;
    DS_Service: TDataSource;
    Query_Detail: TADOQuery;
    DS_Detail: TDataSource;
    Query_Detail_Status: TADOQuery;
    DS_Detail_Status: TDataSource;
    Query_Vagon: TADOQuery;
    DS_Vagon: TDataSource;
    cxGrid1DBBandedTableView1sum_total: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1sum_nds: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1sum: TcxGridDBBandedColumn;
    dxBarButton1: TdxBarButton;
    dxBarButton2: TdxBarButton;
    cxCheckBox2: TcxCheckBox;
    cxGrid1DBBandedTableView1set_vu41: TcxGridDBBandedColumn;
    cxCheckBox1: TcxCheckBox;
    cxCheckBox3: TcxCheckBox;
    cxGrid1DBBandedTableView1auto_num: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1primary_docs: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1date_vu36: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1look_type_mh1: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1look_type_mh2: TcxGridDBBandedColumn;
    Query_Type_Mh1: TADOQuery;
    Query_Type_Mh2: TADOQuery;
    DS_type_mh1: TDataSource;
    DS_type_mh2: TDataSource;
    cxGrid1DBBandedTableView1arenda_firm_name: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1date_vu23: TcxGridDBBandedColumn;
    Query_Arenda: TADOQuery;
    cxGrid1DBBandedTableView1detail_date_begin: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1detail_date_end: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1relation_table_id: TcxGridDBBandedColumn;
    dxBarButton3: TdxBarButton;
    dxBarButton4: TdxBarButton;
    dxBarButton5: TdxBarButton;
    cxGrid1DBBandedTableView1width_truck: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1repair_order: TcxGridDBBandedColumn;
    dxBarButton6: TdxBarButton;
    cxGrid1DBBandedTableView1pay_num: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1pretenzia_num: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1look_cost_contract: TcxGridDBBandedColumn;
    Query_Cost_Contract: TADOQuery;
    DS_Cost_Contract: TDataSource;
    cxGrid1DBBandedTableView1cost_contract_cod: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1comis: TcxGridDBBandedColumn;
    dxBarButton_SetDateVagonDepotArrival: TdxBarButton;
    dxBarSubItem1: TdxBarSubItem;
    dxBarButton_ClearDateVagonDepotArrival: TdxBarButton;
    cxGrid1DBBandedTableView1comis_pct: TcxGridDBBandedColumn;
    cxButtonEdit5: TcxButtonEdit;
    Label7: TLabel;
    cxDateEdit1: TcxDateEdit;
    cxGrid1DBBandedTableView1primary_docs2: TcxGridDBBandedColumn;
    dxBarButton7: TdxBarButton;
    cxGrid1DBBandedTableView1service_sf_name: TcxGridDBBandedColumn;
    DataSource1: TDataSource;
    Query_service_sf: TADOQuery;
    DS_service_sf: TDataSource;
    GroupBox1: TGroupBox;
    cxMemo1: TcxMemo;
    dxBarButton8: TdxBarButton;
    cxGrid1DBBandedTableView1set_self_cost: TcxGridDBBandedColumn;
    dxBarButton9: TdxBarButton;
    cxGrid1DBBandedTableView1rod_vagon_name: TcxGridDBBandedColumn;
    dxBarSubItem2: TdxBarSubItem;
    dxBarButton10: TdxBarButton;
    cxButtonEdit1: TcxButtonEdit;
    cxGrid1DBBandedTableView1set_cost_price: TcxGridDBBandedColumn;
    dxBarButton11: TdxBarButton;
    dxBarButton12: TdxBarButton;
    Client_Vagon_Repair_Tablefact_repair_table_id: TIntegerField;
    Client_Vagon_Repair_Tablefact_repair_id: TIntegerField;
    Client_Vagon_Repair_Tableservice_id: TIntegerField;
    Client_Vagon_Repair_Tabledetail_id: TIntegerField;
    Client_Vagon_Repair_Tabledetail_num: TStringField;
    Client_Vagon_Repair_Tableact_breakage_date: TDateTimeField;
    Client_Vagon_Repair_Tabledetail_status_id: TIntegerField;
    Client_Vagon_Repair_Tableprimary_docs: TStringField;
    Client_Vagon_Repair_Tableprimary_docs2: TStringField;
    Client_Vagon_Repair_Tablevagon_id: TIntegerField;
    Client_Vagon_Repair_Tablerate: TCurrencyField;
    Client_Vagon_Repair_Tablerate_nds: TCurrencyField;
    Client_Vagon_Repair_Tablesum: TCurrencyField;
    Client_Vagon_Repair_Tablesum_total: TCurrencyField;
    Client_Vagon_Repair_Tablesum_nds: TCurrencyField;
    Client_Vagon_Repair_Tableowner_name: TStringField;
    Client_Vagon_Repair_Tableset_vu1920: TBooleanField;
    Client_Vagon_Repair_Tableset_vu22: TBooleanField;
    Client_Vagon_Repair_Tableset_vu23: TBooleanField;
    Client_Vagon_Repair_Tableset_vu36: TBooleanField;
    Client_Vagon_Repair_Tableset_rd: TBooleanField;
    Client_Vagon_Repair_Tableset_abu: TBooleanField;
    Client_Vagon_Repair_Tableset_vu41: TBooleanField;
    Client_Vagon_Repair_Tableauto_num: TAutoIncField;
    Client_Vagon_Repair_Tabledate_vu36: TDateField;
    Client_Vagon_Repair_Tablearenda_firm_name: TStringField;
    Client_Vagon_Repair_Tabledate_vu23: TDateField;
    Client_Vagon_Repair_Tableset_zdinv: TBooleanField;
    Client_Vagon_Repair_Tabledetail_date_begin: TDateField;
    Client_Vagon_Repair_Tabledetail_date_end: TDateField;
    Client_Vagon_Repair_Tablerelation_table_id: TIntegerField;
    Client_Vagon_Repair_Tablewidth_truck: TIntegerField;
    Client_Vagon_Repair_Tablerepair_order: TStringField;
    Client_Vagon_Repair_Tablepay_num: TStringField;
    Client_Vagon_Repair_Tablepretenzia_num: TStringField;
    Client_Vagon_Repair_Tablecost_contract_id: TIntegerField;
    Client_Vagon_Repair_Tablecost_contract_cod: TStringField;
    Client_Vagon_Repair_Tablecomis: TCurrencyField;
    Client_Vagon_Repair_Tabledate_vagon_depot_arrival: TDateField;
    Client_Vagon_Repair_Tablequantity: TFloatField;
    Client_Vagon_Repair_Tablerate_nds_id: TIntegerField;
    Client_Vagon_Repair_Tableservice_sf_id: TIntegerField;
    Client_Vagon_Repair_Tablestr_width_truck: TStringField;
    Client_Vagon_Repair_Tableset_self_cost: TBooleanField;
    Client_Vagon_Repair_Tablerod_vagon_name: TStringField;
    Client_Vagon_Repair_Tablecomis_pct: TCurrencyField;
    Client_Vagon_Repair_Tablenum_vagon: TIntegerField;
    Client_Vagon_Repair_Tablemain_owner_id: TIntegerField;
    Client_Vagon_Repair_Tabletype_mh1_id: TIntegerField;
    Client_Vagon_Repair_Tabletype_mh2_id: TIntegerField;
    Client_Vagon_Repair_Tableset_cost_price: TBooleanField;
    cxButton1: TcxButton;
    cxButton3: TcxButton;
    cxGrid1DBBandedTableView1owner_self_name: TcxGridDBBandedColumn;
    Client_Vagon_Repair_Tableowner_self_name: TStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cxLookupComboBox1PropertiesEditValueChanged(Sender: TObject);
    procedure cxButtonEdit2PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure cxLookupComboBox2PropertiesEditValueChanged(Sender: TObject);
    procedure N1Click(Sender: TObject);
    procedure N2Click(Sender: TObject);
    procedure N5Click(Sender: TObject);
    procedure cxGrid1DBBandedTableView1EditValueChanged(Sender: TcxCustomGridTableView; AItem: TcxCustomGridTableItem);

    procedure cxGrid1DBBandedTableView1FocusedItemChanged(Sender: TcxCustomGridTableView; APrevFocusedItem, AFocusedItem: TcxCustomGridTableItem);
    procedure cxGrid1DBBandedTableView1FocusedRecordChanged(Sender: TcxCustomGridTableView; APrevFocusedRecord, AFocusedRecord: TcxCustomGridRecord; ANewItemRecordFocusingChanged: Boolean);
    procedure cxGrid1DBBandedTableView1CustomDrawCell(Sender: TcxCustomGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
    procedure cxGrid1DBBandedTableView1CustomDrawColumnHeader(Sender: TcxGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxGridColumnHeaderViewInfo; var ADone: Boolean);
    procedure cxGrid1DBBandedTableView1CustomDrawFooterCell(Sender: TcxGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxGridColumnHeaderViewInfo; var ADone: Boolean);
    procedure cxGrid1DBBandedTableView1DataControllerFilterChanged(Sender: TObject);
    procedure cxTextEdit1PropertiesEditValueChanged(Sender: TObject);
    procedure dxBarButton2Click(Sender: TObject);
    procedure cxCheckBox2PropertiesEditValueChanged(Sender: TObject);
    procedure cxDateEdit2PropertiesEditValueChanged(Sender: TObject);

    procedure   PropertiesEditValueChanged(Sender: TObject);
    procedure   RefreshDataSetGrid();
    procedure dxBarButton4Click(Sender: TObject);
    procedure dxBarButton5Click(Sender: TObject);
    procedure dxBarButton6Click(Sender: TObject);
    procedure dxBarButton_SetDateVagonDepotArrivalClick(Sender: TObject);
    procedure dxBarButton_ClearDateVagonDepotArrivalClick(Sender: TObject);
    procedure cxButtonEdit5PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure dxBarButton7Click(Sender: TObject);
    procedure dxBarButton8Click(Sender: TObject);
    procedure PopupMenu1Popup(Sender: TObject);
    procedure dxBarButton9Click(Sender: TObject);
    procedure dxBarButton10Click(Sender: TObject);
    procedure cxButtonEdit1PropertiesButtonClick(Sender: TObject;   AButtonIndex: Integer);
    procedure Client_Vagon_Repair_TableBeforePost(DataSet: TDataSet);
    procedure dxBarButton11Click(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
  private
    Ftype_action           : integer;
    Ffirm_id               : variant;
    Ffirm_name             : variant;
    Fdate_begin, Fdate_end : variant;
    Fnode_begin_id         : integer;
    Fusr_pwd               : PUser_pwd;
    Ffact_repair_id        : integer;
    FkargoETSNG_id         : integer;
    Ftype_fact_repair      : integer;
    Fbudget_id             : integer;

    procedure SetUpdate(fact_repair_id :integer);
    procedure SetFactRepairTable_id(fact_repair_table_id :integer);
    procedure UpdateVagonDepotArrivalDate(row_id: integer; date: variant);
    procedure SetCreateByStr(str_fact_repair_table_id: string);

  public
    constructor Create(AOwner : TApplication; usr_pwd: PUser_pwd; type_fact_repair: integer);
  published
    property _SetUpdate : integer write SetUpdate;

    property _GetFirmId                : variant read Ffirm_id;
    property _GetFirmName              : variant read Ffirm_name;
    property _GetDateBegin             : variant read Fdate_begin;
    property _GetDateEnd               : variant read Fdate_end;
    property _GetFact_repair_id        : integer read Ffact_repair_id;

    property _Set_fact_repair_table_id : integer write SetFactRepairTable_id;
    property _SetCreateByStr           : string  write SetCreateByStr;
  end;

var
  fmVagonRepairAdd: TfmVagonRepairAdd;

implementation
  uses VagonRepair, Filter, FactTech, Raznoe, Other, StrUtils;

{$R *.dfm}

procedure TfmVagonRepairAdd.Client_Vagon_Repair_TableBeforePost(
  DataSet: TDataSet);
begin
 if (Client_Vagon_Repair_Table.State <> dsEdit) OR (Client_Vagon_Repair_Table.State <> dsInsert) then Client_Vagon_Repair_Table.Edit;
 if VarIsNull(Client_Vagon_Repair_Table['fact_repair_table_id']) then
 Client_Vagon_Repair_Table['fact_repair_table_id'] := (-1)*Client_Vagon_Repair_Table.RecordCount;
end;

constructor TfmVagonRepairAdd.Create(AOwner: TApplication; usr_pwd: PUser_pwd; type_fact_repair: integer);
begin
  Screen.Cursor := crHourglass;
  inherited Create(AOwner);
  Ftype_fact_repair := type_fact_repair;
  Fusr_pwd := usr_pwd;
  Ftype_action := 0;
  Query_Depo.Open;
  Query_Type_nds.Open;
  Query_Service.Open;
  Query_Detail.Open;
  Query_Detail_Status.Open;
  Query_Vagon.Parameters.ParamByName('users_group_id').Value := Fusr_pwd.user_group_id;
  Query_Vagon.Open;
  Query_Type_Mh1.Open;
  Query_Type_Mh2.Open;
  Query_Cost_Contract.Open;
  Query_service_sf.Open;
  ClientDataSet1.CreateDataSet;
  Client_Vagon_Repair_Table.CreateDataSet;
  Client_Vagon_Repair_Table.LogChanges := False;

  cxLookupComboBox2.EditValue := Query_Depo.FieldByName('inf_obj_id').Value;
  Fnode_begin_id := -9;
  Fbudget_id := -9;
  cxDateEdit2.EditValue := Date;

  cxLookupComboBox1.EditValue := Query_Contract.FieldByName('contract_id').Value;

  case Ftype_fact_repair of
   0: begin
       Caption := Caption + ' Реализация(Клиент)';
       Label4.Caption := 'Клиент.................';
      end;
   1: begin
       Caption := Caption + ' Поступление(Подрядчик)';
       Label4.Caption := 'Подрядчик...................';
      end;
  end;

  if  usr_pwd.user_func.Locate('func_name', 'set_repair_modify', [loCaseInsensitive]) then begin
    cxCheckBox2.Enabled := True;
  end;

  StoreRegistryGrid(rgLoad, '\Software\Lis1\Repair_Add_Grids', cxGrid1DBBandedTableView1);
  SetUsersModuleRights(self, fmVagonRepair.ADOVagonRepair);

  MonitorEventFormOpen('OPEN_FORM', self.Name, fmVagonRepair.ADOVagonRepair, -9);
  Screen.Cursor := crDefault;
end;

procedure TfmVagonRepairAdd.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  StoreRegistryGrid(rgSave, '\Software\Lis1\Repair_Add_Grids', cxGrid1DBBandedTableView1);
  Action := caFree;
end;

procedure TfmVagonRepairAdd.cxDateEdit2PropertiesEditValueChanged(Sender: TObject);
var contract_id :integer;
begin
  cxDateEdit_ActDate.EditValue := cxDateEdit2.EditValue;
  contract_id := -9;

  if not VarIsNull(cxLookupComboBox1.EditValue) then
    contract_id := cxLookupComboBox1.EditValue;
  Query_Contract.Close;
  //Query_Contract.Parameters.ParamByName('type_contract').Value := Ftype_fact_repair;
  Query_Contract.Parameters.ParamByName('act_date').Value := cxDateEdit2.EditValue;
  Query_Contract.Open;

  if cxDateEdit2.EditValue > '01.01.2019' then
   Query_Type_nds.Locate('inf_obj_cod', '20', []);

  cxLookupComboBox1.EditValue := contract_id;
end;

procedure TfmVagonRepairAdd.cxButton1Click(Sender: TObject);
var SP : TADOStoredProc;
    Q  : TADOQuery;
    str : string;
begin
  //-------- Проверки ------------
  if VarIsNull(cxDateEdit2.EditValue) then begin
    Application.MessageBox('Не заполнена дата Счета-фактуры.', 'Внимание', MB_OK + MB_ICONERROR);
    ModalResult := mrNone;
    Exit;
  end;



  Screen.Cursor := crHourglass;
  SP := TADOStoredProc.Create(nil);
  SP.Connection := fmVagonRepair.ADOVagonRepair;
  SP.CommandTimeout := 800;
  SP.ProcedureName := 'sp_fact_repair_modify;1';
  SP.Parameters.Refresh;

  SP.Parameters.ParamByName('@fact_repair_id'     ).Value   :=  Ffact_repair_id;
  SP.Parameters.ParamByName('@type_action'        ).Value   :=  Ftype_action;
  SP.Parameters.ParamByName('@type_fact_repair'   ).Value   :=  Ftype_fact_repair;
  SP.Parameters.ParamByName('@score_cod'          ).Value   :=  cxTextEdit1.EditValue;
  SP.Parameters.ParamByName('@score_date'         ).Value   :=  cxDateEdit2.EditValue;
  SP.Parameters.ParamByName('@act_cod'            ).Value   :=  cxTextEdit2.EditingValue;
  SP.Parameters.ParamByName('@act_date'           ).Value   :=  cxDateEdit_ActDate.EditValue;
  SP.Parameters.ParamByName('@contract_id'        ).Value   :=  cxLookupComboBox1.EditValue;
  SP.Parameters.ParamByName('@depo_id'            ).Value   :=  cxLookupComboBox2.EditValue;
  SP.Parameters.ParamByName('@set_block'          ).Value   :=  cxCheckBox2.EditValue;
  SP.Parameters.ParamByName('@set_score_original' ).Value   :=  cxCheckBox1.EditValue;
  SP.Parameters.ParamByName('@set_act_original'   ).Value   :=  cxCheckBox3.EditValue;
  SP.Parameters.ParamByName('@kargoETSNG_id'      ).Value   :=  iif(FkargoETSNG_id = -9, NULL, FkargoETSNG_id);;
  SP.Parameters.ParamByName('@budget_id'          ).Value   :=  iif(Fbudget_id = -9, NULL, Fbudget_id);
  SP.Parameters.ParamByName('@node_id'            ).Value   :=  iif(Fnode_begin_id = -9, NULL, Fnode_begin_id);

  SP.Parameters.ParamByName('@comment'      ).Value         :=  cxMemo1.EditValue;

  if not VarIsNull(cxDateEdit1.EditValue) then
    SP.Parameters.ParamByName('@doc_original_date'  ).Value   :=  cxDateEdit1.EditValue;

  SP.Parameters.ParamByName('@fact_repair_table_xml').Value :=  DataXMLToSQL(Client_Vagon_Repair_Table);

  try
    SP.ExecProc;
    if TComponent(Sender).Tag = 0 then ModalResult := mrOk
      else begin
       ModalResult := mrNone;
       RefreshDataSetGrid;
      end;
    Ffact_repair_id := SP.Parameters.ParamByName('@fact_repair_id').Value;
  except on E: Exception do begin
    Application.MessageBox(PChar(E.Message),'ВНИМАНИЕ!!!' , MB_OKCANCEL + MB_ICONERROR);
    ModalResult := mrNone;
  end;
  end;
  SP.Free;
  Screen.Cursor := crDefault;

end;

procedure TfmVagonRepairAdd.cxButtonEdit1PropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
var new_str   : string;
    set_find  : boolean;
    Q : TADOQuery;
begin
  set_find := False;
  Q := TADOQuery.Create(nil);
  Q.Connection := fmVagonRepair.ADOVagonRepair;
  case AButtonIndex of
    0 : begin
          Q.SQL.Add('SELECT  b.budget_id, b.budget_name, b.budget_cod FROM view_shp_budget_rights b JOIN view_shp_budget_rights pb ON pb.budget_id = b.budget_parent_id AND pb.budget_cod = ''6754191''');
          Q.Open;
          fmFilter := TfmFilter.Create(0, Q, 'budget_id', 'budget_id', 'budget_name');
          if fmFilter.ShowModal = mrOk then begin
           Fbudget_id := fmFilter.GetId;
           cxButtonEdit1.Text := fmFilter.GetName;
          end;
          Q.Close;
          Q.Free;
        end;
    1 : begin
          Fbudget_id      := -9;
          cxButtonEdit1.Text  := '';
        end;
  end;
end;

procedure TfmVagonRepairAdd.cxButtonEdit2PropertiesButtonClick(Sender: TObject;AButtonIndex: Integer);
begin
  case AButtonIndex of
    0 : begin
          case TcxButtonEdit(Sender).Tag of
            2 : begin
                  if FindInInfObjNode(ClientDataSet1,'NODE_BEGIN' ,True, True, NOW , fmVagonRepair.ADOVagonRepair) then begin
                    Fnode_begin_id := ClientDataSet1.FieldByName('node_begin_id').AsInteger;
                    cxButtonEdit2.Text := ClientDataSet1.FieldByName('node_begin_name').AsString;
                    cxButtonEdit_NodeCod.Text := ClientDataSet1.FieldByName('node_begin_cod').AsString;
                  end;
                end;
            4 : begin
                  if FindInInfObjNode(ClientDataSet1,'NODE_BEGIN' ,False, True, NOW , fmVagonRepair.ADOVagonRepair) then begin
                    Fnode_begin_id := ClientDataSet1.FieldByName('node_begin_id').AsInteger;
                    cxButtonEdit2.Text := ClientDataSet1.FieldByName('node_begin_name').AsString;
                    cxButtonEdit_NodeCod.Text := ClientDataSet1.FieldByName('node_begin_cod').AsString;
                  end;
                end;
          end;
        end;
    1 : case TcxButtonEdit(Sender).Tag of
          2,4 : begin
                  Fnode_begin_id := -9;
                  cxButtonEdit2.Text := '';
                  cxButtonEdit_NodeCod.Text := '';
                end;
        end;
  end;
end;

procedure TfmVagonRepairAdd.cxButtonEdit5PropertiesButtonClick(Sender: TObject;AButtonIndex: Integer);
var new_str   : string;
    set_find  : boolean;
    Q : TADOQuery;
begin
  set_find := False;
  Q := TADOQuery.Create(nil);
  Q.Connection := fmVagonRepair.ADOVagonRepair;
  case AButtonIndex of
    0 :  if InputQuery('Поиск', 'Шаблон НАИМЕНОВАНИЯ для груза ЕТСНГ:', new_str) then begin
                  set_find := True;
                  Q.SQL.Add(
                    'SELECT inf_obj_id, inf_obj_name, inf_obj_cod FROM inf_obj_ETSNG WITH (NOLOCK)' +
                    'WHERE (inf_obj_name LIKE ''%' + new_str + '%'') and (dbo.GetInfObjVisible(str_group_visible) = 1)' +
                    'ORDER BY inf_obj_name'
                  );
                end;
    1 : begin
          FkargoETSNG_id      := -9;
          cxButtonEdit5.Text  := '';
        end;
  end;

  if set_find then begin
    Q.Open;
    fmFilter := TfmFilter.Create(0, Q, 'inf_obj_id', 'inf_obj_cod', 'inf_obj_name');
    if fmFilter.ShowModal=mrOk then begin
      if TcxButtonEdit(Sender).Tag in [0,1] then begin
        FkargoETSNG_id := fmFilter.GetId;
        cxButtonEdit5.Text := fmFilter.GetName;
      end;
      Q.Close;
      Q.Free;
    end;
  end;
end;



procedure TfmVagonRepairAdd.cxCheckBox2PropertiesEditValueChanged(Sender: TObject);
begin
  cxGrid1DBBandedTableView1.OptionsData.Editing :=  not cxCheckBox2.EditValue;
  cxTextEdit1.Enabled := not cxCheckBox2.EditValue;
  cxTextEdit2.Enabled := not cxCheckBox2.EditValue;
  cxDateEdit_ActDate.Enabled := not cxCheckBox2.EditValue;
  cxDateEdit2.Enabled := not cxCheckBox2.EditValue;
  cxLookupComboBox1.Enabled := not cxCheckBox2.EditValue;
  cxLookupComboBox2.Enabled := not cxCheckBox2.EditValue;
  cxButtonEdit2.Enabled := not cxCheckBox2.EditValue;
  cxButtonEdit_NodeCod.Enabled := not cxCheckBox2.EditValue;
  dxBarManager1Bar1.Visible := not cxCheckBox2.EditValue;
  N1.Enabled := not cxCheckBox2.EditValue;
  N2.Enabled := not cxCheckBox2.EditValue;
  cxButtonEdit5.Enabled := not cxCheckBox2.EditValue;
  cxCheckBox3.Enabled := not cxCheckBox2.EditValue;
  cxCheckBox1.Enabled := not cxCheckBox2.EditValue;
  cxDateEdit1.Enabled := not cxCheckBox2.EditValue;
end;

procedure TfmVagonRepairAdd.cxLookupComboBox1PropertiesEditValueChanged(Sender: TObject);
begin
  Query_Contract.Locate('contract_id', cxLookupComboBox1.EditValue, []);
  cxTextEdit3.EditValue := Query_Contract.FieldByName('contract_cod').Value;
end;

procedure TfmVagonRepairAdd.cxLookupComboBox2PropertiesEditValueChanged(Sender: TObject);
begin
  Query_Depo.Locate('inf_obj_id', cxLookupComboBox2.EditValue, []);
  cxTextEdit4.EditValue := Query_Depo.FieldByName('inf_obj_cod').Value;
end;

procedure TfmVagonRepairAdd.cxTextEdit1PropertiesEditValueChanged(Sender: TObject);
begin
  if VarIsNULL(cxTextEdit1.EditValue) then cxTextEdit2.EditValue := cxTextEdit1.EditValue;
end;

procedure TfmVagonRepairAdd.dxBarButton10Click(Sender: TObject);
var exWks, exApp  : Variant;
    count_str     : integer;
    OpenDialog1   : TOpenDialog;
    file_name     : string;
    rate_nds      : integer;
    Q             : TADOQuery;
begin
  OpenDialog1 := TOpenDialog.Create(nil);
  OpenDialog1.Filter     := 'Excel файлы|*.xls;*.xlsx';
  OpenDialog1.DefaultExt := 'xls';
    if OpenDialog1.Execute then begin
    file_name := OpenDialog1.FileName;
  end;
  OpenDialog1.Free;
  ShowTextMessage('Запуск Excel...', False);
  exApp := CreateOleObject('Excel.Application');
  exApp.Workbooks.Open(file_name);
  exWks := exApp.ActiveWorkbook.WorkSheets[1];
  Q := TADOQuery.Create(nil);
  Q.Connection := fmVagonRepair.ADOVagonRepair;

  Screen.Cursor := crHourglass;
  count_str := 2;
  Client_Vagon_Repair_Table.DisableControls;
  while not (TVarData(exWks.Cells[count_str,1].Value).VType = varEmpty) do begin
    Client_Vagon_Repair_Table.Append;
   if  Query_Vagon.Locate('num_vagon', exWks.Range['B' + IntToStr(count_str)].Value , []) then
     Client_Vagon_Repair_Table.FieldByName('vagon_id').Value := Query_Vagon.FieldByName('vagon_id').Value;
   Client_Vagon_Repair_Table.FieldByName('quantity').Value    := 1;
   Client_Vagon_Repair_Table.FieldByName('rate_nds_id').Value := Query_Type_nds.FieldByName('rate_nds_id').Value;
   rate_nds := Query_Type_nds.FieldByName('inf_obj_cod').AsInteger;
   Client_Vagon_Repair_Table['date_vu23'] := exWks.Range['A' + IntToStr(count_str)].Value;
   Client_Vagon_Repair_Table['date_vu36'] := exWks.Range['A' + IntToStr(count_str)].Value;
   Client_Vagon_Repair_Table['rate']      := exWks.Range['C' + IntToStr(count_str)].Value;
   Client_Vagon_Repair_Table['sum']       := exWks.Range['C' + IntToStr(count_str)].Value;
   Client_Vagon_Repair_Table['sum_nds']   := RoundCurr(Client_Vagon_Repair_Table['sum']*rate_nds/100,-2);
   Client_Vagon_Repair_Table['sum_total'] := Client_Vagon_Repair_Table['sum'] + Client_Vagon_Repair_Table['sum_nds'];
   Client_Vagon_Repair_Table['set_self_cost']:= 1;
   Client_Vagon_Repair_Table['set_vu1920']:= 0;
   Client_Vagon_Repair_Table['set_vu22']  := 0;
   Client_Vagon_Repair_Table['set_vu23']  := 0;
   Client_Vagon_Repair_Table['set_vu36']  := 0;
   Client_Vagon_Repair_Table['set_vu41']  := 0;
   Client_Vagon_Repair_Table['set_rd']    := 0;
   Client_Vagon_Repair_Table['set_abu']   := 0;

   //Владелец
   if (not VarIsNull(Client_Vagon_Repair_Table['date_vu23'])) and (not VarIsNull(Client_Vagon_Repair_Table['vagon_id'])) then begin
    Q.Close;
    Q.SQL.Clear;
    Q.SQL.Add('SELECT dbo.func_GetVagonOwner(:vagon_id,:date_begin) as owner_name');
    Q.Parameters.ParamByName('vagon_id').Value := Client_Vagon_Repair_Table['vagon_id'];
    Q.Parameters.ParamByName('date_begin').Value := Client_Vagon_Repair_Table['date_vu23'];
    Q.Open;
    if Q.RecordCount > 0 then begin
     Client_Vagon_Repair_Table['firm_customer_name']:= Q.FieldByName('owner_name').AsString;
    end;
   end;

   //Контрагент(Расходы)
   Q.Close;
   Q.SQL.Clear;
   Q.SQL.Add('SELECT dbo.func_GetVagonRepairCostContract(:vagon_id, :date_begin) as cost_contract_id');
   Q.Parameters.ParamByName('vagon_id').Value := Client_Vagon_Repair_Table['vagon_id'];
   Q.Parameters.ParamByName('date_begin').Value := Client_Vagon_Repair_Table['date_vu36'];
   Q.Open;
   if not Q.FieldByName('cost_contract_id').IsNull then begin
    Query_Cost_Contract.Locate('contract_id', Q.FieldByName('cost_contract_id').Value, []);
    Client_Vagon_Repair_Table['cost_contract_id']  := Q.FieldByName('cost_contract_id').Value;
    Client_Vagon_Repair_Table['cost_contract_cod'] := Query_Cost_Contract.FieldByName('contract_cod').Value;
   end else begin
    Client_Vagon_Repair_Table['cost_contract_id']  := null;
    Client_Vagon_Repair_Table['cost_contract_cod'] := null;
   end;

   Client_Vagon_Repair_Table.Post;
   ShowTextMessage('Обработка строки...' + IntToStr(count_str) , False);
   count_str := count_str + 1;
  end;

  Client_Vagon_Repair_Table.EnableControls;
  ShowTextMessage();
  Screen.Cursor := crDefault;
  Q.Free;
  exApp.Quit; exWks := null; exWks := null;
end;

procedure TfmVagonRepairAdd.dxBarButton11Click(Sender: TObject);
var i : integer;
begin
  Client_Vagon_Repair_Table.DisableControls;

  for i:=cxGrid1DBBandedTableView1.Controller.SelectedRowCount - 1 downto 0  do begin
    if Client_Vagon_Repair_Table.Locate('fact_repair_table_id', cxGrid1DBBandedTableView1.Controller.SelectedRows[i].Values[cxGrid1DBBandedTableView1fact_repair_table_id.Index], []) then begin
      Client_Vagon_Repair_Table.Edit;
      Client_Vagon_Repair_Table['set_cost_price'] := (TComponent(Sender).Tag = 1);
      Client_Vagon_Repair_Table.Post;
    end;
  end;

  Client_Vagon_Repair_Table.EnableControls;
end;

procedure TfmVagonRepairAdd.dxBarButton2Click(Sender: TObject);
begin
  PrintcxGrid(cxGrid1DBBandedTableView1);
end;

procedure TfmVagonRepairAdd.N1Click(Sender: TObject);
begin
  Client_Vagon_Repair_Table.Append;
  Client_Vagon_Repair_Table['set_vu1920']:= 0;
  Client_Vagon_Repair_Table['set_vu22']  := 0;
  Client_Vagon_Repair_Table['set_vu23']  := 0;
  Client_Vagon_Repair_Table['set_vu36']  := 0;
  Client_Vagon_Repair_Table['set_vu41']  := 0;
  Client_Vagon_Repair_Table['set_rd']    := 0;
  Client_Vagon_Repair_Table['set_abu']   := 0;
  Client_Vagon_Repair_Table['rate_nds_id']  := Query_Type_nds.FieldByName('rate_nds_id').Value;
  Query_Cost_Contract.Locate('contract_cod','Собственные вагоны',[]);
  Client_Vagon_Repair_Table['cost_contract_id']  := Query_Cost_Contract.FieldByName('contract_id').Value;
  Client_Vagon_Repair_Table['set_self_cost'] := True;
  Client_Vagon_Repair_Table['set_cost_price'] := True;
  Client_Vagon_Repair_Table['date_vu23'] := cxDateEdit_ActDate.EditValue;

 // Client_Vagon_Repair_Table['service_sf_id']     := Query_service_sf.FieldByName('service_sf_id').Value;
end;

procedure TfmVagonRepairAdd.N2Click(Sender: TObject);
var i : integer;
begin
//  if Application.MessageBox('Удалить выбранные строки?', 'Внимание', MB_YESNO or MB_ICONQUESTION) = ID_NO then exit;

  Client_Vagon_Repair_Table.DisableControls;

  for i:=cxGrid1DBBandedTableView1.Controller.SelectedRowCount - 1 downto 0  do begin
    if Client_Vagon_Repair_Table.Locate('fact_repair_table_id', cxGrid1DBBandedTableView1.Controller.SelectedRows[i].Values[cxGrid1DBBandedTableView1fact_repair_table_id.Index], []) then
      Client_Vagon_Repair_Table.Delete;
  end;

  Client_Vagon_Repair_Table.EnableControls;
end;

procedure TfmVagonRepairAdd.N5Click(Sender: TObject);
var
  arr : Array of Variant;
  i   : integer;
begin
  Client_Vagon_Repair_Table.DisableControls;

  SetLength(arr, Client_Vagon_Repair_Table.FieldCount);
  for i := 0 to Client_Vagon_Repair_Table.FieldCount - 1 do begin
    arr[i] := Client_Vagon_Repair_Table.Fields.Fields[i].Value;
  end;
  Client_Vagon_Repair_Table.Append;
  for i := 0 to Client_Vagon_Repair_Table.FieldCount - 1 do begin
    if   (Client_Vagon_Repair_Table.Fields.Fields[i].Name <> 'Client_Vagon_Repair_Tablefact_repair_table_id')
     and (Client_Vagon_Repair_Table.Fields.Fields[i].Name <> 'relation_table_id')
     and (Client_Vagon_Repair_Table.Fields.Fields[i].Name <> 'detail_num')
     and (Client_Vagon_Repair_Table.Fields.Fields[i].Name <> 'detail_date_begin')
     and (Client_Vagon_Repair_Table.Fields.Fields[i].Name <> 'detail_id')
    then Client_Vagon_Repair_Table.Fields.Fields[i].Value := arr[i];
  end;
  Client_Vagon_Repair_Table['relation_table_id'] := NULL;
  Client_Vagon_Repair_Table['detail_num'] := NULL;
  Client_Vagon_Repair_Table['detail_date_begin'] := NULL;
  Client_Vagon_Repair_Table['detail_id'] := NULL;
  Client_Vagon_Repair_Table.Post;
  Client_Vagon_Repair_Table.Prior;
  Client_Vagon_Repair_Table.EnableControls;
end;

procedure TfmVagonRepairAdd.SetUpdate(fact_repair_id :integer);
var Q : TADOQuery;
begin
  Screen.Cursor := crHourglass;
  Ftype_action := 1;
  Ffact_repair_id := fact_repair_id;
  Client_Vagon_Repair_Table.DisableControls;
  Q
   := TADOQuery.Create(nil);
  Q.Connection :=fmVagonRepair.ADOVagonRepair;
  Q.SQL.Add('SELECT * FROM view_fact_repair WITH (NOLOCK) WHERE fact_repair_id=' + IntToStr(Ffact_repair_id));
  Q.Open;

  cxTextEdit1.EditValue       := Q.FieldByName('score_cod').Value;
  cxDateEdit2.EditValue       := Q.FieldByName('score_date').Value;
  cxTextEdit2.EditValue       := Q.FieldByName('act_cod').Value;
  cxDateEdit_ActDate.EditValue       := Q.FieldByName('act_date').Value;
  cxLookupComboBox1.EditValue := Q.FieldByName('contract_id').Value;
  cxLookupComboBox2.EditValue := Q.FieldByName('depo_id').Value;
  cxButtonEdit2.EditValue     := Q.FieldByName('node_name').Value;
  cxButtonEdit_NodeCod.EditValue     := Q.FieldByName('node_cod').Value;
  cxCheckBox2.EditValue       := Q.FieldByName('set_block').AsBoolean;
  cxCheckBox1.EditValue       := Q.FieldByName('set_score_original').AsBoolean;
  cxCheckBox3.EditValue       := Q.FieldByName('set_act_original').AsBoolean;
  cxButtonEdit5.Text          := Q.FieldByName('kargoETSNG_name').AsString;
  cxDateEdit1.EditValue       := Q.FieldByName('doc_original_date').Value;
  cxMemo1.EditValue                := Q.FieldByName('comment').Value;

  if not VarIsNull(Q.FieldByName('kargoETSNG_id').Value) then
    FkargoETSNG_id            := Q.FieldByName('kargoETSNG_id').AsInteger;
  if not VarIsNull(Q.FieldByName('budget_id').Value) then begin
    Fbudget_id                := Q.FieldByName('budget_id').Value;
    cxButtonEdit1.Text        := Q.FieldByName('budget_name').Value;
  end;
  if not VarIsNull(Q.FieldByName('node_id').Value) then begin
    Fnode_begin_id        := Q.FieldByName('node_id').Value;
  end;

  Caption := Caption + ' [' + IntToStr(fact_repair_id) + ']';

  // -------------- Строки -------------------
  //cxGrid1DBBandedTableView1.DataController.DataSet.DisableControls;

  Q.Close;
  Q.SQL.Clear;
  Q.SQL.Add('SELECT * FROM view_fact_repair_table WITH (NOLOCK) WHERE fact_repair_id=' + IntToStr(Ffact_repair_id));
  Q.Open;
  while not Q.Eof do begin
    Client_Vagon_Repair_Table.First;
    Client_Vagon_Repair_Table.Append;
    Client_Vagon_Repair_Table['fact_repair_table_id'] := Q.FieldByName('fact_repair_table_id').Value;
    Client_Vagon_Repair_Table['service_id']           := Q.FieldByName('service_id').Value;
    Client_Vagon_Repair_Table['detail_id']            := Q.FieldByName('detail_id').Value;
    Client_Vagon_Repair_Table['detail_num']           := Q.FieldByName('detail_num').Value;
    Client_Vagon_Repair_Table['act_breakage_date']    := Q.FieldByName('act_breakage_date').Value;
    Client_Vagon_Repair_Table['detail_status_id']     := Q.FieldByName('detail_status_id').Value;
    Client_Vagon_Repair_Table['primary_docs']         := Q.FieldByName('primary_docs').Value;
    Client_Vagon_Repair_Table['primary_docs2']        := Q.FieldByName('primary_docs2').Value;
    Client_Vagon_Repair_Table['vagon_id']             := Q.FieldByName('vagon_id').Value;
    Client_Vagon_Repair_Table['rate']                 := Q.FieldByName('rate').Value;
    Client_Vagon_Repair_Table['quantity']             := Q.FieldByName('quantity').Value;
    Client_Vagon_Repair_Table['rate_nds_id']          := Q.FieldByName('rate_nds_id').Value;
    Client_Vagon_Repair_Table['sum']                  := Q.FieldByName('sum').Value;
    Client_Vagon_Repair_Table['sum_total']            := Q.FieldByName('sum_total').Value;
    Client_Vagon_Repair_Table['sum_nds']              := Q.FieldByName('sum_nds').Value;
    Client_Vagon_Repair_Table['set_vu41']             := Q.FieldByName('set_vu41').Value;
    Client_Vagon_Repair_Table['date_vu23']            := Q.FieldByName('date_vu23').Value;
    Client_Vagon_Repair_Table['str_width_truck']      := Q.FieldByName('str_width_truck').Value;
    Client_Vagon_Repair_Table['pay_num']              := Q.FieldByName('pay_num').Value;
    Client_Vagon_Repair_Table['pretenzia_num']        := Q.FieldByName('pretenzia_num').Value;
    Client_Vagon_Repair_Table['cost_contract_id']     := Q.FieldByName('cost_contract_id').Value;
    Client_Vagon_Repair_Table['comis']                := Q.FieldByName('comis').Value;
    Client_Vagon_Repair_Table['comis_pct']            := Q.FieldByName('comis_pct').Value;
    Client_Vagon_Repair_Table['owner_name']           := Q.FieldByName('owner_name').AsString;
    Client_Vagon_Repair_Table['owner_self_name']      := Q.FieldByName('owner_self_name').AsString;
    Client_Vagon_Repair_Table['service_sf_id']        := Q.FieldByName('service_sf_id').Value;
    Client_Vagon_Repair_Table['cost_contract_cod']    := Q.FieldByName('cost_contract_cod').Value;
    Client_Vagon_Repair_Table['rod_vagon_name']       := Q.FieldByName('rod_vagon_name').Value;
    Client_Vagon_Repair_Table['date_vu36']            := Q.FieldByName('date_vu36').Value;
    Client_Vagon_Repair_Table['type_mh1_id']          := Q.FieldByName('type_mh1_id').Value;
    Client_Vagon_Repair_Table['type_mh2_id']          := Q.FieldByName('type_mh2_id').Value;
    Client_Vagon_Repair_Table['date_vu23']            := Q.FieldByName('date_vu23').Value;
    Client_Vagon_Repair_Table['detail_date_begin']    := Q.FieldByName('detail_date_begin').Value;
    Client_Vagon_Repair_Table['detail_date_end']      := Q.FieldByName('detail_date_end').Value;
    Client_Vagon_Repair_Table['relation_table_id']    := Q.FieldByName('relation_table_id').Value;
    Client_Vagon_Repair_Table['repair_order']         := Q.FieldByName('repair_order').Value;
    Client_Vagon_Repair_Table['set_self_cost']        := Q.FieldByName('set_self_cost').Value;
    Client_Vagon_Repair_Table['set_cost_price']       := Q.FieldByName('set_cost_price').Value;
    Client_Vagon_Repair_Table.Post;
    Q.Next;
  end;
  //cxGrid1DBBandedTableView1.DataController.DataSet.EnableControls;
  Client_Vagon_Repair_Table.EnableControls;
  Q.Free;

  MonitorEventFormOpen('UPDATE_FORM', self.Name, fmVagonRepair.ADOVagonRepair, Ffact_repair_id);
  Screen.Cursor := crDefault;
end;

procedure TfmVagonRepairAdd.cxGrid1DBBandedTableView1CustomDrawCell(Sender: TcxCustomGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
  if AViewInfo.GridRecord.Selected or AViewInfo.GridRecord.Focused then begin
    ACanvas.Brush.Color := clNavy;
    ACanvas.Font.Color := clWhite;
    if AViewInfo.Focused then ACanvas.Brush.Color := clBlue;
  end;

  if  (AViewInfo.GridRecord.Values[cxGrid1DBBandedTableView1look_service.Index] = 917384) and  //Установлена ЗЧ
   (VarIsNULL(AViewInfo.GridRecord.Values[cxGrid1DBBandedTableView1relation_table_id.Index])) then begin
        ACanvas.Brush.Color := $00BEFFFF;
        ACanvas.Font.Color := clBlack;
  end;
end;

procedure TfmVagonRepairAdd.cxGrid1DBBandedTableView1CustomDrawColumnHeader(Sender: TcxGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxGridColumnHeaderViewInfo; var ADone: Boolean);
begin
  DrawcxGridColumnOnFocused(Sender, ACanvas, AViewInfo);
end;

procedure TfmVagonRepairAdd.cxGrid1DBBandedTableView1CustomDrawFooterCell(Sender: TcxGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxGridColumnHeaderViewInfo; var ADone: Boolean);
begin
  if AViewInfo.Column.Focused then begin
    ACanvas.Brush.Color := clNavy;
    ACanvas.Font.Color := clWhite;
  end;
end;

procedure TfmVagonRepairAdd.cxGrid1DBBandedTableView1DataControllerFilterChanged(Sender: TObject);
begin
  DrawcxGridColumnOnFiltered(Sender);
end;

procedure TfmVagonRepairAdd.cxGrid1DBBandedTableView1EditValueChanged(Sender: TcxCustomGridTableView; AItem: TcxCustomGridTableItem);
var Q : TADOQuery;
    rate_nds : integer;

    set_recalc_costcontract : boolean;
begin
  set_recalc_costcontract := False;

  //Client_Vagon_Repair_Table.DisableControls;

  rate_nds := 0;
  Query_Type_nds.Locate('rate_nds_id', Client_Vagon_Repair_Table['rate_nds_id'], []);
  if VarIsNull(Query_Type_nds.FieldByName('inf_obj_cod').Value) then  rate_nds := 0
    else rate_nds := Query_Type_nds.FieldByName('inf_obj_cod').AsInteger;
  Client_Vagon_Repair_Table.Edit;
  // при выборе № вагона
  if TcxGridDBBandedColumn(AItem).DataBinding.FieldName = 'vagon_id' then begin
    Client_Vagon_Repair_Table['vagon_id']:= TcxGridDBBandedTableView(Sender).Controller.EditingController.Edit.EditingValue;
    Query_Vagon.Locate('vagon_id', TcxGridDBBandedTableView(Sender).Controller.EditingController.Edit.EditingValue, []);
    if (not VarIsNull(Client_Vagon_Repair_Table['date_vu23'])) and (not VarIsNull(TcxGridDBBandedTableView(Sender).Controller.EditingController.Edit.EditingValue)) then begin
      Q := TADOQuery.Create(nil);
      Q.Connection := fmVagonRepair.ADOVagonRepair;
      Q.SQL.Add('SELECT dbo.func_GetVagonOwner(:vagon_id,:date_begin) as owner_name');
      Q.Parameters.ParamByName('vagon_id').Value := Client_Vagon_Repair_Table['vagon_id'];
      Q.Parameters.ParamByName('date_begin').Value := Client_Vagon_Repair_Table['date_vu23'];
      Q.Open;
      if Q.RecordCount > 0 then begin
       Client_Vagon_Repair_Table['firm_customer_name']:= Q.FieldByName('owner_name').AsString;
      end;
      Q.Free;

//      Query_Arenda.Close;
//      Query_Arenda.Parameters.ParamByName('vagon_id').Value :=  TcxGridDBBandedTableView(Sender).Controller.EditingController.Edit.EditingValue;
//      Query_Arenda.Parameters.ParamByName('date_begin').Value := Client_Vagon_Repair_Table['date_vu23'];
//      Query_Arenda.Open;
//      Client_Vagon_Repair_Table['arenda_firm_name']  := Query_Arenda.FieldByName('arenda_firm_name').Value;
    end;

    if VarIsNull(TcxGridDBBandedTableView(Sender).Controller.EditingController.Edit.EditingValue) then
      Client_Vagon_Repair_Table['firm_customer_name']:= '';
  end;

  // при выборе Даты ВУ-23
  if TcxGridDBBandedColumn(AItem).DataBinding.FieldName = 'date_vu23' then begin
    Client_Vagon_Repair_Table['date_vu23']:= TcxGridDBBandedTableView(Sender).Controller.EditingController.Edit.EditingValue;

    if not VarIsNull(TcxGridDBBandedTableView(Sender).Controller.EditingController.Edit.EditingValue) then begin
      Client_Vagon_Repair_Table['date_vu36']:= TcxGridDBBandedTableView(Sender).Controller.EditingController.Edit.EditingValue;
      // Задача от Барановой от 24.10.2018 №14914776
      Client_Vagon_Repair_Table['detail_date_begin']:= TcxGridDBBandedTableView(Sender).Controller.EditingController.Edit.EditingValue;
      //
      set_recalc_costcontract := True;
    end;

    if (not VarIsNull(Client_Vagon_Repair_Table['vagon_id'])) and (not VarIsNull(TcxGridDBBandedTableView(Sender).Controller.EditingController.Edit.EditingValue)) then begin
      Q := TADOQuery.Create(nil);
      Q.Connection := fmVagonRepair.ADOVagonRepair;
      Q.SQL.Add('SELECT dbo.func_GetVagonOwner(:vagon_id,:date_begin) as owner_name');
      Q.Parameters.ParamByName('vagon_id').Value := Client_Vagon_Repair_Table['vagon_id'];
      Q.Parameters.ParamByName('date_begin').Value := Client_Vagon_Repair_Table['date_vu23'];
      Q.Open;
      if Q.RecordCount > 0 then Client_Vagon_Repair_Table['firm_customer_name']:= Q.FieldByName('owner_name').AsString;
      Q.Free;

      Query_Arenda.Close;
      Query_Arenda.Parameters.ParamByName('vagon_id').Value := Client_Vagon_Repair_Table['vagon_id'];
      Query_Arenda.Parameters.ParamByName('date_begin').Value := TcxGridDBBandedTableView(Sender).Controller.EditingController.Edit.EditingValue;
      Query_Arenda.Open;
      Client_Vagon_Repair_Table['arenda_firm_name']  := Query_Arenda.FieldByName('arenda_firm_name').Value;
    end;
  end;

  // при выборе количества
  if TcxGridDBBandedColumn(AItem).DataBinding.FieldName = 'quantity' then begin
    Client_Vagon_Repair_Table['quantity']  := TcxGridDBBandedTableView(Sender).Controller.EditingController.Edit.EditingValue;
    Client_Vagon_Repair_Table['sum']       := RoundCurr(TcxGridDBBandedTableView(Sender).Controller.EditingController.Edit.EditingValue * cxGrid1DBBandedTableView1rate.DataBinding.Field.AsCurrency, -2);
    Client_Vagon_Repair_Table['sum_nds']   := RoundCurr(TcxGridDBBandedTableView(Sender).Controller.EditingController.Edit.EditingValue * cxGrid1DBBandedTableView1rate.DataBinding.Field.AsCurrency * rate_nds/100,-2);
    Client_Vagon_Repair_Table['sum_total'] := RoundCurr(TcxGridDBBandedTableView(Sender).Controller.EditingController.Edit.EditingValue * cxGrid1DBBandedTableView1rate.DataBinding.Field.AsCurrency, -2) +  RoundCurr(TcxGridDBBandedTableView(Sender).Controller.EditingController.Edit.EditingValue * cxGrid1DBBandedTableView1rate.DataBinding.Field.AsCurrency * rate_nds/100,-2);
    Client_Vagon_Repair_Table['comis']     := RoundCurr(cxGrid1DBBandedTableView1sum_total.DataBinding.Field.AsCurrency*(cxGrid1DBBandedTableView1comis_pct.DataBinding.Field.AsCurrency/100), -2);
  end;

  // при выборе цены
  if TcxGridDBBandedColumn(AItem).DataBinding.FieldName = 'rate' then begin
    Client_Vagon_Repair_Table['rate']      := TcxGridDBBandedTableView(Sender).Controller.EditingController.Edit.EditingValue;
    Client_Vagon_Repair_Table['sum']       := RoundCurr(TcxGridDBBandedTableView(Sender).Controller.EditingController.Edit.EditingValue * cxGrid1DBBandedTableView1quantity.DataBinding.Field.AsFloat, -2);
    Client_Vagon_Repair_Table['sum_nds']   := RoundCurr(TcxGridDBBandedTableView(Sender).Controller.EditingController.Edit.EditingValue * cxGrid1DBBandedTableView1quantity.DataBinding.Field.AsFloat * rate_nds/100,-2);
    Client_Vagon_Repair_Table['sum_total'] := RoundCurr(TcxGridDBBandedTableView(Sender).Controller.EditingController.Edit.EditingValue * cxGrid1DBBandedTableView1quantity.DataBinding.Field.AsFloat, -2) +  RoundCurr(TcxGridDBBandedTableView(Sender).Controller.EditingController.Edit.EditingValue * cxGrid1DBBandedTableView1quantity.DataBinding.Field.AsFloat * rate_nds/100,-2);
    Client_Vagon_Repair_Table['comis']     := RoundCurr(cxGrid1DBBandedTableView1sum_total.DataBinding.Field.AsCurrency*(cxGrid1DBBandedTableView1comis_pct.DataBinding.Field.AsCurrency/100), -2);
  end;

  // при выборе ставки НДС
  if TcxGridDBBandedColumn(AItem).DataBinding.FieldName = 'rate_nds_id' then begin
    rate_nds := 0;
    Query_Type_nds.Locate('rate_nds_id', TcxGridDBBandedTableView(Sender).Controller.EditingController.Edit.EditingValue, []);
    if VarIsNull(Query_Type_nds.FieldByName('inf_obj_cod').Value) then  rate_nds := 0
      else rate_nds := Query_Type_nds.FieldByName('inf_obj_cod').AsInteger;
    if VarIsNull(TcxGridDBBandedTableView(Sender).Controller.EditingController.Edit.EditingValue) then  begin
      Client_Vagon_Repair_Table['rate_nds_id']  := Null;
      Client_Vagon_Repair_Table['sum_nds']   := Null;
      Client_Vagon_Repair_Table['sum_total'] := cxGrid1DBBandedTableView1sum.DataBinding.Field.AsCurrency;
      Client_Vagon_Repair_Table['comis']     := RoundCurr(cxGrid1DBBandedTableView1sum_total.DataBinding.Field.AsCurrency*(cxGrid1DBBandedTableView1comis_pct.DataBinding.Field.AsCurrency/100), -2);
    end else begin
      Client_Vagon_Repair_Table['rate_nds_id']  := TcxGridDBBandedTableView(Sender).Controller.EditingController.Edit.EditingValue;
      Client_Vagon_Repair_Table['sum']       := RoundCurr(cxGrid1DBBandedTableView1rate.DataBinding.Field.AsCurrency * cxGrid1DBBandedTableView1quantity.DataBinding.Field.AsFloat, -2);
      Client_Vagon_Repair_Table['sum_nds']   := RoundCurr(cxGrid1DBBandedTableView1rate.DataBinding.Field.AsCurrency * cxGrid1DBBandedTableView1quantity.DataBinding.Field.AsFloat * rate_nds/100, -2);
      Client_Vagon_Repair_Table['sum_total'] := RoundCurr(cxGrid1DBBandedTableView1rate.DataBinding.Field.AsCurrency * cxGrid1DBBandedTableView1quantity.DataBinding.Field.AsFloat, -2) +  RoundCurr(cxGrid1DBBandedTableView1rate.DataBinding.Field.AsCurrency * cxGrid1DBBandedTableView1quantity.DataBinding.Field.AsFloat * rate_nds/100,-2);
      Client_Vagon_Repair_Table['comis']     := RoundCurr(cxGrid1DBBandedTableView1sum_total.DataBinding.Field.AsCurrency*(cxGrid1DBBandedTableView1comis_pct.DataBinding.Field.AsCurrency/100), -2);
     if rate_nds = 0 then Client_Vagon_Repair_Table['sum_total'] := cxGrid1DBBandedTableView1sum.DataBinding.Field.AsCurrency;
    end;
  end;

  // при выборе Контрагент (рсходы)
  if TcxGridDBBandedColumn(AItem).DataBinding.FieldName = 'cost_contract_id' then begin
    Client_Vagon_Repair_Table['cost_contract_id']:= TcxGridDBBandedTableView(Sender).Controller.EditingController.Edit.EditingValue;
    Query_Cost_Contract.Locate('contract_id', TcxGridDBBandedTableView(Sender).Controller.EditingController.Edit.EditingValue, []);
    Client_Vagon_Repair_Table['cost_contract_cod']:= Query_Cost_Contract.FieldByName('contract_cod').Value;
//    if (Query_Cost_Contract.FieldByName('contract_cod').Value = 'Собственные вагоны')
//      or (Query_Cost_Contract.FieldByName('contract_cod').Value = 'Арендованные вагоны')
//      or (Query_Cost_Contract.FieldByName('contract_cod').Value = 'собственные расходы') then
    // Client_Vagon_Repair_Table['set_self_cost']:= True;
  end;

  // при изменениии услуги
  if TcxGridDBBandedColumn(AItem).DataBinding.FieldName = 'service_id' then begin
    Client_Vagon_Repair_Table['service_id']  := TcxGridDBBandedTableView(Sender).Controller.EditingController.Edit.EditingValue;
    if Query_Service.Locate('inf_obj_id', TcxGridDBBandedTableView(Sender).Controller.EditingController.Edit.EditingValue, []) then begin
      if (Query_Service.FieldByName('inf_obj_cod').AsString = '5') or (Query_Service.FieldByName('inf_obj_cod').AsString = '6') or (Query_Service.FieldByName('inf_obj_cod').AsString = '4') then begin
        Client_Vagon_Repair_Table['detail_id']  := NULL;
      end;
    end;
    Client_Vagon_Repair_Table['relation_table_id'] := NULL;
   // Client_Vagon_Repair_Table['detail_status_id']  := NULL;
    Client_Vagon_Repair_Table['detail_id']         := NULL;
    Client_Vagon_Repair_Table['detail_date_begin'] := NULL;
    Client_Vagon_Repair_Table['detail_date_end']   := NULL;
  end;

    // при изменениии детали
  if TcxGridDBBandedColumn(AItem).DataBinding.FieldName = 'detail_id' then begin
    Client_Vagon_Repair_Table['detail_id']  := TcxGridDBBandedTableView(Sender).Controller.EditingController.Edit.EditingValue;
    // Query_Detail.Locate('inf_obj_id', Client_Vagon_Repair_Table['detail_id'], []);
    //if Query_Detail.FieldByName('inf_obj_cod').AsString[1] = '7' then begin
    //     if Query_Detail_Status.Locate('inf_obj_cod', '3', []) then
    //       Client_Vagon_Repair_Table['detail_status_id'] := Query_Detail_Status.FieldByName('inf_obj_id').Value;
    //    end else Client_Vagon_Repair_Table['detail_status_id'] := NULL;
    //    Client_Vagon_Repair_Table['detail_num'] := NULL;
    Client_Vagon_Repair_Table['relation_table_id'] := NULL;
  end;

  // при выборе % вознаграждения
  if TcxGridDBBandedColumn(AItem).DataBinding.FieldName = 'comis_pct' then begin
   if not VarIsNull(TcxGridDBBandedTableView(Sender).Controller.EditingController.Edit.EditingValue) then  begin
     Client_Vagon_Repair_Table['comis_pct']  := TcxGridDBBandedTableView(Sender).Controller.EditingController.Edit.EditingValue;
     Client_Vagon_Repair_Table['comis']       := RoundCurr(cxGrid1DBBandedTableView1sum_total.DataBinding.Field.AsCurrency*(TcxGridDBBandedTableView(Sender).Controller.EditingController.Edit.EditingValue/100), -2);
   end;
  end;

  // Изменение Даты ВУ-36
  if TcxGridDBBandedColumn(AItem).DataBinding.FieldName = 'date_vu36' then begin
    set_recalc_costcontract := True;
    Client_Vagon_Repair_Table['date_vu36']:= TcxGridDBBandedTableView(Sender).Controller.EditingController.Edit.EditingValue;
  end;
  // Изменение Вагона
  if TcxGridDBBandedColumn(AItem).DataBinding.FieldName = 'vagon_id' then begin
    set_recalc_costcontract := True;
    Client_Vagon_Repair_Table['vagon_id']:= TcxGridDBBandedTableView(Sender).Controller.EditingController.Edit.EditingValue;
  end;

  // Поиск Клиента (расход)
  if set_recalc_costcontract then begin
    Q := TADOQuery.Create(nil);
    Q.Connection := fmVagonRepair.ADOVagonRepair;
    Q.SQL.Add('SELECT dbo.func_GetVagonRepairCostContract(:vagon_id, :date_begin) as cost_contract_id');
    Q.Parameters.ParamByName('vagon_id').DataType := ftInteger;
    Q.Parameters.ParamByName('vagon_id').Value := Client_Vagon_Repair_Table['vagon_id'];
    Q.Parameters.ParamByName('date_begin').DataType := ftDate;
    Q.Parameters.ParamByName('date_begin').Value := Client_Vagon_Repair_Table['date_vu36'];
    Q.Open;
    if not Q.FieldByName('cost_contract_id').IsNull then begin
      Query_Cost_Contract.Locate('contract_id', Q.FieldByName('cost_contract_id').Value, []);
      Client_Vagon_Repair_Table['cost_contract_id']  := Q.FieldByName('cost_contract_id').Value;
      Client_Vagon_Repair_Table['cost_contract_cod'] := Query_Cost_Contract.FieldByName('contract_cod').Value;
    end else begin
      Client_Vagon_Repair_Table['cost_contract_id']  := null;
      Client_Vagon_Repair_Table['cost_contract_cod'] := null;
    end;
    Q.Free;
  end;

  cxGrid1DBBandedTableView1.Controller.EditingController.ShowEdit;

  if (Client_Vagon_Repair_Table.State <> dsEdit) or (Client_Vagon_Repair_Table.State <> dsInsert) then Client_Vagon_Repair_Table.Edit;
  Client_Vagon_Repair_Table.Post;

  //Client_Vagon_Repair_Table.EnableControls;
end;

procedure TfmVagonRepairAdd.cxGrid1DBBandedTableView1FocusedItemChanged(Sender: TcxCustomGridTableView; APrevFocusedItem,AFocusedItem: TcxCustomGridTableItem);
begin
  cxGrid1DBBandedTableView1.Painter.Invalidate;
end;

procedure TfmVagonRepairAdd.cxGrid1DBBandedTableView1FocusedRecordChanged(Sender: TcxCustomGridTableView; APrevFocusedRecord, AFocusedRecord: TcxCustomGridRecord; ANewItemRecordFocusingChanged: Boolean);
begin
  if (AFocusedRecord <> nil) and (APrevFocusedRecord <> nil) then  begin
//    if (Client_Vagon_Repair_Table.State <> dsEdit) or (Client_Vagon_Repair_Table.State <> dsInsert) then Client_Vagon_Repair_Table.Edit;
//    Client_Vagon_Repair_Table.Post;

    if Query_Service.Locate('inf_obj_id', cxGrid1DBBandedTableView1look_service.DataBinding.Field.AsInteger, []) then begin
      if ((Query_Service.FieldByName('inf_obj_cod').AsString = '5') OR (Query_Service.FieldByName('inf_obj_cod').AsString = '4')) and (not VarIsNull(Client_Vagon_Repair_Table['detail_date_end'])) then begin
        cxGrid1DBBandedTableView1look_service.Options.Editing        := False;
        cxGrid1DBBandedTableView1look_detail.Options.Editing         := False;
        cxGrid1DBBandedTableView1look_detail_status.Options.Editing  := False;
        cxGrid1DBBandedTableView1detail_num.Options.Editing        := False;
      end else begin
        cxGrid1DBBandedTableView1look_service.Options.Editing        := True;
        cxGrid1DBBandedTableView1look_detail.Options.Editing         := True;
        cxGrid1DBBandedTableView1look_detail_status.Options.Editing  := True;
        cxGrid1DBBandedTableView1detail_num.Options.Editing        := True;
      end;

      if (Query_Service.FieldByName('inf_obj_cod').AsString = '6') then begin
        cxGrid1DBBandedTableView1detail_num.Properties.ReadOnly := True;
        cxGrid1DBBandedTableView1look_detail_status.Options.Editing  := False;
      end else begin
        cxGrid1DBBandedTableView1detail_num.Properties.ReadOnly := False;
        cxGrid1DBBandedTableView1look_detail_status.Options.Editing  := True;
      end;

    end else begin
        cxGrid1DBBandedTableView1look_service.Options.Editing        := True;
        cxGrid1DBBandedTableView1look_detail.Options.Editing         := True;
        cxGrid1DBBandedTableView1look_detail_status.Options.Editing  := True;
        cxGrid1DBBandedTableView1detail_num.Options.Editing        := True;
    end;
  end;
end;

procedure TfmVagonRepairAdd.PropertiesEditValueChanged(Sender: TObject);
begin
  if (Client_Vagon_Repair_Table.State <> dsEdit) OR (Client_Vagon_Repair_Table.State <> dsInsert) then Client_Vagon_Repair_Table.Edit;
end;

procedure TfmVagonRepairAdd.RefreshDataSetGrid();
begin
  Client_Vagon_Repair_Table.EmptyDataSet;
  Client_Vagon_Repair_Table.Close;
  Client_Vagon_Repair_Table.Open;
  Client_Vagon_Repair_Table.LogChanges := False;
  SetUpdate(Ffact_repair_id);
end;

procedure TfmVagonRepairAdd.dxBarButton4Click(Sender: TObject);
begin
  RefreshDataSetGrid;
end;

procedure TfmVagonRepairAdd.dxBarButton5Click(Sender: TObject);
var Q  : TADOQuery;
begin
  if not VarIsNull(Client_Vagon_Repair_Table.FieldByName('fact_repair_table_id').Value) then begin
    Screen.Cursor := crHourglass;
    Q := TADOQuery.Create(nil);
    Q.Connection := fmVagonRepair.ADOVagonRepair;
    Q.SQL.Add('UPDATE fact_repair_table SET detail_num = ' + QuotedStr(Client_Vagon_Repair_Table.FieldByName('detail_num').AsString));
    Q.SQL.Add('WHERE fact_repair_table_id = ' + Client_Vagon_Repair_Table.FieldByName('fact_repair_table_id').AsString);
    try
      Q.ExecSQL;
    except begin
      Q.Free;
      Screen.Cursor := crDefault;
    end;
    end;
    Screen.Cursor := crDefault;
    Q.Free;
  end;
end;

procedure TfmVagonRepairAdd.dxBarButton6Click(Sender: TObject);
Var   VagonSQL : string;
 StrFactTechId : string;
         Q, Q1 : TADOQuery;
begin
  Q := TADOQuery.Create(nil);
  Q.Connection := fmVagonRepair.ADOVagonRepair;
  Q.SQL.Add('SELECT * FROM VIEW_FACT_TECH WITH (NOLOCK)');
  Q.SQL.Add('WHERE (NOT vagon_id IS NULL) AND (users_group_id =:users_group_id)');
  Q.SQL.Add('AND (station_detaching_id = :station_detaching_id) AND (date_repare_end >=:act_date)');
  Q.Parameters.ParamByName('users_group_id').Value := Fusr_pwd.user_group_id;
  Q.Parameters.ParamByName('station_detaching_id').Value := Fnode_begin_id;
  Q.Parameters.ParamByName('act_date').Value := cxDateEdit2.EditValue;
  Q.Open;

  fmFilter := TfmFilter.Create(0, Q, 'fact_tech_id', 'num_vagon' ,'station_detaching_name');

  fmFilter._SetChooseFactTech := True;
  if fmFilter.ShowModal=mrOk then begin
    StrFactTechId := fmFilter._GetStrId;
  end else exit;

  if StrFactTechId = '' then exit;

  Q.Close;
  Q.SQL.Clear;
  Q.SQL.Text := 'SELECT * FROM VIEW_FACT_TECH WITH (NOLOCK) WHERE fact_tech_id in ('+ StrFactTechId +')';
  Q.Open;

  if Q.RecordCount = 0 then exit;

  while not Q.Eof do begin
    Client_Vagon_Repair_Table.Append;
    Client_Vagon_Repair_Table['vagon_id']   := Q.FieldByName('vagon_id').Value;
    Client_Vagon_Repair_Table['date_vu23']  := Q.FieldByName('date_breakage').Value;
    Client_Vagon_Repair_Table['date_vu36']  := Q.FieldByName('date_repare_end').Value;
    Client_Vagon_Repair_Table['arenda_firm_name']  := Q.FieldByName('arenda_firm_name').Value;
    Client_Vagon_Repair_Table['firm_customer_name']:= Q.FieldByName('firm_name').Value;
    Client_Vagon_Repair_Table['set_vu41']  := 0;
    Client_Vagon_Repair_Table['rate_nds_id']  := Query_Type_nds.FieldByName('rate_nds_id').Value;
    Client_Vagon_Repair_Table['set_self_cost']   := True;
    Client_Vagon_Repair_Table['set_cost_price']  := True;

    // Поиск Клиента (расход)
    Q1 := TADOQuery.Create(nil);
    Q1.Connection := fmVagonRepair.ADOVagonRepair;
    Q1.SQL.Add('SELECT dbo.func_GetVagonRepairCostContract(:vagon_id, :date_begin) as cost_contract_id');
    Q1.Parameters.ParamByName('vagon_id').DataType := ftInteger;
    Q1.Parameters.ParamByName('vagon_id').Value := Client_Vagon_Repair_Table['vagon_id'];
    Q1.Parameters.ParamByName('date_begin').DataType := ftDate;
    Q1.Parameters.ParamByName('date_begin').Value := Client_Vagon_Repair_Table['date_vu36'];
    Q1.Open;
    if not Q1.FieldByName('cost_contract_id').IsNull then begin
      Query_Cost_Contract.Locate('contract_id', Q1.FieldByName('cost_contract_id').Value, []);
      Client_Vagon_Repair_Table['cost_contract_id']  := Q1.FieldByName('cost_contract_id').Value;
      Client_Vagon_Repair_Table['cost_contract_cod'] := Query_Cost_Contract.FieldByName('contract_cod').Value;
    end else begin
      Client_Vagon_Repair_Table['cost_contract_id']  := null;
      Client_Vagon_Repair_Table['cost_contract_cod'] := null;
    end;
    Q1.Free;

    Client_Vagon_Repair_Table.Post;
    Q.Next;
  end;
end;

procedure TfmVagonRepairAdd.dxBarButton_ClearDateVagonDepotArrivalClick(Sender: TObject);
var
  i: integer;
begin
  if cxGrid1DBBandedTableView1.Controller.SelectedRecordCount < 1 then Exit;
  cxGrid1DBBandedTableView1.BeginUpdate;
  try
    for i := 0 to cxGrid1DBBandedTableView1.Controller.SelectedRecordCount - 1 do begin
      ShowTextMessage(Format('Обновление дат. %d из %d', [i,
        cxGrid1DBBandedTableView1.Controller.SelectedRecordCount]), False);
      UpdateVagonDepotArrivalDate(cxGrid1DBBandedTableView1.Controller.SelectedRecords[i].RecordIndex, NULL);
    end;
  finally
    cxGrid1DBBandedTableView1.EndUpdate;
    ShowTextMessage;
  end;
end;

procedure TfmVagonRepairAdd.UpdateVagonDepotArrivalDate(row_id: integer; date: variant);
begin
    Client_Vagon_Repair_Table.Locate('fact_repair_table_id',
      cxGrid1DBBandedTableView1.DataController.Values[row_id, cxGrid1DBBandedTableView1fact_repair_table_id.Index], []);
    Client_Vagon_Repair_Table.Edit;
    Client_Vagon_Repair_Table.FieldByName('date_vagon_depot_arrival').Value := date;
    Client_Vagon_Repair_Table.Post;
end;

procedure TfmVagonRepairAdd.dxBarButton_SetDateVagonDepotArrivalClick(Sender: TObject);
type
  TFunc = function(AppHand: THandle; usr_pwd: PUser_pwd): variant;
var
  FFactTrack: TFunc;
  handle: THandle;
  num_vagon, res: variant;
  i: integer;
  SP: TADOStoredProc;
  Q: TADOQuery;
  r_idx: integer;
  do_all: boolean;
begin
  if cxGrid1DBBandedTableView1.Controller.SelectedRecordCount < 1 then Exit;

  do_all := False;

  SP := TADOStoredProc.Create(nil);
  cxGrid1DBBandedTableView1.BeginUpdate;
  try
    SP.Connection := fmVagonRepair.ADOVagonRepair;
    SP.ProcedureName := 'sp_fact_repair_get_vagon_depot_arrival_date';
    SP.Parameters.Refresh;

    for i := 0 to cxGrid1DBBandedTableView1.Controller.SelectedRecordCount - 1 do begin
      ShowTextMessage(Format('Обновление дат. %d из %d', [i,
        cxGrid1DBBandedTableView1.Controller.SelectedRecordCount]), False);
      r_idx := cxGrid1DBBandedTableView1.Controller.SelectedRecords[i].RecordIndex;


      num_vagon := Query_Vagon.Lookup( 'vagon_id',
        cxGrid1DBBandedTableView1.DataController.Values[r_idx, cxGrid1DBBandedTableView1look_num_vagon.Index],
        'num_vagon');

      if SP.Active then
        SP.Close;

      SP.Parameters.ParamByName('@num_vagon').Value := num_vagon;
      SP.Parameters.ParamByName('@from_date').Value := cxDateEdit_ActDate.EditValue;
      SP.Parameters.ParamByName('@node_repair_cod').Value := cxButtonEdit_NodeCod.EditValue;

      SP.Open;
      //Если дат нет
      if SP.IsEmpty then begin
        //Если это последний вагон в списке (или всего 1 вагон), тогда просто сообщим о том что дата не найдена
        if i = (cxGrid1DBBandedTableView1.Controller.SelectedRecordCount - 1) then
          Application.MessageBox(PChar(
            'По вагону №' + VarToStr(num_vagon) + ' не найдено ни одной даты.'), 'Внимание!', MB_OK + MB_ICONWARNING + MB_TOPMOST + MB_APPLMODAL)

        //Если вагонов больше, то спросим нужно ли продолжать и если нет, тогда выйдем из цикла.
        else if not do_all then begin
          case MessageDlg( 'По вагону №' + VarToStr(num_vagon) + ' не найдено ни одной даты.' +#13#10
              + 'Продолжать выполнение?', mtConfirmation, [mbYes, mbYesToAll ,mbCancel], 0) of
            mrYes: Continue;
            mrYesToAll: begin do_all := True; Continue; end;
            mrCancel: Break;
          end;
        end else
          Continue;
      //Если дат больше 1
      end else if SP.RecordCount > 1 then begin
        case Application.MessageBox(PChar(
            'По вагону №' + VarToStr(num_vagon) + ' надено более одной даты.' +#13#10
            + 'Выбрать из списка?' +#13#10
            + '(Да - выбрать дату; Нет - пропустить вагон; Отмена - завершить выполнение)'
          ), 'Уточнение', MB_YESNOCANCEL + MB_ICONQUESTION + MB_TOPMOST + MB_APPLMODAL) of
          ID_YES:begin
            //Выбрать из списка дислокаций.
            Application.MessageBox('Функция в разработке.', 'Внимание', MB_OK + MB_ICONWARNING);
          end;
          ID_NO: Continue;
          ID_CANCEL: Break;
        end;
      //Если дата 1
      end else
        //Выполним обновление
        UpdateVagonDepotArrivalDate(r_idx, SP['date_pr']);
    end;
  finally
    SP.Free;
    cxGrid1DBBandedTableView1.EndUpdate;
    ShowTextMessage;
  end;
end;

procedure TfmVagonRepairAdd.SetFactRepairTable_id(fact_repair_table_id: integer);
begin
  Client_Vagon_Repair_Table.Locate('fact_repair_table_id', fact_repair_table_id, [loCaseinsensitive]);
  //if cxGrid1DBBandedTableView1.DataController.LocateByKey(fact_repair_table_id) = False then cxGrid1DBBandedTableView1.Controller.GoToFirst;;
  if cxGrid1DBBandedTableView1.Controller.FocusedRecord <> nil then  cxGrid1DBBandedTableView1.Controller.FocusedRecord.Selected := True;
end;

procedure TfmVagonRepairAdd.dxBarButton7Click(Sender: TObject);
type
  TFunc = function(AppHand:THandle) : Variant;
var                List : TStringList;
                      i : integer;
                   FDic : TFunc;
                 handle : THandle;
                      v : Variant;
                    str : string;
                      Q : TADOQuery;
begin
  handle := LoadLibrary('dictionary.dll');
  @FDic := GetProcAddress(handle, 'CreateWndChoose');
  v := FDic(Application.Handle);
  FreeLibrary(handle);

  str := v[0];
  if str  = '' then exit;


  List := TStringList.Create;
  List.Text := str;

  Screen.Cursor := crHourglass;

  Q := TADOQuery.Create(nil);
  Q.Connection := fmVagonRepair.ADOVagonRepair;
  Q.SQL.Add('SELECT num_vagon, vagon_id');
  Q.SQL.Add('FROM vagon LEFT OUTER JOIN');
  Q.SQL.Add('global_id ON VAGON.vagon_id = GLOBAL_ID.global_id LEFT OUTER JOIN');
  Q.SQL.Add('USERS ON USERS.users_id = GLOBAL_ID.users_owner');
  Q.SQL.Add('WHERE users_group_id = :users_group_id');
  Q.SQL.Add('AND num_vagon IN ('+  List.DelimitedText +')');
  Q.Parameters.ParamByName('users_group_id').Value := Fusr_pwd.user_group_id;
  Q.Open;

  Client_Vagon_Repair_Table.DisableControls;
  for i := 0 to List.Count - 1 do if (Trim(List.Strings[i])<>'') then begin
    Client_Vagon_Repair_Table.Append;
    Client_Vagon_Repair_Table.Edit;
    if  Q.Locate('num_vagon', List.Strings[i], []) then Client_Vagon_Repair_Table.FieldByName('vagon_id').Value := Q.FieldByName('vagon_id').Value
    else Client_Vagon_Repair_Table.FieldByName('primary_docs').Value := List.Strings[i];

    Client_Vagon_Repair_Table.FieldByName('quantity').Value    := 1;
    Client_Vagon_Repair_Table.FieldByName('rate_nds_id').Value := Query_Type_nds.FieldByName('rate_nds_id').Value;
    Client_Vagon_Repair_Table.Post;

    ShowTextMessage('Осталось ' + IntToStr(List.Count - i) + ' вагонов...', False);
  end;
  Client_Vagon_Repair_Table.EnableControls;
  Q.Free;
  List.Free;
  ShowTextMessage();

  Screen.Cursor := crDefault;
end;

procedure TfmVagonRepairAdd.dxBarButton9Click(Sender: TObject);
type
  TFunc = function(AppHand:THandle) : Variant;
var  List : TStringList;
        i : integer;
     FDic : TFunc;
   handle : THandle;
        v : Variant;
      str : string;
        Q : TADOQuery;
begin
  handle := LoadLibrary('dictionary.dll');
  @FDic := GetProcAddress(handle, 'CreateWndChoose');
  v := FDic(Application.Handle);
  FreeLibrary(handle);

  str := v[0];
  if str = '' then exit;

  List := TStringList.Create;
  List.Text := str;

  Screen.Cursor := crHourglass;
  Q := TADOQuery.Create(nil);
  Q.Connection := fmVagonRepair.ADOVagonRepair;
  Q.SQL.Add('SELECT num_vagon, vagon_id');
  Q.SQL.Add('FROM vagon LEFT OUTER JOIN');
  Q.SQL.Add('global_id ON VAGON.vagon_id = GLOBAL_ID.global_id LEFT OUTER JOIN');
  Q.SQL.Add('USERS ON USERS.users_id = GLOBAL_ID.users_owner');
  Q.SQL.Add('WHERE users_group_id = :users_group_id');
  Q.SQL.Add('AND num_vagon IN ('+  List.DelimitedText +')');
  Q.Parameters.ParamByName('users_group_id').Value := Fusr_pwd.user_group_id;
  Q.Open;

  Client_Vagon_Repair_Table.DisableControls;
  for i := 0 to List.Count - 1 do if (Trim(List.Strings[i])<>'') then begin
    if i <= Client_Vagon_Repair_Table.RecordCount then begin
      Client_Vagon_Repair_Table.RecNo := i+1;
      if  Q.Locate('num_vagon', List.Strings[i], []) then begin
        Client_Vagon_Repair_Table.Edit;
        Client_Vagon_Repair_Table.FieldByName('vagon_id').Value := Q.FieldByName('vagon_id').Value;
        Client_Vagon_Repair_Table.Post
      end else begin
        Client_Vagon_Repair_Table.Edit;
        Client_Vagon_Repair_Table.FieldByName('vagon_id').Value := NULL;
        Client_Vagon_Repair_Table.FieldByName('primary_docs').Value := List.Strings[i];
        Client_Vagon_Repair_Table.Post;
      end;
    end;
    ShowTextMessage('Осталось ' + IntToStr(List.Count - i) + ' вагонов...', False);
  end;
  Client_Vagon_Repair_Table.EnableControls;
  List.Free;
  Q.Free;
  ShowTextMessage();

  Screen.Cursor := crDefault;
end;


procedure TfmVagonRepairAdd.dxBarButton8Click(Sender: TObject);
var        i : integer;
   col_index : integer;
   str, str1 : string;
  field_name : string;
         val : variant;
         Q1  : TADOQuery;
    rate_nds : integer;
begin
  field_name := TcxGridDBBandedColumn(cxGrid1DBBandedTableView1.VisibleColumns[cxGrid1DBBandedTableView1.Controller.FocusedItemIndex]).DataBinding.FieldName;
  col_index := cxGrid1DBBandedTableView1.VisibleColumns[cxGrid1DBBandedTableView1.Controller.FocusedItemIndex].Index;
  str := cxGrid1DBBandedTableView1.VisibleColumns[cxGrid1DBBandedTableView1.Controller.FocusedItemIndex].Caption;
  str1 := cxGrid1DBBandedTableView1.Controller.FocusedRow.DisplayTexts[col_index];
  val := cxGrid1DBBandedTableView1.Controller.FocusedRow.Values[col_index];

  if (field_name = 'rate_nds_id')  then begin
    rate_nds := 0;
    Query_Type_nds.Locate('rate_nds_id', val, []);
    if VarIsNull(Query_Type_nds.FieldByName('inf_obj_cod').Value) then  rate_nds := 0
      else rate_nds := Query_Type_nds.FieldByName('inf_obj_cod').AsInteger;
  end;

  if Application.MessageBox(PChar('Заполнить выделенные строки колонки "' + str + '" значением: ' + #13#10 + '"' + str1 + '"'), 'Внимание', MB_OKCANCEL) = ID_OK then begin
    for i := 0 to cxGrid1DBBandedTableView1.Controller.SelectedRowCount - 1 do begin
      ShowTextMessage('Осталось ' + IntToStr(cxGrid1DBBandedTableView1.Controller.SelectedRowCount - i) + ' записей...', False);
//      Client_Vagon_Repair_Table.Locate('fact_repair_table_id',cxGrid1DBBandedTableView1.Controller.SelectedRows[i].Values[cxGrid1DBBandedTableView1fact_repair_table_id.Index],[]);
      cxGrid1DBBandedTableView1.Controller.SelectedRows[i].Focused := True;
      cxGrid1DBBandedTableView1.Controller.SelectedRows[i].Values[col_index] := val;
      Client_Vagon_Repair_Table.Edit;
      Client_Vagon_Repair_Table[field_name] := val;

      if (field_name = 'rate_nds_id')  then begin
       Client_Vagon_Repair_Table['sum_nds']   := RoundCurr(Client_Vagon_Repair_Table['rate'] * Client_Vagon_Repair_Table['quantity'] * rate_nds/100, -2);
       Client_Vagon_Repair_Table['sum_total'] := RoundCurr(Client_Vagon_Repair_Table['rate'] * Client_Vagon_Repair_Table['quantity'], -2) +  RoundCurr(Client_Vagon_Repair_Table['rate'] * Client_Vagon_Repair_Table['quantity'] * rate_nds/100,-2);
       if not VarIsNull(Client_Vagon_Repair_Table['comis_pct']) then
        Client_Vagon_Repair_Table['comis']     := RoundCurr(Client_Vagon_Repair_Table['sum_total']*(Client_Vagon_Repair_Table['comis_pct']/100), -2);
      end;

      if (field_name = 'date_vu36') or (field_name = 'vagon_id') then begin
        // Поиск Клиента (расход)
        Q1 := TADOQuery.Create(nil);
        Q1.Connection := fmVagonRepair.ADOVagonRepair;
        Q1.SQL.Add('SELECT dbo.func_GetVagonRepairCostContract(:vagon_id, :date_begin) as cost_contract_id');
        Q1.Parameters.ParamByName('vagon_id').DataType := ftInteger;
        Q1.Parameters.ParamByName('vagon_id').Value := Client_Vagon_Repair_Table['vagon_id'];
        Q1.Parameters.ParamByName('date_begin').DataType := ftDate;
        Q1.Parameters.ParamByName('date_begin').Value := Client_Vagon_Repair_Table['date_vu36'];
        Q1.Open;
        if not Q1.FieldByName('cost_contract_id').IsNull then begin
          Query_Cost_Contract.Locate('contract_id', Q1.FieldByName('cost_contract_id').Value, []);
          Client_Vagon_Repair_Table['cost_contract_id']  := Q1.FieldByName('cost_contract_id').Value;
          Client_Vagon_Repair_Table['cost_contract_cod'] := Query_Cost_Contract.FieldByName('contract_cod').Value;
        end else begin
          Client_Vagon_Repair_Table['cost_contract_id']  := null;
          Client_Vagon_Repair_Table['cost_contract_cod'] := null;
        end;
        Q1.Free;
      end;

      Client_Vagon_Repair_Table.Post;
    end;
    ShowTextMessage();
  end;

end;

procedure TfmVagonRepairAdd.PopupMenu1Popup(Sender: TObject);
begin
  dxBarButton8.Caption :=  'Заполнить значения в колонке " '+
                           cxGrid1DBBandedTableView1.VisibleColumns[cxGrid1DBBandedTableView1.Controller.FocusedItemIndex].Caption;
end;

procedure TfmVagonRepairAdd.SetCreateByStr(str_fact_repair_table_id: string);
var Q, Q1 : TADOQuery;
begin
  Screen.Cursor := crHourglass;
  Ftype_action := 0;
  Ffact_repair_id := -9;

  Q := TADOQuery.Create(nil);
  Q.Connection :=fmVagonRepair.ADOVagonRepair;

  Caption := Caption + ' [Новая запись]';
// -------------- Строки -------------------

  cxGrid1DBBandedTableView1.DataController.DataSet.DisableControls;

  Q.SQL.Add('SELECT *  , dbo.func_GetVagonOwner(vagon_id, date_vu23) AS owner_name  FROM view_fact_repair_table WITH (NOLOCK) WHERE fact_repair_table_id in (' + str_fact_repair_table_id + ')');
  Q.Open;

  cxLookupComboBox1.EditValue := Q.FieldByName('contract_id').Value;
  cxLookupComboBox2.EditValue := Q.FieldByName('depo_id').Value;

  while not Q.Eof do begin
    Client_Vagon_Repair_Table.First;
    Client_Vagon_Repair_Table.Append;
    Client_Vagon_Repair_Table['fact_repair_table_id'] := NULL;
    Client_Vagon_Repair_Table['service_id']           := Q.FieldByName('service_id').Value;
    Client_Vagon_Repair_Table['detail_id']            := Q.FieldByName('detail_id').Value;
    Client_Vagon_Repair_Table['detail_num']           := Q.FieldByName('detail_num').Value;
    Client_Vagon_Repair_Table['act_breakage_date']    := Q.FieldByName('act_breakage_date').Value;
    Client_Vagon_Repair_Table['detail_status_id']     := Q.FieldByName('detail_status_id').Value;
    Client_Vagon_Repair_Table['vagon_id']             := Q.FieldByName('vagon_id').Value;
    Client_Vagon_Repair_Table['quantity']             := Q.FieldByName('quantity').Value;
    Client_Vagon_Repair_Table['rate_nds_id']          := Q.FieldByName('rate_nds_id').Value;
    Client_Vagon_Repair_Table['date_vu23']            := Q.FieldByName('date_vu23').Value;
    Client_Vagon_Repair_Table['str_width_truck']      := Q.FieldByName('str_width_truck').Value;
    Client_Vagon_Repair_Table['cost_contract_id']     := Q.FieldByName('cost_contract_id').Value;
    Client_Vagon_Repair_Table['firm_customer_name']   := Q.FieldByName('owner_name').AsString;
    Client_Vagon_Repair_Table['cost_contract_cod']    := Q.FieldByName('cost_contract_cod').Value;
    Client_Vagon_Repair_Table['date_vu36']            := Q.FieldByName('date_vu36').Value;
    Client_Vagon_Repair_Table['date_vu23']            := Q.FieldByName('date_vu23').Value;
    Client_Vagon_Repair_Table['set_self_cost']        := Q.FieldByName('set_self_cost').Value;
    Client_Vagon_Repair_Table['set_cost_price']       := Q.FieldByName('set_cost_price').Value;

    // Поиск Клиента (расход)
    Q1 := TADOQuery.Create(nil);
    Q1.Connection := fmVagonRepair.ADOVagonRepair;
    Q1.SQL.Add('SELECT dbo.func_GetVagonRepairCostContract(:vagon_id, :date_begin) as cost_contract_id');
    Q1.Parameters.ParamByName('vagon_id').DataType := ftInteger;
    Q1.Parameters.ParamByName('vagon_id').Value := Client_Vagon_Repair_Table['vagon_id'];
    Q1.Parameters.ParamByName('date_begin').DataType := ftDate;
    Q1.Parameters.ParamByName('date_begin').Value := Client_Vagon_Repair_Table['date_vu36'];
    Q1.Open;
    if not Q1.FieldByName('cost_contract_id').IsNull then begin
      Query_Cost_Contract.Locate('contract_id', Q1.FieldByName('cost_contract_id').Value, []);
      Client_Vagon_Repair_Table['cost_contract_id']  := Q1.FieldByName('cost_contract_id').Value;
      Client_Vagon_Repair_Table['cost_contract_cod'] := Query_Cost_Contract.FieldByName('contract_cod').Value;
    end else begin
      Client_Vagon_Repair_Table['cost_contract_id']  := null;
      Client_Vagon_Repair_Table['cost_contract_cod'] := null;
    end;
    Q1.Free;

    Client_Vagon_Repair_Table.Post;
    Q.Next;
  end;
  cxGrid1DBBandedTableView1.DataController.DataSet.EnableControls;
  Q.Free;

  Screen.Cursor := crDefault;
end;

end.
