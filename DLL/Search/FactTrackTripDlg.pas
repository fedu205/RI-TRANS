unit FactTrackTripDlg;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore, dxSkinBlack,
  dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom,
  dxSkinDarkSide, dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMetropolis,
  dxSkinMetropolisDark, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue,
  dxSkinOffice2010Silver, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray,
  dxSkinOffice2013White, dxSkinOffice2016Colorful, dxSkinOffice2016Dark,
  dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus,
  dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008,
  dxSkinTheAsphaltWorld, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue, cxCheckBox, cxTextEdit, cxMaskEdit, cxButtonEdit,
  Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.Buttons, Data.DB, Data.Win.ADODB, cxClasses,
  cxPropertiesStore, Default, DBClient, cxDropDownEdit, cxCheckComboBox, dxSkinTheBezier, Vcl.Menus, cxButtons, dxSkinOffice2019Colorful;

type
  TfmFactTripDlg = class(TForm)
    GroupBox1: TGroupBox;
    Panel1: TPanel;
    cxButtonEdit2: TcxButtonEdit;
    cxButtonEdit1: TcxButtonEdit;
    cxPropertiesStore1: TcxPropertiesStore;
    Query: TADOQuery;
    ADO_TrackSearch: TADOConnection;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    cxButtonEdit3: TcxButtonEdit;
    cxButtonEdit4: TcxButtonEdit;
    cxTextEdit1: TcxTextEdit;
    Panel2: TPanel;
    Panel3: TPanel;
    GroupBox5: TGroupBox;
    cxCheckBox3: TcxCheckBox;
    cxCheckBox4: TcxCheckBox;
    GroupBox4: TGroupBox;
    cxCheckBox1: TcxCheckBox;
    cxCheckBox2: TcxCheckBox;
    GroupBox2: TGroupBox;
    GroupBox3: TGroupBox;
    cxCheckBox5: TcxCheckBox;
    cxCheckBox7: TcxCheckBox;
    cxCheckBox8: TcxCheckBox;
    GroupBox6: TGroupBox;
    cxCheckComboBox1: TcxCheckComboBox;
    cxButtonEdit5: TcxButtonEdit;
    cxButtonEdit6: TcxButtonEdit;
    Label4: TLabel;
    cxButton1: TcxButton;
    cxButton3: TcxButton;
    procedure cxButtonEdit1PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure cxButtonEdit3PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cxButtonEdit6PropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure cxButton1Click(Sender: TObject);
  private
    FClientDS      : TClientDataSet;
    Fusr_pwd       : PUser_pwd;
    FErr_param     : string;
    constructor Create(App: TApplication; usr_pwd: PUser_pwd; ActivePage: integer);  overload;
  public
    { Public declarations }
  published
    property _GetErr_param : string read FErr_param;
  end;

function CreateWndFactTrackTripDlg(AppHandle: THandle; usr_pwd: PUser_pwd; ActivePG: integer; type_result: integer = -9): variant; export;

var
  fmFactTripDlg: TfmFactTripDlg;

implementation
  uses Main, DateUtils, Filter, Raznoe, Other;
{$R *.dfm}

function CreateWndFactTrackTripDlg(AppHandle: THandle; usr_pwd: PUser_pwd; ActivePG: integer; type_result: integer = -9):variant; export;
begin
  try
    Application.Handle := AppHandle;
    fmFactTripDlg := TfmFactTripDlg.Create(Application, usr_pwd, ActivePG);
    if fmFactTripDlg.ShowModal = mrOK then
      Result := VarArrayOf([fmFactTripDlg.FClientDS.XMLData, fmFactTripDlg._GetErr_param, ''])
    else
      Result := VarArrayOf([ '', '', '']);
  finally
    fmFactTripDlg.Free;
    fmFactTripDlg := nil;
  end;
end;


constructor TfmFactTripDlg.Create(App: TApplication; usr_pwd: PUser_pwd; ActivePage: integer);
var Q : TADOQuery;
begin
  Screen.Cursor := -11;

  inherited Create(App);
  Fusr_pwd := usr_pwd;

  ADO_TrackSearch.Connected := False;
  ADO_TrackSearch.ConnectionString := 'Persist Security Info=True;Provider=SQLOLEDB.1;User ID='+usr_pwd.user_name+';Initial Catalog='+usr_pwd.catalog+';Data Source='+usr_pwd.server+';password='+usr_pwd.user_pass;
  ADO_TrackSearch.Connected := True;

  Q := TADOQuery.Create(nil);
  Q.Connection := ADO_TrackSearch;
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
  {считываем состояние из реестра}
  StoreRegistryCheckComboBox(rgLoad,'\Software\LIS1\cxCheckCombox\FactTrackTripDlg', cxCheckComboBox1);
  Q.Free;

  cxCheckBox1.Checked := True;
  cxCheckBox3.Checked := True;
  cxCheckBox5.Checked := True;
  cxCheckBox7.Checked := True;

  FErr_param := '';
  //Смотрим считаем сколько раз и кто открыл форму
  MonitorEventFormOpen('OPEN_FORM', self.Name, ADO_TrackSearch, -9);
  Screen.Cursor := 0;
