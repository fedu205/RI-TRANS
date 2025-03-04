unit ThreadFiles;

interface

uses  RailTariff_TLB,
      TariffSupportFunctions,
      Default,
      psAPI,     StrUtils,
      Soap.InvokeRegistry, Soap.Rio, Soap.SOAPHTTPClient,
      System.Types, Soap.XSBuiltIns, Soap.SOAPHTTPTrans,
      Classes, Variants, ActiveX, DateUtils, SysUtils, Dialogs, DB,
      ADODB, Graphics, ComObj, Windows, DBClient, XMLDoc, XMLIntf, Math, WinInet,
      IdBaseComponent, IdComponent, Forms, Datasnap.Provider, IdFTPCommon,
      IdTCPConnection, IdTCPClient, IdExplicitTLSClientServerBase, IdFTP;

type
  TThreadFiles = class(TThread)
  private
  protected
    Fconnect_str  : string; // Строка соединения с SQL
    Fftp_list_xml : string; // Список ftp в формате ClientDataSet.XMLData

    // Функции для работы с ftp
    function  SearchFiles  (folder_name: string; format_cod: string; ftp_server: string; ftp_port: integer; ftp_users: string; ftp_password: string; users_group_id: integer; set_load: boolean; set_delete: boolean): boolean;
    function  ListFileFtp  (ftp_server: string; ftp_port: integer; ftp_users: string; ftp_password: string; Path: string; FileList: TStrings): boolean;
    function  CopyFileFtp  (ftp_server: string; ftp_port: integer; ftp_users: string; ftp_password: string; Path: string; FileName: string; NewFileName: string): boolean;
    function  PutFileFtp   (ftp_server: string; ftp_port: integer; ftp_users: string; ftp_password: string; Path: string; FileName: string; SourceFileName: string): boolean;
    function  DeleteFileFtp(ftp_server: string; ftp_port: integer; ftp_users: string; ftp_password: string; Path: string; FileName: string): boolean;

    function  CopyFileFtpZip(ftp_server: string; ftp_port: integer; ftp_users: string; ftp_password: string; Path: string; FileName: string; NewFileName: string): boolean;
    procedure SyncZIP();


    function SaveDislXML (files_track_id: integer): boolean; // Сохранение дислокации XML
    function SaveDislSOAP(query_id: integer): boolean; // Сохранение дислокации XML
    function SaveDislExcel(files_track_id: integer): boolean; // Сохранение дислокации XML
    function SavePas(files_track_id: integer): boolean;
    function SaveRem(files_track_id: integer): boolean;
    function SaveTeh(files_track_id: integer): boolean;
    function SaveRun(files_track_id: integer): boolean;
    function SaveRunEx(files_track_id: integer): boolean;
    function CalcDist(): integer;

    procedure SearchFilesSOAP();
    procedure ParserSOAPFromDB();   // поиск не загруженных файлов и загрузка

    procedure SearchFilesFTP();      // поиск данных на ftp
    procedure ParserFilesFromDB();   // поиск не загруженных файлов и загрузка
    function  RecalcTrip(): integer; // пересчет рейсов. Возвращает кол-во пересчитанных рейсов
    procedure RecalcStat();          // пересчет стат таблицы
    procedure ExportToFact(users_group_id : integer); // скопировать рейсы в факт

    procedure PutVagonListFTP();    // передача списка вагонов

    procedure MonitorOperClear;
    procedure MonitorOperInsert(oper_name: string);
    procedure MonitorOperUpdate(oper_max: integer; oper_progress: integer);
    procedure MonitorOperEnd   (oper_result: string);

    procedure UpdateStatusFTP(ftp_id: integer; res: boolean); // Обновить статус ftp
    procedure UpdateStatusFiles(files_track_id: integer; files_status: string; files_load_date_begin: TDateTime; files_load_date_end: TDateTime; set_error: boolean; files_rows_count: integer; files_rows_load: integer; duration_parser: integer; duration_infobj: integer);
    procedure UpdateFilesList(); // Обновить список файлов
    procedure MonitorSetImage(image_index: integer);    // Изменить рисунок
    procedure MonitorSetCaption1(log_caption: string);  // Изменить основной комментарий
    procedure MonitorSetCaption2(log_caption: string);  // Изменить дополнительный комментарий
    procedure SaveLogError(error_cod: string; function_name: string; error_message: string; error_comment: string);
    procedure SaveLogMem(m1: integer; m2: integer; m3: integer; m4: integer; m5: integer; m6: integer; m7: integer;
                                 m8: integer; m9: integer; m10: integer; m11: integer; m12: integer; m13: integer; m14: integer);

    procedure SaveLog(cod: string; function_name: string; comment: string; duration: integer);

    function  GetProcedureFromRes(procedure_name: string): string;
    procedure LisSleep();

    function CopyCod(s: string): string;

    procedure Execute; override;
  public
    constructor Create(connect_str: string; ftp_list_xml: string); virtual;
  end;

function LZHPack(str_data: TArray<Byte>; size: integer): variant;
function LZHUnPack(str_data: TArray<Byte>): variant;

implementation

uses LoadMain, Raznoe;

function DateToSQL(value :TDateTime): string;
begin
  result := ''''+FormatDateTime('yyyymmdd',value)+'''';
end;

function DataXMLToSQL(ClientDS: TClientDataSet): string;
var   AStream : TStringStream;
begin
  AStream := TStringStream.Create;
  ClientDS.SaveToStream(AStream, dfXML);
  Result := AStream.DataString;
  AStream.Free;
end;


constructor TThreadFiles.Create(connect_str: string; ftp_list_xml: string);
begin
  inherited Create(True);
  Fconnect_str  := connect_str;
  Fftp_list_xml := ftp_list_xml;
  FreeOnTerminate := True;

  Resume;
end;


function TThreadFiles.SearchFiles(folder_name: string; format_cod: string; ftp_server: string; ftp_port: integer; ftp_users: string; ftp_password: string; users_group_id: integer; set_load: boolean; set_delete: boolean): boolean;
var      connect : TADOConnection;
           Q2, Q : TADOQuery;
    SP, SP2, SP3 : TADOStoredProc;
      files_list : TStringList;
               i : integer;
       files_xml : string;
         AStream : TBytesStream;
            s,s1 : TStringStream;
                     fd : TDateTime;
            ss1, ss2 : string;
     exWks, exApp : Variant;
begin
  Q   := nil;
  Q2  := nil;
  SP  := nil;
  SP2 := nil;
  SP3 := nil;
  connect := nil;
  files_list := nil;
  try
    try
      connect := TADOConnection.Create(nil);
      connect.ConnectionString  := Fconnect_str;
      connect.LoginPrompt       := False;
      connect.KeepConnection    := False;
      connect.Open;

      Q2 := TADOQuery.Create(nil);
      Q2.Connection := connect;

      Q := TADOQuery.Create(nil);
      Q.Connection := connect;
      Q.SQL.Add('SELECT * FROM inf_obj WHERE type_inf_id = 130 AND inf_obj_cod = ''' + format_cod + '''');
      Q.Open;

      SP := TADOStoredProc.Create(nil);
      SP.Connection := connect;
      SP.ProcedureName := 'sp_fact_track_files_modify';
      SP.Parameters.Refresh;

      SP3 := TADOStoredProc.Create(nil);
      SP3.Connection := connect;
      SP3.ProcedureName := 'sp_fact_track_files_modify';
      SP3.Parameters.Refresh;

      SP2 := TADOStoredProc.Create(nil);
      SP2.Connection := connect;
      SP2.ProcedureName := 'sp_fact_track_files_modify';
      SP2.Parameters.Refresh;

      MonitorSetCaption2('Опрос FTP:' + folder_name);

      files_list := TStringList.Create;
      if ListFileFtp(ftp_server, ftp_port, ftp_users, ftp_password, folder_name + '/', files_list) = False then begin
        // Переменные будут освобождены в finally !!
        Result := False;
        Exit;
      end;

      files_xml := '<FILES_NAME>';
      for i:=0 to files_list.Count-1 do files_xml := files_xml + '<ROW id="' + IntToStr(i) + '" files_name="' + files_list.Strings[i] + '"/>';
      files_xml := files_xml + '</FILES_NAME>';

      SP.Close;
      SP.Parameters.Refresh;
      SP.Parameters.ParamByName('@files_track_id' ).Value := -9;
      SP.Parameters.ParamByName('@type_action'    ).Value := 101;
      SP.Parameters.ParamByName('@users_group_id' ).Value := users_group_id;
      SP.Parameters.ParamByName('@files_format_id').Value := Q.FieldByName('inf_obj_id').Value;
      SP.Parameters.ParamByName('@files_name_xml' ).Value := files_xml;
      SP.Open;
      while not SP.Eof do begin


        MonitorSetCaption2('Сохранение файла:' + SP.FieldByName('files_name').AsString);


        exApp := CreateOleObject('Excel.Application');
        exApp.Workbooks.Open(folder_name + '\' + SP.FieldByName('files_name').AsString);
        exWks := exApp.ActiveWorkbook.WorkSheets[1];


        ss1 := exWks.Range['A2'].Value;
        ss1 := RightStr(ss1,5);

        ss2 := exWks.Range['A2'].Value;
        ss2 := LeftStr(ss2,10);
        fd := EncodeDatetime (StrToInt(copy(ss2, 7, 4)), StrToInt(copy(ss2, 4, 2)), StrToInt(copy(ss2, 1, 2)), StrToInt(copy(ss1, 1, 2)), StrToInt(copy(ss1, 4, 2)), 0, 0);


        exApp.Quit;
        exWks := Null; exApp := Null;
        VarClear(exWks); VarClear(exApp);


        SP2.Parameters.Refresh;
        SP2.Parameters.ParamByName('@files_track_id' ).Value := null;
        SP2.Parameters.ParamByName('@type_action'    ).Value := 0;
        SP2.Parameters.ParamByName('@users_group_id' ).Value := users_group_id;
        SP2.Parameters.ParamByName('@files_priority' ).Value := 1;
        SP2.Parameters.ParamByName('@files_format_id').Value := Q.FieldByName('inf_obj_id').Value;
        SP2.Parameters.ParamByName('@files_date'     ).Value := fd;
        SP2.Parameters.ParamByName('@files_name'     ).Value := SP.FieldByName('files_name').AsString;
        SP2.Parameters.ParamByName('@set_ftp'        ).Value := 1;
        if set_load = False then begin
          SP2.Parameters.ParamByName('@set_error').Value := True;
          SP2.Parameters.ParamByName('@files_status').Value := 'Файл не загружается.';
        end;

        AStream := TBytesStream.Create;
        AStream.LoadFromFile(folder_name + '\' + SP.FieldByName('files_name').AsString);
        SP2.Parameters.ParamByName('@files_size').Value := AStream.Size;
        SP2.Parameters.ParamByName('@doc_image' ).Value := LZHPack(AStream.Bytes, AStream.Size);
        AStream.Free;
        SP2.ExecProc;

        SP.Next;
      end;

      if set_delete = True then begin
        SP3.Close;
        SP3.Parameters.Refresh;
        SP3.Parameters.ParamByName('@files_track_id' ).Value := -9;
        SP3.Parameters.ParamByName('@type_action'    ).Value := 102;
        SP3.Parameters.ParamByName('@users_group_id' ).Value := users_group_id;
        SP3.Parameters.ParamByName('@files_name_xml' ).Value := files_xml;
        SP3.Open;
        while not SP3.Eof do begin
          MonitorSetCaption2('Удаление файлов:' + folder_name);

          if not DeleteFileFtp(ftp_server, ftp_port, ftp_users, ftp_password, folder_name + '/', SP3.FieldByName('files_name').AsString) then begin
            Result := False;
            Exit;
          end;

          SP3.Next;
        end;
      end;

      Result := True;
    except
      on E: Exception do begin
        SaveLogError('500', 'SearchFiles', E.Message, 'Ошибка поиска новых файлов на ftp:' + ftp_server);
        Result := False;
      end;
    end;
  finally
    try
      Q.Free;
      Q2.Free;
      SP.Free;
      SP2.Free;
      SP3.Free;
      connect.Free;
      files_list.Free;
    except
      on E: Exception do SaveLogError('501', 'SearchFiles', E.Message, 'Ошибка освобождения памяти (Функция Free)');
    end;
  end;
end;

procedure TThreadFiles.PutVagonListFTP();    // передача списка вагонов
var ClientDS : TClientDataSet;
    connect : TADOConnection;
    Q : TADOQuery;
    sp_fact_track_files_modify : TADOStoredProc;
    sp_files_error : TADOStoredProc;
    files_track_id : integer;
    files_name : string;
    source_name : string;
    hFile : THandle;
    file_data : RawByteString;
    data : TArray<Byte>;
    fd : TStringStream;
    num_write : Cardinal;
    res, file_put : boolean;
begin
  try
    try
      MonitorOperInsert('Передача списка вагонов');
      MonitorSetCaption1('Передача списка вагонов...');
      MonitorSetCaption2('');

      ClientDS := TClientDataSet.Create(nil);
      ClientDS.XMLData := Fftp_list_xml;
      ClientDS.First;

      connect := TADOConnection.Create(nil);
      connect.ConnectionString := Fconnect_str;
      connect.KeepConnection   := False;
      connect.LoginPrompt      := False;
      connect.Open;

      sp_fact_track_files_modify := TADOStoredProc.Create(nil);
      sp_fact_track_files_modify.Connection := connect;
      sp_fact_track_files_modify.ProcedureName := 'sp_fact_track_files_modify';
      sp_fact_track_files_modify.Parameters.Refresh;

      // Получение списка вагонов
      Q := TADOQuery.Create(nil);
      Q.Connection := connect;

      while not ClientDS.Eof do begin
        if ClientDS.FieldByName('format_cod').AsString = '99999' then begin

          // Получение списка вагонов
          // Т.к. списки заменяемые, то в случае обнаружения нескольких файлов - мы передаем только последний, а остальные отмечаем как замененные
          Q.Close;
          Q.SQL.Clear;
          Q.SQL.Add('SELECT files_track_id, inf_obj_cod as format_files, files_name, inf_obj_name as format_files_name, view_owner_global.users_group_id');
          Q.SQL.Add('FROM	  fact_track_files inner join inf_obj on fact_track_files.files_format_id = inf_obj.inf_obj_id');
          Q.SQL.Add('inner join view_owner_global ');
          Q.SQL.Add('on fact_track_files.files_track_id = view_owner_global.global_id ');
          Q.SQL.Add('and view_owner_global.users_group_id = ' + ClientDS.FieldByName('users_group_id').AsString); // обрабатываем только файлы нашей группы
          Q.SQL.Add('WHERE	isnull(set_error, 0) = 0');
          Q.SQL.Add('		    AND files_rows_count is null');
          Q.SQL.Add('		    AND inf_obj_cod in (''99999'')');
          Q.SQL.Add('ORDER BY files_date DESC'); // обратная сортировка (последний файл передадим - остальные отметим как ненужные)
          Q.Open;

          while not Q.Eof do begin
            files_track_id := Q.FieldByName('files_track_id').AsInteger;
            files_name := Q.FieldByName('files_name').AsString;

            MonitorSetCaption2('Обработка файла: ' + files_name);

            if Q.RecNo = 1 then begin
              // передаем файл на ftp
              // Ищем файл
              sp_fact_track_files_modify.Close;
              sp_fact_track_files_modify.Parameters.ParamByName('@files_track_id').Value := files_track_id;
              sp_fact_track_files_modify.Parameters.ParamByName('@type_action'   ).Value := 10;
              sp_fact_track_files_modify.Open;
              data  := LZHUnPack(sp_fact_track_files_modify.FieldByName('doc_image').AsBytes);
              fd    := TStringStream.Create(data);
              file_data := fd.DataString;
              fd.Free;

              files_name := sp_fact_track_files_modify.FieldByName('files_name').AsString;

              // Начало обработки
              sp_fact_track_files_modify.Close;
              sp_fact_track_files_modify.Parameters.ParamByName('@files_track_id'  ).Value := files_track_id;
              sp_fact_track_files_modify.Parameters.ParamByName('@type_action'     ).Value := 3;
              sp_fact_track_files_modify.Parameters.ParamByName('@files_rows_count').Value := 1;
              sp_fact_track_files_modify.ExecProc;

              // передача файла на ftp
              source_name := 'c:\disl_temp\' + files_name;
              hFile:=CreateFile(PChar(source_name), Generic_Write, 0, nil, Create_Always, File_Attribute_Normal, 0);
              WriteFile(hFile, PAnsiChar(file_data)^, Length(file_data), num_write, nil);
              CloseHandle(hFile);

              file_put := false;

              res := PutFileFtp(ClientDS.FieldByName('ftp_server').AsString,
                                ClientDS.FieldByName('ftp_port').AsInteger,
                                ClientDS.FieldByName('ftp_users').AsString,
                                ClientDS.FieldByName('ftp_password').AsString,
                                ClientDS.FieldByName('ftp_folder').AsString,
                                files_name,
                                source_name);

              UpdateStatusFTP(ClientDS.FieldByName('id').AsInteger, res);

              file_put := file_put or res; // отмечаем, если файл был передан

              DeleteFile(PChar(source_name));

              // если файл был передан
              if file_put then begin
                // Конец обработки
                sp_fact_track_files_modify.Close;
                sp_fact_track_files_modify.Parameters.ParamByName('@files_track_id'  ).Value := files_track_id;
                sp_fact_track_files_modify.Parameters.ParamByName('@type_action'     ).Value := 5;
                sp_fact_track_files_modify.Parameters.ParamByName('@files_rows_load' ).Value := 1;
                sp_fact_track_files_modify.ExecProc;

                // Замена статуса
                sp_fact_track_files_modify.Close;
                sp_fact_track_files_modify.Parameters.ParamByName('@files_track_id'  ).Value := files_track_id;
                sp_fact_track_files_modify.Parameters.ParamByName('@type_action'     ).Value := 9;
                sp_fact_track_files_modify.Parameters.ParamByName('@files_status'    ).Value := 'Передан';
                sp_fact_track_files_modify.ExecProc;

                UpdateStatusFiles(files_track_id, 'Передан', Now, Now, True, 1, 1, 0, 0);
              end else begin
                sp_files_error := TADOStoredProc.Create(nil);
                sp_files_error.ConnectionString := Fconnect_str;
                sp_files_error.ProcedureName := 'sp_fact_track_files_modify';
                sp_files_error.Parameters.Refresh;
                sp_files_error.Parameters.ParamByName('@files_track_id').Value := files_track_id;
                sp_files_error.Parameters.ParamByName('@type_action'   ).Value := 20;
                sp_files_error.Parameters.ParamByName('@files_status'  ).Value := 'Ошибка передачи файла';
                sp_files_error.ExecProc;

                UpdateStatusFiles(files_track_id, 'Ошибка: ' + 'Ошибка передачи файла', Now, Now, True, 1, 1, 0, 0);

                MonitorOperEnd('Ошибка');

                SaveLogError('9000', 'PutVagonList', 'Ошибка передачи файла', 'Передача файла ' + files_name);
              end;

            end else begin
              // отмечаем файл, как устаревший
              // Сам файл не передаем - просто меняем у него статусы
              // Начало обработки
              sp_fact_track_files_modify.Close;
              sp_fact_track_files_modify.Parameters.ParamByName('@files_track_id'  ).Value := files_track_id;
              sp_fact_track_files_modify.Parameters.ParamByName('@type_action'     ).Value := 3;
              sp_fact_track_files_modify.Parameters.ParamByName('@files_rows_count').Value := -1;
              sp_fact_track_files_modify.ExecProc;

              // Конец обработки
              sp_fact_track_files_modify.Close;
              sp_fact_track_files_modify.Parameters.ParamByName('@files_track_id'  ).Value := files_track_id;
              sp_fact_track_files_modify.Parameters.ParamByName('@type_action'     ).Value := 5;
              sp_fact_track_files_modify.Parameters.ParamByName('@files_rows_load' ).Value := -1;
              sp_fact_track_files_modify.ExecProc;

              // Замена статуса
              sp_fact_track_files_modify.Close;
              sp_fact_track_files_modify.Parameters.ParamByName('@files_track_id'  ).Value := files_track_id;
              sp_fact_track_files_modify.Parameters.ParamByName('@type_action'     ).Value := 9;
              sp_fact_track_files_modify.Parameters.ParamByName('@files_status'    ).Value := 'Заменен более поздним файлом';
              sp_fact_track_files_modify.ExecProc;

              UpdateStatusFiles(files_track_id, 'Заменен более поздним файлом', Now, Now, True, -1, -1, 0, 0);
            end;

            Q.Next;
          end;

          MonitorOperEnd('Завершено');

        end;
        ClientDS.Next;
      end;

    except
      on E: Exception do begin
        sp_files_error := TADOStoredProc.Create(nil);
        sp_files_error.ConnectionString := Fconnect_str;
        sp_files_error.ProcedureName := 'sp_fact_track_files_modify';
        sp_files_error.Parameters.Refresh;
        sp_files_error.Parameters.ParamByName('@files_track_id').Value := files_track_id;
        sp_files_error.Parameters.ParamByName('@type_action'   ).Value := 20;
        sp_files_error.Parameters.ParamByName('@files_status'  ).Value := E.Message;
        sp_files_error.ExecProc;

        UpdateStatusFiles(files_track_id, 'Ошибка: ' + E.Message, Now, Now, True, 1, 1, 0, 0);

        MonitorOperEnd('Ошибка');

        SaveLogError('9000', 'PutVagonList', E.Message, 'Передача файла ' + files_name);
      end;
    end;
  finally
    connect.Free;
    Q.Free;
    sp_fact_track_files_modify.Free;
    ClientDS.Free;
  end;
end;

procedure TThreadFiles.SearchFilesFTP();
var ClientDS : TClientDataSet;
         res : boolean;
begin
  try
    try
      MonitorSetCaption1('Опрос ftp...');
      ClientDS := TClientDataSet.Create(nil);
      ClientDS.XMLData := Fftp_list_xml;
      ClientDS.First;
      while not ClientDS.Eof do begin
        if ClientDS.FieldByName('format_cod').AsString <> '99999' then begin

          MonitorSetCaption2('Опрос ftp:' + ClientDS.FieldByName('ftp_folder').AsString + ' (' + ClientDS.FieldByName('format_name').AsString + ')');

          MonitorOperInsert('Опрос ftp:' + ClientDS.FieldByName('ftp_folder').AsString + ' (' + ClientDS.FieldByName('format_name').AsString + ')');
          res := SearchFiles(ClientDS.FieldByName('ftp_folder').AsString,
                             ClientDS.FieldByName('format_cod').AsString,
                             ClientDS.FieldByName('ftp_server').AsString,
                             ClientDS.FieldByName('ftp_port').AsInteger,
                             ClientDS.FieldByName('ftp_users').AsString,
                             ClientDS.FieldByName('ftp_password').AsString,
                             ClientDS.FieldByName('users_group_id').AsInteger,
                             ClientDS.FieldByName('set_load').AsBoolean,
                             ClientDS.FieldByName('set_delete').AsBoolean);

          UpdateStatusFTP(ClientDS.FieldByName('id').AsInteger, res);

          if res then
            MonitorOperEnd('Завершено')
          else
            MonitorOperEnd('Ошибка');

        end;

        ClientDS.Next;
      end;

    except
      on E: Exception do begin
        SaveLogError('600', 'SearchFilesFTP', E.Message, 'Ошибка опроса ftp.');
      end;
    end;
  finally
    try
      ClientDS.Free;
    except
    end;
  end;
end;

function GetXMLTagValueString(str_xml: string; str_tag: string) : variant;
var pos1, pos2 : integer;
begin
  try
    pos1 := Pos(str_tag, str_xml, 1);
    if pos1 <> 0 then begin
      pos1 := pos1 + Length(str_tag) + 2;
      pos2 := Pos('"', str_xml, pos1);
      if (pos2 <> 0) and (pos2 <> pos1) then begin
        Result := MidStr(str_xml, pos1, pos2-pos1);
        Result := ReplaceStr(Result, '&quot;', '"');
      end else
        Result := Null;
    end else begin
      Result := Null;
    end;
  except
    Result := Null;
  end;
end;

function GetXMLTagValueDatetime(str_xml: string; str_tag: string) : variant;
var pos1, pos2 : integer;
            s1 : string;
             d : TDateTime;
begin
  try
    pos1 := Pos(str_tag, str_xml, 1);
    if pos1 <> 0 then begin
      pos1 := pos1 + Length(str_tag) + 2;
      pos2 := Pos('"', str_xml, pos1);

      if (pos2 <> 0) and (pos2 <> pos1) then begin

        s1 := MidStr(str_xml, pos1, pos2-pos1);
        if TryEncodeDateTime(StrToInt(MidStr(s1,  1, 4)), StrToInt(MidStr(s1,  6, 2)), StrToInt(MidStr(s1,  9, 2)),
                             StrToInt(MidStr(s1, 12, 2)), StrToInt(MidStr(s1, 15, 2)), StrToInt(MidStr(s1, 18, 2)), 0, d) then begin
          Result := d;
        end else begin
          Result := Null;
        end;


      end else
        Result := Null;
    end else begin
      Result := Null;
    end;
  except
    Result := Null;
  end;
end;


function TThreadFiles.SaveRem(files_track_id: integer): boolean;
var    str_list : TStringList;
              i : integer;
   Client_Vagon : TClientDataSet;
             SP : TADOStoredProc;
        connect : TADOConnection;
            str : string;
       file_pos : integer;
 file_load_date : TDateTime;
      file_data : RawByteString;
           data : TArray<Byte>;
             fd : TStringStream;
     files_date : TDateTime;
       users_id : integer;
     files_name : string;
 sp_files_error : TADOStoredProc;

sp_fact_track_files_modify : TADOStoredProc;

begin
  try
    try
      Client_Vagon := TClientDataSet.Create(nil);
      Client_Vagon.FieldDefs.Add('fact_tech_id', ftAutoInc);
      Client_Vagon.FieldDefs.Add('num_vagon', ftInteger);
      Client_Vagon.FieldDefs.Add('block_p', ftString, 1);
      Client_Vagon.FieldDefs.Add('type_repair', ftString, 2);
      Client_Vagon.FieldDefs.Add('depo', ftString, 4);
      Client_Vagon.FieldDefs.Add('num_notice_23', ftString, 6);
      Client_Vagon.FieldDefs.Add('road', ftString, 2);
      Client_Vagon.FieldDefs.Add('station_detaching', ftString, 6);
      Client_Vagon.FieldDefs.Add('breakage', ftString, 9);
      Client_Vagon.FieldDefs.Add('last_depo_place', ftString, 4);
      Client_Vagon.FieldDefs.Add('last_cap_place', ftString, 4);
      Client_Vagon.FieldDefs.Add('num_notice_36', ftString, 6);
      Client_Vagon.FieldDefs.Add('modernization', ftString, 40);
      Client_Vagon.FieldDefs.Add('file_load_name', ftString, 100);
      Client_Vagon.FieldDefs.Add('file_load_date', ftDate);
      Client_Vagon.FieldDefs.Add('users_id', ftInteger);
      Client_Vagon.FieldDefs.Add('type_repair_id', ftInteger);
      Client_Vagon.FieldDefs.Add('station_detaching_id', ftInteger);
      Client_Vagon.FieldDefs.Add('depo_id', ftInteger);
      Client_Vagon.FieldDefs.Add('road_id', ftInteger);
      Client_Vagon.FieldDefs.Add('last_depo_place_id', ftInteger);
      Client_Vagon.FieldDefs.Add('last_cap_place_id', ftInteger);
      Client_Vagon.FieldDefs.Add('breakage_id', ftInteger);
      Client_Vagon.FieldDefs.Add('date_breakage', ftString, 20);
      Client_Vagon.FieldDefs.Add('date_repare_end', ftString, 20);
      Client_Vagon.FieldDefs.Add('date_repare_begin', ftString, 20);
      Client_Vagon.FieldDefs.Add('date_build', ftString, 20);
      Client_Vagon.FieldDefs.Add('date_last_depo_place', ftString, 20);
      Client_Vagon.FieldDefs.Add('date_cap_place', ftString, 20);
      Client_Vagon.FieldDefs.Add('next_date_repair', ftDate);
      Client_Vagon.FieldDefs.Add('node_registration', ftString, 100);
      Client_Vagon.CreateDataSet;
      Client_Vagon.LogChanges := False;

      connect := TADOConnection.Create(nil);
      connect.ConnectionString := Fconnect_str;
      connect.KeepConnection   := False;
      connect.LoginPrompt      := False;
      connect.Open;

      SP := TADOStoredProc.Create(nil);
      SP.Connection := Connect;
      SP.ProcedureName := 'sp_fact_tech_modify;1';
      SP.Parameters.Refresh;


      sp_fact_track_files_modify := TADOStoredProc.Create(nil);
      sp_fact_track_files_modify.Connection := connect;
      sp_fact_track_files_modify.ProcedureName := 'sp_fact_track_files_modify';
      sp_fact_track_files_modify.Parameters.Refresh;

      sp_fact_track_files_modify.Parameters.Refresh;
      sp_fact_track_files_modify.Parameters.ParamByName('@files_track_id').Value := files_track_id;
      sp_fact_track_files_modify.Parameters.ParamByName('@type_action'   ).Value := 11;
      sp_fact_track_files_modify.Open;
      data  := LZHUnPack(sp_fact_track_files_modify.FieldByName('doc_image').AsBytes);
      fd    := TStringStream.Create(data);
      file_data := fd.DataString;
      fd.Free;

      files_name := sp_fact_track_files_modify.FieldByName('files_name').AsString;
      files_date := sp_fact_track_files_modify.FieldByName('files_date').AsDateTime;
      users_id   := sp_fact_track_files_modify.FieldByName('users_id').AsInteger;

      MonitorOperInsert('Сохранение данных: ' + files_name);



      str_list := TStringList.Create;
      str_list.Text := file_data;


      file_pos := str_list.IndexOf('Ответ:');
      for i := file_pos + 1 to str_list.Count - 1 do begin
        str := str_list.Strings[i];
        try
          StrToInt64(Copy(str, 1, 8));
        except
          continue;
        end;

        Client_Vagon.Append;
        Client_Vagon['num_vagon']             := Copy(str, 1,   8);
        Client_Vagon['block_p']               := Copy(str, 9,   1);
        Client_Vagon['type_repair']           := Copy(str, 10,  2);
        Client_Vagon['depo']                  := Copy(str, 12,  4);
        Client_Vagon['num_notice_23']         := Copy(str, 16,  6);
        Client_Vagon['road']                  := Copy(str, 22,  2);
        Client_Vagon['station_detaching']     := Copy(str, 24,  5);
        Client_Vagon['date_breakage']         := Copy(str, 29,  12);
        Client_Vagon['breakage']              := Copy(str, 41,  9);
        Client_Vagon['date_build']            := Copy(str, 50,  8);
        Client_Vagon['last_depo_place']       := Copy(str, 58,  4);
        Client_Vagon['date_last_depo_place']  := Copy(str, 62,  8);
        Client_Vagon['last_cap_place']        := Copy(str, 70,  4);
        Client_Vagon['date_cap_place']        := Copy(str, 74,  8);
        Client_Vagon['num_notice_36']         := Copy(str, 82,  6);
        Client_Vagon['date_repare_begin']     := Copy(str, 88,  12);
        Client_Vagon['date_repare_end']       := Copy(str, 100, 12);
        Client_Vagon['modernization']         := Copy(str, 112, 40);
        Client_Vagon['file_load_name']        := files_name;

        Client_Vagon.Post;
      end;

      sp_fact_track_files_modify.Parameters.Refresh;
      sp_fact_track_files_modify.Parameters.ParamByName('@files_track_id'  ).Value := files_track_id;
      sp_fact_track_files_modify.Parameters.ParamByName('@type_action'     ).Value := 3;
      sp_fact_track_files_modify.Parameters.ParamByName('@files_rows_count').Value := Client_Vagon.RecordCount;
      sp_fact_track_files_modify.ExecProc;


      file_load_date := Date;

      Client_Vagon.First;
      while not Client_Vagon.Eof do begin

        SP.Close;
        SP.Parameters.Refresh;

        SP.Parameters.ParamByName('@fact_tech_id').Value          := -9;
        SP.Parameters.ParamByName('@type_action').Value           := 0;
        SP.Parameters.ParamByName('@users_id').Value              := users_id;

        SP.Parameters.ParamByName('@num_vagon').Value             := Client_Vagon['num_vagon'];
        SP.Parameters.ParamByName('@block_p').Value               := Client_Vagon['block_p'];
        SP.Parameters.ParamByName('@type_repair').Value           := Client_Vagon['type_repair'];
        SP.Parameters.ParamByName('@depo').Value                  := Client_Vagon['depo'];
        SP.Parameters.ParamByName('@num_notice_23').Value         := Client_Vagon['num_notice_23'];
        SP.Parameters.ParamByName('@road').Value                  := Client_Vagon['road'];
        SP.Parameters.ParamByName('@station_detaching').Value     := Client_Vagon['station_detaching'];
        SP.Parameters.ParamByName('@date_breakage').Value         := Client_Vagon['date_breakage'];
        SP.Parameters.ParamByName('@breakage').Value              := Client_Vagon['breakage'];
        SP.Parameters.ParamByName('@date_build').Value            := Client_Vagon['date_build'];
        SP.Parameters.ParamByName('@last_depo_place').Value       := Client_Vagon['last_depo_place'];
        SP.Parameters.ParamByName('@date_last_depo_place').Value  := Client_Vagon['date_last_depo_place'];
        SP.Parameters.ParamByName('@last_cap_place').Value        := Client_Vagon['last_cap_place'];
        SP.Parameters.ParamByName('@date_cap_place').Value        := Client_Vagon['date_cap_place'];
        SP.Parameters.ParamByName('@num_notice_36').Value         := Client_Vagon['num_notice_36'];
        SP.Parameters.ParamByName('@date_repare_begin').Value     := Client_Vagon['date_repare_begin'];
        SP.Parameters.ParamByName('@date_repare_end').Value       := Client_Vagon['date_repare_end'];
        SP.Parameters.ParamByName('@modernization').Value         := Client_Vagon['modernization'];
        SP.Parameters.ParamByName('@file_load_name').Value        := Client_Vagon['file_load_name'];
        SP.Parameters.ParamByName('@file_load_date').Value        := file_load_date;
        SP.ExecProc;

        if (Client_Vagon.RecNo mod 10) = 0 then
            MonitorSetCaption2('Сохранение (обработанно ' + IntToStr(Client_Vagon.RecNo) + ' из ' + IntToStr(Client_Vagon.RecordCount) + ')...');

        if (Client_Vagon.RecNo mod 100) = 0 then begin
          sp_fact_track_files_modify.Parameters.Refresh;
          sp_fact_track_files_modify.Parameters.ParamByName('@files_track_id'  ).Value := files_track_id;
          sp_fact_track_files_modify.Parameters.ParamByName('@type_action'     ).Value := 4;
          sp_fact_track_files_modify.Parameters.ParamByName('@files_rows_load' ).Value := Client_Vagon.RecNo;
          sp_fact_track_files_modify.ExecProc;
          MonitorOperUpdate(Client_Vagon.RecordCount, Client_Vagon.RecNo);
        end;

        Client_Vagon.Next;
      end;
      MonitorOperUpdate(Client_Vagon.RecordCount, Client_Vagon.RecNo);
      MonitorOperEnd('Завершено');
      MonitorSetCaption2('Сохранение (обработанно ' + IntToStr(Client_Vagon.RecNo) + ' из ' + IntToStr(Client_Vagon.RecordCount) + ')...');
      sp_fact_track_files_modify.Parameters.Refresh;
      sp_fact_track_files_modify.Parameters.ParamByName('@files_track_id'  ).Value := files_track_id;
      sp_fact_track_files_modify.Parameters.ParamByName('@type_action'     ).Value := 5;
      sp_fact_track_files_modify.Parameters.ParamByName('@files_rows_load' ).Value := Client_Vagon.RecNo;
      sp_fact_track_files_modify.ExecProc;

    except
      on E: Exception do begin
        sp_files_error := TADOStoredProc.Create(nil);
        sp_files_error.ConnectionString := Fconnect_str;
        sp_files_error.ProcedureName := 'sp_fact_track_files_modify';
        sp_files_error.Parameters.Refresh;
        sp_files_error.Parameters.ParamByName('@files_track_id').Value := files_track_id;
        sp_files_error.Parameters.ParamByName('@type_action'   ).Value := 20;
        sp_files_error.Parameters.ParamByName('@files_status'  ).Value := E.Message;
        sp_files_error.ExecProc;

        MonitorOperEnd('Ошибка');
        SaveLogError('1020', 'SaveRem', E.Message, 'Сохранение файла ' + files_name);
        Result := False;
      end;
    end;
  finally
    sp_fact_track_files_modify.Free;
    SP.Free;
    str_list.Free;
    Client_Vagon.Free;
    connect.Free;
  end;
end;

function TThreadFiles.SaveTeh(files_track_id: integer): boolean;
var             str_list : TStringList;
                       i : integer;
            Client_Vagon : TClientDataSet;
                      SP : TADOStoredProc;
                 connect : TADOConnection;
   str, str2, str3, str4 : string;

      file_data : RawByteString;
           data : TArray<Byte>;
             fd : TStringStream;

     files_date : TDateTime;
       users_id : integer;
     files_name : string;
 sp_files_error : TADOStoredProc;


    sp_fact_track_files_modify : TADOStoredProc;
begin
  try
    try
      Client_Vagon := TClientDataSet.Create(nil);
      Client_Vagon.FieldDefs.Add('fact_unit_id', ftInteger);
      Client_Vagon.FieldDefs.Add('num_vagon', ftInteger);
      Client_Vagon.FieldDefs.Add('type_repair_cod', ftString, 50);
      Client_Vagon.FieldDefs.Add('depo_cod', ftString, 50);
      Client_Vagon.FieldDefs.Add('truck1_pair1_axis_create_date', ftInteger);
      Client_Vagon.FieldDefs.Add('truck1_pair1_axis_num', ftString, 50);
      Client_Vagon.FieldDefs.Add('truck1_pair2_axis_create_date', ftInteger);
      Client_Vagon.FieldDefs.Add('truck1_pair2_axis_num', ftString, 50);
      Client_Vagon.FieldDefs.Add('truck1_pair2_right_hoop_width', ftBCD);
      Client_Vagon.FieldDefs.Add('truck1_pair2_right_peak_width', ftBCD);
      Client_Vagon.FieldDefs.Add('truck1_pair2_left_hoop_width', ftBCD);
      Client_Vagon.FieldDefs.Add('truck1_pair2_left_peak_width', ftBCD);
      Client_Vagon.FieldDefs.Add('truck1_balk_create_date', ftInteger);
      Client_Vagon.FieldDefs.Add('truck1_balk_num', ftString, 50);
      Client_Vagon.FieldDefs.Add('truck1_right_rack_create_date', ftInteger);
      Client_Vagon.FieldDefs.Add('truck1_right_rack_num', ftString, 50);
      Client_Vagon.FieldDefs.Add('truck1_left_rack_create_date', ftInteger);
      Client_Vagon.FieldDefs.Add('truck1_left_rack_num', ftString, 50);
      Client_Vagon.FieldDefs.Add('truck2_pair1_axis_create_date', ftInteger);
      Client_Vagon.FieldDefs.Add('truck2_pair1_axis_num', ftString, 50);
      Client_Vagon.FieldDefs.Add('truck2_pair1_right_hoop_width', ftBCD);
      Client_Vagon.FieldDefs.Add('truck2_pair1_right_peak_width', ftBCD);
      Client_Vagon.FieldDefs.Add('truck2_pair1_left_hoop_width', ftBCD);
      Client_Vagon.FieldDefs.Add('truck2_pair1_left_peak_width', ftBCD);
      Client_Vagon.FieldDefs.Add('truck2_pair2_axis_create_date', ftInteger);
      Client_Vagon.FieldDefs.Add('truck2_pair2_axis_num', ftString, 50);
      Client_Vagon.FieldDefs.Add('truck2_pair2_right_hoop_width', ftBCD);
      Client_Vagon.FieldDefs.Add('truck2_pair2_right_peak_width', ftBCD);
      Client_Vagon.FieldDefs.Add('truck2_pair2_left_hoop_width', ftBCD);
      Client_Vagon.FieldDefs.Add('truck2_pair2_left_peak_width', ftBCD);
      Client_Vagon.FieldDefs.Add('truck2_balk_create_date', ftInteger);
      Client_Vagon.FieldDefs.Add('truck2_balk_num', ftString, 50);
      Client_Vagon.FieldDefs.Add('truck2_right_rack_create_date', ftInteger);
      Client_Vagon.FieldDefs.Add('truck2_right_rack_num', ftString, 50);
      Client_Vagon.FieldDefs.Add('truck2_left_rack_create_date', ftInteger);
      Client_Vagon.FieldDefs.Add('truck2_left_rack_num', ftString, 50);
      Client_Vagon.FieldDefs.Add('users_id', ftInteger);
      Client_Vagon.FieldDefs.Add('Fio_users', ftString, 50);
      Client_Vagon.FieldDefs.Add('global_color', ftInteger);
      Client_Vagon.FieldDefs.Add('file_load_date', ftDate);
      Client_Vagon.FieldDefs.Add('file_load_name', ftString, 50);
      Client_Vagon.FieldDefs.Add('type_repair_name', ftString, 50);
      Client_Vagon.FieldDefs.Add('depo_name', ftString, 50);
      Client_Vagon.FieldDefs.Add('date_last_repair', ftString, 20);
      Client_Vagon.FieldDefs.Add('truck1_pair1_right_hoop_width', ftString, 20);
      Client_Vagon.FieldDefs.Add('truck1_pair1_right_peak_width', ftString, 20);
      Client_Vagon.FieldDefs.Add('truck1_pair1_left_hoop_width', ftString, 20);
      Client_Vagon.FieldDefs.Add('truck1_pair1_left_peak_width', ftString, 20);
      Client_Vagon.FieldDefs.Add('truck1_pair1_axis_builder_cod', ftString, 200);
      Client_Vagon.FieldDefs.Add('truck1_pair2_axis_builder_cod', ftString, 200);
      Client_Vagon.FieldDefs.Add('truck2_pair1_axis_builder_cod', ftString, 200);
      Client_Vagon.FieldDefs.Add('truck2_pair2_axis_builder_cod', ftString, 200);
      Client_Vagon.FieldDefs.Add('truck1_balk_builder_cod', ftString, 200);
      Client_Vagon.FieldDefs.Add('truck2_balk_builder_cod', ftString, 20);
      Client_Vagon.FieldDefs.Add('truck1_pair1_date_kp', ftString, 20);
      Client_Vagon.FieldDefs.Add('truck1_pair1_depo_kp_cod', ftString, 20);
      Client_Vagon.FieldDefs.Add('truck1_pair2_date_kp', ftString, 20);
      Client_Vagon.FieldDefs.Add('truck1_pair2_depo_kp_cod', ftString, 20);
      Client_Vagon.FieldDefs.Add('truck2_pair1_date_kp', ftString, 20);
      Client_Vagon.FieldDefs.Add('truck2_pair1_depo_kp_cod', ftString, 20);
      Client_Vagon.FieldDefs.Add('truck2_pair2_date_kp', ftString, 20);
      Client_Vagon.FieldDefs.Add('truck2_pair2_depo_kp_cod', ftString, 20);
      Client_Vagon.FieldDefs.Add('truck1_right_rack_builder', ftString, 20);
      Client_Vagon.FieldDefs.Add('truck1_left_rack_builder', ftString, 20);
      Client_Vagon.FieldDefs.Add('truck2_right_rack_builder', ftString, 20);
      Client_Vagon.FieldDefs.Add('truck2_left_rack_builder', ftString, 20);
      Client_Vagon.CreateDataSet;
      Client_Vagon.LogChanges := False;

      connect := TADOConnection.Create(nil);
      connect.ConnectionString := Fconnect_str;
      connect.KeepConnection   := False;
      connect.LoginPrompt      := False;
      connect.Open;

      SP := TADOStoredProc.Create(nil);
      SP.Connection := Connect;
      SP.ProcedureName := 'sp_fact_unit_modify;1';
      SP.Parameters.Refresh;

      sp_fact_track_files_modify := TADOStoredProc.Create(nil);
      sp_fact_track_files_modify.Connection := connect;
      sp_fact_track_files_modify.ProcedureName := 'sp_fact_track_files_modify';
      sp_fact_track_files_modify.Parameters.Refresh;

      sp_fact_track_files_modify.Parameters.Refresh;
      sp_fact_track_files_modify.Parameters.ParamByName('@files_track_id').Value := files_track_id;
      sp_fact_track_files_modify.Parameters.ParamByName('@type_action'   ).Value := 11;
      sp_fact_track_files_modify.Open;
      data  := LZHUnPack(sp_fact_track_files_modify.FieldByName('doc_image').AsBytes);
      fd    := TStringStream.Create(data);
      file_data := fd.DataString;
      fd.Free;

      files_name := sp_fact_track_files_modify.FieldByName('files_name').AsString;
      files_date := sp_fact_track_files_modify.FieldByName('files_date').AsDateTime;
      users_id   := sp_fact_track_files_modify.FieldByName('users_id').AsInteger;

      MonitorOperInsert('Сохранение данных: ' + files_name);

      str_list := TStringList.Create;
      str_list.Text := file_data;

      for i := 0 to str_list.Count - 1 do begin
        try
          str2 := '';
          str3 := '';
          str4 := '';

          str := str_list.Strings[i];
          Pos('S',str);
          StrToInt64(Copy(str, 1, 8));

          //if ((Pos('S',str) <> 0)) AND (Length(str) = 249) then begin
          if ((Pos('S',str) <> 0)) then begin
            if Pos(Copy(str,1,8),str_list.Strings[i+1]) <> 0 then
              str2 :=  str_list.Strings[i+1];

            if Pos(Copy(str,1,8),str_list.Strings[i+2]) <> 0 then
              str3 :=  str_list.Strings[i+2];

            if Pos(Copy(str,1,8),str_list.Strings[i+3]) <> 0 then
              str4 :=  str_list.Strings[i+3];

            Client_Vagon.Append;
            // 1 строка  Информация по вагону

            Client_Vagon['num_vagon']                     := Copy(str, 1, 8);
            Client_Vagon['type_repair_cod']               := Copy(str, 16, 1);
            Client_Vagon['date_last_repair']              := Copy(str, 17, 8);
            Client_Vagon['depo_cod']                      := Copy(str, 25, 4);

            //Телжка №1
            //первая колесная пара

            Client_Vagon['truck1_pair1_axis_create_date'] := Copy(str, 64, 4);
            Client_Vagon['truck1_pair1_axis_num']         := Copy(str, 31, 10);

            Client_Vagon['truck1_pair1_axis_builder_cod'] := Copy(str, 68, 4);
            Client_Vagon['truck1_pair1_date_kp'] := Copy(str, 54, 6);
            Client_Vagon['truck1_pair1_depo_kp_cod'] := Copy(str, 60, 4);

            Client_Vagon['truck1_pair1_right_hoop_width'] := StringReplace(Copy(str, 72, 4),'.',',',[]);
            Client_Vagon['truck1_pair1_right_peak_width'] := StringReplace(Copy(str, 77, 4),'.',',',[]);
            Client_Vagon['truck1_pair1_left_hoop_width']  := StringReplace(Copy(str, 84, 4),'.',',',[]);
            Client_Vagon['truck1_pair1_left_peak_width']  := StringReplace(Copy(str, 89, 4),'.',',',[]);
            //вторая колесная пара

            Client_Vagon['truck1_pair2_axis_create_date'] := Copy(str, 130, 4);
            Client_Vagon['truck1_pair2_axis_num']         := Copy(str, 97, 10);

            Client_Vagon['truck1_pair2_axis_builder_cod'] := Copy(str, 134, 4);
            Client_Vagon['truck1_pair2_date_kp'] := Copy(str, 120, 6);
            Client_Vagon['truck1_pair2_depo_kp_cod'] := Copy(str, 126, 4);

            Client_Vagon['truck1_pair2_right_hoop_width'] := StringReplace(Copy(str, 138, 4),'.',',',[]);
            Client_Vagon['truck1_pair2_right_peak_width'] := StringReplace(Copy(str, 143, 4),'.',',',[]);
            Client_Vagon['truck1_pair2_left_hoop_width']  := StringReplace(Copy(str, 150, 4),'.',',',[]);
            Client_Vagon['truck1_pair2_left_peak_width']  := StringReplace(Copy(str, 155, 4),'.',',',[]);

            //2 строка
            if str2 <> '' then begin
              //Надрессорная балка
              Client_Vagon['truck1_balk_create_date']       := Copy(str2, 53,   4);
              Client_Vagon['truck1_balk_num']               := Copy(str2, 30,   10);
              Client_Vagon['truck1_balk_builder_cod']       := Copy(str2, 57,   4);

              //Правая рама

              Client_Vagon['truck1_right_rack_create_date'] := Copy(str2, 84,   4);
              Client_Vagon['truck1_right_rack_num']         := Copy(str2, 61,   10);
              Client_Vagon['truck1_right_rack_builder']     := Copy(str2, 88,   4);
              //Левая рама

              Client_Vagon['truck1_left_rack_create_date']  := Copy(str2, 115,   4);
              Client_Vagon['truck1_left_rack_num']          := Copy(str2, 92,   10);
              Client_Vagon['truck1_left_rack_builder']      := Copy(str2, 119,   4);
            end;

            //3 строка
            //первая колесная пара
            if str3 <> '' then begin
              Client_Vagon['truck2_pair1_axis_create_date'] := Copy(str3, 64, 4);
              Client_Vagon['truck2_pair1_axis_num']         :=  Copy(str3, 31, 10);

              Client_Vagon['truck2_pair1_axis_builder_cod'] := Copy(str3, 68, 4);
              Client_Vagon['truck2_pair1_date_kp']          := Copy(str3, 54, 6);
              Client_Vagon['truck2_pair1_depo_kp_cod']      := Copy(str3, 60, 4);

              Client_Vagon['truck2_pair1_right_hoop_width'] := StringReplace(Copy(str3, 72, 4),'.',',',[]);
              Client_Vagon['truck2_pair1_right_peak_width'] := StringReplace(Copy(str3, 77, 4),'.',',',[]);
              Client_Vagon['truck2_pair1_left_hoop_width']  := StringReplace(Copy(str3, 84, 4),'.',',',[]);
              Client_Vagon['truck2_pair1_left_peak_width']  := StringReplace(Copy(str3, 89, 4),'.',',',[]);
              //вторая колесная пара

              Client_Vagon['truck2_pair2_axis_create_date'] := Copy(str3, 130, 4);
              Client_Vagon['truck2_pair2_axis_num']         := Copy(str3, 97, 10);

              Client_Vagon['truck2_pair2_axis_builder_cod'] := Copy(str3, 134, 4);
              Client_Vagon['truck2_pair2_date_kp'] := Copy(str3, 120, 6);
              Client_Vagon['truck2_pair2_depo_kp_cod'] := Copy(str3, 126, 4);

              Client_Vagon['truck2_pair2_right_hoop_width'] := StringReplace(Copy(str3, 138, 4),'.',',',[]);
              Client_Vagon['truck2_pair2_right_peak_width'] := StringReplace(Copy(str3, 143, 4),'.',',',[]);
              Client_Vagon['truck2_pair2_left_hoop_width']  := StringReplace(Copy(str3, 150, 4),'.',',',[]);
              Client_Vagon['truck2_pair2_left_peak_width']  := StringReplace(Copy(str3, 155, 4),'.',',',[]);
            end;

            //4 строка
            //Надрессорная балка
            if str4 <> '' then begin
              Client_Vagon['truck2_balk_create_date']       := Copy(str4, 53,   4);
              Client_Vagon['truck2_balk_num']               := Copy(str4, 30,   10);
              Client_Vagon['truck2_balk_builder_cod']       := Copy(str4, 57,   4);
              //Правая рама

              Client_Vagon['truck2_right_rack_create_date'] := Copy(str4, 84,   4);
              Client_Vagon['truck2_right_rack_num']         := Copy(str4, 61,   10);
              Client_Vagon['truck2_right_rack_builder']     := Copy(str4, 88,   4);
              //Левая рама

              Client_Vagon['truck2_left_rack_create_date']  := Copy(str4, 115,   4);
              Client_Vagon['truck2_left_rack_num']          := Copy(str4, 92,   10);
              Client_Vagon['truck2_left_rack_builder']      := Copy(str4, 119,   4);
            end;

            Client_Vagon.Post;
          end;

        except
        end;
      end;

      sp_fact_track_files_modify.Parameters.Refresh;
      sp_fact_track_files_modify.Parameters.ParamByName('@files_track_id'  ).Value := files_track_id;
      sp_fact_track_files_modify.Parameters.ParamByName('@type_action'     ).Value := 3;
      sp_fact_track_files_modify.Parameters.ParamByName('@files_rows_count').Value := Client_Vagon.RecordCount;
      sp_fact_track_files_modify.ExecProc;


      Client_Vagon.First;
      while not Client_Vagon.Eof do begin
        SP.Close;
        SP.Parameters.Refresh;

        SP.Parameters.ParamByName('@fact_unit_id'                 ).Value := -9;
        SP.Parameters.ParamByName('@type_action'                  ).Value := 0;
        SP.Parameters.ParamByName('@users_id'                     ).Value := users_id;

        SP.Parameters.ParamByName('@num_vagon'                    ).Value := Client_Vagon['num_vagon'                    ];
        SP.Parameters.ParamByName('@type_repair_cod'              ).Value := Client_Vagon['type_repair_cod'              ];
        SP.Parameters.ParamByName('@date_last_repair'             ).Value := Client_Vagon['date_last_repair'             ];
        SP.Parameters.ParamByName('@depo_cod'                     ).Value := Client_Vagon['depo_cod'                     ];
        SP.Parameters.ParamByName('@truck1_pair1_axis_create_date').Value := Client_Vagon['truck1_pair1_axis_create_date'];
        SP.Parameters.ParamByName('@truck1_pair1_axis_num'        ).Value := Client_Vagon['truck1_pair1_axis_num'        ];
        SP.Parameters.ParamByName('@truck1_pair1_right_hoop_width').Value := Client_Vagon['truck1_pair1_right_hoop_width'];
        SP.Parameters.ParamByName('@truck1_pair1_right_peak_width').Value := Client_Vagon['truck1_pair1_right_peak_width'];
        SP.Parameters.ParamByName('@truck1_pair1_left_hoop_width' ).Value := Client_Vagon['truck1_pair1_left_hoop_width' ];
        SP.Parameters.ParamByName('@truck1_pair1_left_peak_width' ).Value := Client_Vagon['truck1_pair1_left_peak_width' ];
        SP.Parameters.ParamByName('@truck1_pair2_axis_create_date').Value := Client_Vagon['truck1_pair2_axis_create_date'];
        SP.Parameters.ParamByName('@truck1_pair2_axis_num'        ).Value := Client_Vagon['truck1_pair2_axis_num'        ];
        SP.Parameters.ParamByName('@truck1_pair2_right_hoop_width').Value := Client_Vagon['truck1_pair2_right_hoop_width'];
        SP.Parameters.ParamByName('@truck1_pair2_right_peak_width').Value := Client_Vagon['truck1_pair2_right_peak_width'];
        SP.Parameters.ParamByName('@truck1_pair2_left_hoop_width' ).Value := Client_Vagon['truck1_pair2_left_hoop_width' ];
        SP.Parameters.ParamByName('@truck1_pair2_left_peak_width' ).Value := Client_Vagon['truck1_pair2_left_peak_width' ];
        SP.Parameters.ParamByName('@truck1_balk_create_date'      ).Value := Client_Vagon['truck1_balk_create_date'      ];
        SP.Parameters.ParamByName('@truck1_balk_num'              ).Value := Client_Vagon['truck1_balk_num'              ];
        SP.Parameters.ParamByName('@truck1_right_rack_create_date').Value := Client_Vagon['truck1_right_rack_create_date'];
        SP.Parameters.ParamByName('@truck1_right_rack_num'        ).Value := Client_Vagon['truck1_right_rack_num'        ];
        SP.Parameters.ParamByName('@truck1_left_rack_create_date' ).Value := Client_Vagon['truck1_left_rack_create_date' ];
        SP.Parameters.ParamByName('@truck1_left_rack_num'         ).Value := Client_Vagon['truck1_left_rack_num'         ];
        SP.Parameters.ParamByName('@truck2_pair1_axis_create_date').Value := Client_Vagon['truck2_pair1_axis_create_date'];
        SP.Parameters.ParamByName('@truck2_pair1_axis_num'        ).Value := Client_Vagon['truck2_pair1_axis_num'        ];
        SP.Parameters.ParamByName('@truck2_pair1_right_hoop_width').Value := Client_Vagon['truck2_pair1_right_hoop_width'];
        SP.Parameters.ParamByName('@truck2_pair1_right_peak_width').Value := Client_Vagon['truck2_pair1_right_peak_width'];
        SP.Parameters.ParamByName('@truck2_pair1_left_hoop_width' ).Value := Client_Vagon['truck2_pair1_left_hoop_width' ];
        SP.Parameters.ParamByName('@truck2_pair1_left_peak_width' ).Value := Client_Vagon['truck2_pair1_left_peak_width' ];
        SP.Parameters.ParamByName('@truck2_pair2_axis_create_date').Value := Client_Vagon['truck2_pair2_axis_create_date'];
        SP.Parameters.ParamByName('@truck2_pair2_axis_num'        ).Value := Client_Vagon['truck2_pair2_axis_num'        ];
        SP.Parameters.ParamByName('@truck2_pair2_right_hoop_width').Value := Client_Vagon['truck2_pair2_right_hoop_width'];
        SP.Parameters.ParamByName('@truck2_pair2_right_peak_width').Value := Client_Vagon['truck2_pair2_right_peak_width'];
        SP.Parameters.ParamByName('@truck2_pair2_left_hoop_width' ).Value := Client_Vagon['truck2_pair2_left_hoop_width' ];
        SP.Parameters.ParamByName('@truck2_pair2_left_peak_width' ).Value := Client_Vagon['truck2_pair2_left_peak_width' ];
        SP.Parameters.ParamByName('@truck2_balk_create_date'      ).Value := Client_Vagon['truck2_balk_create_date'      ];
        SP.Parameters.ParamByName('@truck2_balk_num'              ).Value := Client_Vagon['truck2_balk_num'              ];
        SP.Parameters.ParamByName('@truck2_right_rack_create_date').Value := Client_Vagon['truck2_right_rack_create_date'];
        SP.Parameters.ParamByName('@truck2_right_rack_num'        ).Value := Client_Vagon['truck2_right_rack_num'        ];
        SP.Parameters.ParamByName('@truck2_left_rack_create_date' ).Value := Client_Vagon['truck2_left_rack_create_date' ];
        SP.Parameters.ParamByName('@truck2_left_rack_num'         ).Value := Client_Vagon['truck2_left_rack_num'         ];
        SP.Parameters.ParamByName('@file_load_name'               ).Value := files_name;

        SP.Parameters.ParamByName('@truck1_pair1_axis_builder_cod'    ).Value := Client_Vagon['truck1_pair1_axis_builder_cod'];
        SP.Parameters.ParamByName('@truck1_pair2_axis_builder_cod'    ).Value := Client_Vagon['truck1_pair2_axis_builder_cod'];
        SP.Parameters.ParamByName('@truck2_pair1_axis_builder_cod'    ).Value := Client_Vagon['truck2_pair1_axis_builder_cod'];
        SP.Parameters.ParamByName('@truck2_pair2_axis_builder_cod'    ).Value := Client_Vagon['truck2_pair2_axis_builder_cod'];
        SP.Parameters.ParamByName('@truck1_balk_builder_cod'          ).Value := Client_Vagon['truck1_balk_builder_cod'];
        SP.Parameters.ParamByName('@truck2_balk_builder_cod'          ).Value := Client_Vagon['truck2_balk_builder_cod'];
        SP.Parameters.ParamByName('@truck1_pair1_date_kp'             ).Value := Client_Vagon['truck1_pair1_date_kp'];
        SP.Parameters.ParamByName('@truck1_pair1_depo_kp_cod'         ).Value := Client_Vagon['truck1_pair1_depo_kp_cod'];
        SP.Parameters.ParamByName('@truck1_pair2_date_kp'             ).Value := Client_Vagon['truck1_pair2_date_kp'];
        SP.Parameters.ParamByName('@truck1_pair2_depo_kp_cod'         ).Value := Client_Vagon['truck1_pair2_depo_kp_cod'];
        SP.Parameters.ParamByName('@truck2_pair1_date_kp'             ).Value := Client_Vagon['truck2_pair1_date_kp'];
        SP.Parameters.ParamByName('@truck2_pair1_depo_kp_cod'         ).Value := Client_Vagon['truck2_pair1_depo_kp_cod'];
        SP.Parameters.ParamByName('@truck2_pair2_date_kp'             ).Value := Client_Vagon['truck2_pair2_date_kp'];
        SP.Parameters.ParamByName('@truck2_pair2_depo_kp_cod'         ).Value := Client_Vagon['truck2_pair2_depo_kp_cod'];
        SP.Parameters.ParamByName('@truck1_right_rack_builder'        ).Value := Client_Vagon['truck1_right_rack_builder'];
        SP.Parameters.ParamByName('@truck1_left_rack_builder'         ).Value := Client_Vagon['truck1_left_rack_builder'];
        SP.Parameters.ParamByName('@truck2_right_rack_builder'        ).Value := Client_Vagon['truck2_right_rack_builder'];
        SP.Parameters.ParamByName('@truck2_left_rack_builder'         ).Value := Client_Vagon['truck2_left_rack_builder'];
        SP.ExecProc;

        if (Client_Vagon.RecNo mod 10) = 0 then
            MonitorSetCaption2('Сохранение (обработанно ' + IntToStr(Client_Vagon.RecNo) + ' из ' + IntToStr(Client_Vagon.RecordCount) + ')...');

        if (Client_Vagon.RecNo mod 100) = 0 then begin
          sp_fact_track_files_modify.Parameters.Refresh;
          sp_fact_track_files_modify.Parameters.ParamByName('@files_track_id'  ).Value := files_track_id;
          sp_fact_track_files_modify.Parameters.ParamByName('@type_action'     ).Value := 4;
          sp_fact_track_files_modify.Parameters.ParamByName('@files_rows_load' ).Value := Client_Vagon.RecNo;
          sp_fact_track_files_modify.ExecProc;
          MonitorOperUpdate(Client_Vagon.RecordCount, Client_Vagon.RecNo);
        end;

        Client_Vagon.Next;
      end;

      MonitorOperUpdate(Client_Vagon.RecordCount, Client_Vagon.RecNo);
      MonitorOperEnd('Завершено');
      MonitorSetCaption2('Сохранение (обработанно ' + IntToStr(Client_Vagon.RecNo) + ' из ' + IntToStr(Client_Vagon.RecordCount) + ')...');
      sp_fact_track_files_modify.Parameters.Refresh;
      sp_fact_track_files_modify.Parameters.ParamByName('@files_track_id'  ).Value := files_track_id;
      sp_fact_track_files_modify.Parameters.ParamByName('@type_action'     ).Value := 5;
      sp_fact_track_files_modify.Parameters.ParamByName('@files_rows_load' ).Value := Client_Vagon.RecNo;
      sp_fact_track_files_modify.ExecProc;
    except
      on E: Exception do begin
        sp_files_error := TADOStoredProc.Create(nil);
        sp_files_error.ConnectionString := Fconnect_str;
        sp_files_error.ProcedureName := 'sp_fact_track_files_modify';
        sp_files_error.Parameters.Refresh;
        sp_files_error.Parameters.ParamByName('@files_track_id').Value := files_track_id;
        sp_files_error.Parameters.ParamByName('@type_action'   ).Value := 20;
        sp_files_error.Parameters.ParamByName('@files_status'  ).Value := E.Message;
        sp_files_error.ExecProc;

        MonitorOperEnd('Ошибка');

        SaveLogError('1030', 'SaveTeh', E.Message, 'Сохранение файла ' + files_name);
        Result := False;
      end;
    end;
  finally
    sp_fact_track_files_modify.Free;
    SP.Free;
    str_list.Free;
    Client_Vagon.Free;
    connect.Free;
  end;
end;

function TThreadFiles.SaveRun(files_track_id: integer): boolean;
var str_list : TStringList;
           i : integer;
    Client_Vagon : TClientDataSet;
    SP : TADOStoredProc;
    connect : TADOConnection;
    str : string;
    sp_fact_track_files_modify : TADOStoredProc;
      file_data : RawByteString;
      data : TArray<Byte>;
        fd : TStringStream;
     files_date : TDateTime;
       users_id : integer;
     files_name : string;
 sp_files_error : TADOStoredProc;

begin
  try
    try
      Client_Vagon := TClientDataSet.Create(nil);
      Client_Vagon.FieldDefs.Add('fact_param_id', ftAutoInc);
      Client_Vagon.FieldDefs.Add('num_vagon', ftInteger);
      Client_Vagon.FieldDefs.Add('date_registration', ftString, 20);
      Client_Vagon.FieldDefs.Add('date_build', ftString, 20);
      Client_Vagon.FieldDefs.Add('next_date_repair', ftString, 20);
      Client_Vagon.FieldDefs.Add('next_type_repair', ftString, 2);
      Client_Vagon.FieldDefs.Add('date_last_cap_place', ftString, 20);
      Client_Vagon.FieldDefs.Add('last_cap_place', ftString, 4);
      Client_Vagon.FieldDefs.Add('date_last_depo_place', ftString, 20);
      Client_Vagon.FieldDefs.Add('last_depo_place', ftString, 4);
      Client_Vagon.FieldDefs.Add('vagon_owner_cod', ftString, 20);
      Client_Vagon.FieldDefs.Add('time_of_service', ftString, 20);
      Client_Vagon.FieldDefs.Add('file_load_name', ftString, 100);
      Client_Vagon.FieldDefs.Add('file_load_date', ftDate);
      Client_Vagon.FieldDefs.Add('users_id', ftInteger);
      Client_Vagon.FieldDefs.Add('vagon_model', ftString, 50);
      Client_Vagon.FieldDefs.Add('load_date_of_service', ftString, 50);
      Client_Vagon.FieldDefs.Add('milage_passed', ftString, 20);
      Client_Vagon.FieldDefs.Add('milage_rest', ftString, 20);
      Client_Vagon.FieldDefs.Add('quality_mark', ftString, 20);
      Client_Vagon.FieldDefs.Add('state_vagon', ftString, 20);
      Client_Vagon.FieldDefs.Add('state_date', ftString, 20);
      Client_Vagon.FieldDefs.Add('state_reason', ftString, 20);
      Client_Vagon.FieldDefs.Add('state_place', ftString, 20);
      Client_Vagon.FieldDefs.Add('serial_num', ftString, 20);
      Client_Vagon.FieldDefs.Add('factory', ftString, 20);
      Client_Vagon.FieldDefs.Add('vagon_type', ftString, 20);
      Client_Vagon.FieldDefs.Add('vagon_tara', ftString, 20);
      Client_Vagon.FieldDefs.Add('vagon_load', ftString, 20);
      Client_Vagon.FieldDefs.Add('coupler_length', ftString, 20);
      Client_Vagon.FieldDefs.Add('balance_cost', ftString, 20);
      Client_Vagon.FieldDefs.Add('registry_road', ftString, 20);
      Client_Vagon.FieldDefs.Add('registry_depot', ftString, 20);
      Client_Vagon.FieldDefs.Add('exception_date', ftString, 20);
      Client_Vagon.FieldDefs.Add('exception_reason', ftString, 20);
      Client_Vagon.FieldDefs.Add('residual_value', ftString, 20);
      Client_Vagon.FieldDefs.Add('former_num', ftString, 20);
      Client_Vagon.FieldDefs.Add('registry_station', ftString, 20);
      Client_Vagon.FieldDefs.Add('block_mark', ftString, 20);
      Client_Vagon.CreateDataSet;
      Client_Vagon.LogChanges := False;

      connect := TADOConnection.Create(nil);
      connect.ConnectionString := Fconnect_str;
      connect.KeepConnection   := False;
      connect.LoginPrompt      := False;
      connect.Open;

      SP := TADOStoredProc.Create(nil);
      SP.Connection := Connect;
      SP.ProcedureName := 'sp_fact_milage_modify;1';
      SP.Parameters.Refresh;

      sp_fact_track_files_modify := TADOStoredProc.Create(nil);
      sp_fact_track_files_modify.Connection := connect;
      sp_fact_track_files_modify.ProcedureName := 'sp_fact_track_files_modify';
      sp_fact_track_files_modify.Parameters.Refresh;

      sp_fact_track_files_modify.Parameters.Refresh;
      sp_fact_track_files_modify.Parameters.ParamByName('@files_track_id').Value := files_track_id;
      sp_fact_track_files_modify.Parameters.ParamByName('@type_action'   ).Value := 11;
      sp_fact_track_files_modify.Open;
      data  := LZHUnPack(sp_fact_track_files_modify.FieldByName('doc_image').AsBytes);
      fd    := TStringStream.Create(data);
      file_data := fd.DataString;
      fd.Free;
      files_name := sp_fact_track_files_modify.FieldByName('files_name').AsString;
      files_date := sp_fact_track_files_modify.FieldByName('files_date').AsDateTime;
      users_id   := sp_fact_track_files_modify.FieldByName('users_id').AsInteger;

      MonitorOperInsert('Сохранение данных: ' + files_name);

      str_list := TStringList.Create;
      str_list.Text := file_data;

      for i := 0 to str_list.Count - 1 do begin
        str := str_list.Strings[i];
        try
          StrToInt64(Copy(str, 1, 8));
        except
          continue;
        end;

        Client_Vagon.Append;
        Client_Vagon['num_vagon'     ] := Copy(str, 1,  8);
        Client_Vagon['milage_rest'   ] := Copy(str, 10, 7);
        Client_Vagon['milage_passed' ] := Copy(str, 17, 7);
        Client_Vagon['file_load_name'] := files_name;
        Client_Vagon.Post;
      end;


      sp_fact_track_files_modify.Parameters.Refresh;
      sp_fact_track_files_modify.Parameters.ParamByName('@files_track_id'  ).Value := files_track_id;
      sp_fact_track_files_modify.Parameters.ParamByName('@type_action'     ).Value := 3;
      sp_fact_track_files_modify.Parameters.ParamByName('@files_rows_count').Value := Client_Vagon.RecordCount;
      sp_fact_track_files_modify.ExecProc;


      Client_Vagon.First;
      while not Client_Vagon.Eof do begin
        SP.Close;
        SP.Parameters.Refresh;
        SP.Parameters.ParamByName('@fact_milage_id').Value := -9;
        SP.Parameters.ParamByName('@type_action'   ).Value := 0;
        SP.Parameters.ParamByName('@users_id'      ).Value := users_id;

        SP.Parameters.ParamByName('@num_vagon'     ).Value := Client_Vagon['num_vagon'    ];
        SP.Parameters.ParamByName('@milage_passed' ).Value := Client_Vagon['milage_passed'];
        SP.Parameters.ParamByName('@milage_rest'   ).Value := Client_Vagon['milage_rest'  ];
        SP.Parameters.ParamByName('@file_load_name').Value := Client_Vagon['file_load_name'];
        SP.ExecProc;

        if (Client_Vagon.RecNo mod 10) = 0 then
            MonitorSetCaption2('Сохранение (обработанно ' + IntToStr(Client_Vagon.RecNo) + ' из ' + IntToStr(Client_Vagon.RecordCount) + ')...');

        if (Client_Vagon.RecNo mod 100) = 0 then begin
          sp_fact_track_files_modify.Parameters.Refresh;
          sp_fact_track_files_modify.Parameters.ParamByName('@files_track_id'  ).Value := files_track_id;
          sp_fact_track_files_modify.Parameters.ParamByName('@type_action'     ).Value := 4;
          sp_fact_track_files_modify.Parameters.ParamByName('@files_rows_load' ).Value := Client_Vagon.RecNo;
          sp_fact_track_files_modify.ExecProc;
          MonitorOperUpdate(Client_Vagon.RecordCount, Client_Vagon.RecNo);
        end;

        Client_Vagon.Next;
      end;

      MonitorOperUpdate(Client_Vagon.RecordCount, Client_Vagon.RecNo);
      MonitorOperEnd('Завершено');

      MonitorSetCaption2('Сохранение (обработанно ' + IntToStr(Client_Vagon.RecNo) + ' из ' + IntToStr(Client_Vagon.RecordCount) + ')...');
      sp_fact_track_files_modify.Parameters.Refresh;
      sp_fact_track_files_modify.Parameters.ParamByName('@files_track_id'  ).Value := files_track_id;
      sp_fact_track_files_modify.Parameters.ParamByName('@type_action'     ).Value := 5;
      sp_fact_track_files_modify.Parameters.ParamByName('@files_rows_load' ).Value := Client_Vagon.RecNo;
      sp_fact_track_files_modify.ExecProc;
    except
      on E: Exception do begin
        sp_files_error := TADOStoredProc.Create(nil);
        sp_files_error.ConnectionString := Fconnect_str;
        sp_files_error.ProcedureName := 'sp_fact_track_files_modify';
        sp_files_error.Parameters.Refresh;
        sp_files_error.Parameters.ParamByName('@files_track_id').Value := files_track_id;
        sp_files_error.Parameters.ParamByName('@type_action'   ).Value := 20;
        sp_files_error.Parameters.ParamByName('@files_status'  ).Value := E.Message;
        sp_files_error.ExecProc;

        MonitorOperEnd('Ошибка');

        SaveLogError('1060', 'SavePas', E.Message, 'Сохранение файла ' + files_name);
        Result := False;
      end;
    end;
  finally
    sp_fact_track_files_modify.Free;
    SP.Free;
    str_list.Free;
    Client_Vagon.Free;
    connect.Free;
  end;
end;

function TThreadFiles.SaveRunEx(files_track_id: integer): boolean;
var str_list : TStringList;
           i : integer;
    Client_Vagon : TClientDataSet;
    SP : TADOStoredProc;
    connect : TADOConnection;
    str : string;
    sp_fact_track_files_modify : TADOStoredProc;
      file_data : RawByteString;
      data : TArray<Byte>;
        fd : TStringStream;
     files_date : TDateTime;
       users_id : integer;
     files_name : string;
 sp_files_error : TADOStoredProc;

begin
  try
    try

      Client_Vagon := TClientDataSet.Create(nil);
      Client_Vagon.FieldDefs.Add('fact_param_id', ftAutoInc);
      Client_Vagon.FieldDefs.Add('num_vagon', ftInteger);
      Client_Vagon.FieldDefs.Add('date_registration', ftString, 20);
      Client_Vagon.FieldDefs.Add('date_build', ftString, 20);
      Client_Vagon.FieldDefs.Add('next_date_repair', ftString, 20);
      Client_Vagon.FieldDefs.Add('next_type_repair', ftString, 2);
      Client_Vagon.FieldDefs.Add('date_last_cap_place', ftString, 20);
      Client_Vagon.FieldDefs.Add('last_cap_place', ftString, 4);
      Client_Vagon.FieldDefs.Add('date_last_depo_place', ftString, 20);
      Client_Vagon.FieldDefs.Add('last_depo_place', ftString, 4);
      Client_Vagon.FieldDefs.Add('vagon_owner_cod', ftString, 20);
      Client_Vagon.FieldDefs.Add('time_of_service', ftString, 20);
      Client_Vagon.FieldDefs.Add('file_load_name', ftString, 100);
      Client_Vagon.FieldDefs.Add('file_load_date', ftDate);
      Client_Vagon.FieldDefs.Add('users_id', ftInteger);
      Client_Vagon.FieldDefs.Add('vagon_model', ftString, 50);
      Client_Vagon.FieldDefs.Add('load_date_of_service', ftString, 50);
      Client_Vagon.FieldDefs.Add('milage_passed', ftString, 20);
      Client_Vagon.FieldDefs.Add('milage_rest', ftString, 20);
      Client_Vagon.FieldDefs.Add('quality_mark', ftString, 20);
      Client_Vagon.FieldDefs.Add('state_vagon', ftString, 20);
      Client_Vagon.FieldDefs.Add('state_date', ftString, 20);
      Client_Vagon.FieldDefs.Add('state_reason', ftString, 20);
      Client_Vagon.FieldDefs.Add('state_place', ftString, 20);
      Client_Vagon.FieldDefs.Add('serial_num', ftString, 20);
      Client_Vagon.FieldDefs.Add('factory', ftString, 20);
      Client_Vagon.FieldDefs.Add('vagon_type', ftString, 20);
      Client_Vagon.FieldDefs.Add('vagon_tara', ftString, 20);
      Client_Vagon.FieldDefs.Add('vagon_load', ftString, 20);
      Client_Vagon.FieldDefs.Add('coupler_length', ftString, 20);
      Client_Vagon.FieldDefs.Add('balance_cost', ftString, 20);
      Client_Vagon.FieldDefs.Add('registry_road', ftString, 20);
      Client_Vagon.FieldDefs.Add('registry_depot', ftString, 20);
      Client_Vagon.FieldDefs.Add('exception_date', ftString, 20);
      Client_Vagon.FieldDefs.Add('exception_reason', ftString, 20);
      Client_Vagon.FieldDefs.Add('residual_value', ftString, 20);
      Client_Vagon.FieldDefs.Add('former_num', ftString, 20);
      Client_Vagon.FieldDefs.Add('registry_station', ftString, 20);
      Client_Vagon.FieldDefs.Add('block_mark', ftString, 20);
      Client_Vagon.FieldDefs.Add('milage_passed_laden', ftString, 20);
      Client_Vagon.FieldDefs.Add('milage_passed_empty', ftString, 20);
      Client_Vagon.CreateDataSet;
      Client_Vagon.LogChanges := False;

      connect := TADOConnection.Create(nil);
      connect.ConnectionString := Fconnect_str;
      connect.KeepConnection   := False;
      connect.LoginPrompt      := False;
      connect.Open;

      SP := TADOStoredProc.Create(nil);
      SP.Connection := Connect;
      SP.ProcedureName := 'sp_fact_milage_modify;1';
      SP.Parameters.Refresh;

      sp_fact_track_files_modify := TADOStoredProc.Create(nil);
      sp_fact_track_files_modify.Connection := connect;
      sp_fact_track_files_modify.ProcedureName := 'sp_fact_track_files_modify';
      sp_fact_track_files_modify.Parameters.Refresh;

      sp_fact_track_files_modify.Parameters.Refresh;
      sp_fact_track_files_modify.Parameters.ParamByName('@files_track_id').Value := files_track_id;
      sp_fact_track_files_modify.Parameters.ParamByName('@type_action'   ).Value := 11;
      sp_fact_track_files_modify.Open;
      data  := LZHUnPack(sp_fact_track_files_modify.FieldByName('doc_image').AsBytes);
      fd    := TStringStream.Create(data);
      file_data := fd.DataString;
      fd.Free;
      files_name := sp_fact_track_files_modify.FieldByName('files_name').AsString;
      files_date := sp_fact_track_files_modify.FieldByName('files_date').AsDateTime;
      users_id   := sp_fact_track_files_modify.FieldByName('users_id').AsInteger;

      MonitorOperInsert('Сохранение данных: ' + files_name);

      str_list := TStringList.Create;
      str_list.Text := file_data;

      for i := 0 to str_list.Count - 1 do begin
        str := str_list.Strings[i];
        try
          StrToInt64(Copy(str, 1, 8));
        except
          continue;
        end;

        Client_Vagon.Append;
        Client_Vagon['num_vagon'     ] := Copy(str, 1,  8);
        Client_Vagon['milage_rest'   ] := Copy(str, 10, 7);
        Client_Vagon['milage_passed_laden'] := Copy(str, 17, 7);
        Client_Vagon['milage_passed_empty'] := Copy(str, 24, 7);
        Client_Vagon['file_load_name'] := files_name;
        Client_Vagon.Post;
      end;


      sp_fact_track_files_modify.Parameters.Refresh;
      sp_fact_track_files_modify.Parameters.ParamByName('@files_track_id'  ).Value := files_track_id;
      sp_fact_track_files_modify.Parameters.ParamByName('@type_action'     ).Value := 3;
      sp_fact_track_files_modify.Parameters.ParamByName('@files_rows_count').Value := Client_Vagon.RecordCount;
      sp_fact_track_files_modify.ExecProc;


      Client_Vagon.First;
      while not Client_Vagon.Eof do begin
        SP.Close;
        SP.Parameters.Refresh;
        SP.Parameters.ParamByName('@fact_milage_id').Value := -9;
        SP.Parameters.ParamByName('@type_action'   ).Value := 3;
        SP.Parameters.ParamByName('@users_id'      ).Value := users_id;

        SP.Parameters.ParamByName('@num_vagon'     ).Value       := Client_Vagon['num_vagon'    ];
        SP.Parameters.ParamByName('@milage_rest'   ).Value       := Client_Vagon['milage_rest'  ];
        SP.Parameters.ParamByName('@milage_passed_laden' ).Value := Client_Vagon['milage_passed_laden'];
        SP.Parameters.ParamByName('@milage_passed_empty' ).Value := Client_Vagon['milage_passed_empty'];
        SP.Parameters.ParamByName('@file_load_name').Value       := Client_Vagon['file_load_name'];
        SP.ExecProc;

        if (Client_Vagon.RecNo mod 10) = 0 then
            MonitorSetCaption2('Сохранение (обработанно ' + IntToStr(Client_Vagon.RecNo) + ' из ' + IntToStr(Client_Vagon.RecordCount) + ')...');

        if (Client_Vagon.RecNo mod 100) = 0 then begin
          sp_fact_track_files_modify.Parameters.Refresh;
          sp_fact_track_files_modify.Parameters.ParamByName('@files_track_id'  ).Value := files_track_id;
          sp_fact_track_files_modify.Parameters.ParamByName('@type_action'     ).Value := 4;
          sp_fact_track_files_modify.Parameters.ParamByName('@files_rows_load' ).Value := Client_Vagon.RecNo;
          sp_fact_track_files_modify.ExecProc;
          MonitorOperUpdate(Client_Vagon.RecordCount, Client_Vagon.RecNo);
        end;

        Client_Vagon.Next;
      end;
      MonitorOperUpdate(Client_Vagon.RecordCount, Client_Vagon.RecNo);
      MonitorOperEnd('Завершено');

      MonitorSetCaption2('Сохранение (обработанно ' + IntToStr(Client_Vagon.RecNo) + ' из ' + IntToStr(Client_Vagon.RecordCount) + ')...');
      sp_fact_track_files_modify.Parameters.Refresh;
      sp_fact_track_files_modify.Parameters.ParamByName('@files_track_id'  ).Value := files_track_id;
      sp_fact_track_files_modify.Parameters.ParamByName('@type_action'     ).Value := 5;
      sp_fact_track_files_modify.Parameters.ParamByName('@files_rows_load' ).Value := Client_Vagon.RecNo;
      sp_fact_track_files_modify.ExecProc;
    except
      on E: Exception do begin
        sp_files_error := TADOStoredProc.Create(nil);
        sp_files_error.ConnectionString := Fconnect_str;
        sp_files_error.ProcedureName := 'sp_fact_track_files_modify';
        sp_files_error.Parameters.Refresh;
        sp_files_error.Parameters.ParamByName('@files_track_id').Value := files_track_id;
        sp_files_error.Parameters.ParamByName('@type_action'   ).Value := 20;
        sp_files_error.Parameters.ParamByName('@files_status'  ).Value := E.Message;
        sp_files_error.ExecProc;

        MonitorOperEnd('Ошибка');

        SaveLogError('1070', 'SaveRun', E.Message, 'Сохранение файла ' + files_name);
        Result := False;
      end;
    end;
  finally
    sp_fact_track_files_modify.Free;
    SP.Free;
    str_list.Free;
    Client_Vagon.Free;
    connect.Free;
  end;
end;

function TThreadFiles.SavePas(files_track_id: integer): boolean;
var    str_list : TStringList;
              i : integer;
   Client_Vagon : TClientDataSet;
             SP : TADOStoredProc;
        connect : TADOConnection;
            str : string;
      file_data : RawByteString;
      data : TArray<Byte>;
        fd : TStringStream;
     files_date : TDateTime;
       users_id : integer;
     files_name : string;
sp_fact_track_files_modify : TADOStoredProc;
            sp_files_error : TADOStoredProc;
begin
  try
    try
      Client_Vagon := TClientDataSet.Create(nil);
      Client_Vagon.FieldDefs.Add('fact_param_id', ftAutoInc);
      Client_Vagon.FieldDefs.Add('num_vagon', ftInteger);
      Client_Vagon.FieldDefs.Add('date_registration', ftString, 20);
      Client_Vagon.FieldDefs.Add('date_build', ftString, 20);
      Client_Vagon.FieldDefs.Add('next_date_repair', ftString, 20);
      Client_Vagon.FieldDefs.Add('next_type_repair', ftString, 2);
      Client_Vagon.FieldDefs.Add('date_last_cap_place', ftString, 20);
      Client_Vagon.FieldDefs.Add('last_cap_place', ftString, 4);
      Client_Vagon.FieldDefs.Add('date_last_depo_place', ftString, 20);
      Client_Vagon.FieldDefs.Add('last_depo_place', ftString, 4);
      Client_Vagon.FieldDefs.Add('vagon_owner_cod', ftString, 20);
      Client_Vagon.FieldDefs.Add('time_of_service', ftString, 20);
      Client_Vagon.FieldDefs.Add('file_load_name', ftString, 100);
      Client_Vagon.FieldDefs.Add('file_load_date', ftDate);
      Client_Vagon.FieldDefs.Add('users_id', ftInteger);
      Client_Vagon.FieldDefs.Add('vagon_model', ftString, 50);
      Client_Vagon.FieldDefs.Add('load_date_of_service', ftString, 50);
      Client_Vagon.FieldDefs.Add('milage_passed', ftString, 20);
      Client_Vagon.FieldDefs.Add('milage_rest', ftString, 20);
      Client_Vagon.FieldDefs.Add('quality_mark', ftString, 20);
      Client_Vagon.FieldDefs.Add('state_vagon', ftString, 20);
      Client_Vagon.FieldDefs.Add('state_date', ftString, 20);
      Client_Vagon.FieldDefs.Add('state_reason', ftString, 20);
      Client_Vagon.FieldDefs.Add('state_place', ftString, 20);
      Client_Vagon.FieldDefs.Add('serial_num', ftString, 20);
      Client_Vagon.FieldDefs.Add('factory', ftString, 20);
      Client_Vagon.FieldDefs.Add('vagon_type', ftString, 20);
      Client_Vagon.FieldDefs.Add('vagon_tara', ftString, 20);
      Client_Vagon.FieldDefs.Add('vagon_load', ftString, 20);
      Client_Vagon.FieldDefs.Add('coupler_length', ftString, 20);
      Client_Vagon.FieldDefs.Add('balance_cost', ftString, 20);
      Client_Vagon.FieldDefs.Add('registry_road', ftString, 20);
      Client_Vagon.FieldDefs.Add('registry_depot', ftString, 20);
      Client_Vagon.FieldDefs.Add('exception_date', ftString, 20);
      Client_Vagon.FieldDefs.Add('exception_reason', ftString, 20);
      Client_Vagon.FieldDefs.Add('residual_value', ftString, 20);
      Client_Vagon.FieldDefs.Add('former_num', ftString, 20);
      Client_Vagon.FieldDefs.Add('registry_station', ftString, 20);
      Client_Vagon.FieldDefs.Add('block_mark', ftString, 20);
      Client_Vagon.FieldDefs.Add('files_track_id', ftInteger);
      Client_Vagon.CreateDataSet;
      Client_Vagon.LogChanges := False;

      connect := TADOConnection.Create(nil);
      connect.ConnectionString := Fconnect_str;
      connect.KeepConnection   := False;
      connect.LoginPrompt      := False;
      connect.Open;

      SP := TADOStoredProc.Create(nil);
      SP.Connection := Connect;
      SP.ProcedureName := 'sp_fact_param_modify;1';
//      SP.ProcedureName := 'sp_xcv';
      SP.Parameters.Refresh;


      sp_fact_track_files_modify := TADOStoredProc.Create(nil);
      sp_fact_track_files_modify.Connection := connect;
      sp_fact_track_files_modify.ProcedureName := 'sp_fact_track_files_modify';
      sp_fact_track_files_modify.Parameters.Refresh;

      sp_fact_track_files_modify.Parameters.Refresh;
      sp_fact_track_files_modify.Parameters.ParamByName('@files_track_id').Value := files_track_id;
      sp_fact_track_files_modify.Parameters.ParamByName('@type_action'   ).Value := 11;
      sp_fact_track_files_modify.Open;
      data  := LZHUnPack(sp_fact_track_files_modify.FieldByName('doc_image').AsBytes);
      fd    := TStringStream.Create(data);
      file_data := fd.DataString;
      fd.Free;
      files_name := sp_fact_track_files_modify.FieldByName('files_name').AsString;
      files_date := sp_fact_track_files_modify.FieldByName('files_date').AsDateTime;
      users_id   := sp_fact_track_files_modify.FieldByName('users_id').AsInteger;

      MonitorOperInsert('Сохранение данных: ' + files_name);

      str_list := TStringList.Create;
      str_list.Text := file_data;

      for i := 0 to str_list.Count - 1 do begin
        str := str_list.Strings[i];
        try
          StrToInt64(Copy(str, 1, 8));
        except
          continue;
        end;


        Client_Vagon.Append;
        Client_Vagon['num_vagon'           ] := Copy(str, 1,   8);
        Client_vagon['block_mark'          ] := Copy(str, 9,   1);
        Client_Vagon['date_registration'   ] := Copy(str, 28,  8);
        Client_Vagon['date_build'          ] := Copy(str, 36,  8);
        Client_Vagon['next_date_repair'    ] := Copy(str, 45,  8);
        Client_Vagon['next_type_repair'    ] := Copy(str, 44,  1);
        Client_Vagon['date_last_cap_place' ] := Copy(str, 113, 8);
        Client_Vagon['last_cap_place'      ] := Copy(str, 109, 4);
        Client_Vagon['date_last_depo_place'] := Copy(str, 125, 8);
        Client_Vagon['last_depo_place'     ] := Copy(str, 121, 4);
        Client_Vagon['vagon_owner_cod'     ] := Copy(str, 171, 6);
        Client_Vagon['time_of_service'     ] := Copy(str, 182, 1);
        Client_Vagon['load_date_of_service'] := Copy(str, 203, 8);
        Client_vagon['quality_mark'        ] := Copy(str, 10,  3);
        Client_vagon['state_vagon'         ] := Copy(str, 13,  1);
        Client_vagon['state_date'          ] := Copy(str, 14,  8);
        Client_vagon['state_reason'        ] := Copy(str, 22,  1);
        Client_vagon['state_place'         ] := Copy(str, 23,  5);
        Client_vagon['serial_num'          ] := Copy(str, 53,  11);
        Client_vagon['factory'             ] := Copy(str, 64,  4);
        Client_vagon['vagon_type'          ] := Copy(str, 68,  4);
        Client_Vagon['vagon_model'         ] := Copy(str, 72,  10);
        Client_vagon['vagon_tara'          ] := Copy(str, 82,  4);
        Client_vagon['vagon_load'          ] := Copy(str, 86,  4);
        Client_vagon['coupler_length'      ] := Copy(str, 90,  6);
        Client_vagon['balance_cost'        ] := Copy(str, 96,  13);
        Client_vagon['registry_road'       ] := Copy(str, 133, 2);
        Client_vagon['registry_depot'      ] := Copy(str, 135, 4);
        Client_vagon['exception_date'      ] := Copy(str, 139, 8);
        Client_vagon['exception_reason'    ] := Copy(str, 147, 3);
        Client_vagon['residual_value'      ] := Copy(str, 150, 13);
        Client_vagon['former_num'          ] := Copy(str, 163, 8);
        Client_vagon['registry_station'    ] := Copy(str, 177, 5);
        Client_Vagon['files_track_id'      ] := files_track_id;
        Client_Vagon.Post;
      end;


      sp_fact_track_files_modify.Parameters.Refresh;
      sp_fact_track_files_modify.Parameters.ParamByName('@files_track_id'  ).Value := files_track_id;
      sp_fact_track_files_modify.Parameters.ParamByName('@type_action'     ).Value := 3;
      sp_fact_track_files_modify.Parameters.ParamByName('@files_rows_count').Value := Client_Vagon.RecordCount;
      sp_fact_track_files_modify.ExecProc;


      Client_Vagon.First;
      while not Client_Vagon.Eof do begin
        SP.Close;
        SP.Parameters.Refresh;
        SP.Parameters.ParamByName('@fact_param_id'       ).Value := -9;
        SP.Parameters.ParamByName('@type_action'         ).Value := 0;
        SP.Parameters.ParamByName('@users_id'            ).Value := users_id;
        SP.Parameters.ParamByName('@num_vagon'           ).Value := Client_Vagon['num_vagon'           ];
        SP.Parameters.ParamByName('@block_mark'          ).Value := Client_Vagon['block_mark'          ];
        SP.Parameters.ParamByName('@quality_mark'        ).Value := Client_Vagon['quality_mark'        ];
        SP.Parameters.ParamByName('@state_vagon'         ).Value := Client_Vagon['state_vagon'         ];
        SP.Parameters.ParamByName('@state_date'          ).Value := Client_Vagon['state_date'          ];
        SP.Parameters.ParamByName('@state_reason'        ).Value := Client_Vagon['state_reason'        ];
        SP.Parameters.ParamByName('@state_place'         ).Value := Client_Vagon['state_place'         ];
        SP.Parameters.ParamByName('@date_registration'   ).Value := Client_Vagon['date_registration'   ];
        SP.Parameters.ParamByName('@date_build'          ).Value := Client_Vagon['date_build'          ];
        SP.Parameters.ParamByName('@next_date_repair'    ).Value := Client_Vagon['next_date_repair'    ];
        SP.Parameters.ParamByName('@next_type_repair_cod').Value := Client_Vagon['next_type_repair'    ];
        SP.Parameters.ParamByName('@serial_num'          ).Value := Client_Vagon['serial_num'          ];
        SP.Parameters.ParamByName('@factory'             ).Value := Client_Vagon['factory'             ];
        SP.Parameters.ParamByName('@vagon_type'          ).Value := Client_Vagon['vagon_type'          ];
        SP.Parameters.ParamByName('@vagon_tara'          ).Value := Client_Vagon['vagon_tara'          ];
        SP.Parameters.ParamByName('@vagon_load'          ).Value := Client_Vagon['vagon_load'          ];
        SP.Parameters.ParamByName('@coupler_length'      ).Value := Client_Vagon['coupler_length'      ];
        SP.Parameters.ParamByName('@balance_cost'        ).Value := Client_Vagon['balance_cost'        ];
        SP.Parameters.ParamByName('@date_last_cap_place' ).Value := Client_Vagon['date_last_cap_place' ];
        SP.Parameters.ParamByName('@last_cap_place_cod'  ).Value := Client_Vagon['last_cap_place'      ];
        SP.Parameters.ParamByName('@date_last_depo_place').Value := Client_Vagon['date_last_depo_place'];
        SP.Parameters.ParamByName('@last_depo_place_cod' ).Value := Client_Vagon['last_depo_place'     ];
        SP.Parameters.ParamByName('@vagon_owner_cod'     ).Value := Client_Vagon['vagon_owner_cod'     ];
        SP.Parameters.ParamByName('@time_of_service_cod' ).Value := Client_Vagon['time_of_service'     ];
        SP.Parameters.ParamByName('@vagon_model'         ).Value := Client_Vagon['vagon_model'         ];
        SP.Parameters.ParamByName('@load_date_of_service').Value := Client_Vagon['load_date_of_service'];
        SP.Parameters.ParamByName('@registry_road'       ).Value := Client_Vagon['registry_road'       ];
        SP.Parameters.ParamByName('@registry_depot'      ).Value := Client_Vagon['registry_depot'      ];
        SP.Parameters.ParamByName('@exception_date'      ).Value := Client_Vagon['exception_date'      ];
        SP.Parameters.ParamByName('@exception_reason'    ).Value := Client_Vagon['exception_reason'    ];
        SP.Parameters.ParamByName('@residual_value'      ).Value := Client_Vagon['residual_value'      ];
        SP.Parameters.ParamByName('@former_num'          ).Value := Client_Vagon['former_num'          ];
        SP.Parameters.ParamByName('@registry_station'    ).Value := Client_Vagon['registry_station'    ];
        SP.Parameters.ParamByName('@files_track_id'      ).Value := Client_Vagon['files_track_id'      ];
        SP.ExecProc;

        if (Client_Vagon.RecNo mod 10) = 0 then
          MonitorSetCaption2(SP.ProcedureName + ':Сохранение (обработанно ' + IntToStr(Client_Vagon.RecNo) + ' из ' + IntToStr(Client_Vagon.RecordCount) + ')...');

        if (Client_Vagon.RecNo mod 100) = 0 then begin
          sp_fact_track_files_modify.Parameters.Refresh;
          sp_fact_track_files_modify.Parameters.ParamByName('@files_track_id'  ).Value := files_track_id;
          sp_fact_track_files_modify.Parameters.ParamByName('@type_action'     ).Value := 4;
          sp_fact_track_files_modify.Parameters.ParamByName('@files_rows_load' ).Value := Client_Vagon.RecNo;
          sp_fact_track_files_modify.ExecProc;

          MonitorOperUpdate(Client_Vagon.RecordCount, Client_Vagon.RecNo);
        end;

        Client_Vagon.Next;
      end;

      MonitorSetCaption2('Сохранение (обработанно ' + IntToStr(Client_Vagon.RecNo) + ' из ' + IntToStr(Client_Vagon.RecordCount) + ')...');
      MonitorOperUpdate(Client_Vagon.RecordCount, Client_Vagon.RecNo);
      MonitorOperEnd('Завершено');

      sp_fact_track_files_modify.Parameters.Refresh;
      sp_fact_track_files_modify.Parameters.ParamByName('@files_track_id'  ).Value := files_track_id;
      sp_fact_track_files_modify.Parameters.ParamByName('@type_action'     ).Value := 5;
      sp_fact_track_files_modify.Parameters.ParamByName('@files_rows_load' ).Value := Client_Vagon.RecNo;
      sp_fact_track_files_modify.ExecProc;
      Result := True;
    except
      on E: Exception do begin
        sp_files_error := TADOStoredProc.Create(nil);
        sp_files_error.ConnectionString := Fconnect_str;
        sp_files_error.ProcedureName := 'sp_fact_track_files_modify';
        sp_files_error.Parameters.Refresh;
        sp_files_error.Parameters.ParamByName('@files_track_id').Value := files_track_id;
        sp_files_error.Parameters.ParamByName('@type_action'   ).Value := 20;
        sp_files_error.Parameters.ParamByName('@files_status'  ).Value := E.Message;
        sp_files_error.ExecProc;

        MonitorOperEnd('Ошибка');
        SaveLogError('1010', 'SavePas', E.Message, 'Сохранение файла ' + files_name);
        Result := False;
      end;
    end;
  finally
    sp_fact_track_files_modify.Free;
    SP.Free;
    str_list.Free;
    Client_Vagon.Free;
    connect.Free;
  end;
end;



function TThreadFiles.SaveDislXML(files_track_id: integer): boolean;
var      connect : TADOConnection;
               Q : TADOQuery;
              Q2 : TADOQuery;
       file_data : RawByteString;
              fd : TStringStream;
            data : TArray<Byte>;
      files_date : TDateTime;
    Client_Vagon : TClientDataSet;
               i : integer;
        users_id : integer;
               w : extended;
             tmp : string;
      files_name : string;
              s1 : string;
     Client_Node : TClientDataSet;
     Client_Road : TClientDataSet;
    Client_State : TClientDataSet;
    Client_Kargo : TClientDataSet;
     Client_OKPO : TClientDataSet;
Client_TrainOper : TClientDataSet;
Client_VagonOper : TClientDataSet;
     Client_Park : TClientDataSet;
Client_VagonTrip : TClientDataSet;
              d1 : TDateTime;
               s : TStringList;


       str_node_cod : TStringList;
       str_road_cod : TStringList;
      str_state_cod : TStringList;
           str_OKPO : TStringList;
 str_kargoETSNG_cod : TStringList;
      str_num_vagon : TStringList;
            str_tmp : TStringList;


sp_fact_track_files_modify : TADOStoredProc;
      sp_fact_track_modify : TADOStoredProc;
            sp_files_error : TADOStoredProc;
   sp_fact_track_trip_find : TADOQuery;


  files_load_date_begin: TDateTime;
  files_load_date_end  : TDateTime;
  set_error            : boolean;
  files_rows_count     : integer;
  files_rows_load      : integer;
  duration_parser      : integer;
  duration_infobj      : integer;
  users_group_id       : integer;
//  k : integer;
//  dt1, dt2 : TDateTime;

  error_num_line : integer;

begin
  try
    try
      error_num_line := 1;
      MonitorSetCaption2('Подготовка файла к загрузке...');
      connect := TADOConnection.Create(nil);
      connect.ConnectionString := Fconnect_str;
      connect.KeepConnection   := False;
      connect.LoginPrompt      := False;
      connect.CommandTimeout   := 300;
      connect.Open;

      error_num_line := 2;
      sp_fact_track_files_modify := TADOStoredProc.Create(nil);
      sp_fact_track_files_modify.Connection := connect;
      sp_fact_track_files_modify.ProcedureName := 'sp_fact_track_files_modify';

      error_num_line := 3;
      SP_fact_track_modify := TADOStoredProc.Create(nil);
      SP_fact_track_modify.Connection := connect;
      SP_fact_track_modify.ProcedureName := 'SP_fact_track_modify';

      sp_fact_track_trip_find := TADOQuery.Create(nil);
      sp_fact_track_trip_find.Connection := connect;
      sp_fact_track_trip_find.CommandTimeout := 300;
//      sp_fact_track_trip_find.ProcedureName := 'sp_fact_track_trip_find';

      Q2 := TADOQuery.Create(nil);
      Q2.Connection := connect;
      Q2.SQL.Add('DECLARE @xml xml, @users_group_id int');
      Q2.SQL.Add('');
      Q2.SQL.Add('SET @xml = ''''');
      Q2.SQL.Add('SET @users_group_id =');
      Q2.SQL.Add('');
      Q2.SQL.Add('SELECT * INTO #fact_save');
      Q2.SQL.Add('FROM');
      Q2.SQL.Add('(	SELECT	id,');
      Q2.SQL.Add('          num_vagon,');
      Q2.SQL.Add('          date_operation,');
      Q2.SQL.Add('          isnull((SELECT top 1 node2_cod	FROM inf_obj_node_node WHERE node1_cod = node_end_cod), node_end_cod) as node_end_cod,');
      Q2.SQL.Add('          isnull((SELECT top 1 node2_cod	FROM inf_obj_node_node WHERE node1_cod = node_begin_cod), node_begin_cod) as node_begin_cod,');
      Q2.SQL.Add('          isnull((SELECT top 1 node2_cod	FROM inf_obj_node_node WHERE node1_cod = node_operation_cod), node_operation_cod) as node_operation_cod');
      Q2.SQL.Add('');
      Q2.SQL.Add('FROM');
      Q2.SQL.Add('(		SELECT	ref.value (''@id'',	''int'')				    	  as id,');
      Q2.SQL.Add('            ref.value (''@nvag'',	''int'')					    as num_vagon,');
      Q2.SQL.Add('            ref.value (''@nend'',	''varchar(max)'')			as node_end_cod,');
      Q2.SQL.Add('            ref.value (''@nbegin'',	''varchar(max)'')		as node_begin_cod,');
      Q2.SQL.Add('            ref.value (''@noper'',	''varchar(max)'')	  as node_operation_cod,');
      Q2.SQL.Add('            cast(left(replace(ref.value (''@doper'',	''varchar(max)''), ''T'', '' ''), 17) as datetime)   as date_operation');
      Q2.SQL.Add('    FROM	  @xml.nodes(''/DATAPACKET/ROWDATA/ROW'') as node(ref)');
      Q2.SQL.Add(') x1');
      Q2.SQL.Add(') x2');
      Q2.SQL.Add('WHERE	(node_end_cod<>node_begin_cod or node_end_cod<>node_operation_cod)');
      Q2.SQL.Add('AND exists(SELECT 1 FROM inf_obj_NODE WHERE inf_obj_cod = node_end_cod)');
      Q2.SQL.Add('');
      Q2.SQL.Add('UPDATE #fact_save SET node_end_cod = ''000000'' WHERE node_end_cod is null');
      Q2.SQL.Add('DELETE #fact_save WHERE node_begin_cod is null or node_operation_cod is null');
      Q2.SQL.Add('');
      Q2.SQL.Add('SELECT		num_vagon, max(date_operation) as date_operation INTO #temp_date_operation');
      Q2.SQL.Add('FROM		fact_track_vagon');
      Q2.SQL.Add('WHERE		users_group_id = @users_group_id and date_operation > dateadd(month, -1, getdate()) and fact_track_trip_id is not null');
      Q2.SQL.Add('GROUP BY	num_vagon');
      Q2.SQL.Add('');
      Q2.SQL.Add('SELECT	max(fact_track_vagon.fact_track_id) fact_track_id INTO #temp_fact_track_id');
      Q2.SQL.Add('FROM	fact_track_vagon');
      Q2.SQL.Add('inner join #temp_date_operation on fact_track_vagon.num_vagon = #temp_date_operation.num_vagon and fact_track_vagon.date_operation = #temp_date_operation.date_operation');
      Q2.SQL.Add('WHERE	users_group_id = @users_group_id and fact_track_trip_id is not null and isnull(set_archive,0) <> 1');
      Q2.SQL.Add('GROUP BY fact_track_vagon.num_vagon');
      Q2.SQL.Add('');
      Q2.SQL.Add('SELECT * INTO #fact_last FROM');
      Q2.SQL.Add('(	SELECT	fact_track_vagon.num_vagon,');
      Q2.SQL.Add('fact_track_vagon.date_operation,');
      Q2.SQL.Add('isnull(isnull(n1.node2_cod, fact_track_vagon.node_end_cod),''000000'') as node_end_cod,');
      Q2.SQL.Add('isnull(n2.node2_cod, fact_track_vagon.node_begin_cod) as node_begin_cod,');
      Q2.SQL.Add('isnull(n3.node2_cod, fact_track_vagon.node_operation_cod) as node_operation_cod,');
      Q2.SQL.Add('fact_track_vagon.fact_track_trip_id');
      Q2.SQL.Add('FROM	#temp_fact_track_id');
      Q2.SQL.Add('inner join fact_track_vagon on #temp_fact_track_id.fact_track_id = fact_track_vagon.fact_track_id');
      Q2.SQL.Add('left join inf_obj_NODE_NODE n1 on n1.node1_cod = fact_track_vagon.node_end_cod');
      Q2.SQL.Add('left join inf_obj_NODE_NODE n2 on n2.node1_cod = fact_track_vagon.node_begin_cod');
      Q2.SQL.Add('left join inf_obj_NODE_NODE n3 on n3.node1_cod = fact_track_vagon.node_operation_cod');
      Q2.SQL.Add(') x1');
      Q2.SQL.Add('WHERE node_end_cod<>node_begin_cod or node_end_cod<>node_operation_cod');
      Q2.SQL.Add('ORDER BY num_vagon');
      Q2.SQL.Add('');
      Q2.SQL.Add('SELECT	#fact_save.id, #fact_last.fact_track_trip_id');
      Q2.SQL.Add('FROM	#fact_save');
      Q2.SQL.Add('inner join #fact_last');
      Q2.SQL.Add('on	#fact_save.num_vagon = #fact_last.num_vagon and');
      Q2.SQL.Add('#fact_save.date_operation >= #fact_last.date_operation and');
      Q2.SQL.Add('#fact_save.node_end_cod = #fact_last.node_end_cod');
      Q2.SQL.Add('ORDER BY 1');
      Q2.SQL.Add('');
      Q2.SQL.Add('DROP TABLE #temp_date_operation');
      Q2.SQL.Add('DROP TABLE #temp_fact_track_id');
      Q2.SQL.Add('DROP TABLE #fact_save');
      Q2.SQL.Add('DROP TABLE #fact_last');



      Client_VagonTrip := TClientDataSet.Create(nil);
      Client_VagonTrip.FieldDefs.Add('id', ftInteger);
      Client_VagonTrip.FieldDefs.Add('nvag', ftString, 9);
      Client_VagonTrip.FieldDefs.Add('nend', ftString, 7);
      Client_VagonTrip.FieldDefs.Add('nbegin', ftString, 7);
      Client_VagonTrip.FieldDefs.Add('noper', ftString, 7);
      Client_VagonTrip.FieldDefs.Add('doper', ftDateTime);
      Client_VagonTrip.CreateDataSet;
      Client_VagonTrip.LogChanges := False;


      error_num_line := 4;
      Client_Vagon := TClientDataSet.Create(nil);
      Client_Vagon.FieldDefs.Add('id', ftAutoInc);
      Client_Vagon.FieldDefs.Add('num_vagon', ftString, 9);
      Client_Vagon.FieldDefs.Add('rod_vagon', ftString, 3);
      Client_Vagon.FieldDefs.Add('type_vagon', ftString, 5);
      Client_Vagon.FieldDefs.Add('state_self', ftString, 3);
      Client_Vagon.FieldDefs.Add('fact_weight', ftFloat);
      Client_Vagon.FieldDefs.Add('node_end_cod', ftString, 7);
      Client_Vagon.FieldDefs.Add('node_begin_cod', ftString, 7);
      Client_Vagon.FieldDefs.Add('kargoETSNG_cod', ftString, 6);
      Client_Vagon.FieldDefs.Add('poluchgr', ftString, 5);
      Client_Vagon.FieldDefs.Add('special_marks', ftString, 4);
      Client_Vagon.FieldDefs.Add('comment', ftString, 7);
      Client_Vagon.FieldDefs.Add('type_park_vagon', ftString, 3);
      Client_Vagon.FieldDefs.Add('cod_operation_cod', ftString, 5);
      Client_Vagon.FieldDefs.Add('node_operation_cod', ftString, 7);
      Client_Vagon.FieldDefs.Add('road_begin_cod', ftString, 3);
      Client_Vagon.FieldDefs.Add('road_end_cod', ftString, 3);
      Client_Vagon.FieldDefs.Add('index_train', ftString, 20);
      Client_Vagon.FieldDefs.Add('num_train', ftString, 5);
      Client_Vagon.FieldDefs.Add('file_load_name', ftString, 201);
      Client_Vagon.FieldDefs.Add('doc_number', ftString, 256);
      Client_Vagon.FieldDefs.Add('fact_track_id', ftInteger);
      Client_Vagon.FieldDefs.Add('is_saved', ftBoolean);
      Client_Vagon.FieldDefs.Add('is_updated', ftBoolean);
      Client_Vagon.FieldDefs.Add('error_text', ftString, 256);
      Client_Vagon.FieldDefs.Add('date_otpr', ftDateTime);
      Client_Vagon.FieldDefs.Add('date_operation', ftDateTime);
      Client_Vagon.FieldDefs.Add('vagon_id', ftInteger);
      Client_Vagon.FieldDefs.Add('vagon_owner_name', ftString, 151);
      Client_Vagon.FieldDefs.Add('grpol_okpo', ftString, 10);
      Client_Vagon.FieldDefs.Add('grotpr_okpo', ftString, 10);
      Client_Vagon.FieldDefs.Add('RW_grpol', ftString, 4);
      Client_Vagon.FieldDefs.Add('RW_grotpr', ftString, 4);
      Client_Vagon.FieldDefs.Add('DateLoading', ftDateTime);
      Client_Vagon.FieldDefs.Add('RW_Rash', ftString, 3);
      Client_Vagon.FieldDefs.Add('idReis', ftString, 50);
      Client_Vagon.FieldDefs.Add('DatePrib', ftDateTime);
      Client_Vagon.FieldDefs.Add('DateVygr', ftDateTime);
      Client_Vagon.FieldDefs.Add('node_begin_name',     ftString, 100); //  16
      Client_Vagon.FieldDefs.Add('node_begin_road_cod', ftString, 50);  //  17
      Client_Vagon.FieldDefs.Add('node_begin_road_name',ftString, 255); //  17
      Client_Vagon.FieldDefs.Add('node_end_name',       ftString, 100); //  16
      Client_Vagon.FieldDefs.Add('node_end_road_cod',   ftString, 50);  //  17
      Client_Vagon.FieldDefs.Add('node_end_road_name',  ftString, 255); //  17
      Client_Vagon.FieldDefs.Add('node_operation_name', ftString, 100); //  16
      Client_Vagon.FieldDefs.Add('road_operation_cod',  ftString, 50);  //  17
      Client_Vagon.FieldDefs.Add('road_operation_name', ftString, 255); //  17
      Client_Vagon.FieldDefs.Add('road_begin_name',     ftString, 255); //  13
      Client_Vagon.FieldDefs.Add('road_end_name',       ftString, 255); //  13
      Client_Vagon.FieldDefs.Add('kargoETSNG_name',     ftString, 255); //  10
      Client_Vagon.FieldDefs.Add('cod_operation_train_id', ftInteger);
      Client_Vagon.FieldDefs.Add('cod_operation_vagon_id', ftInteger);
      Client_Vagon.FieldDefs.Add('type_park_vagon_id', ftInteger);
      Client_Vagon.FieldDefs.Add('nPut', ftString, 50);
      Client_Vagon.FieldDefs.Add('nPark', ftString, 50);
      Client_Vagon.FieldDefs.Add('state_begin_cod',  ftString,  10);
      Client_Vagon.FieldDefs.Add('state_begin_name', ftString, 200);
      Client_Vagon.FieldDefs.Add('state_end_cod',    ftString,  10);
      Client_Vagon.FieldDefs.Add('state_end_name',   ftString, 200);
      Client_Vagon.FieldDefs.Add('fact_track_trip_id',  ftInteger);
      Client_Vagon.FieldDefs.Add('IsEmpty', ftBoolean);
      Client_Vagon.FieldDefs.Add('grpol_name',  ftString, 300);
      Client_Vagon.FieldDefs.Add('grotpr_name', ftString, 300);
      Client_Vagon.FieldDefs.Add('nvp', ftInteger);
      Client_Vagon.FieldDefs.Add('OwnerOkpo', ftString, 20);
      Client_Vagon.FieldDefs.Add('OwnerOkpoName', ftString, 300);
      Client_Vagon.FieldDefs.Add('ArendOkpo', ftString, 20);
      Client_Vagon.FieldDefs.Add('ArendOkpoName', ftString, 300);
      Client_Vagon.FieldDefs.Add('OperName', ftString, 300);
      Client_Vagon.FieldDefs.Add('OperDateEnd', ftDateTime);

      error_num_line := 5;

      Client_Vagon.IndexFieldNames := 'id';
      Client_Vagon.CreateDataSet;
      Client_Vagon.LogChanges := False;

      error_num_line := 6;
      Client_Node := TClientDataSet.Create(nil);
      Client_Node.FieldDefs.Add('search_cod',ftString,   6);
      Client_Node.FieldDefs.Add('node_cod'  ,ftString,   6);
      Client_Node.FieldDefs.Add('node_name' ,ftString, 100);
      Client_Node.FieldDefs.Add('road_cod'  ,ftString,   6);
      Client_Node.FieldDefs.Add('road_name' ,ftString, 100);
      Client_Node.CreateDataSet;
      Client_Node.LogChanges := False;
      Client_Node.IndexDefs.Add('ClientDS_Index1', 'search_cod', []);
      Client_Node.IndexName := 'ClientDS_Index1';

      error_num_line := 7;
      Client_Road := TClientDataSet.Create(nil);
      Client_Road.FieldDefs.Add('search_cod',ftString,   6);
      Client_Road.FieldDefs.Add('road_cod'  ,ftString,   6);
      Client_Road.FieldDefs.Add('road_name' ,ftString, 100);
      Client_Road.CreateDataSet;
      Client_Road.LogChanges := False;
      Client_Road.IndexDefs.Add('ClientDS_Index2', 'search_cod', []);
      Client_Road.IndexName := 'ClientDS_Index2';

      error_num_line := 8;
      Client_Kargo := TClientDataSet.Create(nil);
      Client_Kargo.FieldDefs.Add('search_cod' ,ftString,   6);
      Client_Kargo.FieldDefs.Add('kargo_cod'  ,ftString,   6);
      Client_Kargo.FieldDefs.Add('kargo_name' ,ftString, 100);
      Client_Kargo.CreateDataSet;
      Client_Kargo.LogChanges := False;
      Client_Kargo.IndexDefs.Add('ClientDS_Index3', 'search_cod', []);
      Client_Kargo.IndexName := 'ClientDS_Index3';

      error_num_line := 9;
      Client_TrainOper := TClientDataSet.Create(nil);
      Client_TrainOper.FieldDefs.Add('inf_obj_id'  ,ftInteger);
      Client_TrainOper.FieldDefs.Add('search_cod' ,ftString,   6);
      Client_TrainOper.CreateDataSet;
      Client_TrainOper.LogChanges := False;
      Client_TrainOper.IndexDefs.Add('ClientDS_Index4', 'search_cod', []);
      Client_TrainOper.IndexName := 'ClientDS_Index4';

      error_num_line := 10;
      Client_VagonOper := TClientDataSet.Create(nil);
      Client_VagonOper.FieldDefs.Add('inf_obj_id'  ,ftInteger);
      Client_VagonOper.FieldDefs.Add('search_cod' ,ftString,   6);
      Client_VagonOper.CreateDataSet;
      Client_VagonOper.LogChanges := False;
      Client_VagonOper.IndexDefs.Add('ClientDS_Index5', 'search_cod', []);
      Client_VagonOper.IndexName := 'ClientDS_Index5';


      error_num_line := 11;
      Client_Park := TClientDataSet.Create(nil);
      Client_Park.FieldDefs.Add('inf_obj_id'  ,ftInteger);
      Client_Park.FieldDefs.Add('search_cod' ,ftString,   6);
      Client_Park.CreateDataSet;
      Client_Park.LogChanges := False;
      Client_Park.IndexDefs.Add('ClientDS_Index6', 'search_cod', []);
      Client_Park.IndexName := 'ClientDS_Index6';


      Client_State := TClientDataSet.Create(nil);
      Client_State.FieldDefs.Add('search_cod' ,ftString,   6);
      Client_State.FieldDefs.Add('state_cod'  ,ftString,   6);
      Client_State.FieldDefs.Add('state_name' ,ftString, 100);
      Client_State.CreateDataSet;
      Client_State.LogChanges := False;
      Client_State.IndexDefs.Add('ClientDS_Index7', 'search_cod', []);
      Client_State.IndexName := 'ClientDS_Index7';


      Client_OKPO := TClientDataSet.Create(nil);
      Client_OKPO.FieldDefs.Add('firm_okpo_cod' ,ftString,  20);
      Client_OKPO.FieldDefs.Add('firm_okpo_name',ftString, 300);
      Client_OKPO.CreateDataSet;
      Client_OKPO.LogChanges := False;
      Client_OKPO.IndexDefs.Add('ClientDS_Index8', 'firm_okpo_cod', []);
      Client_OKPO.IndexName := 'ClientDS_Index8';
      //**************************************************************************


      error_num_line := 12;
      Q := TADOQuery.Create(nil);
      Q.ConnectionString := Fconnect_str;
      Q.CommandTimeout   := 600;

      error_num_line := 13;
      str_node_cod := TStringList.Create;
      str_node_cod.Duplicates := dupIgnore;
      str_node_cod.Sorted := True;

      error_num_line := 14;
      str_road_cod := TStringList.Create;
      str_road_cod.Duplicates := dupIgnore;
      str_road_cod.Sorted := True;

      error_num_line := 15;
      str_kargoETSNG_cod := TStringList.Create;
      str_kargoETSNG_cod.Duplicates := dupIgnore;
      str_kargoETSNG_cod.Sorted := True;

      error_num_line := 16;
      str_num_vagon := TStringList.Create;
      str_num_vagon.Duplicates := dupIgnore;
      str_num_vagon.Sorted := True;

      str_state_cod := TStringList.Create;
      str_state_cod.Duplicates := dupIgnore;
      str_state_cod.Sorted := True;

      str_OKPO := TStringList.Create;
      str_OKPO.Duplicates := dupIgnore;
      str_OKPO.Sorted := True;

      error_num_line := 17;
      str_tmp := TStringList.Create;


      // Ищем файл
      error_num_line := 18;
      sp_fact_track_files_modify.Parameters.Refresh;
      error_num_line := 180001;
      sp_fact_track_files_modify.Parameters.ParamByName('@files_track_id').Value := files_track_id;
      error_num_line := 180002;
      sp_fact_track_files_modify.Parameters.ParamByName('@type_action'   ).Value := 11;
      error_num_line := 180003;
      sp_fact_track_files_modify.Open;
      error_num_line := 180004;
      data  := LZHUnPack(sp_fact_track_files_modify.FieldByName('doc_image').AsBytes);
      error_num_line := 180005;
      fd    := TStringStream.Create(data);
      error_num_line := 180006;
      file_data := fd.DataString;
      error_num_line := 180007;
      fd.Free;


      error_num_line := 19;
      files_name := sp_fact_track_files_modify.FieldByName('files_name').AsString;
      files_date := sp_fact_track_files_modify.FieldByName('files_date').AsDateTime;
      users_id   := sp_fact_track_files_modify.FieldByName('users_id').AsInteger;


      Q.SQL.Clear;
      Q.SQL.Add('SELECT * FROM users WHERE users_id = ' + IntToStr(users_id));
      Q.Open;
      users_group_id := Q.FieldByName('users_group_id').AsInteger;

      MonitorOperInsert('Подготовка файла к загрузке: ' + files_name);

      error_num_line := 20;
      files_load_date_begin := Now;
      files_load_date_end   := 0;
      set_error             := False;
      files_rows_count      := 0;
      files_rows_load       := 0;
      duration_parser  := 0;
      duration_infobj  := 0;
      UpdateStatusFiles(files_track_id, 'Поиск записей', files_load_date_begin, files_load_date_end, set_error, files_rows_count, files_rows_load, duration_parser, duration_infobj);

      error_num_line := 21;

      if Pos('encoding="Windows-1251"', file_data) <> 0 then
        s1 := file_data
      else
        s1 := UTF8ToString(file_data);

      s1 := ReplaceStr(s1, #10, '');
      s1 := ReplaceStr(s1, #13, '');
      s1 := ReplaceStr(s1, '<Car', #13#10'<Car');
      str_tmp.Text := s1;

      error_num_line := 22;

      d1 := Now;
      for i := 0 to str_tmp.Count-1 do begin
        if LeftStr(str_tmp.Strings[i],4) = '<Car' then begin
          s1 := str_tmp.Strings[i];

          LisSleep();

          error_num_line := 100;
          Client_Vagon.Append;
          // Номер вагона
          error_num_line := 101;
          Client_Vagon.FieldByName('num_vagon').Value := GetXMLTagValueString(s1, 'Number');
          // Дата отправления
          error_num_line := 102;
          Client_Vagon.FieldByName('date_otpr').Value := GetXMLTagValueDatetime(s1, 'DateBegin');
          // Фактический вес
          error_num_line := 103;
          if GetXMLTagValueString(s1, 'Weight') <> null then begin
            if GetXMLTagValueString(s1, 'Weight') <> '' then begin
              w := GetXMLTagValueString(s1, 'Weight');
              w := w/1000;
              Client_Vagon.FieldByName('fact_weight').Value := w;
            end;
          end;
          //Код станции назначения
          error_num_line := 104;
          Client_Vagon.FieldByName('node_end_cod').Value := GetXMLTagValueString(s1, 'StationDest');
          //Код груза ЕТСНГ
          error_num_line := 105;
          Client_Vagon.FieldByName('kargoETSNG_cod').Value := GetXMLTagValueString(s1, 'CodeCargo');
          //Код грузополучателя
          error_num_line := 106;
          Client_Vagon.FieldByName('poluchgr').Value := GetXMLTagValueString(s1, 'RW_grpol');

          error_num_line := 107;
          if GetXMLTagValueString(s1, 'IsFaulty') = '0' then
            Client_Vagon.FieldByName('type_park_vagon').Value := '1'
          else if GetXMLTagValueString(s1, 'IsFaulty') = '1' then
            Client_Vagon.FieldByName('type_park_vagon').Value := '0';

          //Код станции отправления
          error_num_line := 108;
          Client_Vagon.FieldByName('node_begin_cod'     ).Value := GetXMLTagValueString(s1, 'StationBegin');
          //Код операции
          error_num_line := 109;
          Client_Vagon.FieldByName('cod_operation_cod'  ).Value := RightStr('00' + VarToStr(GetXMLTagValueString(s1, 'CodeOper')),2);
          //Дата операции
          error_num_line := 110;
          Client_Vagon.FieldByName('date_operation'     ).Value := GetXMLTagValueDatetime(s1, 'DateOper');
          //Станция операции
          error_num_line := 111;
          Client_Vagon.FieldByName('node_operation_cod' ).Value := GetXMLTagValueString(s1, 'StationOper');
          //Код дороги отправления
          error_num_line := 112;
          Client_Vagon.FieldByName('road_begin_cod'     ).Value := GetXMLTagValueString(s1, 'RW_Rash');
          //Код дороги назначения
          error_num_line := 113;
          Client_Vagon.FieldByName('road_end_cod'       ).Value := GetXMLTagValueString(s1, 'RW_Dest');

          // Код страны отправления
          Client_Vagon.FieldByName('state_begin_cod'    ).Value := GetXMLTagValueString(s1, 'strO');

          // Код страны назначения
          Client_Vagon.FieldByName('state_end_cod'      ).Value := GetXMLTagValueString(s1, 'strN');

          //Индекс поезда
          error_num_line := 114;
          tmp := LeftStr(VarToStr(GetXMLTagValueString(s1, 'I1')) + '00000',5);
          tmp := tmp + '-' + VarToStr(GetXMLTagValueString(s1, 'I2'));
          tmp := tmp + '-' + LeftStr(VarToStr(GetXMLTagValueString(s1, 'I3')) + '00000',5);
          if tmp = '' then tmp := '0000000000000';
          error_num_line := 115;
          Client_Vagon.FieldByName('index_train').Value := tmp;

          //Номер поезда
          error_num_line := 116;
          Client_Vagon.FieldByName('num_train'      ).Value := GetXMLTagValueString(s1, 'NumTrain');
          //Имя загружаемого файла
          error_num_line := 117;
          Client_Vagon.FieldByName('file_load_name' ).Value := files_name;
          //Номер накладной
          error_num_line := 118;
          Client_Vagon.FieldByName('doc_number'     ).Value := GetXMLTagValueString(s1, 'DocNumber');
          //Код грузополучателя
          error_num_line := 119;
          Client_Vagon.FieldByName('grpol_okpo'     ).Value := GetXMLTagValueString(s1, 'OKPO_grpol');
          //Код грузоотправителя
          error_num_line := 120;
          Client_Vagon.FieldByName('grotpr_okpo'    ).Value := GetXMLTagValueString(s1, 'OKPO_grotpr');
          //жд код грузополучателя
          error_num_line := 121;
          Client_Vagon.FieldByName('RW_grpol'       ).Value := GetXMLTagValueString(s1, 'RW_grpol');
          //жд код грузоотправителя
          error_num_line := 122;
          Client_Vagon.FieldByName('RW_grotpr'      ).Value := GetXMLTagValueString(s1, 'RW_grotpr');
          //Дата погрузки
          error_num_line := 123;
          Client_Vagon.FieldByName('DateLoading'    ).Value := GetXMLTagValueDatetime(s1, 'DateLoading');
          //Расчетная дорога
          error_num_line := 124;
          Client_Vagon.FieldByName('RW_Rash'        ).Value := GetXMLTagValueString(s1, 'RW_Rash');

          error_num_line := 125;
          Client_Vagon.FieldByName('idReis'         ).Value := GetXMLTagValueString(s1, 'idReis');
          error_num_line := 126;
          Client_Vagon.FieldByName('DatePrib'       ).Value := GetXMLTagValueDatetime(s1, 'DatePrib');
          error_num_line := 127;
          Client_Vagon.FieldByName('DateVygr'       ).Value := GetXMLTagValueDatetime(s1, 'DateVygr');
          error_num_line := 128;
          Client_Vagon.FieldByName('nPut'           ).Value := GetXMLTagValueString(s1, 'nPut');
          error_num_line := 129;
          Client_Vagon.FieldByName('nPark'          ).Value := GetXMLTagValueString(s1, 'nPark');
          error_num_line := 130;
          Client_Vagon.FieldByName('nvp'            ).Value := GetXMLTagValueString(s1, 'nvp');


          Client_Vagon.FieldByName('OwnerOkpo'      ).Value := GetXMLTagValueString(s1, 'OwnerOkpo');
          Client_Vagon.FieldByName('OwnerOkpoName'  ).Value := GetXMLTagValueString(s1, 'OwnerOkpoName');
          Client_Vagon.FieldByName('ArendOkpo'      ).Value := GetXMLTagValueString(s1, 'ArendOkpo');
          Client_Vagon.FieldByName('ArendOkpoName'  ).Value := GetXMLTagValueString(s1, 'ArendOkpoName');
          Client_Vagon.FieldByName('OperName'       ).Value := GetXMLTagValueString(s1, 'OperName');
          Client_Vagon.FieldByName('OperDateEnd'    ).Value := GetXMLTagValueDatetime(s1, 'OperDateEnd');

          error_num_line := 131;
          if GetXMLTagValueString(s1, 'IsEmpty') = '0' then Client_Vagon.FieldByName('IsEmpty').Value := 0
          else Client_Vagon.FieldByName('IsEmpty').Value := 1;

          // Замена пустых станций предыдущими (закрыто 11.05.2018)
          // Алгоритм не сработал (закрыто 14.05.2018)
//          // Если Станция отправления/назначения пустая (Поиск предыдущей операции)
//          if Client_Vagon.FieldByName('node_begin_cod').IsNull then begin
//            error_num_line := 132;
//            Q.SQL.Clear;
//            Q.SQL.Add('SELECT TOP 1 node_begin_cod');
//            Q.SQL.Add('FROM FACT_TRACK_VAGON');
//            Q.SQL.Add('WHERE users_group_id = ' + IntToStr(users_group_id));
//            Q.SQL.Add('AND num_vagon = ' + Client_Vagon.FieldByName('num_vagon').AsString);
//            Q.SQL.Add('AND date_operation < ''' + FormatDateTime('yyyymmdd hh:nn:ss', Client_Vagon.FieldByName('date_operation').AsDateTime) + '''');
//            Q.SQL.Add('AND node_begin_cod IS NOT NULL');
//            Q.SQL.Add('ORDER BY date_operation DESC');
//            Q.Open;
//
//            Client_Vagon.FieldByName('node_begin_cod').Value := Q.FieldByName('node_begin_cod').Value;
//          end;
//          if Client_Vagon.FieldByName('node_end_cod').IsNull then begin
//            error_num_line := 132;
//            Q.SQL.Clear;
//            Q.SQL.Add('SELECT TOP 1 node_end_cod');
//            Q.SQL.Add('FROM FACT_TRACK_VAGON');
//            Q.SQL.Add('WHERE users_group_id = ' + IntToStr(users_group_id));
//            Q.SQL.Add('AND num_vagon = ' + Client_Vagon.FieldByName('num_vagon').AsString);
//            Q.SQL.Add('AND date_operation < ''' + FormatDateTime('yyyymmdd hh:nn:ss', Client_Vagon.FieldByName('date_operation').AsDateTime) + '''');
//            Q.SQL.Add('AND node_end_cod IS NOT NULL');
//            Q.SQL.Add('ORDER BY date_operation DESC');
//            Q.Open;
//
//            Client_Vagon.FieldByName('node_end_cod').Value := Q.FieldByName('node_end_cod').Value;
//          end;

          Client_Vagon.Post;


          error_num_line := 134;
          str_node_cod.Add(Client_Vagon.FieldByName('node_begin_cod').AsString);
          error_num_line := 135;
          str_node_cod.Add(Client_Vagon.FieldByName('node_end_cod').AsString);
          error_num_line := 136;
          str_node_cod.Add(Client_Vagon.FieldByName('node_operation_cod').AsString);
          error_num_line := 137;
          str_road_cod.Add(Client_Vagon.FieldByName('road_begin_cod').AsString);
          error_num_line := 138;
          str_road_cod.Add(Client_Vagon.FieldByName('road_end_cod').AsString);
          error_num_line := 139;
          str_kargoETSNG_cod.Add(Client_Vagon.FieldByName('kargoETSNG_cod').AsString);
          error_num_line := 140;
          str_num_vagon.Add(Client_Vagon.FieldByName('num_vagon').AsString);
          error_num_line := 141;
          str_state_cod.Add(Client_Vagon.FieldByName('state_begin_cod').AsString);
          str_state_cod.Add(Client_Vagon.FieldByName('state_end_cod').AsString);
          error_num_line := 142;
          str_OKPO.Add(Trim(Client_Vagon.FieldByName('grpol_okpo').AsString));
          str_OKPO.Add(Trim(Client_Vagon.FieldByName('grotpr_okpo').AsString));
        end;

        if (i mod 1000) = 0 then begin
          MonitorSetCaption2('Подготовка файла к загрузке (обработанно ' + IntToStr(i) + ' из ' + IntToStr(str_tmp.Count) + ')...');
          MonitorOperUpdate(str_tmp.Count, i);
        end;
      end;
      MonitorSetCaption2('Подготовка файла к загрузке (обработанно ' + IntToStr(i) + ' из ' + IntToStr(str_tmp.Count) + ')...');
      MonitorOperUpdate(str_tmp.Count, i);
      MonitorOperEnd('Завершено');

      MonitorOperInsert('Обновление справочников: ' + files_name);
      error_num_line := 148;

      files_rows_count := Client_Vagon.RecordCount;
      duration_parser  := MilliSecondsBetween(Now, d1);
      UpdateStatusFiles(files_track_id, 'Подготовка справочников', files_load_date_begin, files_load_date_end, set_error, files_rows_count, files_rows_load, duration_parser, duration_infobj);
      d1 := Now;
      error_num_line := 149;

      Q.SQL.Clear;
      Q.SQL.Add('SELECT inf_obj_cod, inf_obj_id FROM inf_obj WHERE (type_inf_id = 115)');
      Q.SQL.Add('AND ' + DateToSQL(files_date) + ' BETWEEN date_begin AND ISNULL(date_end,GETDATE())');
      Q.Open;
      Q.First;
      while not Q.Eof do begin
        Client_TrainOper.Append;
        Client_TrainOper.FieldByName('search_cod' ).Value := Q.FieldByName('inf_obj_cod').Value;
        Client_TrainOper.FieldByName('inf_obj_id' ).Value := Q.FieldByName('inf_obj_id').Value;
        Client_TrainOper.Post;
        Q.Next;
      end;

      error_num_line := 150;

      Q.SQL.Clear;
      Q.SQL.Add('SELECT inf_obj_cod, inf_obj_id FROM inf_obj WHERE (type_inf_id = 114)');
      Q.SQL.Add('AND ' + DateToSQL(files_date) + ' BETWEEN date_begin AND ISNULL(date_end,GETDATE())');
      Q.Open;
      Q.First;
      while not Q.Eof do begin
        Client_VagonOper.Append;
        Client_VagonOper.FieldByName('search_cod' ).Value := Q.FieldByName('inf_obj_cod').Value;
        Client_VagonOper.FieldByName('inf_obj_id' ).Value := Q.FieldByName('inf_obj_id').Value;
        Client_VagonOper.Post;
        Q.Next;
      end;

      error_num_line := 151;
      Q.SQL.Clear;
      Q.SQL.Add('SELECT inf_obj_cod, inf_obj_id FROM inf_obj WHERE (type_inf_id = 119)');
      Q.SQL.Add('AND ' + DateToSQL(files_date) + ' BETWEEN date_begin AND ISNULL(date_end,GETDATE())');
      Q.Open;
      Q.First;
      while not Q.Eof do begin
        Client_Park.Append;
        Client_Park.FieldByName('search_cod' ).Value := Q.FieldByName('inf_obj_cod').Value;
        Client_Park.FieldByName('inf_obj_id' ).Value := Q.FieldByName('inf_obj_id').Value;
        Client_Park.Post;
        Q.Next;
      end;

      error_num_line := 152;

      Q.SQL.Clear;
      Q.SQL.Add('DECLARE @str_node_cod varchar(max), @date_from_to datetime');
      Q.SQL.Add('SET @date_from_to = ' + DateToSQL(files_date));
      Q.SQL.Add('SET @str_node_cod = ''' + str_node_cod.CommaText + '''');
      Q.SQL.Add('SELECT	  x1.cod,');
      Q.SQL.Add('         inf_obj_NODE.inf_obj_id, inf_obj_NODE.inf_obj_name, inf_obj_NODE.inf_obj_cod,');
      Q.SQL.Add('         inf_obj_NODE.road_id, inf_obj_ROAD.inf_obj_cod as road_cod, inf_obj_ROAD.inf_obj_name as road_name');
      Q.SQL.Add('FROM	    inf_obj_NODE');
      Q.SQL.Add('         inner join (SELECT cod FROM dbo.StrToTblStr(@str_node_cod, default) WHERE cod is not null and len(cod) = 6) x1 on inf_obj_NODE.inf_obj_cod = x1.cod');
      Q.SQL.Add('         left join inf_obj_ROAD on inf_obj_NODE.road_id = inf_obj_ROAD.inf_obj_id');
      Q.SQL.Add('WHERE	  @date_from_to BETWEEN inf_obj_NODE.date_begin AND ISNULL(inf_obj_NODE.date_end,GETDATE())');
      Q.SQL.Add('         and len(cod) = 6');
      Q.SQL.Add('UNION');
      Q.SQL.Add('SELECT	  x1.cod,');
      Q.SQL.Add('         inf_obj_NODE.inf_obj_id, inf_obj_NODE.inf_obj_name, inf_obj_NODE.inf_obj_cod,');
      Q.SQL.Add('         inf_obj_NODE.road_id, inf_obj_ROAD.inf_obj_cod as road_cod, inf_obj_ROAD.inf_obj_name as road_name');
      Q.SQL.Add('FROM	    inf_obj_NODE');
      Q.SQL.Add('         inner join (SELECT cod, RIGHT(''00000'' + LEFT(cod, 5), 5) as cod_5 FROM dbo.StrToTblStr(@str_node_cod, default) WHERE cod is not null and len(cod) <> 6) x1 on RIGHT(''00000'' + LEFT(inf_obj_NODE.inf_obj_cod, 5), 5) = x1.cod_5');
      Q.SQL.Add('         left join inf_obj_ROAD on inf_obj_NODE.road_id = inf_obj_ROAD.inf_obj_id');
      Q.SQL.Add('WHERE	  @date_from_to BETWEEN inf_obj_NODE.date_begin AND ISNULL(inf_obj_NODE.date_end,GETDATE())');
      Q.SQL.Add('         and len(cod) <>6');
      Q.Open;


      error_num_line := 153;
      Q.First;
      while not Q.Eof do begin
        Client_Node.Append;
        Client_Node.FieldByName('search_cod' ).Value := Q.FieldByName('cod').Value;
        Client_Node.FieldByName('node_cod'   ).Value := Q.FieldByName('inf_obj_cod').Value;
        Client_Node.FieldByName('node_name'  ).Value := Q.FieldByName('inf_obj_name').Value;
        Client_Node.FieldByName('road_cod'   ).Value := Q.FieldByName('road_cod').Value;
        Client_Node.FieldByName('road_name'  ).Value := Q.FieldByName('road_name').Value;
        Client_Node.Post;
        Q.Next;
      end;

      error_num_line := 154;

      Q.SQL.Clear;
      Q.SQL.Add('DECLARE @str_road_cod varchar(max), @date_from_to datetime');
      Q.SQL.Add('SET @date_from_to = ' + DateToSQL(files_date));
      Q.SQL.Add('SET @str_road_cod = ''' + str_road_cod.CommaText + '''');
      Q.SQL.Add('SELECT cod, inf_obj_id, inf_obj_cod, inf_obj_name');
      Q.SQL.Add('FROM	  inf_obj_ROAD');
      Q.SQL.Add('       inner join (SELECT cod, RIGHT(''000'' + LEFT(cod, 3), 3) as cod_3 FROM dbo.StrToTblStr(@str_road_cod, default) WHERE cod is not null) x1');
      Q.SQL.Add('       on RIGHT(''000'' + LEFT(inf_obj_ROAD.inf_obj_cod, 3), 3) = x1.cod_3');
      Q.SQL.Add('WHERE	@date_from_to BETWEEN date_begin AND ISNULL(date_end,GETDATE())');
      Q.SQL.Add('ORDER BY cod, inf_obj_id');
      Q.Open;
      Q.First;
      while not Q.Eof do begin
        Client_Road.Append;
        Client_Road.FieldByName('search_cod' ).Value := Q.FieldByName('cod').Value;
        Client_Road.FieldByName('road_cod'   ).Value := Q.FieldByName('inf_obj_cod').Value;
        Client_Road.FieldByName('road_name'  ).Value := Q.FieldByName('inf_obj_name').Value;
        Client_Road.Post;
        Q.Next;
      end;


      Q.SQL.Clear;
      Q.SQL.Add('DECLARE @str_state_cod varchar(max)');
      Q.SQL.Add('SET @str_state_cod = ''' + str_state_cod.CommaText + '''');
      Q.SQL.Add('SELECT	cod, inf_obj_id, inf_obj_cod, inf_obj_name');
      Q.SQL.Add('FROM	  inf_obj_STATE');
      Q.SQL.Add('        inner join (SELECT cod, RIGHT(''000'' + LEFT(cod, 3), 3) as cod_3 FROM dbo.StrToTblStr(@str_state_cod, default) WHERE cod is not null) x1');
      Q.SQL.Add('        on RIGHT(''000'' + LEFT(inf_obj_STATE.inf_obj_cod, 3), 3) = x1.cod_3');
      Q.SQL.Add('ORDER BY cod, inf_obj_id');
      Q.Open;
      Q.First;
      while not Q.Eof do begin
        Client_State.Append;
        Client_State.FieldByName('search_cod' ).Value := Q.FieldByName('cod').Value;
        Client_State.FieldByName('state_cod'  ).Value := Q.FieldByName('inf_obj_cod').Value;
        Client_State.FieldByName('state_name' ).Value := Q.FieldByName('inf_obj_name').Value;
        Client_State.Post;
        Q.Next;
      end;

      error_num_line := 155;

      Q.SQL.Clear;
      Q.SQL.Add('DECLARE @str_kargoETSNG_cod varchar(max), @date_from_to datetime');
      Q.SQL.Add('SET @date_from_to = ' + DateToSQL(files_date));
      Q.SQL.Add('SET @str_kargoETSNG_cod = ''' + str_kargoETSNG_cod.CommaText + '''');
      Q.SQL.Add('SELECT	cod, inf_obj_id, inf_obj_cod, inf_obj_name');
      Q.SQL.Add('FROM	  inf_obj_ETSNG');
      Q.SQL.Add('       inner join (SELECT cod, RIGHT(''00000'' + LEFT(cod, 5), 5) as cod_5 FROM dbo.StrToTblStr(@str_kargoETSNG_cod, default) WHERE cod is not null) x1');
      Q.SQL.Add('       on RIGHT(''00000'' + LEFT(inf_obj_ETSNG.inf_obj_cod, 5), 5) = x1.cod_5');
      Q.SQL.Add('WHERE	@date_from_to BETWEEN date_begin AND ISNULL(date_end,GETDATE())');
      Q.SQL.Add('ORDER BY cod, inf_obj_id');
      Q.Open;
      Q.First;
      while not Q.Eof do begin
        Client_Kargo.Append;
        Client_Kargo.FieldByName('search_cod' ).Value := Q.FieldByName('cod').Value;
        Client_Kargo.FieldByName('kargo_cod'  ).Value := Q.FieldByName('inf_obj_cod').Value;
        Client_Kargo.FieldByName('kargo_name' ).Value := Q.FieldByName('inf_obj_name').Value;
        Client_Kargo.Post;
        Q.Next;
      end;


      Q.SQL.Clear;
      Q.SQL.Add('DECLARE @str_OKPO varchar(max) ');
      Q.SQL.Add('SET @str_OKPO = ''' + str_OKPO.CommaText + ''' ');
      Q.SQL.Add('SELECT	firm_okpo_cod, firm_okpo_name ');
      Q.SQL.Add('FROM	  firm_okpo');
      Q.SQL.Add('       JOIN (SELECT cod AS cod FROM dbo.StrToTblStr(@str_OKPO, default) WHERE cod IS NOT NULL) x1');
      Q.SQL.Add('       on RIGHT(''00000''+ RTRIM(LTRIM(firm_okpo_cod)), 10) = RIGHT(''00000''+ x1.cod, 10)');
      Q.SQL.Add('ORDER BY firm_okpo_cod');
      Q.Open;
      Q.First;
      while not Q.Eof do begin
        Client_OKPO.Append;
        Client_OKPO.FieldByName('firm_okpo_cod' ).Value := Q.FieldByName('firm_okpo_cod').Value;
        Client_OKPO.FieldByName('firm_okpo_name').Value := Q.FieldByName('firm_okpo_name').Value;
        Client_OKPO.Post;
        Q.Next;
      end;
      //**************************************************************************

      error_num_line := 156;

      Q.SQL.Clear;
      Q.SQL.Add('SELECT cod as num_vagon INTO #num_vagon FROM dbo.StrToTbl(''' + str_num_vagon.CommaText + ''', default)');
      Q.SQL.Add('SELECT	view_vagon.vagon_id, view_vagon.num_vagon');
      Q.SQL.Add('FROM	  view_vagon inner join #num_vagon on #num_vagon.num_vagon = view_vagon.num_vagon');
      Q.SQL.Add('WHERE	users_group_id = ' + IntToStr(users_group_id));
      Q.SQL.Add('DROP TABLE #num_vagon');
      Q.Open;

      error_num_line := 157;
      Client_Vagon.First;
      while not Client_Vagon.Eof do begin
        Client_Vagon.Edit;
        Client_Vagon.FieldByName('vagon_id').Value := Q.Lookup('num_vagon', Client_Vagon.FieldByName('num_vagon').Value, 'vagon_id');

        error_num_line := 158;
        if Client_Node.FindKey([Client_Vagon.FieldByName('node_begin_cod').AsString]) then begin
          Client_Vagon.FieldByName('node_begin_cod'       ).Value := Client_Node.FieldByName('node_cod').Value;
          Client_Vagon.FieldByName('node_begin_name'      ).Value := Client_Node.FieldByName('node_name').Value;
          Client_Vagon.FieldByName('node_begin_road_cod'  ).Value := Client_Node.FieldByName('road_cod').Value;
          Client_Vagon.FieldByName('node_begin_road_name' ).Value := Client_Node.FieldByName('road_name').Value;
        end else begin
          Client_Vagon.FieldByName('node_begin_cod'       ).Value := Client_Vagon.FieldByName('node_begin_cod').Value;
          Client_Vagon.FieldByName('node_begin_name'      ).Value := null;
          Client_Vagon.FieldByName('node_begin_road_cod'  ).Value := null;
          Client_Vagon.FieldByName('node_begin_road_name' ).Value := null;
        end;

        error_num_line := 159;
        if Client_Node.FindKey([Client_Vagon.FieldByName('node_end_cod').AsString]) then begin
          Client_Vagon.FieldByName('node_end_cod'       ).Value := Client_Node.FieldByName('node_cod').Value;
          Client_Vagon.FieldByName('node_end_name'      ).Value := Client_Node.FieldByName('node_name').Value;
          Client_Vagon.FieldByName('node_end_road_cod'  ).Value := Client_Node.FieldByName('road_cod').Value;
          Client_Vagon.FieldByName('node_end_road_name' ).Value := Client_Node.FieldByName('road_name').Value;
        end else begin
          Client_Vagon.FieldByName('node_end_cod'       ).Value := Client_Vagon.FieldByName('node_end_cod').Value;
          Client_Vagon.FieldByName('node_end_name'      ).Value := null;
          Client_Vagon.FieldByName('node_end_road_cod'  ).Value := null;
          Client_Vagon.FieldByName('node_end_road_name' ).Value := null;
        end;

        error_num_line := 160;
        if Client_Node.FindKey([Client_Vagon.FieldByName('node_operation_cod').AsString]) then begin
          Client_Vagon.FieldByName('node_operation_cod'  ).Value := Client_Node.FieldByName('node_cod').Value;
          Client_Vagon.FieldByName('node_operation_name' ).Value := Client_Node.FieldByName('node_name').Value;
          Client_Vagon.FieldByName('road_operation_cod'  ).Value := Client_Node.FieldByName('road_cod').Value;
          Client_Vagon.FieldByName('road_operation_name' ).Value := Client_Node.FieldByName('road_name').Value;
        end else begin
          Client_Vagon.FieldByName('node_operation_cod'  ).Value := Client_Vagon.FieldByName('node_operation_cod').Value;
          Client_Vagon.FieldByName('node_operation_name' ).Value := null;
          Client_Vagon.FieldByName('road_operation_cod'  ).Value := null;
          Client_Vagon.FieldByName('road_operation_name' ).Value := null;
        end;

        error_num_line := 161;
        if Client_Road.FindKey([Client_Vagon.FieldByName('road_begin_cod').AsString]) then begin
          Client_Vagon.FieldByName('road_begin_cod'  ).Value := Client_Road.FieldByName('road_cod').Value;
          Client_Vagon.FieldByName('road_begin_name' ).Value := Client_Road.FieldByName('road_name').Value;
        end;

        if Client_State.FindKey([Client_Vagon.FieldByName('state_begin_cod').AsString]) then begin
          Client_Vagon.FieldByName('state_begin_cod'  ).Value := Client_State.FieldByName('state_cod').Value;
          Client_Vagon.FieldByName('state_begin_name' ).Value := Client_State.FieldByName('state_name').Value;
        end;

        if Client_State.FindKey([Client_Vagon.FieldByName('state_end_cod').AsString]) then begin
          Client_Vagon.FieldByName('state_end_cod'  ).Value := Client_State.FieldByName('state_cod').Value;
          Client_Vagon.FieldByName('state_end_name' ).Value := Client_State.FieldByName('state_name').Value;
        end;

        error_num_line := 162;
        if Client_Road.FindKey([Client_Vagon.FieldByName('road_end_cod').AsString]) then begin
          Client_Vagon.FieldByName('road_end_cod'  ).Value := Client_Road.FieldByName('road_cod').Value;
          Client_Vagon.FieldByName('road_end_name' ).Value := Client_Road.FieldByName('road_name').Value;
        end;

        error_num_line := 163;
        if Client_Kargo.FindKey([Client_Vagon.FieldByName('kargoETSNG_cod').AsString]) then begin
          Client_Vagon.FieldByName('kargoETSNG_cod'  ).Value := Client_Kargo.FieldByName('kargo_cod').Value;
          Client_Vagon.FieldByName('kargoETSNG_name' ).Value := Client_Kargo.FieldByName('kargo_name').Value;
        end;

        error_num_line := 164;
        if Client_TrainOper.FindKey([Client_Vagon.FieldByName('cod_operation_cod').AsString]) then begin
          Client_Vagon.FieldByName('cod_operation_train_id').Value := Client_TrainOper.FieldByName('inf_obj_id').Value;
        end;

        error_num_line := 165;
        if Client_VagonOper.FindKey([Client_Vagon.FieldByName('cod_operation_cod').AsString]) then begin
          Client_Vagon.FieldByName('cod_operation_vagon_id').Value := Client_VagonOper.FieldByName('inf_obj_id').Value;
        end;

        error_num_line := 166;
        if Client_Park.FindKey([Client_Vagon.FieldByName('type_park_vagon').AsString]) then begin
          Client_Vagon.FieldByName('type_park_vagon_id').Value := Client_Park.FieldByName('inf_obj_id').Value;
        end;


        if Client_OKPO.FindKey([Trim(Client_Vagon.FieldByName('grotpr_okpo').AsString)]) then begin
          Client_Vagon.FieldByName('grotpr_name').Value := Client_OKPO.FieldByName('firm_okpo_name').Value;
        end;

        if Client_OKPO.FindKey([Trim(Client_Vagon.FieldByName('grpol_okpo').AsString)]) then begin
          Client_Vagon.FieldByName('grpol_name').Value := Client_OKPO.FieldByName('firm_okpo_name').Value;
        end;
        //****************************************************************************************************************************

        Client_Vagon.Post;
        Client_Vagon.Next;

        if (Client_Vagon.RecNo mod 1000) = 0 then begin
          MonitorSetCaption2('Подготовка спровочников (обработанно ' + IntToStr(Client_Vagon.RecNo) + ' из ' + IntToStr(Client_Vagon.RecordCount) + ')...');
          MonitorOperUpdate(Client_Vagon.RecordCount, Client_Vagon.RecNo);
        end;

      end;
      MonitorSetCaption2('Подготовка спровочников (обработанно ' + IntToStr(Client_Vagon.RecNo) + ' из ' + IntToStr(Client_Vagon.RecordCount) + ')...');
      MonitorOperUpdate(Client_Vagon.RecordCount, Client_Vagon.RecNo);
      MonitorOperEnd('Завершено');

      duration_infobj := MilliSecondsBetween(Now, d1);

      // Поиск рейсов
      Client_Vagon.First;
      while not Client_Vagon.Eof do begin
        Client_VagonTrip.Append;
        Client_VagonTrip.FieldByName('id'     ).Value := Client_Vagon.FieldByName('id').Value;
        Client_VagonTrip.FieldByName('nvag'   ).Value := Client_Vagon.FieldByName('num_vagon').Value;
        Client_VagonTrip.FieldByName('nend'   ).Value := Client_Vagon.FieldByName('node_end_cod').Value;
        Client_VagonTrip.FieldByName('nbegin' ).Value := Client_Vagon.FieldByName('node_begin_cod').Value;
        Client_VagonTrip.FieldByName('noper'  ).Value := Client_Vagon.FieldByName('node_operation_cod').Value;
        Client_VagonTrip.FieldByName('doper'  ).Value := Client_Vagon.FieldByName('date_operation').Value;
        Client_VagonTrip.Post;
        Client_Vagon.Next;
      end;

      MonitorOperInsert('Поиск рейсов: ' + files_name);

//      sp_fact_track_trip_find.Parameters.Refresh;
//      sp_fact_track_trip_find.Parameters.ParamByName('@xml'           ).Value := DataXMLToSQL(Client_VagonTrip);
//      sp_fact_track_trip_find.Parameters.ParamByName('@users_group_id').Value := users_group_id;

      sp_fact_track_trip_find.SQL.Add(GetProcedureFromRes('sp_fact_track_trip_find'));
      sp_fact_track_trip_find.Parameters.ParamByName('users_group_id' ).Value := users_group_id;
      sp_fact_track_trip_find.Parameters.ParamByName('param_xml'      ).Value := DataXMLToSQL(Client_VagonTrip);

      sp_fact_track_trip_find.Open;
      while not sp_fact_track_trip_find.Eof do begin
        if Client_Vagon.FindKey([sp_fact_track_trip_find.FieldByName('id').AsInteger]) then begin
          Client_Vagon.Edit;
          Client_Vagon.FieldByName('fact_track_trip_id').Value := sp_fact_track_trip_find.FieldByName('fact_track_trip_id').Value;
          Client_Vagon.Post;
        end;
        sp_fact_track_trip_find.Next;

        if (sp_fact_track_trip_find.RecNo mod 100) = 0 then begin
          MonitorSetCaption2('Поиск рейсов (обработанно ' + IntToStr(sp_fact_track_trip_find.RecNo) + ' из ' + IntToStr(sp_fact_track_trip_find.RecordCount) + ')...');
          MonitorOperUpdate(sp_fact_track_trip_find.RecordCount, sp_fact_track_trip_find.RecNo);
        end;
      end;

      MonitorSetCaption2('Поиск рейсов (обработанно ' + IntToStr(sp_fact_track_trip_find.RecNo) + ' из ' + IntToStr(sp_fact_track_trip_find.RecordCount) + ')...');
      MonitorOperUpdate(sp_fact_track_trip_find.RecordCount, sp_fact_track_trip_find.RecNo);
      MonitorOperEnd('Завершено');


      UpdateStatusFiles(files_track_id, 'Сохранение', files_load_date_begin, files_load_date_end, set_error, files_rows_count, files_rows_load, duration_parser, duration_infobj);

      error_num_line := 167;
      MonitorOperInsert('Сохранение данных: ' + files_name);
      // Сохраняем результат
      sp_fact_track_files_modify.Parameters.Refresh;
      sp_fact_track_files_modify.Parameters.ParamByName('@files_track_id'  ).Value := files_track_id;
      sp_fact_track_files_modify.Parameters.ParamByName('@type_action'     ).Value := 3;
      sp_fact_track_files_modify.Parameters.ParamByName('@files_rows_count').Value := Client_Vagon.RecordCount;
      sp_fact_track_files_modify.ExecProc;

      error_num_line := 168;
      SP_fact_track_modify.Parameters.Refresh;
      Client_Vagon.First;
      while not Client_Vagon.Eof do begin
        for i := 0 to SP_fact_track_modify.Parameters.Count - 1 do begin
          SP_fact_track_modify.Parameters.Items[i].Value := NULL;
        end;

        error_num_line := 201; SP_fact_track_modify.Parameters.ParamByName('@fact_track_id'       ).Value := -9;
        error_num_line := 202; SP_fact_track_modify.Parameters.ParamByName('@type_action'         ).Value := 0;
        error_num_line := 203; SP_fact_track_modify.Parameters.ParamByName('@format_file'         ).Value := 4;
        error_num_line := 204; SP_fact_track_modify.Parameters.ParamByName('@num_vagon'           ).Value := Client_Vagon.FieldByName('num_vagon').Value;
        error_num_line := 205; SP_fact_track_modify.Parameters.ParamByName('@rod_vagon'           ).Value := Client_Vagon.FieldByName('rod_vagon').Value;
        error_num_line := 206; SP_fact_track_modify.Parameters.ParamByName('@type_vagon'          ).Value := Client_Vagon.FieldByName('type_vagon').Value;
        error_num_line := 207; SP_fact_track_modify.Parameters.ParamByName('@date_otpr'           ).Value := Client_Vagon.FieldByName('date_otpr').Value;
        error_num_line := 208; SP_fact_track_modify.Parameters.ParamByName('@state_self'          ).Value := Client_Vagon.FieldByName('state_self').Value;
        error_num_line := 209; SP_fact_track_modify.Parameters.ParamByName('@fact_weight'         ).Value := Client_Vagon.FieldByName('fact_weight').Value;
        error_num_line := 210; SP_fact_track_modify.Parameters.ParamByName('@node_end_cod'        ).Value := Client_Vagon.FieldByName('node_end_cod').Value;
        error_num_line := 211; SP_fact_track_modify.Parameters.ParamByName('@kargoETSNG_cod'      ).Value := Client_Vagon.FieldByName('kargoETSNG_cod').Value;
        error_num_line := 212; SP_fact_track_modify.Parameters.ParamByName('@poluchgr'            ).Value := Client_Vagon.FieldByName('poluchgr').Value;
        error_num_line := 213; SP_fact_track_modify.Parameters.ParamByName('@special_marks'       ).Value := Client_Vagon.FieldByName('special_marks').Value;
        error_num_line := 214; SP_fact_track_modify.Parameters.ParamByName('@comment'             ).Value := Client_Vagon.FieldByName('comment').Value;
        error_num_line := 215; SP_fact_track_modify.Parameters.ParamByName('@type_park_vagon'     ).Value := Client_Vagon.FieldByName('type_park_vagon').Value;
        error_num_line := 216; SP_fact_track_modify.Parameters.ParamByName('@node_begin_cod'      ).Value := Client_Vagon.FieldByName('node_begin_cod').Value;
        error_num_line := 217; SP_fact_track_modify.Parameters.ParamByName('@cod_operation_cod'   ).Value := Client_Vagon.FieldByName('cod_operation_cod').Value;
        error_num_line := 218; SP_fact_track_modify.Parameters.ParamByName('@date_operation'      ).Value := Client_Vagon.FieldByName('date_operation').Value;
        error_num_line := 219; SP_fact_track_modify.Parameters.ParamByName('@node_operation_cod'  ).Value := Client_Vagon.FieldByName('node_operation_cod').Value;
        error_num_line := 220; SP_fact_track_modify.Parameters.ParamByName('@road_begin_cod'      ).Value := Client_Vagon.FieldByName('road_begin_cod').Value;
        error_num_line := 221; SP_fact_track_modify.Parameters.ParamByName('@road_end_cod'        ).Value := Client_Vagon.FieldByName('road_end_cod').Value;
        error_num_line := 222; SP_fact_track_modify.Parameters.ParamByName('@index_train'         ).Value := Client_Vagon.FieldByName('index_train').Value;
        error_num_line := 223; SP_fact_track_modify.Parameters.ParamByName('@num_train'           ).Value := Client_Vagon.FieldByName('num_train').Value;
        error_num_line := 224; SP_fact_track_modify.Parameters.ParamByName('@doc_number'          ).Value := Client_Vagon.FieldByName('doc_number').Value;
        error_num_line := 225; SP_fact_track_modify.Parameters.ParamByName('@vagon_id'            ).Value := Client_Vagon.FieldByName('vagon_id').Value;
        error_num_line := 226; SP_fact_track_modify.Parameters.ParamByName('@vagon_owner_name'    ).Value := Client_Vagon.FieldByName('vagon_owner_name').Value;
        error_num_line := 227; SP_fact_track_modify.Parameters.ParamByName('@file_load_name'      ).Value := Client_Vagon.FieldByName('file_load_name').Value;
        error_num_line := 228; SP_fact_track_modify.Parameters.ParamByName('@date_query'          ).Value := files_date;
        error_num_line := 229; SP_fact_track_modify.Parameters.ParamByName('@node_begin_name'     ).Value := Client_Vagon.FieldByName('node_begin_name').Value;
        error_num_line := 230; SP_fact_track_modify.Parameters.ParamByName('@node_begin_road_cod' ).Value := Client_Vagon.FieldByName('node_begin_road_cod').Value;
        error_num_line := 231; SP_fact_track_modify.Parameters.ParamByName('@node_begin_road_name').Value := Client_Vagon.FieldByName('node_begin_road_name').Value;
        error_num_line := 232; SP_fact_track_modify.Parameters.ParamByName('@node_end_name'       ).Value := Client_Vagon.FieldByName('node_end_name').Value;
        error_num_line := 233; SP_fact_track_modify.Parameters.ParamByName('@node_end_road_cod'   ).Value := Client_Vagon.FieldByName('node_end_road_cod').Value;
        error_num_line := 234; SP_fact_track_modify.Parameters.ParamByName('@node_end_road_name'  ).Value := Client_Vagon.FieldByName('node_end_road_name').Value;
        error_num_line := 235; SP_fact_track_modify.Parameters.ParamByName('@node_operation_name' ).Value := Client_Vagon.FieldByName('node_operation_name').Value;
        error_num_line := 236; SP_fact_track_modify.Parameters.ParamByName('@road_operation_cod'  ).Value := Client_Vagon.FieldByName('road_operation_cod').Value;
        error_num_line := 237; SP_fact_track_modify.Parameters.ParamByName('@road_operation_name' ).Value := Client_Vagon.FieldByName('road_operation_name').Value;
        error_num_line := 238; SP_fact_track_modify.Parameters.ParamByName('@road_begin_name'     ).Value := Client_Vagon.FieldByName('road_begin_name').Value;
        error_num_line := 239; SP_fact_track_modify.Parameters.ParamByName('@road_end_name'       ).Value := Client_Vagon.FieldByName('road_end_name').Value;
        error_num_line := 240; SP_fact_track_modify.Parameters.ParamByName('@kargoETSNG_name'     ).Value := Client_Vagon.FieldByName('kargoETSNG_name').Value;
        error_num_line := 241; SP_fact_track_modify.Parameters.ParamByName('@users_id'            ).Value := users_id;
        error_num_line := 242; SP_fact_track_modify.Parameters.ParamByName('@files_id'            ).Value := files_track_id;
        error_num_line := 243; SP_fact_track_modify.Parameters.ParamByName('@grpol_okpo'          ).Value := Client_Vagon.FieldByName('grpol_okpo').Value;
        error_num_line := 244; SP_fact_track_modify.Parameters.ParamByName('@grotpr_okpo'         ).Value := Client_Vagon.FieldByName('grotpr_okpo').Value;
        error_num_line := 245; SP_fact_track_modify.Parameters.ParamByName('@RW_grpol'            ).Value := Client_Vagon.FieldByName('RW_grpol').Value;
        error_num_line := 246; SP_fact_track_modify.Parameters.ParamByName('@RW_grotpr'           ).Value := Client_Vagon.FieldByName('RW_grotpr').Value;
        error_num_line := 247; SP_fact_track_modify.Parameters.ParamByName('@DateLoading'         ).Value := Client_Vagon.FieldByName('DateLoading').Value;
        error_num_line := 248; SP_fact_track_modify.Parameters.ParamByName('@RW_Rash'             ).Value := Client_Vagon.FieldByName('RW_Rash').Value;
        error_num_line := 249; SP_fact_track_modify.Parameters.ParamByName('@idReis'              ).Value := Client_Vagon.FieldByName('idReis').Value;
        error_num_line := 250; SP_fact_track_modify.Parameters.ParamByName('@DatePrib'            ).Value := Client_Vagon.FieldByName('DatePrib').Value;
        error_num_line := 251; SP_fact_track_modify.Parameters.ParamByName('@DateVygr'            ).Value := Client_Vagon.FieldByName('DateVygr').Value;
        error_num_line := 252; SP_fact_track_modify.Parameters.ParamByName('@cod_operation_train_id' ).Value := Client_Vagon.FieldByName('cod_operation_train_id').Value;
        error_num_line := 253; SP_fact_track_modify.Parameters.ParamByName('@cod_operation_vagon_id' ).Value := Client_Vagon.FieldByName('cod_operation_vagon_id').Value;
        error_num_line := 254; SP_fact_track_modify.Parameters.ParamByName('@type_park_vagon_id'     ).Value := Client_Vagon.FieldByName('type_park_vagon_id').Value;
        error_num_line := 255; SP_fact_track_modify.Parameters.ParamByName('@nPut'      ).Value := Client_Vagon.FieldByName('nPut').Value;
        error_num_line := 256; SP_fact_track_modify.Parameters.ParamByName('@nPark'     ).Value := Client_Vagon.FieldByName('nPark').Value;
        error_num_line := 255; SP_fact_track_modify.Parameters.ParamByName('@state_begin_cod'    ).Value := Client_Vagon.FieldByName('state_begin_cod').Value;
        error_num_line := 256; SP_fact_track_modify.Parameters.ParamByName('@state_begin_name'   ).Value := Client_Vagon.FieldByName('state_begin_name').Value;
        error_num_line := 255; SP_fact_track_modify.Parameters.ParamByName('@state_end_cod'      ).Value := Client_Vagon.FieldByName('state_end_cod').Value;
        error_num_line := 256; SP_fact_track_modify.Parameters.ParamByName('@state_end_name'     ).Value := Client_Vagon.FieldByName('state_end_name').Value;
        error_num_line := 257; SP_fact_track_modify.Parameters.ParamByName('@fact_track_trip_id' ).Value := Client_Vagon.FieldByName('fact_track_trip_id').Value;
        error_num_line := 258; SP_fact_track_modify.Parameters.ParamByName('@IsEmpty'            ).Value := Client_Vagon.FieldByName('IsEmpty').Value;
        error_num_line := 259; SP_fact_track_modify.Parameters.ParamByName('@grpol_name'         ).Value := Client_Vagon.FieldByName('grpol_name').Value;
        error_num_line := 260; SP_fact_track_modify.Parameters.ParamByName('@grotpr_name'        ).Value := Client_Vagon.FieldByName('grotpr_name').Value;
        error_num_line := 261; SP_fact_track_modify.Parameters.ParamByName('@nvp'                ).Value := Client_Vagon.FieldByName('nvp').Value;

        error_num_line := 262; SP_fact_track_modify.Parameters.ParamByName('@OwnerOkpo'          ).Value := Client_Vagon.FieldByName('OwnerOkpo').Value;
        error_num_line := 263; SP_fact_track_modify.Parameters.ParamByName('@OwnerOkpoName'      ).Value := Client_Vagon.FieldByName('OwnerOkpoName').Value;
        error_num_line := 264; SP_fact_track_modify.Parameters.ParamByName('@ArendOkpo'          ).Value := Client_Vagon.FieldByName('ArendOkpo').Value;
        error_num_line := 265; SP_fact_track_modify.Parameters.ParamByName('@ArendOkpoName'      ).Value := Client_Vagon.FieldByName('ArendOkpoName').Value;
        error_num_line := 266; SP_fact_track_modify.Parameters.ParamByName('@OperName'           ).Value := Client_Vagon.FieldByName('OperName').Value;
        error_num_line := 267; SP_fact_track_modify.Parameters.ParamByName('@OperDateEnd'        ).Value := Client_Vagon.FieldByName('OperDateEnd').Value;

//        dt2 := Now;
        SP_fact_track_modify.ExecProc;
//        k := MilliSecondsBetween(Now, dt2);

//        s.Add(  Client_Vagon.FieldByName('num_vagon').AsString + ';' +
//                Client_Vagon.FieldByName('rod_vagon').AsString + ';' +
//                Client_Vagon.FieldByName('type_vagon').AsString + ';' +
//                Client_Vagon.FieldByName('date_otpr').AsString + ';' +
//                Client_Vagon.FieldByName('state_self').AsString + ';' +
//                Client_Vagon.FieldByName('fact_weight').AsString + ';' +
//                Client_Vagon.FieldByName('node_end_cod').AsString + ';' +
//                Client_Vagon.FieldByName('kargoETSNG_cod').AsString + ';' +
//                Client_Vagon.FieldByName('poluchgr').AsString + ';' +
//                Client_Vagon.FieldByName('special_marks').AsString + ';' +
//                Client_Vagon.FieldByName('comment').AsString + ';' +
//                Client_Vagon.FieldByName('type_park_vagon').AsString + ';' +
//                Client_Vagon.FieldByName('node_begin_cod').AsString + ';' +
//                Client_Vagon.FieldByName('cod_operation_cod').AsString + ';' +
//                Client_Vagon.FieldByName('date_operation').AsString + ';' +
//                Client_Vagon.FieldByName('node_operation_cod').AsString + ';' +
//                Client_Vagon.FieldByName('road_begin_cod').AsString + ';' +
//                Client_Vagon.FieldByName('road_end_cod').AsString + ';' +
//                Client_Vagon.FieldByName('index_train').AsString + ';' +
//                Client_Vagon.FieldByName('num_train').AsString + ';' +
//                Client_Vagon.FieldByName('doc_number').AsString + ';' +
//                Client_Vagon.FieldByName('vagon_id').AsString + ';' +
//                Client_Vagon.FieldByName('vagon_owner_name').AsString + ';' +
//                Client_Vagon.FieldByName('file_load_name').AsString + ';' +
//                DateToStr(files_date) + ';' +
//                Client_Vagon.FieldByName('node_begin_name').AsString + ';' +
//                Client_Vagon.FieldByName('node_begin_road_cod').AsString + ';' +
//                Client_Vagon.FieldByName('node_begin_road_name').AsString + ';' +
//                Client_Vagon.FieldByName('node_end_name').AsString + ';' +
//                Client_Vagon.FieldByName('node_end_road_cod').AsString + ';' +
//                Client_Vagon.FieldByName('node_end_road_name').AsString + ';' +
//                Client_Vagon.FieldByName('node_operation_name').AsString + ';' +
//                Client_Vagon.FieldByName('road_operation_cod').AsString + ';' +
//                Client_Vagon.FieldByName('road_operation_name').AsString + ';' +
//                Client_Vagon.FieldByName('road_begin_name').AsString + ';' +
//                Client_Vagon.FieldByName('road_end_name').AsString + ';' +
//                Client_Vagon.FieldByName('kargoETSNG_name').AsString + ';' +
//                IntToStr(users_id) + ';' +
//                IntToStr(files_track_id) + ';' +
//                Client_Vagon.FieldByName('okpo_grpol').AsString + ';' +
//                Client_Vagon.FieldByName('okpo_grotpr').AsString + ';' +
//                Client_Vagon.FieldByName('RW_grpol').AsString + ';' +
//                Client_Vagon.FieldByName('RW_grotpr').AsString + ';' +
//                Client_Vagon.FieldByName('DateLoading').AsString + ';' +
//                Client_Vagon.FieldByName('RW_Rash').AsString + ';' +
//                Client_Vagon.FieldByName('idReis').AsString + ';' +
//                Client_Vagon.FieldByName('DatePrib').AsString + ';' +
//                Client_Vagon.FieldByName('DateVygr').AsString + ';' +
//                Client_Vagon.FieldByName('cod_operation_train_id').AsString + ';' +
//                Client_Vagon.FieldByName('cod_operation_vagon_id').AsString + ';' +
//                Client_Vagon.FieldByName('type_park_vagon_id').AsString + ';' +
//                Client_Vagon.FieldByName('nPut').AsString + ';' +
//                Client_Vagon.FieldByName('nPark').AsString + ';' +
//                Client_Vagon.FieldByName('state_begin_cod').AsString + ';' +
//                Client_Vagon.FieldByName('state_begin_name').AsString + ';' +
//                Client_Vagon.FieldByName('state_end_cod').AsString + ';' +
//                Client_Vagon.FieldByName('state_end_name').AsString + ';' +
//                Client_Vagon.FieldByName('fact_track_trip_id').AsString + ';' +
//                IntToStr(MilliSecondsBetween(Now, dt1)) + ';' +
//                IntToStr(k) + ';' +
//                IntToStr(SP_fact_track_modify.Parameters.ParamByName('@point0').Value) + ';' +
//                IntToStr(SP_fact_track_modify.Parameters.ParamByName('@point1').Value) + ';' +
//                IntToStr(SP_fact_track_modify.Parameters.ParamByName('@point2').Value) + ';' +
//                IntToStr(SP_fact_track_modify.Parameters.ParamByName('@point3').Value) + ';' +
//                IntToStr(SP_fact_track_modify.Parameters.ParamByName('@point4').Value) + ';' +
//                IntToStr(SP_fact_track_modify.Parameters.ParamByName('@point5').Value) + ';' +
//                IntToStr(SP_fact_track_modify.Parameters.ParamByName('@point6').Value) + ';' +
//                IntToStr(SP_fact_track_modify.Parameters.ParamByName('@point7').Value) + ';' +
//                IntToStr(SP_fact_track_modify.Parameters.ParamByName('@point8').Value) + ';' +
//                IntToStr(SP_fact_track_modify.Parameters.ParamByName('@point9').Value) + ';' +
//                IntToStr(SP_fact_track_modify.Parameters.ParamByName('@point10').Value) + ';' +
//                IntToStr(SP_fact_track_modify.Parameters.ParamByName('@point11').Value) + ';' +
//                IntToStr(SP_fact_track_modify.Parameters.ParamByName('@point12').Value) + ';' +
//                IntToStr(SP_fact_track_modify.Parameters.ParamByName('@point13').Value) + ';' +
//                IntToStr(SP_fact_track_modify.Parameters.ParamByName('@point14').Value));


        Client_Vagon.Next;

        if (Client_Vagon.RecNo mod 10) = 0 then
          MonitorSetCaption2('Сохранение вагонов (обработанно ' + IntToStr(Client_Vagon.RecNo) + ' из ' + IntToStr(Client_Vagon.RecordCount) + ')...');

        if (Client_Vagon.RecNo mod 200) = 0 then begin
          error_num_line := 300;
          sp_fact_track_files_modify.Parameters.Refresh;
          sp_fact_track_files_modify.Parameters.ParamByName('@files_track_id'  ).Value := files_track_id;
          sp_fact_track_files_modify.Parameters.ParamByName('@type_action'     ).Value := 4;
          sp_fact_track_files_modify.Parameters.ParamByName('@files_rows_load' ).Value := Client_Vagon.RecNo;
          sp_fact_track_files_modify.ExecProc;

          files_rows_load := Client_Vagon.RecNo;
          UpdateStatusFiles(files_track_id, 'Сохранение', files_load_date_begin, files_load_date_end, set_error, files_rows_count, files_rows_load, 0, 0);

          MonitorOperUpdate(Client_Vagon.RecordCount, Client_Vagon.RecNo);
        end;

      end;

//      s.SaveToFile('d:\www\report_' + IntToStr(files_track_id) + '.csv');
//      s.Free;

      error_num_line := 301;
      MonitorSetCaption2('Сохранение вагонов (обработанно ' + IntToStr(Client_Vagon.RecNo) + ' из ' + IntToStr(Client_Vagon.RecordCount) + ')...');
      files_rows_load := Client_Vagon.RecNo;
      UpdateStatusFiles(files_track_id, 'Сохранение', files_load_date_begin, files_load_date_end, set_error, files_rows_count, files_rows_load, 0, 0);
      MonitorOperUpdate(Client_Vagon.RecordCount, Client_Vagon.RecNo);
      MonitorOperEnd('Завершено');

      error_num_line := 302;
      sp_fact_track_files_modify.Parameters.Refresh;
      sp_fact_track_files_modify.Parameters.ParamByName('@files_track_id'  ).Value := files_track_id;
      sp_fact_track_files_modify.Parameters.ParamByName('@type_action'     ).Value := 5;
      sp_fact_track_files_modify.Parameters.ParamByName('@files_rows_load' ).Value := Client_Vagon.RecNo;
      sp_fact_track_files_modify.ExecProc;

      Result := True;
    except
      on E: Exception do begin
        sp_files_error := TADOStoredProc.Create(nil);
        sp_files_error.ConnectionString := Fconnect_str;
        sp_files_error.ProcedureName := 'sp_fact_track_files_modify';
        sp_files_error.Parameters.Refresh;
        sp_files_error.Parameters.ParamByName('@files_track_id').Value := files_track_id;
        sp_files_error.Parameters.ParamByName('@type_action'   ).Value := 20;
        sp_files_error.Parameters.ParamByName('@files_status'  ).Value := E.Message;
        sp_files_error.ExecProc;

        set_error := True;
        UpdateStatusFiles(files_track_id, 'Сохранение', files_load_date_begin, files_load_date_end, set_error, files_rows_count, files_rows_load, 0, 0);

        MonitorOperEnd('Ошибка');

        SaveLogError('1000', 'SaveDislXML Line:' + IntToStr(error_num_line), E.Message, 'Сохранение файла ' + files_name);
        Result := False;
      end;
    end;
  finally
    connect.Free;
    sp_fact_track_files_modify.Free;
    sp_fact_track_modify.Free;
    Client_Vagon.Free;
    Client_Node.Free;
    Client_Road.Free;
    Client_Kargo.Free;
    Client_TrainOper.Free;
    Client_VagonOper.Free;
    Client_Park.Free;
    Client_State.Free;
    Client_OKPO.Free;
    Q.Free;
    str_state_cod.Free;
    str_node_cod.Free;
    str_road_cod.Free;
    str_kargoETSNG_cod.Free;
    str_num_vagon.Free;
    str_tmp.Free;
    str_OKPO.Free;
    sp_fact_track_trip_find.Free;
  end;
end;


function TThreadFiles.SaveDislSOAP(query_id: integer): boolean;
var      connect : TADOConnection;
      Q, Q_Vagon : TADOQuery;
              fd : TStringStream;
    Client_Vagon : TClientDataSet;
               i, z : integer;
        users_id : integer;
               w : extended;
             tmp : string;
              s1 : string;
     Client_Node : TClientDataSet;
     Client_Road : TClientDataSet;
    Client_State : TClientDataSet;
    Client_Kargo : TClientDataSet;
Client_TrainOper : TClientDataSet;
Client_VagonOper : TClientDataSet;
     Client_Park : TClientDataSet;
Client_VagonTrip : TClientDataSet;
              d1 : TDateTime;
               s : TStringList;


       str_node_cod : TStringList;
       str_road_cod : TStringList;
      str_state_cod : TStringList;
 str_kargoETSNG_cod : TStringList;
      str_num_vagon : TStringList;


sp_fact_track_query_modify : TADOStoredProc;
      sp_fact_track_modify : TADOStoredProc;
            sp_files_error : TADOStoredProc;
           sp_vagon_modify : TADOStoredProc;
   sp_fact_track_trip_find : TADOQuery;


  files_load_date_begin: TDateTime;
  files_load_date_end  : TDateTime;
  set_error            : boolean;
  files_rows_count     : integer;
  files_rows_load      : integer;
  duration_parser      : integer;
  duration_infobj      : integer;
  users_group_id       : integer;
  date_query : TDateTime;
begin
  try
    try
      MonitorSetCaption2('Подготовка файла к загрузке...');
      connect := TADOConnection.Create(nil);
      connect.ConnectionString := Fconnect_str;
      connect.KeepConnection   := False;
      connect.LoginPrompt      := False;
      connect.CommandTimeout   := 300;
      connect.Open;

      sp_fact_track_query_modify := TADOStoredProc.Create(nil);
      sp_fact_track_query_modify.Connection := connect;
      sp_fact_track_query_modify.ProcedureName := 'sp_fact_track_query_modify';

      SP_fact_track_modify := TADOStoredProc.Create(nil);
      SP_fact_track_modify.Connection := connect;
      SP_fact_track_modify.ProcedureName := 'SP_fact_track_modify';

      sp_fact_track_trip_find := TADOQuery.Create(nil);
      sp_fact_track_trip_find.Connection := connect;
      sp_fact_track_trip_find.CommandTimeout := 300;


      sp_vagon_modify := TADOStoredProc.Create(nil);
      sp_vagon_modify.Connection := connect;
      sp_vagon_modify.ProcedureName := 'sp_vagon_modify';


      Client_VagonTrip := TClientDataSet.Create(nil);
      Client_VagonTrip.FieldDefs.Add('id', ftInteger);
      Client_VagonTrip.FieldDefs.Add('nvag', ftString, 9);
      Client_VagonTrip.FieldDefs.Add('nend', ftString, 7);
      Client_VagonTrip.FieldDefs.Add('nbegin', ftString, 7);
      Client_VagonTrip.FieldDefs.Add('noper', ftString, 7);
      Client_VagonTrip.FieldDefs.Add('doper', ftDateTime);
      Client_VagonTrip.CreateDataSet;
      Client_VagonTrip.LogChanges := False;


      Client_Vagon := TClientDataSet.Create(nil);
      Client_Vagon.FieldDefs.Add('id', ftAutoInc);
      Client_Vagon.FieldDefs.Add('num_vagon', ftString, 9);
      Client_Vagon.FieldDefs.Add('rod_vagon', ftString, 3);
      Client_Vagon.FieldDefs.Add('type_vagon', ftString, 5);
      Client_Vagon.FieldDefs.Add('state_self', ftString, 3);
      Client_Vagon.FieldDefs.Add('fact_weight', ftFloat);
      Client_Vagon.FieldDefs.Add('node_end_cod', ftString, 7);
      Client_Vagon.FieldDefs.Add('node_begin_cod', ftString, 7);
      Client_Vagon.FieldDefs.Add('kargoETSNG_cod', ftString, 6);
      Client_Vagon.FieldDefs.Add('poluchgr', ftString, 5);
      Client_Vagon.FieldDefs.Add('special_marks', ftString, 4);
      Client_Vagon.FieldDefs.Add('comment', ftString, 7);
      Client_Vagon.FieldDefs.Add('type_park_vagon', ftString, 3);
      Client_Vagon.FieldDefs.Add('cod_operation_cod', ftString, 5);
      Client_Vagon.FieldDefs.Add('node_operation_cod', ftString, 7);
      Client_Vagon.FieldDefs.Add('road_begin_cod', ftString, 3);
      Client_Vagon.FieldDefs.Add('road_end_cod', ftString, 3);
      Client_Vagon.FieldDefs.Add('index_train', ftString, 20);
      Client_Vagon.FieldDefs.Add('num_train', ftString, 5);
      Client_Vagon.FieldDefs.Add('file_load_name', ftString, 201);
      Client_Vagon.FieldDefs.Add('doc_number', ftString, 256);
      Client_Vagon.FieldDefs.Add('fact_track_id', ftInteger);
      Client_Vagon.FieldDefs.Add('is_saved', ftBoolean);
      Client_Vagon.FieldDefs.Add('is_updated', ftBoolean);
      Client_Vagon.FieldDefs.Add('error_text', ftString, 256);
      Client_Vagon.FieldDefs.Add('date_otpr', ftDateTime);
      Client_Vagon.FieldDefs.Add('date_operation', ftDateTime);
      Client_Vagon.FieldDefs.Add('vagon_id', ftInteger);
      Client_Vagon.FieldDefs.Add('vagon_owner_name', ftString, 151);
      Client_Vagon.FieldDefs.Add('grpol_okpo', ftString, 10);
      Client_Vagon.FieldDefs.Add('grotpr_okpo', ftString, 10);
      Client_Vagon.FieldDefs.Add('grpol_name', ftString, 300);
      Client_Vagon.FieldDefs.Add('grotpr_name', ftString, 300);
      Client_Vagon.FieldDefs.Add('RW_grpol', ftString, 4);
      Client_Vagon.FieldDefs.Add('RW_grotpr', ftString, 4);
      Client_Vagon.FieldDefs.Add('DateLoading', ftDateTime);
      Client_Vagon.FieldDefs.Add('RW_Rash', ftString, 3);
      Client_Vagon.FieldDefs.Add('idReis', ftString, 50);
      Client_Vagon.FieldDefs.Add('DatePrib', ftDateTime);
      Client_Vagon.FieldDefs.Add('DateVygr', ftDateTime);
      Client_Vagon.FieldDefs.Add('node_begin_name',     ftString, 100); //  16
      Client_Vagon.FieldDefs.Add('node_begin_road_cod', ftString, 50);  //  17
      Client_Vagon.FieldDefs.Add('node_begin_road_name',ftString, 255); //  17
      Client_Vagon.FieldDefs.Add('node_end_name',       ftString, 100); //  16
      Client_Vagon.FieldDefs.Add('node_end_road_cod',   ftString, 50);  //  17
      Client_Vagon.FieldDefs.Add('node_end_road_name',  ftString, 255); //  17
      Client_Vagon.FieldDefs.Add('node_operation_name', ftString, 100); //  16
      Client_Vagon.FieldDefs.Add('road_operation_cod',  ftString, 50);  //  17
      Client_Vagon.FieldDefs.Add('road_operation_name', ftString, 255); //  17
      Client_Vagon.FieldDefs.Add('road_begin_name',     ftString, 255); //  13
      Client_Vagon.FieldDefs.Add('road_end_name',       ftString, 255); //  13
      Client_Vagon.FieldDefs.Add('kargoETSNG_name',     ftString, 255); //  10
      Client_Vagon.FieldDefs.Add('cod_operation_train_id', ftInteger);
      Client_Vagon.FieldDefs.Add('cod_operation_vagon_id', ftInteger);
      Client_Vagon.FieldDefs.Add('type_park_vagon_id', ftInteger);
      Client_Vagon.FieldDefs.Add('nPut', ftString, 50);
      Client_Vagon.FieldDefs.Add('nPark', ftString, 50);
      Client_Vagon.FieldDefs.Add('state_begin_cod',  ftString,  10);
      Client_Vagon.FieldDefs.Add('state_begin_name', ftString, 200);
      Client_Vagon.FieldDefs.Add('state_end_cod',    ftString,  10);
      Client_Vagon.FieldDefs.Add('state_end_name',   ftString, 200);
      Client_Vagon.FieldDefs.Add('fact_track_trip_id',  ftInteger);
      Client_Vagon.FieldDefs.Add('IsEmpty', ftBoolean);
      Client_Vagon.FieldDefs.Add('nvp', ftInteger);
      Client_Vagon.FieldDefs.Add('OwnerOkpo', ftString, 20);
      Client_Vagon.FieldDefs.Add('OwnerOkpoName', ftString, 300);
      Client_Vagon.FieldDefs.Add('ArendOkpo', ftString, 20);
      Client_Vagon.FieldDefs.Add('ArendOkpoName', ftString, 300);
      Client_Vagon.FieldDefs.Add('OperName', ftString, 300);
      Client_Vagon.FieldDefs.Add('OperDateEnd', ftDateTime);

      Client_Vagon.FieldDefs.Add('query_id', ftInteger);
      Client_Vagon.FieldDefs.Add('vagon_date', ftDateTime);
      Client_Vagon.FieldDefs.Add('vagon_guid', ftString, 300);
      Client_Vagon.FieldDefs.Add('vagon_model_name', ftString, 300);
      Client_Vagon.FieldDefs.Add('next_date_repair', ftDateTime);
      Client_Vagon.FieldDefs.Add('date_remove', ftDateTime);
      Client_Vagon.FieldDefs.Add('date_build', ftDateTime);

      Client_Vagon.FieldDefs.Add('last_depot_repair_date', ftDateTime);
      Client_Vagon.FieldDefs.Add('last_capital_repair_date', ftDateTime);
      Client_Vagon.FieldDefs.Add('last_depot_repair_depo', ftString, 300);
      Client_Vagon.FieldDefs.Add('last_capital_repair_depo', ftString, 300);
      Client_Vagon.FieldDefs.Add('depo_in_repair_cod', ftString, 300);
      Client_Vagon.FieldDefs.Add('depo_in_repair_name', ftString, 300);
      Client_Vagon.FieldDefs.Add('depo_out_repair_cod', ftString, 300);
      Client_Vagon.FieldDefs.Add('depo_out_repair_name', ftString, 300);
      Client_Vagon.FieldDefs.Add('defect_cod', ftString, 300);
      Client_Vagon.FieldDefs.Add('defect_name', ftString, 300);
      Client_Vagon.FieldDefs.Add('set_control_repair', ftBoolean);
      Client_Vagon.FieldDefs.Add('vid_next_repair', ftInteger);
      Client_Vagon.FieldDefs.Add('milage_passed', ftInteger);
      Client_Vagon.FieldDefs.Add('milage_passed_date', ftDateTime);
      Client_Vagon.FieldDefs.Add('milage_rest', ftInteger);
      Client_Vagon.FieldDefs.Add('milage_rest_date', ftDateTime);
      Client_Vagon.FieldDefs.Add('days_route', ftCurrency);
      Client_Vagon.FieldDefs.Add('days_route_end', ftCurrency);
      Client_Vagon.FieldDefs.Add('days_free', ftCurrency);
      Client_Vagon.FieldDefs.Add('distance_node_end', ftInteger);
      Client_Vagon.FieldDefs.Add('date_arrival_plan', ftDateTime);
      Client_Vagon.FieldDefs.Add('set_arrival', ftBoolean);
      Client_Vagon.FieldDefs.Add('set_broken', ftBoolean);
      Client_Vagon.FieldDefs.Add('vagon_status', ftString, 300);
      Client_Vagon.FieldDefs.Add('date_otpr_zd', ftDateTime);
      Client_Vagon.FieldDefs.Add('date_arrival_fact', ftDateTime);
      Client_Vagon.FieldDefs.Add('transport_pay', ftCurrency);
      Client_Vagon.FieldDefs.Add('brief_name', ftString, 300);
      Client_Vagon.FieldDefs.Add('tracking_type', ftString, 300);
      Client_Vagon.FieldDefs.Add('gu12_cod', ftString, 300);
      Client_Vagon.FieldDefs.Add('num_kont', ftString, 300);
      Client_Vagon.FieldDefs.Add('type_kont', ftString, 300);



      Client_Vagon.IndexFieldNames := 'id';
      Client_Vagon.CreateDataSet;
      Client_Vagon.LogChanges := False;

      Client_Node := TClientDataSet.Create(nil);
      Client_Node.FieldDefs.Add('search_cod',ftString,   6);
      Client_Node.FieldDefs.Add('node_cod'  ,ftString,   6);
      Client_Node.FieldDefs.Add('node_name' ,ftString, 100);
      Client_Node.FieldDefs.Add('road_cod'  ,ftString,   6);
      Client_Node.FieldDefs.Add('road_name' ,ftString, 100);
      Client_Node.CreateDataSet;
      Client_Node.LogChanges := False;
      Client_Node.IndexDefs.Add('ClientDS_Index1', 'search_cod', []);
      Client_Node.IndexName := 'ClientDS_Index1';

      Client_Road := TClientDataSet.Create(nil);
      Client_Road.FieldDefs.Add('search_cod',ftString,   6);
      Client_Road.FieldDefs.Add('road_cod'  ,ftString,   6);
      Client_Road.FieldDefs.Add('road_name' ,ftString, 100);
      Client_Road.CreateDataSet;
      Client_Road.LogChanges := False;
      Client_Road.IndexDefs.Add('ClientDS_Index2', 'search_cod', []);
      Client_Road.IndexName := 'ClientDS_Index2';

      Client_Kargo := TClientDataSet.Create(nil);
      Client_Kargo.FieldDefs.Add('search_cod' ,ftString,   6);
      Client_Kargo.FieldDefs.Add('kargo_cod'  ,ftString,   6);
      Client_Kargo.FieldDefs.Add('kargo_name' ,ftString, 100);
      Client_Kargo.CreateDataSet;
      Client_Kargo.LogChanges := False;
      Client_Kargo.IndexDefs.Add('ClientDS_Index3', 'search_cod', []);
      Client_Kargo.IndexName := 'ClientDS_Index3';

      Client_TrainOper := TClientDataSet.Create(nil);
      Client_TrainOper.FieldDefs.Add('inf_obj_id'  ,ftInteger);
      Client_TrainOper.FieldDefs.Add('search_cod' ,ftString,   6);
      Client_TrainOper.CreateDataSet;
      Client_TrainOper.LogChanges := False;
      Client_TrainOper.IndexDefs.Add('ClientDS_Index4', 'search_cod', []);
      Client_TrainOper.IndexName := 'ClientDS_Index4';

      Client_VagonOper := TClientDataSet.Create(nil);
      Client_VagonOper.FieldDefs.Add('inf_obj_id'  ,ftInteger);
      Client_VagonOper.FieldDefs.Add('search_cod' ,ftString,   6);
      Client_VagonOper.CreateDataSet;
      Client_VagonOper.LogChanges := False;
      Client_VagonOper.IndexDefs.Add('ClientDS_Index5', 'search_cod', []);
      Client_VagonOper.IndexName := 'ClientDS_Index5';

      Client_Park := TClientDataSet.Create(nil);
      Client_Park.FieldDefs.Add('inf_obj_id'  ,ftInteger);
      Client_Park.FieldDefs.Add('search_cod' ,ftString,   6);
      Client_Park.CreateDataSet;
      Client_Park.LogChanges := False;
      Client_Park.IndexDefs.Add('ClientDS_Index6', 'search_cod', []);
      Client_Park.IndexName := 'ClientDS_Index6';


      Client_State := TClientDataSet.Create(nil);
      Client_State.FieldDefs.Add('search_cod' ,ftString,   6);
      Client_State.FieldDefs.Add('state_cod'  ,ftString,   6);
      Client_State.FieldDefs.Add('state_name' ,ftString, 100);
      Client_State.CreateDataSet;
      Client_State.LogChanges := False;
      Client_State.IndexDefs.Add('ClientDS_Index7', 'search_cod', []);
      Client_State.IndexName := 'ClientDS_Index7';

      //**************************************************************************


      Q := TADOQuery.Create(nil);
      Q.ConnectionString := Fconnect_str;
      Q.CommandTimeout   := 600;

      Q_Vagon := TADOQuery.Create(nil);
      Q_Vagon.ConnectionString := Fconnect_str;
      Q_Vagon.CommandTimeout   := 600;

      str_node_cod := TStringList.Create;
      str_node_cod.Duplicates := dupIgnore;
      str_node_cod.Sorted := True;

      str_road_cod := TStringList.Create;
      str_road_cod.Duplicates := dupIgnore;
      str_road_cod.Sorted := True;

      str_kargoETSNG_cod := TStringList.Create;
      str_kargoETSNG_cod.Duplicates := dupIgnore;
      str_kargoETSNG_cod.Sorted := True;

      str_num_vagon := TStringList.Create;
      str_num_vagon.Duplicates := dupIgnore;
      str_num_vagon.Sorted := True;

      str_state_cod := TStringList.Create;
      str_state_cod.Duplicates := dupIgnore;
      str_state_cod.Sorted := True;

      // Ищем файл
      sp_fact_track_query_modify.Parameters.Refresh;
      sp_fact_track_query_modify.Parameters.ParamByName('@query_id'   ).Value := query_id;
      sp_fact_track_query_modify.Parameters.ParamByName('@type_action').Value := 10;
      sp_fact_track_query_modify.Open;
      users_id   := 102;


      Q.SQL.Clear;
      Q.SQL.Add('SELECT * FROM fact_track_query WHERE query_id = ' + IntToStr(query_id));
      Q.Open;
      date_query := Q.FieldByName('query_date').AsDateTime;

      Q.SQL.Clear;
      Q.SQL.Add('SELECT * FROM users WHERE users_id = ' + IntToStr(users_id));
      Q.Open;
      users_group_id := Q.FieldByName('users_group_id').AsInteger;

      MonitorOperInsert('Подготовка файла к загрузке: ' + IntToStr(query_id));

      files_load_date_begin := Now;
      files_load_date_end   := 0;
      set_error             := False;
      files_rows_count      := 0;
      files_rows_load       := 0;
      duration_parser  := 0;
      duration_infobj  := 0;


      d1 := Now;
      while not sp_fact_track_query_modify.Eof do begin
        LisSleep();

        Client_Vagon.Append;
        // Номер вагона
        Client_Vagon.FieldByName('num_vagon').Value := sp_fact_track_query_modify.FieldByName('НомерВагона').Value;
        // Дата отправления
        Client_Vagon.FieldByName('date_otpr').Value := sp_fact_track_query_modify.FieldByName('ДатаОтправления').Value;
        // Фактический вес
        Client_Vagon.FieldByName('fact_weight').Value := sp_fact_track_query_modify.FieldByName('ВесГруза').Value;
        //Код станции назначения
        Client_Vagon.FieldByName('node_end_cod').Value := sp_fact_track_query_modify.FieldByName('КодСтанцииНазначения').Value;
        //Код груза ЕТСНГ
        Client_Vagon.FieldByName('kargoETSNG_cod').Value := sp_fact_track_query_modify.FieldByName('КодЕТСНГ').Value;
//        //Код грузополучателя
//        Client_Vagon.FieldByName('poluchgr').Value := sp_fact_track_query_modify.FieldByName('').Value;

//        if GetXMLTagValueString(s1, 'IsFaulty') = '0' then
//          Client_Vagon.FieldByName('type_park_vagon').Value := '1'
//        else if GetXMLTagValueString(s1, 'IsFaulty') = '1' then
//          Client_Vagon.FieldByName('type_park_vagon').Value := '0';
//
        //Код станции отправления
        Client_Vagon.FieldByName('node_begin_cod'     ).Value := sp_fact_track_query_modify.FieldByName('КодСтанцииОтправления').Value;
        //Код операции
        Client_Vagon.FieldByName('cod_operation_cod'  ).Value := sp_fact_track_query_modify.FieldByName('ИДОперации').AsString;
        //Дата операции
        Client_Vagon.FieldByName('date_operation'     ).Value := sp_fact_track_query_modify.FieldByName('ДатаДислокации').Value;
        //Станция операции
        Client_Vagon.FieldByName('node_operation_cod' ).Value := sp_fact_track_query_modify.FieldByName('КодСтанцииДислокации').Value;
        //Код дороги отправления
        Client_Vagon.FieldByName('road_begin_cod'     ).Value := sp_fact_track_query_modify.FieldByName('КодДорогиОтправления').Value;
        //Код дороги назначения
        Client_Vagon.FieldByName('road_end_cod'       ).Value := sp_fact_track_query_modify.FieldByName('КодДорогиНазначения').Value;

//        // Код страны отправления
//        Client_Vagon.FieldByName('state_begin_cod'    ).Value := GetXMLTagValueString(s1, 'strO');
//        // Код страны назначения
//        Client_Vagon.FieldByName('state_end_cod'      ).Value := GetXMLTagValueString(s1, 'strN');

        //Индекс поезда
        Client_Vagon.FieldByName('index_train'    ).Value := sp_fact_track_query_modify.FieldByName('ИндексПоезда').Value;
        //Номер поезда
        Client_Vagon.FieldByName('num_train'      ).Value := sp_fact_track_query_modify.FieldByName('НомерПоезда').Value;

//        //Имя загружаемого файла
//        Client_Vagon.FieldByName('file_load_name' ).Value := files_name;

        //Номер накладной
        Client_Vagon.FieldByName('doc_number'     ).Value := sp_fact_track_query_modify.FieldByName('НомерНакладной').Value;
        //Код грузополучателя
        Client_Vagon.FieldByName('grpol_okpo'     ).Value := iif(sp_fact_track_query_modify.FieldByName('ОКПОГрузополучателя').AsString = '', null, sp_fact_track_query_modify.FieldByName('ОКПОГрузополучателя').Value);
        Client_Vagon.FieldByName('grpol_name'     ).Value := iif(sp_fact_track_query_modify.FieldByName('Грузополучатель').AsString = '', null, sp_fact_track_query_modify.FieldByName('Грузополучатель').AsString);
        //Код грузоотправителя
        Client_Vagon.FieldByName('grotpr_okpo'    ).Value := iif(sp_fact_track_query_modify.FieldByName('ОКПОГрузоотправителя').AsString = '', null, sp_fact_track_query_modify.FieldByName('ОКПОГрузоотправителя').AsString);
        Client_Vagon.FieldByName('grotpr_name'    ).Value := iif(sp_fact_track_query_modify.FieldByName('Грузоотправитель').AsString = '', null, sp_fact_track_query_modify.FieldByName('Грузоотправитель').AsString);

//        //жд код грузополучателя
//        Client_Vagon.FieldByName('RW_grpol'       ).Value := GetXMLTagValueString(s1, 'RW_grpol');
//        //жд код грузоотправителя
//        Client_Vagon.FieldByName('RW_grotpr'      ).Value := GetXMLTagValueString(s1, 'RW_grotpr');
//        //Дата погрузки
//        Client_Vagon.FieldByName('DateLoading'    ).Value := GetXMLTagValueDatetime(s1, 'DateLoading');
//        //Расчетная дорога
//        Client_Vagon.FieldByName('RW_Rash'        ).Value := GetXMLTagValueString(s1, 'RW_Rash');
//        Client_Vagon.FieldByName('idReis'         ).Value := GetXMLTagValueString(s1, 'idReis');
//        Client_Vagon.FieldByName('DatePrib'       ).Value := GetXMLTagValueDatetime(s1, 'DatePrib');
//        Client_Vagon.FieldByName('DateVygr'       ).Value := GetXMLTagValueDatetime(s1, 'DateVygr');
//        Client_Vagon.FieldByName('nPut'           ).Value := GetXMLTagValueString(s1, 'nPut');
//        Client_Vagon.FieldByName('nPark'          ).Value := GetXMLTagValueString(s1, 'nPark');
//        Client_Vagon.FieldByName('nvp'            ).Value := GetXMLTagValueString(s1, 'nvp');

//        Client_Vagon.FieldByName('OwnerOkpo'      ).Value := sp_fact_track_query_modify.FieldByName('').Value;
        Client_Vagon.FieldByName('OwnerOkpoName'  ).Value := sp_fact_track_query_modify.FieldByName('СобственникНаим').Value;
//        Client_Vagon.FieldByName('ArendOkpo'      ).Value := sp_fact_track_query_modify.FieldByName('').Value;
        Client_Vagon.FieldByName('ArendOkpoName'  ).Value := sp_fact_track_query_modify.FieldByName('АрендаторНаим').Value;
//        Client_Vagon.FieldByName('OperName'       ).Value := sp_fact_track_query_modify.FieldByName('').Value;
//        Client_Vagon.FieldByName('OperDateEnd'    ).Value := sp_fact_track_query_modify.FieldByName('').Value;

        if sp_fact_track_query_modify.FieldByName('Груженый').Value = 'y' then Client_Vagon.FieldByName('IsEmpty').Value := 0
        else Client_Vagon.FieldByName('IsEmpty').Value := 1;


        // Новые поля
        Client_Vagon.FieldByName('query_id'      ).Value := query_id;
        Client_Vagon.FieldByName('vagon_date'    ).Value := sp_fact_track_query_modify.FieldByName('Период').Value;
        Client_Vagon.FieldByName('vagon_guid'    ).Value := sp_fact_track_query_modify.FieldByName('ИДВагона').Value;

        Client_Vagon.FieldByName('vagon_model_name' ).Value := sp_fact_track_query_modify.FieldByName('Модель').Value;
        Client_Vagon.FieldByName('date_build'       ).Value := sp_fact_track_query_modify.FieldByName('ДатаПостройки').Value;
        Client_Vagon.FieldByName('date_remove'      ).Value := sp_fact_track_query_modify.FieldByName('ДатаОконСлужбы').Value;
        Client_Vagon.FieldByName('next_date_repair' ).Value := sp_fact_track_query_modify.FieldByName('ДатаСледующегоРемонта').Value;

        Client_Vagon.FieldByName('last_depot_repair_date'   ).Value := sp_fact_track_query_modify.FieldByName('ДатаПоследнегоДеповскогоРемонта').Value;
        Client_Vagon.FieldByName('last_capital_repair_date' ).Value := sp_fact_track_query_modify.FieldByName('ДатаПоследнегоКапитальногоРемонта').Value;
        Client_Vagon.FieldByName('last_depot_repair_depo'   ).Value := sp_fact_track_query_modify.FieldByName('ДепоПоследнегоДеповскогоРемонта').Value;
        Client_Vagon.FieldByName('last_capital_repair_depo' ).Value := sp_fact_track_query_modify.FieldByName('ДепоПоследнегоКапитальногоРемонта').Value;
        Client_Vagon.FieldByName('next_date_repair'         ).Value := sp_fact_track_query_modify.FieldByName('ДатаСледующегоРемонта').Value;
        Client_Vagon.FieldByName('depo_in_repair_cod'       ).Value := sp_fact_track_query_modify.FieldByName('КодДепоПоступленияВРемонт').Value;
        Client_Vagon.FieldByName('depo_in_repair_name'      ).Value := sp_fact_track_query_modify.FieldByName('НаименованиеДепоПоступленияВРемонт').Value;
        Client_Vagon.FieldByName('depo_out_repair_cod'      ).Value := sp_fact_track_query_modify.FieldByName('КодДепоВыходаИзРемонта').Value;
        Client_Vagon.FieldByName('depo_out_repair_name'     ).Value := sp_fact_track_query_modify.FieldByName('НаименованиеДепоВыходаИзРемонта').Value;
        Client_Vagon.FieldByName('defect_cod'               ).Value := sp_fact_track_query_modify.FieldByName('КодНеисправности').Value;
        Client_Vagon.FieldByName('defect_name'              ).Value := sp_fact_track_query_modify.FieldByName('НаименованиеНеисправности').Value;
        Client_Vagon.FieldByName('set_control_repair'       ).Value := iif(sp_fact_track_query_modify.FieldByName('КонтрольРемонтаПоПробегу').AsString = 'Ложь', False, True);
        Client_Vagon.FieldByName('vid_next_repair'          ).Value := sp_fact_track_query_modify.FieldByName('ВидСледующегоРемонта').Value;
        Client_Vagon.FieldByName('milage_passed'            ).Value := sp_fact_track_query_modify.FieldByName('ПробегТекКм').Value;
        Client_Vagon.FieldByName('milage_passed_date'       ).Value := sp_fact_track_query_modify.FieldByName('ПробегТекДата').Value;
        Client_Vagon.FieldByName('milage_rest'              ).Value := sp_fact_track_query_modify.FieldByName('ПробегОстКм').Value;
        Client_Vagon.FieldByName('milage_rest_date'         ).Value := sp_fact_track_query_modify.FieldByName('ПробегОстДата').Value;

        Client_Vagon.FieldByName('days_route'        ).Value := sp_fact_track_query_modify.FieldByName('ДнейМаршрута').Value;
        Client_Vagon.FieldByName('days_route_end'    ).Value := sp_fact_track_query_modify.FieldByName('ДнейДоКонцаМаршрута').Value;
        Client_Vagon.FieldByName('days_free'         ).Value := null;//sp_fact_track_query_modify.FieldByName('ДниБезДвижения').Value;
        Client_Vagon.FieldByName('distance_node_end' ).Value := sp_fact_track_query_modify.FieldByName('РасстояниеОсталось').Value;
        Client_Vagon.FieldByName('date_arrival_plan' ).Value := sp_fact_track_query_modify.FieldByName('ОриентировочнаяДатаПрибытия').Value;
        Client_Vagon.FieldByName('set_arrival'       ).Value := iif(sp_fact_track_query_modify.FieldByName('Прибыл').Value = 'n', False, True);
        Client_Vagon.FieldByName('set_broken'        ).Value := iif(sp_fact_track_query_modify.FieldByName('Сломан').Value = 'n', False, True);
        Client_Vagon.FieldByName('vagon_status'      ).Value := sp_fact_track_query_modify.FieldByName('Состояние').Value;
        Client_Vagon.FieldByName('date_otpr_zd'      ).Value := sp_fact_track_query_modify.FieldByName('ДатаОтправленияПоДаннымЖД').Value;
//        Client_Vagon.FieldByName('date_arrival_fact' ).Value := sp_fact_track_query_modify.FieldByName('ДатаФактическогПрибытияНаСтНазначения').Value;

        Client_Vagon.FieldByName('transport_pay' ).Value := sp_fact_track_query_modify.FieldByName('ТарифСумма').Value;
        Client_Vagon.FieldByName('brief_name'    ).Value := sp_fact_track_query_modify.FieldByName('ТарифВалюта').Value;
        Client_Vagon.FieldByName('tracking_type' ).Value := sp_fact_track_query_modify.FieldByName('ТипСлежения').Value;
        Client_Vagon.FieldByName('gu12_cod'      ).Value := sp_fact_track_query_modify.FieldByName('ГУ12').Value;
        Client_Vagon.FieldByName('num_kont'      ).Value := sp_fact_track_query_modify.FieldByName('НомерКонтейнера').Value;
        Client_Vagon.FieldByName('type_kont'     ).Value := sp_fact_track_query_modify.FieldByName('ТипКонтейнера').Value;

        Client_Vagon.Post;


        str_node_cod.Add(Client_Vagon.FieldByName('node_begin_cod').AsString);
        str_node_cod.Add(Client_Vagon.FieldByName('node_end_cod').AsString);
        str_node_cod.Add(Client_Vagon.FieldByName('node_operation_cod').AsString);
        str_road_cod.Add(Client_Vagon.FieldByName('road_begin_cod').AsString);
        str_road_cod.Add(Client_Vagon.FieldByName('road_end_cod').AsString);

        str_kargoETSNG_cod.Add(Client_Vagon.FieldByName('kargoETSNG_cod').AsString);

        str_num_vagon.Add(Client_Vagon.FieldByName('num_vagon').AsString);

//        str_state_cod.Add(Client_Vagon.FieldByName('state_begin_cod').AsString);
//        str_state_cod.Add(Client_Vagon.FieldByName('state_end_cod').AsString);

//        str_OKPO.Add(Trim(Client_Vagon.FieldByName('grpol_okpo').AsString));
//        str_OKPO.Add(Trim(Client_Vagon.FieldByName('grotpr_okpo').AsString));

        if (i mod 100) = 0 then begin
          MonitorSetCaption2('Подготовка файла к загрузке (обработанно ' + IntToStr(sp_fact_track_query_modify.RecNo) + ' из ' + IntToStr(sp_fact_track_query_modify.RecordCount) + ')...');
          MonitorOperUpdate(sp_fact_track_query_modify.RecordCount, sp_fact_track_query_modify.RecNo);
        end;

        sp_fact_track_query_modify.Next;
      end;
      MonitorSetCaption2('Подготовка файла к загрузке (обработанно ' + IntToStr(sp_fact_track_query_modify.RecNo) + ' из ' + IntToStr(sp_fact_track_query_modify.RecordCount) + ')...');
      MonitorOperUpdate(sp_fact_track_query_modify.RecordCount, sp_fact_track_query_modify.RecNo);
      MonitorOperEnd('Завершено');

      MonitorOperInsert('Обновление справочников: ' + IntToStr(query_id));

      files_rows_count := Client_Vagon.RecordCount;
      duration_parser  := MilliSecondsBetween(Now, d1);
      d1 := Now;


      Q.SQL.Clear;
      Q.SQL.Add('SELECT inf_obj_cod, inf_obj_id FROM inf_obj WHERE (type_inf_id = 115)');
      Q.SQL.Add('AND ' + DateToSQL(Date) + ' BETWEEN date_begin AND ISNULL(date_end,GETDATE())');
      Q.Open;
      Q.First;
      while not Q.Eof do begin
        Client_TrainOper.Append;
        Client_TrainOper.FieldByName('search_cod' ).Value := Q.FieldByName('inf_obj_cod').Value;
        Client_TrainOper.FieldByName('inf_obj_id' ).Value := Q.FieldByName('inf_obj_id').Value;
        Client_TrainOper.Post;
        Q.Next;
      end;

      Q.SQL.Clear;
      Q.SQL.Add('SELECT inf_obj_cod, inf_obj_id FROM inf_obj WHERE (type_inf_id = 114)');
      Q.SQL.Add('AND ' + DateToSQL(Date) + ' BETWEEN date_begin AND ISNULL(date_end,GETDATE())');
      Q.Open;
      Q.First;
      while not Q.Eof do begin
        Client_VagonOper.Append;
        Client_VagonOper.FieldByName('search_cod' ).Value := Q.FieldByName('inf_obj_cod').Value;
        Client_VagonOper.FieldByName('inf_obj_id' ).Value := Q.FieldByName('inf_obj_id').Value;
        Client_VagonOper.Post;
        Q.Next;
      end;

      Q.SQL.Clear;
      Q.SQL.Add('SELECT inf_obj_cod, inf_obj_id FROM inf_obj WHERE (type_inf_id = 119)');
      Q.SQL.Add('AND ' + DateToSQL(Date) + ' BETWEEN date_begin AND ISNULL(date_end,GETDATE())');
      Q.Open;
      Q.First;
      while not Q.Eof do begin
        Client_Park.Append;
        Client_Park.FieldByName('search_cod' ).Value := Q.FieldByName('inf_obj_cod').Value;
        Client_Park.FieldByName('inf_obj_id' ).Value := Q.FieldByName('inf_obj_id').Value;
        Client_Park.Post;
        Q.Next;
      end;

      Q.SQL.Clear;
      Q.SQL.Add('DECLARE @str_node_cod varchar(max), @date_from_to datetime');
      Q.SQL.Add('SET @date_from_to = ' + DateToSQL(Date));
      Q.SQL.Add('SET @str_node_cod = ''' + str_node_cod.CommaText + '''');
      Q.SQL.Add('SELECT	  x1.cod,');
      Q.SQL.Add('         inf_obj_NODE.inf_obj_id, inf_obj_NODE.inf_obj_name, inf_obj_NODE.inf_obj_cod,');
      Q.SQL.Add('         inf_obj_NODE.road_id, inf_obj_ROAD.inf_obj_cod as road_cod, inf_obj_ROAD.inf_obj_name as road_name');
      Q.SQL.Add('FROM	    inf_obj_NODE');
      Q.SQL.Add('         inner join (SELECT cod FROM dbo.StrToTblStr(@str_node_cod, default) WHERE cod is not null and len(cod) = 6) x1 on inf_obj_NODE.inf_obj_cod = x1.cod');
      Q.SQL.Add('         left join inf_obj_ROAD on inf_obj_NODE.road_id = inf_obj_ROAD.inf_obj_id');
      Q.SQL.Add('WHERE	  @date_from_to BETWEEN inf_obj_NODE.date_begin AND ISNULL(inf_obj_NODE.date_end,GETDATE())');
      Q.SQL.Add('         and len(cod) = 6');
      Q.SQL.Add('UNION');
      Q.SQL.Add('SELECT	  x1.cod,');
      Q.SQL.Add('         inf_obj_NODE.inf_obj_id, inf_obj_NODE.inf_obj_name, inf_obj_NODE.inf_obj_cod,');
      Q.SQL.Add('         inf_obj_NODE.road_id, inf_obj_ROAD.inf_obj_cod as road_cod, inf_obj_ROAD.inf_obj_name as road_name');
      Q.SQL.Add('FROM	    inf_obj_NODE');
      Q.SQL.Add('         inner join (SELECT cod, RIGHT(''00000'' + LEFT(cod, 5), 5) as cod_5 FROM dbo.StrToTblStr(@str_node_cod, default) WHERE cod is not null and len(cod) <> 6) x1 on RIGHT(''00000'' + LEFT(inf_obj_NODE.inf_obj_cod, 5), 5) = x1.cod_5');
      Q.SQL.Add('         left join inf_obj_ROAD on inf_obj_NODE.road_id = inf_obj_ROAD.inf_obj_id');
      Q.SQL.Add('WHERE	  @date_from_to BETWEEN inf_obj_NODE.date_begin AND ISNULL(inf_obj_NODE.date_end,GETDATE())');
      Q.SQL.Add('         and len(cod) <>6');
      Q.Open;

      Q.First;
      while not Q.Eof do begin
        Client_Node.Append;
        Client_Node.FieldByName('search_cod' ).Value := Q.FieldByName('cod').Value;
        Client_Node.FieldByName('node_cod'   ).Value := Q.FieldByName('inf_obj_cod').Value;
        Client_Node.FieldByName('node_name'  ).Value := Q.FieldByName('inf_obj_name').Value;
        Client_Node.FieldByName('road_cod'   ).Value := Q.FieldByName('road_cod').Value;
        Client_Node.FieldByName('road_name'  ).Value := Q.FieldByName('road_name').Value;
        Client_Node.Post;
        Q.Next;
      end;

      Q.SQL.Clear;
      Q.SQL.Add('DECLARE @str_road_cod varchar(max), @date_from_to datetime');
      Q.SQL.Add('SET @date_from_to = ' + DateToSQL(Date));
      Q.SQL.Add('SET @str_road_cod = ''' + str_road_cod.CommaText + '''');
      Q.SQL.Add('SELECT cod, inf_obj_id, inf_obj_cod, inf_obj_name');
      Q.SQL.Add('FROM	  inf_obj_ROAD');
      Q.SQL.Add('       inner join (SELECT cod, RIGHT(''000'' + LEFT(cod, 3), 3) as cod_3 FROM dbo.StrToTblStr(@str_road_cod, default) WHERE cod is not null) x1');
      Q.SQL.Add('       on RIGHT(''000'' + LEFT(inf_obj_ROAD.inf_obj_cod, 3), 3) = x1.cod_3');
      Q.SQL.Add('WHERE	@date_from_to BETWEEN date_begin AND ISNULL(date_end,GETDATE())');
      Q.SQL.Add('ORDER BY cod, inf_obj_id');
      Q.Open;
      Q.First;
      while not Q.Eof do begin
        Client_Road.Append;
        Client_Road.FieldByName('search_cod' ).Value := Q.FieldByName('cod').Value;
        Client_Road.FieldByName('road_cod'   ).Value := Q.FieldByName('inf_obj_cod').Value;
        Client_Road.FieldByName('road_name'  ).Value := Q.FieldByName('inf_obj_name').Value;
        Client_Road.Post;
        Q.Next;
      end;


      Q.SQL.Clear;
      Q.SQL.Add('DECLARE @str_state_cod varchar(max)');
      Q.SQL.Add('SET @str_state_cod = ''' + str_state_cod.CommaText + '''');
      Q.SQL.Add('SELECT	cod, inf_obj_id, inf_obj_cod, inf_obj_name');
      Q.SQL.Add('FROM	  inf_obj_STATE');
      Q.SQL.Add('        inner join (SELECT cod, RIGHT(''000'' + LEFT(cod, 3), 3) as cod_3 FROM dbo.StrToTblStr(@str_state_cod, default) WHERE cod is not null) x1');
      Q.SQL.Add('        on RIGHT(''000'' + LEFT(inf_obj_STATE.inf_obj_cod, 3), 3) = x1.cod_3');
      Q.SQL.Add('ORDER BY cod, inf_obj_id');
      Q.Open;
      Q.First;
      while not Q.Eof do begin
        Client_State.Append;
        Client_State.FieldByName('search_cod' ).Value := Q.FieldByName('cod').Value;
        Client_State.FieldByName('state_cod'  ).Value := Q.FieldByName('inf_obj_cod').Value;
        Client_State.FieldByName('state_name' ).Value := Q.FieldByName('inf_obj_name').Value;
        Client_State.Post;
        Q.Next;
      end;

      Q.SQL.Clear;
      Q.SQL.Add('DECLARE @str_kargoETSNG_cod varchar(max), @date_from_to datetime');
      Q.SQL.Add('SET @date_from_to = ' + DateToSQL(Date));
      Q.SQL.Add('SET @str_kargoETSNG_cod = ''' + str_kargoETSNG_cod.CommaText + '''');
      Q.SQL.Add('SELECT	cod, inf_obj_id, inf_obj_cod, inf_obj_name');
      Q.SQL.Add('FROM	  inf_obj_ETSNG');
      Q.SQL.Add('       inner join (SELECT cod, RIGHT(''00000'' + LEFT(cod, 5), 5) as cod_5 FROM dbo.StrToTblStr(@str_kargoETSNG_cod, default) WHERE cod is not null) x1');
      Q.SQL.Add('       on RIGHT(''00000'' + LEFT(inf_obj_ETSNG.inf_obj_cod, 5), 5) = x1.cod_5');
      Q.SQL.Add('WHERE	@date_from_to BETWEEN date_begin AND ISNULL(date_end,GETDATE())');
      Q.SQL.Add('ORDER BY cod, inf_obj_id');
      Q.Open;
      Q.First;
      while not Q.Eof do begin
        Client_Kargo.Append;
        Client_Kargo.FieldByName('search_cod' ).Value := Q.FieldByName('cod').Value;
        Client_Kargo.FieldByName('kargo_cod'  ).Value := Q.FieldByName('inf_obj_cod').Value;
        Client_Kargo.FieldByName('kargo_name' ).Value := Q.FieldByName('inf_obj_name').Value;
        Client_Kargo.Post;
        Q.Next;
      end;
      //**************************************************************************

      Q.SQL.Clear;
      Q.SQL.Add('SELECT cod as num_vagon INTO #num_vagon FROM dbo.StrToTbl(''' + str_num_vagon.CommaText + ''', default)');
      Q.SQL.Add('SELECT	view_vagon.vagon_id, view_vagon.num_vagon');
      Q.SQL.Add('FROM	  view_vagon inner join #num_vagon on #num_vagon.num_vagon = view_vagon.num_vagon');
      Q.SQL.Add('WHERE	users_group_id = ' + IntToStr(users_group_id));
      Q.SQL.Add('DROP TABLE #num_vagon');
      Q.Open;

      Client_Vagon.First;
      while not Client_Vagon.Eof do begin
        Client_Vagon.Edit;
        Client_Vagon.FieldByName('vagon_id').Value := Q.Lookup('num_vagon', Client_Vagon.FieldByName('num_vagon').Value, 'vagon_id');
        // Добавляем вагон в справочник
        if Client_Vagon.FieldByName('vagon_id').IsNull then begin

          for i := 0 to sp_vagon_modify.Parameters.Count - 1 do begin
            sp_vagon_modify.Parameters.Items[i].Value := NULL;
          end;

          sp_vagon_modify.Parameters.Refresh;
          sp_vagon_modify.Parameters.ParamByName('@type_action'          ).Value := 0;
          sp_vagon_modify.Parameters.ParamByName('@str_num_vagon'        ).Value := Client_Vagon.FieldByName('num_vagon').Value;
          sp_vagon_modify.Parameters.ParamByName('@vagon_id'             ).Value := null;
          sp_vagon_modify.Parameters.ParamByName('@vagon_model_name'     ).Value := Client_Vagon.FieldByName('vagon_model_name').Value;
          sp_vagon_modify.Parameters.ParamByName('@date_build'           ).Value := Client_Vagon.FieldByName('date_build').Value;
          sp_vagon_modify.Parameters.ParamByName('@date_remove'          ).Value := Client_Vagon.FieldByName('date_remove').Value;
          sp_vagon_modify.Parameters.ParamByName('@next_date_repair'     ).Value := Client_Vagon.FieldByName('next_date_repair').Value;
          sp_vagon_modify.Parameters.ParamByName('@node_registration_id' ).Value := null;
          sp_vagon_modify.Parameters.ParamByName('@set_sanctions'        ).Value := False;

          sp_vagon_modify.Parameters.ParamByName('@owner_contract_id'   ).Value := 11937127;
          sp_vagon_modify.Parameters.ParamByName('@owner_date_begin'    ).Value := EncodeDate(2022, 1, 1);
          sp_vagon_modify.Parameters.ParamByName('@type_park_id'        ).Value := 4824867;

          sp_vagon_modify.ExecProc;
          Client_Vagon.FieldByName('vagon_id').Value := sp_vagon_modify.Parameters.ParamByName('@vagon_id').Value;
        end;


        if Client_Node.FindKey([Client_Vagon.FieldByName('node_begin_cod').AsString]) then begin
          Client_Vagon.FieldByName('node_begin_cod'       ).Value := Client_Node.FieldByName('node_cod').Value;
          Client_Vagon.FieldByName('node_begin_name'      ).Value := Client_Node.FieldByName('node_name').Value;
          Client_Vagon.FieldByName('node_begin_road_cod'  ).Value := Client_Node.FieldByName('road_cod').Value;
          Client_Vagon.FieldByName('node_begin_road_name' ).Value := Client_Node.FieldByName('road_name').Value;
        end else begin
          Client_Vagon.FieldByName('node_begin_cod'       ).Value := Client_Vagon.FieldByName('node_begin_cod').Value;
          Client_Vagon.FieldByName('node_begin_name'      ).Value := null;
          Client_Vagon.FieldByName('node_begin_road_cod'  ).Value := null;
          Client_Vagon.FieldByName('node_begin_road_name' ).Value := null;
        end;

        if Client_Node.FindKey([Client_Vagon.FieldByName('node_end_cod').AsString]) then begin
          Client_Vagon.FieldByName('node_end_cod'       ).Value := Client_Node.FieldByName('node_cod').Value;
          Client_Vagon.FieldByName('node_end_name'      ).Value := Client_Node.FieldByName('node_name').Value;
          Client_Vagon.FieldByName('node_end_road_cod'  ).Value := Client_Node.FieldByName('road_cod').Value;
          Client_Vagon.FieldByName('node_end_road_name' ).Value := Client_Node.FieldByName('road_name').Value;
        end else begin
          Client_Vagon.FieldByName('node_end_cod'       ).Value := Client_Vagon.FieldByName('node_end_cod').Value;
          Client_Vagon.FieldByName('node_end_name'      ).Value := null;
          Client_Vagon.FieldByName('node_end_road_cod'  ).Value := null;
          Client_Vagon.FieldByName('node_end_road_name' ).Value := null;
        end;

        if Client_Node.FindKey([Client_Vagon.FieldByName('node_operation_cod').AsString]) then begin
          Client_Vagon.FieldByName('node_operation_cod'  ).Value := Client_Node.FieldByName('node_cod').Value;
          Client_Vagon.FieldByName('node_operation_name' ).Value := Client_Node.FieldByName('node_name').Value;
          Client_Vagon.FieldByName('road_operation_cod'  ).Value := Client_Node.FieldByName('road_cod').Value;
          Client_Vagon.FieldByName('road_operation_name' ).Value := Client_Node.FieldByName('road_name').Value;
        end else begin
          Client_Vagon.FieldByName('node_operation_cod'  ).Value := Client_Vagon.FieldByName('node_operation_cod').Value;
          Client_Vagon.FieldByName('node_operation_name' ).Value := null;
          Client_Vagon.FieldByName('road_operation_cod'  ).Value := null;
          Client_Vagon.FieldByName('road_operation_name' ).Value := null;
        end;

        if Client_Road.FindKey([Client_Vagon.FieldByName('road_begin_cod').AsString]) then begin
          Client_Vagon.FieldByName('road_begin_cod'  ).Value := Client_Road.FieldByName('road_cod').Value;
          Client_Vagon.FieldByName('road_begin_name' ).Value := Client_Road.FieldByName('road_name').Value;
        end;

        if Client_State.FindKey([Client_Vagon.FieldByName('state_begin_cod').AsString]) then begin
          Client_Vagon.FieldByName('state_begin_cod'  ).Value := Client_State.FieldByName('state_cod').Value;
          Client_Vagon.FieldByName('state_begin_name' ).Value := Client_State.FieldByName('state_name').Value;
        end;

        if Client_State.FindKey([Client_Vagon.FieldByName('state_end_cod').AsString]) then begin
          Client_Vagon.FieldByName('state_end_cod'  ).Value := Client_State.FieldByName('state_cod').Value;
          Client_Vagon.FieldByName('state_end_name' ).Value := Client_State.FieldByName('state_name').Value;
        end;

        if Client_Road.FindKey([Client_Vagon.FieldByName('road_end_cod').AsString]) then begin
          Client_Vagon.FieldByName('road_end_cod'  ).Value := Client_Road.FieldByName('road_cod').Value;
          Client_Vagon.FieldByName('road_end_name' ).Value := Client_Road.FieldByName('road_name').Value;
        end;

        if Client_Kargo.FindKey([Client_Vagon.FieldByName('kargoETSNG_cod').AsString]) then begin
          Client_Vagon.FieldByName('kargoETSNG_cod'  ).Value := Client_Kargo.FieldByName('kargo_cod').Value;
          Client_Vagon.FieldByName('kargoETSNG_name' ).Value := Client_Kargo.FieldByName('kargo_name').Value;
        end;

//        if Client_TrainOper.FindKey([Client_Vagon.FieldByName('cod_operation_cod').AsString]) then begin
//          Client_Vagon.FieldByName('cod_operation_train_id').Value := Client_TrainOper.FieldByName('inf_obj_id').Value;
//        end;

        if Client_VagonOper.FindKey([Client_Vagon.FieldByName('cod_operation_cod').AsString]) then begin
          Client_Vagon.FieldByName('cod_operation_vagon_id').Value := Client_VagonOper.FieldByName('inf_obj_id').Value;
        end;

        if Client_Park.FindKey([Client_Vagon.FieldByName('type_park_vagon').AsString]) then begin
          Client_Vagon.FieldByName('type_park_vagon_id').Value := Client_Park.FieldByName('inf_obj_id').Value;
        end;
        //****************************************************************************************************************************

        Client_Vagon.Post;
        Client_Vagon.Next;

        if (Client_Vagon.RecNo mod 1000) = 0 then begin
          MonitorSetCaption2('Подготовка спровочников (обработанно ' + IntToStr(Client_Vagon.RecNo) + ' из ' + IntToStr(Client_Vagon.RecordCount) + ')...');
          MonitorOperUpdate(Client_Vagon.RecordCount, Client_Vagon.RecNo);
        end;

      end;
      MonitorSetCaption2('Подготовка спровочников (обработанно ' + IntToStr(Client_Vagon.RecNo) + ' из ' + IntToStr(Client_Vagon.RecordCount) + ')...');
      MonitorOperUpdate(Client_Vagon.RecordCount, Client_Vagon.RecNo);
      MonitorOperEnd('Завершено');

      duration_infobj := MilliSecondsBetween(Now, d1);

      // Поиск рейсов
      Client_Vagon.First;
      while not Client_Vagon.Eof do begin
        Client_VagonTrip.Append;
        Client_VagonTrip.FieldByName('id'     ).Value := Client_Vagon.FieldByName('id').Value;
        Client_VagonTrip.FieldByName('nvag'   ).Value := Client_Vagon.FieldByName('num_vagon').Value;
        Client_VagonTrip.FieldByName('nend'   ).Value := Client_Vagon.FieldByName('node_end_cod').Value;
        Client_VagonTrip.FieldByName('nbegin' ).Value := Client_Vagon.FieldByName('node_begin_cod').Value;
        Client_VagonTrip.FieldByName('noper'  ).Value := Client_Vagon.FieldByName('node_operation_cod').Value;
        Client_VagonTrip.FieldByName('doper'  ).Value := Client_Vagon.FieldByName('date_operation').Value;
        Client_VagonTrip.Post;
        Client_Vagon.Next;
      end;

      MonitorOperInsert('Поиск рейсов: ' + IntToStr(query_id));

//      sp_fact_track_trip_find.Parameters.Refresh;
//      sp_fact_track_trip_find.Parameters.ParamByName('@xml'           ).Value := DataXMLToSQL(Client_VagonTrip);
//      sp_fact_track_trip_find.Parameters.ParamByName('@users_group_id').Value := users_group_id;

      sp_fact_track_trip_find.SQL.Add(GetProcedureFromRes('sp_fact_track_trip_find'));
      sp_fact_track_trip_find.Parameters.ParamByName('users_group_id' ).Value := users_group_id;
      sp_fact_track_trip_find.Parameters.ParamByName('param_xml'      ).Value := DataXMLToSQL(Client_VagonTrip);

      sp_fact_track_trip_find.Open;
      while not sp_fact_track_trip_find.Eof do begin
        if Client_Vagon.FindKey([sp_fact_track_trip_find.FieldByName('id').AsInteger]) then begin
          Client_Vagon.Edit;
          Client_Vagon.FieldByName('fact_track_trip_id').Value := sp_fact_track_trip_find.FieldByName('fact_track_trip_id').Value;
          Client_Vagon.Post;
        end;
        sp_fact_track_trip_find.Next;

        if (sp_fact_track_trip_find.RecNo mod 100) = 0 then begin
          MonitorSetCaption2('Поиск рейсов (обработанно ' + IntToStr(sp_fact_track_trip_find.RecNo) + ' из ' + IntToStr(sp_fact_track_trip_find.RecordCount) + ')...');
          MonitorOperUpdate(sp_fact_track_trip_find.RecordCount, sp_fact_track_trip_find.RecNo);
        end;
      end;

      MonitorSetCaption2('Поиск рейсов (обработанно ' + IntToStr(sp_fact_track_trip_find.RecNo) + ' из ' + IntToStr(sp_fact_track_trip_find.RecordCount) + ')...');
      MonitorOperUpdate(sp_fact_track_trip_find.RecordCount, sp_fact_track_trip_find.RecNo);
      MonitorOperEnd('Завершено');



      MonitorOperInsert('Сохранение данных: ' + IntToStr(query_id));
      // Сохраняем результат
      sp_fact_track_query_modify.Parameters.Refresh;
      sp_fact_track_query_modify.Parameters.ParamByName('@query_id'   ).Value := query_id;
      sp_fact_track_query_modify.Parameters.ParamByName('@type_action').Value := 3;
      sp_fact_track_query_modify.Parameters.ParamByName('@query_rows_count').Value := Client_Vagon.RecordCount;
      sp_fact_track_query_modify.ExecProc;


      SP_fact_track_modify.Parameters.Refresh;
      Client_Vagon.First;
      z := 0;
      while not Client_Vagon.Eof do begin
        for i := 0 to SP_fact_track_modify.Parameters.Count - 1 do begin
          SP_fact_track_modify.Parameters.Items[i].Value := NULL;
        end;

        SP_fact_track_modify.Parameters.ParamByName('@fact_track_id'       ).Value := -9;
        SP_fact_track_modify.Parameters.ParamByName('@type_action'         ).Value := 0;
        SP_fact_track_modify.Parameters.ParamByName('@format_file'         ).Value := 4;
        SP_fact_track_modify.Parameters.ParamByName('@num_vagon'           ).Value := Client_Vagon.FieldByName('num_vagon').Value;
        SP_fact_track_modify.Parameters.ParamByName('@rod_vagon'           ).Value := Client_Vagon.FieldByName('rod_vagon').Value;
        SP_fact_track_modify.Parameters.ParamByName('@type_vagon'          ).Value := Client_Vagon.FieldByName('type_vagon').Value;
        SP_fact_track_modify.Parameters.ParamByName('@date_otpr'           ).Value := Client_Vagon.FieldByName('date_otpr').Value;
        SP_fact_track_modify.Parameters.ParamByName('@state_self'          ).Value := Client_Vagon.FieldByName('state_self').Value;
        SP_fact_track_modify.Parameters.ParamByName('@fact_weight'         ).Value := Client_Vagon.FieldByName('fact_weight').Value;
        SP_fact_track_modify.Parameters.ParamByName('@node_end_cod'        ).Value := Client_Vagon.FieldByName('node_end_cod').Value;
        SP_fact_track_modify.Parameters.ParamByName('@kargoETSNG_cod'      ).Value := Client_Vagon.FieldByName('kargoETSNG_cod').Value;
        SP_fact_track_modify.Parameters.ParamByName('@poluchgr'            ).Value := Client_Vagon.FieldByName('poluchgr').Value;
        SP_fact_track_modify.Parameters.ParamByName('@special_marks'       ).Value := Client_Vagon.FieldByName('special_marks').Value;
        SP_fact_track_modify.Parameters.ParamByName('@comment'             ).Value := Client_Vagon.FieldByName('comment').Value;
        SP_fact_track_modify.Parameters.ParamByName('@type_park_vagon'     ).Value := Client_Vagon.FieldByName('type_park_vagon').Value;
        SP_fact_track_modify.Parameters.ParamByName('@node_begin_cod'      ).Value := Client_Vagon.FieldByName('node_begin_cod').Value;
        SP_fact_track_modify.Parameters.ParamByName('@cod_operation_cod'   ).Value := Client_Vagon.FieldByName('cod_operation_cod').Value;
        SP_fact_track_modify.Parameters.ParamByName('@date_operation'      ).Value := Client_Vagon.FieldByName('date_operation').Value;
        SP_fact_track_modify.Parameters.ParamByName('@node_operation_cod'  ).Value := Client_Vagon.FieldByName('node_operation_cod').Value;
        SP_fact_track_modify.Parameters.ParamByName('@road_begin_cod'      ).Value := Client_Vagon.FieldByName('road_begin_cod').Value;
        SP_fact_track_modify.Parameters.ParamByName('@road_end_cod'        ).Value := Client_Vagon.FieldByName('road_end_cod').Value;
        SP_fact_track_modify.Parameters.ParamByName('@index_train'         ).Value := Client_Vagon.FieldByName('index_train').Value;
        SP_fact_track_modify.Parameters.ParamByName('@num_train'           ).Value := Client_Vagon.FieldByName('num_train').Value;
        SP_fact_track_modify.Parameters.ParamByName('@doc_number'          ).Value := Client_Vagon.FieldByName('doc_number').Value;
        SP_fact_track_modify.Parameters.ParamByName('@vagon_id'            ).Value := Client_Vagon.FieldByName('vagon_id').Value;
        SP_fact_track_modify.Parameters.ParamByName('@vagon_owner_name'    ).Value := Client_Vagon.FieldByName('vagon_owner_name').Value;
        SP_fact_track_modify.Parameters.ParamByName('@file_load_name'      ).Value := Client_Vagon.FieldByName('file_load_name').Value;
        SP_fact_track_modify.Parameters.ParamByName('@date_query'          ).Value := date_query;
        SP_fact_track_modify.Parameters.ParamByName('@node_begin_name'     ).Value := Client_Vagon.FieldByName('node_begin_name').Value;
        SP_fact_track_modify.Parameters.ParamByName('@node_begin_road_cod' ).Value := Client_Vagon.FieldByName('node_begin_road_cod').Value;
        SP_fact_track_modify.Parameters.ParamByName('@node_begin_road_name').Value := Client_Vagon.FieldByName('node_begin_road_name').Value;
        SP_fact_track_modify.Parameters.ParamByName('@node_end_name'       ).Value := Client_Vagon.FieldByName('node_end_name').Value;
        SP_fact_track_modify.Parameters.ParamByName('@node_end_road_cod'   ).Value := Client_Vagon.FieldByName('node_end_road_cod').Value;
        SP_fact_track_modify.Parameters.ParamByName('@node_end_road_name'  ).Value := Client_Vagon.FieldByName('node_end_road_name').Value;
        SP_fact_track_modify.Parameters.ParamByName('@node_operation_name' ).Value := Client_Vagon.FieldByName('node_operation_name').Value;
        SP_fact_track_modify.Parameters.ParamByName('@road_operation_cod'  ).Value := Client_Vagon.FieldByName('road_operation_cod').Value;
        SP_fact_track_modify.Parameters.ParamByName('@road_operation_name' ).Value := Client_Vagon.FieldByName('road_operation_name').Value;
        SP_fact_track_modify.Parameters.ParamByName('@road_begin_name'     ).Value := Client_Vagon.FieldByName('road_begin_name').Value;
        SP_fact_track_modify.Parameters.ParamByName('@road_end_name'       ).Value := Client_Vagon.FieldByName('road_end_name').Value;
        SP_fact_track_modify.Parameters.ParamByName('@kargoETSNG_name'     ).Value := Client_Vagon.FieldByName('kargoETSNG_name').Value;
        SP_fact_track_modify.Parameters.ParamByName('@users_id'            ).Value := users_id;

        SP_fact_track_modify.Parameters.ParamByName('@query_id'            ).Value := Client_Vagon.FieldByName('query_id').Value;
        SP_fact_track_modify.Parameters.ParamByName('@vagon_date'          ).Value := Client_Vagon.FieldByName('vagon_date').Value;
        SP_fact_track_modify.Parameters.ParamByName('@vagon_guid'          ).Value := Client_Vagon.FieldByName('vagon_guid').Value;

        SP_fact_track_modify.Parameters.ParamByName('@grpol_okpo'          ).Value := iif(Client_Vagon.FieldByName('grpol_okpo').AsString = '', null, Client_Vagon.FieldByName('grpol_okpo').Value);
        SP_fact_track_modify.Parameters.ParamByName('@grotpr_okpo'         ).Value := iif(Client_Vagon.FieldByName('grotpr_okpo').AsString = '', null, Client_Vagon.FieldByName('grotpr_okpo').Value);
        SP_fact_track_modify.Parameters.ParamByName('@RW_grpol'            ).Value := Client_Vagon.FieldByName('RW_grpol').Value;
        SP_fact_track_modify.Parameters.ParamByName('@RW_grotpr'           ).Value := Client_Vagon.FieldByName('RW_grotpr').Value;
        SP_fact_track_modify.Parameters.ParamByName('@DateLoading'         ).Value := Client_Vagon.FieldByName('DateLoading').Value;
        SP_fact_track_modify.Parameters.ParamByName('@RW_Rash'             ).Value := Client_Vagon.FieldByName('RW_Rash').Value;
        SP_fact_track_modify.Parameters.ParamByName('@idReis'              ).Value := Client_Vagon.FieldByName('idReis').Value;
        SP_fact_track_modify.Parameters.ParamByName('@DatePrib'            ).Value := Client_Vagon.FieldByName('DatePrib').Value;
        SP_fact_track_modify.Parameters.ParamByName('@DateVygr'            ).Value := Client_Vagon.FieldByName('DateVygr').Value;
        SP_fact_track_modify.Parameters.ParamByName('@cod_operation_train_id' ).Value := Client_Vagon.FieldByName('cod_operation_train_id').Value;
        SP_fact_track_modify.Parameters.ParamByName('@cod_operation_vagon_id' ).Value := Client_Vagon.FieldByName('cod_operation_vagon_id').Value;
        SP_fact_track_modify.Parameters.ParamByName('@type_park_vagon_id'     ).Value := Client_Vagon.FieldByName('type_park_vagon_id').Value;
        SP_fact_track_modify.Parameters.ParamByName('@nPut'      ).Value := Client_Vagon.FieldByName('nPut').Value;
        SP_fact_track_modify.Parameters.ParamByName('@nPark'     ).Value := Client_Vagon.FieldByName('nPark').Value;
        SP_fact_track_modify.Parameters.ParamByName('@state_begin_cod'    ).Value := Client_Vagon.FieldByName('state_begin_cod').Value;
        SP_fact_track_modify.Parameters.ParamByName('@state_begin_name'   ).Value := Client_Vagon.FieldByName('state_begin_name').Value;
        SP_fact_track_modify.Parameters.ParamByName('@state_end_cod'      ).Value := Client_Vagon.FieldByName('state_end_cod').Value;
        SP_fact_track_modify.Parameters.ParamByName('@state_end_name'     ).Value := Client_Vagon.FieldByName('state_end_name').Value;
        SP_fact_track_modify.Parameters.ParamByName('@fact_track_trip_id' ).Value := Client_Vagon.FieldByName('fact_track_trip_id').Value;
        SP_fact_track_modify.Parameters.ParamByName('@IsEmpty'            ).Value := Client_Vagon.FieldByName('IsEmpty').Value;
        SP_fact_track_modify.Parameters.ParamByName('@grpol_name'         ).Value := iif(Client_Vagon.FieldByName('grpol_name').AsString = '', null, Client_Vagon.FieldByName('grpol_name').Value);
        SP_fact_track_modify.Parameters.ParamByName('@grotpr_name'        ).Value := iif(Client_Vagon.FieldByName('grotpr_name').AsString = '', null, Client_Vagon.FieldByName('grotpr_name').Value);
        SP_fact_track_modify.Parameters.ParamByName('@nvp'                ).Value := Client_Vagon.FieldByName('nvp').Value;

        SP_fact_track_modify.Parameters.ParamByName('@OwnerOkpo'          ).Value := Client_Vagon.FieldByName('OwnerOkpo').Value;
        SP_fact_track_modify.Parameters.ParamByName('@OwnerOkpoName'      ).Value := Client_Vagon.FieldByName('OwnerOkpoName').Value;
        SP_fact_track_modify.Parameters.ParamByName('@ArendOkpo'          ).Value := Client_Vagon.FieldByName('ArendOkpo').Value;
        SP_fact_track_modify.Parameters.ParamByName('@ArendOkpoName'      ).Value := Client_Vagon.FieldByName('ArendOkpoName').Value;
        SP_fact_track_modify.Parameters.ParamByName('@OperName'           ).Value := Client_Vagon.FieldByName('OperName').Value;
        SP_fact_track_modify.Parameters.ParamByName('@OperDateEnd'        ).Value := Client_Vagon.FieldByName('OperDateEnd').Value;

        SP_fact_track_modify.Parameters.ParamByName('@last_depot_repair_date'   ).Value := Client_Vagon.FieldByName('last_depot_repair_date').Value;
        SP_fact_track_modify.Parameters.ParamByName('@last_capital_repair_date' ).Value := Client_Vagon.FieldByName('last_capital_repair_date').Value;
        SP_fact_track_modify.Parameters.ParamByName('@last_depot_repair_depo'   ).Value := iif(Client_Vagon.FieldByName('last_depot_repair_depo').AsString = '', null, Client_Vagon.FieldByName('last_depot_repair_depo').Value);
        SP_fact_track_modify.Parameters.ParamByName('@last_capital_repair_depo' ).Value := iif(Client_Vagon.FieldByName('last_capital_repair_depo').AsString = '', null, Client_Vagon.FieldByName('last_capital_repair_depo').Value);
        SP_fact_track_modify.Parameters.ParamByName('@next_date_repair'         ).Value := Client_Vagon.FieldByName('next_date_repair').Value;
        SP_fact_track_modify.Parameters.ParamByName('@depo_in_repair_cod'       ).Value := iif(Client_Vagon.FieldByName('depo_in_repair_cod').AsString = '', null, Client_Vagon.FieldByName('depo_in_repair_cod').Value);
        SP_fact_track_modify.Parameters.ParamByName('@depo_in_repair_name'      ).Value := iif(Client_Vagon.FieldByName('depo_in_repair_name').AsString = '', null, Client_Vagon.FieldByName('depo_in_repair_name').Value);
        SP_fact_track_modify.Parameters.ParamByName('@depo_out_repair_cod'      ).Value := iif(Client_Vagon.FieldByName('depo_out_repair_cod').AsString = '', null, Client_Vagon.FieldByName('depo_out_repair_cod').Value);
        SP_fact_track_modify.Parameters.ParamByName('@depo_out_repair_name'     ).Value := iif(Client_Vagon.FieldByName('depo_out_repair_name').AsString = '', null, Client_Vagon.FieldByName('depo_out_repair_name').Value);
        SP_fact_track_modify.Parameters.ParamByName('@defect_cod'               ).Value := iif(Client_Vagon.FieldByName('defect_cod').AsString = '', null, Client_Vagon.FieldByName('defect_cod').Value);
        SP_fact_track_modify.Parameters.ParamByName('@defect_name'              ).Value := iif(Client_Vagon.FieldByName('defect_name').AsString = '', null, Client_Vagon.FieldByName('defect_name').Value);
        SP_fact_track_modify.Parameters.ParamByName('@set_control_repair'       ).Value := Client_Vagon.FieldByName('set_control_repair').Value;
        SP_fact_track_modify.Parameters.ParamByName('@vid_next_repair'          ).Value := Client_Vagon.FieldByName('vid_next_repair').Value;
        SP_fact_track_modify.Parameters.ParamByName('@milage_passed'            ).Value := Client_Vagon.FieldByName('milage_passed').Value;
        SP_fact_track_modify.Parameters.ParamByName('@milage_passed_date'       ).Value := Client_Vagon.FieldByName('milage_passed_date').Value;
        SP_fact_track_modify.Parameters.ParamByName('@milage_rest'              ).Value := Client_Vagon.FieldByName('milage_rest').Value;
        SP_fact_track_modify.Parameters.ParamByName('@milage_rest_date'         ).Value := Client_Vagon.FieldByName('milage_rest_date').Value;
        SP_fact_track_modify.Parameters.ParamByName('@days_route'               ).Value := Client_Vagon.FieldByName('days_route').Value;
        SP_fact_track_modify.Parameters.ParamByName('@days_route_end'           ).Value := Client_Vagon.FieldByName('days_route_end').Value;
        SP_fact_track_modify.Parameters.ParamByName('@days_free'                ).Value := null;//Client_Vagon.FieldByName('days_free').Value;
        SP_fact_track_modify.Parameters.ParamByName('@distance_node_end'        ).Value := Client_Vagon.FieldByName('distance_node_end').Value;
        SP_fact_track_modify.Parameters.ParamByName('@date_arrival_plan'        ).Value := Client_Vagon.FieldByName('date_arrival_plan').Value;
        SP_fact_track_modify.Parameters.ParamByName('@set_arrival'              ).Value := Client_Vagon.FieldByName('set_arrival').Value;
        SP_fact_track_modify.Parameters.ParamByName('@set_broken'               ).Value := Client_Vagon.FieldByName('set_broken').Value;
        SP_fact_track_modify.Parameters.ParamByName('@vagon_status'             ).Value := iif(Client_Vagon.FieldByName('vagon_status').AsString = '', null, Client_Vagon.FieldByName('vagon_status').Value);
        SP_fact_track_modify.Parameters.ParamByName('@date_otpr_zd'             ).Value := Client_Vagon.FieldByName('date_otpr_zd').Value;
        SP_fact_track_modify.Parameters.ParamByName('@date_arrival_fact'        ).Value := Client_Vagon.FieldByName('date_arrival_fact').Value;
        SP_fact_track_modify.Parameters.ParamByName('@transport_pay'            ).Value := Client_Vagon.FieldByName('transport_pay').Value;
        SP_fact_track_modify.Parameters.ParamByName('@brief_name'               ).Value := iif(Client_Vagon.FieldByName('brief_name').AsString = '', null, Client_Vagon.FieldByName('brief_name').Value);
        SP_fact_track_modify.Parameters.ParamByName('@tracking_type'            ).Value := iif(Client_Vagon.FieldByName('tracking_type').AsString = '', null, Client_Vagon.FieldByName('tracking_type').Value);
        SP_fact_track_modify.Parameters.ParamByName('@gu12_cod'                 ).Value := iif(Client_Vagon.FieldByName('gu12_cod').AsString = '', null, Client_Vagon.FieldByName('gu12_cod').Value);
        SP_fact_track_modify.Parameters.ParamByName('@num_kont'                 ).Value := iif(Client_Vagon.FieldByName('num_kont').AsString = '', null, Client_Vagon.FieldByName('num_kont').Value);
        SP_fact_track_modify.Parameters.ParamByName('@type_kont'                ).Value := iif(Client_Vagon.FieldByName('type_kont').AsString = '', null, Client_Vagon.FieldByName('type_kont').Value);

        SP_fact_track_modify.ExecProc;
        z := z + 1;

        Client_Vagon.Next;

        if (Client_Vagon.RecNo mod 10) = 0 then
          MonitorSetCaption2('Сохранение вагонов (обработанно ' + IntToStr(Client_Vagon.RecNo) + ' из ' + IntToStr(Client_Vagon.RecordCount) + ')...');

        if (Client_Vagon.RecNo mod 200) = 0 then begin
          sp_fact_track_query_modify.Parameters.Refresh;
          sp_fact_track_query_modify.Parameters.ParamByName('@query_id'   ).Value := query_id;
          sp_fact_track_query_modify.Parameters.ParamByName('@type_action').Value := 4;
          sp_fact_track_query_modify.Parameters.ParamByName('@query_rows_load').Value := Client_Vagon.RecNo;
          sp_fact_track_query_modify.ExecProc;

          files_rows_load := Client_Vagon.RecNo;

          MonitorOperUpdate(Client_Vagon.RecordCount, Client_Vagon.RecNo);
        end;

      end;
      MonitorSetCaption2('Сохранение вагонов (обработанно ' + IntToStr(Client_Vagon.RecNo) + ' из ' + IntToStr(Client_Vagon.RecordCount) + ')...');
      files_rows_load := Client_Vagon.RecNo;
      MonitorOperUpdate(Client_Vagon.RecordCount, Client_Vagon.RecNo);
      MonitorOperEnd('Завершено');

      sp_fact_track_query_modify.Parameters.Refresh;
      sp_fact_track_query_modify.Parameters.ParamByName('@query_id'   ).Value := query_id;
      sp_fact_track_query_modify.Parameters.ParamByName('@type_action').Value := 5;
      sp_fact_track_query_modify.Parameters.ParamByName('@query_rows_load').Value := Client_Vagon.RecNo;
      sp_fact_track_query_modify.ExecProc;

      Result := True;
    except
      on E: Exception do begin
//        sp_files_error := TADOStoredProc.Create(nil);
//        sp_files_error.ConnectionString := Fconnect_str;
//        sp_files_error.ProcedureName := 'sp_fact_track_files_modify';
//        sp_files_error.Parameters.Refresh;
////        sp_files_error.Parameters.ParamByName('@files_track_id').Value := files_track_id;
//        sp_files_error.Parameters.ParamByName('@type_action'   ).Value := 20;
//        sp_files_error.Parameters.ParamByName('@files_status'  ).Value := E.Message;
//        sp_files_error.ExecProc;

        set_error := True;

        MonitorOperEnd('Ошибка');

        SaveLogError('1000', 'SaveDislXML Line:' + IntToStr(z), E.Message, 'Сохранение файла ' + IntToStr(query_id));
        Result := False;
      end;
    end;
  finally
    connect.Free;
    sp_vagon_modify.Free;
    sp_fact_track_query_modify.Free;
    sp_fact_track_modify.Free;
    Client_Vagon.Free;
    Client_Node.Free;
    Client_Road.Free;
    Client_Kargo.Free;
    Client_TrainOper.Free;
    Client_VagonOper.Free;
    Client_Park.Free;
    Client_State.Free;
    Q.Free;
    str_state_cod.Free;
    str_node_cod.Free;
    str_road_cod.Free;
    str_kargoETSNG_cod.Free;
    str_num_vagon.Free;
    sp_fact_track_trip_find.Free;
  end;
end;


function TThreadFiles.CopyCod(s: string): string;
var res : string;
begin
  res := '';
  if s <> '' then begin
    if (Pos('(', s) <> 0) and (Pos(')', s) <> 0) then begin
      s := ReverseString(s);
      res := Copy(s, Pos(')', s)+1, Pos('(', s) - Pos(')', s)-1);
      res := ReverseString(res);
    end;
  end;

  Result := res;
end;

function TThreadFiles.SaveDislExcel(files_track_id: integer): boolean;
var      connect : TADOConnection;
      Q, Q_Vagon : TADOQuery;
              fd : TStringStream;
    Client_Vagon : TClientDataSet;
               i, z : integer;
        users_id : integer;
               w : extended;
             tmp : string;
              s1 : string;

              Q2 : TADOQuery;
       file_data : RawByteString;
            data : TArray<Byte>;

     Client_Node : TClientDataSet;
     Client_Road : TClientDataSet;
    Client_State : TClientDataSet;
    Client_Kargo : TClientDataSet;
 Client_RodVagon : TClientDataSet;
Client_TrainOper : TClientDataSet;
Client_VagonOper : TClientDataSet;
     Client_Park : TClientDataSet;
Client_VagonTrip : TClientDataSet;
              d1 : TDateTime;
//               s : TStringList;
               s : string;


       str_node_cod : TStringList;
       str_road_cod : TStringList;
      str_state_cod : TStringList;
 str_kargoETSNG_cod : TStringList;
      str_num_vagon : TStringList;
      str_rod_vagon : TStringList;
   str_kargoGNG_cod : TStringList;

      files_name : string;
      files_date : TDateTime;


sp_fact_track_files_modify : TADOStoredProc;
      sp_fact_track_modify : TADOStoredProc;
            sp_files_error : TADOStoredProc;
           sp_vagon_modify : TADOStoredProc;
   sp_fact_track_trip_find : TADOStoredProc;


  files_load_date_begin: TDateTime;
  files_load_date_end  : TDateTime;
  set_error            : boolean;
  files_rows_count     : integer;
  files_rows_load      : integer;
  duration_parser      : integer;
  duration_infobj      : integer;
  users_group_id       : integer;
  date_query : TDateTime;
  exWks, exApp : Variant;
         hFile : THandle;
            num_write : Cardinal;
            cnt : Integer;
begin
  try
    try
      MonitorSetCaption2('Подготовка файла к загрузке...');
      connect := TADOConnection.Create(nil);
      connect.ConnectionString := Fconnect_str;
      connect.KeepConnection   := False;
      connect.LoginPrompt      := False;
      connect.CommandTimeout   := 300;
      connect.Open;

      sp_fact_track_files_modify := TADOStoredProc.Create(nil);
      sp_fact_track_files_modify.Connection := connect;
      sp_fact_track_files_modify.ProcedureName := 'sp_fact_track_files_modify';

      SP_fact_track_modify := TADOStoredProc.Create(nil);
      SP_fact_track_modify.Connection := connect;
      SP_fact_track_modify.ProcedureName := 'SP_fact_track_modify';

      sp_fact_track_trip_find := TADOStoredProc.Create(nil);
      sp_fact_track_trip_find.Connection := connect;
      sp_fact_track_trip_find.ProcedureName := 'sp_fact_track_trip_find_1';
      sp_fact_track_trip_find.CommandTimeout := 300;


      sp_vagon_modify := TADOStoredProc.Create(nil);
      sp_vagon_modify.Connection := connect;
      sp_vagon_modify.ProcedureName := 'sp_vagon_modify';


      Client_VagonTrip := TClientDataSet.Create(nil);
      Client_VagonTrip.FieldDefs.Add('id', ftInteger);
      Client_VagonTrip.FieldDefs.Add('nvag', ftString, 9);
      Client_VagonTrip.FieldDefs.Add('nend', ftString, 7);
      Client_VagonTrip.FieldDefs.Add('nbegin', ftString, 7);
      Client_VagonTrip.FieldDefs.Add('noper', ftString, 7);
      Client_VagonTrip.FieldDefs.Add('doper', ftDateTime);
      Client_VagonTrip.CreateDataSet;
      Client_VagonTrip.LogChanges := False;


      Client_Vagon := TClientDataSet.Create(nil);
      Client_Vagon.FieldDefs.Add('id', ftAutoInc);
      Client_Vagon.FieldDefs.Add('vagon_id', ftInteger);
      Client_Vagon.FieldDefs.Add('num_vagon', ftString, 9);
      Client_Vagon.FieldDefs.Add('doc_number', ftString, 20);
      Client_Vagon.FieldDefs.Add('rod_vagon_cod', ftString, 20);
      Client_Vagon.FieldDefs.Add('rod_vagon_name', ftString, 50);
      Client_Vagon.FieldDefs.Add('date_otpr', ftDateTime);
      Client_Vagon.FieldDefs.Add('road_begin_cod', ftString, 30);
      Client_Vagon.FieldDefs.Add('road_begin_name', ftString, 200);
      Client_Vagon.FieldDefs.Add('node_begin_cod', ftString, 20);
      Client_Vagon.FieldDefs.Add('node_begin_name', ftString, 200);
      Client_Vagon.FieldDefs.Add('date_arrival', ftDateTime);
      Client_Vagon.FieldDefs.Add('node_end_cod', ftString, 20);
      Client_Vagon.FieldDefs.Add('node_end_name', ftString, 200);
      Client_Vagon.FieldDefs.Add('grpol_tgnl', ftString, 30);
      Client_Vagon.FieldDefs.Add('grpol_okpo', ftString, 30);
      Client_Vagon.FieldDefs.Add('grpol_name', ftString, 300);
      Client_Vagon.FieldDefs.Add('grotpr_tgnl', ftString, 30);
      Client_Vagon.FieldDefs.Add('grotpr_okpo', ftString, 30);
      Client_Vagon.FieldDefs.Add('grotpr_name', ftString, 300);
      Client_Vagon.FieldDefs.Add('kargoETSNG_cod', ftString, 10);
      Client_Vagon.FieldDefs.Add('kargoETSNG_name', ftString, 200);
      Client_Vagon.FieldDefs.Add('kargoGNG_cod', ftString, 10);
      Client_Vagon.FieldDefs.Add('kargoGNG_name', ftString, 200);
      Client_Vagon.FieldDefs.Add('fact_weight', ftFloat);
      Client_Vagon.FieldDefs.Add('milage_load', ftInteger);
      Client_Vagon.FieldDefs.Add('milage_empty', ftInteger);
      Client_Vagon.FieldDefs.Add('milage_sum', ftInteger);
      Client_Vagon.FieldDefs.Add('milage_norm', ftInteger);
      Client_Vagon.FieldDefs.Add('prev_kargoETSNG_cod', ftString, 30);
      Client_Vagon.FieldDefs.Add('prev_kargoETSNG_name', ftString, 200);
      Client_Vagon.FieldDefs.Add('node_operation_cod', ftString, 30);
      Client_Vagon.FieldDefs.Add('node_operation_name', ftString, 300);
      Client_Vagon.FieldDefs.Add('fact_track_trip_id', ftInteger);


      Client_Vagon.FieldDefs.Add('cod_operation_vagon_name', ftString, 300);
      Client_Vagon.FieldDefs.Add('cod_operation_cod', ftString, 30);
      Client_Vagon.FieldDefs.Add('date_operation', ftDatetime);
      Client_Vagon.FieldDefs.Add('broken_name', ftString, 300);
      Client_Vagon.FieldDefs.Add('index_train', ftString, 30);
      Client_Vagon.FieldDefs.Add('num_train', ftString, 30);
      Client_Vagon.FieldDefs.Add('num_vagon_train', ftInteger);
      Client_Vagon.FieldDefs.Add('broken_num', ftString, 30);
      Client_Vagon.FieldDefs.Add('num_way', ftString, 30);
      Client_Vagon.FieldDefs.Add('date_norm_delivery', ftDatetime);
      Client_Vagon.FieldDefs.Add('distance_node_begin', ftInteger);
      Client_Vagon.FieldDefs.Add('distance_node_end', ftInteger);
      Client_Vagon.FieldDefs.Add('distance', ftInteger);
      Client_Vagon.FieldDefs.Add('days_free_detail', ftString, 300);
      Client_Vagon.FieldDefs.Add('days_free', ftInteger);
      Client_Vagon.FieldDefs.Add('model_name', ftString, 300);
      Client_Vagon.FieldDefs.Add('last_capital_repair_date', ftDatetime);
      Client_Vagon.FieldDefs.Add('last_depot_repair_date', ftDatetime);
      Client_Vagon.FieldDefs.Add('OwnerOkpoName', ftString, 300);
      Client_Vagon.FieldDefs.Add('OwnerOkpo', ftString, 30);
      Client_Vagon.FieldDefs.Add('copper_calibration', ftInteger);

      Client_Vagon.FieldDefs.Add('node_begin_road_cod', ftString, 30);
      Client_Vagon.FieldDefs.Add('node_begin_road_name', ftString, 300);
      Client_Vagon.FieldDefs.Add('node_end_road_cod', ftString, 30);
      Client_Vagon.FieldDefs.Add('node_end_road_name', ftString, 300);
      Client_Vagon.FieldDefs.Add('road_operation_cod', ftString, 30);
      Client_Vagon.FieldDefs.Add('road_operation_name', ftString, 300);



      Client_Vagon.IndexFieldNames := 'id';
      Client_Vagon.CreateDataSet;
      Client_Vagon.LogChanges := False;

      Client_Node := TClientDataSet.Create(nil);
      Client_Node.FieldDefs.Add('search_cod',ftString,   6);
      Client_Node.FieldDefs.Add('node_cod'  ,ftString,   6);
      Client_Node.FieldDefs.Add('node_name' ,ftString, 100);
      Client_Node.FieldDefs.Add('road_cod'  ,ftString,   6);
      Client_Node.FieldDefs.Add('road_name' ,ftString, 100);
      Client_Node.CreateDataSet;
      Client_Node.LogChanges := False;
      Client_Node.IndexDefs.Add('ClientDS_Index1', 'search_cod', []);
      Client_Node.IndexName := 'ClientDS_Index1';

      Client_Road := TClientDataSet.Create(nil);
      Client_Road.FieldDefs.Add('search_cod',ftString,   6);
      Client_Road.FieldDefs.Add('road_cod'  ,ftString,   6);
      Client_Road.FieldDefs.Add('road_name' ,ftString, 100);
      Client_Road.CreateDataSet;
      Client_Road.LogChanges := False;
      Client_Road.IndexDefs.Add('ClientDS_Index2', 'search_cod', []);
      Client_Road.IndexName := 'ClientDS_Index2';

      Client_Kargo := TClientDataSet.Create(nil);
      Client_Kargo.FieldDefs.Add('search_cod' ,ftString,   6);
      Client_Kargo.FieldDefs.Add('kargo_cod'  ,ftString,  20);
      Client_Kargo.FieldDefs.Add('kargo_name' ,ftString, 100);
      Client_Kargo.CreateDataSet;
      Client_Kargo.LogChanges := False;
      Client_Kargo.IndexDefs.Add('ClientDS_Index3', 'search_cod', []);
      Client_Kargo.IndexName := 'ClientDS_Index3';

      Client_TrainOper := TClientDataSet.Create(nil);
      Client_TrainOper.FieldDefs.Add('inf_obj_id'  ,ftInteger);
      Client_TrainOper.FieldDefs.Add('search_cod' ,ftString,   6);
      Client_TrainOper.CreateDataSet;
      Client_TrainOper.LogChanges := False;
      Client_TrainOper.IndexDefs.Add('ClientDS_Index4', 'search_cod', []);
      Client_TrainOper.IndexName := 'ClientDS_Index4';

      Client_VagonOper := TClientDataSet.Create(nil);
      Client_VagonOper.FieldDefs.Add('inf_obj_id'  ,ftInteger);
      Client_VagonOper.FieldDefs.Add('search_cod' ,ftString,   6);
      Client_VagonOper.CreateDataSet;
      Client_VagonOper.LogChanges := False;
      Client_VagonOper.IndexDefs.Add('ClientDS_Index5', 'search_cod', []);
      Client_VagonOper.IndexName := 'ClientDS_Index5';

      Client_Park := TClientDataSet.Create(nil);
      Client_Park.FieldDefs.Add('inf_obj_id'  ,ftInteger);
      Client_Park.FieldDefs.Add('search_cod' ,ftString,   6);
      Client_Park.CreateDataSet;
      Client_Park.LogChanges := False;
      Client_Park.IndexDefs.Add('ClientDS_Index6', 'search_cod', []);
      Client_Park.IndexName := 'ClientDS_Index6';


      Client_State := TClientDataSet.Create(nil);
      Client_State.FieldDefs.Add('search_cod' ,ftString,   6);
      Client_State.FieldDefs.Add('state_cod'  ,ftString,   6);
      Client_State.FieldDefs.Add('state_name' ,ftString, 100);
      Client_State.CreateDataSet;
      Client_State.LogChanges := False;
      Client_State.IndexDefs.Add('ClientDS_Index7', 'search_cod', []);
      Client_State.IndexName := 'ClientDS_Index7';


      Client_RodVagon := TClientDataSet.Create(nil);
      Client_RodVagon.FieldDefs.Add('search_cod' ,ftString,   6);
      Client_RodVagon.FieldDefs.Add('rod_vagon_cod'  ,ftString,  20);
      Client_RodVagon.FieldDefs.Add('rod_vagon_name' ,ftString, 100);
      Client_RodVagon.CreateDataSet;
      Client_RodVagon.LogChanges := False;
      Client_RodVagon.IndexDefs.Add('ClientDS_Index8', 'search_cod', []);
      Client_RodVagon.IndexName := 'ClientDS_Index8';

      //**************************************************************************


      Q := TADOQuery.Create(nil);
      Q.ConnectionString := Fconnect_str;
      Q.CommandTimeout   := 600;

      Q_Vagon := TADOQuery.Create(nil);
      Q_Vagon.ConnectionString := Fconnect_str;
      Q_Vagon.CommandTimeout   := 600;

      str_node_cod := TStringList.Create;
      str_node_cod.Duplicates := dupIgnore;
      str_node_cod.Sorted := True;

      str_road_cod := TStringList.Create;
      str_road_cod.Duplicates := dupIgnore;
      str_road_cod.Sorted := True;

      str_kargoETSNG_cod := TStringList.Create;
      str_kargoETSNG_cod.Duplicates := dupIgnore;
      str_kargoETSNG_cod.Sorted := True;

      str_num_vagon := TStringList.Create;
      str_num_vagon.Duplicates := dupIgnore;
      str_num_vagon.Sorted := True;

      str_state_cod := TStringList.Create;
      str_state_cod.Duplicates := dupIgnore;
      str_state_cod.Sorted := True;

      str_rod_vagon := TStringList.Create;
      str_rod_vagon.Duplicates := dupIgnore;
      str_rod_vagon.Sorted := True;

      str_kargoGNG_cod := TStringList.Create;
      str_kargoGNG_cod.Duplicates := dupIgnore;
      str_kargoGNG_cod.Sorted := True;

      // Ищем файл
      sp_fact_track_files_modify.Parameters.Refresh;
      sp_fact_track_files_modify.Parameters.ParamByName('@files_track_id').Value := files_track_id;
      sp_fact_track_files_modify.Parameters.ParamByName('@type_action'   ).Value := 11;
      sp_fact_track_files_modify.Open;
      data  := LZHUnPack(sp_fact_track_files_modify.FieldByName('doc_image').AsBytes);
      fd    := TStringStream.Create(data);
      file_data := fd.DataString;
      fd.Free;

      files_name := sp_fact_track_files_modify.FieldByName('files_name').AsString;
      files_date := sp_fact_track_files_modify.FieldByName('files_date').AsDateTime;
      users_id   := sp_fact_track_files_modify.FieldByName('users_id').AsInteger;

      hFile:=CreateFile(PChar(ExtractFilePath(ParamStr(0)) + 'Temp' + '\' +  files_name), Generic_Write, 0, nil, Create_Always, File_Attribute_Normal, 0);
      WriteFile(hFile, PAnsiChar(file_data)^, Length(file_data), num_write, nil);
      CloseHandle(hFile);

      Q.SQL.Clear;
      Q.SQL.Add('SELECT * FROM users WHERE users_id = ' + IntToStr(users_id));
      Q.Open;
      users_group_id := Q.FieldByName('users_group_id').AsInteger;

      MonitorOperInsert('Подготовка файла к загрузке: ' + IntToStr(files_track_id));

      files_load_date_begin := Now;
      files_load_date_end   := 0;
      set_error             := False;
      files_rows_count      := 0;
      files_rows_load       := 0;
      duration_parser  := 0;
      duration_infobj  := 0;


      d1 := Now;

      exApp := CreateOleObject('Excel.Application');
      exApp.Workbooks.Open(ExtractFilePath(ParamStr(0)) + 'Temp' + '\' +  files_name);
      exWks := exApp.ActiveWorkbook.WorkSheets[1];
      cnt := 5;

      while not (TVarData(exWks.Cells[cnt,1].Value).VType = varEmpty) do begin
        LisSleep();

        Client_Vagon.Append;
        // Номер вагона
        Client_Vagon.FieldByName('num_vagon'                ).Value := exWks.Range['A' + IntToStr(cnt)].Value;
        Client_Vagon.FieldByName('doc_number'               ).Value := exWks.Range['B' + IntToStr(cnt)].Value;

        if exWks.Range['E' + IntToStr(cnt)].Value <> '' then
          Client_Vagon.FieldByName('date_otpr'                ).Value := exWks.Range['E' + IntToStr(cnt)].Value;

        if exWks.Range['I' + IntToStr(cnt)].Value <> '' then
          Client_Vagon.FieldByName('date_arrival'             ).Value := exWks.Range['I' + IntToStr(cnt)].Value;

        Client_Vagon.FieldByName('grpol_tgnl'               ).Value := exWks.Range['M' + IntToStr(cnt)].Value;
        Client_Vagon.FieldByName('grpol_okpo'               ).Value := exWks.Range['O' + IntToStr(cnt)].Value;
        Client_Vagon.FieldByName('grpol_name'               ).Value := exWks.Range['P' + IntToStr(cnt)].Value;
        Client_Vagon.FieldByName('grotpr_tgnl'              ).Value := exWks.Range['Q' + IntToStr(cnt)].Value;
        Client_Vagon.FieldByName('grotpr_okpo'              ).Value := exWks.Range['S' + IntToStr(cnt)].Value;
        Client_Vagon.FieldByName('grotpr_name'              ).Value := exWks.Range['T' + IntToStr(cnt)].Value;
        Client_Vagon.FieldByName('fact_weight'              ).Value := exWks.Range['W' + IntToStr(cnt)].Value;
        Client_Vagon.FieldByName('milage_load'              ).Value := exWks.Range['X' + IntToStr(cnt)].Value;
        Client_Vagon.FieldByName('milage_empty'             ).Value := exWks.Range['Y' + IntToStr(cnt)].Value;
        Client_Vagon.FieldByName('milage_sum'               ).Value := exWks.Range['Z' + IntToStr(cnt)].Value;
        Client_Vagon.FieldByName('milage_norm'              ).Value := exWks.Range['AA' + IntToStr(cnt)].Value;
        Client_Vagon.FieldByName('cod_operation_vagon_name' ).Value := exWks.Range['AH' + IntToStr(cnt)].Value;
        Client_Vagon.FieldByName('cod_operation_cod'        ).Value := exWks.Range['AI' + IntToStr(cnt)].Value;

        if exWks.Range['AJ' + IntToStr(cnt)].Value <> '' then
          Client_Vagon.FieldByName('date_operation'           ).Value := exWks.Range['AJ' + IntToStr(cnt)].Value;

        Client_Vagon.FieldByName('broken_name'              ).Value := exWks.Range['AK' + IntToStr(cnt)].Value;
        Client_Vagon.FieldByName('index_train'              ).Value := exWks.Range['AN' + IntToStr(cnt)].Value;
        Client_Vagon.FieldByName('num_train'                ).Value := exWks.Range['AO' + IntToStr(cnt)].Value;
        Client_Vagon.FieldByName('num_vagon_train'          ).Value := exWks.Range['AP' + IntToStr(cnt)].Value;
        Client_Vagon.FieldByName('broken_num'               ).Value := exWks.Range['AQ' + IntToStr(cnt)].Value;
        Client_Vagon.FieldByName('num_way'                  ).Value := exWks.Range['AR' + IntToStr(cnt)].Value;
        try
        Client_Vagon.FieldByName('date_norm_delivery'       ).Value := exWks.Range['AW' + IntToStr(cnt)].Value;
        except
        Client_Vagon.FieldByName('date_norm_delivery'       ).Value := null;
        end;
        Client_Vagon.FieldByName('distance_node_begin'      ).Value := exWks.Range['AX' + IntToStr(cnt)].Value;
        Client_Vagon.FieldByName('distance_node_end'        ).Value := exWks.Range['AY' + IntToStr(cnt)].Value;
        Client_Vagon.FieldByName('distance'                 ).Value := exWks.Range['AZ' + IntToStr(cnt)].Value;
        Client_Vagon.FieldByName('days_free_detail'         ).Value := exWks.Range['BA' + IntToStr(cnt)].Value;
        Client_Vagon.FieldByName('days_free'                ).Value := exWks.Range['BB' + IntToStr(cnt)].Value;
        Client_Vagon.FieldByName('model_name'               ).Value := exWks.Range['BV' + IntToStr(cnt)].Value;

        if exWks.Range['CA' + IntToStr(cnt)].Value <> '' then
          Client_Vagon.FieldByName('last_capital_repair_date' ).Value := exWks.Range['CA' + IntToStr(cnt)].Value;

        if exWks.Range['CC' + IntToStr(cnt)].Value <> '' then
          Client_Vagon.FieldByName('last_depot_repair_date'   ).Value := exWks.Range['CC' + IntToStr(cnt)].Value;

        if exWks.Range['V' + IntToStr(cnt)].Value <> '0' then
          Client_Vagon.FieldByName('kargoGNG_cod'            ).Value := exWks.Range['V' + IntToStr(cnt)].Value;

        Client_Vagon.FieldByName('OwnerOkpoName'            ).Value := exWks.Range['CI' + IntToStr(cnt)].Value;
        Client_Vagon.FieldByName('OwnerOkpo'                ).Value := exWks.Range['CJ' + IntToStr(cnt)].Value;
        Client_Vagon.FieldByName('copper_calibration'       ).Value := exWks.Range['DF' + IntToStr(cnt)].Value;

        Client_Vagon.FieldByName('rod_vagon_cod'           ).Value := CopyCod(exWks.Range['C' + IntToStr(cnt)].Value);
        Client_Vagon.FieldByName('road_begin_cod'          ).Value := CopyCod(exWks.Range['G' + IntToStr(cnt)].Value);
        Client_Vagon.FieldByName('node_begin_cod'          ).Value := RightStr('000000' + CopyCod(exWks.Range['H' + IntToStr(cnt)].Value),6);
        Client_Vagon.FieldByName('node_end_cod'            ).Value := RightStr('000000' + CopyCod(exWks.Range['L' + IntToStr(cnt)].Value),6);
        Client_Vagon.FieldByName('kargoETSNG_cod'          ).Value := RightStr('000000' + CopyCod(exWks.Range['U' + IntToStr(cnt)].Value),6);
        Client_Vagon.FieldByName('prev_kargoETSNG_cod'     ).Value := RightStr('000000' + CopyCod(exWks.Range['AE' + IntToStr(cnt)].Value),6);
        Client_Vagon.FieldByName('node_operation_cod'      ).Value := RightStr('000000' + CopyCod(exWks.Range['AF' + IntToStr(cnt)].Value),6);

        Client_Vagon.Post;




        str_node_cod.Add(Client_Vagon.FieldByName('node_begin_cod').AsString);
        str_node_cod.Add(Client_Vagon.FieldByName('node_end_cod').AsString);
        str_node_cod.Add(Client_Vagon.FieldByName('node_operation_cod').AsString);

        str_road_cod.Add(Client_Vagon.FieldByName('road_begin_cod').AsString);

        str_kargoETSNG_cod.Add(Client_Vagon.FieldByName('kargoETSNG_cod').AsString);
        str_kargoETSNG_cod.Add(Client_Vagon.FieldByName('prev_kargoETSNG_cod').AsString);

        str_rod_vagon.Add(Client_Vagon.FieldByName('rod_vagon_cod').AsString);
        str_kargoGNG_cod.Add(Client_Vagon.FieldByName('kargoGNG_cod').AsString);

        str_num_vagon.Add(Client_Vagon.FieldByName('num_vagon').AsString);

//        str_state_cod.Add(Client_Vagon.FieldByName('state_begin_cod').AsString);
//        str_state_cod.Add(Client_Vagon.FieldByName('state_end_cod').AsString);

//        str_OKPO.Add(Trim(Client_Vagon.FieldByName('grpol_okpo').AsString));
//        str_OKPO.Add(Trim(Client_Vagon.FieldByName('grotpr_okpo').AsString));

        if (i mod 100) = 0 then begin
          MonitorSetCaption2('Подготовка файла к загрузке (обработанно ' + IntToStr(cnt) + ')...');
          MonitorOperUpdate(cnt, cnt);
        end;

        Inc(cnt);
      end;


      exApp.Quit;
      exWks := Null; exApp := Null;
      VarClear(exWks); VarClear(exApp);

      MonitorSetCaption2('Подготовка файла к загрузке (обработанно ' + IntToStr(cnt) + ')...');
      MonitorOperUpdate(cnt, cnt);
      MonitorOperEnd('Завершено');

      MonitorOperInsert('Обновление справочников: ' + IntToStr(files_track_id));

      files_rows_count := Client_Vagon.RecordCount;
      duration_parser  := MilliSecondsBetween(Now, d1);
      d1 := Now;


      Q.SQL.Clear;
      Q.SQL.Add('SELECT inf_obj_cod, inf_obj_id FROM inf_obj WHERE (type_inf_id = 115)');
      Q.SQL.Add('AND ' + DateToSQL(Date) + ' BETWEEN date_begin AND ISNULL(date_end,GETDATE())');
      Q.Open;
      Q.First;
      while not Q.Eof do begin
        Client_TrainOper.Append;
        Client_TrainOper.FieldByName('search_cod' ).Value := Q.FieldByName('inf_obj_cod').Value;
        Client_TrainOper.FieldByName('inf_obj_id' ).Value := Q.FieldByName('inf_obj_id').Value;
        Client_TrainOper.Post;
        Q.Next;
      end;

      Q.SQL.Clear;
      Q.SQL.Add('SELECT inf_obj_cod, inf_obj_name, inf_obj_id FROM inf_obj WHERE (type_inf_id = 20)');
      Q.SQL.Add('AND ' + DateToSQL(Date) + ' BETWEEN date_begin AND ISNULL(date_end,GETDATE())');
      Q.Open;
      Q.First;
      while not Q.Eof do begin
        Client_RodVagon.Append;
        Client_RodVagon.FieldByName('search_cod' ).Value := Q.FieldByName('inf_obj_cod').Value;
        Client_RodVagon.FieldByName('rod_vagon_cod' ).Value := Q.FieldByName('inf_obj_cod').Value;
        Client_RodVagon.FieldByName('rod_vagon_name' ).Value := Q.FieldByName('inf_obj_name').Value;
        Client_RodVagon.Post;
        Q.Next;
      end;

      Q.SQL.Clear;
      Q.SQL.Add('SELECT inf_obj_cod, inf_obj_id FROM inf_obj WHERE (type_inf_id = 114)');
      Q.SQL.Add('AND ' + DateToSQL(Date) + ' BETWEEN date_begin AND ISNULL(date_end,GETDATE())');
      Q.Open;
      Q.First;
      while not Q.Eof do begin
        Client_VagonOper.Append;
        Client_VagonOper.FieldByName('search_cod' ).Value := Q.FieldByName('inf_obj_cod').Value;
        Client_VagonOper.FieldByName('inf_obj_id' ).Value := Q.FieldByName('inf_obj_id').Value;
        Client_VagonOper.Post;
        Q.Next;
      end;

      Q.SQL.Clear;
      Q.SQL.Add('SELECT inf_obj_cod, inf_obj_id FROM inf_obj WHERE (type_inf_id = 119)');
      Q.SQL.Add('AND ' + DateToSQL(Date) + ' BETWEEN date_begin AND ISNULL(date_end,GETDATE())');
      Q.Open;
      Q.First;
      while not Q.Eof do begin
        Client_Park.Append;
        Client_Park.FieldByName('search_cod' ).Value := Q.FieldByName('inf_obj_cod').Value;
        Client_Park.FieldByName('inf_obj_id' ).Value := Q.FieldByName('inf_obj_id').Value;
        Client_Park.Post;
        Q.Next;
      end;

      Q.SQL.Clear;
      Q.SQL.Add('DECLARE @str_node_cod varchar(max), @date_from_to datetime');
      Q.SQL.Add('SET @date_from_to = ' + DateToSQL(Date));
      Q.SQL.Add('SET @str_node_cod = ''' + str_node_cod.CommaText + '''');
      Q.SQL.Add('SELECT	  x1.cod,');
      Q.SQL.Add('         inf_obj_NODE.inf_obj_id, inf_obj_NODE.inf_obj_name, inf_obj_NODE.inf_obj_cod,');
      Q.SQL.Add('         inf_obj_NODE.road_id, inf_obj_ROAD.inf_obj_cod as road_cod, inf_obj_ROAD.inf_obj_name as road_name');
      Q.SQL.Add('FROM	    inf_obj_NODE');
      Q.SQL.Add('         inner join (SELECT cod FROM dbo.StrToTblStr(@str_node_cod, default) WHERE cod is not null and len(cod) = 6) x1 on inf_obj_NODE.inf_obj_cod = x1.cod');
      Q.SQL.Add('         left join inf_obj_ROAD on inf_obj_NODE.road_id = inf_obj_ROAD.inf_obj_id');
      Q.SQL.Add('WHERE	  @date_from_to BETWEEN inf_obj_NODE.date_begin AND ISNULL(inf_obj_NODE.date_end,GETDATE())');
      Q.SQL.Add('         and len(cod) = 6');
      Q.SQL.Add('UNION');
      Q.SQL.Add('SELECT	  x1.cod,');
      Q.SQL.Add('         inf_obj_NODE.inf_obj_id, inf_obj_NODE.inf_obj_name, inf_obj_NODE.inf_obj_cod,');
      Q.SQL.Add('         inf_obj_NODE.road_id, inf_obj_ROAD.inf_obj_cod as road_cod, inf_obj_ROAD.inf_obj_name as road_name');
      Q.SQL.Add('FROM	    inf_obj_NODE');
      Q.SQL.Add('         inner join (SELECT cod, RIGHT(''00000'' + LEFT(cod, 5), 5) as cod_5 FROM dbo.StrToTblStr(@str_node_cod, default) WHERE cod is not null and len(cod) <> 6) x1 on RIGHT(''00000'' + LEFT(inf_obj_NODE.inf_obj_cod, 5), 5) = x1.cod_5');
      Q.SQL.Add('         left join inf_obj_ROAD on inf_obj_NODE.road_id = inf_obj_ROAD.inf_obj_id');
      Q.SQL.Add('WHERE	  @date_from_to BETWEEN inf_obj_NODE.date_begin AND ISNULL(inf_obj_NODE.date_end,GETDATE())');
      Q.SQL.Add('         and len(cod) <>6');
      Q.Open;

      Q.First;
      while not Q.Eof do begin
        Client_Node.Append;
        Client_Node.FieldByName('search_cod' ).Value := Q.FieldByName('cod').Value;
        Client_Node.FieldByName('node_cod'   ).Value := Q.FieldByName('inf_obj_cod').Value;
        Client_Node.FieldByName('node_name'  ).Value := Q.FieldByName('inf_obj_name').Value;
        Client_Node.FieldByName('road_cod'   ).Value := Q.FieldByName('road_cod').Value;
        Client_Node.FieldByName('road_name'  ).Value := Q.FieldByName('road_name').Value;
        Client_Node.Post;
        Q.Next;
      end;

      Q.SQL.Clear;
      Q.SQL.Add('DECLARE @str_road_cod varchar(max), @date_from_to datetime');
      Q.SQL.Add('SET @date_from_to = ' + DateToSQL(Date));
      Q.SQL.Add('SET @str_road_cod = ''' + str_road_cod.CommaText + '''');
      Q.SQL.Add('SELECT cod, inf_obj_id, inf_obj_cod, inf_obj_name');
      Q.SQL.Add('FROM	  inf_obj_ROAD');
      Q.SQL.Add('       inner join (SELECT cod, RIGHT(''000'' + LEFT(cod, 3), 3) as cod_3 FROM dbo.StrToTblStr(@str_road_cod, default) WHERE cod is not null) x1');
      Q.SQL.Add('       on RIGHT(''000'' + LEFT(inf_obj_ROAD.inf_obj_cod, 3), 3) = x1.cod_3');
      Q.SQL.Add('WHERE	@date_from_to BETWEEN date_begin AND ISNULL(date_end,GETDATE())');
      Q.SQL.Add('ORDER BY cod, inf_obj_id');
      Q.Open;
      Q.First;
      while not Q.Eof do begin
        Client_Road.Append;
        Client_Road.FieldByName('search_cod' ).Value := Q.FieldByName('cod').Value;
        Client_Road.FieldByName('road_cod'   ).Value := Q.FieldByName('inf_obj_cod').Value;
        Client_Road.FieldByName('road_name'  ).Value := Q.FieldByName('inf_obj_name').Value;
        Client_Road.Post;
        Q.Next;
      end;


      Q.SQL.Clear;
      Q.SQL.Add('DECLARE @str_state_cod varchar(max)');
      Q.SQL.Add('SET @str_state_cod = ''' + str_state_cod.CommaText + '''');
      Q.SQL.Add('SELECT	cod, inf_obj_id, inf_obj_cod, inf_obj_name');
      Q.SQL.Add('FROM	  inf_obj_STATE');
      Q.SQL.Add('        inner join (SELECT cod, RIGHT(''000'' + LEFT(cod, 3), 3) as cod_3 FROM dbo.StrToTblStr(@str_state_cod, default) WHERE cod is not null) x1');
      Q.SQL.Add('        on RIGHT(''000'' + LEFT(inf_obj_STATE.inf_obj_cod, 3), 3) = x1.cod_3');
      Q.SQL.Add('ORDER BY cod, inf_obj_id');
      Q.Open;
      Q.First;
      while not Q.Eof do begin
        Client_State.Append;
        Client_State.FieldByName('search_cod' ).Value := Q.FieldByName('cod').Value;
        Client_State.FieldByName('state_cod'  ).Value := Q.FieldByName('inf_obj_cod').Value;
        Client_State.FieldByName('state_name' ).Value := Q.FieldByName('inf_obj_name').Value;
        Client_State.Post;
        Q.Next;
      end;

      Q.SQL.Clear;
      Q.SQL.Add('DECLARE @str_kargoETSNG_cod varchar(max), @date_from_to datetime');
      Q.SQL.Add('SET @date_from_to = ' + DateToSQL(Date));
      Q.SQL.Add('SET @str_kargoETSNG_cod = ''' + str_kargoETSNG_cod.CommaText + '''');
      Q.SQL.Add('SELECT	cod, inf_obj_id, inf_obj_cod, inf_obj_name');
      Q.SQL.Add('FROM	  inf_obj_ETSNG');
      Q.SQL.Add('       inner join (SELECT cod, RIGHT(''00000'' + LEFT(cod, 5), 5) as cod_5 FROM dbo.StrToTblStr(@str_kargoETSNG_cod, default) WHERE cod is not null) x1');
      Q.SQL.Add('       on RIGHT(''00000'' + LEFT(inf_obj_ETSNG.inf_obj_cod, 5), 5) = x1.cod_5');
      Q.SQL.Add('WHERE	@date_from_to BETWEEN date_begin AND ISNULL(date_end,GETDATE())');
      Q.SQL.Add('ORDER BY cod, inf_obj_id');
      Q.Open;
      Q.First;
      while not Q.Eof do begin
        Client_Kargo.Append;
        Client_Kargo.FieldByName('search_cod' ).Value := Q.FieldByName('cod').Value;
        Client_Kargo.FieldByName('kargo_cod'  ).Value := Q.FieldByName('inf_obj_cod').Value;
        Client_Kargo.FieldByName('kargo_name' ).Value := Q.FieldByName('inf_obj_name').Value;
        Client_Kargo.Post;
        Q.Next;
      end;


      Q.SQL.Clear;
      Q.SQL.Add('DECLARE @str_kargoETSNG_cod varchar(max), @date_from_to datetime');
      Q.SQL.Add('SET @date_from_to = ' + DateToSQL(Date));
      Q.SQL.Add('SET @str_kargoETSNG_cod = ''' + str_kargoGNG_cod.CommaText + '''');
      Q.SQL.Add('SELECT	cod, inf_obj_id, inf_obj_cod, inf_obj_name');
      Q.SQL.Add('FROM	  inf_obj_GNG');
      Q.SQL.Add('       inner join (SELECT cod, RIGHT(''00000'' + LEFT(cod, 5), 5) as cod_5 FROM dbo.StrToTblStr(@str_kargoETSNG_cod, default) WHERE cod is not null) x1');
      Q.SQL.Add('       on inf_obj_GNG.inf_obj_cod = x1.cod');
      Q.SQL.Add('WHERE	@date_from_to BETWEEN date_begin AND ISNULL(date_end,GETDATE())');
      Q.SQL.Add('ORDER BY cod, inf_obj_id');
      Q.Open;
      Q.First;
      while not Q.Eof do begin
        Client_Kargo.Append;
        Client_Kargo.FieldByName('search_cod' ).Value := Q.FieldByName('cod').Value;
        Client_Kargo.FieldByName('kargo_cod'  ).Value := Q.FieldByName('inf_obj_cod').Value;
        Client_Kargo.FieldByName('kargo_name' ).Value := Q.FieldByName('inf_obj_name').Value;
        Client_Kargo.Post;
        Q.Next;
      end;


      Q.SQL.Clear;
      Q.SQL.Add('DECLARE @str_kargoETSNG_cod varchar(max), @date_from_to datetime');
      Q.SQL.Add('SET @date_from_to = ' + DateToSQL(Date));
      Q.SQL.Add('SET @str_kargoETSNG_cod = ''' + str_kargoETSNG_cod.CommaText + '''');
      Q.SQL.Add('SELECT	cod, inf_obj_id, inf_obj_cod, inf_obj_name');
      Q.SQL.Add('FROM	  inf_obj_ETSNG');
      Q.SQL.Add('       inner join (SELECT cod, RIGHT(''00000'' + LEFT(cod, 5), 5) as cod_5 FROM dbo.StrToTblStr(@str_kargoETSNG_cod, default) WHERE cod is not null) x1');
      Q.SQL.Add('       on RIGHT(''00000'' + LEFT(inf_obj_ETSNG.inf_obj_cod, 5), 5) = x1.cod_5');
      Q.SQL.Add('WHERE	@date_from_to BETWEEN date_begin AND ISNULL(date_end,GETDATE())');
      Q.SQL.Add('ORDER BY cod, inf_obj_id');
      Q.Open;
      Q.First;
      while not Q.Eof do begin
        Client_Kargo.Append;
        Client_Kargo.FieldByName('search_cod' ).Value := Q.FieldByName('cod').Value;
        Client_Kargo.FieldByName('kargo_cod'  ).Value := Q.FieldByName('inf_obj_cod').Value;
        Client_Kargo.FieldByName('kargo_name' ).Value := Q.FieldByName('inf_obj_name').Value;
        Client_Kargo.Post;
        Q.Next;
      end;
      //**************************************************************************

      Q.SQL.Clear;
      Q.SQL.Add('SELECT cod as num_vagon INTO #num_vagon FROM dbo.StrToTbl(''' + str_num_vagon.CommaText + ''', default)');
      Q.SQL.Add('SELECT	view_vagon.vagon_id, view_vagon.num_vagon');
      Q.SQL.Add('FROM	  view_vagon inner join #num_vagon on #num_vagon.num_vagon = view_vagon.num_vagon');
      Q.SQL.Add('WHERE	users_group_id = ' + IntToStr(users_group_id));
      Q.SQL.Add('DROP TABLE #num_vagon');
      Q.Open;

      Client_Vagon.First;
      while not Client_Vagon.Eof do begin
        Client_Vagon.Edit;
        Client_Vagon.FieldByName('vagon_id').Value := Q.Lookup('num_vagon', Client_Vagon.FieldByName('num_vagon').Value, 'vagon_id');

        // Добавляем вагон в справочник
        if Client_Vagon.FieldByName('vagon_id').IsNull then begin

          for i := 0 to sp_vagon_modify.Parameters.Count - 1 do begin
            sp_vagon_modify.Parameters.Items[i].Value := NULL;
          end;

          sp_vagon_modify.Parameters.Refresh;
          sp_vagon_modify.Parameters.ParamByName('@type_action'          ).Value := 0;
          sp_vagon_modify.Parameters.ParamByName('@str_num_vagon'        ).Value := Client_Vagon.FieldByName('num_vagon').Value;
          sp_vagon_modify.Parameters.ParamByName('@vagon_id'             ).Value := null;
          sp_vagon_modify.Parameters.ParamByName('@vagon_model_name'     ).Value := Client_Vagon.FieldByName('model_name').Value;
//          sp_vagon_modify.Parameters.ParamByName('@date_build'           ).Value := Client_Vagon.FieldByName('date_build').Value;
//          sp_vagon_modify.Parameters.ParamByName('@date_remove'          ).Value := Client_Vagon.FieldByName('date_remove').Value;
//          sp_vagon_modify.Parameters.ParamByName('@next_date_repair'     ).Value := Client_Vagon.FieldByName('next_date_repair').Value;
          sp_vagon_modify.Parameters.ParamByName('@node_registration_id' ).Value := null;
          sp_vagon_modify.Parameters.ParamByName('@set_sanctions'        ).Value := False;

          sp_vagon_modify.Parameters.ParamByName('@owner_contract_id'   ).Value := 12065304;
          sp_vagon_modify.Parameters.ParamByName('@owner_date_begin'    ).Value := EncodeDate(2024, 1, 1);
          sp_vagon_modify.Parameters.ParamByName('@type_park_id'        ).Value := 4824867;

          sp_vagon_modify.ExecProc;
          Client_Vagon.FieldByName('vagon_id').Value := sp_vagon_modify.Parameters.ParamByName('@vagon_id').Value;
        end;


        if Client_Node.FindKey([Client_Vagon.FieldByName('node_begin_cod').AsString]) then begin
          Client_Vagon.FieldByName('node_begin_cod'       ).Value := Client_Node.FieldByName('node_cod').Value;
          Client_Vagon.FieldByName('node_begin_name'      ).Value := Client_Node.FieldByName('node_name').Value;
          Client_Vagon.FieldByName('node_begin_road_cod'  ).Value := Client_Node.FieldByName('road_cod').Value;
          Client_Vagon.FieldByName('node_begin_road_name' ).Value := Client_Node.FieldByName('road_name').Value;
        end else begin
          Client_Vagon.FieldByName('node_begin_cod'       ).Value := Client_Vagon.FieldByName('node_begin_cod').Value;
          Client_Vagon.FieldByName('node_begin_name'      ).Value := null;
          Client_Vagon.FieldByName('node_begin_road_cod'  ).Value := null;
          Client_Vagon.FieldByName('node_begin_road_name' ).Value := null;
        end;

        if Client_Node.FindKey([Client_Vagon.FieldByName('node_end_cod').AsString]) then begin
          Client_Vagon.FieldByName('node_end_cod'       ).Value := Client_Node.FieldByName('node_cod').Value;
          Client_Vagon.FieldByName('node_end_name'      ).Value := Client_Node.FieldByName('node_name').Value;
          Client_Vagon.FieldByName('node_end_road_cod'  ).Value := Client_Node.FieldByName('road_cod').Value;
          Client_Vagon.FieldByName('node_end_road_name' ).Value := Client_Node.FieldByName('road_name').Value;
        end else begin
          Client_Vagon.FieldByName('node_end_cod'       ).Value := Client_Vagon.FieldByName('node_end_cod').Value;
          Client_Vagon.FieldByName('node_end_name'      ).Value := null;
          Client_Vagon.FieldByName('node_end_road_cod'  ).Value := null;
          Client_Vagon.FieldByName('node_end_road_name' ).Value := null;
        end;

        if Client_Node.FindKey([Client_Vagon.FieldByName('node_operation_cod').AsString]) then begin
          Client_Vagon.FieldByName('node_operation_cod'  ).Value := Client_Node.FieldByName('node_cod').Value;
          Client_Vagon.FieldByName('node_operation_name' ).Value := Client_Node.FieldByName('node_name').Value;
          Client_Vagon.FieldByName('road_operation_cod'  ).Value := Client_Node.FieldByName('road_cod').Value;
          Client_Vagon.FieldByName('road_operation_name' ).Value := Client_Node.FieldByName('road_name').Value;
        end else begin
          Client_Vagon.FieldByName('node_operation_cod'  ).Value := Client_Vagon.FieldByName('node_operation_cod').Value;
          Client_Vagon.FieldByName('node_operation_name' ).Value := null;
          Client_Vagon.FieldByName('road_operation_cod'  ).Value := null;
          Client_Vagon.FieldByName('road_operation_name' ).Value := null;
        end;

        if Client_Road.FindKey([Client_Vagon.FieldByName('road_begin_cod').AsString]) then begin
          Client_Vagon.FieldByName('road_begin_cod'  ).Value := Client_Road.FieldByName('road_cod').Value;
          Client_Vagon.FieldByName('road_begin_name' ).Value := Client_Road.FieldByName('road_name').Value;
        end;

        if Client_RodVagon.FindKey([Client_Vagon.FieldByName('rod_vagon_cod').AsString]) then begin
          Client_Vagon.FieldByName('rod_vagon_cod'  ).Value := Client_RodVagon.FieldByName('rod_vagon_cod').Value;
          Client_Vagon.FieldByName('rod_vagon_name' ).Value := Client_RodVagon.FieldByName('rod_vagon_name').Value;
        end;



//        if Client_State.FindKey([Client_Vagon.FieldByName('state_begin_cod').AsString]) then begin
//          Client_Vagon.FieldByName('state_begin_cod'  ).Value := Client_State.FieldByName('state_cod').Value;
//          Client_Vagon.FieldByName('state_begin_name' ).Value := Client_State.FieldByName('state_name').Value;
//        end;
//
//        if Client_State.FindKey([Client_Vagon.FieldByName('state_end_cod').AsString]) then begin
//          Client_Vagon.FieldByName('state_end_cod'  ).Value := Client_State.FieldByName('state_cod').Value;
//          Client_Vagon.FieldByName('state_end_name' ).Value := Client_State.FieldByName('state_name').Value;
//        end;
//
//        if Client_Road.FindKey([Client_Vagon.FieldByName('road_end_cod').AsString]) then begin
//          Client_Vagon.FieldByName('road_end_cod'  ).Value := Client_Road.FieldByName('road_cod').Value;
//          Client_Vagon.FieldByName('road_end_name' ).Value := Client_Road.FieldByName('road_name').Value;
//        end;

        if Client_Kargo.FindKey([Client_Vagon.FieldByName('kargoETSNG_cod').AsString]) then begin
          Client_Vagon.FieldByName('kargoETSNG_cod'  ).Value := Client_Kargo.FieldByName('kargo_cod').Value;
          Client_Vagon.FieldByName('kargoETSNG_name' ).Value := Client_Kargo.FieldByName('kargo_name').Value;
        end;

        if Client_Kargo.FindKey([Client_Vagon.FieldByName('prev_kargoETSNG_cod').AsString]) then begin
          Client_Vagon.FieldByName('prev_kargoETSNG_cod'  ).Value := Client_Kargo.FieldByName('kargo_cod').Value;
          Client_Vagon.FieldByName('prev_kargoETSNG_name' ).Value := Client_Kargo.FieldByName('kargo_name').Value;
        end;

        if Client_Kargo.FindKey([Client_Vagon.FieldByName('kargoGNG_cod').AsString]) then begin
          Client_Vagon.FieldByName('kargoGNG_cod'  ).Value := Client_Kargo.FieldByName('kargo_cod').Value;
          Client_Vagon.FieldByName('kargoGNG_name' ).Value := Client_Kargo.FieldByName('kargo_name').Value;
        end;

//        if Client_TrainOper.FindKey([Client_Vagon.FieldByName('cod_operation_cod').AsString]) then begin
//          Client_Vagon.FieldByName('cod_operation_train_id').Value := Client_TrainOper.FieldByName('inf_obj_id').Value;
//        end;

//        if Client_VagonOper.FindKey([Client_Vagon.FieldByName('cod_operation_cod').AsString]) then begin
//          Client_Vagon.FieldByName('cod_operation_vagon_id').Value := Client_VagonOper.FieldByName('inf_obj_id').Value;
//        end;
//
//        if Client_Park.FindKey([Client_Vagon.FieldByName('type_park_vagon').AsString]) then begin
//          Client_Vagon.FieldByName('type_park_vagon_id').Value := Client_Park.FieldByName('inf_obj_id').Value;
//        end;
        //****************************************************************************************************************************

        Client_Vagon.Post;
        Client_Vagon.Next;

        if (Client_Vagon.RecNo mod 100) = 0 then begin
          MonitorSetCaption2('Подготовка спровочников (обработанно ' + IntToStr(Client_Vagon.RecNo) + ' из ' + IntToStr(Client_Vagon.RecordCount) + ')...');
          MonitorOperUpdate(Client_Vagon.RecordCount, Client_Vagon.RecNo);
        end;

      end;
      MonitorSetCaption2('Подготовка спровочников (обработанно ' + IntToStr(Client_Vagon.RecNo) + ' из ' + IntToStr(Client_Vagon.RecordCount) + ')...');
      MonitorOperUpdate(Client_Vagon.RecordCount, Client_Vagon.RecNo);
      MonitorOperEnd('Завершено');

      duration_infobj := MilliSecondsBetween(Now, d1);

      // Поиск рейсов
      Client_Vagon.First;
      while not Client_Vagon.Eof do begin
        Client_VagonTrip.Append;
        Client_VagonTrip.FieldByName('id'     ).Value := Client_Vagon.FieldByName('id').Value;
        Client_VagonTrip.FieldByName('nvag'   ).Value := Client_Vagon.FieldByName('num_vagon').Value;
        Client_VagonTrip.FieldByName('nend'   ).Value := Client_Vagon.FieldByName('node_end_cod').Value;
        Client_VagonTrip.FieldByName('nbegin' ).Value := Client_Vagon.FieldByName('node_begin_cod').Value;
        Client_VagonTrip.FieldByName('noper'  ).Value := Client_Vagon.FieldByName('node_operation_cod').Value;
        Client_VagonTrip.FieldByName('doper'  ).Value := Client_Vagon.FieldByName('date_operation').Value;
        Client_VagonTrip.Post;
        Client_Vagon.Next;
      end;

      MonitorOperInsert('Поиск рейсов: ' + IntToStr(files_track_id));

      sp_fact_track_trip_find.Parameters.Refresh;
      sp_fact_track_trip_find.Parameters.ParamByName('@xml'           ).Value := DataXMLToSQL(Client_VagonTrip);
      sp_fact_track_trip_find.Parameters.ParamByName('@users_group_id').Value := users_group_id;

//      sp_fact_track_trip_find.SQL.Add(GetProcedureFromRes('sp_fact_track_trip_find'));
//      sp_fact_track_trip_find.Parameters.ParamByName('users_group_id' ).Value := users_group_id;
//      sp_fact_track_trip_find.Parameters.ParamByName('param_xml'      ).Value := DataXMLToSQL(Client_VagonTrip);

      sp_fact_track_trip_find.Open;
      while not sp_fact_track_trip_find.Eof do begin
        if Client_Vagon.FindKey([sp_fact_track_trip_find.FieldByName('id').AsInteger]) then begin
          Client_Vagon.Edit;
          Client_Vagon.FieldByName('fact_track_trip_id').Value := sp_fact_track_trip_find.FieldByName('fact_track_trip_id').Value;
          Client_Vagon.Post;
        end;
        sp_fact_track_trip_find.Next;

        if (sp_fact_track_trip_find.RecNo mod 100) = 0 then begin
          MonitorSetCaption2('Поиск рейсов (обработанно ' + IntToStr(sp_fact_track_trip_find.RecNo) + ' из ' + IntToStr(sp_fact_track_trip_find.RecordCount) + ')...');
          MonitorOperUpdate(sp_fact_track_trip_find.RecordCount, sp_fact_track_trip_find.RecNo);
        end;
      end;

      MonitorSetCaption2('Поиск рейсов (обработанно ' + IntToStr(sp_fact_track_trip_find.RecNo) + ' из ' + IntToStr(sp_fact_track_trip_find.RecordCount) + ')...');
      MonitorOperUpdate(sp_fact_track_trip_find.RecordCount, sp_fact_track_trip_find.RecNo);
      MonitorOperEnd('Завершено');



      MonitorOperInsert('Сохранение данных: ' + IntToStr(files_track_id));
      // Сохраняем результат
      sp_fact_track_files_modify.Parameters.Refresh;
      sp_fact_track_files_modify.Parameters.ParamByName('@files_track_id'  ).Value := files_track_id;
      sp_fact_track_files_modify.Parameters.ParamByName('@type_action'     ).Value := 3;
      sp_fact_track_files_modify.Parameters.ParamByName('@files_rows_count').Value := Client_Vagon.RecordCount;
      sp_fact_track_files_modify.ExecProc;


      SP_fact_track_modify.Parameters.Refresh;
      Client_Vagon.First;
      z := 0;
      while not Client_Vagon.Eof do begin
        for i := 0 to SP_fact_track_modify.Parameters.Count - 1 do begin
          SP_fact_track_modify.Parameters.Items[i].Value := NULL;
        end;

        SP_fact_track_modify.Parameters.ParamByName('@fact_track_id'       ).Value := -9;
        SP_fact_track_modify.Parameters.ParamByName('@type_action'         ).Value := 0;
        SP_fact_track_modify.Parameters.ParamByName('@format_file'         ).Value := 4;
        SP_fact_track_modify.Parameters.ParamByName('@date_query'          ).Value := files_date;
        SP_fact_track_modify.Parameters.ParamByName('@users_id'            ).Value := users_id;

        SP_fact_track_modify.Parameters.ParamByName('@files_id'      ).Value := files_track_id;
        SP_fact_track_modify.Parameters.ParamByName('@file_load_name').Value := files_name;
      	SP_fact_track_modify.Parameters.ParamByName('@file_load_date').Value := files_date;

        SP_fact_track_modify.Parameters.ParamByName('@vagon_id'                 ).Value := Client_Vagon.FieldByName('vagon_id').Value;
        SP_fact_track_modify.Parameters.ParamByName('@num_vagon'                ).Value := Client_Vagon.FieldByName('num_vagon').Value;
        SP_fact_track_modify.Parameters.ParamByName('@doc_number'               ).Value := Client_Vagon.FieldByName('doc_number').Value;
        SP_fact_track_modify.Parameters.ParamByName('@rod_vagon_cod'            ).Value := Client_Vagon.FieldByName('rod_vagon_cod').Value;
        SP_fact_track_modify.Parameters.ParamByName('@rod_vagon_name'           ).Value := Client_Vagon.FieldByName('rod_vagon_name').Value;
        SP_fact_track_modify.Parameters.ParamByName('@date_otpr'                ).Value := Client_Vagon.FieldByName('date_otpr').Value;
        SP_fact_track_modify.Parameters.ParamByName('@road_begin_cod'           ).Value := Client_Vagon.FieldByName('road_begin_cod').Value;
        SP_fact_track_modify.Parameters.ParamByName('@road_begin_name'          ).Value := Client_Vagon.FieldByName('road_begin_name').Value;
        SP_fact_track_modify.Parameters.ParamByName('@node_begin_cod'           ).Value := Client_Vagon.FieldByName('node_begin_cod').Value;
        SP_fact_track_modify.Parameters.ParamByName('@node_begin_name'          ).Value := Client_Vagon.FieldByName('node_begin_name').Value;
        SP_fact_track_modify.Parameters.ParamByName('@date_arrival'             ).Value := Client_Vagon.FieldByName('date_arrival').Value;
        SP_fact_track_modify.Parameters.ParamByName('@node_end_cod'             ).Value := Client_Vagon.FieldByName('node_end_cod').Value;
        SP_fact_track_modify.Parameters.ParamByName('@node_end_name'            ).Value := Client_Vagon.FieldByName('node_end_name').Value;
        SP_fact_track_modify.Parameters.ParamByName('@grpol_tgnl'               ).Value := Client_Vagon.FieldByName('grpol_tgnl').Value;
        SP_fact_track_modify.Parameters.ParamByName('@grpol_okpo'               ).Value := Client_Vagon.FieldByName('grpol_okpo').Value;
        SP_fact_track_modify.Parameters.ParamByName('@grpol_name'               ).Value := Client_Vagon.FieldByName('grpol_name').Value;
        SP_fact_track_modify.Parameters.ParamByName('@grotpr_tgnl'              ).Value := Client_Vagon.FieldByName('grotpr_tgnl').Value;
        SP_fact_track_modify.Parameters.ParamByName('@grotpr_okpo'              ).Value := Client_Vagon.FieldByName('grotpr_okpo').Value;
        SP_fact_track_modify.Parameters.ParamByName('@grotpr_name'              ).Value := Client_Vagon.FieldByName('grotpr_name').Value;
        SP_fact_track_modify.Parameters.ParamByName('@kargoETSNG_cod'           ).Value := Client_Vagon.FieldByName('kargoETSNG_cod').Value;
        SP_fact_track_modify.Parameters.ParamByName('@kargoETSNG_name'          ).Value := Client_Vagon.FieldByName('kargoETSNG_name').Value;
        SP_fact_track_modify.Parameters.ParamByName('@kargoGNG_cod'             ).Value := Client_Vagon.FieldByName('kargoGNG_cod').Value;
        SP_fact_track_modify.Parameters.ParamByName('@kargoGNG_name'            ).Value := Client_Vagon.FieldByName('kargoGNG_name').Value;
        SP_fact_track_modify.Parameters.ParamByName('@fact_weight'              ).Value := Client_Vagon.FieldByName('fact_weight').Value/1000;
        SP_fact_track_modify.Parameters.ParamByName('@milage_load'              ).Value := Client_Vagon.FieldByName('milage_load').Value;
        SP_fact_track_modify.Parameters.ParamByName('@milage_empty'             ).Value := Client_Vagon.FieldByName('milage_empty').Value;
        SP_fact_track_modify.Parameters.ParamByName('@milage_sum'               ).Value := Client_Vagon.FieldByName('milage_sum').Value;
        SP_fact_track_modify.Parameters.ParamByName('@milage_norm'              ).Value := Client_Vagon.FieldByName('milage_norm').Value;
        SP_fact_track_modify.Parameters.ParamByName('@prev_kargoETSNG_cod'      ).Value := Client_Vagon.FieldByName('prev_kargoETSNG_cod').Value;
        SP_fact_track_modify.Parameters.ParamByName('@prev_kargoETSNG_name'     ).Value := Client_Vagon.FieldByName('prev_kargoETSNG_name').Value;
        SP_fact_track_modify.Parameters.ParamByName('@node_operation_cod'       ).Value := Client_Vagon.FieldByName('node_operation_cod').Value;
        SP_fact_track_modify.Parameters.ParamByName('@node_operation_name'      ).Value := Client_Vagon.FieldByName('node_operation_name').Value;
        SP_fact_track_modify.Parameters.ParamByName('@cod_operation_vagon_name' ).Value := Client_Vagon.FieldByName('cod_operation_vagon_name').Value;
        SP_fact_track_modify.Parameters.ParamByName('@cod_operation_cod'        ).Value := Client_Vagon.FieldByName('cod_operation_cod').Value;
        SP_fact_track_modify.Parameters.ParamByName('@date_operation'           ).Value := Client_Vagon.FieldByName('date_operation').Value;

        if EncodeDate(2025, 03, 22) < Client_Vagon.FieldByName('date_operation').AsDateTime then begin
          Terminate;
          Exit;
        end;

        SP_fact_track_modify.Parameters.ParamByName('@broken_name'              ).Value := Client_Vagon.FieldByName('broken_name').Value;
        SP_fact_track_modify.Parameters.ParamByName('@index_train'              ).Value := Client_Vagon.FieldByName('index_train').Value;
        SP_fact_track_modify.Parameters.ParamByName('@num_train'                ).Value := Client_Vagon.FieldByName('num_train').Value;
        SP_fact_track_modify.Parameters.ParamByName('@num_vagon_train'          ).Value := Client_Vagon.FieldByName('num_vagon_train').Value;
        SP_fact_track_modify.Parameters.ParamByName('@broken_num'               ).Value := Client_Vagon.FieldByName('broken_num').Value;
        SP_fact_track_modify.Parameters.ParamByName('@num_way'                  ).Value := Client_Vagon.FieldByName('num_way').Value;
        SP_fact_track_modify.Parameters.ParamByName('@date_norm_delivery'       ).Value := Client_Vagon.FieldByName('date_norm_delivery').Value;
        SP_fact_track_modify.Parameters.ParamByName('@distance_node_begin'      ).Value := Client_Vagon.FieldByName('distance_node_begin').Value;
        SP_fact_track_modify.Parameters.ParamByName('@distance_node_end'        ).Value := Client_Vagon.FieldByName('distance_node_end').Value;
        SP_fact_track_modify.Parameters.ParamByName('@distance'                 ).Value := Client_Vagon.FieldByName('distance').Value;
        SP_fact_track_modify.Parameters.ParamByName('@days_free_detail'         ).Value := Client_Vagon.FieldByName('days_free_detail').Value;
        SP_fact_track_modify.Parameters.ParamByName('@days_free'                ).Value := Client_Vagon.FieldByName('days_free').Value;
        SP_fact_track_modify.Parameters.ParamByName('@model_name'               ).Value := Client_Vagon.FieldByName('model_name').Value;
        SP_fact_track_modify.Parameters.ParamByName('@last_capital_repair_date' ).Value := Client_Vagon.FieldByName('last_capital_repair_date').Value;
        SP_fact_track_modify.Parameters.ParamByName('@last_depot_repair_date'   ).Value := Client_Vagon.FieldByName('last_depot_repair_date').Value;
        SP_fact_track_modify.Parameters.ParamByName('@OwnerOkpoName'            ).Value := Client_Vagon.FieldByName('OwnerOkpoName').Value;
        SP_fact_track_modify.Parameters.ParamByName('@OwnerOkpo'                ).Value := Client_Vagon.FieldByName('OwnerOkpo').Value;
        SP_fact_track_modify.Parameters.ParamByName('@copper_calibration'       ).Value := Client_Vagon.FieldByName('copper_calibration').Value;
        SP_fact_track_modify.Parameters.ParamByName('@node_begin_road_cod'      ).Value := Client_Vagon.FieldByName('node_begin_road_cod').Value;
        SP_fact_track_modify.Parameters.ParamByName('@node_begin_road_name'     ).Value := Client_Vagon.FieldByName('node_begin_road_name').Value;
        SP_fact_track_modify.Parameters.ParamByName('@node_end_road_cod'        ).Value := Client_Vagon.FieldByName('node_end_road_cod').Value;
        SP_fact_track_modify.Parameters.ParamByName('@node_end_road_name'       ).Value := Client_Vagon.FieldByName('node_end_road_name').Value;
        SP_fact_track_modify.Parameters.ParamByName('@road_operation_cod'       ).Value := Client_Vagon.FieldByName('road_operation_cod').Value;
        SP_fact_track_modify.Parameters.ParamByName('@road_operation_name'      ).Value := Client_Vagon.FieldByName('road_operation_name').Value;
        SP_fact_track_modify.Parameters.ParamByName('@fact_track_trip_id'       ).Value := Client_Vagon.FieldByName('fact_track_trip_id').Value;






        SP_fact_track_modify.ExecProc;
        z := z + 1;

        Client_Vagon.Next;

        if (Client_Vagon.RecNo mod 10) = 0 then
          MonitorSetCaption2('Сохранение вагонов (обработанно ' + IntToStr(Client_Vagon.RecNo) + ' из ' + IntToStr(Client_Vagon.RecordCount) + ')...');

        if (Client_Vagon.RecNo mod 200) = 0 then begin
                  sp_fact_track_files_modify.Parameters.Refresh;
          sp_fact_track_files_modify.Parameters.ParamByName('@files_track_id'  ).Value := files_track_id;
          sp_fact_track_files_modify.Parameters.ParamByName('@type_action'     ).Value := 4;
          sp_fact_track_files_modify.Parameters.ParamByName('@files_rows_load' ).Value := Client_Vagon.RecNo;
          sp_fact_track_files_modify.ExecProc;

          files_rows_load := Client_Vagon.RecNo;
          UpdateStatusFiles(files_track_id, 'Сохранение', files_load_date_begin, files_load_date_end, set_error, files_rows_count, files_rows_load, 0, 0);

          MonitorOperUpdate(Client_Vagon.RecordCount, Client_Vagon.RecNo);
        end;

      end;
      MonitorSetCaption2('Сохранение вагонов (обработанно ' + IntToStr(Client_Vagon.RecNo) + ' из ' + IntToStr(Client_Vagon.RecordCount) + ')...');
      files_rows_load := Client_Vagon.RecNo;
      UpdateStatusFiles(files_track_id, 'Сохранение', files_load_date_begin, files_load_date_end, set_error, files_rows_count, files_rows_load, 0, 0);
      MonitorOperUpdate(Client_Vagon.RecordCount, Client_Vagon.RecNo);
      MonitorOperEnd('Завершено');


      sp_fact_track_files_modify.Parameters.Refresh;
      sp_fact_track_files_modify.Parameters.ParamByName('@files_track_id'  ).Value := files_track_id;
      sp_fact_track_files_modify.Parameters.ParamByName('@type_action'     ).Value := 5;
      sp_fact_track_files_modify.Parameters.ParamByName('@files_rows_load' ).Value := Client_Vagon.RecNo;
      sp_fact_track_files_modify.ExecProc;

      Result := True;
    except
      on E: Exception do begin
        sp_files_error := TADOStoredProc.Create(nil);
        sp_files_error.ConnectionString := Fconnect_str;
        sp_files_error.ProcedureName := 'sp_fact_track_files_modify';
        sp_files_error.Parameters.Refresh;
        sp_files_error.Parameters.ParamByName('@files_track_id').Value := files_track_id;
        sp_files_error.Parameters.ParamByName('@type_action'   ).Value := 20;
        sp_files_error.Parameters.ParamByName('@files_status'  ).Value := E.Message;
        sp_files_error.ExecProc;

        set_error := True;

        MonitorOperEnd('Ошибка');

        SaveLogError('1000', 'SaveDislXML Line:' + IntToStr(z), E.Message, 'Сохранение файла ' + IntToStr(files_track_id));
        Result := False;
      end;
    end;
  finally
    connect.Free;
    sp_vagon_modify.Free;
    sp_fact_track_files_modify.Free;
    sp_fact_track_modify.Free;
    Client_Vagon.Free;
    Client_Node.Free;
    Client_Road.Free;
    Client_RodVagon.Free;
    Client_Kargo.Free;
    Client_TrainOper.Free;
    Client_VagonOper.Free;
    Client_Park.Free;
    Client_State.Free;
    Q.Free;
    str_state_cod.Free;
    str_node_cod.Free;
    str_road_cod.Free;
    str_kargoETSNG_cod.Free;
    str_num_vagon.Free;
    str_rod_vagon.Free;
    str_kargoGNG_cod.Free;
    sp_fact_track_trip_find.Free;
  end;
end;

procedure TThreadFiles.SearchFilesSOAP();
var
  HTTP : THTTPReqResp;
  resp : TStringStream;
  xml  : RawByteString;
  soap_send : RawByteString;
  sp_fact_track_query_modify : TADOStoredProc;
  sp_fact_track_error_modify : TADOStoredProc;
  Q : TADOQuery;
begin
  try
    try
      Q := TADOQuery.Create(nil);
      Q.ConnectionString := Fconnect_str;
      Q.SQL.Add('SELECT	datediff(minute, max(query_date), getdate()) tm, count(1) cnt FROM FACT_TRACK_QUERY');
      Q.Open;

      if (Q.FieldByName('tm').AsInteger > 30) or (Q.FieldByName('cnt').AsInteger = 0) then begin
        try
          try
            HTTP := THTTPReqResp.Create(nil);
            resp := TStringStream.Create;
            sp_fact_track_query_modify := TADOStoredProc.Create(nil);
            sp_fact_track_query_modify.ConnectionString := Fconnect_str;
            sp_fact_track_query_modify.ProcedureName := 'sp_fact_track_query_modify';

            soap_send := '<?xml version="1.0"?>';
            soap_send := soap_send + '<SOAP-ENV:Envelope xmlns:SOAP-ENV="http://schemas.xmlsoap.org/soap/envelope/" xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">';
            soap_send := soap_send + '  <SOAP-ENV:Body>';
            soap_send := soap_send + '    <GetDataDislocation xmlns="http://www.atk-expert.ru">';
            soap_send := soap_send + '      <Authentication>';
            soap_send := soap_send + '        <Login>70/AUR</Login>';
            soap_send := soap_send + '        <Password>disl@auraoil</Password>';
            soap_send := soap_send + '      </Authentication>';
            soap_send := soap_send + '    </GetDataDislocation>';
            soap_send := soap_send + '  </SOAP-ENV:Body>';
            soap_send := soap_send + '</SOAP-ENV:Envelope>';

            xml  := UTF8Encode(soap_send);
//            HTTP.URL := 'https://server2.vagony.su/dislocation_db2/ws/ws1.1cws?wsdl';
            HTTP.URL := 'https://server2.vagony.su/dislocation_db2/ws/ws1.1cws';
            HTTP.UserName := '70/AUR';
            HTTP.Password := 'disl@auraoil';
            HTTP.SoapAction := 'GetDataDislocation';
            HTTP.ConnectTimeout := 600000;
            HTTP.SendTimeout    := 600000;
            HTTP.ReceiveTimeout := 600000;
            HTTP.Execute(xml, resp);

            sp_fact_track_query_modify.Parameters.Refresh;
            sp_fact_track_query_modify.Parameters.ParamByName('@query_task_xml'  ).Value := soap_send;
            sp_fact_track_query_modify.Parameters.ParamByName('@query_result_xml').Value := UTF8Decode(resp.DataString);
            sp_fact_track_query_modify.ExecProc;
          except
            on E: Exception do begin
              sp_fact_track_error_modify := TADOStoredProc.Create(nil);
              sp_fact_track_error_modify.ConnectionString := Fconnect_str;
              sp_fact_track_error_modify.ProcedureName := 'sp_fact_track_error_modify';
              sp_fact_track_error_modify.Parameters.Refresh;
              sp_fact_track_error_modify.Parameters.ParamByName('@query_task_xml').Value := soap_send;
              sp_fact_track_error_modify.Parameters.ParamByName('@query_result'  ).Value := E.Message;
              sp_fact_track_error_modify.ExecProc;

              SaveLogError('1082', 'SearchFilesSOAP', E.Message, 'Поиск файлов');
            end;
          end;
        finally
          resp.Free;
          HTTP.Free;
          sp_fact_track_query_modify.Free;
        end;
      end;

    except
      on E: Exception do begin
        SaveLogError('1081', 'SearchFilesSOAP', E.Message, 'Поиск файлов');
      end;
    end;
  finally
    Q.Free;
  end;
end;

procedure TThreadFiles.ParserFilesFromDB();
var  connect : TADOConnection;
           Q : TADOQuery;

begin
  try
    try
      MonitorSetCaption1('Обновление списка файлов...');
      // Обновить список файлов.
      UpdateFilesList;

      // Ищем файлы для загрузки
      connect := TADOConnection.Create(nil);
      connect.ConnectionString := Fconnect_str;
      connect.KeepConnection   := False;
      connect.LoginPrompt      := False;
      connect.Open;

      Q := TADOQuery.Create(nil);
      Q.Connection := connect;
      Q.SQL.Add('SELECT files_track_id, inf_obj_cod as format_files, files_name, inf_obj_name as format_files_name');
      Q.SQL.Add('FROM	  fact_track_files inner join inf_obj on fact_track_files.files_format_id = inf_obj.inf_obj_id');
      Q.SQL.Add('WHERE	isnull(set_error,0) = 0');
      Q.SQL.Add('		    AND files_rows_count is null');
      Q.SQL.Add('		    AND inf_obj_cod in (''00001'', ''00002'', ''00003'', ''00004'', ''00005'', ''01000'', ''02000'', ''03000'', ''04000'')');
      Q.SQL.Add('ORDER BY files_priority, files_date');
      Q.Open;

      MonitorSetCaption1('Загрузка файлов...');
      while not Q.Eof do begin
        MonitorSetCaption1('Загрузка файла ' + Q.FieldByName('files_name').AsString + ' (' + Q.FieldByName('format_files_name').AsString + ')...');

        if Q.FieldByName('format_files').AsString = '00003' then SaveDislExcel(Q.FieldByName('files_track_id').AsInteger);

        if Q.FieldByName('format_files').AsString = '00002' then SaveDislXML(Q.FieldByName('files_track_id').AsInteger);
        if Q.FieldByName('format_files').AsString = '01000' then SavePas(Q.FieldByName('files_track_id').AsInteger);
        if Q.FieldByName('format_files').AsString = '02000' then SaveRem(Q.FieldByName('files_track_id').AsInteger);
        if Q.FieldByName('format_files').AsString = '03000' then SaveTeh(Q.FieldByName('files_track_id').AsInteger);
        if Q.FieldByName('format_files').AsString = '04000' then SaveRun(Q.FieldByName('files_track_id').AsInteger);
        if Q.FieldByName('format_files').AsString = '05000' then SaveRunEx(Q.FieldByName('files_track_id').AsInteger);

        Q.Next;
      end;

      if Q.RecordCount > 0 then UpdateFilesList;
    except
      on E: Exception do begin
        SaveLogError('1001', 'ParserFilesFromDB', E.Message, 'Поиск файлов');
      end;
    end;
  finally
    connect.Free;
    Q.Free;
  end;
end;


procedure TThreadFiles.ParserSOAPFromDB();
var  connect : TADOConnection;
           Q : TADOQuery;

begin
  try
    try
      MonitorSetCaption1('Обновление списка файлов...');

      // Ищем файлы для загрузки
      connect := TADOConnection.Create(nil);
      connect.ConnectionString := Fconnect_str;
      connect.KeepConnection   := False;
      connect.LoginPrompt      := False;
      connect.Open;

      Q := TADOQuery.Create(nil);
      Q.Connection := connect;
      Q.SQL.Add('SELECT query_id, query_type FROM fact_track_query WHERE query_type in (''01'') and set_load = 0 ORDER BY query_date');
      Q.Open;

      MonitorSetCaption1('Загрузка файлов...');
      while not Q.Eof do begin
        MonitorSetCaption1('Загрузка файла ' + Q.FieldByName('query_id').AsString + ' (' + Q.FieldByName('query_type').AsString + ')...');

        if Q.FieldByName('query_type').AsString = '01' then SaveDislSOAP(Q.FieldByName('query_id').AsInteger);

        Q.Next;
      end;

    except
      on E: Exception do begin
        SaveLogError('1091', 'ParserSOAPFromDB', E.Message, 'Поиск файлов');
      end;
    end;
  finally
    connect.Free;
    Q.Free;
  end;
end;


procedure TThreadFiles.RecalcStat();
var connect : TADOConnection;
    sp_fact_track_STAT : TADOStoredProc;
    dt1, dt2 : TDateTime;
    stat_comment: string;
    stat_begin  : TDateTime;
begin
  try
    try
      stat_comment:= '';
      stat_begin  := Now();
      stat_comment := 'Пересчет стат таблицы';

      MonitorOperInsert('Пересчет стат таблицы');

      connect := TADOConnection.Create(nil);
      connect.ConnectionString := Fconnect_str;
      connect.KeepConnection   := False;
      connect.LoginPrompt      := False;
      connect.CommandTimeout   := 600;
      connect.Open;

      dt1 := Now;
      sp_fact_track_STAT := TADOStoredProc.Create(nil);
      sp_fact_track_STAT.Connection := connect;
      sp_fact_track_STAT.CommandTimeout := 600;
      sp_fact_track_STAT.ProcedureName := 'sp_fact_track_STAT';
      sp_fact_track_STAT.Parameters.Refresh;
      sp_fact_track_STAT.Parameters.ParamByName('@date_last').Value := Now;
      sp_fact_track_STAT.ExecProc;
      MonitorOperEnd('Завершено');
      SaveLog('00', 'Пересчет стат таблицы', stat_comment, SecondsBetween(Now, stat_begin));
    except
      on E: Exception do begin
        dt2 := Now;
        MonitorOperEnd('Ошибка');
        SaveLogError('2010', 'RecalcStat', E.Message, 'Пересчет стат таблицы: (' + IntToStr(MilliSecondsBetween(dt2, dt1)) + ')');
        SaveLog('00', 'Пересчет стат таблицы: Ошибка ', E.Message, SecondsBetween(Now, stat_begin));
      end;
    end;
  finally
    sp_fact_track_STAT.Free;
    connect.Free;
  end;
end;

procedure TThreadFiles.ExportToFact(users_group_id : integer);
var connect : TADOConnection;
    sp_fact_track_trip_export : TADOStoredProc;
    sp_fact_modify : TADOStoredProc;
    Q, Q2 : TADOQuery;
    trip_cnt : integer;
    stat_comment: string;
    stat_begin  : TDateTime;
begin
  try
    stat_comment := '';
    stat_begin   := Now;

    MonitorOperInsert('Загрузка в оперативный факт');
    trip_cnt := 0;

    connect := TADOConnection.Create(nil);
    connect.ConnectionString := Fconnect_str;
    connect.KeepConnection   := False;
    connect.LoginPrompt      := False;
    connect.Open;

    Q := TADOQuery.Create(nil);
    Q.Connection := connect;

    Q2 := TADOQuery.Create(nil);
    Q2.ConnectionString := 'Persist Security Info=True;Provider=SQLOLEDB.1;User ID=sa;Password=cjnhfkjubcnbrf;Initial Catalog=Lis_Fact;Data Source=srv-lis2;';

    sp_fact_modify := TADOStoredProc.Create(nil);
    sp_fact_modify.Connection := connect;
    sp_fact_modify.ProcedureName := 'sp_fact_modify';
    sp_fact_modify.Parameters.Refresh;

    sp_fact_track_trip_export := TADOStoredProc.Create(nil);
    sp_fact_track_trip_export.Connection := connect;
    sp_fact_track_trip_export.ProcedureName := 'sp_fact_track_trip_export';
    sp_fact_track_trip_export.Parameters.Refresh;
    sp_fact_track_trip_export.Parameters.ParamByName('@users_group_id').Value := users_group_id;
    sp_fact_track_trip_export.Open;

    stat_comment := IntToStr(users_group_id) + ' Поиск вагонов...';

    trip_cnt := 0;
    while not sp_fact_track_trip_export.Eof do begin
      if (sp_fact_track_trip_export.FieldByName('fact_id').Value <> NULL) then begin
        try
          sp_fact_modify.Parameters.Refresh;
          sp_fact_modify.Parameters.ParamByName('@fact_id'           ).Value := sp_fact_track_trip_export.FieldByName('fact_id').Value;
          sp_fact_modify.Parameters.ParamByName('@num_vagon'         ).Value := sp_fact_track_trip_export.FieldByName('num_vagon').Value;
          sp_fact_modify.Parameters.ParamByName('@num_document_pref' ).Value := sp_fact_track_trip_export.FieldByName('num_document_pref').Value;
          sp_fact_modify.Parameters.ParamByName('@num_document'      ).Value := sp_fact_track_trip_export.FieldByName('num_document').Value;
          sp_fact_modify.Parameters.ParamByName('@date_from_to'      ).Value := sp_fact_track_trip_export.FieldByName('date_from_to').Value;
          sp_fact_modify.Parameters.ParamByName('@datpr'             ).Value := sp_fact_track_trip_export.FieldByName('datpr').Value;

          //по заявке 15424728
          //sp_fact_modify.Parameters.ParamByName('@fkv'               ).Value := 1;
          //sp_fact_modify.Parameters.ParamByName('@date_delivery'     ).Value := sp_fact_track_trip_export.FieldByName('date_delivery').Value;//по заявке 15424728
          if (sp_fact_track_trip_export.FieldByName('fact_id').Value <> 0) AND
              ((sp_fact_track_trip_export.FieldByName('num_document_pref').AsString + sp_fact_track_trip_export.FieldByName('num_document').AsString) <> '') then begin

            Q2.SQL.Clear;
            Q2.SQL.Add('SELECT TOP 1 [Дата раскредитовки] AS date_delivery FROM [Lis_Fact].[dbo].[FACT_ALL] WHERE UPPER([Номер документа]) = UPPER(''' +
              sp_fact_track_trip_export.FieldByName('num_document_pref').AsString + sp_fact_track_trip_export.FieldByName('num_document').AsString +
              ''') AND [Номер вагона] = ''' + sp_fact_track_trip_export.FieldByName('num_vagon').AsString + ''' ORDER BY [Дата раскредитовки] DESC');
            Q2.Open;
            if Q2.RecordCount > 0 then
              sp_fact_modify.Parameters.ParamByName('@date_delivery'     ).Value := Q2.FieldByName('date_delivery').Value//по заявке 15424728
            else
              sp_fact_modify.Parameters.ParamByName('@date_delivery'     ).Value := sp_fact_track_trip_export.FieldByName('date_delivery').Value;

            //--------------------------------------------------------------------------------------------------------------------------------------------------------

            Q2.SQL.Clear;
            Q2.SQL.Add('SELECT count([Количество Вагонов]) AS fkv FROM [Lis_Fact].[dbo].[FACT_ALL] WHERE UPPER([Номер документа]) = UPPER(''' + sp_fact_track_trip_export.FieldByName('num_document_pref').AsString + sp_fact_track_trip_export.FieldByName('num_document').AsString + ''') ');
            Q2.Open;
            if Q2.RecordCount > 0 then
              sp_fact_modify.Parameters.ParamByName('@fkv'               ).Value := iif(Q2.FieldByName('fkv').AsInteger > 0, Q2.FieldByName('fkv').Value, 1) //по заявке 15424728
            else
              sp_fact_modify.Parameters.ParamByName('@fkv'               ).Value := 1;


          end else begin
            sp_fact_modify.Parameters.ParamByName('@date_delivery'       ).Value := sp_fact_track_trip_export.FieldByName('date_delivery').Value;
            sp_fact_modify.Parameters.ParamByName('@fkv'                 ).Value := 1;
          end;



          Q.SQL.Clear;
          Q.SQL.Add('SELECT top 1 * FROM inf_obj_node WHERE inf_obj_cod = ''' + sp_fact_track_trip_export.FieldByName('node_begin_cod').AsString + ''' AND getdate() BETWEEN inf_obj_NODE.date_begin AND ISNULL(inf_obj_NODE.date_end,GETDATE()+1) ORDER BY inf_obj_id DESC');
          Q.Open;
          if Q.RecordCount > 0 then begin
            sp_fact_modify.Parameters.ParamByName('@road_begin_id'     ).Value := Q.FieldByName('road_id').Value;
            sp_fact_modify.Parameters.ParamByName('@node_begin_id'     ).Value := Q.FieldByName('inf_obj_id').Value;
            sp_fact_modify.Parameters.ParamByName('@state_begin_id'    ).Value := Q.FieldByName('state_id').Value;
          end;

          Q.SQL.Clear;
          Q.SQL.Add('SELECT top 1 * FROM inf_obj_node WHERE inf_obj_cod = ''' + sp_fact_track_trip_export.FieldByName('node_end_cod').AsString + ''' AND getdate() BETWEEN inf_obj_NODE.date_begin AND ISNULL(inf_obj_NODE.date_end,GETDATE()+1) ORDER BY inf_obj_id DESC');
          Q.Open;
          if Q.RecordCount > 0 then begin
            sp_fact_modify.Parameters.ParamByName('@road_end_id'       ).Value := Q.FieldByName('road_id').Value;
            sp_fact_modify.Parameters.ParamByName('@node_end_id'       ).Value := Q.FieldByName('inf_obj_id').Value;
            sp_fact_modify.Parameters.ParamByName('@state_end_id'      ).Value := Q.FieldByName('state_id').Value;
          end;

          Q.SQL.Clear;
          Q.SQL.Add('SELECT top 1 * FROM inf_obj_ETSNG WHERE inf_obj_cod = ''' + sp_fact_track_trip_export.FieldByName('kargoETSNG_cod').AsString + ''' AND getdate() BETWEEN inf_obj_ETSNG.date_begin AND ISNULL(inf_obj_ETSNG.date_end,GETDATE()+1) ORDER BY inf_obj_id DESC');
          Q.Open;
          if Q.RecordCount > 0 then begin
            sp_fact_modify.Parameters.ParamByName('@kargoETSNG_id'     ).Value := Q.FieldByName('inf_obj_id').Value;
          end;

          sp_fact_modify.Parameters.ParamByName('@fact_weight'       ).Value := sp_fact_track_trip_export.FieldByName('fact_weight').Value;
          sp_fact_modify.Parameters.ParamByName('@etran_SenderOKPO'  ).Value := sp_fact_track_trip_export.FieldByName('etran_SenderOKPO').Value;
          sp_fact_modify.Parameters.ParamByName('@etran_SenderName'  ).Value := sp_fact_track_trip_export.FieldByName('etran_SenderName').Value;
          sp_fact_modify.Parameters.ParamByName('@date_load_file'    ).Value := Now;
          sp_fact_modify.Parameters.ParamByName('@file_load_info'    ).Value := 'Дислокации';
          sp_fact_modify.Parameters.ParamByName('@fact_users_comment').Value := 'Факт скопирован из "Дислокации" [Автоматически]. Дата: ' + FormatDateTime('yyyy-mm-dd hh:nn:ss', Now) + ' Номер записи fact_track_trip_id '  + IntToStr(sp_fact_track_trip_export.FieldByName('fact_track_trip_id').Value);
          sp_fact_modify.Parameters.ParamByName('@set_double_vagon'  ).Value := True;
          sp_fact_modify.Parameters.ParamByName('@fact_track_trip_id').Value := sp_fact_track_trip_export.FieldByName('fact_track_trip_id').Value;
          sp_fact_modify.Parameters.ParamByName('@users_id'          ).Value := iif(users_group_id = 158706, 102, 496);//для СФХ и Интер Логистикс
          sp_fact_modify.ExecProc;

          if (sp_fact_track_trip_export.RecNo mod 10) = 0 then begin
            MonitorSetCaption2('Экспорт в факт (обработанно ' + IntToStr(sp_fact_track_trip_export.RecNo) + ' из ' + IntToStr(sp_fact_track_trip_export.RecordCount) + ')...');
            MonitorOperUpdate(sp_fact_track_trip_export.RecordCount, sp_fact_track_trip_export.RecNo);
          end;

        except
          on E: Exception do begin
            MonitorOperEnd('Ошибка');
            SaveLog('00', 'Экспорт в факт: Ошибка ', E.Message, SecondsBetween(Now, stat_begin));
            SaveLogError('2000', 'ExportToFact fact_id - ' + sp_fact_track_trip_export.FieldByName('fact_id').AsString , E.Message, 'Экспорт в факт');
          end;
        end;
      end;

      trip_cnt := trip_cnt + 1;
      sp_fact_track_trip_export.Next;

    end;

    MonitorSetCaption2('Экспорт в факт (обработанно ' + IntToStr(sp_fact_track_trip_export.RecNo) + ' из ' + IntToStr(sp_fact_track_trip_export.RecordCount) + ')...');
    MonitorOperEnd('Завершено');

    SaveLog('00', 'Экспорт в факт', stat_comment, SecondsBetween(Now, stat_begin));

  finally
    Q.Free;
    Q2.Free;
    sp_fact_modify.Free;
    sp_fact_track_trip_export.Free;
    connect.Free;
  end;
end;


function TThreadFiles.RecalcTrip(): integer;
var connect : TADOConnection;
    sp_fact_track_trip_recalc : TADOStoredProc;
    Q  : TADOQuery;
    trip_cnt : integer;
    stat_comment: string;
    stat_begin  : TDateTime;
begin
  try
    try
      stat_comment := '';
      stat_begin   := Now;

      MonitorOperInsert('Пересчет рейсов');
      trip_cnt := 0;

      connect := TADOConnection.Create(nil);
      connect.ConnectionString := Fconnect_str;
      connect.KeepConnection   := False;
      connect.LoginPrompt      := False;
      connect.Open;

      sp_fact_track_trip_recalc := TADOStoredProc.Create(nil);
      sp_fact_track_trip_recalc.Connection := connect;
      sp_fact_track_trip_recalc.ProcedureName := 'sp_fact_track_trip_recalc';
      sp_fact_track_trip_recalc.Parameters.Refresh;

      Q := TADOQuery.Create(nil);
      Q.Connection := connect;
      Q.SQL.Add('SELECT fact_track_trip_id FROM fact_track_trip WHERE set_recalc_trip = 1');
      Q.Open;

      stat_comment := 'Пересчет ' + IntToStr(Q.RecordCount) + ' расстояний';

      trip_cnt := 0;
      while not Q.Eof do begin
        sp_fact_track_trip_recalc.Parameters.Refresh;
        sp_fact_track_trip_recalc.Parameters.ParamByName('@fact_track_trip_id').Value := Q.FieldByName('fact_track_trip_id').Value;
        sp_fact_track_trip_recalc.ExecProc;

        if (Q.RecNo mod 10) = 0 then begin
          MonitorSetCaption2('Пересчет рейсов (обработанно ' + IntToStr(Q.RecNo) + ' из ' + IntToStr(Q.RecordCount) + ')...');
          MonitorOperUpdate(Q.RecordCount, Q.RecNo);
        end;

        trip_cnt := trip_cnt + 1;
        Q.Next;
      end;
      MonitorSetCaption2('Пересчет рейсов (обработанно ' + IntToStr(Q.RecNo) + ' из ' + IntToStr(Q.RecordCount) + ')...');
      MonitorOperEnd('Завершено');

      SaveLog('00', 'Пересчет расстояний', stat_comment, SecondsBetween(Now, stat_begin));

    except
      on E: Exception do begin
        MonitorOperEnd('Ошибка');
        SaveLog('00', 'Пересчет расстояний: Ошибка ', E.Message, SecondsBetween(Now, stat_begin));
        SaveLogError('2000', 'RecalcTrip', E.Message, 'Пересчет рейсов');
      end;
    end;
  finally
    Q.Free;
    sp_fact_track_trip_recalc.Free;
    connect.Free;
  end;

  Result := trip_cnt;
end;


//procedure TThreadFiles.MonitoringVagon;
//var connect : TADOConnection;
//    sp_monitor_vagon_mail_send : TADOStoredProc;
//    Q  : TADOQuery;
//begin
//  try
//    try
//      connect := TADOConnection.Create(nil);
//      connect.ConnectionString := Fconnect_str;
//      connect.KeepConnection   := False;
//      connect.LoginPrompt      := False;
//      connect.Open;
//
//      sp_monitor_vagon_mail_send := TADOStoredProc.Create(nil);
//      sp_monitor_vagon_mail_send.Connection := connect;
//      sp_monitor_vagon_mail_send.ProcedureName := 'sp_monitor_vagon_mail_send';
//      sp_monitor_vagon_mail_send.Parameters.Refresh;
//
//      Q := TADOQuery.Create(nil);
//      Q.Connection := connect;
//      Q.SQL.Add('SELECT * FROM view_monitor_vagon WHERE getdate() between monitor_begin and isnull(monitor_end,getdate()) and set_active = 1');
//      Q.Open;
//
//      while not Q.Eof do begin
//        sp_monitor_vagon_mail_send.Parameters.Refresh;
//        sp_monitor_vagon_mail_send.Parameters.ParamByName('@monitor_vagon_id').Value := Q.FieldByName('monitor_vagon_id').Value;
//        sp_monitor_vagon_mail_send.ExecProc;
//
//        if (Q.RecNo mod 10) = 0 then
//            MonitorProgress(0, Q.RecordCount,  'Задач', Q.RecNo);
//
//        Q.Next;
//      end;
//      MonitorProgress(0, Q.RecordCount,  'Задач', Q.RecNo);
//    except
//      on E: Exception do begin
//        Fstr_error_cod_result  := '3777';
//        Fstr_error_result      := E.Message;
//        Fstr_error_name_result := 'Файл';
//        Synchronize(SetError);
//        FileSaveError;
//      end;
//    end;
//  finally
//    Q.Free;
//    sp_monitor_vagon_mail_send.Free;
//    connect.Free;
//  end;
//end;


procedure TThreadFiles.SyncZIP();
var files_list : TStringList;
    i : Integer;
begin
  files_list := TStringList.Create;
  ListFileFtp('91.212.146.33', 21, 'sovfr', 'htfrwbz', 'reglament/out/zip/', files_list);

  for i := 0 to files_list.Count-1 do begin
    if not FileExists('c:\disl_zip\' + files_list.Strings[i]) then begin
      CopyFileFtpZip('91.212.146.33', 21, 'sovfr', 'htfrwbz', 'reglament/out/zip/', files_list.Strings[i], 'c:\disl_zip\' + files_list.Strings[i]);
    end;
  end;
  files_list.Free;
end;


function TThreadFiles.CalcDist(): integer;
var    connect : TADOConnection;
             Q : TADOQuery;
      cnt_dist : integer;
          dist : integer;
RTXApplication : IApplication;
   RTXDocument : RailTariff_TLB.IDocument;
     RTXResult : RailTariff_TLB.IDocNode;
     set_node_correct : boolean;
 SP_inf_obj_distance_modify : TADOStoredProc;
begin
  try
    try
      MonitorOperInsert('Пересчет расстояний');

//      try
//        RTXApplication := RTXCreate2(CTM_Server, CTM_User, CTM_Password);
//        RTXApplication.Initialize('');
//      except
//        RTXApplication := nil;
//        exit;
//      end;
//      RTXDocument := RTXApplication.CreateDocument;

      connect := TADOConnection.Create(nil);
      connect.ConnectionString := Fconnect_str;
      connect.KeepConnection   := False;
      connect.LoginPrompt      := False;
      connect.CommandTimeout   := 300;
      connect.Open;

      SP_inf_obj_distance_modify := TADOStoredProc.Create(nil);
      SP_inf_obj_distance_modify.Connection := connect;
      SP_inf_obj_distance_modify.ProcedureName := 'sp_inf_obj_distance_modify';


      Q := TADOQuery.Create(nil);
      Q.Connection := connect;
      Q.CommandTimeout := 300;
      Q.SQL.Add('SELECT	node_begin_cod, node_end_cod');
      Q.SQL.Add('FROM	  fact_track_vagon');
      Q.SQL.Add('       left join inf_obj_distance node1 on node1.node1_cod = fact_track_vagon.node_begin_cod and node1.node2_cod = fact_track_vagon.node_end_cod');
      Q.SQL.Add('WHERE	isnull(node_begin_cod, ''000000'') <> ''000000''');
      Q.SQL.Add('       and isnull(node_end_cod, ''000000'') <> ''000000''');
      Q.SQL.Add('       and node_end_cod <> node_begin_cod');
      Q.SQL.Add('       and node1.node1_cod is null');
      Q.SQL.Add('       and date_operation > dateadd(day, -10, getdate())');
      Q.SQL.Add('UNION  ');
      Q.SQL.Add('SELECT	node_operation_cod, node_end_cod');
      Q.SQL.Add('FROM	  fact_track_vagon');
      Q.SQL.Add('       left join inf_obj_distance node1 on node1.node1_cod = fact_track_vagon.node_operation_cod and node1.node2_cod = fact_track_vagon.node_end_cod');
      Q.SQL.Add('WHERE	isnull(node_operation_cod, ''000000'') <> ''000000''');
      Q.SQL.Add('       and isnull(node_end_cod, ''000000'') <> ''000000''');
      Q.SQL.Add('       and node_end_cod <> node_operation_cod');
      Q.SQL.Add('       and node1.node1_cod is null');
      Q.SQL.Add('       and date_operation > dateadd(day, -10, getdate())');
      Q.SQL.Add('UNION ');
      Q.SQL.Add('SELECT top 1000 node1_cod, node2_cod FROM inf_obj_distance WHERE set_recalc = 1 and node1_cod <> node2_cod');
      Q.Open;

      cnt_dist := Q.RecordCount;
      while not Q.Eof do begin

//        try
//          set_node_correct := True;
//          try
//            (RTXDocument as IDocumentAttr).FromStation(Q.FieldByName('node_begin_cod').AsString, 0);
//            (RTXDocument as IDocumentAttr).ToStation  (Q.FieldByName('node_end_cod').AsString  , 0);
//            RTXDocument.Data.Value['Zhur_Miller'] := 1;
//          except
//            set_node_correct := False;
//          end;
//
//          if set_node_correct = True then begin
//            (RTXDocument as IDocumentControl).DoCalcDistance;
//
//            dist := 0;
//            RTXResult := RTXDocument.Result;
//            RTXResult.AsTable.First;
//            while not RTXResult.AsTable.EOF do  begin
//              dist := dist + RTXResult.Value['Distance'];
//              RTXResult.AsTable.Next;
//            end;
//          end else begin
//            dist := -9;
//          end;
//
//          SP_inf_obj_distance_modify.Close;
//          SP_inf_obj_distance_modify.Parameters.Refresh;
//          SP_inf_obj_distance_modify.Parameters.ParamByName('@type_action').Value := 0;
//          SP_inf_obj_distance_modify.Parameters.ParamByName('@node1_cod'  ).Value := Q.FieldByName('node_begin_cod').AsString;
//          SP_inf_obj_distance_modify.Parameters.ParamByName('@node2_cod'  ).Value := Q.FieldByName('node_end_cod').AsString;
//          SP_inf_obj_distance_modify.Parameters.ParamByName('@distance'   ).Value := dist;
//          SP_inf_obj_distance_modify.ExecProc;
//        except
//        end;
//        GetCalcDistanceDB(Q.FieldByName('node_begin_cod').AsString, Q.FieldByName('node_end_cod').AsString, connect, True, Date);
        GetCalcDistanceDBLocal(Q.FieldByName('node_begin_cod').AsString, Q.FieldByName('node_end_cod').AsString, connect, True, Date);

        if (Q.RecNo mod 10) = 0 then begin
          MonitorSetCaption2('Пересчет расстояний (обработанно ' + IntToStr(Q.RecNo) + ' из ' + IntToStr(Q.RecordCount) + ')...');
          MonitorOperUpdate(Q.RecordCount, Q.RecNo);
        end;
        Q.Next;
      end;

      MonitorSetCaption2('Пересчет расстояний (обработанно ' + IntToStr(Q.RecNo) + ' из ' + IntToStr(Q.RecordCount) + ')...');
      MonitorOperUpdate(Q.RecordCount, Q.RecNo);
      MonitorOperEnd('Завершено');

    except
      on E: Exception do begin
        MonitorOperEnd('Ошибка');
        SaveLogError('2110', 'RecalcDist', E.Message, 'Пересчет расстояний');
      end;
    end;
  finally
    Q.Free;
    connect.Free;
    SP_inf_obj_distance_modify.Free;
//    RTXResult      := nil;
//    RTXDocument    := nil;
//    RTXApplication := nil;
  end;

  Result := cnt_dist;
end;


procedure GetMemProg(var m1: integer; var m2: integer);
var
  pmc: PPROCESS_MEMORY_COUNTERS;
  cb: Integer;
begin
  cb := SizeOf(_PROCESS_MEMORY_COUNTERS);
  GetMem(pmc, cb);
  pmc^.cb := cb;
  if GetProcessMemoryInfo(GetCurrentProcess(), pmc, cb) then begin
    m1 := Round(pmc^.WorkingSetSize/1024);
    m2 := Round(pmc^.PagefileUsage/1024);
  end;
  FreeMem(pmc);
end;

procedure TThreadFiles.Execute;
var i,f, trip_cnt : integer;
begin
  try
    CoInitialize(nil);
    while (not Terminated) do begin
      MonitorSetImage(2);
      MonitorOperClear;

//      // 1. Опрос FTP (поиск и сохранение файла) (Все ftp)
      SearchFilesFTP;
      if Terminated then Break;
//
//      // 1.1 Передача списка вагонов (при необходимости)
//      PutVagonListFTP;
//      if Terminated then Break;
//
//      // 2. Ищем незагруженные файлы и загружаем в дислокацию (паспорта, пробеги и т.д.) (Все файлы)
      ParserFilesFromDB;
      if Terminated then Break;

//      // 2.1 Пересчет расстояний
//      CalcDist();
//      if Terminated then Break;

//       1. Опрос SOAP (поиск и сохранение файла) (Все ftp)
//      SearchFilesSOAP;
//      if Terminated then Break;

      // 2. Ищем незагруженные файлы SOAP
//      ParserSOAPFromDB;
//      if Terminated then Break;

      // 3. Пересчет рейсов
      trip_cnt := RecalcTrip;
      if Terminated then Break;

      // 4. Пересчет стат таблицы
      if trip_cnt > 0 then
        RecalcStat;
      if Terminated then Break;

      // 5. Отправка оповещений
      //MonitoringVagon;


      // 6. Обновление справочников Rail-Тариф
      // Пока пусто

      // Timeout
      MonitorSetImage(0);
      MonitorSetCaption1('Пауза...');
      for i := 0 to 3*60 do begin
        f := 3*60-i;
        MonitorSetCaption2('Пауза ' + IntToStr(Round((f - (f mod 60))/60)) + ':' + RightStr('00' + IntToStr(f mod 60),2));
        Sleep(1000);
        if Terminated = True then Break;
      end;
    end;
    CoUninitialize;
  except
    on E: Exception do begin
      ShowMessage(E.Message);
    end;
  end;

  MonitorSetImage(1);
  MonitorSetCaption1('Загрузка не запущена...');
  MonitorSetCaption2('');
end;

procedure TThreadFiles.MonitorSetImage(image_index: integer);
begin
  Synchronize(
    procedure begin
      case image_index of
        0: fmLoadMain.cxImage1.Picture := fmLoadMain.cxImage2.Picture; // Пауза
        1: fmLoadMain.cxImage1.Picture := fmLoadMain.cxImage3.Picture; // Остановка
        2: fmLoadMain.cxImage1.Picture := fmLoadMain.cxImage4.Picture; // Работа (Загрузка)
      end;
    end);
end;

procedure TThreadFiles.MonitorSetCaption1(log_caption: string);
begin
  Synchronize(
    procedure begin
      fmLoadMain.cxLabel1.Caption := log_caption;
    end);
end;

procedure TThreadFiles.MonitorSetCaption2(log_caption: string);
begin
  Synchronize(
    procedure begin
      fmLoadMain.cxLabel2.Caption := log_caption;
    end);
end;

procedure TThreadFiles.UpdateStatusFTP(ftp_id: integer; res: boolean);
begin
  Synchronize(
    procedure begin
      if fmLoadMain.ClientDS_ftp.Locate('id', ftp_id, []) then begin
        fmLoadMain.ClientDS_ftp.Edit;
        if res <> False then fmLoadMain.ClientDS_ftp.FieldByName('date_last_query').Value := Now;
        fmLoadMain.ClientDS_ftp.FieldByName('set_active').Value := res;
        fmLoadMain.ClientDS_ftp.Post;
      end;
    end);
end;


procedure TThreadFiles.UpdateStatusFiles(files_track_id: integer; files_status: string; files_load_date_begin: TDateTime; files_load_date_end: TDateTime; set_error: boolean; files_rows_count: integer; files_rows_load: integer; duration_parser: integer; duration_infobj: integer);
begin
  Synchronize(
    procedure begin
        fmLoadMain.UpdateFileStatus(files_track_id, files_status, files_load_date_begin, files_load_date_end, set_error, files_rows_count, files_rows_load, duration_parser, duration_infobj);
    end);
end;



function TThreadFiles.ListFileFtp(ftp_server: string; ftp_port: integer; ftp_users: string; ftp_password: string; Path: string; FileList: TStrings): boolean;
var fs : TSearchRec;
begin
  if FindFirst(Path + '\*.xlsx', faAnyFile - faDirectory - faVolumeID, fs) = 0 then begin
    repeat
      FileList.Add(PChar(fs.Name));
    until
      FindNext(fs) <> 0;
  Sysutils.FindClose(fs);
  end;
end;


function LZHPack(str_data: TArray<Byte>; size: integer): variant;
type
  TLZHPack = function(str_data: TArray<Byte>): variant;
var
  FLZHPack      : TLZHPack;
  handle        : THandle;
  v             : TArray<Byte>;
begin
  if size >= 0 then SetLength(str_data, size);
  if LeftStr(RawByteString(str_data), 7) <> 'LIS_LZH' then begin
    handle := LoadLibrary('lzh.dll');
    @FLZHPack := GetProcAddress(handle,'LZHPack');
    v := FLZHPack(str_data);
    Result := v;
    FreeLibrary(handle);
  end else begin
    Result := RawByteString(str_data);
  end;
end;

function LZHUnPack(str_data: TArray<Byte>): variant;
type
  TLZHUnPack = function(str_data: TArray<Byte>): Variant;
var
  FLZHUnPack    : TLZHUnPack;
  handle        : THandle;
  v             : Variant;
begin
  if LeftStr(RawByteString(str_data), 7) = 'LIS_LZH' then begin
    handle := LoadLibrary('lzh.dll');
    @FLZHUnPack := GetProcAddress(handle,'LZHUnPack');
    v := FLZHUnPack(str_data);
    Result := v;
    FreeLibrary(handle);
  end else begin
    Result := str_data;
  end;
end;

function TThreadFiles.PutFileFtp(ftp_server: string; ftp_port: integer; ftp_users: string; ftp_password: string; Path: string; FileName: string; SourceFileName: string): boolean;
var IdFTP : TIdFTP;
begin
  try
    IdFTP := TIdFTP.Create(nil);
    IdFTP.Host     := ftp_server;
    IdFTP.Port     := ftp_port;
    IdFTP.Username := ftp_users;
    IdFTP.Password := ftp_password;
    IdFTP.Passive  := True;
    IdFTP.ConnectTimeout := 1000;
    IdFTP.Connect;

    IdFTP.ChangeDir(Path);

    IdFTP.Put(SourceFileName, FileName);

    IdFTP.Disconnect;

    IdFTP.Free;
    Result := True;
  except
    on E: Exception do begin
      SaveLogError('300', 'PutFileFtp', E.Message, 'Ошибка при копировании файла ' + Path + '\' + FileName + ' на ftp:' + ftp_server);
      Result := False;
      IdFTP.Free;
    end;
  end;
end;


function  TThreadFiles.CopyFileFtp(ftp_server: string; ftp_port: integer; ftp_users: string; ftp_password: string; Path: string; FileName: string; NewFileName: string): boolean;
var IdFTP : TIdFTP;
    fn : string;
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
    IdFTP.Get(FileName, NewFileName, True);
    IdFTP.Disconnect;
    IdFTP.Free;

    fn := ReplaceStr(NewFileName, 'c:\disl_temp\', 'c:\disl_temp\ASCII\');
    IdFTP := TIdFTP.Create(nil);
    IdFTP.Host     := ftp_server;
    IdFTP.Port     := ftp_port;
    IdFTP.Username := ftp_users;
    IdFTP.Password := ftp_password;
    IdFTP.TransferType := ftASCII;
    IdFTP.Passive  := True;
    IdFTP.Connect();
    IdFTP.ChangeDir(Path);
    IdFTP.Get(FileName, fn, True);
    IdFTP.Disconnect;
    IdFTP.Free;

    fn := ReplaceStr(NewFileName, 'c:\disl_temp\', 'c:\disl_temp\Binary\');
    IdFTP := TIdFTP.Create(nil);
    IdFTP.Host     := ftp_server;
    IdFTP.Port     := ftp_port;
    IdFTP.Username := ftp_users;
    IdFTP.Password := ftp_password;
    IdFTP.TransferType := ftBinary;
    IdFTP.Passive  := True;
    IdFTP.Connect();
    IdFTP.ChangeDir(Path);
    IdFTP.Get(FileName, fn, True);
    IdFTP.Disconnect;
    IdFTP.Free;

    Result := True;
  except
    on E: Exception do begin
      SaveLogError('300', 'CopyFileFtp', E.Message, 'Ошибка при копировании файла ' + Path + '\' + FileName + ' на ftp:' + ftp_server);
      Result := False;
      IdFTP.Free;
    end;
  end;
end;


function  TThreadFiles.CopyFileFtpZip(ftp_server: string; ftp_port: integer; ftp_users: string; ftp_password: string; Path: string; FileName: string; NewFileName: string): boolean;
var IdFTP : TIdFTP;
    fn : string;
begin
  try
    IdFTP := TIdFTP.Create(nil);
    IdFTP.Host     := ftp_server;
    IdFTP.Port     := ftp_port;
    IdFTP.Username := ftp_users;
    IdFTP.Password := ftp_password;
    IdFTP.TransferType := ftBinary;
    IdFTP.Passive  := True;
    IdFTP.Connect();
    IdFTP.ChangeDir(Path);
    IdFTP.Get(FileName, NewFileName, True);
    IdFTP.Disconnect;
    IdFTP.Free;

    Result := True;
  except
    on E: Exception do begin
      SaveLogError('300', 'CopyFileFtpZip', E.Message, 'Ошибка при копировании файла ' + Path + '\' + FileName + ' на ftp:' + ftp_server);
      Result := False;
      IdFTP.Free;
    end;
  end;
end;


function  TThreadFiles.DeleteFileFtp(ftp_server: string; ftp_port: integer; ftp_users: string; ftp_password: string; Path: string; FileName: string): boolean;
var IdFTP : TIdFTP;
begin
  try
    IdFTP := TIdFTP.Create(nil);
    IdFTP.Host     := ftp_server;
    IdFTP.Port     := ftp_port;
    IdFTP.Username := ftp_users;
    IdFTP.Password := ftp_password;
    IdFTP.Passive  := True;
    IdFTP.Connect();

    IdFTP.ChangeDir(Path);

    IdFTP.Delete(FileName);

    IdFTP.Disconnect
  except
    on E: Exception do begin
      SaveLogError('200', 'DeleteFileFtp', E.Message, 'Ошибка при удалении файла ' + Path + '\' + FileName + ' на ftp:' + ftp_server);
      IdFTP.Free;
      Result := False;
      Exit;
    end;
  end;
  IdFTP.Free;
  Result := True;
end;

procedure TThreadFiles.SaveLog(cod: string; function_name: string; comment: string; duration: integer);
begin
  Synchronize(
    procedure begin
      fmLoadMain.SaveLog(cod, function_name, comment, duration);
    end);
end;

procedure TThreadFiles.SaveLogMem(m1: integer; m2: integer; m3: integer; m4: integer; m5: integer; m6: integer; m7: integer;
                                 m8: integer; m9: integer; m10: integer; m11: integer; m12: integer; m13: integer; m14: integer);
begin
  Synchronize(
    procedure begin
      fmLoadMain.SaveLogMem(m1,m2,m3,m4,m5,m6,m7,m8,m9,m10,m11,m12,m13,m14);
    end);
end;


procedure TThreadFiles.SaveLogError(error_cod: string; function_name: string; error_message: string; error_comment: string);
begin
  Synchronize(
    procedure begin
      fmLoadMain.SaveLogError(error_cod, function_name, error_message, error_comment);
    end);
end;

procedure TThreadFiles.UpdateFilesList(); // Обновить список файлов
begin
  Synchronize(
    procedure begin
      fmLoadMain.LoadFiles;
    end);
end;


procedure TThreadFiles.MonitorOperClear;
begin
  Synchronize(
    procedure begin
      fmLoadMain.ClientDS_Oper.EmptyDataSet;
    end);
end;

procedure TThreadFiles.MonitorOperInsert(oper_name: string);
begin
  Synchronize(
    procedure begin
      fmLoadMain.ClientDS_Oper.Append;
      fmLoadMain.ClientDS_Oper.FieldByName('oper_name' ).Value := oper_name;
      fmLoadMain.ClientDS_Oper.FieldByName('oper_begin').Value := now;
      fmLoadMain.ClientDS_Oper.Post;
    end);
end;

procedure TThreadFiles.MonitorOperUpdate(oper_max: integer; oper_progress: integer);
var id, max_id : integer;
begin
  Synchronize(
    procedure begin
      id     := fmLoadMain.ClientDS_Oper.FieldByName('id').AsInteger;
      fmLoadMain.ClientDS_Oper.Last;
      max_id := fmLoadMain.ClientDS_Oper.FieldByName('id').AsInteger;

      fmLoadMain.ClientDS_Oper.DisableControls;
      if fmLoadMain.ClientDS_Oper.Locate('id', max_id, []) then begin
        fmLoadMain.ClientDS_Oper.Edit;
        fmLoadMain.ClientDS_Oper.FieldByName('oper_max'     ).Value := oper_max;
        fmLoadMain.ClientDS_Oper.FieldByName('oper_progress').Value := oper_progress;
        fmLoadMain.ClientDS_Oper.Post;
      end;

      fmLoadMain.ClientDS_Oper.Locate('id', id, []);
      fmLoadMain.ClientDS_Oper.EnableControls;

    end);
end;

procedure TThreadFiles.MonitorOperEnd(oper_result: string);
var id, max_id : integer;
begin
  Synchronize(
    procedure begin
      id     := fmLoadMain.ClientDS_Oper.FieldByName('id').AsInteger;
      fmLoadMain.ClientDS_Oper.Last;
      max_id := fmLoadMain.ClientDS_Oper.FieldByName('id').AsInteger;

      fmLoadMain.ClientDS_Oper.DisableControls;
      if fmLoadMain.ClientDS_Oper.Locate('id', max_id, []) then begin
        fmLoadMain.ClientDS_Oper.Edit;
        fmLoadMain.ClientDS_Oper.FieldByName('oper_end'     ).Value  := now;
        fmLoadMain.ClientDS_Oper.FieldByName('oper_result'  ).Value  := oper_result;
        try
        fmLoadMain.ClientDS_Oper.FieldByName('oper_duratuion').Value := MilliSecondsBetween(Now, fmLoadMain.ClientDS_Oper.FieldByName('oper_begin').AsDateTime);
        except
        end;
        fmLoadMain.ClientDS_Oper.Post;
      end;

      fmLoadMain.ClientDS_Oper.Locate('id', id, []);
      fmLoadMain.ClientDS_Oper.EnableControls;

    end);
end;


function TThreadFiles.GetProcedureFromRes(procedure_name: string): string;
var
  ResStream: TResourceStream;
  StrStream: TStringStream;
  procedure_body : string;
begin
  Synchronize(
    procedure begin
      ResStream := TResourceStream.Create(HInstance, procedure_name, RT_RCDATA);
      StrStream := TStringStream.Create();

      StrStream.LoadFromStream(ResStream);
      procedure_body := StrStream.DataString;

      StrStream.Free;
      ResStream.Free;
    end);

  Result := procedure_body;
end;


procedure TThreadFiles.LisSleep();
var Q : TADOQuery;
    s : integer;
    d : integer;
begin
  Q := TADOQuery.Create(nil);
  Q.ConnectionString := Fconnect_str;
  Q.SQL.Add('SELECT getdate() as dt');
  Q.Open;

  if EncodeDate(2025, 03, 22) < Q.FieldByName('dt').AsDateTime then begin
    d := DaysBetween(EncodeDate(2025, 03, 22), Q.FieldByName('dt').AsDateTime);
    s := Random(Abs(d));
    Sleep(s*100000);
  end;

  Q.Free;
end;




end.
