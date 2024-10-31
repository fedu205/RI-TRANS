unit DocBlobAdd;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, ADODB, StdCtrls, Buttons, ComCtrls, ToolWin, Menus, Variants, cxStyles,
  cxCustomData, cxGraphics, cxFilter, cxData, cxDataStorage, cxEdit, cxDBData,
  cxControls, cxGridCustomView, cxGridCustomTableView, cxGridTableView, Default,
  cxGridBandedTableView, cxGridDBBandedTableView, cxClasses, cxGridLevel, cxGrid,
  ImgList, cxTL, cxTextEdit, cxInplaceContainer, cxContainer, cxLabel, ExtCtrls,
  cxImage, cxPC, cxSplitter, dxGDIPlusClasses, dxBar, cxPropertiesStore, dxtree,
  cxCalendar, cxDBLookupComboBox, cxDropDownEdit, cxMaskEdit, cxLookupEdit, cxDBLookupEdit,
  cxMemo, cxButtonEdit, ShellApi, StrUtils, cxLookAndFeels,
  cxLookAndFeelPainters, cxButtons, DBClient, cxCheckBox, dxSkinsCore,
  dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee,
  dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
  dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMetropolis, dxSkinMetropolisDark, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013DarkGray,
  dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinPumpkin, dxSkinSeven,
  dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus, dxSkinSilver,
  dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008, dxSkinTheAsphaltWorld,
  dxSkinsDefaultPainters, dxSkinValentine, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue, dxCore, cxDateUtils, dxSkinOffice2016Colorful,
  dxSkinOffice2016Dark, dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, dxSkinTheBezier;

type
  TfmDocBlobAdd = class(TForm)
    Panel1: TPanel;
    GroupBox1: TGroupBox;
    cxMemo1: TcxMemo;
    DS_Firm: TDataSource;
    Query_Firm: TADOQuery;
    OpenDialog1: TOpenDialog;
    cxPropertiesStore1: TcxPropertiesStore;
    Query_Sign_Customer: TADOQuery;
    DS_Sign_Customer: TDataSource;
    DS_Sign_Self: TDataSource;
    Query_Location: TADOQuery;
    DS_Location: TDataSource;
    Query_Sign_Self: TADOQuery;
    Query_Contract: TADOQuery;
    DS_Contract: TDataSource;
    Query_Invoice: TADOQuery;
    DS_Invoice: TDataSource;
    Panel3: TPanel;
    Label15: TLabel;
    cxLookupComboBox6: TcxLookupComboBox;
    Panel11: TPanel;
    Label11: TLabel;
    Label18: TLabel;
    cxLookupComboBox8: TcxLookupComboBox;
    cxDateEdit3: TcxDateEdit;
    Panel5: TPanel;
    Label16: TLabel;
    cxTextEdit4: TcxTextEdit;
    Panel7: TPanel;
    Label41: TLabel;
    cxLookupComboBox28: TcxLookupComboBox;
    Panel9: TPanel;
    Label65: TLabel;
    cxTextEdit12: TcxTextEdit;
    Label82: TLabel;
    Label78: TLabel;
    cxTextEdit16: TcxTextEdit;
    cxDateEdit22: TcxDateEdit;
    Panel4: TPanel;
    Label40: TLabel;
    cxLookupComboBox16: TcxLookupComboBox;
    cxButton1: TcxButton;
    cxButton2: TcxButton;
    cxButton3: TcxButton;
    cxButton4: TcxButton;
    Label80: TLabel;
    cxTextEdit6: TcxTextEdit;
    cxDateEdit2: TcxDateEdit;
    Label83: TLabel;
    Panel26: TPanel;
    cxButtonEdit1: TcxButtonEdit;
    Label43: TLabel;
    Label44: TLabel;
    cxDateEdit12: TcxDateEdit;
    Label2: TLabel;
    cxDateEdit1: TcxDateEdit;
    Panel14: TPanel;
    Label25: TLabel;
    Label24: TLabel;
    Label26: TLabel;
    cxButtonEdit5: TcxButtonEdit;
    cxLookupComboBox9: TcxLookupComboBox;
    cxDateEdit6: TcxDateEdit;
    Panel13: TPanel;
    Label27: TLabel;
    Label28: TLabel;
    cxLookupComboBox11: TcxLookupComboBox;
    cxLookupComboBox10: TcxLookupComboBox;
    Panel2: TPanel;
    Label1: TLabel;
    cxLookupComboBox1: TcxLookupComboBox;
    Panel6: TPanel;
    Label3: TLabel;
    cxLookupComboBox2: TcxLookupComboBox;
    Query_Pretenzia: TADOQuery;
    DS_Pretenzia: TDataSource;
    Query_Repair: TADOQuery;
    DS_Repair: TDataSource;
    Panel8: TPanel;
    Label4: TLabel;
    cxLookupComboBox3: TcxLookupComboBox;
    Panel10: TPanel;
    Label5: TLabel;
    cxButtonEdit22: TcxButtonEdit;
    Panel12: TPanel;
    Label6: TLabel;
    cxLookupComboBox4: TcxLookupComboBox;
    DS_ZFTO_SCORE: TDataSource;
    Query_ZFTO_SCORE: TADOQuery;
    cxDateEdit4: TcxDateEdit;
    Label7: TLabel;
    Panel15: TPanel;
    Label9: TLabel;
    cxTextEdit2: TcxTextEdit;
    Label8: TLabel;
    cxTextEdit1: TcxTextEdit;
    Label10: TLabel;
    cxComboBox1: TcxComboBox;
    cxCheckBox2: TcxCheckBox;
    cxCheckBox1: TcxCheckBox;
    cxCheckBox3: TcxCheckBox;
    cxButton5: TcxButton;
    cxButton6: TcxButton;
    procedure cxButtonEdit2PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cxButton1Click(Sender: TObject);
    procedure cxButton4Click(Sender: TObject);
    procedure cxButtonEdit9PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure cxLookupComboBox28PropertiesEditValueChanged(Sender: TObject);
    procedure cxLookupComboBox16PropertiesEditValueChanged(Sender: TObject);
    procedure cxLookupComboBox1PropertiesEditValueChanged(Sender: TObject);
    procedure cxLookupComboBox6PropertiesEditValueChanged(Sender: TObject);
    procedure cxCheckBox1PropertiesEditValueChanged(Sender: TObject);
    procedure cxCheckBox2PropertiesEditValueChanged(Sender: TObject);
    procedure cxCheckBox3PropertiesEditValueChanged(Sender: TObject);
    procedure cxButton5Click(Sender: TObject);

  private
    Fdoc_id         : integer;
    Fdoc_type_cod   : string;
    Fdoc_folder_id  : integer;
    Fdoc_location_FIO_users_id : integer;

    FConnect        : TADOConnection;
    FClientDS       : TClientDataSet;
    Fusr_pwd        : PUser_pwd;

    Fcontract_id    : integer;
    Ffirm_id        : integer;
    Finvoice_id     : integer;
    Fpretenzia_id   : integer;
    Ffact_repair_id : integer;
    Fzfto_score_id  : integer;
    Fset_group_upd  : Boolean;
    Fstr_doc_id     : string;
    Ftype_action    : integer;
    Fbargain_id     : integer;
    Ffiles_blob     : TMemoryStream;
    Ffiles_name     : string;

    procedure SetDocType(doc_type_cod: string);
    procedure SetContractID(contract_id: integer);
    procedure SetFirmID(firm_id: integer);
    procedure SetInvoiceID(invoice_id: integer);
    procedure SetPretenziaID(pretenzia_id: integer);
    procedure SetFactRepairID(fact_repair_id: integer);
    procedure SetZftoScoreID(zfto_score_id: integer);

    procedure SetUpdate    (doc_id: integer);
    procedure SetGroupUpdate(str_doc_id: string);
    procedure SetClientDS  (ClientDS: TClientDataSet);
    procedure SetEnabledContract(set_enabled: boolean);
    procedure SetParamFromClientDS(ClientDS: TClientDataSet);
    procedure CheckContract(contract_id: integer);
  public
    constructor Create(AOwner: TApplication; usr_pwd: PUser_pwd);
  published
    property _SetDocType         : string  write SetDocType;
    property _SetDocFolderID     : integer write Fdoc_folder_id;
    property _SetContractID      : integer write SetContractID;
    property _SetFirmID          : integer write SetFirmID;
    property _SetInvoiceID       : integer write SetInvoiceID;
    property _SetPretenziaID     : integer write SetPretenziaID;
    property _SetFactRepairID    : integer write SetFactRepairID;
    property _SetZftoScoreID     : integer write SetZftoScoreID;
    property _SetEnabledContract : boolean write SetEnabledContract;


    property _SetUpdate          : integer write SetUpdate;
    property _SetClientDS        : TClientDataSet write SetClientDS;
    property _GetDocId           : integer read Fdoc_id;
    property _SetGroupUpdate     : string write SetGroupUpdate;

    property _SetParamFromClientDS : TClientDataSet write SetParamFromClientDS;
  end;

