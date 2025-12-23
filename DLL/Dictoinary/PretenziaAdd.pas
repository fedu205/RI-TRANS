unit PretenziaAdd;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Default,
  Dialogs, StdCtrls, Buttons, ExtCtrls, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData, cxGridLevel,
  cxClasses, cxGridCustomView, cxGridCustomTableView, cxGridTableView, cxGridBandedTableView, Other,
  cxGridDBBandedTableView, cxGrid, cxContainer, cxDropDownEdit, cxCalendar, cxMaskEdit, cxButtonEdit,
  cxTextEdit, Menus, cxMemo, cxButtons, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, ADODB, cxCurrencyEdit, cxPropertiesStore, DBClient, dxBar, ImgList,
  dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel,
  dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
  dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMetropolis, dxSkinMetropolisDark, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013DarkGray,
  dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinOffice2016Colorful,
  dxSkinOffice2016Dark, dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic,
  dxSkinSharp, dxSkinSharpPlus, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinTheAsphaltWorld, dxSkinsDefaultPainters,
  dxSkinValentine, dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue, ComCtrls, dxCore, cxDateUtils, dxSkinscxPCPainter,
  cxNavigator, dxSkinsdxBarPainter, System.ImageList, cxImageList,
  cxDataControllerConditionalFormattingRulesManagerDialog, dxSkinTheBezier, dxDateRanges, dxCoreGraphics, dxScrollbarAnnotations;

