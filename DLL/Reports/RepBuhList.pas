unit RepBuhList;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Default,
  Dialogs, ExtCtrls, ImageList, ImgList, StdCtrls, DB, ADODB, DBClient, ComObj, Menus,
  cxGraphics, cxDropDownEdit, cxControls, cxContainer, cxEdit, cxCheckComboBox, cxCheckBox, cxPropertiesStore, cxRadioGroup, cxMaskEdit,
  cxGroupBox, cxLabel, dxGDIPlusClasses, cxLookAndFeelPainters, cxButtons, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, cxTextEdit,
  cxCalendar, cxButtonEdit, cxLookAndFeels, dxSkinsCore, dxSkinsDefaultPainters, dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel,
  dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans,
  dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMetropolis,
  dxSkinMetropolisDark, dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013DarkGray,
  dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus, dxSkinSilver,
  dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008, dxSkinTheAsphaltWorld, dxSkinValentine, dxSkinVS2010, dxSkinWhiteprint, dxSkinXmas2008Blue,
  ComCtrls, dxCore, cxDateUtils, cxClasses, dxSkinOffice2016Colorful, dxSkinOffice2016Dark, dxSkinVisualStudio2013Blue,
  dxSkinVisualStudio2013Dark, dxSkinVisualStudio2013Light, cxImageList, dxSkinTheBezier;

