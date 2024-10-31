unit FactCard;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs, Default,
  ExtCtrls, DBCtrls, Db, StdCtrls, Mask, Buttons, ADODB, ComCtrls,
  cxControls, cxContainer, cxEdit, cxTextEdit, cxMaskEdit, cxButtonEdit, Variants, cxCheckBox, cxGraphics,
  cxDropDownEdit, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, cxCalendar, cxDBEdit,
  cxGridDBBandedTableView, StrUtils, DBClient, ToolWin, cxMemo, cxLabel,
  cxLookAndFeels, cxLookAndFeelPainters, cxPC, cxPropertiesStore,
  dxBarBuiltInMenu, dxCore, cxDateUtils, cxClasses, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
  dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMetropolis,
  dxSkinMetropolisDark, dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue,
  dxSkinOffice2010Silver, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinOffice2016Colorful, dxSkinOffice2016Dark, dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic,
  dxSkinSharp, dxSkinSharpPlus, dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008, dxSkinTheAsphaltWorld, dxSkinTheBezier, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark, dxSkinVisualStudio2013Light, dxSkinVS2010, dxSkinWhiteprint, dxSkinXmas2008Blue, Vcl.Menus, cxButtons,
  dxSkinOffice2019Colorful;

type
  TfmFactCard = class(TForm)
    DS_FirmInfo: TDataSource;
    Query_FirmInfo: TADOQuery;
    Panel2: TPanel;
    SP_FactUpdate: TADOStoredProc;
    Query_Currency: TADOQuery;
    DS_Currency: TDataSource;
    ClientDataSet1: TClientDataSet;
    ClientDataSet1fact_id: TIntegerField;
    ClientDataSet1bargain_id: TIntegerField;
    ClientDataSet1num_document_pref: TStringField;
    ClientDataSet1num_document: TStringField;
    ClientDataSet1num_vagon: TIntegerField;
    ClientDataSet1num_konten: TStringField;
    ClientDataSet1date_from_to: TDateField;
    ClientDataSet1datpr: TDateField;
    ClientDataSet1fact_weight: TFloatField;
    ClientDataSet1calc_weight: TFloatField;
    ClientDataSet1fkv: TIntegerField;
    ClientDataSet1cod_exception: TIntegerField;
    ClientDataSet1vid_transfer: TIntegerField;
    ClientDataSet1calc_weight_check: TBooleanField;
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
    ClientDataSet1node_end_SNG_name: TStringField;
    ClientDataSet1transport_pay: TFloatField;
    ClientDataSet1nds: TFloatField;
    ClientDataSet1add_collection: TFloatField;
    ClientDataSet1currency_id: TIntegerField;
    ClientDataSet1firm_info_id: TIntegerField;
    ClientDataSet1file_load_info: TStringField;
    ClientDataSet1sub_cod_self: TStringField;
    ClientDataSet1set_main: TBooleanField;
    ClientDataSet1node_end_SNG_cod: TStringField;
    ClientDataSet1vid_transfer_name: TStringField;
    ClientDataSet1fact_etran_comment: TStringField;
    ClientDataSet1fact_users_comment: TStringField;
    ClientDataSet1date_ready: TDateTimeField;
    ClientDataSet1node_begin_SNG_id: TIntegerField;
    ClientDataSet1node_begin_SNG_cod: TStringField;
    ClientDataSet1node_begin_SNG_name: TStringField;
    ClientDataSet1exchange_val: TFloatField;
    ClientDataSet1quantity: TCurrencyField;
    ClientDataSet1date_delivery: TDateTimeField;
    ClientDataSet1payer_cod: TStringField;
    ClientDataSet1claim_num: TStringField;
    ClientDataSet1claim_id: TIntegerField;
    ClientDataSet1etran_owner_name: TStringField;
    ClientDataSet1etran_fact_load: TDateTimeField;
    ClientDataSet1etran_date_ready: TDateTimeField;
    ClientDataSet1etran_date_departure: TDateTimeField;
    ClientDataSet1etran_date_arrive: TDateTimeField;
    ClientDataSet1etran_date_delivery: TDateTimeField;
    ClientDataSet1etran_folder: TStringField;
    ClientDataSet1set_depo_repair: TBooleanField;
    ClientDataSet1set_econ_tarif: TIntegerField;
    ClientDataSet1kargo_capacity: TCurrencyField;
    cxPageControl1: TcxPageControl;
    cxTabSheet1: TcxTabSheet;
    Panel1: TPanel;
    Label3: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label47: TLabel;
    Label13: TLabel;
    Label20: TLabel;
    Label23: TLabel;
    Label29: TLabel;
    cxCheckBox_is_datpr: TcxCheckBox;
    cxTextEdit_num_document: TcxTextEdit;
    cxTextEdit_num_document_pref: TcxTextEdit;
    cxTextEdit_num_vagon: TcxTextEdit;
    cxTextEdit_num_konten: TcxTextEdit;
    cxDateEdit_date_from_to: TcxDateEdit;
    cxDateEdit_datpr: TcxDateEdit;
    cxTextEdit_fact_weight: TcxTextEdit;
    cxTextEdit_kargo_capacity: TcxTextEdit;
    cxTextEdit_fkv: TcxTextEdit;
    cxCheckBox4: TcxCheckBox;
    cxCheckBox5: TcxCheckBox;
    cxCheckBox6: TcxCheckBox;
    cxCheckBox7: TcxCheckBox;
    cxCheckBox8: TcxCheckBox;
    cxCheckBox9: TcxCheckBox;
    cxCheckBox10: TcxCheckBox;
    cxCheckBox19: TcxCheckBox;
    Panel6: TPanel;
    Label25: TLabel;
    cxCheckBox_calc_weight_check: TcxCheckBox;
    cxTextEdit_calc_weight: TcxTextEdit;
    cxCheckBox23: TcxCheckBox;
    cxCheckBox2: TcxCheckBox;
    cxLabel_etran_folder: TcxLabel;
    cxCheckBox24: TcxCheckBox;
    cxCheckBox_is_date_ready: TcxCheckBox;
    cxTextEdit_quantity: TcxTextEdit;
    cxCheckBox16: TcxCheckBox;
    cxCheckBox_is_date_delivery: TcxCheckBox;
    cxDateEdit_date_delivery: TcxDateEdit;
    cxCheckBox39: TcxCheckBox;
    cxDateEdit_date_ready: TcxDateEdit;
    Panel5: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label22: TLabel;
    Label30: TLabel;
    cxButtonEdit_state_begin_name: TcxButtonEdit;
    cxButtonEdit_state_end_name: TcxButtonEdit;
    cxButtonEdit_state_end_cod: TcxButtonEdit;
    cxButtonEdit_state_begin_cod: TcxButtonEdit;
    cxButtonEdit_node_begin_cod: TcxButtonEdit;
    cxButtonEdit_node_begin_name: TcxButtonEdit;
    cxButtonEdit_node_end_name: TcxButtonEdit;
    cxButtonEdit_node_end_cod: TcxButtonEdit;
    cxButtonEdit_road_begin_cod: TcxButtonEdit;
    cxButtonEdit_road_begin_name: TcxButtonEdit;
    cxButtonEdit_road_end_name: TcxButtonEdit;
    cxButtonEdit_road_end_cod: TcxButtonEdit;
    cxButtonEdit_kargoGNG_cod: TcxButtonEdit;
    cxButtonEdit_kargoGNG_name: TcxButtonEdit;
    cxButtonEdit_kargoETSNG_name: TcxButtonEdit;
    cxButtonEdit_kargoETSNG_cod: TcxButtonEdit;
    cxButtonEdit_node_end_SNG_name: TcxButtonEdit;
    cxButtonEdit_node_end_SNG_cod: TcxButtonEdit;
    cxCheckBox28: TcxCheckBox;
    cxCheckBox29: TcxCheckBox;
    cxCheckBox30: TcxCheckBox;
    cxCheckBox31: TcxCheckBox;
    cxCheckBox32: TcxCheckBox;
    cxCheckBox33: TcxCheckBox;
    cxCheckBox34: TcxCheckBox;
    cxCheckBox35: TcxCheckBox;
    cxCheckBox36: TcxCheckBox;
    ToolBar3: TToolBar;
    ToolButton3: TToolButton;
    cxButtonEdit_node_begin_SNG_name: TcxButtonEdit;
    cxButtonEdit_node_begin_SNG_cod: TcxButtonEdit;
    cxCheckBox37: TcxCheckBox;
    Panel4: TPanel;
    Label40: TLabel;
    Label39: TLabel;
    Label42: TLabel;
    Label4: TLabel;
    cxTextEdit_transport_pay: TcxTextEdit;
    cxTextEdit_add_collection: TcxTextEdit;
    cxTextEdit_nds: TcxTextEdit;
    cxCheckBox15: TcxCheckBox;
    cxCheckBox17: TcxCheckBox;
    cxCheckBox18: TcxCheckBox;
    cxLookupComboBox_currency_id: TcxLookupComboBox;
    cxCheckBox25: TcxCheckBox;
    cxTabSheet2: TcxTabSheet;
    Panel3: TPanel;
    Label12: TLabel;
    Label21: TLabel;
    Label26: TLabel;
    cxLookupComboBox_firm_info_id: TcxLookupComboBox;
    cxTextEdit_file_load_info: TcxTextEdit;
    cxTextEdit_sub_cod_self: TcxTextEdit;
    cxCheckBox27: TcxCheckBox;
    Panel9: TPanel;
    Label27: TLabel;
    Label31: TLabel;
    Label32: TLabel;
    cxTextEdit_fact_etran_comment: TcxTextEdit;
    cxCheckBox1: TcxCheckBox;
    cxTextEdit_payer_cod: TcxTextEdit;
    cxCheckBox38: TcxCheckBox;
    cxCheckBox40: TcxCheckBox;
    cxTextEdit_claim_num: TcxTextEdit;
    Panel8: TPanel;
    Label28: TLabel;
    cxMemo_fact_users_comment: TcxMemo;
    cxCheckBox12: TcxCheckBox;
    Panel12: TPanel;
    cxTextEdit_cod_exception: TcxTextEdit;
    cxCheckBox11: TcxCheckBox;
    Label19: TLabel;
    Label18: TLabel;
    cxTextEdit_vid_transfer_name: TcxTextEdit;
    Label17: TLabel;
    cxCheckBox13: TcxCheckBox;
    Label24: TLabel;
    cxTextEdit_tip_zap: TcxTextEdit;
    cxCheckBox14: TcxCheckBox;
    Panel13: TPanel;
    Panel7: TPanel;
    cxCheckBox26: TcxCheckBox;
    cxCheckBox_set_main: TcxCheckBox;
    Panel10: TPanel;
    cxCheckBox_set_depo_repair: TcxCheckBox;
    cxCheckBox41: TcxCheckBox;
    Panel11: TPanel;
    cxCheckBox_set_econ_tarif: TcxCheckBox;
    cxCheckBox42: TcxCheckBox;
    cxPropertiesStore1: TcxPropertiesStore;
    ClientDataSet1bargain_new_id: TIntegerField;
    ClientDataSet1comment1: TStringField;
    Panel15: TPanel;
    Label33: TLabel;
    cxMemo_comment1: TcxMemo;
    cxCheckBox20: TcxCheckBox;
    cxLookupComboBox_kateg_send: TcxLookupComboBox;
    Query_KategSend: TADOQuery;
    DS_KategSend: TDataSource;
    ClientDataSet1kateg_send: TIntegerField;
    ClientDataSet1kateg_send_name: TStringField;
    Label36: TLabel;
    cxTextEdit_els_cod: TcxTextEdit;
    cxCheckBox43: TcxCheckBox;
    ClientDataSet1els_cod: TStringField;
    cxButton1: TcxButton;
    cxButton3: TcxButton;
    procedure cxCheckBox_is_date_deliveryClick(Sender: TObject);
    procedure cxCheckBox_calc_weight_checkClick(Sender: TObject);
    procedure cxCheckBox_is_date_readyClick(Sender: TObject);
    procedure ToolButton3Click(Sender: TObject);
    procedure cxCheckBox4PropertiesChange(Sender: TObject);
    procedure cxCheckBox_is_datprClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cxButtonEdit2PropertiesButtonClick(Sender: TObject;  AButtonIndex: Integer);
    procedure cxButton3Click(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
  private
    Fset_group  : boolean; // Групповые изменения да/нет
    FGridUpdate : TcxGridDBBandedTableView; // грид из которого берем fact_id (только при гркпповых изменениях)
    Ffact_id    : integer;
    FConnect    : TADOConnection;
    Fset_run_dll : boolean;
    Fusr_pwd_lis : PUser_pwd;
    procedure GroupFact;
    procedure SetFactFromBargain(bargain_id: integer);
    procedure SetReadOnly(set_read_only: boolean);
  public
    constructor CreateDll(AOwner:TApplication;usr_pwd: PUser_pwd);
    constructor Create(AOwner: TApplication; conn: TADOConnection);
    procedure _InsertFact;
  published
    procedure _UpdateFact(fact_id : int64);
    procedure _UpdateFactGroup(cxGridView: TcxGridDBBandedTableView);
    procedure _InsertFactAgree(bargain_id: int64);
    property  _GetFactId : integer read Ffact_id;
    property  _SetReadOnly : boolean write SetReadOnly;

    property _SetFactFromBargain: integer write SetFactFromBargain;
  end;

var
  fmFactCard: TfmFactCard;

implementation
    uses Raznoe, Other;

{$R *.DFM}

constructor TfmFactCard.Create(AOwner:TApplication; conn: TADOConnection);
begin
  Screen.Cursor := crHourglass;

  inherited Create(AOwner);

  Fconnect := conn;

  Fset_run_dll := False;
  Fset_group := False;
  cxPageControl1.ActivePageIndex := 0;

  Query_FirmInfo.Open;
  Query_Currency.Open;
  Query_KategSend.Open;


  ClientDataSet1.CreateDataSet;

  SetUsersModuleRights(Self, Fconnect);
  MonitorEventFormOpen('OPEN_FORM', self.Name, Fconnect, -9);

  Screen.Cursor := crDefault;
end;

constructor TfmFactCard.CreateDll(AOwner:TApplication; usr_pwd: PUser_pwd);
begin
  Screen.Cursor := crHourglass;

  inherited Create(AOwner);

  Fset_group := False;
  cxPageControl1.ActivePageIndex := 0;

  Fset_run_dll := True;
  Fusr_pwd_lis := usr_pwd;
  Fconnect := TADOConnection.Create(nil);
  Fconnect.ConnectionString := 'Persist Security Info=True;Provider=SQLOLEDB.1;User ID='+Fusr_pwd_lis^.user_name+';Password='+Fusr_pwd_lis^.user_pass+';Initial Catalog='+Fusr_pwd_lis^.catalog+';Data Source='+Fusr_pwd_lis^.server+';';
  Fconnect.KeepConnection   := False;
  Fconnect.LoginPrompt      := False;

  Query_FirmInfo.Connection := FConnect;
  Query_FirmInfo.Open;
  Query_Currency.Connection := FConnect;
  Query_Currency.Open;
  Query_KategSend.Connection := FConnect;
  Query_KategSend.Open;

  ClientDataSet1.CreateDataSet;

  SetUsersModuleRights(Self, FConnect);

  Screen.Cursor := crDefault;
end;

procedure TfmFactCard._UpdateFact(fact_id : int64);
var i : integer;
    Q : TADOQuery;

begin
  Screen.Cursor := crHourglass;
  Caption := 'Карточка факта (ID: ' + IntToStr(fact_id) + ')';

  Q := TADOQuery.Create(Nil);
  Q.Connection := FConnect;
  Q.SQL.Add('SELECT * FROM view_fact_all WHERE fact_id = '+ IntToStr(fact_id));
  Q.Open;

  ClientDSFromQuery(Q, ClientDataSet1);
  ClientDSToForm(self, ClientDataSet1);

  if cxLabel_etran_folder.Caption = 'Не действительны' then cxLabel_etran_folder.Style.Font.Color := clRed;
  if cxDateEdit_datpr.EditValue <> NULL then cxCheckBox_is_datpr.Checked := True;
  if cxDateEdit_date_delivery.EditValue <> NULL then cxCheckBox_is_date_delivery.Checked := True;
  if cxDateEdit_date_ready.EditValue <> NULL then cxCheckBox_is_date_ready.Checked := True;
//  if cxTextEdit_calc_weight.Text <> '' then cxCheckBox_calc_weight_check.Checked := True;

  //------- проверка на то, что факт из этрана -----------------
  Q.Close;
  Q.SQL.Clear;
  Q.SQL.Add('SELECT 1 FROM etran_link_xml WHERE row_id = ' + ClientDataSet1.FieldByName('fact_id').AsString);
  Q.Open;
  if Q.RecordCount>0 then
    for i := 0 to ComponentCount-1 do begin

      if (TControl(Components[i]).Tag <> 100) and
        (TControl(Components[i]).Tag <> 37) and   //коментарий пользователя
        (TControl(Components[i]).Tag <> 40) and   // примечание_1
        (TControl(Components[i]).Tag <> 15) and   // расчётный вес
        (TControl(Components[i]).Tag <> 17) and
        (TControl(Components[i]).Tag <> 52) and
        (TControl(Components[i]).Tag <> 53) then begin
        if Components[i].ClassName = 'TcxTextEdit' then begin
          TcxTextEdit(Components[i]).Style.Color := clBtnFace;
          TcxTextEdit(Components[i]).Properties.ReadOnly := True;
        end;
        if Components[i].ClassName = 'TcxCheckBox' then begin
//          TcxCheckBox(Components[i]).Style.Color := clBtnFace;
//          TcxCheckBox(Components[i]).Properties.ReadOnly := True;
          TcxCheckBox(Components[i]).Enabled := False;
        end;
        if Components[i].ClassName = 'TcxButtonEdit' then begin
          TcxButtonEdit(Components[i]).Style.Color := clBtnFace;
          TcxButtonEdit(Components[i]).Properties.ReadOnly := True;
        end;
        if Components[i].ClassName = 'TRadioGroup' then begin
          TRadioGroup(Components[i]).Enabled := False;
        end;
        if Components[i].ClassName = 'TcxLookupComboBox' then begin
          TcxLookupComboBox(Components[i]).Style.Color := clBtnFace;
          TcxLookupComboBox(Components[i]).Properties.ReadOnly := True;
        end;
        if Components[i].ClassName = 'TcxDateEdit' then begin
          TcxDateEdit(Components[i]).Style.Color := clBtnFace;
          TcxDateEdit(Components[i]).Properties.ReadOnly := True;
        end;
        if Components[i].ClassName = 'TcxMemo' then begin
          TcxMemo(Components[i]).Style.Color := clBtnFace;
          TcxMemo(Components[i]).Properties.ReadOnly := True;
        end;
      end;

    end;

  Q.Close;
  Q.SQL.Clear;
  Q.SQL.Add('SELECT i.inf_obj_cod AS kargoETSNG_cod FROM fact f');
  Q.SQL.Add('JOIN bargain b ON b.bargain_id = f.bargain_id');
  Q.SQL.Add('JOIN inf_obj_ETSNG i ON i.inf_obj_id = b.kargoETSNG_id');
  Q.SQL.Add('WHERE fact_id =' + IntToStr(fact_id));
  Q.Open;

  // ---- аренда вагонов Маркина ----
  if Q.FieldByName('kargoETSNG_cod').AsString = '000012' then begin
    Label47.Caption                  := 'Нач. аренды............';
    cxCheckBox_is_datpr.Caption      := 'Кон. аренды............';
    cxCheckBox_is_date_ready.Caption := 'Пл. ремонт.............';
    Label8.Caption := 'Ст. Перевалки..........';
  end;

  Q.Free;

  MonitorEventFormOpen('UPDATE_FORM', self.Name, Fconnect, fact_id);
  Screen.Cursor := crDefault;
end;


procedure TfmFactCard._InsertFact;
begin
  cxDateEdit_date_from_to.Date := Date();
  Query_FirmInfo.Locate('firm_customer', 1110, [loCaseInsensitive]);
  cxLookupComboBox_firm_info_id.EditValue := Query_FirmInfo.FieldByName('firm_customer').AsInteger;
  ClientDSFromForm(self,ClientDataSet1);
end;


procedure TfmFactCard._InsertFactAgree(bargain_id: int64);
var Q : TADOQuery;
begin
  Screen.Cursor := crHourglass;

  Q := TADOQuery.Create(Nil);
  Q.Connection := FConnect;
  Q.SQL.Add('SELECT bargain_id, kargoETSNG_id, kargoETSNG_name, kargoETSNG_cod,'+
                      ' kargoGNG_id, kargoGNG_name, kargoGNG_cod, '+
                      ' state_begin_id, state_begin_name, state_begin_cod,'+
                      ' state_end_id, state_end_name, state_end_cod, '+
                      ' node_begin_id, node_begin_name, node_begin_cod, '+
                      ' node_end_id, node_end_name, node_end_cod, '+
                      ' firm_customer as firm_info_id, 1 as from_to '+
                      ' FROM view_bargain WHERE bargain_id = '+ IntToStr(bargain_id));
  Q.Open;

  ClientDSFromQuery(Q, ClientDataSet1);
  ClientDSToForm(self, ClientDataSet1);

  if Q.FieldByName('kargoETSNG_cod').AsString = '000012' then begin  //аренда вагонов Маркина
    Label47.Caption                  := 'Нач. аренды...............';
    cxCheckBox_is_datpr.Caption      := 'Кон. аренды...............';
    cxCheckBox_is_date_ready.Caption := 'Пл. ремонт................';
    Label8.Caption := 'Ст. Перевалки......................';
  end;

  cxDateEdit_date_from_to.Date := Date();

  Q.Free;
  Screen.Cursor := crDefault;
end;

procedure TfmFactCard._UpdateFactGroup(cxGridView: TcxGridDBBandedTableView);
var
  i, k :integer;
     Q : TADOQuery;
begin
  Screen.Cursor := crHourglass;

  FGridUpdate := cxGridView;
  Fset_group  := True;

  Q := TADOQuery.Create(Nil);
  Q.Connection := FConnect;
  Q.SQL.Add('SELECT kargoETSNG_cod FROM view_bargain');
  Q.SQL.Add('WHERE bargain_id =' + IntToStr(cxGridView.GetColumnByFieldName('bargain_id').DataBinding.Field.AsInteger));
  Q.Open;

  if Q.FieldByName('kargoETSNG_cod').AsString = '000012' then begin  //аренда вагонов Маркина
    Label47.Caption                  := 'Нач. аренды..................';
    cxCheckBox_is_datpr.Caption      := 'Кон. аренды..................';
    cxCheckBox_is_date_ready.Caption := 'Пл. ремонт...................';
    Label8.Caption := 'Ст. Перевалки...................';
  end;

  Q.Free;

  for i := 0 to ComponentCount-1 do
    if (pos('cxCheckBox', Components[i].Name)<>0) and (pos('_',Components[i].Name)=0) then
    begin
      if TControl(Components[i]).Tag <> 0  then begin
        TControl(Components[i]).Visible := True;
        for k := 0 to ComponentCount - 1 do begin
          if (Components[k].InheritsFrom(TControl)) then
            if (TControl(Components[i]).Tag = TControl(Components[k]).Tag) and (i<>k) then
              TControl(Components[k]).Enabled := False;
        end;
      end;
    end;

  Screen.Cursor := crDefault;
end;

procedure TfmFactCard.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if Fset_run_dll then begin
    Fconnect.Close;
    Fconnect.Free;
  end;
  Action := caFree;
end;

procedure TfmFactCard.cxButton1Click(Sender: TObject);
begin
  if Fset_group then
    GroupFact
  else begin
    if DeleteFrahtCard(ClientDataSet1.FieldByName('bargain_id').AsInteger, FConnect) = False then
      Exit;

    Screen.Cursor := crHourglass;
    ClientDSFromForm(self, ClientDataSet1);
    Ffact_id := ClientDSToProcedure('sp_fact_modify', ClientDataSet1, FConnect);

    Screen.Cursor := crDefault;
  end;
end;

procedure TfmFactCard.cxButton3Click(Sender: TObject);
begin
  Close;
end;

procedure TfmFactCard.cxButtonEdit2PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
var isName : boolean;
    isFind : boolean;
    date_from_to : TDateTime;
begin
// --- Определяем поиск по *****_NAME или по *****_COD
  if UpperCase(RightStr(TcxButtonEdit(Sender).Name,4)) = 'NAME' then
    isName := True
  else
    isName := False;

// --- Ищем или стираем
  if AButtonIndex = 0 then
    isFind := true
  else
    isFind := false;

  if cxDateEdit_date_from_to.Enabled then
    date_from_to := cxDateEdit_date_from_to.Date
  else
    date_from_to := Now;


  ClientDSFromForm(self,ClientDataSet1);
  case TcxButtonEdit(Sender).Tag of
    24: FindInInfObj(ClientDataSet1, 'STATE_BEGIN',isName, isFind, 0, date_from_to, FConnect);
    25: FindInInfObj(ClientDataSet1, 'STATE_END'  ,isName, isFind, 0, date_from_to, FConnect);
    26: FindInInfObjNode(ClientDataSet1, 'NODE_BEGIN' ,isName, isFind, date_from_to, FConnect);
    27: FindInInfObjNode(ClientDataSet1, 'NODE_END'   ,isName, isFind, date_from_to, FConnect);
    28: FindInInfObj(ClientDataSet1, 'ROAD_BEGIN' ,isName, isFind, 0, date_from_to, FConnect);
    29: FindInInfObj(ClientDataSet1, 'ROAD_END'   ,isName, isFind, 0, date_from_to, FConnect);
    30: FindInInfObj(ClientDataSet1, 'GNG'        ,isName, isFind, 0, date_from_to, FConnect);
    31: FindInInfObj(ClientDataSet1, 'ETSNG'      ,isName, isFind, 0, date_from_to, FConnect);
    39: FindInInfObjNode(ClientDataSet1, 'NODE_SNG_BEGIN' ,isName, isFind, date_from_to, FConnect);
    32: FindInInfObjNode(ClientDataSet1, 'NODE_SNG_END'   ,isName, isFind, date_from_to, FConnect);
  end;
  ClientDSToForm(self,ClientDataSet1);
end;

procedure TfmFactCard.cxCheckBox_calc_weight_checkClick(Sender: TObject);
begin
  if cxCheckBox_calc_weight_check.Checked then begin
    cxTextEdit_calc_weight.Enabled := True;
  end else begin
    cxTextEdit_calc_weight.Enabled := False;
  end;

  if ClientDataSet1.FieldByName('calc_weight').Value = null then
    cxTextEdit_calc_weight.Text := ''
  else
    cxTextEdit_calc_weight.Text := ClientDataSet1.FieldByName('calc_weight').AsString;
end;

procedure TfmFactCard.cxCheckBox_is_date_readyClick(Sender: TObject);
begin
  cxDateEdit_date_ready.Enabled := cxCheckBox_is_date_ready.Checked;
  if cxCheckBox_is_date_ready.Checked then begin
    if ClientDataSet1.FieldByName('date_ready').Value = null then cxDateEdit_date_ready.Date := Date
    else cxDateEdit_date_ready.Date := ClientDataSet1.FieldByName('date_ready').AsDateTime;
  end else cxDateEdit_date_ready.EditValue := null;
end;

procedure TfmFactCard.cxCheckBox_is_datprClick(Sender: TObject);
begin
  cxDateEdit_datpr.Enabled := cxCheckBox_is_datpr.Checked;
  if cxCheckBox_is_datpr.Checked then begin
    if ClientDataSet1.FieldByName('datpr').Value = null then cxDateEdit_datpr.Date := Date
    else cxDateEdit_datpr.Date := ClientDataSet1.FieldByName('datpr').AsDateTime;
  end else cxDateEdit_datpr.EditValue := null;
end;

procedure TfmFactCard.cxCheckBox_is_date_deliveryClick(Sender: TObject);
begin
  cxDateEdit_date_delivery.Enabled := cxCheckBox_is_date_delivery.Checked;
  if cxCheckBox_is_date_delivery.Checked then begin
    if ClientDataSet1.FieldByName('date_delivery').Value = null then cxDateEdit_date_delivery.Date := Date
    else cxDateEdit_date_delivery.Date := ClientDataSet1.FieldByName('date_delivery').AsDateTime;
  end else cxDateEdit_date_delivery.EditValue := null;
end;

procedure TfmFactCard.cxCheckBox4PropertiesChange(Sender: TObject);
var i: integer;
begin
  for i := 0 to ComponentCount-1 do
    if (Components[i].InheritsFrom(TControl)) and (Sender<>Components[i]) then begin
      if (TControl(Components[i]).Tag = TControl(Sender).Tag) then TControl(Components[i]).Enabled := TcxCheckBox(Sender).Checked;
      if (TControl(Components[i]).Tag = TControl(Sender).Tag) and (TControl(Components[i]).Tag =  33) then TcxCheckBox(Components[i]).Checked := False;
      if (TControl(Components[i]).Tag = TControl(Sender).Tag) and (TControl(Components[i]).Tag =  38) then TcxCheckBox(Components[i]).Checked := False;
      if (TControl(Components[i]).Tag = TControl(Sender).Tag) and (TControl(Components[i]).Tag =  15) then TcxCheckBox(Components[i]).Checked := False;
      if (TControl(Components[i]).Tag = TControl(Sender).Tag) and (TControl(Components[i]).Tag = 101) then TcxCheckBox(Components[i]).Checked := False;
    end;
end;

procedure TfmFactCard.GroupFact;
var                i,row : integer;
              str_update : string;
        str_update_etran : string;
             DecimalSave : Char;
             Q : TADOQuery;
             Q2 : TADOQuery;
begin
  for row := 0 to FGridUpdate.Controller.SelectedRowCount-1 do begin
    if FGridUpdate.Controller.SelectedRows[row].Values[FGridUpdate.GetColumnByFieldName('bargain_id').Index] <> null then begin
      if DeleteFrahtCard(FGridUpdate.Controller.SelectedRows[row].Values[FGridUpdate.GetColumnByFieldName('bargain_id').Index], FConnect) = False then Exit;
    end;
  end;

  DecimalSave := FormatSettings.DecimalSeparator;
  FormatSettings.DecimalSeparator := '.';

  try
    str_update := '';
    str_update_etran := '';
    ClientDSFromForm(self, ClientDataSet1);
    for i := 0 to ComponentCount-1 do
      if pos(AnsiUpperCase('cxCheckBox'), AnsiUpperCase(GetNameFromComponent(Components[i])))<>0 then
      begin
        if TcxCheckBox(Components[i]).Checked then begin
          case TControl(Components[i]).Tag of
             1: str_update := str_update+' num_document_pref='+iif(ClientDataSet1.FieldByName('num_document_pref').IsNull , 'null', ''''+ClientDataSet1.FieldByName('num_document_pref').AsString+'''')+',';
             2: str_update := str_update+' num_document='     +iif(ClientDataSet1.FieldByName('num_document'     ).IsNull , 'null', ''''+ClientDataSet1.FieldByName('num_document'     ).AsString+'''')+',';
             3: str_update := str_update+' num_vagon='        +iif(ClientDataSet1.FieldByName('num_vagon'        ).IsNull , 'null', IntToStr(ClientDataSet1.FieldByName('num_vagon').AsInteger))+',';
             4: str_update := str_update+' num_konten='       +iif(ClientDataSet1.FieldByName('num_konten'       ).IsNull , 'null', ''''+ClientDataSet1.FieldByName('num_konten').AsString+'''')+',';
             5: begin
                  if (not ClientDataSet1.FieldByName('date_from_to').IsNull) then str_update := str_update+' date_from_to='''+DateToStr(ClientDataSet1.FieldByName('date_from_to').AsDateTime)+''',';
                end;
             6: str_update := str_update+' fact_weight='      +iif(ClientDataSet1.FieldByName('fact_weight'      ).IsNull , 'null', FloatToStr(ClientDataSet1.FieldByName('fact_weight').AsFloat))+',';
             8: str_update := str_update+' kargo_capacity='   +iif(ClientDataSet1.FieldByName('kargo_capacity'   ).IsNull , 'null', CurrToStr(ClientDataSet1.FieldByName('kargo_capacity').AsCurrency))+',';
             9: str_update := str_update+' fkv='              +iif(ClientDataSet1.FieldByName('fkv'              ).IsNull , 'null', IntToStr(ClientDataSet1.FieldByName('fkv').AsInteger))+',';
            13: str_update := str_update+' cod_exception='    +iif(ClientDataSet1.FieldByName('cod_exception'    ).IsNull , 'null', IntToStr(ClientDataSet1.FieldByName('cod_exception').AsInteger))+',';
            14: str_update := str_update+' vid_transfer= '    +iif(ClientDataSet1.FieldByName('vid_transfer'     ).IsNull , 'null', IntToStr(ClientDataSet1.FieldByName('vid_transfer').AsInteger))+',';
            15: begin
                  str_update := str_update+' calc_weight_check='+iif(ClientDataSet1.FieldByName('calc_weight_check').Value  , '1', '0')+',';
                  str_update_etran := str_update_etran+' calc_weight_check='+iif(ClientDataSet1.FieldByName('calc_weight_check').Value  , '1', '0')+',';
                  if not ClientDataSet1.FieldByName('calc_weight').IsNull then begin
                    str_update := str_update+' calc_weight='  +FloatToStr(ClientDataSet1.FieldByName('calc_weight').AsFloat) + ',';
                    str_update_etran := str_update_etran+' calc_weight='  + FloatToStr(ClientDataSet1.FieldByName('calc_weight').AsFloat)+',';
                  end;
                end;
            16: str_update := str_update + ' kateg_send='       +iif(ClientDataSet1.FieldByName('kateg_send'       ).IsNull , 'null', IntToStr(ClientDataSet1.FieldByName('kateg_send').AsInteger))+',';
            17: str_update := str_update + ' tip_zap='          +iif(ClientDataSet1.FieldByName('tip_zap'          ).IsNull , 'null', IntToStr(ClientDataSet1.FieldByName('tip_zap').AsInteger))+',';
            18: str_update := str_update + ' transport_pay='    +iif(ClientDataSet1.FieldByName('transport_pay'    ).IsNull , 'null', FloatToStr(ClientDataSet1.FieldByName('transport_pay').AsFloat))+',';
            19: str_update := str_update + ' nds='              +iif(ClientDataSet1.FieldByName('nds'              ).IsNull , 'null', FloatToStr(ClientDataSet1.FieldByName('nds').AsFloat))+',';
            20: str_update := str_update + ' currency_id='      +iif(ClientDataSet1.FieldByName('currency_id'      ).IsNull , 'null', IntToStr(ClientDataSet1.FieldByName('currency_id').AsInteger))+',';
            21: str_update := str_update + ' add_collection='   +iif(ClientDataSet1.FieldByName('add_collection'   ).IsNull , 'null', FloatToStr(ClientDataSet1.FieldByName('add_collection').AsFloat))+',';
            22: str_update := str_update + ' firm_info_id='     +iif(ClientDataSet1.FieldByName('firm_info_id'     ).IsNull , 'null', IntToStr(ClientDataSet1.FieldByName('firm_info_id').AsInteger))+',';
            23: str_update := str_update + ' set_main='         +iif(ClientDataSet1.FieldByName('set_main'         ).Value  , '1', '0')+',';
            24: str_update := str_update + ' state_begin_id='   +iif(ClientDataSet1.FieldByName('state_begin_id'   ).IsNull , 'null', IntToStr(ClientDataSet1.FieldByName('state_begin_id').AsInteger))+',';
            25: str_update := str_update + ' state_end_id='     +iif(ClientDataSet1.FieldByName('state_end_id'     ).IsNull , 'null', IntToStr(ClientDataSet1.FieldByName('state_end_id').AsInteger))+',';
            26: str_update := str_update + ' node_begin_id='    +iif(ClientDataSet1.FieldByName('node_begin_id'    ).IsNull , 'null', IntToStr(ClientDataSet1.FieldByName('node_begin_id').AsInteger))+',';
            27: str_update := str_update + ' node_end_id='      +iif(ClientDataSet1.FieldByName('node_end_id'      ).IsNull , 'null', IntToStr(ClientDataSet1.FieldByName('node_end_id').AsInteger))+',';
            28: str_update := str_update + ' road_begin_id='    +iif(ClientDataSet1.FieldByName('road_begin_id'    ).IsNull , 'null', IntToStr(ClientDataSet1.FieldByName('road_begin_id').AsInteger))+',';
            29: str_update := str_update + ' road_end_id='      +iif(ClientDataSet1.FieldByName('road_end_id'      ).IsNull , 'null', IntToStr(ClientDataSet1.FieldByName('road_end_id').AsInteger))+',';
            30: str_update := str_update + ' kargoGNG_id='      +iif(ClientDataSet1.FieldByName('kargoGNG_id'      ).IsNull , 'null', IntToStr(ClientDataSet1.FieldByName('kargoGNG_id').AsInteger))+',';
            31: str_update := str_update + ' kargoETSNG_id='    +iif(ClientDataSet1.FieldByName('kargoETSNG_id'    ).IsNull , 'null', IntToStr(ClientDataSet1.FieldByName('kargoETSNG_id').AsInteger))+',';
            32: str_update := str_update + ' node_end_SNG_id='  +iif(ClientDataSet1.FieldByName('node_end_SNG_id'  ).IsNull , 'null', IntToStr(ClientDataSet1.FieldByName('node_end_SNG_id').AsInteger))+',';

            50: str_update := str_update + ' payer_cod=' + iif(ClientDataSet1.FieldByName('payer_cod'  ).IsNull , 'null', ''''+ClientDataSet1.FieldByName('payer_cod').AsString+'''')+',';
            44: str_update := str_update + ' els_cod='   + iif(ClientDataSet1.FieldByName('els_cod'  ).IsNull , 'null', ''''+ClientDataSet1.FieldByName('els_cod').AsString+'''')+',';
            51: str_update := str_update + ' claim_num=' + iif(ClientDataSet1.FieldByName('claim_num'  ).IsNull , 'null', ''''+ClientDataSet1.FieldByName('claim_num').AsString+'''')+',';

            52: begin
                  str_update := str_update + ' set_depo_repair=' + iif(ClientDataSet1.FieldByName('set_depo_repair'  ).Value  , '1', '0')+',';
                  str_update_etran := str_update_etran + ' set_depo_repair=' + iif(ClientDataSet1.FieldByName('set_depo_repair'  ).Value  , '1', '0')+',';
                end;

            53: begin
                  str_update := str_update + ' set_econ_tarif=' + iif(ClientDataSet1.FieldByName('set_econ_tarif'  ).Value  , '1', '0')+',';
                  str_update_etran := str_update_etran + ' set_econ_tarif=' + iif(ClientDataSet1.FieldByName('set_econ_tarif'  ).Value  , '1', '0')+',';
                end;

            100: begin
                   str_update := str_update + ' quantity=' + iif(ClientDataSet1.FieldByName('quantity'  ).IsNull , 'null', FloatToStr(ClientDataSet1.FieldByName('quantity').AsFloat))+',';
                   str_update_etran := str_update_etran + ' quantity=' + iif(ClientDataSet1.FieldByName('quantity'  ).IsNull , 'null', FloatToStr(ClientDataSet1.FieldByName('quantity').AsFloat))+',';
                 end;

            33: begin
                if (cxCheckBox_is_datpr.Checked) and (not ClientDataSet1.FieldByName('datpr').IsNull) then
                  str_update := str_update + ' datpr=''' + DateToStr(ClientDataSet1.FieldByName('datpr').AsDateTime)+''','
                else str_update := str_update+' datpr=null,';
                end;

            101:begin
                if (cxCheckBox_is_date_delivery.Checked) and (not ClientDataSet1.FieldByName('date_delivery').IsNull) then
                  str_update := str_update + ' date_delivery=''' + DateToStr(ClientDataSet1.FieldByName('date_delivery').AsDateTime) + ''','
                else str_update := str_update + ' date_delivery=null,';
                end;

            36: str_update := str_update + ' fact_etran_comment='+iif(ClientDataSet1.FieldByName('fact_etran_comment').IsNull , 'null', '''' + ClientDataSet1.FieldByName('fact_etran_comment').AsString+'''')+',';
            37: begin
                  str_update := str_update + ' fact_users_comment=' + iif(ClientDataSet1.FieldByName('fact_users_comment').IsNull , 'null', ''''+ClientDataSet1.FieldByName('fact_users_comment').AsString+'''')+',';
                  str_update_etran := str_update_etran + ' fact_users_comment=' + iif(ClientDataSet1.FieldByName('fact_users_comment').IsNull , 'null', ''''+ClientDataSet1.FieldByName('fact_users_comment').AsString+'''')+',';
                end;
            40: begin
                  str_update := str_update+' comment1=' + iif(ClientDataSet1.FieldByName('comment1').IsNull , 'null', '''' + ClientDataSet1.FieldByName('comment1').AsString+'''') + ',';
                  str_update_etran := str_update_etran+' comment1=' + iif(ClientDataSet1.FieldByName('comment1').IsNull , 'null', '''' + ClientDataSet1.FieldByName('comment1').AsString+'''') + ',';
                end;
            38: begin
                if (cxCheckBox_is_date_ready.Checked) and (not ClientDataSet1.FieldByName('date_ready').IsNull) then
                  str_update := str_update + ' date_ready=''' + DateToStr(ClientDataSet1.FieldByName('date_ready').AsDateTime) + ''','
                else str_update := str_update + ' date_ready=null,';
                end;
            39: str_update := str_update + ' node_begin_SNG_id='  +iif(ClientDataSet1.FieldByName('node_begin_SNG_id'  ).IsNull , 'null', IntToStr(ClientDataSet1.FieldByName('node_begin_SNG_id').AsInteger)) + ',';

          end;
        end;
      end;


    if str_update<>'' then begin
      str_update := LeftStr(str_update, Length(str_update)-1);
      str_update_etran := LeftStr(str_update_etran, Length(str_update_etran)-1);

      for row := 0 to FGridUpdate.Controller.SelectedRowCount-1 do begin

        Q2 := TADOQuery.Create(nil);
        Q2.Connection := FConnect;
        Q2.SQL.Add('SELECT fact.fact_id');
        Q2.SQL.Add('FROM	fact');
        Q2.SQL.Add('inner join fraht_fact on fact.fact_id = fraht_fact.fact_id');
        Q2.SQL.Add('inner join shaping_rate on fraht_fact.client_agent_id = shaping_rate.shaping_rate_id and shaping_rate.date_period_finance is not null');
        Q2.SQL.Add('WHERE	fact.fact_id = ' + IntToStr(FGridUpdate.Controller.SelectedRows[row].Values[FGridUpdate.GetColumnByFieldName('fact_id').Index]));
        Q2.Open;

        if Q2.RecordCount = 0 then begin

          Q := TADOQuery.Create(nil);
          Q.Connection := FConnect;
          Q.SQL.Text := 'SELECT 1 FROM etran_link_xml WHERE row_id = ' + IntToStr(FGridUpdate.Controller.SelectedRows[row].Values[FGridUpdate.GetColumnByFieldName('fact_id').Index]);
          Q.Open;

          if Q.RecordCount=0 then begin
            Q.Close;
            Q.SQL.Text := 'UPDATE fact SET '+str_update+' WHERE fact_id = ' + IntToStr(FGridUpdate.Controller.SelectedRows[row].Values[FGridUpdate.GetColumnByFieldName('fact_id').Index]);
            Q.ExecSQL;
          end else if str_update_etran <> '' then begin
            Q.Close;
            Q.SQL.Text := 'UPDATE fact SET '+str_update_etran+' WHERE fact_id = ' + IntToStr(FGridUpdate.Controller.SelectedRows[row].Values[FGridUpdate.GetColumnByFieldName('fact_id').Index]);
            Q.ExecSQL;
          end;

          Q.Free;
        end;

        Q2.Free;

        ShowTextMessage('Осталось ' + IntToStr(FGridUpdate.Controller.SelectedRowCount - row) + ' записей...',  False);
      end;
      ShowTextMessage();
    end;
  finally
    FormatSettings.DecimalSeparator := DecimalSave;
  end;
end;

procedure TfmFactCard.ToolButton3Click(Sender: TObject);
begin
  RailAtlas_ShowRoute(FConnect, cxButtonEdit_node_begin_cod.Text, cxButtonEdit_node_end_cod.Text);
end;

procedure TfmFactCard.SetFactFromBargain(bargain_id: integer);
var Q : TADOQuery;
begin
  Screen.Cursor := crHourglass;

  Q := TADOQuery.Create(Nil);
  Q.Connection := FConnect;
  Q.SQL.Add('SELECT bargain_id as bargain_new_id, kargoETSNG_id, kargoETSNG_name, kargoETSNG_cod,'+
                      ' kargoGNG_id, kargoGNG_name, kargoGNG_cod, '+
                      ' firm_customer as firm_info_id, 1 as from_to '+
                      ' FROM view_bargain_new WHERE bargain_id = '+ IntToStr(bargain_id));
  Q.Open;

  ClientDSFromQuery(Q, ClientDataSet1);
  ClientDSToForm(self, ClientDataSet1);

  if Q.FieldByName('kargoETSNG_cod').AsString = '000012' then begin  //аренда вагонов Маркина
    Label47.Caption                  := 'Нач. аренды...............';
    cxCheckBox_is_datpr.Caption      := 'Кон. аренды...............';
    cxCheckBox_is_date_ready.Caption := 'Пл. ремонт................';
    Label8.Caption := 'Ст. Перевалки......................';
  end;
  cxDateEdit_date_from_to.Date := Date();

  Q.Free;
  Screen.Cursor := crDefault;
end;

procedure TfmFactCard.SetReadOnly(set_read_only: boolean);
begin
  if set_read_only = True then begin
    cxButton1.Enabled := False;
  end;
end;

end.
