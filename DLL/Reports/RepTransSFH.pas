unit RepTransSFH;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxListBox, StdCtrls, cxRadioGroup, cxGroupBox, cxControls,
  cxContainer, cxEdit, cxLabel, dxGDIPlusClasses, ExtCtrls, DB, ADODB, Default,
  Clipbrd, Other, ComObj, Registry, DBClient, DateUtils, StrUtils,
  cxTextEdit, cxMaskEdit, cxDropDownEdit, cxCalendar, cxLookAndFeelPainters,
  cxGraphics, cxLookAndFeels, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom,
  dxSkinDarkSide, dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary,
  dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMetropolis, dxSkinMetropolisDark, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue,
  dxSkinOffice2010Silver, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinOffice2016Colorful, dxSkinOffice2016Dark,
  dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus, dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008,
  dxSkinTheAsphaltWorld, dxSkinsDefaultPainters, dxSkinValentine, dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark, dxSkinVisualStudio2013Light,
  dxSkinVS2010, dxSkinWhiteprint, dxSkinXmas2008Blue, Vcl.ComCtrls, dxCore, cxDateUtils, dxSkinTheBezier, cxCustomListBox, Buttons;

type
  TfmRepTransSFH = class(TForm)
    Panel30: TPanel;
    Image2: TImage;
    cxLabel108: TcxLabel;
    Panel2: TPanel;
    cxGroupBox1: TcxGroupBox;
    cxRadioButton1: TcxRadioButton;
    cxGroupBox2: TcxGroupBox;
    Panel1: TPanel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    cxListBox1: TcxListBox;
    cxListBox2: TcxListBox;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    ADOReport: TADOConnection;
    Query_Firm: TADOQuery;
    Query: TADOQuery;
    cxGroupBox3: TcxGroupBox;
    cxLabel1: TcxLabel;
    cxDateEdit1: TcxDateEdit;
    cxLabel2: TcxLabel;
    cxDateEdit2: TcxDateEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cxListBox2DblClick(Sender: TObject);
    procedure cxListBox1DblClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
  private
    Fusr_pwd : PUser_pwd;
  public
    constructor Create(AOwner:TApplication; flag: boolean; usr_pwd:PUser_pwd; date_begin, date_end: TDate);
  end;

var
  fmRepTransSFH: TfmRepTransSFH;

function CreateWndRepTransSFH(AppHand: THandle; flag: boolean; usr_pwd: PUser_pwd; date_begin, date_end: TDate) : variant; export;
function RepTransSFH2Xls(usr_pwd: PUser_pwd; type_report: integer; date_begin, date_end: TDate; str_list_id: string) : variant; export;

implementation
  uses ADOInt, Raznoe;

{$R *.dfm}

//-- параметр flag указывает на то, что после вызова формы должен произойти выбор
//-- из формы данных и передача их в вызвавший модуль
//-- в этом случае должна светиться кнопка, позволяющая пользователю подтвердить выбор

function CreateWndRepTransSFH(AppHand: THandle; flag: boolean; usr_pwd: PUser_pwd; date_begin, date_end: TDate) : variant; export;
begin
  Application.Handle := AppHand;
  try
    fmRepTransSFH := TfmRepTransSFH.Create(Application, flag, usr_pwd, date_begin, date_end);
    //-- изменить по мере необходимости возвращаемых параметров
    if  fmRepTransSFH.ShowModal = mrOk then result := VarArrayOf([-9, '']);
  finally
    fmRepTransSFH.Free;
  end;
end;

constructor TfmRepTransSFH.Create(AOwner:TApplication; flag: boolean; usr_pwd:PUser_pwd; date_begin, date_end: TDate);
var           i : integer;
    str_firm_id : string;
begin
  Screen.Cursor := -11;
  inherited Create(nil);

  Fusr_pwd := usr_pwd;

  ADOReport.Connected := False;
  ADOReport.ConnectionString := 'Persist Security Info=True;Provider=SQLOLEDB.1;User ID='+usr_pwd^.user_name+';Password='+usr_pwd^.user_pass+';Initial Catalog='+usr_pwd^.catalog+';Data Source='+usr_pwd^.server+';';
  ADOReport.Connected := True;

  Query_Firm.Open;
  Query_Firm.First;
  while not Query_Firm.Eof do begin
    cxListBox1.Items.AddObject(Query_Firm.FieldByName('firm_customer_name').AsString + ' (' + Query_Firm.FieldByName('firm_customer').AsString + ')', TObject(Query_Firm.FieldByName('firm_customer').AsInteger));
    Query_Firm.Next;
  end;

  str_firm_id := '';
  str_firm_id := str_firm_id + '102530,300655,502357, 99377, 99274,300641,422175,583852,';
  str_firm_id := str_firm_id + '581950,300662,103107,101540,300650, 96169,121236,477363,';
  str_firm_id := str_firm_id + '300668,662771,582264,305822,122187';
