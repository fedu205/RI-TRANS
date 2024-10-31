unit ActsOption;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxStyles,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridBandedTableView, cxGridDBBandedTableView,
  cxClasses, cxGridLevel, cxGrid, StdCtrls, Buttons, ExtCtrls, cxPC, ADODB, Default, cxCheckBox,
  cxPropertiesStore, DBClient, cxContainer, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxCalendar,
  cxButtonEdit, cxMemo, dxGDIPlusClasses, dxGDIPlusAPI, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint,
  dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle,
  dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky,
  dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMetropolis, dxSkinMetropolisDark, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray,
  dxSkinOffice2013White, dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus, dxSkinSilver,
  dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008, dxSkinTheAsphaltWorld, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinVS2010, dxSkinWhiteprint, dxSkinXmas2008Blue, dxSkinscxPCPainter, dxBarBuiltInMenu, cxNavigator, ComCtrls,
  dxCore, cxDateUtils, System.StrUtils, cxLabel, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox,
  Vcl.Menus, cxButtons, System.DateUtils,
  cxDataControllerConditionalFormattingRulesManagerDialog, dxSkinOffice2016Colorful, dxSkinOffice2016Dark, dxSkinTheBezier, dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, dxDateRanges;

type
  TfmActsOption = class(TForm)
    cxPageControl1: TcxPageControl;
    cxTabSheet1: TcxTabSheet;
    cxTabSheet2: TcxTabSheet;
    Panel1: TPanel;
    BitBtn2: TBitBtn;
    BitBtn1: TBitBtn;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    cxGrid1DBBandedTableView1: TcxGridDBBandedTableView;
    BitBtn3: TBitBtn;
    Client_ActsOption: TClientDataSet;
    Client_ActsOptionid: TAutoIncField;
    Client_ActsOptionacts_option_id: TAutoIncField;
    Client_ActsOptionacts_type_id: TIntegerField;
    Client_ActsOptionoption_name: TStringField;
    Client_ActsOptionoption_caption_full: TStringField;
    Client_ActsOptionoption_type: TStringField;
    Client_ActsOptionlist_sql: TStringField;
    Client_ActsOptionorder_num: TIntegerField;
    Client_ActsOptionacts_option_value_id: TIntegerField;
    Client_ActsOptionset_default: TBooleanField;
    Client_ActsOptionoption_value: TMemoField;
    DS_ActsOption: TDataSource;
    cxGrid1DBBandedTableView1id: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1acts_option_id: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1acts_type_id: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1option_name: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1option_caption_full: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1option_type: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1list_sql: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1order_num: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1acts_option_value_id: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1set_default: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1option_value: TcxGridDBBandedColumn;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1: TcxStyle;
    cxPropertiesStore1: TcxPropertiesStore;
    cxCheckBox1: TcxCheckBox;
    cxDateEdit1: TcxDateEdit;
    cxButtonEdit1: TcxButtonEdit;
    cxMemo1: TcxMemo;
    cxButtonEdit2: TcxButtonEdit;
    Client_ActsOptionusers_id: TIntegerField;
    cxGrid1DBBandedTableView1users_id: TcxGridDBBandedColumn;
    Panel5: TPanel;
    cxLabel108: TcxLabel;
    cxLookupComboBox1: TcxLookupComboBox;
    Query_Lookup: TADOQuery;
    DS_Lookup: TDataSource;
    cxPageControl2: TcxPageControl;
    cxTabSheet3: TcxTabSheet;
    cxTabSheet4: TcxTabSheet;
    cxTabSheet5: TcxTabSheet;
    cxTabSheet6: TcxTabSheet;
    cxLabel1: TcxLabel;
    cxDateEdit2: TcxDateEdit;
    cxLabel2: TcxLabel;
    cxDateEdit3: TcxDateEdit;
    Panel2: TPanel;
    cxLabel3: TcxLabel;
    cxLabel4: TcxLabel;
    cxButton6: TcxButton;
    cxComboBox2: TcxComboBox;
    cxComboBox3: TcxComboBox;
    cxButton5: TcxButton;
    cxButton1: TcxButton;
    cxComboBox1: TcxComboBox;
    cxComboBox4: TcxComboBox;
    cxButton2: TcxButton;
    cxLabel5: TcxLabel;
    cxButton3: TcxButton;
    cxComboBox5: TcxComboBox;
    cxComboBox6: TcxComboBox;
    cxButton4: TcxButton;
    cxLabel6: TcxLabel;
    cxDateEdit4: TcxDateEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cxGrid1DBBandedTableView1FocusedItemChanged(Sender: TcxCustomGridTableView; APrevFocusedItem, AFocusedItem: TcxCustomGridTableItem);
    procedure cxGrid1DBBandedTableView1option_valueGetDisplayText(Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord; var AText: string);
    procedure BitBtn3Click(Sender: TObject);
    procedure cxGrid1DBBandedTableView1option_valueGetPropertiesForEdit(Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord; var AProperties: TcxCustomEditProperties);
    procedure BitBtn2Click(Sender: TObject);
    procedure cxPageControl1Change(Sender: TObject);
    procedure cxButtonEdit1PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure cxCheckBox1PropertiesEditValueChanged(Sender: TObject);
    procedure Client_ActsOptionAfterPost(DataSet: TDataSet);
    procedure cxButtonEdit2PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure FormDestroy(Sender: TObject);
    procedure cxLookupComboBox1PropertiesEditValueChanged(Sender: TObject);
    procedure cxButton6Click(Sender: TObject);
  private
    Fusr_pwd : PUser_pwd;
    FCnn : TADOConnection;
    Facts_cod : string;
    Fstr_users_id : string;
      // Список ID пользователей (для self company (consolidate option))
      // Если у сотрудника нет права создания консолидированных отчетов, то = users_id
      // Если список не задан, то так же считаем, что = users_id
    Fstr_self_company_name : string;
      // Только для отображения собственных организаций
      // Если у сотрудника нет права создания консолидированных отчетов, то Собственная всегда одна (не смотря на настройки)
      // Если список не задан, то так же считаем, что собственная одна

    Fsave : boolean;
    Fpage : integer;

    procedure LoadOption;
    procedure NextMonth(BoxMonth,BoxYear : TcxComboBox; stepNext : boolean);

  public
    constructor Create(acts_cod : string; conn : TADOConnection; usr_pwd: PUser_pwd; date_begin, date_end: TDateTime; type_date : integer);
    //constructor Create(acts_cod : string; usr_pwd: PUser_pwd);

    function GetBeginDate : TDateTime;
    function GetEndDate : TDateTime;
  end;

