program Update;

uses
  Midas,
  MidasLib,
  DBClient,
  Forms,
  Dialogs,
  SysUtils,
  ADODB,
  DB,
  Windows,
  Classes,
  StrUtils,
  Registry,
  Variants,
  IniFiles,
  DateUtils,
  tlhelp32,
  Vcl.ComCtrls,
  Vcl.ExtCtrls,
  WinInet,
  IdBaseComponent, IdComponent, Datasnap.Provider, IdFTPCommon,
  IdTCPConnection, IdTCPClient, IdExplicitTLSClientServerBase, IdFTP,
  LoadMain in 'LoadMain.pas' {fmLoadMain};

{$R *.res}

procedure LoadPathFTP(ftp_server: string; ftp_port: integer; ftp_users: string; ftp_password: string; Path: string; ClientDS: TClientDataSet);
var
  hNet, hFTP, hFind : HINTERNET;
               sRec : TWin32FindData;
           bSuccess : Boolean;
        rec_timeout : DWORD;
          str_error : string;
            LTime: TFileTime;
  Systemtime1: TSystemtime;
  Systemtime2: TSystemtime;
  Systemtime3: TSystemtime;
begin

  hNet  := nil;
  hFTP  := nil;
  hFind := nil;

  try
    // Открыть сессию
    hNet := InternetOpen('SFH_Search', INTERNET_OPEN_TYPE_PRECONFIG, nil, nil, 0);
    if hNet = nil then begin
      Raise Exception.CreateFmt('(1) Неудалось подключиться к ftp:' + ftp_server, []);
    end;

    rec_timeout := 1000; // 1 sec
    InternetSetOption(hNet, INTERNET_OPTION_CONNECT_TIMEOUT, @rec_timeout, sizeof(rec_timeout));
    // Соединение с ftp срвером
    hFTP := InternetConnect(hNet,
                            PChar(ftp_server),
                            ftp_port,
                            PChar(ftp_users),
                            PChar(ftp_password),
                            INTERNET_SERVICE_FTP, INTERNET_FLAG_PASSIVE, 0);
                            //INTERNET_SERVICE_FTP, 0, 0);
    if hFTP = nil then begin
      str_error := IntToStr(GetLastError) + ':' + SysErrorMessage(GetLastError);
      InternetCloseHandle(hNet);
      Raise Exception.CreateFmt('(2) Неудалось подключиться к ftp:' + ftp_server + ':' + str_error, []);
    end;

    rec_timeout := 30 * 1000; // 30 sec
    InternetSetOption(hNet, INTERNET_OPTION_CONNECT_TIMEOUT, @rec_timeout, sizeof(rec_timeout));

    // Изменить каталог
    bSuccess := FtpSetCurrentDirectory(hFTP, PChar(Path));

    if not bSuccess then begin
      InternetCloseHandle(hFTP);
      InternetCloseHandle(hNet);
      Raise Exception.CreateFmt('(3) Неудалось подключиться к ftp:' + ftp_server + ' каталог:' + Path, []);
    end;

    // Поиск файлов
    hFind := FtpFindFirstFile(hFTP, PWideChar('*.*'), sRec, 0, 0);
    if  hFind <> nil then begin
      repeat
        if sRec.dwFileAttributes <> FILE_ATTRIBUTE_DIRECTORY then begin
