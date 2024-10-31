unit OrdersAgreeAdd;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, DateUtils,
  Dialogs, cxGraphics, Menus, cxLookAndFeelPainters, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, DB, cxDBData, dxBar, cxClasses, Buttons, cxGridLevel, cxGridCustomTableView,
  cxGridTableView, cxGridBandedTableView, cxGridDBBandedTableView, cxControls, cxGridCustomView,
  cxGrid, cxSplitter, cxCheckBox, StdCtrls, cxButtons, cxButtonEdit, cxDropDownEdit, cxTextEdit,
  cxMaskEdit, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, cxContainer, cxLabel, ExtCtrls, Default,
  cxCurrencyEdit, cxPropertiesStore, ADODB, cxGroupBox, cxCalendar, DBClient, cxGridDBTableView, cxPC, cxRichEdit, cxMemo, cxRadioGroup, cxLookAndFeels,
  dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
  dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMetropolis, dxSkinMetropolisDark, dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013DarkGray,
  dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus, dxSkinSilver,
  dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008, dxSkinTheAsphaltWorld, dxSkinsDefaultPainters, dxSkinValentine, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue, dxSkinscxPCPainter, dxBarBuiltInMenu, cxNavigator, ComCtrls, dxCore, cxDateUtils, dxSkinsdxBarPainter,
  dxSkinOffice2016Colorful, dxSkinOffice2016Dark, dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark, dxSkinVisualStudio2013Light,
  dxScreenTip, dxCustomHint, dxSkinTheBezier, dxDateRanges, dxSkinOffice2019Colorful, dxScrollbarAnnotations, cxHint;

