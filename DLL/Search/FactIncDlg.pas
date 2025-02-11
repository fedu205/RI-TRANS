unit FactIncDlg;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, ExtCtrls, ComCtrls, Db, ADODB, DBCtrls, Variants, Default,
  cxControls, cxContainer, cxEdit, cxCheckBox, cxPropertiesStore, cxGroupBox, cxRadioGroup,
  cxGraphics, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxLabel, cxCalendar, cxLookupEdit,
  cxDBLookupEdit, cxDBLookupComboBox, cxDBExtLookupComboBox,
  cxLookAndFeelPainters, cxLookAndFeels, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel,
  dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMetropolis, dxSkinMetropolisDark, dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue,
  dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue,
  dxSkinOffice2010Silver, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinPumpkin,
  dxSkinSeven, dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinTheAsphaltWorld, dxSkinsDefaultPainters, dxSkinValentine, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue, dxCore, cxDateUtils, cxClasses, dxSkinOffice2016Colorful, dxSkinOffice2016Dark, dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark, dxSkinVisualStudio2013Light,
  dxSkinTheBezier, Vcl.Menus, cxButtons, dxSkinOffice2019Colorful, cxMemo,
  dxSkinBasic, dxSkinOffice2019Black, dxSkinOffice2019DarkGray,
  dxSkinOffice2019White, dxSkinWXI;

type
  TFactIncDlgResult = record
    ModalResult   : integer;     {v[0]  ModalResult : TModalResult - Используется для определения нажата ли  кнопка mbOk или нет}
    TypeResult    : byte;        {v[1]  TypeResult: byte - Используется для определения опции "Тип дополнения" в случае, если отмечен "Отчетный период"}
    SQLText       : string;      {v[2]  SQLText : PChar -  Если не отмечен "Отчетный период" в поле SQLText : PChar записывается SQL запрос для Query_FactIncDBF в форме fmFactInc}
    ProcedureName : string;      {v[3]  используется для записи имени процедуры }
    ProcParam1    : integer;     {v[4]  Параметр процедур. номера месяца (cxComboBox1) }
    ProcParam2    : integer;     {v[5]  Параметр процедур. Используется для обозначения номера года (cxComboBox2) }
    ProcParam3    : integer;     {v[6]  Параметр процедур. При выборе типа дополнения "Начисленные платежи"  используется для хранения значения "Экспедитор ЦФТО".  В остальных случаях типа дополнения ("Штрафы", "Охрана", "ТД")    используется для хранения типа расчета (cxRadioGroup1)}
    ProcParam4    : integer;     {v[7]  ProcParam4: integer - Параметр процедур. Используется для типа  передачи расчета (cxRadioGroup1) для типа дополнения "Начисленные платежи" }
end;



