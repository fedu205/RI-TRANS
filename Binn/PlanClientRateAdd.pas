unit PlanClientRateAdd;

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
  dxSkinVisualStudio2013Dark, dxSkinVisualStudio2013Light, dxSkinVS2010, dxSkinWhiteprint, dxSkinXmas2008Blue, dxSkinscxPCPainter, dxBarBuiltInMenu, cxPC, dxSkinTheBezier, Vcl.Menus, cxButtons,
  dxSkinOffice2019Colorful;

type
  TfmPlanClientRateAdd = class(TForm)
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
    ClientDataSet1node_begin_id: TIntegerField;
    ClientDataSet1node_begin_cod: TStringField;
    ClientDataSet1node_begin_name: TStringField;
    ClientDataSet1node_end_id: TIntegerField;
    DS_Type_Rate: TDataSource;
    Query_Type_Rate: TADOQuery;
    Query_TypeBargain: TADOQuery;
    DS_TypeBargain: TDataSource;
    Query_SHABLON: TADOQuery;
    DS_SHABLON: TDataSource;
    Query_RodVagon: TADOQuery;
    DS_RodVagon: TDataSource;
    DS_NDSName: TDataSource;
    Query_NDSName: TADOQuery;
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label12: TLabel;
    Label23: TLabel;
    cxButtonEdit2: TcxButtonEdit;
    cxButtonEdit3: TcxButtonEdit;
    cxButtonEdit5: TcxButtonEdit;
    cxDateEdit1: TcxDateEdit;
    cxLookupComboBox1: TcxLookupComboBox;
    cxButtonEdit1: TcxButtonEdit;
    cxButtonEdit4: TcxButtonEdit;
    cxButtonEdit6: TcxButtonEdit;
    cxButtonEdit7: TcxButtonEdit;
    cxDateEdit2: TcxDateEdit;
    cxLookupComboBox4: TcxLookupComboBox;
    cxLookupComboBox5: TcxLookupComboBox;
    cxLookupComboBox7: TcxLookupComboBox;
    cxButtonEdit12: TcxButtonEdit;
    cxTextEdit6: TcxTextEdit;
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
    cxTextEdit1: TcxTextEdit;
    cxLookupComboBox8: TcxLookupComboBox;
    ClientDataSet1node_end_cod: TStringField;
    ClientDataSet1node_end_name: TStringField;
    Button2: TButton;
    ClientDS_TableRate: TClientDataSet;
    ClientDS_TableRatedist_begin: TIntegerField;
    ClientDS_TableRatedist_end: TIntegerField;
    ClientDS_TableRatedist_rate_val: TFloatField;
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
    procedure cxButtonEdit12PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure Button2Click(Sender: TObject);
    procedure cxComboBox1PropertiesEditValueChanged(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
  private
    Fplan_client_rate_id : integer;
    Ftype_action : integer;
    Ftype_rate   : integer;
    Fnode_begin_id, Fnode_end_id, FkargoETSNG_id : integer;

    Fbudget_id : integer;
    Fclosed_rate : Boolean;
    procedure SetUpdate(plan_client_rate_id: integer);

  public
    constructor Create(AOwner: TApplication; type_rate: integer);
  published
    property _SetUpdate : integer write SetUpdate;
    property _GetPlanClientRateId : integer read Fplan_client_rate_id;
  end;

var
  fmPlanClientRateAdd: TfmPlanClientRateAdd;

implementation
   uses Main, PlanClient, Filter, Other, Raznoe;
{$R *.dfm}



constructor TfmPlanClientRateAdd.Create(AOwner: TApplication; type_rate: integer);
begin
  inherited Create(AOwner);
  Screen.Cursor := crHourglass;

  Ftype_action := 0;
  Ftype_rate := type_rate;  // 0-для факта отгрузки Толстошеева, 1-для авт. разноса вагонов по ставкам
  Fplan_client_rate_id := -9;
  Fnode_begin_id       := -9;
  Fnode_end_id         := -9;
  Fbudget_id           := -9;

  cxDateEdit1.EditValue := Date;

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
  //Query_NDSName.Locate('inf_obj_cod', '18', []);
  cxLookupComboBox8.EditValue := Query_NDSName.FieldByName('inf_obj_id').AsInteger;

  Query_SHABLON.Open;

  cxDateEdit1.EditValue := Date;
  cxDateEdit2.EditValue := DateOF(EndOfTheYear(Date));

  ClientDataSet1.CreateDataSet;
  ClientDataSet1.LogChanges := False;

  ClientDS_TableRate.CreateDataSet;
  ClientDS_TableRate.LogChanges := False;

  MonitorEventFormOpen('OPEN_FORM', self.Name, fmMain.Lis, -9);
  Screen.Cursor := crDefault;
end;


procedure TfmPlanClientRateAdd.cxButtonEdit2PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
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
                  cxButtonEdit2.EditValue := null;
                  cxButtonEdit4.EditValue := null;
                end;
          3,5 : begin
                  Fnode_end_id := -9;
                  cxButtonEdit3.EditValue := null;
                  cxButtonEdit6.EditValue := null;
                end;
        end;
  end;
end;

procedure TfmPlanClientRateAdd.cxButtonEdit5PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
var  new_str : string;
begin
  case AButtonIndex of
    0 : begin
          Query_Node.Close;
          Query_Node.SQL.Clear;
          if InputQuery('Поиск', 'Шаблон НАИМЕНОВАНИЯ для груза ЕТСНГ:', new_str) then begin
            Query_Node.SQL.Add('SELECT inf_obj_id, inf_obj_name, inf_obj_cod FROM inf_obj_ETSNG where inf_obj_name LIKE ''%'+new_str+'%'' and (dbo.GetInfObjVisible(str_group_visible) = 1) order by inf_obj_name');
            Query_Node.Open;
            fmFilter := TfmFilter.Create(0, Query_Node, 'inf_obj_id', 'inf_obj_cod', 'inf_obj_name');
            if fmFilter.ShowModal = mrOk then begin
              cxButtonEdit5.Text := fmFilter.GetName;
              cxButtonEdit7.Text := fmFilter.GetCod;;
              FkargoETSNG_id     := fmFilter.GetId;
            end;
          end;
        end;
    1 : begin
          FkargoETSNG_id     := -9;
          cxButtonEdit5.EditValue := null;
          cxButtonEdit7.EditValue := null;
        end;
  end;
end;

procedure TfmPlanClientRateAdd.cxButtonEdit7PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
var  new_str : string;
begin
  case AButtonIndex of
    0 : begin
          Query_Node.Close;
          Query_Node.SQL.Clear;
          if InputQuery('Поиск', 'Шаблон КОДА для груза ЕТСНГ:', new_str) then begin
            Query_Node.SQL.Add('SELECT inf_obj_id, inf_obj_name, inf_obj_cod FROM inf_obj_ETSNG where inf_obj_cod LIKE ''%'+new_str+'%'' and (dbo.GetInfObjVisible(str_group_visible) = 1) order by inf_obj_cod');
            Query_Node.Open;
            fmFilter := TfmFilter.Create(0, Query_Node, 'inf_obj_id', 'inf_obj_cod', 'inf_obj_name');
            if fmFilter.ShowModal = mrOk then begin
              cxButtonEdit5.Text := fmFilter.GetName;
              cxButtonEdit7.Text := fmFilter.GetCod;;
              FkargoETSNG_id     := fmFilter.GetId;
            end;
          end;
        end;
    1 : begin
          FkargoETSNG_id     := -9;
          cxButtonEdit5.EditValue := null;
          cxButtonEdit7.EditValue := null;
        end;
  end;
end;

procedure TfmPlanClientRateAdd.cxComboBox1PropertiesEditValueChanged(Sender: TObject);
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
end;

procedure TfmPlanClientRateAdd.cxButton1Click(Sender: TObject);
var  SP : TADOStoredProc;
begin
  Screen.Cursor := crHourglass;
  if Fclosed_rate then begin
    //ModalResult := mrOk;
    //exit;
  end;

  if VarIsNull(cxDateEdit1.EditValue) then begin
    Application.MessageBox('Не указана дата начала.','Внимание',MB_OK+MB_ICONERROR);
    ModalResult := mrNone;
    Screen.Cursor := crDefault;
    exit;
  end;
  if VarIsNull(cxDateEdit2.EditValue) then begin
    Application.MessageBox('Не указана дата окончания.','Внимание',MB_OK+MB_ICONERROR);
    ModalResult := mrNone;
    Screen.Cursor := crDefault;
    exit;
  end;
  if VarIsNull(cxCurrencyEdit2.EditValue) and (cxComboBox1.ItemIndex = -1) then begin
    Application.MessageBox('Выберите ставку или сетку ставок.', 'Внимание', MB_OK+MB_ICONERROR);
    ModalResult := mrNone;
    Screen.Cursor := crDefault;
    exit;
  end;

  //расчет расстояния
  if (cxButtonEdit4.Text <> '') and (cxButtonEdit6.Text <> '') then
   GetCalcDistanceDB(cxButtonEdit4.Text, cxButtonEdit6.Text, fmMain.Lis, False, Date);

  SP := TADOStoredProc.Create(nil);
  SP.Connection := fmMain.Lis;
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
  SP.Parameters.ParamByName('@plan_rate').Value           := cxCurrencyEdit2.EditValue;
  SP.Parameters.ParamByName('@currency_id').Value         := cxLookupComboBox2.EditValue;
  SP.Parameters.ParamByName('@ed_izm_id').Value           := cxLookupComboBox3.EditValue;
  SP.Parameters.ParamByName('@type_rate_id').Value        := cxLookupComboBox4.EditValue;
  SP.Parameters.ParamByName('@type_plan_client_id').Value := cxLookupComboBox5.EditValue;
  SP.Parameters.ParamByName('@rod_vagon_id').Value        := cxLookupComboBox7.EditValue;

  SP.Parameters.ParamByName('@rate_nds_id').Value         := cxLookupComboBox8.EditValue;//id НДС
  SP.Parameters.ParamByName('@budget_id').Value           := iif(Fbudget_id = -9, null, Fbudget_id);

  SP.Parameters.ParamByName('@table_rate_id'      ).Value := cxLookupComboBox6.EditValue;
  SP.Parameters.ParamByName('@sheet_num'          ).Value := cxComboBox1.ItemIndex;

  if ClientDS_TableRate.RecordCount = 0 then SP.Parameters.ParamByName('@table_rate_xml' ).Value := null
  else SP.Parameters.ParamByName('@table_rate_xml' ).Value  := DataXMLToSQL(ClientDS_TableRate);

  SP.ExecProc;

  Fplan_client_rate_id := SP.Parameters.ParamByName('@plan_client_rate_id').Value;

  SP.Free;
  Screen.Cursor := crDefault;
end;

procedure TfmPlanClientRateAdd.cxButtonEdit12PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
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

procedure TfmPlanClientRateAdd.cxLookupComboBox1PropertiesEditValueChanged(Sender: TObject);
begin
  Query_Client.Locate('contract_id', cxLookupComboBox1.EditValue, []);
  cxButtonEdit1.EditText := Query_Client.FieldByName('contract_cod').AsString;
end;

procedure TfmPlanClientRateAdd.cxLookupComboBox4PropertiesEditValueChanged(Sender: TObject);
begin
 Query_Type_Rate.Locate('inf_obj_id',cxLookupComboBox4.EditValue,[]);
 case Query_Type_Rate.FieldByName('inf_obj_cod').AsInteger of
   1: begin
        Label6.Caption := 'Ставка .....................';
        cxLookupComboBox3.Visible := True;
        cxLookupComboBox3.EditValue := Query_Ed_Izm.FieldByName('inf_obj_id').Value;
      end;
   2: begin
        Label6.Caption := 'Процент.....................';
        cxLookupComboBox3.Visible := False;
        cxLookupComboBox3.EditValue := NULL;
      end;
 3,4: begin
        Label6.Caption := 'Фикс. сумма....................';
        cxLookupComboBox3.Visible := False;
        cxLookupComboBox3.EditValue := NULL;
      end;
 end;
end;

procedure TfmPlanClientRateAdd.SetUpdate(plan_client_rate_id: integer);
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

  cxLookupComboBox1.EditValue := Q.FieldByName('contract_id').Value;
  cxLookupComboBox2.EditValue := Q.FieldByName('currency_id').Value;
  cxLookupComboBox3.EditValue := Q.FieldByName('ed_izm_id').Value;
  cxLookupComboBox4.EditValue := Q.FieldByName('type_rate_id').Value;
  cxLookupComboBox5.EditValue := Q.FieldByName('type_plan_client_id').Value;
  cxLookupComboBox7.EditValue := Q.FieldByName('rod_vagon_id').Value;

  Fnode_begin_id := iif(VarIsNull(Q.FieldByName('node_begin_id').Value), -9, Q.FieldByName('node_begin_id').AsInteger);
  cxButtonEdit2.EditValue := Q.FieldByName('node_begin_name').AsString;
  cxButtonEdit4.EditValue := Q.FieldByName('node_begin_cod').AsString;

  Fnode_end_id   := iif(VarIsNull(Q.FieldByName('node_end_id').Value)  , -9, Q.FieldByName('node_end_id').AsInteger);
  cxButtonEdit3.EditValue := Q.FieldByName('node_end_name').AsString;
  cxButtonEdit6.EditValue := Q.FieldByName('node_end_cod').AsString;

  FkargoETSNG_id := iif(VarIsNull(Q.FieldByName('kargoETSNG_id').Value), -9, Q.FieldByName('kargoETSNG_id').AsInteger);
  cxButtonEdit5.EditValue := Q.FieldByName('kargoETSNG_name').AsString;
  cxButtonEdit7.EditValue := Q.FieldByName('kargoETSNG_cod').AsString;

  Fbudget_id := iif(VarIsNull(Q.FieldByName('budget_id').Value), -9, Q.FieldByName('budget_id').AsInteger);
  cxButtonEdit12.EditValue  := Q.FieldByName('budget_name').AsString;
  cxTextEdit6.EditValue     := Q.FieldByName('budget_cod').AsString;

  if not VarIsNull(Q.FieldByName('plan_rate').Value) then
    cxCurrencyEdit2.EditValue := Q.FieldByName('plan_rate').Value;

  cxLookupComboBox8.EditValue := Q.FieldByName('rate_nds_id').Value;

  cxLookupComboBox6.EditValue := Q.FieldByName('table_rate_id').Value;
  if not Q.FieldByName('sheet_num').IsNull then
   cxComboBox1.ItemIndex       :=  Q.FieldByName('sheet_num').Value;

  Q.Close;
  Q.SQL.Clear;
  Q.SQL.Add('SELECT * FROM view_plan_client_rights WHERE plan_client_rate_id=' + IntToStr(Fplan_client_rate_id));
  Q.Open;
  if Q.RecordCount <> 0 then begin
    Application.MessageBox('Редактирование ставки невозможно. Она используется в планируемых перевозках!','Внимание',MB_OK+MB_ICONWARNING);
    cxDateEdit1.Enabled := False;
    //cxDateEdit2.Enabled := False;
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
  Q.Free;

  MonitorEventFormOpen('OPEN_FORM', self.Name, fmMain.Lis, Fplan_client_rate_id);
  Screen.Cursor := crDefault;
end;

procedure TfmPlanClientRateAdd.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TfmPlanClientRateAdd.cxLookupComboBox6PropertiesEditValueChanged(Sender: TObject);
var
  exWks, exApp, exWkb : variant;
  i: integer;
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
   cxCurrencyEdit2.Enabled := False;
   cxCurrencyEdit2.EditValue := NULL;
  end;
end;

procedure TfmPlanClientRateAdd.Button1Click(Sender: TObject);
var
  exWks, exApp, exWkb : variant;
  dist                : variant;
  rate_val            : currency;
  nds                 : boolean;
  rows                : integer;
begin

  if Fnode_begin_id = -9 then begin
    ShowTextMessage;
    Application.MessageBox('Не указана станция отправления.','Внимание',MB_OK+MB_ICONERROR);
    ModalResult := mrNone;
    Screen.Cursor := crDefault;
    exit;
  end;

  if Fnode_end_id = -9 then begin
    ShowTextMessage;
    Application.MessageBox('Не указана станция назначения.','Внимание',MB_OK+MB_ICONERROR);
    ModalResult := mrNone;
    Screen.Cursor := crDefault;
    exit;
  end;

  if cxComboBox1.ItemIndex = -1 then begin
    ShowTextMessage;
    Screen.Cursor := crDefault;
    Application.MessageBox('Не выбран лист сетки.', 'Ошибка', MB_OK + MB_ICONWARNING);
    exit;
  end;

  ShowTextMessage('Расчет расстояния...', False);

  dist := null;
//  dist := GetCalcDistance(cxButtonEdit4.Text, cxButtonEdit6.Text, -9, ''); //Fast(node_begin, node_end);//
  dist := GetCalcDistanceDB(cxButtonEdit4.Text, cxButtonEdit6.Text, fmMain.Lis, False, Date);
  cxTextEdit1.Text := VarToStr(dist) + 'км.';
  if dist = null then begin
    ShowTextMessage;
    Screen.Cursor := crDefault;
    Application.MessageBox('Не определено расстояние между станциями перевозки', 'Ошибка', MB_OK + MB_ICONWARNING);
    exit;
  end;

  ShowTextMessage('Запуск Excel...', False);
  exApp := CreateOleObject('Excel.Application');
  exWkb := exApp.Workbooks.Open(GetDocBlob(fmMain.Lis, Query_SHABLON.FieldByName('doc_cod').AsInteger, 5), EmptyParam, True);
  exWks := exWkb.WorkSheets[cxComboBox1.ItemIndex + 1];
  ShowTextMessage('Расчет ставки...', False);
  rate_val := 0;
  if dist <> null then begin
    // Находим ставку
    rows := 2;
    rate_val := 0;
    while True do begin
      if TVarData(exWks.Cells[rows, 1].Value).VType = varEmpty then break;

      if (exWks.Range['A'+IntToStr(rows)].Value <= dist)
          and (dist <= exWks.Range['B'+IntToStr(rows)].Value)
      then begin
        rate_val := exWks.Range['C'+IntToStr(rows)].Value;
        rate_val := RoundCurr(rate_val, -2);
        if nds then
          rate_val := RoundCurr(rate_val * 1.18, -2);

        break;
      end;
      rows := rows + 1;
    end;
  end;

  cxCurrencyEdit2.EditValue := rate_val;
  ShowTextMessage;
  exApp.Quit;
  exWks := Null;
  VarClear(exWks);
  VarClear(exWkb);
end;

procedure TfmPlanClientRateAdd.Button2Click(Sender: TObject);
begin
  cxCurrencyEdit2.Enabled:= True;
  ClientDS_TableRate.EmptyDataSet;
  cxLookupComboBox6.EditValue := NULL;
  cxComboBox1.Properties.Items.Clear;
  cxComboBox1.EditValue := NULL;
  cxComboBox1.ItemIndex := -1;
end;

end.
