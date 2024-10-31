unit ActAdd;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Default,
  Dialogs, StdCtrls, ImgList, Buttons, ExtCtrls, DB, ADODB, Menus, DBClient, ImageList,
  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit,
  cxDropDownEdit, cxCalendar, cxTextEdit, cxButtons, cxMaskEdit, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, cxButtonEdit, cxCurrencyEdit,
  cxPropertiesStore, cxMemo, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee,
  dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans,
  dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin,
  dxSkinMetropolis, dxSkinMetropolisDark, dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue,
  dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue,
  dxSkinOffice2010Silver, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinPumpkin,
  dxSkinSeven, dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinTheAsphaltWorld, dxSkinsDefaultPainters, dxSkinValentine, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue, ComCtrls, dxCore, cxDateUtils, cxClasses, dxSkinOffice2016Colorful, dxSkinOffice2016Dark, dxSkinVisualStudio2013Blue,
  dxSkinVisualStudio2013Dark, dxSkinVisualStudio2013Light, cxStyles, dxSkinscxPCPainter, cxCustomData, cxFilter, cxData, cxDataStorage,
  cxNavigator, cxDBData, dxSkinsdxBarPainter, dxBar, cxGridLevel, cxGridCustomTableView, cxGridTableView, cxGridBandedTableView,
  cxGridDBBandedTableView, cxGridCustomView, cxGrid, cxImageList,
  cxDataControllerConditionalFormattingRulesManagerDialog, dxSkinTheBezier, dxDateRanges, dxSkinOffice2019Colorful, dxScrollbarAnnotations;

