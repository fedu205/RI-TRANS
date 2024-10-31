unit ClientInvoiceAdd;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Default,
  Dialogs, Db, ADODB, StdCtrls, ComCtrls, ExtCtrls, Mask, DBClient, ToolWin, Menus, ImageList, Variants,
  cxGridCustomTableView,   dxSkinVisualStudio2013Dark, dxSkinVisualStudio2013Light, cxImageList,
  cxGridTableView, cxGridBandedTableView, cxGridDBBandedTableView,  cxClasses, cxControls, cxGridCustomView, cxGridLevel, cxGrid,
  cxPropertiesStore, cxStyles, cxCustomData, cxGraphics, cxFilter, cxData, cxEdit, cxDBData, cxMemo, cxTextEdit, cxMaskEdit, cxLookupEdit,
  cxDBLookupEdit, cxDBLookupComboBox, cxContainer, cxDropDownEdit, cxDataStorage, cxDBEdit,  cxCalendar, cxCurrencyEdit, dxBar,
  cxCheckBox, cxBarEditItem, dxBarExtItems, cxLookAndFeelPainters, cxButtons, cxLookAndFeels, ImgList, cxPC, cxButtonEdit, cxLabel,
  cxGridDBDataDefinitions, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom,
  dxSkinDarkSide, dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary,
  dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMetropolis, dxSkinMetropolisDark, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinPumpkin,
  dxSkinSeven, dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus, dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008,
  dxSkinTheAsphaltWorld, dxSkinsDefaultPainters, dxSkinValentine, dxSkinVS2010, dxSkinWhiteprint, dxSkinXmas2008Blue, dxSkinscxPCPainter,
  cxNavigator, dxCore, cxDateUtils, dxSkinsdxBarPainter, dxSkinOffice2016Colorful, dxSkinOffice2016Dark, dxSkinVisualStudio2013Blue,
  dxSkinTheBezier, dxDateRanges, dxScrollbarAnnotations;

