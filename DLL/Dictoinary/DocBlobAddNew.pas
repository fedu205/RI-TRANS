unit DocBlobAddNew;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore, dxSkinBlack,
  dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom,
  dxSkinDarkSide, dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMetropolis,
  dxSkinMetropolisDark, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue,
  dxSkinOffice2010Silver, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray,
  dxSkinOffice2013White, dxSkinOffice2016Colorful, dxSkinOffice2016Dark,
  dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus,
  dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008,
  dxSkinTheAsphaltWorld, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue, Vcl.Menus, Vcl.ComCtrls, dxCore, cxDateUtils,
  cxDropDownEdit, cxCalendar, cxTextEdit, Vcl.StdCtrls, cxButtons, cxMaskEdit,
  cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, Vcl.ExtCtrls, Data.DB,
  Data.Win.ADODB, Default, Raznoe, Datasnap.DBClient, StrUtils, Vcl.Buttons,
  cxMemo, cxCheckBox, cxButtonEdit, cxStyles, dxSkinscxPCPainter, cxCustomData,
  cxFilter, cxData, cxDataStorage, cxNavigator, cxDBData, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridBandedTableView,
  cxGridDBBandedTableView, cxClasses, cxGridLevel, cxGrid, dxSkinsdxBarPainter,
  dxBar, System.ImageList, Vcl.ImgList, Other, cxPropertiesStore,
  cxDataControllerConditionalFormattingRulesManagerDialog, cxImageList,
  dxSkinTheBezier, dxDateRanges, dxSkinOffice2019Colorful;