type
  TfmFactIncDlg = class(TForm)
    Panel1: TPanel;
    Query_BeginNode: TADOQuery;
    DS_BeginNode: TDataSource;
    Query_EndNode: TADOQuery;
    DS_EndNode: TDataSource;
    Query_KargoETSNG: TADOQuery;
    DS_KargoETSNG: TDataSource;
    Panel8: TPanel;
    cxCheckBox2: TcxCheckBox;
    cxRadioGroup1: TcxRadioGroup;
    cxComboBox1: TcxComboBox;
    cxComboBox2: TcxComboBox;
    ADOConnection1: TADOConnection;
    Query1: TADOQuery;
    DS_FilesName: TDataSource;
    Query_FilesName: TADOQuery;
    cxButton1: TcxButton;
    cxButton3: TcxButton;
    Panel5: TPanel;
    GroupBox2: TGroupBox;
    cxMemo1: TcxMemo;
    Panel11: TPanel;
    Splitter1: TSplitter;
    GroupBox8: TGroupBox;
    cxMemo2: TcxMemo;
    Panel12: TPanel;
    Panel13: TPanel;
    Panel7: TPanel;
    cxLabel9: TcxLabel;
    cxLabel5: TcxLabel;
    cxTextEdit4: TcxTextEdit;
    cxTextEdit5: TcxTextEdit;
    Panel6: TPanel;
    cxCheckBox7: TcxCheckBox;
    cxCheckBox8: TcxCheckBox;
    cxLookupComboBox3: TcxLookupComboBox;
    cxLookupComboBox4: TcxLookupComboBox;
    cxLookupComboBox5: TcxLookupComboBox;
    cxLookupComboBox6: TcxLookupComboBox;
    cxCheckBox6: TcxCheckBox;
    cxLookupComboBox2: TcxLookupComboBox;
    cxLookupComboBox1: TcxLookupComboBox;
    cxLookupComboBox8: TcxLookupComboBox;
    cxCheckBox9: TcxCheckBox;
    GridPanel1: TGridPanel;
    Panel4: TPanel;
    cxRadioGroup4: TcxRadioGroup;
    Panel9: TPanel;
    cxRadioGroup5: TcxRadioGroup;
    Panel10: TPanel;
    cxRadioGroup6: TcxRadioGroup;
    Panel2: TPanel;
    Panel17: TPanel;
    cxLabel6: TcxLabel;
    cxLabel7: TcxLabel;
    cxDateEdit2: TcxDateEdit;
    cxDateEdit1: TcxDateEdit;
    cxCheckBox5: TcxCheckBox;
    cxCheckBox4: TcxCheckBox;
    cxComboBox4: TcxComboBox;
    cxComboBox5: TcxComboBox;
    cxCheckBox3: TcxCheckBox;
    Panel3: TPanel;
    cxLabel1: TcxLabel;
    cxComboBox3: TcxComboBox;
    procedure cxCheckBox3Click(Sender: TObject);
    procedure cxLookupComboBox1PropertiesChange(Sender: TObject);
    procedure cxLookupComboBox2PropertiesChange(Sender: TObject);
    procedure cxLookupComboBox6PropertiesChange(Sender: TObject);
    procedure cxLookupComboBox5PropertiesChange(Sender: TObject);
    procedure cxLookupComboBox4PropertiesChange(Sender: TObject);
    procedure cxLookupComboBox3PropertiesChange(Sender: TObject);
    procedure cxCheckBox7PropertiesChange(Sender: TObject);
    procedure cxCheckBox4PropertiesChange(Sender: TObject);
    procedure cxCheckBox2Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cxCheckBox9PropertiesChange(Sender: TObject);
    procedure cxComboBox4PropertiesEditValueChanged(Sender: TObject);
    procedure cxComboBox5PropertiesEditValueChanged(Sender: TObject);
    procedure cxDateEdit1PropertiesEditValueChanged(Sender: TObject);
    procedure cxDateEdit2PropertiesEditValueChanged(Sender: TObject);
    procedure cxComboBox3PropertiesEditValueChanged(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
  private
    FValueList            : PChar;
    FValueListType        : integer;
    Fusr_pwd              : PUser_pwd;
    Ftype_self             : Integer;

    procedure TypeCheck(Sender:TCxCheckBox;DBL1: TCXLookupComboBox; DBL2:TCXLookupComboBox;DS:TDataSource; key:string);
    function StrToSQL(Value: string; FieldName: string): string;
  public
    constructor Create(App: TApplication; usr_pwd: PUser_pwd; ValueList: PChar; ValueListType: integer; type_self: integer);
  published

  end;

function CreateWndFactIncDlg(AppHandle: THandle; usr_pwd: PUser_pwd; ValueList: PChar; ValueListType: integer; type_self: integer): variant;  //TFactIncDlgResult;

var
  fmFactIncDlg : TfmFactIncDlg;
  FModalResult, FTypeResult, FProcParam1, FProcParam2, FProcParam3, FProcParam4 : integer;

  expeditor, month, year: Integer;
  FSQLText, FProcedureName  : string;
  expeditor_name : string;

implementation
    uses DateUtils, Raznoe, StrUtils;

{$R *.DFM}

function CreateWndFactIncDlg(AppHandle: THandle; usr_pwd: PUser_pwd; ValueList: PChar; ValueListType: integer; type_self: integer): variant; //TFactIncDlgResult;
begin
  try
    Application.Handle := AppHandle;
    fmFactIncDlg := TfmFactIncDlg.Create(Application, usr_pwd, ValueList, ValueListType, type_self);
    if fmFactIncDlg.ShowModal = mrOK then
      Result := VarArrayOf([FModalResult, FTypeResult, FSQLText, FProcedureName,  FProcParam1, FProcParam2,
                            FProcParam3, FProcParam4, expeditor, month, year, expeditor_name])
    else
      Result := VarArrayOf([0, 0, '', '',  '', '', '', '', -9, -9, -9, '']);
  finally
    fmFactIncDlg.Free;
    fmFactIncDlg := nil;
  end;
end;

constructor TfmFactIncDlg.Create(App: TApplication; usr_pwd: PUser_pwd; ValueList: PChar; ValueListType: integer; type_self: integer);
var i : integer;
begin
  Screen.Cursor := crHourglass;

  inherited Create(App);

  Ftype_self := type_self;
  Fusr_pwd := usr_pwd;

  ADOConnection1.ConnectionString := 'Persist Security Info=True;Provider=SQLOLEDB.1;User ID='+usr_pwd^.user_name+';Initial Catalog='+usr_pwd^.catalog+';Data Source='+usr_pwd^.server+';password='+usr_pwd^.user_pass;
  ADOConnection1.Open;

  //------------------------------------
  if LisCheck(ADOConnection1.ConnectionString) then begin
    for i:=2001 to YearOf(Date) + 1 do begin
      cxComboBox2.Properties.Items.Insert(0, IntToStr(i));
      cxComboBox5.Properties.Items.Insert(0, IntToStr(i));
    end;
  end;
  // -------------------------------------

  if Ftype_self < 0 then cxComboBox3.ItemIndex := 0
  else cxComboBox3.ItemIndex := Ftype_self;

  cxCheckBox4PropertiesChange(nil);
  Query_BeginNode.Connection := ADOConnection1;
  Query_EndNode.Connection := ADOConnection1;
  Query_KargoETSNG.Connection := ADOConnection1;
  Query_FilesName.Connection := ADOConnection1;
  Query1.Connection := ADOConnection1;
  Query_BeginNode.Open;
  Query_EndNode.Open;
  Query_KargoETSNG.Open;
  cxCheckBox7PropertiesChange(cxCheckBox7);
  cxCheckBox7PropertiesChange(cxCheckBox8);
  cxCheckBox7PropertiesChange(cxCheckBox6);
  cxComboBox5.Text := IntToStr(YearOf(now));
  cxComboBox4.Enabled := cxCheckBox3.Checked;
  FValueList := ValueList;
  FValueListType := ValueListType;

  cxCheckBox2Click(nil);
  if FValueListType > 0 then begin
    cxCheckBox2.Checked := false;
    case FValueListType of
      1 : cxMemo1.EditValue := ReplaceStr(string(FValueList), ',', #13);
      2 : cxMemo2.EditValue := ReplaceStr(string(FValueList), ',', #13);
    end;
  end;
  cxComboBox2.Text := FormatDateTime('yyyy',Date);

  Screen.Cursor := crDefault;
end;

procedure TfmFactIncDlg.cxButton1Click(Sender: TObject);
var FResultString, str_max_load_id  : string;
    monthStr : string;
    type_self : integer;
begin

  if not cxCheckBox2.Checked then begin

    type_self := -1;
    if cxComboBox3.ItemIndex = 0 then type_self :=  0;
    if cxComboBox3.ItemIndex = 1 then type_self := 12;
    if cxComboBox3.ItemIndex = 2 then type_self := 13;


    FResultString := FResultString + 'SELECT * FROM view_fact_inc_temp WITH (NOLOCK) WHERE (users_group_id = ' + IntToStr(Fusr_pwd.user_group_id) + ')';
    if type_self>-1 then FResultString := FResultString + ' AND (type_self='+IntToStr(type_self)+')';
    Query1.SQL.Text :='SELECT max(max_load_id) AS max_load_id FROM view_fact_inc_temp WHERE (users_group_id = ' + IntToStr(Fusr_pwd.user_group_id) + ') AND (type_self = ' + IntToStr(type_self) + ') AND (LEFT(max_load_id,4) =  ' + cxComboBox5.Text + ')';
    Query1.Open;
    str_max_load_id := Query1.FieldByName('max_load_id').AsString;

    // --------- месяц или год отправления ----------
    if cxCheckBox3.Checked then begin
      monthStr := IntToStr(cxComboBox4.ItemIndex+1);
      if Length(monthStr) = 1 then  monthStr := '0' + monthStr;

      FResultString := FResultString + ' AND (dataot >= ''' + cxComboBox5.Text + monthStr + '01''';
      FResultString := FResultString + ' AND dataot < '  + DateToSQL(IncMonth(StrToDate('01' + FormatSettings.DateSeparator + IntToStr(cxComboBox4.ItemIndex+1)+ FormatSettings.DateSeparator + cxComboBox5.Text), 1)) + ')';
    end else begin
      if str_max_load_id = '' then str_max_load_id := '-9';
      FResultString := FResultString + ' AND max_load_id = ' + str_max_load_id;
    end;

    // -------- период отправления ------------
    if (cxCheckBox4.Checked) and (cxDateEdit1.Text<>'') and (cxDateEdit2.Text<>'') then begin
      FResultString := FResultString + ' AND (dataot >= ''' + FormatDateTime('yyyymmdd', cxDateEdit1.Date) + '''';
      FResultString := FResultString + ' AND dataot < ''' + FormatDateTime('yyyymmdd', cxDateEdit2.Date) + ''')';
    end;


    if (cxCheckBox7.Checked) and (cxLookupComboBox4.Text<>'') then
      FResultString := FResultString + ' AND sto = '+ cxLookupComboBox4.Text;
    if (cxCheckBox8.Checked) and (cxLookupComboBox6.Text<>'') then
      FResultString := FResultString + ' AND stn = '+ cxLookupComboBox6.Text;
    if (cxCheckBox6.Checked) and (cxLookupComboBox1.Text<>'') then
      FResultString := FResultString + ' AND gruz = '+ cxLookupComboBox1.Text;
    case cxRadioGroup4.ItemIndex of
      1 : FResultString := FResultString + ' AND (bargain_id is not NULL)';
      2 : FResultString := FResultString + ' AND (bargain_id is NULL)';
      3 : FResultString := FResultString + ' AND (free_fact = 1)';
    end;

    case cxRadioGroup6.ItemIndex of
      1 : FResultString := FResultString + ' AND (nvag <> 0 AND nvag is not NULL)';
      2 : FResultString := FResultString + ' AND (nkont <> ''00000000000'' AND nkont is not NULL)';
    end;
    case cxRadioGroup5.ItemIndex of
      1 : FResultString := FResultString + ' AND (fval=0)';
      2 : FResultString := FResultString + ' AND (fval<>0)';
    end;

    if Trim(cxMemo1.Text) <> '' then FResultString := FResultString + ' AND (nvag IN (' + MemoToSQL(cxMemo1, 1) + '))';
//    if Trim(cxTextEdit2.Text) <> '' then FResultString := FResultString + StrToSQL(cxTextEdit2.Text, 'nkont');
    if Trim(cxMemo2.Text) <> '' then FResultString := FResultString + ' AND (ndnum IN (' + MemoToSQL(cxMemo2, 1) + '))';


    if Trim(cxTextEdit4.Text) <> '' then FResultString := FResultString + ' AND (podkod IN (' + cxTextEdit4.Text + ') )';
    if Trim(cxTextEdit5.Text) <> '' then FResultString := FResultString + ' AND (id_uch IN ('+cxTextEdit5.Text+'))';

    if (cxCheckBox9.Checked) and (cxLookupComboBox8.Text<>'') then
      FResultString := FResultString + ' AND file_name_dbf = '''+ cxLookupComboBox8.Text + '''';

    FTypeResult := 0;
    FSQLText := FResultString;

  end else begin
    FTypeResult := 1;
    FProcedureName:='sp_fact_inc_month_10_01;1';
    FProcParam1 := cxComboBox1.ItemIndex + 1;
    FProcParam2 := StrToInt(cxComboBox2.Text);
    FProcParam3 := cxComboBox3.ItemIndex;
    FProcParam4 := cxRadioGroup1.ItemIndex;
  end;

  expeditor := cxComboBox3.ItemIndex;
  month := cxComboBox4.ItemIndex + 1;
  year := StrToInt(cxComboBox5.Text);
  expeditor_name := cxComboBox3.Text;

  FModalResult := idOK;
end;

procedure TfmFactIncDlg.cxCheckBox2Click(Sender: TObject);
begin

  cxComboBox1.Enabled := cxCheckBox2.Checked;
  cxComboBox2.Enabled := cxCheckBox2.Checked;
  cxRadioGroup1.Enabled := cxCheckBox2.Checked;
  cxComboBox5.Enabled := not cxCheckBox2.Checked;
  cxCheckBox3.Enabled := not cxCheckBox2.Checked;
  cxComboBox4.Enabled := cxCheckBox3.Checked;
  cxMemo1.Enabled := not cxCheckBox2.Checked;
  cxMemo2.Enabled := not cxCheckBox2.Checked;

  cxRadioGroup4.Enabled := not cxCheckBox2.Checked;
  cxRadioGroup5.Enabled := not cxCheckBox2.Checked;
  cxRadioGroup6.Enabled := not cxCheckBox2.Checked;

  cxCheckBox4.Enabled := not cxCheckBox2.Checked;
  cxCheckBox5.Enabled := not cxCheckBox2.Checked;
  cxCheckBox7.Enabled := not cxCheckBox2.Checked;
  cxCheckBox6.Enabled := not cxCheckBox2.Checked;
  cxCheckBox8.Enabled := not cxCheckBox2.Checked;
  cxCheckBox6.Enabled := not cxCheckBox2.Checked;
  cxTextEdit5.Enabled := not cxCheckBox2.Checked;
  cxTextEdit4.Enabled := not cxCheckBox2.Checked;


  if cxCheckBox2.Checked then begin
    cxComboBox5.Enabled := not cxCheckBox2.Checked;
    cxCheckBox4.Checked := not cxCheckBox2.Checked;
    cxCheckBox5.Checked := not cxCheckBox2.Checked;
    cxCheckBox7.Checked := not cxCheckBox2.Checked;
    cxCheckBox8.Checked := not cxCheckBox2.Checked;
    cxCheckBox6.Checked := not cxCheckBox2.Checked;


    cxComboBox4.Enabled := not cxCheckBox2.Checked;
    cxTextEdit5.Style.Color := clBtnFace;
    cxTextEdit4.Style.Color := clBtnFace;
    cxLookupComboBox3.Properties.ListSource := nil;
    cxLookupComboBox4.Properties.ListSource := nil;
    cxLookupComboBox5.Properties.ListSource := nil;
    cxLookupComboBox6.Properties.ListSource := nil;
    cxLookupComboBox2.Properties.ListSource := nil;
    cxLookupComboBox1.Properties.ListSource := nil;
  end else begin

    cxTextEdit5.Style.Color := clWhite;
    cxTextEdit4.Style.Color := clWhite;
  end;

  if cxCheckBox2.Checked and (cxComboBox1.ItemIndex = -1) then cxComboBox1.ItemIndex := 0;
  if cxCheckBox2.Checked and (cxComboBox2.ItemIndex = -1) then cxComboBox2.ItemIndex := 0;
end;

procedure TfmFactIncDlg.cxCheckBox3Click(Sender: TObject);
begin
  cxComboBox4.Enabled := cxCheckBox3.Checked;
  if cxCheckBox3.Checked then begin
    cxComboBox5.Text := IntToStr(YearOf(now));
    Query1.SQL.Text :='SELECT MAX(max_load_month) AS max_load_month FROM fact_inc_max WHERE max_load_year='+cxComboBox5.Text;
    Query1.Open;
    if Query1.FieldByName('max_load_month').IsNull then begin
      cxComboBox5.Text := IntToStr(StrToInt(cxComboBox5.Text)-1);
      Query1.SQL.Text :='SELECT MAX(max_load_month) AS max_load_month FROM fact_inc_max WHERE max_load_year='+cxComboBox5.Text;
      Query1.Open;
    end;
    cxComboBox4.ItemIndex := Query1.FieldByName('max_load_month').AsInteger - 1;
  end else begin
    cxComboBox4.ItemIndex := - 1;
  end;
  cxCheckBox9PropertiesChange(Sender);
end;

procedure TfmFactIncDlg.cxCheckBox4PropertiesChange(Sender: TObject);
begin
  if not cxCheckBox4.Checked then begin
    Panel17.Enabled := False;
    cxDateEdit1.Enabled := False;
    cxDateEdit2.Enabled := False;
    cxDateEdit1.Text:='';
    cxDateEdit2.Text:='';
  end else begin
    Panel17.Enabled := True;
    cxDateEdit1.Enabled := True;
    cxDateEdit2.Enabled := True;
    cxDateEdit1.Date := Now;
    cxDateEdit2.Date := Now;
  end;
  cxCheckBox9PropertiesChange(Sender);
end;

procedure TfmFactIncDlg.cxCheckBox7PropertiesChange(Sender: TObject);
begin
  case TCheckBox(Sender).Tag of
    1 : TypeCheck(cxCheckBox7, cxLookupComboBox3, cxLookupComboBox4, DS_BeginNode, 'sto');
    2 : TypeCheck(cxCheckBox8, cxLookupComboBox5, cxLookupComboBox6, DS_EndNode, 'stn');
    4 : TypeCheck(cxCheckBox6, cxLookupComboBox2, cxLookupComboBox1, DS_KargoETSNG, 'gruz');
  end;
end;

procedure TfmFactIncDlg.cxCheckBox9PropertiesChange(Sender: TObject);
var monthStr : string;
    file_name: variant;
begin
  Screen.Cursor := crHourGlass;
  if cxCheckBox9.Checked = True then begin
    file_name := cxLookupComboBox8.EditValue;
    cxLookupComboBox8.EditValue := null;

    Query_FilesName.Close;
    Query_FilesName.SQL.Clear;
    Query_FilesName.SQL.Add('SELECT DISTINCT file_name_dbf FROM view_fact_inc_temp WHERE (users_group_id = ' + IntToStr(Fusr_pwd.user_group_id) + ')');

    if cxComboBox3.ItemIndex>-1 then Query_FilesName.SQL.Add(' AND (type_self='+IntToStr(cxComboBox3.ItemIndex)+')');

    if cxCheckBox3.Checked then begin
      monthStr := IntToStr(cxComboBox4.ItemIndex+1);
      if Length(monthStr) = 1 then monthStr := '0' + monthStr;
      Query_FilesName.SQL.Add(' AND (dataot_int >= ' + cxComboBox5.Text + monthStr + '01');
      Query_FilesName.SQL.Add(' AND dataot_int <= ' + cxComboBox5.Text + monthStr + IntToStr(DaysInMonth(StrToDate('01' + FormatSettings.DateSeparator + IntToStr(cxComboBox4.ItemIndex+1)+ FormatSettings.DateSeparator + cxComboBox5.Text))) + ')');
    end else begin
      Query_FilesName.SQL.Add(' AND (dataot_int >= ' + cxComboBox5.Text + '0101');
      Query_FilesName.SQL.Add(' AND dataot_int <= ' + cxComboBox5.Text + '1231)');
    end;

    if (cxCheckBox4.Checked) and (cxDateEdit1.Text<>'') and (cxDateEdit2.Text<>'') then begin
      Query_FilesName.SQL.Add(' AND (dataot_int >= ' + FormatDateTime('yyyymmdd', cxDateEdit1.Date));
      Query_FilesName.SQL.Add(' AND dataot_int <= ' + FormatDateTime('yyyymmdd', cxDateEdit2.Date) + ')');
    end;
    Query_FilesName.SQL.Add('ORDER BY file_name_dbf');
    Query_FilesName.Open;
    cxLookupComboBox8.Enabled := True;
    cxLookupComboBox8.EditValue := Query_FilesName.Lookup('file_name_dbf', file_name, 'file_name_dbf');
  end else begin
    cxLookupComboBox8.EditValue := null;
    cxLookupComboBox8.Enabled := False;
  end;
  Screen.Cursor := crDefault;
end;

procedure TfmFactIncDlg.cxComboBox3PropertiesEditValueChanged(Sender: TObject);
begin
  cxCheckBox9PropertiesChange(Sender);
end;

procedure TfmFactIncDlg.cxComboBox4PropertiesEditValueChanged(Sender: TObject);
begin
  cxCheckBox9PropertiesChange(Sender);
end;

procedure TfmFactIncDlg.cxComboBox5PropertiesEditValueChanged(Sender: TObject);
begin
  cxCheckBox9PropertiesChange(Sender);
end;

procedure TfmFactIncDlg.cxDateEdit1PropertiesEditValueChanged(Sender: TObject);
begin
  cxCheckBox9PropertiesChange(Sender);
end;

procedure TfmFactIncDlg.cxDateEdit2PropertiesEditValueChanged(Sender: TObject);
begin
  cxCheckBox9PropertiesChange(Sender);
end;

procedure TfmFactIncDlg.cxLookupComboBox1PropertiesChange(Sender: TObject);
begin
  cxLookupComboBox2.Properties.OnChange := nil;
  if Query_KargoETSNG.Locate('gruz',cxLookupComboBox1.Text,[]) then cxLookupComboBox2.Text := Query_KargoETSNG.FieldByName('gruz_name').AsString
  else cxLookupComboBox2.Text := '';
  cxLookupComboBox2.Properties.OnChange := cxLookupComboBox2PropertiesChange;
end;

procedure TfmFactIncDlg.cxLookupComboBox2PropertiesChange(Sender: TObject);
begin
  cxLookupComboBox1.Properties.OnChange := nil;
  if Query_KargoETSNG.Locate('gruz_name',cxLookupComboBox2.Text,[]) then cxLookupComboBox1.EditValue := Query_KargoETSNG.FieldByName('gruz').AsString
  else cxLookupComboBox1.EditValue := '';
  cxLookupComboBox1.Properties.OnChange := cxLookupComboBox1PropertiesChange;
end;

procedure TfmFactIncDlg.cxLookupComboBox3PropertiesChange(Sender: TObject);
begin
  cxLookupComboBox4.Properties.OnChange := nil;
  if Query_BeginNode.Locate('sto_name',cxLookupComboBox3.Text,[]) then cxLookupComboBox4.EditValue := Query_BeginNode.FieldByName('sto').AsString
  else  cxLookupComboBox4.EditValue := '';
  cxLookupComboBox4.Properties.OnChange := cxLookupComboBox4PropertiesChange;
end;

procedure TfmFactIncDlg.cxLookupComboBox4PropertiesChange(Sender: TObject);
begin
  cxLookupComboBox3.Properties.OnChange := nil;
  if Query_BeginNode.Locate('sto',cxLookupComboBox4.Text,[]) then  cxLookupComboBox3.Text := Query_BeginNode.FieldByName('sto_name').AsString
  else cxLookupComboBox3.Text := '';
  cxLookupComboBox3.Properties.OnChange := cxLookupComboBox3PropertiesChange;
end;

procedure TfmFactIncDlg.cxLookupComboBox5PropertiesChange(Sender: TObject);
begin
  cxLookupComboBox6.Properties.OnChange := nil;
  if Query_EndNode.Locate('stn_name',cxLookupComboBox5.Text,[]) then  cxLookupComboBox6.EditValue := Query_EndNode.FieldByName('stn').AsString
  else cxLookupComboBox6.EditValue := '';
  cxLookupComboBox6.Properties.OnChange := cxLookupComboBox6PropertiesChange;
end;

procedure TfmFactIncDlg.cxLookupComboBox6PropertiesChange(Sender: TObject);
begin
  cxLookupComboBox5.Properties.OnChange := nil;
  if Query_EndNode.Locate('stn',cxLookupComboBox6.Text,[]) then
  cxLookupComboBox5.Text := Query_EndNode.FieldByName('stn_name').AsString else
  cxLookupComboBox5.Text := '';
  cxLookupComboBox5.Properties.OnChange := cxLookupComboBox5PropertiesChange;
end;


procedure TfmFactIncDlg.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TfmFactIncDlg.TypeCheck(Sender:TCxCheckBox;DBL1: TCXLookupComboBox; DBL2:TCXLookupComboBox;DS:TDataSource; key:string);
begin
  if Sender.Checked then begin
    DBL1.Enabled:=true;
    DBL2.Enabled:=true;
    DBL1.Properties.ListSource := DS;
    DBL2.Properties.ListSource := DS;
  end else begin
    DBL1.Enabled:=false;
    DBL2.Enabled:=false;
    DBL1.Properties.ListSource := nil;
    DBL2.Properties.ListSource := nil;
  end;
end;

function TfmFactIncDlg.StrToSQL(Value: string; FieldName: string): string;
var i    : integer;
    List : TStringList;
begin
  i := 1;
  while i<>0 do begin
    i := Pos(',', Value);
    if i>0 then begin
      delete(Value, i, 1);
      insert(#13, Value, i);
    end;
  end;
  List := TStringList.Create;
  List.Text := Value;
  Result := '';
  for i := 0 to List.Count - 1 do
    if (Trim(List.Strings[i])<>'') then Result := Result + ' OR (UPPER('+FieldName+') LIKE  UPPER(''%'+Trim(List.Strings[i])+'%''))';

  if Result<>'' then begin
    delete(Result, 1, 3);
    Result := ' AND (' + Result + ')';
  end;

  List.Free;
end;



end.
