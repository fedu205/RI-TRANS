unit ThreadMail;

interface

uses  Classes, Variants, ActiveX, StrUtils, DateUtils, SysUtils, Dialogs, DB,
      ADODB, Graphics, ComObj, Windows, DBClient, XMLDoc, XMLIntf, Math, WinInet,
      IdBaseComponent, IdComponent, Forms, IdTCPConnection, IdTCPClient, IdExplicitTLSClientServerBase,
      IdMessage, IdMessageClient, IdSMTPBase, IdSMTP, IdAttachmentFile;

type
  TThreadMail = class(TThread)
  private
    procedure SendMailDisl();
    procedure SendMailEtran();
  protected
    Fconnect_str  : string;

    Ffiles_name     : string;
    Ffiles_track_id : integer;
    Ffile_data      : RawByteString;
    Ffile_datetime  : TDateTime;
    Fusers_id       : integer;
    Fformat_cod     : string;
    Fformat_name    : string;

    Ferror_str : string;
    Fmonitor_id : integer;

    procedure MonitorSetCaption(log_caption: string; image_index: integer);
    procedure MonitorAdd(log_caption: string; log_text: string);
    procedure MonitorUpdate(log_text: string; log_progress: integer);
    procedure MonitorClose(log_text: string; log_result_id: integer);
    procedure MonitorClear();
    procedure SaveLog(inf_caption: string; inf_text: string; inf_result_id: integer; inf_cod: string);

    procedure Execute; override;
  public
    constructor Create(connect_str: string); virtual;
  end;

implementation
  uses LoadMain, Raznoe;

constructor TThreadMail.Create(connect_str: string);
begin
  inherited Create(True);
  Fmonitor_id  := -9;
  Fconnect_str := connect_str;
  FreeOnTerminate := True;
  Resume;
end;

procedure TThreadMail.Execute;
var    connect : TADOConnection;
           res : boolean;
           i,f : integer;
    files_list : TStringList;
      set_time : boolean;
begin
  try
    CoInitialize(nil);
    while (not Terminated) do begin
      MonitorClear;
      MonitorSetCaption('Отправка писем (поиск новых)...', 1);

      SendMailDisl();
      SendMailEtran();

      MonitorSetCaption('Пауза...', 9);
      for i := 0 to 3*60 do begin
        f := 3*60-i;
        MonitorSetCaption('Пауза ' + IntToStr(Round((f - (f mod 60))/60)) + ':' + RightStr('00' + IntToStr(f mod 60),2), 9);
        Sleep(1000);
        if Terminated = True then Break;
      end;
    end;
    CoUninitialize;
  except
    on E: Exception do begin
      CoUninitialize;
      SaveLog('Execute', E.Message, 0, '666');
      Terminate;
    end;
  end;
  MonitorSetCaption('Отправка писем остановлена', 8);
end;

procedure TThreadMail.SendMailDisl();
var      connect : TADOConnection;
              SP : TADOStoredProc;
     cnt_mail, i : integer;

      error_text : string;
begin

  try
    try
      connect := TADOConnection.Create(nil);
      connect.ConnectionString := Fconnect_str;
      connect.KeepConnection   := False;
      connect.LoginPrompt      := False;
      connect.Open;
      connect.CommandTimeout := 1200;

      SP := TADOStoredProc.Create(nil);
      SP.Connection := connect;
      SP.CommandTimeout := 1200;
      SP.ProcedureName  := 'sp_fact_track_mailing_search';
      SP.Parameters.Refresh;
      SP.ExecProc;

    except
      on E: Exception do begin
        SaveLog('SendMailDisl', E.Message, 0, '500');
      end;
    end;
  finally
    if Assigned(connect) then connect.Free;
    if Assigned(SP) then SP.Free;
  end;

end;


procedure TThreadMail.SendMailEtran();
var      connect : TADOConnection;
              SP : TADOStoredProc;
     cnt_mail, i : integer;

      error_text : string;
begin

  try
    try
      connect := TADOConnection.Create(nil);
      connect.ConnectionString := 'Persist Security Info=True;Provider=SQLOLEDB.1;User ID=sa;Password=cjnhfkjubcnbrf;Initial Catalog=lis_etran;Data Source=92.53.107.222;';
      connect.KeepConnection   := False;
      connect.LoginPrompt      := False;
      connect.Open;
      connect.CommandTimeout := 1200;

      SP := TADOStoredProc.Create(nil);
      SP.Connection := connect;
      SP.CommandTimeout := 1200;
      SP.ProcedureName  := 'sp_etran_mailing_sent';
      SP.Parameters.Refresh;
      SP.ExecProc;

    except
      on E: Exception do begin
        SaveLog('SendMailEtran', E.Message, 0, '550');
      end;
    end;
  finally
    if Assigned(connect) then connect.Free;
    if Assigned(SP) then SP.Free;
  end;

end;


procedure TThreadMail.MonitorSetCaption(log_caption: string; image_index: integer);
begin
  Synchronize(
    procedure begin
      fmLoadMain.cxLabel3.Caption := log_caption;
    end);
end;

procedure TThreadMail.MonitorAdd(log_caption: string; log_text: string);
begin
//  Synchronize(
//    procedure begin
//      Fmonitor_id := fmLoadMain.MonitorFTP_Add(log_caption, log_text);
//    end);
end;

procedure TThreadMail.MonitorUpdate(log_text: string; log_progress: integer);
begin
//  if Fmonitor_id = -9 then MonitorAdd('������ �����������', log_text);
//
//  Synchronize(
//    procedure begin
//      fmLoadMain.MonitorFTP_Update(Fmonitor_id, log_text, log_progress);
//    end);
end;

procedure TThreadMail.MonitorClose(log_text: string; log_result_id: integer);
begin
//  Synchronize(
//    procedure begin
//      fmLoadMain.MonitorFTP_Close(Fmonitor_id, log_text, log_result_id);
//    end);

  Fmonitor_id := -9;
end;

procedure TThreadMail.MonitorClear();
begin
//  Synchronize(
//    procedure begin
//      fmLoadMain.MonitorFTP_Clear();
//    end);

  Fmonitor_id := -9;
end;

procedure TThreadMail.SaveLog(inf_caption: string; inf_text: string; inf_result_id: integer; inf_cod: string);
begin
//  Synchronize(
//    procedure begin
//      fmLoadMain.SaveLog('ThreadMail', inf_caption, inf_text, inf_result_id, inf_cod);
//    end);
end;


end.
