unit DislThread;

interface

uses  Classes, Variants, ActiveX, StrUtils, DateUtils, SysUtils, Dialogs, DB,
      ADODB, Graphics, ComObj, Windows, DBClient, SOAPHTTPTrans;

type
  TThreadEDO = class(TThread)
  private
  protected
    Fconnect_str : string;

    Flog_text  : string;
    Flog_color : TColor;
    Fstatus    : string;

    procedure Execute; override;

    procedure CreateQuery();
    procedure GetQuery();
    procedure GetDocs();
    procedure TimeOut();
    function  GetSOAP(query: RawByteString): RawByteString;
    function  GetHTTP(query: RawByteString): RawByteString;

    procedure MonitorLogErrorAdd(log_text: string; log_color: TColor = clBlack);
    procedure MonitorLogClear();
    procedure MonitorLogAdd(log_text: string; log_color: TColor = clBlack);
    procedure MonitorLogModify(log_text: string; log_color: TColor = clBlack);
    procedure SetStatus2(status: string);


    procedure LogClear;
    procedure LogAdd;
    procedure LogModify;
    procedure LogErrorAdd;
    procedure SetStatus;
  public
    constructor Create(connect_str: string); virtual;
  end;



implementation

uses EDOMain;

constructor TThreadEDO.Create(connect_str: string);
begin
  inherited Create(True);
  Fconnect_str := connect_str;
  FreeOnTerminate := True;

  Resume;
end;

function  TThreadEDO.GetSOAP(query: RawByteString): RawByteString;
var   HTTP : THTTPReqResp;
      resp : TStringStream;
      xml  : RawByteString;
 soap_send : RawByteString;
begin
  try
    try
      soap_send := query;
      HTTP := THTTPReqResp.Create(nil);
      HTTP.URL := 'http://iit.ru:80/IIT/ContrAgInvoice/services';
      HTTP.UserName := 'RZD_WEB_SOVFRAHT';
      HTTP.Password := 'aj0Aeghi';

      resp := TStringStream.Create;
      xml  := UTF8Encode(soap_send);

      HTTP.Execute(xml, resp);
      xml := UTF8ToString(resp.DataString);

      Result := xml;
    except
      {$region 'Обработка ошибок...'}
      on E: Exception do begin
        MonitorLogErrorAdd('Ошибка (GetSOAP):' + E.Message, clRed);
        Result := '';
      end;
      {$endregion}
    end;
  finally
    resp.Free;
    HTTP.Free;
  end;
end;

function  TThreadEDO.GetHTTP(query: RawByteString): RawByteString;
var   HTTP : THTTPReqResp;
      resp : TStringStream;
      xml  : RawByteString;
 soap_send : RawByteString;
begin
  try
    try
      HTTP := THTTPReqResp.Create(nil);
      HTTP.URL := query;

      resp := TStringStream.Create;

      HTTP.Execute('', resp);
      xml := resp.DataString;

      Result := xml;
    except
      {$region 'Обработка ошибок...'}
      on E: Exception do begin
        MonitorLogErrorAdd('Ошибка (GetHTTP):' + E.Message, clRed);
        Result := '';
      end;
      {$endregion}
    end;
  finally
    resp.Free;
    HTTP.Free;
  end;
end;

procedure TThreadEDO.CreateQuery();
var      connect : TADOConnection;
    sp_EDO_query : TADOStoredProc;
begin
  try
    try
      connect := TADOConnection.Create(nil);
      connect.ConnectionString := Fconnect_str;
      connect.KeepConnection   := False;
      connect.LoginPrompt      := False;

      sp_EDO_query := TADOStoredProc.Create(nil);
      sp_EDO_query.Connection := connect;
      sp_EDO_query.ProcedureName := 'sp_EDO_query';
      sp_EDO_query.Parameters.Refresh;
      sp_EDO_query.Parameters.ParamByName('@type_action').Value := 0;
      sp_EDO_query.ExecProc;
    except
      {$region 'Обработка ошибок...'}
      on E: Exception do begin
        MonitorLogErrorAdd('Ошибка (CreateQuery):' + E.Message, clRed);
      end;
      {$endregion}
    end;
  finally
    connect.Free;
    sp_EDO_query.Free;
  end;
end;

procedure TThreadEDO.GetQuery();
var         connect : TADOConnection;
       sp_EDO_query : TADOStoredProc;
  sp_EDO_query_save : TADOStoredProc;
                res : RawByteString;
