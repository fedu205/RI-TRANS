unit Password;

interface

uses
  Windows, Messages, SysUtils, Classes, Controls, Forms, Default,
  DB, StdCtrls, Buttons, ExtCtrls, ADODB, Registry, dxCore, Dialogs,
  cxControls, cxEdit, Variants, cxContainer, cxTextEdit, cxImage, StrUtils, DBClient, cxPropertiesStore,
  cxGraphics, cxCheckBox, cxClasses,
  Vcl.Menus, System.ImageList, Vcl.ImgList, cxImageList, dxGDIPlusClasses,
  cxButtons, cxLookAndFeels, cxLookAndFeelPainters;


type
  TfmPassword = class(TForm)
    ADOConnection1: TADOConnection;
    SP_session_num: TADOStoredProc;
    Panel1: TPanel;
    Panel2: TPanel;
    SP_UsersName: TADOStoredProc;
    Label4: TLabel;
    Label6: TLabel;
    SpeedButton1: TSpeedButton;
    cxTextEdit1: TcxTextEdit;
    cxTextEdit2: TcxTextEdit;
    cxImage1: TcxImage;
    Label1: TLabel;
    Label2: TLabel;
    Query1: TADOQuery;
    ClientDataSet1: TClientDataSet;
    ClientDataSet1func_name: TStringField;
    Panel3: TPanel;
    cxTextEdit4: TcxTextEdit;
    Label8: TLabel;
    Label7: TLabel;
    cxTextEdit3: TcxTextEdit;
    cxPropertiesStore1: TcxPropertiesStore;
    Panel4: TPanel;
    cxCheckBox_RailInfo: TcxCheckBox;
    cxCheckBox_RailTarif: TcxCheckBox;
    cxCheckBox_Currency: TcxCheckBox;
    cxImageList1: TcxImageList;
    cxButton1: TcxButton;
    cxButton3: TcxButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormActivate(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure SpeedButton1Click(Sender: TObject);
    procedure cxTextEdit1KeyPress(Sender: TObject; var Key: Char);
    procedure cxTextEdit2KeyPress(Sender: TObject; var Key: Char);
    function GetClientDSData() : Variant;
    procedure cxButton1Click(Sender: TObject);
    procedure cxButton3Click(Sender: TObject);
  private
    Fregistry : TRegistry;
    Fusr_pwd  : TUser_pwd;
    Fparam    : string;

    procedure SetInfoKeyboard(KeyboardLayout: integer);
    procedure OnMessage(var Msg: tagMSG; var Handled: Boolean);
    function  CheckMultiConnect(user_name: string): boolean;
    function GetLoadCurrency() : boolean;
    function GetLoadRailTarif(): boolean;
    function GetLoadRailInfo() : boolean;
  public
    constructor Create(AOwner: TApplication; usr_pwd: PUser_pwd; param: string);
  published
    property _GetClientDSData  : Variant   read GetClientDSData;
    property _GetUsrPwd        : TUser_pwd read Fusr_pwd;
    property _GetLoadCurrency  : boolean read GetLoadCurrency;
    property _GetLoadRailTarif : boolean read GetLoadRailTarif;
    property _GetLoadRailInfo  : boolean read GetLoadRailInfo;
  end;

function CreateWndPassword(AppHand: THandle; usr_pwd: PUser_pwd): Variant; export;
function CreateWndPasswordParam(AppHand: THandle; usr_pwd: PUser_pwd; param: string): Variant; export;
function GetListLogins(users_name: string; password: string; server: string; catalog: string; var ClientDS_usr_pwd: TClientDataSet): boolean; export;
function ConnectToDatabase(users_name: string; password: string; server: string; catalog: string): Variant; export;

var
  fmPassword : TfmPassword;

implementation
  uses SelectCompany;
{$R *.DFM}

function CreateWndPassword(AppHand: THandle; usr_pwd: PUser_pwd): Variant;
begin
  Application.Handle := AppHand;
  try
    fmPassword := TfmPassword.Create(Application, usr_pwd, '');
    fmPassword.ShowModal;
    result := VarArrayOf([fmPassword._GetUsrPwd.users_id,
                          fmPassword._GetUsrPwd.user_name,
                          fmPassword._GetUsrPwd.user_pass,
                          fmPassword._GetUsrPwd.server,
                          fmPassword._GetUsrPwd.session,
                          fmPassword._GetUsrPwd.user_cod,
                          fmPassword._GetUsrPwd.catalog,
                          fmPassword._GetClientDSData,
                          fmPassword._GetUsrPwd.user_group_id,
                          fmPassword._GetLoadCurrency,
                          fmPassword._GetLoadRailTarif,
                          fmPassword._GetLoadRailInfo]);
  finally
   fmPassword.Free;
  end;
end;

function CreateWndPasswordParam(AppHand: THandle; usr_pwd: PUser_pwd; param: string): Variant;
begin
  Application.Handle := AppHand;
  try
    fmPassword := TfmPassword.Create(Application, usr_pwd, param);
    fmPassword.ShowModal;
    result := VarArrayOf([fmPassword._GetUsrPwd.users_id,
                          fmPassword._GetUsrPwd.user_name,
                          fmPassword._GetUsrPwd.user_pass,
                          fmPassword._GetUsrPwd.server,
                          fmPassword._GetUsrPwd.session,
                          fmPassword._GetUsrPwd.user_cod,
                          fmPassword._GetUsrPwd.catalog,
                          fmPassword._GetClientDSData,
                          fmPassword._GetUsrPwd.user_group_id,
                          fmPassword._GetLoadCurrency,
                          fmPassword._GetLoadRailTarif,
                          fmPassword._GetLoadRailInfo]);
  finally
   fmPassword.Free;
  end;
end;

function GetCurrentUserName(): string;
var
  BufferSize: DWORD;
  pUser: PChar;
begin
  BufferSize := 0;
  GetUserName(nil, BufferSize);
  pUser := StrAlloc(BufferSize);
  try
    GetUserName(pUser, BufferSize);
    Result := StrPas(pUser);
  finally
    StrDispose(pUser);
  end;
end;

function ConnectToDatabase(users_name: string; password: string; server: string; catalog: string): Variant;
var    usr_pwd : TUser_pwd;
      registry : TRegistry;
       connect : TADOConnection;
             Q : TADOQuery;
 ClientDS_func : TClientDataSet;
 SP_session_num: TADOStoredProc;
begin
  registry := TRegistry.Create;
  registry.RootKey := HKEY_CURRENT_USER;
  registry.OpenKey('\Software\Lis_GURU\Password', True);

  registry.OpenKey('\Software\Lis_GURU', True);
  if server  = '' then server  := registry.ReadString('Data Source');
  if catalog = '' then catalog := registry.ReadString('Initial Catalog');
  registry.Free;

  connect := TADOConnection.Create(nil);
  connect.LoginPrompt      := False;
  connect.KeepConnection   := False;
  connect.ConnectionTimeout:= 10;
  connect.ConnectionString := 'Persist Security Info=True;Provider=SQLOLEDB.1;User ID=' + users_name + ';Password=''' + password + ''';Initial Catalog=' + catalog + ';Data Source=' + server + ';';

  Q := TADOQuery.Create(nil);
  Q.Connection := connect;

  SP_session_num := TADOStoredProc.Create(nil);
  SP_session_num.Connection := connect;
  SP_session_num.ProcedureName := 'sp_reg_session_insert';


  ClientDS_func := TClientDataSet.Create(nil);
  ClientDS_func.FieldDefs.Add('func_name', ftString, 255);
  ClientDS_func.CreateDataSet;

  try
    connect.Connected := True;

    usr_pwd.user_name := users_name;
    usr_pwd.user_pass := password;
    usr_pwd.server    := server;
    usr_pwd.catalog   := catalog;

    Q.Close;
    Q.SQL.Clear;
    Q.SQL.Add('SELECT * FROM users WHERE (users_name=:users_name) AND (date_end is NULL)');
    Q.Parameters.ParamByName('users_name').Value := usr_pwd.user_name;
    Q.Open;

    if Q.RecordCount = 0 then begin
      usr_pwd.users_id := -9;
      exit;
    end;

    usr_pwd.users_id := Q.FieldByName('users_id').AsInteger;
    usr_pwd.user_cod := Q.FieldByName('users_cod').AsString;
    usr_pwd.user_group_id := Q.FieldByName('users_group_id').AsInteger;

    // Пользовательские функции
    Q.Close;
    Q.SQL.Clear;
    Q.SQL.Add('SELECT i.inf_obj_name AS func_name');
    Q.SQL.Add('FROM inf_obj i ');
    Q.SQL.Add('JOIN users_functions u');
    Q.SQL.Add('ON (i.inf_obj_id = u.functions_id)');
    Q.SQL.Add('AND (i.type_inf_id = 36)');
    Q.SQL.Add('AND (u.users_id = ' + IntToStr(usr_pwd.users_id) + ')');
    Q.Open;

    Q.First;
    while not Q.Eof do begin
      ClientDS_func.Append;
      ClientDS_func.FieldByName('func_name').AsString := Q.FieldByName('func_name').AsString;
      ClientDS_func.Post;
      Q.Next;
    end;

    SP_session_num.Parameters.Refresh;
    SP_session_num.Parameters.ParamByName('@users_name').Value  := usr_pwd.user_name;
    SP_session_num.Parameters.ParamByName('@login_nt'  ).Value  := GetCurrentUserName();
    SP_session_num.Parameters.ParamByName('@out_session').Value := null;
    SP_session_num.ExecProc;
    usr_pwd.session := SP_session_num.Parameters.ParamByName('@out_session').Value;

  except
    usr_pwd.users_id := -9;
  end;

  result := VarArrayOf([usr_pwd.users_id,
                        usr_pwd.user_name,
                        usr_pwd.user_pass,
                        usr_pwd.server,
                        usr_pwd.session,
                        usr_pwd.user_cod,
                        usr_pwd.catalog,
                        ClientDS_func.Data,
                        usr_pwd.user_group_id,
                        0,
                        0 ]);

  connect.Free;
  Q.Free;
  ClientDS_func.Free;
  SP_session_num.Free;
end;

function GetListLogins(users_name: string; password: string; server: string; catalog: string; var ClientDS_usr_pwd: TClientDataSet): boolean;
var       connect : TADOConnection;
            Q, Q2 : TADOQuery;
    ClientDS_func : TClientDataSet;
         registry : TRegistry;
begin

  registry := TRegistry.Create;
  registry.RootKey := HKEY_CURRENT_USER;
  registry.OpenKey('\Software\Lis_GURU\Password', True);

  registry.OpenKey('\Software\Lis_GURU', True);
  if server  = '' then server  := registry.ReadString('Data Source');
  if catalog = '' then catalog := registry.ReadString('Initial Catalog');
  registry.Free;

  connect := TADOConnection.Create(nil);
  connect.LoginPrompt      := False;
  connect.KeepConnection   := False;
  connect.ConnectionTimeout:= 2;
  connect.ConnectionString := 'Persist Security Info=True;Provider=SQLOLEDB.1;User ID=' + users_name + ';Password=''' + password + ''';Initial Catalog=' + catalog + ';Data Source=' + server + ';';

  Q := TADOQuery.Create(nil);
  Q.Connection := connect;

  Q2 := TADOQuery.Create(nil);
  Q2.Connection := connect;

  ClientDS_func := TClientDataSet.Create(nil);
  ClientDS_func.FieldDefs.Add('func_name', ftString, 255);
  ClientDS_func.CreateDataSet;

  try
    connect.Open;

    Q.Close;
    Q.SQL.Clear;
    Q.SQL.Add('SELECT	users_id, users_name, users_cod, users_group_id, users_group_cod, users_group_name');
    Q.SQL.Add('FROM	  view_users');
    Q.SQL.Add('WHERE	date_end is null AND users_group_date_end is NULL AND users_stack_num = (SELECT users_stack_num FROM users WHERE users_name = ''' + users_name +''')');
    Q.SQL.Add('UNION');
    Q.SQL.Add('SELECT	users_id, users_name, users_cod, users_group_id, users_group_cod, users_group_name');
    Q.SQL.Add('FROM	  view_users');
    Q.SQL.Add('WHERE	date_end is null AND users_group_date_end is NULL AND users_name = '''  + users_name + '''');
    Q.Open;

    ClientDS_usr_pwd.EmptyDataSet;
    while not Q.Eof do begin

      ClientDS_usr_pwd.Append;
      ClientDS_usr_pwd.FieldByName('users_id'       ).Value := Q.FieldByName('users_id').Value;
      ClientDS_usr_pwd.FieldByName('user_name'      ).Value := Q.FieldByName('users_name').Value;
      ClientDS_usr_pwd.FieldByName('user_pass'      ).Value := password;
      ClientDS_usr_pwd.FieldByName('user_cod'       ).Value := Q.FieldByName('users_cod').Value;
      ClientDS_usr_pwd.FieldByName('server'         ).Value := server;
      ClientDS_usr_pwd.FieldByName('catalog'        ).Value := catalog;
      ClientDS_usr_pwd.FieldByName('session'        ).Value := -9;
      ClientDS_usr_pwd.FieldByName('user_group_id'  ).Value := Q.FieldByName('users_group_id').Value;
      ClientDS_usr_pwd.FieldByName('user_group_cod' ).Value := Q.FieldByName('users_group_cod').Value;
      ClientDS_usr_pwd.FieldByName('user_group_name').Value := Q.FieldByName('users_group_name').Value;

      // Пользовательские функции
      Q2.Close;
      Q2.SQL.Clear;
      Q2.SQL.Add('SELECT i.inf_obj_name AS func_name');
      Q2.SQL.Add('FROM inf_obj i ');
      Q2.SQL.Add('JOIN users_functions u');
      Q2.SQL.Add('ON (i.inf_obj_id = u.functions_id)');
      Q2.SQL.Add('AND (i.type_inf_id = 36)');
      Q2.SQL.Add('AND (u.users_id = ' + IntToStr(Q.FieldByName('users_id').AsInteger) + ')');
      Q2.Open;

      ClientDS_func.EmptyDataSet;
      Q2.First;
      while not Q2.Eof do begin
        ClientDS_func.Append;
        ClientDS_func.FieldByName('func_name').AsString := Q2.FieldByName('func_name').AsString;
        ClientDS_func.Post;
        Q2.Next;
      end;

      ClientDS_usr_pwd.FieldByName('user_func').Value := ClientDS_func.Data;
      ClientDS_usr_pwd.Post;
      Q.Next;
    end;

    Result := True;
  except
    on E: Exception do begin
      Result := False;
    end;
  end;

  ClientDS_func.Free;
  Q.Free;
  Q2.Free;
  connect.Free;
end;

constructor TfmPassword.Create(AOwner: TApplication; usr_pwd: PUser_pwd; param: string);
var ABitmap: TcxAlphaBitmap;
    APNGImage: TdxPNGImage;
begin
//-----------
  inherited Create(AOwner);
  Fusr_pwd.users_id := -9;

  if LowerCase(param) <> 'lis' then
    Fparam := param;

  ABitmap := TcxAlphaBitmap.Create;
  cxImageList1.GetImage(0, ABitmap);
  APNGImage := TdxPNGImage.Create;
  APNGImage.SetBitmap(ABitmap);
  cxImage1.Picture.Assign(APNGImage);
  ABitmap.Free;
  APNGImage.Free;

  Fregistry := TRegistry.Create;
  Fregistry.RootKey := HKEY_CURRENT_USER;
  Fregistry.OpenKey('\Software\Lis_GURU\Password', True);

  Fregistry.OpenKey('\Software\Lis_GURU', True);

  if usr_pwd = nil then begin
    cxTextEdit3.Text := Fregistry.ReadString('Data Source');
    cxTextEdit4.Text := Fregistry.ReadString('Initial Catalog');
    cxTextEdit1.Text := Fregistry.ReadString('User ID');

    if cxTextEdit3.Text = '' then cxTextEdit3.Text := '92.53.107.222';
    if cxTextEdit4.Text = '' then cxTextEdit4.Text := 'LIS1';
  end else begin
    cxTextEdit3.Text := usr_pwd.server;
    cxTextEdit4.Text := usr_pwd.catalog;
    cxTextEdit1.Text := usr_pwd.user_name;
    cxTextEdit2.Text := usr_pwd.user_pass;
  end;

  cxTextEdit3.Text := '92.53.107.222';


  Panel3.Visible := False;
  Height := Height - Panel3.Height;;

  LoadKeyboardLayout('00000409', KLF_ACTIVATE);

  Application.OnMessage := OnMessage;
  SetInfoKeyboard(LoWord(GetKeyboardLayout(0)));

  ClientDataSet1.CreateDataSet;
end;

function TfmPassword.GetClientDSData : Variant;
begin
  Result := ClientDataSet1.Data;
end;

function TfmPassword.GetLoadCurrency: boolean;
begin
  result := cxCheckBox_Currency.Checked;
end;

function TfmPassword.GetLoadRailTarif: boolean;
begin
  result := cxCheckBox_RailTarif.Checked;
end;

function TfmPassword.GetLoadRailInfo: boolean;
begin
  result := cxCheckBox_RailInfo.Checked;
end;

procedure TfmPassword.OnMessage(var Msg: tagMSG; var Handled: Boolean);
begin
  if Msg.message = WM_INPUTLANGCHANGEREQUEST then begin
    SetInfoKeyboard(LoWord(Msg.lParam));
  end;
  if Msg.message = WM_KEYDOWN then begin
    SetInfoKeyboard(LoWord(GetKeyboardLayout(0)));
  end;
end;

procedure TfmPassword.SetInfoKeyboard(KeyboardLayout: integer);
var
  LngName: array [0..10] of Char;
begin
  GetLocaleInfo(KeyboardLayout, LOCALE_SABBREVLANGNAME, LngName, SizeOf(LngName));
  Label1.Caption := LeftStr(LngName,2);

  if (GetKeyState(VK_CAPITAL) and 1) = 1 then Label2.Visible := True
  else Label2.Visible := False;
end;

function TfmPassword.CheckMultiConnect(user_name: string): boolean;
var client_net_address : string;
    Connect : TADOConnection;
    Query   : TADOQuery;
    res : Boolean;
begin
//  try
//    Connect := TADOConnection.Create(nil);
//    Connect.LoginPrompt := False;
//    Connect.Connected := False;
//    Connect.ConnectionString := 'Persist Security Info=True;Provider=SQLOLEDB.1;User ID=ADMIN_SFH;Password=''cjnhfkjubcnbrf'';Initial Catalog='+cxTextEdit4.Text+';Data Source='+cxTextEdit3.Text+';';
//    Connect.Connected := True;
//
//    Query := TADOQuery.Create(nil);
//    Query.Connection := Connect;
//
//    Query.SQL.Add('SELECT client_net_address');
//    Query.SQL.Add('FROM	  sys.dm_exec_connections');
//    Query.SQL.Add('WHERE	session_id=@@SPID');
//    Query.Open;
//
//    client_net_address := Query.FieldByName('client_net_address').AsString;
//
//    if user_name = '' then user_name := cxTextEdit1.Text;
//
//
//    Query.Close;
//    Query.SQL.Clear;
//    Query.SQL.Add('SELECT loginame, client_net_address');
//    Query.SQL.Add('FROM	  sys.sysprocesses');
//    Query.SQL.Add('       inner join sys.dm_exec_connections on sys.sysprocesses.spid = sys.dm_exec_connections.session_id');
//    Query.SQL.Add('WHERE	loginame = ''' + user_name + '''');
//    Query.SQL.Add('       AND client_net_address <> ''' + client_net_address + '''');
//    Query.SQL.Add('       AND dbid in (SELECT dbid FROM  sys.sysdatabases WHERE name = '''+ cxTextEdit4.Text +''')');
//
//    Query.Open;
//
//    if Query.RecordCount > 0 then res := False
//    else res := True;
//
//    Query.Close;
//    Query.Free;
//    Connect.Free
//  except
//    res := False;
//  end;
//  Result := res;

  Result := True;
end;

procedure TfmPassword.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   Fregistry.CloseKey;
   Fregistry.Free;
   Action := caFree;
end;

procedure TfmPassword.FormActivate(Sender: TObject);
begin
   cxTextEdit2.SetFocus;
end;

procedure TfmPassword.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  if (Fparam = 'lis') or (Fparam = '') then begin
    Fregistry.WriteString('Data Source', cxTextEdit3.Text);
    Fregistry.WriteString('Initial Catalog', cxTextEdit4.Text);
    Fregistry.WriteString('User ID', cxTextEdit1.Text);
  end;
end;

procedure TfmPassword.SpeedButton1Click(Sender: TObject);
begin
  if not SpeedButton1.Down then Height := Height - Panel3.Height
  else Height := Height + Panel3.Height;

  Panel3.Visible := SpeedButton1.Down;
end;

procedure TfmPassword.cxButton1Click(Sender: TObject);
var str_tmp: string;
begin
  try
    ADOConnection1.Connected := False;
    ADOConnection1.ConnectionString := 'Persist Security Info=True;Provider=SQLOLEDB.1;User ID='+cxTextEdit1.Text+';Password='''+cxTextEdit2.Text+''';Initial Catalog='+cxTextEdit4.Text+';Data Source='+cxTextEdit3.Text+';';
    ADOConnection1.Connected := True;

    Fusr_pwd.user_name := cxTextEdit1.Text;
    Fusr_pwd.user_pass := cxTextEdit2.Text;
    Fusr_pwd.server    := cxTextEdit3.Text;
    Fusr_pwd.catalog   := cxTextEdit4.Text;

    if Fparam <> '' then begin
      str_tmp := Fusr_pwd.user_name;
      str_tmp := ReverseString(str_tmp);
      str_tmp := RightStr(str_tmp, Length(str_tmp) - Pos('_',str_tmp));
      str_tmp := ReverseString(str_tmp);

      Fusr_pwd.user_name := str_tmp + '_' + UpperCase(Fparam);
    end;

    Query1.Close;
    Query1.SQL.Clear;
    Query1.SQL.Add('SELECT * FROM users WHERE (users_name=:users_name) AND (date_end is NULL)');
    Query1.Parameters.ParamByName('users_name').Value := Fusr_pwd.user_name;
    Query1.Open;

    if Query1.RecordCount = 0 then begin
      Application.MessageBox('Неверные пользователь/пароль.','ВНИМАНИЕ',MB_OK);
      Fusr_pwd.users_id := -9;
      ModalResult := mrNone;
      exit;
    end;

    Fusr_pwd.users_id := Query1.FieldByName('users_id').AsInteger;
    Fusr_pwd.user_cod := Query1.FieldByName('users_cod').AsString;
    Fusr_pwd.user_group_id := Query1.FieldByName('users_group_id').AsInteger;

    // Выбор организации -------------
    Query1.Close;
    Query1.SQL.Clear;
    Query1.SQL.Add('SELECT * FROM view_users ');
    Query1.SQL.Add('WHERE users_stack_num IN (SELECT users_stack_num FROM users WHERE users_id = ' + IntToStr(Fusr_pwd.users_id) + ')');
    Query1.SQL.Add('      AND users_stack_num IS NOT NULL');
    Query1.Open;
    // Если организаций много
    if Query1.RecordCount > 1 then begin
      fmSelectCompany := TfmSelectCompany.Create(nil, Fusr_pwd);
      fmSelectCompany._LocateUsersGroupID := Fusr_pwd.user_group_id;

      if fmSelectCompany.ShowModal = mrOk then begin
        Fusr_pwd.user_name := fmSelectCompany._GetUsersName;
        cxTextEdit1.Text   := fmSelectCompany._GetUsersName;
        Query1.Close;
        Query1.SQL.Clear;
        Query1.SQL.Add('SELECT * FROM users WHERE (users_name=:users_name) AND (date_end is NULL)');
        Query1.Parameters.ParamByName('users_name').Value := Fusr_pwd.user_name;
        Query1.Open;

        Fusr_pwd.users_id := Query1.FieldByName('users_id').AsInteger;
        Fusr_pwd.user_cod := Query1.FieldByName('users_cod').AsString;
        Fusr_pwd.user_group_id := Query1.FieldByName('users_group_id').AsInteger;
      end else begin
        Application.MessageBox('Не выбрана организация!', 'ВНИМАНИЕ!', MB_ICONERROR or MB_OK);
        Fusr_pwd.users_id := -9;
        ModalResult := mrNone;
        exit;
      end;

      fmSelectCompany.Free;
    end;
    //--------------------------------


    // Пользовательские функции
    Query1.Close;
    Query1.SQL.Clear;
    Query1.SQL.Add('SELECT i.inf_obj_name AS func_name');
    Query1.SQL.Add('FROM inf_obj i ');
    Query1.SQL.Add('JOIN users_functions u');
    Query1.SQL.Add('ON (i.inf_obj_id = u.functions_id)');
    Query1.SQL.Add('AND (i.type_inf_id = 36)');
    Query1.SQL.Add('AND (u.users_id = ' + IntToStr(Fusr_pwd.users_id) + ')');
    Query1.Open;

    if not Query1.Locate('func_name', 'set_multi_connect', [loCaseInsensitive]) then begin
      if not CheckMultiConnect(Fusr_pwd.user_name) then begin
        Application.MessageBox('Обнаружен несанкционированный доступ в систему!'+#13+#10+'Сообщение отослано администратору сети!', 'ВНИМАНИЕ!', MB_ICONERROR or MB_OK);
        Fusr_pwd.users_id := -9;
        ModalResult := mrNone;
        exit;
      end;
    end;

    Query1.First;
    while not Query1.Eof do begin
      ClientDataSet1.Append;
      ClientDataSet1.FieldByName('func_name').AsString := Query1.FieldByName('func_name').AsString;
      ClientDataSet1.Post;
      Query1.Next;
    end;

    SP_session_num.Parameters.Refresh;
    SP_session_num.Parameters.ParamByName('@users_name' ).Value  := Fusr_pwd.user_name;
    SP_session_num.Parameters.ParamByName('@login_nt'   ).Value  := GetCurrentUserName();
    SP_session_num.Parameters.ParamByName('@users_image').Value  := Fusr_pwd.user_pass;
    SP_session_num.Parameters.ParamByName('@out_session').Value := null;
    SP_session_num.ExecProc;
    Fusr_pwd.session := SP_session_num.Parameters.ParamByName('@out_session').Value;

    Close;
  except
      Application.MessageBox('Неверные пользователь/пароль.','ВНИМАНИЕ',MB_OK);
    Fusr_pwd.users_id := -9;
  end;

end;

procedure TfmPassword.cxButton3Click(Sender: TObject);
begin
  cxPropertiesStore1.Active := false;
  Close;
end;

procedure TfmPassword.cxTextEdit1KeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then cxTextEdit2.SetFocus;
end;

procedure TfmPassword.cxTextEdit2KeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then cxButton1Click(nil);
end;

initialization
  dxInitialize;
finalization
  dxFinalize;

end.




