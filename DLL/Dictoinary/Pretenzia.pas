unit Pretenzia;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, ShellAPI,
  Dialogs, Default, dxBar, DB, ADODB, cxLocalization, cxPropertiesStore, cxStyles, cxClasses, Other,
  ImgList, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, cxDBData, cxGridLevel, cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridBandedTableView, cxGridDBBandedTableView, cxGrid, cxCurrencyEdit, cxColorComboBox, ExtCtrls, StdCtrls,
  dxSkinsCore, dxSkinsDefaultPainters, dxSkinscxPCPainter, cxNavigator,
  dxSkinsdxBarPainter, dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel,
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
  dxSkinSummer2008, dxSkinTheAsphaltWorld, dxSkinValentine,
  dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue, DBClient, Registry, Filter, System.ImageList, cxCalendar,
  cxImageList, cxDataControllerConditionalFormattingRulesManagerDialog, dxSkinOffice2019Colorful, dxSkinTheBezier, dxDateRanges;

type
  TfmPretenzia = class(TForm)
    cxImageList1: TcxImageList;
    ADOPretenzia: TADOConnection;
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
    dxBarButton13: TdxBarButton;
    dxBarButton20: TdxBarButton;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle_Bold: TcxStyle;
    cxStyle_AgreeFactInc_Between: TcxStyle;
    cxStyle_AgreeFactInc_Sum: TcxStyle;
    cxStyle_AgreeFactInc_AddProfit: TcxStyle;
    cxStyle_ClientFrahtCard_Rashod: TcxStyle;
    cxStyle_ClientFrahtCard_Profitt: TcxStyle;
    cxStyle_AgreeFact: TcxStyle;
    cxStyle_Agree_bargain_cod: TcxStyle;
    cxStyle_Orders_cod: TcxStyle;
    cxStyle_BoldBlue: TcxStyle;
    cxStyle_ClientFrahtCard_Rashod_RUB: TcxStyle;
    cxStyle_BalanceOrders: TcxStyle;
    cxStyle_Comiss_USD: TcxStyle;
    cxStyle_Comiss_RUB: TcxStyle;
    cxStyle_Sum_USD: TcxStyle;
    cxStyle_Sum_RUB: TcxStyle;
    cxStyle_Sum_EUR: TcxStyle;
    cxStyle_Sum_CHF: TcxStyle;
    cxStyle_Sum_Client: TcxStyle;
    cxStyle_Sum_Agent: TcxStyle;
    cxStyle_Sum_Comiss: TcxStyle;
    cxStyle_ID: TcxStyle;
    cxStyle_Docs_Status: TcxStyle;
    cxPropertiesStore1: TcxPropertiesStore;
    cxLocalizer1: TcxLocalizer;
    Query_Pretenzia: TADOQuery;
    DS_Pretenzia: TDataSource;
    dxBarPopupMenu1: TdxBarPopupMenu;
    cxGrid1: TcxGrid;
    cxGrid1DBBandedTableView1: TcxGridDBBandedTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1DBBandedTableView1pretenzia_id: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1firm_customer_name: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1contract_cod: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1contract_date_begin: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1pretenzia_cod: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1pretenzia_sum: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1brief_name: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1curator_FIO_users: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1date_begin: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1date_end: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1cnt_global_doc: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1global_color: TcxGridDBBandedColumn;
    GroupBox1: TGroupBox;
    Splitter1: TSplitter;
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
    cxGridLevel1: TcxGridLevel;
    DS_DocBlob: TDataSource;
    Query_DocBlob: TADOQuery;
    dxBarPopupMenu2: TdxBarPopupMenu;
    dxBarButton10: TdxBarButton;
    dxBarSubItem2: TdxBarSubItem;
    dxBarSubItem3: TdxBarSubItem;
    dxBarButton12: TdxBarButton;
    dxBarButton14: TdxBarButton;
    cxGrid1DBBandedTableView1contract_id: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1docs_id: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1docs_status_name: TcxGridDBBandedColumn;
    cxGridDBBandedTableView1Column1: TcxGridDBBandedColumn;
    cxGridDBBandedTableView1docs_id: TcxGridDBBandedColumn;
    cxGridDBBandedTableView1docs_status_name: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1FIO_users_owner: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1docs_status_cod: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1contract_curator_FIO_users: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1type_pretenzia_name: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1type_pretenzia: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1comment: TcxGridDBBandedColumn;
    dxBarButton_FilterRecords1: TdxBarButton;
    dxBarButton_FilterRecords2: TdxBarButton;
    dxBarButton11: TdxBarButton;
    dxBarButton15: TdxBarButton;
    dxBarButton16: TdxBarButton;
    cxGrid1DBBandedTableView1process_step_name: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1docs_date_agree: TcxGridDBBandedColumn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure dxBarButton1Click(Sender: TObject);
    procedure dxBarButton2Click(Sender: TObject);
    procedure dxBarButton10Click(Sender: TObject);
    procedure dxBarButton4Click(Sender: TObject);
    procedure dxBarButton5Click(Sender: TObject);
    procedure dxBarButton7Click(Sender: TObject);
    procedure dxBarButton8Click(Sender: TObject);
    procedure cxGrid1DBBandedTableView1CustomDrawCell(
      Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
      AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
    procedure cxGrid1DBBandedTableView1CustomDrawColumnHeader(
      Sender: TcxGridTableView; ACanvas: TcxCanvas;
      AViewInfo: TcxGridColumnHeaderViewInfo; var ADone: Boolean);
    procedure FormDestroy(Sender: TObject);
    procedure dxBarButton14Click(Sender: TObject);
    procedure dxBarButton12Click(Sender: TObject);
    procedure cxGrid1DBBandedTableView1FocusedItemChanged(
      Sender: TcxCustomGridTableView; APrevFocusedItem,
      AFocusedItem: TcxCustomGridTableItem);
    procedure cxGrid1DBBandedTableView1FocusedRecordChanged(
      Sender: TcxCustomGridTableView; APrevFocusedRecord,
      AFocusedRecord: TcxCustomGridRecord;
      ANewItemRecordFocusingChanged: Boolean);
    procedure dxBarButton13Click(Sender: TObject);
    procedure cxGrid1DBBandedTableView1KeyPress(Sender: TObject; var Key: Char);
    procedure dxBarButton9Click(Sender: TObject);
    procedure dxBarButton3Click(Sender: TObject);
    procedure dxBarButton20Click(Sender: TObject);
    procedure dxBarButton_FilterRecords1Click(Sender: TObject);
    procedure dxBarButton_FilterRecords2Click(Sender: TObject);
    procedure dxBarButton15Click(Sender: TObject);
    procedure dxBarButton16Click(Sender: TObject);
  private
    Fdate1, Fdate2 : TDateTime;
    Fusr_pwd       : PUser_pwd;
    Fcontract_id   : integer;
    Fpretenzia_id  : integer;
    Ffiles_id      : integer;
    Fpretenzia_docs_id : integer;
    Fdoc_blob_docs_id  : integer;

    procedure SetContractId(contract_id: integer);
    procedure SetSelectFiles(set_seletc_files: boolean);
  public
    constructor Create(AOwner : TApplication; flag: boolean; usr_pwd: PUser_pwd);
  published
    property _GetPretenziaId : integer read  Fpretenzia_id;
    property _GetFilesId     : integer read  Ffiles_id;
    property _GetContractId  : integer read  Fcontract_id;
    property _GetPretenziaDocsId : integer read  Fpretenzia_docs_id;
    property _GetDocBlobDocsId   : integer read  Fdoc_blob_docs_id;
    property _SetContractId  : integer write SetContractId;
    property _SetSelectFiles : boolean write SetSelectFiles;
  end;


function CreateWndPretenzia(AppHand: THandle; flag: boolean; usr_pwd: PUser_pwd):variant; export;

var
  fmPretenzia: TfmPretenzia;

implementation
  uses PretenziaAdd, Period, Raznoe, Main;

{$R *.dfm}

function CreateWndPretenzia(AppHand: THandle; flag: boolean; usr_pwd: PUser_pwd):variant; export;
begin
  Application.Handle := AppHand;
  fmPretenzia := TfmPretenzia.Create(Application, flag, usr_pwd);
  try
   if fmPretenzia.ShowModal=mrOK then
      result := VarArrayOf([0, '', ''])
   else result := VarArrayOf([-9, '', '']);
  finally
    fmPretenzia.Free;
  end;

end;

constructor TfmPretenzia.Create(AOwner: TApplication; flag: boolean; usr_pwd: PUser_pwd);
begin
  Screen.Cursor := -11;

  inherited Create(AOwner);
  cxLocalizer1.Locale := 1049;

  Fusr_pwd := usr_pwd;
  Fcontract_id   := -9;
  Fpretenzia_id  := -9;
  Ffiles_id      := -9;
  Fpretenzia_docs_id := -9;
  Fdoc_blob_docs_id  := -9;

  ADOPretenzia.Connected := False;
  ADOPretenzia.ConnectionString := 'Persist Security Info=True;Provider=SQLOLEDB.1;User ID='+usr_pwd^.user_name+';Password='+usr_pwd^.user_pass+';Initial Catalog='+usr_pwd^.catalog+';Data Source='+usr_pwd^.server+';';
  ADOPretenzia.Connected := True;

  dxBarSubItem3.Caption := StoreRegistryDate(rgLoad, '\Software\Lis1\DateTime\Pretenzia', Fdate1, Fdate2);
  Query_Pretenzia.Close;
  Query_Pretenzia.Parameters.ParamByName('date1').Value := Fdate1;
  Query_Pretenzia.Parameters.ParamByName('date2').Value := Fdate2;
  Query_Pretenzia.Open;

  StoreRegistryGrid(rgLoad, '\Software\Lis1\Pretenzia_Grids', cxGrid1DBBandedTableView1);
  StoreRegistryGrid(rgLoad, '\Software\Lis1\Pretenzia_Grids', cxGridDBBandedTableView1);

  if Flag then begin
    FormStyle := fsNormal;
    Position := poScreenCenter;
    dxBarButton20.Visible := ivAlways;
    cxGrid1DBBandedTableView1.OnDblClick := dxBarButton20Click;
  end;


  Screen.Cursor := 0;
end;

procedure TfmPretenzia.cxGrid1DBBandedTableView1CustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
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

procedure TfmPretenzia.cxGrid1DBBandedTableView1CustomDrawColumnHeader(
  Sender: TcxGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridColumnHeaderViewInfo; var ADone: Boolean);
begin
  if AViewInfo.Column.Focused then begin
    ACanvas.Brush.Color := clNavy;
    ACanvas.Font.Color := clWhite;
  end;
end;

procedure TfmPretenzia.cxGrid1DBBandedTableView1FocusedItemChanged(
  Sender: TcxCustomGridTableView; APrevFocusedItem,
  AFocusedItem: TcxCustomGridTableItem);
begin
  Sender.Painter.Invalidate;
end;

procedure TfmPretenzia.cxGrid1DBBandedTableView1FocusedRecordChanged(
  Sender: TcxCustomGridTableView; APrevFocusedRecord,
  AFocusedRecord: TcxCustomGridRecord; ANewItemRecordFocusingChanged: Boolean);
begin
  Screen.Cursor := crHourglass;

  Query_DocBlob.Close;

  if (dxBarButton13.Down) AND (AFocusedRecord <> nil) then begin
    Query_DocBlob.Parameters.ParamByName('pretenzia_id').Value := cxGrid1DBBandedTableView1pretenzia_id.DataBinding.Field.AsInteger;
    Query_DocBlob.Open;
  end;

  Screen.Cursor := crDefault;
end;

procedure TfmPretenzia.cxGrid1DBBandedTableView1KeyPress(Sender: TObject; var Key: Char);
begin
  FilterColumnGridOnKeyPress(cxGrid1DBBandedTableView1, Key);
end;

procedure TfmPretenzia.dxBarButton10Click(Sender: TObject);
var FileName : string;
    spam_dir : string;
           s : RawByteString;
       hFile : THandle;
   num_write : Cardinal;
           Q : TADOQuery;
begin
  if not cxGridDBBandedTableView1file_name.DataBinding.Field.IsNull then begin
    GetDocBlobView(cxGridDBBandedTableView1doc_id.DataBinding.Field.AsInteger, nil, '', ADOPretenzia);
  end else begin
    Application.MessageBox('НЕТ ФАЙЛА К ДАННОЙ ЗАПИСИ', 'ВНИМАНИЕ', MB_OK);
  end;

end;

procedure TfmPretenzia.dxBarButton15Click(Sender: TObject);
begin
  Screen.Cursor := crHourglass;
  if TControl(Sender).Tag = 1 then begin
    Fdate1 := IncMonth(Fdate1, -1);
  end;

  if TControl(Sender).Tag = 2 then begin
    Fdate1 := IncMonth(Fdate1, 1);
  end;

  Fdate2 := IncMonth(Fdate1, 1) - 1;
  dxBarSubItem3.Caption := FormatDateTime('mmmm yyyy', Fdate1);

  Query_Pretenzia.Close;
  Query_Pretenzia.Parameters.ParamByName('date1').Value := Fdate1;
  Query_Pretenzia.Parameters.ParamByName('date2').Value := Fdate2;
  Query_Pretenzia.Open;
  RefreshQueryGrid(cxGrid1DBBandedTableView1, 'pretenzia_id');

  Screen.Cursor := crDefault;
end;

procedure TfmPretenzia.dxBarButton16Click(Sender: TObject);
var
  ClientDS : TClientDataSet;
  users_group_cod : string;
  Q : TADOQuery;
  num_rec: integer;
  records_id: string;
  fmFilter: TfmFilter;

  function PretenziaValid: boolean;
  var
    contract_id: integer;
    i: integer;
  begin
    Result := True;
    contract_id := 0;
    with cxGrid1DBBandedTableView1 do begin
      BeginUpdate;
      with DataController do begin
        BeginLocate;

        for i := 0 to Controller.SelectedRecordCount - 1 do begin
          DataSource.DataSet.Locate(KeyFieldNames, GetRecordId(Controller.SelectedRecords[i].RecordIndex), []);

          if contract_id = 0 then
            contract_id := DataSource.DataSet.FieldByName('contract_id').AsInteger
          else
            if contract_id <> DataSource.DataSet.FieldByName('contract_id').AsInteger then begin
              Result := False;
              Application.MessageBox('Невозможен запуск в Документооборот.' + #10#13 +
                                     'У выбранных претензий должен быть один договор.', 'Внимание!', MB_ICONSTOP + MB_OK);
              Break;
            end;

          if not DataSource.DataSet.FieldByName('docs_id').IsNull then begin
            Result := False;
            Application.MessageBox('Невозможен запуск в Документооборот.' + #10#13 +
                                   'В выбранных документах содержится уже запущенные претензии.', 'Внимание!', MB_ICONSTOP + MB_OK);
            Break;
          end;
        end;

        EndLocate;
      end;
      EndUpdate;
    end;
  end;

begin

  if PretenziaValid then begin
    records_id := '';

    Q := TADOQuery.Create(nil);
    Q.Connection := ADOPretenzia;
    Q.SQL.Add('SELECT	inf_obj_cod as users_group_cod');
    Q.SQL.Add('FROM	  users INNER JOIN inf_obj on users.users_group_id = inf_obj.inf_obj_id');
    Q.SQL.Add('WHERE	users_name = system_user');
    Q.Open;

    users_group_cod := Q.FieldByName('users_group_cod').AsString;

    ClientDS := TClientDataSet.Create(nil);
    ClientDS.FieldDefs.Add('id', ftAutoInc);
    ClientDS.FieldDefs.Add('doc_type_cod', ftString, 10);
    ClientDS.FieldDefs.Add('database_cod', ftString, 10);
    ClientDS.FieldDefs.Add('users_group_cod', ftString, 10);
    ClientDS.FieldDefs.Add('acts_id', ftInteger);
    ClientDS.FieldDefs.Add('bargain_id', ftInteger);

    ClientDS.FieldDefs.Add('contract_id', ftInteger);
    ClientDS.FieldDefs.Add('contract_cod', ftString, 50);
    ClientDS.FieldDefs.Add('date_begin', ftDate);
    ClientDS.FieldDefs.Add('type_contract', ftInteger);
    ClientDS.FieldDefs.Add('firm_self_id', ftInteger);
    ClientDS.FieldDefs.Add('firm_self_name', ftString, 200);
    ClientDS.FieldDefs.Add('firm_customer_id', ftInteger);
    ClientDS.FieldDefs.Add('firm_customer_name', ftString, 200);
    ClientDS.FieldDefs.Add('currency_id', ftInteger);
    ClientDS.FieldDefs.Add('brief_name', ftString, 10);
    ClientDS.FieldDefs.Add('curator_FIO_users', ftString, 50);
    ClientDS.FieldDefs.Add('note', ftString, 400);
    ClientDS.FieldDefs.Add('docs_act_id', ftInteger);
    ClientDS.FieldDefs.Add('act_cod', ftString, 50);
    ClientDS.FieldDefs.Add('act_date', ftDate);
    ClientDS.FieldDefs.Add('docs_id', ftInteger);
    ClientDS.FieldDefs.Add('set_invoice_score', ftBoolean);
    ClientDS.FieldDefs.Add('comment', ftString, 400);
    ClientDS.FieldDefs.Add('invoice_id', ftInteger);

    ClientDS.CreateDataSet;
    ClientDS.LogChanges := False;

    Q.SQL.Clear;
    Q.SQL.Add('SELECT * FROM view_pretenzia WHERE contract_id = ' + cxGrid1DBBandedTableView1contract_id.DataBinding.Field.AsString);
    Q.Open;

    ClientDS.Append;
    ClientDS.FieldByName('doc_type_cod'      ).Value := '20';
    ClientDS.FieldByName('database_cod'      ).Value := '0';  // База Lis
    ClientDS.FieldByName('users_group_cod'   ).Value := users_group_cod;
    ClientDS.FieldByName('contract_id'       ).Value := Q.FieldByName('contract_id').Value;
    ClientDS.FieldByName('contract_cod'      ).Value := Q.FieldByName('contract_cod').Value;
    ClientDS.FieldByName('date_begin'        ).Value := Q.FieldByName('date_begin').Value;
    ClientDS.FieldByName('type_contract'     ).Value := null;//Q.FieldByName('type_contract').Value;
    ClientDS.FieldByName('firm_self_id'      ).Value := null;//Q.FieldByName('firm_self').Value;
    ClientDS.FieldByName('firm_self_name'    ).Value := null;//Q.FieldByName('firm_self_name').Value;
    ClientDS.FieldByName('firm_customer_id'  ).Value := null;//Q.FieldByName('firm_customer').Value;
    ClientDS.FieldByName('firm_customer_name').Value := Q.FieldByName('firm_customer_name').Value;
    ClientDS.FieldByName('currency_id'       ).Value := null;//Q.FieldByName('currency_id').Value;
    ClientDS.FieldByName('brief_name'        ).Value := Q.FieldByName('brief_name').Value;
    ClientDS.FieldByName('curator_FIO_users' ).Value := Q.FieldByName('curator_FIO_users').Value;
    ClientDS.FieldByName('note'              ).Value := Q.FieldByName('comment').Value;
    ClientDS.FieldByName('docs_act_id'       ).Value := null;
    ClientDS.FieldByName('act_cod'           ).Value := cxGrid1DBBandedTableView1pretenzia_cod.DataBinding.Field.Value;
    ClientDS.FieldByName('act_date'          ).Value := null;//cxGrid1DBBandedTableView1acts_date.DataBinding.Field.Value;
    ClientDS.FieldByName('docs_id'           ).Value := null;
    ClientDS.FieldByName('set_invoice_score' ).Value := null;
    ClientDS.FieldByName('acts_id'           ).Value := cxGrid1DBBandedTableView1pretenzia_id.DataBinding.Field.Value;
    ClientDS.FieldByName('comment'           ).Value := cxGrid1DBBandedTableView1comment.DataBinding.Field.Value;
    ClientDS.FieldByName('bargain_id'        ).Value := null;//cxGrid1DBBandedTableView1bargain_id.DataBinding.Field.Value;
    ClientDS.FieldByName('invoice_id'        ).Value := cxGrid1DBBandedTableView1pretenzia_id.DataBinding.Field.Value;
    ClientDS.Post;

    Q.SQL.Clear;
    Q.SQL.Add('SELECT * FROM view_doc_blob WHERE pretenzia_id = ' + cxGrid1DBBandedTableView1pretenzia_id.DataBinding.Field.AsString);
    Q.Open;

    fmFilter := TfmFilter.Create(0, Q, 'doc_id', 'doc_cod', 'doc_describe');
    fmFilter._SetDocPretenzia := cxGridDBBandedTableView1;
    if fmFilter.ShowModal = mrOk then begin
      if fmFilter._GetStrId <> '' then begin
        Q.SQL.Clear;
        Q.SQL.Add('SELECT * FROM view_doc_blob WHERE doc_id in (' + fmFilter._GetStrId + ')');
        Q.Open;
        Q.First;
        while not Q.Eof do begin
          ClientDS.Append;
          ClientDS.FieldByName('doc_type_cod'      ).Value := '20';
          ClientDS.FieldByName('database_cod'      ).Value := '0';  // База Lis
          ClientDS.FieldByName('users_group_cod'   ).Value := users_group_cod;
          ClientDS.FieldByName('contract_id'       ).Value := null;
          ClientDS.FieldByName('contract_cod'      ).Value := null;
          ClientDS.FieldByName('date_begin'        ).Value := null;
          ClientDS.FieldByName('type_contract'     ).Value := null;
          ClientDS.FieldByName('firm_self_id'      ).Value := null;
          ClientDS.FieldByName('firm_self_name'    ).Value := null;
          ClientDS.FieldByName('firm_customer_id'  ).Value := null;
          ClientDS.FieldByName('firm_customer_name').Value := null;
          ClientDS.FieldByName('currency_id'       ).Value := null;
          ClientDS.FieldByName('brief_name'        ).Value := null;
          ClientDS.FieldByName('curator_FIO_users' ).Value := null;
          ClientDS.FieldByName('note'              ).Value := null;
          ClientDS.FieldByName('docs_act_id'       ).Value := null;
          ClientDS.FieldByName('act_cod'           ).Value := null;
          ClientDS.FieldByName('act_date'          ).Value := null;
          ClientDS.FieldByName('docs_id'           ).Value := null;
          ClientDS.FieldByName('set_invoice_score' ).Value := null;
          ClientDS.FieldByName('acts_id'           ).Value := null;
          ClientDS.FieldByName('comment'           ).Value := null;
          ClientDS.FieldByName('bargain_id'        ).Value := null;
          ClientDS.FieldByName('invoice_id'        ).Value := Q.FieldByName('doc_id').Value;;
          ClientDS.Post;

          Q.Next;
        end;
      end;
    end;

    if DocsRun(ClientDS, Fusr_pwd, users_group_cod) = mrOk then
      RefreshQueryGrid(cxGrid1DBBandedTableView1, cxGrid1DBBandedTableView1.DataController.KeyFieldNames);

    Q.Free;
    ClientDS.Free;
  end
end;

procedure TfmPretenzia.dxBarButton12Click(Sender: TObject);
begin
  fmPeriod := TfmPeriod.Create(Application, Fdate1, Fdate2, 3);
  if fmPeriod.ShowModal=mrOK then begin
    Screen.Cursor := crHourglass;
    Fdate1 := fmPeriod._GetMonth;
    Fdate2 := IncMonth(Fdate1, 1) - 1;
    dxBarSubItem3.Caption := FormatDateTime('mmmm yyyy', Fdate1);

    Query_Pretenzia.Close;
    Query_Pretenzia.Parameters.ParamByName('date1').Value := Fdate1;
    Query_Pretenzia.Parameters.ParamByName('date2').Value := Fdate2;
    Query_Pretenzia.Open;
    RefreshQueryGrid(cxGrid1DBBandedTableView1, 'pretenzia_id');
    Screen.Cursor := crDefault;
  end;
end;

procedure TfmPretenzia.dxBarButton13Click(Sender: TObject);
begin
  GroupBox1.Visible := dxBarButton13.Down;
  Splitter1.Visible := dxBarButton13.Down;
end;

procedure TfmPretenzia.dxBarButton14Click(Sender: TObject);
begin
  fmPeriod := TfmPeriod.Create(Application, Fdate1, Fdate2, 1);
  if fmPeriod.ShowModal=mrOK then begin
    Screen.Cursor := crHourglass;
    Fdate1 := fmPeriod._GetDateBegin;
    Fdate2 := fmPeriod._GetDateEnd;

    dxBarSubItem3.Caption := FormatDateTime('dd.mm.yy', Fdate1) + ' - ' + FormatDateTime('dd.mm.yy', Fdate2);

    Query_Pretenzia.Close;
    Query_Pretenzia.Parameters.ParamByName('date1').Value := Fdate1;
    Query_Pretenzia.Parameters.ParamByName('date2').Value := Fdate2;
    Query_Pretenzia.Open;
    RefreshQueryGrid(cxGrid1DBBandedTableView1, 'pretenzia_id');
    Screen.Cursor := crDefault;
  end;
end;

procedure TfmPretenzia.dxBarButton1Click(Sender: TObject);
begin
  fmPretenziaAdd := TfmPretenziaAdd.Create(Application, Fusr_pwd);
  if fmPretenziaAdd.ShowModal = mrOk then RefreshQueryGrid(cxGrid1DBBandedTableView1, 'pretenzia_id');
end;

procedure TfmPretenzia.dxBarButton20Click(Sender: TObject);
begin
  Fpretenzia_id := cxGrid1DBBandedTableView1pretenzia_id.DataBinding.Field.AsInteger;
  Fcontract_id  := cxGrid1DBBandedTableView1contract_id.DataBinding.Field.AsInteger;

  if cxGridDBBandedTableView1doc_id.DataBinding.Field.IsNull then begin
    Ffiles_id := -9;
  end else begin
    Ffiles_id     := cxGridDBBandedTableView1doc_id.DataBinding.Field.AsInteger;
  end;

  if cxGrid1DBBandedTableView1docs_id.DataBinding.Field.IsNull then
    Fpretenzia_docs_id := -9
  else if cxGrid1DBBandedTableView1docs_status_cod.DataBinding.Field.Value = '2' then
    Fpretenzia_docs_id := -9
  else
    Fpretenzia_docs_id := cxGrid1DBBandedTableView1docs_id.DataBinding.Field.AsInteger;

  if cxGridDBBandedTableView1docs_id.DataBinding.Field.IsNull then
    Fdoc_blob_docs_id := -9
  else
    Fdoc_blob_docs_id := cxGridDBBandedTableView1docs_id.DataBinding.Field.AsInteger;

  ModalResult := mrOk
end;

procedure TfmPretenzia.dxBarButton2Click(Sender: TObject);
begin
  fmPretenziaAdd := TfmPretenziaAdd.Create(Application, Fusr_pwd);
  fmPretenziaAdd._SetUpdate := cxGrid1DBBandedTableView1pretenzia_id.DataBinding.Field.AsInteger;
  if fmPretenziaAdd.ShowModal = mrOk then RefreshQueryGrid(cxGrid1DBBandedTableView1, 'pretenzia_id', fmPretenziaAdd._GetPretenziaId);
end;

procedure TfmPretenzia.dxBarButton3Click(Sender: TObject);
var  i : integer;
    SP : TADOStoredProc;
begin
  if Application.MessageBox(PChar('ВЫ ТОЧНО УВЕРЕНЫ, ЧТО ХОТИТЕ УДАЛИТЬ ПРЕТЕНЗИЮ?'),'ВНИМАНИЕ',MB_OKCANCEL) = ID_OK then begin
    Screen.Cursor := -11;
    SP := TADOStoredProc.Create(nil);
    SP.Connection := ADOPretenzia;
    SP.ProcedureName := 'sp_pretenzia_modify';

    for i := 0 to cxGrid1DBBandedTableView1.Controller.SelectedRowCount - 1 do begin
      ShowTextMessage('Осталось ' + IntToStr(cxGrid1DBBandedTableView1.Controller.SelectedRowCount - i) + ' записей...', False);

      SP.Parameters.Refresh;
      SP.Parameters.ParamByName('@pretenzia_id').Value := cxGrid1DBBandedTableView1.Controller.SelectedRows[i].Values[cxGrid1DBBandedTableView1pretenzia_id.Index];
      SP.Parameters.ParamByName('@type_action' ).Value := 2;
      try
        SP.ExecProc;
      except
        on E: Exception do begin
          ShowMessage(E.Message);
          Screen.Cursor := crDefault;
        end;
      end;
    end;
    SP.Free;

    ShowTextMessage('Обновление данных', False);
    RefreshQueryGrid(cxGrid1DBBandedTableView1, 'pretenzia_id');
    ShowTextMessage;
    Screen.Cursor := crDefault;
  end;
end;

procedure TfmPretenzia.dxBarButton4Click(Sender: TObject);
begin
  case TdxBar(TdxBarItemLink(TdxBarButton(Sender).ClickItemLink).Owner.Owner).Tag of
    0 : PrintcxGrid(cxGrid1DBBandedTableView1);
    1 : PrintcxGrid(cxGridDBBandedTableView1);
  end;
end;

procedure TfmPretenzia.dxBarButton5Click(Sender: TObject);
begin
  case TdxBar(TdxBarItemLink(TdxBarButton(Sender).ClickItemLink).Owner.Owner).Tag of
    0 : begin
          SetRecordColor('pretenzia_id', cxGrid1DBBandedTableView1, 'PRETENZIA', TComponent(Sender).Tag = 1);
          RefreshQueryGrid(cxGrid1DBBandedTableView1, 'pretenzia_id', cxGrid1DBBandedTableView1pretenzia_id.DataBinding.Field.AsInteger);
        end;
    1 : begin
          SetRecordColor('doc_id', cxGridDBBandedTableView1, 'DOC_BLOB', TComponent(Sender).Tag = 1);
          RefreshQueryGrid(cxGridDBBandedTableView1, 'doc_id', cxGridDBBandedTableView1doc_id.DataBinding.Field.AsInteger);
        end;
  end;
end;

procedure TfmPretenzia.dxBarButton7Click(Sender: TObject);
begin
  case TdxBar(TdxBarItemLink(TdxBarButton(Sender).ClickItemLink).Owner.Owner).Tag of
    0 : SetdxDBGridColumns(cxGrid1DBBandedTableView1);
    1 : SetdxDBGridColumns(cxGridDBBandedTableView1);
  end;
end;

procedure TfmPretenzia.dxBarButton8Click(Sender: TObject);
begin
  case TdxBar(TdxBarItemLink(TdxBarButton(Sender).ClickItemLink).Owner.Owner).Tag of
    0 : cxGrid1DBBandedTableView1.OptionsView.GroupByBox := not cxGrid1DBBandedTableView1.OptionsView.GroupByBox;
    1 : cxGridDBBandedTableView1.OptionsView.GroupByBox  := not cxGridDBBandedTableView1.OptionsView.GroupByBox;
  end;
end;

procedure TfmPretenzia.dxBarButton9Click(Sender: TObject);
begin
  RefreshQueryGrid(cxGrid1DBBandedTableView1, 'pretenzia_id');
end;

{$REGION 'Фильтр по всем записям'}
procedure TfmPretenzia.dxBarButton_FilterRecords1Click(Sender: TObject);
begin
  cxGrid1DBBandedTableView1.Filtering.ColumnFilteredItemsList := not dxBarButton_FilterRecords1.Down;
end;

procedure TfmPretenzia.dxBarButton_FilterRecords2Click(Sender: TObject);
begin
  cxGridDBBandedTableView1.Filtering.ColumnFilteredItemsList := not dxBarButton_FilterRecords2.Down;
end;
{$ENDREGION 'Фильтр по всем записям'}

procedure TfmPretenzia.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TfmPretenzia.FormDestroy(Sender: TObject);
begin
  StoreRegistryDate(rgSave, '\Software\Lis1\DateTime\Pretenzia', Fdate1, Fdate2);
  StoreRegistryGrid(rgSave, '\Software\Lis1\Pretenzia_Grids', cxGrid1DBBandedTableView1);
  StoreRegistryGrid(rgSave, '\Software\Lis1\Pretenzia_Grids', cxGridDBBandedTableView1);
end;

procedure TfmPretenzia.SetContractId(contract_id: integer);
var Q: TADOQuery;
begin
  Q := TADOQuery.Create(nil);
  Q.Connection := ADOPretenzia;
  Q.SQL.Add('SELECT * FROM view_contract WHERE contract_id = ' + IntToStr(contract_id));
  Q.Open;


  cxGrid1DBBandedTableView1.DataController.Filter.Clear;
  cxGrid1DBBandedTableView1.DataController.Filter.Options := cxGrid1DBBandedTableView1.DataController.Filter.Options + [fcoCaseInsensitive];
  cxGrid1DBBandedTableView1.DataController.Filter.Root.BoolOperatorKind := fboAnd;

  cxGrid1DBBandedTableView1.DataController.Filter.Root.AddItem(cxGrid1DBBandedTableView1contract_cod, foLike, '%' + Q.FieldByName('contract_cod').AsString + '%', '[' + Q.FieldByName('contract_cod').AsString + ']');
  cxGrid1DBBandedTableView1.DataController.Filter.Active := True;

  Q.Free;
end;

procedure TfmPretenzia.SetSelectFiles(set_seletc_files: boolean);
begin
  if set_seletc_files then begin
    dxBarButton1.Enabled := False;
    dxBarButton2.Enabled := False;
    dxBarButton3.Enabled := False;
  end;
end;

end.
