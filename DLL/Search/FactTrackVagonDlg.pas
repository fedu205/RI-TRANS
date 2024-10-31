unit FactTrackVagonDlg;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Default,
  Dialogs, StdCtrls, DBClient, Menus, DB, ADODB, ComCtrls,
  cxTextEdit, cxControls, cxContainer, cxEdit, cxLabel, ExtCtrls, cxMaskEdit, cxDropDownEdit, cxCalendar, cxCheckBox, cxButtonEdit, cxPropertiesStore,
  cxPC, cxGroupBox, cxGraphics, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, cxLookAndFeelPainters, cxLookAndFeels, cxMemo, cxRadioGroup,
  cxCheckComboBox, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMetropolis, dxSkinMetropolisDark, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue,
  dxSkinOffice2010Silver, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic,
  dxSkinSharp, dxSkinSharpPlus, dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008, dxSkinTheAsphaltWorld, dxSkinsDefaultPainters,
  dxSkinValentine, dxSkinVS2010, dxSkinWhiteprint, dxSkinXmas2008Blue, dxCore, cxDateUtils, cxClasses, dxSkinOffice2016Colorful, dxSkinOffice2016Dark,
  dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,  dxSkinVisualStudio2013Light, dxSkinTheBezier, cxButtons;

type
  TfmFactTrackDlg = class(TForm)
    cxPropertiesStore1: TcxPropertiesStore;
    Panel1: TPanel;
    Panel33: TPanel;
    Panel7: TPanel;
    cxCheckBox1: TcxCheckBox;
    GroupBox9: TGroupBox;
    cxCheckBox3: TcxCheckBox;
    ADO_TrackSearch: TADOConnection;
    Query1: TADOQuery;
    cxCheckComboBox1: TcxCheckComboBox;
    Splitter1: TSplitter;
    cxButton1: TcxButton;
    cxButton3: TcxButton;
    Panel10: TPanel;
    cxCheckBox4: TcxCheckBox;
    Panel3: TPanel;
    cxTextEdit4: TcxTextEdit;
    cxLabel11: TcxLabel;
    cxLabel10: TcxLabel;
    cxTextEdit3: TcxTextEdit;
    cxTextEdit2: TcxTextEdit;
    cxLabel7: TcxLabel;
    cxLabel6: TcxLabel;
    cxTextEdit1: TcxTextEdit;
    cxGroupBox3: TcxGroupBox;
    cxComboBox1: TcxComboBox;
    Label2: TLabel;
    cxDateEdit1: TcxDateEdit;
    Label1: TLabel;
    cxDateEdit2: TcxDateEdit;
    cxGroupBox2: TcxGroupBox;
    Panel2: TPanel;
    cxMemo1: TcxMemo;
    cxGroupBox4: TcxGroupBox;
    cxGroupBox1: TcxGroupBox;
    Label8: TLabel;
    cxButtonEdit2: TcxButtonEdit;
    cxButtonEdit7: TcxButtonEdit;
    cxButtonEdit4: TcxButtonEdit;
    cxButtonEdit3: TcxButtonEdit;
    Label9: TLabel;
    cxButtonEdit5: TcxButtonEdit;
    Label11: TLabel;
    cxButtonEdit6: TcxButtonEdit;
    procedure cxButtonEdit3PropertiesButtonClick(Sender: TObject;   AButtonIndex: Integer);
    procedure cxButtonEdit2PropertiesButtonClick(Sender: TObject;   AButtonIndex: Integer);
    procedure cxButtonEdit5PropertiesButtonClick(Sender: TObject;   AButtonIndex: Integer);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cxComboBox1PropertiesChange(Sender: TObject);
    procedure cxMemo1PropertiesChange(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);

  private
    FQueryString   : string;
    FActivePage    : integer;
    FTypeResult    : integer;
    Fusr_pwd       : PUser_pwd;
    FClientDS      : TClientDataSet;
    procedure SetNumVagon(str_num_vagon : string);
    procedure SetTypeResult(type_result : integer);

    function MemoToSQL(Value: TcxMemo) : string;
    procedure UpdateCxButtonEdit(Sender: TObject; AButtonIndex: Integer; TableName: string; CapObject: string; Btn1, Btn2: TcxButtonEdit);
  public
    property _QueryString: string read FQueryString;
    constructor Create(App: TApplication; usr_pwd: PUser_pwd; type_view: integer);  overload;
  published
    property _SetNumVagon   : string write SetNumVagon;
    property _SetTypeResult : integer write SetTypeResult;
    property _GetTypeResult : integer read  FTypeResult;

  end;


