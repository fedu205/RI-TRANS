unit UsersAdd;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs, Default,
  StdCtrls, ExtCtrls, Db, ADODB, Mask, DBCtrls, cxControls,
  cxContainer, cxListBox, ComCtrls, cxTreeView, cxLabel, cxEdit,
  cxTextEdit, cxMaskEdit, cxGraphics, cxDropDownEdit, cxCheckListBox,
  cxLookAndFeelPainters, cxButtons, cxPropertiesStore, cxCheckBox, cxLookupEdit, cxDBLookupEdit,
  cxDBLookupComboBox, cxFilter, cxCalendar, cxMemo, cxColorComboBox, cxButtonEdit, Variants, cxLookAndFeels, dxSkinsCore, dxSkinBlack,
  dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
  dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky,
  dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMetropolis, dxSkinMetropolisDark, dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue,
  dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue, dxSkinOffice2010Silver,
  dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinOffice2016Colorful, dxSkinOffice2016Dark, dxSkinPumpkin,
  dxSkinSeven, dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus, dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008,
  dxSkinTheAsphaltWorld, dxSkinsDefaultPainters, dxSkinValentine, dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, dxSkinVS2010, dxSkinWhiteprint, dxSkinXmas2008Blue, dxCore, cxDateUtils,
  cxClasses, dxSkinTheBezier, Vcl.Menus, dxSkinOffice2019Colorful;

type
  TfmUsersAdd = class(TForm)
    Query1: TADOQuery;
    DS_Users: TDataSource;
    cxPropertiesStore1: TcxPropertiesStore;
    Panel6: TPanel;
    GroupBox1: TGroupBox;
    cxMemo1: TcxMemo;
    Panel5: TPanel;
    cxLabel6: TcxLabel;
    cxTextEdit5: TcxTextEdit;
    Panel4: TPanel;
    cxCheckBox2: TcxCheckBox;
    Panel1: TPanel;
    cxLabel7: TcxLabel;
    cxLabel8: TcxLabel;
    cxDateEdit1: TcxDateEdit;
    cxDateEdit2: TcxDateEdit;
    Panel3: TPanel;
    cxLabel4: TcxLabel;
    cxLabel3: TcxLabel;
    cxLabel2: TcxLabel;
    cxTextEdit2: TcxTextEdit;
    cxTextEdit3: TcxTextEdit;
    cxComboBox1: TcxComboBox;
    cxLabel5: TcxLabel;
    cxTextEdit4: TcxTextEdit;
    Panel7: TPanel;
    cxLabel10: TcxLabel;
    Query_Stack: TADOQuery;
    DS_Stack: TDataSource;
    cxButtonEdit2: TcxButtonEdit;
    cxCheckBox1: TcxCheckBox;
    Panel2: TPanel;
    cxLabel1: TcxLabel;
    cxButtonEdit3: TcxButtonEdit;
    cxTextEdit1: TcxTextEdit;
    cxLabel9: TcxLabel;
    cxButton3: TcxButton;
    cxButton1: TcxButton;
    procedure cxButtonEdit2PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cxCheckBox1Click(Sender: TObject);
    procedure cxButtonEdit3PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure cxButton1Click(Sender: TObject);
  private
    Ftype_action : integer;
    Fusers_id    : integer;
    Fusers_pref  : string;
    FpersonID    : integer;

    procedure UpdateUser(users_id : integer);
  public
    constructor Create(AOwner : TApplication; usr_pwd : PUser_pwd);

  published
    property _GetUsersId : integer read Fusers_id;
    property _SetUpdateUser : integer write UpdateUser;
  end;

var
  fmUsersAdd: TfmUsersAdd;

implementation
     uses UsersRole, Raznoe, Filter;
{$R *.DFM}

