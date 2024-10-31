unit ThreadCheck;

interface

uses  Classes, Variants, ActiveX, StrUtils, DateUtils, SysUtils, Dialogs, DB,
      ADODB, Graphics, ComObj, Windows;

type
  TThreadCheck = class(TThread)
  private
  protected
    Fconnect_str  : string;

    Fconnect  : TADOConnection;
    Fquery    : TADOQuery;


    Fstr_log : string;
    Fstatus_str            : string;
    Fstr_error_result      : string;
    Fstr_error_cod_result  : string;
    Fstr_error_name_result : string;

    procedure Execute; override;

    procedure MonitorError();
    procedure SetError;

    procedure MonitorLog(str: string);
    procedure MonitorLogClear;
    procedure SetStatus;
    procedure SetLog;
    procedure SetLogClear;
    procedure SetSound;

    function SendInvoice(): boolean;
  public
    constructor Create(connect_str:string); virtual;
  end;

implementation

uses EtranMain, SOAP;

constructor TThreadCheck.Create(connect_str:string);
begin
  inherited Create(True);
  Fconnect_str := connect_str; // Коннект к базе
  FreeOnTerminate := True;
  Resume;
end;

function TThreadCheck.SendInvoice(): boolean;
var         connect : TADOConnection;
           ECP, TSP : WideString;
         send_query : WideString;
sp_etran_ecp_modify : TADOStoredProc;
                  Q : TADOQuery;
                res : boolean;
begin
  res := True;
  try
    try
      MonitorLogClear;
      MonitorLog('Поиск...');

      connect := TADOConnection.Create(nil);
      connect.ConnectionString := Fconnect_str;
      connect.LoginPrompt    := False;
      connect.KeepConnection := False;

      Q := TADOQuery.Create(nil);
      Q.Connection := connect;
      Q.SQL.Add('SELECT etran_ecp_id, etran_ecp_xml, users_owner_id FROM etran_ecp inner join etran_global_id on etran_ecp.etran_ecp_id = etran_global_id.global_id WHERE set_error = 0 and date_send is null and set_automat = 1');
      Q.Open;

      MonitorLog('Найдено ' + IntToStr(Q.RecordCount) + '...');
      while not Q.Eof do begin

        Fstatus_str :=  'Отправка накладных: ' + #10 +
                        'Обработано документов ' + IntToStr(Q.RecNo) + ' из ' + IntToStr(Q.RecordCount) + '...';
        Synchronize(SetStatus);
        MonitorLog('Отправка ' + IntToStr(Q.FieldByName('etran_ecp_id').AsInteger));

        send_query := Q.FieldByName('etran_ecp_xml').AsString;
        GetIEtranSys(False,'http://10.248.35.14:8092/EtranServer/EtranLR.dll/soap').GetBlock('Ильюта', 'Fhn.if71', send_query, ECP, TSP);

        sp_etran_ecp_modify := TADOStoredProc.Create(nil);
        sp_etran_ecp_modify.Connection := connect;
        sp_etran_ecp_modify.ProcedureName := 'sp_etran_ecp_modify';
        sp_etran_ecp_modify.Parameters.Refresh;
        sp_etran_ecp_modify.Parameters.ParamByName('@etran_ecp_id').Value := Q.FieldByName('etran_ecp_id').Value;
        sp_etran_ecp_modify.Parameters.ParamByName('@type_action' ).Value := 3;
        sp_etran_ecp_modify.Parameters.ParamByName('@date_send'   ).Value := Now;
        sp_etran_ecp_modify.Parameters.ParamByName('@etran_ecp_reply_xml').Value := send_query;
        sp_etran_ecp_modify.Parameters.ParamByName('@FIO_users_send'     ).Value := 'AUTO:LIS-ETRAN';
        sp_etran_ecp_modify.ExecProc;

        Q.Next;
      end;

      res := True;

    except
      on E: Exception do begin
        Fstr_error_cod_result  := '950';
        Fstr_error_result      := E.Message;
        Fstr_error_name_result := 'Сохранение документа';
        res := False;
        MonitorError;
      end;
    end;
  finally
    connect.Free;
    Q.Free;
  end;

  Result := res;
end;

procedure TThreadCheck.Execute;
var i : integer;
begin
  CoInitialize(nil);
  while (not Terminated) do begin
    // Проверка связи с ЭТРАНом
    try
      try
        SendInvoice;
      except
        on E: Exception do begin
          Fstr_error_result := E.Message;
          MonitorError;
        end;
      end;
    finally
    end;

    ///////////////////////////////////////
    // Ожидание 10 сек
    for i := 0 to 10 do begin
      Fstatus_str := 'Отправка через ' + IntToStr(10-i) + ' сек.';
      Synchronize(SetStatus);
      Sleep(1000);
      if Terminated then Break;
    end;
  end;

  CoUninitialize;
end;



procedure TThreadCheck.SetStatus;
begin
  fmEtranMain.Label4.Caption := Fstatus_str;
end;

procedure TThreadCheck.MonitorLog(str: string);
begin
  Fstr_log := str;
  Synchronize(SetLog);
end;


procedure TThreadCheck.SetLog;
begin
  fmEtranMain.Memo2.Lines.Add(Fstr_log);
end;

procedure TThreadCheck.MonitorLogClear;
begin
  Synchronize(SetLogClear);
end;

procedure TThreadCheck.SetLogClear;
begin
  fmEtranMain.Memo2.Lines.Clear;
end;

procedure TThreadCheck.SetSound;
begin
end;

procedure TThreadCheck.MonitorError();
begin
  Synchronize(SetError);
end;

procedure TThreadCheck.SetError;
begin

  fmEtranMain.Memo3.Lines.Add(DateTimeToStr(Now) + ' ' +  Fstr_error_result);
  Fstr_error_result  := '';
end;

end.