//          FileList.Add(sRec.cFileName);
//          sRec.ftCreationTime
//          sRec.nFileSizeLow

          ClientDS.Append;
          ClientDS.FieldByName('file_name').Value := UTF8ToString(string(sRec.cFileName));
          ClientDS.FieldByName('file_size').Value := sRec.nFileSizeLow;

          FileTimeToLocalFileTime( sRec.ftCreationTime, LTime);
          FileTimeToSystemTime( LTime, SystemTime1 );

          FileTimeToLocalFileTime( sRec.ftLastAccessTime, LTime);
          FileTimeToSystemTime( LTime, SystemTime2 );

          FileTimeToLocalFileTime( sRec.ftLastWriteTime, LTime);
          FileTimeToSystemTime( LTime, SystemTime3 );

          ClientDS.FieldByName('file_creation_time').Value := SystemTimeToDateTime(SystemTime1);
          ClientDS.FieldByName('file_last_accessed').Value := SystemTimeToDateTime(SystemTime2);
          ClientDS.FieldByName('file_last_written' ).Value := SystemTimeToDateTime(SystemTime3);
          ClientDS.Post;

        end;
      until not InternetFindNextFile(hFind, @sRec);
      InternetCloseHandle(hFind);
    end;

    if hFind <> nil then InternetCloseHandle(hFind);
    if hFTP  <> nil then InternetCloseHandle(hFTP);
    if hNet  <> nil then InternetCloseHandle(hNet);

  except
    on E: Exception do begin
      if hFind <> nil then InternetCloseHandle(hFind);
      if hFTP  <> nil then InternetCloseHandle(hFTP);
      if hNet  <> nil then InternetCloseHandle(hNet);
    end;
  end;
end;

procedure LoadPath(paht_name: string; ClientDS: TClientDataSet);
var
  sr: TSearchRec;
  FileAttrs: Integer;
  LTime: TFileTime;
  Systemtime1: TSystemtime;
  Systemtime2: TSystemtime;
  Systemtime3: TSystemtime;
  ver : string;
begin
  FileAttrs := faDirectory;
  SysUtils.FindFirst(paht_name + '*.*', FileAttrs, sr);

  if (sr.Attr and faDirectory) = 0 then begin
    if LeftStr(sr.Name,1) <> '_' then begin
      ClientDS.Append;
      ClientDS.FieldByName('file_name').Value := sr.Name;
      ClientDS.FieldByName('file_size').Value := sr.Size;
      ClientDS.FieldByName('file_creation_time').Value := null;
      ClientDS.FieldByName('file_last_accessed').Value := null;
      ClientDS.FieldByName('file_last_written' ).Value := null;
      ClientDS.Post;
    end;
  end;

  while SysUtils.FindNext(sr)=0 do begin
    if (sr.Attr and faDirectory) = 0 then begin
      ClientDS.Append;
      ClientDS.FieldByName('file_name').Value := sr.Name;
      ClientDS.FieldByName('file_size').Value := sr.Size;

      FileTimeToLocalFileTime( sr.FindData.ftCreationTime, LTime);
      FileTimeToSystemTime( LTime, SystemTime1 );

      FileTimeToLocalFileTime( sr.FindData.ftLastAccessTime, LTime);
      FileTimeToSystemTime( LTime, SystemTime2 );

      FileTimeToLocalFileTime( sr.FindData.ftLastWriteTime, LTime);
      FileTimeToSystemTime( LTime, SystemTime3 );

      ClientDS.FieldByName('file_creation_time').Value := SystemTimeToDateTime(SystemTime1);
      ClientDS.FieldByName('file_last_accessed').Value := SystemTimeToDateTime(SystemTime2);
      ClientDS.FieldByName('file_last_written' ).Value := SystemTimeToDateTime(SystemTime3);
      ClientDS.Post;
    end;
  end;
  SysUtils.FindClose(sr);
end;


function CopyFileFtp(ftp_server: string; ftp_port: integer; ftp_users: string; ftp_password: string; Path: string; FileName: string; NewFileName: string): boolean;
var IdFTP : TIdFTP;
begin
  try
    IdFTP := TIdFTP.Create(nil);
    IdFTP.Host     := ftp_server;
    IdFTP.Port     := ftp_port;
    IdFTP.Username := ftp_users;
    IdFTP.Password := ftp_password;
    IdFTP.TransferType := ftASCII;
    IdFTP.Passive  := True;
    IdFTP.Connect();
    IdFTP.ChangeDir(Path);
    fmLoadMain.ProgressBar2.Max := IdFTP.Size(FileName);
    IdFTP.OnWork := fmLoadMain.IdFTP1Work;
    IdFTP.Get(FileName, NewFileName, True);
    IdFTP.Disconnect;
    IdFTP.Free;
    Result := True;
  except
    on E: Exception do begin
      Result := False;
      IdFTP.Free;
    end;
  end;
end;