//  cxDateEdit1.Date := StartOfTheMonth(StartOfTheMonth(Date) - 1);
//  cxDateEdit2.Date := EndOfTheMonth(cxDateEdit1.Date);
  cxDateEdit1.Date := date_begin;
  cxDateEdit2.Date := date_end;

  Query.SQL.Clear;
  Query.SQL.Add('SELECT cod as firm_id FROM dbo.StrToTbl(' + StrToSQL(str_firm_id) + ',default)');
  Query.Open;
  while not Query.Eof do begin
    i := cxListBox1.Items.IndexOfObject(TObject(Query.FieldByName('firm_id').AsInteger));
    if i <> -1 then cxListBox2.Items.AddObject(cxListBox1.Items.Strings[i], TObject(Integer(cxListBox1.Items.Objects[i])));
    Query.Next;
  end;

  MonitorEventFormOpen('OPEN_FORM', self.Name, ADOReport, -9);
  Screen.Cursor := 0;
end;


function RepTransSFH2Xls(usr_pwd: PUser_pwd; type_report: integer; date_begin, date_end: TDate; str_list_id: string) : variant; export;
var
  Conn                : TADOConnection;
  exApp, exWkb, exWks : Variant;
             i, month : integer;
             line_cnt : Integer;
                   SP : TADOStoredProc;
         Query_Report : _Recordset;
      Client_SumKargo : TClientDataSet;
begin
  // TypeRep - 0 = За период (с выбором фирм), 1 = По выбранным записям
  try
    Screen.Cursor := crHourglass;

    Conn := TADOConnection.Create(nil);
    Conn.ConnectionString := 'Provider=SQLOLEDB.1;Persist Security Info=True;User ID='+usr_pwd^.user_name+';Password='+usr_pwd^.user_pass+';Initial Catalog='+usr_pwd^.catalog+';Data Source='+usr_pwd^.server+';';
    Conn.LoginPrompt := False;
    Conn.Connected := True;

    ShowTextMessage('Формирование отчёта...', False);

    SP := TADOStoredProc.Create(nil);
    SP.Connection := Conn;
    SP.ProcedureName := 'sp_Report_TransSFH';
    SP.Parameters.Refresh;

    SP.Parameters.ParamByName('@type_report').Value := type_report;
    SP.Parameters.ParamByName('@date_begin').Value  := date_begin;
    SP.Parameters.ParamByName('@date_end').Value    := date_end;
    SP.Parameters.ParamByName('@str_list_id').Value := str_list_id;

    SP.Open;

    ShowTextMessage('Запуск Excel...', False);

    exApp := CreateOleObject('Excel.Application');
    exWkb := exApp.Workbooks.Add(GetDocBlob(Conn, 23, 9, True)); // 'Внутригрупповые перевозки СФХ.xls'
    exWkb := exApp.ActiveWorkbook;
    exWks := exWkb.WorkSheets[1];
    //exApp.Visible := True;

    // Создаем ClientDS
    Client_SumKargo := TClientDataSet.Create(nil);
    Client_SumKargo.FieldDefs.Add('kargoETSNG_group_name', ftString, 800);
    Client_SumKargo.IndexFieldNames := 'kargoETSNG_group_name';
    Client_SumKargo.CreateDataSet;

    Query_Report := SP.Recordset;

    if not Query_Report.Bof then Query_Report.MoveFirst;
    while not Query_Report.Eof do begin
      if not Client_SumKargo.Locate('kargoETSNG_group_name', VarToStr(Query_Report.Fields['kargoETSNG_group_name'].Value), []) then begin
        Client_SumKargo.Insert;
        Client_SumKargo.FieldByName('kargoETSNG_group_name').AsString := VarToStr(Query_Report.Fields['kargoETSNG_group_name'].Value);
        Client_SumKargo.Post;
      end;
      // Даты
      if type_report = 1 then begin
        // Если отчет по выделенным карточкам, то даты вычисляем
        if (date_begin = Date) or (date_begin > Query_Report.Fields['date_period_finance'].Value) then date_begin := Query_Report.Fields['date_period_finance'].Value;
        if (date_end = Date) or (date_end < Query_Report.Fields['date_period_finance'].Value) then date_end := EndOfTheMonth(Query_Report.Fields['date_period_finance'].Value);
      end;

      Query_Report.MoveNext;
    end;

    exWks.Range['D1'].Value := 'За период с ' + FormatDateTime('dd.mm.yyyy', date_begin) + ' г. '+
                                    'по ' + FormatDateTime('dd.mm.yyyy', date_end) + ' г.';

    line_cnt := 4;
    if not Query_Report.Bof then begin
      Query_Report.MoveFirst;
      month    := MonthOf(Query_Report.Fields['date_period_finance'].Value);
    end;
    while not Query_Report.Eof do begin
      ShowTextMessage('Осталось ' + IntToStr(Query_Report.RecordCount - Query_Report.AbsolutePosition) + ' ...', False);

      if month <> MonthOf(Query_Report.Fields['date_period_finance'].Value) then begin
        exWks.Rows[IntToStr(line_cnt)].Copy;
        exWks.Rows[IntToStr(line_cnt + 1)].Insert;
        exWks.Range['B' + IntToStr(line_cnt) + ':K' + IntToStr(line_cnt)].Interior.ColorIndex := 40;
        exWks.Range['B' + IntToStr(line_cnt) + ':K' + IntToStr(line_cnt)].ClearContents;
        month    := MonthOf(Query_Report.Fields['date_period_finance'].Value);
        line_cnt := line_cnt + 1;
      end;
      exWks.Rows[IntToStr(line_cnt)].Copy;
      exWks.Rows[IntToStr(line_cnt + 1)].Insert;

      exWks.Range['B' + IntToStr(line_cnt)].Value := Query_Report.Fields['date_period_finance'].Value;
      exWks.Range['D' + IntToStr(line_cnt)].Value := Query_Report.Fields['contract_cod'].Value;
      exWks.Range['E' + IntToStr(line_cnt)].Value := Query_Report.Fields['firm_customer_name'].Value;
      exWks.Range['F' + IntToStr(line_cnt)].Value := Query_Report.Fields['kargoETSNG_group_name'].Value;
      exWks.Range['G' + IntToStr(line_cnt)].Value := Query_Report.Fields['amount_fact'].Value;
      // Сумма в USD
      exWks.Range['H' + IntToStr(line_cnt)].Value := Query_Report.Fields['client_notNDS_USD'].Value;
      exWks.Range['I' + IntToStr(line_cnt)].Value := Query_Report.Fields['agent_notNDS_USD'].Value;
      // Сумма в RUB
      exWks.Range['J' + IntToStr(line_cnt)].Value := Query_Report.Fields['client_notNDS_RUB'].Value;
      exWks.Range['K' + IntToStr(line_cnt)].Value := Query_Report.Fields['agent_notNDS_RUB'].Value;

      line_cnt := line_cnt + 1;
      Query_Report.MoveNext;
    end;

    exWks.Rows[IntTostr(line_cnt)].Delete;
    exWks.Rows[IntTostr(line_cnt)].Delete;

    line_cnt := line_cnt + 9;
    Client_SumKargo.First;
    while not Client_SumKargo.Eof do begin
      exWks.Rows[IntToStr(line_cnt)].Copy;
      exWks.Rows[IntToStr(line_cnt + 1)].Insert;

      exWks.Range['F' + IntToStr(line_cnt)].Value := Client_SumKargo.FieldByName('kargoETSNG_group_name').AsString;

      line_cnt := line_cnt + 1;
      Client_SumKargo.Next;
    end;
    exWks.Rows[IntTostr(line_cnt)].Delete;
    exWks.Rows[IntTostr(line_cnt)].Delete;

    exApp.CutCopyMode := False;
    exWks.Range['A1'].Select;

    exApp.Visible := True;
  finally
    ShowTextMessage;
    VarClear(exWkb); VarClear(exApp); VarClear(exWks);
    Conn.Free;
    Screen.Cursor := crDefault;
    result := VarArrayOf([-9, '']);
  end;
