unit FirmAdd;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs, Default,
  StdCtrls, Db, ADODB, DBClient, Menus, ExtCtrls, Mask, StrUtils, XMLDoc, Variants,
  cxControls, cxContainer, cxEdit, cxCheckBox, ComCtrls, cxClasses, cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridBandedTableView, cxGridDBBandedTableView, cxGridLevel, cxGrid, cxStyles, cxPropertiesStore, cxTextEdit,
  cxMemo, cxPC, cxLookAndFeelPainters, cxGroupBox, cxGraphics, cxMaskEdit, cxDropDownEdit, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox,
  cxButtonEdit, cxButtons, cxCustomData, cxFilter, cxData, cxDataStorage, cxDBData, cxCalendar, cxLookAndFeels, dxBar,
  ShellApi, cxCurrencyEdit, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom,
  dxSkinDarkSide, dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary,
  dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMetropolis, dxSkinMetropolisDark, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray, dxSkinOffice2013White,
  dxSkinOffice2016Colorful, dxSkinOffice2016Dark, dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus,
  dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008, dxSkinTheAsphaltWorld, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark, dxSkinVisualStudio2013Light, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue, dxSkinscxPCPainter, dxBarBuiltInMenu, cxNavigator, dxSkinsdxBarPainter, SOAPHTTPClient,
  cxDataControllerConditionalFormattingRulesManagerDialog, dxDateRanges, dxSkinTheBezier, dxSkinOffice2019Colorful,
  JSON, JSONConsts, System.Net.HttpClient, System.Net.URLClient,
  System.Net.HttpClientComponent, EncdDecd, dxScrollbarAnnotations;