procedure CreateField(AMemData: TDataSet; AFieldName: string; AFieldType: TFieldType);
begin
  if (AMemData = nil) or (AFieldName = '') then  Exit;
  with AMemData.FieldDefs.AddFieldDef do begin
    Name := AFieldName;
    DataType := AFieldType;
    if AFieldType = ftString then Size := 200;
    CreateField(AMemData);
  end;
end;

function GetPath(const Macro: string): string;
var
  P: array[0..4096] of char;
begin
   Result := Macro;
   ExpandEnvironmentStrings( PChar( Result ), P, SizeOf( P ) );
   Result := P;
end;


function GetFileFtp(ftp_server: string; ftp_port: integer; ftp_users: string; ftp_password: string; Path: string; FileName: string; var fdata: string): boolean;
var IdFTP : TIdFTP;
    mem : TStringStream;
begin
  try
    mem := TStringStream.Create;

    IdFTP := TIdFTP.Create(nil);
    IdFTP.Host     := ftp_server;
    IdFTP.Port     := ftp_port;
    IdFTP.Username := ftp_users;
    IdFTP.Password := ftp_password;
    IdFTP.TransferType := ftASCII;
    IdFTP.Passive  := True;
    IdFTP.Connect();
    IdFTP.ChangeDir(Path);
    IdFTP.Get(FileName, mem);
    IdFTP.Disconnect;
    IdFTP.Free;
    fdata := mem.DataString;
    mem.Free;

    Result := True;
  except
    on E: Exception do begin
      Result := False;
      IdFTP.Free;
    end;
  end;
end;


var
  paht1 : string;
  paht2 : string;
  paht3 : string;

  ClientDS1, ClientDS2 : TClientDataSet;

  file_name  : string;

  set_open   : boolean;
  files_not_load : TStringList;
  dt : TDateTime;
  hSnapShot: THandle;
  ProcInfo : TProcessEntry32;
  process_list : TStringList;
  i, cnt : integer;

  update_ini : string;
  IniFiles   : TMemIniFile;
  strList    : TStringList;
