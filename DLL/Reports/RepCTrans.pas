 unit RepCTrans;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Default,
  Dialogs, ExtCtrls, StdCtrls, Buttons, Menus, DB, ADODB, ImgList, ComCtrls, ImageList,
  cxControls, cxContainer, cxEdit, cxLabel, dxGDIPlusClasses, cxLookAndFeelPainters, cxGraphics, cxRadioGroup, cxButtons, cxButtonEdit,
  cxDropDownEdit, cxCalendar, cxMaskEdit, cxCheckComboBox, cxTextEdit, cxGroupBox, cxPropertiesStore, cxLookAndFeels, dxSkinsCore,
  dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
  dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky,
  dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMetropolis, dxSkinMetropolisDark, dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue,
  dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue, dxSkinOffice2010Silver,
  dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinOffice2016Colorful, dxSkinOffice2016Dark, dxSkinPumpkin,
  dxSkinSeven, dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus, dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008,
  dxSkinTheAsphaltWorld, dxSkinsDefaultPainters, dxSkinValentine, dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, dxSkinVS2010, dxSkinWhiteprint, dxSkinXmas2008Blue, cxCheckBox, dxCore, cxDateUtils, cxClasses,
  cxImageList, dxSkinTheBezier;

type
  TfmRepCTrans = class(TForm)
    Panel2: TPanel;
    BitBtn2: TBitBtn;
    BitBtn1: TBitBtn;
    Panel30: TPanel;
    Image2: TImage;
    cxLabel108: TcxLabel;
    Panel1: TPanel;
    cxGroupBox2: TcxGroupBox;
    Label5: TLabel;
    Label1: TLabel;
    Label4: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    cxTextEdit1: TcxTextEdit;
    cxCheckComboBox3: TcxCheckComboBox;
    cxCheckComboBox2: TcxCheckComboBox;
    Panel3: TPanel;
    Label2: TLabel;
    SpeedButton1: TSpeedButton;
    cxComboBox2: TcxComboBox;
    cxComboBox3: TcxComboBox;
    cxDateEdit1: TcxDateEdit;
    cxDateEdit2: TcxDateEdit;
    cxButtonEdit1: TcxButtonEdit;
    cxButtonEdit2: TcxButtonEdit;
    cxButton1: TcxButton;
    cxButton2: TcxButton;
    cxButton3: TcxButton;
    cxButton4: TcxButton;
    cxGroupBox1: TcxGroupBox;
    cxRadioButton1: TcxRadioButton;
    cxRadioButton2: TcxRadioButton;
    cxImageList_16: TcxImageList;
    ADORepCTrans: TADOConnection;
    cxPropertiesStore1: TcxPropertiesStore;
    cxImageList_11: TcxImageList;
    Query1: TADOQuery;
    cxRadioButton3: TcxRadioButton;
    Label3: TLabel;
    cxTextEdit2: TcxTextEdit;
    cxDateEdit3: TcxDateEdit;
    Label8: TLabel;
    cxComboBox1: TcxComboBox;
    Label9: TLabel;
    procedure cxRadioButton3Click(Sender: TObject);
    procedure cxButton2Click(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure cxDateEdit1PropertiesEditValueChanged(Sender: TObject);
    procedure cxButtonEdit1PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure cxCheckComboBox3PropertiesEditValueChanged(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure SpeedButton1Click(Sender: TObject);
    procedure cxComboBox2PropertiesChange(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
  private
    Ffield_month : string;
  public
    constructor Create(AOwner: TApplication; usr_pwd: PUser_pwd);
    function    GetDataFromCheckBox(cxCheckComboBox : TcxCheckComboBox; isString : boolean) : string;
    procedure   PrintCTransClient();
    procedure   PrintCTransAgent();
    procedure   PrintCTransAct();
  end;

var
  fmRepCTrans: TfmRepCTrans;

function CreateWndRepCTrans(AppHand:THandle; usr_pwd:PUser_pwd) : variant; export;

implementation
  uses Raznoe, Other, ComObj, StrUtils, DateUtils, Registry;

{$R *.dfm}
function CreateWndRepCTrans(AppHand:THandle; usr_pwd:PUser_pwd) : variant;
begin
  Application.Handle := AppHand;
  try
    fmRepCTrans := TfmRepCTrans.Create(Application, usr_pwd);
    if fmRepCTrans.ShowModal = mrOk then result := ''
    else result := '';
  finally
    fmRepCTrans.Free;
  end;
end;

constructor TfmRepCTrans.Create(AOwner: TApplication; usr_pwd:PUser_pwd);
var Reg : TRegistry;
begin
  Screen.Cursor := crHourglass;
  inherited Create(AOwner);
  ADORepCTrans.Connected := False;
  ADORepCTrans.ConnectionString := 'Persist Security Info=True;Provider=SQLOLEDB.1;User ID='+usr_pwd^.user_name+';Password='+usr_pwd^.user_pass+';Initial Catalog='+usr_pwd^.catalog+';Data Source='+usr_pwd^.server+';';
  ADORepCTrans.Connected := True;

  cxComboBox2.Properties.OnChange := nil;
  cxComboBox3.Properties.OnChange := nil;

  Reg := TRegistry.Create;
  Reg.RootKey := HKEY_CURRENT_USER;
  if not Reg.KeyExists('\Software\LIS1\RepCTRansParam\') then Reg.CreateKey('\Software\LIS1\RepCTRansParam\');
  Reg.OpenKey('\Software\LIS1\RepCTRansParam\', True);

  if Reg.ValueExists('contract_date') then begin
    SpeedButton1.Down  := Reg.ReadBool('set_month');
    cxDateEdit1.Date   := Reg.ReadDate('date_USD');
    cxDateEdit2.Date   := Reg.ReadDate('date_EUR');
    cxButtonEdit1.Text := Reg.ReadString('exchange_USD');
    cxButtonEdit2.Text := Reg.ReadString('exchange_EUR');
    cxRadioButton1.Checked := Reg.ReadBool('Report_1');
    cxRadioButton2.Checked := Reg.ReadBool('Report_2');
    cxRadioButton3.Checked := Reg.ReadBool('Report_3');
    cxTextEdit1.Text   := Reg.ReadString('commiss');
    cxComboBox2.ItemIndex := Reg.ReadInteger('month');
    cxComboBox3.ItemIndex := Reg.ReadInteger('year');
    cxTextEdit2.Text := Reg.ReadString('contract_cod');
    cxDateEdit3.Date := Reg.ReadDate('contract_date');
  end else begin
    SpeedButton1.Down  := True;
    cxDateEdit1.Date   := Date;
    cxDateEdit2.Date   := Date;
    cxButtonEdit1.Text := '0';
    cxButtonEdit2.Text := '0';
    cxRadioButton1.Checked := True;
    cxRadioButton2.Checked := False;
    cxTextEdit1.Text   := FloatToStrF(0.003, ffFixed, 4, 4);
    cxComboBox2.ItemIndex := StrToInt(FormatDateTime('m', IncMonth(now,-1)))-1;
    cxComboBox3.ItemIndex := StrToInt(FormatDateTime('yyyy', IncMonth(now,-1))) - 2001;
    cxTextEdit2.Text := '---';
    cxDateEdit3.Date := Date;
  end;
  Reg.Free;

  SpeedButton1Click(nil);
  cxComboBox2.Properties.OnChange := cxComboBox2PropertiesChange;
  cxComboBox3.Properties.OnChange := cxComboBox2PropertiesChange;
  if cxRadioButton1.Checked then cxRadioButton3Click(cxRadioButton1);
  if cxRadioButton2.Checked then cxRadioButton3Click(cxRadioButton2);
  if cxRadioButton3.Checked then cxRadioButton3Click(cxRadioButton3);

  MonitorEventFormOpen('OPEN_FORM', self.Name, ADORepCTrans, -9);
  Screen.Cursor := crDefault;
end;

// получение строки значений из cxCheckComboBox
function TfmRepCTrans.GetDataFromCheckBox(cxCheckComboBox : TcxCheckComboBox; isString : boolean) : string;
var i : integer;
begin
  for i:=0 to cxCheckComboBox.Properties.Items.Count - 1 do
    if cxCheckComboBox.States[i] = cbsChecked then begin
      if not isString then  result := result + ',' + IntToStr(cxCheckComboBox.Properties.Items[i].Tag)
      else result := result + ',''' + cxCheckComboBox.Properties.Items[i].ShortDescription +'''';
    end;
  result := Copy(result, 2, Length(result)-1);
end;


procedure TfmRepCTrans.cxButton1Click(Sender: TObject);
var i : integer;
begin
  Screen.Cursor := crHourglass;
  case TControl(Sender).Tag of
    0: for i := 0 to cxCheckComboBox3.Properties.Items.Count - 1 do
        cxCheckComboBox3.States[i] := cbsChecked;
    1: for i := 0 to cxCheckComboBox2.Properties.Items.Count - 1 do
        cxCheckComboBox2.States[i] := cbsChecked;
  end;
  Screen.Cursor := crDefault;
end;

procedure TfmRepCTrans.cxButton2Click(Sender: TObject);
var i : integer;
begin
  Screen.Cursor := crHourglass;
  case TControl(Sender).Tag of
    0: for i := 0 to cxCheckComboBox3.Properties.Items.Count - 1 do
        cxCheckComboBox3.States[i] := cbsUnchecked;
    1: for i := 0 to cxCheckComboBox2.Properties.Items.Count - 1 do
        cxCheckComboBox2.States[i] := cbsUnchecked;
  end;
  Screen.Cursor := crDefault;
end;

procedure TfmRepCTrans.cxButtonEdit1PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  case TcxButtonEdit(Sender).Tag of
    0 : cxButtonEdit1.Text := FormatFloat('0.0000', GetExchangeNew(1, cxDateEdit1.Date, ADORepCTrans, True));
    1 : cxButtonEdit2.Text := FormatFloat('0.0000', GetExchangeNew(6, cxDateEdit1.Date, ADORepCTrans, True));
  end;
end;

procedure TfmRepCTrans.cxCheckComboBox3PropertiesEditValueChanged(Sender: TObject);
var
  str_sql : string;
begin
  Screen.Cursor := crHourglass;
  cxCheckComboBox2.Properties.Items.Clear;

  if (GetDataFromCheckBox(cxCheckComboBox3,False) <> '') then str_sql := str_sql + ' AND firm_self_client in ('+GetDataFromCheckBox(cxCheckComboBox3,False)+') '
  else str_sql := '';

  Query1.Close;
  Query1.SQL.Clear;
  Query1.SQL.Add('SELECT DISTINCT contract_agent_id, firm_agent_name + '' ('' + isnull(contract_agent_cod,'''') + '')'' as firm_agent_name');
  Query1.SQL.Add('FROM	view_shaping_rate WHERE bargain_id in (');
  Query1.SQL.Add('SELECT bargain_id FROM view_bargain_rights WHERE dbo.func_DateOnly('+Ffield_month+') BETWEEN ');
  Query1.SQL.Add(DateToSQL(StrToDate('01.'+IntToStr(cxComboBox2.ItemIndex + 1)+'.'+cxComboBox3.Text)) + ' AND ');
  Query1.SQL.Add(DateToSQL(IncMonth(StrToDate('01.'+IntToStr(cxComboBox2.ItemIndex + 1)+'.'+cxComboBox3.Text))-1) + ')' + str_sql);
  Query1.SQL.Add('ORDER BY 2');
  Query1.Open;

  while not Query1.Eof do begin
    with cxCheckComboBox2.Properties.Items.Add do begin
      Description := Query1.FieldByName('firm_agent_name').AsString;
      ShortDescription := Query1.FieldByName('firm_agent_name').AsString;
      Tag := Query1.FieldByName('contract_agent_id').AsInteger;
    end;
    Query1.Next;
  end;

  Screen.Cursor := crDefault;
end;

procedure TfmRepCTrans.cxComboBox2PropertiesChange(Sender: TObject);
begin
    Screen.Cursor := crHourglass;

    cxCheckComboBox2.Properties.Items.Clear;
    cxCheckComboBox3.Properties.Items.Clear;
    // заполняем собственные фирмы из приложений, которые есть в указанном месяце
    Query1.Close;
    Query1.SQL.Clear;
    Query1.SQL.Add('SELECT DISTINCT firm_self, firm_self_name FROM view_bargain_rights ');
    Query1.SQL.Add('WHERE dbo.func_DateOnly('+Ffield_month+') BETWEEN ');
    Query1.SQL.Add(DateToSQL(StrToDate('01.'+IntToStr(cxComboBox2.ItemIndex + 1)+'.'+cxComboBox3.Text)) + ' AND ');
    Query1.SQL.Add(DateToSQL(IncMonth(StrToDate('01.'+IntToStr(cxComboBox2.ItemIndex + 1)+'.'+cxComboBox3.Text))-1));
    Query1.SQL.Add('ORDER BY firm_self_name');
    Query1.Open;

    while not Query1.Eof do begin
      with cxCheckComboBox3.Properties.Items.Add do begin
        Description := Query1.FieldByName('firm_self_name').AsString;
        ShortDescription := Query1.FieldByName('firm_self_name').AsString;
        Tag := Query1.FieldByName('firm_self').AsInteger;
      end;
      Query1.Next;
    end;


    Query1.Close;
    Query1.SQL.Clear;
    Query1.SQL.Add('SELECT DISTINCT contract_agent_id, firm_agent_name + '' ('' + isnull(contract_agent_cod,'''') + '')'' as firm_agent_name');
    Query1.SQL.Add('FROM	view_shaping_rate WHERE bargain_id in (');
    Query1.SQL.Add('SELECT bargain_id FROM view_bargain_rights WHERE dbo.func_DateOnly('+Ffield_month+') BETWEEN ');
    Query1.SQL.Add(DateToSQL(StrToDate('01.'+IntToStr(cxComboBox2.ItemIndex + 1)+'.'+cxComboBox3.Text)) + ' AND ');
    Query1.SQL.Add(DateToSQL(IncMonth(StrToDate('01.'+IntToStr(cxComboBox2.ItemIndex + 1)+'.'+cxComboBox3.Text))-1) + ')');
    Query1.SQL.Add('ORDER BY 2');
    Query1.Open;

    while not Query1.Eof do begin
      with cxCheckComboBox2.Properties.Items.Add do begin
        Description := Query1.FieldByName('firm_agent_name').AsString;
        ShortDescription := Query1.FieldByName('firm_agent_name').AsString;
        Tag := Query1.FieldByName('contract_agent_id').AsInteger;
      end;
      Query1.Next;
    end;
  Screen.Cursor := crDefault;
end;

procedure TfmRepCTrans.cxDateEdit1PropertiesEditValueChanged(Sender: TObject);
begin
  if TcxDateEdit(Sender).Tag = 0 then cxButtonEdit1.Text := '';
  if TcxDateEdit(Sender).Tag = 1 then cxButtonEdit2.Text := '';
end;

procedure TfmRepCTrans.cxRadioButton3Click(Sender: TObject);
var Query: TADOQuery;
begin
  case TControl(Sender).Tag of
    0:  begin
          cxTextEdit2.Enabled := False;
          cxDateEdit3.Enabled := False;
        end;
    1:  begin
          cxTextEdit2.Enabled := False;
          cxDateEdit3.Enabled := False;
        end;
    2:  begin
          cxTextEdit2.Enabled := True;
          cxDateEdit3.Enabled := True;
          cxComboBox2.ItemIndex := MonthOf(IncMonth(Date, -1))-1;
          cxComboBox3.ItemIndex := YearOf (IncMonth(Date, -1))-2001;
          cxDateEdit1.Date := Date - DayOf(Date);
          cxDateEdit2.Date := Date - DayOf(Date);

          Query := TADOQuery.Create(nil);
          Query.Connection := ADORepCTrans;

          Query.SQL.Clear;
          Query.SQL.Add('SELECT exchange_val FROM view_exchange_new WHERE exchange_date = ' + DateToSQL(cxDateEdit1.Date) + ' and currency_id = 3 and set_exchange_day = 1');
          Query.Open;
          if Query.FieldByName('exchange_val').IsNull then cxButtonEdit1PropertiesButtonClick(cxButtonEdit1, 0)
          else cxButtonEdit1.Text := Query.FieldByName('exchange_val').AsString;

          Query.SQL.Clear;
          Query.SQL.Add('SELECT exchange_val FROM view_exchange_new WHERE exchange_date = ' + DateToSQL(cxDateEdit2.Date) + ' and currency_id = 6 and set_exchange_day = 1');
          Query.Open;
          if Query.FieldByName('exchange_val').IsNull then cxButtonEdit1PropertiesButtonClick(cxButtonEdit2, 0)
          else cxButtonEdit2.Text := Query.FieldByName('exchange_val').AsString;

          Query.Free;
        end;
  end;
end;

procedure TfmRepCTrans.FormClose(Sender: TObject; var Action: TCloseAction);
var Reg : TRegistry;
begin
  Reg := TRegistry.Create;
  Reg.RootKey := HKEY_CURRENT_USER;
  if not Reg.KeyExists('\Software\LIS1\RepCTRansParam\') then Reg.CreateKey('\Software\LIS1\RepCTRansParam\');
  Reg.OpenKey('\Software\LIS1\RepCTRansParam\', True);

  Reg.WriteBool('set_month', SpeedButton1.Down);
  Reg.WriteDate('date_USD', cxDateEdit1.Date);
  Reg.WriteDate('date_EUR', cxDateEdit2.Date);
  Reg.WriteString('exchange_USD', cxButtonEdit1.Text);
  Reg.WriteString('exchange_EUR', cxButtonEdit2.Text);
  Reg.WriteBool('Report_1', cxRadioButton1.Checked);
  Reg.WriteBool('Report_2', cxRadioButton2.Checked);
  Reg.WriteBool('Report_3', cxRadioButton3.Checked);
  Reg.WriteString('commiss', cxTextEdit1.Text);
  Reg.WriteInteger('month', cxComboBox2.ItemIndex);
  Reg.WriteInteger('year', cxComboBox3.ItemIndex);
  Reg.WriteString('contract_cod', cxTextEdit2.Text);
  Reg.WriteDate('contract_date', cxDateEdit3.Date);

  Reg.Free;
  Action := caFree;
end;

procedure TfmRepCTrans.SpeedButton1Click(Sender: TObject);
begin
  if not SpeedButton1.Down then begin
    SpeedButton1.Glyph := nil;
    cxImageList_16.GetBitmap(0, SpeedButton1.Glyph);
    Label2.Caption    := 'Перевозочный месяц ........';
    SpeedButton1.Hint := 'Сменить на ФИНАНСОВЫЙ месяц';
    Ffield_month := 'date_period';
    Panel3.Color := clBtnFace;
  end else begin
    SpeedButton1.Glyph := nil;
    cxImageList_16.GetBitmap(1, SpeedButton1.Glyph);
    Label2.Caption    := 'Финансовый месяц ..........';
    SpeedButton1.Hint := 'Сменить на ПЕРЕВОЗОЧНЫЙ месяц';
    Ffield_month := 'date_period_finance';
    Panel3.Color := clMoneyGreen;
  end;
  cxComboBox2PropertiesChange(Sender);
end;

procedure TfmRepCTrans.BitBtn1Click(Sender: TObject);
begin

  if GetDataFromCheckBox(cxCheckComboBox3, False) = '' then begin
    ShowMessage('Не выбрана собственная организация.');
    Exit;
  end;

//  if GetDataFromCheckBox(cxCheckComboBox2, False) = '' then begin
//    ShowMessage('Не выбраны подрядчики.');
//    Exit;
//  end; 

  if cxRadioButton1.Checked then PrintCTransClient();
  if cxRadioButton2.Checked then PrintCTransAgent();
  if cxRadioButton3.Checked then PrintCTransAct();
end;

procedure TfmRepCTrans.PrintCTransClient();
var
  exApp, exWkb, exWks : Variant;
  str_sum, FIO_users, str_sum_com, str : string;
  line_cnt, line_cnt_group     : integer;
  bargain_id, contract_id, k : integer;
  Fdate1, Fdate2 : TDateTime;
  str_firm_self_id      : string;
  str_agent_contract_id : string;
  set_finance_date      : boolean;
  commiss : Double;
  SP_TNK_C_Trans_buh: TADOStoredProc;
begin
  Screen.Cursor := crHourglass;
  ShowTextMessage('Запуск сервера автоматизации...',False);
  exApp := CreateOleObject('Excel.Application');
  exWkb := exApp.Workbooks.Add(GetDocBlob(ADORepCTrans, 53, 9, True)); // 'С-Транс взаиморасчет.xls'
  exWkb := exApp.ActiveWorkbook;
  exWks := exWkb.WorkSheets[1];
  exWks.Select;
//  exApp.Visible := True;

  str_firm_self_id      := GetDataFromCheckBox(cxCheckComboBox3, False);
  str_agent_contract_id := GetDataFromCheckBox(cxCheckComboBox2, False);
  set_finance_date      := SpeedButton1.Down;
  commiss := StrToFloatDef(cxTextEdit1.EditValue,0);
  Fdate1  := StrToDate('01.'+IntToStr(cxComboBox2.ItemIndex + 1)+'.'+cxComboBox3.Text);
  Fdate2  := IncMonth(Fdate1)-1;

  Query1.SQL.Clear;
  Query1.SQL.Add('SELECT FIO_users FROM users WHERE users_name = system_user');
  Query1.Open;
  FIO_users := Query1.FieldByName('FIO_users').AsString;

  SP_TNK_C_Trans_buh := TADOStoredProc.Create(nil);
  SP_TNK_C_Trans_buh.Connection := ADORepCTrans;
  SP_TNK_C_Trans_buh.ProcedureName := 'sp_TNK_C_Trans_buh';
  SP_TNK_C_Trans_buh.Parameters.Refresh;
  SP_TNK_C_Trans_buh.Parameters.ParamByName('@str_firm_self_id').Value := str_firm_self_id;
  SP_TNK_C_Trans_buh.Parameters.ParamByName('@str_agent_contract_id').Value := str_agent_contract_id;
  SP_TNK_C_Trans_buh.Parameters.ParamByName('@set_finance_date').Value := set_finance_date;
  SP_TNK_C_Trans_buh.Parameters.ParamByName('@date_begin').Value := Fdate1;
  SP_TNK_C_Trans_buh.Parameters.ParamByName('@date_end').Value := Fdate2;
  SP_TNK_C_Trans_buh.Parameters.ParamByName('@commiss').Value := commiss;
  SP_TNK_C_Trans_buh.Parameters.ParamByName('@set_client').Value := 0;

  SP_TNK_C_Trans_buh.Open;

  exWks.Range['B1'].Value := 'Отчет по организации перевозок';

  if SpeedButton1.Down then exWks.Range['B2'].Value := 'за период с ' + FormatDateTime('dd.mm.yyyy', Fdate1) + ' по ' + FormatDateTime('dd.mm.yyyy', Fdate2) + '. (Финансовый месяц)'
  else exWks.Range['B2'].Value := 'за период с ' + FormatDateTime('dd.mm.yyyy', Fdate1) + ' по ' + FormatDateTime('dd.mm.yyyy', Fdate2) + '. (Перевозочный месяц)';

  exWks.Range['D4'].Value := 'OOO "__________"';
  exWks.Range['D5'].Value := 'ОOО "__________"';
  exWks.Range['D6'].Value := '';

  exWks.Range['B7'].Value := 'Курс USD на ' + FormatDateTime('dd.mm.yyyy', cxDateEdit1.Date);
  exWks.Range['B8'].Value := 'Курс EUR на ' + FormatDateTime('dd.mm.yyyy', cxDateEdit2.Date);
  exWks.Range['E7'].Value := StrToFloatDef(cxButtonEdit1.Text, 0);
  exWks.Range['E8'].Value := StrToFloatDef(cxButtonEdit2.Text, 0);

  exWks.Range['S23'].Value:= '/' + FIO_users + '/';

  bargain_id := -1;
  line_cnt   := 12;
  line_cnt_group := 12;
  while not SP_TNK_C_Trans_buh.Eof do begin
    ShowTextMessage('Идет вывод информации: '+IntToStr(SP_TNK_C_Trans_buh.RecNo)+' из '+IntToStr(SP_TNK_C_Trans_buh.RecordCount) + '...', False);
    exWks.Rows[IntToStr(line_cnt)].Copy;
    exWks.Rows[IntToStr(line_cnt+1)].Insert;

    if bargain_id <> SP_TNK_C_Trans_buh.FieldByName('bargain_id').AsInteger then begin
      if bargain_id <> -1 then begin
        exWks.Cells[line_cnt_group, 17].Value := str_sum;
        exWks.Cells[line_cnt_group, 18].Value := str_sum;
        if str_sum_com <> '' then  exWks.Cells[line_cnt_group, 19].Value := str_sum_com
        else exWks.Cells[line_cnt_group, 19].Value := 0;
        exWks.Cells[line_cnt_group, 22].Value := '=ROUND(IF(RC[-1]=18,RC[-3]-RC[-3]/1.18,0),2)';
        str_sum_com := '';

        Excel_MergeCells(exWks, 'B', 'B', line_cnt_group, line_cnt-1);
        Excel_MergeCells(exWks, 'C', 'C', line_cnt_group, line_cnt-1);
        Excel_MergeCells(exWks, 'D', 'D', line_cnt_group, line_cnt-1);
        Excel_MergeCells(exWks, 'E', 'E', line_cnt_group, line_cnt-1);
        Excel_MergeCells(exWks, 'F', 'F', line_cnt_group, line_cnt-1);
        Excel_MergeCells(exWks, 'G', 'G', line_cnt_group, line_cnt-1);
        Excel_MergeCells(exWks, 'H', 'H', line_cnt_group, line_cnt-1, -4152);
        Excel_MergeCells(exWks, 'I', 'I', line_cnt_group, line_cnt-1);
        Excel_MergeCells(exWks, 'J', 'J', line_cnt_group, line_cnt-1, -4152);
        //--
        Excel_MergeCells(exWks, 'Q', 'Q', line_cnt_group, line_cnt-1, -4152);
        Excel_MergeCells(exWks, 'R', 'R', line_cnt_group, line_cnt-1, -4152);
        Excel_MergeCells(exWks, 'S', 'S', line_cnt_group, line_cnt-1, -4152);
        Excel_MergeCells(exWks, 'T', 'T', line_cnt_group, line_cnt-1, -4152);
        Excel_MergeCells(exWks, 'U', 'U', line_cnt_group, line_cnt-1, -4152);
        Excel_MergeCells(exWks, 'V', 'V', line_cnt_group, line_cnt-1, -4152);
        Excel_MergeCells(exWks, 'W', 'W', line_cnt_group, line_cnt-1);
      end;

      exWks.Cells[line_cnt, 2].Value := SP_TNK_C_Trans_buh.FieldByName('bargain_id').AsString;
      exWks.Cells[line_cnt, 3].Value := SP_TNK_C_Trans_buh.FieldByName('bargain_cod').AsString;
      exWks.Cells[line_cnt, 4].Value := SP_TNK_C_Trans_buh.FieldByName('node_begin_name').AsString;
      exWks.Cells[line_cnt, 5].Value := SP_TNK_C_Trans_buh.FieldByName('node_end_name').AsString;
      exWks.Cells[line_cnt, 6].Value := SP_TNK_C_Trans_buh.FieldByName('kargoETSNG_name').AsString;
      exWks.Cells[line_cnt, 7].Value := SP_TNK_C_Trans_buh.FieldByName('custom_name').AsString;
//      exWks.Cells[line_cnt, 8].Value := Query_Buh.FieldByName('bargain_sum_fact').AsCurrency;
      exWks.Cells[line_cnt, 9].Value := SP_TNK_C_Trans_buh.FieldByName('client_brief_name').AsString;
      if not SP_TNK_C_Trans_buh.FieldByName('bargain_correct_type').IsNull then
        case SP_TNK_C_Trans_buh.FieldByName('bargain_correct_type').AsInteger of
          0: exWks.Cells[line_cnt,23].Value := 'осн.';
          1: exWks.Cells[line_cnt,23].Value := 'удл.';
          2: exWks.Cells[line_cnt,23].Value := 'кор.';
        end;


      if SP_TNK_C_Trans_buh.FieldByName('bargain_nds_cod').IsNull then
          exWks.Cells[line_cnt, 21].Value := ''
      else
        if SP_TNK_C_Trans_buh.FieldByName('bargain_nds_cod').AsString = '0' then
          exWks.Cells[line_cnt, 21].Value := ''
        else
          exWks.Cells[line_cnt, 21].Value := SP_TNK_C_Trans_buh.FieldByName('bargain_nds_cod').AsString;

      case SP_TNK_C_Trans_buh.FieldByName('client_currency_id').AsInteger of
        1: exWks.Cells[line_cnt,  8].Value := '=ROUND(RC[2]/R[-' + IntToStr(5+line_cnt-12) + ']C[-3],2)';
        3: exWks.Cells[line_cnt,  8].Value := '=RC[2]';
        6: exWks.Cells[line_cnt,  8].Value := '=ROUND(RC[2]/R[-' + IntToStr(4+line_cnt-12) + ']C[-3],2)';
      end;

      exWks.Cells[line_cnt, 10].Value := '=RC[7]+RC[9]';

      case SP_TNK_C_Trans_buh.FieldByName('client_currency_id').AsInteger of
        1: exWks.Cells[line_cnt, 20].Value := '=ROUND(RC[-1]/R[-' + IntToStr(5+line_cnt-12) + ']C[-15],2)';
        3: exWks.Cells[line_cnt, 20].Value := '=RC[-1]';
        6: exWks.Cells[line_cnt, 20].Value := '=ROUND(RC[-1]/R[-' + IntToStr(4+line_cnt-12) + ']C[-15],2)';
      end;


      str_sum     := '=RC[-2]';
      if SP_TNK_C_Trans_buh.FieldByName('set_agent').AsInteger = 1 then begin
        case SP_TNK_C_Trans_buh.FieldByName('client_currency_id').AsInteger of
          1: str_sum_com := '=ROUND(ROUND(RC[-6]*' +ReplaceStr(FloatToStr(commiss), ',', '.') +',2)*R[-' + IntToStr(5+line_cnt-12) + ']C[-14],2)';
          3: str_sum_com := '=ROUND(RC[-6]*' + ReplaceStr(FloatToStr(commiss), ',', '.') + ',2)';
          6: str_sum_com := '=ROUND(ROUND(RC[-6]*' +ReplaceStr(FloatToStr(commiss), ',', '.') +',2)*R[-' + IntToStr(4+line_cnt-12) + ']C[-14],2)';
        end;
      end;

      bargain_id := SP_TNK_C_Trans_buh.FieldByName('bargain_id').AsInteger;
      line_cnt_group := line_cnt;
    end;

    exWks.Cells[line_cnt, 11].Value := SP_TNK_C_Trans_buh.FieldByName('firm_agent_name').AsString;
    exWks.Cells[line_cnt, 12].Value := SP_TNK_C_Trans_buh.FieldByName('agent_contract_cod').AsString;
    exWks.Cells[line_cnt, 13].Value := SP_TNK_C_Trans_buh.FieldByName('agent_sum_fact_real').AsCurrency;
    exWks.Cells[line_cnt, 14].Value := SP_TNK_C_Trans_buh.FieldByName('agent_brief_name').AsString;

    case SP_TNK_C_Trans_buh.FieldByName('agent_currency_id').AsInteger of
      1: exWks.Cells[line_cnt, 15].Value := '=ROUND(RC[-2]*R[-' + IntToStr(5+line_cnt-12) + ']C[-10],2)';
      3: exWks.Cells[line_cnt, 15].Value := '=RC[-2]';
      6: exWks.Cells[line_cnt, 15].Value := '=ROUND(RC[-2]*R[-' + IntToStr(4+line_cnt-12) + ']C[-10],2)';
    end;

    if SP_TNK_C_Trans_buh.FieldByName('agent_currency_id').AsInteger = SP_TNK_C_Trans_buh.FieldByName('client_currency_id').AsInteger then begin
      exWks.Cells[line_cnt, 16].Value := '=RC[-3]';
    end else begin
      case SP_TNK_C_Trans_buh.FieldByName('client_currency_id').AsInteger of
        1: exWks.Cells[line_cnt, 16].Value := '=ROUND(RC[-1]/R[-' + IntToStr(5+line_cnt-12) + ']C[-11],2)';
        3: exWks.Cells[line_cnt, 16].Value := '=RC[-1]';
        6: exWks.Cells[line_cnt, 16].Value := '=ROUND(RC[-1]/R[-' + IntToStr(4+line_cnt-12) + ']C[-11],2)';
      end;
    end;


    if (line_cnt - line_cnt_group) <> 0 then  str_sum     := str_sum     + '+R[' + IntToStr(line_cnt - line_cnt_group) + ']C[-2]';
    if (line_cnt - line_cnt_group) <> 0 then begin
      if SP_TNK_C_Trans_buh.FieldByName('set_agent').AsInteger = 1 then begin
        case SP_TNK_C_Trans_buh.FieldByName('agent_currency_id').AsInteger of

          1: str := 'ROUND(ROUND(R[' + IntToStr(line_cnt - line_cnt_group)+ ']C[-6]*' + ReplaceStr(FloatToStr(commiss), ',', '.') + ',2)*R[-' + IntToStr(5 + line_cnt_group - 12) + ']C[-14],2)';
          3: str := 'ROUND(R[' + IntToStr(line_cnt - line_cnt_group) + ']C[-6]*' + ReplaceStr(FloatToStr(commiss), ',', '.') + ',2)';
          6: str := 'ROUND(ROUND(R[' + IntToStr(line_cnt - line_cnt_group) + ']C[-6]*' + ReplaceStr(FloatToStr(commiss), ',', '.') + ',2)*R[-' + IntToStr(4 + line_cnt_group - 12) + ']C[-14],2)';
        end;
        if str_sum_com <> '' then str_sum_com := str_sum_com + '+' + str
        else str_sum_com := '=' + str;
      end;
//     str_sum_com := str_sum_com + '+R[' + IntToStr(line_cnt - line_cnt_group) + ']C[-6]';
    end;

    line_cnt := line_cnt + 1;
    SP_TNK_C_Trans_buh.Next;
    if SP_TNK_C_Trans_buh.Eof then begin
      exWks.Cells[line_cnt_group, 17].Value := str_sum;
      exWks.Cells[line_cnt_group, 18].Value := str_sum;
      if str_sum_com <> '' then  exWks.Cells[line_cnt_group, 19].Value := str_sum_com
      else exWks.Cells[line_cnt_group, 19].Value := 0;
      exWks.Cells[line_cnt_group, 22].Value := '=ROUND(IF(RC[-1]=18,RC[-3]-RC[-3]/1.18,0),2)';
      str_sum_com := '';

      Excel_MergeCells(exWks, 'B', 'B', line_cnt_group, line_cnt-1);
      Excel_MergeCells(exWks, 'C', 'C', line_cnt_group, line_cnt-1);
      Excel_MergeCells(exWks, 'D', 'D', line_cnt_group, line_cnt-1);
      Excel_MergeCells(exWks, 'E', 'E', line_cnt_group, line_cnt-1);
      Excel_MergeCells(exWks, 'F', 'F', line_cnt_group, line_cnt-1);
      Excel_MergeCells(exWks, 'G', 'G', line_cnt_group, line_cnt-1);
      Excel_MergeCells(exWks, 'H', 'H', line_cnt_group, line_cnt-1, -4152);
      Excel_MergeCells(exWks, 'I', 'I', line_cnt_group, line_cnt-1);
      Excel_MergeCells(exWks, 'J', 'J', line_cnt_group, line_cnt-1, -4152);
      //--
      Excel_MergeCells(exWks, 'Q', 'Q', line_cnt_group, line_cnt-1, -4152);
      Excel_MergeCells(exWks, 'R', 'R', line_cnt_group, line_cnt-1, -4152);
      Excel_MergeCells(exWks, 'S', 'S', line_cnt_group, line_cnt-1, -4152);
      Excel_MergeCells(exWks, 'T', 'T', line_cnt_group, line_cnt-1, -4152);
      Excel_MergeCells(exWks, 'U', 'U', line_cnt_group, line_cnt-1, -4152);
      Excel_MergeCells(exWks, 'V', 'V', line_cnt_group, line_cnt-1, -4152);
      Excel_MergeCells(exWks, 'W', 'W', line_cnt_group, line_cnt-1);
    end;
  end;
  exWks.Rows[IntToStr(line_cnt)].Delete;
  exWks.Rows[IntToStr(line_cnt)].Delete;

  line_cnt := line_cnt + 5;
  SP_TNK_C_Trans_buh.Recordset := SP_TNK_C_Trans_buh.NextRecordset(k);

  while not SP_TNK_C_Trans_buh.Eof do begin
    ShowTextMessage('Идет вывод информации: '+IntToStr(SP_TNK_C_Trans_buh.RecNo)+' из '+IntToStr(SP_TNK_C_Trans_buh.RecordCount) + '...', False);
    exWks.Rows[IntToStr(line_cnt)].Copy;
    exWks.Rows[IntToStr(line_cnt+1)].Insert;

    exWks.Cells[line_cnt, 6].Value := SP_TNK_C_Trans_buh.FieldByName('firm_agent_name').AsString;
    exWks.Cells[line_cnt, 7].Value := SP_TNK_C_Trans_buh.FieldByName('agent_contract_cod').AsString;
    exWks.Cells[line_cnt, 8].Value := SP_TNK_C_Trans_buh.FieldByName('agent_sum_fact_real').AsCurrency;
    exWks.Cells[line_cnt, 9].Value := SP_TNK_C_Trans_buh.FieldByName('agent_brief_name').AsString;

    case SP_TNK_C_Trans_buh.FieldByName('agent_currency_id').AsInteger of
      1: exWks.Cells[line_cnt, 10].Value := '=RC[-2]*R[-' + IntToStr(5+line_cnt-12) + ']C[-5]';
      3: exWks.Cells[line_cnt, 10].Value := '=RC[-2]';
      6: exWks.Cells[line_cnt, 10].Value := '=RC[-2]*R[-' + IntToStr(4+line_cnt-12) + ']C[-5]';
    end;

    line_cnt := line_cnt + 1;
    SP_TNK_C_Trans_buh.Next;
  end;

  exWks.Rows[IntToStr(line_cnt)].Delete;
  exWks.Rows[IntToStr(line_cnt)].Delete;
  exWks.Range['A1'].Select;

  SP_TNK_C_Trans_buh.Free;
  exApp.CutCopyMode := False;
  exApp.Visible := True;
  VarClear(exWks); VarClear(exWkb); VarClear(exApp);
  ShowTextMessage();
  Screen.Cursor := crDefault;
end;


procedure TfmRepCTrans.PrintCTransAct();
var SP_TNK_c_trans        : TADOStoredProc;
    exApp,exWkb, exWks    : variant;
    line_cnt, row         : integer;
    str_bargain_id        : string;
    monitor_report_id     : integer;
    str_firm_self_id      : string;
    str_agent_contract_id : string;
    set_finance_date      : boolean;
    Query: TADOQuery;
    commiss : Double;
    Fdate1, Fdate2 : TDateTime;
    exchange_USD : Double;
    exchange_EUR : Double;
begin
  Screen.Cursor := crHourglass;

  ShowTextMessage('Запуск сервера автоматизации ...',false);

  str_firm_self_id      := GetDataFromCheckBox(cxCheckComboBox3, False);
  str_agent_contract_id := GetDataFromCheckBox(cxCheckComboBox2, False);
  set_finance_date      := SpeedButton1.Down;
  commiss := StrToFloatDef(cxTextEdit1.EditValue,0);
  Fdate1  := StrToDate('01.'+IntToStr(cxComboBox2.ItemIndex + 1)+'.'+cxComboBox3.Text);
  Fdate2  := IncMonth(Fdate1)-1;
  exchange_USD := StrToFloatDef(cxButtonEdit1.Text,-1);
  exchange_EUR := StrToFloatDef(cxButtonEdit2.Text,-1);


  exApp := CreateOleObject('Excel.Application');
  exWkb := exApp.Workbooks.Add(GetDocBlob(ADORepCTrans, 54, 9, True)); // 'С-Транс Баланс клиента.xls'
  exWks := exApp.WorkSheets[1];

  Query := TADOQuery.Create(nil);
  Query.Connection := ADORepCTrans;
  Query.SQL.Add('SELECT	replace(cast(cast(');
  Query.SQL.Add('(	SELECT	bargain_id ');
  Query.SQL.Add('   FROM	view_bargain_rights');
  Query.SQL.Add('   WHERE	firm_self in (' + str_firm_self_id + ')');
  Query.SQL.Add('         AND bargain_sum_fact is NOT NULL ');
  Query.SQL.Add('         AND ' + Ffield_month + ' between ' + DateToSQL(Fdate1) + ' and ' + DateToSQL(Fdate2));
  Query.SQL.Add('FOR XML AUTO) as xml).query(''for $x in /view_bargain_rights return data($x/@bargain_id)'') as varchar(max)), '' '', '','') as str_bargain_id');
  Query.Open;

  str_bargain_id := Query.FieldByName('str_bargain_id').AsString;

  Query.SQL.Clear;
  Query.SQL.Add('SELECT');
  Query.SQL.Add('date_period, kargoETSNG_name,');
  Query.SQL.Add('isnull(node_begin_name + '' - '','''') + isnull(node_end_name,'''') route_name,');
  Query.SQL.Add('sum(isnull(amount_units_fact,0)) as amount_units_fact,');
  Query.SQL.Add('sum(isnull(fact_weight,0)) as fact_weight,');
  Query.SQL.Add('sum(isnull(amount_fact,0)) as amount_fact,');
  Query.SQL.Add('sum(');
  Query.SQL.Add('case when contract_agent_id not in (' + str_agent_contract_id + ')');
  Query.SQL.Add('then');
  Query.SQL.Add('    case when currency_id = 1 then round(agent_sum_fact_real*' + FloatToSQL(exchange_USD) + ',2) + round(round(isnull(agent_sum_fact_real,0)*' + FloatToSQL(commiss) + ',2)*' +  FloatToSQL(exchange_USD) +  ',2)');
  Query.SQL.Add('         when currency_id = 3 then round(agent_sum_fact_real,2)                                  + round(round(isnull(agent_sum_fact_real,0)*' + FloatToSQL(commiss) + ',2),2)');
  Query.SQL.Add('         when currency_id = 6 then round(agent_sum_fact_real*' + FloatToSQL(exchange_EUR) + ',2) + round(round(isnull(agent_sum_fact_real,0)*' + FloatToSQL(commiss) + ',2)*' +  FloatToSQL(exchange_EUR) +  ',2)');
  Query.SQL.Add('    end');
  Query.SQL.Add('else');
  Query.SQL.Add('    case when currency_id = 1 then round(isnull(agent_sum_fact_real,0)*' + FloatToSQL(exchange_USD) + ',2)');
  Query.SQL.Add('         when currency_id = 3 then round(isnull(agent_sum_fact_real,0),2)');
  Query.SQL.Add('         when currency_id = 6 then round(isnull(agent_sum_fact_real,0)*' + FloatToSQL(exchange_EUR) + ',2)');
  Query.SQL.Add('    end');
  Query.SQL.Add('end ) as agent_sum_fact_real,');
  Query.SQL.Add('case when contract_agent_id not in (' + str_agent_contract_id + ') then 1 else 0 end set_agent');
  Query.SQL.Add('FROM view_fraht_agent WHERE bargain_id in (SELECT bargain_id FROM dbo.Bargain_Check_Correct_STR('''+str_bargain_id+'''))');
  Query.SQL.Add('GROUP BY');
  Query.SQL.Add('case when contract_agent_id not in (' + str_agent_contract_id + ') then 1 else 0 end,');
  Query.SQL.Add('date_period, isnull(node_begin_name + '' - '','''') + isnull(node_end_name,''''), kargoETSNG_name');
  Query.Open;

  line_cnt := 10;
  exWks.Range['A2'].Value := 'по договору № ' + cxTextEdit2.Text + ' от ' + DateToStr(cxDateEdit3.Date);
  exWks.Range['A3'].Value := 'c 1 ' + array_month_balance[StrToInt(FormatDateTime('m', Fdate1))]+' '+FormatDateTime('yyyy', Fdate1)+ 'г. по ' + FormatDateTime('dd', Fdate2) + ' ' + array_month_balance[StrToInt(FormatDateTime('m', Fdate2))]+ FormatDateTime(' yyyy г.', Fdate2);
  exWks.Range['C5'].Value := 'ОOО "_________" (агент)';
  exWks.Range['C6'].Value := 'ООО "_________" (клиент)';


  while not Query.Eof do begin
    ShowTextMessage('Осталось '+IntToStr(Query.RecNo)+' из '+IntToStr(Query.RecordCount), False);
    if  Query.FieldByName('set_agent').AsInteger = 1 then begin
      exWks.Rows[IntToStr(line_cnt+1)].Insert;
      exWks.Rows[IntToStr(line_cnt)].Copy;
      exWks.Rows[IntToStr(line_cnt+1)].PasteSpecial(1);
      exWks.Range['A'+IntToStr(line_cnt)].Value := FormatDateTime('mmm yy', Query.FieldByName('date_period').AsDateTime);
      exWks.Range['B'+IntToStr(line_cnt)].Value := line_cnt - 9;
      exWks.Range['C'+IntToStr(line_cnt)].Value := Query.FieldByName('route_name').AsString;
      if Query.FieldByName('kargoETSNG_name').IsNull then exWks.Range['D'+IntToStr(line_cnt)].Value := Query.FieldByName('kargoGNG_name').AsString
      else exWks.Range['D'+IntToStr(line_cnt)].Value := Query.FieldByName('kargoETSNG_name').AsString;

      exWks.Range['E'+IntToStr(line_cnt)].Value := Query.FieldByName('amount_units_fact').AsFloat;
      exWks.Range['F'+IntToStr(line_cnt)].Value := Query.FieldByName('fact_weight').AsFloat;
      exWks.Range['G'+IntToStr(line_cnt)].Value := Query.FieldByName('amount_fact').AsFloat;
      exWks.Range['H'+IntToStr(line_cnt)].Value := Query.FieldByName('agent_sum_fact_real').AsFloat;
      
      line_cnt := line_cnt + 1;
    end;
    Query.Next;
  end;

  exWks.Rows[IntTostr(line_cnt)].Delete;
  exWks.Rows[IntTostr(line_cnt)].Delete;

  exWks.Range['A'+IntToStr(line_cnt+4)].Value :=
  'Вышеперечисленные услуги выполнены полностью и в срок. Клиент претензий по объему, качеству и срокам оказания услуг не имеет.'+#10+
  'Настоящий Акт составлен в двух экземплярах для каждой из Сторон и является неотъемлемой частью договора № ' + cxTextEdit2.Text + ' от ' + DateToStr(cxDateEdit3.Date);

  exWks.Range['C'+IntToStr(line_cnt+7)].Value := 'ОOО "__________"';
  exWks.Range['F'+IntToStr(line_cnt+7)].Value := 'ООО "__________"';

  exWks.Select;
  exWks.Range['A1'].Select;
  exApp.CutCopyMode := False;

  ShowTextMessage();
  Query.Free;
  exApp.Visible := True;
  exWks := Null; exWkb := Null; exApp := Null;
  VarClear(exWks); VarClear(exWkb);  VarClear(exApp);
  Screen.Cursor := crDefault;
end;



procedure TfmRepCTrans.PrintCTransAgent();
var
  exApp, exWkb, exWks : Variant;
  str_sum, FIO_users, str : string;
  line_cnt, line_cnt_group     : integer;
  bargain_id, contract_id, k : integer;
  Fdate1, Fdate2 : TDateTime;
  monitor_report_id : integer;
  str_firm_self_id      : string;
  str_agent_contract_id : string;
  set_finance_date      : boolean;
  commiss : Double;
  SP_TNK_C_Trans_buh: TADOStoredProc;
begin
  Screen.Cursor := crHourglass;
  ShowTextMessage('Запуск сервера автоматизации...',False);
  exApp := CreateOleObject('Excel.Application');
  exWkb := exApp.Workbooks.Add(GetDocBlob(ADORepCTrans, 53, 9, True)); // 'С-Транс взаиморасчет.xls'
  exWkb := exApp.ActiveWorkbook;
  exWks := exWkb.WorkSheets[1];
  exWks.Select;
//  exApp.Visible := True;

  str_firm_self_id      := GetDataFromCheckBox(cxCheckComboBox3, False);
  str_agent_contract_id := GetDataFromCheckBox(cxCheckComboBox2, False);
  set_finance_date      := SpeedButton1.Down;
  commiss := StrToFloatDef(cxTextEdit1.EditValue,0);
  Fdate1  := StrToDate('01.'+IntToStr(cxComboBox2.ItemIndex + 1)+'.'+cxComboBox3.Text);
  Fdate2  := IncMonth(Fdate1)-1;

  Query1.SQL.Clear;
  Query1.SQL.Add('SELECT FIO_users FROM users WHERE users_name = system_user');
  Query1.Open;
  FIO_users := Query1.FieldByName('FIO_users').AsString;

  SP_TNK_C_Trans_buh := TADOStoredProc.Create(nil);
  SP_TNK_C_Trans_buh.Connection := ADORepCTrans;
  SP_TNK_C_Trans_buh.ProcedureName := 'sp_TNK_C_Trans_buh';
  SP_TNK_C_Trans_buh.Parameters.Refresh;
  SP_TNK_C_Trans_buh.Parameters.ParamByName('@str_firm_self_id').Value := str_firm_self_id;
  SP_TNK_C_Trans_buh.Parameters.ParamByName('@str_agent_contract_id').Value := str_agent_contract_id;
  SP_TNK_C_Trans_buh.Parameters.ParamByName('@set_finance_date').Value := set_finance_date;
  SP_TNK_C_Trans_buh.Parameters.ParamByName('@date_begin').Value := Fdate1;
  SP_TNK_C_Trans_buh.Parameters.ParamByName('@date_end').Value := Fdate2;
  SP_TNK_C_Trans_buh.Parameters.ParamByName('@commiss').Value := commiss;
  SP_TNK_C_Trans_buh.Parameters.ParamByName('@set_client').Value := 1;

  SP_TNK_C_Trans_buh.Open;

  exWks.Range['B1'].Value := 'Отчет по организации перевозок';

  if SpeedButton1.Down then exWks.Range['B2'].Value := 'за период с ' + FormatDateTime('dd.mm.yyyy', Fdate1) + ' по ' + FormatDateTime('dd.mm.yyyy', Fdate2) + '. (Финансовый месяц)'
  else exWks.Range['B2'].Value := 'за период с ' + FormatDateTime('dd.mm.yyyy', Fdate1) + ' по ' + FormatDateTime('dd.mm.yyyy', Fdate2) + '. (Перевозочный месяц)';

  exWks.Range['D4'].Value := 'ЗАО "ТНК"';
  exWks.Range['D5'].Value := 'OOO "___________"';
  exWks.Range['D6'].Value := 'ТВХ-0109/07';

  exWks.Range['B7'].Value := 'Курс USD на ' + FormatDateTime('dd.mm.yyyy', cxDateEdit1.Date);
  exWks.Range['B8'].Value := 'Курс EUR на ' + FormatDateTime('dd.mm.yyyy', cxDateEdit2.Date);
  exWks.Range['E7'].Value := StrToFloatDef(cxButtonEdit1.Text, 0);
  exWks.Range['E8'].Value := StrToFloatDef(cxButtonEdit2.Text, 0);

  exWks.Range['S23'].Value:= '/' + FIO_users + '/';

  bargain_id := -1;
  line_cnt   := 12;
  line_cnt_group := 12;
  while not SP_TNK_C_Trans_buh.Eof do begin
    ShowTextMessage('Идет вывод информации: '+IntToStr(SP_TNK_C_Trans_buh.RecNo)+' из '+IntToStr(SP_TNK_C_Trans_buh.RecordCount) + '...', False);
    exWks.Rows[IntToStr(line_cnt)].Copy;
    exWks.Rows[IntToStr(line_cnt+1)].Insert;

    if bargain_id <> SP_TNK_C_Trans_buh.FieldByName('bargain_id').AsInteger then begin
      if bargain_id <> -1 then begin
        exWks.Cells[line_cnt_group, 17].Value := str_sum;
        exWks.Cells[line_cnt_group, 18].Value := str_sum;
        exWks.Cells[line_cnt_group, 19].Value := '=RC[-9]-RC[-2]';
        exWks.Cells[line_cnt_group, 20].Value := '=RC[-12]-RC[-2]';
        exWks.Cells[line_cnt_group, 22].Value := '=ROUND(IF(RC[-1]=18,RC[-3]-RC[-3]/1.18,0),2)';

        Excel_MergeCells(exWks, 'B', 'B', line_cnt_group, line_cnt-1);
        Excel_MergeCells(exWks, 'C', 'C', line_cnt_group, line_cnt-1);
        Excel_MergeCells(exWks, 'D', 'D', line_cnt_group, line_cnt-1);
        Excel_MergeCells(exWks, 'E', 'E', line_cnt_group, line_cnt-1);
        Excel_MergeCells(exWks, 'F', 'F', line_cnt_group, line_cnt-1);
        Excel_MergeCells(exWks, 'G', 'G', line_cnt_group, line_cnt-1);
        Excel_MergeCells(exWks, 'H', 'H', line_cnt_group, line_cnt-1, -4152);
        Excel_MergeCells(exWks, 'I', 'I', line_cnt_group, line_cnt-1);
        Excel_MergeCells(exWks, 'J', 'J', line_cnt_group, line_cnt-1, -4152);
        //--
        Excel_MergeCells(exWks, 'Q', 'Q', line_cnt_group, line_cnt-1, -4152);
        Excel_MergeCells(exWks, 'R', 'R', line_cnt_group, line_cnt-1, -4152);
        Excel_MergeCells(exWks, 'S', 'S', line_cnt_group, line_cnt-1, -4152);
        Excel_MergeCells(exWks, 'T', 'T', line_cnt_group, line_cnt-1, -4152);
        Excel_MergeCells(exWks, 'U', 'U', line_cnt_group, line_cnt-1, -4152);
        Excel_MergeCells(exWks, 'V', 'V', line_cnt_group, line_cnt-1, -4152);
        Excel_MergeCells(exWks, 'W', 'W', line_cnt_group, line_cnt-1);
      end;

      exWks.Cells[line_cnt, 2].Value := SP_TNK_C_Trans_buh.FieldByName('bargain_id').AsString;
      exWks.Cells[line_cnt, 3].Value := SP_TNK_C_Trans_buh.FieldByName('bargain_cod').AsString;
      exWks.Cells[line_cnt, 4].Value := SP_TNK_C_Trans_buh.FieldByName('node_begin_name').AsString;
      exWks.Cells[line_cnt, 5].Value := SP_TNK_C_Trans_buh.FieldByName('node_end_name').AsString;
      exWks.Cells[line_cnt, 6].Value := SP_TNK_C_Trans_buh.FieldByName('kargoETSNG_name').AsString;
      exWks.Cells[line_cnt, 7].Value := SP_TNK_C_Trans_buh.FieldByName('custom_name').AsString;
      exWks.Cells[line_cnt, 8].Value := SP_TNK_C_Trans_buh.FieldByName('bargain_sum_fact').AsCurrency;
      exWks.Cells[line_cnt, 9].Value := SP_TNK_C_Trans_buh.FieldByName('client_brief_name').AsString;
      if not SP_TNK_C_Trans_buh.FieldByName('bargain_correct_type').IsNull then
        case SP_TNK_C_Trans_buh.FieldByName('bargain_correct_type').AsInteger of
          0: exWks.Cells[line_cnt,23].Value := 'осн.';
          1: exWks.Cells[line_cnt,23].Value := 'удл.';
          2: exWks.Cells[line_cnt,23].Value := 'кор.';
        end;


      if SP_TNK_C_Trans_buh.FieldByName('bargain_nds_cod').IsNull then
          exWks.Cells[line_cnt, 21].Value := ''
      else
        if SP_TNK_C_Trans_buh.FieldByName('bargain_nds_cod').AsString = '0' then
          exWks.Cells[line_cnt, 21].Value := ''
        else
          exWks.Cells[line_cnt, 21].Value := SP_TNK_C_Trans_buh.FieldByName('bargain_nds_cod').AsString;

      case SP_TNK_C_Trans_buh.FieldByName('client_currency_id').AsInteger of
        1: exWks.Cells[line_cnt, 10].Value := '=ROUND(RC[-2]*R[-' + IntToStr(5+line_cnt-12) + ']C[-5],2)';
        3: exWks.Cells[line_cnt, 10].Value := '=RC[-2]';
        6: exWks.Cells[line_cnt, 10].Value := '=ROUND(RC[-2]*R[-' + IntToStr(4+line_cnt-12) + ']C[-5],2)';
      end;

//      case SP_TNK_C_Trans_buh.FieldByName('client_currency_id').AsInteger of
//        1: exWks.Cells[line_cnt, 20].Value := '=ROUND(RC[-1]*R[-' + IntToStr(5+line_cnt-12) + ']C[-15],2)';
//        3: exWks.Cells[line_cnt, 20].Value := '=RC[-1]';
//        6: exWks.Cells[line_cnt, 20].Value := '=ROUND(RC[-1]*R[-' + IntToStr(4+line_cnt-12) + ']C[-15],2)';
//      end;


      str_sum     := '=RC[-2]';
      bargain_id := SP_TNK_C_Trans_buh.FieldByName('bargain_id').AsInteger;
      line_cnt_group := line_cnt;
    end;

    if SP_TNK_c_trans_buh.FieldByName('set_agent').AsInteger = 1 then  begin
      exWks.Cells[line_cnt, 11].Value := 'ОOО __________';
      exWks.Cells[line_cnt, 12].Value := '';
      exWks.Cells[line_cnt, 13].Value := '=ROUND(' + ReplaceStr(FloatToStr(SP_TNK_C_Trans_buh.FieldByName('agent_sum_fact_real').AsCurrency),',','.') + '*' + ReplaceStr(FloatToStr(1+commiss), ',', '.') + ',2)';
    end else  begin
      exWks.Cells[line_cnt, 11].Value := SP_TNK_C_Trans_buh.FieldByName('firm_agent_name').AsString;
      exWks.Cells[line_cnt, 12].Value := SP_TNK_C_Trans_buh.FieldByName('agent_contract_cod').AsString;
      exWks.Cells[line_cnt, 13].Value := SP_TNK_C_Trans_buh.FieldByName('agent_sum_fact_real').AsCurrency;
    end;
    exWks.Cells[line_cnt, 14].Value := SP_TNK_C_Trans_buh.FieldByName('agent_brief_name').AsString;

    case SP_TNK_C_Trans_buh.FieldByName('agent_currency_id').AsInteger of
      1: exWks.Cells[line_cnt, 15].Value := '=ROUND(RC[-2]*R[-' + IntToStr(5+line_cnt-12) + ']C[-10],2)';
      3: exWks.Cells[line_cnt, 15].Value := '=RC[-2]';
      6: exWks.Cells[line_cnt, 15].Value := '=ROUND(RC[-2]*R[-' + IntToStr(4+line_cnt-12) + ']C[-10],2)';
    end;

    if SP_TNK_C_Trans_buh.FieldByName('agent_currency_id').AsInteger = SP_TNK_C_Trans_buh.FieldByName('client_currency_id').AsInteger then begin
      exWks.Cells[line_cnt, 16].Value := '=RC[-3]';
    end else begin
      case SP_TNK_C_Trans_buh.FieldByName('client_currency_id').AsInteger of
        1: exWks.Cells[line_cnt, 16].Value := '=ROUND(RC[-1]/R[-' + IntToStr(5+line_cnt-12) + ']C[-11],2)';
        3: exWks.Cells[line_cnt, 16].Value := '=RC[-1]';
        6: exWks.Cells[line_cnt, 16].Value := '=ROUND(RC[-1]/R[-' + IntToStr(4+line_cnt-12) + ']C[-11],2)';
      end;
    end;


    if (line_cnt - line_cnt_group) <> 0 then  str_sum     := str_sum     + '+R[' + IntToStr(line_cnt - line_cnt_group) + ']C[-2]';

    line_cnt := line_cnt + 1;
    SP_TNK_C_Trans_buh.Next;
    if SP_TNK_C_Trans_buh.Eof then begin
      exWks.Cells[line_cnt_group, 17].Value := str_sum;
      exWks.Cells[line_cnt_group, 18].Value := str_sum;
      exWks.Cells[line_cnt_group, 19].Value := '=RC[-9]-RC[-2]';
      exWks.Cells[line_cnt_group, 20].Value := '=RC[-12]-RC[-2]';
      exWks.Cells[line_cnt_group, 22].Value := '=ROUND(IF(RC[-1]=18,RC[-3]-RC[-3]/1.18,0),2)';

      Excel_MergeCells(exWks, 'B', 'B', line_cnt_group, line_cnt-1);
      Excel_MergeCells(exWks, 'C', 'C', line_cnt_group, line_cnt-1);
      Excel_MergeCells(exWks, 'D', 'D', line_cnt_group, line_cnt-1);
      Excel_MergeCells(exWks, 'E', 'E', line_cnt_group, line_cnt-1);
      Excel_MergeCells(exWks, 'F', 'F', line_cnt_group, line_cnt-1);
      Excel_MergeCells(exWks, 'G', 'G', line_cnt_group, line_cnt-1);
      Excel_MergeCells(exWks, 'H', 'H', line_cnt_group, line_cnt-1, -4152);
      Excel_MergeCells(exWks, 'I', 'I', line_cnt_group, line_cnt-1);
      Excel_MergeCells(exWks, 'J', 'J', line_cnt_group, line_cnt-1, -4152);
      //--
      Excel_MergeCells(exWks, 'Q', 'Q', line_cnt_group, line_cnt-1, -4152);
      Excel_MergeCells(exWks, 'R', 'R', line_cnt_group, line_cnt-1, -4152);
      Excel_MergeCells(exWks, 'S', 'S', line_cnt_group, line_cnt-1, -4152);
      Excel_MergeCells(exWks, 'T', 'T', line_cnt_group, line_cnt-1, -4152);
      Excel_MergeCells(exWks, 'U', 'U', line_cnt_group, line_cnt-1, -4152);
      Excel_MergeCells(exWks, 'V', 'V', line_cnt_group, line_cnt-1, -4152);
      Excel_MergeCells(exWks, 'W', 'W', line_cnt_group, line_cnt-1);
    end;
  end;
  exWks.Rows[IntToStr(line_cnt)].Delete;
  exWks.Rows[IntToStr(line_cnt)].Delete;

  line_cnt := line_cnt + 5;
  SP_TNK_C_Trans_buh.Recordset := SP_TNK_C_Trans_buh.NextRecordset(k);

  while not SP_TNK_C_Trans_buh.Eof do begin
    ShowTextMessage('Идет вывод информации: '+IntToStr(SP_TNK_C_Trans_buh.RecNo)+' из '+IntToStr(SP_TNK_C_Trans_buh.RecordCount) + '...', False);
    exWks.Rows[IntToStr(line_cnt)].Copy;
    exWks.Rows[IntToStr(line_cnt+1)].Insert;

    exWks.Cells[line_cnt, 6].Value := SP_TNK_C_Trans_buh.FieldByName('firm_agent_name').AsString;
    exWks.Cells[line_cnt, 7].Value := SP_TNK_C_Trans_buh.FieldByName('agent_contract_cod').AsString;
    exWks.Cells[line_cnt, 8].Value := SP_TNK_C_Trans_buh.FieldByName('agent_sum_fact_real').AsCurrency;
    exWks.Cells[line_cnt, 9].Value := SP_TNK_C_Trans_buh.FieldByName('agent_brief_name').AsString;

    case SP_TNK_C_Trans_buh.FieldByName('agent_currency_id').AsInteger of
      1: exWks.Cells[line_cnt, 10].Value := '=RC[-2]*R[-' + IntToStr(5+line_cnt-12) + ']C[-5]';
      3: exWks.Cells[line_cnt, 10].Value := '=RC[-2]';
      6: exWks.Cells[line_cnt, 10].Value := '=RC[-2]*R[-' + IntToStr(4+line_cnt-12) + ']C[-5]';
    end;

    line_cnt := line_cnt + 1;
    SP_TNK_C_Trans_buh.Next;
  end;

  exWks.Rows[IntToStr(line_cnt)].Delete;
  exWks.Rows[IntToStr(line_cnt)].Delete;
  exWks.Range['A1'].Select;

  SP_TNK_C_Trans_buh.Free;
  exApp.CutCopyMode := False;
  exApp.Visible := True;
  VarClear(exWks); VarClear(exWkb); VarClear(exApp);
  ShowTextMessage();
  Screen.Cursor := crDefault;
end;

end.