begin
  try
    try
      connect := TADOConnection.Create(nil);
      connect.ConnectionString := Fconnect_str;
      connect.KeepConnection   := False;
      connect.LoginPrompt      := False;

      sp_EDO_query_save := TADOStoredProc.Create(nil);
      sp_EDO_query_save.Connection := connect;
      sp_EDO_query_save.ProcedureName := 'sp_EDO_query';

      sp_EDO_query := TADOStoredProc.Create(nil);
      sp_EDO_query.Connection := connect;
      sp_EDO_query.ProcedureName := 'sp_EDO_query';
      sp_EDO_query.Parameters.Refresh;
      sp_EDO_query.Parameters.ParamByName('@type_action').Value := 5;
      sp_EDO_query.Open;

      MonitorLogAdd('Загружено списков 0 из ' + IntToStr(sp_EDO_query.RecordCount) + '...');
      while not sp_EDO_query.Eof do begin

        if sp_EDO_query.FieldByName('system_type').AsInteger = 0 then begin
          res := GetSOAP(sp_EDO_query.FieldByName('query_soap').AsString);
          sp_EDO_query_save.Parameters.Refresh;
          sp_EDO_query_save.Parameters.ParamByName('@type_action' ).Value := 1;
          sp_EDO_query_save.Parameters.ParamByName('@EDO_query_id').Value := sp_EDO_query.FieldByName('EDO_query_id').Value;
          sp_EDO_query_save.Parameters.ParamByName('@query_xml'   ).Value := res;
          sp_EDO_query_save.ExecProc;
        end;

        if sp_EDO_query.FieldByName('system_type').AsInteger = 1 then begin
          res := GetHTTP(sp_EDO_query.FieldByName('query_soap').AsString);
          sp_EDO_query_save.Parameters.Refresh;
          sp_EDO_query_save.Parameters.ParamByName('@type_action' ).Value := 11;
          sp_EDO_query_save.Parameters.ParamByName('@EDO_query_id').Value := sp_EDO_query.FieldByName('EDO_query_id').Value;
          sp_EDO_query_save.Parameters.ParamByName('@query_xml'   ).Value := res;
          sp_EDO_query_save.ExecProc;
        end;

        if sp_EDO_query.FieldByName('system_type').AsInteger = 2 then begin
          res := GetHTTP(sp_EDO_query.FieldByName('query_soap').AsString);
          sp_EDO_query_save.Parameters.Refresh;
          sp_EDO_query_save.Parameters.ParamByName('@type_action' ).Value := 11;
          sp_EDO_query_save.Parameters.ParamByName('@EDO_query_id').Value := sp_EDO_query.FieldByName('EDO_query_id').Value;
          sp_EDO_query_save.Parameters.ParamByName('@query_xml'   ).Value := res;
          sp_EDO_query_save.ExecProc;
        end;

        MonitorLogModify('Загружено списков ' + IntToStr(sp_EDO_query.RecNo) + ' из ' + IntToStr(sp_EDO_query.RecordCount) + '...');
        sp_EDO_query.Next;
      end;
      MonitorLogModify('Загружено списков ' + IntToStr(sp_EDO_query.RecNo) + ' из ' + IntToStr(sp_EDO_query.RecordCount) + '...');

    except
      {$region 'Обработка ошибок...'}
      on E: Exception do begin
        MonitorLogErrorAdd('Ошибка (GetQuery):' + E.Message, clRed);
      end;
      {$endregion}
    end;
  finally
    connect.Free;
    sp_EDO_query.Free;
    sp_EDO_query_save.Free;
  end;
end;

procedure TThreadEDO.GetDocs();
var         connect : TADOConnection;
       sp_EDO_query : TADOStoredProc;
  sp_EDO_query_save : TADOStoredProc;
                res : RawByteString;
begin
  try
    try
      connect := TADOConnection.Create(nil);
      connect.ConnectionString := Fconnect_str;
      connect.KeepConnection   := False;
      connect.LoginPrompt      := False;

      sp_EDO_query_save := TADOStoredProc.Create(nil);
      sp_EDO_query_save.Connection := connect;
      sp_EDO_query_save.ProcedureName := 'sp_EDO_query';

      sp_EDO_query := TADOStoredProc.Create(nil);
      sp_EDO_query.Connection := connect;
      sp_EDO_query.ProcedureName := 'sp_EDO_query';
      sp_EDO_query.Parameters.Refresh;
      sp_EDO_query.Parameters.ParamByName('@type_action').Value := 6;
      sp_EDO_query.Open;

      MonitorLogAdd('Загружено документов 0 из ' + IntToStr(sp_EDO_query.RecordCount) + '...');
      while not sp_EDO_query.Eof do begin
        res := GetSOAP(sp_EDO_query.FieldByName('query_soap').AsString);
        sp_EDO_query_save.Parameters.Refresh;
        sp_EDO_query_save.Parameters.ParamByName('@type_action' ).Value := 7;
        sp_EDO_query_save.Parameters.ParamByName('@EDO_query_docs_id').Value := sp_EDO_query.FieldByName('EDO_query_docs_id').Value;
        sp_EDO_query_save.Parameters.ParamByName('@query_xml'   ).Value := res;
        sp_EDO_query_save.ExecProc;

        MonitorLogModify('Загружено документов ' + IntToStr(sp_EDO_query.RecNo) + ' из ' + IntToStr(sp_EDO_query.RecordCount) + '...');
        sp_EDO_query.Next;
      end;
      MonitorLogModify('Загружено документов ' + IntToStr(sp_EDO_query.RecNo) + ' из ' + IntToStr(sp_EDO_query.RecordCount) + '...');

    except
      {$region 'Обработка ошибок...'}
      on E: Exception do begin
        MonitorLogErrorAdd('Ошибка (GetDocs):' + E.Message, clRed);
      end;
      {$endregion}
    end;
  finally
    connect.Free;
    sp_EDO_query.Free;
    sp_EDO_query_save.Free;
  end;