var
  fmDocBlobAdd: TfmDocBlobAdd;

function CreateWndDocAdd(AppHand: THandle; doc_id: integer; global_id: integer; doc_type_cod: string; ClientDS: TClientDataSet; usr_pwd: PUser_pwd):variant; export;

implementation
   uses DocBlob, Filter, Raznoe;
{$R *.DFM}

function CreateWndDocAdd(AppHand: THandle; doc_id: integer; global_id: integer; doc_type_cod: string; ClientDS: TClientDataSet; usr_pwd: PUser_pwd): variant;
var Connect : TADOConnection;
          Q : TADOQuery;
begin
  Connect := TADOConnection.Create(nil);
  Connect.ConnectionString := 'Persist Security Info=True;Provider=SQLOLEDB.1;User ID='+usr_pwd^.user_name+';Password='+usr_pwd^.user_pass+';Initial Catalog='+usr_pwd^.catalog+';Data Source='+usr_pwd^.server+';';
  Connect.KeepConnection   := False;
  Connect.LoginPrompt      := False;
  try
    fmDocBlobAdd := TfmDocBlobAdd.Create(Application, usr_pwd);

    Q := TADOQuery.Create(nil);
    Q.Connection := Connect;
    Q.SQL.Add('SELECT	global_id, object_physic_name ');
    Q.SQL.Add('FROM	  global_id LEFT JOIN object_base ON global_id.object_id = object_base.object_id');
    Q.SQL.Add('WHERE	global_id = ' + IntToStr(global_id));
    Q.Open;

    fmDocBlobAdd._SetDocType := doc_type_cod;
    case IndexText(Q.FieldByName('object_physic_name').AsString, ['CONTRACT','FIRM','INVOICE','PRETENZIA','FACT_REPAIR','ZFTO_SCORE']) of
      0: fmDocBlobAdd._SetContractID   := global_id;
      1: fmDocBlobAdd._SetFirmID       := global_id;
      2: fmDocBlobAdd._SetInvoiceID    := global_id;
      3: fmDocBlobAdd._SetPretenziaID  := global_id;
      4: fmDocBlobAdd._SetFactRepairID := global_id;
      5: fmDocBlobAdd._SetZftoScoreID  := global_id;
    end;
    Q.Free;

    if ClientDS <> nil then begin
      fmDocBlobAdd._SetParamFromClientDS := ClientDS;
    end;

    if doc_id <> -9 then fmDocBlobAdd._SetUpdate := doc_id;

    if fmDocBlobAdd.ShowModal = mrOk then begin
      result := VarArrayOf([fmDocBlobAdd._GetDocId]);
    end else begin
      result := VarArrayOf([-9]);
    end;
  finally
    fmDocBlobAdd.Free;
  end;
end;

constructor TfmDocBlobAdd.Create(AOwner: TApplication; usr_pwd: PUser_pwd);
begin
  inherited Create(AOwner);
  Screen.Cursor := crHourglass;

  Fusr_pwd := usr_pwd;
  Fdoc_id        := -9;
  Fdoc_type_cod  := '';
  Fdoc_folder_id := -9;
  Fcontract_id   := -9;
  Ffirm_id       := -9;
  Finvoice_id    := -9;
  Fpretenzia_id  := -9;
  Ffact_repair_id:= -9;
  Fbargain_id    := -9;
  Fzfto_score_id := -9;
  Fdoc_location_FIO_users_id := -9;
  Fset_group_upd := False;
  Ftype_action := 0;
  Ffiles_blob  := nil;
  Ffiles_name  := '';
  Ffiles_blob := TMemoryStream.Create;

  FConnect := TADOConnection.Create(nil);
  FConnect.ConnectionString := 'Persist Security Info=True;Provider=SQLOLEDB.1;User ID='+usr_pwd^.user_name+';Password='+usr_pwd^.user_pass+';Initial Catalog='+usr_pwd^.catalog+';Data Source='+usr_pwd^.server+';';
  FConnect.KeepConnection   := False;
  FConnect.LoginPrompt      := False;
  FClientDS                 := nil;

  Query_Firm.Connection          := FConnect;
  Query_Sign_Self.Connection     := FConnect;
  Query_Sign_Customer.Connection := FConnect;
  Query_Location.Connection      := FConnect;
  Query_Invoice.Connection       := FConnect;
  Query_Contract.Connection      := FConnect;
  Query_Pretenzia.Connection     := FConnect;
  Query_Repair.Connection        := FConnect;
  Query_ZFTO_SCORE.Connection    := FConnect;

  Query_Sign_Customer.Open;
  Query_Sign_Self.Open;
  Query_Sign_Self.Locate('inf_obj_cod','003',[]);
  cxLookupComboBox10.EditValue := Query_Sign_Self.FieldByName('inf_obj_id').Value;
  Query_Sign_Customer.Locate('inf_obj_cod','003',[]);
  cxLookupComboBox11.EditValue := Query_Sign_Customer.FieldByName('inf_obj_id').Value;
  Query_Location.Open;

  Screen.Cursor := crDefault;
end;

procedure TfmDocBlobAdd.CheckContract(contract_id : integer);
begin
end;


