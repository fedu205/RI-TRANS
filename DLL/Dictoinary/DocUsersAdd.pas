unit DocUsersAdd;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxContainer, cxEdit, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint,
  dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMetropolis,
  dxSkinMetropolisDark, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue,
  dxSkinOffice2010Silver, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray,
  dxSkinOffice2013White, dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic,
  dxSkinSharp, dxSkinSharpPlus, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinTheAsphaltWorld, dxSkinsDefaultPainters,
  dxSkinValentine, dxSkinVS2010, dxSkinWhiteprint, dxSkinXmas2008Blue, Menus,
  ComCtrls, dxCore, cxDateUtils, cxDropDownEdit, cxCalendar, cxTextEdit,
  cxButtons, cxMaskEdit, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox,
  StdCtrls, cxMemo, Buttons, ExtCtrls, cxButtonEdit, cxLabel, cxGroupBox, DB,
  ADODB, Default, DBClient, Raznoe, cxCurrencyEdit, cxClasses, cxPropertiesStore,
  dxSkinOffice2016Colorful, dxSkinOffice2016Dark, dxSkinVisualStudio2013Blue,
  dxSkinVisualStudio2013Dark, dxSkinVisualStudio2013Light, dxSkinTheBezier;

type
  TfmDocUsersAdd = class(TForm)
    Panel1: TPanel;
    GroupBox1: TGroupBox;
    cxMemo1: TcxMemo;
    Panel4: TPanel;
    Query_Client: TADOQuery;
    DS_Client: TDataSource;
    cxLabel2: TcxLabel;
    cxLookupComboBox1: TcxLookupComboBox;
    cxLabel3: TcxLabel;
    cxButtonEdit13: TcxButtonEdit;
    cxLabel12: TcxLabel;
    cxButtonEdit14: TcxButtonEdit;
    Panel26: TPanel;
    Label43: TLabel;
    cxButtonEdit1: TcxButtonEdit;
    DS_DocsType: TDataSource;
    Query_DocsType: TADOQuery;
    Query_Currency: TADOQuery;
    DS_Currency: TDataSource;
    Panel3: TPanel;
    Label5: TLabel;
    cxLookupComboBox2: TcxLookupComboBox;
    cxCurrencyEdit1: TcxCurrencyEdit;
    Panel2: TPanel;
    Label2: TLabel;
    Label7: TLabel;
    Label6: TLabel;
    cxDateEdit1: TcxDateEdit;
    cxTextEdit4: TcxTextEdit;
    cxLookupComboBox3: TcxLookupComboBox;
    OpenDialog1: TOpenDialog;
    cxPropertiesStore1: TcxPropertiesStore;
    cxLabel1: TcxLabel;
    cxButtonEdit2: TcxButtonEdit;
    cxButton1: TcxButton;
    cxButton3: TcxButton;
    procedure cxLookupComboBox1PropertiesChange(Sender: TObject);
    procedure cxButtonEdit1PropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cxButton1Click(Sender: TObject);
  private
    Fusr_pwd    : PUser_pwd;
    Fdoc_id     : integer;
    Fbargain_id : integer;
    Fglobal_id  : integer;
    Fconnect    : TADOConnection;
    Ftype_doc   : integer;

    procedure SetUpdate(doc_id: integer);
    procedure SetClientDS(ClientDS: TClientDataSet);
  public
    constructor Create(AOwner: TApplication; bargain_id: integer; usr_pwd: PUser_pwd; type_doc: integer);
  published
    property _SetUpdate   : integer write SetUpdate;
    property _SetClientDS : TClientDataSet write SetClientDS;
    property _GetDocId    : integer read Fdoc_id;
  end;

var
  fmDocUsersAdd: TfmDocUsersAdd;

function CreateWndDocUsersAdd(AppHand: THandle; doc_id: integer; bargain_id: integer; ClientDS: TClientDataSet; usr_pwd: PUser_pwd; type_doc: integer):variant; export;

implementation

{$R *.dfm}
// type_doc  0-документы из сделок bargain_id,  1-любой документ к global_id
function CreateWndDocUsersAdd(AppHand: THandle; doc_id: integer; bargain_id: integer; ClientDS: TClientDataSet; usr_pwd: PUser_pwd; type_doc: integer):variant;
begin
  try
    fmDocUsersAdd := TfmDocUsersAdd.Create(Application, bargain_id, usr_pwd, type_doc);
    if doc_id <> -9 then fmDocUsersAdd._SetUpdate := doc_id;
    if ClientDS <> nil then fmDocUsersAdd._SetClientDS := ClientDS;


    if fmDocUsersAdd.ShowModal = mrOk then begin
      result := VarArrayOf([fmDocUsersAdd._GetDocId]);
    end else begin
      result := VarArrayOf([-9]);
    end;
  finally
    fmDocUsersAdd.Free;
  end;