type
  TfmFrahtBuhDlg = class(TForm)
    ADOFrahtBuhDlg: TADOConnection;
    Query1: TADOQuery;
    cxPropertiesStore1: TcxPropertiesStore;
    Panel30: TPanel;
    Image2: TImage;
    cxLabel108: TcxLabel;
    Panel7: TPanel;
    cxGroupBox1: TcxGroupBox;
    cxGroupBox2: TcxGroupBox;
    Label6: TLabel;
    cxImageList_16: TcxImageList;
    Panel1: TPanel;
    Label2: TLabel;
    cxComboBox2: TcxComboBox;
    cxComboBox3: TcxComboBox;
    cxRadioButton4: TcxRadioButton;
    Label7: TLabel;
    Label8: TLabel;
    Query_Client: TADOQuery;
    DS_Client: TDataSource;
    cxDateEdit1: TcxDateEdit;
    cxDateEdit2: TcxDateEdit;
    cxButtonEdit1: TcxButtonEdit;
    cxButtonEdit2: TcxButtonEdit;
    cxRadioButton5: TcxRadioButton;
    Panel2: TPanel;
    cxButton7: TcxButton;
    cxButton8: TcxButton;
    cxCheckComboBox4: TcxCheckComboBox;
    Query2: TADOQuery;
    Panel3: TPanel;
    Label9: TLabel;
    cxComboBox1: TcxComboBox;
    Label10: TLabel;
    cxComboBox5: TcxComboBox;
    cxComboBox6: TcxComboBox;
    cxComboBox4: TcxComboBox;
    cxCheckBox7: TcxCheckBox;
    Label11: TLabel;
    cxRadioButton6: TcxRadioButton;
    Label13: TLabel;
    cxButtonEdit4: TcxButtonEdit;
    cxDateEdit3: TcxDateEdit;
    Query_Currency: TADOQuery;
    DS_Currency: TDataSource;
    cxLookupComboBox3: TcxLookupComboBox;
    Label1: TLabel;
    cxCheckComboBox1: TcxCheckComboBox;
    Query_UsersList: TADOQuery;
    cxButton1: TcxButton;
    cxButton3: TcxButton;
    cxButton2: TcxButton;
    cxButton4: TcxButton;
    procedure cxCheckComboBox4PropertiesClickCheck(Sender: TObject;  ItemIndex: Integer; var AllowToggle: Boolean);
    procedure cxDateEdit2PropertiesEditValueChanged(Sender: TObject);
    procedure cxButtonEdit1PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure cxRadioButton3Click(Sender: TObject);
    procedure cxComboBox2PropertiesChange(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cxLookupComboBox3PropertiesEditValueChanged(Sender: TObject);
    procedure cxButton7Click(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure cxButton8Click(Sender: TObject);
    procedure cxButton2Click(Sender: TObject);
  private
    Fusr_pwd      : PUser_pwd;

    FResultString : string;
    Fcommiss      : double;
    Fexchange_USD : double;
    Fexchange_EUR : double;
    Fexchange_CHF : double;
    Ffield_month  : string;
    Fset_field_month_finance : Boolean;
    function GetDataFromCheckBox(cxCheckComboBox : TcxCheckComboBox; isString : boolean) : string;
  public
    constructor Create(AOwner: TApplication; usr_pwd: PUser_pwd);
    procedure   PrintListBuh_Client();
    procedure   PrintListBuh_Agent();
    procedure   PrintClientBalansGrow();
//    function    GetExchange(_curr_id:integer; _date:TDatetime; exchange_day: boolean; set_field_return: string = 'exchange_val_USD'):double;
  end;


var
  fmFrahtBuhDlg: TfmFrahtBuhDlg;

function CreateWndFrahtBuhDlg(AppHand:THandle; usr_pwd:PUser_pwd) : variant; export;

implementation
  uses Filter, Raznoe, StrUtils, Other, DateUtils, Period, Math, Registry;

{$R *.dfm}
function CreateWndFrahtBuhDlg(AppHand:THandle; usr_pwd:PUser_pwd) : variant;
begin
  Application.Handle := AppHand;
  try
    fmFrahtBuhDlg := TfmFrahtBuhDlg.Create(Application, usr_pwd);

    if fmFrahtBuhDlg.Height < 460 then fmFrahtBuhDlg.Height := 460;
    if fmFrahtBuhDlg.Width  < 670 then fmFrahtBuhDlg.Width  := 670;

    if fmFrahtBuhDlg.ShowModal = mrOk then result := VarArrayOf([fmFrahtBuhDlg.FResultString, fmFrahtBuhDlg.Fcommiss])
    else result := '';
  finally
    fmFrahtBuhDlg.Free;
  end;
end;


constructor TfmFrahtBuhDlg.Create(AOwner: TApplication; usr_pwd:PUser_pwd);
var Reg : TRegistry;
begin
  Screen.Cursor := crHourglass;
  inherited Create(AOwner);
  Fusr_pwd := usr_pwd;
  ADOFrahtBuhDlg.Connected := False;
  ADOFrahtBuhDlg.ConnectionString := 'Persist Security Info=True;Provider=SQLOLEDB.1;User ID='+usr_pwd^.user_name+';Password='+usr_pwd^.user_pass+';Initial Catalog='+usr_pwd^.catalog+';Data Source='+usr_pwd^.server+';';
  ADOFrahtBuhDlg.Connected := True;

  cxComboBox2.Properties.OnChange := nil;
  cxComboBox3.Properties.OnChange := nil;
  cxComboBox1.Properties.OnChange := nil;
  cxComboBox4.Properties.OnChange := nil;
  cxComboBox5.Properties.OnChange := nil;
  cxComboBox6.Properties.OnChange := nil;

  cxRadioButton4.OnClick := nil;
  cxRadioButton5.OnClick := nil;
  cxRadioButton6.OnClick := nil;

  cxComboBox2.ItemIndex := MonthOf(IncMonth(Date, -1)) - 1;
  cxComboBox3.ItemIndex := YearOf(IncMonth(Date, -1)) - 2001;

  cxComboBox1.ItemIndex := cxComboBox2.ItemIndex;
  cxComboBox4.ItemIndex := cxComboBox3.ItemIndex;
  cxComboBox5.ItemIndex := cxComboBox2.ItemIndex;
  cxComboBox6.ItemIndex := cxComboBox3.ItemIndex;

  Query_Currency.Open;
  cxLookupComboBox3.EditValue := Query_Currency.FieldByName('currency_id').Value;


  Reg := TRegistry.Create;
  Reg.RootKey := HKEY_CURRENT_USER;
  if not Reg.KeyExists('\Software\LIS1\RepBunList\') then Reg.CreateKey('\Software\LIS1\RepBunList\');
  Reg.OpenKey('\Software\LIS1\RepBunList\', True);

  if Reg.ValueExists('date_CHF') then begin
    cxDateEdit1.Date   := Reg.ReadDate('date_USD');
    cxDateEdit2.Date   := Reg.ReadDate('date_EUR');
    cxDateEdit3.Date   := Reg.ReadDate('date_CHF');
    cxButtonEdit1.Text := Reg.ReadString('exchange_USD');
    cxButtonEdit2.Text := Reg.ReadString('exchange_EUR');
    cxButtonEdit4.Text := Reg.ReadString('exchange_CHF');
    cxButton2.SpeedButtonOptions.Down := Reg.ReadBool('set_month');
    cxRadioButton4.Checked := Reg.ReadBool('Report_4');
    cxRadioButton5.Checked := Reg.ReadBool('Report_5');
    cxRadioButton6.Checked := Reg.ReadBool('Report_6');
  end else begin
    cxDateEdit1.Date := Date;
    cxDateEdit2.Date := Date;
    cxDateEdit3.Date := Date;
    cxButtonEdit1.Text := '';
    cxButtonEdit2.Text := '';
    cxButtonEdit4.Text := '';
    cxButton2.SpeedButtonOptions.Down := True;
    cxRadioButton4.Checked := False;
    cxRadioButton5.Checked := True;
    cxRadioButton6.Checked := False;

    Reg.WriteBool('set_month', cxButton2.SpeedButtonOptions.Down);
    Reg.WriteBool('Report_4', cxRadioButton4.Checked);
    Reg.WriteBool('Report_5', cxRadioButton5.Checked);
    Reg.WriteBool('Report_6', cxRadioButton6.Checked);
    Reg.WriteDate('date_USD', cxDateEdit1.Date);
    Reg.WriteDate('date_EUR', cxDateEdit2.Date);
    Reg.WriteDate('date_CHF', cxDateEdit3.Date);
    Reg.WriteString('exchange_USD', cxButtonEdit1.Text);
    Reg.WriteString('exchange_EUR', cxButtonEdit2.Text);
    Reg.WriteString('exchange_CHF', cxButtonEdit4.Text);
  end;
  Reg.Free;


  cxButton2Click(cxButton2);
//  SpeedButton1Click(SpeedButton1);

  cxRadioButton4.OnClick := cxRadioButton3Click;
  cxRadioButton5.OnClick := cxRadioButton3Click;
  cxRadioButton6.OnClick := cxRadioButton3Click;
  cxComboBox1.Properties.OnChange := cxComboBox2PropertiesChange;
  cxComboBox2.Properties.OnChange := cxComboBox2PropertiesChange;
  cxComboBox3.Properties.OnChange := cxComboBox2PropertiesChange;
  cxComboBox4.Properties.OnChange := cxComboBox2PropertiesChange;
  cxComboBox5.Properties.OnChange := cxComboBox2PropertiesChange;
  cxComboBox6.Properties.OnChange := cxComboBox2PropertiesChange;

  if cxRadioButton4.Checked then cxRadioButton3Click(cxRadioButton4);
  if cxRadioButton5.Checked then cxRadioButton3Click(cxRadioButton5);
  if cxRadioButton6.Checked then cxRadioButton3Click(cxRadioButton6);

  cxCheckComboBox1.Enabled := usr_pwd.user_func.Locate('func_name', 'set_consolidate_reports', [loCaseInsensitive]);

  // Запоним список временных
  Query_UsersList.Open;

  cxCheckComboBox1.Properties.Items.Clear;
  while not Query_UsersList.Eof do begin
    with cxCheckComboBox1.Properties.Items.Add do begin
      Description := Query_UsersList.FieldByName('firm_name').AsString;
      ShortDescription := Query_UsersList.FieldByName('firm_name').AsString;
      Tag := Query_UsersList.FieldByName('users_id').AsInteger;
      if Query_UsersList.FieldByName('set_default').AsBoolean then begin
        cxCheckComboBox1.SetItemState(ID, cbsChecked);
      end;
    end;
    Query_UsersList.Next;
  end;

  MonitorEventFormOpen('OPEN_FORM', self.Name, ADOFrahtBuhDlg, -9);
  Screen.Cursor := crDefault;
end;

procedure TfmFrahtBuhDlg.cxButton1Click(Sender: TObject);
var
          str_sql : string;
   str_bargain_id : string;
  BargainClientDS : TClientDataSet;
begin

  Fexchange_USD := StrToFloatDef(cxButtonEdit1.Text, 0);
  Fexchange_EUR := StrToFloatDef(cxButtonEdit2.Text, 0);
  Fexchange_CHF := StrToFloatDef(cxButtonEdit4.Text, 0);

  if cxRadioButton4.Checked then begin
    if StrToIntDef(GetDataFromCheckBox(cxCheckComboBox4, False), -1) = -1 then ShowMessage('Выберите клиента!')
    else PrintListBuh_Client();
  end;

  if cxRadioButton6.Checked then begin
    if StrToIntDef(GetDataFromCheckBox(cxCheckComboBox4, False), -1) = -1 then ShowMessage('Выберите подрядчика!')
    else PrintListBuh_Agent();
  end;

  if cxRadioButton5.Checked then begin
    PrintClientBalansGrow();
  end;
end;

procedure TfmFrahtBuhDlg.cxButton2Click(Sender: TObject);
begin
  cxButton2.SpeedButtonOptions.Down := TcxButton(Sender).SpeedButtonOptions.Down;
  cxButton4.SpeedButtonOptions.Down := TcxButton(Sender).SpeedButtonOptions.Down;

  if not TcxButton(Sender).SpeedButtonOptions.Down then begin
    cxButton2.OptionsImage.ImageIndex := 0;
    cxButton4.OptionsImage.ImageIndex := 0;
    Label2.Caption    := 'Перевозочный месяц...............';

    cxButton2.Hint := 'Сменить на ФИНАНСОВЫЙ месяц';
    cxButton4.Hint := 'Сменить на ФИНАНСОВЫЙ месяц';

    Ffield_month := 'date_period';
    Fset_field_month_finance := False;
    Panel1.Color := clBtnFace;
    Panel3.Color := clBtnFace;
  end else begin
    cxButton2.OptionsImage.ImageIndex := 1;
    cxButton4.OptionsImage.ImageIndex := 1;
    Label2.Caption    := 'Финансовый месяц.................';

    cxButton2.Hint := 'Сменить на ПЕРЕВОЗОЧНЫЙ месяц';
    cxButton4.Hint := 'Сменить на ПЕРЕВОЗОЧНЫЙ месяц';

    Ffield_month := 'date_period_finance';
    Fset_field_month_finance := True;
    Panel1.Color := clMoneyGreen;
    Panel3.Color := clMoneyGreen;
  end;
  cxComboBox2PropertiesChange(Sender);

end;


procedure TfmFrahtBuhDlg.cxButton7Click(Sender: TObject);
var i : integer;
begin
  Screen.Cursor := crHourglass;

  case TControl(Sender).Tag of
    3: for i := 0 to cxCheckComboBox4.Properties.Items.Count - 1 do
        if cxCheckComboBox4.Properties.Items[i].Enabled then
          cxCheckComboBox4.States[i] := cbsChecked;
  end;

  Screen.Cursor := crDefault;
end;

procedure TfmFrahtBuhDlg.cxButton8Click(Sender: TObject);
var i : integer;
begin
  Screen.Cursor := crHourglass;

  case TControl(Sender).Tag of
    3: for i := 0 to cxCheckComboBox4.Properties.Items.Count - 1 do
        if cxCheckComboBox4.Properties.Items[i].Enabled then
          cxCheckComboBox4.States[i] := cbsUnchecked;
  end;

  Screen.Cursor := crDefault;
end;

procedure TfmFrahtBuhDlg.cxButtonEdit1PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  case TcxButtonEdit(Sender).Tag of
    0: cxButtonEdit1.Text := CurrToStr(GetExchangeNew(1, cxDateEdit1.Date, ADOFrahtBuhDlg, True));
    1: cxButtonEdit2.Text := CurrToStr(GetExchangeNew(5, cxDateEdit1.Date, ADOFrahtBuhDlg, True));
    2: cxButtonEdit4.Text := CurrToStr(GetExchangeNew(6, cxDateEdit1.Date, ADOFrahtBuhDlg, True));
  end;
end;


procedure TfmFrahtBuhDlg.cxCheckComboBox4PropertiesClickCheck(Sender: TObject;ItemIndex: Integer; var AllowToggle: Boolean);
var i : integer;
begin
  for i := 0 to cxCheckComboBox4.Properties.Items.Count - 1 do
    if i <> ItemIndex then cxCheckComboBox4.SetItemState(i, cbsUnchecked);
end;

procedure TfmFrahtBuhDlg.cxComboBox2PropertiesChange(Sender: TObject);
var          i : integer;
   contract_id : integer;
  period_begin : TDateTime;
    period_end : TDateTime;
begin
  Screen.Cursor := crHourglass;

  if cxRadioButton5.Checked then begin

    cxCheckComboBox4.Properties.Items.Clear;

    period_begin := StrToDate('01.'+IntToStr(cxComboBox1.ItemIndex + 1)+'.'+cxComboBox4.Text);
    period_end   := IncMonth(StrToDate('01.'+IntToStr(cxComboBox5.ItemIndex + 1)+'.'+cxComboBox6.Text))-1;

    Query_Client.Close;
    Query_Client.SQL.Clear;
    Query_Client.SQL.Add('SELECT firm_customer_name + '' ('' + isnull(contract_cod, '''') + '')'' AS contract_firm, firm_customer, firm_customer_name, contract_id, contract_cod');
    Query_Client.SQL.Add('FROM view_bargain_rights');
    Query_Client.SQL.Add('WHERE (' + Ffield_month + ' BETWEEN ' + DateToSQL(period_begin) + ' AND ' + DateToSQL(period_end) + ')');
    Query_Client.SQL.Add('AND (bargain_sum_fact_usd is not null)');
    Query_Client.SQL.Add('UNION');
    Query_Client.SQL.Add('SELECT firm_customer_name + '' ('' + isnull(contract_cod, '''') + '')'' AS contract_firm, firm_customer, firm_customer_name, contract_id, contract_cod');
    Query_Client.SQL.Add('FROM view_pay_rights');
    Query_Client.SQL.Add('WHERE	(pay_date BETWEEN ' + DateToSQL(period_begin) + ' AND ' + DateToSQL(period_end) + ')');
    Query_Client.SQL.Add('AND	(type_pay = 2)');
    Query_Client.SQL.Add('ORDER BY firm_customer_name');
//    Query_Client.Open;

    for i := 0 to cxCheckComboBox1.Properties.Items.Count - 1 do begin
      if cxCheckComboBox1.States[i] = cbsChecked then begin
        Query_UsersList.Locate('users_id', cxCheckComboBox1.Properties.Items[i].Tag, []);

        // Добавляем строку-заголовок (она же и разделяет собственные организации)
        // Выбрать ее нельзя
        with cxCheckComboBox4.Properties.Items.Add do begin
          Description := '---- ' + Query_UsersList.FieldByName('firm_name').AsString + ' ----';
          ShortDescription := Description;
          Enabled := False;
        end;

        Query_Client.Close;
//        Query_Client.Connection := nil;
        Query_Client.ConnectionString := 'Persist Security Info=True;Provider=SQLOLEDB.1;User ID='+Query_UsersList.FieldByName('users_name').AsString+';Password='+Fusr_pwd^.user_pass+';Initial Catalog='+Fusr_pwd^.catalog+';Data Source='+Fusr_pwd^.server+';';
        Query_Client.Open;

        while not Query_Client.Eof do begin
          with cxCheckComboBox4.Properties.Items.Add do begin
            Description := Query_Client.FieldByName('firm_customer_name').AsString + '   ('+Query_Client.FieldByName('contract_cod').AsString+')';
            ShortDescription := Query_Client.FieldByName('firm_customer_name').AsString + '   ('+Query_Client.FieldByName('contract_cod').AsString+')';
            Tag := Query_Client.FieldByName('contract_id').AsInteger;
          end;
          Query_Client.Next;
        end;
      end;
    end;

  end;


  if (cxRadioButton4.Checked) then begin
    contract_id := StrToIntDef(GetDataFromCheckBox(cxCheckComboBox4, False), -1);

//    Query_Client.ConnectionString := '';
    Query_Client.Connection := ADOFrahtBuhDlg;

    Query_Client.Close;
    Query_Client.SQL.Clear;
    Query_Client.SQL.Add('SELECT DISTINCT firm_customer_name + '' ('' + isnull(contract_cod, '''') + '')'' AS contract_firm, firm_customer, firm_customer_name, contract_id, contract_cod');
    Query_Client.SQL.Add('FROM view_bargain_rights');
    Query_Client.SQL.Add('WHERE (' + Ffield_month + ' BETWEEN :period_begin AND :period_end)');
    Query_Client.SQL.Add('AND (bargain_sum_fact_usd is not null)');
    Query_Client.SQL.Add('ORDER BY firm_customer_name');
    Query_Client.Parameters.ParamByName('period_begin').Value := StrToDate('01.'+IntToStr(cxComboBox2.ItemIndex + 1)+'.'+cxComboBox3.Text);
    Query_Client.Parameters.ParamByName('period_end'  ).Value := IncMonth(StrToDate('01.'+IntToStr(cxComboBox2.ItemIndex + 1)+'.'+cxComboBox3.Text))-1;
    Query_Client.Open;
    Query_Client.Locate('contract_id', contract_id, [loCaseInsensitive]);

    cxCheckComboBox4.Properties.Items.Clear;
    while not Query_Client.Eof do begin
      with cxCheckComboBox4.Properties.Items.Add do begin
        Description := Query_Client.FieldByName('firm_customer_name').AsString + '   ('+Query_Client.FieldByName('contract_cod').AsString+')';
        ShortDescription := Query_Client.FieldByName('firm_customer_name').AsString + '   ('+Query_Client.FieldByName('contract_cod').AsString+')';
        Tag := Query_Client.FieldByName('contract_id').AsInteger;
      end;
      Query_Client.Next;
    end;

    for i := 0 to cxCheckComboBox4.Properties.Items.Count - 1 do
      if cxCheckComboBox4.Properties.Items.Items[i].Tag = contract_id then
        cxCheckComboBox4.SetItemState(i, cbsChecked);
  end;


  if (cxRadioButton6.Checked) then begin
    contract_id := StrToIntDef(GetDataFromCheckBox(cxCheckComboBox4, False), -1);

//    Query_Client.ConnectionString := '';
    Query_Client.Connection := ADOFrahtBuhDlg;

    Query_Client.Close;
    Query_Client.SQL.Clear;
    Query_Client.SQL.Add('SELECT DISTINCT firm_customer_name + '' ('' + isnull(contract_cod, '''') + '')'' AS contract_firm, firm_customer, firm_customer_name, contract_id, contract_cod');
    Query_Client.SQL.Add('FROM view_bargain_client_agent_rights');
    Query_Client.SQL.Add('WHERE (' + Ffield_month + ' BETWEEN :period_begin AND :period_end)');
    Query_Client.SQL.Add('AND (bargain_sum_fact_usd is not null)');
    Query_Client.SQL.Add('AND (type_rate = 1)');
    Query_Client.SQL.Add('ORDER BY firm_customer_name');
    Query_Client.Parameters.ParamByName('period_begin').Value := StrToDate('01.'+IntToStr(cxComboBox2.ItemIndex + 1)+'.'+cxComboBox3.Text);
    Query_Client.Parameters.ParamByName('period_end'  ).Value := IncMonth(StrToDate('01.'+IntToStr(cxComboBox2.ItemIndex + 1)+'.'+cxComboBox3.Text))-1;
    Query_Client.Open;
    Query_Client.Locate('contract_id', contract_id, [loCaseInsensitive]);

    cxCheckComboBox4.Properties.Items.Clear;
    while not Query_Client.Eof do begin
      with cxCheckComboBox4.Properties.Items.Add do begin
        Description := Query_Client.FieldByName('firm_customer_name').AsString + '   ('+Query_Client.FieldByName('contract_cod').AsString+')';
        ShortDescription := Query_Client.FieldByName('firm_customer_name').AsString + '   ('+Query_Client.FieldByName('contract_cod').AsString+')';
        Tag := Query_Client.FieldByName('contract_id').AsInteger;
      end;
      Query_Client.Next;
    end;

    for i := 0 to cxCheckComboBox4.Properties.Items.Count - 1 do
      if cxCheckComboBox4.Properties.Items.Items[i].Tag = contract_id then
        cxCheckComboBox4.SetItemState(i, cbsChecked);
  end;

  Screen.Cursor := crDefault;
end;

procedure TfmFrahtBuhDlg.cxDateEdit2PropertiesEditValueChanged(Sender: TObject);
begin
  if TcxDateEdit(Sender).Tag = 0 then cxButtonEdit1.Text := '';
  if TcxDateEdit(Sender).Tag = 1 then cxButtonEdit2.Text := '';
end;

procedure TfmFrahtBuhDlg.cxLookupComboBox3PropertiesEditValueChanged(Sender: TObject);
begin
  if (cxLookupComboBox3.EditValue <> 1) and (cxLookupComboBox3.EditValue <> 3) then begin
    Application.MessageBox(PChar('Валюта "' + cxLookupComboBox3.Text + '" для отчета не поддерживается.'), 'Внимание', MB_ICONWARNING or MB_OK);
    cxLookupComboBox3.EditValue := 1;
  end;
end;

procedure TfmFrahtBuhDlg.cxRadioButton3Click(Sender: TObject);
var i : integer;
begin

  Screen.Cursor := crHourglass;

  // месяц
  cxComboBox2.Enabled := False;
  cxComboBox3.Enabled := False;
  cxButton2.Enabled := False;
  // период
  cxComboBox1.Enabled := False;
  cxComboBox4.Enabled := False;
  cxComboBox5.Enabled := False;
  cxComboBox6.Enabled := False;
  cxButton4.Enabled := False;
  // валюта
  cxLookupComboBox3.Enabled := False;
  // курс
  cxButtonEdit1.Enabled := False;
  cxButtonEdit2.Enabled := False;
  cxButtonEdit4.Enabled := False;
  cxDateEdit1.Enabled := False;
  cxDateEdit2.Enabled := False;
  cxDateEdit3.Enabled := False;
  // клиент-агент
  cxCheckComboBox4.Enabled := False;
  cxButton7.Enabled := False;
  cxButton8.Enabled := False;
  // не закр. приложения
  cxCheckBox7.Enabled := False;


  case TControl(Sender).Tag of
    3:  begin
//          // месяц
//          cxComboBox2.Enabled  := True;
//          cxComboBox3.Enabled  := True;
//          SpeedButton1.Enabled := True;

          // период
          cxComboBox1.Enabled  := True;
          cxComboBox4.Enabled  := True;
          cxComboBox5.Enabled  := True;
          cxComboBox6.Enabled  := True;
          cxButton4.Enabled := True;
          // валюта
          cxLookupComboBox3.Enabled  := True;
          // курс
          cxButtonEdit1.Enabled := True;
          cxButtonEdit2.Enabled := True;
          cxButtonEdit4.Enabled := True;
          cxDateEdit1.Enabled := True;
          cxDateEdit2.Enabled := True;
          cxDateEdit3.Enabled := True;
          // собственная
          Label1.Visible := False;
          cxCheckComboBox1.Visible := False;
          // клиент-агент
          Label8.Caption := 'Клиент:';
          cxCheckComboBox4.Enabled := True;
          cxCheckComboBox4.Properties.OnClickCheck := cxCheckComboBox4PropertiesClickCheck;
          // не закр. приложения
          cxCheckBox7.Enabled  := True;
        end;

    5:  begin
          // месяц
          cxComboBox2.Enabled  := True;
          cxComboBox3.Enabled  := True;
//          SpeedButton1.Enabled := True;
          cxButton2.Enabled := True;
          // валюта
          cxLookupComboBox3.Enabled  := True;
          // курс
          cxButtonEdit1.Enabled := True;
          cxButtonEdit2.Enabled := True;
          cxButtonEdit4.Enabled := True;
          cxDateEdit1.Enabled := True;
          cxDateEdit2.Enabled := True;
          cxDateEdit3.Enabled := True;
          // собственная
          Label1.Visible := False;
          cxCheckComboBox1.Visible := False;
          // клиент-агент
          Label8.Caption := 'Агент:';
          cxCheckComboBox4.Enabled := True;
          cxCheckComboBox4.Properties.OnClickCheck := cxCheckComboBox4PropertiesClickCheck;
          // не закр. приложения
          cxCheckBox7.Enabled  := True;
        end;

    4:  begin
          // период
          cxComboBox1.Enabled  := True;
          cxComboBox4.Enabled  := True;
          cxComboBox5.Enabled  := True;
          cxComboBox6.Enabled  := True;
          cxButton4.Enabled := True;
          // валюта
          cxLookupComboBox3.EditValue:= 3;
          cxLookupComboBox3.Enabled  := False;
          // собственная
          Label1.Visible := True;
          cxCheckComboBox1.Visible := True;
          // клиент-агент
          Label8.Caption := 'Клиент(ы):';
          cxCheckComboBox4.Enabled := True;
          cxButton7.Enabled := True;
          cxButton8.Enabled := True;
          cxCheckComboBox4.Properties.OnClickCheck := nil;
        end;
  end;
  Screen.Cursor := crDefault;
  cxComboBox2PropertiesChange(Sender);
end;


// получение строки значений из cxCheckComboBox
function TfmFrahtBuhDlg.GetDataFromCheckBox(cxCheckComboBox : TcxCheckComboBox; isString : boolean) : string;
var i : integer;
begin
  for i:=0 to cxCheckComboBox.Properties.Items.Count - 1 do
    if cxCheckComboBox.States[i] = cbsChecked then begin
      if not isString then  result := result + ',' + IntToStr(cxCheckComboBox.Properties.Items[i].Tag)
      else result := result + ',''' + cxCheckComboBox.Properties.Items[i].ShortDescription +'''';
    end;
  result := Copy(result, 2, Length(result)-1);
end;

procedure TfmFrahtBuhDlg.FormClose(Sender: TObject; var Action: TCloseAction);
var Reg : TRegistry;
begin
  Reg := TRegistry.Create;
  Reg.RootKey := HKEY_CURRENT_USER;

  if not Reg.KeyExists('\Software\LIS1\RepBunList\') then Reg.CreateKey('\Software\LIS1\RepBunList\');
  Reg.OpenKey('\Software\LIS1\RepBunList\', True);

  Reg.WriteString('exchange_USD', cxButtonEdit1.Text);
  Reg.WriteString('exchange_EUR', cxButtonEdit2.Text);
  Reg.WriteString('exchange_CHF', cxButtonEdit4.Text);
  Reg.WriteDate('date_USD', cxDateEdit1.Date);
  Reg.WriteDate('date_EUR', cxDateEdit2.Date);
  Reg.WriteDate('date_CHF', cxDateEdit3.Date);
  Reg.WriteBool('set_month',cxButton2.SpeedButtonOptions.Down);
  Reg.WriteBool('Report_4', cxRadioButton4.Checked);
  Reg.WriteBool('Report_5', cxRadioButton5.Checked);
  Reg.WriteBool('Report_6', cxRadioButton6.Checked);

  Reg.Free;

  Action := caFree;
end;

procedure TfmFrahtBuhDlg.PrintListBuh_Agent();
var
  exApp, exWkb, exWks : Variant;
  str_sum, FIO_users : string;
  line_cnt, line_cnt_group, line_cnt_sum : integer;
  contract_agent_id, contract_id : integer;
  Fdate1, Fdate2 : TDateTime;
  str_bargain_id : string;
  Query: TADOQuery;
begin
  Screen.Cursor := crHourglass;
  ShowTextMessage('Запуск сервера автоматизации...',False);
  exApp := CreateOleObject('Excel.Application');
//  exWkb := exApp.Workbooks.Add(ExtractFilePath(ParamStr(0)) + 'Отчет по организации перевозки (Агент).xls');
  exWkb := exApp.Workbooks.Add(GetDocBlob(ADOFrahtBuhDlg, 35, 9, True ));
  exWkb := exApp.ActiveWorkbook;
  exWks := exWkb.WorkSheets[1];
  exWks.Select;

  contract_agent_id := StrToIntDef(GetDataFromCheckBox(cxCheckComboBox4, False), -1);
  Fdate1 := StrToDate('01.'+IntToStr(cxComboBox2.ItemIndex + 1)+'.'+cxComboBox3.Text);
  Fdate2 := IncMonth(Fdate1)-1;


  ShowTextMessage('Подготовка данных...',False);
  Query := TADOQuery.Create(nil);
  Query.Connection := ADOFrahtBuhDlg;
  Query.SQL.Add('SELECT  view_fraht_agent.bargain_id');
  Query.SQL.Add('FROM	   view_fraht_agent inner join view_bargain_rights on view_bargain_rights.bargain_id = view_fraht_agent.bargain_id');
  Query.SQL.Add('WHERE	 contract_agent_id = ' + IntToStr(contract_agent_id));
  Query.SQL.Add('        AND view_fraht_agent.bargain_sum_fact is not NULL');
  Query.SQL.Add('        AND view_bargain_rights.' + Ffield_month + ' between :period_begin and :period_end');
  Query.SQL.Add('ORDER BY view_fraht_agent.client_contract_cod');
  Query.Parameters.ParamByName('period_begin').Value := Fdate1;
  Query.Parameters.ParamByName('period_end').Value   := Fdate2;
  Query.Open;

  while not Query.EOF do begin
    str_bargain_id := str_bargain_id + Query.FieldByName('bargain_id').AsString + ',';
    Query.Next;
  end;
  Query.Close;

  Query.SQL.Clear;
  Query.SQL.Add('SELECT  view_fraht_agent.*');
  Query.SQL.Add('FROM	   view_fraht_agent inner join view_bargain_rights on view_bargain_rights.bargain_id = view_fraht_agent.bargain_id');
  Query.SQL.Add('WHERE	 contract_agent_id = ' + IntToStr(contract_agent_id));
  Query.SQL.Add('        AND view_bargain_rights.' + Ffield_month + ' between :period_begin and :period_end');
  Query.SQL.Add('        AND view_fraht_agent.bargain_sum_fact is not NULL');
  Query.SQL.Add('        AND view_bargain_rights.bargain_id in (SELECT bargain_id FROM dbo.Bargain_Check_Correct_STR(''' + str_bargain_id + '''))');
  Query.SQL.Add('ORDER BY view_fraht_agent.client_contract_cod');
  Query.Parameters.ParamByName('period_begin').Value := Fdate1;
  Query.Parameters.ParamByName('period_end').Value   := Fdate2;
  Query.Open;

  if not Query.FieldByName('contract_id').IsNull then contract_id := Query.FieldByName('contract_id').Value;

  line_cnt_group := 4;
  line_cnt := 4;
  line_cnt_sum := 8;
  while not Query.EOF do begin
    ShowTextMessage('Идет вывод информации: '+IntToStr(Query.RecNo)+' из '+IntToStr(Query.RecordCount) + '...', False);
    exWks.Rows[IntToStr(line_cnt)].Copy;
    exWks.Rows[IntToStr(line_cnt+1)].Insert;

    if contract_id <> Query.FieldByName('contract_id').Value then begin
      exWks.Rows[IntToStr(line_cnt)].Copy;
      exWks.Rows[IntToStr(line_cnt+1)].Insert;
      contract_id := Query.FieldByName('contract_id').Value;
      exWks.Cells[line_cnt, 2].Value := exWks.Cells[line_cnt-1, 2].Value;
      exWks.Cells[line_cnt, 5].Value := exWks.Cells[line_cnt-1, 5].Value;
      exWks.Cells[line_cnt, 6].Value := exWks.Cells[line_cnt-1, 6].Value;
      exWks.Cells[line_cnt, 4].Value := '=SUM(D' + IntToStr(line_cnt_group) + ':D' + IntToStr(line_cnt-1) + ')';

      exWks.Rows[IntToStr(line_cnt_sum + line_cnt)].Copy;
      exWks.Rows[IntToStr(line_cnt_sum + line_cnt + 1)].Insert;
      exWks.Cells[line_cnt_sum + line_cnt, 2].Value := exWks.Cells[line_cnt-1, 6].Value;
      exWks.Cells[line_cnt_sum + line_cnt, 3].Value := exWks.Cells[line_cnt-1,12].Value;
      exWks.Cells[line_cnt_sum + line_cnt, 4].Value := exWks.Cells[line_cnt  , 4].Value;
      exWks.Cells[line_cnt_sum + line_cnt, 5].Value := exWks.Cells[line_cnt-1, 5].Value;
      exWks.Cells[line_cnt_sum + line_cnt, 6].Value := exWks.Cells[line_cnt  , 4].Value;
      line_cnt_sum := line_cnt_sum + 1;

      exWks.Cells[line_cnt, 2].Font.Bold := True;
      exWks.Cells[line_cnt, 4].Font.Bold := True;
      exWks.Cells[line_cnt, 5].Font.Bold := True;
      exWks.Cells[line_cnt, 6].Font.Bold := True;
      exWks.Range['A' + IntToStr(line_cnt_group),'A' + IntToStr(line_cnt-1)].Rows.Group(EmptyParam,EmptyParam,EmptyParam,EmptyParam);
      exWks.Range['B' + IntToStr(line_cnt),'N' + IntToStr(line_cnt)].Interior.ColorIndex := 36;

      if str_sum = '' then str_sum := '=D'+IntToStr(line_cnt)
      else str_sum := str_sum + '+D'+IntToStr(line_cnt);

      line_cnt := line_cnt + 1;
      line_cnt_group := line_cnt;
    end;

    exWks.Cells[line_cnt, 2].Value := Query.FieldByName('firm_agent_name_short').Value;
    exWks.Cells[line_cnt, 3].Value := Query.FieldByName('date_period_text').AsString;
    exWks.Cells[line_cnt, 4].Value := Query.FieldByName('agent_sum_fact_real').Value;
    exWks.Cells[line_cnt, 5].Value := Query.FieldByName('brief_name').Value;
    exWks.Cells[line_cnt, 6].Value := Query.FieldByName('firm_customer_name_short').Value;
    exWks.Cells[line_cnt, 7].Value := Query.FieldByName('node_begin_name').Value;
    exWks.Cells[line_cnt, 8].Value := Query.FieldByName('node_end_name').Value;
    exWks.Cells[line_cnt, 9].Value := Query.FieldByName('kargoETSNG_name').Value;
    exWks.Cells[line_cnt,10].Value := Query.FieldByName('bargain_cod').Value;
    exWks.Cells[line_cnt,11].Value := Query.FieldByName('agent_contract_cod').Value;
    exWks.Cells[line_cnt,12].Value := Query.FieldByName('client_contract_cod').Value;
    exWks.Cells[line_cnt,13].Value := Query.FieldByName('date_period_finance_name').AsString;
    exWks.Cells[line_cnt,14].Value := Query.FieldByName('custom_name').Value;
    line_cnt := line_cnt + 1;
  	Query.Next;
  end;


  exWks.Rows[IntToStr(line_cnt)].Copy;
  exWks.Rows[IntToStr(line_cnt+1)].Insert;
  exWks.Cells[line_cnt, 2].Value := exWks.Cells[line_cnt-1, 2].Value;
  exWks.Cells[line_cnt, 5].Value := exWks.Cells[line_cnt-1, 5].Value;
  exWks.Cells[line_cnt, 6].Value := exWks.Cells[line_cnt-1, 6].Value;
  exWks.Cells[line_cnt, 4].Value := '=SUM(D' + IntToStr(line_cnt_group) + ':D' + IntToStr(line_cnt-1) + ')';
  exWks.Cells[line_cnt, 2].Font.Bold := True;
  exWks.Cells[line_cnt, 4].Font.Bold := True;
  exWks.Cells[line_cnt, 5].Font.Bold := True;
  exWks.Cells[line_cnt, 6].Font.Bold := True;

  exWks.Rows[IntToStr(line_cnt_sum + line_cnt)].Copy;
  exWks.Rows[IntToStr(line_cnt_sum + line_cnt + 1)].Insert;
  line_cnt_sum := line_cnt_sum - 1;
  exWks.Cells[line_cnt_sum + line_cnt, 2].Value := exWks.Cells[line_cnt-1, 6].Value;
  exWks.Cells[line_cnt_sum + line_cnt, 3].Value := exWks.Cells[line_cnt-1,11].Value;
  exWks.Cells[line_cnt_sum + line_cnt, 4].Value := exWks.Cells[line_cnt  , 4].Value;
  exWks.Cells[line_cnt_sum + line_cnt, 5].Value := exWks.Cells[line_cnt-1, 5].Value;
  exWks.Cells[line_cnt_sum + line_cnt, 6].Value := exWks.Cells[line_cnt  , 4].Value;


  exWks.Range['A' + IntToStr(line_cnt_group),'A' + IntToStr(line_cnt-1)].Rows.Group(EmptyParam,EmptyParam,EmptyParam,EmptyParam);
  exWks.Range['B' + IntToStr(line_cnt),'N' + IntToStr(line_cnt)].Interior.ColorIndex := 36;
  if str_sum = '' then str_sum := '=D'+IntToStr(line_cnt)
  else str_sum := str_sum + '+D'+IntToStr(line_cnt);
  line_cnt := line_cnt + 1;

  exWks.Cells[line_cnt+2, 3].Value := Query.RecordCount;
  exWks.Cells[line_cnt+2, 4].Value := str_sum;
  exWks.Rows[IntToStr(line_cnt_sum + line_cnt)].Delete;
  exWks.Rows[IntToStr(line_cnt_sum + line_cnt)].Delete;
  exWks.Rows[IntToStr(line_cnt)].Delete;
  exWks.Rows[IntToStr(line_cnt)].Delete;


  Query.Free;

  exApp.CutCopyMode := False;
  exApp.Visible := True;
  VarClear(exWks); VarClear(exWkb); VarClear(exApp);
  ShowTextMessage();
  Screen.Cursor := crDefault;
end;


procedure TfmFrahtBuhDlg.PrintListBuh_Client();
var    exApp, exWkb, exWks : Variant;
        str_sum, FIO_users : string;
  line_cnt, line_cnt_group : integer;
   bargain_id, contract_id : integer;
            Fdate1, Fdate2 : TDateTime;
      bargain_correct_type : integer;
              sign_correct : Boolean;
                       i,j : Integer;
                         Q : TADOQuery;
             SP_Report_buh : TADOStoredProc;
begin
  Screen.Cursor := crHourglass;
  ShowTextMessage('Запуск сервера автоматизации...',False);
  exApp := CreateOleObject('Excel.Application');
  exWkb := exApp.Workbooks.Add(GetDocBlob(ADOFrahtBuhDlg, 46, 9, True));
  exWkb := exApp.ActiveWorkbook;
  exWks := exWkb.WorkSheets[3];
  exWks.Select;
  ///exApp.Visible := True;

  Q := TADOQuery.Create(nil);
  Q.Connection := ADOFrahtBuhDlg;

  SP_Report_buh := TADOStoredProc.Create(nil);
  SP_Report_buh.Connection := ADOFrahtBuhDlg;
  SP_Report_buh.ProcedureName := 'sp_Report_BUH';
  SP_Report_buh.Parameters.Refresh;


  exApp.DisplayAlerts := False;
  exWkb.WorkSheets[1].Delete;
  exWkb.WorkSheets[1].Delete;
  exApp.DisplayAlerts := True;

  contract_id      := StrToIntDef(GetDataFromCheckBox(cxCheckComboBox4, False), -1);
  Fdate1 := StrToDate('01.'+IntToStr(cxComboBox1.ItemIndex + 1)+'.'+cxComboBox4.Text);
  Fdate2 := IncMonth(StrToDate('01.'+IntToStr(cxComboBox5.ItemIndex + 1)+'.'+cxComboBox6.Text),1)-1;

  Query1.SQL.Clear;
  Query1.SQL.Add('SELECT FIO_users FROM users WHERE users_name = system_user');
  Query1.Open;
  FIO_users := Query1.FieldByName('FIO_users').AsString;

  Query1.SQL.Clear;
  Query1.SQL.Add('SELECT	cast(convert(varchar(6),date_period,112)+''01'' as datetime) AS date_period');
  Query1.SQL.Add('FROM	view_fraht_agent ');
  Query1.SQL.Add('WHERE	' + Ffield_month + ' between :period_begin and :period_end');
  Query1.SQL.Add('       and contract_id   = ' + IntToStr(contract_id) + '');
  if not cxCheckBox7.Checked then  Query1.SQL.Add('       and date_period_finance is not null');
  Query1.SQL.Add('       and owner_bargain_id is not null');
  Query1.SQL.Add('GROUP BY cast(convert(varchar(6),date_period,112)+''01'' as datetime)');
  Query1.SQL.Add('ORDER BY 1');
  Query1.Parameters.ParamByName('period_begin').Value := Fdate1;
  Query1.Parameters.ParamByName('period_end').Value   := Fdate2;
  Query1.Open;

  while not Query1.Eof do begin
    exWkb.Sheets[1].Copy(null, exWkb.Sheets[1]);
    exWkb.Sheets[2].Name := FormatDateTime('mmm yyyy',Query1.FieldByName('date_period').AsDateTime);
    Query1.Next;
  end;


  for i := 0 to Query1.RecordCount do begin
    exWks := exWkb.WorkSheets[i+1];
    exWks.Select;

    if i = 0 then begin

      SP_Report_buh.Parameters.Refresh;
      SP_Report_buh.Parameters.ParamByName('@contract_id'              ).Value := contract_id;
      SP_Report_buh.Parameters.ParamByName('@period_begin'             ).Value := Fdate1;
      SP_Report_buh.Parameters.ParamByName('@period_end'               ).Value := Fdate2;
      SP_Report_buh.Parameters.ParamByName('@period_correct'           ).Value := null;
      SP_Report_buh.Parameters.ParamByName('@set_correct'              ).Value := False;
      SP_Report_buh.Parameters.ParamByName('@set_finance_period'       ).Value := iif(Ffield_month = 'date_period', False, True);
      SP_Report_buh.Parameters.ParamByName('@set_finance_period_close' ).Value := not cxCheckBox7.Checked;
      SP_Report_buh.Parameters.ParamByName('@set_agent_result'         ).Value := False;
      SP_Report_buh.Open;

    end else begin
      Query1.RecNo := Query1.RecordCount - i + 1;

      SP_Report_buh.Close;
      SP_Report_buh.Parameters.Refresh;
      SP_Report_buh.Parameters.ParamByName('@contract_id'              ).Value := contract_id;
      SP_Report_buh.Parameters.ParamByName('@period_begin'             ).Value := Fdate1;
      SP_Report_buh.Parameters.ParamByName('@period_end'               ).Value := Fdate2;
      SP_Report_buh.Parameters.ParamByName('@period_correct'           ).Value := Query1.FieldByName('date_period').AsDateTime;
      SP_Report_buh.Parameters.ParamByName('@set_correct'              ).Value := True;
      SP_Report_buh.Parameters.ParamByName('@set_finance_period'       ).Value := iif(Ffield_month = 'date_period', False, True);
      SP_Report_buh.Parameters.ParamByName('@set_finance_period_close' ).Value := not cxCheckBox7.Checked;
      SP_Report_buh.Parameters.ParamByName('@set_agent_result'         ).Value := False;
      SP_Report_buh.Open;

    end;




    if i = 0 then exWks.Range['B2'].Value := 'Отчет по организации перевозок'
    else exWks.Range['B2'].Value := 'Корректировки перевозок';

    if cxButton2.SpeedButtonOptions.Down then exWks.Range['B3'].Value := 'за период с ' + FormatDateTime('dd.mm.yyyy', Fdate1) + ' по ' + FormatDateTime('dd.mm.yyyy', Fdate2) + '. (Финансовый месяц)'
    else exWks.Range['B3'].Value := 'за период с ' + FormatDateTime('dd.mm.yyyy', Fdate1) + ' по ' + FormatDateTime('dd.mm.yyyy', Fdate2) + '. (Перевозочный месяц)';


    Query2.SQL.Clear;
    Query2.SQL.Add('SELECT	type_firm_customer_name, firm_customer_name_short, type_firm_self_name, firm_self_name_short, contract_cod, date_begin');
    Query2.SQL.Add('FROM	  view_contract_rights');
    Query2.SQL.Add('WHERE	  contract_id = '+ IntToStr(contract_id));
    Query2.Open;

    exWks.Range['B5'].Value := 'Клиент:';
    exWks.Range['D5'].Value := Query2.FieldByName('firm_customer_name_short').AsString;

    exWks.Range['B6'].Value := 'Исполнитель:';
    exWks.Range['D6'].Value := Query2.FieldByName('firm_self_name_short').AsString;

    exWks.Range['D7'].Value := '№' + Query2.FieldByName('contract_cod').AsString + ' от ' + FormatDateTime('dd.mm.yyyy', Query2.FieldByName('date_begin').AsDateTime);
    exWks.Range['S8'].Value := FormatDateTime('dd.mm.yyyy', Fdate2);

    exWks.Range['B8'].Value  := 'Курс USD на ' + FormatDateTime('dd.mm.yyyy', cxDateEdit1.Date);
    exWks.Range['B9'].Value  := 'Курс EUR на ' + FormatDateTime('dd.mm.yyyy', cxDateEdit2.Date);
    exWks.Range['B10'].Value := 'Курс CHF на ' + FormatDateTime('dd.mm.yyyy', cxDateEdit3.Date);
    exWks.Range['E8'].Value  := Fexchange_USD;
    exWks.Range['E9'].Value  := Fexchange_EUR;
    exWks.Range['E10'].Value := Fexchange_CHF;

    exWks.Range['V28'].Value:= '/' + FIO_users + '/';

    bargain_id     := -1;
    line_cnt       := 15;
    line_cnt_group := 15;
    sign_correct   := True;
    bargain_correct_type := 0;

    {$region 'Основной цикл...'}
    while not SP_Report_buh.Eof do begin
      ShowTextMessage('Идет вывод информации: '+IntToStr(SP_Report_buh.RecNo)+' из '+IntToStr(SP_Report_buh.RecordCount) + '...', False);
      exWks.Rows[IntToStr(line_cnt)].Copy;
      exWks.Rows[IntToStr(line_cnt+1)].Insert;

      if bargain_id <> SP_Report_buh.FieldByName('calc_bargain_id').AsInteger then begin
        if bargain_id <> -1 then begin
          exWks.Cells[line_cnt_group, 20].Value := str_sum;
          exWks.Cells[line_cnt_group, 21].Value := str_sum;
          exWks.Cells[line_cnt_group, 22].Value := '=RC[-10]-RC[-2]';  // 10 [Эквивалент, руб.] 17[руб.]
          exWks.Cells[line_cnt_group, 23].Value := '=RC[-13]-RC[-2]'; // 8 [Стоимость перевозки (в валюте)] 18 [валюта клиента]
          exWks.Cells[line_cnt_group, 25].Value := '=ROUND(IF(RC[-1]=18,RC[-3]-RC[-3]/1.18,0),2)';

          Excel_MergeCells(exWks, 'B', 'B', line_cnt_group, line_cnt-1);
          Excel_MergeCells(exWks, 'C', 'C', line_cnt_group, line_cnt-1);
          Excel_MergeCells(exWks, 'D', 'D', line_cnt_group, line_cnt-1);
          Excel_MergeCells(exWks, 'E', 'E', line_cnt_group, line_cnt-1);
          Excel_MergeCells(exWks, 'F', 'F', line_cnt_group, line_cnt-1);
          Excel_MergeCells(exWks, 'G', 'G', line_cnt_group, line_cnt-1);
          Excel_MergeCells(exWks, 'H', 'H', line_cnt_group, line_cnt-1);
          Excel_MergeCells(exWks, 'I', 'I', line_cnt_group, line_cnt-1);
          Excel_MergeCells(exWks, 'J', 'J', line_cnt_group, line_cnt-1, -4152);
          Excel_MergeCells(exWks, 'K', 'K', line_cnt_group, line_cnt-1);
          Excel_MergeCells(exWks, 'L', 'L', line_cnt_group, line_cnt-1, -4152);
          //--
          Excel_MergeCells(exWks, 'T', 'T', line_cnt_group, line_cnt-1, -4152);
          Excel_MergeCells(exWks, 'U', 'U', line_cnt_group, line_cnt-1, -4152);
          Excel_MergeCells(exWks, 'V', 'V', line_cnt_group, line_cnt-1, -4152);
          Excel_MergeCells(exWks, 'W', 'W', line_cnt_group, line_cnt-1, -4152);
          Excel_MergeCells(exWks, 'X', 'X', line_cnt_group, line_cnt-1, -4152);
          Excel_MergeCells(exWks, 'Y', 'Y', line_cnt_group, line_cnt-1, -4152);
          Excel_MergeCells(exWks, 'Z', 'Z', line_cnt_group, line_cnt-1);

          // ----- жёлтый цвет строк, если сумма отрицат., но перевозка не корректирующая --------
          if (sign_correct = False) and (bargain_correct_type <> 1) then
            exWks.Range['D' + IntToStr(line_cnt_group) + ':Z' + IntToStr(line_cnt-1)].Interior.ColorIndex := 36;
        end;

        sign_correct := True;

        exWks.Cells[line_cnt, 2].Value := SP_Report_buh.FieldByName('bargain_id').AsString;
        exWks.Cells[line_cnt, 3].Value := SP_Report_buh.FieldByName('bargain_cod').AsString;
        exWks.Cells[line_cnt, 4].Value := SP_Report_buh.FieldByName('node_begin_name').AsString;
        exWks.Cells[line_cnt, 5].Value := SP_Report_buh.FieldByName('node_end_name').AsString;
        exWks.Cells[line_cnt, 6].Value := SP_Report_buh.FieldByName('kargoETSNG_name').AsString;
        exWks.Cells[line_cnt, 8].Value := SP_Report_buh.FieldByName('custom_name').AsString;
        exWks.Cells[line_cnt, 9].Value := '''' + SP_Report_buh.FieldByName('five_days_zfto_name').AsString;
        exWks.Cells[line_cnt,10].Value := SP_Report_buh.FieldByName('bargain_sum_fact').AsCurrency;
        exWks.Cells[line_cnt,11].Value := SP_Report_buh.FieldByName('client_brief_name').AsString;

        if not SP_Report_buh.FieldByName('bargain_correct_type').IsNull then begin
          bargain_correct_type := SP_Report_buh.FieldByName('bargain_correct_type').AsInteger;
          case SP_Report_buh.FieldByName('bargain_correct_type').AsInteger of
            0: exWks.Cells[line_cnt,26].Value := 'осн.';
            1: exWks.Cells[line_cnt,26].Value := 'удл.';
            2: exWks.Cells[line_cnt,26].Value := 'кор.';
          end;
        end else begin
          bargain_correct_type := 0;
        end;


        if SP_Report_buh.FieldByName('bargain_nds_cod').IsNull then
            exWks.Cells[line_cnt, 24].Value := ''
        else
          if SP_Report_buh.FieldByName('bargain_nds_cod').AsString = '0' then
            exWks.Cells[line_cnt, 24].Value :=  OleVariant('0')
          else
            exWks.Cells[line_cnt, 24].Value := SP_Report_buh.FieldByName('bargain_nds_cod').AsString;

        case SP_Report_buh.FieldByName('client_currency_id').AsInteger of
          1: exWks.Cells[line_cnt, 12].Value := '=ROUND(RC[-2]*R[-' + IntToStr(5+line_cnt-13) + ']C[-7],2)';
          3: exWks.Cells[line_cnt, 12].Value := '=RC[-2]';
          6: exWks.Cells[line_cnt, 12].Value := '=ROUND(RC[-2]*R[-' + IntToStr(4+line_cnt-13) + ']C[-7],2)';
          5: exWks.Cells[line_cnt, 12].Value := '=ROUND(RC[-2]*R[-' + IntToStr(3+line_cnt-13) + ']C[-7],2)';
        end;


        str_sum := '=RC[-2]';
        bargain_id := SP_Report_buh.FieldByName('calc_bargain_id').AsInteger;
        line_cnt_group := line_cnt;
      end;

      exWks.Cells[line_cnt, 13].Value := SP_Report_buh.FieldByName('firm_agent_name').AsString;
      exWks.Cells[line_cnt, 14].Value := SP_Report_buh.FieldByName('agent_contract_cod').AsString;

      if SP_Report_buh.FieldByName('set_self_rate').AsBoolean = False then begin
        exWks.Cells[line_cnt, 15].Value := SP_Report_buh.FieldByName('agent_sum_fact_real').AsCurrency;
      end else begin
        exWks.Cells[line_cnt, 17].Value := SP_Report_buh.FieldByName('agent_sum_fact_real').AsCurrency;
      end;

      exWks.Cells[line_cnt, 16].Value := SP_Report_buh.FieldByName('agent_brief_name').AsString;

      if Sign(SP_Report_buh.FieldByName('agent_sum_fact_real').AsCurrency) = -1 then sign_correct := False;

      case SP_Report_buh.FieldByName('agent_currency_id').AsInteger of
        1: exWks.Cells[line_cnt, 18].Value := '=ROUND(RC[-3]*R[-' + IntToStr(5+line_cnt-13) + ']C[-13],2)';
        3: exWks.Cells[line_cnt, 18].Value := '=RC[-3]';
        6: exWks.Cells[line_cnt, 18].Value := '=ROUND(RC[-3]*R[-' + IntToStr(4+line_cnt-13) + ']C[-13],2)';
        5: exWks.Cells[line_cnt, 18].Value := '=ROUND(RC[-3]*R[-' + IntToStr(3+line_cnt-13) + ']C[-13],2)';
      end;

      if SP_Report_buh.FieldByName('agent_currency_id').AsInteger = SP_Report_buh.FieldByName('client_currency_id').AsInteger then begin
        exWks.Cells[line_cnt, 19].Value := '=RC[-4]';
      end else begin
        case SP_Report_buh.FieldByName('client_currency_id').AsInteger of
          1: exWks.Cells[line_cnt, 19].Value := '=ROUND(RC[-1]/R[-' + IntToStr(5+line_cnt-13) + ']C[-14],2)';
          3: exWks.Cells[line_cnt, 19].Value := '=RC[-1]';
          6: exWks.Cells[line_cnt, 19].Value := '=ROUND(RC[-1]/R[-' + IntToStr(4+line_cnt-13) + ']C[-14],2)';
          5: exWks.Cells[line_cnt, 19].Value := '=ROUND(RC[-1]/R[-' + IntToStr(3+line_cnt-13) + ']C[-14],2)';
        end;
      end;


      if (line_cnt - line_cnt_group) <> 0 then  str_sum := str_sum + '+R[' + IntToStr(line_cnt - line_cnt_group) + ']C[-2]';


      line_cnt := line_cnt + 1;

      SP_Report_buh.Next;
      if SP_Report_buh.Eof then begin
          exWks.Cells[line_cnt_group, 20].Value := str_sum;
          exWks.Cells[line_cnt_group, 21].Value := str_sum;
          exWks.Cells[line_cnt_group, 22].Value := '=RC[-10]-RC[-2]';  // 10 [Эквивалент, руб.] 17[руб.]
          exWks.Cells[line_cnt_group, 23].Value := '=RC[-13]-RC[-2]'; // 8 [Стоимость перевозки (в валюте)] 18 [валюта клиента]
          exWks.Cells[line_cnt_group, 25].Value := '=ROUND(IF(RC[-1]=18,RC[-3]-RC[-3]/1.18,0),2)';

          Excel_MergeCells(exWks, 'B', 'B', line_cnt_group, line_cnt-1);
          Excel_MergeCells(exWks, 'C', 'C', line_cnt_group, line_cnt-1);
          Excel_MergeCells(exWks, 'D', 'D', line_cnt_group, line_cnt-1);
          Excel_MergeCells(exWks, 'E', 'E', line_cnt_group, line_cnt-1);
          Excel_MergeCells(exWks, 'F', 'F', line_cnt_group, line_cnt-1);
          Excel_MergeCells(exWks, 'G', 'G', line_cnt_group, line_cnt-1);
          Excel_MergeCells(exWks, 'H', 'H', line_cnt_group, line_cnt-1);
          Excel_MergeCells(exWks, 'I', 'I', line_cnt_group, line_cnt-1);
          Excel_MergeCells(exWks, 'J', 'J', line_cnt_group, line_cnt-1, -4152);
          Excel_MergeCells(exWks, 'K', 'K', line_cnt_group, line_cnt-1);
          Excel_MergeCells(exWks, 'L', 'L', line_cnt_group, line_cnt-1, -4152);
          //--
          Excel_MergeCells(exWks, 'T', 'T', line_cnt_group, line_cnt-1, -4152);
          Excel_MergeCells(exWks, 'U', 'U', line_cnt_group, line_cnt-1, -4152);
          Excel_MergeCells(exWks, 'V', 'V', line_cnt_group, line_cnt-1, -4152);
          Excel_MergeCells(exWks, 'W', 'W', line_cnt_group, line_cnt-1, -4152);
          Excel_MergeCells(exWks, 'X', 'X', line_cnt_group, line_cnt-1, -4152);
          Excel_MergeCells(exWks, 'Y', 'Y', line_cnt_group, line_cnt-1, -4152);
          Excel_MergeCells(exWks, 'Z', 'Z', line_cnt_group, line_cnt-1);

          // ----- жёлтый цвет строк, если сумма отрицат., но перевозка не корректирующая --------
          if (sign_correct = False) and (bargain_correct_type <> 1) then
            exWks.Range['D' + IntToStr(line_cnt_group) + ':Z' + IntToStr(line_cnt-1)].Interior.ColorIndex := 36;
      end;
    end;
    {$endregion}

    exWks.Rows[IntToStr(line_cnt)].Delete;
    exWks.Rows[IntToStr(line_cnt)].Delete;


    if i = 0 then begin

      SP_Report_buh.Close;
      SP_Report_buh.Parameters.Refresh;
      SP_Report_buh.Parameters.ParamByName('@contract_id'              ).Value := contract_id;
      SP_Report_buh.Parameters.ParamByName('@period_begin'             ).Value := Fdate1;
      SP_Report_buh.Parameters.ParamByName('@period_end'               ).Value := Fdate2;
      SP_Report_buh.Parameters.ParamByName('@period_correct'           ).Value := null;
      SP_Report_buh.Parameters.ParamByName('@set_correct'              ).Value := False;
      SP_Report_buh.Parameters.ParamByName('@set_finance_period'       ).Value := iif(Ffield_month = 'date_period', False, True);
      SP_Report_buh.Parameters.ParamByName('@set_finance_period_close' ).Value := not cxCheckBox7.Checked;
      SP_Report_buh.Parameters.ParamByName('@set_agent_result'         ).Value := True;
      SP_Report_buh.Open;

    end else begin
      Query1.RecNo := Query1.RecordCount - i + 1;

      SP_Report_buh.Close;
      SP_Report_buh.Parameters.Refresh;
      SP_Report_buh.Parameters.ParamByName('@contract_id'              ).Value := contract_id;
      SP_Report_buh.Parameters.ParamByName('@period_begin'             ).Value := Fdate1;
      SP_Report_buh.Parameters.ParamByName('@period_end'               ).Value := Fdate2;
      SP_Report_buh.Parameters.ParamByName('@period_correct'           ).Value := Query1.FieldByName('date_period').AsDateTime;
      SP_Report_buh.Parameters.ParamByName('@set_correct'              ).Value := True;
      SP_Report_buh.Parameters.ParamByName('@set_finance_period'       ).Value := iif(Ffield_month = 'date_period', False, True);
      SP_Report_buh.Parameters.ParamByName('@set_finance_period_close' ).Value := not cxCheckBox7.Checked;
      SP_Report_buh.Parameters.ParamByName('@set_agent_result'         ).Value := True;
      SP_Report_buh.Open;

    end;

    line_cnt := line_cnt + 5;

    while not SP_Report_buh.Eof do begin
      ShowTextMessage('Идет вывод информации: '+IntToStr(SP_Report_buh.RecNo)+' из '+IntToStr(SP_Report_buh.RecordCount) + '...', False);
      exWks.Rows[IntToStr(line_cnt)].Copy;
      exWks.Rows[IntToStr(line_cnt+1)].Insert;

      exWks.Cells[line_cnt, 7].Value := SP_Report_buh.FieldByName('firm_agent_name').AsString;
      exWks.Cells[line_cnt, 8].Value := SP_Report_buh.FieldByName('agent_contract_cod').AsString;
      exWks.Cells[line_cnt,10].Value := SP_Report_buh.FieldByName('agent_sum_fact_real').AsCurrency;
      exWks.Cells[line_cnt,11].Value := SP_Report_buh.FieldByName('agent_brief_name').AsString;

      exWks.Cells[line_cnt,16].Value := SP_Report_buh.FieldByName('agent_sum_fact_real_0' ).AsCurrency;
      exWks.Cells[line_cnt,17].Value := SP_Report_buh.FieldByName('agent_sum_fact_real_18').AsCurrency;

      case SP_Report_buh.FieldByName('agent_currency_id').AsInteger of
        1: exWks.Cells[line_cnt, 12].Value := '=RC[-2]*R[-' + IntToStr(5+line_cnt-13) + ']C[-7]';
        3: exWks.Cells[line_cnt, 12].Value := '=RC[-2]';
        6: exWks.Cells[line_cnt, 12].Value := '=RC[-2]*R[-' + IntToStr(4+line_cnt-13) + ']C[-7]';
        5: exWks.Cells[line_cnt, 12].Value := '=RC[-2]*R[-' + IntToStr(3+line_cnt-13) + ']C[-7]';
      end;

      if SP_Report_buh.FieldByName('set_self_rate').AsBoolean = True then begin
        exWks.Cells[line_cnt, 15].Value := '=RC[-3]';
      end else begin

        case SP_Report_buh.FieldByName('agent_currency_id').AsInteger of
          1: exWks.Cells[line_cnt, 13].Value := '=RC[3]*R[-' + IntToStr(5+line_cnt-13) + ']C[-8]';
          3: exWks.Cells[line_cnt, 13].Value := '=RC[3]';
          6: exWks.Cells[line_cnt, 13].Value := '=RC[3]*R[-' + IntToStr(4+line_cnt-13) + ']C[-8]';
          5: exWks.Cells[line_cnt, 13].Value := '=RC[3]*R[-' + IntToStr(3+line_cnt-13) + ']C[-8]';
        end;

        case SP_Report_buh.FieldByName('agent_currency_id').AsInteger of
          1: exWks.Cells[line_cnt, 14].Value := '=RC[3]*R[-' + IntToStr(5+line_cnt-13) + ']C[-9]';
          3: exWks.Cells[line_cnt, 14].Value := '=RC[3]';
          6: exWks.Cells[line_cnt, 14].Value := '=RC[3]*R[-' + IntToStr(4+line_cnt-13) + ']C[-9]';
          5: exWks.Cells[line_cnt, 14].Value := '=RC[3]*R[-' + IntToStr(3+line_cnt-13) + ']C[-9]';
        end;

      end;

      line_cnt := line_cnt + 1;
      SP_Report_buh.Next;
    end;

    exWks.Rows[IntToStr(line_cnt)].Delete;
    exWks.Rows[IntToStr(line_cnt)].Delete;
    exWks.Range['A1'].Select;
  end;

  exApp.CutCopyMode := False;
  SP_Report_buh.Free;
  Q.Free;
  exApp.Visible := True;
  VarClear(exWks); VarClear(exWkb); VarClear(exApp);
  ShowTextMessage();
  Screen.Cursor := crDefault;
end;

procedure TfmFrahtBuhDlg.PrintClientBalansGrow();
var
  Fdate1, Fdate2, Fdate_tmp : TDateTime;
  exApp, exWkb, exWks : Variant;
  SP : TADOStoredProc;
  firm_self, line_cnt : integer;
  currency_id : integer;
  contract_id : integer;

  column_num : integer;
begin

  currency_id := cxLookupComboBox3.EditValue;
//  if (currency_id <> 1) and (currency_id <> 3) then begin
  if (currency_id <> 3) then begin // отчет можно строить только в рублях
    Application.MessageBox(PChar('Валюта "' + cxLookupComboBox3.Text + '" для отчета не поддерживается.'), 'Внимание', MB_ICONWARNING or MB_OK);
    Exit;
  end;


  Fdate1 := StrToDate('01.'+IntToStr(cxComboBox1.ItemIndex + 1)+'.'+cxComboBox4.Text);
  Fdate2 := IncMonth(StrToDate('01.'+IntToStr(cxComboBox5.ItemIndex + 1)+'.'+cxComboBox6.Text),1)-1;

  ShowTextMessage('Запуск Excel...', False);

  exApp := CreateOleObject('Excel.Application');
  exWkb := exApp.Workbooks.Add(GetDocBlob(ADOFrahtBuhDlg, 31, 9, True)); // 'Нарастающий баланс.xls'
  exWkb := exApp.ActiveWorkbook;
  exWks := exWkb.WorkSheets[1];

 // exApp.Visible := True;
  SP := TADOStoredProc.Create(nil);
  SP.Connection := ADOFrahtBuhDlg;
  SP.ProcedureName := 'sp_Report_client_balans_grow';
  SP.Parameters.Refresh;
  SP.Parameters.ParamByName('@period_begin'      ).Value := Fdate1;
  SP.Parameters.ParamByName('@period_end'        ).Value := Fdate2;
  SP.Parameters.ParamByName('@str_contract_id'   ).Value := GetDataFromCheckBox(cxCheckComboBox4, False);
  SP.Parameters.ParamByName('@set_date_finance'  ).Value := iif(cxButton4.SpeedButtonOptions.Down, 1, 0);

  firm_self      := -9;
  contract_id    := -9;
  line_cnt       := 5;

  Fdate_tmp := Fdate2;
  exWks.Range['E4'].Value := FormatDateTime('mmmm yyyy', Fdate1);
  while Fdate_tmp >= IncMonth(Fdate1, 1) do begin
    exWks.Columns['E:N'].Copy;
    exWks.Columns['O:X'].Insert;
    exWks.Range['O4'].Value := FormatDateTime('mmmm yyyy', Fdate_tmp);
    Fdate_tmp := IncMonth(Fdate_tmp, -1);
  end;

  // Цикл по собственным организациям
  // Цикл не требуется, т.к. ХП возвращает результат по указанным Договорам вне зависимости от коннекта
  SP.Open;

  while not SP.Eof do begin

    if firm_self <> SP.FieldByName('firm_self').AsInteger then begin
      // Новый блок
      if firm_self <> -9 then begin
        // удаляем лишние строки - при необходимости
        line_cnt := line_cnt+1;
        exWks.Rows[IntToStr(line_cnt+0) + ':' + IntToStr(line_cnt+1)].Delete;
      end;

      exWks.Rows[IntToStr(line_cnt+4) + ':' + IntToStr(line_cnt+6)].Insert;
      exWks.Rows[IntToStr(line_cnt+1) + ':' + IntToStr(line_cnt+3)].Copy;
      exWks.Rows[IntToStr(line_cnt+4) + ':' + IntToStr(line_cnt+6)].PasteSpecial(1);

      exWks.Cells[line_cnt+3, 2].Value := 'Итого '+SP.FieldByName('firm_self_name').AsString+':';

      firm_self      := SP.FieldByName('firm_self').AsInteger;
    end;

    if (contract_id<>SP.FieldByName('contract_id').AsInteger) then begin
      // Новая строка - подрядчик
      line_cnt := line_cnt + 1;
      exWks.Rows[IntToStr(line_cnt+1)].Insert;
      exWks.Rows[IntToStr(line_cnt+0)].Copy;
      exWks.Rows[IntToStr(line_cnt+1)].PasteSpecial(1);

      contract_id    := SP.FieldByName('contract_id').AsInteger;
    end;

    exWks.Cells[line_cnt, 2].Value := SP.FieldByName('firm_self_name').AsString;
    exWks.Cells[line_cnt, 3].Value := SP.FieldByName('firm_customer_name').AsString;
    exWks.Cells[line_cnt, 4].Value := SP.FieldByName('contract_cod').AsString;

    Fdate_tmp := SP.FieldByName('date_period_finance').AsDateTime;
    column_num := 0;
    while Fdate_tmp >= IncMonth(Fdate1, 1) do begin
      Fdate_tmp := IncMonth(Fdate_tmp, -1);
      Inc(column_num);
    end;
    column_num := column_num * 10;

    if currency_id = 1 then begin
      if not SP.FieldByName('fact_weight').IsNull then
        exWks.Cells[line_cnt, 5 + column_num].Value := SP.FieldByName('fact_weight').AsFloat;
      if not SP.FieldByName('amount_units_fact').IsNull then
        exWks.Cells[line_cnt, 6 + column_num].Value := SP.FieldByName('amount_units_fact').AsFloat;
      if not SP.FieldByName('bargain_sum_fact_USD').IsNull then
        exWks.Cells[line_cnt, 9 + column_num].Value := SP.FieldByName('bargain_sum_fact_USD').AsFloat;
      if not SP.FieldByName('bargain_comiss_USD').IsNull then
        exWks.Cells[line_cnt, 12 + column_num].Value := SP.FieldByName('bargain_comiss_USD').AsFloat;
      if not SP.FieldByName('pay_sum_USD').IsNull then
        exWks.Cells[line_cnt, 13 + column_num].Value := SP.FieldByName('pay_sum_USD').AsFloat;
    end else begin
      if not SP.FieldByName('fact_weight').IsNull then
        exWks.Cells[line_cnt, 5 + column_num].Value := SP.FieldByName('fact_weight').AsFloat;
      if not SP.FieldByName('amount_units_fact').IsNull then
        exWks.Cells[line_cnt, 6 + column_num].Value := SP.FieldByName('amount_units_fact').AsFloat;
      if not SP.FieldByName('bargain_sum_fact_notNDS_RUB').IsNull then
        exWks.Cells[line_cnt, 7 + column_num].Value := SP.FieldByName('bargain_sum_fact_notNDS_RUB').AsFloat;
      if not SP.FieldByName('bargain_sum_fact_NDS_RUB').IsNull then
        exWks.Cells[line_cnt, 8 + column_num].Value := SP.FieldByName('bargain_sum_fact_NDS_RUB').AsFloat;
      if not SP.FieldByName('bargain_sum_fact_RUB').IsNull then
        exWks.Cells[line_cnt, 9 + column_num].Value := SP.FieldByName('bargain_sum_fact_RUB').AsFloat;
      if not SP.FieldByName('bargain_comiss_notNDS_RUB').IsNull then
        exWks.Cells[line_cnt, 10 + column_num].Value := SP.FieldByName('bargain_comiss_notNDS_RUB').AsFloat;
      if not SP.FieldByName('bargain_comiss_NDS_RUB').IsNull then
        exWks.Cells[line_cnt, 11 + column_num].Value := SP.FieldByName('bargain_comiss_NDS_RUB').AsFloat;
      if not SP.FieldByName('bargain_comiss_RUB').IsNull then
        exWks.Cells[line_cnt, 12 + column_num].Value := SP.FieldByName('bargain_comiss_RUB').AsFloat;
      if not SP.FieldByName('pay_sum_RUB').IsNull then
        exWks.Cells[line_cnt, 13 + column_num].Value := SP.FieldByName('pay_sum_RUB').AsFloat;
    end;

    SP.Next;
    ShowTextMessage('Осталось '+IntToStr(SP.RecordCount - SP.RecNo), False);
  end;

  // удаление лишних сток
  if firm_self <> -9 then begin
    line_cnt := line_cnt+1;
    exWks.Rows[IntToStr(line_cnt+0) + ':' + IntToStr(line_cnt+1)].Delete; // лишние стороки
    line_cnt := line_cnt+1;
    exWks.Rows[IntToStr(line_cnt+0) + ':' + IntToStr(line_cnt+5)].Delete; // лишние блоки
  end else begin
    line_cnt := line_cnt+1;
    exWks.Rows[IntToStr(line_cnt+0) + ':' + IntToStr(line_cnt+0)].Delete; // лишние стороки
    line_cnt := line_cnt+2;
    exWks.Rows[IntToStr(line_cnt+0) + ':' + IntToStr(line_cnt+2)].Delete; // лишние блоки
  end;

  exWks.Range['A1'].Select;
  exApp.CutCopyMode := False;

  exApp.Visible := True;
  ShowTextMessage;
  SP.Free;
  VarClear(exWks); VarClear(exWkb); VarClear(exApp);
end;

end.