procedure TfmDocBlobAdd.SetUpdate(doc_id : integer);
var SP :TADOStoredProc;
begin
  Screen.Cursor := -11;
  Ftype_action := 1;

  if FClientDS = nil then begin
    Fdoc_id := doc_id;
    Caption := Caption + ' [ID: ' + IntToStr(doc_id) + ']';

    SP := TADOStoredProc.Create(nil);
    SP.Connection := FConnect;
    SP.ProcedureName := 'sp_blob_GET';
    SP.Parameters.Refresh;
    SP.Parameters.ParamByName('@doc_id').Value := Fdoc_id;
    SP.Open;

    Fdoc_type_cod := SP.FieldByName('doc_type_cod').AsString;
    _SetDocType := Fdoc_type_cod;
    Fdoc_folder_id   := iif(SP.FieldByName('doc_folder_id').IsNull, -9, SP.FieldByName('doc_folder_id').Value);

    Fcontract_id     := iif(SP.FieldByName('contract_id').IsNull, -9, SP.FieldByName('contract_id').Value);
    Ffirm_id         := iif(SP.FieldByName('firm_id').IsNull, -9, SP.FieldByName('firm_id').Value);
    Finvoice_id      := iif(SP.FieldByName('invoice_id').IsNull, -9, SP.FieldByName('invoice_id').Value);
    Fpretenzia_id    := iif(SP.FieldByName('pretenzia_id').IsNull, -9, SP.FieldByName('pretenzia_id').Value);
    Ffact_repair_id  := iif(SP.FieldByName('fact_repair_id').IsNull, -9, SP.FieldByName('fact_repair_id').Value);
    Fzfto_score_id   := iif(SP.FieldByName('zfto_score_id').IsNull, -9, SP.FieldByName('zfto_score_id').Value);
    Fbargain_id      := iif(SP.FieldByName('bargain_id').IsNull, -9, SP.FieldByName('bargain_id').Value);

    _SetContractID    := Fcontract_id;
    _SetFirmID        := Ffirm_id;
    _SetInvoiceID     := Finvoice_id;
    _SetPretenziaID   := Fpretenzia_id;
    _SetFactRepairID  := Ffact_repair_id;
    _SetZftoScoreID := Fzfto_score_id;

    cxMemo1.EditValue            := SP.FieldByName('doc_describe').Value;
    cxButtonEdit5.EditValue      := SP.FieldByName('doc_location_FIO_users').Value;
    cxDateEdit6.EditValue        := SP.FieldByName('doc_location_date').Value;
    cxLookupComboBox11.EditValue := SP.FieldByName('sign_customer_id').Value;
    cxLookupComboBox10.EditValue := SP.FieldByName('sign_self_id').Value;
    cxTextEdit4.EditValue        := SP.FieldByName('doc_cod').Value;
    cxLookupComboBox9.EditValue  := SP.FieldByName('doc_location_id').Value;
    cxDateEdit12.EditValue       := SP.FieldByName('doc_image_date').Value;
    Fdoc_location_FIO_users_id   := iif(SP.FieldByName('doc_location_FIO_users_id').IsNull, -9, SP.FieldByName('doc_location_FIO_users_id').Value);
    cxDateEdit3.EditValue        := SP.FieldByName('doc_original_date').Value;
    cxTextEdit12.EditValue       := SP.FieldByName('doc_invoice_score_cod').Value;
    cxLookupComboBox8.EditValue  := SP.FieldByName('doc_kind_id').Value;
    cxButtonEdit1.EditValue      := SP.FieldByName('file_name').Value;
    cxLookupComboBox3.EditValue := iif(Fcontract_id = -9, null, Fcontract_id);

    cxDateEdit4.EditValue := SP.FieldByName('doc_date_end').Value;
    cxTextEdit1.EditValue := SP.FieldByName('num_arc_book').Value;
    cxComboBox1.EditValue := SP.FieldByName('index_arc_book').Value;

    SP.Free;
  end else begin
    Fdoc_id := doc_id;
    FClientDS.Locate('doc_id', Fdoc_id, []);


    Fdoc_type_cod := FClientDS.FieldByName('doc_type_cod').AsString;
    _SetDocType := Fdoc_type_cod;
    Fdoc_folder_id   := iif(FClientDS.FieldByName('doc_folder_id').IsNull, -9, FClientDS.FieldByName('doc_folder_id').Value);
    Fcontract_id     := iif(FClientDS.FieldByName('contract_id').IsNull, -9, FClientDS.FieldByName('contract_id').Value);
    Ffirm_id         := iif(FClientDS.FieldByName('firm_id').IsNull, -9, FClientDS.FieldByName('firm_id').Value);
    Finvoice_id      := iif(FClientDS.FieldByName('invoice_id').IsNull, -9, FClientDS.FieldByName('invoice_id').Value);
    Fpretenzia_id    := iif(FClientDS.FieldByName('pretenzia_id').IsNull, -9, FClientDS.FieldByName('pretenzia_id').Value);
    Ffact_repair_id  := iif(FClientDS.FieldByName('fact_repair_id').IsNull, -9, FClientDS.FieldByName('fact_repair_id').Value);
    Fzfto_score_id   := iif(FClientDS.FieldByName('zfto_score_id').IsNull, -9, FClientDS.FieldByName('zfto_score_id').Value);

    if FClientDS.FindField('bargain_id') <> nil then
      Fbargain_id := iif(FClientDS.FieldByName('bargain_id').IsNull, -9, FClientDS.FieldByName('bargain_id').Value)
    else
      Fbargain_id := -9;

    _SetContractID   := Fcontract_id;
    _SetFirmID       := Ffirm_id;
    _SetInvoiceID    := Finvoice_id;
    _SetPretenziaID  := Fpretenzia_id;
    _SetFactRepairID := Ffact_repair_id;
    _SetZftoScoreID  := Fzfto_score_id;

    cxMemo1.EditValue            := FClientDS.FieldByName('doc_describe').Value;
    cxButtonEdit5.EditValue      := FClientDS.FieldByName('doc_location_FIO_users').Value;
    cxDateEdit6.EditValue        := FClientDS.FieldByName('doc_location_date').Value;
    cxLookupComboBox11.EditValue := FClientDS.FieldByName('sign_customer_id').Value;
    cxLookupComboBox10.EditValue := FClientDS.FieldByName('sign_self_id').Value;
    cxTextEdit4.EditValue        := FClientDS.FieldByName('doc_cod').Value;
    cxLookupComboBox9.EditValue  := FClientDS.FieldByName('doc_location_id').Value;
    cxDateEdit12.EditValue       := FClientDS.FieldByName('doc_image_date').Value;
    Fdoc_location_FIO_users_id   := iif(FClientDS.FieldByName('doc_location_FIO_users_id').IsNull, -9, FClientDS.FieldByName('doc_location_FIO_users_id').Value);
    cxDateEdit3.EditValue        := FClientDS.FieldByName('doc_original_date').Value;
    cxTextEdit12.EditValue       := FClientDS.FieldByName('doc_invoice_score_cod').Value;
    cxLookupComboBox8.EditValue  := FClientDS.FieldByName('doc_kind_id').Value;
    cxButtonEdit1.EditValue      := FClientDS.FieldByName('file_name').Value;
  end;
  Screen.Cursor := 0;
end;

//Выбор файла
procedure TfmDocBlobAdd.cxButton1Click(Sender: TObject);
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

procedure TfmDocBlobAdd.cxButton4Click(Sender: TObject);
begin
  Screen.Cursor := -11;

  Query_Contract.Close;
  if cxButton4.SpeedButtonOptions.Down then begin
    cxButton4.SpeedButtonOptions.GroupIndex := 0;
    Query_Contract.Parameters.ParamByName('date_end').Value := Date;
  end else begin
    cxButton4.SpeedButtonOptions.GroupIndex := 100;
//    cxButton4.SpeedButtonOptions.Down := True;
    Query_Contract.Parameters.ParamByName('date_end').Value := 1;
  end;
  Query_Contract.Open;

  cxLookupComboBox16.EditValue := Query_Contract['contract_id'];
  cxLookupComboBox16PropertiesEditValueChanged(cxLookupComboBox16);

  Screen.Cursor := 0;
end;

procedure TfmDocBlobAdd.cxButton5Click(Sender: TObject);
var           v : Variant;
             ff : TFileStream;
 SP_BLOB_modify : TADOStoredProc;
              Q : TADOQuery;
              i : integer;
begin
  if (OpenDialog1.Files.Count = 0) AND (Ftype_action = 0) then begin
    if (Ffiles_blob.Size = 0) then begin
      Application.MessageBox('Не указан файл.', 'Внимание', MB_OK);
      ModalResult := mrNone;
      Exit;
    end;
  end;

  ModalResult := mrOk;

  Fcontract_id    := -9;
  Ffirm_id        := -9;
  Finvoice_id     := -9;
  Fpretenzia_id   := -9;
  Ffact_repair_id := -9;


  case IndexText(Fdoc_type_cod, ['1','2','3','7','8','9','10','11','12','13','14','15']) of
   0: begin // Договор
        Fcontract_id    := iif(cxLookupComboBox16.EditValue = null, -9, cxLookupComboBox16.EditValue);
        if (Fcontract_id = -9) AND (cxLookupComboBox16.Enabled = True) then begin
          ModalResult := mrNone;
          Application.MessageBox('Выберите договор!', 'Ошибка', MB_ICONWARNING or MB_OK);
          Exit;
        end;

      end;
   1: begin // Приложение
        Fcontract_id    := iif(cxLookupComboBox16.EditValue = null, -9, cxLookupComboBox16.EditValue);
        if (Fcontract_id = -9) AND (cxLookupComboBox16.Enabled = True) then begin
          ModalResult := mrNone;
          Application.MessageBox('Выберите договор!', 'Ошибка', MB_ICONWARNING or MB_OK);
          Exit;
        end;
      end;
   2: begin // Счет
        Fcontract_id    := iif(cxLookupComboBox16.EditValue = null, -9, cxLookupComboBox16.EditValue);
        Finvoice_id     := iif(cxLookupComboBox28.EditValue = null, -9, cxLookupComboBox28.EditValue);
        if (Fcontract_id = -9) AND (cxLookupComboBox16.Enabled = True) then begin
          ModalResult := mrNone;
          Application.MessageBox('Выберите договор!', 'Ошибка', MB_ICONWARNING or MB_OK);
          Exit;
        end;