type
  TfmFirmAdd = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Panel3: TPanel;
    cxPropertiesStore1: TcxPropertiesStore;
    cxTextEdit1: TcxTextEdit;
    Panel5: TPanel;
    Label3: TLabel;
    cxComboBox1: TcxComboBox;
    cxTextEdit15: TcxTextEdit;
    Label2: TLabel;
    Label31: TLabel;
    cxTextEdit12: TcxTextEdit;
    Label6: TLabel;
    cxTextEdit13: TcxTextEdit;
    cxLookupComboBox1: TcxLookupComboBox;
    Label26: TLabel;
    Query_Property: TADOQuery;
    DS_Property: TDataSource;
    cxPageControl1: TcxPageControl;
    cxTabSheet1: TcxTabSheet;
    cxTabSheet2: TcxTabSheet;
    cxTabSheet3: TcxTabSheet;
    Panel2: TPanel;
    Label20: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    Label27: TLabel;
    Label28: TLabel;
    Label4: TLabel;
    Label7: TLabel;
    cxTextEdit4: TcxTextEdit;
    cxTextEdit10: TcxTextEdit;
    cxTextEdit2: TcxTextEdit;
    cxTextEdit8: TcxTextEdit;
    cxTextEdit9: TcxTextEdit;
    cxTextEdit11: TcxTextEdit;
    cxTextEdit3: TcxTextEdit;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    cxGrid1DBBandedTableView1: TcxGridDBBandedTableView;
    Client_Contact: TClientDataSet;
    DS_Contact: TDataSource;
    Client_Contacttype_action: TIntegerField;
    Client_Contactfirm_contact_id: TIntegerField;
    Client_Contactfirm_id: TIntegerField;
    Client_Contacttype_contact_id: TIntegerField;
    Client_Contactdate_begin: TDateField;
    Client_Contactdate_end: TDateField;
    Client_Contactfirm_contact_name: TStringField;
    Client_Contactfirm_contact_comment: TStringField;
    Client_Contactfirm_contact_telefon: TStringField;
    Client_Contactfirm_contact_fax: TStringField;
    Client_Contactfirm_contact_email: TStringField;
    Client_Contacttype_contact_cod: TStringField;
    cxGrid1DBBandedTableView1type_action: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1firm_contact_id: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1firm_id: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1type_contact_id: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1type_contact_cod: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1date_begin: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1date_end: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1firm_contact_name: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1firm_contact_comment: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1firm_contact_telefon: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1firm_contact_fax: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1firm_contact_email: TcxGridDBBandedColumn;
    cxGrid2: TcxGrid;
    cxGrid2DBBandedTableView1: TcxGridDBBandedTableView;
    cxGrid2Level1: TcxGridLevel;
    cxGrid2DBBandedTableView1type_action: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1firm_contact_id: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1firm_id: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1type_contact_id: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1type_contact_cod: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1date_begin: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1date_end: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1firm_contact_name: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1firm_contact_comment: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1firm_contact_telefon: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1firm_contact_fax: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1firm_contact_email: TcxGridDBBandedColumn;
    Client_Contacttype_contact_name: TStringField;
    cxGrid1DBBandedTableView1type_contact_name: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1type_contact_name: TcxGridDBBandedColumn;
    Client_ContactPrimaryKey: TAutoIncField;
    cxGrid2DBBandedTableView1PrimaryKey: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1PrimaryKey: TcxGridDBBandedColumn;
    cxTabSheet4: TcxTabSheet;
    cxGrid3: TcxGrid;
    cxGrid3DBBandedTableView1: TcxGridDBBandedTableView;
    cxGrid3Level1: TcxGridLevel;
    cxGrid3DBBandedTableView1PrimaryKey: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1type_action: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1firm_contact_id: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1firm_id: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1type_contact_id: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1type_contact_cod: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1type_contact_name: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1date_begin: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1date_end: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1firm_contact_name: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1firm_contact_comment: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1firm_contact_telefon: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1firm_contact_fax: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1firm_contact_email: TcxGridDBBandedColumn;
    Client_Contactglobal_color: TIntegerField;
    cxGrid3DBBandedTableView1global_color: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1global_color: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1global_color: TcxGridDBBandedColumn;
    Client_Contactset_default: TBooleanField;
    cxGrid3DBBandedTableView1set_default: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1set_default: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1set_default: TcxGridDBBandedColumn;
    dxBarManager1: TdxBarManager;
    dxBarPopupMenu1: TdxBarPopupMenu;
    dxBarButton1: TdxBarButton;
    dxBarButton2: TdxBarButton;
    dxBarButton3: TdxBarButton;
    dxBarButton4: TdxBarButton;
    dxBarButton5: TdxBarButton;
    dxBarSubItem1: TdxBarSubItem;
    dxBarButton6: TdxBarButton;
    dxBarButton7: TdxBarButton;
    dxBarButton8: TdxBarButton;
    dxBarButton9: TdxBarButton;
    dxBarButton10: TdxBarButton;
    dxBarButton11: TdxBarButton;
    Client_Contactdate_birthday: TDateField;
    cxGrid2DBBandedTableView1date_birthday: TcxGridDBBandedColumn;
    Label9: TLabel;
    cxTextEdit5: TcxTextEdit;
    Label10: TLabel;
    cxTextEdit6: TcxTextEdit;
    cxCheckBox1: TcxCheckBox;
    cxCheckBox2: TcxCheckBox;
    cxTabSheet5: TcxTabSheet;
    cxGrid4: TcxGrid;
    cxGrid4DBBandedTableView1: TcxGridDBBandedTableView;
    cxGridDBBandedColumn1: TcxGridDBBandedColumn;
    cxGridDBBandedColumn2: TcxGridDBBandedColumn;
    cxGridDBBandedColumn3: TcxGridDBBandedColumn;
    cxGridDBBandedColumn4: TcxGridDBBandedColumn;
    cxGridDBBandedColumn5: TcxGridDBBandedColumn;
    cxGridDBBandedColumn6: TcxGridDBBandedColumn;
    cxGridDBBandedColumn7: TcxGridDBBandedColumn;
    cxGridDBBandedColumn8: TcxGridDBBandedColumn;
    cxGridDBBandedColumn9: TcxGridDBBandedColumn;
    cxGridDBBandedColumn10: TcxGridDBBandedColumn;
    cxGridDBBandedColumn11: TcxGridDBBandedColumn;
    cxGridDBBandedColumn12: TcxGridDBBandedColumn;
    cxGridDBBandedColumn13: TcxGridDBBandedColumn;
    cxGridDBBandedColumn14: TcxGridDBBandedColumn;
    cxGridDBBandedColumn15: TcxGridDBBandedColumn;
    cxGridDBBandedColumn16: TcxGridDBBandedColumn;
    cxGrid4Level1: TcxGridLevel;
    Label13: TLabel;
    cxTextEdit7: TcxTextEdit;
    Client_Contactfamily: TStringField;
    Client_Contactfirst_name: TStringField;
    Client_Contactlast_name: TStringField;
    Client_Contactset_edo_sign: TBooleanField;
    cxButton1: TcxButton;
    cxButton3: TcxButton;
    cxButton2: TcxButton;
    procedure cxGrid1DBBandedTableView1CustomDrawCell(Sender: TcxCustomGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
    procedure cxGrid1DBBandedTableView1CustomDrawColumnHeader(Sender: TcxGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxGridColumnHeaderViewInfo; var ADone: Boolean);
    procedure cxPageControl1Change(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormActivate(Sender: TObject);
    procedure dxBarButton1Click(Sender: TObject);
    procedure dxBarButton2Click(Sender: TObject);
    procedure dxBarButton3Click(Sender: TObject);
    procedure dxBarButton4Click(Sender: TObject);
    procedure dxBarButton5Click(Sender: TObject);
    procedure dxBarButton6Click(Sender: TObject);
    procedure dxBarButton8Click(Sender: TObject);
    procedure dxBarButton9Click(Sender: TObject);
    procedure cxGridDBBandedTableView1CustomDrawCell(Sender: TcxCustomGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
    procedure FormDestroy(Sender: TObject);
    procedure dxBarPopupMenu2Popup(Sender: TObject);
    procedure cxButton3Click(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure cxGrid3DBBandedTableView1FocusedItemChanged(Sender: TcxCustomGridTableView; APrevFocusedItem, AFocusedItem: TcxCustomGridTableItem);
    procedure cxButton2Click(Sender: TObject);
  private
    Faction  : boolean;
    Ffirm_id : integer;
    Fview    : TcxGridDBBandedTableView;

    // Запущена как DLL
    Fset_run_dll : boolean;
    Fconnect     : TADOConnection;
    Fusr_pwd_lis : PUser_pwd;

    procedure SetUpdate(firm_id : integer);
  public
    constructor Create   (action:boolean; type_self : integer; usr_pwd : PUser_pwd);
    constructor CreateDLL(action:boolean; type_self : integer; usr_pwd : PUser_pwd);
  published
    property _SetUpdate : integer write SetUpdate;
    property _GetFirmId : integer read Ffirm_id;
  end;

var
  fmFirmAdd  : TfmFirmAdd;

implementation
    uses Main, FirmContactAdd, Raznoe, Other;
{$R *.DFM}


constructor TfmFirmAdd.CreateDLL(action: boolean; type_self: integer; usr_pwd: PUser_pwd);
begin
  // action: True - INSERT,  False - UPDATE
  Screen.Cursor := crHourglass;
  inherited Create(Application);

  Faction := action;
  Ffirm_id := -9;
  Fview := nil;

  Fset_run_dll := True;
  Fusr_pwd_lis := usr_pwd;
  Fconnect := TADOConnection.Create(nil);
  Fconnect.ConnectionString := 'Persist Security Info=True;Provider=SQLOLEDB.1;User ID='+Fusr_pwd_lis^.user_name+';Password='+Fusr_pwd_lis^.user_pass+';Initial Catalog='+Fusr_pwd_lis^.catalog+';Data Source='+Fusr_pwd_lis^.server+';';
  Fconnect.KeepConnection   := False;
  Fconnect.LoginPrompt      := False;

  Query_Property.Connection := Fconnect;

  cxPageControl1.ActivePageIndex := 0;

  Client_Contact.CreateDataSet;
  Client_Contact.LogChanges := False;

  Query_Property.Open;
  cxLookupComboBox1.EditValue := Query_Property.FieldByName('inf_obj_id').Value;

  cxComboBox1.ItemIndex := type_self;

  StoreRegistryGrid(rgLoad,'\Software\Lis1\FirmAdd_Grids', cxGrid1DBBandedTableView1);
  StoreRegistryGrid(rgLoad,'\Software\Lis1\FirmAdd_Grids', cxGrid2DBBandedTableView1);
  StoreRegistryGrid(rgLoad,'\Software\Lis1\FirmAdd_Grids', cxGrid3DBBandedTableView1);

  dxBarButton1.Enabled := False;
  dxBarButton2.Enabled := False;
  dxBarButton3.Enabled := False;
  dxBarButton4.Enabled := False;
  dxBarButton5.Enabled := False;
  dxBarButton6.Enabled := False;
  dxBarButton7.Enabled := False;
  dxBarButton8.Enabled := False;
  dxBarButton9.Enabled := False;
  dxBarButton10.Enabled := False;
  dxBarButton11.Enabled := False;
  cxButton1.Enabled := False;

  Screen.Cursor := crDefault;
end;


constructor TfmFirmAdd.Create(action:boolean; type_self : integer; usr_pwd : PUser_pwd);
begin
  // action: True - INSERT,  False - UPDATE
  Screen.Cursor := crHourglass;
  inherited Create(Application);

  Faction := action;
  Ffirm_id := -9;
  Fview := nil;

  Fset_run_dll := False;
  Fconnect := fmMain.Lis;
  Fusr_pwd_lis := usr_pwd;

  cxPageControl1.ActivePageIndex := 0;

  Client_Contact.CreateDataSet;
  Client_Contact.LogChanges := False;


  Query_Property.Open;
  cxLookupComboBox1.EditValue := Query_Property.FieldByName('inf_obj_id').Value;

  cxComboBox1.ItemIndex := type_self;

  StoreRegistryGrid(rgLoad,'\Software\Lis1\FirmAdd_Grids', cxGrid1DBBandedTableView1);
  StoreRegistryGrid(rgLoad,'\Software\Lis1\FirmAdd_Grids', cxGrid2DBBandedTableView1);
  StoreRegistryGrid(rgLoad,'\Software\Lis1\FirmAdd_Grids', cxGrid3DBBandedTableView1);
  StoreRegistryGrid(rgLoad,'\Software\Lis1\FirmAdd_Grids', cxGrid4DBBandedTableView1);

  SetUsersModuleRights(self, fmMain.Lis);
  MonitorEventFormOpen('OPEN_FORM', self.Name, fmMain.Lis, -9);

  Screen.Cursor := crDefault;
end;

procedure TfmFirmAdd.SetUpdate(firm_id : integer);
var
  Query_Firm : TADOQuery;
           i : integer;
begin
  Screen.Cursor := crHourglass;

  Ffirm_id := firm_id;
  Caption := Caption + ' [' + IntToStr(firm_id) + ']';

  Query_Firm := TADOQuery.Create(nil);
  Query_Firm.Connection := Fconnect;
  Query_Firm.SQL.Add('SELECT * FROM view_firm WHERE firm_id = ' + IntToStr(Ffirm_id));
  Query_Firm.Open;

  cxComboBox1.ItemIndex:= Query_Firm.FieldByName('type_self').AsInteger;
  cxTextEdit1.EditValue  := Query_Firm.FieldByName('firm_name').Value;
  cxTextEdit15.EditValue := Query_Firm.FieldByName('firm_name_eng').Value;
  cxTextEdit12.EditValue := Query_Firm.FieldByName('firm_name_short').Value;
  cxTextEdit13.EditValue := Query_Firm.FieldByName('firm_name_full').Value;

  cxTextEdit2.EditValue  := Query_Firm.FieldByName('header_company_name').Value;
  cxTextEdit10.EditValue := Query_Firm.FieldByName('owner_business_name').Value;
  cxTextEdit5.EditValue  := Query_Firm.FieldByName('rzd_gropl_cod').Value;
  cxTextEdit6.EditValue  := Query_Firm.FieldByName('rzd_payer_cod').Value;
  cxTextEdit7.EditValue  := Query_Firm.FieldByName('edo_id').Value;

  cxTextEdit8.EditValue  := Query_Firm.FieldByName('cod_okpo').Value;
  cxTextEdit9.EditValue  := Query_Firm.FieldByName('inn').Value;
  cxTextEdit3.EditValue  := Query_Firm.FieldByName('kpp').Value;
  cxTextEdit11.EditValue := Query_Firm.FieldByName('cod_ogrn').Value;

  cxTextEdit4.EditValue  := Query_Firm.FieldByName('comment').Value;

  cxCheckBox1.Checked:= Query_Firm.FieldByName('set_load_EDO').AsBoolean;
  cxCheckBox2.Checked:= Query_Firm.FieldByName('set_sanctions').AsBoolean;

  cxLookupComboBox1.EditValue := Query_Firm.FieldByName('firm_property_id').Value;

  Query_Firm.Close;
  Query_Firm.SQL.Clear;
  Query_Firm.SQL.Add('SELECT * FROM view_firm_contact WHERE firm_id = ' + IntToStr(Ffirm_id));
  Query_Firm.Open;

  Client_Contact.DisableControls;

  while not Query_Firm.Eof do begin
    Client_Contact.Append;
    Client_Contact.FieldByName('type_action').Value := 1; // По умолчанию Update
    for i := 2 to Client_Contact.FieldCount - 1 do
      Client_Contact.FieldList.Fields[i].Value := Query_Firm.FieldByName(Client_Contact.FieldList.Fields[i].FieldName).Value;
    Client_Contact.Post;
    Query_Firm.Next;
  end;

  Client_Contact.EnableControls;

  Query_Firm.Free;

  MonitorEventFormOpen('UPDATE_FORM', self.Name, fmMain.Lis, Ffirm_id);

  Screen.Cursor := crDefault;
end;

procedure TfmFirmAdd.cxButton1Click(Sender: TObject);
var
  SP_firm_modify : TADOStoredProc;
begin
  if (cxTextEdit1.Text = '') or (cxTextEdit12.Text = '') then begin
    Application.MessageBox('Введите название организации','ВНИМАНИЕ',MB_OK);
    if (cxTextEdit1.Text = '') then
      cxTextEdit1.SetFocus
    else
      cxTextEdit12.SetFocus;

    ModalResult := mrNone;
    exit;
  end;

  if (cxLookupComboBox1.Text = '') then begin
    Application.MessageBox('Введите регистрацию организации','ВНИМАНИЕ',MB_OK);
    cxLookupComboBox1.SetFocus;
    ModalResult := mrNone;
    exit;
  end;

  Screen.Cursor := crHourglass;
  SP_firm_modify := TADOStoredProc.Create(nil);
  SP_firm_modify.Connection := Fconnect;
  SP_firm_modify.ProcedureName := 'sp_firm_modify';
  SP_firm_modify.Parameters.Refresh;

  SP_firm_modify.Parameters.ParamByName('@firm_id').Value  := Ffirm_id;

  if Faction then  SP_firm_modify.Parameters.ParamByName('@type_action').Value := 0
  else SP_firm_modify.Parameters.ParamByName('@type_action').Value  := 1;

  SP_firm_modify.Parameters.ParamByName('@type_self').Value           := cxComboBox1.ItemIndex;
  SP_firm_modify.Parameters.ParamByName('@firm_name').Value           := cxTextEdit1.EditValue;
  SP_firm_modify.Parameters.ParamByName('@firm_name_eng').Value       := cxTextEdit15.EditValue;
  SP_firm_modify.Parameters.ParamByName('@firm_name_short').Value     := cxTextEdit12.EditValue;
  SP_firm_modify.Parameters.ParamByName('@firm_name_full').Value      := cxTextEdit13.EditValue;

  SP_firm_modify.Parameters.ParamByName('@header_company_name').Value := cxTextEdit2.EditValue;
  SP_firm_modify.Parameters.ParamByName('@owner_business_name').Value := cxTextEdit10.EditValue;
  SP_firm_modify.Parameters.ParamByName('@rzd_gropl_cod').Value       := cxTextEdit5.EditValue;
  SP_firm_modify.Parameters.ParamByName('@rzd_payer_cod').Value       := cxTextEdit6.EditValue;
  SP_firm_modify.Parameters.ParamByName('@edo_id').Value              := cxTextEdit7.EditValue;
  SP_firm_modify.Parameters.ParamByName('@cod_okpo').Value            := cxTextEdit8.EditValue;
  SP_firm_modify.Parameters.ParamByName('@cod_ogrn').Value            := cxTextEdit11.EditValue;
  SP_firm_modify.Parameters.ParamByName('@inn').Value                 := cxTextEdit9.EditValue;
  SP_firm_modify.Parameters.ParamByName('@kpp').Value                 := cxTextEdit3.EditValue;

  SP_firm_modify.Parameters.ParamByName('@comment').Value             := cxTextEdit4.EditValue;
  SP_firm_modify.Parameters.ParamByName('@firm_property_id').Value    := cxLookupComboBox1.EditValue;

  SP_firm_modify.Parameters.ParamByName('@set_load_EDO').Value        := cxCheckBox1.Checked;
  SP_firm_modify.Parameters.ParamByName('@set_sanctions').Value       := cxCheckBox2.Checked;
  SP_firm_modify.Parameters.ParamByName('@xml_firm_contact' ).Value   := DataXMLToSQL(Client_Contact);

  try
    SP_firm_modify.ExecProc;
  except on E: Exception do
    begin
      Application.MessageBox(PChar(E.Message),'Внимание' , MB_OK + MB_ICONERROR);
      SP_firm_modify.Free;
    end;
  end;

  Ffirm_id := SP_firm_modify.Parameters.ParamByName('@firm_id').Value;
  SP_firm_modify.Free;
  Screen.Cursor := crDefault;

end;

procedure TfmFirmAdd.cxButton2Click(Sender: TObject);
var
  http            : THTTPClient;
  headers         : TNetHeaders;   // заголовок для http запроса
  response        : IHTTPResponse; // результат http запроса
  MessageResult   : TStringStream; // Результат

  json_obj        : TJSONObject;
  json_arr        : TJSONArray;
  json_arr_item   : TJSONObject;
  json_arr_el     : TJSONObject;
  k               : integer;

  ip_address      : string;
  users_name      : string;
  users_password  : string;
begin
{
Реквизиты юр. лиц по ИНН:       https://api.orgregister.1c.ru/rest/corporation/v1/find-corporation-by-inn?inn=
«Досье» юр. лиц по ИНН:         https://api.orgregister.1c.ru/rest/corporation/v1/find-corporation-trustability-by-inn?inn=
Реквизиты иностранного представительства(РАФП) по ИНН: https://api.orgregister.1c.ru/rest/rafp/v1/find-foreign-representation-by-inn?inn=
Реквизиты юр. лиц/РАФП по ИНН:  https://api.orgregister.1c.ru/rest/counter-agent/v1/find-counter-agents-by-inn?inn=
Реквизиты ИП по ИНН:            https://api.orgregister.1c.ru/rest/person/v1/find-person-by-inn?inn=
«Досье» ИП по ИНН:              https://api.orgregister.1c.ru/rest/person/v1/find-person-trustability-by-inn?inn=
Информация о проверках юр. лиц: https://api.orgregister.1c.ru/ws/inspection/v1?wsdl
}
  Screen.Cursor := crHourglass;

  http := THTTPClient.Create;
  http.ContentType := '';
  http.UserAgent   := '';
  http.Accept      := '*/*';

  ip_address := 'https://api.orgregister.1c.ru/rest/counter-agent/v1/find-counter-agents-by-inn?inn=' + cxTextEdit9.Text;
  users_name := '801636059';
  users_password := '5ZgV6uSk';

  SetLength(headers, 1);
  headers[0].Name  := 'Authorization';
  headers[0].Value := 'Basic ' + EncodeString(users_name+ ':' + users_password);
  response := http.Get(ip_address, nil, headers);

  MessageResult := TStringStream.Create;
  MessageResult.LoadFromStream(response.ContentStream);
  if MessageResult.DataString <> '' then begin
    json_obj := TJSONObject.ParseJSONValue(UTF8ToString(MessageResult.DataString)) as TJSONObject;
    json_arr := json_obj.GetValue('corporations') as TJSONArray;

    for k := 0 to json_arr.Count-1 do begin
      json_arr_el := json_arr.Items[k] as TJSONObject;

      cxTextEdit11.EditValue := json_arr_el.GetValue('ogrn').Value;

      json_arr_item := json_arr_el.GetValue('name') as TJSONObject;
      if cxTextEdit1.Text = '' then
        cxTextEdit1.EditValue := json_arr_item.GetValue('commonName').Value;
      cxTextEdit12.EditValue := json_arr_item.GetValue('shortName').Value;
      cxTextEdit13.EditValue := json_arr_item.GetValue('fullName').Value;

      json_arr_item := json_arr_el.GetValue('kpp') as TJSONObject;
      cxTextEdit3.EditValue := json_arr_item.GetValue('value').Value;

      // ---------- адреса ---------------------
      json_arr_item := json_arr_el.GetValue('address') as TJSONObject;
      Client_Contact.Filtered := False;
      if Client_Contact.Locate('type_contact_cod','11',[]) then begin
        Client_Contact.Edit;
        Client_Contact.FieldByName('firm_contact_name').Value := json_arr_item.GetValue('valueWithPostalCode').Value;
        Client_Contact.Post
      end else begin
        Client_Contact.Append;
        Client_Contact.FieldByName('type_action').Value       := 0;
        Client_Contact.FieldByName('type_contact_id').Value   := 756357;
        Client_Contact.FieldByName('type_contact_cod').Value  := '11';
        Client_Contact.FieldByName('type_contact_name').Value := 'Юридический адрес';
        Client_Contact.FieldByName('date_begin').Value        := json_arr_item.GetValue('fromDate').Value;
        Client_Contact.FieldByName('firm_contact_name').Value := json_arr_item.GetValue('valueWithPostalCode').Value;
        Client_Contact.FieldByName('set_default').Value       := 1;
        Client_Contact.Post;
      end;

      if Client_Contact.Locate('type_contact_cod','12',[]) then begin
        Client_Contact.Edit;
        Client_Contact.FieldByName('firm_contact_name').Value := json_arr_item.GetValue('valueWithPostalCode').Value;
        Client_Contact.Post
      end else begin
        Client_Contact.Append;
        Client_Contact.FieldByName('type_action').Value       := 0;
        Client_Contact.FieldByName('type_contact_id').Value   := 756358;
        Client_Contact.FieldByName('type_contact_cod').Value  := '12';
        Client_Contact.FieldByName('type_contact_name').Value := 'Почтовый адрес';
        Client_Contact.FieldByName('date_begin').Value        := json_arr_item.GetValue('fromDate').Value;
        Client_Contact.FieldByName('firm_contact_name').Value := json_arr_item.GetValue('valueWithPostalCode').Value;
        Client_Contact.FieldByName('set_default').Value       := 1;
        Client_Contact.Post;
      end;

      //-------- контакты
      json_arr_item := json_arr_el.GetValue('headPersonInfo') as TJSONObject;
      json_arr_item := json_arr_item.GetValue('director') as TJSONObject;
      if (json_arr_item = nil) then begin
        json_arr_item := json_arr_item.GetValue('otherProxies') as TJSONObject;
      end;
      if (json_arr_item <> nil) then begin
        if Client_Contact.Locate('type_contact_cod','20',[]) then begin
          Client_Contact.Edit;
          Client_Contact.FieldByName('firm_contact_name').Value := json_arr_item.GetValue('lastName').Value + ' ' + json_arr_item.GetValue('name').Value + ' ' + json_arr_item.GetValue('patronymic').Value;
          Client_Contact.Post
        end else begin
          Client_Contact.Append;
          Client_Contact.FieldByName('type_action').Value       := 0;
          Client_Contact.FieldByName('type_contact_id').Value   := 756360;
          Client_Contact.FieldByName('type_contact_cod').Value  := '20';
          Client_Contact.FieldByName('type_contact_name').Value := 'Генеральный директор';
          Client_Contact.FieldByName('date_begin').Value        := json_arr_item.GetValue('fromDate').Value;
          Client_Contact.FieldByName('firm_contact_name').Value := json_arr_item.GetValue('lastName').Value + ' ' + json_arr_item.GetValue('name').Value + ' ' + json_arr_item.GetValue('patronymic').Value;
          Client_Contact.FieldByName('set_default').Value       := 1;
          Client_Contact.Post;
        end;
      end;
      Client_Contact.Filtered := True;
    end;

    json_obj.Free;
    cxTextEdit4.EditValue := 'Реквизиты обновлены по данныи ИФНС';
  end;

  MessageResult.Free;
  http.Free;

  Screen.Cursor := crDefault;

end;

procedure TfmFirmAdd.cxButton3Click(Sender: TObject);
begin
  Close;
end;

procedure TfmFirmAdd.cxGrid1DBBandedTableView1CustomDrawCell(Sender: TcxCustomGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
  if (AViewInfo.GridRecord.Values[TcxGridDBBandedTableView(AViewInfo.GridView).GetColumnByFieldName('global_color').Index]<>NULL) then
    ACanvas.Brush.Color := AViewInfo.GridRecord.Values[TcxGridDBBandedTableView(AViewInfo.GridView).GetColumnByFieldName('global_color').Index];

  if AViewInfo.GridRecord.Selected or AViewInfo.GridRecord.Focused then begin
    ACanvas.Brush.Color := clNavy;
    ACanvas.Font.Color := clWhite;
    if AViewInfo.Focused then begin
       ACanvas.Font.Color := clWhite;
       ACanvas.Brush.Color := clBlue;
    end;
  end;
end;

procedure TfmFirmAdd.cxGrid1DBBandedTableView1CustomDrawColumnHeader(Sender: TcxGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxGridColumnHeaderViewInfo; var ADone: Boolean);
begin
  DrawcxGridColumnOnFocused(Sender, ACanvas, AViewInfo);
end;

procedure TfmFirmAdd.cxGrid3DBBandedTableView1FocusedItemChanged(Sender: TcxCustomGridTableView; APrevFocusedItem, AFocusedItem: TcxCustomGridTableItem);
begin
  Sender.Painter.Invalidate;
end;

procedure TfmFirmAdd.cxGridDBBandedTableView1CustomDrawCell(Sender: TcxCustomGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
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

procedure TfmFirmAdd.cxPageControl1Change(Sender: TObject);
begin
  case cxPageControl1.ActivePageIndex of
    1 : begin
          Client_Contact.Filter := 'type_contact_cod >= ''10'' AND type_contact_cod <= ''15'' AND type_action < 2';
          Fview := cxGrid3DBBandedTableView1;
        end;
    2 : begin
          Client_Contact.Filter := 'type_contact_cod >= ''15'' AND type_contact_cod <= ''19'' AND type_action < 2';
          Fview := cxGrid4DBBandedTableView1;
        end;
    3 : begin
          Client_Contact.Filter := 'type_contact_cod >= ''00'' AND type_contact_cod <= ''09'' AND type_action < 2';
          Fview := cxGrid1DBBandedTableView1;
        end;
    4 : begin
          Client_Contact.Filter := 'type_contact_cod >= ''20'' AND type_contact_cod <= ''99'' AND type_action < 2';
          Fview := cxGrid2DBBandedTableView1;
        end;
    else begin
          Client_Contact.Filter := '1=0';
          Fview := nil;
        end;
  end;
end;

procedure TfmFirmAdd.dxBarButton1Click(Sender: TObject);
begin
  Client_Contact.DisableControls;
  fmFirmContactAdd := TfmFirmContactAdd.Create(Application, cxPageControl1.ActivePageIndex, Client_Contact, Ffirm_id, cxTextEdit1.Text);
  fmFirmContactAdd.ShowModal;
  fmFirmContactAdd.Free;

  Client_Contact.EnableControls;
end;

procedure TfmFirmAdd.dxBarButton2Click(Sender: TObject);
begin
  if Client_Contact.Eof then
    exit;

  Client_Contact.DisableControls;

  fmFirmContactAdd := TfmFirmContactAdd.Create(Application, cxPageControl1.ActivePageIndex, Client_Contact, Ffirm_id, cxTextEdit1.Text);
  fmFirmContactAdd._SetUpdate := Fview.Controller.FocusedRow.Values[Fview.GetColumnByFieldName('PrimaryKey').Index];
  fmFirmContactAdd.ShowModal;
  fmFirmContactAdd.Free;

  Client_Contact.EnableControls;
end;

procedure TfmFirmAdd.dxBarButton3Click(Sender: TObject);
var i : integer;
begin

  if Application.MessageBox(PChar('Удалить выделенные ' + cxPageControl1.ActivePage.Caption + ' ?'), 'ВНИМАНИЕ', MB_OKCANCEL) = ID_OK then begin
    Client_Contact.DisableControls;

    for i := 0 to Fview.Controller.SelectedRecordCount - 1 do begin
      Client_Contact.Locate('PrimaryKey', Fview.Controller.SelectedRows[i].Values[Fview.GetColumnByFieldName('PrimaryKey').Index], []);
      if Client_Contact.FieldByName('type_action').Value = 1 then begin
        // Запись есть в базе
        Client_Contact.Edit;
        Client_Contact.FieldByName('type_action').Value := 2; // Delete
        Client_Contact.Post;
      end else begin
        // Записи нет в базе - просто удаляем из Client_Contact
        Client_Contact.Delete;
      end;
    end;

    Client_Contact.EnableControls;
  end;
end;

procedure TfmFirmAdd.dxBarButton4Click(Sender: TObject);
var i : integer;
begin
  if Client_Contact.Eof then
    exit;

  Client_Contact.DisableControls;

  Client_Contact.Append;
  Client_Contact.FieldByName('type_action').Value := 0;
  Client_Contact.FieldByName('firm_contact_id').Value := -9;
  for i := 3 to Client_Contact.FieldCount - 1 do
    Client_Contact.FieldList.Fields[i].Value := Fview.Controller.FocusedRow.Values[Fview.GetColumnByFieldName(Client_Contact.FieldList.Fields[i].FieldName).Index];

  Client_Contact.Post;

  Client_Contact.EnableControls;
end;

procedure TfmFirmAdd.dxBarButton5Click(Sender: TObject);
begin
  PrintcxGrid(Fview);
end;

procedure TfmFirmAdd.dxBarButton6Click(Sender: TObject);
var i, color : integer;
      ColorD : TColorDialog;
begin
  Client_Contact.DisableControls;

  color := -9;
  ColorD := TColorDialog.Create(nil);
  if (TComponent(Sender).Tag = 0) then
    if ColorD.Execute then color := ColorD.Color
    else begin
      ColorD.Free;
      exit;
    end;

  for i := 0 to Fview.Controller.SelectedRowCount - 1 do begin
    if Client_Contact.Locate('PrimaryKey', Fview.Controller.SelectedRows[i].Values[Fview.GetColumnByFieldName('PrimaryKey').Index], []) then begin
      Client_Contact.Edit;
      if color <> -9 then
        Client_Contact.FieldByName('global_color').Value := color
      else
        Client_Contact.FieldByName('global_color').Value := null;

      Client_Contact.Post;
    end;
  end;
  ColorD.Free;

  Client_Contact.EnableControls;
end;

procedure TfmFirmAdd.dxBarButton8Click(Sender: TObject);
begin
  SetdxDBGridColumns(Fview);
end;

procedure TfmFirmAdd.dxBarButton9Click(Sender: TObject);
begin
  Fview.OptionsView.GroupByBox := not Fview.OptionsView.GroupByBox;
end;

procedure TfmFirmAdd.dxBarPopupMenu2Popup(Sender: TObject);
begin
  if not Fusr_pwd_lis.user_func.Locate('func_name', 'set_doc_modify', [loCaseInsensitive]) then begin
    dxBarButton10.Enabled := False;
    dxBarButton11.Enabled := False;
  end;
end;

procedure TfmFirmAdd.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if Fset_run_dll then begin
    Fconnect.Close;
    Fconnect.Free;
  end;
  Action := caFree;
end;

procedure TfmFirmAdd.FormDestroy(Sender: TObject);
begin
  StoreRegistryGrid(rgSave,'\Software\Lis1\FirmAdd_Grids', cxGrid1DBBandedTableView1);
  StoreRegistryGrid(rgSave,'\Software\Lis1\FirmAdd_Grids', cxGrid2DBBandedTableView1);
  StoreRegistryGrid(rgSave,'\Software\Lis1\FirmAdd_Grids', cxGrid3DBBandedTableView1);
  StoreRegistryGrid(rgSave,'\Software\Lis1\FirmAdd_Grids', cxGrid4DBBandedTableView1);
end;

procedure SetRecordColor(Column_name: string; cxGrid: TcxGridDBBandedTableView; TableName: string; IsColorNull: boolean; color_column_name : string = '');
begin
end;

procedure TfmFirmAdd.FormActivate(Sender: TObject);
begin
  cxTextEdit1.SetFocus;
end;


end.