function CreateWndFactTrackVagonDlg(AppHandle: THandle; usr_pwd: PUser_pwd; type_view: integer; str_vagon_num: string = ''; type_result: integer = -9): variant; export;

var
  fmFactTrackDlg: TfmFactTrackDlg;

implementation
    uses DateUtils, Filter, Raznoe, Other, StrUtils;
{$R *.dfm}


function CreateWndFactTrackVagonDlg(AppHandle: THandle; usr_pwd: PUser_pwd; type_view: integer; str_vagon_num: string = ''; type_result: integer = -9):variant; export;
begin
  try
    Application.Handle := AppHandle;
    fmFactTrackDlg := TfmFactTrackDlg.Create(Application, usr_pwd, type_view);
    if str_vagon_num <> '' then fmFactTrackDlg._SetNumVagon := str_vagon_num;
    if type_result <> -9 then fmFactTrackDlg._SetTypeResult := type_result;
    if fmFactTrackDlg.ShowModal = mrOK then
      Result := VarArrayOf([fmFactTrackDlg._GetTypeResult, fmFactTrackDlg.FClientDS.XMLData, ''])
        //fmFactTrackDlg.FQuerySettings
    else Result := VarArrayOf([-9, '', '']);
    // Возвращаемые параметры:
    // 1: Результат выбора пользователя: если -9 значит "Отмена" иначе "Ок".
    // 2: Параметры для процедуры выборки факта из таблицы fact_track_stat
    // 3: Резерв
  finally
    fmFactTrackDlg.Free;
    fmFactTrackDlg := nil;
  end;
end;

constructor TfmFactTrackDlg.Create(App: TApplication; usr_pwd: PUser_pwd; type_view: integer);
begin
  Screen.Cursor := -11;

  inherited Create(App);

  cxCheckBox1.Checked := True;

  case type_view of
    0 : begin
          cxComboBox1.Properties.Items.Delete(6);
          cxComboBox1.Properties.Items.Delete(5);
          cxComboBox1.ItemIndex := 2;
        end;
    // рейсы
    1 : begin
          cxComboBox1.ItemIndex := 5;
          cxComboBox1.Enabled := False;
        end;
    // простои на станциях
    2 : begin
          cxCheckBox1.Checked := False;
          Panel3.Visible := False;
          Panel7.Visible := False;
          Panel10.Visible := False;
          cxComboBox1.ItemIndex := 6;
          cxComboBox1.Enabled := False;
        end;
  end;
  cxComboBox1PropertiesChange(cxComboBox1);

  Fusr_pwd := usr_pwd;
  FTypeResult := -9;

  ADO_TrackSearch.Connected := False;
  ADO_TrackSearch.ConnectionString := 'Persist Security Info=True;Provider=SQLOLEDB.1;User ID='+usr_pwd.user_name+';Initial Catalog='+usr_pwd.catalog+';Data Source='+usr_pwd.server+';password='+usr_pwd.user_pass;
  ADO_TrackSearch.Connected := True;

  StoreRegistryMemo(rgLoad, '\Software\LIS1\cxMemo\FactTrackVagonDlg', cxMemo1);



  Screen.Cursor := 0;