var
  fmActsOption: TfmActsOption;

function CreateWndActsOption(AppHand: THandle; acts_cod : string; conn : TADOConnection; usr_pwd: PUser_pwd; date_begin, date_end: TDateTime; type_date : integer): variant; export;
//function CreateWndActsOption(AppHand: THandle; acts_cod : string; usr_pwd: PUser_pwd): variant; export;

implementation

uses Raznoe, ActsOptionParam, ActsOptionList;

{$R *.dfm}

function CreateWndActsOption(AppHand: THandle; acts_cod : string; conn : TADOConnection; usr_pwd: PUser_pwd; date_begin, date_end: TDateTime; type_date : integer): variant; export;
//function CreateWndActsOption(AppHand: THandle; acts_cod : string; usr_pwd: PUser_pwd): variant; export;
begin
  Application.Handle := AppHand;
  try
    fmActsOption := TfmActsOption.Create(acts_cod, conn, usr_pwd, date_begin, date_end, type_date);
    //fmActsOption := TfmActsOption.Create(acts_cod, usr_pwd);
    //-- изменить по мере необходимости возвращаемых параметров
    if  fmActsOption.ShowModal = mrOk then
      result := VarArrayOf([True, fmActsOption.GetBeginDate, fmActsOption.GetEndDate])
    else
      result := VarArrayOf([False]);
  finally
    fmActsOption.Free;
  end;
end;

constructor TfmActsOption.Create(acts_cod : string; conn : TADOConnection; usr_pwd: PUser_pwd; date_begin, date_end: TDateTime; type_date : integer);
//constructor TfmActsOption.Create(acts_cod : string; usr_pwd: PUser_pwd);

// type_date: 1 = Период, 2,4 = Период мес, 3 = Месяц, 5,6 = Дата
//            0 или меньше = пусто
var Q : TADOQuery;
    i : integer;
begin
  inherited Create(Application);

  Fsave := True;
  Fpage := 0;

  Fusr_pwd := usr_pwd;
  Facts_cod := acts_cod;