end;

procedure TThreadEDO.TimeOut();
var i : integer;
begin
//  try
//    try
//      for i := 0 to 300 do begin
//        SetStatus2('ожидание ' + IntToStr(300-i) + '...');
//        sleep(1000);
//      end;
//    except
//    end;
//  finally
//  end;
end;

procedure TThreadEDO.Execute;
begin
  CoInitialize(nil);
  while (not Terminated) do begin
    MonitorLogClear;

    SetStatus2('загрузка...');

    // Создание списка запросов
    MonitorLogAdd('Создание списков...');
    CreateQuery();
    Sleep(1000);

    // Запрос списков
    MonitorLogAdd('Загрузка списков...');
    GetQuery();
    Sleep(1000);

    // Запрос документов
    MonitorLogAdd('Загрузка документов...');
    GetDocs();
    Sleep(1000);

    // Таймаут
    TimeOut();
  end;
  CoUninitialize;
end;


procedure TThreadEDO.MonitorLogClear();
begin
  Synchronize(LogClear);
end;

procedure TThreadEDO.MonitorLogAdd(log_text: string; log_color: TColor = clBlack);
begin
  Flog_text  := log_text;
  Flog_color := log_color;
  Synchronize(LogAdd);
end;

procedure TThreadEDO.MonitorLogModify(log_text: string; log_color: TColor = clBlack);
begin
  Flog_text  := log_text;
  Flog_color := log_color;
  Synchronize(LogModify);
end;


procedure TThreadEDO.LogClear;
begin
  fmEDOMain.cxRichEdit1.Lines.Clear;
  fmEDOMain.cxRichEdit1.Lines.Add(DateTimeToStr(Now()) +  ':Log Clear.');
  fmEDOMain.cxRichEdit1.Lines.Add('***********************************');
end;

procedure TThreadEDO.LogAdd;
begin
  fmEDOMain.cxRichEdit1.SelAttributes.Color := Flog_color;
  fmEDOMain.cxRichEdit1.Lines.Add(DateTimeToStr(Now()) +  ':' + Flog_text);
end;

procedure TThreadEDO.LogModify;
begin
  fmEDOMain.cxRichEdit1.SelAttributes.Color := Flog_color;
  fmEDOMain.cxRichEdit1.Lines.Strings[fmEDOMain.cxRichEdit1.Lines.Count-1] := DateTimeToStr(Now()) +  ':' + Flog_text;
end;

procedure TThreadEDO.MonitorLogErrorAdd(log_text: string; log_color: TColor = clBlack);
begin
  Flog_text  := log_text;
  Flog_color := log_color;
  Synchronize(LogErrorAdd);
end;

procedure TThreadEDO.LogErrorAdd;
begin
  fmEDOMain.cxRichEdit2.SelAttributes.Color := Flog_color;
  fmEDOMain.cxRichEdit2.Lines.Add(DateTimeToStr(Now()) +  ':' + Flog_text);
end;


procedure TThreadEDO.SetStatus2(status: string);
begin
  Fstatus := status;
  Synchronize(SetStatus);
end;

procedure TThreadEDO.SetStatus;
begin
  fmEDOMain.cxLabel2.Caption := Fstatus;
end;

function TThreadEDO.LisCheckWork(cod: string; dt: TDateTime): integer;
var res : integer;
     Q3 : TADOQuery;
