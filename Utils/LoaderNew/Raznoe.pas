unit Raznoe;

interface
uses
  Forms, Dialogs, SysUtils, ADODB, DB, Windows, Classes, StrUtils, Registry, dxmdaset, cxProgressBar, Variants, IniFiles;

type
  TRegisterAction = (rgSave, rgLoad);

function iif(param_if: boolean; param_true: Variant; param_false: Variant):Variant;
function GetVersion(file_name: string): string;
function GetVersion_old(file_name: string) : string;
function  StoreRegistryString(reg_action: TRegisterAction; reg_key: string; value_name: string; value_string: string): string;

procedure LoadPath(paht_name: string; memdata: TdxMemData);
procedure LoadPathSQL(memdata: TdxMemData);

function CopyWithProgress(sSource: string; sDest: string): Boolean;
function CopyWithProgressSQL(sSource: string; sDest: string): Boolean;

procedure CreateField(AMemData: TDataSet; AFieldName: string; AFieldType: TFieldType);
function GetPath(const Macro: string): string;
function CopyFileWithProgressBar2(TotalFileSize,
  TotalBytesTransferred,
  StreamSize,
  StreamBytesTransferred: LARGE_INTEGER;
  dwStreamNumber,
  dwCallbackReason: DWORD;
  hSourceFile,
  hDestinationFile: THandle;
  lpData: Pointer): DWORD; stdcall;

//const str_conn : string = 'Provider=SQLOLEDB.1;Password="325325""LBR";Persist Security Info=True;User ID=sa;Initial Catalog=asup;Data Source=87.255.201.245';
var
  str_conn : string;

implementation
     uses LoadMain;

function  StoreRegistryString(reg_action: TRegisterAction; reg_key: string; value_name: string; value_string: string): string;
var Reg : TRegistry;
begin
  Reg := TRegistry.Create;
  Reg.RootKey := HKEY_CURRENT_USER;
  Reg.OpenKey(reg_key, True);

  if reg_action =  rgSave then begin
    Reg.WriteString(value_name, value_string);
  end else begin
    if Reg.ValueExists(value_name) then value_string := Reg.ReadString(value_name);
  end;

  Reg.CloseKey;
  Reg.Free;

  Result := value_string;
end;


function GetVersion(file_name: string): string;
var
  VerInfoSize: DWORD;
  VerInfo: Pointer;
  VerValueSize: DWORD;
  VerValue: PVSFixedFileInfo;
  Dummy: DWORD;