end;

/// Методы формы

procedure TfmRepTransSFH.cxListBox1DblClick(Sender: TObject);
var i : integer;
begin
  for i:=0 to cxListBox1.Items.Count -1 do begin
    if cxListBox1.Selected[i] = True then
      if cxListBox2.Items.IndexOfObject(cxListBox1.Items.Objects[i]) = -1 then
        cxListBox2.Items.AddObject(cxListBox1.Items.Strings[i], TObject(Integer(cxListBox1.Items.Objects[i])));
  end;
end;

procedure TfmRepTransSFH.cxListBox2DblClick(Sender: TObject);
var i : integer;
begin
  for i:=0 to cxListBox2.Items.Count -1 do begin
    if cxListBox2.Selected[i] = True then begin
      cxListBox2.Items.Delete(i);
      Break;
    end;
  end;
end;

procedure TfmRepTransSFH.FormClose(Sender: TObject; var Action: TCloseAction);
var
  str_firm_id : string;
          Reg : TRegistry;
            i : integer;
begin
  str_firm_id := '';
  for i := 0 to cxListBox2.Items.Count - 1 do begin
    str_firm_id := str_firm_id + IntToStr(Integer(cxListBox2.Items.Objects[i])) + ',';
  end;

  Reg := TRegistry.Create;
  Reg.RootKey := HKEY_CURRENT_USER;

  if not Reg.KeyExists('\Software\LIS1\RepTransSFH\') then Reg.CreateKey('\Software\LIS1\RepTransSFH\');
  Reg.OpenKey('\Software\LIS1\RepTransSFH\', True);

  Reg.WriteString('str_firm_id', str_firm_id);
  Reg.WriteDate('date_begin', cxDateEdit1.Date);
  Reg.WriteDate('date_end', cxDateEdit2.Date);

  Reg.Free;
end;

procedure TfmRepTransSFH.BitBtn1Click(Sender: TObject);
var
  str_firm_id : string;
            i : integer;
begin
  str_firm_id := '';
  for i := 0 to cxListBox2.Items.Count - 1 do begin
    str_firm_id := str_firm_id + IntToStr(Integer(cxListBox2.Items.Objects[i])) + ',';
  end;

  RepTransSFH2Xls(Fusr_pwd, 0, cxDateEdit1.Date, cxDateEdit2.Date, str_firm_id);
end;

end.