end;

constructor TfmDocUsersAdd.Create(AOwner: TApplication; bargain_id: integer; usr_pwd: PUser_pwd; type_doc: integer);
var Q: TADOQuery;
begin
  inherited Create(AOwner);
  Screen.Cursor := crHourglass;

  Fusr_pwd    := usr_pwd;
  Fdoc_id     := -9;
  Fbargain_id := bargain_id;
  Ftype_doc   := type_doc;

  FConnect := TADOConnection.Create(nil);
  FConnect.ConnectionString := 'Persist Security Info=True;Provider=SQLOLEDB.1;User ID='+usr_pwd^.user_name+';Password='+usr_pwd^.user_pass+';Initial Catalog='+usr_pwd^.catalog+';Data Source='+usr_pwd^.server+';';
  FConnect.KeepConnection   := False;
  FConnect.LoginPrompt      := False;

  Query_DocsType.Connection := Fconnect;
  Query_DocsType.Open;
  cxLookupComboBox3.EditValue := Query_DocsType.FieldByName('inf_obj_id').Value;

  case type_doc of
    0 : begin
          Fglobal_id := -9;
          Query_Client.Connection := Fconnect;
          Query_Client.Parameters.ParamByName('bargain_id').Value := bargain_id;
          Query_Client.Open;
          cxLookupComboBox1.EditValue := Query_Client.FieldByName('contract_id').Value;

          Query_Currency.Connection := Fconnect;
          Query_Currency.Open;
          cxLookupComboBox2.EditValue := Query_Currency.FieldByName('currency_id').Value;

          Q := TADOQuery.Create(nil);
          Q.Connection := Fconnect;
          Q.SQL.Add('SELECT * FROM view_shp_bargain WHERE bargain_id = ' + IntToStr(Fbargain_id));
          Q.Open;
          cxButtonEdit2.EditValue := Q.FieldByName('bargain_cod').Value;
          Q.Free;
        end;

    1 : begin
          Fglobal_id := bargain_id;
          Panel3.Visible := False;
          Panel4.Visible := False;
          Height := Height - Panel3.Height - Panel4.Height;
          cxPropertiesStore1.Active := False;

          cxDateEdit1.EditValue := Now;

          // ------ тип документа "Карточка контрагента" ----------
          cxLookupComboBox3.EditValue := 629593;
        end;
  end;

  Screen.Cursor := crDefault;
end;