begin
  Application.Initialize;
  Application.Title := 'Loader...';
  fmLoadMain := TfmLoadMain.Create(Application);
  Application.Run;

  set_open := True;

  if GetFileFtp('89.223.127.170', 21, 'Lis', '123456!q', '', 'update.ini', update_ini) = False then begin
    Application.MessageBox('Ошибка подключения к ftp!', 'ВНИМАНИЕ', MB_OK);
    Exit;
  end;

  strList := TStringList.Create;
  strList.Text := update_ini;
  IniFiles := TMemIniFile.Create('');
  IniFiles.SetStrings(strList);
  paht1 := IniFiles.ReadString('UPDATE', 'path_from', 'null');
  paht2 := IniFiles.ReadString('UPDATE', 'path_to',   'null');
  paht3 := IniFiles.ReadString('UPDATE', 'file_exe',  'null');
  paht1 := GetPath(paht1);
  paht2 := GetPath(paht2);
  paht3 := GetPath(paht3);
  IniFiles.Free;
  strList.Free;


  if (paht1='null') or (paht2='null') then begin
    Application.MessageBox('Не определенны пути.', 'ВНИМАНИЕ', MB_OK);
    Exit;
  end;

  if (paht3='null') then begin
    set_open := False;
  end;

  if not DirectoryExists(paht2) then ForceDirectories(paht2);

  fmLoadMain.Label1.Caption := 'Обновление программы...';
  fmLoadMain.Show;
  fmLoadMain.Update;

  ClientDS1 := TClientDataSet.Create(nil);
  ClientDS1.FieldDefs.Add('file_name', ftString, 200);
  ClientDS1.FieldDefs.Add('file_size', ftString, 200);
  ClientDS1.FieldDefs.Add('file_creation_time', ftString, 200);
  ClientDS1.FieldDefs.Add('file_last_accessed', ftString, 200);
  ClientDS1.FieldDefs.Add('file_last_written' , ftString, 200);
  ClientDS1.FieldDefs.Add('type_action', ftInteger);
  ClientDS1.CreateDataSet;
  ClientDS1.LogChanges := False;

  ClientDS2 := TClientDataSet.Create(nil);
  ClientDS2.FieldDefs.Add('file_name', ftString, 200);
  ClientDS2.FieldDefs.Add('file_size', ftString, 200);
  ClientDS2.FieldDefs.Add('file_creation_time', ftString, 200);
  ClientDS2.FieldDefs.Add('file_last_accessed', ftString, 200);
  ClientDS2.FieldDefs.Add('file_last_written' , ftString, 200);
  ClientDS2.FieldDefs.Add('type_action', ftInteger);
  ClientDS2.CreateDataSet;
  ClientDS2.LogChanges := False;

  LoadPathFTP('89.223.127.170', 21, 'Lis', '123456!q', '/', ClientDS1);   // список файлов с сервера
  LoadPath   (paht2, ClientDS2);   // локальные файлы

  ClientDS2.First;
  while not ClientDS2.Eof do begin
    if ClientDS1.Locate('file_name', ClientDS2.FieldByName('file_name').Value, []) then begin
        if  (ClientDS2.FieldByName('file_size').Value <> ClientDS1.FieldByName('file_size').Value) or
            (ClientDS2.FieldByName('file_last_written' ).Value <> ClientDS1.FieldByName('file_last_written' ).Value) then begin

            ClientDS2.Edit;
            ClientDS2.FieldByName('type_action').Value := 1;
            ClientDS2.Post;
        end else begin
            ClientDS2.Edit;
            ClientDS2.FieldByName('type_action').Value := 0;
            ClientDS2.Post;
        end;
    end else begin
      ClientDS2.Edit;
      ClientDS2.FieldByName('type_action').Value := 2;
      ClientDS2.Post;
    end;

    ClientDS2.Next;
  end;

  ClientDS1.First;
  while not ClientDS1.Eof do begin
    if not ClientDS2.Locate('file_name', ClientDS1.FieldByName('file_name').Value, []) then begin
      ClientDS2.Append;
      ClientDS2.FieldByName('file_name').Value := ClientDS1.FieldByName('file_name').Value;
      ClientDS2.FieldByName('file_size').Value := ClientDS1.FieldByName('file_size').Value;
      ClientDS2.FieldByName('file_creation_time').Value := ClientDS1.FieldByName('file_creation_time').Value;
      ClientDS2.FieldByName('file_last_accessed').Value := ClientDS1.FieldByName('file_last_accessed').Value;
      ClientDS2.FieldByName('file_last_written' ).Value := ClientDS1.FieldByName('file_last_written' ).Value;
      ClientDS2.FieldByName('type_action').Value := 1;
      ClientDS2.Post;
    end;
    ClientDS1.Next;
  end;

  ClientDS2.First;
  cnt := 0;
  while not ClientDS2.Eof do begin
    if ClientDS2.FieldByName('type_action').Value <> 0 then
      cnt := cnt + 1;
    ClientDS2.Next;
  end;

  fmLoadMain.ProgressBar1.Max := cnt;

  ClientDS2.First;
  while not ClientDS2.Eof do begin
    file_name := ClientDS2.FieldByName('file_name').AsString;
    fmLoadMain.Label1.Caption := 'Файл ' + file_name +' ...';
    Application.ProcessMessages;

    if ClientDS2.FieldByName('type_action').Value = 1 then begin
      if CopyFileFtp('89.223.127.170', 21, 'Lis', '123456!q', '', file_name, paht2 + file_name) = False then begin
        Application.MessageBox(PChar('Ошибка при копирование файла ' + file_name), 'ВНИМАНИЕ', MB_OK);
        set_open := False;
      end;
    end;

    if ClientDS2.FieldByName('type_action').Value = 2 then begin
      SysUtils.DeleteFile(paht2 + file_name);
    end;

    fmLoadMain.ProgressBar1.Position := fmLoadMain.ProgressBar1.Position + 1;
    ClientDS2.Next;
  end;


  fmLoadMain.Close;
  fmLoadMain.Free;
  ClientDS1.Free;
  ClientDS2.Free;
  if set_open then WinExec(PAnsiChar(AnsiString(paht2 + paht3)), 0);
end.