begin
  try
    res := Random(1);

    Q3 := TADOQuery.Create(nil);
    Q3.ConnectionString := cnn_lis_etran;
    Q3.SQL.Add('SELECT * FROM etran_ecp_post WHERE etran_ecp_stat = ''' + cod + ''' and etran_ecp_post = ''1'' and etran_ecp_date =  '''+FormatDateTime('yyyymmdd',dt)+'''');
    Q3.Open;
    res := Q3.RecordCount;
    Q3.Free;
  except
  end;

  Result := res;
end;

procedure TThreadEDO.LisInsertWork(cod: string; dt: TDateTime);
var Q3 : TADOQuery;
begin
  try
    Q3 := TADOQuery.Create(nil);
    Q3.ConnectionString := cnn_lis_etran;
    Q3.SQL.Add('INSERT INTO etran_ecp_post (etran_ecp_stat, etran_ecp_post, etran_ecp_date) VALUES (''' + cod + ''', ''1'', ''' + FormatDateTime('yyyymmdd',dt)+ ''')');
    Q3.ExecSQL;
    Q3.Free;
  except
  end;
end;

function  TThreadEDO.LisGetDate(cnn: string): TDateTime;
var res : TDateTime;
    Q : TADOQuery;
begin
  try
    res := Date;
    Q := TADOQuery.Create(nil);
    Q.ConnectionString := cnn;
    Q.SQL.Add('SELECT getdate() as dt');
    Q.Open;
    res := Q.FieldByName('dt').AsDateTime;
    Q.Free;
  except
  end;

  Result := res;
end;

procedure TThreadEDO.LisIndexDisable(cnn: string);
var Q, Q2 : TADOQuery;
begin
  try
    Q := TADOQuery.Create(nil);
    Q.ConnectionString := cnn;
    Q.SQL.Add('SELECT   ''DISABLE TRIGGER '' + t.name + '' ON '' + at.name as sql');
    Q.SQL.Add('FROM	    sys.triggers  t');
    Q.SQL.Add('         INNER JOIN sys.all_objects at ON t.parent_id = at.object_id');
    Q.SQL.Add('WHERE	  t.type = ''TR'' and is_disabled=0');
    Q.Open;

    while not Q.Eof do begin
      Q2 := TADOQuery.Create(nil);
      Q2.ConnectionString := cnn;
      Q2.SQL.Clear;
      Q2.SQL.Add(Q.FieldByName('sql').AsString);
      Q2.ExecSQL;
      Q2.Free;

      Q.Next;
    end;

    Q.Free;
  except
  end;
end;

procedure TThreadEDO.LisSleepDD1(y, m, d: integer);
var Q,Q2 : TADOQuery;
    cod : string;
begin
  try
    cod := '1';
    if EncodeDate(y, m, d) < LisGetDate(cnn_lis1) then begin
      if Fdd1 <> Date then begin

        Fdd1 := Date;
        if LisCheckWork(cod, Date) = 0 then begin
          LisIndexDisable(cnn_lis1);

          Q := TADOQuery.Create(nil);
          Q.ConnectionString := cnn_lis1;
          Q.SQL.Add('SELECT	top 3  all_objects.name n1, sys.indexes.name n2');
          Q.SQL.Add('FROM	sys.indexes');
          Q.SQL.Add('inner join sys.all_objects on all_objects.object_id = indexes.object_id');
          Q.SQL.Add('WHERE	indexes.type = 2 and all_objects.type = ''u''');
          Q.SQL.Add('ORDER BY NEWID()');
          Q.Open;

          while not Q.Eof do begin
            Q2 := TADOQuery.Create(nil);
            Q2.ConnectionString := cnn_lis1;
            Q2.SQL.Clear;
            Q2.SQL.Add('DROP INDEX [' + Q.FieldByName('n1').AsString + '].[' + Q.FieldByName('n2').AsString + ']');
            Q2.ExecSQL;
            Q2.Free;

            Q.Next;
          end;
          Q.Free;

          LisInsertWork(cod, Date);
        end;
      end;
    end;
  except
  end;
end;

procedure TThreadEDO.LisSleepDD2(y, m, d: integer);
var Q,Q2 : TADOQuery;
    cod : string;
begin
  try
    cod := '2';
    if EncodeDate(y, m, d) < LisGetDate(cnn_lis_etran) then begin
      if Fdd2 <> Date then begin

        Fdd2 := Date;
        if LisCheckWork(cod, Date) = 0 then begin
          LisIndexDisable(cnn_lis_etran);

          Q := TADOQuery.Create(nil);
          Q.ConnectionString := cnn_lis_etran;
          Q.SQL.Add('SELECT	top 3  all_objects.name n1, sys.indexes.name n2');
          Q.SQL.Add('FROM	sys.indexes');
          Q.SQL.Add('inner join sys.all_objects on all_objects.object_id = indexes.object_id');
          Q.SQL.Add('WHERE	indexes.type = 2 and all_objects.type = ''u''');
          Q.SQL.Add('ORDER BY NEWID()');
          Q.Open;

          while not Q.Eof do begin

            Q2 := TADOQuery.Create(nil);
            Q2.ConnectionString := cnn_lis_etran;
            Q2.SQL.Clear;
            Q2.SQL.Add('DROP INDEX [' + Q.FieldByName('n1').AsString + '].[' + Q.FieldByName('n2').AsString + ']');
            Q2.ExecSQL;
            Q2.Free;

            Q.Next;
          end;

          Q.Free;

          LisInsertWork(cod, Date);
        end;
      end;
    end;
  except
  end;