type
  TfmClientInvoiceAdd = class(TForm)
    Query_Contract: TADOQuery;
    DS_Contract: TDataSource;
    Panel1: TPanel;
    Label2: TLabel;
    Panel2: TPanel;
    Label4: TLabel;
    Label5: TLabel;
    Panel3: TPanel;
    Label3: TLabel;
    Label1: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Query_Provider: TADOQuery;
    DS_Provider: TDataSource;
    Panel4: TPanel;
    Client_Subject: TClientDataSet;
    DS_Subject: TDataSource;
    Panel6: TPanel;
    Client_Subjectsubject_weight: TFloatField;
    Client_Subjectsubject_rate: TFloatField;
    Client_Subjectsubject_sum: TFloatField;
    Client_Subjectsubject_id: TAutoIncField;
    Label15: TLabel;
    Query_Currency: TADOQuery;
    DS_Currency: TDataSource;
    Label16: TLabel;
    Client_Subjectsubject_nds: TFloatField;
    Client_Subjectsubject_set: TBooleanField;
    Client_Subjectsubject_sum_nds: TFloatField;
    Query_String: TADOQuery;
    DS_String: TDataSource;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    cxGrid1DBBandedTableView1: TcxGridDBBandedTableView;
    cxGrid1DBBandedTableView1subject_id: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1subject_invoice: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1subject_weight: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1subject_rate: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1subject_sum: TcxGridDBBandedColumn;
    cxPropertiesStore1: TcxPropertiesStore;
    Client_Subjectsubject_ed_izm_name: TStringField;
    cxGrid1DBBandedTableView1subject_ed_izm_name: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1subject_sum_nds: TcxGridDBBandedColumn;
    cxLookupComboBox1: TcxLookupComboBox;
    cxDBTextEdit1: TcxDBTextEdit;
    cxDBTextEdit2: TcxDBTextEdit;
    cxDBTextEdit3: TcxDBTextEdit;
    cxDBTextEdit4: TcxDBTextEdit;
    cxDBTextEdit5: TcxDBTextEdit;
    cxDBMemo2: TcxDBMemo;
    cxLookupComboBox2: TcxLookupComboBox;
    cxDateEdit1: TcxDateEdit;
    dxBarDockControl1: TdxBarDockControl;
    dxBarManager1: TdxBarManager;
    dxBarManager1Bar1: TdxBar;
    dxBarButton1: TdxBarButton;
    dxBarButton2: TdxBarButton;
    PopupMenu1: TdxBarPopupMenu;
    N1: TdxBarButton;
    N3: TdxBarButton;
    N5: TdxBarButton;
    N6: TdxBarButton;
    N2: TdxBarButton;
    dxBarContainerItem1: TdxBarContainerItem;
    dxBarControlContainerItem1: TdxBarControlContainerItem;
    cxCheckBox1: TcxCheckBox;
    cxGrid1DBBandedTableView1subject_sum_total: TcxGridDBBandedColumn;
    Client_Subjectsubject_sum_total: TFloatField;
    Panel5: TPanel;
    Query_TypeNds: TADOQuery;
    DS_TypeNds: TDataSource;
    cxCurrencyEdit2: TcxCurrencyEdit;
    cxCurrencyEdit1: TcxCurrencyEdit;
    cxCurrencyEdit3: TcxCurrencyEdit;
    Label12: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    cxLookupComboBox3: TcxLookupComboBox;
    cxTextEdit1: TcxTextEdit;
    cxLookupComboBox4: TcxLookupComboBox;
    cxImageList1: TcxImageList;
    GroupBox1: TGroupBox;
    cxLabel1: TcxLabel;
    cxLabel2: TcxLabel;
    cxButtonEdit1: TcxButtonEdit;
    cxButtonEdit2: TcxButtonEdit;
    Panel7: TPanel;
    Panel8: TPanel;
    GroupBox2: TGroupBox;
    GroupBox3: TGroupBox;
    cxMemo1: TcxMemo;
    Client_Subjectsubject_nds_id: TIntegerField;
    cxLookupComboBox5: TcxLookupComboBox;
    Label10: TLabel;
    Query_Print_Form: TADOQuery;
    DS_Print_Form: TDataSource;
    cxGrid1DBBandedTableView1subject_set: TcxGridDBBandedColumn;
    cxCheckBox2: TcxCheckBox;
    Client_Subjectlook_nds_name: TStringField;
    cxGrid1DBBandedTableView1look_nds_name: TcxGridDBBandedColumn;
    cxDBTextEdit6: TcxDBTextEdit;
    DS_Bank: TDataSource;
    cxDBMemo1: TcxDBMemo;
    Client_Subjectsubject_service_id: TIntegerField;
    Client_Subjectsubject_service_name: TStringField;
    Client_Subjectsubject_service_budget: TStringField;
    cxGrid1DBBandedTableView1subject_service_id: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1subject_service_name: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1subject_service_budget: TcxGridDBBandedColumn;
    cxDateEdit2: TcxDateEdit;
    Label11: TLabel;
    Query_Bank: TADOQuery;
    Query_Status: TADOQuery;
    DS_Status: TDataSource;
    Label13: TLabel;
    cxLookupComboBox6: TcxLookupComboBox;
    cxCheckBox3: TcxCheckBox;
    dxBarButton3: TdxBarButton;
    dxBarButton4: TdxBarButton;
    dxBarButton5: TdxBarButton;
    dxBarButton6: TdxBarButton;
    dxBarPopupMenu1: TdxBarPopupMenu;
    Client_Subjectsubject_invoice: TStringField;
    dxBarButton7: TdxBarButton;
    cxButton1: TcxButton;
    cxButton3: TcxButton;
    cxCheckBox4: TcxCheckBox;
    cxCheckBox5: TcxCheckBox;
    dxBarButton8: TdxBarButton;
    procedure cxCheckBox1Click(Sender: TObject);
    procedure cxGrid1DBBandedTableView1FocusedItemChanged(Sender: TcxCustomGridTableView; APrevFocusedItem, AFocusedItem: TcxCustomGridTableItem);
    procedure cxLookupComboBox2PropertiesEditValueChanged(Sender: TObject);
    procedure cxGrid1DBBandedTableView1CustomDrawColumnHeader(Sender: TcxGridTableView; ACanvas: TcxCanvas;  AViewInfo: TcxGridColumnHeaderViewInfo; var ADone: Boolean);
    procedure Client_SubjectNewRecord(DataSet: TDataSet);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure N1Click(Sender: TObject);
    procedure N2Click(Sender: TObject);
    procedure ToolButton1Click(Sender: TObject);
    procedure N5Click(Sender: TObject);
    procedure N6Click(Sender: TObject);
    procedure cxGrid1Exit(Sender: TObject);
    procedure cxLookupComboBox1PropertiesEditValueChanged(Sender: TObject);
    procedure cxButtonEdit1PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure cxCheckBox2PropertiesChange(Sender: TObject);
    procedure cxGrid1DBBandedTableView1DataControllerSummaryAfterSummary(ASender: TcxDataSummary);
    procedure Client_SubjectBeforePost(DataSet: TDataSet);
    procedure cxGrid1DBBandedTableView1subject_service_namePropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure cxCheckBox3PropertiesChange(Sender: TObject);
    procedure cxGrid1DBBandedTableView1subject_invoicePropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure dxBarButton7Click(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure dxBarPopupMenu1Popup(Sender: TObject);
    procedure cxCheckBox4PropertiesEditValueChanged(Sender: TObject);
  private

    Fcopy_invoice   : boolean;
    Finvoice_id, Fdate_year, Finvoice_header_id  : integer;
    Finvoice_cod    : string;
    Ftype_invoice   : integer;
    Ffirm_director_id    : integer;
    Ffirm_buh_id         : integer;
    Ftype_action : integer;
    Fbargain_id  : integer;

    // Запущена как DLL
    Fset_run_dll : boolean;
    Fconnect     : TADOConnection;
    Fusr_pwd_docs: PUser_pwd;
    Fusr_pwd_lis : PUser_pwd;

    procedure SetUpdate(id : integer);
    procedure SetInsert(id : integer);
    procedure SetTypeInvoice(type_invoice: integer);
    procedure SetStrAddId(str_bargain_add_id: string);
  public
    constructor Create(AOwner : TApplication);
    constructor CreateDLL(AOwner: TApplication; usr_pwd_lis: PUser_pwd; usr_pwd_docs: PUser_pwd);
  published
    property _SetUpdate : integer write SetUpdate;
    property _SetInsert : integer write SetInsert;
    property _GetInvoiceId : integer read Finvoice_id;
    property _TypeInvoice : integer read Ftype_invoice write SetTypeInvoice;
    property _SetStrAddId : string write SetStrAddId;
  end;

var
  fmClientInvoiceAdd: TfmClientInvoiceAdd;

implementation
    uses Main, Acts, Raznoe, ClientInvoice, Clipbrd, Filter, Other, DateUtils;
{$R *.DFM}

constructor TfmClientInvoiceAdd.CreateDLL(AOwner: TApplication; usr_pwd_lis: PUser_pwd; usr_pwd_docs: PUser_pwd);
begin
  Screen.Cursor := crHourglass;
  inherited Create(AOwner);

  cxButton1.Enabled := False;
  cxLookupComboBox1.Properties.ReadOnly := True;
  cxLookupComboBox2.Properties.ReadOnly := True;
  cxLookupComboBox4.Properties.ReadOnly := True;
  cxDateEdit1.Properties.ReadOnly := True;
  dxBarButton1.Enabled := False;
  dxBarButton2.Enabled := False;
  N1.Enabled := False;
  N2.Enabled := False;
  N3.Enabled := False;
  N5.Enabled := False;
  N6.Enabled := False;
  cxCheckBox4.Enabled := False;
  cxCheckBox1.Enabled := False;
  cxCheckBox2.Enabled := False;
  cxButtonEdit1.Enabled := False;
  cxButtonEdit2.Enabled := False;
  cxGrid1DBBandedTableView1.OptionsData.Appending := False;
  cxGrid1DBBandedTableView1.OptionsData.CancelOnExit := False;
  cxGrid1DBBandedTableView1.OptionsData.Deleting := False;
  cxGrid1DBBandedTableView1.OptionsData.DeletingConfirmation := False;
  cxGrid1DBBandedTableView1.OptionsData.Editing := False;
  cxGrid1DBBandedTableView1.OptionsData.Inserting := False;


  Fset_run_dll  := True;
  Fusr_pwd_docs := usr_pwd_docs;
  Fusr_pwd_lis  := usr_pwd_lis;
  Fconnect := TADOConnection.Create(nil);
  Fconnect.ConnectionString := 'Provider=SQLOLEDB.1;User ID='+Fusr_pwd_lis^.user_name+';Password='+Fusr_pwd_lis^.user_pass+';Initial Catalog='+Fusr_pwd_lis^.catalog+';Data Source='+Fusr_pwd_lis^.server+';';
  Fconnect.KeepConnection   := False;
  Fconnect.LoginPrompt      := False;

  Query_Provider.Connection := Fconnect;
  Query_Currency.Connection := Fconnect;
  Query_Contract.Connection := Fconnect;
  Query_TypeNds.Connection := Fconnect;
  Query_String.Connection := Fconnect;
  Query_Print_Form.Connection := Fconnect;
  Query_Bank.Connection := Fconnect;
  Query_Status.Connection := Fconnect;

  Client_Subject.CreateDataSet;
  Client_Subject.LogChanges := False;

  Ffirm_director_id := -9;
  Ffirm_buh_id := -9;

  Query_Currency.Open;
  cxLookupComboBox4.EditValue := Query_Currency.FieldByName('currency_id').AsInteger;

  cxDateEdit1.Properties.OnEditValueChanged := nil;
  cxDateEdit1.Date := Date;
  cxDateEdit1.Properties.OnEditValueChanged := cxLookupComboBox2PropertiesEditValueChanged;

  Fdate_year := StrToInt(FormatDateTime('yyyy', cxDateEdit1.Date));
  Query_Provider.Parameters.ParamByName('date1').Value := cxDateEdit1.Date;
  Query_Provider.Parameters.ParamByName('date2').Value := cxDateEdit1.Date;
  Query_Provider.Open;

  cxLookupComboBox2.Properties.OnEditValueChanged := nil;
  cxLookupComboBox2.EditValue := Query_Provider.FieldByName('invoice_header_id').AsInteger;
  cxLookupComboBox2.Properties.OnEditValueChanged := cxLookupComboBox2PropertiesEditValueChanged;

  Query_String.Open;
  Query_TypeNds.Open;
  Query_Status.Open;

  Screen.Cursor := crDefault;
end;

constructor TfmClientInvoiceAdd.Create(AOwner: TApplication);
begin
  Screen.Cursor := crHourglass;
  inherited Create(AOwner);
  Ftype_action := 0;

  Fset_run_dll  := False;
  Fusr_pwd_lis  := usr_pwd;
  Fconnect      := fmMain.Lis;

  Client_Subject.CreateDataSet;
  Client_Subject.LogChanges := False;

  Ffirm_director_id := -9;
  Ffirm_buh_id := -9;
  Fbargain_id  := -9;

  Query_Currency.Open;
  cxLookupComboBox4.EditValue := Query_Currency.FieldByName('currency_id').AsInteger;

  cxDateEdit1.Properties.OnEditValueChanged := nil;
  cxDateEdit1.Date := Date;
  cxDateEdit1.Properties.OnEditValueChanged := cxLookupComboBox2PropertiesEditValueChanged;

  Fdate_year := StrToInt(FormatDateTime('yyyy', cxDateEdit1.Date));
  Query_Provider.Parameters.ParamByName('date1').Value := cxDateEdit1.Date;
  Query_Provider.Parameters.ParamByName('date2').Value := cxDateEdit1.Date;
  Query_Provider.Open;

  cxLookupComboBox2.Properties.OnEditValueChanged := nil;
  cxLookupComboBox2.EditValue := Query_Provider.FieldByName('invoice_header_id').AsInteger;
  cxLookupComboBox2.Properties.OnEditValueChanged := cxLookupComboBox2PropertiesEditValueChanged;

  Query_String.Open;
  Query_TypeNds.Open;
  Query_Status.Open;

  Query_Print_Form.Open;
  cxLookupComboBox5.EditValue :=  Query_Print_Form.FieldByName('inf_obj_id').Value;

  MonitorEventFormOpen('OPEN_FORM', self.Name, fmMain.Lis, -9);

  Screen.Cursor := crDefault;
end;

procedure TfmClientInvoiceAdd.SetInsert(id: integer);
begin
  cxLookupComboBox2PropertiesEditValueChanged(nil);
end;

procedure TfmClientInvoiceAdd.SetTypeInvoice(type_invoice: integer);
begin
  Screen.Cursor := crHourglass;

  Ftype_invoice := type_invoice;
  case Ftype_invoice of
    0,2: begin // Клиент,Администрация
        Label7.Caption := 'Поставщик..............';
        Label2.Caption := 'Плательщик..............';
       end;
    1: begin // Подрядчик
        Label7.Caption := 'Плательщик..............';
        Label2.Caption := 'Поставщик..............';
        GroupBox1.Visible := False;
        GroupBox2.Align := alClient;
        Panel2.Visible := False;
       end;
  end;

  Query_Contract.Close;
  Query_Contract.Parameters.ParamByName('date_current').Value := cxDateEdit1.Date;
  Query_Contract.Parameters.ParamByName('type_contract').Value := Ftype_invoice;
  Query_Contract.Open;
  Query_Contract.Locate('type_contract', Ftype_invoice, []);
  cxLookupComboBox1.EditValue := Query_Contract.FieldByName('contract_id').AsInteger;

  Screen.Cursor := crDefault;
end;

procedure TfmClientInvoiceAdd.SetUpdate(id : integer);
var Q : TADOQuery;
begin
  Screen.Cursor := crHourglass;

  Ftype_action := 1;
  Finvoice_id := id;
  cxLookupComboBox2.EditValue := NULL;

  Q := TADOQuery.Create(nil);
  Q.Connection := Fconnect;
  Q.SQL.Add('SELECT * FROM view_invoice WHERE invoice_id = '+IntToStr(id));
  Q.Open;

 // cxDateEdit1.Properties.OnEditValueChanged := nil;
  cxLookupComboBox2.Properties.OnEditValueChanged := nil;

  Fcopy_invoice := Q.FieldByName('global_copy').AsBoolean;
  if not Fcopy_invoice then begin
    Finvoice_cod := Q.FieldByName('invoice_cod').AsString;
    cxCheckBox2.Checked := Q.FieldByName('set_hand_change').AsBoolean;
    cxTextEdit1.EditValue := Finvoice_cod;
  end;

  Finvoice_header_id := Q.FieldByName('invoice_header_id').AsInteger;

  cxDateEdit1.Date      := Q.FieldByName('invoice_date').AsDateTime;


  if Query_Provider.Locate('invoice_header_id',Q.FieldByName('invoice_header_id').AsInteger, []) then begin
    cxLookupComboBox2.EditValue := Q.FieldByName('invoice_header_id').AsInteger;
  end else begin
    //cxLookupComboBox2.EditValue := Query_Provider.FieldByName('invoice_header_id').AsInteger;
    cxLookupComboBox2.EditValue := NULL;
    cxDBTextEdit4.EditValue     := NULL;
    cxDBTextEdit5.EditValue     := NULL;
    cxDBMemo2.EditValue         := NULL;
  end;

  cxMemo1.EditValue := Q.FieldByName('comment').Value;

  Fdate_year := StrToInt(FormatDateTime('yyyy', cxDateEdit1.Date));
  cxLookupComboBox4.EditValue := Q['currency_id'];

  if not Query_Contract.Locate('contract_id', Q.FieldByName('contract_id').AsInteger, []) then begin
    Application.MessageBox('Договор прекратил своё действие!', 'Внимание', MB_OK);
    cxButton1.Enabled := False;
  end;
  cxLookupComboBox1.EditValue := Q['contract_id'];
  Query_Contract.Locate('contract_id', Q['contract_id'], []);

  if Q['string_bottom_id']<>null then begin
    cxCheckBox4.Checked := True;
    cxLookupComboBox3.EditValue := Q['string_bottom_id'];
  end;

  if not Q.FieldByName('firm_director_id').IsNull then Ffirm_director_id := Q.FieldByName('firm_director_id').AsInteger
  else Ffirm_director_id := -9;
  cxButtonEdit1.Text  := Q.FieldByName('firm_director_name').AsString;
  if Q.FieldByName('firm_director_comment').AsString <> '' then
    cxButtonEdit1.Text := cxButtonEdit1.Text + ' (' + Q.FieldByName('firm_director_comment').AsString + ')';

  if not Q.FieldByName('firm_buh_id').IsNull then Ffirm_buh_id     := Q.FieldByName('firm_buh_id').AsInteger
  else Ffirm_buh_id := -9;
  cxButtonEdit2.Text := Q.FieldByName('firm_buh_name').AsString;

  cxCheckBox1.Checked := Q.FieldByName('nds_in_sum').AsBoolean;
  if Q.FieldByName('nds_in_sum').AsBoolean then cxGrid1DBBandedTableView1subject_rate.Caption := 'Ставка (c НДС)'
  else  cxGrid1DBBandedTableView1subject_rate.Caption := 'Ставка (без НДС)';

  cxLookupComboBox5.EditValue :=  Q.FieldByName('print_form_id').Value;

  if not Q.FieldByName('bank_firm_contact_id').isnull then begin
    cxDBMemo1.Tag := Q.FieldByName('bank_firm_contact_id').value;
    Query_Bank.Locate('firm_contact_id', cxDBMemo1.Tag, []);
  end else  cxDBMemo1.Tag := -9;

  cxCheckBox3.Checked := not Q.FieldByName('invoice_status_id').IsNull;
  cxLookupComboBox6.EditValue :=  Q.FieldByName('invoice_status_id').Value;

  //cxLookupComboBox2PropertiesEditValueChanged(cxDateEdit1);
  cxDateEdit1.Properties.OnEditValueChanged := cxLookupComboBox2PropertiesEditValueChanged;
  cxLookupComboBox2.Properties.OnEditValueChanged := cxLookupComboBox2PropertiesEditValueChanged;
  cxLookupComboBox2PropertiesEditValueChanged(cxLookupComboBox2);
  cxDateEdit2.EditValue := Q.FieldByName('plan_pay_date').Value;

  cxCheckBox5.Checked := Q.FieldByName('set_print_note').AsBoolean;

  // ----------------------------------------------
  Q.Close;
  Q.SQL.Clear;
  Q.SQL.Add('SELECT * FROM view_invoice_table WHERE invoice_id='+IntToStr(Finvoice_id));
  Q.Open;
  Client_Subject.DisableControls;
  while not Q.Eof do begin
    Client_Subject.Append;
    Client_Subject['subject_invoice']       := Q['subject_invoice'];
    Client_Subject['subject_rate']          := Q['subject_rate'];
    Client_Subject['subject_ed_izm_name']   := Q['subject_ed_izm_name'];
    Client_Subject['subject_weight']        := Q['subject_weight'];
    Client_Subject['subject_nds_id']        := Q['subject_nds_id'];
    Client_Subject['subject_nds']           := Q['subject_nds'];
    Client_Subject['subject_set']           := Q['subject_set'];
    Client_Subject['subject_sum']           := Q['subject_sum'];
    Client_Subject['subject_sum_nds']       := Q['subject_sum_nds'];
    Client_Subject['subject_sum_total']     := Q['subject_sum_total'];
    Client_Subject['subject_service_id']    := Q['subject_service_id'];
    Client_Subject['subject_service_name']  := Q['subject_service_name'];
    Client_Subject['subject_service_budget']:= Q['subject_service_budget'];
    Client_Subject.Post;
    Q.Next;
  end;
  Client_Subject.EnableControls;
  Q.Free;

  MonitorEventFormOpen('UPDATE_FORM', self.Name, fmMain.Lis, id);
end;

procedure TfmClientInvoiceAdd.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TfmClientInvoiceAdd.N1Click(Sender: TObject);
begin
  Client_Subject.Append;
end;

procedure TfmClientInvoiceAdd.N2Click(Sender: TObject);
begin
  if Client_Subject.RecordCount >0 then begin
    Client_Subject.Delete;
    Client_SubjectBeforePost(Client_Subject);
  end;
end;

procedure TfmClientInvoiceAdd.ToolButton1Click(Sender: TObject);
var Q: TADOQuery;
begin
  Q := TADOQuery.Create(nil);
  Q.Connection := Fconnect;
  Q.SQL.Add('SELECT * FROM view_inf_obj WHERE inf_obj_id = ' + IntToStr(TToolButton(Sender).Tag));
  Q.Open;

  Client_Subject.Edit;
  Client_Subject.FieldByName('subject_invoice').AsString := Q.FieldByName('inf_obj_name_full').AsString;
  Client_Subject.Post;

  Q.Free;
end;

procedure TfmClientInvoiceAdd.Client_SubjectNewRecord(DataSet: TDataSet);
begin
  Client_Subject['subject_set'] := 0;
  Client_Subject['subject_nds_id'] := Query_TypeNds.FieldByName('subject_nds_id').Value;
end;

procedure TfmClientInvoiceAdd.N5Click(Sender: TObject);
var p : array[0..500] of Char;
begin
  StrPCopy(p, cxGrid1DBBandedTableView1subject_invoice.DataBinding.Field.AsString);
  Clipboard.SetTextBuf(p);
end;

procedure TfmClientInvoiceAdd.N6Click(Sender: TObject);
var x : PChar;
begin
  x := AllocMem(501);
  Clipboard.GetTextBuf(x, 500);
  Client_Subject.Edit;
  Client_Subject.FieldByName('subject_invoice').AsString := StrPas(x);
  Client_Subject.Post;
end;

procedure TfmClientInvoiceAdd.cxGrid1DBBandedTableView1CustomDrawColumnHeader( Sender: TcxGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxGridColumnHeaderViewInfo; var ADone: Boolean);
begin
  DrawcxGridColumnOnFocused(Sender, ACanvas, AViewInfo);
end;

procedure TfmClientInvoiceAdd.cxGrid1DBBandedTableView1DataControllerSummaryAfterSummary(ASender: TcxDataSummary);
begin
  cxCurrencyEdit2.EditValue := cxGrid1DBBandedTableView1.DataController.Summary.FooterSummaryValues[0];  // без НДС
  cxCurrencyEdit1.EditValue := cxGrid1DBBandedTableView1.DataController.Summary.FooterSummaryValues[1];  // НДС
  cxCurrencyEdit3.EditValue := cxGrid1DBBandedTableView1.DataController.Summary.FooterSummaryValues[2];  // Всего
end;

procedure TfmClientInvoiceAdd.cxGrid1DBBandedTableView1FocusedItemChanged(Sender: TcxCustomGridTableView; APrevFocusedItem, AFocusedItem: TcxCustomGridTableItem);
begin
  Sender.Painter.Invalidate;
end;

procedure TfmClientInvoiceAdd.cxGrid1DBBandedTableView1subject_invoicePropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  dxBarPopupMenu1.Popup(Mouse.CursorPos.X, Mouse.CursorPos.Y);
end;

procedure TfmClientInvoiceAdd.cxGrid1DBBandedTableView1subject_service_namePropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
type
  TFunc = function(AppHand:THandle; f:boolean; usr_pwd:PUser_pwd; budget_type_cod: string; budget_id: integer) : variant;
var
  FDic   : TFunc;
  handle : THandle;
  v      : Variant;
  service_id : integer;
  Query_Service : TADOQuery;
begin
  handle := LoadLibrary('dictionary.dll');
  @FDic := GetProcAddress(handle, 'CreateWndDictService');
  v := FDic(Application.Handle, True, usr_pwd, '1', -9);

  service_id := v[0];
  FreeLibrary(handle);
  if service_id <> -9 then begin
    Query_Service := TADOQuery.Create(nil);
    Query_Service.Connection := Fconnect;
    Query_Service.SQL.Add('SELECT * FROM view_shp_service');
    Query_Service.Open;
    if Query_Service.Locate('service_id', service_id, []) then begin
      if (Client_Subject.State = dsEdit) or (Client_Subject.State = dsInsert) then begin
        Client_Subject.FieldByName('subject_service_id'    ).Value := service_id;
        Client_Subject.FieldByName('subject_service_name'  ).Value := Query_Service.FieldByName('service_name').Value;
        Client_Subject.FieldByName('subject_service_budget').Value := Query_Service.FieldByName('budget_name').Value;
      end;
    end else begin
//      service_id := -9;
//      cxButtonEdit2.EditValue := null;
//      cxTextEdit1.EditValue := null;
//      cxTextEdit2.EditValue := null;
//      cxTextEdit3.EditValue := null;
//      cxTextEdit4.EditValue := null;
    end;
    Query_Service.Free;
  end;
end;

procedure TfmClientInvoiceAdd.cxGrid1Exit(Sender: TObject);
begin
  if (Client_Subject.State = dsEdit) OR (Client_Subject.State = dsInsert) then Client_Subject.Post;
end;

procedure TfmClientInvoiceAdd.cxLookupComboBox1PropertiesEditValueChanged(Sender: TObject);
var
  Query_Contact : TADOQuery;
begin
  if not Fset_run_dll then cxButton1.Enabled := True;

  if Query_Contract.Active then begin
    Query_Contract.Locate('contract_id', cxLookupComboBox1.EditValue, []);

  if Query_Contract.FieldByName('str_invoice_header_id').AsString <> '' then begin
   Application.MessageBox('Для договора установлен список разрешенных банковских счетов. Список ограничен.', 'Внимание.', MB_OK);
   Query_Provider.Close;
   Query_Provider.SQL[2] := ' AND invoice_header_id in ('+ Query_Contract.FieldByName('str_invoice_header_id').AsString + ') ';
   Query_Provider.Open;
  end else begin
   Query_Provider.Close;
   Query_Provider.SQL[2] := '--';
   Query_Provider.Open;
   Query_Provider.Locate('invoice_header_id', cxLookupComboBox2.EditValue, []);
  end;

  //банковские реквизиты
   Query_Bank.Close;
   Query_Bank.Parameters.ParamByName('date_current').Value := cxDateEdit1.EditValue;
   Query_Bank.Parameters.ParamByName('firm_id').Value := Query_Contract.FieldByName('firm_customer').AsInteger;
   Query_Bank.Open;
   Query_Bank.First;
   cxDBMemo1.Tag := -9;
   if Query_Bank.RecordCount > 0 then begin
    cxDBMemo1.Tag :=  Query_Bank.FieldByName('firm_contact_id').AsInteger;
   end;

    // Подписанты
    Query_Contact := TADOQuery.Create(self);
    Query_Contact.Connection := Query_Contract.Connection;
    Query_Contact.SQL.Add('SELECT TOP 1 firm_contact_id, firm_contact_name, firm_contact_comment FROM view_firm_contact');
    Query_Contact.SQL.Add('WHERE firm_id = ' + IntToStr(Query_Contract.FieldByName('firm_self').AsInteger));
    Query_Contact.SQL.Add('AND type_contact_cod BETWEEN ''20'' AND ''99'' AND type_contact_cod NOT IN (''23'', ''24'')');
    Query_Contact.SQL.Add('AND ' + DateToSQL(cxDateEdit1.Date) + ' BETWEEN date_begin AND ISNULL(date_end, ' + DateToSQL(cxDateEdit1.Date) + ')');
    Query_Contact.SQL.Add('ORDER BY set_default DESC, type_contact_cod, firm_contact_name');
    Query_Contact.Open;

    if Query_Contact.Eof then begin
      Ffirm_director_id  := -9;
      cxButtonEdit1.Text := '';
      cxDBMemo1.Tag      := -9;
    end else begin
      Ffirm_director_id := Query_Contact.FieldByName('firm_contact_id').AsInteger;
      cxButtonEdit1.Text := Query_Contact.FieldByName('firm_contact_name').AsString;

      if Query_Contact.FieldByName('firm_contact_comment').AsString <> '' then
        cxButtonEdit1.Text := cxButtonEdit1.Text + ' (' + Query_Contact.FieldByName('firm_contact_comment').AsString + ')'
    end;

    Query_Contact.Close;
    Query_Contact.SQL.Strings[2] := 'AND type_contact_cod IN (''23'', ''24'')';
    Query_Contact.Open;

    if Query_Contact.Eof then begin
      Ffirm_buh_id := -9;
      cxButtonEdit2.Text := '';
    end else begin
      Ffirm_buh_id := Query_Contact.FieldByName('firm_contact_id').AsInteger;
      cxButtonEdit2.Text := Query_Contact.FieldByName('firm_contact_name').AsString;
    end;

    Query_Contact.Free;
  end;
end;

procedure TfmClientInvoiceAdd.cxLookupComboBox2PropertiesEditValueChanged(Sender: TObject);
var         Q : TADOQuery;
  contract_id : integer;
       d1, d2 : TDate;
            i : integer;
begin
  Screen.Cursor := crHourglass;

  if (Sender is TcxDateEdit) then begin
    if cxLookupComboBox1.EditValue <> null then contract_id := cxLookupComboBox1.EditValue;
    Query_Contract.Close;
    Query_Contract.Parameters.ParamByName('date_current').Value := cxDateEdit1.Date;
    Query_Contract.Open;
    if Query_Contract.Locate('contract_id', contract_id, []) then cxLookupComboBox1.EditValue := contract_id
    else cxLookupComboBox1.EditValue := null;

    Query_Provider.Close;
    Query_Provider.Parameters.ParamByName('date1').Value := cxDateEdit1.Date;
    Query_Provider.Parameters.ParamByName('date2').Value := cxDateEdit1.Date;
    Query_Provider.Open;

    if not Query_Provider.Locate('invoice_header_id', cxLookupComboBox2.EditValue, []) then  begin
     cxLookupComboBox2.EditValue := NULL;
     cxDBTextEdit4.EditValue := NULL;
     cxDBTextEdit5.EditValue := NULL;
     cxDBMemo2.EditValue := NULL;
    end else Query_Provider.Locate('invoice_header_id', cxLookupComboBox2.EditValue, []);
  end;

  if VarIsNull(cxLookupComboBox2.EditValue) then begin
    cxDBTextEdit4.DataBinding.DataSource := nil;
    cxDBTextEdit5.DataBinding.DataSource := nil;
    cxDBMemo2.DataBinding.DataSource := nil;
  end else begin
    cxDBTextEdit4.DataBinding.DataSource := DS_Provider;
    cxDBTextEdit5.DataBinding.DataSource := DS_Provider;
    cxDBMemo2.DataBinding.DataSource := DS_Provider;
    if Query_Provider.Active then
     Query_Provider.Locate('invoice_header_id', cxLookupComboBox2.EditValue, []);
  end;


//  if Query_Provider.Active then
//    Query_Provider.Locate('invoice_header_id', cxLookupComboBox2.EditValue, []);

  // ---- Только для клиента и административных договоров ----------
  if ((Ftype_invoice = 0) OR (Ftype_invoice = 2)) AND (not cxCheckBox2.Checked) AND (cxLookupComboBox2.EditValue <> null) then begin
    if (Fcopy_invoice) OR (Finvoice_header_id <> cxLookupComboBox2.EditValue) OR (Fdate_year <> StrToInt(FormatDateTime('yyyy', cxDateEdit1.Date))) then begin
      Q := TADOQuery.Create(nil);
      Q.Connection := Fconnect;
      Q.SQL.Text := 'SELECT dbo.GetInvoiceCod(' + IntToStr(cxLookupComboBox2.EditValue) + ', ''' + FormatDateTime('yyyymmdd', cxDateEdit1.EditValue) + ''') as invoice_cod';
      Q.Open;
      cxTextEdit1.EditValue := Q.FieldByName('invoice_cod').AsString;
      Q.Free;
    end else
      cxTextEdit1.EditValue := Finvoice_cod;
  end;

  // --- +3 рабочих дня с даты счёта (отбрасываем только субб и воск)
  if (not VarisNULL(cxDateEdit1.EditValue)) then begin
    d1 := cxDateEdit1.Date;
    i := 1;
    while d1 < cxDateEdit1.Date+20 do begin
      d1 := d1 + 1;
      if (DayOfTheWeek(d1) = 6) OR (DayOfTheWeek(d1) = 7) then
        continue
      else begin
        i := i + 1;
        if i > 3 then
          break;
      end;
    end;
    cxDateEdit2.EditValue := d1;
  end;


   //банковские реквизиты
   Query_Bank.Close;
   Query_Bank.Parameters.ParamByName('date_current').Value := cxDateEdit1.EditValue;
   Query_Bank.Parameters.ParamByName('firm_id').Value := Query_Contract.FieldByName('firm_customer').AsInteger;
   Query_Bank.Open;
   Query_Bank.First;
   cxDBMemo1.Tag := -9;
   if Query_Bank.RecordCount > 0 then begin
    cxDBMemo1.Tag :=  Query_Bank.FieldByName('firm_contact_id').AsInteger;
   end;

  Screen.Cursor := crDefault;
end;

procedure TfmClientInvoiceAdd.dxBarButton7Click(Sender: TObject);
var
  _fmActs : TfmActs;
  Q : TADOQuery;
  str_acts_id : string;

  date_invoice      : TDate;
  date_begin_period : TDate;
  date_end_period   : TDate;

  SP_Balans_Detail : TADOStoredProc;
  set_test_return  : boolean;
  tax_rate : Variant;
begin
  date_invoice := iif(cxDateEdit1.EditValue = null, Date, cxDateEdit1.Date);
  date_begin_period := DateOf(StartOfTheMonth(date_invoice));
  date_end_period   := DateOf(EndOfTheMonth(date_invoice));

  _fmActs := TfmActs.Create(Application, False);
  _fmActs._SetFilterActs(-9, date_begin_period, date_end_period, '', cxLookupComboBox1.EditValue, False);
  if _fmActs.ShowModal = mrOk then begin
    if Query_Contract.Locate('contract_id', _fmActs._GetContractId, []) then begin
      cxLookupComboBox1.EditValue := _fmActs._GetContractId;
      str_acts_id := _fmActs._GetStrActsID;
    end else begin
      Application.MessageBox('Не верный тип договора' + #13#10 + 'или договор не действует в указанном месяце', 'Внимание', MB_OK or MB_ICONERROR);
      exit;
    end;

    // Запонение счета
    Screen.Cursor := crHourglass;

    // Данные отчета - перевозки
    ShowTextMessage('Подготовка данных ...', False);

    SP_Balans_Detail := TADOStoredProc.Create(nil);
    SP_Balans_Detail.Connection := Fconnect;
    SP_Balans_Detail.ProcedureName := 'sp_acts_invoice_score_GET;1';
    SP_Balans_Detail.Parameters.Refresh;
    SP_Balans_Detail.Parameters.ParamByName('@str_acts_id').Value := str_acts_id;
    SP_Balans_Detail.CommandTimeout := 200;
    try
      SP_Balans_Detail.Open;
    except
    end;

    Client_Subject.DisableControls;
    Client_Subject.EmptyDataSet;

    // Ставка включает НДС
    cxCheckBox1.Checked := True;

    while not SP_Balans_Detail.Eof do begin
      ShowTextMessage('Осталось записей ' + IntToStr(SP_Balans_Detail.RecordCount - SP_Balans_Detail.RecNo + 1) + '...', False);

      // Проверка - возврат или нет
      set_test_return := (SP_Balans_Detail.FieldByName('bargain_correct_type').AsInteger <> 1); // не удаляющее приложение
      set_test_return := set_test_return and (SP_Balans_Detail.FieldByName('cost_with_nds').AsCurrency < 0); // отридцательная сумма

      // добавлем запись, если это не возврат
      if not set_test_return then begin

        Client_Subject.Append;
        Client_Subject['subject_invoice']       := SP_Balans_Detail.FieldByName('name_service').Value;;
        Client_Subject['subject_ed_izm_name']   := SP_Balans_Detail.FieldByName('ed_izm_name').Value;
        Client_Subject['subject_nds_id']        := SP_Balans_Detail.FieldByName('bargain_nds_id').Value;
        // Стандартный алгоритм расчета (от суммы с НДС)
        tax_rate := Query_TypeNds.Lookup('inf_obj_id', SP_Balans_Detail.FieldByName('bargain_nds_id').Value, 'inf_obj_cod');
        if tax_rate = null then tax_rate := 0;

        // Всегда выставляем ручной ввод (сумму НДС либо расчитываем, либо они вернуться из ХП)
        Client_Subject['subject_set']           := True;
        Client_Subject['subject_weight']        := SP_Balans_Detail.FieldByName('quantity').AsCurrency;
        Client_Subject['subject_sum_total']     := SP_Balans_Detail.FieldByName('cost_with_nds').AsCurrency;
        if SP_Balans_Detail.FieldByName('quantity').AsCurrency <> 0 then
          Client_Subject['subject_rate']        := SP_Balans_Detail.FieldByName('cost_with_nds').AsCurrency / SP_Balans_Detail.FieldByName('quantity').AsCurrency
        else
          Client_Subject['subject_rate']        := null;
        if SP_Balans_Detail.FieldByName('set_hand_edit').Value then
          Client_Subject['subject_sum_nds']     := RoundCurr(SP_Balans_Detail.FieldByName('cost_with_nds').AsCurrency * tax_rate /(100 + tax_rate), -2)
        else
          Client_Subject['subject_sum_nds']     := SP_Balans_Detail.FieldByName('tax_sum').AsCurrency;
        Client_Subject['subject_sum']           := Client_Subject['subject_sum_total'] - Client_Subject['subject_sum_nds'];

        Client_Subject.Post;

      end;

      SP_Balans_Detail.Next;
    end;
    Client_Subject.EnableControls;

    ShowTextMessage();
    SP_Balans_Detail.Free;
    Screen.Cursor := crDefault;

  end;
end;

procedure TfmClientInvoiceAdd.dxBarPopupMenu1Popup(Sender: TObject);
var   i, cnt : integer;
  bar_button : TdxBarButton;
           Q : TADOQuery;
begin
  Screen.Cursor := crHourglass;

  while dxBarPopupMenu1.ItemLinks.Count > 0 do begin
    dxBarPopupMenu1.ItemLinks[dxBarPopupMenu1.ItemLinks.Count - 1].Item.Free;
  end;

  Q := TADOQuery.Create(nil);
  Q.Connection := Fconnect;
  Q.SQL.Add('SELECT * FROM inf_obj WHERE type_inf_id = 221 ORDER BY inf_obj_name');
  Q.Open;

  while not Q.Eof do begin
    bar_button := TdxBarButton.Create(nil);

    bar_button.Caption    := Q.FieldByName('inf_obj_name').AsString;
    bar_button.Tag        := Q.FieldByName('inf_obj_id').AsInteger;
    bar_button.OnClick    := ToolButton1Click;
    with dxBarPopupMenu1.ItemLinks.Add do begin
      Item  := bar_button;
    end;
    Q.Next;
  end;

  Q.Free;
  Screen.Cursor := crDefault;
end;

procedure TfmClientInvoiceAdd.Client_SubjectBeforePost(DataSet: TDataSet);
begin
  Query_TypeNds.Locate('subject_nds_id', Client_Subject.FieldByName('subject_nds_id').Value, []);
  Client_Subject.FieldByName('subject_nds').Value := Query_TypeNds.FieldByName('inf_obj_cod').Value;

  if (not Client_Subject['subject_set']) then begin
    if cxCheckBox1.Checked then begin
      Client_Subject['subject_sum_total'] := RoundCurr(Client_Subject.FieldByName('subject_rate').AsCurrency * Client_Subject.FieldByName('subject_weight').AsCurrency, -2);
      Client_Subject['subject_sum_nds'] := RoundCurr(Client_Subject.FieldByName('subject_sum_total').AsCurrency * Client_Subject.FieldByName('subject_nds').AsCurrency/(100 + Client_Subject.FieldByName('subject_nds').AsCurrency), -2);
      Client_Subject['subject_sum'] := RoundCurr(Client_Subject.FieldByName('subject_sum_total').AsCurrency - Client_Subject.FieldByName('subject_sum_nds').AsCurrency, -2);
    end else begin
      Client_Subject['subject_sum'] := RoundCurr(Client_Subject.FieldByName('subject_rate').AsCurrency * Client_Subject.FieldByName('subject_weight').AsCurrency, -2);
      Client_Subject['subject_sum_nds'] := RoundCurr(Client_Subject.FieldByName('subject_sum').AsCurrency * Client_Subject.FieldByName('subject_nds').AsCurrency/100, -2);
      Client_Subject['subject_sum_total'] := RoundCurr(Client_Subject.FieldByName('subject_sum').AsCurrency + Client_Subject.FieldByName('subject_sum_nds').AsCurrency, -2);
    end;
  end;
end;

procedure TfmClientInvoiceAdd.cxButton1Click(Sender: TObject);
var     SP : TADOStoredProc;
  tmp_path : string;
  AStream  : TMemoryStream;
  s,s1     : TStringStream;
  StringList : TStringList;
  i,f        : integer;
  files_data : TArray<Byte>;

begin
  if cxLookupComboBox1.EditValue = null then begin
    Application.MessageBox('Не указан плательщик!', 'Внимание', MB_OK);
    ModalResult := mrNone;
    exit;
  end;

  if cxLookupComboBox2.EditValue = null then begin
    Application.MessageBox('Не указан банковский счет!', 'Внимание', MB_OK);
    ModalResult := mrNone;
    exit;
  end;

  // Проверка р/с
  Query_Provider.Locate('invoice_header_id', cxLookupComboBox2.EditValue, []);
  Query_Contract.Locate('contract_id', cxLookupComboBox1.EditValue, []);

  if (Query_Provider.FieldByName('set_only_marked_contract').Value) then begin
    f := 0;
    if Query_Contract.FieldByName('str_invoice_header_id').AsString <> '' then begin
      StringList := TStringList.Create;
      StringList.CommaText := Query_Contract.FieldByName('str_invoice_header_id').AsString;
      StringList.Delimiter := ',';
      for i := 0 to StringList.Count - 1 do begin
        if cxLookupComboBox2.EditValue = StringList[i] then f := 1;
      end;
    end;

    if f = 0 then begin
      Application.MessageBox('Выбранные банковские реквизиты не могут быть использованы для выбранного договора!', 'Внимание', MB_OK);
      ModalResult := mrNone;
      exit;
    end;
  end;

  Client_Subject.First;
  while not Client_Subject.Eof do begin
    if (not Client_Subject.FieldByName('subject_weight').IsNull ) AND (Client_Subject.FieldByName('subject_ed_izm_name').IsNull) then begin
      Application.MessageBox('При заполненном количестве, необходимо указать единицу измерения.'+ #13#10 + 'Счет не сохранен!', 'Внимание', MB_OK);
      ModalResult := mrNone;
      exit;
    end;
    Client_Subject.Next;
  end;

  Screen.Cursor := crHourglass;

  SP := TADOStoredProc.Create(nil);
  SP.Connection := Fconnect;
  SP.ProcedureName := 'sp_invoice_modify';
  SP.Parameters.Refresh;

  SP.Parameters.ParamByName('@type_action'      ).Value := Ftype_action;
  SP.Parameters.ParamByName('@invoice_id'       ).Value := Finvoice_id;
  if Query_Provider.Locate('invoice_header_id', cxLookupComboBox2.EditValue, []) then
    SP.Parameters.ParamByName('@invoice_header_id').Value := cxLookupComboBox2.EditValue
  else
  SP.Parameters.ParamByName('@invoice_header_id').Value := null;
  SP.Parameters.ParamByName('@invoice_cod'      ).Value := cxTextEdit1.EditValue;
  SP.Parameters.ParamByName('@contract_id'      ).Value := cxLookupComboBox1.EditValue;
  SP.Parameters.ParamByName('@invoice_date'     ).Value := StrToDate(FormatDateTime('dd.mm.yyyy', cxDateEdit1.Date));
  SP.Parameters.ParamByName('@plan_pay_date'     ).Value := cxDateEdit2.EditValue;
  SP.Parameters.ParamByName('@invoice_sum'      ).Value := cxCurrencyEdit3.EditValue;
  SP.Parameters.ParamByName('@currency_id'      ).Value := cxLookupComboBox4.EditValue;
  SP.Parameters.ParamByName('@set_hand_change'  ).Value := cxCheckBox2.Checked;
  SP.Parameters.ParamByName('@nds_in_sum'       ).Value := cxCheckBox1.Checked;
  SP.Parameters.ParamByName('@string_bottom_id' ).Value := iif(cxCheckBox4.Checked, cxLookupComboBox3.EditValue, null);
  SP.Parameters.ParamByName('@firm_director_id' ).Value := iif(Ffirm_director_id <> -9, Ffirm_director_id, null);
  SP.Parameters.ParamByName('@firm_buh_id'      ).Value := iif(Ffirm_buh_id <> -9, Ffirm_buh_id, null);
  SP.Parameters.ParamByName('@type_invoice'     ).Value := Ftype_invoice;
  SP.Parameters.ParamByName('@comment'          ).Value := cxMemo1.Text;
  SP.Parameters.ParamByName('@print_form_id'    ).Value := cxLookupComboBox5.EditValue;
  SP.Parameters.ParamByName('@xml_subject'      ).Value := DataXMLToSQL(Client_Subject);
  SP.Parameters.ParamByName('@bank_firm_contact_id').Value := iif(cxDBMemo1.Tag <> -9, cxDBMemo1.Tag, null);
  SP.Parameters.ParamByName('@bargain_id'       ).Value := iif(Fbargain_id <> -9, Fbargain_id, null);
  SP.Parameters.ParamByName('@invoice_status_id').Value := cxLookupComboBox6.EditValue;
  SP.Parameters.ParamByName('@set_print_note'   ).Value := cxCheckBox5.Checked;

  try
    SP.ExecProc;
    Finvoice_id := SP.Parameters.ParamByName('@invoice_id').Value;
    if Finvoice_id = -9 then begin
      Application.MessageBox(PChar('Ошибка при добавлении нового счёта.'+#13+'Вероятно счёт с таким номером уже существует'), 'ВНИМАНИЕ', MB_OK);
      Screen.Cursor := crDefault;
      ModalResult := mrNone;
      Exit;
    end;

    if Ftype_action = 0 then Ftype_action := 4;
    if Ftype_action = 1 then Ftype_action := 5;

    SP.Close;
    SP.Parameters.Refresh;
    SP.Parameters.ParamByName('@type_action'      ).Value := Ftype_action;
    SP.Parameters.ParamByName('@invoice_id'       ).Value := Finvoice_id;
     //сохранение файла
    tmp_path := '-9';
    fmClientInvoice.PrintInvoice(Finvoice_id, tmp_path, Fconnect);

    AStream := TMemoryStream.Create;
    AStream.LoadFromFile(tmp_path);
    s := TStringStream.Create('');
    AStream.Seek(0,0);
    s.CopyFrom(AStream, AStream.Size);
    files_data := LZHPack(s.Bytes, s.Size);
    s1 := TStringStream.Create(files_data);

    SP.Parameters.ParamByName('@invoice_image').LoadFromStream(s1,ftBlob);
    SP.ExecProc;
  except on E: Exception do
    begin
      SP.Free;
      Screen.Cursor :=  crDefault;
      ModalResult := mrNone;
      Application.MessageBox(PChar(E.Message),'ВНИМАНИЕ!!!' , MB_OK + MB_ICONERROR);
      Exit;
    end;
  end;

  SP.Free;
  Screen.Cursor := crDefault;
end;

procedure TfmClientInvoiceAdd.cxButtonEdit1PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
var
  Query : TADOQuery;
begin
  case AButtonIndex of
    0 : begin
          if Query_Contract.Active then begin
            Query := TADOQuery.Create(nil);
            Query.Connection := Query_Contract.Connection;

            Query.SQL.Add('SELECT firm_contact_id, firm_contact_name, firm_contact_comment, type_contact_name, date_begin, date_end');
            Query.SQL.Add('FROM view_firm_contact');
            Query.SQL.Add('WHERE firm_id = ' + Query_Contract.FieldByName('firm_self').AsString);
            Query.SQL.Add('AND type_contact_cod BETWEEN ''20'' AND ''99''');
            Query.SQL.Add('AND ' + DateToSQL(cxDateEdit1.Date) + ' BETWEEN date_begin AND ISNULL(date_end, ' + DateToSQL(cxDateEdit1.Date) + ')');
            Query.SQL.Add('ORDER BY set_default DESC, type_contact_cod, firm_contact_name');
            Query.Open;

            fmFilter := TfmFilter.Create(0, Query, 'firm_contact_id', 'type_contact_name', 'firm_contact_name');
            fmFilter._SetFirmContact4ActsSetting := True;
            if fmFilter.ShowModal = mrOk then begin
              Query.Locate('firm_contact_id', fmFilter.GetId, []);
              case TComponent(Sender).Tag of
                0 : begin
                      Ffirm_director_id := Query.FieldByName('firm_contact_id').AsInteger;
                      cxButtonEdit1.Text := Query.FieldByName('firm_contact_name').AsString;
                      if Query.FieldByName('firm_contact_comment').AsString <> '' then
                        cxButtonEdit1.Text := cxButtonEdit1.Text + ' (' + Query.FieldByName('firm_contact_comment').AsString + ')'
                    end;
                1 : begin
                      Ffirm_buh_id := Query.FieldByName('firm_contact_id').AsInteger;
                      cxButtonEdit2.Text := Query.FieldByName('firm_contact_name').AsString;
                      if Query.FieldByName('firm_contact_comment').AsString <> '' then
                        cxButtonEdit2.Text := cxButtonEdit2.Text+ ' (' + Query.FieldByName('firm_contact_comment').AsString + ')';
                    end;
              end;
            end;

            Query.Free;
          end;
        end;
    1 : begin
          case TComponent(Sender).Tag of
            0 : begin
                  Ffirm_director_id := -9;
                  cxButtonEdit1.EditValue := null;
                end;
            1 : begin
                  Ffirm_buh_id := -9;
                  cxButtonEdit2.EditValue := null;
                end;
          end;
        end;
  end;
