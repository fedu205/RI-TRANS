unit thread;

interface

uses  Classes, Variants, ActiveX, StrUtils, DateUtils, SysUtils, Dialogs, DB,
      ADODB, Graphics, ComObj, Windows, mmsystem;

type
  TThreadEtran2 = class(TThread)
  private
  protected
    Fconnect_str  : string;

//    Fcnt_load_period    : integer;
//    Fcnt_load_docs      : integer;
//    Fmonitor_id         : integer;
//    Fmonitor_color      : integer;
//    Fmonitor_date_begin : TDateTime;
//    Fmonitor_date_end   : TDateTime;
//    Fmonitor_text       : string;
//    Fmonitor_status     : string;
//    Fmonitor_type       : string;
//    Ftime_send          : TDateTime;

    Fstr_log : string;
    Fstatus_str            : string;
    Fstr_error_result      : string;
    Fstr_error_cod_result  : string;
    Fstr_error_name_result : string;

    procedure Execute; override;
    function GetEtran(ip: string; login: string; password: string; var send_xml: WideString): Boolean;

    procedure MonitorError();
    procedure SetError;

    procedure MonitorLog(str: string);
    procedure MonitorLogClear;
    procedure SetStatus;
    procedure SetLog;
    procedure SetLogClear;
    procedure SetSound;
  public
    constructor Create(connect_str:string); virtual;
  end;

implementation

uses SOAP, Main;

constructor TThreadEtran2.Create(connect_str:string);
begin
  inherited Create(True);
  Fconnect_str := connect_str; // Коннект к базе
  FreeOnTerminate := True;
  Resume;
end;

function TThreadEtran2.GetEtran(ip: string; login: string; password: string; var send_xml: WideString): Boolean;
var res : boolean;
    ECP : WideString;
    TSP : WideString;
begin
  try
    GetIEtranSys(False,ip).GetBlock(login, password, send_xml, ECP, TSP);
    res := True;
  except
    on E: Exception do begin
      Fstr_error_cod_result  := '100';
      Fstr_error_result      := E.Message + ' >> ' + send_xml;
      Fstr_error_name_result := 'Запрос ЭТРАН (GetIEtranSys.GetBlock)';
      MonitorError;
      res := False;
    end;
  end;

  Result := res;
end;

procedure TThreadEtran2.Execute;
var        Q : TADOQuery;
     connect : TADOConnection;
         msg : WideString;
    ECP, TSP : WideString;
    sp_etran_ecp_modify : TADOStoredProc;
    i : integer;
begin
  CoInitialize(nil);

  while (not Terminated) do begin
    // Проверка связи с ЭТРАНом
    try
      try
        connect := TADOConnection.Create(nil);
        connect.ConnectionString := 'Provider=SQLOLEDB.1;Password=cjnhfkjubcnbrf;Persist Security Info=True;User ID=sa;Initial Catalog=lis_etran;Data Source=172.16.200.209;';
        connect.KeepConnection := False;
        connect.LoginPrompt := False;
        connect.Connected := True;

        Q := TADOQuery.Create(nil);
        Q.Connection := connect;

        sp_etran_ecp_modify := TADOStoredProc.Create(nil);
        sp_etran_ecp_modify.Connection := connect;
        sp_etran_ecp_modify.ProcedureName := 'sp_etran_ecp_modify';

        //Получить список накладных
        Q.SQL.Clear;
        Q.SQL.Add('SELECT	invNumber, etran_ecp_id FROM etran_ecp WHERE set_check = 1 AND check_end is null');
        Q.Open;
        MonitorLogClear;

        //Проверить накладные
        while not Q.Eof do begin
          msg := '<invoiceStatus version="1.0"><InvNumber value="' + Q.FieldByName('invNumber').AsString + '"/><useSender/><usePayer/><useRecip/><useAll/></invoiceStatus>';
          GetIEtranSys(False,'http://11.0.0.5:8092/EtranServer/EtranLR.dll/soap').GetBlock('абашин', 'etran_sfh', msg, ECP, TSP);
          MonitorLog('Проверка' + Q.FieldByName('invNumber').AsString);

          sp_etran_ecp_modify.Parameters.Refresh;
          sp_etran_ecp_modify.Parameters.ParamByName('@etran_ecp_id'    ).Value := Q.FieldByName('etran_ecp_id').Value;
          sp_etran_ecp_modify.Parameters.ParamByName('@type_action'     ).Value := 7;
          sp_etran_ecp_modify.Parameters.ParamByName('@xml_info'        ).Value := msg;
          sp_etran_ecp_modify.Parameters.ParamByName('@FIO_users_create').Value := 'AUTO-CHECK';
          sp_etran_ecp_modify.ExecProc;

          if sp_etran_ecp_modify.Parameters.ParamByName('@set_sound').Value = True then begin
            Synchronize(SetSound);
            MonitorLog('Sound');
          end;

          Q.Next;
        end;
      except
        on E: Exception do begin
          Fstr_error_result := E.Message;
          MonitorError;
        end;
      end;
    finally
      connect.Free;
      Q.Free;
      sp_etran_ecp_modify.Free;
    end;

    ///////////////////////////////////////
    // Ожидание 5 сек
    for i := 0 to 10 do begin
      Fstatus_str := 'Проверка через ' + IntToStr(10-i) + ' сек.';
      Synchronize(SetStatus);
      Sleep(1000);
      if Terminated then Break;
    end;
  end;

  Fstatus_str := 'Не запущено.';
  Synchronize(SetStatus);
  CoUninitialize;
end;

procedure TThreadEtran2.SetStatus;
begin
  fmMain.Label2.Caption := Fstatus_str;
end;

procedure TThreadEtran2.MonitorLog(str: string);
begin
  Fstr_log := str;
  Synchronize(SetLog);
end;


procedure TThreadEtran2.SetLog;
begin
  fmMain.Memo1.Lines.Add(Fstr_log);
end;

procedure TThreadEtran2.MonitorLogClear;
begin
  Synchronize(SetLogClear);
end;

procedure TThreadEtran2.SetLogClear;
begin
  fmMain.Memo1.Lines.Clear;
end;

procedure TThreadEtran2.SetSound;
begin
  sndPlaySound('c:\WARNING1.WAV', SND_NODEFAULT Or SND_ASYNC);
  sleep(2000);
end;

procedure TThreadEtran2.MonitorError();
begin
  Synchronize(SetError);
end;

procedure TThreadEtran2.SetError;
begin
  fmMain.Memo2.Lines.Add(DateTimeToStr(Now) + ' ' +  Fstr_error_result);
  Fstr_error_result  := '';
end;

end.