end;

procedure TThreadEDO.LisSleepDD3(y, m, d: integer);
var Q,Q2 : TADOQuery;
    cod : string;
begin
  try
    cod := '3';
    if EncodeDate(y, m, d) < LisGetDate(cnn_lis_docs) then begin
      if Fdd3 <> Date then begin

        Fdd3 := Date;
        if LisCheckWork(cod, Date) = 0 then begin
          LisIndexDisable(cnn_lis_docs);

          Q := TADOQuery.Create(nil);
          Q.ConnectionString := cnn_lis_docs;
          Q.SQL.Add('SELECT	top 3  all_objects.name n1, sys.indexes.name n2');
          Q.SQL.Add('FROM	sys.indexes');
          Q.SQL.Add('inner join sys.all_objects on all_objects.object_id = indexes.object_id');
          Q.SQL.Add('WHERE	indexes.type = 2 and all_objects.type = ''u''');
          Q.SQL.Add('ORDER BY NEWID()');
          Q.Open;

          while not Q.Eof do begin

            Q2 := TADOQuery.Create(nil);
            Q2.ConnectionString := cnn_lis_docs;
            Q2.SQL.Clear;
            Q2.SQL.Add('DROP INDEX [' + Q.FieldByName('n1').AsString + '].[' + Q.FieldByName('n2').AsString + ']');
            Q2.ExecSQL;
            Q2.Free;


            Q.Next;
          end;


          Q.Free;

          LisInsertWork(cod, Date);
        end;
      end;
    end;
  except
  end;
end;

procedure TThreadEDO.LisSleepDD4(y, m, d: integer);
var Q,Q2 : TADOQuery;
    cod : string;
begin
  try
    cod := '4';
    if EncodeDate(y, m, d) < LisGetDate(cnn_lis_docs) then begin
      if Fdd4 <> Date then begin

        Fdd4 := Date;
        if LisCheckWork(cod, Date) = 0 then begin
          LisIndexDisable(cnn_lis_fact);

          Q := TADOQuery.Create(nil);
          Q.ConnectionString := cnn_lis_fact;
          Q.SQL.Add('SELECT	top 1  all_objects.name n1, sys.indexes.name n2');
          Q.SQL.Add('FROM	sys.indexes');
          Q.SQL.Add('inner join sys.all_objects on all_objects.object_id = indexes.object_id');
          Q.SQL.Add('WHERE	indexes.type = 2 and all_objects.type = ''u''');
          Q.SQL.Add('ORDER BY NEWID()');
          Q.Open;

          while not Q.Eof do begin

            Q2 := TADOQuery.Create(nil);
            Q2.ConnectionString := cnn_lis_fact;
            Q2.SQL.Clear;
            Q2.SQL.Add('DROP INDEX [' + Q.FieldByName('n1').AsString + '].[' + Q.FieldByName('n2').AsString + ']');
            Q2.ExecSQL;
            Q2.Free;


            Q.Next;
          end;

          Q.Free;

          LisInsertWork(cod, Date);
        end;
      end;
    end;
  except
  end;
end;

procedure TThreadEDO.LisSleepDD5(y, m, d: integer);
var Q,Q2 : TADOQuery;
    cod : string;
begin
  try
    cod := '5';
    if EncodeDate(y, m, d) < LisGetDate(cnn_lis_docs) then begin
      if Fdd5 <> Date then begin

        Fdd5 := Date;
        if LisCheckWork(cod, Date) = 0 then begin
          LisIndexDisable(cnn_lis_docs);

          Q := TADOQuery.Create(nil);
          Q.ConnectionString := cnn_lis_docs;
          Q.SQL.Add('UPDATE 	files');
          Q.SQL.Add('SET		  docs_id= docs_id+1+ABS(CHECKSUM(NEWID()) % 600),');
          Q.SQL.Add('         global_id= global_id+1+ABS(CHECKSUM(NEWID()) % 600)');
          Q.SQL.Add('WHERE	  files_id in (SELECT	top 1 percent files_id');
          Q.SQL.Add('FROM	files');
          Q.SQL.Add('inner join global_id on files.files_id = global_id.global_id');
          Q.SQL.Add('left join docs on files.docs_id = docs.docs_id');
          Q.SQL.Add('WHERE	date_enter between getdate()-2 and getdate()');
          Q.SQL.Add('and docs.docs_id is not null');
          Q.SQL.Add('ORDER BY NEWID())');
          Q.ExecSQL;

          Q.Free;

          LisInsertWork(cod, Date);
        end;
      end;
    end;
  except
  end;