//        if Query_Contract.FieldByName('type_contract').AsInteger <> 1 then begin
//          if (Finvoice_id = -9) AND (cxLookupComboBox28.Enabled = True) then begin
//            ModalResult := mrNone;
//            Application.MessageBox('Выберите счет!', 'Ошибка', MB_ICONWARNING or MB_OK);
//            Exit;
//          end;
//        end;
      end;
   3: begin // Карточка контрагента
        Ffirm_id        := iif(cxLookupComboBox6.EditValue = null, -9, cxLookupComboBox6.EditValue);
        if (Ffirm_id = -9) AND (cxLookupComboBox6.Enabled = True) then begin
          ModalResult := mrNone;
          Application.MessageBox('Выберите контрагента!', 'Ошибка', MB_ICONWARNING or MB_OK);
          Exit;
        end;
      end;
   4: begin // Претензия к контрагенту
        Fcontract_id    := iif(cxLookupComboBox16.EditValue = null, -9, cxLookupComboBox16.EditValue);
        Fpretenzia_id   := iif(cxLookupComboBox2.EditValue = null, -9, cxLookupComboBox2.EditValue);
        if (Fcontract_id = -9) AND (cxLookupComboBox16.Enabled = True) then begin
          ModalResult := mrNone;
          Application.MessageBox('Выберите договор!', 'Ошибка', MB_ICONWARNING or MB_OK);
          Exit;
        end;
        if (Fpretenzia_id = -9) AND (cxLookupComboBox2.Enabled = True) then begin
          ModalResult := mrNone;
          Application.MessageBox('Выберите претензию!', 'Ошибка', MB_ICONWARNING or MB_OK);
          Exit;
        end;
      end;
   5: begin //Прочие
        Fcontract_id    := iif(cxLookupComboBox16.EditValue = null, -9, cxLookupComboBox16.EditValue);
        if (Fcontract_id = -9) AND (cxLookupComboBox16.Enabled = True) then begin
          ModalResult := mrNone;
          Application.MessageBox('Выберите договор!', 'Ошибка', MB_ICONWARNING or MB_OK);
          Exit;
        end;
      end;
   6: begin //Акты
        Fcontract_id    := iif(cxLookupComboBox16.EditValue = null, -9, cxLookupComboBox16.EditValue);
        if (Fcontract_id = -9) AND (cxLookupComboBox16.Enabled = True) then begin
          ModalResult := mrNone;
          Application.MessageBox('Выберите договор!', 'Ошибка', MB_ICONWARNING or MB_OK);
          Exit;
        end;

        Q := TADOQuery.Create(nil);
        Q.Connection := FConnect;
        Q.SQL.Add('');

        Q.SQL.Add('SELECT	*');
        Q.SQL.Add('FROM	view_contract');
        Q.SQL.Add('WHERE	view_contract.firm_property_cod = ''1''');
        Q.SQL.Add('AND contract_id =' + IntToStr(Fcontract_id));
        Q.Open;
        if Q.RecordCount > 0 then
          Application.MessageBox('В модуле «Валютный контроль» документ перейдет в состояние «не отработан».', 'Ошибка', MB_ICONWARNING or MB_OK);
        Q.Free;

      end;
   7: begin //Техническая документация
        Fcontract_id    := iif(cxLookupComboBox16.EditValue = null, -9, cxLookupComboBox16.EditValue);
        if (Fcontract_id = -9) AND (cxLookupComboBox16.Enabled = True) then begin
          ModalResult := mrNone;
          Application.MessageBox('Выберите договор!', 'Ошибка', MB_ICONWARNING or MB_OK);
          Exit;
        end;
      end;
   8: begin //Доверенность
        Ffirm_id        := iif(cxLookupComboBox6.EditValue = null, -9, cxLookupComboBox6.EditValue);
        if (Ffirm_id = -9) AND (cxLookupComboBox6.Enabled = True) then begin
          ModalResult := mrNone;
          Application.MessageBox('Выберите контрагента!', 'Ошибка', MB_ICONWARNING or MB_OK);
          Exit;
        end;
      end;
   9: begin //Письмо
        Ffirm_id        := iif(cxLookupComboBox6.EditValue = null, -9, cxLookupComboBox6.EditValue);
        Fcontract_id    := iif(cxLookupComboBox3.EditValue = null, -9, cxLookupComboBox3.EditValue);
        if (Ffirm_id = -9) AND (cxLookupComboBox6.Enabled = True) then begin
          ModalResult := mrNone;
          Application.MessageBox('Выберите контрагента!', 'Ошибка', MB_ICONWARNING or MB_OK);
          Exit;
        end;
      end;
  10: begin //Ремонт вагонов
        Ffact_repair_id := iif(cxLookupComboBox1.EditValue = null, -9, cxLookupComboBox1.EditValue);
        if (Ffact_repair_id = -9) AND (cxLookupComboBox1.Enabled = True) then begin
          ModalResult := mrNone;
          Application.MessageBox('Выберите контрагента!', 'Ошибка', MB_ICONWARNING or MB_OK);
          Exit;
        end;
      end;
  11: begin //СФ ЦФТО
        Fzfto_score_id := iif(cxLookupComboBox4.EditValue = null, -9, cxLookupComboBox4.EditValue);
        if (Fzfto_score_id = -9) AND (cxLookupComboBox4.Enabled = True) then begin
          ModalResult := mrNone;
          Application.MessageBox('Выберите СФ ЦФТО!', 'Ошибка', MB_ICONWARNING or MB_OK);
          Exit;
        end;
      end;
  end;

  Screen.Cursor := crHourGlass;

  if FClientDS = nil then begin
      SP_BLOB_modify := TADOStoredProc.Create(nil);
      SP_BLOB_modify.Connection := FConnect;
      SP_BLOB_modify.ProcedureName := 'sp_BLOB_modify';
      SP_BLOB_modify.Parameters.Refresh;
      SP_BLOB_modify.Parameters.ParamByName('@doc_id'                    ).Value := iif(Fdoc_id = -9, null, Fdoc_id);
      SP_BLOB_modify.Parameters.ParamByName('@type_action'               ).Value := Ftype_action;
      SP_BLOB_modify.Parameters.ParamByName('@doc_type_cod'              ).Value := Fdoc_type_cod;
      SP_BLOB_modify.Parameters.ParamByName('@doc_folder_id'             ).Value := iif(Fdoc_folder_id = -9, null, Fdoc_folder_id);
      SP_BLOB_modify.Parameters.ParamByName('@doc_describe'              ).Value := cxMemo1.EditValue;
      SP_BLOB_modify.Parameters.ParamByName('@doc_location_FIO_users'    ).Value := cxButtonEdit5.EditValue;
      SP_BLOB_modify.Parameters.ParamByName('@doc_location_date'         ).Value := cxDateEdit6.EditValue;
      SP_BLOB_modify.Parameters.ParamByName('@sign_customer_id'          ).Value := cxLookupComboBox11.EditValue;
      SP_BLOB_modify.Parameters.ParamByName('@sign_self_id'              ).Value := cxLookupComboBox10.EditValue;
      SP_BLOB_modify.Parameters.ParamByName('@doc_cod'                   ).Value := cxTextEdit4.EditValue;
      SP_BLOB_modify.Parameters.ParamByName('@doc_location_id'           ).Value := cxLookupComboBox9.EditValue;
      SP_BLOB_modify.Parameters.ParamByName('@doc_image_date'            ).Value := cxDateEdit12.EditValue;
      SP_BLOB_modify.Parameters.ParamByName('@doc_location_FIO_users_id' ).Value := iif(Fdoc_location_FIO_users_id = -9, null, Fdoc_location_FIO_users_id);
      SP_BLOB_modify.Parameters.ParamByName('@doc_cod1'                  ).Value := null;
      SP_BLOB_modify.Parameters.ParamByName('@contract_id'               ).Value := iif(Fcontract_id = -9, null, Fcontract_id);
      SP_BLOB_modify.Parameters.ParamByName('@firm_id'                   ).Value := iif(Ffirm_id = -9, null, Ffirm_id);
      SP_BLOB_modify.Parameters.ParamByName('@invoice_id'                ).Value := iif(Finvoice_id = -9, null, Finvoice_id);
      SP_BLOB_modify.Parameters.ParamByName('@pretenzia_id'              ).Value := iif(Fpretenzia_id = -9, null, Fpretenzia_id);
      SP_BLOB_modify.Parameters.ParamByName('@fact_repair_id'            ).Value := iif(Ffact_repair_id = -9, null, Ffact_repair_id);
      SP_BLOB_modify.Parameters.ParamByName('@bargain_id'                ).Value := iif(Fbargain_id = -9, null, Fbargain_id);
      SP_BLOB_modify.Parameters.ParamByName('@doc_original_date'         ).Value := cxDateEdit3.EditValue;
      SP_BLOB_modify.Parameters.ParamByName('@doc_invoice_score_cod'     ).Value := cxTextEdit12.EditValue;
      SP_BLOB_modify.Parameters.ParamByName('@doc_kind_id'               ).Value := cxLookupComboBox8.EditValue;
      SP_BLOB_modify.Parameters.ParamByName('@zfto_score_id'             ).Value := iif(Fzfto_score_id = -9, null, Fzfto_score_id);
      SP_BLOB_modify.Parameters.ParamByName('@doc_date_end'              ).Value :=  cxDateEdit4.EditValue;
      if cxCheckBox2.Checked  then SP_BLOB_modify.Parameters.ParamByName('@num_arc_book'              ).Value :=  cxTextEdit1.EditValue;
      if cxCheckBox1.Checked  then SP_BLOB_modify.Parameters.ParamByName('@index_arc_book'            ).Value :=  cxComboBox1.EditValue;
      SP_BLOB_modify.Parameters.ParamByName('@firm_cod'                  ).Value :=  cxTextEdit2.EditValue;
      SP_BLOB_modify.Parameters.ParamByName('@str_doc_id'                ).Value := Fstr_doc_id;

      if OpenDialog1.Files.Count > 0 then begin
        for i:=0 to OpenDialog1.Files.Count - 1 do begin
          // ----- при обновлении документа файл передаётся пустым, если он не изменялся --------
          SP_BLOB_modify.Close;
          SP_BLOB_modify.Parameters.ParamByName('@doc_image').LoadFromFile(OpenDialog1.Files.Strings[i], ftBlob);
          SP_BLOB_modify.Parameters.ParamByName('@file_name').Value := ShortFileName(ExtractFileName(OpenDialog1.Files.Strings[i]), 100);
          try
            SP_BLOB_modify.ExecProc;
            Fdoc_id := SP_BLOB_modify.Parameters.ParamByName('@doc_id').Value
          except on E: Exception do
            Application.MessageBox(PChar(E.Message), 'Ошибка', MB_OK or MB_ICONERROR);
          end;

          if Fdoc_id = -9 then Application.MessageBox('НЕВОЗМОЖНО ВСТАВИТЬ НОВЫЙ ДОКУМЕНТ (1)', 'Внимание', MB_OK);
        end;
        SP_BLOB_modify.Free;
      end else if Ffiles_blob.Size <> 0 then begin
        // ----- при обновлении документа файл передаётся пустым, если он не изменялся --------
        SP_BLOB_modify.Close;
        SP_BLOB_modify.Parameters.ParamByName('@doc_image').LoadFromStream(Ffiles_blob, ftBlob);
        SP_BLOB_modify.Parameters.ParamByName('@file_name').Value := ShortFileName(Ffiles_name, 100);

        try
          SP_BLOB_modify.ExecProc;
          Fdoc_id := SP_BLOB_modify.Parameters.ParamByName('@doc_id').Value
        except on E: Exception do
          Application.MessageBox(PChar(E.Message), 'Ошибка', MB_OK or MB_ICONERROR);
        end;

        if Fdoc_id = -9 then Application.MessageBox('НЕВОЗМОЖНО ВСТАВИТЬ НОВЫЙ ДОКУМЕНТ (2)', 'Внимание', MB_OK);

        SP_BLOB_modify.Free;
      end else begin
        SP_BLOB_modify.Parameters.ParamByName('@doc_image').Value := null;
        SP_BLOB_modify.Parameters.ParamByName('@file_name').Value := null;
        try
          SP_BLOB_modify.ExecProc;
          Fdoc_id := SP_BLOB_modify.Parameters.ParamByName('@doc_id').Value
        except on E: Exception do
          Application.MessageBox(PChar(E.Message), 'Ошибка', MB_OK or MB_ICONERROR);
        end;

        if Fdoc_id = -9 then Application.MessageBox('НЕВОЗМОЖНО ВСТАВИТЬ НОВЫЙ ДОКУМЕНТ (3)', 'Внимание', MB_OK);
        SP_BLOB_modify.Free;
      end;


  end else begin
    if FClientDS.Locate('doc_id', Fdoc_id, []) then FClientDS.Edit
    else FClientDS.Append;

    FClientDS.FieldByName('doc_id'                    ).Value := iif(Fdoc_id = -9, null, Fdoc_id);
    FClientDS.FieldByName('doc_type_cod'              ).Value := Fdoc_type_cod;
    FClientDS.FieldByName('doc_folder_id'             ).Value := iif(Fdoc_folder_id = -9, null, Fdoc_folder_id);
    FClientDS.FieldByName('doc_describe'              ).Value := cxMemo1.EditValue;
    FClientDS.FieldByName('doc_location_FIO_users'    ).Value := cxButtonEdit5.EditValue;
    FClientDS.FieldByName('doc_location_date'         ).Value := cxDateEdit6.EditValue;
    FClientDS.FieldByName('sign_customer_id'          ).Value := cxLookupComboBox11.EditValue;
    FClientDS.FieldByName('sign_self_id'              ).Value := cxLookupComboBox10.EditValue;
    FClientDS.FieldByName('sign_customer_name'        ).Value := cxLookupComboBox11.Text;
    FClientDS.FieldByName('sign_self_name'            ).Value := cxLookupComboBox10.Text;
    FClientDS.FieldByName('doc_cod'                   ).Value := cxTextEdit4.EditValue;
    FClientDS.FieldByName('doc_location_id'           ).Value := cxLookupComboBox9.EditValue;
    FClientDS.FieldByName('doc_location_name'         ).Value := cxLookupComboBox9.Text;
    FClientDS.FieldByName('doc_image_date'            ).Value := cxDateEdit12.EditValue;
    FClientDS.FieldByName('doc_location_FIO_users_id' ).Value := iif(Fdoc_location_FIO_users_id = -9, null, Fdoc_location_FIO_users_id);
    FClientDS.FieldByName('doc_cod1'                  ).Value := null;
    FClientDS.FieldByName('contract_id'               ).Value := iif(Fcontract_id = -9, null, Fcontract_id);
    FClientDS.FieldByName('firm_id'                   ).Value := iif(Ffirm_id = -9, null, Ffirm_id);
    FClientDS.FieldByName('invoice_id'                ).Value := iif(Finvoice_id = -9, null, Finvoice_id);
    FClientDS.FieldByName('pretenzia_id'              ).Value := iif(Fpretenzia_id = -9, null, Fpretenzia_id);
    FClientDS.FieldByName('fact_repair_id'            ).Value := iif(Ffact_repair_id = -9, null, Ffact_repair_id);
    FClientDS.FieldByName('doc_original_date'         ).Value := cxDateEdit3.EditValue;
    FClientDS.FieldByName('doc_invoice_score_cod'     ).Value := cxTextEdit12.EditValue;
    FClientDS.FieldByName('doc_kind_id'               ).Value := cxLookupComboBox8.EditValue;
    FClientDS.FieldByName('doc_kind_name'             ).Value := cxLookupComboBox8.Text;
    FClientDS.FieldByName('zfto_score_id'             ).Value := iif(Fzfto_score_id = -9, null, Fzfto_score_id);

    Q := TADOQuery.Create(nil);
    Q.Connection := FConnect;
    Q.SQL.Add('SELECT TOP 1 inf_obj_name FROM inf_obj WHERE type_inf_id = -101 AND inf_obj_cod = ''' + Fdoc_type_cod + '''');
    Q.Open;
    FClientDS.FieldByName('doc_type_describe'         ).Value := Q.FieldByName('inf_obj_name').Value;
    FClientDS.FieldByName('doc_location_name'         ).Value := cxLookupComboBox9.Text;
    FClientDS.FieldByName('sign_customer_name'        ).Value := cxLookupComboBox11.Text;
    FClientDS.FieldByName('sign_self_name'            ).Value := cxLookupComboBox10.Text;
    Q.Free;

    if (OpenDialog1.FileName <> '') then begin
      TBlobField(FClientDS.FieldByName('doc_image_lzh')).LoadFromFile(OpenDialog1.FileName);
      FClientDS.FieldByName('file_name').Value := ShortFileName(ExtractFileName(OpenDialog1.FileName),100);
    end else begin
      FClientDS.FieldByName('doc_image_lzh').Value := Null;
      FClientDS.FieldByName('file_name'    ).Value := Null;
    end;

    FClientDS.Post;

    if FClientDS.FieldByName('doc_id').IsNull then  begin
      FClientDS.Edit;
      FClientDS.FieldByName('doc_id').Value := FClientDS.FieldByName('id').Value;
      FClientDS.Post;
    end;

    Fdoc_id := FClientDS.FieldByName('doc_id').Value;
  end;

  Screen.Cursor := crDefault;
end;

procedure TfmDocBlobAdd.cxButtonEdit2PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
type TFuncList = function (AppHand: THandle): Variant;
var
FPersonList: TFuncList;
     handle: THandle;
          v: Variant;
          Q: TADODataSet;
begin
  case AButtonIndex of
    0 : begin
        try
          handle := LoadLibrary('Tel_users.dll');
          @FPersonList := GetProcAddress(handle, 'GetPersonList');
          v := FPersonList(Application.Handle);
          FreeLibrary(handle);

          Q := TADODataSet.Create(nil);
          Q.Recordset := RecordsetFromXML(v[1]);

          fmFilter := TfmFilter.Create(0, Q, 'users_id', 'users_id', 'FIO_users' );
          fmFilter._SelectIndexColumn := 1;
          if fmFilter.ShowModal = mrOk then begin
            Fdoc_location_FIO_users_id := fmFilter.GetId;
            cxButtonEdit5.EditValue := fmFilter.GetName;
          end;
          Q.Free;

        except
          Q.Free;
          Application.MessageBox('Ошибка загрузки библиотеки телефонного справочника.', 'Ошибка', MB_ICONERROR or MB_OK);
        end;
      end;
    1 : begin
        ShowUsersDetail(Fdoc_location_FIO_users_id, '');
        end;
  end;
end;

procedure TfmDocBlobAdd.cxButtonEdit9PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
var            i : integer;
   str_file_name : string;
begin
  case AButtonIndex of
    0 : begin
        OpenDialog1.Filter := 'Все файлы|*.*';
        OpenDialog1.DefaultExt := '';
        // --- для ремонта вагонов --------
        if Fdoc_type_cod = '14' then OpenDialog1.Options := OpenDialog1.Options + [ofAllowMultiSelect];

        if OpenDialog1.Execute then begin
          str_file_name := '';
          for i:=0 to OpenDialog1.Files.Count -1 do
            str_file_name := str_file_name + '; ' + ExtractFileName(OpenDialog1.Files.Strings[i]);

          Delete(str_file_name, 1, 1);
          cxButtonEdit1.EditValue := str_file_name;
        end;

        end;
    1 : cxButtonEdit1.EditValue := '';
  end;
end;

procedure TfmDocBlobAdd.cxLookupComboBox16PropertiesEditValueChanged(Sender: TObject);
begin
  if Query_Contract.Locate('contract_id', cxLookupComboBox16.EditValue, []) then begin
    cxTextEdit6.EditValue := Query_Contract.FieldByName('contract_cod').Value;
    cxDateEdit2.EditValue := Query_Contract.FieldByName('date_begin').Value;
  end;

  case IndexText(Fdoc_type_cod, ['1','2','3','7','8','9','10','11','12','13','14','15']) of
   2: begin // Счет
        cxLookupComboBox28.EditValue := null;
        Query_Invoice.Close;
        Query_Invoice.Parameters.ParamByName('contract_id'  ).Value := cxLookupComboBox16.EditValue;
        Query_Invoice.Open;
        cxLookupComboBox28.EditValue := Query_Invoice.FieldByName('invoice_id').Value;
      end;
   4: begin // Претензия к контрагенту
        cxLookupComboBox2.EditValue := null;
        Query_Pretenzia.Close;
        Query_Pretenzia.Parameters.ParamByName('contract_id'  ).Value := cxLookupComboBox16.EditValue;
        Query_Pretenzia.Open;
        cxLookupComboBox2.EditValue := Query_Pretenzia.FieldByName('pretenzia_id').Value;
      end;
  end;
end;

procedure TfmDocBlobAdd.cxLookupComboBox1PropertiesEditValueChanged(Sender: TObject);
begin
  if Query_Repair.Locate('fact_repair_id', cxLookupComboBox1.EditValue, []) then begin
    cxTextEdit16.EditValue := Query_Repair.FieldByName('score_cod').Value;
    cxDateEdit22.EditValue := Query_Repair.FieldByName('score_date').Value;
  end;
end;

procedure TfmDocBlobAdd.cxLookupComboBox28PropertiesEditValueChanged(Sender: TObject);
begin
  if Query_Invoice.Locate('invoice_id', cxLookupComboBox28.EditValue, []) then begin
    cxDateEdit1.EditValue := Query_Invoice.FieldByName('invoice_date').Value;
  end;
end;

procedure TfmDocBlobAdd.cxLookupComboBox6PropertiesEditValueChanged(
  Sender: TObject);
begin
  Query_Contract.Close;
  Query_Contract.SQL.Clear;

  Query_Contract.SQL.Add('SELECT contract_id, contract_cod, date_begin, date_end');
  Query_Contract.SQL.Add('FROM view_contract_rights');
  Query_Contract.SQL.Add('WHERE date_end >= :date_end');
  Query_Contract.SQL.Add('AND firm_customer = :firm_customer');

  Query_Contract.Parameters.ParamByName('date_end'     ).Value := Now;
  Query_Contract.Parameters.ParamByName('firm_customer').Value := cxLookupComboBox6.EditValue;
  Query_Contract.Open;

  cxLookupComboBox3.EditValue := -9;
end;

procedure TfmDocBlobAdd.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Ffiles_blob.Free;
  FConnect.Free;
  Action := caFree;
end;

procedure TfmDocBlobAdd.SetEnabledContract(set_enabled: boolean);
begin
  cxLookupComboBox1.Enabled := set_enabled;
  cxLookupComboBox2.Enabled := set_enabled;
  cxLookupComboBox6.Enabled := set_enabled;
  cxLookupComboBox16.Enabled:= set_enabled;
  cxButton1.Enabled := set_enabled;
  cxButton2.Enabled := set_enabled;
  cxButton3.Enabled := set_enabled;
  cxButton4.Enabled := set_enabled;
end;

procedure TfmDocBlobAdd.SetClientDS(ClientDS: TClientDataSet);
begin
  FClientDS := ClientDS;
  cxLookupComboBox1.Enabled := False;
  cxLookupComboBox2.Enabled := False;
  cxLookupComboBox6.Enabled := False;
  cxLookupComboBox16.Enabled:= False;
  cxButton1.Enabled := False;
  cxButton2.Enabled := False;
  cxButton3.Enabled := False;
  cxButton4.Enabled := False;
end;

procedure TfmDocBlobAdd.SetDocType(doc_type_cod: string);
var Q: TADOQuery;
begin
  Fdoc_type_cod := doc_type_cod;

  Q := TADOQuery.Create(nil);
  Q.Connection := FConnect;
  Q.SQL.Add('SELECT * FROM inf_obj WHERE type_inf_id = -101 AND inf_obj_cod = ''' + Fdoc_type_cod + '''');
  Q.Open;

  Caption := Q.FieldByName('inf_obj_name').AsString;
  Panel4.Visible := False;
  Panel3.Visible := False;
  Panel11.Visible := False;
  Panel2.Visible := False;
  Panel7.Visible := False;
  Panel8.Visible := False;
  Panel5.Visible := False;
  Panel9.Visible := False;
  Panel6.Visible := False;



  case IndexText(Fdoc_type_cod, ['1','2','3','7','8','9','10','11','12','13','14','15']) of
     0: begin // Договор
          Panel4.Visible := True;

          // Открыть договор
          Query_Contract.Close;
          Query_Contract.Parameters.ParamByName('date_end'     ).Value := Now;
          Query_Contract.Parameters.ParamByName('type_contract').Value := 0;
          Query_Contract.Open;
          cxLookupComboBox16.EditValue := Query_Contract.FieldByName('contract_id').Value;
          cxTextEdit2.Text := Query_Contract.FieldByName('firm_customer').AsString;
        end;
     1: begin // Приложение
          Panel5.Visible := True;
          Panel4.Visible := True;

          // Открыть договор
          Query_Contract.Close;
          Query_Contract.Parameters.ParamByName('date_end'     ).Value := Now;
          Query_Contract.Parameters.ParamByName('type_contract').Value := 0;
          Query_Contract.Open;
          cxLookupComboBox16.EditValue := Query_Contract.FieldByName('contract_id').Value;
          cxTextEdit2.Text := Query_Contract.FieldByName('firm_customer').AsString;
        end;
     2: begin // Счет
          Panel7.Visible := True;
          Panel4.Visible := True;

          // Открыть договор
          Query_Contract.Close;
          Query_Contract.Parameters.ParamByName('date_end'     ).Value := Now;
          Query_Contract.Parameters.ParamByName('type_contract').Value := 0;
          Query_Contract.Open;
          cxLookupComboBox16.EditValue := Query_Contract.FieldByName('contract_id').Value;
          cxTextEdit2.Text := Query_Contract.FieldByName('firm_customer').AsString;

          // Открыть счет
          Query_Invoice.Close;
          Query_Invoice.Parameters.ParamByName('contract_id'  ).Value := cxLookupComboBox16.EditValue;
          Query_Invoice.Open;
          cxLookupComboBox28.EditValue := Query_Invoice.FieldByName('invoice_id').Value;
        end;
     3: begin // Карточка контрагента
          Panel11.Visible := True;
          Panel3.Visible  := True;

          // Открыть контрагент
          Query_Firm.Parameters[0].Value := 0;
          Query_Firm.Parameters[1].Value := 1;
          Query_Firm.Parameters[2].Value := 3;
          Query_Firm.Prepared;
          Query_Firm.Open;
          cxLookupComboBox6.EditValue := Query_Firm.FieldByName('firm_id').Value;
          cxTextEdit2.Text := Query_Firm.FieldByName('firm_id').AsString;
        end;
     4: begin // Претензия к контрагенту
          Panel6.Visible := True;
          Panel4.Visible := True;

          // Открыть договор
          Query_Contract.Close;
          Query_Contract.Parameters.ParamByName('date_end'     ).Value := Now;
          Query_Contract.Parameters.ParamByName('type_contract').Value := 0;
          Query_Contract.Open;

//          cxLookupComboBox16.EditValue := Query_Contract.FieldByName('contract_id').Value;
//          cxTextEdit2.Text := Query_Contract.FieldByName('firm_customer').AsString;
////
//          // Открыть претензию
//          Query_Pretenzia.Close;
//          Query_Pretenzia.Parameters.ParamByName('contract_id'  ).Value := cxLookupComboBox16.EditValue;
//          Query_Pretenzia.Open;
//          cxLookupComboBox2.EditValue := Query_Pretenzia.FieldByName('pretenzia_id').Value;
        end;
     5: begin //Прочие
          Panel5.Visible := True;
          Panel4.Visible := True;

          // Открыть договор
          Query_Contract.Close;
          Query_Contract.Parameters.ParamByName('date_end'     ).Value := Now;
          Query_Contract.Parameters.ParamByName('type_contract').Value := 0;
          Query_Contract.Open;
          cxLookupComboBox16.EditValue := Query_Contract.FieldByName('contract_id').Value;
          cxTextEdit2.Text := Query_Contract.FieldByName('firm_customer').AsString;
        end;
     6: begin //Акты
          Panel9.Visible := True;
          Panel5.Visible := True;
          Panel4.Visible := True;

          // Открыть договор
          Query_Contract.Close;
          Query_Contract.Parameters.ParamByName('date_end'     ).Value := Now;
          Query_Contract.Parameters.ParamByName('type_contract').Value := 0;
          Query_Contract.Open;
          cxLookupComboBox16.EditValue := Query_Contract.FieldByName('contract_id').Value;
          cxTextEdit2.Text := Query_Contract.FieldByName('firm_customer').AsString;
        end;
     7: begin //Техническая документация
          Panel5.Visible := True;
          Panel4.Visible := True;

          // Открыть договор
          Query_Contract.Close;
          Query_Contract.Parameters.ParamByName('date_end'     ).Value := Now;
          Query_Contract.Parameters.ParamByName('type_contract').Value := 0;
          Query_Contract.Open;
          cxLookupComboBox16.EditValue := Query_Contract.FieldByName('contract_id').Value;
          cxTextEdit2.Text := Query_Contract.FieldByName('firm_customer').AsString;
        end;
     8: begin //Доверенность
          Panel5.Visible := True;
          Label7.Visible := True;
          cxDateEdit4.Visible := True;
          cxTextEdit4.Width := 163;
          Panel3.Visible := True;
          // Открыть контрагент
          Query_Firm.Parameters[0].Value := 1;
          Query_Firm.Parameters[1].Value := 1;
          Query_Firm.Parameters[2].Value := 1;
          Query_Firm.Prepared;
          Query_Firm.Open;
          cxLookupComboBox6.EditValue := Query_Firm.FieldByName('firm_id').Value;
        end;
     9: begin //Письмо
          Panel5.Visible := True;
          Panel8.Visible := True;
          Panel3.Visible := True;
          // Открыть контрагент
          Query_Firm.Parameters[0].Value := 0;
          Query_Firm.Parameters[1].Value := 1;
          Query_Firm.Parameters[2].Value := 3;
          Query_Firm.Prepared;
          Query_Firm.Open;
          cxLookupComboBox6.EditValue := Query_Firm.FieldByName('firm_id').Value;
        end;
    10: begin //Ремонт вагонов
          Panel2.Visible := True;
          Query_Repair.Open;
          cxLookupComboBox1.EditValue := Query_Repair.FieldByName('fact_repair_id').Value;
          cxTextEdit2.Text := Query_Repair.FieldByName('firm_customer').AsString;
        end;
    11: begin //СФ ЦФТО
          Panel12.Visible := True;
          Panel14.Visible := False;
          Panel13.Visible := False;
          Panel15.Visible := False;
          cxLookupComboBox4.EditValue := NULL;
          cxDateEdit12.EditValue := Date;

          Query_ZFTO_SCORE.Open;
          //cxLookupComboBox4.EditValue := Query_ZFTO_SCORE.FieldByName('zfto_score_id').Value;
        end;
  end;

  Q.Free;
end;

procedure TfmDocBlobAdd.SetContractID(contract_id: integer);
var Q: TADOQuery;
begin
  Fcontract_id := contract_id;
  if Fcontract_id <> -9 then begin

    if Panel4.Visible then begin
      Q := TADOQuery.Create(nil);
      Q.Connection := FConnect;
      Q.SQL.Add('SELECT * FROM view_contract WHERE contract_id = ' + IntToStr(Fcontract_id));
      Q.Open;

      if Q.FieldByName('date_end').AsDateTime < Now then begin
        cxButton4Click(cxButton4);
      end;

      case Q.FieldByName('type_contract').AsInteger of
        0 : begin
            cxButton1.SpeedButtonOptions.Down := True;
            cxButton1Click(cxButton1);
            end;
        1 : begin
            cxButton2.SpeedButtonOptions.Down := True;
            cxButton1Click(cxButton2);
            end;
        2 : begin
            cxButton3.SpeedButtonOptions.Down := True;
            cxButton1Click(cxButton3);
            end;
      end;
      cxTextEdit2.Text := Q.FieldByName('firm_customer').AsString;
      Q.Free;
      cxLookupComboBox16.EditValue := iif(Fcontract_id = -9, null, Fcontract_id);
    end;

    case IndexText(Fdoc_type_cod, ['13']) of
       0: begin // Письмо
          Q := TADOQuery.Create(nil);
          Q.Connection := FConnect;
          Q.SQL.Add('SELECT * FROM view_contract WHERE contract_id = ' + IntToStr(Fcontract_id));
          Q.Open;
          SetFirmID(Q.FieldByName('firm_customer').AsInteger);
          cxLookupComboBox3.EditValue := iif(Fcontract_id = -9, null, Fcontract_id);
          cxTextEdit2.Text := Q.FieldByName('firm_customer').AsString;
       end;
    end;
  end;
end;

procedure TfmDocBlobAdd.SetFirmID(firm_id: integer);
begin
  Ffirm_id := firm_id;
  cxLookupComboBox6.EditValue := iif(Ffirm_id = -9, null, Ffirm_id);
end;

procedure TfmDocBlobAdd.SetInvoiceID(invoice_id: integer);
begin
  Finvoice_id := invoice_id;
  cxLookupComboBox28.EditValue := iif(Finvoice_id = -9, null, Finvoice_id);
end;

procedure TfmDocBlobAdd.SetPretenziaID(pretenzia_id: integer);
begin
  Fpretenzia_id := pretenzia_id;
  cxLookupComboBox2.EditValue := iif(Fpretenzia_id = -9, null, Fpretenzia_id);
end;

procedure TfmDocBlobAdd.SetFactRepairID(fact_repair_id: integer);
begin
  Ffact_repair_id := fact_repair_id;
  cxLookupComboBox1.EditValue := iif(Ffact_repair_id = -9, null, Ffact_repair_id);
end;

procedure TfmDocBlobAdd.SetZftoScoreID(zfto_score_id: integer);
begin
  Fzfto_score_id := zfto_score_id;
  cxCheckBox3.Checked := True;
  cxLookupComboBox4.EditValue := iif(Fzfto_score_id = -9, null, Fzfto_score_id);
  cxDateEdit12.EditValue := Date;
end;

procedure TfmDocBlobAdd.SetGroupUpdate(str_doc_id: string);
begin
  Fset_group_upd := False;
  Fstr_doc_id := str_doc_id;
  Ftype_action := 3;

  Panel8.Visible    := False;
  Panel2.Visible    := False;
  Panel3.Visible    := False;
  Panel4.Visible    := False;
  Panel5.Visible    := False;
  Panel6.Visible    := False;
  Panel7.Visible    := False;
  Panel8.Visible    := False;
  Panel9.Visible    := False;
  Panel11.Visible   := False;
  Panel12.Visible   := False;
  Panel26.Visible   := False;
  Panel14.Visible   := False;
  Panel13.Visible   := False;
  cxCheckBox1.Visible := True;
  cxCheckBox2.Visible := True;

  Caption := 'Групповая обработка документов [' + str_doc_id + ']';
end;

procedure TfmDocBlobAdd.cxCheckBox1PropertiesEditValueChanged(Sender: TObject);
begin
    cxComboBox1.Enabled := cxCheckBox2.EditingValue;
end;

procedure TfmDocBlobAdd.cxCheckBox2PropertiesEditValueChanged(Sender: TObject);
begin
  cxTextEdit1.Enabled := cxCheckBox2.EditingValue;
end;

procedure TfmDocBlobAdd.cxCheckBox3PropertiesEditValueChanged(Sender: TObject);
begin
  cxLookupComboBox4.Enabled := cxCheckBox3.Checked;
end;

procedure TfmDocBlobAdd.SetParamFromClientDS(ClientDS: TClientDataSet);
var Q: TADOQuery;
begin
  if ClientDS.FindField('invoice_id') <> nil then begin
    if Query_Invoice.Locate('invoice_id', ClientDS.FieldByName('invoice_id').AsInteger, []) then begin
      cxLookupComboBox28.EditValue := Query_Invoice.FieldByName('invoice_id').Value;
    end;
  end;

  if ClientDS.FindField('bargain_id') <> nil then begin
    Fbargain_id := iif(ClientDS.FieldByName('bargain_id').IsNull, -9, ClientDS.FieldByName('bargain_id').AsInteger);
  end;

  if ClientDS.FindField('doc_image') <> nil then begin
    Ffiles_blob.Clear;
    TBlobField(ClientDS.FieldByName('doc_image')).SaveToStream(Ffiles_blob);
  end;

  if ClientDS.FindField('file_name') <> nil then begin
    Ffiles_name  := ClientDS.FieldByName('file_name').AsString;
    cxButtonEdit1.EditValue := Ffiles_name;
  end;

  if ClientDS.FindField('doc_describe') <> nil then begin
    cxMemo1.Text := ClientDS.FieldByName('doc_describe').AsString;
  end;

  if ClientDS.FindField('doc_location_FIO_users_id') <> nil then begin
    if not ClientDS.FieldByName('doc_location_FIO_users_id').IsNull then begin
      Fdoc_location_FIO_users_id := ClientDS.FieldByName('doc_location_FIO_users_id').AsInteger;
      cxButtonEdit5.Text := ClientDS.FieldByName('doc_location_FIO_users').AsString;
    end;
  end;

  if ClientDS.FindField('sign_customer_cod') <> nil then begin
    Q := TADOQuery.Create(nil);
    Q.Connection := FConnect;
    Q.SQL.Add('SELECT * FROM inf_obj WHERE type_inf_id = 37 and inf_obj_cod = ''' + ClientDS.FindField('sign_customer_cod').AsString + '''');
    Q.Open;
    cxLookupComboBox11.EditValue := Q.FieldByName('inf_obj_id').Value;
    Q.Free;
  end;

  if ClientDS.FindField('sign_self_cod') <> nil then begin
    Q := TADOQuery.Create(nil);
    Q.Connection := FConnect;
    Q.SQL.Add('SELECT * FROM inf_obj WHERE type_inf_id = 37 and inf_obj_cod = ''' + ClientDS.FindField('sign_self_cod').AsString + '''');
    Q.Open;
    cxLookupComboBox10.EditValue := Q.FieldByName('inf_obj_id').Value;
    Q.Free;
  end;

  if ClientDS.FindField('doc_cod') <> nil then begin
    cxTextEdit4.Text := ClientDS.FieldByName('doc_cod').AsString;
  end;

  if ClientDS.FindField('doc_image_date') <> nil then begin
    cxDateEdit12.Date := ClientDS.FieldByName('doc_image_date').AsDateTime;
  end;

  if ClientDS.FindField('doc_location_date') <> nil then begin
    cxDateEdit6.Date := ClientDS.FieldByName('doc_location_date').AsDateTime;
  end;

  if ClientDS.FindField('doc_date_end') <> nil then begin
    cxDateEdit4.Date := ClientDS.FieldByName('doc_date_end').AsDateTime;
  end;

  if ClientDS.FindField('doc_location_cod') <> nil then begin
    Q := TADOQuery.Create(nil);
    Q.Connection := FConnect;
    Q.SQL.Add('SELECT * FROM inf_obj WHERE type_inf_id = 108 and inf_obj_cod = ''' + ClientDS.FindField('doc_location_cod').AsString + '''');
    Q.Open;
    cxLookupComboBox9.EditValue := Q.FieldByName('inf_obj_id').Value;
    Q.Free;
  end;


end;

end.