type
  TfmDocBlobAddNew = class(TForm)
    Query_Contract: TADOQuery;
    DS_Contract: TDataSource;
    Panel4: TPanel;
    Label40: TLabel;
    Label80: TLabel;
    Label83: TLabel;
    cxLookupComboBox16: TcxLookupComboBox;
    cxButton1: TcxButton;
    cxButton2: TcxButton;
    cxButton3: TcxButton;
    cxButton4: TcxButton;
    cxTextEdit6: TcxTextEdit;
    cxDateEdit2: TcxDateEdit;
    Panel1: TPanel;
    BitBtn2: TBitBtn;
    BitBtn1: TBitBtn;
    Panel5: TPanel;
    Label16: TLabel;
    Label7: TLabel;
    cxTextEdit4: TcxTextEdit;
    cxDateEdit4: TcxDateEdit;
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
    Panel15: TPanel;
    Label9: TLabel;
    Label8: TLabel;
    Label10: TLabel;
    cxTextEdit2: TcxTextEdit;
    cxTextEdit1: TcxTextEdit;
    cxComboBox1: TcxComboBox;
    cxCheckBox2: TcxCheckBox;
    cxCheckBox1: TcxCheckBox;
    GroupBox1: TGroupBox;
    cxMemo1: TcxMemo;
    Query_Sign_Self: TADOQuery;
    Query_Sign_Customer: TADOQuery;
    Query_Location: TADOQuery;
    DS_Location: TDataSource;
    DS_Sign_Customer: TDataSource;
    DS_Sign_Self: TDataSource;
    Panel2: TPanel;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    cxGrid1DBBandedTableView1: TcxGridDBBandedTableView;
    dxBarManager1: TdxBarManager;
    ClientDS_Files: TClientDataSet;
    DS_Files: TDataSource;
    ClientDS_Filesfiles_name: TStringField;
    ClientDS_Filesfiles_date: TDateTimeField;
    ClientDS_Filesset_main: TBooleanField;
    ClientDS_Filesdoc_detail_id: TIntegerField;
    ClientDS_Filesfiles_id: TAutoIncField;
    ClientDS_Filesdoc_image_lzh: TBlobField;
    cxGrid1DBBandedTableView1files_id: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1doc_detail_id: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1files_name: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1files_date: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1set_main: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1doc_image_lzh: TcxGridDBBandedColumn;
    dxBarPopupMenu1: TdxBarPopupMenu;
    dxBarButton1: TdxBarButton;
    dxBarSubItem1: TdxBarSubItem;
    dxBarButton2: TdxBarButton;
    dxBarButton3: TdxBarButton;
    dxBarButton4: TdxBarButton;
    dxBarButton5: TdxBarButton;
    dxBarButton6: TdxBarButton;
    cxImageList1: TcxImageList;
    ClientDS_Filesfiles_type_id: TIntegerField;
    ClientDS_Filesfiles_type_name: TStringField;
    cxGrid1DBBandedTableView1files_type_name: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1files_type_id: TcxGridDBBandedColumn;
    cxPropertiesStore1: TcxPropertiesStore;
    Panel3: TPanel;
    Label15: TLabel;
    cxLookupComboBox6: TcxLookupComboBox;
    Query_Firm: TADOQuery;
    DS_Firm: TDataSource;
    Query_ZFTO_SCORE: TADOQuery;
    DS_ZFTO_SCORE: TDataSource;
    Panel12: TPanel;
    Label6: TLabel;
    cxCheckBox3: TcxCheckBox;
    cxLookupComboBox4: TcxLookupComboBox;
    procedure cxButton4Click(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure cxLookupComboBox16PropertiesEditValueChanged(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cxGrid1DBBandedTableView1FilterOnChanged(Sender: TObject);
    procedure cxGrid1DBBandedTableView1CustomDrawCell(
      Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
      AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
    procedure cxGrid1DBBandedTableView1CustomDrawColumnHeader(
      Sender: TcxGridTableView; ACanvas: TcxCanvas;
      AViewInfo: TcxGridColumnHeaderViewInfo; var ADone: Boolean);
    procedure cxGrid1DBBandedTableView1FocusedItemChanged(
      Sender: TcxCustomGridTableView; APrevFocusedItem,
      AFocusedItem: TcxCustomGridTableItem);
    procedure cxGrid1DBBandedTableView1KeyPress(Sender: TObject; var Key: Char);
    procedure dxBarButton1Click(Sender: TObject);
    procedure dxBarButton2Click(Sender: TObject);
    procedure dxBarButton3Click(Sender: TObject);
    procedure dxBarButton4Click(Sender: TObject);
    procedure dxBarButton6Click(Sender: TObject);
    procedure dxBarButton5Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure cxCheckBox3PropertiesEditValueChanged(Sender: TObject);
  private
    Fdoc_id         : integer;
    Fdoc_type_cod   : string;
    Fdoc_folder_id  : integer;
    Fusr_pwd        : PUser_pwd;
    FConnect        : TADOConnection;

    Fcontract_id : integer;
    Fglobal_id   : integer;
    Ffirm_id     : integer;
    Fzfto_score_id : integer;

    procedure SetDocType(doc_type_cod: string);
    procedure SetContractID(contract_id: integer);
    procedure SetFirmID(firm_id: integer);
    procedure SetZftoScoreID(zfto_score_id: integer);

    procedure SetUpdate(doc_id: integer);
  public
    constructor Create(AOwner: TApplication; usr_pwd: PUser_pwd);
  published
    property _GetDocId       : integer read Fdoc_id;
    property _SetDocType     : string  write SetDocType;
    property _SetDocFolderID : integer write Fdoc_folder_id;
    property _SetUpdate      : integer write SetUpdate;
    property _SetContractID  : integer write SetContractID;
    property _SetFirmID      : integer write SetFirmID;
    property _SetZftoScoreID : integer write SetZftoScoreID;
  end;

var
  fmDocBlobAddNew: TfmDocBlobAddNew;

function CreateWndDocAddNew(AppHand: THandle; doc_id: integer; global_id: integer; doc_type_cod: string; ClientDS: TClientDataSet; usr_pwd: PUser_pwd):variant; export;

implementation

{$R *.dfm}

function CreateWndDocAddNew(AppHand: THandle; doc_id: integer; global_id: integer; doc_type_cod: string; ClientDS: TClientDataSet; usr_pwd: PUser_pwd): variant;
var Connect : TADOConnection;
          Q : TADOQuery;
begin
//  Connect := TADOConnection.Create(nil);
//  Connect.ConnectionString := 'Persist Security Info=True;Provider=SQLOLEDB.1;User ID='+usr_pwd^.user_name+';Password='+usr_pwd^.user_pass+';Initial Catalog='+usr_pwd^.catalog+';Data Source='+usr_pwd^.server+';';
//  Connect.KeepConnection   := False;
//  Connect.LoginPrompt      := False;
//  try
//    fmDocBlobAdd := TfmDocBlobAdd.Create(Application, usr_pwd);
//
//    Q := TADOQuery.Create(nil);
//    Q.Connection := Connect;
//    Q.SQL.Add('SELECT	global_id, object_physic_name ');
//    Q.SQL.Add('FROM	  global_id LEFT JOIN object_base ON global_id.object_id = object_base.object_id');
//    Q.SQL.Add('WHERE	global_id = ' + IntToStr(global_id));
//    Q.Open;
//
//    fmDocBlobAdd._SetDocType := doc_type_cod;
//    case IndexText(Q.FieldByName('object_physic_name').AsString, ['CONTRACT','FIRM','INVOICE','PRETENZIA','FACT_REPAIR','ZFTO_SCORE']) of
//      0: fmDocBlobAdd._SetContractID   := global_id;
//      1: fmDocBlobAdd._SetFirmID       := global_id;
//      2: fmDocBlobAdd._SetInvoiceID    := global_id;
//      3: fmDocBlobAdd._SetPretenziaID  := global_id;
//      4: fmDocBlobAdd._SetFactRepairID := global_id;
//      5: fmDocBlobAdd._SetZftoScoreID  := global_id;
//    end;
//    Q.Free;
//
//    if ClientDS <> nil then begin
//      fmDocBlobAdd._SetParamFromClientDS := ClientDS;
//    end;
//
//    if doc_id <> -9 then fmDocBlobAdd._SetUpdate := doc_id;
//
//    if fmDocBlobAdd.ShowModal = mrOk then begin
//      result := VarArrayOf([fmDocBlobAdd._GetDocId]);
//    end else begin
//      result := VarArrayOf([-9]);
//    end;
//  finally
//    fmDocBlobAdd.Free;
//  end;
end;

procedure TfmDocBlobAddNew.BitBtn2Click(Sender: TObject);
var sp_BLOB_modify : TADOStoredProc;
s : string;
begin
  if cxCheckBox3.Checked then
    Fzfto_score_id  := iif(cxLookupComboBox4.EditValue <> null, cxLookupComboBox4.EditValue, -9)
  else
    Fzfto_score_id  := -9;

  Ffirm_id        := iif(cxLookupComboBox6.EditValue <> null, cxLookupComboBox6.EditValue, -9);
  Fcontract_id    := iif(cxLookupComboBox16.EditValue <> null, cxLookupComboBox16.EditValue, -9);

  sp_BLOB_modify := TADOStoredProc.Create(nil);
  sp_BLOB_modify.Connection := FConnect;
  sp_BLOB_modify.ProcedureName := 'sp_BLOB_modify';
  sp_BLOB_modify.Parameters.Refresh;

  sp_BLOB_modify.Parameters.ParamByName('@doc_id'     ).Value := iif(Fdoc_id=-9, null, Fdoc_id);
  sp_BLOB_modify.Parameters.ParamByName('@type_action').Value := iif(Fdoc_id=-9, 0, 1);
  sp_BLOB_modify.Parameters.ParamByName('@contract_id').Value := iif(Fcontract_id = -9, null, Fcontract_id);
  sp_BLOB_modify.Parameters.ParamByName('@firm_id'    ).Value := iif(Ffirm_id = -9, null, Ffirm_id);
  sp_BLOB_modify.Parameters.ParamByName('@global_id'  ).Value := iif(Fglobal_id = -9, null, Fglobal_id);
  sp_BLOB_modify.Parameters.ParamByName('@zfto_score_id').Value := iif(Fzfto_score_id = -9, null, Fzfto_score_id);
  sp_BLOB_modify.Parameters.ParamByName('@doc_type_cod'          ).Value := Fdoc_type_cod;
  sp_BLOB_modify.Parameters.ParamByName('@doc_folder_id'         ).Value := iif(Fdoc_folder_id = -9, null, Fdoc_folder_id);
  sp_BLOB_modify.Parameters.ParamByName('@doc_describe'          ).Value := cxMemo1.EditValue;
  sp_BLOB_modify.Parameters.ParamByName('@doc_location_FIO_users').Value := cxButtonEdit5.EditValue;
  sp_BLOB_modify.Parameters.ParamByName('@doc_location_date'     ).Value := cxDateEdit6.EditValue;
  sp_BLOB_modify.Parameters.ParamByName('@sign_customer_id'      ).Value := cxLookupComboBox11.EditValue;
  sp_BLOB_modify.Parameters.ParamByName('@sign_self_id'          ).Value := cxLookupComboBox10.EditValue;
  sp_BLOB_modify.Parameters.ParamByName('@doc_cod'               ).Value := cxTextEdit4.EditValue;
  sp_BLOB_modify.Parameters.ParamByName('@doc_location_id'       ).Value := cxLookupComboBox9.EditValue;
  sp_BLOB_modify.Parameters.ParamByName('@doc_image_date'        ).Value := cxDateEdit4.EditValue;
  sp_BLOB_modify.Parameters.ParamByName('@num_arc_book'          ).Value := cxTextEdit1.EditValue;
  sp_BLOB_modify.Parameters.ParamByName('@index_arc_book'        ).Value := cxComboBox1.EditValue;
  sp_BLOB_modify.Parameters.ParamByName('@doc_blob_detail_xml'   ).Value := DataXMLToSQL(ClientDS_Files);
  sp_BLOB_modify.ExecProc;

  sp_BLOB_modify.Free;
end;

constructor TfmDocBlobAddNew.Create(AOwner: TApplication; usr_pwd: PUser_pwd);
begin
  inherited Create(AOwner);
  Screen.Cursor := crHourglass;

  Fusr_pwd := usr_pwd;
  Fdoc_id        := -9;
  Fdoc_type_cod  := '';
  Fdoc_folder_id := -9;

  Fcontract_id   := -9;
  Fglobal_id     := -9;
  Ffirm_id       := -9;

  FConnect := TADOConnection.Create(nil);
  FConnect.ConnectionString := 'Persist Security Info=True;Provider=SQLOLEDB.1;User ID='+usr_pwd^.user_name+';Password='+usr_pwd^.user_pass+';Initial Catalog='+usr_pwd^.catalog+';Data Source='+usr_pwd^.server+';';
  FConnect.KeepConnection   := False;
  FConnect.LoginPrompt      := False;

  Query_Contract.Connection      := FConnect;
  Query_Sign_Self.Connection     := FConnect;
  Query_Sign_Customer.Connection := FConnect;
  Query_Location.Connection      := FConnect;
  Query_Firm.Connection          := FConnect;
  Query_ZFTO_SCORE.Connection    := FConnect;

  Query_Sign_Customer.Open;
  Query_Sign_Self.Open;
  Query_Sign_Self.Locate('inf_obj_cod','003',[]);
  cxLookupComboBox10.EditValue := Query_Sign_Self.FieldByName('inf_obj_id').Value;
  Query_Sign_Customer.Locate('inf_obj_cod','003',[]);
  cxLookupComboBox11.EditValue := Query_Sign_Customer.FieldByName('inf_obj_id').Value;
  Query_Location.Open;

  ClientDS_Files.CreateDataSet;
  ClientDS_Files.LogChanges := False;


  Screen.Cursor := crDefault;
end;

procedure TfmDocBlobAddNew.SetUpdate(doc_id: integer);
var Q: TADOQuery;
begin
  Screen.Cursor := crHourGlass;
  Fdoc_id := doc_id;

  Q := TADOQuery.Create(nil);
  Q.Connection := FConnect;
  Q.SQL.Add('SELECT * FROM view_doc_blob WHERE doc_id = ' + IntToStr(Fdoc_id));
  Q.Open;

  Fcontract_id   := iif(Q.FieldByName('contract_id').IsNull, -9, Q.FieldByName('contract_id').Value);
  Ffirm_id       := iif(Q.FieldByName('firm_id').IsNull, -9, Q.FieldByName('firm_id').Value);
  Fglobal_id     := iif(Q.FieldByName('global_id').IsNull, -9, Q.FieldByName('global_id').Value);
  Fzfto_score_id := iif(Q.FieldByName('zfto_score_id').IsNull, -9, Q.FieldByName('zfto_score_id').Value);

  _SetDocType    := Q.FieldByName('doc_type_cod').AsString;
  Fdoc_folder_id := iif(Q.FieldByName('doc_folder_id').IsNull, -9, Q.FieldByName('doc_folder_id').Value);
  _SetContractID := Fcontract_id;
  _SetFirmID     := Ffirm_id;
  _SetZftoScoreId:= Fzfto_score_id;

  cxMemo1.EditValue            := Q.FieldByName('doc_describe').Value;
  cxButtonEdit5.EditValue      := Q.FieldByName('doc_location_FIO_users').Value;
  cxDateEdit6.EditValue        := Q.FieldByName('doc_location_date').Value;
  cxLookupComboBox11.EditValue := Q.FieldByName('sign_customer_id').Value;
  cxLookupComboBox10.EditValue := Q.FieldByName('sign_self_id').Value;
  cxTextEdit4.EditValue        := Q.FieldByName('doc_cod').Value;
  cxLookupComboBox9.EditValue  := Q.FieldByName('doc_location_id').Value;
  cxDateEdit4.EditValue        := Q.FieldByName('doc_image_date').Value;
  cxTextEdit1.EditValue        := Q.FieldByName('num_arc_book').Value;
  cxComboBox1.EditValue        := Q.FieldByName('index_arc_book').Value;


  Q.SQL.Clear;
  Q.SQL.Add('SELECT * FROM view_doc_blob_detail WHERE doc_id = ' + IntToStr(Fdoc_id));
  Q.Open;
  while not Q.Eof do begin

    ClientDS_Files.Append;
    ClientDS_Files.FieldByName('doc_detail_id'  ).Value := Q.FieldByName('doc_detail_id').Value;
    ClientDS_Files.FieldByName('set_main'       ).Value := Q.FieldByName('set_main').Value;
    ClientDS_Files.FieldByName('files_name'     ).Value := Q.FieldByName('files_name').Value;
    ClientDS_Files.FieldByName('files_date'     ).Value := Q.FieldByName('files_date').Value;
    ClientDS_Files.FieldByName('files_type_id'  ).Value := Q.FieldByName('files_type_id').Value;
    ClientDS_Files.FieldByName('files_type_name').Value := Q.FieldByName('files_type_name').Value;
    ClientDS_Files.Post;

    Q.Next;
  end;

  Q.Free;
  Screen.Cursor :=  crDefault;
end;

procedure TfmDocBlobAddNew.SetZftoScoreID(zfto_score_id: integer);
begin
  Fzfto_score_id := zfto_score_id;
  if Fzfto_score_id <> -9 then begin
    cxCheckBox3.Checked := True;
    cxLookupComboBox4.EditValue := iif(Fzfto_score_id = -9, null, Fzfto_score_id);
  end;
end;

procedure TfmDocBlobAddNew.SetFirmID(firm_id: integer);
begin
  Ffirm_id := firm_id;
  if Ffirm_id <> -9 then begin
    cxLookupComboBox6.EditValue := iif(Ffirm_id = -9, null, Ffirm_id);
  end;
end;

procedure TfmDocBlobAddNew.SetContractID(contract_id: integer);
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

  end;
end;


procedure TfmDocBlobAddNew.SetDocType(doc_type_cod: string);
begin
  Fdoc_type_cod := doc_type_cod;
  case IndexText(Fdoc_type_cod, ['18', '20']) of
    0: begin // ¿ÍÚ ›÷œ
          Panel3.Visible := False;
          Panel4.Visible := True;
          Query_Contract.Close;
          Query_Contract.Parameters.ParamByName('date_end'     ).Value := Now;
          Query_Contract.Parameters.ParamByName('type_contract').Value := 0;
          Query_Contract.Open;
          cxLookupComboBox16.EditValue := Query_Contract.FieldByName('contract_id').Value;
          cxTextEdit2.Text := Query_Contract.FieldByName('firm_customer').AsString;
       end;
    1: begin // —\Ù ›÷œ
          Panel4.Visible := False;
          Panel3.Visible := True;
          Panel12.Visible := True;

          Query_ZFTO_SCORE.Open;
          Query_Firm.Open;
          cxLookupComboBox6.EditValue := Query_Firm.FieldByName('firm_id').Value;
       end;
  end;
end;

procedure TfmDocBlobAddNew.cxButton1Click(Sender: TObject);
begin
  Screen.Cursor := crHourGlass;

  Query_Contract.Close;
  Query_Contract.Parameters.ParamByName('type_contract').Value := TcxButton(Sender).Tag;

  if Query_Contract.Parameters.ParamByName('date_end').Value = null then
    Query_Contract.Parameters.ParamByName('date_end').Value := Now;
  Query_Contract.Open;

  cxLookupComboBox16.EditValue := Query_Contract['contract_id'];
  cxLookupComboBox16PropertiesEditValueChanged(cxLookupComboBox16);

  Screen.Cursor := crDefault;
end;

procedure TfmDocBlobAddNew.cxButton4Click(Sender: TObject);
begin
  Screen.Cursor := crHourGlass;

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

  Screen.Cursor := crDefault;
end;

procedure TfmDocBlobAddNew.cxCheckBox3PropertiesEditValueChanged(Sender: TObject);
begin
  cxLookupComboBox4.Enabled := cxCheckBox3.Checked;
end;

procedure TfmDocBlobAddNew.cxGrid1DBBandedTableView1CustomDrawCell(Sender: TcxCustomGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
	if AViewInfo.GridRecord.Selected or AViewInfo.GridRecord.Focused then begin
		ACanvas.Brush.Color := clNavy;
		ACanvas.Font.Color := clWhite;
		if AViewInfo.Focused then ACanvas.Brush.Color := clBlue;
	end;
end;

procedure TfmDocBlobAddNew.cxGrid1DBBandedTableView1CustomDrawColumnHeader(Sender: TcxGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxGridColumnHeaderViewInfo; var ADone: Boolean);
begin
	if AViewInfo.Column.Focused then begin
		ACanvas.Brush.Color := clNavy;
		ACanvas.Font.Color := clWhite;
	end;
end;

procedure TfmDocBlobAddNew.cxGrid1DBBandedTableView1FilterOnChanged(Sender: TObject);
begin
	DrawcxGridColumnOnFiltered(Sender);
end;

procedure TfmDocBlobAddNew.cxGrid1DBBandedTableView1FocusedItemChanged(Sender: TcxCustomGridTableView; APrevFocusedItem, AFocusedItem: TcxCustomGridTableItem);
begin
	cxGrid1DBBandedTableView1.Painter.Invalidate;
end;

procedure TfmDocBlobAddNew.cxGrid1DBBandedTableView1KeyPress(Sender: TObject; var Key: Char);
begin
	FilterColumnGridOnKeyPress(cxGrid1DBBandedTableView1, Key);
end;

procedure TfmDocBlobAddNew.cxLookupComboBox16PropertiesEditValueChanged(Sender: TObject);
begin
  if Query_Contract.Locate('contract_id', cxLookupComboBox16.EditValue, []) then begin
    cxTextEdit6.EditValue := Query_Contract.FieldByName('contract_cod').Value;
    cxDateEdit2.EditValue := Query_Contract.FieldByName('date_begin').Value;
  end;

  case IndexText(Fdoc_type_cod, ['1','2','3','7','8','9','10','11','12','13','14','15']) of
   2: begin // —˜ÂÚ
//        cxLookupComboBox28.EditValue := null;
//        Query_Invoice.Close;
//        Query_Invoice.Parameters.ParamByName('contract_id'  ).Value := cxLookupComboBox16.EditValue;
//        Query_Invoice.Open;
//        cxLookupComboBox28.EditValue := Query_Invoice.FieldByName('invoice_id').Value;
      end;
   4: begin // œÂÚÂÌÁËˇ Í ÍÓÌÚ‡„ÂÌÚÛ
//        cxLookupComboBox2.EditValue := null;
//        Query_Pretenzia.Close;
//        Query_Pretenzia.Parameters.ParamByName('contract_id'  ).Value := cxLookupComboBox16.EditValue;
//        Query_Pretenzia.Open;
//        cxLookupComboBox2.EditValue := Query_Pretenzia.FieldByName('pretenzia_id').Value;
      end;
  end;

end;

procedure TfmDocBlobAddNew.dxBarButton1Click(Sender: TObject);
begin
	PrintcxGrid(cxGrid1DBBandedTableView1);
end;

procedure TfmDocBlobAddNew.dxBarButton2Click(Sender: TObject);
begin
	SetdxDBGridColumns(cxGrid1DBBandedTableView1);
end;

procedure TfmDocBlobAddNew.dxBarButton3Click(Sender: TObject);
begin
	cxGrid1DBBandedTableView1.OptionsView.GroupByBox := not cxGrid1DBBandedTableView1.OptionsView.GroupByBox;
end;

procedure TfmDocBlobAddNew.dxBarButton4Click(Sender: TObject);
var OpenDialog : TOpenDialog;
             i : integer;
      file_age : LongInt;
begin
  OpenDialog := TOpenDialog.Create(self);
  OpenDialog.Filter := '¬ÒÂ Ù‡ÈÎ˚|*.*';
  OpenDialog.DefaultExt := '';
  OpenDialog.Options := [ofHideReadOnly, ofAllowMultiSelect, ofEnableSizing];
  if OpenDialog.Execute then begin
    Screen.Cursor := crHourglass;
    for i := 0 to OpenDialog.Files.Count - 1 do begin
      ShowTextMessage('«‡„ÛÁÍ‡ Ù‡ÈÎÓ‚...' + #10 + 'ŒÒÚ‡ÎÓÒ¸ ' + IntToStr(OpenDialog.Files.Count - i) + ' ...', False);

      file_age := FileAge(OpenDialog.Files.Strings[i]);

      ClientDS_Files.Append;
      ClientDS_Files.FieldByName('doc_detail_id').Value := null;
      ClientDS_Files.FieldByName('set_main'     ).Value := False;
      ClientDS_Files.FieldByName('files_name'   ).Value := ShortFileName(OpenDialog.Files.Strings[i], 600);
      ClientDS_Files.FieldByName('files_date'   ).Value := iif(file_age<>-1, FileDateToDateTime(file_age), null);
      TBlobField(ClientDS_Files.FieldByName('doc_image_lzh')).LoadFromFile(OpenDialog.Files.Strings[i]);
      ClientDS_Files.Post;

    end;
    ShowTextMessage;

  end;
  OpenDialog.Free;
end;

procedure TfmDocBlobAddNew.dxBarButton5Click(Sender: TObject);
begin
  ClientDS_Files.Delete;
end;

procedure TfmDocBlobAddNew.dxBarButton6Click(Sender: TObject);
var file_name : string;
begin
  if not cxGrid1DBBandedTableView1files_name.DataBinding.Field.IsNull then begin
    file_name := ClientDS_Files.FieldByName('files_name').AsString;

    if ClientDS_Files.FieldByName('doc_image_lzh').IsNull then begin
      GetDocBlobDetailView(cxGrid1DBBandedTableView1doc_detail_id.DataBinding.Field.AsInteger, nil, '', Fconnect);
    end else begin
      GetDocBlobView(-9, LZHUnPack(ClientDS_Files.FieldByName('doc_image_lzh').AsBytes), file_name, Fconnect);
    end;

  end else begin
    Application.MessageBox('Õ≈“ ‘¿…À¿   ƒ¿ÕÕŒ… «¿œ»—»', '¬Õ»Ã¿Õ»≈', MB_OK);
  end;
end;

procedure TfmDocBlobAddNew.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  FConnect.Free;
  Action := caFree;
end;

end.