procedure TfmDocUsersAdd.SetClientDS(ClientDS: TClientDataSet);
var Q: TADOQuery;
begin
  Q :=  TADOQuery.Create(nil);
  Q.Connection := Fconnect;

  Fbargain_id                 := ClientDS.FieldByName('bargain_id').AsInteger;
  cxLookupComboBox1.EditValue := ClientDS.FieldByName('contract_id').AsInteger;

  Q.SQL.Clear;
  Q.SQL.Add('SELECT * FROM inf_obj WHERE type_inf_id = -101 and inf_obj_cod = ''' + ClientDS.FieldByName('doc_type_cod').AsString + '''');
  Q.Open;

  cxLookupComboBox3.EditValue := Q.FieldByName('inf_obj_id').AsInteger;
  cxLookupComboBox2.EditValue := ClientDS.FieldByName('currency_id').AsInteger;
  cxMemo1.EditValue           := ClientDS.FieldByName('doc_describe').Value;
	cxDateEdit1.EditValue       := ClientDS.FieldByName('doc_date').Value;
	cxCurrencyEdit1.EditValue   := ClientDS.FieldByName('doc_sum').Value;
  cxTextEdit4.EditValue       := ClientDS.FieldByName('doc_cod').Value;


  Q.SQL.Clear;
  Q.SQL.Add('SELECT * FROM view_shp_bargain WHERE bargain_id = ' + IntToStr(Fbargain_id));
  Q.Open;
  cxButtonEdit2.EditValue     := Q.FieldByName('bargain_cod').Value;

  Q.Free;
end;

procedure TfmDocUsersAdd.SetUpdate(doc_id: integer);
var Q: TADOQuery;
begin
  Fdoc_id := doc_id;

  Q :=  TADOQuery.Create(nil);
  Q.Connection := Fconnect;
  Q.SQL.Add('SELECT * FROM view_doc_users WHERE doc_id = ' + IntToStr(Fdoc_id));
  Q.Open;

  Fbargain_id                 := Q.FieldByName('bargain_id').AsInteger;
  cxLookupComboBox1.EditValue := Q.FieldByName('contract_id').AsInteger;
  cxLookupComboBox3.EditValue := Q.FieldByName('doc_type_id').AsInteger;
  cxLookupComboBox2.EditValue := Q.FieldByName('currency_id').AsInteger;
  cxMemo1.EditValue           := Q.FieldByName('doc_describe').Value;
	cxDateEdit1.EditValue       := Q.FieldByName('doc_date').Value;
	cxCurrencyEdit1.EditValue   := Q.FieldByName('doc_sum').Value;
  cxTextEdit4.EditValue       := Q.FieldByName('doc_cod').Value;
  cxButtonEdit1.EditValue     := Q.FieldByName('file_name').Value;
  cxButtonEdit2.EditValue     := Q.FieldByName('bargain_cod').Value;

  Q.Free;
end;

procedure TfmDocUsersAdd.cxButton1Click(Sender: TObject);
var SP_doc_users_modify: TADOStoredProc;
begin
  if (Fdoc_id = -9) AND (OpenDialog1.FileName = '') then begin
    Application.MessageBox('Не указан файл.', 'Внимание', MB_OK);
    ModalResult := mrNone;
    exit;
  end;

  SP_doc_users_modify := TADOStoredProc.Create(nil);
  SP_doc_users_modify.Connection := Fconnect;
  SP_doc_users_modify.ProcedureName := 'sp_doc_users_modify';
  SP_doc_users_modify.Parameters.Refresh;
	SP_doc_users_modify.Parameters.ParamByName('@doc_id'       ).Value := iif(Fdoc_id = -9, null, Fdoc_id);
	SP_doc_users_modify.Parameters.ParamByName('@type_action'  ).Value := iif(Fdoc_id = -9, 0, 1);
	SP_doc_users_modify.Parameters.ParamByName('@bargain_id'   ).Value := iif(Fbargain_id = -9, null, Fbargain_id);
  SP_doc_users_modify.Parameters.ParamByName('@contract_id'  ).Value := cxLookupComboBox1.EditValue;
	SP_doc_users_modify.Parameters.ParamByName('@doc_type_id'  ).Value := cxLookupComboBox3.EditValue;
  SP_doc_users_modify.Parameters.ParamByName('@currency_id'  ).Value := cxLookupComboBox2.EditValue;
	SP_doc_users_modify.Parameters.ParamByName('@doc_describe' ).Value := iif(cxMemo1.Text <> '', cxMemo1.Text, null);
	SP_doc_users_modify.Parameters.ParamByName('@doc_date'     ).Value := cxDateEdit1.EditValue;
	SP_doc_users_modify.Parameters.ParamByName('@doc_sum'      ).Value := cxCurrencyEdit1.EditValue;
  SP_doc_users_modify.Parameters.ParamByName('@doc_cod'      ).Value := cxTextEdit4.EditValue;
  SP_doc_users_modify.Parameters.ParamByName('@global_id'    ).Value := iif(Fglobal_id = -9, null, Fglobal_id);

  if (OpenDialog1.FileName <> '') then begin
    SP_doc_users_modify.Parameters.ParamByName('@doc_image').LoadFromFile(OpenDialog1.FileName, ftBlob);
    SP_doc_users_modify.Parameters.ParamByName('@file_name').Value := ExtractFileName(OpenDialog1.FileName);
  end else begin
    SP_doc_users_modify.Parameters.ParamByName('@doc_image').Value := NULL;
    SP_doc_users_modify.Parameters.ParamByName('@file_name').Value := NULL;
  end;

  SP_doc_users_modify.ExecProc;
  Fdoc_id := 	SP_doc_users_modify.Parameters.ParamByName('@doc_id').Value;

  SP_doc_users_modify.Free;
end;

procedure TfmDocUsersAdd.cxButtonEdit1PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  case AButtonIndex of
    0 : begin
        OpenDialog1.Filter := 'Все файлы|*.*';
        OpenDialog1.DefaultExt := '';
          if OpenDialog1.Execute then begin
            cxButtonEdit1.EditValue := OpenDialog1.FileName;
          end;
        end;
    1 : cxButtonEdit1.EditValue := '';
  end;
end;

procedure TfmDocUsersAdd.cxLookupComboBox1PropertiesChange(Sender: TObject);
var contract_id  : integer;
begin
  cxButtonEdit13.EditValue := '';
  cxButtonEdit14.EditValue := '';

  if Query_Client.Active then begin
    contract_id := iif(cxLookupComboBox1.EditValue = null, -9, cxLookupComboBox1.EditValue);

    if Query_Client.Locate('contract_id', contract_id, []) then begin
      cxButtonEdit13.EditValue    := Query_Client.FieldByName('firm_self_name').AsString;
      cxButtonEdit14.EditValue    := Query_Client.FieldByName('contract_cod'  ).AsString;
    end;
  end;
end;

procedure TfmDocUsersAdd.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Fconnect.Free;
end;

end.