end;

procedure TfmFactTrackDlg.cxComboBox1PropertiesChange(Sender: TObject);
begin
   case cxComboBox1.ItemIndex of
     0,1,2:
     begin
        cxDateEdit1.EditValue := NULL;
        cxDateEdit1.Enabled   := False;
        cxDateEdit2.EditValue := Date;
     end;

   3,4,5 :
     begin
       cxDateEdit1.Enabled   := True;
       cxDateEdit1.EditValue := StartOfTheMonth(Date);
       cxDateEdit2.EditValue := Date;
     end;
   // простои на станциях
   6 :
     begin
       cxDateEdit1.EditValue := Date - 30;
       cxDateEdit2.EditValue := Date;
     end;
   end;
end;

procedure TfmFactTrackDlg.cxMemo1PropertiesChange(Sender: TObject);
begin
  Panel2.Caption := 'Кол-во: ' + IntToStr(cxMemo1.Lines.Count);
end;

procedure TfmFactTrackDlg.cxButton1Click(Sender: TObject);
var          i : integer;
 str_num_vagon : string;

begin
  //*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-
  // Создание запроса
  //*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-
  str_num_vagon := '';
  FTypeResult := cxComboBox1.ItemIndex;
  try
    // Список вагонов
    if Trim(cxMemo1.Text) <> '' then begin
      i := 0;
      while i < cxMemo1.Lines.Count do begin
        if Trim(cxMemo1.Lines[i]) = '' then
          cxMemo1.Lines.Delete(i);
        inc(i);
      end;
      str_num_vagon := MemoToSQL(cxMemo1);//cxMemo1.Lines.CommaText;
    end else
      str_num_vagon := '';

    {создаем CD для записи туда и передачи параметров для новой процедуры (sp_fact_track_stat_get) выборки
    если его не создавать или создавать тлько (cxComboBox1.ItemIndex = 0,1,2) вылетает ошибка тк в
    (cxComboBox1.ItemIndex = 0,1,2) пользователь заходит не всегда}
     if Assigned(FClientDS) = False then begin
      FClientDS := TClientDataSet.Create(nil);

      FClientDS.FieldDefs.Add('period_type'   , ftinteger);
      FClientDS.FieldDefs.Add('date_begin'    , ftDate);
      FClientDS.FieldDefs.Add('date_last'     , ftDate);
      FClientDS.FieldDefs.Add('users_group_id', ftinteger);
      FClientDS.FieldDefs.Add('set_arenda'    , ftBoolean);
      FClientDS.FieldDefs.Add('set_archiv'    , ftBoolean);
      FClientDS.FieldDefs.Add('vagon_dic'     , ftBoolean);
      FClientDS.FieldDefs.Add('type_park_id'  , ftString, 100);
      FClientDS.FieldDefs.Add('num_vagon', ftBlob);
      FClientDS.FieldDefs.Add('count_stay'    , ftBoolean);
      FClientDS.FieldDefs.Add('count_stay_id' , ftSmallint);
      FClientDS.FieldDefs.Add('type_park_vagon', ftString, 4000);
      FClientDS.FieldDefs.Add('cod_operation_vagon_cod', ftString, 4000);
      FClientDS.FieldDefs.Add('cod_operation_vagon_name', ftString, 4000);
      FClientDS.FieldDefs.Add('file_load_name', ftString, 4000);
      FClientDS.FieldDefs.Add('node_begin_cod', ftBlob);
      FClientDS.FieldDefs.Add('node_end_cod', ftBlob);
      FClientDS.FieldDefs.Add('kargoETSNG_cod', ftBlob);

      FClientDS.CreateDataSet;
      FClientDS.LogChanges := False;
    end else
      FClientDS.EmptyDataSet;