type
  TfmPretenziaAdd = class(TForm)
    Panel2: TPanel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Panel1: TPanel;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    cxTextEdit1: TcxTextEdit;
    cxButtonEdit2: TcxButtonEdit;
    Label7: TLabel;
    cxDateEdit1: TcxDateEdit;
    Label2: TLabel;
    cxDateEdit2: TcxDateEdit;
    Label3: TLabel;
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
    cxDateEdit3: TcxDateEdit;
    GroupBox2: TGroupBox;
    cxMemo1: TcxMemo;
    Query_Contract: TADOQuery;
    DS_Contract: TDataSource;
    Label4: TLabel;
    cxCurrencyEdit1: TcxCurrencyEdit;
    DS_Currency: TDataSource;
    Query_Currency: TADOQuery;
    cxLookupComboBox2: TcxLookupComboBox;
    dxBarManager1: TdxBarManager;
    dxBarManager1Bar1: TdxBar;
    dxBarButton1: TdxBarButton;
    dxBarButton2: TdxBarButton;
    dxBarButton3: TdxBarButton;
    dxBarButton9: TdxBarButton;
    dxBarButton4: TdxBarButton;
    dxBarSubItem1: TdxBarSubItem;
    dxBarButton5: TdxBarButton;
    dxBarButton6: TdxBarButton;
    dxBarButton7: TdxBarButton;
    dxBarButton8: TdxBarButton;
    cxImageList1: TcxImageList;
    cxPropertiesStore1: TcxPropertiesStore;
    cxGrid4: TcxGrid;
    cxGridDBBandedTableView1: TcxGridDBBandedTableView;
    cxGridDBBandedTableView1doc_id: TcxGridDBBandedColumn;
    cxGridDBBandedTableView1doc_type_describe: TcxGridDBBandedColumn;
    cxGridDBBandedTableView1doc_describe: TcxGridDBBandedColumn;
    cxGridDBBandedTableView1file_name: TcxGridDBBandedColumn;
    cxGridDBBandedTableView1doc_location_FIO_users: TcxGridDBBandedColumn;
    cxGridDBBandedTableView1doc_image_date: TcxGridDBBandedColumn;
    cxGridDBBandedTableView1doc_location_id: TcxGridDBBandedColumn;
    cxGridDBBandedTableView1doc_location_name: TcxGridDBBandedColumn;
    cxGridDBBandedTableView1doc_location_date: TcxGridDBBandedColumn;
    cxGridDBBandedTableView1sign_customer_name: TcxGridDBBandedColumn;
    cxGridDBBandedTableView1doc_location_FIO_users_id: TcxGridDBBandedColumn;
    cxGridDBBandedTableView1sign_customer_id: TcxGridDBBandedColumn;
    cxGridDBBandedTableView1doc_image_lzh: TcxGridDBBandedColumn;
    cxGridDBBandedTableView1doc_type_cod: TcxGridDBBandedColumn;
    cxGridDBBandedTableView1global_color: TcxGridDBBandedColumn;
    cxGridDBBandedTableView1doc_image_size: TcxGridDBBandedColumn;
    cxGridDBBandedTableView1id: TcxGridDBBandedColumn;
    cxGridLevel1: TcxGridLevel;
    DS_Files: TDataSource;
    ClientDS_Files: TClientDataSet;
    ClientDS_Filesid: TAutoIncField;
    ClientDS_Filesdoc_id: TIntegerField;
    ClientDS_Filesdoc_type_cod: TStringField;
    ClientDS_Filesdoc_describe: TStringField;
    ClientDS_Filesfile_name: TStringField;
    ClientDS_Filesdoc_location_FIO_users_id: TIntegerField;
    ClientDS_Filesdoc_location_FIO_users: TStringField;
    ClientDS_Filesdoc_location_name: TStringField;
    ClientDS_Filesdoc_location_id: TIntegerField;
    ClientDS_Filessign_customer_id: TIntegerField;
    ClientDS_Filessign_customer_name: TStringField;
    ClientDS_Filesdoc_image_lzh: TBlobField;
    ClientDS_Filesdoc_type_describe: TStringField;
    ClientDS_Filesglobal_color: TIntegerField;
    ClientDS_Filesdoc_image_size: TIntegerField;
    ClientDS_Filessign_self_id: TIntegerField;
    ClientDS_Filessign_self_name: TStringField;
    ClientDS_Filesset_new: TBooleanField;
    ClientDS_Filesdoc_cod: TStringField;
    ClientDS_Filesdoc_cod1: TStringField;
    ClientDS_Filesdoc_location_date: TDateField;
    ClientDS_Filesdoc_image_date: TDateField;
    dxBarPopupMenu2: TdxBarPopupMenu;
    ClientDS_Filescontract_id: TIntegerField;
    ClientDS_Filesfirm_id: TIntegerField;
    ClientDS_Filesinvoice_id: TIntegerField;
    ClientDS_Filespretenzia_id: TIntegerField;
    ClientDS_Filesfact_repair_id: TIntegerField;
    ClientDS_Filesdoc_original_date: TDateField;
    ClientDS_Filesdoc_invoice_score_cod: TStringField;
    ClientDS_Filesdoc_kind_id: TIntegerField;
    ClientDS_Filesdoc_kind_name: TStringField;
    Label5: TLabel;
    cxTextEdit2: TcxTextEdit;
    Label6: TLabel;
    cxComboBox1: TcxComboBox;
    ClientDS_Fileszfto_score_id: TIntegerField;
    ClientDS_Filesdoc_folder_id: TIntegerField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cxButtonEdit2PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure cxButton1Click(Sender: TObject);
    procedure cxButton4Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure dxBarButton9Click(Sender: TObject);
    procedure dxBarButton1Click(Sender: TObject);
    procedure cxLookupComboBox16PropertiesEditValueChanged(Sender: TObject);
    procedure dxBarButton4Click(Sender: TObject);
    procedure dxBarButton7Click(Sender: TObject);
    procedure dxBarButton8Click(Sender: TObject);
    procedure dxBarPopupMenu2Popup(Sender: TObject);
    procedure dxBarButton3Click(Sender: TObject);
    procedure cxGridDBBandedTableView1CustomDrawCell(
      Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
      AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
  private
    Fpretenzia_id : integer;
    Fusr_pwd      : PUser_pwd;
    Fconnect      : TADOConnection;
    Fset_modify_run_docs : boolean;
    procedure SetUpdate(pretenzia_id: integer);
  public
    constructor Create(AOwner : TApplication; usr_pwd: PUser_pwd);
  published
    property _SetUpdate : integer write SetUpdate;
    property _GetPretenziaId : integer read Fpretenzia_id;
    property _SetModifyRunDocs : boolean write Fset_modify_run_docs;
  end;

var
  fmPretenziaAdd: TfmPretenziaAdd;

implementation
  uses Filter, ShellApi, DocBlobAdd, Raznoe;
{$R *.dfm}


constructor TfmPretenziaAdd.Create(AOwner: TApplication; usr_pwd: PUser_pwd);
begin
  Screen.Cursor := -11;
  inherited Create(Aowner);

  cxDateEdit1.EditValue := Date;
  Fpretenzia_id:= -9;
  Fusr_pwd     := usr_pwd;

  Fconnect := TADOConnection.Create(nil);
  Fconnect.ConnectionString := 'Persist Security Info=True;Provider=SQLOLEDB.1;User ID='+usr_pwd^.user_name+';Password='+usr_pwd^.user_pass+';Initial Catalog='+usr_pwd^.catalog+';Data Source='+usr_pwd^.server+';';
  Fconnect.KeepConnection   := False;
  Fconnect.LoginPrompt      := False;

  Query_Contract.Connection := Fconnect;
  Query_Currency.Connection := Fconnect;

  Query_Currency.Open;
  cxLookupComboBox2.EditValue := Query_Currency.FieldByName('currency_id').Value;


  Query_Contract.Parameters.ParamByName('type_contract').Value := 0;
  Query_Contract.Parameters.ParamByName('date_end').Value := Date;
  Query_Contract.Open;
  cxLookupComboBox16.EditValue := Query_Contract.FieldByName('contract_id').Value;

  ClientDS_Files.CreateDataSet;
  ClientDS_Files.LogChanges := False;

  Fset_modify_run_docs := False;
  MonitorEventFormOpen('OPEN_FORM', self.Name, Fconnect, -9);
  Screen.Cursor := 0;
end;

procedure TfmPretenziaAdd.SetUpdate(pretenzia_id: integer);
var  Q, Q2 : TADOQuery;
        SP : TADOStoredProc;
begin
  Screen.Cursor := crHourGlass;

  Fpretenzia_id := pretenzia_id;
  Q := TADOQuery.Create(nil);
  Q.Connection := Fconnect;
  Q.SQL.Add('SELECT * FROM view_pretenzia WHERE pretenzia_id = ' + IntToStr(Fpretenzia_id));
  Q.Open;

  Q2 := TADOQuery.Create(nil);
  Q2.Connection := Fconnect;
  Q2.SQL.Add('SELECT type_contract, CASE WHEN date_end>getdate() THEN 1 ELSE 0 END set_contract_end FROM view_contract WHERE contract_id = ' + IntToStr(Q.FieldByName('contract_id').AsInteger));
  Q2.Open;

  Query_Contract.Close;
  Query_Contract.Parameters.ParamByName('type_contract').Value := Q2.FieldByName('type_contract').AsInteger;
  if Q2.FieldByName('set_contract_end').AsInteger = 1 then begin
    cxButton4.SpeedButtonOptions.GroupIndex := 0;
    Query_Contract.Parameters.ParamByName('date_end').Value := Date;
  end else begin
    cxButton4.SpeedButtonOptions.GroupIndex := 100;
    cxButton4.SpeedButtonOptions.Down := True;
    Query_Contract.Parameters.ParamByName('date_end').Value := 1;
  end;
  Query_Contract.Open;

  Q2.Free;


  cxLookupComboBox16.EditValue := Q.FieldByName('contract_id').Value;
  cxLookupComboBox2.EditValue  := Q.FieldByName('currency_id').Value;
  cxTextEdit1.EditValue        := Q.FieldByName('pretenzia_cod').Value;
  cxCurrencyEdit1.EditValue    := Q.FieldByName('pretenzia_sum').Value;
  cxButtonEdit2.EditValue      := Q.FieldByName('curator_FIO_users').Value;
  cxDateEdit1.EditValue        := Q.FieldByName('date_begin').Value;
  cxDateEdit2.EditValue        := Q.FieldByName('date_end').Value;
  cxComboBox1.ItemIndex        := iif(Q.FieldByName('type_pretenzia').IsNull, 0, Q.FieldByName('type_pretenzia').Value);
  cxMemo1.EditValue            := Q.FieldByName('comment').Value;

  Q.SQL.Clear;
  Q.SQL.Add('SELECT doc_blob.doc_id FROM doc_blob WHERE pretenzia_id = ' + IntToStr(Fpretenzia_id));
  Q.Open;

  SP := TADOStoredProc.Create(nil);
  SP.Connection := Fconnect;
  SP.ProcedureName := 'sp_blob_GET';

  while not Q.Eof do begin
    ShowTextMessage('Загрузка файлов...' + #10 + 'Осталось ' + IntToStr(Q.RecordCount - Q.RecNo + 1) + ' ...', False);

    SP.Close;
    SP.Parameters.Refresh;
    SP.Parameters.ParamByName('@doc_id').Value := Q.FieldByName('doc_id').Value;
    SP.Open;

    ClientDS_Files.Append;
    ClientDS_Files.FieldByName('doc_id'                    ).Value := SP.FieldByName('doc_id').Value;
    ClientDS_Files.FieldByName('doc_type_cod'              ).Value := SP.FieldByName('doc_type_cod').Value;
    ClientDS_Files.FieldByName('doc_folder_id'             ).Value := SP.FieldByName('doc_folder_id').Value;
    ClientDS_Files.FieldByName('doc_type_describe'         ).Value := SP.FieldByName('doc_type_describe').Value;
    ClientDS_Files.FieldByName('doc_describe'              ).Value := SP.FieldByName('doc_describe').Value;
    ClientDS_Files.FieldByName('file_name'                 ).Value := SP.FieldByName('file_name').Value;
    ClientDS_Files.FieldByName('doc_location_FIO_users_id' ).Value := SP.FieldByName('doc_location_FIO_users_id').Value;
    ClientDS_Files.FieldByName('doc_location_FIO_users'    ).Value := SP.FieldByName('doc_location_FIO_users').Value;
    ClientDS_Files.FieldByName('doc_image_date'            ).Value := SP.FieldByName('doc_image_date').Value;
    ClientDS_Files.FieldByName('doc_location_id'           ).Value := SP.FieldByName('doc_location_id').Value;
    ClientDS_Files.FieldByName('doc_location_name'         ).Value := SP.FieldByName('doc_location_name').Value;
    ClientDS_Files.FieldByName('doc_location_date'         ).Value := SP.FieldByName('doc_location_date').Value;
    ClientDS_Files.FieldByName('sign_customer_id'          ).Value := SP.FieldByName('sign_customer_id').Value;
    ClientDS_Files.FieldByName('sign_customer_name'        ).Value := SP.FieldByName('sign_customer_name').Value;
    ClientDS_Files.FieldByName('sign_self_id'              ).Value := SP.FieldByName('sign_self_id').Value;
    ClientDS_Files.FieldByName('sign_self_name'            ).Value := SP.FieldByName('sign_self_name').Value;
    ClientDS_Files.FieldByName('doc_image_lzh'             ).Value := null;
    ClientDS_Files.FieldByName('global_color'              ).Value := SP.FieldByName('global_color').Value;
    ClientDS_Files.FieldByName('doc_image_size'            ).Value := SP.FieldByName('doc_image_size').Value;
    ClientDS_Files.FieldByName('set_new'                   ).Value := False;
    ClientDS_Files.FieldByName('doc_cod'                   ).Value := SP.FieldByName('doc_cod').Value;
    ClientDS_Files.FieldByName('doc_cod1'                  ).Value := SP.FieldByName('doc_cod1').Value;
    ClientDS_Files.FieldByName('contract_id'               ).Value := SP.FieldByName('contract_id').Value;
    ClientDS_Files.FieldByName('firm_id'                   ).Value := SP.FieldByName('firm_id').Value;
    ClientDS_Files.FieldByName('invoice_id'                ).Value := SP.FieldByName('invoice_id').Value;
    ClientDS_Files.FieldByName('pretenzia_id'              ).Value := SP.FieldByName('pretenzia_id').Value;
    ClientDS_Files.FieldByName('fact_repair_id'            ).Value := SP.FieldByName('fact_repair_id').Value;
    ClientDS_Files.FieldByName('doc_original_date'         ).Value := SP.FieldByName('doc_original_date').Value;
    ClientDS_Files.FieldByName('doc_invoice_score_cod'     ).Value := SP.FieldByName('doc_invoice_score_cod').Value;
    ClientDS_Files.FieldByName('doc_kind_id'               ).Value := SP.FieldByName('doc_kind_id').Value;
    ClientDS_Files.FieldByName('doc_kind_name'             ).Value := SP.FieldByName('doc_kind_name').Value;
    ClientDS_Files.Post;

    Q.Next;
  end;
  ShowTextMessage();
  Q.Free;
  SP.Free;

  Caption := Caption + ' [' + IntToStr(pretenzia_id) + ']';
  MonitorEventFormOpen('UPDATE_FORM', self.Name, Fconnect, Fpretenzia_id);
  Screen.Cursor := crDefault;
end;

procedure TfmPretenziaAdd.cxButton1Click(Sender: TObject);
begin
  Screen.Cursor := -11;
  Query_Contract.Close;
  Query_Contract.Parameters.ParamByName('type_contract').Value := TcxButton(Sender).Tag;
  Query_Contract.Open;

  cxLookupComboBox16.EditValue := Query_Contract['contract_id'];

  Screen.Cursor := 0;
end;

procedure TfmPretenziaAdd.cxButton4Click(Sender: TObject);
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
  
  Screen.Cursor := 0;
end;

procedure TfmPretenziaAdd.cxButtonEdit2PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
type TFuncList = function (AppHand: THandle): Variant;
var FPersonList: TFuncList;
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
            fmFilter.SetUsersChoose(cxButtonEdit2.Text);
            if fmFilter.ShowModal = mrOk then begin
              Q.Locate('fio_users', fmFilter.GetName, [loCaseInsensitive]);
              cxButtonEdit2.EditValue := fmFilter.GetName;
              cxButtonEdit2.Properties.Buttons[2].Enabled := True;
            end;

            Q.Free;
          except
            Application.MessageBox('Ошибка загрузки библиотеки телефонного справочника.', 'Ошибка', MB_ICONERROR or MB_OK);
          end;
        end;

    1 : begin
        cxButtonEdit2.EditValue := null;
        cxButtonEdit2.Properties.Buttons[2].Enabled := False;
        end;

    2 : begin
          Screen.Cursor := crHourglass;
          if  cxButtonEdit2.Text <> '' then
            ShowUsersDetail(-9, cxButtonEdit2.Text);
          Screen.Cursor := crDefault;
        end;
  end;
end;

procedure TfmPretenziaAdd.cxGridDBBandedTableView1CustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
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

procedure TfmPretenziaAdd.cxLookupComboBox16PropertiesEditValueChanged(Sender: TObject);
begin
  Query_Contract.Locate('contract_id', cxLookupComboBox16.EditValue, []);
  cxTextEdit6.EditValue := Query_Contract.FieldByName('contract_cod').Value;
  cxDateEdit3.EditValue := Query_Contract.FieldByName('date_begin').Value;
  cxTextEdit2.EditValue := Query_Contract.FieldByName('curator_FIO_users').Value;
end;

procedure TfmPretenziaAdd.dxBarButton1Click(Sender: TObject);
var
  ClientDS_Import : TClientDataSet;
           doc_id : integer;
                v : Variant;
begin

  try
    ClientDS_Import := TClientDataSet.Create(nil);
    ClientDS_Import.Data := ClientDS_Files.Data;
    ClientDS_Import.EmptyDataSet;

    // Обновляем запись
    if TControl(Sender).Tag = 1 then begin
      ClientDS_Files.Locate('doc_id', cxGridDBBandedTableView1doc_id.DataBinding.Field.Value, []);
      doc_id := cxGridDBBandedTableView1doc_id.DataBinding.Field.AsInteger;

      ClientDS_Import.Append;
      ClientDS_Import.FieldByName('doc_id'                    ).Value := ClientDS_Files.FieldByName('doc_id').Value;
      ClientDS_Import.FieldByName('doc_type_cod'              ).Value := ClientDS_Files.FieldByName('doc_type_cod').Value;
      ClientDS_Import.FieldByName('doc_folder_id'             ).Value := ClientDS_Files.FieldByName('doc_folder_id').Value;
      ClientDS_Import.FieldByName('doc_type_describe'         ).Value := ClientDS_Files.FieldByName('doc_type_describe').Value;
      ClientDS_Import.FieldByName('doc_describe'              ).Value := ClientDS_Files.FieldByName('doc_describe').Value;
      ClientDS_Import.FieldByName('file_name'                 ).Value := ClientDS_Files.FieldByName('file_name').Value;
      ClientDS_Import.FieldByName('doc_location_FIO_users_id' ).Value := ClientDS_Files.FieldByName('doc_location_FIO_users_id').Value;
      ClientDS_Import.FieldByName('doc_location_FIO_users'    ).Value := ClientDS_Files.FieldByName('doc_location_FIO_users').Value;
      ClientDS_Import.FieldByName('doc_image_date'            ).Value := ClientDS_Files.FieldByName('doc_image_date').Value;
      ClientDS_Import.FieldByName('doc_location_id'           ).Value := ClientDS_Files.FieldByName('doc_location_id').Value;
      ClientDS_Import.FieldByName('doc_location_name'         ).Value := ClientDS_Files.FieldByName('doc_location_name').Value;
      ClientDS_Import.FieldByName('doc_location_date'         ).Value := ClientDS_Files.FieldByName('doc_location_date').Value;
      ClientDS_Import.FieldByName('sign_customer_id'          ).Value := ClientDS_Files.FieldByName('sign_customer_id').Value;
      ClientDS_Import.FieldByName('sign_customer_name'        ).Value := ClientDS_Files.FieldByName('sign_customer_name').Value;
      ClientDS_Import.FieldByName('sign_self_id'              ).Value := ClientDS_Files.FieldByName('sign_self_id').Value;
      ClientDS_Import.FieldByName('sign_self_name'            ).Value := ClientDS_Files.FieldByName('sign_self_name').Value;
      ClientDS_Import.FieldByName('global_color'              ).Value := ClientDS_Files.FieldByName('global_color').Value;
      ClientDS_Import.FieldByName('doc_image_size'            ).Value := ClientDS_Files.FieldByName('doc_image_size').Value;
      ClientDS_Import.FieldByName('doc_cod'                   ).Value := ClientDS_Files.FieldByName('doc_cod').Value;
      ClientDS_Import.FieldByName('doc_cod1'                  ).Value := ClientDS_Files.FieldByName('doc_cod1').Value;
      ClientDS_Import.FieldByName('contract_id'               ).Value := ClientDS_Files.FieldByName('contract_id').Value;
      ClientDS_Import.FieldByName('firm_id'                   ).Value := ClientDS_Files.FieldByName('firm_id').Value;
      ClientDS_Import.FieldByName('invoice_id'                ).Value := ClientDS_Files.FieldByName('invoice_id').Value;
      ClientDS_Import.FieldByName('pretenzia_id'              ).Value := ClientDS_Files.FieldByName('pretenzia_id').Value;
      ClientDS_Import.FieldByName('fact_repair_id'            ).Value := ClientDS_Files.FieldByName('fact_repair_id').Value;
      ClientDS_Import.FieldByName('doc_original_date'         ).Value := ClientDS_Files.FieldByName('doc_original_date').Value;
      ClientDS_Import.FieldByName('doc_invoice_score_cod'     ).Value := ClientDS_Files.FieldByName('doc_invoice_score_cod').Value;
      ClientDS_Import.FieldByName('doc_kind_id'               ).Value := ClientDS_Files.FieldByName('doc_kind_id').Value;
      ClientDS_Import.FieldByName('doc_kind_name'             ).Value := ClientDS_Files.FieldByName('doc_kind_name').Value;
      ClientDS_Import.FieldByName('zfto_score_id'             ).Value := ClientDS_Files.FieldByName('zfto_score_id').Value;
      ClientDS_Import.Post;
    end else begin
      doc_id := -9;
    end;

    try
      fmDocBlobAdd := TfmDocBlobAdd.Create(Application, Fconnect);
      fmDocBlobAdd._SetDocType     := '8';
      fmDocBlobAdd._SetContractID  := iif(cxLookupComboBox16.EditValue = null, -9, cxLookupComboBox16.EditValue);
      fmDocBlobAdd._SetPretenziaID := Fpretenzia_id;

      fmDocBlobAdd._SetClientDS    := ClientDS_Import;
      if doc_id <> -9 then fmDocBlobAdd._SetUpdate := doc_id;

      if fmDocBlobAdd.ShowModal = mrOk then begin
        v := VarArrayOf([fmDocBlobAdd._GetDocId]);
      end else begin
        v := VarArrayOf([-9]);
      end;
    finally
      fmDocBlobAdd.Free;
    end;

    if v[0] <> -9 then begin
      if ClientDS_Files.Locate('doc_id', v[0], []) then ClientDS_Files.Edit
      else begin
        ClientDS_Files.Append;
        ClientDS_Files.FieldByName('set_new').Value := True;
      end;

      ClientDS_Files.FieldByName('doc_id'                    ).Value := ClientDS_Import.FieldByName('doc_id').Value;
      ClientDS_Files.FieldByName('doc_type_cod'              ).Value := ClientDS_Import.FieldByName('doc_type_cod').Value;
      ClientDS_Files.FieldByName('doc_folder_id'             ).Value := ClientDS_Import.FieldByName('doc_folder_id').Value;
      ClientDS_Files.FieldByName('doc_type_describe'         ).Value := ClientDS_Import.FieldByName('doc_type_describe').Value;
      ClientDS_Files.FieldByName('doc_describe'              ).Value := ClientDS_Import.FieldByName('doc_describe').Value;
      ClientDS_Files.FieldByName('doc_location_FIO_users_id' ).Value := ClientDS_Import.FieldByName('doc_location_FIO_users_id').Value;
      ClientDS_Files.FieldByName('doc_location_FIO_users'    ).Value := ClientDS_Import.FieldByName('doc_location_FIO_users').Value;
      ClientDS_Files.FieldByName('doc_image_date'            ).Value := ClientDS_Import.FieldByName('doc_image_date').Value;
      ClientDS_Files.FieldByName('doc_location_id'           ).Value := ClientDS_Import.FieldByName('doc_location_id').Value;
      ClientDS_Files.FieldByName('doc_location_name'         ).Value := ClientDS_Import.FieldByName('doc_location_name').Value;
      ClientDS_Files.FieldByName('doc_location_date'         ).Value := ClientDS_Import.FieldByName('doc_location_date').Value;
      ClientDS_Files.FieldByName('sign_customer_id'          ).Value := ClientDS_Import.FieldByName('sign_customer_id').Value;
      ClientDS_Files.FieldByName('sign_self_id'              ).Value := ClientDS_Import.FieldByName('sign_self_id').Value;
      ClientDS_Files.FieldByName('sign_self_name'            ).Value := ClientDS_Import.FieldByName('sign_self_name').Value;
      ClientDS_Files.FieldByName('sign_customer_name'        ).Value := ClientDS_Import.FieldByName('sign_customer_name').Value;
      ClientDS_Files.FieldByName('global_color'              ).Value := ClientDS_Import.FieldByName('global_color').Value;
      ClientDS_Files.FieldByName('doc_cod'                   ).Value := ClientDS_Import.FieldByName('doc_cod').Value;
      ClientDS_Files.FieldByName('doc_cod1'                  ).Value := ClientDS_Import.FieldByName('doc_cod1').Value;
      ClientDS_Files.FieldByName('contract_id'               ).Value := ClientDS_Import.FieldByName('contract_id').Value;
      ClientDS_Files.FieldByName('firm_id'                   ).Value := ClientDS_Import.FieldByName('firm_id').Value;
      ClientDS_Files.FieldByName('invoice_id'                ).Value := ClientDS_Import.FieldByName('invoice_id').Value;
      ClientDS_Files.FieldByName('pretenzia_id'              ).Value := ClientDS_Import.FieldByName('pretenzia_id').Value;
      ClientDS_Files.FieldByName('fact_repair_id'            ).Value := ClientDS_Import.FieldByName('fact_repair_id').Value;
      ClientDS_Files.FieldByName('doc_original_date'         ).Value := ClientDS_Import.FieldByName('doc_original_date').Value;
      ClientDS_Files.FieldByName('doc_invoice_score_cod'     ).Value := ClientDS_Import.FieldByName('doc_invoice_score_cod').Value;
      ClientDS_Files.FieldByName('doc_kind_id'               ).Value := ClientDS_Import.FieldByName('doc_kind_id').Value;
      ClientDS_Files.FieldByName('doc_kind_name'             ).Value := ClientDS_Import.FieldByName('doc_kind_name').Value;
      ClientDS_Files.FieldByName('zfto_score_id'             ).Value := ClientDS_Import.FieldByName('zfto_score_id').Value;

      if not ClientDS_Import.FieldByName('doc_image_lzh').IsNull then begin
        ClientDS_Files.FieldByName('doc_image_lzh').Value := ClientDS_Import.FieldByName('doc_image_lzh').Value;
        ClientDS_Files.FieldByName('file_name'    ).Value := ClientDS_Import.FieldByName('file_name').Value;
      end;


      ClientDS_Files.FieldByName('doc_image_size').Value := Round(Length(ClientDS_Files.FieldByName('doc_image_lzh').AsString) / 1024);

      ClientDS_Files.Post;
    end;
  finally
    FreeLibrary(handle);
  end;
end;

procedure TfmPretenziaAdd.dxBarButton3Click(Sender: TObject);
begin
  if not cxGridDBBandedTableView1doc_id.DataBinding.Field.IsNull then begin
    if Application.MessageBox(PChar('Удалить файл ' + cxGridDBBandedTableView1file_name.DataBinding.Field.AsString +  ' ?'), 'ВНИМАНИЕ', MB_OKCANCEL) = ID_OK then begin
      ClientDS_Files.Delete;
    end;
  end;
end;

procedure TfmPretenziaAdd.dxBarButton4Click(Sender: TObject);
begin
  PrintcxGrid(cxGridDBBandedTableView1);
end;

procedure TfmPretenziaAdd.dxBarButton7Click(Sender: TObject);
begin
  SetdxDBGridColumns(cxGridDBBandedTableView1);
end;

procedure TfmPretenziaAdd.dxBarButton8Click(Sender: TObject);
begin
  cxGridDBBandedTableView1.OptionsView.GroupByBox  := not cxGridDBBandedTableView1.OptionsView.GroupByBox;
end;

procedure TfmPretenziaAdd.dxBarButton9Click(Sender: TObject);
var file_name : string;
begin
  if not cxGridDBBandedTableView1file_name.DataBinding.Field.IsNull then begin
    file_name := ClientDS_Files.FieldByName('file_name').AsString;
    if ClientDS_Files.FieldByName('doc_image_lzh').IsNull then begin
      GetDocBlobView(cxGridDBBandedTableView1doc_id.DataBinding.Field.AsInteger, nil, '', Fconnect);
    end else begin
      GetDocBlobView(-9, LZHUnPack(ClientDS_Files.FieldByName('doc_image_lzh').AsBytes), file_name, Fconnect);
    end;
  end else begin
    Application.MessageBox('НЕТ ФАЙЛА К ДАННОЙ ЗАПИСИ', 'ВНИМАНИЕ', MB_OK);
  end;

end;

procedure TfmPretenziaAdd.dxBarPopupMenu2Popup(Sender: TObject);
begin
  if not Fusr_pwd.user_func.Locate('func_name', 'set_doc_modify', [loCaseInsensitive]) then begin
    dxBarButton1.Enabled := False;
    dxBarButton2.Enabled := False;
    dxBarButton3.Enabled := False;
  end;
end;

procedure TfmPretenziaAdd.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Fconnect.Free;
  Action := caFree;
end;

procedure TfmPretenziaAdd.BitBtn1Click(Sender: TObject);
var SP : TADOStoredProc;
begin

  if Fset_modify_run_docs then begin
    if Application.MessageBox('Документ запущен в документообороте!'+#13+#10+
                              'После сохранения претензии будут изменены все данные в документообороте.'+#13+#10+''+#13+#10+
                              'Продолжить?', 'Внимание!', MB_ICONWARNING or MB_OKCANCEL) = ID_CANCEL then begin
      ModalResult := mrNone;
      Exit;
    end;
  end;


  if cxLookupComboBox16.EditValue = null then begin
    Application.MessageBox('Не выбран договор!', 'Вниамание', MB_OK);
    ModalResult := mrNone;
    Exit;
  end;

  if cxButtonEdit2.EditValue = null then begin
    Application.MessageBox('Не выбран куратор юр.отдела!', 'Вниамание', MB_OK);
    ModalResult := mrNone;
    Exit;
  end;

  Screen.Cursor := -11;

  SP := TADOStoredProc.Create(nil);
  SP.Connection := Query_Contract.Connection;
  SP.ProcedureName := 'sp_pretenzia_modify';
  SP.Parameters.Refresh;
  SP.Parameters.ParamByName('@pretenzia_id'       ).Value := Fpretenzia_id;
  SP.Parameters.ParamByName('@type_action'        ).Value := iif(Fpretenzia_id = -9, 0, 1);
  SP.Parameters.ParamByName('@type_pretenzia'     ).Value := cxComboBox1.ItemIndex;
  SP.Parameters.ParamByName('@contract_id'        ).Value := cxLookupComboBox16.EditValue;
  SP.Parameters.ParamByName('@currency_id'        ).Value := cxLookupComboBox2.EditValue;
  SP.Parameters.ParamByName('@pretenzia_cod'      ).Value := cxTextEdit1.EditValue;
  SP.Parameters.ParamByName('@pretenzia_sum'      ).Value := cxCurrencyEdit1.EditValue;
  SP.Parameters.ParamByName('@curator_FIO_users'  ).Value := cxButtonEdit2.Text;
  SP.Parameters.ParamByName('@xml_firm_doc_blob'  ).Value := DataXMLToSQL(ClientDS_Files);
  SP.Parameters.ParamByName('@date_begin'         ).Value := cxDateEdit1.EditValue;
  SP.Parameters.ParamByName('@date_end'           ).Value := cxDateEdit2.EditValue;
  SP.Parameters.ParamByName('@comment'            ).Value := cxMemo1.EditValue;
  SP.Parameters.ParamByName('@set_modify_run_docs').Value := Fset_modify_run_docs;
  SP.ExecProc;

  Fpretenzia_id := SP.Parameters.ParamByName('@pretenzia_id').Value;
  SP.Free;

  Screen.Cursor := 0;
end;


end.