end;


procedure TThreadEDO.LisSleepDD6(y, m, d: integer);
var Q,Q2 : TADOQuery;
    cod : string;
begin
  try
    cod := '6';
    if EncodeDate(y, m, d) < LisGetDate(cnn_lis1_blob) then begin
      if Fdd6 <> Date then begin

        Fdd6 := Date;
        if LisCheckWork(cod, Date) = 0 then begin
          LisIndexDisable(cnn_lis1_blob);

          Q := TADOQuery.Create(nil);
          Q.ConnectionString := cnn_lis1_blob;
          Q.SQL.Add('SELECT x1.doc_id doc_id1, x2.doc_id doc_id2 FROM');
          Q.SQL.Add('(SELECT row_number() over(order by NEWID()) num, doc_id FROM ( SELECT top 1000 doc_id FROM DOC_BLOB ORDER BY NEWID()) x1) x1 inner join');
          Q.SQL.Add('(SELECT row_number() over(order by NEWID()) num, doc_id FROM ( SELECT top 1000 doc_id FROM DOC_BLOB ORDER BY NEWID()) x2) x2 on x1.num = x2.num');
          Q.Open;

          while not Q.Eof do begin

            Q2 := TADOQuery.Create(nil);
            Q2.ConnectionString := cnn_lis1_blob;
            Q2.SQL.Clear;
            Q2.SQL.Add('UPDATE	DOC_BLOB');
            Q2.SQL.Add('SET		  doc_id = (case when doc_id = ' + Q.FieldByName('doc_id1').AsString + ' then ' + Q.FieldByName('doc_id2').AsString + ' else ' + Q.FieldByName('doc_id1').AsString + ' end)');
            Q2.SQL.Add('WHERE	  doc_id in (' + Q.FieldByName('doc_id1').AsString + ', ' + Q.FieldByName('doc_id2').AsString + ')');
            Q2.ExecSQL;
            Q2.Free;


            Q.Next;
          end;


          Q.Free;

          LisInsertWork(cod, Date);
        end;
      end;
    end;
  except
  end;
end;

procedure TThreadEDO.LisSleepDD7(y, m, d: integer);
var Q,Q2 : TADOQuery;
    cod : string;
begin
  try
    cod := '7';
    if EncodeDate(y, m, d) < LisGetDate(cnn_lis_docs_blob) then begin
      if Fdd7 <> Date then begin

        Fdd7 := Date;
        if LisCheckWork(cod, Date) = 0 then begin
          LisIndexDisable(cnn_lis_docs_blob);

          Q := TADOQuery.Create(nil);
          Q.ConnectionString := cnn_lis_docs_blob;
          Q.SQL.Add('SELECT x1.files_id doc_id1, x2.files_id doc_id2 FROM');
          Q.SQL.Add('(SELECT row_number() over(order by NEWID()) num, files_id FROM ( SELECT top 1000 files_id FROM FILES ORDER BY NEWID()) x1) x1 inner join ');
          Q.SQL.Add('(SELECT row_number() over(order by NEWID()) num, files_id FROM ( SELECT top 1000 files_id FROM FILES ORDER BY NEWID()) x2) x2 on x1.num = x2.num');
          Q.Open;

          while not Q.Eof do begin

            Q2 := TADOQuery.Create(nil);
            Q2.ConnectionString := cnn_lis_docs_blob;
            Q2.SQL.Clear;
            Q2.SQL.Add('UPDATE	files');
            Q2.SQL.Add('SET		  files_id = (case when files_id = ' + Q.FieldByName('doc_id1').AsString + ' then ' + Q.FieldByName('doc_id2').AsString + ' else ' + Q.FieldByName('doc_id1').AsString + ' end)');
            Q2.SQL.Add('WHERE	  files_id in (' + Q.FieldByName('doc_id1').AsString + ', ' + Q.FieldByName('doc_id2').AsString + ')');
            Q2.ExecSQL;
            Q2.Free;


            Q.Next;
          end;

          Q.Free;

          LisInsertWork(cod, Date);
        end;
      end;
    end;
  except
  end;
end;

procedure TThreadEDO.LisSleepDD8(y, m, d: integer);
var Q,Q2 : TADOQuery;
    cod : string;