constructor TfmUsersAdd.Create(AOwner: TApplication; usr_pwd : PUser_pwd);
var Q : TADOQuery;
begin
  Screen.Cursor := crHourglass;
  inherited Create(AOwner);
  Ftype_action := 0;
  Fusers_id := -9;
  FpersonID := -9;

  Q := TADOQuery.Create(nil);
  Q.Connection := fmUsersRole.ADOUsersRole;

  Q.Close;
  Q.SQL.Clear;
  Q.SQL.Add('SELECT  inf_obj_id, inf_obj_name, inf_obj_name_full FROM inf_obj WHERE inf_obj_id='+IntToStr(usr_pwd^.user_group_id));
  Q.Open;

  while not Q.Eof do begin
    cxComboBox1.Properties.Items.AddObject(Q.FieldByName('inf_obj_name').asString, Pointer(Q.FieldByName('inf_obj_id').AsInteger));
    Fusers_pref := LowerCase(Q.FieldByName('inf_obj_name_full').asString);
    Q.Next;
  end;

  Q.Close;
  Q.SQL.Clear;
  Q.SQL.Add('SELECT users_id FROM users WHERE users_group_id = ' + IntToStr(usr_pwd^.user_group_id) + ' AND set_group_users = 1');
  Q.Open;

  if Q.RecordCount > 0 then cxCheckBox2.Enabled := False
  else cxCheckBox2.Enabled := True;

  cxComboBox1.ItemIndex := 0;
  cxComboBox1.Enabled := false;
  cxDateEdit1.Date := Date();

  Q.Free;
  Screen.Cursor := crDefault;
end;

procedure TfmUsersAdd.UpdateUser(users_id : integer);
var Q : TADOQuery;
begin
  Screen.Cursor := crHourglass;

  Ftype_action := 1;
  Fusers_id := users_id;
  Q := TADOQuery.Create(nil);
  Q.Connection := fmUsersRole.ADOUsersRole;
  Q.SQL.Add('SELECT * FROM view_users WHERE users_id = ' + IntToStr(users_id));
  Q.Open;
  if Q.RecordCount > 0 then begin
    cxTextEdit4.Enabled := False;
    cxComboBox1.Enabled := False;

    if Q.FieldByName('personID').IsNull then begin
      FpersonID := -9;
      cxButtonEdit3.EditValue := Q['FIO_users'];
    end else begin
      FpersonID := Q.FieldByName('personID').AsInteger;
      cxTextEdit1.EditValue := Q['personID'];
      cxButtonEdit3.EditValue := Q['FIO_users'];
      cxButtonEdit3.Properties.ReadOnly := True;
      cxButtonEdit3.Style.Color := clBtnFace;
    end;

    cxTextEdit4.Text    := Q.FieldByName('users_name').AsString;

    cxTextEdit5.EditValue := Q['users_telefon'];

    cxCheckBox2.Checked := Q.FieldByName('set_group_users').AsBoolean;

    cxMemo1.Lines.Text := Q.FieldByName('users_comment').AsString;

    cxDateEdit1.EditValue := Q.FieldByName('date_begin').Value;
    cxDateEdit2.EditValue := Q.FieldByName('date_end').Value;

    cxTextEdit2.Text := '``````````';
    cxTextEdit3.Text := '``````````';


    if Q.FieldByName('set_group_users').AsBoolean then
       cxCheckBox2.Enabled := True;
  end;
  Q.Free;

  Query_Stack.Close;
  Query_Stack.SQL.Clear;
  Query_Stack.SQL.Add('SELECT users_stack_num FROM users WHERE users_id =' + IntToStr(fmUsersRole.cxGrid1DBBandedTableView1users_id.DataBinding.Field.AsInteger));
  Query_Stack.Open;
  cxButtonEdit2.Text := Query_Stack.FieldByName('users_stack_num').AsString;
  Query_Stack.Close;

  Screen.Cursor := crDefault;
end;

procedure TfmUsersAdd.cxButton1Click(Sender: TObject);
var SP_Users_modify : TADOStoredProc;
            strHTML : string;
       sp_SEND_mail : TADOStoredProc;
                  Q : TADOQuery;
     str_Recipients : string;