type
  TfmActAdd = class(TForm)
    Panel2: TPanel;
    ADOConnActs: TADOConnection;
    Panel4: TPanel;
    Label40: TLabel;
    Label80: TLabel;
    Label83: TLabel;
    cxLookupComboBox16: TcxLookupComboBox;
    cxButton1: TcxButton;
    cxButton2: TcxButton;
    cxButton4: TcxButton;
    cxTextEdit6: TcxTextEdit;
    cxDateEdit2: TcxDateEdit;
    Query_Contract: TADOQuery;
    DS_Contract: TDataSource;
    Panel26: TPanel;
    Label43: TLabel;
    cxButtonEdit1: TcxButtonEdit;
    cxPropertiesStore1: TcxPropertiesStore;
    Panel1: TPanel;
    Label2: TLabel;
    cxDateEdit1: TcxDateEdit;
    cxDateEdit3: TcxDateEdit;
    cxDateEdit4: TcxDateEdit;
    Label1: TLabel;
    Label3: TLabel;
    Panel3: TPanel;
    Label5: TLabel;
    Query_Currency: TADOQuery;
    DS_Currency: TDataSource;
    cxLookupComboBox2: TcxLookupComboBox;
    cxCurrencyEdit1: TcxCurrencyEdit;
    Label7: TLabel;
    cxTextEdit4: TcxTextEdit;
    Label6: TLabel;
    GroupBox1: TGroupBox;
    cxMemo1: TcxMemo;
    cxLookupComboBox1: TcxLookupComboBox;
    Query_TypeActs: TADOQuery;
    DS_TypeActs: TDataSource;
    OpenDialog1: TOpenDialog;
    Panel5: TPanel;
    ClientDS_Add: TClientDataSet;
    ClientDS_Addid: TAutoIncField;
    ClientDS_Addcontract_id: TIntegerField;
    ClientDS_Addcontract_cod: TStringField;
    ClientDS_Addcontract_type: TIntegerField;
    ClientDS_Addfirm_self_name: TStringField;
    ClientDS_Addfirm_customer_name: TStringField;
    ClientDS_Addbargain_add_id: TIntegerField;
    ClientDS_Addagent_id: TIntegerField;
    ClientDS_Addagent_name: TStringField;
    ClientDS_Addcurrency_id: TIntegerField;
    ClientDS_Addbrief_name: TStringField;
    ClientDS_Addtype_nds_id: TIntegerField;
    ClientDS_Addtype_nds_name: TStringField;
    ClientDS_Addset_include_nds: TBooleanField;
    ClientDS_Addadd_count: TCurrencyField;
    ClientDS_Addadd_rate: TCurrencyField;
    ClientDS_Added_izm_id: TIntegerField;
    ClientDS_Added_izm_name: TStringField;
    ClientDS_Addservice_kind_id: TIntegerField;
    ClientDS_Addservice_kind_name: TStringField;
    ClientDS_Addservice_kind_name_full: TStringField;
    ClientDS_Addservice_kind_rep_id: TIntegerField;
    ClientDS_Addservice_kind_rep_name: TStringField;
    ClientDS_Addservice_kind_rep_name_full: TStringField;
    ClientDS_Addbudget_name: TStringField;
    ClientDS_Addbudget_cod: TStringField;
    ClientDS_Addbrief_name_alt: TStringField;
    ClientDS_Addsubdivision_id: TIntegerField;
    ClientDS_Addsubdivision_name: TStringField;
    ClientDS_Addadd_note: TStringField;
    ClientDS_Addbudget_id: TIntegerField;
    ClientDS_Addbudget_parent_name: TStringField;
    ClientDS_Addbudget_parent_cod: TStringField;
    ClientDS_Addset_hand_edit: TBooleanField;
    ClientDS_Addbalance_type: TIntegerField;
    ClientDS_Addbalance_type_name: TStringField;
    ClientDS_Addacts_note: TStringField;
    ClientDS_Addtype_exchange_id: TIntegerField;
    ClientDS_Addset_return: TBooleanField;
    ClientDS_Addset_vgo: TBooleanField;
    ClientDS_Addnote: TStringField;
    ClientDS_Addexchange_date: TDateTimeField;
    ClientDS_Addexchange_val_RUB: TCurrencyField;
    ClientDS_Addexchange_val_contract: TCurrencyField;
    ClientDS_Addexchange_val_bargain: TCurrencyField;
    ClientDS_Addadd_sum: TCurrencyField;
    ClientDS_Addadd_sum_RUB: TCurrencyField;
    ClientDS_Addadd_sum_contract: TCurrencyField;
    ClientDS_Addadd_sum_bargain: TCurrencyField;
    ClientDS_Addadd_NDS_sum: TCurrencyField;
    ClientDS_Addadd_NDS_sum_RUB: TCurrencyField;
    ClientDS_Addadd_NDS_sum_contract: TCurrencyField;
    ClientDS_Addadd_NDS_sum_bargain: TCurrencyField;
    ClientDS_Addadd_notNDS_sum: TCurrencyField;
    ClientDS_Addadd_notNDS_sum_RUB: TCurrencyField;
    ClientDS_Addadd_notNDS_sum_contract: TCurrencyField;
    ClientDS_Addadd_notNDS_sum_bargain: TCurrencyField;
    ClientDS_Addcontract_currency_id: TIntegerField;
    DS_Add: TDataSource;
    cxGrid1: TcxGrid;
    cxGrid1DBBandedTableView1: TcxGridDBBandedTableView;
    cxGrid1DBBandedTableView1id: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1contract_id: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1contract_cod: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1contract_type: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1service_type_name: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1firm_self_name: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1firm_customer_name: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1bargain_add_id: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1agent_id: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1agent_name: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1currency_id: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1brief_name: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1type_nds_id: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1type_nds_name: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1set_include_nds: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1add_count: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1add_rate: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1ed_izm_id: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1ed_izm_name: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1add_sum: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1add_NDS_sum: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1add_notNDS_sum: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1add_sum_RUB: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1add_NDS_sum_RUB: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1add_notNDS_sum_RUB: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1add_NDS_sum_bargain: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1add_notNDS_sum_bargain: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1service_kind_id: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1service_kind_name: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1service_kind_name_full: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1service_kind_rep_id: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1service_kind_rep_name: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1service_kind_rep_name_full: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1acts_note: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1service_cod: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1service_name: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1budget_name: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1budget_cod: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1service_id: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1service_type: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1set_hand_edit: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1balance_type_name: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1note: TcxGridDBBandedColumn;
    cxGrid1Level1: TcxGridLevel;
    dxBarManager1: TdxBarManager;
    dxBarPopupMenu1: TdxBarPopupMenu;
    dxBarButton1: TdxBarButton;
    dxBarSubItem1: TdxBarSubItem;
    dxBarButton2: TdxBarButton;
    dxBarButton3: TdxBarButton;
    cxImageList1: TcxImageList;
    ClientDS_Addbargain_id: TIntegerField;
    ClientDS_Addbargain_cod: TStringField;
    cxGrid1DBBandedTableView1bargain_id: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1bargain_cod: TcxGridDBBandedColumn;
    ClientDS_Addset_select: TBooleanField;
    cxGrid1DBBandedTableView1set_select: TcxGridDBBandedColumn;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1: TcxStyle;
    cxStyle2: TcxStyle;
    ClientDS_Addservice_type_name: TStringField;
    ClientDS_Addservice_type: TIntegerField;
    dxBarButton4: TdxBarButton;
    dxBarButton5: TdxBarButton;
    dxBarButton6: TdxBarButton;
    dxBarButton7: TdxBarButton;
    cxButton3: TcxButton;
    cxButton5: TcxButton;
    cxStyle_WhiteColor: TcxStyle;
    procedure cxButton1Click(Sender: TObject);
    procedure cxButton4Click(Sender: TObject);
    procedure cxLookupComboBox16PropertiesEditValueChanged(Sender: TObject);
    procedure cxButtonEdit1PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure dxBarButton1Click(Sender: TObject);
    procedure dxBarButton2Click(Sender: TObject);
    procedure dxBarButton3Click(Sender: TObject);
    procedure cxGrid1DBBandedTableView1FilterOnChanged(Sender: TObject);
    procedure cxGrid1DBBandedTableView1CustomDrawCell(Sender: TcxCustomGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
    procedure cxGrid1DBBandedTableView1CustomDrawColumnHeader(Sender: TcxGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxGridColumnHeaderViewInfo; var ADone: Boolean);
    procedure cxGrid1DBBandedTableView1FocusedItemChanged(Sender: TcxCustomGridTableView; APrevFocusedItem, AFocusedItem: TcxCustomGridTableItem);
    procedure cxGrid1DBBandedTableView1KeyPress(Sender: TObject; var Key: Char);
    procedure cxGrid1DBBandedTableView1EditValueChanged(Sender: TcxCustomGridTableView; AItem: TcxCustomGridTableItem);
    procedure cxGrid1DBBandedTableView1TcxGridDBDataControllerTcxDataSummaryFooterSummaryItems18GetText(Sender: TcxDataSummaryItem; const AValue: Variant; AIsFooter: Boolean;  var AText: string);
    procedure dxBarButton4Click(Sender: TObject);
    procedure cxButton3Click(Sender: TObject);
  private
    Facts_id        : integer;
    Ftype_action    : integer;
    Fbargain_id     : integer;
    Fset_select_add : boolean;
    procedure SetStrBargainAddId(str_bargain_add_id: string);
    procedure CalcSum();
  public
    constructor Create(AOwner: TApplication; usr_pwd: PUser_pwd; acts_id, type_action: integer; set_readonly : boolean);
  published
    property _GetActsId   : integer read Facts_id;
    property _SetBargainId: integer write Fbargain_id;
    property _SetStrBargainAddId : string write SetStrBargainAddId;
  end;

function CreateWndActAdd(AppHand: THandle; usr_pwd: PUser_pwd; acts_id: integer; type_action: integer; set_readonly: boolean; bargain_id: integer) : Variant; export;
function CreateWndActShpBargainAdd(AppHand: THandle; usr_pwd: PUser_pwd; acts_id: integer; type_action: integer; set_readonly: boolean; str_bargain_add_id: string) : Variant; export;

var
  fmActAdd: TfmActAdd;

implementation
  uses Raznoe, DateUtils;
{$R *.dfm}


function CreateWndActAdd(AppHand: THandle; usr_pwd: PUser_pwd; acts_id: integer; type_action: integer; set_readonly: boolean; bargain_id: integer) : Variant; export;
begin
  Application.Handle := AppHand;
  try
    fmActAdd := TfmActAdd.Create(Application, usr_pwd, acts_id, type_action, set_readonly);
    fmActAdd._SetBargainId := bargain_id;

    if fmActAdd.ShowModal = mrOk then
      result := VarArrayOf([fmActAdd._GetActsId])
    else
      result := VarArrayOf([-9]);
  finally
    fmActAdd.Free;
  end;
end;

function CreateWndActShpBargainAdd(AppHand: THandle; usr_pwd: PUser_pwd; acts_id: integer; type_action: integer; set_readonly: boolean; str_bargain_add_id: string) : Variant; export;
begin
  Application.Handle := AppHand;
  try
    fmActAdd := TfmActAdd.Create(Application, usr_pwd, acts_id, type_action, set_readonly);
    fmActAdd._SetStrBargainAddId := str_bargain_add_id;

    if fmActAdd.ShowModal = mrOk then
      result := VarArrayOf([fmActAdd._GetActsId])
    else
      result := VarArrayOf([-9]);
  finally
    fmActAdd.Free;
  end;
end;



constructor TfmActAdd.Create(AOwner: TApplication; usr_pwd: PUser_pwd; acts_id, type_action: integer; set_readonly : boolean);
var Q : TADOQuery;
    str_bargain_add_id : string;
begin
  inherited Create(AOwner);
  Screen.Cursor := crHourglass;

  Fset_select_add := False;
  Facts_id := acts_id;
  Ftype_action := type_action;
  Fbargain_id := -9;
  str_bargain_add_id := '';
  ADOConnActs.Connected := False;
  ADOConnActs.ConnectionString := 'Persist Security Info=True;Provider=SQLOLEDB.1;User ID=' + usr_pwd^.user_name + ';Password=' + usr_pwd^.user_pass + ';Initial Catalog=' + usr_pwd^.catalog + ';Data Source=' + usr_pwd^.server + ';';
  ADOConnActs.Connected := True;

  Query_Contract.Parameters.ParamByName('date_end').Value := Date;
  Query_Contract.Parameters.ParamByName('type_contract').Value := 0;
  Query_Contract.Open;

  Query_Currency.Open;
  Query_TypeActs.Open;

  cxButton3.Visible := not set_readonly;

  // -------- добавление нового ------------
  if (Ftype_action = 0) AND (Facts_id = -9) then begin
    cxLookupComboBox16.EditValue := Query_Contract.FieldByName('contract_id').Value;
    cxLookupComboBox2.EditValue  := Query_Currency.FieldByName('currency_id').Value;
    cxLookupComboBox1.EditValue  := Query_TypeActs.FieldByName('inf_obj_id').Value;

    cxDateEdit1.EditValue := Date;
    cxDateEdit3.EditValue := IncMonth(Date, -1) - DayOfTheMonth(IncMonth(Date, -1)) + 1;
    cxDateEdit4.EditValue := Date - DayOfTheMonth(Date);
  end;

  // -------- если обновление ----------------
  if (Ftype_action = 1) AND (Facts_id <> -9) then begin
    Q := TADOQuery.Create(nil);
    Q.Connection := ADOConnActs;
    Q.SQL.Add('SELECT * FROM view_acts WHERE acts_id=' + IntToStr(Facts_id));
    Q.Open;

    cxLookupComboBox16.EditValue := Q.FieldByName('contract_id').Value;
    cxLookupComboBox16.Properties.ReadOnly := True;
    cxLookupComboBox16.Style.Color := clBtnFace;

    cxButtonEdit1.EditValue := Q.FieldByName('acts_file_name').Value;

    cxLookupComboBox1.EditValue  := Q.FieldByName('acts_type_id').Value;
    cxLookupComboBox1.Properties.ReadOnly := True;
    cxLookupComboBox1.Style.Color := clBtnFace;

    cxTextEdit4.EditValue := Q.FieldByName('acts_cod').Value;
    cxDateEdit1.EditValue := Q.FieldByName('acts_date').Value;
    cxDateEdit3.EditValue := Q.FieldByName('date_begin').Value;
    cxDateEdit4.EditValue := Q.FieldByName('date_end').Value;
    cxDateEdit3.Properties.ReadOnly := True;
    cxDateEdit3.Style.Color := clBtnFace;
    cxDateEdit4.Properties.ReadOnly := True;
    cxDateEdit4.Style.Color := clBtnFace;

    cxCurrencyEdit1.EditValue := Q.FieldByName('acts_sum').Value;
    cxLookupComboBox2.EditValue  := Q.FieldByName('acts_currency_id').Value;
    cxMemo1.Text := Q.FieldByName('acts_comment').AsString;

    Q.SQL.Clear;
    Q.SQL.Add('SELECT * FROM acts_bargain WHERE acts_id = ' + IntToStr(Facts_id) + ' ORDER BY bargain_id');
    Q.Open;
    if Q.RecordCount > 0 then begin
      Fbargain_id := Q.FieldByName('bargain_id').AsInteger;
    end else begin
      Fbargain_id := -9;
    end;

    Q.SQL.Clear;
    Q.SQL.Add('SELECT	acts_bargain.*');
    Q.SQL.Add('FROM	  acts_bargain');
    Q.SQL.Add('       inner join shp_bargain_add on acts_bargain.bargain_id = shp_bargain_add.bargain_add_id');
    Q.SQL.Add('WHERE	acts_id = ' + IntToStr(Facts_id));
    Q.Open;
    if Q.RecordCount > 0 then begin
      Fbargain_id := -9;

      str_bargain_add_id := '';
      while not Q.Eof do begin
        str_bargain_add_id := str_bargain_add_id + ', ' + IntToStr(Q.FieldByName('bargain_id').AsInteger);
        Q.Next;
      end;
      Delete(str_bargain_add_id, 1, 2);

      _SetStrBargainAddId := str_bargain_add_id;
    end;

    Q.Free;
  end;

  Screen.Cursor := crDefault;
end;

procedure TfmActAdd.cxButton1Click(Sender: TObject);
begin
  Screen.Cursor := -11;
  Query_Contract.Close;
  Query_Contract.Parameters.ParamByName('type_contract').Value := TcxButton(Sender).Tag;
  if Query_Contract.Parameters.ParamByName('date_end').Value = null then
    Query_Contract.Parameters.ParamByName('date_end').Value := Now;
  Query_Contract.Open;

  cxLookupComboBox16.EditValue := Query_Contract['contract_id'];
  cxLookupComboBox16PropertiesEditValueChanged(cxLookupComboBox16);

  Screen.Cursor := 0;
end;

procedure TfmActAdd.cxButton3Click(Sender: TObject);
var    SP : TADOStoredProc;
     add_sum : Currency;
  acts_type_cod : string;
     str_bargain_add_id : string;
begin
    if (Ftype_action = 0) AND (OpenDialog1.FileName = '') then begin
      Application.MessageBox('Не указан файл.', 'Внимание', MB_OK);
      ModalResult := mrNone;
      exit;
    end;

    SP := TADOStoredProc.Create(nil);
    SP.Connection := ADOConnActs;
    SP.ProcedureName := 'sp_acts_modify';
    SP.Parameters.Refresh;

    Query_TypeActs.Locate('inf_obj_id', cxLookupComboBox1.EditValue, []);
    acts_type_cod := Query_TypeActs.FieldByName('inf_obj_cod').AsString;

    // Сохранение акта
    SP.Parameters.ParamByName('@type_action').Value       := Ftype_action;
    SP.Parameters.ParamByName('@acts_id').Value           := iif(Facts_id=-9, NULL, Facts_id);
    SP.Parameters.ParamByName('@acts_cod').Value          := cxTextEdit4.EditValue;
    SP.Parameters.ParamByName('@acts_type_cod').Value     := acts_type_cod;
    SP.Parameters.ParamByName('@acts_date').Value         := cxDateEdit1.EditValue;
    SP.Parameters.ParamByName('@contract_id').Value       := cxLookupComboBox16.EditValue;
    SP.Parameters.ParamByName('@date_begin').Value        := cxDateEdit3.EditValue;
    SP.Parameters.ParamByName('@date_end').Value          := cxDateEdit4.EditValue;

    if Fset_select_add = True then begin
      ClientDS_Add.First;
      str_bargain_add_id := '';
      add_sum := 0;
      while not ClientDS_Add.Eof do begin
        if ClientDS_Add.FieldByName('set_select').AsBoolean = True then begin
          str_bargain_add_id := str_bargain_add_id + ', ' + IntToStr(ClientDS_Add.FieldByName('bargain_add_id').AsInteger);
          add_sum := add_sum + ClientDS_Add.FieldByName('add_sum').AsCurrency;
        end;
        ClientDS_Add.Next;
      end;
      Delete(str_bargain_add_id, 1, 2);
      SP.Parameters.ParamByName('@str_bargain_id').Value := str_bargain_add_id;
      SP.Parameters.ParamByName('@acts_sum'      ).Value := add_sum;
    end else begin
      SP.Parameters.ParamByName('@acts_sum').Value       := cxCurrencyEdit1.EditValue;
      if Fbargain_id <> -9 then begin
        SP.Parameters.ParamByName('@str_bargain_id').Value := Fbargain_id;
      end;
    end;


    SP.Parameters.ParamByName('@acts_currency_id').Value  := cxLookupComboBox2.EditValue;

    SP.Parameters.ParamByName('@acts_comment').Value      := cxMemo1.Text;

    // ----- при обновлении документа файл передаётся пустым, если он не изменялся --------
    if (OpenDialog1.FileName <> '') then begin
      SP.Parameters.ParamByName('@acts_image').LoadFromFile(OpenDialog1.FileName, ftBlob);
      SP.Parameters.ParamByName('@acts_file_name').Value := ExtractFileName(OpenDialog1.FileName);
    end else begin
      SP.Parameters.ParamByName('@acts_image').Value := NULL;
      SP.Parameters.ParamByName('@acts_file_name').Value := NULL;
    end;

    //---------------------

    try
      SP.ExecProc;
      Facts_id := SP.Parameters.ParamByName('@acts_id').Value;

      SP.Close;
    except
    end;

end;

procedure TfmActAdd.cxButton4Click(Sender: TObject);
begin
  Screen.Cursor := -11;

  Query_Contract.Close;
  if cxButton4.SpeedButtonOptions.Down then begin
    cxButton4.SpeedButtonOptions.GroupIndex := 0;
    Query_Contract.Parameters.ParamByName('date_end').Value := Date;
  end else begin
    cxButton4.SpeedButtonOptions.GroupIndex := 100;
    cxButton4.SpeedButtonOptions.Down := True;
    Query_Contract.Parameters.ParamByName('date_end').Value := 1;
  end;
  Query_Contract.Open;

  cxLookupComboBox16.EditValue := Query_Contract['contract_id'];
  cxLookupComboBox16PropertiesEditValueChanged(cxLookupComboBox16);

  Screen.Cursor := 0;
end;

procedure TfmActAdd.cxButtonEdit1PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  case AButtonIndex of
    0 : begin
        OpenDialog1.Filter := 'Все файлы|*.*';
        OpenDialog1.DefaultExt := '';
        if OpenDialog1.Execute then begin
          cxButtonEdit1.EditValue := OpenDialog1.FileName;
          cxMemo1.Text := ExtractFileName(OpenDialog1.FileName) + #13#10 + cxMemo1.Text
        end;
        end;
    1 : cxButtonEdit1.EditValue := '';
  end;

end;

procedure TfmActAdd.cxGrid1DBBandedTableView1CustomDrawCell(Sender: TcxCustomGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
  if (AViewInfo.GridRecord.Values[cxGrid1DBBandedTableView1service_type.Index] = 0) then begin
    if (AViewInfo.Item.ID = cxGrid1DBBandedTableView1service_type_name.Index) then begin
      ACanvas.Font.Color := clRed;
      ACanvas.Font.Style := [fsBold];
    end;

    if (AViewInfo.Item.ID = cxGrid1DBBandedTableView1add_sum.Index) OR
       (AViewInfo.Item.ID = cxGrid1DBBandedTableView1add_NDS_sum.Index) OR
       (AViewInfo.Item.ID = cxGrid1DBBandedTableView1add_notNDS_sum.Index) OR
       (AViewInfo.Item.ID = cxGrid1DBBandedTableView1add_NDS_sum_bargain.Index) OR
       (AViewInfo.Item.ID = cxGrid1DBBandedTableView1add_notNDS_sum_bargain.Index) OR
       (AViewInfo.Item.ID = cxGrid1DBBandedTableView1add_sum_RUB.Index) OR
       (AViewInfo.Item.ID = cxGrid1DBBandedTableView1add_NDS_sum_RUB.Index) OR
       (AViewInfo.Item.ID = cxGrid1DBBandedTableView1add_notNDS_sum_RUB.Index)
    then begin
      ACanvas.Font.Color := clRed;
    end;

  end;

  if (AViewInfo.GridRecord.Values[cxGrid1DBBandedTableView1service_type.Index] = 1) then begin
    if (AViewInfo.Item.ID = cxGrid1DBBandedTableView1service_type_name.Index) then begin
      ACanvas.Font.Color := clGreen;
      ACanvas.Font.Style := [fsBold];
    end;

    if (AViewInfo.Item.ID = cxGrid1DBBandedTableView1add_sum.Index) OR
       (AViewInfo.Item.ID = cxGrid1DBBandedTableView1add_NDS_sum.Index) OR
       (AViewInfo.Item.ID = cxGrid1DBBandedTableView1add_notNDS_sum.Index) OR
       (AViewInfo.Item.ID = cxGrid1DBBandedTableView1add_NDS_sum_bargain.Index) OR
       (AViewInfo.Item.ID = cxGrid1DBBandedTableView1add_notNDS_sum_bargain.Index) OR
       (AViewInfo.Item.ID = cxGrid1DBBandedTableView1add_sum_RUB.Index) OR
       (AViewInfo.Item.ID = cxGrid1DBBandedTableView1add_NDS_sum_RUB.Index) OR
       (AViewInfo.Item.ID = cxGrid1DBBandedTableView1add_notNDS_sum_RUB.Index)
    then begin
      ACanvas.Font.Color := clGreen;
    end;

  end;

  if (AViewInfo.GridRecord.Values[cxGrid1DBBandedTableView1set_select.Index] = True) then begin
    ACanvas.Font.Style := [fsBold];
  end else begin
    ACanvas.Font.Style := [];
    ACanvas.Font.Color := clGray;
  end;


	if AViewInfo.GridRecord.Selected or AViewInfo.GridRecord.Focused then begin
		ACanvas.Brush.Color := clNavy;
		ACanvas.Font.Color := clWhite;
		if AViewInfo.Focused then ACanvas.Brush.Color := clBlue;
	end;
end;

procedure TfmActAdd.cxGrid1DBBandedTableView1CustomDrawColumnHeader(Sender: TcxGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxGridColumnHeaderViewInfo; var ADone: Boolean);
begin
  DrawcxGridColumnOnFocused(Sender, ACanvas, AViewInfo);
end;

procedure TfmActAdd.cxGrid1DBBandedTableView1EditValueChanged(Sender: TcxCustomGridTableView; AItem: TcxCustomGridTableItem);
begin
  if (ClientDS_Add.State = dsEdit) OR (ClientDS_Add.State = dsInsert) then begin
    ClientDS_Add.Post;
    CalcSum;
  end;
end;

procedure TfmActAdd.cxGrid1DBBandedTableView1FilterOnChanged(Sender: TObject);
begin
	DrawcxGridColumnOnFiltered(Sender);
end;

procedure TfmActAdd.cxGrid1DBBandedTableView1FocusedItemChanged(Sender: TcxCustomGridTableView; APrevFocusedItem, AFocusedItem: TcxCustomGridTableItem);
begin
	Sender.Painter.Invalidate;
end;

procedure TfmActAdd.cxGrid1DBBandedTableView1KeyPress(Sender: TObject; var Key: Char);
begin
  FilterColumnGridOnKeyPress(TcxGridDBBandedTableView(TcxGridSite(Sender).GridView), Key);
end;

procedure TfmActAdd.cxGrid1DBBandedTableView1TcxGridDBDataControllerTcxDataSummaryFooterSummaryItems18GetText(
  Sender: TcxDataSummaryItem; const AValue: Variant; AIsFooter: Boolean;
  var AText: string);
begin
  AText := IntToStr(StrToIntDef(AText,0)*(-1));
end;

procedure TfmActAdd.cxLookupComboBox16PropertiesEditValueChanged(Sender: TObject);
begin
  if Query_Contract.Locate('contract_id', cxLookupComboBox16.EditValue, []) then begin
    cxTextEdit6.EditValue := Query_Contract.FieldByName('contract_cod').Value;
    cxDateEdit2.EditValue := Query_Contract.FieldByName('date_begin').Value;
  end;
end;

procedure TfmActAdd.dxBarButton1Click(Sender: TObject);
begin
	PrintcxGrid(cxGrid1DBBandedTableView1);
end;

procedure TfmActAdd.dxBarButton2Click(Sender: TObject);
begin
	SetdxDBGridColumns(cxGrid1DBBandedTableView1);
end;

procedure TfmActAdd.dxBarButton3Click(Sender: TObject);
begin
	cxGrid1DBBandedTableView1.OptionsView.GroupByBox := not cxGrid1DBBandedTableView1.OptionsView.GroupByBox;
end;

procedure TfmActAdd.dxBarButton4Click(Sender: TObject);
var i : integer;
begin
  ClientDS_Add.DisableControls;

  if TComponent(Sender).Tag <= 1 then begin // Выделенные
    for i := 0 to cxGrid1DBBandedTableView1.Controller.SelectedRecordCount - 1 do begin
      if ClientDS_Add.Locate('bargain_add_id', cxGrid1DBBandedTableView1.Controller.SelectedRows[i].Values[cxGrid1DBBandedTableView1bargain_add_id.Index], []) then begin
        ClientDS_Add.Edit;
        ClientDS_Add.FieldByName('set_select').Value := (TComponent(Sender).Tag = 1);
        ClientDS_Add.Post;
      end;
    end;
  end else {if TComponent(Sender).Tag > 1 then} begin // Все
    ClientDS_Add.First;
    while not ClientDS_Add.Eof do begin
      ClientDS_Add.Edit;
      ClientDS_Add.FieldByName('set_select').Value := (TComponent(Sender).Tag = 3);
      ClientDS_Add.Post;
      ClientDS_Add.Next;
    end;
    ClientDS_Add.First;
  end;

  CalcSum;
  ClientDS_Add.EnableControls;
end;

procedure TfmActAdd.SetStrBargainAddId(str_bargain_add_id: string);
var    Q : TADOQuery;
    koef : integer;
begin
  Fset_select_add := True;
  Panel5.Visible  := True;
  GroupBox1.Align := alTop;
  Panel5.Align    := alClient;
  GroupBox1.Height:= 99;

  ClientDS_Add.CreateDataSet;
  ClientDS_Add.LogChanges := False;

  Q := TADOQuery.Create(nil);
  Q.Connection := ADOConnActs;
  Q.SQL.Add('SELECT * FROM view_shp_bargain_add WHERE bargain_add_id in (' + str_bargain_add_id + ')');
  Q.Open;

  while not Q.Eof do begin
    ClientDS_Add.Append;
    ClientDS_Add.FieldByName('set_select'                 ).Value := True;
    ClientDS_Add.FieldByName('bargain_id'                 ).Value := Q.FieldByName('bargain_id').Value;
    ClientDS_Add.FieldByName('bargain_cod'                ).Value := Q.FieldByName('bargain_cod').Value;
    ClientDS_Add.FieldByName('contract_id'                ).Value := Q.FieldByName('contract_id').Value;
    ClientDS_Add.FieldByName('contract_cod'               ).Value := Q.FieldByName('contract_cod').Value;
    ClientDS_Add.FieldByName('contract_type'              ).Value := Q.FieldByName('type_contract').Value;
    ClientDS_Add.FieldByName('contract_currency_id'       ).Value := Q.FieldByName('contract_currency_id').Value;
    ClientDS_Add.FieldByName('firm_self_name'             ).Value := Q.FieldByName('firm_self_name').Value;
    ClientDS_Add.FieldByName('firm_customer_name'         ).Value := Q.FieldByName('firm_customer_name').Value;
    ClientDS_Add.FieldByName('note'                       ).Value := Q.FieldByName('note').Value;
    ClientDS_Add.FieldByName('bargain_add_id'             ).Value := Q.FieldByName('bargain_add_id').Value;
    ClientDS_Add.FieldByName('budget_id'                  ).Value := Q.FieldByName('budget_id').Value;
    ClientDS_Add.FieldByName('budget_cod'                 ).Value := Q.FieldByName('budget_cod').Value;
    ClientDS_Add.FieldByName('budget_name'                ).Value := Q.FieldByName('budget_name').Value;
    ClientDS_Add.FieldByName('service_type_name'          ).Value := Q.FieldByName('service_type_name').Value;
    ClientDS_Add.FieldByName('service_type'               ).Value := Q.FieldByName('service_type').Value;
    ClientDS_Add.FieldByName('budget_parent_name'         ).Value := Q.FieldByName('budget_parent_name').Value;
    ClientDS_Add.FieldByName('budget_parent_cod'          ).Value := Q.FieldByName('budget_parent_cod').Value;
    ClientDS_Add.FieldByName('agent_id'                   ).Value := Q.FieldByName('agent_id').Value;
    ClientDS_Add.FieldByName('agent_name'                 ).Value := Q.FieldByName('agent_name').Value;
    ClientDS_Add.FieldByName('subdivision_id'             ).Value := Q.FieldByName('subdivision_id').Value;
    ClientDS_Add.FieldByName('subdivision_name'           ).Value := Q.FieldByName('subdivision_name').Value;
    ClientDS_Add.FieldByName('currency_id'                ).Value := Q.FieldByName('currency_id').Value;
    ClientDS_Add.FieldByName('brief_name'                 ).Value := Q.FieldByName('brief_name').Value;
    ClientDS_Add.FieldByName('type_nds_id'                ).Value := Q.FieldByName('type_nds_id').Value;
    ClientDS_Add.FieldByName('type_nds_name'              ).Value := Q.FieldByName('type_nds_name').Value;
    ClientDS_Add.FieldByName('set_include_nds'            ).Value := Q.FieldByName('set_include_nds').Value;
    ClientDS_Add.FieldByName('set_hand_edit'              ).Value := Q.FieldByName('set_hand_edit').Value;
    ClientDS_Add.FieldByName('add_count'                  ).Value := Q.FieldByName('add_count').Value;
    ClientDS_Add.FieldByName('add_rate'                   ).Value := Q.FieldByName('add_rate').Value;
    ClientDS_Add.FieldByName('ed_izm_id'                  ).Value := Q.FieldByName('ed_izm_id').Value;
    ClientDS_Add.FieldByName('ed_izm_name'                ).Value := Q.FieldByName('ed_izm_name').Value;
    ClientDS_Add.FieldByName('add_sum'                    ).Value := Q.FieldByName('add_sum').Value;
    ClientDS_Add.FieldByName('add_NDS_sum'                ).Value := Q.FieldByName('add_NDS_sum').Value;
    ClientDS_Add.FieldByName('add_notNDS_sum'             ).Value := Q.FieldByName('add_notNDS_sum').Value;
    ClientDS_Add.FieldByName('exchange_date'              ).Value := Q.FieldByName('exchange_date').Value;
    ClientDS_Add.FieldByName('exchange_val_RUB'           ).Value := Q.FieldByName('exchange_val_RUB').Value;
    ClientDS_Add.FieldByName('exchange_val_contract'      ).Value := Q.FieldByName('exchange_val_contract').Value;
    ClientDS_Add.FieldByName('exchange_val_bargain'       ).Value := Q.FieldByName('exchange_val_bargain').Value;
    ClientDS_Add.FieldByName('type_exchange_id'           ).Value := Q.FieldByName('type_exchange_id').Value;
    ClientDS_Add.FieldByName('service_kind_id'            ).Value := Q.FieldByName('service_kind_id').Value;
    ClientDS_Add.FieldByName('service_kind_name'          ).Value := Q.FieldByName('service_kind_name').Value;
    ClientDS_Add.FieldByName('service_kind_name_full'     ).Value := Q.FieldByName('service_kind_name_full').Value;
    ClientDS_Add.FieldByName('service_kind_rep_id'        ).Value := Q.FieldByName('service_kind_rep_id').Value;
    ClientDS_Add.FieldByName('service_kind_rep_name'      ).Value := Q.FieldByName('service_kind_rep_name').Value;
    ClientDS_Add.FieldByName('service_kind_rep_name_full' ).Value := Q.FieldByName('service_kind_rep_name_full').Value;
    ClientDS_Add.FieldByName('acts_note'                  ).Value := Q.FieldByName('acts_note').Value;
    ClientDS_Add.FieldByName('add_note'                   ).Value := Q.FieldByName('add_note').Value;
    ClientDS_Add.FieldByName('balance_type'               ).Value := Q.FieldByName('balance_type').AsInteger;
    ClientDS_Add.FieldByName('set_return'                 ).Value := Q.FieldByName('set_return').Value;
    ClientDS_Add.FieldByName('set_vgo'                    ).Value := Q.FieldByName('set_vgo').Value;
    case Q.FieldByName('balance_type').AsInteger of
      0: ClientDS_Add.FieldByName('balance_type_name').Value := 'Основной';
      1: ClientDS_Add.FieldByName('balance_type_name').Value := 'Вознаграждение';
      else ClientDS_Add.FieldByName('balance_type_name').Value := '';
    end;

    if Q.FieldByName('budget_type_cod').AsString = '2' then koef := -1
    else koef := 1;

    ClientDS_Add.FieldByName('add_sum_RUB'             ).Value := koef * Q.FieldByName('add_sum_RUB').Value;
    ClientDS_Add.FieldByName('add_NDS_sum_RUB'         ).Value := koef * Q.FieldByName('add_NDS_sum_RUB').Value;
    ClientDS_Add.FieldByName('add_notNDS_sum_RUB'      ).Value := koef * Q.FieldByName('add_notNDS_sum_RUB').Value;

    ClientDS_Add.Post;
    Q.Next;
  end;

  CalcSum;

end;


procedure TfmActAdd.CalcSum();
var ClientDS : TClientDataSet;
     add_sum : Currency;
begin
  if Fset_select_add = True then begin
    ClientDS := TClientDataSet.Create(nil);
    ClientDS.Data := ClientDS_Add.Data;
    ClientDS.First;
    add_sum := 0;
    while not ClientDS.Eof do begin
      if ClientDS.FieldByName('set_select').AsBoolean = True then begin
        add_sum := add_sum + ClientDS.FieldByName('add_sum').AsCurrency;
      end;
      ClientDS.Next;
    end;

    cxCurrencyEdit1.EditValue := add_sum;
    ClientDS.Free;
  end;
end;

end.