end;

procedure TfmFactTripDlg.cxButton1Click(Sender: TObject);
var str_type_park_id : string;
begin
  str_type_park_id := '';
  str_type_park_id := GetDataFromCheckBox(cxCheckComboBox1, False);
  //проверка заполнения полей поиска на форме
  if str_type_park_id = '' then FErr_param := FErr_param + ' Необходимо выбрать значение(-я) "Типа парка вагонов".' + #9;
  if cxButtonEdit1.EditValue = Null then FErr_param := FErr_param + ' Необходимо выбрать значение "Станции назначения следующей перевозки".' + #9;
  if cxButtonEdit3.EditValue = Null then FErr_param := FErr_param + #10#13 + ' Необходимо выбрать значение(-я) "Заявленных грузов ЕТСНГ".' + #9;
  if (cxTextEdit1.EditValue = Null) or (cxTextEdit1.EditValue = 0) then FErr_param := FErr_param + #10#13 + ' Необходимо ввести значение "Кол - ва вагонов для перевозки".' + #9;
  if (cxCheckBox1.Checked = False) and (cxCheckBox2.Checked = False) then FErr_param := FErr_param + #10#13 + ' Необходимо выбрать значение(-я) "Тарифа".' + #9;
  if (cxCheckBox3.Checked = False) and (cxCheckBox4.Checked = False) then FErr_param := FErr_param + #10#13 + ' Необходимо выбрать значение(-я) "Типа перевозки".';
  //if (cxCheckBox5.Checked = False) and (cxCheckBox6.Checked = False) then FErr_param := FErr_param + #10#13 + ' Необходимо выбрать отображать или нет санкционные вагоны' + #9;
 // if (cxCheckBox7.Checked = False) and (cxCheckBox8.Checked = False) then FErr_param := FErr_param + #10#13 + ' Необходимо выбрать значение(-я) "Типа парка вагонов".';

  if Length(FErr_param) > 0 then
    Application.MessageBox(PChar(FErr_param), 'Ошибка ...', MB_ICONERROR + MB_OK);

  {создаем CD для записи туда и передачи параметров для новой процедуры (sp_fact_track_stat_get) выборки
  если его не создавать или создавать тлько (cxComboBox1.ItemIndex = 0,1,2) вылетает ошибка тк в
  (cxComboBox1.ItemIndex = 0,1,2) пользователь заходит не всегда}
  try
    if Assigned(FClientDS) = False then begin
      FClientDS := TClientDataSet.Create(nil);
      //группа пользователя
      FClientDS.FieldDefs.Add('users_group_id', ftinteger);

      //маршрут станция назначения
      FClientDS.FieldDefs.Add('node_end_cod', ftBlob);

      //груз ЕТСНГ
      FClientDS.FieldDefs.Add('kargoETSNG_cod', ftBlob);

      //Исключаемый груз ЕТСНГ
      FClientDS.FieldDefs.Add('not_kargoETSNG_cod', ftBlob);

      //кол - во вагонов
      FClientDS.FieldDefs.Add('count_vagon', ftInteger);

      //Тариф с превышенем и без
      FClientDS.FieldDefs.Add('rate_excess'    , ftBoolean);
      FClientDS.FieldDefs.Add('rate_not_excess', ftBoolean);

      //Тип перевозки по РФ и Экспорт
      FClientDS.FieldDefs.Add('type_transport_rus'   , ftBoolean);
      FClientDS.FieldDefs.Add('type_transport_export', ftBoolean);

      //Санкционные вагоны отображать или нет
      FClientDS.FieldDefs.Add('set_sanctions', ftBoolean);

      //Тип парка вагона
      FClientDS.FieldDefs.Add('work_park_vagon'    , ftBoolean);
      FClientDS.FieldDefs.Add('not_work_park_vagon', ftBoolean);

      FClientDS.FieldDefs.Add('type_park_id', ftString, 500);//