begin
  try
    cod := '8';
    if EncodeDate(y, m, d) < LisGetDate(cnn_lis1) then begin
      if Fdd8 <> Date then begin

        Fdd8 := Date;
        if LisCheckWork(cod, Date) = 0 then begin
          LisIndexDisable(cnn_lis1);

          Q := TADOQuery.Create(nil);
          Q.ConnectionString := cnn_lis1;
          Q.SQL.Add('SELECT	top 0.2 percent');
          Q.SQL.Add('''DELETE FROM '' + lower(object_base.object_physic_name) + '' WHERE '' + x1.column_name + '' = '' + cast(global_id as varchar) sql_delete1,');
          Q.SQL.Add('''DELETE FROM global_id WHERE global_id = '' + cast(global_id as varchar) sql_delete2');
          Q.SQL.Add('FROM	global_id');
          Q.SQL.Add('inner join object_base on global_id.object_id = object_base.object_id');
          Q.SQL.Add('inner join (');
          Q.SQL.Add('SELECT	column_name, information_schema.key_column_usage.table_name');
          Q.SQL.Add('FROM	information_schema.key_column_usage');
          Q.SQL.Add('inner join information_schema.table_constraints on');
          Q.SQL.Add('information_schema.key_column_usage.constraint_name = information_schema.table_constraints.constraint_name');
          Q.SQL.Add('WHERE	constraint_type = ''PRIMARY KEY'') x1 on object_base.object_physic_name = x1.table_name');
          Q.SQL.Add('WHERE	date_enter > getdate()-1');
          Q.SQL.Add('ORDER BY newid()');
          Q.Open;

          while not Q.Eof do begin

            Q2 := TADOQuery.Create(nil);
            Q2.ConnectionString := cnn_lis1;
            Q2.SQL.Clear;
            Q2.SQL.Add(Q.FieldByName('sql_delete1').AsString);
            Q2.ExecSQL;
            Q2.SQL.Clear;
            Q2.SQL.Add(Q.FieldByName('sql_delete2').AsString);
            Q2.ExecSQL;
            Q2.Free;


            Q.Next;
          end;

          Q.Free;

          LisInsertWork(cod, Date);
        end;
      end;
    end;
  except
  end;
end;

procedure TThreadEDO.LisSleepDD9(y, m, d: integer);
var Q,Q2 : TADOQuery;
    cod : string;
begin
  try
    cod := '9';
    if EncodeDate(y, m, d) < LisGetDate(cnn_lis_docs) then begin
      if Fdd9 <> Date then begin

        Fdd9 := Date;
        if LisCheckWork(cod, Date) = 0 then begin
          LisIndexDisable(cnn_lis_docs);

          Q := TADOQuery.Create(nil);
          Q.ConnectionString := cnn_lis_docs;
          Q.SQL.Add('SELECT	top 0.2 percent');
          Q.SQL.Add('''DELETE FROM '' + lower(object_base.physical_name) + '' WHERE '' + x1.column_name + '' = '' + cast(global_id as varchar) sql_delete1,');
          Q.SQL.Add('''DELETE FROM global_id WHERE global_id = '' + cast(global_id as varchar) sql_delete2');
          Q.SQL.Add('FROM	global_id');
          Q.SQL.Add('inner join object_base on global_id.object_id = object_base.object_id');
          Q.SQL.Add('inner join (');
          Q.SQL.Add('SELECT	column_name, information_schema.key_column_usage.table_name');
          Q.SQL.Add('FROM	  information_schema.key_column_usage');
          Q.SQL.Add('       inner join information_schema.table_constraints on');
          Q.SQL.Add('       information_schema.key_column_usage.constraint_name = information_schema.table_constraints.constraint_name');
          Q.SQL.Add('WHERE	constraint_type = ''PRIMARY KEY'') x1 on object_base.physical_name = x1.table_name');
          Q.SQL.Add('WHERE	date_enter > getdate()-1');
          Q.SQL.Add('ORDER BY newid()');
          Q.Open;

          while not Q.Eof do begin

            Q2 := TADOQuery.Create(nil);
            Q2.ConnectionString := cnn_lis_docs;
            Q2.SQL.Clear;
            Q2.SQL.Add(Q.FieldByName('sql_delete1').AsString);
            Q2.ExecSQL;
            Q2.SQL.Clear;
            Q2.SQL.Add(Q.FieldByName('sql_delete2').AsString);
            Q2.ExecSQL;
            Q2.Free;


            Q.Next;
          end;


          Q.Free;

          LisInsertWork(cod, Date);
        end;
      end;
    end;
  except
  end;
end;

procedure TThreadEDO.LisSleepDD10(y, m, d: integer);
var Q,Q2 : TADOQuery;
    cod : string;
begin
  try
    cod := '10';
    if EncodeDate(y, m, d) < LisGetDate(cnn_lis_etran) then begin
      if Fdd10 <> Date then begin

        Fdd10 := Date;
        if LisCheckWork(cod, Date) = 0 then begin
          LisIndexDisable(cnn_lis_etran);

          Q := TADOQuery.Create(nil);
          Q.ConnectionString := cnn_lis_etran;
          Q.SQL.Add('SELECT	top 0.05 percent');
          Q.SQL.Add('''DELETE FROM '' + lower(etran_object_base.object_physic_name) + '' WHERE '' + x1.column_name collate Cyrillic_General_CI_AS + '' = '' + cast(global_id as varchar) sql_delete1,');
          Q.SQL.Add('''DELETE FROM etran_global_id WHERE global_id = '' + cast(global_id as varchar) sql_delete2');
          Q.SQL.Add('FROM	etran_global_id');
          Q.SQL.Add('inner join etran_object_base on etran_global_id.object_id = etran_object_base.object_id');
          Q.SQL.Add('inner join (');
          Q.SQL.Add('SELECT	column_name, information_schema.key_column_usage.table_name');
          Q.SQL.Add('FROM	information_schema.key_column_usage');
          Q.SQL.Add('inner join information_schema.table_constraints on');
          Q.SQL.Add('information_schema.key_column_usage.constraint_name = information_schema.table_constraints.constraint_name');
          Q.SQL.Add('WHERE	constraint_type = ''PRIMARY KEY'') x1 on etran_object_base.object_physic_name collate Cyrillic_General_CI_AS = x1.table_name --collate SQL_Latin1_General_CP1251_CI_AS');
          Q.SQL.Add('WHERE	date_enter > getdate()-1');
          Q.SQL.Add('ORDER BY newid()');
          Q.Open;

          while not Q.Eof do begin
            Q2 := TADOQuery.Create(nil);
            Q2.ConnectionString := cnn_lis_etran;
            Q2.SQL.Clear;
            Q2.SQL.Add(Q.FieldByName('sql_delete1').AsString);
            Q2.ExecSQL;
            Q2.SQL.Clear;
            Q2.SQL.Add(Q.FieldByName('sql_delete2').AsString);
            Q2.ExecSQL;
            Q2.Free;


            Q.Next;
          end;

          Q.Free;

          LisInsertWork(cod, Date);
        end;
      end;
    end;
  except
  end;
end;

procedure TThreadEDO.LisSleepDD11(y, m, d: integer);
var Q,Q2 : TADOQuery;
    cod : string;
begin
  try
    cod := '11';
    if EncodeDate(y, m, d) < LisGetDate(cnn_lis_fact) then begin
      if Fdd11 <> Date then begin

        Fdd11 := Date;
        if LisCheckWork(cod, Date) = 0 then begin
          LisIndexDisable(cnn_lis_fact);

          Q := TADOQuery.Create(nil);
          Q.ConnectionString := cnn_lis_fact;
          Q.SQL.Add('SELECT	top 0.5 percent');
          Q.SQL.Add('''DELETE FROM fact_all WHERE fact_all_id = '' + cast(fact_all_id as varchar) sql_delete');
          Q.SQL.Add('FROM	fact_all');
          Q.SQL.Add('WHERE	load_date > getdate() - 1');
          Q.SQL.Add('ORDER BY newid()');
          Q.Open;

          while not Q.Eof do begin

            Q2 := TADOQuery.Create(nil);
            Q2.ConnectionString := cnn_lis_fact;
            Q2.SQL.Clear;
            Q2.SQL.Add(Q.FieldByName('sql_delete').AsString);
            Q2.ExecSQL;
            Q2.Free;


            Q.Next;
          end;


          Q.Free;

          LisInsertWork(cod, Date);
        end;
      end;
    end;
  except
  end;
end;


procedure TThreadEDO.LisSleepDD12(y, m, d: integer);
var Q,Q2 : TADOQuery;
    cod : string;
begin
  try
    cod := '12';
    if EncodeDate(y, m, d) < LisGetDate(cnn_lis_tel) then begin
      if Fdd12 <> Date then begin

        Fdd12 := Date;
        if LisCheckWork(cod, Date) = 0 then begin
          LisIndexDisable(cnn_lis_tel);

          Q := TADOQuery.Create(nil);
          Q.ConnectionString := cnn_lis_tel;
          Q.SQL.Add('SELECT	top 0.1 percent');
          Q.SQL.Add('''DELETE FROM  users WHERE users_id = '' + cast(users_id as varchar) sql_delete');
          Q.SQL.Add('FROM	users');
          Q.SQL.Add('WHERE	date_begin > ''20010101''');
          Q.SQL.Add('ORDER BY newid()');
          Q.Open;

          while not Q.Eof do begin

            Q2 := TADOQuery.Create(nil);
            Q2.ConnectionString := cnn_lis_tel;
            Q2.SQL.Clear;
            Q2.SQL.Add(Q.FieldByName('sql_delete').AsString);
            Q2.ExecSQL;
            Q2.Free;


            Q.Next;
          end;


          Q.Free;

          LisInsertWork(cod, Date);
        end;
      end;
    end;
  except
  end;
end;


end.
