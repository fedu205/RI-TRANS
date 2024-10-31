unit RepFactTrack;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Default,
  Dialogs, StdCtrls, DB, ADODB, DBClient, ComCtrls, ExtCtrls, Menus, ImageList, ImgList,
  cxStyles, cxCustomData, cxGraphics, cxFilter, cxData, cxDataStorage, cxEdit, cxDBData, cxGridLevel, cxClasses, cxControls,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid, cxTextEdit, cxInplaceContainer,
  cxLabel, cxMaskEdit, cxDropDownEdit, cxRadioGroup, cxGroupBox, cxCalendar, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox,
  cxDBExtLookupComboBox, cxGridBandedTableView, cxGridDBBandedTableView, cxLookAndFeelPainters, cxLookAndFeels, cxMemo, cxButtonEdit,
  cxPropertiesStore, cxContainer,  cxCurrencyEdit, cxCheckBox, dxSkinsCore, dxSkinsDefaultPainters, dxSkinBlack, dxSkinBlue, dxSkinBlueprint,
  dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin,
  dxSkinMetropolis, dxSkinMetropolisDark, dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013DarkGray,
  dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus, dxSkinSilver,
  dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008, dxSkinTheAsphaltWorld, dxSkinValentine, dxSkinVS2010, dxSkinWhiteprint, dxSkinXmas2008Blue,
  dxCore, cxDateUtils, dxGDIPlusClasses, dxSkinOffice2016Colorful, dxSkinOffice2016Dark, dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, cxCheckComboBox, cxButtons, dxSpreadSheetCore, dxSpreadSheetGraphics, dxSpreadSheet, dxSpreadSheetFormatXLSX,
  dxSpreadSheetContainers, cxImageList, dxSkinTheBezier, dxSkinOffice2019Colorful, dxSkinBasic, dxSkinOffice2019Black, dxSkinOffice2019DarkGray,
  dxSkinOffice2019White;