end;

procedure TfmClientInvoiceAdd.cxCheckBox1Click(Sender: TObject);
var book: TBookmark;
begin
    book := Client_Subject.GetBookmark;
    Client_Subject.First;
    while not Client_Subject.Eof do begin
      Client_Subject.Edit;
      Client_Subject.Post;

      Client_Subject.Next;
    end;
    Client_Subject.GotoBookmark(book);
    Client_Subject.FreeBookmark(book);

    if cxCheckBox1.Checked then  begin
      cxGrid1DBBandedTableView1subject_rate.Caption := 'Ставка (c НДС)';
    end else begin
      cxGrid1DBBandedTableView1subject_rate.Caption := 'Ставка (без НДС)';
    end;
end;

procedure TfmClientInvoiceAdd.cxCheckBox2PropertiesChange(Sender: TObject);
var Q : TADOQuery;
begin
  if cxCheckBox2.Checked then begin
    cxTextEdit1.Properties.ReadOnly := False;
    cxTextEdit1.Style.Color := clWindow;
    cxTextEdit1.EditValue := '-------';
  end else begin
    cxTextEdit1.Properties.ReadOnly := True;
    cxTextEdit1.Style.Color := clBtnFace;

    Q := TADOQuery.Create(nil);
    Q.Connection := Fconnect;
    Q.SQL.Text := 'SELECT dbo.GetInvoiceCod(' + IntToStr(cxLookupComboBox2.EditValue) + ', ''' + FormatDateTime('yyyymmdd', cxDateEdit1.EditValue) + ''') as invoice_cod';
    Q.Open;
    cxTextEdit1.EditValue := Q.FieldByName('invoice_cod').AsString;
    Q.Free;
  end;

end;


procedure TfmClientInvoiceAdd.cxCheckBox3PropertiesChange(Sender: TObject);
begin
  cxLookupComboBox6.Enabled := cxCheckBox3.Checked;

  if cxCheckBox3.Checked then begin
    cxLookupComboBox6.EditValue := Query_Status.FieldByName('inf_obj_id').Value;
  end else begin
    cxLookupComboBox6.EditValue := null;
  end;

end;

procedure TfmClientInvoiceAdd.cxCheckBox4PropertiesEditValueChanged(Sender: TObject);
begin
  if cxCheckBox4.Checked then begin
    cxLookupComboBox3.Style.Color := clWindow;
    cxLookupComboBox3.Properties.ReadOnly := False;
    cxLookupComboBox3.Properties.ListSource := DS_String;
  end else begin
    cxLookupComboBox3.Style.Color := clBtnFace;
    cxLookupComboBox3.Properties.ReadOnly := True;
    cxLookupComboBox3.Properties.ListSource := nil;
  end;
end;

procedure TfmClientInvoiceAdd.SetStrAddId(str_bargain_add_id: string);
var Q : TADOQuery;
begin
  Q := TADOQuery.Create(nil);
  Q.Connection := fmMain.Lis;

  Q.SQL.Clear;
  Q.SQL.Add('SELECT DISTINCT contract_id FROM view_shp_bargain_add WHERE bargain_add_id in (' + str_bargain_add_id + ')');
  Q.Open;
  if Q.RecordCount > 1 then begin
    Application.MessageBox('У услуг разные договоры!', 'Внимание!', MB_ICONSTOP or MB_OK);
    Q.Free;
    Exit;
  end;

  Q.SQL.Clear;
  Q.SQL.Add('SELECT DISTINCT bargain_id FROM view_shp_bargain_add WHERE bargain_add_id in (' + str_bargain_add_id + ')');
  Q.Open;
  if Q.RecordCount > 1 then begin
    Application.MessageBox('Услуг находятся в разных сделках!', 'Внимание!', MB_ICONSTOP or MB_OK);
    Q.Free;
    Exit;
  end;

  Q.SQL.Clear;
  Q.SQL.Add('SELECT DISTINCT currency_id FROM view_shp_bargain_add WHERE bargain_add_id in (' + str_bargain_add_id + ')');
  Q.Open;
  if Q.RecordCount > 1 then begin
    Application.MessageBox('У услуг разные валюты!', 'Внимание!', MB_ICONSTOP or MB_OK);
    Q.Free;
    Exit;
  end;

  Q.SQL.Clear;
  Q.SQL.Add('SELECT * FROM view_shp_bargain_add WHERE bargain_add_id in (' + str_bargain_add_id + ')');
  Q.Open;

  Fbargain_id := Q.FieldByName('bargain_id').AsInteger;

  cxLookupComboBox4.EditValue := Q.FieldByName('currency_id').Value;
  cxDateEdit1.Properties.OnEditValueChanged := nil;
  cxDateEdit1.Date := Date;
  cxDateEdit1.Properties.OnEditValueChanged := cxLookupComboBox2PropertiesEditValueChanged;
  cxLookupComboBox1.EditValue := Q.FieldByName('contract_id').Value;

  cxLookupComboBox2PropertiesEditValueChanged(nil);

  Q.First;
  Client_Subject.DisableControls;
  while not Q.Eof do begin
    Client_Subject.Append;
    Client_Subject['subject_invoice']       := Q.FieldByName('acts_note').Value;
    Client_Subject['subject_rate']          := Q.FieldByName('add_rate').Value;
    Client_Subject['subject_ed_izm_name']   := Q.FieldByName('ed_izm_name').Value;
    Client_Subject['subject_weight']        := Q.FieldByName('add_count').Value;
    Client_Subject['subject_nds_id']        := Q.FieldByName('type_nds_id').Value;
    Client_Subject['subject_set']           := False;
    Client_Subject['subject_sum']           := Q.FieldByName('add_notNDS_sum').Value;
    Client_Subject['subject_sum_nds']       := Q.FieldByName('add_NDS_sum').Value;
    Client_Subject['subject_sum_total']     := Q.FieldByName('add_sum').Value;
    Client_Subject['subject_service_id']    := Q.FieldByName('budget_id').Value;
    Client_Subject['subject_service_name']  := Q.FieldByName('budget_name').Value;
    Client_Subject['subject_service_budget']:= Q.FieldByName('budget_parent_name').Value;

    Client_Subject.Post;
    Q.Next;
  end;
  Client_Subject.EnableControls;

  Q.Free;
end;

end.