//      тип парка «Собственный», «Арендованный», «Лизинговый», «Привлеченный»
//                4824860,        4824861,      4824864,        4824866
//      FClientDS.FieldByName('type_park_id'  ).Value := iif((cxCheckComboBox1.EditValue = Null) or (cxCheckComboBox1.EditValue = ''), Null, GetDataFromCheckBox(cxCheckComboBox1, False));

      FClientDS.CreateDataSet;
      FClientDS.LogChanges := False;
    end else
      FClientDS.EmptyDataSet;

    {ЖЖЖЖЖЖЖЖЖЖЖЖЖЖЖЖЖЖЖЖЖЖЖЖЖЖЖЖЖЖЖЖЖЖЖЖЖЖЖЖЖЖЖЖЖЖЖЖЖЖЖЖЖЖЖЖЖЖЖЖЖЖЖЖЖЖЖЖЖЖЖЖЖЖЖЖЖЖ}

    FClientDS.EmptyDataSet;
    FClientDS.Append;
    //группа пользователя
    FClientDS.FieldByName('users_group_id'       ).Value := Fusr_pwd.user_group_id;

    //маршрут станция назначения
    FClientDS.FieldByName('node_end_cod'         ).Value := iif(VarIsNull(cxButtonEdit2.EditValue), Null, Trim(cxButtonEdit2.Text));
    //груз ЕТСНГ
    FClientDS.FieldByName('kargoETSNG_cod'       ).Value := iif(VarIsNull(cxButtonEdit4.EditValue), Null, Trim(cxButtonEdit4.Text));
    //Исключаемый груз ЕТСНГ
    FClientDS.FieldByName('not_kargoETSNG_cod'   ).Value := iif(VarIsNull(cxButtonEdit5.EditValue), Null, Trim(cxButtonEdit5.Text));

    //кол - во вагонов
    FClientDS.FieldByName('count_vagon'          ).Value := iif((cxTextEdit1.EditValue = Null) or (cxTextEdit1.EditValue = 0), 1, cxTextEdit1.EditValue);

    //Тариф с превышенем и без
    FClientDS.FieldByName('rate_excess'          ).Value := cxCheckBox2.Checked;
    FClientDS.FieldByName('rate_not_excess'      ).Value := cxCheckBox1.Checked;

    //Тип перевозки по РФ и Экспорт
    FClientDS.FieldByName('type_transport_rus'   ).Value := cxCheckBox3.Checked;
    FClientDS.FieldByName('type_transport_export').Value := cxCheckBox4.Checked;

    //Санкционные вагоны отображать или нет
    FClientDS.FieldByName('set_sanctions'        ).Value := cxCheckBox5.Checked;

    //Тип парка вагона
    FClientDS.FieldByName('work_park_vagon'      ).Value := cxCheckBox7.Checked;
    FClientDS.FieldByName('not_work_park_vagon'  ).Value := cxCheckBox8.Checked;

//      тип парка: «Собственный», «Арендованный», «Лизинговый», «Привлеченный»
//                4824860,        4824861,      4824864,        4824866
    FClientDS.FieldByName('type_park_id'  ).Value := iif(str_type_park_id = '', Null, str_type_park_id);

    FClientDS.Post;
  finally
  end;

end;

procedure TfmFactTripDlg.cxButtonEdit1PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
var      new_str : string;
          set_ok : boolean;
begin
//выбор станции назначения следующей перевозки
  set_ok := False;
  Query.Close;
  case AButtonIndex of
    0 : begin
          case TcxButtonEdit(Sender).Tag of
            0 : if InputQuery('Поиск', 'Шаблон поиска НАИМЕНОВАНИЯ станции назначения:', new_str) then begin
                  set_ok := True;
                  Query.SQL.Text := 'SELECT inf_obj_id, inf_obj_name, inf_obj_cod FROM inf_obj_NODE WHERE inf_obj_name LIKE ''%'+new_str+'%'' AND LEFT(' + DateToSQL(Date) + ', 6) BETWEEN convert(varchar(6), date_begin, 112) AND convert(varchar(6), date_end, 112) ORDER BY inf_obj_name';
                end;
            1 : if InputQuery('Поиск', 'Шаблон поиска КОДА станции назначения:', new_str) then begin
                  set_ok := True;
                  Query.SQL.Text := 'SELECT inf_obj_id, inf_obj_name, inf_obj_cod FROM inf_obj_NODE WHERE inf_obj_cod LIKE ''%'+new_str+'%'' AND LEFT(' + DateToSQL(Date) + ', 6) BETWEEN convert(varchar(6), date_begin, 112) AND convert(varchar(6), date_end, 112) ORDER BY inf_obj_name';
                end;
          end;
        end;
    1 : SetClear(cxButtonEdit1, cxButtonEdit2);
  end;

  if set_ok then begin
    Query.Open;
    fmFilter := TfmFilter.Create(0, Query, 'inf_obj_id', 'inf_obj_cod', 'inf_obj_name');
    if fmFilter.ShowModal = mrOk then begin
      {устанавливаем выборанные наименования и коды}
      cxButtonEdit1.EditValue := fmFilter.GetName;
      cxButtonEdit2.EditValue := fmFilter.GetCod;
    end;
  end;
