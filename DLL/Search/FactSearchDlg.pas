unit FactSearchDlg;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Default,
  Dialogs, StdCtrls, ExtCtrls, cxControls, cxContainer, cxEdit, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxCalendar, cxGroupBox, cxCheckBox,
  cxPropertiesStore, cxGraphics, cxCheckComboBox, DB, ADODB, cxButtonEdit, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, cxRadioGroup,
  cxLabel, cxLookAndFeelPainters, cxLookAndFeels, cxMemo, DBClient, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel,
  dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans,
  dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMetropolis,
  dxSkinMetropolisDark, dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013DarkGray,
  dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus,
  dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008, dxSkinTheAsphaltWorld, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinVS2010, dxSkinWhiteprint, dxSkinXmas2008Blue, ComCtrls, dxCore, cxDateUtils, cxClasses, dxSkinOffice2016Colorful, dxSkinOffice2016Dark,
  dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark, dxSkinVisualStudio2013Light, dxSkinscxPCPainter, dxBarBuiltInMenu, cxPC,
  dxSkinTheBezier, Menus, cxButtons, dxSkinOffice2019Colorful, dxCoreGraphics;

type
  TfmFactSearchDlg = class(TForm)
    Panel1: TPanel;
    Panel7: TPanel;
    Panel15: TPanel;
    cxDateEdit2: TcxDateEdit;
    cxPropertiesStore1: TcxPropertiesStore;
    ADOQuery: TADOQuery;
    DataSource1: TDataSource;
    GroupBox4: TGroupBox;
    Label9: TLabel;
    Label8: TLabel;
    cxButtonEdit2: TcxButtonEdit;
    cxButtonEdit3: TcxButtonEdit;
    cxButtonEdit9: TcxButtonEdit;
    cxButtonEdit10: TcxButtonEdit;
    GroupBox1: TGroupBox;
    Label11: TLabel;
    cxButtonEdit5: TcxButtonEdit;
    cxButtonEdit6: TcxButtonEdit;
    Label2: TLabel;
    cxButtonEdit7: TcxButtonEdit;
    cxButtonEdit8: TcxButtonEdit;
    cxDateEdit1: TcxDateEdit;
    Panel4: TPanel;
    cxRadioGroup2: TcxRadioGroup;
    Panel5: TPanel;
    cxLabel8: TcxLabel;
    cxButtonEdit12: TcxButtonEdit;
    Panel6: TPanel;
    DataSource2: TDataSource;
    Panel2: TPanel;
    RadioButton3: TRadioButton;
    RadioButton4: TRadioButton;
    cxDateEdit4: TcxDateEdit;
    cxDateEdit5: TcxDateEdit;
    Splitter2: TSplitter;
    cxRadioGroup1: TcxRadioGroup;
    cxButtonEdit13: TcxButtonEdit;
    cxLabel3: TcxLabel;
    Panel8: TPanel;
    cxCheckBox3: TcxCheckBox;
    cxCheckBox4: TcxCheckBox;
    cxCheckBox5: TcxCheckBox;
    cxButtonEdit15: TcxButtonEdit;
    cxButtonEdit16: TcxButtonEdit;
    Label3: TLabel;
    cxButtonEdit17: TcxButtonEdit;
    cxButtonEdit18: TcxButtonEdit;
    Label6: TLabel;
    GroupBox3: TGroupBox;
    Label7: TLabel;
    cxButtonEdit19: TcxButtonEdit;
    cxDateEdit6: TcxDateEdit;
    cxDateEdit7: TcxDateEdit;
    RadioButton1: TRadioButton;
    cxPageControl1: TcxPageControl;
    cxTabSheet1: TcxTabSheet;
    cxTabSheet2: TcxTabSheet;
    GroupBox2: TGroupBox;
    cxMemo1: TcxMemo;
    Panel9: TPanel;
    GroupBox8: TGroupBox;
    cxMemo2: TcxMemo;
    Panel10: TPanel;
    Splitter1: TSplitter;
    Panel11: TPanel;
    GroupBox5: TGroupBox;
    cxMemo3: TcxMemo;
    Panel12: TPanel;
    cxTextEdit3: TcxTextEdit;
    cxLabel4: TcxLabel;
    Panel13: TPanel;
    cxLabel5: TcxLabel;
    cxButtonEdit20: TcxButtonEdit;
    cxButtonEdit21: TcxButtonEdit;
    Panel14: TPanel;
    cxButtonEdit4: TcxButtonEdit;
    cxButtonEdit1: TcxButtonEdit;
    Label1: TLabel;
    Label5: TLabel;
    cxButtonEdit14: TcxButtonEdit;
    cxButtonEdit11: TcxButtonEdit;
    Panel16: TPanel;
    cxTextEdit4: TcxTextEdit;
    cxLabel6: TcxLabel;
    cxLabel7: TcxLabel;
    cxComboBox2: TcxComboBox;
    cxComboBox1: TcxComboBox;
    cxRadioGroup3: TcxRadioGroup;
    cxButton1: TcxButton;
    cxButton3: TcxButton;
    cxGroupBox1: TcxGroupBox;
    cxCheckComboBox1: TcxCheckComboBox;
    cxLabel1: TcxLabel;
    cxTextEdit1: TcxTextEdit;
    procedure FormShow(Sender: TObject);
    procedure cxDateEdit1Exit(Sender: TObject);
    procedure cxButtonEdit12PropertiesButtonClick(Sender: TObject;  AButtonIndex: Integer);
    procedure cxButtonEdit7PropertiesButtonClick(Sender: TObject;  AButtonIndex: Integer);
    procedure cxButtonEdit5PropertiesButtonClick(Sender: TObject;  AButtonIndex: Integer);
    procedure cxButtonEdit1PropertiesButtonClick(Sender: TObject;  AButtonIndex: Integer);
    procedure cxButtonEdit2PropertiesButtonClick(Sender: TObject;  AButtonIndex: Integer);
    procedure cxRadioGroup2PropertiesChange(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure RadioButton3Click(Sender: TObject);
    procedure cxDateEdit1PropertiesEditValueChanged(Sender: TObject);
    procedure cxButtonEdit13PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure cxComboBox1PropertiesChange(Sender: TObject);
    procedure cxCheckBox3PropertiesChange(Sender: TObject);
    procedure cxMemo1PropertiesChange(Sender: TObject);
    procedure cxMemo2PropertiesChange(Sender: TObject);
    procedure cxButtonEdit16PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure cxButtonEdit19PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure cxButtonEdit18PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure cxButtonEdit4PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure cxButtonEdit3PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure cxMemo3PropertiesChange(Sender: TObject);
    procedure cxButtonEdit20PropertiesButtonClick(Sender: TObject;AButtonIndex: Integer);
    procedure cxComboBox2PropertiesEditValueChanged(Sender: TObject);
    procedure cxComboBox2Exit(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure cxButton3Click(Sender: TObject);
  private
    FResultString    : string;
    FConnectStr      : string;
    Fusr_pwd         : PUser_pwd;
    Fset_search_sum  : boolean;
    FClientDS        : TClientDataSet;

    procedure SetBargainId(bargain_id : integer; str_fact_id{, str_num_vagon, str_num_document} : string);
    procedure CheckStrField();
  public
    constructor Create(App: TApplication; usr_pwd: PUser_pwd; ClientDS: TClientDataSet; type_fact: integer);  overload;
  published
    property _SetSearchSum   : boolean write Fset_search_sum;
    //property _SetBargainId   : integer write SetBargainId;
  end;

function CreateWndFactSearchDlg(AppHandle: THandle; usr_pwd: PUser_pwd; var ClientDS: TClientDataSet; type_fact: integer): variant;
function CreateWndFactSearchBargainDlg(AppHandle: THandle; usr_pwd: PUser_pwd; bargain_id: integer; var ClientDS: TClientDataSet; str_fact_id : string): variant;
function CreateWndFactSearchSumDlg(AppHandle: THandle; usr_pwd: PUser_pwd; var ClientDS: TClientDataSet): variant;

var
  fmFactSearchDlg: TfmFactSearchDlg;

implementation
    uses DateUtils, Filter, Raznoe;

{$R *.dfm}

function CreateWndFactSearchDlg(AppHandle: THandle; usr_pwd: PUser_pwd; var ClientDS: TClientDataSet; type_fact: integer): variant;
begin
  try
    Application.Handle := AppHandle;
    fmFactSearchDlg := TfmFactSearchDlg.Create(Application, usr_pwd, ClientDS, type_fact);
    if fmFactSearchDlg.ShowModal = mrOK then Result := VarArrayOf([True])
    else Result := VarArrayOf([False]);
  finally
    fmFactSearchDlg.Free;
    fmFactSearchDlg := nil;
  end;
end;

function CreateWndFactSearchBargainDlg(AppHandle: THandle; usr_pwd: PUser_pwd; bargain_id: integer; var ClientDS: TClientDataSet; str_fact_id : string): variant;
begin
  try
    Application.Handle := AppHandle;
    fmFactSearchDlg := TfmFactSearchDlg.Create(Application, usr_pwd, ClientDS, 0);
    fmFactSearchDlg.SetBargainId(bargain_id, str_fact_id);
    if fmFactSearchDlg.ShowModal = mrOK then Result := VarArrayOf([True])
    else Result := VarArrayOf([False]);
  finally
    fmFactSearchDlg.Free;
    fmFactSearchDlg := nil;
  end;
end;

function CreateWndFactSearchSumDlg(AppHandle: THandle; usr_pwd: PUser_pwd; var ClientDS: TClientDataSet): variant;
begin
  try
    Application.Handle := AppHandle;
    fmFactSearchDlg := TfmFactSearchDlg.Create(Application, usr_pwd, ClientDS, 0);
    fmFactSearchDlg._SetSearchSum := True;

    if fmFactSearchDlg.ShowModal = mrOK then Result := VarArrayOf([True])
    else Result := VarArrayOf([False]);
  finally
    fmFactSearchDlg.Free;
    fmFactSearchDlg := nil;
  end;
end;

constructor TfmFactSearchDlg.Create(App: TApplication; usr_pwd: PUser_pwd; ClientDS: TClientDataSet; type_fact: integer);
var  Q : TADOQuery;
     i : integer;
    sl : TStringList;
begin
  Screen.Cursor := crHourglass;
  inherited Create(App);

  FClientDS := ClientDS;
  FResultString    := '';
  FConnectStr := 'Provider=SQLOLEDB.1;Persist Security Info=False;User ID='+usr_pwd.user_name+';Initial Catalog='+usr_pwd.catalog+';Data Source='+usr_pwd.server+';password='+usr_pwd.user_pass;
  Fusr_pwd := usr_pwd;
  Fset_search_sum := False;

  ADOQuery.ConnectionString := FConnectStr;


  // ----- Оперативный факт -------------
  if type_fact = 0 then begin
    Caption := 'Фильтрация оперативного факта';

    Constraints.MinHeight := Constraints.MinHeight - GroupBox3.Height - Panel12.Height - Panel16.Height;
    Height := Height - GroupBox3.Height - Panel12.Height - Panel16.Height;

    GroupBox3.Visible     := False;

    RadioButton1.Visible  := False;
    cxDateEdit6.Visible   := False;
    cxDateEdit7.Visible   := False;

    cxLabel3.Visible      := False;
    cxButtonEdit13.Visible:= False;
    cxButtonEdit21.Visible:= False;
    Panel12.Visible       := False;
    Panel16.Visible       := False;

    // ------ выделяем все, кроме 1-го элемента (Недействительные)
    for i:=0 to cxCheckComboBox1.Properties.Items.Count - 1 do
      cxCheckComboBox1.States[i] := cbsChecked;
  end;

  // ------ вся Питерская отгрузка ------------
  if type_fact = 1 then begin
    Caption := 'Фильтрация оперативного факта (Всё)';

    Constraints.MinHeight := Constraints.MinHeight - Panel4.Height - Panel6.Height - Panel13.Height;
    Height := Height - Panel4.Height - Panel6.Height - Panel13.Height;


    cxRadioGroup1.Enabled := False;
    cxRadioGroup2.Enabled := False;

    Label6.Caption  := 'Ст.отпр.СНГ............';
    Label2.Caption  := 'Ст.назн.СНГ.............';

    cxGroupBox1.Visible := False;
    Panel6.Visible  := False;   //----
    Panel13.Visible := False;   //----
    Panel4.Visible  := False;   //----
    cxComboBox1.Properties.Items.Delete(2);


    Q := TADOQuery.Create(nil);
    Q.ConnectionString := 'Provider=SQLOLEDB.1;Persist Security Info=False;User ID=admin_depo;Initial Catalog=depo_fact;Data Source='+usr_pwd.server+';password=cjnhfkjubcnbrf';
    Q.SQL.Text := 'SELECT TOP 1 * FROM fact_all ';
    Q.Open;
    cxComboBox2.Clear;
    //столбцы которые необходимо исключить из параметров поиска тк они уже присутствуют в нем отдельными параметрами дублировать их не зачем
    sl := TStringList.Create;
    sl.Add('Номер контейнера');
    sl.Add('Номер документа');
    sl.Add('Тип транспортировки');
    sl.Add('Код груза ЕТСНГ');
    sl.Add('Наименование груза ЕТСНГ');
    sl.Add('Группа груза');
    sl.Add('Дорога отправления');
    sl.Add('Код станции отправления РФ');
    sl.Add('Код станции отправления СНГ');
    sl.Add('Станция отправления РФ');
    sl.Add('Станция отправления СНГ');
    sl.Add('Дорога назначения');
    sl.Add('Код станции назначения РФ');
    sl.Add('Код станции назначения СНГ');
    sl.Add('Станция назначения РФ');
    sl.Add('Станция назначения СНГ');
    sl.Add('Признак места расчета');
    sl.Add('Плательщик тарифа');
    sl.Add('Дата раскредитовки');//тип дата передается как ftWideString поэтому исключаем

    for i := 0 to Q.FieldList.Count - 1 do begin
      if ( (Q.FieldList.Fields[i].DataType = ftString) OR (Q.FieldList.Fields[i].DataType = ftWideString) )and (sl.IndexOf(Q.FieldList.Fields[i].FieldName) = -1) then
        cxComboBox2.Properties.Items.Add(Q.FieldList.Fields[i].FieldName);
    end;
    sl.Free;
    Q.Free;
    CheckStrField();
  end;

  // ----- Оборот вагона -------------
  if type_fact = 2 then begin
    Caption := 'Фильтрация оборота вагона';

    Constraints.MinHeight := Constraints.MinHeight - GroupBox3.Height - Panel12.Height - Panel16.Height;
    Height := Height - GroupBox3.Height - Panel12.Height - Panel16.Height;

    cxGroupBox1.Visible   := False;
    GroupBox3.Visible     := False;

    RadioButton1.Visible  := False;
    cxDateEdit6.Visible   := False;
    cxDateEdit7.Visible   := False;

    cxLabel3.Visible      := False;
    cxButtonEdit13.Visible:= False;
    cxButtonEdit21.Visible:= False;
    Panel12.Visible       := False;
    Panel16.Visible       := False;
  end;

  // ------ вся Питерская отгрузка Оперативная------------
  if type_fact = 3 then begin
    Caption := 'Фильтрация оперативного факта (Опер)';

    Constraints.MinHeight := Constraints.MinHeight - GroupBox3.Height - Panel6.Height - Panel13.Height - Panel4.Height - Panel14.Height - Panel12.Height - Panel16.Height - cxGroupBox1.Height;
    Height := Height - GroupBox3.Height - Panel6.Height - Panel13.Height - Panel4.Height - Panel14.Height - Panel12.Height - Panel16.Height - cxGroupBox1.Height;

    cxRadioGroup1.Enabled := False;
    cxRadioGroup2.Enabled := False;
    cxGroupBox1.Visible   := False;

    Label6.Caption := 'Ст.отпр.СНГ............';
    Label2.Caption := 'Ст.назн.СНГ.............';

    Panel6.Visible  := False;
    Panel13.Visible := False;
    Panel4.Visible  := False;
    Panel14.Visible := False;
    Panel12.Visible := False;
    Panel16.Visible := False;

    GroupBox3.Visible := False;
    cxComboBox1.Properties.Items.Delete(2);
  end;

  // ------ Показатели работы парка------------
  if (type_fact = 4) then begin
    Caption := 'Показатели работы парка';

    Constraints.MinHeight := Constraints.MinHeight - GroupBox8.Height;
    Height := Height - GroupBox8.Height;

    cxGroupBox1.Visible := False;
    Panel8.Visible  := False;
    Panel4.Visible  := False;
    Panel5.Visible  := False;
    Panel14.Visible := False;
    Panel6.Visible  := False;
    Panel12.Visible := False;
    Panel13.Visible := False;
    Panel16.Visible := False;

    GroupBox1.Visible := False;
    GroupBox3.Visible := False;
    GroupBox4.Visible := False;

    GroupBox8.Visible := False;
    Splitter1.Visible := False;
    GroupBox2.Align   := alClient;

    Panel2.Align := alTop;
    Panel2.Height := 28;
    Panel15.Height := 32;

    cxTabSheet2.TabVisible := False;
  end;


  RadioButton3.Checked  := True;

  //для того чтобы при работе не отображались заголовки страницы PageControl1
  cxPageControl1.Pages[0].TabVisible := False;
  cxPageControl1.Pages[1].TabVisible := False;

  cxPageControl1.ActivePageIndex := 0;

  if cxPageControl1.ActivePageIndex = 0 then begin
    StoreRegistryMemo(rgLoad, '\Software\LIS1\cxMemo\FactSearchDlg', cxMemo1);
    StoreRegistryMemo(rgLoad, '\Software\LIS1\cxMemo\FactSearchDlg', cxMemo2);
  end;

  Screen.Cursor := crDefault;
end;


procedure TfmFactSearchDlg.CheckStrField;
begin
  if (cxComboBox2.EditValue <> NULL) AND (cxComboBox2.EditValue <> '') then
    cxTextEdit4.Enabled   := True
  else begin
    cxTextEdit4.Enabled   := False;
    cxTextEdit4.EditValue := Null;
  end;
end;

procedure TfmFactSearchDlg.cxComboBox2Exit(Sender: TObject);
begin
  CheckStrField();
end;

procedure TfmFactSearchDlg.cxComboBox2PropertiesEditValueChanged(Sender: TObject);
begin
  CheckStrField();
end;

procedure TfmFactSearchDlg.SetBargainId(bargain_id : integer; str_fact_id{, str_num_vagon, str_num_document} : string);
begin
  cxPropertiesStore1.Active := False;

//  ADOQuery.Close;
//  ADOQuery.SQL.Text := 'SELECT isnull(min(date_from_to),getdate()) date_begin, isnull(max(date_from_to),getdate()) date_end FROM fact ' +
//  'JOIN (SELECT cod FROM StrToTbl(''' + str_fact_id + ''','','')) v ON cod = fact_id ';
//  ADOQuery.Open;

//  RadioButton3.Checked  := True;
//  cxDateEdit1.Date := ADOQuery.FieldByName('date_begin').Value;
//  cxDateEdit2.Date := ADOQuery.FieldByName('date_end').Value;

//  ADOQuery.Close;
//  ADOQuery.SQL.Text := 'SELECT * FROM view_bargain WHERE bargain_id = ' + IntToStr(bargain_id);
//  ADOQuery.Open;
//  cxButtonEdit12.Text := ADOQuery.FieldByName('firm_customer_name').Value;
  cxRadioGroup1.ItemIndex := 0;
  cxRadioGroup2.ItemIndex := 2;
  cxRadioGroup1.Enabled := False;
  cxRadioGroup2.Enabled := False;

  cxMemo3.EditValue := StringReplace(str_fact_id, ',', #13#10, [rfReplaceAll, rfIgnoreCase]);

  cxCheckBox4.Checked := True;
  cxCheckBox5.Checked := True;

  cxPageControl1.ActivePageIndex := 1;

  cxButtonEdit2.Text  := '';
  cxButtonEdit9.Text  := '';

  cxButtonEdit18.Text := '';
  cxButtonEdit17.Text := '';

  cxButtonEdit3.Text  := '';
  cxButtonEdit10.Text := '';

  cxButtonEdit7.Text  := '';
  cxButtonEdit8.Text  := '';

  cxButtonEdit1.Text  := '';
  cxButtonEdit11.Text := '';

  cxButtonEdit4.Text  := '';
  cxButtonEdit14.Text := '';

  cxButtonEdit5.Text  := '';
  cxButtonEdit6.Text  := '';

  cxButtonEdit15.Text := '';
  cxButtonEdit16.Text := '';

  cxMemo1.EditValue   := null;
  cxMemo2.EditValue   := null;

  RadioButton3.Checked := cxCheckBox3.Checked;
//*********************************************************
  cxMemo1.Enabled := False;
  cxMemo2.Enabled := False;

  RadioButton3.Enabled := cxMemo1.Enabled;
  cxDateEdit1.Enabled  := cxMemo1.Enabled;
  cxDateEdit2.Enabled  := cxMemo1.Enabled;

  RadioButton3.Enabled := cxMemo1.Enabled;
  RadioButton4.Enabled := cxMemo1.Enabled;

  cxButtonEdit2.Enabled  := cxMemo1.Enabled;
  cxButtonEdit9.Enabled  := cxMemo1.Enabled;

  cxButtonEdit18.Enabled := cxMemo1.Enabled;
  cxButtonEdit17.Enabled := cxMemo1.Enabled;

  cxButtonEdit3.Enabled  := cxMemo1.Enabled;
  cxButtonEdit10.Enabled := cxMemo1.Enabled;

  cxButtonEdit7.Enabled  := cxMemo1.Enabled;
  cxButtonEdit8.Enabled  := cxMemo1.Enabled;

  cxButtonEdit1.Enabled  := cxMemo1.Enabled;
  cxButtonEdit11.Enabled := cxMemo1.Enabled;

  cxButtonEdit4.Enabled  := cxMemo1.Enabled;
  cxButtonEdit14.Enabled := cxMemo1.Enabled;

  cxButtonEdit5.Enabled  := cxMemo1.Enabled;
  cxButtonEdit6.Enabled  := cxMemo1.Enabled;

  cxButtonEdit15.Enabled := cxMemo1.Enabled;
  cxButtonEdit16.Enabled := cxMemo1.Enabled;
end;

procedure TfmFactSearchDlg.cxButton1Click(Sender: TObject);
begin

  FClientDS.EmptyDataSet;
  FClientDS.Append;

  if cxCheckBox3.Checked then
    FClientDS.FieldByName('type_report').Value := cxComboBox1.ItemIndex;

  if RadioButton3.Checked then begin
    FClientDS.FieldByName('set_date_from_to'   ).Value := 1;
    FClientDS.FieldByName('set_date_delivery'  ).Value := 0;
    FClientDS.FieldByName('date1'              ).Value := cxDateEdit1.Date;
    FClientDS.FieldByName('date2'              ).Value := cxDateEdit2.Date;
  end else if RadioButton4.Checked then begin
    FClientDS.FieldByName('set_date_from_to'   ).Value := 0;
    FClientDS.FieldByName('set_date_delivery'  ).Value := 1;
    FClientDS.FieldByName('date1'              ).Value := cxDateEdit4.Date;
    FClientDS.FieldByName('date2'              ).Value := cxDateEdit5.Date;
  end else if RadioButton1.Checked then begin
    FClientDS.FieldByName('date_load_begin').Value := cxDateEdit6.Date;
    FClientDS.FieldByName('date_load_end'  ).Value := cxDateEdit7.Date;
  end;

  FClientDS.FieldByName('str_num_vagon'      ).Value := MemoToSQL(cxMemo1, 1);
  FClientDS.FieldByName('str_num_document'   ).Value := MemoToSQL(cxMemo2, 2);
  FClientDS.FieldByName('str_fact_id'        ).Value := MemoToSQL(cxMemo3, 1);

  FClientDS.FieldByName('firm_customer_name' ).Value := cxButtonEdit12.EditValue;

  case cxRadioGroup1.ItemIndex of
    0: FClientDS.FieldByName('set_main').Value := null;
    1: FClientDS.FieldByName('set_main').Value := 1;
    2: FClientDS.FieldByName('set_main').Value := 0;
  end;

  case cxRadioGroup2.ItemIndex of
    0: FClientDS.FieldByName('set_bargain_id').Value := 0;
    1: FClientDS.FieldByName('set_bargain_id').Value := 1;
    2: FClientDS.FieldByName('set_bargain_id').Value := null;
  end;

  FClientDS.FieldByName('set_full_empty'     ).Value := cxRadioGroup3.ItemIndex;

  FClientDS.FieldByName('set_etran_not_valid').Value := cxCheckComboBox1.States[0];
  FClientDS.FieldByName('set_etran_prib'     ).Value := cxCheckComboBox1.States[1];
  FClientDS.FieldByName('set_etran_in_way'   ).Value := cxCheckComboBox1.States[2];
  FClientDS.FieldByName('set_etran_otpr'     ).Value := cxCheckComboBox1.States[3];
  FClientDS.FieldByName('set_etran_prepare'  ).Value := cxCheckComboBox1.States[4];
  FClientDS.FieldByName('payer_cod'          ).Value := cxTextEdit1.EditValue;

  FClientDS.FieldByName('node_begin_cod'     ).Value := cxButtonEdit9.EditValue;
  FClientDS.FieldByName('node_end_cod'       ).Value := cxButtonEdit10.EditValue;
  FClientDS.FieldByName('node_begin_SNG_cod' ).Value := cxButtonEdit17.EditValue;
  FClientDS.FieldByName('node_end_SNG_cod'   ).Value := cxButtonEdit8.EditValue;

  if cxButtonEdit21.EditValue <> Null then
    FClientDS.FieldByName('comment6_id'    ).Value := cxButtonEdit21.EditValue;

  FClientDS.FieldByName('road_begin_name'    ).Value := cxButtonEdit1.EditValue;
  FClientDS.FieldByName('road_end_name'      ).Value := cxButtonEdit4.EditValue;

  FClientDS.FieldByName('kargoETSNG_group_name').Value:= cxButtonEdit16.EditValue;
  FClientDS.FieldByName('kargoETSNG_group_id').Value  := cxButtonEdit15.EditValue;
  FClientDS.FieldByName('kargoETSNG_cod'     ).Value  := cxButtonEdit6.EditValue;

  FClientDS.FieldByName('type_transport'     ).Value  := cxButtonEdit19.EditValue;

  FClientDS.FieldByName('users_group_id'     ).Value := Fusr_pwd.user_group_id;

  FClientDS.FieldByName('set_prev_trip').Value := cxCheckBox4.Checked;
  FClientDS.FieldByName('set_next_trip').Value := cxCheckBox5.Checked;

  FClientDS.FieldByName('set_fact_sum'  ).Value  := Fset_search_sum;
  FClientDS.FieldByName('set_place_calc').Value:= cxTextEdit3.EditValue;
  FClientDS.FieldByName('rod_vagon_name').Value:= iif(cxButtonEdit20.EditValue = Null, Null, cxButtonEdit20.EditValue);

  FClientDS.FieldByName('str_field').Value  := cxComboBox2.EditValue;
  FClientDS.FieldByName('str_value').Value  := cxTextEdit4.EditValue;

  FClientDS.Post;

end;

procedure TfmFactSearchDlg.cxButton3Click(Sender: TObject);
begin
  FResultString := '';
end;

procedure TfmFactSearchDlg.cxButtonEdit12PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
var new_str, s : string;
begin
  if AButtonIndex = 0 then begin
    if InputQuery('Поиск', 'Шаблон поиска клиента:', new_str) then begin
      ADOQuery.Close;
      ADOQuery.SQL.Clear;
      s := 'SELECT DISTINCT MAX(contract_id) AS contract_id, MAX(contract_cod) AS contract_cod, ';
      s := s + 'firm_customer_name FROM view_bargain ';
      s := s + 'WHERE firm_customer_name LIKE ''%'+new_str+'%''';
      s := s + 'GROUP BY firm_customer_name ';
      s := s + 'ORDER BY firm_customer_name desc';
      ADOQuery.SQL.Add(s);
      ADOQuery.Open;
      fmFilter := TfmFilter.Create(0, ADOQuery, 'contract_id', 'contract_cod', 'firm_customer_name');
      if fmFilter.ShowModal=mrOk then cxButtonEdit12.Text := fmFilter.GetName;
    end;
  end else cxButtonEdit12.Text := '';
end;

procedure TfmFactSearchDlg.cxButtonEdit13PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
var new_str, name_str, id_str : string;
begin
    case AButtonIndex of
    0 : begin
            ADOQuery.Close;
            ADOQuery.SQL.Text := 'SELECT comment6_name, comment6_id, firm_customer_name FROM view_vagon_comment6 ORDER BY comment6_name ';
            ADOQuery.Open;
            ADOQuery.First;
            while not ADOQuery.Eof do begin
              if ADOQuery.FieldByName('comment6_name').AsString <> '' then begin
                name_str:= name_str + ',' + ADOQuery.FieldByName('comment6_name').AsString;
                id_str  := id_str   + ',' + ADOQuery.FieldByName('comment6_id').AsString;
              end;
              ADOQuery.Next;
            end;
            cxButtonEdit13.Style.color := clBtnFace;
            cxButtonEdit13.EditValue := copy(name_str, 2, length(name_str));
            cxButtonEdit21.EditValue := copy(id_str,   2, length(id_str));
            cxButtonEdit13.Hint := '';
            cxButtonEdit21.Hint := '';
        end;

    1 : if InputQuery('Выбор полигона', 'Шаблон поиска полигона:', new_str) then begin
           ADOQuery.Close;
           ADOQuery.SQL.Clear;
           ADOQuery.SQL.Add('SELECT comment6_id, firm_customer_name, comment6_name, contract_cod FROM view_vagon_comment6 WHERE comment6_name LIKE ''%'+new_str+'%'' ORDER BY comment6_name ');
           ADOQuery.Open;
           fmFilter := TfmFilter.Create(0, ADOQuery, 'comment6_id', 'firm_customer_name', 'comment6_name' );
           fmFilter._SetComment6 := True;
           if fmFilter.ShowModal = mrOk then begin
              GetFilterSelectRow(cxButtonEdit13, nil, cxButtonEdit21);
           end;
        end;

    2 : begin
          SetClear(cxButtonEdit13, cxButtonEdit21);
          cxButtonEdit13.Style.color := clWindow;
        end;
    end;
end;


procedure TfmFactSearchDlg.cxButtonEdit16PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
var new_str : string;
     set_ok : boolean;
begin
  set_ok := False;
  ADOQuery.Close;
  // ------ вся Питерская отгрузка ------------
  if not Panel6.Visible then begin
    case AButtonIndex of
      0 : begin
            case TcxButtonEdit(Sender).Tag of
              0 : if InputQuery('Поиск', 'Шаблон ГРУППЫ для груза ЕТСНГ:', new_str) then begin
                set_ok := True;
                ADOQuery.SQL.Text := 'SELECT inf_obj_id, inf_obj_name, inf_obj_cod FROM view_inf_obj WHERE type_inf_id = 161 AND inf_obj_name LIKE ''%'+new_str+'%'' ORDER BY inf_obj_name';
              end;
              1 : if InputQuery('Поиск', 'Шаблон КОДА ГРУППЫ для груза ЕТСНГ:', new_str) then begin
                set_ok := True;
                ADOQuery.SQL.Text := 'SELECT inf_obj_id, inf_obj_name, inf_obj_cod FROM view_inf_obj WHERE type_inf_id = 161 AND inf_obj_cod LIKE ''%'+new_str+'%'' ORDER BY inf_obj_cod';
              end;
            end;
          end;

      1 : SetClear(cxButtonEdit16, cxButtonEdit15);
    end;

    if set_ok then begin
      ADOQuery.Open;
      fmFilter := TfmFilter.Create(0, ADOQuery, 'inf_obj_id', 'inf_obj_cod', 'inf_obj_name');
      if fmFilter.ShowModal = mrOk then begin
        {устанавливаем выборанные наименования (груза) и коды}
        GetFilterSelectRow(cxButtonEdit16, cxButtonEdit15, nil);
        //очищаем поле груз
        SetClear(cxButtonEdit5, cxButtonEdit6);
      end;
    end;

  end else begin

    case AButtonIndex of
      0 : begin
            case TcxButtonEdit(Sender).Tag of
              0 : if InputQuery('Поиск', 'Шаблон ГРУППЫ для груза ЕТСНГ:', new_str) then begin
                set_ok := True;
                ADOQuery.SQL.Text := 'SELECT inf_obj_id, inf_obj_name, inf_obj_cod FROM view_inf_obj WHERE type_inf_id = -2 AND inf_obj_name LIKE ''%'+new_str+'%'' ORDER BY inf_obj_name';
              end;
              1 : if InputQuery('Поиск', 'Шаблон КОДА ГРУППЫ для груза ЕТСНГ:', new_str) then begin
                set_ok := True;
                ADOQuery.SQL.Text := 'SELECT inf_obj_id, inf_obj_name, inf_obj_cod FROM view_inf_obj WHERE type_inf_id = -2 AND inf_obj_cod LIKE ''%'+new_str+'%'' ORDER BY inf_obj_cod';
              end;
            end;
          end;

      1 : SetClear(cxButtonEdit16, cxButtonEdit15);
    end;

    if set_ok then begin
      ADOQuery.Open;
      fmFilter := TfmFilter.Create(0, ADOQuery, 'inf_obj_id', 'inf_obj_cod', 'inf_obj_name');
      if fmFilter.ShowModal = mrOk then begin
        {устанавливаем выборанные наименования (груза) и коды}
        GetFilterSelectRow(cxButtonEdit16, nil, cxButtonEdit15);
        //очищаем поле груз
        SetClear(cxButtonEdit5, cxButtonEdit6);
      end;
    end;
  end;

end;

procedure TfmFactSearchDlg.cxButtonEdit18PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
var new_str : string;
     set_ok : boolean;
begin
  set_ok := False;
  ADOQuery.Close;
  ADOQuery.SQL.Clear;
  case AButtonIndex of
    0 : case TcxButtonEdit(Sender).Tag of
          0 : if InputQuery('Поиск', 'Шаблон НАИМЕНОВАНИЯ для станции отправления СНГ:', new_str) then begin
                set_ok := True;
                ADOQuery.SQL.Add('SELECT inf_obj_id, inf_obj_name, inf_obj_cod FROM inf_obj_NODE where inf_obj_name LIKE ''%'+new_str+'%'' ORDER BY inf_obj_name');
              end;
          1 : if InputQuery('Поиск', 'Шаблон КОДА для станции отправления СНГ:', new_str) then begin
                set_ok := True;
                ADOQuery.SQL.Add('SELECT inf_obj_id, inf_obj_name, inf_obj_cod FROM inf_obj_NODE where inf_obj_cod LIKE ''%'+new_str+'%'' order by inf_obj_cod');
              end;
        end;

    1 : begin
//        Fnode_begin_SNG_id := -9;
          SetClear(cxButtonEdit18, cxButtonEdit17);
        end;
  end;

  if set_ok then begin
    ADOQuery.Open;
    fmFilter := TfmFilter.Create(0, ADOQuery, 'inf_obj_id', 'inf_obj_cod', 'inf_obj_name');
    if fmFilter.ShowModal=mrOk then begin
//      Fnode_end_SNG_id := fmFilter.GetId;
      GetFilterSelectRow(cxButtonEdit18, cxButtonEdit17, nil);
    end;
  end;
end;

procedure TfmFactSearchDlg.cxButtonEdit19PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
var new_str : string;
     set_ok : boolean;
begin
  set_ok := False;
  ADOQuery.Close;
  case AButtonIndex of
    0 : begin if InputQuery('Поиск', 'Тип транспортировки:', new_str) then begin
          set_ok := True;
          ADOQuery.SQL.Text := 'SELECT inf_obj_id, inf_obj_name, inf_obj_cod FROM view_inf_obj WHERE type_inf_id = 162 AND inf_obj_name LIKE ''%'+new_str+'%'' ORDER BY inf_obj_name';
        end;
      end;
    1 : SetClear(cxButtonEdit19, nil);
  end;

  if set_ok then begin
    ADOQuery.Open;
    fmFilter := TfmFilter.Create(0, ADOQuery, 'inf_obj_id', 'inf_obj_cod', 'inf_obj_name');
    if fmFilter.ShowModal = mrOk then begin
      {устанавливаем выборанные наименования (груза) и коды}
      GetFilterSelectRow(cxButtonEdit19, nil, nil);
    end;
  end;

end;

procedure TfmFactSearchDlg.cxButtonEdit1PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
var new_str : string;
     set_ok : boolean;
begin
  set_ok := False;
  ADOQuery.Close;
  ADOQuery.SQL.Clear;
  case AButtonIndex of
    0 : begin
          case TcxButtonEdit(Sender).Tag of
            0 : if InputQuery('Поиск', 'Шаблон поиска НАИМЕНОВАНИЯ дороги отправления:', new_str) then begin
                  set_ok := True;
                  ADOQuery.SQL.Add('SELECT inf_obj_id, inf_obj_name, inf_obj_cod FROM inf_obj_ROAD where inf_obj_name LIKE ''%'+new_str+'%'' order by inf_obj_name');
                end;
            1 : if InputQuery('Поиск', 'Шаблон поиска КОДА дороги отправления:', new_str) then begin
                  set_ok := True;
                  ADOQuery.SQL.Add('SELECT inf_obj_id, inf_obj_name, inf_obj_cod FROM inf_obj_ROAD where inf_obj_cod LIKE ''%'+new_str+'%'' order by inf_obj_name');
                end;
          end;
        end;
    1 : begin
//          Froad_begin_id := -9;
          SetClear(cxButtonEdit1, cxButtonEdit11);
        end;
  end;

  if set_ok then begin
    ADOQuery.Open;
    fmFilter := TfmFilter.Create(0, ADOQuery, 'inf_obj_id', 'inf_obj_cod', 'inf_obj_name');
    if fmFilter.ShowModal = mrOk then begin
//      Froad_begin_id := fmFilter.GetId;
      {устанавливаем выборанные наименования и коды}
      GetFilterSelectRow(cxButtonEdit1, cxButtonEdit11, nil);
    end;
  end;
end;


procedure TfmFactSearchDlg.cxButtonEdit20PropertiesButtonClick(Sender: TObject;AButtonIndex: Integer);
var new_str : string;
begin
  Screen.Cursor := crHourglass;
  ADOQuery.Close;
  case AButtonIndex of
    0 : if InputQuery('Поиск', 'Шаблон НАИМЕНОВАНИЯ для рода вагона', new_str) then begin
          ADOQuery.SQL.Text := 'SELECT rod_vagon_name, ROW_NUMBER() OVER(ORDER BY rod_vagon_name) AS ID FROM ' +
            '(SELECT DISTINCT rod_vagon_name FROM view_vagon WHERE rod_vagon_name LIKE ''%' + new_str + '%'') U ORDER BY rod_vagon_name ';
          ADOQuery.Open;

          fmFilter := TfmFilter.Create(0, ADOQuery, 'ID', 'rod_vagon_name', 'rod_vagon_name');
          fmFilter._SetRodVagonFromViewVagon := True;
          if fmFilter.ShowModal = mrOk then
            cxButtonEdit20.Text := iif(cxButtonEdit20.EditValue = Null, fmFilter._GetStrName, cxButtonEdit20.Text + ',' + fmFilter._GetStrName);
        end;
    1 : cxButtonEdit20.EditValue := null;
  end;
  Screen.Cursor := crDefault;
end;

procedure TfmFactSearchDlg.cxButtonEdit2PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
var new_str : string;
     set_ok : boolean;
      date1 : TDateTime;
begin
  if RadioButton3.Checked then
    date1 := cxDateEdit1.Date
  else
    date1 := cxDateEdit4.Date;

  set_ok := True;
  ADOQuery.Close;
  ADOQuery.SQL.Clear;
  case AButtonIndex of
    0 : begin
          case TcxButtonEdit(Sender).Tag of
            0 : if InputQuery('Поиск', 'Шаблон поиска НАИМЕНОВАНИЯ станции отправления:', new_str) then
                  ADOQuery.SQL.Add('SELECT inf_obj_id, inf_obj_name, inf_obj_cod FROM inf_obj_NODE WHERE inf_obj_name LIKE ''%'+new_str+'%'' AND LEFT(' + DateToSQL(date1) + ', 6) BETWEEN convert(varchar(6), date_begin, 112) AND convert(varchar(6), date_end, 112) ORDER BY inf_obj_name');
            1 : if InputQuery('Поиск', 'Шаблон поиска КОДА станции отправления:', new_str) then
                  ADOQuery.SQL.Add('SELECT inf_obj_id, inf_obj_name, inf_obj_cod FROM inf_obj_NODE WHERE inf_obj_cod LIKE ''%'+new_str+'%'' AND LEFT(' + DateToSQL(date1) + ', 6) BETWEEN convert(varchar(6), date_begin, 112) AND convert(varchar(6), date_end, 112) ORDER BY inf_obj_name');
          end;
        end;

    1 : begin
          //Fnode_begin_id := -9;
          set_ok := False;
          SetClear(cxButtonEdit2, cxButtonEdit9);
        end;
  end;

  if set_ok then begin
    ADOQuery.Open;
    fmFilter := TfmFilter.Create(0, ADOQuery, 'inf_obj_id', 'inf_obj_cod', 'inf_obj_name');
    if fmFilter.ShowModal = mrOk then begin
      //Fnode_begin_id := fmFilter.GetId;
      {устанавливаем выборанные наименования и коды}
      GetFilterSelectRow(cxButtonEdit2, cxButtonEdit9, nil);
    end;
  end;

end;


procedure TfmFactSearchDlg.cxButtonEdit3PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
var new_str : string;
     set_ok : boolean;
      date1 : TDateTime;
begin
  if RadioButton3.Checked then
    date1 := cxDateEdit1.Date
  else
    date1 := cxDateEdit4.Date;


  set_ok := False;
  ADOQuery.Close;
  ADOQuery.SQL.Clear;
  case AButtonIndex of
    0 : begin
          case TcxButtonEdit(Sender).Tag of
            0 : if InputQuery('Поиск', 'Шаблон поиска НАИМЕНОВАНИЯ станции назначения:', new_str) then begin
                  set_ok := True;
                  ADOQuery.SQL.Add('SELECT inf_obj_id, inf_obj_name, inf_obj_cod FROM inf_obj_NODE WHERE inf_obj_name LIKE ''%'+new_str+'%'' AND LEFT(' + DateToSQL(date1) + ', 6) BETWEEN convert(varchar(6), date_begin, 112) AND convert(varchar(6), date_end, 112) ORDER BY inf_obj_name');
                end;
            1 : if InputQuery('Поиск', 'Шаблон поиска КОДА станции назначения:', new_str) then begin
                  set_ok := True;
                  ADOQuery.SQL.Add('SELECT inf_obj_id, inf_obj_name, inf_obj_cod FROM inf_obj_NODE WHERE inf_obj_cod LIKE ''%'+new_str+'%'' AND LEFT(' + DateToSQL(date1) + ', 6) BETWEEN convert(varchar(6), date_begin, 112) AND convert(varchar(6), date_end, 112) ORDER BY inf_obj_name');
                end;
          end;
        end;
    1 : begin
          //Fnode_begin_id := -9;
          SetClear(cxButtonEdit3, cxButtonEdit10);
        end;
  end;

  if set_ok then begin
    ADOQuery.Open;
    fmFilter := TfmFilter.Create(0, ADOQuery, 'inf_obj_id', 'inf_obj_cod', 'inf_obj_name');
    if fmFilter.ShowModal = mrOk then begin
      //Fnode_begin_id := fmFilter.GetId;
      {устанавливаем выборанные наименования и коды}
      GetFilterSelectRow(cxButtonEdit3, cxButtonEdit10, nil);
    end;
  end;

end;

procedure TfmFactSearchDlg.cxButtonEdit4PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
var new_str : string;
     set_ok : boolean;
begin
  set_ok := False;
  ADOQuery.Close;
  ADOQuery.SQL.Clear;
  case AButtonIndex of
    0 : begin
          case TcxButtonEdit(Sender).Tag of
            0 : if InputQuery('Поиск', 'Шаблон поиска НАИМЕНОВАНИЯ дороги назначения:', new_str) then begin
                  set_ok := True;
                  ADOQuery.SQL.Add('SELECT inf_obj_id, inf_obj_name, inf_obj_cod FROM inf_obj_ROAD where inf_obj_name LIKE ''%'+new_str+'%'' order by inf_obj_name');
                end;
            1 : if InputQuery('Поиск', 'Шаблон поиска КОДА дороги назначения:', new_str) then begin
                  set_ok := True;
                  ADOQuery.SQL.Add('SELECT inf_obj_id, inf_obj_name, inf_obj_cod FROM inf_obj_ROAD where inf_obj_cod LIKE ''%'+new_str+'%'' order by inf_obj_name');
                end;
          end;
        end;
    1 : begin
//          Froad_end_id := -9;
          SetClear(cxButtonEdit4, cxButtonEdit14);
        end;
  end;

  if set_ok then begin
    ADOQuery.Open;
    fmFilter := TfmFilter.Create(0, ADOQuery, 'inf_obj_id', 'inf_obj_cod', 'inf_obj_name');
    if fmFilter.ShowModal = mrOk then begin
//      Froad_end_id := fmFilter.GetId;
      {устанавливаем выборанные наименования и коды}
      GetFilterSelectRow(cxButtonEdit4, cxButtonEdit14, nil);
    end;
  end;

end;

procedure TfmFactSearchDlg.cxButtonEdit5PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
var new_str : string;
     set_ok : boolean;
begin
  set_ok := False;
  ADOQuery.Close;
  ADOQuery.SQL.Clear;
  case AButtonIndex of
    0 : begin
          case TcxButtonEdit(Sender).Tag of
            0 : if InputQuery('Поиск', 'Шаблон НАИМЕНОВАНИЯ для груза ЕТСНГ:', new_str) then begin
                  set_ok := True;
                  ADOQuery.SQL.Add('SELECT inf_obj_id, inf_obj_name, inf_obj_cod FROM inf_obj_ETSNG where inf_obj_name LIKE ''%'+new_str+'%'' and (dbo.GetInfObjVisible(str_group_visible) = 1) ORDER BY inf_obj_name');
                end;
            1 : if InputQuery('Поиск', 'Шаблон КОДА для груза ЕТСНГ:', new_str) then begin
                  set_ok := True;
                  ADOQuery.SQL.Add('SELECT inf_obj_id, inf_obj_name, inf_obj_cod FROM inf_obj_ETSNG WHERE inf_obj_cod LIKE ''%'+new_str+'%'' and (dbo.GetInfObjVisible(str_group_visible) = 1) ORDER BY inf_obj_cod');
                end;
          end;
        end;
    1 : begin
//          FkargoETSNG_id := -9;
          SetClear(cxButtonEdit5, cxButtonEdit6);
        end;
  end;

  if set_ok then begin
    ADOQuery.Open;
    fmFilter := TfmFilter.Create(0, ADOQuery, 'inf_obj_id', 'inf_obj_cod', 'inf_obj_name');
    if fmFilter.ShowModal = mrOk then begin
//      FkargoETSNG_id := fmFilter.GetId;
      {устанавливаем выборанные наименования (груза) и коды}
      GetFilterSelectRow(cxButtonEdit5, cxButtonEdit6, nil);
      //очищаем поле груз
      SetClear(cxButtonEdit16, cxButtonEdit15);
    end;
  end;
end;


procedure TfmFactSearchDlg.cxButtonEdit7PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
var new_str : string;
     set_ok : boolean;
begin
  set_ok := False;
  ADOQuery.Close;
  ADOQuery.SQL.Clear;
  case AButtonIndex of
    0 : case TcxButtonEdit(Sender).Tag of
          0 : if InputQuery('Поиск', 'Шаблон НАИМЕНОВАНИЯ для станции назначения СНГ:', new_str) then begin
                set_ok := True;
                ADOQuery.SQL.Add('SELECT inf_obj_id, inf_obj_name, inf_obj_cod FROM inf_obj_NODE where inf_obj_name LIKE ''%'+new_str+'%'' ORDER BY inf_obj_name');
              end;
          1 : if InputQuery('Поиск', 'Шаблон КОДА для станции назначения СНГ:', new_str) then begin
                set_ok := True;
                ADOQuery.SQL.Add('SELECT inf_obj_id, inf_obj_name, inf_obj_cod FROM inf_obj_NODE where inf_obj_cod LIKE ''%'+new_str+'%'' order by inf_obj_cod');
              end;
        end;
    1 : begin
          //Fnode_end_SNG_id := -9;
          SetClear(cxButtonEdit7, cxButtonEdit8);
        end;
  end;

  if set_ok then begin
    ADOQuery.Open;
    fmFilter := TfmFilter.Create(0, ADOQuery, 'inf_obj_id', 'inf_obj_cod', 'inf_obj_name');
    if fmFilter.ShowModal=mrOk then begin
//      Fnode_end_SNG_id := fmFilter.GetId;
      GetFilterSelectRow(cxButtonEdit7, cxButtonEdit8, nil);
    end;
  end;
end;

procedure TfmFactSearchDlg.cxCheckBox3PropertiesChange(Sender: TObject);
begin
  cxComboBox1.Enabled := cxCheckBox3.Checked;
  if cxCheckBox3.Checked then
    cxComboBox1.ItemIndex := 0
  else
    cxComboBox1.ItemIndex := -1;
end;

procedure TfmFactSearchDlg.cxComboBox1PropertiesChange(Sender: TObject);
begin
  Panel7.Visible := True;
  cxPageControl1.Visible := True;
  Splitter2.Visible := True;
  Splitter1.Visible := True;

  RadioButton3.Enabled := True;
  RadioButton4.Enabled := True;
  RadioButton1.Enabled := True;

  RadioButton3.Checked := True;
  RadioButton3.Caption := 'Дата отправления.....................................';

  cxDateEdit1.Enabled := True;
  cxDateEdit2.Enabled := True;

  cxButtonEdit2.Enabled := True;
  cxButtonEdit9.Enabled := True;
  cxButtonEdit7.Enabled := True;
  cxButtonEdit8.Enabled := True;
  cxButtonEdit1.Enabled := True;
  cxButtonEdit4.Enabled := True;

  cxButtonEdit13.Enabled := True;


  if cxMemo1.Enabled then begin
    case cxComboBox1.ItemIndex of
          // --------- подход вагонов на станцию ----------
      0 : begin
            RadioButton3.Enabled := False;
            RadioButton4.Enabled := False;
            RadioButton1.Enabled := False;

            cxDateEdit1.Enabled := False;
            cxDateEdit2.Enabled := False;
            cxDateEdit6.Enabled := False;
            cxDateEdit7.Enabled := False;

            cxButtonEdit2.Enabled := False;
            cxButtonEdit9.Enabled := False;
            cxButtonEdit7.Enabled := False;
            cxButtonEdit8.Enabled := False;
            cxButtonEdit1.Enabled := False;
            cxButtonEdit4.Enabled := False;

            cxButtonEdit13.Enabled := False;
          end;
          // --------- вагоны на станции ------------------
      1 : begin
            RadioButton3.Enabled := True;
            RadioButton3.Caption := 'Дата на станции.....................................';
            RadioButton4.Checked := True;
            RadioButton3.Checked := True;

            RadioButton4.Enabled := False;
            cxButtonEdit2.Enabled:= False;
            cxButtonEdit9.Enabled:= False;
          end;

          // ------ Клиент порожнего  рейса, СЛЕД.ГРУЖ (03) -----
      2 : begin
            RadioButton3.Enabled := cxMemo1.Enabled;
            RadioButton4.Enabled := cxMemo1.Enabled;
            RadioButton4.Checked := cxMemo1.Enabled;
            RadioButton3.Checked := cxMemo1.Enabled;
            cxButtonEdit2.Enabled:= cxMemo1.Enabled;
            cxButtonEdit9.Enabled:= cxMemo1.Enabled;
          end;

          // ------ поиск незакрытых груж.отправок ---------
      4 : begin
            Panel7.Visible := False;
            cxDateEdit1.Enabled := True;
            cxDateEdit2.Enabled := True;
            cxPageControl1.Visible := False;
            Splitter2.Visible := False;
            Splitter1.Visible := False;
          end
      else
    end;
  end;
end;

procedure TfmFactSearchDlg.cxDateEdit1Exit(Sender: TObject);
begin
  if (cxDateEdit1.Text = '') and (cxDateEdit2.Text = '') then begin
    cxDateEdit1.Date := IncDay(now, -15);
    cxDateEdit2.Date := now;
  end;

  if (cxDateEdit4.Text = '') and (cxDateEdit5.Text = '') then begin
    cxDateEdit4.Date := IncDay(now, -15);
    cxDateEdit5.Date := now;
  end;

  if (cxDateEdit6.Text = '') and (cxDateEdit7.Text = '') then begin
    cxDateEdit6.Date := IncDay(now, -15);
    cxDateEdit7.Date := IncDay(now, -1);
  end;
end;

procedure TfmFactSearchDlg.cxDateEdit1PropertiesEditValueChanged(Sender: TObject);
begin
  if TcxDateEdit(Sender).EditValue = null then TcxDateEdit(Sender).EditValue := Date;
end;

procedure TfmFactSearchDlg.cxMemo1PropertiesChange(Sender: TObject);
begin
  Panel9.Caption := 'Кол-во: ' + IntToStr(cxMemo1.Lines.Count);
end;

procedure TfmFactSearchDlg.cxMemo2PropertiesChange(Sender: TObject);
begin
  Panel10.Caption := 'Кол-во: ' + IntToStr(cxMemo2.Lines.Count);
end;

procedure TfmFactSearchDlg.cxMemo3PropertiesChange(Sender: TObject);
begin
  Panel11.Caption := 'Кол-во: ' + IntToStr(cxMemo3.Lines.Count);
end;

procedure TfmFactSearchDlg.cxRadioGroup2PropertiesChange(Sender: TObject);
begin
  cxButtonEdit12.Enabled := (cxRadioGroup2.ItemIndex = 1);
  if not cxButtonEdit12.Enabled then begin
    cxButtonEdit12.Text := '';
  end;
end;

procedure TfmFactSearchDlg.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if cxPageControl1.ActivePageIndex = 0 then begin
    StoreRegistryMemo(rgSave, '\Software\LIS1\cxMemo\FactSearchDlg', cxMemo1);
    StoreRegistryMemo(rgSave, '\Software\LIS1\cxMemo\FactSearchDlg', cxMemo2);
  end;

  Action := caFree;
end;

procedure TfmFactSearchDlg.FormShow(Sender: TObject);
begin
  if cxMemo1.Enabled then begin
    if not RadioButton3.Checked and not RadioButton4.Checked and not RadioButton1.Visible then
      RadioButton3.Checked := True;
    cxDateEdit1Exit(nil);
    cxMemo1.SetFocus;
  end;
end;

procedure TfmFactSearchDlg.RadioButton3Click(Sender: TObject);
begin
  if RadioButton3.Checked then begin
    RadioButton3.Font.Style := [fsBold];
    RadioButton4.Font.Style := [];
    RadioButton1.Font.Style := [];
    cxDateEdit1.Enabled := True;
    cxDateEdit2.Enabled := True;
    cxDateEdit4.Enabled := False;
    cxDateEdit5.Enabled := False;
    cxDateEdit6.Enabled := False;
    cxDateEdit7.Enabled := False;
  end else if RadioButton4.Checked then begin
    RadioButton4.Font.Style := [fsBold];
    RadioButton3.Font.Style := [];
    RadioButton1.Font.Style := [];
    cxDateEdit1.Enabled := False;
    cxDateEdit2.Enabled := False;
    cxDateEdit4.Enabled := True;
    cxDateEdit5.Enabled := True;
    cxDateEdit6.Enabled := False;
    cxDateEdit7.Enabled := False;
  end else begin
    RadioButton3.Font.Style := [];
    RadioButton4.Font.Style := [];
    RadioButton1.Font.Style := [fsBold];
    cxDateEdit1.Enabled := False;
    cxDateEdit2.Enabled := False;
    cxDateEdit4.Enabled := False;
    cxDateEdit5.Enabled := False;
    cxDateEdit6.Enabled := True;
    cxDateEdit7.Enabled := True;

    cxDateEdit6.Date := IncDay(now, -1);
    cxDateEdit7.Date := now;
  end;
end;


end.