{ЖЖЖЖЖЖЖЖЖЖЖЖЖЖЖЖЖЖЖЖЖЖЖЖЖЖЖЖЖЖЖЖЖЖЖЖЖЖЖЖЖЖЖЖЖЖЖЖЖЖЖЖЖЖЖЖЖЖЖЖЖЖЖЖЖЖЖЖЖЖЖЖЖЖЖЖЖЖ}

      FClientDS.EmptyDataSet;
      FClientDS.Append;
      // ----- выбор только по последним 2 месяцам ---------
      case cxComboBox1.ItemIndex of
        0, 1, 2 : FClientDS.FieldByName('period_type'   ).Value := 0;
             else FClientDS.FieldByName('period_type'   ).Value := cxComboBox1.ItemIndex;
      end;
      FClientDS.FieldByName('date_begin'    ).Value := cxDateEdit1.EditValue;
      FClientDS.FieldByName('date_last'     ).Value := cxDateEdit2.EditValue;
      FClientDS.FieldByName('users_group_id').Value := Fusr_pwd.user_group_id;
      FClientDS.FieldByName('set_arenda'    ).Value := cxCheckBox3.Checked;
      FClientDS.FieldByName('set_archiv'    ).Value := cxCheckBox4.Checked;
      FClientDS.FieldByName('vagon_dic'     ).Value := cxCheckBox1.Checked;
      if cxCheckBox1.Checked then begin
        FClientDS.FieldByName('type_park_id'  ).Value := iif((cxCheckComboBox1.EditValue = Null) or (cxCheckComboBox1.EditValue = ''), Null, GetDataFromCheckBox(cxCheckComboBox1, False));
        FClientDS.FieldByName('num_vagon'     ).Value := Null;
      end else begin
        FClientDS.FieldByName('type_park_id'  ).Value := Null;
        FClientDS.FieldByName('num_vagon'     ).Value := iif(cxMemo1.EditValue = Null, Null, str_num_vagon);
      end;

      FClientDS.FieldValues['type_park_vagon'] := iif(VarIsNull(cxTextEdit1.EditValue), Null, Trim(cxTextEdit1.Text ));
      FClientDS.FieldValues['cod_operation_vagon_cod']  := iif(VarIsNull(cxTextEdit2.EditValue), Null, Trim(cxTextEdit2.Text));
      FClientDS.FieldValues['cod_operation_vagon_name'] := iif(VarIsNull(cxTextEdit3.EditValue), Null, Trim(cxTextEdit3.Text));
      FClientDS.FieldValues['file_load_name']  := iif(VarIsNull(cxTextEdit4.EditValue), Null, Trim(cxTextEdit4.Text));
      FClientDS.FieldValues['node_begin_cod']  := iif(VarIsNull(cxButtonEdit7.EditValue), Null, Trim(cxButtonEdit7.Text));
      FClientDS.FieldValues['node_end_cod']    := iif(VarIsNull(cxButtonEdit4.EditValue), Null, Trim(cxButtonEdit4.Text));
      FClientDS.FieldValues['kargoETSNG_cod']  := iif(VarIsNull(cxButtonEdit6.EditValue), Null, Trim(cxButtonEdit6.Text));
      FClientDS.Post;
  finally

  end;
end;

procedure TfmFactTrackDlg.cxButtonEdit2PropertiesButtonClick(Sender: TObject;  AButtonIndex: Integer);
begin
  UpdateCxButtonEdit(Sender, AButtonIndex, 'inf_obj_NODE', 'станции', cxButtonEdit2, cxButtonEdit7);
end;

procedure TfmFactTrackDlg.cxButtonEdit3PropertiesButtonClick(Sender: TObject;  AButtonIndex: Integer);
begin
  UpdateCxButtonEdit(Sender, AButtonIndex, 'inf_obj_NODE', 'станции', cxButtonEdit3, cxButtonEdit4);
end;

procedure TfmFactTrackDlg.cxButtonEdit5PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  UpdateCxButtonEdit(Sender, AButtonIndex, 'inf_obj_ETSNG', 'груза', cxButtonEdit5, cxButtonEdit6);
end;