type
  TfmOrdersAgreeAdd = class(TForm)
    Panel5: TPanel;
    dxBarManager1: TdxBarManager;
    DS_OrdersAgreeRail: TDataSource;
    ClientDS_OrdersAgreeRail: TClientDataSet;
    cxPageControl1: TcxPageControl;
    cxTabSheet1: TcxTabSheet;
    cxGrid1: TcxGrid;
    cxGrid1DBBandedTableView1: TcxGridDBBandedTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGroupBox1: TcxGroupBox;
    cxLabel4: TcxLabel;
    cxLabel2: TcxLabel;
    cxLabel3: TcxLabel;
    cxLabel6: TcxLabel;
    cxLookupComboBox1: TcxLookupComboBox;
    cxButtonEdit13: TcxButtonEdit;
    cxButtonEdit14: TcxButtonEdit;
    cxTextEdit1: TcxTextEdit;
    DS_Client: TDataSource;
    Query_Client: TADOQuery;
    cxTabSheet2: TcxTabSheet;
    cxGroupBox5: TcxGroupBox;
    Label3: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label1: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label7: TLabel;
    Label11: TLabel;
    cxCurrencyEdit2: TcxCurrencyEdit;
    cxCurrencyEdit4: TcxCurrencyEdit;
    cxCurrencyEdit1: TcxCurrencyEdit;
    cxCurrencyEdit5: TcxCurrencyEdit;
    cxCurrencyEdit6: TcxCurrencyEdit;
    cxCurrencyEdit3: TcxCurrencyEdit;
    cxLookupComboBox3: TcxLookupComboBox;
    Label4: TLabel;
    cxPropertiesStore1: TcxPropertiesStore;
    Query_Currency: TADOQuery;
    DS_Currency: TDataSource;
    ClientDS_OrdersAgreeRailid: TAutoIncField;
    ClientDS_OrdersAgreeRailorders_agree_rail_id: TIntegerField;
    ClientDS_OrdersAgreeRailcontract_id: TIntegerField;
    ClientDS_OrdersAgreeRailcontract_cod: TStringField;
    ClientDS_OrdersAgreeRailfirm_customer_name: TStringField;
    ClientDS_OrdersAgreeRailcurrency_id: TIntegerField;
    ClientDS_OrdersAgreeRailbrief_name: TStringField;
    ClientDS_OrdersAgreeRaildate_plan_pay: TDateField;
    ClientDS_OrdersAgreeRaildate_plan_send: TDateField;
    ClientDS_OrdersAgreeRailed_izm_id: TIntegerField;
    ClientDS_OrdersAgreeRailed_izm_name: TStringField;
    ClientDS_OrdersAgreeRailadd_count: TCurrencyField;
    ClientDS_OrdersAgreeRailadd_sum: TCurrencyField;
    ClientDS_OrdersAgreeRailadd_rate: TCurrencyField;
    ClientDS_OrdersAgreeRailcount_vagon: TIntegerField;
    ClientDS_OrdersAgreeRailcount_weight: TCurrencyField;
    ClientDS_OrdersAgreeRailcount_day_vagon: TCurrencyField;
    ClientDS_OrdersAgreeRailkargoETSNG_id: TIntegerField;
    ClientDS_OrdersAgreeRailkargoETSNG_cod: TStringField;
    ClientDS_OrdersAgreeRailkargoETSNG_name: TStringField;
    ClientDS_OrdersAgreeRailkargoETSNG_add_id: TIntegerField;
    ClientDS_OrdersAgreeRailkargoETSNG_add_name: TStringField;
    ClientDS_OrdersAgreeRailkargoETSNG_add_cod: TStringField;
    ClientDS_OrdersAgreeRailkargoGNG_id: TIntegerField;
    ClientDS_OrdersAgreeRailkargoGNG_cod: TStringField;
    ClientDS_OrdersAgreeRailkargoGNG_name: TStringField;
    ClientDS_OrdersAgreeRailstate_begin_id: TIntegerField;
    ClientDS_OrdersAgreeRailstate_begin_name: TStringField;
    ClientDS_OrdersAgreeRailstate_end_id: TIntegerField;
    ClientDS_OrdersAgreeRailstate_end_name: TStringField;
    ClientDS_OrdersAgreeRailnode_begin_id: TIntegerField;
    ClientDS_OrdersAgreeRailnode_begin_cod: TStringField;
    ClientDS_OrdersAgreeRailnode_begin_name: TStringField;
    ClientDS_OrdersAgreeRailnode_end_id: TIntegerField;
    ClientDS_OrdersAgreeRailnode_end_cod: TStringField;
    ClientDS_OrdersAgreeRailnode_end_name: TStringField;
    ClientDS_OrdersAgreeRailtype_kontener_id: TIntegerField;
    ClientDS_OrdersAgreeRailtype_kontener_name: TStringField;
    ClientDS_OrdersAgreeRailfirm_sender_id: TIntegerField;
    ClientDS_OrdersAgreeRailfirm_sender_name: TStringField;
    ClientDS_OrdersAgreeRailfirm_reciever_id: TIntegerField;
    ClientDS_OrdersAgreeRailfirm_reciever_name: TStringField;
    dxBarPopupMenu1: TdxBarPopupMenu;
    dxBarButton1: TdxBarButton;
    dxBarSubItem1: TdxBarSubItem;
    dxBarButton2: TdxBarButton;
    dxBarButton3: TdxBarButton;
    dxBarButton4: TdxBarButton;
    dxBarButton5: TdxBarButton;
    dxBarButton6: TdxBarButton;
    dxBarButton7: TdxBarButton;
    dxScreenTipRepository: TdxScreenTipRepository;
    stError: TdxScreenTip;
    stWarning: TdxScreenTip;
    stInfo: TdxScreenTip;
    stCustom: TdxScreenTip;
    cxHintStyleController1: TcxHintStyleController;
    ClientDS_OrdersAgreeRailbudget_id: TIntegerField;
    ClientDS_OrdersAgreeRailbudget_cod: TStringField;
    ClientDS_OrdersAgreeRailbudget_name: TStringField;
    ClientDS_OrdersAgreeRailservice_type: TIntegerField;
    ClientDS_OrdersAgreeRailservice_type_name: TStringField;
    ClientDS_OrdersAgreeRailcomment: TStringField;
    cxGrid1DBBandedTableView1id: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1contract_cod: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1firm_customer_name: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1brief_name: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1date_plan_pay: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1date_plan_send: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1ed_izm_name: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1add_count: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1add_sum: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1add_rate: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1firm_sender_name: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1firm_reciever_name: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1service_type: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1service_type_name: TcxGridDBBandedColumn;
    ClientDS_OrdersAgreeRailkargoETSNG_group_name: TStringField;
    ClientDS_OrdersAgreeRailed_izm_cod: TStringField;
    cxMemo1: TcxMemo;
    ClientDS_OrdersAgreeRailplan_client_rate_id: TIntegerField;
    Panel1: TPanel;
    Panel2: TPanel;
    cxGroupBox3: TcxGroupBox;
    cxLabel5: TcxLabel;
    cxLabel8: TcxLabel;
    cxLabel9: TcxLabel;
    cxLabel10: TcxLabel;
    cxButtonEdit2: TcxButtonEdit;
    cxButtonEdit3: TcxButtonEdit;
    cxButtonEdit10: TcxButtonEdit;
    cxButtonEdit9: TcxButtonEdit;
    cxButtonEdit4: TcxButtonEdit;
    cxButtonEdit1: TcxButtonEdit;
    cxButton1: TcxButton;
    cxGroupBox4: TcxGroupBox;
    cxLabel12: TcxLabel;
    cxButtonEdit5: TcxButtonEdit;
    cxButtonEdit6: TcxButtonEdit;
    cxTextEdit14: TcxTextEdit;
    cxLabel1: TcxLabel;
    cxButtonEdit15: TcxButtonEdit;
    cxLabel7: TcxLabel;
    cxButtonEdit16: TcxButtonEdit;
    cxGroupBox2: TcxGroupBox;
    cxComboBox2: TcxComboBox;
    cxComboBox1: TcxComboBox;
    Label2: TLabel;
    cxButtonEdit8: TcxButtonEdit;
    Label13: TLabel;
    cxLookupComboBox6: TcxLookupComboBox;
    Label17: TLabel;
    Query_TypeKontener: TADOQuery;
    DS_TypeKontener: TDataSource;
    cxButton2: TcxButton;
    cxButton3: TcxButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cxComboBox1PropertiesChange(Sender: TObject);
    procedure cxLookupComboBox1PropertiesChange(Sender: TObject);
    procedure cxButtonEdit14PropertiesButtonClick(Sender: TObject;AButtonIndex: Integer);
    procedure cxButtonEdit2PropertiesButtonClick(Sender: TObject;AButtonIndex: Integer);
    procedure cxButtonEdit1PropertiesButtonClick(Sender: TObject;AButtonIndex: Integer);
    procedure cxButtonEdit5PropertiesButtonClick(Sender: TObject;AButtonIndex: Integer);
    procedure cxButtonEdit15PropertiesButtonClick(Sender: TObject;AButtonIndex: Integer);
    procedure cxButtonEdit16PropertiesButtonClick(Sender: TObject;AButtonIndex: Integer);
    procedure cxLookupComboBox3PropertiesEditValueChanged(Sender: TObject);
    procedure cxGrid1DBBandedTableView1FilterOnChanged(Sender: TObject);
    procedure cxGrid1DBBandedTableView1CustomDrawCell(Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
    procedure cxGrid1DBBandedTableView1CustomDrawColumnHeader(Sender: TcxGridTableView; ACanvas: TcxCanvas;AViewInfo: TcxGridColumnHeaderViewInfo; var ADone: Boolean);
    procedure cxGrid1DBBandedTableView1FocusedItemChanged(Sender: TcxCustomGridTableView; APrevFocusedItem,AFocusedItem: TcxCustomGridTableItem);
    procedure cxGrid1DBBandedTableView1KeyPress(Sender: TObject; var Key: Char);
    procedure dxBarButton1Click(Sender: TObject);
    procedure dxBarButton2Click(Sender: TObject);
    procedure dxBarButton3Click(Sender: TObject);
    procedure dxBarButton4Click(Sender: TObject);
    procedure cxLookupComboBox1PropertiesValidate(Sender: TObject;var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
    procedure dxBarButton5Click(Sender: TObject);
    procedure dxBarButton6Click(Sender: TObject);
    procedure dxBarButton7Click(Sender: TObject);
    procedure cxButtonEdit8PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure cxButton2Click(Sender: TObject);
  private
    Forders_agree_id   : integer;     // Номер записи перевозки (-9 = Новая перевозка)
    Fdate_period       : TDateTime;   // Текущий период
    Fnode_begin_id     : integer;
    Fnode_end_id       : integer;
    Fstate_begin_id    : integer;
    Fstate_end_id      : integer;
    FkargoETSNG_id     : integer;
    Ffirm_sender_id    : integer;
    Ffirm_reciever_id  : integer;

    // Параметры необходимые для расчета № заявки
    Forders_agree_num_save : integer;
    Fcontract_id_save      : integer;
    Fdate_period_save      : TDateTime;
    Fbargain_cod_save      : string;
    Fset_copy              : boolean;           // True - Заявка скопированна и открыта на редактирование 1-ый раз

    procedure SetInsert(value: boolean);
    procedure SetUpdate(orders_agree_id: integer);
    function  GetDatePeriod(): variant;              // Получить дату
    procedure SetDatePeriod(date_period: variant);   // Установить дату

    property _GetDatePeriod : variant read  GetDatePeriod;  // Получить дату
    property _SetDatePeriod : variant write SetDatePeriod;  // Установить дату

    procedure ChangeNumOrdersAgree(check_change: boolean);

    procedure ChangeAddContract();
    function  CheckValidate(ACustomEdit: TcxCustomMaskEdit): boolean;

    procedure SetKargoAdd(set_kargo_add: boolean);
    function  FindInfObj(caption_name: string; table_name: string; set_cod: boolean; var id: integer; var cod: string; var name: string): boolean;
    procedure RefreshClientDS_Rate();
    procedure CalcOrdersAgreeRail(id: integer);
    procedure CalcSum();
    procedure LoacteOrdersAgreeRail(orders_agree_rail_id: integer);
    function  SaveOrdersAgree(): boolean;
    procedure SetUpdateOrderAgreeRail(orders_agree_rail_id : integer);
  public
    constructor Create(AOwner: TApplication); reintroduce;
  published
    property _SetInsert    : boolean   write SetInsert;
    property _SetUpdate    : integer   write SetUpdate;
    property _SetKargoAdd  : boolean   write SetKargoAdd;
    property _LoacteOrdersAgreeRail : integer   write LoacteOrdersAgreeRail;

    property _GetOrdersAgreeID      : integer   read Forders_agree_id;
    property _SetUpdateOrderAgreeRail : integer write SetUpdateOrderAgreeRail;
  end;

var
  fmOrdersAgreeAdd: TfmOrdersAgreeAdd;

implementation

uses main, Contract, Filter, Raznoe, OrdersAgreeRailAdd, Other, PlanClient;

{$R *.dfm}

constructor TfmOrdersAgreeAdd.Create(AOwner: TApplication);
begin
  Screen.Cursor := crHourglass;
  inherited Create(AOwner);

  Query_Currency.Open;
  Query_TypeKontener.Open;

  ClientDS_OrdersAgreeRail.CreateDataSet;
  ClientDS_OrdersAgreeRail.LogChanges := False;

  Screen.Cursor := crDefault;
end;

procedure TfmOrdersAgreeAdd.cxButton2Click(Sender: TObject);
var  sp_orders_agree_modify : TADOStoredProc;
begin
  ModalResult := mrNone;

  // Проверка на заполнение полей перевозки
  if CheckValidate(cxLookupComboBox1) = True then Exit; // Проверить клиента
  if CheckValidate(cxButtonEdit5)     = True then Exit; // Проверить груз

  if ClientDS_OrdersAgreeRail.RecordCount = 0 then begin
    Application.MessageBox('Не указаны услуги!!!', 'Внимание', MB_OK+MB_ICONWARNING);
    ModalResult := mrNone;
    exit;
  end;

  // Сохраняем перевозку
  sp_orders_agree_modify := TADOStoredProc.Create(nil);
  sp_orders_agree_modify.Connection := fmMain.Lis;
  sp_orders_agree_modify.ProcedureName := 'sp_orders_agree_modify';
  sp_orders_agree_modify.Parameters.Refresh;
  sp_orders_agree_modify.Parameters.ParamByName('@orders_agree_id'   ).Value := iif(Forders_agree_id        =-9, null, Forders_agree_id);
  sp_orders_agree_modify.Parameters.ParamByName('@type_action'       ).Value := iif(Forders_agree_id        =-9,    0, 1);
  sp_orders_agree_modify.Parameters.ParamByName('@orders_agree_cod'  ).Value := cxTextEdit1.EditValue;
  sp_orders_agree_modify.Parameters.ParamByName('@orders_agree_num'  ).Value := iif(Forders_agree_num_save  =-9, null, Forders_agree_num_save);
  sp_orders_agree_modify.Parameters.ParamByName('@contract_id'       ).Value := cxLookupComboBox1.EditValue;
  sp_orders_agree_modify.Parameters.ParamByName('@date_period'       ).Value := _GetDatePeriod;
  sp_orders_agree_modify.Parameters.ParamByName('@state_begin_id'    ).Value := iif(Fstate_begin_id         =-9, null, Fstate_begin_id);
  sp_orders_agree_modify.Parameters.ParamByName('@state_end_id'      ).Value := iif(Fstate_end_id           =-9, null, Fstate_end_id);
  sp_orders_agree_modify.Parameters.ParamByName('@node_begin_id'     ).Value := iif(Fnode_begin_id          =-9, null, Fnode_begin_id);
  sp_orders_agree_modify.Parameters.ParamByName('@node_end_id'       ).Value := iif(Fnode_end_id            =-9, null, Fnode_end_id);
  sp_orders_agree_modify.Parameters.ParamByName('@currency_id'       ).Value := cxLookupComboBox3.EditValue;
  sp_orders_agree_modify.Parameters.ParamByName('@kargoETSNG_id'     ).Value := iif(FkargoETSNG_id          =-9, null, FkargoETSNG_id);
  sp_orders_agree_modify.Parameters.ParamByName('@firm_sender_id'    ).Value := iif(Ffirm_sender_id         =-9, null, Ffirm_sender_id);
  sp_orders_agree_modify.Parameters.ParamByName('@firm_reciever_id'  ).Value := iif(Ffirm_reciever_id       =-9, null, Ffirm_reciever_id);

  sp_orders_agree_modify.Parameters.ParamByName('@count_weight'      ).Value := cxCurrencyEdit3.EditValue;
  sp_orders_agree_modify.Parameters.ParamByName('@count_vagon'       ).Value := cxCurrencyEdit6.EditValue;
  sp_orders_agree_modify.Parameters.ParamByName('@count_day_vagon'   ).Value := cxCurrencyEdit5.EditValue;

  sp_orders_agree_modify.Parameters.ParamByName('@orders_client_sum' ).Value := cxCurrencyEdit1.EditValue;
  sp_orders_agree_modify.Parameters.ParamByName('@orders_agent_sum'  ).Value := cxCurrencyEdit4.EditValue;
  sp_orders_agree_modify.Parameters.ParamByName('@comment'           ).Value := iif(cxMemo1.Lines.Text <> '', cxMemo1.Lines.Text, null);;
  sp_orders_agree_modify.Parameters.ParamByName('@orders_rate_xml'   ).Value := DataXMLToSQL(ClientDS_OrdersAgreeRail);
  sp_orders_agree_modify.Parameters.ParamByName('@rod_vagon_id'      ).Value := cxLookupComboBox6.EditValue;
//  ClientDS_OrdersAgreeRail.First;
//  while not ClientDS_OrdersAgreeRail.Eof do begin
//    ShowMessage(ClientDS_OrdersAgreeRail.FieldByName('plan_client_rate_id').AsString);
//    ClientDS_OrdersAgreeRail.Next;
//  end;



  sp_orders_agree_modify.ExecProc;
  Forders_agree_id := sp_orders_agree_modify.Parameters.ParamByName('@orders_agree_id').Value;
  sp_orders_agree_modify.Free;

  ModalResult := mrOk;
end;

procedure TfmOrdersAgreeAdd.cxButtonEdit14PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  fmContract := TfmContract.Create(Application, True, 0);
  fmContract.cxTabSheet2.Visible := False;
  fmContract.Visible := False;
  if cxLookupComboBox1.EditValue <> null then fmContract._SetContractId := cxLookupComboBox1.EditValue;
  if fmContract.ShowModal=mrOk then begin
    Query_Client.Close;
    Query_Client.Open;
    if Query_Client.Locate('contract_id', fmContract._GetContractId, []) then
      cxLookupComboBox1.EditValue := fmContract._GetContractId
    else begin
      Application.MessageBox('Выбранный договор в этом периоде не действует!', 'Внимание', MB_OK);
      cxLookupComboBox1.EditValue := null;
    end;
  end;
end;

procedure TfmOrdersAgreeAdd.cxButtonEdit15PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
var new_str : string;
          Q : TADOQuery;
begin
  case AButtonIndex of
    0:  begin
          if InputQuery('Поиск', 'Шаблон организации', new_str) then begin
            Q := TADOQuery.Create(nil);
            Q.Connection := fmMain.Lis;
            Q.SQL.Add('SELECT firm_id, firm_name_short, firm_name, cod_okpo FROM view_firm_rights WHERE (firm_name like (''%' + new_str + '%'')) ORDER BY firm_name');
            Q.Open;
            fmFilter := TfmFilter.Create(0, Q, 'firm_id', 'cod_okpo', 'firm_name_short');
            if fmFilter.ShowModal=mrOk then begin
              Ffirm_sender_id           := fmFilter.GetId;
              cxButtonEdit15.EditValue   := fmFilter.GetName;
            end;
            Q.Free;
          end;
        end;
    1:  begin
          Ffirm_sender_id           := -9;
          cxButtonEdit15.EditValue   := '';
        end;
  end;
end;

procedure TfmOrdersAgreeAdd.cxButtonEdit16PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
var new_str : string;
          Q : TADOQuery;
begin
  case AButtonIndex of
    0:  begin
          if InputQuery('Поиск', 'Шаблон организации', new_str) then begin
            Q := TADOQuery.Create(nil);
            Q.Connection := fmMain.Lis;
            Q.SQL.Add('SELECT firm_id, firm_name_short, firm_name, cod_okpo FROM view_firm_rights WHERE (firm_name like (''%' + new_str + '%'')) ORDER BY firm_name');
            Q.Open;
            fmFilter := TfmFilter.Create(0, Q, 'firm_id', 'cod_okpo', 'firm_name_short');
            if fmFilter.ShowModal=mrOk then begin
              Ffirm_reciever_id         := fmFilter.GetId;
              cxButtonEdit16.EditValue   := fmFilter.GetName;
            end;
            Q.Free;
          end;
        end;
    1:  begin
          Ffirm_reciever_id         := -9;
          cxButtonEdit16.EditValue   := '';
        end;
  end;
end;

procedure TfmOrdersAgreeAdd.cxButtonEdit1PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
var new_str : string;
    Q : TADOQuery;
begin
  case AButtonIndex of
    0 : if InputQuery('Поиск', 'Шаблон поиска страны:', new_str) then begin
          Q := TADOQuery.Create(nil);
          Q.Connection := fmMain.Lis;
          Q.SQL.Add('select inf_obj_id, inf_obj_name, inf_obj_cod from inf_obj_STATE where inf_obj_name LIKE ''%'+new_str+'%'' order by inf_obj_name');
          Q.Open;
          fmFilter := TfmFilter.Create(0, Q, 'inf_obj_id', 'inf_obj_cod', 'inf_obj_name');
          if fmFilter.ShowModal=mrOk then begin
            case TcxButtonEdit(Sender).Tag of
              1 : begin
                  Fstate_begin_id := fmFilter.GetId;
                  cxButtonEdit1.Text := fmFilter.GetName;
                  end;
              4 : begin
                  Fstate_end_id := fmFilter.GetId;
                  cxButtonEdit4.Text := fmFilter.GetName;
                  end;
            end;
          end;
          Q.Free;
        end else exit;
    1 : case TcxButtonEdit(Sender).Tag of
          1 : begin
              Fstate_begin_id := -9;
              cxButtonEdit1.Text := '';
              end;
          4 : begin
              Fstate_end_id := -9;
              cxButtonEdit4.Text := '';
              end;
        end;
  end;
//  NodeShapingChange;
end;

procedure TfmOrdersAgreeAdd.cxButtonEdit2PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
var
  id  : integer;
  cod : string;
  name: string;
begin
  case AButtonIndex of
    0 : begin
          case TcxButtonEdit(Sender).Tag of
            2 : begin // Станция отправления
                  if FindInfObj('Шаблон поиска станции по названию:', 'inf_obj_node', False, id, cod, name) then begin
                    Fnode_begin_id     := id;
                    cxButtonEdit2.Text := name;
                    cxButtonEdit9.Text := cod;
                    //ChangeAddNodeBegin;
                  end;
                end;
            4 : begin // Станция отправления
                  if FindInfObj('Шаблон поиска станции по коду:', 'inf_obj_node', True, id, cod, name) then begin
                    Fnode_begin_id     := id;
                    cxButtonEdit2.Text := name;
                    cxButtonEdit9.Text := cod;
                    //ChangeAddNodeBegin;
                  end;
                end;
            3 : begin
                  // Станция назначения
                  if FindInfObj('Шаблон поиска станции по названию:', 'inf_obj_node', False, id, cod, name) then begin
                    Fnode_end_id        := id;
                    cxButtonEdit3.Text  := name;
                    cxButtonEdit10.Text := cod;
                    //ChangeAddNodeEnd;
                  end;
                end;
            5 : begin
                  // Станция назначения
                  if FindInfObj('Шаблон поиска станции по коду:', 'inf_obj_node', True, id, cod, name) then begin
                    Fnode_end_id        := id;
                    cxButtonEdit3.Text  := name;
                    cxButtonEdit10.Text := cod;
                    //ChangeAddNodeEnd;
                  end;
                end;
          end;
        end;
    1 : case TcxButtonEdit(Sender).Tag of
          2,4 : begin
                  Fnode_begin_id := -9;
                  cxButtonEdit2.Text := '';
                  cxButtonEdit9.Text := '';
                  //ChangeAddNodeBegin;
                end;
          3,5 : begin
                  Fnode_end_id := -9;
                  cxButtonEdit3.Text := '';
                  cxButtonEdit10.Text := '';
                  //ChangeAddNodeEnd;
                end;
        end;
  end;
end;

procedure TfmOrdersAgreeAdd.cxButtonEdit5PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
var
  id  : integer;
  cod : string;
  name: string;
  Q   : TADOQuery;
begin
  case AButtonIndex of
    0 : begin
          case TcxButtonEdit(Sender).Tag of
            0:  if FindInfObj('Шаблон поиска груза по наименованию:', 'inf_obj_etsng', False, id, cod, name) then begin
                  FkargoETSNG_id := id;
                  cxButtonEdit5.EditValue := name;
                  cxButtonEdit6.EditValue := cod;
                  Q := TADOQuery.Create(nil);
                  Q.Connection := fmMain.Lis;
                  Q.SQL.Add('SELECT * FROM view_kargoETSNG  WHERE inf_obj_id = ' + IntToStr(id));
                  Q.Open;
                  cxTextEdit14.EditValue  := Q.FieldByName('group_name').Value;
                  Q.Free;

                  //ChangeAddKargoETSNG;
                end;
            1:  if FindInfObj('Шаблон поиска груза по коду:', 'inf_obj_etsng', True, id, cod, name) then begin
                  FkargoETSNG_id := id;
                  cxButtonEdit5.EditValue := name;
                  cxButtonEdit6.EditValue := cod;
                  Q := TADOQuery.Create(nil);
                  Q.Connection := fmMain.Lis;
                  Q.SQL.Add('SELECT * FROM view_kargoETSNG  WHERE inf_obj_id = ' + IntToStr(id));
                  Q.Open;
                  cxTextEdit14.EditValue  := Q.FieldByName('group_name').Value;
                  Q.Free;
                  //ChangeAddKargoETSNG;
                end;
          end;
        end;
    1 : begin
          FkargoETSNG_id := -9;
          cxButtonEdit5.EditValue := null;
          cxButtonEdit6.EditValue := null;
          cxTextEdit14.EditValue  := null;
          //ChangeAddKargoETSNG;
        end;
  end;
  cxButtonEdit5.ValidateEdit;
end;

procedure TfmOrdersAgreeAdd.cxButtonEdit8PropertiesButtonClick(Sender: TObject;AButtonIndex: Integer);
var     Q_Client, Q_Agent : TADOQuery;
  int_plan_client_rate_id : integer;
begin
  //выбор ставки
  int_plan_client_rate_id := 0;
  if ClientDS_OrdersAgreeRail.RecordCount > 0 then begin
    if Application.MessageBox('Добавление клиентской услуги удалит существующие доходные / расходные услуги!!!' + #10#13 + 'Продолжить?', 'ВНИМАНИЕ', MB_ICONQUESTION or MB_YESNO) = IDYES then begin
      ClientDS_OrdersAgreeRail.EmptyDataSet();
    end else
      Exit;
  end;

  fmPlanClient := TfmPlanClient.Create(Application, True, 1);
  if fmPlanClient.ShowModal = mrOk then begin
    int_plan_client_rate_id := fmPlanClient._GetPlanClientRateId;
    Q_Client := TADOQuery.Create(nil);
    Q_Client.Connection := fmMain.Lis;
    Q_Client.SQL.Text := 'SELECT * FROM view_plan_client_rate_rights WHERE plan_client_rate_id = ' + IntToStr(int_plan_client_rate_id);
    Q_Client.Open;

    if Q_Client.FieldByName('plan_rate').Value = null then begin
      Application.MessageBox('Возможен только выбор ставки!', 'ВНИМАНИЕ', MB_ICONINFORMATION or MB_OK);
      Exit;
    end;


    cxLookupComboBox1.EditValue := Q_Client.FieldByName('contract_id').Value;//договор
//    cxLookupComboBox1.EditText  := Q_Client.FieldByName('firm_customer_name').Value;//клиент
    cxButtonEdit14.EditValue    := Q_Client.FieldByName('contract_cod').Value;//договор код

    cxButtonEdit13.EditValue    := Q_Client.FieldByName('firm_self_name').Value;//собственная

    cxLookupComboBox3.EditValue := Q_Client.FieldByName('currency_id').Value;//валюта
//    cxLookupComboBox3.EditText  := Q_Client.FieldByName('brief_name').Value;

    Fnode_begin_id          := Q_Client.FieldByName('node_begin_id').Value;
    cxButtonEdit2.EditValue := Q_Client.FieldByName('node_begin_name').Value;//ст отправления
    cxButtonEdit9.EditValue := Q_Client.FieldByName('node_begin_cod').Value;

    Fnode_end_id            := Q_Client.FieldByName('node_end_id').Value;
    cxButtonEdit3.EditValue := Q_Client.FieldByName('node_end_name').Value;//ст прибытия
    cxButtonEdit10.EditValue:= Q_Client.FieldByName('node_end_cod').Value;

    FkargoETSNG_id          := Q_Client.FieldByName('kargoETSNG_id').Value;//груз
    cxButtonEdit5.EditValue := Q_Client.FieldByName('kargoETSNG_name').Value;//груз
    cxButtonEdit6.EditValue := Q_Client.FieldByName('kargoETSNG_cod').Value;//груз код
    //cxTextEdit14.EditValue  := '';//группа груза

    cxButtonEdit8.EditValue := Q_Client.FieldByName('plan_rate').Value;


    ClientDS_OrdersAgreeRail.Append;
    ClientDS_OrdersAgreeRail.FieldByName('service_type'         ).Value := 0;
    ClientDS_OrdersAgreeRail.FieldByName('service_type_name'    ).Value := 'Доход';

    ClientDS_OrdersAgreeRail.FieldByName('budget_id'            ).Value := iif(Q_Client.FieldByName('budget_id').Value = -9, null, Q_Client.FieldByName('budget_id').Value);
    ClientDS_OrdersAgreeRail.FieldByName('budget_cod'           ).Value := Q_Client.FieldByName('budget_cod').Value;
    ClientDS_OrdersAgreeRail.FieldByName('budget_name'          ).Value := Q_Client.FieldByName('budget_name').Value;

    ClientDS_OrdersAgreeRail.FieldByName('contract_id'          ).Value := iif(Q_Client.FieldByName('contract_id').Value = -9, null, Q_Client.FieldByName('contract_id').Value);
    ClientDS_OrdersAgreeRail.FieldByName('firm_customer_name'   ).Value := Q_Client.FieldByName('firm_customer_name').Value;
    ClientDS_OrdersAgreeRail.FieldByName('contract_cod'         ).Value := Q_Client.FieldByName('contract_cod').Value;

    ClientDS_OrdersAgreeRail.FieldByName('currency_id'          ).Value := iif(Q_Client.FieldByName('currency_id').Value = -9, null, Q_Client.FieldByName('currency_id').Value);
    ClientDS_OrdersAgreeRail.FieldByName('brief_name'           ).Value := Q_Client.FieldByName('brief_name').Value;

    ClientDS_OrdersAgreeRail.FieldByName('ed_izm_id'            ).Value := iif(Q_Client.FieldByName('ed_izm_id').Value = -9, null, Q_Client.FieldByName('ed_izm_id').Value);
    ClientDS_OrdersAgreeRail.FieldByName('ed_izm_cod'           ).Value := Q_Client.FieldByName('ed_izm_cod').Value;
    ClientDS_OrdersAgreeRail.FieldByName('ed_izm_name'          ).Value := Q_Client.FieldByName('ed_izm_name').Value;

//    ClientDS_OrdersAgreeRail.FieldByName('add_sum'              ).Value := Q_Client.FieldByName('plan_rate').Value;//CalcSum();
//    ClientDS_OrdersAgreeRail.FieldByName('add_count'            ).Value := 1;
    ClientDS_OrdersAgreeRail.FieldByName('add_rate'             ).Value := Q_Client.FieldByName('plan_rate').Value;
    ClientDS_OrdersAgreeRail.FieldByName('plan_client_rate_id'  ).Value := Q_Client.FieldByName('plan_client_rate_id').Value;

//    ClientDS_OrdersAgreeRail.FieldByName('count_day_vagon'      ).Value := 1;
//    ClientDS_OrdersAgreeRail.FieldByName('count_vagon'          ).Value := 1;
//    ClientDS_OrdersAgreeRail.FieldByName('count_weight'         ).Value := 1;

    ClientDS_OrdersAgreeRail.FieldByName('kargoETSNG_id'        ).Value := iif(Q_Client.FieldByName('kargoETSNG_id').Value = -9, null, Q_Client.FieldByName('kargoETSNG_id').Value);
    ClientDS_OrdersAgreeRail.FieldByName('kargoETSNG_cod'       ).Value := Q_Client.FieldByName('kargoETSNG_cod').Value;
    ClientDS_OrdersAgreeRail.FieldByName('kargoETSNG_name'      ).Value := Q_Client.FieldByName('kargoETSNG_name').Value;
    ClientDS_OrdersAgreeRail.FieldByName('kargoETSNG_group_name').Value := '';

//    ClientDS_OrdersAgreeRail.FieldByName('kargoETSNG_add_id'    ).Value := ;
//    ClientDS_OrdersAgreeRail.FieldByName('kargoETSNG_add_cod'   ).Value := ;
//    ClientDS_OrdersAgreeRail.FieldByName('kargoETSNG_add_name'  ).Value := ;
//
//    ClientDS_OrdersAgreeRail.FieldByName('kargoGNG_id'          ).Value := ;
//    ClientDS_OrdersAgreeRail.FieldByName('kargoGNG_cod'         ).Value := ;
//    ClientDS_OrdersAgreeRail.FieldByName('kargoGNG_name'        ).Value := ;
//
//    ClientDS_OrdersAgreeRail.FieldByName('state_begin_id'       ).Value := ;
//    ClientDS_OrdersAgreeRail.FieldByName('state_begin_name'     ).Value := ;

//    ClientDS_OrdersAgreeRail.FieldByName('state_end_id'         ).Value := ;
//    ClientDS_OrdersAgreeRail.FieldByName('state_end_name'       ).Value := ;

    ClientDS_OrdersAgreeRail.FieldByName('node_begin_id'        ).Value := iif(Q_Client.FieldByName('node_begin_id').Value = -9, null, Q_Client.FieldByName('node_begin_id').Value);
    ClientDS_OrdersAgreeRail.FieldByName('node_begin_cod'       ).Value := Q_Client.FieldByName('node_begin_cod').Value;
    ClientDS_OrdersAgreeRail.FieldByName('node_begin_name'      ).Value := Q_Client.FieldByName('node_begin_name').Value;

    ClientDS_OrdersAgreeRail.FieldByName('node_end_id'          ).Value := iif(Q_Client.FieldByName('node_end_id').Value = -9, null, Q_Client.FieldByName('node_end_id').Value);
    ClientDS_OrdersAgreeRail.FieldByName('node_end_cod'         ).Value := Q_Client.FieldByName('node_end_cod').Value;
    ClientDS_OrdersAgreeRail.FieldByName('node_end_name'        ).Value := Q_Client.FieldByName('node_end_name').Value;

//    ClientDS_OrdersAgreeRail.FieldByName('type_kontener_id'     ).Value := ;
//
//    ClientDS_OrdersAgreeRail.FieldByName('firm_sender_id'       ).Value := ;
//    ClientDS_OrdersAgreeRail.FieldByName('firm_sender_name'     ).Value := ;
//
//    ClientDS_OrdersAgreeRail.FieldByName('firm_reciever_id'     ).Value := ;
//    ClientDS_OrdersAgreeRail.FieldByName('firm_reciever_name'   ).Value := ;

    ClientDS_OrdersAgreeRail.FieldByName('comment'              ).Value := Q_Client.FieldByName('comment').Value;

//    ClientDS_OrdersAgreeRail.FieldByName('date_plan_pay'        ).Value := ;
//    ClientDS_OrdersAgreeRail.FieldByName('date_plan_send'       ).Value := ;
    ClientDS_OrdersAgreeRail.Post;


    if Application.MessageBox('Создать расходные услуги?', 'ВНИМАНИЕ', MB_ICONQUESTION or MB_YESNO) = IDYES then begin
      Q_Agent := TADOQuery.Create(nil);
      Q_Agent.Connection := fmMain.Lis;
      Q_Agent.Sql.Text := 'SELECT * FROM view_plan_agent_rate WHERE plan_client_rate_id = ' + IntToStr(int_plan_client_rate_id);
      Q_Agent.Open;
      Q_Agent.First;

      while not Q_Agent.Eof do begin

        ClientDS_OrdersAgreeRail.Append;

        ClientDS_OrdersAgreeRail.FieldByName('service_type'            ).Value := 1;
        ClientDS_OrdersAgreeRail.FieldByName('service_type_name'       ).Value := 'Расход';

        ClientDS_OrdersAgreeRail.FieldByName('budget_id'               ).Value := iif(Q_Agent.FieldByName('budget_id').value   = null, Q_Client.FieldByName('budget_id').value,  Q_Agent.FieldByName('budget_id').value);
        ClientDS_OrdersAgreeRail.FieldByName('budget_cod'              ).Value := iif(Q_Agent.FieldByName('budget_cod').value  = null, Q_Client.FieldByName('budget_cod').value, Q_Agent.FieldByName('budget_cod').value);
        ClientDS_OrdersAgreeRail.FieldByName('budget_name'             ).Value := iif(Q_Agent.FieldByName('budget_name').value = null, Q_Client.FieldByName('budget_name').value,Q_Agent.FieldByName('budget_name').value);

        ClientDS_OrdersAgreeRail.FieldByName('contract_id'             ).Value := iif(Q_Agent.FieldByName('contract_id').value         = null, null, Q_Agent.FieldByName('contract_id').value);
        ClientDS_OrdersAgreeRail.FieldByName('contract_cod'            ).Value := iif(Q_Agent.FieldByName('contract_cod').value        = null, null, Q_Agent.FieldByName('contract_cod').value);
        ClientDS_OrdersAgreeRail.FieldByName('firm_customer_name'      ).Value := iif(Q_Agent.FieldByName('firm_customer_name').value  = null, null, Q_Agent.FieldByName('firm_customer_name').value);

        ClientDS_OrdersAgreeRail.FieldByName('currency_id'             ).Value := iif(Q_Agent.FieldByName('currency_id').value = null, Q_Client.FieldByName('currency_id').value,Q_Agent.FieldByName('currency_id').value);
        ClientDS_OrdersAgreeRail.FieldByName('brief_name'              ).Value := iif(Q_Agent.FieldByName('brief_name').value  = null, Q_Client.FieldByName('brief_name').value, Q_Agent.FieldByName('brief_name').value);

        ClientDS_OrdersAgreeRail.FieldByName('ed_izm_id'               ).Value := iif(Q_Agent.FieldByName('ed_izm_id').value   = null, Q_Client.FieldByName('ed_izm_id').value,  Q_Agent.FieldByName('ed_izm_id').value);
        ClientDS_OrdersAgreeRail.FieldByName('ed_izm_cod'              ).Value := iif(Q_Agent.FieldByName('ed_izm_cod').value  = null, Q_Client.FieldByName('ed_izm_cod').value, Q_Agent.FieldByName('ed_izm_cod').value);
        ClientDS_OrdersAgreeRail.FieldByName('ed_izm_name'             ).Value := iif(Q_Agent.FieldByName('ed_izm_name').value = null, Q_Client.FieldByName('ed_izm_name').value,Q_Agent.FieldByName('ed_izm_name').value);

//        ClientDS_OrdersAgreeRail.FieldByName('add_sum'                 ).Value := iif((Q_Agent.FieldByName('plan_rate').value * cxCurrencyEdit3.EditValue) = null, 0, (Q.FieldByName('plan_rate').value * cxCurrencyEdit3.EditValue));
//        ClientDS_OrdersAgreeRail.FieldByName('add_count'               ).Value := cxCurrencyEdit3.EditValue;
        ClientDS_OrdersAgreeRail.FieldByName('plan_client_rate_id'     ).Value := iif(Q_Agent.FieldByName('plan_agent_rate_id').value  = null, null,  Q_Agent.FieldByName('plan_agent_rate_id').value);
        ClientDS_OrdersAgreeRail.FieldByName('add_rate'                ).Value := iif(Q_Agent.FieldByName('plan_rate').value           = null, null,  Q_Agent.FieldByName('plan_rate').value);

//        ClientDS_OrdersAgreeRail.FieldByName('count_day_vagon'         ).Value := cxCurrencyEdit5.EditValue;
//        ClientDS_OrdersAgreeRail.FieldByName('count_vagon'             ).Value := cxCurrencyEdit15.EditValue;
//        ClientDS_OrdersAgreeRail.FieldByName('count_weight'            ).Value := cxCurrencyEdit4.EditValue;

        ClientDS_OrdersAgreeRail.FieldByName('kargoETSNG_id'           ).Value := iif(Q_Agent.FieldByName('kargoETSNG_id').value   = null, Q_Client.FieldByName('kargoETSNG_id').value,  Q_Agent.FieldByName('kargoETSNG_id').value);
        ClientDS_OrdersAgreeRail.FieldByName('kargoETSNG_cod'          ).Value := iif(Q_Agent.FieldByName('kargoETSNG_cod').value  = null, Q_Client.FieldByName('kargoETSNG_cod').value, Q_Agent.FieldByName('kargoETSNG_cod').value);
        ClientDS_OrdersAgreeRail.FieldByName('kargoETSNG_name'         ).Value := iif(Q_Agent.FieldByName('kargoETSNG_name').value = null, Q_Client.FieldByName('kargoETSNG_name').value,Q_Agent.FieldByName('kargoETSNG_name').value);

//        ClientDS_OrdersAgreeRail.FieldByName('kargoETSNG_group_name'   ).Value := cxTextEdit2.EditValue;

//        ClientDS_OrdersAgreeRail.FieldByName('kargoETSNG_add_id'       ).Value := iif(FkargoETSNG_add_id = -9, null, FkargoETSNG_add_id);
//        ClientDS_OrdersAgreeRail.FieldByName('kargoETSNG_add_cod'      ).Value := cxButtonEdit15.EditValue;
//        ClientDS_OrdersAgreeRail.FieldByName('kargoETSNG_add_name'     ).Value := cxButtonEdit14.EditValue;
//
//        ClientDS_OrdersAgreeRail.FieldByName('kargoGNG_id'             ).Value := iif(FkargoGNG_id = -9, null, FkargoGNG_id);
//        ClientDS_OrdersAgreeRail.FieldByName('kargoGNG_cod'            ).Value := cxButtonEdit13.EditValue;
//        ClientDS_OrdersAgreeRail.FieldByName('kargoGNG_name'           ).Value := cxButtonEdit12.EditValue;

//        ClientDS_OrdersAgreeRail.FieldByName('state_begin_id'          ).Value := iif(Fstate_begin_id = -9, null, Fstate_begin_id);
//        ClientDS_OrdersAgreeRail.FieldByName('state_begin_name'        ).Value := cxButtonEdit1.EditValue;
//
//        ClientDS_OrdersAgreeRail.FieldByName('state_end_id'            ).Value := iif(Fstate_end_id = -9, null, Fstate_end_id);
//        ClientDS_OrdersAgreeRail.FieldByName('state_end_name'          ).Value := cxButtonEdit4.EditValue;

        ClientDS_OrdersAgreeRail.FieldByName('node_begin_id'           ).Value := iif(Q_Agent.FieldByName('node_begin_id').value   = null, Q_Client.FieldByName('node_begin_id').value,  Q_Agent.FieldByName('node_begin_id').value);
        ClientDS_OrdersAgreeRail.FieldByName('node_begin_cod'          ).Value := iif(Q_Agent.FieldByName('node_begin_cod').value  = null, Q_Client.FieldByName('node_begin_cod').value, Q_Agent.FieldByName('node_begin_cod').value);
        ClientDS_OrdersAgreeRail.FieldByName('node_begin_name'         ).Value := iif(Q_Agent.FieldByName('node_begin_name').value = null, Q_Client.FieldByName('node_begin_name').value,Q_Agent.FieldByName('node_begin_name').value);

        ClientDS_OrdersAgreeRail.FieldByName('node_end_id'             ).Value := iif(Q_Agent.FieldByName('node_end_id').value   = null,   Q_Client.FieldByName('node_end_id').value,    Q_Agent.FieldByName('node_end_id').value);
        ClientDS_OrdersAgreeRail.FieldByName('node_end_cod'            ).Value := iif(Q_Agent.FieldByName('node_end_cod').value  = null,   Q_Client.FieldByName('node_end_cod').value,   Q_Agent.FieldByName('node_end_cod').value);
        ClientDS_OrdersAgreeRail.FieldByName('node_end_name'           ).Value := iif(Q_Agent.FieldByName('node_end_name').value = null,   Q_Client.FieldByName('node_end_name').value,  Q_Agent.FieldByName('node_end_name').value);

//        ClientDS_OrdersAgreeRail.FieldByName('type_kontener_id'        ).Value := iif(Ftype_kontener_id = -9, null, Ftype_kontener_id);
//
//        ClientDS_OrdersAgreeRail.FieldByName('firm_sender_id'          ).Value := iif(Ffirm_sender_id = -9, null, Ffirm_sender_id);
//        ClientDS_OrdersAgreeRail.FieldByName('firm_sender_name'        ).Value := cxButtonEdit5.EditValue;
//
//        ClientDS_OrdersAgreeRail.FieldByName('firm_reciever_id'        ).Value := iif(Ffirm_reciever_id = -9, null, Ffirm_reciever_id);
//        ClientDS_OrdersAgreeRail.FieldByName('firm_reciever_name'      ).Value := cxButtonEdit6.EditValue;
//
//        ClientDS_OrdersAgreeRail.FieldByName('comment'                 ).Value := cxMemo1.EditValue;
//
//        ClientDS_OrdersAgreeRail.FieldByName('date_plan_pay'           ).Value := cxDateEdit1.EditValue;
//        ClientDS_OrdersAgreeRail.FieldByName('date_plan_send'          ).Value := cxDateEdit2.EditValue;

        ClientDS_OrdersAgreeRail.Post;

        Q_Agent.Next;
      end;
    end;
  end;

  Q_Client.Free;
  Q_Agent.Free;
end;

procedure TfmOrdersAgreeAdd.cxComboBox1PropertiesChange(Sender: TObject);
var contract_id       : integer;
begin
  // Проверить договор
  cxLookupComboBox1.Properties.OnChange := nil;

  if cxLookupComboBox1.EditValue <> null then contract_id := cxLookupComboBox1.EditValue;
  Query_Client.Close;
  Query_Client.Parameters.ParamByName('date_current').Value := _GetDatePeriod;
  Query_Client.Open;
  if Query_Client.Locate('contract_id', contract_id, []) then
    cxLookupComboBox1.EditValue := contract_id
  else
    cxLookupComboBox1.EditValue := null;

  cxLookupComboBox1.Properties.OnChange := cxLookupComboBox1PropertiesChange;

  // Проверить номер перевозки
  if Fdate_period <> _GetDatePeriod then begin

    // Перевозка уже создана (update)
    if Forders_agree_id <> -9 then begin
      if  YearOf(Fdate_period_save) <> YearOf(_GetDatePeriod)  then
        ChangeNumOrdersAgree(True)
      else if Fset_copy then
        ChangeNumOrdersAgree(True)
      else
        ChangeNumOrdersAgree(False);

    // Новая перевозка (insert)
    end else
      ChangeNumOrdersAgree(True);
  end;
  Fdate_period := _GetDatePeriod;

//  ChangeAddDatePeriod;
end;

procedure TfmOrdersAgreeAdd.cxGrid1DBBandedTableView1CustomDrawCell(Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
  if (cxGrid1DBBandedTableView1service_type_name.Index = AViewInfo.Item.ID) then begin
    if (AViewInfo.GridRecord.Values[cxGrid1DBBandedTableView1service_type.Index] = 0) then begin
      ACanvas.Font.Color := clRed;
      ACanvas.Font.Style := [fsBold];
    end;

    if (AViewInfo.GridRecord.Values[cxGrid1DBBandedTableView1service_type.Index] = 1) then begin
      ACanvas.Font.Color := clGreen;
      ACanvas.Font.Style := [fsBold];
    end;
  end;

  if AViewInfo.GridRecord.Selected or AViewInfo.GridRecord.Focused then begin
    ACanvas.Brush.Color := clNavy;
    ACanvas.Font.Color := clWhite;
    if AViewInfo.Focused then ACanvas.Brush.Color := clBlue;
  end;
end;

procedure TfmOrdersAgreeAdd.cxGrid1DBBandedTableView1CustomDrawColumnHeader(Sender: TcxGridTableView; ACanvas: TcxCanvas;AViewInfo: TcxGridColumnHeaderViewInfo; var ADone: Boolean);
begin
	if AViewInfo.Column.Focused then begin
		ACanvas.Brush.Color := clNavy;
		ACanvas.Font.Color := clWhite;
	end;
end;

procedure TfmOrdersAgreeAdd.cxGrid1DBBandedTableView1FilterOnChanged(
Sender: TObject);
begin
	DrawcxGridColumnOnFiltered(Sender);
end;

procedure TfmOrdersAgreeAdd.cxGrid1DBBandedTableView1FocusedItemChanged(Sender: TcxCustomGridTableView; APrevFocusedItem,AFocusedItem: TcxCustomGridTableItem);
begin
	cxGrid1DBBandedTableView1.Painter.Invalidate;
end;

procedure TfmOrdersAgreeAdd.cxGrid1DBBandedTableView1KeyPress(Sender: TObject;var Key: Char);
begin
	FilterColumnGridOnKeyPress(cxGrid1DBBandedTableView1, Key);
end;

procedure TfmOrdersAgreeAdd.cxLookupComboBox1PropertiesChange(Sender: TObject);
var contract_id  : integer;
begin
  cxButtonEdit13.EditValue := '';
  cxButtonEdit14.EditValue := '';

  if Query_Client.Active then begin
    contract_id := iif(cxLookupComboBox1.EditValue = null, -9, cxLookupComboBox1.EditValue);

   if (contract_id = Fcontract_id_save) AND (Fcontract_id_save <> -9) AND (FormatDateTime('yyyy', _GetDatePeriod) = FormatDateTime('yyyy', Fdate_period_save)) then begin
      cxTextEdit1.EditValue := Fbargain_cod_save;
      Forders_agree_num_save := -9;
   end else
      ChangeNumOrdersAgree(True);

    if Query_Client.Locate('contract_id', contract_id, []) then begin
      cxButtonEdit13.EditValue    := Query_Client.FieldByName('firm_self_name').AsString;
      cxButtonEdit14.EditValue    := Query_Client.FieldByName('contract_cod'  ).AsString;
      cxLookupComboBox3.EditValue := Query_Client.FieldByName('currency_id'   ).AsString;
    end;


    cxLookupComboBox1.ValidateEdit;
    ChangeAddContract;
  end;
end;

procedure TfmOrdersAgreeAdd.cxLookupComboBox1PropertiesValidate(Sender: TObject; var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
begin
  Error     := (cxLookupComboBox1.EditValue = null);
  ErrorText := 'Выберите клиента!';
end;

procedure TfmOrdersAgreeAdd.cxLookupComboBox3PropertiesEditValueChanged(Sender: TObject);
begin
  Label6.Caption := cxLookupComboBox3.Text;
  Label5.Caption := cxLookupComboBox3.Text;
  Label3.Caption := cxLookupComboBox3.Text;

  CalcSum;
end;

procedure TfmOrdersAgreeAdd.dxBarButton1Click(Sender: TObject);
begin
	PrintcxGrid(cxGrid1DBBandedTableView1);
end;

procedure TfmOrdersAgreeAdd.dxBarButton2Click(Sender: TObject);
begin
	SetdxDBGridColumns(cxGrid1DBBandedTableView1);
end;

procedure TfmOrdersAgreeAdd.dxBarButton3Click(Sender: TObject);
begin
	cxGrid1DBBandedTableView1.OptionsView.GroupByBox := not cxGrid1DBBandedTableView1.OptionsView.GroupByBox;
end;

procedure TfmOrdersAgreeAdd.dxBarButton4Click(Sender: TObject);
begin
  if ClientDS_OrdersAgreeRail.RecordCount > 0 then begin
    if Application.MessageBox('Добавление клиентской услуги удалит существующие доходные / расходные услуги!!!' + #10#13 + 'Продолжить?', 'ВНИМАНИЕ', MB_ICONQUESTION or MB_YESNO) = IDYES then begin
      ClientDS_OrdersAgreeRail.EmptyDataSet();
    end else
      Exit;
  end;

  if CheckValidate(cxLookupComboBox1) = True then Exit; // Проверить клиента

  fmOrdersAgreeRailAdd := TfmOrdersAgreeRailAdd.Create(Application, 0);
  fmOrdersAgreeRailAdd._SetDatePeriod      := _GetDatePeriod;
  fmOrdersAgreeRailAdd._SetContractId      := cxLookupComboBox1.EditValue;
  fmOrdersAgreeRailAdd._SetNodeBeginId     := Fnode_begin_id;
  fmOrdersAgreeRailAdd._SetNodeEndId       := Fnode_end_id;
  fmOrdersAgreeRailAdd._SetStateBeginId    := Fstate_begin_id;
  fmOrdersAgreeRailAdd._SetStateEndId      := Fstate_end_id;
  fmOrdersAgreeRailAdd._SetKargoETSNGId    := FkargoETSNG_id;
  fmOrdersAgreeRailAdd._SetFirmSenderId    := Ffirm_sender_id;
  fmOrdersAgreeRailAdd._SetFirmRecieverId  := Ffirm_reciever_id;
  fmOrdersAgreeRailAdd._SetClientOrdersAgreeRail := ClientDS_OrdersAgreeRail;

  if fmOrdersAgreeRailAdd.ShowModal = mrOk then begin
    ClientDS_OrdersAgreeRail.First;
    while not ClientDS_OrdersAgreeRail.Eof do begin
      CalcOrdersAgreeRail(ClientDS_OrdersAgreeRail.FieldByName('id').AsInteger);
      //CalcOrdersAgreeRail(fmOrdersAgreeRailAdd._GetAddId);
      ClientDS_OrdersAgreeRail.Next;
    end;
    CalcSum;
  end;
end;

procedure TfmOrdersAgreeAdd.dxBarButton5Click(Sender: TObject);
begin
  if CheckValidate(cxLookupComboBox1) = True then Exit; // Проверить клиента

  fmOrdersAgreeRailAdd := TfmOrdersAgreeRailAdd.Create(Application, 1);
  fmOrdersAgreeRailAdd._SetDatePeriod      := _GetDatePeriod;
  fmOrdersAgreeRailAdd._SetNodeBeginId     := Fnode_begin_id;
  fmOrdersAgreeRailAdd._SetNodeEndId       := Fnode_end_id;
  fmOrdersAgreeRailAdd._SetStateBeginId    := Fstate_begin_id;
  fmOrdersAgreeRailAdd._SetStateEndId      := Fstate_end_id;
  fmOrdersAgreeRailAdd._SetKargoETSNGId    := FkargoETSNG_id;
  fmOrdersAgreeRailAdd._SetFirmSenderId    := Ffirm_sender_id;
  fmOrdersAgreeRailAdd._SetFirmRecieverId  := Ffirm_reciever_id;
  fmOrdersAgreeRailAdd._SetClientOrdersAgreeRail := ClientDS_OrdersAgreeRail;

  if fmOrdersAgreeRailAdd.ShowModal = mrOk then begin
    CalcOrdersAgreeRail(fmOrdersAgreeRailAdd._GetAddId);
    CalcSum;
  end;
end;

procedure TfmOrdersAgreeAdd.dxBarButton6Click(Sender: TObject);
begin
  if CheckValidate(cxLookupComboBox1) = True then Exit; // Проверить клиента

  fmOrdersAgreeRailAdd := TfmOrdersAgreeRailAdd.Create(Application, cxGrid1DBBandedTableView1service_type.DataBinding.Field.AsInteger);
  fmOrdersAgreeRailAdd._SetDatePeriod  := _GetDatePeriod;
  fmOrdersAgreeRailAdd._SetClientOrdersAgreeRail := ClientDS_OrdersAgreeRail;
  fmOrdersAgreeRailAdd._SetUpdate := cxGrid1DBBandedTableView1id.DataBinding.Field.AsInteger;

  if fmOrdersAgreeRailAdd.ShowModal = mrOk then begin
    CalcOrdersAgreeRail(fmOrdersAgreeRailAdd._GetAddId);
    CalcSum;
  end;
end;

procedure TfmOrdersAgreeAdd.dxBarButton7Click(Sender: TObject);
begin
  if Application.MessageBox('Удалить услугу?', 'Внимание', MB_ICONSTOP or MB_YESNO) = IDYES then begin
    ClientDS_OrdersAgreeRail.Delete;
    CalcSum;
  end;
end;

procedure TfmOrdersAgreeAdd.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TfmOrdersAgreeAdd.SetInsert(value: boolean);
begin
  Screen.Cursor := crHourglass;
  _SetDatePeriod  := Date;

  Forders_agree_id       := -9;
  Forders_agree_num_save := -9;

  Fdate_period      := _GetDatePeriod;
  Fset_copy         := False;
  Fcontract_id_save := -9;
  Fdate_period_save := _GetDatePeriod;
  Fbargain_cod_save := '';
  Fnode_begin_id    := -9;
  Fnode_end_id      := -9;
  Fstate_begin_id   := -9;
  Fstate_end_id     := -9;
  FkargoETSNG_id    := -9;
  Ffirm_sender_id   := -9;
  Ffirm_reciever_id := -9;

  Query_Client.Close;
  Query_Client.Parameters.ParamByName('date_current').Value := _GetDatePeriod;
  Query_Client.Open;

  Screen.Cursor := crDefault;
end;


procedure TfmOrdersAgreeAdd.SetUpdate(orders_agree_id : integer);
var Q: TADOQuery;
begin
  Screen.Cursor    := crHourglass;
  Forders_agree_id := orders_agree_id;

  Caption := 'Параметры заявкии [' + IntToStr(Forders_agree_id) + ']';

  Q := TADOQuery.Create(nil);
  Q.Connection := fmMain.Lis;
  Q.SQL.Text := 'SELECT o.*, r.plan_rate FROM view_orders_agree o LEFT JOIN view_orders_agree_rail r ON r.orders_agree_id = o.orders_agree_id ' +
  'WHERE r.service_type = 0 AND o.orders_agree_id = ' + IntToStr(Forders_agree_id);
  Q.Open;

  _SetDatePeriod  := Q.FieldByName('date_period').Value;

  Query_Client.Close;
  Query_Client.Parameters.ParamByName('date_current').Value := _GetDatePeriod;
  Query_Client.Open;

  Fset_copy := Q.FieldByName('global_copy').AsBoolean;
  cxLookupComboBox1.EditValue := Q.FieldByName('contract_id').Value;
  cxLookupComboBox3.EditValue := Q.FieldByName('currency_id').Value;
  cxLookupComboBox6.EditValue := Q.FieldByName('rod_vagon_id').Value;

  Fstate_begin_id          := iif(Q.FieldByName('state_begin_id').IsNull,  -9,   Q.FieldByName('state_begin_id').Value);
  cxButtonEdit1.EditValue  := iif(Q.FieldByName('state_begin_id').IsNull,  null, Q.FieldByName('state_begin_name').Value);
  Fstate_end_id            := iif(Q.FieldByName('state_end_id').IsNull,    -9,   Q.FieldByName('state_end_id').Value);
  cxButtonEdit4.EditValue  := iif(Q.FieldByName('state_end_id').IsNull,    null, Q.FieldByName('state_end_name').Value);

  Fnode_begin_id           := iif(Q.FieldByName('node_begin_id').IsNull,   -9, Q.FieldByName('node_begin_id').Value);
  cxButtonEdit2.EditValue  := iif(Q.FieldByName('node_begin_id').IsNull, null, Q.FieldByName('node_begin_name').Value);
  cxButtonEdit9.EditValue  := iif(Q.FieldByName('node_begin_id').IsNull, null, Q.FieldByName('node_begin_cod').Value);

  Fnode_end_id             := iif(Q.FieldByName('node_end_id').IsNull,   -9, Q.FieldByName('node_end_id').Value);
  cxButtonEdit3.EditValue  := iif(Q.FieldByName('node_end_id').IsNull, null, Q.FieldByName('node_end_name').Value);
  cxButtonEdit10.EditValue := iif(Q.FieldByName('node_end_id').IsNull, null, Q.FieldByName('node_end_cod').Value);

  FkargoETSNG_id           := iif(Q.FieldByName('kargoETSNG_id').IsNull,   -9, Q.FieldByName('kargoETSNG_id').Value);
  cxButtonEdit5.EditValue  := iif(Q.FieldByName('kargoETSNG_id').IsNull, null, Q.FieldByName('kargoETSNG_name').Value);
  cxButtonEdit6.EditValue  := iif(Q.FieldByName('kargoETSNG_id').IsNull, null, Q.FieldByName('kargoETSNG_cod').Value);
  cxTextEdit14.EditValue   := iif(Q.FieldByName('kargoETSNG_id').IsNull, null, Q.FieldByName('kargoETSNG_group_name').Value);

  Ffirm_sender_id          := iif(Q.FieldByName('firm_sender_id').IsNull,   -9, Q.FieldByName('firm_sender_id').Value);
  cxButtonEdit15.EditValue := iif(Q.FieldByName('firm_sender_id').IsNull, null, Q.FieldByName('firm_sender_name').Value);

  Ffirm_reciever_id        := iif(Q.FieldByName('firm_reciever_id').IsNull,   -9, Q.FieldByName('firm_reciever_id').Value);
  cxButtonEdit16.EditValue := iif(Q.FieldByName('firm_reciever_id').IsNull, null, Q.FieldByName('firm_reciever_name').Value);

  cxCurrencyEdit3.EditValue:= iif(Q.FieldByName('count_weight').IsNull,    0, Q.FieldByName('count_weight').Value);
  cxCurrencyEdit6.EditValue:= iif(Q.FieldByName('count_vagon').IsNull,     0, Q.FieldByName('count_vagon').Value);
  cxCurrencyEdit5.EditValue:= iif(Q.FieldByName('count_day_vagon').IsNull, 0, Q.FieldByName('count_day_vagon').Value);

  cxMemo1.Lines.Text       := Q.FieldByName('comment').asString;

  cxButtonEdit8.EditValue  := iif(Q.FieldByName('plan_rate').IsNull, null, Q.FieldByName('plan_rate').Value);

  if Fset_copy then
    ChangeNumOrdersAgree(True)
  else
    cxTextEdit1.Text := Q.FieldByName('orders_agree_cod').AsString;


  Q.Close;
  Q.SQL.Clear;
  Q.SQL.Add('SELECT iif(plan_rate IS NULL, agent_plan_rate, plan_rate) AS plan_rate, * FROM view_orders_agree_rail WHERE orders_agree_id = ' + IntToStr(Forders_agree_id));
  Q.Open;

  while not Q.Eof do begin

    ClientDS_OrdersAgreeRail.Append;
    ClientDS_OrdersAgreeRail.FieldByName('orders_agree_rail_id'  ).Value := Q.FieldByName('orders_agree_rail_id').Value;
    ClientDS_OrdersAgreeRail.FieldByName('contract_id'           ).Value := Q.FieldByName('contract_id').Value;
    ClientDS_OrdersAgreeRail.FieldByName('contract_cod'          ).Value := Q.FieldByName('contract_cod').Value;
    ClientDS_OrdersAgreeRail.FieldByName('firm_customer_name'    ).Value := Q.FieldByName('firm_customer_name').Value;
    ClientDS_OrdersAgreeRail.FieldByName('currency_id'           ).Value := Q.FieldByName('currency_id').Value;
    ClientDS_OrdersAgreeRail.FieldByName('brief_name'            ).Value := Q.FieldByName('brief_name').Value;
    ClientDS_OrdersAgreeRail.FieldByName('date_plan_pay'         ).Value := Q.FieldByName('date_plan_pay').Value;
    ClientDS_OrdersAgreeRail.FieldByName('date_plan_send'        ).Value := Q.FieldByName('date_plan_send').Value;
    ClientDS_OrdersAgreeRail.FieldByName('ed_izm_id'             ).Value := Q.FieldByName('ed_izm_id').Value;
    ClientDS_OrdersAgreeRail.FieldByName('ed_izm_name'           ).Value := Q.FieldByName('ed_izm_name').Value;
    ClientDS_OrdersAgreeRail.FieldByName('add_count'             ).Value := Q.FieldByName('add_count').Value;
    ClientDS_OrdersAgreeRail.FieldByName('add_sum'               ).Value := Q.FieldByName('add_sum').Value;

    ClientDS_OrdersAgreeRail.FieldByName('plan_client_rate_id'   ).Value := Q.FieldByName('plan_client_rate_id').Value;
    ClientDS_OrdersAgreeRail.FieldByName('add_rate'              ).Value := Q.FieldByName('add_rate').Value;

    ClientDS_OrdersAgreeRail.FieldByName('count_vagon'           ).Value := Q.FieldByName('count_vagon').Value;
    ClientDS_OrdersAgreeRail.FieldByName('count_weight'          ).Value := Q.FieldByName('count_weight').Value;
    ClientDS_OrdersAgreeRail.FieldByName('count_day_vagon'       ).Value := Q.FieldByName('count_day_vagon').Value;
    ClientDS_OrdersAgreeRail.FieldByName('kargoETSNG_id'         ).Value := Q.FieldByName('kargoETSNG_id').Value;
    ClientDS_OrdersAgreeRail.FieldByName('kargoETSNG_cod'        ).Value := Q.FieldByName('kargoETSNG_cod').Value;
    ClientDS_OrdersAgreeRail.FieldByName('kargoETSNG_name'       ).Value := Q.FieldByName('kargoETSNG_name').Value;
    ClientDS_OrdersAgreeRail.FieldByName('kargoETSNG_add_id'     ).Value := Q.FieldByName('kargoETSNG_add_id').Value;
    ClientDS_OrdersAgreeRail.FieldByName('kargoETSNG_add_name'   ).Value := Q.FieldByName('kargoETSNG_add_name').Value;
    ClientDS_OrdersAgreeRail.FieldByName('kargoETSNG_add_cod'    ).Value := Q.FieldByName('kargoETSNG_add_cod').Value;
    ClientDS_OrdersAgreeRail.FieldByName('kargoGNG_id'           ).Value := Q.FieldByName('kargoGNG_id').Value;
    ClientDS_OrdersAgreeRail.FieldByName('kargoGNG_cod'          ).Value := Q.FieldByName('kargoGNG_cod').Value;
    ClientDS_OrdersAgreeRail.FieldByName('kargoGNG_name'         ).Value := Q.FieldByName('kargoGNG_name').Value;
    ClientDS_OrdersAgreeRail.FieldByName('state_begin_id'        ).Value := Q.FieldByName('state_begin_id').Value;
    ClientDS_OrdersAgreeRail.FieldByName('state_begin_name'      ).Value := Q.FieldByName('state_begin_name').Value;
    ClientDS_OrdersAgreeRail.FieldByName('state_end_id'          ).Value := Q.FieldByName('state_end_id').Value;
    ClientDS_OrdersAgreeRail.FieldByName('state_end_name'        ).Value := Q.FieldByName('state_end_name').Value;
    ClientDS_OrdersAgreeRail.FieldByName('node_begin_id'         ).Value := Q.FieldByName('node_begin_id').Value;
    ClientDS_OrdersAgreeRail.FieldByName('node_begin_cod'        ).Value := Q.FieldByName('node_begin_cod').Value;
    ClientDS_OrdersAgreeRail.FieldByName('node_begin_name'       ).Value := Q.FieldByName('node_begin_name').Value;
    ClientDS_OrdersAgreeRail.FieldByName('node_end_id'           ).Value := Q.FieldByName('node_end_id').Value;
    ClientDS_OrdersAgreeRail.FieldByName('node_end_cod'          ).Value := Q.FieldByName('node_end_cod').Value;
    ClientDS_OrdersAgreeRail.FieldByName('node_end_name'         ).Value := Q.FieldByName('node_end_name').Value;
    ClientDS_OrdersAgreeRail.FieldByName('type_kontener_id'      ).Value := Q.FieldByName('type_kontener_id').Value;
    ClientDS_OrdersAgreeRail.FieldByName('type_kontener_name'    ).Value := Q.FieldByName('type_kontener_name').Value;
    ClientDS_OrdersAgreeRail.FieldByName('firm_sender_id'        ).Value := Q.FieldByName('firm_sender_id').Value;
    ClientDS_OrdersAgreeRail.FieldByName('firm_sender_name'      ).Value := Q.FieldByName('firm_sender_name').Value;
    ClientDS_OrdersAgreeRail.FieldByName('firm_reciever_id'      ).Value := Q.FieldByName('firm_reciever_id').Value;
    ClientDS_OrdersAgreeRail.FieldByName('firm_reciever_name'    ).Value := Q.FieldByName('firm_reciever_name').Value;
    ClientDS_OrdersAgreeRail.FieldByName('budget_id'             ).Value := Q.FieldByName('budget_id').Value;
    ClientDS_OrdersAgreeRail.FieldByName('budget_cod'            ).Value := Q.FieldByName('budget_cod').Value;
    ClientDS_OrdersAgreeRail.FieldByName('budget_name'           ).Value := Q.FieldByName('budget_name').Value;
    ClientDS_OrdersAgreeRail.FieldByName('service_type'          ).Value := Q.FieldByName('service_type').Value;
    ClientDS_OrdersAgreeRail.FieldByName('service_type_name'     ).Value := Q.FieldByName('service_type_name').Value;
    ClientDS_OrdersAgreeRail.FieldByName('comment'               ).Value := Q.FieldByName('comment').Value;
    ClientDS_OrdersAgreeRail.FieldByName('ed_izm_cod'            ).Value := Q.FieldByName('ed_izm_cod').Value;
    ClientDS_OrdersAgreeRail.Post;

    //CalcOrdersAgreeRail(ClientDS_OrdersAgreeRail.FieldByName('id').AsInteger);
    Q.Next;
  end;
  CalcSum;
  Q.Free;
  Screen.Cursor := crDefault;
end;

procedure TfmOrdersAgreeAdd.SetUpdateOrderAgreeRail(orders_agree_rail_id: integer);
var Q: TADOQuery;
begin

  Q := TADOQuery.Create(nil);
  Q.Connection := fmMain.Lis;
  Q.SQL.Add('SELECT * FROM view_orders_agree_rail WHERE orders_agree_rail_id = ' + IntToStr(orders_agree_rail_id));
  Q.Open;

  _SetUpdate := Q.FieldByName('orders_agree_id').AsInteger;

  Q.Free;

  if ClientDS_OrdersAgreeRail.Locate('orders_agree_rail_id', orders_agree_rail_id, []) then begin

    if CheckValidate(cxLookupComboBox1) = True then Exit; // Проверить клиента

    fmOrdersAgreeRailAdd := TfmOrdersAgreeRailAdd.Create(Application, cxGrid1DBBandedTableView1service_type.DataBinding.Field.AsInteger);
    fmOrdersAgreeRailAdd._SetDatePeriod  := _GetDatePeriod;
    fmOrdersAgreeRailAdd._SetClientOrdersAgreeRail := ClientDS_OrdersAgreeRail;
    fmOrdersAgreeRailAdd._SetUpdate := cxGrid1DBBandedTableView1id.DataBinding.Field.AsInteger;

    if fmOrdersAgreeRailAdd.ShowModal = mrOk then begin
      CalcOrdersAgreeRail(fmOrdersAgreeRailAdd._GetAddId);
      CalcSum;
    end else
      exit;
  end;
end;

procedure TfmOrdersAgreeAdd.SetDatePeriod(date_period: variant);
begin
  cxComboBox1.Properties.OnChange := nil;
  cxComboBox2.Properties.OnChange := nil;

  if date_period <> null then begin
    cxComboBox1.ItemIndex := StrToInt(FormatDateTime('m', date_period))-1;
    cxComboBox2.ItemIndex := cxComboBox2.Properties.Items.IndexOf(FormatDateTime('yyyy', date_period));
  end else begin
    cxComboBox1.ItemIndex := -1;
    cxComboBox2.ItemIndex := -1;
  end;

  Fdate_period := _GetDatePeriod;

  cxComboBox1.Properties.OnChange := cxComboBox1PropertiesChange;
  cxComboBox2.Properties.OnChange := cxComboBox1PropertiesChange;
end;

function  TfmOrdersAgreeAdd.GetDatePeriod(): variant;
begin
  if (cxComboBox1.ItemIndex = -1) or (cxComboBox2.ItemIndex = -1) then
    Result := null
  else
    Result := EncodeDate(StrToInt(cxComboBox2.Text), cxComboBox1.ItemIndex+1, 15);
end;

procedure TfmOrdersAgreeAdd.ChangeNumOrdersAgree(check_change: boolean);
begin
  if check_change then begin
    cxTextEdit1.EditValue := GetCodByFirm(fmMain.Lis, -9, Query_client.FieldByName('firm_self').AsInteger, 15, _GetDatePeriod, Forders_agree_num_save);
  end else begin
    Forders_agree_num_save := -9;
    cxTextEdit1.EditValue := Fbargain_cod_save;
  end;
end;


function TfmOrdersAgreeAdd.FindInfObj(caption_name: string; table_name: string; set_cod: boolean; var id: integer; var cod: string; var name: string): boolean;
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
    Q.SQL.Add('AND (LEFT(' + DateToSQL(_GetDatePeriod) + ', 6) BETWEEN convert(varchar(6), date_begin, 112) AND convert(varchar(6), date_end, 112) OR date_end is null)');
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

function TfmOrdersAgreeAdd.SaveOrdersAgree(): boolean;
begin
end;

procedure TfmOrdersAgreeAdd.CalcOrdersAgreeRail(id: integer);
var                    koef : integer;
  SP_orders_agree_rail_CALC : TADOStoredProc;
begin
  if ClientDS_OrdersAgreeRail.Locate('id', id, []) then begin

    SP_orders_agree_rail_CALC := TADOStoredProc.Create(nil);
    SP_orders_agree_rail_CALC.Connection := fmMain.Lis;
    SP_orders_agree_rail_CALC.ProcedureName := 'SP_orders_agree_rail_CALC';
    SP_orders_agree_rail_CALC.Parameters.Refresh;
    SP_orders_agree_rail_CALC.Parameters.ParamByName('@currency_id'    ).Value := ClientDS_OrdersAgreeRail.FieldByName('currency_id').Value;
    SP_orders_agree_rail_CALC.Parameters.ParamByName('@ed_izm_id'      ).Value := ClientDS_OrdersAgreeRail.FieldByName('ed_izm_id').Value;
    SP_orders_agree_rail_CALC.Parameters.ParamByName('@count_day_vagon').Value := ClientDS_OrdersAgreeRail.FieldByName('count_day_vagon').Value;
    SP_orders_agree_rail_CALC.Parameters.ParamByName('@count_vagon'    ).Value := ClientDS_OrdersAgreeRail.FieldByName('count_vagon').Value;
    SP_orders_agree_rail_CALC.Parameters.ParamByName('@count_weight'   ).Value := ClientDS_OrdersAgreeRail.FieldByName('count_weight').Value;
    SP_orders_agree_rail_CALC.Parameters.ParamByName('@add_rate'       ).Value := ClientDS_OrdersAgreeRail.FieldByName('add_rate').Value;

    try
      SP_orders_agree_rail_CALC.ExecProc;
    except
    end;

    if ClientDS_OrdersAgreeRail.FieldByName('service_type').Value = 0 then
      koef := 1
    else
      koef := -1;

    ClientDS_OrdersAgreeRail.Edit;
    ClientDS_OrdersAgreeRail.FieldByName('add_sum'        ).Value := koef * SP_orders_agree_rail_CALC.Parameters.ParamByName('@add_sum').Value;
//    ClientDS_OrdersAgreeRail.FieldByName('add_rate'       ).Value := koef * SP_orders_agree_rail_CALC.Parameters.ParamByName('@add_rate').Value;
//    ClientDS_OrdersAgreeRail.FieldByName('add_count'      ).Value := koef * SP_orders_agree_rail_CALC.Parameters.ParamByName('@add_count').Value;

//    ClientDS_OrdersAgreeRail.FieldByName('count_day_vagon').Value := koef * SP_orders_agree_rail_CALC.Parameters.ParamByName('@count_day_vagon').Value;
//    ClientDS_OrdersAgreeRail.FieldByName('count_vagon'    ).Value := koef * SP_orders_agree_rail_CALC.Parameters.ParamByName('@count_vagon').Value;
//    ClientDS_OrdersAgreeRail.FieldByName('count_weight'   ).Value := koef * SP_orders_agree_rail_CALC.Parameters.ParamByName('@count_weight').Value;
    ClientDS_OrdersAgreeRail.Post;

     SP_orders_agree_rail_CALC.Free;
  end;
end;

procedure TfmOrdersAgreeAdd.CalcSum();
var ClientDS_temp: TClientDataSet;
    sum_client : currency;
    sum_agent  : currency;
    field_name : string;
    id         : integer;
    count_vagon  : integer;
    count_weight : Double;
    count_day    : integer;
begin
  sum_client := 0;
  sum_agent  := 0;

  count_vagon  := 0;
  count_weight := 0;
  count_day    := 0;

  ClientDS_temp := TClientDataSet.Create(nil);
  ClientDS_temp.Data := ClientDS_OrdersAgreeRail.Data;
  ClientDS_temp.First;
  while not ClientDS_temp.Eof do begin
    if ClientDS_temp.FieldByName('service_type').AsInteger = 0 then sum_client := sum_client + ClientDS_temp.FieldByName('add_sum').AsCurrency;
    if ClientDS_temp.FieldByName('service_type').AsInteger = 1 then sum_agent  := sum_agent  + ClientDS_temp.FieldByName('add_sum').AsCurrency;

    if ClientDS_temp.FieldByName('ed_izm_cod').AsString = '000' then begin
      if count_weight < ClientDS_temp.FieldByName('count_weight').Value then count_weight := ClientDS_temp.FieldByName('count_weight').Value;
    end;

    if (ClientDS_temp.FieldByName('ed_izm_cod').AsString = '001') or (ClientDS_temp.FieldByName('ed_izm_cod').AsString = '002') or (ClientDS_temp.FieldByName('ed_izm_cod').AsString = '003') then begin
      if count_vagon < ClientDS_temp.FieldByName('count_vagon').Value then count_vagon := ClientDS_temp.FieldByName('count_vagon').Value;
    end;

    if ClientDS_temp.FieldByName('ed_izm_cod').AsString = '004' then begin
      if count_day < ClientDS_temp.FieldByName('count_day_vagon').Value then count_day := ClientDS_temp.FieldByName('count_day_vagon').Value;
    end;


    ClientDS_temp.Next;
  end;
  ClientDS_temp.Free;

//  if sum_agent > 0 then
//    sum_agent := sum_agent * (-1);

  cxCurrencyEdit1.EditValue := sum_client;
  cxCurrencyEdit4.EditValue := sum_agent;
  cxCurrencyEdit2.EditValue := sum_client - abs(sum_agent);

//  cxCurrencyEdit3.EditValue := count_weight;
//  cxCurrencyEdit6.EditValue := count_vagon;
//  cxCurrencyEdit5.EditValue := count_day;
end;

procedure TfmOrdersAgreeAdd.SetKargoAdd(set_kargo_add: boolean);
begin
end;

procedure TfmOrdersAgreeAdd.RefreshClientDS_Rate();
begin
end;

procedure TfmOrdersAgreeAdd.LoacteOrdersAgreeRail(orders_agree_rail_id: integer);
begin
end;

procedure TfmOrdersAgreeAdd.ChangeAddContract();
begin
end;

function TfmOrdersAgreeAdd.CheckValidate(ACustomEdit: TcxCustomMaskEdit): boolean;
var display_value : variant;
    error_text    : TCaption;
    set_error     : boolean;
begin
  ACustomEdit.Properties.ValidateDisplayValue(display_value, error_text, set_error, ACustomEdit);
  if set_error = True then begin
    Application.MessageBox(PChar(error_text), 'Ошибка!', MB_ICONERROR or MB_OK);
    ACustomEdit.ValidateEdit;
    ACustomEdit.SetFocus;
  end;

  Result := set_error;
end;

end.
