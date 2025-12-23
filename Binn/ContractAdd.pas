unit ContractAdd;

interface

uses
  Windows, Messages, SysUtils, Classes, Vcl.Graphics, Controls, Forms, Dialogs, Default,
  StdCtrls, ExtCtrls, ComCtrls, DBCtrls, Db, ADODB, Mask, ImgList, Variants,
  cxGraphics, cxControls, cxContainer, cxEdit, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox,
  cxGroupBox, cxRadioGroup, cxLookAndFeelPainters, cxCalendar, cxMemo, cxPropertiesStore, cxCheckBox, cxButtonEdit, cxCurrencyEdit,
  cxLookAndFeels, cxPC, cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxDBData, DBClient, cxGridCustomTableView, cxGridTableView,
  cxGridBandedTableView, cxGridDBBandedTableView, cxGridCustomView, cxClasses, cxGridLevel, cxGrid, dxBar, ShellAPI, dxBarBuiltInMenu, dxCore,
  cxDateUtils, cxNavigator, cxCheckComboBox, Menus, cxButtons, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel,
  dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans,
  dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMetropolis,
  dxSkinMetropolisDark, dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013DarkGray,
  dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus,
  dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008, dxSkinTheAsphaltWorld, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinVS2010, dxSkinWhiteprint, dxSkinXmas2008Blue, dxSkinscxPCPainter, dxSkinsdxBarPainter, dxSkinOffice2016Colorful, dxSkinOffice2016Dark,
  dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark, dxSkinVisualStudio2013Light, System.ImageList, cxImageList, registry,
  dxSkinTheBezier, cxLabel, dxDateRanges, dxSkinOffice2019Colorful, dxScrollbarAnnotations, dxCoreGraphics;