procedure TfmFactTrackDlg.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  StoreRegistryMemo(rgSave, '\Software\LIS1\cxMemo\FactTrackVagonDlg', cxMemo1);
  StoreRegistryCheckComboBox(rgSave, '\Software\LIS1\cxCheckCombox\FactTrackVagonDlg', cxCheckComboBox1);
  Query1.Close;
  Action := caFree;
end;

procedure TfmFactTrackDlg.UpdateCxButtonEdit(Sender: TObject; AButtonIndex: Integer; TableName: string; CapObject: string; Btn1, Btn2: TcxButtonEdit);
var new_str : string;
     set_ok : boolean;
      date1 : TDateTime;
begin
  if cxDateEdit1.Enabled then
    date1 := cxDateEdit1.Date
  else
    date1 := cxDateEdit2.Date;

  set_ok := False;
  Query1.Close;
  Query1.SQL.Clear;
  case AButtonIndex of
    0 : case TcxButtonEdit(Sender).Tag of
          0 : if InputQuery('Поиск', 'Шаблон НАИМЕНОВАНИЯ для '+CapObject+':', new_str) then begin
                set_ok := True;
                Query1.SQL.Add('SELECT inf_obj_id, inf_obj_name, inf_obj_cod FROM '+TableName+' where inf_obj_name LIKE ''%'+new_str+'%'' ');
                if TableName = 'inf_obj_NODE' then
                  Query1.SQL.Add('AND LEFT(' + DateToSQL(date1) + ', 8) BETWEEN convert(varchar(8), date_begin, 112) AND convert(varchar(8), date_end, 112) ORDER BY inf_obj_name');
                if TableName = 'inf_obj_ETSNG' then
                  Query1.SQL.Add('order by inf_obj_name');
              end;
          1 : if InputQuery('Поиск', 'Шаблон КОДА для груза '+CapObject+':', new_str) then begin
                set_ok := True;
                Query1.SQL.Add('SELECT inf_obj_id, inf_obj_name, inf_obj_cod FROM '+TableName+' where inf_obj_cod LIKE ''%'+new_str+'%'' order by inf_obj_cod');
              end;
        end;
    1 : begin
          SetClear(btn1, btn2);
        end;
  end;

  if set_ok then begin
    Query1.Open;
    fmFilter := TfmFilter.Create(0, Query1, 'inf_obj_id', 'inf_obj_cod', 'inf_obj_name');
    if fmFilter.ShowModal = mrOk then begin
      Screen.Cursor := crHourglass;
      GetFilterSelectRow(btn1, btn2, nil);
      Screen.Cursor := crDefault;
    end;
  end;
end;

function TfmFactTrackDlg.MemoToSQL(Value: TcxMemo): string;
var i  : integer;
    str: string;
begin
  str := '';
  if (Value.EditValue <> null) AND (Value.EditValue <> '') AND (Value.EditValue <> #13#10) then begin
    for i := 0 to Value.Lines.Count - 1 do
      try
        if (Value.Lines[i] <> '') AND (Value.Lines[i] <>' ') then  begin
          StrToInt64(Trim(Value.Lines[i]));
          str := str + ',' + (Trim(Value.Lines[i]));
        end;
      except
        continue
      end;
    Delete(str, 1, 1);
    Result := str;
  end;
end;

procedure TfmFactTrackDlg.SetTypeResult(type_result : integer);
begin
  // Если передали конкретный тип, то можно выбрать только его
  cxComboBox1.ItemIndex := type_result;
  cxComboBox1.Properties.ReadOnly := True;
end;

procedure TfmFactTrackDlg.SetNumVagon(str_num_vagon: string);
begin
  cxMemo1.EditValue := str_num_vagon;
end;

initialization
  dxInitialize;
finalization
  dxFinalize;

end.