begin
  VerInfoSize := GetFileVersionInfoSize(PChar(file_name), Dummy);
  if VerInfoSize = 0 then begin
    Result := 'not version';
  end else begin
    GetMem(VerInfo, VerInfoSize);
    GetFileVersionInfo(PChar(file_name), 0, VerInfoSize, VerInfo);
    VerQueryValue(VerInfo, '\', Pointer(VerValue), VerValueSize);

    Result := IntToStr(VerValue^.dwFileVersionMS shr 16);
    Result := Result + '.' + IntToStr(VerValue^.dwFileVersionMS and $FFFF);
    Result := Result + '.' + IntToStr(VerValue^.dwFileVersionLS shr 16);
    Result := Result + '.' + IntToStr(VerValue^.dwFileVersionLS and $FFFF);

    FreeMem(VerInfo, VerInfoSize);
  end;
end;

function GetVersion_old(file_name: string) : string;
var     dwVerHnd : DWORD;
   dwVerInfoSize : DWORD;
    lpstrVffInfo : Pointer;
               d : UINT;
              FI : PVSFixedFileInfo;
begin
  dwVerInfoSize := GetFileVersionInfoSize(PChar(file_name), dwVerHnd);  // = PChar(Application.ExeName)
  if dwVerInfoSize <> 0 then begin
    lpstrVffInfo := PChar(AllocMem(dwVerInfoSize - 1));
    GetFileVersionInfo(PChar(file_name), dwVerHnd, dwVerInfoSize, lpstrVffInfo);
    VerQueryValue(lpstrVffInfo,'\', Pointer(FI), d);
  //  ShowMessage(Format('%x',[FI.dwFileVersionMS]));
    result := Format('%x',[FI.dwFileVersionMS]);
  end else
    result := '';
end;


procedure LoadPath(paht_name: string; memdata: TdxMemData);
var
  sr: TSearchRec;
  FileAttrs: Integer;
  LTime: TFileTime;
  Systemtime1: TSystemtime;
  Systemtime2: TSystemtime;
  Systemtime3: TSystemtime;
begin
  FileAttrs := faDirectory;
  SysUtils.FindFirst(paht_name + '*.*', FileAttrs, sr);

  if (sr.Attr and faDirectory) = 0 then begin
    if LeftStr(sr.Name,1) <> '_' then begin
      memdata.Append;
      memdata.FieldByName('file_name').Value := sr.Name;
      memdata.FieldByName('file_size').Value := sr.Size;
      memdata.FieldByName('file_ver' ).Value := '';
      memdata.FieldByName('file_creation_time').Value := null;
      memdata.FieldByName('file_last_accessed').Value := null;
      memdata.FieldByName('file_last_written' ).Value := null;
      memdata.Post;
    end;
  end;

  while SysUtils.FindNext(sr)=0 do begin
    if (sr.Attr and faDirectory) = 0 then begin
      memdata.Append;
      memdata.FieldByName('file_name').Value := sr.Name;
      memdata.FieldByName('file_size').Value := sr.Size;
      memdata.FieldByName('file_ver' ).Value := GetVersion_old(paht_name + sr.Name);

      FileTimeToLocalFileTime( sr.FindData.ftCreationTime, LTime);
      FileTimeToSystemTime( LTime, SystemTime1 );

      FileTimeToLocalFileTime( sr.FindData.ftLastAccessTime, LTime);
      FileTimeToSystemTime( LTime, SystemTime2 );

      FileTimeToLocalFileTime( sr.FindData.ftLastWriteTime, LTime);
      FileTimeToSystemTime( LTime, SystemTime3 );

      memdata.FieldByName('file_creation_time').AsDateTime := SystemTimeToDateTime(SystemTime1);
      memdata.FieldByName('file_last_accessed').Value := SystemTimeToDateTime(SystemTime2);
      memdata.FieldByName('file_last_written' ).Value := SystemTimeToDateTime(SystemTime3);
      memdata.Post;
    end;
  end;
  SysUtils.FindClose(sr);
end;

procedure LoadPathSQL(memdata: TdxMemData);
var Q : TADOQuery;
begin
  Q := TADOQuery.Create(nil);
  Q.ConnectionString := str_conn;
  Q.SQL.Add('SELECT file_name, file_date, file_size, file_ver FROM ver_blob');
  Q.Open;

  while not Q.Eof do begin
    memdata.Append;
    memdata.FieldByName('file_name'         ).Value := Q.FieldByName('file_name').Value;
    memdata.FieldByName('file_size'         ).Value := Q.FieldByName('file_size').Value;
    memdata.FieldByName('file_ver'          ).Value := Q.FieldByName('file_ver').Value;
    memdata.FieldByName('file_last_written').AsDateTime := Q.FieldByName('file_date').AsDateTime;
    memdata.Post;
    Q.Next;
  end;

  Q.Free;
end;


function CopyFileWithProgressBar2(TotalFileSize,
  TotalBytesTransferred,
  StreamSize,
  StreamBytesTransferred: LARGE_INTEGER;
  dwStreamNumber,
  dwCallbackReason: DWORD;
  hSourceFile,
  hDestinationFile: THandle;
  lpData: Pointer): DWORD; stdcall;
begin
  if dwCallbackReason = CALLBACK_STREAM_SWITCH then TcxProgressBar(lpData).Properties.Max := TotalFileSize.QuadPart;

  TcxProgressBar(lpData).Position := TotalBytesTransferred.QuadPart;
  Application.ProcessMessages;
  Result := PROGRESS_CONTINUE;
end;

function CopyWithProgress(sSource: string; sDest: string): Boolean;
var FCancelled : BOOL;
begin
  FCancelled := False;
  Result     := CopyFileEx(PChar(sSource), PChar(sDest), @CopyFileWithProgressBar2, fmLoadMain.cxProgressBar2, @FCancelled, 0);
end;

function CopyWithProgressSQL(sSource: string; sDest: string): Boolean;
var      SP : TADOStoredProc;
 FCancelled : boolean;
  file_data : TArray<Byte>;
      hFile : THandle;
  num_write : Cardinal;
    newDateTime : TDateTime;

  f: TFileTime;
  s: TSystemTime;
begin
  FCancelled := False;

  SysUtils.DeleteFile(sDest);

  SP := TADOStoredProc.Create(nil);
  SP.ConnectionString := str_conn;
  SP.ProcedureName := 'sp_ver_BLOB_modify';
  SP.Parameters.Refresh;
  SP.Parameters.ParamByName('@file_name'  ).Value := sSource;
  SP.Parameters.ParamByName('@type_action').Value := 3;
  SP.Open;

  file_data := SP.FieldByName('file_blob').AsBytes;
  hFile:=CreateFile(PChar(sDest), Generic_Write, 0, nil, Create_Always, File_Attribute_Normal, 0);
  result := WriteFile(hFile, PAnsiChar(file_data)^, Length(file_data), num_write, nil);

      newDateTime := SP.FieldByName('file_date').AsDateTime;
//    FileSetDate(sDest, DateTimeToFileDate(newDateTime));

  DateTimeToSystemTime(newDateTime, S);
  SystemTimeToFileTime(S, F);
  LocalFileTimeToFileTime(F, F);
  SetFileTime(hFile, @f, @f, @f);

  CloseHandle(hFile);

  SP.Free;
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

function iif(param_if: boolean; param_true: Variant; param_false: Variant):Variant;
begin
  if param_if then Result := param_true
  else Result := param_false;
end;

end.