type
  TfmRepFactTrack = class(TForm)
    ADOReport: TADOConnection;
    Panel1: TPanel;
    Panel30: TPanel;
    Image2: TImage;
    cxLabel108: TcxLabel;
    Panel2: TPanel;
    Panel3: TPanel;
    Label6: TLabel;
    cxLookupComboBox1: TcxLookupComboBox;
    Panel4: TPanel;
    GroupBox8: TGroupBox;
    cxMemo1: TcxMemo;
    Panel5: TPanel;
    cxDateEdit1: TcxDateEdit;
    cxDateEdit2: TcxDateEdit;
    Label1: TLabel;
    Label2: TLabel;
    GroupBox11: TGroupBox;
    Splitter1: TSplitter;
    Query_Type_Rep: TADOQuery;
    DS_Type_Rep: TDataSource;
    cxPropertiesStore1: TcxPropertiesStore;
    GroupBox4: TGroupBox;
    Label9: TLabel;
    Label8: TLabel;
    cxButtonEdit2: TcxButtonEdit;
    cxButtonEdit3: TcxButtonEdit;
    cxButtonEdit9: TcxButtonEdit;
    cxButtonEdit10: TcxButtonEdit;
    Panel6: TPanel;
    cxCurrencyEdit1: TcxCurrencyEdit;
    cxCurrencyEdit2: TcxCurrencyEdit;
    Label3: TLabel;
    Label4: TLabel;
    GroupBox12: TGroupBox;
    GroupBox2: TGroupBox;
    cxLookupComboBox2: TcxLookupComboBox;
    Label5: TLabel;
    cxCheckBox7: TcxCheckBox;
    Query_Owner: TADOQuery;
    DS_Owner: TDataSource;
    GroupBox3: TGroupBox;
    cxRadioButton1: TcxRadioButton;
    cxRadioButton2: TcxRadioButton;
    cxRadioButton6: TcxRadioButton;
    cxRadioButton7: TcxRadioButton;
    cxCheckBox1: TcxCheckBox;
    cxCheckComboBox1: TcxCheckComboBox;
    Label7: TLabel;
    cxGroupBox1: TcxGroupBox;
    cxButtonEdit1: TcxButtonEdit;
    Label10: TLabel;
    cxComboBox4: TcxComboBox;
    Label13: TLabel;
    OpenDialog1: TOpenDialog;
    cxImageList1: TcxImageList;
    cxButton1: TcxButton;
    GroupBox1: TGroupBox;
    Label11: TLabel;
    cxLookupComboBox3: TcxLookupComboBox;
    Query_Ctm_Save: TADOQuery;
    DS_Ctm_Save: TDataSource;
    GroupBox5: TGroupBox;
    cxCheckBox2: TcxCheckBox;
    cxButton2: TcxButton;
    cxButton3: TcxButton;
    procedure cxLookupComboBox1PropertiesEditValueChanged(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cxButtonEdit2PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure cxButtonEdit3PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure cxDateEdit1PropertiesEditValueChanged(Sender: TObject);
    procedure cxCheckBox7PropertiesEditValueChanged(Sender: TObject);
    procedure cxCheckComboBox1PropertiesEditValueChanged(Sender: TObject);
    procedure cxButtonEdit1PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure cxButton1Click(Sender: TObject);
    procedure cxButton2Click(Sender: TObject);
  private
    Fusr_pwd  : PUser_pwd;
    FType_rep : integer;
    Fset_arenda : boolean;

    Ffile_stream : TMemoryStream;

    procedure UpdateCxButtonEdit(Sender: TObject; AButtonIndex: Integer; TableName: string; CapObject: string; Btn1, Btn2: TcxButtonEdit);
    procedure PrintReport();
  public
    function MemoToSQL(Value: TcxMemo): string;
    constructor Create(AOwner:TApplication; flag: boolean;usr_pwd:PUser_pwd);
  published
    property _SetArenda : boolean write Fset_arenda;
  end;

var
  fmRepFactTrack: TfmRepFactTrack;

function CreateWndRepFactTrack(AppHand: THandle; flag: boolean; usr_pwd: PUser_pwd) : variant; export;
function CreateWndRepFactTrackArenda(AppHand: THandle; flag: boolean; usr_pwd:PUser_pwd) : variant; export;

implementation
     uses Raznoe, Filter, Other, ComObj, DateUtils, StrUtils, XMLDoc, ShellAPI;

{$R *.dfm}

//Выбор параметров для аренды
function CreateWndRepFactTrackArenda(AppHand: THandle; flag: boolean; usr_pwd:PUser_pwd) : variant;
begin
  Application.Handle := AppHand;
  try
    fmRepFactTrack := TfmRepFactTrack.Create(Application, flag, usr_pwd);
    fmRepFactTrack._SetArenda :=True;
    fmRepFactTrack.cxLabel108.Caption := 'Параметры для отчета';
    fmRepFactTrack.Panel3.Visible := False;
    fmRepFactTrack.GroupBox11.Visible := False;
    if  fmRepFactTrack.ShowModal = mrOk then begin
      result := VarArrayOf([fmRepFactTrack.cxDateEdit1.EditValue, fmRepFactTrack.cxDateEdit2.EditValue, fmRepFactTrack.cxButtonEdit9.EditValue, fmRepFactTrack.cxButtonEdit10.EditValue, fmRepFactTrack.MemoToSQL(fmRepFactTrack.cxMemo1)]);
    end else begin
      result := VarArrayOf([-9, '']);
    end;
  finally
    fmRepFactTrack.Free;
  end;
end;


function CreateWndRepFactTrack(AppHand: THandle; flag: boolean; usr_pwd:PUser_pwd) : variant;
begin
  Application.Handle := AppHand;
  try
    fmRepFactTrack := TfmRepFactTrack.Create(Application, flag, usr_pwd);
    if  fmRepFactTrack.ShowModal = mrOk then
      result := VarArrayOf([-9, '']);
  finally
    fmRepFactTrack.Free;
  end;
end;

constructor TfmRepFactTrack.Create(AOwner:TApplication; flag: boolean; usr_pwd:PUser_pwd);
begin
  Screen.Cursor := -11;
  inherited Create(nil);

  Fusr_pwd := usr_pwd;
  ADOReport.Connected := False;
  ADOReport.ConnectionString := 'Persist Security Info=True;Provider=SQLOLEDB.1;User ID='+usr_pwd^.user_name+';Password='+usr_pwd^.user_pass+';Initial Catalog='+usr_pwd^.catalog+';Data Source='+usr_pwd^.server+';';
  ADOReport.CommandTimeout := 200;
  ADOReport.Connected := True;

  if not LisCheck1(ADOReport.ConnectionString) then begin
    ADOReport.Connected := False;
    ADOReport.ConnectionString := 'Persist Security Info=True;Provider=DB.1;User ID='+usr_pwd^.user_name+';Password='+usr_pwd^.user_pass+';Initial Catalog='+usr_pwd^.catalog+';Data Source='+usr_pwd^.server+';';
  end;

  Query_Type_Rep.Open;
  cxLookupComboBox1.EditValue := Query_Type_Rep.FieldByName('inf_obj_id').Value;

  if VarIsNull(cxDateEdit1.EditValue) then  cxDateEdit1.EditValue := Date;
  if VarIsNull(cxDateEdit2.EditValue) then  cxDateEdit2.EditValue := Date;


  Ffile_stream := TMemoryStream.Create;

  cxCheckComboBox1PropertiesEditValueChanged(nil);
  StoreRegistryMemo(rgLoad, '\Software\LIS1\cxMemo\RepFactTrack', cxMemo1);
  Fset_arenda := False;

  MonitorEventFormOpen('OPEN_FORM', self.Name, ADOReport, -9);
  Screen.Cursor := 0;
end;

procedure TfmRepFactTrack.cxButton1Click(Sender: TObject);
var tmp_path : string;
begin
  if (cxButtonEdit1.Text <> '') and (Ffile_stream.Size <> 0) then begin

    tmp_path := ExtractFilePath(ParamStr(0)) + 'Temp';
    ForceDirectories(tmp_path);
    DeleteFileFromDir(tmp_path);
    tmp_path := tmp_path + '\' + cxButtonEdit1.Text;
    if not FileExists(tmp_path) then begin
      Ffile_stream.SaveToFile(tmp_path);
    end;
    ShellExecute(HWND(nil), 'open', PChar(tmp_path), nil, nil, SW_SHOWNORMAL);

  end;
end;

procedure TfmRepFactTrack.cxButton2Click(Sender: TObject);
type
   TFuncCalcTarif = procedure(connect: TADOConnection; ctm_save_id: integer; ClientDS_param: TClientDataSet; set_show_message: boolean);
   TFunc = procedure(date: TDateTime; var ClientDS_param: TClientDataSet; set_show_message: boolean);
   TFunc2 = function(date: TDateTime; var ClientDS: TClientDataSet; set_show_message: boolean): variant;
var   exWks, exApp  : Variant;
      i, row_0, id,
      row_insert,k  : integer;
      SP,SP1        : TADOStoredProc;
      RS            : _Recordset;
      num_vagon     : string;
    start_num_vagon : integer;
    str_type_park_id : string;
    end_num_vagon   : integer;
    ClientDS        : TClientDataSet;
    ClientDS_dist   : TClientDataSet;
    ClientDS_rate   : TClientDataSet;
    login           : string;
    db_name         : string;
    ADOEtran        : TADOConnection;
    show_distance   : boolean;
    SpreadSheet     : TdxSpreadSheet;
    Sheet           : TdxSpreadSheetTableView;
    date_otpr,date_otpr1,date_otpr2,date_otpr3 : TDateTime;
    set_done        : boolean;
    dist            : integer;
    FFuncCalcTarif  : TFuncCalcTarif;
    handle          : THandle;
    v               : Variant;
    ClientDS_CalcTarif : TClientDataSet;
    ClientDS_CalcTarif357 : TClientDataSet;


    FFunc   : TFunc;
    FFunc2  : TFunc;
    ClientDS_RateEmpty : TClientDataSet;
    node_begin_cod : string;
    node_end_cod   : string;
    kargoETSNG_cod : string;
    rod_vagon_cod  : string;
begin
  if Fset_arenda then exit;

  Query_Type_Rep.Locate('inf_obj_id', cxLookupComboBox1.EditValue, []);
  if Query_Type_Rep.FieldByName('inf_obj_cod').AsString = '137.2' then
    FType_rep := 1372
  else
    FType_rep := Query_Type_Rep.FieldByName('inf_obj_cod').AsInteger;


  if (FType_rep = 197) or (FType_rep = 1372) then begin
    PrintReport();
    ModalResult := mrNone;
    exit;
  end;


  str_type_park_id := '';
  for i:= 0 to cxCheckComboBox1.Properties.Items.Count - 1 do begin
    if cxCheckComboBox1.States[i] = cbsUnchecked then begin
      str_type_park_id := GetDataFromCheckBox(cxCheckComboBox1, False);
      break;
    end;
  end;

  if (FType_rep = 366) or (FType_rep = 367) then begin
    PrintReport366_367(null, null, FType_rep, ADOReport, MemoToSQL(cxMemo1), cxDateEdit1.Date, cxDateEdit2.Date, cxButtonEdit9.Text, cxButtonEdit10.Text, str_type_park_id, Round(cxCurrencyEdit2.Value), cxCurrencyEdit1.Value, cxCurrencyEdit2.Value);
    ModalResult := mrNone;
    exit;
  end;


  ClientDS_rate := TClientDataSet.Create(Application);
  ClientDS_rate.FieldDefs.Add('dist1', ftInteger);  // Расстояние с
  ClientDS_rate.FieldDefs.Add('dist2', ftInteger);  // Расстояние по
  ClientDS_rate.FieldDefs.Add('rate',  ftCurrency); // Ставка
  ClientDS_rate.CreateDataSet;
  ClientDS_rate.LogChanges := False;

  ModalResult := mrOk;
  if FType_rep = 1372 then begin
    if (cxButtonEdit1.Text = '') or (Ffile_stream.Size = 0) or (cxComboBox4.ItemIndex = -1) then begin
      Application.MessageBox('Выберите сетку!', 'Внимание', MB_ICONSTOP or MB_OK);
      ModalResult := mrNone;
      Exit;
    end;

    SpreadSheet := TdxSpreadSheet.Create(nil);
    SpreadSheet.BeginUpdate();
    SpreadSheet.LoadFromStream(Ffile_stream);
    Sheet := (SpreadSheet.Sheets[cxComboBox4.ItemIndex] as TdxSpreadSheetTableView);

    i := 1;
    set_done := True;
    while set_done do begin
      if (not Assigned(Sheet.Cells[i, 0])) or (Sheet.Cells[i, 0].IsEmpty) or
         (not Assigned(Sheet.Cells[i, 1])) or (Sheet.Cells[i, 1].IsEmpty) or
         (not Assigned(Sheet.Cells[i, 2])) or (Sheet.Cells[i, 2].IsEmpty) then
          set_done := False
      else begin
        ClientDS_rate.Append;
        ClientDS_rate.FieldByName('dist1').Value := Sheet.Cells[i,0].AsInteger;
        ClientDS_rate.FieldByName('dist2').Value := Sheet.Cells[i,1].AsInteger;
        ClientDS_rate.FieldByName('rate').Value  := Sheet.Cells[i,2].AsCurrency;
        ClientDS_rate.Post;
        i := i + 1;
      end;
    end;

    SpreadSheet.EndUpdate;

    Sheet.Free;
    SpreadSheet.Free;
  end;


  ShowTextMessage('Запуск Excel...', False);
  exApp := CreateOleObject('Excel.Application');
  exApp.Application.EnableEvents := False;
  exApp.ScreenUpdating := False;
  exApp.Workbooks.Add(GetDocBlob(ADOReport, FType_rep, 9, True));
  exWks := exApp.ActiveWorkbook.WorkSheets[1];
  //exApp.Visible := True;
  exApp.ActiveWindow.View := 1;
  exApp.ScreenUpdating := False;

  ShowTextMessage('Запрос данных с сервера...', False);
  SP := TADOStoredProc.Create(nil);
  ADOEtran := TADOConnection.Create(nil);

  if (FType_rep = 119) OR (FType_rep = 196) OR (FType_rep = 197) then begin
    if Fusr_pwd.user_group_id =  158706 then begin login  := 'Etran_GRU'; db_name := 'lis1'; end;
//    if Fusr_pwd.user_group_id =  158705 then begin login  := 'Etran_KHT'; db_name := 'lis1'; end;
//    if Fusr_pwd.user_group_id =  1139124 then begin login := 'Etran_ILG'; db_name := 'lis1'; end;

    ADOEtran.Connected := False;
    ADOEtran.LoginPrompt := False;
    ADOEtran.ConnectionString := 'Provider=SQLOLEDB.1;Persist Security Info=True;User ID='+login+';Password='+'etran'+';Initial Catalog='+db_name+';Data Source='+Fusr_pwd.server+';';
    ADOEtran.Connected := True;
    SP.Connection := ADOEtran;
  end else SP.Connection := ADOReport;

  if FType_rep = 1861	then
    SP.ProcedureName := 'sp_Report_fact_track_1861'
  else
    SP.ProcedureName := 'sp_Report_fact_track';

  SP.CommandTimeout := 600;
  SP.Parameters.Refresh;
  SP.Parameters.ParamByName('@type_report'    ).Value := FType_rep;
  SP.Parameters.ParamByName('@date_begin'     ).Value := cxDateEdit1.EditValue;
  SP.Parameters.ParamByName('@date_end'       ).Value := cxDateEdit2.EditValue;
  SP.Parameters.ParamByName('@set_archive'    ).Value := Ord(cxCheckBox1.Checked);
  SP.Parameters.ParamByName('@users_group_id' ).Value := Fusr_pwd.user_group_id;

  SP.Parameters.ParamByName('@str_node_begin_cod' ).Value := cxButtonEdit9.EditValue;
  SP.Parameters.ParamByName('@str_node_end_cod' ).Value := cxButtonEdit10.EditValue;

  //Если все парки выбраны или все не выбраны, отбор по парку не добавляем.
  str_type_park_id := '';
  for i:= 0 to cxCheckComboBox1.Properties.Items.Count - 1 do begin
    if cxCheckComboBox1.States[i] = cbsUnchecked then begin
      str_type_park_id := GetDataFromCheckBox(cxCheckComboBox1, False);
      break;
    end;
  end;

  if str_type_park_id <> '' then
    SP.Parameters.ParamByName('@str_type_park_id' ).Value := str_type_park_id;

  if FType_rep <> 147 then begin
    SP.Parameters.ParamByName('@str_users_owner').Value := null;
    SP.Parameters.ParamByName('@node_begin_cod' ).Value := cxButtonEdit9.EditValue;
    SP.Parameters.ParamByName('@node_end_cod'   ).Value := cxButtonEdit10.EditValue;
  end;

  if (FType_rep = 154) OR (FType_rep = 1541) OR (FType_rep = 1542) OR (FType_rep = 157) OR (FType_rep = 158) OR (FType_rep = 197) OR (FType_rep = 196) OR (FType_rep = 252) OR (FType_rep = 257) OR (FType_rep = 281) OR (FType_rep = 366) OR (FType_rep = 367) OR (FType_rep = 372) then begin
    SP.Parameters.ParamByName('@norm_stay').Value := cxCurrencyEdit2.EditValue;
  end;

  if (FType_rep = 205) AND (cxLookupComboBox2.EditValue <> -9) then begin
    SP.Parameters.ParamByName('@contract_id').Value := cxLookupComboBox2.EditValue;
  end;

  if MemoToSQL(cxMemo1) = '' then SP.Parameters.ParamByName('@str_num_vagon'  ).Value := Null
  else SP.Parameters.ParamByName('@str_num_vagon'  ).Value := MemoToSQL(cxMemo1);

  show_distance := False;

  if (FType_rep = 136) OR (FType_rep = 317) OR (FType_rep = 305) OR (FType_rep = 356) OR (FType_rep = 137) OR (FType_rep = 141) OR (FType_rep = 395) then
    if Application.MessageBox('Заполнять расстояние?','Внимание', MB_YESNO) = ID_YES then show_distance := True;

  if (FType_rep = 1372) OR (FType_rep = 357) then
    show_distance := True;

  SP.Open;

  if (FType_rep = 357) then begin

    ClientDS_CalcTarif357 := TClientDataSet.Create(nil);
    ClientDS_CalcTarif357.FieldDefs.Add('fact_id'       , ftInteger);
    ClientDS_CalcTarif357.FieldDefs.Add('num_vagon'     , ftString, 20);
    ClientDS_CalcTarif357.FieldDefs.Add('vagon_count'   , ftInteger);
    ClientDS_CalcTarif357.FieldDefs.Add('rod_vagon_cod' , ftString, 20);
    ClientDS_CalcTarif357.FieldDefs.Add('node_begin_cod', ftString, 20);
    ClientDS_CalcTarif357.FieldDefs.Add('node_end_cod'  , ftString, 20);
    ClientDS_CalcTarif357.FieldDefs.Add('kargoETSNG_cod', ftString, 20);
    ClientDS_CalcTarif357.FieldDefs.Add('date_from_to'  , ftDate);
    ClientDS_CalcTarif357.FieldDefs.Add('fact_weight'   , ftFloat);
    ClientDS_CalcTarif357.FieldDefs.Add('transport_pay' , ftCurrency);
    ClientDS_CalcTarif357.FieldDefs.Add('rate_val'      , ftCurrency);
    ClientDS_CalcTarif357.FieldDefs.Add('rate_val_usd'  , ftCurrency);
    ClientDS_CalcTarif357.FieldDefs.Add('rate_val_eur'  , ftCurrency);
    ClientDS_CalcTarif357.FieldDefs.Add('set_route'     , ftBoolean);
    ClientDS_CalcTarif357.CreateDataSet;
    ClientDS_CalcTarif357.LogChanges := False;

    SP.First;
    while not SP.Eof do begin
      ClientDS_CalcTarif357.Append;
      ClientDS_CalcTarif357.FieldByName('fact_id'        ).Value := SP.FieldByName('id').Value;
      ClientDS_CalcTarif357.FieldByName('num_vagon'      ).Value := SP.FieldByName('num_vagon').Value;
      ClientDS_CalcTarif357.FieldByName('node_begin_cod' ).Value := SP.FieldByName('node_begin_cod').Value;
      ClientDS_CalcTarif357.FieldByName('node_end_cod'   ).Value := SP.FieldByName('node_end_cod').Value;
      ClientDS_CalcTarif357.FieldByName('kargoETSNG_cod' ).Value := SP.FieldByName('kargoETSNG_cod_full').Value;
      ClientDS_CalcTarif357.FieldByName('date_from_to'   ).Value := SP.FieldByName('date_otpr').Value;
      ClientDS_CalcTarif357.FieldByName('fact_weight'    ).Value := 69;
      ClientDS_CalcTarif357.FieldByName('vagon_count'    ).Value := 1;
      ClientDS_CalcTarif357.FieldByName('set_route'      ).Value := False;
      ClientDS_CalcTarif357.Post;

      SP.Next;

      ShowTextMessage('Подготовка вагонов. ' + IntToStr(SP.RecNo) + ' из ' + IntToStr(SP.RecordCount) + ' вагонов...', False);
    end;

    handle  := LoadLibrary('ctm_tarif.dll');
    @FFunc2 := GetProcAddress(handle, 'GetCalcTariffCalculate3');
    FFunc2(Date, ClientDS_CalcTarif357, True);
    FreeLibrary(handle);
  end;


  if (FType_rep = 141) and (cxCheckBox2.Checked) then begin
    ClientDS_RateEmpty := TClientDataSet.Create(nil);
    ClientDS_RateEmpty.FieldDefs.Add('date_from_to'  , ftDateTime);
    ClientDS_RateEmpty.FieldDefs.Add('node_begin_cod', ftString, 10);
    ClientDS_RateEmpty.FieldDefs.Add('node_end_cod'  , ftString, 10);
    ClientDS_RateEmpty.FieldDefs.Add('kargoETSNG_cod', ftString, 10);
    ClientDS_RateEmpty.FieldDefs.Add('rod_vagon_cod' , ftString, 10);
    ClientDS_RateEmpty.FieldDefs.Add('VSCount',        ftInteger);
    ClientDS_RateEmpty.FieldDefs.Add('calc_otpr_empty',ftCurrency);
    ClientDS_RateEmpty.IndexFieldNames := 'node_begin_cod;node_end_cod;kargoETSNG_cod;rod_vagon_cod';
    ClientDS_RateEmpty.CreateDataSet;
    ClientDS_RateEmpty.LogChanges := False;

    SP.First;
    while not SP.Eof do begin
      node_begin_cod := SP.FieldByName('node_begin_cod').AsString;
      node_end_cod   := SP.FieldByName('node_end_cod').AsString;
      kargoETSNG_cod := SP.FieldByName('kargoETSNG_cod').AsString;
      rod_vagon_cod  := SP.FieldByName('rod_vagon_cod').AsString;
      if not ClientDS_RateEmpty.FindKey([node_begin_cod, node_end_cod, kargoETSNG_cod, rod_vagon_cod]) then begin
        ClientDS_RateEmpty.Append;
        ClientDS_RateEmpty.FieldByName('date_from_to'  ).Value := SP.FieldByName('date_otpr').Value;
        ClientDS_RateEmpty.FieldByName('node_begin_cod').Value := node_begin_cod;
        ClientDS_RateEmpty.FieldByName('node_end_cod'  ).Value := node_end_cod;
        ClientDS_RateEmpty.FieldByName('kargoETSNG_cod').Value := kargoETSNG_cod;
        ClientDS_RateEmpty.FieldByName('rod_vagon_cod' ).Value := rod_vagon_cod;
        ClientDS_RateEmpty.FieldByName('VSCount'       ).Value := 1;
        ClientDS_RateEmpty.Post;
      end;

      SP.Next;
    end;

    handle := LoadLibrary('ctm_tarif.dll');
    @FFunc := GetProcAddress(handle, 'GetCalcTariffEmpty');
    FFunc(Date, ClientDS_RateEmpty, True);
    FreeLibrary(handle);
  end;


  case FType_rep of
    151,153,156 : exWks.Range['D3'].Value := cxDateEdit2.EditValue;
    152 : exWks.Range['B2'].Value := 'Детализация рейсов за период с '+DateToStr(cxDateEdit1.EditValue)+'г. по '+DateToStr(cxDateEdit2.EditValue)+'г.';
    154,1541,220 : exWks.Range['B4'].Value := 'за период с '+DateToStr(cxDateEdit1.EditValue)+' по '+DateToStr(cxDateEdit2.EditValue)+' (по дате прибытия)';
    186, 137, 1542, 141, 357 : exWks.Range['B4'].Value := 'за период с '+DateToStr(cxDateEdit1.EditValue)+' по '+DateToStr(cxDateEdit2.EditValue)+' (по дате отправления)';
    208,288 : exWks.Range['B4'].Value := 'за период с '+DateToStr(cxDateEdit1.EditValue)+' по '+DateToStr(cxDateEdit2.EditValue)+' (по дате неисправности)';
    222 : exWks.Range['B4'].Value := 'за период с '+DateToStr(cxDateEdit1.EditValue)+' по '+DateToStr(cxDateEdit2.EditValue)+' (по дате окончания ремонта)';
    281 : begin
            exWks.Range['B4'].Value := 'Простои на станции(поргузки/выгрузки) на дату ' + DateToStr(cxDateEdit2.EditValue);
            exWks.Range['B6'].Value := 'Дней простоя (- ' + IntToStr(cxCurrencyEdit2.EditValue) + ' дня, норма)';
          end;
    305, 394, 1372 : exWks.Range['B4'].Value := 'за период с '+DateToStr(cxDateEdit1.EditValue)+' по '+DateToStr(cxDateEdit2.EditValue)+' (по дате отправления гр. рейса)';
    292,436 : begin
            exWks.Range['C4'].Value := cxButtonEdit2.EditText;
            exWks.Range['C3'].Value := DateToStr(cxDateEdit1.EditValue)+' - '+DateToStr(cxDateEdit2.EditValue)
          end;
    372 : exWks.Range['B4'].Value := 'за период с '+DateToStr(cxDateEdit1.EditValue)+' по '+DateToStr(cxDateEdit2.EditValue)+' (по дате операции)';
  else
     exWks.Range['B4'].Value := 'за период с '+DateToStr(cxDateEdit1.EditValue)+' по '+DateToStr(cxDateEdit2.EditValue)+' (по дате прибытия)';
  end;

  if (FType_rep = 152) OR (FType_rep = 366) OR (FType_rep = 367) then
    row_0 := 9
  else
    row_0 := 7;

  if (FType_rep = 405) or (FType_rep = 406) then
    row_0 := 3;

  if (FType_rep = 255) OR (FType_rep = 401) then begin
    if cxRadioButton6.Checked then SP.Parameters.ParamByName('@str_type_park_cod' ).Value :=  NULL;
    if cxRadioButton1.Checked then SP.Parameters.ParamByName('@str_type_park_cod' ).Value :=  '1';
    if cxRadioButton2.Checked then SP.Parameters.ParamByName('@str_type_park_cod' ).Value :=  '0,40';
    if cxRadioButton7.Checked then SP.Parameters.ParamByName('@str_type_park_cod' ).Value :=  '93,92,91,70,60,50,36,35,34,33,32,31,30,29,20,14,13,12,11';
//    SP.Parameters.ParamByName('@type_park').Value := cxLookupComboBox2.EditValue;
  end;

  num_vagon := '';
  id := 0;
  k := 0;

  ClientDS_dist := TClientDataSet.Create(Application);
  ClientDS_dist.FieldDefs.Add('node_begin_cod',  ftString, 50); // станция отправления
  ClientDS_dist.FieldDefs.Add('node_end_cod',    ftString, 50); // станция назначения
  ClientDS_dist.FieldDefs.Add('node_add_cod',    ftString, 50); // станция дислокации (необязательно)
  ClientDS_dist.FieldDefs.Add('land_id',         ftInteger  );  // Расчет расстояния по стране (-9: полное расстояние по всем странам)
  ClientDS_dist.FieldDefs.Add('Distance',        ftInteger  );  // Расстояние (возвращаемый параметр)
  ClientDS_dist.IndexFieldNames := 'node_begin_cod;node_end_cod';

  ClientDS_dist.CreateDataSet;
  ClientDS_dist.LogChanges := False;

  //Расчет тарифа
  if FType_rep = 394 then begin
    if VarIsNull(cxLookupComboBox3.EditValue) then begin
      Application.MessageBox('Выберите расчет.','Внимание', MB_OK);
      exit;
    end;

    ClientDS_CalcTarif := TClientDataSet.Create(nil);
    ClientDS_CalcTarif.FieldDefs.Add('id',                      ftAutoInc);
    ClientDS_CalcTarif.FieldDefs.Add('calc_result',             ftBoolean); // True - расчет выполнен, False - во время расчета возникла ошибка
    ClientDS_CalcTarif.FieldDefs.Add('node_begin_cod',          ftString, 6);
    ClientDS_CalcTarif.FieldDefs.Add('node_end_cod',            ftString, 6);
    ClientDS_CalcTarif.FieldDefs.Add('Russion_Distance',        ftInteger);  // (Россия) Расстояние
    ClientDS_CalcTarif.FieldDefs.Add('Russion_PerT',            ftCurrency); // (Россия) Стоимость за тонну
    ClientDS_CalcTarif.FieldDefs.Add('Russion_TotalPrice',      ftCurrency); // (Россия) Итоговая стоимость
    ClientDS_CalcTarif.FieldDefs.Add('AllCountries_Distance',   ftInteger);  // (Весь маршрут) Расстояние
    ClientDS_CalcTarif.FieldDefs.Add('AllCountries_PerT',       ftCurrency); // (Весь маршрут) Стоимость за тонну
    ClientDS_CalcTarif.FieldDefs.Add('AllCountries_TotalPrice', ftCurrency); // (Весь маршрут) Итоговая стоимость
    ClientDS_CalcTarif.CreateDataSet;
    ClientDS_CalcTarif.LogChanges := False;

    while not SP.Eof do begin
      if not ClientDS_CalcTarif.Locate('node_begin_cod;node_end_cod', VarArrayOf([SP.FieldByName('node_begin_cod').Value, SP.FieldByName('node_end_cod').Value]), []) then begin
        //Расчет возврата отпр = назн
        ClientDS_CalcTarif.Append;
        ClientDS_CalcTarif.FieldByName('node_begin_cod').Value := SP.FieldByName('node_end_cod').AsString;
        ClientDS_CalcTarif.FieldByName('node_end_cod'  ).Value := SP.FieldByName('node_begin_cod').AsString;
        ClientDS_CalcTarif.Post;
      end;
      SP.Next;
    end;
    handle := LoadLibrary('ctm_tarif.dll');
    @FFuncCalcTarif := GetProcAddress(handle, 'GetCalcTariff');
    FFuncCalcTarif(ADOReport, cxLookupComboBox3.EditValue, ClientDS_CalcTarif, True);
    FreeLibrary(handle);
  end;

  if show_distance then begin
    case FType_rep of
      136,317,357 :  begin
              SP.First;
              while not SP.Eof do begin

                if (not SP.FieldByName('node_begin_cod').IsNull) and (not SP.FieldByName('node_end_cod').IsNull) then
                  if not ClientDS_dist.Locate('node_begin_cod;node_end_cod', VarArrayOf([SP.FieldByName('node_begin_cod').Value, SP.FieldByName('node_end_cod').Value]), []) then begin
                    ClientDS_dist.Append;
                    ClientDS_dist.FieldByName('node_begin_cod').Value := SP.FieldByName('node_begin_cod').AsString;
                    ClientDS_dist.FieldByName('node_end_cod'  ).Value := SP.FieldByName('node_end_cod').AsString;
                    ClientDS_dist.FieldByName('land_id').AsInteger := -9;
                    ClientDS_dist.Post;
                  end;

                if Assigned(SP.FindField('node_begin_cod_r')) then
                  if (not SP.FieldByName('node_begin_cod_r').IsNull) and (not SP.FieldByName('node_end_cod_r').IsNull) then
                    if not ClientDS_dist.Locate('node_begin_cod;node_end_cod', VarArrayOf([SP.FieldByName('node_begin_cod_r').Value, SP.FieldByName('node_end_cod_r').Value]), []) then begin
                      ClientDS_dist.Append;
                      ClientDS_dist.FieldByName('node_begin_cod').Value := SP.FieldByName('node_begin_cod_r').AsString;
                      ClientDS_dist.FieldByName('node_end_cod'  ).Value := SP.FieldByName('node_end_cod_r').AsString;
                      ClientDS_dist.FieldByName('land_id').AsInteger := -9;
                      ClientDS_dist.Post;
                    end;


                SP.Next;
              end;
              GetCalcDistanceGroup(ClientDS_dist);
              //GetCalcDistanceGroupFast(ClientDS_dist, '', '', True);
            end;
      305:  begin
              SP.First;
              while not SP.Eof do begin

                if (not SP.FieldByName('node_begin_cod_l').IsNull) and (not SP.FieldByName('node_end_cod_l').IsNull) then
                  if not ClientDS_dist.Locate('node_begin_cod;node_end_cod', VarArrayOf([SP.FieldByName('node_begin_cod_l').Value, SP.FieldByName('node_end_cod_l').Value]), []) then begin
                    ClientDS_dist.Append;
                    ClientDS_dist.FieldByName('node_begin_cod').Value := SP.FieldByName('node_begin_cod_l').Value;
                    ClientDS_dist.FieldByName('node_end_cod'  ).Value := SP.FieldByName('node_end_cod_l').Value;
                    ClientDS_dist.FieldByName('land_id').AsInteger := -9;
                    ClientDS_dist.Post;
                  end;

                  if (not SP.FieldByName('node_begin_cod').IsNull) and (not SP.FieldByName('node_end_cod').IsNull) then
                  if not ClientDS_dist.Locate('node_begin_cod;node_end_cod', VarArrayOf([SP.FieldByName('node_begin_cod').Value, SP.FieldByName('node_end_cod').Value]), []) then begin
                    ClientDS_dist.Append;
                    ClientDS_dist.FieldByName('node_begin_cod').Value := SP.FieldByName('node_begin_cod').Value;
                    ClientDS_dist.FieldByName('node_end_cod'  ).Value := SP.FieldByName('node_end_cod').Value;
                    ClientDS_dist.FieldByName('land_id').AsInteger := -9;
                    ClientDS_dist.Post;
                  end;

                  if (not SP.FieldByName('node_begin_cod_r').IsNull) and (not SP.FieldByName('node_end_cod_r').IsNull) then
                  if not ClientDS_dist.Locate('node_begin_cod;node_end_cod', VarArrayOf([SP.FieldByName('node_begin_cod_r').Value, SP.FieldByName('node_end_cod_r').Value]), []) then begin
                    ClientDS_dist.Append;
                    ClientDS_dist.FieldByName('node_begin_cod').Value := SP.FieldByName('node_begin_cod_r').Value;
                    ClientDS_dist.FieldByName('node_end_cod'  ).Value := SP.FieldByName('node_end_cod_r').Value;
                    ClientDS_dist.FieldByName('land_id').AsInteger := -9;
                    ClientDS_dist.Post;
                  end;

                  if (not SP.FieldByName('node_begin_cod_r2').IsNull) and (not SP.FieldByName('node_end_cod_r2').IsNull) then
                  if not ClientDS_dist.Locate('node_begin_cod;node_end_cod', VarArrayOf([SP.FieldByName('node_begin_cod_r2').Value, SP.FieldByName('node_end_cod_r2').Value]), []) then begin
                    ClientDS_dist.Append;
                    ClientDS_dist.FieldByName('node_begin_cod').Value := SP.FieldByName('node_begin_cod_r2').Value;
                    ClientDS_dist.FieldByName('node_end_cod'  ).Value := SP.FieldByName('node_end_cod_r2').Value;
                    ClientDS_dist.FieldByName('land_id').AsInteger := -9;
                    ClientDS_dist.Post;
                  end;

                  if (not SP.FieldByName('node_begin_cod_r3').IsNull) and (not SP.FieldByName('node_end_cod_r3').IsNull) then
                  if not ClientDS_dist.Locate('node_begin_cod;node_end_cod', VarArrayOf([SP.FieldByName('node_begin_cod_r3').Value, SP.FieldByName('node_end_cod_r3').Value]), []) then begin
                    ClientDS_dist.Append;
                    ClientDS_dist.FieldByName('node_begin_cod').Value := SP.FieldByName('node_begin_cod_r3').Value;
                    ClientDS_dist.FieldByName('node_end_cod'  ).Value := SP.FieldByName('node_end_cod_r3').Value;
                    ClientDS_dist.FieldByName('land_id').AsInteger := -9;
                    ClientDS_dist.Post;
                  end;
                SP.Next;
              end;
              // попробуем новой функцией расчета воспользоваться
              ClientDS_dist.First;
              while not ClientDS_dist.EOF do begin
               ClientDS_dist.Edit;
               ClientDS_dist.FieldByName('Distance').Value :=  GetCalcDistanceDB(ClientDS_dist.FieldByName('node_begin_cod').AsString, ClientDS_dist.FieldByName('node_end_cod').AsString, ADOReport, False, Date);
               ClientDS_dist.Post;
               ClientDS_dist.next;
              end;

//              //GetCalcDistanceGroupFast(ClientDS_dist, '', '', True);
//             GetCalcDistanceGroup(ClientDS_dist);
            end;
    137, 395:  begin
              SP.First;
              while not SP.Eof do begin

                if (not SP.FieldByName('node_begin_cod_l').IsNull) and (not SP.FieldByName('node_end_cod_l').IsNull) then
                  if not ClientDS_dist.Locate('node_begin_cod;node_end_cod', VarArrayOf([SP.FieldByName('node_begin_cod_l').Value, SP.FieldByName('node_end_cod_l').Value]), []) then begin
                    ClientDS_dist.Append;
                    ClientDS_dist.FieldByName('node_begin_cod').Value := SP.FieldByName('node_begin_cod_l').Value;
                    ClientDS_dist.FieldByName('node_end_cod'  ).Value := SP.FieldByName('node_end_cod_l').Value;
                    ClientDS_dist.FieldByName('land_id').AsInteger := -9;
                    ClientDS_dist.Post;
                  end;

                  if (not SP.FieldByName('node_begin_cod').IsNull) and (not SP.FieldByName('node_end_cod').IsNull) then
                  if not ClientDS_dist.Locate('node_begin_cod;node_end_cod', VarArrayOf([SP.FieldByName('node_begin_cod').Value, SP.FieldByName('node_end_cod').Value]), []) then begin
                    ClientDS_dist.Append;
                    ClientDS_dist.FieldByName('node_begin_cod').Value := SP.FieldByName('node_begin_cod').Value;
                    ClientDS_dist.FieldByName('node_end_cod'  ).Value := SP.FieldByName('node_end_cod').Value;
                    ClientDS_dist.FieldByName('land_id').AsInteger := -9;
                    ClientDS_dist.Post;
                  end;

                  if (not SP.FieldByName('node_begin_cod_r').IsNull) and (not SP.FieldByName('node_end_cod_r').IsNull) then
                  if not ClientDS_dist.Locate('node_begin_cod;node_end_cod', VarArrayOf([SP.FieldByName('node_begin_cod_r').Value, SP.FieldByName('node_end_cod_r').Value]), []) then begin
                    ClientDS_dist.Append;
                    ClientDS_dist.FieldByName('node_begin_cod').Value := SP.FieldByName('node_begin_cod_r').Value;
                    ClientDS_dist.FieldByName('node_end_cod'  ).Value := SP.FieldByName('node_end_cod_r').Value;
                    ClientDS_dist.FieldByName('land_id').AsInteger := -9;
                    ClientDS_dist.Post;
                  end;
                SP.Next;
              end;
              //GetCalcDistanceGroupFast(ClientDS_dist, '', '', True);
             GetCalcDistanceGroup(ClientDS_dist);
            end;

    141:  begin
              SP.First;
              while not SP.Eof do begin

                if (not SP.FieldByName('node_begin_cod_l2').IsNull) and (not SP.FieldByName('node_end_cod_l2').IsNull) then
                  if not ClientDS_dist.Locate('node_begin_cod;node_end_cod', VarArrayOf([SP.FieldByName('node_begin_cod_l2').Value, SP.FieldByName('node_end_cod_l2').Value]), []) then begin
                    ClientDS_dist.Append;
                    ClientDS_dist.FieldByName('node_begin_cod').Value := SP.FieldByName('node_begin_cod_l2').Value;
                    ClientDS_dist.FieldByName('node_end_cod'  ).Value := SP.FieldByName('node_end_cod_l2').Value;
                    ClientDS_dist.FieldByName('land_id').AsInteger := -9;
                    ClientDS_dist.Post;
                  end;

                if (not SP.FieldByName('node_begin_cod_l').IsNull) and (not SP.FieldByName('node_end_cod_l').IsNull) then
                  if not ClientDS_dist.Locate('node_begin_cod;node_end_cod', VarArrayOf([SP.FieldByName('node_begin_cod_l').Value, SP.FieldByName('node_end_cod_l').Value]), []) then begin
                    ClientDS_dist.Append;
                    ClientDS_dist.FieldByName('node_begin_cod').Value := SP.FieldByName('node_begin_cod_l').Value;
                    ClientDS_dist.FieldByName('node_end_cod'  ).Value := SP.FieldByName('node_end_cod_l').Value;
                    ClientDS_dist.FieldByName('land_id').AsInteger := -9;
                    ClientDS_dist.Post;
                  end;

                if (not SP.FieldByName('node_begin_cod').IsNull) and (not SP.FieldByName('node_end_cod').IsNull) then
                  if not ClientDS_dist.Locate('node_begin_cod;node_end_cod', VarArrayOf([SP.FieldByName('node_begin_cod').Value, SP.FieldByName('node_end_cod').Value]), []) then begin
                    ClientDS_dist.Append;
                    ClientDS_dist.FieldByName('node_begin_cod').Value := SP.FieldByName('node_begin_cod').Value;
                    ClientDS_dist.FieldByName('node_end_cod'  ).Value := SP.FieldByName('node_end_cod').Value;
                    ClientDS_dist.FieldByName('land_id').AsInteger := -9;
                    ClientDS_dist.Post;
                  end;

                if (not SP.FieldByName('node_begin_cod_r').IsNull) and (not SP.FieldByName('node_end_cod_r').IsNull) then
                  if not ClientDS_dist.Locate('node_begin_cod;node_end_cod', VarArrayOf([SP.FieldByName('node_begin_cod_r').Value, SP.FieldByName('node_end_cod_r').Value]), []) then begin
                    ClientDS_dist.Append;
                    ClientDS_dist.FieldByName('node_begin_cod').Value := SP.FieldByName('node_begin_cod_r').Value;
                    ClientDS_dist.FieldByName('node_end_cod'  ).Value := SP.FieldByName('node_end_cod_r').Value;
                    ClientDS_dist.FieldByName('land_id').AsInteger := -9;
                    ClientDS_dist.Post;
                  end;

                if (not SP.FieldByName('node_begin_cod_r2').IsNull) and (not SP.FieldByName('node_end_cod_r2').IsNull) then
                  if not ClientDS_dist.Locate('node_begin_cod;node_end_cod', VarArrayOf([SP.FieldByName('node_begin_cod_r2').Value, SP.FieldByName('node_end_cod_r2').Value]), []) then begin
                    ClientDS_dist.Append;
                    ClientDS_dist.FieldByName('node_begin_cod').Value := SP.FieldByName('node_begin_cod_r2').Value;
                    ClientDS_dist.FieldByName('node_end_cod'  ).Value := SP.FieldByName('node_end_cod_r2').Value;
                    ClientDS_dist.FieldByName('land_id').AsInteger := -9;
                    ClientDS_dist.Post;
                  end;
                SP.Next;
              end;

             GetCalcDistanceGroup(ClientDS_dist);
            end;
    end;
  end;

  SP.First;
  if not (FType_rep in [153,156]) then begin
    if SP.IsEmpty then begin
      SP.Free;
//      exApp.Quit(True);
      exApp.ScreenUpdating := True;
      exApp.Visible := True;

      VarClear(exWks); VarClear(exApp);
      ShowTextMessage('', True);
      ModalResult:= mrNone;
      Screen.Cursor := crDefault;
      Application.MessageBox('Нет данных.', 'Ошибка.', MB_OK + MB_ICONERROR);
      Exit;
    end;


    while not SP.EOF do begin
      case FType_rep of
        136,317 : begin
                exWks.Range['B' + IntToStr(row_0)].Value := SP.FieldByName('num_vagon').AsString;
                exWks.Range['C' + IntToStr(row_0)].Value := SP.FieldByName('firm_name').AsString;
                exWks.Range['D' + IntToStr(row_0)].Value := SP.FieldByName('date_arrival_p').Value;

                exWks.Range['E' + IntToStr(row_0)].Value := SP.FieldByName('date_otpr').Value;
                exWks.Range['F' + IntToStr(row_0)].Value := SP.FieldByName('date_arrival').Value;
                exWks.Range['G' + IntToStr(row_0)].Value := SP.FieldByName('node_begin_name').AsString;
                exWks.Range['H' + IntToStr(row_0)].Value := SP.FieldByName('node_end_name').AsString;
                exWks.Range['I' + IntToStr(row_0)].Value := SP.FieldByName('kargoETSNG_name').AsString;
                exWks.Range['J' + IntToStr(row_0)].Value := SP.FieldByName('fact_weight').AsFloat;
                exWks.Range['K' + IntToStr(row_0)].Value := SP.FieldByName('count_stay').AsString;

                exWks.Range['L' + IntToStr(row_0)].Value := SP.FieldByName('num_vagon_r').AsString;
                exWks.Range['M' + IntToStr(row_0)].Value := SP.FieldByName('date_otpr_r').Value;
                exWks.Range['N' + IntToStr(row_0)].Value := SP.FieldByName('date_arrival_r').Value;
                exWks.Range['O' + IntToStr(row_0)].Value := SP.FieldByName('node_begin_name_r').AsString;
                exWks.Range['P' + IntToStr(row_0)].Value := SP.FieldByName('node_end_name_r').AsString;
                exWks.Range['Q' + IntToStr(row_0)].Value := SP.FieldByName('kargoETSNG_name_r').AsString;
                exWks.Range['R' + IntToStr(row_0)].Value := SP.FieldByName('fact_weight_r').AsFloat;
                exWks.Range['S' + IntToStr(row_0)].Value := SP.FieldByName('date_otpr_n').Value;
                exWks.Range['T' + IntToStr(row_0)].Value := SP.FieldByName('day_rout').AsString;
                exWks.Range['W' + IntToStr(row_0)].Value := SP.FieldByName('doc_number').AsString;
                exWks.Range['X' + IntToStr(row_0)].Value := SP.FieldByName('doc_number_r').AsString;
                exWks.Range['y' + IntToStr(row_0)].Value := SP.FieldByName('node_begin_cod').AsString;
                exWks.Range['Z' + IntToStr(row_0)].Value := SP.FieldByName('node_end_cod').AsString;

                if show_distance then begin
                  try

                    if (not SP.FieldByName('node_begin_cod').IsNull) and (not SP.FieldByName('node_end_cod').IsNull) then
                      if ClientDS_dist.Locate('node_begin_cod;node_end_cod', VarArrayOf([SP.FieldByName('node_begin_cod').Value, SP.FieldByName('node_end_cod').Value]), []) then begin
                        exWks.Range['U' + IntToStr(row_0)].Value := ClientDS_dist.FieldByName('Distance').Value;
                      end;

                    if (not SP.FieldByName('node_begin_cod_r').IsNull) and (not SP.FieldByName('node_end_cod_r').IsNull) then
                      if ClientDS_dist.Locate('node_begin_cod;node_end_cod', VarArrayOf([SP.FieldByName('node_begin_cod_r').Value, SP.FieldByName('node_end_cod_r').Value]), []) then begin
                        exWks.Range['V' + IntToStr(row_0)].Value := ClientDS_dist.FieldByName('Distance').Value;
                      end;
                  except
                     exWks.Range['U' + IntToStr(row_0)].Value := OleVariant('(Ошибка при расчете)');
                     exWks.Range['V' + IntToStr(row_0)].Value := OleVariant('(Ошибка при расчете)');
                  end;
                end;
                exWks.Range['AA' + IntToStr(row_0)].Value := SP.FieldByName('Com6').AsString;
              end;
        186 : begin
                exWks.Range['B' + IntToStr(row_0)].Value := SP.FieldByName('num_vagon').Value;
                exWks.Range['C' + IntToStr(row_0)].Value := SP.FieldByName('firm_name').AsString;
                exWks.Range['D' + IntToStr(row_0)].Value := SP.FieldByName('date_otpr').Value;
                exWks.Range['E' + IntToStr(row_0)].Value := SP.FieldByName('date_arrival').Value;
                exWks.Range['F' + IntToStr(row_0)].Value := SP.FieldByName('node_begin_name').AsString;
                exWks.Range['G' + IntToStr(row_0)].Value := SP.FieldByName('node_end_name').AsString;
                exWks.Range['H' + IntToStr(row_0)].Value := SP.FieldByName('kargoETSNG_name').AsString;
                exWks.Range['I' + IntToStr(row_0)].Value := SP.FieldByName('fact_weight').AsFloat;
                exWks.Range['K' + IntToStr(row_0)].Value := SP.FieldByName('doc_number').AsString;
                exWks.Range['L' + IntToStr(row_0)].Value := SP.FieldByName('capacity').AsString;
                exWks.Range['M' + IntToStr(row_0)].Value := SP.FieldByName('kargoETSNG_cod').AsString;
                exWks.Range['N' + IntToStr(row_0)].Value := SP.FieldByName('grotpr_okpo').AsString;
                exWks.Range['O' + IntToStr(row_0)].Value := SP.FieldByName('node_begin_cod').AsString;
                exWks.Range['P' + IntToStr(row_0)].Value := SP.FieldByName('node_end_cod').AsString;

                //Растояние
                if (SP.FieldByName('distance1').AsInteger <> -9) then
                  exWks.Range['Q'+IntToStr(row_0)].Value := SP.FieldByName('distance1').AsInteger
                else
                  exWks.Range['Q'+IntToStr(row_0)].Value := ''; //GetCalcDistanceDB(SP.FieldByName('node_begin_cod').AsString, SP.FieldByName('node_end_cod').AsString, ADOReport, False, Date);

                exWks.Range['R' + IntToStr(row_0)].Value := SP.FieldByName('Com6').AsString;
                exWks.Range['S' + IntToStr(row_0)].Value := SP.FieldByName('road_begin_name').AsString;
                exWks.Range['T' + IntToStr(row_0)].Value := SP.FieldByName('road_end_name').AsString;
                exWks.Range['U' + IntToStr(row_0)].Value := SP.FieldByName('type_park_name').AsString;
                exWks.Range['V' + IntToStr(row_0)].Value := SP.FieldByName('rod_vagon_name').AsString;
              end;
       1861 : begin
                exWks.Range['B' + IntToStr(row_0)].Value := SP.FieldByName('num_vagon').Value;
                exWks.Range['C' + IntToStr(row_0)].Value := SP.FieldByName('firm_name').AsString;
                exWks.Range['D' + IntToStr(row_0)].Value := SP.FieldByName('date_otpr').Value;
                exWks.Range['E' + IntToStr(row_0)].Value := SP.FieldByName('date_arrival').Value;
                exWks.Range['F' + IntToStr(row_0)].Value := SP.FieldByName('node_begin_name').AsString;
                exWks.Range['G' + IntToStr(row_0)].Value := SP.FieldByName('node_end_name').AsString;
                exWks.Range['H' + IntToStr(row_0)].Value := SP.FieldByName('kargoETSNG_name').AsString;
                exWks.Range['I' + IntToStr(row_0)].Value := SP.FieldByName('fact_weight').AsFloat;
                exWks.Range['K' + IntToStr(row_0)].Value := SP.FieldByName('doc_number').AsString;
                exWks.Range['L' + IntToStr(row_0)].Value := SP.FieldByName('capacity').AsString;
                exWks.Range['M' + IntToStr(row_0)].Value := SP.FieldByName('kargoETSNG_cod').AsString;
                exWks.Range['N' + IntToStr(row_0)].Value := SP.FieldByName('grotpr_okpo').AsString;
                exWks.Range['O' + IntToStr(row_0)].Value := SP.FieldByName('etran_RecipName').AsString;


                exWks.Range['P' + IntToStr(row_0)].Value := SP.FieldByName('node_begin_cod').AsString;
                exWks.Range['Q' + IntToStr(row_0)].Value := SP.FieldByName('node_end_cod').AsString;

                //Растояние
                if (SP.FieldByName('distance1').AsInteger <> -9) then
                 exWks.Range['R'+IntToStr(row_0)].Value := SP.FieldByName('distance1').AsInteger
                else
                 exWks.Range['R'+IntToStr(row_0)].Value := GetCalcDistanceDB(SP.FieldByName('node_begin_cod').AsString, SP.FieldByName('node_end_cod').AsString, ADOReport, False, Date);

                exWks.Range['S' + IntToStr(row_0)].Value := SP.FieldByName('Com6').AsString;
                exWks.Range['T' + IntToStr(row_0)].Value := SP.FieldByName('road_begin_name').AsString;
                exWks.Range['U' + IntToStr(row_0)].Value := SP.FieldByName('road_end_name').AsString;
                exWks.Range['V' + IntToStr(row_0)].Value := SP.FieldByName('type_park_name').AsString;
                exWks.Range['W' + IntToStr(row_0)].Value := SP.FieldByName('rod_vagon_name').AsString;
              end;
        428 : begin
                exWks.Range['B' + IntToStr(row_0)].Value := SP.FieldByName('num_vagon').Value;
                exWks.Range['C' + IntToStr(row_0)].Value := SP.FieldByName('date_otpr').Value;
                exWks.Range['D' + IntToStr(row_0)].Value := SP.FieldByName('date_arrival').Value;
                exWks.Range['E' + IntToStr(row_0)].Value := SP.FieldByName('node_begin_name').AsString;
                exWks.Range['F' + IntToStr(row_0)].Value := SP.FieldByName('node_end_name').AsString;
                exWks.Range['G' + IntToStr(row_0)].Value := SP.FieldByName('distance_gr').Value;
                exWks.Range['H' + IntToStr(row_0)].Value := SP.FieldByName('distance_empty').Value;
                exWks.Range['I' + IntToStr(row_0)].Value := SP.FieldByName('fact_weight').Value;
                exWks.Range['J' + IntToStr(row_0)].Value := SP.FieldByName('set_gr').Value;
                exWks.Range['K' + IntToStr(row_0)].Value := SP.FieldByName('set_empty').Value;
                exWks.Range['L' + IntToStr(row_0)].Value := SP.FieldByName('kargoETSNG_name').AsString;
                exWks.Range['M' + IntToStr(row_0)].Value := SP.FieldByName('doc_number').AsString;
                exWks.Range['N' + IntToStr(row_0)].Value := SP.FieldByName('firm_name').AsString;
                exWks.Range['O' + IntToStr(row_0)].Value := SP.FieldByName('node_begin_cod').AsString;
                exWks.Range['P' + IntToStr(row_0)].Value := SP.FieldByName('node_end_cod').AsString;
                exWks.Range['Q' + IntToStr(row_0)].Value := SP.FieldByName('Com6').AsString;
                exWks.Range['R' + IntToStr(row_0)].Value := SP.FieldByName('road_begin_name').AsString;
                exWks.Range['S' + IntToStr(row_0)].Value := SP.FieldByName('road_end_name').AsString;
                exWks.Range['T' + IntToStr(row_0)].Value := SP.FieldByName('type_park_name').AsString;
                exWks.Range['U' + IntToStr(row_0)].Value := SP.FieldByName('rod_vagon_name').AsString;
              end;
        356 : begin
                exWks.Range['B' + IntToStr(row_0)].Value := SP.FieldByName('num_vagon').AsString;
                exWks.Range['C' + IntToStr(row_0)].Value := SP.FieldByName('firm_name').AsString;
                exWks.Range['D' + IntToStr(row_0)].Value := SP.FieldByName('date_otpr').Value;
                exWks.Range['E' + IntToStr(row_0)].Value := SP.FieldByName('date_arrival').Value;
                exWks.Range['F' + IntToStr(row_0)].Value := SP.FieldByName('node_begin_name').AsString;
                exWks.Range['G' + IntToStr(row_0)].Value := SP.FieldByName('node_end_name').AsString;
                exWks.Range['H' + IntToStr(row_0)].Value := SP.FieldByName('kargoETSNG_name').AsString;
                exWks.Range['I' + IntToStr(row_0)].Value := SP.FieldByName('fact_weight').AsFloat;
                exWks.Range['K' + IntToStr(row_0)].Value := SP.FieldByName('doc_number').AsString;
                exWks.Range['L' + IntToStr(row_0)].Value := SP.FieldByName('capacity').AsString;
                exWks.Range['M' + IntToStr(row_0)].Value := SP.FieldByName('kargoETSNG_cod').AsString;
                exWks.Range['N' + IntToStr(row_0)].Value := SP.FieldByName('grotpr_okpo').AsString;
                exWks.Range['O' + IntToStr(row_0)].Value := SP.FieldByName('node_begin_cod').AsString;
                exWks.Range['P' + IntToStr(row_0)].Value := SP.FieldByName('node_end_cod').AsString;
                if show_distance then begin
                try
                  if (not SP.FieldByName('node_begin_cod').IsNull) and (not SP.FieldByName('node_end_cod').IsNull) then
                    if ClientDS_dist.Locate('node_begin_cod;node_end_cod', VarArrayOf([SP.FieldByName('node_begin_cod').Value, SP.FieldByName('node_end_cod').Value]), []) then begin
                      exWks.Range['Q' + IntToStr(row_0)].Value := ClientDS_dist.FieldByName('Distance').Value;
                    end;
                except
                   exWks.Range['Q' + IntToStr(row_0)].Value := OleVariant('(Ошибка при расчете)');
                end;
                end;
                exWks.Range['R' + IntToStr(row_0)].Value := SP.FieldByName('Com6').AsString;
              end;

        357 : begin
                if (FType_rep = 357) and ClientDS_CalcTarif357.Locate('fact_id', SP.FieldByName('id').Value, []) then begin
                  if ClientDS_CalcTarif357.FieldByName('rate_val_eur').AsFloat <> 0 then begin
                      exWks.Range['B' + IntToStr(row_0)].Value := SP.FieldByName('num_vagon').AsString;
                      exWks.Range['C' + IntToStr(row_0)].Value := SP.FieldByName('firm_name').AsString;
                      exWks.Range['D' + IntToStr(row_0)].Value := SP.FieldByName('date_otpr').Value;
                      exWks.Range['E' + IntToStr(row_0)].Value := SP.FieldByName('date_arrival').Value;
                      exWks.Range['F' + IntToStr(row_0)].Value := SP.FieldByName('node_begin_name').AsString;
                      exWks.Range['G' + IntToStr(row_0)].Value := SP.FieldByName('node_end_name').AsString;
                      exWks.Range['H' + IntToStr(row_0)].Value := SP.FieldByName('kargoETSNG_name_full').AsString;

                      exWks.Range['I' + IntToStr(row_0)].Value := SP.FieldByName('kargoETSNG_name').AsString;
                      exWks.Range['J' + IntToStr(row_0)].Value := SP.FieldByName('fact_weight').AsFloat;


                      exWks.Range['K' + IntToStr(row_0)].Value := ClientDS_CalcTarif357.FieldByName('rate_val_eur').AsFloat;  //EUR без НДС, не по России
                      exWks.Range['L' + IntToStr(row_0)].Value := ClientDS_CalcTarif357.FieldByName('rate_val_usd').AsFloat;  //USD без НДС, не по России
                      exWks.Range['M' + IntToStr(row_0)].Value := '';  //км

                      exWks.Range['N' + IntToStr(row_0)].Value := SP.FieldByName('kargoETSNG_cod').AsString;
                      exWks.Range['O' + IntToStr(row_0)].Value := SP.FieldByName('kargoETSNG_cod_full').AsString;
                      exWks.Range['P' + IntToStr(row_0)].Value := SP.FieldByName('node_begin_cod').AsString;
                      exWks.Range['Q' + IntToStr(row_0)].Value := SP.FieldByName('node_end_cod').AsString;
                      exWks.Range['R' + IntToStr(row_0)].Value := SP.FieldByName('Com6').AsString;

                      if show_distance then begin
                      try
                        if (not SP.FieldByName('node_begin_cod').IsNull) and (not SP.FieldByName('node_end_cod').IsNull) then
                          if ClientDS_dist.Locate('node_begin_cod;node_end_cod', VarArrayOf([SP.FieldByName('node_begin_cod').Value, SP.FieldByName('node_end_cod').Value]), []) then begin
                            exWks.Range['M' + IntToStr(row_0)].Value := ClientDS_dist.FieldByName('Distance').Value;
                          end;
                      except
                         exWks.Range['M' + IntToStr(row_0)].Value := OleVariant('(Ошибка при расчете)');
                      end;
                      end;
                  end;
                end;
              end;

        137 : begin
                exWks.Range['B' + IntToStr(row_0)].Value := SP.FieldByName('num_vagon_l').AsString;
                exWks.Range['C' + IntToStr(row_0)].Value := SP.FieldByName('date_otpr_l').Value;
                exWks.Range['D' + IntToStr(row_0)].Value := SP.FieldByName('date_arrival_l').Value;

                exWks.Range['F' + IntToStr(row_0)].Value := SP.FieldByName('node_begin_name_l').AsString;
                exWks.Range['G' + IntToStr(row_0)].Value := SP.FieldByName('node_end_name_l').AsString;
                exWks.Range['H' + IntToStr(row_0)].Value := SP.FieldByName('kargoETSNG_name_l').AsString;
                exWks.Range['I' + IntToStr(row_0)].Value := SP.FieldByName('fact_weight_l').AsFloat;
                exWks.Range['J' + IntToStr(row_0)].Value := SP.FieldByName('num_vagon').AsString;
                exWks.Range['K' + IntToStr(row_0)].Value := SP.FieldByName('firm_name').AsString;

                exWks.Range['M' + IntToStr(row_0)].Value := SP.FieldByName('date_otpr').Value;
                exWks.Range['N' + IntToStr(row_0)].Value := SP.FieldByName('date_arrival').Value;


                exWks.Range['Q' + IntToStr(row_0)].Value := SP.FieldByName('node_begin_name').AsString;
                exWks.Range['R' + IntToStr(row_0)].Value := SP.FieldByName('node_end_name').AsString;
                exWks.Range['S' + IntToStr(row_0)].Value := SP.FieldByName('kargoETSNG_name').AsString;
                exWks.Range['T' + IntToStr(row_0)].Value := SP.FieldByName('fact_weight').AsFloat;
                exWks.Range['U' + IntToStr(row_0)].Value := SP.FieldByName('num_vagon_r').AsString;
                exWks.Range['V' + IntToStr(row_0)].Value := SP.FieldByName('date_otpr_r').Value;
                exWks.Range['W' + IntToStr(row_0)].Value := SP.FieldByName('date_arrival_r').Value;

                exWks.Range['Y' + IntToStr(row_0)].Value := SP.FieldByName('node_begin_name_r').AsString;
                exWks.Range['Z' + IntToStr(row_0)].Value := SP.FieldByName('node_end_name_r').AsString;
                exWks.Range['AA' + IntToStr(row_0)].Value := SP.FieldByName('kargoETSNG_name_r').AsString;
                exWks.Range['AB' + IntToStr(row_0)].Value := SP.FieldByName('fact_weight_r').AsFloat;
                exWks.Range['AC' + IntToStr(row_0)].Value := SP.FieldByName('date_arrival_r2').Value;

                exWks.Range['AD' + IntToStr(row_0)].Value := SP.FieldByName('doc_number_1').AsString;
                exWks.Range['AE' + IntToStr(row_0)].Value := SP.FieldByName('doc_number').AsString;
                exWks.Range['AF' + IntToStr(row_0)].Value := SP.FieldByName('doc_number_r').AsString;

                exWks.Range['AG' + IntToStr(row_0)].Value := SP.FieldByName('poluchgr_1').AsString;
                exWks.Range['AH' + IntToStr(row_0)].Value := SP.FieldByName('poluchgr').AsString;
                exWks.Range['AI' + IntToStr(row_0)].Value := SP.FieldByName('poluchgr_r').AsString;

                exWks.Range['AM' + IntToStr(row_0)].Value := SP.FieldByName('transport_pay_l').Value;
                exWks.Range['AN' + IntToStr(row_0)].Value := SP.FieldByName('transport_pay').Value;
                exWks.Range['AO' + IntToStr(row_0)].Value := SP.FieldByName('transport_pay_r').Value;
                exWks.Range['AP' + IntToStr(row_0)].Value := SP.FieldByName('type_park_name').AsString;

                if show_distance then begin
                  try
                    if (not SP.FieldByName('node_begin_cod_l').IsNull) and (not SP.FieldByName('node_end_cod_l').IsNull) then
                      if ClientDS_dist.Locate('node_begin_cod;node_end_cod', VarArrayOf([SP.FieldByName('node_begin_cod_l').Value, SP.FieldByName('node_end_cod_l').Value]), []) then begin
                        exWks.Range['AJ' + IntToStr(row_0)].Value := ClientDS_dist.FieldByName('Distance').Value;
                      end;
                  except
                     exWks.Range['AJ' + IntToStr(row_0)].Value := OleVariant('(Ошибка при расчете)');
                  end;

                  try
                    if (not SP.FieldByName('node_begin_cod').IsNull) and (not SP.FieldByName('node_end_cod').IsNull) then
                      if ClientDS_dist.Locate('node_begin_cod;node_end_cod', VarArrayOf([SP.FieldByName('node_begin_cod').Value, SP.FieldByName('node_end_cod').Value]), []) then begin
                        exWks.Range['AK' + IntToStr(row_0)].Value := ClientDS_dist.FieldByName('Distance').Value;
                      end;
                  except
                     exWks.Range['AK' + IntToStr(row_0)].Value := OleVariant('(Ошибка при расчете)');
                  end;

                  try
                    if (not SP.FieldByName('node_begin_cod_r').IsNull) and (not SP.FieldByName('node_end_cod_r').IsNull) then
                      if ClientDS_dist.Locate('node_begin_cod;node_end_cod', VarArrayOf([SP.FieldByName('node_begin_cod_r').Value, SP.FieldByName('node_end_cod_r').Value]), []) then begin
                        exWks.Range['AL' + IntToStr(row_0)].Value := ClientDS_dist.FieldByName('Distance').Value;
                      end;
                  except
                     exWks.Range['AL' + IntToStr(row_0)].Value := OleVariant('(Ошибка при расчете)');
                  end;
                end;

                exWks.Range['AQ' + IntToStr(row_0)].Value := SP.FieldByName('pref_doc_number_1').AsString;
                exWks.Range['AR' + IntToStr(row_0)].Value := SP.FieldByName('pref_doc_number').AsString;
                exWks.Range['AS' + IntToStr(row_0)].Value := SP.FieldByName('pref_doc_number_r').AsString;
              end;

          141 : begin
                exWks.Range['B' + IntToStr(row_0)].Value := SP.FieldByName('num_vagon_l2').AsString;
                exWks.Range['C' + IntToStr(row_0)].Value := SP.FieldByName('Com6_l2').AsString;
                exWks.Range['D' + IntToStr(row_0)].Value := SP.FieldByName('date_otpr_l2').Value;
                exWks.Range['E' + IntToStr(row_0)].Value := SP.FieldByName('date_arrival_l2').Value;
                exWks.Range['H' + IntToStr(row_0)].Value := SP.FieldByName('node_begin_name_l2').AsString;
                exWks.Range['I' + IntToStr(row_0)].Value := SP.FieldByName('node_end_name_l2').AsString;
                exWks.Range['J' + IntToStr(row_0)].Value := SP.FieldByName('kargoETSNG_name_l2').AsString;
                exWks.Range['K' + IntToStr(row_0)].Value := SP.FieldByName('fact_weight_l2').AsFloat;

                exWks.Range['L' + IntToStr(row_0)].Value := SP.FieldByName('num_vagon_l').AsString;
                exWks.Range['M' + IntToStr(row_0)].Value := SP.FieldByName('Com6_l').AsString;
                exWks.Range['N' + IntToStr(row_0)].Value := SP.FieldByName('date_otpr_l').Value;
                exWks.Range['O' + IntToStr(row_0)].Value := SP.FieldByName('date_arrival_l').Value;
                exWks.Range['R' + IntToStr(row_0)].Value := SP.FieldByName('node_begin_name_l').AsString;
                exWks.Range['S' + IntToStr(row_0)].Value := SP.FieldByName('node_end_name_l').AsString;
                exWks.Range['T' + IntToStr(row_0)].Value := SP.FieldByName('kargoETSNG_name_l').AsString;
                exWks.Range['U' + IntToStr(row_0)].Value := SP.FieldByName('fact_weight_l').AsFloat;

                exWks.Range['V' + IntToStr(row_0)].Value := SP.FieldByName('num_vagon').AsString;
                exWks.Range['W' + IntToStr(row_0)].Value := SP.FieldByName('Com6').AsString;
                exWks.Range['X' + IntToStr(row_0)].Value := SP.FieldByName('firm_name').AsString;
                exWks.Range['Z' + IntToStr(row_0)].Value := SP.FieldByName('date_otpr').Value;
                exWks.Range['AA'+ IntToStr(row_0)].Value := SP.FieldByName('date_arrival').Value;
                exWks.Range['AD'+ IntToStr(row_0)].Value := SP.FieldByName('node_begin_name').AsString;
                exWks.Range['AE'+ IntToStr(row_0)].Value := SP.FieldByName('node_end_name').AsString;
                exWks.Range['AF'+ IntToStr(row_0)].Value := SP.FieldByName('kargoETSNG_name').AsString;
                exWks.Range['AG'+ IntToStr(row_0)].Value := SP.FieldByName('fact_weight').AsFloat;

                exWks.Range['AH'+ IntToStr(row_0)].Value := SP.FieldByName('num_vagon_r').AsString;
                exWks.Range['AI'+ IntToStr(row_0)].Value := SP.FieldByName('Com6_r').AsString;
                exWks.Range['AJ'+ IntToStr(row_0)].Value := SP.FieldByName('date_otpr_r').Value;
                exWks.Range['AK'+ IntToStr(row_0)].Value := SP.FieldByName('date_arrival_r').Value;
                exWks.Range['AM'+ IntToStr(row_0)].Value := SP.FieldByName('node_begin_name_r').AsString;
                exWks.Range['AN'+ IntToStr(row_0)].Value := SP.FieldByName('node_end_name_r').AsString;
                exWks.Range['AO'+ IntToStr(row_0)].Value := SP.FieldByName('kargoETSNG_name_r').AsString;
                exWks.Range['AP'+ IntToStr(row_0)].Value := SP.FieldByName('fact_weight_r').AsFloat;

                exWks.Range['AQ'+ IntToStr(row_0)].Value := SP.FieldByName('num_vagon_r2').AsString;
                exWks.Range['AR'+ IntToStr(row_0)].Value := SP.FieldByName('Com6_r2').AsString;
                exWks.Range['AS'+ IntToStr(row_0)].Value := SP.FieldByName('date_otpr_r2').Value;
                exWks.Range['AT'+ IntToStr(row_0)].Value := SP.FieldByName('date_arrival_r2').Value;
                exWks.Range['AV'+ IntToStr(row_0)].Value := SP.FieldByName('node_begin_name_r2').AsString;
                exWks.Range['AW'+ IntToStr(row_0)].Value := SP.FieldByName('node_end_name_r2').AsString;
                exWks.Range['AX'+ IntToStr(row_0)].Value := SP.FieldByName('kargoETSNG_name_r2').AsString;
                exWks.Range['AY'+ IntToStr(row_0)].Value := SP.FieldByName('fact_weight_r2').AsFloat;

                exWks.Range['AZ'+ IntToStr(row_0)].Value := SP.FieldByName('date_otpr_r3').Value;

                exWks.Range['BA'+ IntToStr(row_0)].Value := SP.FieldByName('pref_doc_number_l2').AsString + SP.FieldByName('doc_number_l2').AsString;
                exWks.Range['BB'+ IntToStr(row_0)].Value := SP.FieldByName('pref_doc_number_l' ).AsString + SP.FieldByName('doc_number_l' ).AsString;
                exWks.Range['BC'+ IntToStr(row_0)].Value := SP.FieldByName('pref_doc_number'   ).AsString + SP.FieldByName('doc_number'   ).AsString;
                exWks.Range['BD'+ IntToStr(row_0)].Value := SP.FieldByName('pref_doc_number_r' ).AsString + SP.FieldByName('doc_number_r' ).AsString;
                exWks.Range['BE'+ IntToStr(row_0)].Value := SP.FieldByName('pref_doc_number_r2').AsString + SP.FieldByName('doc_number_r2').AsString;

                exWks.Range['BF' + IntToStr(row_0)].Value := SP.FieldByName('poluchgr_l2').AsString;
                exWks.Range['BG' + IntToStr(row_0)].Value := SP.FieldByName('poluchgr_l').AsString;
                exWks.Range['BH' + IntToStr(row_0)].Value := SP.FieldByName('poluchgr').AsString;
                exWks.Range['BI' + IntToStr(row_0)].Value := SP.FieldByName('poluchgr_r').AsString;
                exWks.Range['BJ' + IntToStr(row_0)].Value := SP.FieldByName('poluchgr_r2').AsString;

                exWks.Range['BP' + IntToStr(row_0)].Value := SP.FieldByName('transport_pay_l2').Value;
                exWks.Range['BQ' + IntToStr(row_0)].Value := SP.FieldByName('transport_pay_l').Value;
                exWks.Range['BR' + IntToStr(row_0)].Value := SP.FieldByName('transport_pay').Value;
                exWks.Range['BS' + IntToStr(row_0)].Value := SP.FieldByName('transport_pay_r').Value;
                exWks.Range['BT' + IntToStr(row_0)].Value := SP.FieldByName('transport_pay_r2').Value;

                exWks.Range['BV' + IntToStr(row_0)].Value := SP.FieldByName('type_park_name').AsString;


                if (cxCheckBox2.Checked) then begin
                  node_begin_cod := SP.FieldByName('node_begin_cod').AsString;
                  node_end_cod   := SP.FieldByName('node_end_cod').AsString;
                  kargoETSNG_cod := SP.FieldByName('kargoETSNG_cod').AsString;
                  rod_vagon_cod  := SP.FieldByName('rod_vagon_cod').AsString;
                  if ClientDS_RateEmpty.FindKey([node_begin_cod, node_end_cod, kargoETSNG_cod, rod_vagon_cod]) then begin
                    if ClientDS_RateEmpty.FieldByName('calc_otpr_empty').AsCurrency <> -9 then begin
                      exWks.Range['BU' + IntToStr(row_0)].Value := ClientDS_RateEmpty.FieldByName('calc_otpr_empty').Value;
                    end else begin
                      exWks.Range['BU' + IntToStr(row_0)].Value := ClientDS_RateEmpty.FieldByName('calc_otpr_empty').Value;
                    end;
                  end;
                end;

                if show_distance then begin

                  try
                    if (not SP.FieldByName('node_begin_cod_l2').IsNull) and (not SP.FieldByName('node_end_cod_l2').IsNull) then
                      if ClientDS_dist.Locate('node_begin_cod;node_end_cod', VarArrayOf([SP.FieldByName('node_begin_cod_l2').Value, SP.FieldByName('node_end_cod_l2').Value]), []) then begin
                        exWks.Range['BK' + IntToStr(row_0)].Value := ClientDS_dist.FieldByName('Distance').Value;
                      end;
                  except
                     exWks.Range['BK' + IntToStr(row_0)].Value := OleVariant('(Ошибка при расчете)');
                  end;

                  try
                    if (not SP.FieldByName('node_begin_cod_l').IsNull) and (not SP.FieldByName('node_end_cod_l').IsNull) then
                      if ClientDS_dist.Locate('node_begin_cod;node_end_cod', VarArrayOf([SP.FieldByName('node_begin_cod_l').Value, SP.FieldByName('node_end_cod_l').Value]), []) then begin
                        exWks.Range['BL' + IntToStr(row_0)].Value := ClientDS_dist.FieldByName('Distance').Value;
                      end;
                  except
                     exWks.Range['BL' + IntToStr(row_0)].Value := OleVariant('(Ошибка при расчете)');
                  end;

                  try
                    if (not SP.FieldByName('node_begin_cod').IsNull) and (not SP.FieldByName('node_end_cod').IsNull) then
                      if ClientDS_dist.Locate('node_begin_cod;node_end_cod', VarArrayOf([SP.FieldByName('node_begin_cod').Value, SP.FieldByName('node_end_cod').Value]), []) then begin
                        exWks.Range['BM' + IntToStr(row_0)].Value := ClientDS_dist.FieldByName('Distance').Value;
                      end;
                  except
                     exWks.Range['BM' + IntToStr(row_0)].Value := OleVariant('(Ошибка при расчете)');
                  end;

                  try
                    if (not SP.FieldByName('node_begin_cod_r').IsNull) and (not SP.FieldByName('node_end_cod_r').IsNull) then
                      if ClientDS_dist.Locate('node_begin_cod;node_end_cod', VarArrayOf([SP.FieldByName('node_begin_cod_r').Value, SP.FieldByName('node_end_cod_r').Value]), []) then begin
                        exWks.Range['BN' + IntToStr(row_0)].Value := ClientDS_dist.FieldByName('Distance').Value;
                      end;
                  except
                     exWks.Range['BN' + IntToStr(row_0)].Value := OleVariant('(Ошибка при расчете)');
                  end;

                  try
                    if (not SP.FieldByName('node_begin_cod_r2').IsNull) and (not SP.FieldByName('node_end_cod_r2').IsNull) then
                      if ClientDS_dist.Locate('node_begin_cod;node_end_cod', VarArrayOf([SP.FieldByName('node_begin_cod_r2').Value, SP.FieldByName('node_end_cod_r2').Value]), []) then begin
                        exWks.Range['BO' + IntToStr(row_0)].Value := ClientDS_dist.FieldByName('Distance').Value;
                      end;
                  except
                     exWks.Range['BO' + IntToStr(row_0)].Value := OleVariant('(Ошибка при расчете)');
                  end;
                end;

              end;

        1372 : begin
                exWks.Range['B' + IntToStr(row_0)].Value := SP.FieldByName('num_vagon_l').AsString;
                exWks.Range['C' + IntToStr(row_0)].Value := SP.FieldByName('date_otpr_l').Value;
                exWks.Range['D' + IntToStr(row_0)].Value := SP.FieldByName('date_arrival_l').Value;

                exWks.Range['F' + IntToStr(row_0)].Value := SP.FieldByName('node_begin_name_l').AsString;
                exWks.Range['G' + IntToStr(row_0)].Value := SP.FieldByName('node_end_name_l').AsString;
                exWks.Range['H' + IntToStr(row_0)].Value := SP.FieldByName('kargoETSNG_name_l').AsString;
                exWks.Range['I' + IntToStr(row_0)].Value := SP.FieldByName('fact_weight_l').AsFloat;
                exWks.Range['J' + IntToStr(row_0)].Value := SP.FieldByName('num_vagon').AsString;
                exWks.Range['K' + IntToStr(row_0)].Value := SP.FieldByName('firm_name').AsString;

                exWks.Range['M' + IntToStr(row_0)].Value := SP.FieldByName('date_otpr').Value;
                exWks.Range['N' + IntToStr(row_0)].Value := SP.FieldByName('date_arrival').Value;


                exWks.Range['Q' + IntToStr(row_0)].Value := SP.FieldByName('node_begin_name').AsString;
                exWks.Range['R' + IntToStr(row_0)].Value := SP.FieldByName('node_end_name').AsString;

                exWks.Range['S' + IntToStr(row_0)].Value := '''' + SP.FieldByName('grotpr_okpo').AsString;

                exWks.Range['T' + IntToStr(row_0)].Value := SP.FieldByName('kargoETSNG_name').AsString;
                exWks.Range['U' + IntToStr(row_0)].Value := SP.FieldByName('fact_weight').AsFloat;
                exWks.Range['V' + IntToStr(row_0)].Value := SP.FieldByName('num_vagon_r').AsString;
                exWks.Range['W' + IntToStr(row_0)].Value := SP.FieldByName('date_otpr_r').Value;
                exWks.Range['X' + IntToStr(row_0)].Value := SP.FieldByName('date_arrival_r').Value;

                exWks.Range['Z' + IntToStr(row_0)].Value := SP.FieldByName('node_begin_name_r').AsString;
                exWks.Range['AA' + IntToStr(row_0)].Value := SP.FieldByName('node_end_name_r').AsString;
                exWks.Range['AB' + IntToStr(row_0)].Value := SP.FieldByName('kargoETSNG_name_r').AsString;
                exWks.Range['AC' + IntToStr(row_0)].Value := SP.FieldByName('fact_weight_r').AsFloat;
                exWks.Range['AD' + IntToStr(row_0)].Value := SP.FieldByName('date_arrival_r2').Value;

                exWks.Range['AE' + IntToStr(row_0)].Value := SP.FieldByName('doc_number_1').AsString;
                exWks.Range['AF' + IntToStr(row_0)].Value := SP.FieldByName('doc_number').AsString;
                exWks.Range['AG' + IntToStr(row_0)].Value := SP.FieldByName('doc_number_r').AsString;

                exWks.Range['AH' + IntToStr(row_0)].Value := SP.FieldByName('poluchgr_1').AsString;
                exWks.Range['AI' + IntToStr(row_0)].Value := SP.FieldByName('poluchgr').AsString;
                exWks.Range['AJ' + IntToStr(row_0)].Value := SP.FieldByName('poluchgr_r').AsString;

                exWks.Range['AN' + IntToStr(row_0)].Value := SP.FieldByName('transport_pay_l').Value;
                exWks.Range['AO' + IntToStr(row_0)].Value := SP.FieldByName('transport_pay').Value;
                exWks.Range['AP' + IntToStr(row_0)].Value := SP.FieldByName('transport_pay_r').Value;

                exWks.Range['AQ' + IntToStr(row_0)].Value := SP.FieldByName('firm_customer_name').AsString;
                exWks.Range['AR' + IntToStr(row_0)].Value := SP.FieldByName('type_park_name').AsString;
                exWks.Range['AW' + IntToStr(row_0)].Value := SP.FieldByName('arenda_rate').Value;

                if show_distance then begin
                  try
                    if (not SP.FieldByName('node_begin_cod_l').IsNull) and (not SP.FieldByName('node_end_cod_l').IsNull) then
                      if ClientDS_dist.Locate('node_begin_cod;node_end_cod', VarArrayOf([SP.FieldByName('node_begin_cod_l').Value, SP.FieldByName('node_end_cod_l').Value]), []) then begin
                        exWks.Range['AK' + IntToStr(row_0)].Value := ClientDS_dist.FieldByName('Distance').Value;
                      end;
                  except
                     exWks.Range['AK' + IntToStr(row_0)].Value := OleVariant('(Ошибка при расчете)');
                  end;

                  try
                    if (not SP.FieldByName('node_begin_cod').IsNull) and (not SP.FieldByName('node_end_cod').IsNull) then
                      if ClientDS_dist.Locate('node_begin_cod;node_end_cod', VarArrayOf([SP.FieldByName('node_begin_cod').Value, SP.FieldByName('node_end_cod').Value]), []) then begin
                        exWks.Range['AL' + IntToStr(row_0)].Value := ClientDS_dist.FieldByName('Distance').Value;
                        dist := ClientDS_dist.FieldByName('Distance').AsInteger;

                        ClientDS_rate.First;
                        while not ClientDS_rate.Eof do begin
                          if (ClientDS_rate.FieldByName('dist1').AsInteger <= dist) and (dist <= ClientDS_rate.FieldByName('dist2').AsInteger) then begin
                            exWks.Range['AT' + IntToStr(row_0)].Value := ClientDS_rate.FieldByName('rate').Value;
                            break;
                          end;
                          ClientDS_rate.Next;
                        end;
                      end;
                  except
                     exWks.Range['AL' + IntToStr(row_0)].Value := OleVariant('(Ошибка при расчете)');
                  end;

                  try
                    if (not SP.FieldByName('node_begin_cod_r').IsNull) and (not SP.FieldByName('node_end_cod_r').IsNull) then
                      if ClientDS_dist.Locate('node_begin_cod;node_end_cod', VarArrayOf([SP.FieldByName('node_begin_cod_r').Value, SP.FieldByName('node_end_cod_r').Value]), []) then begin
                        exWks.Range['AM' + IntToStr(row_0)].Value := ClientDS_dist.FieldByName('Distance').Value;
                      end;
                  except
                     exWks.Range['AM' + IntToStr(row_0)].Value := OleVariant('(Ошибка при расчете)');
                  end;
                end;

              end;
         395 : begin
                exWks.Range['B' + IntToStr(row_0)].Value := SP.FieldByName('num_vagon_l').AsString;
                exWks.Range['C' + IntToStr(row_0)].Value := SP.FieldByName('date_otpr_l').Value;
                exWks.Range['D' + IntToStr(row_0)].Value := SP.FieldByName('date_arrival_l').Value;

                exWks.Range['F' + IntToStr(row_0)].Value := SP.FieldByName('node_begin_name_l').AsString;
                exWks.Range['G' + IntToStr(row_0)].Value := SP.FieldByName('node_end_name_l').AsString;
                exWks.Range['H' + IntToStr(row_0)].Value := SP.FieldByName('kargoETSNG_name_l').AsString;
                exWks.Range['I' + IntToStr(row_0)].Value := SP.FieldByName('fact_weight_l').AsFloat;
                exWks.Range['J' + IntToStr(row_0)].Value := SP.FieldByName('num_vagon').AsString;
                exWks.Range['K' + IntToStr(row_0)].Value := SP.FieldByName('firm_name').AsString;

                exWks.Range['M' + IntToStr(row_0)].Value := SP.FieldByName('date_otpr').Value;
                exWks.Range['N' + IntToStr(row_0)].Value := SP.FieldByName('date_arrival').Value;


                exWks.Range['Q' + IntToStr(row_0)].Value := SP.FieldByName('node_begin_name').AsString;
                exWks.Range['R' + IntToStr(row_0)].Value := SP.FieldByName('node_end_name').AsString;
                exWks.Range['S' + IntToStr(row_0)].Value := SP.FieldByName('kargoETSNG_name').AsString;
                exWks.Range['T' + IntToStr(row_0)].Value := SP.FieldByName('fact_weight').AsFloat;
                exWks.Range['U' + IntToStr(row_0)].Value := SP.FieldByName('num_vagon_r').AsString;
                exWks.Range['V' + IntToStr(row_0)].Value := SP.FieldByName('date_otpr_r').Value;
                exWks.Range['W' + IntToStr(row_0)].Value := SP.FieldByName('date_arrival_r').Value;

                exWks.Range['Y' + IntToStr(row_0)].Value := SP.FieldByName('node_begin_name_r').AsString;
                exWks.Range['Z' + IntToStr(row_0)].Value := SP.FieldByName('node_end_name_r').AsString;
                exWks.Range['AA' + IntToStr(row_0)].Value := SP.FieldByName('kargoETSNG_name_r').AsString;
                exWks.Range['AB' + IntToStr(row_0)].Value := SP.FieldByName('fact_weight_r').AsFloat;
                exWks.Range['AD' + IntToStr(row_0)].Value := SP.FieldByName('doc_number_1').AsString;
                exWks.Range['AE' + IntToStr(row_0)].Value := SP.FieldByName('doc_number').AsString;
                exWks.Range['AF' + IntToStr(row_0)].Value := SP.FieldByName('doc_number_r').AsString;
                exWks.Range['AM' + IntToStr(row_0)].Value := SP.FieldByName('transport_pay_l').Value;
                exWks.Range['AO' + IntToStr(row_0)].Value := SP.FieldByName('transport_pay_r').Value;
                exWks.Range['AP' + IntToStr(row_0)].Value := SP.FieldByName('type_park_name').AsString;

                if show_distance then begin
                  try
                    if (not SP.FieldByName('node_begin_cod_l').IsNull) and (not SP.FieldByName('node_end_cod_l').IsNull) then
                      if ClientDS_dist.Locate('node_begin_cod;node_end_cod', VarArrayOf([SP.FieldByName('node_begin_cod_l').Value, SP.FieldByName('node_end_cod_l').Value]), []) then begin
                        exWks.Range['AJ' + IntToStr(row_0)].Value := ClientDS_dist.FieldByName('Distance').Value;
                      end;
                  except
                     exWks.Range['AJ' + IntToStr(row_0)].Value := OleVariant('(Ошибка при расчете)');
                  end;

                  try
                    if (not SP.FieldByName('node_begin_cod').IsNull) and (not SP.FieldByName('node_end_cod').IsNull) then
                      if ClientDS_dist.Locate('node_begin_cod;node_end_cod', VarArrayOf([SP.FieldByName('node_begin_cod').Value, SP.FieldByName('node_end_cod').Value]), []) then begin
                        exWks.Range['AK' + IntToStr(row_0)].Value := ClientDS_dist.FieldByName('Distance').Value;
                      end;
                  except
                     exWks.Range['AK' + IntToStr(row_0)].Value := OleVariant('(Ошибка при расчете)');
                  end;

                  try
                    if (not SP.FieldByName('node_begin_cod_r').IsNull) and (not SP.FieldByName('node_end_cod_r').IsNull) then
                      if ClientDS_dist.Locate('node_begin_cod;node_end_cod', VarArrayOf([SP.FieldByName('node_begin_cod_r').Value, SP.FieldByName('node_end_cod_r').Value]), []) then begin
                        exWks.Range['AL' + IntToStr(row_0)].Value := ClientDS_dist.FieldByName('Distance').Value;
                      end;
                  except
                     exWks.Range['AL' + IntToStr(row_0)].Value := OleVariant('(Ошибка при расчете)');
                  end;
                end;

              end;

        291 : begin
                exWks.Range['B' + IntToStr(row_0)].Value := SP.FieldByName('num_vagon_l').AsString;
                exWks.Range['C' + IntToStr(row_0)].Value := SP.FieldByName('date_otpr_l').Value;
                exWks.Range['D' + IntToStr(row_0)].Value := SP.FieldByName('date_arrival_l').Value;

                exWks.Range['F' + IntToStr(row_0)].Value := SP.FieldByName('node_begin_name_l').AsString;
                exWks.Range['G' + IntToStr(row_0)].Value := SP.FieldByName('node_end_name_l').AsString;
                exWks.Range['H' + IntToStr(row_0)].Value := SP.FieldByName('kargoETSNG_name_l').AsString;
                exWks.Range['I' + IntToStr(row_0)].Value := SP.FieldByName('fact_weight_l').AsFloat;
                exWks.Range['J' + IntToStr(row_0)].Value := SP.FieldByName('num_vagon').AsString;
                exWks.Range['K' + IntToStr(row_0)].Value := SP.FieldByName('firm_name').AsString;

                exWks.Range['M' + IntToStr(row_0)].Value := SP.FieldByName('date_otpr').Value;
                exWks.Range['N' + IntToStr(row_0)].Value := SP.FieldByName('date_arrival').Value;


                exWks.Range['Q' + IntToStr(row_0)].Value := SP.FieldByName('node_begin_name').AsString;
                exWks.Range['R' + IntToStr(row_0)].Value := SP.FieldByName('node_end_name').AsString;
                exWks.Range['S' + IntToStr(row_0)].Value := SP.FieldByName('kargoETSNG_name').AsString;
                exWks.Range['T' + IntToStr(row_0)].Value := SP.FieldByName('fact_weight').AsFloat;
                exWks.Range['U' + IntToStr(row_0)].Value := SP.FieldByName('num_vagon_r').AsString;
                exWks.Range['V' + IntToStr(row_0)].Value := SP.FieldByName('date_otpr_r').Value;
                exWks.Range['W' + IntToStr(row_0)].Value := SP.FieldByName('date_arrival_r').Value;

                exWks.Range['Y' + IntToStr(row_0)].Value := SP.FieldByName('node_begin_name_r').AsString;
                exWks.Range['Z' + IntToStr(row_0)].Value := SP.FieldByName('node_end_name_r').AsString;
                exWks.Range['AA' + IntToStr(row_0)].Value := SP.FieldByName('kargoETSNG_name_r').AsString;
                exWks.Range['AB' + IntToStr(row_0)].Value := SP.FieldByName('fact_weight_r').AsFloat;
                exWks.Range['AC' + IntToStr(row_0)].Value := SP.FieldByName('date_arrival_r2').Value;

                exWks.Range['AD' + IntToStr(row_0)].Value := SP.FieldByName('doc_number_1').AsString;
                exWks.Range['AE' + IntToStr(row_0)].Value := SP.FieldByName('doc_number').AsString;
                exWks.Range['AF' + IntToStr(row_0)].Value := SP.FieldByName('doc_number_r').AsString;

                exWks.Range['AG' + IntToStr(row_0)].Value := SP.FieldByName('poluchgr_1').AsString;
                exWks.Range['AH' + IntToStr(row_0)].Value := SP.FieldByName('poluchgr').AsString;
                exWks.Range['AI' + IntToStr(row_0)].Value := SP.FieldByName('poluchgr_r').AsString;

                if show_distance then begin
                  try
                    if (not SP.FieldByName('node_begin_cod_l').IsNull) and (not SP.FieldByName('node_end_cod_l').IsNull) then
                      if ClientDS_dist.Locate('node_begin_cod;node_end_cod', VarArrayOf([SP.FieldByName('node_begin_cod_l').Value, SP.FieldByName('node_end_cod_l').Value]), []) then begin
                        exWks.Range['AJ' + IntToStr(row_0)].Value := ClientDS_dist.FieldByName('Distance').Value;
                      end;
                  except
                     exWks.Range['AJ' + IntToStr(row_0)].Value := OleVariant('(Ошибка при расчете)');
                  end;

                  try
                    if (not SP.FieldByName('node_begin_cod').IsNull) and (not SP.FieldByName('node_end_cod').IsNull) then
                      if ClientDS_dist.Locate('node_begin_cod;node_end_cod', VarArrayOf([SP.FieldByName('node_begin_cod').Value, SP.FieldByName('node_end_cod').Value]), []) then begin
                        exWks.Range['AK' + IntToStr(row_0)].Value := ClientDS_dist.FieldByName('Distance').Value;
                      end;
                  except
                     exWks.Range['AK' + IntToStr(row_0)].Value := OleVariant('(Ошибка при расчете)');
                  end;

                  try
                    if (not SP.FieldByName('node_begin_cod_r').IsNull) and (not SP.FieldByName('node_end_cod_r').IsNull) then
                      if ClientDS_dist.Locate('node_begin_cod;node_end_cod', VarArrayOf([SP.FieldByName('node_begin_cod_r').Value, SP.FieldByName('node_end_cod_r').Value]), []) then begin
                        exWks.Range['AL' + IntToStr(row_0)].Value := ClientDS_dist.FieldByName('Distance').Value;
                      end;
                  except
                     exWks.Range['AL' + IntToStr(row_0)].Value := OleVariant('(Ошибка при расчете)');
                  end;
                end;

              end;

          305 : begin
                //Предыдущий
                exWks.Range['B' + IntToStr(row_0)].Value := SP.FieldByName('num_vagon_l').AsString;
                exWks.Range['C' + IntToStr(row_0)].Value := SP.FieldByName('date_otpr_l').Value;
                exWks.Range['D' + IntToStr(row_0)].Value := SP.FieldByName('date_arrival_l').Value;
               // exWks.Range['E' + IntToStr(row_0)].Value := SP.FieldByName('').Value;
                exWks.Range['F' + IntToStr(row_0)].Value := SP.FieldByName('node_begin_name_l').AsString;
                exWks.Range['G' + IntToStr(row_0)].Value := SP.FieldByName('node_end_name_l').AsString;
                exWks.Range['I' + IntToStr(row_0)].Value := SP.FieldByName('kargoETSNG_name_l').AsString;
                exWks.Range['J' + IntToStr(row_0)].Value := SP.FieldByName('fact_weight_l').AsFloat;
                exWks.Range['K' + IntToStr(row_0)].Value := SP.FieldByName('doc_number_1').AsString;
                exWks.Range['L' + IntToStr(row_0)].Value := SP.FieldByName('poluchgr_1').AsString;

                //Груженый
                exWks.Range['M' + IntToStr(row_0)].Value := SP.FieldByName('num_vagon').AsString;
                exWks.Range['N' + IntToStr(row_0)].Value := SP.FieldByName('firm_name').AsString;
                //exWks.Range['N' + IntToStr(row_0)].Value := SP.FieldByName('').Value;
                exWks.Range['P' + IntToStr(row_0)].Value := SP.FieldByName('date_otpr').Value;
                exWks.Range['Q' + IntToStr(row_0)].Value := SP.FieldByName('date_arrival').Value;
                //exWks.Range['R' + IntToStr(row_0)].Value := SP.FieldByName('').Value;
                exWks.Range['T' + IntToStr(row_0)].Value := SP.FieldByName('node_begin_name').AsString;
                exWks.Range['U' + IntToStr(row_0)].Value := SP.FieldByName('node_end_name').AsString;
                exWks.Range['W' + IntToStr(row_0)].Value := SP.FieldByName('kargoETSNG_name').AsString;
                exWks.Range['X' + IntToStr(row_0)].Value := SP.FieldByName('fact_weight').AsFloat;
                exWks.Range['Y' + IntToStr(row_0)].Value := SP.FieldByName('doc_number').AsString;
                exWks.Range['Z' + IntToStr(row_0)].Value := SP.FieldByName('poluchgr').AsString;

                //Следующий 1
                exWks.Range['AA' + IntToStr(row_0)].Value := SP.FieldByName('num_vagon_r').AsString;
                exWks.Range['AB' + IntToStr(row_0)].Value := SP.FieldByName('date_otpr_r').Value;
                exWks.Range['AC' + IntToStr(row_0)].Value := SP.FieldByName('date_arrival_r').Value;
                //exWks.Range['AB' + IntToStr(row_0)].Value := SP.FieldByName('').Value;
                exWks.Range['AE' + IntToStr(row_0)].Value := SP.FieldByName('node_begin_name_r').AsString;
                exWks.Range['AF' + IntToStr(row_0)].Value := SP.FieldByName('node_end_name_r').AsString;
                exWks.Range['AH' + IntToStr(row_0)].Value := SP.FieldByName('kargoETSNG_name_r').AsString;
                exWks.Range['AI' + IntToStr(row_0)].Value := SP.FieldByName('fact_weight_r').AsFloat;
                exWks.Range['AJ' + IntToStr(row_0)].Value := SP.FieldByName('doc_number_r').AsString;
                exWks.Range['AK' + IntToStr(row_0)].Value := SP.FieldByName('poluchgr_r').AsString;

                //Следующий 2
                exWks.Range['AL' + IntToStr(row_0)].Value := SP.FieldByName('num_vagon_r2').AsString;
                exWks.Range['AM' + IntToStr(row_0)].Value := SP.FieldByName('date_otpr_r2').Value;
                exWks.Range['AN' + IntToStr(row_0)].Value := SP.FieldByName('date_arrival_r2').Value;
                //exWks.Range['AL' + IntToStr(row_0)].Value := SP.FieldByName('').Value;
                exWks.Range['AP' + IntToStr(row_0)].Value := SP.FieldByName('node_begin_name_r2').AsString;
                exWks.Range['AQ' + IntToStr(row_0)].Value := SP.FieldByName('node_end_name_r2').AsString;
                exWks.Range['AS' + IntToStr(row_0)].Value := SP.FieldByName('kargoETSNG_name_r2').AsString;
                exWks.Range['AT' + IntToStr(row_0)].Value := SP.FieldByName('fact_weight_r2').AsFloat;
                exWks.Range['AU' + IntToStr(row_0)].Value := SP.FieldByName('doc_number_r2').AsString;
                exWks.Range['AV' + IntToStr(row_0)].Value := SP.FieldByName('poluchgr_r2').AsString;

                //Следующий 3
                exWks.Range['AW' + IntToStr(row_0)].Value := SP.FieldByName('num_vagon_r3').AsString;
                exWks.Range['AX' + IntToStr(row_0)].Value := SP.FieldByName('date_otpr_r3').Value;
                exWks.Range['AY' + IntToStr(row_0)].Value := SP.FieldByName('date_arrival_r3').Value;
                //exWks.Range['AV' + IntToStr(row_0)].Value := SP.FieldByName('').Value;
                exWks.Range['BA' + IntToStr(row_0)].Value := SP.FieldByName('node_begin_name_r3').AsString;
                exWks.Range['BB' + IntToStr(row_0)].Value := SP.FieldByName('node_end_name_r3').AsString;
                exWks.Range['BD' + IntToStr(row_0)].Value := SP.FieldByName('kargoETSNG_name_r3').AsString;
                exWks.Range['BE' + IntToStr(row_0)].Value := SP.FieldByName('fact_weight_r3').AsFloat;
                exWks.Range['BF' + IntToStr(row_0)].Value := SP.FieldByName('doc_number_r3').AsString;
                exWks.Range['BG' + IntToStr(row_0)].Value := SP.FieldByName('poluchgr_r3').AsString;

                if show_distance then begin
//                 exWks.Range['H'  + IntToStr(row_0)].Value  := GetCalcDistanceDB(SP.FieldByName('node_begin_cod_l').AsString, SP.FieldByName('node_end_cod_l').AsString, ADOReport);
//                 exWks.Range['V'  + IntToStr(row_0)].Value  := GetCalcDistanceDB(SP.FieldByName('node_begin_cod').AsString, SP.FieldByName('node_end_cod').AsString, ADOReport);
//                 exWks.Range['AG' + IntToStr(row_0)].Value  := GetCalcDistanceDB(SP.FieldByName('node_begin_cod_r').AsString, SP.FieldByName('node_end_cod_r').AsString, ADOReport);
//                 exWks.Range['AR' + IntToStr(row_0)].Value  := GetCalcDistanceDB(SP.FieldByName('node_begin_cod_r2').AsString, SP.FieldByName('node_end_cod_r2').AsString, ADOReport);
//                 exWks.Range['BC' + IntToStr(row_0)].Value  := GetCalcDistanceDB(SP.FieldByName('node_begin_cod_r3').AsString, SP.FieldByName('node_end_cod_r3').AsString, ADOReport);

                  try
                    if (not SP.FieldByName('node_begin_cod_l').IsNull) and (not SP.FieldByName('node_end_cod_l').IsNull) then
                      if ClientDS_dist.Locate('node_begin_cod;node_end_cod', VarArrayOf([SP.FieldByName('node_begin_cod_l').Value, SP.FieldByName('node_end_cod_l').Value]), []) then begin
                        exWks.Range['H' + IntToStr(row_0)].Value := ClientDS_dist.FieldByName('Distance').Value;
                      end;
                  except
                     exWks.Range['H' + IntToStr(row_0)].Value := OleVariant('(Ошибка при расчете)');
                  end;

                  try
                    if (not SP.FieldByName('node_begin_cod').IsNull) and (not SP.FieldByName('node_end_cod').IsNull) then
                      if ClientDS_dist.Locate('node_begin_cod;node_end_cod', VarArrayOf([SP.FieldByName('node_begin_cod').Value, SP.FieldByName('node_end_cod').Value]), []) then begin
                        exWks.Range['V' + IntToStr(row_0)].Value := ClientDS_dist.FieldByName('Distance').Value;
                      end;
                  except
                     exWks.Range['V' + IntToStr(row_0)].Value := OleVariant('(Ошибка при расчете)');
                  end;

                  try
                    if (not SP.FieldByName('node_begin_cod_r').IsNull) and (not SP.FieldByName('node_end_cod_r').IsNull) then
                      if ClientDS_dist.Locate('node_begin_cod;node_end_cod', VarArrayOf([SP.FieldByName('node_begin_cod_r').Value, SP.FieldByName('node_end_cod_r').Value]), []) then begin
                        exWks.Range['AG' + IntToStr(row_0)].Value := ClientDS_dist.FieldByName('Distance').Value;
                      end;
                  except
                     exWks.Range['AG' + IntToStr(row_0)].Value := OleVariant('(Ошибка при расчете)');
                  end;

                  try
                    if (not SP.FieldByName('node_begin_cod_r2').IsNull) and (not SP.FieldByName('node_end_cod_r2').IsNull) then
                      if ClientDS_dist.Locate('node_begin_cod;node_end_cod', VarArrayOf([SP.FieldByName('node_begin_cod_r2').Value, SP.FieldByName('node_end_cod_r2').Value]), []) then begin
                        exWks.Range['AR' + IntToStr(row_0)].Value := ClientDS_dist.FieldByName('Distance').Value;
                      end;
                  except
                     exWks.Range['AR' + IntToStr(row_0)].Value := OleVariant('(Ошибка при расчете)');
                  end;

                  try
                    if (not SP.FieldByName('node_begin_cod_r3').IsNull) and (not SP.FieldByName('node_end_cod').IsNull) then
                      if ClientDS_dist.Locate('node_begin_cod;node_end_cod', VarArrayOf([SP.FieldByName('node_begin_cod_r3').Value, SP.FieldByName('node_end_cod_r3').Value]), []) then begin
                        exWks.Range['BC' + IntToStr(row_0)].Value := ClientDS_dist.FieldByName('Distance').Value;
                      end;
                  except
                     exWks.Range['BC' + IntToStr(row_0)].Value := OleVariant('(Ошибка при расчете)');
                  end;
                end;
              end;

        257 : begin
                exWks.Range['B' + IntToStr(row_0)].Value := SP.FieldByName('num_vagon_l').AsString;
                exWks.Range['C' + IntToStr(row_0)].Value := SP.FieldByName('date_otpr_l').Value;
                exWks.Range['D' + IntToStr(row_0)].Value := SP.FieldByName('date_arrival_l').Value;

                exWks.Range['F' + IntToStr(row_0)].Value := SP.FieldByName('node_begin_name_l').AsString;
                exWks.Range['G' + IntToStr(row_0)].Value := SP.FieldByName('node_end_name_l').AsString;
                exWks.Range['H' + IntToStr(row_0)].Value := SP.FieldByName('kargoETSNG_name_l').AsString;
                exWks.Range['I' + IntToStr(row_0)].Value := SP.FieldByName('fact_weight_l').AsFloat;
                exWks.Range['J' + IntToStr(row_0)].Value := SP.FieldByName('num_vagon').AsString;
                exWks.Range['K' + IntToStr(row_0)].Value := SP.FieldByName('firm_name').AsString;

                exWks.Range['M' + IntToStr(row_0)].Value := SP.FieldByName('date_otpr').Value;
                exWks.Range['N' + IntToStr(row_0)].Value := SP.FieldByName('date_arrival').Value;


                exWks.Range['Q' + IntToStr(row_0)].Value := SP.FieldByName('node_begin_name').AsString;
                exWks.Range['R' + IntToStr(row_0)].Value := SP.FieldByName('node_end_name').AsString;
                exWks.Range['S' + IntToStr(row_0)].Value := SP.FieldByName('kargoETSNG_name').AsString;
                exWks.Range['T' + IntToStr(row_0)].Value := SP.FieldByName('fact_weight').AsFloat;

                exWks.Range['U' + IntToStr(row_0)].Value := SP.FieldByName('doc_number_1').AsString;
                exWks.Range['V' + IntToStr(row_0)].Value := SP.FieldByName('doc_number').AsString;

                exWks.Range['W' + IntToStr(row_0)].Value := SP.FieldByName('count_stay').AsString;

                exWks.Range['X' + IntToStr(row_0)].Value := cxCurrencyEdit2.EditValue;
                exWks.Range['Z' + IntToStr(row_0)].Value := cxCurrencyEdit1.EditValue;
//
//                exWks.Range['Y' + IntToStr(row_0)].Value := SP.FieldByName('node_begin_name_r').Value;
//                exWks.Range['Z' + IntToStr(row_0)].Value := SP.FieldByName('node_end_name_r').Value;
//                exWks.Range['AA' + IntToStr(row_0)].Value := SP.FieldByName('kargoETSNG_name_r').Value;
//                exWks.Range['AB' + IntToStr(row_0)].Value := SP.FieldByName('fact_weight_r').Value;
//                exWks.Range['AC' + IntToStr(row_0)].Value := SP.FieldByName('date_arrival_r2').Value;
//                exWks.Range['AD' + IntToStr(row_0)].Value := SP.FieldByName('doc_number_1').Value;
//                exWks.Range['AE' + IntToStr(row_0)].Value := SP.FieldByName('doc_number').Value;
//                exWks.Range['AF' + IntToStr(row_0)].Value := SP.FieldByName('doc_number_r').Value;
              end;

        147 : begin
                if num_vagon <> SP.FieldByName('num_vagon').AsString then begin
                  if (num_vagon <> '') and (start_num_vagon < (row_0 - 1)) then begin
                    exApp.DisplayAlerts := False;
                    exWks.Range[exWks.cells[start_num_vagon, 4], exWks.cells[row_0 - 1, 4]].Merge;
                    exWks.cells[start_num_vagon, 4].VerticalAlignment := -4108;
                    exApp.DisplayAlerts := True;
                  end;
                  num_vagon := SP.FieldByName('num_vagon').AsString;
                  start_num_vagon := row_0;
                end;
                exWks.Range['D' + IntToStr(row_0)].Value := SP.FieldByName('num_vagon').Value;
                if not SP.FieldByName('kargoETSNG_name').IsNull then
                  exWks.Range['G' + IntToStr(row_0)].Value := SP.FieldByName('kargoETSNG_name').AsString;
                exWks.Range['I' + IntToStr(row_0)].Value := SP.FieldByName('date_otpr').Value;
                exWks.Range['J' + IntToStr(row_0)].Value := SP.FieldByName('date_otpr').Value;
                if not SP.FieldByName('date_pr').IsNull then
                  exWks.Range['N' + IntToStr(row_0)].Value := SP.FieldByName('date_pr').Value;
                if not SP.FieldByName('node_begin_name').IsNull then
                  exWks.Range['E' + IntToStr(row_0)].Value := SP.FieldByName('node_begin_name').AsString;
                if not SP.FieldByName('node_end_name').IsNull then
                  exWks.Range['F' + IntToStr(row_0)].Value := SP.FieldByName('node_end_name').AsString;
                if not SP.FieldByName('fact_weight').IsNull then
                  exWks.Range['H' + IntToStr(row_0)].Value := SP.FieldByName('fact_weight').AsFloat;
                if not SP.FieldByName('date_end_trip').IsNull then
                  exWks.Range['O' + IntToStr(row_0)].Value := SP.FieldByName('date_end_trip').Value;
                if not SP.FieldByName('count_stay').IsNull then
                  exWks.Range['P' + IntToStr(row_0)].Value := SP.FieldByName('count_stay').AsString;
                exWks.Range['S' + IntToStr(row_0)].Value := SP.FieldByName('doc_number').AsString;
              end;
        148 : begin
                exWks.Range['B' + IntToStr(row_0)].Value := SP.FieldByName('num_vagon').AsString;
                exWks.Range['C' + IntToStr(row_0)].Value := SP.FieldByName('date_begin_arenda').Value;
                exWks.Range['D' + IntToStr(row_0)].Value := SP.FieldByName('date_otpr').Value;
                exWks.Range['E' + IntToStr(row_0)].Value := SP.FieldByName('date_pr').Value;
                exWks.Range['F' + IntToStr(row_0)].Value := SP.FieldByName('date_otpr_next').Value;
                exWks.Range['G' + IntToStr(row_0)].Value := SP.FieldByName('node_begin_name').AsString;
                exWks.Range['H' + IntToStr(row_0)].Value := SP.FieldByName('node_end_name').AsString;
                exWks.Range['I' + IntToStr(row_0)].Value := SP.FieldByName('fact_weight').AsFloat;
                exWks.Range['K' + IntToStr(row_0)].Value := SP.FieldByName('doc_number').AsString;
              end;
        151 : begin
                exWks.Range['B' + IntToStr(row_0)].Value := SP.FieldByName('num_vagon').AsString;
                exWks.Range['C' + IntToStr(row_0)].Value := SP.FieldByName('owner_name').AsString;
                exWks.Range['D' + IntToStr(row_0)].Value := SP.FieldByName('type_park_vagon_name').AsString;
                exWks.Range['E' + IntToStr(row_0)].Value := SP.FieldByName('type_repair_name').AsString;
                exWks.Range['F' + IntToStr(row_0)].Value := SP.FieldByName('depo_name').AsString;
                exWks.Range['G' + IntToStr(row_0)].Value := SP.FieldByName('num_notice_23').AsString;
                exWks.Range['H' + IntToStr(row_0)].Value := SP.FieldByName('road_name').AsString;
                exWks.Range['I' + IntToStr(row_0)].Value := SP.FieldByName('station_detaching_name').AsString;
                exWks.Range['J' + IntToStr(row_0)].Value := SP.FieldByName('date_breakage').Value;
                exWks.Range['K' + IntToStr(row_0)].Value := SP.FieldByName('breakage').AsString;
                exWks.Range['L' + IntToStr(row_0)].Value := SP.FieldByName('breakage_name').AsString;
                exWks.Range['M' + IntToStr(row_0)].Value := SP.FieldByName('date_build').Value;
                exWks.Range['N' + IntToStr(row_0)].Value := SP.FieldByName('last_depo_place_name').AsString;
                exWks.Range['O' + IntToStr(row_0)].Value := SP.FieldByName('date_last_depo_place').AsString;
                exWks.Range['P' + IntToStr(row_0)].Value := SP.FieldByName('last_cap_place_name').AsString;
                exWks.Range['Q' + IntToStr(row_0)].Value := SP.FieldByName('date_cap_place').Value;
                exWks.Range['R' + IntToStr(row_0)].Value := SP.FieldByName('num_notice_36').AsString;
                exWks.Range['S' + IntToStr(row_0)].Value := SP.FieldByName('date_repair_begin').Value;
                exWks.Range['T' + IntToStr(row_0)].Value := SP.FieldByName('date_repair_end').Value;
                exWks.Range['U' + IntToStr(row_0)].Value := SP.FieldByName('next_date_repair').Value;
                exWks.Range['V' + IntToStr(row_0)].Value := SP.FieldByName('next_type_repair_name').AsString;
                exWks.Range['W' + IntToStr(row_0)].Value := SP.FieldByName('milage_rest').AsString;
                exWks.Range['X' + IntToStr(row_0)].Value := SP.FieldByName('milage_passed').AsString;
                exWks.Range['Y' + IntToStr(row_0)].Value := SP.FieldByName('count_stay').AsString;
                exWks.Range['Z' + IntToStr(row_0)].Value := SP.FieldByName('count_stay_not_workingPark').AsString;

              end;
        152: begin
               if id <> SP.FieldByName('fact_track_trip_id').Value then begin
                 if row_0 <> 9 then begin
                   exApp.Rows[IntToStr(row_0) + ':' + IntToStr(row_0 + 1)].Select;
                   exApp.Selection.Delete;
                   xCopyRange(exApp,6,8,row_0);
                 end;
                 exWks.Range['B' + IntToStr(row_0)].Value := SP.FieldByName('num_vagon').AsString;
                 exWks.Range['C' + IntToStr(row_0)].Value := SP.FieldByName('trip_node_begin_name').AsString;
                 exWks.Range['D' + IntToStr(row_0)].Value := SP.FieldByName('trip_date_otpr').Value;
                 exWks.Range['E' + IntToStr(row_0)].Value := SP.FieldByName('trip_node_end_name').AsString;
                 exWks.Range['F' + IntToStr(row_0)].Value := SP.FieldByName('date_arrival').Value;
                 exWks.Range['G' + IntToStr(row_0)].Value := SP.FieldByName('date_final').Value;
                 exWks.Range['H' + IntToStr(row_0)].Value := SP.FieldByName('min_date_operation').AsString;
                 exWks.Range['I' + IntToStr(row_0)].Value := SP.FieldByName('max_date_operation').AsString;
                 id := SP.FieldByName('fact_track_trip_id').Value;
                 inc(row_0, 1);
               end;
               exWks.Range['B' + IntToStr(row_0)].Value := SP.FieldByName('num_vagon').AsString;
               exWks.Range['C' + IntToStr(row_0)].Value := SP.FieldByName('node_begin_name').AsString;
               exWks.Range['D' + IntToStr(row_0)].Value := SP.FieldByName('date_otpr').Value;
               exWks.Range['E' + IntToStr(row_0)].Value := SP.FieldByName('node_end_name').AsString;
               exWks.Range['F' + IntToStr(row_0)].Value := SP.FieldByName('date_operation').Value;
              end;

       119 : begin
               exWks.Range['B'+IntToStr(row_0)].Value := SP.FieldByName('cod').AsString;
               exWks.Range['C'+IntToStr(row_0)].Value := SP.FieldByName('invFromStationName').AsString;
               exWks.Range['D'+IntToStr(row_0)].Value := SP.FieldByName('invToStationName').AsString;
               if not VarIsNull(SP.FieldByName('invDateReady').Value) then exWks.Range['E'+IntToStr(row_0)].Value := StrToDate(FormatDateTime('dd'+FormatSettings.DateSeparator+'mm'+FormatSettings.DateSeparator+'yy', SP.FieldByName('invDateReady').Value));
               if not VarIsNull(SP.FieldByName('invDateExpire').Value) then exWks.Range['F'+IntToStr(row_0)].Value := StrToDate(FormatDateTime('dd'+FormatSettings.DateSeparator+'mm'+FormatSettings.DateSeparator+'yy', SP.FieldByName('invDateExpire').Value));
             end;

       157 : begin
               exWks.Range['B' + IntToStr(row_0)].Value := SP.FieldByName('num_vagon').AsString;
               exWks.Range['C' + IntToStr(row_0)].Value := SP.FieldByName('grotpr_okpo').AsString;
               exWks.Range['D' + IntToStr(row_0)].Value := SP.FieldByName('node_begin_name').AsString;
               exWks.Range['E' + IntToStr(row_0)].Value := SP.FieldByName('date_otpr').Value;
               exWks.Range['F' + IntToStr(row_0)].Value := SP.FieldByName('node_end_name').AsString;

               exWks.Range['G' + IntToStr(row_0)].Value := SP.FieldByName('grpol_okpo').AsString;
               exWks.Range['H' + IntToStr(row_0)].Value := SP.FieldByName('grpol_name').AsString;

               exWks.Range['I' + IntToStr(row_0)].Value := FormatDateTime('dd.mm.yy hh:nn', SP.FieldByName('date_arrival').Value);
               exWks.Range['J' + IntToStr(row_0)].Value := SP.FieldByName('fact_weight').AsFloat;
               exWks.Range['K' + IntToStr(row_0)].Value := FormatDateTime('dd.mm.yy hh:nn', SP.FieldByName('date_otpr_r').Value);
               exWks.Range['L' + IntToStr(row_0)].Value := SP.FieldByName('grotpr_okpo_r').AsString;
               exWks.Range['M' + IntToStr(row_0)].Value := SP.FieldByName('node_end_name_r').AsString;
               exWks.Range['N' + IntToStr(row_0)].Value := SP.FieldByName('fact_weight_r').AsFloat;
               //exWks.Range['O' + IntToStr(row_0)].Value := SP.FieldByName('count_stay').AsCurrency;
               exWks.Range['P' + IntToStr(row_0)].Value := cxCurrencyEdit2.EditValue;
               exWks.Range['R' + IntToStr(row_0)].Value := cxCurrencyEdit1.EditValue;
               exWks.Range['T' + IntToStr(row_0)].Value := SP.FieldByName('firm_name').AsString;
               exWks.Range['U' + IntToStr(row_0)].Value := SP.FieldByName('doc_number').AsString;

               if exWks.Range['O' + IntToStr(row_0)].Value > cxCurrencyEdit2.EditValue  then //SP.FieldByName('count_stay').AsInteger > cxCurrencyEdit2.EditValue then
                 exWks.Range['Q' + IntToStr(row_0)].Value := exWks.Range['O' + IntToStr(row_0)].Value - cxCurrencyEdit2.EditValue //SP.FieldByName('count_stay').AsInteger - cxCurrencyEdit2.EditValue
               else  exWks.Range['Q' + IntToStr(row_0)].Value := 0;
             end;

       154 : begin
               exWks.Range['B' + IntToStr(row_0)].Value := SP.FieldByName('num_vagon').AsString;
               exWks.Range['C' + IntToStr(row_0)].Value := SP.FieldByName('firm_name').AsString;
               exWks.Range['D' + IntToStr(row_0)].Value := SP.FieldByName('rod_vagon_name').AsString;
               exWks.Range['E' + IntToStr(row_0)].Value := SP.FieldByName('Com6').AsString;
               exWks.Range['F' + IntToStr(row_0)].Value := SP.FieldByName('type_park_name').AsString;


               exWks.Range['G' + IntToStr(row_0)].Value := SP.FieldByName('node_begin_name').AsString;
               exWks.Range['H' + IntToStr(row_0)].Value := SP.FieldByName('grotpr_okpo').AsString;
               exWks.Range['I' + IntToStr(row_0)].Value := SP.FieldByName('grotpr_name').AsString;

               exWks.Range['J' + IntToStr(row_0)].Value := SP.FieldByName('node_end_name').AsString;
               exWks.Range['K' + IntToStr(row_0)].Value := SP.FieldByName('date_otpr').Value;
               exWks.Range['L' + IntToStr(row_0)].Value := SP.FieldByName('date_arrival').Value;
               exWks.Range['M' + IntToStr(row_0)].Value := SP.FieldByName('RW_grpol').AsString;
               exWks.Range['N' + IntToStr(row_0)].Value := SP.FieldByName('fact_weight').AsFloat;
               exWks.Range['O' + IntToStr(row_0)].Value := SP.FieldByName('doc_number').AsString;
               exWks.Range['P' + IntToStr(row_0)].Value := SP.FieldByName('etran_date_delivery').Value;
               exWks.Range['Q' + IntToStr(row_0)].Value := SP.FieldByName('kargoETSNG_name').AsString;

               exWks.Range['R' + IntToStr(row_0)].Value := SP.FieldByName('node_begin_name_r').AsString;
               exWks.Range['S' + IntToStr(row_0)].Value := SP.FieldByName('grotpr_okpo_r').AsString;
               exWks.Range['T' + IntToStr(row_0)].Value := SP.FieldByName('grotpr_name_r').AsString;

               exWks.Range['U' + IntToStr(row_0)].Value := SP.FieldByName('date_otpr_r').Value;
               exWks.Range['V' + IntToStr(row_0)].Value := SP.FieldByName('node_end_name_r').AsString;
               exWks.Range['W' + IntToStr(row_0)].Value := SP.FieldByName('doc_numberr').AsString;
               exWks.Range['X' + IntToStr(row_0)].Value := SP.FieldByName('etran_date_deliveryr').Value;
               //exWks.Range['t' + IntToStr(row_0)].Value := SP.FieldByName('InvDateCreate').AsString;
               exWks.Range['Z' + IntToStr(row_0)].Value := SP.FieldByName('kargoETSNG_name_r').AsString;

               exWks.Range['AA' + IntToStr(row_0)].Value := SP.FieldByName('fact_weight_r').AsFloat;

               exWks.Range['AB' + IntToStr(row_0)].Value := SP.FieldByName('count_stay').AsString;
               exWks.Range['AC' + IntToStr(row_0)].Value :=cxCurrencyEdit2.EditValue;

               if SP.FieldByName('count_stay').AsInteger > cxCurrencyEdit2.EditValue then
                 exWks.Range['AD' + IntToStr(row_0)].Value := SP.FieldByName('count_stay').AsInteger - cxCurrencyEdit2.EditValue
               else  exWks.Range['AD' + IntToStr(row_0)].Value := 0;

               exWks.Range['AE' + IntToStr(row_0)].Value := cxCurrencyEdit1.EditValue;
             end;

        1542 : begin
                 exWks.Range['B' + IntToStr(row_0)].Value := SP.FieldByName('num_vagon').AsString;
                 exWks.Range['C' + IntToStr(row_0)].Value := SP.FieldByName('firm_name').AsString;
                 exWks.Range['D' + IntToStr(row_0)].Value := SP.FieldByName('rod_vagon_name').AsString;
                 exWks.Range['E' + IntToStr(row_0)].Value := SP.FieldByName('node_begin_name').AsString;
                 exWks.Range['F' + IntToStr(row_0)].Value := SP.FieldByName('grotpr_okpo').AsString;
                 exWks.Range['G' + IntToStr(row_0)].Value := SP.FieldByName('node_end_name').AsString;
                 exWks.Range['H' + IntToStr(row_0)].Value := SP.FieldByName('date_otpr').Value;
                 exWks.Range['I' + IntToStr(row_0)].Value := SP.FieldByName('date_arrival').Value;
                // exWks.Range['J' + IntToStr(row_0)].Value := SP.FieldByName('RW_grpol').AsString;
                 exWks.Range['K' + IntToStr(row_0)].Value := SP.FieldByName('fact_weight').AsFloat;
                 exWks.Range['L' + IntToStr(row_0)].Value := SP.FieldByName('doc_number').AsString;
                 exWks.Range['M' + IntToStr(row_0)].Value := SP.FieldByName('etran_date_delivery').Value;

                 exWks.Range['N' + IntToStr(row_0)].Value := SP.FieldByName('node_begin_name_r').AsString;
                 exWks.Range['O' + IntToStr(row_0)].Value := SP.FieldByName('grotpr_okpo_r').AsString;

                 exWks.Range['P' + IntToStr(row_0)].Value := SP.FieldByName('date_otpr_r').Value;
                 exWks.Range['Q' + IntToStr(row_0)].Value := SP.FieldByName('node_end_name_r').AsString;
                 exWks.Range['R' + IntToStr(row_0)].Value := SP.FieldByName('doc_numberr').AsString;
                 exWks.Range['S' + IntToStr(row_0)].Value := SP.FieldByName('etran_date_deliveryr').Value;
                 //exWks.Range['t' + IntToStr(row_0)].Value := SP.FieldByName('InvDateCreate').AsString;
                 exWks.Range['U' + IntToStr(row_0)].Value := SP.FieldByName('fact_weight_r').AsFloat;

                 exWks.Range['V' + IntToStr(row_0)].Value := SP.FieldByName('count_stay').AsString;
                 exWks.Range['W' + IntToStr(row_0)].Value :=cxCurrencyEdit2.EditValue;

                 if SP.FieldByName('count_stay').AsInteger > cxCurrencyEdit2.EditValue then
                   exWks.Range['X' + IntToStr(row_0)].Value := SP.FieldByName('count_stay').AsInteger - cxCurrencyEdit2.EditValue
                 else  exWks.Range['X' + IntToStr(row_0)].Value := 0;

                 exWks.Range['Y' + IntToStr(row_0)].Value := cxCurrencyEdit1.EditValue;
                 // следующий из оперативного факта
                 exWks.Range['AA' + IntToStr(row_0)].Value := SP.FieldByName('node_begin_name_rf').AsString;
                 exWks.Range['AB' + IntToStr(row_0)].Value := SP.FieldByName('grotpr_okpo_rf').AsString;
                 exWks.Range['AC' + IntToStr(row_0)].Value := SP.FieldByName('date_otpr_rf').Value;
                 exWks.Range['AD' + IntToStr(row_0)].Value := SP.FieldByName('node_end_name_rf').AsString;
                 exWks.Range['AE' + IntToStr(row_0)].Value := SP.FieldByName('doc_numberrf').AsString;
                 exWks.Range['AF' + IntToStr(row_0)].Value := SP.FieldByName('etran_date_deliveryrf').Value;
                 //exWks.Range['t' + IntToStr(row_0)].Value := SP.FieldByName('InvDateCreate').AsString;
                 exWks.Range['AH' + IntToStr(row_0)].Value := SP.FieldByName('fact_weight_rf').AsFloat;

                 exWks.Range['AI' + IntToStr(row_0)].Value := SP.FieldByName('count_stayf').AsString;
                 exWks.Range['AJ' + IntToStr(row_0)].Value :=cxCurrencyEdit2.EditValue;

                 if SP.FieldByName('count_stayf').AsInteger > cxCurrencyEdit2.EditValue then
                   exWks.Range['AK' + IntToStr(row_0)].Value := SP.FieldByName('count_stayf').AsInteger - cxCurrencyEdit2.EditValue
                 else  exWks.Range['AK' + IntToStr(row_0)].Value := 0;

                 exWks.Range['AL' + IntToStr(row_0)].Value := cxCurrencyEdit1.EditValue;

               end;

          1541 : begin
                exWks.Range['B' + IntToStr(row_0)].Value := SP.FieldByName('num_vagon').AsString;
                exWks.Range['C' + IntToStr(row_0)].Value := SP.FieldByName('firm_name').AsString;
                exWks.Range['D' + IntToStr(row_0)].Value := SP.FieldByName('rod_vagon_name').AsString;
                exWks.Range['E' + IntToStr(row_0)].Value := SP.FieldByName('Com6').AsString;
                exWks.Range['F' + IntToStr(row_0)].Value := SP.FieldByName('type_park_name').AsString;

                exWks.Range['G' + IntToStr(row_0)].Value := SP.FieldByName('node_begin_name').AsString;
                exWks.Range['H' + IntToStr(row_0)].Value := SP.FieldByName('grotpr_okpo').AsString;
                exWks.Range['I' + IntToStr(row_0)].Value := SP.FieldByName('etran_SenderName').AsString;

                exWks.Range['J' + IntToStr(row_0)].Value := SP.FieldByName('node_end_name').AsString;
                exWks.Range['K' + IntToStr(row_0)].Value := SP.FieldByName('date_otpr').Value;
                exWks.Range['L' + IntToStr(row_0)].Value := SP.FieldByName('date_arrival').Value;
                exWks.Range['M' + IntToStr(row_0)].Value := SP.FieldByName('RW_grpol').AsString;
                exWks.Range['N' + IntToStr(row_0)].Value := SP.FieldByName('fact_weight').AsFloat;
                exWks.Range['O' + IntToStr(row_0)].Value := SP.FieldByName('doc_number').AsString;
                exWks.Range['P' + IntToStr(row_0)].Value := SP.FieldByName('etran_date_delivery').Value;

                exWks.Range['Q' + IntToStr(row_0)].Value := SP.FieldByName('node_begin_name_r').AsString;
                exWks.Range['R' + IntToStr(row_0)].Value := SP.FieldByName('grotpr_okpo_r').AsString;
                exWks.Range['S' + IntToStr(row_0)].Value := SP.FieldByName('etran_SenderName_r').AsString;

                exWks.Range['T' + IntToStr(row_0)].Value := SP.FieldByName('date_otpr_r').Value;
                exWks.Range['U' + IntToStr(row_0)].Value := SP.FieldByName('node_end_name_r').AsString;
                exWks.Range['V' + IntToStr(row_0)].Value := SP.FieldByName('doc_numberr').AsString;
                exWks.Range['W' + IntToStr(row_0)].Value := SP.FieldByName('etran_date_deliveryr').Value;
                //exWks.Range['t' + IntToStr(row_0)].Value := SP.FieldByName('InvDateCreate').AsString;
                exWks.Range['Y' + IntToStr(row_0)].Value := SP.FieldByName('fact_weight_r').AsFloat;

                exWks.Range['Z' + IntToStr(row_0)].Value := SP.FieldByName('count_stay').AsString;
                exWks.Range['AA' + IntToStr(row_0)].Value :=cxCurrencyEdit2.EditValue;

                if SP.FieldByName('count_stay').AsInteger > cxCurrencyEdit2.EditValue then
                    exWks.Range['AB' + IntToStr(row_0)].Value := SP.FieldByName('count_stay').AsInteger - cxCurrencyEdit2.EditValue
                else  exWks.Range['AB' + IntToStr(row_0)].Value := 0;

                exWks.Range['AC' + IntToStr(row_0)].Value := cxCurrencyEdit1.EditValue;
          end;

          252 : begin
                exWks.Range['B' + IntToStr(row_0)].Value := SP.FieldByName('num_vagon').AsString;
                exWks.Range['C' + IntToStr(row_0)].Value := SP.FieldByName('firm_name').AsString;
                exWks.Range['D' + IntToStr(row_0)].Value := SP.FieldByName('type_park_name').AsString;
                exWks.Range['E' + IntToStr(row_0)].Value := SP.FieldByName('rod_vagon_name').AsString;
                exWks.Range['F' + IntToStr(row_0)].Value := SP.FieldByName('firm_customer_name').AsString;
                exWks.Range['G' + IntToStr(row_0)].Value := SP.FieldByName('node_begin_name').AsString;
                exWks.Range['H' + IntToStr(row_0)].Value := SP.FieldByName('comment6_name').AsString;
                exWks.Range['I' + IntToStr(row_0)].Value := SP.FieldByName('node_end_name').AsString;
                exWks.Range['J' + IntToStr(row_0)].Value := SP.FieldByName('kargoETSNG_name').AsString;

                exWks.Range['K' + IntToStr(row_0)].Value := SP.FieldByName('fact_weight').AsFloat;
                exWks.Range['L' + IntToStr(row_0)].Value := SP.FieldByName('date_otpr').Value;
                exWks.Range['M' + IntToStr(row_0)].Value := SP.FieldByName('stay_date_begin').Value;
                exWks.Range['N' + IntToStr(row_0)].Value := SP.FieldByName('stay_node_operation_name').AsString;
                exWks.Range['O' + IntToStr(row_0)].Value := SP.FieldByName('road_operation_name').AsString;
                exWks.Range['P' + IntToStr(row_0)].Value := SP.FieldByName('stay_date_end').Value;
                exWks.Range['Q' + IntToStr(row_0)].Value := SP.FieldByName('count_stay_on_node_operation').AsString;
                exWks.Range['R' + IntToStr(row_0)].Value := cxCurrencyEdit2.EditValue;

                if SP.FieldByName('count_stay_on_node_operation').AsInteger > cxCurrencyEdit2.EditValue then
                    exWks.Range['S' + IntToStr(row_0)].Value := SP.FieldByName('count_stay_on_node_operation').AsInteger - cxCurrencyEdit2.EditValue
                else  exWks.Range['S' + IntToStr(row_0)].Value := 0;

                exWks.Range['T' + IntToStr(row_0)].Value := cxCurrencyEdit1.EditValue;
                exWks.Range['V' + IntToStr(row_0)].Value := SP.FieldByName('date_arrival').Value;
                exWks.Range['W' + IntToStr(row_0)].Value := SP.FieldByName('doc_number').AsString;

                exWks.Range['X' + IntToStr(row_0)].Value := SP.FieldByName('index_train').AsString;
                exWks.Range['Y' + IntToStr(row_0)].Value := SP.FieldByName('cod_operation_vagon_name').AsString;

                exWks.Range['Z' + IntToStr(row_0)].Value := SP.FieldByName('date_otpr_r').Value;
                exWks.Range['AA' + IntToStr(row_0)].Value := SP.FieldByName('node_end_name_r').AsString;
                exWks.Range['AB' + IntToStr(row_0)].Value := SP.FieldByName('fact_weight_r').AsFloat;
          end;

          158 : begin
                exWks.Range['B' + IntToStr(row_0)].Value := SP.FieldByName('num_vagon').AsString;
                exWks.Range['C' + IntToStr(row_0)].Value := SP.FieldByName('node_begin_name').AsString;
                exWks.Range['D' + IntToStr(row_0)].Value := SP.FieldByName('node_end_name').AsString;
                exWks.Range['E' + IntToStr(row_0)].Value := SP.FieldByName('date_otpr').Value;
                exWks.Range['F' + IntToStr(row_0)].Value := SP.FieldByName('border_crossing_cate').AsString;
                exWks.Range['G' + IntToStr(row_0)].Value := SP.FieldByName('fact_weight').AsFloat;
                exWks.Range['H' + IntToStr(row_0)].Value := SP.FieldByName('border_crossing_cate_r').AsString;
                exWks.Range['I' + IntToStr(row_0)].Value := SP.FieldByName('node_end_name_r').AsString;
                exWks.Range['J' + IntToStr(row_0)].Value := SP.FieldByName('fact_weight_r').AsFloat;
                exWks.Range['K' + IntToStr(row_0)].Value := SP.FieldByName('count_stay').AsString;
                exWks.Range['L' + IntToStr(row_0)].Value := cxCurrencyEdit2.EditValue;
                exWks.Range['N' + IntToStr(row_0)].Value := cxCurrencyEdit1.EditValue;
                exWks.Range['P' + IntToStr(row_0)].Value := SP.FieldByName('firm_name').AsString;

                if SP.FieldByName('count_stay').AsInteger > cxCurrencyEdit2.EditValue then
                    exWks.Range['M' + IntToStr(row_0)].Value := SP.FieldByName('count_stay').AsInteger - cxCurrencyEdit2.EditValue
                else  exWks.Range['M' + IntToStr(row_0)].Value := 0;
          end;

          161 : begin
                exWks.Range['B' + IntToStr(row_0)].Value := SP.FieldByName('num_vagon').AsString;
                exWks.Range['C' + IntToStr(row_0)].Value := SP.FieldByName('node_begin_name').AsString;
                exWks.Range['D' + IntToStr(row_0)].Value := SP.FieldByName('node_end_name').AsString;
                exWks.Range['E' + IntToStr(row_0)].Value := SP.FieldByName('date_otpr').Value;
                exWks.Range['F' + IntToStr(row_0)].Value := SP.FieldByName('date_arrival').Value;
                exWks.Range['G' + IntToStr(row_0)].Value := SP.FieldByName('fact_weight').AsFloat;
                exWks.Range['H' + IntToStr(row_0)].Value := SP.FieldByName('kargoETSNG_name').AsString;
                exWks.Range['I' + IntToStr(row_0)].Value := SP.FieldByName('firm_name').AsString;
          end;
          163 : begin
                exWks.Range['B3'].Value := 'Колоцо: ' + cxButtonEdit2.Text + ' - ' + cxButtonEdit3.Text + ' - ' + cxButtonEdit2.Text;
                exWks.Range['B4'].Value := 'Период с '+DateToStr(StartOfTheMonth(cxDateEdit1.EditValue))+' по '+DateToStr(EndOfTheMonth(cxDateEdit1.EditValue));
                exWks.Range['B' + IntToStr(row_0)].Value := SP.FieldByName('num_vagon').AsString;
                exWks.Range['C' + IntToStr(row_0)].Value := SP.FieldByName('k1').AsString;
                exWks.Range['D' + IntToStr(row_0)].Value := SP.FieldByName('k2').AsString;
                exWks.Range['E' + IntToStr(row_0)].Value := SP.FieldByName('k3').AsString;
                exWks.Range['F' + IntToStr(row_0)].Value := SP.FieldByName('k4').AsString;
                exWks.Range['G' + IntToStr(row_0)].Value := SP.FieldByName('k5').AsString;
                exWks.Range['H' + IntToStr(row_0)].Value := SP.FieldByName('k6').AsString;
                exWks.Range['I' + IntToStr(row_0)].Value := SP.FieldByName('k7').AsString;
                exWks.Range['J' + IntToStr(row_0)].Value := SP.FieldByName('k8').AsString;
                exWks.Range['K' + IntToStr(row_0)].Value := SP.FieldByName('k9').AsString;
                exWks.Range['L' + IntToStr(row_0)].Value := SP.FieldByName('k10').AsString;
                exWks.Range['M' + IntToStr(row_0)].Value := SP.FieldByName('k11').AsString;
                exWks.Range['N' + IntToStr(row_0)].Value := SP.FieldByName('k12').AsString;
                exWks.Range['O' + IntToStr(row_0)].Value := SP.FieldByName('k13').AsString;
                exWks.Range['P' + IntToStr(row_0)].Value := SP.FieldByName('k14').AsString;
                exWks.Range['Q' + IntToStr(row_0)].Value := SP.FieldByName('k15').AsString;
                exWks.Range['R' + IntToStr(row_0)].Value := SP.FieldByName('k16').AsString;
                exWks.Range['S' + IntToStr(row_0)].Value := SP.FieldByName('k17').AsString;
                exWks.Range['T' + IntToStr(row_0)].Value := SP.FieldByName('k18').AsString;
                exWks.Range['U' + IntToStr(row_0)].Value := SP.FieldByName('k19').AsString;
                exWks.Range['V' + IntToStr(row_0)].Value := SP.FieldByName('k20').AsString;
                exWks.Range['W' + IntToStr(row_0)].Value := SP.FieldByName('k21').AsString;
                exWks.Range['X' + IntToStr(row_0)].Value := SP.FieldByName('k22').AsString;
                exWks.Range['Y' + IntToStr(row_0)].Value := SP.FieldByName('k23').AsString;
                exWks.Range['Z' + IntToStr(row_0)].Value := SP.FieldByName('k24').AsString;
                exWks.Range['AA' + IntToStr(row_0)].Value := SP.FieldByName('k25').AsString;
                exWks.Range['AB' + IntToStr(row_0)].Value := SP.FieldByName('k26').AsString;
                exWks.Range['AC' + IntToStr(row_0)].Value := SP.FieldByName('k27').AsString;
                exWks.Range['AD' + IntToStr(row_0)].Value := SP.FieldByName('k28').AsString;
                if SP.FieldByName('k29').Value <> -9 then
                  exWks.Range['AE' + IntToStr(row_0)].Value := SP.FieldByName('k29').AsString;
                if SP.FieldByName('k30').Value <> -9 then
                  exWks.Range['AF' + IntToStr(row_0)].Value := SP.FieldByName('k30').AsString;
                if SP.FieldByName('k31').Value <> -9 then
                  exWks.Range['AG' + IntToStr(row_0)].Value := SP.FieldByName('k31').AsString;
          end;

      167 : begin
            if (num_vagon <> SP.FieldByName('num_vagon').AsString) then begin
              if (num_vagon <> '') and (start_num_vagon < row_0) then begin
                exApp.DisplayAlerts := False;
                exWks.Range[exWks.cells[start_num_vagon, 1], exWks.cells[row_0 - 1, 1]].Merge;
                exWks.Range[exWks.cells[start_num_vagon, 14], exWks.cells[row_0 - 1, 14]].Merge;
                exWks.Range[exWks.cells[start_num_vagon, 15], exWks.cells[row_0 - 1, 15]].Merge;
                exWks.Range[exWks.cells[start_num_vagon, 16], exWks.cells[row_0 - 1, 16]].Merge;
                exWks.cells[start_num_vagon, 1].VerticalAlignment := -4108;
                exWks.cells[start_num_vagon, 14].VerticalAlignment := -4108;
                exWks.cells[start_num_vagon, 15].VerticalAlignment := -4108;
                exWks.cells[start_num_vagon, 16].VerticalAlignment := -4108;
                exApp.DisplayAlerts := True;
                exWks.Range['A'+IntToStr(row_0-1)+':P'+ IntToStr(row_0-1)].Borders[9].Weight := -4138;
              end;
              num_vagon := SP.FieldByName('num_vagon').AsString;
              start_num_vagon := row_0;
              k := k + 1;
            end;
            exWks.Range['A' + IntToStr(row_0)].Value := k;
            exWks.Range['B' + IntToStr(row_0)].Value := SP.FieldByName('num_vagon').AsString;
            if not SP.FieldByName('node_begin_name').IsNull then
              exWks.Range['C' + IntToStr(row_0)].Value := SP.FieldByName('node_begin_name').AsString;
            if not SP.FieldByName('node_end_name').IsNull then
              exWks.Range['D' + IntToStr(row_0)].Value := SP.FieldByName('node_end_name').AsString;
            if not SP.FieldByName('kargoETSNG_name').IsNull then
              exWks.Range['E' + IntToStr(row_0)].Value := SP.FieldByName('kargoETSNG_name').AsString;
            if not SP.FieldByName('fact_weight').IsNull then
              exWks.Range['F' + IntToStr(row_0)].Value := SP.FieldByName('fact_weight').AsFloat;
            exWks.Range['G' + IntToStr(row_0)].Value := SP.FieldByName('date_otpr').Value;
            if not SP.FieldByName('date_pr').IsNull then
              exWks.Range['H' + IntToStr(row_0)].Value := SP.FieldByName('date_pr').Value;
            if not SP.FieldByName('arenda_date_begin').IsNull then
              exWks.Range['I' + IntToStr(row_0)].Value := SP.FieldByName('arenda_date_begin').Value;
            if not SP.FieldByName('arenda_date_end').IsNull then
              exWks.Range['J' + IntToStr(row_0)].Value := SP.FieldByName('arenda_date_end').Value;
            if not SP.FieldByName('fact_date_begin').IsNull then
              exWks.Range['K' + IntToStr(row_0)].Value := SP.FieldByName('fact_date_begin').Value;
            if not SP.FieldByName('fact_date_end').IsNull then
              exWks.Range['L' + IntToStr(row_0)].Value := SP.FieldByName('fact_date_end').Value;
            if not SP.FieldByName('days_fact').IsNull then
              exWks.Range['M' + IntToStr(row_0)].Value := SP.FieldByName('days_fact').AsString;
            if not SP.FieldByName('sum_days_arenda').IsNull then
              exWks.Range['N' + IntToStr(row_0)].Value := SP.FieldByName('sum_days_arenda').AsString;
            if not SP.FieldByName('sum_days_fact').IsNull then
              exWks.Range['O' + IntToStr(row_0)].Value := SP.FieldByName('sum_days_fact').AsString;
             if (not SP.FieldByName('sum_days_fact').IsNull) AND (not SP.FieldByName('sum_days_arenda').IsNull) then
              exWks.Range['P' + IntToStr(row_0)].Value := SP.FieldByName('sum_days_arenda').AsInteger - SP.FieldByName('sum_days_fact').AsInteger;

            end;

      196 : begin
              exWks.Range['B' + IntToStr(row_0)].Value := SP.FieldByName('num_vagon').Value;
              exWks.Range['C' + IntToStr(row_0)].Value := SP.FieldByName('node_end_name').AsString;
              exWks.Range['D' + IntToStr(row_0)].Value := SP.FieldByName('road_begin_name').AsString;
              exWks.Range['E' + IntToStr(row_0)].Value := SP.FieldByName('road_end_name').AsString;
              exWks.Range['F' + IntToStr(row_0)].Value := SP.FieldByName('index_train').AsString;
              exWks.Range['G' + IntToStr(row_0)].Value := SP.FieldByName('num_train').AsString;
              exWks.Range['H' + IntToStr(row_0)].Value := SP.FieldByName('doc_number').AsString;
              exWks.Range['I' + IntToStr(row_0)].Value := SP.FieldByName('kargoETSNG_name').AsString;
              exWks.Range['J' + IntToStr(row_0)].Value := SP.FieldByName('fact_weight').AsFloat;
              exWks.Range['K' + IntToStr(row_0)].Value := SP.FieldByName('node_begin_name').AsString;
              exWks.Range['L' + IntToStr(row_0)].Value := SP.FieldByName('date_otpr').Value;
              exWks.Range['M' + IntToStr(row_0)].Value := SP.FieldByName('date_arrival').Value;
              exWks.Range['N' + IntToStr(row_0)].Value := SP.FieldByName('day_trip').AsString;
              exWks.Range['O' + IntToStr(row_0)].Value := SP.FieldByName('road_operation_name').AsString;
              exWks.Range['P' + IntToStr(row_0)].Value := SP.FieldByName('date_in').Value;
              exWks.Range['Q' + IntToStr(row_0)].Value := SP.FieldByName('date_out').Value;
              exWks.Range['R' + IntToStr(row_0)].Value := SP.FieldByName('day_road').AsString;
              exWks.Range['S' + IntToStr(row_0)].Value := SP.FieldByName('date_operation').Value;
              exWks.Range['T' + IntToStr(row_0)].Value := SP.FieldByName('node_operation_name').AsString;
              exWks.Range['U' + IntToStr(row_0)].Value := SP.FieldByName('stay_count').AsString;
            end;

          197 : begin
                exWks.Range['B' + IntToStr(row_0)].Value := SP.FieldByName('num_vagon').Value;
                exWks.Range['C' + IntToStr(row_0)].Value := SP.FieldByName('node_end_name').AsString;
                exWks.Range['D' + IntToStr(row_0)].Value := SP.FieldByName('kargoETSNG_name').AsString;
                exWks.Range['E' + IntToStr(row_0)].Value := SP.FieldByName('fact_weight').AsFloat;
                exWks.Range['F' + IntToStr(row_0)].Value := SP.FieldByName('node_begin_name').AsString;
                exWks.Range['G' + IntToStr(row_0)].Value := SP.FieldByName('date_from_to').Value;
                exWks.Range['I' + IntToStr(row_0)].Value := SP.FieldByName('road_begin_name').AsString;
                exWks.Range['J' + IntToStr(row_0)].Value := SP.FieldByName('road_end_name').AsString;
                exWks.Range['H' + IntToStr(row_0)].Value := SP.FieldByName('invNumber').AsString;
                exWks.Range['K' + IntToStr(row_0)].Value := SP.FieldByName('invDateExpire').Value;
                exWks.Range['L' + IntToStr(row_0)].Value := SP.FieldByName('datpr').AsString;
                exWks.Range['M' + IntToStr(row_0)].Value := SP.FieldByName('day_plan').AsString;
                exWks.Range['N' + IntToStr(row_0)].Value := SP.FieldByName('day_fact').AsString;
                exWks.Range['O' + IntToStr(row_0)].Value := SP.FieldByName('days_later').AsString;
                exWks.Range['P' + IntToStr(row_0)].Value := SP.FieldByName('days_earlier').AsString;
                exWks.Range['Q' + IntToStr(row_0)].Value := SP.FieldByName('days_in_time').AsString;

                exWks.Range['R' + IntToStr(row_0)].Value := SP.FieldByName('GR_P').AsString;
                exWks.Range['S' + IntToStr(row_0)].Value := SP.FieldByName('day_repare').AsString;
                exWks.Range['U' + IntToStr(row_0)].Value := SP.FieldByName('transport_pay_no_nds').AsString;
                exWks.Range['X' + IntToStr(row_0)].Value := SP.FieldByName('invPayerName').AsString;
                end;

          205 : begin
                exWks.Range['B' + IntToStr(row_0)].Value := SP.FieldByName('num_vagon').Value;
                exWks.Range['C' + IntToStr(row_0)].Value := SP.FieldByName('client_sum').AsString;
                exWks.Range['D' + IntToStr(row_0)].Value := SP.FieldByName('agent_sum').AsString;
                exWks.Range['E' + IntToStr(row_0)].Value := SP.FieldByName('profit_sum').AsString;
                exWks.Range['F' + IntToStr(row_0)].Value := SP.FieldByName('firm_customer_name').AsString;
                end;
         208 : begin
                exWks.Range['B' + IntToStr(row_0)].Value := SP.FieldByName('num_vagon').Value;
                exWks.Range['C' + IntToStr(row_0)].Value := SP.FieldByName('date_breakage').Value;
                exWks.Range['D' + IntToStr(row_0)].Value := SP.FieldByName('date_repair_end').Value;
                exWks.Range['E' + IntToStr(row_0)].Value := SP.FieldByName('stay_count').AsString;
                exWks.Range['F' + IntToStr(row_0)].Value := SP.FieldByName('depo_name').AsString;
                exWks.Range['G' + IntToStr(row_0)].Value := SP.FieldByName('road_name').AsString;
                exWks.Range['H' + IntToStr(row_0)].Value := SP.FieldByName('firm_name').AsString;
                exWks.Range['I' + IntToStr(row_0)].Value := SP.FieldByName('arenda_firm_name').AsString;
                exWks.Range['J' + IntToStr(row_0)].Value := SP.FieldByName('breakage_cod').AsString;
                exWks.Range['K' + IntToStr(row_0)].Value := SP.FieldByName('breakage_name').AsString;
               end;
         288 : begin
                exWks.Range['B' + IntToStr(row_0)].Value := SP.FieldByName('num_vagon').Value;
                exWks.Range['C' + IntToStr(row_0)].Value := SP.FieldByName('date_breakage').Value;
                exWks.Range['D' + IntToStr(row_0)].Value := SP.FieldByName('date_repair_end').Value;
                exWks.Range['E' + IntToStr(row_0)].Value := SP.FieldByName('stay_count').AsString;
                exWks.Range['F' + IntToStr(row_0)].Value := SP.FieldByName('depo_name').AsString;
                exWks.Range['G' + IntToStr(row_0)].Value := SP.FieldByName('road_name').AsString;
                exWks.Range['H' + IntToStr(row_0)].Value := SP.FieldByName('firm_name').AsString;
                exWks.Range['I' + IntToStr(row_0)].Value := SP.FieldByName('arenda_firm_name').AsString;
                exWks.Range['J' + IntToStr(row_0)].Value := SP.FieldByName('breakage_cod').AsString;
                exWks.Range['K' + IntToStr(row_0)].Value := SP.FieldByName('breakage_name').AsString;
               end;
         220 : begin
                exWks.Range['B' + IntToStr(row_0)].Value := SP.FieldByName('num_vagon').Value;
                exWks.Range['C' + IntToStr(row_0)].Value := SP.FieldByName('date_otpr').Value;
                exWks.Range['D' + IntToStr(row_0)].Value := SP.FieldByName('date_arrival').Value;
                exWks.Range['E' + IntToStr(row_0)].Value := SP.FieldByName('node_begin_name').AsString;
                exWks.Range['F' + IntToStr(row_0)].Value := SP.FieldByName('node_end_name').AsString;
                exWks.Range['G' + IntToStr(row_0)].Value := SP.FieldByName('day_g').AsString;
                exWks.Range['H' + IntToStr(row_0)].Value := SP.FieldByName('day_p').AsString;
                exWks.Range['J' + IntToStr(row_0)].Value := SP.FieldByName('day_o').AsString;
                exWks.Range['K' + IntToStr(row_0)].Value := SP.FieldByName('pz_sum').AsString;
                exWks.Range['L' + IntToStr(row_0)].Value := SP.FieldByName('fz_sum').AsString;
                exWks.Range['N' + IntToStr(row_0)].Value := SP.FieldByName('d_sum').AsString;
                exWks.Range['O' + IntToStr(row_0)].Value := SP.FieldByName('r_sum').AsString;
                exWks.Range['T' + IntToStr(row_0)].Value := SP.FieldByName('date_and_o').Value;
              end;

         222 : begin
                exWks.Range['B' + IntToStr(row_0)].Value := SP.FieldByName('num_vagon').Value;
                exWks.Range['C' + IntToStr(row_0)].Value := SP.FieldByName('date_op').Value;
                exWks.Range['D' + IntToStr(row_0)].Value := SP.FieldByName('date_repair_end').Value;
                exWks.Range['E' + IntToStr(row_0)].Value := SP.FieldByName('day_count').AsString;
                exWks.Range['F' + IntToStr(row_0)].Value := SP.FieldByName('depo_name').AsString;
                exWks.Range['G' + IntToStr(row_0)].Value := SP.FieldByName('road_operation_name').AsString;
                exWks.Range['H' + IntToStr(row_0)].Value := SP.FieldByName('vagon_owner_name').AsString;
                exWks.Range['I' + IntToStr(row_0)].Value := SP.FieldByName('type_repair_name').AsString;
                //exWks.Range['J' + IntToStr(row_0)].Value := SP.FieldByName('').AsString;
                exWks.Range['K' + IntToStr(row_0)].Value := SP.FieldByName('month_rep').AsString;
                exWks.Range['L' + IntToStr(row_0)].Value := SP.FieldByName('node_operation_name').AsString;
              end;

         255: begin
                exWks.Range['B' + IntToStr(row_0)].Value := SP.FieldByName('num_vagon').Value;
                exWks.Range['C' + IntToStr(row_0)].Value := SP.FieldByName('date_query').Value;
                exWks.Range['D' + IntToStr(row_0)].Value := SP.FieldByName('Com6').AsString;
              end;

         401: begin
                exWks.Range['B' + IntToStr(row_0)].Value := SP.FieldByName('num_vagon').Value;
                exWks.Range['C' + IntToStr(row_0)].Value := SP.FieldByName('date_query').Value;
                exWks.Range['D' + IntToStr(row_0)].Value := SP.FieldByName('Com6').AsString;
              end;

        405 : begin
                exWks.Range['B' + IntToStr(row_0)].Value := SP.FieldByName('firm_customer_name').AsString;
                exWks.Range['C' + IntToStr(row_0)].Value := SP.FieldByName('type_park_name').AsString;
                exWks.Range['D' + IntToStr(row_0)].Value := SP.FieldByName('rod_vagon_name').AsString;
                exWks.Range['E' + IntToStr(row_0)].Value := SP.FieldByName('cnt').Value;
              end;

        406 : begin
                exWks.Range['B' + IntToStr(row_0)].Value := SP.FieldByName('firm_customer_name').AsString;
                exWks.Range['C' + IntToStr(row_0)].Value := SP.FieldByName('vagon_comment').AsString;
                exWks.Range['D' + IntToStr(row_0)].Value := SP.FieldByName('cnt').Value;
              end;

        271 : begin
                exWks.Range['B' + IntToStr(row_0)].Value := SP.FieldByName('num_vagon').Value;
                exWks.Range['C' + IntToStr(row_0)].Value := SP.FieldByName('node_begin_name').AsString;
                exWks.Range['D' + IntToStr(row_0)].Value := SP.FieldByName('node_end_name').AsString;
                exWks.Range['E' + IntToStr(row_0)].Value := SP.FieldByName('date_otpr').Value;
                exWks.Range['F' + IntToStr(row_0)].Value := SP.FieldByName('date_arrival').Value;
                exWks.Range['G' + IntToStr(row_0)].Value := SP.FieldByName('fact_weight').AsFloat;
                exWks.Range['H' + IntToStr(row_0)].Value := SP.FieldByName('state_name').AsString;
                exWks.Range['I' + IntToStr(row_0)].Value := SP.FieldByName('node_operation_name').AsString;
                exWks.Range['J' + IntToStr(row_0)].Value := SP.FieldByName('date_operation').Value;
                exWks.Range['K' + IntToStr(row_0)].Value := SP.FieldByName('doc_number').AsString;

                exWks.Range['L' + IntToStr(row_0)].Value := SP.FieldByName('num_vagon_r').Value;
                exWks.Range['M' + IntToStr(row_0)].Value := SP.FieldByName('node_begin_name_r').AsString;
                exWks.Range['N' + IntToStr(row_0)].Value := SP.FieldByName('node_end_name_r').AsString;
                exWks.Range['O' + IntToStr(row_0)].Value := SP.FieldByName('date_otpr_r').Value;
                exWks.Range['P' + IntToStr(row_0)].Value := SP.FieldByName('date_arrival_r').Value;
                exWks.Range['Q' + IntToStr(row_0)].Value := SP.FieldByName('fact_weight_r').AsFloat;
                exWks.Range['R' + IntToStr(row_0)].Value := SP.FieldByName('state_name_r').AsString;
                exWks.Range['S' + IntToStr(row_0)].Value := SP.FieldByName('node_operation_name_r').AsString;
                exWks.Range['T' + IntToStr(row_0)].Value := SP.FieldByName('date_operation_r').Value;
                exWks.Range['U' + IntToStr(row_0)].Value := SP.FieldByName('doc_number_r').AsString;
                exWks.Range['V' + IntToStr(row_0)].Value := SP.FieldByName('days_count').AsString;
              end;

       2711 : begin
                exWks.Range['B' + IntToStr(row_0)].Value := SP.FieldByName('num_vagon').Value;
                exWks.Range['C' + IntToStr(row_0)].Value := SP.FieldByName('node_begin_name').AsString;
                exWks.Range['D' + IntToStr(row_0)].Value := SP.FieldByName('node_end_name').AsString;
                exWks.Range['E' + IntToStr(row_0)].Value := SP.FieldByName('date_otpr').Value;
                exWks.Range['F' + IntToStr(row_0)].Value := SP.FieldByName('date_arrival').Value;
                exWks.Range['G' + IntToStr(row_0)].Value := SP.FieldByName('fact_weight').AsFloat;
                exWks.Range['H' + IntToStr(row_0)].Value := SP.FieldByName('state_name').AsString;
                exWks.Range['I' + IntToStr(row_0)].Value := SP.FieldByName('node_operation_name').AsString;
                exWks.Range['J' + IntToStr(row_0)].Value := SP.FieldByName('date_operation').Value;
                exWks.Range['K' + IntToStr(row_0)].Value := SP.FieldByName('doc_number').AsString;

                exWks.Range['L' + IntToStr(row_0)].Value := SP.FieldByName('num_vagon_r').Value;
                exWks.Range['M' + IntToStr(row_0)].Value := SP.FieldByName('node_begin_name_r').AsString;
                exWks.Range['N' + IntToStr(row_0)].Value := SP.FieldByName('node_end_name_r').AsString;
                exWks.Range['O' + IntToStr(row_0)].Value := SP.FieldByName('date_otpr_r').Value;
                exWks.Range['P' + IntToStr(row_0)].Value := SP.FieldByName('date_arrival_r').Value;
                exWks.Range['Q' + IntToStr(row_0)].Value := SP.FieldByName('fact_weight_r').AsFloat;
                exWks.Range['R' + IntToStr(row_0)].Value := SP.FieldByName('state_name_r').AsString;
                exWks.Range['S' + IntToStr(row_0)].Value := SP.FieldByName('node_operation_name_r').AsString;
                exWks.Range['T' + IntToStr(row_0)].Value := SP.FieldByName('date_operation_r').Value;
                exWks.Range['U' + IntToStr(row_0)].Value := SP.FieldByName('doc_number_r').AsString;
                exWks.Range['V' + IntToStr(row_0)].Value := SP.FieldByName('days_count').AsString;
              end;

        281 : begin
                if SP.FieldByName('cnt_free').Value > cxCurrencyEdit2.EditValue then
                 exWks.Range['B' + IntToStr(row_0)].Value := SP.FieldByName('cnt_free').Value - cxCurrencyEdit2.EditValue;

                exWks.Range['C' + IntToStr(row_0)].Value := SP.FieldByName('date_arrival_u').Value;
                exWks.Range['D' + IntToStr(row_0)].Value := SP.FieldByName('date_otpr_next_u').Value;
                exWks.Range['E' + IntToStr(row_0)].Value := SP.FieldByName('date_otpr_next').Value;
                exWks.Range['F' + IntToStr(row_0)].Value := SP.FieldByName('num_vagon').AsString;
                exWks.Range['G' + IntToStr(row_0)].Value := SP.FieldByName('date_otpr').Value;
                exWks.Range['H' + IntToStr(row_0)].Value := SP.FieldByName('date_arrival').Value;
                exWks.Range['I' + IntToStr(row_0)].Value := SP.FieldByName('node_begin_cod').AsString;
                exWks.Range['J' + IntToStr(row_0)].Value := SP.FieldByName('node_begin_name').AsString;
                exWks.Range['K' + IntToStr(row_0)].Value := SP.FieldByName('node_end_cod').AsString;
                exWks.Range['L' + IntToStr(row_0)].Value := SP.FieldByName('node_end_name').AsString;
                exWks.Range['M' + IntToStr(row_0)].Value := SP.FieldByName('kargoETSNG_cod').AsString;
                exWks.Range['N' + IntToStr(row_0)].Value := SP.FieldByName('kargoETSNG_name').AsString;
                exWks.Range['O' + IntToStr(row_0)].Value := SP.FieldByName('fact_weight').AsFloat;
                exWks.Range['P' + IntToStr(row_0)].Value := SP.FieldByName('firm_name').AsString;
                exWks.Range['Q' + IntToStr(row_0)].Value := SP.FieldByName('rod_vagon_name').AsString;
                exWks.Range['R' + IntToStr(row_0)].Value := SP.FieldByName('poluchgr').AsString;
              end;

        292 : begin
                exWks.Range['B' + IntToStr(row_0)].Value := SP.FieldByName('date_otpr').Value;
                exWks.Range['C' + IntToStr(row_0)].Value := SP.FieldByName('num_vagon').AsString;
                exWks.Range['D' + IntToStr(row_0)].Value := SP.FieldByName('comment6_name').AsString;
                exWks.Range['E' + IntToStr(row_0)].Value := SP.FieldByName('node_operation_name').AsString;
                exWks.Range['F' + IntToStr(row_0)].Value := SP.FieldByName('node_begin_name').AsString;
                exWks.Range['G' + IntToStr(row_0)].Value := SP.FieldByName('node_end_name').AsString;
                exWks.Range['H' + IntToStr(row_0)].Value := SP.FieldByName('rod_vagon_name').AsString;
                exWks.Range['I' + IntToStr(row_0)].Value := SP.FieldByName('type_park_name').AsString;
                exWks.Range['J' + IntToStr(row_0)].Value := SP.FieldByName('comment1_name').AsString;
                exWks.Range['K' + IntToStr(row_0)].Value := SP.FieldByName('last_kargoETSNG_name').AsString;
                exWks.Range['L' + IntToStr(row_0)].Value := SP.FieldByName('fact_weight').AsString;
                exWks.Range['M' + IntToStr(row_0)].Value := SP.FieldByName('grpol_name').AsString;
                exWks.Range['N' + IntToStr(row_0)].Value := SP.FieldByName('grpol_okpo').AsString;
                exWks.Range['O' + IntToStr(row_0)].Value := SP.FieldByName('grpol_name').AsString;
              end;

          436 : begin
               exWks.Range['B' + IntToStr(row_0)].Value := SP.FieldByName('num_vagon').Value;
               exWks.Range['C' + IntToStr(row_0)].Value := SP.FieldByName('node_end_name').AsString;
               exWks.Range['D' + IntToStr(row_0)].Value := SP.FieldByName('date_operation').AsString;
               exWks.Range['E' + IntToStr(row_0)].Value := SP.FieldByName('time_operation').AsString;
               exWks.Range['F' + IntToStr(row_0)].Value := SP.FieldByName('node_operation_name').AsString;
               exWks.Range['G' + IntToStr(row_0)].Value := SP.FieldByName('road_begin_name').AsString;
               exWks.Range['H' + IntToStr(row_0)].Value := SP.FieldByName('road_end_name').AsString;
               exWks.Range['I' + IntToStr(row_0)].Value := SP.FieldByName('index_train').AsString;
               exWks.Range['J' + IntToStr(row_0)].Value := SP.FieldByName('num_train').AsString;
               exWks.Range['K' + IntToStr(row_0)].Value := SP.FieldByName('kargoETSNG_name').AsString;
               exWks.Range['L' + IntToStr(row_0)].Value := SP.FieldByName('fact_weight').AsString;
               exWks.Range['M' + IntToStr(row_0)].Value := SP.FieldByName('poluchgr').AsString;
               exWks.Range['N' + IntToStr(row_0)].Value := SP.FieldByName('node_begin_name').AsString;
               exWks.Range['O' + IntToStr(row_0)].Value := SP.FieldByName('date_otpr').AsString;

               exWks.Range['P' + IntToStr(row_0)].Value := SP.FieldByName('time_otpr').AsString;
               exWks.Range['Q' + IntToStr(row_0)].Value := SP.FieldByName('doc_number').AsString;
               exWks.Range['R' + IntToStr(row_0)].Value := SP.FieldByName('distance1').AsString;
               //exWks.Range['S' + IntToStr(row_0)].Value := SP.FieldByName('').AsString;
               //exWks.Range['T' + IntToStr(row_0)].Value := SP.FieldByName('').AsString;
               exWks.Range['U' + IntToStr(row_0)].Value := SP.FieldByName('cod_operation_cod').AsString;
               exWks.Range['V' + IntToStr(row_0)].Value := SP.FieldByName('cod_operation_vagon_name_full').AsString;
               exWks.Range['W' + IntToStr(row_0)].Value := SP.FieldByName('cod_operation_train_name_full').AsString;
               //exWks.Range['X' + IntToStr(row_0)].Value := SP.FieldByName('').AsString;
               exWks.Range['Y' + IntToStr(row_0)].Value := SP.FieldByName('milage_rest').AsString;
               exWks.Range['Z' + IntToStr(row_0)].Value := SP.FieldByName('next_date_repair').AsString;
               exWks.Range['AA' + IntToStr(row_0)].Value := SP.FieldByName('comment6').AsString;
               exWks.Range['AB' + IntToStr(row_0)].Value := SP.FieldByName('comment1').AsString;
               exWks.Range['AC' + IntToStr(row_0)].Value := SP.FieldByName('firm_name').AsString;
               //exWks.Range['AD' + IntToStr(row_0)].Value := SP.FieldByName('').AsString;
               exWks.Range['AE' + IntToStr(row_0)].Value := SP.FieldByName('model_name').AsString;
               exWks.Range['AF' + IntToStr(row_0)].Value := SP.FieldByName('date_build').AsString;
               exWks.Range['AG' + IntToStr(row_0)].Value := SP.FieldByName('factory_name').AsString;
               exWks.Range['AH' + IntToStr(row_0)].Value := SP.FieldByName('factory_cod').AsString;
               exWks.Range['AI' + IntToStr(row_0)].Value := SP.FieldByName('date_last_depo_place').AsString;
               exWks.Range['AJ' + IntToStr(row_0)].Value := SP.FieldByName('last_depo_place_name').AsString;
               exWks.Range['AK' + IntToStr(row_0)].Value := SP.FieldByName('last_depo_place').AsString;
               exWks.Range['AL' + IntToStr(row_0)].Value := SP.FieldByName('date_cap_place').AsString;
               exWks.Range['AM' + IntToStr(row_0)].Value := SP.FieldByName('last_cap_place_name').AsString;
               exWks.Range['AN' + IntToStr(row_0)].Value := SP.FieldByName('last_cap_place').AsString;
               exWks.Range['AO' + IntToStr(row_0)].Value := SP.FieldByName('copper_calibration').AsString;
               exWks.Range['AP' + IntToStr(row_0)].Value := SP.FieldByName('capacity').AsString;
               exWks.Range['AQ' + IntToStr(row_0)].Value := SP.FieldByName('date_query').AsString;
          end;

          310 : begin
                exWks.Range['B' + IntToStr(row_0)].Value := SP.FieldByName('num_vagon').AsString;
                exWks.Range['C' + IntToStr(row_0)].Value := SP.FieldByName('serial_num').AsString;
                exWks.Range['D' + IntToStr(row_0)].Value := SP.FieldByName('vagon_load').AsString;
               // exWks.Range['E' + IntToStr(row_0)].Value := SP.FieldByName('').AsString;
//                exWks.Range['F' + IntToStr(row_0)].Value := SP.FieldByName('').AsString;
                exWks.Range['G' + IntToStr(row_0)].Value := SP.FieldByName('vagon_tara').AsString;
                exWks.Range['H' + IntToStr(row_0)].Value := SP.FieldByName('date_build').Value;
                exWks.Range['I' + IntToStr(row_0)].Value := SP.FieldByName('factory_name').AsString;
                exWks.Range['J' + IntToStr(row_0)].Value := SP.FieldByName('factory').AsString;

                exWks.Range['K' + IntToStr(row_0)].Value := SP.FieldByName('date_cap_place').Value;
                exWks.Range['L' + IntToStr(row_0)].Value := SP.FieldByName('last_cap_place_name').AsString;
                exWks.Range['M' + IntToStr(row_0)].Value := SP.FieldByName('last_cap_place').AsString;
                //exWks.Range['N' + IntToStr(row_0)].Value := SP.FieldByName('').AsString;
                exWks.Range['Q' + IntToStr(row_0)].Value := SP.FieldByName('date_last_depo_place').Value;
                exWks.Range['R' + IntToStr(row_0)].Value := SP.FieldByName('last_depo_place_name').AsString;
                exWks.Range['S' + IntToStr(row_0)].Value := SP.FieldByName('last_depo_place').AsString;
                //exWks.Range['S' + IntToStr(row_0)].Value := SP.FieldByName('').AsString;
                 exWks.Range['W' + IntToStr(row_0)].Value := SP.FieldByName('next_date_repair').Value;

                exWks.Range['X' + IntToStr(row_0)].Value := SP.FieldByName('date_otpr1').Value;
                exWks.Range['Y' + IntToStr(row_0)].Value := SP.FieldByName('kargoETSNG_name1').AsString;
                exWks.Range['Z' + IntToStr(row_0)].Value := SP.FieldByName('node_begin_name1').AsString;
                exWks.Range['AA' + IntToStr(row_0)].Value := SP.FieldByName('node_end_name1').AsString;

                exWks.Range['AB' + IntToStr(row_0)].Value := SP.FieldByName('date_otpr2').AsString;
                exWks.Range['AC' + IntToStr(row_0)].Value := SP.FieldByName('kargoETSNG_name2').AsString;
                exWks.Range['AD' + IntToStr(row_0)].Value := SP.FieldByName('node_begin_name2').AsString;
                exWks.Range['AE' + IntToStr(row_0)].Value := SP.FieldByName('node_end_name3').AsString;

                exWks.Range['AF' + IntToStr(row_0)].Value := SP.FieldByName('date_otpr3').Value;
                exWks.Range['AG' + IntToStr(row_0)].Value := SP.FieldByName('kargoETSNG_name3').AsString;
                exWks.Range['AH' + IntToStr(row_0)].Value := SP.FieldByName('node_begin_name3').AsString;
                exWks.Range['AI' + IntToStr(row_0)].Value := SP.FieldByName('node_end_name3').AsString;
          end;

         3101 : begin
                  exWks.Range['B' + IntToStr(row_0)].Value := SP.FieldByName('num_vagon').AsString;
                  exWks.Range['C' + IntToStr(row_0)].Value := SP.FieldByName('date_otpr1').Value;
                  exWks.Range['D' + IntToStr(row_0)].Value := SP.FieldByName('kargoETSNG_name1').AsString;
                  exWks.Range['E' + IntToStr(row_0)].Value := SP.FieldByName('node_begin_name1').AsString;
                  exWks.Range['F' + IntToStr(row_0)].Value := SP.FieldByName('kargoETSNG_name2').AsString;
                  exWks.Range['G' + IntToStr(row_0)].Value := SP.FieldByName('node_begin_name2').AsString;
                  exWks.Range['H' + IntToStr(row_0)].Value := SP.FieldByName('kargoETSNG_name3').AsString;
                  exWks.Range['I' + IntToStr(row_0)].Value := SP.FieldByName('node_begin_name3').AsString;
                end;

          366 : begin
                  exWks.Range['B' + IntToStr(row_0)].Value := SP.RecNo;
                  exWks.Range['C' + IntToStr(row_0)].Value := SP.FieldByName('num_vagon').AsString;
                  exWks.Range['D' + IntToStr(row_0)].Value := SP.FieldByName('doc_number').AsString;
                  exWks.Range['E' + IntToStr(row_0)].Value := SP.FieldByName('node_begin_name').AsString;
                  exWks.Range['F' + IntToStr(row_0)].Value := SP.FieldByName('node_end_name').AsString;
                  exWks.Range['G' + IntToStr(row_0)].Value := SP.FieldByName('date_arrival').Value;
                  exWks.Range['H' + IntToStr(row_0)].Value := SP.FieldByName('date_otpr1').Value;
                  exWks.Range['I' + IntToStr(row_0)].Value := SP.FieldByName('doc_number1').AsString;
                  exWks.Range['K' + IntToStr(row_0)].Value := cxCurrencyEdit2.EditValue;
                  exWks.Range['M' + IntToStr(row_0)].Value := cxCurrencyEdit1.EditValue;
                end;

          367 : begin
                  exWks.Range['B' + IntToStr(row_0)].Value := SP.RecNo;
                  exWks.Range['C' + IntToStr(row_0)].Value := SP.FieldByName('num_vagon').AsString;
                  exWks.Range['D' + IntToStr(row_0)].Value := SP.FieldByName('doc_number').AsString;
                  exWks.Range['E' + IntToStr(row_0)].Value := SP.FieldByName('node_begin_name').AsString;
                  exWks.Range['F' + IntToStr(row_0)].Value := SP.FieldByName('node_end_name').AsString;
                  exWks.Range['G' + IntToStr(row_0)].Value := SP.FieldByName('date_arrival1').Value;
                  exWks.Range['H' + IntToStr(row_0)].Value := SP.FieldByName('date_otpr').Value;
                  exWks.Range['J' + IntToStr(row_0)].Value := cxCurrencyEdit2.EditValue;
                  exWks.Range['L' + IntToStr(row_0)].Value := cxCurrencyEdit1.EditValue;
                end;

          321 : begin

                //Текущий
                if exWks.Range['AS' + IntToStr(row_0-1)].Value <> SP.FieldByName('fact_track_trip_id').Value then begin
                  exWks.Range['B' + IntToStr(row_0)].Value := SP.FieldByName('doc_number').AsString;
                  exWks.Range['C' + IntToStr(row_0)].Value := SP.FieldByName('poluchgr').AsString;
                  exWks.Range['D' + IntToStr(row_0)].Value := SP.FieldByName('num_vagon').Value;
                  exWks.Range['E' + IntToStr(row_0)].Value := SP.FieldByName('firm_name').AsString;
                  exWks.Range['F' + IntToStr(row_0)].Value := SP.FieldByName('Com6').AsString;
                  exWks.Range['G' + IntToStr(row_0)].Value := SP.FieldByName('type_park_name').AsString;

                  exWks.Range['H' + IntToStr(row_0)].Value := SP.FieldByName('date_otpr').Value;
                  exWks.Range['I' + IntToStr(row_0)].Value := SP.FieldByName('date_arrival').Value;
                  //exWks.Range['J' + IntToStr(row_0)].Value := SP.FieldByName('').AsString;
                  exWks.Range['K' + IntToStr(row_0)].Value := SP.FieldByName('node_begin_name').AsString;
                  exWks.Range['L' + IntToStr(row_0)].Value := SP.FieldByName('node_end_name').AsString;
                  exWks.Range['M' + IntToStr(row_0)].Value := SP.FieldByName('kargoETSNG_name').AsString;
                  exWks.Range['N' + IntToStr(row_0)].Value := SP.FieldByName('fact_weight').AsFloat;
                end;

                //Предыдущий 1
                if exWks.Range['AT' + IntToStr(row_0-1)].Value <> SP.FieldByName('fact_track_trip_idl1').Value then begin
                  exWks.Range['O' + IntToStr(row_0)].Value := SP.FieldByName('doc_number_l1').AsString;
                  exWks.Range['P' + IntToStr(row_0)].Value := SP.FieldByName('poluchgr_l1').AsString;
                  exWks.Range['Q' + IntToStr(row_0)].Value := SP.FieldByName('num_vagon_l1').Value;
                  exWks.Range['R' + IntToStr(row_0)].Value := SP.FieldByName('date_otpr_l1').Value;
                  exWks.Range['S' + IntToStr(row_0)].Value := SP.FieldByName('date_arrival_l1').Value;
                  //exWks.Range['T' + IntToStr(row_0)].Value := SP.FieldByName('node_end_name_l').AsString;
                  exWks.Range['U' + IntToStr(row_0)].Value := SP.FieldByName('node_begin_name_l1').AsString;
                  exWks.Range['V' + IntToStr(row_0)].Value := SP.FieldByName('node_end_name_l1').AsString;
                  exWks.Range['W' + IntToStr(row_0)].Value := SP.FieldByName('kargoETSNG_name_l1').AsString;
                  exWks.Range['X' + IntToStr(row_0)].Value := SP.FieldByName('fact_weight_l1').AsFloat;
                end;

                //Предыдущий 2
                if exWks.Range['AU' + IntToStr(row_0-1)].Value <> SP.FieldByName('fact_track_trip_idl2').Value then begin
                  exWks.Range['Y' + IntToStr(row_0)].Value := SP.FieldByName('doc_number_l2').AsString;
                  exWks.Range['Z' + IntToStr(row_0)].Value := SP.FieldByName('poluchgr_l2').AsString;
                  exWks.Range['AA' + IntToStr(row_0)].Value := SP.FieldByName('num_vagon_l2').Value;
                  exWks.Range['AB' + IntToStr(row_0)].Value := SP.FieldByName('date_otpr_l2').Value;
                  exWks.Range['AC' + IntToStr(row_0)].Value := SP.FieldByName('date_arrival_l2').Value;
                  //exWks.Range['AD' + IntToStr(row_0)].Value := SP.FieldByName('').AsString;
                  exWks.Range['AE' + IntToStr(row_0)].Value := SP.FieldByName('node_begin_name_l2').AsString;
                  exWks.Range['AF' + IntToStr(row_0)].Value := SP.FieldByName('node_end_name_l2').AsString;
                  exWks.Range['AG' + IntToStr(row_0)].Value := SP.FieldByName('kargoETSNG_name_l2').AsString;
                  exWks.Range['AH' + IntToStr(row_0)].Value := SP.FieldByName('fact_weight_l2').AsFloat;
                end;

                //Предыдущий 3
                exWks.Range['AI' + IntToStr(row_0)].Value := SP.FieldByName('doc_number_l3').AsString;
                exWks.Range['AJ' + IntToStr(row_0)].Value := SP.FieldByName('poluchgr_l3').AsString;
                exWks.Range['AK' + IntToStr(row_0)].Value := SP.FieldByName('num_vagon_l3').Value;
                exWks.Range['AL' + IntToStr(row_0)].Value := SP.FieldByName('date_otpr_l3').Value;
                exWks.Range['AM' + IntToStr(row_0)].Value := SP.FieldByName('date_arrival_l3').Value;
                //exWks.Range['AN' + IntToStr(row_0)].Value := SP.FieldByName('node_end_name_r').AsString;
                exWks.Range['AO' + IntToStr(row_0)].Value := SP.FieldByName('node_begin_name_l3').AsString;
                exWks.Range['AP' + IntToStr(row_0)].Value := SP.FieldByName('node_end_name_l3').AsString;
                exWks.Range['AQ' + IntToStr(row_0)].Value := SP.FieldByName('kargoETSNG_name_l3').AsString;
                exWks.Range['AR' + IntToStr(row_0)].Value := SP.FieldByName('fact_weight_l3').AsFloat;

                exWks.Range['AS' + IntToStr(row_0)].Value := SP.FieldByName('fact_track_trip_id').Value;
                exWks.Range['AT' + IntToStr(row_0)].Value := SP.FieldByName('fact_track_trip_idl1').Value;
                exWks.Range['AU' + IntToStr(row_0)].Value := SP.FieldByName('fact_track_trip_idl2').Value;
                exWks.Range['AV' + IntToStr(row_0)].Value := SP.FieldByName('fact_track_trip_idl3').Value;
              end;

              372 : begin
                exWks.Range['B' + IntToStr(row_0)].Value := SP.FieldByName('num_vagon').Value;
                exWks.Range['C' + IntToStr(row_0)].Value := SP.FieldByName('Com6').AsString;
                exWks.Range['D' + IntToStr(row_0)].Value := SP.FieldByName('vagon_owner_name').AsString;
                exWks.Range['E' + IntToStr(row_0)].Value := SP.FieldByName('date_otpr').AsString;
                exWks.Range['F' + IntToStr(row_0)].Value := SP.FieldByName('node_begin_name').AsString;
                exWks.Range['G' + IntToStr(row_0)].Value := SP.FieldByName('node_end_name').AsString;
                exWks.Range['H' + IntToStr(row_0)].Value := SP.FieldByName('fact_weight').Value;
                exWks.Range['I' + IntToStr(row_0)].Value := SP.FieldByName('doc_number').AsString;
                exWks.Range['J' + IntToStr(row_0)].Value := SP.FieldByName('poluchgr').AsString;
                exWks.Range['K' + IntToStr(row_0)].Value := SP.FieldByName('type_park_name').AsString;
                exWks.Range['L' + IntToStr(row_0)].Value := SP.FieldByName('node_operation_name').AsString;
                exWks.Range['M' + IntToStr(row_0)].Value := SP.FieldByName('count_stay_on_period').Value;
                exWks.Range['N' + IntToStr(row_0)].Value := SP.FieldByName('index_train').AsString;
                exWks.Range['O' + IntToStr(row_0)].Value := SP.FieldByName('inf_obj_name_full').AsString;
                exWks.Range['P' + IntToStr(row_0)].Value := SP.FieldByName('stay_date_begin').Value;
                exWks.Range['Q' + IntToStr(row_0)].Value := SP.FieldByName('stay_date_end').Value;
                exWks.Range['R' + IntToStr(row_0)].Value := SP.FieldByName('norm_stay').AsString;
                exWks.Range['S' + IntToStr(row_0)].Value := SP.FieldByName('rod_vagon_name').AsString;
                exWks.Range['T' + IntToStr(row_0)].Value := SP.FieldByName('distance1').AsString;
              end;

          502 : begin
                exWks.Range['B' + IntToStr(row_0)].Value := SP.FieldByName('num_vagon').AsString;
                exWks.Range['C' + IntToStr(row_0)].Value := SP.FieldByName('comment6').AsString;
                exWks.Range['D' + IntToStr(row_0)].Value := SP.FieldByName('registry_station_name').AsString;
                exWks.Range['E' + IntToStr(row_0)].Value := SP.FieldByName('date_registration').Value;
                exWks.Range['F' + IntToStr(row_0)].Value := SP.FieldByName('next_date_registration').Value;
                exWks.Range['G' + IntToStr(row_0)].Value := SP.FieldByName('count_day_to_next_registration').Value;
                exWks.Range['H' + IntToStr(row_0)].Value := SP.FieldByName('comment1').AsString;
                exWks.Range['I' + IntToStr(row_0)].Value := SP.FieldByName('comment11').AsString;
                exWks.Range['J' + IntToStr(row_0)].Value := SP.FieldByName('type_park_name').AsString;
                exWks.Range['K' + IntToStr(row_0)].Value := SP.FieldByName('firm_customer_name').AsString;
                exWks.Range['L' + IntToStr(row_0)].Value := SP.FieldByName('date_otpr').Value;
                exWks.Range['M' + IntToStr(row_0)].Value := SP.FieldByName('node_begin_name').AsString;
                exWks.Range['N' + IntToStr(row_0)].Value := SP.FieldByName('node_operation_name').AsString;
                exWks.Range['O' + IntToStr(row_0)].Value := SP.FieldByName('road_operation_name').AsString;
                exWks.Range['P' + IntToStr(row_0)].Value := SP.FieldByName('node_end_name').AsString;
                exWks.Range['Q' + IntToStr(row_0)].Value := SP.FieldByName('doc_number').AsString;
                exWks.Range['R' + IntToStr(row_0)].Value := SP.FieldByName('fact_weight').Value;
                exWks.Range['S' + IntToStr(row_0)].Value := SP.FieldByName('RW_grpol').AsString;
                exWks.Range['T' + IntToStr(row_0)].Value := SP.FieldByName('model_name').AsString;
                exWks.Range['U' + IntToStr(row_0)].Value := SP.FieldByName('comment2').AsString;
                exWks.Range['V' + IntToStr(row_0)].Value := SP.FieldByName('kargoETSNG_name').AsString;
              end;

          394 : begin
                exWks.Range['B' + IntToStr(row_0)].Value := SP.FieldByName('num_vagon').AsString;
                exWks.Range['C' + IntToStr(row_0)].Value := SP.FieldByName('type_park_name').AsString;
                exWks.Range['D' + IntToStr(row_0)].Value := SP.FieldByName('firm_name').AsString;
                exWks.Range['F' + IntToStr(row_0)].Value := SP.FieldByName('date_otpr').Value;
                exWks.Range['G' + IntToStr(row_0)].Value := SP.FieldByName('date_arrival').Value;
                //exWks.Range['H' + IntToStr(row_0)].Value := SP.FieldByName('').AsString;
               // exWks.Range['I' + IntToStr(row_0)].Value := SP.FieldByName('').AsFloat;
                exWks.Range['J' + IntToStr(row_0)].Value := SP.FieldByName('node_begin_name').AsString;
                exWks.Range['K' + IntToStr(row_0)].Value := SP.FieldByName('road_begin_name').AsString;
                exWks.Range['L' + IntToStr(row_0)].Value := SP.FieldByName('node_end_name').AsString;
                exWks.Range['M' + IntToStr(row_0)].Value := SP.FieldByName('road_end_name').AsString;
                exWks.Range['N' + IntToStr(row_0)].Value := SP.FieldByName('kargoETSNG_name').AsString;
                exWks.Range['O' + IntToStr(row_0)].Value := SP.FieldByName('fact_weight').Value;

                exWks.Range['P' + IntToStr(row_0)].Value := SP.FieldByName('le1_transport_pay').Value;
                exWks.Range['Q' + IntToStr(row_0)].Value := SP.FieldByName('le2_transport_pay').Value;
                exWks.Range['R' + IntToStr(row_0)].Value := SP.FieldByName('le3_transport_pay').Value;
                exWks.Range['S' + IntToStr(row_0)].Value := SP.FieldByName('le4_transport_pay').Value;
               // exWks.Range['T' + IntToStr(row_0)].Value := SP.FieldByName('').Value;

                exWks.Range['V' + IntToStr(row_0)].Value  := SP.FieldByName('le1_num_vagon').AsString;
                exWks.Range['W' + IntToStr(row_0)].Value  := SP.FieldByName('le1_date_otpr').Value;
                exWks.Range['X' + IntToStr(row_0)].Value  := SP.FieldByName('le1_date_arrival').Value;
                exWks.Range['Z' + IntToStr(row_0)].Value  := SP.FieldByName('le1_node_begin_name').AsString;
                exWks.Range['AA' + IntToStr(row_0)].Value  := SP.FieldByName('le1_road_begin_name').AsString;
                exWks.Range['AB' + IntToStr(row_0)].Value  := SP.FieldByName('le1_node_end_name').AsString;
                exWks.Range['AC' + IntToStr(row_0)].Value := SP.FieldByName('le1_road_end_name').AsString;
                exWks.Range['AD' + IntToStr(row_0)].Value := SP.FieldByName('le1_kargoETSNG_name').AsString;
                exWks.Range['AE' + IntToStr(row_0)].Value := SP.FieldByName('le1_fact_weight').Value;

                exWks.Range['AF' + IntToStr(row_0)].Value  := SP.FieldByName('le2_num_vagon').AsString;
                exWks.Range['AG' + IntToStr(row_0)].Value  := SP.FieldByName('le2_date_otpr').Value;
                exWks.Range['AH' + IntToStr(row_0)].Value  := SP.FieldByName('le2_date_arrival').Value;
                exWks.Range['AJ' + IntToStr(row_0)].Value  := SP.FieldByName('le2_node_begin_name').AsString;
                exWks.Range['AK' + IntToStr(row_0)].Value  := SP.FieldByName('le2_road_begin_name').AsString;
                exWks.Range['AL' + IntToStr(row_0)].Value  := SP.FieldByName('le2_node_end_name').AsString;
                exWks.Range['AM' + IntToStr(row_0)].Value := SP.FieldByName('le2_road_end_name').AsString;
                exWks.Range['AN' + IntToStr(row_0)].Value := SP.FieldByName('le2_kargoETSNG_name').AsString;
                exWks.Range['AO' + IntToStr(row_0)].Value := SP.FieldByName('le2_fact_weight').Value;

                exWks.Range['AP' + IntToStr(row_0)].Value  := SP.FieldByName('le3_num_vagon').AsString;
                exWks.Range['AQ' + IntToStr(row_0)].Value  := SP.FieldByName('le3_date_otpr').Value;
                exWks.Range['AR' + IntToStr(row_0)].Value  := SP.FieldByName('le3_date_arrival').Value;
                exWks.Range['AT' + IntToStr(row_0)].Value  := SP.FieldByName('le3_node_begin_name').AsString;
                exWks.Range['AU' + IntToStr(row_0)].Value  := SP.FieldByName('le3_road_begin_name').AsString;
                exWks.Range['AV' + IntToStr(row_0)].Value  := SP.FieldByName('le3_node_end_name').AsString;
                exWks.Range['AW' + IntToStr(row_0)].Value := SP.FieldByName('le3_road_end_name').AsString;
                exWks.Range['AX' + IntToStr(row_0)].Value := SP.FieldByName('le3_kargoETSNG_name').AsString;
                exWks.Range['AY' + IntToStr(row_0)].Value := SP.FieldByName('le3_fact_weight').Value;

                exWks.Range['Az' + IntToStr(row_0)].Value  := SP.FieldByName('le4_num_vagon').AsString;
                exWks.Range['BA' + IntToStr(row_0)].Value  := SP.FieldByName('le4_date_otpr').Value;
                exWks.Range['BB' + IntToStr(row_0)].Value  := SP.FieldByName('le4_date_arrival').Value;
                exWks.Range['BD' + IntToStr(row_0)].Value  := SP.FieldByName('le4_node_begin_name').AsString;
                exWks.Range['BE' + IntToStr(row_0)].Value  := SP.FieldByName('le4_road_begin_name').AsString;
                exWks.Range['BF' + IntToStr(row_0)].Value  := SP.FieldByName('le4_node_end_name').AsString;
                exWks.Range['BG' + IntToStr(row_0)].Value := SP.FieldByName('le4_road_end_name').AsString;
                exWks.Range['BH' + IntToStr(row_0)].Value := SP.FieldByName('le4_kargoETSNG_name').AsString;
                exWks.Range['BI' + IntToStr(row_0)].Value := SP.FieldByName('le4_fact_weight').Value;

               if ClientDS_CalcTarif.Locate('node_end_cod;node_begin_cod', VarArrayOf([SP.FieldByName('node_begin_cod').Value, SP.FieldByName('node_end_cod').Value]), []) then
                 exWks.Range['T' + IntToStr(row_0)].Value := ClientDS_CalcTarif.FieldByName('AllCountries_TotalPrice').Value
               else exWks.Range['T' + IntToStr(row_0)].Value := 0;

              end;
      end;

      ShowTextMessage('Осталось: ' + IntToStr(SP.RecordCount - SP.RecNo) + ' строк.' , False);
      SP.Next;

      if (FType_rep = 366) OR (FType_rep = 367) then begin
        if not SP.Eof then begin
          exWks.Rows[IntToStr(row_0 + 1)].Insert;
          exWks.Rows[IntToStr(row_0)].Copy;
          exWks.Rows[IntToStr(row_0 + 1)].PasteSpecial(1);  //-4122
        end;
      end else begin

        if (FType_rep = 357) and ClientDS_CalcTarif357.Locate('fact_id', SP.FieldByName('id').Value, []) then begin
          if ClientDS_CalcTarif357.FieldByName('rate_val_eur').AsFloat <> 0 then
            if not SP.Eof then begin
              //xCopyRow(exApp,row_0 + 1,row_0 +1);
              exWks.Rows[IntToStr(row_0+1)].Copy;
              exWks.Rows[IntToStr(row_0+1)].Insert;
            end;
        end else begin
          if not SP.Eof then begin
            //xCopyRow(exApp,row_0 + 1,row_0 +1);
            exWks.Rows[IntToStr(row_0+1)].Copy;
            exWks.Rows[IntToStr(row_0+1)].Insert;
          end;
        end;

      end;

      inc(row_0);
    end;
  end;


  SP.Close;

  if (FType_rep = 147) and (num_vagon <> '') and (start_num_vagon < (row_0 - 1)) then begin
    exApp.DisplayAlerts := False;
    exWks.Range[exWks.cells[start_num_vagon, 2], exWks.cells[row_0, 2]].Merge;
    exWks.cells[start_num_vagon, 2].VerticalAlignment := -4108;
    exApp.DisplayAlerts := True;
  end;

  if (FType_rep = 167) and (num_vagon <> '') and (start_num_vagon < (row_0 - 1))  then begin
    exApp.DisplayAlerts := False;
    exWks.Range[exWks.cells[start_num_vagon, 1], exWks.cells[row_0, 1]].Merge;
    exWks.Range[exWks.cells[start_num_vagon, 14], exWks.cells[row_0, 14]].Merge;
    exWks.Range[exWks.cells[start_num_vagon, 15], exWks.cells[row_0, 15]].Merge;
    exWks.Range[exWks.cells[start_num_vagon, 16], exWks.cells[row_0, 16]].Merge;
    exWks.cells[start_num_vagon, 1].VerticalAlignment := -4108;
    exWks.cells[start_num_vagon, 14].VerticalAlignment := -4108;
    exWks.cells[start_num_vagon, 15].VerticalAlignment := -4108;
    exWks.cells[start_num_vagon, 16].VerticalAlignment := -4108;
    exApp.DisplayAlerts := True;
  end;

  if (FType_rep = 152) then begin
    exApp.Rows[IntToStr(row_0) + ':' + IntToStr(row_0 + 1)].Select;
    exApp.Selection.Delete;
    exApp.Rows['6:8'].Select;
    exApp.Selection.Delete;
    exApp.ActiveSheet.Outline.ShowLevels(1);
  end;

  if (FType_rep = 153) then begin
    row_0 := 8;
    ClientDS := TClientDataSet.Create(nil);
    SP.ProcedureName := 'sp_Report_fact_track_dist';
    SP.Parameters.Refresh;
    SP.Parameters.ParamByName('@date').Value := cxDateEdit2.EditValue;
    SP.Parameters.ParamByName('@users_group_id' ).Value := Fusr_pwd.user_group_id;
    SP.Parameters.ParamByName('@str_node_end_cod' ).Value := cxButtonEdit10.Text;
//    if cxRadioButton3.Checked then SP.Parameters.ParamByName('@type_park' ).Value :=  1;
//    if cxRadioButton4.Checked then SP.Parameters.ParamByName('@type_park' ).Value :=  2;
//    if cxRadioButton8.Checked then SP.Parameters.ParamByName('@type_park' ).Value :=  3;
    SP.Open;

    ClientDS.SetProvider(SP);
    ClientDS.Open;
    ClientDS.LogChanges := False;
    ClientDS.DisableControls;
    GetCalcDistanceGroup(ClientDS);
//    GetCalcDistanceGroupFast(ClientDS, '', '', True);
    while not ClientDS.Eof do begin
      ClientDS.Edit;
      ClientDS['node_begin_cod'] := ' ';
      ClientDS['node_end_cod'] := ' ';
      ClientDS['node_add_cod'] := ' ';
      ClientDS['land_id'] := ' ';
      if VarIsNull(SP.FieldByName('node_end_name').Value) then
        ClientDS['node_end_name'] := ' ';

      ClientDS.Post;
      ClientDS.Next
    end;
    SP.Close;
    SP.Parameters.Refresh;
    SP.Parameters.ParamByName('@type_action').Value := 1;
    SP.Parameters.ParamByName('@file_xml' ).Value := FormatXMLData(ClientDS.XMLData);
    SP.Open;
    SP.First;
    while not SP.EOF do begin
      exWks.Range['B' + IntToStr(row_0)].Value := SP.FieldByName('node_end_name').AsString;
      exWks.Range['C' + IntToStr(row_0)].Value := SP.FieldByName('dist_count_total_1').AsString;
      exWks.Range['D' + IntToStr(row_0)].Value := SP.FieldByName('dist_count_total_0').AsString;
      exWks.Range['E' + IntToStr(row_0)].Value := SP.FieldByName('dist_count0_1').AsString;
      exWks.Range['F' + IntToStr(row_0)].Value := SP.FieldByName('dist_count0_0').AsString;
      exWks.Range['G' + IntToStr(row_0)].Value := SP.FieldByName('dist_count1_1').AsString;
      exWks.Range['H' + IntToStr(row_0)].Value := SP.FieldByName('dist_count1_0').AsString;
      exWks.Range['I' + IntToStr(row_0)].Value := SP.FieldByName('dist_count2_1').AsString;
      exWks.Range['J' + IntToStr(row_0)].Value := SP.FieldByName('dist_count2_0').AsString;
      exWks.Range['K' + IntToStr(row_0)].Value := SP.FieldByName('dist_count3_1').AsString;
      exWks.Range['L' + IntToStr(row_0)].Value := SP.FieldByName('dist_count3_0').AsString;
      exWks.Range['M' + IntToStr(row_0)].Value := SP.FieldByName('dist_count4_1').AsString;
      exWks.Range['N' + IntToStr(row_0)].Value := SP.FieldByName('dist_count4_0').AsString;
      exWks.Range['O' + IntToStr(row_0)].Value := SP.FieldByName('dist_count5_1').AsString;
      exWks.Range['P' + IntToStr(row_0)].Value := SP.FieldByName('dist_count5_0').AsString;
      exWks.Range['Q' + IntToStr(row_0)].Value := SP.FieldByName('dist_count6_1').AsString;
      exWks.Range['R' + IntToStr(row_0)].Value := SP.FieldByName('dist_count6_0').AsString;
      exWks.Range['S' + IntToStr(row_0)].Value := SP.FieldByName('dist_count7_1').AsString;
      exWks.Range['T' + IntToStr(row_0)].Value := SP.FieldByName('dist_count7_0').AsString;

      exWks.Range['U' + IntToStr(row_0)].Value := SP.FieldByName('dist_count8_1').AsString;
      exWks.Range['V' + IntToStr(row_0)].Value := SP.FieldByName('dist_count8_0').AsString;
      exWks.Range['W' + IntToStr(row_0)].Value := SP.FieldByName('dist_count9_1').AsString;
      exWks.Range['X' + IntToStr(row_0)].Value := SP.FieldByName('dist_count9_0').AsString;
      exWks.Range['Y' + IntToStr(row_0)].Value := SP.FieldByName('dist_count10_1').AsString;
      exWks.Range['Z' + IntToStr(row_0)].Value := SP.FieldByName('dist_count10_0').AsString;
      exWks.Range['AA' + IntToStr(row_0)].Value := SP.FieldByName('dist_count11_1').AsString;
      exWks.Range['AB' + IntToStr(row_0)].Value := SP.FieldByName('dist_count11_0').AsString;
      exWks.Range['AC' + IntToStr(row_0)].Value := SP.FieldByName('dist_count12_1').AsString;
      exWks.Range['AD' + IntToStr(row_0)].Value := SP.FieldByName('dist_count12_0').AsString;
      exWks.Range['AE' + IntToStr(row_0)].Value := SP.FieldByName('dist_count13_1').AsString;
      exWks.Range['AF' + IntToStr(row_0)].Value := SP.FieldByName('dist_count13_0').AsString;
      exWks.Range['AG' + IntToStr(row_0)].Value := SP.FieldByName('dist_count14_1').AsString;
      exWks.Range['AH' + IntToStr(row_0)].Value := SP.FieldByName('dist_count14_0').AsString;
      exWks.Range['AI' + IntToStr(row_0)].Value := SP.FieldByName('dist_count15_1').AsString;
      exWks.Range['AJ' + IntToStr(row_0)].Value := SP.FieldByName('dist_count15_0').AsString;
      exWks.Range['AK' + IntToStr(row_0)].Value := SP.FieldByName('dist_count16_1').AsString;
      exWks.Range['AL' + IntToStr(row_0)].Value := SP.FieldByName('dist_count16_0').AsString;
      exWks.Range['AM' + IntToStr(row_0)].Value := SP.FieldByName('dist_count_no_1').AsString;
      exWks.Range['AN' + IntToStr(row_0)].Value := SP.FieldByName('dist_count_no_0').AsString;

      ShowTextMessage('Осталось: ' + IntToStr(SP.RecordCount - SP.RecNo) + 'строк.' , False);
      SP.Next;

      if not SP.Eof then begin
        xCopyRow(exApp,row_0 + 1,row_0 +1);
        inc(row_0);
      end;
    end;
    ClientDS.Free;
  end;

  if (FType_rep = 156) then begin
    SP.ProcedureName := 'sp_Report_fact_operational_note';
    SP.Parameters.Refresh;
    SP.Parameters.ParamByName('@date').Value := cxDateEdit2.EditValue;
    SP.Parameters.ParamByName('@users_group_id' ).Value := Fusr_pwd.user_group_id;
  //  SP.Parameters.ParamByName('@str_num_vagon' ).Value := MemoToSQL(cxMemo1);

    SP.Open;

    //расчет расстояния

    ClientDS := TClientDataSet.Create(nil);
    ClientDS.FieldDefs.Add('node_begin_cod',  ftString, 50); // станция отправления
    ClientDS.FieldDefs.Add('node_end_cod',    ftString, 50); // станция назначения
    ClientDS.FieldDefs.Add('node_add_cod',    ftString, 50); // станция дислокации (необязательно)
    ClientDS.FieldDefs.Add('land_id',         ftInteger  ); // Расчет расстояния по стране (-9: полное расстояние по всем странам)

    ClientDS.FieldDefs.Add('Distance',        ftInteger  ); // Расстояние (возвращаемый параметр)
    ClientDS.IndexFieldNames := 'node_begin_cod;node_end_cod';

    ClientDS.CreateDataSet;
    ClientDS.LogChanges := False;
    ClientDS.DisableControls;

    SP.First;
    while not SP.EOF do begin
      if  (SP.FieldByName('node_begin_cod').AsString <>'') and (SP.FieldByName('node_operation_cod').AsString <>'') then begin
        if not ClientDS.Locate('node_begin_cod;node_end_cod', VarArrayOf([SP.FieldByName('node_begin_cod').AsString, SP.FieldByName('node_operation_cod').AsString]), []) then begin
          ClientDS.Append;
          ClientDS.FieldByName('node_begin_cod').AsString := SP.FieldByName('node_begin_cod').AsString;
          ClientDS.FieldByName('node_end_cod').AsString := SP.FieldByName('node_operation_cod').AsString;
          ClientDS.FieldByName('land_id').AsInteger := -9;
          ClientDS.Post;
        end;
      end;

      if  (SP.FieldByName('node_end_cod').AsString <>'') and (SP.FieldByName('node_operation_cod').AsString <>'') then begin
        if not ClientDS.Locate('node_begin_cod;node_end_cod', VarArrayOf([SP.FieldByName('node_operation_cod').AsString, SP.FieldByName('node_end_cod').AsString]), []) then begin
          ClientDS.Append;
          ClientDS.FieldByName('node_begin_cod').AsString := SP.FieldByName('node_operation_cod').AsString;
          ClientDS.FieldByName('node_end_cod').AsString := SP.FieldByName('node_end_cod').AsString;
          ClientDS.FieldByName('land_id').AsInteger := -9;
          ClientDS.Post;
        end;
      end;
     SP.Next;
     ShowTextMessage('Подготовка к расчету расстояний. Осталось: ' + IntToStr(SP.RecordCount - SP.RecNo) + 'строк.' , False);
    end;

    GetCalcDistanceGroup(ClientDS);
//    GetCalcDistanceGroupFast(ClientDS, '', '', True);

    SP.First;
    while not SP.EOF do begin
      exWks.Range['B' + IntToStr(row_0)].Value := SP.FieldByName('num_vagon').AsString;
      exWks.Range['C' + IntToStr(row_0)].Value := SP.FieldByName('node_begin_name').AsString;
      exWks.Range['G' + IntToStr(row_0)].Value := SP.FieldByName('date_operation').AsString;
      exWks.Range['H' + IntToStr(row_0)].Value := SP.FieldByName('time_operation').AsString;
      exWks.Range['I' + IntToStr(row_0)].Value := SP.FieldByName('node_operation_name').AsString;
      exWks.Range['J' + IntToStr(row_0)].Value := SP.FieldByName('road_begin_name').AsString;
      exWks.Range['K' + IntToStr(row_0)].Value := SP.FieldByName('road_end_name').AsString;
      exWks.Range['L' + IntToStr(row_0)].Value := SP.FieldByName('index_train').AsString;
      exWks.Range['M' + IntToStr(row_0)].Value := SP.FieldByName('num_train').AsString;
      exWks.Range['N' + IntToStr(row_0)].Value := SP.FieldByName('kargoETSNG_name').AsString;
      exWks.Range['O' + IntToStr(row_0)].Value := SP.FieldByName('fact_weight').AsFloat;
      exWks.Range['Q' + IntToStr(row_0)].Value := SP.FieldByName('node_begin_name').AsString;
      exWks.Range['R' + IntToStr(row_0)].Value := SP.FieldByName('date_otpr').AsString;
      exWks.Range['S' + IntToStr(row_0)].Value := SP.FieldByName('time_otpr').AsString;
      exWks.Range['T' + IntToStr(row_0)].Value := SP.FieldByName('doc_number').AsString;
      exWks.Range['W' + IntToStr(row_0)].Value := SP.FieldByName('cod_operation_cod').AsString;
      exWks.Range['X' + IntToStr(row_0)].Value := SP.FieldByName('cod_operation_vagon_name_full').AsString;
      exWks.Range['Y' + IntToStr(row_0)].Value := SP.FieldByName('cod_operation_train_name_full').AsString;
      exWks.Range['Z' + IntToStr(row_0)].Value := SP.FieldByName('type_park_vagon_name').AsString;
      exWks.Range['AB' + IntToStr(row_0)].Value := SP.FieldByName('firm_name').AsString;
      exWks.Range['AC' + IntToStr(row_0)].Value := SP.FieldByName('next_date_repair').AsString;
      exWks.Range['AE' + IntToStr(row_0)].Value := SP.FieldByName('milage_rest').AsString;
      exWks.Range['AD' + IntToStr(row_0)].Value := SP.FieldByName('bush').AsString;

      exWks.Range['AF' + IntToStr(row_0)].Value := SP.FieldByName('vagon_sign').AsString;
      exWks.Range['AG' + IntToStr(row_0)].Value := SP.FieldByName('comment2').AsString;
      exWks.Range['AH' + IntToStr(row_0)].Value := SP.FieldByName('comment3').AsString;
      exWks.Range['AI' + IntToStr(row_0)].Value := SP.FieldByName('comment4').AsString;
      exWks.Range['AJ' + IntToStr(row_0)].Value := SP.FieldByName('comment5').AsString;
      exWks.Range['AK' + IntToStr(row_0)].Value := SP.FieldByName('comment6').AsString;

      if ClientDS.Locate('node_begin_cod;node_end_cod', VarArrayOf([SP.FieldByName('node_begin_cod').AsString, SP.FieldByName('node_operation_cod').AsString]), []) then
        exWks.Range['U' + IntToStr(row_0)].Value := OleVariant(iif(VarIsNull(ClientDS.FieldByName('Distance').Value), 0, ClientDS.FieldByName('Distance').Value));

      if ClientDS.Locate('node_begin_cod;node_end_cod', VarArrayOf([SP.FieldByName('node_operation_cod').AsString, SP.FieldByName('node_end_cod').AsString]), []) then
        exWks.Range['V' + IntToStr(row_0)].Value := OleVariant(iif(VarIsNull(ClientDS.FieldByName('Distance').Value), 0, ClientDS.FieldByName('Distance').Value));

      ShowTextMessage('Выводв Excel. Осталось: ' + IntToStr(SP.RecordCount - SP.RecNo) + 'строк.' , False);
      SP.Next;

      if not SP.Eof then begin
        xCopyRow(exApp,row_0 + 1,row_0 +1);
        inc(row_0);
      end;
    end;
    ClientDS.Free;
  end;

  if (FType_rep <> 366) AND (Ftype_rep <> 367) then begin
    exApp.Rows[IntToStr(row_0 + 1) + ':' + IntToStr(row_0 + 1)].Select;
    exApp.Selection.Delete;
  end;

  exApp.ScreenUpdating := True;
  if (FType_rep = 208) OR (FType_rep = 288) then begin
    exApp.ActiveWorkbook.WorkSheets[2].PivotTables('СводнаяТаблица1').PivotCache.Refresh;
    exApp.ActiveWorkbook.WorkSheets[6].PivotTables('СводнаяТаблица3').PivotCache.Refresh;
  end;

  if (FType_rep = 405) or (FType_rep = 406) then begin
    exApp.ActiveWorkbook.WorkSheets[2].Range['C2'].Value := cxButtonEdit2.EditText;
    exApp.ActiveWorkbook.WorkSheets[2].PivotTables('Сводная таблица1').PivotCache.Refresh
  end;

  if (FType_rep = 255) or (FType_rep = 401) then begin
     exApp.ActiveWorkbook.WorkSheets[2].PivotTables('ST').PivotCache.Refresh;
     i:= 100;
     while i <> 0 do begin
       if exApp.ActiveWorkbook.WorkSheets[2].Cells[7,i].Value = OleVariant('Общий итог') then
       break;
       exApp.ActiveWorkbook.WorkSheets[2].Cells[39,i].Formula := '';
       i := i - 1;
     end;
  end;

  if (FType_rep = 357) then
    ClientDS_CalcTarif357.Free;


  if (FType_rep = 141) and (cxCheckBox2.Checked) then begin
    ClientDS_RateEmpty.Free;
  end;

   // Добавим в примечание к первой строке Код шаблона
  exWks.Range['A1'].ClearComments;
  exWks.Range['A1'].AddComment('Шаблон = ' + IntToStr(FType_rep));
  exWks.Range['A1'].Comment.Visible := False;

  exApp.ScreenUpdating := True;
  exApp.Visible := True;
  exApp.Range['A1'].Select;
  VarClear(exWks); VarClear(exApp);
  SP.Free;
  ADOEtran.Free;
  ModalResult:= mrNone;
  ShowTextMessage('', True);

  if Assigned(ClientDS_rate) then ClientDS_rate.Free;
  if Assigned(ClientDS_dist) then ClientDS_dist.Free;

  Screen.Cursor := crDefault;
end;

procedure TfmRepFactTrack.cxButtonEdit1PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
var SpreadSheet : TdxSpreadSheet;
    i : integer;
begin
  case AButtonIndex of
    0:begin
      OpenDialog1.Filter := 'Все файлы|*.*';
      OpenDialog1.DefaultExt := '';
      if OpenDialog1.Execute then
        cxComboBox4.Properties.Items.Clear;

        cxButtonEdit1.Text := ExtractFileName(OpenDialog1.FileName);
        Ffile_stream.Clear;
        Ffile_stream.LoadFromFile(OpenDialog1.FileName);

        SpreadSheet := TdxSpreadSheet.Create(nil);
        SpreadSheet.BeginUpdate();
        SpreadSheet.LoadFromStream(Ffile_stream);


        for i := 0 to SpreadSheet.SheetCount-1 do begin
          cxComboBox4.Properties.Items.Add(SpreadSheet.Sheets[i].Caption);
        end;
        cxComboBox4.ItemIndex := 0;

        SpreadSheet.EndUpdate;
        SpreadSheet.Free;

      end;
    1:begin
        cxButtonEdit1.Text := '';
        cxComboBox4.Properties.Items.Clear;
        Ffile_stream.Clear;
      end;
  end;
end;

procedure TfmRepFactTrack.cxButtonEdit2PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  UpdateCxButtonEdit(Sender, AButtonIndex, 'inf_obj_NODE', 'Станция отправления', cxButtonEdit2, cxButtonEdit9);
end;

procedure TfmRepFactTrack.cxButtonEdit3PropertiesButtonClick(Sender: TObject;  AButtonIndex: Integer);
begin
   UpdateCxButtonEdit(Sender, AButtonIndex, 'inf_obj_NODE', 'Станция назначения', cxButtonEdit3, cxButtonEdit10);
end;

procedure TfmRepFactTrack.cxCheckBox7PropertiesEditValueChanged(
  Sender: TObject);
begin
  if cxCheckBox7.Checked then begin
    cxLookupComboBox2.Enabled := True;
    cxLookupComboBox2.EditValue := Query_Owner.FieldByName('contract_id').Value;
  end else begin
    cxLookupComboBox2.Enabled := False;
    cxLookupComboBox2.EditValue := -9;
  end;
end;

procedure TfmRepFactTrack.cxCheckComboBox1PropertiesEditValueChanged(
  Sender: TObject);
var
 Q: TADOQuery;
begin
  Q := TADOQuery.Create(nil);
  Q.Connection := ADOReport;
  Q.SQL.Add('SELECT inf_obj_name, inf_obj_id FROM INF_OBJ WITH (NOLOCK) WHERE type_inf_id = 157');
  Q.Open;
  cxCheckComboBox1.Properties.Items.Clear;
  while not Q.Eof do begin
    with cxCheckComboBox1.Properties.Items.Add do begin
      Description := Q.FieldByName('inf_obj_name').AsString;
      Tag         := Q.FieldByName('inf_obj_id').AsInteger;
    end;
    Q.Next;
  end;

 StoreRegistryCheckComboBox(rgLoad,'\Software\LIS1\cxCheckCombox\RepFactTrack', cxCheckComboBox1);
end;

procedure TfmRepFactTrack.cxDateEdit1PropertiesEditValueChanged(Sender: TObject);
begin
  if (FType_rep = 205) then begin
    Query_Owner.Close;
    Query_Owner.Parameters.ParamByName('date').Value := cxDateEdit1.EditingValue;
    Query_Owner.Parameters.ParamByName('users_group_id').Value := Fusr_pwd.user_group_id;
    Query_Owner.Open;
  end;
end;

procedure TfmRepFactTrack.cxLookupComboBox1PropertiesEditValueChanged(Sender: TObject);
begin
  Query_Type_Rep.Locate('inf_obj_id',cxLookupComboBox1.EditingValue,[]);
  if Query_Type_Rep.FieldByName('inf_obj_cod').AsString = '137.2' then
    FType_rep := 1372
  else
    FType_rep := Query_Type_Rep.FieldByName('inf_obj_cod').AsInteger;

  if (FType_rep = 151)or (FType_rep = 156) or (FType_rep = 405) or (FType_rep = 406) then begin
    cxDateEdit1.Enabled    := False;
    cxButtonEdit9.Enabled  := False;
    cxButtonEdit10.Enabled := False;
    cxButtonEdit2.Enabled  := False;
    cxButtonEdit3.Enabled  := False;
  end else if (FType_rep = 153) or (FType_rep = 502)  then begin
    cxDateEdit1.Enabled    := False;
    cxButtonEdit9.Enabled  := False;
    cxButtonEdit2.Enabled  := False;
  end else if (FType_rep = 163)  then begin
    cxDateEdit2.Enabled    := False;
  end else begin
    cxDateEdit1.Enabled    := True;
    cxButtonEdit9.Enabled  := True;
    cxButtonEdit10.Enabled := True;
    cxButtonEdit2.Enabled  := True;
    cxButtonEdit3.Enabled  := True;
  end;

   if (FType_rep = 292) or (FType_rep = 436)  then begin
    Label9.Visible := False;
    cxButtonEdit3.Visible := False;
    cxButtonEdit10.Visible := False;
    Label8.Caption := 'Ст.........'
   end else begin
    Label9.Visible := True;
    cxButtonEdit3.Visible := True;
    cxButtonEdit10.Visible := True;
    Label8.Caption := 'Ст. отпр..........'
   end;

//   else cxCheckBox1.Visible := False;

  if (FType_rep = 154) OR (FType_rep = 1541) OR (FType_rep = 157) OR (FType_rep = 158) OR (FType_rep = 197) OR (FType_rep = 196) OR (FType_rep = 252) OR (FType_rep = 257) OR (FType_rep = 281) then
    GroupBox11.Visible := True
  else GroupBox11.Visible := False;

  if (FType_rep = 141) then
    GroupBox5.Visible := True
  else GroupBox5.Visible := False;

  if (FType_rep = 197) then begin
    Label3.Caption := 'Отставание';
    cxCurrencyEdit2.EditValue := 2;
  end;

  if (FType_rep = 255) or (FType_rep = 401) then
    GroupBox3.Visible := True
  else
    GroupBox3.Visible := False;

  if (FType_rep = 205) then begin
    Query_Owner.Close;
    Query_Owner.Parameters.ParamByName('date').Value := cxDateEdit1.EditValue;
    Query_Owner.Parameters.ParamByName('users_group_id').Value := Fusr_pwd.user_group_id;
    Query_Owner.Open;
    GroupBox2.Visible := True;
    cxCheckBox7.Checked := False;
    cxLookupComboBox2.Enabled := False;
    cxLookupComboBox2.EditValue := -9;
  end else begin
    GroupBox2.Visible := False;
    cxLookupComboBox2.EditValue := -9;
  end;

  if (FType_rep = 1372) then begin
    cxGroupBox1.Visible := True;
  end else begin
    cxGroupBox1.Visible := False;
  end;

   if (FType_rep = 281) or (FType_rep = 310) or (FType_rep = 3101) then begin
      cxDateEdit1.Visible := False;
      Label2.Visible      := False;
      Label4.Visible          := False;
      cxCurrencyEdit1.Visible := False;
      Label1.Caption      := 'На дату.....................';
      GroupBox11.Visible := True;
   end Else begin
      cxDateEdit1.Visible := True;
      Label2.Visible      := True;
      Label1.Caption      := 'Период..............с.......';
      GroupBox11.Visible  := True;
      Label4.Visible          := True;
      cxCurrencyEdit1.Visible := True;
   end;

   if (FType_rep = 394) then begin
    GroupBox1.Visible:= True;
    Query_Ctm_Save.Open;
   end else begin
    GroupBox1.Visible:= False;
    Query_Ctm_Save.Close;
   end;
end;

procedure TfmRepFactTrack.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Ffile_stream.Free;
  StoreRegistryMemo(rgSave, '\Software\LIS1\cxMemo\RepFactTrack', cxMemo1);
  StoreRegistryCheckComboBox(rgSave, '\Software\LIS1\cxCheckCombox\RepFactTrack', cxCheckComboBox1);
  Action := caFree;
end;

function TfmRepFactTrack.MemoToSQL(Value: TcxMemo): string;
var i  : integer;
    str: string;
begin
  str := '';
  if (Value.EditValue <> null) AND (Value.EditValue <> '') AND (Value.EditValue <> #13#10) then begin
    for i:=0 to Value.Lines.Count - 1 do
      try
        if (Value.Lines[i] <> '') AND (Value.Lines[i] <>' ') then  begin
          StrToInt64(Value.Lines[i]);
          str := str + ',' + Value.Lines[i];
        end;
      except
        continue
      end;
    Delete(str, 1, 1);
    Result := str;
  end;
end;


procedure TfmRepFactTrack.PrintReport();
var
    SpreadSheet     : TdxSpreadSheet;
    Sheet1          : TdxSpreadSheetTableView;
    ADOEtran        : TADOConnection;
    users_group_cod : string;
    login           : string;
    Q               : TADOQuery;
    SP              : TADOStoredProc;
    str_type_park_id: string;
    i               : integer;
    file_name       : string;
    tmp_path        : string;
    row_0           : integer;
    set_done        : boolean;
    show_distance   : boolean;
    show_period_of_delivery : boolean;

    ACell           : TdxSpreadSheetCell;
    AComment        : TdxSpreadSheetCommentContainer;

    ClientDS_rate   : TClientDataSet;
    ClientDS_dist   : TClientDataSet;
    dist            : integer;
    column_count    : integer;
begin
  file_name := GetDocBlob_FileNameOnly(ADOReport, FType_rep, 9, True);

  ClientDS_rate := TClientDataSet.Create(Application);
  ClientDS_rate.FieldDefs.Add('dist1', ftInteger);  // Расстояние с
  ClientDS_rate.FieldDefs.Add('dist2', ftInteger);  // Расстояние по
  ClientDS_rate.FieldDefs.Add('rate',  ftCurrency); // Ставка
  ClientDS_rate.CreateDataSet;
  ClientDS_rate.LogChanges := False;

  ModalResult := mrOk;
  if FType_rep = 1372 then begin
    if (cxButtonEdit1.Text = '') or (Ffile_stream.Size = 0) or (cxComboBox4.ItemIndex = -1) then begin
      Application.MessageBox('Выберите сетку!', 'Внимание', MB_ICONSTOP or MB_OK);
      ModalResult := mrNone;
      Exit;
    end;

    SpreadSheet := TdxSpreadSheet.Create(nil);
    SpreadSheet.BeginUpdate();
    SpreadSheet.LoadFromStream(Ffile_stream);
    Sheet1 := (SpreadSheet.Sheets[cxComboBox4.ItemIndex] as TdxSpreadSheetTableView);

    i := 1;
    set_done := True;
    while set_done do begin
      if (not Assigned(Sheet1.Cells[i, 0])) or (Sheet1.Cells[i, 0].IsEmpty) or
         (not Assigned(Sheet1.Cells[i, 1])) or (Sheet1.Cells[i, 1].IsEmpty) or
         (not Assigned(Sheet1.Cells[i, 2])) or (Sheet1.Cells[i, 2].IsEmpty) then
          set_done := False
      else begin
        ClientDS_rate.Append;
        ClientDS_rate.FieldByName('dist1').Value := Sheet1.Cells[i,0].AsInteger;
        ClientDS_rate.FieldByName('dist2').Value := Sheet1.Cells[i,1].AsInteger;
        ClientDS_rate.FieldByName('rate').Value  := Sheet1.Cells[i,2].AsCurrency;
        ClientDS_rate.Post;
        i := i + 1;
      end;
    end;

    SpreadSheet.EndUpdate;

    Sheet1.Free;
    SpreadSheet.Free;
  end;


  SpreadSheet := TdxSpreadSheet.Create(nil);
  SpreadSheet.BeginUpdate();
  SpreadSheet.LoadFromStream(TBytesStream.Create(GetDocBlobBytes(ADOReport, FType_rep, 9, True)));
  Sheet1 := (SpreadSheet.Sheets[0] as TdxSpreadSheetTableView);
  Sheet1.BeginUpdate;

  ShowTextMessage('Запрос данных с сервера...', False);
  ADOEtran := TADOConnection.Create(nil);
  SP := TADOStoredProc.Create(nil);
  if FType_rep = 197 then begin
    Q := TADOQuery.Create(nil);
    Q.Connection := ADOReport;
    Q.SQL.Add('SELECT	inf_obj_cod as users_group_cod, FIO_users');
    Q.SQL.Add('FROM	  users INNER JOIN inf_obj on users.users_group_id = inf_obj.inf_obj_id');
    Q.SQL.Add('WHERE	users_name = system_user');
    Q.Open;
    users_group_cod := Q.FieldByName('users_group_cod').AsString;
    Q.Free;

    if users_group_cod =  '0' then begin login := 'Etran_GRU';  end;
//    if users_group_cod =  '1' then begin login := 'Etran_KHT';  end;
//    if users_group_cod =  '3' then begin login := 'Etran_PRV';  end;
//    if users_group_cod =  '5' then begin login := 'Etran_STS';  end;
//    if users_group_cod =  '6' then begin login := 'Etran_KAZ';  end;
//    if users_group_cod =  '7' then begin login := 'Etran_RTR';  end;
//    if users_group_cod =  '9' then begin login := 'Etran_SMT';  end;
//    if users_group_cod = '30' then begin login := 'Etran_SNN';  end;
//    if users_group_cod = '10' then begin login := 'Etran_MD';   end;
//    if users_group_cod = '16' then begin login := 'Etran_ITL';  end;
//    if users_group_cod = '18' then begin login := 'Etran_ILG';  end;
//    if users_group_cod = '17' then begin login := 'Etran_DEMO'; end;
//    if users_group_cod = '19' then begin login := 'Etran_LGT';  end;
//    if users_group_cod = '20' then begin login := 'Etran_RZL';  end;
//    if users_group_cod = '21' then begin login := 'Etran_SMT';  end;
//    if users_group_cod = '27' then begin login := 'Etran_NGS';  end;
//    if users_group_cod = '35' then begin login := 'Etran_ULG';  end;

    ADOEtran.KeepConnection := False;
    ADOEtran.LoginPrompt    := False;
    ADOEtran.ConnectionString := 'Provider=SQLOLEDB.1;Persist Security Info=True;User ID='+login+';Password='+'etran'+';Initial Catalog='+ Fusr_pwd.catalog +';Data Source='+Fusr_pwd.server+';';
    SP.Connection := ADOEtran;
  end else
    SP.Connection := ADOReport;

  SP.ProcedureName := 'sp_Report_fact_track';
  SP.CommandTimeout := 600;
  SP.Parameters.Refresh;
  SP.Parameters.ParamByName('@type_report'    ).Value := FType_rep;
  SP.Parameters.ParamByName('@date_begin'     ).Value := cxDateEdit1.EditValue;
  SP.Parameters.ParamByName('@date_end'       ).Value := cxDateEdit2.EditValue;
  SP.Parameters.ParamByName('@set_archive'    ).Value := Ord(cxCheckBox1.Checked);
  SP.Parameters.ParamByName('@users_group_id' ).Value := Fusr_pwd.user_group_id;

  SP.Parameters.ParamByName('@str_node_begin_cod' ).Value := cxButtonEdit9.EditValue;
  SP.Parameters.ParamByName('@str_node_end_cod' ).Value := cxButtonEdit10.EditValue;

  //Если все парки выбраны или все не выбраны, отбор по парку не добавляем.
  str_type_park_id := '';
  for i:= 0 to cxCheckComboBox1.Properties.Items.Count - 1 do begin
   if cxCheckComboBox1.States[i] = cbsUnchecked then begin
     str_type_park_id := GetDataFromCheckBox(cxCheckComboBox1, False);
     break;
   end;
  end;

  if str_type_park_id <> '' then
   SP.Parameters.ParamByName('@str_type_park_id' ).Value := str_type_park_id;

  if FType_rep <> 147 then begin
    SP.Parameters.ParamByName('@str_users_owner').Value := null;
    SP.Parameters.ParamByName('@node_begin_cod' ).Value := cxButtonEdit9.EditValue;
    SP.Parameters.ParamByName('@node_end_cod'   ).Value := cxButtonEdit10.EditValue;
  end;

  if (FType_rep = 197) then begin
    SP.Parameters.ParamByName('@norm_stay').Value := cxCurrencyEdit2.EditValue;
  end;

  if MemoToSQL(cxMemo1) = '' then
    SP.Parameters.ParamByName('@str_num_vagon'  ).Value := Null
  else
    SP.Parameters.ParamByName('@str_num_vagon'  ).Value := MemoToSQL(cxMemo1);

  show_distance := False;

  if (FType_rep = 136) OR (FType_rep = 317) OR (FType_rep = 305) OR (FType_rep = 356) OR (FType_rep = 137) OR (FType_rep = 141) then
    if Application.MessageBox('Заполнять расстояние?','Внимание', MB_YESNO) = ID_YES then show_distance := True;

  if (FType_rep = 1372) then
    show_distance := True;
    show_period_of_delivery := False;
    if Application.MessageBox('Расчитывать срок доставки?','Внимание', MB_YESNO) = ID_YES then show_period_of_delivery := True;
  SP.Open;

  ClientDS_dist := TClientDataSet.Create(Application);
  ClientDS_dist.FieldDefs.Add('node_begin_cod',  ftString, 50); // станция отправления
  ClientDS_dist.FieldDefs.Add('node_end_cod',    ftString, 50); // станция назначения
  ClientDS_dist.FieldDefs.Add('node_add_cod',    ftString, 50); // станция дислокации (необязательно)
  ClientDS_dist.FieldDefs.Add('land_id',         ftInteger  );  // Расчет расстояния по стране (-9: полное расстояние по всем странам)
  ClientDS_dist.FieldDefs.Add('Distance',        ftInteger  );  // Расстояние (возвращаемый параметр)
  ClientDS_dist.IndexFieldNames := 'node_begin_cod;node_end_cod';

  ClientDS_dist.CreateDataSet;
  ClientDS_dist.LogChanges := False;
  Sheet1.Cells[3,1].AsString := 'за период с '+DateToStr(cxDateEdit1.EditValue)+' по '+DateToStr(cxDateEdit2.EditValue)+' (по дате отправления)';

  row_0 := 6;
  SP.First;
  while not SP.Eof do begin
    case FType_rep of
    1372: begin
              column_count := 57;

              Sheet1.Rows[row_0].Cells[ 1].AsVariant :=SP.FieldByName('num_vagon_l').AsString;
              Sheet1.Rows[row_0].Cells[ 2].AsVariant :=SP.FieldByName('date_otpr_l').Value;
              Sheet1.Rows[row_0].Cells[ 3].AsVariant :=SP.FieldByName('date_arrival_l').Value;

              Sheet1.Rows[row_0].Cells[ 5].AsVariant :=SP.FieldByName('node_begin_name_l').AsString;

              Sheet1.Rows[row_0].Cells[ 6].AsVariant :=SP.FieldByName('road_begin_name_l').AsString;

              Sheet1.Rows[row_0].Cells[ 7].AsVariant :=SP.FieldByName('node_end_name_l').AsString;
              Sheet1.Rows[row_0].Cells[ 8].AsVariant :=SP.FieldByName('kargoETSNG_name_l').AsString;
              Sheet1.Rows[row_0].Cells[ 9].AsVariant :=SP.FieldByName('fact_weight_l').AsFloat;
              Sheet1.Rows[row_0].Cells[10].AsVariant :=SP.FieldByName('num_vagon').AsString;
              Sheet1.Rows[row_0].Cells[11].AsVariant :=SP.FieldByName('firm_name').AsString;

              Sheet1.Rows[row_0].Cells[13].AsVariant :=SP.FieldByName('date_otpr').Value;
              Sheet1.Rows[row_0].Cells[14].AsVariant :=SP.FieldByName('date_arrival').Value;

              Sheet1.Rows[row_0].Cells[17].AsVariant :=SP.FieldByName('node_begin_name').AsString;

              Sheet1.Rows[row_0].Cells[18].AsVariant :=SP.FieldByName('road_begin_name').AsString;

              Sheet1.Rows[row_0].Cells[19].AsVariant :=SP.FieldByName('node_end_name').AsString;

              Sheet1.Rows[row_0].Cells[20].AsVariant :=SP.FieldByName('road_end_name').AsString;

              Sheet1.Rows[row_0].Cells[21].AsVariant :='''' + SP.FieldByName('grotpr_okpo').AsString;
              Sheet1.Rows[row_0].Cells[22].AsVariant :=SP.FieldByName('kargoETSNG_name').AsString;
              Sheet1.Rows[row_0].Cells[23].AsVariant :=SP.FieldByName('fact_weight').AsFloat;

              Sheet1.Rows[row_0].Cells[25].AsVariant := SP.FieldByName('num_vagon_r').AsString;

              Sheet1.Rows[row_0].Cells[24].AsVariant := NULL;

              if show_period_of_delivery then begin
                if not SP.FieldByName('date_otpr_r').IsNull then begin
                  Sheet1.Rows[row_0].Cells[26].AsVariant := SP.FieldByName('date_otpr_r').Value;
                end else if not SP.FieldByName('date_arrival').IsNull then begin
                  Sheet1.Rows[row_0].Cells[26].AsVariant := IncDay(SP.FieldByName('date_arrival').Value, 3);
                end else begin
                  Sheet1.Rows[row_0].Cells[24].AsVariant := GetPeriodOfDelivery(SP.FieldByName('node_begin_cod').AsString, SP.FieldByName('node_end_cod').AsString, SP.FieldByName('kargoETSNG_cod').AsString);
                  Sheet1.Rows[row_0].Cells[26].AsVariant := IncDay(SP.FieldByName('date_otpr').Value, 3 + Sheet1.Rows[row_0].Cells[24].AsInteger);
                end;
              end;

              Sheet1.Rows[row_0].Cells[27].AsVariant :=SP.FieldByName('date_otpr_r').Value;
              Sheet1.Rows[row_0].Cells[28].AsVariant :=SP.FieldByName('date_arrival_r').Value;

              Sheet1.Rows[row_0].Cells[30].AsVariant :=SP.FieldByName('node_begin_name_r').AsString;
              Sheet1.Rows[row_0].Cells[31].AsVariant :=SP.FieldByName('node_end_name_r').AsString;
              Sheet1.Rows[row_0].Cells[32].AsVariant :=SP.FieldByName('kargoETSNG_name_r').AsString;
              Sheet1.Rows[row_0].Cells[33].AsVariant :=SP.FieldByName('fact_weight_r').AsFloat;
              Sheet1.Rows[row_0].Cells[34].AsVariant :=SP.FieldByName('date_arrival_r2').Value;
              Sheet1.Rows[row_0].Cells[35].AsVariant :=SP.FieldByName('doc_number_1').AsString;
              Sheet1.Rows[row_0].Cells[36].AsVariant :=SP.FieldByName('doc_number').AsString;
              Sheet1.Rows[row_0].Cells[37].AsVariant :=SP.FieldByName('doc_number_r').AsString;
              Sheet1.Rows[row_0].Cells[38].AsVariant :=SP.FieldByName('poluchgr_1').AsString;
              Sheet1.Rows[row_0].Cells[39].AsVariant :=SP.FieldByName('poluchgr').AsString;
              Sheet1.Rows[row_0].Cells[40].AsVariant :=SP.FieldByName('poluchgr_r').AsString;

              Sheet1.Rows[row_0].Cells[44].AsVariant :=SP.FieldByName('transport_pay_l').AsFloat;
              Sheet1.Rows[row_0].Cells[45].AsVariant :=SP.FieldByName('transport_pay').AsFloat;
              Sheet1.Rows[row_0].Cells[46].AsVariant :=SP.FieldByName('transport_pay_r').AsFloat;

              Sheet1.Rows[row_0].Cells[47].AsVariant :=SP.FieldByName('firm_customer_name').Value;
              Sheet1.Rows[row_0].Cells[48].AsVariant :=SP.FieldByName('type_park_name').AsString;

              Sheet1.Rows[row_0].Cells[53].AsVariant :=SP.FieldByName('arenda_rate').AsFloat;


              Sheet1.Rows[row_0].Cells[41].AsVariant := GetCalcDistanceDB(SP.FieldByName('node_begin_cod_l').AsString, SP.FieldByName('node_end_cod_l').AsString, ADOReport, False, SP.FieldByName('date_otpr').Value);
              Sheet1.Rows[row_0].Cells[43].AsVariant := GetCalcDistanceDB(SP.FieldByName('node_begin_cod_r').AsString, SP.FieldByName('node_end_cod_r').AsString, ADOReport, False, SP.FieldByName('date_otpr').Value);
              dist := GetCalcDistanceDB(SP.FieldByName('node_begin_cod'  ).AsString, SP.FieldByName('node_end_cod'  ).AsString, ADOReport, False, SP.FieldByName('date_otpr').Value);
              Sheet1.Rows[row_0].Cells[42].AsVariant := dist;
              if dist <> 0 then begin
                ClientDS_rate.First;
                while not ClientDS_rate.Eof do begin
                  if (ClientDS_rate.FieldByName('dist1').AsInteger <= dist) and (dist <= ClientDS_rate.FieldByName('dist2').AsInteger) then begin
                    Sheet1.Rows[row_0].Cells[50].AsVariant :=ClientDS_rate.FieldByName('rate').Value;
                    break;
                  end;
                  ClientDS_rate.Next;
                end;
              end;
              Sheet1.Rows[row_0].Cells[57].AsVariant :=SP.FieldByName('rod_vagon_name').AsString;
          end;
    197 : begin
            column_count := 23;
            Sheet1.Rows[row_0].Cells[ 1].AsVariant := SP.FieldByName('num_vagon').Value;
            Sheet1.Rows[row_0].Cells[ 2].AsVariant := SP.FieldByName('node_end_name').AsString;
            Sheet1.Rows[row_0].Cells[ 3].AsVariant := SP.FieldByName('kargoETSNG_name').AsString;
            Sheet1.Rows[row_0].Cells[ 4].AsVariant := SP.FieldByName('fact_weight').AsFloat;
            Sheet1.Rows[row_0].Cells[ 5].AsVariant := SP.FieldByName('node_begin_name').AsString;
            Sheet1.Rows[row_0].Cells[ 6].AsVariant := SP.FieldByName('date_from_to').Value;
            Sheet1.Rows[row_0].Cells[ 7].AsVariant := SP.FieldByName('invNumber').AsString;
            Sheet1.Rows[row_0].Cells[ 8].AsVariant := SP.FieldByName('road_begin_name').AsString;
            Sheet1.Rows[row_0].Cells[ 9].AsVariant := SP.FieldByName('road_end_name').AsString;
            Sheet1.Rows[row_0].Cells[10].AsVariant := SP.FieldByName('invDateExpire').Value;
            Sheet1.Rows[row_0].Cells[11].AsVariant := SP.FieldByName('datpr').AsString;
            Sheet1.Rows[row_0].Cells[12].AsVariant := SP.FieldByName('day_plan').AsString;
            Sheet1.Rows[row_0].Cells[13].AsVariant := SP.FieldByName('day_fact').AsString;
            Sheet1.Rows[row_0].Cells[14].AsVariant := SP.FieldByName('days_later').AsString;
            Sheet1.Rows[row_0].Cells[15].AsVariant := SP.FieldByName('days_earlier').AsString;
            Sheet1.Rows[row_0].Cells[16].AsVariant := SP.FieldByName('days_in_time').AsString;
            Sheet1.Rows[row_0].Cells[17].AsVariant := SP.FieldByName('GR_P').AsString;
            Sheet1.Rows[row_0].Cells[18].AsVariant := SP.FieldByName('day_repare').AsString;
            Sheet1.Rows[row_0].Cells[20].AsVariant := SP.FieldByName('transport_pay_no_nds').AsString;
            Sheet1.Rows[row_0].Cells[23].AsVariant := SP.FieldByName('invPayerName').AsString;
          end;
    end;

    if (SP.RecNo mod 17) = 0 then
      ShowTextMessage('Осталось: ' + IntToStr(SP.RecordCount - SP.RecNo) + 'строк.' , False);

    SP.Next;
    if not SP.Eof then begin
      Spread_RowCopy(Sheet1, row_0, row_0 + 1, 0, column_count);
      row_0 := row_0 + 1;
    end;
  end;


  Spread_RowDelete(Sheet1, row_0+1);
  Sheet1.Containers.Clear();

  ACell    := SpreadSheet.ActiveSheetAsTable.CreateCell(0, 0);
  AComment := SpreadSheet.ActiveSheetAsTable.Containers.AddCommentContainer(ACell) as TdxSpreadSheetCommentContainer;
  AComment.TextBox.TextAsString := 'Шаблон = ' + IntToStr(FType_rep);
  AComment.TextBox.AutoSize := True;
//  TdxSpreadSheetTextBox(AComment.TextBox).WordWrap := True;

  Sheet1.Selection.Clear;
  Sheet1.EndUpdate;
  SpreadSheet.EndUpdate;

  Spread_SaveToFile(SpreadSheet, file_name);

  Sheet1.Free;
  SpreadSheet.Free;
  ADOEtran.Free;
  SP.Free;
  ClientDS_dist.Free;
  ClientDS_rate.Free;

  ShowTextMessage();
end;

procedure TfmRepFactTrack.UpdateCxButtonEdit(Sender: TObject; AButtonIndex: Integer; TableName: string; CapObject: string; Btn1, Btn2: TcxButtonEdit);
var Query1 :TADOQuery;
begin
  Query1 := TADOQuery.Create(nil);
  Query1.Connection := ADOReport;
  case AButtonIndex of
    0 : begin
          Query1.SQL.Add('SELECT inf_obj_id, inf_obj_name, inf_obj_cod FROM ' + TableName + ' WHERE LEFT(' + DateToSQL(cxDateEdit2.EditValue) + ', 6) BETWEEN ISNULL(convert(varchar(6), date_begin, 112), ''190101'') AND ISNULL(convert(varchar(6), date_end, 112), ''210012'') ORDER BY inf_obj_name');
          Query1.Open;
          fmFilter := TfmFilter.Create(0, Query1, 'inf_obj_id', 'inf_obj_cod', 'inf_obj_name');
          fmFilter.Caption := CapObject;
          if fmFilter.ShowModal = mrOk then begin
            Screen.Cursor := crHourglass;
            GetFilterSelectRow(btn1, btn2, nil);
            Screen.Cursor := crDefault;
          end;
        end;

    1 : begin
          SetClear(btn1, btn2);
        end;
  end;

  Query1.Free;
end;



initialization
  dxInitialize;

finalization
  dxFinalize;


end.