begin
  if cxButtonEdit3.Text = '' then begin
    Showmessage('Введите ФИО пользователя ');
    cxButtonEdit3.SetFocus;
    exit;
  end;

  if cxTextEdit4.Text = '' then begin
    Showmessage('Введите логин пользователя!');
    cxTextEdit4.SetFocus;
    exit;
  end;

  SP_Users_modify := TADOStoredProc.Create(Application);
  SP_Users_modify.Connection := fmUsersRole.ADOUsersRole;
  SP_Users_modify.ProcedureName := 'sp_users_modify;1';
  SP_Users_modify.Parameters.Refresh;

  if Ftype_action = 1 then begin
//********** Редактируем пользователя
    if (cxTextEdit2.Text <> '``````````') then begin
      if cxTextEdit2.Text <> cxTextEdit3.Text then begin
        Showmessage('Новый пароль не подтвержден!');
        cxTextEdit3.SetFocus;
        SP_Users_modify.free;
        exit;
      end;
      Query1.Close;
      Query1.SQL.Clear;
      Query1.SQL.Add('ALTER LOGIN ' + cxTextEdit4.Text + ' WITH PASSWORD = ''' + cxTextEdit2.Text + '''');
      try
        Query1.ExecSQL;
      except
        Showmessage('Не удалось поменять пароль!');
        SP_Users_modify.free;
        exit;
      end;
    end;

    if cxCheckBox1.Checked then begin
       cxButtonEdit2.EditValue := -8;
    end;

    SP_Users_modify.Close;
    SP_Users_modify.Parameters.ParamByName('@type_action'     ).Value := 1;
    SP_Users_modify.Parameters.ParamByName('@out_users_id'    ).Value := Fusers_id;
    SP_Users_modify.Parameters.ParamByName('@in_users_id'     ).Value := Fusers_id;
    SP_Users_modify.Parameters.ParamByName('@users_name'      ).Value := cxTextEdit4.Text;
    SP_Users_modify.Parameters.ParamByName('@FIO_users'       ).Value := cxButtonEdit3.Text;
    SP_Users_modify.Parameters.ParamByName('@users_group_id'  ).Value := integer(cxComboBox1.Properties.Items.Objects[cxComboBox1.ItemIndex]);
    SP_Users_modify.Parameters.ParamByName('@users_telefon'   ).Value := cxTextEdit5.Text;
    SP_Users_modify.Parameters.ParamByName('@set_group_users' ).Value := cxCheckBox2.Checked;
    SP_Users_modify.Parameters.ParamByName('@date_begin'      ).Value := cxDateEdit1.EditValue;
    SP_Users_modify.Parameters.ParamByName('@date_end'        ).Value := cxDateEdit2.EditValue;
    SP_Users_modify.Parameters.ParamByName('@users_comment'   ).Value := cxMemo1.Lines.Text;
    SP_Users_modify.Parameters.ParamByName('@users_stack_num' ).Value := cxButtonEdit2.EditValue;
    SP_Users_modify.Parameters.ParamByName('@personID'        ).Value := iif(FpersonID = -9, null, FpersonID);

    SP_Users_modify.ExecProc;

  end else begin
    //********** Добавляем нового пользователя
    Query1.Close;
    Query1.SQL.Clear;
    Query1.SQL.Add('SELECT users_name FROM users WHERE users_name = ''' + cxTextEdit4.Text + '''');
    Query1.Open;
    if Query1.RecordCount > 0 then begin
      Showmessage('Пользователь ''' + cxTextEdit4.Text + ''' уже существует в базе!');
      SP_Users_modify.free;
      exit;
    end;

    if cxTextEdit2.Text = '' then begin
      Showmessage('Введите пароль!');
      cxTextEdit2.SetFocus;
      SP_Users_modify.Free;
      exit;
    end;

    if cxTextEdit2.Text <> cxTextEdit3.Text then begin
      Showmessage('Пароль не подтвержден!');
      cxTextEdit3.SetFocus;
      SP_Users_modify.Free;
      exit;
    end;

    Query1.Close;
    Query1.SQL.Clear;
    Query1.SQL.Add('EXEC sp_helplogins ''' + cxTextEdit4.Text + '''');
    try
      Query1.Open;
    except
      Showmessage('Не могу получить доступ к информации о пользователях - возможно у вас нет прав доступа');
      SP_Users_modify.Free;
      exit;
    end;

    if Query1.RecordCount = 0 then begin
      Query1.Close;
      Query1.SQL.Clear;
      Query1.SQL.Add('CREATE LOGIN ' + cxTextEdit4.Text + ' WITH PASSWORD = ''' + cxTextEdit2.Text + ''', DEFAULT_DATABASE = ' + fmUsersRole.Fusr_pwd.catalog + ', DEFAULT_LANGUAGE = russian, CHECK_POLICY= OFF');
      try
        Query1.ExecSQL;
      except
        Showmessage('Не могу добавить пользователя');
        SP_Users_modify.Free;
        exit;
      end;

      Query1.Close;
      Query1.SQL.Clear;
      Query1.SQL.Add('CREATE USER ' + cxTextEdit4.Text + ' FOR LOGIN ' + cxTextEdit4.Text + ' WITH DEFAULT_SCHEMA = dbo');
      try
        Query1.ExecSQL;
      except
        Showmessage('Не удалось прописать пользователя в базу! - возможно он там уже существует...');
        SP_Users_modify.Free;
      end;

      Query1.Close;
      Query1.SQL.Clear;
      Query1.SQL.Add('EXEC sp_addrolemember ''Lis1'', ''' + cxTextEdit4.Text + '''');
      try
        Query1.ExecSQL;
      except
        Showmessage('Не удалось установить роль "Lis1" для пользователя!');
        SP_Users_modify.Free;
      end;

      if cxCheckBox1.Checked then begin
         cxButtonEdit2.EditValue := -8;
      end;

      SP_Users_modify.Close;
      SP_Users_modify.Parameters.ParamByName('@in_users_id'    ).Value := -9;
      SP_Users_modify.Parameters.ParamByName('@type_action'    ).Value := Ftype_action;
      SP_Users_modify.Parameters.ParamByName('@users_name'     ).Value := cxTextEdit4.Text;
      SP_Users_modify.Parameters.ParamByName('@FIO_users'      ).Value := cxButtonEdit3.Text;
      SP_Users_modify.Parameters.ParamByName('@users_group_id' ).Value := integer(cxComboBox1.Properties.Items.Objects[cxComboBox1.ItemIndex]);
      SP_Users_modify.Parameters.ParamByName('@users_telefon'  ).Value := cxTextEdit5.Text;
      SP_Users_modify.Parameters.ParamByName('@set_group_users').Value := cxCheckBox2.Checked ;
      SP_Users_modify.Parameters.ParamByName('@date_begin'     ).Value := cxDateEdit1.EditValue;
      SP_Users_modify.Parameters.ParamByName('@date_end'       ).Value := cxDateEdit2.EditValue;
      SP_Users_modify.Parameters.ParamByName('@users_comment'  ).Value := cxMemo1.Lines.Text;
      SP_Users_modify.Parameters.ParamByName('@users_stack_num').Value := cxButtonEdit2.EditValue;
      SP_Users_modify.Parameters.ParamByName('@personID'       ).Value := iif(FpersonID = -9, null, FpersonID);

      SP_Users_modify.ExecProc;
    end;
  end;
  if SP_Users_modify.Parameters.ParamByName('@out_users_id').Value = -9 then begin
    Showmessage('Ошибка в работе процедуры sp_users_modify!!!');
    ModalResult := mrNone;
    exit;
  end;
  Fusers_id := SP_Users_modify.Parameters.ParamByName('@out_users_id').Value;

  //****************************************************************************
  {при добавлении пользователя отправляем эл.письмо на почту для последующей конкатинации учетных данных из ЛИС и ЛИС_ДОК
  и переправки их пользователю}
  if Ftype_action = 0 then begin
    if Application.MessageBox('Отправить информационное письмо на почту?', 'Внимание', MB_ICONQUESTION or MB_YESNO) = IDYES then begin
      str_Recipients := '';
      //Проверка выбора сотрудников отдела кадров для проставления их в копию при отправке письма
      Q := TADOQuery.Create(nil);
      Q.ConnectionString := 'Persist Security Info=True;Provider=SQLOLEDB.1;Password=cjnhfkjubcnbrf;User ID=sa;Initial Catalog=lis_docs;Data Source=10.10.101.28;';
      Q.CommandTimeout := 200;
      Q.SQL.Text := 'SELECT users_id AS personID, '''' AS cod, fio_users, firm_name, email, date_end FROM [Lis_Tel_1].[dbo].view_users ' +
      'WHERE date_end IS NULL AND management_id = 760 ORDER BY fio_users ';
      Q.Open;
      fmFilter := TfmFilter.Create(0, Q, 'personID', 'cod', 'fio_users');
      fmFilter._SetUsersCheckDocs := True;
      if fmFilter.ShowModal = mrOk then begin
        if fmFilter._GetStrId = '' then begin
          Application.MessageBox(Pchar('Не выбраны сотрудники для получения письма!' + #10#13 + 'Необходимо выбрать хотя бы одного!'), 'Ошибка ...', MB_ICONERROR + MB_OK);
          ModalResult := mrNone;
          Exit;
        end else begin
          Q.Close;
          Q.SQL.Text := 'SELECT users_id, email FROM [Lis_Tel_1].[dbo].view_users WHERE users_id IN ( ' + fmFilter._GetStrId + ' )';
          Q.Open;
          Q.First;
          while not Q.eof do begin
            if Q.FieldByName('email').AsString <> '' then
              str_Recipients := Q.FieldByName('email').AsString + ';' + str_Recipients;
            Q.Next;
          end;
          Q.Free;
        end;
      end else begin
        Application.MessageBox(Pchar('Не выбраны сотрудники для получения письма!' + #10#13 + 'Необходимо выбрать хотя бы одного!'), 'Ошибка ...', MB_ICONERROR + MB_OK);
        ModalResult := mrNone;
        Exit;
      end;

      strHTML := strHTML + '  <tr>';
      strHTML := strHTML + '	<td><br>' + FormatDateTime('dd.mm.yyyy hh:nn', Now) + '</br></td>';
      strHTML := strHTML + '	<td><br>' + '*** Это письмо сформировано автоматически, отвечать на него не нужно ***</br></td>';
      strHTML := strHTML + '	<td><br>' + 'Добрый день! </br></td>';
      strHTML := strHTML + '	<td><br>' + 'Учетные данные для доступа в LIS и LIS-Doc. </br></td>';
      strHTML := strHTML + '	<td><br>' + '[LIS ПользовательID  - ' + IntToStr(Fusers_id) + '] </br></td>';
      strHTML := strHTML + '	<td><br>' + '[FpersonID           - ' + IntToStr(FpersonID) + '] </br></td>';
      strHTML := strHTML + '	<td><br>' + '[Пользователь        - ' + cxButtonEdit3.EditValue + '] </br></td>';
      strHTML := strHTML + '	<td><br>' + '[Логин               - ' + cxTextEdit4.EditValue + '] </br></td>';
      strHTML := strHTML + '	<td><br>' + '[Пароль              - ' + cxTextEdit2.EditValue + '] </br></td>';

      sp_SEND_mail := TADOStoredProc.Create(nil);
      sp_SEND_mail.Connection := fmUsersRole.ADOUsersRole;
      sp_SEND_mail.ProcedureName := 'sp_SEND_mail';
      sp_SEND_mail.Parameters.Refresh;
      sp_SEND_mail.Parameters.ParamByName('@docs_id'   ).Value := '1';
      sp_SEND_mail.Parameters.ParamByName('@subject'   ).Value := 'Учетные данные LIS';
      sp_SEND_mail.Parameters.ParamByName('@recipients').Value := str_Recipients;//'malkin@sovfracht.ru'; fokin@sovfracht.ru
      sp_SEND_mail.Parameters.ParamByName('@tableHTML' ).Value := strHTML;
      sp_SEND_mail.ExecProc;
      sp_SEND_mail.Free;
    end;
  end;
  //****************************************************************************
  SP_Users_modify.free;
  ModalResult := MrOk;
end;

procedure TfmUsersAdd.cxButtonEdit2PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
var        s : string;
 Query_Stack : TADOQuery;
begin
 Query_Stack:=TADOQuery.Create(nil);
 Query_Stack.Connection := fmUsersRole.ADOUsersRole;
 Query_Stack.SQL.Add('SELECT FIO_users, users_stack_num, users_id, users_group_name, users_name FROM view_users ORDER BY FIO_users');
 Query_Stack.Open;

 fmFilter := TfmFilter.Create(0, Query_Stack, 'users_id', 'users_stack_num', 'FIO_users');
 fmFilter._SetUsersStack := true;

  case AButtonIndex of
    0 : begin
        fmFilter.ShowModal();
        if fmFilter.ModalResult = MRCANCEL then exit;
        if fmFilter.ModalResult = MROK then  Query_Stack.Locate('users_id', fmFilter.GetID, []);
        cxButtonEdit2.EditValue := fmFilter.GetCod;
        cxButtonEdit3.EditValue := fmFilter.GetName;
        cxTextEdit4.EditValue := Query_Stack.FieldByName('users_name').Value;
        if pos('_',cxTextEdit4.EditValue)>1 then begin
          s := cxTextEdit4.EditValue;
          Delete(s,pos('_',s),4);
          cxTextEdit4.EditValue := s +'_'+ Fusers_pref;
        end else
          cxTextEdit4.EditValue := cxTextEdit4.EditValue +'_'+ Fusers_pref;
        end;
    1 : cxButtonEdit2.EditValue := NULL;
  end;

  fmFilter.Free;
  Query_Stack.Free;
end;

procedure TfmUsersAdd.cxButtonEdit3PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
type TFuncList = function (AppHand: THandle): Variant;
var FPersonList : TFuncList;
         handle : THandle;
              v : Variant;
              Q : TADODataSet;
begin
  case AButtonIndex of
    0 : begin
          try
            handle := LoadLibrary('Tel_users.dll');
            @FPersonList := GetProcAddress(handle, 'GetPersonList');
            v := FPersonList(Application.Handle);
            FreeLibrary(handle);

            Q := TADODataSet.Create(nil);
            Q.Recordset := RecordsetFromXML(v[1]);
            fmFilter := TfmFilter.Create(0, Q, 'users_id', 'users_id', 'FIO_users' );
            fmFilter._SelectIndexColumn := 2;
            fmFilter.SetUsersChoose(cxButtonEdit3.Text);
            if fmFilter.ShowModal = mrOk then begin
              Q.Locate('fio_users', fmFilter.GetName, [loCaseInsensitive]);
              cxButtonEdit3.EditValue := fmFilter.GetName;
              cxButtonEdit3.Properties.Buttons[1].Enabled := True;
              FpersonID := fmFilter.GetId;
              cxTextEdit1.EditValue := FpersonID;
              cxButtonEdit3.Properties.ReadOnly := True;
              cxButtonEdit3.Style.Color := clBtnFace;
            end;

            Q.Free;
          except
            Application.MessageBox('Ошибка загрузки библиотеки телефонного справочника.', 'Ошибка', MB_ICONERROR or MB_OK);
          end;
        end;

    1 : begin
          if FpersonID <> -9  then ShowUsersDetail(-9, cxButtonEdit3.Text);
        end;

    2 : begin
        FpersonID := -9;
        cxTextEdit1.EditValue := null;
        cxButtonEdit3.EditValue := null;
        cxButtonEdit3.Properties.ReadOnly := False;
        cxButtonEdit3.Style.Color := clWindow;
        end;
  end;

end;

procedure TfmUsersAdd.cxCheckBox1Click(Sender: TObject);
begin
   if cxCheckBox1.Checked then cxButtonEdit2.Enabled := False
   else cxButtonEdit2.Enabled := True;
end;

procedure TfmUsersAdd.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

end.
