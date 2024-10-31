unit ThreadStat;

interface

uses  Default,
      Classes, Variants, ActiveX, StrUtils, DateUtils, SysUtils, Dialogs, DB,
      ADODB, Graphics, ComObj, Windows, DBClient, XMLDoc, XMLIntf, Math, WinInet,
      IdBaseComponent, IdComponent, Forms, Datasnap.Provider, IdFTPCommon,
      IdTCPConnection, IdTCPClient, IdExplicitTLSClientServerBase, IdFTP;

type
  TThreadStat = class(TThread)
  private
  protected
    procedure Execute; override;
  public
    constructor Create(); virtual;
  end;


implementation

uses LoadMain;


constructor TThreadStat.Create();
begin
  inherited Create(True);
  FreeOnTerminate := True;
  Resume;
end;

procedure TThreadStat.Execute;
var i : integer;
    log_file  : TFileStream;
    log_path  : string;
    s_save    : RawByteString;
    file_name : string;

    Q : TADOQuery;

begin
  try
    CoInitialize(nil);
    while (not Terminated) do begin

      try
        // Сохраняем состояние MS SQL
        log_path  := ExtractFilePath(ParamStr(0)) + 'Log\';
        file_name := log_path + 'log_MSSQL_' + FormatDateTime('yyyymmdd', Now()) + '.csv';

        if not FileExists(file_name) then
          log_file := TFileStream.Create(file_name, fmCreate)
        else
          log_file := TFileStream.Create(file_name, fmOpenReadWrite);

        Q := TADOQuery.Create(nil);
        Q.ConnectionString := 'Persist Security Info=True;Provider=SQLOLEDB.1;User ID=sa;Password=cjnhfkjubcnbrf;Initial Catalog=lis1;Data Source=10.10.101.11;';
        Q.SQL.Add('exec sp_whoisactive');
        Q.Open;
        while not Q.Eof do begin
          if Q.FieldByName('status').AsString <> 'dormant' then begin
            s_save := '1;' + FormatDateTime('dd.mm.yyyy hh:nn:ss.zzz', Now) + ';' +
                Q.FieldByName('session_id').AsString + ';' +
                '"' + ReplaceStr(Q.FieldByName('sql_text').AsString,#10,'') + '";'+
                Q.FieldByName('login_name').AsString + ';'+
                Q.FieldByName('wait_info').AsString + ';'+
                Q.FieldByName('host_name').AsString + ';'+
                Q.FieldByName('database_name').AsString + ';'+
                Q.FieldByName('open_tran_count').AsString  + ';'#10;
            log_file.Seek(0, soFromEnd);
            log_file.WriteBuffer(Pointer(s_save)^, Length(s_save));
          end;
          Q.Next;
        end;

        Q.SQL.Clear;

        Q.SQL.Add('SELECT	sj.Name,');
        Q.SQL.Add('CASE');
        Q.SQL.Add('WHEN sja.start_execution_date IS NULL THEN ''Not running''');
        Q.SQL.Add('WHEN sja.start_execution_date IS NOT NULL AND sja.stop_execution_date IS NULL THEN ''Running''');
        Q.SQL.Add('WHEN sja.start_execution_date IS NOT NULL AND sja.stop_execution_date IS NOT NULL THEN ''Not running''');
        Q.SQL.Add('END AS ''RunStatus'',');
        Q.SQL.Add('sja.start_execution_date, sja.stop_execution_date,');
        Q.SQL.Add('datediff(ss, sja.start_execution_date, isnull(sja.stop_execution_date, getdate())) duration');
        Q.SQL.Add('FROM	msdb.dbo.sysjobs sj');
        Q.SQL.Add('inner join msdb.dbo.sysjobactivity sja ON sj.job_id = sja.job_id');
        Q.SQL.Add('WHERE	session_id = (SELECT MAX(session_id) FROM msdb.dbo.sysjobactivity)');
        Q.SQL.Add('and sja.start_execution_date IS NOT NULL AND sja.stop_execution_date IS NULL');
        Q.Open;
        while not Q.Eof do begin

          s_save := '2;' + FormatDateTime('dd.mm.yyyy hh:nn:ss.zzz', Now) + ';' +
              Q.FieldByName('Name').AsString + ';' +
              Q.FieldByName('RunStatus').AsString + ';'+
              DateTimeToStr(Q.FieldByName('start_execution_date').AsDateTime) + ';'+
              Q.FieldByName('duration').AsString  + ';'#10;
          log_file.Seek(0, soFromEnd);
          log_file.WriteBuffer(Pointer(s_save)^, Length(s_save));

          Q.Next;
        end;

        Q.Free;
        log_file.Free;
      except
        Q.Free;
        log_file.Free;
      end;

      // Пауза
      for i := 0 to 2*60 do begin
        Sleep(1000);
        if Terminated = True then Break;
      end;
    end;
    CoUninitialize;
  except
    on E: Exception do begin
    end;
  end;

end;

//procedure TThreadStat.SaveLogError(error_cod: string; function_name: string; error_message: string; error_comment: string);
//begin
//  Synchronize(
//    procedure begin
//      fmLoadMain.SaveLogError(error_cod, function_name, error_message, error_comment);
//    end);
//end;

end.