end;


procedure TfmFactTripDlg.cxButtonEdit3PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
var new_str : string;
     set_ok : boolean;
begin
//выбор груза ЕТСНГ
  set_ok := False;
  Query.Close;
  case AButtonIndex of
    0 : begin
          case TcxButtonEdit(Sender).Tag of
            0 : if InputQuery('Поиск', 'Шаблон НАИМЕНОВАНИЯ для груза ЕТСНГ:', new_str) then begin
                  set_ok := True;
                  Query.SQL.Text := 'SELECT inf_obj_id, inf_obj_name, inf_obj_cod FROM inf_obj_ETSNG where inf_obj_name LIKE ''%'+new_str+'%'' and (dbo.GetInfObjVisible(str_group_visible) = 1) ORDER BY inf_obj_name';
                end;
            1 : if InputQuery('Поиск', 'Шаблон КОДА для груза ЕТСНГ:', new_str) then begin
                  set_ok := True;
                  Query.SQL.Text := 'SELECT inf_obj_id, inf_obj_name, inf_obj_cod FROM inf_obj_ETSNG WHERE inf_obj_cod LIKE ''%'+new_str+'%'' and (dbo.GetInfObjVisible(str_group_visible) = 1) ORDER BY inf_obj_cod';
                end;
          end;
        end;
    1 : SetClear(cxButtonEdit3, cxButtonEdit4);
  end;

  if set_ok then begin
    Query.Open;
    fmFilter := TfmFilter.Create(0, Query, 'inf_obj_id', 'inf_obj_cod', 'inf_obj_name');
    if fmFilter.ShowModal = mrOk then
      {устанавливаем выборанные наименования (груза) и коды}
      GetFilterSelectRow(cxButtonEdit3, cxButtonEdit4, nil);
  end;
end;

procedure TfmFactTripDlg.cxButtonEdit6PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
var new_str : string;
     set_ok : boolean;
begin
//выбор изключаемого груза ЕТСНГ
  set_ok := False;
  Query.Close;
  case AButtonIndex of
    0 : begin
          case TcxButtonEdit(Sender).Tag of
            0 : if InputQuery('Поиск', 'Шаблон НАИМЕНОВАНИЯ для груза ЕТСНГ:', new_str) then begin
                  set_ok := True;
                  Query.SQL.Text := 'SELECT inf_obj_id, inf_obj_name, inf_obj_cod FROM inf_obj_ETSNG where inf_obj_name LIKE ''%'+new_str+'%'' and (dbo.GetInfObjVisible(str_group_visible) = 1) ORDER BY inf_obj_name';
                end;
            1 : if InputQuery('Поиск', 'Шаблон КОДА для груза ЕТСНГ:', new_str) then begin
                  set_ok := True;
                  Query.SQL.Text := 'SELECT inf_obj_id, inf_obj_name, inf_obj_cod FROM inf_obj_ETSNG WHERE inf_obj_cod LIKE ''%'+new_str+'%'' and (dbo.GetInfObjVisible(str_group_visible) = 1) ORDER BY inf_obj_cod';
                end;
          end;
        end;
    1 : SetClear(cxButtonEdit6, cxButtonEdit5);
  end;

  if set_ok then begin
    Query.Open;
    fmFilter := TfmFilter.Create(0, Query, 'inf_obj_id', 'inf_obj_cod', 'inf_obj_name');
    if fmFilter.ShowModal = mrOk then
      {устанавливаем выборанные наименования (груза) и коды}
      GetFilterSelectRow(cxButtonEdit6, cxButtonEdit5, nil);
  end;

end;

procedure TfmFactTripDlg.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  StoreRegistryCheckComboBox(rgSave, '\Software\LIS1\cxCheckCombox\FactTrackTripDlg', cxCheckComboBox1);
  Query.Close;
  Action := caFree;
end;

end.