//  FCnn := TADOConnection.Create(nil);
//  FCnn.ConnectionString := 'Persist Security Info=True;Provider=SQLOLEDB.1;User ID='+Fusr_pwd^.user_name+';Password='+Fusr_pwd^.user_pass+';Initial Catalog='+Fusr_pwd^.catalog+';Data Source='+Fusr_pwd^.server+';';
//  FCnn.KeepConnection   := False;
//  FCnn.LoginPrompt      := False;
  FCnn := conn;

  Fstr_users_id := IntToStr(usr_pwd.users_id);
  Fstr_self_company_name := '';

  // начиная с декабря открываем следующий год
  cxComboBox3.Properties.Items.Clear;
  cxComboBox4.Properties.Items.Clear;
  cxComboBox6.Properties.Items.Clear;
  for i := YearOf(IncMonth(Date)) downto 2001 do begin
    cxComboBox3.Properties.Items.Add(IntToStr(i));
    cxComboBox4.Properties.Items.Add(IntToStr(i));
    cxComboBox6.Properties.Items.Add(IntToStr(i));
  end;

// type_date: 1 = Период, 2,4 = Период мес, 3 = Месяц, 5,6 = Дата
//            0 или меньше = пусто
  case type_date of
    1 : begin
      cxPageControl2.ActivePageIndex := 0;
      cxDateEdit2.EditValue := date_begin;
      cxDateEdit3.EditValue := date_end;
    end;
    2, 4 : begin
      cxPageControl2.ActivePageIndex := 1;
      cxComboBox2.ItemIndex := MonthOf(date_begin) - 1;
      cxComboBox3.EditValue := IntToStr(YearOf(date_begin));
      cxComboBox1.ItemIndex := MonthOf(date_end) - 1;
      cxComboBox4.EditValue := IntToStr(YearOf(date_end));
    end;
    3 : begin
      cxPageControl2.ActivePageIndex := 2;
      cxComboBox5.ItemIndex := MonthOf(date_begin) - 1;
      cxComboBox6.EditValue := IntToStr(YearOf(date_begin));
    end;
    5, 6 : begin
      cxPageControl2.ActivePageIndex := 3;
      cxDateEdit4.EditValue := date_begin;
    end;
    else begin
      cxPageControl2.Visible := False;
    end;
  end;

  cxPageControl1.ActivePage := cxTabSheet1;
  // Фактически это не используется - Общие настройки не задаются