type
  TfmContractAdd = class(TForm)
    Query_Customer: TADOQuery;
    DS_Customer: TDataSource;
    DS_Self: TDataSource;
    Query_Self: TADOQuery;
    Query_Currency: TADOQuery;
    DS_Currency: TDataSource;
    Panel2: TPanel;
    cxPropertiesStore1: TcxPropertiesStore;
    Query_TypeClient: TADOQuery;
    DS_TypeClient: TDataSource;
    DS_TypeAgent: TDataSource;
    Query_TypeAgent: TADOQuery;
    Query_Property: TADOQuery;
    DS_Property: TDataSource;
    cxPageControl1: TcxPageControl;
    cxTabSheet1: TcxTabSheet;
    Panel5: TPanel;
    Label2: TLabel;
    cxCheckBox1: TcxCheckBox;
    cxTextEdit1: TcxTextEdit;
    Panel6: TPanel;
    Label4: TLabel;
    Label13: TLabel;
    cxLookupComboBox1: TcxLookupComboBox;
    cxLookupComboBox10: TcxLookupComboBox;
    cxLookupComboBox4: TcxLookupComboBox;
    Panel7: TPanel;
    Label3: TLabel;
    cxLookupComboBox2: TcxLookupComboBox;
    cxLookupComboBox11: TcxLookupComboBox;
    Panel1: TPanel;
    Label5: TLabel;
    Label6: TLabel;
    Label8: TLabel;
    Label7: TLabel;
    cxDateEdit1: TcxDateEdit;
    cxDateEdit2: TcxDateEdit;
    cxButtonEdit2: TcxButtonEdit;
    cxDateEdit3: TcxDateEdit;
    GroupBox1: TGroupBox;
    cxMemo1: TcxMemo;
    cxTabSheet2: TcxTabSheet;
    Client_Limit: TClientDataSet;
    Client_Limitlimit_cod: TStringField;
    Client_Limitlimit_name: TStringField;
    Client_Limitlimit_type: TStringField;
    Client_Limitlimit_action: TStringField;
    Client_Limitlimit_group: TBooleanField;
    Client_Limitlimit_value: TCurrencyField;
    cxGrid3: TcxGrid;
    cxGridDBBandedTableView1: TcxGridDBBandedTableView;
    cxGridLevel1: TcxGridLevel;
    DS_Limit: TDataSource;
    cxGridDBBandedTableView1limit_cod: TcxGridDBBandedColumn;
    cxGridDBBandedTableView1limit_name: TcxGridDBBandedColumn;
    cxGridDBBandedTableView1limit_type: TcxGridDBBandedColumn;
    cxGridDBBandedTableView1limit_action: TcxGridDBBandedColumn;
    cxGridDBBandedTableView1set_check: TcxGridDBBandedColumn;
    cxGridDBBandedTableView1limit_group: TcxGridDBBandedColumn;
    cxGridDBBandedTableView1limit_value: TcxGridDBBandedColumn;
    Client_Limitset_limit_value: TBooleanField;
    cxGridDBBandedTableView1set_limit_value: TcxGridDBBandedColumn;
    cxGridDBBandedTableView1inf_obj_id: TcxGridDBBandedColumn;
    Client_Limitinf_obj_id: TIntegerField;
    Client_Limitset_check: TBooleanField;
    dxBarManager1: TdxBarManager;
    dxBarManager1Bar1: TdxBar;
    dxBarButton9: TdxBarButton;
    dxBarButton4: TdxBarButton;
    dxBarSubItem1: TdxBarSubItem;
    dxBarButton5: TdxBarButton;
    dxBarButton6: TdxBarButton;
    dxBarButton7: TdxBarButton;
    dxBarButton8: TdxBarButton;
    cxImageList1: TcxImageList;
    Panel4: TPanel;
    Label12: TLabel;
    Label14: TLabel;
    cxTabSheet4: TcxTabSheet;
    cxTabSheet5: TcxTabSheet;
    Panel3: TPanel;
    Label10: TLabel;
    Label1: TLabel;
    Label11: TLabel;
    RadioGroup1: TRadioGroup;
    cxCurrencyEdit1: TcxCurrencyEdit;
    cxLookupComboBox3: TcxLookupComboBox;
    cxCurrencyEdit3: TcxCurrencyEdit;
    GroupBox2: TGroupBox;
    cxMemo2: TcxMemo;
    Panel8: TPanel;
    cxCheckBox4: TcxCheckBox;
    cxTextEdit2: TcxTextEdit;
    cxDateEdit4: TcxDateEdit;
    Label16: TLabel;
    cxCheckBox2: TcxCheckBox;
    cxDateEdit5: TcxDateEdit;
    Label17: TLabel;
    cxTextEdit3: TcxTextEdit;
    cxTabSheet6: TcxTabSheet;
    DS_Arenda_Repair_Type: TDataSource;
    Query_Arenda_Repair_Type: TADOQuery;
    Query_Provider: TADOQuery;
    DS_Provider: TDataSource;
    Label20: TLabel;
    cxCheckComboBox3: TcxCheckComboBox;
    cxButton1: TcxButton;
    cxButton2: TcxButton;
    Panel10: TPanel;
    Label15: TLabel;
    cxCurrencyEdit4: TcxCurrencyEdit;
    Panel11: TPanel;
    Label21: TLabel;
    cxDateEdit6: TcxDateEdit;
    cxLookupComboBox5: TcxLookupComboBox;
    Label19: TLabel;
    Panel12: TPanel;
    Label22: TLabel;
    cxCheckBox3: TcxCheckBox;
    cxTextEdit4: TcxTextEdit;
    GroupBox3: TGroupBox;
    cxMemo3: TcxMemo;
    cxCheckBox5: TcxCheckBox;
    cxTextEdit5: TcxTextEdit;
    Label9: TLabel;
    Label23: TLabel;
    cxButtonEdit3: TcxButtonEdit;
    cxTextEdit6: TcxTextEdit;
    Panel13: TPanel;
    GroupBox4: TGroupBox;
    cxTextEdit7: TcxTextEdit;
    cxButtonEdit4: TcxButtonEdit;
    Label24: TLabel;
    cxTextEdit8: TcxTextEdit;
    cxButtonEdit5: TcxButtonEdit;
    Label25: TLabel;
    GroupBox5: TGroupBox;
    cxButtonEdit1: TcxButtonEdit;
    Label18: TLabel;
    cxComboBox1: TcxComboBox;
    Label26: TLabel;
    cxTextEdit9: TcxTextEdit;
    cxTextEdit10: TcxTextEdit;
    cxLabel1: TcxLabel;
    cxLabel2: TcxLabel;
    cxCurrencyEdit2: TcxCurrencyEdit;
    cxCurrencyEdit5: TcxCurrencyEdit;
    cxCheckBox6: TcxCheckBox;
    procedure cxButtonEdit2PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure cxCheckBox1PropertiesChange(Sender: TObject);
    procedure cxDateEdit1PropertiesEditValueChanged(Sender: TObject);
    procedure cxLookupComboBox2PropertiesEditValueChanged(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure cxLookupComboBox1PropertiesEditValueChanged(Sender: TObject);
    procedure cxGrid1DBBandedTableView1CustomDrawCell(Sender: TcxCustomGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
    procedure cxGrid1DBBandedTableView1CustomDrawColumnHeader(Sender: TcxGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxGridColumnHeaderViewInfo; var ADone: Boolean);
    procedure cxGridDBBandedTableView1Editing(Sender: TcxCustomGridTableView; AItem: TcxCustomGridTableItem; var AAllow: Boolean);
    procedure cxGridDBBandedTableView1CustomDrawCell(Sender: TcxCustomGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
    procedure cxGridDBBandedTableView1EditValueChanged(Sender: TcxCustomGridTableView; AItem: TcxCustomGridTableItem);
    procedure cxGridDBBandedTableView1EditKeyDown(Sender: TcxCustomGridTableView; AItem: TcxCustomGridTableItem; AEdit: TcxCustomEdit; var Key: Word; Shift: TShiftState);
    procedure cxGridDBBandedTableView2CustomDrawCell(Sender: TcxCustomGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
    procedure cxGridDBBandedTableView2CustomDrawColumnHeader(Sender: TcxGridTableView; ACanvas: TcxCanvas;  AViewInfo: TcxGridColumnHeaderViewInfo; var ADone: Boolean);
    procedure FormDestroy(Sender: TObject);
    procedure cxCheckBox4PropertiesEditValueChanged(Sender: TObject);
    procedure cxCheckBox2PropertiesEditValueChanged(Sender: TObject);
    procedure cxButtonEdit1PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure cxCheckBox3PropertiesEditValueChanged(Sender: TObject);
    procedure cxButtonEdit3PropertiesButtonClick(Sender: TObject;AButtonIndex: Integer);
    procedure cxButtonEdit4PropertiesButtonClick(Sender: TObject;AButtonIndex: Integer);
  private
    Fcontract_id     : integer;
    Ftype_contract   : byte;
    Ftype_action     : byte;
    Fset_limit       : boolean;
    Fstr_contract_id : string;
    Fstr_header      : string;

    Fusr_pwd_docs    : PUser_pwd;
    Fbudget_type_cod : string; // Тип бюджета 1-доход, 2-расход
    Fbudget_id          : integer;//id бюджета привязанный к договору из ЛИСа
    Fbudget_id_lis_docs : integer;//id бюджета привязанный к договору из ЛИС_ДОК
    Farticle_id_lis_docs: integer;//id статьи привязанный к договору из ЛИС_ДОК

    // Запущена как DLL
    Fset_run_dll : boolean;
    Fconnect     : TADOConnection;
    Fusr_pwd_lis : PUser_pwd;
    Fdate_finance_close : TDateTime;

    procedure SetUpdate(contract_id : integer);
    procedure SetLimitContract(str_contract_id : string);
    procedure UpdateGroupLimitContract;
    procedure CreateLimit();
    procedure GetPlanBalance();
  public
    constructor Create(AOwner: TApplication; type_contract: byte);
    constructor CreateDLL(AOwner: TApplication; type_contract: byte; usr_pwd_lis: PUser_pwd);
    procedure SetInsert(firm_id: integer);
  published
    property _SetUpdate : integer write SetUpdate;
    property _GetContractId : integer read Fcontract_id;
    property _SetInsert : integer write SetInsert;
    property _SetLimitContract: string write SetLimitContract;
  end;

var
  fmContractAdd: TfmContractAdd;

implementation
       uses Main, Raznoe, Filter, Other, Period, StrUtils, DateUtils;

{$R *.DFM}
constructor TfmContractAdd.CreateDLL(AOwner: TApplication; type_contract: byte; usr_pwd_lis: PUser_pwd);
begin
  inherited Create(AOwner);
  Screen.Cursor := crHourglass;

  Fset_run_dll  := True;
  Fusr_pwd_lis  := usr_pwd_lis;

  Fconnect := TADOConnection.Create(nil);
  Fconnect.ConnectionString := 'Persist Security Info=True;Provider=SQLOLEDB.1;User ID='+Fusr_pwd_lis^.user_name+';Password='+Fusr_pwd_lis^.user_pass+';Initial Catalog='+Fusr_pwd_lis^.catalog+';Data Source='+Fusr_pwd_lis^.server+';';
  Fconnect.KeepConnection   := False;
  Fconnect.LoginPrompt      := False;

  Query_Customer.Connection       := Fconnect;
  Query_Self.Connection           := Fconnect;
  Query_Currency.Connection       := Fconnect;
  Query_TypeClient.Connection     := Fconnect;
  Query_TypeAgent.Connection      := Fconnect;
  Query_Property.Connection       := Fconnect;
  Query_Arenda_Repair_Type.Connection := Fconnect;
  Query_Provider.Connection       := Fconnect;

  Ftype_action := 0;
  Fcontract_id := -9;
  Fbudget_id          := -9;
  Fbudget_id_lis_docs := -9;
  Farticle_id_lis_docs:= -9;
  Fusr_pwd_lis := usr_pwd_lis;

  Ftype_contract   := type_contract;
  Fset_limit       := False;
  Fstr_contract_id := '';
  Fstr_header      := '';
  Fdate_finance_close := Now;

  cxPageControl1.ActivePageIndex := 0;

  SetUsersModuleRights(self, Fconnect);

  cxDateEdit1.Properties.OnEditValueChanged := nil;
  Query_Self.Open;
  cxLookupComboBox2.EditValue := Query_Self.FieldByName('firm_id').AsInteger;

  Query_Customer.Open;
  Query_Currency.Open;

  Query_TypeClient.Open;
  Query_TypeAgent.Open;
  Query_Property.Open;
  Query_Arenda_Repair_Type.Open;

  case type_contract of
    0 : begin
          Label4.Caption := 'Клиент..................';
          cxLookupComboBox11.Properties.ListSource := DS_TypeAgent;
          cxLookupComboBox10.Properties.ListSource := DS_TypeClient;
          RadioGroup1.Visible := True;
          Panel3.Visible := True;
        end;
    1 : begin
          Label4.Caption := 'Подрядчик....................';
          cxLookupComboBox11.Properties.ListSource := DS_TypeClient;
          cxLookupComboBox10.Properties.ListSource := DS_TypeAgent;
        end;
    2 : begin
          Label4.Caption := 'Агент....................';
          cxTextEdit1.Properties.ReadOnly := False;
          cxCheckBox1.Checked := True;

          cxLookupComboBox11.Properties.ListSource := DS_TypeClient;
          cxLookupComboBox10.Properties.ListSource := DS_TypeAgent;
          cxLookupComboBox10.Visible := False;
          cxLookupComboBox11.Visible := False;


        end;
  end;
  cxDateEdit1.Properties.OnEditValueChanged := cxDateEdit1PropertiesEditValueChanged;
  cxDateEdit1PropertiesEditValueChanged(nil);


  if  Fusr_pwd_lis.user_func.Locate('func_name', 'set_contract_passport_modify', [loCaseInsensitive]) then begin
    // ----- паспорт сделки -----------
    cxCheckBox4.Enabled := True;
  end;

  if  Fusr_pwd_lis.user_func.Locate('func_name', 'set_contract_court_modify', [loCaseInsensitive]) then begin
    // ----- судебный иск -----------
    cxCheckBox5.Enabled := True;
  end;

  if  Fusr_pwd_lis.user_func.Locate('func_name', 'set_contract_full_rights', [loCaseInsensitive]) then begin
    // ----- судебный иск -----------
    cxCheckBox5.Enabled := True;
    // ----- последний отчётный месяц -------
    cxButtonEdit1.Enabled := True;
  end;

  if Fusr_pwd_lis.user_func.Locate('func_name', 'set_contract_period_arenda_close', [loCaseInsensitive]) then begin
    cxDateEdit6.Properties.ReadOnly := False;
    cxDateEdit6.Style.Color := clWindow;
  end;

  StoreRegistryGrid(rgLoad, '\Software\Lis1\ContractAdd_Grids', cxGridDBBandedTableView1);
  dxBarButton4.Enabled := False;
  dxBarButton5.Enabled := False;
  dxBarButton6.Enabled := False;
  dxBarButton7.Enabled := False;
  dxBarButton8.Enabled := False;
  dxBarButton9.Enabled := True;
  cxButton1.Enabled := False;

  Screen.Cursor := crDefault;
end;


constructor TfmContractAdd.Create(AOwner: TApplication; type_contract: byte);
begin
  inherited Create(AOwner);
  Screen.Cursor := crHourglass;

  StoreRegistryGrid(rgLoad, '\Software\Lis1\ContractAdd_Grids', cxGridDBBandedTableView1);

  Fset_run_dll  := False;
  Fconnect      := fmMain.Lis;
  Fusr_pwd_lis  := usr_pwd;

  Ftype_action := 0;
  Fcontract_id := -9;
  Fbudget_id          := -9;
  Fbudget_id_lis_docs := -9;
  Farticle_id_lis_docs:= -9;
  Ftype_contract := type_contract;
  Fset_limit := False;
  Fstr_contract_id := '';
  new(Fusr_pwd_docs);
  Fusr_pwd_docs.users_id  := -9;

  cxPageControl1.ActivePageIndex := 0;

  cxCurrencyEdit2.EditValue := null;
  cxCurrencyEdit5.EditValue := null;

  SetUsersModuleRights(self, Fconnect);

  cxDateEdit1.Properties.OnEditValueChanged := nil;
  Query_Self.Open;
  cxLookupComboBox2.EditValue := Query_Self.FieldByName('firm_id').AsInteger;

  Query_Customer.Open;
  Query_Currency.Open;

  Query_TypeClient.Open;
  Query_TypeAgent.Open;
  Query_Property.Open;

  case type_contract of
    0 : begin
          Label4.Caption := 'Клиент..................';
          cxLookupComboBox11.Properties.ListSource := DS_TypeAgent;
          cxLookupComboBox10.Properties.ListSource := DS_TypeClient;
          RadioGroup1.Visible := True;
          Panel3.Visible := True;
        end;
    1 : begin
          Label4.Caption := 'Подрядчик....................';
          cxLookupComboBox11.Properties.ListSource := DS_TypeClient;
          cxLookupComboBox10.Properties.ListSource := DS_TypeAgent;
        end;
    2 : begin
          Label4.Caption := 'Агент....................';
          cxTextEdit1.Properties.ReadOnly := False;
          cxCheckBox1.Checked := True;

          cxLookupComboBox11.Properties.ListSource := DS_TypeClient;
          cxLookupComboBox10.Properties.ListSource := DS_TypeAgent;
          cxLookupComboBox10.Visible := False;
          cxLookupComboBox11.Visible := False;

          cxButtonEdit4.Enabled := True;
          cxTextEdit7.Enabled   := True;
          cxButtonEdit5.Enabled := True;
          cxTextEdit8.Enabled   := True;
        end;
  end;
  cxDateEdit1.Properties.OnEditValueChanged := cxDateEdit1PropertiesEditValueChanged;
  cxDateEdit1PropertiesEditValueChanged(nil);

  if  Fusr_pwd_lis.user_func.Locate('func_name', 'set_contract_passport_modify', [loCaseInsensitive]) then begin
    // ----- паспорт сделки -----------
    cxCheckBox4.Enabled := True;
  end;

  if  Fusr_pwd_lis.user_func.Locate('func_name', 'set_contract_court_modify', [loCaseInsensitive]) then begin
    // ----- судебный иск -----------
    cxCheckBox5.Enabled := True;
  end;

  if  Fusr_pwd_lis.user_func.Locate('func_name', 'set_contract_full_rights', [loCaseInsensitive]) then begin
    // ----- судебный иск -----------
    cxCheckBox5.Enabled := True;
    // ----- последний отчётный месяц -------
    cxButtonEdit1.Enabled := True;
  end;

  if Fusr_pwd_lis.user_func.Locate('func_name', 'set_contract_invoice_header', [loCaseInsensitive]) then begin
    cxCheckComboBox3.Properties.ReadOnly := False;
    cxCheckComboBox3.Style.Color := clWindow;
  end;

  if Fusr_pwd_lis.user_func.Locate('func_name', 'set_contract_period_arenda_close', [loCaseInsensitive]) then begin
    cxDateEdit6.Properties.ReadOnly := False;
    cxDateEdit6.Style.Color := clWindow;
  end;

  Query_Arenda_Repair_Type.Open;

  Screen.Cursor := crDefault;
end;

procedure TfmContractAdd.CreateLimit();
var Q : TADOQuery;
begin
  Client_Limit.CreateDataSet;
  Client_Limit.LogChanges := False;

  Q := TADOQuery.Create(nil);
  Q.Connection := Fconnect;
  if Ftype_action <> 5 then begin
    Q.SQL.Add('SELECT	inf_obj.inf_obj_id, inf_obj.inf_obj_name, inf_obj.inf_obj_cod, ');
    Q.SQL.Add('       isnull(contract_limit.set_check,0) AS set_check, contract_limit.limit_value');
    Q.SQL.Add('FROM	  inf_obj ');
    Q.SQL.Add('       LEFT JOIN contract_limit ON');
    Q.SQL.Add('                 inf_obj.inf_obj_id = contract_limit.limit_id ');
    Q.SQL.Add('                 AND contract_limit.contract_id = ' + IntToStr(Fcontract_id));
    Q.SQL.Add('WHERE	type_inf_id = -41');
    Q.SQL.Add('ORDER BY inf_obj_cod');

    cxGridDBBandedTableView1.GetColumnByFieldName('limit_group').Visible := False;
  end else begin
    Q.SQL.Add('SELECT	inf_obj.inf_obj_id, inf_obj.inf_obj_name, inf_obj.inf_obj_cod, ');
    Q.SQL.Add('       0 AS set_check, null AS limit_value');
    Q.SQL.Add('FROM	  inf_obj ');
    Q.SQL.Add('WHERE	type_inf_id = -41');
    Q.SQL.Add('ORDER BY inf_obj_cod');

    cxGridDBBandedTableView1.GetColumnByFieldName('limit_group').Visible := True;
    cxGridDBBandedTableView1.GetColumnByFieldName('limit_group').Position.ColIndex := 0;
  end;
  Q.Open;

  while not Q.Eof do begin
    Client_Limit.Append;

    Client_Limit.FieldByName('inf_obj_id' ).Value := Q.FieldByName('inf_obj_id').Value;
    Client_Limit.FieldByName('limit_cod'  ).Value := Q.FieldByName('inf_obj_cod').Value;
    Client_Limit.FieldByName('limit_name' ).Value := Q.FieldByName('inf_obj_name').Value;
    Client_Limit.FieldByName('set_check'  ).Value := Q.FieldByName('set_check').Value;
    Client_Limit.FieldByName('limit_value').Value := Q.FieldByName('limit_value').Value;
    if Ftype_action = 5 then Client_Limit.FieldByName('limit_group').Value := False;

    if MatchText(Q.FieldByName('inf_obj_cod').Value, ['01','02','05','06','09','10','13','14','17','18']) then
      Client_Limit.FieldByName('limit_type'      ).Value := 'баланс (проверка текущего баланса)';

    if MatchText(Q.FieldByName('inf_obj_cod').Value, ['03','04','07','08','11','12','15','16','19','20']) then
      Client_Limit.FieldByName('limit_type'      ).Value := 'подписи (наличие документов со стороны контрагентов)';

    if MatchText(Q.FieldByName('inf_obj_cod').Value, ['01','03','05','07','09','11','13','15','17','19']) then
      Client_Limit.FieldByName('limit_action'    ).Value := 'запрет';

    if MatchText(Q.FieldByName('inf_obj_cod').Value, ['02','04','06','08','10','12','14','16','18','20']) then
      Client_Limit.FieldByName('limit_action'    ).Value := 'предупреждение';

    if MatchText(Q.FieldByName('inf_obj_cod').Value, ['01','02','05','06','09','10','13','14','17','18']) then
      Client_Limit.FieldByName('set_limit_value' ).Value := False
    else
      Client_Limit.FieldByName('set_limit_value' ).Value := True;

    Client_Limit.Post;

    Q.Next;
  end;

  Q.Free;
end;

procedure TfmContractAdd.SetInsert(firm_id : integer);
var Year, Month, Day : Word;
begin
  Screen.Cursor := crHourglass;

  Ftype_action := 0;

  DecodeDate(Now, Year, Month, Day);
  cxDateEdit1.EditValue := Date();
  cxDateEdit3.EditValue := cxDateEdit1.EditValue;
  cxDateEdit2.EditValue := StrToDate('31'+FormatSettings.DateSeparator+'12'+FormatSettings.DateSeparator+IntToStr(Year));

  cxLookupComboBox1.EditValue := firm_id;
  //cxLookupComboBox3.EditValue := 3;

  cxTextEdit9.Properties.ReadOnly     := True;
  cxCurrencyEdit2.Properties.ReadOnly := True;

  cxTextEdit10.Properties.ReadOnly    := True;
  cxCurrencyEdit5.Properties.ReadOnly := True;

  // ----- закладка Ограничения --------
  CreateLimit;

  MonitorEventFormOpen('OPEN_FORM', self.Name, fmMain.Lis, -9);
  Screen.Cursor := crDefault;
end;

procedure TfmContractAdd.SetUpdate(contract_id : integer);
var                 Q : TADOQuery;
   SP_contract_modify : TADOStoredProc;
                    i,j : integer;
                   SP : TADOStoredProc;
                   StringList: TStringList;
begin
  Screen.Cursor := crHourglass;

  Caption := Caption + ' [' + IntToStr(contract_id) + ']';

  Ftype_action := 1;
  Fcontract_id := contract_id;

  SP_contract_modify := TADOStoredProc.Create(nil);
  SP_contract_modify.Connection := Fconnect;
  SP_contract_modify.ProcedureName := 'sp_contract_modify';
  SP_contract_modify.Parameters.Refresh;
  SP_contract_modify.Parameters.ParamByName('@contract_id').Value := Fcontract_id;
  SP_contract_modify.Parameters.ParamByName('@type_action').Value := 9;

  try
    SP_contract_modify.ExecProc;
  except
  end;

  if SP_contract_modify.Parameters.ParamByName('@contract_id').Value = -9 then begin
    if not Fusr_pwd_lis.user_func.Locate('func_name', 'set_contract_full_rights', [loCaseInsensitive]) then begin
      cxCheckBox1.Enabled := False;
      for i := 0 to ComponentCount - 1 do
        if Components[i].Tag = 9 then begin
          if Components[i].ClassNameIs('TcxTextEdit')
          or Components[i].ClassNameIs('TcxLookupComboBox')
          or Components[i].ClassNameIs('TcxDateEdit')
          or Components[i].ClassNameIs('TcxButtonEdit')
          then begin
            TcxCustomTextEdit(Components[i]).Properties.ReadOnly := True;
            TcxCustomTextEdit(Components[i]).Style.Color := clBtnFace;
          end;
        end;
    end;
    Application.MessageBox('C договором связаны документы/перевозки. Основные параметры не изменяются.', 'Внимание', MB_OK);
  end;

  Q := TADOQuery.Create(nil);
  Q.Connection := Fconnect;
  Q.SQL.Add('SELECT * FROM view_contract_rights WHERE contract_id='+IntToStr(contract_id));
  Q.Open;

  cxDateEdit1.Properties.OnEditValueChanged       := nil;
  cxLookupComboBox2.Properties.OnEditValueChanged := nil;

  cxCheckBox1.Checked    := Q.FieldByName('set_hand_modify').AsBoolean;
  cxTextEdit1.EditValue  := Q.FieldByName('contract_cod').AsString;
  cxDateEdit1.EditValue  := Q.FieldByName('date_begin').AsDateTime;

  if not Q.FieldByName('budget_id' ).IsNull then
    Fbudget_id := Q.FieldByName('budget_id' ).AsInteger;

  if not Q.FieldByName('budget_id_lis_docs' ).IsNull then
    Fbudget_id_lis_docs := Q.FieldByName('budget_id_lis_docs' ).AsInteger;

  if not Q.FieldByName('article_id_lis_docs' ).IsNull then
    Farticle_id_lis_docs := Q.FieldByName('article_id_lis_docs' ).AsInteger;

  cxTextEdit6.EditValue          := Q.FieldByName('budget_cod' ).AsString;
  cxButtonEdit3.EditValue        := Q.FieldByName('budget_name').AsString;

  cxTextEdit7.EditValue          := Q.FieldByName('budget_cod_lis_docs' ).AsString;
  cxButtonEdit4.EditValue        := Q.FieldByName('budget_name_lis_docs').AsString;

  cxTextEdit8.EditValue          := Q.FieldByName('article_cod_lis_docs' ).AsString;
  cxButtonEdit5.EditValue        := Q.FieldByName('article_name_lis_docs').AsString;

  cxComboBox1.ItemIndex          := iif(Q.FieldByName('type_main_customer').Value = null, -1, Q.FieldByName('type_main_customer').AsInteger);

  cxDateEdit2.EditValue          := Q.FieldByName('date_end').AsDateTime;
  cxDateEdit3.EditValue          := Q.FieldByName('date_begin_period').AsDateTime;
  cxLookupComboBox1.EditValue    := Q.FieldByName('firm_customer').AsInteger;
  cxLookupComboBox2.EditValue    := Q.FieldByName('firm_self').AsInteger;
  cxLookupComboBox3.EditValue    := Q.FieldByName('currency_id').AsInteger;
  cxLookupComboBox11.EditValue   := Q.FieldByName('type_firm_self_id').Value;
  cxLookupComboBox10.EditValue   := Q.FieldByName('type_firm_customer_id').Value;
  cxCurrencyEdit4.EditValue      := Q.FieldByName('free_idle_day').AsCurrency;
  cxLookupComboBox5.EditValue    := Q.FieldByName('arenda_repair_type_id').Value;
  cxDateEdit6.EditValue          := Q.FieldByName('date_arenda_close').Value;
  cxCheckBox6.Checked            := Q.FieldByName('set_contract_EDO').Value;

  cxCheckBox5.Checked   := Q.FieldByName('set_court').Value;
  cxTextEdit5.EditValue := Q.FieldByName('igk_cod').Value;

  cxCheckBox4.Checked                     := Q.FieldByName('set_passport').Value;
  if cxCheckBox4.Checked = True then begin
    cxTextEdit2.EditValue := Q.FieldByName('passport_cod').Value;
    cxDateEdit4.EditValue := Q.FieldByName('passport_date_begin').Value;
    cxDateEdit5.EditValue := Q.FieldByName('passport_date_end').Value;
    if cxDateEdit5.EditValue <> null then cxCheckBox2.Checked := True;
  end;

  RadioGroup1.ItemIndex := Q.FieldByName('set_credit').AsInteger;
  cxCurrencyEdit1.EditValue := Q.FieldByName('sum_credit').AsCurrency;
  cxCheckBox3.EditValue := Q.FieldByName('set_email_credit').Value;
  cxTextEdit4.EditValue := Q.FieldByName('email_credit').Value;

  cxButtonEdit2.EditValue := Q.FieldByName('curator_FIO_users').Value;
  cxMemo1.EditValue := Q.FieldByName('note').Value;
  cxMemo2.EditValue := Q.FieldByName('note_credit').Value;
  cxMemo3.EditValue := Q.FieldByName('conditions_credit').Value;
  if not Q.FieldByName('date_finance_close').IsNull then begin
    Fdate_finance_close := Q.FieldByName('date_finance_close').AsDateTime;
    cxButtonEdit1.Text := FormatDateTime('mmmmm', Q.FieldByName('date_finance_close').Value) + ' ' + FormatDateTime('yyyy г.', Q.FieldByName('date_finance_close').Value);
  end;

  cxDateEdit1.Properties.OnEditValueChanged       := cxDateEdit1PropertiesEditValueChanged;
  cxLookupComboBox2.Properties.OnEditValueChanged := cxLookupComboBox2PropertiesEditValueChanged;
  cxDateEdit1PropertiesEditValueChanged(nil);

  if not Q.FieldByName('str_invoice_header_id').IsNull then begin
   Fstr_header := Q.FieldByName('str_invoice_header_id').AsString;
   StringList := TStringList.Create;
   StringList.CommaText := Fstr_header;
   StringList.Delimiter := ',';
//   for i := 0 to StringList.Count - 1 do
    for j := 0 to cxCheckComboBox3.Properties.Items.Count - 1 do begin
       if StringList.Find(IntToStr(cxCheckComboBox3.Properties.Items[j].Tag), i) then
          cxCheckComboBox3.States[j] := cbsChecked;
    end;
  end;

  Q.Close;
  Q.SQL.Text := 'DECLARE @contract_id int = ' + IntToStr(contract_id) + ' SELECT TOP 1 date_period, type_close, act_sum, date_period_2, ' +
  'type_close_2, act_sum_2 FROM view_contract_period_close LEFT JOIN (SELECT TOP 1 date_period as date_period_2, type_close AS type_close_2, '+
  'act_sum AS act_sum_2 FROM view_contract_period_close WHERE type_close = 2 AND contract_id = @contract_id ORDER BY date_period DESC) i ON 1 = 1 ' +
  'WHERE type_close = 1 AND contract_id = @contract_id ORDER BY date_period DESC';
  Q.Open;
  Q.First;
  if Q.RecordCount > 0 then begin

    cxTextEdit9.Text          := FormatDateTime('mmmm yyyy', Q.FieldByName('date_period').AsDateTime);
    cxCurrencyEdit2.EditValue := Q.FieldByName('act_sum').Value;

    cxTextEdit10.Text         := FormatDateTime('mmmm yyyy', Q.FieldByName('date_period_2').AsDateTime);
    cxCurrencyEdit5.EditValue := Q.FieldByName('act_sum_2').Value;

    cxTextEdit9.Properties.ReadOnly     := True;
    cxCurrencyEdit2.Properties.ReadOnly := True;

    cxTextEdit10.Properties.ReadOnly    := True;
    cxCurrencyEdit5.Properties.ReadOnly := True;
  end;

  SP_contract_modify.Free;

  // ----- закладка Ограничения --------
  CreateLimit;
  GetPlanBalance;

  ShowTextMessage();
  Q.Free;

  MonitorEventFormOpen('OPEN_FORM', self.Name, fmMain.Lis, Fcontract_id);

  Screen.Cursor := crDefault;
end;

procedure TfmContractAdd.GetPlanBalance();
var SP_invoice_balance_GET : TADOStoredProc;
begin
  Label11.Caption := 'Баланс план (' + DateToStr(Date) + ')............................';

  SP_invoice_balance_GET := TADOStoredProc.Create(nil);
  SP_invoice_balance_GET.Connection := Fconnect;

  if Ftype_contract = 1 then
    SP_invoice_balance_GET.ProcedureName := 'SP_invoice_balance_GET_agent'
  else
    SP_invoice_balance_GET.ProcedureName := 'SP_invoice_balance_GET_new';

  SP_invoice_balance_GET.Parameters.Refresh;
  SP_invoice_balance_GET.Parameters.ParamByName('@contract_id').Value := Fcontract_id;
  SP_invoice_balance_GET.Parameters.ParamByName('@date_begin' ).Value := Date;
  SP_invoice_balance_GET.Parameters.ParamByName('@date_end'   ).Value := Date;
  SP_invoice_balance_GET.Parameters.ParamByName('@type_result').Value := 10;
  SP_invoice_balance_GET.Parameters.ParamByName('@currency_id').Value := cxLookupComboBox3.EditValue;
  SP_invoice_balance_GET.Parameters.ParamByName('@set_return' ).Value := False;

  try
    SP_invoice_balance_GET.ExecProc;
    if SP_invoice_balance_GET.Parameters.ParamByName('@str_error').Value <> null then begin
      cxCurrencyEdit3.Properties.DisplayFormat  := '';
      cxCurrencyEdit3.Properties.Alignment.Horz := taLeftJustify;
      cxCurrencyEdit3.EditValue := SP_invoice_balance_GET.Parameters.ParamByName('@str_error').Value;
      cxCurrencyEdit3.Text      := SP_invoice_balance_GET.Parameters.ParamByName('@str_error').Value;
    end else begin
      cxCurrencyEdit3.Properties.DisplayFormat  := '#,##0.00';
      cxCurrencyEdit3.Properties.Alignment.Horz := taRightJustify;
      cxCurrencyEdit3.EditValue := SP_invoice_balance_GET.Parameters.ParamByName('@out_balance_plan_end').Value;
    end;
  except
    cxCurrencyEdit3.Properties.DisplayFormat := '';
    cxCurrencyEdit3.EditValue := 'Ошибка.';
  end;

  SP_invoice_balance_GET.Free;
end;

procedure TfmContractAdd.SetLimitContract(str_contract_id : string);
begin
  Fset_limit := True;
  Fstr_contract_id := str_contract_id;
  Ftype_action := 5;  //--- групповое обновление ограничений

  cxTabSheet1.TabVisible := False;
  CreateLimit;
end;

procedure TfmContractAdd.cxButtonEdit1PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
 case AButtonIndex of
    0 : begin
          fmPeriod := TfmPeriod.Create(Application, Now, Now, 3);
          if fmPeriod.ShowModal=mrOK then begin
            Fdate_finance_close := EncodeDate(YearOf(fmPeriod._GetMonth), MonthOf(fmPeriod._GetMonth), 1);
            cxButtonEdit1.Text := FormatDateTime('mmmmm', fmPeriod._GetMonth) + ' ' + FormatDateTime('yyyy г.', fmPeriod._GetMonth);
          end;

        end;
    1 : begin
          cxButtonEdit1.Text := '';
          Fdate_finance_close := 0;
        end;
  end;
end;

procedure TfmContractAdd.cxButtonEdit2PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
type TFuncList = function (AppHand: THandle): Variant;
var FPersonList: TFuncList;
         handle: THandle;
              v: Variant;
              Q: TADODataSet;
begin
  case AButtonIndex of
    0 : begin
//          try
//
//            handle := LoadLibrary('Tel_users.dll');
//            @FPersonList := GetProcAddress(handle, 'GetPersonList');
//            v := FPersonList(Application.Handle);
//            FreeLibrary(handle);
//            Q := TADODataSet.Create(nil);
//            Q.Recordset := RecordsetFromXML(v[1]);
//            fmFilter := TfmFilter.Create(0, Q, 'users_id', 'users_id', 'FIO_users' );
//            fmFilter._SelectIndexColumn := 1;
//            fmFilter.SetUsersChoose(cxButtonEdit2.Text);
//            if fmFilter.ShowModal = mrOk then begin
//              Q.Locate('fio_users', fmFilter.GetName, [loCaseInsensitive]);
//              cxButtonEdit2.EditValue := fmFilter.GetName;
//              cxButtonEdit2.Properties.Buttons[1].Enabled := True;
//            end;
//
//            Q.Free;
//          except
//            Application.MessageBox('Ошибка загрузки библиотеки телефонного справочника.', 'Ошибка', MB_ICONERROR or MB_OK);
//          end;
        end;
    1 : begin
//          Screen.Cursor := crHourglass;
//          if  cxButtonEdit2.Text <> '' then ShowUsersDetail(-9, cxButtonEdit2.Text);
//          Screen.Cursor := crDefault;
        end;
  end;
end;

procedure TfmContractAdd.cxButtonEdit3PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
type
  TFunc = function(AppHand:THandle; f:boolean; usr_pwd:PUser_pwd; budget_type_cod: string; budget_id: integer) : variant;
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
          v := FDic(Application.Handle, True, usr_pwd, '', Fbudget_id);
          FreeLibrary(handle);

          if v[0] <> -9 then begin
            Fbudget_id := v[0];

            Query_Service := TADOQuery.Create(self);
            Query_Service.Connection := Query_Customer.Connection;
            Query_Service.SQL.Text := 'SELECT * FROM view_shp_budget_service where budget_id = :budget_id';
            Query_Service.Parameters.ParamByName('budget_id').Value := Fbudget_id;
            Query_Service.Open;

            cxButtonEdit3.Text := Query_Service.FieldByName('budget_name').AsString;
            cxTextEdit6.Text   := Query_Service.FieldByName('budget_cod').AsString;

            Query_Service.Free;
          end;
        end;
    1 : begin
          cxButtonEdit3.EditValue := null;
          cxTextEdit6.EditValue := null;
          Fbudget_id := -9;
        end;
  end;
end;

procedure TfmContractAdd.cxButtonEdit4PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
type
  TFunc     = function(AppHand : THandle; Fusr_pwd_docs : PUser_pwd; iTag : SmallInt) : Variant;
  TFuncPass = function(AppHand : THandle; usr_pwd      : PUser_pwd): Variant;
var
  FDic         : TFunc;
  FPass        : TFuncPass;
  handle       : THandle;
  v            : Variant;
  registry     : TRegistry;
  connect      : TADOConnection;
  Q            : TADOQuery;

  iTag         : SmallInt; {Tag объета с которого запущено выполнение процедуры 0 - Бюджет; 1 - Статья;}
  server,
  catalog,
  users_name,
  users_pass,
  path_docs    : string;
begin
  {Tag объета с которого запущено выполнение процедуры
  0 - Бюджет;
  1 - Статья;}
  iTag := TcxButtonEdit(Sender).Tag;

  case AButtonIndex of
    0 : begin
      if Fusr_pwd_docs.users_id = -9 then begin
        registry := TRegistry.Create;
        registry.RootKey := HKEY_CURRENT_USER;
        registry.OpenKey('\Software\LIS_Docs', True);
        server  := '10.10.101.28';// registry.ReadString('Data Source');
        catalog := registry.ReadString('Initial Catalog');
        users_name := registry.ReadString('User ID');
        path_docs  := registry.ReadString('Path Docs');
        users_pass := usr_pwd.user_pass;
        registry.Free;

        if path_docs = '' then begin
          Application.MessageBox('Документооборот не установлен!', 'Внимание!', MB_ICONSTOP or MB_OK);
          Exit;
        end;

        if (server = '') or (catalog = '') or (users_name = '') then begin
          Application.MessageBox('Запустите Документооборот!', 'Внимание!', MB_ICONSTOP or MB_OK);
          Exit;
        end;

        try
          connect := TADOConnection.Create(nil);
          connect.KeepConnection := False;
          connect.LoginPrompt    := False;
          connect.ConnectionString  := 'Persist Security Info = True;Provider = SQLOLEDB.1;User ID = ' + users_name + ';Password = '
          + users_pass + ';Initial Catalog = ' + catalog + ';Data Source = ' + server + ';';
          connect.Open;

          Q := TADOQuery.Create(nil);
          Q.Connection := connect;
          Q.SQL.Add('SELECT * FROM users WHERE users_name=''' + users_name + ''' AND date_end is null');
          Q.Open;

          if Q.RecordCount > 0 then begin
            Fusr_pwd_docs.users_id := Q.FieldByName('users_id').AsInteger;
            Fusr_pwd_docs.user_cod := Q.FieldByName('users_cod').AsString;
            Fusr_pwd_docs.user_name := users_name;
            Fusr_pwd_docs.user_pass := users_pass;
            Fusr_pwd_docs.server    := server;
            Fusr_pwd_docs.session   := -9;
            Fusr_pwd_docs.catalog   := catalog;

          end;
          Q.Free;
          connect.Free;
        except
        end;
      end;

      if Fusr_pwd_docs.users_id = -9 then begin
        handle := LoadLibrary(PWideChar(path_docs + 'pass_DV.dll'));
        @FPass := GetProcAddress(handle, 'CreateWndPassword');
        v := FPass(Application.Handle, nil);
        FreeLibrary(handle);

        if (not VarIsNull(v)) and ( v[0] <> -9) then begin
          Fusr_pwd_docs.users_id  := v[0];
          Fusr_pwd_docs.user_name := v[1];
          Fusr_pwd_docs.user_pass := v[2];
          Fusr_pwd_docs.server    := v[3];
          Fusr_pwd_docs.session   := v[4];
          Fusr_pwd_docs.user_cod  := v[5];
          Fusr_pwd_docs.catalog   := v[6];
        end;
      end;

      if Fusr_pwd_docs.users_id = -9 then begin
        Application.MessageBox('Не удалось подключится к Документообороту!', 'Внимание!', MB_ICONSTOP or MB_OK);
        Exit;
      end;

      {запускаем выбор бюджетов при успешном входе в ЛИС_ДОК}
      handle := LoadLibrary('formsadd.dll');
      @FDic := GetProcAddress(handle, 'CreateWndFilterTree');
      v := FDic(Application.Handle, Fusr_pwd_docs, iTag);

      FreeLibrary(handle);

      {Tag объета с которого запущено выполнение процедуры
      0 - Бюджет; 1 - Статья;}
      if iTag = 0 then begin
        if v[0] <> -9 then begin //получаем и обрабатываем бюджет
          Fbudget_id_lis_docs     := v[0];
          cxButtonEdit4.EditValue := v[2];
          cxTextEdit7.EditValue   := v[1];
        end;
      end else begin
        if v[0] <> -9 then begin //получаем и обрабатываем статью
          Farticle_id_lis_docs    := v[0];
          cxButtonEdit5.EditValue := v[2];
          cxTextEdit8.EditValue   := v[1];
        end
      end;

    end;
    1 : begin
      if iTag = 0 then begin
        Fbudget_id_lis_docs     := -9;
        cxButtonEdit4.EditValue := null;
        cxTextEdit7.EditValue   := null;
      end else begin
        Farticle_id_lis_docs    := -9;
        cxButtonEdit5.EditValue := null;
        cxTextEdit8.EditValue   := null;
      end;
    end;
  end;
end;


procedure TfmContractAdd.cxCheckBox1PropertiesChange(Sender: TObject);
begin
  if cxCheckBox1.Checked then begin
    cxTextEdit1.Properties.ReadOnly := False;
    cxTextEdit1.Style.Color := $00C6FFFF;
    cxTextEdit1.EditValue := null;
  end else begin
    cxTextEdit1.Properties.ReadOnly := True;
    cxTextEdit1.Style.Color := clBtnFace;
    cxTextEdit1.EditValue := null;
  end;
  cxDateEdit1PropertiesEditValueChanged(nil);
end;

procedure TfmContractAdd.cxCheckBox2PropertiesEditValueChanged(Sender: TObject);
begin
  if cxCheckBox2.Checked and cxCheckBox2.Enabled then begin
    cxDateEdit5.Properties.ReadOnly := False;
    cxDateEdit5.Style.Color := clWindow;
  end else begin
    cxDateEdit5.Properties.ReadOnly := True;
    cxDateEdit5.Style.Color := clBtnFace;
  end;

  if not cxCheckBox2.Checked then begin
    cxDateEdit5.EditValue := null;
  end;
end;

procedure TfmContractAdd.cxCheckBox3PropertiesEditValueChanged(Sender: TObject);
begin
  Label22.Enabled := cxCheckBox3.Checked;
  cxTextEdit4.Enabled := cxCheckBox3.Checked;
end;

procedure TfmContractAdd.cxCheckBox4PropertiesEditValueChanged(Sender: TObject);
begin
  if cxCheckBox4.Checked and cxCheckBox4.Enabled then begin
    cxTextEdit2.Properties.ReadOnly := False;
    cxTextEdit2.Style.Color := clWindow;

    Label16.Enabled := True;
    cxCheckBox2.Enabled := True;
    cxDateEdit4.Properties.ReadOnly := False;
    cxDateEdit4.Style.Color := clWindow;
    if cxCheckBox2.Checked then begin
      cxDateEdit5.Properties.ReadOnly := False;
      cxDateEdit5.Style.Color := clWindow;
    end;
  end else begin
    cxTextEdit2.Properties.ReadOnly := True;
    cxTextEdit2.Style.Color := clBtnFace;

    Label16.Enabled := False;
    cxCheckBox2.Enabled := False;

    cxDateEdit4.Properties.ReadOnly := True;
    cxDateEdit4.Style.Color := clBtnFace;
    cxDateEdit5.Properties.ReadOnly := True;
    cxDateEdit5.Style.Color := clBtnFace;
  end;
end;

procedure TfmContractAdd.cxDateEdit1PropertiesEditValueChanged(Sender: TObject);
var        Query : TADOQuery;
    shablon_type : integer;
begin
  if (cxDateEdit1.EditValue = null) or (cxLookupComboBox2.EditValue = null) then begin
    cxTextEdit1.Properties.ReadOnly := False;
    Exit;
  end;

  // ---- только при добавлении договора -----------
  if Ftype_action = 0 then begin
    if not cxCheckBox1.Checked then begin

      Query := TADOQuery.Create(nil);
      Query.Connection := Fconnect;

      if (Ftype_contract = 0) or (Ftype_contract = 1) or (Ftype_contract = 2) then begin
        if Ftype_contract = 0 then shablon_type :=  0;
        if Ftype_contract = 1 then shablon_type := 11;
        if Ftype_contract = 2 then shablon_type := 20;
        Query.SQL.Clear;
        Query.SQL.Add('SELECT * FROM shablon WHERE shablon_type = ' + IntToStr(shablon_type) + ' and firm_id = ' + VarToStr(cxLookupComboBox2.EditValue));
        Query.Open;
        if Query.RecordCount > 0 then begin
          Query.Close;
          Query.SQL.Clear;
          Query.SQL.Add('SELECT * FROM dbo.GetCodByFirm(null, ' + VarToStr(cxLookupComboBox2.EditValue) + ', ' + IntToStr(shablon_type) + ', ' + DateToSQL(cxDateEdit1.EditValue) + ')');
          Query.Open;
          cxTextEdit1.EditValue := Query.FieldByName('cod').AsString;
          cxTextEdit1.Properties.ReadOnly := True;
          cxTextEdit1.Style.Color := clBtnFace;

        end else begin
          cxTextEdit1.EditValue := null;
          cxTextEdit1.Properties.ReadOnly := False;
          cxTextEdit1.Style.Color := $00C6FFFF;
          cxCheckBox1.Checked := True;
        end;
        Query.Free;
      end;
    end;
  end;

  if Ftype_action = 1 then begin
    if not cxCheckBox1.Checked then begin
      Query := TADOQuery.Create(nil);
      Query.Connection := Fconnect;
      Query.SQL.Clear;
      Query.SQL.Add('SELECT * FROM view_contract WHERE contract_id = ' + IntToStr(Fcontract_id));
      Query.Open;

      cxCheckBox1.Checked   := Query.FieldByName('set_hand_modify').AsBoolean;
      cxTextEdit1.EditValue := Query.FieldByName('contract_cod').AsString;
      cxTextEdit1.Properties.ReadOnly := True;
      cxTextEdit1.Style.Color := clBtnFace;

      Query.Free;
    end;
  end;


  if cxCheckBox1.Checked then begin
    cxTextEdit1.Properties.ReadOnly := False;
    cxTextEdit1.Style.Color := $00C6FFFF;
  end;

  if (not VarIsNull(cxDateEdit3.EditValue)) and (not VarIsNull(cxDateEdit2.EditValue)) then begin
   Query_Provider.Close;
   Query_Provider.Parameters.ParamByName('date1').Value := cxDateEdit3.EditValue;
   Query_Provider.Parameters.ParamByName('date2').Value := cxDateEdit2.EditValue;
   Query_Provider.Open;
  end;

  cxCheckComboBox3.Properties.Items.Clear;
  while not Query_Provider.Eof do begin
    with cxCheckComboBox3.Properties.Items.Add do begin
      Description := Query_Provider.FieldByName('header_description').AsString;
      Tag         := Query_Provider.FieldByName('invoice_header_id').AsInteger;
    end;
    Query_Provider.Next;
  end;

end;

procedure TfmContractAdd.cxGrid1DBBandedTableView1CustomDrawCell(Sender: TcxCustomGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
  if AViewInfo.GridRecord.Selected or AViewInfo.GridRecord.Focused then begin
    ACanvas.Brush.Color := clNavy;
    ACanvas.Font.Color := clWhite;
    if AViewInfo.Focused then ACanvas.Brush.Color := clBlue;
  end;
end;

procedure TfmContractAdd.cxGrid1DBBandedTableView1CustomDrawColumnHeader(Sender: TcxGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxGridColumnHeaderViewInfo; var ADone: Boolean);
begin
  if AViewInfo.Column.Focused then begin
    ACanvas.Brush.Color := clNavy;
    ACanvas.Font.Color := clWhite;
  end;
end;

procedure TfmContractAdd.cxGridDBBandedTableView1CustomDrawCell(Sender: TcxCustomGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
  if AViewInfo.GridRecord.Selected or AViewInfo.GridRecord.Focused then begin
    ACanvas.Brush.Color := clNavy;
    ACanvas.Font.Color := clWhite;
    if AViewInfo.Focused then ACanvas.Brush.Color := clBlue;
  end;

  if (cxGridDBBandedTableView1limit_value.ID = AViewInfo.Item.ID) then begin
    if (AViewInfo.GridRecord.Values[cxGridDBBandedTableView1set_check.Index] = False) OR (AViewInfo.GridRecord.Values[cxGridDBBandedTableView1set_limit_value.Index] = 0) then begin
      ACanvas.Brush.Color := clGray;
      ACanvas.Font.Color  := clWhite;
    end;
  end;

  if (Ftype_action = 5) and (AViewInfo.GridRecord.Values[cxGridDBBandedTableView1limit_group.Index] = False) then begin
    if (cxGridDBBandedTableView1limit_group.ID <> AViewInfo.Item.ID) then begin
      ACanvas.Font.Color := clWhite;
      ACanvas.Brush.Color := clGray;
    end;
  end;
end;

procedure TfmContractAdd.cxGridDBBandedTableView1Editing(
  Sender: TcxCustomGridTableView; AItem: TcxCustomGridTableItem;
  var AAllow: Boolean);
begin

  if Ftype_action = 5 then begin
    if (cxGridDBBandedTableView1limit_group.ID <> AItem.ID) then begin
      if cxGridDBBandedTableView1limit_group.DataBinding.Field.Value = 0 then begin
        AAllow := False;
      end else begin
        if (cxGridDBBandedTableView1limit_value.ID = AItem.ID) then begin
          if (cxGridDBBandedTableView1set_limit_value.DataBinding.Field.Value = 0) OR (cxGridDBBandedTableView1set_check.DataBinding.Field.Value = 0) then begin
            AAllow := False;
          end;
        end;
      end;
    end;
  end else
    if (cxGridDBBandedTableView1limit_value.ID = AItem.ID) then begin
      if (cxGridDBBandedTableView1set_limit_value.DataBinding.Field.Value = 0) OR (cxGridDBBandedTableView1set_check.DataBinding.Field.Value = 0) then begin
        AAllow := False;
      end;
    end;
end;

procedure TfmContractAdd.cxGridDBBandedTableView1EditKeyDown(Sender: TcxCustomGridTableView; AItem: TcxCustomGridTableItem; AEdit: TcxCustomEdit; var Key: Word; Shift: TShiftState);
begin
  if Key = VK_DOWN  then Key := VK_RETURN;
  if Key = VK_UP    then Key := VK_RETURN;
  if Key = VK_LEFT  then Key := VK_RETURN;
  if Key = VK_RIGHT then Key := VK_RETURN;
end;

procedure TfmContractAdd.cxGridDBBandedTableView1EditValueChanged(Sender: TcxCustomGridTableView; AItem: TcxCustomGridTableItem);
begin
  Client_Limit.Post;
end;

procedure TfmContractAdd.cxGridDBBandedTableView2CustomDrawCell(Sender: TcxCustomGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
  if AViewInfo.GridRecord.Selected or AViewInfo.GridRecord.Focused then begin
    ACanvas.Brush.Color := clNavy;
    ACanvas.Font.Color := clWhite;
    if AViewInfo.Focused then begin
       ACanvas.Font.Color := clWhite;
       ACanvas.Brush.Color := clBlue;
    end;
  end;
end;

procedure TfmContractAdd.cxGridDBBandedTableView2CustomDrawColumnHeader(Sender: TcxGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxGridColumnHeaderViewInfo; var ADone: Boolean);
begin
  if AViewInfo.Column.Focused then begin
    ACanvas.Brush.Color := clNavy;
    ACanvas.Font.Color := clWhite;
  end;
end;

procedure TfmContractAdd.cxLookupComboBox1PropertiesEditValueChanged(Sender: TObject);
var  Q : TADOQuery;
begin
  Q := TADOQuery.Create(nil);
  Q.Connection := Fconnect;
  Q.SQL.Add('SELECT * FROM view_firm WHERE firm_id =' + VarToStr(cxLookupComboBox1.EditValue));
  Q.Open;
  cxLookupComboBox4.EditValue := Q.FieldByName('firm_property_id').Value;
  cxTextEdit3.EditValue       := cxLookupComboBox4.Text;


  if (Ftype_action = 1) then begin
    Q.Close;
    Q.SQL.Clear;
    Q.SQL.Add('SELECT set_passport, firm_customer, passport_cod FROM contract WHERE contract_id =' + IntToStr(Fcontract_id));
    Q.Open;
    if (cxLookupComboBox1.EditValue = Q.FieldByName('firm_customer').Value) then begin
      cxCheckBox4.Checked   := Q.FieldByName('set_passport').AsBoolean;
      cxTextEdit2.EditValue := Q.FieldByName('passport_cod').AsString;
    end
  end;

  Q.Free;
end;

procedure TfmContractAdd.cxLookupComboBox2PropertiesEditValueChanged(Sender: TObject);
begin
  cxDateEdit1PropertiesEditValueChanged(nil);
end;

procedure TfmContractAdd.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if Fset_run_dll then begin
   Fconnect.Close;
   Fconnect.Free;
  end;
  Action := caFree;
  Fusr_pwd_docs.user_func.Free;
  dispose(Fusr_pwd_docs);
end;

procedure TfmContractAdd.FormDestroy(Sender: TObject);
begin
  StoreRegistryGrid(rgSave, '\Software\Lis1\ContractAdd_Grids', cxGridDBBandedTableView1);
end;

procedure TfmContractAdd.BitBtn2Click(Sender: TObject);
begin
  Close;
end;

procedure TfmContractAdd.BitBtn1Click(Sender: TObject);
var  SP_Contract_Modify : TADOStoredProc;
                      i : integer;
              str_error : string;
begin
  if Fset_limit then UpdateGroupLimitContract
  else begin
    // -------- проверка на обязательность заполнения ------------
    str_error := '';
    if (cxTextEdit1.EditValue = null) then str_error := 'Не указан номер договора!';
    if (cxLookupComboBox1.EditValue = null) then str_error := str_error + #13#10 + 'Не указан Контрагент!';
    if (cxLookupComboBox2.EditValue = null) then str_error := str_error + #13#10 + 'Не указана Собственная организация!';
    if (cxLookupComboBox10.EditValue = null) AND (Ftype_contract = 0) then str_error := str_error + #13#10 + 'Не указан тип взаимоотношений для Контрагента!';
    if (cxLookupComboBox11.EditValue = null) AND (Ftype_contract = 0) then str_error := str_error + #13#10 + 'Не указан тип взаимоотношений для Собственной организации!';
    if (cxDateEdit1.EditValue = null) then str_error := str_error + #13#10 + 'Не указана дата подписания договора!';
    if (cxDateEdit3.EditValue = null) then str_error := str_error + #13#10 + 'Не указана дата начала действия договора!';
    //if (cxButtonEdit2.EditValue = null) then str_error := str_error + #13#10 + 'Не указан куратор договора!';
    if (cxLookupComboBox3.EditValue = null) then begin
      cxPageControl1.ActivePageIndex := 1;
      str_error := str_error + #13#10 + 'Не указана валюта договора!';
    end;
    if (RadioGroup1.ItemIndex = -1) then begin
      cxPageControl1.ActivePageIndex := 1;
      str_error := str_error + #13#10 + 'Не указан вид взаиморасчётов!';
    end;
    if (RadioGroup1.ItemIndex = 1) AND (cxCurrencyEdit1.EditValue = 0) AND (Ftype_contract = 0) then str_error := str_error + #13#10 + 'Не указана сумма кредитования';
    if (cxCheckBox2.Checked) and (cxDateEdit5.EditValue = null) then str_error := str_error + #13#10 + 'В паспорте сделки укажите "начало запрета"';

    if (str_error <> '') then begin
      Application.MessageBox(PChar(str_error), 'Ошибка', MB_OK OR MB_ICONEXCLAMATION);
      ModalResult := mrNone;
      exit;
    end;

    // ------ расчётные счета для договора ------------------
    Fstr_header := '';
    for i:=0 to cxCheckComboBox3.Properties.Items.Count - 1 do begin
     if cxCheckComboBox3.States[i] =  cbsChecked then
       Fstr_header :=  IntToStr(cxCheckComboBox3.Properties.Items[i].Tag) + ',' + Fstr_header;
    end;
    if Fstr_header <> '' then
       Delete(Fstr_header, Length(Fstr_header), 1);

    Screen.Cursor := crHourglass;
    SP_Contract_Modify := TADOStoredProc.Create(nil);
    SP_Contract_Modify.Connection := Fconnect;
    SP_Contract_Modify.ProcedureName := 'sp_contract_modify;1';
    SP_Contract_Modify.Parameters.Refresh;

    SP_Contract_Modify.Parameters.ParamByName('@type_action'      ).Value := Ftype_action;
    SP_Contract_Modify.Parameters.ParamByName('@contract_id'      ).Value := Fcontract_id;
    SP_Contract_Modify.Parameters.ParamByName('@contract_cod'     ).Value := cxTextEdit1.EditValue;
    SP_Contract_Modify.Parameters.ParamByName('@firm_self'        ).Value := cxLookupComboBox2.EditValue;
    SP_Contract_Modify.Parameters.ParamByName('@firm_customer'    ).Value := cxLookupComboBox1.EditValue;
    SP_Contract_Modify.Parameters.ParamByName('@date_begin'       ).Value := Trunc(cxDateEdit1.EditValue);
    SP_Contract_Modify.Parameters.ParamByName('@date_end'         ).Value := Trunc(cxDateEdit2.EditValue);
    SP_Contract_Modify.Parameters.ParamByName('@set_hand_modify'  ).Value := cxCheckBox1.Checked;
    SP_Contract_Modify.Parameters.ParamByName('@currency_id'      ).Value := cxLookupComboBox3.EditValue;
    SP_Contract_Modify.Parameters.ParamByName('@type_contract'    ).Value := Ftype_contract;
    SP_Contract_Modify.Parameters.ParamByName('@curator_fio_users').Value := cxButtonEdit2.EditValue;
    if cxMemo1.Lines.Text <> '' then
      SP_Contract_Modify.Parameters.ParamByName('@note').Value                := cxMemo1.Lines.Text;
    if cxMemo2.Lines.Text <> '' then
      SP_Contract_Modify.Parameters.ParamByName('@note_credit').Value         := cxMemo2.Lines.Text;
    if cxMemo3.Lines.Text <> '' then
      SP_Contract_Modify.Parameters.ParamByName('@conditions_credit').Value   := cxMemo3.Lines.Text;
    SP_Contract_Modify.Parameters.ParamByName('@date_begin_period').Value     := Trunc(cxDateEdit3.EditValue);
    SP_Contract_Modify.Parameters.ParamByName('@set_calc_balance').Value      := 1;
    SP_Contract_Modify.Parameters.ParamByName('@set_invoice_score').Value     := 0;
    SP_Contract_Modify.Parameters.ParamByName('@type_firm_self_id').Value     := cxLookupComboBox11.EditValue;
    SP_Contract_Modify.Parameters.ParamByName('@type_firm_customer_id').Value := cxLookupComboBox10.EditValue;
    SP_Contract_Modify.Parameters.ParamByName('@set_passport').Value          := cxCheckBox4.Checked;
    SP_Contract_Modify.Parameters.ParamByName('@set_court').Value             := cxCheckBox5.Checked;
    SP_Contract_Modify.Parameters.ParamByName('@igk_cod').Value               := cxTextEdit5.EditValue;

    if cxCheckBox4.Checked = True then begin
      SP_Contract_Modify.Parameters.ParamByName('@passport_cod').Value        := cxTextEdit2.Text;
      SP_Contract_Modify.Parameters.ParamByName('@passport_date_begin').Value := cxDateEdit4.EditValue;
      if cxCheckBox2.Checked = True then
        SP_Contract_Modify.Parameters.ParamByName('@passport_date_end').Value := cxDateEdit5.EditValue;
    end;
    SP_Contract_Modify.Parameters.ParamByName('@free_idle_day').Value         := cxCurrencyEdit4.Value;

    SP_Contract_Modify.Parameters.ParamByName('@date_finance_close').Value    := iif(Fdate_finance_close=0, null, Fdate_finance_close);
    SP_Contract_Modify.Parameters.ParamByName('@date_arenda_close').Value     := cxDateEdit6.EditValue;

    SP_Contract_Modify.Parameters.ParamByName('@set_credit'           ).Value := RadioGroup1.ItemIndex;
    SP_Contract_Modify.Parameters.ParamByName('@sum_credit'           ).Value := cxCurrencyEdit1.Value;
    SP_Contract_Modify.Parameters.ParamByName('@set_email_credit'     ).Value := cxCheckBox3.EditValue;
    SP_Contract_Modify.Parameters.ParamByName('@set_contract_EDO'     ).Value := cxCheckBox6.EditValue;
    SP_Contract_Modify.Parameters.ParamByName('@email_credit'         ).Value := cxTextEdit4.EditValue;

    SP_Contract_Modify.Parameters.ParamByName('@limit_xml'            ).Value := DataXMLToSQL(Client_Limit);
    SP_Contract_Modify.Parameters.ParamByName('@arenda_repair_type_id').Value := cxLookupComboBox5.EditValue;
    SP_Contract_Modify.Parameters.ParamByName('@str_invoice_header_id').Value := Fstr_header;

    SP_Contract_Modify.Parameters.ParamByName('@budget_id').Value             := iif(Fbudget_id = -9, null, Fbudget_id);

    SP_Contract_Modify.Parameters.ParamByName('@budget_id_lis_docs'   ).Value := iif(Fbudget_id_lis_docs = -9, null, Fbudget_id_lis_docs);
    SP_Contract_Modify.Parameters.ParamByName('@budget_name_lis_docs' ).Value := iif(cxButtonEdit4.EditValue = Null, null, cxButtonEdit4.EditValue);
    SP_Contract_Modify.Parameters.ParamByName('@budget_cod_lis_docs'  ).Value := iif(cxTextEdit7.EditValue = Null, null, cxTextEdit7.EditValue);

    SP_Contract_Modify.Parameters.ParamByName('@article_id_lis_docs'  ).Value := iif(Farticle_id_lis_docs = -9, null, Farticle_id_lis_docs);
    SP_Contract_Modify.Parameters.ParamByName('@article_name_lis_docs').Value := iif(cxButtonEdit5.EditValue = Null, null, cxButtonEdit5.EditValue);
    SP_Contract_Modify.Parameters.ParamByName('@article_cod_lis_docs' ).Value := iif(cxTextEdit8.EditValue = Null, null, cxTextEdit8.EditValue);

    SP_Contract_Modify.Parameters.ParamByName('@type_main_customer'   ).Value := iif(cxComboBox1.ItemIndex = -1, null, cxComboBox1.ItemIndex);

    // ----- пока не согласована заявка --------
    //SP_Contract_Modify.Parameters.ParamByName('@mc_type_contract_id'  ).Value := cxLookupComboBox6.EditValue;


    try
      SP_Contract_Modify.ExecProc;
      Fcontract_id := SP_Contract_Modify.Parameters.ParamByName('@contract_id').Value;
      if cxTextEdit1.Text <> SP_Contract_Modify.Parameters.ParamByName('@contract_cod').Value then
        Application.MessageBox(PChar('Договор сохранен под номером ' + VarToStr(SP_Contract_Modify.Parameters.ParamByName('@contract_cod').Value) + '.'), 'Внимание!', MB_ICONWARNING or MB_OK);
    except
    end;

    SP_Contract_Modify.Free;
    Screen.Cursor := crDefault;
  end;
end;

procedure TfmContractAdd.UpdateGroupLimitContract;
var  SP_Contract_Modify : TADOStoredProc;
begin
  Screen.Cursor := crHourglass;
  SP_Contract_Modify := TADOStoredProc.Create(nil);
  SP_Contract_Modify.Connection := Fconnect;
  SP_Contract_Modify.ProcedureName := 'sp_contract_modify;1';
  SP_Contract_Modify.Parameters.Refresh;

  SP_Contract_Modify.Parameters.ParamByName('@type_action'    ).Value := Ftype_action;
  SP_Contract_Modify.Parameters.ParamByName('@str_contract_id').Value := Fstr_contract_id;
  SP_Contract_Modify.Parameters.ParamByName('@limit_xml'      ).Value := DataXMLToSQL(Client_Limit);
  try
    SP_Contract_Modify.ExecProc;
    Application.MessageBox(PChar('Установлено ограничение на ' + IntToStr(SP_Contract_Modify.Parameters.ParamByName('@contract_id').Value) + ' договоров.'), 'Внимание', MB_OK);
  except
  end;

  SP_Contract_Modify.Free;
  Screen.Cursor := crDefault;

end;

end.