//  if (Fusr_pwd.user_func.Locate('func_name', 'set_acts_option_default', [])) then begin
//    cxTabSheet2.Enabled := True;
//    cxTabSheet2.TabVisible := True;
//    cxPageControl1.Visible := True;
//  end;
  if (Fusr_pwd.user_func.Locate('func_name', 'set_acts_option_param', [])) then begin
    BitBtn3.Enabled := True;
    BitBtn3.Visible := True;
  end;
  if (Fusr_pwd.user_func.Locate('func_name', 'set_consolidate_reports', [])) then begin
    cxButtonEdit2.Properties.Buttons[0].Enabled := True;
  end;

  Query_Lookup.Connection := FCnn;

  StoreRegistryGrid(rgLoad,'\Software\Lis1\ActsOption_Grids', cxGrid1DBBandedTableView1);

  Q := TADOQuery.Create(nil);
  Q.Connection := FCnn;
  Q.SQL.Text := 'select * from inf_obj where type_inf_id = -100 and inf_obj_cod = ''' + acts_cod + '''';
  Q.Open;
  cxLabel108.Caption := '   ' + Q.FieldByName('inf_obj_name').AsString;
  Caption := Caption + ' (' + Q.FieldByName('inf_obj_name').AsString + ')';
  Q.Free;

  LoadOption;
end;

procedure TfmActsOption.Client_ActsOptionAfterPost(DataSet: TDataSet);
begin
  Fsave := False;
end;

procedure TfmActsOption.LoadOption;
var SP : TADOStoredProc;
    Q : TADOQuery;
    i : integer;
begin
  if not Fsave then begin
    if Application.MessageBox(PWideChar(VarToStr(iif(Fpage = 0, 'Личные', 'Общие')) + ' настройки были изменены' + #10 + 'Сохранить изменения перед переключением настроек?'), 'Винмание', MB_YESNO or MB_ICONQUESTION) = ID_YES then
      BitBtn2Click(nil);
  end;

  SP := TADOStoredProc.Create(nil);
  SP.Connection := FCnn;
  SP.ProcedureName := 'sp_acts_option_modify';
  SP.Parameters.Refresh;

  SP.Parameters.ParamByName('@type_action').Value := iif(cxPageControl1.ActivePageIndex = 0, 'Get Users Option', 'Get Default Option');
  SP.Parameters.ParamByName('@acts_cod').Value := Facts_cod;

  SP.Open;

  Client_ActsOption.DisableControls;
  if Client_ActsOption.Active then begin
    Client_ActsOption.EmptyDataSet;
    Client_ActsOption.Close;
  end;
  Client_ActsOption.CreateDataSet;
  Client_ActsOption.LogChanges := False;
  while not SP.Eof do begin
    Client_ActsOption.Append;
    // цикл по списку полей Client_ActsOption исключая первое поле (id)
    for i := 1 to Client_ActsOption.Fields.Count - 1 do begin
      Client_ActsOption.Fields[i].Value := SP.FieldByName(Client_ActsOption.Fields[i].FieldName).Value;
    end;
    Client_ActsOption.Post;

    // список собственных организаций
    if SP.FieldByName('option_type').AsString = 'self company (consolidate option)' then begin
      Fstr_users_id := SP.FieldByName('option_value').AsString;
      Q := TADOQuery.Create(nil);
      Q.Connection := FCnn;
      Q.SQL.Add('select users_id, firm_name = inf_obj_name');
      Q.SQL.Add('from users');
      Q.SQL.Add('left join inf_obj on users_group_id = inf_obj_id');
      Q.SQL.Add('where users_id in (' + iif(Fstr_users_id = '', '-9', Fstr_users_id) + ')');
      Q.SQL.Add('order by 1;');
      Q.Open;
      Fstr_self_company_name := '';
      while not Q.Eof do begin
        if Fstr_self_company_name <> '' then Fstr_self_company_name := Fstr_self_company_name + ', ';
        Fstr_self_company_name := Fstr_self_company_name + Q.FieldByName('firm_name').AsString;
        Q.Next;
      end;
      Q.Free;
    end;

    SP.Next;
  end;
  Client_ActsOption.First;
  Client_ActsOption.EnableControls;

  SP.Free;
  Fsave := True;
  Fpage := cxPageControl1.ActivePageIndex;
end;

procedure TfmActsOption.cxButton6Click(Sender: TObject);
begin
  case TcxButton(Sender).Tag of
    1 : NextMonth(cxComboBox2, cxComboBox3, False);
    2 : NextMonth(cxComboBox2, cxComboBox3, True);
    3 : NextMonth(cxComboBox1, cxComboBox4, False);
    4 : NextMonth(cxComboBox1, cxComboBox4, True);
    5 : NextMonth(cxComboBox5, cxComboBox6, False);
    6 : NextMonth(cxComboBox5, cxComboBox6, True);
  end;
end;

procedure TfmActsOption.cxButtonEdit1PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
var _fmAL : TfmActsOptionList;
    _cnn : TADOConnection;
    Q : TADOQuery;
begin
  Q := TADOQuery.Create(nil);
  Q.Connection := FCnn;
  Q.SQL.Add('select * from users where users_id = ' + cxGrid1DBBandedTableView1users_id.DataBinding.Field.AsString);
  Q.Open;
  // Открываем форму с коннектом той организации, к которой привязан параметр
  _cnn := TADOConnection.Create(nil);
  _cnn.ConnectionString := 'Persist Security Info=True;Provider=SQLOLEDB.1;User ID=' + Q.FieldByName('users_name').AsString + ';Password=' + Fusr_pwd^.user_pass + ';Initial Catalog=' + Fusr_pwd^.catalog + ';Data Source=' + Fusr_pwd^.server+';';
  _cnn.KeepConnection   := False;
  _cnn.LoginPrompt      := False;
  Q.Free;


  _fmAL := TfmActsOptionList.Create(
    cxGrid1DBBandedTableView1list_sql.DataBinding.Field.AsString,
    cxGrid1DBBandedTableView1option_value.DataBinding.Field.AsString,
    cxGrid1DBBandedTableView1option_caption_full.DataBinding.Field.AsString,
    _cnn
    );

  if _fmAL.ShowModal = mrOk then begin
    Client_ActsOption.Edit;
    Client_ActsOption.FieldByName('option_value').Value := _fmAL._GetList;
    Client_ActsOption.FieldByName('set_default').Value := False;
    Client_ActsOption.Post;
  end;

  _cnn.Free;

end;

procedure TfmActsOption.cxButtonEdit2PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
var _fmAL : TfmActsOptionList;
    sql : string;
    Q : TADOQuery;
    SP : TADOStoredProc;
    user_name : string;
    i : integer;
begin
  // найдеи имя пользователя без постфикса
  user_name := Fusr_pwd.user_name;
  user_name := ReverseString(user_name);
  user_name := RightStr(user_name, Length(user_name) - Pos('_', user_name));
  user_name := ReverseString(user_name);
  // консолидированный отчет - необходимо выбрать СОбственные организации
  sql := '';
  sql := sql + 'select users_id as ''№ Записи'', inf_obj_name as ''Собственная организация'' ';
  sql := sql + 'from users ';
  sql := sql + 'left join inf_obj on users_group_id = inf_obj_id ';
  sql := sql + 'where users_name in (''' + user_name + ''', ''' + user_name + ''' + ''_'' + inf_obj_name_full)';

  _fmAL := TfmActsOptionList.Create(
    sql,
    cxGrid1DBBandedTableView1option_value.DataBinding.Field.AsString,
    'Выбранные собственные организации',
    FCnn
    );

  if _fmAL.ShowModal = mrOk then begin
    Client_ActsOption.Edit;
    Client_ActsOption.FieldByName('option_value').Value := _fmAL._GetList;
    Client_ActsOption.FieldByName('set_default').Value := False;
    Client_ActsOption.Post;

    // список собственных организаций
    Fstr_users_id := _fmAL._GetList;
    Q := TADOQuery.Create(nil);
    Q.Connection := FCnn;
    Q.SQL.Add('select users_id, firm_name = inf_obj_name');
    Q.SQL.Add('from users');
    Q.SQL.Add('left join inf_obj on users_group_id = inf_obj_id');
    Q.SQL.Add('where users_id in (' + iif(Fstr_users_id = '', '-9', Fstr_users_id) + ')');
    Q.SQL.Add('order by 1;');
    Q.Open;
    Fstr_self_company_name := '';
    while not Q.Eof do begin
      if Fstr_self_company_name <> '' then Fstr_self_company_name := Fstr_self_company_name + ', ';
      Fstr_self_company_name := Fstr_self_company_name + Q.FieldByName('firm_name').AsString;
      Q.Next;
    end;
    Q.Free;

    // После изменения списка организаций - загрузим опции и сравним их с уже существующими
    // Лишние Удалим, Тех что не хватает - добавим
    // те опции что есть оставим без изменения, т.к. они уже могут быть заменены пользователем
    // ключ для проверки у нас составной (acts_option_id + users_id)
    SP := TADOStoredProc.Create(nil);
    SP.Connection := FCnn;
    SP.ProcedureName := 'sp_acts_option_modify';
    SP.Parameters.Refresh;

    SP.Parameters.ParamByName('@type_action').Value := iif(cxPageControl1.ActivePageIndex = 0, 'Get Users Option', 'Get Default Option');
    SP.Parameters.ParamByName('@acts_cod').Value := Facts_cod;
    // Передадим список пользователей (Организаций) с которыми мы собираемся работать
    // по этому списку будут подгружены данные по параметрам зависящим от Собственной (консолидация)
    SP.Parameters.ParamByName('@str_users_id').Value := Fstr_users_id;

    SP.Open;

    Client_ActsOption.DisableControls;

    // Сначала удалим лишнии
    Client_ActsOption.First;
    while not Client_ActsOption.Eof do begin
      if not SP.Locate('acts_option_id;users_id', VarArrayOf([Client_ActsOption.FieldByName('acts_option_id').Value, Client_ActsOption.FieldByName('users_id').Value]), []) then
        Client_ActsOption.Delete
      else
        Client_ActsOption.Next;
    end;

    // Добавим недостающие
    SP.First;
    while not SP.Eof do begin
      if not Client_ActsOption.Locate('acts_option_id;users_id', VarArrayOf([SP.FieldByName('acts_option_id').Value, SP.FieldByName('users_id').Value]), []) then begin
        Client_ActsOption.Append;
        // цикл по списку полей Client_ActsOption исключая первое поле (id)
        for i := 1 to Client_ActsOption.Fields.Count - 1 do begin
          Client_ActsOption.Fields[i].Value := SP.FieldByName(Client_ActsOption.Fields[i].FieldName).Value;
        end;
        Client_ActsOption.Post;
      end;
      SP.Next;
    end;

    Client_ActsOption.First;
    Client_ActsOption.EnableControls;

    SP.Free;

  end;

end;

procedure TfmActsOption.cxCheckBox1PropertiesEditValueChanged(Sender: TObject);
begin
  Client_ActsOption.Post;
  Client_ActsOption.Edit;
  Client_ActsOption.FieldByName('set_default').Value := False;
  Client_ActsOption.Post;

  // Отображаем редактор, т.к. после Пересчета он был закрыт, из-за чего возникает ошибка по окончании данной процедуры
  cxGrid1DBBandedTableView1.Controller.EditingController.ShowEdit;
end;

procedure TfmActsOption.cxGrid1DBBandedTableView1FocusedItemChanged(Sender: TcxCustomGridTableView; APrevFocusedItem, AFocusedItem: TcxCustomGridTableItem);
begin
  Sender.Painter.Invalidate;
end;

procedure TfmActsOption.cxGrid1DBBandedTableView1option_valueGetDisplayText(Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord; var AText: string);
begin
  if VarToStr(ARecord.Values[cxGrid1DBBandedTableView1option_type.Index]) = 'list' then begin
//    AText := '(список)';
//    if VarToStr(ARecord.Values[cxGrid1DBBandedTableView1option_value.Index]) = '' then
//      AText := '(пусто)';
  end else if VarToStr(ARecord.Values[cxGrid1DBBandedTableView1option_type.Index]) = 'lookup' then begin
    // Если форма еще не полностью инициирована, отображение не важно, но вызывает ошибку
    if not Assigned(Query_Lookup.Connection) then
      exit;

    Query_Lookup.Close;
    Query_Lookup.SQL.Clear;
    Query_Lookup.SQL.Text := VarToStr(ARecord.Values[cxGrid1DBBandedTableView1list_sql.Index]);
    Query_Lookup.Open;

    AText := VarToStr(Query_Lookup.Lookup(Query_Lookup.Fields[0].FieldName, ARecord.Values[cxGrid1DBBandedTableView1option_value.Index], Query_Lookup.Fields[1].FieldName));
  end else if VarToStr(ARecord.Values[cxGrid1DBBandedTableView1option_type.Index]) = 'bool' then begin
    AText := 'Да';
    if VarToStr(ARecord.Values[cxGrid1DBBandedTableView1option_value.Index]) = '0' then
      AText := 'Нет';
  end else if VarToStr(ARecord.Values[cxGrid1DBBandedTableView1option_type.Index]) = 'self company (consolidate option)' then begin
    AText := Fstr_self_company_name;
  end;
end;

procedure TfmActsOption.cxGrid1DBBandedTableView1option_valueGetPropertiesForEdit(Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord; var AProperties: TcxCustomEditProperties);
begin
  if VarToStr(ARecord.Values[cxGrid1DBBandedTableView1option_type.Index]) = 'list' then begin
    AProperties := cxButtonEdit1.Properties;
  end else if VarToStr(ARecord.Values[cxGrid1DBBandedTableView1option_type.Index]) = 'lookup' then begin
    Query_Lookup.Close;
    Query_Lookup.SQL.Clear;
    Query_Lookup.SQL.Text := cxGrid1DBBandedTableView1list_sql.DataBinding.Field.AsString;
    Query_Lookup.Open;

    cxLookupComboBox1.Properties.KeyFieldNames  := Query_Lookup.Fields[0].FieldName;
    cxLookupComboBox1.Properties.ListFieldNames := Query_Lookup.Fields[1].FieldName;

    AProperties := cxLookupComboBox1.Properties;
  end else if VarToStr(ARecord.Values[cxGrid1DBBandedTableView1option_type.Index]) = 'self company (consolidate option)' then begin
    AProperties := cxButtonEdit2.Properties;
  end else if VarToStr(ARecord.Values[cxGrid1DBBandedTableView1option_type.Index]) = 'bool' then begin
    AProperties := cxCheckBox1.Properties;
  end else if VarToStr(ARecord.Values[cxGrid1DBBandedTableView1option_type.Index]) = 'date' then begin
    AProperties := cxDateEdit1.Properties;
  end else begin
    AProperties := cxMemo1.Properties;
  end;
end;

procedure TfmActsOption.cxLookupComboBox1PropertiesEditValueChanged(Sender: TObject);
begin
  Client_ActsOption.Post;
  Client_ActsOption.Edit;
  Client_ActsOption.FieldByName('set_default').Value := False;
  Client_ActsOption.Post;

  // Отображаем редактор, т.к. после Пересчета он был закрыт, из-за чего возникает ошибка по окончании данной процедуры
  cxGrid1DBBandedTableView1.Controller.EditingController.ShowEdit;
end;

procedure TfmActsOption.cxPageControl1Change(Sender: TObject);
begin
  LoadOption;
end;

procedure TfmActsOption.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
  //FCnn.Free;
end;

procedure TfmActsOption.FormDestroy(Sender: TObject);
begin
  StoreRegistryGrid(rgSave,'\Software\Lis1\ActsOption_Grids', cxGrid1DBBandedTableView1);
end;

procedure TfmActsOption.BitBtn2Click(Sender: TObject);
var SP : TADOStoredProc;
begin
  SP := TADOStoredProc.Create(nil);
  SP.Connection := FCnn;
  SP.ProcedureName := 'sp_acts_option_modify';
  SP.Parameters.Refresh;

  if Fpage = 0 then
    SP.Parameters.ParamByName('@type_action').Value := 'Save Users Option'
  else
    SP.Parameters.ParamByName('@type_action').Value := 'Save Default Option';
  SP.Parameters.ParamByName('@acts_cod').Value := Facts_cod;
  SP.Parameters.ParamByName('@xml').Value := DataXMLToSQL(Client_ActsOption);

  try
    sp.ExecProc;
  except
  end;

  SP.Free;

  Fsave := True;
end;

procedure TfmActsOption.NextMonth(BoxMonth,BoxYear : TcxComboBox; stepNext : boolean);
begin
  if stepNext then begin
    case BoxMonth.ItemIndex of
      0..10 : BoxMonth.ItemIndex := BoxMonth.ItemIndex + 1;
      11    : begin
              BoxMonth.ItemIndex := 0;
              BoxYear.ItemIndex := BoxYear.ItemIndex - 1;
              end;
    end;

  end else begin
    case BoxMonth.ItemIndex of
      1..11 : BoxMonth.ItemIndex := BoxMonth.ItemIndex - 1;
      0     : begin
              BoxMonth.ItemIndex := 11;
              BoxYear.ItemIndex := BoxYear.ItemIndex + 1;
              end;
    end;
  end;

end;

procedure TfmActsOption.BitBtn3Click(Sender: TObject);
var _fmAP : TfmActsOptionParam;
begin
  _fmAP := TfmActsOptionParam.Create(Facts_cod, FCnn);
  if _fmAP.ShowModal = mrOk then
    LoadOption;
end;

function TfmActsOption.GetBeginDate : TDateTime;
begin
  case cxPageControl2.ActivePageIndex of
    0 : Result := cxDateEdit2.Date;
    1 : Result := EncodeDate(cxComboBox3.EditValue, cxComboBox2.ItemIndex + 1, 1);
    2 : Result := EncodeDate(cxComboBox6.EditValue, cxComboBox5.ItemIndex + 1, 1);
    3 : Result := cxDateEdit4.Date;
    else Result := Date;
  end;
end;

function TfmActsOption.GetEndDate : TDateTime;
begin
  case cxPageControl2.ActivePageIndex of
    0 : Result := cxDateEdit3.Date;
    1 : Result := IncMonth(EncodeDate(cxComboBox4.EditValue, cxComboBox1.ItemIndex + 1, 1)) - 1;
    2 : Result := IncMonth(EncodeDate(cxComboBox6.EditValue, cxComboBox5.ItemIndex + 1, 1)) - 1;
    3 : Result := cxDateEdit4.Date;
    else Result := Date;
  end;
end;

initialization
  dxInitialize;

finalization
  dxFinalize;

end.
